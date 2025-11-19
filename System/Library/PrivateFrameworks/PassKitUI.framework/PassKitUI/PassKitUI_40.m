id sub_1BD476910@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v27[1] = a1;
  v3 = type metadata accessor for SavingsView(0);
  v27[0] = *(v3 - 8);
  v4 = *(v27[0] + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v6 = sub_1BE04BD74();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = 0;
  v37 = 0xE000000000000000;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v11 = aBlock;
  if (aBlock)
  {
    v12 = [aBlock currentBalance];

    if (v12)
    {
      if ([v12 pk_isNegativeNumber])
      {
        (*(v7 + 104))(v10, *MEMORY[0x1E69B80E0], v6);
        result = PKPassKitBundle();
        if (!result)
        {
          __break(1u);
          return result;
        }

        v14 = result;
        v15 = sub_1BE04B6F4();
        v17 = v16;

        (*(v7 + 8))(v10, v6);
        MEMORY[0x1BFB3F610](v15, v17);
      }

      else
      {
      }
    }
  }

  v18 = sub_1BE04C124();
  MEMORY[0x1BFB3F610](v18);

  sub_1BE04C124();
  v19 = MEMORY[0x1E69E7CC0];
  v35 = MEMORY[0x1E69E7CC0];
  sub_1BD47C300(v2, v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SavingsView);
  v20 = (*(v27[0] + 80) + 16) & ~*(v27[0] + 80);
  v21 = swift_allocObject();
  sub_1BD47B1C8(v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
  v22 = objc_allocWithZone(PKTextRangeHyperlink);
  v23 = sub_1BE052404();

  v32 = sub_1BD47C380;
  v33 = v21;
  aBlock = MEMORY[0x1E69E9820];
  v29 = 1107296256;
  v30 = sub_1BD126964;
  v31 = &block_descriptor_178;
  v24 = _Block_copy(&aBlock);

  v25 = [v22 initWithLinkText:v23 action:v24];
  _Block_release(v24);

  if (v25)
  {
    v26 = v25;
    MEMORY[0x1BFB3F7A0]();
    if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BE052774();
    }

    sub_1BE0527C4();

    v19 = v35;
  }

  aBlock = v19;
  v29 = 4;
  LOBYTE(v30) = 0;
  v31 = v36;
  v32 = v37;
  v33 = 0;
  v34 = 0;
  sub_1BE052434();
  sub_1BD10E4BC();
  sub_1BE050DE4();
}

void sub_1BD476DD0(int64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v153 = a2;
  v147 = a1;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46F30);
  v137 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140, v6);
  v134 = v126 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46F48);
  v141 = *(v8 - 8);
  v142 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v136 = v126 - v10;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46F28);
  MEMORY[0x1EEE9AC00](v135, v11);
  v143 = v126 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46F18);
  v144 = *(v13 - 8);
  v145 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v138 = v126 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v139 = v126 - v18;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46F08);
  MEMORY[0x1EEE9AC00](v151, v19);
  v146 = v126 - v20;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46F50);
  MEMORY[0x1EEE9AC00](v158, v21);
  v156 = (v126 - v22);
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46F58);
  MEMORY[0x1EEE9AC00](v149, v23);
  v150 = v126 - v24;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46EF8);
  MEMORY[0x1EEE9AC00](v155, v25);
  v152 = v126 - v26;
  v27 = type metadata accessor for SavingsView(0);
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27 - 8, v30);
  v31 = v126 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = v126 - v34;
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = v126 - v38;
  v40 = [objc_opt_self() sharedService];
  if (!v40)
  {
    __break(1u);
    goto LABEL_46;
  }

  v41 = v40;
  v42 = [v40 peerPaymentService];

  if (!v42)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v154 = a4;
  v43 = [v42 account];

  v44 = [objc_opt_self() sharedInstance];
  if (!v44)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v45 = v44;
  v46 = a3 & 0xFFFFFFFFFFLL;
  if (!v43 || (v47 = [v43 associatedPassUniqueID]) == 0)
  {
    v47 = 0;
  }

  v159 = v43;
  v48 = [v45 passWithUniqueID_];

  v49 = [v48 paymentPass];
  if (!(v46 >> 38))
  {
    v50 = 2;
    goto LABEL_11;
  }

  if (v46 >> 38 != 1)
  {
    if (v153 | v147 || v46 != 0x8000000000)
    {
      sub_1BD47C300(v157, v39, type metadata accessor for SavingsView);
      v93 = (*(v28 + 80) + 16) & ~*(v28 + 80);
      v94 = swift_allocObject();
      sub_1BD47B1C8(v39, v94 + v93);
      v95 = v156;
      *v156 = sub_1BD47C5BC;
      v95[1] = v94;
      swift_storeEnumTagMultiPayload();
      sub_1BD47BA38();
      sub_1BD47BCBC();
      swift_retain_n();
      sub_1BE04F9A4();

      return;
    }

    v80 = v159;
    v148 = v49;
    if (!v159 || !v49)
    {
      v96 = v146;
      (*(v144 + 56))(v146, 1, 1, v145);
LABEL_41:
      sub_1BD0DE19C(v96, v150, &qword_1EBD46F08);
      swift_storeEnumTagMultiPayload();
      sub_1BD1829A4();
      sub_1BD47BAC4();
      v125 = v152;
      sub_1BE04F9A4();
      sub_1BD0DE19C(v125, v156, &qword_1EBD46EF8);
      swift_storeEnumTagMultiPayload();
      sub_1BD47BA38();
      sub_1BD47BCBC();
      sub_1BE04F9A4();

      sub_1BD0DE53C(v125, &qword_1EBD46EF8);
      v78 = v96;
      v79 = &qword_1EBD46F08;
      goto LABEL_12;
    }

    v81 = v157;
    v147 = v157[1];
    KeyPath = swift_getKeyPath();
    swift_getKeyPath();
    v82 = v80;
    v83 = v49;
    v153 = v82;
    v132 = v83;
    sub_1BE04D8B4();

    v84 = v175;
    sub_1BD47C300(v81, v35, type metadata accessor for SavingsView);
    v85 = *(v28 + 80);
    v86 = ((v85 + 16) & ~v85);
    v130 = swift_allocObject();
    sub_1BD47B1C8(v35, &v86[v130]);
    sub_1BD47C300(v81, v31, type metadata accessor for SavingsView);
    KeyPath = v85;
    v131 = &v86[v29];
    v87 = swift_allocObject();
    v147 = v86;
    sub_1BD47B1C8(v31, &v86[v87]);
    v88 = v84;
    v89 = v153;
    v90 = [v153 currentBalance];
    if (v90)
    {
      v91 = v90;
      v92 = [v90 amount];

      if (!v92)
      {

        goto LABEL_25;
      }

      v175 = 0uLL;
      LODWORD(v176) = 0;
      BYTE4(v176) = 1;
      sub_1BE0533E4();

      if (BYTE4(v176))
      {

LABEL_38:
        v97 = 0;
        v92 = 0;
        goto LABEL_39;
      }

      v98 = *(&v175 + 1);
      v129 = v176;
      v99 = [v89 currentBalance];
      if (v99)
      {
        v100 = v99;
        v101 = [v99 currency];

        if (!v101)
        {

          v97 = 0;
          v92 = 0;
LABEL_40:
          v108 = v132;
          *&v167 = v132;
          *(&v167 + 1) = v89;
          v109 = v89;
          *&v168 = v88;
          *(&v168 + 1) = sub_1BD47BD88;
          *&v169 = v130;
          *(&v169 + 1) = sub_1BD47BDA0;
          *&v170 = v87;
          BYTE8(v170) = v97;
          *&v171 = v92;
          *(&v171 + 1) = v101;
          v110 = v157;
          sub_1BD479058();
          v111 = sub_1BD47BC68();
          v112 = v134;
          sub_1BE050D04();

          v177 = v169;
          v178 = v170;
          v179 = v171;
          v175 = v167;
          v176 = v168;
          sub_1BD47BDA4(&v175);
          *&v167 = &type metadata for PostApplyAppleCashTransferView;
          *(&v167 + 1) = v111;
          swift_getOpaqueTypeConformance2();
          v113 = v136;
          v114 = v140;
          sub_1BE050E44();

          (*(v137 + 8))(v112, v114);
          sub_1BD47C300(v110, v39, type metadata accessor for SavingsView);
          v115 = swift_allocObject();
          v116 = v147;
          sub_1BD47B1C8(v39, v115 + v147);
          v117 = v143;
          (*(v141 + 4))(v143, v113, v142);
          v118 = (v117 + *(v135 + 36));
          *v118 = sub_1BD47BDF8;
          v118[1] = v115;
          v118[2] = 0;
          v118[3] = 0;
          sub_1BD47C300(v110, v39, type metadata accessor for SavingsView);
          v119 = swift_allocObject();
          sub_1BD47B1C8(v39, v119 + v116);
          v120 = v138;
          sub_1BD0DE204(v117, v138, &qword_1EBD46F28);
          v121 = v145;
          v122 = (v120 + *(v145 + 36));
          *v122 = 0;
          v122[1] = 0;
          v122[2] = sub_1BD47BE10;
          v122[3] = v119;
          v123 = v120;
          v124 = v139;
          sub_1BD0DE204(v123, v139, &qword_1EBD46F18);
          v96 = v146;
          sub_1BD0DE204(v124, v146, &qword_1EBD46F18);
          (*(v144 + 56))(v96, 0, 1, v121);
          goto LABEL_41;
        }

        v102 = [v88 oneTimeDepositWithAppleCashFeatureDescriptor];

        if (!v102)
        {
          goto LABEL_37;
        }

        v128 = v98;
        v92 = [v102 maximumAmount];
        if (v92)
        {
          v167 = 0uLL;
          LODWORD(v168) = 0;
          BYTE4(v168) = 1;
          sub_1BE0533E4();

          if ((BYTE4(v168) & 1) == 0)
          {
            v127 = *(&v167 + 1);
            v126[1] = v168;
            if (MEMORY[0x1BFB403F0](v167))
            {
              v103 = sub_1BE053344();
              v104 = PKCurrencyAmountMake();

              if (v104)
              {
                v92 = [v104 formattedStringValue];

                if (v92)
                {
                  v105 = sub_1BE052434();
                  v106 = v92;
                  v92 = v105;
                  v101 = v107;
                }

                else
                {

                  v101 = 0;
                }

                v97 = 1;
                goto LABEL_40;
              }

LABEL_50:
              __break(1u);
              return;
            }
          }

LABEL_37:
          goto LABEL_38;
        }

LABEL_25:
        v97 = 0;
LABEL_39:
        v101 = 0;
        goto LABEL_40;
      }

LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v50 = 3;
LABEL_11:
  v153 = v50;
  v51 = v157[1];
  sub_1BD47C300(v157, v39, type metadata accessor for SavingsView);
  v52 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v146 = swift_allocObject();
  sub_1BD47B1C8(v39, v146 + v52);
  v164 = 0;
  *&v167 = MEMORY[0x1E69E7CC0];
  v157 = v159;
  v147 = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AE40);
  sub_1BE051694();
  v145 = *(&v175 + 1);
  v53 = v175;
  *&v167 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AE48);
  sub_1BE051694();
  v54 = *(&v175 + 1);
  v144 = v175;
  type metadata accessor for AccountModel();
  sub_1BD47AD44(&qword_1EBD3AE50, type metadata accessor for AccountModel);
  v55 = v51;
  v56 = sub_1BE04E954();
  v142 = v57;
  v143 = v56;
  v58 = v57;
  *&v175 = MEMORY[0x1BFB403C0](0);
  *(&v175 + 1) = v59;
  LODWORD(v176) = v60;
  type metadata accessor for Decimal(0);
  sub_1BE051694();
  v160 = v165;
  v161 = v166;
  type metadata accessor for AccountScheduleTransferModel();
  v61 = swift_allocObject();
  v62 = v49;
  v148 = v49;
  v63 = v61;
  v64 = [objc_opt_self() sharedService];
  v63[5] = 0;
  v63[6] = 0;
  v63[4] = v64;
  swift_beginAccess();
  v65 = v55;
  v63[2] = sub_1BE04E954();
  v63[3] = v66;
  swift_endAccess();
  *&v175 = v56;
  *(&v175 + 1) = v58;
  v141 = sub_1BD571878;
  *&v176 = sub_1BD571878;
  *(&v176 + 1) = 0;
  LODWORD(v140) = v164;
  LOBYTE(v177) = v164;
  *(&v177 + 1) = *v163;
  DWORD1(v177) = *&v163[3];
  *(&v177 + 1) = v63;
  *&v178 = v153;
  v67 = v159;
  *(&v178 + 1) = v159;
  *&v179 = v62;
  v68 = v145;
  v69 = v146;
  *(&v179 + 1) = sub_1BD47C5BC;
  v180 = v146;
  v182 = v161;
  v181 = v160;
  v183 = v53;
  v184 = v145;
  v70 = v144;
  *&v185 = v144;
  *(&v185 + 1) = v54;
  sub_1BD572D70();
  v167 = v185;
  v162 = v71;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AE60);
  sub_1BE0516B4();
  *&v167 = v143;
  *(&v167 + 1) = v142;
  v168 = v141;
  LOBYTE(v169) = v140;
  *(&v169 + 1) = *v163;
  DWORD1(v169) = *&v163[3];
  *(&v169 + 1) = v63;
  *&v170 = v153;
  *(&v170 + 1) = v67;
  *&v171 = v148;
  *(&v171 + 1) = sub_1BD47C5BC;
  *&v172[0] = v69;
  *(&v172[1] + 8) = v161;
  *(v172 + 8) = v160;
  *(&v172[2] + 1) = v53;
  *&v173 = v68;
  *(&v173 + 1) = v70;
  v174 = v54;
  v72 = v172[2];
  v73 = v150;
  *(v150 + 96) = v172[1];
  *(v73 + 112) = v72;
  *(v73 + 128) = v173;
  *(v73 + 144) = v54;
  v74 = v170;
  *(v73 + 32) = v169;
  *(v73 + 48) = v74;
  v75 = v172[0];
  *(v73 + 64) = v171;
  *(v73 + 80) = v75;
  v76 = v168;
  *v73 = v167;
  *(v73 + 16) = v76;
  swift_storeEnumTagMultiPayload();
  sub_1BD182A34(&v167, &v160);
  sub_1BD1829A4();
  sub_1BD47BAC4();
  v77 = v152;
  sub_1BE04F9A4();
  sub_1BD0DE19C(v77, v156, &qword_1EBD46EF8);
  swift_storeEnumTagMultiPayload();
  sub_1BD47BA38();
  sub_1BD47BCBC();
  sub_1BE04F9A4();

  sub_1BD182A90(&v167);
  v78 = v77;
  v79 = &qword_1EBD46EF8;
LABEL_12:
  sub_1BD0DE53C(v78, v79);
}

uint64_t sub_1BD477F60(uint64_t a1)
{
  v2 = sub_1BE04D214();
  v50 = *(v2 - 8);
  v51 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v40 - v8;
  v10 = sub_1BE051F54();
  v47 = *(v10 - 8);
  v48 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v45 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1BE051FA4();
  v44 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46, v13);
  v43 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SavingsView(0);
  v41 = *(v15 - 8);
  v16 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v49 = sub_1BE051FC4();
  v42 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49, v18);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v40 - v23;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if (LOBYTE(aBlock[0]) == 1)
  {
    sub_1BD47860C();
    if (v25)
    {

      sub_1BD0E5E8C(0, &qword_1EBD35E90);
      v26 = sub_1BE052D54();
      sub_1BE051FB4();
      sub_1BE051FF4();
      v51 = *(v42 + 8);
      v51(v20, v49);
      sub_1BD47C300(a1, &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SavingsView);
      v27 = (*(v41 + 80) + 16) & ~*(v41 + 80);
      v28 = swift_allocObject();
      sub_1BD47B1C8(&v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27);
      aBlock[4] = sub_1BD47BD28;
      aBlock[5] = v28;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD126964;
      aBlock[3] = &block_descriptor_74;
      v29 = _Block_copy(aBlock);

      v30 = v43;
      sub_1BE051F74();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1BD47AD44(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
      sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0);
      v31 = v45;
      v32 = v48;
      sub_1BE053664();
      MEMORY[0x1BFB3FD90](v24, v30, v31, v29);
      _Block_release(v29);

      (*(v47 + 8))(v31, v32);
      (*(v44 + 8))(v30, v46);
      return (v51)(v24, v49);
    }

    else
    {
      sub_1BE04D194();
      v37 = sub_1BE04D204();
      v38 = sub_1BE052C54();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_1BD026000, v37, v38, "Skipping postApplyTransfer: Payment request not available.", v39, 2u);
        MEMORY[0x1BFB45F20](v39, -1, -1);
      }

      return (*(v50 + 8))(v9, v51);
    }
  }

  else
  {
    sub_1BE04D194();
    v34 = sub_1BE04D204();
    v35 = sub_1BE052C54();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_1BD026000, v34, v35, "Not showing postApplyTransfer. Account is not new", v36, 2u);
      MEMORY[0x1BFB45F20](v36, -1, -1);
    }

    return (*(v50 + 8))(v5, v51);
  }
}

void sub_1BD47860C()
{
  v0 = sub_1BE04D214();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v41 - v7;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v41 - v11;
  sub_1BD479528();
  if (!v13)
  {
    return;
  }

  v14 = v13;
  v15 = [objc_opt_self() sharedService];
  if (!v15)
  {
    __break(1u);
    goto LABEL_25;
  }

  v16 = v15;
  v17 = [v15 peerPaymentService];

  if (!v17)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v18 = [v17 account];

  if (v18)
  {
    v19 = [objc_opt_self() sharedInstance];
    if (v19)
    {
      v20 = v19;
      v21 = [v18 associatedPassUniqueID];
      v22 = [v20 passWithUniqueID_];

      v23 = [v22 paymentPass];
      v24 = v18;
      if (PKPeerPaymentCanPerformAccountServicePayments())
      {
        swift_getKeyPath();
        swift_getKeyPath();
        sub_1BE04D8B4();

        v25 = v41[1];
        v26 = objc_allocWithZone(MEMORY[0x1E69B8410]);
        sub_1BD0E5E8C(0, &qword_1EBD4E090);
        v27 = v14;
        v28 = v23;
        v29 = sub_1BE052724();
        v30 = [v26 initWithAccount:v25 peerPaymentAccount:v24 peerPaymentPass:v28 transferType:2 fundingSources:v29 currencyAmount:v27];

        if (v30 && (v31 = v30, ![v30 accountPaymentSupportsPeerPayment]))
        {
          sub_1BE04D194();
          v38 = sub_1BE04D204();
          v39 = sub_1BE052C34();
          if (os_log_type_enabled(v38, v39))
          {
            v40 = swift_slowAlloc();
            *v40 = 0;
            _os_log_impl(&dword_1BD026000, v38, v39, "PaymentRequest failed. Peer payment not supported", v40, 2u);
            MEMORY[0x1BFB45F20](v40, -1, -1);
          }

          else
          {
          }

          (*(v1 + 8))(v12, v0);
        }

        else
        {
        }
      }

      else
      {

        sub_1BE04D194();
        v35 = sub_1BE04D204();
        v36 = sub_1BE052C34();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          *v37 = 0;
          _os_log_impl(&dword_1BD026000, v35, v36, "PaymentRequest failed. Peer payment cannot perform", v37, 2u);
          MEMORY[0x1BFB45F20](v37, -1, -1);
        }

        else
        {
        }

        (*(v1 + 8))(v8, v0);
      }

      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  sub_1BE04D194();
  v32 = sub_1BE04D204();
  v33 = sub_1BE052C34();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_1BD026000, v32, v33, "PaymentRequest failed. Peer payment account is nil", v34, 2u);
    MEMORY[0x1BFB45F20](v34, -1, -1);
  }

  else
  {
  }

  (*(v1 + 8))(v4, v0);
}

uint64_t sub_1BD478B90()
{
  type metadata accessor for SavingsView(0);
  type metadata accessor for FCCStepUpModel(0);
  sub_1BD47AD44(&qword_1EBD46E28, type metadata accessor for FCCStepUpModel);
  sub_1BE04E3C4();
  swift_getKeyPath();
  swift_getKeyPath();
  return sub_1BE04D8C4();
}

void sub_1BD478C94(uint64_t a1)
{
  v2 = [objc_allocWithZone(PKAccountLegalDisclosureViewController) initWithFeature_];
  v3 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];
  if (*(a1 + *(type metadata accessor for SavingsView(0) + 40)))
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      [Strong presentViewController:v3 animated:1 completion:0];
    }
  }

  else
  {
    type metadata accessor for ObservableHostingController();
    sub_1BD47AD44(&qword_1EBD3B1A0, type metadata accessor for ObservableHostingController);
    sub_1BE04EEB4();
    __break(1u);
  }
}

uint64_t sub_1BD478DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1BD4735C4(a2, a3, a4 & 0xFFFFFFFFFFLL);
  type metadata accessor for SavingsView(0);
  type metadata accessor for SavingsActionSheetObserver(0);
  sub_1BD47AD44(&qword_1EBD3AE00, type metadata accessor for SavingsActionSheetObserver);
  *(sub_1BE04E3C4() + OBJC_IVAR____TtC9PassKitUI26SavingsActionSheetObserver_hasPresentedSheetOnAppear) = 1;
}

uint64_t sub_1BD478E8C(uint64_t a1)
{
  v2 = sub_1BE050144();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for SavingsView(0);
  type metadata accessor for SavingsActionSheetObserver(0);
  sub_1BD47AD44(&qword_1EBD3AE00, type metadata accessor for SavingsActionSheetObserver);
  sub_1BE04E3C4();
  swift_getKeyPath();
  swift_getKeyPath();
  v10 = 0;
  v11 = 0;
  v13 = -2;
  v12 = 0;
  sub_1BE04D8C4();
  sub_1BD1DEDD4();
  sub_1BD70A4F8(v6);
  v9 = a1;
  sub_1BE050134();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1BD479058()
{
  v0 = sub_1BE04EB24();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SavingsView(0);
  sub_1BD70A2A0(v4);
  v5 = sub_1BE04EB14();
  (*(v1 + 8))(v4, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46F60);
  v6 = sub_1BE04F674();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1BE0B69E0;
  if (v5)
  {
    sub_1BE04F654();
  }

  else
  {
    PKSavingsFDICSignageEnabled();
    sub_1BE04F664();
  }

  v10 = sub_1BD11253C(v9);
  swift_setDeallocating();
  (*(v7 + 8))(v9 + v8, v6);
  swift_deallocClassInstance();
  return v10;
}

id sub_1BD47924C(uint64_t a1)
{
  sub_1BD47860C();
  if (v2)
  {
    v3 = v2;
    sub_1BD85A4D8(v2);
  }

  v4 = *(a1 + 32);
  result = *(v4 + 32);
  if (result)
  {
    result = [result targetDevice];
    if (result)
    {
      v6 = result;
      if ([result respondsToSelector_] && (objc_msgSend(v6, sel_respondsToSelector_, sel_paymentWebService_deviceMetadataWithFields_completion_) & 1) != 0)
      {
        v7 = *(v4 + 32);
        v9[4] = PKEdgeInsetsMake;
        v9[5] = 0;
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 1107296256;
        v9[2] = sub_1BD20815C;
        v9[3] = &block_descriptor_101_1;
        v8 = _Block_copy(v9);
        swift_unknownObjectRetain();

        [v6 paymentWebService:v7 deviceMetadataWithFields:128 completion:v8];
        _Block_release(v8);
        return swift_unknownObjectRelease_n();
      }

      else
      {

        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_1BD4793C8(uint64_t a1)
{
  v1 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return sub_1BE04D8C4();
}

void sub_1BD479434()
{
  type metadata accessor for SavingsView(0);
  type metadata accessor for SavingsActionSheetObserver(0);
  sub_1BD47AD44(&qword_1EBD3AE00, type metadata accessor for SavingsActionSheetObserver);
  sub_1BE04E3C4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8C4();
  sub_1BD1DEDD4();
}

void sub_1BD479528()
{
  v0 = sub_1BE04D214();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v56[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v56[-v7];
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v56[-v11];
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v56[-v15];
  v17 = [objc_opt_self() sharedService];
  if (!v17)
  {
    __break(1u);
    goto LABEL_48;
  }

  v18 = v17;
  v19 = [v17 peerPaymentService];

  if (!v19)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v20 = [v19 account];

  if (v20)
  {
    v21 = [v20 currentBalance];
    if (v21)
    {
      v22 = v21;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BE04D8B4();

      v23 = v59;
      v24 = [v59 oneTimeDepositWithAppleCashFeatureDescriptor];

      if (!v24)
      {
        goto LABEL_25;
      }

      v25 = [v22 amount];
      if (!v25)
      {
        goto LABEL_24;
      }

      v59 = 0;
      v60 = 0;
      v61 = 0;
      v62 = 1;
      v26 = v25;
      sub_1BE0533E4();

      if (v62 == 1)
      {
        goto LABEL_24;
      }

      v27 = v59;
      v58 = v60;
      v57 = v61;
      v24 = v24;
      v28 = [v24 minimumAmount];
      if (v28)
      {
        v29 = v28;
        v59 = 0;
        v60 = 0;
        v61 = 0;
        v62 = 1;
        sub_1BE0533E4();

        if (v62 != 1 && (MEMORY[0x1BFB403F0](v27, v58, v57, v59, v60, v61) & 1) != 0)
        {

          sub_1BE04D194();
          v30 = sub_1BE04D204();
          v31 = sub_1BE052C34();
          if (os_log_type_enabled(v30, v31))
          {
            v32 = swift_slowAlloc();
            *v32 = 0;
            _os_log_impl(&dword_1BD026000, v30, v31, "PaymentRequest failed. Peer payment balance is below minimum", v32, 2u);
            MEMORY[0x1BFB45F20](v32, -1, -1);
          }

          else
          {
          }

          (*(v1 + 8))(v16, v0);
          return;
        }
      }

      v39 = [v24 maximumAmount];

      if (!v39 || (v59 = 0, v60 = 0, v61 = 0, v62 = 1, sub_1BE0533E4(), v39, v62 == 1) || (MEMORY[0x1BFB403F0](v59, v60, v61, v27, v58, v57) & 1) == 0)
      {
LABEL_24:

LABEL_25:
        v43 = [v22 currency];
        if (v43)
        {
          v44 = v43;
          v45 = sub_1BE052434();
          v47 = v46;
        }

        else
        {
          v45 = 0;
          v47 = 0;
        }

        swift_getKeyPath();
        swift_getKeyPath();
        sub_1BE04D8B4();

        v48 = v59;
        if (v59)
        {
          v49 = [v59 currencyCode];

          if (v49)
          {
            v50 = sub_1BE052434();
            v48 = v51;

            if (!v47)
            {
LABEL_38:
              if (v48)
              {
                goto LABEL_39;
              }

              goto LABEL_44;
            }
          }

          else
          {
            v50 = 0;
            v48 = 0;
            if (!v47)
            {
              goto LABEL_38;
            }
          }
        }

        else
        {
          v50 = 0;
          if (!v47)
          {
            goto LABEL_38;
          }
        }

        if (!v48)
        {
LABEL_39:

LABEL_40:
          sub_1BE04D194();
          v52 = sub_1BE04D204();
          v53 = sub_1BE052C34();
          if (os_log_type_enabled(v52, v53))
          {
            v54 = swift_slowAlloc();
            *v54 = 0;
            _os_log_impl(&dword_1BD026000, v52, v53, "PaymentRequest failed. Currency codes do not match", v54, 2u);
            MEMORY[0x1BFB45F20](v54, -1, -1);
          }

          (*(v1 + 8))(v12, v0);
          return;
        }

        if (v45 == v50 && v47 == v48)
        {

          return;
        }

        v55 = sub_1BE053B84();

        if ((v55 & 1) == 0)
        {
          goto LABEL_40;
        }

LABEL_44:

        return;
      }

      v40 = sub_1BE053344();
      v41 = [v22 currency];
      v42 = PKCurrencyAmountMake();

      if (v42)
      {

        v22 = v42;
        goto LABEL_25;
      }

LABEL_49:
      __break(1u);
      return;
    }

    sub_1BE04D194();
    v36 = sub_1BE04D204();
    v37 = sub_1BE052C34();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_1BD026000, v36, v37, "PaymentRequest failed. Peer payment currentBalance is nil", v38, 2u);
      MEMORY[0x1BFB45F20](v38, -1, -1);
    }

    (*(v1 + 8))(v8, v0);
  }

  else
  {
    sub_1BE04D194();
    v33 = sub_1BE04D204();
    v34 = sub_1BE052C34();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_1BD026000, v33, v34, "PaymentRequest failed. Peer payment account is nil", v35, 2u);
      MEMORY[0x1BFB45F20](v35, -1, -1);
    }

    (*(v1 + 8))(v4, v0);
  }
}

void sub_1BD479C90(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for SavingsView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v7);
  v8 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v53 - v11;
  sub_1BD47860C();
  v13 = *(a2 + 32);
  v54 = *(a2 + 8);
  v55 = v13;
  v59 = v14;
  if (a1)
  {
    v15 = [a1 view];
    if (!v15)
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v16 = v15;
    v56 = [v15 window];
  }

  else
  {
    v56 = 0;
  }

  sub_1BD47C300(a2, v12, type metadata accessor for SavingsView);
  v17 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v58 = swift_allocObject();
  sub_1BD47B1C8(v12, v58 + v17);
  v53 = a2;
  sub_1BD47C300(a2, v8, type metadata accessor for SavingsView);
  v57 = swift_allocObject();
  sub_1BD47B1C8(v8, v57 + v17);
  v18 = type metadata accessor for AccountTransferAuthorizationController();
  v19 = objc_allocWithZone(v18);
  v20 = OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_paymentWebService;
  *&v19[v20] = [objc_opt_self() sharedService];
  v21 = OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_scheduleTransferRequest;
  *&v19[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_scheduleTransferRequest] = 0;
  v19[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_authorized] = 0;
  v19[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_presentFraudStepUp] = 0;
  v19[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_hasReceivedTransaction] = 0;
  v19[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_hasReceivedAccountUpdate] = 0;
  *&v19[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_waitingForData] = 0;
  v22 = OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_accountService;
  *&v19[v22] = [objc_opt_self() sharedInstance];
  v23 = OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_dismissalTimer;
  *&v19[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_dismissalTimer] = 3;
  v24 = *MEMORY[0x1E69E7F48];
  v25 = sub_1BE051F44();
  v26 = *(v25 - 8);
  (*(v26 + 104))(&v19[v23], v24, v25);
  *&v19[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_pastUpdateLeeway] = 0x4024000000000000;
  v27 = v59;
  if (v59)
  {
    v28 = v18;
    *&v19[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_paymentRequest] = v59;
    v30 = v54;
    v29 = v55;
    *&v19[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_accountModel] = v54;
    *&v19[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_scheduleTransferModel] = v29;
    v31 = objc_allocWithZone(PKPaymentAuthorizationController);
    v32 = v27;
    v33 = v31;
    v34 = v32;
    v35 = v30;
    sub_1BE048964();
    v36 = [v33 initWithPaymentRequest_];
    *&v19[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_paymentAuthorizationController] = v36;
    v37 = v56;
    v38 = v57;
    *&v19[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_window] = v56;
    v39 = &v19[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_stepUpAction];
    v40 = v58;
    *v39 = sub_1BD47BE30;
    v39[1] = v40;
    v41 = &v19[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_dismissAction];
    *v41 = sub_1BD47BEB4;
    v41[1] = v38;
    v42 = &v19[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_transferDidFinish];
    *v42 = 0;
    v42[1] = 0;
    swift_getKeyPath();
    swift_getKeyPath();
    v43 = v37;
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE04D8B4();

    v44 = v61;
    v45 = [objc_allocWithZone(MEMORY[0x1E69B92F8]) initWithAccount_];

    v46 = [objc_allocWithZone(MEMORY[0x1E69B9300]) initWithTransactionSource_];
    v47 = [objc_allocWithZone(MEMORY[0x1E69B8BD8]) init];
    v48 = [objc_allocWithZone(MEMORY[0x1E69B8788]) initWithTransactionSourceCollection:v46 paymentDataProvider:v47];

    if (v48)
    {
      *&v19[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_transactionFetcher] = v48;
      v62.receiver = v19;
      v62.super_class = v28;
      v49 = objc_msgSendSuper2(&v62, sel_init);
      v50 = OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_paymentAuthorizationController;
      v51 = *&v49[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_paymentAuthorizationController];
      v52 = v49;
      [v51 setDelegate_];
      [*&v49[v50] setPrivateDelegate_];

      [*&v49[v50] presentWithCompletion_];
      v61 = *(v53 + 48);
      v60 = v49;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46F68);
      sub_1BE0516B4();
      return;
    }

    goto LABEL_11;
  }

  swift_unknownObjectRelease();
  (*(v26 + 8))(&v19[v23], v25);
  swift_deallocPartialClassInstance();
}

uint64_t sub_1BD47A2D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8, a2);
  sub_1BD47273C(a3);
  sub_1BD47C300(v3, &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SavingsView);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_1BD47B1C8(&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  v9 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46E48) + 36));
  *v9 = sub_1BD47B22C;
  v9[1] = v8;
  v9[2] = 0;
  v9[3] = 0;
  sub_1BD47C300(v3, &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SavingsView);
  v10 = swift_allocObject();
  sub_1BD47B1C8(&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v7);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46E50);
  v12 = (a3 + *(result + 36));
  *v12 = 0;
  v12[1] = 0;
  v12[2] = sub_1BD47B474;
  v12[3] = v10;
  return result;
}

uint64_t sub_1BD47A470(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 & 0xFFFFFFFFFFLL;
  v5 = (a4 >> 38) & 3;
  if (!v5)
  {
    MEMORY[0x1BFB40DA0](0);
    if ((v4 & 0x100000000) == 0)
    {
      goto LABEL_4;
    }

    return sub_1BE053D24();
  }

  if (v5 == 1)
  {
    MEMORY[0x1BFB40DA0](1);
    if ((v4 & 0x100000000) == 0)
    {
LABEL_4:
      sub_1BE053D24();

      return sub_1BE053404();
    }

    return sub_1BE053D24();
  }

  if (a3 | a2 || v4 != 0x8000000000)
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  return MEMORY[0x1BFB40DA0](v7);
}

uint64_t sub_1BD47A544()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  return v1;
}

__n128 sub_1BD47A5C4@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u32[0];
  v3 = v1[1].n128_u8[4];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u8[4] = v3;
  a1[1].n128_u32[0] = v2;
  return result;
}

uint64_t sub_1BD47A5E0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16) | (*(v0 + 20) << 32);
  sub_1BE053D04();
  sub_1BD47A470(v5, v1, v2, v3);
  return sub_1BE053D64();
}

uint64_t sub_1BD47A658()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16) | (*(v0 + 20) << 32);
  sub_1BE053D04();
  sub_1BD47A470(v5, v1, v2, v3);
  return sub_1BE053D64();
}

uint64_t sub_1BD47A6E4()
{
  v1 = OBJC_IVAR____TtC9PassKitUI26SavingsActionSheetObserver__presentedSheet;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47110);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_1BD47A7B4()
{
  sub_1BD47AEB4(319, &qword_1EBD46DE0, qword_1EBD3B488, &unk_1BE0BC5B0, MEMORY[0x1E695C070]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

__n128 __swift_memcpy21_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SavingsActionSheet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 21))
  {
    return (*a1 + 126);
  }

  v3 = ((*(a1 + 20) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 20) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for SavingsActionSheet(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 - 126;
    *(result + 8) = 0;
    if (a3 >= 0x7E)
    {
      *(result + 21) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 21) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 20) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_1BD47A93C(uint64_t a1)
{
  v1 = *(a1 + 20) >> 6;
  if (v1 <= 1)
  {
    return v1;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1BD47A958(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = a1 + 16;
  v3 = v2 | (*(result + 4) << 32);
  *result = v2;
  *(result + 4) = BYTE4(v3) & 0x3F;
  return result;
}

uint64_t sub_1BD47A974(uint64_t result, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = *(result + 16);
    result += 16;
    v3 = (v2 | (*(result + 4) << 32)) & 0x1FFFFFFFFLL | (a2 << 38);
    *result = v2;
    *(result + 4) = BYTE4(v3);
  }

  else
  {
    *result = (a2 - 2);
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 20) = 0x80;
  }

  return result;
}

void sub_1BD47AA0C()
{
  sub_1BD2D63D4();
  if (v0 <= 0x3F)
  {
    sub_1BD47ACB0();
    if (v1 <= 0x3F)
    {
      type metadata accessor for AccountScheduleTransferModel();
      if (v2 <= 0x3F)
      {
        sub_1BE04BF14();
        if (v3 <= 0x3F)
        {
          sub_1BD47AEB4(319, &qword_1EBD46E08, &qword_1EBD3BD40, &unk_1BE0F6A10, MEMORY[0x1E6981790]);
          if (v4 <= 0x3F)
          {
            sub_1BD47AF18(319, &qword_1EBD46E10, MEMORY[0x1E697CC88], MEMORY[0x1E697DCC0]);
            if (v5 <= 0x3F)
            {
              sub_1BD3C9D6C();
              if (v6 <= 0x3F)
              {
                type metadata accessor for TransactionList();
                if (v7 <= 0x3F)
                {
                  type metadata accessor for AccountBalanceHistory(319);
                  if (v8 <= 0x3F)
                  {
                    type metadata accessor for AccountDailyCash();
                    if (v9 <= 0x3F)
                    {
                      sub_1BD47AD8C();
                      if (v10 <= 0x3F)
                      {
                        sub_1BD47AE20();
                        if (v11 <= 0x3F)
                        {
                          sub_1BD47AF18(319, &qword_1EBD38900, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
                          if (v12 <= 0x3F)
                          {
                            sub_1BD47AEB4(319, &qword_1EBD39020, &qword_1EBD579E0, "0^\r", MEMORY[0x1E69E6720]);
                            if (v13 <= 0x3F)
                            {
                              sub_1BD47AF18(319, &qword_1EBD46E30, type metadata accessor for PKAccountDestination, MEMORY[0x1E69E6720]);
                              if (v14 <= 0x3F)
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

void sub_1BD47ACB0()
{
  if (!qword_1EBD46E00)
  {
    type metadata accessor for SavingsDashboardMessageSource(255);
    sub_1BD47AD44(&qword_1EBD3BD50, type metadata accessor for SavingsDashboardMessageSource);
    v0 = sub_1BE04E984();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD46E00);
    }
  }
}

uint64_t sub_1BD47AD44(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1BD47AD8C()
{
  if (!qword_1EBD46E18)
  {
    type metadata accessor for SavingsActionSheetObserver(255);
    sub_1BD47AD44(&qword_1EBD3AE00, type metadata accessor for SavingsActionSheetObserver);
    v0 = sub_1BE04E3E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD46E18);
    }
  }
}

void sub_1BD47AE20()
{
  if (!qword_1EBD46E20)
  {
    type metadata accessor for FCCStepUpModel(255);
    sub_1BD47AD44(&qword_1EBD46E28, type metadata accessor for FCCStepUpModel);
    v0 = sub_1BE04E3E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD46E20);
    }
  }
}

void sub_1BD47AEB4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_1BD47AF18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1BD47AF9C()
{
  result = qword_1EBD46E38;
  if (!qword_1EBD46E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46E38);
  }

  return result;
}

unint64_t sub_1BD47AFF4()
{
  result = qword_1EBD46E40;
  if (!qword_1EBD46E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46E40);
  }

  return result;
}

uint64_t sub_1BD47B048@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SavingsActionSheetObserver(0);
  result = sub_1BE04D814();
  *a1 = result;
  return result;
}

BOOL sub_1BD47B100(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a6 & 0xFFFFFFFFFFLL;
  v7 = (a3 >> 38) & 3;
  if (!v7)
  {
    if (v6 >> 38)
    {
      return 0;
    }

    if ((a3 & 0x100000000) == 0)
    {
      return (a6 & 0x100000000) == 0 && (MEMORY[0x1BFB40440]() & 1) != 0;
    }

    return (a6 & 0x100000000) != 0;
  }

  if (v7 == 1)
  {
    if ((a6 & 0xC000000000) != 0x4000000000)
    {
      return 0;
    }

    if ((a3 & 0x100000000) == 0)
    {
      return (a6 & 0x100000000) == 0 && (MEMORY[0x1BFB40440]() & 1) != 0;
    }

    return (a6 & 0x100000000) != 0;
  }

  if (a2 | a1 || (a3 & 0xFFFFFFFFFFLL) != 0x8000000000)
  {
    if ((a6 & 0xC000000000) != 0x8000000000 || a4 != 1 || a5)
    {
      return 0;
    }
  }

  else if ((a6 & 0xC000000000) != 0x8000000000 || a5 | a4)
  {
    return 0;
  }

  return v6 == 0x8000000000;
}

uint64_t sub_1BD47B1C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SavingsView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_45()
{
  v1 = type metadata accessor for SavingsView(0);
  v2 = (v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80)));

  v3 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BD48);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1BE050144();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  sub_1BD0D45CC();
  sub_1BD0D45CC();
  v5 = v1[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38880);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1BE04EB24();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  if (*(v2 + v1[17]))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD47B48C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for SavingsView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1BD47B57C()
{
  v1 = *(type metadata accessor for SavingsView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16) | (*(v3 + 20) << 32);

  return sub_1BD478DC0(v0 + v2, v4, v5, v6);
}

unint64_t sub_1BD47B620()
{
  result = qword_1EBD46E90;
  if (!qword_1EBD46E90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46E58);
    sub_1BD47B6D8();
    sub_1BD0DE4F4(&qword_1EBD3A8B0, &qword_1EBD3A8B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46E90);
  }

  return result;
}

unint64_t sub_1BD47B6D8()
{
  result = qword_1EBD46E98;
  if (!qword_1EBD46E98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46E88);
    sub_1BD47B790();
    sub_1BD0DE4F4(&qword_1EBD3A8A0, &qword_1EBD3A8A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46E98);
  }

  return result;
}

unint64_t sub_1BD47B790()
{
  result = qword_1EBD46EA0;
  if (!qword_1EBD46EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46E80);
    sub_1BD47B848();
    sub_1BD0DE4F4(&qword_1EBD46ED0, &qword_1EBD46ED8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46EA0);
  }

  return result;
}

unint64_t sub_1BD47B848()
{
  result = qword_1EBD46EA8;
  if (!qword_1EBD46EA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46E78);
    sub_1BD0DE4F4(&qword_1EBD46EB0, &qword_1EBD46EB8);
    sub_1BD0DE4F4(&qword_1EBD46EC0, &qword_1EBD46EC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46EA8);
  }

  return result;
}

unint64_t sub_1BD47B9AC()
{
  result = qword_1EBD46EE8;
  if (!qword_1EBD46EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46EE0);
    sub_1BD47BA38();
    sub_1BD47BCBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46EE8);
  }

  return result;
}

unint64_t sub_1BD47BA38()
{
  result = qword_1EBD46EF0;
  if (!qword_1EBD46EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46EF8);
    sub_1BD1829A4();
    sub_1BD47BAC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46EF0);
  }

  return result;
}

unint64_t sub_1BD47BAC4()
{
  result = qword_1EBD46F00;
  if (!qword_1EBD46F00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46F08);
    sub_1BD47C3C8(&qword_1EBD46F10, &qword_1EBD46F18, &unk_1BE0D8698, sub_1BD47BB74);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46F00);
  }

  return result;
}

unint64_t sub_1BD47BB74()
{
  result = qword_1EBD46F20;
  if (!qword_1EBD46F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46F28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46F30);
    sub_1BD47BC68();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46F20);
  }

  return result;
}

unint64_t sub_1BD47BC68()
{
  result = qword_1EBD46F38;
  if (!qword_1EBD46F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46F38);
  }

  return result;
}

unint64_t sub_1BD47BCBC()
{
  result = qword_1EBD57070;
  if (!qword_1EBD57070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD57070);
  }

  return result;
}

unint64_t sub_1BD47BF40()
{
  result = qword_1EBD46FF8;
  if (!qword_1EBD46FF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46FF0);
    sub_1BD10E4BC();
    sub_1BD47AD44(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46FF8);
  }

  return result;
}

unint64_t sub_1BD47BFFC()
{
  result = qword_1EBD47030;
  if (!qword_1EBD47030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46F90);
    sub_1BD47C0B4();
    sub_1BD0DE4F4(&unk_1EBD51290, &qword_1EBD386C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47030);
  }

  return result;
}

unint64_t sub_1BD47C0B4()
{
  result = qword_1EBD47038;
  if (!qword_1EBD47038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47040);
    sub_1BD47C140();
    sub_1BD3CA3B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47038);
  }

  return result;
}

unint64_t sub_1BD47C140()
{
  result = qword_1EBD47048;
  if (!qword_1EBD47048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47050);
    sub_1BD1A4654();
    sub_1BD47AD44(&qword_1EBD3B280, type metadata accessor for SavingsFCCStepUpPresenter);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47048);
  }

  return result;
}

unint64_t sub_1BD47C204()
{
  result = qword_1EBD47078;
  if (!qword_1EBD47078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47070);
    sub_1BD0DE4F4(&qword_1EBD47080, &qword_1EBD47088);
    sub_1BD0DE4F4(&qword_1EBD47090, &qword_1EBD47098);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47078);
  }

  return result;
}

uint64_t sub_1BD47C300(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD47C3C8(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_1BD47C44C()
{
  result = qword_1EBD47128;
  if (!qword_1EBD47128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46F40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46E60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46EE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46E58);
    sub_1BE04FB94();
    sub_1BD47B620();
    swift_getOpaqueTypeConformance2();
    sub_1BD1828C4();
    sub_1BD47B9AC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47128);
  }

  return result;
}

uint64_t sub_1BD47C5D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1BD47C61C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BD47C68C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE04F7C4();
  if (*(v1 + 32))
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 8);
  sub_1BE048C84();
  v8 = sub_1BE050224();
  sub_1BE04E1F4();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = sub_1BE0501F4();
  result = sub_1BE04E1F4();
  *a1 = v3;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = v7;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  *(a1 + 48) = v4;
  *(a1 + 56) = v8;
  *(a1 + 64) = v10;
  *(a1 + 72) = v12;
  *(a1 + 80) = v14;
  *(a1 + 88) = v16;
  *(a1 + 96) = 0;
  *(a1 + 104) = v17;
  *(a1 + 112) = v19;
  *(a1 + 120) = v20;
  *(a1 + 128) = v21;
  *(a1 + 136) = v22;
  *(a1 + 144) = 0;
  return result;
}

unint64_t sub_1BD47C79C()
{
  result = qword_1EBD47130;
  if (!qword_1EBD47130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47138);
    sub_1BD47C828();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47130);
  }

  return result;
}

unint64_t sub_1BD47C828()
{
  result = qword_1EBD47140;
  if (!qword_1EBD47140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47148);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47140);
  }

  return result;
}

unint64_t sub_1BD47C890()
{
  result = qword_1EBD47150;
  if (!qword_1EBD47150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47150);
  }

  return result;
}

uint64_t sub_1BD47C8E4()
{
  v1 = sub_1BE050324();
  v2 = [v0 font];
  if (v2 > 5)
  {
    if (v2 <= 7)
    {
      if (v2 == 6)
      {
        v3 = sub_1BE050324();
      }

      else
      {
        v3 = sub_1BE050414();
      }

      goto LABEL_22;
    }

    switch(v2)
    {
      case 8:
        v3 = sub_1BE050454();
        goto LABEL_22;
      case 9:
        v3 = sub_1BE050424();
        goto LABEL_22;
      case 10:
        v3 = sub_1BE050444();
LABEL_22:
        v4 = v3;

        return v4;
    }
  }

  else
  {
    if (v2 > 2)
    {
      if (v2 == 3)
      {
        v3 = sub_1BE0503E4();
      }

      else if (v2 == 4)
      {
        v3 = sub_1BE050464();
      }

      else
      {
        v3 = sub_1BE0502A4();
      }

      goto LABEL_22;
    }

    if (v2 == 1)
    {
      v3 = sub_1BE050344();
      goto LABEL_22;
    }

    if (v2 == 2)
    {
      v3 = sub_1BE0503D4();
      goto LABEL_22;
    }
  }

  return v1;
}

Swift::String __swiftcall PKPaymentOfferInstallmentAssessmentOffer.installmentCountString(useUpdatedText:)(Swift::Bool_optional useUpdatedText)
{
  v2 = v1;
  value = useUpdatedText.value;
  v5 = sub_1BE04BD74();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v30 - v12;
  if (value == 2 || !useUpdatedText.value)
  {
    (*(v6 + 104))(v10, *MEMORY[0x1E69B8078], v5);
    v24 = [v2 preferredLanguage];
    sub_1BE052434();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1BE0B69E0;
    v26 = [v2 installmentCount];
    v27 = MEMORY[0x1E69E65A8];
    *(v25 + 56) = MEMORY[0x1E69E6530];
    *(v25 + 64) = v27;
    *(v25 + 32) = v26;
    v18 = PKPassKitBundle();
    if (v18)
    {
      v20 = v18;
      v21 = sub_1BE04B704();
      v23 = v28;
      v13 = v10;
      goto LABEL_7;
    }

    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  (*(v6 + 104))(&v30 - v12, *MEMORY[0x1E69B8078], v5);
  v14 = [v2 preferredLanguage];
  sub_1BE052434();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1BE0B69E0;
  v16 = [v2 installmentCount];
  v17 = MEMORY[0x1E69E65A8];
  *(v15 + 56) = MEMORY[0x1E69E6530];
  *(v15 + 64) = v17;
  *(v15 + 32) = v16;
  v18 = PKPassKitBundle();
  if (!v18)
  {
    goto LABEL_9;
  }

  v20 = v18;
  v21 = sub_1BE04B704();
  v23 = v22;
LABEL_7:

  (*(v6 + 8))(v13, v5);
  v18 = v21;
  v19 = v23;
LABEL_10:
  result._object = v19;
  result._countAndFlagsBits = v18;
  return result;
}

id PKPaymentOfferInstallmentAssessmentOffer.installmentAmountPeriodString.getter()
{
  v1 = v0;
  v2 = sub_1BE04B2D4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE04B2F4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BE04BD74();
  v13 = *(v12 - 8);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v52 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v50 - v18;
  result = [v1 installmentAmount];
  if (result)
  {
    v53 = result;
    v21 = [v1 installmentPeriod];
    if (!v21)
    {
LABEL_8:

      return 0;
    }

    if (v21 != 1)
    {
      if (v21 == 2)
      {
        (*(v13 + 104))(v19, *MEMORY[0x1E69B8078], v12);
        v22 = [v1 preferredLanguage];
        sub_1BE052434();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
        v23 = swift_allocObject();
        *(v23 + 16) = xmmword_1BE0B69E0;
        result = [v53 formattedStringValue];
        if (result)
        {
          v24 = result;

          v25 = sub_1BE052434();
          v27 = v26;

          *(v23 + 56) = MEMORY[0x1E69E6158];
          *(v23 + 64) = sub_1BD110550();
          *(v23 + 32) = v25;
          *(v23 + 40) = v27;
          result = PKPassKitBundle();
          if (result)
          {
            v28 = result;
            v29 = sub_1BE04B704();

            (*(v13 + 8))(v19, v12);
            return v29;
          }

          goto LABEL_23;
        }

LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      goto LABEL_8;
    }

    v51 = v12;
    v30 = [objc_opt_self() currentCalendar];
    sub_1BE04B1F4();

    (*(v3 + 104))(v6, *MEMORY[0x1E6969AB0], v2);
    v50 = sub_1BE04B144();
    v32 = v31;
    v34 = v33;
    (*(v3 + 8))(v6, v2);
    result = (*(v8 + 8))(v11, v7);
    if (v34)
    {
      v35 = [v1 installmentInterval];
      v36 = 7;
      v37 = v13;
      v38 = v52;
      goto LABEL_16;
    }

    v36 = v32 - v50;
    if (!__OFSUB__(v32, v50))
    {
      v37 = v13;
      result = [v1 installmentInterval];
      v38 = v52;
      if (v36)
      {
        v35 = result;
        if (result != 0x8000000000000000 || v36 != -1)
        {
LABEL_16:
          (*(v37 + 104))(v38, *MEMORY[0x1E69B8078], v51);
          v39 = [v1 preferredLanguage];
          sub_1BE052434();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
          v40 = swift_allocObject();
          *(v40 + 16) = xmmword_1BE0B6CA0;
          result = [v53 formattedStringValue];
          if (result)
          {
            v41 = result;

            v42 = v35 / v36;
            v43 = sub_1BE052434();
            v45 = v44;

            *(v40 + 56) = MEMORY[0x1E69E6158];
            v46 = sub_1BD110550();
            *(v40 + 32) = v43;
            *(v40 + 40) = v45;
            v47 = MEMORY[0x1E69E65A8];
            *(v40 + 96) = MEMORY[0x1E69E6530];
            *(v40 + 104) = v47;
            *(v40 + 64) = v46;
            *(v40 + 72) = v42;
            result = PKPassKitBundle();
            if (result)
            {
              v48 = result;
              v49 = sub_1BE04B704();

              (*(v37 + 8))(v38, v51);
              return v49;
            }

            goto LABEL_25;
          }

LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
          return result;
        }

LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_21;
  }

  return result;
}

void PKPaymentOfferInstallmentAssessmentOffer.downpaymentAmountString.getter()
{
  v1 = v0;
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v5, v8);
  v11 = v65 - v10;
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = v65 - v13;
  v15 = sub_1BE04AF64();
  v70 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15, v16);
  v19 = v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = v65 - v21;
  v23 = [v1 downpaymentDetails];
  if (v23)
  {
    v24 = v23;
    v25 = [v23 paymentDate];
    if (v25)
    {
      v68 = v3;
      v69 = v2;
      v26 = v25;
      sub_1BE04AEE4();

      (*(v70 + 32))(v22, v19, v15);
      v27 = [v24 amount];
      v28 = [v27 amount];

      if (!v28)
      {
        __break(1u);
        goto LABEL_18;
      }

      v29 = [v28 pk_isZeroNumber];

      if ((v29 & 1) == 0)
      {
        v30 = [v24 amount];
        v31 = [v30 formattedStringValue];

        if (v31)
        {
          v32 = sub_1BE052434();
          v67 = v33;

          v34 = sub_1BE04AE64();
          v35 = [v34 isToday];
          v66 = v34;
          if (!v35)
          {
            v42 = [v34 isTomorrow];
            v43 = v69;
            if (!v42)
            {
              v50 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
              v51 = sub_1BE052404();
              [v50 setLocalizedDateFormatFromTemplate_];

              v52 = v68;
              (*(v68 + 104))(v7, *MEMORY[0x1E69B8078], v43);
              v53 = [v1 preferredLanguage];
              v65[1] = sub_1BE052434();
              v65[2] = v54;

              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
              v55 = swift_allocObject();
              *(v55 + 16) = xmmword_1BE0B6CA0;
              *(v55 + 56) = MEMORY[0x1E69E6158];
              v56 = sub_1BD110550();
              *(v55 + 64) = v56;
              v57 = v67;
              *(v55 + 32) = v32;
              *(v55 + 40) = v57;
              v58 = sub_1BE04AE64();
              v67 = v50;
              v59 = [v50 stringFromDate_];

              v60 = sub_1BE052434();
              v62 = v61;

              *(v55 + 96) = MEMORY[0x1E69E6158];
              *(v55 + 104) = v56;
              *(v55 + 72) = v60;
              *(v55 + 80) = v62;
              v63 = PKPassKitBundle();
              if (v63)
              {
                v64 = v63;
                sub_1BE04B704();

                (*(v52 + 8))(v7, v69);
                (*(v70 + 8))(v22, v15);
                return;
              }

              goto LABEL_20;
            }

            v44 = v68;
            (*(v68 + 104))(v11, *MEMORY[0x1E69B8078], v69);
            v45 = [v1 preferredLanguage];
            sub_1BE052434();

            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
            v46 = swift_allocObject();
            *(v46 + 16) = xmmword_1BE0B69E0;
            *(v46 + 56) = MEMORY[0x1E69E6158];
            *(v46 + 64) = sub_1BD110550();
            v47 = v67;
            *(v46 + 32) = v32;
            *(v46 + 40) = v47;
            v48 = PKPassKitBundle();
            if (v48)
            {
              v49 = v48;
              sub_1BE04B704();

              (*(v44 + 8))(v11, v69);
              (*(v70 + 8))(v22, v15);
              return;
            }

LABEL_19:
            __break(1u);
LABEL_20:
            __break(1u);
            return;
          }

          v36 = v68;
          (*(v68 + 104))(v14, *MEMORY[0x1E69B8078], v69);
          v37 = [v1 preferredLanguage];
          sub_1BE052434();

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
          v38 = swift_allocObject();
          *(v38 + 16) = xmmword_1BE0B69E0;
          *(v38 + 56) = MEMORY[0x1E69E6158];
          *(v38 + 64) = sub_1BD110550();
          v39 = v67;
          *(v38 + 32) = v32;
          *(v38 + 40) = v39;
          v40 = PKPassKitBundle();
          if (v40)
          {
            v41 = v40;
            sub_1BE04B704();

            (*(v36 + 8))(v14, v69);
            (*(v70 + 8))(v22, v15);
            return;
          }

LABEL_18:
          __break(1u);
          goto LABEL_19;
        }
      }

      (*(v70 + 8))(v22, v15);
    }
  }
}

void PKPaymentOfferInstallmentAssessmentOffer.feesOfferSelectionString.getter()
{
  v1 = v0;
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v48 - v9;
  v12 = v3 + 104;
  v11 = *(v3 + 104);
  v56 = *MEMORY[0x1E69B8078];
  v55 = v11;
  v11(v48 - v9);
  v13 = [v1 preferredLanguage];
  sub_1BE052434();

  v14 = PKPassKitBundle();
  if (!v14)
  {
    goto LABEL_42;
  }

  v15 = v14;
  v16 = sub_1BE04B6E4();
  v18 = v17;

  v21 = *(v3 + 8);
  v20 = v3 + 8;
  v19 = v21;
  v21(v10, v2);
  v22 = [v1 feeDetails];
  if (!v22)
  {
    return;
  }

  v23 = v22;
  v24 = [v22 feeItems];
  if (!v24)
  {

    return;
  }

  v25 = v24;
  v48[2] = v12;
  v49 = v1;
  v53 = v16;
  v54 = v18;
  v48[0] = v19;
  v48[1] = v20;
  v50 = v7;
  v51 = v2;
  sub_1BD0E5E8C(0, &qword_1EBD47158);
  v26 = sub_1BE052744();

  v57 = MEMORY[0x1E69E7CC0];
  if (v26 >> 62)
  {
LABEL_21:
    v27 = sub_1BE053704();
    if (v27)
    {
LABEL_6:
      v52 = v23;
      v28 = 0;
      v23 = (v26 & 0xC000000000000001);
      do
      {
        if (v23)
        {
          v29 = MEMORY[0x1BFB40900](v28, v26);
        }

        else
        {
          if (v28 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v29 = *(v26 + 8 * v28 + 32);
        }

        v30 = v29;
        v31 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          __break(1u);
LABEL_20:
          __break(1u);
          goto LABEL_21;
        }

        if ([v29 type] == 1)
        {
          sub_1BE0538C4();
          sub_1BE0538F4();
          sub_1BE053904();
          sub_1BE0538D4();
        }

        else
        {
        }

        ++v28;
      }

      while (v31 != v27);
      v32 = v57;
      v23 = v52;
      if ((v57 & 0x8000000000000000) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_36;
    }
  }

  else
  {
    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v27)
    {
      goto LABEL_6;
    }
  }

  v32 = MEMORY[0x1E69E7CC0];
  if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) != 0)
  {
    goto LABEL_36;
  }

LABEL_23:
  if ((v32 & 0x4000000000000000) != 0)
  {
LABEL_36:
    if (!sub_1BE053704())
    {
      goto LABEL_37;
    }

    goto LABEL_25;
  }

  if (!*(v32 + 16))
  {
LABEL_37:

    goto LABEL_38;
  }

LABEL_25:
  if ((v32 & 0xC000000000000001) == 0)
  {
    if (*(v32 + 16))
    {
      v33 = *(v32 + 32);
      goto LABEL_28;
    }

    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v33 = MEMORY[0x1BFB40900](0, v32);
LABEL_28:
  v34 = v33;

  v35 = [v34 feeAmount];
  v36 = [v35 amount];

  if (!v36)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v37 = [v36 pk_isZeroNumber];

  if (v37)
  {

    return;
  }

  if ([v34 feesPeriod] == 2)
  {
    v55(v50, v56, v51);
    v38 = [v49 preferredLanguage];
    sub_1BE052434();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_1BE0B69E0;
    v40 = [v34 feeAmount];
    v41 = [v40 formattedStringValue];

    if (v41)
    {

      v42 = sub_1BE052434();
      v44 = v43;

      *(v39 + 56) = MEMORY[0x1E69E6158];
      *(v39 + 64) = sub_1BD110550();
      *(v39 + 32) = v42;
      *(v39 + 40) = v44;
      v45 = PKPassKitBundle();
      if (v45)
      {
        v46 = v45;
        v47 = v50;
        sub_1BE04B704();

        (v48[0])(v47, v51);
        return;
      }

      goto LABEL_45;
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    return;
  }

LABEL_38:
}

id PKPaymentOfferInstallmentAssessmentOffer.interestString.getter()
{
  v1 = v0;
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 1);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v47 - v9;
  v11 = [v0 interestDetails];
  if (!v11)
  {
LABEL_40:
    (*(v3 + 104))(v7, *MEMORY[0x1E69B8078], v2);
    v45 = [v1 preferredLanguage];
    sub_1BE052434();

    result = PKPassKitBundle();
    if (result)
    {
      v46 = result;
      v44 = sub_1BE04B6E4();

      (*(v3 + 8))(v7, v2);
      return v44;
    }

    goto LABEL_45;
  }

  v12 = v11;
  v13 = [v11 interestItems];
  if (!v13)
  {

    goto LABEL_40;
  }

  v14 = v13;
  v53 = v7;
  v48 = v10;
  sub_1BD0E5E8C(0, &qword_1EBD47160);
  v15 = sub_1BE052744();

  v54 = MEMORY[0x1E69E7CC0];
  if (v15 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BE053704())
  {
    v49 = v1;
    v50 = v3;
    v51 = v12;
    v52 = v2;
    v17 = 0;
    v12 = (v15 & 0xC000000000000001);
    v3 = v15 & 0xFFFFFFFFFFFFFF8;
    v2 = &selRef_thumbnailWidth;
    while (1)
    {
      if (v12)
      {
        v18 = MEMORY[0x1BFB40900](v17, v15);
      }

      else
      {
        if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v18 = *(v15 + 8 * v17 + 32);
      }

      v19 = v18;
      v1 = (v17 + 1);
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if ([v18 type] == 1)
      {
        sub_1BE0538C4();
        sub_1BE0538F4();
        sub_1BE053904();
        sub_1BE0538D4();
      }

      else
      {
      }

      ++v17;
      if (v1 == i)
      {
        v20 = v54;
        v12 = v51;
        v2 = v52;
        v1 = v49;
        v3 = v50;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v20 = MEMORY[0x1E69E7CC0];
LABEL_21:

  if ((v20 & 0x8000000000000000) == 0 && (v20 & 0x4000000000000000) == 0)
  {
    if (*(v20 + 16))
    {
      goto LABEL_24;
    }

LABEL_38:

    goto LABEL_39;
  }

  result = sub_1BE053704();
  if (!result)
  {
    goto LABEL_38;
  }

LABEL_24:
  if ((v20 & 0xC000000000000001) != 0)
  {
    v22 = MEMORY[0x1BFB40900](0, v20);
  }

  else
  {
    if (!*(v20 + 16))
    {
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v22 = *(v20 + 32);
  }

  v23 = v22;

  v24 = [v23 interestPercentage];
  if (!v24)
  {

LABEL_39:
    v7 = v53;
    goto LABEL_40;
  }

  v25 = v24;
  v26 = [v23 totalInterest];
  if (!v26)
  {

    goto LABEL_39;
  }

  v27 = v26;
  v28 = v1;
  v29 = sub_1BD481E84(v25);
  v31 = v30;
  v32 = [v27 formattedStringValue];
  if (!v32 || (v33 = v32, v53 = v29, v50 = sub_1BE052434(), v35 = v34, v33, !v31) || !v35)
  {

    return 0;
  }

  v51 = v12;
  v36 = v48;
  (*(v3 + 104))(v48, *MEMORY[0x1E69B8078], v2);
  v37 = [v28 preferredLanguage];
  v49 = sub_1BE052434();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
  v38 = v3;
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1BE0B6CA0;
  v52 = v2;
  v40 = MEMORY[0x1E69E6158];
  *(v39 + 56) = MEMORY[0x1E69E6158];
  v41 = sub_1BD110550();
  *(v39 + 32) = v53;
  *(v39 + 40) = v31;
  *(v39 + 96) = v40;
  *(v39 + 104) = v41;
  v42 = v50;
  *(v39 + 64) = v41;
  *(v39 + 72) = v42;
  *(v39 + 80) = v35;
  result = PKPassKitBundle();
  if (result)
  {
    v43 = result;
    v44 = sub_1BE04B704();

    (*(v38 + 8))(v36, v52);
    return v44;
  }

LABEL_46:
  __break(1u);
  return result;
}

id PKPaymentOfferInstallmentAssessmentOffer.totalCostString.getter()
{
  v1 = v0;
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v1 totalCost];
  if (result)
  {
    v8 = result;
    v9 = [result formattedStringValue];

    if (v9)
    {
      v10 = sub_1BE052434();
      v12 = v11;

      (*(v3 + 104))(v6, *MEMORY[0x1E69B8078], v2);
      v13 = [v1 preferredLanguage];
      sub_1BE052434();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_1BE0B69E0;
      *(v14 + 56) = MEMORY[0x1E69E6158];
      *(v14 + 64) = sub_1BD110550();
      *(v14 + 32) = v10;
      *(v14 + 40) = v12;
      result = PKPassKitBundle();
      if (result)
      {
        v15 = result;
        v16 = sub_1BE04B704();

        (*(v3 + 8))(v6, v2);
        return v16;
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id PKPaymentOfferInstallmentAssessmentOffer.checkoutDueDateString.getter()
{
  v1 = sub_1BE04BD74();
  v77 = *(v1 - 8);
  v78 = v1;
  v3 = MEMORY[0x1EEE9AC00](v1, v2);
  v5 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v3, v6);
  v9 = &v73 - v8;
  v11 = MEMORY[0x1EEE9AC00](v7, v10);
  v13 = &v73 - v12;
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v73 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v21 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v19, v22);
  v25 = &v73 - v24;
  MEMORY[0x1EEE9AC00](v23, v26);
  v28 = &v73 - v27;
  v29 = [v0 dynamicContent];
  if (v29)
  {
    v30 = v29;
    v31 = [v29 dynamicContentPageForPageType_];

    if (v31)
    {
      v32 = [v31 title];
      if (v32)
      {
        v33 = v32;
        v34 = sub_1BE052434();

        return v34;
      }
    }
  }

  v35 = v13;
  v74 = v9;
  v75 = v5;
  v76 = v0;
  PKPaymentOfferInstallmentAssessmentOffer.checkoutDueDate.getter(v28);
  v36 = sub_1BE04AF64();
  v37 = *(v36 - 8);
  v38 = *(v37 + 48);
  if (v38(v28, 1, v36) == 1)
  {
    sub_1BD15D69C(v28);
    return 0;
  }

  v39 = sub_1BE04AE64();
  (*(v37 + 8))(v28, v36);
  if ([v39 isToday])
  {
    v41 = v77;
    v40 = v78;
    (*(v77 + 104))(v16, *MEMORY[0x1E69B8078], v78);
    v42 = [v76 preferredLanguage];
    sub_1BE052434();

    result = PKPassKitBundle();
    if (result)
    {
      v44 = result;
      v34 = sub_1BE04B6E4();

      (*(v41 + 8))(v16, v40);
      return v34;
    }

    __break(1u);
    goto LABEL_28;
  }

  if ([v39 isTomorrow])
  {
    v46 = v77;
    v45 = v78;
    (*(v77 + 104))(v35, *MEMORY[0x1E69B8078], v78);
    v47 = [v76 preferredLanguage];
    sub_1BE052434();

    result = PKPassKitBundle();
    if (result)
    {
      v48 = result;
      v34 = sub_1BE04B6E4();

      (*(v46 + 8))(v35, v45);
      return v34;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v49 = [v76 downpaymentDetails];
  if (!v49)
  {
    (*(v37 + 56))(v25, 1, 1, v36);
    goto LABEL_20;
  }

  v50 = v49;
  v51 = [v49 paymentDate];

  if (v51)
  {
    sub_1BE04AEE4();

    v52 = 0;
  }

  else
  {
    v52 = 1;
  }

  (*(v37 + 56))(v21, v52, 1, v36);
  sub_1BD0DE204(v21, v25, &unk_1EBD39970);
  if (v38(v25, 1, v36) == 1)
  {
LABEL_20:
    sub_1BD15D69C(v25);
    v54 = v77;
    v53 = v78;
    (*(v77 + 104))(v75, *MEMORY[0x1E69B8078], v78);
    v55 = [v76 preferredLanguage];
    sub_1BE052434();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_1BE0B69E0;
    result = PKLongDateString();
    if (result)
    {
      v57 = result;

      v58 = sub_1BE052434();
      v60 = v59;

      *(v56 + 56) = MEMORY[0x1E69E6158];
      *(v56 + 64) = sub_1BD110550();
      *(v56 + 32) = v58;
      *(v56 + 40) = v60;
      result = PKPassKitBundle();
      if (result)
      {
        v61 = result;
        v62 = v75;
        v34 = sub_1BE04B704();

        (*(v54 + 8))(v62, v53);
        return v34;
      }

      goto LABEL_30;
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  sub_1BD15D69C(v25);
  v64 = v77;
  v63 = v78;
  (*(v77 + 104))(v74, *MEMORY[0x1E69B8078], v78);
  v65 = [v76 preferredLanguage];
  sub_1BE052434();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_1BE0B69E0;
  result = PKLongDateString();
  if (!result)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v67 = result;

  v68 = sub_1BE052434();
  v70 = v69;

  *(v66 + 56) = MEMORY[0x1E69E6158];
  *(v66 + 64) = sub_1BD110550();
  *(v66 + 32) = v68;
  *(v66 + 40) = v70;
  result = PKPassKitBundle();
  if (result)
  {
    v71 = result;
    v72 = v74;
    v34 = sub_1BE04B704();

    (*(v64 + 8))(v72, v63);
    return v34;
  }

LABEL_32:
  __break(1u);
  return result;
}

id PKPaymentOfferInstallmentAssessmentOffer.checkoutAmountString.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v4, v7);
  v10 = &v38 - v9;
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v38 - v12;
  v14 = [v0 dynamicContent];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 dynamicContentPageForPageType_];

    if (v16)
    {
      v17 = [v16 subtitle];
      if (v17)
      {
        v18 = v17;
        v19 = sub_1BE052434();

        return v19;
      }
    }
  }

  v20 = [v1 downpaymentDetails];
  if (!v20 || (v21 = v20, v22 = [v20 amount], v21, !v22))
  {
    v23 = [v1 installmentAmount];
    if (!v23)
    {
      return 0;
    }

    v22 = v23;
  }

  PKPaymentOfferInstallmentAssessmentOffer.checkoutDueDate.getter(v13);
  v24 = sub_1BE04AF64();
  v25 = *(v24 - 8);
  v26 = *(v25 + 48);
  if (v26(v13, 1, v24) == 1)
  {
    v27 = v13;
LABEL_12:
    sub_1BD15D69C(v27);
    goto LABEL_13;
  }

  v30 = sub_1BE04AE64();
  (*(v25 + 8))(v13, v24);
  if (([v30 isToday] & 1) != 0 || objc_msgSend(v30, sel_isTomorrow))
  {
    result = [v22 formattedStringValue];
    if (result)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v33 = [v1 downpaymentDetails];
    if (!v33 || (v34 = v33, v39 = [v33 amount], v34, !v39))
    {

LABEL_13:
      v19 = PKPaymentOfferInstallmentAssessmentOffer.installmentAmountPeriodString.getter();
      v29 = v28;

      if (v29)
      {
        return v19;
      }

      return 0;
    }

    v35 = [v1 downpaymentDetails];
    if (!v35)
    {

      (*(v25 + 56))(v10, 1, 1, v24);
      v27 = v10;
      goto LABEL_12;
    }

    v39 = v35;
    v36 = [v35 paymentDate];

    if (v36)
    {
      sub_1BE04AEE4();

      v37 = 0;
    }

    else
    {
      v37 = 1;
    }

    (*(v25 + 56))(v6, v37, 1, v24);
    sub_1BD0DE204(v6, v10, &unk_1EBD39970);
    if (v26(v10, 1, v24) == 1)
    {

      v27 = v10;
      goto LABEL_12;
    }

    sub_1BD15D69C(v10);
    result = [v22 formattedStringValue];
    if (result)
    {
LABEL_18:
      v32 = result;
      v19 = sub_1BE052434();

      return v19;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id PKPaymentOfferInstallmentCriteria.setupLogo.getter()
{
  v1 = [v0 icon];

  return v1;
}

uint64_t PKPaymentOfferInstallmentAssessmentOffer.interestPercentString.getter()
{
  sub_1BD0E5E8C(0, &qword_1EBD38840);
  v1 = sub_1BE053054();
  v2 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  [v2 setNumberStyle_];
  v3 = [v0 interestDetails];
  if (!v3)
  {
    goto LABEL_31;
  }

  v4 = v3;
  v5 = [v3 interestItems];
  if (!v5)
  {

    goto LABEL_31;
  }

  v6 = v5;
  sub_1BD0E5E8C(0, &qword_1EBD47160);
  v7 = sub_1BE052744();

  v23 = MEMORY[0x1E69E7CC0];
  if (v7 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BE053704())
  {
    v20 = v4;
    v21 = v2;
    v22 = v1;
    v9 = 0;
    v2 = (v7 & 0xFFFFFFFFFFFFFF8);
    v1 = &selRef_thumbnailWidth;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1BFB40900](v9, v7);
      }

      else
      {
        if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v10 = *(v7 + 8 * v9 + 32);
      }

      v11 = v10;
      v4 = (v9 + 1);
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if ([v10 type] == 1)
      {
        sub_1BE0538C4();
        sub_1BE0538F4();
        sub_1BE053904();
        sub_1BE0538D4();
      }

      else
      {
      }

      ++v9;
      if (v4 == i)
      {
        v1 = v22;
        v12 = v23;
        v4 = v20;
        v2 = v21;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v12 = MEMORY[0x1E69E7CC0];
LABEL_21:

  if (v12 < 0 || (v12 & 0x4000000000000000) != 0)
  {
    result = sub_1BE053704();
    if (result)
    {
      goto LABEL_24;
    }

LABEL_30:

    goto LABEL_31;
  }

  if (!*(v12 + 16))
  {
    goto LABEL_30;
  }

LABEL_24:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x1BFB40900](0, v12);
  }

  else
  {
    if (!*(v12 + 16))
    {
      __break(1u);
      return result;
    }

    v14 = *(v12 + 32);
  }

  v15 = v14;

  v16 = [v15 interestPercentage];

  if (v16)
  {

    v1 = v16;
  }

LABEL_31:
  v17 = sub_1BD481E84(v1);
  v19 = v18;

  if (v19)
  {
    return v17;
  }

  else
  {
    return 0;
  }
}

void PKPaymentOfferInstallmentAssessmentOffer.feesSummaryString.getter()
{
  v1 = v0;
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 1);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7, v8);
  v11 = &v40 - v10;
  v12 = [v0 feeDetails];
  if (!v12)
  {
LABEL_38:
    (*(v3 + 13))(v6, *MEMORY[0x1E69B8078], v2);
    v37 = [v1 preferredLanguage];
    sub_1BE052434();

    v38 = PKPassKitBundle();
    if (v38)
    {
      v39 = v38;
      sub_1BE04B6E4();

      (*(v3 + 1))(v6, v2);
      return;
    }

    goto LABEL_42;
  }

  v13 = v12;
  v14 = [v12 feeItems];
  if (!v14)
  {
LABEL_37:

    goto LABEL_38;
  }

  v15 = v14;
  v45 = v11;
  sub_1BD0E5E8C(0, &qword_1EBD47158);
  v16 = sub_1BE052744();

  v47 = MEMORY[0x1E69E7CC0];
  if (v16 >> 62)
  {
LABEL_19:
    v17 = sub_1BE053704();
    if (v17)
    {
LABEL_5:
      v41 = v1;
      v42 = v6;
      v43 = v13;
      v44 = v2;
      v46 = v3;
      v6 = 0;
      v13 = (v16 & 0xC000000000000001);
      v1 = (v16 & 0xFFFFFFFFFFFFFF8);
      v2 = &selRef_thumbnailWidth;
      do
      {
        if (v13)
        {
          v18 = MEMORY[0x1BFB40900](v6, v16);
        }

        else
        {
          if (v6 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }

          v18 = *(v16 + 8 * v6 + 32);
        }

        v19 = v18;
        v3 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          __break(1u);
LABEL_18:
          __break(1u);
          goto LABEL_19;
        }

        if ([v18 type] == 1)
        {
          sub_1BE0538C4();
          sub_1BE0538F4();
          sub_1BE053904();
          sub_1BE0538D4();
        }

        else
        {
        }

        ++v6;
      }

      while (v3 != v17);
      v3 = v46;
      v20 = v47;
      v13 = v43;
      v2 = v44;
      v1 = v41;
      v6 = v42;
      if ((v47 & 0x8000000000000000) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_34;
    }
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
      goto LABEL_5;
    }
  }

  v20 = MEMORY[0x1E69E7CC0];
  if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) != 0)
  {
    goto LABEL_34;
  }

LABEL_21:
  if ((v20 & 0x4000000000000000) != 0)
  {
LABEL_34:
    if (!sub_1BE053704())
    {
      goto LABEL_35;
    }

    goto LABEL_23;
  }

  if (!*(v20 + 16))
  {
LABEL_35:

    goto LABEL_36;
  }

LABEL_23:
  if ((v20 & 0xC000000000000001) != 0)
  {
    v21 = MEMORY[0x1BFB40900](0, v20);
  }

  else
  {
    if (!*(v20 + 16))
    {
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v21 = *(v20 + 32);
  }

  v22 = v21;

  v23 = [v22 feeAmount];
  v24 = [v23 amount];

  if (!v24)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v25 = [v24 pk_isZeroNumber];

  if (v25)
  {

    v13 = v22;
LABEL_36:

    goto LABEL_37;
  }

  if ([v22 feesPeriod] != 2)
  {

    return;
  }

  v26 = *MEMORY[0x1E69B8078];
  v46 = v3;
  (*(v3 + 13))(v45, v26, v2);
  v27 = [v1 preferredLanguage];
  sub_1BE052434();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1BE0B69E0;
  v29 = [v22 feeAmount];
  v30 = [v29 formattedStringValue];

  if (v30)
  {

    v31 = sub_1BE052434();
    v33 = v32;

    *(v28 + 56) = MEMORY[0x1E69E6158];
    *(v28 + 64) = sub_1BD110550();
    *(v28 + 32) = v31;
    *(v28 + 40) = v33;
    v34 = PKPassKitBundle();
    if (v34)
    {
      v35 = v34;
      v36 = v45;
      sub_1BE04B704();

      (*(v46 + 1))(v36, v2);
      return;
    }

    goto LABEL_45;
  }

LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
}

void PKPaymentOfferInstallmentAssessmentOffer.totalInterestDollarString.getter()
{
  v1 = [v0 interestDetails];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 totalInterestAmount];
    v4 = [v3 formattedStringValue];

    if (v4)
    {
LABEL_3:
      sub_1BE052434();

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  v5 = [v0 totalCost];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 currency];

    if (v7)
    {
      sub_1BE052434();

      sub_1BD0E5E8C(0, &qword_1EBD38840);
      v8 = sub_1BE053054();
      v9 = objc_allocWithZone(MEMORY[0x1E69B8780]);
      v10 = sub_1BE052404();
      v2 = [v9 initWithAmount:v8 currency:v10 exponent:0];

      if (v2)
      {
        v11 = [v2 formattedStringValue];
        if (v11)
        {
          v4 = v11;

          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }
  }
}

void PKPaymentOfferInstallmentAssessmentOffer.totalFeesDollarString.getter()
{
  v1 = [v0 feeDetails];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 totalFeeAmount];
    v4 = [v3 formattedStringValue];

    if (v4)
    {
LABEL_3:
      sub_1BE052434();

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  v5 = [v0 totalCost];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 currency];

    if (v7)
    {
      sub_1BE052434();

      v8 = [objc_opt_self() zero];
      v9 = objc_allocWithZone(MEMORY[0x1E69B8780]);
      v10 = sub_1BE052404();
      v2 = [v9 initWithAmount:v8 currency:v10 exponent:0];

      if (v2)
      {
        v11 = [v2 formattedStringValue];
        if (v11)
        {
          v4 = v11;

          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }
  }
}

id PKPaymentOfferInstallmentAssessmentOffer.totalCostDollarString.getter()
{
  result = [v0 totalCost];
  if (result)
  {
    v2 = result;
    v3 = [result formattedStringValue];

    if (v3)
    {
      v4 = sub_1BE052434();

      return v4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id PKPaymentOfferAction.webViewLogo.getter()
{
  v1 = [v0 dynamicContent];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 dynamicContentPageForPageType_];

  v4 = [v3 iconURL];
  return v4;
}

uint64_t PKPaymentOfferAction.cardArtURL.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v8 = &v19 - v7;
  v9 = [v2 dynamicContent];
  if (v9 && (v10 = v9, v11 = [v9 dynamicContentPageForPageType_], v10, v11) && (v12 = objc_msgSend(v11, sel_iconURL), v11, v12))
  {
    PKScreenScale();
    v13 = [v12 urlForScreenScale:0 appearance:?];

    if (v13)
    {
      sub_1BE04A9F4();

      v14 = sub_1BE04AA64();
      (*(*(v14 - 8) + 56))(v8, 0, 1, v14);
    }

    else
    {
      v18 = sub_1BE04AA64();
      (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
    }

    return sub_1BD0DE204(v8, a1, &unk_1EBD3CF70);
  }

  else
  {
    v15 = sub_1BE04AA64();
    v16 = *(*(v15 - 8) + 56);

    return v16(a1, 1, 1, v15);
  }
}

uint64_t PKPaymentOfferInstallmentAssessmentOffer.checkoutDueDate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v6, v9);
  v12 = &v27 - v11;
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v27 - v14;
  v16 = [v2 downpaymentDetails];
  if (v16)
  {
    v17 = v16;
    v18 = [v16 paymentDate];

    if (v18)
    {
      sub_1BE04AEE4();

      v19 = sub_1BE04AF64();
      (*(*(v19 - 8) + 56))(v12, 0, 1, v19);
    }

    else
    {
      v19 = sub_1BE04AF64();
      (*(*(v19 - 8) + 56))(v12, 1, 1, v19);
    }

    sub_1BD0DE204(v12, v15, &unk_1EBD39970);
    sub_1BE04AF64();
    v21 = *(v19 - 8);
    if ((*(v21 + 48))(v15, 1, v19) != 1)
    {
      (*(v21 + 32))(a1, v15, v19);
      return (*(v21 + 56))(a1, 0, 1, v19);
    }
  }

  else
  {
    v20 = sub_1BE04AF64();
    (*(*(v20 - 8) + 56))(v15, 1, 1, v20);
  }

  sub_1BD15D69C(v15);
  v22 = [v2 dueDate];
  if (v22)
  {
    v23 = v22;
    sub_1BE04AEE4();

    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  v26 = sub_1BE04AF64();
  (*(*(v26 - 8) + 56))(v8, v24, 1, v26);
  return sub_1BD0DE204(v8, a1, &unk_1EBD39970);
}

id PKPaymentOfferInstallmentAssessmentOffer.checkoutAmount.getter()
{
  v1 = [v0 downpaymentDetails];
  if (!v1)
  {
    return [v0 installmentAmount];
  }

  v2 = v1;
  v3 = [v1 amount];

  result = v3;
  if (!v3)
  {
    return [v0 installmentAmount];
  }

  return result;
}

uint64_t sub_1BD480824(SEL *a1)
{
  v2 = [v1 *a1];
  v3 = sub_1BE052434();

  return v3;
}

void sub_1BD480884(SEL *a1@<X2>, uint64_t *a2@<X8>)
{
  v4 = [*v2 *a1];
  v5 = sub_1BE052434();
  v7 = v6;

  *a2 = v5;
  a2[1] = v7;
}

uint64_t sub_1BD4808D8()
{
  v1 = sub_1BE052404();
  v2 = [v0 eligiblePaymentOfferCriteriaForPassUniqueID_];

  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    sub_1BD0E5E8C(0, &unk_1EBD496A0);
    v4 = sub_1BE052744();
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v14 = v3;
  if (v4 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BE053704())
  {
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1BFB40900](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if ([v7 type] == 1)
      {
        sub_1BE0538C4();
        sub_1BE0538F4();
        sub_1BE053904();
        sub_1BE0538D4();
      }

      else
      {
      }

      ++v6;
      if (v9 == i)
      {
        v10 = v14;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v10 = MEMORY[0x1E69E7CC0];
LABEL_21:

  if ((v10 & 0x8000000000000000) == 0 && (v10 & 0x4000000000000000) == 0)
  {
    if (*(v10 + 16))
    {
      goto LABEL_24;
    }

LABEL_30:

    return 0;
  }

  result = sub_1BE053704();
  if (!result)
  {
    goto LABEL_30;
  }

LABEL_24:
  if ((v10 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x1BFB40900](0, v10);
  }

  else
  {
    if (!*(v10 + 16))
    {
      __break(1u);
      return result;
    }

    v12 = *(v10 + 32);
  }

  v13 = v12;

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (!result)
  {

    return 0;
  }

  return result;
}

uint64_t sub_1BD480B04(void *a1, void *a2)
{
  v5 = sub_1BE04D214();
  v41 = *(v5 - 8);
  v42 = v5;
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 identifier];
  if (!v10)
  {
    sub_1BE052434();
    v10 = sub_1BE052404();
  }

  v40 = sub_1BE052434();
  v12 = v11;
  v13 = [a1 supportedLanguages];
  v14 = sub_1BE052744();

  v15 = [objc_opt_self() pk_deviceLanguage];
  if (!v15)
  {
    goto LABEL_8;
  }

  v16 = v15;
  v39 = sub_1BE052434();
  v18 = v17;

  if (!*(v14 + 16))
  {

LABEL_8:

    return 0;
  }

  v19 = [v2 hasSeenLanguageDisclosureForCriteriaForIdentifier_];

  if (v19 & 1) != 0 || (v43[0] = v39, v43[1] = v18, MEMORY[0x1EEE9AC00](v20, v21), *(&v38 - 2) = v43, (sub_1BD2FF084(sub_1BD20DFC4, (&v38 - 4), v14)))
  {

    return 0;
  }

  v23 = [a1 identifier];
  if (!v23)
  {
    sub_1BE052434();
    v23 = sub_1BE052404();
  }

  if (!a2)
  {
    v27 = [v2 dynamicContentPageForCriteriaIdentifier:v23 pageType:6];

    if (v27)
    {
      goto LABEL_18;
    }

LABEL_20:
    sub_1BE04D084();
    sub_1BE048C84();
    sub_1BE048C84();
    sub_1BE048C84();
    v28 = sub_1BE04D204();
    v29 = sub_1BE052C34();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v43[0] = v31;
      *v30 = 136315650;
      v32 = sub_1BD123690(v39, v18, v43);

      *(v30 + 4) = v32;
      *(v30 + 12) = 2080;
      v33 = MEMORY[0x1BFB3F7F0](v14, MEMORY[0x1E69E6158]);
      v35 = v34;

      v36 = sub_1BD123690(v33, v35, v43);

      *(v30 + 14) = v36;
      *(v30 + 22) = 2080;
      v37 = sub_1BD123690(v40, v12, v43);

      *(v30 + 24) = v37;
      _os_log_impl(&dword_1BD026000, v28, v29, "The users device language of %s is not in the supported list of languages %s for criteria identifier %s, but there is no languageNotice dynamic content defined.", v30, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1BFB45F20](v31, -1, -1);
      MEMORY[0x1BFB45F20](v30, -1, -1);
    }

    else
    {
    }

    (*(v41 + 8))(v9, v42);
    return 0;
  }

  v24 = a2;

  v25 = [v24 dynamicContent];
  if (!v25)
  {

    goto LABEL_20;
  }

  v26 = v25;
  v27 = [v25 dynamicContentPageForPageType_];

  if (!v27)
  {
    goto LABEL_20;
  }

LABEL_18:

  return 1;
}

void sub_1BD480FEC(uint64_t a1, void *a2)
{
  v3 = v2;
  v157 = a2;
  v155 = a1;
  v4 = sub_1BE04BD74();
  v158 = *(v4 - 8);
  v159 = v4;
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  v156 = &v148 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v148 - v10;
  v13 = MEMORY[0x1EEE9AC00](v9, v12);
  v15 = &v148 - v14;
  v17 = MEMORY[0x1EEE9AC00](v13, v16);
  v19 = &v148 - v18;
  v21 = MEMORY[0x1EEE9AC00](v17, v20);
  v23 = &v148 - v22;
  v25 = MEMORY[0x1EEE9AC00](v21, v24);
  v27 = &v148 - v26;
  v29 = MEMORY[0x1EEE9AC00](v25, v28);
  v31 = &v148 - v30;
  v33 = MEMORY[0x1EEE9AC00](v29, v32);
  v35 = &v148 - v34;
  MEMORY[0x1EEE9AC00](v33, v36);
  v38 = &v148 - v37;
  v160 = v3;
  v39 = [v3 reason];
  if (v39 > 14)
  {
    if ((v39 - 15) < 0xD)
    {
      v40 = [v160 overrideDisplayString];
      if (v40)
      {
        v41 = v40;
        sub_1BE052434();

        return;
      }
    }

LABEL_19:
    v57 = v158;
    v56 = v159;
    v58 = v156;
    (*(v158 + 104))(v156, *MEMORY[0x1E69B8078], v159);
    v59 = PKPassKitBundle();
    if (v59)
    {
      v60 = v59;
      sub_1BE04B6F4();

      (*(v57 + 8))(v58, v56);
      return;
    }

LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  v153 = v11;
  v154 = v35;
  v152 = v15;
  if (v39 <= 8)
  {
    if (v39 > 6)
    {
      if (v39 == 7)
      {
        v71 = [v160 supportedCurrencyCodes];
        if (v71)
        {
          v72 = v71;
          v73 = sub_1BE052744();
        }

        else
        {
          v73 = MEMORY[0x1E69E7CC0];
        }

        v101 = v159;
        v102 = v154;
        if (v73[2] == 1)
        {
          v104 = v73[4];
          v103 = v73[5];
          sub_1BE048C84();

          v105 = v158;
          (*(v158 + 104))(v102, *MEMORY[0x1E69B8078], v101);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
          v106 = swift_allocObject();
          *(v106 + 16) = xmmword_1BE0B69E0;
          *(v106 + 56) = MEMORY[0x1E69E6158];
          *(v106 + 64) = sub_1BD110550();
          *(v106 + 32) = v104;
          *(v106 + 40) = v103;
          sub_1BE04B714();

          (*(v105 + 8))(v102, v101);
          return;
        }

        v107 = v158;
        (*(v158 + 104))(v31, *MEMORY[0x1E69B8078], v101);
        v108 = PKPassKitBundle();
        if (v108)
        {
          v109 = v108;
          sub_1BE04B6F4();

          (*(v107 + 8))(v31, v101);
          return;
        }

        goto LABEL_109;
      }

      v53 = v158;
      v42 = v159;
      (*(v158 + 104))(v27, *MEMORY[0x1E69B8078], v159);
      v54 = PKPassKitBundle();
      if (!v54)
      {
        goto LABEL_104;
      }

      v55 = v54;
      sub_1BE04B6F4();

      v46 = *(v53 + 8);
      v47 = v27;
    }

    else
    {
      if (!v39)
      {
        return;
      }

      if (v39 != 2)
      {
        goto LABEL_19;
      }

      v43 = v158;
      v42 = v159;
      (*(v158 + 104))(v38, *MEMORY[0x1E69B8078], v159);
      v44 = PKPassKitBundle();
      if (!v44)
      {
LABEL_103:
        __break(1u);
LABEL_104:
        __break(1u);
LABEL_105:
        __break(1u);
        goto LABEL_106;
      }

      v45 = v44;
      sub_1BE04B6F4();

      v46 = *(v43 + 8);
      v47 = v38;
    }

LABEL_28:
    v46(v47, v42);
    return;
  }

  if ((v39 - 13) >= 2)
  {
    if (v39 != 9)
    {
      if (v39 == 12)
      {
        [v160 isWebPaymentRequest];
        v49 = v158;
        v48 = v159;
        v50 = v19;
        (*(v158 + 104))(v19, *MEMORY[0x1E69B8068], v159);
        v51 = PKPassKitBundle();
        if (v51)
        {
          v52 = v51;
          sub_1BE04B6F4();

          (*(v49 + 8))(v50, v48);
          return;
        }

        goto LABEL_105;
      }

      goto LABEL_19;
    }

    v74 = v158;
    v42 = v159;
    (*(v158 + 104))(v23, *MEMORY[0x1E69B8078], v159);
    v75 = PKPassKitBundle();
    if (!v75)
    {
LABEL_106:
      __break(1u);
      goto LABEL_107;
    }

    v76 = v75;
    sub_1BE04B6F4();

    v46 = *(v74 + 8);
    v47 = v23;
    goto LABEL_28;
  }

  v62 = v158;
  v61 = v159;
  if (!v157)
  {
LABEL_54:
    v94 = [v160 reason];
    v95 = *MEMORY[0x1E69B8078];
    v96 = *(v62 + 104);
    if (v94 == 13)
    {
      v97 = v152;
      v96(v152, v95, v61);
      v98 = PKPassKitBundle();
      if (!v98)
      {
LABEL_107:
        __break(1u);
        goto LABEL_108;
      }

      v99 = v98;
    }

    else
    {
      v97 = v153;
      v96(v153, v95, v61);
      v100 = PKPassKitBundle();
      if (!v100)
      {
LABEL_108:
        __break(1u);
LABEL_109:
        __break(1u);
        return;
      }

      v99 = v100;
    }

    sub_1BE04B6F4();

    (*(v62 + 8))(v97, v61);
    return;
  }

  v63 = [v160 minimumAmounts];
  v64 = sub_1BD0E5E8C(0, &qword_1EBD43B00);
  v65 = sub_1BD2B5358();
  v66 = sub_1BE052A34();

  v148 = v65;
  v150 = v66;
  v151 = v64;
  if ((v66 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1BE0536B4();
    sub_1BE052A74();
    v66 = v163;
    v67 = v164;
    v68 = v165;
    v69 = v166;
    v70 = v167;
  }

  else
  {
    v77 = -1 << *(v66 + 32);
    v67 = v66 + 56;
    v78 = ~v77;
    v79 = -v77;
    if (v79 < 64)
    {
      v80 = ~(-1 << v79);
    }

    else
    {
      v80 = -1;
    }

    v70 = v80 & *(v66 + 56);
    sub_1BE048C84();
    v68 = v78;
    v69 = 0;
  }

  v149 = v68;
  v81 = (v68 + 64) >> 6;
  while (1)
  {
    if (v66 < 0)
    {
      v64 = (v66 & 0x7FFFFFFFFFFFFFFFLL);
      v87 = sub_1BE053744();
      if (!v87 || (v162 = v87, swift_dynamicCast(), v86 = v168, v84 = v69, v85 = v70, !v168))
      {
LABEL_51:
        sub_1BD0D45FC();
LABEL_52:

LABEL_53:
        v62 = v158;
        v61 = v159;
        goto LABEL_54;
      }
    }

    else
    {
      v82 = v69;
      v83 = v70;
      v84 = v69;
      if (!v70)
      {
        while (1)
        {
          v84 = v82 + 1;
          if (__OFADD__(v82, 1))
          {
            break;
          }

          if (v84 >= v81)
          {
            goto LABEL_51;
          }

          v83 = *(v67 + 8 * v84);
          ++v82;
          if (v83)
          {
            goto LABEL_40;
          }
        }

        __break(1u);
LABEL_100:

        goto LABEL_52;
      }

LABEL_40:
      v85 = (v83 - 1) & v83;
      v86 = *(*(v66 + 48) + ((v84 << 9) | (8 * __clz(__rbit64(v83)))));
      if (!v86)
      {
        goto LABEL_51;
      }
    }

    v88 = [v86 currency];
    if (v88)
    {
      break;
    }

LABEL_34:

    v69 = v84;
    v70 = v85;
  }

  v156 = v86;
  v89 = v88;
  v90 = sub_1BE052434();
  v64 = v91;

  if (v90 != v155 || v64 != v157)
  {
    v93 = sub_1BE053B84();

    v86 = v156;
    if (v93)
    {
      goto LABEL_67;
    }

    goto LABEL_34;
  }

  v86 = v156;
LABEL_67:
  sub_1BD0D45FC();

  v110 = [v160 maximumAmounts];
  v111 = sub_1BE052A34();

  v149 = v111;
  if ((v111 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1BE0536B4();
    sub_1BE052A74();
    v111 = v168;
    v112 = v169;
    v113 = v170;
    v114 = v171;
    v115 = v172;
  }

  else
  {
    v116 = -1 << *(v111 + 32);
    v112 = v111 + 56;
    v113 = ~v116;
    v117 = -v116;
    if (v117 < 64)
    {
      v118 = ~(-1 << v117);
    }

    else
    {
      v118 = -1;
    }

    v115 = v118 & *(v111 + 56);
    sub_1BE048C84();
    v114 = 0;
  }

  v62 = v158;
  v61 = v159;
  v148 = v113;
  v119 = (v113 + 64) >> 6;
  while (2)
  {
    if (v111 < 0)
    {
      v124 = sub_1BE053744();
      if (!v124)
      {
        goto LABEL_92;
      }

      v161 = v124;
      swift_dynamicCast();
      v64 = v162;
      v122 = v114;
      v123 = v115;
    }

    else
    {
      v120 = v114;
      v121 = v115;
      v122 = v114;
      if (!v115)
      {
        while (1)
        {
          v122 = v120 + 1;
          if (__OFADD__(v120, 1))
          {
            break;
          }

          if (v122 >= v119)
          {
            goto LABEL_91;
          }

          v121 = *(v112 + 8 * v122);
          ++v120;
          if (v121)
          {
            goto LABEL_80;
          }
        }

        __break(1u);
        goto LABEL_102;
      }

LABEL_80:
      v123 = (v121 - 1) & v121;
      v64 = *(*(v111 + 48) + ((v122 << 9) | (8 * __clz(__rbit64(v121)))));
    }

    if (!v64)
    {
      v62 = v158;
LABEL_91:
      v61 = v159;
LABEL_92:
      sub_1BD0D45FC();

      goto LABEL_54;
    }

    v125 = [v64 currency];
    if (!v125)
    {
LABEL_74:

      v114 = v122;
      v115 = v123;
      v62 = v158;
      v61 = v159;
      continue;
    }

    break;
  }

  v126 = v125;
  v127 = v111;
  v128 = sub_1BE052434();
  v130 = v129;

  if (v128 != v155 || v130 != v157)
  {
    v132 = sub_1BE053B84();

    v86 = v156;
    v111 = v127;
    if (v132)
    {
      goto LABEL_95;
    }

    goto LABEL_74;
  }

  v86 = v156;
LABEL_95:
  sub_1BD0D45FC();

  v133 = [v86 minimalFormattedStringValue];
  if (!v133)
  {

    goto LABEL_53;
  }

  v134 = v133;
  v135 = sub_1BE052434();
  v137 = v136;

  v138 = [v64 minimalFormattedStringValue];
  if (!v138)
  {
    goto LABEL_100;
  }

  v139 = v138;
  v140 = sub_1BE052434();
  v160 = v141;

  v142 = v158;
  v143 = v159;
  v144 = v154;
  (*(v158 + 104))(v154, *MEMORY[0x1E69B8078], v159);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
  v145 = swift_allocObject();
  *(v145 + 16) = xmmword_1BE0B6CA0;
  v146 = MEMORY[0x1E69E6158];
  *(v145 + 56) = MEMORY[0x1E69E6158];
  v147 = sub_1BD110550();
  *(v145 + 32) = v135;
  *(v145 + 40) = v137;
  *(v145 + 96) = v146;
  *(v145 + 104) = v147;
  *(v145 + 64) = v147;
  *(v145 + 72) = v140;
  *(v145 + 80) = v160;
  sub_1BE04B714();

  (*(v142 + 8))(v144, v143);
}

uint64_t sub_1BD481E84(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  [v2 setNumberStyle_];
  [v2 setMinimumFractionDigits_];
  [v2 setMaximumFractionDigits_];
  v3 = [v2 stringFromNumber_];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1BE052434();
  }

  else
  {

    return 0;
  }

  return v5;
}

uint64_t sub_1BD481F5C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BD481FA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BD482010@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v34 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v33 - v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v33 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v33 - v18;
  v20 = swift_allocObject();
  v21 = *(v2 + 80);
  *(v20 + 80) = *(v2 + 64);
  *(v20 + 96) = v21;
  *(v20 + 112) = *(v2 + 96);
  *(v20 + 128) = *(v2 + 112);
  v22 = *(v2 + 16);
  *(v20 + 16) = *v2;
  *(v20 + 32) = v22;
  v23 = *(v2 + 48);
  *(v20 + 48) = *(v2 + 32);
  *(v20 + 64) = v23;
  v36 = v2;
  sub_1BD482978(v2, v37);
  sub_1BE051704();
  v24 = swift_allocObject();
  v25 = *(v2 + 80);
  *(v24 + 80) = *(v2 + 64);
  *(v24 + 96) = v25;
  *(v24 + 112) = *(v2 + 96);
  *(v24 + 128) = *(v2 + 112);
  v26 = *(v2 + 16);
  *(v24 + 16) = *v2;
  *(v24 + 32) = v26;
  v27 = *(v2 + 48);
  *(v24 + 48) = *(v2 + 32);
  *(v24 + 64) = v27;
  v35 = v2;
  sub_1BD482978(v2, v37);
  sub_1BE051704();
  v28 = *(v4 + 16);
  v28(v11, v19, v3);
  v28(v7, v15, v3);
  v29 = v34;
  v28(v34, v11, v3);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40D98);
  v28(&v29[*(v30 + 48)], v7, v3);
  v31 = *(v4 + 8);
  v31(v15, v3);
  v31(v19, v3);
  v31(v7, v3);
  return (v31)(v11, v3);
}

void sub_1BD482350(uint64_t a1)
{
  sub_1BD482584();
  v2 = *a1;
  v3 = sub_1BE052404();
  [v2 markLanguageDisclosureAsSeenForCriteriaForIdentifier_];

  v4 = *(a1 + 104);
  if (v4)
  {
    v5 = sub_1BE048964();
    v4(v5);

    sub_1BD0D4744(v4);
  }
}

uint64_t sub_1BD4823F0@<X0>(uint64_t a1@<X8>)
{
  sub_1BD0DDEBC();
  sub_1BE048C84();
  result = sub_1BE0506C4();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

void sub_1BD48245C(uint64_t a1)
{
  sub_1BD482584();
  v2 = *a1;
  v3 = sub_1BE052404();
  [v2 markLanguageDisclosureAsSeenForCriteriaForIdentifier_];

  v4 = *(a1 + 88);
  if (v4)
  {
    v5 = sub_1BE048964();
    v4(v5);

    sub_1BD0D4744(v4);
  }
}

uint64_t sub_1BD4824FC@<X0>(uint64_t a1@<X8>)
{
  sub_1BD0DDEBC();
  sub_1BE048C84();
  result = sub_1BE0506C4();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

void sub_1BD482584()
{
  v0 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45640);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BE0B98D0;
  v2 = *MEMORY[0x1E69BB6E0];
  v3 = *MEMORY[0x1E69BB6C0];
  *(v1 + 32) = *MEMORY[0x1E69BB6E0];
  *(v1 + 40) = v3;
  v4 = *MEMORY[0x1E69BB6F8];
  *(v1 + 48) = *MEMORY[0x1E69BB6F8];
  type metadata accessor for PKAnalyticsSubject(0);
  v5 = v2;
  v6 = v3;
  v7 = v4;
  v8 = sub_1BE052724();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B98D0;
  v10 = *MEMORY[0x1E69BA680];
  *(inited + 32) = *MEMORY[0x1E69BA680];
  *(inited + 40) = sub_1BE052434();
  *(inited + 48) = v11;
  v12 = *MEMORY[0x1E69BA440];
  *(inited + 56) = *MEMORY[0x1E69BA440];
  v13 = sub_1BE052434();
  v14 = MEMORY[0x1E69BABE8];
  *(inited + 64) = v13;
  *(inited + 72) = v15;
  v16 = *v14;
  *(inited + 80) = *v14;
  *(inited + 88) = sub_1BE052434();
  *(inited + 96) = v17;
  v18 = v10;
  v19 = v12;
  v20 = v16;
  sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
  swift_arrayDestroy();
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD1F0E18();
  v21 = sub_1BE052224();

  [v0 subjects:v8 sendEvent:v21];
}

void sub_1BD48278C()
{
  v0 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45640);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BE0B98D0;
  v2 = *MEMORY[0x1E69BB6E0];
  v3 = *MEMORY[0x1E69BB6C0];
  *(v1 + 32) = *MEMORY[0x1E69BB6E0];
  *(v1 + 40) = v3;
  v4 = *MEMORY[0x1E69BB6F8];
  *(v1 + 48) = *MEMORY[0x1E69BB6F8];
  type metadata accessor for PKAnalyticsSubject(0);
  v5 = v2;
  v6 = v3;
  v7 = v4;
  v8 = sub_1BE052724();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B6CA0;
  v10 = *MEMORY[0x1E69BA680];
  *(inited + 32) = *MEMORY[0x1E69BA680];
  v11 = sub_1BE052434();
  v12 = MEMORY[0x1E69BABE8];
  *(inited + 40) = v11;
  *(inited + 48) = v13;
  v14 = *v12;
  *(inited + 56) = *v12;
  *(inited + 64) = sub_1BE052434();
  *(inited + 72) = v15;
  v16 = v10;
  v17 = v14;
  sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
  swift_arrayDestroy();
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD1F0E18();
  v18 = sub_1BE052224();

  [v0 subjects:v8 sendEvent:v18];
}

uint64_t objectdestroyTm_46()
{

  if (*(v0 + 104))
  {
  }

  if (*(v0 + 120))
  {
  }

  return swift_deallocObject();
}

void sub_1BD482A40(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v16 = sub_1BE04D214();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v79 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = a3;
  if ((sub_1BD480B04(a2, a3) & 1) == 0)
  {
    sub_1BD0D4744(a6);
    sub_1BD0D4744(a4);

LABEL_26:
    v52 = 0;
    v49 = 0;
    v51 = 0;
    v29 = 0;
    v57 = 0;
    v34 = 0;
    v37 = 0;
    v42 = 0;
    v44 = 0;
    v46 = 0;
    v48 = 0;
    v54 = 0;
    v53 = 0;
    v56 = 0;
    v55 = 0;
    goto LABEL_27;
  }

  v77 = a5;
  v78 = a1;
  v74 = a6;
  v75 = a7;
  v76 = a4;
  v20 = [a2 identifier];
  if (!v20)
  {
    sub_1BE052434();
    v20 = sub_1BE052404();
  }

  v22 = v78;
  v21 = v79;
  if (v80)
  {
    v23 = v80;

    v24 = [v23 dynamicContent];
    if (!v24)
    {

      v26 = 0;
      goto LABEL_20;
    }

    v25 = v24;
    v26 = [v24 dynamicContentPageForPageType_];

    if (!v26)
    {
LABEL_20:
      sub_1BE04D084();
      v58 = v26;
      v59 = sub_1BE04D204();
      v60 = sub_1BE052C34();

      if (os_log_type_enabled(v59, v60))
      {
        v72 = a2;
        v73 = v17;
        v61 = v58;
        v71 = v16;
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v81 = v63;
        *v62 = 136315138;
        if (v26)
        {
          v64 = [v58 description];
          v65 = sub_1BE052434();
          v67 = v66;
        }

        else
        {
          v65 = 0;
          v67 = 0xE000000000000000;
        }

        v68 = v72;
        v69 = sub_1BD123690(v65, v67, &v81);

        *(v62 + 4) = v69;
        _os_log_impl(&dword_1BD026000, v59, v60, "Cannot form issuer installment languageNotice alert without dynamic content defined properly %s", v62, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v63);
        MEMORY[0x1BFB45F20](v63, -1, -1);
        MEMORY[0x1BFB45F20](v62, -1, -1);
        sub_1BD0D4744(v74);
        sub_1BD0D4744(v76);

        (*(v73 + 8))(v79, v71);
      }

      else
      {
        sub_1BD0D4744(v74);
        sub_1BD0D4744(v76);

        (*(v17 + 8))(v21, v16);
      }

      goto LABEL_26;
    }
  }

  else
  {
    v26 = [v78 dynamicContentPageForCriteriaIdentifier:v20 pageType:6];

    if (!v26)
    {
      goto LABEL_20;
    }
  }

  v26 = v26;
  v27 = [v26 title];
  if (!v27)
  {

    goto LABEL_20;
  }

  v28 = v27;
  v29 = sub_1BE052434();
  v31 = v30;

  v32 = [v26 subtitle];
  if (!v32)
  {

    v22 = v78;
    goto LABEL_20;
  }

  v71 = v31;
  v33 = v32;
  v34 = sub_1BE052434();
  v35 = v26;
  v37 = v36;

  v38 = [v35 primaryActionTitle];
  if (!v38)
  {

    v22 = v78;
    v21 = v79;
    v26 = v35;
    goto LABEL_20;
  }

  v73 = v17;
  v39 = v35;
  v40 = a2;
  v41 = v38;
  v42 = sub_1BE052434();
  v44 = v43;

  v45 = [v39 secondaryActionTitle];
  v70 = v39;

  if (!v45)
  {

    v22 = v78;
    v21 = v79;
    a2 = v40;
    v17 = v73;
    v26 = v70;
    goto LABEL_20;
  }

  v46 = sub_1BE052434();
  v48 = v47;

  v72 = v40;
  v79 = [v40 identifier];
  v49 = sub_1BE052434();
  v51 = v50;

  v53 = v77;
  v52 = v78;
  v55 = v75;
  v54 = v76;
  v56 = v74;
  v57 = v71;
LABEL_27:
  *a8 = v52;
  a8[1] = v49;
  a8[2] = v51;
  a8[3] = v29;
  a8[4] = v57;
  a8[5] = v34;
  a8[6] = v37;
  a8[7] = v42;
  a8[8] = v44;
  a8[9] = v46;
  a8[10] = v48;
  a8[11] = v54;
  a8[12] = v53;
  a8[13] = v56;
  a8[14] = v55;
}

uint64_t static NearbyPeerPaymentSenderAuthorizationController.State.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47168);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v12 - v6;
  v9 = *(v8 + 56);
  sub_1BD4864E0(a1, &v12 - v6, type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State);
  sub_1BD4864E0(a2, &v7[v9], type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State);
  type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
LABEL_4:
      sub_1BD486410(v7, type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State);
      return 1;
    }
  }

  else if (EnumCaseMultiPayload == 2 && swift_getEnumCaseMultiPayload() == 2)
  {
    goto LABEL_4;
  }

  sub_1BD0DE53C(v7, &qword_1EBD47168);
  return 0;
}

uint64_t sub_1BD48315C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47168);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v12 - v6;
  v9 = *(v8 + 56);
  sub_1BD4864E0(a1, &v12 - v6, type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State);
  sub_1BD4864E0(a2, &v7[v9], type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
LABEL_4:
      sub_1BD486410(v7, type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State);
      return 1;
    }
  }

  else if (EnumCaseMultiPayload == 2 && swift_getEnumCaseMultiPayload() == 2)
  {
    goto LABEL_4;
  }

  sub_1BD0DE53C(v7, &qword_1EBD47168);
  return 0;
}

uint64_t NearbyPeerPaymentSenderAuthorizationController.state.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1BD483BE0(&qword_1EBD47178, type metadata accessor for NearbyPeerPaymentSenderAuthorizationController);
  sub_1BE04B594();

  v3 = OBJC_IVAR____TtC9PassKitUI46NearbyPeerPaymentSenderAuthorizationController__state;
  swift_beginAccess();
  return sub_1BD4864E0(v5 + v3, a1, type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State);
}

uint64_t sub_1BD48337C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD483BE0(&qword_1EBD47178, type metadata accessor for NearbyPeerPaymentSenderAuthorizationController);
  sub_1BE04B594();

  v4 = OBJC_IVAR____TtC9PassKitUI46NearbyPeerPaymentSenderAuthorizationController__state;
  swift_beginAccess();
  return sub_1BD4864E0(v3 + v4, a2, type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State);
}

uint64_t sub_1BD483458(uint64_t a1)
{
  v2 = type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD4864E0(a1, v5, type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State);
  return sub_1BD483518(v5);
}

uint64_t sub_1BD483518(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47168);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v18 - v6;
  v8 = type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC9PassKitUI46NearbyPeerPaymentSenderAuthorizationController__state;
  swift_beginAccess();
  sub_1BD4864E0(v1 + v12, v11, type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State);
  v13 = *(v4 + 56);
  sub_1BD486A24(v11, v7, type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State);
  sub_1BD4864E0(a1, &v7[v13], type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 3)
  {
    if (EnumCaseMultiPayload == 2 && swift_getEnumCaseMultiPayload() == 2)
    {
      goto LABEL_4;
    }

LABEL_6:
    sub_1BD0DE53C(v7, &qword_1EBD47168);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v16);
    v18[-2] = v1;
    v18[-1] = a1;
    v18[1] = v1;
    sub_1BD483BE0(&qword_1EBD47178, type metadata accessor for NearbyPeerPaymentSenderAuthorizationController);
    sub_1BE04B584();

    return sub_1BD486410(a1, type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State);
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    goto LABEL_6;
  }

LABEL_4:
  sub_1BD486410(v7, type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State);
  swift_beginAccess();
  sub_1BD486B3C(a1, v1 + v12);
  swift_endAccess();
  return sub_1BD486410(a1, type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State);
}

uint64_t sub_1BD4837E8(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC9PassKitUI46NearbyPeerPaymentSenderAuthorizationController__state;
  swift_beginAccess();
  sub_1BD486B3C(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t NearbyPeerPaymentSenderAuthorizationController.__allocating_init()()
{
  v0 = swift_allocObject();
  NearbyPeerPaymentSenderAuthorizationController.init()();
  return v0;
}

id NearbyPeerPaymentSenderAuthorizationController.init()()
{
  v1 = v0;
  v2 = sub_1BE052D44();
  v16 = *(v2 - 8);
  v17 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE052CF4();
  MEMORY[0x1EEE9AC00](v6, v7);
  v8 = sub_1BE051FA4();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State(0);
  swift_storeEnumTagMultiPayload();
  v10 = OBJC_IVAR____TtC9PassKitUI46NearbyPeerPaymentSenderAuthorizationController_identityManager;
  *(v0 + v10) = [objc_allocWithZone(type metadata accessor for PeerPaymentIdentityManager()) init];
  v15 = OBJC_IVAR____TtC9PassKitUI46NearbyPeerPaymentSenderAuthorizationController_queue;
  v14[1] = sub_1BD14BE3C();
  sub_1BE051F74();
  v18 = MEMORY[0x1E69E7CC0];
  sub_1BD483BE0(&unk_1EBD35EB0, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D420);
  sub_1BD126024(&unk_1EBD35F10, &unk_1EBD3D420);
  sub_1BE053664();
  (*(v16 + 104))(v5, *MEMORY[0x1E69E8090], v17);
  *(v0 + v15) = sub_1BE052D74();
  *(v0 + OBJC_IVAR____TtC9PassKitUI46NearbyPeerPaymentSenderAuthorizationController__quoteAuthorizationTask) = 0;
  sub_1BE04B5C4();
  v11 = [objc_allocWithZone(MEMORY[0x1E69B8F40]) init];
  [v11 setEndpoint_];
  [v11 setQuoteRequestDestination_];
  result = [objc_opt_self() sharedService];
  if (result)
  {
    v13 = result;
    [result prewarmDeviceScoreForAttributes_];

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD483BE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t NearbyPeerPaymentSenderAuthorizationController.authorizeAmount(_:memo:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_1BE051F54();
  v27 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BE051FA4();
  v25 = *(v15 - 8);
  v26 = v15;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[1] = *(v5 + OBJC_IVAR____TtC9PassKitUI46NearbyPeerPaymentSenderAuthorizationController_queue);
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  v20[2] = v19;
  v20[3] = a1;
  v20[4] = a4;
  v20[5] = a5;
  v20[6] = a2;
  v20[7] = a3;
  aBlock[4] = sub_1BD484724;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_101;
  v21 = _Block_copy(aBlock);
  sub_1BE048964();
  v22 = a1;
  sub_1BD0D44B8(a4);
  sub_1BE048C84();
  sub_1BE051F74();
  v28 = MEMORY[0x1E69E7CC0];
  sub_1BD483BE0(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD126024(&qword_1EBD35F20, &unk_1EBD387F0);
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v18, v14, v21);
  _Block_release(v21);
  (*(v27 + 8))(v14, v11);
  (*(v25 + 8))(v18, v26);
}

uint64_t sub_1BD483F4C(uint64_t a1, void *a2, void (*a3)(void, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v71 = a5;
  v72 = a6;
  v73 = a2;
  v74 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47198);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v69 = &v68 - v9;
  v10 = sub_1BE04D214();
  v76 = *(v10 - 8);
  v77 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v70 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v75 = &v68 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v68 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47168);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v68 - v22;
  v24 = type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State(0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v68 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v68 - v30;
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v68 - v34;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v37 = result;
  v68 = a4;
  swift_getKeyPath();
  v78 = v37;
  sub_1BD483BE0(&qword_1EBD47178, type metadata accessor for NearbyPeerPaymentSenderAuthorizationController);
  sub_1BE04B594();

  v38 = OBJC_IVAR____TtC9PassKitUI46NearbyPeerPaymentSenderAuthorizationController__state;
  swift_beginAccess();
  sub_1BD4864E0(v37 + v38, v35, type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State);
  swift_storeEnumTagMultiPayload();
  v39 = *(v20 + 48);
  sub_1BD486A24(v35, v23, type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State);
  sub_1BD486A24(v31, &v23[v39], type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 3)
  {
    v41 = v76;
    if (EnumCaseMultiPayload == 2 && swift_getEnumCaseMultiPayload() == 2)
    {
      goto LABEL_5;
    }

LABEL_11:
    sub_1BD0DE53C(v23, &qword_1EBD47168);
    sub_1BE04D094();
    v58 = sub_1BE04D204();
    v59 = sub_1BE052C54();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_1BD026000, v58, v59, "NearbyPeerPayment: quote generation and authorization already in progress", v60, 2u);
      MEMORY[0x1BFB45F20](v60, -1, -1);
    }

    else
    {
    }

    return (*(v41 + 8))(v19, v77);
  }

  v57 = swift_getEnumCaseMultiPayload();
  v41 = v76;
  if (v57 != 3)
  {
    goto LABEL_11;
  }

LABEL_5:
  sub_1BD486410(v23, type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State);
  sub_1BE04D094();
  v42 = v73;
  v43 = sub_1BE04D204();
  v44 = sub_1BE052C54();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *v45 = 138412290;
    *(v45 + 4) = v42;
    *v46 = v42;
    v47 = v42;
    _os_log_impl(&dword_1BD026000, v43, v44, "NearbyPeerPayment: generating authorized quote for amount %@", v45, 0xCu);
    sub_1BD0DE53C(v46, &unk_1EBD3E590);
    MEMORY[0x1BFB45F20](v46, -1, -1);
    MEMORY[0x1BFB45F20](v45, -1, -1);
  }

  v48 = *(v41 + 8);
  v49 = v77;
  v48(v75, v77);
  swift_storeEnumTagMultiPayload();
  sub_1BD484734(v27, 0, 0);
  sub_1BD486410(v27, type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State);
  v50 = [objc_opt_self() sharedService];
  v51 = [objc_allocWithZone(MEMORY[0x1E69B8F28]) initWithPeerPaymentWebService_];

  v52 = v68;
  if (v51)
  {
    sub_1BE04C184();
    v53 = swift_allocObject();
    swift_weakInit();
    v54 = swift_allocObject();
    v55 = v71;
    v54[2] = v53;
    v54[3] = v55;
    v56 = v74;
    v54[4] = v72;
    v54[5] = v56;
    v54[6] = v52;
    sub_1BE048C84();
    sub_1BE048964();
    sub_1BD0D44B8(v56);
    sub_1BE04C174();
  }

  v61 = v70;
  sub_1BE04D094();
  v62 = sub_1BE04D204();
  v63 = sub_1BE052C54();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    *v64 = 0;
    _os_log_impl(&dword_1BD026000, v62, v63, "NearbyPeerPayment: failed to initialize PKPeerPaymentController", v64, 2u);
    MEMORY[0x1BFB45F20](v64, -1, -1);
  }

  v48(v61, v49);
  v65 = v74;
  if (!v74)
  {
  }

  v66 = sub_1BE04B7C4();
  v67 = v69;
  (*(*(v66 - 8) + 56))(v69, 1, 1, v66);
  v65(0, v67);

  return sub_1BD0DE53C(v67, &qword_1EBD47198);
}

uint64_t sub_1BD484734(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a2;
  v27 = a3;
  v25 = a1;
  v3 = sub_1BE051F54();
  v29 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1BE051FA4();
  v7 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8, v14);
  sub_1BD14BE3C();
  v15 = sub_1BE052D54();
  v16 = swift_allocObject();
  swift_weakInit();
  sub_1BD4864E0(v25, &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State);
  v17 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  sub_1BD486A24(&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State);
  v19 = (v18 + ((v13 + v17 + 7) & 0xFFFFFFFFFFFFFFF8));
  v21 = v26;
  v20 = v27;
  *v19 = v26;
  v19[1] = v20;
  aBlock[4] = sub_1BD486A8C;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_13_2;
  v22 = _Block_copy(aBlock);
  sub_1BD0D44B8(v21);

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD483BE0(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD126024(&qword_1EBD35F20, &unk_1EBD387F0);
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v10, v6, v22);
  _Block_release(v22);

  (*(v29 + 8))(v6, v3);
  return (*(v7 + 8))(v10, v28);
}

uint64_t sub_1BD484B10(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v85 = a6;
  v86 = a7;
  v89[15] = *MEMORY[0x1E69E9840];
  v11 = sub_1BE04B7C4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  v15 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = (&v80 - v18);
  v84 = type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State(0);
  MEMORY[0x1EEE9AC00](v84, v20);
  v87 = &v80 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_1BE04C4C4();
  v82 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83, v22);
  v88 = &v80 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v25 = result;
  if (!a1)
  {
    if (!a2)
    {
      v74 = v87;
      swift_storeEnumTagMultiPayload();
      v75 = swift_allocObject();
      v76 = v85;
      v77 = v86;
      *(v75 + 16) = v85;
      *(v75 + 24) = v77;
      sub_1BD0D44B8(v76);
      sub_1BD484734(v74, sub_1BD486BB0, v75);

      return sub_1BD486410(v74, type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State);
    }

    *v19 = a2;
    (*(v12 + 104))(v19, *MEMORY[0x1E69B7EC8], v11);
    v34 = *(v12 + 16);
    v35 = v87;
    v34(v87, v19, v11);
    (*(v12 + 56))(v35, 0, 1, v11);
    swift_storeEnumTagMultiPayload();
    v34(v15, v19, v11);
    v36 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v37 = swift_allocObject();
    v38 = v85;
    v81 = v25;
    v39 = v86;
    *(v37 + 16) = v85;
    *(v37 + 24) = v39;
    (*(v12 + 32))(v37 + v36, v15, v11);
    v40 = a2;
    sub_1BD0D44B8(v38);
    v41 = a2;
    sub_1BD484734(v35, sub_1BD486DAC, v37);

    v42 = v35;
    goto LABEL_6;
  }

  v26 = a1;
  sub_1BD485450(v26, a4, a5, v88);
  v81 = v25;
  v80 = v26;
  v43 = objc_opt_self();
  v89[0] = 0;
  v44 = [v43 archivedDataWithRootObject:v26 requiringSecureCoding:1 error:v89];
  v45 = v89[0];
  if (!v44)
  {
    v78 = v45;
    v79 = sub_1BE04A854();

    swift_willThrow();
    (*(v82 + 8))(v88, v83);
    *v19 = v79;
    (*(v12 + 104))(v19, *MEMORY[0x1E69B7EC8], v11);
    v27 = *(v12 + 16);
    v28 = v87;
    v27(v87, v19, v11);
    (*(v12 + 56))(v28, 0, 1, v11);
    swift_storeEnumTagMultiPayload();
    v27(v15, v19, v11);
    v29 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v30 = swift_allocObject();
    v32 = v85;
    v31 = v86;
    *(v30 + 16) = v85;
    *(v30 + 24) = v31;
    (*(v12 + 32))(v30 + v29, v15, v11);
    sub_1BD0D44B8(v32);
    v33 = v79;
    sub_1BD484734(v28, sub_1BD486C84, v30);

    v42 = v28;
LABEL_6:
    sub_1BD486410(v42, type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State);
    return (*(v12 + 8))(v19, v11);
  }

  v46 = sub_1BE04AAC4();
  v48 = v47;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD471D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B6CA0;
  *(inited + 32) = 0xD000000000000012;
  *(inited + 40) = 0x80000001BE12B060;
  v50 = sub_1BE04C424();
  v52 = v51;
  v53 = objc_allocWithZone(MEMORY[0x1E695DEF0]);
  v54 = sub_1BE04AAB4();
  v55 = [v53 initWithData_];

  sub_1BD1245AC(v50, v52);
  *(inited + 48) = v55;
  strcpy((inited + 56), "encodedQuote");
  *(inited + 69) = 0;
  *(inited + 70) = -5120;
  v56 = objc_allocWithZone(MEMORY[0x1E695DEF0]);
  sub_1BD041A38(v46, v48);
  v57 = sub_1BE04AAB4();
  v58 = [v56 initWithData_];

  sub_1BD1245AC(v46, v48);
  *(inited + 72) = v58;
  v59 = sub_1BD1ACE78(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD471E0);
  swift_arrayDestroy();
  v60 = [objc_opt_self() archivedSessionTokenForSubject_];
  if (v60)
  {
    v61 = v60;
    v62 = sub_1BE04AAC4();
    v64 = v63;

    v65 = sub_1BE052434();
    v67 = v66;
    v68 = sub_1BE04AAB4();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v89[0] = v59;
    sub_1BD1DB684(v68, v65, v67, isUniquelyReferenced_nonNull_native);

    sub_1BD1245AC(v62, v64);
    v59 = v89[0];
  }

  v70 = v87;
  *v87 = v59;
  swift_storeEnumTagMultiPayload();
  v71 = swift_allocObject();
  v73 = v85;
  v72 = v86;
  v71[2] = v85;
  v71[3] = v72;
  v71[4] = v59;
  sub_1BE048C84();
  sub_1BD0D44B8(v73);
  sub_1BD484734(v70, sub_1BD486CE0, v71);

  sub_1BD1245AC(v46, v48);

  sub_1BD486410(v70, type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State);
  return (*(v82 + 8))(v88, v83);
}

void sub_1BD485450(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v55 = a2;
  v56 = a3;
  v6 = sub_1BE04D214();
  v57 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v50 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD476F0);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v18 = &v50 - v17;
  v19 = [a1 peerPaymentQuote];
  if (v19)
  {
    v20 = v19;
    v53 = v18;
    v51 = a4;
    v21 = [v19 totalReceiveAmount];
    if (v21)
    {
      v22 = v21;
      v52 = v6;
      v23 = [v20 totalReceiveAmountCurrency];
      if (v23)
      {
        v24 = v23;
        v25 = v22;
        v22 = PKCurrencyAmountMake();

        if (v22)
        {
          v50 = v25;
          v26 = [a1 peerPaymentQuote];
          if (!v26)
          {
            __break(1u);
            return;
          }

          v27 = v26;
          v28 = [v26 transactionIdentifier];

          if (v28)
          {
            v57 = sub_1BE052434();
            v52 = v29;

            v30 = *(v54 + OBJC_IVAR____TtC9PassKitUI46NearbyPeerPaymentSenderAuthorizationController_identityManager);
            swift_getKeyPath();
            v58 = v30;
            sub_1BD483BE0(&qword_1EBD3F6F0, type metadata accessor for PeerPaymentIdentityManager);
            v31 = v22;
            sub_1BE04B594();

            v32 = *(v30 + OBJC_IVAR____PKPeerPaymentIdentityManager__appearanceData);
            v33 = sub_1BE04AF64();
            (*(*(v33 - 8) + 56))(v13, 1, 1, v33);
            sub_1BE048C84();
            v34 = v32;
            v35 = v53;
            sub_1BE04C464();
            v36 = sub_1BE04C4C4();
            v37 = *(v36 - 8);
            if ((*(v37 + 48))(v35, 1, v36) == 1)
            {
              sub_1BD0DE53C(v35, &unk_1EBD476F0);
              sub_1BD486CEC();
              swift_allocError();
              *v38 = 1;
              swift_willThrow();
            }

            else
            {

              (*(v37 + 32))(v51, v35, v36);
            }

            return;
          }

          v20 = v50;
        }

        else
        {
          v22 = v25;
        }
      }

      v20 = v22;
      v6 = v52;
    }
  }

  sub_1BE04D094();
  v39 = a1;
  v40 = sub_1BE04D204();
  v41 = sub_1BE052C34();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v58 = v43;
    *v42 = 136315138;
    v44 = [v39 debugDescription];
    v45 = sub_1BE052434();
    v47 = v46;

    v48 = sub_1BD123690(v45, v47, &v58);

    *(v42 + 4) = v48;
    _os_log_impl(&dword_1BD026000, v40, v41, "NearbyPeerPayment: attempted to generate sender metadata without quote data, authorized quote: %s", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v43);
    MEMORY[0x1BFB45F20](v43, -1, -1);
    MEMORY[0x1BFB45F20](v42, -1, -1);
  }

  (*(v57 + 8))(v9, v6);
  sub_1BD486CEC();
  swift_allocError();
  *v49 = 0;
  swift_willThrow();
}

void sub_1BD4859FC(void (*a1)(uint64_t, char *), uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47198);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v10 - v7;
  if (a1)
  {
    v9 = sub_1BE04B7C4();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
    a1(a3, v8);
    sub_1BD0DE53C(v8, &qword_1EBD47198);
  }
}

void sub_1BD485AE8(void (*a1)(void, char *), uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47198);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v11 - v7;
  if (a1)
  {
    v9 = sub_1BE04B7C4();
    v10 = *(v9 - 8);
    (*(v10 + 16))(v8, a3, v9);
    (*(v10 + 56))(v8, 0, 1, v9);
    a1(0, v8);
    sub_1BD0DE53C(v8, &qword_1EBD47198);
  }
}

void sub_1BD485C28(void (*a1)(void, char *))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47198);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v7 - v4;
  if (a1)
  {
    v6 = sub_1BE04B7C4();
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
    a1(0, v5);
    sub_1BD0DE53C(v5, &qword_1EBD47198);
  }
}

uint64_t NearbyPeerPaymentSenderAuthorizationController.errorProcessed(_:)(uint64_t a1)
{
  v58 = a1;
  v2 = sub_1BE04D214();
  v54 = *(v2 - 8);
  v55 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v53 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47198);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v56 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v57 = &v50 - v10;
  v11 = type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State(0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v52 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v50 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v50 - v24;
  v26 = type metadata accessor for FeatureError(0);
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v28);
  v51 = &v50 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v50 - v32;
  sub_1BD0DE19C(v58, v25, &qword_1EBD416C0);
  v34 = *(v27 + 48);
  v58 = v26;
  if (v34(v25, 1, v26) == 1)
  {
    return sub_1BD0DE53C(v25, &qword_1EBD416C0);
  }

  sub_1BD486A24(v25, v33, type metadata accessor for FeatureError);
  swift_getKeyPath();
  v59 = v1;
  sub_1BD483BE0(&qword_1EBD47178, type metadata accessor for NearbyPeerPaymentSenderAuthorizationController);
  sub_1BE04B594();

  v36 = OBJC_IVAR____TtC9PassKitUI46NearbyPeerPaymentSenderAuthorizationController__state;
  swift_beginAccess();
  sub_1BD4864E0(v1 + v36, v17, type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v37 = v57;
    sub_1BD486470(v17, v57);
    v38 = v56;
    sub_1BD0DE19C(v37, v56, &qword_1EBD47198);
    FeatureError.init(_:)(v38, v21);
    LOBYTE(v38) = FeatureError.matches(error:)(v21);
    sub_1BD0DE53C(v21, &qword_1EBD416C0);
    if (v38)
    {
      v39 = v53;
      sub_1BE04D094();
      v56 = v33;
      v40 = v51;
      sub_1BD4864E0(v33, v51, type metadata accessor for FeatureError);
      v41 = sub_1BE04D204();
      v42 = sub_1BE052C54();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        *v43 = 138412290;
        sub_1BD483BE0(&qword_1EBD471A0, type metadata accessor for FeatureError);
        swift_allocError();
        sub_1BD4864E0(v40, v44, type metadata accessor for FeatureError);
        v45 = _swift_stdlib_bridgeErrorToNSError();
        sub_1BD486410(v40, type metadata accessor for FeatureError);
        *(v43 + 4) = v45;
        v46 = v50;
        *v50 = v45;
        _os_log_impl(&dword_1BD026000, v41, v42, "NearbyPeerPayment: error marked as processed: %@, resetting authorization state", v43, 0xCu);
        sub_1BD0DE53C(v46, &unk_1EBD3E590);
        MEMORY[0x1BFB45F20](v46, -1, -1);
        MEMORY[0x1BFB45F20](v43, -1, -1);
      }

      else
      {

        sub_1BD486410(v40, type metadata accessor for FeatureError);
      }

      (*(v54 + 8))(v39, v55);
      v49 = v52;
      swift_storeEnumTagMultiPayload();
      sub_1BD484734(v49, 0, 0);
      sub_1BD486410(v49, type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State);
      sub_1BD0DE53C(v37, &qword_1EBD47198);
      v47 = type metadata accessor for FeatureError;
      v48 = v56;
    }

    else
    {
      sub_1BD0DE53C(v37, &qword_1EBD47198);
      v47 = type metadata accessor for FeatureError;
      v48 = v33;
    }
  }

  else
  {
    sub_1BD486410(v33, type metadata accessor for FeatureError);
    v47 = type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State;
    v48 = v17;
  }

  return sub_1BD486410(v48, v47);
}

uint64_t sub_1BD486410(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BD486470(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47198);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD4864E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD486548(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1BD4864E0(a2, v8, type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State);
    sub_1BD483518(v8);
  }

  if (a3)
  {
    return a3(result);
  }

  return result;
}

uint64_t NearbyPeerPaymentSenderAuthorizationController.deinit()
{
  sub_1BD486410(v0 + OBJC_IVAR____TtC9PassKitUI46NearbyPeerPaymentSenderAuthorizationController__state, type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State);

  v1 = OBJC_IVAR____TtC9PassKitUI46NearbyPeerPaymentSenderAuthorizationController___observationRegistrar;
  v2 = sub_1BE04B5D4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t NearbyPeerPaymentSenderAuthorizationController.__deallocating_deinit()
{
  sub_1BD486410(v0 + OBJC_IVAR____TtC9PassKitUI46NearbyPeerPaymentSenderAuthorizationController__state, type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State);

  v1 = OBJC_IVAR____TtC9PassKitUI46NearbyPeerPaymentSenderAuthorizationController___observationRegistrar;
  v2 = sub_1BE04B5D4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1BD4867E4()
{
  result = type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State(319);
  if (v1 <= 0x3F)
  {
    result = sub_1BE04B5D4();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_1BD4868F4()
{
  sub_1BD486968();
  if (v0 <= 0x3F)
  {
    sub_1BD4869CC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1BD486968()
{
  if (!qword_1EBD471C8)
  {
    v0 = sub_1BE052274();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD471C8);
    }
  }
}

void sub_1BD4869CC()
{
  if (!qword_1EBD471D0)
  {
    sub_1BE04B7C4();
    v0 = sub_1BE0534B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD471D0);
    }
  }
}

uint64_t sub_1BD486A24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD486A8C()
{
  v1 = *(type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1BD486548(v3, v0 + v2, v4);
}

uint64_t sub_1BD486B3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_22Tm()
{
  v1 = sub_1BE04B7C4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  if (*(v0 + 16))
  {
  }

  (*(v2 + 8))(v0 + ((v3 + 32) & ~v3), v1);

  return swift_deallocObject();
}

unint64_t sub_1BD486CEC()
{
  result = qword_1EBD471E8;
  if (!qword_1EBD471E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD471E8);
  }

  return result;
}

unint64_t sub_1BD486D54()
{
  result = qword_1EBD471F0;
  if (!qword_1EBD471F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD471F0);
  }

  return result;
}

uint64_t sub_1BD486DB8@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v57[2] = a3;
  v58 = a1;
  v59 = a2;
  v65 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5BB60);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v66 = v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v64 = v57 - v10;
  v11 = sub_1BE050474();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0);
  v61 = *(v16 - 8);
  v62 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v60 = v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = v57 - v21;
  v67 = sub_1BD487FF0(a3);
  v68 = v23;
  v57[1] = sub_1BD0DDEBC();
  v24 = sub_1BE0506C4();
  v26 = v25;
  v28 = v27;
  (*(v12 + 104))(v15, *MEMORY[0x1E6980EF8], v11);
  sub_1BE0503A4();
  sub_1BE050284();
  (*(v12 + 8))(v15, v11);
  v29 = sub_1BE0505F4();
  v31 = v30;
  LOBYTE(v11) = v32;
  v34 = v33;

  sub_1BD0DDF10(v24, v26, v28 & 1);

  v67 = v29;
  v68 = v31;
  v69 = v11 & 1;
  v70 = v34;
  sub_1BE052434();
  v63 = v22;
  sub_1BE050DE4();

  sub_1BD0DDF10(v29, v31, v11 & 1);

  v35 = sub_1BD4872D0(v58, v59);
  if (v36)
  {
    v67 = v35;
    v68 = v36;
    v37 = sub_1BE0506C4();
    v39 = v38;
    v41 = v40;
    sub_1BE051494();
    v42 = sub_1BE050564();
    v44 = v43;
    v46 = v45;
    v48 = v47;

    sub_1BD0DDF10(v37, v39, v41 & 1);

    v67 = v42;
    v68 = v44;
    LOBYTE(v37) = v46 & 1;
    v69 = v46 & 1;
    v70 = v48;
    sub_1BE052434();
    v49 = v60;
    sub_1BE050DE4();

    sub_1BD0DDF10(v42, v44, v37);

    v50 = v64;
    sub_1BD133260(v49, v64);
    v51 = 0;
  }

  else
  {
    v51 = 1;
    v50 = v64;
    v49 = v60;
  }

  (*(v61 + 56))(v50, v51, 1, v62);
  v52 = v63;
  sub_1BD0DE19C(v63, v49, &qword_1EBD452C0);
  v53 = v66;
  sub_1BD0DE19C(v50, v66, &unk_1EBD5BB60);
  v54 = v65;
  sub_1BD0DE19C(v49, v65, &qword_1EBD452C0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47228);
  sub_1BD0DE19C(v53, v54 + *(v55 + 48), &unk_1EBD5BB60);
  sub_1BD0DE53C(v50, &unk_1EBD5BB60);
  sub_1BD0DE53C(v52, &qword_1EBD452C0);
  sub_1BD0DE53C(v53, &unk_1EBD5BB60);
  return sub_1BD0DE53C(v49, &qword_1EBD452C0);
}

uint64_t sub_1BD4872D0(void *a1, void *a2)
{
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1;
  if ([v9 type] == 1 && (objc_opt_self(), (v10 = swift_dynamicCastObjCClass()) != 0))
  {
    v11 = [v10 selectedOffer];

    if (v11)
    {
      v12 = [v11 rewardsSelectedPaymentOffer];

      if (v12)
      {
        v13 = [v12 rewardsRedemptionIntent];
        v14 = [v13 programName];

        v15 = sub_1BE052434();
        return v15;
      }
    }
  }

  else
  {
  }

  if (a2 && (v16 = [a2 programName]) != 0)
  {
    v17 = v16;
    v15 = sub_1BE052434();
  }

  else
  {
    (*(v5 + 104))(v8, *MEMORY[0x1E69B8078], v4);
    v15 = sub_1BE04B714();
    (*(v5 + 8))(v8, v4);
  }

  return v15;
}

double sub_1BD487504@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  *a1 = sub_1BE04F7C4();
  *(a1 + 8) = 0x4014000000000000;
  *(a1 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47218);
  sub_1BD486DB8(v3, v4, v5, a1 + *(v6 + 44));
  LOBYTE(v5) = sub_1BE0501D4();
  v7 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47220) + 36);
  *v7 = v5;
  result = 0.0;
  *(v7 + 8) = 0u;
  *(v7 + 24) = 0u;
  *(v7 + 40) = 1;
  return result;
}

unint64_t sub_1BD4875CC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1BD488194(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t PKPaymentOfferConfirmationRecordDetailCell.configure(withConfirmationRecord:transaction:installmentCriteria:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD471F8);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v13[-v10];
  v14 = a1;
  v15 = a3;
  v16 = a2;
  v17 = ObjectType;
  sub_1BD4881B0();
  sub_1BE04FCE4();
  sub_1BE0501D4();
  v18[3] = v7;
  v18[4] = sub_1BD0DE4F4(&qword_1EBD47208, &qword_1EBD471F8);
  __swift_allocate_boxed_opaque_existential_1(v18);
  sub_1BE04FCD4();
  (*(v8 + 8))(v11, v7);
  return MEMORY[0x1BFB3FD10](v18);
}

id sub_1BD487798@<X0>(id a1@<X2>, void *a2@<X0>, void *a3@<X1>, void *a4@<X8>)
{
  v6 = _s9PassKitUI42PKPaymentOfferConfirmationRecordDetailCellC6status3for11transaction19installmentCriteriaAA0defghI6StatusOSo0defG0CSg_So0D11TransactionCSo0de11InstallmentN0CSgtFZ_0(a2, a1, a3);
  *a4 = a2;
  a4[1] = a3;
  a4[2] = v6;
  v7 = a3;

  return a2;
}

id PKPaymentOfferConfirmationRecordDetailCell.__allocating_init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = sub_1BE052404();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v6];

  return v7;
}

id PKPaymentOfferConfirmationRecordDetailCell.init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    v7 = sub_1BE052404();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, sel_initWithStyle_reuseIdentifier_, a1, v7);

  return v8;
}

id PKPaymentOfferConfirmationRecordDetailCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id PKPaymentOfferConfirmationRecordDetailCell.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id PKPaymentOfferConfirmationRecordDetailCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s9PassKitUI42PKPaymentOfferConfirmationRecordDetailCellC6status3for11transaction19installmentCriteriaAA0defghI6StatusOSo0defG0CSg_So0D11TransactionCSo0de11InstallmentN0CSgtFZ_0(void *a1, id a2, void *a3)
{
  if ([a2 transactionStatus] == 2)
  {
    return 0;
  }

  if ([a2 isIssuerInstallmentTransaction])
  {
    result = 3;
  }

  else
  {
    result = 0;
  }

  if (a1)
  {
    v7 = a1;
    v8 = [v7 type];
    if (v8 > 1)
    {
      if (v8 == 3 && a3)
      {
        v19 = objc_allocWithZone(MEMORY[0x1E69B8C98]);
        v20 = a3;
        v21 = [v19 initWithTransaction_];
        LODWORD(v19) = [v20 eligibleWithConfiguration_];

        return v19;
      }
    }

    else if (v8 == 1)
    {
      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();
      if (v9)
      {
        v10 = v9;
        v11 = objc_allocWithZone(MEMORY[0x1E69B8C98]);
        v12 = v7;
        v13 = [v11 initWithTransaction_];
        if (!a3 || ([a3 eligibleWithConfiguration_] & 1) != 0)
        {
          v14 = [v10 selectedOffer];
          v15 = [v14 installmentSelectedPaymentOffer];
          v16 = v15;
          if (v15)
          {
            v17 = v15;
            v18 = [v17 requiresUserAction];

            if (v18)
            {

              return 1;
            }

            if ([v10 processedEvents])
            {
              v22 = [v17 installmentAssessment];
              if (v22)
              {
                v23 = v22;
                v24 = [v22 isEligible];

                if (v24)
                {
                  return 3;
                }

                else
                {
                  return 2;
                }
              }

              goto LABEL_30;
            }
          }

          else
          {

            if ([v10 processedEvents])
            {
LABEL_30:

              return 0;
            }
          }

          return 1;
        }

        return 0;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1BD487FF0(uint64_t a1)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v5.n128_f64[0] = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > 1)
  {
    if (a1 == 3 || a1 == 2)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (!a1)
    {
      return a1;
    }

    if (a1 == 1)
    {
LABEL_9:
      (*(v3 + 104))(v7, *MEMORY[0x1E69B8078], v2, v5);
      a1 = sub_1BE04B714();
      (*(v3 + 8))(v7, v2);
      return a1;
    }
  }

  v9[1] = a1;
  result = sub_1BE053BE4();
  __break(1u);
  return result;
}

unint64_t sub_1BD488194(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1BD4881B0()
{
  result = qword_1EBD47200;
  if (!qword_1EBD47200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47200);
  }

  return result;
}

unint64_t sub_1BD488208()
{
  result = qword_1EBD47210;
  if (!qword_1EBD47210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47210);
  }

  return result;
}

unint64_t sub_1BD4882BC()
{
  result = qword_1EBD47230;
  if (!qword_1EBD47230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47220);
    sub_1BD0DE4F4(&qword_1EBD47238, &qword_1EBD47240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47230);
  }

  return result;
}

void sub_1BD4883A0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

char *sub_1BD4883EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BE053274();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v31 - v13;
  *&v3[OBJC_IVAR____TtC9PassKitUI31PKChangeTransactionCategoryCell_categories] = &unk_1F3B8E1B0;
  *&v3[OBJC_IVAR____TtC9PassKitUI31PKChangeTransactionCategoryCell_changeCategoryButton] = 0;
  v15 = OBJC_IVAR____TtC9PassKitUI31PKChangeTransactionCategoryCell_transactionCategoryIconsCache;
  *&v3[v15] = [objc_allocWithZone(MEMORY[0x1E695DEE0]) init];
  if (a3)
  {
    v16 = sub_1BE052404();
  }

  else
  {
    v16 = 0;
  }

  v17 = type metadata accessor for PKChangeTransactionCategoryCell();
  v31.receiver = v3;
  v31.super_class = v17;
  v18 = objc_msgSendSuper2(&v31, sel_initWithStyle_reuseIdentifier_, a1, v16);

  v19 = v18;
  sub_1BE053224();
  v20 = [objc_opt_self() labelColor];
  sub_1BE0531E4();
  v21 = [v19 traitCollection];

  v22 = [v21 preferredContentSizeCategory];
  sub_1BD489F18();

  _UISolariumFeatureFlagEnabled();
  sub_1BE053144();
  sub_1BD0E5E8C(0, &qword_1EBD4A9F0);
  (*(v7 + 16))(v10, v14, v6);
  v23 = sub_1BE053284();
  [v23 setShowsMenuAsPrimaryAction_];
  v24 = v19;
  v25 = [v24 contentView];
  v26 = v23;
  [v25 addSubview_];

  v27 = *&v24[OBJC_IVAR____TtC9PassKitUI31PKChangeTransactionCategoryCell_changeCategoryButton];
  *&v24[OBJC_IVAR____TtC9PassKitUI31PKChangeTransactionCategoryCell_changeCategoryButton] = v26;
  v28 = v26;

  v29 = [v24 textLabel];
  PKAccessibilityIDSet(v29, *MEMORY[0x1E69B9D20]);

  PKAccessibilityIDSet(v28, *MEMORY[0x1E69B9DC0]);
  [v24 setSelectionStyle_];

  (*(v7 + 8))(v14, v6);
  return v24;
}

void sub_1BD4888D8(char a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  v12 = sub_1BE04D324();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D100);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v21 = &v79 - v20;
  [v5 pkui_effectiveLayoutMargins];
  v23 = PKEdgeInsetsInsetRectTm(a2, a3, a4, a5, 4.0, v22);
  v25 = v24;
  v88 = v26;
  v89 = v27;
  v28 = [v5 _shouldReverseLayoutDirection];
  v29 = v28;
  if (v28)
  {
    v30 = 0;
  }

  else
  {
    v30 = 2;
  }

  v80 = v30;
  if (v28)
  {
    v31 = 2;
  }

  else
  {
    v31 = 0;
  }

  v83 = v31;
  v32 = [v5 textLabel];
  if (!v32)
  {
    __break(1u);
    goto LABEL_38;
  }

  v33 = v32;
  v86 = a2;
  [v32 sizeThatFits_];
  v35 = v34;
  v37 = v36;

  v38 = OBJC_IVAR____TtC9PassKitUI31PKChangeTransactionCategoryCell_changeCategoryButton;
  v39 = *&v6[OBJC_IVAR____TtC9PassKitUI31PKChangeTransactionCategoryCell_changeCategoryButton];
  if (!v39)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  [v39 sizeThatFits_];
  v87 = v41;
  v42 = *&v6[v38];
  if (!v42)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v43 = v40;
  v84 = a3;
  v85 = a4;
  v44 = v42;
  sub_1BE053294();

  v45 = sub_1BE053274();
  v46 = a5;
  if ((*(*(v45 - 8) + 48))(v21, 1, v45))
  {
    v47 = *(MEMORY[0x1E69DC5C0] + 24);
    v81 = *(MEMORY[0x1E69DC5C0] + 8);
    v82 = v47;
  }

  else
  {
    sub_1BE053154();
    v81 = v48;
    v82 = v49;
  }

  v51 = v88;
  v50 = v89;
  sub_1BD4895D8(v21);
  v90.origin.x = v23;
  v90.origin.y = v25;
  v90.size.width = v51;
  v90.size.height = v50;
  v52 = CGRectGetWidth(v90) + -8.0;
  sub_1BE04D2F4();
  v53 = [v6 traitCollection];
  sub_1BE04D2C4();
  v55 = v54;

  (*(v13 + 8))(v16, v12);
  if (v35 + v87 > v52)
  {
    if (v37 + v43 + 4.0 > v55)
    {
      v56 = v37 + v43 + 4.0;
    }

    else
    {
      v56 = v55;
    }

    if ((a1 & 1) == 0)
    {
      v79 = v56;
      v57 = [v6 textLabel];
      if (v57)
      {
        v58 = v57;
        v59 = v46;
        PKContentAlignmentMake();
        PKSizeAlignedInRect();
        [v58 setFrame_];

        v60 = *&v6[v38];
        v62 = v84;
        v61 = v85;
        if (v60)
        {
          v63 = v60;
          PKContentAlignmentMake();
          PKSizeAlignedInRect();
          v68 = -v81;
          if (v29)
          {
            v68 = v82;
          }

LABEL_35:
          v91 = CGRectOffset(*&v64, v68, 0.0);
          [v63 setFrame_];

          v72 = v86;
          goto LABEL_36;
        }

        goto LABEL_42;
      }

      goto LABEL_40;
    }

LABEL_30:
    v59 = v46;
    v62 = v84;
    v61 = v85;
    v72 = v86;
LABEL_36:
    v76 = v62;
    v77 = v61;
    v78 = v59;
    CGRectGetWidth(*&v72);
    return;
  }

  if (v37 > v43)
  {
    v69 = v37;
  }

  else
  {
    v69 = v43;
  }

  v70 = v69 + 8.0;
  if (v70 > v55)
  {
    v71 = v70;
  }

  else
  {
    v71 = v55;
  }

  if (a1)
  {
    goto LABEL_30;
  }

  v79 = v71;
  v73 = [v6 textLabel];
  if (!v73)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v74 = v73;
  v59 = v46;
  PKContentAlignmentMake();
  PKSizeAlignedInRect();
  [v74 setFrame_];

  v75 = *&v6[v38];
  v62 = v84;
  v61 = v85;
  if (v75)
  {
    v63 = v75;
    PKContentAlignmentMake();
    PKSizeAlignedInRect();
    v68 = -v81;
    if (!v29)
    {
      v68 = v82;
    }

    goto LABEL_35;
  }

LABEL_43:
  __break(1u);
}

void sub_1BD488E1C(unint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v62 = a3;
  v63 = a4;
  v68 = sub_1BE04D214();
  v66 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68, v7);
  v9 = v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v64 = v58 - v12;
  v67 = sub_1BE053254();
  v13 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67, v14);
  v16 = v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D100);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21, v22);
  v25 = v58 - v24;
  v69 = v4;
  v26 = [v4 textLabel];
  if (v26)
  {
    v27 = v26;
    v28 = sub_1BE052404();
    v29 = PKLocalizedPaymentString(v28);

    [v27 setText_];
  }

  v30 = OBJC_IVAR____TtC9PassKitUI31PKChangeTransactionCategoryCell_changeCategoryButton;
  v31 = *&v69[OBJC_IVAR____TtC9PassKitUI31PKChangeTransactionCategoryCell_changeCategoryButton];
  if (!v31)
  {
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v32 = v31;
  sub_1BE053294();
  v33 = sub_1BE053274();
  if ((*(*(v33 - 8) + 48))(v25, 1, v33))
  {
    sub_1BD3BE7F8(v25, v20);
    sub_1BE0532A4();

    sub_1BD4895D8(v25);
  }

  else
  {
    v34 = MEMORY[0x1E69DC588];
    if ((a2 & 1) == 0)
    {
      v34 = MEMORY[0x1E69DC580];
    }

    (*(v13 + 104))(v16, *v34, v67);
    sub_1BE053264();
    sub_1BE0532A4();
  }

  v35 = *&v69[v30];
  if (!v35)
  {
    goto LABEL_41;
  }

  [v35 setUserInteractionEnabled_];
  if ((a2 & 1) == 0)
  {
    v53 = *&v69[v30];
    if (v53)
    {
      [v53 setMenu_];
LABEL_37:
      v56 = v69;
      sub_1BD48978C(a1);
      [v56 setNeedsLayout];
      return;
    }

    goto LABEL_42;
  }

  v60 = v30;
  v37 = *&v69[OBJC_IVAR____TtC9PassKitUI31PKChangeTransactionCategoryCell_categories];
  v38 = MEMORY[0x1E69E7CC0];
  v70 = MEMORY[0x1E69E7CC0];
  v39 = *(v37 + 16);
  if (v39)
  {
    v40 = 0;
    v41 = (v66 + 8);
    v66 = *(v37 + 16);
    v67 = v37 + 32;
    v59 = v39 - 1;
    *&v36 = 134217984;
    v65 = v36;
    v61 = a1;
    do
    {
      a1 = v40;
      v42 = v66;
      while (1)
      {
        if (a1 >= *(v37 + 16))
        {
          __break(1u);
          goto LABEL_39;
        }

        v43 = *(v67 + 8 * a1);
        v44 = PKLocalizedStringFromMerchantCategory();
        if (!v44)
        {
          v25 = v64;
          sub_1BE04D1E4();
          v46 = sub_1BE04D204();
          v49 = sub_1BE052C34();
          if (!os_log_type_enabled(v46, v49))
          {
            goto LABEL_16;
          }

          v48 = swift_slowAlloc();
          *v48 = v65;
          *(v48 + 4) = v43;
          _os_log_impl(&dword_1BD026000, v46, v49, "Failed to localize transaction category %ld.", v48, 0xCu);
          goto LABEL_24;
        }

        v45 = v44;
        sub_1BE052434();

        if (sub_1BD4899FC(v43))
        {
          break;
        }

        sub_1BE04D1E4();
        v46 = sub_1BE04D204();
        v47 = sub_1BE052C34();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          *v48 = v65;
          *(v48 + 4) = v43;
          _os_log_impl(&dword_1BD026000, v46, v47, "Failed to create an icon for transaction category %ld.", v48, 0xCu);
          v25 = v9;
LABEL_24:
          MEMORY[0x1BFB45F20](v48, -1, -1);
          goto LABEL_15;
        }

        v25 = v9;
LABEL_15:
        v42 = v66;
LABEL_16:
        ++a1;

        (*v41)(v25, v68);
        if (v42 == a1)
        {
          a1 = v61;
          goto LABEL_33;
        }
      }

      v58[1] = v43 == v61;
      v58[0] = sub_1BD0E5E8C(0, &qword_1EBD3ECB0);
      v50 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v51 = swift_allocObject();
      v51[2] = v50;
      v51[3] = v43;
      v51[4] = v62;
      v51[5] = v63;
      sub_1BE048964();
      v25 = sub_1BE0530B4();
      MEMORY[0x1BFB3F7A0]();
      if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BE052774();
      }

      v40 = a1 + 1;
      sub_1BE0527C4();
      v38 = v70;
      v52 = v59 == a1;
      a1 = v61;
    }

    while (!v52);
  }

LABEL_33:
  v25 = *&v69[v60];
  if (v25)
  {
    if (v38 >> 62)
    {
LABEL_39:
      sub_1BD0E5E8C(0, &unk_1EBD53960);
      v57 = v25;
      sub_1BE048C84();
      sub_1BE0539A4();
    }

    else
    {
      v54 = v25;
      sub_1BE048C84();
      sub_1BE053BA4();
      sub_1BD0E5E8C(0, &unk_1EBD53960);
    }

    sub_1BD0E5E8C(0, &qword_1EBD47258);
    v55 = sub_1BE052F64();
    [v25 setMenu_];

    goto LABEL_37;
  }

LABEL_43:
  __break(1u);
}

uint64_t sub_1BD4895D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D100);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD489640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_1BD48978C(a3);
  }

  return a4(a3);
}

void sub_1BD48978C(uint64_t a1)
{
  v23 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D100);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v22 - v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v22 - v12;
  v14 = OBJC_IVAR____TtC9PassKitUI31PKChangeTransactionCategoryCell_changeCategoryButton;
  v15 = *&v1[OBJC_IVAR____TtC9PassKitUI31PKChangeTransactionCategoryCell_changeCategoryButton];
  if (v15)
  {
    v16 = v15;
    sub_1BE053294();
    v17 = sub_1BE053274();
    v18 = *(*(v17 - 8) + 48);
    if (v18(v13, 1, v17))
    {
      sub_1BD3BE7F8(v13, v5);
      sub_1BE0532A4();

      sub_1BD4895D8(v13);
      v19 = *&v1[v14];
      if (v19)
      {
        goto LABEL_4;
      }
    }

    else
    {
      sub_1BD4899FC(v23);
      sub_1BE053214();
      sub_1BE0532A4();

      v19 = *&v1[v14];
      if (v19)
      {
LABEL_4:
        v13 = v19;
        sub_1BE053294();
        if (v18(v9, 1, v17))
        {
          sub_1BD3BE7F8(v9, v5);
          sub_1BE0532A4();

          sub_1BD4895D8(v9);
LABEL_11:
          [v1 setNeedsLayout];
          [v1 layoutIfNeeded];
          return;
        }

LABEL_8:
        v20 = PKLocalizedStringFromMerchantCategory();
        if (v20)
        {
          v21 = v20;
          sub_1BE052434();
        }

        sub_1BE053234();
        sub_1BE0532A4();

        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_1BD4899FC(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v3 = *&v1[OBJC_IVAR____TtC9PassKitUI31PKChangeTransactionCategoryCell_transactionCategoryIconsCache];
  v4 = [v3 objectForKey_];
  if (v4)
  {
    v5 = v4;

LABEL_3:
    v6 = 0;
LABEL_7:
    sub_1BD0D4744(v6);
    return v5;
  }

  v7 = [v1 traitCollection];
  v8 = [v7 preferredContentSizeCategory];
  sub_1BD489F18();

  PKUIScreenScale();
  v9 = PKMapsIconForMerchantCategory();
  if (!v9)
  {

    v5 = 0;
    goto LABEL_3;
  }

  v10 = v9;
  [v9 size];
  v12 = v11;
  v14 = v13;
  [v10 size];
  v17 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v12;
  v18[5] = v14;
  v18[6] = v1;
  v18[7] = v10;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1BD48A5EC;
  *(v19 + 24) = v18;
  v24[4] = sub_1BD1B6CB0;
  v24[5] = v19;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 1107296256;
  v24[2] = sub_1BD4883A0;
  v24[3] = &block_descriptor_102;
  v20 = _Block_copy(v24);
  v21 = v1;
  v22 = v10;
  sub_1BE048964();

  v5 = [v17 imageWithActions_];

  _Block_release(v20);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if ((v10 & 1) == 0)
  {
    [v3 setObject:v5 forKey:v2];

    v6 = sub_1BD48A5EC;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

void sub_1BD489D00(int a1, id a2, double a3, double a4, double a5, double a6, void *a7)
{
  v12 = [a2 traitCollection];
  v13 = [v12 preferredContentSizeCategory];
  sub_1BD489F18();
  v15 = v14;

  LODWORD(v13) = _UISolariumFeatureFlagEnabled();
  v16 = 4.0;
  if (v13)
  {
    v16 = 6.0;
  }

  v17 = [objc_opt_self() bezierPathWithRoundedRect:a3 cornerRadius:{a4, a5, a6, v15 * v16}];
  [v17 addClip];
  [a7 drawInRect_];
}

id PKChangeTransactionCategoryCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PKChangeTransactionCategoryCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BD489F18()
{
  v0 = sub_1BE052434();
  v2 = v1;
  if (v0 == sub_1BE052434() && v2 == v3)
  {
    goto LABEL_48;
  }

  v5 = sub_1BE053B84();

  if (v5)
  {
    return result;
  }

  v7 = sub_1BE052434();
  v9 = v8;
  if (v7 == sub_1BE052434() && v9 == v10)
  {
    goto LABEL_21;
  }

  v12 = sub_1BE053B84();

  if ((v12 & 1) == 0)
  {
    v13 = sub_1BE052434();
    v15 = v14;
    if (v13 == sub_1BE052434() && v15 == v16)
    {
      goto LABEL_48;
    }

    v17 = sub_1BE053B84();

    if ((v17 & 1) == 0)
    {
      v18 = sub_1BE052434();
      v20 = v19;
      if (v18 == sub_1BE052434() && v20 == v21)
      {
        goto LABEL_48;
      }

      v22 = sub_1BE053B84();

      if (v22)
      {
        return result;
      }

      v23 = sub_1BE052434();
      v25 = v24;
      if (v23 == sub_1BE052434() && v25 == v26)
      {
        goto LABEL_21;
      }

      v27 = sub_1BE053B84();

      if ((v27 & 1) == 0)
      {
        v28 = sub_1BE052434();
        v30 = v29;
        if (v28 == sub_1BE052434() && v30 == v31)
        {
          goto LABEL_48;
        }

        v32 = sub_1BE053B84();

        if ((v32 & 1) == 0)
        {
          v33 = sub_1BE052434();
          v35 = v34;
          if (v33 == sub_1BE052434() && v35 == v36)
          {
            goto LABEL_48;
          }

          v37 = sub_1BE053B84();

          if (v37)
          {
            return result;
          }

          v38 = sub_1BE052434();
          v40 = v39;
          if (v38 == sub_1BE052434() && v40 == v41)
          {
            goto LABEL_48;
          }

          v42 = sub_1BE053B84();

          if (v42)
          {
            return result;
          }

          v43 = sub_1BE052434();
          v45 = v44;
          if (v43 == sub_1BE052434() && v45 == v46)
          {
LABEL_48:
          }

          v47 = sub_1BE053B84();

          if (v47)
          {
            return result;
          }

          v48 = sub_1BE052434();
          v50 = v49;
          if (v48 != sub_1BE052434() || v50 != v51)
          {
            v52 = sub_1BE053B84();

            if (v52)
            {
              return result;
            }

            v53 = sub_1BE052434();
            v55 = v54;
            if (v53 != sub_1BE052434() || v55 != v56)
            {
              v57 = sub_1BE053B84();

              if (v57)
              {
                return result;
              }

              v58 = sub_1BE052434();
              v60 = v59;
              if (v58 != sub_1BE052434() || v60 != v61)
              {
                sub_1BE053B84();
              }
            }

            goto LABEL_48;
          }

LABEL_21:
        }
      }
    }
  }

  return result;
}

void sub_1BD48A548()
{
  *(v0 + OBJC_IVAR____TtC9PassKitUI31PKChangeTransactionCategoryCell_categories) = &unk_1F3B8E208;
  *(v0 + OBJC_IVAR____TtC9PassKitUI31PKChangeTransactionCategoryCell_changeCategoryButton) = 0;
  v1 = OBJC_IVAR____TtC9PassKitUI31PKChangeTransactionCategoryCell_transactionCategoryIconsCache;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E695DEE0]) init];
  sub_1BE053994();
  __break(1u);
}

uint64_t sub_1BD48A5FC()
{

  sub_1BD0D4534(v0 + 32);

  return swift_deallocClassInstance();
}

id sub_1BD48A678(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    ObjectType = swift_getObjectType();
    if ((*(a2 + 8))(ObjectType, a2) == 0xD000000000000015 && 0x80000001BE12B2D0 == v5)
    {

      v8 = v2[8];
      if (v8)
      {
LABEL_8:
        v9 = objc_allocWithZone(type metadata accessor for ProvisioningPassIngestionSection());
        v10 = v8;
        v11 = sub_1BE048964();
        v12 = sub_1BD989980(v11, v10);

        return v12;
      }
    }

    else
    {
      v7 = sub_1BE053B84();

      if (v7)
      {
        v8 = v2[8];
        if (v8)
        {
          goto LABEL_8;
        }
      }
    }

    return 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38570);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1BE0B6CA0;
    v16 = v2[2];
    v15 = v2[3];
    v17 = type metadata accessor for ProvisioningDeviceFullFlowItem();
    v18 = objc_allocWithZone(v17);
    v18[OBJC_IVAR____TtC9PassKitUI30ProvisioningDeviceFullFlowItem_didComplete] = 0;
    *&v18[OBJC_IVAR____TtC9PassKitUI30ProvisioningDeviceFullFlowItem_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v19 = &v18[OBJC_IVAR____TtC9PassKitUI30ProvisioningDeviceFullFlowItem_identifier];
    *v19 = 0xD000000000000012;
    v19[1] = 0x80000001BE12B2F0;
    v20 = OBJC_IVAR____TtC9PassKitUI30ProvisioningDeviceFullFlowItem_dismissalConfiguration;
    v18[OBJC_IVAR____TtC9PassKitUI30ProvisioningDeviceFullFlowItem_dismissalConfiguration] = 2;
    *&v18[OBJC_IVAR____TtC9PassKitUI30ProvisioningDeviceFullFlowItem_context] = v16;
    *&v18[OBJC_IVAR____TtC9PassKitUI30ProvisioningDeviceFullFlowItem_configuration] = v15;
    v18[v20] = 1;
    v24.receiver = v18;
    v24.super_class = v17;
    sub_1BE048964();
    sub_1BE048964();
    *(v14 + 32) = objc_msgSendSuper2(&v24, sel_init);
    *(v14 + 40) = &off_1F3BC2038;
    v21 = objc_allocWithZone(type metadata accessor for ProvisioningPushProvAddPassFlowItem());
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048964();
    v22 = sub_1BD89A220(v16, v15);

    *(v14 + 48) = v22;
    *(v14 + 56) = &off_1F3BC2378;
    type metadata accessor for UIStaticFlowSection();
    v23 = swift_allocObject();
    *(v23 + 24) = 0;
    swift_unknownObjectWeakInit();
    result = v23;
    *(v23 + 40) = 0xD000000000000015;
    *(v23 + 48) = 0x80000001BE12B2D0;
    *(v23 + 56) = v14;
    *(v23 + 32) = 514;
  }

  return result;
}

uint64_t sub_1BD48A950()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD528E0);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v18[0] = v18 - v2;
  v3 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v5 = sub_1BE04A874();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v12 = sub_1BE04A884();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v15 = sub_1BE048E94();
  __swift_allocate_value_buffer(v15, qword_1EBDAB0B8);
  __swift_project_value_buffer(v15, qword_1EBDAB0B8);
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v5, qword_1EBDAB400);
  (*(v6 + 16))(v9, v16, v5);
  sub_1BE04B0A4();
  sub_1BE04A894();
  (*(v13 + 56))(v18[0], 1, 1, v12);
  return sub_1BE048E84();
}

uint64_t sub_1BD48AC60()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38B88);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v63 = &v42 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD528E0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v57 = &v42 - v5;
  v6 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v8 = sub_1BE04A874();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v60 = sub_1BE04A884();
  v15 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60, v16);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47368);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BF18);
  v20 = (*(*(v19 - 8) + 80) + 32) & ~*(*(v19 - 8) + 80);
  v55 = *(*(v19 - 8) + 72);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1BE0B6CA0;
  v56 = v21;
  v61 = v21 + v20;
  v62 = v19;
  v54 = *(v19 + 48);
  *(v21 + v20) = 0;
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v58 = __swift_project_value_buffer(v8, qword_1EBDAB400);
  v45 = *(v9 + 16);
  v45(v12, v58, v8);
  sub_1BE04B0A4();
  v59 = v18;
  sub_1BE04A894();
  v23 = *(v15 + 56);
  v22 = v15 + 56;
  v53 = v23;
  v24 = v57;
  v23(v57, 1, 1, v60);
  v51 = sub_1BE048BB4();
  v25 = *(v51 - 8);
  v50 = *(v25 + 56);
  v52 = v25 + 56;
  v50(v63, 1, 1, v51);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38BA0);
  v27 = *(v22 + 16);
  v48 = v26;
  v49 = v27;
  v47 = *(v22 + 24);
  v28 = v8;
  v43 = v8;
  v29 = v24;
  v44 = (v47 + 32) & ~v47;
  v30 = swift_allocObject();
  v42 = v9 + 16;
  v46 = xmmword_1BE0B69E0;
  *(v30 + 16) = xmmword_1BE0B69E0;
  sub_1BE052354();
  v31 = v12;
  v32 = v12;
  v33 = v58;
  v34 = v28;
  v35 = v45;
  v45(v31, v58, v34);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v36 = v61;
  sub_1BE048BD4();
  v37 = *(v62 + 48);
  v54 = (v36 + v55);
  v55 = v37;
  *v54 = 1;
  sub_1BE052354();
  v38 = v33;
  v39 = v43;
  v35(v32, v38, v43);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v53(v29, 1, 1, v60);
  v50(v63, 1, 1, v51);
  *(swift_allocObject() + 16) = v46;
  sub_1BE052354();
  v35(v32, v58, v39);
  sub_1BE04B0A4();
  sub_1BE04A894();
  sub_1BE048BD4();
  v40 = sub_1BD1ACF7C(v56);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_1EBDAB0D0 = v40;
  return result;
}

uint64_t sub_1BD48B398(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7761726468746977;
  }

  else
  {
    v3 = 0x79656E6F4D646461;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xED000079656E6F4DLL;
  }

  if (*a2)
  {
    v5 = 0x7761726468746977;
  }

  else
  {
    v5 = 0x79656E6F4D646461;
  }

  if (*a2)
  {
    v6 = 0xED000079656E6F4DLL;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1BE053B84();
  }

  return v8 & 1;
}

unint64_t sub_1BD48B450()
{
  result = qword_1EBD47268;
  if (!qword_1EBD47268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47268);
  }

  return result;
}

uint64_t sub_1BD48B4A4()
{
  sub_1BE053D04();
  sub_1BE052524();

  return sub_1BE053D64();
}

uint64_t sub_1BD48B534()
{
  sub_1BE052524();
}

uint64_t sub_1BD48B5B0()
{
  sub_1BE053D04();
  sub_1BE052524();

  return sub_1BE053D64();
}

uint64_t sub_1BD48B63C@<X0>(char *a1@<X8>)
{
  v2 = sub_1BE053A44();

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

void sub_1BD48B69C(uint64_t *a1@<X8>)
{
  v2 = 0x79656E6F4D646461;
  if (*v1)
  {
    v2 = 0x7761726468746977;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xED000079656E6F4DLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_1BD48B6EC()
{
  result = qword_1EBD47270;
  if (!qword_1EBD47270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47270);
  }

  return result;
}

unint64_t sub_1BD48B744()
{
  result = qword_1EBD47278;
  if (!qword_1EBD47278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47278);
  }

  return result;
}

unint64_t sub_1BD48B79C()
{
  result = qword_1EBD47280;
  if (!qword_1EBD47280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47280);
  }

  return result;
}

unint64_t sub_1BD48B7F4()
{
  result = qword_1EBD47288;
  if (!qword_1EBD47288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47288);
  }

  return result;
}

unint64_t sub_1BD48B848()
{
  result = qword_1EBD47290;
  if (!qword_1EBD47290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47290);
  }

  return result;
}

unint64_t sub_1BD48B89C()
{
  result = qword_1EBD47298;
  if (!qword_1EBD47298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47298);
  }

  return result;
}

unint64_t sub_1BD48B8F4()
{
  result = qword_1EBD472A0;
  if (!qword_1EBD472A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD472A0);
  }

  return result;
}

unint64_t sub_1BD48B9D0()
{
  result = qword_1EBD472A8;
  if (!qword_1EBD472A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD472A8);
  }

  return result;
}

uint64_t sub_1BD48BA24(uint64_t a1)
{
  v2 = sub_1BD48B9D0();

  return MEMORY[0x1EEDB2C20](a1, v2);
}

unint64_t sub_1BD48BA74()
{
  result = qword_1EBD472B0;
  if (!qword_1EBD472B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD472B0);
  }

  return result;
}

unint64_t sub_1BD48BACC()
{
  result = qword_1EBD472B8;
  if (!qword_1EBD472B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD472B8);
  }

  return result;
}

unint64_t sub_1BD48BB24()
{
  result = qword_1EBD472C0;
  if (!qword_1EBD472C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD472C0);
  }

  return result;
}

uint64_t sub_1BD48BB78()
{
  if (qword_1EBD36C10 != -1)
  {
    swift_once();
  }

  return sub_1BE048C84();
}

uint64_t sub_1BD48BBD4()
{
  sub_1BD48B8F4();

  return sub_1BE048E14();
}

unint64_t sub_1BD48BC78()
{
  result = qword_1EBD472D8;
  if (!qword_1EBD472D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD472D8);
  }

  return result;
}

unint64_t sub_1BD48BCD0()
{
  result = qword_1EBD472E0;
  if (!qword_1EBD472E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD472E0);
  }

  return result;
}

uint64_t sub_1BD48BD5C()
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
  __swift_allocate_value_buffer(v9, qword_1EBDAB0D8);
  __swift_project_value_buffer(v9, qword_1EBDAB0D8);
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

uint64_t sub_1BD48BF70@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47320);
  v2 = *(v1 - 8);
  v37 = v1;
  v38 = v2;
  MEMORY[0x1EEE9AC00](v1, v3);
  v35 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v36 = v30 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47328);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v33 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v30 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v34 = v30 - v18;
  v43 = 0;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47330);
  v30[3] = sub_1BD48E044();
  v19 = sub_1BD48B89C();
  v30[2] = sub_1BD0DE4F4(&qword_1EBD47338, &qword_1EBD47330);
  sub_1BE048F04();
  v30[1] = sub_1BD0DE4F4(&qword_1EBD47340, &qword_1EBD47328);
  sub_1BE048ED4();
  v41 = *(v9 + 8);
  v31 = v15;
  v41(v15, v8);
  v32 = v9 + 8;
  v42 = 1;
  v20 = v33;
  v30[0] = v19;
  sub_1BE048F04();
  sub_1BE048ED4();
  v41(v20, v8);
  v21 = v35;
  sub_1BE048F24();
  sub_1BD0DE4F4(&qword_1EBD47348, &qword_1EBD47320);
  v22 = v36;
  v23 = v21;
  v24 = v37;
  sub_1BE048ED4();
  v25 = *(v38 + 8);
  v25(v23, v24);
  v26 = v34;
  v27 = v31;
  sub_1BE048EC4();
  v25(v22, v24);
  v28 = v41;
  v41(v27, v8);
  return v28(v26, v8);
}

uint64_t sub_1BD48C488@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v19[1] = a1;
  v19[2] = a2;
  v19[3] = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47350);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47358);
  MEMORY[0x1EEE9AC00](v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47330);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v19 - v14;
  sub_1BD48E044();
  sub_1BE048CE4();
  sub_1BE048CD4();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47360);
  sub_1BE048CC4();

  sub_1BE048CD4();
  sub_1BE048D04();
  sub_1BE048CA4();
  v16 = sub_1BD0DE4F4(&qword_1EBD47338, &qword_1EBD47330);
  MEMORY[0x1BFB35E60](v11, &type metadata for TransferSavingsIntent, v7, v16);
  v17 = *(v8 + 8);
  v17(v11, v7);
  MEMORY[0x1BFB35E50](v15, &type metadata for TransferSavingsIntent, v7, v16);
  return (v17)(v15, v7);
}

uint64_t sub_1BD48C75C@<X0>(uint64_t a1@<X8>)
{
  v15[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47350);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47330);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v15 - v10;
  sub_1BD48E044();
  sub_1BE048CF4();
  sub_1BE048CA4();
  v12 = sub_1BD0DE4F4(&qword_1EBD47338, &qword_1EBD47330);
  MEMORY[0x1BFB35E60](v7, &type metadata for TransferSavingsIntent, v3, v12);
  v13 = *(v4 + 8);
  v13(v7, v3);
  MEMORY[0x1BFB35E50](v11, &type metadata for TransferSavingsIntent, v3, v12);
  return (v13)(v11, v3);
}

uint64_t sub_1BD48C978(uint64_t a1, uint64_t a2)
{
  v2[19] = a1;
  v2[20] = a2;
  v3 = sub_1BE04D214();
  v2[21] = v3;
  v2[22] = *(v3 - 8);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  v2[25] = swift_task_alloc();
  v4 = sub_1BE04AA64();
  v2[26] = v4;
  v2[27] = *(v4 - 8);
  v2[28] = swift_task_alloc();
  v5 = sub_1BE04A3B4();
  v2[29] = v5;
  v2[30] = *(v5 - 8);
  v2[31] = swift_task_alloc();
  v6 = sub_1BE04CFC4();
  v2[32] = v6;
  v2[33] = *(v6 - 8);
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v7 = sub_1BE04CFE4();
  v2[36] = v7;
  v2[37] = *(v7 - 8);
  v2[38] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD48CBF8, 0, 0);
}

uint64_t sub_1BD48CBF8()
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
    _os_signpost_emit_with_name_impl(&dword_1BD026000, v1, v2, v4, "perform:TransferSavingsIntent", "", v3, 2u);
    MEMORY[0x1BFB45F20](v3, -1, -1);
  }

  v6 = v0[37];
  v5 = v0[38];
  v8 = v0[35];
  v7 = v0[36];
  v10 = v0[33];
  v9 = v0[34];
  v11 = v0[32];

  (*(v10 + 16))(v9, v8, v11);
  sub_1BE04D024();
  swift_allocObject();
  v0[39] = sub_1BE04D014();
  (*(v10 + 8))(v8, v11);
  (*(v6 + 8))(v5, v7);
  v12 = [objc_opt_self() sharedInstance];
  v0[40] = v12;
  if (v12)
  {
    v13 = v12;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1BD48CFEC;
    v14 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47308);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1BD16E918;
    v0[13] = &block_descriptor_103;
    v0[14] = v14;
    [v13 defaultAccountForFeature:5 completion:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    sub_1BE04D074();
    v15 = sub_1BE04D204();
    v16 = sub_1BE052C34();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1BD026000, v15, v16, "SavingsTransferIntent: Failed to get PKAccountService", v17, 2u);
      MEMORY[0x1BFB45F20](v17, -1, -1);
    }

    v19 = v0[22];
    v18 = v0[23];
    v20 = v0[21];

    (*(v19 + 8))(v18, v20);
    sub_1BE0484F4();
    sub_1BD1351C0();
    swift_allocError();
    sub_1BE0484E4();
    swift_willThrow();
    sub_1BD48DA08();

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_1BD48CFEC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 328) = v1;
  if (v1)
  {
    v2 = sub_1BD48D918;
  }

  else
  {
    v2 = sub_1BD48D0FC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

id sub_1BD48D0FC()
{
  v1 = *(v0 + 144);
  *(v0 + 336) = v1;
  if (!v1)
  {
    sub_1BE04D074();
    v10 = sub_1BE04D204();
    v11 = sub_1BE052C34();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1BD026000, v10, v11, "SavingsTransferIntent: Savings account not found", v12, 2u);
      MEMORY[0x1BFB45F20](v12, -1, -1);
    }

    v7 = *(v0 + 320);
    v13 = *(v0 + 192);
    v14 = *(v0 + 168);
    v15 = *(v0 + 176);

    (*(v15 + 8))(v13, v14);
    sub_1BD135218();
    swift_allocError();
    *v16 = 5;
    swift_willThrow();
    goto LABEL_15;
  }

  if ([v1 state] - 1 >= 3)
  {
    v7 = *(v0 + 320);
    sub_1BD135218();
    swift_allocError();
    v9 = 5;
    goto LABEL_14;
  }

  sub_1BE048874();
  if (*(v0 + 352))
  {
    if (([v1 supportsOneTimeWithdrawal] & 1) == 0 && !objc_msgSend(v1, sel_supportsOneTimeWithdrawalWithAppleCash))
    {
      goto LABEL_9;
    }

    result = [v1 savingsDetails];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v3 = result;
    v4 = [result accountSummary];

    v5 = [v4 currentBalance];
    if (!v5 || (v6 = [v5 pk_isPositiveNumber], v5, (v6 & 1) == 0))
    {
LABEL_9:
      v7 = *(v0 + 320);
      sub_1BD135218();
      swift_allocError();
      v9 = 8;
LABEL_14:
      *v8 = v9;
      swift_willThrow();

LABEL_15:
LABEL_16:
      sub_1BD48DA08();

      v17 = *(v0 + 8);

      return v17();
    }
  }

  else if (([v1 supportsOneTimeDeposit] & 1) == 0 && (objc_msgSend(v1, sel_supportsOneTimeDepositWithAppleCash) & 1) == 0)
  {
    v7 = *(v0 + 320);
    sub_1BD135218();
    swift_allocError();
    v9 = 3;
    goto LABEL_14;
  }

  v18 = *(v0 + 208);
  v19 = *(v0 + 216);
  v20 = *(v0 + 200);
  sub_1BE04A3A4();
  sub_1BE052434();
  sub_1BE04A394();
  v21 = sub_1BE052434();
  MEMORY[0x1BFB37400](v21);
  v22 = sub_1BD48DCF4();
  MEMORY[0x1BFB37410](v22);
  sub_1BE04A364();
  if ((*(v19 + 48))(v20, 1, v18) == 1)
  {
    v23 = *(v0 + 320);
    v25 = *(v0 + 240);
    v24 = *(v0 + 248);
    v26 = *(v0 + 232);
    sub_1BD226BBC(*(v0 + 200));
    sub_1BE0484F4();
    sub_1BD1351C0();
    swift_allocError();
    sub_1BE0484E4();
    swift_willThrow();

    (*(v25 + 8))(v24, v26);
    goto LABEL_16;
  }

  (*(*(v0 + 216) + 32))(*(v0 + 224), *(v0 + 200), *(v0 + 208));
  v27 = swift_task_alloc();
  *(v0 + 344) = v27;
  *v27 = v0;
  v27[1] = sub_1BD48D5E0;
  v28 = *(v0 + 224);

  return sub_1BD0D7A54(v28);
}

uint64_t sub_1BD48D5E0(char a1)
{
  *(*v1 + 353) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1BD48D6E0, 0, 0);
}

uint64_t sub_1BD48D6E0()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 320);
  if (*(v0 + 353) == 1)
  {
    v3 = *(v0 + 240);
    v4 = *(v0 + 248);
    v5 = *(v0 + 224);
    v6 = *(v0 + 232);
    v7 = *(v0 + 208);
    v8 = *(v0 + 216);
    sub_1BE048774();

    (*(v8 + 8))(v5, v7);
    (*(v3 + 8))(v4, v6);
  }

  else
  {
    v10 = *(v0 + 240);
    v11 = *(v0 + 224);
    v15 = *(v0 + 232);
    v16 = *(v0 + 248);
    v12 = *(v0 + 208);
    v13 = *(v0 + 216);
    sub_1BE0484F4();
    sub_1BD1351C0();
    swift_allocError();
    sub_1BE0484E4();
    swift_willThrow();

    (*(v13 + 8))(v11, v12);
    (*(v10 + 8))(v16, v15);
  }

  sub_1BD48DA08();

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1BD48D918()
{
  v1 = *(v0 + 320);
  swift_willThrow();

  sub_1BD48DA08();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1BD48DA08()
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
    _os_signpost_emit_with_name_impl(&dword_1BD026000, v13, v20, v17, "perform:TransferSavingsIntent", v15, v16, 2u);
    MEMORY[0x1BFB45F20](v16, -1, -1);
  }

  (*(v4 + 8))(v7, v22);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1BD48DCF4()
{
  sub_1BE048874();
  v0 = sub_1BE052434();
  MEMORY[0x1BFB3F610](v0);

  return 47;
}

uint64_t sub_1BD48DDB0@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
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

uint64_t sub_1BD48DE58(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47310);
  v5 = sub_1BD0DE4F4(&qword_1EBD47318, &qword_1EBD47310);

  return MEMORY[0x1EEDB4008](KeyPath, sub_1BD48BF70, 0, v4, a2, v5);
}

uint64_t sub_1BD48DF20(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BD0F985C;

  return sub_1BD48C978(a1, v4);
}

uint64_t sub_1BD48DFC0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BD48E098();
  *a1 = result;
  return result;
}

uint64_t sub_1BD48DFE8(uint64_t a1)
{
  v2 = sub_1BD48E044();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

unint64_t sub_1BD48E044()
{
  result = qword_1EBD472F8;
  if (!qword_1EBD472F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD472F8);
  }

  return result;
}

uint64_t sub_1BD48E098()
{
  v35 = sub_1BE048D74();
  v33 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35, v0);
  v34 = &v29 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39290);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v32 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v31 = &v29 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD528E0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v30 = &v29 - v10;
  v11 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v13 = sub_1BE04A874();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v20 = sub_1BE04A884();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v22);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47300);
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v13, qword_1EBDAB400);
  v24 = *(v14 + 16);
  v24(v17, v23, v13);
  sub_1BE04B0A4();
  sub_1BE04A894();
  sub_1BE052354();
  v24(v17, v23, v13);
  sub_1BE04B0A4();
  v25 = v30;
  sub_1BE04A894();
  (*(v21 + 56))(v25, 0, 1, v20);
  v36 = 0;
  v26 = sub_1BE048654();
  v27 = *(*(v26 - 8) + 56);
  v27(v31, 1, 1, v26);
  v27(v32, 1, 1, v26);
  (*(v33 + 104))(v34, *MEMORY[0x1E695A500], v35);
  sub_1BD48B9D0();
  return sub_1BE0488A4();
}

uint64_t type metadata accessor for SavingsSummaryView()
{
  result = qword_1EBD47378;
  if (!qword_1EBD47378)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD48E624()
{
  type metadata accessor for AccountModel();
  if (v0 <= 0x3F)
  {
    sub_1BD48E6D8();
    if (v1 <= 0x3F)
    {
      type metadata accessor for AccountDailyCash();
      if (v2 <= 0x3F)
      {
        sub_1BD48E76C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BD48E6D8()
{
  if (!qword_1EBD47388)
  {
    type metadata accessor for AccountBalanceHistory(255);
    sub_1BD490A30(&qword_1EBD47108, type metadata accessor for AccountBalanceHistory);
    v0 = sub_1BE04E984();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD47388);
    }
  }
}

void sub_1BD48E76C()
{
  if (!qword_1EBD47390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40EC8);
    v0 = sub_1BE0516D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD47390);
    }
  }
}

void sub_1BD48E7EC(uint64_t a1@<X0>, char *a2@<X8>)
{
  v141 = a2;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD473B0);
  v139 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140, v3);
  v121 = (&v118 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD473B8);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v120 = &v118 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v119 = (&v118 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD473C0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v152 = &v118 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v151 = &v118 - v16;
  v136 = sub_1BE04FAB4();
  v131 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136, v17);
  v130 = &v118 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD473C8);
  v129 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132, v19);
  v128 = &v118 - v20;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD473D0);
  v134 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135, v21);
  v133 = &v118 - v22;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD473D8);
  v137 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138, v23);
  v150 = &v118 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v156 = &v118 - v27;
  v28 = type metadata accessor for SavingsBalanceHistoryView();
  MEMORY[0x1EEE9AC00](v28, v29);
  v149 = &v118 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = (&v118 - v33);
  MEMORY[0x1EEE9AC00](v35, v36);
  v155 = &v118 - v37;
  v38 = type metadata accessor for SavingsSummaryView();
  v39 = v38 - 8;
  v144 = *(v38 - 8);
  v153 = *(v144 + 64);
  MEMORY[0x1EEE9AC00](v38, v40);
  v154 = (&v118 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40EC8);
  MEMORY[0x1EEE9AC00](v145, v42);
  v142 = &v118 - v43;
  v44 = type metadata accessor for AccountBalanceInterestView();
  MEMORY[0x1EEE9AC00](v44, v45);
  v47 = (&v118 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD473E0);
  v147 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148, v48);
  v146 = &v118 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50, v51);
  v157 = &v118 - v52;
  v53 = *(a1 + 24);
  v54 = *(v39 + 36);
  v143 = *a1;
  v55 = v53;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47370);
  sub_1BE0516A4();
  type metadata accessor for AccountModel();
  sub_1BD490A30(&qword_1EBD3AE50, type metadata accessor for AccountModel);
  *v47 = sub_1BE04E954();
  v47[1] = v57;
  type metadata accessor for AccountDailyCash();
  sub_1BD490A30(&qword_1EBD40EF0, type metadata accessor for AccountDailyCash);
  v47[2] = sub_1BE04E954();
  v47[3] = v58;
  v59 = *(v44 + 28);
  *(v47 + v59) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38880);
  swift_storeEnumTagMultiPayload();
  v126 = v54;
  v60 = v142;
  v125 = v56;
  sub_1BE0516A4();
  v61 = v154;
  sub_1BD490CAC(a1, v154, type metadata accessor for SavingsSummaryView);
  v62 = (*(v144 + 80) + 16) & ~*(v144 + 80);
  v127 = *(v144 + 80);
  v63 = swift_allocObject();
  v144 = v62;
  sub_1BD4907F4(v61, v63 + v62, type metadata accessor for SavingsSummaryView);
  sub_1BD490A30(&qword_1EBD473E8, type metadata accessor for AccountBalanceInterestView);
  sub_1BD490740();
  sub_1BE051064();

  sub_1BD0DE53C(v60, &qword_1EBD40EC8);
  sub_1BD490DD8(v47, type metadata accessor for AccountBalanceInterestView);
  sub_1BE051CD4();
  sub_1BE04E5E4();
  v64 = v166;
  v65 = v168;
  v66 = v170;
  v145 = v171;
  v186 = 1;
  v185 = v167;
  v184 = v169;
  v67 = *(a1 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  v68 = v67;
  sub_1BE04D8B4();

  v69 = v178;
  v70 = [v178 savingsDetails];

  if (v70)
  {
    v142 = v65;
    v143 = v64;
    v71 = [v70 currencyCode];

    v124 = v66;
    if (v71)
    {
      v72 = sub_1BE052434();
      v74 = v73;
    }

    else
    {
      v74 = 0xE300000000000000;
      v72 = 4477781;
    }

    sub_1BE0516C4();
    type metadata accessor for AccountBalanceHistory(0);
    sub_1BD490A30(&qword_1EBD47108, type metadata accessor for AccountBalanceHistory);
    *v34 = sub_1BE04E954();
    v34[1] = v75;
    v34[2] = v72;
    v34[3] = v74;
    v76 = v28[7];
    *(v34 + v76) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5B0);
    swift_storeEnumTagMultiPayload();
    *(v34 + v28[8]) = 0x4062C00000000000;
    *(v34 + v28[9]) = 0x4000000000000000;
    *(v34 + v28[10]) = 0x4049000000000000;
    *(v34 + v28[11]) = 0x4010000000000000;
    *(v34 + v28[12]) = 0x4010000000000000;
    *(v34 + v28[13]) = 0x4010000000000000;
    *(v34 + v28[14]) = 0x4000000000000000;
    *(v34 + v28[15]) = 0x3FE0000000000000;
    *(v34 + v28[16]) = 4;
    v77 = v28[17];
    *(v34 + v77) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD473F8);
    swift_storeEnumTagMultiPayload();
    sub_1BD4907F4(v34, v155, type metadata accessor for SavingsBalanceHistoryView);
    sub_1BE051CD4();
    sub_1BE04E5E4();
    v126 = v172;
    v125 = v174;
    v123 = v176;
    v122 = v177;
    v165 = 1;
    v164 = v173;
    v163 = v175;
    v78 = sub_1BE04E964();
    swift_getKeyPath();
    sub_1BE04E974();

    v160 = v178;
    v161 = v179;
    v162 = v180;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47400);
    sub_1BD49085C();
    sub_1BD4908B0();
    v79 = v128;
    sub_1BE0517D4();
    v80 = v130;
    sub_1BE04FAA4();
    v81 = sub_1BD0DE4F4(&qword_1EBD47428, &qword_1EBD473C8);
    v82 = MEMORY[0x1E697C6A0];
    v83 = v133;
    v84 = v132;
    v85 = v136;
    sub_1BE050924();
    (*(v131 + 8))(v80, v85);
    (*(v129 + 8))(v79, v84);
    LOBYTE(v160) = v68[OBJC_IVAR____TtC9PassKitUI21AccountBalanceHistory_range];
    v86 = v154;
    sub_1BD490CAC(a1, v154, type metadata accessor for SavingsSummaryView);
    v87 = v144;
    v88 = swift_allocObject();
    sub_1BD4907F4(v86, v88 + v87, type metadata accessor for SavingsSummaryView);
    v178 = v84;
    v179 = v85;
    v180 = v81;
    v181 = v82;
    swift_getOpaqueTypeConformance2();
    sub_1BD0E4948();
    v89 = v135;
    sub_1BE051074();

    (*(v134 + 8))(v83, v89);
    if (PKSavingsFDICSignageEnabled())
    {
      v90 = v151;
      (*(v139 + 56))(v151, 1, 1, v140);
    }

    else
    {
      sub_1BE051CD4();
      sub_1BE04E5E4();
      v154 = v178;
      v153 = v180;
      v91 = v182;
      v92 = v183;
      LOBYTE(v160) = 1;
      v159 = v179;
      v158 = v181;
      v93 = sub_1BE04F504();
      v94 = v119;
      *v119 = v93;
      *(v94 + 8) = 0;
      *(v94 + 16) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47430);
      sub_1BD490334();
      v95 = v160;
      v96 = v159;
      v97 = v158;
      v98 = v120;
      sub_1BD0DE19C(v94, v120, &qword_1EBD473B8);
      v99 = v121;
      *v121 = 0;
      *(v99 + 8) = v95;
      *(v99 + 16) = v154;
      *(v99 + 24) = v96;
      *(v99 + 32) = v153;
      *(v99 + 40) = v97;
      *(v99 + 48) = v91;
      *(v99 + 56) = v92;
      v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47438);
      sub_1BD0DE19C(v98, v99 + *(v100 + 48), &qword_1EBD473B8);
      sub_1BD0DE53C(v94, &qword_1EBD473B8);
      sub_1BD0DE53C(v98, &qword_1EBD473B8);
      v90 = v151;
      sub_1BD490C3C(v99, v151);
      (*(v139 + 56))(v90, 0, 1, v140);
    }

    v101 = *(v147 + 16);
    v102 = v146;
    v103 = v148;
    v101(v146, v157, v148);
    LODWORD(v135) = v186;
    LODWORD(v136) = v185;
    LODWORD(v139) = v184;
    sub_1BD490CAC(v155, v149, type metadata accessor for SavingsBalanceHistoryView);
    LODWORD(v140) = v165;
    LODWORD(v144) = v164;
    LODWORD(v153) = v163;
    v104 = v137;
    v154 = *(v137 + 16);
    v105 = v138;
    v154(v150, v156, v138);
    sub_1BD0DE19C(v90, v152, &qword_1EBD473C0);
    v106 = v141;
    v101(v141, v102, v103);
    v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47440);
    v108 = &v106[v107[12]];
    *v108 = 0;
    v108[8] = v135;
    *(v108 + 2) = v143;
    v108[24] = v136;
    *(v108 + 4) = v142;
    v108[40] = v139;
    v109 = v145;
    *(v108 + 6) = v124;
    *(v108 + 7) = v109;
    v110 = v149;
    sub_1BD490CAC(v149, &v106[v107[16]], type metadata accessor for SavingsBalanceHistoryView);
    v111 = &v106[v107[20]];
    *v111 = 0;
    v111[8] = v140;
    *(v111 + 2) = v126;
    v111[24] = v144;
    *(v111 + 4) = v125;
    v111[40] = v153;
    v112 = v122;
    *(v111 + 6) = v123;
    *(v111 + 7) = v112;
    v113 = v150;
    v154(&v106[v107[24]], v150, v105);
    v114 = v152;
    sub_1BD0DE19C(v152, &v106[v107[28]], &qword_1EBD473C0);
    sub_1BD0DE53C(v151, &qword_1EBD473C0);
    v115 = *(v104 + 8);
    v115(v156, v105);
    sub_1BD490DD8(v155, type metadata accessor for SavingsBalanceHistoryView);
    v116 = *(v147 + 8);
    v117 = v148;
    v116(v157, v148);
    sub_1BD0DE53C(v114, &qword_1EBD473C0);
    v115(v113, v105);
    sub_1BD490DD8(v110, type metadata accessor for SavingsBalanceHistoryView);
    v116(v146, v117);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD48FC38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40EC8);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v21 - v11;
  v13 = *(a3 + 24);
  sub_1BD0DE19C(a2, v8, &qword_1EBD40EC8);
  v14 = type metadata accessor for AccountBalance(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_1BD0DE53C(v8, &qword_1EBD40EC8);
    v15 = sub_1BE04AF64();
    (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  }

  else
  {
    v16 = *(v14 + 20);
    v17 = sub_1BE04AF64();
    v18 = *(v17 - 8);
    (*(v18 + 16))(v12, &v8[v16], v17);
    sub_1BD490DD8(v8, type metadata accessor for AccountBalance);
    (*(v18 + 56))(v12, 0, 1, v17);
  }

  v19 = OBJC_IVAR____TtC9PassKitUI16AccountDailyCash_date;
  swift_beginAccess();
  sub_1BD490D68(v12, v13 + v19);
  swift_endAccess();
  sub_1BD599178();
  return sub_1BD0DE53C(v12, &unk_1EBD39970);
}

uint64_t sub_1BD48FECC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD387E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47420);
  sub_1BD0DE4F4(&qword_1EBD47448, &qword_1EBD387E0);
  sub_1BD490934();
  sub_1BD490D14();
  return sub_1BE0519D4();
}

uint64_t sub_1BD48FFC0(_BYTE *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47458);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v18 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47420);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v18 - v9;
  LOBYTE(a1) = *a1;
  v18 = sub_1BD0DE59C(a1);
  v19 = v11;
  sub_1BD0DDEBC();
  *v6 = sub_1BE0506C4();
  *(v6 + 1) = v12;
  v6[16] = v13 & 1;
  *(v6 + 3) = v14;
  v6[32] = a1;
  v6[33] = 1;
  v22 = sub_1BD0DE914(a1);
  v23 = v15;
  v16 = sub_1BD49085C();
  v18 = MEMORY[0x1E6981148];
  v19 = &type metadata for AccountBalanceHistoryRange;
  v20 = MEMORY[0x1E6981138];
  v21 = v16;
  swift_getOpaqueTypeConformance2();
  sub_1BE050C34();

  (*(v3 + 8))(v6, v2);
  sub_1BE052434();
  sub_1BE04EBB4();

  return sub_1BD06EE6C(v10);
}