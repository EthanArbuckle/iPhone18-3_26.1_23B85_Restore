uint64_t sub_268CE2BF4(char *a1)
{
  v28 = 0;
  v27 = 0;
  v2 = *v1;
  v9 = *a1;
  v28 = v9;
  v27 = v1;
  v26 = *(v2 + qword_2802F0750);
  v25 = *(v2 + qword_2802F0750 + 8);
  v24 = v9;
  v23 = 3;
  sub_268D288B4(&v24, &v21);
  sub_268D288B4(&v23, &v22);
  if (v21 != 65)
  {
    sub_268D288B4(&v21, v10);
    if (v22 != 65)
    {
      sub_268D288C8();
      v8 = sub_268F9AE04();
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  if (v22 != 65)
  {
LABEL_9:
    v8 = 0;
    goto LABEL_7;
  }

  v8 = 1;
LABEL_7:
  if (v8)
  {
    v7 = 1;
    goto LABEL_21;
  }

  v20 = v9;
  v19 = 2;
  sub_268D288B4(&v20, &v17);
  sub_268D288B4(&v19, &v18);
  if (v17 == 65)
  {
    if (v18 == 65)
    {
      v6 = 1;
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  sub_268D288B4(&v17, v11);
  if (v18 == 65)
  {
LABEL_19:
    v6 = 0;
    goto LABEL_18;
  }

  v10[2] = v11[0];
  v10[1] = v18;
  sub_268D288C8();
  v6 = sub_268F9AE04();
LABEL_18:
  v7 = v6;
LABEL_21:
  if ((v7 & 1) == 0)
  {
    v16 = v9;
    v15 = 1;
    sub_268D288B4(&v16, &v13);
    sub_268D288B4(&v15, &v14);
    if (v13 == 65)
    {
      if (v14 == 65)
      {
        v4 = 1;
        goto LABEL_29;
      }
    }

    else
    {
      sub_268D288B4(&v13, &v12);
      if (v14 != 65)
      {
        v11[2] = v12;
        v11[1] = v14;
        sub_268D288C8();
        v4 = sub_268F9AE04();
LABEL_29:
        v5 = v4;
        return v5 & 1;
      }
    }

    v4 = 0;
    goto LABEL_29;
  }

  v5 = 1;
  return v5 & 1;
}

uint64_t sub_268CE2F58(uint64_t a1, void *a2, void *a3, void (*a4)(id *), uint64_t a5)
{
  v123 = &v140;
  v99 = a5;
  v98 = a4;
  v122 = a3;
  v121 = a2;
  v100 = a1;
  v110 = 0;
  v137 = 0;
  v136 = 0;
  v135 = 0;
  v134 = 0;
  v133 = 0;
  v132 = 0;
  v127 = 0;
  v125 = 0;
  v94 = 0;
  v107 = *v5;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990);
  v96 = (*(*(v95 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v97 = (&v61 - v96);
  v101 = sub_268F9AB24();
  v102 = *(v101 - 8);
  v103 = v102;
  v104 = *(v102 + 64);
  v6 = MEMORY[0x28223BE20](v100);
  v106 = (v104 + 15) & 0xFFFFFFFFFFFFFFF0;
  v105 = &v61 - v106;
  v7 = MEMORY[0x28223BE20](v6);
  v108 = &v61 - v106;
  v137 = v7;
  v136 = v8;
  v135 = v9;
  v133 = v10;
  v134 = v11;
  v132 = v5;
  v131 = *(v107 + qword_2802F0750);
  v130 = *(qword_2802F0750 + v107 + 8);
  v120 = *sub_268DC7B48();
  v12 = v120;
  v118 = sub_268F9B284();
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v109 = v115;
  v116 = sub_268F9B734();
  v113 = v13;
  v14 = v121;
  v129 = v121;
  v111 = sub_268CD7620();
  sub_268D28940();
  v112 = sub_268F9AE74();
  v114 = v15;
  v113[3] = MEMORY[0x277D837D0];
  v16 = sub_268CDD224();
  v17 = v112;
  v18 = v113;
  v19 = v114;
  v20 = v16;
  v21 = v116;
  v117 = v20;
  v113[4] = v20;
  *v18 = v17;
  v18[1] = v19;
  sub_268CD0F7C();
  v119 = v21;
  sub_268F9AC04();

  sub_268D23814(v121, v122, v138);
  v22 = v123;
  v23 = v138[0];
  v142 = v139;
  *(v123 + 1) = v138[1];
  *v22 = v23;
  if (!v141)
  {

    sub_268D284D4();
    v57 = swift_allocError();
    v58 = v97;
    *v59 = 4;
    *v58 = v57;
    swift_storeEnumTagMultiPayload();
    v98(v97);
    sub_268D28378(v97);

    return v94;
  }

  v24 = v121;
  v25 = v123;
  v26 = *v123;
  v27 = *(v123 + 1);
  v143[4] = v142;
  *(v123 + 4) = v27;
  *(v25 + 3) = v26;
  sub_268DAB218(v24);
  v91 = v128;
  v127 = v128;
  v92 = v143[2];
  v28 = v122;
  if (v122)
  {
    v90 = v122;
    v86 = v122;
    v87 = [v122 oldValue];

    v88 = v87;
    v89 = 0;
  }

  else
  {
    v88 = 0;
    v89 = 1;
  }

  v85 = sub_268D2403C(v92, v88, v89 & 1);
  if (v85 == 2)
  {
    v66 = *sub_268DC7B48();
    v45 = v66;
    v64 = sub_268F9B294();
    v67 = 1;
    v63 = sub_268F9B734();
    v62 = v46;
    v47 = v122;
    v126 = v122;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC080, &qword_268F9D998);
    v48 = sub_268F9AE64();
    v49 = v117;
    v50 = v62;
    v51 = v48;
    v52 = v63;
    v62[3] = MEMORY[0x277D837D0];
    v50[4] = v49;
    *v50 = v51;
    v50[1] = v53;
    sub_268CD0F7C();
    v65 = v52;
    sub_268F9AC04();

    sub_268D284D4();
    v54 = swift_allocError();
    v55 = v97;
    *v56 = v67;
    *v55 = v54;
    swift_storeEnumTagMultiPayload();
    v98(v97);
    sub_268D28378(v97);

    sub_268CD9D30(v143);
    return v94;
  }

  v84 = v85;
  v83 = v85;
  v125 = v85 & 1;
  if (v91 == 65 || (v82 = v91, v91 != 45))
  {

    sub_268CE3F4C(v100, v121, v122, v97);
    v98(v97);
    sub_268D28378(v97);

    v70 = v94;
    goto LABEL_10;
  }

  v29 = v108;
  v30 = v94;
  v31 = sub_268DB98D4();
  v74 = *v31;
  v76 = v31[1];
  v77 = *(v31 + 16);
  v78 = *sub_268DC7BA8();
  v71 = v78;
  v32 = v78;
  (*(v103 + 16))(v29, v93 + qword_2802DBFD8, v101);
  sub_268F9AB14();
  v80 = sub_268F9AB04();
  v73 = *(v103 + 8);
  v72 = v103 + 8;
  v73(v105, v101);
  v73(v108, v101);
  v33 = v121;

  v75 = v143;
  sub_268D28814(v143, v124);

  v79 = &v61;
  v34 = MEMORY[0x28223BE20](v74);
  v35 = v98;
  v36 = v80;
  *(&v61 - 6) = v37;
  *(&v61 - 5) = v38;
  *(&v61 - 4) = v39;
  *(&v61 - 24) = v40 & 1;
  *(&v61 - 2) = v35;
  *(&v61 - 1) = v41;
  sub_268DB944C(v34, v42, v43, v44, (v36 & 1) == 0, sub_268D289C0, (&v61 - 8), MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
  v81 = v30;
  if (!v30)
  {

    sub_268CD9D30(v143);

    v70 = v81;
LABEL_10:
    v68 = v70;
    sub_268CD9D30(v143);
    return v68;
  }

  sub_268CD9D30(v143);

  __break(1u);
  return result;
}

uint64_t *sub_268CE381C(void *a1, void *a2, void *a3, char a4, uint64_t a5, uint64_t a6)
{
  v43 = 0;
  v42 = 0;
  v39 = 0;
  v38 = 0;
  v36 = 0;
  v37 = 0;
  v6 = *a2;
  v43 = a1;
  v42 = a2;
  v41 = *(v6 + qword_2802F0750);
  v40 = *(v6 + qword_2802F0750 + 8);
  v39 = a3;
  v38 = a4 & 1;
  v36 = a5;
  v37 = a6;
  v35 = 0;
  v33 = [a1 settingMetadata];
  if (v33 && (v27 = [v33 targetApp], MEMORY[0x277D82BD8](v33), v27))
  {
    v7 = [v27 bundleIdentifier];
    v26 = v7;
    if (v7)
    {
      v22 = sub_268F9AE24();
      v23 = v8;
      MEMORY[0x277D82BD8](v26);
      v24 = v22;
      v25 = v23;
    }

    else
    {
      v24 = 0;
      v25 = 0;
    }

    MEMORY[0x277D82BD8](v27);
    v20 = v24;
    v21 = v25;
  }

  else
  {
    v20 = 0;
    v21 = 0;
  }

  if (v21)
  {
    sub_268F9A994();

    v35 = sub_268DE1C68(v20, v21);
  }

  v9 = sub_268DC7B48();
  v16 = *v9;
  MEMORY[0x277D82BE0](*v9);
  sub_268F9B284();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v15 = v10;
  v17 = v35;

  v34[5] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0C0, &qword_268F9D9D0);
  v13 = sub_268F9AE64();
  v14 = v11;
  v15[3] = MEMORY[0x277D837D0];
  v15[4] = sub_268CDD224();
  *v15 = v13;
  v15[1] = v14;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v16);
  v19 = *(a2 + qword_2802DC040);

  sub_268D28814(a3, v34);

  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  memcpy((v18 + 24), a3, 0x28uLL);
  *(v18 + 64) = a4;
  *(v18 + 72) = v17;
  *(v18 + 80) = a5;
  *(v18 + 88) = a6;
  sub_268E01C88(sub_268D2A878, v18);

  return sub_268D287E8(&v35);
}

uint64_t sub_268CE3CCC(unsigned int a1, void *a2, uint64_t *a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v21 = a1;
  v20 = a2;
  v17 = a3;
  v25 = a4;
  v28 = a5;
  v26 = a6;
  v27 = a7;
  v41 = 0;
  v40 = 0;
  v37 = 0;
  v36 = 0;
  v35 = 0;
  v33 = 0;
  v34 = 0;
  v16 = *a2;
  v15 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v29 = &v15 - v15;
  v41 = MEMORY[0x28223BE20](v21);
  v40 = v7;
  v22 = 0;
  v39 = *(v16 + qword_2802F0750);
  v38 = *(v16 + qword_2802F0750 + 8);
  v37 = v8;
  v23 = 1;
  v36 = v9 & 1;
  v35 = v10;
  v33 = v11;
  v34 = v12;
  v32 = *(v7 + qword_2802DBFF8);

  type metadata accessor for SettingsBinarySetting();
  v18 = *v17;
  v19 = v17[1];

  v24 = 0;
  v31 = SettingsBinarySetting.__allocating_init(settingId:value:)(v18, v19, 0);
  v30 = *(v20 + qword_2802DBFE0);

  sub_268DFC86C();
  sub_268F9A9A4();
  v13 = sub_268F9A9C4();
  (*(*(v13 - 8) + 56))(v29, v24, v23);

  sub_268F5D8D4(v31, v25 & 1, v30, v29, v28, v26, v27);

  sub_268D28588(v29);
}

uint64_t sub_268CE3F4C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v115 = a4;
  v125 = a1;
  v146 = a2;
  v147 = a3;
  v143 = "INSetBinarySettingIntent requires confirmation %@";
  v141 = &dword_268CBE000;
  v117 = "SetBinarySettingIntent has invalid value %@ while making intent confirmation dialog";
  v170 = 0;
  v169 = 0;
  v168 = 0;
  v167 = 0;
  v166 = 0;
  v163 = 0;
  v161 = 0;
  v160 = 0;
  v157 = 0;
  v158 = 0;
  v154 = 0;
  v155 = 0;
  v152 = 0;
  v153 = 0;
  v130 = *v4;
  v132 = 0;
  v118 = sub_268F9AB24();
  v119 = *(v118 - 8);
  v120 = v118 - 8;
  v121 = (*(v119 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v118);
  v122 = v41 - v121;
  v123 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v41 - v121);
  v124 = v41 - v123;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990);
  v127 = (*(*(v126 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v125);
  v128 = (v41 - v127);
  v129 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x28223BE20](v6);
  v131 = v41 - v129;
  v170 = v41 - v129;
  v169 = v8;
  v168 = v9;
  v167 = v10;
  v166 = v4;
  v165[2] = *(v130 + qword_2802F0750);
  v165[1] = *(v130 + qword_2802F0750 + 8);
  v145 = *sub_268DC7B48();
  MEMORY[0x277D82BE0](v145);
  v142 = sub_268F9B284();
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v139 = sub_268F9B734();
  v137 = v11;
  MEMORY[0x277D82BE0](v146);
  v134 = v165;
  v165[0] = v146;
  v133 = sub_268CD7620();
  sub_268D28940();
  v135 = sub_268F9AE74();
  v136 = v12;
  v137[3] = MEMORY[0x277D837D0];
  v13 = sub_268CDD224();
  v14 = v135;
  v15 = v136;
  v16 = v137;
  v17 = v13;
  v18 = v139;
  v140 = v17;
  v137[4] = v17;
  *v16 = v14;
  v16[1] = v15;
  sub_268CD0F7C();
  v144 = v18;
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v145);
  v148 = v171;
  sub_268D23814(v146, v147, v171);
  memcpy(__dst, v148, sizeof(__dst));
  if (__dst[1])
  {
    memcpy(v173, __dst, sizeof(v173));
    sub_268DAB218(v146);
    v113 = v164;
    v163 = v164;
    v114 = v173[2];
    MEMORY[0x277D82BE0](v147);
    if (v147)
    {
      v112 = v147;
      v108 = v147;
      v109 = [v147 oldValue];
      MEMORY[0x277D82BD8](v108);
      v110 = v109;
      v111 = 0;
    }

    else
    {
      v110 = 0;
      v111 = 1;
    }

    v107 = sub_268D2403C(v114, v110, v111 & 1);
    if (v107 != 2)
    {
      v106 = v107;
      v105 = v107;
      v161 = v107 & 1;
      if (v113 == 65)
      {
LABEL_38:
        sub_268D284D4();
        v53 = 1;
        v23 = swift_allocError();
        v24 = v128;
        *v25 = 0;
        *v24 = v23;
        swift_storeEnumTagMultiPayload();
        sub_268D28718(v128, v131);
        goto LABEL_39;
      }

      v104 = v113;
      v103 = v113;
      if (v113 && v103 != 16)
      {
        if (v103 == 26)
        {
          v160 = 1;
          v88 = *(v116 + qword_2802DC018);

          v159 = v103;
          sub_268E12DF8(&v159);
          v89 = v21;

          if ((v89 & 0xFF00) == 0x400)
          {
            v85 = 0;
            v86 = 0;
          }

          else
          {
            v87 = BYTE1(v89);
            v85 = sub_268E127A4();
            v86 = v22;
          }

          v84 = v86;
          v83 = v85;
          v157 = v85;
          v158 = v86;

          if (v84)
          {
            v81 = v83;
            v82 = v84;
            v76 = v84;
            v77 = v83;
            v152 = v83;
            v153 = v84;
            v78 = *(v116 + qword_2802DC020);

            v79 = sub_268F23C10();

            if (v79)
            {
              v75 = v79;
              v71 = v79;

              v70 = sub_268F9AE14();

              v72 = [v71 integerForKey_];
              MEMORY[0x277D82BD8](v70);
              MEMORY[0x277D82BD8](v71);
              v73 = v72;
              v74 = 0;
            }

            else
            {
              v73 = 0;
              v74 = 1;
            }

            v150 = v73;
            v151 = v74 & 1;
            if (v74)
            {
              v69 = 0;
            }

            else
            {
              v69 = v150;
            }

            if (v69 < 1)
            {
              v68 = 1;
            }

            else
            {
              v160 = 0;
              v68 = 0;
            }

            v67 = v68;

            v80 = v67;
          }

          else
          {
            v80 = 1;
          }

          v63 = v80;
          v66 = *(v116 + qword_2802DBFF8);

          type metadata accessor for SettingsBinarySetting();
          sub_268D28814(v173, v156);
          v65 = SettingsBinarySetting.__allocating_init(settingId:value:)(v173[0], v173[1], 0);
          v64 = *(v116 + qword_2802DBFE0);

          sub_268F5D610(v65, v105 & 1, v64, v63 & 1);

          sub_268D28718(v128, v131);

          if (v84)
          {
            v61 = v83;
            v62 = v84;
            v57 = v84;
            v58 = v83;
            v154 = v83;
            v155 = v84;
            v59 = *(v116 + qword_2802DC020);

            v60 = sub_268F23C10();

            if (v60)
            {
              v56 = v60;
              v55 = v60;

              v54 = sub_268F9AE14();

              [v55 setInteger:1 forKey:v54];
              MEMORY[0x277D82BD8](v54);
              MEMORY[0x277D82BD8](v55);
            }
          }

          goto LABEL_39;
        }

        if (v103 == 29)
        {
          v102 = *(v116 + qword_2802DBFF8);

          v101 = *(v116 + qword_2802DBFE0);

          sub_268F5E414(v101);

          sub_268D28718(v128, v131);
LABEL_39:
          v26 = sub_268DB98D4();
          v51 = *v26;
          v49 = v26[1];
          v50 = *(v26 + 16);
          v52 = *sub_268DC7BA8();
          MEMORY[0x277D82BE0](v52);
          sub_268DB9B78(v51, v49, v50, v52);
          MEMORY[0x277D82BD8](v52);
          sub_268D28718(v131, v115);
          return sub_268CD9D30(v173);
        }

        if (v103 != 51)
        {
          goto LABEL_38;
        }
      }

      v19 = v124;
      v20 = sub_268DB98D4();
      v93 = *v20;
      v94 = v20[1];
      v95 = *(v20 + 16);
      v96 = *sub_268DC7BA8();
      MEMORY[0x277D82BE0](v96);
      (*(v119 + 16))(v19, v116 + qword_2802DBFD8, v118);
      sub_268F9AB14();
      v92 = sub_268F9AB04();
      v91 = *(v119 + 8);
      v90 = v119 + 8;
      v91(v122, v118);
      v91(v124, v118);
      sub_268DB9934(v93, v94, v95, v96, (v92 ^ 1) & 1);
      MEMORY[0x277D82BD8](v96);
      v100 = *(v116 + qword_2802DBFF8);

      type metadata accessor for SettingsBinarySetting();
      sub_268D28814(v173, v149);
      v97 = 0;
      v99 = SettingsBinarySetting.__allocating_init(settingId:value:)(v173[0], v173[1], 0);
      v98 = *(v116 + qword_2802DBFE0);

      sub_268F5D610(v99, v105 & 1, v98, v97 & 1);

      sub_268D28718(v128, v131);
      goto LABEL_39;
    }

    v47 = *sub_268DC7B48();
    MEMORY[0x277D82BE0](v47);
    v45 = sub_268F9B294();
    v44 = sub_268F9B734();
    v43 = v28;
    MEMORY[0x277D82BE0](v147);
    v42 = &v162;
    v162 = v147;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC080, &qword_268F9D998);
    v29 = sub_268F9AE64();
    v30 = v140;
    v31 = v43;
    v32 = v29;
    v33 = v44;
    v43[3] = MEMORY[0x277D837D0];
    v31[4] = v30;
    *v31 = v32;
    v31[1] = v34;
    sub_268CD0F7C();
    v46 = v33;
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v47);
    sub_268D284D4();
    v48 = 1;
    v35 = swift_allocError();
    v36 = v115;
    *v37 = 1;
    *v36 = v35;
    swift_storeEnumTagMultiPayload();
    return sub_268CD9D30(v173);
  }

  else
  {
    sub_268D284D4();
    v41[1] = 1;
    v38 = swift_allocError();
    v39 = v115;
    *v40 = 4;
    *v39 = v38;
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_268CE4D44(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v14 = a1;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v19 = a5;
  v27 = 0;
  v26 = 0;
  v25 = 0;
  v23 = 0;
  v24 = 0;
  v22 = 0;
  v13 = *v5;
  v12 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v19);
  v18 = (&v12 - v12);
  v27 = v7;
  v26 = v8;
  v25 = v9;
  v23 = v10;
  v24 = v6;
  v22 = v5;
  v21 = *(v13 + qword_2802F0750);
  v20 = *(v13 + qword_2802F0750 + 8);

  sub_268CE4EB8(v14, v15, v16, v18);
  v17(v18);
  sub_268D28378(v18);
}

uint64_t sub_268CE4EB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v65 = a4;
  v72 = a1;
  v74 = a2;
  v73 = a3;
  v67 = "SetBinarySettingIntentResponse response has invalid old value %@ while forming confirmation cancelled dialog.";
  v68 = &dword_268CBE000;
  v95 = 0;
  v94 = 0;
  v93 = 0;
  v92 = 0;
  v91 = 0;
  v88 = 0;
  v86 = 0;
  v82 = *v4;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990);
  v70 = (*(*(v69 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v69);
  v71 = (v28 - v70);
  v95 = v28 - v70;
  v75 = sub_268F9AB24();
  v76 = *(v75 - 8);
  v77 = v75 - 8;
  v79 = *(v76 + 64);
  v78 = (v79 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v74);
  v80 = v28 - v78;
  v81 = (v79 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v5);
  v83 = v28 - v81;
  v94 = v7;
  v93 = v6;
  v92 = v8;
  v91 = v4;
  v90 = *(v82 + qword_2802F0750);
  v89 = *(v82 + qword_2802F0750 + 8);
  v84 = &v96;
  sub_268D23814(v6, v8, &v96);
  memcpy(__dst, v84, sizeof(__dst));
  if (!__dst[1])
  {
    goto LABEL_11;
  }

  memcpy(v98, __dst, sizeof(v98));
  MEMORY[0x277D82BE0](v73);
  if (v73)
  {
    v64 = v73;
    v60 = v73;
    v61 = [v73 oldValue];
    MEMORY[0x277D82BD8](v60);
    v62 = v61;
    v63 = 0;
  }

  else
  {
    v62 = 0;
    v63 = 1;
  }

  v59 = v62;
  if (v63)
  {
    sub_268CD9D30(v98);
LABEL_11:
    sub_268D284D4();
    v28[3] = 1;
    v25 = swift_allocError();
    v26 = v65;
    *v27 = 4;
    *v26 = v25;
    return swift_storeEnumTagMultiPayload();
  }

  v58 = v59;
  v88 = v59;
  v9 = sub_268D2403C(v59, 0, 1);
  v57 = v9;
  if (v9 == 2)
  {
    v37 = *sub_268DC7B48();
    MEMORY[0x277D82BE0](v37);
    v35 = sub_268F9B294();
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v34 = sub_268F9B734();
    v32 = v14;
    MEMORY[0x277D82BE0](v73);
    v29 = &v87;
    v87 = v73;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC080, &qword_268F9D998);
    v30 = sub_268F9AE64();
    v31 = v15;
    v32[3] = MEMORY[0x277D837D0];
    v16 = sub_268CDD224();
    v17 = v30;
    v18 = v31;
    v19 = v32;
    v20 = v16;
    v21 = v34;
    v32[4] = v20;
    *v19 = v17;
    v19[1] = v18;
    sub_268CD0F7C();
    v36 = v21;
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v37);
    sub_268D284D4();
    v38 = 1;
    v22 = swift_allocError();
    v23 = v65;
    *v24 = 3;
    *v23 = v22;
    swift_storeEnumTagMultiPayload();
    return sub_268CD9D30(v98);
  }

  else
  {
    v56 = v57;
    v10 = v83;
    v47 = v57;
    v41 = 1;
    v86 = v57 & 1;
    v11 = sub_268DB98D4();
    v43 = *v11;
    v44 = v11[1];
    v45 = *(v11 + 16);
    v46 = *sub_268DC7BA8();
    MEMORY[0x277D82BE0](v46);
    (*(v76 + 16))(v10, v66 + qword_2802DBFD8, v75);
    sub_268F9AB14();
    v42 = sub_268F9AB04();
    v40 = *(v76 + 8);
    v39 = v76 + 8;
    v40(v80, v75);
    v40(v83, v75);
    sub_268DB9934(v43, v44, v45, v46, (v42 ^ v41) & 1);
    MEMORY[0x277D82BD8](v46);
    v50 = *(v66 + qword_2802DBFF8);

    type metadata accessor for SettingsBinarySetting();
    v55 = v98;
    sub_268D28814(v98, &v85);
    v49 = SettingsBinarySetting.__allocating_init(settingId:value:)(v98[0], v98[1], v47 & 1);
    v48 = *(v66 + qword_2802DBFE0);

    sub_268F5FA58(v49, v48);

    v12 = sub_268DB98D4();
    v53 = *v12;
    v51 = v12[1];
    v52 = *(v12 + 16);
    v54 = *sub_268DC7BA8();
    MEMORY[0x277D82BE0](v54);
    sub_268DB9B78(v53, v51, v52, v54);
    MEMORY[0x277D82BD8](v54);
    sub_268D28A00(v71, v65);
    sub_268D28378(v71);
    return sub_268CD9D30(v55);
  }
}

uint64_t sub_268CE580C(uint64_t a1, void *a2, void *a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v14 = a1;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v19 = a5;
  v27 = 0;
  v26 = 0;
  v25 = 0;
  v23 = 0;
  v24 = 0;
  v22 = 0;
  v13 = *v5;
  v12 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v19);
  v18 = (&v12 - v12);
  v27 = v7;
  v26 = v8;
  v25 = v9;
  v23 = v10;
  v24 = v6;
  v22 = v5;
  v21 = *(v13 + qword_2802F0750);
  v20 = *(v13 + qword_2802F0750 + 8);

  sub_268CE5980(v14, v15, v16, v18);
  v17(v18);
  sub_268D28378(v18);
}

uint64_t sub_268CE5980@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v66 = 0;
  v65 = 0;
  v64 = 0;
  v63 = 0;
  v60 = 0;
  countAndFlagsBits = 0;
  v57 = 0;
  v54 = 0;
  v49 = 0;
  v50 = 0;
  v47 = 0;
  v5 = *v4;
  v66 = a1;
  v65 = a2;
  v64 = a3;
  v63 = v4;
  v62 = *(v5 + qword_2802F0750);
  v61 = *(v5 + qword_2802F0750 + 8);
  MEMORY[0x277D82BE0](a3);
  if (a3)
  {
    v39 = [a3 code];
    MEMORY[0x277D82BD8](a3);
    v40 = v39;
    v41 = 0;
  }

  else
  {
    v40 = 0;
    v41 = 1;
  }

  if (v41)
  {
    v19 = sub_268DC7B48();
    v22 = *v19;
    MEMORY[0x277D82BE0](*v19);
    sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v22);
    sub_268D284D4();
    v20 = swift_allocError();
    *v21 = 4;
    *a4 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    v60 = v40;
    if (v40 == 6)
    {
      v58 = a2;
      v10 = sub_268CD7620();
      v31._countAndFlagsBits = SettingIntent.settingIdentifier.getter(v10, &protocol witness table for INSetBinarySettingIntent);
      v31._object = v11;
      if (v11)
      {
        countAndFlagsBits = v31._countAndFlagsBits;
        v57 = v11;

        BinarySettingIdentifier.init(rawValue:)(v31);
        if (v55 != 65)
        {
          v54 = v55;
          v53 = v55;
          v52 = 16;
          sub_268D28AD4();
          v12 = sub_268F9B754();
          if (v12)
          {
            v30 = *(v44 + qword_2802F0740);

            type metadata accessor for SettingsBinarySetting();

            v29 = SettingsBinarySetting.__allocating_init(settingId:value:)(v31._countAndFlagsBits, v31._object, 0);
            v28 = *(v44 + qword_2802DBFE0);

            v13 = sub_268D2403C([a2 binaryValue], 0, 1);
            sub_268F54220(v29, v28, v13);
          }
        }
      }

      v27 = *(v44 + qword_2802F0740);

      sub_268F537E4();
    }

    else if (v40 == 7)
    {
      v51 = a2;
      v7 = sub_268CD7620();
      v38._countAndFlagsBits = SettingIntent.settingIdentifier.getter(v7, &protocol witness table for INSetBinarySettingIntent);
      v38._object = v8;
      if (v8)
      {
        v49 = v38._countAndFlagsBits;
        v50 = v8;

        BinarySettingIdentifier.init(rawValue:)(v38);
        if (v48 == 65)
        {
        }

        else
        {
          v47 = v48;
          v36 = *sub_268E79858();

          v46 = v36;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC090, &qword_268F9D9A0);
          sub_268D28B4C();
          sub_268D288C8();
          v37 = sub_268F9AFC4();
          sub_268CD7930(&v46);
          if (v37)
          {
            v35 = *(v44 + qword_2802F0740);

            type metadata accessor for SettingsBinarySetting();

            v34 = SettingsBinarySetting.__allocating_init(settingId:value:)(v38._countAndFlagsBits, v38._object, 0);
            v33 = *(v44 + qword_2802DBFE0);

            v9 = sub_268D2403C([a2 binaryValue], 0, 1);
            sub_268F54220(v34, v33, v9);
          }
        }
      }

      v32 = *(v44 + qword_2802F0740);

      sub_268F537E4();
    }

    else if (v40 == 8)
    {
      return sub_268CE61E0(a2, a3, a4);
    }

    else
    {
      v14 = sub_268DC7B48();
      v26 = *v14;
      MEMORY[0x277D82BE0](*v14);
      sub_268F9B294();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      sub_268F9B734();
      v25 = v15;
      MEMORY[0x277D82BE0](a3);
      v59 = a3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC080, &qword_268F9D998);
      v23 = sub_268F9AE64();
      v24 = v16;
      v25[3] = MEMORY[0x277D837D0];
      v25[4] = sub_268CDD224();
      *v25 = v23;
      v25[1] = v24;
      sub_268CD0F7C();
      sub_268F9AC04();

      MEMORY[0x277D82BD8](v26);
      sub_268D284D4();
      v17 = swift_allocError();
      *v18 = 7;
      *a4 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990);
      return swift_storeEnumTagMultiPayload();
    }
  }
}

uint64_t sub_268CE61E0@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v294 = a3;
  v307 = a1;
  v315 = a2;
  v296 = "SetBinarySettingIntentResponse 'other reason' error code contains unsupported error detail: %@";
  v297 = &dword_268CBE000;
  v298 = "SetBinarySettingIntentResponse 'appNotInstalledForAnnounceNotifications' error is missing app bundle id: %@";
  v299 = "SetBinarySettingIntentResponse contains error code 'other reason' but no details: %@";
  v359 = 0;
  v358 = 0;
  v357 = 0;
  v356 = 0;
  v353 = 0;
  v354 = 0;
  v349 = 0;
  v323 = 0;
  v324 = 0;
  v318 = 0;
  v316 = 0;
  v317 = 0;
  v313 = *v3;
  v300 = sub_268F9AB24();
  v301 = *(v300 - 8);
  v302 = v300 - 8;
  v303 = (*(v301 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v300);
  v304 = &v108 - v303;
  v305 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v108 - v303);
  v306 = &v108 - v305;
  v308 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990);
  v310 = *(*(v308 - 8) + 64);
  v309 = (v310 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v315);
  v311 = (&v108 - v309);
  v312 = (v310 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v5);
  v314 = (&v108 - v312);
  v359 = &v108 - v312;
  v358 = v7;
  v357 = v6;
  v356 = v3;
  v355[2] = *(v313 + qword_2802F0750);
  v355[1] = *(v313 + qword_2802F0750 + 8);
  MEMORY[0x277D82BE0](v6);
  if (v315)
  {
    v293 = v315;
    v291 = v315;
    v292 = [v315 errorDetail];
    if (v292)
    {
      v290 = v292;
      v285 = v292;
      v286 = sub_268F9AE24();
      v287 = v8;
      MEMORY[0x277D82BD8](v285);
      v288 = v286;
      v289 = v287;
    }

    else
    {
      v288 = 0;
      v289 = 0;
    }

    v282 = v289;
    v281 = v288;
    MEMORY[0x277D82BD8](v291);
    v283 = v281;
    v284 = v282;
  }

  else
  {
    v283 = 0;
    v284 = 0;
  }

  v279 = v284;
  v280 = v283;
  if (v284)
  {
    v277 = v280;
    v278 = v279;
    v274 = v279;
    v275 = v280;
    v353 = v280;
    v354 = v279;
    v276 = v360;
    sub_268D23814(v307, v315, v360);
    memcpy(__dst, v276, sizeof(__dst));
    if (__dst[1])
    {
      v253 = v362;
      memcpy(v362, __dst, sizeof(v362));
      v255 = 0;
      v254 = type metadata accessor for SettingsBinarySetting();
      sub_268D28814(v253, v352);
      v261 = v362[0];
      v260 = v362[1];
      v9 = [v307 binaryValue];
      v258 = &v351;
      v351 = v9;
      v256 = &v350;
      v350 = 1;
      v257 = type metadata accessor for INBinarySettingValue();
      v259 = sub_268CD925C();
      v10 = sub_268F9B754();
      v266 = 1;
      v11 = SettingsBinarySetting.__allocating_init(settingId:value:)(v261, v260, v10 & 1);
      v12 = v306;
      v262 = v11;
      v349 = v11;
      v263 = sub_268D284D4();
      v13 = swift_allocError();
      v14 = v314;
      *v15 = 8;
      *v14 = v13;
      swift_storeEnumTagMultiPayload();
      v16 = sub_268DB98D4();
      v268 = *v16;
      v269 = v16[1];
      v270 = *(v16 + 16);
      v271 = *sub_268DC7BA8();
      MEMORY[0x277D82BE0](v271);
      (*(v301 + 16))(v12, v295 + qword_2802DBFD8, v300);
      sub_268F9AB14();
      v267 = sub_268F9AB04();
      v265 = *(v301 + 8);
      v264 = v301 + 8;
      v265(v304, v300);
      v265(v306, v300);
      sub_268DB9934(v268, v269, v270, v271, (v267 ^ v266) & 1);
      MEMORY[0x277D82BD8](v271);

      v17 = sub_268E948B8();
      v272 = v348;
      v348[0] = v17;
      v348[1] = v18;
      v347[2] = v275;
      v347[3] = v274;
      v273 = MEMORY[0x26D62DB50](v17, v18, v275, v274);
      sub_268CD9D30(v272);
      if (v273)
      {

        v252 = *(v295 + qword_2802F0740);

        sub_268F55654();

        sub_268D28630(v311, v314);
      }

      else
      {

        v19 = sub_268E948B8();
        v250 = v347;
        v347[0] = v19;
        v347[1] = v20;
        v346[2] = v275;
        v346[3] = v274;
        v251 = MEMORY[0x26D62DB50](v19, v20, v275, v274);
        sub_268CD9D30(v250);
        if (v251)
        {

          v249 = *(v295 + qword_2802F0740);

          sub_268F54CC8();

          sub_268D28630(v311, v314);
        }

        else
        {

          v21 = sub_268E948B8();
          v247 = v346;
          v346[0] = v21;
          v346[1] = v22;
          v345[2] = v275;
          v345[3] = v274;
          v248 = MEMORY[0x26D62DB50](v21, v22, v275, v274);
          sub_268CD9D30(v247);
          if (v248)
          {

            v246 = *(v295 + qword_2802F0740);

            sub_268F54D8C();

            sub_268D28630(v311, v314);
          }

          else
          {

            v23 = sub_268E948B8();
            v244 = v345;
            v345[0] = v23;
            v345[1] = v24;
            v344[2] = v275;
            v344[3] = v274;
            v245 = MEMORY[0x26D62DB50](v23, v24, v275, v274);
            sub_268CD9D30(v244);
            if (v245)
            {

              v243 = [v307 settingMetadata];
              if (v243)
              {
                v242 = v243;
                v236 = v243;
                v237 = [v243 settingId];
                v238 = sub_268F9AE24();
                v239 = v25;
                MEMORY[0x277D82BD8](v236);
                MEMORY[0x277D82BD8](v237);
                v240 = v238;
                v241 = v239;
              }

              else
              {
                v240 = 0;
                v241 = 0;
              }

              v234 = v241;
              v235 = v240;
              if (!v241)
              {
                sub_268D28BD4();
                v222 = 1;
                v26 = swift_allocError();
                v27 = v311;
                *v28 = 2;
                *v27 = v26;
                swift_storeEnumTagMultiPayload();
                sub_268D28630(v311, v314);
                v29 = sub_268DB98D4();
                v225 = *v29;
                v223 = v29[1];
                v224 = *(v29 + 16);
                v226 = *sub_268DC7BA8();
                MEMORY[0x277D82BE0](v226);
                sub_268DB9B78(v225, v223, v224, v226);
                MEMORY[0x277D82BD8](v226);
                sub_268D28718(v314, v294);

                sub_268CD9D30(v362);
              }

              v232 = v235;
              v233 = v234;
              v231 = v234;
              v227 = v235;
              v316 = v235;
              v317 = v234;
              v230 = *(v295 + qword_2802F0740);

              v229 = SettingsBinarySetting.__allocating_init(settingId:value:)(v227, v231, 0);
              v228 = *(v295 + qword_2802DBFE0);

              sub_268F54220(v229, v228, 2);

              sub_268D28630(v311, v314);
            }

            else
            {

              v31 = sub_268E948B8();
              v220 = v344;
              v344[0] = v31;
              v344[1] = v32;
              v343[2] = v275;
              v343[3] = v274;
              v221 = MEMORY[0x26D62DB50](v31, v32, v275, v274);
              sub_268CD9D30(v220);
              if (v221)
              {

                v219 = *(v295 + qword_2802DBFF8);

                v218 = *(v295 + qword_2802DBFE0);

                v33 = sub_268CDD6D4();
                sub_268F5E9A8(v218, v33 & 1);

                sub_268D28630(v311, v314);
              }

              else
              {

                v34 = sub_268E948B8();
                v216 = v343;
                v343[0] = v34;
                v343[1] = v35;
                v342[2] = v275;
                v342[3] = v274;
                v217 = MEMORY[0x26D62DB50](v34, v35, v275, v274);
                sub_268CD9D30(v216);
                if (v217)
                {

                  v215 = *(v295 + qword_2802DBFF8);

                  v36 = sub_268E948B8();
                  v214 = v37;
                  sub_268F5ED20(v36, v37);

                  sub_268D28630(v311, v314);
                }

                else
                {

                  v38 = sub_268E948B8();
                  v212 = v342;
                  v342[0] = v38;
                  v342[1] = v39;
                  v341[2] = v275;
                  v341[3] = v274;
                  v213 = MEMORY[0x26D62DB50](v38, v39, v275, v274);
                  sub_268CD9D30(v212);
                  if (v213)
                  {

                    v211 = *(v295 + qword_2802DBFF8);

                    v40 = sub_268E948B8();
                    v210 = v41;
                    sub_268F5ED20(v40, v41);

                    sub_268D28630(v311, v314);
                  }

                  else
                  {

                    v42 = sub_268E948B8();
                    v208 = v341;
                    v341[0] = v42;
                    v341[1] = v43;
                    v340[2] = v275;
                    v340[3] = v274;
                    v209 = MEMORY[0x26D62DB50](v42, v43, v275, v274);
                    sub_268CD9D30(v208);
                    if (v209)
                    {

                      v207 = *(v295 + qword_2802DBFF8);

                      v44 = sub_268E948B8();
                      v206 = v45;
                      sub_268F5ED20(v44, v45);

                      sub_268D28630(v311, v314);
                    }

                    else
                    {

                      v46 = sub_268E948B8();
                      v204 = v340;
                      v340[0] = v46;
                      v340[1] = v47;
                      v339[2] = v275;
                      v339[3] = v274;
                      v205 = MEMORY[0x26D62DB50](v46, v47, v275, v274);
                      sub_268CD9D30(v204);
                      if (v205)
                      {

                        v203 = *(v295 + qword_2802DBFF8);

                        sub_268F5FEEC();

                        sub_268D28630(v311, v314);
                      }

                      else
                      {

                        v48 = sub_268E948B8();
                        v201 = v339;
                        v339[0] = v48;
                        v339[1] = v49;
                        v338[2] = v275;
                        v338[3] = v274;
                        v202 = MEMORY[0x26D62DB50](v48, v49, v275, v274);
                        sub_268CD9D30(v201);
                        if (v202)
                        {

                          v198 = *(v295 + qword_2802DC010);

                          sub_268DAB218(v307);
                          v319[0] = v319[1];
                          v199 = sub_268F397B4(v319);

                          v318 = v199;
                          v200 = *(v295 + qword_2802F0740);

                          sub_268F57498(v199, 0, 0);

                          sub_268D28630(v311, v314);
                        }

                        else
                        {

                          v50 = sub_268E948B8();
                          v196 = v338;
                          v338[0] = v50;
                          v338[1] = v51;
                          v337[2] = v275;
                          v337[3] = v274;
                          v197 = MEMORY[0x26D62DB50](v50, v51, v275, v274);
                          sub_268CD9D30(v196);
                          if (v197)
                          {

                            v195 = *(v295 + qword_2802DBFF8);

                            type metadata accessor for SettingsMultiSetting();
                            sub_268D28814(v362, v322);
                            v193 = v362[0];
                            v192 = v362[1];
                            v321 = [v307 binaryValue];
                            v320 = 1;
                            v52 = sub_268F9B754();
                            v194 = sub_268E067CC(v193, v192, v52 & 1);
                            sub_268F5A288(v194);

                            sub_268D28630(v311, v314);
                          }

                          else
                          {

                            v53 = sub_268E948B8();
                            v190 = v337;
                            v337[0] = v53;
                            v337[1] = v54;
                            v336[2] = v275;
                            v336[3] = v274;
                            v191 = MEMORY[0x26D62DB50](v53, v54, v275, v274);
                            sub_268CD9D30(v190);
                            if (v191)
                            {

                              v189 = *(v295 + qword_2802DBFF8);

                              sub_268F5A028();

                              sub_268D28630(v311, v314);
                            }

                            else
                            {

                              v55 = sub_268E948B8();
                              v187 = v336;
                              v336[0] = v55;
                              v336[1] = v56;
                              v335[2] = v275;
                              v335[3] = v274;
                              v188 = MEMORY[0x26D62DB50](v55, v56, v275, v274);
                              sub_268CD9D30(v187);
                              if (v188)
                              {

                                v186 = *(v295 + qword_2802DBFF8);

                                sub_268F59AB8();

                                sub_268D28630(v311, v314);
                              }

                              else
                              {

                                v57 = sub_268E948B8();
                                v184 = v335;
                                v335[0] = v57;
                                v335[1] = v58;
                                v334[2] = v275;
                                v334[3] = v274;
                                v185 = MEMORY[0x26D62DB50](v57, v58, v275, v274);
                                sub_268CD9D30(v184);
                                if (v185)
                                {

                                  v183 = [v307 settingMetadata];
                                  if (v183 && (v182 = v183, v180 = v183, v181 = [v183 targetApp], MEMORY[0x277D82BD8](v180), v181))
                                  {
                                    v179 = v181;
                                    v177 = v181;
                                    v59 = [v181 bundleIdentifier];
                                    v178 = v59;
                                    if (v59)
                                    {
                                      v176 = v178;
                                      v171 = v178;
                                      v172 = sub_268F9AE24();
                                      v173 = v60;
                                      MEMORY[0x277D82BD8](v171);
                                      v174 = v172;
                                      v175 = v173;
                                    }

                                    else
                                    {
                                      v174 = 0;
                                      v175 = 0;
                                    }

                                    v168 = v175;
                                    v167 = v174;
                                    MEMORY[0x277D82BD8](v177);
                                    v169 = v167;
                                    v170 = v168;
                                  }

                                  else
                                  {
                                    v169 = 0;
                                    v170 = 0;
                                  }

                                  v165 = v170;
                                  v166 = v169;
                                  if (v170)
                                  {
                                    v163 = v166;
                                    v164 = v165;
                                    v162 = v165;
                                    v159 = v166;
                                    v323 = v166;
                                    v324 = v165;
                                    v161 = *(v295 + qword_2802DBFF8);

                                    sub_268F9A994();

                                    v160 = sub_268DE1C68(v159, v162);
                                    sub_268F59858(v160);

                                    sub_268D28630(v311, v314);
                                  }

                                  else
                                  {
                                    v157 = *sub_268DC7B48();
                                    MEMORY[0x277D82BE0](v157);
                                    v155 = sub_268F9B294();
                                    v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
                                    v154 = sub_268F9B734();
                                    v152 = v61;
                                    MEMORY[0x277D82BE0](v307);
                                    v149 = &v325;
                                    v325 = v307;
                                    v148 = sub_268CD7620();
                                    sub_268D28940();
                                    v150 = sub_268F9AE74();
                                    v151 = v62;
                                    v152[3] = MEMORY[0x277D837D0];
                                    v63 = sub_268CDD224();
                                    v64 = v150;
                                    v65 = v151;
                                    v66 = v152;
                                    v67 = v63;
                                    v68 = v154;
                                    v152[4] = v67;
                                    *v66 = v64;
                                    v66[1] = v65;
                                    sub_268CD0F7C();
                                    v156 = v68;
                                    sub_268F9AC04();

                                    MEMORY[0x277D82BD8](v157);
                                    v158 = 1;
                                    v69 = swift_allocError();
                                    v70 = v311;
                                    *v71 = 1;
                                    *v70 = v69;
                                    swift_storeEnumTagMultiPayload();
                                    sub_268D28630(v311, v314);
                                  }
                                }

                                else
                                {

                                  v72 = sub_268E948B8();
                                  v146 = v334;
                                  v334[0] = v72;
                                  v334[1] = v73;
                                  v333[2] = v275;
                                  v333[3] = v274;
                                  v147 = MEMORY[0x26D62DB50](v72, v73, v275, v274);
                                  sub_268CD9D30(v146);
                                  if (v147)
                                  {

                                    v145 = *(v295 + qword_2802DBFF8);

                                    sub_268F5FD4C();

                                    sub_268D28630(v311, v314);
                                  }

                                  else
                                  {

                                    v74 = sub_268E948B8();
                                    v143 = v333;
                                    v333[0] = v74;
                                    v333[1] = v75;
                                    v332[2] = v275;
                                    v332[3] = v274;
                                    v144 = MEMORY[0x26D62DB50](v74, v75, v275, v274);
                                    sub_268CD9D30(v143);
                                    if (v144)
                                    {

                                      v142 = *(v295 + qword_2802F0740);

                                      sub_268D28814(v362, v326);
                                      v141 = SettingsBinarySetting.__allocating_init(settingId:value:)(v362[0], v362[1], 0);
                                      sub_268F5525C(v141);

                                      sub_268D28630(v311, v314);
                                    }

                                    else
                                    {

                                      v76 = sub_268E948B8();
                                      v139 = v332;
                                      v332[0] = v76;
                                      v332[1] = v77;
                                      v331[1] = v275;
                                      v331[2] = v274;
                                      v140 = MEMORY[0x26D62DB50](v76, v77, v275, v274);
                                      sub_268CD9D30(v139);
                                      if (v140)
                                      {

                                        v138 = *(v295 + qword_2802F0740);

                                        v133 = *(v295 + qword_2802DC030);

                                        v330 = v307;
                                        v78 = sub_268CD7620();
                                        v79 = SettingIntent.deviceCategory.getter(v78, &protocol witness table for INSetBinarySettingIntent);
                                        v136 = sub_268D3DD54(v79, v80 & 1);

                                        v137 = v327;
                                        sub_268CDE730(v295 + qword_2802DBFE8, v327);
                                        v135 = v328;
                                        v134 = v329;
                                        __swift_project_boxed_opaque_existential_1(v137, v328);
                                        v81 = sub_268F997F4();
                                        sub_268F5767C(v136 & 1, v81 & 1);
                                        __swift_destroy_boxed_opaque_existential_0(v137);
                                      }

                                      else
                                      {

                                        v131 = *sub_268DC7B48();
                                        MEMORY[0x277D82BE0](v131);
                                        v129 = sub_268F9B294();
                                        v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
                                        v128 = sub_268F9B734();
                                        v126 = v82;
                                        MEMORY[0x277D82BE0](v315);
                                        v123 = v331;
                                        v331[0] = v315;
                                        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC080, &qword_268F9D998);
                                        v124 = sub_268F9AE64();
                                        v125 = v83;
                                        v126[3] = MEMORY[0x277D837D0];
                                        v84 = sub_268CDD224();
                                        v85 = v124;
                                        v86 = v125;
                                        v87 = v126;
                                        v88 = v84;
                                        v89 = v128;
                                        v126[4] = v88;
                                        *v87 = v85;
                                        v87[1] = v86;
                                        sub_268CD0F7C();
                                        v130 = v89;
                                        sub_268F9AC04();

                                        MEMORY[0x277D82BD8](v131);
                                        v132 = 1;
                                        v90 = swift_allocError();
                                        v91 = v311;
                                        *v92 = 8;
                                        *v91 = v90;
                                        swift_storeEnumTagMultiPayload();
                                      }

                                      sub_268D28630(v311, v314);
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

      v93 = sub_268DB98D4();
      v121 = *v93;
      v119 = v93[1];
      v120 = *(v93 + 16);
      v122 = *sub_268DC7BA8();
      MEMORY[0x277D82BE0](v122);
      sub_268DB9B78(v121, v119, v120, v122);
      MEMORY[0x277D82BD8](v122);
      sub_268D28718(v314, v294);

      sub_268CD9D30(v362);
    }

    else
    {
      sub_268D284D4();
      v118 = 1;
      v94 = swift_allocError();
      v95 = v294;
      *v96 = 4;
      *v95 = v94;
      swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    v116 = *sub_268DC7B48();
    MEMORY[0x277D82BE0](v116);
    v114 = sub_268F9B294();
    v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v113 = sub_268F9B734();
    v111 = v97;
    MEMORY[0x277D82BE0](v315);
    v108 = v355;
    v355[0] = v315;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC080, &qword_268F9D998);
    v109 = sub_268F9AE64();
    v110 = v98;
    v111[3] = MEMORY[0x277D837D0];
    v99 = sub_268CDD224();
    v100 = v109;
    v101 = v110;
    v102 = v111;
    v103 = v99;
    v104 = v113;
    v111[4] = v103;
    *v102 = v100;
    v102[1] = v101;
    sub_268CD0F7C();
    v115 = v104;
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v116);
    sub_268D284D4();
    v117 = 1;
    v105 = swift_allocError();
    v106 = v294;
    *v107 = 5;
    *v106 = v105;
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_268CE7E9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 200) = v3;
  *(v4 + 192) = a3;
  *(v4 + 184) = a2;
  *(v4 + 176) = a1;
  *(v4 + 112) = v4;
  *(v4 + 120) = 0;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 144) = 0;
  *(v4 + 280) = 0;
  *(v4 + 152) = 0;
  *(v4 + 120) = a1;
  *(v4 + 128) = a2;
  *(v4 + 136) = a3;
  *(v4 + 144) = v3;
  v5 = *(v4 + 112);
  return MEMORY[0x2822009F8](sub_268CE7F20, 0);
}

uint64_t sub_268CE7F20()
{
  v31 = v0;
  v1 = *(v0 + 184);
  *(v0 + 112) = v0;
  v27 = [v1 settingMetadata];
  if (v27)
  {
    v21 = [v27 settingId];
    v22 = sub_268F9AE24();
    v23 = v2;
    MEMORY[0x277D82BD8](v27);
    MEMORY[0x277D82BD8](v21);
    v24 = v22;
    v25 = v23;
  }

  else
  {
    v24 = 0;
    v25 = 0;
  }

  *(v26 + 96) = v24;
  *(v26 + 104) = v25;
  if (*(v26 + 104))
  {
    v29 = *(v26 + 96);
  }

  else
  {
    v29._countAndFlagsBits = sub_268F9AEF4();
    v29._object = v3;
    if (*(v26 + 104))
    {
      sub_268CD9D30(v26 + 96);
    }
  }

  BinarySettingIdentifier.init(rawValue:)(v29);
  if (v28 == 65)
  {
    goto LABEL_19;
  }

  v4 = *(v26 + 200);
  *(v26 + 280) = v28;
  v20 = *(v4 + qword_2802DC048);

  v30 = v28;
  sub_268F7C430(&v30);

  if (!*(v26 + 80))
  {
    sub_268D28414((v26 + 56));
LABEL_19:
    v9 = swift_task_alloc();
    *(v26 + 272) = v9;
    *v9 = *(v26 + 112);
    v9[1] = sub_268CE8C1C;
    v10 = *(v26 + 200);
    v11 = *(v26 + 192);
    v12 = *(v26 + 184);
    v13 = *(v26 + 176);

    return sub_268CE955C(v13, v12, v11);
  }

  v19 = *(v26 + 184);
  sub_268CDF978((v26 + 56), (v26 + 16));
  v17 = *(v26 + 40);
  v18 = *(v26 + 48);
  __swift_project_boxed_opaque_existential_1((v26 + 16), v17);
  if (((*(v18 + 16))(v19, v17) & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0((v26 + 16));
    goto LABEL_19;
  }

  v14 = *(v26 + 40);
  v15 = *(v26 + 48);
  __swift_project_boxed_opaque_existential_1((v26 + 16), v14);
  v16 = (*(v15 + 32) + **(v15 + 32));
  v5 = *(*(v15 + 32) + 4);
  v6 = swift_task_alloc();
  *(v26 + 208) = v6;
  *v6 = *(v26 + 112);
  v6[1] = sub_268CE8440;
  v7 = *(v26 + 184);

  return v16(v7, v14, v15);
}

uint64_t sub_268CE8440(uint64_t a1)
{
  v6 = *v1;
  v3 = *(*v1 + 208);
  *(v6 + 112) = *v1;
  *(v6 + 216) = a1;

  v4 = *(v6 + 112);

  return MEMORY[0x2822009F8](sub_268CE855C, 0);
}

uint64_t sub_268CE855C()
{
  v1 = v0[27];
  v0[14] = v0;
  v0[19] = v1;
  v0[20] = [v1 code];
  v0[21] = 3;
  type metadata accessor for INSetBinarySettingIntentResponseCode();
  sub_268CD91DC();
  if (sub_268F9B754())
  {
    v12 = v13[27];
    MEMORY[0x277D82BE0](v12);
    v2 = swift_task_alloc();
    v13[28] = v2;
    *v2 = v13[14];
    v2[1] = sub_268CE8784;
    v3 = v13[25];
    v4 = v13[23];
    v5 = v13[22];

    return sub_268CE955C(v5, v4, v12);
  }

  else
  {
    v11 = v13[27];
    MEMORY[0x277D82BE0](v11);
    v7 = swift_task_alloc();
    v13[31] = v7;
    *v7 = v13[14];
    v7[1] = sub_268CE89D0;
    v8 = v13[25];
    v9 = v13[23];
    v10 = v13[22];

    return sub_268CFB5FC(v10, v9, v11);
  }
}

uint64_t sub_268CE8784(uint64_t a1)
{
  v9 = *v2;
  v4 = *(*v2 + 224);
  *(v9 + 112) = *v2;
  v10 = (v9 + 112);
  *(v9 + 232) = a1;
  *(v9 + 240) = v1;

  if (v1)
  {
    v7 = *v10;
    v6 = sub_268CE8E14;
  }

  else
  {

    v5 = *v10;
    v6 = sub_268CE8908;
  }

  return MEMORY[0x2822009F8](v6, 0);
}

uint64_t sub_268CE8908()
{
  v1 = v0[27];
  v0[14] = v0;
  MEMORY[0x277D82BD8](v1);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = v0[29];
  v3 = *(v0[14] + 8);
  v4 = v0[14];

  return v3(v2);
}

uint64_t sub_268CE89D0(uint64_t a1)
{
  v9 = *v2;
  v4 = *(*v2 + 248);
  *(v9 + 112) = *v2;
  v10 = (v9 + 112);
  *(v9 + 256) = a1;
  *(v9 + 264) = v1;

  if (v1)
  {
    v7 = *v10;
    v6 = sub_268CE8EF4;
  }

  else
  {

    v5 = *v10;
    v6 = sub_268CE8B54;
  }

  return MEMORY[0x2822009F8](v6, 0);
}

uint64_t sub_268CE8B54()
{
  v1 = v0[27];
  v0[14] = v0;
  MEMORY[0x277D82BD8](v1);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = v0[32];
  v3 = *(v0[14] + 8);
  v4 = v0[14];

  return v3(v2);
}

uint64_t sub_268CE8C1C(uint64_t a1)
{
  v8 = *v2;
  v3 = *(*v2 + 272);
  *(v8 + 112) = *v2;
  v9 = v8 + 112;

  if (v1)
  {
    v5 = *(*v9 + 8);
  }

  else
  {
    v4 = a1;
    v5 = *(*v9 + 8);
  }

  return v5(v4);
}

uint64_t sub_268CE8E14()
{
  v5 = v0[27];
  v0[14] = v0;
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v5);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[30];
  v2 = *(v0[14] + 8);
  v3 = v0[14];

  return v2();
}

uint64_t sub_268CE8EF4()
{
  v5 = v0[27];
  v0[14] = v0;
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v5);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[33];
  v2 = *(v0[14] + 8);
  v3 = v0[14];

  return v2();
}

uint64_t sub_268CE8FD4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v33 = a3;
  v39 = a1;
  v38 = a2;
  v58 = 0;
  v57 = 0;
  v56 = 0;
  v50 = 0;
  v44 = *v3;
  v35 = 0;
  v36 = (*(*(sub_268F9AB24() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v37 = v13 - v36;
  v40 = sub_268F9A7B4();
  v41 = *(v40 - 8);
  v42 = v40 - 8;
  v43 = (*(v41 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v39);
  v45 = v13 - v43;
  v58 = v4;
  v57 = v5 & 1;
  v56 = v3;
  v55 = *(v44 + qword_2802F0750);
  v54 = *(v44 + qword_2802F0750 + 8);
  v46 = [v4 settingMetadata];
  if (v46)
  {
    v32 = v46;
    v26 = v46;
    v27 = [v46 settingId];
    v28 = sub_268F9AE24();
    v29 = v6;
    MEMORY[0x277D82BD8](v26);
    MEMORY[0x277D82BD8](v27);
    v30 = v28;
    v31 = v29;
  }

  else
  {
    v30 = 0;
    v31 = 0;
  }

  v24 = v31;
  v23 = v30;

  v53 = 49;
  v22 = BinarySettingIdentifier.rawValue.getter();
  v25 = v7;

  v51[0] = v23;
  v51[1] = v24;
  *&v52 = v22;
  *(&v52 + 1) = v25;
  if (v24)
  {
    sub_268D28874(v51, &v49);
    if (*(&v52 + 1))
    {
      v19 = &v48;
      v48 = v49;
      v18 = &v47;
      v47 = v52;
      v20 = MEMORY[0x26D62DB50](v49, *(&v49 + 1), v52, *(&v52 + 1));
      sub_268CD9D30(v18);
      sub_268CD9D30(v19);
      sub_268CD9D30(v51);
      v21 = v20;
      goto LABEL_9;
    }

    sub_268CD9D30(&v49);
    goto LABEL_11;
  }

  if (*(&v52 + 1))
  {
LABEL_11:
    sub_268D28550(v51);
    v21 = 0;
    goto LABEL_9;
  }

  sub_268CD9D30(v51);
  v21 = 1;
LABEL_9:
  v17 = v21;

  if (v17 & 1) == 0 || (v38)
  {
    return sub_268CDE730(v34 + qword_2802DBFF0, v33);
  }

  v13[2] = 0;
  sub_268F9A8C4();
  v13[0] = sub_268F9A884();
  sub_268F9A7A4();
  v13[1] = sub_268F9A8A4();
  (*(v41 + 8))(v45, v40);

  v15 = sub_268F9A8B4();

  v50 = v15;
  v14 = type metadata accessor for SetBinarySettingIntentCATPatternsExecutor();
  sub_268F9AAF4();
  MEMORY[0x277D82BE0](v15);
  v8 = sub_268F9A904();
  v9 = v33;
  v10 = v8;
  v11 = v15;
  v33[3] = v14;
  v9[4] = &off_28798CE80;
  *v9 = v10;
  return MEMORY[0x277D82BD8](v11);
}

uint64_t sub_268CE955C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 1544) = v3;
  *(v4 + 1536) = a3;
  *(v4 + 1528) = a2;
  *(v4 + 1256) = v4;
  *(v4 + 1272) = 0;
  *(v4 + 1280) = 0;
  *(v4 + 1288) = 0;
  *(v4 + 1296) = 0;
  *(v4 + 1880) = 0;
  *(v4 + 1888) = 0;
  *(v4 + 1320) = 0;
  *(v4 + 1250) = 0;
  *(v4 + 1896) = 0;
  *(v4 + 1904) = 0;
  *(v4 + 1328) = 0;
  *(v4 + 1048) = 0;
  *(v4 + 1056) = 0;
  *(v4 + 1912) = 0;
  *(v4 + 1251) = 0;
  *(v4 + 1344) = 0;
  *(v4 + 1352) = 0;
  *(v4 + 1368) = 0;
  *(v4 + 1384) = 0;
  *(v4 + 1400) = 0;
  *(v4 + 1160) = 0;
  *(v4 + 1168) = 0;
  *(v4 + 1920) = 0;
  *(v4 + 1240) = 0;
  *(v4 + 1248) = 0;
  *(v4 + 1416) = 0;
  *(v4 + 1176) = 0;
  *(v4 + 1184) = 0;
  *(v4 + 1424) = 0;
  *(v4 + 1432) = 0;
  *(v4 + 1456) = 0;
  *(v4 + 1464) = 0;
  *(v4 + 1192) = 0;
  *(v4 + 1200) = 0;
  *(v4 + 1488) = 0;
  *(v4 + 1504) = 0;
  v12 = *v3;
  v5 = sub_268F9AB24();
  *(v4 + 1552) = v5;
  v8 = *(v5 - 8);
  *(v4 + 1560) = v8;
  v9 = *(v8 + 64);
  *(v4 + 1568) = swift_task_alloc();
  *(v4 + 1576) = swift_task_alloc();
  *(v4 + 1272) = a1;
  *(v4 + 1280) = a2;
  *(v4 + 1288) = a3;
  *(v4 + 1296) = v3;
  *(v4 + 1584) = *(v12 + qword_2802F0750);
  *(v4 + 1592) = *(v12 + qword_2802F0750 + 8);
  v6 = *(v4 + 1256);

  return MEMORY[0x2822009F8](sub_268CE9798, 0);
}

uint64_t sub_268CE9798()
{
  v271 = v0;
  v1 = v0[193];
  v2 = v0[192];
  v3 = v0[191];
  v0[157] = v0;
  sub_268D23814(v3, v2, v0 + 12);
  memcpy(v0 + 7, v0 + 12, 0x28uLL);
  if (v0[8])
  {
    v4 = *(v266 + 1544);
    memcpy((v266 + 16), (v266 + 56), 0x28uLL);
    v265 = sub_268D2403C(*(v266 + 40), 0, 1);
    if (v265 == 2)
    {
      v102 = *(v266 + 1536);
      v93 = sub_268DC7B48();
      v106 = *v93;
      MEMORY[0x277D82BE0](*v93);
      sub_268F9B294();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      sub_268F9B734();
      v105 = v94;
      MEMORY[0x277D82BE0](v102);
      *(v266 + 1304) = v102;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC080, &qword_268F9D998);
      v103 = sub_268F9AE64();
      v104 = v95;
      v105[3] = MEMORY[0x277D837D0];
      v105[4] = sub_268CDD224();
      *v105 = v103;
      v105[1] = v104;
      sub_268CD0F7C();
      sub_268F9AC04();

      MEMORY[0x277D82BD8](v106);
      sub_268D284D4();
      swift_allocError();
      *v96 = 3;
      swift_willThrow();
      sub_268CD9D30(v266 + 16);
    }

    else
    {
      v5 = *(v266 + 1544);
      *(v266 + 1880) = v265 & 1;
      v264 = sub_268D2403C(*(v266 + 48), 0, 1);
      if (v264 != 2)
      {
        v6 = *(v266 + 1592);
        v7 = *(v266 + 1584);
        v260 = *(v266 + 1544);
        v262 = *(v266 + 1528);
        *(v266 + 1888) = v264 & 1;
        v8 = sub_268CDFACC();
        v261 = sub_268CDFAE8((v266 + 16), v265 & 1, v8 & 1);
        *(v266 + 1600) = v261;
        *(v266 + 1320) = v261;
        v263 = sub_268D24458(v265 & 1, v264 & 1);
        MEMORY[0x277D82BE0](v262);
        if (!v263)
        {
          v253 = 0;
LABEL_15:
          MEMORY[0x277D82BD8](*(v266 + 1528));
          if (v253)
          {
            v245 = *(v266 + 1576);
            v244 = *(v266 + 1568);
            v246 = *(v266 + 1552);
            v243 = *(v266 + 1544);
            v242 = *(v266 + 1560);
            sub_268D28C4C();
            *(v266 + 1456) = sub_268CF0C44();
            v12 = sub_268DB98D4();
            v249 = *v12;
            v250 = v12[1];
            v251 = *(v12 + 16);
            v13 = sub_268DC7BA8();
            v252 = *v13;
            MEMORY[0x277D82BE0](*v13);
            (*(v242 + 16))(v245, v243 + qword_2802DBFD8, v246);
            sub_268F9AB14();
            v248 = sub_268F9AB04();
            v247 = *(v242 + 8);
            v247(v244, v246);
            v247(v245, v246);
            sub_268DB9934(v249, v250, v251, v252, (v248 ^ 1) & 1);
            MEMORY[0x277D82BD8](v252);
            v14 = *(v266 + 32);
            if (sub_268D244E8())
            {
              sub_268D28814((v266 + 16), (v266 + 736));
              v239 = *(v266 + 16);
              v240 = *(v266 + 24);
              v270[2] = 45;
              v15 = BinarySettingIdentifier.rawValue.getter();
              v241 = MEMORY[0x26D62DB50](v239, v240, v15);

              if (v241)
              {
                v234 = *(v266 + 1544);
                sub_268CDE730(v234 + qword_2802DBFF0, v266 + 856);
                v236 = *(v266 + 880);
                v237 = *(v266 + 888);
                __swift_project_boxed_opaque_existential_1((v266 + 856), v236);

                sub_268D28814((v266 + 16), (v266 + 896));
                v235 = swift_task_alloc();
                *(v266 + 1608) = v235;
                *(v235 + 16) = v234;
                *(v235 + 24) = v266 + 16;
                *(v235 + 32) = v265 & 1;
                v238 = (*(v237 + 96) + **(v237 + 96));
                v16 = *(*(v237 + 96) + 4);
                v17 = swift_task_alloc();
                v18 = v235;
                v19 = v236;
                v20 = v237;
                v21 = v238;
                v22 = v17;
                v23 = sub_268D28DF0;
                *(v266 + 1616) = v22;
                *v22 = *(v266 + 1256);
                v22[1] = sub_268CED39C;
              }

              else
              {
                v229 = *(v266 + 1544);
                sub_268CDE730(v229 + qword_2802DBFF0, v266 + 776);
                v231 = *(v266 + 800);
                v232 = *(v266 + 808);
                __swift_project_boxed_opaque_existential_1((v266 + 776), v231);

                sub_268D28814((v266 + 16), (v266 + 816));
                v230 = swift_task_alloc();
                *(v266 + 1640) = v230;
                v230[2] = v261;
                v230[3] = v229;
                v230[4] = v266 + 16;
                v233 = (*(v232 + 32) + **(v232 + 32));
                v24 = *(*(v232 + 32) + 4);
                v25 = swift_task_alloc();
                v18 = v230;
                v19 = v231;
                v20 = v232;
                v21 = v233;
                v26 = v25;
                v23 = sub_268D28DE0;
                *(v266 + 1648) = v26;
                *v26 = *(v266 + 1256);
                v26[1] = sub_268CED740;
              }
            }

            else
            {
              sub_268D28814((v266 + 16), (v266 + 536));
              v226 = *(v266 + 16);
              v227 = *(v266 + 24);
              v270[1] = 45;
              v27 = BinarySettingIdentifier.rawValue.getter();
              v228 = MEMORY[0x26D62DB50](v226, v227, v27);

              if (v228)
              {
                v28 = *(v266 + 1528);
                *(v266 + 1480) = 0;
                v225 = [v28 settingMetadata];
                if (v225 && (v224 = [v225 targetApp], MEMORY[0x277D82BD8](v225), v224))
                {
                  v29 = [v224 bundleIdentifier];
                  v223 = v29;
                  if (v29)
                  {
                    v219 = sub_268F9AE24();
                    v220 = v30;
                    MEMORY[0x277D82BD8](v223);
                    v221 = v219;
                    v222 = v220;
                  }

                  else
                  {
                    v221 = 0;
                    v222 = 0;
                  }

                  MEMORY[0x277D82BD8](v224);
                  v217 = v221;
                  v218 = v222;
                }

                else
                {
                  v217 = 0;
                  v218 = 0;
                }

                if (v218)
                {
                  *(v266 + 1192) = v217;
                  *(v266 + 1200) = v218;
                  sub_268F9A994();

                  v31 = sub_268DE1C68(v217, v218);
                  v32 = *(v266 + 1480);
                  *(v266 + 1480) = v31;
                }

                v211 = *(v266 + 1544);
                v212 = *(v266 + 1528);
                sub_268CDE730(v211 + qword_2802DBFF0, v266 + 656);
                v214 = *(v266 + 680);
                v215 = *(v266 + 688);
                __swift_project_boxed_opaque_existential_1((v266 + 656), v214);
                sub_268D28814((v266 + 16), (v266 + 696));

                MEMORY[0x277D82BE0](v212);
                v213 = swift_task_alloc();
                *(v266 + 1672) = v213;
                *(v213 + 16) = v266 + 16;
                *(v213 + 24) = v265 & 1;
                *(v213 + 32) = v266 + 1480;
                *(v213 + 40) = v211;
                *(v213 + 48) = v212;
                v216 = (*(v215 + 160) + **(v215 + 160));
                v33 = *(*(v215 + 160) + 4);
                v34 = swift_task_alloc();
                v18 = v213;
                v19 = v214;
                v20 = v215;
                v21 = v216;
                v35 = v34;
                v23 = sub_268D28DC4;
                *(v266 + 1680) = v35;
                *v35 = *(v266 + 1256);
                v35[1] = sub_268CEDAF4;
              }

              else
              {
                v205 = *(v266 + 1544);
                v206 = *(v266 + 1528);
                sub_268CDE730(v205 + qword_2802DBFF0, v266 + 576);
                v208 = *(v266 + 600);
                v209 = *(v266 + 608);
                __swift_project_boxed_opaque_existential_1((v266 + 576), v208);

                sub_268D28814((v266 + 16), (v266 + 616));
                MEMORY[0x277D82BE0](v206);
                v207 = swift_task_alloc();
                *(v266 + 1704) = v207;
                v207[2] = v205;
                v207[3] = v261;
                v207[4] = v266 + 16;
                v207[5] = v206;
                v210 = (*(v209 + 16) + **(v209 + 16));
                v36 = *(*(v209 + 16) + 4);
                v37 = swift_task_alloc();
                v18 = v207;
                v19 = v208;
                v20 = v209;
                v21 = v210;
                v38 = v37;
                v23 = sub_268D28DB0;
                *(v266 + 1712) = v38;
                *v38 = *(v266 + 1256);
                v38[1] = sub_268CEDEB0;
              }
            }

            return v21(v23, v18, v19, v20);
          }

          v40 = *(v266 + 1528);
          *(v266 + 1250) = 0;
          sub_268DAB218(v40);
          *(v266 + 1896) = v267;
          if (v267 == 65)
          {
            v204 = 0;
          }

          else
          {
            v41 = *(v266 + 1544);
            *(v266 + 1920) = v267;
            v201 = *(v41 + qword_2802DC018);

            v270[0] = v267;
            v202 = sub_268E12DF8(v270);
            v203 = v42;

            if ((v203 & 0xFF00) == 0x400)
            {
              v204 = 0;
            }

            else
            {
              v43 = *(v266 + 1544);
              *(v266 + 1240) = v202;
              *(v266 + 1248) = v203 & 1;
              *(v266 + 1249) = HIBYTE(v203);
              v199 = *(v43 + qword_2802DC020);

              v200 = sub_268F23C10();

              *(v266 + 1416) = v200;
              *(v266 + 1176) = sub_268E127A4();
              *(v266 + 1184) = v44;
              MEMORY[0x277D82BE0](v200);
              if (v200)
              {

                v195 = sub_268F9AE14();

                v196 = [v200 integerForKey_];
                MEMORY[0x277D82BD8](v195);
                MEMORY[0x277D82BD8](v200);
                v197 = v196;
                v198 = 0;
              }

              else
              {
                v197 = 0;
                v198 = 1;
              }

              if (v198)
              {
                v194 = 0;
              }

              else
              {
                *(v266 + 1424) = v197;
                if (v203)
                {
                  v194 = 0;
                }

                else
                {
                  v45 = *(v266 + 1544);
                  *(v266 + 1432) = v202;
                  v46 = *(v45 + qword_2802DC018);

                  v193 = sub_268E12F10();

                  sub_268D28814((v266 + 16), (v266 + 456));
                  if (v197 >= v193)
                  {
                    v192 = 0;
                  }

                  else
                  {
                    *(v266 + 1440) = v202;
                    *(v266 + 1264) = *(v266 + 32);
                    *(v266 + 1448) = *(v266 + 1264);
                    type metadata accessor for INBinarySettingValue();
                    sub_268CD925C();
                    v192 = sub_268F9B754();
                  }

                  sub_268CD9D30(v266 + 16);
                  if (v192)
                  {
                    MEMORY[0x277D82BE0](v200);
                    if (v200)
                    {
                      result = v200;
                      if (__OFADD__(v197, 1))
                      {
                        __break(1u);
                        return result;
                      }

                      v191 = sub_268F9AE14();

                      [v200 setInteger:v197 + 1 forKey:v191];
                      MEMORY[0x277D82BD8](v191);
                      MEMORY[0x277D82BD8](v200);
                    }

                    v48 = sub_268DC7B48();
                    v189 = *v48;
                    MEMORY[0x277D82BE0](*v48);
                    sub_268F9B284();
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
                    sub_268F9B734();
                    v188 = v49;
                    sub_268D28814((v266 + 16), (v266 + 496));
                    *(v266 + 1032) = *(v266 + 16);
                    *(v188 + 24) = MEMORY[0x277D837D0];
                    *(v188 + 32) = sub_268CDD224();
                    *v188 = *(v266 + 1032);
                    sub_268CD0F7C();
                    sub_268F9AC04();

                    MEMORY[0x277D82BD8](v189);
                    *(v266 + 1250) = 1;
                    v190 = 1;
                  }

                  else
                  {
                    v190 = 0;
                  }

                  v194 = v190;
                }
              }

              MEMORY[0x277D82BD8](v200);
              v204 = v194;
            }
          }

          v186 = *(*(v266 + 1544) + qword_2802DC008);

          v268 = v267;
          v187 = sub_268E57758(&v268);

          if (v187)
          {
            v185 = 1;
          }

          else
          {
            v50 = *(v266 + 1544);
            v269[0] = v267;
            v185 = sub_268CE2BF4(v269);
          }

          v178 = *(v266 + 1544);
          v182 = *(v266 + 1528);

          *(v266 + 1904) = v185 & 1;
          v179 = [v182 temporalEventTrigger];
          *(v266 + 1736) = v179;
          *(v266 + 1328) = v179;
          v180 = sub_268D25234(v179);
          v181 = v51;
          *(v266 + 1744) = v51;
          *(v266 + 1048) = v180;
          *(v266 + 1056) = v51;
          v183 = sub_268D245A8(v179);
          *(v266 + 1912) = v183;
          *(v266 + 1251) = 0;
          *(v266 + 1336) = 0;
          v52 = [v182 settingMetadata];
          v184 = v52;
          if (v52 && (v177 = [v52 targetApp], MEMORY[0x277D82BD8](v184), v177))
          {
            v53 = [v177 bundleIdentifier];
            v176 = v53;
            if (v53)
            {
              v172 = sub_268F9AE24();
              v173 = v54;
              MEMORY[0x277D82BD8](v176);
              v174 = v172;
              v175 = v173;
            }

            else
            {
              v174 = 0;
              v175 = 0;
            }

            MEMORY[0x277D82BD8](v177);
            v170 = v174;
            v171 = v175;
          }

          else
          {
            v170 = 0;
            v171 = 0;
          }

          if (v171)
          {
            v166 = *(v266 + 1544);
            *(v266 + 1160) = v170;
            *(v266 + 1168) = v171;
            sub_268F9A994();

            v55 = sub_268DE1C68(v170, v171);
            v56 = *(v266 + 1336);
            *(v266 + 1336) = v55;

            v167 = *(v166 + qword_2802DC040);

            v168 = sub_268DFFEC0(v170, v171);

            *(v266 + 1251) = v168 & 1;

            v169 = v168;
          }

          else
          {
            v169 = 0;
          }

          v57 = *(v266 + 1576);
          v158 = *(v266 + 1568);
          v159 = *(v266 + 1552);
          v156 = *(v266 + 1544);
          v157 = *(v266 + 1560);
          v58 = sub_268DB98D4();
          v162 = *v58;
          v163 = v58[1];
          v164 = *(v58 + 16);
          v59 = sub_268DC7BA8();
          v165 = *v59;
          MEMORY[0x277D82BE0](*v59);
          (*(v157 + 16))(v57, v156 + qword_2802DBFD8, v159);
          sub_268F9AB14();
          v161 = sub_268F9AB04();
          v160 = *(v157 + 8);
          v160(v158, v159);
          v160(v57, v159);
          sub_268DB9934(v162, v163, v164, v165, (v161 ^ 1) & 1);
          MEMORY[0x277D82BD8](v165);
          sub_268D28C4C();
          *(v266 + 1344) = sub_268CF0C44();
          if (v185)
          {
            v155 = [*(v266 + 1528) settingMetadata];
            if (v155)
            {
              v150 = [v155 settingId];
              v151 = sub_268F9AE24();
              v152 = v60;
              MEMORY[0x277D82BD8](v155);
              MEMORY[0x277D82BD8](v150);
              v153 = v151;
              v154 = v152;
            }

            else
            {
              v153 = 0;
              v154 = 0;
            }

            v269[2] = 45;
            v148 = BinarySettingIdentifier.rawValue.getter();
            v149 = v61;

            *(v266 + 968) = v153;
            *(v266 + 976) = v154;
            *(v266 + 984) = v148;
            *(v266 + 992) = v149;
            if (*(v266 + 976))
            {
              sub_268D28874((v266 + 968), (v266 + 1112));
              if (*(v266 + 992))
              {
                *(v266 + 1128) = *(v266 + 1112);
                *(v266 + 1144) = *(v266 + 984);
                v146 = MEMORY[0x26D62DB50](*(v266 + 1128), *(v266 + 1136), *(v266 + 1144), *(v266 + 1152));
                sub_268CD9D30(v266 + 1144);
                sub_268CD9D30(v266 + 1128);
                sub_268CD9D30(v266 + 968);
                v147 = v146;
LABEL_95:

                if ((v147 & 1) == 0)
                {
                  v134 = *(v266 + 1544);
                  v135 = *(v266 + 1528);
                  sub_268CE8FD4(v135, v264 & 1, v266 + 296);
                  v137 = *(v266 + 320);
                  v138 = *(v266 + 328);
                  __swift_project_boxed_opaque_existential_1((v266 + 296), v137);

                  sub_268D28814((v266 + 16), (v266 + 336));
                  MEMORY[0x277D82BE0](v135);
                  v136 = swift_task_alloc();
                  *(v266 + 1784) = v136;
                  v136[2] = v266 + 1336;
                  v136[3] = v261;
                  v136[4] = v134;
                  v136[5] = v180;
                  v136[6] = v181;
                  v136[7] = v266 + 16;
                  v136[8] = v135;
                  v139 = (*(v138 + 152) + **(v138 + 152));
                  v73 = *(*(v138 + 152) + 4);
                  v74 = swift_task_alloc();
                  v75 = sub_268D28D6C;
                  v76 = v136;
                  v77 = v137;
                  v78 = v138;
                  v79 = v139;
                  *(v266 + 1792) = v74;
                  *v74 = *(v266 + 1256);
                  v74[1] = sub_268CEE6B8;
                  v80 = v183;
                  v81 = v264 & 1;
                  v82 = v204 & 1;

                  return v79(v80, v81, v82, v75, v76, v77, v78);
                }

                v140 = *(v266 + 1544);
                v141 = *(v266 + 1528);
                sub_268CDE730(v140 + qword_2802DBFF0, v266 + 376);
                v143 = *(v266 + 400);
                v144 = *(v266 + 408);
                __swift_project_boxed_opaque_existential_1((v266 + 376), v143);
                sub_268D28814((v266 + 16), (v266 + 416));

                MEMORY[0x277D82BE0](v141);
                v142 = swift_task_alloc();
                *(v266 + 1752) = v142;
                *(v142 + 16) = v266 + 1336;
                *(v142 + 24) = v266 + 16;
                *(v142 + 32) = v265 & 1;
                *(v142 + 40) = v140;
                *(v142 + 48) = v180;
                *(v142 + 56) = v181;
                *(v142 + 64) = v141;
                v145 = (*(v144 + 72) + **(v144 + 72));
                v62 = *(*(v144 + 72) + 4);
                v63 = swift_task_alloc();
                v64 = sub_268D28D8C;
                v65 = v142;
                v66 = v143;
                v67 = v144;
                v68 = v145;
                *(v266 + 1760) = v63;
                *v63 = *(v266 + 1256);
                v63[1] = sub_268CEE274;
                v69 = v169 & 1;
                v70 = v183;
                v71 = v264 & 1;
                v72 = v204 & 1;

                return v68(v69, v70, v71, v72, v64, v65, v66, v67);
              }

              sub_268CD9D30(v266 + 1112);
            }

            else if (!*(v266 + 992))
            {
              sub_268CD9D30(v266 + 968);
              v147 = 1;
              goto LABEL_95;
            }

            sub_268D28550(v266 + 968);
            v147 = 0;
            goto LABEL_95;
          }

          v133 = [*(v266 + 1528) settingMetadata];
          if (v133)
          {
            v128 = [v133 settingId];
            v129 = sub_268F9AE24();
            v130 = v83;
            MEMORY[0x277D82BD8](v133);
            MEMORY[0x277D82BD8](v128);
            v131 = v129;
            v132 = v130;
          }

          else
          {
            v131 = 0;
            v132 = 0;
          }

          v269[1] = 45;
          v126 = BinarySettingIdentifier.rawValue.getter();
          v127 = v84;

          *(v266 + 936) = v131;
          *(v266 + 944) = v132;
          *(v266 + 952) = v126;
          *(v266 + 960) = v127;
          if (*(v266 + 944))
          {
            sub_268D28874((v266 + 936), (v266 + 1064));
            if (*(v266 + 960))
            {
              *(v266 + 1080) = *(v266 + 1064);
              *(v266 + 1096) = *(v266 + 952);
              v124 = MEMORY[0x26D62DB50](*(v266 + 1080), *(v266 + 1088), *(v266 + 1096), *(v266 + 1104));
              sub_268CD9D30(v266 + 1096);
              sub_268CD9D30(v266 + 1080);
              sub_268CD9D30(v266 + 936);
              v125 = v124;
LABEL_114:

              if ((v125 & 1) == 0)
              {
                v112 = *(v266 + 1544);
                v113 = *(v266 + 1528);
                sub_268CE8FD4(v113, v264 & 1, v266 + 136);
                v115 = *(v266 + 160);
                v116 = *(v266 + 168);
                __swift_project_boxed_opaque_existential_1((v266 + 136), v115);

                sub_268D28814((v266 + 16), (v266 + 176));
                MEMORY[0x277D82BE0](v113);
                v114 = swift_task_alloc();
                *(v266 + 1848) = v114;
                v114[2] = v261;
                v114[3] = v266 + 1336;
                v114[4] = v112;
                v114[5] = v180;
                v114[6] = v181;
                v114[7] = v266 + 16;
                v114[8] = v113;
                v117 = (*(v116 + 8) + **(v116 + 8));
                v87 = *(*(v116 + 8) + 4);
                v88 = swift_task_alloc();
                v75 = sub_268D28CB0;
                v76 = v114;
                v77 = v115;
                v78 = v116;
                v79 = v117;
                *(v266 + 1856) = v88;
                *v88 = *(v266 + 1256);
                v88[1] = sub_268CEEF50;
                v80 = v183;
                v81 = v264 & 1;
                v82 = v204 & 1;

                return v79(v80, v81, v82, v75, v76, v77, v78);
              }

              v118 = *(v266 + 1544);
              v119 = *(v266 + 1528);
              sub_268CDE730(v118 + qword_2802DBFF0, v266 + 216);
              v121 = *(v266 + 240);
              v122 = *(v266 + 248);
              __swift_project_boxed_opaque_existential_1((v266 + 216), v121);

              sub_268D28814((v266 + 16), (v266 + 256));
              MEMORY[0x277D82BE0](v119);
              v120 = swift_task_alloc();
              *(v266 + 1816) = v120;
              *(v120 + 16) = v266 + 1336;
              *(v120 + 24) = v180;
              *(v120 + 32) = v181;
              *(v120 + 40) = v118;
              *(v120 + 48) = v266 + 16;
              *(v120 + 56) = v265 & 1;
              *(v120 + 64) = v119;
              v123 = (*(v122 + 104) + **(v122 + 104));
              v85 = *(*(v122 + 104) + 4);
              v86 = swift_task_alloc();
              v64 = sub_268D28D48;
              v65 = v120;
              v66 = v121;
              v67 = v122;
              v68 = v123;
              *(v266 + 1824) = v86;
              *v86 = *(v266 + 1256);
              v86[1] = sub_268CEEB0C;
              v69 = v169 & 1;
              v70 = v183;
              v71 = v264 & 1;
              v72 = v204 & 1;

              return v68(v69, v70, v71, v72, v64, v65, v66, v67);
            }

            sub_268CD9D30(v266 + 1064);
          }

          else if (!*(v266 + 960))
          {
            sub_268CD9D30(v266 + 936);
            v125 = 1;
            goto LABEL_114;
          }

          sub_268D28550(v266 + 936);
          v125 = 0;
          goto LABEL_114;
        }

        *(v266 + 1520) = *(v266 + 1528);
        v9 = sub_268CD7620();
        v257 = SettingIntent.settingIdentifier.getter(v9, &protocol witness table for INSetBinarySettingIntent);
        v258 = v10;

        v270[3] = 1;
        v256 = BinarySettingIdentifier.rawValue.getter();
        v259 = v11;

        *(v266 + 1000) = v257;
        *(v266 + 1008) = v258;
        *(v266 + 1016) = v256;
        *(v266 + 1024) = v259;
        if (*(v266 + 1008))
        {
          sub_268D28874((v266 + 1000), (v266 + 1208));
          if (*(v266 + 1024))
          {
            *(v266 + 1224) = *(v266 + 1016);
            v254 = MEMORY[0x26D62DB50](*(v266 + 1208), *(v266 + 1216), *(v266 + 1224), *(v266 + 1232));
            sub_268CD9D30(v266 + 1224);
            sub_268CD9D30(v266 + 1208);
            sub_268CD9D30(v266 + 1000);
            v255 = v254;
LABEL_11:

            v253 = v255 ^ 1;
            goto LABEL_15;
          }

          sub_268CD9D30(v266 + 1208);
        }

        else if (!*(v266 + 1024))
        {
          sub_268CD9D30(v266 + 1000);
          v255 = 1;
          goto LABEL_11;
        }

        sub_268D28550(v266 + 1000);
        v255 = 0;
        goto LABEL_11;
      }

      v107 = *(v266 + 1536);
      v89 = sub_268DC7B48();
      v111 = *v89;
      MEMORY[0x277D82BE0](*v89);
      sub_268F9B294();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      sub_268F9B734();
      v110 = v90;
      MEMORY[0x277D82BE0](v107);
      *(v266 + 1312) = v107;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC080, &qword_268F9D998);
      v108 = sub_268F9AE64();
      v109 = v91;
      v110[3] = MEMORY[0x277D837D0];
      v110[4] = sub_268CDD224();
      *v110 = v108;
      v110[1] = v109;
      sub_268CD0F7C();
      sub_268F9AC04();

      MEMORY[0x277D82BD8](v111);
      sub_268D284D4();
      swift_allocError();
      *v92 = 2;
      swift_willThrow();
      sub_268CD9D30(v266 + 16);
    }
  }

  else
  {
    sub_268D284D4();
    swift_allocError();
    *v97 = 4;
    swift_willThrow();
  }

  v98 = *(v266 + 1576);
  v101 = *(v266 + 1568);

  v99 = *(*(v266 + 1256) + 8);
  v100 = *(v266 + 1256);

  return v99();
}

uint64_t sub_268CED39C(uint64_t a1)
{
  v13 = *v2;
  v11 = *v2 + 16;
  v12 = (*v2 + 1256);
  v4 = *(*v2 + 1616);
  v13[157] = *v2;
  v13[203] = a1;
  v13[204] = v1;

  if (v1)
  {
    v8 = *v12;
    v7 = sub_268CEF3A4;
  }

  else
  {
    v5 = *(v11 + 1592);
    v10 = *(v11 + 1528);

    sub_268CD9D30(v11);
    v6 = *v12;
    v7 = sub_268CED544;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_268CED544()
{
  v1 = v0[203];
  v9 = v1;
  v0[157] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[182];
  v0[182] = v9;
  MEMORY[0x277D82BD8](v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 107);
  v16 = v0[203];
  v14 = v0[200];
  v3 = sub_268DB98D4();
  v12 = *v3;
  v10 = v3[1];
  v11 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v13 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v12, v10, v11, v13);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v0[182]);

  sub_268CD9D30((v0 + 2));
  v5 = v0[197];
  v15 = v0[196];

  v6 = *(v0[157] + 8);
  v7 = v0[157];

  return v6(v16);
}

uint64_t sub_268CED740(uint64_t a1)
{
  v14 = *v2;
  v12 = (*v2 + 16);
  v13 = (*v2 + 1256);
  v4 = *(*v2 + 1648);
  v14[157] = *v2;
  v14[207] = a1;
  v14[208] = v1;

  if (v1)
  {
    v8 = *v13;
    v7 = sub_268CEF670;
  }

  else
  {
    v5 = v12[203];
    v10 = v12[198];
    v11 = v12[191];

    sub_268CD9D30(v12);
    v6 = *v13;
    v7 = sub_268CED8F8;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_268CED8F8()
{
  v1 = v0[207];
  v9 = v1;
  v0[157] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[182];
  v0[182] = v9;
  MEMORY[0x277D82BD8](v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 97);
  v16 = v0[207];
  v14 = v0[200];
  v3 = sub_268DB98D4();
  v12 = *v3;
  v10 = v3[1];
  v11 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v13 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v12, v10, v11, v13);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v0[182]);

  sub_268CD9D30((v0 + 2));
  v5 = v0[197];
  v15 = v0[196];

  v6 = *(v0[157] + 8);
  v7 = v0[157];

  return v6(v16);
}

uint64_t sub_268CEDAF4(uint64_t a1)
{
  v14 = *v2;
  v12 = (*v2 + 16);
  v13 = (*v2 + 1256);
  v4 = *(*v2 + 1680);
  v14[157] = *v2;
  v14[211] = a1;
  v14[212] = v1;

  if (v1)
  {
    v8 = *v13;
    v7 = sub_268CEF944;
  }

  else
  {
    v5 = v12[207];
    v10 = v12[191];
    v11 = v12[189];

    sub_268CD9D30(v12);

    v6 = *v13;
    v7 = sub_268CEDCAC;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_268CEDCAC()
{
  v1 = v0[211];
  v9 = v1;
  v0[157] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[182];
  v0[182] = v9;
  MEMORY[0x277D82BD8](v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 82);
  sub_268D287E8(v0 + 185);
  v16 = v0[211];
  v14 = v0[200];
  v3 = sub_268DB98D4();
  v12 = *v3;
  v10 = v3[1];
  v11 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v13 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v12, v10, v11, v13);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v0[182]);

  sub_268CD9D30((v0 + 2));
  v5 = v0[197];
  v15 = v0[196];

  v6 = *(v0[157] + 8);
  v7 = v0[157];

  return v6(v16);
}

uint64_t sub_268CEDEB0(uint64_t a1)
{
  v15 = *v2;
  v13 = (*v2 + 16);
  v14 = (*v2 + 1256);
  v4 = *(*v2 + 1712);
  v15[157] = *v2;
  v15[215] = a1;
  v15[216] = v1;

  if (v1)
  {
    v8 = *v14;
    v7 = sub_268CEFC58;
  }

  else
  {
    v5 = v13[211];
    v11 = v13[198];
    v10 = v13[191];
    v12 = v13[189];

    sub_268CD9D30(v13);

    v6 = *v14;
    v7 = sub_268CEE078;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_268CEE078()
{
  v1 = v0[215];
  v9 = v1;
  v0[157] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[182];
  v0[182] = v9;
  MEMORY[0x277D82BD8](v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 72);
  v16 = v0[215];
  v14 = v0[200];
  v3 = sub_268DB98D4();
  v12 = *v3;
  v10 = v3[1];
  v11 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v13 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v12, v10, v11, v13);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v0[182]);

  sub_268CD9D30((v0 + 2));
  v5 = v0[197];
  v15 = v0[196];

  v6 = *(v0[157] + 8);
  v7 = v0[157];

  return v6(v16);
}

uint64_t sub_268CEE274(uint64_t a1)
{
  v15 = *v2;
  v13 = (*v2 + 16);
  v14 = (*v2 + 1256);
  v4 = *(*v2 + 1760);
  v15[157] = *v2;
  v15[221] = a1;
  v15[222] = v1;

  if (v1)
  {
    v8 = *v14;
    v7 = sub_268CEFF74;
  }

  else
  {
    v5 = v13[217];
    v11 = v13[216];
    v10 = v13[191];
    v12 = v13[189];

    sub_268CD9D30(v13);

    v6 = *v14;
    v7 = sub_268CEE43C;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_268CEE43C()
{
  v1 = v0[221];
  v9 = v1;
  v0[157] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[168];
  v0[168] = v9;
  MEMORY[0x277D82BD8](v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 47);
  v18 = v0[221];
  v14 = v0[218];
  v15 = v0[217];
  v16 = v0[200];
  v3 = sub_268DB98D4();
  v12 = *v3;
  v10 = v3[1];
  v11 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v13 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v12, v10, v11, v13);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v0[168]);
  sub_268D287E8(v0 + 167);

  MEMORY[0x277D82BD8](v15);

  sub_268CD9D30((v0 + 2));
  v5 = v0[197];
  v17 = v0[196];

  v6 = *(v0[157] + 8);
  v7 = v0[157];

  return v6(v18);
}

uint64_t sub_268CEE6B8(uint64_t a1)
{
  v16 = *v2;
  v14 = (*v2 + 16);
  v15 = (*v2 + 1256);
  v4 = *(*v2 + 1792);
  v16[157] = *v2;
  v16[225] = a1;
  v16[226] = v1;

  if (v1)
  {
    v8 = *v15;
    v7 = sub_268CF02A4;
  }

  else
  {
    v5 = v14[221];
    v12 = v14[216];
    v10 = v14[198];
    v11 = v14[191];
    v13 = v14[189];

    sub_268CD9D30(v14);

    v6 = *v15;
    v7 = sub_268CEE890;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_268CEE890()
{
  v1 = v0[225];
  v9 = v1;
  v0[157] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[168];
  v0[168] = v9;
  MEMORY[0x277D82BD8](v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 37);
  v18 = v0[225];
  v14 = v0[218];
  v15 = v0[217];
  v16 = v0[200];
  v3 = sub_268DB98D4();
  v12 = *v3;
  v10 = v3[1];
  v11 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v13 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v12, v10, v11, v13);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v0[168]);
  sub_268D287E8(v0 + 167);

  MEMORY[0x277D82BD8](v15);

  sub_268CD9D30((v0 + 2));
  v5 = v0[197];
  v17 = v0[196];

  v6 = *(v0[157] + 8);
  v7 = v0[157];

  return v6(v18);
}

uint64_t sub_268CEEB0C(uint64_t a1)
{
  v15 = *v2;
  v13 = (*v2 + 16);
  v14 = (*v2 + 1256);
  v4 = *(*v2 + 1824);
  v15[157] = *v2;
  v15[229] = a1;
  v15[230] = v1;

  if (v1)
  {
    v8 = *v14;
    v7 = sub_268CF05DC;
  }

  else
  {
    v5 = v13[225];
    v10 = v13[216];
    v11 = v13[191];
    v12 = v13[189];

    sub_268CD9D30(v13);

    v6 = *v14;
    v7 = sub_268CEECD4;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_268CEECD4()
{
  v1 = v0[229];
  v9 = v1;
  v0[157] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[168];
  v0[168] = v9;
  MEMORY[0x277D82BD8](v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 27);
  v18 = v0[229];
  v14 = v0[218];
  v15 = v0[217];
  v16 = v0[200];
  v3 = sub_268DB98D4();
  v12 = *v3;
  v10 = v3[1];
  v11 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v13 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v12, v10, v11, v13);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v0[168]);
  sub_268D287E8(v0 + 167);

  MEMORY[0x277D82BD8](v15);

  sub_268CD9D30((v0 + 2));
  v5 = v0[197];
  v17 = v0[196];

  v6 = *(v0[157] + 8);
  v7 = v0[157];

  return v6(v18);
}

uint64_t sub_268CEEF50(uint64_t a1)
{
  v16 = *v2;
  v14 = (*v2 + 16);
  v15 = (*v2 + 1256);
  v4 = *(*v2 + 1856);
  v16[157] = *v2;
  v16[233] = a1;
  v16[234] = v1;

  if (v1)
  {
    v8 = *v15;
    v7 = sub_268CF090C;
  }

  else
  {
    v5 = v14[229];
    v12 = v14[216];
    v10 = v14[198];
    v11 = v14[191];
    v13 = v14[189];

    sub_268CD9D30(v14);

    v6 = *v15;
    v7 = sub_268CEF128;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_268CEF128()
{
  v1 = v0[233];
  v9 = v1;
  v0[157] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[168];
  v0[168] = v9;
  MEMORY[0x277D82BD8](v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  v18 = v0[233];
  v14 = v0[218];
  v15 = v0[217];
  v16 = v0[200];
  v3 = sub_268DB98D4();
  v12 = *v3;
  v10 = v3[1];
  v11 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v13 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v12, v10, v11, v13);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v0[168]);
  sub_268D287E8(v0 + 167);

  MEMORY[0x277D82BD8](v15);

  sub_268CD9D30((v0 + 2));
  v5 = v0[197];
  v17 = v0[196];

  v6 = *(v0[157] + 8);
  v7 = v0[157];

  return v6(v18);
}

uint64_t sub_268CEF3A4()
{
  v16 = v0[204];
  v1 = v0[201];
  v17 = v0[200];
  v11 = v0[193];
  v0[157] = v0;

  sub_268CD9D30((v0 + 2));
  __swift_destroy_boxed_opaque_existential_0(v0 + 107);
  v2 = v16;
  v0[188] = v16;
  v3 = sub_268DC7B48();
  v15 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v14 = v4;
  v5 = v16;
  v0[189] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v12 = sub_268F9AE64();
  v13 = v6;
  v14[3] = MEMORY[0x277D837D0];
  v14[4] = sub_268CDD224();
  *v14 = v12;
  v14[1] = v13;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v15);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v0[182]);

  sub_268CD9D30((v0 + 2));
  v7 = v0[197];
  v18 = v0[196];

  v8 = *(v0[157] + 8);
  v9 = v0[157];

  return v8();
}

uint64_t sub_268CEF670()
{
  v16 = v0[208];
  v1 = v0[205];
  v17 = v0[200];
  v11 = v0[193];
  v0[157] = v0;

  sub_268CD9D30((v0 + 2));
  __swift_destroy_boxed_opaque_existential_0(v0 + 97);
  v2 = v16;
  v0[186] = v16;
  v3 = sub_268DC7B48();
  v15 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v14 = v4;
  v5 = v16;
  v0[187] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v12 = sub_268F9AE64();
  v13 = v6;
  v14[3] = MEMORY[0x277D837D0];
  v14[4] = sub_268CDD224();
  *v14 = v12;
  v14[1] = v13;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v15);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v0[182]);

  sub_268CD9D30((v0 + 2));
  v7 = v0[197];
  v18 = v0[196];

  v8 = *(v0[157] + 8);
  v9 = v0[157];

  return v8();
}

uint64_t sub_268CEF944()
{
  v1 = v0[209];
  v11 = v0[193];
  v12 = v0[191];
  v0[157] = v0;

  sub_268CD9D30((v0 + 2));

  MEMORY[0x277D82BD8](v12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 82);
  sub_268D287E8(v0 + 185);
  v17 = v0[212];
  v18 = v0[200];
  v2 = v17;
  v0[183] = v17;
  v3 = sub_268DC7B48();
  v16 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v15 = v4;
  v5 = v17;
  v0[184] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v13 = sub_268F9AE64();
  v14 = v6;
  v15[3] = MEMORY[0x277D837D0];
  v15[4] = sub_268CDD224();
  *v15 = v13;
  v15[1] = v14;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v16);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v0[182]);

  sub_268CD9D30((v0 + 2));
  v7 = v0[197];
  v19 = v0[196];

  v8 = *(v0[157] + 8);
  v9 = v0[157];

  return v8();
}

uint64_t sub_268CEFC58()
{
  v1 = v0[213];
  v12 = v0[200];
  v11 = v0[193];
  v13 = v0[191];
  v0[157] = v0;

  sub_268CD9D30((v0 + 2));
  MEMORY[0x277D82BD8](v13);
  __swift_destroy_boxed_opaque_existential_0(v0 + 72);
  v18 = v0[216];
  v19 = v0[200];
  v2 = v18;
  v0[183] = v18;
  v3 = sub_268DC7B48();
  v17 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v16 = v4;
  v5 = v18;
  v0[184] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v14 = sub_268F9AE64();
  v15 = v6;
  v16[3] = MEMORY[0x277D837D0];
  v16[4] = sub_268CDD224();
  *v16 = v14;
  v16[1] = v15;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v17);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v0[182]);

  sub_268CD9D30((v0 + 2));
  v7 = v0[197];
  v20 = v0[196];

  v8 = *(v0[157] + 8);
  v9 = v0[157];

  return v8();
}

uint64_t sub_268CEFF74()
{
  v17 = v0[222];
  v1 = v0[219];
  v18 = v0[218];
  v19 = v0[217];
  v20 = v0[200];
  v11 = v0[193];
  v12 = v0[191];
  v0[157] = v0;

  sub_268CD9D30((v0 + 2));

  MEMORY[0x277D82BD8](v12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 47);
  v2 = v17;
  v0[175] = v17;
  v3 = sub_268DC7B48();
  v16 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v15 = v4;
  v5 = v17;
  v0[176] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v13 = sub_268F9AE64();
  v14 = v6;
  v15[3] = MEMORY[0x277D837D0];
  v15[4] = sub_268CDD224();
  *v15 = v13;
  v15[1] = v14;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v16);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v0[168]);
  sub_268D287E8(v0 + 167);

  MEMORY[0x277D82BD8](v19);

  sub_268CD9D30((v0 + 2));
  v7 = v0[197];
  v21 = v0[196];

  v8 = *(v0[157] + 8);
  v9 = v0[157];

  return v8();
}

uint64_t sub_268CF02A4()
{
  v17 = v0[226];
  v1 = v0[223];
  v18 = v0[218];
  v19 = v0[217];
  v20 = v0[200];
  v11 = v0[193];
  v12 = v0[191];
  v0[157] = v0;

  sub_268CD9D30((v0 + 2));
  MEMORY[0x277D82BD8](v12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 37);
  v2 = v17;
  v0[173] = v17;
  v3 = sub_268DC7B48();
  v16 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v15 = v4;
  v5 = v17;
  v0[174] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v13 = sub_268F9AE64();
  v14 = v6;
  v15[3] = MEMORY[0x277D837D0];
  v15[4] = sub_268CDD224();
  *v15 = v13;
  v15[1] = v14;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v16);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v0[168]);
  sub_268D287E8(v0 + 167);

  MEMORY[0x277D82BD8](v19);

  sub_268CD9D30((v0 + 2));
  v7 = v0[197];
  v21 = v0[196];

  v8 = *(v0[157] + 8);
  v9 = v0[157];

  return v8();
}

uint64_t sub_268CF05DC()
{
  v17 = v0[230];
  v1 = v0[227];
  v18 = v0[218];
  v19 = v0[217];
  v20 = v0[200];
  v11 = v0[193];
  v12 = v0[191];
  v0[157] = v0;

  sub_268CD9D30((v0 + 2));
  MEMORY[0x277D82BD8](v12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 27);
  v2 = v17;
  v0[171] = v17;
  v3 = sub_268DC7B48();
  v16 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v15 = v4;
  v5 = v17;
  v0[172] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v13 = sub_268F9AE64();
  v14 = v6;
  v15[3] = MEMORY[0x277D837D0];
  v15[4] = sub_268CDD224();
  *v15 = v13;
  v15[1] = v14;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v16);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v0[168]);
  sub_268D287E8(v0 + 167);

  MEMORY[0x277D82BD8](v19);

  sub_268CD9D30((v0 + 2));
  v7 = v0[197];
  v21 = v0[196];

  v8 = *(v0[157] + 8);
  v9 = v0[157];

  return v8();
}

uint64_t sub_268CF090C()
{
  v17 = v0[234];
  v1 = v0[231];
  v18 = v0[218];
  v19 = v0[217];
  v20 = v0[200];
  v11 = v0[193];
  v12 = v0[191];
  v0[157] = v0;

  sub_268CD9D30((v0 + 2));
  MEMORY[0x277D82BD8](v12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  v2 = v17;
  v0[169] = v17;
  v3 = sub_268DC7B48();
  v16 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v15 = v4;
  v5 = v17;
  v0[170] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v13 = sub_268F9AE64();
  v14 = v6;
  v15[3] = MEMORY[0x277D837D0];
  v15[4] = sub_268CDD224();
  *v15 = v13;
  v15[1] = v14;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v16);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v0[168]);
  sub_268D287E8(v0 + 167);

  MEMORY[0x277D82BD8](v19);

  sub_268CD9D30((v0 + 2));
  v7 = v0[197];
  v21 = v0[196];

  v8 = *(v0[157] + 8);
  v9 = v0[157];

  return v8();
}

uint64_t sub_268CF0C74(void *a1, void *a2, uint64_t *a3, int a4)
{
  v29 = a1;
  v17 = a2;
  v22 = a3;
  v25 = a4;
  v39 = 0;
  v38 = 0;
  v35 = 0;
  v34 = 0;
  v20 = *a2;
  v18 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v29);
  v32 = &v15 - v18;
  v19 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v4);
  v27 = &v15 - v19;
  v39 = v6;
  v38 = v7;
  v30 = 0;
  v37 = *(v20 + qword_2802F0750);
  v36 = *(v20 + qword_2802F0750 + 8);
  v35 = v8;
  v31 = 1;
  v34 = v9 & 1;
  v21 = *(v7 + qword_2802DBFE0);

  v10 = *v29;
  *v29 = v21;

  type metadata accessor for SettingsMultiSetting();
  v23 = *v22;
  v24 = v22[1];

  v26 = sub_268E067CC(v23, v24, v25 & 1);
  v28 = type metadata accessor for SetBinarySettingIntentUnspecifiedActionForSupportedMultiSettingParameters();
  v11 = (v29 + v28[6]);
  v12 = *v11;
  *v11 = v26;

  v33 = 45;
  sub_268E0697C(&v33, v27);
  sub_268D29FC8(v27, v29 + v28[5]);
  sub_268D2A1F0(v29 + v28[5], v32);
  v13 = sub_268F9A9C4();
  v16 = (*(*(v13 - 8) + 48))(v32, v31) == 1;
  v15 = v16;
  result = sub_268D28588(v32);
  *(v29 + v28[7]) = v15;
  return result;
}

SiriSettingsIntents::BinarySettingIdentifier_optional sub_268CF0F3C(void *a1, uint64_t a2, void *a3, Swift::String *a4)
{
  v28 = a1;
  v25 = a2;
  v27 = a3;
  v30 = a4;
  v41 = 0;
  v40 = 0;
  v39 = 0;
  v36 = 0;
  v34 = 0;
  v22 = *a3;
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64);
  v18 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v25);
  v20 = &v14[-v18];
  v21 = v18;
  v5 = MEMORY[0x28223BE20](v4);
  v23 = &v14[-v21];
  v41 = v6;
  v40 = v5;
  v39 = v7;
  v24 = 0;
  v38 = *(v22 + qword_2802F0750);
  v37 = *(v22 + qword_2802F0750 + 8);
  v36 = v8;

  v26 = type metadata accessor for SetBinarySettingIntentUnspecifiedActionForSupportedBinarySettingParameters();
  v9 = (v28 + v26[6]);
  v10 = *v9;
  *v9 = v25;

  v29 = *(v27 + qword_2802DBFE0);

  v11 = *v28;
  *v28 = v29;

  v31 = *v30;

  result.value = BinarySettingIdentifier.init(rawValue:)(v31).value;
  v32 = v35;
  if (v35 != 65)
  {
    v17 = v32;
    v34 = v32;
    v33 = v32;
    sub_268E0697C(&v33, v23);
    sub_268D29FC8(v23, v28 + v26[5]);
    sub_268D2A1F0(v28 + v26[5], v20);
    v13 = sub_268F9A9C4();
    v16 = (*(*(v13 - 8) + 48))(v20, 1) == 1;
    v15 = v16;
    result.value = sub_268D28588(v20);
    *(v28 + v26[7]) = v15;
  }

  return result;
}

SiriSettingsIntents::BinarySettingIdentifier_optional sub_268CF1210(uint64_t *a1, uint64_t *a2, int a3, uint64_t *a4, void *a5, uint64_t a6)
{
  v43 = a1;
  v44 = a2;
  v33 = a3;
  v36 = a4;
  v38 = a5;
  v40 = a6;
  v60 = 0;
  v59 = 0;
  v58 = 0;
  v55 = 0;
  v54 = 0;
  v53 = 0;
  v52 = 0;
  v49 = 0;
  v30 = *a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC1F8, &unk_268F9DC00);
  v22 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v23 = v18 - v22;
  v34 = 0;
  v24 = type metadata accessor for SFSymbolStructSpeakableString();
  v25 = *(v24 - 8);
  v26 = v24 - 8;
  v27 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v24);
  v28 = v18 - v27;
  v60 = v18 - v27;
  v29 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v34);
  v42 = v18 - v29;
  v59 = v7;
  v58 = v8;
  v57 = *(v30 + qword_2802F0750);
  v56 = *(v30 + qword_2802F0750 + 8);
  v55 = v9 & 1;
  v54 = v10;
  v53 = v11;
  v52 = v12;
  type metadata accessor for SettingsMultiSetting();
  v31 = *v44;
  v32 = v44[1];

  v35 = sub_268E067CC(v31, v32, v33 & 1);
  v41 = type metadata accessor for SetBinarySettingIntentNoNeedToChangeMultiSettingValueToParameters();
  v13 = (v43 + v41[7]);
  v14 = *v13;
  *v13 = v35;

  v37 = *v36;

  v15 = *v43;
  *v43 = v37;

  v39 = *(v38 + qword_2802DBFE0);

  v16 = v43[1];
  v43[1] = v39;

  v51 = 45;
  sub_268E0697C(&v51, v42);
  sub_268D29FC8(v42, v43 + v41[6]);
  sub_268E06D9C(v40, v42);
  sub_268D29FC8(v42, v43 + v41[14]);
  sub_268E798B8(v42);
  sub_268D29FC8(v42, v43 + v41[13]);
  v45 = *v44;

  result.value = BinarySettingIdentifier.init(rawValue:)(v45).value;
  v46 = v50;
  if (v50 != 65)
  {
    v21 = v46;
    v20 = v46;
    v49 = v46;
    v48 = v46;
    sub_268E799BC(v42);
    sub_268D29FC8(v42, v43 + v41[9]);
    v47 = v20;
    sub_268E7A8B4(v23);
    if ((*(v25 + 48))(v23, 1, v24) == 1)
    {
      return sub_268D2A318(v23);
    }

    else
    {
      sub_268D2A4A0(v23, v28);
      v19 = sub_268F9A9C4();
      v18[0] = *(v19 - 8);
      v18[1] = v19 - 8;
      (*(v18[0] + 16))(v42, v28);
      (*(v18[0] + 56))(v42, 0, 1, v19);
      sub_268D29FC8(v42, v43 + v41[10]);
      sub_268D2A1F0((v28 + *(v24 + 20)), v42);
      sub_268D29FC8(v42, v43 + v41[12]);
      sub_268D2A1F0((v28 + *(v24 + 24)), v42);
      sub_268D29FC8(v42, v43 + v41[11]);
      return sub_268D2A724(v28);
    }
  }

  return result;
}

SiriSettingsIntents::BinarySettingIdentifier_optional sub_268CF17AC(uint64_t *a1, void *a2, uint64_t a3, Swift::String *a4, uint64_t a5)
{
  v40 = a1;
  v33 = a2;
  v39 = a3;
  v42 = a4;
  v32 = a5;
  v60 = 0;
  v59 = 0;
  v58 = 0;
  v55 = 0;
  v54 = 0;
  v53 = 0;
  v51 = 0;
  v47 = 0;
  v35 = *a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC1F8, &unk_268F9DC00);
  v25 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v26 = &v15 - v25;
  v38 = 0;
  v27 = type metadata accessor for SFSymbolStructSpeakableString();
  v28 = *(v27 - 8);
  v29 = v27 - 8;
  v30 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v27);
  v31 = &v15 - v30;
  v60 = &v15 - v30;
  v34 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v40);
  v36 = &v15 - v34;
  v59 = v6;
  v58 = v7;
  v57 = *(v35 + qword_2802F0750);
  v56 = *(v35 + qword_2802F0750 + 8);
  v55 = v8;
  v54 = v9;
  v53 = v10;
  v37 = *(v7 + qword_2802DBFE0);

  v11 = *v40;
  *v40 = v37;

  v41 = type metadata accessor for SetBinarySettingIntentNoNeedToChangeBinaryValueToParameters();
  v12 = (v40 + v41[6]);
  v13 = *v12;
  *v12 = v39;

  v43 = *v42;

  result.value = BinarySettingIdentifier.init(rawValue:)(v43).value;
  v44 = v52;
  if (v52 != 65)
  {
    v24 = v44;
    v21 = v44;
    v51 = v44;
    v50 = v44;
    sub_268E0697C(&v50, v36);
    sub_268D29FC8(v36, v40 + v41[5]);
    v49 = v21;
    sub_268E06F58(&v49, v36);
    sub_268D29FC8(v36, v40 + v41[7]);
    sub_268E798B8(v36);
    sub_268D29FC8(v36, v40 + v41[9]);
    v22 = *v42;

    BinarySettingIdentifier.init(rawValue:)(v22);
    v23 = v48;
    if (v48 != 65)
    {
      v20 = v23;
      v19 = v23;
      v47 = v23;
      v46 = v23;
      sub_268E799BC(v36);
      sub_268D29FC8(v36, v40 + v41[8]);
      v45 = v19;
      sub_268E7A8B4(v26);
      if ((*(v28 + 48))(v26, 1, v27) == 1)
      {
        sub_268D2A318(v26);
      }

      else
      {
        sub_268D2A4A0(v26, v31);
        v18 = sub_268F9A9C4();
        v16 = *(v18 - 8);
        v17 = v18 - 8;
        (*(v16 + 16))(v36, v31);
        (*(v16 + 56))(v36, 0, 1, v18);
        sub_268D29FC8(v36, v40 + v41[10]);
        sub_268D2A1F0((v31 + *(v27 + 20)), v36);
        sub_268D29FC8(v36, v40 + v41[12]);
        sub_268D2A1F0((v31 + *(v27 + 24)), v36);
        sub_268D29FC8(v36, v40 + v41[11]);
        sub_268D2A724(v31);
      }
    }

    sub_268E06D9C(v32, v36);
    return sub_268D29FC8(v36, v40 + v41[13]);
  }

  return result;
}

SiriSettingsIntents::BinarySettingIdentifier_optional sub_268CF1D48(uint64_t *a1, uint64_t a2, uint64_t *a3, int a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v70 = a1;
  v53 = a2;
  v62 = a3;
  v65 = a4;
  v69 = a5;
  v72 = a6;
  v73 = a7;
  v52 = a8;
  v92 = 0;
  v91 = 0;
  v90 = 0;
  v89 = 0;
  v86 = 0;
  v85 = 0;
  v83 = 0;
  v84 = 0;
  v82 = 0;
  v76 = 0;
  v59 = *a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC1F8, &unk_268F9DC00);
  v45 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v46 = &v31 - v45;
  v66 = 0;
  v47 = type metadata accessor for SFSymbolStructSpeakableString();
  v48 = *(v47 - 8);
  v49 = v47 - 8;
  v50 = (*(v48 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v47);
  v51 = &v31 - v50;
  v92 = &v31 - v50;
  v54 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x28223BE20](v70);
  v55 = &v31 - v54;
  v56 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x28223BE20](v9);
  v57 = &v31 - v56;
  v58 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = MEMORY[0x28223BE20](v11);
  v60 = &v31 - v58;
  v91 = v13;
  v90 = v14;
  v89 = v15;
  v88 = *(v59 + qword_2802F0750);
  v87 = *(v59 + qword_2802F0750 + 8);
  v86 = v16 & 1;
  v85 = v17;
  v83 = v18;
  v84 = v19;
  v82 = v20;
  v61 = *v14;

  v21 = *v70;
  *v70 = v61;

  type metadata accessor for SettingsMultiSetting();
  v63 = *v62;
  v64 = v62[1];

  v67 = sub_268E067CC(v63, v64, v65 & 1);
  v68 = type metadata accessor for SetBinarySettingIntentChangedMultiSettingValueToSpokenOnlyParameters();
  v22 = (v70 + v68[10]);
  v23 = *v22;
  *v22 = v67;

  v71 = *(v69 + qword_2802DBFE0);

  v24 = v70[1];
  v70[1] = v71;

  if (sub_268F9AF14())
  {
    v25 = sub_268F9A9C4();
    (*(*(v25 - 8) + 56))(v60, 1);
  }

  else
  {

    v44 = 0;
    sub_268F9A9A4();
    v26 = sub_268F9A9C4();
    (*(*(v26 - 8) + 56))(v60, 0, 1);
  }

  sub_268D29FC8(v60, v70 + v68[8]);
  v42 = 45;
  v81 = 45;
  sub_268E0697C(&v81, v57);
  sub_268D29FC8(v57, v70 + v68[9]);
  v80 = v42;
  sub_268E06F58(&v80, v57);
  sub_268D29FC8(v57, v70 + v68[11]);
  v79 = v42;
  v78 = v52;
  v27 = sub_268CD7620();
  v43 = SettingIntent.deviceCategory.getter(v27, &protocol witness table for INSetBinarySettingIntent);
  if (v28)
  {
    v39 = 0;
    v40 = 1;
  }

  else
  {
    v41 = v43;
    sub_268CD4334();
    v39 = v29;
    v40 = 0;
  }

  sub_268E06FB0(&v79, v39, v40 & 1, v55);
  sub_268D29FC8(v55, v70 + v68[12]);
  sub_268E798B8(v57);
  sub_268D29FC8(v57, v70 + v68[14]);
  v37 = *v62;

  result.value = BinarySettingIdentifier.init(rawValue:)(v37).value;
  v38 = v77;
  if (v77 != 65)
  {
    v36 = v38;
    v35 = v38;
    v76 = v38;
    v75 = v38;
    sub_268E799BC(v57);
    sub_268D29FC8(v57, v70 + v68[13]);
    v74 = v35;
    sub_268E7A8B4(v46);
    if ((*(v48 + 48))(v46, 1, v47) == 1)
    {
      return sub_268D2A318(v46);
    }

    else
    {
      sub_268D2A4A0(v46, v51);
      v34 = sub_268F9A9C4();
      v32 = *(v34 - 8);
      v33 = v34 - 8;
      (*(v32 + 16))(v57, v51);
      (*(v32 + 56))(v57, 0, 1, v34);
      sub_268D29FC8(v57, v70 + v68[15]);
      sub_268D2A1F0((v51 + *(v47 + 20)), v57);
      sub_268D29FC8(v57, v70 + v68[17]);
      sub_268D2A1F0((v51 + *(v47 + 24)), v57);
      sub_268D29FC8(v57, v70 + v68[16]);
      return sub_268D2A724(v51);
    }
  }

  return result;
}

SiriSettingsIntents::BinarySettingIdentifier_optional sub_268CF25D0(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, Swift::String *a7, uint64_t a8)
{
  v62 = a1;
  v51 = a2;
  v59 = a3;
  v61 = a4;
  v64 = a5;
  v65 = a6;
  v49 = a7;
  v50 = a8;
  v85 = 0;
  v84 = 0;
  v83 = 0;
  v82 = 0;
  v81 = 0;
  v77 = 0;
  v78 = 0;
  v76 = 0;
  v75 = 0;
  v73 = 0;
  v68 = 0;
  v55 = *a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC1F8, &unk_268F9DC00);
  v37 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v38 = &v26[-v37];
  v58 = 0;
  v39 = type metadata accessor for SFSymbolStructSpeakableString();
  v40 = *(v39 - 8);
  v41 = v39 - 8;
  v42 = (*(v40 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v58);
  v43 = &v26[-v42];
  v85 = &v26[-v42];
  v44 = sub_268F9A9C4();
  v45 = *(v44 - 8);
  v46 = v44 - 8;
  v47 = (*(v45 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v44);
  v48 = &v26[-v47];
  v52 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x28223BE20](v62);
  v53 = &v26[-v52];
  v54 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x28223BE20](v9);
  v56 = &v26[-v54];
  v84 = v11;
  v83 = v12;
  v82 = v13;
  v81 = v14;
  v80 = *(v55 + qword_2802F0750);
  v79 = *(v55 + qword_2802F0750 + 8);
  v77 = v15;
  v78 = v16;
  v76 = v17;
  v75 = v18;
  v57 = *v12;

  v19 = *v62;
  *v62 = v57;

  v60 = type metadata accessor for SetBinarySettingIntentChangedBinaryValueToSpokenOnlyParameters();
  v20 = (v62 + v60[9]);
  v21 = *v20;
  *v20 = v59;

  v63 = *(v61 + qword_2802DBFE0);

  v22 = v62[1];
  v62[1] = v63;

  if (sub_268F9AF14())
  {
    (*(v45 + 56))(v56, 1, 1, v44);
  }

  else
  {

    sub_268F9A9A4();
    (*(v45 + 56))(v56, 0, 1, v44);
  }

  v23 = v48;
  sub_268D29FC8(v56, v62 + v60[7]);

  v33 = *(v45 + 16);
  v34 = v45 + 16;
  v33(v23, v59 + OBJC_IVAR____TtC19SiriSettingsIntents15SettingsSetting_identifier, v44);

  v35._countAndFlagsBits = sub_268F9A9B4();
  v35._object = v24;
  (*(v45 + 8))(v48, v44);
  result.value = BinarySettingIdentifier.init(rawValue:)(v35).value;
  v36 = v74;
  if (v74 != 65)
  {
    v32 = v36;
    v29 = v36;
    v73 = v36;
    v72 = v36;
    sub_268E0697C(&v72, v53);
    sub_268D29FC8(v53, v62 + v60[8]);
    v71 = v29;
    sub_268E06F58(&v71, v53);
    sub_268D29FC8(v53, v62 + v60[10]);
    v70 = v29;
    sub_268E06FB0(&v70, 0, 1, v53);
    sub_268D29FC8(v53, v62 + v60[16]);
    sub_268E798B8(v53);
    sub_268D29FC8(v53, v62 + v60[12]);
    v30 = *v49;

    BinarySettingIdentifier.init(rawValue:)(v30);
    v31 = v69;
    if (v69 != 65)
    {
      v28 = v31;
      v27 = v31;
      v68 = v31;
      v67 = v31;
      sub_268E799BC(v53);
      sub_268D29FC8(v53, v62 + v60[11]);
      v66 = v27;
      sub_268E7A8B4(v38);
      if ((*(v40 + 48))(v38, 1, v39) == 1)
      {
        sub_268D2A318(v38);
      }

      else
      {
        sub_268D2A4A0(v38, v43);
        v33(v53, v43, v44);
        (*(v45 + 56))(v53, 0, 1, v44);
        sub_268D29FC8(v53, v62 + v60[13]);
        sub_268D2A1F0(&v43[*(v39 + 20)], v53);
        sub_268D29FC8(v53, v62 + v60[15]);
        sub_268D2A1F0(&v43[*(v39 + 24)], v53);
        sub_268D29FC8(v53, v62 + v60[14]);
        sub_268D2A724(v43);
      }
    }

    sub_268E06D9C(v50, v53);
    return sub_268D29FC8(v53, v62 + v60[16]);
  }

  return result;
}

SiriSettingsIntents::BinarySettingIdentifier_optional sub_268CF2E88(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6, int a7, uint64_t a8)
{
  v68 = a1;
  v60 = a2;
  v70 = a3;
  v71 = a4;
  v56 = a5;
  v57 = a6;
  v58 = a7;
  v59 = a8;
  v90 = 0;
  v89 = 0;
  v88 = 0;
  v86 = 0;
  v87 = 0;
  v85 = 0;
  v82 = 0;
  v81 = 0;
  v80 = 0;
  v74 = 0;
  v66 = *a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC1F8, &unk_268F9DC00);
  v49 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v50 = v32 - v49;
  v51 = type metadata accessor for SFSymbolStructSpeakableString();
  v52 = *(v51 - 8);
  v53 = v51 - 8;
  v54 = (*(v52 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v51);
  v55 = v32 - v54;
  v90 = v32 - v54;
  v61 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x28223BE20](v68);
  v62 = v32 - v61;
  v63 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x28223BE20](v9);
  v64 = v32 - v63;
  v65 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = MEMORY[0x28223BE20](v11);
  v67 = v32 - v65;
  v89 = v13;
  v88 = v14;
  v86 = v15;
  v87 = v16;
  v85 = v17;
  v84 = *(v66 + qword_2802F0750);
  v83 = *(v66 + qword_2802F0750 + 8);
  v82 = v18;
  v81 = v19 & 1;
  v80 = v20;
  v69 = *v14;

  v21 = *v68;
  *v68 = v69;

  if (sub_268F9AF14())
  {
    v22 = sub_268F9A9C4();
    (*(*(v22 - 8) + 56))(v67, 1);
  }

  else
  {

    v48 = 0;
    sub_268F9A9A4();
    v23 = sub_268F9A9C4();
    (*(*(v23 - 8) + 56))(v67, 0, 1);
  }

  v46 = 0;
  v44 = type metadata accessor for SetBinarySettingIntentChangedMultiSettingValueToParameters();
  sub_268D29FC8(v67, v68 + v44[8]);
  v41 = *(v56 + qword_2802DBFE0);

  v24 = v68[1];
  v68[1] = v41;

  type metadata accessor for SettingsMultiSetting();
  v42 = *v57;
  v43 = v57[1];

  v25 = sub_268E067CC(v42, v43, v58 & 1);
  v26 = (v68 + v44[10]);
  v27 = *v26;
  *v26 = v25;

  v45 = 45;
  v79 = 45;
  sub_268E0697C(&v79, v64);
  sub_268D29FC8(v64, v68 + v44[9]);
  v78 = v45;
  sub_268E06F58(&v78, v64);
  sub_268D29FC8(v64, v68 + v44[11]);
  v77 = v45;
  v76 = v59;
  v28 = sub_268CD7620();
  v47 = SettingIntent.deviceCategory.getter(v28, &protocol witness table for INSetBinarySettingIntent);
  if (v29)
  {
    v38 = 0;
    v39 = 1;
  }

  else
  {
    v40 = v47;
    sub_268CD4334();
    v38 = v30;
    v39 = 0;
  }

  sub_268E06FB0(&v77, v38, v39 & 1, v62);
  sub_268D29FC8(v62, v68 + v44[19]);
  sub_268E798B8(v64);
  sub_268D29FC8(v64, v68 + v44[13]);
  v36 = *v57;

  result.value = BinarySettingIdentifier.init(rawValue:)(v36).value;
  v37 = v75;
  if (v75 != 65)
  {
    v35 = v37;
    v34 = v37;
    v74 = v37;
    v73 = v37;
    sub_268E799BC(v64);
    sub_268D29FC8(v64, v68 + v44[12]);
    v72 = v34;
    sub_268E7A8B4(v50);
    if ((*(v52 + 48))(v50, 1, v51) == 1)
    {
      return sub_268D2A318(v50);
    }

    else
    {
      sub_268D2A4A0(v50, v55);
      v33 = sub_268F9A9C4();
      v32[0] = *(v33 - 8);
      v32[1] = v33 - 8;
      (*(v32[0] + 16))(v64, v55);
      (*(v32[0] + 56))(v64, 0, 1, v33);
      sub_268D29FC8(v64, v68 + v44[14]);
      sub_268D2A1F0((v55 + *(v51 + 20)), v64);
      sub_268D29FC8(v64, v68 + v44[16]);
      sub_268D2A1F0((v55 + *(v51 + 24)), v64);
      sub_268D29FC8(v64, v68 + v44[15]);
      return sub_268D2A724(v55);
    }
  }

  return result;
}

SiriSettingsIntents::BinarySettingIdentifier_optional sub_268CF36E8(uint64_t *a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5, uint64_t a6, Swift::String *a7, uint64_t a8)
{
  v62 = a1;
  v57 = a2;
  v59 = a3;
  v61 = a4;
  v64 = a5;
  v65 = a6;
  v48 = a7;
  v49 = a8;
  v85 = 0;
  v84 = 0;
  v83 = 0;
  v82 = 0;
  v81 = 0;
  v77 = 0;
  v78 = 0;
  v76 = 0;
  v75 = 0;
  v73 = 0;
  v68 = 0;
  v54 = *a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC1F8, &unk_268F9DC00);
  v36 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v37 = &v25[-v36];
  v56 = 0;
  v38 = type metadata accessor for SFSymbolStructSpeakableString();
  v39 = *(v38 - 8);
  v40 = v38 - 8;
  v41 = (*(v39 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v56);
  v42 = &v25[-v41];
  v85 = &v25[-v41];
  v43 = sub_268F9A9C4();
  v44 = *(v43 - 8);
  v45 = v43 - 8;
  v46 = (*(v44 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v43);
  v47 = &v25[-v46];
  v51 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64);
  v50 = (v51 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x28223BE20](v57);
  v52 = &v25[-v50];
  v53 = (v51 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x28223BE20](v9);
  v55 = &v25[-v53];
  v84 = v11;
  v83 = v10;
  v82 = v12;
  v81 = v13;
  v80 = *(v54 + qword_2802F0750);
  v79 = *(v54 + qword_2802F0750 + 8);
  v77 = v14;
  v78 = v15;
  v76 = v16;
  v75 = v17;

  v58 = type metadata accessor for SetBinarySettingIntentChangedBinaryValueToParameters();
  v18 = (v62 + v58[9]);
  v19 = *v18;
  *v18 = v57;

  v60 = *v59;

  v20 = *v62;
  *v62 = v60;

  v63 = *(v61 + qword_2802DBFE0);

  v21 = v62[1];
  v62[1] = v63;

  if (sub_268F9AF14())
  {
    (*(v44 + 56))(v55, 1, 1, v43);
  }

  else
  {

    sub_268F9A9A4();
    (*(v44 + 56))(v55, 0, 1, v43);
  }

  v22 = v47;
  sub_268D29FC8(v55, v62 + v58[7]);

  v32 = *(v44 + 16);
  v33 = v44 + 16;
  v32(v22, v57 + OBJC_IVAR____TtC19SiriSettingsIntents15SettingsSetting_identifier, v43);

  v34._countAndFlagsBits = sub_268F9A9B4();
  v34._object = v23;
  (*(v44 + 8))(v47, v43);
  result.value = BinarySettingIdentifier.init(rawValue:)(v34).value;
  v35 = v74;
  if (v74 != 65)
  {
    v31 = v35;
    v28 = v35;
    v73 = v35;
    v72 = v35;
    sub_268E0697C(&v72, v52);
    sub_268D29FC8(v52, v62 + v58[8]);
    v71 = v28;
    sub_268E06F58(&v71, v52);
    sub_268D29FC8(v52, v62 + v58[10]);
    v70 = v28;
    sub_268E06FB0(&v70, 0, 1, v52);
    sub_268D29FC8(v52, v62 + v58[16]);
    sub_268E798B8(v52);
    sub_268D29FC8(v52, v62 + v58[12]);
    v29 = *v48;

    BinarySettingIdentifier.init(rawValue:)(v29);
    v30 = v69;
    if (v69 != 65)
    {
      v27 = v30;
      v26 = v30;
      v68 = v30;
      v67 = v30;
      sub_268E799BC(v52);
      sub_268D29FC8(v52, v62 + v58[11]);
      v66 = v26;
      sub_268E7A8B4(v37);
      if ((*(v39 + 48))(v37, 1, v38) == 1)
      {
        sub_268D2A318(v37);
      }

      else
      {
        sub_268D2A4A0(v37, v42);
        v32(v52, v42, v43);
        (*(v44 + 56))(v52, 0, 1, v43);
        sub_268D29FC8(v52, v62 + v58[13]);
        sub_268D2A1F0(&v42[*(v38 + 20)], v52);
        sub_268D29FC8(v52, v62 + v58[15]);
        sub_268D2A1F0(&v42[*(v38 + 24)], v52);
        sub_268D29FC8(v52, v62 + v58[14]);
        sub_268D2A724(v42);
      }
    }

    sub_268E06D9C(v49, v52);
    return sub_268D29FC8(v52, v62 + v58[16]);
  }

  return result;
}

uint64_t sub_268CF3FB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 776) = v3;
  *(v4 + 768) = a3;
  *(v4 + 760) = a2;
  *(v4 + 592) = v4;
  *(v4 + 600) = 0;
  *(v4 + 608) = 0;
  *(v4 + 616) = 0;
  *(v4 + 624) = 0;
  *(v4 + 1032) = 0;
  *(v4 + 1040) = 0;
  *(v4 + 1048) = 0;
  *(v4 + 656) = 0;
  *(v4 + 1033) = 0;
  *(v4 + 496) = 0;
  *(v4 + 504) = 0;
  *(v4 + 664) = 0;
  *(v4 + 512) = 0;
  *(v4 + 520) = 0;
  *(v4 + 528) = 0;
  *(v4 + 536) = 0;
  *(v4 + 680) = 0;
  *(v4 + 696) = 0;
  *(v4 + 712) = 0;
  *(v4 + 744) = 0;
  *(v4 + 1056) = 0;
  *(v4 + 576) = 0;
  *(v4 + 584) = 0;
  v5 = sub_268F9AB24();
  *(v4 + 784) = v5;
  v8 = *(v5 - 8);
  *(v4 + 792) = v8;
  v9 = *(v8 + 64);
  *(v4 + 800) = swift_task_alloc();
  *(v4 + 808) = swift_task_alloc();
  *(v4 + 600) = a1;
  *(v4 + 608) = a2;
  *(v4 + 616) = a3;
  *(v4 + 624) = v3;
  v6 = *(v4 + 592);

  return MEMORY[0x2822009F8](sub_268CF4168, 0);
}

uint64_t sub_268CF4168()
{
  v155 = v0;
  v1 = v0[97];
  v149 = v0[96];
  v148 = v0[95];
  v0[74] = v0;
  v2 = sub_268DC7B48();
  v147 = *v2;
  MEMORY[0x277D82BE0](*v2);
  sub_268F9B284();
  v0[102] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v145 = v3;
  MEMORY[0x277D82BE0](v148);
  v0[79] = v148;
  sub_268CD7620();
  sub_268D28940();
  v143 = sub_268F9AE74();
  v144 = v4;
  v145[3] = MEMORY[0x277D837D0];
  v146 = sub_268CDD224();
  v0[103] = v146;
  v145[4] = v146;
  *v145 = v143;
  v145[1] = v144;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v147);
  sub_268D23814(v148, v149, v0 + 12);
  memcpy(v0 + 7, v0 + 12, 0x28uLL);
  if (!v0[8])
  {
    sub_268D284D4();
    swift_allocError();
    *v56 = 4;
    swift_willThrow();
    goto LABEL_69;
  }

  v141 = *(v142 + 768);
  v139 = *(v142 + 760);
  memcpy((v142 + 16), (v142 + 56), 0x28uLL);
  sub_268DAB218(v139);
  *(v142 + 1032) = v150;
  v140 = *(v142 + 32);
  MEMORY[0x277D82BE0](v141);
  if (v141)
  {
    v135 = *(v142 + 768);
    v136 = [v135 oldValue];
    MEMORY[0x277D82BD8](v135);
    v137 = v136;
    v138 = 0;
  }

  else
  {
    v137 = 0;
    v138 = 1;
  }

  v5 = *(v142 + 776);
  v134 = sub_268D2403C(v140, v137, v138 & 1);
  *(v142 + 1034) = v134;
  if (v134 == 2)
  {
    v61 = *(v142 + 768);
    v51 = sub_268DC7B48();
    v63 = *v51;
    MEMORY[0x277D82BE0](*v51);
    sub_268F9B294();
    sub_268F9B734();
    v62 = v52;
    MEMORY[0x277D82BE0](v61);
    *(v142 + 640) = v61;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC080, &qword_268F9D998);
    v53 = sub_268F9AE64();
    v62[3] = MEMORY[0x277D837D0];
    v62[4] = v146;
    *v62 = v53;
    v62[1] = v54;
    sub_268CD0F7C();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v63);
    sub_268D284D4();
    swift_allocError();
    *v55 = 1;
    swift_willThrow();
    sub_268CD9D30(v142 + 16);
    goto LABEL_69;
  }

  v6 = *(v142 + 776);
  *(v142 + 1040) = v134 & 1;
  v133 = sub_268D2403C(*(v142 + 40), 0, 1);
  if (v133 == 2)
  {
    v64 = *(v142 + 768);
    v46 = sub_268DC7B48();
    v66 = *v46;
    MEMORY[0x277D82BE0](*v46);
    sub_268F9B294();
    sub_268F9B734();
    v65 = v47;
    MEMORY[0x277D82BE0](v64);
    *(v142 + 648) = v64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC080, &qword_268F9D998);
    v48 = sub_268F9AE64();
    v65[3] = MEMORY[0x277D837D0];
    v65[4] = v146;
    *v65 = v48;
    v65[1] = v49;
    sub_268CD0F7C();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v66);
    sub_268D284D4();
    swift_allocError();
    *v50 = 3;
    swift_willThrow();
    sub_268CD9D30(v142 + 16);
    goto LABEL_69;
  }

  v125 = *(v142 + 808);
  v124 = *(v142 + 800);
  v126 = *(v142 + 784);
  v122 = *(v142 + 776);
  v123 = *(v142 + 792);
  *(v142 + 1048) = v133 & 1;
  sub_268D28C4C();
  *(v142 + 656) = sub_268CF0C44();
  v7 = sub_268DB9CB4();
  v129 = *v7;
  v130 = v7[1];
  v131 = *(v7 + 16);
  v8 = sub_268DC7BA8();
  v132 = *v8;
  MEMORY[0x277D82BE0](*v8);
  (*(v123 + 16))(v125, v122 + qword_2802DBFD8, v126);
  sub_268F9AB14();
  v128 = sub_268F9AB04();
  v127 = *(v123 + 8);
  v127(v124, v126);
  v127(v125, v126);
  sub_268DB9934(v129, v130, v131, v132, (v128 ^ 1) & 1);
  MEMORY[0x277D82BD8](v132);
  switch(v150)
  {
    case 65:
LABEL_64:
      v43 = sub_268DB9CB4();
      v69 = *v43;
      v67 = v43[1];
      v68 = *(v43 + 16);
      v44 = sub_268DC7BA8();
      v70 = *v44;
      MEMORY[0x277D82BE0](*v44);
      sub_268DB9B78(v69, v67, v68, v70);
      MEMORY[0x277D82BD8](v70);
      sub_268D284D4();
      swift_allocError();
      *v45 = 0;
      swift_willThrow();
      MEMORY[0x277D82BD8](*(v142 + 656));
      sub_268CD9D30(v142 + 16);
LABEL_69:
      v57 = *(v142 + 808);
      v60 = *(v142 + 800);

      v58 = *(*(v142 + 592) + 8);
      v59 = *(v142 + 592);

      return v58();
    case 0:
    case 16:
      goto LABEL_43;
    case 26:
      v37 = *(v142 + 776);
      *(v142 + 1033) = 1;
      v87 = *(v37 + qword_2802DC018);

      v151 = 26;
      sub_268E12DF8(&v151);
      v88 = v38;

      if ((v88 & 0xFF00) == 0x400)
      {
        v85 = 0;
        v86 = 0;
      }

      else
      {
        v85 = sub_268E127A4();
        v86 = v39;
      }

      *(v142 + 992) = v86;
      *(v142 + 984) = v85;
      *(v142 + 496) = v85;
      *(v142 + 504) = v86;

      if (v86)
      {
        v40 = *(v142 + 776);
        *(v142 + 528) = v85;
        *(v142 + 536) = v86;
        v83 = *(v40 + qword_2802DC020);

        v84 = sub_268F23C10();

        if (v84)
        {

          v78 = sub_268F9AE14();

          v79 = [v84 integerForKey_];
          MEMORY[0x277D82BD8](v78);
          MEMORY[0x277D82BD8](v84);
          v80 = v79;
          v81 = 0;
        }

        else
        {
          v80 = 0;
          v81 = 1;
        }

        v152 = v80;
        v153 = v81 & 1;
        if (v81)
        {
          v77 = 0;
        }

        else
        {
          v77 = v152;
        }

        if (v77 >= 1)
        {
          *(v142 + 1033) = 0;
          v76 = 0;
        }

        else
        {
          v76 = 1;
        }

        v82 = v76;
      }

      else
      {
        v82 = 1;
      }

      v71 = *(v142 + 776);
      sub_268CDE730(v71 + qword_2802DBFF0, v142 + 136);
      v73 = *(v142 + 160);
      v74 = *(v142 + 168);
      __swift_project_boxed_opaque_existential_1((v142 + 136), v73);

      sub_268D28814((v142 + 16), (v142 + 176));
      v72 = swift_task_alloc();
      *(v142 + 1000) = v72;
      *(v72 + 16) = v71;
      *(v72 + 24) = v142 + 16;
      *(v72 + 32) = v133 & 1;
      v75 = (*(v74 + 64) + **(v74 + 64));
      v41 = *(*(v74 + 64) + 4);
      v42 = swift_task_alloc();
      *(v142 + 1008) = v42;
      *v42 = *(v142 + 592);
      v42[1] = sub_268CF7254;

      return v75(v82 & 1, v134 & 1, sub_268D28E04, v72, v73, v74);
    case 29:
      v104 = *(v142 + 776);
      sub_268CDE730(v104 + qword_2802DBFF0, v142 + 336);
      v106 = *(v142 + 360);
      v107 = *(v142 + 368);
      __swift_project_boxed_opaque_existential_1((v142 + 336), v106);

      sub_268D28814((v142 + 16), (v142 + 376));
      v105 = swift_task_alloc();
      *(v142 + 888) = v105;
      *(v105 + 16) = v104;
      *(v105 + 24) = v142 + 16;
      *(v105 + 32) = v133 & 1;
      v108 = (*(v107 + 80) + **(v107 + 80));
      v20 = *(*(v107 + 80) + 4);
      v21 = swift_task_alloc();
      *(v142 + 896) = v21;
      *v21 = *(v142 + 592);
      v21[1] = sub_268CF685C;

      return v108(sub_268D28E24, v105, v106, v107);
    case 35:
    case 36:
      sub_268CDE730(*(v142 + 776) + qword_2802DBFF0, v142 + 296);
      v102 = *(v142 + 320);
      v103 = *(v142 + 328);
      __swift_project_boxed_opaque_existential_1((v142 + 296), v102);
      v154 = v150;
      *(v142 + 560) = BinarySettingIdentifier.rawValue.getter();
      *(v142 + 568) = v22;
      if (*(v142 + 568))
      {
        v23 = *(v142 + 568);
        *(v142 + 544) = *(v142 + 560);
        *(v142 + 552) = v23;
      }

      else
      {
        *(v142 + 544) = sub_268F9AEF4();
        *(v142 + 552) = v24;
        if (*(v142 + 568))
        {
          sub_268CD9D30(v142 + 560);
        }
      }

      v95 = *(v142 + 776);
      v101 = *(v142 + 544);
      v97 = *(v142 + 552);
      *(v142 + 920) = v97;
      v94 = *(v95 + qword_2802DC030);

      v98 = sub_268D36960();

      v96 = *(v95 + qword_2802DC030);

      v99 = sub_268D38D64();

      v100 = (*(v103 + 168) + **(v103 + 168));
      v25 = *(*(v103 + 168) + 4);
      v26 = swift_task_alloc();
      v27 = v97;
      v28 = v102;
      v29 = v103;
      v30 = v100;
      v31 = v26;
      v32 = v101;
      *(v142 + 928) = v31;
      *v31 = *(v142 + 592);
      v31[1] = sub_268CF6BB8;
      v33 = (v98 & 1);
      v34 = v99 & 1;

      return v30(v32, v27, v33, v34, v28, v29);
    case 45:
      v9 = *(v142 + 760);
      *(v142 + 728) = 0;
      v121 = [v9 settingMetadata];
      if (v121 && (v120 = [v121 targetApp], MEMORY[0x277D82BD8](v121), v120))
      {
        v10 = [v120 bundleIdentifier];
        v119 = v10;
        if (v10)
        {
          v115 = sub_268F9AE24();
          v116 = v11;
          MEMORY[0x277D82BD8](v119);
          v117 = v115;
          v118 = v116;
        }

        else
        {
          v117 = 0;
          v118 = 0;
        }

        MEMORY[0x277D82BD8](v120);
        v113 = v117;
        v114 = v118;
      }

      else
      {
        v113 = 0;
        v114 = 0;
      }

      if (v114)
      {
        *(v142 + 576) = v113;
        *(v142 + 584) = v114;
        sub_268F9A994();

        v12 = sub_268DE1C68(v113, v114);
        v13 = *(v142 + 728);
        *(v142 + 728) = v12;
      }

      v112 = *(v142 + 776);
      v14 = sub_268DC7B48();
      v111 = *v14;
      MEMORY[0x277D82BE0](*v14);
      sub_268F9B284();
      sub_268F9B734();
      v110 = v15;
      v109 = *(v142 + 728);

      *(v142 + 736) = v109;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0C0, &qword_268F9D9D0);
      v16 = sub_268F9AE64();
      v110[3] = MEMORY[0x277D837D0];
      v110[4] = v146;
      *v110 = v16;
      v110[1] = v17;
      sub_268CD0F7C();
      sub_268F9AC04();

      MEMORY[0x277D82BD8](v111);
      *(v142 + 832) = *(v112 + qword_2802DC040);

      v18 = swift_task_alloc();
      *(v142 + 840) = v18;
      *v18 = *(v142 + 592);
      v18[1] = sub_268CF6120;

      return sub_268E02374();
    case 51:
LABEL_43:
      v89 = *(v142 + 776);
      sub_268CDE730(v89 + qword_2802DBFF0, v142 + 216);
      v91 = *(v142 + 240);
      v92 = *(v142 + 248);
      __swift_project_boxed_opaque_existential_1((v142 + 216), v91);

      sub_268D28814((v142 + 16), (v142 + 256));
      v90 = swift_task_alloc();
      *(v142 + 952) = v90;
      *(v90 + 16) = v89;
      *(v90 + 24) = v142 + 16;
      v93 = (*(v92 + 64) + **(v92 + 64));
      v35 = *(*(v92 + 64) + 4);
      v36 = swift_task_alloc();
      v33 = sub_268D28E18;
      v34 = v90;
      v28 = v91;
      v29 = v92;
      v30 = v93;
      *(v142 + 960) = v36;
      *v36 = *(v142 + 592);
      v36[1] = sub_268CF6EF8;
      v32 = 0;
      v27 = v134 & 1;

      return v30(v32, v27, v33, v34, v28, v29);
    default:
      goto LABEL_64;
  }
}

uint64_t sub_268CF6120(char a1)
{
  v12 = *v2;
  v10 = *v2 + 16;
  v11 = (v12 + 592);
  v4 = *(*v2 + 840);
  *(v12 + 592) = *v2;
  *(v12 + 1035) = a1;
  *(v12 + 848) = v1;

  if (v1)
  {
    v8 = *v11;
    v7 = sub_268CF77D0;
  }

  else
  {
    v5 = *(v10 + 816);

    v6 = *v11;
    v7 = sub_268CF62A8;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_268CF62A8()
{
  v1 = *(v0 + 1035);
  v6 = v1;
  v9 = *(v0 + 1034);
  v5 = *(v0 + 776);
  v7 = *(v0 + 760);
  *(v0 + 592) = v0;
  *(v0 + 1056) = v1;
  sub_268CDE730(v5 + qword_2802DBFF0, v0 + 416);
  v11 = *(v0 + 440);
  v12 = *(v0 + 448);
  __swift_project_boxed_opaque_existential_1((v0 + 416), v11);
  sub_268D28814((v0 + 16), (v0 + 456));

  MEMORY[0x277D82BE0](v7);
  v10 = swift_task_alloc();
  *(v0 + 856) = v10;
  *(v10 + 16) = v0 + 16;
  *(v10 + 24) = v5;
  *(v10 + 32) = v6;
  *(v10 + 40) = v0 + 728;
  *(v10 + 48) = v7;
  v13 = (*(v12 + 112) + **(v12 + 112));
  v2 = *(*(v12 + 112) + 4);
  v3 = swift_task_alloc();
  *(v8 + 864) = v3;
  *v3 = *(v8 + 592);
  v3[1] = sub_268CF64E4;

  return v13(v9 & 1, sub_268D28E38, v10, v11, v12);
}

uint64_t sub_268CF64E4(uint64_t a1)
{
  v14 = *v2;
  v12 = (*v2 + 16);
  v13 = (*v2 + 592);
  v4 = *(*v2 + 864);
  v14[74] = *v2;
  v14[109] = a1;
  v14[110] = v1;

  if (v1)
  {
    v8 = *v13;
    v7 = sub_268CF7AD8;
  }

  else
  {
    v5 = v12[105];
    v10 = v12[95];
    v11 = v12[93];

    sub_268CD9D30(v12);

    v6 = *v13;
    v7 = sub_268CF669C;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_268CF669C()
{
  v1 = v0[109];
  v8 = v1;
  v0[74] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[82];
  v0[82] = v8;
  MEMORY[0x277D82BD8](v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 52);
  sub_268D287E8(v0 + 91);
  v15 = v0[109];
  v13 = v0[101];
  v14 = v0[100];
  v3 = sub_268DB9CB4();
  v11 = *v3;
  v9 = v3[1];
  v10 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v12 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v11, v9, v10, v12);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v0[82]);
  sub_268CD9D30((v0 + 2));

  v5 = *(v0[74] + 8);
  v6 = v0[74];

  return v5(v15);
}

uint64_t sub_268CF685C(uint64_t a1)
{
  v13 = *v2;
  v11 = *v2 + 16;
  v12 = (*v2 + 592);
  v4 = *(*v2 + 896);
  v13[74] = *v2;
  v13[113] = a1;
  v13[114] = v1;

  if (v1)
  {
    v8 = *v12;
    v7 = sub_268CF7E1C;
  }

  else
  {
    v5 = *(v11 + 872);
    v10 = *(v11 + 760);

    sub_268CD9D30(v11);
    v6 = *v12;
    v7 = sub_268CF6A04;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_268CF6A04()
{
  v1 = v0[113];
  v8 = v1;
  v0[74] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[82];
  v0[82] = v8;
  MEMORY[0x277D82BD8](v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 42);
  v15 = v0[113];
  v13 = v0[101];
  v14 = v0[100];
  v3 = sub_268DB9CB4();
  v11 = *v3;
  v9 = v3[1];
  v10 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v12 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v11, v9, v10, v12);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v0[82]);
  sub_268CD9D30((v0 + 2));

  v5 = *(v0[74] + 8);
  v6 = v0[74];

  return v5(v15);
}

uint64_t sub_268CF6BB8(uint64_t a1)
{
  v12 = *v2;
  v10 = *v2 + 16;
  v11 = v12 + 74;
  v4 = *(*v2 + 928);
  v12[74] = *v2;
  v12[117] = a1;
  v12[118] = v1;

  if (v1)
  {
    v8 = *v11;
    v7 = sub_268CF8420;
  }

  else
  {
    v5 = *(v10 + 904);

    v6 = *v11;
    v7 = sub_268CF6D44;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_268CF6D44()
{
  v1 = v0[117];
  v8 = v1;
  v0[74] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[82];
  v0[82] = v8;
  MEMORY[0x277D82BD8](v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 37);
  v15 = v0[117];
  v13 = v0[101];
  v14 = v0[100];
  v3 = sub_268DB9CB4();
  v11 = *v3;
  v9 = v3[1];
  v10 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v12 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v11, v9, v10, v12);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v0[82]);
  sub_268CD9D30((v0 + 2));

  v5 = *(v0[74] + 8);
  v6 = v0[74];

  return v5(v15);
}

uint64_t sub_268CF6EF8(uint64_t a1)
{
  v13 = *v2;
  v11 = *v2 + 16;
  v12 = (*v2 + 592);
  v4 = *(*v2 + 960);
  v13[74] = *v2;
  v13[121] = a1;
  v13[122] = v1;

  if (v1)
  {
    v8 = *v12;
    v7 = sub_268CF8700;
  }

  else
  {
    v5 = *(v11 + 936);
    v10 = *(v11 + 760);

    sub_268CD9D30(v11);
    v6 = *v12;
    v7 = sub_268CF70A0;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_268CF70A0()
{
  v1 = v0[121];
  v8 = v1;
  v0[74] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[82];
  v0[82] = v8;
  MEMORY[0x277D82BD8](v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 27);
  v15 = v0[121];
  v13 = v0[101];
  v14 = v0[100];
  v3 = sub_268DB9CB4();
  v11 = *v3;
  v9 = v3[1];
  v10 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v12 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v11, v9, v10, v12);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v0[82]);
  sub_268CD9D30((v0 + 2));

  v5 = *(v0[74] + 8);
  v6 = v0[74];

  return v5(v15);
}

uint64_t sub_268CF7254(uint64_t a1)
{
  v13 = *v2;
  v11 = *v2 + 16;
  v12 = (*v2 + 592);
  v4 = *(*v2 + 1008);
  v13[74] = *v2;
  v13[127] = a1;
  v13[128] = v1;

  if (v1)
  {
    v8 = *v12;
    v7 = sub_268CF8114;
  }

  else
  {
    v5 = *(v11 + 984);
    v10 = *(v11 + 760);

    sub_268CD9D30(v11);
    v6 = *v12;
    v7 = sub_268CF73FC;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_268CF73FC()
{
  v1 = v0[127];
  v23 = v1;
  v24 = v0[124];
  v0[74] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[82];
  v0[82] = v23;
  MEMORY[0x277D82BD8](v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);

  if (v24)
  {
    v19 = v22[124];
    v3 = v22[97];
    v22[64] = v22[123];
    v22[65] = v19;
    v20 = *(v3 + qword_2802DC020);

    v21 = sub_268F23C10();

    if (v21)
    {
      v17 = v22[123];

      v18 = sub_268F9AE14();

      [v21 setInteger:1 forKey:v18];
      MEMORY[0x277D82BD8](v18);
      MEMORY[0x277D82BD8](v21);
    }
  }

  v4 = v22[124];

  v16 = v22[127];
  v14 = v22[101];
  v15 = v22[100];
  v5 = sub_268DB9CB4();
  v12 = *v5;
  v10 = v5[1];
  v11 = *(v5 + 16);
  v6 = sub_268DC7BA8();
  v13 = *v6;
  MEMORY[0x277D82BE0](*v6);
  sub_268DB9B78(v12, v10, v11, v13);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v22[82]);
  sub_268CD9D30((v22 + 2));

  v7 = *(v22[74] + 8);
  v8 = v22[74];

  return v7(v16);
}

uint64_t sub_268CF77D0()
{
  v1 = v0[104];
  v0[74] = v0;

  v22 = v0[106];
  v14 = v0[103];
  v16 = v0[102];
  v2 = v22;
  v0[93] = v22;
  v3 = sub_268DC7B48();
  v17 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268F9B294();
  sub_268F9B734();
  v15 = v4;
  v5 = v22;
  v0[94] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v6 = sub_268F9AE64();
  v15[3] = MEMORY[0x277D837D0];
  v15[4] = v14;
  *v15 = v6;
  v15[1] = v7;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v17);
  v8 = sub_268DB9CB4();
  v20 = *v8;
  v18 = v8[1];
  v19 = *(v8 + 16);
  v9 = sub_268DC7BA8();
  v21 = *v9;
  MEMORY[0x277D82BE0](*v9);
  sub_268DB9B78(v20, v18, v19, v21);
  MEMORY[0x277D82BD8](v21);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  sub_268D287E8(v0 + 91);
  MEMORY[0x277D82BD8](v0[82]);
  sub_268CD9D30((v0 + 2));
  v10 = v0[101];
  v23 = v0[100];

  v11 = *(v0[74] + 8);
  v12 = v0[74];

  return v11();
}

uint64_t sub_268CF7AD8()
{
  v1 = v0[107];
  v14 = v0[97];
  v15 = v0[95];
  v0[74] = v0;

  sub_268CD9D30((v0 + 2));

  MEMORY[0x277D82BD8](v15);
  __swift_destroy_boxed_opaque_existential_0(v0 + 52);
  v24 = v0[110];
  v16 = v0[103];
  v18 = v0[102];
  v2 = v24;
  v0[93] = v24;
  v3 = sub_268DC7B48();
  v19 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268F9B294();
  sub_268F9B734();
  v17 = v4;
  v5 = v24;
  v0[94] = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v6 = sub_268F9AE64();
  v17[3] = MEMORY[0x277D837D0];
  v17[4] = v16;
  *v17 = v6;
  v17[1] = v7;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v19);
  v8 = sub_268DB9CB4();
  v22 = *v8;
  v20 = v8[1];
  v21 = *(v8 + 16);
  v9 = sub_268DC7BA8();
  v23 = *v9;
  MEMORY[0x277D82BE0](*v9);
  sub_268DB9B78(v22, v20, v21, v23);
  MEMORY[0x277D82BD8](v23);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  sub_268D287E8(v0 + 91);
  MEMORY[0x277D82BD8](v0[82]);
  sub_268CD9D30((v0 + 2));
  v10 = v0[101];
  v25 = v0[100];

  v11 = *(v0[74] + 8);
  v12 = v0[74];

  return v11();
}

uint64_t sub_268CF7E1C()
{
  v23 = v0[114];
  v1 = v0[111];
  v15 = v0[103];
  v17 = v0[102];
  v14 = v0[97];
  v0[74] = v0;

  sub_268CD9D30((v0 + 2));
  __swift_destroy_boxed_opaque_existential_0(v0 + 42);
  v2 = v23;
  v0[89] = v23;
  v3 = sub_268DC7B48();
  v18 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268F9B294();
  sub_268F9B734();
  v16 = v4;
  v5 = v23;
  v0[90] = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v6 = sub_268F9AE64();
  v16[3] = MEMORY[0x277D837D0];
  v16[4] = v15;
  *v16 = v6;
  v16[1] = v7;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v18);
  v8 = sub_268DB9CB4();
  v21 = *v8;
  v19 = v8[1];
  v20 = *(v8 + 16);
  v9 = sub_268DC7BA8();
  v22 = *v9;
  MEMORY[0x277D82BE0](*v9);
  sub_268DB9B78(v21, v19, v20, v22);
  MEMORY[0x277D82BD8](v22);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v0[82]);
  sub_268CD9D30((v0 + 2));
  v10 = v0[101];
  v24 = v0[100];

  v11 = *(v0[74] + 8);
  v12 = v0[74];

  return v11();
}

uint64_t sub_268CF8114()
{
  v23 = v0[128];
  v1 = v0[125];
  v24 = v0[124];
  v15 = v0[103];
  v17 = v0[102];
  v14 = v0[97];
  v0[74] = v0;

  sub_268CD9D30((v0 + 2));
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  v2 = v23;
  v0[83] = v23;
  v3 = sub_268DC7B48();
  v18 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268F9B294();
  sub_268F9B734();
  v16 = v4;
  v5 = v23;
  v0[84] = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v6 = sub_268F9AE64();
  v16[3] = MEMORY[0x277D837D0];
  v16[4] = v15;
  *v16 = v6;
  v16[1] = v7;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v18);
  v8 = sub_268DB9CB4();
  v21 = *v8;
  v19 = v8[1];
  v20 = *(v8 + 16);
  v9 = sub_268DC7BA8();
  v22 = *v9;
  MEMORY[0x277D82BE0](*v9);
  sub_268DB9B78(v21, v19, v20, v22);
  MEMORY[0x277D82BD8](v22);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v0[82]);
  sub_268CD9D30((v0 + 2));
  v10 = v0[101];
  v25 = v0[100];

  v11 = *(v0[74] + 8);
  v12 = v0[74];

  return v11();
}

uint64_t sub_268CF8420()
{
  v22 = v0[118];
  v1 = v0[115];
  v14 = v0[103];
  v16 = v0[102];
  v0[74] = v0;

  __swift_destroy_boxed_opaque_existential_0(v0 + 37);
  v2 = v22;
  v0[87] = v22;
  v3 = sub_268DC7B48();
  v17 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268F9B294();
  sub_268F9B734();
  v15 = v4;
  v5 = v22;
  v0[88] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v6 = sub_268F9AE64();
  v15[3] = MEMORY[0x277D837D0];
  v15[4] = v14;
  *v15 = v6;
  v15[1] = v7;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v17);
  v8 = sub_268DB9CB4();
  v20 = *v8;
  v18 = v8[1];
  v19 = *(v8 + 16);
  v9 = sub_268DC7BA8();
  v21 = *v9;
  MEMORY[0x277D82BE0](*v9);
  sub_268DB9B78(v20, v18, v19, v21);
  MEMORY[0x277D82BD8](v21);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v0[82]);
  sub_268CD9D30((v0 + 2));
  v10 = v0[101];
  v23 = v0[100];

  v11 = *(v0[74] + 8);
  v12 = v0[74];

  return v11();
}

uint64_t sub_268CF8700()
{
  v23 = v0[122];
  v1 = v0[119];
  v15 = v0[103];
  v17 = v0[102];
  v14 = v0[97];
  v0[74] = v0;

  sub_268CD9D30((v0 + 2));
  __swift_destroy_boxed_opaque_existential_0(v0 + 27);
  v2 = v23;
  v0[85] = v23;
  v3 = sub_268DC7B48();
  v18 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268F9B294();
  sub_268F9B734();
  v16 = v4;
  v5 = v23;
  v0[86] = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v6 = sub_268F9AE64();
  v16[3] = MEMORY[0x277D837D0];
  v16[4] = v15;
  *v16 = v6;
  v16[1] = v7;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v18);
  v8 = sub_268DB9CB4();
  v21 = *v8;
  v19 = v8[1];
  v20 = *(v8 + 16);
  v9 = sub_268DC7BA8();
  v22 = *v9;
  MEMORY[0x277D82BE0](*v9);
  sub_268DB9B78(v21, v19, v20, v22);
  MEMORY[0x277D82BD8](v22);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v0[82]);
  sub_268CD9D30((v0 + 2));
  v10 = v0[101];
  v24 = v0[100];

  v11 = *(v0[74] + 8);
  v12 = v0[74];

  return v11();
}

void *sub_268CF89F8(uint64_t *a1, uint64_t *a2, void *a3, int a4, uint64_t *a5, uint64_t a6)
{
  v55 = a1;
  v37 = a2;
  v41 = a3;
  v43 = a4;
  v51 = a5;
  v31 = a6;
  v74 = 0;
  v73 = 0;
  v72 = 0;
  v69 = 0;
  v68 = 0;
  v67 = 0;
  v66 = 0;
  v36 = *a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC1F8, &unk_268F9DC00);
  v28 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v59 = &v23 - v28;
  v44 = 0;
  v61 = type metadata accessor for SFSymbolStructSpeakableString();
  v57 = *(v61 - 8);
  v58 = v61 - 8;
  v29 = (*(v57 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v61);
  v30 = &v23 - v29;
  v74 = &v23 - v29;
  v33 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64);
  v32 = (v33 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x28223BE20](v44);
  v34 = &v23 - v32;
  v35 = (v33 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7);
  v54 = &v23 - v35;
  v73 = v8;
  v72 = v9;
  v71 = *(v36 + qword_2802F0750);
  v70 = *(v36 + qword_2802F0750 + 8);
  v69 = v10;
  v68 = v11;
  v67 = v12;
  v66 = v13;
  type metadata accessor for SettingsBinarySetting();
  v38 = *v37;
  v39 = v37[1];

  v45 = 0;
  v60 = 1;
  v40 = SettingsBinarySetting.__allocating_init(settingId:value:)(v38, v39, 0);
  v53 = type metadata accessor for SetBinarySettingIntentConfirmBeforeTurningOffAnnounceNotificationsParameters();
  v14 = (v55 + v53[9]);
  v15 = *v14;
  *v14 = v40;

  v42 = *(v41 + qword_2802DBFE0);

  v16 = (v55 + v53[6]);
  v17 = *v16;
  *v16 = v42;

  sub_268DFC86C();
  sub_268F9A9A4();
  v46 = sub_268F9A9C4();
  v47 = *(v46 - 8);
  v48 = v46 - 8;
  v49 = *(v47 + 56);
  v50 = v47 + 56;
  (v49)(v54, v45, v60);
  sub_268D29FC8(v54, v55 + v53[5]);
  v52 = *v51;

  v18 = *v55;
  *v55 = v52;

  v56 = 45;
  v65 = 45;
  sub_268E0697C(&v65, v54);
  sub_268D29FC8(v54, v55 + v53[7]);
  v64 = v56;
  sub_268E06F58(&v64, v54);
  sub_268D29FC8(v54, v55 + v53[10]);
  v63[1] = v56;
  sub_268E7A8B4(v59);
  if ((*(v57 + 48))(v59, v60, v61) == 1)
  {
    sub_268D2A318(v59);
  }

  else
  {
    sub_268D2A4A0(v59, v30);
    (*(v47 + 16))(v54, v30, v46);
    v49(v54, 0, 1, v46);
    sub_268D29FC8(v54, v55 + v53[14]);
    sub_268D2A1F0((v30 + *(v61 + 20)), v54);
    sub_268D29FC8(v54, v55 + v53[16]);
    sub_268D2A1F0((v30 + *(v61 + 24)), v54);
    sub_268D29FC8(v54, v55 + v53[15]);
    sub_268D2A724(v30);
  }

  v63[0] = 45;
  v62 = v31;
  v19 = sub_268CD7620();
  v27 = SettingIntent.deviceCategory.getter(v19, &protocol witness table for INSetBinarySettingIntent);
  if (v20)
  {
    v24 = 0;
    v25 = 1;
  }

  else
  {
    v26 = v27;
    sub_268CD4334();
    v24 = v21;
    v25 = 0;
  }

  sub_268E06FB0(v63, v24, v25 & 1, v34);
  return sub_268D29FC8(v34, v55 + v53[11]);
}

SiriSettingsIntents::BinarySettingIdentifier_optional sub_268CF9090(uint64_t *a1, void *a2, uint64_t *a3, int a4)
{
  v36 = a1;
  v24 = a2;
  v37 = a3;
  v30 = a4;
  v52 = 0;
  v51 = 0;
  v50 = 0;
  v47 = 0;
  v46 = 0;
  v42 = 0;
  v26 = *a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC1F8, &unk_268F9DC00);
  v17 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v18 = v13 - v17;
  v31 = 0;
  v19 = type metadata accessor for SFSymbolStructSpeakableString();
  v20 = *(v19 - 8);
  v21 = v19 - 8;
  v22 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v19);
  v23 = v13 - v22;
  v52 = v13 - v22;
  v25 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v36);
  v35 = v13 - v25;
  v51 = v5;
  v50 = v6;
  v49 = *(v26 + qword_2802F0750);
  v48 = *(v26 + qword_2802F0750 + 8);
  v47 = v7;
  v46 = v8 & 1;
  v27 = *(v6 + qword_2802DBFE0);

  v9 = *v36;
  *v36 = v27;

  type metadata accessor for SettingsBinarySetting();
  v28 = *v37;
  v29 = v37[1];

  v32 = SettingsBinarySetting.__allocating_init(settingId:value:)(v28, v29, v30 & 1);
  v34 = type metadata accessor for SetBinarySettingIntentConfirmBeforeTurningOffLocationServicesParameters();
  v10 = (v36 + v34[6]);
  v11 = *v10;
  *v10 = v32;

  v33 = 29;
  v45 = 29;
  sub_268E0697C(&v45, v35);
  sub_268D29FC8(v35, v36 + v34[5]);
  v44 = v33;
  sub_268E06F58(&v44, v35);
  sub_268D29FC8(v35, v36 + v34[7]);
  sub_268E798B8(v35);
  sub_268D29FC8(v35, v36 + v34[9]);
  v38 = *v37;

  result.value = BinarySettingIdentifier.init(rawValue:)(v38).value;
  v39 = v43;
  if (v43 != 65)
  {
    v16 = v39;
    v15 = v39;
    v42 = v39;
    v41 = v39;
    sub_268E799BC(v35);
    sub_268D29FC8(v35, v36 + v34[8]);
    v40 = v15;
    sub_268E7A8B4(v18);
    if ((*(v20 + 48))(v18, 1, v19) == 1)
    {
      return sub_268D2A318(v18);
    }

    else
    {
      sub_268D2A4A0(v18, v23);
      v14 = sub_268F9A9C4();
      v13[0] = *(v14 - 8);
      v13[1] = v14 - 8;
      (*(v13[0] + 16))(v35, v23);
      (*(v13[0] + 56))(v35, 0, 1, v14);
      sub_268D29FC8(v35, v36 + v34[10]);
      sub_268D2A1F0((v23 + *(v19 + 20)), v35);
      sub_268D29FC8(v35, v36 + v34[12]);
      sub_268D2A1F0((v23 + *(v19 + 24)), v35);
      sub_268D29FC8(v35, v36 + v34[11]);
      return sub_268D2A724(v23);
    }
  }

  return result;
}

SiriSettingsIntents::BinarySettingIdentifier_optional sub_268CF95CC(uint64_t *a1, void *a2, uint64_t *a3, int a4)
{
  v36 = a1;
  v24 = a2;
  v37 = a3;
  v30 = a4;
  v52 = 0;
  v51 = 0;
  v50 = 0;
  v47 = 0;
  v46 = 0;
  v42 = 0;
  v26 = *a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC1F8, &unk_268F9DC00);
  v17 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v18 = v13 - v17;
  v31 = 0;
  v19 = type metadata accessor for SFSymbolStructSpeakableString();
  v20 = *(v19 - 8);
  v21 = v19 - 8;
  v22 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v19);
  v23 = v13 - v22;
  v52 = v13 - v22;
  v25 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v36);
  v35 = v13 - v25;
  v51 = v5;
  v50 = v6;
  v49 = *(v26 + qword_2802F0750);
  v48 = *(v26 + qword_2802F0750 + 8);
  v47 = v7;
  v46 = v8 & 1;
  v27 = *(v6 + qword_2802DBFE0);

  v9 = *v36;
  *v36 = v27;

  type metadata accessor for SettingsBinarySetting();
  v28 = *v37;
  v29 = v37[1];

  v32 = SettingsBinarySetting.__allocating_init(settingId:value:)(v28, v29, v30 & 1);
  v34 = type metadata accessor for SetBinarySettingIntentConfirmBeforeSeveringConnectionToSiriParameters();
  v10 = (v36 + v34[8]);
  v11 = *v10;
  *v10 = v32;

  v33 = 26;
  v45 = 26;
  sub_268E0697C(&v45, v35);
  sub_268D29FC8(v35, v36 + v34[6]);
  v44 = v33;
  sub_268E0697C(&v44, v35);
  sub_268D29FC8(v35, v36 + v34[9]);
  sub_268E798B8(v35);
  sub_268D29FC8(v35, v36 + v34[11]);
  v38 = *v37;

  result.value = BinarySettingIdentifier.init(rawValue:)(v38).value;
  v39 = v43;
  if (v43 != 65)
  {
    v16 = v39;
    v15 = v39;
    v42 = v39;
    v41 = v39;
    sub_268E799BC(v35);
    sub_268D29FC8(v35, v36 + v34[10]);
    v40 = v15;
    sub_268E7A8B4(v18);
    if ((*(v20 + 48))(v18, 1, v19) == 1)
    {
      return sub_268D2A318(v18);
    }

    else
    {
      sub_268D2A4A0(v18, v23);
      v14 = sub_268F9A9C4();
      v13[0] = *(v14 - 8);
      v13[1] = v14 - 8;
      (*(v13[0] + 16))(v35, v23);
      (*(v13[0] + 56))(v35, 0, 1, v14);
      sub_268D29FC8(v35, v36 + v34[12]);
      sub_268D2A1F0((v23 + *(v19 + 20)), v35);
      sub_268D29FC8(v35, v36 + v34[14]);
      sub_268D2A1F0((v23 + *(v19 + 24)), v35);
      sub_268D29FC8(v35, v36 + v34[13]);
      return sub_268D2A724(v23);
    }
  }

  return result;
}

SiriSettingsIntents::BinarySettingIdentifier_optional sub_268CF9B08(uint64_t *a1, void *a2, uint64_t *a3)
{
  v35 = a1;
  v26 = a2;
  v37 = a3;
  v53 = 0;
  v52 = 0;
  v51 = 0;
  v48 = 0;
  v46 = 0;
  v42 = 0;
  v28 = *a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC1F8, &unk_268F9DC00);
  v19 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v20 = v11 - v19;
  v33 = 0;
  v21 = type metadata accessor for SFSymbolStructSpeakableString();
  v22 = *(v21 - 8);
  v23 = v21 - 8;
  v24 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v21);
  v25 = v11 - v24;
  v53 = v11 - v24;
  v27 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v35);
  v29 = v11 - v27;
  v52 = v4;
  v51 = v5;
  v50 = *(v28 + qword_2802F0750);
  v49 = *(v28 + qword_2802F0750 + 8);
  v48 = v6;
  v30 = *(v5 + qword_2802DBFE0);

  v7 = *v35;
  *v35 = v30;

  type metadata accessor for SettingsBinarySetting();
  v31 = *v37;
  v32 = v37[1];

  v34 = SettingsBinarySetting.__allocating_init(settingId:value:)(v31, v32, 0);
  v36 = type metadata accessor for SetBinarySettingIntentConfirmBeforeSeveringConnectionToSiriParameters();
  v8 = (v35 + v36[8]);
  v9 = *v8;
  *v8 = v34;

  v38 = *v37;

  result.value = BinarySettingIdentifier.init(rawValue:)(v38).value;
  v39 = v47;
  if (v47 != 65)
  {
    v18 = v39;
    v15 = v39;
    v46 = v39;
    v45 = v39;
    sub_268E0697C(&v45, v29);
    sub_268D29FC8(v29, v35 + v36[6]);
    v44 = v15;
    sub_268E06F58(&v44, v29);
    sub_268D29FC8(v29, v35 + v36[9]);
    sub_268E798B8(v29);
    sub_268D29FC8(v29, v35 + v36[11]);
    v16 = *v37;

    result.value = BinarySettingIdentifier.init(rawValue:)(v16).value;
    v17 = v43;
    if (v43 != 65)
    {
      v14 = v17;
      v13 = v17;
      v42 = v17;
      v41 = v17;
      sub_268E799BC(v29);
      sub_268D29FC8(v29, v35 + v36[10]);
      v40 = v13;
      sub_268E7A8B4(v20);
      if ((*(v22 + 48))(v20, 1, v21) == 1)
      {
        return sub_268D2A318(v20);
      }

      else
      {
        sub_268D2A4A0(v20, v25);
        v12 = sub_268F9A9C4();
        v11[0] = *(v12 - 8);
        v11[1] = v12 - 8;
        (*(v11[0] + 16))(v29, v25);
        (*(v11[0] + 56))(v29, 0, 1, v12);
        sub_268D29FC8(v29, v35 + v36[12]);
        sub_268D2A1F0((v25 + *(v21 + 20)), v29);
        sub_268D29FC8(v29, v35 + v36[14]);
        sub_268D2A1F0((v25 + *(v21 + 24)), v29);
        sub_268D29FC8(v29, v35 + v36[13]);
        return sub_268D2A724(v25);
      }
    }
  }

  return result;
}

uint64_t sub_268CFA090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 312) = v3;
  *(v4 + 304) = a3;
  *(v4 + 296) = a2;
  *(v4 + 216) = v4;
  *(v4 + 224) = 0;
  *(v4 + 232) = 0;
  *(v4 + 240) = 0;
  *(v4 + 248) = 0;
  *(v4 + 256) = 0;
  *(v4 + 384) = 0;
  *(v4 + 272) = 0;
  *(v4 + 288) = 0;
  v5 = sub_268F9AB24();
  *(v4 + 320) = v5;
  v8 = *(v5 - 8);
  *(v4 + 328) = v8;
  v9 = *(v8 + 64);
  *(v4 + 336) = swift_task_alloc();
  *(v4 + 344) = swift_task_alloc();
  *(v4 + 224) = a1;
  *(v4 + 232) = a2;
  *(v4 + 240) = a3;
  *(v4 + 248) = v3;
  v6 = *(v4 + 216);

  return MEMORY[0x2822009F8](sub_268CFA20C, 0);
}

uint64_t sub_268CFA20C()
{
  v1 = v0[39];
  v2 = v0[38];
  v3 = v0[37];
  v0[27] = v0;
  sub_268D23814(v3, v2, v0 + 12);
  memcpy(v0 + 7, v0 + 12, 0x28uLL);
  if (!v0[8])
  {
    goto LABEL_12;
  }

  v45 = *(v46 + 304);
  memcpy((v46 + 16), (v46 + 56), 0x28uLL);
  MEMORY[0x277D82BE0](v45);
  if (v45)
  {
    v41 = *(v46 + 304);
    v42 = [v41 oldValue];
    MEMORY[0x277D82BD8](v41);
    v43 = v42;
    v44 = 0;
  }

  else
  {
    v43 = 0;
    v44 = 1;
  }

  if (v44)
  {
    sub_268CD9D30(v46 + 16);
LABEL_12:
    sub_268D284D4();
    swift_allocError();
    *v15 = 4;
    swift_willThrow();
    goto LABEL_13;
  }

  v4 = *(v46 + 312);
  *(v46 + 256) = v43;
  v40 = sub_268D2403C(v43, 0, 1);
  if (v40 == 2)
  {
    v20 = *(v46 + 304);
    v11 = sub_268DC7B48();
    v24 = *v11;
    MEMORY[0x277D82BE0](*v11);
    sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v23 = v12;
    MEMORY[0x277D82BE0](v20);
    *(v46 + 264) = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC080, &qword_268F9D998);
    v21 = sub_268F9AE64();
    v22 = v13;
    v23[3] = MEMORY[0x277D837D0];
    v23[4] = sub_268CDD224();
    *v23 = v21;
    v23[1] = v22;
    sub_268CD0F7C();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v24);
    sub_268D284D4();
    swift_allocError();
    *v14 = 3;
    swift_willThrow();
    sub_268CD9D30(v46 + 16);
LABEL_13:
    v16 = *(v46 + 344);
    v19 = *(v46 + 336);

    v17 = *(*(v46 + 216) + 8);
    v18 = *(v46 + 216);

    return v17();
  }

  v5 = *(v46 + 344);
  v26 = *(v46 + 336);
  v27 = *(v46 + 320);
  v34 = *(v46 + 312);
  v35 = *(v46 + 296);
  v25 = *(v46 + 328);
  *(v46 + 384) = v40 & 1;
  v6 = sub_268DB98D4();
  v30 = *v6;
  v31 = v6[1];
  v32 = *(v6 + 16);
  v7 = sub_268DC7BA8();
  v33 = *v7;
  MEMORY[0x277D82BE0](*v7);
  (*(v25 + 16))(v5, v34 + qword_2802DBFD8, v27);
  sub_268F9AB14();
  v29 = sub_268F9AB04();
  v28 = *(v25 + 8);
  v28(v26, v27);
  v28(v5, v27);
  sub_268DB9934(v30, v31, v32, v33, (v29 ^ 1) & 1);
  MEMORY[0x277D82BD8](v33);
  sub_268CDE730(v34 + qword_2802DBFF0, v46 + 136);
  v37 = *(v46 + 160);
  v38 = *(v46 + 168);
  __swift_project_boxed_opaque_existential_1((v46 + 136), v37);
  sub_268D28814((v46 + 16), (v46 + 176));

  MEMORY[0x277D82BE0](v35);
  v36 = swift_task_alloc();
  *(v46 + 352) = v36;
  *(v36 + 16) = v46 + 16;
  *(v36 + 24) = v40 & 1;
  *(v36 + 32) = v34;
  *(v36 + 40) = v35;
  v39 = (*(v38 + 48) + **(v38 + 48));
  v8 = *(*(v38 + 48) + 4);
  v9 = swift_task_alloc();
  *(v46 + 360) = v9;
  *v9 = *(v46 + 216);
  v9[1] = sub_268CFAA0C;

  return v39(sub_268D28E50, v36, v37, v38);
}

uint64_t sub_268CFAA0C(uint64_t a1)
{
  v12 = *v2;
  v4 = *(*v2 + 360);
  v12[27] = *v2;
  v13 = v12 + 27;
  v12[46] = a1;
  v12[47] = v1;

  if (v1)
  {
    v8 = *v13;
    v7 = sub_268CFAD0C;
  }

  else
  {
    v5 = v12[44];
    v10 = v12[39];
    v11 = v12[37];

    sub_268CD9D30((v12 + 2));

    v6 = *v13;
    v7 = sub_268CFABC0;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_268CFABC0()
{
  v1 = v0[46];
  v12 = v0[43];
  v13 = v0[42];
  v0[27] = v0;
  v0[36] = v1;
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  v2 = sub_268DB98D4();
  v10 = *v2;
  v8 = v2[1];
  v9 = *(v2 + 16);
  v3 = sub_268DC7BA8();
  v11 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268DB9B78(v10, v8, v9, v11);
  MEMORY[0x277D82BD8](v11);
  sub_268CD9D30((v0 + 2));

  v4 = *(*(v14 + 216) + 8);
  v5 = *(v14 + 216);
  v6 = *(v14 + 368);

  return v4(v6);
}

uint64_t sub_268CFAD0C()
{
  v17 = v0[47];
  v1 = v0[44];
  v11 = v0[39];
  v12 = v0[37];
  v0[27] = v0;

  sub_268CD9D30((v0 + 2));

  MEMORY[0x277D82BD8](v12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  v2 = v17;
  v0[34] = v17;
  v3 = sub_268DC7B48();
  v16 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v15 = v4;
  v5 = v17;
  v0[35] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v13 = sub_268F9AE64();
  v14 = v6;
  v15[3] = MEMORY[0x277D837D0];
  v15[4] = sub_268CDD224();
  *v15 = v13;
  v15[1] = v14;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v16);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  sub_268CD9D30((v0 + 2));
  v7 = v0[43];
  v18 = v0[42];

  v8 = *(v0[27] + 8);
  v9 = v0[27];

  return v8();
}

SiriSettingsIntents::BinarySettingIdentifier_optional sub_268CFAFCC(void *a1, uint64_t *a2, int a3, void *a4, uint64_t a5)
{
  v43 = a1;
  v45 = a2;
  v38 = a3;
  v42 = a4;
  v32 = a5;
  v64 = 0;
  v63 = 0;
  v62 = 0;
  v59 = 0;
  v58 = 0;
  v57 = 0;
  v55 = 0;
  v50 = 0;
  v34 = *a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC1F8, &unk_268F9DC00);
  v25 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v26 = v17 - v25;
  v39 = 0;
  v27 = type metadata accessor for SFSymbolStructSpeakableString();
  v28 = *(v27 - 8);
  v29 = v27 - 8;
  v30 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v27);
  v31 = v17 - v30;
  v64 = v17 - v30;
  v33 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v39);
  v35 = v17 - v33;
  v63 = v6;
  v62 = v7;
  v61 = *(v34 + qword_2802F0750);
  v60 = *(v34 + qword_2802F0750 + 8);
  v59 = v8 & 1;
  v58 = v9;
  v57 = v10;
  type metadata accessor for SettingsBinarySetting();
  v36 = *v45;
  v37 = v45[1];

  v40 = SettingsBinarySetting.__allocating_init(settingId:value:)(v36, v37, v38 & 1);
  v41 = type metadata accessor for SetBinarySettingIntentRetainingCurrentBinaryValueParameters();
  v11 = (v43 + v41[6]);
  v12 = *v11;
  *v11 = v40;

  v44 = *(v42 + qword_2802DBFE0);

  v13 = *v43;
  *v43 = v44;

  v46 = *v45;

  result.value = BinarySettingIdentifier.init(rawValue:)(v46).value;
  v47 = v56;
  if (v56 != 65)
  {
    v24 = v47;
    v21 = v47;
    v55 = v47;
    v54 = v47;
    sub_268E0697C(&v54, v35);
    sub_268D29FC8(v35, v43 + v41[5]);
    v53 = v21;
    sub_268E06F58(&v53, v35);
    sub_268D29FC8(v35, v43 + v41[7]);
    sub_268E798B8(v35);
    sub_268D29FC8(v35, v43 + v41[9]);
    v52 = v21;
    v15 = sub_268E0733C(&v52);
    v16 = v45;
    *(v43 + v41[14]) = v15;
    v22 = *v16;

    BinarySettingIdentifier.init(rawValue:)(v22);
    v23 = v51;
    if (v51 != 65)
    {
      v20 = v23;
      v19 = v23;
      v50 = v23;
      v49 = v23;
      sub_268E799BC(v35);
      sub_268D29FC8(v35, v43 + v41[8]);
      v48 = v19;
      sub_268E7A8B4(v26);
      if ((*(v28 + 48))(v26, 1, v27) == 1)
      {
        sub_268D2A318(v26);
      }

      else
      {
        sub_268D2A4A0(v26, v31);
        v18 = sub_268F9A9C4();
        v17[0] = *(v18 - 8);
        v17[1] = v18 - 8;
        (*(v17[0] + 16))(v35, v31);
        (*(v17[0] + 56))(v35, 0, 1, v18);
        sub_268D29FC8(v35, v43 + v41[10]);
        sub_268D2A1F0((v31 + *(v27 + 20)), v35);
        sub_268D29FC8(v35, v43 + v41[12]);
        sub_268D2A1F0((v31 + *(v27 + 24)), v35);
        sub_268D29FC8(v35, v43 + v41[11]);
        sub_268D2A724(v31);
      }
    }

    sub_268E06D9C(v32, v35);
    return sub_268D29FC8(v35, v43 + v41[13]);
  }

  return result;
}

uint64_t sub_268CFB5FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 304) = v3;
  *(v4 + 296) = a3;
  *(v4 + 288) = a2;
  *(v4 + 208) = v4;
  *(v4 + 216) = 0;
  *(v4 + 224) = 0;
  *(v4 + 232) = 0;
  *(v4 + 240) = 0;
  *(v4 + 248) = 0;
  *(v4 + 176) = 0;
  *(v4 + 184) = 0;
  *(v4 + 448) = 0;
  *(v4 + 192) = 0;
  *(v4 + 200) = 0;
  *(v4 + 456) = 0;
  *(v4 + 216) = a1;
  *(v4 + 224) = a2;
  *(v4 + 232) = a3;
  *(v4 + 240) = v3;
  v5 = *(v4 + 208);
  return MEMORY[0x2822009F8](sub_268CFB68C, 0);
}

uint64_t sub_268CFB68C()
{
  v1 = *(v0 + 296);
  v72 = v1;
  *(v0 + 208) = v0;
  MEMORY[0x277D82BE0](v1);
  if (v72)
  {
    v67 = *(v71 + 296);
    v68 = [v67 code];
    MEMORY[0x277D82BD8](v67);
    v69 = v68;
    v70 = 0;
  }

  else
  {
    v69 = 0;
    v70 = 1;
  }

  if (v70)
  {
    v36 = sub_268DC7B48();
    v40 = *v36;
    MEMORY[0x277D82BE0](*v36);
    sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v40);
    sub_268D284D4();
    swift_allocError();
    *v37 = 4;
    swift_willThrow();
    goto LABEL_39;
  }

  *(v71 + 248) = v69;
  if (v69 == 6)
  {
    *(v71 + 264) = *(v71 + 288);
    v23 = sub_268CD7620();
    v54._countAndFlagsBits = SettingIntent.settingIdentifier.getter(v23, &protocol witness table for INSetBinarySettingIntent);
    v54._object = v24;
    *(v71 + 384) = v24;
    if (v24)
    {
      *(v71 + 176) = v54._countAndFlagsBits;
      *(v71 + 184) = v24;

      BinarySettingIdentifier.init(rawValue:)(v54);
      if (v73 != 65)
      {
        *(v71 + 448) = v73;
        *(v71 + 449) = v73;
        *(v71 + 450) = 16;
        sub_268D28AD4();
        v25 = sub_268F9B754();
        if (v25)
        {
          v49 = *(v71 + 304);
          sub_268CDE730(v49 + qword_2802DC058, v71 + 56);
          v51 = *(v71 + 80);
          v52 = *(v71 + 88);
          __swift_project_boxed_opaque_existential_1((v71 + 56), v51);

          v50 = swift_task_alloc();
          *(v71 + 392) = v50;
          *(v50 + 16) = v54;
          *(v50 + 32) = v49;
          v53 = (*(v52 + 24) + **(v52 + 24));
          v26 = *(*(v52 + 24) + 4);
          v27 = swift_task_alloc();
          v11 = v50;
          v12 = v51;
          v13 = v52;
          v14 = v53;
          v28 = v27;
          v16 = sub_268D28E68;
          *(v71 + 400) = v28;
          *v28 = *(v71 + 208);
          v28[1] = sub_268CFCC28;

          return v14(v16, v11, v12, v13);
        }
      }
    }

    sub_268CDE730(*(v71 + 304) + qword_2802DC058, v71 + 16);
    v48 = *(v71 + 40);
    v46 = *(v71 + 48);
    __swift_project_boxed_opaque_existential_1((v71 + 16), v48);
    v47 = (*(v46 + 40) + **(v46 + 40));
    v29 = *(*(v46 + 40) + 4);
    v30 = swift_task_alloc();
    v19 = v46;
    v20 = v47;
    v31 = v30;
    v22 = v48;
    *(v71 + 424) = v31;
    *v31 = *(v71 + 208);
    v31[1] = sub_268CFCE9C;

    return v20(v22, v19);
  }

  if (v69 == 7)
  {
    *(v71 + 272) = *(v71 + 288);
    v7 = sub_268CD7620();
    v66._countAndFlagsBits = SettingIntent.settingIdentifier.getter(v7, &protocol witness table for INSetBinarySettingIntent);
    v66._object = v8;
    *(v71 + 320) = v8;
    if (v8)
    {
      *(v71 + 192) = v66._countAndFlagsBits;
      *(v71 + 200) = v8;

      BinarySettingIdentifier.init(rawValue:)(v66);
      if (v74 != 65)
      {
        *(v71 + 456) = v74;
        v64 = *sub_268E79858();

        *(v71 + 280) = v64;
        *(v71 + 451) = v74;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC090, &qword_268F9D9A0);
        sub_268D28B4C();
        sub_268D288C8();
        v65 = sub_268F9AFC4();
        sub_268CD7930((v71 + 280));
        if (v65)
        {
          v58 = *(v71 + 304);
          v59 = *(v71 + 288);
          sub_268CDE730(v58 + qword_2802DC058, v71 + 136);
          v61 = *(v71 + 160);
          v62 = *(v71 + 168);
          __swift_project_boxed_opaque_existential_1((v71 + 136), v61);

          MEMORY[0x277D82BE0](v59);
          v60 = swift_task_alloc();
          *(v71 + 328) = v60;
          *(v60 + 16) = v66;
          *(v60 + 32) = v58;
          *(v60 + 40) = v59;
          v63 = (*(v62 + 24) + **(v62 + 24));
          v9 = *(*(v62 + 24) + 4);
          v10 = swift_task_alloc();
          v11 = v60;
          v12 = v61;
          v13 = v62;
          v14 = v63;
          v15 = v10;
          v16 = sub_268D28E78;
          *(v71 + 336) = v15;
          *v15 = *(v71 + 208);
          v15[1] = sub_268CFC77C;

          return v14(v16, v11, v12, v13);
        }
      }
    }

    sub_268CDE730(*(v71 + 304) + qword_2802DC058, v71 + 96);
    v57 = *(v71 + 120);
    v55 = *(v71 + 128);
    __swift_project_boxed_opaque_existential_1((v71 + 96), v57);
    v56 = (*(v55 + 40) + **(v55 + 40));
    v17 = *(*(v55 + 40) + 4);
    v18 = swift_task_alloc();
    v19 = v55;
    v20 = v56;
    v21 = v18;
    v22 = v57;
    *(v71 + 360) = v21;
    *v21 = *(v71 + 208);
    v21[1] = sub_268CFCA00;

    return v20(v22, v19);
  }

  if (v69 == 8)
  {
    v2 = swift_task_alloc();
    *(v71 + 312) = v2;
    *v2 = *(v71 + 208);
    v2[1] = sub_268CFC570;
    v3 = *(v71 + 304);
    v4 = *(v71 + 296);
    v5 = *(v71 + 288);

    return sub_268CFD6F8(v5, v4);
  }

  v41 = *(v71 + 296);
  v32 = sub_268DC7B48();
  v45 = *v32;
  MEMORY[0x277D82BE0](*v32);
  sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v44 = v33;
  MEMORY[0x277D82BE0](v41);
  *(v71 + 256) = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC080, &qword_268F9D998);
  v42 = sub_268F9AE64();
  v43 = v34;
  v44[3] = MEMORY[0x277D837D0];
  v44[4] = sub_268CDD224();
  *v44 = v42;
  v44[1] = v43;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v45);
  sub_268D284D4();
  swift_allocError();
  *v35 = 7;
  swift_willThrow();
LABEL_39:
  v38 = *(*(v71 + 208) + 8);
  v39 = *(v71 + 208);

  return v38();
}

uint64_t sub_268CFC570(uint64_t a1)
{
  v8 = *v2;
  v3 = *(*v2 + 312);
  *(v8 + 208) = *v2;
  v9 = v8 + 208;

  if (v1)
  {
    v5 = *(*v9 + 8);
  }

  else
  {
    v4 = a1;
    v5 = *(*v9 + 8);
  }

  return v5(v4);
}

uint64_t sub_268CFC77C(uint64_t a1)
{
  v13 = *v2;
  v4 = *(*v2 + 336);
  v13[26] = *v2;
  v14 = v13 + 26;
  v13[43] = a1;
  v13[44] = v1;

  if (v1)
  {
    v8 = *v14;
    v7 = sub_268CFD178;
  }

  else
  {
    v5 = v13[41];
    v10 = v13[40];
    v11 = v13[38];
    v12 = v13[36];

    v6 = *v14;
    v7 = sub_268CFC930;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_268CFC930()
{
  v5 = v0[40];
  v0[26] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);

  v1 = v0[43];
  v2 = *(v0[26] + 8);
  v3 = v0[26];

  return v2(v1);
}

uint64_t sub_268CFCA00(uint64_t a1)
{
  v9 = *v2;
  v4 = *(*v2 + 360);
  v9[26] = *v2;
  v10 = v9 + 26;
  v9[46] = a1;
  v9[47] = v1;

  if (v1)
  {
    v7 = *v10;
    v6 = sub_268CFD0C4;
  }

  else
  {
    v5 = *v10;
    v6 = sub_268CFCB70;
  }

  return MEMORY[0x2822009F8](v6, 0);
}

uint64_t sub_268CFCB70()
{
  v0[26] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  v1 = v0[46];
  v2 = *(v0[26] + 8);
  v3 = v0[26];

  return v2(v1);
}

uint64_t sub_268CFCC28(uint64_t a1)
{
  v12 = *v2;
  v4 = *(*v2 + 400);
  v12[26] = *v2;
  v13 = v12 + 26;
  v12[51] = a1;
  v12[52] = v1;

  if (v1)
  {
    v8 = *v13;
    v7 = sub_268CFD330;
  }

  else
  {
    v5 = v12[49];
    v10 = v12[48];
    v11 = v12[38];

    v6 = *v13;
    v7 = sub_268CFCDCC;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_268CFCDCC()
{
  v5 = v0[48];
  v0[26] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);

  v1 = v0[51];
  v2 = *(v0[26] + 8);
  v3 = v0[26];

  return v2(v1);
}

uint64_t sub_268CFCE9C(uint64_t a1)
{
  v9 = *v2;
  v4 = *(*v2 + 424);
  v9[26] = *v2;
  v10 = v9 + 26;
  v9[54] = a1;
  v9[55] = v1;

  if (v1)
  {
    v7 = *v10;
    v6 = sub_268CFD27C;
  }

  else
  {
    v5 = *v10;
    v6 = sub_268CFD00C;
  }

  return MEMORY[0x2822009F8](v6, 0);
}

uint64_t sub_268CFD00C()
{
  v0[26] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[54];
  v2 = *(v0[26] + 8);
  v3 = v0[26];

  return v2(v1);
}

uint64_t sub_268CFD0C4()
{
  v0[26] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  v1 = v0[47];
  v2 = *(v0[26] + 8);
  v3 = v0[26];

  return v2();
}

uint64_t sub_268CFD178()
{
  v1 = v0[41];
  v8 = v0[40];
  v6 = v0[38];
  v7 = v0[36];
  v0[26] = v0;

  MEMORY[0x277D82BD8](v7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);

  v2 = v0[44];
  v3 = *(v0[26] + 8);
  v4 = v0[26];

  return v3();
}

uint64_t sub_268CFD27C()
{
  v0[26] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[55];
  v2 = *(v0[26] + 8);
  v3 = v0[26];

  return v2();
}

uint64_t sub_268CFD330()
{
  v1 = v0[49];
  v7 = v0[48];
  v6 = v0[38];
  v0[26] = v0;

  __swift_destroy_boxed_opaque_existential_0(v0 + 7);

  v2 = v0[52];
  v3 = *(v0[26] + 8);
  v4 = v0[26];

  return v3();
}

uint64_t *sub_268CFD41C(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v18 = *(*a4 + qword_2802F0750);
  v17 = *(*a4 + qword_2802F0750 + 8);
  type metadata accessor for SettingsBinarySetting();

  v5 = SettingsBinarySetting.__allocating_init(settingId:value:)(a2, a3, 0);
  v6 = a1[1];
  a1[1] = v5;

  *(a1 + 16) = sub_268CDD6D4() & 1;
  v13 = *(a4 + qword_2802DBFE0);

  v7 = *a1;
  *a1 = v13;

  v15 = sub_268D2403C([a5 binaryValue], 0, 1);
  DoesNotSupportBinarySettingParameters = type metadata accessor for SettingIntentDeviceDoesNotSupportBinarySettingParameters();
  result = a1;
  *(a1 + *(DoesNotSupportBinarySettingParameters + 36)) = v15;
  *(a1 + *(DoesNotSupportBinarySettingParameters + 32)) = 1;
  return result;
}

uint64_t *sub_268CFD5A8(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v15 = *(*a4 + qword_2802F0750);
  v14 = *(*a4 + qword_2802F0750 + 8);
  type metadata accessor for SettingsBinarySetting();

  v4 = SettingsBinarySetting.__allocating_init(settingId:value:)(a2, a3, 0);
  v5 = a1[1];
  a1[1] = v4;

  *(a1 + 16) = sub_268CDD6D4() & 1;
  v12 = *(a4 + qword_2802DBFE0);

  v6 = *a1;
  *a1 = v12;

  DoesNotSupportBinarySettingParameters = type metadata accessor for SettingIntentDeviceDoesNotSupportBinarySettingParameters();
  result = a1;
  *(a1 + *(DoesNotSupportBinarySettingParameters + 32)) = 1;
  return result;
}

uint64_t sub_268CFD6F8(uint64_t a1, uint64_t a2)
{
  *(v3 + 1384) = v2;
  *(v3 + 1376) = a2;
  *(v3 + 1368) = a1;
  *(v3 + 1288) = v3;
  *(v3 + 1296) = 0;
  *(v3 + 1304) = 0;
  *(v3 + 1312) = 0;
  *(v3 + 936) = 0;
  *(v3 + 944) = 0;
  *(v3 + 1328) = 0;
  *(v3 + 1344) = 0;
  *(v3 + 1224) = 0;
  *(v3 + 1232) = 0;
  *(v3 + 2000) = 0;
  *(v3 + 1240) = 0;
  *(v3 + 1248) = 0;
  *(v3 + 2008) = 0;
  *(v3 + 1256) = 0;
  *(v3 + 1264) = 0;
  *(v3 + 1272) = 0;
  *(v3 + 1280) = 0;
  v10 = *v2;
  v4 = sub_268F9AB24();
  *(v3 + 1392) = v4;
  v7 = *(v4 - 8);
  *(v3 + 1400) = v7;
  v8 = *(v7 + 64);
  *(v3 + 1408) = swift_task_alloc();
  *(v3 + 1416) = swift_task_alloc();
  *(v3 + 1296) = a1;
  *(v3 + 1304) = a2;
  *(v3 + 1312) = v2;
  *(v3 + 1424) = *(v10 + qword_2802F0750);
  *(v3 + 1432) = *(v10 + qword_2802F0750 + 8);
  v5 = *(v3 + 1288);

  return MEMORY[0x2822009F8](sub_268CFD8D8, 0);
}

uint64_t sub_268CFD8D8()
{
  v338 = v0;
  v1 = *(v0 + 1376);
  v334 = v1;
  *(v0 + 1288) = v0;
  MEMORY[0x277D82BE0](v1);
  if (v334)
  {
    v331 = *(v333 + 1376);
    v332 = [v331 errorDetail];
    if (v332)
    {
      v327 = sub_268F9AE24();
      v328 = v2;
      MEMORY[0x277D82BD8](v332);
      v329 = v327;
      v330 = v328;
    }

    else
    {
      v329 = 0;
      v330 = 0;
    }

    MEMORY[0x277D82BD8](v331);
    v325 = v329;
    v326 = v330;
  }

  else
  {
    v325 = 0;
    v326 = 0;
  }

  *(v333 + 1440) = v326;
  if (!v326)
  {
    v140 = *(v333 + 1376);
    v122 = sub_268DC7B48();
    v144 = *v122;
    MEMORY[0x277D82BE0](*v122);
    sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v143 = v123;
    MEMORY[0x277D82BE0](v140);
    *(v333 + 1320) = v140;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC080, &qword_268F9D998);
    v141 = sub_268F9AE64();
    v142 = v124;
    v143[3] = MEMORY[0x277D837D0];
    v143[4] = sub_268CDD224();
    *v143 = v141;
    v143[1] = v142;
    sub_268CD0F7C();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v144);
    sub_268D284D4();
    swift_allocError();
    *v125 = 5;
    swift_willThrow();
    goto LABEL_112;
  }

  v3 = *(v333 + 1384);
  v4 = *(v333 + 1376);
  v5 = *(v333 + 1368);
  *(v333 + 936) = v325;
  *(v333 + 944) = v326;
  sub_268D23814(v5, v4, (v333 + 96));
  memcpy((v333 + 56), (v333 + 96), 0x28uLL);
  if (!*(v333 + 64))
  {
    sub_268D284D4();
    swift_allocError();
    *v121 = 4;
    swift_willThrow();

LABEL_112:
    v131 = *(v333 + 1416);
    v134 = *(v333 + 1408);

    v132 = *(*(v333 + 1288) + 8);
    v133 = *(v333 + 1288);

    return v132();
  }

  v316 = *(v333 + 1416);
  v315 = *(v333 + 1408);
  v317 = *(v333 + 1392);
  v313 = *(v333 + 1384);
  v314 = *(v333 + 1400);
  memcpy((v333 + 16), (v333 + 56), 0x28uLL);
  sub_268D28C4C();
  *(v333 + 1328) = sub_268CF0C44();
  v6 = sub_268DB98D4();
  v320 = *v6;
  v321 = v6[1];
  v322 = *(v6 + 16);
  v7 = sub_268DC7BA8();
  v323 = *v7;
  MEMORY[0x277D82BE0](*v7);
  (*(v314 + 16))(v316, v313 + qword_2802DBFD8, v317);
  sub_268F9AB14();
  v319 = sub_268F9AB04();
  v318 = *(v314 + 8);
  v318(v315, v317);
  v318(v316, v317);
  sub_268DB9934(v320, v321, v322, v323, (v319 ^ 1) & 1);
  MEMORY[0x277D82BD8](v323);

  *(v333 + 952) = sub_268E948B8();
  *(v333 + 960) = v8;
  v324 = MEMORY[0x26D62DB50](*(v333 + 952), *(v333 + 960), v325, v326);
  sub_268CD9D30(v333 + 952);
  if (v324)
  {
    v309 = *(v333 + 1384);

    sub_268CDE730(v309 + qword_2802DC058, v333 + 896);
    v312 = *(v333 + 920);
    v310 = *(v333 + 928);
    __swift_project_boxed_opaque_existential_1((v333 + 896), v312);
    v311 = (*(v310 + 56) + **(v310 + 56));
    v9 = *(*(v310 + 56) + 4);
    v10 = swift_task_alloc();
    v11 = v310;
    v12 = v311;
    v13 = v10;
    v14 = v312;
    *(v333 + 1448) = v13;
    *v13 = *(v333 + 1288);
    v13[1] = sub_268D012F4;

    return v12(v14, v11);
  }

  *(v333 + 968) = sub_268E948B8();
  *(v333 + 976) = v15;
  v308 = MEMORY[0x26D62DB50](*(v333 + 968), *(v333 + 976), v325, v326);
  sub_268CD9D30(v333 + 968);
  if (v308)
  {
    v304 = *(v333 + 1384);

    sub_268CDE730(v304 + qword_2802DC058, v333 + 856);
    v307 = *(v333 + 880);
    v305 = *(v333 + 888);
    __swift_project_boxed_opaque_existential_1((v333 + 856), v307);
    v306 = (*(v305 + 80) + **(v305 + 80));
    v16 = *(*(v305 + 80) + 4);
    v17 = swift_task_alloc();
    v11 = v305;
    v12 = v306;
    v18 = v17;
    v14 = v307;
    *(v333 + 1472) = v18;
    *v18 = *(v333 + 1288);
    v18[1] = sub_268D0161C;

    return v12(v14, v11);
  }

  *(v333 + 984) = sub_268E948B8();
  *(v333 + 992) = v19;
  v303 = MEMORY[0x26D62DB50](*(v333 + 984), *(v333 + 992), v325, v326);
  sub_268CD9D30(v333 + 984);
  if (v303)
  {
    v299 = *(v333 + 1384);

    sub_268CDE730(v299 + qword_2802DC058, v333 + 816);
    v302 = *(v333 + 840);
    v300 = *(v333 + 848);
    __swift_project_boxed_opaque_existential_1((v333 + 816), v302);
    v301 = (*(v300 + 88) + **(v300 + 88));
    v20 = *(*(v300 + 88) + 4);
    v21 = swift_task_alloc();
    v11 = v300;
    v12 = v301;
    v22 = v21;
    v14 = v302;
    *(v333 + 1496) = v22;
    *v22 = *(v333 + 1288);
    v22[1] = sub_268D01944;

    return v12(v14, v11);
  }

  *(v333 + 1000) = sub_268E948B8();
  *(v333 + 1008) = v23;
  v298 = MEMORY[0x26D62DB50](*(v333 + 1000), *(v333 + 1008), v325, v326);
  sub_268CD9D30(v333 + 1000);
  if (v298)
  {
    v296 = *(v333 + 1368);

    v297 = [v296 settingMetadata];
    if (v297)
    {
      v291 = [v297 settingId];
      v292 = sub_268F9AE24();
      v293 = v24;
      MEMORY[0x277D82BD8](v297);
      MEMORY[0x277D82BD8](v291);
      v294 = v292;
      v295 = v293;
    }

    else
    {
      v294 = 0;
      v295 = 0;
    }

    *(v333 + 1520) = v295;
    if (v295)
    {
      v286 = *(v333 + 1384);
      *(v333 + 1272) = v294;
      *(v333 + 1280) = v295;
      sub_268CDE730(v286 + qword_2802DC058, v333 + 776);
      v288 = *(v333 + 800);
      v289 = *(v333 + 808);
      __swift_project_boxed_opaque_existential_1((v333 + 776), v288);

      v287 = swift_task_alloc();
      *(v333 + 1528) = v287;
      v287[2] = v294;
      v287[3] = v295;
      v287[4] = v286;
      v290 = (*(v289 + 24) + **(v289 + 24));
      v25 = *(*(v289 + 24) + 4);
      v26 = swift_task_alloc();
      v27 = v287;
      v28 = v288;
      v29 = v289;
      v30 = v290;
      v31 = v26;
      v32 = sub_268D28EEC;
      *(v333 + 1536) = v31;
      *v31 = *(v333 + 1288);
      v31[1] = sub_268D01C6C;

      return v30(v32, v27, v28, v29);
    }

    v33 = sub_268DB98D4();
    v282 = *v33;
    v280 = v33[1];
    v281 = *(v33 + 16);
    v34 = sub_268DC7BA8();
    v283 = *v34;
    MEMORY[0x277D82BE0](*v34);
    sub_268DB9B78(v282, v280, v281, v283);
    MEMORY[0x277D82BD8](v283);
    sub_268D28BD4();
    v284 = swift_allocError();
    *v35 = 2;
    swift_willThrow();
    v285 = v284;
    goto LABEL_111;
  }

  *(v333 + 1016) = sub_268E948B8();
  *(v333 + 1024) = v36;
  v279 = MEMORY[0x26D62DB50](*(v333 + 1016), *(v333 + 1024), v325, v326);
  sub_268CD9D30(v333 + 1016);
  if (v279)
  {
    v273 = *(v333 + 1384);

    sub_268CDE730(v273 + qword_2802DBFF0, v333 + 736);
    v275 = *(v333 + 760);
    v276 = *(v333 + 768);
    __swift_project_boxed_opaque_existential_1((v333 + 736), v275);
    v278 = *(v273 + qword_2802DBFE0);
    *(v333 + 1560) = v278;

    v274 = sub_268CDD6D4();
    v277 = (*(v276 + 120) + **(v276 + 120));
    v37 = *(*(v276 + 120) + 4);
    v38 = swift_task_alloc();
    v28 = v275;
    v29 = v276;
    v30 = v277;
    v39 = v38;
    v32 = v278;
    *(v333 + 1568) = v39;
    *v39 = *(v333 + 1288);
    v39[1] = sub_268D01FDC;
    v27 = v274 & 1;

    return v30(v32, v27, v28, v29);
  }

  *(v333 + 1032) = sub_268E948B8();
  *(v333 + 1040) = v40;
  v272 = MEMORY[0x26D62DB50](*(v333 + 1032), *(v333 + 1040), v325, v326);
  sub_268CD9D30(v333 + 1032);
  if (v272)
  {
    v266 = *(v333 + 1384);

    sub_268CDE730(v266 + qword_2802DBFF0, v333 + 696);
    v268 = *(v333 + 720);
    v269 = *(v333 + 728);
    __swift_project_boxed_opaque_existential_1((v333 + 696), v268);
    v271 = sub_268E948B8();
    v267 = v41;
    *(v333 + 1592) = v41;
    v270 = (*(v269 + 128) + **(v269 + 128));
    v42 = *(*(v269 + 128) + 4);
    v43 = swift_task_alloc();
    v27 = v267;
    v28 = v268;
    v29 = v269;
    v30 = v270;
    v44 = v43;
    v32 = v271;
    *(v333 + 1600) = v44;
    *v44 = *(v333 + 1288);
    v44[1] = sub_268D02318;

    return v30(v32, v27, v28, v29);
  }

  *(v333 + 1048) = sub_268E948B8();
  *(v333 + 1056) = v45;
  v265 = MEMORY[0x26D62DB50](*(v333 + 1048), *(v333 + 1056), v325, v326);
  sub_268CD9D30(v333 + 1048);
  if (v265)
  {
    v259 = *(v333 + 1384);

    sub_268CDE730(v259 + qword_2802DBFF0, v333 + 656);
    v261 = *(v333 + 680);
    v262 = *(v333 + 688);
    __swift_project_boxed_opaque_existential_1((v333 + 656), v261);
    v264 = sub_268E948B8();
    v260 = v46;
    *(v333 + 1624) = v46;
    v263 = (*(v262 + 128) + **(v262 + 128));
    v47 = *(*(v262 + 128) + 4);
    v48 = swift_task_alloc();
    v27 = v260;
    v28 = v261;
    v29 = v262;
    v30 = v263;
    v49 = v48;
    v32 = v264;
    *(v333 + 1632) = v49;
    *v49 = *(v333 + 1288);
    v49[1] = sub_268D02654;

    return v30(v32, v27, v28, v29);
  }

  *(v333 + 1064) = sub_268E948B8();
  *(v333 + 1072) = v50;
  v258 = MEMORY[0x26D62DB50](*(v333 + 1064), *(v333 + 1072), v325, v326);
  sub_268CD9D30(v333 + 1064);
  if (v258)
  {
    v252 = *(v333 + 1384);

    sub_268CDE730(v252 + qword_2802DBFF0, v333 + 616);
    v254 = *(v333 + 640);
    v255 = *(v333 + 648);
    __swift_project_boxed_opaque_existential_1((v333 + 616), v254);
    v257 = sub_268E948B8();
    v253 = v51;
    *(v333 + 1656) = v51;
    v256 = (*(v255 + 128) + **(v255 + 128));
    v52 = *(*(v255 + 128) + 4);
    v53 = swift_task_alloc();
    v27 = v253;
    v28 = v254;
    v29 = v255;
    v30 = v256;
    v54 = v53;
    v32 = v257;
    *(v333 + 1664) = v54;
    *v54 = *(v333 + 1288);
    v54[1] = sub_268D02990;

    return v30(v32, v27, v28, v29);
  }

  *(v333 + 1080) = sub_268E948B8();
  *(v333 + 1088) = v55;
  v251 = MEMORY[0x26D62DB50](*(v333 + 1080), *(v333 + 1088), v325, v326);
  sub_268CD9D30(v333 + 1080);
  if (v251)
  {
    v247 = *(v333 + 1384);

    sub_268CDE730(v247 + qword_2802DBFF0, v333 + 576);
    v250 = *(v333 + 600);
    v248 = *(v333 + 608);
    __swift_project_boxed_opaque_existential_1((v333 + 576), v250);
    v249 = (*(v248 + 136) + **(v248 + 136));
    v56 = *(*(v248 + 136) + 4);
    v57 = swift_task_alloc();
    v11 = v248;
    v12 = v249;
    v58 = v57;
    v14 = v250;
    *(v333 + 1688) = v58;
    *v58 = *(v333 + 1288);
    v58[1] = sub_268D02CCC;

    return v12(v14, v11);
  }

  *(v333 + 1096) = sub_268E948B8();
  *(v333 + 1104) = v59;
  v246 = MEMORY[0x26D62DB50](*(v333 + 1096), *(v333 + 1104), v325, v326);
  sub_268CD9D30(v333 + 1096);
  if (v246)
  {
    v241 = *(v333 + 1384);
    v244 = *(v333 + 1368);

    v242 = *(v241 + qword_2802DC010);

    sub_268DAB218(v244);
    v337[0] = v336[1];
    v243 = sub_268F397B4(v337);

    *(v333 + 2008) = v243;
    v60 = [v244 settingMetadata];
    v245 = v60;
    if (v60)
    {
      v236 = [v60 settingId];
      v237 = sub_268F9AE24();
      v238 = v61;
      MEMORY[0x277D82BD8](v245);
      MEMORY[0x277D82BD8](v236);
      v239 = v237;
      v240 = v238;
    }

    else
    {
      v239 = 0;
      v240 = 0;
    }

    *(v333 + 1712) = v240;
    if (v240)
    {
      *(v333 + 1256) = v239;
      *(v333 + 1264) = v240;
      v337[1] = 45;
      v62 = BinarySettingIdentifier.rawValue.getter();
      v235 = MEMORY[0x26D62DB50](v239, v240, v62);

      if (v235)
      {
        sub_268CDE730(*(v333 + 1384) + qword_2802DC058, v333 + 536);
        v232 = *(v333 + 560);
        v233 = *(v333 + 568);
        __swift_project_boxed_opaque_existential_1((v333 + 536), v232);

        v231 = swift_task_alloc();
        *(v333 + 1720) = v231;
        *(v231 + 16) = v239;
        *(v231 + 24) = v240;
        v234 = (*(v233 + 64) + **(v233 + 64));
        v63 = *(*(v233 + 64) + 4);
        v64 = swift_task_alloc();
        v65 = sub_268D28EE0;
        v66 = v231;
        v67 = v232;
        v68 = v233;
        v69 = v234;
        *(v333 + 1728) = v64;
        *v64 = *(v333 + 1288);
        v64[1] = sub_268D02FF4;
        v70 = v243;
      }

      else
      {
        sub_268CDE730(*(v333 + 1384) + qword_2802DC058, v333 + 496);
        v228 = *(v333 + 520);
        v229 = *(v333 + 528);
        __swift_project_boxed_opaque_existential_1((v333 + 496), v228);

        v227 = swift_task_alloc();
        *(v333 + 1752) = v227;
        *(v227 + 16) = v239;
        *(v227 + 24) = v240;
        v230 = (*(v229 + 8) + **(v229 + 8));
        v72 = *(*(v229 + 8) + 4);
        v73 = swift_task_alloc();
        v65 = sub_268D28ED4;
        v66 = v227;
        v67 = v228;
        v68 = v229;
        v69 = v230;
        *(v333 + 1760) = v73;
        *v73 = *(v333 + 1288);
        v73[1] = sub_268D03374;
        v70 = v243;
      }

      return v69(v70, v65, v66, v67, v68);
    }

    v74 = sub_268DB98D4();
    v224 = *v74;
    v222 = v74[1];
    v223 = *(v74 + 16);
    v75 = sub_268DC7BA8();
    v225 = *v75;
    MEMORY[0x277D82BE0](*v75);
    sub_268DB9B78(v224, v222, v223, v225);
    MEMORY[0x277D82BD8](v225);
    sub_268D28BD4();
    v226 = swift_allocError();
    *v76 = 2;
    swift_willThrow();
    v285 = v226;
LABEL_111:
    v139 = *(v333 + 1440);
    v126 = v285;
    *(v333 + 1344) = v285;
    v127 = sub_268DC7B48();
    v138 = *v127;
    MEMORY[0x277D82BE0](*v127);
    sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v137 = v128;
    v129 = v285;
    *(v333 + 1352) = v285;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
    v135 = sub_268F9AE64();
    v136 = v130;
    v137[3] = MEMORY[0x277D837D0];
    v137[4] = sub_268CDD224();
    *v137 = v135;
    v137[1] = v136;
    sub_268CD0F7C();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v138);
    sub_268D28CD0();
    swift_allocError();
    swift_willThrow();

    MEMORY[0x277D82BD8](*(v333 + 1328));
    sub_268CD9D30(v333 + 16);

    goto LABEL_112;
  }

  *(v333 + 1112) = sub_268E948B8();
  *(v333 + 1120) = v77;
  v221 = MEMORY[0x26D62DB50](*(v333 + 1112), *(v333 + 1120), v325, v326);
  sub_268CD9D30(v333 + 1112);
  if (v221)
  {
    v215 = *(v333 + 1432);
    v214 = *(v333 + 1424);
    v213 = *(v333 + 1384);
    v216 = *(v333 + 1368);

    sub_268CDE730(v213 + qword_2802DBFF0, v333 + 416);
    v218 = *(v333 + 440);
    v219 = *(v333 + 448);
    __swift_project_boxed_opaque_existential_1((v333 + 416), v218);
    sub_268D28814((v333 + 16), (v333 + 456));
    MEMORY[0x277D82BE0](v216);
    v217 = swift_task_alloc();
    *(v333 + 1784) = v217;
    v217[2] = v214;
    v217[3] = v215;
    v217[4] = v333 + 16;
    v217[5] = v216;
    v220 = (*(v219 + 144) + **(v219 + 144));
    v78 = *(*(v219 + 144) + 4);
    v79 = swift_task_alloc();
    v27 = v217;
    v28 = v218;
    v29 = v219;
    v30 = v220;
    v80 = v79;
    v32 = sub_268D28EB0;
    *(v333 + 1792) = v80;
    *v80 = *(v333 + 1288);
    v80[1] = sub_268D036F4;

    return v30(v32, v27, v28, v29);
  }

  *(v333 + 1128) = sub_268E948B8();
  *(v333 + 1136) = v81;
  v212 = MEMORY[0x26D62DB50](*(v333 + 1128), *(v333 + 1136), v325, v326);
  sub_268CD9D30(v333 + 1128);
  if ((v212 & 1) == 0)
  {

    *(v333 + 1144) = sub_268E948B8();
    *(v333 + 1152) = v90;
    v192 = MEMORY[0x26D62DB50](*(v333 + 1144), *(v333 + 1152), v325, v326);
    sub_268CD9D30(v333 + 1144);
    if (v192)
    {
      v188 = *(v333 + 1384);

      sub_268CDE730(v188 + qword_2802DBFF0, v333 + 336);
      v191 = *(v333 + 360);
      v189 = *(v333 + 368);
      __swift_project_boxed_opaque_existential_1((v333 + 336), v191);
      v190 = (*(v189 + 40) + **(v189 + 40));
      v91 = *(*(v189 + 40) + 4);
      v92 = swift_task_alloc();
      v11 = v189;
      v12 = v190;
      v93 = v92;
      v14 = v191;
      *(v333 + 1856) = v93;
      *v93 = *(v333 + 1288);
      v93[1] = sub_268D03DB4;

      return v12(v14, v11);
    }

    *(v333 + 1160) = sub_268E948B8();
    *(v333 + 1168) = v94;
    v187 = MEMORY[0x26D62DB50](*(v333 + 1160), *(v333 + 1168), v325, v326);
    sub_268CD9D30(v333 + 1160);
    if (v187)
    {
      v185 = *(v333 + 1368);

      v186 = [v185 settingMetadata];
      if (v186 && (v184 = [v186 targetApp], MEMORY[0x277D82BD8](v186), v184))
      {
        v95 = [v184 bundleIdentifier];
        v183 = v95;
        if (v95)
        {
          v179 = sub_268F9AE24();
          v180 = v96;
          MEMORY[0x277D82BD8](v183);
          v181 = v179;
          v182 = v180;
        }

        else
        {
          v181 = 0;
          v182 = 0;
        }

        MEMORY[0x277D82BD8](v184);
        v177 = v181;
        v178 = v182;
      }

      else
      {
        v177 = 0;
        v178 = 0;
      }

      *(v333 + 1880) = v178;
      if (v178)
      {
        v97 = *(v333 + 1384);
        *(v333 + 1224) = v177;
        *(v333 + 1232) = v178;
        sub_268CDE730(v97 + qword_2802DBFF0, v333 + 296);
        v174 = *(v333 + 320);
        v175 = *(v333 + 328);
        __swift_project_boxed_opaque_existential_1((v333 + 296), v174);

        v173 = swift_task_alloc();
        *(v333 + 1888) = v173;
        *(v173 + 16) = v177;
        *(v173 + 24) = v178;
        v176 = (*(v175 + 56) + **(v175 + 56));
        v98 = *(*(v175 + 56) + 4);
        v99 = swift_task_alloc();
        v27 = v173;
        v28 = v174;
        v29 = v175;
        v30 = v176;
        v100 = v99;
        v32 = sub_268D28E98;
        *(v333 + 1896) = v100;
        *v100 = *(v333 + 1288);
        v100[1] = sub_268D040DC;

        return v30(v32, v27, v28, v29);
      }

      v167 = *(v333 + 1368);
      v101 = sub_268DC7B48();
      v171 = *v101;
      MEMORY[0x277D82BE0](*v101);
      sub_268F9B294();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      sub_268F9B734();
      v170 = v102;
      MEMORY[0x277D82BE0](v167);
      *(v333 + 1360) = v167;
      sub_268CD7620();
      sub_268D28940();
      v168 = sub_268F9AE74();
      v169 = v103;
      v170[3] = MEMORY[0x277D837D0];
      v170[4] = sub_268CDD224();
      *v170 = v168;
      v170[1] = v169;
      sub_268CD0F7C();
      sub_268F9AC04();

      MEMORY[0x277D82BD8](v171);
      sub_268D284D4();
      v172 = swift_allocError();
      *v104 = 1;
      swift_willThrow();
      v285 = v172;
    }

    else
    {

      *(v333 + 1176) = sub_268E948B8();
      *(v333 + 1184) = v105;
      v166 = MEMORY[0x26D62DB50](*(v333 + 1176), *(v333 + 1184), v325, v326);
      sub_268CD9D30(v333 + 1176);
      if (v166)
      {
        v162 = *(v333 + 1384);

        sub_268CDE730(v162 + qword_2802DBFF0, v333 + 256);
        v165 = *(v333 + 280);
        v163 = *(v333 + 288);
        __swift_project_boxed_opaque_existential_1((v333 + 256), v165);
        v164 = (*(v163 + 88) + **(v163 + 88));
        v106 = *(*(v163 + 88) + 4);
        v107 = swift_task_alloc();
        v11 = v163;
        v12 = v164;
        v108 = v107;
        v14 = v165;
        *(v333 + 1920) = v108;
        *v108 = *(v333 + 1288);
        v108[1] = sub_268D0443C;

        return v12(v14, v11);
      }

      *(v333 + 1192) = sub_268E948B8();
      *(v333 + 1200) = v109;
      v161 = MEMORY[0x26D62DB50](*(v333 + 1192), *(v333 + 1200), v325, v326);
      sub_268CD9D30(v333 + 1192);
      if (v161)
      {
        v156 = *(v333 + 1384);

        sub_268CDE730(v156 + qword_2802DC058, v333 + 176);
        v158 = *(v333 + 200);
        v159 = *(v333 + 208);
        __swift_project_boxed_opaque_existential_1((v333 + 176), v158);
        sub_268D28814((v333 + 16), (v333 + 216));

        v157 = swift_task_alloc();
        *(v333 + 1944) = v157;
        *(v157 + 16) = v333 + 16;
        *(v157 + 24) = v156;
        v160 = (*(v159 + 32) + **(v159 + 32));
        v110 = *(*(v159 + 32) + 4);
        v111 = swift_task_alloc();
        v27 = v157;
        v28 = v158;
        v29 = v159;
        v30 = v160;
        v112 = v111;
        v32 = sub_268D28E8C;
        *(v333 + 1952) = v112;
        *v112 = *(v333 + 1288);
        v112[1] = sub_268D04764;

        return v30(v32, v27, v28, v29);
      }

      *(v333 + 1208) = sub_268E948B8();
      *(v333 + 1216) = v113;
      v155 = MEMORY[0x26D62DB50](*(v333 + 1208), *(v333 + 1216), v325, v326);
      sub_268CD9D30(v333 + 1208);
      if (v155)
      {
        v151 = *(v333 + 1384);

        sub_268CDE730(v151 + qword_2802DC058, v333 + 136);
        v154 = *(v333 + 160);
        v152 = *(v333 + 168);
        __swift_project_boxed_opaque_existential_1((v333 + 136), v154);
        v153 = (*(v152 + 104) + **(v152 + 104));
        v114 = *(*(v152 + 104) + 4);
        v115 = swift_task_alloc();
        v11 = v152;
        v12 = v153;
        v116 = v115;
        v14 = v154;
        *(v333 + 1976) = v116;
        *v116 = *(v333 + 1288);
        v116[1] = sub_268D04AC0;

        return v12(v14, v11);
      }

      v145 = *(v333 + 1376);

      v117 = sub_268DC7B48();
      v149 = *v117;
      MEMORY[0x277D82BE0](*v117);
      sub_268F9B294();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      sub_268F9B734();
      v148 = v118;
      MEMORY[0x277D82BE0](v145);
      *(v333 + 1336) = v145;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC080, &qword_268F9D998);
      v146 = sub_268F9AE64();
      v147 = v119;
      v148[3] = MEMORY[0x277D837D0];
      v148[4] = sub_268CDD224();
      *v148 = v146;
      v148[1] = v147;
      sub_268CD0F7C();
      sub_268F9AC04();

      MEMORY[0x277D82BD8](v149);
      sub_268D284D4();
      v150 = swift_allocError();
      *v120 = 8;
      swift_willThrow();
      v285 = v150;
    }

    goto LABEL_111;
  }

  v207 = *(v333 + 1384);
  v210 = *(v333 + 1368);

  v208 = *(v207 + qword_2802DC010);

  sub_268DAB218(v210);
  v336[0] = v335;
  v209 = sub_268F397B4(v336);

  *(v333 + 2000) = v209;
  v82 = [v210 settingMetadata];
  v211 = v82;
  if (v82)
  {
    v202 = [v82 settingId];
    v203 = sub_268F9AE24();
    v204 = v83;
    MEMORY[0x277D82BD8](v211);
    MEMORY[0x277D82BD8](v202);
    v205 = v203;
    v206 = v204;
  }

  else
  {
    v205 = 0;
    v206 = 0;
  }

  *(v333 + 1816) = v206;
  if (!v206)
  {
    v87 = sub_268DB98D4();
    v195 = *v87;
    v193 = v87[1];
    v194 = *(v87 + 16);
    v88 = sub_268DC7BA8();
    v196 = *v88;
    MEMORY[0x277D82BE0](*v88);
    sub_268DB9B78(v195, v193, v194, v196);
    MEMORY[0x277D82BD8](v196);
    sub_268D284D4();
    v197 = swift_allocError();
    *v89 = 4;
    swift_willThrow();
    v285 = v197;
    goto LABEL_111;
  }

  v84 = *(v333 + 1384);
  *(v333 + 1240) = v205;
  *(v333 + 1248) = v206;
  sub_268CDE730(v84 + qword_2802DC058, v333 + 376);
  v199 = *(v333 + 400);
  v200 = *(v333 + 408);
  __swift_project_boxed_opaque_existential_1((v333 + 376), v199);

  v198 = swift_task_alloc();
  *(v333 + 1824) = v198;
  *(v198 + 16) = v205;
  *(v198 + 24) = v206;
  v201 = (*(v200 + 8) + **(v200 + 8));
  v85 = *(*(v200 + 8) + 4);
  v86 = swift_task_alloc();
  *(v333 + 1832) = v86;
  *v86 = *(v333 + 1288);
  v86[1] = sub_268D03A50;

  return v201(v209, sub_268D28EA4, v198, v199, v200);
}

uint64_t sub_268D012F4(uint64_t a1)
{
  v10 = *v2;
  v9 = v10 + 161;
  v4 = *(*v2 + 1448);
  v10[161] = *v2;
  v10[182] = a1;
  v10[183] = v1;

  if (v1)
  {
    v7 = *v9;
    v6 = sub_268D04DE8;
  }

  else
  {
    v5 = *v9;
    v6 = sub_268D01474;
  }

  return MEMORY[0x2822009F8](v6, 0);
}

uint64_t sub_268D01474()
{
  v1 = v0[182];
  v8 = v1;
  v0[161] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[166];
  v0[166] = v8;
  MEMORY[0x277D82BD8](v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 112);
  v16 = v0[182];
  v13 = v0[180];
  v14 = v0[177];
  v15 = v0[176];
  v3 = sub_268DB98D4();
  v11 = *v3;
  v9 = v3[1];
  v10 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v12 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v11, v9, v10, v12);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v0[166]);
  sub_268CD9D30((v0 + 2));

  v5 = *(v0[161] + 8);
  v6 = v0[161];

  return v5(v16);
}

uint64_t sub_268D0161C(uint64_t a1)
{
  v10 = *v2;
  v9 = v10 + 161;
  v4 = *(*v2 + 1472);
  v10[161] = *v2;
  v10[185] = a1;
  v10[186] = v1;

  if (v1)
  {
    v7 = *v9;
    v6 = sub_268D05094;
  }

  else
  {
    v5 = *v9;
    v6 = sub_268D0179C;
  }

  return MEMORY[0x2822009F8](v6, 0);
}

uint64_t sub_268D0179C()
{
  v1 = v0[185];
  v8 = v1;
  v0[161] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[166];
  v0[166] = v8;
  MEMORY[0x277D82BD8](v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 107);
  v16 = v0[185];
  v13 = v0[180];
  v14 = v0[177];
  v15 = v0[176];
  v3 = sub_268DB98D4();
  v11 = *v3;
  v9 = v3[1];
  v10 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v12 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v11, v9, v10, v12);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v0[166]);
  sub_268CD9D30((v0 + 2));

  v5 = *(v0[161] + 8);
  v6 = v0[161];

  return v5(v16);
}

uint64_t sub_268D01944(uint64_t a1)
{
  v10 = *v2;
  v9 = v10 + 161;
  v4 = *(*v2 + 1496);
  v10[161] = *v2;
  v10[188] = a1;
  v10[189] = v1;

  if (v1)
  {
    v7 = *v9;
    v6 = sub_268D05340;
  }

  else
  {
    v5 = *v9;
    v6 = sub_268D01AC4;
  }

  return MEMORY[0x2822009F8](v6, 0);
}

uint64_t sub_268D01AC4()
{
  v1 = v0[188];
  v8 = v1;
  v0[161] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[166];
  v0[166] = v8;
  MEMORY[0x277D82BD8](v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 102);
  v16 = v0[188];
  v13 = v0[180];
  v14 = v0[177];
  v15 = v0[176];
  v3 = sub_268DB98D4();
  v11 = *v3;
  v9 = v3[1];
  v10 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v12 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v11, v9, v10, v12);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v0[166]);
  sub_268CD9D30((v0 + 2));

  v5 = *(v0[161] + 8);
  v6 = v0[161];

  return v5(v16);
}

uint64_t sub_268D01C6C(uint64_t a1)
{
  v14 = *v2;
  v12 = (*v2 + 16);
  v13 = v14 + 161;
  v4 = *(*v2 + 1536);
  v14[161] = *v2;
  v14[193] = a1;
  v14[194] = v1;

  if (v1)
  {
    v8 = *v13;
    v7 = sub_268D055EC;
  }

  else
  {
    v5 = v12[189];
    v10 = v12[188];
    v11 = v12[171];

    v6 = *v13;
    v7 = sub_268D01E20;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_268D01E20()
{
  v1 = v0[193];
  v8 = v1;
  v9 = v0[190];
  v0[161] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[166];
  v0[166] = v8;
  MEMORY[0x277D82BD8](v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 97);

  v17 = v0[193];
  v14 = v0[180];
  v15 = v0[177];
  v16 = v0[176];
  v3 = sub_268DB98D4();
  v12 = *v3;
  v10 = v3[1];
  v11 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v13 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v12, v10, v11, v13);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v0[166]);
  sub_268CD9D30((v0 + 2));

  v5 = *(v0[161] + 8);
  v6 = v0[161];

  return v5(v17);
}

uint64_t sub_268D01FDC(uint64_t a1)
{
  v12 = *v2;
  v10 = *v2 + 16;
  v11 = v12 + 161;
  v4 = *(*v2 + 1568);
  v12[161] = *v2;
  v12[197] = a1;
  v12[198] = v1;

  if (v1)
  {
    v8 = *v11;
    v7 = sub_268D058D4;
  }

  else
  {
    v5 = *(v10 + 1544);

    v6 = *v11;
    v7 = sub_268D02170;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_268D02170()
{
  v1 = v0[197];
  v8 = v1;
  v0[161] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[166];
  v0[166] = v8;
  MEMORY[0x277D82BD8](v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 92);
  v16 = v0[197];
  v13 = v0[180];
  v14 = v0[177];
  v15 = v0[176];
  v3 = sub_268DB98D4();
  v11 = *v3;
  v9 = v3[1];
  v10 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v12 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v11, v9, v10, v12);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v0[166]);
  sub_268CD9D30((v0 + 2));

  v5 = *(v0[161] + 8);
  v6 = v0[161];

  return v5(v16);
}

uint64_t sub_268D02318(uint64_t a1)
{
  v12 = *v2;
  v10 = *v2 + 16;
  v11 = v12 + 161;
  v4 = *(*v2 + 1600);
  v12[161] = *v2;
  v12[201] = a1;
  v12[202] = v1;

  if (v1)
  {
    v8 = *v11;
    v7 = sub_268D05B88;
  }

  else
  {
    v5 = *(v10 + 1576);

    v6 = *v11;
    v7 = sub_268D024AC;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_268D024AC()
{
  v1 = v0[201];
  v8 = v1;
  v0[161] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[166];
  v0[166] = v8;
  MEMORY[0x277D82BD8](v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 87);
  v16 = v0[201];
  v13 = v0[180];
  v14 = v0[177];
  v15 = v0[176];
  v3 = sub_268DB98D4();
  v11 = *v3;
  v9 = v3[1];
  v10 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v12 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v11, v9, v10, v12);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v0[166]);
  sub_268CD9D30((v0 + 2));

  v5 = *(v0[161] + 8);
  v6 = v0[161];

  return v5(v16);
}

uint64_t sub_268D02654(uint64_t a1)
{
  v12 = *v2;
  v10 = *v2 + 16;
  v11 = v12 + 161;
  v4 = *(*v2 + 1632);
  v12[161] = *v2;
  v12[205] = a1;
  v12[206] = v1;

  if (v1)
  {
    v8 = *v11;
    v7 = sub_268D05E3C;
  }

  else
  {
    v5 = *(v10 + 1608);

    v6 = *v11;
    v7 = sub_268D027E8;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_268D027E8()
{
  v1 = v0[205];
  v8 = v1;
  v0[161] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[166];
  v0[166] = v8;
  MEMORY[0x277D82BD8](v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 82);
  v16 = v0[205];
  v13 = v0[180];
  v14 = v0[177];
  v15 = v0[176];
  v3 = sub_268DB98D4();
  v11 = *v3;
  v9 = v3[1];
  v10 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v12 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v11, v9, v10, v12);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v0[166]);
  sub_268CD9D30((v0 + 2));

  v5 = *(v0[161] + 8);
  v6 = v0[161];

  return v5(v16);
}

uint64_t sub_268D02990(uint64_t a1)
{
  v12 = *v2;
  v10 = *v2 + 16;
  v11 = v12 + 161;
  v4 = *(*v2 + 1664);
  v12[161] = *v2;
  v12[209] = a1;
  v12[210] = v1;

  if (v1)
  {
    v8 = *v11;
    v7 = sub_268D060F0;
  }

  else
  {
    v5 = *(v10 + 1640);

    v6 = *v11;
    v7 = sub_268D02B24;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_268D02B24()
{
  v1 = v0[209];
  v8 = v1;
  v0[161] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[166];
  v0[166] = v8;
  MEMORY[0x277D82BD8](v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 77);
  v16 = v0[209];
  v13 = v0[180];
  v14 = v0[177];
  v15 = v0[176];
  v3 = sub_268DB98D4();
  v11 = *v3;
  v9 = v3[1];
  v10 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v12 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v11, v9, v10, v12);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v0[166]);
  sub_268CD9D30((v0 + 2));

  v5 = *(v0[161] + 8);
  v6 = v0[161];

  return v5(v16);
}

uint64_t sub_268D02CCC(uint64_t a1)
{
  v10 = *v2;
  v9 = v10 + 161;
  v4 = *(*v2 + 1688);
  v10[161] = *v2;
  v10[212] = a1;
  v10[213] = v1;

  if (v1)
  {
    v7 = *v9;
    v6 = sub_268D063A4;
  }

  else
  {
    v5 = *v9;
    v6 = sub_268D02E4C;
  }

  return MEMORY[0x2822009F8](v6, 0);
}

uint64_t sub_268D02E4C()
{
  v1 = v0[212];
  v8 = v1;
  v0[161] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[166];
  v0[166] = v8;
  MEMORY[0x277D82BD8](v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 72);
  v16 = v0[212];
  v13 = v0[180];
  v14 = v0[177];
  v15 = v0[176];
  v3 = sub_268DB98D4();
  v11 = *v3;
  v9 = v3[1];
  v10 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v12 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v11, v9, v10, v12);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v0[166]);
  sub_268CD9D30((v0 + 2));

  v5 = *(v0[161] + 8);
  v6 = v0[161];

  return v5(v16);
}

uint64_t sub_268D02FF4(uint64_t a1)
{
  v13 = *v2;
  v11 = *v2 + 16;
  v12 = v13 + 161;
  v4 = *(*v2 + 1728);
  v13[161] = *v2;
  v13[217] = a1;
  v13[218] = v1;

  if (v1)
  {
    v8 = *v12;
    v7 = sub_268D06650;
  }

  else
  {
    v5 = *(v11 + 1704);
    v10 = *(v11 + 1696);

    v6 = *v12;
    v7 = sub_268D03198;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_268D03198()
{
  v1 = v0[217];
  v9 = v1;
  v0[161] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[166];
  v0[166] = v9;
  MEMORY[0x277D82BD8](v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 67);
  v17 = v0[217];
  v3 = v0[214];

  v14 = v0[180];
  v15 = v0[177];
  v16 = v0[176];
  v4 = sub_268DB98D4();
  v12 = *v4;
  v10 = v4[1];
  v11 = *(v4 + 16);
  v5 = sub_268DC7BA8();
  v13 = *v5;
  MEMORY[0x277D82BE0](*v5);
  sub_268DB9B78(v12, v10, v11, v13);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v0[166]);
  sub_268CD9D30((v0 + 2));

  v6 = *(v0[161] + 8);
  v7 = v0[161];

  return v6(v17);
}

uint64_t sub_268D03374(uint64_t a1)
{
  v13 = *v2;
  v11 = *v2 + 16;
  v12 = v13 + 161;
  v4 = *(*v2 + 1760);
  v13[161] = *v2;
  v13[221] = a1;
  v13[222] = v1;

  if (v1)
  {
    v8 = *v12;
    v7 = sub_268D0692C;
  }

  else
  {
    v5 = *(v11 + 1736);
    v10 = *(v11 + 1696);

    v6 = *v12;
    v7 = sub_268D03518;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_268D03518()
{
  v1 = v0[221];
  v9 = v1;
  v0[161] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[166];
  v0[166] = v9;
  MEMORY[0x277D82BD8](v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 62);
  v17 = v0[221];
  v3 = v0[214];

  v14 = v0[180];
  v15 = v0[177];
  v16 = v0[176];
  v4 = sub_268DB98D4();
  v12 = *v4;
  v10 = v4[1];
  v11 = *(v4 + 16);
  v5 = sub_268DC7BA8();
  v13 = *v5;
  MEMORY[0x277D82BE0](*v5);
  sub_268DB9B78(v12, v10, v11, v13);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v0[166]);
  sub_268CD9D30((v0 + 2));

  v6 = *(v0[161] + 8);
  v7 = v0[161];

  return v6(v17);
}

uint64_t sub_268D036F4(uint64_t a1)
{
  v13 = *v2;
  v11 = *v2 + 16;
  v12 = (*v2 + 1288);
  v4 = *(*v2 + 1792);
  v13[161] = *v2;
  v13[225] = a1;
  v13[226] = v1;

  if (v1)
  {
    v8 = *v12;
    v7 = sub_268D06C08;
  }

  else
  {
    v5 = *(v11 + 1768);
    v10 = *(v11 + 1352);

    sub_268CD9D30(v11);

    v6 = *v12;
    v7 = sub_268D038A8;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_268D038A8()
{
  v1 = v0[225];
  v8 = v1;
  v0[161] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[166];
  v0[166] = v8;
  MEMORY[0x277D82BD8](v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 52);
  v16 = v0[225];
  v13 = v0[180];
  v14 = v0[177];
  v15 = v0[176];
  v3 = sub_268DB98D4();
  v11 = *v3;
  v9 = v3[1];
  v10 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v12 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v11, v9, v10, v12);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v0[166]);
  sub_268CD9D30((v0 + 2));

  v5 = *(v0[161] + 8);
  v6 = v0[161];

  return v5(v16);
}

uint64_t sub_268D03A50(uint64_t a1)
{
  v13 = *v2;
  v11 = *v2 + 16;
  v12 = v13 + 161;
  v4 = *(*v2 + 1832);
  v13[161] = *v2;
  v13[230] = a1;
  v13[231] = v1;

  if (v1)
  {
    v8 = *v12;
    v7 = sub_268D06EE4;
  }

  else
  {
    v5 = *(v11 + 1808);
    v10 = *(v11 + 1800);

    v6 = *v12;
    v7 = sub_268D03BF4;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_268D03BF4()
{
  v1 = v0[230];
  v8 = v1;
  v9 = v0[227];
  v0[161] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[166];
  v0[166] = v8;
  MEMORY[0x277D82BD8](v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 47);

  v17 = v0[230];
  v14 = v0[180];
  v15 = v0[177];
  v16 = v0[176];
  v3 = sub_268DB98D4();
  v12 = *v3;
  v10 = v3[1];
  v11 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v13 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v12, v10, v11, v13);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v0[166]);
  sub_268CD9D30((v0 + 2));

  v5 = *(v0[161] + 8);
  v6 = v0[161];

  return v5(v17);
}

uint64_t sub_268D03DB4(uint64_t a1)
{
  v10 = *v2;
  v9 = v10 + 161;
  v4 = *(*v2 + 1856);
  v10[161] = *v2;
  v10[233] = a1;
  v10[234] = v1;

  if (v1)
  {
    v7 = *v9;
    v6 = sub_268D071C0;
  }

  else
  {
    v5 = *v9;
    v6 = sub_268D03F34;
  }

  return MEMORY[0x2822009F8](v6, 0);
}

uint64_t sub_268D03F34()
{
  v1 = v0[233];
  v8 = v1;
  v0[161] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[166];
  v0[166] = v8;
  MEMORY[0x277D82BD8](v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 42);
  v16 = v0[233];
  v13 = v0[180];
  v14 = v0[177];
  v15 = v0[176];
  v3 = sub_268DB98D4();
  v11 = *v3;
  v9 = v3[1];
  v10 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v12 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v11, v9, v10, v12);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v0[166]);
  sub_268CD9D30((v0 + 2));

  v5 = *(v0[161] + 8);
  v6 = v0[161];

  return v5(v16);
}

uint64_t sub_268D040DC(uint64_t a1)
{
  v13 = *v2;
  v11 = *v2 + 16;
  v12 = v13 + 161;
  v4 = *(*v2 + 1896);
  v13[161] = *v2;
  v13[238] = a1;
  v13[239] = v1;

  if (v1)
  {
    v8 = *v12;
    v7 = sub_268D0746C;
  }

  else
  {
    v5 = *(v11 + 1872);
    v10 = *(v11 + 1864);

    v6 = *v12;
    v7 = sub_268D04280;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_268D04280()
{
  v1 = v0[238];
  v8 = v1;
  v9 = v0[235];
  v0[161] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[166];
  v0[166] = v8;
  MEMORY[0x277D82BD8](v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 37);

  v17 = v0[238];
  v14 = v0[180];
  v15 = v0[177];
  v16 = v0[176];
  v3 = sub_268DB98D4();
  v12 = *v3;
  v10 = v3[1];
  v11 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v13 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v12, v10, v11, v13);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v0[166]);
  sub_268CD9D30((v0 + 2));

  v5 = *(v0[161] + 8);
  v6 = v0[161];

  return v5(v17);
}

uint64_t sub_268D0443C(uint64_t a1)
{
  v10 = *v2;
  v9 = v10 + 161;
  v4 = *(*v2 + 1920);
  v10[161] = *v2;
  v10[241] = a1;
  v10[242] = v1;

  if (v1)
  {
    v7 = *v9;
    v6 = sub_268D07744;
  }

  else
  {
    v5 = *v9;
    v6 = sub_268D045BC;
  }

  return MEMORY[0x2822009F8](v6, 0);
}

uint64_t sub_268D045BC()
{
  v1 = v0[241];
  v8 = v1;
  v0[161] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[166];
  v0[166] = v8;
  MEMORY[0x277D82BD8](v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 32);
  v16 = v0[241];
  v13 = v0[180];
  v14 = v0[177];
  v15 = v0[176];
  v3 = sub_268DB98D4();
  v11 = *v3;
  v9 = v3[1];
  v10 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v12 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v11, v9, v10, v12);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v0[166]);
  sub_268CD9D30((v0 + 2));

  v5 = *(v0[161] + 8);
  v6 = v0[161];

  return v5(v16);
}

uint64_t sub_268D04764(uint64_t a1)
{
  v13 = *v2;
  v11 = *v2 + 16;
  v12 = (*v2 + 1288);
  v4 = *(*v2 + 1952);
  v13[161] = *v2;
  v13[245] = a1;
  v13[246] = v1;

  if (v1)
  {
    v8 = *v12;
    v7 = sub_268D079F0;
  }

  else
  {
    v5 = *(v11 + 1928);
    v10 = *(v11 + 1368);

    sub_268CD9D30(v11);

    v6 = *v12;
    v7 = sub_268D04918;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_268D04918()
{
  v1 = v0[245];
  v8 = v1;
  v0[161] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[166];
  v0[166] = v8;
  MEMORY[0x277D82BD8](v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 22);
  v16 = v0[245];
  v13 = v0[180];
  v14 = v0[177];
  v15 = v0[176];
  v3 = sub_268DB98D4();
  v11 = *v3;
  v9 = v3[1];
  v10 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v12 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v11, v9, v10, v12);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v0[166]);
  sub_268CD9D30((v0 + 2));

  v5 = *(v0[161] + 8);
  v6 = v0[161];

  return v5(v16);
}

uint64_t sub_268D04AC0(uint64_t a1)
{
  v10 = *v2;
  v9 = v10 + 161;
  v4 = *(*v2 + 1976);
  v10[161] = *v2;
  v10[248] = a1;
  v10[249] = v1;

  if (v1)
  {
    v7 = *v9;
    v6 = sub_268D07CC4;
  }

  else
  {
    v5 = *v9;
    v6 = sub_268D04C40;
  }

  return MEMORY[0x2822009F8](v6, 0);
}