void sub_2204F63C4()
{
  if (!qword_281297B20)
  {
    type metadata accessor for ForYouFeedLayoutModel();
    sub_2204BC2F4(qword_28128DE08, 255, type metadata accessor for ForYouFeedLayoutModel);
    v0 = sub_22088BC4C();
    if (!v1)
    {
      atomic_store(v0, &qword_281297B20);
    }
  }
}

uint64_t sub_2204F645C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &unk_281296850);
  result = sub_2208884DC();
  if (v11)
  {
    sub_22048A10C();
    v3 = v2;
    v4 = objc_allocWithZone(v2);
    v5 = &v4[qword_27CF578E0];
    *v5 = 0;
    *(v5 + 1) = 0;
    sub_22046DA2C(v10, &v4[qword_27CF578E8]);
    v9.receiver = v4;
    v9.super_class = v3;
    v6 = objc_msgSendSuper2(&v9, sel_init);
    sub_22046DA2C(v6 + qword_27CF578E8, v8);
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    v7 = v6;
    sub_2208904AC();

    __swift_destroy_boxed_opaque_existential_1(v10);
    __swift_destroy_boxed_opaque_existential_1(v8);
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for StockTitleViewLayoutOptions()
{
  result = qword_281287A20;
  if (!qword_281287A20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2204F65CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_2204F6634()
{
  type metadata accessor for UIEdgeInsets(319);
  if (v0 <= 0x3F)
  {
    sub_22088C32C();
    if (v1 <= 0x3F)
    {
      sub_2204BCAA4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2204F66D8(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_22044D56C(0, &qword_28127E820);
  result = sub_22088848C();
  if (result)
  {
    v4 = result;
    sub_22044D56C(0, &unk_28127E890);
    sub_22089147C();
    sub_22088838C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for StockTitleViewModel()
{
  result = qword_28128F7A0;
  if (!qword_28128F7A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2204F6884(uint64_t a1, void (*a2)(void), uint64_t (*a3)(void))
{
  a2(0);
  swift_allocObject();
  return a3();
}

id su_excessiveLineHeightCharacters()
{
  if (su_excessiveLineHeightCharacters_onceToken[0] != -1)
  {
    su_excessiveLineHeightCharacters_cold_1();
  }

  v1 = su_excessiveLineHeightCharacters_tooBigChars;

  return v1;
}

uint64_t sub_2204F6938@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_28128A4E0);
  result = sub_2208884DC();
  v5 = v23;
  if (!v23)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = v24;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_28128F180);
  result = sub_2208884DC();
  if (!v22)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &unk_28128DC60);
  result = sub_2208884DC();
  if (!v20)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281298B90);
  result = sub_2208884DC();
  if (v18)
  {
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
    MEMORY[0x28223BE20](v7, v7);
    v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    (*(v10 + 16))(v9);
    v11 = __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
    MEMORY[0x28223BE20](v11, v11);
    v13 = &v17[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    (*(v14 + 16))(v13);
    v15 = sub_220501178(v5, v6, *v9, *v13, v17);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v19);
    result = __swift_destroy_boxed_opaque_existential_1(v21);
    *a2 = v15;
    a2[1] = &off_283424F68;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t __su_excessiveLineHeightCharacters_block_invoke()
{
  su_excessiveLineHeightCharacters_tooBigChars = CTFontCopySystemUIFontExcessiveLineHeightCharacterSet();

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_2204F6C84@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_22046DA2C(a1, v45);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220487E40(0, &qword_281297EB0, type metadata accessor for StocksActivity, sub_2205C4928, MEMORY[0x277D6D5F0]);
  result = sub_2208884CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297C50);
  result = sub_2208884DC();
  if (!v43)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088731C();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281296D20);
  result = sub_2208884DC();
  if (!v42)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281294338);
  result = sub_2208884DC();
  if (!v40)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281296770);
  result = sub_2208884DC();
  if (!v38)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_281285100);
  result = sub_2208884DC();
  if (!v36)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22044D56C(0, &qword_28127E6D0);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = result;
  v25 = v6;
  v26 = v44;
  v27 = v43;
  v28 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297C30);
  result = sub_2208884DC();
  if (v34)
  {
    v8 = __swift_mutable_project_boxed_opaque_existential_1(v35, v36);
    MEMORY[0x28223BE20](v8, v8);
    v10 = (&v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10);
    v12 = *v10;
    v13 = type metadata accessor for AnalyticsChannelDataFactory();
    v32[3] = v13;
    v32[4] = &off_28341D2B0;
    v32[0] = v12;
    v14 = type metadata accessor for ForYouFeedRouter();
    v15 = swift_allocObject();
    v16 = __swift_mutable_project_boxed_opaque_existential_1(v32, v13);
    MEMORY[0x28223BE20](v16, v16);
    v18 = (&v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v19 + 16))(v18);
    v20 = *v18;
    v30 = v13;
    v31 = &off_28341D2B0;
    *&v29 = v20;
    swift_unknownObjectWeakInit();
    v15[4] = 0;
    swift_unknownObjectWeakInit();
    sub_220457328(v45, (v15 + 5));
    v21 = v26;
    v22 = v27;
    v15[10] = v5;
    v15[11] = v22;
    v15[12] = v21;
    v15[18] = v25;
    sub_220457328(&v41, (v15 + 19));
    sub_220457328(&v37, (v15 + 24));
    sub_220457328(&v39, (v15 + 13));
    sub_220457328(&v29, (v15 + 29));
    v15[34] = v7;
    sub_220457328(&v33, (v15 + 35));
    __swift_destroy_boxed_opaque_existential_1(v32);
    result = __swift_destroy_boxed_opaque_existential_1(v35);
    v23 = v28;
    v28[3] = v14;
    v23[4] = &off_283422A10;
    *v23 = v15;
    return result;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_2204F71E8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281294338);
  result = sub_2208884DC();
  if (v7)
  {
    v4 = type metadata accessor for OfflineAlertControllerFactory();
    v5 = swift_allocObject();
    sub_220457328(&v6, v5 + 16);
    a2[3] = v4;
    result = sub_220448C28(qword_281286580, type metadata accessor for OfflineAlertControllerFactory);
    a2[4] = result;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 sub_2204F72CC@<Q0>(double a1@<X0>, double a2@<X1>, uint64_t a3@<X8>)
{
  v171 = a1;
  v168 = a3;
  v5 = sub_2208852DC();
  v163 = *(v5 - 8);
  v164 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v162 = &v150 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*&a2 + 24);
  v9 = *(*&a2 + 40);
  v10 = **&a2;
  v11 = *(*&a2 + 8);
  v172 = a2;
  v166 = v8;
  v12 = v10 - v8 - v9;
  v170 = v3;
  v13 = __swift_project_boxed_opaque_existential_1((*&v3 + 16), *(*&v3 + 40));
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass_];
  v148 = 0x80000002208C6B40;
  v174 = sub_220884CAC();
  v161 = v16;

  v17 = *v13;
  sub_2204A5DF0();
  v169 = v18;
  v19 = swift_allocObject();
  v167 = xmmword_220899920;
  *(v19 + 16) = xmmword_220899920;
  v20 = *MEMORY[0x277D740A8];
  *(v19 + 32) = *MEMORY[0x277D740A8];
  v21 = COERCE_DOUBLE(sub_22044D56C(0, &qword_28127E570));
  v173 = *MEMORY[0x277D76918];
  v165 = COERCE_DOUBLE(v20);
  v22 = sub_220891F2C();
  v23 = MEMORY[0x277D740C0];
  *(v19 + 40) = v22;
  v24 = *v23;
  *(v19 + 64) = v21;
  *(v19 + 72) = v24;
  v25 = v17[5];
  v26 = v17[6];
  __swift_project_boxed_opaque_existential_1(v17 + 2, v25);
  v27 = *(v26 + 16);
  v28 = *(v27 + 216);
  p_y = v24;
  v29 = v28(v25, v27);
  v160 = sub_22044D56C(0, &qword_28127E530);
  *(v19 + 104) = v160;
  *(v19 + 80) = v29;
  sub_2204A5EAC(v19);
  swift_setDeallocating();
  sub_2204A5D84();
  v158.size.height = v30;
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v31 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v32 = sub_22089132C();

  type metadata accessor for Key(0);
  v158.size.width = v33;
  sub_2204A63B8();
  v34 = sub_22089125C();

  v174 = [v31 initWithString:v32 attributes:v34];

  v35 = __swift_project_boxed_opaque_existential_1((*&v170 + 16), *(*&v170 + 40));
  sub_22088684C();
  v36 = *v35;
  v37 = swift_allocObject();
  *(v37 + 16) = v167;
  *(v37 + 32) = v165;
  *(v37 + 40) = sub_220891F2C();
  v161 = v21;
  v38 = p_y;
  *(v37 + 64) = v21;
  *(v37 + 72) = v38;
  v40 = v36[5];
  v39 = v36[6];
  __swift_project_boxed_opaque_existential_1(v36 + 2, v40);
  v41 = (*(*(v39 + 16) + 40))(v40);
  *(v37 + 104) = v160;
  *(v37 + 80) = v41;
  sub_2204A5EAC(v37);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v42 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v43 = sub_22089132C();

  v44 = sub_22089125C();

  v45 = v42;
  v46 = v174;
  v47 = [v45 initWithString:v43 attributes:v44];

  if ([v46 su_containsExcessiveLineHeightCharacter])
  {
    v48 = *&v172;
    [v46 su:*(*&v172 + 48) languageAwareOutsetsAtScale:?];
    v154 = v49;
    v169 = v50;
    v156 = v52;
    v157 = v51;
  }

  else
  {
    v53 = *(MEMORY[0x277D768C8] + 8);
    v154 = *MEMORY[0x277D768C8];
    v169 = v53;
    v54 = *(MEMORY[0x277D768C8] + 16);
    v156 = *(MEMORY[0x277D768C8] + 24);
    v157 = v54;
    v48 = *&v172;
  }

  [v46 boundingRectWithSize:32 options:0 context:{v12, v11}];
  v152 = v55;
  v153 = v56;
  v58 = v57;
  v155 = v59;
  v160 = v47;
  v165 = v12;
  [v47 boundingRectWithSize:32 options:0 context:{v12, v11}];
  v158.origin.x = v60;
  v158.origin.y = v61;
  v158.size.width = v62;
  v158.size.height = v63;
  v64 = sub_220891F2C();
  [v64 capHeight];
  v66 = v65;

  v172 = v66 * *(v48 + 80);
  v67 = sub_220891F2C();
  [v67 capHeight];
  v171 = v68;

  v69 = sub_220891DFC();
  *&v167 = v10;
  v70 = v10 - v9;
  if (v69)
  {
    p_y = &v203.origin.y;
    p_size = &v203.size;
    p_height = &v203.size.height;
    v73 = &v204;
    v74 = v172;
    v151 = v58;
    v75 = v70 - v172;
    v76 = *(v48 + 88) + *(v48 + 104);
    v77 = sub_220891F2C();
    [v77 ascender];
    v79 = v78;

    v80 = sub_220891F2C();
    [v80 capHeight];
    v82 = v81;

    v211.origin.y = v76 + v79 - v82;
    v193 = v75;
    y = v211.origin.y;
    v195 = v74;
    v211.size.height = v171;
    v196 = v171;
    v197 = 0;
    v173 = v75;
    v211.origin.x = v75;
    v161 = v211.origin.y;
    v211.size.width = v74;
    v83 = CGRectGetMinX(v211) - *(v48 + 72);
    x = v158.origin.x;
    v84 = v158.origin.y;
    width = v158.size.width;
    height = v158.size.height;
    v88 = v83 - CGRectGetWidth(v158);
    v212.origin.x = x;
    v212.origin.y = v84;
    v212.size.width = width;
    v212.size.height = height;
    v89 = CGRectGetWidth(v212);
    v213.origin.x = x;
    v213.origin.y = v84;
    v213.size.width = width;
    v213.size.height = height;
    v90 = CGRectGetHeight(v213);
    v198 = v88;
    v170 = v76;
    v199 = v76;
    v200 = v89;
    v201 = v90;
    v202 = 0;
    v158.size.height = v88;
    v214.origin.x = v88;
    v214.origin.y = v76;
    v214.size.width = v89;
    v214.size.height = v90;
    v91 = CGRectGetMinX(v214) - *(v48 + 64);
    v93 = v151;
    v92 = v152;
    v215.origin.x = v152;
    v215.origin.y = v151;
    v94 = v155;
    v215.size.width = v155;
    v95 = v153;
    v215.size.height = v153;
    v96 = v91 - CGRectGetWidth(v215);
    v216.origin.x = v92;
    v216.origin.y = v93;
    v216.size.width = v94;
    v216.size.height = v95;
    v97 = CGRectGetWidth(v216);
    v217.origin.x = v92;
    v98 = v89;
    v217.origin.y = v93;
    v217.size.width = v94;
    v217.size.height = v95;
    v99 = CGRectGetHeight(v217);
    v100 = UIEdgeInsetsInsetRect(v96, v170, v97, v99, v154, v169);
    v102 = v101;
    v104 = v103;
    v106 = v105;
    v203.origin.x = v100;
    v107 = v101;
    v157 = v103;
    v169 = v105;
  }

  else
  {
    p_y = &v199;
    p_size = &v200;
    p_height = &v201;
    v73 = &v202;
    v108 = v152;
    v109 = v153;
    v218.origin.x = v152;
    v218.origin.y = v58;
    v110 = v155;
    v218.size.width = v155;
    v218.size.height = v153;
    v170 = v70 - CGRectGetWidth(v218);
    v111 = *(v48 + 88) + *(v48 + 104);
    v219.origin.x = v108;
    v219.origin.y = v58;
    v219.size.width = v110;
    v219.size.height = v109;
    v112 = CGRectGetWidth(v219);
    v220.origin.x = v108;
    v220.origin.y = v58;
    v220.size.width = v110;
    v220.size.height = v109;
    v113 = CGRectGetHeight(v220);
    v221.origin.x = UIEdgeInsetsInsetRect(v170, v111, v112, v113, v154, v169);
    v114 = v221.size.width;
    v169 = v221.size.height;
    v203 = v221;
    v156 = v221.origin.y;
    v115 = v172;
    v116 = v70 - v172;
    v204 = 0;
    v117 = v221.origin.x;
    MaxY = CGRectGetMaxY(v221);
    v170 = *(v48 + 96);
    v157 = MaxY + v170;
    v119 = sub_220891F2C();
    [v119 ascender];
    v121 = v120;

    v122 = sub_220891F2C();
    [v122 capHeight];
    v124 = v123;

    v222.origin.y = v157 + v121 - v124;
    v193 = v116;
    y = v222.origin.y;
    v195 = v115;
    v222.size.height = v171;
    v196 = v171;
    v197 = 0;
    v173 = v116;
    v222.origin.x = v116;
    v161 = v222.origin.y;
    v222.size.width = v115;
    v125 = CGRectGetMinX(v222) - *(v48 + 72);
    v127 = v158.origin.x;
    v126 = v158.origin.y;
    v129 = v158.size.width;
    v128 = v158.size.height;
    v130 = v125 - CGRectGetWidth(v158);
    v223.origin.x = v117;
    v223.origin.y = v156;
    v157 = v114;
    v223.size.width = v114;
    v223.size.height = v169;
    v102 = v170 + CGRectGetMaxY(v223);
    v224.origin.x = v127;
    v224.origin.y = v126;
    v224.size.width = v129;
    v224.size.height = v128;
    v104 = CGRectGetWidth(v224);
    v225.origin.x = v127;
    v225.origin.y = v126;
    v225.size.width = v129;
    v225.size.height = v128;
    v106 = CGRectGetHeight(v225);
    v158.size.height = v130;
    v198 = v130;
    v100 = v117;
    v107 = v156;
    v170 = v102;
    v98 = v104;
    v90 = v106;
  }

  *p_y = v102;
  p_size->width = v104;
  *p_height = v106;
  *v73 = 0;
  Mutable = CGPathCreateMutable();
  v132 = v162;
  sub_22088528C();
  sub_2208851AC();
  (*(v163 + 8))(v132, v164);
  v205 = 0x3FF0000000000000;
  v206 = 0;
  v207 = 0;
  v208 = 0x3FF0000000000000;
  v209 = 0;
  v210 = 0;
  sub_220891BBC();
  v133 = v171;
  sub_220891BCC();
  v134 = v172;
  sub_220891BCC();
  sub_220891BCC();
  v135 = *(v48 + 88);
  v136 = 1.0 / *(v48 + 48);
  v226.origin.x = v100;
  v226.origin.y = v107;
  v226.size.width = v157;
  v226.size.height = v169;
  CGRectGetMaxY(v226);
  v227.origin.x = v158.size.height;
  v227.origin.y = v170;
  v227.size.width = v98;
  v227.size.height = v90;
  CGRectGetMaxY(v227);
  v228.origin.x = v173;
  v228.origin.y = v161;
  v228.size.width = v134;
  v228.size.height = v133;
  CGRectGetMaxY(v228);
  MEMORY[0x28223BE20](v137, v138);
  *(&v150 - 10) = v48;
  *(&v150 - 9) = v139;
  *(&v150 - 8) = &v203;
  *(&v150 - 7) = &v198;
  *(&v150 - 6) = &v193;
  *(&v150 - 5) = Mutable;
  v140 = v165;
  *(&v150 - 4) = v166;
  *(&v150 - 3) = v135;
  v148 = *&v140;
  v149 = v136;
  sub_22088C18C();

  v192 = v185;
  v189 = v179;
  v190 = v180;
  v141 = v182;
  v191 = v181;
  v186 = v175;
  v187 = v176;
  v142 = v178;
  v188 = v177;
  v143 = v184;
  v144 = v168;
  *(v168 + 128) = v183;
  *(v144 + 144) = v143;
  *(v144 + 160) = v192;
  v145 = v190;
  *(v144 + 64) = v189;
  *(v144 + 80) = v145;
  *(v144 + 96) = v191;
  *(v144 + 112) = v141;
  v146 = v187;
  *v144 = v186;
  *(v144 + 16) = v146;
  result = v188;
  *(v144 + 32) = v188;
  *(v144 + 48) = v142;
  return result;
}

uint64_t sub_2204F7F74@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088731C();
  result = sub_2208884CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_28128A5C8);
  result = sub_2208884DC();
  if (!v46)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220488310(0);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204888A4();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088D84C();
  result = sub_22088848C();
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v8 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_2812991D0);
  result = sub_2208884DC();
  if (!v44)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_281285100);
  result = sub_2208884DC();
  if (!v42)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v29 = v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22044D56C(0, &qword_28127E6D0);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v9 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &unk_281298340);
  result = sub_2208884DC();
  if (!v40)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281298AB0);
  result = sub_2208884DC();
  if (!v38)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299280);
  result = sub_2208884DC();
  if (!v36)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v28 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299220);
  result = sub_2208884DC();
  if (!v34)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v27 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281296A18);
  result = sub_2208884DC();
  if (v32)
  {
    v10 = __swift_mutable_project_boxed_opaque_existential_1(v41, v42);
    v26 = &v26;
    MEMORY[0x28223BE20](v10, v10);
    v12 = (&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v13 + 16))(v12);
    v14 = *v12;
    v15 = type metadata accessor for AnalyticsChannelDataFactory();
    v30[3] = v15;
    v30[4] = &off_28341D2B0;
    v30[0] = v14;
    v16 = type metadata accessor for ForYouFeedTracker();
    v17 = swift_allocObject();
    v18 = __swift_mutable_project_boxed_opaque_existential_1(v30, v15);
    MEMORY[0x28223BE20](v18, v18);
    v20 = (&v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v21 + 16))(v20);
    v22 = *v20;
    *(v17 + 19) = v15;
    *(v17 + 20) = &off_28341D2B0;
    *(v17 + 16) = v22;
    v23 = OBJC_IVAR____TtC8StocksUI17ForYouFeedTracker_onDeckViewAction;
    v24 = sub_22088916C();
    (*(*(v24 - 8) + 56))(&v17[v23], 1, 1, v24);
    *(v17 + 2) = v29;
    sub_220457328(&v45, (v17 + 24));
    *(v17 + 8) = v6;
    *(v17 + 9) = v7;
    *(v17 + 10) = v8;
    sub_220457328(&v43, (v17 + 88));
    *(v17 + 21) = v28;
    sub_220457328(&v39, (v17 + 176));
    sub_220457328(&v37, (v17 + 216));
    sub_220457328(&v35, (v17 + 256));
    sub_220457328(&v33, (v17 + 296));
    sub_220457328(&v31, &v17[OBJC_IVAR____TtC8StocksUI17ForYouFeedTracker_feedDismissingManager]);
    __swift_destroy_boxed_opaque_existential_1(v30);
    result = __swift_destroy_boxed_opaque_existential_1(v41);
    v25 = v27;
    v27[3] = v16;
    v25[4] = &off_28341F5D8;
    *v25 = v17;
    return result;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_2204F8628@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = type metadata accessor for AudioSessionManager();
  result = sub_2208884CC();
  if (result)
  {
    a3[3] = v5;
    a3[4] = a2;
    *a3 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2204F86B4(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X5>, double *a6@<X8>, double a7@<D0>, double a8@<D1>, double a9@<D2>, double a10@<D3>, double a11@<D4>)
{
  v76 = a8;
  v77 = a5;
  v75 = a1;
  v19 = sub_22088ABEC();
  v20 = *(v19 - 8);
  v22 = MEMORY[0x28223BE20](v19, v21);
  v24 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 32))
  {
    __break(1u);
    goto LABEL_8;
  }

  v25 = *(v20 + 104);
  v74 = *MEMORY[0x277D6D320];
  v25(v24, v22);
  sub_22088ABDC();
  v27 = v26;
  v72 = v29;
  v73 = v28;
  v71 = v30;
  v31 = *(v20 + 8);
  v31(v24, v19);
  if (*(a3 + 32))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v66 = v27;
  v67 = a9;
  v68 = a10;
  v69 = a11;
  v70 = a7;
  v32 = v74;
  (v25)(v24, v74, v19);
  sub_22088ABDC();
  v65 = v33;
  v64 = v34;
  v63 = v35;
  v62 = v36;
  v31(v24, v19);
  if (*(a4 + 32))
  {
LABEL_9:
    __break(1u);
    return;
  }

  v75 = *v75;
  (v25)(v24, v32, v19);
  sub_22088ABDC();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v31(v24, v19);
  (v25)(v24, *MEMORY[0x277D6D318], v19);
  sub_22088ABDC();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v31(v24, v19);
  *a6 = 0.0;
  a6[1] = 0.0;
  v53 = v70;
  *(a6 + 2) = v75;
  a6[3] = v53;
  v55 = v72;
  v54 = v73;
  *(a6 + 4) = v66;
  *(a6 + 5) = v54;
  v56 = v71;
  *(a6 + 6) = v55;
  *(a6 + 7) = v56;
  v57 = v64;
  *(a6 + 8) = v65;
  *(a6 + 9) = v57;
  v58 = v62;
  *(a6 + 10) = v63;
  *(a6 + 11) = v58;
  *(a6 + 12) = v38;
  *(a6 + 13) = v40;
  *(a6 + 14) = v42;
  *(a6 + 15) = v44;
  v59 = v77;
  *(a6 + 16) = v77;
  *(a6 + 17) = v46;
  *(a6 + 18) = v48;
  *(a6 + 19) = v50;
  *(a6 + 20) = v52;

  v60 = v59;
}

uint64_t sub_2204F8A08(void *a1)
{
  v2 = sub_22088519C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088702C();
  result = sub_22088848C();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v8 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088963C();
  result = sub_22088848C();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v9 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204536AC();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v10 = sub_220887BBC();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_281285100);
  result = sub_2208884DC();
  if (!v39)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v32 = v3;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2208880AC();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v11 = result;
  v31 = v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299280);
  result = sub_2208884DC();
  if (v37)
  {
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v38, v39);
    v30[1] = v30;
    MEMORY[0x28223BE20](v12, v12);
    v14 = (v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = *v14;
    v17 = type metadata accessor for AnalyticsChannelDataFactory();
    v35[3] = v17;
    v35[4] = &off_28341D2B0;
    v35[0] = v16;
    type metadata accessor for AudioSessionManager();
    v18 = swift_allocObject();
    v19 = __swift_mutable_project_boxed_opaque_existential_1(v35, v17);
    v30[0] = v30;
    MEMORY[0x28223BE20](v19, v19);
    v21 = (v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v22 + 16))(v21);
    v23 = *v21;
    v34[3] = v17;
    v34[4] = &off_28341D2B0;
    v34[0] = v23;
    v18[14] = 0;
    v18[15] = 0;
    v18[2] = v8;
    v18[3] = v9;
    v18[5] = 0;
    v18[6] = v10;
    sub_22046DA2C(v34, (v18 + 7));
    v18[12] = v11;
    sub_22046DA2C(v36, (v18 + 16));

    v24 = v9;

    v25 = sub_22088701C();
    v18[4] = v25;
    type metadata accessor for AudioSessionManager.Session();
    v26 = swift_allocObject();

    sub_22088518C();
    v27 = sub_22088517C();
    v29 = v28;
    (*(v32 + 8))(v6, v31);
    *(v26 + 16) = v27;
    *(v26 + 24) = v29;
    *(v26 + 48) = 1;
    *(v26 + 56) = 0;
    *(v26 + 64) = 0;
    *(v26 + 32) = v25;
    *(v26 + 40) = 0;
    v18[13] = v26;
    swift_allocObject();
    swift_weakInit();
    sub_22088869C();

    __swift_project_boxed_opaque_existential_1(v33, v33[3]);

    sub_2208882EC();

    __swift_destroy_boxed_opaque_existential_1(v36);
    __swift_destroy_boxed_opaque_existential_1(v34);
    __swift_destroy_boxed_opaque_existential_1(v33);
    __swift_destroy_boxed_opaque_existential_1(v35);
    __swift_destroy_boxed_opaque_existential_1(v38);
    return v18;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_2204F8FD4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2204F9060(void *a1)
{
  v2 = sub_220886E5C();
  v22 = *(v2 - 8);
  v23 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v24 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22088703C();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v25 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22088700C();
  MEMORY[0x28223BE20](v8, v9);
  v10 = sub_2208871BC();
  v21 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x277CEAD38];
  sub_2204F96B8(0, &qword_28127E168, MEMORY[0x277CEAD38], MEMORY[0x277D84560]);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_220899920;
  sub_220886FEC();
  sub_220886FFC();
  v28[0] = v15;
  sub_2204FA080(&qword_281298C20, 255, MEMORY[0x277CEAD38]);
  sub_2204F96B8(0, &qword_28127EAF8, v14, MEMORY[0x277D83940]);
  sub_2204FA3C4(&qword_28127EAF0, &qword_28127EAF8, v14);
  sub_2208923FC();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281298318);
  result = sub_2208884DC();
  if (!v29)
  {
    __break(1u);
    goto LABEL_6;
  }

  v20 = v10;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  sub_220889DBC();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &unk_281298C10);
  result = sub_2208884DC();
  if (!v27)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v17 = MEMORY[0x277CEAC90];
  sub_2204F96B8(0, &qword_28127E178, MEMORY[0x277CEAC90], MEMORY[0x277D84560]);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_22089B140;
  sub_220886E4C();
  sub_220886E2C();
  sub_220886E3C();
  v26 = v18;
  sub_2204FA080(&qword_281298C60, 255, MEMORY[0x277CEAC90]);
  sub_2204F96B8(0, &qword_28127EB18, v17, MEMORY[0x277D83940]);
  sub_2204FA3C4(qword_28127EB00, &qword_28127EB18, v17);
  sub_2208923FC();
  sub_220886FAC();
  swift_allocObject();
  sub_220886F9C();
  sub_2208871AC();
  __swift_destroy_boxed_opaque_existential_1(v28);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220886E1C();
  result = sub_22088848C();
  if (result)
  {
    v19 = sub_220886DFC();

    (*(v21 + 8))(v13, v20);
    return v19;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_2204F9658(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2204F96B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void (**sub_2204F971C(void (*a1)(char *, char *, uint64_t), void (**a2)(char *, uint64_t), uint64_t a3))(char *, uint64_t)
{
  v60 = a2;
  v61 = a3;
  v62 = a1;
  v67 = type metadata accessor for ForYouFeedLayoutModel();
  MEMORY[0x28223BE20](v67, v4);
  v66 = v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_22088FD8C();
  v71 = *(v65 - 8);
  MEMORY[0x28223BE20](v65, v6);
  v64 = v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204F63C4();
  v63 = v8;
  v68 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v11 = v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = v54 - v14;
  v16 = MEMORY[0x277D31F38];
  sub_2204F0A94(0, &qword_281296BC0, MEMORY[0x277D31F38], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v20 = v54 - v19;
  v21 = sub_22088F58C();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v23);
  v25 = v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v27);
  v29 = v54 - v28;
  sub_2204FA000(v62, v20, &qword_281296BC0, v16);
  if ((*(v22 + 48))(v20, 1, v21) != 1)
  {
    (*(v22 + 32))(v29, v20, v21);
    v31 = sub_22088F55C();
    v32 = *(v31 + 16);
    if (v32)
    {
      v55 = v29;
      v56 = v22;
      v57 = v21;
      v58 = v3;
      *&v69[0] = MEMORY[0x277D84F90];
      sub_220505460(0, v32, 0);
      v33 = *(v71 + 16);
      v34 = (*(v71 + 80) + 32) & ~*(v71 + 80);
      v54[1] = v31;
      v35 = v31 + v34;
      v61 = *(v71 + 72);
      v62 = v33;
      v71 += 16;
      v36 = v15;
      v30 = *&v69[0];
      v59 = v68 + 32;
      v60 = (v71 - 8);
      do
      {
        v38 = v64;
        v37 = v65;
        v39 = v62;
        v62(v64, v35, v65);
        v39(v66, v38, v37);
        swift_storeEnumTagMultiPayload();
        sub_22044E364(qword_28128DE08, type metadata accessor for ForYouFeedLayoutModel);
        sub_22088BC2C();
        (*v60)(v38, v37);
        *&v69[0] = v30;
        v41 = v30[2];
        v40 = v30[3];
        if (v41 >= v40 >> 1)
        {
          sub_220505460(v40 > 1, v41 + 1, 1);
          v30 = *&v69[0];
        }

        v30[2] = (v41 + 1);
        (*(v68 + 32))(v30 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v41, v36, v63);
        v35 += v61;
        --v32;
      }

      while (v32);
      (*(v56 + 8))(v55, v57);
      goto LABEL_17;
    }

    (*(v22 + 8))(v29, v21);
    return MEMORY[0x277D84F90];
  }

  sub_2204C5F44(v20, &qword_281296BC0, MEMORY[0x277D31F38]);
  sub_2204FA2D0();
  sub_2204FA480();
  memset(v69, 0, sizeof(v69));
  v70 = 0;
  v30 = v60;
  sub_22088F5BC();
  sub_220504D6C(v69);
  if (v3)
  {
    return v30;
  }

  v42 = sub_22088F55C();
  (*(v22 + 8))(v25, v21);
  v43 = *(v42 + 16);
  if (!v43)
  {

    return MEMORY[0x277D84F90];
  }

  v58 = 0;
  *&v69[0] = MEMORY[0x277D84F90];
  sub_220505460(0, v43, 0);
  v44 = *(v71 + 16);
  v45 = (*(v71 + 80) + 32) & ~*(v71 + 80);
  v57 = v42;
  v46 = v42 + v45;
  v61 = *(v71 + 72);
  v62 = v44;
  v71 += 16;
  v30 = *&v69[0];
  v59 = v68 + 32;
  v60 = (v71 - 8);
  v47 = v44;
  do
  {
    v49 = v64;
    v48 = v65;
    v47(v64, v46, v65);
    v50 = v11;
    v47(v66, v49, v48);
    swift_storeEnumTagMultiPayload();
    sub_22044E364(qword_28128DE08, type metadata accessor for ForYouFeedLayoutModel);
    sub_22088BC2C();
    (*v60)(v49, v48);
    *&v69[0] = v30;
    v52 = v30[2];
    v51 = v30[3];
    if (v52 >= v51 >> 1)
    {
      sub_220505460(v51 > 1, v52 + 1, 1);
      v30 = *&v69[0];
    }

    v30[2] = (v52 + 1);
    (*(v68 + 32))(v30 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v52, v50, v63);
    v46 += v61;
    --v43;
    v11 = v50;
  }

  while (v43);
LABEL_17:

  return v30;
}

uint64_t sub_2204F9E98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(*v3 + 40);
  v8 = *(*v3 + 48);
  v9 = __swift_project_boxed_opaque_existential_1((*v3 + 16), v7);
  v10 = *(v7 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v14 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = (*(*(v8 + 8) + 8))(a1, v7, v13);
  v17 = MEMORY[0x28223BE20](v15, v16);
  (*(v10 + 16))(&v20 - v14, &v20 - v14, v7, v17);
  v18 = sub_220476DF0(&v20 - v14, a2, v7, v8);
  result = (*(v10 + 8))(&v20 - v14, v7);
  *a3 = v18;
  return result;
}

uint64_t sub_2204FA000(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2204F0A94(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2204FA080(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2204FA0C8(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8StocksUI20TickerViewController_styler;
  swift_beginAccess();
  sub_22046DA2C(v2 + v4, v21);
  v5 = v22;
  v6 = v23;
  __swift_project_boxed_opaque_existential_1(v21, v22);
  v7 = *(v6 + 8);
  v8 = *(v7 + 8);
  v19 = v5;
  v20 = v6;
  __swift_allocate_boxed_opaque_existential_1(&v18);
  v8(a1, v5, v7);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v2 + v4);
  sub_220457328(&v18, v2 + v4);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(v21);
  sub_22046DA2C(v2 + v4, v21);
  v9 = __swift_project_boxed_opaque_existential_1(v21, v22);
  v10 = [v2 view];
  if (v10)
  {
    v11 = v10;
    v12 = *v9;
    v14 = *(*v9 + 40);
    v13 = *(*v9 + 48);
    __swift_project_boxed_opaque_existential_1((v12 + 16), v14);
    v15 = (*(*(v13 + 16) + 72))(v14);
    [v11 setBackgroundColor_];

    __swift_destroy_boxed_opaque_existential_1(v21);
    sub_22088C71C();
    v16 = sub_22088BFCC();

    v17 = [objc_opt_self() clearColor];
    [v16 setBackgroundColor_];

    [v16 setShowsHorizontalScrollIndicator_];
  }

  else
  {
    __break(1u);
  }
}

void sub_2204FA2D0()
{
  if (!qword_281297E60)
  {
    type metadata accessor for ForYouFeedSectionDescriptor();
    type metadata accessor for ForYouFeedModel();
    sub_2204BC2F4(&unk_281288490, 255, type metadata accessor for ForYouFeedSectionDescriptor);
    sub_2204BC2F4(&unk_281293320, 255, type metadata accessor for ForYouFeedModel);
    v0 = sub_22088B39C();
    if (!v1)
    {
      atomic_store(v0, &qword_281297E60);
    }
  }
}

uint64_t sub_2204FA3C4(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_2204F96B8(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2204FA428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D5818](a1, a2, ObjectType, a4);
}

unint64_t sub_2204FA480()
{
  result = qword_281297E88;
  if (!qword_281297E88)
  {
    sub_2204FA2D0();
    sub_22044E364(qword_2812884A0, type metadata accessor for ForYouFeedSectionDescriptor);
    sub_22044E364(&qword_281293318, type metadata accessor for ForYouFeedModel);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281297E88);
  }

  return result;
}

uint64_t sub_2204FA5F0()
{
  v0 = sub_22088716C();
  MEMORY[0x28223BE20](v0 - 8, v1);
  sub_220886E1C();
  sub_22088705C();
  sub_22088704C();
  sub_220886F5C();
  sub_220886F4C();
  sub_22088715C();
  return sub_220886E0C();
}

uint64_t sub_2204FA6F0(void *a1)
{
  v2 = sub_220889A1C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v14[0] = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204F96B8(0, &unk_281298490, MEMORY[0x277D686B8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088702C();
  result = sub_22088848C();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299280);
  result = sub_2208884DC();
  if (!v14[14])
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204FAB9C();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_22088961C();
  sub_2208884DC();
  result = (*(*(v11 - 8) + 48))(v9, 1, v11);
  if (result == 1)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2208871FC();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  (*(v3 + 104))(v14[0], *MEMORY[0x277D68960], v2);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_2812991A0);
  result = sub_2208884DC();
  if (!v14[9])
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &unk_2812985A8);
  result = sub_2208884DC();
  if (!v14[4])
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22044869C(0, &qword_28127E5E0);
  sub_22088F1BC();
  v12 = sub_22088848C();

  if (v12)
  {
    v13 = objc_allocWithZone(sub_22088963C());
    return sub_22088962C();
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_2204FAB20@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = a1();

    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2204FAB9C()
{
  result = qword_28127E870;
  if (!qword_28127E870)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28127E870);
  }

  return result;
}

id sub_2204FABE8()
{
  v1 = *(v0 + 192);
  if (v1)
  {
    v2 = *(v0 + 192);
  }

  else
  {
    v3 = sub_2204FB2C0(v0);
    v4 = *(v0 + 192);
    *(v0 + 192) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_2204FAC44@<X0>(uint64_t *a1@<X8>)
{
  v57 = a1;
  v1 = sub_22088F23C();
  v55 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CuratedForYouFeedGroup();
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220453CD0(0, &qword_281296C60, MEMORY[0x277D31C50], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v54 - v15;
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v54 - v19;
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v54 - v23;
  v25 = type metadata accessor for ForYouFeedSectionDescriptor();
  MEMORY[0x28223BE20](v25, v26);
  v28 = &v54 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204FB25C(v56, v28);
  result = swift_getEnumCaseMultiPayload();
  if (result > 2)
  {
    if ((result - 4) >= 2)
    {
      v41 = *(v55 + 32);
      v41(v4, v28, v1);
      v42 = MEMORY[0x277D31BA0];
      v43 = v57;
      v57[3] = v1;
      v43[4] = v42;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v43);
      return (v41)(boxed_opaque_existential_1, v4, v1);
    }

    else
    {
      v36 = v57;
      v57[4] = 0;
      *v36 = 0u;
      *(v36 + 1) = 0u;
    }
  }

  else if (result)
  {
    if (result == 1)
    {
      sub_22045849C();
      v31 = v30;
      sub_2204FBAC4(&v28[*(v30 + 64)], v16);
      sub_2204FBC98(v16, v12, &qword_281296C60, MEMORY[0x277D31C50]);
      v32 = sub_22088F39C();
      v33 = *(v32 - 8);
      if ((*(v33 + 48))(v12, 1, v32) == 1)
      {
        v34 = MEMORY[0x277D31C50];
        sub_2204B3C8C(v16, &qword_281296C60, MEMORY[0x277D31C50]);
        sub_2204B3C8C(v12, &qword_281296C60, v34);
        v35 = v57;
        *v57 = 0u;
        *(v35 + 1) = 0u;
        v35[4] = 0;
      }

      else
      {
        v50 = MEMORY[0x277D31C48];
        v51 = v57;
        v57[3] = v32;
        v51[4] = v50;
        v52 = __swift_allocate_boxed_opaque_existential_1(v51);
        (*(v33 + 32))(v52, v12, v32);
        sub_2204B3C8C(v16, &qword_281296C60, MEMORY[0x277D31C50]);
      }

      sub_2204FC284(&v28[*(v31 + 48)], type metadata accessor for StockViewModel);
      v53 = sub_22088685C();
      return (*(*(v53 - 8) + 8))(v28, v53);
    }

    else
    {
      sub_220523070(v28, v8, type metadata accessor for CuratedForYouFeedGroup);
      v45 = v57;
      v57[3] = v5;
      v45[4] = sub_220525D08(qword_28128CE08, type metadata accessor for CuratedForYouFeedGroup);
      v46 = __swift_allocate_boxed_opaque_existential_1(v45);
      return sub_220523070(v8, v46, type metadata accessor for CuratedForYouFeedGroup);
    }
  }

  else
  {
    sub_2204FBAC4(v28, v24);
    sub_2204FBC98(v24, v20, &qword_281296C60, MEMORY[0x277D31C50]);
    v37 = sub_22088F39C();
    v38 = *(v37 - 8);
    if ((*(v38 + 48))(v20, 1, v37) == 1)
    {
      v39 = MEMORY[0x277D31C50];
      sub_2204B3C8C(v24, &qword_281296C60, MEMORY[0x277D31C50]);
      result = sub_2204B3C8C(v20, &qword_281296C60, v39);
      v40 = v57;
      *v57 = 0u;
      *(v40 + 1) = 0u;
      v40[4] = 0;
    }

    else
    {
      v47 = MEMORY[0x277D31C48];
      v48 = v57;
      v57[3] = v37;
      v48[4] = v47;
      v49 = __swift_allocate_boxed_opaque_existential_1(v48);
      (*(v38 + 32))(v49, v20, v37);
      return sub_2204B3C8C(v24, &qword_281296C60, MEMORY[0x277D31C50]);
    }
  }

  return result;
}

uint64_t sub_2204FB25C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ForYouFeedSectionDescriptor();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2204FB2C0(uint64_t a1)
{
  v2 = sub_22088909C();
  v3 = *(v2 - 8);
  v31 = v2;
  v32 = v3;
  MEMORY[0x28223BE20](v2, v4);
  v30 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_220889FFC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_220889FEC();
  v29 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22088A07C();
  v16 = *(v15 - 8);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 104))(v20, *MEMORY[0x277D68F78], v15, v18);
  v21 = sub_22088721C();
  (*(v16 + 8))(v20, v15);
  v22 = *MEMORY[0x277D68EE8];
  v23 = *(v7 + 104);
  v23(v10, v22, v6);
  sub_220889FCC();
  sub_22048B490(&qword_2812982D8, 255, MEMORY[0x277D68ED8]);
  sub_2208872CC();
  (*(v29 + 8))(v14, v11);
  v23(v10, v22, v6);
  v24 = v30;
  sub_22088908C();
  sub_22048B490(&qword_281298590, 255, MEMORY[0x277D68210]);
  v25 = v31;
  sub_2208872CC();
  (*(v32 + 8))(v24, v25);
  __swift_project_boxed_opaque_existential_1((a1 + 16), *(a1 + 40));
  type metadata accessor for ForYouFeedViewController();
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  v26 = swift_allocObject();
  *(v26 + 16) = a1;
  *(v26 + 24) = v21;

  v27 = sub_2208884AC();

  result = swift_unownedRelease();
  if (v27)
  {

    return v27;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2204FB760()
{
  sub_2208871FC();
  v0 = [objc_opt_self() mainBundle];
  return sub_2208871EC();
}

uint64_t sub_2204FB7AC(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_unownedRetainStrong();
  __swift_project_boxed_opaque_existential_1((a2 + 64), *(a2 + 88));
  sub_22088ED6C();
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  if (qword_281296D98 != -1)
  {
    swift_once();
  }

  v4 = sub_22088EBFC();
  __swift_project_value_buffer(v4, qword_2812B6BB8);
  sub_22048B490(&unk_281296D88, 255, MEMORY[0x277D2D120]);
  sub_22088ED7C();

  sub_2204446D4(0, &qword_281296D20);
  sub_22088837C();
  __swift_destroy_boxed_opaque_existential_1(v11);
  swift_unownedRetainStrong();
  sub_22046DA2C(a2 + 16, v8);

  __swift_project_boxed_opaque_existential_1(v8, v9);
  sub_2204446D4(0, &qword_281294338);
  result = sub_2208884DC();
  if (v7)
  {
    sub_220457328(&v6, v11);
    __swift_destroy_boxed_opaque_existential_1(v8);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v9 = &type metadata for DetailBackgroundStyler;
    v10 = &off_283412918;
    v8[0] = swift_allocObject();
    sub_2204FC3A4(v11, v8[0] + 16);
    sub_2204446D4(0, qword_28128F330);
    sub_22088837C();
    __swift_destroy_boxed_opaque_existential_1(v8);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_22088731C();
    sub_22088836C();
    return sub_2204FDBA8(v11);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2204FBA8C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2204FBAC4(uint64_t a1, uint64_t a2)
{
  sub_220453C6C(0, &qword_281296C60, MEMORY[0x277D31C50], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2204FBB58(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220452F80();
  result = sub_2208884CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for StocksAudioPlaybackQueue();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for AudioListeningProgressAdapter();
  result = sub_2208884CC();
  if (result)
  {
    sub_2204536AC();
    swift_allocObject();
    return sub_220887C2C();
  }

LABEL_7:
  __break(1u);
  return result;
}

id sub_2204FBC60()
{
  sub_220452F80();
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_2204FBC98(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_220453CD0(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2204FBD18(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_220453D98(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2204FBDB4()
{
  v0 = sub_22088B8CC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for StockViewModel();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TickerLayoutModel();
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2205045B0();
  sub_22088BC3C();
  sub_22048452C();
  v14 = &v12[*(v13 + 48)];
  v15 = *(v14 + 9);
  v23[8] = *(v14 + 8);
  v23[9] = v15;
  v24 = *(v14 + 20);
  v16 = *(v14 + 5);
  v23[4] = *(v14 + 4);
  v23[5] = v16;
  v17 = *(v14 + 7);
  v23[6] = *(v14 + 6);
  v23[7] = v17;
  v18 = *(v14 + 1);
  v23[0] = *v14;
  v23[1] = v18;
  v19 = *(v14 + 3);
  v23[2] = *(v14 + 2);
  v23[3] = v19;
  sub_22050381C(v12, v8);
  sub_2204E4FFC();
  v20 = sub_220891C1C();
  (*(v1 + 104))(v4, *MEMORY[0x277D6D920], v0);
  sub_22088B9DC();
  v21 = sub_22088B9EC();
  sub_2204FC700(v8, v23, v21);
  sub_2205022E8(v23);

  sub_2204EFAD0(v8);
  return v20;
}

void *sub_2204FC004(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_22088698C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_2208875EC();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 48);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_2204FC128()
{
  v0 = sub_22088EBFC();
  __swift_allocate_value_buffer(v0, qword_2812B6BB8);
  __swift_project_value_buffer(v0, qword_2812B6BB8);
  return sub_22088EBEC();
}

uint64_t sub_2204FC1C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2204FC224(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2204FC284(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2204FC2E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2204FC344(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2204FC400()
{
  sub_2204FDBFC(0);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for StocksAudioPlaybackQueue();
  v4 = swift_allocObject();
  v5 = type metadata accessor for StocksAudioTrack();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = MEMORY[0x277D6CB60];
  sub_220452E30(0, &unk_281298928, sub_2204FDBFC, MEMORY[0x277D6CB60]);
  swift_allocObject();
  *(v4 + 16) = sub_22088866C();
  v8[1] = MEMORY[0x277D84F90];
  sub_220452E30(0, &qword_281298900, sub_2204FEB7C, v6);
  swift_allocObject();
  *(v4 + 24) = sub_22088866C();
  return v4;
}

void sub_2204FC578(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for StocksAudioTrack();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_2204FC5D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2204FC63C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2204FC6A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for StocksAudioTrack();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_2204FC700(uint64_t a1, double *a2, char *a3)
{
  v7 = sub_220889BAC();
  v195 = *(v7 - 8);
  v196 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v193 = &v180 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v194 = &v180 - v12;
  v13 = sub_2208910DC();
  v183 = *(v13 - 8);
  v184 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v182 = &v180 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2208910FC();
  v185 = *(v16 - 8);
  v186 = v16;
  MEMORY[0x28223BE20](v16, v17);
  v181 = &v180 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22045443C(0, qword_28128AAE8, type metadata accessor for StockSparklineViewModel);
  MEMORY[0x28223BE20](v19 - 8, v20);
  v212 = &v180 - v21;
  v22 = type metadata accessor for StockSparklineViewModel(0);
  v210 = *(v22 - 8);
  v211 = v22;
  MEMORY[0x28223BE20](v22, v23);
  v201 = &v180 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v219 = sub_220885D4C();
  v221 = *(v219 - 8);
  MEMORY[0x28223BE20](v219, v25);
  v200 = &v180 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v28);
  v204 = &v180 - v29;
  v30 = sub_22088699C();
  v218 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v31);
  v33 = &v180 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x277D697F8];
  sub_22045443C(0, &qword_2812990C0, MEMORY[0x277D697F8]);
  MEMORY[0x28223BE20](v35 - 8, v36);
  v192 = &v180 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38, v39);
  v41 = &v180 - v40;
  v42 = a2[4];
  v43 = a2[5];
  v44 = a2[6];
  v45 = a2[7];
  v215 = *&a3[OBJC_IVAR____TtC8StocksUI10TickerView_symbolLabel];
  [v215 setFrame_];
  v46 = a2[8];
  v47 = a2[9];
  v48 = a2[10];
  v49 = a2[11];
  v209 = *&a3[OBJC_IVAR____TtC8StocksUI10TickerView_priceLabel];
  [v209 setFrame_];
  v220 = a3;
  v50 = a2[12];
  v51 = a2[13];
  v52 = a2[14];
  v53 = a2[15];
  v208 = *&a3[OBJC_IVAR____TtC8StocksUI10TickerView_priceChangeLabel];
  [v208 setFrame_];
  v54 = type metadata accessor for StockViewModel();
  v55 = *(v54 + 20);
  v222 = a1;
  v190 = v55;
  sub_2204B2690(a1 + v55, v41, &qword_2812990C0, v34);
  v56 = sub_22088676C();
  v57 = *(v56 - 8);
  v188 = *(v57 + 48);
  v189 = v57 + 48;
  v58 = v188(v41, 1, v56);
  v180 = v57;
  if (v58 == 1)
  {
    sub_2204B37D0(v41, &qword_2812990C0, MEMORY[0x277D697F8]);
    LODWORD(v59) = 0;
    v214 = 1;
  }

  else
  {
    v59 = COERCE_DOUBLE(sub_22088666C());
    v214 = v60;
    (*(v57 + 8))(v41, v56);
    LODWORD(v59) = v59 < 0.0;
  }

  v61 = v222 + *(v54 + 28);
  sub_220886BCC();
  sub_220886BAC();
  if (qword_281298FC0 != -1)
  {
    swift_once();
  }

  sub_220886B9C();

  v62 = *v61;
  v202 = *(v61 + 8);
  v191 = v56;
  v205 = v61;
  v187 = *&v62;
  if (v202)
  {
    goto LABEL_19;
  }

  v3 = *&v62;
  if ((v223[0] & 1) == 0)
  {
    goto LABEL_15;
  }

  v63 = type metadata accessor for PriceViewModel();
  v64 = v218;
  (*(v218 + 16))(v33, v61 + *(v63 + 40), v30);
  v65 = (*(v64 + 88))(v33, v30);
  v66 = 2;
  if (v65 != *MEMORY[0x277D69898] && v65 != *MEMORY[0x277D698A0] && v65 != *MEMORY[0x277D69870] && v65 != *MEMORY[0x277D69888] && v65 != *MEMORY[0x277D69878] && v65 != *MEMORY[0x277D69890])
  {
    if (v65 == *MEMORY[0x277D69880])
    {
LABEL_15:
      v66 = 0;
      goto LABEL_16;
    }

    if (v65 != *MEMORY[0x277D69868])
    {
      (*(v64 + 8))(v33, v30);
    }

    v66 = 2;
  }

LABEL_16:
  if (qword_281294078 != -1)
  {
    goto LABEL_94;
  }

  while (1)
  {
    v67 = sub_2204BD7B8(*(v61 + 48), *(v61 + 56), 5, 1, v66, v3);
    if (v68)
    {
      v69 = v67;
      v70 = v68;
    }

    else
    {
LABEL_19:
      v69 = *(v61 + 64);
      v70 = *(v61 + 72);
    }

    if (v214)
    {
      v71 = 2;
    }

    else
    {
      v71 = LODWORD(v59);
    }

    v213 = v71;
    v72 = v217;
    swift_beginAccess();
    sub_22046DA2C((v72 + 2), v223);
    __swift_project_boxed_opaque_existential_1(v223, v224);
    v73 = v222;
    v74 = sub_22088684C();
    v216 = COERCE_DOUBLE(sub_220500610(v74, v75));

    __swift_destroy_boxed_opaque_existential_1(v223);
    __swift_project_boxed_opaque_existential_1(v72 + 2, v72[5]);
    v206 = v70;
    v207 = v69;
    v76 = sub_220500958(v69, v70);
    sub_22046DA2C((v72 + 2), v223);
    v203 = __swift_project_boxed_opaque_existential_1(v223, v224);
    v77 = v54;
    v78 = v221;
    v80 = v221 + 16;
    v79 = *(v221 + 16);
    v218 = *(v54 + 32);
    v81 = v204;
    v82 = v219;
    v198 = v79;
    v79(v204, v73 + v218, v219);
    v83 = *(v78 + 88);
    v84 = v83(v81, v82);
    LODWORD(v81) = *MEMORY[0x277D69480];
    v221 = v78 + 88;
    v197 = v81;
    if (v84 != v81)
    {
      v85 = v205;
      if (v84 == *MEMORY[0x277D69468])
      {
        if ((v202 & 1) == 0 && (*(v205 + 24) & 1) == 0)
        {
          v89 = *(v205 + 16);
          v90 = v187 - v89;
          v91 = v89 / (v187 - v89);
          if (v90 <= 0.0)
          {
            v3 = 0.0;
          }

          else
          {
            v3 = v91;
          }

          if (qword_27CF55AB8 == -1)
          {
            goto LABEL_45;
          }

          goto LABEL_95;
        }
      }

      else
      {
        if (v84 != *MEMORY[0x277D69478])
        {
          goto LABEL_96;
        }

        type metadata accessor for PriceViewModel();
        if ((sub_2208857CC() & 1) == 0)
        {
          v87 = sub_220691100(0);
          goto LABEL_49;
        }

        if ((v202 & 1) == 0 && (*(v85 + 24) & 1) == 0)
        {
          v92 = *(v85 + 16);
          v93 = v187 - v92;
          v94 = v92 / (v187 - v92);
          if (v93 <= 0.0)
          {
            v3 = 0.0;
          }

          else
          {
            v3 = v94;
          }

          if (qword_27CF55AB8 == -1)
          {
LABEL_45:
            v95 = qword_27CF6D008;
            v96 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
            v97 = [v95 stringFromNumber_];

            if (v97)
            {
              v98 = sub_22089136C();
              v100 = v99;

              goto LABEL_50;
            }

            goto LABEL_47;
          }

LABEL_95:
          swift_once();
          goto LABEL_45;
        }
      }

LABEL_47:
      v98 = *(v85 + 64);
      v100 = *(v85 + 72);

      goto LABEL_50;
    }

    v85 = v205;
    if (*(v205 + 24))
    {
      goto LABEL_47;
    }

    v86 = v187 >= 5.0;
    if (v187 == 0.0)
    {
      v86 = 1;
    }

    v87 = sub_2204DBC04(v86 & ~v202, *(v205 + 16));
    if (!v88)
    {
      goto LABEL_47;
    }

LABEL_49:
    v98 = v87;
    v100 = v88;
LABEL_50:
    v204 = v83;
    v101 = sub_220500BCC(v98, v100, v213);

    __swift_destroy_boxed_opaque_existential_1(v223);
    v59 = v216;
    [v215 setAttributedText_];
    v102 = v209;
    v209 = v76;
    [v102 setAttributedText_];
    [v208 setAttributedText_];
    v103 = v220;
    v104 = a2[16];
    v105 = a2[17];
    v106 = a2[18];
    v107 = a2[19];
    v215 = *&v220[OBJC_IVAR____TtC8StocksUI10TickerView_sparklineView];
    [v215 setFrame_];
    v108 = v212;
    sub_2204B2690(v222 + *(v77 + 24), v212, qword_28128AAE8, type metadata accessor for StockSparklineViewModel);
    v109 = (*(v210 + 48))(v108, 1, v211);
    v199 = v80;
    if (v109 == 1)
    {
      sub_2204B37D0(v108, qword_28128AAE8, type metadata accessor for StockSparklineViewModel);
    }

    else
    {
      v110 = v201;
      sub_2204C31E8(v108, v201);
      v111 = *(a2 + 20);
      if (v111 != 1)
      {
        __swift_project_boxed_opaque_existential_1(v217 + 7, v217[10]);
        (*(v183 + 104))(v182, *MEMORY[0x277D6C788], v184);
        sub_22050183C(a2, v223);
        v112 = v181;
        sub_2208910EC();
        sub_2204D9CA0(v110, v215, v111, v112);
        sub_2205022E8(a2);
        v113 = v112;
        v59 = v216;
        (*(v185 + 8))(v113, v186);
      }

      sub_2204DE244(v110);
    }

    v114 = v222;
    sub_2208867BC();
    v115 = sub_22089132C();

    [v103 setAccessibilityLabel_];

    v116 = sub_2204DAE00(v114 + v218);
    v118 = v117;
    sub_2205023E8();
    v119 = swift_allocObject();
    *(v119 + 16) = xmmword_220899920;
    v120 = v206;
    *(v119 + 32) = v207;
    *(v119 + 40) = v120;
    *(v119 + 48) = v116;
    *(v119 + 56) = v118;
    sub_22088AD1C();
    v122 = v121;

    if (v122)
    {
      v123 = sub_22089132C();
    }

    else
    {
      v123 = 0;
    }

    [v103 setAccessibilityValue_];

    sub_2204D0528(0, &qword_28127DE50, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
    inited = swift_initStackObject();
    *(inited + 32) = v59;
    v61 = inited + 32;
    *(inited + 16) = xmmword_22089E460;
    v125 = v209;
    *(inited + 40) = v209;
    *(inited + 48) = v101;
    v223[0] = MEMORY[0x277D84F90];
    v126 = *&v59;
    a2 = v125;
    v212 = v101;
    sub_22048EE54(0, 3, 0);
    v54 = v223[0];
    v127 = inited & 0xC000000000000001;
    v216 = *&a2;
    v217 = v126;
    if ((inited & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
    {
      v128 = *v61;
      goto LABEL_61;
    }

    __break(1u);
LABEL_94:
    v179 = v66;
    swift_once();
    v66 = v179;
  }

  v128 = MEMORY[0x223D8A700](0, inited);
LABEL_61:
  v129 = v128;
  v130 = [v128 string];
  v131 = sub_22089136C();
  v133 = v132;

  v135 = *(v54 + 16);
  v134 = *(v54 + 24);
  if (v135 >= v134 >> 1)
  {
    sub_22048EE54((v134 > 1), v135 + 1, 1);
    v54 = v223[0];
  }

  *(v54 + 16) = v135 + 1;
  v136 = v54 + 16 * v135;
  *(v136 + 32) = v131;
  *(v136 + 40) = v133;
  if (v127)
  {
    v137 = MEMORY[0x223D8A700](1, inited);
  }

  else
  {
    v137 = *(inited + 40);
  }

  v138 = v137;
  v139 = [v137 string];
  v140 = sub_22089136C();
  v142 = v141;

  v223[0] = v54;
  v144 = *(v54 + 16);
  v143 = *(v54 + 24);
  if (v144 >= v143 >> 1)
  {
    sub_22048EE54((v143 > 1), v144 + 1, 1);
    v54 = v223[0];
  }

  *(v54 + 16) = v144 + 1;
  v145 = v54 + 16 * v144;
  *(v145 + 32) = v140;
  *(v145 + 40) = v142;
  if (v127)
  {
    v146 = MEMORY[0x223D8A700](2, inited);
  }

  else
  {
    v146 = *(inited + 48);
  }

  v147 = v146;
  v148 = [v146 string];
  v149 = sub_22089136C();
  v151 = v150;

  v223[0] = v54;
  v153 = *(v54 + 16);
  v152 = *(v54 + 24);
  if (v153 >= v152 >> 1)
  {
    sub_22048EE54((v152 > 1), v153 + 1, 1);
    v54 = v223[0];
  }

  *(v54 + 16) = v153 + 1;
  v154 = v54 + 16 * v153;
  *(v154 + 32) = v149;
  *(v154 + 40) = v151;
  swift_setDeallocating();
  swift_arrayDestroy();
  v223[0] = v54;
  sub_2204D0528(0, &qword_28127E9C0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_22050279C();
  sub_2208912CC();

  v155 = sub_22089132C();

  v156 = v220;
  [v220 setLargeContentTitle_];

  v157 = *&v215[OBJC_IVAR____TtC8StocksUI18StockSparklineView_sparklineView];
  v158 = sub_220890CCC();

  v159 = [v158 image];
  [v156 setLargeContentImage_];

  ShouldDifferentiateWithoutColor = UIAccessibilityShouldDifferentiateWithoutColor();
  if (!ShouldDifferentiateWithoutColor)
  {
    goto LABEL_88;
  }

  v162 = v219;
  v163 = v200;
  v198(v200, v222 + v218, v219);
  v164 = (v204)(v163, v162);
  if (v164 == v197)
  {
    v165 = MEMORY[0x277D68AE0];
    v167 = v195;
    v166 = v196;
    v169 = v193;
    v168 = v194;
LABEL_80:
    v170 = MEMORY[0x277D68AE8];
    v171 = *(v167 + 104);
    v171(v168, *v165, v166);
    v171(v169, *v170, v166);
    sub_2204DF8D8(&qword_281298378, 255, MEMORY[0x277D68AF0]);
    sub_22089167C();
    sub_22089167C();
    if (v223[0] == v225 && v223[1] == v226)
    {
      v172 = *(v167 + 8);
      v172(v169, v166);
      v172(v168, v166);

LABEL_84:
      v175 = v192;
      sub_2204B2690(v222 + v190, v192, &qword_2812990C0, MEMORY[0x277D697F8]);
      v176 = v191;
      if (v188(v175, 1, v191) == 1)
      {
        ShouldDifferentiateWithoutColor = sub_2204B37D0(v175, &qword_2812990C0, MEMORY[0x277D697F8]);
      }

      else
      {
        sub_22088671C();
        v178 = v177;
        ShouldDifferentiateWithoutColor = (*(v180 + 8))(v175, v176);
        if (((v178 | v214) & 1) == 0)
        {
          sub_22057B91C(v156, v213 & 1);
        }
      }
    }

    else
    {
      v173 = sub_2208928BC();
      v174 = *(v167 + 8);
      v174(v169, v166);
      v174(v168, v166);

      if (v173)
      {
        goto LABEL_84;
      }
    }

LABEL_88:
    MEMORY[0x28223BE20](ShouldDifferentiateWithoutColor, v161);
    *(&v180 - 2) = v222;
    sub_2204DD7F8();
    sub_2204DF8D8(qword_2812942B0, 255, sub_2204DD7F8);
    sub_220891F9C();

    return;
  }

  v167 = v195;
  v166 = v196;
  v169 = v193;
  v168 = v194;
  if (v164 == *MEMORY[0x277D69468])
  {
    v165 = MEMORY[0x277D68AD8];
    goto LABEL_80;
  }

  if (v164 == *MEMORY[0x277D69478])
  {
    v165 = MEMORY[0x277D68AE8];
    goto LABEL_80;
  }

LABEL_96:
  sub_2208928AC();
  __break(1u);
}

uint64_t sub_2204FDC30@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ForYouFeedSectionDescriptor();
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204FB25C(v2, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_2204B3C8C(v7, &qword_281296C60, MEMORY[0x277D31C50]);
      goto LABEL_8;
    }

    if (EnumCaseMultiPayload == 1)
    {
      sub_22045849C();
      v10 = *(v9 + 48);
      sub_2204B3C8C(&v7[*(v9 + 64)], &qword_281296C60, MEMORY[0x277D31C50]);
      sub_2204FC284(&v7[v10], type metadata accessor for StockViewModel);
      v11 = sub_22088685C();
      (*(*(v11 - 8) + 8))(v7, v11);
LABEL_8:
      v13 = MEMORY[0x277D33158];
      goto LABEL_13;
    }

    v12 = MEMORY[0x277D33190];
LABEL_10:
    v14 = *v12;
    v15 = sub_22089018C();
    (*(*(v15 - 8) + 104))(a1, v14, v15);
    return sub_2204FC284(v7, type metadata accessor for ForYouFeedSectionDescriptor);
  }

  if (EnumCaseMultiPayload == 3)
  {
    v12 = MEMORY[0x277D33178];
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload != 4)
  {
    result = sub_22089267C();
    __break(1u);
    return result;
  }

  v13 = MEMORY[0x277D33180];
LABEL_13:
  v17 = *v13;
  v18 = sub_22089018C();
  return (*(*(v18 - 8) + 104))(a1, v17, v18);
}

uint64_t sub_2204FDEB4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &unk_28128F170);
  result = sub_2208884DC();
  if (!v77)
  {
    __break(1u);
    goto LABEL_20;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_281288FF8);
  result = sub_2208884DC();
  if (!v74)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220489DCC();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220489F14();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = sub_22088731C();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    __break(1u);
    goto LABEL_26;
  }

  v54 = v4;
  v55 = v3;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &unk_281296760);
  result = sub_2208884DC();
  if (!v73)
  {
    goto LABEL_24;
  }

  sub_220890BAC();
  swift_allocObject();
  v6 = sub_220890B9C();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297770);
  sub_2208884DC();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297B48);
  result = sub_2208884DC();
  if (!v70)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v52 = v71;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_2812883C8);
  result = sub_2208884DC();
  v53 = v68;
  if (!v68)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v51 = v69;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299280);
  result = sub_2208884DC();
  if (!v67)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v49 = v75;
  v50 = v70;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297C50);
  result = sub_2208884DC();
  if (!v64[0])
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v7 = result;
  v65[3] = v5;
  v65[4] = sub_22044E43C(&qword_281298BF0, MEMORY[0x277CEAEA8]);
  v65[0] = v7;
  sub_22088B49C();
  swift_allocObject();
  v8 = sub_22088B47C();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_2812991A0);
  result = sub_2208884DC();
  if (!v5)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &unk_28128BFC0);
  sub_22088611C();
  sub_22088849C();

  if (!v64[3])
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281288640);
  result = sub_2208884DC();
  if (!v62)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22045BAD8();
  result = sub_22088848C();
  if (!result)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v44 = v63;
  v46 = result;
  v47 = v62;
  v48 = v8;
  v56 = v74;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for ForYouFeedViewCoordinator();
  result = sub_2208884CC();
  v45 = result;
  if (result)
  {
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v76, v77);
    v43[2] = v43;
    MEMORY[0x28223BE20](v9, v9);
    v11 = (v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11);
    v13 = *v11;
    v14 = type metadata accessor for ForYouFeedStyler();
    v60 = v14;
    v61 = &off_283423B98;
    v59[0] = v13;
    v15 = sub_22044E43C(&unk_281297410, sub_220489F14);
    v16 = type metadata accessor for ForYouFeedViewController();
    v17 = objc_allocWithZone(v16);
    v18 = __swift_mutable_project_boxed_opaque_existential_1(v59, v60);
    v43[1] = v43;
    MEMORY[0x28223BE20](v18, v18);
    v20 = (v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v21 + 16))(v20);
    v22 = *v20;
    v58[3] = v14;
    v58[4] = &off_283423B98;
    v58[0] = v22;
    v23 = OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_statusBarView;
    *&v17[v23] = [objc_allocWithZone(sub_22088AEDC()) initWithFrame_];
    v24 = OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_eventManager;
    sub_2204F65CC(0, &qword_281298990, sub_2205044FC, &type metadata for ForYouFeedViewController.Event, MEMORY[0x277D6CAA0]);
    swift_allocObject();
    *&v17[v24] = sub_22088841C();
    v17[OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_toolbarTitleIsHidden] = 1;
    v25 = &v17[OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_cardToolbarViewModel];
    *v25 = 0u;
    v25[1] = 0u;
    v17[OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_isYahooToolbarVisible] = 0;
    sub_22046DA2C(v58, &v17[OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_styler]);
    v26 = &v17[OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_eventHandler];
    v27 = v55;
    *v26 = v56;
    v26[1] = v49;
    *&v17[OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_blueprintViewController] = v27;
    v28 = &v17[OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_blueprintSelectionProvider];
    *v28 = v54;
    v28[1] = v15;
    *&v17[OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_sharingActivityProviderFactory] = v6;
    v43[0] = v6;
    swift_unknownObjectRetain();
    v55 = v27;

    sub_22088C71C();
    sub_22088BFCC();

    sub_22088F0DC();
    v29 = objc_allocWithZone(sub_22088A99C());
    *&v17[OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_cardViewScrollViewCoordinator] = sub_22088A94C();
    sub_22046DA2C(v72, &v17[OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_keyboardInputMonitor]);
    v30 = &v17[OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_toolbarManager];
    v31 = v52;
    v32 = v53;
    *v30 = v50;
    v30[1] = v31;
    v33 = &v17[OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_collapsedTitleViewProvider];
    v34 = v51;
    *v33 = v32;
    v33[1] = v34;
    sub_22046DA2C(v66, &v17[OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_watchlistManager]);
    *&v17[OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_commands] = v48;
    sub_22046DA2C(v65, &v17[OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_appConfigurationManager]);
    sub_22046DA2C(v64, &v17[OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_quoteAttributionProvider]);
    v35 = &v17[OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_cardToolbarViewProvider];
    v36 = v46;
    v37 = v44;
    v38 = v45;
    *v35 = v47;
    v35[1] = v37;
    *&v17[OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_coverViewObservable] = v36;
    *&v17[OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_forYouFeedViewCoordinator] = v38;
    v57.receiver = v17;
    v57.super_class = v16;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();

    v39 = objc_msgSendSuper2(&v57, sel_initWithNibName_bundle_, 0, 0);
    *(*&v39[OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_eventHandler] + 24) = &off_2834240E8;
    swift_unknownObjectWeakAssign();
    v40 = *&v39[OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_blueprintViewController];
    v41 = v39;
    v42 = v40;
    sub_22088C79C();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v64);
    __swift_destroy_boxed_opaque_existential_1(v65);
    __swift_destroy_boxed_opaque_existential_1(v66);
    __swift_destroy_boxed_opaque_existential_1(v72);
    __swift_destroy_boxed_opaque_existential_1(v58);
    *(*&v41[OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_forYouFeedViewCoordinator] + 88) = &off_2834240B8;
    swift_unknownObjectWeakAssign();

    __swift_destroy_boxed_opaque_existential_1(v59);
    __swift_destroy_boxed_opaque_existential_1(v76);
    return v41;
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_2204FEA54(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22088698C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_2208875EC();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 48);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_2204FEBB0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220487E40(0, &qword_28128F198, type metadata accessor for ForYouFeedBlueprintModifierFactory, sub_220487EE4, type metadata accessor for ForYouFeedInteractor);
  result = sub_2208884CC();
  if (result)
  {
    *a2 = result;
    a2[1] = &off_28341E4E0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2204FEC5C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_2812989E8);
  result = sub_2208884DC();
  if (v4)
  {
    type metadata accessor for AudioListeningProgressAdapter();
    v2 = swift_allocObject();
    sub_220457328(&v3, v2 + 16);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2204FECFC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v48 = a1;
  v3 = sub_22089030C();
  v43 = *(v3 - 8);
  v44 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v42 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_22089049C();
  v41 = *(v47 - 8);
  MEMORY[0x28223BE20](v47, v6);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  sub_2204547E0();
  v12 = v11;
  v46 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220454720();
  v17 = v16;
  v45 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for ForYouFeedModel();
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204FF294(v2, v24);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload > 4)
    {
      v26 = v48;
      if (EnumCaseMultiPayload == 5)
      {
        v36 = sub_2208900AC();
        (*(*(v36 - 8) + 32))(v26, v24, v36);
        v31 = MEMORY[0x277D32E00];
        goto LABEL_14;
      }
    }

    else
    {
      v26 = v48;
      if (EnumCaseMultiPayload == 3)
      {

        sub_220458918();
        v28 = v42;
        v29 = v43;
        v30 = v44;
        (*(v43 + 32))(v42, &v24[*(v27 + 48)], v44);
        sub_2208902AC();
        _s8StocksUI16OfflineAlertableV5titleSSSgvg_0();
        _s8StocksUI16OfflineAlertableV7messageSSSgvg_0();
        sub_22088F41C();
        (*(v29 + 8))(v28, v30);
        v31 = MEMORY[0x277D32D10];
        goto LABEL_14;
      }

      sub_220503C2C(v24, type metadata accessor for ForYouFeedModel);
    }

    v31 = MEMORY[0x277D32DD0];
    goto LABEL_14;
  }

  v32 = v15;
  v33 = v47;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v34 = v46;
      (*(v46 + 32))(v32, v24, v12);
      sub_220508980();
      v45 = v35;
      sub_22088FF6C();
      sub_22088FF6C();
      sub_22089047C();
      (*(v41 + 8))(v8, v33);
      v26 = v48;
      sub_22088F40C();
      (*(v34 + 8))(v32, v12);
      v31 = MEMORY[0x277D32CF0];
    }

    else
    {

      v26 = v48;
      sub_22088FEEC();
      v31 = MEMORY[0x277D32DB8];
    }
  }

  else
  {
    v37 = v45;
    (*(v45 + 32))(v20, v24, v17);
    v26 = v48;
    sub_2204FF8CC(v48);
    (*(v37 + 8))(v20, v17);
    v31 = MEMORY[0x277D32E10];
  }

LABEL_14:
  v38 = *v31;
  v39 = sub_22088FF2C();
  return (*(*(v39 - 8) + 104))(v26, v38, v39);
}

uint64_t sub_2204FF294(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ForYouFeedModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2204FF2F8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_22088F12C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &unk_2812991E0);
  result = sub_2208884DC();
  if (!v47)
  {
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_28128DC70);
  result = sub_2208884DC();
  if (!v45)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204529D4();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v10 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_2812991A0);
  result = sub_2208884DC();
  if (!v43[3])
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v36 = v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22044869C(0, &qword_28127E5C0);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v11 = result;
  v34 = v10;
  v35 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299280);
  result = sub_2208884DC();
  if (v42[3])
  {
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v44, v45);
    v33 = &v32;
    MEMORY[0x28223BE20](v12, v12);
    v14 = (&v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = *v14;
    v17 = type metadata accessor for ForYouFeedServiceProxy();
    v40 = v17;
    v41 = &off_283415E20;
    v39[0] = v16;
    v18 = type metadata accessor for ForYouFeedDataManager();
    v19 = objc_allocWithZone(v18);
    v20 = __swift_mutable_project_boxed_opaque_existential_1(v39, v40);
    v32 = &v32;
    MEMORY[0x28223BE20](v20, v20);
    v22 = (&v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v23 + 16))(v22);
    v24 = *v22;
    v38[3] = v17;
    v38[4] = &off_283415E20;
    v38[0] = v24;
    *&v19[OBJC_IVAR____TtC8StocksUI21ForYouFeedDataManager_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v25 = OBJC_IVAR____TtC8StocksUI21ForYouFeedDataManager_accessQueue;
    sub_22044D56C(0, &qword_28127E7C0);
    v26 = v36;
    (*(v5 + 104))(v8, *MEMORY[0x277D851B8], v36);
    v27 = sub_220891D3C();
    (*(v5 + 8))(v8, v26);
    *&v19[v25] = v27;
    v28 = OBJC_IVAR____TtC8StocksUI21ForYouFeedDataManager_lastRefreshDate;
    v29 = sub_22088516C();
    (*(*(v29 - 8) + 56))(&v19[v28], 1, 1, v29);
    *&v19[OBJC_IVAR____TtC8StocksUI21ForYouFeedDataManager_cancellables] = MEMORY[0x277D84FA0];
    sub_22046DA2C(v46, &v19[OBJC_IVAR____TtC8StocksUI21ForYouFeedDataManager_priceDataManager]);
    sub_22046DA2C(v38, &v19[OBJC_IVAR____TtC8StocksUI21ForYouFeedDataManager_feedService]);
    *&v19[OBJC_IVAR____TtC8StocksUI21ForYouFeedDataManager_feedServiceConfigFetcher] = v34;
    sub_22046DA2C(v43, &v19[OBJC_IVAR____TtC8StocksUI21ForYouFeedDataManager_appConfigurationManager]);
    *&v19[OBJC_IVAR____TtC8StocksUI21ForYouFeedDataManager_bundleSubscriptionManager] = v11;
    sub_22046DA2C(v42, &v19[OBJC_IVAR____TtC8StocksUI21ForYouFeedDataManager_watchlistManager]);
    v37.receiver = v19;
    v37.super_class = v18;
    v30 = objc_msgSendSuper2(&v37, sel_init, v32, v33);
    __swift_destroy_boxed_opaque_existential_1(v42);
    __swift_destroy_boxed_opaque_existential_1(v43);
    __swift_destroy_boxed_opaque_existential_1(v46);
    __swift_destroy_boxed_opaque_existential_1(v38);
    __swift_destroy_boxed_opaque_existential_1(v39);
    result = __swift_destroy_boxed_opaque_existential_1(v44);
    v31 = v35;
    *v35 = v30;
    v31[1] = &off_283423328;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_2204FF8CC@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v1 = sub_2208900EC();
  MEMORY[0x28223BE20](v1 - 8, v2);
  v50 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204FFF4C(0, &qword_281296C40, MEMORY[0x277D31DC8]);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v49 = &v39 - v6;
  sub_2204FFF4C(0, &qword_281296B88, MEMORY[0x277D32010]);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v48 = &v39 - v9;
  sub_2204FFF4C(0, &unk_281296D70, MEMORY[0x277D2D148]);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v47 = &v39 - v12;
  v13 = sub_22088FFFC();
  v45 = *(v13 - 8);
  v46 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v40 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22088FEFC();
  MEMORY[0x28223BE20](v16 - 8, v17);
  v41 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22088698C();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v39 - v26;
  MEMORY[0x28223BE20](v28, v29);
  v31 = &v39 - v30;
  sub_220454720();
  v32 = sub_22088FF4C();
  v43 = v33;
  v44 = v32;
  sub_22088FF6C();
  v42 = sub_2208868DC();
  v34 = *(v20 + 8);
  v34(v31, v19);
  sub_22088FF6C();
  (*(v20 + 16))(v23, v27, v19);
  sub_2208928FC();
  v34(v27, v19);
  v35 = v40;
  sub_22088FF7C();
  sub_22088FF6C();
  sub_2208868DC();
  v34(v23, v19);
  sub_22088FF8C();
  sub_22088FFEC();
  swift_unknownObjectRelease();
  (*(v45 + 8))(v35, v46);
  v36 = sub_22088EC6C();
  (*(*(v36 - 8) + 56))(v47, 1, 1, v36);
  sub_220500314(v48);
  v37 = sub_22088F42C();
  (*(*(v37 - 8) + 56))(v49, 1, 1, v37);
  sub_2208900DC();
  return sub_2208900CC();
}

uint64_t sub_2204FFE18@<X0>(void *a1@<X0>, void (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a2(0);
  result = sub_2208884CC();
  if (result)
  {
    v10 = result;
    v11 = a3(0);
    result = swift_allocObject();
    *(result + 16) = v10;
    a5[3] = v11;
    a5[4] = a4;
    *a5 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2204FFEC0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for StocksAudioTrack();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2204FFF04(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2204FFF4C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22089230C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2204FFFD4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_2812967A8);
  result = sub_2208884DC();
  if (v2)
  {
    sub_2208880AC();
    swift_allocObject();
    return sub_22088809C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22050006C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void), void (*a5)(void))
{
  sub_220500598(0, &qword_281296C48, MEMORY[0x277D31CF0]);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v20[-1] - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = sub_22088F3FC();
  sub_22088849C();
  result = (*(*(v12 - 8) + 48))(v11, 1, v12);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4(0);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_2812969F0);
  result = sub_2208884DC();
  if (!v24)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &unk_281296850);
  result = sub_2208884DC();
  v14 = v22;
  if (v22)
  {
    v15 = v23;
    v16 = __swift_project_boxed_opaque_existential_1(v21, v22);
    v20[3] = v14;
    v20[4] = *(v15 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20);
    (*(*(v14 - 8) + 16))(boxed_opaque_existential_1, v16, v14);
    a5(0);
    swift_allocObject();
    v18 = sub_22089004C();
    __swift_destroy_boxed_opaque_existential_1(v21);
    return v18;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_220500314@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v1 = sub_22088698C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22088FFFC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220454720();
  sub_22088FF7C();
  v11 = sub_22088FFDC();
  (*(v7 + 8))(v10, v6);
  sub_22088FF6C();
  v12 = sub_2208868DC();
  (*(v2 + 8))(v5, v1);
  if (v11)
  {
    if ([v12 respondsToSelector_])
    {
      v13 = [v12 narrativeTrack];
      goto LABEL_6;
    }

LABEL_8:
    swift_unknownObjectRelease();
    v16 = 1;
    v15 = v20;
    goto LABEL_10;
  }

  if (([v12 respondsToSelector_] & 1) == 0)
  {
    goto LABEL_8;
  }

  v13 = [v12 narrativeTrackSample];
LABEL_6:
  v14 = v13;
  swift_unknownObjectRelease();
  v15 = v20;
  if (v14)
  {
    sub_22088F63C();
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

LABEL_10:
  v17 = sub_22088F64C();
  return (*(*(v17 - 8) + 56))(v15, v16, 1, v17);
}

void sub_220500598(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22089230C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id sub_220500624(uint64_t a1, uint64_t a2, double *a3, SEL *a4)
{
  sub_2204A5DF0();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220899920;
  v8 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v9 = objc_opt_self();
  v10 = *a3;
  v11 = v8;
  v12 = [v9 *a4];
  v13 = sub_22044D56C(0, &qword_28127E570);
  v14 = MEMORY[0x277D740C0];
  *(inited + 40) = v12;
  v15 = *v14;
  *(inited + 64) = v13;
  *(inited + 72) = v15;
  v16 = v4[5];
  v17 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v16);
  v18 = *(v17 + 16);
  v19 = *(v18 + 40);
  v20 = v15;
  v21 = v19(v16, v18);
  *(inited + 104) = sub_22044D56C(0, &qword_28127E530);
  *(inited + 80) = v21;
  sub_2204A5EAC(inited);
  swift_setDeallocating();
  sub_2204A5D84();
  swift_arrayDestroy();
  v22 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v23 = sub_22089132C();
  type metadata accessor for Key(0);
  sub_2204A63B8();
  v24 = sub_22089125C();

  v25 = [v22 initWithString:v23 attributes:v24];

  return v25;
}

uint64_t sub_220500864@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22044869C(0, &qword_28127E5C0);
  result = sub_2208884CC();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_22044869C(0, &qword_28127E778);
    result = sub_2208884CC();
    if (result)
    {
      v5 = sub_220887A1C();
      v6 = objc_allocWithZone(v5);
      result = sub_220887A0C();
      v7 = MEMORY[0x277D2FD60];
      a2[3] = v5;
      a2[4] = v7;
      *a2 = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for ForYouFeedTracker()
{
  result = qword_281291A38;
  if (!qword_281291A38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2205009B8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299220);
  result = sub_2208884DC();
  if (v4)
  {
    __swift_project_boxed_opaque_existential_1(v3, v4);
    sub_22088613C();
    __swift_destroy_boxed_opaque_existential_1(v3);
    if (qword_281294340 != -1)
    {
      swift_once();
    }

    v2 = qword_281294348;
    return sub_22088F3EC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220500AC4()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_22089136C();
  }

  sub_22048D2F4();
  result = sub_2208922EC();
  qword_281294348 = result;
  return result;
}

id sub_220500BCC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v5 = a3;
  sub_2204A5DF0();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220899920;
  v7 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v8 = objc_opt_self();
  v9 = *MEMORY[0x277D74420];
  v10 = v7;
  v11 = [v8 monospacedDigitSystemFontOfSize:14.0 weight:v9];
  v12 = sub_22044D56C(0, &qword_28127E570);
  *(inited + 40) = v11;
  v13 = *MEMORY[0x277D740C0];
  *(inited + 64) = v12;
  *(inited + 72) = v13;
  if (v5 == 2)
  {
    v14 = v3[5];
    v15 = v3[6];
    __swift_project_boxed_opaque_existential_1(v3 + 2, v14);
    v16 = *(v15 + 16);
    v17 = *(v16 + 448);
    v18 = v13;
    v19 = v17(v14, v16);
  }

  else
  {
    v20 = v3[5];
    v21 = v3[6];
    __swift_project_boxed_opaque_existential_1(v3 + 2, v20);
    if (a3)
    {
      v22 = *(v21 + 32);
    }

    else
    {
      v22 = *(v21 + 24);
    }

    v23 = v13;
    v19 = v22(v20, v21);
  }

  v24 = v19;
  *(inited + 104) = sub_22044D56C(0, &qword_28127E530);
  *(inited + 80) = v24;
  sub_2204A5EAC(inited);
  swift_setDeallocating();
  sub_2204A5D84();
  swift_arrayDestroy();
  v25 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v26 = sub_22089132C();
  type metadata accessor for Key(0);
  sub_2204A63B8();
  v27 = sub_22089125C();

  v28 = [v25 initWithString:v26 attributes:v27];

  return v28;
}

uint64_t sub_220500E3C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for ForYouFeedGroupEmitterFactory();
  result = sub_2208884CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v16 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22044E744();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v15 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22044869C(0, &qword_28127E5C0);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &unk_281296850);
  result = sub_2208884DC();
  v3 = v13;
  if (!v13)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v4 = v14;
  v5 = __swift_project_boxed_opaque_existential_1(v12, v13);
  v11[3] = v3;
  v11[4] = *(v4 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, v5, v3);
  if (qword_281294340 != -1)
  {
    swift_once();
  }

  v7 = qword_281294348;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &unk_281296AD8);
  v8 = v7;
  result = sub_2208884DC();
  if (v10)
  {
    sub_22044E484();
    v9 = sub_22088F61C();
    __swift_destroy_boxed_opaque_existential_1(v12);
    return v9;
  }

LABEL_13:
  __break(1u);
  return result;
}

void sub_2205010B4()
{
  sub_220500B98(319);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void *sub_220501178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for ForYouFeedRouter();
  v33[3] = v10;
  v33[4] = &off_283422A10;
  v33[0] = a3;
  v11 = type metadata accessor for ForYouFeedTracker();
  v31 = v11;
  v32 = &off_28341F5D8;
  v30[0] = a4;
  type metadata accessor for ForYouFeedEventHandler();
  v12 = swift_allocObject();
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v33, v10);
  MEMORY[0x28223BE20](v13, v13);
  v15 = (&v28[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
  MEMORY[0x28223BE20](v17, v17);
  v19 = (&v28[-1] - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = *v15;
  v22 = *v19;
  v29[3] = v10;
  v29[4] = &off_283422A10;
  v28[4] = &off_28341F5D8;
  v29[0] = v21;
  v28[3] = v11;
  v28[0] = v22;
  v12[3] = 0;
  swift_unknownObjectWeakInit();
  v12[4] = a1;
  v12[5] = a2;
  sub_22046DA2C(v29, (v12 + 6));
  sub_22046DA2C(v28, (v12 + 11));
  sub_22046DA2C(a5, (v12 + 16));
  ObjectType = swift_getObjectType();
  v24 = *(a2 + 16);
  swift_unknownObjectRetain();

  v24(v25, &off_283424F00, ObjectType, a2);
  __swift_destroy_boxed_opaque_existential_1(a5);
  __swift_destroy_boxed_opaque_existential_1(v28);
  __swift_destroy_boxed_opaque_existential_1(v29);
  __swift_destroy_boxed_opaque_existential_1(v30);
  __swift_destroy_boxed_opaque_existential_1(v33);
  return v12;
}

uint64_t sub_220501410@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  type metadata accessor for StubForYouFeedGroupEmitterFactory();
  v4 = swift_allocObject();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22044869C(0, &unk_28127E650);
  result = sub_2208884CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_2812991A0);
  result = sub_2208884DC();
  if (!v29)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299220);
  result = sub_2208884DC();
  if (!v27)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299140);
  result = sub_2208884DC();
  if (!v25)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_2812991D0);
  result = sub_2208884DC();
  if (!v23)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_2812992C0);
  result = sub_2208884DC();
  if (!v21)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299188);
  result = sub_2208884DC();
  v7 = v18;
  if (!v18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299288);
  result = sub_2208884DC();
  if (!v17)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281296848);
  result = sub_2208884DC();
  if (v15)
  {
    sub_2205018BC();
    v9 = swift_allocObject();
    *&v9[*(*v9 + 192)] = v4;
    v10 = OBJC_IVAR____TtC8StocksUI29ForYouFeedGroupEmitterFactory_networkProxy;
    v11 = *MEMORY[0x277D6CAB8];
    v12 = sub_22088846C();
    (*(*(v12 - 8) + 104))(&v9[v10], v11, v12);
    *(v9 + 2) = v6;
    sub_220457328(&v28, (v9 + 24));
    sub_220457328(&v26, (v9 + 64));
    sub_220457328(&v24, (v9 + 104));
    sub_220457328(&v22, (v9 + 144));
    sub_220457328(&v20, (v9 + 184));
    v13 = &v9[OBJC_IVAR____TtC8StocksUI29ForYouFeedGroupEmitterFactory_newsUserProfileProvider];
    *v13 = v7;
    *(v13 + 1) = v8;
    sub_220457328(&v16, &v9[OBJC_IVAR____TtC8StocksUI29ForYouFeedGroupEmitterFactory_stockFeedService]);
    result = sub_220457328(&v14, &v9[OBJC_IVAR____TtC8StocksUI29ForYouFeedGroupEmitterFactory_formatService]);
    *a2 = v9;
    return result;
  }

LABEL_19:
  __break(1u);
  return result;
}

void sub_2205018BC()
{
  if (!qword_27CF5A7B0)
  {
    type metadata accessor for StubForYouFeedGroupEmitterFactory();
    v0 = type metadata accessor for ProxyForYouFeedGroupEmitterFactory();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF5A7B0);
    }
  }
}

uint64_t sub_22050191C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220488310(0);
  result = sub_2208884CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220488588();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297378);
  result = sub_22088849C();
  if (!v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297128);
  result = sub_2208884DC();
  if (!v6)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220487E40(0, &qword_281297678, sub_220488310, sub_2204897BC, MEMORY[0x277D6E388]);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088B84C();
  result = sub_22088848C();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297C50);
  result = sub_2208884DC();
  if (!v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088731C();
  result = sub_2208884CC();
  if (result)
  {
    sub_22044E43C(&qword_281298BF0, MEMORY[0x277CEAEA8]);
    sub_220489DCC();
    v4 = objc_allocWithZone(v3);
    return sub_22088C7AC();
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_220501C7C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220488588();
  result = sub_2208884CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = sub_22088BFCC();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297C30);
  result = sub_2208884DC();
  if (!*(&v12 + 1))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_220457328(&v11, v14);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22044869C(0, &qword_2812974F0);
  result = sub_2208884CC();
  if (result)
  {
    sub_22088D41C();
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    sub_22046DA2C(v14, v10);
    v6 = swift_allocObject();
    sub_220457328(v10, v6 + 16);
    *(v6 + 56) = v5;
    v7 = v5;
    v8 = sub_22088D40C();
    result = __swift_destroy_boxed_opaque_existential_1(v14);
    v9 = MEMORY[0x277D6E690];
    *a2 = v8;
    a2[1] = v9;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_220501E30()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_220501E70()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_220501F04(void *a1)
{
  sub_22047DD60();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_220899920;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220489F14();
  result = sub_2208884CC();
  if (result)
  {
    v4 = result;
    v5 = sub_22044E43C(&qword_281297420, sub_220489F14);
    *(v2 + 32) = v4;
    *(v2 + 40) = v5;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_22088CA2C();
    result = sub_22088848C();
    if (result)
    {
      v6 = MEMORY[0x277D6E168];
      *(v2 + 48) = result;
      *(v2 + 56) = v6;
      sub_22088B84C();
      swift_allocObject();
      return sub_22088B83C();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_220502040(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void), void (*a5)(void))
{
  sub_220500598(0, &qword_281296C48, MEMORY[0x277D31CF0]);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = v14 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = sub_22088F3FC();
  sub_22088849C();
  result = (*(*(v12 - 8) + 48))(v11, 1, v12);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    a4(0);
    result = sub_2208884CC();
    if (result)
    {
      v14[1] = result;
      a5(0);
      swift_allocObject();
      return sub_22088F50C();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2205021D8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220488588();
  result = sub_2208884CC();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220489FD0(0, &qword_2812972E0, type metadata accessor for ForYouFeedModel, MEMORY[0x277D6E9F0]);
    result = sub_2208884CC();
    if (result)
    {
      sub_220489F14();
      swift_allocObject();
      return sub_22088D74C();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_220502380()
{
  sub_220489FD0(0, &qword_2812972E0, type metadata accessor for ForYouFeedModel, MEMORY[0x277D6E9F0]);
  swift_allocObject();
  return sub_22088DC5C();
}

void sub_2205023E8()
{
  if (!qword_28127DEE0)
  {
    sub_2204D04D8(255, &qword_28127EBE0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    v0 = sub_22089288C();
    if (!v1)
    {
      atomic_store(v0, &qword_28127DEE0);
    }
  }
}

uint64_t sub_220502464(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220488588();
  result = sub_2208884CC();
  if (result)
  {
    sub_22088BFCC();

    sub_22088CA2C();
    swift_allocObject();
    return sub_22088CA1C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2205024EC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299220);
  result = sub_2208884DC();
  if (!v15)
  {
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299268);
  result = sub_2208884DC();
  if (!v13)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299140);
  result = sub_2208884DC();
  if (!v11)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299280);
  result = sub_2208884DC();
  if (!v9)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &unk_281299178);
  result = sub_2208884DC();
  if (!v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &unk_2812991E0);
  result = sub_2208884DC();
  if (v5)
  {
    type metadata accessor for ForYouFeedPoolService();
    v3 = swift_allocObject();
    sub_220457328(&v14, v3 + 16);
    sub_220457328(&v12, v3 + 56);
    sub_220457328(&v10, v3 + 96);
    sub_220457328(&v8, v3 + 136);
    sub_220457328(&v6, v3 + 176);
    sub_220457328(&v4, v3 + 216);
    return v3;
  }

LABEL_13:
  __break(1u);
  return result;
}

unint64_t sub_22050279C()
{
  result = qword_28127E9B0;
  if (!qword_28127E9B0)
  {
    sub_2204D0528(255, &qword_28127E9C0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28127E9B0);
  }

  return result;
}

uint64_t sub_22050281C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_220502864(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2205028AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2205028F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22050293C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_220502984()
{
  v1 = v0;
  v2 = sub_22088F23C();
  v37 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CuratedForYouFeedGroup();
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22088685C();
  v36 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220453CD0(0, &qword_281296C60, MEMORY[0x277D31C50], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v36 - v20;
  v22 = type metadata accessor for ForYouFeedSectionDescriptor();
  MEMORY[0x28223BE20](v22, v23);
  v25 = &v36 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204FB25C(v1, v25);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v34 = v37;
      (*(v37 + 32))(v5, v25, v2);
      v31 = sub_22088F1EC();
      (*(v34 + 8))(v5, v2);
    }

    else if (EnumCaseMultiPayload == 4)
    {
      return 7364967;
    }

    else
    {
      return 0x64726163616C70;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_22045849C();
      v28 = *(v27 + 48);
      v29 = *(v27 + 64);
      v30 = v36;
      (*(v36 + 32))(v13, v25, v10);
      v31 = sub_22088677C();
      (*(v30 + 8))(v13, v10);
      sub_2204B3C8C(&v25[v29], &qword_281296C60, MEMORY[0x277D31C50]);
      sub_2204FC284(&v25[v28], type metadata accessor for StockViewModel);
    }

    else
    {
      sub_220523070(v25, v9, type metadata accessor for CuratedForYouFeedGroup);
      v31 = sub_22088F2EC();
      sub_2204FC284(v9, type metadata accessor for CuratedForYouFeedGroup);
    }
  }

  else
  {
    sub_2204FBAC4(v25, v21);
    sub_2204FBC98(v21, v17, &qword_281296C60, MEMORY[0x277D31C50]);
    v32 = sub_22088F39C();
    v33 = *(v32 - 8);
    if ((*(v33 + 48))(v17, 1, v32) == 1)
    {
      sub_2204B3C8C(v17, &qword_281296C60, MEMORY[0x277D31C50]);
      v31 = 0x69726F7453706F74;
    }

    else
    {
      v31 = sub_22088F2EC();
      (*(v33 + 8))(v17, v32);
    }

    sub_2204B3C8C(v21, &qword_281296C60, MEMORY[0x277D31C50]);
  }

  return v31;
}

uint64_t sub_220502EB4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_281280B28);
  result = sub_2208884DC();
  if (v37)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220446A58(0, qword_28128CAF0);
    result = sub_2208884DC();
    if (v35)
    {
      v5 = __swift_mutable_project_boxed_opaque_existential_1(v36, v37);
      v29[2] = v29;
      MEMORY[0x28223BE20](v5, v5);
      v7 = (v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v8 + 16))(v7);
      v9 = __swift_mutable_project_boxed_opaque_existential_1(v34, v35);
      v29[1] = v29;
      MEMORY[0x28223BE20](v9, v9);
      v11 = (v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v12 + 16))(v11);
      v13 = *v7;
      v14 = *v11;
      v15 = type metadata accessor for MastheadViewLayoutAttributesFactory();
      v33[3] = v15;
      v33[4] = &off_2834140A0;
      v33[0] = v13;
      v16 = type metadata accessor for MastheadViewStyler();
      v31 = v16;
      v32 = &off_283418F78;
      v30[0] = v14;
      v17 = type metadata accessor for MastheadMetricsFactory();
      v18 = swift_allocObject();
      v19 = __swift_mutable_project_boxed_opaque_existential_1(v33, v15);
      MEMORY[0x28223BE20](v19, v19);
      v21 = (v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v22 + 16))(v21);
      v23 = __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
      MEMORY[0x28223BE20](v23, v23);
      v25 = (v29 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v26 + 16))(v25);
      v27 = *v21;
      v28 = *v25;
      v18[5] = v15;
      v18[6] = &off_2834140A0;
      v18[2] = v27;
      v18[10] = v16;
      v18[11] = &off_283418F78;
      v18[7] = v28;
      __swift_destroy_boxed_opaque_existential_1(v30);
      __swift_destroy_boxed_opaque_existential_1(v33);
      __swift_destroy_boxed_opaque_existential_1(v34);
      result = __swift_destroy_boxed_opaque_existential_1(v36);
      a2[3] = v17;
      a2[4] = &off_283425F88;
      *a2 = v18;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2205032EC()
{
  v1 = type metadata accessor for StockViewModel();
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TickerModel();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = (v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2205034BC(v0, v8);
  v9 = *v8;
  sub_220483A44();
  sub_22050381C(v8 + *(v10 + 48), v4);
  v15[1] = v9;
  v16 = sub_22089287C();
  v17 = v11;
  MEMORY[0x223D89680](36, 0xE100000000000000);
  v12 = sub_22088677C();
  MEMORY[0x223D89680](v12);

  v13 = v16;
  sub_2204EFAD0(v4);
  return v13;
}

uint64_t sub_2205034BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TickerModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220503544@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_2812991A0);
  result = sub_2208884DC();
  if (!v16)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299220);
  result = sub_2208884DC();
  if (!v14)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &unk_281299150);
  result = sub_2208884DC();
  if (!v11)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_2812967A8);
  result = sub_2208884DC();
  if (!v10)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299280);
  result = sub_2208884DC();
  if (v8)
  {
    type metadata accessor for LegacyForYouFeedServiceConfigFetcher();
    v6 = swift_allocObject();
    sub_220457328(&v15, v6 + 16);
    sub_220457328(&v13, v6 + 56);
    *(v6 + 96) = v11;
    *(v6 + 104) = v5;
    sub_220457328(&v9, v6 + 112);
    sub_220457328(&v7, v6 + 152);
    *&v15 = v6;
    sub_2204529D4();
    swift_allocObject();
    sub_22044DDA0(qword_281281A48, type metadata accessor for LegacyForYouFeedServiceConfigFetcher);
    result = sub_22088F26C();
    *a2 = result;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for ForYouTitleViewProvider()
{
  result = qword_28128B7B8;
  if (!qword_28128B7B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22050381C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StockViewModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for ForYouFeedDataManager()
{
  result = qword_28128DFC8;
  if (!qword_28128DFC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2205038F0()
{
  sub_220503B68(319, &qword_2812979F8, MEMORY[0x277D6DE08], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2205039E4()
{
  v1 = v0;
  v2 = sub_2208900AC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204FF294(v1, v10);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    (*(v3 + 32))(v6, v10, v2);
    v11 = sub_22089008C();
    (*(v3 + 8))(v6, v2);
    return v11;
  }

  else
  {
    sub_220503C2C(v10, type metadata accessor for ForYouFeedModel);
    return 0;
  }
}

void sub_220503B68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_220503BCC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_220503C2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_220503C8C()
{
  sub_22044DA5C(319, &qword_281299480, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_220503D94@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D31EA0];
  v3 = sub_22088F4FC();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

char *sub_220503E08(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v39 = a8;
  v40 = a10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v38);
  (*(*(a8 - 8) + 32))(boxed_opaque_existential_1, a1, a8);
  v37[3] = a9;
  v37[4] = a11;
  v19 = __swift_allocate_boxed_opaque_existential_1(v37);
  (*(*(a9 - 8) + 32))(v19, a6, a9);
  v20 = swift_allocObject();
  v21 = __swift_mutable_project_boxed_opaque_existential_1(v38, v39);
  MEMORY[0x28223BE20](v21, v21);
  v23 = &v35[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v24 + 16))(v23);
  v25 = *v23;
  v36[3] = type metadata accessor for ForYouTitleViewLayoutAttributesFactory();
  v36[4] = &off_283421450;
  v36[0] = v25;
  *(v20 + 2) = 0;
  v26 = OBJC_IVAR____TtC8StocksUI23ForYouTitleViewProvider_lastLayoutOptions;
  v27 = sub_22088C32C();
  (*(*(v27 - 8) + 56))(&v20[v26], 1, 1, v27);
  v28 = &v20[OBJC_IVAR____TtC8StocksUI23ForYouTitleViewProvider_lastTopInset];
  *v28 = 0;
  v28[8] = 1;
  sub_22046DA2C(v36, (v20 + 24));
  *(v20 + 8) = a2;
  *(v20 + 9) = a3;
  sub_22046DA2C(a4, (v20 + 80));
  *(v20 + 15) = a5;
  sub_22046DA2C(v37, (v20 + 128));
  v29 = a4[3];
  v30 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v29);
  v31 = *(v30 + 8);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v31(v29, v30);
  sub_22046D5B4();
  v32 = sub_220891D0C();
  swift_allocObject();
  swift_weakInit();
  sub_2208886EC();

  __swift_destroy_boxed_opaque_existential_1(v35);
  __swift_destroy_boxed_opaque_existential_1(v37);
  __swift_destroy_boxed_opaque_existential_1(v36);
  __swift_destroy_boxed_opaque_existential_1(a4);
  __swift_destroy_boxed_opaque_existential_1(v38);
  return v20;
}

uint64_t sub_220504130()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

unint64_t sub_220504168()
{
  result = qword_28128B7E0;
  if (!qword_28128B7E0)
  {
    type metadata accessor for ForYouTitleViewProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28128B7E0);
  }

  return result;
}

uint64_t sub_2205041C4(uint64_t a1, uint64_t a2)
{
  sub_220483A44();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

unint64_t sub_22050425C(uint64_t a1)
{
  result = sub_220504168();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_220504284(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220489EA8(0, &qword_2812972C0, MEMORY[0x277D6E880], MEMORY[0x277D6E870], MEMORY[0x277D6EA38]);
  result = sub_22088848C();
  if (result)
  {
    v2 = result;
    v3 = [objc_allocWithZone(MEMORY[0x277D752A0]) initWithFrame:result collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220504388(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088D84C();
  result = sub_22088848C();
  if (result)
  {
    sub_220489EA8(0, &qword_2812972C0, MEMORY[0x277D6E880], MEMORY[0x277D6E870], MEMORY[0x277D6EA38]);
    v3 = objc_allocWithZone(v2);
    return sub_22088DD4C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2205044FC()
{
  result = qword_28128A410;
  if (!qword_28128A410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28128A410);
  }

  return result;
}

uint64_t sub_220504550@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2204FBDB4();
  *a1 = result;
  return result;
}

void sub_2205045B0()
{
  if (!qword_281297B18)
  {
    type metadata accessor for TickerLayoutModel();
    sub_2204BC2F4(qword_2812910F0, 255, type metadata accessor for TickerLayoutModel);
    v0 = sub_22088BC4C();
    if (!v1)
    {
      atomic_store(v0, &qword_281297B18);
    }
  }
}

unint64_t sub_220504648()
{
  result = qword_28128A400;
  if (!qword_28128A400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28128A400);
  }

  return result;
}

char *sub_2205046C0(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC8StocksUI10TickerView_symbolLabel;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v11 = OBJC_IVAR____TtC8StocksUI10TickerView_priceLabel;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v12 = OBJC_IVAR____TtC8StocksUI10TickerView_priceChangeLabel;
  *&v4[v12] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v13 = OBJC_IVAR____TtC8StocksUI10TickerView_sparklineView;
  *&v4[v13] = [objc_allocWithZone(type metadata accessor for StockSparklineView()) initWithFrame_];
  v19.receiver = v4;
  v19.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v19, sel_initWithFrame_, a1, a2, a3, a4);
  v15 = *&v14[OBJC_IVAR____TtC8StocksUI10TickerView_symbolLabel];
  v16 = v14;
  [v16 addSubview_];
  [v16 addSubview_];
  [v16 addSubview_];
  [v16 addSubview_];
  [v16 setIsAccessibilityElement_];
  [v16 setShowsLargeContentViewer_];
  v17 = [objc_allocWithZone(MEMORY[0x277D756C8]) init];
  [v16 addInteraction_];

  return v16;
}

uint64_t sub_2205048C4(uint64_t a1, void *a2)
{
  v3 = sub_22088CE6C();
  MEMORY[0x28223BE20](v3, v4);
  (*(v6 + 104))(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6E3C8]);
  sub_22088C74C();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_220487E40(0, &unk_281297780, sub_220488588, sub_220489ABC, MEMORY[0x277D6E068]);
  v8 = v7;
  v9 = sub_2208884CC();
  v10 = v9;
  if (v9)
  {
    v9 = sub_2204EFBE8();
  }

  else
  {
    v8 = 0;
    v14 = 0;
    v15 = 0;
  }

  v13 = v10;
  v16 = v8;
  v17 = v9;
  sub_22088C77C();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_220446A58(0, &unk_281296798);
  result = sub_2208884DC();
  if (v13)
  {
    swift_getObjectType();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_22089099C();
    swift_allocObject();
    sub_22089098C();
    sub_220890A8C();
    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220504B1C()
{
  MEMORY[0x223D8B910](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_220504B58(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_220489DCC();
  if (sub_2208884CC())
  {
    sub_22044E43C(&qword_2812977F8, sub_220489DCC);
  }

  return sub_22088D75C();
}

uint64_t sub_220504C04()
{
  v1 = *v0;
  v2 = sub_2208851BC();
  v3 = (v1 + OBJC_IVAR____TtC8StocksUI10BaseStyler_theme);
  v4 = *(v1 + OBJC_IVAR____TtC8StocksUI10BaseStyler_theme + 24);
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  if (v2)
  {
    return (*(v5 + 184))(v4, v5);
  }

  else
  {
    return (*(v5 + 200))(v4, v5);
  }
}

uint64_t sub_220504C9C()
{
  v0 = sub_22088C2CC();
  MEMORY[0x28223BE20](v0, v1);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6DDE0]);
  return sub_22088D3EC();
}

uint64_t sub_220504D6C(uint64_t a1)
{
  sub_220505224(0, &qword_2812969B0, &qword_2812969B8, MEMORY[0x277D32BA0], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220504E10(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_220446A58(0, &qword_28128F180);
  result = sub_2208884DC();
  if (v8)
  {
    sub_220457328(&v7, v9);
    v3 = v10;
    v4 = v11;
    __swift_mutable_project_boxed_opaque_existential_1(v9, v10);
    v5 = *(v4 + 16);

    v5(v6, &off_283424EF0, v3, v4);
    return __swift_destroy_boxed_opaque_existential_1(v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_220504EEC(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_22088801C();
  result = sub_2208884CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2208880CC();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_220887FEC();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_22088802C();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for AudioListeningProgressRecorder();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for AudioPlayingItemHistoryRecorder();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for AudioTrackCompletionHandler();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_220887E7C();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_19:
    __break(1u);
    return result;
  }
}

uint64_t sub_2205050E0(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_220446A58(0, &qword_2812977B8);
  result = sub_22088849C();
  if (v5)
  {
    sub_22088837C();
    return __swift_destroy_boxed_opaque_existential_1(v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2205051C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_220505224(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2204446D4(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_22050528C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2204446D4(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_2205052F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_220505358(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204536AC();
  result = sub_2208884CC();
  if (result)
  {
    sub_220887BDC();

    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220446A58(0, &qword_281297C50);
    result = sub_2208884DC();
    if (v3)
    {
      sub_22088801C();
      return sub_22088800C();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

size_t sub_220505460(size_t a1, int64_t a2, char a3)
{
  result = sub_22048DBF8(a1, a2, a3, *v3, &qword_28127E0A8, sub_2204F63C4, sub_2204F63C4);
  *v3 = result;
  return result;
}

uint64_t sub_2205054B0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22044D56C(0, &qword_28127E820);
  result = sub_22088848C();
  if (result)
  {
    v4 = sub_22088BD5C();
    v5 = objc_allocWithZone(v4);
    result = sub_22088BD4C();
    v6 = MEMORY[0x277D6DB78];
    a2[3] = v4;
    a2[4] = v6;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220505568(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204536AC();
  result = sub_2208884CC();
  if (result)
  {
    sub_220887BDC();

    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220446A58(0, &qword_281297EF8);
    result = sub_22088849C();
    if (v3)
    {
      sub_2208880CC();
      swift_allocObject();
      sub_2204535F8(qword_281296200, type metadata accessor for StocksAudioTrack);
      return sub_2208880BC();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2205056A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v40 = a2;
  v42 = a1;
  v43 = a3;
  v3 = MEMORY[0x277D83D88];
  sub_2204F0A94(0, &qword_281296BC0, MEMORY[0x277D31F38], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v38 - v6;
  v8 = sub_22088F58C();
  v41 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v39 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v38 - v13;
  v15 = MEMORY[0x277D31C50];
  sub_2204F0A94(0, &qword_281296C60, MEMORY[0x277D31C50], v3);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v19 = &v38 - v18;
  v20 = sub_22088F39C();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v22);
  v24 = &v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v26);
  v28 = &v38 - v27;
  sub_2204FA000(v42, v19, &qword_281296C60, v15);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    v29 = &qword_281296C60;
    v30 = MEMORY[0x277D31C50];
    v31 = v19;
  }

  else
  {
    (*(v21 + 32))(v28, v19, v20);
    sub_2204FA000(v40, v7, &qword_281296BC0, MEMORY[0x277D31F38]);
    v32 = v41;
    if ((*(v41 + 48))(v7, 1, v8) != 1)
    {
      (*(v32 + 32))(v14, v7, v8);
      (*(v21 + 16))(v24, v28, v20);
      v35 = v39;
      (*(v32 + 16))(v39, v14, v8);
      v34 = v43;
      sub_2207AF040(v24, v35, v43);
      (*(v32 + 8))(v14, v8);
      (*(v21 + 8))(v28, v20);
      v33 = 0;
      goto LABEL_7;
    }

    (*(v21 + 8))(v28, v20);
    v29 = &qword_281296BC0;
    v30 = MEMORY[0x277D31F38];
    v31 = v7;
  }

  sub_2204C5F44(v31, v29, v30);
  v33 = 1;
  v34 = v43;
LABEL_7:
  sub_220488B20(0);
  return (*(*(v36 - 8) + 56))(v34, v33, 1, v36);
}

_BYTE *sub_220505B0C(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v20 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v20 = a2 - 1;
        }

        *v19 = v20;
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

unint64_t sub_220505CDC()
{
  result = qword_281297A90;
  if (!qword_281297A90)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_281297A90);
  }

  return result;
}

uint64_t sub_220505D40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_220505DA8()
{
  v1 = v0;
  v2 = sub_22088FD8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = (&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_220505FF8(v1, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = v10[2];
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    sub_22088FD6C();
    v11 = v12;
    (*(v3 + 8))(v6, v2);
  }

  return v11;
}

uint64_t sub_220505F38(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220452F80();
  result = sub_2208884CC();
  if (result)
  {
    sub_220887FEC();
    swift_allocObject();
    sub_2204535F8(&unk_281298BD0, sub_220452F80);
    return sub_220887FDC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220505FF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ForYouFeedLayoutModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_22050605C()
{
  if (!qword_2812979F0)
  {
    type metadata accessor for ForYouFeedLayoutSectionDescriptor(255);
    type metadata accessor for ForYouFeedLayoutModel();
    sub_2204B6C2C(qword_2812835B0, type metadata accessor for ForYouFeedLayoutSectionDescriptor);
    sub_2204B6C2C(qword_28128DE08, type metadata accessor for ForYouFeedLayoutModel);
    v0 = sub_22088C36C();
    if (!v1)
    {
      atomic_store(v0, &qword_2812979F0);
    }
  }
}

uint64_t sub_220506148(void *a1, uint64_t (*a2)(void), void (*a3)(void), uint64_t (*a4)(uint64_t))
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204536AC();
  result = sub_2208884CC();
  if (result)
  {
    v9 = a2();

    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220446A58(0, &qword_281297C50);
    result = sub_2208884DC();
    if (v10)
    {
      a3(0);
      swift_allocObject();
      return a4(v9);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_220506264(uint64_t a1)
{
  sub_22050632C(0, &qword_28127E950, sub_2204FA2D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_22050632C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_22050639C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_2812989E8);
  result = sub_2208884DC();
  if (v6)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2204536AC();
    result = sub_2208884CC();
    if (result)
    {
      v3 = sub_220887BBC();

      type metadata accessor for AudioListeningProgressRecorder();
      swift_allocObject();
      v4 = sub_2205064C8(v5, v3);

      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2205064C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_22048D2F4();
  sub_2208922FC();
  sub_22088A85C();
  *(v2 + 16) = a2;
  v6 = swift_allocObject();
  swift_weakInit();
  sub_22046DA2C(a1, &v9);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  sub_220457328(&v9, v7 + 24);

  sub_22088869C();

  __swift_project_boxed_opaque_existential_1(&v9, v10);

  sub_2208882EC();

  __swift_destroy_boxed_opaque_existential_1(a1);
  __swift_destroy_boxed_opaque_existential_1(&v9);
  return v3;
}

uint64_t sub_2205065FC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_220506634()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_220506674(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204536AC();
  result = sub_2208884CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_220887BBC();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22044D56C(0, &qword_28127E830);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2208880AC();
  result = sub_2208884CC();
  if (result)
  {
    v4 = result;
    type metadata accessor for AudioPlayingItemHistoryRecorder();
    v5 = swift_allocObject();
    v6 = swift_allocObject();
    *(v6 + 16) = v3;
    *(v6 + 24) = v4;
    v7 = v3;

    sub_22088869C();

    __swift_project_boxed_opaque_existential_1(v8, v8[3]);

    sub_2208882EC();

    __swift_destroy_boxed_opaque_existential_1(v8);
    return v5;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_220506838()
{

  return swift_deallocObject();
}

uint64_t type metadata accessor for ForYouTitleViewLayoutOptions()
{
  result = qword_281287420;
  if (!qword_281287420)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2205068C4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204536AC();
  result = sub_2208884CC();
  if (result)
  {
    sub_220887BEC();

    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220446A58(0, &qword_281297C50);
    result = sub_2208884DC();
    if (v7)
    {
      v3 = v8;
      type metadata accessor for AudioTrackCompletionHandler();
      v4 = swift_allocObject();
      v5 = swift_allocObject();
      *(v5 + 16) = v7;
      *(v5 + 24) = v3;
      swift_unknownObjectRetain();
      sub_22088868C();

      __swift_project_boxed_opaque_existential_1(v6, v6[3]);

      sub_2208882EC();

      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1(v6);
      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_220506A4C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

id sub_220506ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v192 = a4;
  v188 = a3;
  v186 = a1;
  v173 = sub_22088B8CC();
  v175 = *(v173 - 8);
  MEMORY[0x28223BE20](v173, v4);
  v172 = (&v155 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6, v7);
  v174 = (&v155 - v8);
  v179 = sub_22088C5AC();
  v178 = *(v179 - 8);
  MEMORY[0x28223BE20](v179, v9);
  v177 = &v155 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = sub_2208854AC();
  v190 = *(v185 - 8);
  MEMORY[0x28223BE20](v185, v11);
  v180 = v12;
  v183 = &v155 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22051D97C();
  v14 = v13;
  v15 = *(v13 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13, v17);
  v18 = sub_22088FACC();
  v184 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v19);
  v181 = (&v155 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v21, v22);
  v187 = &v155 - v23;
  v24 = sub_22088FD8C();
  v189 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v155 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for ForYouFeedLayoutModel();
  MEMORY[0x28223BE20](v28, v29);
  v31 = (&v155 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2204F63C4();
  sub_22088BC3C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v32 = *v31;
    v189 = *(v31 + 1);
    v190 = v32;
    v33 = v31[6];
    v34 = v31[7];
    v35 = v31[8];
    v36 = v31[9];
    sub_2205144F4();
    v37 = sub_220891C1C();
    v38 = v191;
    swift_beginAccess();
    v40 = v38[7];
    v39 = v38[8];
    v41 = __swift_project_boxed_opaque_existential_1(v38 + 4, v40);
    v42 = *(v40 - 8);
    v43 = MEMORY[0x28223BE20](v41, v41);
    v45 = &v155 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v42 + 16))(v45, v43);
    v46 = *(v39 + 16);
    v47 = *(v46 + 472);
    v48 = v37;
    v49 = v47(v40, v46);
    (*(v42 + 8))(v45, v40);
    [v48 setBackgroundColor_];

    v50 = v38[11];
    v51 = sub_22088B9EC();
    v52 = OBJC_IVAR____TtC8StocksUI11PlacardView_messageLabel;
    [*&v51[OBJC_IVAR____TtC8StocksUI11PlacardView_messageLabel] setFrame_];
    v53 = *&v51[v52];
    v54 = sub_22089132C();
    [v53 setText_];

    swift_beginAccess();
    v55 = __swift_project_boxed_opaque_existential_1((v50 + 16), *(v50 + 40));
    v56 = *&v51[v52];
    v57 = *v55;
    sub_220561394();
    v58 = sub_220891F2C();
    [v56 setFont_];

    v60 = v57[5];
    v59 = v57[6];
    __swift_project_boxed_opaque_existential_1(v57 + 2, v60);
    v61 = (*(*(v59 + 16) + 40))(v60);
    [v56 setTextColor_];
  }

  else
  {
    v62 = *(v189 + 32);
    v182 = v27;
    v62(v27, v31, v24);
    v169 = v191[9];
    v171 = v24;
    v176 = v18;
    v170 = v191[10];
    ObjectType = swift_getObjectType();
    v63 = swift_allocObject();
    swift_weakInit();
    v64 = *(v15 + 16);
    v65 = &v155 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    v164 = v15 + 16;
    v163 = v64;
    v64(v65, v186, v14);
    v66 = v190;
    v67 = *(*&v190 + 16);
    v68 = v183;
    v69 = v185;
    v162 = *&v190 + 16;
    v161 = v67;
    v67(v183, v192, v185);
    v70 = *(v15 + 80);
    v71 = (v70 + 24) & ~v70;
    v72 = *(*&v66 + 80);
    v73 = (v16 + v72 + v71) & ~v72;
    v159 = v70 | v72;
    v160 = v73 + v180;
    v74 = swift_allocObject();
    *(v74 + 16) = v63;
    v75 = *(v15 + 32);
    v165 = v71;
    v166 = v65;
    v180 = v14;
    v167 = v15 + 32;
    v158 = v75;
    v75(v74 + v71, v65, v14);
    v76 = *(*&v66 + 32);
    v156 = v73;
    *&v190 = *&v66 + 32;
    v157 = v76;
    v76(v74 + v73, v68, v69);

    v77 = v187;
    v78 = v176;
    v79 = v184;
    sub_22088F8EC();

    v80 = v181;
    (*(v79 + 16))(v181, v77, v78);
    v81 = (*(v79 + 88))(v80, v78);
    if (v81 == *MEMORY[0x277D32538])
    {
      (*(v79 + 96))(v80, v78);
      v82 = *v80;
      v83 = v191;
      swift_beginAccess();
      v84 = v79;
      v85 = v83[7];
      v86 = v83[8];
      v87 = __swift_project_boxed_opaque_existential_1(v83 + 4, v85);
      v88 = *(v85 - 8);
      v89 = MEMORY[0x28223BE20](v87, v87);
      v91 = &v155 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v88 + 16))(v91, v89);
      v92 = *(v86 + 16);
      v93 = *(v92 + 472);
      v48 = v82;
      v94 = v93(v85, v92);
      (*(v88 + 8))(v91, v85);
      [v48 setBackgroundColor_];

      v95 = sub_22088B9CC();
      v96 = v83[7];
      v97 = v83[8];
      v98 = __swift_project_boxed_opaque_existential_1(v83 + 4, v96);
      v99 = *(v96 - 8);
      v100 = MEMORY[0x28223BE20](v98, v98);
      v102 = &v155 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v99 + 16))(v102, v100);
      v103 = (*(*(v97 + 16) + 104))(v96);
      (*(v99 + 8))(v102, v96);
      [v95 setBackgroundColor_];

      v104 = sub_22088B9CC();
      v105 = [v104 layer];

      [v105 setCornerCurve_];
      v106 = sub_22088B9CC();
      sub_22088C58C();

      v107 = sub_22088B9CC();
      sub_22088C59C();

      v108 = sub_22088B9CC();
      (*(v178 + 104))(v177, *MEMORY[0x277D6DEE8], v179);
      sub_22088C5BC();

      v109 = [v48 layer];
      [v109 setCornerRadius_];

      [v48 setClipsToBounds_];
      (*(v84 + 8))(v187, v176);
      (*(v189 + 8))(v182, v171);
    }

    else if (v81 == *MEMORY[0x277D32540])
    {
      (*(v79 + 96))(v80, v78);
      v110 = *v80;
      v111 = swift_allocObject();
      v112 = sub_22088C91C();
      v113 = MEMORY[0x277D6E038];
      v111[5] = v112;
      v111[6] = v113;
      __swift_allocate_boxed_opaque_existential_1(v111 + 2);
      sub_22088C90C();
      v114 = v174;
      *v174 = v111;
      v115 = v175;
      v116 = *(v175 + 104);
      v117 = v173;
      v116(v114, *MEMORY[0x277D6D928], v173);
      sub_2205F3680();
      v119 = v118;
      v120 = swift_allocBox();
      v122 = v121;
      v123 = *(v119 + 48);
      v124 = *(v115 + 16);
      v124(v121, v114, v117);
      v124(v122 + v123, v114, v117);
      v125 = v172;
      *v172 = v120;
      v116(v125, *MEMORY[0x277D6D930], v117);
      sub_22088B9DC();
      v126 = sub_22088B9CC();
      v127 = v191;
      swift_beginAccess();
      v128 = v127[7];
      v129 = v127[8];
      v130 = __swift_project_boxed_opaque_existential_1(v127 + 4, v128);
      v131 = *(v128 - 8);
      v132 = MEMORY[0x28223BE20](v130, v130);
      v134 = &v155 - ((v133 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v131 + 16))(v134, v132);
      v135 = (*(*(v129 + 16) + 104))(v128);
      (*(v131 + 8))(v134, v128);
      [v126 setBackgroundColor_];

      v136 = sub_22088B9CC();
      v137 = [v136 layer];

      [v137 setCornerCurve_];
      v138 = sub_22088B9CC();
      sub_22088C58C();

      v139 = sub_22088B9CC();
      sub_22088C59C();

      v140 = sub_22088B9CC();
      (*(v178 + 104))(v177, *MEMORY[0x277D6DEE8], v179);
      sub_22088C5BC();

      v141 = sub_22088B9EC();
      v142 = sub_22089027C();

      v143 = sub_220890C1C();
      v144 = swift_allocObject();
      swift_weakInit();
      v145 = v166;
      v146 = v180;
      v163(v166, v186, v180);
      v147 = v183;
      v148 = v185;
      v161(v183, v192, v185);
      v149 = swift_allocObject();
      *(v149 + 16) = v144;
      v158(v149 + v165, v145, v146);
      v157(v149 + v156, v147, v148);
      aBlock[4] = sub_220723508;
      aBlock[5] = v149;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2204C35E8;
      aBlock[3] = &block_descriptor_36;
      v150 = _Block_copy(aBlock);

      [v143 onTouchUpInside_];
      _Block_release(v150);

      v48 = v110;
      v151 = [v48 layer];
      [v151 setCornerRadius_];

      [v48 setClipsToBounds_];
      (*(v175 + 8))(v174, v117);
      (*(v184 + 8))(v187, v176);
      (*(v189 + 8))(v182, v171);
    }

    else
    {
      v48 = sub_22088FABC();
      v152 = [v48 layer];
      [v152 setCornerRadius_];

      [v48 setClipsToBounds_];
      v153 = *(v79 + 8);
      v153(v77, v78);
      (*(v189 + 8))(v182, v171);
      v153(v80, v78);
    }
  }

  return v48;
}

uint64_t sub_220507E00()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_220507E38()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_220507E78(uint64_t a1, void *a2)
{
  sub_220886FBC();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2208870FC();
  result = sub_2208884CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  sub_22088706C();

  sub_220886FBC();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_22088718C();
  result = sub_22088848C();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_22088706C();
}

uint64_t sub_220507FA0()
{
  v1 = (*v0 + OBJC_IVAR____TtC8StocksUI10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 104))(v2, v3);
}

uint64_t sub_220508000()
{
  v0 = sub_22088719C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = (&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2208870FC();
  *v4 = 11;
  (*(v1 + 104))(v4, *MEMORY[0x277CEAE08], v0);
  return sub_2208870EC();
}

uint64_t sub_2205080E4@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  sub_22047A3A8(0, &qword_2812994E0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v3 = sub_22088698C();
  v42 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v41 - v9;
  sub_220508808();
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220454720();
  v16 = v15;
  v17 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for ForYouFeedModel();
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204FF294(v43, v24);
  result = swift_getEnumCaseMultiPayload();
  if (result > 2)
  {
    if (result > 4)
    {
      if (result != 5)
      {
        goto LABEL_9;
      }
    }

    else if (result == 3)
    {

      sub_220458918();
      v27 = *(v26 + 48);
      v28 = sub_22089030C();
      result = (*(*(v28 - 8) + 8))(&v24[v27], v28);
LABEL_9:
      v30 = v44;
      *(v44 + 32) = 0;
      *v30 = 0u;
      v30[1] = 0u;
      return result;
    }

LABEL_8:
    result = sub_220503C2C(v24, type metadata accessor for ForYouFeedModel);
    goto LABEL_9;
  }

  v29 = v42;
  v43 = v14;
  if (result)
  {
    goto LABEL_8;
  }

  v41 = v17;
  v31 = v20;
  (*(v17 + 32))(v20, v24, v16);
  sub_22088FF6C();
  sub_2208868DC();
  v32 = *(v29 + 8);
  v33 = v3;
  v34 = v20;
  v32(v10, v33);
  sub_22088FF6C();
  sub_2208868DC();
  v32(v6, v33);
  swift_getObjectType();
  sub_220891DCC();
  swift_unknownObjectRelease();
  v35 = v43;
  sub_22089031C();
  v36 = sub_22089033C();
  v37 = *(v36 - 8);
  if ((*(v37 + 48))(v35, 1, v36) == 1)
  {
    (*(v41 + 8))(v31, v16);
    result = sub_220503C2C(v35, sub_220508808);
    v38 = v44;
    *v44 = 0u;
    *(v38 + 16) = 0u;
    *(v38 + 32) = 0;
  }

  else
  {
    v39 = v44;
    *(v44 + 24) = v36;
    v39[4] = sub_2204588D0(&unk_2812968F0, MEMORY[0x277D33410]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v39);
    (*(v37 + 32))(boxed_opaque_existential_1, v35, v36);
    return (*(v41 + 8))(v34, v16);
  }

  return result;
}

uint64_t sub_2205085F0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2208871FC();
  result = sub_2208884CC();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_22044869C(0, &qword_281298C58);
    result = sub_2208884CC();
    if (result)
    {
      sub_22088718C();
      sub_22088714C();
      v3 = sub_22088713C();
      sub_220886AAC();
      sub_2204FA080(&qword_2812946C8, v4, type metadata accessor for MediaAssembly);
      sub_220886B3C();

      v5 = sub_22088712C();

      sub_220886ACC();
      sub_220886B3C();

      v6 = sub_22088710C();

      sub_220886ABC();
      sub_220886B3C();

      sub_22088711C();

      return sub_22088717C();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_220508808()
{
  if (!qword_2812968E8)
  {
    sub_22089033C();
    v0 = sub_22089230C();
    if (!v1)
    {
      atomic_store(v0, &qword_2812968E8);
    }
  }
}

uint64_t sub_220508860(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_2812991A0);
  result = sub_2208884DC();
  if (v2)
  {
    sub_22088958C();
    swift_allocObject();
    return sub_22088957C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2205088F8(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for ForYouFeedViewController();
  v2 = sub_2208884CC();
  if (v2)
  {
    v3 = v2;
    swift_unknownObjectWeakAssign();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_220508980()
{
  v0 = sub_2208900AC();
  v36 = *(v0 - 8);
  v37 = v0;
  MEMORY[0x28223BE20](v0, v1);
  v3 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22089030C();
  v34 = *(v4 - 8);
  v35 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204547E0();
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220454720();
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for ForYouFeedModel();
  MEMORY[0x28223BE20](v20, v21);
  v23 = (&v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2204FF294(v38, v23);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v29 = v10;
        (*(v10 + 32))(v13, v23, v9);
        v28 = sub_22088FF4C();
        (*(v29 + 8))(v13, v9);
      }

      else
      {
        v28 = *v23;
      }
    }

    else
    {
      (*(v16 + 32))(v19, v23, v15);
      v28 = sub_22088FF4C();
      (*(v16 + 8))(v19, v15);
    }
  }

  else if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      v31 = v36;
      v30 = v37;
      (*(v36 + 32))(v3, v23, v37);
      v28 = sub_22089007C();
      (*(v31 + 8))(v3, v30);
    }

    else
    {
      return 0x6175676E696C6962;
    }
  }

  else if (EnumCaseMultiPayload == 3)
  {

    sub_220458918();
    v27 = v34;
    v26 = v35;
    (*(v34 + 32))(v7, v23 + *(v25 + 48), v35);
    v28 = sub_2208902AC();
    (*(v27 + 8))(v7, v26);
  }

  else
  {
    sub_220503C2C(v23, type metadata accessor for ForYouFeedModel);
    return 0x64726163616C70;
  }

  return v28;
}

uint64_t sub_220508DF0(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_220446A58(0, &qword_281298738);
  result = sub_2208884DC();
  if (!v7)
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_220457328(&v6, v8);
  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  sub_220509088(&unk_28128F1A0);
  sub_220888BFC();
  __swift_destroy_boxed_opaque_existential_1(&v6);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_220446A58(0, &unk_2812992B0);
  result = sub_2208884DC();
  if (!v5)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_220457328(&v4, &v6);
  __swift_project_boxed_opaque_existential_1(&v6, v7);
  sub_220509088(&qword_28128F1B0);
  sub_220885E1C();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_220509374();
  result = sub_2208884CC();
  if (result)
  {
    swift_allocObject();
    swift_weakInit();
    sub_22088ED2C();

    __swift_project_boxed_opaque_existential_1(&v4, v5);
    sub_2208882EC();

    __swift_destroy_boxed_opaque_existential_1(&v4);
    __swift_destroy_boxed_opaque_existential_1(&v6);
    return __swift_destroy_boxed_opaque_existential_1(v8);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_22050904C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_220509088(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_220487E40(255, &qword_28128F198, type metadata accessor for ForYouFeedBlueprintModifierFactory, sub_220487EE4, type metadata accessor for ForYouFeedInteractor);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_220509110(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](v2, a2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204FF294(v5, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload == 4)
    {
      goto LABEL_8;
    }

    if (EnumCaseMultiPayload != 5)
    {
      return 0;
    }

LABEL_7:
    sub_220503C2C(v4, type metadata accessor for ForYouFeedModel);
    return 1;
  }

  if (EnumCaseMultiPayload < 2)
  {
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload == 2)
  {
LABEL_8:
    sub_220503C2C(v4, type metadata accessor for ForYouFeedModel);
    return 0;
  }

  sub_220458918();
  v8 = *(v7 + 48);
  v9 = sub_22089030C();
  (*(*(v9 - 8) + 8))(&v4[v8], v9);
  return 0;
}

uint64_t sub_22050924C()
{
  v1 = type metadata accessor for ForYouFeedModel();
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204FF294(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload != 5)
    {
      return sub_220508980();
    }

LABEL_7:
    sub_220503C2C(v4, type metadata accessor for ForYouFeedModel);
    return sub_220508980();
  }

  if (EnumCaseMultiPayload != 3)
  {
    goto LABEL_7;
  }

  sub_220458918();
  v7 = *(v6 + 48);
  v8 = sub_22089030C();
  (*(*(v8 - 8) + 8))(&v4[v7], v8);
  return sub_220508980();
}

void sub_220509374()
{
  if (!qword_281296D38)
  {
    sub_22088ED4C();
    sub_22088ED8C();
    sub_22088EE1C();
    sub_2208900AC();
    sub_2204445B4(&qword_281296D30, MEMORY[0x277D2D560]);
    sub_2204445B4(&qword_281296930, MEMORY[0x277D33038]);
    v0 = sub_22088ED3C();
    if (!v1)
    {
      atomic_store(v0, &qword_281296D38);
    }
  }
}

uint64_t sub_22050949C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

uint64_t sub_2205095E8(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_220489AF0();
  result = sub_2208884CC();
  if (result)
  {
    v6[0] = result;
    sub_22050DF9C();
    swift_allocObject();
    sub_22044E43C(&qword_281297270, sub_220489AF0);
    sub_22088CE4C();
    sub_22088B6CC();

    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_220446A58(0, &qword_281296A18);
    result = sub_2208884DC();
    if (v5)
    {
      sub_220457328(&v4, v6);
      __swift_project_boxed_opaque_existential_1(v6, v6[3]);
      sub_2204884CC();
      sub_22088FDAC();
      return __swift_destroy_boxed_opaque_existential_1(v6);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22050977C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v215 = a4;
  v213 = a3;
  v4 = type metadata accessor for StockSectionFooterViewModel();
  v188 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v190 = &v187 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = v6;
  MEMORY[0x28223BE20](v7, v8);
  v195 = &v187 - v9;
  v193 = type metadata accessor for ForYouFeedLayoutSectionDescriptor.StockSectionFooter(0);
  MEMORY[0x28223BE20](v193, v10);
  v194 = &v187 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v204 = &v187 - v14;
  v15 = type metadata accessor for ForYouFeedLayoutSectionDescriptor.Footer(0);
  v196 = *(v15 - 8);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v201 = &v187 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v19);
  v202 = &v187 - v20;
  v207 = sub_2208854AC();
  v206 = *(v207 - 8);
  MEMORY[0x28223BE20](v207, v21);
  v205 = &v187 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v210 = sub_22088FE7C();
  v209 = *(v210 - 8);
  MEMORY[0x28223BE20](v210, v23);
  v208 = &v187 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for ForYouFeedLayoutSectionDescriptor.Header(0);
  v198 = *(v25 - 8);
  MEMORY[0x28223BE20](v25 - 8, v26);
  v199 = &v187 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v29);
  v200 = &v187 - v30;
  sub_220488B20(0);
  v212 = v31;
  v203 = *(v31 - 1);
  MEMORY[0x28223BE20](v31, v32);
  v34 = &v187 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35, v36);
  v192 = &v187 - v37;
  MEMORY[0x28223BE20](v38, v39);
  v187 = &v187 - v40;
  v217 = sub_22088D61C();
  v216 = *(v217 - 1);
  MEMORY[0x28223BE20](v217, v41);
  v43 = &v187 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44, v45);
  v47 = &v187 - v46;
  MEMORY[0x28223BE20](v48, v49);
  v197 = &v187 - v50;
  MEMORY[0x28223BE20](v51, v52);
  v54 = &v187 - v53;
  v55 = type metadata accessor for ForYouFeedLayoutSectionDescriptor.LegacyHeader(0);
  v191 = *(v55 - 8);
  MEMORY[0x28223BE20](v55 - 8, v56);
  v58 = &v187 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204889B0(0);
  MEMORY[0x28223BE20](v59 - 8, v60);
  v62 = &v187 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v63, v64);
  v66 = &v187 - v65;
  MEMORY[0x28223BE20](v67, v68);
  v211 = &v187 - v69;
  v70 = type metadata accessor for ForYouFeedLayoutSectionDescriptor(0);
  MEMORY[0x28223BE20](v70, v71);
  v73 = &v187 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22050605C();
  sub_22088C34C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      goto LABEL_55;
    }

    v85 = v34;
    sub_22050C10C(v73, v34, sub_220488B20);
    v86 = *&v34[*(v212 + 7)];
    v87 = *&v34[*(v212 + 8)];
    sub_22088D42C();
    v88 = (*(v216 + 88))(v43, v217);
    if (v88 == *MEMORY[0x277D6E758])
    {
      v89 = sub_22088D43C();
      if ((v89 & 0x8000000000000000) != 0)
      {
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      if (v89 >= *(v86 + 16))
      {
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v90 = v200;
      sub_22050D09C(v86 + ((*(v198 + 80) + 32) & ~*(v198 + 80)) + *(v198 + 72) * v89, v200, type metadata accessor for ForYouFeedLayoutSectionDescriptor.Header);
      v91 = v199;
      sub_22050D09C(v90, v199, type metadata accessor for ForYouFeedLayoutSectionDescriptor.Header);
      v92 = v209;
      v93 = v208;
      v94 = v210;
      (*(v209 + 32))(v208, v91, v210);
      __swift_project_boxed_opaque_existential_1(v214 + 12, v214[15]);
      v95 = sub_22088FEBC();
      (*(v92 + 8))(v93, v94);
      v96 = type metadata accessor for ForYouFeedLayoutSectionDescriptor.Header;
    }

    else
    {
      if (v88 != *MEMORY[0x277D6E750])
      {
        goto LABEL_55;
      }

      v102 = sub_22088D43C();
      v103 = *(v86 + 16);
      v104 = __OFSUB__(v102, v103);
      v105 = v102 - v103;
      if (v104)
      {
        goto LABEL_47;
      }

      if ((v105 & 0x8000000000000000) != 0)
      {
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      if (v105 >= *(v87 + 16))
      {
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      v90 = v202;
      sub_22050D09C(v87 + ((*(v196 + 80) + 32) & ~*(v196 + 80)) + *(v196 + 72) * v105, v202, type metadata accessor for ForYouFeedLayoutSectionDescriptor.Footer);
      v106 = v201;
      sub_22050D09C(v90, v201, type metadata accessor for ForYouFeedLayoutSectionDescriptor.Footer);
      v107 = v209;
      v108 = v208;
      v109 = v210;
      (*(v209 + 32))(v208, v106, v210);
      __swift_project_boxed_opaque_existential_1(v214 + 12, v214[15]);
      v95 = sub_22088FEBC();
      (*(v107 + 8))(v108, v109);
      v96 = type metadata accessor for ForYouFeedLayoutSectionDescriptor.Footer;
    }

    v110 = v96;
    v111 = v90;
LABEL_20:
    sub_22051432C(v111, v110);
    v112 = sub_220488B20;
    v113 = v85;
LABEL_43:
    sub_22051432C(v113, v112);
    return v95;
  }

  if (EnumCaseMultiPayload)
  {
    sub_22048934C();
    v98 = *&v73[*(v97 + 48)];
    v99 = v204;
    sub_22050C10C(&v73[*(v97 + 64)], v204, type metadata accessor for ForYouFeedLayoutSectionDescriptor.StockSectionFooter);
    sub_22088D42C();
    v100 = (*(v216 + 88))(v47, v217);
    if (v100 == *MEMORY[0x277D6E758])
    {
      v101 = v205;
      sub_22088D44C();
      v95 = sub_22050C174(v98, v213);

      (*(v206 + 8))(v101, v207);
    }

    else
    {
      if (v100 != *MEMORY[0x277D6E750])
      {
        goto LABEL_55;
      }

      v114 = v194;
      sub_22050D09C(v99, v194, type metadata accessor for ForYouFeedLayoutSectionDescriptor.StockSectionFooter);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_220489428();
        v125 = v114 + *(v124 + 48);
        v126 = *(v125 + 128);
        v127 = *(v125 + 144);
        v128 = *(v125 + 96);
        v219[6] = *(v125 + 112);
        v219[7] = v126;
        v219[8] = v127;
        v220 = *(v125 + 160);
        v129 = *(v125 + 80);
        v219[3] = *(v125 + 64);
        v219[4] = v129;
        v219[5] = v128;
        v130 = *(v125 + 16);
        v218 = *v125;
        v131 = *(v125 + 32);
        v219[2] = *(v125 + 48);
        v219[0] = v130;
        v219[1] = v131;
        v212 = type metadata accessor for StockSectionFooterViewModel;
        sub_22050C10C(v114, v195, type metadata accessor for StockSectionFooterViewModel);
        sub_220515E30();
        v132 = v197;
        sub_22088D42C();
        v133 = v205;
        sub_22088D44C();
        v134 = sub_220891C0C();
        (*(v206 + 8))(v133, v207);
        (*(v216 + 8))(v132, v217);
        v135 = v214;
        swift_beginAccess();
        v136 = v135[20];
        v137 = v135[21];
        v138 = __swift_project_boxed_opaque_existential_1(v135 + 17, v136);
        v217 = &v187;
        v139 = *(v136 - 8);
        v140 = MEMORY[0x28223BE20](v138, v138);
        v142 = &v187 - ((v141 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v139 + 16))(v142, v140);
        v143 = *(v137 + 16);
        v144 = *(v143 + 96);
        v95 = v134;
        v145 = v144(v136, v143);
        (*(v139 + 8))(v142, v136);
        [v95 setBackgroundColor_];

        v146 = sub_22088C3AC();
        v147 = *&v146[OBJC_IVAR____TtC8StocksUI22StockSectionFooterView_onTap];

        swift_unownedRetainStrong();
        swift_unownedRetain();

        v148 = v195;
        v149 = v190;
        sub_22050D09C(v195, v190, type metadata accessor for StockSectionFooterViewModel);
        v150 = (*(v188 + 80) + 24) & ~*(v188 + 80);
        v151 = swift_allocObject();
        *(v151 + 16) = v135;
        sub_22050C10C(v149, v151 + v150, v212);

        v152 = sub_22088C3AC();
        sub_220826F48(v148, &v218, v152);
        sub_2205DD014(&v218);

        sub_22051432C(v148, type metadata accessor for StockSectionFooterViewModel);
        v120 = v204;
        goto LABEL_29;
      }

      v115 = v202;
      sub_22050C10C(v114, v202, type metadata accessor for ForYouFeedLayoutSectionDescriptor.Footer);
      v116 = v201;
      sub_22050D09C(v115, v201, type metadata accessor for ForYouFeedLayoutSectionDescriptor.Footer);
      v117 = v209;
      v118 = v208;
      v119 = v210;
      (*(v209 + 32))(v208, v116, v210);
      __swift_project_boxed_opaque_existential_1(v214 + 12, v214[15]);
      v95 = sub_22088FEBC();
      (*(v117 + 8))(v118, v119);
      sub_22051432C(v115, type metadata accessor for ForYouFeedLayoutSectionDescriptor.Footer);
    }

    v120 = v99;
LABEL_29:
    sub_22051432C(v120, type metadata accessor for ForYouFeedLayoutSectionDescriptor.StockSectionFooter);
    v112 = sub_2204889B0;
    v113 = v73;
    goto LABEL_43;
  }

  sub_2205DD068(0, &qword_281283710, sub_2204889B0, type metadata accessor for ForYouFeedLayoutSectionDescriptor.LegacyHeader);
  v76 = *(v75 + 48);
  v77 = v211;
  sub_22050C10C(v73, v211, sub_2204889B0);
  v78 = v58;
  sub_22050C10C(&v73[v76], v58, type metadata accessor for ForYouFeedLayoutSectionDescriptor.LegacyHeader);
  v79 = sub_22088D43C();
  v80 = v79 - 1;
  if (__OFSUB__(v79, 1))
  {
    __break(1u);
    goto LABEL_46;
  }

  sub_22088D42C();
  v81 = (*(v216 + 88))(v54, v217);
  if (v81 == *MEMORY[0x277D6E758])
  {
    sub_22050D09C(v77, v66, sub_2204889B0);
    v82 = v212;
    if ((*(v203 + 48))(v66, 1, v212) == 1)
    {
      v83 = sub_2204889B0;
      v84 = v66;
LABEL_41:
      sub_22051432C(v84, v83);
      sub_2204889FC(0, &qword_28127DF38, type metadata accessor for ForYouFeedLayoutSectionDescriptor.LegacyHeader, MEMORY[0x277D84560]);
      v183 = (*(v191 + 80) + 32) & ~*(v191 + 80);
      v184 = swift_allocObject();
      *(v184 + 16) = xmmword_220899360;
      sub_22050D09C(v78, v184 + v183, type metadata accessor for ForYouFeedLayoutSectionDescriptor.LegacyHeader);
      v185 = v205;
      sub_22088D44C();
      v95 = sub_22050C174(v184, v213);
      swift_setDeallocating();
      sub_22051432C(v184 + v183, type metadata accessor for ForYouFeedLayoutSectionDescriptor.LegacyHeader);
      swift_deallocClassInstance();
      (*(v206 + 8))(v185, v207);
      sub_22051432C(v78, type metadata accessor for ForYouFeedLayoutSectionDescriptor.LegacyHeader);
      v112 = sub_2204889B0;
      v168 = &v221;
      goto LABEL_42;
    }

    v85 = v187;
    sub_22050C10C(v66, v187, sub_220488B20);
    if (sub_22088D43C() < 1)
    {
      v83 = sub_220488B20;
      v84 = v85;
      goto LABEL_41;
    }

    if ((v80 & 0x8000000000000000) == 0)
    {
      v153 = *(v85 + *(v82 + 7));
      if (v80 < *(v153 + 16))
      {
        v154 = v200;
        sub_22050D09C(v153 + ((*(v198 + 80) + 32) & ~*(v198 + 80)) + *(v198 + 72) * v80, v200, type metadata accessor for ForYouFeedLayoutSectionDescriptor.Header);
        v155 = v199;
        sub_22050D09C(v154, v199, type metadata accessor for ForYouFeedLayoutSectionDescriptor.Header);
        v156 = v209;
        v157 = v208;
        v158 = v210;
        (*(v209 + 32))(v208, v155, v210);
        __swift_project_boxed_opaque_existential_1(v214 + 12, v214[15]);
        v95 = sub_22088FEBC();
        (*(v156 + 8))(v157, v158);
        sub_22051432C(v154, type metadata accessor for ForYouFeedLayoutSectionDescriptor.Header);
        sub_22051432C(v78, type metadata accessor for ForYouFeedLayoutSectionDescriptor.LegacyHeader);
        v110 = sub_2204889B0;
        v111 = v211;
        goto LABEL_20;
      }

      goto LABEL_53;
    }

LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (v81 == *MEMORY[0x277D6E750])
  {
    sub_22050D09C(v77, v62, sub_2204889B0);
    v121 = v212;
    if ((*(v203 + 48))(v62, 1, v212) == 1)
    {
      v122 = sub_2204889B0;
      v123 = v62;
      goto LABEL_39;
    }

    v159 = v192;
    sub_22050C10C(v62, v192, sub_220488B20);
    v160 = *(*(v159 + *(v121 + 7)) + 16);
    v104 = __OFSUB__(v80, v160);
    v161 = v80 - v160;
    if (!v104)
    {
      v162 = *(v159 + *(v121 + 8));
      if (v161 < *(v162 + 16))
      {
        if ((v161 & 0x8000000000000000) == 0)
        {
          v163 = v202;
          sub_22050D09C(v162 + ((*(v196 + 80) + 32) & ~*(v196 + 80)) + *(v196 + 72) * v161, v202, type metadata accessor for ForYouFeedLayoutSectionDescriptor.Footer);
          v164 = v201;
          sub_22050D09C(v163, v201, type metadata accessor for ForYouFeedLayoutSectionDescriptor.Footer);
          v165 = v209;
          v166 = v208;
          v167 = v210;
          (*(v209 + 32))(v208, v164, v210);
          __swift_project_boxed_opaque_existential_1(v214 + 12, v214[15]);
          v95 = sub_22088FEBC();
          (*(v165 + 8))(v166, v167);
          sub_22051432C(v163, type metadata accessor for ForYouFeedLayoutSectionDescriptor.Footer);
          sub_22051432C(v58, type metadata accessor for ForYouFeedLayoutSectionDescriptor.LegacyHeader);
          sub_22051432C(v211, sub_2204889B0);
          v112 = sub_220488B20;
          v168 = v219 + 8;
LABEL_42:
          v113 = *(v168 - 32);
          goto LABEL_43;
        }

        goto LABEL_54;
      }

      v122 = sub_220488B20;
      v123 = v159;
LABEL_39:
      sub_22051432C(v123, v122);
      sub_22051611C();
      v169 = v197;
      sub_22088D42C();
      v170 = v205;
      sub_22088D44C();
      v171 = sub_220891C0C();
      (*(v206 + 8))(v170, v207);
      (*(v216 + 8))(v169, v217);
      v172 = v214;
      swift_beginAccess();
      v173 = v172[20];
      v174 = v172[21];
      v175 = __swift_project_boxed_opaque_existential_1(v172 + 17, v173);
      v176 = *(v173 - 8);
      v177 = MEMORY[0x28223BE20](v175, v175);
      v179 = &v187 - ((v178 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v176 + 16))(v179, v177);
      v180 = *(v174 + 16);
      v181 = *(v180 + 96);
      v95 = v171;
      v182 = v181(v173, v180);
      (*(v176 + 8))(v179, v173);
      [v95 setBackgroundColor_];

      sub_22051432C(v58, type metadata accessor for ForYouFeedLayoutSectionDescriptor.LegacyHeader);
      sub_22051432C(v211, sub_2204889B0);
      return v95;
    }

LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

LABEL_55:
  result = sub_22089267C();
  __break(1u);
  return result;
}

uint64_t sub_22050B1B0()
{
  v1 = *(type metadata accessor for StockSectionFooterViewModel() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  swift_unownedRelease();
  v3 = v0 + v2;
  v4 = sub_22088685C();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);
  v5 = type metadata accessor for StockViewModel();
  v6 = v5[5];
  v7 = sub_22088676C();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v2 + v6, 1, v7))
  {
    (*(v8 + 8))(v3 + v6, v7);
  }

  v9 = v3 + v5[6];
  v10 = type metadata accessor for StockSparklineViewModel(0);
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {
    v11 = sub_220890D8C();
    (*(*(v11 - 8) + 8))(v9, v11);
    v12 = *(v10 + 32);
    v13 = sub_22088665C();
    (*(*(v13 - 8) + 8))(v9 + v12, v13);
  }

  v14 = v3 + v5[7];

  v15 = type metadata accessor for PriceViewModel();
  v16 = v15[9];
  v17 = sub_2208857EC();
  (*(*(v17 - 8) + 8))(v14 + v16, v17);
  v18 = v15[10];
  v19 = sub_22088699C();
  (*(*(v19 - 8) + 8))(v14 + v18, v19);
  v20 = v15[11];
  v21 = sub_2208852DC();
  (*(*(v21 - 8) + 8))(v14 + v20, v21);
  v22 = v5[8];
  v23 = sub_220885D4C();
  (*(*(v23 - 8) + 8))(v3 + v22, v23);

  return swift_deallocObject();
}

uint64_t sub_22050B4F4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204888A4();
  result = sub_2208884CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297378);
  result = sub_22088849C();
  if (!v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for ForYouFeedBlueprintLayoutBuilder();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220489C50();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088D84C();
  result = sub_22088848C();
  if (result)
  {
    sub_220489AF0();
    swift_allocObject();
    return sub_22088DE3C();
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_22050B6FC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_28127FBD0);
  result = sub_2208884DC();
  if (!v73)
  {
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_281280028);
  result = sub_2208884DC();
  if (!v71)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_28127F220);
  result = sub_2208884DC();
  if (!v69)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_28127FF70);
  result = sub_2208884BC();
  if (!v67)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_281280D78);
  result = sub_2208884DC();
  if (!v65)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281288E90);
  result = sub_2208884DC();
  if (!v63)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220489EA8(0, &qword_281296BB8, MEMORY[0x277D33AC8], MEMORY[0x277D33AC0], MEMORY[0x277D31F40]);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220890B0C();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_2208884DC();
  if (v61 == 2)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &unk_28128BFC0);
  sub_22088610C();
  sub_22088849C();

  if (!v60)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22044869C(0, &qword_28127E5C0);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v52 = result;
  v53 = v61;
  v54 = v4;
  v55 = v3;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299220);
  result = sub_2208884DC();
  if (v57)
  {
    v5 = v57;
    v50 = type metadata accessor for ForYouFeedBlueprintLayoutBuilder();
    v48 = v58;
    v6 = __swift_project_boxed_opaque_existential_1(v56, v5);
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v72, v73);
    v51 = v40;
    MEMORY[0x28223BE20](v7, v7);
    v47 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))();
    v10 = __swift_mutable_project_boxed_opaque_existential_1(v70, v71);
    v49 = v40;
    MEMORY[0x28223BE20](v10, v10);
    v45 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v12 + 16))();
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v68, v69);
    v46 = v40;
    MEMORY[0x28223BE20](v13, v13);
    v43 = v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v15 + 16))();
    v16 = __swift_mutable_project_boxed_opaque_existential_1(v66, v67);
    v44 = v40;
    MEMORY[0x28223BE20](v16, v16);
    v41 = v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v18 + 16))();
    v19 = __swift_mutable_project_boxed_opaque_existential_1(v64, v65);
    v42 = v40;
    MEMORY[0x28223BE20](v19, v19);
    v21 = v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v22 + 16))(v21);
    v23 = __swift_mutable_project_boxed_opaque_existential_1(v62, v63);
    v40[2] = v40;
    MEMORY[0x28223BE20](v23, v23);
    v25 = v40 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    v27 = (*(v26 + 16))(v25);
    v40[1] = v40;
    v28 = v5;
    MEMORY[0x28223BE20](v27, v29);
    v31 = v40 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v32 + 16))(v31, v6, v5);
    v33 = type metadata accessor for SectionHeaderViewLayoutAttributesFactory();
    v34 = type metadata accessor for StockSectionFooterViewLayoutAttributesFactory();
    v35 = type metadata accessor for PlacardViewLayoutAttributesFactory();
    v36 = type metadata accessor for StockTitleViewLayoutAttributesFactory();
    v37 = type metadata accessor for ForYouTitleViewLayoutAttributesFactory();
    v38 = type metadata accessor for MastheadMetricsFactory();
    v39 = sub_22050D77C(v47, v45, v43, v41, v21, v25, v55, v54, v53 & 1, &v59, v52, v31, v50, v33, v34, v35, v28, v36, v37, v38, &off_283425D20, &off_283416FF0, &off_283424018, v48, &off_2834205E0, &off_283421450, &off_283425F88);
    __swift_destroy_boxed_opaque_existential_1(v62);
    __swift_destroy_boxed_opaque_existential_1(v64);
    __swift_destroy_boxed_opaque_existential_1(v66);
    __swift_destroy_boxed_opaque_existential_1(v68);
    __swift_destroy_boxed_opaque_existential_1(v70);
    __swift_destroy_boxed_opaque_existential_1(v72);
    __swift_destroy_boxed_opaque_existential_1(v56);
    return v39;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_22050C10C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_22050C174(uint64_t a1, uint64_t *a2)
{
  v123 = a2;
  v119 = sub_2208848BC();
  MEMORY[0x28223BE20](v119, v3);
  v120 = &v108 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x277D83D88];
  sub_2204889FC(0, &qword_281299370, MEMORY[0x277D69178], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v117 = &v108 - v8;
  sub_2204889FC(0, &qword_2812990C0, MEMORY[0x277D697F8], v5);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v114 = &v108 - v11;
  v113 = sub_22088685C();
  v111 = *(v113 - 8);
  MEMORY[0x28223BE20](v113, v12);
  v110 = &v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22088564C();
  MEMORY[0x28223BE20](v14 - 8, v15);
  v112 = &v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_220885D0C();
  MEMORY[0x28223BE20](v118, v17);
  v115 = &v108 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for StockTitleViewModel();
  MEMORY[0x28223BE20](v19 - 8, v20);
  v116 = (&v108 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = type metadata accessor for StockTitleViewLayoutAttributes();
  MEMORY[0x28223BE20](v22 - 8, v23);
  v122 = (&v108 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v109 = type metadata accessor for StockViewModel();
  MEMORY[0x28223BE20](v109, v25);
  v108 = &v108 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v28);
  v121 = &v108 - v29;
  v30 = type metadata accessor for SectionHeaderViewLayoutAttributes();
  MEMORY[0x28223BE20](v30 - 8, v31);
  v33 = (&v108 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = sub_22088D61C();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34, v36);
  v38 = &v108 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for ForYouTitleViewLayoutAttributes();
  MEMORY[0x28223BE20](v39 - 8, v40);
  v42 = (&v108 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = type metadata accessor for ForYouFeedLayoutSectionDescriptor.LegacyHeader(0);
  v44 = *(v43 - 8);
  MEMORY[0x28223BE20](v43, v45);
  v47 = &v108 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_22088548C();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (result >= *(a1 + 16))
  {
LABEL_11:
    __break(1u);
    return result;
  }

  sub_22050D09C(a1 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * result, v47, type metadata accessor for ForYouFeedLayoutSectionDescriptor.LegacyHeader);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v50 = *v47;
      v121 = *(v47 + 1);
      v122 = v50;
      sub_2205143F0(0, &qword_28128C9B0, type metadata accessor for SectionHeaderViewLayoutAttributes);
      sub_22050C10C(&v47[*(v51 + 48)], v33, type metadata accessor for SectionHeaderViewLayoutAttributes);
      sub_220515440();
      (*(v35 + 104))(v38, *MEMORY[0x277D6E758], v34);
      v52 = sub_220891C0C();
      (*(v35 + 8))(v38, v34);
      v53 = v124;
      swift_beginAccess();
      v54 = v53[20];
      v55 = v53[21];
      v56 = __swift_project_boxed_opaque_existential_1(v53 + 17, v54);
      v123 = &v108;
      v57 = *(v54 - 8);
      v58 = MEMORY[0x28223BE20](v56, v56);
      v60 = &v108 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v57 + 16))(v60, v58);
      v61 = *(v55 + 16);
      v62 = *(v61 + 96);
      v63 = v52;
      v64 = v62(v54, v61);
      (*(v57 + 8))(v60, v54);
      [v63 setBackgroundColor_];

      v65 = sub_22088C3AC();
      sub_2207B0C28(v122, v121, v33, v65);

      v66 = type metadata accessor for SectionHeaderViewLayoutAttributes;
      v67 = v33;
    }

    else
    {
      sub_2205DD068(0, &qword_281293BD8, type metadata accessor for StockViewModel, type metadata accessor for StockTitleViewLayoutAttributes);
      v86 = *(v85 + 48);
      sub_22050C10C(v47, v121, type metadata accessor for StockViewModel);
      sub_22050C10C(&v47[v86], v122, type metadata accessor for StockTitleViewLayoutAttributes);
      sub_22050D104();
      (*(v35 + 104))(v38, *MEMORY[0x277D6E758], v34);
      v87 = sub_220891C0C();
      (*(v35 + 8))(v38, v34);
      v88 = v124;
      swift_beginAccess();
      v89 = v88[20];
      v90 = v88[21];
      v91 = __swift_project_boxed_opaque_existential_1(v88 + 17, v89);
      v92 = *(v89 - 8);
      v93 = MEMORY[0x28223BE20](v91, v91);
      v95 = &v108 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v92 + 16))(v95, v93);
      v96 = *(v90 + 16);
      v97 = *(v96 + 96);
      v63 = v87;
      v98 = v97(v89, v96);
      (*(v92 + 8))(v95, v89);
      [v63 setBackgroundColor_];

      v99 = v121;
      v100 = v108;
      sub_22050D09C(v121, v108, type metadata accessor for StockViewModel);
      __swift_project_boxed_opaque_existential_1(v88 + 22, v88[25]);
      v101 = sub_2208861AC();
      v102 = v116;
      sub_22050E1BC(v100, v101 & 1, v116);
      v103 = sub_22088C3AC();
      v104 = v122;
      sub_22050FD84(v102, v122, v103);

      (*(v111 + 16))(v110, v99, v113);
      sub_22088563C();
      sub_2204B1CA8(v99 + *(v109 + 20), v114);
      v105 = sub_2208855EC();
      (*(*(v105 - 8) + 56))(v117, 1, 1, v105);
      sub_220885CFC();
      v125 = MEMORY[0x277D84F90];
      sub_22044E244(&unk_281299518, MEMORY[0x277CB9BD0]);
      sub_2204A3830(0);
      sub_22044E244(&qword_28127EB68, sub_2204A3830);
      sub_2208923FC();
      v106 = objc_allocWithZone(sub_22088A63C());
      sub_22044E244(&qword_2812992F0, MEMORY[0x277D69440]);
      v107 = sub_22088A62C();
      sub_220891F7C();

      sub_22051432C(v102, type metadata accessor for StockTitleViewModel);
      sub_22051432C(v104, type metadata accessor for StockTitleViewLayoutAttributes);
      v66 = type metadata accessor for StockViewModel;
      v67 = v99;
    }

    sub_22051432C(v67, v66);
  }

  else
  {
    sub_2205143F0(0, &unk_28128F160, type metadata accessor for ForYouTitleViewLayoutAttributes);
    v69 = *(v68 + 48);
    v70 = *(v47 + 3);
    v126[2] = *(v47 + 2);
    v126[3] = v70;
    v126[4] = *(v47 + 4);
    v127 = *(v47 + 10);
    v71 = *(v47 + 1);
    v126[0] = *v47;
    v126[1] = v71;
    sub_22050C10C(&v47[v69], v42, type metadata accessor for ForYouTitleViewLayoutAttributes);
    sub_220514460();
    (*(v35 + 104))(v38, *MEMORY[0x277D6E758], v34);
    v72 = sub_220891C0C();
    (*(v35 + 8))(v38, v34);
    v73 = v124;
    swift_beginAccess();
    v74 = v73[20];
    v75 = v73[21];
    v76 = __swift_project_boxed_opaque_existential_1(v73 + 17, v74);
    v123 = &v108;
    v77 = *(v74 - 8);
    v78 = MEMORY[0x28223BE20](v76, v76);
    v80 = &v108 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v77 + 16))(v80, v78);
    v81 = *(v75 + 16);
    v82 = *(v81 + 96);
    v63 = v72;
    v83 = v82(v74, v81);
    (*(v77 + 8))(v80, v74);
    [v63 setBackgroundColor_];

    v84 = sub_22088C3AC();
    sub_22051481C(v126, v42, v84);

    sub_22051432C(v42, type metadata accessor for ForYouTitleViewLayoutAttributes);
    sub_220515C00(v126);
  }

  return v63;
}

uint64_t sub_22050D09C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_22050D104()
{
  if (!qword_281297998)
  {
    type metadata accessor for StockTitleView();
    sub_22044E244(&qword_281293BF8, type metadata accessor for StockTitleView);
    v0 = sub_22088C3BC();
    if (!v1)
    {
      atomic_store(v0, &qword_281297998);
    }
  }
}

char *sub_22050D1BC(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC8StocksUI14StockTitleView_titleLabel;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v11 = OBJC_IVAR____TtC8StocksUI14StockTitleView_nameLabel;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v12 = OBJC_IVAR____TtC8StocksUI14StockTitleView_backgroundView;
  *&v4[v12] = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  v13 = OBJC_IVAR____TtC8StocksUI14StockTitleView_quoteSummaryView;
  *&v4[v13] = [objc_allocWithZone(type metadata accessor for QuoteSummaryView()) initWithFrame_];
  v18.receiver = v4;
  v18.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v18, sel_initWithFrame_, a1, a2, a3, a4);
  v15 = *&v14[OBJC_IVAR____TtC8StocksUI14StockTitleView_backgroundView];
  v16 = v14;
  [v16 addSubview_];
  [v16 addSubview_];
  [v16 addSubview_];
  [v16 addSubview_];

  return v16;
}

char *sub_22050D41C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC8StocksUI16QuoteSummaryView_mainQuoteView;
  v11 = type metadata accessor for QuoteView();
  *&v4[v10] = [objc_allocWithZone(v11) initWithFrame_];
  v12 = OBJC_IVAR____TtC8StocksUI16QuoteSummaryView_separatorBarView;
  *&v4[v12] = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  v13 = OBJC_IVAR____TtC8StocksUI16QuoteSummaryView_offHoursQuoteView;
  *&v4[v13] = [objc_allocWithZone(v11) initWithFrame_];
  v18.receiver = v4;
  v18.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v18, sel_initWithFrame_, a1, a2, a3, a4);
  v15 = *&v14[OBJC_IVAR____TtC8StocksUI16QuoteSummaryView_mainQuoteView];
  v16 = v14;
  [v16 addSubview_];
  [v16 addSubview_];
  [v16 addSubview_];

  return v16;
}

char *sub_22050D618(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC8StocksUI9QuoteView_priceLabel;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v11 = OBJC_IVAR____TtC8StocksUI9QuoteView_priceChangeLabel;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v12 = OBJC_IVAR____TtC8StocksUI9QuoteView_timeRangeLabel;
  *&v4[v12] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v17.receiver = v4;
  v17.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v17, sel_initWithFrame_, a1, a2, a3, a4);
  v14 = *&v13[OBJC_IVAR____TtC8StocksUI9QuoteView_priceLabel];
  v15 = v13;
  [v15 addSubview_];
  [v15 addSubview_];
  [v15 addSubview_];

  return v15;
}

uint64_t sub_22050D77C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, __int128 *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  v83 = a7;
  v84 = a8;
  v78 = a6;
  v75 = a5;
  v73 = a4;
  v71 = a3;
  v69 = a2;
  v85 = a11;
  v82 = a10;
  v81 = a9;
  v80 = a13;
  v79 = a12;
  v77 = a17;
  v74 = a27;
  v70 = a26;
  v72 = a23;
  v76 = a24;
  v105 = a14;
  v106 = a21;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v104);
  (*(*(a14 - 8) + 32))(boxed_opaque_existential_1, a1, a14);
  v102 = a18;
  v103 = a25;
  v29 = __swift_allocate_boxed_opaque_existential_1(v101);
  (*(*(a18 - 8) + 32))(v29, v69, a18);
  v99 = a15;
  v100 = a22;
  v30 = __swift_allocate_boxed_opaque_existential_1(v98);
  (*(*(a15 - 8) + 32))(v30, v71, a15);
  v96 = a19;
  v97 = a26;
  v31 = __swift_allocate_boxed_opaque_existential_1(v95);
  (*(*(a19 - 8) + 32))(v31, v73, a19);
  v93 = a16;
  v94 = a23;
  v32 = __swift_allocate_boxed_opaque_existential_1(v92);
  (*(*(a16 - 8) + 32))(v32, v75, a16);
  v90 = a20;
  v91 = a27;
  v33 = __swift_allocate_boxed_opaque_existential_1(v89);
  (*(*(a20 - 8) + 32))(v33, v78, a20);
  v87 = a17;
  v88 = a24;
  v34 = __swift_allocate_boxed_opaque_existential_1(&v86);
  (*(*(a17 - 8) + 32))(v34, a12, a17);
  v35 = swift_allocObject();
  v36 = __swift_mutable_project_boxed_opaque_existential_1(v104, v105);
  MEMORY[0x28223BE20](v36, v36);
  v38 = (&v68 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v39 + 16))(v38);
  v40 = __swift_mutable_project_boxed_opaque_existential_1(v101, v102);
  MEMORY[0x28223BE20](v40, v40);
  v42 = (&v68 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v43 + 16))(v42);
  v44 = __swift_mutable_project_boxed_opaque_existential_1(v98, v99);
  MEMORY[0x28223BE20](v44, v44);
  v46 = (&v68 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v47 + 16))(v46);
  v48 = __swift_mutable_project_boxed_opaque_existential_1(v95, v96);
  MEMORY[0x28223BE20](v48, v48);
  v50 = (&v68 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v51 + 16))(v50);
  v52 = __swift_mutable_project_boxed_opaque_existential_1(v92, v93);
  MEMORY[0x28223BE20](v52, v52);
  v54 = (&v68 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v55 + 16))(v54);
  v56 = __swift_mutable_project_boxed_opaque_existential_1(v89, v90);
  MEMORY[0x28223BE20](v56, v56);
  v58 = (&v68 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v59 + 16))(v58);
  v60 = *v38;
  v61 = *v42;
  v62 = *v46;
  v63 = *v50;
  v64 = *v54;
  v65 = *v58;
  *(v35 + 40) = type metadata accessor for SectionHeaderViewLayoutAttributesFactory();
  *(v35 + 48) = &off_283425D20;
  *(v35 + 16) = v60;
  *(v35 + 80) = type metadata accessor for StockTitleViewLayoutAttributesFactory();
  *(v35 + 88) = &off_2834205E0;
  *(v35 + 56) = v61;
  *(v35 + 120) = type metadata accessor for StockSectionFooterViewLayoutAttributesFactory();
  *(v35 + 128) = &off_283416FF0;
  *(v35 + 96) = v62;
  *(v35 + 160) = type metadata accessor for ForYouTitleViewLayoutAttributesFactory();
  *(v35 + 168) = &off_283421450;
  *(v35 + 136) = v63;
  *(v35 + 200) = type metadata accessor for PlacardViewLayoutAttributesFactory();
  *(v35 + 208) = &off_283424018;
  *(v35 + 176) = v64;
  *(v35 + 240) = type metadata accessor for MastheadMetricsFactory();
  *(v35 + 248) = &off_283425F88;
  *(v35 + 216) = v65;
  v66 = v84;
  *(v35 + 256) = v83;
  *(v35 + 264) = v66;
  *(v35 + 272) = v81 & 1;
  sub_220457328(v82, v35 + 280);
  *(v35 + 320) = v85;
  sub_220457328(&v86, v35 + 328);
  __swift_destroy_boxed_opaque_existential_1(v89);
  __swift_destroy_boxed_opaque_existential_1(v92);
  __swift_destroy_boxed_opaque_existential_1(v95);
  __swift_destroy_boxed_opaque_existential_1(v98);
  __swift_destroy_boxed_opaque_existential_1(v101);
  __swift_destroy_boxed_opaque_existential_1(v104);
  return v35;
}

uint64_t sub_22050DEB0()
{
  v1 = (*v0 + OBJC_IVAR____TtC8StocksUI10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 96))(v2, v3);
}

id sub_22050DF3C()
{
  if (sub_22088F0DC())
  {
    v0 = [objc_opt_self() clearColor];

    return v0;
  }

  else
  {

    return sub_22084B0B0();
  }
}

void sub_22050DF9C()
{
  if (!qword_281297638)
  {
    type metadata accessor for ForYouFeedSectionDescriptor();
    type metadata accessor for ForYouFeedModel();
    sub_22044E43C(&unk_281288490, type metadata accessor for ForYouFeedSectionDescriptor);
    sub_22044E43C(&unk_281293320, type metadata accessor for ForYouFeedModel);
    v0 = sub_22088CE5C();
    if (!v1)
    {
      atomic_store(v0, &qword_281297638);
    }
  }
}

uint64_t sub_22050E088(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2204888A4();
  result = sub_2208884CC();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_220488588();
    result = sub_2208884CC();
    if (result)
    {
      sub_22050EC50();
      v5 = v4;
      swift_allocObject();
      v6 = sub_22088DE7C();
      v7[3] = v5;
      v7[4] = sub_22044E43C(&qword_281297218, sub_22050EC50);
      v7[0] = v6;
      sub_22088C95C();
      return __swift_destroy_boxed_opaque_existential_1(v7);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22050E1BC@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v85 = a2;
  v73 = sub_22088699C();
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73, v5);
  v71 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22050EBFC(0, qword_281294018, type metadata accessor for PriceViewModel);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v94 = &v71 - v9;
  sub_22050EBFC(0, qword_281293F78, type metadata accessor for QuoteViewModel);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v86 = &v71 - v12;
  sub_22050EBFC(0, &qword_2812990C0, MEMORY[0x277D697F8]);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v81 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v78 = &v71 - v18;
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v71 - v21;
  sub_22050EBFC(0, &qword_28128D978, type metadata accessor for QuoteSummaryTimeRange);
  MEMORY[0x28223BE20](v23 - 8, v24);
  v84 = &v71 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v27);
  v77 = (&v71 - v28);
  v29 = sub_220885D4C();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29, v31);
  v92 = &v71 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33, v34);
  v36 = &v71 - v35;
  v79 = type metadata accessor for PriceViewModel();
  v88 = *(v79 - 8);
  MEMORY[0x28223BE20](v79, v37);
  v39 = &v71 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for QuoteViewModel();
  v82 = *(v93 - 8);
  MEMORY[0x28223BE20](v93, v40);
  v91 = &v71 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for QuoteSummaryViewModel();
  MEMORY[0x28223BE20](v80, v42);
  v83 = &v71 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a3 = sub_22088684C();
  a3[1] = v44;
  a3[2] = sub_2208867BC();
  a3[3] = v45;
  v87 = a3;
  v46 = type metadata accessor for StockViewModel();
  sub_22050EF30(a1 + v46[7], v39);
  v47 = v46[8];
  v89 = v30;
  v48 = *(v30 + 16);
  v74 = v47;
  v75 = v48;
  v76 = v36;
  v95 = v29;
  v48(v36, a1 + v47, v29);
  v90 = v46[5];
  sub_2204B1CA8(a1 + v90, v22);
  v49 = sub_22088676C();
  v50 = *(v49 - 8);
  v51 = *(v50 + 48);
  if (v51(v22, 1, v49) == 1)
  {
    sub_2204B3968(v22, &qword_2812990C0, MEMORY[0x277D697F8]);
    v52 = type metadata accessor for QuoteSummaryTimeRange();
    v53 = v77;
    (*(*(v52 - 8) + 56))(v77, 1, 1, v52);
  }

  else
  {
    v53 = v77;
    sub_22069DC28(v77);
    (*(v50 + 8))(v22, v49);
  }

  v54 = v39;
  v55 = v91;
  sub_22050F280(v54, v91, type metadata accessor for PriceViewModel);
  v56 = v93;
  v57 = v55 + *(v93 + 20);
  v77 = *(v89 + 32);
  (v77)(v57, v76, v95);
  sub_22050F4D0(v53, v55 + *(v56 + 24), &qword_28128D978, type metadata accessor for QuoteSummaryTimeRange);
  v58 = v78;
  sub_2204B1CA8(a1 + v90, v78);
  if (v51(v58, 1, v49) == 1)
  {
    sub_2204B3968(v58, &qword_2812990C0, MEMORY[0x277D697F8]);
    v59 = v79;
    (*(v88 + 56))(v94, 1, 1, v79);
  }

  else
  {
    v60 = v71;
    sub_2208867CC();
    sub_22069DDE0(v60, v85 & 1, v94);
    (*(v72 + 8))(v60, v73);
    (*(v50 + 8))(v58, v49);
    v59 = v79;
  }

  v75(v92, a1 + v74, v95);
  v61 = v81;
  sub_2204B1CA8(a1 + v90, v81);
  if (v51(v61, 1, v49) == 1)
  {
    sub_2204EFAD0(a1);
    sub_2204B3968(v61, &qword_2812990C0, MEMORY[0x277D697F8]);
    v62 = type metadata accessor for QuoteSummaryTimeRange();
    v63 = v84;
    (*(*(v62 - 8) + 56))(v84, 1, 1, v62);
  }

  else
  {
    v63 = v84;
    sub_22069E5AC(v85 & 1, v84);
    sub_2204EFAD0(a1);
    (*(v50 + 8))(v61, v49);
  }

  v64 = v86;
  v65 = v94;
  if ((*(v88 + 48))(v94, 1, v59) == 1)
  {
    sub_2204B3968(v63, &qword_28128D978, type metadata accessor for QuoteSummaryTimeRange);
    (*(v89 + 8))(v92, v95);
    sub_2204B3968(v65, qword_281294018, type metadata accessor for PriceViewModel);
    v66 = 1;
    v67 = v93;
  }

  else
  {
    sub_22050F280(v65, v64, type metadata accessor for PriceViewModel);
    v67 = v93;
    (v77)(v64 + *(v93 + 20), v92, v95);
    sub_22050F4D0(v63, v64 + *(v67 + 24), &qword_28128D978, type metadata accessor for QuoteSummaryTimeRange);
    v66 = 0;
  }

  (*(v82 + 56))(v64, v66, 1, v67);
  v68 = v83;
  sub_22050F280(v91, v83, type metadata accessor for QuoteViewModel);
  sub_22050F4D0(v64, v68 + *(v80 + 20), qword_281293F78, type metadata accessor for QuoteViewModel);
  v69 = type metadata accessor for StockTitleViewModel();
  return sub_22050F280(v68, v87 + *(v69 + 24), type metadata accessor for QuoteSummaryViewModel);
}

void sub_22050EBFC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22089230C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_22050EC50()
{
  if (!qword_281297210)
  {
    sub_2204888A4();
    sub_220488588();
    sub_22044E43C(&unk_2812978D0, sub_2204888A4);
    sub_220489ABC();
    v0 = sub_22088DE8C();
    if (!v1)
    {
      atomic_store(v0, &qword_281297210);
    }
  }
}

uint64_t sub_22050ED0C(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_22088B84C();
  sub_22088848C();
  sub_22088D56C();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_220489F14();
  if (sub_2208884CC())
  {
    sub_22044E43C(&unk_281297410, sub_220489F14);
  }

  sub_22088D57C();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_22088C9AC();
  result = sub_22088848C();
  if (result)
  {
    sub_22088D53C();
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_22088D3DC();
    sub_22088848C();
    sub_22088D58C();
    v4 = sub_22088D51C();
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    type metadata accessor for ForYouFeedViewController();
    result = sub_2208884CC();
    if (result)
    {
      v5 = result;
      sub_22088D14C();

      __swift_project_boxed_opaque_existential_1(a2, a2[3]);
      sub_220489DCC();
      sub_2208884CC();
      return sub_22088D52C();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22050EF30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PriceViewModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22050EF94()
{
  v0 = sub_22088C98C();
  MEMORY[0x28223BE20](v0, v1);
  v2 = MEMORY[0x277D6E088];
  sub_220489FD0(0, &unk_28127E030, MEMORY[0x277D6E088], MEMORY[0x277D84560]);
  *(swift_allocObject() + 16) = xmmword_220899360;
  sub_22088C97C();
  sub_22044E43C(&qword_281297778, MEMORY[0x277D6E088]);
  sub_220489FD0(0, &qword_28127EA80, v2, MEMORY[0x277D83940]);
  sub_22050F1F8();
  sub_2208923FC();
  v3 = objc_allocWithZone(sub_22088C9AC());
  return sub_22088C99C();
}

uint64_t sub_22050F174(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_2208854FC();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

unint64_t sub_22050F1F8()
{
  result = qword_28127EA78;
  if (!qword_28127EA78)
  {
    sub_220489FD0(255, &qword_28127EA80, MEMORY[0x277D6E088], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28127EA78);
  }

  return result;
}

uint64_t sub_22050F280(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22050F2E8()
{
  sub_220489FD0(0, &qword_281297380, MEMORY[0x277D6E8E0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v13 - v2;
  v4 = sub_22088C96C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22088C61C();
  MEMORY[0x28223BE20](v9 - 8, v10);
  sub_22088D3DC();
  (*(v5 + 104))(v8, *MEMORY[0x277D6E080], v4);
  v11 = sub_22088D8AC();
  (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
  sub_22088C60C();
  return sub_22088D3CC();
}

uint64_t sub_22050F4D0(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_22050EBFC(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_22050F550(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 72) = (a2 - 1);
    return result;
  }

  v8 = sub_2208857EC();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[9];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_22088699C();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_7;
  }

  v14 = sub_2208852DC();
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[11];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_22050F6D0(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 72);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_2208857EC();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[9];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_22088699C();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[10];
    goto LABEL_9;
  }

  v14 = sub_2208852DC();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[11];

  return v15(v16, a2, v14);
}

uint64_t sub_22050F83C(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2204888A4();
  result = sub_2208884CC();
  if (result)
  {
    sub_22044E43C(&qword_2812978E0, sub_2204888A4);
    sub_22088CD8C();
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_220446A58(0, &qword_281296988);
    sub_2208884DC();
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_22044D56C(0, &qword_28127E830);
    sub_2208884CC();
    sub_22082F494();
    swift_allocObject();
    sub_22088FE0C();
    sub_22044E43C(&qword_281296A00, sub_22082F494);
    sub_22088CD9C();

    sub_22082F53C();
    swift_allocObject();
    sub_22088FE3C();
    sub_22044E43C(&qword_2812969D8, sub_22082F53C);
    sub_22088CD9C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22050FAA8(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_220446A58(0, &unk_2812972B0);
  result = sub_22088849C();
  if (v4)
  {
    __swift_project_boxed_opaque_existential_1(v3, v4);
    sub_22088DD8C();
    sub_22088D7CC();

    return __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22050FB90(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for PriceViewModel();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_220885D4C();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  sub_220454E0C(0);
  v17 = v16;
  v18 = *(*(v16 - 8) + 56);
  v19 = a1 + *(a4 + 24);

  return v18(v19, a2, a2, v17);
}

uint64_t sub_22050FCDC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220489DCC();
  v4 = v3;
  result = sub_2208884CC();
  if (result)
  {
    v6 = result;
    a2[3] = v4;
    result = sub_22044E43C(&qword_2812977F0, sub_220489DCC);
    a2[4] = result;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_22050FD84(uint64_t *a1, double *a2, char *a3)
{
  v4 = v3;
  v8 = *&a3[OBJC_IVAR____TtC8StocksUI14StockTitleView_titleLabel];
  [v8 setFrame_];
  swift_beginAccess();
  __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
  v9 = *a1;
  v10 = a1[1];
  v11 = *(a2 + *(type metadata accessor for StockTitleViewLayoutAttributes() + 40));
  v12 = sub_220510408(v9, v10);
  [v8 setAttributedText_];

  v74 = a3;
  v13 = *&a3[OBJC_IVAR____TtC8StocksUI14StockTitleView_nameLabel];
  [v13 setFrame_];
  v14 = __swift_project_boxed_opaque_existential_1((v4 + 16), *(v4 + 40));
  v15 = a1[2];
  v75 = a1[3];
  if ((v11 - 1) <= 1u)
  {
    v72 = a1;
    v16 = *v14;
    sub_220513C18(0, &qword_28127DE80, sub_2204A5D84);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_220899920;
    v71 = v8;
    v18 = *MEMORY[0x277D740A8];
    v73 = v15;
    *(inited + 32) = *MEMORY[0x277D740A8];
    v19 = sub_22044D56C(0, &qword_28127E570);
    v70 = v13;
    v20 = v18;
    v21 = sub_220891F2C();
    v22 = MEMORY[0x277D740C0];
    *(inited + 40) = v21;
    v23 = *v22;
    *(inited + 64) = v19;
    *(inited + 72) = v23;
    v25 = v16[5];
    v24 = v16[6];
    __swift_project_boxed_opaque_existential_1(v16 + 2, v25);
    v26 = *(v24 + 16);
    v27 = *(v26 + 216);
    v28 = v23;
    v8 = v71;
    v29 = v27(v25, v26);
    *(inited + 104) = sub_22044D56C(0, &qword_28127E530);
    *(inited + 80) = v29;
    sub_2204A5EAC(inited);
    swift_setDeallocating();
    sub_2204A5D84();
    swift_arrayDestroy();
    v30 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v31 = sub_22089132C();
    type metadata accessor for Key(0);
    sub_2204E9D70(&qword_28127E6A8, 255, type metadata accessor for Key);
    v32 = sub_22089125C();

    v33 = [v30 initWithString:v31 attributes:v32];

    v15 = v73;
    a1 = v72;
    if (v33)
    {
      [v70 setAttributedText_];
    }
  }

  v34 = __swift_project_boxed_opaque_existential_1((v4 + 16), *(v4 + 40));
  v36 = *(*v34 + 40);
  v35 = *(*v34 + 48);
  __swift_project_boxed_opaque_existential_1((*v34 + 16), v36);
  v37 = (*(*(v35 + 16) + 96))(v36);
  [v74 setBackgroundColor_];

  [v8 setNumberOfLines_];
  v38 = *&v74[OBJC_IVAR____TtC8StocksUI14StockTitleView_quoteSummaryView];
  [v38 setFrame_];
  v39 = *(type metadata accessor for StockTitleViewModel() + 24);
  memcpy(__dst, a2 + 16, 0x1A1uLL);
  sub_220510818(a1 + v39, __dst, v38);
  [v74 setIsAccessibilityElement_];
  v40 = [v74 accessibilityTraits];
  v41 = v40;
  v42 = *MEMORY[0x277D76558];
  if (!v40)
  {
    if (!v42)
    {
      v41 = 0;
      goto LABEL_10;
    }

LABEL_8:
    v41 = v42 | v40;
    goto LABEL_10;
  }

  if ((v42 & ~v40) != 0)
  {
    goto LABEL_8;
  }

LABEL_10:
  [v74 setAccessibilityTraits_];
  sub_220513C18(0, &qword_28127DEE0, sub_2204470D8);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_22089C660;
  *(v43 + 32) = v15;
  *(v43 + 40) = v75;
  v44 = OBJC_IVAR____TtC8StocksUI16QuoteSummaryView_mainQuoteView;
  v45 = *(*&v38[OBJC_IVAR____TtC8StocksUI16QuoteSummaryView_mainQuoteView] + OBJC_IVAR____TtC8StocksUI9QuoteView_priceLabel);

  v46 = [v45 accessibilityLabel];
  if (v46)
  {
    v47 = v46;
    v48 = sub_22089136C();
    v50 = v49;
  }

  else
  {
    v48 = 0;
    v50 = 0;
  }

  *(v43 + 48) = v48;
  *(v43 + 56) = v50;
  v51 = [*(*&v38[v44] + OBJC_IVAR____TtC8StocksUI9QuoteView_priceLabel) accessibilityValue];
  if (v51)
  {
    v52 = v51;
    v53 = sub_22089136C();
    v55 = v54;
  }

  else
  {
    v53 = 0;
    v55 = 0;
  }

  *(v43 + 64) = v53;
  *(v43 + 72) = v55;
  v56 = OBJC_IVAR____TtC8StocksUI16QuoteSummaryView_offHoursQuoteView;
  v57 = [*(*&v38[OBJC_IVAR____TtC8StocksUI16QuoteSummaryView_offHoursQuoteView] + OBJC_IVAR____TtC8StocksUI9QuoteView_priceLabel) accessibilityLabel];
  if (v57)
  {
    v58 = v57;
    v59 = sub_22089136C();
    v61 = v60;
  }

  else
  {
    v59 = 0;
    v61 = 0;
  }

  *(v43 + 80) = v59;
  *(v43 + 88) = v61;
  v62 = [*(*&v38[v56] + OBJC_IVAR____TtC8StocksUI9QuoteView_priceLabel) accessibilityValue];
  if (v62)
  {
    v63 = v62;
    v64 = sub_22089136C();
    v66 = v65;
  }

  else
  {
    v64 = 0;
    v66 = 0;
  }

  *(v43 + 96) = v64;
  *(v43 + 104) = v66;
  sub_22088AD1C();
  v68 = v67;

  if (v68)
  {
    v69 = sub_22089132C();
  }

  else
  {
    v69 = 0;
  }

  [v74 setAccessibilityLabel_];
}

id sub_220510408(uint64_t a1, uint64_t a2)
{
  v34 = a1;
  v35 = a2;
  v2 = sub_220886D4C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_22044D56C(0, &qword_28127E570);
  v32 = sub_22089002C();
  v7 = *MEMORY[0x277D6D198];
  v8 = *(v3 + 104);
  v8(v6, v7, v2);
  sub_22089001C();
  v31 = *(v3 + 8);
  v31(v6, v2);
  v9 = sub_220891F2C();
  v10 = sub_220891F4C();

  sub_2204A5DF0();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220899920;
  v12 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  sub_22089002C();
  v8(v6, v7, v2);
  v13 = v12;
  v14 = v10;
  v15 = sub_22089000C();
  v31(v6, v2);
  sub_22044D56C(0, &qword_28127E570);
  v16 = MEMORY[0x277D740C0];
  *(inited + 40) = v15;
  v17 = *v16;
  *(inited + 64) = v30;
  *(inited + 72) = v17;
  v18 = v33[5];
  v19 = v33[6];
  __swift_project_boxed_opaque_existential_1(v33 + 2, v18);
  v20 = *(v19 + 16);
  v21 = *(v20 + 40);
  v22 = v17;
  v23 = v21(v18, v20);
  *(inited + 104) = sub_22044D56C(0, &qword_28127E530);
  *(inited + 80) = v23;
  sub_2204A5EAC(inited);
  swift_setDeallocating();
  sub_2204A5D84();
  swift_arrayDestroy();
  v24 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v25 = sub_22089132C();
  type metadata accessor for Key(0);
  sub_2204A63B8();
  v26 = sub_22089125C();

  v27 = [v24 initWithString:v25 attributes:v26];

  return v27;
}

void sub_220510784(uint64_t *a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for ForYouFeedViewController();
  v4 = sub_2208884CC();
  v3 = &off_2834240C8;
  if (!v4)
  {
    v3 = 0;
  }

  *(v2 + 24) = v3;
  swift_unknownObjectWeakAssign();
}

id sub_220510818(char *a1, uint64_t a2, uint64_t a3)
{
  sub_220510C84();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for QuoteViewModel();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v39 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a3 + OBJC_IVAR____TtC8StocksUI16QuoteSummaryView_mainQuoteView);
  [v15 setFrame_];
  v38 = v3;
  v16 = *(a2 + 160);
  v40[7] = *(a2 + 176);
  v41 = *(a2 + 192);
  v17 = *(a2 + 112);
  v40[2] = *(a2 + 96);
  v40[3] = v17;
  v18 = *(a2 + 128);
  v40[5] = *(a2 + 144);
  v40[6] = v16;
  v40[4] = v18;
  v19 = *(a2 + 80);
  v40[0] = *(a2 + 64);
  v40[1] = v19;
  sub_220510CDC(a1, v40, v15);
  v20 = type metadata accessor for QuoteSummaryViewModel();
  sub_220513104(&a1[*(v20 + 20)], v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    v21 = sub_220510C84;
    v22 = v10;
LABEL_5:
    sub_220513B70(v22, v21);
    [*(a3 + OBJC_IVAR____TtC8StocksUI16QuoteSummaryView_separatorBarView) setHidden_];
    return [*(a3 + OBJC_IVAR____TtC8StocksUI16QuoteSummaryView_offHoursQuoteView) setHidden_];
  }

  v23 = v39;
  sub_2205BC7AC(v10, v39);
  v24 = *(a2 + 360);
  v25 = *(a2 + 376);
  v26 = *(a2 + 328);
  v49 = *(a2 + 344);
  v50 = v24;
  *v51 = v25;
  *&v51[9] = *(a2 + 385);
  v27 = *(a2 + 312);
  v46 = *(a2 + 296);
  v47 = v27;
  v48 = v26;
  v28 = *(a2 + 280);
  v44 = *(a2 + 264);
  v45 = v28;
  if (sub_220590AEC(&v44) == 1)
  {
    v21 = type metadata accessor for QuoteViewModel;
    v22 = v23;
    goto LABEL_5;
  }

  v42[6] = v50;
  v42[7] = *v51;
  v43 = *&v51[16];
  v42[2] = v46;
  v42[3] = v47;
  v42[4] = v48;
  v42[5] = v49;
  v30 = *(a3 + OBJC_IVAR____TtC8StocksUI16QuoteSummaryView_separatorBarView);
  v42[0] = v44;
  v42[1] = v45;
  [v30 setFrame_];
  v31 = *(a3 + OBJC_IVAR____TtC8StocksUI16QuoteSummaryView_offHoursQuoteView);
  [v31 setFrame_];
  v32 = v38;
  swift_beginAccess();
  v33 = __swift_project_boxed_opaque_existential_1((v32 + 16), *(v32 + 40));
  v35 = *(*v33 + 40);
  v34 = *(*v33 + 48);
  __swift_project_boxed_opaque_existential_1((*v33 + 16), v35);
  v36 = (*(*(v34 + 16) + 168))(v35);
  [v30 setBackgroundColor_];

  sub_220510CDC(v23, v42, v31);
  [v30 setHidden_];
  [v31 setHidden_];
  return sub_220513B70(v23, type metadata accessor for QuoteViewModel);
}

void sub_220510BE8(uint64_t *a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for ForYouFeedViewController();
  v4 = sub_2208884CC();
  v3 = &off_2834240D8;
  if (!v4)
  {
    v3 = 0;
  }

  *(v2 + 24) = v3;
  swift_unknownObjectWeakAssign();
}

void sub_220510C84()
{
  if (!qword_281293F78[0])
  {
    type metadata accessor for QuoteViewModel();
    v0 = sub_22089230C();
    if (!v1)
    {
      atomic_store(v0, qword_281293F78);
    }
  }
}

void sub_220510CDC(char *a1, double *a2, uint64_t a3)
{
  v200 = type metadata accessor for QuoteSummaryTimeRange();
  v186 = *(v200 - 8);
  MEMORY[0x28223BE20](v200, v6);
  v188 = v167 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2205124F8(0, &qword_28128D978, type metadata accessor for QuoteSummaryTimeRange, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v185 = v167 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v184 = v167 - v13;
  v14 = sub_2208852DC();
  MEMORY[0x28223BE20](v14 - 8, v15);
  v167[1] = v167 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22089131C();
  MEMORY[0x28223BE20](v17 - 8, v18);
  v167[0] = v167 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_220889BAC();
  v182 = *(v20 - 8);
  v183 = v20;
  MEMORY[0x28223BE20](v20, v21);
  v180 = v167 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v24);
  v181 = v167 - v25;
  v197 = sub_220885D4C();
  v26 = *(v197 - 8);
  MEMORY[0x28223BE20](v197, v27);
  v177 = v167 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v30);
  v32 = v167 - v31;
  v33 = sub_22088699C();
  v34 = *(v33 - 8);
  MEMORY[0x28223BE20](v33, v35);
  v37 = v167 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = a2[4];
  v39 = a2[5];
  v40 = a2[6];
  v41 = a2[7];
  v198 = *(a3 + OBJC_IVAR____TtC8StocksUI9QuoteView_priceLabel);
  [v198 setFrame_];
  v187 = a3;
  v42 = a2[8];
  v43 = a2[9];
  v44 = a2[10];
  v45 = a2[11];
  v199 = *(a3 + OBJC_IVAR____TtC8StocksUI9QuoteView_priceChangeLabel);
  [v199 setFrame_];
  sub_220886BCC();
  sub_220886BAC();
  if (qword_281298FC0 != -1)
  {
    swift_once();
  }

  sub_220886B9C();

  v46 = *a1;
  v47 = a1[8];
  v206 = a1;
  v204 = v46;
  if (v47)
  {
    goto LABEL_16;
  }

  v48 = v46;
  if ((v211 & 1) == 0)
  {
    goto LABEL_12;
  }

  v49 = type metadata accessor for PriceViewModel();
  (*(v34 + 16))(v37, &v206[*(v49 + 40)], v33);
  v50 = (*(v34 + 88))(v37, v33);
  v51 = 2;
  if (v50 != *MEMORY[0x277D69898] && v50 != *MEMORY[0x277D698A0] && v50 != *MEMORY[0x277D69870] && v50 != *MEMORY[0x277D69888] && v50 != *MEMORY[0x277D69878] && v50 != *MEMORY[0x277D69890])
  {
    if (v50 == *MEMORY[0x277D69880])
    {
LABEL_12:
      v51 = 0;
      goto LABEL_13;
    }

    if (v50 != *MEMORY[0x277D69868])
    {
      (*(v34 + 8))(v37, v33);
    }

    v51 = 2;
  }

LABEL_13:
  if (qword_281294078 != -1)
  {
    v166 = v51;
    swift_once();
    v51 = v166;
  }

  a1 = v206;
  v201 = sub_2204BD7B8(*(v206 + 6), *(v206 + 7), 5, 1, v51, v48);
  v202 = v52;
  if (!v52)
  {
LABEL_16:
    v53 = *(a1 + 9);
    v201 = *(a1 + 8);
    v202 = v53;
  }

  v54 = type metadata accessor for QuoteViewModel();
  v55 = *(v26 + 16);
  v205 = &a1[*(v54 + 20)];
  v56 = v197;
  v55(v32);
  v174 = *(v26 + 88);
  v57 = v174(v32, v56);
  v58 = *MEMORY[0x277D69480];
  v169 = a2;
  v178 = v26 + 88;
  v179 = v54;
  v175 = v55;
  v176 = v26 + 16;
  v173 = v58;
  if (v57 != v58)
  {
    if (v57 == *MEMORY[0x277D69468])
    {
      if ((v47 & 1) == 0 && (a1[24] & 1) == 0)
      {
        v62 = *(a1 + 2);
        v63 = v204 - v62;
        v64 = v62 / (v204 - v62);
        if (v63 <= 0.0)
        {
          v65 = 0.0;
        }

        else
        {
          v65 = v64;
        }

        if (qword_27CF55AB8 == -1)
        {
          goto LABEL_39;
        }

        goto LABEL_73;
      }
    }

    else
    {
      if (v57 != *MEMORY[0x277D69478])
      {
        goto LABEL_74;
      }

      type metadata accessor for PriceViewModel();
      if ((sub_2208857CC() & 1) == 0)
      {
        v60 = COERCE_DOUBLE(sub_220691100(0));
        goto LABEL_43;
      }

      if ((v47 & 1) == 0 && (a1[24] & 1) == 0)
      {
        v66 = *(a1 + 2);
        v67 = v204 - v66;
        v68 = v66 / (v204 - v66);
        if (v67 <= 0.0)
        {
          v65 = 0.0;
        }

        else
        {
          v65 = v68;
        }

        if (qword_27CF55AB8 == -1)
        {
LABEL_39:
          v69 = qword_27CF6D008;
          v70 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
          v71 = [v69 stringFromNumber_];

          if (v71)
          {
            v204 = COERCE_DOUBLE(sub_22089136C());
            v172 = v72;

            goto LABEL_44;
          }

          goto LABEL_41;
        }

LABEL_73:
        swift_once();
        goto LABEL_39;
      }
    }

LABEL_41:
    v73 = *(a1 + 9);
    v204 = *(a1 + 8);
    v172 = v73;

    goto LABEL_44;
  }

  if (a1[24])
  {
    goto LABEL_41;
  }

  v59 = v204 >= 5.0;
  if (v204 == 0.0)
  {
    v59 = 1;
  }

  v60 = COERCE_DOUBLE(sub_2204DBC04(v59 & ~v47, *(a1 + 2)));
  if (!v61)
  {
    goto LABEL_41;
  }

LABEL_43:
  v204 = v60;
  v172 = v61;
LABEL_44:
  v74 = *(a1 + 2) < 0.0;
  v170 = a1[24];
  if (v170)
  {
    v74 = 2;
  }

  v189 = v74;
  v75 = v203;
  swift_beginAccess();
  v76 = *__swift_project_boxed_opaque_existential_1((v75 + 16), *(v75 + 40));
  sub_2205124F8(0, &qword_28127DE80, sub_2204A5D84, MEMORY[0x277D84560]);
  v195 = v77;
  inited = swift_initStackObject();
  v194 = xmmword_220899920;
  *(inited + 16) = xmmword_220899920;
  v79 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v80 = sub_22044D56C(0, &qword_28127E570);
  v196 = *MEMORY[0x277D76A28];
  v193 = v79;
  v81 = sub_220891F2C();
  v82 = MEMORY[0x277D740C0];
  *(inited + 40) = v81;
  v83 = *v82;
  *(inited + 64) = v80;
  *(inited + 72) = v83;
  v85 = v76[5];
  v84 = v76[6];
  __swift_project_boxed_opaque_existential_1(v76 + 2, v85);
  v86 = *(v84 + 16);
  v87 = *(v86 + 40);
  v88 = v83;
  v89 = v87(v85, v86);
  v192 = sub_22044D56C(0, &qword_28127E530);
  *(inited + 104) = v192;
  *(inited + 80) = v89;
  sub_2204A5EAC(inited);
  swift_setDeallocating();
  sub_2204A5D84();
  v191 = v90;
  swift_arrayDestroy();
  v91 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v92 = sub_22089132C();
  type metadata accessor for Key(0);
  v190 = v93;
  v94 = sub_2204E777C(&qword_28127E6A8, 255, type metadata accessor for Key);
  v95 = sub_22089125C();

  v96 = [v91 initWithString:v92 attributes:v95];

  [v198 setAttributedText_];
  v97 = *__swift_project_boxed_opaque_existential_1((v203 + 16), *(v203 + 40));
  v98 = swift_initStackObject();
  *(v98 + 16) = v194;
  *(v98 + 32) = v193;
  *(v98 + 40) = sub_220891F2C();
  v171 = v80;
  *(v98 + 64) = v80;
  *(v98 + 72) = v88;
  v168 = v88;
  v99 = sub_2205125E4(v189);
  v100 = v97[10];
  v101 = v97[11];
  __swift_project_boxed_opaque_existential_1(v97 + 7, v100);
  v102 = (*(v101 + 16))(v100, v101);
  v103 = [v99 stocksAccessibilityAdjustedForIncreaseContrastAgainstWithBackgroundColor_];

  *(v98 + 104) = v192;
  *(v98 + 80) = v103;
  sub_2204A5EAC(v98);
  swift_setDeallocating();
  swift_arrayDestroy();
  v104 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v105 = sub_22089132C();

  v172 = v94;
  v106 = sub_22089125C();

  v204 = COERCE_DOUBLE([v104 initWithString:v105 attributes:v106]);

  v107 = v177;
  v108 = v197;
  v175(v177, v205, v197);
  v109 = v174(v107, v108);
  if (v109 != v173)
  {
    v111 = v206;
    v113 = v182;
    v112 = v183;
    v115 = v180;
    v114 = v181;
    if (v109 == *MEMORY[0x277D69468])
    {
      v110 = MEMORY[0x277D68AD8];
      goto LABEL_52;
    }

    if (v109 == *MEMORY[0x277D69478])
    {
      v110 = MEMORY[0x277D68AE8];
      goto LABEL_52;
    }

LABEL_74:
    sub_2208928AC();
    __break(1u);
    return;
  }

  v110 = MEMORY[0x277D68AE0];
  v111 = v206;
  v113 = v182;
  v112 = v183;
  v115 = v180;
  v114 = v181;
LABEL_52:
  v116 = MEMORY[0x277D68AE8];
  v117 = *(v113 + 104);
  v117(v114, *v110, v112);
  v117(v115, *v116, v112);
  sub_2204E777C(&qword_281298378, 255, MEMORY[0x277D68AF0]);
  sub_22089167C();
  sub_22089167C();
  if (v209 == v207 && v210 == v208)
  {
    v118 = *(v113 + 8);
    v118(v115, v112);
    v118(v114, v112);
  }

  else
  {
    v119 = sub_2208928BC();
    v120 = *(v113 + 8);
    v120(v115, v112);
    v120(v114, v112);

    if ((v119 & 1) == 0)
    {
      goto LABEL_57;
    }
  }

  if (((v111[40] | v170) & 1) == 0)
  {
    v122 = *__swift_project_boxed_opaque_existential_1((v203 + 16), *(v203 + 40));
    if (v189)
    {
      v123 = sub_2208928BC();

      v124 = sub_220891F2C();
      v125 = v122[5];
      v126 = v122[6];
      __swift_project_boxed_opaque_existential_1(v122 + 2, v125);
      v127 = (*(v126 + 32))(v125, v126);
    }

    else
    {

      v124 = sub_220891F2C();
      v128 = v122[5];
      v129 = v122[6];
      __swift_project_boxed_opaque_existential_1(v122 + 2, v128);
      v127 = (*(v129 + 24))(v128, v129);
      v123 = 1;
    }

    v130 = v122[10];
    v131 = v122[11];
    __swift_project_boxed_opaque_existential_1(v122 + 7, v130);
    v132 = *(v131 + 16);
    v133 = v127;
    v134 = v132(v130, v131);
    v135 = [v133 stocksAccessibilityAdjustedForIncreaseContrastAgainstWithBackgroundColor_];

    v136 = v204;
    isa = NSAttributedString.appendingAccessibilityDWCPriceChangeArrow(pointingUpward:withFont:withColor:)(v123 & 1, v124, v135).super.isa;

    v121 = *&isa;
    goto LABEL_62;
  }

LABEL_57:
  v121 = v204;
LABEL_62:
  v204 = v121;
  [v199 setAttributedText_];
  sub_2204DAE00(v205);
  if (!v138)
  {
    sub_22089130C();
    sub_22088528C();
    sub_2208913CC();
  }

  v139 = v184;
  v140 = *(v179 + 24);
  sub_220512F60(&v206[v140], v184);
  v141 = *(v186 + 48);
  if (v141(v139, 1, v200) == 1)
  {
    sub_220513078(v139);
    v142 = 0;
  }

  else
  {
    sub_22069F73C();
    sub_22072854C(v139);
    v142 = sub_22089132C();
  }

  v143 = v198;
  [v198 setAccessibilityLabel_];

  v144 = sub_22089132C();

  [v143 setAccessibilityValue_];

  sub_2204DA46C();
  v145 = sub_22089132C();

  v146 = v199;
  [v199 setAccessibilityLabel_];

  v147 = sub_22089132C();

  [v146 setAccessibilityValue_];

  v148 = v185;
  sub_220512F60(&v206[v140], v185);
  if (v141(v148, 1, v200) == 1)
  {
    sub_220513078(v148);
    [*(v187 + OBJC_IVAR____TtC8StocksUI9QuoteView_timeRangeLabel) setHidden_];
  }

  else
  {
    sub_2207284E8(v148, v188);
    v206 = *(v187 + OBJC_IVAR____TtC8StocksUI9QuoteView_timeRangeLabel);
    [v206 setFrame_];
    v149 = *__swift_project_boxed_opaque_existential_1((v203 + 16), *(v203 + 40));
    v205 = sub_22069EB5C();
    v150 = swift_initStackObject();
    *(v150 + 16) = v194;
    v151 = v193;
    *(v150 + 32) = v193;
    v152 = v151;
    v153 = v171;
    *(v150 + 40) = sub_220891F2C();
    v154 = v168;
    *(v150 + 64) = v153;
    *(v150 + 72) = v154;
    v155 = v149[5];
    v156 = v149[6];
    __swift_project_boxed_opaque_existential_1(v149 + 2, v155);
    v157 = *(v156 + 16);
    v158 = *(v157 + 216);
    v159 = v154;
    v160 = v158(v155, v157);
    *(v150 + 104) = v192;
    *(v150 + 80) = v160;
    sub_2204A5EAC(v150);
    swift_setDeallocating();
    swift_arrayDestroy();
    v161 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v162 = sub_22089132C();

    v163 = sub_22089125C();

    v164 = [v161 initWithString:v162 attributes:v163];

    v165 = v206;
    [v206 setAttributedText_];

    [v165 setHidden_];
    sub_22072854C(v188);
  }
}