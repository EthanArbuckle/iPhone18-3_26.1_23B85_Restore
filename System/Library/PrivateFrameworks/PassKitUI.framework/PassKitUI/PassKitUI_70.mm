uint64_t sub_1BD791D58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BD791DB8()
{
  type metadata accessor for TransferActionSheetObserver(0);
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52AB8);
  sub_1BE04D874();
  *(v0 + OBJC_IVAR____TtC9PassKitUIP33_3BC4BCA10D4B1B164EF997D80A283BE127TransferActionSheetObserver_fraudStepUpTriggered) = 0;
  return v0;
}

void sub_1BD791E38(_BYTE *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v10[-v4];
  type metadata accessor for CurrencyAmountPickerView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v6 = type metadata accessor for FeatureError(0);
  v7 = (*(*(v6 - 8) + 48))(v5, 1, v6);
  sub_1BD0DE53C(v5, &qword_1EBD416C0);
  if (v7 == 1 || (swift_getKeyPath(), swift_getKeyPath(), sub_1BE04D8B4(), , , v10[15] != 1))
  {
    v9 = 0;
  }

  else
  {
    sub_1BD791FE8();
    v9 = v8 ^ 1;
  }

  *a1 = v9 & 1;
}

void sub_1BD791FE8()
{
  v1 = type metadata accessor for CurrencyAmountPickerView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if (v18[0])
  {
    v2 = [v18[0] currencyCode];

    if (v2)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BE04D8B4();

      v3 = *(v0 + v1[9]);
      v4 = *(v0 + v1[10]);
      v5 = v18[0];
      v6 = *(v0 + v1[8]);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BE04D8B4();

      v7 = v0 + v1[22];
      v8 = *(v7 + 16);
      *v18 = *v7;
      v19 = v8;
      v20 = *(v7 + 32);
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4EED0);
      MEMORY[0x1BFB3E970](&v17, v9);
      v10 = sub_1BE053344();
      v11 = PKCurrencyAmountMake();

      if (v11)
      {
        v12 = objc_allocWithZone(MEMORY[0x1E69B8410]);
        sub_1BD0E5E8C(0, &qword_1EBD4E090);
        v13 = v5;
        v14 = sub_1BE052724();

        v15 = [v12 initWithAccount:v13 peerPaymentAccount:v3 peerPaymentPass:v4 transferType:v6 fundingSources:v14 currencyAmount:v11];

        if (v6 == 3 && v15)
        {
          v16 = v15;
          [v16 setUseLocationBasedAuthorization_];
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
}

uint64_t sub_1BD7922B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = sub_1BE04F434();
  v44 = *(v3 - 8);
  v45 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v42 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52B40);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v39 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52B48);
  v43 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v39 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52B50);
  v15 = *(v14 - 8);
  v46 = v14;
  v47 = v15;
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v39 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52B58);
  v20 = *(v19 - 8);
  v48 = v19;
  v49 = v20;
  MEMORY[0x1EEE9AC00](v19, v21);
  v41 = &v39 - v22;
  sub_1BD7927C0(v9);
  v23 = *(type metadata accessor for CurrencyAmountPickerView(0) + 32);
  v40 = a1;
  v52 = sub_1BD793B04(*(a1 + v23));
  v53 = v24;
  v25 = sub_1BD79F094();
  v26 = sub_1BD0DDEBC();
  v27 = MEMORY[0x1E69E6158];
  sub_1BE050B74();

  sub_1BD0DE53C(v9, &qword_1EBD52B40);
  v29 = v44;
  v28 = v45;
  v30 = v42;
  (*(v44 + 104))(v42, *MEMORY[0x1E697C438], v45);
  v52 = v6;
  v53 = v27;
  v54 = v25;
  v55 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1BE050E84();
  (*(v29 + 8))(v30, v28);
  (*(v43 + 8))(v13, v10);
  v51 = v40;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52BC8);
  v52 = v10;
  v53 = OpaqueTypeConformance2;
  v33 = swift_getOpaqueTypeConformance2();
  v34 = sub_1BD0DE4F4(&qword_1EBD52BD0, &qword_1EBD52BC8);
  v35 = v41;
  v36 = v46;
  sub_1BE051024();
  (*(v47 + 8))(v18, v36);
  v52 = v36;
  v53 = v32;
  v54 = v33;
  v55 = v34;
  swift_getOpaqueTypeConformance2();
  sub_1BD79F4BC();
  v37 = v48;
  sub_1BE050D84();
  return (*(v49 + 8))(v35, v37);
}

id sub_1BD7927C0@<X0>(uint64_t a1@<X8>)
{
  v200 = a1;
  v2 = type metadata accessor for CurrencyAmountPickerView(0);
  v177 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v3);
  v178 = v4;
  v179 = &v160 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52C48);
  MEMORY[0x1EEE9AC00](v173, v5);
  v189 = &v160 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v175 = &v160 - v9;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52C50);
  MEMORY[0x1EEE9AC00](v172, v10);
  v188 = (&v160 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12, v13);
  v174 = &v160 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52C58);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v186 = (&v160 - v17);
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52C60);
  MEMORY[0x1EEE9AC00](v167, v18);
  v170 = &v160 - v19;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52C68);
  MEMORY[0x1EEE9AC00](v169, v20);
  v168 = &v160 - v21;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52C70);
  MEMORY[0x1EEE9AC00](v171, v22);
  v187 = &v160 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v193 = (&v160 - v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52BA8);
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  p_Kind = (&v160 - v29);
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52B88);
  MEMORY[0x1EEE9AC00](v190, v30);
  v176 = &v160 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52B78);
  v180 = *(v32 - 8);
  v181 = v32;
  MEMORY[0x1EEE9AC00](v32, v33);
  v191 = &v160 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52C78);
  v184 = *(v35 - 8);
  v185 = v35;
  MEMORY[0x1EEE9AC00](v35, v36);
  v192 = &v160 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52B70);
  v198 = *(v38 - 8);
  v199 = v38;
  MEMORY[0x1EEE9AC00](v38, v39);
  v183 = &v160 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41, v42);
  v182 = &v160 - v43;
  v196 = v2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v44 = v227;
  v195 = v1;
  sub_1BD794A14(&v227);
  v165 = *(&v227 + 1);
  v166 = v227;
  v164 = v228;
  v45 = BYTE4(v228);
  v46 = *(&v228 + 1);
  v47 = v229;
  v48 = DWORD2(v229);
  v49 = BYTE12(v229);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v50 = v227;
  if (!v227)
  {

    return (*(v198 + 56))(v200, 1, 1, v199);
  }

  v197 = v44;
  v51 = [v227 currencyCode];

  if (!v51)
  {

    return (*(v198 + 56))(v200, 1, 1, v199);
  }

  v52 = sub_1BE052434();
  v54 = v53;

  v55 = v197;
  if (!v197)
  {
LABEL_12:

    return (*(v198 + 56))(v200, 1, 1, v199);
  }

  v56 = v52;
  v57 = [v197 currentBalance];
  if (!v57)
  {

    goto LABEL_12;
  }

  v58 = v57;
  v163 = v54;
  v59 = [v55 availableBalance];
  if (!v59)
  {

    goto LABEL_12;
  }

  v60 = v59;
  if (v45 & 1) != 0 || (v49)
  {

    return (*(v198 + 56))(v200, 1, 1, v199);
  }

  v62 = sub_1BE04F7B4();
  v63 = p_Kind;
  *p_Kind = v62;
  v63[1] = 0;
  *(v63 + 16) = 1;
  v64 = sub_1BE04F7B4();
  v65 = v193;
  *v193 = v64;
  v65[1] = 0;
  *(v65 + 16) = 1;
  v66 = v65 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52C80) + 44);
  *v66 = sub_1BE04F7B4();
  *(v66 + 1) = 0;
  v160 = v66;
  v66[16] = 0;
  v67 = sub_1BE04F7B4();
  v68 = v186;
  *v186 = v67;
  v68[1] = 0;
  *(v68 + 16) = 0;
  v69 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52C88) + 44);
  v161 = v60;
  v162 = v58;
  sub_1BD794D8C(v195, v56, v163, v166, v165, v164, v68 + v69, v46, v47, v48);
  v70 = sub_1BE0501E4();
  v71 = sub_1BE050214();
  sub_1BE050214();
  if (sub_1BE050214() != v70)
  {
    v71 = sub_1BE050214();
  }

  if (*(v195 + v196[8]) == 2)
  {
    v72 = 149.0;
  }

  else
  {
    v72 = 114.0;
  }

  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52C90);
  v74 = p_Kind + *(v73 + 44);
  v75 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52C98) + 44);
  v76 = v170;
  v77 = &v170[*(v167 + 36)];
  *v77 = v71;
  *(v77 + 1) = v72;
  *(v77 + 2) = 0x4034000000000000;
  v78 = *(type metadata accessor for AccessibilityAdaptivePadding() + 28);
  *&v77[v78] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38880);
  swift_storeEnumTagMultiPayload();
  sub_1BD0DE204(v186, v76, &qword_1EBD52C58);
  v79 = v168;
  sub_1BD0DE204(v76, v168, &qword_1EBD52C60);
  *(v79 + *(v169 + 36)) = 256;
  v80 = v160;
  sub_1BD0DE204(v79, &v160[v75], &qword_1EBD52C68);
  LOBYTE(v79) = sub_1BE0501C4();
  sub_1BE04E1F4();
  v82 = v81;
  v84 = v83;
  v86 = v85;
  v88 = v87;
  v89 = &v80[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52CA0) + 36)];
  *v89 = v79;
  *(v89 + 1) = v82;
  *(v89 + 2) = v84;
  *(v89 + 3) = v86;
  *(v89 + 4) = v88;
  v89[40] = 0;
  v90 = v193;
  *(v193 + *(v171 + 36)) = 256;
  v91 = v174;
  sub_1BD797514(v174);
  LOBYTE(v79) = sub_1BE0501C4();
  sub_1BE04E1F4();
  v93 = v92;
  v95 = v94;
  v97 = v96;
  v99 = v98;
  v100 = v91 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52CA8) + 36);
  *v100 = v79;
  *(v100 + 8) = v93;
  *(v100 + 16) = v95;
  *(v100 + 24) = v97;
  *(v100 + 32) = v99;
  *(v100 + 40) = 0;
  LOBYTE(v79) = sub_1BE050234();
  sub_1BE04E1F4();
  v101 = v91 + *(v172 + 36);
  *v101 = v79;
  *(v101 + 8) = v102;
  *(v101 + 16) = v103;
  *(v101 + 24) = v104;
  *(v101 + 32) = v105;
  *(v101 + 40) = 0;
  v106 = v175;
  sub_1BD797888(v175);
  LOBYTE(v79) = sub_1BE050234();
  sub_1BE04E1F4();
  v107 = v106 + *(v173 + 36);
  *v107 = v79;
  *(v107 + 8) = v108;
  *(v107 + 16) = v109;
  *(v107 + 24) = v110;
  *(v107 + 32) = v111;
  *(v107 + 40) = 0;
  sub_1BD797A80(v223);
  v112 = v187;
  sub_1BD0DE19C(v90, v187, &qword_1EBD52C70);
  v113 = v188;
  sub_1BD0DE19C(v91, v188, &qword_1EBD52C50);
  v114 = v189;
  sub_1BD0DE19C(v106, v189, &qword_1EBD52C48);
  v219 = v223[7];
  v220 = v223[8];
  v221 = v223[9];
  v215 = v223[3];
  v216 = v223[4];
  v217 = v223[5];
  v218 = v223[6];
  v212 = v223[0];
  v213 = v223[1];
  v222 = v224;
  v214 = v223[2];
  sub_1BD0DE19C(v112, v74, &qword_1EBD52C70);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52CB0);
  v116 = v74 + v115[12];
  *v116 = 0;
  *(v116 + 8) = 1;
  sub_1BD0DE19C(v113, v74 + v115[16], &qword_1EBD52C50);
  sub_1BD0DE19C(v114, v74 + v115[20], &qword_1EBD52C48);
  v117 = v74 + v115[24];
  v118 = v219;
  v225[8] = v220;
  v225[9] = v221;
  v119 = v217;
  v120 = v218;
  v225[6] = v218;
  v225[7] = v219;
  v121 = v215;
  v122 = v216;
  v225[4] = v216;
  v225[5] = v217;
  v123 = v212;
  v124 = v213;
  v225[0] = v212;
  v225[1] = v213;
  v125 = v214;
  v225[2] = v214;
  v225[3] = v215;
  v126 = v221;
  *(v117 + 128) = v220;
  *(v117 + 144) = v126;
  *(v117 + 64) = v122;
  *(v117 + 80) = v119;
  *(v117 + 96) = v120;
  *(v117 + 112) = v118;
  *v117 = v123;
  *(v117 + 16) = v124;
  v226 = v222;
  *(v117 + 160) = v222;
  *(v117 + 32) = v125;
  *(v117 + 48) = v121;
  sub_1BD0DE19C(v225, &v227, &qword_1EBD52CB8);
  sub_1BD0DE53C(v106, &qword_1EBD52C48);
  sub_1BD0DE53C(v91, &qword_1EBD52C50);
  sub_1BD0DE53C(v193, &qword_1EBD52C70);
  v235 = v220;
  v236 = v221;
  v231 = v216;
  v232 = v217;
  v237 = v222;
  v233 = v218;
  v234 = v219;
  v227 = v212;
  v228 = v213;
  v229 = v214;
  v230 = v215;
  sub_1BD0DE53C(&v227, &qword_1EBD52CB8);
  sub_1BD0DE53C(v189, &qword_1EBD52C48);
  sub_1BD0DE53C(v188, &qword_1EBD52C50);
  sub_1BD0DE53C(v187, &qword_1EBD52C70);

  v127 = sub_1BE04EC54();
  if (*(v195 + v196[14]))
  {
    v128 = sub_1BE050214();
  }

  else
  {
    v128 = sub_1BE0501F4();
  }

  v129 = v128;
  v130 = v176;
  sub_1BD0DE204(p_Kind, v176, &qword_1EBD52BA8);
  v131 = v130 + *(v190 + 36);
  *v131 = v127;
  *(v131 + 8) = v129;
  v132 = v195;
  type metadata accessor for TransferActionSheetObserver(0);
  sub_1BD79EE14(&qword_1EBD52B28, type metadata accessor for TransferActionSheetObserver);
  sub_1BE04E3D4();
  swift_getKeyPath();
  sub_1BE04E974();

  v209 = v201;
  v210 = v202;
  v211 = v203;
  v133 = v132;
  v134 = v179;
  sub_1BD7A0048(v132, v179);
  v135 = (*(v177 + 80) + 16) & ~*(v177 + 80);
  v136 = swift_allocObject();
  sub_1BD7A16C8(v134, v136 + v135, type metadata accessor for CurrencyAmountPickerView);
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52B90);
  v189 = sub_1BD79F31C();
  v193 = sub_1BD79F3D4();
  v137 = sub_1BD79F428();
  v138 = v190;
  sub_1BE050F74();

  sub_1BD0DE53C(v130, &qword_1EBD52B88);
  v139 = sub_1BD798330();
  p_Kind = &v140->Kind;
  v209 = v139;
  v210 = v140;
  v141 = v133 + v196[26];
  v142 = *v141;
  v143 = *(v141 + 8);
  v207 = v142;
  v208 = v143;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  v144 = sub_1BE0516C4();
  v188 = &v160;
  v186 = v201;
  LODWORD(v187) = v203;
  MEMORY[0x1EEE9AC00](v144, v145);
  MEMORY[0x1EEE9AC00](v146, v147);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52B80);
  v201 = v138;
  v202 = &type metadata for TransferActionSheet;
  v203 = v179;
  v204 = v189;
  v205 = v193;
  v206 = v137;
  swift_getOpaqueTypeConformance2();
  sub_1BD0DDEBC();
  sub_1BD0DE4F4(&qword_1EBD52BC0, &qword_1EBD52B80);
  v148 = v181;
  v149 = v191;
  sub_1BE050F34();

  (*(v180 + 8))(v149, v148);
  v150 = *(v133 + v196[6] + 8);
  type metadata accessor for FundingSourcesModel(0);
  sub_1BD79EE14(&qword_1EBD4AE18, type metadata accessor for FundingSourcesModel);
  v151 = sub_1BE04E964();
  swift_getKeyPath();
  v152 = v199;
  v153 = v183;
  v154 = &v183[*(v199 + 36)];
  sub_1BE04E974();

  v155 = swift_allocObject();
  *(v155 + 16) = v150;
  (*(v184 + 32))(v153, v192, v185);
  v156 = &v154[*(type metadata accessor for ErrorAlertModifier(0) + 20)];
  *v156 = sub_1BD7A050C;
  v156[1] = v155;
  v157 = v182;
  sub_1BD0DE204(v153, v182, &qword_1EBD52B70);
  v158 = v157;
  v159 = v200;
  sub_1BD0DE204(v158, v200, &qword_1EBD52B70);
  (*(v198 + 56))(v159, 0, 1, v152);
  return v150;
}

id sub_1BD793B04(uint64_t a1)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7, v8);
  v11 = &v15 - v9;
  if (a1 == 3)
  {
    (*(v3 + 104))(v6, *MEMORY[0x1E69B80E0], v2, v10);
    result = PKPassKitBundle();
    if (result)
    {
      v13 = result;
      v14 = sub_1BE04B6F4();
      v11 = v6;
      goto LABEL_7;
    }
  }

  else
  {
    if (a1 != 2)
    {
      return 0;
    }

    (*(v3 + 104))(&v15 - v9, *MEMORY[0x1E69B80E0], v2, v10);
    result = PKPassKitBundle();
    if (result)
    {
      v13 = result;
      v14 = sub_1BE04B6F4();
LABEL_7:

      (*(v3 + 8))(v11, v2);
      return v14;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD793CF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  v20[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52BE0);
  MEMORY[0x1EEE9AC00](v20[0], v3);
  v5 = v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52BE8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v20 - v9;
  v11 = sub_1BE04FB44();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52BF0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = v20 - v16;
  sub_1BE04FB04();
  v20[8] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52BF8);
  sub_1BD79F518();
  sub_1BE04E424();
  sub_1BE04FAE4();
  v20[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52C18);
  sub_1BD79F6B0();
  sub_1BE04E424();
  v18 = *(v20[0] + 48);
  (*(v14 + 16))(v5, v17, v13);
  (*(v7 + 16))(&v5[v18], v10, v6);
  sub_1BE04F854();
  (*(v7 + 8))(v10, v6);
  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_1BD794008@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52C40);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = v26 - v5;
  v7 = sub_1BE04E1D4();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39500);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = v26 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52C10);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = v26 - v18;
  v20 = type metadata accessor for CurrencyAmountPickerView(0);
  if (*(a1 + *(v20 + 56)))
  {
    swift_storeEnumTagMultiPayload();
    sub_1BD79F5A4();
    return sub_1BE04F9A4();
  }

  else
  {
    v22 = v20;
    sub_1BE04E1B4();
    v23 = (a1 + *(v22 + 44));
    v24 = *v23;
    v25 = v23[1];
    sub_1BE048964();
    MEMORY[0x1BFB3E7A0](v10, v24, v25);
    sub_1BE052434();
    sub_1BD0DE4F4(&qword_1EBD394F8, &qword_1EBD39500);
    sub_1BE050DE4();

    (*(v12 + 8))(v15, v11);
    sub_1BD0DE19C(v19, v6, &qword_1EBD52C10);
    swift_storeEnumTagMultiPayload();
    sub_1BD79F5A4();
    sub_1BE04F9A4();
    return sub_1BD0DE53C(v19, &qword_1EBD52C10);
  }
}

id sub_1BD794334@<X0>(uint64_t a1@<X8>)
{
  v71 = a1;
  v2 = type metadata accessor for CurrencyAmountPickerView(0);
  v64 = *(v2 - 8);
  v3 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v2, v4);
  v65 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80);
  v67 = *(v5 - 8);
  v68 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v66 = &v59 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45200);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v70 = &v59 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52C30);
  MEMORY[0x1EEE9AC00](v11, v12);
  v69 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v59 - v16;
  v18 = sub_1BE04BD74();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v59 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52C38);
  v29 = MEMORY[0x1EEE9AC00](v27, v27);
  v31 = &v59 - v30;
  if ((*(v1 + *(v2 + 56)) & 1) == 0)
  {
    swift_storeEnumTagMultiPayload();
    sub_1BD79F73C();
    return sub_1BE04F9A4();
  }

  v59 = v28;
  v60 = v2;
  v61 = v1;
  v62 = v17;
  v32 = *(v1 + *(v2 + 32));
  v33 = *MEMORY[0x1E69B80E0];
  v34 = *(v19 + 104);
  v63 = v11;
  if (v32 != 2)
  {
    v34(v22, v33, v18, v29);
    result = PKPassKitBundle();
    if (result)
    {
      v36 = result;
      v37 = sub_1BE04B6F4();
      v39 = v40;
      v26 = v22;
      goto LABEL_8;
    }

LABEL_16:
    __break(1u);
    return result;
  }

  v34(v26, v33, v18, v29);
  result = PKPassKitBundle();
  if (!result)
  {
    __break(1u);
    goto LABEL_16;
  }

  v36 = result;
  v37 = sub_1BE04B6F4();
  v39 = v38;
LABEL_8:
  v41 = v61;

  (*(v19 + 8))(v26, v18);
  *&v73 = v37;
  *(&v73 + 1) = v39;
  v42 = v65;
  sub_1BD7A0048(v41, v65);
  v43 = (*(v64 + 80) + 16) & ~*(v64 + 80);
  v44 = swift_allocObject();
  sub_1BD7A16C8(v42, v44 + v43, type metadata accessor for CurrencyAmountPickerView);
  sub_1BD0DDEBC();
  v45 = v66;
  sub_1BE051744();
  sub_1BE052434();
  sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80);
  v46 = v70;
  v47 = v68;
  sub_1BE050DE4();

  (*(v67 + 8))(v45, v47);
  v48 = v60;
  v49 = v41 + *(v60 + 84);
  v50 = *v49;
  v51 = *(v49 + 8);
  LOBYTE(v73) = v50;
  *(&v73 + 1) = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516A4();
  if (v72)
  {
    v52 = 1;
    v54 = v62;
    v53 = v63;
  }

  else
  {
    v73 = *(v41 + *(v48 + 116));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46F68);
    sub_1BE0516A4();
    v54 = v62;
    v53 = v63;
    if (v72)
    {

      v52 = 1;
    }

    else
    {
      v52 = 0;
    }
  }

  KeyPath = swift_getKeyPath();
  v56 = swift_allocObject();
  *(v56 + 16) = v52;
  v57 = v69;
  sub_1BD0DE204(v46, v69, &unk_1EBD45200);
  v58 = (v57 + *(v53 + 36));
  *v58 = KeyPath;
  v58[1] = sub_1BD10DF54;
  v58[2] = v56;
  sub_1BD0DE204(v57, v54, &qword_1EBD52C30);
  sub_1BD0DE19C(v54, v31, &qword_1EBD52C30);
  swift_storeEnumTagMultiPayload();
  sub_1BD79F73C();
  sub_1BE04F9A4();
  return sub_1BD0DE53C(v54, &qword_1EBD52C30);
}

void sub_1BD794A14(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CurrencyAmountPickerView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v4 = *(v1 + *(v3 + 32));
  v5 = v4 == 2;
  if (v4 == 2)
  {
    v6 = &selRef_oneTimeDepositFeatureDescriptor;
  }

  else
  {
    v6 = &selRef_oneTimeWithdrawalFeatureDescriptor;
  }

  if (v5)
  {
    v7 = &selRef_oneTimeDepositWithAppleCashFeatureDescriptor;
  }

  else
  {
    v7 = &selRef_oneTimeWithdrawalWithAppleCashFeatureDescriptor;
  }

  v8 = [v48 *v6];
  v9 = [v48 *v7];
  if (v8 && (v10 = [v8 minimumAmount]) != 0)
  {
    v11 = v10;
    v12 = sub_1BE0533F4();
    v14 = v13;
    v16 = v15;

    v17 = 0;
    if (!v9)
    {
LABEL_15:
      if (v17)
      {
        v47 = 0;
        v22 = 0;
        LODWORD(v24) = 0;
        v43 = 1;
      }

      else
      {
        v43 = 0;
        v47 = v12;
        v22 = v14;
        LODWORD(v24) = v16;
      }

      goto LABEL_21;
    }
  }

  else
  {
    v12 = 0;
    v14 = 0;
    v16 = 0;
    v17 = 1;
    if (!v9)
    {
      goto LABEL_15;
    }
  }

  v18 = [v9 minimumAmount];
  if (!v18)
  {
    goto LABEL_15;
  }

  v46 = v12;
  v19 = v18;
  v20 = sub_1BE0533F4();
  v22 = v21;
  v24 = v23;

  if (v17)
  {
    v47 = v20;
    v43 = 0;
  }

  else
  {
    v43 = 0;
    if ((MEMORY[0x1BFB403F0](v20, v22, v24, v46, v14, v16) & 1) == 0)
    {
      LODWORD(v24) = v16;
      v22 = v14;
      v20 = v46;
    }

    v47 = v20;
  }

LABEL_21:
  v45 = v22;
  v44 = v24;
  if (v8 && (v25 = [v8 maximumAmount]) != 0)
  {
    v26 = v25;
    v27 = sub_1BE0533F4();
    v29 = v28;
    v31 = v30;

    v32 = 0;
    if (!v9)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v27 = 0;
    v29 = 0;
    v31 = 0;
    v32 = 1;
    if (!v9)
    {
LABEL_29:
      if (v32)
      {
        v42 = v9;
        LODWORD(v9) = 0;
        v37 = 0;
        v35 = 0;
        v39 = 1;
        goto LABEL_31;
      }

      v39 = 0;
LABEL_35:
      v40 = v45;
      goto LABEL_36;
    }
  }

  v33 = [v9 maximumAmount];
  if (!v33)
  {
    goto LABEL_29;
  }

  v34 = v33;
  v42 = v9;
  v35 = sub_1BE0533F4();
  v37 = v36;
  v9 = v38;

  if ((v32 & 1) == 0)
  {
    v41 = MEMORY[0x1BFB403F0](v35, v37, v9, v27, v29, v31);

    v39 = 0;
    if ((v41 & 1) == 0)
    {
      LODWORD(v31) = v9;
      v29 = v37;
      v27 = v35;
    }

    goto LABEL_35;
  }

  v39 = 0;
LABEL_31:
  v40 = v45;

  v27 = v35;
  v29 = v37;
  LODWORD(v31) = v9;
LABEL_36:
  *a1 = v47;
  *(a1 + 8) = v40;
  *(a1 + 16) = v44;
  *(a1 + 20) = v43;
  *(a1 + 24) = v27;
  *(a1 + 32) = v29;
  *(a1 + 40) = v31;
  *(a1 + 44) = v39;
}

uint64_t sub_1BD794D8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X5>, uint64_t a5@<X6>, int a6@<W7>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, int a10)
{
  LODWORD(v226) = a6;
  *&v225 = a4;
  *(&v225 + 1) = a5;
  v223 = a2;
  v191 = a7;
  v224 = a10;
  v222 = a9;
  v221 = a8;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C1D0);
  MEMORY[0x1EEE9AC00](v180, v12);
  v183 = &v177 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52EE8);
  v181 = *(v14 - 8);
  v182 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v179 = &v177 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52EF0);
  v188 = *(v17 - 8);
  v189 = v17;
  MEMORY[0x1EEE9AC00](v17, v18);
  v178 = &v177 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52EF8);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v190 = &v177 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v236 = &v177 - v25;
  v26 = sub_1BE04BD74();
  v234 = *(v26 - 8);
  v235 = v26;
  MEMORY[0x1EEE9AC00](v26, v27);
  v233 = &v177 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  MEMORY[0x1EEE9AC00](v229, v29);
  v228 = &v177 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v227 = &v177 - v33;
  v34 = type metadata accessor for CurrencyAmountPickerView(0);
  v35 = *(v34 - 1);
  MEMORY[0x1EEE9AC00](v34, v36);
  v220 = v37;
  v239 = &v177 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52F00);
  MEMORY[0x1EEE9AC00](v243, v38);
  v242 = &v177 - v39;
  v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52F08);
  v230 = *(v246 - 8);
  MEMORY[0x1EEE9AC00](v246, v40);
  v244 = &v177 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52F10);
  v43 = *(v42 - 8);
  v231 = v42;
  v232 = v43;
  MEMORY[0x1EEE9AC00](v42, v44);
  v245 = &v177 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52F18);
  v198 = *(v46 - 8);
  v199 = v46;
  MEMORY[0x1EEE9AC00](v46, v47);
  v238 = &v177 - v48;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52F20);
  MEMORY[0x1EEE9AC00](v197, v49);
  v187 = &v177 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51, v52);
  v196 = &v177 - v53;
  MEMORY[0x1EEE9AC00](v54, v55);
  v237 = &v177 - v56;
  v218 = a1 + v34[22];
  v57 = *(v218 + 16);
  *v267 = *v218;
  *&v267[2] = v57;
  LODWORD(v267[4]) = *(v218 + 32);
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4EED0);
  sub_1BE051914();
  v58 = (a1 + v34[23]);
  v59 = *v58;
  v60 = v58[1];
  v61 = v58[2];
  v194 = v60;
  v195 = v59;
  *&v256[0] = v59;
  *(&v256[0] + 1) = v60;
  v193 = v61;
  *&v256[1] = v61;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42150);
  sub_1BE0516C4();
  v215 = *v267;
  v213 = v267[3];
  v214 = v267[2];
  v62 = (a1 + v34[24]);
  v63 = *v62;
  v185 = v62[1];
  v186 = v63;
  *&v256[0] = v63;
  *(&v256[0] + 1) = v185;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52F28);
  sub_1BE0516C4();
  v210 = v267[1];
  v211 = v267[0];
  v209 = v267[2];
  v64 = sub_1BE0533F4();
  v207 = v65;
  v208 = v64;
  v212 = v66;
  v67 = sub_1BE0533F4();
  v204 = v68;
  v205 = v67;
  v206 = v69;
  v70 = a1;
  v216 = *(a1 + v34[8]);
  v71 = v216;
  v72 = a1 + v34[21];
  v73 = *v72;
  v74 = *(v72 + 8);
  LOBYTE(v256[0]) = v73;
  *(&v256[0] + 1) = v74;
  sub_1BE048C84();
  v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516C4();
  v200 = v267[0];
  v75 = v267[1];
  v202 = LOBYTE(v267[2]);
  sub_1BD796378();
  v201 = v76;
  v77 = v34[14];
  v247 = v34;
  v78 = *(v70 + v77);
  KeyPath = swift_getKeyPath();
  v264 = v256[19];
  v265 = v256[20];
  LODWORD(v266) = v257;
  v258 = 0;
  v79 = v239;
  sub_1BD7A0048(v70, v239);
  v241 = *(v35 + 80);
  v80 = (v241 + 16) & ~v241;
  v219 = v80;
  v81 = swift_allocObject();
  v240 = type metadata accessor for CurrencyAmountPickerView;
  sub_1BD7A16C8(v79, v81 + v80, type metadata accessor for CurrencyAmountPickerView);
  *&v256[2] = v266;
  *(&v256[3] + 1) = v214;
  *&v256[4] = v213;
  *(&v256[4] + 1) = v211;
  *&v256[5] = v210;
  *(&v256[5] + 1) = v209;
  *&v256[6] = v223;
  *(&v256[6] + 1) = a3;
  *&v256[7] = v208;
  *(&v256[7] + 1) = v207;
  *(&v256[8] + 4) = v205;
  *(&v256[8] + 12) = v204;
  LODWORD(v256[8]) = v212;
  DWORD1(v256[9]) = v206;
  v256[10] = v225;
  *(&v256[11] + 4) = v221;
  *(&v256[11] + 12) = v222;
  LODWORD(v256[11]) = v226;
  DWORD1(v256[12]) = v224;
  *(&v256[12] + 1) = v200;
  *&v256[13] = v75;
  *(&v256[9] + 1) = v71;
  v256[0] = v264;
  v256[1] = v265;
  *(&v256[2] + 8) = v215;
  BYTE8(v256[13]) = v202;
  HIDWORD(v256[13]) = *&v263[3];
  *(&v256[13] + 9) = *v263;
  *&v256[14] = v201;
  BYTE8(v256[15]) = (v78 & 1) == 0;
  *(&v256[16] + 9) = 256;
  *(&v256[15] + 9) = 256;
  HIBYTE(v256[15]) = v262;
  *(&v256[15] + 11) = v261;
  *&v256[16] = KeyPath;
  *(&v256[14] + 1) = sub_1BD7969D4;
  *&v256[15] = 0;
  BYTE8(v256[16]) = 0;
  *(&v256[16] + 11) = v259;
  HIBYTE(v256[16]) = v260;
  *&v256[17] = sub_1BD7A11DC;
  *(&v256[17] + 1) = v81;
  v256[18] = 0uLL;
  v82 = v70 + v34[20];
  LOBYTE(v267[0]) = *v82;
  v267[1] = *(v82 + 8);
  LOBYTE(v267[2]) = *(v82 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41570);
  sub_1BE04E244();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52F30);
  sub_1BD7A1268();
  v83 = v242;
  sub_1BE050FC4();

  memcpy(v267, v256, 0x130uLL);
  sub_1BD0DE53C(v267, &qword_1EBD52F30);
  v84 = v247;
  v85 = *(v70 + v247[5] + 8);
  v86 = *(v218 + 16);
  v256[0] = *v218;
  v256[1] = v86;
  LODWORD(v256[2]) = *(v218 + 32);
  sub_1BE051914();
  v87 = (v70 + v84[16]);
  v88 = v70;
  v248 = v70;
  DWORD2(v225) = *v87;
  *&v225 = *(v87 + 1);
  LOBYTE(v250) = BYTE8(v225);
  *(&v250 + 1) = v225;
  sub_1BE0516C4();
  v89 = v256[0];
  LOBYTE(v70) = v256[1];
  v90 = v88 + v84[17];
  v91 = *v90;
  v92 = *(v90 + 8);
  LOBYTE(v250) = v91;
  *(&v250 + 1) = v92;
  sub_1BE0516C4();
  v93 = v256[0];
  v94 = v256[1];
  v95 = &v83[*(v243 + 36)];
  v96 = v216;
  *v95 = v85;
  *(v95 + 1) = v96;
  v97 = *&v267[41];
  *(v95 + 1) = *&v267[39];
  *(v95 + 2) = v97;
  *(v95 + 12) = v268;
  *(v95 + 56) = v89;
  v95[72] = v70;
  *(v95 + 5) = v93;
  v95[96] = v94;
  v98 = type metadata accessor for TransferEligibilityView();
  v99 = type metadata accessor for FeatureError(0);
  v100 = v227;
  (*(*(v99 - 8) + 56))(v227, 1, 1, v99);
  sub_1BD0DE19C(v100, v228, &qword_1EBD416C0);
  v226 = v85;
  sub_1BE051694();
  sub_1BD0DE53C(v100, &qword_1EBD416C0);
  v101 = &v95[*(v98 + 40)];
  *v101 = sub_1BD3633BC;
  *(v101 + 1) = 0;
  v101[16] = 0;
  v102 = &v95[*(v98 + 44)];
  *v102 = sub_1BD3633F4;
  *(v102 + 1) = 0;
  v102[16] = 0;
  v103 = v248;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v104 = v103;
  v105 = v239;
  sub_1BD7A0048(v104, v239);
  v106 = v219;
  v107 = swift_allocObject();
  v108 = v240;
  sub_1BD7A16C8(v105, v107 + v106, v240);
  v109 = sub_1BD7A13EC();
  v110 = v243;
  v111 = v242;
  sub_1BE051064();

  sub_1BD0DE53C(v111, &qword_1EBD52F00);
  LOBYTE(v256[0]) = BYTE8(v225);
  *(&v256[0] + 1) = v225;
  sub_1BE0516A4();
  v112 = v248;
  sub_1BD7A0048(v248, v105);
  v113 = swift_allocObject();
  sub_1BD7A16C8(v105, v113 + v106, v108);
  *&v256[0] = v110;
  *(&v256[0] + 1) = MEMORY[0x1E69E6370];
  *&v256[1] = v109;
  *(&v256[1] + 1) = MEMORY[0x1E69E6388];
  v243 = MEMORY[0x1E6981440];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v115 = v246;
  v116 = v244;
  sub_1BE051064();

  (*(v230 + 8))(v116, v115);
  v117 = v112 + v247[27];
  v118 = *v117;
  v119 = *(v117 + 8);
  LOBYTE(v250) = v118;
  *(&v250 + 1) = v119;
  sub_1BE0516C4();
  sub_1BD7A0048(v112, v105);
  v120 = swift_allocObject();
  sub_1BD7A16C8(v105, v120 + v106, v240);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52F68);
  *&v256[0] = v246;
  *(&v256[0] + 1) = MEMORY[0x1E69E6370];
  *&v256[1] = OpaqueTypeConformance2;
  *(&v256[1] + 1) = MEMORY[0x1E69E6388];
  swift_getOpaqueTypeConformance2();
  sub_1BD7A1600();
  v121 = v231;
  v122 = v245;
  sub_1BE050F64();

  (*(v232 + 8))(v122, v121);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v123 = *&v256[0];
  if (*&v256[0] && (v124 = [*&v256[0] contactNumber], v123, v124))
  {
    v125 = sub_1BE052434();
    v127 = v126;
  }

  else
  {
    v125 = 0;
    v127 = 0;
  }

  v128 = v237;
  v130 = v234;
  v129 = v235;
  v131 = v233;
  (*(v234 + 104))(v233, *MEMORY[0x1E69B80E0], v235);
  result = PKPassKitBundle();
  if (!result)
  {
    goto LABEL_14;
  }

  v133 = result;
  v134 = sub_1BE04B6F4();
  v136 = v135;

  (*(v130 + 8))(v131, v129);
  v137 = (v248 + v247[28]);
  v138 = *v137;
  v139 = *(v137 + 1);
  LOBYTE(v250) = v138;
  *(&v250 + 1) = v139;
  sub_1BE0516C4();
  v140 = v256[0];
  v141 = v256[1];
  v142 = v196;
  (*(v198 + 32))(v196, v238, v199);
  v143 = v142 + *(v197 + 36);
  *v143 = v125;
  *(v143 + 8) = v127;
  *(v143 + 16) = v134;
  *(v143 + 24) = v136;
  *(v143 + 32) = 0;
  *(v143 + 40) = v140;
  *(v143 + 56) = v141;
  sub_1BD0DE204(v142, v128, &qword_1EBD52F20);
  *&v256[0] = v195;
  *(&v256[0] + 1) = v194;
  *&v256[1] = v193;
  sub_1BE0516A4();
  v144 = *(&v250 + 1);
  v145 = v236;
  if (!*(&v250 + 1))
  {
LABEL_11:
    (*(v188 + 56))(v145, 1, 1, v189);
    goto LABEL_12;
  }

  v146 = v250;
  *&v256[0] = v186;
  *(&v256[0] + 1) = v185;
  sub_1BE0516A4();
  if (!v250)
  {

    goto LABEL_11;
  }

  *&v256[0] = v146;
  *(&v256[0] + 1) = v144;
  sub_1BD0DDEBC();
  v147 = sub_1BE0506C4();
  v149 = v148;
  v151 = v150;
  sub_1BE048964();
  v152 = sub_1BE050564();
  v154 = v153;
  v156 = v155;
  v158 = v157;

  sub_1BD0DDF10(v147, v149, v151 & 1);

  LOBYTE(v147) = sub_1BE0501E4();
  sub_1BE04E1F4();
  v255 = v156 & 1;
  v254 = 0;
  *&v250 = v152;
  *(&v250 + 1) = v154;
  LOBYTE(v251) = v156 & 1;
  *(&v251 + 1) = v158;
  LOBYTE(v252) = v147;
  *(&v252 + 1) = v159;
  *&v253[0] = v160;
  *(&v253[0] + 1) = v161;
  *&v253[1] = v162;
  BYTE8(v253[1]) = 0;
  v163 = *MEMORY[0x1E697E6D0];
  v164 = sub_1BE04EB24();
  v165 = v183;
  (*(*(v164 - 8) + 104))(v183, v163, v164);
  sub_1BD79EE14(&qword_1EBD3C218, MEMORY[0x1E697E730]);
  result = sub_1BE052334();
  if (result)
  {
    v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF90);
    v167 = sub_1BD2A275C();
    v168 = sub_1BD0DE4F4(&qword_1EBD3C220, &qword_1EBD3C1D0);
    v169 = v179;
    v170 = v180;
    sub_1BE050B34();
    sub_1BD0DE53C(v165, &qword_1EBD3C1D0);
    v256[2] = v252;
    v256[3] = v253[0];
    *(&v256[3] + 9) = *(v253 + 9);
    v256[0] = v250;
    v256[1] = v251;
    sub_1BD0DE53C(v256, &unk_1EBD3DF90);
    sub_1BE052434();
    *&v250 = v166;
    *(&v250 + 1) = v170;
    *&v251 = v167;
    *(&v251 + 1) = v168;
    swift_getOpaqueTypeConformance2();
    v171 = v178;
    v172 = v182;
    sub_1BE050DE4();

    (*(v181 + 8))(v169, v172);
    v145 = v236;
    sub_1BD0DE204(v171, v236, &qword_1EBD52EF0);
    (*(v188 + 56))(v145, 0, 1, v189);
    v128 = v237;
LABEL_12:
    v173 = v187;
    sub_1BD0DE19C(v128, v187, &qword_1EBD52F20);
    v174 = v190;
    sub_1BD0DE19C(v145, v190, &qword_1EBD52EF8);
    v175 = v191;
    sub_1BD0DE19C(v173, v191, &qword_1EBD52F20);
    v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52F78);
    sub_1BD0DE19C(v174, v175 + *(v176 + 48), &qword_1EBD52EF8);
    sub_1BD0DE53C(v145, &qword_1EBD52EF8);
    sub_1BD0DE53C(v128, &qword_1EBD52F20);
    sub_1BD0DE53C(v174, &qword_1EBD52EF8);
    return sub_1BD0DE53C(v173, &qword_1EBD52F20);
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

void sub_1BD796378()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CurrencyAmountPickerView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v7 = v60;
  if (*(v0 + v6[8]) != 2 || (v8 = *(v0 + v6[9]), v9 = *(v0 + v6[10]), !PKPeerPaymentCanPerformAccountServicePayments()) || !v8 || (v10 = [v8 currentBalance]) == 0)
  {

    return;
  }

  v11 = v10;
  v12 = [v10 amount];
  if (!v12 || (v60 = 0, v61 = 0, v62 = 0, v63 = 1, v13 = v12, sub_1BE0533E4(), v13, v63 == 1) || (v14 = v60, v15 = v61, LODWORD(v59) = v62, (v16 = [v11 currency]) == 0))
  {

    return;
  }

  v17 = v16;
  v57 = v15;
  v58 = v14;
  v18 = sub_1BE052434();
  v20 = v19;
  v21 = [v7 oneTimeDepositWithAppleCashFeatureDescriptor];
  if (!v21)
  {

LABEL_15:

    return;
  }

  v55 = v18;
  v22 = v21;
  v23 = [v22 minimumAmount];
  if (!v23)
  {

    return;
  }

  v56 = v22;
  v60 = 0;
  v61 = 0;
  v62 = 0;
  v63 = 1;
  v24 = v23;
  sub_1BE0533E4();

  if (v63 == 1)
  {

    v25 = v56;

    return;
  }

  v53 = v60;
  v54 = v20;
  v52 = v61;
  v51 = v62;
  v26 = v56;
  v27 = [v56 maximumAmount];

  if (!v27)
  {

    goto LABEL_21;
  }

  v60 = 0;
  v61 = 0;
  v62 = 0;
  v63 = 1;
  sub_1BE0533E4();

  if (v63 == 1)
  {

LABEL_21:

    return;
  }

  v49 = v61;
  v50 = v60;
  v48 = v62;
  v29 = v57;
  v28 = v58;
  if (MEMORY[0x1BFB403F0](v58, v57, v59, v53, v52, v51))
  {

    goto LABEL_15;
  }

  LODWORD(v53) = MEMORY[0x1BFB403F0](v50, v49, v48, v28, v29, v59);
  if (v53)
  {
    v30 = v50;
  }

  else
  {
    v30 = v28;
  }

  if (v53)
  {
    v31 = v49;
  }

  else
  {
    v31 = v29;
  }

  if (v53)
  {
    v32 = v48;
  }

  else
  {
    v32 = v59;
  }

  v58 = v31;
  v59 = v30;
  LODWORD(v57) = v32;
  v33 = sub_1BE053344();
  v34 = PKCurrencyAmountMake();

  if (!v34)
  {

LABEL_40:
    return;
  }

  v52 = objc_allocWithZone(MEMORY[0x1E69B8410]);
  sub_1BD0E5E8C(0, &qword_1EBD4E090);
  v35 = v7;
  v36 = v34;
  v37 = sub_1BE052724();
  v38 = [v52 initWithAccount:v35 peerPaymentAccount:v8 peerPaymentPass:v9 transferType:2 fundingSources:v37 currencyAmount:v36];
  v52 = v35;

  v39 = v36;
  if (!v38)
  {

    goto LABEL_40;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1BE0B7020;
  (*(v2 + 104))(v5, *MEMORY[0x1E69B80E0], v1);
  v41 = PKPassKitBundle();
  if (v41)
  {
    v42 = v41;
    sub_1BE04B6F4();

    (*(v2 + 8))(v5, v1);
    v43 = sub_1BE053344();
    v44 = sub_1BE052404();

    v45 = sub_1BE052404();
    v46 = [objc_opt_self() suggestionWithTitle:v44 value:v43 currencyCode:v45];

    if (v46)
    {

      *(v40 + 32) = v46;

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1BD7969DC()
{
  type metadata accessor for CurrencyAmountPickerView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41570);
  return sub_1BE04E234();
}

void sub_1BD796A64(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  if (*a1 & 1) == 0 && *a2 && (sub_1BD796AD0())
  {
    v4 = type metadata accessor for CurrencyAmountPickerView(0);
    if (*(a3 + *(v4 + 56)))
    {
      sub_1BD796F50(0);
    }

    else
    {
      (*(a3 + *(v4 + 48)))();
    }
  }
}

uint64_t sub_1BD796AD0()
{
  v1 = v0;
  v2 = type metadata accessor for CurrencyAmountPickerView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if (!v26 || (v26 >> 62 ? (v6 = sub_1BE053704()) : (v6 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10)), (, v6 < 1) || (swift_getKeyPath(), swift_getKeyPath(), sub_1BE04D8B4(), , , v26) && (v26 >> 62 ? (v7 = sub_1BE053704()) : (v7 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v7 > 0)) || (sub_1BD79D880(), (v8 & 1) != 0))
  {
    sub_1BD791FE8();
    if (v9)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BE04D8B4();

      if (v26)
      {
        v10 = v26 >> 62 ? sub_1BE053704() : *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (v10 > 0)
        {
          return 1;
        }
      }

      sub_1BD79D880();
      if (v11)
      {
        return 1;
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    if (!v26 || (v26 >> 62 ? (v13 = sub_1BE053704()) : (v13 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v13 <= 0))
    {
      sub_1BD7A0048(v1, &v24[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)]);
      sub_1BE0528A4();
      v14 = sub_1BE052894();
      v15 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v16 = swift_allocObject();
      v17 = MEMORY[0x1E69E85E0];
      *(v16 + 16) = v14;
      *(v16 + 24) = v17;
      sub_1BD7A16C8(&v24[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v16 + v15, type metadata accessor for CurrencyAmountPickerView);
      v18 = sub_1BE052894();
      v19 = swift_allocObject();
      *(v19 + 16) = v18;
      *(v19 + 24) = v17;
      sub_1BE051934();
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4DFE0);
      MEMORY[0x1BFB3E970](&v25, v20);
      LOBYTE(v18) = v25;

      if ((v18 & 1) == 0)
      {
        sub_1BD798E3C(0);
      }
    }
  }

  else
  {
    v21 = v1 + *(v2 + 104);
    v22 = *v21;
    v23 = *(v21 + 8);
    LOBYTE(v26) = v22;
    v27 = v23;
    v25 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
    sub_1BE0516B4();
  }

  return 0;
}

void sub_1BD796F50(char a1)
{
  v2 = v1;
  v4 = sub_1BE050144();
  v33 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE04D214();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CurrencyAmountPickerView(0);
  v14 = (v1 + v13[16]);
  v15 = *v14;
  v16 = *(v14 + 1);
  LOBYTE(v35) = v15;
  *(&v35 + 1) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516A4();
  if (v34 == 1)
  {
    sub_1BE04D1E4();
    v17 = sub_1BE04D204();
    v18 = sub_1BE052C54();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v32 = v4;
      v20 = a1;
      v21 = v19;
      *v19 = 0;
      _os_log_impl(&dword_1BD026000, v17, v18, "Transfer eligibility already approved in currency picker", v19, 2u);
      v22 = v21;
      a1 = v20;
      v4 = v32;
      MEMORY[0x1BFB45F20](v22, -1, -1);
    }

    (*(v9 + 8))(v12, v8);
    v35 = *(v2 + v13[29]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46F68);
    sub_1BE0516A4();
    if (v34)
    {
    }

    else
    {
      v29 = sub_1BD70A4F8(v7);
      MEMORY[0x1EEE9AC00](v29, v30);
      *(&v31 - 2) = v2;
      *(&v31 - 8) = a1 & 1;
      sub_1BE050134();
      (*(v33 + 8))(v7, v4);
    }
  }

  else
  {
    v23 = (v1 + v13[18]);
    v24 = *v23;
    v25 = *(v23 + 1);
    LOBYTE(v35) = v24;
    *(&v35 + 1) = v25;
    LOBYTE(v34) = a1 & 1;
    sub_1BE0516B4();
    v26 = (v1 + v13[17]);
    v27 = *v26;
    v28 = *(v26 + 1);
    LOBYTE(v35) = v27;
    *(&v35 + 1) = v28;
    LOBYTE(v34) = 1;
    sub_1BE0516B4();
  }
}

void sub_1BD797290(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v5 = sub_1BE050144();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a2 == 1)
  {
    v10 = type metadata accessor for CurrencyAmountPickerView(0);
    if (*(a3 + *(v10 + 60)))
    {
      v11 = (a3 + *(v10 + 72));
      v12 = *v11;
      v13 = *(v11 + 1);
      LOBYTE(v20) = v12;
      *(&v20 + 1) = v13;
      v14 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
      sub_1BE0516A4();
      v15 = v19;
      v20 = *(a3 + *(v14 + 116));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46F68);
      sub_1BE0516A4();
      if (v19)
      {
      }

      else
      {
        v16 = sub_1BD70A4F8(v9);
        MEMORY[0x1EEE9AC00](v16, v17);
        *(&v18 - 2) = a3;
        *(&v18 - 8) = v15;
        sub_1BE050134();
        (*(v6 + 8))(v9, v5);
      }
    }
  }
}

uint64_t sub_1BD797458@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for CurrencyAmountPickerView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v2 = [objc_allocWithZone(MEMORY[0x1E69B8418]) initWithUnavailableFundingSourceTopicForAccount_];
  result = sub_1BE0501F4();
  *a1 = v4;
  *(a1 + 8) = v2;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1BD797514@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52EB0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v29 - v6;
  v8 = type metadata accessor for CurrencyAmountPickerView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v9 = v31;
  if (!v31)
  {
    goto LABEL_13;
  }

  v10 = [v31 currentBalance];
  v11 = [v9 availableBalance];
  v12 = v11;
  if (!v10)
  {
    if (!v11)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if (!v11)
  {
    v12 = v10;
LABEL_9:

    goto LABEL_10;
  }

  sub_1BD0E5E8C(0, &qword_1EBD38840);
  v13 = sub_1BE053074();

  if ((v13 & 1) == 0)
  {
LABEL_10:
    if (*(v1 + *(v8 + 32)) == 3 && (*(v1 + *(v8 + 56)) & 1) == 0)
    {
      v30 = sub_1BE0501B4();
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52EB8);
      v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD52EC0);
      v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C1D0);
      v18 = sub_1BD7A106C();
      v19 = sub_1BD0DE4F4(&qword_1EBD3C220, &qword_1EBD3C1D0);
      v31 = v16;
      v32 = v17;
      v33 = v18;
      v34 = v19;
      swift_getOpaqueTypeConformance2();
      sub_1BE04E304();
      *&v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52EE0) + 36)] = 256;
      LOBYTE(v18) = sub_1BE0501F4();
      sub_1BE04E1F4();
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v27 = v26;

      v28 = &v7[*(v3 + 36)];
      *v28 = v18;
      *(v28 + 1) = v21;
      *(v28 + 2) = v23;
      *(v28 + 3) = v25;
      *(v28 + 4) = v27;
      v28[40] = 0;
      sub_1BD0DE204(v7, a1, &qword_1EBD52EB0);
      v14 = 0;
      return (*(v4 + 56))(a1, v14, 1, v3);
    }
  }

LABEL_12:

LABEL_13:
  v14 = 1;
  return (*(v4 + 56))(a1, v14, 1, v3);
}

uint64_t sub_1BD797888@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52CC8);
  v24 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v23 - v5;
  v7 = type metadata accessor for CurrencyAmountPickerView(0);
  if (*(v1 + *(v7 + 56)) == 1 && (v8 = *(v1 + *(v7 + 60))) != 0)
  {
    v9 = v8;
    *v6 = sub_1BE04F7B4();
    *(v6 + 1) = 0;
    v6[16] = 1;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52CD0);
    sub_1BD799558(v1, v9, &v6[*(v10 + 44)]);
    v11 = sub_1BE0501C4();
    sub_1BE04E1F4();
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    v20 = &v6[*(v3 + 36)];
    *v20 = v11;
    *(v20 + 1) = v13;
    *(v20 + 2) = v15;
    *(v20 + 3) = v17;
    *(v20 + 4) = v19;
    v20[40] = 0;
    sub_1BD0DE204(v6, a1, &qword_1EBD52CC8);
    return (*(v24 + 56))(a1, 0, 1, v3);
  }

  else
  {
    v22 = *(v24 + 56);

    return v22(a1, 1, 1, v3);
  }
}

void sub_1BD797A80(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CurrencyAmountPickerView(0);
  v45 = *(v4 - 1);
  v5 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v7 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE04BD74();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + v4[14]))
  {
    sub_1BD1E49FC(&v52);
LABEL_12:
    v34 = v61;
    *(a1 + 128) = v60;
    *(a1 + 144) = v34;
    *(a1 + 160) = v62;
    v35 = v57;
    *(a1 + 64) = v56;
    *(a1 + 80) = v35;
    v36 = v59;
    *(a1 + 96) = v58;
    *(a1 + 112) = v36;
    v37 = v53;
    *a1 = v52;
    *(a1 + 16) = v37;
    v38 = v55;
    *(a1 + 32) = v54;
    *(a1 + 48) = v38;
    return;
  }

  v42 = v5;
  v13 = v2 + v4[17];
  v14 = *v13;
  v15 = *(v13 + 8);
  LOBYTE(v52) = v14;
  *(&v52 + 1) = v15;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516A4();
  if (v46)
  {
    v16 = 1;
  }

  else
  {
    v43 = *(v2 + v4[6] + 8);
    swift_getKeyPath();
    v41 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    swift_getKeyPath();
    sub_1BE04D8B4();
    v7 = v41;

    v16 = v52;
  }

  LODWORD(v43) = v16;
  (*(v9 + 104))(v12, *MEMORY[0x1E69B80D8], v8);
  v17 = PKPassKitBundle();
  if (v17)
  {
    v18 = v17;
    v19 = sub_1BE04B6F4();
    v40 = v20;
    v41 = v19;

    (*(v9 + 8))(v12, v8);
    v21 = v2 + v4[21];
    v22 = *v21;
    v23 = *(v21 + 8);
    LOBYTE(v52) = *v21;
    *(&v52 + 1) = v23;
    sub_1BE0516A4();
    v24 = v46;
    sub_1BD7A0048(v2, v7);
    v25 = (*(v45 + 80) + 16) & ~*(v45 + 80);
    v26 = swift_allocObject();
    sub_1BD7A16C8(v7, v26 + v25, type metadata accessor for CurrencyAmountPickerView);
    if (qword_1EBD36ED8 != -1)
    {
      swift_once();
    }

    v27 = qword_1EBDAB648;
    v28 = qword_1EBD36EE0;
    sub_1BE048964();
    if (v28 != -1)
    {
      swift_once();
    }

    v29 = qword_1EBDAB650;
    LOBYTE(v52) = v22;
    *(&v52 + 1) = v23;
    sub_1BE048964();
    sub_1BE0516A4();
    v30 = v46;
    KeyPath = swift_getKeyPath();
    v32 = swift_allocObject();
    *(v32 + 16) = v30;
    *&v46 = v41;
    *(&v46 + 1) = v40;
    *&v47 = v27;
    *(&v47 + 1) = v29;
    LOBYTE(v48) = v43;
    BYTE1(v48) = v24;
    *(&v48 + 1) = sub_1BD7A065C;
    *&v49[0] = v26;
    *(v49 + 8) = 0u;
    *(&v49[1] + 8) = 0u;
    *(&v49[2] + 8) = 0u;
    *(&v49[3] + 8) = 0u;
    *(&v49[4] + 8) = 0u;
    *(&v49[5] + 1) = 0;
    *&v50 = KeyPath;
    *(&v50 + 1) = sub_1BD185ABC;
    v51 = v32;
    PKEdgeInsetsMake(&v46, v33);
    v60 = v49[5];
    v61 = v50;
    v62 = v51;
    v56 = v49[1];
    v57 = v49[2];
    v58 = v49[3];
    v59 = v49[4];
    v52 = v46;
    v53 = v47;
    v54 = v48;
    v55 = v49[0];
    goto LABEL_12;
  }

  __break(1u);
}

uint64_t sub_1BD797F28@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  *a1 = v3;
  return result;
}

uint64_t sub_1BD797FA8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

double sub_1BD79801C@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for CurrencyAmountPickerView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v10 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v15 = &v30 - v14;
  if ((a1 & 1) == 0)
  {
    v18 = *(v3 + *(v13 + 20) + 8);
    sub_1BD7A0048(v3, &v30 - v14);
    v19 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v20 = swift_allocObject();
    sub_1BD7A16C8(v15, v20 + v19, type metadata accessor for CurrencyAmountPickerView);
    swift_getKeyPath();
    swift_getKeyPath();
    v21 = v18;
    sub_1BE04D8B4();

    if (v36)
    {
      if (v36 >> 62)
      {
        v24 = sub_1BE053704();

        if (v24)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v22 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (v22)
        {
          goto LABEL_6;
        }
      }

      v23 = 1;
      goto LABEL_9;
    }

LABEL_6:
    v23 = 0;
LABEL_9:
    type metadata accessor for AccountModel();
    sub_1BD79EE14(&qword_1EBD3AE50, type metadata accessor for AccountModel);
    v31 = sub_1BE04E954();
    v32 = v25;
    v33 = sub_1BD7A0580;
    v34 = v20;
    v35 = v23;
    goto LABEL_10;
  }

  sub_1BD7A0048(v3, v10);
  v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v17 = swift_allocObject();
  sub_1BD7A16C8(v10, v17 + v16, type metadata accessor for CurrencyAmountPickerView);
  v31 = sub_1BD7A0568;
  v32 = v17;
  v33 = 0;
  v34 = 0;
  v35 = 256;
LABEL_10:
  sub_1BD5A3BE4();
  sub_1BD47BCBC();
  sub_1BE04F9A4();
  result = *&v36;
  v27 = v37;
  v28 = v38;
  v29 = v39;
  *a2 = v36;
  *(a2 + 16) = v27;
  *(a2 + 32) = v28;
  *(a2 + 33) = v29;
  return result;
}

id sub_1BD798330()
{
  v0 = sub_1BE04BD74();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v13 - v7;
  type metadata accessor for CurrencyAmountPickerView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if (v14 && (v14 >> 62 ? (v9 = sub_1BE053704()) : (v9 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v9 == 1))
  {
    (*(v1 + 104))(v8, *MEMORY[0x1E69B80E0], v0);
    result = PKPassKitBundle();
    if (result)
    {
      v11 = result;
      v12 = sub_1BE04B6F4();
LABEL_9:

      (*(v1 + 8))(v8, v0);
      return v12;
    }
  }

  else
  {
    (*(v1 + 104))(v4, *MEMORY[0x1E69B80E0], v0);
    result = PKPassKitBundle();
    if (result)
    {
      v11 = result;
      v12 = sub_1BE04B6F4();
      v8 = v4;
      goto LABEL_9;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1BD7985A8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v78 = a2;
  v3 = type metadata accessor for CurrencyAmountPickerView(0);
  v81 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v88 = v5;
  v89 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE04BD74();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v79 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v80 = &v73 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v73 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80);
  v73 = *(v17 - 8);
  v74 = v17;
  MEMORY[0x1EEE9AC00](v17, v18);
  v77 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v76 = &v73 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v84 = &v73 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v75 = &v73 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v85 = &v73 - v31;
  v34 = MEMORY[0x1EEE9AC00](v32, v33);
  v36 = &v73 - v35;
  v37 = *(v7 + 104);
  v87 = *MEMORY[0x1E69B80E0];
  v86 = v37;
  v37(v16, v34);
  result = PKPassKitBundle();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v39 = result;
  v40 = sub_1BE04B6F4();
  v42 = v41;

  v43 = *(v7 + 8);
  v82 = v7 + 8;
  v44 = v43;
  v43(v16, v6);
  v90 = v40;
  v91 = v42;
  v83 = a1;
  v45 = v89;
  sub_1BD7A0048(a1, v89);
  v46 = (v81[80] + 16) & ~v81[80];
  v47 = swift_allocObject();
  sub_1BD7A16C8(v45, v47 + v46, type metadata accessor for CurrencyAmountPickerView);
  sub_1BD0DDEBC();
  v81 = v36;
  sub_1BE051744();
  v48 = v80;
  v86(v80, v87, v6);
  result = PKPassKitBundle();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v49 = result;
  v50 = sub_1BE04B6F4();
  v52 = v51;

  v44(v48, v6);
  v90 = v50;
  v91 = v52;
  v53 = v89;
  sub_1BD7A0048(v83, v89);
  v54 = swift_allocObject();
  sub_1BD7A16C8(v53, v54 + v46, type metadata accessor for CurrencyAmountPickerView);
  sub_1BE051744();
  v55 = v79;
  v86(v79, v87, v6);
  result = PKPassKitBundle();
  if (result)
  {
    v56 = result;
    v57 = sub_1BE04B6F4();
    v59 = v58;

    v44(v55, v6);
    v90 = v57;
    v91 = v59;
    v60 = v89;
    sub_1BD7A0048(v83, v89);
    v61 = swift_allocObject();
    sub_1BD7A16C8(v60, v61 + v46, type metadata accessor for CurrencyAmountPickerView);
    v62 = v75;
    sub_1BE051744();
    v63 = v73;
    v64 = v74;
    v65 = *(v73 + 16);
    v66 = v84;
    v65(v84, v81, v74);
    v67 = v76;
    v68 = v85;
    v65(v76, v85, v64);
    v69 = v77;
    v65(v77, v62, v64);
    v70 = v78;
    v65(v78, v66, v64);
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52CC0);
    v65(&v70[*(v71 + 48)], v67, v64);
    v65(&v70[*(v71 + 64)], v69, v64);
    v72 = *(v63 + 8);
    v72(v62, v64);
    v72(v68, v64);
    v72(v81, v64);
    v72(v69, v64);
    v72(v67, v64);
    return (v72)(v84, v64);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1BD798CEC()
{
  type metadata accessor for CurrencyAmountPickerView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516B4();
  [objc_opt_self() deviceSupportsBusinessChat];
  return sub_1BE0516B4();
}

uint64_t sub_1BD798DC0()
{
  type metadata accessor for CurrencyAmountPickerView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516B4();
  return sub_1BD798E3C(0);
}

uint64_t sub_1BD798E3C(int a1)
{
  v11 = a1;
  v12 = sub_1BE04D214();
  v1 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CurrencyAmountPickerView(0);
  type metadata accessor for TransferActionSheetObserver(0);
  sub_1BD79EE14(&qword_1EBD52B28, type metadata accessor for TransferActionSheetObserver);
  sub_1BE04E3C4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if (v14 == 2)
  {
    sub_1BE04E3C4();
    v5 = v11 & 1;
    swift_getKeyPath();
    swift_getKeyPath();
    v13 = v5;
    return sub_1BE04D8C4();
  }

  else
  {
    sub_1BE04D1E4();
    v7 = sub_1BE04D204();
    v8 = sub_1BE052C34();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1BD026000, v7, v8, "Transfer action sheet already set, ignoring", v9, 2u);
      MEMORY[0x1BFB45F20](v9, -1, -1);
    }

    return (*(v1 + 8))(v4, v12);
  }
}

uint64_t sub_1BD7990B8@<X0>(uint64_t a1@<X8>)
{
  sub_1BD799114();
  sub_1BD0DDEBC();
  result = sub_1BE0506C4();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

id sub_1BD799114()
{
  v0 = sub_1BE04BD74();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v29 - v7;
  type metadata accessor for CurrencyAmountPickerView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if (!v30 || (v30 >> 62 ? (v9 = sub_1BE053704()) : (v9 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10)), (, v9 != 1) || (swift_getKeyPath(), swift_getKeyPath(), sub_1BE04D8B4(), , , (v10 = v30) == 0)))
  {
LABEL_21:
    (*(v1 + 104))(v4, *MEMORY[0x1E69B80E0], v0);
    result = PKPassKitBundle();
    if (result)
    {
      v13 = result;
      v28 = sub_1BE04B6F4();
      v8 = v4;
      goto LABEL_23;
    }

    goto LABEL_26;
  }

  if (!(v30 >> 62))
  {
    result = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

  result = sub_1BE053704();
  if (!result)
  {
LABEL_20:

    goto LABEL_21;
  }

LABEL_8:
  if ((v10 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x1BFB40900](0, v10);
  }

  else
  {
    if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v12 = *(v10 + 32);
  }

  v13 = v12;

  v14 = [v13 fundingDetails];
  if (!v14)
  {

    goto LABEL_21;
  }

  v15 = v14;
  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (!v16)
  {

    goto LABEL_21;
  }

  v17 = v16;
  (*(v1 + 104))(v8, *MEMORY[0x1E69B80E0], v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1BE0B6CA0;
  result = [v17 name];
  if (!result)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v19 = result;
  v20 = sub_1BE052434();
  v22 = v21;

  *(v18 + 56) = MEMORY[0x1E69E6158];
  v23 = sub_1BD110550();
  *(v18 + 64) = v23;
  *(v18 + 32) = v20;
  *(v18 + 40) = v22;
  result = [v13 accountSuffix];
  if (result)
  {
    v24 = result;
    v29 = "AVAILABLE_MESSAGE";
    v25 = sub_1BE052434();
    v27 = v26;

    *(v18 + 96) = MEMORY[0x1E69E6158];
    *(v18 + 104) = v23;
    *(v18 + 72) = v25;
    *(v18 + 80) = v27;
    v28 = sub_1BE04B714();

LABEL_23:

    (*(v1 + 8))(v8, v0);
    return v28;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1BD799558@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52CD8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v26 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52CE0);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v26 - v20;
  *v21 = sub_1BE04F7B4();
  *(v21 + 1) = 0;
  v21[16] = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52CE8);
  sub_1BD7997A0(a1, a2, &v21[*(v22 + 44)]);
  *v13 = sub_1BE0501B4();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52CF0);
  sub_1BD79BDB0(a1, &v13[*(v23 + 44)]);
  sub_1BD0DE19C(v21, v17, &qword_1EBD52CE0);
  sub_1BD0DE19C(v13, v9, &qword_1EBD52CD8);
  sub_1BD0DE19C(v17, a3, &qword_1EBD52CE0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52CF8);
  sub_1BD0DE19C(v9, a3 + *(v24 + 48), &qword_1EBD52CD8);
  sub_1BD0DE53C(v13, &qword_1EBD52CD8);
  sub_1BD0DE53C(v21, &qword_1EBD52CE0);
  sub_1BD0DE53C(v9, &qword_1EBD52CD8);
  return sub_1BD0DE53C(v17, &qword_1EBD52CE0);
}

uint64_t sub_1BD7997A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v64 = a3;
  v65 = a2;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52D78);
  v62 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60, v4);
  v59 = &v50 - v5;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52D80) - 8;
  MEMORY[0x1EEE9AC00](v61, v6);
  v63 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v58 = &v50 - v10;
  v11 = type metadata accessor for CurrencyAmountPickerView(0);
  v12 = v11 - 8;
  v13 = *(v11 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11, v15);
  v55 = v14;
  v16 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52D88);
  v17 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56, v18);
  v20 = &v50 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52D90);
  v22 = v21 - 8;
  MEMORY[0x1EEE9AC00](v21, v23);
  v57 = &v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v51 = &v50 - v27;
  v50 = a1;
  sub_1BD7A0048(a1, v16);
  v28 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v29 = swift_allocObject();
  v54 = type metadata accessor for CurrencyAmountPickerView;
  sub_1BD7A16C8(v16, v29 + v28, type metadata accessor for CurrencyAmountPickerView);
  v68 = a1;
  v69 = v65;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52D98);
  sub_1BD7A0960();
  sub_1BE051704();
  v70 = 1;
  v53 = MEMORY[0x1E697D680];
  sub_1BD0DE4F4(&qword_1EBD52DB8, &qword_1EBD52D88);
  v52 = sub_1BD7A0A8C();
  v30 = v51;
  v31 = v56;
  sub_1BE0508A4();
  (*(v17 + 8))(v20, v31);
  v32 = *(v12 + 40);
  v33 = v50;
  v34 = *(v50 + v32);
  KeyPath = swift_getKeyPath();
  v36 = swift_allocObject();
  *(v36 + 16) = v34 == 3;
  v37 = (v30 + *(v22 + 44));
  *v37 = KeyPath;
  v37[1] = sub_1BD185ABC;
  v37[2] = v36;
  sub_1BD7A0048(v33, v16);
  v38 = swift_allocObject();
  sub_1BD7A16C8(v16, v38 + v28, v54);
  v66 = v33;
  v67 = v65;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52DC8);
  sub_1BD7A0B00();
  v39 = v59;
  sub_1BE051704();
  v70 = 256;
  sub_1BD0DE4F4(&qword_1EBD52DE8, &qword_1EBD52D78);
  v40 = v58;
  v41 = v60;
  sub_1BE0508A4();
  (*(v62 + 8))(v39, v41);
  v42 = swift_getKeyPath();
  v43 = swift_allocObject();
  *(v43 + 16) = v34 == 2;
  v44 = (v40 + *(v61 + 44));
  *v44 = v42;
  v44[1] = sub_1BD185ABC;
  v44[2] = v43;
  v45 = v57;
  sub_1BD0DE19C(v30, v57, &qword_1EBD52D90);
  v46 = v63;
  sub_1BD0DE19C(v40, v63, &qword_1EBD52D80);
  v47 = v64;
  sub_1BD0DE19C(v45, v64, &qword_1EBD52D90);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52DF0);
  sub_1BD0DE19C(v46, v47 + *(v48 + 48), &qword_1EBD52D80);
  sub_1BD0DE53C(v40, &qword_1EBD52D80);
  sub_1BD0DE53C(v30, &qword_1EBD52D90);
  sub_1BD0DE53C(v46, &qword_1EBD52D80);
  return sub_1BD0DE53C(v45, &qword_1EBD52D90);
}

void sub_1BD799E58(uint64_t a1)
{
  if (*(a1 + *(type metadata accessor for CurrencyAmountPickerView(0) + 32)) == 2)
  {
    sub_1BD799E98(1);
  }
}

void sub_1BD799E98(char a1)
{
  v3 = type metadata accessor for CurrencyAmountPickerView(0);
  v4 = *(v1 + v3[6] + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if ((v8 & 1) != 0 || (swift_getKeyPath(), swift_getKeyPath(), sub_1BE04D8B4(), , , v7 != 1))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    v5 = *(v4 + OBJC_IVAR____TtC9PassKitUI19FundingSourcesModel_account);
    *(v4 + OBJC_IVAR____TtC9PassKitUI19FundingSourcesModel_account) = v6;

    (*((*MEMORY[0x1E69E7D40] & *v4) + 0x1C8))();
  }

  else if (sub_1BD796AD0())
  {
    if (*(v1 + v3[14]))
    {
      sub_1BD796F50(a1 & 1);
    }

    else
    {
      (*(v1 + v3[12]))();
    }
  }
}

uint64_t sub_1BD79A074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21[1] = a3;
  v21[0] = sub_1BE04FF64();
  v5 = *(v21[0] - 8);
  MEMORY[0x1EEE9AC00](v21[0], v6);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52DA8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v21 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52E50);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = v21 - v16;
  *v12 = sub_1BE04F504();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52E58);
  sub_1BD79A340(a1, a2, &v12[*(v18 + 44)]);
  sub_1BE04FF44();
  v19 = sub_1BD0DE4F4(&qword_1EBD52DB0, &qword_1EBD52DA8);
  sub_1BE050D14();
  (*(v5 + 8))(v8, v21[0]);
  sub_1BD0DE53C(v12, &qword_1EBD52DA8);
  sub_1BE052434();
  v21[2] = v9;
  v21[3] = v19;
  swift_getOpaqueTypeConformance2();
  sub_1BE050DE4();

  return (*(v14 + 8))(v17, v13);
}

id sub_1BD79A340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v69 = a2;
  v75 = a3;
  v65 = sub_1BE04C744();
  v64 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65, v4);
  v63 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_1BE04C734();
  v72 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73, v6);
  v62 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52E08);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v74 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v62 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52E60);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v70 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v68 = &v62 - v20;
  v21 = sub_1BE04BD74();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0);
  MEMORY[0x1EEE9AC00](v26 - 8, v27);
  v71 = &v62 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v62 - v31;
  v33 = a1;
  v34 = *(a1 + *(type metadata accessor for CurrencyAmountPickerView(0) + 32));
  (*(v22 + 104))(v25, *MEMORY[0x1E69B80E0], v21);
  result = PKPassKitBundle();
  if (result)
  {
    v36 = result;
    v67 = v34;
    v37 = sub_1BE04B6F4();
    v39 = v38;

    (*(v22 + 8))(v25, v21);
    *&v85 = v37;
    *(&v85 + 1) = v39;
    sub_1BD0DDEBC();
    v40 = sub_1BE0506C4();
    v42 = v41;
    *&v85 = v40;
    *(&v85 + 1) = v41;
    v44 = v43 & 1;
    LOBYTE(v86) = v43 & 1;
    *(&v86 + 1) = v45;
    sub_1BE052434();
    v76 = v32;
    sub_1BE050DE4();

    sub_1BD0DDF10(v40, v42, v44);

    sub_1BD79AB74(v33, v69, &v85);
    LOBYTE(v42) = v87;
    v46 = BYTE1(v87);
    v69 = v85;
    v66 = v86;
    KeyPath = swift_getKeyPath();
    v83 = v46;
    v82 = 0;
    v48 = sub_1BE051494();
    v49 = swift_getKeyPath();
    v78 = v66;
    v77 = v69;
    LOBYTE(v79) = v42;
    BYTE1(v79) = v83;
    *(&v79 + 1) = KeyPath;
    *&v80 = 1;
    BYTE8(v80) = v82;
    *(&v80 + 9) = *v84;
    HIDWORD(v80) = *&v84[3];
    *&v81 = v49;
    *(&v81 + 1) = v48;
    sub_1BE052434();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52E68);
    sub_1BD7A0DC8();
    v50 = v68;
    sub_1BE050DE4();

    v87 = v79;
    v88 = v80;
    v89 = v81;
    v85 = v77;
    v86 = v78;
    sub_1BD0DE53C(&v85, &qword_1EBD52E68);
    v51 = 1;
    v52 = v73;
    v53 = v72;
    if (v67 == 2)
    {
      (*(v64 + 104))(v63, *MEMORY[0x1E69BC950], v65);
      v54 = v62;
      sub_1BE04C724();
      (*(v53 + 32))(v14, v54, v52);
      v51 = 0;
    }

    (*(v53 + 56))(v14, v51, 1, v52);
    v55 = v71;
    sub_1BD0DE19C(v76, v71, &qword_1EBD452C0);
    v56 = v50;
    v57 = v70;
    sub_1BD0DE19C(v50, v70, &qword_1EBD52E60);
    v58 = v74;
    sub_1BD0DE19C(v14, v74, &qword_1EBD52E08);
    v59 = v75;
    sub_1BD0DE19C(v55, v75, &qword_1EBD452C0);
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52EA8);
    v61 = v59 + v60[12];
    *v61 = 0;
    *(v61 + 8) = 1;
    sub_1BD0DE19C(v57, v59 + v60[16], &qword_1EBD52E60);
    sub_1BD0DE19C(v58, v59 + v60[20], &qword_1EBD52E08);
    sub_1BD0DE53C(v14, &qword_1EBD52E08);
    sub_1BD0DE53C(v56, &qword_1EBD52E60);
    sub_1BD0DE53C(v76, &qword_1EBD452C0);
    sub_1BD0DE53C(v58, &qword_1EBD52E08);
    sub_1BD0DE53C(v57, &qword_1EBD52E60);
    return sub_1BD0DE53C(v55, &qword_1EBD452C0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD79AB74@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1BE04BD74();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v41 - v13;
  if (*(a1 + *(type metadata accessor for CurrencyAmountPickerView(0) + 32)) == 2)
  {
    if (![a2 accountPaymentUsePeerPaymentBalance])
    {
      v30 = [a2 defaultBankAccount];
      v31 = [v30 bankName];

      if (v31)
      {
        v32 = sub_1BE052434();
        v34 = v33;
      }

      else
      {
        v32 = 0;
        v34 = 0xE000000000000000;
      }

      *&v44 = v32;
      *(&v44 + 1) = v34;
      sub_1BD0DDEBC();
      *&v41 = sub_1BE0506C4();
      *(&v41 + 1) = v36;
      *&v42 = v35 & 1;
      *(&v42 + 1) = v37;
      LOBYTE(v43) = 1;
      goto LABEL_11;
    }

    (*(v7 + 104))(v14, *MEMORY[0x1E69B80E0], v6);
    result = PKPassKitBundle();
    if (result)
    {
      v16 = result;
      v17 = sub_1BE04B6F4();
      v19 = v18;

      (*(v7 + 8))(v14, v6);
      *&v44 = v17;
      *(&v44 + 1) = v19;
      sub_1BD0DDEBC();
      *&v41 = sub_1BE0506C4();
      *(&v41 + 1) = v20;
      *&v42 = v21 & 1;
      *(&v42 + 1) = v22;
      LOBYTE(v43) = 0;
LABEL_11:
      sub_1BE04F9A4();
      v41 = v44;
      v42 = v45;
      v43 = v46;
      goto LABEL_12;
    }
  }

  else
  {
    (*(v7 + 104))(v10, *MEMORY[0x1E69B80E0], v6);
    result = PKPassKitBundle();
    if (result)
    {
      v23 = result;
      v24 = sub_1BE04B6F4();
      v26 = v25;

      (*(v7 + 8))(v10, v6);
      *&v44 = v24;
      *(&v44 + 1) = v26;
      sub_1BD0DDEBC();
      *&v41 = sub_1BE0506C4();
      *(&v41 + 1) = v28;
      *&v42 = v27 & 1;
      *(&v42 + 1) = v29;
      v43 = 256;
LABEL_12:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ABA8);
      sub_1BD170E70();
      result = sub_1BE04F9A4();
      v38 = v45;
      v39 = v46;
      v40 = v47;
      *a3 = v44;
      *(a3 + 16) = v38;
      *(a3 + 32) = v39;
      *(a3 + 33) = v40;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1BD79AF14(uint64_t a1)
{
  if (*(a1 + *(type metadata accessor for CurrencyAmountPickerView(0) + 32)) == 3)
  {
    sub_1BD799E98(1);
  }
}

uint64_t sub_1BD79AF54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21[1] = a3;
  v21[0] = sub_1BE04FF64();
  v5 = *(v21[0] - 8);
  MEMORY[0x1EEE9AC00](v21[0], v6);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52DD8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v21 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52DF8);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = v21 - v16;
  *v12 = sub_1BE04F504();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52E00);
  sub_1BD79B220(a1, a2, &v12[*(v18 + 44)]);
  sub_1BE04FF44();
  v19 = sub_1BD0DE4F4(&qword_1EBD52DE0, &qword_1EBD52DD8);
  sub_1BE050D14();
  (*(v5 + 8))(v8, v21[0]);
  sub_1BD0DE53C(v12, &qword_1EBD52DD8);
  sub_1BE052434();
  v21[2] = v9;
  v21[3] = v19;
  swift_getOpaqueTypeConformance2();
  sub_1BE050DE4();

  return (*(v14 + 8))(v17, v13);
}

id sub_1BD79B220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v72 = a2;
  v78 = a3;
  v69 = sub_1BE04C744();
  v68 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69, v4);
  v67 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_1BE04C734();
  v74 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75, v6);
  v66 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52E08);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v77 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v66 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52E10);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v76 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v66 - v20;
  v22 = sub_1BE04BD74();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = &v66 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0);
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v73 = &v66 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v30, v31);
  v34 = &v66 - v33;
  (*(v23 + 104))(v26, *MEMORY[0x1E69B80E0], v22, v32);
  result = PKPassKitBundle();
  if (result)
  {
    v36 = result;
    v37 = sub_1BE04B6F4();
    v39 = v38;

    (*(v23 + 8))(v26, v22);
    *&v87 = v37;
    *(&v87 + 1) = v39;
    sub_1BD0DDEBC();
    v40 = sub_1BE0506C4();
    v42 = v41;
    *&v87 = v40;
    *(&v87 + 1) = v41;
    v44 = v43 & 1;
    LOBYTE(v88) = v43 & 1;
    *(&v88 + 1) = v45;
    sub_1BE052434();
    v71 = v34;
    sub_1BE050DE4();

    sub_1BD0DDF10(v40, v42, v44);

    sub_1BD79BA10(a1, v72, &v87);
    LOBYTE(v42) = v89;
    v46 = BYTE1(v89);
    v72 = v87;
    v70 = v88;
    KeyPath = swift_getKeyPath();
    v85 = v46;
    v84 = 0;
    v48 = sub_1BE051494();
    v49 = swift_getKeyPath();
    v80 = v70;
    v79 = v72;
    LOBYTE(v81) = v42;
    BYTE1(v81) = v85;
    *(&v81 + 1) = KeyPath;
    *&v82 = 1;
    BYTE8(v82) = v84;
    *(&v82 + 9) = *v86;
    HIDWORD(v82) = *&v86[3];
    *&v83 = v49;
    *(&v83 + 1) = v48;
    sub_1BE052434();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52E18);
    sub_1BD7A0C2C();
    sub_1BE050DE4();

    v89 = v81;
    v90 = v82;
    v91 = v83;
    v87 = v79;
    v88 = v80;
    sub_1BD0DE53C(&v87, &qword_1EBD52E18);
    v50 = type metadata accessor for CurrencyAmountPickerView(0);
    v51 = 1;
    v52 = v75;
    v53 = v74;
    if (*(a1 + *(v50 + 32)) == 3)
    {
      (*(v68 + 104))(v67, *MEMORY[0x1E69BC950], v69);
      v54 = v66;
      sub_1BE04C724();
      (*(v53 + 32))(v14, v54, v52);
      v51 = 0;
    }

    (*(v53 + 56))(v14, v51, 1, v52);
    v55 = v71;
    v56 = v73;
    sub_1BD0DE19C(v71, v73, &qword_1EBD452C0);
    v57 = v21;
    v58 = v21;
    v59 = v76;
    sub_1BD0DE19C(v58, v76, &qword_1EBD52E10);
    v60 = v77;
    sub_1BD0DE19C(v14, v77, &qword_1EBD52E08);
    v61 = v14;
    v62 = v59;
    v63 = v78;
    sub_1BD0DE19C(v56, v78, &qword_1EBD452C0);
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52E48);
    v65 = v63 + v64[12];
    *v65 = 0;
    *(v65 + 8) = 1;
    sub_1BD0DE19C(v62, v63 + v64[16], &qword_1EBD52E10);
    sub_1BD0DE19C(v60, v63 + v64[20], &qword_1EBD52E08);
    sub_1BD0DE53C(v61, &qword_1EBD52E08);
    sub_1BD0DE53C(v57, &qword_1EBD52E10);
    sub_1BD0DE53C(v55, &qword_1EBD452C0);
    sub_1BD0DE53C(v60, &qword_1EBD52E08);
    sub_1BD0DE53C(v62, &qword_1EBD52E10);
    return sub_1BD0DE53C(v56, &qword_1EBD452C0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD79BA10@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1BE04BD74();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v41 - v13;
  if (*(a1 + *(type metadata accessor for CurrencyAmountPickerView(0) + 32)) != 2)
  {
    if ([a2 accountPaymentUsePeerPaymentBalance])
    {
      (*(v7 + 104))(v10, *MEMORY[0x1E69B80E0], v6);
      result = PKPassKitBundle();
      if (!result)
      {
        goto LABEL_14;
      }

      v23 = result;
      v24 = sub_1BE04B6F4();
      v26 = v25;

      (*(v7 + 8))(v10, v6);
      *&v44 = v24;
      *(&v44 + 1) = v26;
      sub_1BD0DDEBC();
      *&v41 = sub_1BE0506C4();
      *(&v41 + 1) = v27;
      *&v42 = v28 & 1;
      *(&v42 + 1) = v29;
      LOBYTE(v43) = 0;
    }

    else
    {
      v30 = [a2 defaultBankAccount];
      v31 = [v30 bankName];

      if (v31)
      {
        v32 = sub_1BE052434();
        v34 = v33;
      }

      else
      {
        v32 = 0;
        v34 = 0xE000000000000000;
      }

      *&v44 = v32;
      *(&v44 + 1) = v34;
      sub_1BD0DDEBC();
      *&v41 = sub_1BE0506C4();
      *(&v41 + 1) = v36;
      *&v42 = v35 & 1;
      *(&v42 + 1) = v37;
      LOBYTE(v43) = 1;
    }

    sub_1BE04F9A4();
    v41 = v44;
    v42 = v45;
    LOBYTE(v43) = v46;
    HIBYTE(v43) = 1;
    goto LABEL_12;
  }

  (*(v7 + 104))(v14, *MEMORY[0x1E69B80E0], v6);
  result = PKPassKitBundle();
  if (result)
  {
    v16 = result;
    v17 = sub_1BE04B6F4();
    v19 = v18;

    (*(v7 + 8))(v14, v6);
    *&v44 = v17;
    *(&v44 + 1) = v19;
    sub_1BD0DDEBC();
    *&v41 = sub_1BE0506C4();
    *(&v41 + 1) = v20;
    *&v42 = v21 & 1;
    *(&v42 + 1) = v22;
    v43 = 0;
LABEL_12:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ABA8);
    sub_1BD170E70();
    result = sub_1BE04F9A4();
    v38 = v45;
    v39 = v46;
    v40 = v47;
    *a3 = v44;
    *(a3 + 16) = v38;
    *(a3 + 32) = v39;
    *(a3 + 33) = v40;
    return result;
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_1BD79BDB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52D00);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v50 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v48 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52D08);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v48 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52D10);
  v16 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v48 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52D18);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v48 - v26;
  *v14 = sub_1BE04F7C4();
  *(v14 + 1) = 0x4028000000000000;
  v14[16] = 0;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52D20);
  sub_1BD79C458(&v14[*(v28 + 44)]);
  sub_1BE051CD4();
  sub_1BE04EE54();
  sub_1BD0DE204(v14, v19, &qword_1EBD52D08);
  v29 = &v19[*(v16 + 44)];
  v30 = v58;
  *(v29 + 4) = v57;
  *(v29 + 5) = v30;
  *(v29 + 6) = v59;
  v31 = v54;
  *v29 = v53;
  *(v29 + 1) = v31;
  v32 = v56;
  *(v29 + 2) = v55;
  *(v29 + 3) = v32;
  LOBYTE(v14) = sub_1BE0501C4();
  sub_1BE04E1F4();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  sub_1BD0DE204(v19, v27, &qword_1EBD52D10);
  v41 = &v27[*(v20 + 36)];
  v49 = v27;
  *v41 = v14;
  *(v41 + 1) = v34;
  *(v41 + 2) = v36;
  *(v41 + 3) = v38;
  *(v41 + 4) = v40;
  v41[40] = 0;
  v52 = a1;
  sub_1BE0501B4();
  sub_1BD7A06E4();
  sub_1BE04E304();
  sub_1BD0DE19C(v27, v23, &qword_1EBD52D18);
  v42 = *(v4 + 16);
  v43 = v50;
  v42(v50, v10, v3);
  v44 = v51;
  sub_1BD0DE19C(v23, v51, &qword_1EBD52D18);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52D40);
  v42((v44 + *(v45 + 48)), v43, v3);
  v46 = *(v4 + 8);
  v46(v10, v3);
  sub_1BD0DE53C(v49, &qword_1EBD52D18);
  v46(v43, v3);
  return sub_1BD0DE53C(v23, &qword_1EBD52D18);
}

uint64_t sub_1BD79C234@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52D08);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52D10);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v27 - v9;
  *v5 = sub_1BE04F7C4();
  *(v5 + 1) = 0x4028000000000000;
  v5[16] = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52D20);
  sub_1BD79C458(&v5[*(v11 + 44)]);
  sub_1BE051CD4();
  sub_1BE04EE54();
  sub_1BD0DE204(v5, v10, &qword_1EBD52D08);
  v12 = &v10[*(v7 + 44)];
  v13 = v27[5];
  *(v12 + 4) = v27[4];
  *(v12 + 5) = v13;
  *(v12 + 6) = v27[6];
  v14 = v27[1];
  *v12 = v27[0];
  *(v12 + 1) = v14;
  v15 = v27[3];
  *(v12 + 2) = v27[2];
  *(v12 + 3) = v15;
  v16 = sub_1BE0501C4();
  sub_1BE04E1F4();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  sub_1BD0DE204(v10, a1, &qword_1EBD52D10);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52D18);
  v26 = a1 + *(result + 36);
  *v26 = v16;
  *(v26 + 8) = v18;
  *(v26 + 16) = v20;
  *(v26 + 24) = v22;
  *(v26 + 32) = v24;
  *(v26 + 40) = 0;
  return result;
}

uint64_t sub_1BD79C458@<X0>(uint64_t a1@<X8>)
{
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C1D0);
  MEMORY[0x1EEE9AC00](v60, v2);
  v4 = &v56 - v3;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52D48);
  v63 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64, v5);
  v62 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v61 = &v56 - v9;
  v10 = PKSavingsFDICSignageEnabled();
  v65 = v4;
  if (v10)
  {
    v11 = sub_1BE0501E4();
    sub_1BE04E1F4();
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    LOBYTE(v71[0]) = 0;
    v59 = v11;
    v57 = 0x1000000;
    v56 = 1;
    v58 = 5;
  }

  else
  {
    v58 = 0;
    v59 = 0;
    v57 = 0;
    v13 = 0;
    v56 = 2;
    v15 = 0;
    v17 = 0;
    v19 = 0;
  }

  *&v71[0] = sub_1BD79CA1C();
  *(&v71[0] + 1) = v20;
  sub_1BD0DDEBC();
  v21 = sub_1BE0506C4();
  v23 = v22;
  v25 = v24;
  sub_1BE050454();
  v26 = sub_1BE0505F4();
  v28 = v27;
  v30 = v29;

  sub_1BD0DDF10(v21, v23, v25 & 1);

  sub_1BE051494();
  v31 = sub_1BE050564();
  v33 = v32;
  v35 = v34;
  v37 = v36;

  sub_1BD0DDF10(v26, v28, v30 & 1);

  KeyPath = swift_getKeyPath();
  v39 = sub_1BE0501E4();
  sub_1BE04E1F4();
  LOBYTE(v71[0]) = v35 & 1;
  *&v66 = v31;
  *(&v66 + 1) = v33;
  LOBYTE(v67) = v35 & 1;
  *(&v67 + 1) = v37;
  *&v68 = KeyPath;
  *(&v68 + 1) = 0xC014000000000000;
  LOBYTE(v69) = v39;
  *(&v69 + 1) = v40;
  *v70 = v41;
  *&v70[8] = v42;
  *&v70[16] = v43;
  v70[24] = 0;
  *&v70[25] = 256;
  v44 = *MEMORY[0x1E697E6D0];
  v45 = sub_1BE04EB24();
  v46 = v65;
  (*(*(v45 - 8) + 104))(v65, v44, v45);
  sub_1BD79EE14(&qword_1EBD3C218, MEMORY[0x1E697E730]);
  result = sub_1BE052334();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52D50);
    sub_1BD7A0828();
    sub_1BD0DE4F4(&qword_1EBD3C220, &qword_1EBD3C1D0);
    v48 = v61;
    sub_1BE050B34();
    sub_1BD0DE53C(v46, &qword_1EBD3C1D0);
    v71[2] = v68;
    v71[3] = v69;
    *v72 = *v70;
    *&v72[11] = *&v70[11];
    v71[0] = v66;
    v71[1] = v67;
    sub_1BD0DE53C(v71, &qword_1EBD52D50);
    v49 = v57 | v56;
    v50 = v63;
    v51 = *(v63 + 16);
    v52 = v62;
    v53 = v64;
    v51(v62, v48, v64);
    *a1 = v58;
    *(a1 + 8) = v49;
    *(a1 + 16) = v59;
    *(a1 + 24) = v13;
    *(a1 + 32) = v15;
    *(a1 + 40) = v17;
    *(a1 + 48) = v19;
    *(a1 + 56) = 0;
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52D70);
    v51((a1 + *(v54 + 48)), v52, v53);
    v55 = *(v50 + 8);
    v55(v48, v53);
    return (v55)(v52, v53);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD79CA1C()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v26 - v8;
  v10 = type metadata accessor for CurrencyAmountPickerView(0);
  v11 = *(v0 + *(v10 + 32));
  v12 = *(v0 + *(v10 + 60));
  if (v11 == 2)
  {
    if (!v12)
    {
      goto LABEL_6;
    }
  }

  else if (!v12)
  {
    goto LABEL_6;
  }

  [v12 accountPaymentUsePeerPaymentBalance];
LABEL_6:
  v27 = v5;
  v13 = *MEMORY[0x1E69B80E0];
  v14 = *(v2 + 104);
  v14(v9, v13, v1);
  result = PKPassKitBundle();
  if (result)
  {
    v16 = result;
    v17 = sub_1BE04B6F4();
    v19 = v18;

    v20 = *(v2 + 8);
    v20(v9, v1);
    v28 = v17;
    v29 = v19;
    if (!PKSavingsFDICSignageEnabled())
    {
      return v17;
    }

    MEMORY[0x1BFB3F610](2570, 0xE200000000000000);
    v21 = v27;
    v14(v27, v13, v1);
    result = PKPassKitBundle();
    if (result)
    {
      v22 = result;
      v23 = sub_1BE04B6F4();
      v25 = v24;

      v20(v21, v1);
      MEMORY[0x1BFB3F610](v23, v25);

      return v28;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD79CCDC@<X0>(uint64_t a1@<X8>)
{
  v30[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C1D0);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = v30 - v3;
  v5 = sub_1BE04BD74();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v10, *MEMORY[0x1E69B80E0], v5, v8);
  result = PKPassKitBundle();
  if (result)
  {
    v12 = result;
    v13 = sub_1BE04B6F4();
    v15 = v14;

    (*(v6 + 8))(v10, v5);
    *&v36[0] = v13;
    *(&v36[0] + 1) = v15;
    sub_1BD0DDEBC();
    v16 = sub_1BE0506C4();
    v18 = v17;
    LOBYTE(v12) = v19;
    v21 = v20;
    KeyPath = swift_getKeyPath();
    v23 = sub_1BE051494();
    v24 = swift_getKeyPath();
    v25 = v12 & 1;
    v37 = v12 & 1;
    v26 = sub_1BE050454();
    v27 = swift_getKeyPath();
    *&v31 = v16;
    *(&v31 + 1) = v18;
    LOBYTE(v32) = v25;
    *(&v32 + 1) = v21;
    *&v33 = KeyPath;
    BYTE8(v33) = 1;
    *&v34 = v24;
    *(&v34 + 1) = v23;
    *&v35 = v27;
    *(&v35 + 1) = v26;
    v28 = *MEMORY[0x1E697E6D0];
    v29 = sub_1BE04EB24();
    (*(*(v29 - 8) + 104))(v4, v28, v29);
    sub_1BD79EE14(&qword_1EBD3C218, MEMORY[0x1E697E730]);
    result = sub_1BE052334();
    if (result)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52EC0);
      sub_1BD7A106C();
      sub_1BD0DE4F4(&qword_1EBD3C220, &qword_1EBD3C1D0);
      sub_1BE050B34();
      sub_1BD0DE53C(v4, &qword_1EBD3C1D0);
      v36[2] = v33;
      v36[3] = v34;
      v36[4] = v35;
      v36[0] = v31;
      v36[1] = v32;
      return sub_1BD0DE53C(v36, &qword_1EBD52EC0);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1BD79D064(void *a1, uint64_t a2, char a3)
{
  v6 = type metadata accessor for CurrencyAmountPickerView(0);
  v7 = *(v6 - 1);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v10 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11, v12);
  v16 = &v64 - v15;
  v17 = *(a2 + *(v13 + 60));
  if (a3)
  {
    if (v17)
    {
      [*(a2 + *(v13 + 60)) setInitialAction_];
    }
  }

  if (a1)
  {
    v18 = [a1 view];
    if (!v18)
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    v19 = v18;
    v20 = [v18 window];

    if (v20)
    {
      v21 = *(a2 + v6[7]);
      v69 = *(a2 + v6[5] + 8);
      v70 = v21;
      sub_1BD7A0048(a2, v16);
      v22 = (*(v7 + 80) + 16) & ~*(v7 + 80);
      v75 = swift_allocObject();
      sub_1BD7A16C8(v16, v75 + v22, type metadata accessor for CurrencyAmountPickerView);
      v23 = (a2 + v6[11]);
      v25 = *v23;
      v24 = v23[1];
      v68 = v25;
      v71 = v24;
      v66 = a2;
      sub_1BD7A0048(a2, v10);
      v76 = swift_allocObject();
      sub_1BD7A16C8(v10, v76 + v22, type metadata accessor for CurrencyAmountPickerView);
      v73 = type metadata accessor for AccountTransferAuthorizationController();
      v26 = objc_allocWithZone(v73);
      v27 = OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_paymentWebService;
      v28 = objc_opt_self();
      v67 = v17;
      v72 = v20;
      v74 = v20;
      v29 = [v28 sharedService];
      v65 = v27;
      *&v26[v27] = v29;
      v30 = OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_scheduleTransferRequest;
      *&v26[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_scheduleTransferRequest] = 0;
      v26[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_authorized] = 0;
      v26[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_presentFraudStepUp] = 0;
      v26[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_hasReceivedTransaction] = 0;
      v26[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_hasReceivedAccountUpdate] = 0;
      *&v26[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_waitingForData] = 0;
      v31 = OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_accountService;
      *&v26[v31] = [objc_opt_self() sharedInstance];
      v32 = OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_dismissalTimer;
      *&v26[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_dismissalTimer] = 3;
      v33 = *MEMORY[0x1E69E7F48];
      v34 = sub_1BE051F44();
      v35 = *(v34 - 8);
      (*(v35 + 104))(&v26[v32], v33, v34);
      *&v26[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_pastUpdateLeeway] = 0x4024000000000000;
      if (v17)
      {
        v36 = v67;
        *&v26[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_paymentRequest] = v67;
        v38 = v69;
        v37 = v70;
        *&v26[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_accountModel] = v69;
        *&v26[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_scheduleTransferModel] = v37;
        v39 = objc_allocWithZone(PKPaymentAuthorizationController);
        v40 = v36;
        v41 = v38;
        sub_1BE048964();
        v42 = [v39 initWithPaymentRequest_];
        *&v26[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_paymentAuthorizationController] = v42;
        v43 = v71;
        *&v26[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_window] = v72;
        v44 = &v26[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_stepUpAction];
        v46 = v75;
        v45 = v76;
        *v44 = sub_1BD7A03C4;
        v44[1] = v46;
        v47 = &v26[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_dismissAction];
        *v47 = v68;
        v47[1] = v43;
        v48 = &v26[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_transferDidFinish];
        *v48 = sub_1BD7A03DC;
        v48[1] = v45;
        swift_getKeyPath();
        swift_getKeyPath();
        v49 = v74;
        sub_1BE048964();
        sub_1BE048964();
        sub_1BE048964();
        sub_1BE04D8B4();

        v50 = v78;
        v51 = [objc_allocWithZone(MEMORY[0x1E69B92F8]) initWithAccount_];

        v52 = [objc_allocWithZone(MEMORY[0x1E69B9300]) initWithTransactionSource_];
        v53 = [objc_allocWithZone(MEMORY[0x1E69B8BD8]) init];
        v54 = [objc_allocWithZone(MEMORY[0x1E69B8788]) initWithTransactionSourceCollection:v52 paymentDataProvider:v53];

        if (v54)
        {
          *&v26[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_transactionFetcher] = v54;
          v80.receiver = v26;
          v80.super_class = v73;
          v55 = objc_msgSendSuper2(&v80, sel_init);
          v56 = OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_paymentAuthorizationController;
          v57 = *&v55[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_paymentAuthorizationController];
          v58 = v55;
          [v57 setDelegate_];
          [*&v55[v56] setPrivateDelegate_];

          [*&v55[v56] presentWithCompletion_];
          v59 = (v66 + v6[29]);
          v60 = v59[1];
          v78 = *v59;
          v61 = v78;
          v79 = v60;
          v77 = v55;
          sub_1BE048964();
          v62 = v61;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46F68);
          sub_1BE0516B4();

          return;
        }

        goto LABEL_13;
      }

      v63 = v74;

      swift_unknownObjectRelease();
      (*(v35 + 8))(&v26[v32], v34);
      swift_deallocPartialClassInstance();
    }
  }
}

uint64_t sub_1BD79D744()
{
  type metadata accessor for CurrencyAmountPickerView(0);
  type metadata accessor for TransferActionSheetObserver(0);
  sub_1BD79EE14(&qword_1EBD52B28, type metadata accessor for TransferActionSheetObserver);
  *(sub_1BE04E3C4() + OBJC_IVAR____TtC9PassKitUIP33_3BC4BCA10D4B1B164EF997D80A283BE127TransferActionSheetObserver_fraudStepUpTriggered) = 1;
}

uint64_t sub_1BD79D7FC(uint64_t a1)
{
  v2 = type metadata accessor for CurrencyAmountPickerView(0);
  (*(a1 + *(v2 + 52)))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46F68);
  return sub_1BE0516B4();
}

void sub_1BD79D880()
{
  v1 = sub_1BE04D214();
  v65 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v64 = &v60 - v7;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v60 - v10;
  v12 = type metadata accessor for CurrencyAmountPickerView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v13 = *(v0 + v12[8]);
  v14 = &selRef_oneTimeDepositWithAppleCashFeatureDescriptor;
  v15 = v72;
  if (v13 != 2)
  {
    v14 = &selRef_oneTimeWithdrawalWithAppleCashFeatureDescriptor;
  }

  v16 = [v72 *v14];
  if (v16)
  {
    v17 = v16;
    v18 = [v16 maximumAmount];
    if (v18 && (v68 = 0, v69 = 0, v70 = 0, v71 = 1, v19 = v18, sub_1BE0533E4(), v19, (v71 & 1) == 0))
    {
      v62 = v0;
      v63 = v1;
      v44 = v68;
      v45 = v69;
      v46 = v70;
      v47 = (v0 + v12[22]);
      v48 = v47[1];
      v72 = *v47;
      v73 = v48;
      v74 = *(v47 + 8);
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4EED0);
      MEMORY[0x1BFB3E970](v66, v49);
      if (MEMORY[0x1BFB403F0](v44, v45, v46, v66[0], v66[1], v67))
      {
        sub_1BE04D1E4();
        v50 = sub_1BE04D204();
        v51 = sub_1BE052C54();
        v52 = os_log_type_enabled(v50, v51);
        v53 = v63;
        if (v52)
        {
          v54 = swift_slowAlloc();
          *v54 = 0;
          _os_log_impl(&dword_1BD026000, v50, v51, "Amount is outside Apple Cash transfer limit", v54, 2u);
          MEMORY[0x1BFB45F20](v54, -1, -1);
          v55 = v17;
        }

        else
        {
          v55 = v50;
          v50 = v15;
          v15 = v17;
        }

        (*(v65 + 8))(v11, v53);
        return;
      }

      v0 = v62;
      v1 = v63;
    }

    else
    {
    }
  }

  v20 = *(v0 + v12[9]);
  if (v20)
  {
    v21 = *(v0 + v12[10]);
    if (v21)
    {
      v22 = v21;
      v23 = v20;
      if ((PKPeerPaymentNeedsResolutionToPerformAccountServicePayments() & 1) != 0 || PKPeerPaymentCanPerformAccountServicePayments())
      {
        if (v13 != 2)
        {
          goto LABEL_17;
        }

        v24 = (v0 + v12[22]);
        v25 = v24[1];
        v72 = *v24;
        v73 = v25;
        v74 = *(v24 + 8);
        v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4EED0);
        MEMORY[0x1BFB3E970](&v68, v26);
        v27 = v68;
        v28 = WORD2(v68);
        v62 = HIWORD(v68);
        v29 = v69;
        v30 = v70;
        v31 = [v23 currentBalance];
        if (v31)
        {
          v32 = v31;
          v61 = v28;
          v63 = v1;
          v33 = [v31 amount];

          if (v33)
          {
            v34 = sub_1BE0533F4();
            v36 = v35;
            v38 = v37;

            if (MEMORY[0x1BFB403F0](v34, v36, v38, v27 | (v61 << 32) | (v62 << 48), v29, v30))
            {
              v39 = v64;
              sub_1BE04D1E4();
              v40 = sub_1BE04D204();
              v41 = sub_1BE052C54();
              if (os_log_type_enabled(v40, v41))
              {
                v42 = swift_slowAlloc();
                *v42 = 0;
                _os_log_impl(&dword_1BD026000, v40, v41, "Amount exceeds Apple Cash balance", v42, 2u);
                MEMORY[0x1BFB45F20](v42, -1, -1);
                v43 = v23;
              }

              else
              {
                v43 = v40;
                v40 = v23;
              }

              v59 = v63;

              (*(v65 + 8))(v39, v59);
              return;
            }

LABEL_17:

            return;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        return;
      }
    }
  }

  sub_1BE04D1E4();
  v56 = sub_1BE04D204();
  v57 = sub_1BE052C54();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    *v58 = 0;
    _os_log_impl(&dword_1BD026000, v56, v57, "Apple Cash account or pass is not valid", v58, 2u);
    MEMORY[0x1BFB45F20](v58, -1, -1);
  }

  (*(v65 + 8))(v4, v1);
}

void sub_1BD79DE10(void *a1, uint64_t a2)
{
  v4 = sub_1BE051F54();
  v44 = *(v4 - 8);
  v45 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v42 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1BE051FA4();
  v41 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43, v7);
  v40 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CurrencyAmountPickerView(0);
  v38 = *(v9 - 8);
  v10 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v9, v11);
  v12 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1BE051FC4();
  v39 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47, v13);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v46 = &v36 - v18;
  type metadata accessor for TransferActionSheetObserver(0);
  sub_1BD79EE14(&qword_1EBD52B28, type metadata accessor for TransferActionSheetObserver);
  sub_1BE04E3C4();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(aBlock[0]) = 2;
  sub_1BE04D8C4();
  if (a1)
  {
    v19 = a1;
    sub_1BD647830(v19);
    sub_1BD791FE8();
    if (v20 & 1) != 0 && ((swift_getKeyPath(), swift_getKeyPath(), sub_1BE04D8B4(), , , aBlock[0]) && (aBlock[0] >> 62 ? (v21 = sub_1BE053704()) : (v21 = *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10)), , v21 > 0) || (sub_1BD79D880(), (v22)))
    {
      sub_1BD796F50(0);
    }

    else
    {
      v23 = [v19 fundingDetails];
      if (v23)
      {
        v24 = v23;
        objc_opt_self();
        v25 = swift_dynamicCastObjCClass();
        if (v25)
        {
          v26 = v25;
          if ([v25 status] == 2)
          {
            v27 = [v26 verificationDetails];
            if (!v27)
            {
              sub_1BD0E5E8C(0, &qword_1EBD35E90);
              v37 = sub_1BE052D54();
              sub_1BE051FB4();
              sub_1BE051FF4();
              v39 = *(v39 + 8);
              (v39)(v15, v47);
              sub_1BD7A0048(a2, &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
              v28 = (*(v38 + 80) + 16) & ~*(v38 + 80);
              v29 = swift_allocObject();
              sub_1BD7A16C8(v12, v29 + v28, type metadata accessor for CurrencyAmountPickerView);
              aBlock[4] = sub_1BD7A05F0;
              aBlock[5] = v29;
              aBlock[0] = MEMORY[0x1E69E9820];
              aBlock[1] = 1107296256;
              aBlock[2] = sub_1BD126964;
              aBlock[3] = &block_descriptor_177;
              v30 = _Block_copy(aBlock);

              v31 = v40;
              sub_1BE051F74();
              aBlock[0] = MEMORY[0x1E69E7CC0];
              sub_1BD79EE14(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
              sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0);
              v32 = v42;
              v33 = v45;
              sub_1BE053664();
              v34 = v46;
              v35 = v37;
              MEMORY[0x1BFB3FD90](v46, v31, v32, v30);

              _Block_release(v30);
              (*(v44 + 8))(v32, v33);
              (*(v41 + 8))(v31, v43);
              (v39)(v34, v47);
              return;
            }

            (*(a2 + *(v9 + 44)))();
          }
        }

        return;
      }
    }
  }
}

uint64_t sub_1BD79E4CC()
{
  type metadata accessor for CurrencyAmountPickerView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  return sub_1BE0516B4();
}

uint64_t sub_1BD79E540(uint64_t a1)
{
  v2 = type metadata accessor for CurrencyAmountPickerView(0);
  type metadata accessor for TransferActionSheetObserver(0);
  sub_1BD79EE14(&qword_1EBD52B28, type metadata accessor for TransferActionSheetObserver);
  sub_1BE04E3C4();
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = sub_1BE04D8C4();
  return (*(a1 + *(v2 + 44)))(v3);
}

uint64_t sub_1BD79E63C@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1BE04F7B4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52B38);
  return sub_1BD7922B8(v1, a1 + *(v3 + 44));
}

uint64_t sub_1BD79E690()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  return v1;
}

uint64_t sub_1BD79E704()
{
  v1 = OBJC_IVAR____TtC9PassKitUIP33_3BC4BCA10D4B1B164EF997D80A283BE127TransferActionSheetObserver__presentedSheet;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52AD0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_1BD79E7D4()
{
  sub_1BD79EFAC(319, &qword_1EBD52AB0, &qword_1EBD52AB8, &unk_1BE0F6880, MEMORY[0x1E695C070]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1BD79E8AC()
{
  result = qword_1EBD52AC0;
  if (!qword_1EBD52AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52AC0);
  }

  return result;
}

uint64_t sub_1BD79E900@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for TransferActionSheetObserver(0);
  result = sub_1BE04D814();
  *a1 = result;
  return result;
}

unint64_t sub_1BD79E944()
{
  result = qword_1EBD52AC8;
  if (!qword_1EBD52AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52AC8);
  }

  return result;
}

void sub_1BD79E9E0()
{
  sub_1BD79EEB4(319, &qword_1EBD46E10, MEMORY[0x1E697CC88], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1BD2D63D4();
    if (v1 <= 0x3F)
    {
      sub_1BD79ED80();
      if (v2 <= 0x3F)
      {
        type metadata accessor for AccountScheduleTransferModel();
        if (v3 <= 0x3F)
        {
          type metadata accessor for PKAccountTransferType(319);
          if (v4 <= 0x3F)
          {
            sub_1BD10315C(319, &qword_1EBD52AF0, &qword_1EBD4AD68);
            if (v5 <= 0x3F)
            {
              sub_1BD10315C(319, &unk_1EBD49728, &unk_1EBD40340);
              if (v6 <= 0x3F)
              {
                sub_1BD1030A8();
                if (v7 <= 0x3F)
                {
                  sub_1BD10315C(319, &qword_1EBD52AF8, &qword_1EBD52B00);
                  if (v8 <= 0x3F)
                  {
                    sub_1BD10EE48();
                    if (v9 <= 0x3F)
                    {
                      sub_1BD10315C(319, &qword_1EBD52B08, &qword_1EBD45630);
                      if (v10 <= 0x3F)
                      {
                        sub_1BD79EE5C();
                        if (v11 <= 0x3F)
                        {
                          sub_1BD79EEB4(319, &qword_1EBD42D18, type metadata accessor for Decimal, MEMORY[0x1E6981948]);
                          if (v12 <= 0x3F)
                          {
                            sub_1BD79EFAC(319, &qword_1EBD47B10, &qword_1EBD3A5C8, &unk_1BE0BAA50, MEMORY[0x1E6981790]);
                            if (v13 <= 0x3F)
                            {
                              sub_1BD79EFAC(319, &qword_1EBD52B18, &qword_1EBD3DC88, &unk_1BE0C88A0, MEMORY[0x1E6981790]);
                              if (v14 <= 0x3F)
                              {
                                sub_1BD79EF18();
                                if (v15 <= 0x3F)
                                {
                                  sub_1BD79EFAC(319, &qword_1EBD46E08, &qword_1EBD3BD40, &unk_1BE0F6A10, MEMORY[0x1E6981790]);
                                  if (v16 <= 0x3F)
                                  {
                                    sub_1BD79EEB4(319, &qword_1EBD38900, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
                                    if (v17 <= 0x3F)
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
              }
            }
          }
        }
      }
    }
  }
}

void sub_1BD79ED80()
{
  if (!qword_1EBD52AE8)
  {
    type metadata accessor for FundingSourcesModel(255);
    sub_1BD79EE14(&qword_1EBD4AE18, type metadata accessor for FundingSourcesModel);
    v0 = sub_1BE04E984();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD52AE8);
    }
  }
}

uint64_t sub_1BD79EE14(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1BD79EE5C()
{
  if (!qword_1EBD52B10)
  {
    v0 = sub_1BE04E294();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD52B10);
    }
  }
}

void sub_1BD79EEB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1BD79EF18()
{
  if (!qword_1EBD52B20)
  {
    type metadata accessor for TransferActionSheetObserver(255);
    sub_1BD79EE14(&qword_1EBD52B28, type metadata accessor for TransferActionSheetObserver);
    v0 = sub_1BE04E3E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD52B20);
    }
  }
}

void sub_1BD79EFAC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1BD79F024()
{
  result = qword_1EBD52B30;
  if (!qword_1EBD52B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52B30);
  }

  return result;
}

unint64_t sub_1BD79F094()
{
  result = qword_1EBD52B60;
  if (!qword_1EBD52B60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD52B40);
    sub_1BD79F118();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52B60);
  }

  return result;
}

unint64_t sub_1BD79F118()
{
  result = qword_1EBD52B68;
  if (!qword_1EBD52B68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD52B70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD52B78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD52B80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD52B88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD52B90);
    sub_1BD79F31C();
    sub_1BD79F3D4();
    sub_1BD79F428();
    swift_getOpaqueTypeConformance2();
    sub_1BD0DDEBC();
    sub_1BD0DE4F4(&qword_1EBD52BC0, &qword_1EBD52B80);
    swift_getOpaqueTypeConformance2();
    sub_1BD79EE14(&qword_1EBD3EA00, type metadata accessor for ErrorAlertModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52B68);
  }

  return result;
}

unint64_t sub_1BD79F31C()
{
  result = qword_1EBD52B98;
  if (!qword_1EBD52B98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD52B88);
    sub_1BD0DE4F4(&qword_1EBD52BA0, &qword_1EBD52BA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52B98);
  }

  return result;
}

unint64_t sub_1BD79F3D4()
{
  result = qword_1EBD52BB0;
  if (!qword_1EBD52BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52BB0);
  }

  return result;
}

unint64_t sub_1BD79F428()
{
  result = qword_1EBD52BB8;
  if (!qword_1EBD52BB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD52B90);
    sub_1BD5A3BE4();
    sub_1BD47BCBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52BB8);
  }

  return result;
}

unint64_t sub_1BD79F4BC()
{
  result = qword_1EBD52BD8;
  if (!qword_1EBD52BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52BD8);
  }

  return result;
}

unint64_t sub_1BD79F518()
{
  result = qword_1EBD52C00;
  if (!qword_1EBD52C00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD52BF8);
    sub_1BD79F5A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52C00);
  }

  return result;
}

unint64_t sub_1BD79F5A4()
{
  result = qword_1EBD52C08;
  if (!qword_1EBD52C08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD52C10);
    sub_1BD0DE4F4(&qword_1EBD394F8, &qword_1EBD39500);
    sub_1BD79EE14(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52C08);
  }

  return result;
}

unint64_t sub_1BD79F6B0()
{
  result = qword_1EBD52C20;
  if (!qword_1EBD52C20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD52C18);
    sub_1BD79F73C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52C20);
  }

  return result;
}

unint64_t sub_1BD79F73C()
{
  result = qword_1EBD52C28;
  if (!qword_1EBD52C28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD52C30);
    sub_1BD35CEE0();
    sub_1BD0DE4F4(&unk_1EBD366D0, &unk_1EBD511D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52C28);
  }

  return result;
}

uint64_t sub_1BD79F7F4()
{
  result = sub_1BE051C54();
  v1 = 12.0;
  if (result)
  {
    v1 = 16.0;
  }

  qword_1EBD52A80 = *&v1;
  return result;
}

uint64_t sub_1BD79F824()
{
  result = sub_1BE051C54();
  v1 = 10.0;
  if (result)
  {
    v1 = 26.0;
  }

  qword_1EBD52A88 = *&v1;
  return result;
}

uint64_t sub_1BD79F854@<X0>(__int16 a1@<W1>, uint64_t a2@<X8>)
{
  v4 = sub_1BE051994();
  v67 = *(v4 - 8);
  v68 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD390F8);
  MEMORY[0x1EEE9AC00](v65, v8);
  v66 = &v64 - v9;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52F90);
  v10 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69, v11);
  v13 = (&v64 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52F98);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v64 - v16;
  sub_1BE04FE14();
  v18 = sub_1BE0501C4();
  sub_1BE04E1F4();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52FA0) + 36);
  *v27 = v18;
  *(v27 + 8) = v20;
  *(v27 + 16) = v22;
  *(v27 + 24) = v24;
  *(v27 + 32) = v26;
  *(v27 + 40) = 0;
  v28 = sub_1BE050234();
  if (qword_1EBD36F18 != -1)
  {
    swift_once();
  }

  sub_1BE04E1F4();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52FA8) + 36);
  *v37 = v28;
  *(v37 + 8) = v30;
  *(v37 + 16) = v32;
  *(v37 + 24) = v34;
  *(v37 + 32) = v36;
  *(v37 + 40) = 0;
  v38 = sub_1BE051CD4();
  v40 = v39;
  v41 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52FB0) + 36);
  sub_1BD79FD08(a1 & 0x101, v41);
  v42 = (v41 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52FB8) + 36));
  *v42 = v38;
  v42[1] = v40;
  v43 = sub_1BE051CC4();
  v45 = v44;
  if ((a1 & 0x100) != 0)
  {
    (*(v10 + 56))(v17, 1, 1, v69);
  }

  else
  {
    *v13 = sub_1BE051CD4();
    v13[1] = v46;
    sub_1BE051984();
    if (sub_1BE051C54())
    {
      v47 = sub_1BE0501C4();
    }

    else
    {
      v47 = sub_1BE050204();
    }

    v48 = v47;
    v49 = v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52FC0) + 44);
    sub_1BE04E1F4();
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v57 = v56;
    v58 = v66;
    (*(v67 + 32))(v66, v7, v68);
    v59 = v58 + *(v65 + 36);
    *v59 = v48;
    *(v59 + 8) = v51;
    *(v59 + 16) = v53;
    *(v59 + 24) = v55;
    *(v59 + 32) = v57;
    *(v59 + 40) = 0;
    v60 = sub_1BE0513B4();
    sub_1BD0DE204(v58, v49, &qword_1EBD390F8);
    *(v49 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52FC8) + 36)) = v60;
    sub_1BD0DE204(v13, v17, &qword_1EBD52F90);
    (*(v10 + 56))(v17, 0, 1, v69);
  }

  v61 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52FD0) + 36);
  sub_1BD0DE204(v17, v61, &qword_1EBD52F98);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52FD8);
  v63 = (v61 + *(result + 36));
  *v63 = v43;
  v63[1] = v45;
  return result;
}

uint64_t sub_1BD79FD08@<X0>(__int16 a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE051AF4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE04FCF4();
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) != 0 && qword_1EBD36F20 != -1)
  {
    swift_once();
  }

  if ((a1 & 0x100) != 0 && qword_1EBD36F20 != -1)
  {
    swift_once();
  }

  if ((a1 & 1) != 0 && qword_1EBD36F20 != -1)
  {
    swift_once();
  }

  sub_1BE04FA24();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = *(v9 + 20);
  v22 = *MEMORY[0x1E697F468];
  v23 = sub_1BE04F684();
  (*(*(v23 - 8) + 104))(&v12[v21], v22, v23);
  *v12 = v14;
  *(v12 + 1) = v16;
  *(v12 + 2) = v18;
  *(v12 + 3) = v20;
  v24 = [objc_opt_self() secondarySystemBackgroundColor];
  sub_1BE0511C4();
  sub_1BE0513F4();
  sub_1BE04FE24();
  sub_1BE051AE4();
  v25 = sub_1BE0513A4();

  (*(v5 + 8))(v8, v4);
  sub_1BD7A16C8(v12, a2, MEMORY[0x1E697FF20]);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52FE0);
  *(a2 + *(result + 36)) = v25;
  return result;
}

uint64_t sub_1BD7A002C@<X0>(uint64_t a1@<X8>)
{
  if (v1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_1BD79F854(v2 | *v1, a1);
}

uint64_t sub_1BD7A0048(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CurrencyAmountPickerView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_89()
{
  v1 = type metadata accessor for CurrencyAmountPickerView(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BD48);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1BE050144();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  sub_1BD0D45CC();

  v5 = v1[30];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38880);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1BE04EB24();
    (*(*(v6 - 8) + 8))(v3 + v5, v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

void sub_1BD7A03F4(_BYTE *a1@<X8>)
{
  type metadata accessor for CurrencyAmountPickerView(0);

  sub_1BD791E38(a1);
}

double sub_1BD7A0468@<D0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for CurrencyAmountPickerView(0);
  sub_1BD79801C(*a1, v8);
  v4 = v9;
  v5 = v10;
  result = *v8;
  v7 = v8[1];
  *a2 = v8[0];
  *(a2 + 16) = v7;
  *(a2 + 32) = v4;
  *(a2 + 33) = v5;
  return result;
}

void sub_1BD7A0580(void *a1)
{
  v3 = *(type metadata accessor for CurrencyAmountPickerView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_1BD79DE10(a1, v4);
}

unint64_t sub_1BD7A06E4()
{
  result = qword_1EBD52D28;
  if (!qword_1EBD52D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD52D18);
    sub_1BD7A0770();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52D28);
  }

  return result;
}

unint64_t sub_1BD7A0770()
{
  result = qword_1EBD52D30;
  if (!qword_1EBD52D30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD52D10);
    sub_1BD0DE4F4(&qword_1EBD52D38, &qword_1EBD52D08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52D30);
  }

  return result;
}

unint64_t sub_1BD7A0828()
{
  result = qword_1EBD52D58;
  if (!qword_1EBD52D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD52D50);
    sub_1BD7A08B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52D58);
  }

  return result;
}

unint64_t sub_1BD7A08B4()
{
  result = qword_1EBD52D60;
  if (!qword_1EBD52D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD52D68);
    sub_1BD166FEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52D60);
  }

  return result;
}

unint64_t sub_1BD7A0960()
{
  result = qword_1EBD52DA0;
  if (!qword_1EBD52DA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD52D98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD52DA8);
    sub_1BD0DE4F4(&qword_1EBD52DB0, &qword_1EBD52DA8);
    swift_getOpaqueTypeConformance2();
    sub_1BD79EE14(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52DA0);
  }

  return result;
}

unint64_t sub_1BD7A0A8C()
{
  result = qword_1EBD52DC0;
  if (!qword_1EBD52DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52DC0);
  }

  return result;
}

unint64_t sub_1BD7A0B00()
{
  result = qword_1EBD52DD0;
  if (!qword_1EBD52DD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD52DC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD52DD8);
    sub_1BD0DE4F4(&qword_1EBD52DE0, &qword_1EBD52DD8);
    swift_getOpaqueTypeConformance2();
    sub_1BD79EE14(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52DD0);
  }

  return result;
}

unint64_t sub_1BD7A0C2C()
{
  result = qword_1EBD52E20;
  if (!qword_1EBD52E20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD52E18);
    sub_1BD7A0CE4();
    sub_1BD0DE4F4(&qword_1EBD366E0, &unk_1EBD491A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52E20);
  }

  return result;
}

unint64_t sub_1BD7A0CE4()
{
  result = qword_1EBD52E28;
  if (!qword_1EBD52E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD52E30);
    sub_1BD7A0F64(&qword_1EBD52E38, &qword_1EBD52E40, &unk_1BE0F70A0, sub_1BD4D58A4);
    sub_1BD0DE4F4(&unk_1EBD4E910, &unk_1EBD3E2E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52E28);
  }

  return result;
}

unint64_t sub_1BD7A0DC8()
{
  result = qword_1EBD52E70;
  if (!qword_1EBD52E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD52E68);
    sub_1BD7A0E80();
    sub_1BD0DE4F4(&qword_1EBD366E0, &unk_1EBD491A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52E70);
  }

  return result;
}

unint64_t sub_1BD7A0E80()
{
  result = qword_1EBD52E78;
  if (!qword_1EBD52E78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD52E80);
    sub_1BD7A0F64(&qword_1EBD52E88, &qword_1EBD52E90, &unk_1BE0F70D8, sub_1BD7A0FE0);
    sub_1BD0DE4F4(&unk_1EBD4E910, &unk_1EBD3E2E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52E78);
  }

  return result;
}

uint64_t sub_1BD7A0F64(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BD7A0FE0()
{
  result = qword_1EBD52E98;
  if (!qword_1EBD52E98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD52EA0);
    sub_1BD170E70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52E98);
  }

  return result;
}

unint64_t sub_1BD7A106C()
{
  result = qword_1EBD52EC8;
  if (!qword_1EBD52EC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD52EC0);
    sub_1BD7A1124();
    sub_1BD0DE4F4(&qword_1EBD38BC8, &unk_1EBD49190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52EC8);
  }

  return result;
}

unint64_t sub_1BD7A1124()
{
  result = qword_1EBD52ED0;
  if (!qword_1EBD52ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD52ED8);
    sub_1BD0FF49C();
    sub_1BD0DE4F4(&qword_1EBD366E0, &unk_1EBD491A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52ED0);
  }

  return result;
}

uint64_t sub_1BD7A11F4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for CurrencyAmountPickerView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1BD7A1268()
{
  result = qword_1EBD52F38;
  if (!qword_1EBD52F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD52F30);
    sub_1BD7A12F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52F38);
  }

  return result;
}

unint64_t sub_1BD7A12F4()
{
  result = qword_1EBD52F40;
  if (!qword_1EBD52F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD52F48);
    sub_1BD7A1380();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52F40);
  }

  return result;
}

unint64_t sub_1BD7A1380()
{
  result = qword_1EBD52F50;
  if (!qword_1EBD52F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52F50);
  }

  return result;
}

unint64_t sub_1BD7A13EC()
{
  result = qword_1EBD52F58;
  if (!qword_1EBD52F58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD52F00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD52F30);
    sub_1BD7A1268();
    swift_getOpaqueTypeConformance2();
    sub_1BD79EE14(&qword_1EBD52F60, type metadata accessor for TransferEligibilityView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52F58);
  }

  return result;
}

uint64_t sub_1BD7A14FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for CurrencyAmountPickerView(0) - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

uint64_t sub_1BD7A1590@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for CurrencyAmountPickerView(0);

  return sub_1BD797458(a1);
}

unint64_t sub_1BD7A1600()
{
  result = qword_1EBD52F70;
  if (!qword_1EBD52F70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD52F68);
    sub_1BD21AE60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52F70);
  }

  return result;
}

uint64_t sub_1BD7A16C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BD7A1730()
{
  result = qword_1EBD52FE8;
  if (!qword_1EBD52FE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD52FD0);
    sub_1BD7A17E8();
    sub_1BD0DE4F4(&unk_1EBD53010, &qword_1EBD52FD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52FE8);
  }

  return result;
}

unint64_t sub_1BD7A17E8()
{
  result = qword_1EBD52FF0;
  if (!qword_1EBD52FF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD52FB0);
    sub_1BD7A18A0();
    sub_1BD0DE4F4(&qword_1EBD53008, &qword_1EBD52FB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52FF0);
  }

  return result;
}

unint64_t sub_1BD7A18A0()
{
  result = qword_1EBD52FF8;
  if (!qword_1EBD52FF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD52FA8);
    sub_1BD7A192C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52FF8);
  }

  return result;
}

unint64_t sub_1BD7A192C()
{
  result = qword_1EBD53000;
  if (!qword_1EBD53000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD52FA0);
    sub_1BD79EE14(&qword_1EBD3EFA8, MEMORY[0x1E697C8D0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD53000);
  }

  return result;
}

void sub_1BD7A1AB4(void (*a1)(unint64_t, unint64_t, unint64_t, uint64_t), uint64_t a2)
{
  v30 = a2;
  v31 = a1;
  v3 = sub_1BE04B944();
  v24 = *(v3 - 8);
  v25 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v23 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE04BAC4();
  v27 = *(v6 - 8);
  v28 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v26 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1BE04BC84();
  KeyPath = swift_getKeyPath();
  v29 = v2;
  v10 = sub_1BD1882D8(v2, KeyPath);

  v11 = (v10 + 32);
  v12 = *(v10 + 16);
  v34 = 0x80000001BE1182F0;
  v35 = 0x80000001BE118310;
  v32 = 0x80000001BE118260;
  v33 = 0x80000001BE118280;
  while (2)
  {
    if (v12)
    {
      switch(*v11)
      {
        case 6:

          break;
        default:
          v13 = sub_1BE053B84();

          ++v11;
          --v12;
          if ((v13 & 1) == 0)
          {
            continue;
          }

          break;
      }

      v14 = 0x6F63206775626564;
      v15 = 0xEC0000006769666ELL;
      v16 = 0;
    }

    else
    {

      if (([v36 isCarKeyPass] & 1) == 0)
      {
        v17 = v26;
        sub_1BE04BC34();
        v18 = sub_1BE04B964();
        (*(v27 + 8))(v17, v28);
        if (v18)
        {
          v19 = v23;
          sub_1BE04BB94();
          v20 = sub_1BE04B8E4();
          (*(v24 + 8))(v19, v25);
          v21 = [objc_opt_self() shouldShowWatchExtensionInstallViewControllerForSecureElementPass:v36 webService:v20];
          v31(v21, 0xD000000000000022, 0x80000001BE1394D0, 2);
        }

        else
        {
          v31(0xD000000000000014, 0x80000001BE1394B0, 0, 1);
        }

        return;
      }

      v14 = 0x2079656B20726163;
      v15 = 0xEC00000073736170;
      v16 = 1;
    }

    break;
  }

  v31(v14, v15, 0, v16);
  v22 = v36;
}

id sub_1BD7A2004()
{
  v19 = sub_1BE04BAC4();
  v1 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE04B944();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE04BC84();
  v18 = v0;
  v11 = sub_1BE04BBD4();
  sub_1BE04BB94();
  v12 = sub_1BE04B8E4();
  (*(v6 + 8))(v9, v5);
  sub_1BE04BC34();
  v13 = sub_1BE04B9A4();
  (*(v1 + 8))(v4, v19);
  v14 = [objc_allocWithZone(PKWatchExtensionInstallViewController) initWithSecureElementPass:v10 provisioningController:v11 webService:v12 context:v13];

  if (v14)
  {
    [v14 setFlowItemDelegate_];
    sub_1BE052434();
    v15 = v14;
    v16 = sub_1BE04BB74();

    [v15 setReporter_];
  }

  return v14;
}

uint64_t sub_1BD7A2274()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI41ProvisioningWatchExtensionInstallFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD7A22B0(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI41ProvisioningWatchExtensionInstallFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t type metadata accessor for ContactEmailEditingSection()
{
  result = qword_1EBD530B0;
  if (!qword_1EBD530B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD7A241C()
{
  sub_1BD7A24B8();
  if (v0 <= 0x3F)
  {
    sub_1BD7A254C();
    if (v1 <= 0x3F)
    {
      sub_1BD2A1EF0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BD7A24B8()
{
  if (!qword_1EBD530C0)
  {
    type metadata accessor for EmailAddresses();
    sub_1BD7A5368(&qword_1EBD3A6F8, type metadata accessor for EmailAddresses);
    v0 = sub_1BE04E984();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD530C0);
    }
  }
}

void sub_1BD7A254C()
{
  if (!qword_1EBD469B0)
  {
    sub_1BD55B2AC();
    v0 = sub_1BE0534B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD469B0);
    }
  }
}

id sub_1BD7A25C0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE04BD74();
  v66 = *(v3 - 8);
  v67 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v65 = v53 - v9;
  v10 = *(v1 + 8);
  v11 = type metadata accessor for EmailAddresses();
  v12 = sub_1BD7A5368(&qword_1EBD3A6F8, type metadata accessor for EmailAddresses);
  sub_1BE04E964();
  swift_getKeyPath();
  sub_1BE04E974();

  v13 = v73;
  v64 = v74;
  sub_1BE04E964();
  swift_getKeyPath();
  sub_1BE04E974();

  v61 = v71;
  v62 = v70;
  v14 = v72;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v15 = v69;
  if (v69 >> 62)
  {
    result = sub_1BE053704();
  }

  else
  {
    result = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v53[1] = v12;
  v63 = v13;
  v60 = v14;
  if (result)
  {
    if ((v15 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x1BFB40900](0, v15);
    }

    else
    {
      if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_18;
      }

      v17 = *(v15 + 32);
    }

    v58 = v17;
  }

  else
  {

    v58 = 0;
  }

  v18 = v6;
  v53[0] = v11;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1BD7A515C;
  *(v19 + 24) = v10;
  v57 = v19;
  v59 = v1;
  v20 = *(v1 + 16);
  v21 = *MEMORY[0x1E69B8068];
  v23 = v65;
  v22 = v66;
  v24 = *(v66 + 104);
  v25 = v67;
  v24(v65, v21, v67);
  v56 = v20;
  v26 = v20;
  sub_1BE048964();
  result = PKPassKitBundle();
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v27 = result;
  v55 = sub_1BE04B6F4();
  v54 = v28;

  v29 = v23;
  v30 = *(v22 + 8);
  v30(v29, v25);
  v24(v18, v21, v25);
  result = PKPassKitBundle();
  if (!result)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v31 = result;
  v66 = sub_1BE04B6F4();
  v33 = v32;

  v30(v18, v25);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if (v69 == 1)
  {
    sub_1BE048964();
    v34 = sub_1BE04E954();
    v36 = v35;
  }

  else
  {
    v34 = 0;
    v36 = 0;
  }

  v37 = v60;
  v38 = sub_1BD7A2C2C();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v45 = v61;
  *(a1 + 24) = v62;
  *(a1 + 32) = v45;
  *(a1 + 136) = v34;
  *(a1 + 144) = v36;
  *a1 = v63;
  *(a1 + 8) = v64;
  v46 = v58;
  *(a1 + 40) = v37;
  *(a1 + 48) = v46;
  v47 = v57;
  *(a1 + 56) = sub_1BD7A5178;
  *(a1 + 64) = v47;
  *(a1 + 72) = v56;
  *(a1 + 80) = 0;
  v48 = v54;
  *(a1 + 88) = v55;
  *(a1 + 96) = v48;
  *(a1 + 104) = v66;
  *(a1 + 112) = v33;
  v68 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52748);
  sub_1BE051694();
  v49 = *(&v69 + 1);
  *(a1 + 120) = v69;
  *(a1 + 128) = v49;
  *(a1 + 152) = v38;
  *(a1 + 160) = v40;
  *(a1 + 168) = v42;
  *(a1 + 176) = v44;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD530C8);
  v51 = *(v50 + 92);
  *(a1 + v51) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39CF8);
  swift_storeEnumTagMultiPayload();
  v52 = *(v50 + 96);
  v68 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52738);
  sub_1BE051694();
  *(a1 + v52) = v69;
  return sub_1BE04E284();
}

uint64_t sub_1BD7A2BAC@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  *a1 = v3;
  return result;
}

id sub_1BD7A2C2C()
{
  v0 = sub_1BE04BD74();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  result = 0;
  if (LOBYTE(v10[0]) == 1)
  {
    (*(v1 + 104))(v4, *MEMORY[0x1E69B8048], v0, 0);
    result = PKPassKitBundle();
    if (result)
    {
      v6 = result;
      v7 = sub_1BE04B6F4();
      v9 = v8;

      (*(v1 + 8))(v4, v0);
      v10[0] = v7;
      v10[1] = v9;
      sub_1BD0DDEBC();
      return sub_1BE0506C4();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1BD7A2DE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a3;
  v5 = sub_1BE04FF64();
  v48 = *(v5 - 8);
  v49 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v47 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1BE04F6E4();
  v45 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42, v8);
  v41 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD530D8);
  MEMORY[0x1EEE9AC00](v38, v10);
  v12 = &v37 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD530E0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v37 - v15;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD530E8);
  MEMORY[0x1EEE9AC00](v43, v17);
  v39 = &v37 - v18;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD530F0);
  v44 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46, v19);
  v40 = &v37 - v20;
  *v12 = sub_1BE04F504();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD530F8);
  sub_1BD7A34E8(a2, &v12[*(v21 + 44)]);
  type metadata accessor for EmailAddresses();
  sub_1BD7A5368(&qword_1EBD3A6F8, type metadata accessor for EmailAddresses);
  sub_1BE04E964();
  swift_getKeyPath();
  sub_1BE04E974();

  v53 = v56;
  v54 = v57;
  v55 = v58;
  v51 = a1;
  v52 = a2;
  sub_1BD0DE4F4(&qword_1EBD53100, &qword_1EBD530D8);
  sub_1BD7A51D8();
  sub_1BE050EF4();

  sub_1BD0DE53C(v12, &qword_1EBD530D8);
  v22 = sub_1BE051CD4();
  v24 = v23;
  v25 = &v16[*(v13 + 36)];
  sub_1BD7A4ACC(a1, a2, v25);
  v26 = (v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53110) + 36));
  *v26 = v22;
  v26[1] = v24;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if (v56 == 1)
  {
    v27 = v41;
    sub_1BE04F6B4();
    v28 = v42;
  }

  else
  {
    v56 = MEMORY[0x1E69E7CC0];
    sub_1BD7A5368(&qword_1EBD3E638, MEMORY[0x1E697F5E0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E640);
    sub_1BD0DE4F4(&qword_1EBD3E648, &qword_1EBD3E640);
    v27 = v41;
    v29 = v42;
    sub_1BE053664();
    v28 = v29;
  }

  sub_1BD7A522C();
  v30 = v39;
  sub_1BE050DA4();
  (*(v45 + 8))(v27, v28);
  sub_1BD0DE53C(v16, &qword_1EBD530E0);
  v31 = v47;
  sub_1BE04FF44();
  v32 = sub_1BD7A5480(&qword_1EBD53128, &qword_1EBD530E8, &unk_1BE0F7650, sub_1BD7A522C);
  v33 = v40;
  v34 = v43;
  sub_1BE050D14();
  (*(v48 + 8))(v31, v49);
  sub_1BD0DE53C(v30, &qword_1EBD530E8);
  sub_1BE052434();
  v56 = v34;
  v57 = v32;
  swift_getOpaqueTypeConformance2();
  v35 = v46;
  sub_1BE050DE4();

  return (*(v44 + 8))(v33, v35);
}

uint64_t sub_1BD7A34E8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40558);
  MEMORY[0x1EEE9AC00](v46, v4);
  v44 = &v40 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53130);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v40 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD51330);
  v45 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v40 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53138);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v47 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = (&v40 - v19);
  v49 = sub_1BE04F7C4();
  LOBYTE(v52) = 1;
  sub_1BD7A3BD4(a1, v57);
  *&v56[23] = v57[1];
  *&v56[39] = v57[2];
  *&v56[55] = v57[3];
  *&v56[71] = v58;
  *&v56[7] = v57[0];
  v48 = v52;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if (v52 == 1)
  {
    sub_1BE04E4F4();
    v21 = v45;
    v45[2](v9, v13, v10);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330);
    sub_1BD7A5480(&qword_1EBD40568, &qword_1EBD40558, &unk_1BE0FE400, sub_1BD2A298C);
    sub_1BE04F9A4();
    (v21[1])(v13, v10);
    v22 = 0;
    v23 = v20;
  }

  else
  {
    v45 = v20;
    v41 = v9;
    v42 = v6;
    v43 = v10;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    if (v52 == 1)
    {
      v24 = sub_1BE051574();
      v25 = sub_1BE0502D4();
      KeyPath = swift_getKeyPath();
      v27 = sub_1BE0511E4();
      v28 = swift_getKeyPath();
      v52 = v24;
      v53 = KeyPath;
      *v54 = v25;
      *&v54[8] = v28;
      *&v54[16] = v27;
      *&v54[24] = sub_1BD1F3E44;
      *&v54[32] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40578);
      sub_1BD2A298C();
      v29 = v44;
      sub_1BE050A24();

      sub_1BD0DE19C(v29, v41, &qword_1EBD40558);
      swift_storeEnumTagMultiPayload();
      sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330);
      sub_1BD7A5480(&qword_1EBD40568, &qword_1EBD40558, &unk_1BE0FE400, sub_1BD2A298C);
      v23 = v45;
      sub_1BE04F9A4();
      sub_1BD0DE53C(v29, &qword_1EBD40558);
      v22 = 0;
    }

    else
    {
      v22 = 1;
      v23 = v45;
    }
  }

  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53140);
  (*(*(v30 - 8) + 56))(v23, v22, 1, v30);
  v31 = v47;
  sub_1BD0DE19C(v23, v47, &qword_1EBD53138);
  v32 = v49;
  v50[0] = v49;
  v50[1] = 0;
  v33 = v48;
  LOBYTE(v51[0]) = v48;
  *(v51 + 1) = *v56;
  *(&v51[1] + 1) = *&v56[16];
  *(&v51[2] + 1) = *&v56[32];
  *(&v51[3] + 10) = *&v56[57];
  *(&v51[3] + 1) = *&v56[48];
  v34 = v51[0];
  *a2 = v49;
  *(a2 + 16) = v34;
  v35 = v51[1];
  v36 = v51[2];
  v37 = v51[3];
  *(a2 + 74) = *(&v51[3] + 10);
  *(a2 + 48) = v36;
  *(a2 + 64) = v37;
  *(a2 + 32) = v35;
  *(a2 + 96) = 0;
  *(a2 + 104) = 1;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53148);
  sub_1BD0DE19C(v31, a2 + *(v38 + 64), &qword_1EBD53138);
  sub_1BD0DE19C(v50, &v52, &qword_1EBD53150);
  sub_1BD0DE53C(v23, &qword_1EBD53138);
  sub_1BD0DE53C(v31, &qword_1EBD53138);
  v52 = v32;
  v53 = 0;
  v54[0] = v33;
  *&v54[17] = *&v56[16];
  *&v54[33] = *&v56[32];
  *v55 = *&v56[48];
  *&v55[9] = *&v56[57];
  *&v54[1] = *v56;
  return sub_1BD0DE53C(&v52, &qword_1EBD53150);
}

id sub_1BD7A3BD4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9, v10);
  v13 = &v106 - v12;
  v14 = *(v5 + 104);
  LODWORD(v108) = *MEMORY[0x1E69B8048];
  v107 = v14;
  v14(&v106 - v12, v11);
  result = PKPassKitBundle();
  if (!result)
  {
    goto LABEL_38;
  }

  v16 = result;
  v17 = sub_1BE04B6F4();
  v19 = v18;

  v106 = *(v5 + 8);
  v106(v13, v4);
  v118 = v17;
  v119 = v19;
  sub_1BD0DDEBC();
  v20 = sub_1BE0506C4();
  v110 = v21;
  v111 = v20;
  v109 = v22;
  v112 = v23;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if (v118 == 4)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    v24 = v118;
    if (v118 >> 62)
    {
      v25 = sub_1BE053704();
    }

    else
    {
      v25 = *((v118 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v26 = v25 != 0;
    if (v25)
    {
      if ((v24 & 0xC000000000000001) == 0)
      {
        v27 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (!v27)
        {
          __break(1u);
          goto LABEL_34;
        }

        goto LABEL_8;
      }

      MEMORY[0x1BFB40900](0, v24);
      swift_unknownObjectRelease();
    }

    goto LABEL_9;
  }

LABEL_8:
  v26 = 1;
LABEL_9:
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if (!v26 || !v118)
  {
    v49 = *(a1 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_forwardingEmailString + 8);
    if (!v49)
    {
      v71 = 0;
      v72 = 0;
      v73 = 0;
      v74 = 0;
      v101 = -256;
      goto LABEL_28;
    }

    v50 = *(a1 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_forwardingEmailString);
    v107(v8, v108, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_1BE0B69E0;
    *(v51 + 56) = MEMORY[0x1E69E6158];
    *(v51 + 64) = sub_1BD110550();
    *(v51 + 32) = v50;
    *(v51 + 40) = v49;
    sub_1BE048C84();
    v52 = sub_1BE04B714();
    v54 = v53;

    v106(v8, v4);
    v118 = v52;
    v119 = v54;
    v55 = sub_1BE0506C4();
    v57 = v56;
    LOBYTE(v54) = v58;
    sub_1BE050454();
    v59 = sub_1BE0505F4();
    v61 = v60;
    v63 = v62;

    sub_1BD0DDF10(v55, v57, v54 & 1);

    sub_1BE051234();
    v64 = sub_1BE050564();
    v66 = v65;
    v68 = v67;
    v70 = v69;

    sub_1BD0DDF10(v59, v61, v63 & 1);

    v113 = v64;
    v114 = v66;
    v115 = v68 & 1;
    v116 = v70;
    v117 = 256;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53158);
    sub_1BD7A5634();
    sub_1BE04F9A4();
    v71 = v118;
    v72 = v119;
    v73 = v120;
    v74 = v121;
    v75 = v123;
    v76 = v122;
    if (v123)
    {
      v77 = 256;
    }

    else
    {
      v77 = 0;
    }

LABEL_27:
    v101 = v77 | v76;
    sub_1BD7A554C(v71, v72, v73, v74, v76, v75);
LABEL_28:
    v102 = v109 & 1;
    v104 = v110;
    v103 = v111;
    sub_1BD0D7F18(v111, v110, v109 & 1);
    v105 = v112;
    sub_1BE048C84();
    sub_1BD7A5534(v71, v72, v73, v74, v101);
    sub_1BD7A55B4(v71, v72, v73, v74, v101);
    LOBYTE(v118) = v102;
    *a2 = v103;
    *(a2 + 8) = v104;
    *(a2 + 16) = v102;
    *(a2 + 24) = v105;
    *(a2 + 32) = v71;
    *(a2 + 40) = v72;
    *(a2 + 48) = v73;
    *(a2 + 56) = v74;
    *(a2 + 64) = v101;
    sub_1BD7A55B4(v71, v72, v73, v74, v101);
    sub_1BD0DDF10(v103, v104, v102);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if (v118 != 4)
  {
    v118 = sub_1BD785584(v118);
    v119 = v78;
    v79 = sub_1BE0506C4();
    v81 = v80;
    v83 = v82;
    sub_1BE050454();
    v84 = sub_1BE0505F4();
    v86 = v85;
    v88 = v87;

    sub_1BD0DDF10(v79, v81, v83 & 1);

    sub_1BE051264();
    v89 = sub_1BE050564();
    v91 = v90;
    v93 = v92;
    v95 = v94;

    sub_1BD0DDF10(v84, v86, v88 & 1);

    v113 = v89;
    v114 = v91;
    v115 = v93 & 1;
    v116 = v95;
    LOBYTE(v117) = 0;
    sub_1BE04F9A4();
    goto LABEL_23;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v4 = v118;
  if (v118 >> 62)
  {
LABEL_34:
    result = sub_1BE053704();
    if (result)
    {
      goto LABEL_14;
    }

LABEL_35:

    v96 = 0;
    v97 = 0;
    v98 = 0;
    v99 = 0;
    v100 = -1;
LABEL_24:
    v113 = v96;
    v114 = v97;
    v115 = v98;
    v116 = v99;
    v117 = v100;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53158);
    sub_1BD7A5634();
    sub_1BE04F9A4();
    sub_1BD7A561C(v96, v97, v98, v99, v100);
    v71 = v118;
    v72 = v119;
    v73 = v120;
    v74 = v121;
    v75 = v123;
    v76 = v122;
    if (v123)
    {
      v77 = 256;
    }

    else
    {
      v77 = 0;
    }

    goto LABEL_27;
  }

  if (!*((v118 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_35;
  }

LABEL_14:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v28 = MEMORY[0x1BFB40900](0, v4);
    goto LABEL_17;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v28 = *(v4 + 32);
LABEL_17:
    v29 = v28;
    v108 = v28;

    v30 = [v29 localizedDescription];
    v31 = sub_1BE052434();
    v33 = v32;

    v118 = v31;
    v119 = v33;
    v34 = sub_1BE0506C4();
    v36 = v35;
    LOBYTE(v33) = v37;
    sub_1BE050454();
    v38 = sub_1BE0505F4();
    v40 = v39;
    v42 = v41;

    sub_1BD0DDF10(v34, v36, v33 & 1);

    sub_1BE051264();
    v43 = sub_1BE050564();
    v45 = v44;
    LOBYTE(v36) = v46;
    v48 = v47;

    sub_1BD0DDF10(v38, v40, v42 & 1);

    v113 = v43;
    v114 = v45;
    v115 = v36 & 1;
    v116 = v48;
    LOBYTE(v117) = 1;
    sub_1BD0D7F18(v43, v45, v36 & 1);
    sub_1BE048C84();
    sub_1BD0D7F18(v43, v45, v36 & 1);
    sub_1BE048C84();
    sub_1BE04F9A4();

    sub_1BD0DDF10(v43, v45, v36 & 1);

    sub_1BD0DDF10(v43, v45, v36 & 1);

LABEL_23:
    v96 = v118;
    v97 = v119;
    v98 = v120;
    v99 = v121;
    v100 = v122;
    sub_1BD1970E0(v118, v119, v120);
    goto LABEL_24;
  }

  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

id sub_1BD7A4610@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v55 = a1;
  v56 = a2;
  v58 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD440B8);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v57 = v50 - v5;
  v6 = sub_1BE04BD74();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v59 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = v50 - v12;
  v16 = MEMORY[0x1EEE9AC00](v14, v15);
  v18 = v50 - v17;
  v19 = *MEMORY[0x1E69B8048];
  v60 = *(v7 + 104);
  v60(v50 - v17, v19, v6, v16);
  result = PKPassKitBundle();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v21 = result;
  v22 = sub_1BE04B6F4();
  v24 = v23;

  v25 = *(v7 + 8);
  v25(v18, v6);
  v61 = v22;
  v62 = v24;
  sub_1BD0DDEBC();
  v26 = sub_1BE0506C4();
  v53 = v27;
  v54 = v26;
  v51 = v28;
  v52 = v29;
  v30 = v60;
  (v60)(v13, v19, v6);
  result = PKPassKitBundle();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v31 = result;
  v32 = sub_1BE04B6F4();
  v34 = v33;

  v25(v13, v6);
  v61 = v32;
  v62 = v34;
  v35 = sub_1BE0506C4();
  v50[0] = v36;
  v50[1] = v35;
  v37 = v59;
  (v30)(v59, *MEMORY[0x1E69B8068], v6);
  result = PKPassKitBundle();
  if (result)
  {
    v38 = result;
    v39 = sub_1BE04B6F4();
    v41 = v40;

    v25(v37, v6);
    v61 = v39;
    v62 = v41;
    v42 = sub_1BE0506C4();
    v44 = v43;
    v46 = v45;
    v47 = swift_allocObject();
    *(v47 + 16) = v55;
    *(v47 + 24) = v56;
    sub_1BE048964();
    v48 = v57;
    sub_1BE051194();

    sub_1BD0DDF10(v42, v44, v46 & 1);

    v49 = sub_1BE0511A4();
    (*(*(v49 - 8) + 56))(v48, 0, 1, v49);
    return sub_1BE051174();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1BD7A4A58()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

id sub_1BD7A4ACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a3;
  v5 = sub_1BE04BD74();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40508);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v28 - v13;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD404E8);
  MEMORY[0x1EEE9AC00](v29, v15);
  v17 = &v28 - v16;
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  sub_1BE048964();
  sub_1BE051704();
  (*(v6 + 104))(v9, *MEMORY[0x1E69B8068], v5);
  result = PKPassKitBundle();
  if (result)
  {
    v20 = result;
    v21 = sub_1BE04B6F4();
    v23 = v22;

    (*(v6 + 8))(v9, v5);
    v31 = v21;
    v32 = v23;
    sub_1BD0DDEBC();
    v24 = sub_1BE0506C4();
    v26 = v25;
    LOBYTE(v20) = v27;
    sub_1BD0DE4F4(&qword_1EBD40500, &qword_1EBD40508);
    sub_1BE050C24();
    sub_1BD0DDF10(v24, v26, v20 & 1);

    (*(v11 + 8))(v14, v10);
    sub_1BE052434();
    sub_1BE04EBB4();

    return sub_1BD0DE53C(v17, &qword_1EBD404E8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BD7A4E50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v22 - v6;
  v8 = *(a2 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_privateEmail);
  if (v8)
  {
    v9 = a2 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_context;
    v10 = *(a2 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_context);
    if (v10)
    {
      v11 = *(v9 + 32);
      v12 = *(v9 + 16);
      v22[0] = *(v9 + 24);
      v13 = *(v9 + 8);
      v14 = v8;
      sub_1BE048964();
      v15 = v14;
      sub_1BD36A5EC(v10, v13, v12, v22[0], v11);
      sub_1BD785FE0(v8, v10, v11);

      swift_unknownObjectRelease();
      v16 = v22[0];
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v22[1] = v8;
      v21 = v8;
      sub_1BE048964();
      sub_1BE04D8C4();
    }
  }

  else
  {
    v17 = sub_1BE0528D4();
    (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
    sub_1BE0528A4();
    sub_1BE048964();
    v18 = sub_1BE052894();
    v19 = swift_allocObject();
    v20 = MEMORY[0x1E69E85E0];
    v19[2] = v18;
    v19[3] = v20;
    v19[4] = a1;
    v19[5] = a2;
    sub_1BD122C00(0, 0, v7, &unk_1BE0F76E8, v19);
  }
}

uint64_t sub_1BD7A50A4()
{
  v0[2] = sub_1BE0528A4();
  v0[3] = sub_1BE052894();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1BD16DB04;

  return sub_1BD782DA8();
}

unint64_t sub_1BD7A51D8()
{
  result = qword_1EBD53108;
  if (!qword_1EBD53108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD53108);
  }

  return result;
}

unint64_t sub_1BD7A522C()
{
  result = qword_1EBD53118;
  if (!qword_1EBD53118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD530E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD530D8);
    sub_1BD0DE4F4(&qword_1EBD53100, &qword_1EBD530D8);
    sub_1BD7A51D8();
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD53120, &qword_1EBD53110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD53118);
  }

  return result;
}

uint64_t sub_1BD7A5368(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD7A53B8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BD0F985C;

  return sub_1BD7A50A4();
}

uint64_t sub_1BD7A5480(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_1BD7A5368(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BD7A5534(uint64_t result, uint64_t a2, char a3, uint64_t a4, __int16 a5)
{
  if (HIBYTE(a5) != 255)
  {
    return sub_1BD7A554C(result, a2, a3, a4, a5, HIBYTE(a5) & 1);
  }

  return result;
}

uint64_t sub_1BD7A554C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, char a6)
{
  if (a6)
  {
    sub_1BD0D7F18(a1, a2, a3 & 1);

    return sub_1BE048C84();
  }

  else
  {

    return sub_1BD7A559C(a1, a2, a3, a4, a5);
  }
}

uint64_t sub_1BD7A559C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_1BD1970E0(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1BD7A55B4(uint64_t result, uint64_t a2, char a3, uint64_t a4, __int16 a5)
{
  if (HIBYTE(a5) != 255)
  {
    return sub_1BD7A55CC(result, a2, a3, a4, a5, HIBYTE(a5) & 1);
  }

  return result;
}

uint64_t sub_1BD7A55CC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, char a6)
{
  if (a6)
  {
    sub_1BD0DDF10(a1, a2, a3 & 1);
  }

  else
  {

    return sub_1BD7A561C(a1, a2, a3, a4, a5);
  }
}

uint64_t sub_1BD7A561C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_1BD19711C(a1, a2, a3);
  }

  return a1;
}

unint64_t sub_1BD7A5634()
{
  result = qword_1EBD53160;
  if (!qword_1EBD53160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD53158);
    sub_1BD170E70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD53160);
  }

  return result;
}

unint64_t sub_1BD7A56B8()
{
  result = qword_1EBD53168;
  if (!qword_1EBD53168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD53170);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD530E8);
    sub_1BD7A5480(&qword_1EBD53128, &qword_1EBD530E8, &unk_1BE0F7650, sub_1BD7A522C);
    swift_getOpaqueTypeConformance2();
    sub_1BD7A5368(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD53168);
  }

  return result;
}

unint64_t sub_1BD7A5810(unint64_t a1, double a2)
{
  if (a1 >> 62)
  {
    goto LABEL_25;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
LABEL_26:

    return sub_1BE050324();
  }

LABEL_3:
  v5 = 0;
  v6 = a1 & 0xC000000000000001;
  v7 = *MEMORY[0x1E69DB648];
  do
  {
    if (v6)
    {
      v8 = MEMORY[0x1BFB40900](v5, a1);
    }

    else
    {
      if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v8 = *(a1 + 8 * v5 + 32);
    }

    v9 = v8;
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      v4 = sub_1BE053704();
      if (!v4)
      {
        goto LABEL_26;
      }

      goto LABEL_3;
    }

    v11 = objc_allocWithZone(MEMORY[0x1E696AEC0]);
    v12 = sub_1BE052404();
    v13 = [v11 initWithString_];

    v32[0] = v7;
    v32[4] = sub_1BD7A5BB8();
    v32[1] = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BF60);
    v14 = sub_1BE053A04();
    v15 = v7;
    v16 = v9;
    sub_1BD7A5C04(v32, &v30);
    v17 = v30;
    v18 = sub_1BD14BFD0(v30);
    if (v19)
    {
      goto LABEL_23;
    }

    v14[(v18 >> 6) + 8] |= 1 << v18;
    *(v14[6] + 8 * v18) = v17;
    sub_1BD1B6140(&v31, (v14[7] + 32 * v18));
    v20 = v14[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_24;
    }

    v14[2] = v22;
    sub_1BD3726C0(v32);
    type metadata accessor for Key(0);
    sub_1BD372728();
    v23 = sub_1BE052224();

    [v13 sizeWithAttributes_];
    v25 = v24;

    if (v25 <= a2)
    {
      v26 = v16;
      v27 = sub_1BE050484();

      return v27;
    }

    ++v5;
  }

  while (v10 != v4);
  result = v4 - 1;
  if (__OFSUB__(v4, 1))
  {
    __break(1u);
    goto LABEL_30;
  }

  if (v6)
  {
LABEL_30:
    MEMORY[0x1BFB40900](result, a1);
    return sub_1BE050484();
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v29 = *(a1 + 32 + 8 * result);
    return sub_1BE050484();
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD7A5B00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1BD7A5810(*v2, *(v2 + 24));
  KeyPath = swift_getKeyPath();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53178);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53180);
  v9 = (a2 + *(result + 36));
  *v9 = KeyPath;
  v9[1] = v5;
  return result;
}

unint64_t sub_1BD7A5BB8()
{
  result = qword_1EBD53188;
  if (!qword_1EBD53188)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD53188);
  }

  return result;
}

uint64_t sub_1BD7A5C04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BF68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD7A5C74()
{
  result = qword_1EBD53190;
  if (!qword_1EBD53190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD53180);
    sub_1BD0DE4F4(&qword_1EBD53198, &qword_1EBD53178);
    sub_1BD0DE4F4(&qword_1EBD38BC8, &unk_1EBD49190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD53190);
  }

  return result;
}

id sub_1BD7A5D58(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC9PassKitUI35ProvisioningAutoReloadSetUpFlowItem_controller] = 0;
  *&v2[OBJC_IVAR____TtC9PassKitUI35ProvisioningAutoReloadSetUpFlowItem__isCardsOnFileProvisioning] = &type metadata for IsCardsOnFileProvisioning;
  *&v2[OBJC_IVAR____TtC9PassKitUI35ProvisioningAutoReloadSetUpFlowItem__isManualProvisioning] = &type metadata for IsManualProvisioning;
  *&v2[OBJC_IVAR____TtC9PassKitUI35ProvisioningAutoReloadSetUpFlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6 = &v2[OBJC_IVAR____TtC9PassKitUI35ProvisioningAutoReloadSetUpFlowItem_identifier];
  *v6 = 0xD000000000000017;
  *(v6 + 1) = 0x80000001BE139690;
  *&v2[OBJC_IVAR____TtC9PassKitUI35ProvisioningAutoReloadSetUpFlowItem__debugConfiguration] = &type metadata for ProvisioningScreenDebugConfiguration;
  *&v2[OBJC_IVAR____TtC9PassKitUI35ProvisioningAutoReloadSetUpFlowItem_context] = a1;
  *&v2[OBJC_IVAR____TtC9PassKitUI35ProvisioningAutoReloadSetUpFlowItem_provisionedPasses] = a2;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

void sub_1BD7A5F20(void (*a1)(unint64_t, unint64_t, void, uint64_t), uint64_t a2)
{
  v28 = a2;
  v29 = a1;
  v3 = sub_1BE04BAC4();
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v24 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v27 = v2;
  v7 = sub_1BD1881C0(v2, KeyPath);

  v8 = (v7 + 32);
  v9 = *(v7 + 16);
  v32 = 0x80000001BE1182A0;
  v33 = 0x80000001BE118310;
  v30 = 0x80000001BE118260;
  v31 = 0x80000001BE118280;
  while (2)
  {
    if (v9)
    {
      switch(*v8)
      {
        case 0xB:

          break;
        default:
          v10 = sub_1BE053B84();

          ++v8;
          --v9;
          if ((v10 & 1) == 0)
          {
            continue;
          }

          break;
      }

      v15 = 0x6F63206775626564;
      v21 = 0xEC0000006769666ELL;
      goto LABEL_21;
    }

    break;
  }

  v11 = swift_getKeyPath();
  v12 = v27;
  v13 = sub_1BD1881E0(v27, v11);

  if (v13)
  {
    v14 = "does not support auto reload";
    v15 = 0xD000000000000010;
    goto LABEL_14;
  }

  v16 = swift_getKeyPath();
  v17 = sub_1BD18820C(v12, v16);

  if ((v17 & 1) == 0)
  {
    v14 = "owItem";
    v15 = 0xD000000000000017;
    goto LABEL_14;
  }

  v18 = sub_1BE04BC84();
  v33 = [v18 paymentPass];

  if (!v33)
  {
LABEL_11:
    v19 = v24;
    sub_1BE04BC34();
    v20 = sub_1BE04BA54();
    (*(v25 + 8))(v19, v26);
    if ((v20 & 1) == 0)
    {
      v15 = 0;
      v21 = 0;
LABEL_21:
      v22 = 0;
      goto LABEL_22;
    }

    v14 = "manatee not required";
    v15 = 0xD00000000000001BLL;
LABEL_14:
    v21 = v14 | 0x8000000000000000;
    v22 = 1;
LABEL_22:
    v29(v15, v21, 0, v22);
    return;
  }

  if ([objc_opt_self() shouldOfferAutoReloadForPass_])
  {

    goto LABEL_11;
  }

  v29(0xD00000000000001CLL, 0x80000001BE139650, 0, 1);
  v23 = v33;
}

id sub_1BD7A6454()
{
  v1 = v0;
  v2 = sub_1BE04BAC4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE04BC84();
  v8 = [v7 paymentPass];

  if (v8)
  {
    sub_1BE04BC34();
    v9 = sub_1BE04BAB4();
    (*(v3 + 8))(v6, v2);
    if (v9)
    {
      v10 = 2;
    }

    else
    {
      v10 = 0;
    }

    v11 = v8;
    v12 = sub_1BE04BBD4();
    v13 = [objc_allocWithZone(PKPaymentAutoReloadSetupController) initWithPass:v11 provisioningController:v12 viewStyle:v10 delegate:v1];

    v14 = OBJC_IVAR____TtC9PassKitUI35ProvisioningAutoReloadSetUpFlowItem_controller;
    v15 = *(v1 + OBJC_IVAR____TtC9PassKitUI35ProvisioningAutoReloadSetUpFlowItem_controller);
    *(v1 + OBJC_IVAR____TtC9PassKitUI35ProvisioningAutoReloadSetUpFlowItem_controller) = v13;

    v16 = *(v1 + v14);
    if (v16)
    {
      sub_1BE052434();
      v17 = v16;
      v18 = sub_1BE04BB74();

      [v17 setReporter_];
    }
  }

  result = *(v1 + OBJC_IVAR____TtC9PassKitUI35ProvisioningAutoReloadSetUpFlowItem_controller);
  if (result)
  {
    return [result thresholdTopUpSetupViewController];
  }

  return result;
}

uint64_t sub_1BD7A6664()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI35ProvisioningAutoReloadSetUpFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

void sub_1BD7A66B4(void *a1, void *a2)
{
  v3 = v2;
  sub_1BE052434();
  v6 = sub_1BE04BB74();

  v7 = *(v3 + OBJC_IVAR____TtC9PassKitUI35ProvisioningAutoReloadSetUpFlowItem_provisionedPasses);
  v8 = type metadata accessor for ProvisioningAutoReloadCompleteFlowItem();
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR____TtC9PassKitUI38ProvisioningAutoReloadCompleteFlowItem_controller] = 0;
  *&v9[OBJC_IVAR____TtC9PassKitUI38ProvisioningAutoReloadCompleteFlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v10 = &v9[OBJC_IVAR____TtC9PassKitUI38ProvisioningAutoReloadCompleteFlowItem_identifier];
  *v10 = 0xD00000000000001ALL;
  *(v10 + 1) = 0x80000001BE1396F0;
  *&v9[OBJC_IVAR____TtC9PassKitUI38ProvisioningAutoReloadCompleteFlowItem_provisionedPasses] = v7;
  *&v9[OBJC_IVAR____TtC9PassKitUI38ProvisioningAutoReloadCompleteFlowItem_amount] = a1;
  *&v9[OBJC_IVAR____TtC9PassKitUI38ProvisioningAutoReloadCompleteFlowItem_threshold] = a2;
  *&v9[OBJC_IVAR____TtC9PassKitUI38ProvisioningAutoReloadCompleteFlowItem_reporter] = v6;
  v19.receiver = v9;
  v19.super_class = v8;
  v11 = v7;
  v12 = a1;
  v13 = a2;
  v14 = v6;
  v15 = objc_msgSendSuper2(&v19, sel_init);
  v16 = v3 + OBJC_IVAR____TtC9PassKitUI35ProvisioningAutoReloadSetUpFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v17 = *(v16 + 8);
    ObjectType = swift_getObjectType();
    sub_1BD865948(v3, &off_1F3BBB650, v15, &off_1F3BBB5F8, ObjectType, v17);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_1BD7A69D8()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI38ProvisioningAutoReloadCompleteFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

void *sub_1BD7A6A20()
{
  v0 = sub_1BD7A6B0C();
  sub_1BD28B498(v0);
  return v0;
}

void sub_1BD7A6A60(char *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v7 = &a1[*a4];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v7 + 1);
    ObjectType = swift_getObjectType();
    v10 = a1;
    sub_1BD8659A4(v10, a5, ObjectType, v8);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1BD7A6B0C()
{
  v1 = v0;
  v2 = sub_1BE04BC84();
  v3 = [v2 paymentPass];

  if (v3)
  {
    v4 = [objc_allocWithZone(PKPaymentAutoReloadSetupCompleteViewController) initWithPass:v3 amount:*(v1 + OBJC_IVAR____TtC9PassKitUI38ProvisioningAutoReloadCompleteFlowItem_amount) threshold:*(v1 + OBJC_IVAR____TtC9PassKitUI38ProvisioningAutoReloadCompleteFlowItem_threshold) setupMode:2 paymentDataProvider:0 delegate:v1];
    v5 = OBJC_IVAR____TtC9PassKitUI38ProvisioningAutoReloadCompleteFlowItem_controller;
    v6 = *(v1 + OBJC_IVAR____TtC9PassKitUI38ProvisioningAutoReloadCompleteFlowItem_controller);
    *(v1 + OBJC_IVAR____TtC9PassKitUI38ProvisioningAutoReloadCompleteFlowItem_controller) = v4;

    v7 = *(v1 + v5);
    if (v7)
    {
      v8 = *(v1 + OBJC_IVAR____TtC9PassKitUI38ProvisioningAutoReloadCompleteFlowItem_reporter);
      v9 = v7;
      [v9 setReporter_];
    }
  }

  return *(v1 + OBJC_IVAR____TtC9PassKitUI38ProvisioningAutoReloadCompleteFlowItem_controller);
}

id AccountAutomaticPaymentsViewController.__allocating_init(controller:showSetupPrompt:)(void *a1, char a2)
{
  v3 = v2;
  v6 = objc_allocWithZone(v3);
  *&v6[OBJC_IVAR___PKAccountAutomaticPaymentsViewController_hostingVC] = 0;
  type metadata accessor for AccountAutomaticPaymentsModel(0);
  swift_allocObject();
  v7 = a1;
  AccountAutomaticPaymentsModel.init(controller:)(v7);
  *&v6[OBJC_IVAR___PKAccountAutomaticPaymentsViewController_model] = v8;
  v6[OBJC_IVAR___PKAccountAutomaticPaymentsViewController_showSetupPrompt] = a2;
  v11.receiver = v6;
  v11.super_class = v3;
  v9 = objc_msgSendSuper2(&v11, sel_initWithNibName_bundle_, 0, 0);

  return v9;
}

id AccountAutomaticPaymentsViewController.init(controller:showSetupPrompt:)(void *a1, char a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR___PKAccountAutomaticPaymentsViewController_hostingVC] = 0;
  type metadata accessor for AccountAutomaticPaymentsModel(0);
  swift_allocObject();
  v7 = a1;
  AccountAutomaticPaymentsModel.init(controller:)(v7);
  *&v3[OBJC_IVAR___PKAccountAutomaticPaymentsViewController_model] = v8;
  v3[OBJC_IVAR___PKAccountAutomaticPaymentsViewController_showSetupPrompt] = a2;
  v11.receiver = v3;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, sel_initWithNibName_bundle_, 0, 0);

  return v9;
}

Swift::Void __swiftcall AccountAutomaticPaymentsViewController.loadView()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for AccountAutomaticPaymentsHeroView();
  MEMORY[0x1EEE9AC00](v3, v4);
  v41 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v39 - v8;
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v14 = &v39 - v13;
  v45.receiver = v1;
  v45.super_class = ObjectType;
  objc_msgSendSuper2(&v45, sel_loadView, v12);
  v15 = *&v1[OBJC_IVAR___PKAccountAutomaticPaymentsViewController_model];
  v16 = v1[OBJC_IVAR___PKAccountAutomaticPaymentsViewController_showSetupPrompt];
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  LOBYTE(v42) = 0;
  sub_1BE048964();
  sub_1BE051694();
  v18 = v44;
  v9[16] = v43;
  *(v9 + 3) = v18;
  v19 = v3[6];
  *&v9[v19] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20);
  swift_storeEnumTagMultiPayload();
  v42 = v15;
  type metadata accessor for AccountAutomaticPaymentsModel(0);
  sub_1BE048964();
  sub_1BE051694();
  v20 = v44;
  *v9 = v43;
  *(v9 + 1) = v20;
  v9[v3[8]] = v16;
  v21 = &v9[v3[9]];
  *v21 = sub_1BD26717C;
  v21[1] = v17;
  sub_1BDA1BD2C();
  if (!v22)
  {
    v30 = 0;
    goto LABEL_6;
  }

  v40 = v14;
  v23 = [*(v15 + 48) account];
  if (!v23)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v24 = v23;
  v25 = [objc_opt_self() sharedService];
  if (v25)
  {
    v26 = v25;
    v27 = [*(v15 + 48) paymentSetupContext];
    v28 = objc_allocWithZone(PKAccountTermsAndConditionsController);
    v29 = sub_1BE052404();

    v30 = [v28 initWithAccount:v24 webService:v26 context:v27 termsIdentifier:v29];

    v14 = v40;
LABEL_6:
    *&v9[v3[7]] = v30;
    sub_1BD7A7570(v9, v14);

    sub_1BD64081C(v14, v41);
    v31 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53308));
    v32 = sub_1BE04F894();
    v33 = *&v1[OBJC_IVAR___PKAccountAutomaticPaymentsViewController_hostingVC];
    *&v1[OBJC_IVAR___PKAccountAutomaticPaymentsViewController_hostingVC] = v32;
    v34 = v32;

    v35 = v34;
    [v1 addChildViewController_];
    v36 = [v1 view];
    if (v36)
    {
      v37 = v36;
      v38 = [v35 view];

      if (v38)
      {
        [v37 addSubview_];

        [v35 didMoveToParentViewController_];
        sub_1BD640B5C(v14);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_11;
  }

LABEL_12:
  __break(1u);
}

Swift::Void __swiftcall AccountAutomaticPaymentsViewController.viewWillLayoutSubviews()()
{
  v14.receiver = v0;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, sel_viewWillLayoutSubviews);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;

    v11 = *&v0[OBJC_IVAR___PKAccountAutomaticPaymentsViewController_hostingVC];
    if (v11)
    {
      v12 = v11;
      v13 = [v12 view];
      [v13 setFrame_];
    }
  }

  else
  {
    __break(1u);
  }
}

id AccountAutomaticPaymentsViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1BE052404();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id AccountAutomaticPaymentsViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BD7A7570(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountAutomaticPaymentsHeroView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1BD7A7624(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1BE04CDA4();
  sub_1BD7A8B90(&qword_1EBD369D0, MEMORY[0x1E69BCB10]);
  a2[4] = sub_1BE04EEC4();
  a2[5] = v4;
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  sub_1BD0DE19C(v17, v16, &qword_1EBD51EC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51EC0);
  sub_1BE051694();
  sub_1BD0DE53C(v17, &qword_1EBD51EC0);
  v16[0] = 0;
  sub_1BE051694();
  v5 = *(&v17[0] + 1);
  a2[13] = *&v17[0];
  a2[14] = v5;
  v6 = type metadata accessor for VirtualCardSheet();
  v7 = v6[10];
  *(a2 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D540);
  swift_storeEnumTagMultiPayload();
  v8 = a2 + v6[11];
  *v8 = swift_getKeyPath();
  v8[8] = 0;
  v9 = v6[12];
  *(a2 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38880);
  swift_storeEnumTagMultiPayload();
  v10 = v6[13];
  *(a2 + v10) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38888);
  swift_storeEnumTagMultiPayload();
  a2[6] = a1;
  type metadata accessor for VirtualCardAuthorizationModel();
  swift_getKeyPath();
  swift_getKeyPath();
  v11 = a1;
  sub_1BE04D8B4();

  sub_1BD7A8B90(&qword_1EBD53310, type metadata accessor for VirtualCardAuthorizationModel);
  *a2 = sub_1BE04E954();
  a2[1] = v12;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  type metadata accessor for AuthenticatorModel();
  sub_1BD7A8B90(&qword_1EBD36450, type metadata accessor for AuthenticatorModel);
  v13 = sub_1BE04E954();
  v15 = v14;

  a2[2] = v13;
  a2[3] = v15;
}

uint64_t type metadata accessor for VirtualCardSheet()
{
  result = qword_1EBD53318;
  if (!qword_1EBD53318)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BD7A79BC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v82 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53338);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v84 = v67 - v5;
  v6 = type metadata accessor for VirtualCardSheet();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v9);
  v87 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53340);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v77 = v67 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53348);
  v79 = *(v17 - 8);
  v80 = v17;
  MEMORY[0x1EEE9AC00](v17, v18);
  v78 = v67 - v19;
  v20 = sub_1BD7A83F0();
  v22 = v21;
  v86 = v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD7A8900(v1, v86);
  v85 = *(v7 + 80);
  v23 = (v85 + 16) & ~v85;
  v24 = swift_allocObject();
  sub_1BD7A8964(v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23);
  v83 = *(v1 + 24);
  v25 = sub_1BE04CAE4();
  v26 = sub_1BE051C54();
  v27 = 18.0;
  v97 = 0uLL;
  if (v26)
  {
    v27 = 10.0;
  }

  *&v98 = v20;
  *(&v98 + 1) = v22;
  *&v99 = sub_1BD7A8F5C;
  *(&v99 + 1) = v24;
  LOBYTE(v100) = v25 & 1;
  *&v101 = 0;
  *(&v100 + 1) = 0;
  *(&v101 + 1) = 0x4032000000000000;
  *v102 = v27;
  *&v102[8] = xmmword_1BE0B7110;
  v103[0] = 0;
  v103[1] = 0;
  v103[2] = v20;
  v103[3] = v22;
  v103[4] = sub_1BD7A8F5C;
  v103[5] = v24;
  v104 = v25 & 1;
  v105 = 0;
  v106 = 0;
  v107 = 0x4032000000000000;
  v108 = v27;
  v109 = xmmword_1BE0B7110;
  sub_1BD0DE19C(&v97, v96, &qword_1EBD38AC8);
  sub_1BD0DE53C(v103, &qword_1EBD38AC8);
  sub_1BE051C64();
  v89 = v2;
  v88 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53350);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DCC8);
  sub_1BD0DE4F4(&qword_1EBD53358, &qword_1EBD53350);
  sub_1BD7A89D8();
  v28 = v84;
  sub_1BE051C74();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53378);
  (*(*(v29 - 8) + 56))(v28, 0, 1, v29);
  v30 = v86;
  sub_1BD7A8900(v2, v86);
  v75 = swift_allocObject();
  sub_1BD7A8964(v30, v75 + v23);
  LOBYTE(v96[0]) = 0;
  KeyPath = swift_getKeyPath();
  LOBYTE(v93[0]) = 0;
  v67[2] = sub_1BE04CDA4();
  v67[1] = sub_1BD7A8B90(&qword_1EBD369D0, MEMORY[0x1E69BCB10]);
  swift_retain_n();
  v31 = sub_1BE04EEC4();
  v72 = v32;
  v73 = v31;
  type metadata accessor for AuthenticatorModel();
  sub_1BD7A8B90(&qword_1EBD36450, type metadata accessor for AuthenticatorModel);
  v33 = sub_1BE04E954();
  v68 = v34;
  v69 = v33;
  v70 = LOBYTE(v96[0]);
  v71 = LOBYTE(v93[0]);
  v35 = *(v2 + 48);
  v96[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D4E8);
  v96[4] = sub_1BD0DE4F4(&qword_1EBD53380, &qword_1EBD3D4E8);
  v96[0] = v35;
  v81 = v2;
  sub_1BD7A8900(v2, v30);
  v36 = swift_allocObject();
  v76 = v23;
  sub_1BD7A8964(v30, v36 + v23);
  v37 = &v13[v10[26]];
  sub_1BD250AA8();
  sub_1BD7A8B90(&qword_1EBD35E40, sub_1BD250AA8);
  v38 = v35;
  *v37 = sub_1BE04EEC4();
  v37[1] = v39;
  v40 = &v13[v10[27]];
  *v40 = sub_1BE04EEC4();
  v40[1] = v41;
  v42 = v84;
  v43 = &v13[v10[28]];
  LOBYTE(v92[0]) = 0;
  sub_1BE051694();
  v44 = v93[1];
  *v43 = v93[0];
  *(v43 + 1) = v44;
  v45 = &v13[v10[29]];
  *v45 = swift_getKeyPath();
  v45[8] = 0;
  *(v13 + 12) = *&v102[16];
  v46 = *v102;
  *(v13 + 4) = v101;
  *(v13 + 5) = v46;
  v47 = v98;
  *v13 = v97;
  *(v13 + 1) = v47;
  v48 = v100;
  *(v13 + 2) = v99;
  *(v13 + 3) = v48;
  sub_1BD0DE19C(v42, &v13[v10[17]], &qword_1EBD53338);
  v49 = &v13[v10[18]];
  v50 = v68;
  *v49 = v69;
  *(v49 + 1) = v50;
  *(v49 + 2) = sub_1BD31FF5C;
  *(v49 + 3) = 0;
  v49[32] = v70;
  *(v49 + 5) = KeyPath;
  v49[48] = v71;
  v51 = v72;
  *(v49 + 7) = v73;
  *(v49 + 8) = v51;
  v52 = v75;
  *(v49 + 9) = sub_1BD7A8ABC;
  *(v49 + 10) = v52;
  *(v49 + 11) = 0;
  *(v49 + 12) = 0;
  *(v49 + 13) = 0x4014000000000000;
  *&v13[v10[19]] = 0;
  v13[v10[20]] = 1;
  *&v13[v10[21]] = v83;
  sub_1BD0EE8CC(v96, &v13[v10[22]]);
  v13[v10[23]] = 1;
  v53 = &v13[v10[25]];
  *v53 = sub_1BD7A8B1C;
  *(v53 + 1) = v36;
  sub_1BD0EE8CC(v96, v92);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38998);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51FF0);
  if (swift_dynamicCast())
  {
    sub_1BD043990(v90, v93);
    v54 = v94;
    v55 = v95;
    __swift_project_boxed_opaque_existential_1(v93, v94);
    (*(v55 + 56))(v92, v54, v55);
    sub_1BD0DE53C(v42, &qword_1EBD53338);
    __swift_destroy_boxed_opaque_existential_0(v96);
    v13[v10[24]] = v92[0];
    __swift_destroy_boxed_opaque_existential_0(v93);
  }

  else
  {
    sub_1BD0DE53C(v42, &qword_1EBD53338);
    __swift_destroy_boxed_opaque_existential_0(v96);
    v91 = 0;
    memset(v90, 0, sizeof(v90));
    sub_1BD0DE53C(v90, &qword_1EBD389A0);
    v13[v10[24]] = 2;
  }

  v56 = v77;
  sub_1BD7A8BD8(v13, v77);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51F80);
  v57 = v81;
  sub_1BE0516C4();
  sub_1BD0DE4F4(&qword_1EBD53388, &qword_1EBD53340);
  v58 = v78;
  sub_1BE050704();
  sub_1BD0DE53C(v96, &qword_1EBD51FA0);
  sub_1BD0DE53C(v56, &qword_1EBD53340);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53390);
  v60 = v82;
  sub_1BE04C924();
  v61 = v57;
  v62 = v86;
  sub_1BD7A8900(v61, v86);
  v63 = v76;
  v64 = swift_allocObject();
  sub_1BD7A8964(v62, v64 + v63);
  result = (*(v79 + 32))(v60, v58, v80);
  v66 = (v60 + *(v59 + 56));
  *v66 = sub_1BD7A8EEC;
  v66[1] = v64;
  return result;
}

uint64_t sub_1BD7A83F0()
{
  result = [*(*(v0 + 48) + *((*MEMORY[0x1E69E7D40] & **(v0 + 48)) + 0xD0)) paymentRequest];
  if (result)
  {
    v2 = result;
    v3 = 0x796150656C707041;
    v4 = [result virtualCardEnrollmentRequest];

    if (v4)
    {
      v5 = [v4 isPeerPaymentPass];

      if (v5)
      {
        return 0x736143656C707041;
      }
    }

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BD7A8514()
{
  sub_1BD7A8788();
  if (v0 <= 0x3F)
  {
    sub_1BD0EDF50();
    if (v1 <= 0x3F)
    {
      sub_1BD0EDFE4();
      if (v2 <= 0x3F)
      {
        sub_1BD7A881C(319, &qword_1EBD53330, type metadata accessor for VirtualCardAuthorizationModel, type metadata accessor for PaymentAuthorizationStateMachineWrapper);
        if (v3 <= 0x3F)
        {
          sub_1BD7A8880(319, &qword_1EBD388E0, &qword_1EBD51EC0, &unk_1BE0B7120, MEMORY[0x1E6981790]);
          if (v4 <= 0x3F)
          {
            sub_1BD0EE078(319, &unk_1EBD59650, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
            if (v5 <= 0x3F)
            {
              sub_1BD7A881C(319, &qword_1EBD388F8, MEMORY[0x1E69BC9D0], MEMORY[0x1E697DCC0]);
              if (v6 <= 0x3F)
              {
                sub_1BD0EE078(319, &qword_1EBD59660, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
                if (v7 <= 0x3F)
                {
                  sub_1BD7A881C(319, &qword_1EBD38900, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
                  if (v8 <= 0x3F)
                  {
                    sub_1BD7A8880(319, &qword_1EBD38908, &qword_1EBD38898, &unk_1BE0B72C0, MEMORY[0x1E697DCC0]);
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

void sub_1BD7A8788()
{
  if (!qword_1EBD53328)
  {
    type metadata accessor for VirtualCardAuthorizationModel();
    sub_1BD7A8B90(&qword_1EBD53310, type metadata accessor for VirtualCardAuthorizationModel);
    v0 = sub_1BE04E984();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD53328);
    }
  }
}

void sub_1BD7A881C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1BD7A8880(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1BD7A8900(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VirtualCardSheet();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD7A8964(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VirtualCardSheet();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD7A89D8()
{
  result = qword_1EBD53360;
  if (!qword_1EBD53360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4DCC8);
    sub_1BD0DE4F4(&qword_1EBD53368, &qword_1EBD53370);
    sub_1BD0DE4F4(&unk_1EBD36700, &unk_1EBD596C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD53360);
  }

  return result;
}

id sub_1BD7A8B20()
{
  type metadata accessor for VirtualCardSheet();
  sub_1BD6B2184(1, 1u, 0);
  return sub_1BD7429E4();
}

uint64_t sub_1BD7A8B90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD7A8BD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53340);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_90()
{
  v1 = type metadata accessor for VirtualCardSheet();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  if (*(v2 + 80))
  {
    __swift_destroy_boxed_opaque_existential_0(v2 + 56);
  }

  v3 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D540);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1BE04C884();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  sub_1BD0D4604(*(v2 + v1[11]), *(v2 + v1[11] + 8));
  v5 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38880);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1BE04EB24();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  v7 = v1[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38888);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1BE04FD04();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v2 + v7, 1, v8))
    {
      (*(v9 + 8))(v2 + v7, v8);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD7A8EEC(uint64_t a1)
{
  type metadata accessor for VirtualCardSheet();

  return sub_1BD0EBE44(a1);
}

uint64_t sub_1BD7A8F8C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  v9 = a2;
  sub_1BE048964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41C00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD533C0);
  sub_1BD0DE4F4(&qword_1EBD53410, &qword_1EBD41C00);
  sub_1BD7A9D6C();
  sub_1BD7AB7B0();
  return sub_1BE0519D4();
}

uint64_t sub_1BD7A9104(uint64_t a1)
{
  v1 = *(a1 + 16);
  v17[0] = *a1;
  v17[1] = v1;
  v18 = *(a1 + 32);
  v19 = *(a1 + 48);
  v2 = sub_1BE04F7C4();
  v13 = 0;
  sub_1BD7A94D4(v17, &v14);
  v20 = v14;
  v21 = *v15;
  v22 = *&v15[16];
  v23 = *&v15[32];
  v24[0] = v14;
  v24[1] = *v15;
  v24[2] = *&v15[16];
  v24[3] = *&v15[32];
  sub_1BD0DE19C(&v20, &v9, &qword_1EBD53420);
  sub_1BD0DE53C(v24, &qword_1EBD53420);
  *&v12[55] = v23;
  *&v12[39] = v22;
  *&v12[23] = v21;
  *&v12[7] = v20;
  v14 = v2;
  v15[0] = v13;
  *&v15[1] = *v12;
  *&v16[15] = *(&v23 + 1);
  *v16 = *&v12[48];
  *&v15[33] = *&v12[32];
  *&v15[17] = *&v12[16];
  if (*(&v18 + 1))
  {
    v9 = v18;
    sub_1BD0DDEBC();
    sub_1BE048C84();
    v3 = sub_1BE0506C4();
    v7 = v6 & 1;
  }

  else
  {
    v3 = 0;
    v4 = 0;
    v7 = 0;
    v5 = 0;
  }

  *&v9 = v3;
  *(&v9 + 1) = v4;
  v10 = v7;
  v11 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD533D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD533E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39E98);
  sub_1BD0DE4F4(&qword_1EBD533C8, &qword_1EBD533D0);
  sub_1BD7A9E64(&qword_1EBD533D8, &qword_1EBD533E0, &unk_1BE0F7E18, sub_1BD7A9EE0);
  sub_1BD12E194();
  return sub_1BE051A34();
}

uint64_t sub_1BD7A9388(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = a4;
  v9[5] = a5;
  sub_1BE048C84();
  v10 = a3;
  sub_1BE048964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53428);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD533F0);
  sub_1BD0DE4F4(&qword_1EBD53430, &qword_1EBD53428);
  sub_1BD7A9EE0();
  sub_1BD7ABAAC();
  return sub_1BE0519D4();
}

id sub_1BD7A94D4@<X0>(uint64_t *a1@<X4>, uint64_t *a2@<X8>)
{
  v4 = a1[1];
  v48 = *a1;
  v53 = v4;
  v5 = a1[3];
  v49 = a1[2];
  v50 = v5;
  v6 = a1[5];
  v51 = a1[4];
  v52 = v6;
  v47 = a1[6];
  v46 = sub_1BE04BD74();
  v45 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46, v7);
  v43 = &v41[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9, v10);
  v44 = &v41[-v11];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if (!*(v56[0] + 16))
  {

    v12 = 0;
    goto LABEL_7;
  }

  v12 = *(v56[0] + 32);
  v13 = *(v56[0] + 40);
  v14 = *(v56[0] + 48);
  v15 = *(v56[0] + 56);
  v17 = *(v56[0] + 64);
  v16 = *(v56[0] + 72);
  v18 = *(v56[0] + 80);
  sub_1BE048C84();
  sub_1BE048C84();
  sub_1BE048C84();
  sub_1BE048C84();

  if (!v13)
  {
LABEL_7:
    v19 = v53;
    if (!v53)
    {
      sub_1BD7AB814(a1, v56);
      sub_1BD7AB870(v12, 0);
      goto LABEL_13;
    }

    v13 = 0;
    goto LABEL_9;
  }

  v19 = v53;
  if (!v53)
  {
LABEL_9:
    sub_1BD7AB814(a1, v56);
    sub_1BD7AB870(v12, v13);
    sub_1BD7AB870(v48, v19);
LABEL_10:
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 1;
    v24 = a1[3];
    if (!v24)
    {
LABEL_16:
      v25 = 0;
      v30 = 0;
      v28 = 0;
      goto LABEL_17;
    }

LABEL_11:
    v54[0] = a1[2];
    v54[1] = v24;
    sub_1BD0DDEBC();
    sub_1BE048C84();
    v25 = sub_1BE0506C4();
    v24 = v26;
    v28 = v27;
    v30 = v29 & 1;
    sub_1BD0D7F18(v25, v26, v29 & 1);
    sub_1BE048C84();
LABEL_17:
    sub_1BD7AB8D4(v20, v23);
    sub_1BD1969AC(v25, v24, v30, v28);
    sub_1BD1969F0(v25, v24, v30, v28);
    *a2 = v20;
    a2[1] = v23;
    a2[2] = v21;
    a2[3] = v22;
    a2[4] = v25;
    a2[5] = v24;
    a2[6] = v30;
    a2[7] = v28;
    sub_1BD1969F0(v25, v24, v30, v28);
    return sub_1BD7AB91C(v20, v23);
  }

  v56[0] = v48;
  v56[1] = v53;
  v56[2] = v49;
  v56[3] = v50;
  v56[4] = v51;
  v56[5] = v52;
  v56[6] = v47;
  v55[0] = v12;
  v55[1] = v13;
  v55[2] = v14;
  v55[3] = v15;
  v55[4] = v17;
  v55[5] = v16;
  v55[6] = v18;
  sub_1BD7AB814(a1, v54);
  sub_1BD7AB964(v12, v13);
  v42 = sub_1BD314FC4(v55, v56);
  sub_1BD7AB870(v48, v53);
  sub_1BD7AB870(v12, v13);
  sub_1BD7AB870(v12, v13);
  if (!v42)
  {
    goto LABEL_10;
  }

LABEL_13:
  v31 = *MEMORY[0x1E69B80B0];
  v32 = v45;
  v33 = v44;
  v34 = v46;
  v53 = *(v45 + 104);
  v53(v44, v31, v46);
  result = PKPassKitBundle();
  if (result)
  {
    v36 = result;
    v20 = sub_1BE04B6F4();
    v23 = v37;

    v52 = *(v32 + 8);
    v52(v33, v34);
    v38 = v43;
    v53(v43, v31, v34);
    result = PKPassKitBundle();
    if (result)
    {
      v39 = result;
      v21 = sub_1BE04B6F4();
      v22 = v40;

      v52(v38, v34);
      v24 = a1[3];
      if (!v24)
      {
        goto LABEL_16;
      }

      goto LABEL_11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD7A9AC0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE04E2E4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD533A0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v17[-v11];
  v13 = v1[3];
  v18 = *v1;
  v19 = *(v1 + 1);
  v20 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD533A8);
  sub_1BD7A9E64(&qword_1EBD533B0, &qword_1EBD533A8, &unk_1BE0F7E00, sub_1BD7A9D6C);
  sub_1BE0504E4();
  (*(v4 + 104))(v7, *MEMORY[0x1E697DAD8], v3);
  sub_1BD0DE4F4(&qword_1EBD53400, &qword_1EBD533A0);
  sub_1BE050B84();
  (*(v4 + 8))(v7, v3);
  (*(v9 + 8))(v12, v8);
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53408);
  v16 = a1 + *(result + 36);
  *v16 = KeyPath;
  *(v16 + 8) = 0x4028000000000000;
  *(v16 + 16) = 0;
  return result;
}

unint64_t sub_1BD7A9D6C()
{
  result = qword_1EBD533B8;
  if (!qword_1EBD533B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD533C0);
    sub_1BD0DE4F4(&qword_1EBD533C8, &qword_1EBD533D0);
    sub_1BD7A9E64(&qword_1EBD533D8, &qword_1EBD533E0, &unk_1BE0F7E18, sub_1BD7A9EE0);
    sub_1BD12E194();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD533B8);
  }

  return result;
}

uint64_t sub_1BD7A9E64(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BD7A9EE0()
{
  result = qword_1EBD533E8;
  if (!qword_1EBD533E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD533F0);
    sub_1BD7A9F98();
    sub_1BD0DE4F4(&unk_1EBD3FB30, &qword_1EBD397A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD533E8);
  }

  return result;
}

unint64_t sub_1BD7A9F98()
{
  result = qword_1EBD533F8;
  if (!qword_1EBD533F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD533F8);
  }

  return result;
}

__n128 sub_1BD7A9FEC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53470);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = v19 - v12;
  *v13 = sub_1BE04F7B4();
  *(v13 + 1) = 0;
  v13[16] = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53478);
  sub_1BD7AA168(a1, a2, a3, a4, &v13[*(v14 + 44)]);
  sub_1BE051CD4();
  sub_1BE04EE54();
  sub_1BD0DE204(v13, a5, &qword_1EBD53470);
  v15 = a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53480) + 36);
  v16 = v19[5];
  *(v15 + 64) = v19[4];
  *(v15 + 80) = v16;
  *(v15 + 96) = v19[6];
  v17 = v19[1];
  *v15 = v19[0];
  *(v15 + 16) = v17;
  result = v19[3];
  *(v15 + 32) = v19[2];
  *(v15 + 48) = result;
  return result;
}

void sub_1BD7AA168(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v110 = a4;
  v101 = a3;
  v100 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53488);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v118 = &v100 - v10;
  v11 = sub_1BE050404();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51268);
  MEMORY[0x1EEE9AC00](v116, v16);
  v117 = &v100 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v100 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53490);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v113 = &v100 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v112 = &v100 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v111 = &v100 - v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v119 = &v100 - v33;
  v34 = sub_1BE052404();
  v35 = PKUIImageNamed(v34);

  if (v35)
  {
    v109 = a5;
    v108 = sub_1BE051544();
    sub_1BE051CD4();
    sub_1BE04E5E4();
    v107 = v122;
    v106 = v123;
    v105 = v124;
    v104 = v125;
    v103 = v126;
    v102 = v127;
    v114 = v8;
    v115 = v7;
    if (a2)
    {
      v120 = v100;
      v121 = a2;
      sub_1BD0DDEBC();
      sub_1BE048C84();
      v36 = sub_1BE0506C4();
      v38 = v37;
      v40 = v39;
      sub_1BE050294();
      (*(v12 + 104))(v15, *MEMORY[0x1E6980EA8], v11);
      sub_1BE050434();

      (*(v12 + 8))(v15, v11);
      v41 = sub_1BE0505F4();
      v43 = v42;
      v45 = v44;

      sub_1BD0DDF10(v36, v38, v40 & 1);

      sub_1BE050364();
      v46 = sub_1BE050544();
      v48 = v47;
      v50 = v49;
      sub_1BD0DDF10(v41, v43, v45 & 1);

      sub_1BE051464();
      v51 = sub_1BE050564();
      v53 = v52;
      v55 = v54;
      v57 = v56;

      v58 = v50 & 1;
      v59 = v114;
      sub_1BD0DDF10(v46, v48, v58);

      KeyPath = swift_getKeyPath();
      v61 = &v21[*(v116 + 36)];
      v62 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD386C0) + 28);
      v63 = sub_1BE0505C4();
      (*(*(v63 - 8) + 56))(v61 + v62, 1, 1, v63);
      *v61 = swift_getKeyPath();
      *v21 = v51;
      *(v21 + 1) = v53;
      v21[16] = v55 & 1;
      *(v21 + 3) = v57;
      *(v21 + 4) = KeyPath;
      v21[40] = 1;
      v7 = v115;
      v64 = v117;
      sub_1BD0DE19C(v21, v117, &qword_1EBD51268);
      v65 = v118;
      sub_1BD0DE19C(v64, v118, &qword_1EBD51268);
      v66 = v65 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD534A0) + 48);
      *v66 = 0x402E000000000000;
      *(v66 + 8) = 0;
      sub_1BD0DE53C(v21, &qword_1EBD51268);
      sub_1BD0DE53C(v64, &qword_1EBD51268);
      v67 = v119;
      sub_1BD0DE204(v65, v119, &qword_1EBD53488);
      v68 = *(v59 + 56);
      v68(v67, 0, 1, v7);
    }

    else
    {
      v68 = *(v8 + 56);
      v68(v119, 1, 1, v7);
    }

    if (v110)
    {
      v120 = v101;
      v121 = v110;
      sub_1BD0DDEBC();
      sub_1BE048C84();
      v69 = sub_1BE0506C4();
      v71 = v70;
      v73 = v72;
      sub_1BE050324();
      v74 = sub_1BE0505F4();
      v76 = v75;
      v78 = v77;

      sub_1BD0DDF10(v69, v71, v73 & 1);

      sub_1BE051494();
      v79 = sub_1BE050564();
      v81 = v80;
      LOBYTE(v69) = v82;
      v84 = v83;

      sub_1BD0DDF10(v74, v76, v78 & 1);

      v85 = swift_getKeyPath();
      v86 = &v21[*(v116 + 36)];
      v87 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD386C0) + 28);
      v88 = sub_1BE0505C4();
      (*(*(v88 - 8) + 56))(v86 + v87, 1, 1, v88);
      *v86 = swift_getKeyPath();
      *v21 = v79;
      *(v21 + 1) = v81;
      v21[16] = v69 & 1;
      *(v21 + 3) = v84;
      *(v21 + 4) = v85;
      v21[40] = 1;
      v89 = v117;
      sub_1BD0DE19C(v21, v117, &qword_1EBD51268);
      v90 = v118;
      sub_1BD0DE19C(v89, v118, &qword_1EBD51268);
      v91 = v90 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD534A0) + 48);
      *v91 = 0x403A000000000000;
      *(v91 + 8) = 0;
      sub_1BD0DE53C(v21, &qword_1EBD51268);
      sub_1BD0DE53C(v89, &qword_1EBD51268);
      v92 = v111;
      sub_1BD0DE204(v90, v111, &qword_1EBD53488);
      (*(v114 + 56))(v92, 0, 1, v115);
    }

    else
    {
      v92 = v111;
      v68(v111, 1, 1, v7);
    }

    v93 = v119;
    v94 = v112;
    sub_1BD0DE19C(v119, v112, &qword_1EBD53490);
    v95 = v113;
    sub_1BD0DE19C(v92, v113, &qword_1EBD53490);
    v96 = v109;
    v97 = v107;
    *v109 = v108;
    v96[1] = v97;
    *(v96 + 16) = v106;
    v96[3] = v105;
    *(v96 + 32) = v104;
    v98 = v102;
    v96[5] = v103;
    v96[6] = v98;
    v96[7] = 0x4034000000000000;
    *(v96 + 64) = 0;
    v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53498);
    sub_1BD0DE19C(v94, v96 + *(v99 + 64), &qword_1EBD53490);
    sub_1BD0DE19C(v95, v96 + *(v99 + 80), &qword_1EBD53490);
    sub_1BE048964();
    sub_1BD0DE53C(v92, &qword_1EBD53490);
    sub_1BD0DE53C(v93, &qword_1EBD53490);
    sub_1BD0DE53C(v95, &qword_1EBD53490);
    sub_1BD0DE53C(v94, &qword_1EBD53490);
  }

  else
  {
    __break(1u);
  }
}

id sub_1BD7AAB8C()
{
  v1 = [objc_allocWithZone(PKDashboardPassMessage) init];
  v2 = sub_1BE052404();
  [v1 setIdentifier_];

  if (*(v0 + 24))
  {
    v3 = sub_1BE052404();
  }

  else
  {
    v3 = 0;
  }

  [v1 setTitle_];

  if (*(v0 + 40))
  {
    v4 = sub_1BE052404();
  }

  else
  {
    v4 = 0;
  }

  [v1 setMessage_];

  if (*(v0 + 56))
  {
    v5 = *(v0 + 64);
    if (v5)
    {
      v6 = v5;
      v7 = sub_1BE052404();
      v8 = [objc_opt_self() systemImageNamed_];

      if (v8)
      {
        v9 = [v8 imageWithTintColor:v6 renderingMode:1];
      }

      else
      {
        v9 = 0;
      }

      [v1 setMessageImage_];
    }
  }

  v10 = *(v0 + 112);
  if (v10)
  {
    v11 = sub_1BE052404();
  }

  else
  {
    v11 = 0;
  }

  [v1 setButtonTitle_];

  [v1 setShowDisclosure_];
  v12 = *(v0 + 72);
  v13 = *(v0 + 80);
  if (v12)
  {
    v14 = objc_allocWithZone(PKDashboardPassMessageImageDescriptorImageAsset);
    v15 = v12;
    v16 = [v14 initWithImage:v15 tintColor:0 backgroundColor:v13];
    [v1 setImageDescriptor_];
  }

  [v1 setStrokeImage_];
  if ((*(v0 + 96) & 1) == 0)
  {
    [v1 setImageContentMode_];
  }

  return v1;
}

double sub_1BD7AAE00@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1BE04F7B4();
  v33 = 0;
  sub_1BD7AAFF4(a1, a2, &v17);
  v46 = v29;
  v47 = v30;
  v48 = v31;
  v42 = v25;
  v43 = v26;
  v44 = v27;
  v45 = v28;
  v38 = v21;
  v39 = v22;
  v40 = v23;
  v41 = v24;
  v34 = v17;
  v35 = v18;
  v36 = v19;
  v37 = v20;
  v49[12] = v29;
  v49[13] = v30;
  v49[14] = v31;
  v49[8] = v25;
  v49[9] = v26;
  v49[11] = v28;
  v49[10] = v27;
  v49[4] = v21;
  v49[5] = v22;
  v49[7] = v24;
  v49[6] = v23;
  v49[0] = v17;
  v49[1] = v18;
  v49[2] = v19;
  v49[3] = v20;
  sub_1BD0DE19C(&v34, &v16, &qword_1EBD53460);
  sub_1BD0DE53C(v49, &qword_1EBD53460);
  *&v32[183] = v45;
  *&v32[199] = v46;
  *&v32[215] = v47;
  *&v32[231] = v48;
  *&v32[119] = v41;
  *&v32[135] = v42;
  *&v32[151] = v43;
  *&v32[167] = v44;
  *&v32[55] = v37;
  *&v32[71] = v38;
  *&v32[87] = v39;
  *&v32[103] = v40;
  *&v32[7] = v34;
  *&v32[23] = v35;
  *&v32[39] = v36;
  v7 = *&v32[208];
  *(a3 + 209) = *&v32[192];
  *(a3 + 225) = v7;
  *(a3 + 241) = *&v32[224];
  v8 = *&v32[144];
  *(a3 + 145) = *&v32[128];
  *(a3 + 161) = v8;
  v9 = *&v32[176];
  *(a3 + 177) = *&v32[160];
  *(a3 + 193) = v9;
  v10 = *&v32[80];
  *(a3 + 81) = *&v32[64];
  *(a3 + 97) = v10;
  v11 = *&v32[112];
  *(a3 + 113) = *&v32[96];
  *(a3 + 129) = v11;
  v12 = *&v32[16];
  *(a3 + 17) = *v32;
  *(a3 + 33) = v12;
  result = *&v32[32];
  v14 = *&v32[48];
  *(a3 + 49) = *&v32[32];
  v15 = v33;
  *a3 = v6;
  *(a3 + 8) = 0;
  *(a3 + 16) = v15;
  *(a3 + 256) = *&v32[239];
  *(a3 + 65) = v14;
  return result;
}

void sub_1BD7AAFF4(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 112))
  {
    v5 = a1;
    v6 = sub_1BE0513E4();
    PKUIPixelLength();
    sub_1BE051CD4();
    sub_1BE04E5E4();
    *&v50[6] = v99;
    *&v50[22] = v100;
    *&v50[38] = v101;
    sub_1BE051CD4();
    sub_1BE04EE54();
    v7 = sub_1BE050204();
    sub_1BE04E1F4();
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v51 = 0;
    *v40 = v6;
    *&v40[8] = 256;
    *&v40[10] = *v50;
    *&v40[26] = *&v50[16];
    *&v40[42] = *&v50[32];
    *&v40[56] = *(&v101 + 1);
    v41 = v33;
    v42 = v34;
    v46 = v38;
    v47 = v39;
    v44 = v36;
    v45 = v37;
    v43 = v35;
    LOBYTE(v48) = v7;
    *(&v48 + 1) = v8;
    *v49 = v10;
    *&v49[8] = v12;
    *&v49[16] = v14;
    v49[24] = 0;
    v70 = *v40;
    v71 = *&v40[16];
    v74 = v33;
    v75 = v34;
    v72 = *&v40[32];
    v73 = *&v40[48];
    v78 = v37;
    v79 = v38;
    v76 = v35;
    v77 = v36;
    *&v82[9] = *&v49[9];
    v81 = v48;
    *v82 = *v49;
    v80 = v39;
    v16 = v5;
    sub_1BD0DE19C(v40, &v102, &qword_1EBD3BAB8);
    v54 = *v50;
    v55 = *&v50[16];
    *v56 = *&v50[32];
    v60 = v36;
    v61 = v37;
    v62 = v38;
    v63 = v39;
    v57 = v33;
    v58 = v34;
    v52 = v6;
    v53 = 256;
    *&v56[14] = *&v50[46];
    v59 = v35;
    v64 = v7;
    v65 = v9;
    v66 = v11;
    v67 = v13;
    v68 = v15;
    v69 = 0;
    sub_1BD0DE53C(&v52, &qword_1EBD3BAB8);
    v94 = v80;
    v95 = v81;
    v96 = *v82;
    v97 = *&v82[16];
    v90 = v76;
    v91 = v77;
    v92 = v78;
    v93 = v79;
    v86 = v72;
    v87 = v73;
    v88 = v74;
    v89 = v75;
    v84 = v70;
    v85 = v71;
    v98 = v16;
    PKEdgeInsetsMake(&v84, v17);
    v114 = v96;
    v115 = v97;
    v116 = v98;
    v110 = v92;
    v111 = v93;
    v113 = v95;
    v112 = v94;
    v106 = v88;
    v107 = v89;
    v109 = v91;
    v108 = v90;
    v102 = v84;
    v103 = v85;
    v105 = v87;
    v104 = v86;
  }

  else
  {
    sub_1BD2FA3D8(&v102);
    v18 = a1;
  }

  v19 = v114;
  v96 = v114;
  v97 = v115;
  v20 = v110;
  v92 = v110;
  v93 = v111;
  v21 = v112;
  v95 = v113;
  v94 = v112;
  v22 = v106;
  v88 = v106;
  v89 = v107;
  v23 = v108;
  v90 = v108;
  v91 = v109;
  v24 = v102;
  v84 = v102;
  v85 = v103;
  v25 = v104;
  v86 = v104;
  v87 = v105;
  v26 = v115;
  *v82 = v114;
  *&v82[16] = v115;
  v27 = v111;
  v78 = v110;
  v79 = v111;
  v80 = v112;
  v81 = v113;
  v28 = v107;
  v74 = v106;
  v75 = v107;
  v29 = v109;
  v76 = v108;
  v77 = v109;
  v30 = v103;
  v70 = v102;
  v71 = v103;
  v31 = v105;
  v72 = v104;
  v73 = v105;
  *(a3 + 184) = v113;
  *(a3 + 200) = v19;
  *(a3 + 216) = v26;
  *(a3 + 120) = v29;
  *(a3 + 136) = v20;
  *(a3 + 152) = v27;
  *(a3 + 168) = v21;
  *(a3 + 56) = v31;
  *(a3 + 72) = v22;
  *(a3 + 88) = v28;
  *(a3 + 104) = v23;
  *(a3 + 8) = v24;
  *(a3 + 24) = v30;
  v98 = v116;
  v83 = v116;
  *a3 = a1;
  *(a3 + 232) = v116;
  *(a3 + 40) = v25;
  v32 = a1;
  sub_1BD0DE19C(&v70, &v52, &qword_1EBD53468);
  sub_1BD0DE53C(&v84, &qword_1EBD53468);
}

uint64_t sub_1BD7AB4A0@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[5];
  v4 = v1[7];
  v28 = v1[6];
  *v29 = v4;
  *&v29[16] = v1[8];
  v5 = v1[1];
  v6 = v1[3];
  v24 = v1[2];
  v25 = v6;
  v7 = v1[5];
  v8 = v1[3];
  v26 = v1[4];
  v27 = v7;
  v9 = v1[1];
  v22 = *v1;
  v23 = v9;
  v35 = v26;
  v36 = v3;
  v37 = v28;
  v31 = v22;
  v32 = v5;
  v30 = *(v1 + 18);
  v38 = *(v1 + 14);
  v33 = v24;
  v34 = v8;
  v20 = *&v29[8];
  v39 = *&v29[8];
  v10 = sub_1BD7AAB8C();
  v11 = swift_allocObject();
  v12 = *v29;
  *(v11 + 112) = v28;
  *(v11 + 128) = v12;
  *(v11 + 144) = *&v29[16];
  *(v11 + 160) = v30;
  v13 = v25;
  *(v11 + 48) = v24;
  *(v11 + 64) = v13;
  v14 = v27;
  *(v11 + 80) = v26;
  *(v11 + 96) = v14;
  v15 = v23;
  *(v11 + 16) = v22;
  *(v11 + 32) = v15;
  sub_1BD7ABCE8(&v22, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53448);
  sub_1BD0DE4F4(&qword_1EBD53450, &qword_1EBD53448);
  sub_1BE051704();

  KeyPath = swift_getKeyPath();
  v17 = swift_allocObject();
  *(v17 + 16) = v20 == 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53458);
  v19 = (a1 + *(result + 36));
  *v19 = KeyPath;
  v19[1] = sub_1BD10DF54;
  v19[2] = v17;
  return result;
}

uint64_t sub_1BD7AB6AC@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  *a1 = v3;
  return result;
}

uint64_t sub_1BD7AB72C(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048C84();
  v3 = v2;
  return sub_1BE04D8C4();
}

unint64_t sub_1BD7AB7B0()
{
  result = qword_1EBD53418;
  if (!qword_1EBD53418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD53418);
  }

  return result;
}

uint64_t sub_1BD7AB870(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1BD7AB8D4(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
    sub_1BE048C84();

    return sub_1BE048C84();
  }

  return result;
}

uint64_t sub_1BD7AB91C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1BD7AB964(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1BE048C84();
    sub_1BE048C84();
    sub_1BE048C84();

    return sub_1BE048C84();
  }

  return result;
}

uint64_t objectdestroyTm_91()
{

  return swift_deallocObject();
}

uint64_t sub_1BD7ABA08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 80);
  v4 = *(a1 + 112);
  v24 = *(a1 + 96);
  v25 = v4;
  v5 = *(a1 + 16);
  v6 = *(a1 + 48);
  v20 = *(a1 + 32);
  v7 = v20;
  v21 = v6;
  v8 = *(a1 + 48);
  v9 = *(a1 + 80);
  v22 = *(a1 + 64);
  v10 = v22;
  v23 = v9;
  v11 = *(a1 + 16);
  v19[0] = *a1;
  v12 = v19[0];
  v19[1] = v11;
  v13 = *(a1 + 112);
  *(a2 + 96) = v24;
  *(a2 + 112) = v13;
  *(a2 + 32) = v7;
  *(a2 + 48) = v8;
  *(a2 + 64) = v10;
  *(a2 + 80) = v3;
  v14 = *(v2 + 32);
  v15 = *(v2 + 40);
  v26 = *(a1 + 128);
  v16 = *(a1 + 128);
  *a2 = v12;
  *(a2 + 16) = v5;
  *(a2 + 128) = v16;
  *(a2 + 136) = v14;
  *(a2 + 144) = v15;
  *(a2 + 152) = 0u;
  *(a2 + 168) = 0u;
  *(a2 + 184) = 0;
  sub_1BD31435C(v19, &v18);
  return sub_1BE048964();
}

unint64_t sub_1BD7ABAAC()
{
  result = qword_1EBD53438;
  if (!qword_1EBD53438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD53438);
  }

  return result;
}

unint64_t sub_1BD7ABB20()
{
  result = qword_1EBD53440;
  if (!qword_1EBD53440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD53408);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD533A0);
    sub_1BD0DE4F4(&qword_1EBD53400, &qword_1EBD533A0);
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD3A8A0, &qword_1EBD3A8A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD53440);
  }

  return result;
}

uint64_t sub_1BD7ABC80()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 128);
  v7[6] = *(v0 + 112);
  v7[7] = v2;
  v8 = *(v0 + 144);
  v3 = *(v0 + 64);
  v7[2] = *(v0 + 48);
  v7[3] = v3;
  v4 = *(v0 + 96);
  v7[4] = *(v0 + 80);
  v7[5] = v4;
  v5 = *(v0 + 32);
  v7[0] = *(v0 + 16);
  v7[1] = v5;
  return v1(v7);
}

unint64_t sub_1BD7ABD20()
{
  result = qword_1EBD534A8;
  if (!qword_1EBD534A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD53458);
    sub_1BD0DE4F4(&qword_1EBD534B0, &qword_1EBD534B8);
    sub_1BD0DE4F4(&unk_1EBD366D0, &unk_1EBD511D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD534A8);
  }

  return result;
}

unint64_t sub_1BD7ABE04()
{
  result = qword_1EBD534C0;
  if (!qword_1EBD534C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD53480);
    sub_1BD0DE4F4(&qword_1EBD534C8, &qword_1EBD53470);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD534C0);
  }

  return result;
}

id FinanceKitSpendingSummariesViewControllerProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FinanceKitSpendingSummariesViewControllerProvider.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FinanceKitSpendingSummariesViewControllerProvider();
  return objc_msgSendSuper2(&v2, sel_init);
}

id FinanceKitSpendingSummariesViewControllerProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FinanceKitSpendingSummariesViewControllerProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id _s9PassKitUI07FinanceB39SpendingSummariesViewControllerProviderC04makegH04with010navigationH0So06UIViewH0CAA0dbe11SummaryDataI7WrapperC_So012UINavigationH0CtFZ_0(uint64_t a1, void *a2)
{
  v3 = sub_1BE048964();
  sub_1BD740AB0(v3, v10);

  type metadata accessor for NavigationController();
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  sub_1BD51DBA8();
  v5 = a2;
  v11 = sub_1BE04D804();
  v12 = v4;
  v6 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD534D0));
  v7 = sub_1BE04F894();
  v8 = [v7 navigationItem];
  [v8 setLargeTitleDisplayMode_];

  return v7;
}

id AppleCardFeaturesAndBenefitsViewController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AppleCardFeaturesAndBenefitsViewController.init()()
{
  *&v0[OBJC_IVAR___PKAppleCardFeaturesAndBenefitsViewController_dataManager] = [objc_allocWithZone(type metadata accessor for AppleCardFeaturesAndBenefitsManager()) init];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppleCardFeaturesAndBenefitsViewController();
  return objc_msgSendSuper2(&v2, sel_initWithNibName_bundle_, 0, 0);
}

void sub_1BD7AC298()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR___PKAppleCardFeaturesAndBenefitsViewController_dataManager];
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for AppleCardFeaturesAndBenefitsManager();
  sub_1BD7AC490();
  v4 = v2;
  v8 = sub_1BE04E954();
  v9 = v5;
  v10 = v3;
  v6 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD534E8));
  v7 = sub_1BE04EAC4();
  [v1 setView_];
}

void sub_1BD7AC37C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(a1 + 120);
    if (v4)
    {
      v5 = swift_allocObject();
      v6 = *(a1 + 112);
      *(v5 + 112) = *(a1 + 96);
      *(v5 + 128) = v6;
      v7 = *(a1 + 128);
      v8 = *(a1 + 48);
      *(v5 + 48) = *(a1 + 32);
      *(v5 + 64) = v8;
      v9 = *(a1 + 80);
      *(v5 + 80) = *(a1 + 64);
      *(v5 + 96) = v9;
      v10 = *(a1 + 16);
      *(v5 + 16) = *a1;
      *(v5 + 32) = v10;
      *(v5 + 144) = v7;
      *(v5 + 152) = v3;
      sub_1BD0D44B8(v4);
      sub_1BD31435C(a1, &v12);
      v11 = v3;
      v4(sub_1BD7AC74C, v5);

      sub_1BD0D4744(v4);
    }

    else
    {
    }
  }
}

unint64_t sub_1BD7AC490()
{
  result = qword_1EBD534E0;
  if (!qword_1EBD534E0)
  {
    type metadata accessor for AppleCardFeaturesAndBenefitsManager();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD534E0);
  }

  return result;
}

void sub_1BD7AC530(void *a1, uint64_t a2, void *a3)
{
  if (!a1)
  {
    return;
  }

  if (*(a2 + 112))
  {
    v4 = [objc_allocWithZone(PKNavigationController) initWithRootViewController_];
    [a3 presentViewController:v4 animated:1 completion:0];
LABEL_7:

    goto LABEL_8;
  }

  v5 = a1;
  v6 = [a3 navigationController];
  if (v6)
  {
    v4 = v6;
    [v6 pushViewController:v5 animated:1];
    goto LABEL_7;
  }

LABEL_8:
}

id AppleCardFeaturesAndBenefitsViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1BE052404();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id AppleCardFeaturesAndBenefitsViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppleCardFeaturesAndBenefitsViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BD7AC758@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v2 = type metadata accessor for TransferOptionsSheet();
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v35 = v6;
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53510);
  v9 = *(v8 - 8);
  v38 = v8;
  v39 = v9;
  MEMORY[0x1EEE9AC00](v8, v10);
  v37 = v31 - v11;
  v12 = sub_1BD7ACBAC();
  v14 = v13;
  v32 = v1;
  v16 = *(v1 + 40);
  v15 = *(v1 + 48);
  v36 = type metadata accessor for TransferOptionsSheet;
  sub_1BD7B10BC(v1, v7, type metadata accessor for TransferOptionsSheet);
  v33 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v17 = v33;
  v18 = swift_allocObject();
  v34 = type metadata accessor for TransferOptionsSheet;
  sub_1BD7B1124(v7, v18 + v17, type metadata accessor for TransferOptionsSheet);
  *&v49 = sub_1BD7B0464;
  *(&v49 + 1) = v18;
  *&v50 = v12;
  *(&v50 + 1) = v14;
  *&v51 = v16;
  *(&v51 + 1) = v15;
  v52 = 0u;
  v53 = 0u;
  v54 = 0;
  v55[0] = sub_1BD7B0464;
  v55[1] = v18;
  v55[2] = v12;
  v55[3] = v14;
  v55[4] = v16;
  v55[5] = v15;
  v56 = 0u;
  v57 = 0u;
  v58 = 0;
  sub_1BE048964();
  sub_1BD0B4274(&v49, &v59);
  sub_1BD0B42E4(v55);
  v46 = v52;
  v47 = v53;
  v48 = v54;
  v44 = v50;
  v45 = v51;
  v43 = v49;
  v19 = v32;
  v20 = v32 + *(v3 + 56);
  v21 = *v20;
  v22 = *(v20 + 8);
  v41 = v21;
  v42 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516C4();
  v31[1] = v60;
  sub_1BD7B10BC(v19, v7, v36);
  v23 = v33;
  v24 = swift_allocObject();
  sub_1BD7B1124(v7, v24 + v23, v34);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53518);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53520);
  *&v30 = sub_1BD0DE4F4(&qword_1EBD53528, &qword_1EBD53518);
  *(&v30 + 1) = sub_1BD7B0554();
  v27 = v37;
  sub_1BE050F64();

  v61 = v45;
  v62 = v46;
  v63 = v47;
  v64 = v48;
  v59 = v43;
  v60 = v44;
  sub_1BD0B42E4(&v59);
  sub_1BE052434();
  *&v43 = v25;
  *(&v43 + 1) = v26;
  v44 = v30;
  swift_getOpaqueTypeConformance2();
  v28 = v38;
  sub_1BE050DE4();

  return (*(v39 + 8))(v27, v28);
}

id sub_1BD7ACBAC()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v20 - v8;
  v13 = MEMORY[0x1EEE9AC00](v10, v11);
  v14 = &v20 - v12;
  v15 = *(*v0 + qword_1EBDAB038);
  v16 = *(v2 + 104);
  if (v15 == 3)
  {
    v16(v9, *MEMORY[0x1E69B80E0], v1, v13);
    result = PKPassKitBundle();
    if (result)
    {
      v18 = result;
      v19 = sub_1BE04B6F4();
      v14 = v9;
      goto LABEL_9;
    }

    goto LABEL_11;
  }

  if (v15 == 2)
  {
    v16(&v20 - v12, *MEMORY[0x1E69B80E0], v1, v13);
    result = PKPassKitBundle();
    if (result)
    {
      v18 = result;
      v19 = sub_1BE04B6F4();
LABEL_9:

      (*(v2 + 8))(v14, v1);
      return v19;
    }

    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v16(v5, *MEMORY[0x1E69B8068], v1, v13);
  result = PKPassKitBundle();
  if (result)
  {
    v18 = result;
    v19 = sub_1BE04B6F4();
    v14 = v5;
    goto LABEL_9;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1BD7ACE44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53538);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v18[-v6];
  v19 = a2;
  v20 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53540);
  sub_1BD0DE4F4(&qword_1EBD53548, &qword_1EBD53540);
  sub_1BE0504A4();
  sub_1BE051CD4();
  sub_1BE04EE54();
  v8 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53550) + 36)];
  v9 = v26;
  v8[4] = v25;
  v8[5] = v9;
  v8[6] = v27;
  v10 = v22;
  *v8 = v21;
  v8[1] = v10;
  v11 = v24;
  v8[2] = v23;
  v8[3] = v11;
  v12 = sub_1BE051274();
  v13 = sub_1BE0501D4();
  v14 = sub_1BE051CD4();
  v15 = &v7[*(v4 + 36)];
  *v15 = v12;
  v15[8] = v13;
  *(v15 + 2) = v14;
  *(v15 + 3) = v16;
  sub_1BD7B05E0();
  sub_1BD4CDC28();
  sub_1BD4CDC7C();
  sub_1BE048964();
  sub_1BE050D64();

  return sub_1BD0DE53C(v7, &qword_1EBD53538);
}

uint64_t sub_1BD7AD09C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53578);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53580);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v22 - v18;
  sub_1BD7AD298(a1, &v22 - v18);
  sub_1BD7ADC7C(v11);
  sub_1BD0DE19C(v19, v15, &qword_1EBD53580);
  sub_1BD0DE19C(v11, v7, &qword_1EBD53578);
  sub_1BD0DE19C(v15, a2, &qword_1EBD53580);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53588);
  sub_1BD0DE19C(v7, a2 + *(v20 + 48), &qword_1EBD53578);
  sub_1BD0DE53C(v11, &qword_1EBD53578);
  sub_1BD0DE53C(v19, &qword_1EBD53580);
  sub_1BD0DE53C(v7, &qword_1EBD53578);
  return sub_1BD0DE53C(v15, &qword_1EBD53580);
}

id sub_1BD7AD298@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v81[1] = a1;
  v88 = a2;
  v3 = sub_1BE04BD74();
  v89 = *(v3 - 8);
  v90 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v82 = v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v83 = v81 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD535A8);
  v84 = *(v9 - 8);
  v85 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v81[0] = v81 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD535B0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v87 = v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v91 = (v81 - v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD535B8);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = v81 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v26 = v81 - v25;
  v27 = type metadata accessor for PeerPaymentModel();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = v81 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD535C0);
  MEMORY[0x1EEE9AC00](v32 - 8, v33);
  v86 = v81 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35, v36);
  v92 = v81 - v37;
  v38 = type metadata accessor for TransferOptionsSheet();
  sub_1BD0DE19C(v2 + *(v38 + 40), v26, &qword_1EBD45480);
  if ((*(v28 + 48))(v26, 1, v27) == 1)
  {
    sub_1BD0DE53C(v26, &qword_1EBD45480);
LABEL_6:
    v47 = v90;
    v46 = v91;
    (*(v19 + 56))(v92, 1, 1, v18);
    goto LABEL_7;
  }

  sub_1BD7B1124(v26, v31, type metadata accessor for PeerPaymentModel);
  if (v31[*(v27 + 48)] != 1)
  {
    sub_1BD7B118C(v31, type metadata accessor for PeerPaymentModel);
    goto LABEL_6;
  }

  v97 = sub_1BD7AE168();
  v98 = v39;
  sub_1BD0DDEBC();
  v97 = sub_1BE0506C4();
  v98 = v40;
  v99 = v41 & 1;
  v100 = v42;
  MEMORY[0x1EEE9AC00](v97, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD535E0);
  sub_1BD7B0804();
  sub_1BE051A54();
  v43 = sub_1BE04F794();
  v44 = &v22[*(v18 + 36)];
  *v44 = v43;
  v44[1] = sub_1BD7AEC8C;
  v44[2] = 0;
  v45 = v92;
  sub_1BD7B09A4(v22, v92);
  (*(v19 + 56))(v45, 0, 1, v18);
  sub_1BD7B118C(v31, type metadata accessor for PeerPaymentModel);
  v47 = v90;
  v46 = v91;
LABEL_7:
  v48 = *(v2 + 64);
  v49 = v89;
  if (v48 == 1)
  {
    goto LABEL_16;
  }

  v50 = *(v2 + 80);
  v51 = *(v2 + 72);
  if (v50 && *(v50 + 16))
  {
    sub_1BD3EFCD8(*(v2 + 64), *(v2 + 72));
    sub_1BE048C84();
    sub_1BE048C84();
    sub_1BD17195C(v48, v51);

    goto LABEL_13;
  }

  sub_1BD3EFCD8(*(v2 + 64), *(v2 + 72));
  sub_1BE048C84();
  sub_1BE048C84();
  v52 = PKOslo2024UIUpdatesEnabled();
  sub_1BD17195C(v48, v51);

  if (!v52 || !*(*(v2 + 56) + 16))
  {
LABEL_16:
    v75 = 1;
    v73 = v84;
    v74 = v85;
    goto LABEL_17;
  }

LABEL_13:
  v53 = *(v49 + 104);
  v54 = v83;
  v53(v83, *MEMORY[0x1E69B8068], v47);
  result = PKPassKitBundle();
  if (result)
  {
    v56 = result;
    v57 = sub_1BE04B6F4();
    v59 = v58;

    v91 = *(v49 + 8);
    v91(v54, v47);
    v97 = v57;
    v98 = v59;
    v90 = sub_1BD0DDEBC();
    v97 = sub_1BE0506C4();
    v98 = v60;
    v99 = v61 & 1;
    v100 = v62;
    v63 = v82;
    v53(v82, *MEMORY[0x1E69B80E0], v47);
    result = PKPassKitBundle();
    if (result)
    {
      v64 = result;
      v65 = sub_1BE04B6F4();
      v67 = v66;

      v91(v63, v47);
      v93 = v65;
      v94 = v67;
      v93 = sub_1BE0506C4();
      v94 = v68;
      v95 = v69 & 1;
      v96 = v70;
      MEMORY[0x1EEE9AC00](v93, v68);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD535D0);
      sub_1BD0DE4F4(&qword_1EBD535D8, &qword_1EBD535D0);
      v71 = v81[0];
      sub_1BE051A34();
      v73 = v84;
      v72 = v85;
      (*(v84 + 32))(v46, v71, v85);
      v74 = v72;
      v75 = 0;
LABEL_17:
      (*(v73 + 56))(v46, v75, 1, v74);
      v76 = v92;
      v77 = v86;
      sub_1BD0DE19C(v92, v86, &qword_1EBD535C0);
      v78 = v87;
      sub_1BD0DE19C(v46, v87, &qword_1EBD535B0);
      v79 = v88;
      sub_1BD0DE19C(v77, v88, &qword_1EBD535C0);
      v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD535C8);
      sub_1BD0DE19C(v78, v79 + *(v80 + 48), &qword_1EBD535B0);
      sub_1BD0DE53C(v46, &qword_1EBD535B0);
      sub_1BD0DE53C(v76, &qword_1EBD535C0);
      sub_1BD0DE53C(v78, &qword_1EBD535B0);
      return sub_1BD0DE53C(v77, &qword_1EBD535C0);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1BD7ADC7C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53590);
  v34 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v29 - v10;
  if ((PKOslo2024UIUpdatesEnabled() & 1) == 0)
  {
    v12 = *(v1 + 64);
    if (v12 != 1)
    {
      v33 = a1;
      v14 = *(v1 + 72);
      v13 = *(v1 + 80);
      v15 = *(v1 + 88);
      if (v15)
      {
        if (*(v15 + 16))
        {
          v16 = *MEMORY[0x1E69B80E0];
          v17 = *(v4 + 104);
          LODWORD(v32) = *(v1 + 96);
          v17(v7, v16, v3);
          v30 = v14;
          v31 = v13;
          sub_1BD3EFC88(v12, v14);
          sub_1BE048C84();
          result = PKPassKitBundle();
          if (result)
          {
            v19 = result;
            v20 = sub_1BE04B6F4();
            v32 = v21;

            (*(v4 + 8))(v7, v3);
            *&v35 = v20;
            *(&v35 + 1) = v32;
            sub_1BD0DDEBC();
            v36 = sub_1BE0506C4();
            v37 = v22;
            v38 = v23 & 1;
            v39 = v24;
            v25 = sub_1BD7AFCA0(&v35);
            MEMORY[0x1EEE9AC00](v25, v26);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C548);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53598);
            sub_1BD5CEA78();
            sub_1BD7B0750();
            sub_1BE051A34();
            sub_1BD17195C(v12, v30);
            swift_bridgeObjectRelease_n();

            v27 = v33;
            (*(v34 + 32))(v33, v11, v8);
            return (*(v34 + 56))(v27, 0, 1, v8);
          }

          else
          {
            __break(1u);
          }

          return result;
        }

        sub_1BD3EFC88(v12, *(v1 + 72));
        sub_1BD17195C(v12, v14);
      }

      else
      {
        sub_1BD3EFCD8(v12, *(v1 + 72));
        sub_1BE048C84();
        sub_1BD17195C(v12, v14);
      }

      a1 = v33;
    }
  }

  v28 = *(v34 + 56);

  return v28(a1, 1, 1, v8);
}

uint64_t sub_1BD7AE094@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(*a1 + qword_1EBDAB050);
  if (v3)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v4 = v3;
    sub_1BE04D8B4();

    v5 = v8;
    v6 = [objc_allocWithZone(MEMORY[0x1E69B8418]) initWithUnavailableFundingSourceTopicForAccount_];
    result = sub_1BE0501F4();
  }

  else
  {
    v5 = 0;
    v6 = 0;
    result = 0;
  }

  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = result;
  return result;
}

id sub_1BD7AE168()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v25 - v8;
  v10 = type metadata accessor for AvailablePass(0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v25 - v16;
  v18 = type metadata accessor for TransferOptionsSheet();
  sub_1BD0DE19C(v0 + *(v18 + 40), v17, &qword_1EBD45480);
  v19 = type metadata accessor for PeerPaymentModel();
  if ((*(*(v19 - 8) + 48))(v17, 1, v19) == 1)
  {
    sub_1BD0DE53C(v17, &qword_1EBD45480);
LABEL_6:
    (*(v2 + 104))(v5, *MEMORY[0x1E69B80E0], v1);
    result = PKPassKitBundle();
    if (result)
    {
      v23 = result;
      v24 = sub_1BE04B6F4();
      v9 = v5;
      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_10;
  }

  sub_1BD7B10BC(&v17[*(v19 + 20)], v13, type metadata accessor for AvailablePass);
  sub_1BD7B118C(v17, type metadata accessor for PeerPaymentModel);
  v20 = *&v13[*(v10 + 36)];
  v21 = v20;
  sub_1BD7B118C(v13, type metadata accessor for AvailablePass);
  if (!v20)
  {
    goto LABEL_6;
  }

  (*(v2 + 104))(v9, *MEMORY[0x1E69B80E0], v1);
  result = PKPassKitBundle();
  if (result)
  {
    v23 = result;
    v24 = sub_1BE04B6F4();

LABEL_8:
    (*(v2 + 8))(v9, v1);
    return v24;
  }

LABEL_10:
  __break(1u);
  return result;
}