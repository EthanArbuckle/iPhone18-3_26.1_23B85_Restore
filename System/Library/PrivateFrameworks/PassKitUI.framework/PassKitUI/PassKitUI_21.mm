double sub_1BD27852C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1BE04F504();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FBE0);
  sub_1BD2785F4(a1, a2 + *(v4 + 44));
  sub_1BE051404();
  v5 = sub_1BE0518D4();
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FB08) + 36)) = v5;
  v6 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FAF0) + 36);
  *(v6 + 32) = 0;
  result = 0.0;
  *v6 = 0u;
  *(v6 + 16) = 0u;
  return result;
}

uint64_t sub_1BD2785F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FBE8);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v19 - v11;
  *v12 = sub_1BE04F7B4();
  *(v12 + 1) = 0;
  v12[16] = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FBF0);
  sub_1BD27877C(a1, &v12[*(v13 + 44)]);
  KeyPath = swift_getKeyPath();
  v15 = &v12[*(v5 + 44)];
  *v15 = KeyPath;
  v15[8] = 1;
  sub_1BD0DE19C(v12, v8, &qword_1EBD3FBE8);
  *a2 = 0;
  *(a2 + 8) = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FBF8);
  sub_1BD0DE19C(v8, a2 + *(v16 + 48), &qword_1EBD3FBE8);
  v17 = a2 + *(v16 + 64);
  *v17 = 0;
  *(v17 + 8) = 1;
  sub_1BD0DE53C(v12, &qword_1EBD3FBE8);
  return sub_1BD0DE53C(v8, &qword_1EBD3FBE8);
}

id sub_1BD27877C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v192 = a2;
  v195 = sub_1BE04AF64();
  v194 = *(v195 - 8);
  MEMORY[0x1EEE9AC00](v195, v3);
  v189 = &v187 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v196 = &v187 - v7;
  v203 = sub_1BE04BD74();
  v204 = *(v203 - 8);
  MEMORY[0x1EEE9AC00](v203, v8);
  v190 = &v187 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v202 = &v187 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FC00);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v187 - v15;
  v199 = sub_1BE051584();
  v198 = *(v199 - 8);
  MEMORY[0x1EEE9AC00](v199, v17);
  v197 = &v187 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FC08);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v187 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FC10);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v200 = &v187 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v187 - v28;
  v30 = *(a1 + 8);
  v205 = *(a1 + 16);
  v206 = v30;
  v212 = v30;
  v213 = v205;
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FAB0);
  sub_1BE0516A4();
  v31 = v209;
  swift_getKeyPath();
  v212 = v31;
  v207 = sub_1BD27A95C(&qword_1EBD58660, type metadata accessor for PeerPaymentGroupedPaymentsModel);
  sub_1BE04B594();

  v33 = *&v31[OBJC_IVAR____TtC9PassKitUI31PeerPaymentGroupedPaymentsModel__groupImageData];
  v32 = *&v31[OBJC_IVAR____TtC9PassKitUI31PeerPaymentGroupedPaymentsModel__groupImageData + 8];
  sub_1BD030394(v33, v32);

  v201 = v29;
  if (v32 >> 60 != 15)
  {
    v191 = v19;
    v193 = v13;
    v34 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
    sub_1BD041A38(v33, v32);
    v35 = sub_1BE04AAB4();
    v36 = [v34 initWithData_];

    sub_1BD030220(v33, v32);
    if (v36)
    {
      v188 = v36;
      sub_1BE051544();
      v37 = v198;
      v38 = v197;
      v39 = v199;
      (*(v198 + 104))(v197, *MEMORY[0x1E6981630], v199);
      v187 = sub_1BE0515E4();

      (*(v37 + 8))(v38, v39);
      sub_1BE051CD4();
      sub_1BE04E5E4();
      v199 = v212;
      LODWORD(v198) = v213;
      v40 = v214;
      v41 = v215;
      v42 = v216;
      v197 = v217;
      v43 = &v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FC30) + 36)];
      v44 = *(sub_1BE04EDE4() + 20);
      v45 = *MEMORY[0x1E697F468];
      v46 = sub_1BE04F684();
      (*(*(v46 - 8) + 104))(&v43->i8[v44], v45, v46);
      *v43 = vdupq_n_s64(0x4049000000000000uLL);
      *(v43->i16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FC50) + 36)) = 256;
      v47 = v199;
      *v22 = v187;
      *(v22 + 1) = v47;
      v22[16] = v198;
      *(v22 + 3) = v40;
      v22[32] = v41;
      v48 = v197;
      *(v22 + 5) = v42;
      *(v22 + 6) = v48;
      LOBYTE(v45) = sub_1BE0501F4();
      sub_1BE04E1F4();
      v49 = &v22[*(v191 + 36)];
      *v49 = v45;
      *(v49 + 1) = v50;
      *(v49 + 2) = v51;
      *(v49 + 3) = v52;
      *(v49 + 4) = v53;
      v49[40] = 0;
      sub_1BD0DE19C(v22, v16, &qword_1EBD3FC08);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FC18);
      sub_1BD27AA34();
      sub_1BD27AB78();
      sub_1BE04F9A4();

      sub_1BD030220(v33, v32);
      sub_1BD0DE53C(v22, &qword_1EBD3FC08);
      goto LABEL_6;
    }

    sub_1BD030220(v33, v32);
  }

  sub_1BD279B00(&v212);
  v54 = v212;
  v55 = sub_1BE0501F4();
  sub_1BE04E1F4();
  *v16 = v54;
  v16[8] = v55;
  *(v16 + 2) = v56;
  *(v16 + 3) = v57;
  *(v16 + 4) = v58;
  *(v16 + 5) = v59;
  v16[48] = 0;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FC18);
  sub_1BD27AA34();
  sub_1BD27AB78();
  sub_1BE04F9A4();
LABEL_6:
  v61 = v205;
  v60 = v206;
  v209 = v206;
  v210 = v205;
  sub_1BE0516A4();
  v62 = v211;
  swift_getKeyPath();
  v209 = v62;
  sub_1BE04B594();

  v63 = *&v62[OBJC_IVAR____TtC9PassKitUI31PeerPaymentGroupedPaymentsModel__groupName];
  v64 = *&v62[OBJC_IVAR____TtC9PassKitUI31PeerPaymentGroupedPaymentsModel__groupName + 8];
  sub_1BE048C84();

  v65 = v204;
  if (!v64)
  {
    v66 = v202;
    v67 = v203;
    (*(v204 + 104))(v202, *MEMORY[0x1E69B8050], v203);
    result = PKPassKitBundle();
    if (!result)
    {
      goto LABEL_29;
    }

    v69 = result;
    v63 = sub_1BE04B6F4();
    v64 = v70;

    (*(v65 + 8))(v66, v67);
  }

  v209 = v63;
  v210 = v64;
  v71 = sub_1BD0DDEBC();
  sub_1BE048C84();
  v72 = sub_1BE0506C4();
  v74 = v73;
  v76 = v75;
  result = PKFontForDesign(*MEMORY[0x1E69DB8C8], *MEMORY[0x1E69DDDB8], *MEMORY[0x1E69DDC90], *MEMORY[0x1E69DB958]);
  if (result)
  {
    sub_1BE050484();
    v198 = sub_1BE0505F4();
    v197 = v77;
    LODWORD(v191) = v78;
    v199 = v79;

    sub_1BD0DDF10(v72, v74, v76 & 1);

    v209 = v60;
    v210 = v61;
    sub_1BE0516A4();
    v80 = v211;
    swift_getKeyPath();
    v209 = v80;
    sub_1BE04B594();

    v81 = *&v80[OBJC_IVAR____TtC9PassKitUI31PeerPaymentGroupedPaymentsModel__request];
    sub_1BE048964();

    swift_getKeyPath();
    v209 = v81;
    sub_1BD27A95C(&qword_1EBD3FAC0, type metadata accessor for PeerPaymentGroupPendingRequest);
    sub_1BE04B594();

    v82 = *(v81 + 16);

    v83 = [v82 memo];
    v193 = v82;
    v188 = v71;
    if (v83)
    {
      v84 = v83;
      v85 = sub_1BE052434();
      v87 = v86;

      v209 = v85;
      v210 = v87;
      v88 = sub_1BE0506C4();
      v90 = v89;
      LOBYTE(v87) = v91;
      sub_1BE0502A4();
      v92 = sub_1BE0505F4();
      v94 = v93;
      v96 = v95;

      sub_1BD0DDF10(v88, v90, v87 & 1);

      sub_1BE051494();
      v97 = sub_1BE050564();
      v99 = v98;
      LOBYTE(v90) = v100;
      v102 = v101;

      v103 = v92;
      v82 = v193;
      sub_1BD0DDF10(v103, v94, v96 & 1);

      v207 = v99;
      v208 = v97;
      v205 = v90 & 1;
      sub_1BD0D7F18(v97, v99, v90 & 1);
      v206 = v102;
      sub_1BE048C84();
    }

    else
    {
      v207 = 0;
      v208 = 0;
      v205 = 0;
      v206 = 0;
    }

    v104 = v196;
    v105 = [v82 currencyAmount];
    if (!v105)
    {

      goto LABEL_20;
    }

    v106 = v105;
    result = [v105 amount];
    if (result)
    {
      v107 = result;

      [v107 decimalValue];

      v108 = MEMORY[0x1BFB403C0](0);
      if (MEMORY[0x1BFB403F0](v108))
      {
        v109 = [v106 minimalFormattedStringValue];
        if (v109)
        {
          v110 = v109;
          v111 = sub_1BE052434();
          v113 = v112;

          v114 = v204;
          v115 = v190;
          v116 = v203;
          (*(v204 + 104))(v190, *MEMORY[0x1E69B8050], v203);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
          v117 = swift_allocObject();
          *(v117 + 16) = xmmword_1BE0B69E0;
          *(v117 + 56) = MEMORY[0x1E69E6158];
          *(v117 + 64) = sub_1BD110550();
          *(v117 + 32) = v111;
          *(v117 + 40) = v113;
          v118 = sub_1BE04B714();
          v120 = v119;

          (*(v114 + 8))(v115, v116);
          v209 = v118;
          v210 = v120;
          v121 = sub_1BE0506C4();
          v123 = v122;
          LOBYTE(v120) = v124;
          sub_1BE0502A4();
          v125 = sub_1BE0505F4();
          v127 = v126;
          v129 = v128;
          v204 = v130;
          v104 = v196;

          sub_1BD0DDF10(v121, v123, v120 & 1);

          sub_1BE051494();
          v131 = sub_1BE050564();
          v133 = v132;
          LOBYTE(v123) = v134;
          v136 = v135;

          v137 = v125;
          v82 = v193;
          sub_1BD0DDF10(v137, v127, v129 & 1);

          v204 = v131;
          v203 = v133;
          v202 = (v123 & 1);
          sub_1BD0D7F18(v131, v133, v123 & 1);
          v190 = v136;
          sub_1BE048C84();
          goto LABEL_21;
        }
      }

LABEL_20:
      v204 = 0;
      v203 = 0;
      v202 = 0;
      v190 = 0;
LABEL_21:
      v138 = [v82 requestDate];
      v139 = v195;
      if (v138)
      {
        v140 = v189;
        v141 = v138;
        sub_1BE04AEE4();

        (*(v194 + 32))(v104, v140, v139);
        v142 = sub_1BE04AE64();
        v143 = PKShortDateAndTimeStringFromDate();

        if (v143)
        {
          v144 = sub_1BE052434();
          v146 = v145;

          v209 = v144;
          v210 = v146;
          v147 = sub_1BE0506C4();
          v149 = v148;
          LOBYTE(v146) = v150;
          sub_1BE0502A4();
          v151 = sub_1BE0505F4();
          v152 = v194;
          v154 = v153;
          v156 = v155;

          sub_1BD0DDF10(v147, v149, v146 & 1);

          sub_1BE051494();
          v157 = sub_1BE050564();
          v159 = v158;
          LOBYTE(v146) = v160;
          v162 = v161;

          sub_1BD0DDF10(v151, v154, v156 & 1);

          (*(v152 + 8))(v196, v195);
          v196 = v157;
          v195 = v159;
          v194 = v146 & 1;
          sub_1BD0D7F18(v157, v159, v146 & 1);
          v189 = v162;
          sub_1BE048C84();
LABEL_26:
          v163 = v200;
          sub_1BD0DE19C(v201, v200, &qword_1EBD3FC10);
          v164 = v191 & 1;
          LOBYTE(v209) = v191 & 1;
          v165 = v163;
          v166 = v192;
          sub_1BD0DE19C(v165, v192, &qword_1EBD3FC10);
          v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FC70);
          v168 = v166 + v167[12];
          v169 = v198;
          v170 = v197;
          *v168 = v198;
          *(v168 + 8) = v170;
          *(v168 + 16) = v164;
          *(v168 + 24) = v199;
          v171 = (v166 + v167[16]);
          v172 = v207;
          *v171 = v208;
          v171[1] = v172;
          v173 = v205;
          v174 = v206;
          v171[2] = v205;
          v171[3] = v174;
          v175 = (v166 + v167[20]);
          v176 = v203;
          *v175 = v204;
          v175[1] = v176;
          v177 = v190;
          v175[2] = v202;
          v175[3] = v177;
          v178 = (v166 + v167[24]);
          LODWORD(v191) = v164;
          sub_1BD0D7F18(v169, v170, v164);
          sub_1BE048C84();
          sub_1BD0D7F18(v169, v170, v164);
          sub_1BE048C84();
          v179 = v208;
          v206 = v174;
          v207 = v172;
          v205 = v173;
          sub_1BD1969AC(v208, v172, v173, v174);
          v180 = v204;
          v203 = v176;
          LOBYTE(v164) = v202;
          sub_1BD1969AC(v204, v176, v202, v177);
          v181 = v189;
          sub_1BD1969AC(v196, v195, v194, v189);
          sub_1BD1969F0(v179, v172, v173, v174);

          sub_1BD1969F0(v180, v176, v164, v177);
          v182 = v196;
          v183 = v195;
          v184 = v194;
          sub_1BD1969F0(v196, v195, v194, v181);
          v185 = v198;
          v186 = v197;
          sub_1BD0DDF10(v198, v197, v191);
          *v178 = v182;
          v178[1] = v183;
          v178[2] = v184;
          v178[3] = v181;

          sub_1BD0DE53C(v201, &qword_1EBD3FC10);
          sub_1BD1969F0(v182, v183, v184, v181);
          sub_1BD1969F0(v204, v203, v202, v177);
          sub_1BD1969F0(v208, v207, v205, v206);
          sub_1BD0DDF10(v185, v186, v209);

          return sub_1BD0DE53C(v200, &qword_1EBD3FC10);
        }

        (*(v194 + 8))(v104, v139);
      }

      v196 = 0;
      v195 = 0;
      v194 = 0;
      v189 = 0;
      goto LABEL_26;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

void sub_1BD279B00(uint64_t *a1@<X8>)
{
  v3 = [objc_opt_self() configurationWithPointSize_];
  v4 = sub_1BE052404();
  v5 = [objc_opt_self() systemImageNamed:v4 withConfiguration:v3];

  if (v5)
  {
    v6 = [objc_opt_self() systemGrayColor];
    v7 = [v5 imageWithTintColor_];
  }

  else
  {
    v7 = 0;
  }

  v8 = [objc_opt_self() systemGray5Color];
  v9 = PKUIImageWithBackgroundAndCornerRadius(v7, v8, 100.0, 100.0, 50.0);

  if (v9)
  {
    v10 = sub_1BE051544();
  }

  else
  {

    v10 = 0;
  }

  *a1 = v10;
}

uint64_t sub_1BD279C98@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA28);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v13[-v6];
  *a1 = sub_1BE04F7B4();
  *(a1 + 8) = 0x4034000000000000;
  *(a1 + 16) = 0;
  v8 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA30) + 44);
  v15 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA38);
  sub_1BD0DE4F4(&qword_1EBD3FA40, &qword_1EBD3FA38);
  sub_1BE0504E4();
  v14 = v1;
  sub_1BE04F7B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA48);
  sub_1BD0DE4F4(&qword_1EBD3FA50, &qword_1EBD3FA28);
  sub_1BD279F20();
  sub_1BE050954();
  (*(v4 + 8))(v7, v3);
  v9 = sub_1BE04EC54();
  v10 = sub_1BE0501F4();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA68);
  v12 = v8 + *(result + 36);
  *v12 = v9;
  *(v12 + 8) = v10;
  return result;
}

unint64_t sub_1BD279F20()
{
  result = qword_1EBD3FA58;
  if (!qword_1EBD3FA58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3FA48);
    sub_1BD279FA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3FA58);
  }

  return result;
}

unint64_t sub_1BD279FA4()
{
  result = qword_1EBD3FA60;
  if (!qword_1EBD3FA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3FA60);
  }

  return result;
}

void sub_1BD27A03C()
{
  sub_1BD27A130(319, &unk_1EBD3FA90, type metadata accessor for PeerPaymentGroupedPaymentsModel, MEMORY[0x1E6981790]);
  if (v0 <= 0x3F)
  {
    sub_1BD27A130(319, &qword_1EBD3AB88, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BD27A130(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1BD27A19C()
{
  result = qword_1EBD3FAF8;
  if (!qword_1EBD3FAF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3FAF0);
    sub_1BD27A254();
    sub_1BD0DE4F4(&unk_1EBD3FB30, &qword_1EBD397A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3FAF8);
  }

  return result;
}

unint64_t sub_1BD27A254()
{
  result = qword_1EBD3FB00;
  if (!qword_1EBD3FB00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3FB08);
    sub_1BD0DE4F4(&qword_1EBD3FB10, &qword_1EBD3FB18);
    sub_1BD0DE4F4(&unk_1EBD3FB20, &qword_1EBD5B6B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3FB00);
  }

  return result;
}

unint64_t sub_1BD27A340()
{
  result = qword_1EBD3FB50;
  if (!qword_1EBD3FB50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD3FB40);
    sub_1BD27A3C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3FB50);
  }

  return result;
}

unint64_t sub_1BD27A3C4()
{
  result = qword_1EBD3FB58;
  if (!qword_1EBD3FB58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3FB60);
    sub_1BD27A450();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3FB58);
  }

  return result;
}

unint64_t sub_1BD27A450()
{
  result = qword_1EBD3FB68;
  if (!qword_1EBD3FB68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3FB70);
    sub_1BD0DE4F4(&qword_1EBD3FB78, &unk_1EBD3FB80);
    sub_1BD0DE4F4(&unk_1EBD3FB30, &qword_1EBD397A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3FB68);
  }

  return result;
}

unint64_t sub_1BD27A53C()
{
  result = qword_1EBD3FB98;
  if (!qword_1EBD3FB98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3FB90);
    sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3FB98);
  }

  return result;
}

uint64_t sub_1BD27A628(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PeerPaymentGroupedPaymentsView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD27A68C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PeerPaymentGroupedPaymentsView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD27A71C(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

uint64_t objectdestroy_17Tm()
{
  v1 = (type metadata accessor for PeerPaymentGroupedPaymentsView() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1BE04E664();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

double sub_1BD27A8DC@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PeerPaymentGroupedPaymentsView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1BD2770B8(a1, v6, a2);
}

uint64_t sub_1BD27A95C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BD27AA34()
{
  result = qword_1EBD3FC20;
  if (!qword_1EBD3FC20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3FC08);
    sub_1BD27AAC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3FC20);
  }

  return result;
}

unint64_t sub_1BD27AAC0()
{
  result = qword_1EBD3FC28;
  if (!qword_1EBD3FC28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD3FC30);
    sub_1BD1A3410();
    sub_1BD0DE4F4(&qword_1EBD3B468, &qword_1EBD3FC50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3FC28);
  }

  return result;
}

unint64_t sub_1BD27AB78()
{
  result = qword_1EBD3FC58;
  if (!qword_1EBD3FC58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3FC18);
    sub_1BD27AC24(&qword_1EBD3FC60, &qword_1EBD3FC68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3FC58);
  }

  return result;
}

uint64_t sub_1BD27AC24(unint64_t *a1, uint64_t *a2)
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

double sub_1BD27ACC0@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04F7B4();
  v24 = 0;
  sub_1BD27AED4(&v12);
  v33 = v20;
  v34 = v21;
  v29 = v16;
  v30 = v17;
  v31 = v18;
  v32 = v19;
  v25 = v12;
  v26 = v13;
  v27 = v14;
  v28 = v15;
  v36[7] = v19;
  v36[8] = v20;
  v36[9] = v21;
  v36[10] = v22;
  v36[3] = v15;
  v36[4] = v16;
  v36[5] = v17;
  v36[6] = v18;
  v35 = v22;
  v36[0] = v12;
  v36[1] = v13;
  v36[2] = v14;
  sub_1BD27B0D8(&v25, &v11);
  sub_1BD27B148(v36);
  *&v23[119] = v32;
  *&v23[135] = v33;
  *&v23[151] = v34;
  *&v23[167] = v35;
  *&v23[55] = v28;
  *&v23[71] = v29;
  *&v23[87] = v30;
  *&v23[103] = v31;
  *&v23[7] = v25;
  *&v23[23] = v26;
  *&v23[39] = v27;
  v3 = v24;
  v4 = sub_1BE0501D4();
  v5 = *&v23[144];
  *(a1 + 145) = *&v23[128];
  *(a1 + 161) = v5;
  *(a1 + 177) = *&v23[160];
  v6 = *&v23[80];
  *(a1 + 81) = *&v23[64];
  *(a1 + 97) = v6;
  v7 = *&v23[112];
  *(a1 + 113) = *&v23[96];
  *(a1 + 129) = v7;
  v8 = *&v23[16];
  *(a1 + 17) = *v23;
  *(a1 + 33) = v8;
  v9 = *&v23[48];
  *(a1 + 49) = *&v23[32];
  *a1 = v2;
  *(a1 + 8) = 0x4010000000000000;
  *(a1 + 16) = v3;
  *(a1 + 192) = *&v23[175];
  *(a1 + 65) = v9;
  *(a1 + 200) = v4;
  result = 0.0;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 1;
  return result;
}

uint64_t sub_1BD27AED4@<X0>(uint64_t a1@<X8>)
{
  v25 = sub_1BE04C124();
  v26 = v2;
  sub_1BD0DDEBC();
  v3 = sub_1BE0506C4();
  v5 = v4;
  v7 = v6;
  sub_1BE0502A4();
  v8 = sub_1BE0505F4();
  v10 = v9;
  v12 = v11;
  v14 = v13;

  sub_1BD0DDF10(v3, v5, v7 & 1);

  KeyPath = swift_getKeyPath();
  LOBYTE(v5) = sub_1BE0501E4();
  sub_1BE04E1F4();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  LOBYTE(v25) = 0;
  sub_1BE051CD4();
  sub_1BE04E5E4();
  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v14;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 1;
  *(a1 + 48) = 5;
  *(a1 + 56) = 256;
  *(a1 + 64) = v5;
  *(a1 + 72) = v17;
  *(a1 + 80) = v19;
  *(a1 + 88) = v21;
  *(a1 + 96) = v23;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 1;
  *(a1 + 128) = v25;
  *(a1 + 136) = v26;
  *(a1 + 144) = v27;
  *(a1 + 152) = v28;
  *(a1 + 160) = v29;
  sub_1BD0D7F18(v8, v10, v12 & 1);
  sub_1BE048C84();
  sub_1BE048964();
  sub_1BD0DDF10(v8, v10, v12 & 1);
}

uint64_t sub_1BD27B0D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FC90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD27B148(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FC90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BD27B1B0()
{
  result = qword_1EBD3FC98;
  if (!qword_1EBD3FC98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3FCA0);
    sub_1BD27B23C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3FC98);
  }

  return result;
}

unint64_t sub_1BD27B23C()
{
  result = qword_1EBD3FCA8;
  if (!qword_1EBD3FCA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3FCB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3FCA8);
  }

  return result;
}

uint64_t sub_1BD27B2A0()
{
  swift_getKeyPath();
  sub_1BD280F14(&qword_1EBD3FCC0, type metadata accessor for PeerPaymentFraudPageView.PeerPaymentFraudPageUIModel);
  sub_1BE04B594();

  swift_beginAccess();
  return sub_1BE048C84();
}

uint64_t sub_1BD27B358@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD280F14(&qword_1EBD3FCC0, type metadata accessor for PeerPaymentFraudPageView.PeerPaymentFraudPageUIModel);
  sub_1BE04B594();

  swift_beginAccess();
  *a2 = *(v3 + 24);
  return sub_1BE048C84();
}

uint64_t sub_1BD27B418(uint64_t a1)
{
  swift_beginAccess();
  v3 = sub_1BE048C84();
  v4 = sub_1BD400C3C(v3, a1);

  if (v4)
  {
    *(v1 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v7);
    sub_1BD280F14(&qword_1EBD3FCC0, type metadata accessor for PeerPaymentFraudPageView.PeerPaymentFraudPageUIModel);
    sub_1BE04B584();
  }
}

uint64_t sub_1BD27B560(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 24) = a2;
  sub_1BE048C84();
}

uint64_t sub_1BD27B5C8()
{
  v1 = v0;
  KeyPath = swift_getKeyPath();
  sub_1BD280F14(&qword_1EBD3FCC0, type metadata accessor for PeerPaymentFraudPageView.PeerPaymentFraudPageUIModel);
  sub_1BE04B594();

  swift_beginAccess();
  v3 = *(v0 + 24);
  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      goto LABEL_3;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = sub_1BE053704();
  v5 = v9 + 1;
  if (__OFADD__(v9, 1))
  {
    goto LABEL_14;
  }

LABEL_3:
  KeyPath = *(v1 + 16);
  if (!(KeyPath >> 62))
  {
    result = *((KeyPath & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 >= result)
    {
      return result;
    }

LABEL_5:
    if ((KeyPath & 0xC000000000000001) != 0)
    {
      MEMORY[0x1BFB40900](v5, KeyPath);
    }

    else
    {
      if (v5 < 0)
      {
        __break(1u);
        goto LABEL_19;
      }

      if (v5 >= *((KeyPath & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v7 = *(KeyPath + 8 * v5 + 32);
    }

    swift_getKeyPath();
    sub_1BE04B594();

    swift_getKeyPath();
    sub_1BE04B5B4();

    v8 = swift_beginAccess();
    MEMORY[0x1BFB3F7A0](v8);
    if (*((*(v1 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v1 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_10:
      sub_1BE0527C4();
      swift_endAccess();
      swift_getKeyPath();
      sub_1BE04B5A4();
    }

LABEL_19:
    sub_1BE052774();
    goto LABEL_10;
  }

LABEL_15:
  result = sub_1BE053704();
  if (v5 < result)
  {
    goto LABEL_5;
  }

  return result;
}

uint64_t sub_1BD27B83C()
{

  v1 = OBJC_IVAR____TtCV9PassKitUI24PeerPaymentFraudPageViewP33_AFA681ED8638F9F04B85B9AFF86B0B7627PeerPaymentFraudPageUIModel___observationRegistrar;
  v2 = sub_1BE04B5D4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1BD27B8E8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE04F3D4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v16 - v10;
  v12 = type metadata accessor for PeerPaymentFraudPageView(0);
  sub_1BD0DE19C(v1 + *(v12 + 28), v11, &qword_1EBD3FA20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1BE04E664();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    sub_1BE052C44();
    v15 = sub_1BE050174();
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t PeerPaymentFraudPageView.init(pages:continuationHandler:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = *(type metadata accessor for PeerPaymentFraudPageView(0) + 28);
  *(a4 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20);
  swift_storeEnumTagMultiPayload();
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:
    sub_1BE053994();
    __break(1u);
    goto LABEL_9;
  }

  result = sub_1BE053704();
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((a1 & 0xC000000000000001) != 0)
  {
LABEL_9:
    v10 = MEMORY[0x1BFB40900](0, a1);
    goto LABEL_6;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(a1 + 32);
LABEL_6:
    *a4 = v10;
    a4[1] = a2;
    a4[2] = a3;
    type metadata accessor for PeerPaymentFraudPageView.PeerPaymentFraudPageUIModel(0);
    v11 = swift_allocObject();
    *(v11 + 24) = MEMORY[0x1E69E7CC0];
    sub_1BE04B5C4();
    *(v11 + 16) = a1;
    sub_1BD280F14(&qword_1EBD3FCC0, type metadata accessor for PeerPaymentFraudPageView.PeerPaymentFraudPageUIModel);
    return sub_1BE051A94();
  }

  __break(1u);
  return result;
}

uint64_t PeerPaymentFraudPageView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v12[1] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FCC8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v12 - v5;
  type metadata accessor for PeerPaymentFraudPageView(0);
  sub_1BE051A84();
  swift_getKeyPath();
  sub_1BE051AA4();

  (*(v3 + 8))(v6, v2);
  v20 = v22;
  v21 = v23;
  v13 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FCD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FCD8);
  sub_1BD0DE4F4(&qword_1EBD3FCE0, &qword_1EBD3FCD0);
  sub_1BD0DE4F4(&qword_1EBD3FCE8, &qword_1EBD3FCD0);
  sub_1BD0DE4F4(&qword_1EBD3FCF0, &qword_1EBD3FCD0);
  v7 = type metadata accessor for PeerPaymentFraudPageView.PeerPaymentFraudPageContentView(255);
  v8 = sub_1BD0E5E8C(255, &qword_1EBD3FCF8);
  v9 = sub_1BD280F14(&qword_1EBD3FD00, type metadata accessor for PeerPaymentFraudPageView.PeerPaymentFraudPageContentView);
  v10 = sub_1BD214890(&qword_1EBD3FD08, &qword_1EBD3FCF8);
  v14 = v7;
  v15 = v8;
  v16 = v7;
  v17 = v9;
  v18 = v10;
  v19 = v9;
  swift_getOpaqueTypeConformance2();
  return sub_1BE04EBF4();
}

uint64_t sub_1BD27BFB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = type metadata accessor for PeerPaymentFraudPageView(0);
  v32 = *(v3 - 8);
  v31 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v3, v4);
  v30 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE050474();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PeerPaymentFraudPageView.PeerPaymentFraudPageContentView(0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FCC8);
  sub_1BE051A74();
  v28 = v35;
  sub_1BD27B8E8(&v14[v11[7]]);
  v16 = *(a1 + 8);
  v15 = *(a1 + 16);
  v17 = &v14[v11[9]];
  v34 = 0;
  sub_1BE048964();
  sub_1BE051694();
  v18 = v36;
  *v17 = v35;
  *(v17 + 1) = v18;
  v19 = &v14[v11[10]];
  v34 = 0;
  sub_1BE051694();
  v20 = v36;
  *v19 = v35;
  *(v19 + 1) = v20;
  v35 = 0x4031000000000000;
  (*(v7 + 104))(v10, *MEMORY[0x1E6980EF8], v6);
  sub_1BD0DBFDC();
  sub_1BE04E514();
  v21 = v28;
  *v14 = v29;
  *(v14 + 1) = v21;
  v14[16] = 1;
  v22 = &v14[v11[8]];
  *v22 = v16;
  *(v22 + 1) = v15;
  sub_1BD0E5E8C(0, &qword_1EBD3FCF8);
  v23 = v30;
  sub_1BD2824B0(a1, v30, type metadata accessor for PeerPaymentFraudPageView);
  v24 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v25 = swift_allocObject();
  sub_1BD282518(v23, v25 + v24, type metadata accessor for PeerPaymentFraudPageView);
  sub_1BD280F14(&qword_1EBD3FD00, type metadata accessor for PeerPaymentFraudPageView.PeerPaymentFraudPageContentView);
  sub_1BD214890(&qword_1EBD3FD08, &qword_1EBD3FCF8);
  sub_1BE050D64();

  return sub_1BD2825AC(v14);
}

uint64_t sub_1BD27C384@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1BE050474();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  type metadata accessor for PeerPaymentFraudPageView(0);
  v22 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FCC8);
  sub_1BE051A74();
  v12 = v24;
  v13 = type metadata accessor for PeerPaymentFraudPageView.PeerPaymentFraudPageContentView(0);
  sub_1BD27B8E8(a3 + v13[7]);
  v15 = *(a2 + 8);
  v14 = *(a2 + 16);
  v16 = a3 + v13[9];
  v23 = 0;
  sub_1BE048964();
  sub_1BE051694();
  v17 = v25;
  *v16 = v24;
  *(v16 + 8) = v17;
  v18 = a3 + v13[10];
  v23 = 0;
  sub_1BE051694();
  v19 = v25;
  *v18 = v24;
  *(v18 + 8) = v19;
  v24 = 0x4031000000000000;
  (*(v7 + 104))(v10, *MEMORY[0x1E6980EF8], v6);
  sub_1BD0DBFDC();
  result = sub_1BE04E514();
  *a3 = v22;
  *(a3 + 8) = v12;
  *(a3 + 16) = 0;
  v21 = (a3 + v13[8]);
  *v21 = v15;
  v21[1] = v14;
  return result;
}

uint64_t sub_1BD27C578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v3 = type metadata accessor for PeerPaymentFraudPageView.PeerPaymentFraudPageContentView(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v48 = v6;
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FD60);
  v51 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v48 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FD68);
  v13 = *(v12 - 8);
  v52 = v12;
  v53 = v13;
  MEMORY[0x1EEE9AC00](v12, v14);
  v49 = &v48 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FD70);
  v17 = *(v16 - 8);
  v57 = v16;
  v58 = v17;
  MEMORY[0x1EEE9AC00](v16, v18);
  v50 = &v48 - v19;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FD78);
  MEMORY[0x1EEE9AC00](v56, v20);
  v54 = &v48 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FD80);
  v23 = *(v22 - 8);
  v59 = v22;
  v60 = v23;
  MEMORY[0x1EEE9AC00](v22, v24);
  v55 = &v48 - v25;
  v63 = a1;
  sub_1BE0501B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FD88);
  sub_1BD281318();
  sub_1BE04E304();
  sub_1BD2824B0(a1, v7, type metadata accessor for PeerPaymentFraudPageView.PeerPaymentFraudPageContentView);
  v26 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v27 = swift_allocObject();
  sub_1BD282518(v7, v27 + v26, type metadata accessor for PeerPaymentFraudPageView.PeerPaymentFraudPageContentView);
  v28 = sub_1BD0DE4F4(&qword_1EBD3FDA8, &qword_1EBD3FD60);
  v29 = v49;
  sub_1BE050DC4();

  (*(v51 + 8))(v11, v8);
  sub_1BD2824B0(a1, v7, type metadata accessor for PeerPaymentFraudPageView.PeerPaymentFraudPageContentView);
  v30 = swift_allocObject();
  sub_1BD282518(v7, v30 + v26, type metadata accessor for PeerPaymentFraudPageView.PeerPaymentFraudPageContentView);
  v64 = v8;
  v31 = MEMORY[0x1E69E6370];
  v65 = MEMORY[0x1E69E6370];
  v66 = v28;
  v32 = MEMORY[0x1E69E6388];
  v67 = MEMORY[0x1E69E6388];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = v32;
  v35 = v50;
  v36 = v52;
  sub_1BE050DC4();

  (*(v53 + 8))(v29, v36);
  v62 = a1;
  sub_1BE04F7B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C160);
  v64 = v36;
  v65 = v31;
  v66 = OpaqueTypeConformance2;
  v67 = v34;
  swift_getOpaqueTypeConformance2();
  v37 = sub_1BD1BC1B0();
  v64 = &type metadata for SetupFooterView;
  v65 = v37;
  swift_getOpaqueTypeConformance2();
  v38 = v54;
  v39 = v57;
  sub_1BE050954();
  (*(v58 + 8))(v35, v39);
  v40 = sub_1BE04EC54();
  v41 = sub_1BE0501F4();
  v42 = v56;
  v43 = v38 + *(v56 + 36);
  *v43 = v40;
  *(v43 + 8) = v41;
  v44 = sub_1BD28160C();
  v45 = v55;
  sub_1BE050D94();
  sub_1BD0DE53C(v38, &qword_1EBD3FD78);
  v64 = v42;
  v65 = v44;
  swift_getOpaqueTypeConformance2();
  v46 = v59;
  sub_1BE050E54();
  return (*(v60 + 8))(v45, v46);
}

uint64_t sub_1BD27CCBC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04FBA4();
  MEMORY[0x1EEE9AC00](v2, v3);
  sub_1BE04F7B4();
  sub_1BD280F14(&qword_1EBD3FDB8, MEMORY[0x1E697FCB0]);
  sub_1BE053DE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FDC0);
  sub_1BD0DE4F4(&qword_1EBD3FDC8, &qword_1EBD3FDC0);
  sub_1BE04E2D4();
  v4 = sub_1BE0501C4();
  PKSetupViewConstantsViewMargin();
  sub_1BE04E1F4();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FD88);
  v14 = a1 + *(result + 36);
  *v14 = v4;
  *(v14 + 8) = v6;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v12;
  *(v14 + 40) = 0;
  return result;
}

id sub_1BD27CE7C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = type metadata accessor for PeerPaymentFraudPageView.PeerPaymentFraudPageContentView(0);
  v67 = *(v4 - 8);
  v5 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FDD0);
  MEMORY[0x1EEE9AC00](v69, v7);
  v70 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v61 - v11;
  v13 = *(a1 + 16);
  if (v13 == 1)
  {
    v73 = sub_1BE051574();
    v72 = sub_1BE0513B4();
    v14 = sub_1BE0501E4();
    sub_1BE04E1F4();
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    LOBYTE(v81) = 0;
    v71 = v14;
  }

  else
  {
    v72 = 0;
    v73 = 0;
    v71 = 0;
    v16 = 0;
    v18 = 0;
    v20 = 0;
    v22 = 0;
  }

  v68 = a1;
  v23 = *a1;
  result = [*a1 title];
  if (result)
  {
    v25 = result;
    v26 = sub_1BE052434();
    v28 = v27;

    v81 = v26;
    v82 = v28;
    sub_1BD0DDEBC();
    v29 = sub_1BE0506C4();
    v64 = v30;
    v65 = v29;
    v32 = v31;
    v66 = v33;
    v63 = sub_1BE0501E4();
    if ((v13 & 1) == 0 && qword_1EBD36DC8 != -1)
    {
      swift_once();
    }

    sub_1BE04E1F4();
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v62 = v32 & 1;
    v98 = v32 & 1;
    v97 = 0;
    *v12 = sub_1BE04F7B4();
    *(v12 + 1) = 0x4030000000000000;
    v12[16] = 0;
    result = [v23 bodyContents];
    if (result)
    {
      v42 = result;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FDD8);
      sub_1BD0E5E8C(0, &qword_1EBD3FDE0);
      v43 = sub_1BE052744();

      v81 = v43;
      swift_getKeyPath();
      sub_1BD2824B0(v68, &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PeerPaymentFraudPageView.PeerPaymentFraudPageContentView);
      v44 = (*(v67 + 80) + 16) & ~*(v67 + 80);
      v45 = swift_allocObject();
      sub_1BD282518(&v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v45 + v44, type metadata accessor for PeerPaymentFraudPageView.PeerPaymentFraudPageContentView);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FDE8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FDF0);
      sub_1BD0DE4F4(&qword_1EBD3FDF8, &qword_1EBD3FDE8);
      sub_1BD214890(&qword_1EBD3FE00, &qword_1EBD3FDE0);
      sub_1BD281908();
      sub_1BE0519C4();
      LOBYTE(v44) = sub_1BE0501F4();
      sub_1BE04E1F4();
      v46 = v70;
      v47 = &v12[*(v69 + 9)];
      *v47 = v44;
      *(v47 + 1) = v48;
      *(v47 + 2) = v49;
      *(v47 + 3) = v50;
      *(v47 + 4) = v51;
      v47[40] = 0;
      sub_1BD0DE19C(v12, v46, &qword_1EBD3FDD0);
      *&v74 = v73;
      *(&v74 + 1) = v72;
      v69 = v12;
      *&v75 = v71;
      *(&v75 + 1) = v16;
      *&v76[0] = v18;
      *(&v76[0] + 1) = v20;
      *&v76[1] = v22;
      BYTE8(v76[1]) = 0;
      v52 = v75;
      *a2 = v74;
      a2[1] = v52;
      a2[2] = v76[0];
      *(a2 + 41) = *(v76 + 9);
      v54 = v64;
      v53 = v65;
      *&v77 = v65;
      *(&v77 + 1) = v64;
      LOBYTE(v42) = v62;
      v55 = v63;
      LOBYTE(v78) = v62;
      DWORD1(v78) = *&v96[3];
      *(&v78 + 1) = *v96;
      v56 = v66;
      *(&v78 + 1) = v66;
      LOBYTE(v79) = v63;
      DWORD1(v79) = *&v95[3];
      *(&v79 + 1) = *v95;
      *(&v79 + 1) = v35;
      *&v80[0] = v37;
      *(&v80[0] + 1) = v39;
      *&v80[1] = v41;
      BYTE8(v80[1]) = 0;
      v57 = v77;
      v58 = v78;
      *(a2 + 121) = *(v80 + 9);
      v59 = v80[0];
      a2[6] = v79;
      a2[7] = v59;
      a2[4] = v57;
      a2[5] = v58;
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FF10);
      sub_1BD0DE19C(v46, a2 + *(v60 + 64), &qword_1EBD3FDD0);
      sub_1BD0DE19C(&v74, &v81, &qword_1EBD3FF18);
      sub_1BD0DE19C(&v77, &v81, &qword_1EBD3FF20);
      sub_1BD0DE53C(v69, &qword_1EBD3FDD0);
      sub_1BD0DE53C(v46, &qword_1EBD3FDD0);
      v81 = v53;
      v82 = v54;
      v83 = v42;
      *v84 = *v96;
      *&v84[3] = *&v96[3];
      v85 = v56;
      v86 = v55;
      *v87 = *v95;
      *&v87[3] = *&v95[3];
      v88 = v35;
      v89 = v37;
      v90 = v39;
      v91 = v41;
      v92 = 0;
      sub_1BD0DE53C(&v81, &qword_1EBD3FF20);
      v93[0] = v73;
      v93[1] = v72;
      v93[2] = v71;
      v93[3] = v16;
      v93[4] = v18;
      v93[5] = v20;
      v93[6] = v22;
      v94 = 0;
      return sub_1BD0DE53C(v93, &qword_1EBD3FF18);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD27D4D8@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a2;
  v49 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FE48);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = v45 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FF28);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v45 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FE28);
  v46 = *(v12 - 8);
  v47 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v45 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FE18);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20, v21);
  v24 = v45 - v23;
  v25 = *a1;
  if ([v25 type] == 3)
  {
    v45[1] = v4;
    if ([v25 type] == 3 && (objc_opt_self(), (v26 = swift_dynamicCastObjCClass()) != 0))
    {
      v27 = v26;
      v45[0] = v25;
      v28 = sub_1BE04F7C4();
      if (qword_1EBD36E68 != -1)
      {
        swift_once();
      }

      v29 = qword_1EBDAB5D8;
      *v15 = v28;
      *(v15 + 1) = v29;
      v15[16] = 0;
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FF30);
      sub_1BD27FFB8(v27, v48, &v15[*(v30 + 44)]);
      v31 = sub_1BE050234();
      if (qword_1EBD36E60 != -1)
      {
        swift_once();
      }

      sub_1BE04E1F4();
      v33 = v32;
      v35 = v34;
      v37 = v36;
      v39 = v38;

      v40 = v47;
      v41 = &v15[*(v47 + 36)];
      *v41 = v31;
      *(v41 + 1) = v33;
      *(v41 + 2) = v35;
      *(v41 + 3) = v37;
      *(v41 + 4) = v39;
      v41[40] = 0;
      sub_1BD0DE204(v15, v19, &qword_1EBD3FE28);
      (*(v46 + 56))(v19, 0, 1, v40);
    }

    else
    {
      (*(v46 + 56))(v19, 1, 1, v47);
    }

    sub_1BD0DE204(v19, v24, &qword_1EBD3FE18);
    sub_1BD0DE19C(v24, v11, &qword_1EBD3FE18);
    swift_storeEnumTagMultiPayload();
    sub_1BD281BBC(&qword_1EBD3FE10, &qword_1EBD3FE18, &unk_1BE0C7088, sub_1BD2819C0);
    sub_1BD281A78();
    sub_1BE04F9A4();
    v42 = v24;
    v43 = &qword_1EBD3FE18;
  }

  else
  {
    sub_1BD27D9F4(v25, 0, v7);
    sub_1BD0DE19C(v7, v11, &qword_1EBD3FE48);
    swift_storeEnumTagMultiPayload();
    sub_1BD281BBC(&qword_1EBD3FE10, &qword_1EBD3FE18, &unk_1BE0C7088, sub_1BD2819C0);
    sub_1BD281A78();
    sub_1BE04F9A4();
    v42 = v7;
    v43 = &qword_1EBD3FE48;
  }

  return sub_1BD0DE53C(v42, v43);
}

id sub_1BD27D9F4@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v71 = a2;
  v85 = a3;
  v4 = sub_1BE04AA64();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v74 = v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FF08);
  v73 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75, v7);
  v72 = v68 - v8;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FEF8);
  MEMORY[0x1EEE9AC00](v81, v9);
  v11 = v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v68 - v14;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FFB0);
  MEMORY[0x1EEE9AC00](v84, v16);
  v82 = v68 - v17;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FFB8);
  MEMORY[0x1EEE9AC00](v80, v18);
  v77 = v68 - v19;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FE58);
  MEMORY[0x1EEE9AC00](v83, v20);
  v79 = v68 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FE78);
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = v68 - v25;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FE68);
  MEMORY[0x1EEE9AC00](v78, v27);
  v29 = v68 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v30, v31);
  v34 = v68 - v33;
  v35 = [a1 type];
  if (v35 != 2)
  {
    if (v35 != 1)
    {
      swift_storeEnumTagMultiPayload();
      sub_1BD281B04();
      return sub_1BE04F9A4();
    }

    if ([a1 type] == 1 && (objc_opt_self(), (v36 = swift_dynamicCastObjCClass()) != 0))
    {
      v37 = v36;
      v38 = a1;
      v39 = [v37 formatType];
      sub_1BD27EACC(v39, 0, v71, v37, v26);
      sub_1BD0DE204(v26, v29, &qword_1EBD3FE78);
      (*(v23 + 56))(v29, 0, 1, v22);
    }

    else
    {
      (*(v23 + 56))(v29, 1, 1, v22);
    }

    v63 = v77;
    sub_1BD0DE204(v29, v34, &qword_1EBD3FE68);
    sub_1BD0DE19C(v34, v63, &qword_1EBD3FE68);
    swift_storeEnumTagMultiPayload();
    sub_1BD281BBC(&qword_1EBD3FE60, &qword_1EBD3FE68, &unk_1BE0C70B0, sub_1BD281C38);
    sub_1BD282024();
    v64 = v79;
    sub_1BE04F9A4();
    sub_1BD0DE19C(v64, v82, &qword_1EBD3FE58);
    swift_storeEnumTagMultiPayload();
    sub_1BD281B04();
    sub_1BE04F9A4();
    sub_1BD0DE53C(v64, &qword_1EBD3FE58);
    v65 = v34;
    v66 = &qword_1EBD3FE68;
    return sub_1BD0DE53C(v65, v66);
  }

  v40 = v76;
  v41 = v72;
  v42 = v11;
  v43 = [a1 type];
  v44 = v15;
  v45 = v75;
  v46 = v73;
  if (v43 == 2)
  {
    objc_opt_self();
    v47 = swift_dynamicCastObjCClass();
    if (v47)
    {
      v48 = v47;
      v49 = a1;
      v50 = [v48 textContent];
      if (v50)
      {
        v51 = v50;
        v69 = v49;
        v70 = v44;
        v52 = [v50 formatType];
        result = [v48 url];
        if (!result)
        {
          __break(1u);
          return result;
        }

        v54 = result;
        sub_1BE04A9F4();

        v68[1] = v68;
        MEMORY[0x1EEE9AC00](v55, v56);
        v68[-4] = v40;
        v68[-3] = v51;
        LOBYTE(v68[-2]) = v71;
        v68[-1] = v52;
        v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FFC0);
        v57 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3FFC8);
        v58 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3FFD0);
        v59 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3FFD8);
        v60 = sub_1BD28230C();
        v86 = v59;
        v87 = v60;
        OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
        v86 = v58;
        v87 = OpaqueTypeConformance2;
        v62 = swift_getOpaqueTypeConformance2();
        v86 = v57;
        v87 = v62;
        swift_getOpaqueTypeConformance2();
        sub_1BE0504B4();

        (*(v46 + 32))(v42, v41, v45);
        (*(v46 + 56))(v42, 0, 1, v45);
        v44 = v70;
        goto LABEL_16;
      }
    }
  }

  (*(v46 + 56))(v42, 1, 1, v45);
LABEL_16:
  sub_1BD0DE204(v42, v44, &qword_1EBD3FEF8);
  sub_1BD0DE19C(v44, v77, &qword_1EBD3FEF8);
  swift_storeEnumTagMultiPayload();
  sub_1BD281BBC(&qword_1EBD3FE60, &qword_1EBD3FE68, &unk_1BE0C70B0, sub_1BD281C38);
  sub_1BD282024();
  v67 = v79;
  sub_1BE04F9A4();
  sub_1BD0DE19C(v67, v82, &qword_1EBD3FE58);
  swift_storeEnumTagMultiPayload();
  sub_1BD281B04();
  sub_1BE04F9A4();
  sub_1BD0DE53C(v67, &qword_1EBD3FE58);
  v65 = v44;
  v66 = &qword_1EBD3FEF8;
  return sub_1BD0DE53C(v65, v66);
}

uint64_t sub_1BD27E348@<X0>(BOOL *a1@<X8>)
{
  sub_1BE04E9B4();
  v3 = v2;
  result = sub_1BE04E9C4();
  *a1 = v5 < v3;
  return result;
}

uint64_t sub_1BD27E38C(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  type metadata accessor for PeerPaymentFraudPageView.PeerPaymentFraudPageContentView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  result = sub_1BE0516A4();
  if (v2 != v4)
  {
    result = sub_1BE0516B4();
    if (v2)
    {
      return sub_1BE0516B4();
    }
  }

  return result;
}

uint64_t sub_1BD27E470@<X0>(BOOL *a1@<X8>)
{
  result = sub_1BE04E9B4();
  if (v3 <= 0.0)
  {
    v10 = 0;
  }

  else
  {
    v4 = v3;
    sub_1BE04E9D4();
    v6 = v5;
    sub_1BE04E9E4();
    v8 = v6 + v7;
    result = sub_1BE04E9C4();
    v10 = v4 <= v8 + v9;
  }

  *a1 = v10;
  return result;
}

void sub_1BD27E4D8(uint64_t a1, _BYTE *a2)
{
  if (*a2 == 1)
  {
    type metadata accessor for PeerPaymentFraudPageView.PeerPaymentFraudPageContentView(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
    sub_1BE0516A4();
    if ((v2 & 1) == 0)
    {
      sub_1BE0516B4();
    }
  }
}

id sub_1BD27E584@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE04F714();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v37 = &v29[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for PeerPaymentFraudPageView.PeerPaymentFraudPageContentView(0);
  v38 = *(v8 - 8);
  v9 = *(v38 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v12 = a1;
  v13 = *a1;
  result = [*a1 confirmButtonTitle];
  if (!result)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  v15 = result;
  v34 = v5;
  v35 = a2;
  v36 = v4;
  v16 = sub_1BE052434();
  v32 = v17;
  v33 = v16;

  v31 = sub_1BE0513B4();
  if (qword_1EBD36EF0 != -1)
  {
    swift_once();
  }

  v18 = qword_1EBDAB660;
  v19 = v12 + *(v8 + 40);
  v20 = *v19;
  v21 = *(v19 + 8);
  LOBYTE(v48[0]) = v20;
  *(&v48[0] + 1) = v21;
  sub_1BE048964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516A4();
  v30 = v39;
  sub_1BD2824B0(v12, &v29[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for PeerPaymentFraudPageView.PeerPaymentFraudPageContentView);
  v22 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v23 = swift_allocObject();
  sub_1BD282518(&v29[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], v23 + v22, type metadata accessor for PeerPaymentFraudPageView.PeerPaymentFraudPageContentView);
  sub_1BE048964();
  result = [v13 cancelButtonTitle];
  if (!result)
  {
    goto LABEL_9;
  }

  v24 = result;
  v38 = sub_1BE052434();
  v26 = v25;

  sub_1BD2824B0(v12, &v29[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for PeerPaymentFraudPageView.PeerPaymentFraudPageContentView);
  v27 = swift_allocObject();
  sub_1BD282518(&v29[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], v27 + v22, type metadata accessor for PeerPaymentFraudPageView.PeerPaymentFraudPageContentView);
  if (qword_1EBD36EE8 != -1)
  {
    swift_once();
  }

  *&v39 = v33;
  *(&v39 + 1) = v32;
  *&v40 = v31;
  *(&v40 + 1) = v18;
  LOBYTE(v41) = 0;
  BYTE1(v41) = v30 ^ 1;
  *(&v41 + 1) = sub_1BD2817EC;
  *&v42 = v23;
  *(&v42 + 1) = v38;
  *&v43 = v26;
  *(&v43 + 1) = qword_1EBDAB658;
  v44 = v18;
  *&v45 = sub_1BD28184C;
  *(&v45 + 1) = v27;
  v46 = 0u;
  v47 = 0u;
  sub_1BE048964();
  v28 = v37;
  sub_1BE04F704();
  sub_1BD1BC1B0();
  sub_1BE050CB4();
  (*(v34 + 8))(v28, v36);
  v48[6] = v45;
  v48[7] = v46;
  v48[8] = v47;
  v48[2] = v41;
  v48[3] = v42;
  v48[4] = v43;
  v48[5] = v44;
  v48[0] = v39;
  v48[1] = v40;
  return sub_1BD1BC4CC(v48);
}

uint64_t sub_1BD27E988(uint64_t a1)
{
  v2 = *(*(a1 + 8) + 16);
  if (!(v2 >> 62))
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

    return sub_1BD27B5C8();
  }

  result = sub_1BE053704();
  if (!result)
  {
    return sub_1BD27B5C8();
  }

LABEL_3:
  v4 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
    goto LABEL_13;
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
LABEL_13:
    sub_1BE048C84();
    v5 = MEMORY[0x1BFB40900](v4, v2);

LABEL_8:
    v6 = *a1;
    sub_1BD0E5E8C(0, &qword_1EBD3FCF8);
    v7 = v6;
    v8 = sub_1BE053074();

    if (v8)
    {
      v9 = type metadata accessor for PeerPaymentFraudPageView.PeerPaymentFraudPageContentView(0);
      (*(a1 + *(v9 + 32)))(1);
      return sub_1BE04E654();
    }

    return sub_1BD27B5C8();
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v4 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(v2 + 8 * v4 + 32);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

void sub_1BD27EACC(uint64_t a1@<X0>, int a2@<W1>, char a3@<W2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v116 = a2;
  v118 = a1;
  v123 = sub_1BE050674();
  v121 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123, v8);
  v119 = &v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FED0);
  v108 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v107 = &v105 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FEC8);
  v110 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v14);
  v109 = &v105 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40000);
  v112 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v111 = &v105 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FEA8);
  v106 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v20);
  v105 = &v105 - v21;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40008);
  v113 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120, v22);
  v117 = &v105 - v23;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40010);
  MEMORY[0x1EEE9AC00](v124, v24);
  v26 = &v105 - v25;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40018);
  MEMORY[0x1EEE9AC00](v115, v27);
  v114 = (&v105 - v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FE88);
  MEMORY[0x1EEE9AC00](v29, v30);
  v122 = &v105 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FE78);
  v34 = MEMORY[0x1EEE9AC00](v32 - 8, v33);
  v131 = a5;
  v132 = a4;
  v129 = v13;
  v130 = v16;
  v127 = v26;
  v128 = v10;
  v125 = v29;
  v126 = &v105 - v35;
  if (!a3)
  {
    v112 = v19;
    v62 = [a4 text];
    if (v62)
    {
      v63 = v62;
      v64 = sub_1BE052434();
      v66 = v65;

      v133 = v64;
      v134 = v66;
      sub_1BD0DDEBC();
      v67 = sub_1BE0506C4();
      v69 = v68;
      v70 = v114;
      *v114 = v67;
      v70[1] = v68;
      v121 = v67;
      v72 = v71 & 1;
      *(v70 + 16) = v71 & 1;
      v70[3] = v73;
      v123 = v73;
      swift_storeEnumTagMultiPayload();
      sub_1BD0D7F18(v67, v69, v72);
      sub_1BE048C84();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FE98);
      sub_1BD2823BC(&qword_1EBD3FE90, &qword_1EBD3FE98, &unk_1BE0C70C8, sub_1BD281F28);
      v74 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3FEB0);
      v75 = sub_1BD2823BC(&qword_1EBD3FEB8, &qword_1EBD3FEB0, &unk_1BE0C70D8, sub_1BD281F7C);
      v133 = v74;
      v134 = v75;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v133 = v112;
      v134 = OpaqueTypeConformance2;
      swift_getOpaqueTypeConformance2();
      v77 = v122;
      sub_1BE04F9A4();
      sub_1BD0DE19C(v77, v127, &qword_1EBD3FE88);
      swift_storeEnumTagMultiPayload();
      sub_1BD281DBC();
      v78 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3FED8);
      v79 = sub_1BD2823BC(&qword_1EBD3FEE0, &qword_1EBD3FED8, &unk_1BE0C70F0, sub_1BD281FD0);
      v133 = v78;
      v134 = v79;
      v80 = swift_getOpaqueTypeConformance2();
      v133 = v128;
      v134 = v80;
      v81 = swift_getOpaqueTypeConformance2();
      v133 = v129;
      v134 = v81;
      swift_getOpaqueTypeConformance2();
      v61 = v126;
      sub_1BE04F9A4();
      sub_1BD0DDF10(v121, v69, v72);

      sub_1BD0DE53C(v77, &qword_1EBD3FE88);
      goto LABEL_9;
    }

    goto LABEL_11;
  }

  if (a3 == 1)
  {
    v112 = v19;
    v36 = [a4 text];
    if (v36)
    {
      v37 = v36;
      v38 = sub_1BE052434();
      v40 = v39;

      v133 = v38;
      v134 = v40;
      sub_1BD0DDEBC();
      v41 = sub_1BE0506C4();
      v43 = v42;
      v133 = v41;
      v134 = v42;
      v45 = v44 & 1;
      v135 = v44 & 1;
      v136 = v46;
      v137 = 1;
      v116 ^= 1u;
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FEB0);
      v48 = sub_1BD2823BC(&qword_1EBD3FEB8, &qword_1EBD3FEB0, &unk_1BE0C70D8, sub_1BD281F7C);
      v49 = v105;
      sub_1BE050F84();
      sub_1BD0DDF10(v41, v43, v45);

      v50 = v119;
      sub_1BE050664();
      v133 = v47;
      v134 = v48;
      v118 = MEMORY[0x1E6981418];
      v51 = swift_getOpaqueTypeConformance2();
      v52 = v117;
      v53 = v112;
      sub_1BE051164();
      (*(v121 + 8))(v50, v123);
      (*(v106 + 8))(v49, v53);
      v54 = v113;
      v55 = v120;
      (*(v113 + 16))(v114, v52, v120);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FE98);
      sub_1BD2823BC(&qword_1EBD3FE90, &qword_1EBD3FE98, &unk_1BE0C70C8, sub_1BD281F28);
      v133 = v53;
      v134 = v51;
      swift_getOpaqueTypeConformance2();
      v56 = v122;
      sub_1BE04F9A4();
      sub_1BD0DE19C(v56, v127, &qword_1EBD3FE88);
      swift_storeEnumTagMultiPayload();
      sub_1BD281DBC();
      v57 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3FED8);
      v58 = sub_1BD2823BC(&qword_1EBD3FEE0, &qword_1EBD3FED8, &unk_1BE0C70F0, sub_1BD281FD0);
      v133 = v57;
      v134 = v58;
      v59 = swift_getOpaqueTypeConformance2();
      v133 = v128;
      v134 = v59;
      v60 = swift_getOpaqueTypeConformance2();
      v133 = v129;
      v134 = v60;
      swift_getOpaqueTypeConformance2();
      v61 = v126;
      sub_1BE04F9A4();
      sub_1BD0DE53C(v56, &qword_1EBD3FE88);
      (*(v54 + 8))(v117, v55);
LABEL_9:
      sub_1BD0DE204(v61, v131, &qword_1EBD3FE78);

      return;
    }

    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v82 = [a4 text];
  if (v82)
  {
    v83 = v82;
    v84 = sub_1BE052434();
    v86 = v85;

    v133 = v84;
    v134 = v86;
    sub_1BD0DDEBC();
    v87 = sub_1BE0506C4();
    v89 = v88;
    v133 = v87;
    v134 = v88;
    v91 = v90 & 1;
    v135 = v90 & 1;
    v136 = v92;
    v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FED8);
    v94 = sub_1BD2823BC(&qword_1EBD3FEE0, &qword_1EBD3FED8, &unk_1BE0C70F0, sub_1BD281FD0);
    v95 = v107;
    sub_1BE050EA4();
    sub_1BD0DDF10(v87, v89, v91);

    v133 = v93;
    v134 = v94;
    v96 = swift_getOpaqueTypeConformance2();
    v97 = v109;
    v98 = v128;
    sub_1BE050F84();
    (*(v108 + 8))(v95, v98);
    v99 = v119;
    sub_1BE050664();
    v133 = v98;
    v134 = v96;
    v100 = swift_getOpaqueTypeConformance2();
    v101 = v111;
    v102 = v129;
    sub_1BE051164();
    (*(v121 + 8))(v99, v123);
    (*(v110 + 8))(v97, v102);
    v103 = v112;
    v104 = v130;
    (*(v112 + 16))(v127, v101, v130);
    swift_storeEnumTagMultiPayload();
    sub_1BD281DBC();
    v133 = v102;
    v134 = v100;
    swift_getOpaqueTypeConformance2();
    v61 = v126;
    sub_1BE04F9A4();
    (*(v103 + 8))(v101, v104);
    goto LABEL_9;
  }

LABEL_12:
  __break(1u);
}

id sub_1BD27F96C@<X0>(void *a1@<X1>, char a2@<W2>, uint64_t a3@<X8>)
{
  v30 = a3;
  v32 = sub_1BE050674();
  v31 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32, v5);
  v29 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FFD0);
  v26 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v25 - v9;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FFC8);
  v27 = *(v28 - 8);
  v12 = MEMORY[0x1EEE9AC00](v28, v11);
  v14 = &v25 - v13;
  result = [a1 text];
  if (result)
  {
    v16 = result;
    v17 = sub_1BE052434();
    v19 = v18;

    sub_1BD27FDA4(v17, v19, a2, v39);

    v35 = v39[2];
    v36[0] = *v40;
    *(v36 + 9) = *&v40[9];
    v34 = v39[1];
    v33 = v39[0];
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FFD8);
    v21 = sub_1BD28230C();
    sub_1BE050EA4();
    v37[2] = v35;
    v38[0] = v36[0];
    *(v38 + 9) = *(v36 + 9);
    v37[0] = v33;
    v37[1] = v34;
    sub_1BD0DE53C(v37, &qword_1EBD3FFD8);
    *&v33 = v20;
    *(&v33 + 1) = v21;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_1BE050F84();
    (*(v26 + 8))(v10, v7);
    v23 = v29;
    sub_1BE050664();
    *&v33 = v7;
    *(&v33 + 1) = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v24 = v28;
    sub_1BE051164();
    (*(v31 + 8))(v23, v32);
    return (*(v27 + 8))(v14, v24);
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 sub_1BD27FDA4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, _OWORD *a4@<X8>)
{
  if (a3)
  {
    *&v6 = a1;
    *(&v6 + 1) = a2;
    sub_1BD0DDEBC();
    sub_1BE048C84();
    sub_1BE0506C4();
    if (qword_1EBD36E40 != -1)
    {
      swift_once();
    }
  }

  else
  {
    *&v6 = a1;
    *(&v6 + 1) = a2;
    sub_1BD0DDEBC();
    sub_1BE048C84();
    sub_1BE0506C4();
    PKNaturalUIEnabled();
    if (PKNaturalUIEnabled())
    {
      sub_1BE051CE4();
    }

    else
    {
      sub_1BE051CD4();
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FFF0);
  sub_1BD2823BC(&qword_1EBD3FFE8, &qword_1EBD3FFF0, &unk_1BE0C71F0, sub_1BD282440);
  sub_1BE04F9A4();
  a4[2] = v8;
  a4[3] = *v9;
  *(a4 + 57) = *&v9[9];
  result = v7;
  *a4 = v6;
  a4[1] = v7;
  return result;
}

id sub_1BD27FFB8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v53 = a3;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FE48);
  v49 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51, v5);
  v44 = &v43 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FF38);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v52 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v50 = &v43 - v12;
  v13 = type metadata accessor for PeerPaymentFraudPageView.PeerPaymentFraudPageContentView(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8, v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FF40);
  v45 = *(v17 - 8);
  v46 = v17;
  MEMORY[0x1EEE9AC00](v17, v18);
  v48 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20, v21);
  v24 = &v43 - v23;
  v47 = a1;
  result = [a1 lines];
  if (result)
  {
    v26 = result;
    sub_1BD0E5E8C(0, &qword_1EBD3FF48);
    v27 = sub_1BE052744();

    v54 = v27;
    swift_getKeyPath();
    v43 = a2;
    sub_1BD2824B0(a2, &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PeerPaymentFraudPageView.PeerPaymentFraudPageContentView);
    v28 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v29 = swift_allocObject();
    sub_1BD282518(&v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v28, type metadata accessor for PeerPaymentFraudPageView.PeerPaymentFraudPageContentView);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FF50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FF58);
    sub_1BD0DE4F4(&qword_1EBD3FF60, &qword_1EBD3FF50);
    sub_1BD214890(&qword_1EBD3FF68, &qword_1EBD3FF48);
    sub_1BD0DE4F4(&qword_1EBD3FF70, &qword_1EBD3FF58);
    sub_1BE0519C4();
    v30 = [v47 footer];
    if (v30)
    {
      v31 = v44;
      v32 = v30;
      sub_1BD27D9F4(v30, 0, v44);

      v33 = v50;
      sub_1BD0DE204(v31, v50, &qword_1EBD3FE48);
      v34 = 0;
    }

    else
    {
      v34 = 1;
      v33 = v50;
    }

    (*(v49 + 56))(v33, v34, 1, v51);
    v35 = v45;
    v36 = v46;
    v37 = *(v45 + 16);
    v38 = v48;
    v37(v48, v24, v46);
    v39 = v52;
    sub_1BD0DE19C(v33, v52, &qword_1EBD3FF38);
    v40 = v53;
    v37(v53, v38, v36);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FF78);
    sub_1BD0DE19C(v39, &v40[*(v41 + 48)], &qword_1EBD3FF38);
    sub_1BD0DE53C(v33, &qword_1EBD3FF38);
    v42 = *(v35 + 8);
    v42(v24, v36);
    sub_1BD0DE53C(v39, &qword_1EBD3FF38);
    return (v42)(v38, v36);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD28053C@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  *a3 = sub_1BE04F4D4();
  *(a3 + 8) = 0x4020000000000000;
  *(a3 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FF80);
  return sub_1BD2805A4(a2, v5, (a3 + *(v6 + 44)));
}

id sub_1BD2805A4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v56 = a3;
  v57 = a2;
  v4 = type metadata accessor for PeerPaymentFraudPageView.PeerPaymentFraudPageContentView(0);
  v52 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v53 = v6;
  v54 = &v49[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FF88);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v55 = &v49[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v49[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49130);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v49[-v16];
  v18 = sub_1BE04BD74();
  v19 = *(v18 - 8);
  v21 = MEMORY[0x1EEE9AC00](v18, v20);
  v23 = &v49[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v19 + 104))(v23, *MEMORY[0x1E69B8050], v18, v21);
  result = PKPassKitBundle();
  if (result)
  {
    v25 = result;
    v26 = sub_1BE04B6F4();
    v28 = v27;

    (*(v19 + 8))(v23, v18);
    v58 = v26;
    v59 = v28;
    sub_1BD0DDEBC();
    v29 = sub_1BE0506C4();
    v31 = v30;
    LOBYTE(v25) = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD385A0);
    v51 = a1;
    sub_1BE04E534();
    sub_1BE050364();
    v33 = sub_1BE050354();
    (*(*(v33 - 8) + 56))(v17, 1, 1, v33);
    sub_1BE0503B4();
    sub_1BD0DE53C(v17, &qword_1EBD49130);
    v34 = sub_1BE0505F4();
    v36 = v35;
    v50 = v37;
    v39 = v38;

    sub_1BD0DDF10(v29, v31, v25 & 1);

    *v13 = sub_1BE04F7B4();
    *(v13 + 1) = 0;
    v13[16] = 0;
    result = [v57 contents];
    if (result)
    {
      v40 = result;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FF90);
      sub_1BD0E5E8C(0, &qword_1EBD3FDE0);
      v41 = sub_1BE052744();

      v58 = v41;
      swift_getKeyPath();
      v42 = v54;
      sub_1BD2824B0(v51, v54, type metadata accessor for PeerPaymentFraudPageView.PeerPaymentFraudPageContentView);
      v43 = (*(v52 + 80) + 16) & ~*(v52 + 80);
      v44 = swift_allocObject();
      sub_1BD282518(v42, v44 + v43, type metadata accessor for PeerPaymentFraudPageView.PeerPaymentFraudPageContentView);
      v45 = swift_allocObject();
      *(v45 + 16) = sub_1BD282198;
      *(v45 + 24) = v44;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FF98);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FE48);
      sub_1BD28224C();
      sub_1BD281A78();
      sub_1BE0519C4();
      v46 = v55;
      sub_1BD0DE19C(v13, v55, &qword_1EBD3FF88);
      v47 = v56;
      *v56 = v34;
      v47[1] = v36;
      LOBYTE(v44) = v50 & 1;
      *(v47 + 16) = v50 & 1;
      v47[3] = v39;
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FFA8);
      sub_1BD0DE19C(v46, v47 + *(v48 + 48), &qword_1EBD3FF88);
      sub_1BD0D7F18(v34, v36, v44);
      sub_1BE048C84();
      sub_1BD0DE53C(v13, &qword_1EBD3FF88);
      sub_1BD0DE53C(v46, &qword_1EBD3FF88);
      sub_1BD0DDF10(v34, v36, v44);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD280BA0@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1BE04F7B4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FD58);
  return sub_1BD27C578(v1, a1 + *(v3 + 44));
}

uint64_t sub_1BD280BF0@<X0>(uint64_t a1@<X8>)
{
  v12[1] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FCC8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v12 - v5;
  sub_1BE051A84();
  swift_getKeyPath();
  sub_1BE051AA4();

  (*(v3 + 8))(v6, v2);
  v20 = v22;
  v21 = v23;
  v13 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FCD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FCD8);
  sub_1BD0DE4F4(&qword_1EBD3FCE0, &qword_1EBD3FCD0);
  sub_1BD0DE4F4(&qword_1EBD3FCE8, &qword_1EBD3FCD0);
  sub_1BD0DE4F4(&qword_1EBD3FCF0, &qword_1EBD3FCD0);
  v7 = type metadata accessor for PeerPaymentFraudPageView.PeerPaymentFraudPageContentView(255);
  v8 = sub_1BD0E5E8C(255, &qword_1EBD3FCF8);
  v9 = sub_1BD280F14(&qword_1EBD3FD00, type metadata accessor for PeerPaymentFraudPageView.PeerPaymentFraudPageContentView);
  v10 = sub_1BD214890(&qword_1EBD3FD08, &qword_1EBD3FCF8);
  v14 = v7;
  v15 = v8;
  v16 = v7;
  v17 = v9;
  v18 = v10;
  v19 = v9;
  swift_getOpaqueTypeConformance2();
  return sub_1BE04EBF4();
}

uint64_t sub_1BD280F14(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1BD280FA0()
{
  sub_1BD0E5E8C(319, &qword_1EBD3FCF8);
  if (v0 <= 0x3F)
  {
    sub_1BD1030A8();
    if (v1 <= 0x3F)
    {
      sub_1BD2810C4(319, &qword_1EBD3FD20, type metadata accessor for PeerPaymentFraudPageView.PeerPaymentFraudPageUIModel, MEMORY[0x1E6981AA0]);
      if (v2 <= 0x3F)
      {
        sub_1BD2810C4(319, &qword_1EBD3AB88, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BD2810C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BD281130()
{
  result = sub_1BE04B5D4();
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

void sub_1BD2811F8()
{
  sub_1BD0E5E8C(319, &qword_1EBD3FCF8);
  if (v0 <= 0x3F)
  {
    type metadata accessor for PeerPaymentFraudPageView.PeerPaymentFraudPageUIModel(319);
    if (v1 <= 0x3F)
    {
      sub_1BE04E664();
      if (v2 <= 0x3F)
      {
        sub_1BD1030A8();
        if (v3 <= 0x3F)
        {
          sub_1BD10EE48();
          if (v4 <= 0x3F)
          {
            sub_1BD0DDCF8();
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

unint64_t sub_1BD281318()
{
  result = qword_1EBD3FD90;
  if (!qword_1EBD3FD90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3FD88);
    sub_1BD0DE4F4(&qword_1EBD3FD98, &qword_1EBD3FDA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3FD90);
  }

  return result;
}

uint64_t objectdestroyTm_19()
{
  v1 = (type metadata accessor for PeerPaymentFraudPageView.PeerPaymentFraudPageContentView(0) - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));

  v3 = v1[9];
  v4 = sub_1BE04E664();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  v5 = v1[13];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD385A0);
  (*(*(v6 - 8) + 8))(v2 + v5, v6);

  return swift_deallocObject();
}

uint64_t sub_1BD281570(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for PeerPaymentFraudPageView.PeerPaymentFraudPageContentView(0) - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

unint64_t sub_1BD28160C()
{
  result = qword_1EBD3FDB0;
  if (!qword_1EBD3FDB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3FD78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3FD70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C160);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3FD68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3FD60);
    sub_1BD0DE4F4(&qword_1EBD3FDA8, &qword_1EBD3FD60);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1BD1BC1B0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3FDB0);
  }

  return result;
}

uint64_t sub_1BD2817EC()
{
  v1 = *(type metadata accessor for PeerPaymentFraudPageView.PeerPaymentFraudPageContentView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1BD27E988(v2);
}

uint64_t sub_1BD28184C()
{
  v1 = type metadata accessor for PeerPaymentFraudPageView.PeerPaymentFraudPageContentView(0);
  (*(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)) + *(v1 + 32)))(0);
  return sub_1BE04E654();
}

unint64_t sub_1BD281908()
{
  result = qword_1EBD3FE08;
  if (!qword_1EBD3FE08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3FDF0);
    sub_1BD281BBC(&qword_1EBD3FE10, &qword_1EBD3FE18, &unk_1BE0C7088, sub_1BD2819C0);
    sub_1BD281A78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3FE08);
  }

  return result;
}

unint64_t sub_1BD2819C0()
{
  result = qword_1EBD3FE20;
  if (!qword_1EBD3FE20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3FE28);
    sub_1BD0DE4F4(&qword_1EBD3FE30, &qword_1EBD3FE38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3FE20);
  }

  return result;
}

unint64_t sub_1BD281A78()
{
  result = qword_1EBD3FE40;
  if (!qword_1EBD3FE40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3FE48);
    sub_1BD281B04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3FE40);
  }

  return result;
}

unint64_t sub_1BD281B04()
{
  result = qword_1EBD3FE50;
  if (!qword_1EBD3FE50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3FE58);
    sub_1BD281BBC(&qword_1EBD3FE60, &qword_1EBD3FE68, &unk_1BE0C70B0, sub_1BD281C38);
    sub_1BD282024();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3FE50);
  }

  return result;
}

uint64_t sub_1BD281BBC(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_1BD281C38()
{
  result = qword_1EBD3FE70;
  if (!qword_1EBD3FE70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3FE78);
    sub_1BD281DBC();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3FEC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3FED0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3FED8);
    sub_1BD2823BC(&qword_1EBD3FEE0, &qword_1EBD3FED8, &unk_1BE0C70F0, sub_1BD281FD0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3FE70);
  }

  return result;
}

unint64_t sub_1BD281DBC()
{
  result = qword_1EBD3FE80;
  if (!qword_1EBD3FE80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3FE88);
    sub_1BD2823BC(&qword_1EBD3FE90, &qword_1EBD3FE98, &unk_1BE0C70C8, sub_1BD281F28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3FEA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3FEB0);
    sub_1BD2823BC(&qword_1EBD3FEB8, &qword_1EBD3FEB0, &unk_1BE0C70D8, sub_1BD281F7C);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3FE80);
  }

  return result;
}

unint64_t sub_1BD281F28()
{
  result = qword_1EBD3FEA0;
  if (!qword_1EBD3FEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3FEA0);
  }

  return result;
}

unint64_t sub_1BD281F7C()
{
  result = qword_1EBD3FEC0;
  if (!qword_1EBD3FEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3FEC0);
  }

  return result;
}

unint64_t sub_1BD281FD0()
{
  result = qword_1EBD3FEE8;
  if (!qword_1EBD3FEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3FEE8);
  }

  return result;
}

unint64_t sub_1BD282024()
{
  result = qword_1EBD3FEF0;
  if (!qword_1EBD3FEF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3FEF8);
    sub_1BD0DE4F4(&qword_1EBD3FF00, &qword_1EBD3FF08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3FEF0);
  }

  return result;
}

uint64_t sub_1BD282100(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

id sub_1BD282198@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for PeerPaymentFraudPageView.PeerPaymentFraudPageContentView(0);
  if (a1)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  return sub_1BD27D9F4(a2, v6, a3);
}

unint64_t sub_1BD28224C()
{
  result = qword_1EBD3FFA0;
  if (!qword_1EBD3FFA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3FF98);
    sub_1BD0DE4F4(&qword_1EBD3FDF8, &qword_1EBD3FDE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3FFA0);
  }

  return result;
}

unint64_t sub_1BD28230C()
{
  result = qword_1EBD3FFE0;
  if (!qword_1EBD3FFE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3FFD8);
    sub_1BD2823BC(&qword_1EBD3FFE8, &qword_1EBD3FFF0, &unk_1BE0C71F0, sub_1BD282440);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3FFE0);
  }

  return result;
}

uint64_t sub_1BD2823BC(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_1BD282440()
{
  result = qword_1EBD3FFF8;
  if (!qword_1EBD3FFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3FFF8);
  }

  return result;
}

uint64_t sub_1BD2824B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD282518(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD2825AC(uint64_t a1)
{
  v2 = type metadata accessor for PeerPaymentFraudPageView.PeerPaymentFraudPageContentView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD282628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 1;
  }

  v4 = sub_1BD148F70(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 1;
  }

  v6 = *(a3 + 56) + 16 * v4;
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = v7;
  return v7;
}

char *ApplePayUserEducationDemoAnimationView.init()()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  v90 = v1;
  v91 = v2;
  v4 = MEMORY[0x1EEE9AC00](v1, v3);
  v83 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v84 = &v82 - v8;
  MEMORY[0x1EEE9AC00](v7, v9);
  v89 = &v82 - v10;
  v11 = sub_1BE04A264();
  v86 = *(v11 - 8);
  v87 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BE04B0F4();
  v16 = *(v15 - 8);
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v20 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v0[OBJC_IVAR___PKApplePayUserEducationDemoAnimationView_minuteMonitor] = 0;
  v21 = OBJC_IVAR___PKApplePayUserEducationDemoAnimationView_layerColorConfigurationSets;
  v23 = sub_1BD2844B4(v18, v22);
  v92 = v0;
  *&v0[v21] = v23;
  v24 = objc_opt_self();
  v25 = 0xE400000000000000;
  v26 = sub_1BE052404();
  sub_1BE04B0A4();
  v27 = sub_1BE04B044();
  v28 = *(v16 + 8);
  v88 = v15;
  v85 = v28;
  v28(v20, v15);
  v29 = [v24 dateFormatFromTemplate:v26 options:0 locale:v27];

  if (v29)
  {
    v30 = sub_1BE052434();
    v25 = v31;
  }

  else
  {
    v30 = 1835874920;
  }

  v97 = v30;
  v98 = v25;
  v95 = 97;
  v96 = 0xE100000000000000;
  v93 = 0;
  v94 = 0xE000000000000000;
  sub_1BD0DDEBC();
  v32 = sub_1BE053584();
  v34 = v33;

  v97 = v32;
  v98 = v34;
  sub_1BE04A214();
  sub_1BE053564();
  (v86)[1](v14, v87);

  v35 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v36 = OBJC_IVAR___PKApplePayUserEducationDemoAnimationView_timeFormatter;
  v37 = v92;
  *&v92[OBJC_IVAR___PKApplePayUserEducationDemoAnimationView_timeFormatter] = v35;
  v38 = v35;
  v39 = sub_1BE052404();

  [v38 setDateFormat_];

  v40 = *&v37[v36];
  sub_1BE04B0A4();
  v41 = sub_1BE04B044();
  v85(v20, v88);
  [v40 setLocale_];

  v42 = sub_1BDA81390(0xD000000000000022, 0x80000001BE120110, 2);
  v43 = objc_opt_self();
  v44 = v42;
  v45 = [v43 secondarySystemBackgroundColor];
  [v44 setBackgroundColor_];

  LOBYTE(v45) = PKSystemApertureIsAvailable();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40048);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B6CA0;
  *(inited + 32) = 0x703631656E6F6870;
  *(inited + 40) = 0xEA00000000006F72;
  *(inited + 48) = v45;
  *(inited + 56) = 0x653631656E6F6870;
  *(inited + 64) = 0xE800000000000000;
  *(inited + 72) = v45 ^ 1;
  v47 = sub_1BD1ABED0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40050);
  swift_arrayDestroy();
  sub_1BDA8275C(v47);

  v48 = sub_1BD283128();
  v49 = [objc_opt_self() systemFontOfSize:20.0 weight:*MEMORY[0x1E69DB970]];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40058);
  v50 = swift_initStackObject();
  *(v50 + 16) = xmmword_1BE0B98E0;
  *(v50 + 32) = 0x74786554656D6974;
  *(v50 + 40) = 0xE800000000000000;
  *(v50 + 48) = v48;
  *(v50 + 56) = 0x644965636166;
  *(v50 + 64) = 0xE600000000000000;
  *(v50 + 72) = v49;
  *(v50 + 80) = 0xD000000000000018;
  *(v50 + 88) = 0x80000001BE120140;
  *(v50 + 96) = v49;
  strcpy((v50 + 104), "statusDoneText");
  *(v50 + 119) = -18;
  *(v50 + 120) = v49;
  v86 = v49;
  v85 = v48;
  v51 = sub_1BD1AC2D0(v50);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40060);
  swift_arrayDestroy();
  sub_1BDA820BC(v51);

  v52 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for ApplePayUserEducationDemoAnimationView.ClockMinuteMonitor();
  v53 = swift_allocObject();
  v53[2] = 0;
  v53[3] = sub_1BD2891F4;
  v53[4] = v52;
  v54 = OBJC_IVAR___PKApplePayUserEducationDemoAnimationView_minuteMonitor;
  *&v44[OBJC_IVAR___PKApplePayUserEducationDemoAnimationView_minuteMonitor] = v53;

  if (*&v44[v54])
  {
    sub_1BE048964();
    sub_1BD283630();
  }

  v87 = v44;
  sub_1BD28347C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45E30);
  v55 = swift_initStackObject();
  *(v55 + 16) = xmmword_1BE0B98D0;
  *(v55 + 32) = 0x644965636166;
  v88 = v55 + 32;
  *(v55 + 40) = 0xE600000000000000;
  v56 = *MEMORY[0x1E69B80B8];
  v58 = v90;
  v57 = v91;
  v59 = v89;
  v92 = *(v91 + 104);
  (v92)(v89, v56, v90);
  result = PKPassKitBundle();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v61 = result;
  v62 = sub_1BE04B6F4();
  v64 = v63;

  v91 = *(v57 + 8);
  (v91)(v59, v58);
  *(v55 + 48) = v62;
  *(v55 + 56) = v64;
  *(v55 + 72) = MEMORY[0x1E69E6158];
  *(v55 + 80) = 0xD000000000000018;
  *(v55 + 88) = 0x80000001BE120140;
  v65 = *MEMORY[0x1E69B80D8];
  v66 = v84;
  (v92)(v84, v65, v58);
  result = PKPassKitBundle();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v67 = result;
  v68 = sub_1BE04B6F4();
  v70 = v69;

  (v91)(v66, v58);
  *(v55 + 96) = v68;
  *(v55 + 104) = v70;
  v71 = MEMORY[0x1E69E6158];
  *(v55 + 120) = MEMORY[0x1E69E6158];
  strcpy((v55 + 128), "statusDoneText");
  *(v55 + 143) = -18;
  v72 = v83;
  (v92)(v83, v65, v58);
  result = PKPassKitBundle();
  if (result)
  {
    v73 = result;
    v74 = sub_1BE04B6F4();
    v76 = v75;

    (v91)(v72, v58);
    *(v55 + 168) = v71;
    *(v55 + 144) = v74;
    *(v55 + 152) = v76;
    v77 = sub_1BD1AACF8(v55);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52080);
    swift_arrayDestroy();
    v78 = v87;
    sub_1BDA82510(v77);

    v79 = *&v78[OBJC_IVAR___PKApplePayUserEducationDemoAnimationView_layerColorConfigurationSets];
    *&v78[OBJC_IVAR___PKStyledMicaView_layerColorConfigurationSets] = v79;
    swift_bridgeObjectRetain_n();

    v80 = [v78 traitCollection];
    v81 = [v80 userInterfaceStyle];

    sub_1BDA81874(v79, v81);

    return v78;
  }

LABEL_12:
  __break(1u);
  return result;
}

id sub_1BD283128()
{
  v0 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
  v1 = [v0 fontDescriptorWithDesign_];

  if (v1 && (v2 = [v1 fontDescriptorWithSize_], v1, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40068), inited = swift_initStackObject(), *(inited + 16) = xmmword_1BE0B69E0, v4 = *MEMORY[0x1E69DB8F0], *(inited + 32) = *MEMORY[0x1E69DB8F0], __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40070), v5 = swift_initStackObject(), *(v5 + 16) = xmmword_1BE0B69E0, v6 = *MEMORY[0x1E69DB990], *(v5 + 32) = *MEMORY[0x1E69DB990], *(v5 + 40) = *MEMORY[0x1E69DB958], v7 = v4, v8 = v6, v9 = sub_1BD1ABFCC(v5), swift_setDeallocating(), sub_1BD0DE53C(v5 + 32, &qword_1EBD40078), *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40080), *(inited + 40) = v9, sub_1BD1AC0BC(inited), swift_setDeallocating(), sub_1BD0DE53C(inited + 32, &qword_1EBD3BF50), type metadata accessor for AttributeName(0), sub_1BD2892B0(&qword_1EBD38278, type metadata accessor for AttributeName), v10 = sub_1BE052224(), , v11 = objc_msgSend(v2, sel_fontDescriptorByAddingAttributes_, v10), v2, v10, v11))
  {
    v12 = [objc_opt_self() fontWithDescriptor:v11 size:294.0];

    return v12;
  }

  else
  {
    v14 = [objc_opt_self() monospacedDigitSystemFontOfSize:294.0 weight:*MEMORY[0x1E69DB980]];

    return v14;
  }
}

void sub_1BD283428()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1BD28347C();
  }
}

uint64_t sub_1BD28347C()
{
  v1 = v0;
  v2 = sub_1BE04AF64();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v1 + OBJC_IVAR___PKApplePayUserEducationDemoAnimationView_timeFormatter);
  sub_1BE04AF54();
  v8 = sub_1BE04AE64();
  (*(v3 + 8))(v6, v2);
  v9 = [v7 stringFromDate_];

  v10 = sub_1BE052434();
  v12 = v11;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B69E0;
  *(inited + 32) = 0x74786554656D6974;
  v14 = inited + 32;
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = v10;
  *(inited + 56) = v12;
  v15 = sub_1BD1AACF8(inited);
  swift_setDeallocating();
  sub_1BD0DE53C(v14, &qword_1EBD52080);
  sub_1BDA82510(v15);
}

uint64_t sub_1BD283630()
{
  v0 = sub_1BE04B1A4();
  v80 = *(v0 - 8);
  v81 = v0;
  MEMORY[0x1EEE9AC00](v0, v1);
  v78 = &v69 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_1BE04B1C4();
  v77 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79, v3);
  v74 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_1BE04B174();
  v72 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89, v5);
  v73 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D260);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v69 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4E840);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v69 - v13;
  v76 = sub_1BE04A474();
  v75 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76, v15);
  v87 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v88 = &v69 - v19;
  v20 = sub_1BE04B2F4();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1BE04AF64();
  v82 = *(v25 - 8);
  v83 = v25;
  v27 = MEMORY[0x1EEE9AC00](v25, v26);
  v69 = &v69 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v69 - v30;
  v32 = sub_1BE051FD4();
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32, v34);
  v36 = (&v69 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BD14BE3C();
  *v36 = sub_1BE052D54();
  (*(v33 + 104))(v36, *MEMORY[0x1E69E8020], v32);
  v37 = sub_1BE052004();
  result = (*(v33 + 8))(v36, v32);
  if (v37)
  {
    sub_1BD284158();
    v86 = v31;
    sub_1BE04AF54();
    v85 = v24;
    sub_1BE04B2A4();
    v71 = v21;
    v39 = *(v21 + 56);
    v70 = v20;
    v39(v14, 1, 1, v20);
    v40 = sub_1BE04B3B4();
    (*(*(v40 - 8) + 56))(v10, 1, 1, v40);
    sub_1BE04A454();
    v41 = v72;
    v42 = v73;
    (*(v72 + 104))(v73, *MEMORY[0x1E69698D0], v89);
    v43 = v77;
    v44 = v74;
    v45 = v79;
    (*(v77 + 104))(v74, *MEMORY[0x1E69699C8], v79);
    v47 = v80;
    v46 = v81;
    v48 = v78;
    (*(v80 + 104))(v78, *MEMORY[0x1E6969998], v81);
    v49 = v88;
    sub_1BE04B2B4();
    (*(v47 + 8))(v48, v46);
    (*(v43 + 8))(v44, v45);
    (*(v41 + 8))(v42, v89);
    (*(v75 + 8))(v87, v76);
    v51 = v82;
    v50 = v83;
    v52 = (*(v82 + 48))(v49, 1, v83);
    v53 = v70;
    v54 = v71;
    v55 = v85;
    if (v52 == 1)
    {
      (*(v71 + 8))(v85, v70);
      (*(v51 + 8))(v86, v50);
      return sub_1BD0DE53C(v88, &unk_1EBD39970);
    }

    else
    {
      v56 = v69;
      (*(v51 + 32))(v69, v88, v50);
      v57 = v86;
      sub_1BE04ADC4();
      v59 = v58;
      v60 = objc_opt_self();
      v61 = swift_allocObject();
      v62 = v84;
      swift_weakInit();
      aBlock[4] = sub_1BD289270;
      aBlock[5] = v61;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD198918;
      aBlock[3] = &block_descriptor_40;
      v63 = _Block_copy(aBlock);

      v64 = [v60 scheduledTimerWithTimeInterval:0 repeats:v63 block:v59];
      _Block_release(v63);
      v65 = *(v62 + 16);
      *(v62 + 16) = v64;
      v66 = v64;

      if (v66)
      {
        v67 = [objc_opt_self() mainRunLoop];
        [v67 addTimer:v66 forMode:*MEMORY[0x1E695DA28]];
      }

      v68 = *(v51 + 8);
      v68(v56, v50);
      (*(v54 + 8))(v55, v53);
      return (v68)(v57, v50);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD284094()
{
}

id ApplePayUserEducationDemoAnimationView.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  if (*&v0[OBJC_IVAR___PKApplePayUserEducationDemoAnimationView_minuteMonitor])
  {
    sub_1BE048964();
    sub_1BD284158();
  }

  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1BD284158()
{
  v1 = v0;
  v2 = sub_1BE051FD4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BD14BE3C();
  *v6 = sub_1BE052D54();
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8020], v2);
  v7 = sub_1BE052004();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    v8 = *(v1 + 16);
    if (v8)
    {
      [v8 invalidate];
      v9 = *(v1 + 16);
    }

    else
    {
      v9 = 0;
    }

    *(v1 + 16) = 0;
  }

  else
  {
    __break(1u);
  }
}

CGSize __swiftcall ApplePayUserEducationDemoAnimationView.sizeThatFits(_:)(CGSize a1)
{
  width = a1.width;
  v2 = [objc_opt_self() mainScreen];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v15.origin.x = v4;
  v15.origin.y = v6;
  v15.size.width = v8;
  v15.size.height = v10;
  CGRectGetHeight(v15);
  PKFloatRoundToPixel();
  v12 = v11;
  v13 = width;
  result.height = v12;
  result.width = v13;
  return result;
}

unint64_t sub_1BD2844B4(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40088);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BE0B98E0;
  *(v2 + 32) = 0x6C426D6574737973;
  *(v2 + 40) = 0xEA00000000006575;
  v3 = objc_opt_self();
  v4 = [v3 systemBlueColor];
  v5 = objc_opt_self();
  v6 = [v5 traitCollectionWithUserInterfaceStyle_];
  v7 = [v4 resolvedColorWithTraitCollection_];

  v8 = [v7 CGColor];
  *(v2 + 48) = v8;
  v9 = [v3 systemBlueColor];
  v10 = [v5 &selRef_transactionEffect + 4];
  v11 = [v9 resolvedColorWithTraitCollection_];

  v12 = [v11 CGColor];
  *(v2 + 56) = v12;
  strcpy((v2 + 64), "secondaryLabel");
  *(v2 + 79) = -18;
  v13 = [v3 secondaryLabelColor];
  v14 = [v5 &selRef_transactionEffect + 4];
  v15 = [v13 resolvedColorWithTraitCollection_];

  v16 = [v15 CGColor];
  *(v2 + 80) = v16;
  v17 = [v3 secondaryLabelColor];
  v18 = [v5 &selRef_transactionEffect + 4];
  v19 = [v17 resolvedColorWithTraitCollection_];

  v20 = [v19 CGColor];
  *(v2 + 88) = v20;
  strcpy((v2 + 96), "systemBlue30%");
  *(v2 + 110) = -4864;
  v21 = [v3 systemBlueColor];
  v22 = [v21 colorWithAlphaComponent_];

  v23 = [v5 &selRef_transactionEffect + 4];
  v24 = [v22 resolvedColorWithTraitCollection_];

  v25 = [v24 CGColor];
  *(v2 + 112) = v25;
  v26 = [v3 systemBlueColor];
  v27 = [v26 colorWithAlphaComponent_];

  v28 = [v5 traitCollectionWithUserInterfaceStyle_];
  v29 = [v27 resolvedColorWithTraitCollection_];

  v30 = [v29 CGColor];
  *(v2 + 120) = v30;
  strcpy((v2 + 128), "systemBlue10%");
  *(v2 + 142) = -4864;
  v31 = [v3 systemBlueColor];
  v32 = [v31 colorWithAlphaComponent_];

  v33 = [v5 traitCollectionWithUserInterfaceStyle_];
  v34 = [v32 resolvedColorWithTraitCollection_];

  v35 = [v34 CGColor];
  *(v2 + 144) = v35;
  v36 = [v3 systemBlueColor];
  v37 = [v36 colorWithAlphaComponent_];

  v38 = [v5 traitCollectionWithUserInterfaceStyle_];
  v39 = [v37 resolvedColorWithTraitCollection_];

  v40 = [v39 CGColor];
  *(v2 + 152) = v40;
  v41 = sub_1BD1ABBE8(v2);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40090);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1BE0BA740;
  *(v42 + 32) = 0xD000000000000010;
  *(v42 + 40) = 0x80000001BE1202C0;
  v43 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.98 green:0.98 blue:0.98 alpha:1.0];
  v44 = [v43 CGColor];

  *(v42 + 48) = v44;
  v45 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.39 green:0.39 blue:0.4 alpha:1.0];
  v46 = [v45 CGColor];

  *(v42 + 56) = v46;
  strcpy((v42 + 64), "readerIndent");
  *(v42 + 77) = 0;
  *(v42 + 78) = -5120;
  v47 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.91 green:0.91 blue:0.91 alpha:1.0];
  v48 = [v47 CGColor];

  *(v42 + 80) = v48;
  v49 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.33 green:0.33 blue:? alpha:?];
  v50 = [v49 CGColor];

  *(v42 + 88) = v50;
  *(v42 + 96) = 0x657661576E6F6369;
  *(v42 + 104) = 0xE800000000000000;
  v51 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.68 green:0.68 blue:0.7 alpha:1.0];
  v52 = [v51 CGColor];

  *(v42 + 112) = v52;
  v53 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.78 green:0.78 blue:0.8 alpha:1.0];
  v54 = [v53 CGColor];

  *(v42 + 120) = v54;
  *(v42 + 128) = 0x72476E6F74747562;
  *(v42 + 136) = 0xEA00000000007961;
  v55 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.78 green:0.77 blue:0.78 alpha:1.0];
  v56 = [v55 CGColor];

  *(v42 + 144) = v56;
  v57 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.23 green:0.23 blue:0.23 alpha:1.0];
  v58 = [v57 CGColor];

  *(v42 + 152) = v58;
  *(v42 + 160) = 0x616E6E65746E61;
  *(v42 + 168) = 0xE700000000000000;
  v59 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.9 green:0.9 blue:0.91 alpha:1.0];
  v60 = [v59 CGColor];

  *(v42 + 176) = v60;
  v61 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.29 green:0.29 blue:0.29 alpha:1.0];
  v62 = [v61 CGColor];

  *(v42 + 184) = v62;
  *(v42 + 192) = 0x6B63616C62;
  *(v42 + 200) = 0xE500000000000000;
  v63 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  v64 = [v63 CGColor];

  *(v42 + 208) = v64;
  v65 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  v66 = [v65 CGColor];

  *(v42 + 216) = v66;
  v67 = sub_1BD1ABBE8(v42);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40098);
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_1BE0C72C0;
  *(v68 + 32) = 0x66664565736C7570;
  *(v68 + 40) = 0xEB00000000746365;
  if (*(v41 + 16) && (v69 = sub_1BD148F70(0x6C426D6574737973, 0xEA00000000006575), (v70 & 1) != 0))
  {
    v71 = *(*(v41 + 56) + 16 * v69);
    v72 = v71;
  }

  else
  {
    v71 = 0;
  }

  if (*(v41 + 16) && (v73 = sub_1BD148F70(0x6C426D6574737973, 0xEA00000000006575), (v74 & 1) != 0))
  {
    v75 = *(*(v41 + 56) + 16 * v73 + 8);
    v76 = v75;
  }

  else
  {
    v75 = 0;
  }

  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  *&v982 = 0;
  *(&v982 + 1) = v71;
  v983 = 0u;
  v984 = 0u;
  v985 = 0u;
  memset(&v986[8], 0, 40);
  *v986 = v75;
  v987[0] = 0;
  v987[1] = v71;
  v988 = 0u;
  v989 = 0u;
  v990 = 0u;
  v992 = 0u;
  v993 = 0u;
  v991 = v75;
  v994 = 0;
  sub_1BD289374(&v982, &v974);
  sub_1BD2893D0(v987);
  v77 = v983;
  *(v68 + 48) = v982;
  *(v68 + 64) = v77;
  v78 = *&v986[32];
  v79 = *v986;
  *(v68 + 128) = *&v986[16];
  *(v68 + 144) = v78;
  v80 = v985;
  *(v68 + 80) = v984;
  *(v68 + 96) = v80;
  *(v68 + 112) = v79;
  strcpy((v68 + 160), "readerPlatter");
  *(v68 + 174) = -4864;
  if (*(v67 + 16) && (v81 = sub_1BD148F70(0xD000000000000010, 0x80000001BE1202C0), (v82 & 1) != 0))
  {
    v83 = *(*(v67 + 56) + 16 * v81);
    v84 = v83;
  }

  else
  {
    v83 = 0;
  }

  if (*(v67 + 16) && (v85 = sub_1BD148F70(0xD000000000000010, 0x80000001BE1202C0), (v86 & 1) != 0))
  {
    v87 = *(*(v67 + 56) + 16 * v85 + 8);
    v88 = v87;
  }

  else
  {
    v87 = 0;
  }

  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v970[8], 0, 48);
  *v970 = v83;
  *&v970[56] = v87;
  v971 = 0u;
  v972 = 0u;
  v973 = 0u;
  v975 = 0u;
  v976 = 0u;
  v977 = 0u;
  v974 = v83;
  v978 = v87;
  v979 = 0u;
  v980 = 0u;
  v981 = 0u;
  sub_1BD289374(v970, &v962);
  sub_1BD2893D0(&v974);
  v89 = *&v970[16];
  *(v68 + 176) = *v970;
  *(v68 + 192) = v89;
  v90 = v973;
  v91 = v971;
  *(v68 + 256) = v972;
  *(v68 + 272) = v90;
  v92 = *&v970[48];
  *(v68 + 208) = *&v970[32];
  *(v68 + 224) = v92;
  *(v68 + 240) = v91;
  strcpy((v68 + 288), "readerIndent");
  *(v68 + 301) = 0;
  *(v68 + 302) = -5120;
  if (*(v67 + 16))
  {
    v93 = sub_1BD148F70(0x6E49726564616572, 0xEC000000746E6564);
    if (v94)
    {
      v95 = *(*(v67 + 56) + 16 * v93);
      v96 = v95;
    }

    else
    {
      v95 = 0;
    }
  }

  else
  {
    v95 = 0;
  }

  if (*(v67 + 16) && (v97 = sub_1BD148F70(0x6E49726564616572, 0xEC000000746E6564), (v98 & 1) != 0))
  {
    v99 = *(*(v67 + 56) + 16 * v97 + 8);
    v100 = v99;
  }

  else
  {
    v99 = 0;
  }

  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v958[8], 0, 48);
  *v958 = v95;
  *&v958[56] = v99;
  v959 = 0u;
  v960 = 0u;
  v961 = 0u;
  v963 = 0u;
  v964 = 0u;
  v965 = 0u;
  v962 = v95;
  v966 = v99;
  v967 = 0u;
  v968 = 0u;
  v969 = 0u;
  sub_1BD289374(v958, &v950);
  sub_1BD2893D0(&v962);
  v101 = *&v958[16];
  *(v68 + 304) = *v958;
  *(v68 + 320) = v101;
  v102 = v961;
  v103 = v959;
  *(v68 + 384) = v960;
  *(v68 + 400) = v102;
  v104 = *&v958[48];
  *(v68 + 336) = *&v958[32];
  *(v68 + 352) = v104;
  *(v68 + 368) = v103;
  *(v68 + 416) = 0x6F43726564616572;
  *(v68 + 424) = 0xEB00000000726576;
  if (*(v67 + 16))
  {
    v105 = sub_1BD148F70(0xD000000000000010, 0x80000001BE1202C0);
    if (v106)
    {
      v107 = *(*(v67 + 56) + 16 * v105);
      v108 = v107;
    }

    else
    {
      v107 = 0;
    }
  }

  else
  {
    v107 = 0;
  }

  if (*(v67 + 16) && (v109 = sub_1BD148F70(0xD000000000000010, 0x80000001BE1202C0), (v110 & 1) != 0))
  {
    v111 = *(*(v67 + 56) + 16 * v109 + 8);
    v112 = v111;
  }

  else
  {
    v111 = 0;
  }

  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v946[8], 0, 48);
  *v946 = v107;
  *&v946[56] = v111;
  v947 = 0u;
  v948 = 0u;
  v949 = 0u;
  v951 = 0u;
  v952 = 0u;
  v953 = 0u;
  v950 = v107;
  v954 = v111;
  v955 = 0u;
  v956 = 0u;
  v957 = 0u;
  sub_1BD289374(v946, v938);
  sub_1BD2893D0(&v950);
  v113 = *&v946[16];
  *(v68 + 432) = *v946;
  *(v68 + 448) = v113;
  v114 = v949;
  v115 = v947;
  *(v68 + 512) = v948;
  *(v68 + 528) = v114;
  v116 = *&v946[48];
  *(v68 + 464) = *&v946[32];
  *(v68 + 480) = v116;
  *(v68 + 496) = v115;
  *(v68 + 544) = 0xD000000000000010;
  *(v68 + 552) = 0x80000001BE1202E0;
  if (*(v67 + 16))
  {
    v117 = sub_1BD148F70(0x657661576E6F6369, 0xE800000000000000);
    if (v118)
    {
      v119 = *(*(v67 + 56) + 16 * v117);
      v120 = v119;
    }

    else
    {
      v119 = 0;
    }
  }

  else
  {
    v119 = 0;
  }

  if (*(v67 + 16) && (v121 = sub_1BD148F70(0x657661576E6F6369, 0xE800000000000000), (v122 & 1) != 0))
  {
    v123 = *(*(v67 + 56) + 16 * v121 + 8);
    v124 = v123;
  }

  else
  {
    v123 = 0;
  }

  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  v931 = 0uLL;
  *&v932 = 0;
  *(&v932 + 1) = v119;
  v933 = 0u;
  v934 = 0u;
  v935 = 0u;
  v936 = v123;
  v937 = 0uLL;
  memset(v938, 0, 24);
  v938[3] = v119;
  v939 = 0u;
  v940 = 0u;
  v941 = 0u;
  v942 = v123;
  v943 = 0;
  v944 = 0;
  v945 = 0;
  sub_1BD289374(&v931, v923);
  sub_1BD2893D0(v938);
  v125 = v932;
  *(v68 + 560) = v931;
  *(v68 + 576) = v125;
  v126 = v937;
  v127 = v935;
  *(v68 + 640) = v936;
  *(v68 + 656) = v126;
  v128 = v934;
  *(v68 + 592) = v933;
  *(v68 + 608) = v128;
  *(v68 + 624) = v127;
  *(v68 + 672) = 0xD000000000000010;
  *(v68 + 680) = 0x80000001BE120300;
  if (*(v67 + 16) && (v129 = sub_1BD148F70(0x657661576E6F6369, 0xE800000000000000), (v130 & 1) != 0))
  {
    v131 = *(*(v67 + 56) + 16 * v129);
    v132 = v131;
  }

  else
  {
    v131 = 0;
  }

  if (*(v67 + 16) && (v133 = sub_1BD148F70(0x657661576E6F6369, 0xE800000000000000), (v134 & 1) != 0))
  {
    v135 = *(*(v67 + 56) + 16 * v133 + 8);
    v136 = v135;
  }

  else
  {
    v135 = 0;
  }

  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  v916 = 0uLL;
  *&v917 = 0;
  *(&v917 + 1) = v131;
  v918 = 0u;
  v919 = 0u;
  v920 = 0u;
  v921 = v135;
  v922 = 0uLL;
  memset(v923, 0, 24);
  v923[3] = v131;
  v924 = 0u;
  v925 = 0u;
  v926 = 0u;
  v927 = v135;
  v928 = 0;
  v929 = 0;
  v930 = 0;
  sub_1BD289374(&v916, v908);
  sub_1BD2893D0(v923);
  v137 = v917;
  *(v68 + 688) = v916;
  *(v68 + 704) = v137;
  v138 = v922;
  v139 = v920;
  *(v68 + 768) = v921;
  *(v68 + 784) = v138;
  v140 = v919;
  *(v68 + 720) = v918;
  *(v68 + 736) = v140;
  *(v68 + 752) = v139;
  *(v68 + 800) = 0xD000000000000010;
  *(v68 + 808) = 0x80000001BE120320;
  if (*(v67 + 16) && (v141 = sub_1BD148F70(0x657661576E6F6369, 0xE800000000000000), (v142 & 1) != 0))
  {
    v143 = *(*(v67 + 56) + 16 * v141);
    v144 = v143;
  }

  else
  {
    v143 = 0;
  }

  if (*(v67 + 16) && (v145 = sub_1BD148F70(0x657661576E6F6369, 0xE800000000000000), (v146 & 1) != 0))
  {
    v147 = *(*(v67 + 56) + 16 * v145 + 8);
    v148 = v147;
  }

  else
  {
    v147 = 0;
  }

  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  v901 = 0uLL;
  *&v902 = 0;
  *(&v902 + 1) = v143;
  v903 = 0u;
  v904 = 0u;
  v905 = 0u;
  v906 = v147;
  v907 = 0uLL;
  memset(v908, 0, 24);
  v908[3] = v143;
  v909 = 0u;
  v910 = 0u;
  v911 = 0u;
  v912 = v147;
  v913 = 0;
  v914 = 0;
  v915 = 0;
  sub_1BD289374(&v901, v893);
  sub_1BD2893D0(v908);
  v149 = v902;
  *(v68 + 816) = v901;
  *(v68 + 832) = v149;
  v150 = v907;
  v151 = v905;
  *(v68 + 896) = v906;
  *(v68 + 912) = v150;
  v152 = v904;
  *(v68 + 848) = v903;
  *(v68 + 864) = v152;
  *(v68 + 880) = v151;
  *(v68 + 928) = 0xD000000000000010;
  *(v68 + 936) = 0x80000001BE120340;
  if (*(v67 + 16) && (v153 = sub_1BD148F70(0x657661576E6F6369, 0xE800000000000000), (v154 & 1) != 0))
  {
    v155 = *(*(v67 + 56) + 16 * v153);
    v156 = v155;
  }

  else
  {
    v155 = 0;
  }

  if (*(v67 + 16) && (v157 = sub_1BD148F70(0x657661576E6F6369, 0xE800000000000000), (v158 & 1) != 0))
  {
    v159 = *(*(v67 + 56) + 16 * v157 + 8);
    v160 = v159;
  }

  else
  {
    v159 = 0;
  }

  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  v886 = 0uLL;
  *&v887 = 0;
  *(&v887 + 1) = v155;
  v888 = 0u;
  v889 = 0u;
  v890 = 0u;
  v891 = v159;
  v892 = 0uLL;
  memset(v893, 0, 24);
  v893[3] = v155;
  v894 = 0u;
  v895 = 0u;
  v896 = 0u;
  v897 = v159;
  v898 = 0;
  v899 = 0;
  v900 = 0;
  sub_1BD289374(&v886, v878);
  sub_1BD2893D0(v893);
  v161 = v887;
  *(v68 + 944) = v886;
  *(v68 + 960) = v161;
  *(v68 + 1040) = v892;
  v162 = v891;
  *(v68 + 1008) = v890;
  *(v68 + 1024) = v162;
  v163 = v889;
  *(v68 + 976) = v888;
  *(v68 + 992) = v163;
  *(v68 + 1056) = 0x6349726564616572;
  *(v68 + 1064) = 0xEF726568744F6E6FLL;
  if (*(v67 + 16) && (v164 = sub_1BD148F70(0x657661576E6F6369, 0xE800000000000000), (v165 & 1) != 0))
  {
    v166 = *(*(v67 + 56) + 16 * v164);
    v167 = v166;
  }

  else
  {
    v166 = 0;
  }

  if (*(v67 + 16) && (v168 = sub_1BD148F70(0x657661576E6F6369, 0xE800000000000000), (v169 & 1) != 0))
  {
    v170 = *(*(v67 + 56) + 16 * v168 + 8);
    v171 = v170;
  }

  else
  {
    v170 = 0;
  }

  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  v871 = 0uLL;
  *&v872 = 0;
  *(&v872 + 1) = v166;
  v873 = 0u;
  v874 = 0u;
  v875 = 0u;
  v876 = v170;
  v877 = 0uLL;
  memset(v878, 0, 24);
  v878[3] = v166;
  v879 = 0u;
  v880 = 0u;
  v881 = 0u;
  v882 = v170;
  v883 = 0;
  v884 = 0;
  v885 = 0;
  sub_1BD289374(&v871, &v863);
  sub_1BD2893D0(v878);
  v172 = v872;
  *(v68 + 1072) = v871;
  *(v68 + 1088) = v172;
  v173 = v874;
  *(v68 + 1104) = v873;
  *(v68 + 1168) = v877;
  v174 = v875;
  *(v68 + 1152) = v876;
  *(v68 + 1136) = v174;
  *(v68 + 1120) = v173;
  *(v68 + 1184) = 0x6F506E6F74747562;
  *(v68 + 1192) = 0xEB00000000726577;
  if (*(v67 + 16) && (v175 = sub_1BD148F70(0x72476E6F74747562, 0xEA00000000007961), (v176 & 1) != 0))
  {
    v177 = *(*(v67 + 56) + 16 * v175);
    v178 = v177;
  }

  else
  {
    v177 = 0;
  }

  if (*(v67 + 16) && (v179 = sub_1BD148F70(0x72476E6F74747562, 0xEA00000000007961), (v180 & 1) != 0))
  {
    v181 = *(*(v67 + 56) + 16 * v179 + 8);
    v182 = v181;
  }

  else
  {
    v181 = 0;
  }

  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v859[8], 0, 48);
  *v859 = v177;
  *&v859[56] = v181;
  v860 = 0u;
  v861 = 0u;
  v862 = 0u;
  v864 = 0u;
  v865 = 0u;
  v866 = 0u;
  v863 = v177;
  v867 = v181;
  v868 = 0u;
  v869 = 0u;
  v870 = 0u;
  sub_1BD289374(v859, &v851);
  sub_1BD2893D0(&v863);
  v183 = *&v859[16];
  *(v68 + 1200) = *v859;
  *(v68 + 1216) = v183;
  v184 = *&v859[48];
  *(v68 + 1232) = *&v859[32];
  *(v68 + 1296) = v862;
  v185 = v860;
  *(v68 + 1280) = v861;
  *(v68 + 1264) = v185;
  *(v68 + 1248) = v184;
  *(v68 + 1312) = 0xD000000000000014;
  *(v68 + 1320) = 0x80000001BE120360;
  if (*(v67 + 16) && (v186 = sub_1BD148F70(0x72476E6F74747562, 0xEA00000000007961), (v187 & 1) != 0))
  {
    v188 = *(*(v67 + 56) + 16 * v186);
    v189 = v188;
  }

  else
  {
    v188 = 0;
  }

  if (*(v67 + 16) && (v190 = sub_1BD148F70(0x72476E6F74747562, 0xEA00000000007961), (v191 & 1) != 0))
  {
    v192 = *(*(v67 + 56) + 16 * v190 + 8);
    v193 = v192;
  }

  else
  {
    v192 = 0;
  }

  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v847[8], 0, 48);
  *v847 = v188;
  *&v847[56] = v192;
  v848 = 0u;
  v849 = 0u;
  v850 = 0u;
  v852 = 0u;
  v853 = 0u;
  v854 = 0u;
  v851 = v188;
  v855 = v192;
  v856 = 0u;
  v857 = 0u;
  v858 = 0u;
  sub_1BD289374(v847, &v839);
  sub_1BD2893D0(&v851);
  v194 = *&v847[16];
  *(v68 + 1328) = *v847;
  *(v68 + 1344) = v194;
  v195 = *&v847[48];
  *(v68 + 1360) = *&v847[32];
  *(v68 + 1424) = v850;
  v196 = v848;
  *(v68 + 1408) = v849;
  *(v68 + 1392) = v196;
  *(v68 + 1376) = v195;
  strcpy((v68 + 1440), "buttonVolumeUp");
  *(v68 + 1455) = -18;
  if (*(v67 + 16) && (v197 = sub_1BD148F70(0x72476E6F74747562, 0xEA00000000007961), (v198 & 1) != 0))
  {
    v199 = *(*(v67 + 56) + 16 * v197);
    v200 = v199;
  }

  else
  {
    v199 = 0;
  }

  if (*(v67 + 16) && (v201 = sub_1BD148F70(0x72476E6F74747562, 0xEA00000000007961), (v202 & 1) != 0))
  {
    v203 = *(*(v67 + 56) + 16 * v201 + 8);
    v204 = v203;
  }

  else
  {
    v203 = 0;
  }

  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v835[8], 0, 48);
  *v835 = v199;
  *&v835[56] = v203;
  v836 = 0u;
  v837 = 0u;
  v838 = 0u;
  v840 = 0u;
  v841 = 0u;
  v842 = 0u;
  v839 = v199;
  v843 = v203;
  v844 = 0u;
  v845 = 0u;
  v846 = 0u;
  sub_1BD289374(v835, &v827);
  sub_1BD2893D0(&v839);
  v205 = *&v835[16];
  *(v68 + 1456) = *v835;
  *(v68 + 1472) = v205;
  v206 = *&v835[48];
  *(v68 + 1488) = *&v835[32];
  *(v68 + 1552) = v838;
  v207 = v836;
  *(v68 + 1536) = v837;
  *(v68 + 1520) = v207;
  *(v68 + 1504) = v206;
  *(v68 + 1568) = 0xD000000000000010;
  *(v68 + 1576) = 0x80000001BE120380;
  if (*(v67 + 16) && (v208 = sub_1BD148F70(0x72476E6F74747562, 0xEA00000000007961), (v209 & 1) != 0))
  {
    v210 = *(*(v67 + 56) + 16 * v208);
    v211 = v210;
  }

  else
  {
    v210 = 0;
  }

  if (*(v67 + 16) && (v212 = sub_1BD148F70(0x72476E6F74747562, 0xEA00000000007961), (v213 & 1) != 0))
  {
    v214 = *(*(v67 + 56) + 16 * v212 + 8);
    v215 = v214;
  }

  else
  {
    v214 = 0;
  }

  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v823[8], 0, 48);
  *v823 = v210;
  *&v823[56] = v214;
  v824 = 0u;
  v825 = 0u;
  v826 = 0u;
  v828 = 0u;
  v829 = 0u;
  v830 = 0u;
  v827 = v210;
  v831 = v214;
  v832 = 0u;
  v833 = 0u;
  v834 = 0u;
  sub_1BD289374(v823, &v815);
  sub_1BD2893D0(&v827);
  v216 = *&v823[16];
  *(v68 + 1584) = *v823;
  *(v68 + 1600) = v216;
  v217 = *&v823[48];
  *(v68 + 1616) = *&v823[32];
  *(v68 + 1680) = v826;
  v218 = v824;
  *(v68 + 1664) = v825;
  *(v68 + 1648) = v218;
  *(v68 + 1632) = v217;
  strcpy((v68 + 1696), "buttonAction");
  *(v68 + 1709) = 0;
  *(v68 + 1710) = -5120;
  if (*(v67 + 16) && (v219 = sub_1BD148F70(0x72476E6F74747562, 0xEA00000000007961), (v220 & 1) != 0))
  {
    v221 = *(*(v67 + 56) + 16 * v219);
    v222 = v221;
  }

  else
  {
    v221 = 0;
  }

  if (*(v67 + 16) && (v223 = sub_1BD148F70(0x72476E6F74747562, 0xEA00000000007961), (v224 & 1) != 0))
  {
    v225 = *(*(v67 + 56) + 16 * v223 + 8);
    v226 = v225;
  }

  else
  {
    v225 = 0;
  }

  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v811[8], 0, 48);
  *v811 = v221;
  *&v811[56] = v225;
  v812 = 0u;
  v813 = 0u;
  v814 = 0u;
  v816 = 0u;
  v817 = 0u;
  v818 = 0u;
  v815 = v221;
  v819 = v225;
  v820 = 0u;
  v821 = 0u;
  v822 = 0u;
  sub_1BD289374(v811, &v803);
  sub_1BD2893D0(&v815);
  v227 = *&v811[32];
  *(v68 + 1760) = *&v811[48];
  v228 = v813;
  *(v68 + 1776) = v812;
  *(v68 + 1792) = v228;
  *(v68 + 1808) = v814;
  v229 = *&v811[16];
  *(v68 + 1712) = *v811;
  *(v68 + 1728) = v229;
  *(v68 + 1744) = v227;
  *(v68 + 1824) = 2036625250;
  *(v68 + 1832) = 0xE400000000000000;
  v230 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.82 green:0.82 blue:0.82 alpha:1.0];
  v231 = [v230 CGColor];

  if (*(v67 + 16))
  {
    v232 = sub_1BD148F70(0x72476E6F74747562, 0xEA00000000007961);
    if (v233)
    {
      v234 = *(*(v67 + 56) + 16 * v232 + 8);
      v235 = v234;
    }

    else
    {
      v234 = 0;
    }
  }

  else
  {
    v234 = 0;
  }

  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v799[8], 0, 48);
  *v799 = v231;
  *&v799[56] = v234;
  v800 = 0u;
  v801 = 0u;
  v802 = 0u;
  v804 = 0u;
  v805 = 0u;
  v806 = 0u;
  v803 = v231;
  v807 = v234;
  v808 = 0u;
  v809 = 0u;
  v810 = 0u;
  sub_1BD289374(v799, &v791);
  sub_1BD2893D0(&v803);
  v236 = *&v799[16];
  *(v68 + 1840) = *v799;
  *(v68 + 1856) = v236;
  v237 = *&v799[48];
  *(v68 + 1872) = *&v799[32];
  *(v68 + 1936) = v802;
  v238 = v800;
  *(v68 + 1920) = v801;
  *(v68 + 1904) = v238;
  *(v68 + 1888) = v237;
  *(v68 + 1952) = 0xD000000000000013;
  *(v68 + 1960) = 0x80000001BE1203A0;
  if (*(v67 + 16) && (v239 = sub_1BD148F70(0x616E6E65746E61, 0xE700000000000000), (v240 & 1) != 0))
  {
    v241 = *(*(v67 + 56) + 16 * v239);
    v242 = v241;
  }

  else
  {
    v241 = 0;
  }

  if (*(v67 + 16) && (v243 = sub_1BD148F70(0x616E6E65746E61, 0xE700000000000000), (v244 & 1) != 0))
  {
    v245 = *(*(v67 + 56) + 16 * v243 + 8);
    v246 = v245;
  }

  else
  {
    v245 = 0;
  }

  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v787[8], 0, 48);
  *v787 = v241;
  *&v787[56] = v245;
  v788 = 0u;
  v789 = 0u;
  v790 = 0u;
  v792 = 0u;
  v793 = 0u;
  v794 = 0u;
  v791 = v241;
  v795 = v245;
  v796 = 0u;
  v797 = 0u;
  v798 = 0u;
  sub_1BD289374(v787, &v779);
  sub_1BD2893D0(&v791);
  v247 = *&v787[16];
  *(v68 + 1968) = *v787;
  *(v68 + 1984) = v247;
  v248 = *&v787[48];
  *(v68 + 2000) = *&v787[32];
  *(v68 + 2064) = v790;
  v249 = v788;
  *(v68 + 2048) = v789;
  *(v68 + 2032) = v249;
  *(v68 + 2016) = v248;
  *(v68 + 2080) = 0xD000000000000013;
  *(v68 + 2088) = 0x80000001BE1203C0;
  if (*(v67 + 16) && (v250 = sub_1BD148F70(0x616E6E65746E61, 0xE700000000000000), (v251 & 1) != 0))
  {
    v252 = *(*(v67 + 56) + 16 * v250);
    v253 = v252;
  }

  else
  {
    v252 = 0;
  }

  if (*(v67 + 16) && (v254 = sub_1BD148F70(0x616E6E65746E61, 0xE700000000000000), (v255 & 1) != 0))
  {
    v256 = *(*(v67 + 56) + 16 * v254 + 8);
    v257 = v256;
  }

  else
  {
    v256 = 0;
  }

  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v775[8], 0, 48);
  *v775 = v252;
  *&v775[56] = v256;
  v776 = 0u;
  v777 = 0u;
  v778 = 0u;
  v780 = 0u;
  v781 = 0u;
  v782 = 0u;
  v779 = v252;
  v783 = v256;
  v784 = 0u;
  v785 = 0u;
  v786 = 0u;
  sub_1BD289374(v775, &v767);
  sub_1BD2893D0(&v779);
  v258 = *&v775[32];
  *(v68 + 2144) = *&v775[48];
  v259 = v777;
  *(v68 + 2160) = v776;
  *(v68 + 2176) = v259;
  *(v68 + 2192) = v778;
  v260 = *&v775[16];
  *(v68 + 2096) = *v775;
  *(v68 + 2112) = v260;
  *(v68 + 2128) = v258;
  *(v68 + 2208) = 0xD000000000000011;
  *(v68 + 2216) = 0x80000001BE1203E0;
  v261 = sub_1BD282628(0x616E6E65746E61, 0xE700000000000000, v67);
  v263 = 0;
  if (v261 != 1)
  {
    v264 = v261;

    v263 = v264;
  }

  v265 = sub_1BD282628(0x616E6E65746E61, 0xE700000000000000, v67);
  v267 = 0;
  if (v265 != 1)
  {
    v268 = v266;

    v267 = v268;
  }

  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v763[8], 0, 48);
  *v763 = v263;
  *&v763[56] = v267;
  v764 = 0u;
  v765 = 0u;
  v766 = 0u;
  v768 = 0u;
  v769 = 0u;
  v770 = 0u;
  v767 = v263;
  v771 = v267;
  v772 = 0u;
  v773 = 0u;
  v774 = 0u;
  sub_1BD289374(v763, &v755);
  sub_1BD2893D0(&v767);
  v269 = *&v763[32];
  *(v68 + 2272) = *&v763[48];
  v270 = v765;
  *(v68 + 2288) = v764;
  *(v68 + 2304) = v270;
  *(v68 + 2320) = v766;
  v271 = *&v763[16];
  *(v68 + 2224) = *v763;
  *(v68 + 2240) = v271;
  *(v68 + 2256) = v269;
  *(v68 + 2336) = 0xD000000000000011;
  *(v68 + 2344) = 0x80000001BE120400;
  v272 = sub_1BD282628(0x616E6E65746E61, 0xE700000000000000, v67);
  v274 = 0;
  if (v272 != 1)
  {
    v275 = v272;

    v274 = v275;
  }

  v276 = sub_1BD282628(0x616E6E65746E61, 0xE700000000000000, v67);
  v278 = 0;
  if (v276 != 1)
  {
    v279 = v277;

    v278 = v279;
  }

  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v751[8], 0, 48);
  *v751 = v274;
  *&v751[56] = v278;
  v752 = 0u;
  v753 = 0u;
  v754 = 0u;
  v756 = 0u;
  v757 = 0u;
  v758 = 0u;
  v755 = v274;
  v759 = v278;
  v760 = 0u;
  v761 = 0u;
  v762 = 0u;
  sub_1BD289374(v751, &v743);
  sub_1BD2893D0(&v755);
  v280 = *&v751[32];
  *(v68 + 2400) = *&v751[48];
  v281 = v753;
  *(v68 + 2416) = v752;
  *(v68 + 2432) = v281;
  *(v68 + 2448) = v754;
  v282 = *&v751[16];
  *(v68 + 2352) = *v751;
  *(v68 + 2368) = v282;
  *(v68 + 2384) = v280;
  *(v68 + 2464) = 0x6E6565726373;
  *(v68 + 2472) = 0xE600000000000000;
  v283 = sub_1BD282628(0x6B63616C62, 0xE500000000000000, v67);
  v285 = 0;
  if (v283 != 1)
  {
    v286 = v283;

    v285 = v286;
  }

  v287 = sub_1BD282628(0x6B63616C62, 0xE500000000000000, v67);
  v289 = 0;
  if (v287 != 1)
  {
    v290 = v288;

    v289 = v290;
  }

  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v739[8], 0, 48);
  *v739 = v285;
  *&v739[56] = v289;
  v740 = 0u;
  v741 = 0u;
  v742 = 0u;
  v744 = 0u;
  v745 = 0u;
  v746 = 0u;
  v743 = v285;
  v747 = v289;
  v748 = 0u;
  v749 = 0u;
  v750 = 0u;
  sub_1BD289374(v739, v733);
  sub_1BD2893D0(&v743);
  v291 = *&v739[32];
  *(v68 + 2528) = *&v739[48];
  v292 = v741;
  *(v68 + 2544) = v740;
  *(v68 + 2560) = v292;
  *(v68 + 2576) = v742;
  v293 = *&v739[16];
  *(v68 + 2480) = *v739;
  *(v68 + 2496) = v293;
  *(v68 + 2512) = v291;
  strcpy((v68 + 2592), "actualScreen");
  *(v68 + 2605) = 0;
  *(v68 + 2606) = -5120;
  v294 = sub_1BD282628(0x6B63616C62, 0xE500000000000000, v67);
  v296 = 0;
  if (v294 != 1)
  {
    v297 = v294;

    v296 = v297;
  }

  v298 = sub_1BD282628(0x6B63616C62, 0xE500000000000000, v67);
  v300 = v299;

  v301 = 0;
  if (v298 != 1)
  {

    v301 = v300;
  }

  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v680[8], 0, 48);
  *v680 = v296;
  *&v680[56] = v301;
  v681 = 0u;
  v682 = 0u;
  v683 = 0u;
  v685 = 0u;
  v686 = 0u;
  v687 = 0u;
  v684 = v296;
  v688 = v301;
  v689 = 0u;
  v690 = 0u;
  v691 = 0u;
  sub_1BD289374(v680, v733);
  sub_1BD2893D0(&v684);
  v302 = *&v680[32];
  *(v68 + 2656) = *&v680[48];
  v303 = v682;
  *(v68 + 2672) = v681;
  *(v68 + 2688) = v303;
  *(v68 + 2704) = v683;
  v304 = *&v680[16];
  *(v68 + 2608) = *v680;
  *(v68 + 2624) = v304;
  *(v68 + 2640) = v302;
  *(v68 + 2720) = 0xD000000000000014;
  *(v68 + 2728) = 0x80000001BE120420;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD400A0);
  v305 = swift_allocObject();
  *(v305 + 16) = xmmword_1BE0B6CA0;
  v306 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.57 green:0.98 blue:0.71 alpha:1.0];
  v307 = [v306 CGColor];

  *(v305 + 32) = v307;
  v308 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.23 green:0.51 blue:0.97 alpha:1.0];
  v309 = [v308 CGColor];

  *(v305 + 40) = v309;
  v310 = swift_allocObject();
  *(v310 + 16) = xmmword_1BE0B6CA0;
  v311 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.57 green:0.98 blue:0.71 alpha:1.0];
  v312 = [v311 CGColor];

  *(v310 + 32) = v312;
  v313 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.23 green:0.51 blue:0.97 alpha:1.0];
  v314 = [v313 CGColor];

  *(v310 + 40) = v314;
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  v694 = 0u;
  v693 = 0u;
  v692 = 0u;
  memset(&v695[8], 0, 48);
  *v695 = v305;
  *&v695[56] = v310;
  memset(v696, 0, sizeof(v696));
  v698 = 0u;
  v699 = 0u;
  v700 = 0u;
  v697 = v305;
  v701 = v310;
  sub_1BD289374(&v692, v733);
  sub_1BD2893D0(v696);
  v315 = v694;
  *(v68 + 2784) = *v695;
  v316 = *&v695[32];
  *(v68 + 2800) = *&v695[16];
  *(v68 + 2816) = v316;
  *(v68 + 2832) = *&v695[48];
  v317 = v693;
  *(v68 + 2736) = v692;
  *(v68 + 2752) = v317;
  *(v68 + 2768) = v315;
  *(v68 + 2848) = 0x74786554656D6974;
  *(v68 + 2856) = 0xE800000000000000;
  v318 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
  v319 = [v318 CGColor];

  v320 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
  v321 = [v320 CGColor];

  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  v703 = 0u;
  v702 = 0u;
  *&v704 = 0;
  *(&v704 + 1) = v319;
  v705 = 0u;
  v706 = 0u;
  v707 = 0u;
  v708 = v321;
  memset(v709, 0, sizeof(v709));
  v710 = 0;
  v711 = v319;
  v712 = 0u;
  v713 = 0u;
  v714 = 0u;
  v715 = v321;
  v716 = 0;
  sub_1BD289374(&v702, v733);
  sub_1BD2893D0(v709);
  v322 = v704;
  *(v68 + 2912) = v705;
  v323 = v707;
  *(v68 + 2928) = v706;
  *(v68 + 2944) = v323;
  *(v68 + 2960) = v708;
  v324 = v703;
  *(v68 + 2864) = v702;
  *(v68 + 2880) = v324;
  *(v68 + 2896) = v322;
  *(v68 + 2976) = 0xD000000000000018;
  *(v68 + 2984) = 0x80000001BE120440;
  v325 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.96 green:0.96 blue:0.98 alpha:1.0];
  v326 = [v325 CGColor];

  v327 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  v328 = [v327 CGColor];

  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v717[8], 0, 48);
  *v717 = v326;
  *&v717[56] = v328;
  v718 = 0u;
  v719 = 0u;
  v720 = 0u;
  v722 = 0u;
  v723 = 0u;
  v724 = 0u;
  v721 = v326;
  v725 = v328;
  v726 = 0u;
  v727 = 0u;
  v728 = 0u;
  sub_1BD289374(v717, v733);
  sub_1BD2893D0(&v721);
  v329 = *&v717[32];
  *(v68 + 3040) = *&v717[48];
  v330 = v719;
  *(v68 + 3056) = v718;
  *(v68 + 3072) = v330;
  *(v68 + 3088) = v720;
  v331 = *&v717[16];
  *(v68 + 2992) = *v717;
  *(v68 + 3008) = v331;
  *(v68 + 3024) = v329;
  *(v68 + 3104) = 0xD000000000000012;
  *(v68 + 3112) = 0x80000001BE120460;
  v332 = swift_allocObject();
  *(v332 + 16) = xmmword_1BE0B6CA0;
  v333 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.3 green:0.91 blue:0.57 alpha:1.0];
  v334 = [v333 CGColor];

  *(v332 + 32) = v334;
  v335 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.0 green:0.78 blue:0.34 alpha:1.0];
  v336 = [v335 CGColor];

  *(v332 + 40) = v336;
  v337 = swift_allocObject();
  *(v337 + 16) = xmmword_1BE0B6CA0;
  v338 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.3 green:0.91 blue:0.57 alpha:1.0];
  v339 = [v338 CGColor];

  *(v337 + 32) = v339;
  v340 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.0 green:0.78 blue:0.34 alpha:1.0];
  v341 = [v340 CGColor];

  *(v337 + 40) = v341;
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  v731 = 0u;
  v730 = 0u;
  v729 = 0u;
  memset(&v732[8], 0, 48);
  *v732 = v332;
  *&v732[56] = v337;
  memset(v733, 0, sizeof(v733));
  v735 = 0u;
  v736 = 0u;
  v737 = 0u;
  v734 = v332;
  v738 = v337;
  sub_1BD289374(&v729, v672);
  sub_1BD2893D0(v733);
  v342 = v731;
  *(v68 + 3168) = *v732;
  v343 = *&v732[32];
  *(v68 + 3184) = *&v732[16];
  *(v68 + 3200) = v343;
  *(v68 + 3216) = *&v732[48];
  v344 = v730;
  *(v68 + 3120) = v729;
  *(v68 + 3136) = v344;
  *(v68 + 3152) = v342;
  *(v68 + 3232) = 1852793705;
  *(v68 + 3240) = 0xE400000000000000;
  v345 = sub_1BD282628(0x6C426D6574737973, 0xEA00000000006575, v41);
  v347 = 0;
  if (v345 != 1)
  {
    v348 = v345;

    v347 = v348;
  }

  v349 = sub_1BD282628(0x6C426D6574737973, 0xEA00000000006575, v41);
  v351 = 0;
  if (v349 != 1)
  {
    v352 = v350;

    v351 = v352;
  }

  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  *&v667 = 0;
  *(&v667 + 1) = v347;
  v668 = 0u;
  v669 = 0u;
  v670 = 0u;
  memset(&v671[8], 0, 40);
  *v671 = v351;
  v672[0] = 0;
  v672[1] = v347;
  v673 = 0u;
  v674 = 0u;
  v675 = 0u;
  v677 = 0u;
  v678 = 0u;
  v676 = v351;
  v679 = 0;
  sub_1BD289374(&v667, v659);
  sub_1BD2893D0(v672);
  v353 = v669;
  *(v68 + 3296) = v670;
  v354 = *&v671[16];
  *(v68 + 3312) = *v671;
  *(v68 + 3328) = v354;
  *(v68 + 3344) = *&v671[32];
  v355 = v668;
  *(v68 + 3248) = v667;
  *(v68 + 3264) = v355;
  *(v68 + 3280) = v353;
  strcpy((v68 + 3360), "checkMarkShape");
  *(v68 + 3375) = -18;
  v356 = sub_1BD282628(0x6C426D6574737973, 0xEA00000000006575, v41);
  v358 = 0;
  if (v356 != 1)
  {
    v359 = v356;

    v358 = v359;
  }

  v360 = sub_1BD282628(0x6C426D6574737973, 0xEA00000000006575, v41);
  v362 = 0;
  if (v360 != 1)
  {
    v363 = v361;

    v362 = v363;
  }

  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  v656 = 0u;
  v655 = 0u;
  memset(&v657[8], 0, 48);
  *v657 = v358;
  *&v657[56] = v362;
  v658 = 0uLL;
  memset(v659, 0, sizeof(v659));
  v661 = 0u;
  v662 = 0u;
  v663 = 0u;
  v660 = v358;
  v664 = v362;
  v665 = 0;
  v666 = 0;
  sub_1BD289374(&v655, &v647);
  sub_1BD2893D0(v659);
  v364 = *v657;
  *(v68 + 3424) = *&v657[16];
  v365 = *&v657[48];
  *(v68 + 3440) = *&v657[32];
  *(v68 + 3456) = v365;
  *(v68 + 3472) = v658;
  v366 = v656;
  *(v68 + 3376) = v655;
  *(v68 + 3392) = v366;
  *(v68 + 3408) = v364;
  strcpy((v68 + 3488), "phoneIconFrame");
  *(v68 + 3503) = -18;
  v367 = sub_1BD282628(0x6C426D6574737973, 0xEA00000000006575, v41);
  v369 = 0;
  if (v367 != 1)
  {
    v370 = v367;

    v369 = v370;
  }

  v371 = sub_1BD282628(0x6C426D6574737973, 0xEA00000000006575, v41);
  v373 = 0;
  if (v371 != 1)
  {
    v374 = v372;

    v373 = v374;
  }

  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v643[8], 0, 48);
  *v643 = v369;
  *&v643[56] = v373;
  v644 = 0u;
  v645 = 0u;
  v646 = 0u;
  v648 = 0u;
  v649 = 0u;
  v650 = 0u;
  v647 = v369;
  v651 = v373;
  v652 = 0u;
  v653 = 0u;
  v654 = 0u;
  sub_1BD289374(v643, &v635);
  sub_1BD2893D0(&v647);
  v375 = *&v643[32];
  *(v68 + 3552) = *&v643[48];
  v376 = v645;
  *(v68 + 3568) = v644;
  *(v68 + 3584) = v376;
  *(v68 + 3600) = v646;
  v377 = *&v643[16];
  *(v68 + 3504) = *v643;
  *(v68 + 3520) = v377;
  *(v68 + 3536) = v375;
  *(v68 + 3616) = 0xD000000000000018;
  *(v68 + 3624) = 0x80000001BE120480;
  v378 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.87 green:0.94 blue:1.0 alpha:1.0];
  v379 = [v378 CGColor];

  v380 = sub_1BD282628(0x6C426D6574737973, 0xED00002530336575, v41);
  v382 = 0;
  if (v380 != 1)
  {
    v383 = v381;

    v382 = v383;
  }

  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v631[8], 0, 48);
  *v631 = v379;
  *&v631[56] = v382;
  v632 = 0u;
  v633 = 0u;
  v634 = 0u;
  v636 = 0u;
  v637 = 0u;
  v638 = 0u;
  v635 = v379;
  v639 = v382;
  v640 = 0u;
  v641 = 0u;
  v642 = 0u;
  sub_1BD289374(v631, v623);
  sub_1BD2893D0(&v635);
  v384 = *&v631[32];
  *(v68 + 3680) = *&v631[48];
  v385 = v633;
  *(v68 + 3696) = v632;
  *(v68 + 3712) = v385;
  *(v68 + 3728) = v634;
  v386 = *&v631[16];
  *(v68 + 3632) = *v631;
  *(v68 + 3648) = v386;
  *(v68 + 3664) = v384;
  *(v68 + 3744) = 0xD00000000000001DLL;
  *(v68 + 3752) = 0x80000001BE1204A0;
  v387 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
  v388 = [v387 CGColor];

  v389 = sub_1BD282628(0x6C426D6574737973, 0xED00002530336575, v41);
  v391 = 0;
  if (v389 != 1)
  {
    v392 = v390;

    v391 = v392;
  }

  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  v616 = 0uLL;
  *&v617 = 0;
  *(&v617 + 1) = v388;
  v618 = 0u;
  v619 = 0u;
  v620 = 0u;
  v621 = v391;
  v622 = 0uLL;
  memset(v623, 0, 24);
  v623[3] = v388;
  v624 = 0u;
  v625 = 0u;
  v626 = 0u;
  v627 = v391;
  v628 = 0;
  v629 = 0;
  v630 = 0;
  sub_1BD289374(&v616, &v608);
  sub_1BD2893D0(v623);
  v393 = v618;
  *(v68 + 3808) = v619;
  v394 = v621;
  *(v68 + 3824) = v620;
  *(v68 + 3840) = v394;
  *(v68 + 3856) = v622;
  v395 = v617;
  *(v68 + 3760) = v616;
  *(v68 + 3776) = v395;
  *(v68 + 3792) = v393;
  *(v68 + 3872) = 0xD000000000000016;
  *(v68 + 3880) = 0x80000001BE1204C0;
  v396 = sub_1BD282628(0x6C426D6574737973, 0xEA00000000006575, v41);
  v398 = 0;
  if (v396 != 1)
  {
    v399 = v396;

    v398 = v399;
  }

  v400 = sub_1BD282628(0x6C426D6574737973, 0xEA00000000006575, v41);
  v402 = 0;
  if (v400 != 1)
  {
    v403 = v401;

    v402 = v403;
  }

  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v604[8], 0, 48);
  *v604 = v398;
  *&v604[56] = v402;
  v605 = 0u;
  v606 = 0u;
  v607 = 0u;
  v609 = 0u;
  v610 = 0u;
  v611 = 0u;
  v608 = v398;
  v612 = v402;
  v613 = 0u;
  v614 = 0u;
  v615 = 0u;
  sub_1BD289374(v604, &v596);
  sub_1BD2893D0(&v608);
  v404 = *&v604[32];
  *(v68 + 3936) = *&v604[48];
  v405 = v606;
  *(v68 + 3952) = v605;
  *(v68 + 3968) = v405;
  *(v68 + 3984) = v607;
  v406 = *&v604[16];
  *(v68 + 3888) = *v604;
  *(v68 + 3904) = v406;
  *(v68 + 3920) = v404;
  *(v68 + 4000) = 0xD000000000000018;
  *(v68 + 4008) = 0x80000001BE1204E0;
  v407 = sub_1BD282628(0x6C426D6574737973, 0xEA00000000006575, v41);
  v409 = 0;
  if (v407 != 1)
  {
    v410 = v407;

    v409 = v410;
  }

  v411 = sub_1BD282628(0x6C426D6574737973, 0xEA00000000006575, v41);
  v413 = 0;
  if (v411 != 1)
  {
    v414 = v412;

    v413 = v414;
  }

  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v592[8], 0, 48);
  *v592 = v409;
  *&v592[56] = v413;
  v593 = 0u;
  v594 = 0u;
  v595 = 0u;
  v597 = 0u;
  v598 = 0u;
  v599 = 0u;
  v596 = v409;
  v600 = v413;
  v601 = 0u;
  v602 = 0u;
  v603 = 0u;
  sub_1BD289374(v592, &v584);
  sub_1BD2893D0(&v596);
  v415 = *&v592[32];
  *(v68 + 4064) = *&v592[48];
  v416 = v594;
  *(v68 + 4080) = v593;
  *(v68 + 4096) = v416;
  *(v68 + 4112) = v595;
  v417 = *&v592[16];
  *(v68 + 4016) = *v592;
  *(v68 + 4032) = v417;
  *(v68 + 4048) = v415;
  *(v68 + 4128) = 0xD000000000000019;
  *(v68 + 4136) = 0x80000001BE120500;
  v418 = sub_1BD282628(0x6C426D6574737973, 0xEA00000000006575, v41);
  v420 = 0;
  if (v418 != 1)
  {
    v421 = v418;

    v420 = v421;
  }

  v422 = sub_1BD282628(0x6C426D6574737973, 0xEA00000000006575, v41);
  v424 = 0;
  if (v422 != 1)
  {
    v425 = v423;

    v424 = v425;
  }

  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v580[8], 0, 48);
  *v580 = v420;
  *&v580[56] = v424;
  v581 = 0u;
  v582 = 0u;
  v583 = 0u;
  v585 = 0u;
  v586 = 0u;
  v587 = 0u;
  v584 = v420;
  v588 = v424;
  v589 = 0u;
  v590 = 0u;
  v591 = 0u;
  sub_1BD289374(v580, v572);
  sub_1BD2893D0(&v584);
  v426 = *&v580[32];
  *(v68 + 4192) = *&v580[48];
  v427 = v582;
  *(v68 + 4208) = v581;
  *(v68 + 4224) = v427;
  *(v68 + 4240) = v583;
  v428 = *&v580[16];
  *(v68 + 4144) = *v580;
  *(v68 + 4160) = v428;
  *(v68 + 4176) = v426;
  *(v68 + 4256) = 0xD00000000000001ALL;
  *(v68 + 4264) = 0x80000001BE120520;
  v429 = sub_1BD282628(0x6C426D6574737973, 0xED00002530316575, v41);
  v431 = 0;
  if (v429 != 1)
  {
    v432 = v429;

    v431 = v432;
  }

  v433 = sub_1BD282628(0x6C426D6574737973, 0xED00002530316575, v41);
  v435 = 0;
  if (v433 != 1)
  {
    v436 = v434;

    v435 = v436;
  }

  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  *&v567 = 0;
  *(&v567 + 1) = v431;
  v568 = 0u;
  v569 = 0u;
  v570 = 0u;
  memset(&v571[8], 0, 40);
  *v571 = v435;
  v572[0] = 0;
  v572[1] = v431;
  v573 = 0u;
  v574 = 0u;
  v575 = 0u;
  v577 = 0u;
  v578 = 0u;
  v576 = v435;
  v579 = 0;
  sub_1BD289374(&v567, v559);
  sub_1BD2893D0(v572);
  v437 = v569;
  *(v68 + 4320) = v570;
  v438 = *&v571[16];
  *(v68 + 4336) = *v571;
  *(v68 + 4352) = v438;
  *(v68 + 4368) = *&v571[32];
  v439 = v568;
  *(v68 + 4272) = v567;
  *(v68 + 4288) = v439;
  *(v68 + 4304) = v437;
  *(v68 + 4384) = 0xD00000000000001ALL;
  *(v68 + 4392) = 0x80000001BE120540;
  v440 = sub_1BD282628(0x6C426D6574737973, 0xED00002530316575, v41);
  v442 = 0;
  if (v440 != 1)
  {
    v443 = v440;

    v442 = v443;
  }

  v444 = sub_1BD282628(0x6C426D6574737973, 0xED00002530316575, v41);
  v446 = 0;
  if (v444 != 1)
  {
    v447 = v445;

    v446 = v447;
  }

  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  *&v554 = 0;
  *(&v554 + 1) = v442;
  v555 = 0u;
  v556 = 0u;
  v557 = 0u;
  memset(&v558[8], 0, 40);
  *v558 = v446;
  v559[0] = 0;
  v559[1] = v442;
  v560 = 0u;
  v561 = 0u;
  v562 = 0u;
  v564 = 0u;
  v565 = 0u;
  v563 = v446;
  v566 = 0;
  sub_1BD289374(&v554, v546);
  sub_1BD2893D0(v559);
  v448 = v556;
  *(v68 + 4448) = v557;
  v449 = *&v558[16];
  *(v68 + 4464) = *v558;
  *(v68 + 4480) = v449;
  *(v68 + 4496) = *&v558[32];
  v450 = v555;
  *(v68 + 4400) = v554;
  *(v68 + 4416) = v450;
  *(v68 + 4432) = v448;
  *(v68 + 4512) = 0xD000000000000014;
  *(v68 + 4520) = 0x80000001BE120560;
  v451 = sub_1BD282628(0x6C426D6574737973, 0xEA00000000006575, v41);
  v453 = 0;
  if (v451 != 1)
  {
    v454 = v451;

    v453 = v454;
  }

  v455 = sub_1BD282628(0x6C426D6574737973, 0xEA00000000006575, v41);
  v457 = 0;
  if (v455 != 1)
  {
    v458 = v456;

    v457 = v458;
  }

  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  *&v541 = 0;
  *(&v541 + 1) = v453;
  v542 = 0u;
  v543 = 0u;
  v544 = 0u;
  memset(&v545[8], 0, 40);
  *v545 = v457;
  v546[0] = 0;
  v546[1] = v453;
  v547 = 0u;
  v548 = 0u;
  v549 = 0u;
  v551 = 0u;
  v552 = 0u;
  v550 = v457;
  v553 = 0;
  sub_1BD289374(&v541, v533);
  sub_1BD2893D0(v546);
  v459 = v543;
  *(v68 + 4576) = v544;
  v460 = *&v545[16];
  *(v68 + 4592) = *v545;
  *(v68 + 4608) = v460;
  *(v68 + 4624) = *&v545[32];
  v461 = v542;
  *(v68 + 4528) = v541;
  *(v68 + 4544) = v461;
  *(v68 + 4560) = v459;
  *(v68 + 4640) = 0xD000000000000014;
  *(v68 + 4648) = 0x80000001BE120580;
  v462 = sub_1BD282628(0x6C426D6574737973, 0xEA00000000006575, v41);
  v464 = 0;
  if (v462 != 1)
  {
    v465 = v462;

    v464 = v465;
  }

  v466 = sub_1BD282628(0x6C426D6574737973, 0xEA00000000006575, v41);
  v468 = 0;
  if (v466 != 1)
  {
    v469 = v467;

    v468 = v469;
  }

  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  *&v528 = 0;
  *(&v528 + 1) = v464;
  v529 = 0u;
  v530 = 0u;
  v531 = 0u;
  memset(&v532[8], 0, 40);
  *v532 = v468;
  v533[0] = 0;
  v533[1] = v464;
  v534 = 0u;
  v535 = 0u;
  v536 = 0u;
  v538 = 0u;
  v539 = 0u;
  v537 = v468;
  v540 = 0;
  sub_1BD289374(&v528, v520);
  sub_1BD2893D0(v533);
  v470 = v530;
  *(v68 + 4704) = v531;
  v471 = *&v532[16];
  *(v68 + 4720) = *v532;
  *(v68 + 4736) = v471;
  *(v68 + 4752) = *&v532[32];
  v472 = v529;
  *(v68 + 4656) = v528;
  *(v68 + 4672) = v472;
  *(v68 + 4688) = v470;
  *(v68 + 4768) = 0xD000000000000018;
  *(v68 + 4776) = 0x80000001BE120140;
  v473 = sub_1BD282628(0x7261646E6F636573, 0xEE006C6562614C79, v41);
  v475 = 0;
  if (v473 != 1)
  {
    v476 = v473;

    v475 = v476;
  }

  v477 = sub_1BD282628(0x7261646E6F636573, 0xEE006C6562614C79, v41);
  v479 = 0;
  if (v477 != 1)
  {
    v480 = v478;

    v479 = v480;
  }

  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  v513 = 0u;
  v514 = 0u;
  *&v515 = 0;
  *(&v515 + 1) = v475;
  v516 = 0u;
  v517 = 0u;
  v518 = 0u;
  v519 = v479;
  memset(v520, 0, sizeof(v520));
  v521 = 0;
  v522 = v475;
  v523 = 0u;
  v524 = 0u;
  v525 = 0u;
  v526 = v479;
  v527 = 0;
  sub_1BD289374(&v513, v505);
  sub_1BD2893D0(v520);
  v481 = v515;
  *(v68 + 4832) = v516;
  v482 = v518;
  *(v68 + 4848) = v517;
  *(v68 + 4864) = v482;
  *(v68 + 4880) = v519;
  v483 = v514;
  *(v68 + 4784) = v513;
  *(v68 + 4800) = v483;
  *(v68 + 4816) = v481;
  strcpy((v68 + 4896), "statusDoneText");
  *(v68 + 4911) = -18;
  v484 = sub_1BD282628(0x7261646E6F636573, 0xEE006C6562614C79, v41);
  v486 = 0;
  if (v484 != 1)
  {
    v487 = v484;

    v486 = v487;
  }

  v488 = sub_1BD282628(0x7261646E6F636573, 0xEE006C6562614C79, v41);
  v490 = v489;

  v491 = 0;
  if (v488 != 1)
  {

    v491 = v490;
  }

  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  v498 = 0u;
  v499 = 0u;
  *&v500 = 0;
  *(&v500 + 1) = v486;
  v501 = 0u;
  v502 = 0u;
  v503 = 0u;
  v504 = v491;
  memset(v505, 0, sizeof(v505));
  v506 = 0;
  v507 = v486;
  v508 = 0u;
  v509 = 0u;
  v510 = 0u;
  v511 = v491;
  v512 = 0;
  sub_1BD289374(&v498, v497);
  sub_1BD2893D0(v505);
  v492 = v500;
  *(v68 + 4960) = v501;
  v493 = v503;
  *(v68 + 4976) = v502;
  *(v68 + 4992) = v493;
  *(v68 + 5008) = v504;
  v494 = v499;
  *(v68 + 4912) = v498;
  *(v68 + 4928) = v494;
  *(v68 + 4944) = v492;
  v495 = sub_1BD1ABCFC(v68);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BE60);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v495;
}

uint64_t sub_1BD288A98()
{
  v0 = sub_1BE051F54();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE051FA4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    sub_1BD14BE3C();
    v21 = v5;
    v12 = sub_1BE052D54();
    v26 = sub_1BD289278;
    v27 = v11;
    aBlock = MEMORY[0x1E69E9820];
    v23 = 1107296256;
    v24 = sub_1BD126964;
    v25 = &block_descriptor_25_0;
    v13 = _Block_copy(&aBlock);
    sub_1BE048964();

    sub_1BE051F74();
    aBlock = MEMORY[0x1E69E7CC0];
    sub_1BD2892B0(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
    sub_1BD14ECDC();
    sub_1BE053664();
    MEMORY[0x1BFB3FDF0](0, v9, v4, v13);
    _Block_release(v13);

    (*(v1 + 8))(v4, v0);
    (*(v6 + 8))(v9, v21);
    v14 = objc_opt_self();
    v15 = swift_allocObject();
    swift_weakInit();
    v26 = sub_1BD2892A0;
    v27 = v15;
    aBlock = MEMORY[0x1E69E9820];
    v23 = 1107296256;
    v24 = sub_1BD198918;
    v25 = &block_descriptor_29_1;
    v16 = _Block_copy(&aBlock);

    v17 = [v14 scheduledTimerWithTimeInterval:1 repeats:v16 block:60.0];
    _Block_release(v16);
    v18 = *(v11 + 16);
    *(v11 + 16) = v17;
    v19 = v17;

    if (v19)
    {
      v20 = [objc_opt_self() mainRunLoop];
      [v20 addTimer:v19 forMode:*MEMORY[0x1E695DA28]];
    }
  }

  return result;
}

uint64_t sub_1BD288E9C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1BE051F54();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE051FA4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD14BE3C();
  v13 = sub_1BE052D54();
  aBlock[4] = sub_1BD2892A8;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_32_0;
  v14 = _Block_copy(aBlock);
  sub_1BE048964();

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD2892B0(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v12, v7, v14);
  _Block_release(v14);

  (*(v4 + 8))(v7, v3);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1BD28913C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 24);
    sub_1BE048964();

    v1(v2);
  }

  return result;
}

uint64_t sub_1BD2891B4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1BD2892B0(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_1BD2892F8(void *result, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  if (result != 1)
  {
  }

  return result;
}

void sub_1BD289530()
{
  v1 = sub_1BE04BAC4();
  v53 = *(v1 - 8);
  v54 = v1;
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE04B944();
  v51 = *(v5 - 8);
  v52 = v5;
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *&v0[OBJC_IVAR____TtC9PassKitUI42ProvisioningVerificationCompletionFlowItem_verificationController];
  v50 = [v10 verificationRecord];
  v11 = [v50 channel];
  if (v11)
  {

    v12 = *&v0[OBJC_IVAR____TtC9PassKitUI42ProvisioningVerificationCompletionFlowItem_context];
    v13 = *&v0[OBJC_IVAR____TtC9PassKitUI42ProvisioningVerificationCompletionFlowItem_methodGroup];
    v14 = *&v0[OBJC_IVAR____TtC9PassKitUI42ProvisioningVerificationCompletionFlowItem_method];
    KeyPath = swift_getKeyPath();
    v16 = sub_1BD1877D0(v0, KeyPath);

    v49 = type metadata accessor for PaymentSetupVerificationOTPViewController();
    v17 = objc_allocWithZone(v49);
    *&v17[OBJC_IVAR____TtC9PassKitUI41PaymentSetupVerificationOTPViewController_delegate + 8] = 0;
    v18 = swift_unknownObjectWeakInit();
    *&v17[OBJC_IVAR____TtC9PassKitUI41PaymentSetupVerificationOTPViewController_verificationCodeObserver] = 0;
    *&v17[OBJC_IVAR____TtC9PassKitUI41PaymentSetupVerificationOTPViewController_provisioningContext] = v12;
    *&v17[OBJC_IVAR____TtC9PassKitUI41PaymentSetupVerificationOTPViewController_methodGroup] = v13;
    *&v17[OBJC_IVAR____TtC9PassKitUI41PaymentSetupVerificationOTPViewController_method] = v14;
    v17[OBJC_IVAR____TtC9PassKitUI41PaymentSetupVerificationOTPViewController_showChangeMethodButton] = (v16 & 1) == 0;
    *&v17[OBJC_IVAR____TtC9PassKitUI41PaymentSetupVerificationOTPViewController_verificationController] = v10;
    *(v18 + 8) = &off_1F3B9AA90;
    swift_unknownObjectWeakAssign();
    sub_1BE052434();
    v19 = v10;
    sub_1BE048964();
    v20 = v13;
    v21 = v14;
    v22 = sub_1BE04BB74();

    *&v17[OBJC_IVAR____TtC9PassKitUI41PaymentSetupVerificationOTPViewController_reporter] = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40A50);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1BE0B69E0;
    v24 = [objc_allocWithZone(MEMORY[0x1E69B8E10]) init];
    *(v23 + 56) = sub_1BD289C3C();
    *(v23 + 32) = v24;
    v25 = objc_allocWithZone(MEMORY[0x1E69B8E38]);
    v26 = sub_1BE052724();

    v27 = [v25 initWithPaymentSetupFields_];

    sub_1BE04BB94();
    v28 = sub_1BE04B8E4();
    (*(v51 + 8))(v9, v52);
    sub_1BE04BC34();
    v29 = sub_1BE04B9A4();
    (*(v53 + 8))(v4, v54);
    v55.receiver = v17;
    v55.super_class = v49;
    v30 = objc_msgSendSuper2(&v55, sel_initWithWebService_context_setupDelegate_setupFieldsModel_, v28, v29, 0, v27);

    if (v30)
    {
      v31 = objc_opt_self();
      v32 = v30;
      v33 = [v31 defaultCenter];
      [v33 addObserver:v32 selector:sel__startVerificationObserver name:*MEMORY[0x1E69DDAB0] object:0];
      [v33 addObserver:v32 selector:sel__stopVerificationObserver name:*MEMORY[0x1E69DDBC8] object:0];
      v34 = [objc_opt_self() defaultCenter];
      [v34 addObserver:v32 selector:sel__handlePassVerifiedNotificationWithNotification_ name:*MEMORY[0x1E69BC2F8] object:0];

LABEL_6:
      return;
    }

    __break(1u);
  }

  else
  {
    v35 = *&v0[OBJC_IVAR____TtC9PassKitUI42ProvisioningVerificationCompletionFlowItem_context];
    v36 = *&v0[OBJC_IVAR____TtC9PassKitUI42ProvisioningVerificationCompletionFlowItem_methodGroup];
    v37 = *&v0[OBJC_IVAR____TtC9PassKitUI42ProvisioningVerificationCompletionFlowItem_method];
    v38 = type metadata accessor for PaymentSetupVerificationCompletionViewController();
    v39 = objc_allocWithZone(v38);
    *&v39[OBJC_IVAR____TtC9PassKitUI48PaymentSetupVerificationCompletionViewController_provisioningContext] = v35;
    *&v39[OBJC_IVAR____TtC9PassKitUI48PaymentSetupVerificationCompletionViewController_methodGroup] = v36;
    *&v39[OBJC_IVAR____TtC9PassKitUI48PaymentSetupVerificationCompletionViewController_method] = v37;
    *&v39[OBJC_IVAR____TtC9PassKitUI48PaymentSetupVerificationCompletionViewController_verificationController] = v10;
    *&v39[OBJC_IVAR____TtC9PassKitUI48PaymentSetupVerificationCompletionViewController_delegate + 8] = &off_1F3B9AAA8;
    swift_unknownObjectUnownedInit();
    sub_1BE052434();
    sub_1BE048964();
    v40 = v36;
    v41 = v37;
    v42 = v10;
    v43 = sub_1BE04BB74();

    *&v39[OBJC_IVAR____TtC9PassKitUI48PaymentSetupVerificationCompletionViewController_reporter] = v43;
    v44 = objc_allocWithZone(MEMORY[0x1E69B8E38]);
    v45 = sub_1BE052724();
    v33 = [v44 initWithPaymentSetupFields_];

    sub_1BE04BB94();
    v46 = sub_1BE04B8E4();
    (*(v51 + 8))(v9, v52);
    sub_1BE04BC34();
    v47 = sub_1BE04B9A4();
    (*(v53 + 8))(v4, v54);
    v56.receiver = v39;
    v56.super_class = v38;
    v48 = objc_msgSendSuper2(&v56, sel_initWithWebService_context_setupDelegate_setupFieldsModel_, v46, v47, 0, v33);

    if (v48)
    {
      v34 = v50;
      goto LABEL_6;
    }
  }

  __break(1u);
}

uint64_t sub_1BD289BB0()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI42ProvisioningVerificationCompletionFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD289BEC(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI42ProvisioningVerificationCompletionFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

unint64_t sub_1BD289C3C()
{
  result = qword_1EBD400F0;
  if (!qword_1EBD400F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD400F0);
  }

  return result;
}

uint64_t sub_1BD289C88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    sub_1BE053834();
    MEMORY[0x1BFB3F610](0xD000000000000011, 0x80000001BE1206E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C9D8);
    sub_1BE053974();
    MEMORY[0x1BFB3F610](41, 0xE100000000000000);
  }

  else
  {
    sub_1BE053834();
    MEMORY[0x1BFB3F610](0xD00000000000001BLL, 0x80000001BE120700);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C9D8);
    sub_1BE053974();
    MEMORY[0x1BFB3F610](0x203A736376202CLL, 0xE700000000000000);
    v4 = sub_1BD28B6C0();
    v5 = MEMORY[0x1BFB3F7F0](a3, v4);
    MEMORY[0x1BFB3F610](v5);
  }

  return 0;
}

uint64_t sub_1BD289E40(uint64_t *a1, __int128 *a2, char **a3)
{
  swift_beginAccess();
  if (*a1 >> 62)
  {
    result = sub_1BE053704();
    if (result < 1)
    {
      return result;
    }
  }

  else
  {
    result = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result < 1)
    {
      return result;
    }
  }

  result = swift_beginAccess();
  if (*a2)
  {
    v15 = *a2;
    swift_beginAccess();
    v7 = *a1;
    swift_beginAccess();
    v8 = *a3;
    swift_unknownObjectRetain_n();
    sub_1BE048C84();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_1BD1D7330(0, *(v8 + 2) + 1, 1, v8);
      *a3 = v8;
    }

    v11 = *(v8 + 2);
    v10 = *(v8 + 3);
    v12 = v15;
    if (v11 >= v10 >> 1)
    {
      v14 = sub_1BD1D7330((v10 > 1), v11 + 1, 1, v8);
      v12 = v15;
      v8 = v14;
      *a3 = v14;
    }

    *(v8 + 2) = v11 + 1;
    v13 = &v8[24 * v11];
    *(v13 + 2) = v12;
    *(v13 + 6) = v7;
    swift_endAccess();
    swift_unknownObjectRelease();
    swift_beginAccess();
    *a1 = MEMORY[0x1E69E7CC0];

    swift_beginAccess();
    *a2 = 0;
    *(a2 + 1) = 0;
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1BD28A014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(*a3 + 16);
  if (!v5)
  {
    return 0;
  }

  v6 = 1;
  for (i = 32; *(*a3 + i) != a1; i += 16)
  {
    --v6;
    if (v5 + v6 == 1)
    {
      return 0;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40108);
  sub_1BD28B430(&qword_1EBD40110, &qword_1EBD40108);
  sub_1BE052AC4();
  return v9;
}

uint64_t sub_1BD28A0F8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 < 0)
  {
    return a5 < 0 && a1 == a4;
  }

  result = 0;
  if ((a5 & 0x8000000000000000) == 0 && a1 == a4)
  {
    return sub_1BD3FFF44(a3, a6);
  }

  return result;
}

char *sub_1BD28A12C(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v42 = MEMORY[0x1E69E7CC0];
  v43 = MEMORY[0x1E69E7CC0];
  v41 = 0uLL;
  v3 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BE0B7020;
  *(v4 + 32) = a1;
  *(v3 + 16) = v4;
  sub_1BE048964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43CE0);
  inited = swift_initStackObject();
  *(inited + 16) = sub_1BD12F81C;
  *(inited + 24) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD40118);
  *(swift_initStackObject() + 16) = inited;
  sub_1BE048964();
  sub_1BE048964();
  swift_beginAccess();
  swift_beginAccess();
  sub_1BD6B0020(v3, v40);
  v6 = v40[0];
  if (!v40[0])
  {
    goto LABEL_46;
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = v2;
  v11 = v2;
  v37 = v3;
  do
  {
    v35 = v9;
    v12 = v8;
    v13 = v10;
    while (1)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        break;
      }

      v15 = Strong;
      v39 = *(v6 + 104);
      if ((sub_1BD6DB14C() & 1) == 0)
      {
        v21 = *(v6 + 48);
        if (v21 <= 2)
        {
          swift_unknownObjectRelease();
        }

        else
        {
          swift_beginAccess();
          sub_1BD28B498(v21);
          v22 = v21;
          MEMORY[0x1BFB3F7A0]();
          if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1BE052774();
          }

          sub_1BE0527C4();
          v13 = v42;
          swift_endAccess();

          sub_1BD28B4B8(v21);
          swift_unknownObjectRelease();
          v7 = v39;
          *&v41 = v15;
          *(&v41 + 1) = v39;
          v12 = v15;
          v3 = v37;
        }

        goto LABEL_5;
      }

      if (v13 >> 62)
      {
        if (sub_1BE053704() < 1)
        {
LABEL_21:
          v38 = v13;
          goto LABEL_22;
        }
      }

      else if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
      {
        goto LABEL_21;
      }

      if (!v12)
      {
        goto LABEL_21;
      }

      swift_beginAccess();
      swift_unknownObjectRetain();
      v16 = v13;
      sub_1BE048C84();
      v17 = v12;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_1BD1D7330(0, *(v11 + 2) + 1, 1, v11);
      }

      v19 = *(v11 + 2);
      v18 = *(v11 + 3);
      if (v19 >= v18 >> 1)
      {
        v11 = sub_1BD1D7330((v18 > 1), v19 + 1, 1, v11);
      }

      *(v11 + 2) = v19 + 1;
      v20 = &v11[24 * v19];
      *(v20 + 4) = v17;
      *(v20 + 5) = v7;
      *(v20 + 6) = v16;
      v43 = v11;
      swift_endAccess();
      swift_unknownObjectRelease();
      v42 = v2;

      v12 = 0;
      v7 = 0;
      v41 = 0uLL;
      v38 = v2;
LABEL_22:
      swift_beginAccess();
      swift_unknownObjectRetain();
      v23 = v12;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_1BD1D7330(0, *(v11 + 2) + 1, 1, v11);
      }

      v25 = *(v11 + 2);
      v24 = *(v11 + 3);
      if (v25 >= v24 >> 1)
      {
        v11 = sub_1BD1D7330((v24 > 1), v25 + 1, 1, v11);
      }

      *(v11 + 2) = v25 + 1;
      v26 = &v11[24 * v25];
      *(v26 + 4) = v15;
      *(v26 + 5) = v39 | 0x8000000000000000;
      *(v26 + 6) = 0;
      v43 = v11;
      swift_endAccess();
      v27 = *(v6 + 48);
      if (v27)
      {
        v12 = v23;
        if (v27 != 1 && v27 != 2)
        {
          if (v15 == v27)
          {

            swift_unknownObjectRelease();
            v13 = v38;
          }

          else
          {
            ObjectType = swift_getObjectType();
            v36 = *(v39 + 48);
            v29 = v27;
            v30 = v36(ObjectType, v39);

            if (v30 == v29)
            {
              swift_unknownObjectRelease();
              sub_1BD28B4B8(v27);

              v2 = MEMORY[0x1E69E7CC0];
              v3 = v37;
              v13 = v38;
            }

            else
            {
              swift_beginAccess();
              v31 = v29;
              MEMORY[0x1BFB3F7A0]();
              v2 = MEMORY[0x1E69E7CC0];
              if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_1BE052774();
              }

              sub_1BE0527C4();
              v32 = v42;
              swift_endAccess();

              sub_1BD28B4B8(v27);
              v13 = v32;
              swift_unknownObjectRelease();
              v3 = v37;
            }
          }

          v7 = v39;
          *&v41 = v15;
          *(&v41 + 1) = v39;
          v12 = v15;
          goto LABEL_5;
        }

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();

        v12 = v23;
      }

      v13 = v38;
LABEL_5:
      sub_1BD6B0020(v3, v40);
      v6 = v40[0];
      if (!v40[0])
      {
        goto LABEL_46;
      }
    }

    v10 = v13;
    if (v35)
    {
      v8 = v12;

      v9 = 1;
    }

    else
    {
      v8 = v12;
      v33 = *(v6 + 48);
      sub_1BD28B498(v33);

      if (v33 == 2)
      {
        v9 = 0;
      }

      else
      {
        v9 = v33 == 1;
        sub_1BD28B4B8(v33);
      }
    }

    sub_1BD6B0020(v3, v40);
    v6 = v40[0];
  }

  while (v40[0]);
LABEL_46:

  swift_setDeallocating();

  sub_1BD289E40(&v42, &v41, &v43);
  swift_unknownObjectRelease();

  swift_beginAccess();
  return v43;
}

uint64_t sub_1BD28A7C0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a5 & 0xF000000000000007;
  if ((~a2 & 0xF000000000000007) == 0)
  {
    if (v9 != 0xF000000000000007)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C9C8);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1BE0B69E0;
      *(v10 + 32) = a4;
      if (a5 < 0)
      {
        *(v10 + 40) = a5 & 0x5FFFFFFFFFFFFFFFLL | 0x2000000000000000;
        *(v10 + 48) = 0;
        v23 = v10;
        swift_unknownObjectRetain();
        return v23;
      }

      else
      {
        *(v10 + 40) = a5 | 0x4000000000000000;
        *(v10 + 48) = a6;
        v11 = v10;
        sub_1BE048C84();
        swift_unknownObjectRetain();
        return v11;
      }
    }

    return MEMORY[0x1E69E7CC0];
  }

  if (v9 == 0xF000000000000007)
  {
    if (a2 < 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C9C8);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_1BE0B69E0;
      *(v15 + 32) = a1;
      *(v15 + 40) = a2;
      *(v15 + 48) = 0;
      swift_unknownObjectRetain();
      return v15;
    }

    return MEMORY[0x1E69E7CC0];
  }

  if (a2 < 0)
  {
    if (a5 < 0)
    {
      if (a1 != a4)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C9C8);
        v26 = swift_allocObject();
        *(v26 + 16) = xmmword_1BE0B6CA0;
        *(v26 + 32) = a1;
        *(v26 + 40) = a2;
        *(v26 + 48) = 0;
        *(v26 + 56) = a4;
        *(v26 + 64) = a5 & 0x5FFFFFFFFFFFFFFFLL | 0x2000000000000000;
        *(v26 + 72) = 0;
        sub_1BD28B484(a4, a5);
        sub_1BD28B484(a1, a2);
        return v26;
      }

      return MEMORY[0x1E69E7CC0];
    }

    sub_1BD28B484(a4, a5);
    sub_1BD28B484(a1, a2);

    swift_unknownObjectRelease();
LABEL_22:
    result = sub_1BE053994();
    __break(1u);
    return result;
  }

  if (a5 < 0)
  {
    goto LABEL_22;
  }

  if (a1 == a4 && (sub_1BD3FFF44(a3, a6) & 1) != 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1BD28B484(a4, a5);
  sub_1BD28B484(a1, a2);
  sub_1BD28B484(a4, a5);
  sub_1BD28B484(a1, a2);

  v18 = sub_1BD1D734C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v20 = *(v18 + 2);
  v19 = *(v18 + 3);
  if (v20 >= v19 >> 1)
  {
    v18 = sub_1BD1D734C((v19 > 1), v20 + 1, 1, v18);
  }

  v21 = v18;
  swift_unknownObjectRelease();
  sub_1BD28B214(a4, a5);
  sub_1BD28B214(a1, a2);
  result = v21;
  *(v21 + 2) = v20 + 1;
  v22 = &v21[24 * v20];
  *(v22 + 4) = a4;
  *(v22 + 5) = a5 | 0x6000000000000000;
  *(v22 + 6) = a6;
  return result;
}

uint64_t sub_1BD28AB60(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (*(a2 + 16) > v2)
  {
    v2 = *(a2 + 16);
  }

  v3 = MEMORY[0x1E69E7CC0];
  v76 = MEMORY[0x1E69E7CC0];
  v67 = v2;
  if (v2)
  {
    v4 = 0;
    v5 = 0;
    while (1)
    {
      v71 = v3;
      v70 = v4;
      if (v4)
      {
        v8 = 0;
        v9 = 0;
        v10 = 0xF000000000000007;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD400F8);
        sub_1BD28B430(&qword_1EBD40100, &qword_1EBD400F8);
        sub_1BE052AC4();
        v8 = v73;
        v10 = v74;
        v9 = v75;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD400F8);
      sub_1BD28B430(&qword_1EBD40100, &qword_1EBD400F8);
      sub_1BE052AC4();
      v12 = v73;
      v11 = v74;
      v69 = v8;
      v13 = v10;
      result = sub_1BD28A7C0(v8, v10, v9, v73, v74, v75);
      v16 = *(result + 16);
      v3 = v71;
      v17 = *(v71 + 16);
      v18 = v17 + v16;
      if (__OFADD__(v17, v16))
      {
        break;
      }

      v19 = result;
      v68 = v15;
      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || v18 > *(v71 + 24) >> 1)
      {
        if (v17 <= v18)
        {
          v20 = v17 + v16;
        }

        else
        {
          v20 = v17;
        }

        result = sub_1BD1D734C(result, v20, 1, v71);
        v3 = result;
      }

      if (*(v19 + 16))
      {
        if ((*(v3 + 24) >> 1) - *(v3 + 16) < v16)
        {
          goto LABEL_55;
        }

        swift_arrayInitWithCopy();

        if (v16)
        {
          v21 = *(v3 + 16);
          v22 = __OFADD__(v21, v16);
          v23 = v21 + v16;
          if (v22)
          {
            goto LABEL_56;
          }

          *(v3 + 16) = v23;
        }
      }

      else
      {

        if (v16)
        {
          goto LABEL_54;
        }
      }

      if ((~v74 & 0xF000000000000007) != 0)
      {
        if (v74 < 0)
        {
          v7 = v74 & 0x7FFFFFFFFFFFFFFFLL;
          sub_1BD28B3E4(v73, v74);
          v6 = v73;
        }

        else
        {
          swift_unknownObjectRetain();
          v6 = v73;
          v7 = v74;
        }
      }

      else
      {
        v6 = 0;
        v7 = 0;
      }

      ++v5;
      v4 = v70 | v68;
      v73 = v6;
      v74 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40108);
      sub_1BE052754();
      sub_1BD28B214(v69, v13);
      sub_1BD28B214(v12, v11);
      swift_unknownObjectRelease();
      if (v67 == v5)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
  }

  else
  {
LABEL_27:
    v24 = v3;
    v25 = *(v3 + 16);
    if (v25)
    {
      v72 = v24;
      v26 = (v24 + 48);
      v27 = v25;
      do
      {
        v28 = *(v26 - 1);
        if (v28 >> 61 == 4)
        {
          v29 = *v26;
          v30 = *(v26 - 2);
          ObjectType = swift_getObjectType();
          v32 = *((v28 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
          sub_1BD28B274(v30, v28, v29);
          swift_unknownObjectRetain();
          v33 = v32(ObjectType, v28 & 0x1FFFFFFFFFFFFFFFLL);
          (*((v28 & 0x1FFFFFFFFFFFFFFFLL) + 0x18))(v33, 1, ObjectType, v28 & 0x1FFFFFFFFFFFFFFFLL);

          sub_1BD28B32C(v30, v28, v29);
          sub_1BD28B32C(v30, v28, v29);
        }

        v26 += 3;
        --v27;
      }

      while (v27);
      v34 = (v72 + 48);
      v35 = v25;
      do
      {
        v36 = *(v34 - 1);
        if (!(v36 >> 61))
        {
          v37 = *v34;
          v38 = *(v34 - 2);
          swift_getObjectType();
          v39 = *(v36 + 8);
          sub_1BD28B274(v38, v36, v37);
          swift_unknownObjectRetain();
          v40 = v37;
          v39();
          swift_unknownObjectRelease();

          sub_1BD28B32C(v38, v36, v37);
        }

        v34 += 3;
        --v35;
      }

      while (v35);
      v41 = (v72 + 48);
      v42 = v25;
      do
      {
        v43 = *(v41 - 1);
        if (v43 >> 61 == 2)
        {
          v44 = *v41;
          v45 = *(v41 - 2);
          v46 = swift_getObjectType();
          v47 = *((v43 & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
          sub_1BD28B274(v45, v43, v44);
          swift_unknownObjectRetain();
          v48 = sub_1BE048C84();
          v47(v48, 0, v46, v43 & 0x1FFFFFFFFFFFFFFFLL);
          swift_unknownObjectRelease();

          sub_1BD28B32C(v45, v43, v44);
        }

        v41 += 3;
        --v42;
      }

      while (v42);
      v49 = (v72 + 48);
      v50 = v25;
      do
      {
        v55 = *(v49 - 1);
        if (v55 >> 61 == 1)
        {
          v56 = *(v49 - 2);
          v57 = *v49;
          v58 = swift_unknownObjectRetain();
          if (sub_1BD28A014(v58, v55 & 0x1FFFFFFFFFFFFFFFLL, &v76))
          {
            v51 = v59;
            v52 = swift_getObjectType();
            v53 = swift_getObjectType();
            v54 = (*((v55 & 0x1FFFFFFFFFFFFFFFLL) + 0x30))(v53, v55 & 0x1FFFFFFFFFFFFFFFLL);
            (*(v51 + 16))(v54, 1, v52, v51);
            swift_unknownObjectRelease();
            sub_1BD28B32C(v56, v55, v57);
          }

          else
          {
            sub_1BD28B32C(v56, v55, v57);
          }
        }

        v49 += 3;
        --v50;
      }

      while (v50);

      v60 = (v72 + 48);
      do
      {
        v61 = *(v60 - 1);
        if (v61 >> 61 == 3)
        {
          v62 = *v60;
          v63 = *(v60 - 2);
          v64 = swift_getObjectType();
          v65 = *((v61 & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
          sub_1BD28B274(v63, v61, v62);
          swift_unknownObjectRetain();
          v66 = sub_1BE048C84();
          v65(v66, 1, v64, v61 & 0x1FFFFFFFFFFFFFFFLL);
          swift_unknownObjectRelease();

          sub_1BD28B32C(v63, v61, v62);
        }

        v60 += 3;
        --v25;
      }

      while (v25);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1BD28B214(uint64_t a1, uint64_t a2)
{
  if ((~a2 & 0xF000000000000007) != 0)
  {
    return sub_1BD28B228(a1, a2);
  }

  return a1;
}

uint64_t sub_1BD28B228(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectRelease();
  if ((a2 & 0x8000000000000000) == 0)
  {
  }

  return result;
}

void sub_1BD28B274(uint64_t a1, unint64_t a2, void *a3)
{
  v3 = a2 >> 61;
  if ((a2 >> 61) <= 1)
  {
    if (v3)
    {
      if (v3 != 1)
      {
        return;
      }

      goto LABEL_5;
    }

    swift_unknownObjectRetain();

    v4 = a3;
  }

  else
  {
    if (v3 != 2 && v3 != 3)
    {
      if (v3 != 4)
      {
        return;
      }

LABEL_5:

      swift_unknownObjectRetain();
      return;
    }

    swift_unknownObjectRetain();

    sub_1BE048C84();
  }
}

void sub_1BD28B32C(uint64_t a1, unint64_t a2, void *a3)
{
  v3 = a2 >> 61;
  if ((a2 >> 61) <= 1)
  {
    if (v3)
    {
      if (v3 != 1)
      {
        return;
      }

      goto LABEL_5;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    if (v3 != 2 && v3 != 3)
    {
      if (v3 != 4)
      {
        return;
      }

LABEL_5:

      swift_unknownObjectRelease();
      return;
    }

    swift_unknownObjectRelease();
  }
}

uint64_t sub_1BD28B3E4(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {

    return swift_unknownObjectRetain();
  }

  else
  {
    swift_unknownObjectRetain();

    return sub_1BE048C84();
  }
}

uint64_t sub_1BD28B430(unint64_t *a1, uint64_t *a2)
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

uint64_t sub_1BD28B484(uint64_t a1, uint64_t a2)
{
  if ((~a2 & 0xF000000000000007) != 0)
  {
    return sub_1BD28B3E4(a1, a2);
  }

  return a1;
}

id sub_1BD28B498(id result)
{
  if (result != 2)
  {
    return sub_1BD28B4A8(result);
  }

  return result;
}

id sub_1BD28B4A8(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

void sub_1BD28B4B8(id a1)
{
  if (a1 != 2)
  {
    sub_1BD28B4C8(a1);
  }
}

void sub_1BD28B4C8(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_1BD28B4E4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7C && *(a1 + 24))
  {
    return (*a1 + 124);
  }

  v3 = (((*(a1 + 8) >> 57) >> 4) | (8 * ((*(a1 + 8) >> 57) & 8 | *(a1 + 8) & 7))) ^ 0x7F;
  if (v3 >= 0x7B)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1BD28B540(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7B)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 124;
    if (a3 >= 0x7C)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7C)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = 0;
      *(result + 8) = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 16) = 0;
    }
  }

  return result;
}

uint64_t sub_1BD28B5D8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 24))
  {
    return (*a1 + 127);
  }

  v3 = (((*(a1 + 8) >> 57) >> 6) | (2 * ((*(a1 + 8) >> 57) & 0x38 | *(a1 + 8) & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1BD28B634(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = 0;
      *(result + 8) = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 16) = 0;
    }
  }

  return result;
}

unint64_t sub_1BD28B6C0()
{
  result = qword_1EBD43450;
  if (!qword_1EBD43450)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD43450);
  }

  return result;
}

void sub_1BD28B71C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1BE04BD74();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 paymentRequest];
  if (!v13)
  {
    __break(1u);
    goto LABEL_20;
  }

  v14 = v13;
  v15 = [v13 accountServiceTransferRequest];

  if (!v15)
  {
    sub_1BD0DE53C(a2, &qword_1EBD45480);
LABEL_13:
    sub_1BD0DE53C(a3, &qword_1EBD45490);

    v16 = 0;
LABEL_14:
    v19 = 0;
    v21 = 0;
    v31 = 0;
    v33 = 0;
    v34 = 0uLL;
LABEL_15:
    *a4 = v16;
    *(a4 + 8) = v34;
    *(a4 + 24) = v19;
    *(a4 + 32) = v21;
    *(a4 + 40) = v31;
    *(a4 + 48) = v33;
    return;
  }

  if ([v15 transferType] != 3)
  {
    sub_1BD0DE53C(a2, &qword_1EBD45480);

    goto LABEL_13;
  }

  v16 = [v15 account];
  if ([v16 type] != 4)
  {
    sub_1BD0DE53C(a2, &qword_1EBD45480);

    sub_1BD0DE53C(a3, &qword_1EBD45490);
    goto LABEL_14;
  }

  v35 = a2;
  v36 = a3;
  (*(v9 + 104))(v12, *MEMORY[0x1E69B80E0], v8);
  v17 = PKPassKitBundle();
  if (!v17)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v18 = v17;
  v19 = sub_1BE04B6F4();
  v21 = v20;

  (*(v9 + 8))(v12, v8);
  v22 = [v16 savingsDetails];
  if (!v22)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v23 = v22;
  v24 = [v22 accountSummary];

  v25 = [v24 currentBalance];
  v26 = [v16 savingsDetails];
  if (!v26)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v27 = v26;
  v28 = [v26 currencyCode];

  v29 = PKCurrencyAmountMake();
  if (v29)
  {
    v30 = [v29 formattedStringValue];

    if (v30)
    {
      v31 = sub_1BE052434();
      v33 = v32;

      sub_1BD0DE53C(v36, &qword_1EBD45490);
      sub_1BD0DE53C(v35, &qword_1EBD45480);
    }

    else
    {
      sub_1BD0DE53C(v35, &qword_1EBD45480);

      sub_1BD0DE53C(v36, &qword_1EBD45490);
      v31 = 0;
      v33 = 0;
    }

    v34 = xmmword_1BE0C76C0;
    goto LABEL_15;
  }

LABEL_23:
  __break(1u);
}

uint64_t type metadata accessor for AMPAuthorizationModel()
{
  result = qword_1EBD36128;
  if (!qword_1EBD36128)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD28BB88()
{
  sub_1BD28CD0C();
  if (v0 <= 0x3F)
  {
    sub_1BD28CD70();
    if (v1 <= 0x3F)
    {
      sub_1BD1E1120();
      if (v2 <= 0x3F)
      {
        swift_initClassMetadata2();
      }
    }
  }
}

uint64_t sub_1BD28BCB0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();
}

uint64_t sub_1BD28BD28()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  return v1;
}

uint64_t sub_1BD28BD9C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  return v1;
}

_BYTE *sub_1BD28BE10(uint64_t a1)
{
  v52 = a1;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60);
  v51 = *(v53 - 1);
  MEMORY[0x1EEE9AC00](v53, v2);
  v4 = v45 - v3;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40128);
  v5 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50, v6);
  v8 = v45 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B40);
  MEMORY[0x1EEE9AC00](v9, v10);
  v49 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v45 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = v45 - v18;
  v20 = qword_1EBD36140;
  v21 = type metadata accessor for Passes(0);
  v22 = *(v21 - 8);
  v46 = *(v22 + 56);
  v47 = v21;
  v45[1] = v22 + 56;
  v46(v19, 1, 1);
  sub_1BD0DE19C(v19, v15, &unk_1EBD43B40);
  sub_1BE04D874();
  v48 = v19;
  sub_1BD0DE53C(v19, &unk_1EBD43B40);
  (*(v5 + 32))(v1 + v20, v8, v50);
  v23 = v52;
  v24 = qword_1EBD36150;
  LOBYTE(aBlock[0]) = 0;
  sub_1BE04D874();
  (*(v51 + 32))(v1 + v24, v4, v53);
  v25 = *(v23 + 32);
  result = [v25 paymentRequest];
  if (result)
  {
    v27 = result;
    v28 = [result requestType];
    *(v1 + qword_1EBDAAED0) = v28;
    v29 = [v25 mode];
    swift_beginAccess();
    v56 = v29;
    type metadata accessor for PKPaymentAuthorizationMode(0);
    sub_1BE04D874();
    swift_endAccess();
    v30 = [v27 _isPSD2StyleRequest];
    *(v1 + qword_1EBDAAD88) = v30;
    v31 = [v27 requestType] == 3;
    *(v1 + qword_1EBDAAD80) = v31;
    v32 = [v27 _isAMPApplePayClassicRequest];
    *(v1 + qword_1EBDAAEC8) = v32;
    v34 = *v23;
    v33 = *(v23 + 8);
    v55 = *(v23 + 24);
    v56 = v33;
    v35 = v25;
    v36 = v34;
    sub_1BD0DE19C(&v56, aBlock, &qword_1EBD3D490);
    sub_1BD0DE19C(&v55, aBlock, &qword_1EBD40150);
    sub_1BE048964();
    v37 = sub_1BD46A578(v23);
    v53 = v36;

    sub_1BD0DE53C(&v56, &qword_1EBD3D490);
    sub_1BD0DE53C(&v55, &qword_1EBD40150);

    sub_1BE048964();
    LOBYTE(v34) = sub_1BD28C500();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(aBlock[0]) = v34 & 1;
    sub_1BE048964();
    sub_1BE04D8C4();
    if (sub_1BD28C500())
    {
      v38 = v35;
      v39 = v49;
      sub_1BD4930AC(v38, v49);
      v40 = 0;
    }

    else
    {
      v40 = 1;
      v39 = v49;
    }

    (v46)(v39, v40, 1, v47);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BD0DE19C(v39, v48, &unk_1EBD43B40);
    sub_1BE048964();
    sub_1BE04D8C4();
    sub_1BD0DE53C(v39, &unk_1EBD43B40);
    if (v37[qword_1EBDAAD80] == 1)
    {
      v41 = [v27 passTypeIdentifier];
      v42 = [v27 passSerialNumber];
      [v35 setPaymentPassWithPassTypeIdentifier:v41 serialNumber:v42];
    }

    v43 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1BD28D164;
    aBlock[5] = v43;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD126964;
    aBlock[3] = &block_descriptor_41;
    v44 = _Block_copy(aBlock);

    [v35 setUpdateHandler_];
    _Block_release(v44);

    sub_1BD0DE53C(&v56, &qword_1EBD3D490);
    sub_1BD0DE53C(&v55, &qword_1EBD40150);

    return v37;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_1BD28C500()
{
  if ((*(v0 + qword_1EBDAAD88) & 1) == 0 && (*(v0 + qword_1EBDAAD80) & 1) == 0 && *(v0 + qword_1EBDAAEC8) != 1)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  return v2 == 1;
}

uint64_t sub_1BD28C5B8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1BD28C610();
  }

  return result;
}

void sub_1BD28C610()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B40);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v25 - v7;
  v10 = *(v0 + qword_1EBDAAD68 + 24);
  v9 = *(v0 + qword_1EBDAAD68 + 32);
  v11 = v10;
  v12 = v9;
  sub_1BD2B1238(v12, v10, &v31);
  v13 = v32;
  if (v32)
  {
    v14 = v31;
    v15 = sub_1BD1C2B14();
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    *(v16 + 24) = v13;
    v17 = v34;
    *(v16 + 32) = v33;
    *(v16 + 48) = v17;
    v18 = &type metadata for AuthorizationError;
  }

  else
  {
    v16 = 0;
    v18 = 0;
    v15 = 0;
    v27 = 0;
    v28 = 0;
  }

  v26 = v16;
  v29 = v18;
  v30 = v15;
  sub_1BE04C8F4();
  v19 = [v12 mode];
  swift_getKeyPath();
  swift_getKeyPath();
  v26 = v19;
  sub_1BE048964();
  sub_1BE04D8C4();
  LOBYTE(v19) = sub_1BD28C500();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v26) = v19 & 1;
  sub_1BE048964();
  sub_1BE04D8C4();
  if (sub_1BD28C500())
  {
    sub_1BD4930AC(v12, v8);
    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  v21 = type metadata accessor for Passes(0);
  (*(*(v21 - 8) + 56))(v8, v20, 1, v21);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BD0DE19C(v8, v4, &unk_1EBD43B40);
  sub_1BE048964();
  sub_1BE04D8C4();
  sub_1BD0DE53C(v8, &unk_1EBD43B40);
  if (sub_1BD28C500())
  {
    goto LABEL_11;
  }

  v22 = [v12 paymentRequest];
  if (v22)
  {
    v23 = v22;
    v24 = [v22 localizedNavigationTitle];

    if (v24)
    {
      sub_1BE052434();
    }

LABEL_11:
    sub_1BE04C8D4();

    return;
  }

  __break(1u);
}

void sub_1BD28C938(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 32);
  v13 = *(a1 + 24);
  v14 = v3;
  v5 = (v1 + qword_1EBDAAD68);
  v6 = *(v1 + qword_1EBDAAD68);
  v7 = *(v1 + qword_1EBDAAD68 + 24);
  v8 = *(v1 + qword_1EBDAAD68 + 32);
  v9 = *(a1 + 16);
  *v5 = *a1;
  v5[1] = v9;
  v5[2] = *(a1 + 32);
  v10 = v2;
  sub_1BD0DE19C(&v14, v12, &qword_1EBD3D490);
  sub_1BD0DE19C(&v13, v12, &qword_1EBD40150);
  v11 = v4;
  sub_1BE048964();

  swift_unknownObjectRelease();
  sub_1BD28C610();
}

uint64_t sub_1BD28CA18()
{
  v1 = qword_1EBD36140;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40128);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = qword_1EBD36158;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD40130);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = qword_1EBD36150;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60);
  v7 = *(*(v6 - 8) + 8);

  return v7(v0 + v5, v6);
}

uint64_t sub_1BD28CB24()
{
  v0 = sub_1BE04C954();
  v1 = qword_1EBD36020;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD40140);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + qword_1EBDAAD68);
  v4 = *(v0 + qword_1EBDAAD68 + 24);
  v5 = *(v0 + qword_1EBDAAD68 + 32);

  swift_unknownObjectRelease();
  v6 = qword_1EBD36140;
  sub_1BE048964();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40128);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = qword_1EBD36158;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD40130);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = qword_1EBD36150;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);

  return swift_deallocClassInstance();
}

void sub_1BD28CD0C()
{
  if (!qword_1EBD36900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD43B40);
    v0 = sub_1BE04D8D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD36900);
    }
  }
}

void sub_1BD28CD70()
{
  if (!qword_1EBD368D0)
  {
    type metadata accessor for PKPaymentAuthorizationMode(255);
    v0 = sub_1BE04D8D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD368D0);
    }
  }
}

uint64_t sub_1BD28CDD0@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  *a1 = v3;
  return result;
}

uint64_t sub_1BD28CE50()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

uint64_t sub_1BD28CEC4@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  *a1 = v3;
  return result;
}

uint64_t sub_1BD28CF44()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

uint64_t sub_1BD28CFB8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();
}

uint64_t sub_1BD28D034(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B40);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v11 - v8;
  sub_1BD0DE19C(a1, &v11 - v8, &unk_1EBD43B40);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BD0DE19C(v9, v5, &unk_1EBD43B40);
  sub_1BE048964();
  sub_1BE04D8C4();
  return sub_1BD0DE53C(v9, &unk_1EBD43B40);
}

void sub_1BD28D16C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v48 = sub_1BE04BD74();
  v8 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48, v9);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD476F0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v43 - v14;
  v16 = sub_1BE04C4C4();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD28D600(a3, v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_1BD28D670(v15);
    [*(v4 + OBJC_IVAR____TtC9PassKitUI29NearbyPeerPaymentMetadataView_senderMetadataView) setAlpha_];
    sub_1BE048C84();
    if (!a2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    (*(v17 + 32))(v20, v15, v16);
    a1 = sub_1BE04C4A4();
    a2 = v21;
    v47 = v4;
    v22 = *(v4 + OBJC_IVAR____TtC9PassKitUI29NearbyPeerPaymentMetadataView_senderMetadataView);
    v23 = sub_1BE04C3E4();
    v24 = (v22 + OBJC_IVAR____TtC9PassKitUIP33_88C4D7CE4C235A7E18F3A7D5C4D275AF35NearbyPeerPaymentSenderMetadataView_name);
    *v24 = v23;
    v24[1] = v25;

    sub_1BD28DF98();
    v26 = sub_1BE04C4B4();
    if (v27 >> 60 != 15)
    {
      v46 = v8;
      v28 = v26;
      v44 = a1;
      v29 = v27;
      v30 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
      sub_1BD041A38(v28, v29);
      v31 = sub_1BE04AAB4();
      v45 = v11;
      v32 = v31;
      v33 = [v30 initWithData_];

      sub_1BD030220(v28, v29);
      v34 = *(v22 + OBJC_IVAR____TtC9PassKitUIP33_88C4D7CE4C235A7E18F3A7D5C4D275AF35NearbyPeerPaymentSenderMetadataView_image);
      *(v22 + OBJC_IVAR____TtC9PassKitUIP33_88C4D7CE4C235A7E18F3A7D5C4D275AF35NearbyPeerPaymentSenderMetadataView_image) = v33;
      v43 = v33;

      sub_1BD28E184();
      v35 = v28;
      v11 = v45;
      v8 = v46;
      v36 = v29;
      a1 = v44;
      sub_1BD030220(v35, v36);
    }

    (*(v17 + 8))(v20, v16);
    v4 = v47;
    if (!a2)
    {
      goto LABEL_10;
    }
  }

  if (sub_1BE052534() >= 1)
  {
    v37 = *(v4 + OBJC_IVAR____TtC9PassKitUI29NearbyPeerPaymentMetadataView_memoLabel);
    v38 = v48;
    (*(v8 + 104))(v11, *MEMORY[0x1E69B8050], v48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
    v39 = v11;
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_1BE0B69E0;
    *(v40 + 56) = MEMORY[0x1E69E6158];
    *(v40 + 64) = sub_1BD110550();
    *(v40 + 32) = a1;
    *(v40 + 40) = a2;
    sub_1BE04B714();

    (*(v8 + 8))(v39, v38);
    v41 = sub_1BE052404();

    [v37 setText_];

    return;
  }

LABEL_10:
  v42 = *(v4 + OBJC_IVAR____TtC9PassKitUI29NearbyPeerPaymentMetadataView_memoLabel);
  [v42 setText_];
  [v42 setAlpha_];
}

uint64_t sub_1BD28D600(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD476F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD28D670(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD476F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1BD28D78C(void *a1)
{
  v3 = OBJC_IVAR____TtC9PassKitUI29NearbyPeerPaymentMetadataView_memoLabel;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v4 = OBJC_IVAR____TtC9PassKitUI29NearbyPeerPaymentMetadataView_senderMetadataView;
  *&v1[v4] = [objc_allocWithZone(type metadata accessor for NearbyPeerPaymentSenderMetadataView()) init];
  v9.receiver = v1;
  v9.super_class = type metadata accessor for NearbyPeerPaymentMetadataView();
  v5 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    sub_1BD28D864();
  }

  return v6;
}

id sub_1BD28D864()
{
  v1 = *&v0[OBJC_IVAR____TtC9PassKitUI29NearbyPeerPaymentMetadataView_memoLabel];
  [v1 setTextAlignment_];
  v2 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD40], *MEMORY[0x1E69DDC20]);
  [v1 setFont_];

  [v1 setNumberOfLines_];
  [v0 addSubview_];
  v3 = *&v0[OBJC_IVAR____TtC9PassKitUI29NearbyPeerPaymentMetadataView_senderMetadataView];

  return [v0 addSubview_];
}

id sub_1BD28D934()
{
  v1 = v0;
  v38 = *MEMORY[0x1E69E9840];
  v37.receiver = v0;
  v37.super_class = type metadata accessor for NearbyPeerPaymentMetadataView();
  objc_msgSendSuper2(&v37, sel_layoutSubviews);
  [v0 bounds];
  v3 = v2;
  v5 = v4;
  width = v6;
  height = v8;
  v10 = *&v0[OBJC_IVAR____TtC9PassKitUI29NearbyPeerPaymentMetadataView_memoLabel];
  v11 = [v10 text];
  if (v11)
  {
    v12 = v11;
    sub_1BE052434();

    v13 = sub_1BE052534();

    v14 = v13 > 0;
    v15 = *&v1[OBJC_IVAR____TtC9PassKitUI29NearbyPeerPaymentMetadataView_senderMetadataView];
    if (!*&v15[OBJC_IVAR____TtC9PassKitUIP33_88C4D7CE4C235A7E18F3A7D5C4D275AF35NearbyPeerPaymentSenderMetadataView_name + 8])
    {
      if (v13 > 0)
      {
        v16 = 0;
        v17 = 0.0;
        goto LABEL_10;
      }

LABEL_14:
      [v10 setFrame_];
      return [v15 setFrame_];
    }
  }

  else
  {
    v15 = *&v1[OBJC_IVAR____TtC9PassKitUI29NearbyPeerPaymentMetadataView_senderMetadataView];
    if (!*&v15[OBJC_IVAR____TtC9PassKitUIP33_88C4D7CE4C235A7E18F3A7D5C4D275AF35NearbyPeerPaymentSenderMetadataView_name + 8])
    {
      goto LABEL_14;
    }

    v14 = 0;
  }

  sub_1BE048C84();
  v18 = sub_1BE052534();

  v16 = v18 > 0;
  if (!v14)
  {
    [v10 setFrame_];
    if (v18 > 0)
    {
      goto LABEL_13;
    }

    return [v15 setFrame_];
  }

  v17 = 0.0;
  if (v18 > 0)
  {
    v17 = 8.0;
  }

LABEL_10:
  v34 = v17;
  [v10 sizeThatFits_];
  PKSizeAlignedInRect();
  v19 = v3;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  [v10 setFrame_];
  v39.origin.x = v21;
  v39.origin.y = v23;
  v39.size.width = v25;
  v39.size.height = v27;
  v28 = v34 + CGRectGetHeight(v39);
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v40.origin.x = v19;
  v40.origin.y = v5;
  v40.size.width = width;
  v40.size.height = height;
  CGRectDivide(v40, &slice, &remainder, v28, CGRectMinYEdge);
  if (v16)
  {
    width = remainder.size.width;
    height = remainder.size.height;
LABEL_13:
    [v15 sizeThatFits_];
    PKSizeAlignedInRect();
    return [v15 setFrame_];
  }

  return [v15 setFrame_];
}

double sub_1BD28DC7C(double a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9PassKitUI29NearbyPeerPaymentMetadataView_memoLabel);
  v4 = [v3 text];
  if (v4)
  {
    v5 = v4;
    sub_1BE052434();

    v6 = sub_1BE052534();

    v7 = v6 > 0;
    v8 = *(v1 + OBJC_IVAR____TtC9PassKitUI29NearbyPeerPaymentMetadataView_senderMetadataView);
    if (!*&v8[OBJC_IVAR____TtC9PassKitUIP33_88C4D7CE4C235A7E18F3A7D5C4D275AF35NearbyPeerPaymentSenderMetadataView_name + 8])
    {
      if (v6 <= 0)
      {
        return 0.0;
      }

      v9 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    v8 = *(v1 + OBJC_IVAR____TtC9PassKitUI29NearbyPeerPaymentMetadataView_senderMetadataView);
    if (!*&v8[OBJC_IVAR____TtC9PassKitUIP33_88C4D7CE4C235A7E18F3A7D5C4D275AF35NearbyPeerPaymentSenderMetadataView_name + 8])
    {
      return 0.0;
    }

    v7 = 0;
  }

  sub_1BE048C84();
  v10 = sub_1BE052534();

  v9 = v10 > 0;
  if (v7)
  {
LABEL_8:
    [v3 sizeThatFits_];
    if (!v9)
    {
      return a1;
    }

    goto LABEL_11;
  }

  if (v10 < 1)
  {
    return 0.0;
  }

LABEL_11:
  [v8 sizeThatFits_];
  return a1;
}

id NearbyPeerPaymentMetadataView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id sub_1BD28DF98()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  v4 = MEMORY[0x1EEE9AC00](v1, v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *&v0[OBJC_IVAR____TtC9PassKitUIP33_88C4D7CE4C235A7E18F3A7D5C4D275AF35NearbyPeerPaymentSenderMetadataView_name + 8];
  if (v7)
  {
    v8 = *&v0[OBJC_IVAR____TtC9PassKitUIP33_88C4D7CE4C235A7E18F3A7D5C4D275AF35NearbyPeerPaymentSenderMetadataView_name];
    (*(v2 + 104))(v6, *MEMORY[0x1E69B8050], v1, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1BE0B69E0;
    *(v9 + 56) = MEMORY[0x1E69E6158];
    *(v9 + 64) = sub_1BD110550();
    *(v9 + 32) = v8;
    *(v9 + 40) = v7;
    sub_1BE048C84();
    sub_1BE04B714();

    (*(v2 + 8))(v6, v1);
    v10 = *&v0[OBJC_IVAR____TtC9PassKitUIP33_88C4D7CE4C235A7E18F3A7D5C4D275AF35NearbyPeerPaymentSenderMetadataView_nameLabel];
    v11 = sub_1BE052404();
  }

  else
  {
    v11 = 0;
    v10 = *&v0[OBJC_IVAR____TtC9PassKitUIP33_88C4D7CE4C235A7E18F3A7D5C4D275AF35NearbyPeerPaymentSenderMetadataView_nameLabel];
  }

  [v10 setText_];

  return [v0 setNeedsLayout];
}

id sub_1BD28E184()
{
  v1 = *&v0[OBJC_IVAR____TtC9PassKitUIP33_88C4D7CE4C235A7E18F3A7D5C4D275AF35NearbyPeerPaymentSenderMetadataView_image];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC9PassKitUIP33_88C4D7CE4C235A7E18F3A7D5C4D275AF35NearbyPeerPaymentSenderMetadataView_imageView];
    v3 = v1;
    [v2 setImage_];
    [v2 setHidden_];
    v4 = [*&v0[OBJC_IVAR____TtC9PassKitUIP33_88C4D7CE4C235A7E18F3A7D5C4D275AF35NearbyPeerPaymentSenderMetadataView_avatarController] view];
    [v4 setHidden_];
  }

  else
  {
    v5 = [*&v0[OBJC_IVAR____TtC9PassKitUIP33_88C4D7CE4C235A7E18F3A7D5C4D275AF35NearbyPeerPaymentSenderMetadataView_avatarController] view];
    [v5 setHidden_];

    [*&v0[OBJC_IVAR____TtC9PassKitUIP33_88C4D7CE4C235A7E18F3A7D5C4D275AF35NearbyPeerPaymentSenderMetadataView_imageView] setHidden_];
  }

  return [v0 setNeedsLayout];
}

char *sub_1BD28E30C()
{
  v1 = OBJC_IVAR____TtC9PassKitUIP33_88C4D7CE4C235A7E18F3A7D5C4D275AF35NearbyPeerPaymentSenderMetadataView_imageView;
  *&v0[v1] = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  v2 = OBJC_IVAR____TtC9PassKitUIP33_88C4D7CE4C235A7E18F3A7D5C4D275AF35NearbyPeerPaymentSenderMetadataView_nameLabel;
  *&v0[v2] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v3 = OBJC_IVAR____TtC9PassKitUIP33_88C4D7CE4C235A7E18F3A7D5C4D275AF35NearbyPeerPaymentSenderMetadataView_avatarController;
  *&v0[v3] = [objc_allocWithZone(MEMORY[0x1E695D0C8]) init];
  v4 = &v0[OBJC_IVAR____TtC9PassKitUIP33_88C4D7CE4C235A7E18F3A7D5C4D275AF35NearbyPeerPaymentSenderMetadataView_name];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v0[OBJC_IVAR____TtC9PassKitUIP33_88C4D7CE4C235A7E18F3A7D5C4D275AF35NearbyPeerPaymentSenderMetadataView_image] = 0;
  v24.receiver = v0;
  v24.super_class = type metadata accessor for NearbyPeerPaymentSenderMetadataView();
  v5 = objc_msgSendSuper2(&v24, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v6 = OBJC_IVAR____TtC9PassKitUIP33_88C4D7CE4C235A7E18F3A7D5C4D275AF35NearbyPeerPaymentSenderMetadataView_imageView;
  v7 = *&v5[OBJC_IVAR____TtC9PassKitUIP33_88C4D7CE4C235A7E18F3A7D5C4D275AF35NearbyPeerPaymentSenderMetadataView_imageView];
  v8 = v5;
  [v7 setContentMode_];
  [v8 addSubview_];
  v9 = [objc_allocWithZone(MEMORY[0x1E695CF18]) init];
  [v9 setContactType_];
  v10 = OBJC_IVAR____TtC9PassKitUIP33_88C4D7CE4C235A7E18F3A7D5C4D275AF35NearbyPeerPaymentSenderMetadataView_avatarController;
  v11 = *&v8[OBJC_IVAR____TtC9PassKitUIP33_88C4D7CE4C235A7E18F3A7D5C4D275AF35NearbyPeerPaymentSenderMetadataView_avatarController];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1BE0B7020;
  *(v12 + 32) = v9;
  sub_1BD0E8CBC();
  v13 = v11;
  v14 = v9;
  v15 = sub_1BE052724();

  [v13 setContacts_];

  v16 = [*&v8[v10] view];
  [v8 addSubview_];

  v17 = OBJC_IVAR____TtC9PassKitUIP33_88C4D7CE4C235A7E18F3A7D5C4D275AF35NearbyPeerPaymentSenderMetadataView_nameLabel;
  [*&v8[OBJC_IVAR____TtC9PassKitUIP33_88C4D7CE4C235A7E18F3A7D5C4D275AF35NearbyPeerPaymentSenderMetadataView_nameLabel] setTextAlignment_];
  v18 = *MEMORY[0x1E69DDD80];
  v19 = *MEMORY[0x1E69DDC20];
  v20 = *MEMORY[0x1E69DB980];
  v21 = *&v8[v17];
  v22 = PKFontForDefaultDesign(v18, v19, v20);
  [v21 setFont_];

  [*&v8[v17] setNumberOfLines_];
  [*&v8[v17] setAccessibilityIdentifier_];
  [v8 addSubview_];
  [v8 setAccessibilityIdentifier_];

  return v8;
}

void sub_1BD28E64C()
{
  v36 = *MEMORY[0x1E69E9840];
  v35.receiver = v0;
  v35.super_class = type metadata accessor for NearbyPeerPaymentSenderMetadataView();
  objc_msgSendSuper2(&v35, sel_layoutSubviews);
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = [v0 traitCollection];
  v10 = [v9 preferredContentSizeCategory];

  sub_1BE052E84();
  PKSizeAlignedInRect();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [*&v0[OBJC_IVAR____TtC9PassKitUIP33_88C4D7CE4C235A7E18F3A7D5C4D275AF35NearbyPeerPaymentSenderMetadataView_imageView] setFrame_];
  v19 = [*&v0[OBJC_IVAR____TtC9PassKitUIP33_88C4D7CE4C235A7E18F3A7D5C4D275AF35NearbyPeerPaymentSenderMetadataView_avatarController] view];
  [v19 setFrame_];

  v37.origin.x = v12;
  v37.origin.y = v14;
  v37.size.width = v16;
  v37.size.height = v18;
  memset(&slice, 0, sizeof(slice));
  v20 = CGRectGetWidth(v37) + 6.0;
  memset(&v33, 0, sizeof(v33));
  v38.origin.x = v2;
  v38.origin.y = v4;
  v38.size.width = v6;
  v38.size.height = v8;
  CGRectDivide(v38, &slice, &v33, v20, CGRectMinXEdge);
  origin = v33.origin;
  size = v33.size;
  v23 = *&v0[OBJC_IVAR____TtC9PassKitUIP33_88C4D7CE4C235A7E18F3A7D5C4D275AF35NearbyPeerPaymentSenderMetadataView_nameLabel];
  [v23 sizeThatFits_];
  PKSizeAlignedInRect();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  [v23 setFrame_];
  v39.origin.x = v25;
  v39.origin.y = v27;
  v39.size.width = v29;
  v39.size.height = v31;
  Width = CGRectGetWidth(v39);
  memset(&slice, 0, sizeof(slice));
  memset(&v33, 0, sizeof(v33));
  v40.origin = origin;
  v40.size = size;
  CGRectDivide(v40, &slice, &v33, Width, CGRectMinXEdge);
}

id sub_1BD28E910(double a1)
{
  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  LOBYTE(v3) = sub_1BE052E84();
  if (v3)
  {
    v5 = 30.0;
  }

  else
  {
    v5 = 20.0;
  }

  return [*&v1[OBJC_IVAR____TtC9PassKitUIP33_88C4D7CE4C235A7E18F3A7D5C4D275AF35NearbyPeerPaymentSenderMetadataView_nameLabel] sizeThatFits_];
}

id sub_1BD28EA80(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_1BD28EB5C()
{
  v1 = OBJC_IVAR____TtC9PassKitUIP33_88C4D7CE4C235A7E18F3A7D5C4D275AF35NearbyPeerPaymentSenderMetadataView_imageView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  v2 = OBJC_IVAR____TtC9PassKitUIP33_88C4D7CE4C235A7E18F3A7D5C4D275AF35NearbyPeerPaymentSenderMetadataView_nameLabel;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v3 = OBJC_IVAR____TtC9PassKitUIP33_88C4D7CE4C235A7E18F3A7D5C4D275AF35NearbyPeerPaymentSenderMetadataView_avatarController;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x1E695D0C8]) init];
  v4 = (v0 + OBJC_IVAR____TtC9PassKitUIP33_88C4D7CE4C235A7E18F3A7D5C4D275AF35NearbyPeerPaymentSenderMetadataView_name);
  *v4 = 0;
  v4[1] = 0;
  *(v0 + OBJC_IVAR____TtC9PassKitUIP33_88C4D7CE4C235A7E18F3A7D5C4D275AF35NearbyPeerPaymentSenderMetadataView_image) = 0;
  sub_1BE053994();
  __break(1u);
}

id sub_1BD28EC40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC9PassKitUI35ProvisioningVerificationFlowSection_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v8 = &v3[OBJC_IVAR____TtC9PassKitUI35ProvisioningVerificationFlowSection_identifier];
  *v8 = 0xD000000000000017;
  *(v8 + 1) = 0x80000001BE120B40;
  *&v3[OBJC_IVAR____TtC9PassKitUI35ProvisioningVerificationFlowSection__debugConfiguration] = &type metadata for ProvisioningScreenDebugConfiguration;
  *&v3[OBJC_IVAR____TtC9PassKitUI35ProvisioningVerificationFlowSection_context] = a1;
  *&v3[OBJC_IVAR____TtC9PassKitUI35ProvisioningVerificationFlowSection_provisionedPasses] = a2;
  *&v3[OBJC_IVAR____TtC9PassKitUI35ProvisioningVerificationFlowSection_verificationController] = a3;
  v10.receiver = v3;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_init);
}

id sub_1BD28ED18()
{
  v1 = *&v0[OBJC_IVAR____TtC9PassKitUI35ProvisioningVerificationFlowSection_verificationController];
  result = [v1 verificationRecord];
  if (result)
  {
    v3 = result;
    v4 = [result verificationStatus];
    if (v4 > 2)
    {
      if (v4 == 3 || v4 == 4000)
      {
        v9 = [v3 activeMethodGroup];
        v10 = *&v0[OBJC_IVAR____TtC9PassKitUI35ProvisioningVerificationFlowSection_context];
        if (v9)
        {
          v11 = v9;
          v12 = *&v0[OBJC_IVAR____TtC9PassKitUI35ProvisioningVerificationFlowSection_provisionedPasses];
          objc_allocWithZone(type metadata accessor for ProvisioningPerformVerificationFlowSection());
          v13 = v1;
          v14 = v0;
          sub_1BE048964();
          v15 = v12;
          v16 = sub_1BD724E68(v10, v15, v11, v13);

          return v16;
        }

        objc_allocWithZone(type metadata accessor for ProvisioningVerificationMethodsFlowItem());
        v6 = v1;
        v7 = v0;
        v8 = sub_1BE048964();
        goto LABEL_12;
      }
    }

    else if ((v4 - 1) < 2)
    {
      v5 = *&v0[OBJC_IVAR____TtC9PassKitUI35ProvisioningVerificationFlowSection_context];
      objc_allocWithZone(type metadata accessor for ProvisioningVerificationMethodsFlowItem());
      sub_1BE048964();
      v6 = v1;
      v7 = v0;
      v8 = v5;
LABEL_12:
      v17 = sub_1BD5537A8(v8, v6);

      return v17;
    }

    return 0;
  }

  return result;
}

void sub_1BD28EFD4(void (*a1)(unint64_t, unint64_t, void, void), uint64_t a2)
{
  v33 = a1;
  v34 = a2;
  v3 = sub_1BE04BAC4();
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v29 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v32 = v2;
  v7 = sub_1BD188238(v2, KeyPath);

  v8 = *(v7 + 16);
  v9 = (v7 + 32);
  v38 = 0x80000001BE1182F0;
  v39 = 0x80000001BE118310;
  v36 = 0x80000001BE118280;
  v37 = 0x80000001BE1182A0;
  v35 = 0x80000001BE118260;
  while (2)
  {
    if (v8)
    {
      switch(*v9)
      {
        case 3:

          break;
        default:
          v10 = sub_1BE053B84();

          ++v9;
          --v8;
          if ((v10 & 1) == 0)
          {
            continue;
          }

          break;
      }

      v12 = 0x6F63206775626564;
      v11 = 0xEC0000006769666ELL;
      goto LABEL_19;
    }

    break;
  }

  if (PKShowFakeVerificationChannels())
  {
    v11 = 0x80000001BE120AC0;
    v12 = 0xD000000000000012;
LABEL_19:
    v33(v12, v11, 0, 0);
    return;
  }

  v13 = v32;
  v39 = sub_1BE04BC84();
  v14 = [v39 devicePrimaryPaymentApplication];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 state];

    if ((v16 - 3) <= 1)
    {
      v17 = v29;
      sub_1BE04BC34();
      v18 = sub_1BE04BA54();
      (*(v30 + 8))(v17, v31);
      if (v18)
      {
        v19 = [objc_opt_self() requestWithPass_];
        v20 = *&v13[OBJC_IVAR____TtC9PassKitUI35ProvisioningVerificationFlowSection_verificationController];
        v21 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v22 = swift_allocObject();
        v23 = v34;
        v22[2] = v33;
        v22[3] = v23;
        v22[4] = v21;
        aBlock[4] = sub_1BD2903A0;
        aBlock[5] = v22;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1BD28F728;
        aBlock[3] = &block_descriptor_12_0;
        v24 = _Block_copy(aBlock);
        sub_1BE048964();

        [v20 performVerificationOptionsRequest:v19 completion:v24];

        _Block_release(v24);
      }

      else
      {
        v33(0, 0, 0, 0);
      }

      return;
    }

    v25 = "ficationFlowSection";
    v26 = 0xD000000000000021;
  }

  else
  {
    v25 = "v24@?0Q8@NSError16";
    v26 = 0xD000000000000025;
  }

  v33(v26, v25 | 0x8000000000000000, 0, 1);
  v27 = v39;
}

void sub_1BD28F5D4(uint64_t a1, uint64_t a2, void (*a3)(unint64_t, unint64_t, void, uint64_t), uint64_t a4)
{
  if (a2)
  {
    a3(0xD000000000000017, 0x80000001BE120AE0, 0, 1);
  }

  else
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      v8 = *(Strong + OBJC_IVAR____TtC9PassKitUI35ProvisioningVerificationFlowSection_verificationController);

      v9 = swift_allocObject();
      *(v9 + 16) = a3;
      *(v9 + 24) = a4;
      aBlock[4] = sub_1BD2903AC;
      aBlock[5] = v9;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD3F08C0;
      aBlock[3] = &block_descriptor_18;
      v10 = _Block_copy(aBlock);
      sub_1BE048964();

      [v8 canPerformAnyVerificationInline_];
      _Block_release(v10);
    }
  }
}

void sub_1BD28F728(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  sub_1BE048964();
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1BD28F7A0(uint64_t (*a1)(uint64_t))
{
  v3 = sub_1BE04D214();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + OBJC_IVAR____TtC9PassKitUI35ProvisioningVerificationFlowSection_verificationController);
  v10 = [v9 verificationRecord];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 activeMethodGroup];
    if (v12)
    {
      v13 = v12;
      if ([v11 isVerificationInProgressWithCompletedMethods])
      {
        sub_1BE04D0C4();
        v14 = sub_1BE04D204();
        v15 = sub_1BE052C54();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          *v16 = 0;
          v17 = v15;
          v18 = v16;
          _os_log_impl(&dword_1BD026000, v14, v17, "Clearing active selection because some methods have already been complete. Resuming a method group is not currently supported.", v16, 2u);
          MEMORY[0x1BFB45F20](v18, -1, -1);
        }

        (*(v4 + 8))(v8, v3);
        [v9 clearSelectedChannel];
      }
    }
  }

  return a1(1);
}

void sub_1BD28F974()
{
  v1 = sub_1BE051F54();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE051FA4();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [*&v0[OBJC_IVAR____TtC9PassKitUI35ProvisioningVerificationFlowSection_verificationController] verificationRecord];
  if (v12)
  {
    v26 = v12;
    v13 = [v12 activeMethodGroup];
    if (v13)
    {
      v25 = v13;
      v14 = [v13 onlyMethod];
      if (v14)
      {
        v15 = v14;
        sub_1BD14BE3C();
        v24 = sub_1BE052D54();
        v16 = swift_allocObject();
        v16[2] = v15;
        v16[3] = v0;
        v17 = v26;
        v16[4] = v25;
        v16[5] = v17;
        aBlock[4] = sub_1BD290110;
        aBlock[5] = v16;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1BD126964;
        aBlock[3] = &block_descriptor_42;
        v18 = _Block_copy(aBlock);
        v23 = v15;
        v19 = v0;
        v25 = v25;
        v20 = v26;

        sub_1BE051F74();
        aBlock[0] = MEMORY[0x1E69E7CC0];
        sub_1BD14EC84();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
        sub_1BD14ECDC();
        sub_1BE053664();
        v21 = v24;
        MEMORY[0x1BFB3FDF0](0, v11, v5, v18);
        _Block_release(v18);

        (*(v2 + 8))(v5, v1);
        (*(v7 + 8))(v11, v6);
        return;
      }

      v22 = v25;
    }

    else
    {
      v22 = v26;
    }
  }
}

void sub_1BD28FCD8(void *a1, char *a2, void *a3, void *a4)
{
  v8 = sub_1BE04D214();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 type] == 3)
  {
    v14 = *&a2[OBJC_IVAR____TtC9PassKitUI35ProvisioningVerificationFlowSection_context];
    v15 = *&a2[OBJC_IVAR____TtC9PassKitUI35ProvisioningVerificationFlowSection_provisionedPasses];
    v16 = *&a2[OBJC_IVAR____TtC9PassKitUI35ProvisioningVerificationFlowSection_verificationController];
    v17 = objc_allocWithZone(type metadata accessor for ProvisioningPerformVerificationFlowSection());
    sub_1BE048964();
    v18 = v15;
    v19 = v16;
    v20 = a3;
    v21 = a2;
    v33 = sub_1BD724E68(v14, v18, v20, v19);

    v22 = &v21[OBJC_IVAR____TtC9PassKitUI35ProvisioningVerificationFlowSection_delegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v23 = *(v22 + 1);
      ObjectType = swift_getObjectType();
      sub_1BD865948(v21, &off_1F3B9AD58, v33, &off_1F3BB88B0, ObjectType, v23);

      swift_unknownObjectRelease();
    }

    else
    {
      v31 = v33;
    }
  }

  else
  {
    sub_1BE04D0C4();
    v25 = a4;
    v26 = sub_1BE04D204();
    v27 = sub_1BE052C54();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      *(v28 + 4) = v25;
      *v29 = v25;
      v30 = v25;
      _os_log_impl(&dword_1BD026000, v26, v27, "Record not external URL %@", v28, 0xCu);
      sub_1BD1E236C(v29);
      MEMORY[0x1BFB45F20](v29, -1, -1);
      MEMORY[0x1BFB45F20](v28, -1, -1);
    }

    (*(v9 + 8))(v13, v8);
  }
}

id sub_1BD28FFC8(uint64_t a1)
{
  if (a1)
  {
    return 0;
  }

  result = sub_1BD28ED18();
  if (!result)
  {
    v3 = *&v1[OBJC_IVAR____TtC9PassKitUI35ProvisioningVerificationFlowSection_context];
    v4 = *&v1[OBJC_IVAR____TtC9PassKitUI35ProvisioningVerificationFlowSection_verificationController];
    objc_allocWithZone(type metadata accessor for ProvisioningVerificationMethodsFlowItem());
    sub_1BE048964();
    v5 = v4;
    v6 = v1;
    v7 = sub_1BD5537A8(v3, v5);

    return v7;
  }

  return result;
}

uint64_t sub_1BD290080()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI35ProvisioningVerificationFlowSection_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD2900BC(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI35ProvisioningVerificationFlowSection_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void sub_1BD29011C(uint64_t a1, uint64_t a2)
{
  v24 = sub_1BE04BAC4();
  v4 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE04B944();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a2;
  v13 = sub_1BE04BC84();
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (v14)
  {
    v15 = v13;
  }

  else
  {
  }

  v16 = [objc_allocWithZone(PKPassView) initWithPass:v14 content:5];

  v17 = v16;
  v18 = v14;
  sub_1BE04BB94();
  v19 = sub_1BE04B8E4();
  (*(v9 + 8))(v12, v8);
  sub_1BE04BC34();
  v20 = sub_1BE04B9A4();
  (*(v4 + 8))(v7, v24);
  v21 = [objc_allocWithZone(PKPaymentVerificationController) initWithPass:v18 passView:v17 webService:v19 context:v20 delegate:0 verificationContext:0];

  if (v21)
  {
    v22 = objc_allocWithZone(type metadata accessor for ProvisioningVerificationFlowSection());
    sub_1BD28EC40(a1, v23, v21);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD2903AC(char a1)
{
  if (a1)
  {
    v2 = 0xD000000000000017;
    v3 = 0x80000001BE120B20;
    v4 = 0;
  }

  else
  {
    v3 = 0x80000001BE120B00;
    v2 = 0xD000000000000016;
    v4 = 1;
  }

  return (*(v1 + 16))(v2, v3, 0, v4);
}

void sub_1BD290458(void *a1, uint64_t a2)
{
  v5 = [a1 paymentOffersController];
  v6 = *(v2 + OBJC_IVAR____TtC9PassKitUI28SelectedPaymentOfferObserver_paymentOffersController);
  *(v2 + OBJC_IVAR____TtC9PassKitUI28SelectedPaymentOfferObserver_paymentOffersController) = v5;

  v7 = [a1 fundingMode];
  *(v2 + OBJC_IVAR____TtC9PassKitUI28SelectedPaymentOfferObserver_fundingMode) = v7;
  *(v2 + OBJC_IVAR____TtC9PassKitUI28SelectedPaymentOfferObserver_authorizationState) = a2;
  if ([a1 mode] == 1)
  {
    v8 = [a1 pass];
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v2 + OBJC_IVAR____TtC9PassKitUI28SelectedPaymentOfferObserver_selectedPass);
  *(v2 + OBJC_IVAR____TtC9PassKitUI28SelectedPaymentOfferObserver_selectedPass) = v8;

  sub_1BD290534();

  sub_1BD2906AC();
}

void sub_1BD290534()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI28SelectedPaymentOfferObserver_paymentOffersController);
  if (v1 && *(v0 + OBJC_IVAR____TtC9PassKitUI28SelectedPaymentOfferObserver_fundingMode) == 2)
  {
    v2 = v1;
    v3 = [v2 selectedOfferDetails];
    v4 = [v3 requiresUserAction];
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    if (v4 != v5 && *(v0 + OBJC_IVAR____TtC9PassKitUI28SelectedPaymentOfferObserver_authorizationState) != 18)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BE048964();
      sub_1BE04D8C4();
    }
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE048964();
    sub_1BE04D8C4();
  }
}

void sub_1BD2906AC()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI28SelectedPaymentOfferObserver_paymentOffersController);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC9PassKitUI28SelectedPaymentOfferObserver_selectedPass);
    if (v2)
    {
      v10 = v2;
      v3 = v1;
      v4 = [v10 uniqueID];
      if (!v4)
      {
        __break(1u);
        return;
      }

      v5 = v4;
      v9 = [v3 eligiblePaymentOfferCriteriaForPassUniqueID:v4 type:1];

      if (v9)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {

          v6 = [v10 uniqueID];
          v7 = [v3 preconfiguredInstallmentOfferStateForPassUniqueID_];

          swift_getKeyPath();
          swift_getKeyPath();
          sub_1BE04D8B4();

          if (((v7 & 0xFFFFFFFFFFFFFFFELL) == 4) == v11)
          {
          }

          else
          {
            swift_getKeyPath();
            swift_getKeyPath();
            sub_1BE048964();
            sub_1BE04D8C4();
          }

          return;
        }

        v8 = v9;
      }

      else
      {

        v8 = v10;
      }
    }
  }
}

uint64_t sub_1BD2908DC()
{
  v1 = OBJC_IVAR____TtC9PassKitUI28SelectedPaymentOfferObserver__shouldDisplaySelectedPaymentOfferChangedView;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC9PassKitUI28SelectedPaymentOfferObserver__canFetchPreconfiguredInstallmentOffers, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SelectedPaymentOfferObserver()
{
  result = qword_1EBD401F0;
  if (!qword_1EBD401F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD290A28()
{
  sub_1BD1E1120();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1BD290AFC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

uint64_t sub_1BD290B6C(void *a1, uint64_t a2)
{
  v20 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v8 = &v20 - v7;
  v9 = [a1 paymentOffersController];
  v10 = [a1 fundingMode];
  if ([a1 mode] == 1)
  {
    v11 = [a1 pass];
  }

  else
  {
    v11 = 0;
  }

  type metadata accessor for SelectedPaymentOfferObserver();
  v12 = swift_allocObject();
  v13 = OBJC_IVAR____TtC9PassKitUI28SelectedPaymentOfferObserver__shouldDisplaySelectedPaymentOfferChangedView;
  v22 = 0;
  sub_1BE04D874();
  v14 = *(v4 + 32);
  v14(v12 + v13, v8, v3);
  v15 = OBJC_IVAR____TtC9PassKitUI28SelectedPaymentOfferObserver__canFetchPreconfiguredInstallmentOffers;
  v21 = 0;
  sub_1BE04D874();
  v14(v12 + v15, v8, v3);
  v16 = OBJC_IVAR____TtC9PassKitUI28SelectedPaymentOfferObserver_selectedPass;
  *(v12 + OBJC_IVAR____TtC9PassKitUI28SelectedPaymentOfferObserver_paymentOffersController) = v9;
  *(v12 + OBJC_IVAR____TtC9PassKitUI28SelectedPaymentOfferObserver_fundingMode) = v10;
  *(v12 + OBJC_IVAR____TtC9PassKitUI28SelectedPaymentOfferObserver_authorizationState) = v20;
  *(v12 + v16) = v11;
  v17 = v11;
  v18 = v9;
  sub_1BD2906AC();

  return v12;
}

char *sub_1BD290D88(void *a1, void *a2, void *a3, void *a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC9PassKitUI34AppleBalanceAddMoneyViewController_paymentWebService;
  *&v5[v10] = [objc_opt_self() sharedService];
  v11 = OBJC_IVAR____TtC9PassKitUI34AppleBalanceAddMoneyViewController_dtuConfiguration;
  *&v5[OBJC_IVAR____TtC9PassKitUI34AppleBalanceAddMoneyViewController_dtuConfiguration] = 0;
  *&v5[OBJC_IVAR____TtC9PassKitUI34AppleBalanceAddMoneyViewController_cancelItem] = 0;
  *&v5[OBJC_IVAR____TtC9PassKitUI34AppleBalanceAddMoneyViewController_account] = a1;
  v12 = objc_opt_self();
  v13 = a1;
  result = [v12 sharedInstance];
  if (result)
  {
    *&v5[OBJC_IVAR____TtC9PassKitUI34AppleBalanceAddMoneyViewController_accountService] = result;
    *&v5[OBJC_IVAR____TtC9PassKitUI34AppleBalanceAddMoneyViewController_uiManager] = a2;
    v15 = *&v5[v11];
    *&v5[v11] = a3;
    v16 = a2;
    v39 = a3;

    v17 = objc_allocWithZone(type metadata accessor for InStoreTopUpTokenModel());
    v38 = a4;
    v18 = v13;
    v19 = sub_1BD85BDFC(v18, a4);
    *&v5[OBJC_IVAR____TtC9PassKitUI34AppleBalanceAddMoneyViewController_inStoreModel] = v19;
    sub_1BD291C14();
    v20 = v19;
    v21 = v16;
    v22 = v20;
    v23 = sub_1BE04E954();
    v25 = v24;
    sub_1BE051694();
    LOBYTE(v52[0]) = 0;
    sub_1BE051694();
    *&v47 = v23;
    *(&v47 + 1) = v25;
    *&v48 = v21;
    BYTE8(v48) = v54[0];
    *&v49 = *(&v54[0] + 1);
    BYTE8(v49) = v54[0];
    v51 = 0;
    v50 = *(&v54[0] + 1);
    v26 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40248));
    type metadata accessor for ObservableHostingController();
    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v26 + *((*MEMORY[0x1E69E7D40] & *v26) + class metadata base offset for WrapperHostingController + 16)) = v27;
    v43 = v48;
    v44 = v49;
    v45 = v50;
    v46 = v51;
    v52[2] = v49;
    v52[3] = v50;
    v52[0] = v47;
    v52[1] = v48;
    *&v53 = v51;
    *(&v53 + 1) = v27;
    v41[2] = v49;
    v41[3] = v50;
    v41[4] = v53;
    v42 = v47;
    v41[0] = v47;
    v41[1] = v48;
    sub_1BD291C6C(&v47, v54);
    sub_1BE048964();
    sub_1BD291CC8(v52, v54);
    v28 = sub_1BE04F894();
    v54[2] = v44;
    v54[3] = v45;
    v54[0] = v42;
    v54[1] = v43;
    v55 = v46;
    v56 = v27;
    sub_1BD0DE53C(v54, &qword_1EBD40250);
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    *&v5[OBJC_IVAR____TtC9PassKitUI34AppleBalanceAddMoneyViewController_hostingVC] = v28;
    v40.receiver = v5;
    v40.super_class = type metadata accessor for AppleBalanceAddMoneyViewController();
    v29 = objc_msgSendSuper2(&v40, sel_initWithNibName_bundle_, 0, 0);
    v30 = OBJC_IVAR____TtC9PassKitUI34AppleBalanceAddMoneyViewController_hostingVC;
    v31 = *&v29[OBJC_IVAR____TtC9PassKitUI34AppleBalanceAddMoneyViewController_hostingVC];
    v32 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v33 = v29;
    v34 = v31;
    sub_1BE048964();
    v35 = sub_1BE04F8A4();
    v37 = *(v36 + 56);
    *(v36 + 56) = sub_1BD291D38;
    *(v36 + 64) = v32;
    sub_1BD0D4744(v37);
    v35(v41, 0);

    [v33 addChildViewController_];
    sub_1BD291D40(&v47);

    return v33;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BD2911FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v42 = v5;
    v11 = *(Strong + OBJC_IVAR____TtC9PassKitUI34AppleBalanceAddMoneyViewController_uiManager);
    v12 = *(Strong + OBJC_IVAR____TtC9PassKitUI34AppleBalanceAddMoneyViewController_dtuConfiguration);
    v13 = swift_allocObject();
    *(v13 + 16) = a1;
    *(v13 + 24) = a2;
    v14 = *&v11[OBJC_IVAR____PKAppleBalanceAddMoneyUIManager_account];
    v15 = v12;
    sub_1BE048964();
    v16 = v11;
    if (![v14 supportsTopUp])
    {
      if ([v14 supportsAMPTopUp])
      {
        sub_1BD710144(0, v10, 2uLL, 0, 0, sub_1BD214190, v13);
      }

      else
      {
        sub_1BE04D194();
        v21 = v10;
        v22 = sub_1BE04D204();
        v23 = sub_1BE052C34();

        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          v43 = v15;
          v26 = v25;
          *v24 = 138412290;
          *(v24 + 4) = v21;
          *v25 = v10;
          v27 = v21;
          _os_log_impl(&dword_1BD026000, v22, v23, "Error: tried to present direct top up without either supporting feature from presenting controller %@", v24, 0xCu);
          sub_1BD0DE53C(v26, &unk_1EBD3E590);
          v28 = v26;
          v15 = v43;
          MEMORY[0x1BFB45F20](v28, -1, -1);
          MEMORY[0x1BFB45F20](v24, -1, -1);
        }

        (v42)[1](v8, v4);
      }

      goto LABEL_12;
    }

    v43 = v15;
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = swift_allocObject();
    v18[2] = v17;
    v18[3] = sub_1BD214190;
    v18[4] = v13;
    v18[5] = 2;
    v18[6] = v10;
    v19 = OBJC_IVAR____PKAppleBalanceAddMoneyUIManager_dtuModel;
    if (*&v16[OBJC_IVAR____PKAppleBalanceAddMoneyUIManager_dtuModel])
    {
      sub_1BE048964();
      v20 = v10;
      sub_1BE048964();
      if (PKAppleBalanceDemoAccountEnabled())
      {
LABEL_5:
        sub_1BD70F0F4(v17, sub_1BD214190, v13, 2, v10);

LABEL_12:

        return;
      }
    }

    else
    {
      v29 = objc_allocWithZone(type metadata accessor for DirectTopUpModel());
      v30 = v16;
      v31 = v43;
      sub_1BE048964();
      v32 = v10;
      sub_1BE048964();
      v33 = sub_1BD7B27BC(v12, 0, v16);

      v34 = *&v16[v19];
      *&v16[v19] = v33;

      if (PKAppleBalanceDemoAccountEnabled())
      {
        goto LABEL_5;
      }
    }

    v35 = *&v16[v19];
    if (v35)
    {
      v36 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v37 = swift_allocObject();
      v37[2] = v36;
      v37[3] = v10;
      v37[4] = sub_1BD214190;
      v37[5] = v13;
      v37[6] = 2;
      v37[7] = sub_1BD291D94;
      v37[8] = v18;
      v42 = *&v35[OBJC_IVAR____TtC9PassKitUI16DirectTopUpModel_amsController];
      aBlock[4] = sub_1BD291DA4;
      aBlock[5] = v37;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD3F08C0;
      aBlock[3] = &block_descriptor_43;
      v38 = _Block_copy(aBlock);
      v39 = v10;
      sub_1BE048964();
      v40 = v35;
      sub_1BE048964();
      sub_1BE048964();
      sub_1BE048964();

      [v42 requestDTUAvailable_];
      _Block_release(v38);

      return;
    }

    goto LABEL_12;
  }
}

void sub_1BD291838()
{
  v13.receiver = v0;
  v13.super_class = type metadata accessor for AppleBalanceAddMoneyViewController();
  objc_msgSendSuper2(&v13, sel_loadView);
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = v1;
  v3 = OBJC_IVAR____TtC9PassKitUI34AppleBalanceAddMoneyViewController_hostingVC;
  v4 = [*&v0[OBJC_IVAR____TtC9PassKitUI34AppleBalanceAddMoneyViewController_hostingVC] view];
  if (!v4)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v5 = v4;
  [v2 addSubview_];

  [*&v0[v3] didMoveToParentViewController_];
  v6 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:v0 action:sel_dismissAction];
  v7 = OBJC_IVAR____TtC9PassKitUI34AppleBalanceAddMoneyViewController_cancelItem;
  v8 = *&v0[OBJC_IVAR____TtC9PassKitUI34AppleBalanceAddMoneyViewController_cancelItem];
  *&v0[OBJC_IVAR____TtC9PassKitUI34AppleBalanceAddMoneyViewController_cancelItem] = v6;

  v9 = _UISolariumFeatureFlagEnabled();
  v10 = [v0 navigationItem];
  v11 = *&v0[v7];
  v12 = &selRef_setRightBarButtonItem_;
  if (!v9)
  {
    v12 = &selRef_setLeftBarButtonItem_;
  }

  [v10 *v12];
}

id sub_1BD291B10()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppleBalanceAddMoneyViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1BD291C14()
{
  result = qword_1EBD40240;
  if (!qword_1EBD40240)
  {
    type metadata accessor for InStoreTopUpTokenModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD40240);
  }

  return result;
}

uint64_t sub_1BD291CC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40250);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *sub_1BD291DB8@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_1BD291DD4()
{
  _s31SpendingSummaryDetailsViewModelVMa(0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8);
  v1 = sub_1BD298E18(&qword_1EBD52550, MEMORY[0x1E6969530]);
  return MEMORY[0x1BFB3FC10](v0, v1);
}

uint64_t sub_1BD291E60@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8);
  v3 = sub_1BD298E18(&qword_1EBD52550, MEMORY[0x1E6969530]);
  result = MEMORY[0x1BFB3FC10](v2, v3);
  *a1 = result;
  return result;
}

uint64_t sub_1BD291EEC()
{
  swift_getKeyPath();
  sub_1BD298E18(&qword_1EBD402C0, _s9ViewModelCMa_0);
  sub_1BE04B594();

  return *(v0 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitSpendingSummariesView9ViewModel__isSetup);
}

uint64_t sub_1BD291F94@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD298E18(&qword_1EBD402C0, _s9ViewModelCMa_0);
  sub_1BE04B594();

  *a2 = *(v3 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitSpendingSummariesView9ViewModel__isSetup);
  return result;
}

uint64_t sub_1BD292044(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitSpendingSummariesView9ViewModel__isSetup) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitSpendingSummariesView9ViewModel__isSetup) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v3);
    sub_1BD298E18(&qword_1EBD402C0, _s9ViewModelCMa_0);
    sub_1BE04B584();
  }

  return result;
}

uint64_t sub_1BD29215C()
{
  swift_getKeyPath();
  sub_1BD298E18(&qword_1EBD402C0, _s9ViewModelCMa_0);
  sub_1BE04B594();

  return *(v0 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitSpendingSummariesView9ViewModel__selectedPeriod);
}

uint64_t sub_1BD292204@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD298E18(&qword_1EBD402C0, _s9ViewModelCMa_0);
  sub_1BE04B594();

  *a2 = *(v3 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitSpendingSummariesView9ViewModel__selectedPeriod);
  return result;
}

uint64_t sub_1BD2922DC(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitSpendingSummariesView9ViewModel__selectedPeriod) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v3);
    sub_1BD298E18(&qword_1EBD402C0, _s9ViewModelCMa_0);
    sub_1BE04B584();
  }

  return result;
}

uint64_t sub_1BD2923EC()
{
  swift_getKeyPath();
  sub_1BD298E18(&qword_1EBD402C0, _s9ViewModelCMa_0);
  sub_1BE04B594();

  return *(v0 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitSpendingSummariesView9ViewModel__selectedSpendingSummaryID);
}

uint64_t sub_1BD29249C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD298E18(&qword_1EBD402C0, _s9ViewModelCMa_0);
  sub_1BE04B594();

  v5 = *(v3 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitSpendingSummariesView9ViewModel__selectedSpendingSummaryID + 8);
  *a2 = *(v3 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitSpendingSummariesView9ViewModel__selectedSpendingSummaryID);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1BD29258C(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitSpendingSummariesView9ViewModel__selectedSpendingSummaryID;
  if ((*(v2 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitSpendingSummariesView9ViewModel__selectedSpendingSummaryID + 8) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *v3 != result)
    {
      goto LABEL_7;
    }

LABEL_6:
    *v3 = result;
    *(v3 + 8) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath, v5);
  sub_1BD298E18(&qword_1EBD402C0, _s9ViewModelCMa_0);
  sub_1BE04B584();
}

uint64_t sub_1BD2926CC()
{
  swift_getKeyPath();
  sub_1BD298E18(&qword_1EBD402C0, _s9ViewModelCMa_0);
  sub_1BE04B594();

  swift_beginAccess();
  return sub_1BE048C84();
}

uint64_t sub_1BD29278C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD298E18(&qword_1EBD402C0, _s9ViewModelCMa_0);
  sub_1BE04B594();

  v4 = OBJC_IVAR____TtCV9PassKitUI31FinanceKitSpendingSummariesView9ViewModel__selectedPeriodSpendingSummaries;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return sub_1BE048C84();
}

uint64_t sub_1BD292854()
{
  swift_getKeyPath();
  sub_1BD298E18(&qword_1EBD402C0, _s9ViewModelCMa_0);
  sub_1BE04B584();
}

uint64_t sub_1BD292920(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtCV9PassKitUI31FinanceKitSpendingSummariesView9ViewModel__selectedPeriodSpendingSummaries;
  swift_beginAccess();
  *(a1 + v4) = a2;
  sub_1BE048C84();
}

void (*sub_1BD292990(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtCV9PassKitUI31FinanceKitSpendingSummariesView9ViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1BD298E18(&qword_1EBD402C0, _s9ViewModelCMa_0);
  sub_1BE04B594();

  *v4 = v1;
  swift_getKeyPath();
  sub_1BE04B5B4();

  swift_beginAccess();
  return sub_1BD292AD8;
}

void sub_1BD292AD8(void **a1)
{
  v1 = *a1;
  swift_endAccess();
  *v1 = v1[3];
  swift_getKeyPath();
  sub_1BE04B5A4();

  free(v1);
}

uint64_t sub_1BD292B5C()
{
  v1[8] = v0;
  v2 = sub_1BE04D214();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  sub_1BE0528A4();
  v1[12] = sub_1BE052894();
  v4 = sub_1BE052844();
  v1[13] = v4;
  v1[14] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1BD292C50, v4, v3);
}

uint64_t sub_1BD292C50()
{
  v1 = v0[8];
  swift_getKeyPath();
  v2 = OBJC_IVAR____TtCV9PassKitUI31FinanceKitSpendingSummariesView9ViewModel___observationRegistrar;
  v0[2] = v1;
  v0[15] = v2;
  v0[16] = sub_1BD298E18(&qword_1EBD402C0, _s9ViewModelCMa_0);
  sub_1BE04B594();

  v3 = OBJC_IVAR____TtCV9PassKitUI31FinanceKitSpendingSummariesView9ViewModel__isSetup;
  v0[17] = OBJC_IVAR____TtCV9PassKitUI31FinanceKitSpendingSummariesView9ViewModel__isSetup;
  if (*(v1 + v3))
  {

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[8];
    swift_getKeyPath();
    v7 = swift_task_alloc();
    *(v7 + 16) = v6;
    *(v7 + 24) = 1;
    v0[3] = v6;
    sub_1BE04B584();

    v8 = *(v6 + 16);
    v0[18] = v8;

    return MEMORY[0x1EEE6DFA0](sub_1BD292E34, v8, 0);
  }
}

uint64_t sub_1BD292E34()
{
  sub_1BD5B81C0(v0[8], v0[18]);
  v1 = swift_task_alloc();
  v0[19] = v1;
  *v1 = v0;
  v1[1] = sub_1BD292ED0;

  return sub_1BD9FDE08();
}

uint64_t sub_1BD292ED0()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = v2[13];
    v4 = v2[14];
    v5 = sub_1BD2933A0;
  }

  else
  {
    v3 = v2[18];
    v5 = sub_1BD292FEC;
    v4 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1BD292FEC()
{
  *(v0 + 176) = sub_1BD9FBA80();
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return MEMORY[0x1EEE6DFA0](sub_1BD293054, v1, v2);
}

uint64_t sub_1BD293054()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 64);
  v3 = OBJC_IVAR____TtCV9PassKitUI31FinanceKitSpendingSummariesView9ViewModel__selectedPeriod;
  v4 = v2;
  if (*(v2 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitSpendingSummariesView9ViewModel__selectedPeriod) != v1)
  {
    swift_getKeyPath();
    v5 = swift_task_alloc();
    *(v5 + 16) = v2;
    *(v5 + 24) = v1;
    *(v0 + 40) = v2;
    sub_1BE04B584();

    v4 = *(v0 + 64);
  }

  swift_getKeyPath();
  *(v0 + 48) = v4;
  sub_1BE04B594();

  v6 = *(v2 + v3);
  swift_getKeyPath();
  *(v0 + 56) = v4;
  sub_1BE04B594();

  v7 = *(v2 + v3);
  v8 = swift_task_alloc();
  *(v0 + 168) = v8;
  *v8 = v0;
  v8[1] = sub_1BD293218;

  return sub_1BD2935D4(v6, v7);
}

uint64_t sub_1BD293218()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return MEMORY[0x1EEE6DFA0](sub_1BD293338, v3, v2);
}

uint64_t sub_1BD293338()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BD2933A0()
{
  v1 = v0[17];
  v2 = v0[8];
  if (*(v2 + v1))
  {
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v2;
    *(v3 + 24) = 0;
    v0[4] = v2;
    sub_1BE04B584();
  }

  else
  {

    *(v2 + v1) = 0;
  }

  v4 = v0[20];
  sub_1BE04D114();
  v5 = v4;
  v6 = sub_1BE04D204();
  v7 = sub_1BE052C34();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[20];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v9;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_1BD026000, v6, v7, "Failed to setup spending summaries view with error: %@.", v10, 0xCu);
    sub_1BD0DE53C(v11, &unk_1EBD3E590);
    MEMORY[0x1BFB45F20](v11, -1, -1);
    MEMORY[0x1BFB45F20](v10, -1, -1);
  }

  else
  {
  }

  (*(v0[10] + 8))(v0[11], v0[9]);

  v14 = v0[1];

  return v14();
}