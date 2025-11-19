void sub_2204D5FA0()
{
  if (!qword_281298938)
  {
    v0 = MEMORY[0x277D6E270];
    sub_2204A1E8C(255, &qword_28127EA70, MEMORY[0x277D6E270], MEMORY[0x277D83940]);
    sub_22076C6A8(&qword_28127EA68, &qword_28127EA70, v0);
    v1 = sub_22088861C();
    if (!v2)
    {
      atomic_store(v1, &qword_281298938);
    }
  }
}

uint64_t sub_2204D6068(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2204D60C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2204D6128(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2204D6188(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2204D61E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2204D6248(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2204D62A8()
{
  if (!qword_2812971D8)
  {
    sub_22088DF5C();
    sub_2204D631C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2812971D8);
    }
  }
}

unint64_t sub_2204D631C()
{
  result = qword_28127E530;
  if (!qword_28127E530)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28127E530);
  }

  return result;
}

uint64_t sub_2204D6368()
{
  v1 = (*v0 + OBJC_IVAR____TtC8StocksUI10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 176))(v2, v3);
}

uint64_t sub_2204D63D0(uint64_t a1)
{
  updated = type metadata accessor for StockListPriceDataUpdateBlueprintModifier();
  MEMORY[0x28223BE20](updated, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v15 - v9;
  sub_22046DA2C(v1 + 96, &v15 - v9 + 16);
  v11 = updated[6];
  v12 = sub_22088582C();
  (*(*(v12 - 8) + 16))(&v10[v11], a1, v12);
  sub_22046DA2C(v1 + 16, &v10[updated[7]]);
  sub_22046DA2C(v1 + 136, &v10[updated[8]]);
  sub_22046DA2C(v1 + 216, &v10[updated[9]]);
  *v10 = 0x7461446563697250;
  *(v10 + 1) = 0xEF65746164705561;
  sub_2204AB3E0(v10, v6, type metadata accessor for StockListPriceDataUpdateBlueprintModifier);
  sub_2204AB448();
  swift_allocObject();
  sub_22046F614(qword_281280238, type metadata accessor for StockListPriceDataUpdateBlueprintModifier);
  v13 = sub_22088B66C();
  sub_2204AB57C(v10, type metadata accessor for StockListPriceDataUpdateBlueprintModifier);
  return v13;
}

uint64_t type metadata accessor for StockListPriceDataUpdateBlueprintModifier()
{
  result = qword_281280220;
  if (!qword_281280220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2204D6620()
{
  result = sub_2204446D4(319, &qword_281288DB0);
  if (v1 <= 0x3F)
  {
    result = sub_22088582C();
    if (v2 <= 0x3F)
    {
      result = sub_2204446D4(319, &qword_281299280);
      if (v3 <= 0x3F)
      {
        result = sub_2204446D4(319, &unk_281299178);
        if (v4 <= 0x3F)
        {
          result = sub_2204446D4(319, &qword_281299220);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

char *sub_2204D673C()
{
  type metadata accessor for StockView.PriceChangeButton();
  v0 = [swift_getObjCClassFromMetadata() buttonWithType_];
  v1 = *&v0[OBJC_IVAR____TtCC8StocksUI9StockView17PriceChangeButton_onTap];
  sub_22088E18C();

  v2 = v0;
  v3 = [v2 titleLabel];
  if (v3)
  {
    v4 = v3;
    [v3 setAdjustsFontSizeToFitWidth_];
  }

  v5 = [v2 titleLabel];

  if (v5)
  {
    [v5 ts:0 setWantsUnderlineForAccessibilityButtonShapesEnabled:?];
  }

  return v2;
}

uint64_t sub_2204D681C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2204D6A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v26 = a8;
  v13 = sub_22088582C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v19 = *(Strong + 32);
    v25[1] = Strong;
    v25[2] = v19;
    v27 = a6;
    v20 = swift_allocObject();
    swift_weakInit();
    (*(v14 + 16))(v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a7, v13);
    v21 = (*(v14 + 80) + 40) & ~*(v14 + 80);
    v22 = swift_allocObject();
    *(v22 + 2) = v26;
    *(v22 + 3) = a9;
    *(v22 + 4) = v20;
    (*(v14 + 32))(&v22[v21], v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
    v23 = &v22[(v15 + v21 + 7) & 0xFFFFFFFFFFFFFFF8];
    *v23 = sub_2207C1958;
    v23[1] = v17;
    sub_2204AB448();
    sub_22046F734(&qword_281297D28, sub_2204AB448);

    sub_22088B6DC();
  }

  else
  {
  }
}

uint64_t sub_2204D6C88()
{
  v1 = sub_22088582C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_2204D6D68(uint64_t a1, char *a2, uint64_t a3, char *a4, int a5)
{
  v6 = v5;
  v294 = a5;
  v258 = sub_2208910DC();
  v256 = *(v258 - 8);
  MEMORY[0x28223BE20](v258, v11);
  v254 = &v252 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v257 = sub_2208910FC();
  v255 = *(v257 - 8);
  MEMORY[0x28223BE20](v257, v13);
  v253 = &v252 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x277D83D88];
  sub_220454490(0, qword_28128AAE8, type metadata accessor for StockSparklineViewModel, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v281 = &v252 - v18;
  v280 = type metadata accessor for StockSparklineViewModel(0);
  v279 = *(v280 - 8);
  MEMORY[0x28223BE20](v280, v19);
  v282 = &v252 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v270 = sub_220889BAC();
  v269 = *(v270 - 8);
  MEMORY[0x28223BE20](v270, v21);
  v267 = &v252 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v24);
  v268 = &v252 - v25;
  sub_220454490(0, &qword_2812990C0, MEMORY[0x277D697F8], v15);
  MEMORY[0x28223BE20](v26 - 8, v27);
  v277 = &v252 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v30);
  v271 = &v252 - v31;
  v32 = sub_22088676C();
  v299 = *(v32 - 8);
  v300 = v32;
  MEMORY[0x28223BE20](v32, v33);
  v272 = &v252 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35, v36);
  v265 = &v252 - v37;
  v38 = sub_2208852DC();
  MEMORY[0x28223BE20](v38 - 8, v39);
  v290 = &v252 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_22089131C();
  MEMORY[0x28223BE20](v41 - 8, v42);
  v276 = &v252 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v289 = sub_220885D4C();
  v285 = *(v289 - 8);
  MEMORY[0x28223BE20](v289, v44);
  v264 = &v252 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46, v47);
  v259 = &v252 - v48;
  MEMORY[0x28223BE20](v49, v50);
  v274 = &v252 - v51;
  v266 = type metadata accessor for PriceViewModel();
  MEMORY[0x28223BE20](v266, v52);
  v291 = (&v252 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v54, v55);
  v293 = (&v252 - v56);
  v287 = sub_22088699C();
  v286 = *(v287 - 8);
  MEMORY[0x28223BE20](v287, v57);
  v283 = &v252 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v59, v60);
  v284 = &v252 - v61;
  MEMORY[0x28223BE20](v62, v63);
  v263 = &v252 - v64;
  sub_220454490(0, &qword_2812912F0, type metadata accessor for StockViewRenderer.RenderedState, v15);
  MEMORY[0x28223BE20](v65 - 8, v66);
  v68 = &v252 - v67;
  v69 = sub_22088677C();
  v71 = v70;
  sub_2204DBD14(a1, v68);
  v72 = type metadata accessor for StockViewRenderer.RenderedState();
  (*(*(v72 - 8) + 56))(v68, 0, 1, v72);
  swift_beginAccess();
  sub_2204DBE94(v68, v69, v71);
  swift_endAccess();
  v73 = *&a4[OBJC_IVAR____TtC8StocksUI9StockView_symbolLabel];
  [v73 setFrame_];
  v74 = *&a4[OBJC_IVAR____TtC8StocksUI9StockView_companyLabel];
  [v74 setFrame_];
  v75 = *&a4[OBJC_IVAR____TtC8StocksUI9StockView_companyLabelLong];
  [v75 setFrame_];
  v303 = *&a4[OBJC_IVAR____TtC8StocksUI9StockView_exchangeLabel];
  [v303 setFrame_];
  v76 = *(a3 + 184);
  v77 = *(a3 + 192);
  v78 = *(a3 + 200);
  v79 = *(a3 + 208);
  v295 = *&a4[OBJC_IVAR____TtC8StocksUI9StockView_priceLabel];
  [v295 setFrame_];
  v298 = a4;
  v80 = *&a4[OBJC_IVAR____TtC8StocksUI9StockView_priceChangeButton];
  [v80 setFrame_];
  v81 = *(a3 + 248);
  v82 = *(a3 + 256);
  v83 = *(a3 + 264);
  v84 = *(a3 + 272);
  v288 = v80;
  [v80 setContentEdgeInsets_];
  swift_beginAccess();
  sub_22046DA2C((v6 + 2), &v306);
  __swift_project_boxed_opaque_existential_1(&v306, v308);
  sub_22088684C();
  v85 = sub_2204C3EAC();

  [v73 setAttributedText_];

  __swift_destroy_boxed_opaque_existential_1(&v306);
  v273 = a3;
  v86 = *(a3 + 80);
  v296 = v74;
  v278 = v86;
  [v74 setAttributedText_];
  sub_22046DA2C((v6 + 2), &v306);
  __swift_project_boxed_opaque_existential_1(&v306, v308);
  v87 = sub_2208867BC();
  LOBYTE(v74) = v294;
  v89 = sub_2204C4604(v87, v88, v294);

  v301 = v75;
  [v75 setAttributedText_];

  __swift_destroy_boxed_opaque_existential_1(&v306);
  sub_22046DA2C((v6 + 2), &v306);
  __swift_project_boxed_opaque_existential_1(&v306, v308);
  v90 = type metadata accessor for StockViewModel();
  v292 = *(v90 + 20);
  v91 = sub_2204C4258(&a2[v292]);
  v93 = sub_2204C43E4(v91, v92, v74);

  [v303 setAttributedText_];

  __swift_destroy_boxed_opaque_existential_1(&v306);
  v302 = v6;
  sub_22046DA2C((v6 + 2), &v306);
  __swift_project_boxed_opaque_existential_1(&v306, v308);
  v297 = v90;
  v94 = *(v90 + 28);
  v303 = a2;
  v95 = &a2[v94];
  sub_220886BCC();
  sub_220886BAC();
  if (qword_281298FC0 != -1)
  {
    swift_once();
  }

  sub_220886B9C();

  if (v95[8])
  {
    goto LABEL_16;
  }

  v96 = *v95;
  if ((v304 & 1) == 0)
  {
    goto LABEL_12;
  }

  v97 = v286;
  v98 = v263;
  v99 = v287;
  (*(v286 + 16))(v263, &v95[*(v266 + 40)], v287);
  v100 = (*(v97 + 88))(v98, v99);
  v101 = 2;
  if (v100 != *MEMORY[0x277D69898] && v100 != *MEMORY[0x277D698A0] && v100 != *MEMORY[0x277D69870] && v100 != *MEMORY[0x277D69888] && v100 != *MEMORY[0x277D69878] && v100 != *MEMORY[0x277D69890])
  {
    if (v100 == *MEMORY[0x277D69880])
    {
LABEL_12:
      v101 = 0;
      goto LABEL_13;
    }

    if (v100 != *MEMORY[0x277D69868])
    {
      (*(v286 + 8))(v98, v287);
    }

    v101 = 2;
  }

LABEL_13:
  if (qword_281294078 != -1)
  {
    v251 = v101;
    swift_once();
    v101 = v251;
  }

  sub_2204BD7B8(*(v95 + 6), *(v95 + 7), 5, 1, v101, v96);
  if (!v102)
  {
LABEL_16:
  }

  v103 = sub_2204C0128();

  [v295 setAttributedText_];

  __swift_destroy_boxed_opaque_existential_1(&v306);
  [v296 setNumberOfLines_];
  [v301 setNumberOfLines_];
  v104 = v293;
  v105 = v303;
  sub_2204DB420(v293);
  v106 = v285;
  v107 = (v285 + 16);
  v108 = *(v285 + 16);
  v301 = *(v297 + 32);
  v109 = v274;
  v110 = v289;
  v108(v274, v301 + v105, v289);
  v274 = *(v106 + 88);
  v111 = (v274)(v109, v110);
  LODWORD(v110) = *MEMORY[0x277D69480];
  v263 = v107;
  v262 = v108;
  v261 = v106 + 88;
  v260 = v110;
  v275 = v95;
  if (v111 != v110)
  {
    if (v111 == *MEMORY[0x277D69468])
    {
      if (v104[1] & 1) != 0 || (v104[3])
      {
        goto LABEL_34;
      }

      v115 = *(v104 + 2);
      v116 = *v104 - v115;
      v117 = v115 / v116;
      if (v116 <= 0.0)
      {
        v118 = 0.0;
      }

      else
      {
        v118 = v117;
      }

      if (qword_27CF55AB8 == -1)
      {
        goto LABEL_49;
      }
    }

    else
    {
      if (v111 != *MEMORY[0x277D69478])
      {
        goto LABEL_115;
      }

      if ((sub_2208857CC() & 1) == 0)
      {
        v119 = v104;
        v120 = sub_220691100(0);
        v121 = v123;
        goto LABEL_52;
      }

      if (v104[1] & 1) != 0 || (v104[3])
      {
LABEL_34:
        v119 = v104;
        v120 = v104[8];
        v121 = v104[9];
LABEL_35:

        goto LABEL_52;
      }

      v124 = *(v104 + 2);
      v125 = *v104 - v124;
      v126 = v124 / v125;
      if (v125 <= 0.0)
      {
        v118 = 0.0;
      }

      else
      {
        v118 = v126;
      }

      if (qword_27CF55AB8 == -1)
      {
LABEL_49:
        v127 = qword_27CF6D008;
        v128 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
        v129 = [v127 stringFromNumber_];

        if (!v129)
        {
LABEL_63:
          v119 = v293;
          v120 = v293[8];
          v121 = v293[9];
          goto LABEL_35;
        }

        v120 = sub_22089136C();
        v121 = v130;

        goto LABEL_51;
      }
    }

    swift_once();
    goto LABEL_49;
  }

  if (v104[3])
  {
    goto LABEL_34;
  }

  v112 = *(v104 + 2);
  if (v104[1])
  {
    v113 = sub_2204DBC04(0, v112);
    if (!v114)
    {
      goto LABEL_63;
    }
  }

  else
  {
    v122 = *v104 == 0.0 || *v104 >= 5.0;
    v113 = sub_2204DBC04(v122, v112);
    if (!v114)
    {
      goto LABEL_63;
    }
  }

  v120 = v113;
  v121 = v114;
LABEL_51:
  v119 = v293;
LABEL_52:
  sub_2204D9BFC(v119, type metadata accessor for PriceViewModel);
  v131 = v291;
  v132 = v303;
  sub_2204DB420(v291);
  v133 = *(v131 + 2);
  v134 = *(v131 + 24);
  sub_2204D9BFC(v131, type metadata accessor for PriceViewModel);
  if (v134)
  {
    v135 = 2;
  }

  else
  {
    v135 = v133 < 0.0;
  }

  v136 = v302;
  __swift_project_boxed_opaque_existential_1(v302 + 2, v302[5]);
  v137 = sub_2204C080C(v120, v121, v135);
  v138 = v288;
  [v288 setAttributedTitle:v137 forState:0];

  __swift_project_boxed_opaque_existential_1(v136 + 2, v136[5]);
  v139 = sub_2204DB17C(v120, v121, v135);

  v140 = v138;
  [v138 setAttributedTitle:v139 forState:1];

  v296 = [v296 attributedText];
  v293 = Stock.accessibleSymbol.getter();
  v295 = [v295 attributedText];
  v141 = v301;
  sub_2204DA46C();
  v142 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v143 = sub_22089132C();

  v291 = [v142 initWithString_];

  sub_22089130C();
  sub_22088528C();
  sub_2208913CC();
  v144 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v145 = sub_22089132C();

  v146 = [v144 initWithString_];

  v147 = sub_2204DAE00(v141 + v132);
  if (v148)
  {
    v149 = v147;
    v150 = v148;
    v151 = v271;
    sub_2204B26FC(v303 + v292, v271, &qword_2812990C0, MEMORY[0x277D697F8]);
    v153 = v299;
    v152 = v300;
    if ((*(v299 + 48))(v151, 1, v300) == 1)
    {
      sub_2204B382C(v151, &qword_2812990C0, MEMORY[0x277D697F8]);
      v154 = v140;
    }

    else
    {
      v290 = v146;
      v157 = v265;
      (*(v153 + 32))(v265, v151, v152);
      sub_22088666C();
      if (v158)
      {
        (*(v153 + 8))(v157, v152);
        v146 = v290;
        v154 = v140;
      }

      else
      {
        v159 = v285;
        v160 = v259;
        v161 = v289;
        (*(v285 + 104))(v259, *MEMORY[0x277D69478], v289);
        sub_22046C0A4(&qword_2812992E0, 255, MEMORY[0x277D69488]);
        sub_22089167C();
        sub_22089167C();
        (*(v159 + 8))(v160, v161);
        if (v306 == v304)
        {
          v162 = [objc_opt_self() mainBundle];
          v146 = v290;
          sub_220884CAC();
          v154 = v288;
          v156 = 0x277CCA000;

          (*(v299 + 8))(v265, v300);
LABEL_66:
          sub_220454490(0, &qword_28127DE60, sub_220571878, MEMORY[0x277D84560]);
          v163 = swift_allocObject();
          *(v163 + 16) = xmmword_220899360;
          *(v163 + 56) = MEMORY[0x277D837D0];
          *(v163 + 64) = sub_22048D860();
          *(v163 + 32) = v149;
          *(v163 + 40) = v150;
          sub_22089139C();

          v164 = objc_allocWithZone(*(v156 + 2200));
          v165 = sub_22089132C();

          v166 = [v164 initWithString_];

          v146 = v166;
          v155 = v298;
          goto LABEL_67;
        }

        (*(v299 + 8))(v265, v300);
        v154 = v288;
        v146 = v290;
      }
    }

    v156 = 0x277CCA000uLL;
    goto LABEL_66;
  }

  v155 = v298;
  v154 = v140;
  v156 = 0x277CCA000;
LABEL_67:
  v167 = *&v155[OBJC_IVAR____TtC8StocksUI9StockView_axElement];
  if (v167)
  {
    v168 = objc_allocWithZone(*(v156 + 2200));
    v169 = v167;
    v170 = sub_22089132C();
    v171 = [v168 initWithString_];

    sub_220454490(0, &qword_28127DE88, sub_2204DD854, MEMORY[0x277D84560]);
    v172 = swift_allocObject();
    *(v172 + 16) = xmmword_22089C660;
    v173 = v296;
    v174 = v293;
    *(v172 + 32) = v296;
    *(v172 + 40) = v174;
    v175 = v154;
    v176 = v146;
    v177 = v295;
    v178 = v291;
    *(v172 + 48) = v295;
    *(v172 + 56) = v178;
    *(v172 + 64) = v176;
    v179 = v173;
    v180 = v174;
    v181 = v177;
    v146 = v176;
    v154 = v175;
    v182 = v178;
    v183 = v146;
    v184 = sub_22088AD2C();

    [v169 setAccessibilityAttributedLabel_];
  }

  MEMORY[0x28223BE20](v147, v148);
  sub_2204DD7F8();
  sub_22046C0A4(qword_2812942B0, 255, sub_2204DD7F8);
  sub_220891F9C();
  sub_2204DA46C();
  v185 = sub_22089132C();

  [v154 setAccessibilityLabel_];

  v186 = [v146 string];
  if (!v186)
  {
    sub_22089136C();
    v186 = sub_22089132C();
  }

  [v154 setAccessibilityValue_];

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v188 = [objc_opt_self() bundleForClass_];
  sub_220884CAC();

  v189 = sub_22089132C();

  [v154 setAccessibilityHint_];

  v190 = v277;
  sub_2204B26FC(v303 + v292, v277, &qword_2812990C0, MEMORY[0x277D697F8]);
  v192 = v299;
  v191 = v300;
  v193 = (*(v299 + 48))(v190, 1, v300);
  v194 = v283;
  if (v193 == 1)
  {
    sub_2204B382C(v190, &qword_2812990C0, MEMORY[0x277D697F8]);
    __swift_project_boxed_opaque_existential_1(v302 + 2, v302[5]);
    sub_2204DA29C(v154, 2);
    goto LABEL_91;
  }

  v195 = v272;
  (*(v192 + 32))(v272, v190, v191);
  sub_22046DA2C((v302 + 2), &v306);
  __swift_project_boxed_opaque_existential_1(&v306, v308);
  v196 = COERCE_DOUBLE(sub_22088666C()) < 0.0;
  if (v197)
  {
    v198 = 2;
  }

  else
  {
    v198 = v196;
  }

  sub_2204DA29C(v154, v198);
  __swift_destroy_boxed_opaque_existential_1(&v306);
  if (!UIAccessibilityShouldDifferentiateWithoutColor())
  {
    goto LABEL_90;
  }

  v199 = v264;
  v200 = v289;
  v262(v264, v301 + v303, v289);
  v201 = (v274)(v199, v200);
  if (v201 == v260)
  {
    v202 = v146;
    v203 = MEMORY[0x277D68AE0];
    goto LABEL_83;
  }

  if (v201 == *MEMORY[0x277D69468])
  {
    v202 = v146;
    v203 = MEMORY[0x277D68AD8];
    goto LABEL_83;
  }

  if (v201 == *MEMORY[0x277D69478])
  {
    v202 = v146;
    v203 = MEMORY[0x277D68AE8];
LABEL_83:
    v204 = MEMORY[0x277D68AE8];
    v205 = *(v269 + 104);
    v206 = v270;
    v205(v268, *v203, v270);
    v205(v267, *v204, v206);
    sub_22046C0A4(&qword_281298378, 255, MEMORY[0x277D68AF0]);
    sub_22089167C();
    sub_22089167C();
    if (v306 == v304 && v307 == v305)
    {
      v207 = *(v269 + 8);
      v208 = v270;
      v207(v267, v270);
      v207(v268, v208);

      v195 = v272;
      v209 = v288;
      v146 = v202;
      v155 = v298;
LABEL_87:
      sub_22088671C();
      if ((v213 & 1) == 0)
      {
        v214 = COERCE_DOUBLE(sub_22088666C());
        if ((v215 & 1) == 0)
        {
          sub_2205D7B4C(v209, v214 < 0.0);
        }
      }

      goto LABEL_90;
    }

    v210 = sub_2208928BC();
    v211 = *(v269 + 8);
    v212 = v270;
    v211(v267, v270);
    v211(v268, v212);

    v195 = v272;
    v209 = v288;
    v146 = v202;
    v155 = v298;
    if (v210)
    {
      goto LABEL_87;
    }

LABEL_90:
    (*(v299 + 8))(v195, v300);
LABEL_91:
    v216 = v281;
    sub_2204B26FC(v303 + *(v297 + 24), v281, qword_28128AAE8, type metadata accessor for StockSparklineViewModel);
    v217 = (*(v279 + 48))(v216, 1, v280);
    v218 = v282;
    v290 = v146;
    if (v217 == 1)
    {
      sub_2204B382C(v216, qword_28128AAE8, type metadata accessor for StockSparklineViewModel);
    }

    else
    {
      sub_2204DBE2C(v216, v282, type metadata accessor for StockSparklineViewModel);
      v219 = *(v273 + 320);
      if (v219 != 1 && (*(v273 + 312) & 1) == 0)
      {
        v245 = *(v273 + 296);
        v244 = *(v273 + 304);
        v247 = *(v273 + 280);
        v246 = *(v273 + 288);
        v248 = *&v155[OBJC_IVAR____TtC8StocksUI9StockView_sparklineView];
        v249 = v219;
        [v248 setFrame_];
        __swift_project_boxed_opaque_existential_1(v302 + 7, v302[10]);
        (*(v256 + 104))(v254, *MEMORY[0x277D6C788], v258);
        v250 = v253;
        sub_2208910EC();
        sub_2204D9CA0(v218, v248, v219, v250);
        (*(v255 + 8))(v250, v257);
        [v248 setHidden_];
        sub_2204C4FA0(v219);
        sub_2204D9BFC(v218, type metadata accessor for StockSparklineViewModel);
        goto LABEL_97;
      }

      sub_2204D9BFC(v218, type metadata accessor for StockSparklineViewModel);
    }

    [*&v155[OBJC_IVAR____TtC8StocksUI9StockView_sparklineView] setHidden_];
LABEL_97:
    if (UIAccessibilityDarkerSystemColorsEnabled() && (v294 & 1) != 0)
    {
      v220 = [objc_opt_self() lightTextColor];
      [v155 setBackgroundColor_];
    }

    v221 = v302;
    v222 = sub_2204D92D4(v303);
    v223 = *&v155[OBJC_IVAR____TtC8StocksUI9StockView_accessibilityPriceString];
    *&v155[OBJC_IVAR____TtC8StocksUI9StockView_accessibilityPriceString] = v222;

    __swift_project_boxed_opaque_existential_1(v221 + 12, v221[15]);
    v224 = [v278 string];
    sub_22089136C();

    v225 = v298;
    v226 = sub_2208863DC();
    v228 = v227;

    v229 = &v225[OBJC_IVAR____TtC8StocksUI9StockView_accessibilityUserInputCompanyLabel];
    *v229 = v226;
    v229[1] = v228;

    __swift_project_boxed_opaque_existential_1(v221 + 12, v221[15]);
    sub_2208867BC();
    v230 = sub_2208863DC();
    v232 = v231;

    v233 = &v225[OBJC_IVAR____TtC8StocksUI9StockView_accessibilityUserInputCompanyName];
    *v233 = v230;
    v233[1] = v232;

    v234 = v284;
    sub_2208867CC();
    v235 = v286;
    v236 = v287;
    (*(v286 + 104))(v194, *MEMORY[0x277D69888], v287);
    sub_22046C0A4(&qword_281299008, 255, MEMORY[0x277D698A8]);
    sub_22089167C();
    sub_22089167C();
    if (v306 == v304 && v307 == v305)
    {
      v237 = *(v235 + 8);
      v237(v194, v236);
      v237(v234, v236);

      v238 = v290;
    }

    else
    {
      v239 = sub_2208928BC();
      v240 = *(v235 + 8);
      v240(v194, v236);
      v240(v234, v236);

      v238 = v290;
      if ((v239 & 1) == 0)
      {
        if (sub_22088677C() != 0x5053475E3A504E53 || v242 != 0xE900000000000043)
        {
          v243 = sub_2208928BC();

          if (v243)
          {
            v241 = 2;
          }

          else
          {
            v241 = 1;
          }

          goto LABEL_106;
        }

        v241 = 2;
LABEL_105:

LABEL_106:
        v225[OBJC_IVAR____TtC8StocksUI9StockView_accessibilitySymbolLabelSpeechType] = v241;
        return;
      }
    }

    v241 = 0;
    goto LABEL_105;
  }

LABEL_115:
  sub_2208928AC();
  __break(1u);
}

char *sub_2204D915C(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC8StocksUI18StockSparklineView_sparklineView;
  *&v4[v9] = [objc_allocWithZone(sub_220890CDC()) initWithFrame_];
  v10 = OBJC_IVAR____TtC8StocksUI18StockSparklineView_baselineIndicatorLayer;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v11 = OBJC_IVAR____TtC8StocksUI18StockSparklineView_nonAnimatingDelegate;
  *&v4[v11] = [objc_allocWithZone(type metadata accessor for StockSparklineView.NonAnimatingDelegate()) init];
  v19.receiver = v4;
  v19.super_class = type metadata accessor for StockSparklineView();
  v12 = objc_msgSendSuper2(&v19, sel_initWithFrame_, a1, a2, a3, a4);
  v13 = OBJC_IVAR____TtC8StocksUI18StockSparklineView_baselineIndicatorLayer;
  v14 = *&v12[OBJC_IVAR____TtC8StocksUI18StockSparklineView_baselineIndicatorLayer];
  v15 = *&v12[OBJC_IVAR____TtC8StocksUI18StockSparklineView_nonAnimatingDelegate];
  v16 = v12;
  [v14 setDelegate_];
  v17 = [v16 layer];
  [v17 addSublayer_];

  [v16 addSubview_];
  return v16;
}

id sub_2204D92D4(uint64_t a1)
{
  v58 = *v1;
  sub_220454490(0, &qword_2812990C0, MEMORY[0x277D697F8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v56 - v5;
  v7 = sub_22088699C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for StockViewModel();
  v13 = a1 + *(v12 + 28);
  sub_220886BCC();
  sub_220886BAC();
  if (qword_281298FC0 != -1)
  {
    swift_once();
  }

  sub_220886B9C();

  v14 = *v13;
  v57 = *(v13 + 8);
  v56 = v14;
  if (v57)
  {
    goto LABEL_17;
  }

  v15 = v14;
  if ((v61 & 1) == 0)
  {
    goto LABEL_12;
  }

  v16 = type metadata accessor for PriceViewModel();
  (*(v8 + 16))(v11, v13 + *(v16 + 40), v7);
  v17 = (*(v8 + 88))(v11, v7);
  v18 = 2;
  if (v17 != *MEMORY[0x277D69898] && v17 != *MEMORY[0x277D698A0] && v17 != *MEMORY[0x277D69870] && v17 != *MEMORY[0x277D69888] && v17 != *MEMORY[0x277D69878] && v17 != *MEMORY[0x277D69890])
  {
    if (v17 == *MEMORY[0x277D69880])
    {
LABEL_12:
      v18 = 0;
      goto LABEL_13;
    }

    if (v17 != *MEMORY[0x277D69868])
    {
      (*(v8 + 8))(v11, v7);
    }

    v18 = 2;
  }

LABEL_13:
  if (qword_281294078 != -1)
  {
    v55 = v18;
    swift_once();
    v18 = v55;
  }

  v19 = sub_2204BD7B8(*(v13 + 48), *(v13 + 56), 5, 1, v18, v15);
  if (v20)
  {
    v21 = v19;
    v22 = v20;
    goto LABEL_18;
  }

LABEL_17:
  v21 = *(v13 + 64);
  v22 = *(v13 + 72);

LABEL_18:
  sub_22046C0A4(&qword_281291288, v20, type metadata accessor for StockViewRenderer);
  sub_220886B3C();
  if (v61 == 1)
  {
    sub_2204B26FC(a1 + *(v12 + 20), v6, &qword_2812990C0, MEMORY[0x277D697F8]);
    v23 = sub_22088676C();
    v24 = *(v23 - 8);
    if ((*(v24 + 48))(v6, 1, v23) == 1)
    {
      sub_2204B382C(v6, &qword_2812990C0, MEMORY[0x277D697F8]);
      goto LABEL_28;
    }

    v25 = sub_22088668C();
    v27 = v26;
    (*(v24 + 8))(v6, v23);
    if (!v27)
    {
      goto LABEL_28;
    }

    v61 = v21;
    v62 = v22;
    v59 = v25;
    v60 = v27;
    sub_22059B6A4();
    v28 = MEMORY[0x277D837D0];
    if (sub_22089239C())
    {

      if ((v57 & 1) == 0)
      {
        v29 = v56;
        if (qword_281294078 != -1)
        {
          swift_once();
        }

        v30 = sub_2204BE298(0, 5, 1, v29);
        [v30 setNumberStyle_];
        v31 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
        v32 = [v30 stringFromNumber_];

        if (v32)
        {
          v21 = sub_22089136C();
          v22 = v33;

          goto LABEL_35;
        }
      }

      v21 = *(v13 + 64);
      v22 = *(v13 + 72);
    }

LABEL_35:
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v39 = [objc_opt_self() bundleForClass_];
    sub_220884CAC();

    v40 = sub_22089132C();

    v41 = sub_2208913EC();
    v43 = v42;

    sub_22044D56C(0, &qword_28127E458);
    v44 = MEMORY[0x277D84560];
    sub_220454490(0, &qword_28127DE60, sub_220571878, MEMORY[0x277D84560]);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_220899920;
    *(v45 + 56) = v28;
    v46 = sub_22048D860();
    *(v45 + 32) = v21;
    *(v45 + 40) = v22;
    *(v45 + 96) = v28;
    *(v45 + 104) = v46;
    *(v45 + 64) = v46;
    *(v45 + 72) = v41;
    *(v45 + 80) = v43;

    v35 = sub_2208920AC();
    v36 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithString_];
    v47 = sub_22089132C();

    v48 = [v35 rangeOfString_];
    v50 = v49;

    sub_220454490(0, &qword_28127DE80, sub_2204A5D84, v44);
    inited = swift_initStackObject();
    v52 = *MEMORY[0x277D76518];
    *(inited + 32) = *MEMORY[0x277D76518];
    *(inited + 16) = xmmword_220899360;
    *(inited + 64) = MEMORY[0x277D839B0];
    *(inited + 40) = 1;
    v53 = v52;
    sub_2204A5EAC(inited);
    swift_setDeallocating();
    sub_2204D9BFC(inited + 32, sub_2204A5D84);
    type metadata accessor for Key(0);
    sub_22046C0A4(&qword_28127E6A8, 255, type metadata accessor for Key);
    v54 = sub_22089125C();

    [v36 addAttributes:v54 range:{v48, v50}];

    goto LABEL_29;
  }

LABEL_28:
  v34 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v35 = sub_22089132C();

  v36 = [v34 initWithString_];
LABEL_29:

  return v36;
}

uint64_t sub_2204D9BFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2204D9CA0(uint64_t a1, char *a2, id a3, uint64_t a4)
{
  v5 = v4;
  v49 = a4;
  v50 = sub_220890DAC();
  v48 = *(v50 - 8);
  MEMORY[0x28223BE20](v50, v9);
  v11 = &v45[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2204B1AFC();
  v13 = v12;
  v51 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v45[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_220890D8C();
  v54 = *(v17 - 8);
  v55 = v17;
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v45[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = sub_22089106C();
  v52 = *(v21 - 8);
  v53 = v21;
  *&v23 = MEMORY[0x28223BE20](v21, v22).n128_u64[0];
  v25 = &v45[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = *&a2[OBJC_IVAR____TtC8StocksUI18StockSparklineView_baselineIndicatorLayer];
  [a2 bounds];
  [v26 setFrame_];
  v47 = v11;
  if (a3)
  {
    a3 = [a3 CGPath];
  }

  [v26 setPath_];

  swift_beginAccess();
  sub_22046DA2C(v5 + 16, v56);
  __swift_project_boxed_opaque_existential_1(v56, v57);
  v27 = type metadata accessor for StockSparklineViewModel(0);
  v28 = *(v27 + 28);
  v29 = a1 + *(v27 + 24);
  v30 = *v29;
  v31 = *(v29 + 8);
  v32 = *v29 < 0.0;
  v46 = v31;
  if (v31)
  {
    v33 = 2;
  }

  else
  {
    v33 = v32;
  }

  v34 = *(a1 + v28);
  sub_2204DD420(v26, v33, *(a1 + v28));
  __swift_destroy_boxed_opaque_existential_1(v56);
  [a2 frame];
  CGRectGetWidth(v58);
  [a2 frame];
  CGRectGetHeight(v59);
  sub_22089105C();
  v35 = a1;
  v36 = v25;
  v37 = v54;
  v38 = v55;
  (*(v54 + 16))(v20, v35, v55);
  sub_220890D7C();
  v39 = sub_22089117C();
  (*(v51 + 8))(v16, v13);
  v40 = *(v39 + 16);

  if (v40)
  {
    __swift_project_boxed_opaque_existential_1((v5 + 56), *(v5 + 80));
    sub_22046DA2C(v5 + 16, v56);
    __swift_project_boxed_opaque_existential_1(v56, v57);
    if (v34)
    {
      v41 = v47;
      sub_2206EE970(v47);
      v42 = v54;
    }

    else
    {
      v44 = v46;
      if (v30 >= 0.0)
      {
        v44 = 1;
      }

      v42 = v54;
      v41 = v47;
      if (v44)
      {
        sub_2204DDF10(v47);
      }

      else
      {
        sub_2204DD2E4(v47);
      }
    }

    sub_22089107C();
    (*(v48 + 8))(v41, v50);
    (*(v42 + 8))(v20, v55);
    (*(v52 + 8))(v36, v53);
    return __swift_destroy_boxed_opaque_existential_1(v56);
  }

  else
  {
    (*(v37 + 8))(v20, v38);
    return (*(v52 + 8))(v36, v53);
  }
}

uint64_t sub_2204DA204()
{
  v1 = *v0;
  v2 = sub_2208851BC();
  v3 = (v1 + OBJC_IVAR____TtC8StocksUI10BaseStyler_theme);
  v4 = *(v1 + OBJC_IVAR____TtC8StocksUI10BaseStyler_theme + 24);
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  if (v2)
  {
    return (*(v5 + 224))(v4, v5);
  }

  else
  {
    return (*(v5 + 232))(v4, v5);
  }
}

id sub_2204DA29C(void *a1, char a2)
{
  v5 = [a1 layer];
  [v5 setCornerCurve_];

  v6 = [a1 layer];
  [v6 setCornerRadius_];

  v7 = [a1 titleLabel];
  if (v7)
  {
    v8 = v7;
    [v7 setLineBreakMode_];
  }

  if (a2 == 2)
  {
    v9 = v2[11];
    v10 = v2[12];
    __swift_project_boxed_opaque_existential_1(v2 + 8, v9);
    v11 = (*(*(v10 + 16) + 448))(v9);
    v12 = [v11 stocksAccessibilityAdjustedDarkerForIncreaseContrast];

    v13 = 0;
  }

  else
  {
    v14 = v2[11];
    v15 = v2[12];
    __swift_project_boxed_opaque_existential_1(v2 + 8, v14);
    if (a2)
    {
      v16 = (*(v15 + 48))(v14, v15);
    }

    else
    {
      v16 = (*(v15 + 40))(v14, v15);
    }

    v12 = v16;
    v13 = 2;
  }

  [a1 setBackgroundColor_];

  return [a1 setContentHorizontalAlignment_];
}

uint64_t sub_2204DA45C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2204DA46C()
{
  v1 = v0;
  v2 = sub_220885D4C();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v7, v1, v2, v5);
  v8 = (*(v3 + 88))(v7, v2);
  v9 = v8 == *MEMORY[0x277D69480] || v8 == *MEMORY[0x277D69468];
  if (v9 || v8 == *MEMORY[0x277D69478])
  {
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v11 = [objc_opt_self() bundleForClass_];
    v12 = sub_220884CAC();
  }

  else
  {
    (*(v3 + 8))(v7, v2);
    return 0;
  }

  return v12;
}

void sub_2204DA720(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v6 = type metadata accessor for StockViewRenderer.RenderedState();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v39 - v13;
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v39 - v17;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    swift_beginAccess();
    v21 = swift_unknownObjectWeakLoadStrong();
    if (!v21)
    {

      return;
    }

    v22 = v21;
    v42 = v7;
    v44 = a4;
    v45 = v20;
    v23 = a3;
    v24 = *(v20 + 40);
    swift_unknownObjectRetain();
    v25 = sub_22088C42C();
    v26 = OBJC_IVAR____TtC8StocksUI9StockView_revision;
    swift_beginAccess();
    v27 = *&v25[v26];
    v40 = *(v6 + 28);
    sub_2204BD6E8(v23, &v18[v40], type metadata accessor for StockViewModel);
    *v18 = v25;
    *(v18 + 1) = v27;
    v41 = v27;
    v18[16] = 0;
    v43 = v23;
    v28 = sub_22088677C();
    v30 = v29;
    swift_beginAccess();
    v31 = *(v24 + 136);
    if (*(v31 + 16))
    {
      v39 = sub_2204AF97C(v28, v30);
      v33 = v32;

      if (v33)
      {
        sub_2204BD6E8(*(v31 + 56) + *(v42 + 72) * v39, v10, type metadata accessor for StockViewRenderer.RenderedState);
        sub_2204C9F54(v10, v14, type metadata accessor for StockViewRenderer.RenderedState);
        swift_endAccess();
        if (*v14 != v25 || *(v14 + 1) != v41 || (v14[16] & 1) != 0 || (sub_2204CDC68(&v14[*(v6 + 28)], &v18[v40]) & 1) == 0)
        {
          sub_2204D6D68(v18, v43, v44, v25, 0);
        }

        sub_2204D6128(v14, type metadata accessor for StockViewRenderer.RenderedState);
LABEL_14:
        sub_2204D6128(v18, type metadata accessor for StockViewRenderer.RenderedState);
        swift_unknownObjectRelease();
        v34 = sub_22088C3EC();
        v35 = sub_22088C42C();
        v36 = sub_22088C42C();
        v37 = [v36 accessibilityTraits];

        v38 = *MEMORY[0x277D76598];
        if ((v34 & 1) == 0)
        {
          [v35 setAccessibilityTraits_];

          return;
        }

        if (v37)
        {
          if ((v38 & ~v37) == 0)
          {
            goto LABEL_22;
          }
        }

        else if (!v38)
        {
          v37 = 0;
          goto LABEL_22;
        }

        v37 |= v38;
LABEL_22:
        [v35 setAccessibilityTraits_];

        return;
      }
    }

    else
    {
    }

    swift_endAccess();
    sub_2204D6D68(v18, v43, v44, v25, 0);

    goto LABEL_14;
  }
}

uint64_t sub_2204DAB24(char a1, double a2)
{
  if (qword_28128EF38 != -1)
  {
    v23 = a1;
    swift_once();
    a1 = v23;
  }

  v3 = fabs(a2);
  v4 = sub_2204BE298(a1, 3, 1, v3);
  [v4 setNumberStyle_];
  v5 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v6 = [v4 stringFromNumber_];

  if (v6)
  {
    v7 = sub_22089136C();
    v9 = v8;

    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v11 = objc_opt_self();
    v12 = [v11 bundleForClass_];
    sub_220884CAC();

    v13 = [v11 bundleForClass_];
    v14 = sub_220884CAC();
    v16 = v15;

    sub_22048D7F8();
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_22089B140;
    v18 = MEMORY[0x277D83A80];
    *(v17 + 56) = MEMORY[0x277D839F8];
    *(v17 + 64) = v18;
    *(v17 + 32) = v3;
    v19 = MEMORY[0x277D837D0];
    *(v17 + 96) = MEMORY[0x277D837D0];
    v20 = sub_22048D860();
    *(v17 + 72) = v14;
    *(v17 + 80) = v16;
    *(v17 + 136) = v19;
    *(v17 + 144) = v20;
    *(v17 + 104) = v20;
    *(v17 + 112) = v7;
    *(v17 + 120) = v9;
    v21 = sub_22089133C();
  }

  else
  {

    return 0;
  }

  return v21;
}

uint64_t sub_2204DAE00(uint64_t a1)
{
  v3 = sub_2208852DC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_220885D4C();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v13, a1, v8, v11);
  v14 = (*(v9 + 88))(v13, v8);
  if (v14 != *MEMORY[0x277D69480])
  {
    if (v14 == *MEMORY[0x277D69468])
    {
      if ((*(v1 + 8) & 1) == 0 && (*(v1 + 24) & 1) == 0)
      {
        result = sub_220682E44(*v1, *(v1 + 16));
        if (!v18)
        {
          goto LABEL_4;
        }

        return result;
      }

      return 0;
    }

    if (v14 != *MEMORY[0x277D69478])
    {
      (*(v9 + 8))(v13, v8);
      return 0;
    }

    if (*(v1 + 40))
    {
      return 0;
    }

    v19 = *(v1 + 32);
    if (fabs(v19) >= 9.22337204e18)
    {
      return 0;
    }

    if ((~*(v1 + 32) & 0x7FF0000000000000) != 0)
    {
      if (v19 > -9.22337204e18)
      {
        v8 = v19;
        if (qword_27CF55AE0 == -1)
        {
          if (v8 < 1)
          {
            return 0;
          }

LABEL_17:
          v20 = *(qword_27CF6D018 + 16);
          sub_22088528C();
          v21 = sub_22088523C();
          (*(v4 + 8))(v7, v3);
          v22 = [v20 formattedCount:v8 withLocale:v21 longform:1 compactDisplay:0];

          if (v22)
          {
            v23 = sub_22089136C();

            return v23;
          }

          return 0;
        }

LABEL_24:
        swift_once();
        if (v8 < 1)
        {
          return 0;
        }

        goto LABEL_17;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_24;
  }

  if (*(v1 + 24))
  {
    return 0;
  }

  result = sub_2204DAB24(1, *(v1 + 16));
  if (!v16)
  {
LABEL_4:
    v17 = *(v1 + 64);

    return v17;
  }

  return result;
}

uint64_t type metadata accessor for StockViewRenderer.RenderedState()
{
  result = qword_2812912F8;
  if (!qword_2812912F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_2204DB17C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  if (a3 == 2)
  {
    v6 = *(v3 + 88);
    v5 = *(v3 + 96);
    __swift_project_boxed_opaque_existential_1((v4 + 64), *(v4 + 88));
    v7 = (*(*(v5 + 16) + 456))(v6);
  }

  else
  {
    v7 = [objc_opt_self() whiteColor];
  }

  v8 = v7;
  v9 = [v7 colorWithAlphaComponent_];

  sub_2204A5DF0();
  inited = swift_initStackObject();
  v11 = MEMORY[0x277D740A8];
  *(inited + 16) = xmmword_220899920;
  v12 = *v11;
  *(inited + 32) = v12;
  v13 = v12;
  v14 = sub_22088A9DC();
  v15 = sub_22044D56C(0, &qword_28127E570);
  *(inited + 40) = v14;
  v16 = *MEMORY[0x277D740C0];
  *(inited + 64) = v15;
  *(inited + 72) = v16;
  *(inited + 104) = sub_22044D56C(0, &qword_28127E530);
  *(inited + 80) = v9;
  v17 = v16;
  v18 = v9;
  sub_2204A5EAC(inited);
  swift_setDeallocating();
  sub_2204A5D84();
  swift_arrayDestroy();
  v19 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v20 = sub_22089132C();
  type metadata accessor for Key(0);
  sub_2204A63B8();
  v21 = sub_22089125C();

  v22 = [v19 initWithString:v20 attributes:v21];

  return v22;
}

uint64_t sub_2204DB394()
{
  result = type metadata accessor for StockViewModel();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2204DB420@<X0>(uint64_t *a1@<X8>)
{
  v69 = a1;
  v2 = sub_2208852DC();
  v80 = *(v2 - 8);
  v81 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v83 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2208857EC();
  v78 = *(v5 - 8);
  v79 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v75 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22088699C();
  v76 = *(v8 - 8);
  v77 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v82 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v67 - v13;
  v15 = MEMORY[0x277D697F8];
  sub_220454138(0, &qword_2812990C0, MEMORY[0x277D697F8]);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v74 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v67 - v21;
  MEMORY[0x28223BE20](v23, v24);
  v26 = &v67 - v25;
  MEMORY[0x28223BE20](v27, v28);
  v30 = &v67 - v29;
  MEMORY[0x28223BE20](v31, v32);
  v34 = &v67 - v33;
  v35 = type metadata accessor for StockViewModel();
  sub_2204B28E8(v1 + *(v35 + 20), v34, &qword_2812990C0, v15);
  v36 = v14;
  sub_2208867CC();
  v84 = v34;
  sub_2204B28E8(v34, v30, &qword_2812990C0, v15);
  v37 = sub_22088676C();
  v38 = *(v37 - 8);
  v39 = *(v38 + 48);
  if (v39(v30, 1, v37) == 1)
  {
    sub_2204B3B04(v30, &qword_2812990C0, MEMORY[0x277D697F8]);
    v73 = 0;
    v72 = 1;
  }

  else
  {
    v73 = sub_22088675C();
    v72 = v40;
    (*(v38 + 8))(v30, v37);
  }

  sub_2204B28E8(v84, v26, &qword_2812990C0, MEMORY[0x277D697F8]);
  v41 = v36;
  if (v39(v26, 1, v37) == 1)
  {
    sub_2204B3B04(v26, &qword_2812990C0, MEMORY[0x277D697F8]);
    v71 = 0;
    v70 = 1;
  }

  else
  {
    v71 = sub_22088666C();
    v70 = v42;
    (*(v38 + 8))(v26, v37);
  }

  v43 = v74;
  sub_2204B28E8(v84, v22, &qword_2812990C0, MEMORY[0x277D697F8]);
  v44 = v39(v22, 1, v37);
  v45 = v82;
  if (v44 == 1)
  {
    sub_2204B3B04(v22, &qword_2812990C0, MEMORY[0x277D697F8]);
    v74 = 0;
    v68 = 1;
  }

  else
  {
    v74 = sub_22088671C();
    v68 = v46;
    (*(v38 + 8))(v22, v37);
  }

  sub_2204B28E8(v84, v43, &qword_2812990C0, MEMORY[0x277D697F8]);
  if (v39(v43, 1, v37) == 1)
  {
    sub_2204B3B04(v43, &qword_2812990C0, MEMORY[0x277D697F8]);
    v47 = 0;
    v67 = 0;
  }

  else
  {
    v47 = sub_22088668C();
    v67 = v48;
    (*(v38 + 8))(v43, v37);
  }

  v49 = v76;
  v50 = *(v76 + 2);
  v51 = v41;
  v76 = v41;
  v52 = v77;
  v50(v45, v51, v77);
  v54 = v78;
  v53 = v79;
  v55 = v75;
  (*(v78 + 104))(v75, *MEMORY[0x277D69288], v79);
  sub_22088524C();
  v56 = v69;
  *v69 = v73;
  *(v56 + 8) = v72 & 1;
  v56[2] = v71;
  *(v56 + 24) = v70 & 1;
  v56[4] = v74;
  *(v56 + 40) = v68 & 1;
  v56[6] = v47;
  v57 = v53;
  v56[7] = v67;
  v58 = type metadata accessor for PriceViewModel();
  v50(v56 + v58[10], v45, v52);
  v59 = v55;
  v56[8] = 0x9380E29380E2;
  v56[9] = 0xA600000000000000;
  (*(v54 + 16))(v56 + v58[9], v55, v57);
  v61 = v80;
  v60 = v81;
  v62 = v83;
  (*(v80 + 16))(v56 + v58[11], v83, v81);
  if (qword_281294078 != -1)
  {
    swift_once();
  }

  v63 = qword_2812B6B48;
  (*(v54 + 8))(v59, v57);
  v64 = *(v49 + 1);
  v64(v82, v52);
  v64(v76, v52);
  sub_2204B3B04(v84, &qword_2812990C0, MEMORY[0x277D697F8]);
  v65 = OBJC_IVAR____TtC8StocksUI14PriceFormatter_locale;
  swift_beginAccess();
  (*(v61 + 40))(v63 + v65, v62, v60);
  return swift_endAccess();
}

uint64_t sub_2204DBC04(char a1, double a2)
{
  if (qword_28128EF38 != -1)
  {
    v8 = a1;
    swift_once();
    a1 = v8;
  }

  v3 = sub_2204BE298(a1, 3, 0, a2);
  [v3 setNumberStyle_];
  v4 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v5 = [v3 stringFromNumber_];

  if (v5)
  {
    v6 = sub_22089136C();
  }

  else
  {

    return 0;
  }

  return v6;
}

uint64_t sub_2204DBD14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StockViewRenderer.RenderedState();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2204DBD8C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = a2 + 1;
  }

  else
  {
    v7 = type metadata accessor for StockViewModel();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2204DBE2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2204DBE94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_220454490(0, &qword_2812912F0, type metadata accessor for StockViewRenderer.RenderedState, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for StockViewRenderer.RenderedState();
  v13 = MEMORY[0x28223BE20](v11, v12);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v16 + 48))(a1, 1, v13) == 1)
  {
    sub_2204B382C(a1, &qword_2812912F0, type metadata accessor for StockViewRenderer.RenderedState);
    sub_22059AF60(a2, a3, type metadata accessor for StockViewRenderer.RenderedState, type metadata accessor for StockViewRenderer.RenderedState, type metadata accessor for StockViewRenderer.RenderedState, sub_2207D04A4, v10);

    return sub_2204B382C(v10, &qword_2812912F0, type metadata accessor for StockViewRenderer.RenderedState);
  }

  else
  {
    sub_2204DBE2C(a1, v15, type metadata accessor for StockViewRenderer.RenderedState);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_2204DC9F4(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_2204DC0EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = type metadata accessor for StockViewModel();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 28);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_2204DC1AC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_22088685C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  sub_220454138(0, &qword_2812990C0, MEMORY[0x277D697F8]);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_11:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_12;
  }

  sub_220454138(0, qword_28128AAE8, type metadata accessor for StockSparklineViewModel);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_11;
  }

  v15 = type metadata accessor for PriceViewModel();
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_11;
  }

  v16 = sub_220885D4C();
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_11;
  }

  v18 = *(a1 + a3[9]);
  if (v18 >= 2)
  {
    v19 = ((v18 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v19 = -2;
  }

  if (v19 < 0)
  {
    v19 = -1;
  }

  return (v19 + 1);
}

void sub_2204DC3E4(int a1@<W0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v58 = a2;
  v59 = a3;
  v65 = a4;
  v6 = sub_22089114C();
  v62 = *(v6 - 8);
  v63 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v64 = &v50[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_2208911CC();
  v56 = *(v9 - 8);
  v57 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v50[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_220890C5C();
  v52 = *(v13 - 8);
  v53 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v50[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_2208911BC();
  MEMORY[0x28223BE20](v17 - 8, v18);
  v61 = &v50[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2204DD908();
  MEMORY[0x28223BE20](v20 - 8, v21);
  v54 = &v50[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v23, v24);
  v26 = &v50[-v25];
  v27 = *(v4 + OBJC_IVAR____TtC8StocksUI24StockSparklineViewStyler_baseStyler + 24);
  v28 = *(v4 + OBJC_IVAR____TtC8StocksUI24StockSparklineViewStyler_baseStyler + 32);
  __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC8StocksUI24StockSparklineViewStyler_baseStyler), v27);
  (*(v28 + 72))(&v66 + 1, v27, v28);
  v29 = v69;
  v30 = v70;
  __swift_project_boxed_opaque_existential_1((&v66 + 1), v69);
  (*(v30 + 24))(&v66, v29, v30);
  v31 = v66;
  v32 = objc_opt_self();
  v33 = [v32 currentTraitCollection];
  v34 = [v33 userInterfaceStyle];

  v35 = [v32 currentTraitCollection];
  v36 = [v35 accessibilityContrast];

  __swift_destroy_boxed_opaque_existential_1(&v66 + 1);
  BYTE1(v66) = a1;
  v60 = v31;
  BYTE2(v66) = v31;
  v55 = v34;
  v67 = v34;
  v68 = v36;
  v37 = v36;
  sub_220888D3C();
  v38 = sub_220890DAC();
  v39 = *(v38 - 8);
  if ((*(v39 + 48))(v26, 1, v38) == 1)
  {
    v51 = a1;
    sub_2204DDF40(v26);
    if (sub_2208851BC())
    {
      v40 = v58();
    }

    else
    {
      v40 = v59();
    }

    v41 = v40;
    if (sub_2208851BC())
    {
      v42 = v58();
    }

    else
    {
      v42 = v59();
    }

    v43 = v42;
    (*(v52 + 104))(v16, *MEMORY[0x277D6C640], v53);
    (*(v56 + 104))(v12, *MEMORY[0x277D6C7D0], v57);
    v44 = v43;
    sub_2208911AC();
    sub_22048BC00();
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_22089B120;
    *(v45 + 32) = [v41 colorWithAlphaComponent_];
    *(v45 + 40) = [v41 colorWithAlphaComponent_];
    v46 = v63;
    v47 = v64;
    *v64 = v45;
    (*(v62 + 104))(v47, *MEMORY[0x277D6C7B8], v46);
    sub_22089120C();
    swift_allocObject();
    sub_2208911FC();
    v48 = v65;
    sub_220890D9C();
    v49 = v54;
    (*(v39 + 16))(v54, v48, v38);
    (*(v39 + 56))(v49, 0, 1, v38);
    BYTE1(v66) = v51;
    BYTE2(v66) = v60;
    v67 = v55;
    v68 = v37;
    sub_220888D4C();
  }

  else
  {
    (*(v39 + 32))(v65, v26, v38);
  }
}

uint64_t sub_2204DC9F4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_2204AF97C(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for StockViewRenderer.RenderedState();
      return sub_2207D3870(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for StockViewRenderer.RenderedState);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_2207D0ED8(type metadata accessor for StockViewRenderer.RenderedState, &unk_28127E2E0, type metadata accessor for StockViewRenderer.RenderedState, type metadata accessor for StockViewRenderer.RenderedState);
    goto LABEL_7;
  }

  sub_2204DCE70(v15, a4 & 1, type metadata accessor for StockViewRenderer.RenderedState, &unk_28127E2E0, type metadata accessor for StockViewRenderer.RenderedState, type metadata accessor for StockViewRenderer.RenderedState);
  v22 = sub_2204AF97C(a2, a3);
  if ((v16 & 1) != (v23 & 1))
  {
LABEL_15:
    result = sub_22089291C();
    __break(1u);
    return result;
  }

  v12 = v22;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_2204DCC10(v12, a2, a3, a1, v18, type metadata accessor for StockViewRenderer.RenderedState, type metadata accessor for StockViewRenderer.RenderedState);
}

uint64_t sub_2204DCC10(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v11 = (a5[6] + 16 * a1);
  *v11 = a2;
  v11[1] = a3;
  v12 = a5[7];
  v13 = a6(0);
  result = sub_2204DD218(a4, v12 + *(*(v13 - 8) + 72) * a1, a7);
  v15 = a5[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v17;
  }

  return result;
}

unint64_t sub_2204DCCBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_2208928BC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_2204DCD74()
{
  v1 = [objc_opt_self() currentDevice];
  v2 = [v1 userInterfaceIdiom];

  v3 = *(v0 + OBJC_IVAR____TtC8StocksUI24StockSparklineViewStyler_currentTraitCollection);
  if (v3)
  {
    if (!v2 || [v3 userInterfaceStyle] == 2)
    {
      goto LABEL_4;
    }
  }

  else if (!v2)
  {
LABEL_4:
    v4 = (v0 + OBJC_IVAR____TtC8StocksUI24StockSparklineViewStyler_baseStyler);
    v5 = *(v0 + OBJC_IVAR____TtC8StocksUI24StockSparklineViewStyler_baseStyler + 24);
    v6 = *(v0 + OBJC_IVAR____TtC8StocksUI24StockSparklineViewStyler_baseStyler + 32);
    __swift_project_boxed_opaque_existential_1(v4, v5);
    return (*(*(v6 + 16) + 248))(v5);
  }

  v8 = (v0 + OBJC_IVAR____TtC8StocksUI24StockSparklineViewStyler_baseStyler);
  v9 = *(v0 + OBJC_IVAR____TtC8StocksUI24StockSparklineViewStyler_baseStyler + 24);
  v10 = *(v0 + OBJC_IVAR____TtC8StocksUI24StockSparklineViewStyler_baseStyler + 32);
  __swift_project_boxed_opaque_existential_1(v8, v9);
  return (*(*(v10 + 16) + 232))(v9);
}

uint64_t sub_2204DCE70(uint64_t a1, int a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t (*a6)(void))
{
  v50 = a6;
  v9 = v6;
  v11 = a3(0);
  v47 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v49 = &v44 - v13;
  v14 = *v6;
  sub_2204DD1B4(0, a4, a5);
  v48 = a2;
  result = sub_2208926CC();
  v16 = result;
  if (*(v14 + 16))
  {
    v45 = v6;
    v46 = v14;
    v17 = 0;
    v18 = (v14 + 64);
    v19 = 1 << *(v14 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v14 + 64);
    v22 = (v19 + 63) >> 6;
    v23 = result + 64;
    while (v21)
    {
      v26 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_15:
      v29 = v26 | (v17 << 6);
      v30 = *(v14 + 56);
      v31 = (*(v14 + 48) + 16 * v29);
      v33 = *v31;
      v32 = v31[1];
      v34 = *(v47 + 72);
      v35 = v30 + v34 * v29;
      if (v48)
      {
        sub_2204DD218(v35, v49, v50);
      }

      else
      {
        sub_2207D38D8(v35, v49, v50);
      }

      sub_2208929EC();
      sub_22089146C();
      result = sub_220892A2C();
      v36 = -1 << *(v16 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v23 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v23 + 8 * v38);
          if (v42 != -1)
          {
            v24 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v37) & ~*(v23 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      v25 = (*(v16 + 48) + 16 * v24);
      *v25 = v33;
      v25[1] = v32;
      result = sub_2204DD218(v49, *(v16 + 56) + v34 * v24, v50);
      ++*(v16 + 16);
      v14 = v46;
    }

    v27 = v17;
    while (1)
    {
      v17 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v17 >= v22)
      {
        break;
      }

      v28 = v18[v17];
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v21 = (v28 - 1) & v28;
        goto LABEL_15;
      }
    }

    if ((v48 & 1) == 0)
    {

      v9 = v45;
      goto LABEL_34;
    }

    v43 = 1 << *(v14 + 32);
    v9 = v45;
    if (v43 >= 64)
    {
      bzero(v18, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v43;
    }

    *(v14 + 16) = 0;
  }

LABEL_34:
  *v9 = v16;
  return result;
}

void sub_2204DD1B4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2208926EC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2204DD218(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_2204DD280(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2204DD314()
{
  v1 = (*v0 + OBJC_IVAR____TtC8StocksUI10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 248))(v2, v3);
}

uint64_t sub_2204DD374(char a1, uint64_t a2, char a3)
{
  if (a1)
  {
    v3 = *(a2 + OBJC_IVAR____TtC8StocksUI24StockSparklineViewStyler_baseStyler + 24);
    v4 = *(a2 + OBJC_IVAR____TtC8StocksUI24StockSparklineViewStyler_baseStyler + 32);
    __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC8StocksUI24StockSparklineViewStyler_baseStyler), v3);
    return (*(*(v4 + 16) + 440))(v3);
  }

  if (a3 == 2 || (a3 & 1) == 0)
  {
    if (sub_2208851BC())
    {
      return sub_2204DCD74();
    }
  }

  else if ((sub_2208851BC() & 1) == 0)
  {
    return sub_2204DCD74();
  }

  return sub_2204DDCDC();
}

void sub_2204DD420(void *a1, char a2, char a3)
{
  v5 = sub_2204DD374(a3, v3, a2);
  v6 = [v5 CGColor];
  [a1 setStrokeColor_];

  [a1 setLineWidth_];
  sub_22048BC00();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_22089B120;
  sub_2204DD8BC();
  *(v7 + 32) = sub_22089206C();
  *(v7 + 40) = sub_22089206C();
  v8 = sub_2208916DC();

  [a1 setLineDashPattern_];
}

uint64_t sub_2204DD538()
{
  type metadata accessor for PriceFormatter();
  v0 = swift_allocObject();
  result = sub_22088524C();
  qword_2812B6B38 = v0;
  return result;
}

id sub_2204DD588()
{
  result = sub_2204DD5AC(2);
  qword_2812B6B70 = result;
  return result;
}

id sub_2204DD5AC(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  [v2 setNumberStyle_];
  [v2 setMinimumFractionDigits_];
  [v2 setMaximumFractionDigits_];
  [v2 setMinimumIntegerDigits_];
  v3 = sub_22089132C();
  [v2 setPositivePrefix_];

  v4 = sub_22089132C();
  [v2 setNegativePrefix_];

  return v2;
}

id Stock.accessibleSymbol.getter()
{
  v0 = sub_22088684C();
  v2 = v1;
  if (v0 == sub_22088681C() && v2 == v3)
  {
  }

  else
  {
    v4 = sub_2208928BC();

    if ((v4 & 1) == 0)
    {
LABEL_8:
      sub_22088684C();
      goto LABEL_9;
    }
  }

  if (!UIAccessibilityIsVoiceOverRunning())
  {
    goto LABEL_8;
  }

  sub_22088681C();
  sub_2208913EC();

  v5 = sub_22089132C();

  v6 = TSAccessibilityCharacterLiteralAttributedString();

  if (v6)
  {
    return v6;
  }

  sub_22088681C();
  sub_2208913EC();

LABEL_9:
  v8 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v9 = sub_22089132C();

  v10 = [v8 initWithString_];

  return v10;
}

void sub_2204DD7F8()
{
  if (!qword_2812942A8)
  {
    sub_2204DD964();
    v0 = type metadata accessor for CellAutomation();
    if (!v1)
    {
      atomic_store(v0, &qword_2812942A8);
    }
  }
}

void sub_2204DD854()
{
  if (!qword_28127E7A0)
  {
    sub_22044D56C(255, &qword_28127E7B0);
    v0 = sub_22089230C();
    if (!v1)
    {
      atomic_store(v0, &qword_28127E7A0);
    }
  }
}

unint64_t sub_2204DD8BC()
{
  result = qword_28127E470;
  if (!qword_28127E470)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28127E470);
  }

  return result;
}

void sub_2204DD908()
{
  if (!qword_28127EDE0)
  {
    sub_220890DAC();
    v0 = sub_22089230C();
    if (!v1)
    {
      atomic_store(v0, &qword_28127EDE0);
    }
  }
}

unint64_t sub_2204DD964()
{
  result = qword_281291DE0[0];
  if (!qword_281291DE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281291DE0);
  }

  return result;
}

unint64_t sub_2204DD9BC()
{
  result = qword_281291DD0;
  if (!qword_281291DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281291DD0);
  }

  return result;
}

BOOL sub_2204DDA14(unsigned __int8 *a1, unsigned __int8 *a2)
{
  result = 0;
  if (*a1 == *a2 && ((a1[1] ^ a2[1]) & 1) == 0)
  {
    return *(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2);
  }

  return result;
}

unint64_t sub_2204DDA54()
{
  result = qword_281291DD8;
  if (!qword_281291DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281291DD8);
  }

  return result;
}

uint64_t sub_2204DDAC0()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2204DDB5C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 1);
  v4 = *(v0 + 2);
  sub_2208929EC();
  MEMORY[0x223D8ABA0](v1);
  MEMORY[0x223D8ABA0](v2);
  MEMORY[0x223D8ABA0](v3);
  MEMORY[0x223D8ABA0](v4);
  return sub_220892A2C();
}

uint64_t sub_2204DDBF8()
{
  v1 = *v0;
  v2 = sub_2208851BC();
  v3 = (v1 + OBJC_IVAR____TtC8StocksUI10BaseStyler_theme);
  v4 = *(v1 + OBJC_IVAR____TtC8StocksUI10BaseStyler_theme + 24);
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  if (v2)
  {
    return (*(v5 + 232))(v4, v5);
  }

  else
  {
    return (*(v5 + 224))(v4, v5);
  }
}

id sub_2204DDC90()
{
  if (UIAccessibilityDarkerSystemColorsEnabled())
  {
    v1 = 112;
  }

  else
  {
    v2 = UIAccessibilityDarkerSystemColorsEnabled();
    v1 = 120;
    if (v2)
    {
      v1 = 128;
    }
  }

  v3 = *(v0 + v1);

  return v3;
}

uint64_t sub_2204DDCDC()
{
  v1 = [objc_opt_self() currentDevice];
  v2 = [v1 userInterfaceIdiom];

  v3 = *(v0 + OBJC_IVAR____TtC8StocksUI24StockSparklineViewStyler_currentTraitCollection);
  if (v3)
  {
    if (!v2 || [v3 userInterfaceStyle] == 2)
    {
      goto LABEL_4;
    }
  }

  else if (!v2)
  {
LABEL_4:
    v4 = (v0 + OBJC_IVAR____TtC8StocksUI24StockSparklineViewStyler_baseStyler);
    v5 = *(v0 + OBJC_IVAR____TtC8StocksUI24StockSparklineViewStyler_baseStyler + 24);
    v6 = *(v0 + OBJC_IVAR____TtC8StocksUI24StockSparklineViewStyler_baseStyler + 32);
    __swift_project_boxed_opaque_existential_1(v4, v5);
    return (*(*(v6 + 16) + 240))(v5);
  }

  v8 = (v0 + OBJC_IVAR____TtC8StocksUI24StockSparklineViewStyler_baseStyler);
  v9 = *(v0 + OBJC_IVAR____TtC8StocksUI24StockSparklineViewStyler_baseStyler + 24);
  v10 = *(v0 + OBJC_IVAR____TtC8StocksUI24StockSparklineViewStyler_baseStyler + 32);
  __swift_project_boxed_opaque_existential_1(v8, v9);
  return (*(*(v10 + 16) + 224))(v9);
}

id sub_2204DDDDC()
{
  v1 = UIAccessibilityDarkerSystemColorsEnabled();
  v2 = 120;
  if (v1)
  {
    v2 = 128;
  }

  v3 = *(v0 + v2);

  return v3;
}

uint64_t sub_2204DDE18()
{
  v1 = (*v0 + OBJC_IVAR____TtC8StocksUI10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 240))(v2, v3);
}

uint64_t sub_2204DDE78()
{
  v1 = *v0;
  v2 = sub_2208851BC();
  v3 = (v1 + OBJC_IVAR____TtC8StocksUI10BaseStyler_theme);
  v4 = *(v1 + OBJC_IVAR____TtC8StocksUI10BaseStyler_theme + 24);
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  if (v2)
  {
    return (*(v5 + 200))(v4, v5);
  }

  else
  {
    return (*(v5 + 184))(v4, v5);
  }
}

uint64_t sub_2204DDF40(uint64_t a1)
{
  sub_2204DD908();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2204DDFC0(char a1)
{
  swift_getObjectType();
  if (sub_22088F0DC())
  {
    sub_22088E00C();
    v3 = v10;
    if (v10 == 2)
    {
      v3 = a1;
    }

    if (v3)
    {
      v4 = 0.0;
    }

    else
    {
      v4 = 1.0;
    }
  }

  else
  {
    sub_22088E00C();
    v5 = v10;
    if (v10 == 2)
    {
      v5 = a1;
    }

    if (v5)
    {
      v4 = 0.0;
    }

    else
    {
      v4 = 1.0;
    }
  }

  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  *(v6 + 24) = v4;
  sub_22049F468(qword_28127EE38, v7, type metadata accessor for StockView);
  v8 = v1;
  sub_22088E51C();
}

uint64_t sub_2204DE174()
{

  return swift_deallocObject();
}

void sub_2204DE1B4()
{
  v1 = *(type metadata accessor for StockViewModel() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);

  sub_2204DA720(v3, v4, (v0 + v2), v5);
}

uint64_t sub_2204DE244(uint64_t a1)
{
  v2 = type metadata accessor for StockSparklineViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2204DE2A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  v4 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  v5 = *(a1 + 56);
  v6 = *(a2 + 56);
  v7 = (v5 | v6) == 0;
  if (!v5 || !v6)
  {
    return v7;
  }

  if (*(a1 + 48) == *(a2 + 48) && v5 == v6)
  {
    return 1;
  }

  return sub_2208928BC();
}

uint64_t sub_2204DE354(char a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC8StocksUI9StockView_isSelected;
  result = swift_beginAccess();
  *(v3 + v4) = a1;
  return result;
}

void sub_2204DE3BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      if ([*(a3 + 328) horizontalSizeClass] == 2)
      {
        v8 = [v7 backgroundView];
        if (v8)
        {
          v9 = v8;
          if ((sub_22088C44C() & 1) != 0 && (sub_22088C3EC() & 1) == 0)
          {
            swift_beginAccess();
            v11 = v5[16];
            v18 = v5[17];
            v19 = __swift_project_boxed_opaque_existential_1(v5 + 13, v11);
            v13 = *(v11 - 8);
            v20 = MEMORY[0x28223BE20](v19, v19);
            v16 = &v23 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v13 + 16))(v16, v20);
            v17 = (*(*(v18 + 16) + 112))(v11);
          }

          else
          {
            swift_beginAccess();
            v11 = v5[16];
            v10 = v5[17];
            v12 = __swift_project_boxed_opaque_existential_1(v5 + 13, v11);
            v13 = *(v11 - 8);
            v14 = MEMORY[0x28223BE20](v12, v12);
            v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v13 + 16))(v16, v14);
            v17 = (*(*(v10 + 16) + 56))(v11);
          }

          v22 = v17;
          (*(v13 + 8))(v16, v11);
          [v9 setBackgroundColor_];
        }
      }
    }

    else
    {
    }
  }
}

id sub_2204DE6A4()
{
  result = sub_2204DD5AC(3);
  qword_27CF6D0B8 = result;
  return result;
}

uint64_t sub_2204DE6C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D5828](a1, a2, ObjectType, a4);
}

uint64_t sub_2204DE720(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220483918(0);
  result = sub_2208884CC();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220484150();
    result = sub_2208884CC();
    if (result)
    {
      sub_220483EE8();
      swift_allocObject();
      return sub_22088B6AC();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2204DE7F8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220483FD4();
  result = sub_2208884CC();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220446A58(0, &qword_281297128);
    result = sub_2208884DC();
    if (v3)
    {
      sub_220484150();
      swift_allocObject();
      return sub_22088B93C();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2204DE8F8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22044D56C(0, &qword_28127E820);
  result = sub_22088848C();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220484310();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220484858();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204849D8();
  result = sub_2208884CC();
  if (result)
  {
    sub_220483FD4();
    swift_allocObject();
    return sub_22088BFBC();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_2204DEA5C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220484E70();
  result = sub_22088848C();
  if (result)
  {
    v2 = result;
    v3 = [objc_allocWithZone(type metadata accessor for TickerCollectionView()) initWithFrame:result collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2204DEB78(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088D84C();
  result = sub_22088848C();
  if (result)
  {
    sub_220484E70();
    v3 = objc_allocWithZone(v2);
    return sub_22088D2DC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2204DEC0C(uint64_t a1, void (*a2)(void), uint64_t (*a3)(void))
{
  a2(0);
  swift_allocObject();
  return a3();
}

uint64_t sub_2204DEC50()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (sub_2204D0EE0())
    {
      sub_2207BBD88();
    }

    else if (swift_unknownObjectWeakLoadStrong())
    {
      type metadata accessor for StockListInteractor();

      sub_220789BE4();

      swift_unknownObjectRelease();
    }

    sub_22088864C();
  }

  return result;
}

id sub_2204DEDE0(void *a1, double a2, double a3, double a4, double a5)
{
  ObjectType = swift_getObjectType();
  v5[OBJC_IVAR____TtC8StocksUI20TickerCollectionView_autoScrolling] = 0;
  v12 = &v5[OBJC_IVAR____TtC8StocksUI20TickerCollectionView____lazy_storage___delta];
  *v12 = 0;
  v12[8] = 1;
  *&v5[OBJC_IVAR____TtC8StocksUI20TickerCollectionView_minimumScrollDelta] = 0x3FD0000000000000;
  *&v5[OBJC_IVAR____TtC8StocksUI20TickerCollectionView_displayLink] = 0;
  *&v5[OBJC_IVAR____TtC8StocksUI20TickerCollectionView_preferredFrameRate] = 60;
  v13 = &v5[OBJC_IVAR____TtC8StocksUI20TickerCollectionView_tickerCollectionModel];
  v14 = [objc_opt_self() sharedApplication];
  v15 = [v14 isRunningPerformanceTest];

  *v13 = 0x4008000000000000;
  *(v13 + 1) = 4;
  v13[16] = v15;
  v26.receiver = v5;
  v26.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v26, sel_initWithFrame_collectionViewLayout_, a1, a2, a3, a4, a5);
  v17 = objc_opt_self();
  v18 = v16;
  v19 = [v17 defaultCenter];
  [v19 addObserver:v18 selector:sel_handleAccessibilitySettingsChangedWithNotification_ name:*MEMORY[0x277D764C0] object:0];
  [v19 addObserver:v18 selector:sel_handleAccessibilitySettingsChangedWithNotification_ name:*MEMORY[0x277D765F0] object:0];
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21 = objc_opt_self();
  v22 = v18;
  v23 = [v21 bundleForClass_];
  sub_220884CAC();

  v24 = sub_22089132C();

  [v22 setAccessibilityLabel_];

  [v22 setAccessibilityContainerType_];
  return v22;
}

uint64_t sub_2204DF094(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220483918(0);
  result = sub_2208884CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220484258();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for TickerBlueprintViewCellProvider();
  sub_22046DA2C(a1, v8);
  v4 = swift_allocObject();
  sub_220457328(v8, v4 + 16);
  v5 = sub_2208884AC();

  if (!v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for TickerBlueprintViewSupplementaryViewProvider();
  result = sub_2208884CC();
  if (result)
  {
    *&v8[0] = v3;
    sub_220484310();
    v7 = objc_allocWithZone(v6);
    return sub_22088D7BC();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_2204DF25C(void *a1, void *a2)
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

uint64_t sub_2204DF35C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_28128C080);
  result = sub_2208884DC();
  if (v3)
  {
    type metadata accessor for TickerBlueprintViewCellProvider();
    v2 = swift_allocObject();
    v2[3] = 0;
    swift_unknownObjectWeakInit();
    v2[4] = v3;
    v2[5] = v4;
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2204DF408@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_28128E350);
  result = sub_2208884DC();
  if (v38)
  {
    v30 = a2;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220446A58(0, qword_281285410);
    result = sub_2208884DC();
    if (v36)
    {
      v5 = __swift_mutable_project_boxed_opaque_existential_1(v37, v38);
      v29[1] = v29;
      MEMORY[0x28223BE20](v5, v5);
      v7 = (v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v8 + 16))(v7);
      v9 = __swift_mutable_project_boxed_opaque_existential_1(v35, v36);
      v29[0] = v29;
      MEMORY[0x28223BE20](v9, v9);
      v11 = (v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v12 + 16))(v11);
      v13 = *v7;
      v14 = *v11;
      v15 = type metadata accessor for TickerViewStyler();
      v34[3] = v15;
      v34[4] = &off_283412D78;
      v34[0] = v13;
      v16 = type metadata accessor for StockSparklineViewRenderer();
      v32 = v16;
      v33 = &off_283425530;
      v31[0] = v14;
      type metadata accessor for TickerViewRenderer();
      v17 = swift_allocObject();
      v18 = __swift_mutable_project_boxed_opaque_existential_1(v34, v15);
      MEMORY[0x28223BE20](v18, v18);
      v20 = (v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v21 + 16))(v20);
      v22 = __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
      MEMORY[0x28223BE20](v22, v22);
      v24 = (v29 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v25 + 16))(v24);
      v26 = *v20;
      v27 = *v24;
      v17[5] = v15;
      v17[6] = &off_283412D78;
      v17[2] = v26;
      v17[10] = v16;
      v17[11] = &off_283425530;
      v17[7] = v27;
      __swift_destroy_boxed_opaque_existential_1(v31);
      __swift_destroy_boxed_opaque_existential_1(v34);
      __swift_destroy_boxed_opaque_existential_1(v35);
      __swift_destroy_boxed_opaque_existential_1(v37);
      result = sub_220483BDC(&qword_2812904D0, type metadata accessor for TickerViewRenderer);
      v28 = v30;
      *v30 = v17;
      v28[1] = result;
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

uint64_t sub_2204DF8D8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_2204DF920(uint64_t a1, uint64_t a2)
{
  result = sub_2204DF8D8(&qword_2812904D8, a2, type metadata accessor for TickerViewRenderer);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2204DF978()
{
  type metadata accessor for TickerBlueprintViewSupplementaryViewProvider();

  return swift_allocObject();
}

uint64_t sub_2204DF9AC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220483918(0);
  result = sub_2208884CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220484258();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220484ED0(0, &qword_281297690, MEMORY[0x277D6E388]);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297C50);
  result = sub_2208884DC();
  if (!v5)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088731C();
  result = sub_2208884CC();
  if (result)
  {
    sub_220483BDC(&qword_281298BF0, MEMORY[0x277CEAEA8]);
    sub_220484858();
    v4 = objc_allocWithZone(v3);
    return sub_22088D55C();
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_2204DFBB4(void *a1)
{
  v2 = sub_22088D7EC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = (v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_22088D80C();
  MEMORY[0x28223BE20](v7 - 8, v8);
  sub_220484ED0(0, &qword_2812976B8, MEMORY[0x277D6E380]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v12);
  v14 = v17 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220483918(0);
  result = sub_2208884CC();
  if (result)
  {
    v16 = result;
    (*(v11 + 104))(v14, *MEMORY[0x277D6E378], v10);
    *v6 = 0;
    (*(v3 + 104))(v6, *MEMORY[0x277D6E828], v2);
    sub_22088D7FC();
    v17[1] = v16;
    sub_220484ED0(0, &qword_281297690, MEMORY[0x277D6E388]);
    swift_allocObject();
    return sub_22088CDAC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2204DFE38(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220483918(0);
  result = sub_2208884CC();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220484258();
    result = sub_2208884CC();
    if (result)
    {
      sub_2204849D8();
      v4 = objc_allocWithZone(v3);
      return sub_22088D99C();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_2204DFEF8(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_28128D020);
  sub_2208884DC();
  if (!v11)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220483EE8();
  v4 = sub_2208884CC();
  if (!v4)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v5 = v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for TickerBlueprintModifierFactory();
  v6 = sub_2208884CC();
  if (!v6)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220485058(0, &qword_281296888, sub_2204850C0, &type metadata for TickerOfflineModel, MEMORY[0x277D33538]);
  v8 = sub_2208884CC();
  if (v8)
  {
    v9 = v8;
    v10 = sub_2204E066C(v11, v12, v5, v7, v8);
    swift_unknownObjectRelease();

    *a2 = v10;
    a2[1] = &off_28341C430;
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_2204E00B0(void *a1)
{
  sub_2206010E4(0, &qword_281299318, MEMORY[0x277D69388], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v22[-1] - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299280);
  result = sub_2208884DC();
  if (!v30)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &unk_2812991E0);
  result = sub_2208884DC();
  if (!v28)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281288DB0);
  result = sub_2208884DC();
  if (!v26)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &unk_281299178);
  result = sub_2208884DC();
  if (!v24)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v7 = sub_220885ACC();
  sub_2208884DC();
  v8 = *(v7 - 8);
  result = (*(v8 + 48))(v5, 1, v7);
  if (result != 1)
  {
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v25, v26);
    MEMORY[0x28223BE20](v9, v9);
    v11 = (&v22[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11);
    v13 = *v11;
    v14 = type metadata accessor for SparklineModelProvider();
    v22[3] = v14;
    v22[4] = &off_28341BBA0;
    v22[0] = v13;
    type metadata accessor for TickerBlueprintModifierFactory();
    v15 = swift_allocObject();
    v16 = __swift_mutable_project_boxed_opaque_existential_1(v22, v14);
    MEMORY[0x28223BE20](v16, v16);
    v18 = (&v22[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v19 + 16))(v18);
    v20 = *v18;
    v15[15] = v14;
    v15[16] = &off_28341BBA0;
    v15[12] = v20;
    sub_220457328(&v29, (v15 + 2));
    sub_220457328(&v27, (v15 + 7));
    sub_220457328(&v23, (v15 + 17));
    (*(v8 + 32))(v15 + OBJC_IVAR____TtC8StocksUI30TickerBlueprintModifierFactory_appConfiguration, v5, v7);
    __swift_destroy_boxed_opaque_existential_1(v22);
    __swift_destroy_boxed_opaque_existential_1(v25);
    return v15;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_2204E0510(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &unk_281296850);
  result = sub_2208884DC();
  if (v4)
  {
    sub_220485058(0, &qword_281296888, sub_2204850C0, &type metadata for TickerOfflineModel, MEMORY[0x277D33538]);
    v3 = objc_allocWithZone(v2);
    return sub_2208903DC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2204E05D8()
{
  if (!qword_281291D48[0])
  {
    type metadata accessor for TickerBlueprintModifierFactory();
    sub_220483BDC(&qword_281285290, type metadata accessor for TickerBlueprintModifierFactory);
    v0 = type metadata accessor for TickerInteractor();
    if (!v1)
    {
      atomic_store(v0, qword_281291D48);
    }
  }
}

void *sub_2204E066C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_2204E05D8();
  v10 = swift_allocObject();
  v10[3] = 0;
  swift_unknownObjectWeakInit();
  v11 = MEMORY[0x277D84FA0];
  v10[4] = a3;
  v10[5] = a4;
  v10[8] = a5;
  v10[9] = v11;
  v10[6] = a1;
  v10[7] = a2;
  *(a1 + 24) = &off_28341C410;
  swift_unknownObjectWeakAssign();
  v12 = objc_opt_self();

  v13 = a5;
  swift_unknownObjectRetain();
  v14 = [v12 defaultCenter];
  [v14 addObserver:v10 selector:sel_handleAccessibilitySettingsChangedWithNotification_ name:*MEMORY[0x277D765F0] object:0];

  return v10;
}

uint64_t sub_2204E0788()
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

uint64_t sub_2204E0858@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_28128E360);
  result = sub_2208884DC();
  v5 = v27;
  if (v27)
  {
    v6 = v28;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220446A58(0, &qword_281291D38);
    result = sub_2208884DC();
    if (v26)
    {
      v7 = __swift_mutable_project_boxed_opaque_existential_1(v25, v26);
      MEMORY[0x28223BE20](v7, v7);
      v9 = (&v23[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v10 + 16))(v9);
      v11 = *v9;
      v12 = type metadata accessor for TickerRouter();
      v24[3] = v12;
      v24[4] = &off_28341C690;
      v24[0] = v11;
      type metadata accessor for TickerEventHandler();
      v13 = swift_allocObject();
      v14 = __swift_mutable_project_boxed_opaque_existential_1(v24, v12);
      MEMORY[0x28223BE20](v14, v14);
      v16 = (&v23[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v17 + 16))(v16);
      v18 = *v16;
      v23[3] = v12;
      v23[4] = &off_28341C690;
      v23[0] = v18;
      v13[3] = 0;
      swift_unknownObjectWeakInit();
      v13[4] = v5;
      v13[5] = v6;
      sub_22046DA2C(v23, (v13 + 6));
      ObjectType = swift_getObjectType();
      v20 = *(v6 + 16);
      swift_unknownObjectRetain();

      v20(v21, &off_283414C80, ObjectType, v6);
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1(v23);
      __swift_destroy_boxed_opaque_existential_1(v24);
      result = __swift_destroy_boxed_opaque_existential_1(v25);
      *a2 = v13;
      a2[1] = &off_283414C88;
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

uint64_t sub_2204E0B50@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_22046DA2C(a1, v11);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204549FC();
  result = sub_2208884CC();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_22088731C();
    result = sub_2208884CC();
    if (result)
    {
      v6 = result;
      v7 = type metadata accessor for TickerRouter();
      v8 = objc_allocWithZone(v7);
      swift_unknownObjectWeakInit();
      sub_22046DA2C(v11, &v8[OBJC_IVAR____TtC8StocksUI12TickerRouter_resolver]);
      *&v8[OBJC_IVAR____TtC8StocksUI12TickerRouter_navigator] = v5;
      *&v8[OBJC_IVAR____TtC8StocksUI12TickerRouter_tracker] = v6;
      v10.receiver = v8;
      v10.super_class = v7;
      v9 = objc_msgSendSuper2(&v10, sel_init);
      result = __swift_destroy_boxed_opaque_existential_1(v11);
      a2[3] = v7;
      a2[4] = &off_28341C690;
      *a2 = v9;
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

uint64_t sub_2204E0CB0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281291D30);
  result = sub_2208884DC();
  if (!v23)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_28128C088);
  result = sub_2208884DC();
  v3 = v20;
  if (!v20)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220484D34();
  result = sub_2208884CC();
  if (result)
  {
    v5 = result;
    v6 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
    MEMORY[0x28223BE20](v6, v6);
    v8 = (v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v9 + 16))(v8);
    v10 = *v8;
    v18 = type metadata accessor for TickerStyler();
    v19 = &off_28341A948;
    v17[0] = v10;
    v11 = objc_allocWithZone(type metadata accessor for TickerViewController());
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
    MEMORY[0x28223BE20](v12, v12);
    v14 = (v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = sub_2204E3080(*v14, v3, v4, v5, v11);
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v17);
    __swift_destroy_boxed_opaque_existential_1(v22);
    return v16;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_2204E0F70(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220483918(0);
  result = sub_2208884CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220483FD4();
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
  sub_220484ED0(0, &qword_281297690, MEMORY[0x277D6E388]);
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
    sub_220483BDC(&qword_281298BF0, MEMORY[0x277CEAEA8]);
    sub_220484D34();
    v4 = objc_allocWithZone(v3);
    return sub_22088C7AC();
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_2204E1284@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220483FD4();
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
  sub_22047DC18();
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

uint64_t sub_2204E1428()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2204E1468(void *a1)
{
  sub_22047DD60();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_220899920;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220484F6C();
  result = sub_2208884CC();
  if (result)
  {
    v4 = result;
    v5 = sub_220483BDC(&qword_281297450, sub_220484F6C);
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

uint64_t sub_2204E159C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220483FD4();
  result = sub_2208884CC();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220483918(0);
    result = sub_2208884CC();
    if (result)
    {
      sub_220484F6C();
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

uint64_t sub_2204E167C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220483FD4();
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

uint64_t sub_2204E1704(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v171 = a3;
  v172 = a2;
  sub_2204ADD50(0, &qword_281297848, MEMORY[0x277D6DF88]);
  v170 = v4;
  v169 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v168 = &v166 - v6;
  sub_2204A1EF0(0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v185 = &v166 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22046B2A0();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v184 = &v166 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = sub_220885DFC();
  v226 = *(v183 - 8);
  MEMORY[0x28223BE20](v183, v13);
  v182 = &v166 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v202 = sub_220886A4C();
  v225 = *(v202 - 8);
  MEMORY[0x28223BE20](v202, v15);
  v181 = &v166 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v187 = &v166 - v19;
  sub_2204E323C();
  v229 = *(v20 - 8);
  v230 = v20;
  MEMORY[0x28223BE20](v20, v21);
  v23 = (&v166 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = type metadata accessor for StockListStockModel(0);
  MEMORY[0x28223BE20](v24 - 8, v25);
  v214 = &v166 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v227 = type metadata accessor for StockListModel(0);
  MEMORY[0x28223BE20](v227, v27);
  v174 = &v166 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v30);
  v32 = &v166 - v31;
  MEMORY[0x28223BE20](v33, v34);
  v36 = &v166 - v35;
  v37 = type metadata accessor for StockViewModel();
  MEMORY[0x28223BE20](v37 - 8, v38);
  v213 = &v166 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v233 = sub_22088685C();
  v228 = *(v233 - 8);
  MEMORY[0x28223BE20](v233, v40);
  v216 = &v166 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42, v43);
  v221 = &v166 - v44;
  MEMORY[0x28223BE20](v45, v46);
  v212 = &v166 - v47;
  MEMORY[0x28223BE20](v48, v49);
  v220 = &v166 - v50;
  sub_22046B36C();
  v219 = v51;
  v177 = *(v51 - 8);
  MEMORY[0x28223BE20](v51, v52);
  v178 = &v166 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54, v55);
  v224 = &v166 - v56;
  sub_2204BBE2C();
  v186 = v57;
  MEMORY[0x28223BE20](v57, v58);
  v60 = &v166 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22046B19C();
  v62 = v61;
  v217 = *(v61 - 8);
  MEMORY[0x28223BE20](v61, v63);
  v201 = &v166 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v65, v66);
  v211 = &v166 - v67;
  MEMORY[0x28223BE20](v68, v69);
  v207 = &v166 - v70;
  sub_2204B9DAC();
  v232 = v71 - 8;
  MEMORY[0x28223BE20](v71 - 8, v72);
  v74 = &v166 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204A1D20();
  v76 = v75;
  v77 = *(v75 - 8);
  v79 = MEMORY[0x28223BE20](v75, v78);
  v167 = v77;
  v81 = *(v77 + 16);
  v188 = &v166 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = a1;
  v81(v79);
  (v81)(v74, a1, v76);
  v82 = v74;
  v83 = v76;
  v84 = *(v232 + 44);
  v85 = sub_2204D681C(&qword_281296EE8, sub_2204A1D20);
  sub_22089193C();
  sub_22089199C();
  v86 = *&v74[v84] == v236;
  v189 = v83;
  if (v86)
  {
LABEL_3:
    sub_2204AE3F4(v82, sub_2204B9DAC);
    sub_2204CD300();
    sub_22045B950();
    v87 = sub_2204D681C(&qword_281293CD8, type metadata accessor for StockListModel);
    v88 = v188;
    sub_22088BDEC();
    __swift_project_boxed_opaque_existential_1(&v236, v239);
    if (sub_22088B65C())
    {
      v89 = v169;
      v90 = v168;
      v91 = v170;
      (*(v169 + 104))(v168, *MEMORY[0x277D6DF80], v170);
    }

    else
    {
      v164 = v87;
      v90 = v168;
      sub_22088C66C();
      v91 = v170;
      v89 = v169;
    }

    v172(v90);
    (*(v89 + 8))(v90, v91);
    (*(v167 + 8))(v88, v189);
    return __swift_destroy_boxed_opaque_existential_1(&v236);
  }

  v218 = 0;
  v210 = (v217 + 2);
  v206 = (v217 + 4);
  v204 = (v217 + 1);
  v223 = (v177 + 16);
  v222 = (v177 + 8);
  v231 = (v228 + 32);
  v232 = v228 + 16;
  v200 = (v225 + 8);
  v180 = (v226 + 8);
  v173 = v177 + 32;
  v179 = (v217 + 7);
  v217 = v23;
  v215 = v36;
  v226 = v60;
  v225 = v62;
  v175 = v32;
  v209 = v74;
  v205 = v84;
  v208 = v85;
  while (1)
  {
    v92 = sub_2208919BC();
    v93 = *v210;
    v94 = v207;
    (*v210)(v207);
    v92(&v236, 0);
    v82 = v209;
    v95 = v83;
    sub_2208919AC();
    v96 = v211;
    (*v206)(v211, v94, v62);
    sub_22088B2AC();
    if (!v241)
    {
      break;
    }

    if (v241 == 1)
    {
      sub_2204BE754(v236, v237, v238, v239, v240, 1u);
    }

    (*v204)(v96, v62);
LABEL_6:
    v83 = v95;
    sub_22089199C();
    if (*(v82 + v205) == v236)
    {
      goto LABEL_3;
    }
  }

  v194 = v236;
  v195 = v237;
  v196 = v238;
  v197 = v239;
  v198 = v240;
  v199 = v93;
  (v93)(v201, v96, v62);
  sub_2204D681C(&qword_281297DC0, sub_22046B19C);
  sub_2208915BC();
  v97 = *(v186 + 36);
  sub_2204D681C(&qword_281297DB8, sub_22046B19C);
  sub_22089199C();
  v98 = v219;
  v99 = MEMORY[0x277D84F90];
  if (*&v60[v97] != v234[0])
  {
    v109 = v175;
    v110 = v215;
    do
    {
      v111 = sub_2208919BC();
      v112 = v224;
      (*v223)(v224);
      v111(v234, 0);
      sub_2208919AC();
      sub_22088AD8C();
      (*v222)(v112, v98);
      sub_2204E3018(v110, v109, type metadata accessor for StockListModel);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          sub_2204AE3F4(v109, type metadata accessor for StockListModel);
        }

        v60 = v226;
      }

      else
      {
        v114 = v214;
        sub_2204E3018(v109, v214, type metadata accessor for StockListStockModel);
        v115 = v213;
        sub_2204BD750(v114, v213, type metadata accessor for StockViewModel);
        sub_2204AE3F4(v114, type metadata accessor for StockListStockModel);
        v116 = v233;
        v117 = v212;
        (*v232)(v212, v115, v233);
        sub_2204AE3F4(v115, type metadata accessor for StockViewModel);
        v118 = *v231;
        (*v231)(v220, v117, v116);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v99 = sub_22048E1D8(0, *(v99 + 2) + 1, 1, v99);
        }

        v60 = v226;
        v120 = *(v99 + 2);
        v119 = *(v99 + 3);
        if (v120 >= v119 >> 1)
        {
          v99 = sub_22048E1D8(v119 > 1, v120 + 1, 1, v99);
        }

        *(v99 + 2) = v120 + 1;
        v118(&v99[((*(v228 + 80) + 32) & ~*(v228 + 80)) + *(v228 + 72) * v120], v220, v233);
        v23 = v217;
        v110 = v215;
        v98 = v219;
      }

      sub_22089199C();
    }

    while (*&v60[v97] != v234[0]);
  }

  sub_2204AE3F4(v60, sub_2204BBE2C);
  v100 = *(v99 + 2);
  if (v100)
  {
    v234[0] = MEMORY[0x277D84F90];
    sub_2204E31B8(0, v100, 0);
    v101 = v234[0];
    v102 = &v99[(*(v228 + 80) + 32) & ~*(v228 + 80)];
    v103 = *(v228 + 72);
    v104 = *(v228 + 16);
    do
    {
      v104(v23 + *(v230 + 48), v102, v233);
      *v23 = sub_22088681C();
      v23[1] = v105;
      v234[0] = v101;
      v107 = *(v101 + 16);
      v106 = *(v101 + 24);
      if (v107 >= v106 >> 1)
      {
        sub_2204E31B8(v106 > 1, v107 + 1, 1);
        v101 = v234[0];
      }

      *(v101 + 16) = v107 + 1;
      sub_2204E3018(v23, v101 + ((*(v229 + 80) + 32) & ~*(v229 + 80)) + *(v229 + 72) * v107, sub_2204E323C);
      v102 += v103;
      --v100;
    }

    while (v100);

    if (*(v101 + 16))
    {
      goto LABEL_18;
    }
  }

  else
  {

    if (*(MEMORY[0x277D84F90] + 16))
    {
LABEL_18:
      sub_220745434();
      v108 = sub_2208926DC();
      goto LABEL_31;
    }
  }

  v108 = MEMORY[0x277D84F98];
LABEL_31:
  v234[0] = v108;

  v122 = v218;
  sub_22074549C(v121, 1, v234);
  if (v122)
  {
    goto LABEL_55;
  }

  v193 = 0;

  v123 = v234[0];
  updated = type metadata accessor for StockListPriceDataUpdateBlueprintModifier();
  v124 = (v203 + *(updated + 28));
  v125 = v124[3];
  v191 = v124;
  __swift_project_boxed_opaque_existential_1(v124, v125);
  v126 = v187;
  sub_2208863EC();
  v127 = sub_220886A1C();
  v190 = *v200;
  v190(v126, v202);
  v128 = *(v127 + 16);
  if (!v128)
  {
LABEL_44:

    v143 = v203;
    __swift_project_boxed_opaque_existential_1((v203 + *(updated + 32)), *(v203 + *(updated + 32) + 24));
    __swift_project_boxed_opaque_existential_1(v191, v191[3]);
    v144 = v181;
    sub_2208863EC();
    v145 = v182;
    sub_220886A3C();
    v190(v144, v202);
    v146 = sub_22088646C();

    v147 = (*v180)(v145, v183);
    MEMORY[0x28223BE20](v147, v148);
    v164 = v211;
    v165 = v143;
    v149 = v193;
    v150 = sub_2204E9A48(sub_2204E9E10, (&v166 - 4), v146);
    v218 = v149;

    if (v150[2])
    {
      v60 = v226;
      v23 = v217;
      v95 = v189;
      v151 = v219;
      v62 = v225;
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      sub_2204D681C(&qword_281293CD8, type metadata accessor for StockListModel);
      sub_22088AD7C();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = v217;
      v153 = v189;
      v60 = v226;
      v62 = v225;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v150 = sub_2204EA048(0, v150[2] + 1, 1, v150);
      }

      v155 = v150[2];
      v154 = v150[3];
      if (v155 >= v154 >> 1)
      {
        v150 = sub_2204EA048(v154 > 1, v155 + 1, 1, v150);
      }

      v150[2] = v155 + 1;
      v156 = v150 + ((*(v177 + 80) + 32) & ~*(v177 + 80)) + *(v177 + 72) * v155;
      v151 = v219;
      (*(v177 + 32))(v156, v178, v219);
      v95 = v153;
    }

    v234[0] = v194;
    v234[1] = v195;
    v234[2] = v196;
    v234[3] = v197;
    v234[4] = v198;
    v235 = 0;
    v157 = sub_2204D681C(&qword_281297F88, sub_22046B36C);
    v158 = sub_2204D681C(&unk_281297F90, sub_22046B36C);
    MEMORY[0x223D80A20](v150, v151, v157, v158);
    sub_22045B950();
    sub_2204D681C(&qword_281293CD8, type metadata accessor for StockListModel);
    v159 = v201;
    sub_22088B29C();
    v160 = v185;
    v161 = v211;
    (v199)(v185, v211, v62);
    (*v179)(v160, 0, 1, v62);
    sub_22088E6DC();
    sub_2204AE3F4(v160, sub_2204A1EF0);
    v162 = *v204;
    (*v204)(v159, v62);
    v162(v161, v62);
    v82 = v209;
    goto LABEL_6;
  }

  v129 = 0;
  v130 = (v127 + 40);
  v131 = MEMORY[0x277D84F90];
  v218 = *(v127 + 16);
  while (v129 < *(v127 + 16))
  {
    if (*(v123 + 16))
    {
      v132 = *(v130 - 1);
      v133 = *v130;

      v134 = sub_2204AF97C(v132, v133);
      if (v135)
      {
        v136 = v228;
        v137 = *(v228 + 72);
        v138 = v216;
        v139 = v233;
        (*(v228 + 16))(v216, *(v123 + 56) + v137 * v134, v233);

        v140 = *(v136 + 32);
        v140(v221, v138, v139);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v131 = sub_22048E1D8(0, *(v131 + 2) + 1, 1, v131);
        }

        v142 = *(v131 + 2);
        v141 = *(v131 + 3);
        if (v142 >= v141 >> 1)
        {
          v131 = sub_22048E1D8(v141 > 1, v142 + 1, 1, v131);
        }

        *(v131 + 2) = v142 + 1;
        v140(&v131[((*(v228 + 80) + 32) & ~*(v228 + 80)) + v142 * v137], v221, v233);
        v128 = v218;
      }

      else
      {
      }
    }

    ++v129;
    v130 += 2;
    if (v128 == v129)
    {
      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_55:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_2204E3018(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

char *sub_2204E3080(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _BYTE *a5)
{
  ObjectType = swift_getObjectType();
  v19[4] = &off_28341A948;
  v19[3] = type metadata accessor for TickerStyler();
  v19[0] = a1;
  a5[OBJC_IVAR____TtC8StocksUI20TickerViewController_autoScrolling] = 0;
  sub_22046DA2C(v19, &a5[OBJC_IVAR____TtC8StocksUI20TickerViewController_styler]);
  v11 = &a5[OBJC_IVAR____TtC8StocksUI20TickerViewController_eventHandler];
  *v11 = a2;
  v11[1] = a3;
  *&a5[OBJC_IVAR____TtC8StocksUI20TickerViewController_blueprintViewController] = a4;
  v18.receiver = a5;
  v18.super_class = ObjectType;
  swift_unknownObjectRetain();
  v12 = a4;
  v13 = objc_msgSendSuper2(&v18, sel_initWithNibName_bundle_, 0, 0);
  *(*&v13[OBJC_IVAR____TtC8StocksUI20TickerViewController_eventHandler] + 24) = &off_283424898;
  swift_unknownObjectWeakAssign();
  v14 = *&v13[OBJC_IVAR____TtC8StocksUI20TickerViewController_blueprintViewController];
  v15 = v13;
  v16 = v14;
  sub_22088C79C();

  __swift_destroy_boxed_opaque_existential_1(v19);
  return v15;
}

size_t sub_2204E31B8(size_t a1, int64_t a2, char a3)
{
  result = sub_22048DBF8(a1, a2, a3, *v3, &qword_28127DED8, sub_2204E323C, sub_2204E323C);
  *v3 = result;
  return result;
}

void sub_2204E323C()
{
  if (!qword_28127EBC8)
  {
    sub_22088685C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_28127EBC8);
    }
  }
}

uint64_t sub_2204E32A8(uint64_t a1, uint64_t a2, void (*a3)(void), unsigned int *a4, uint64_t (*a5)(char *))
{
  a3(0);
  MEMORY[0x28223BE20]();
  v8 = &v11 - v7;
  (*(v9 + 104))(&v11 - v7, *a4);
  return a5(v8);
}

uint64_t sub_2204E3384(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_220484D34();
  if (sub_2208884CC())
  {
    sub_220483BDC(&qword_281297830, sub_220484D34);
  }

  return sub_22088D75C();
}

void sub_2204E3464()
{
  if (!qword_281284838)
  {
    sub_22088ED4C();
    sub_22088EE1C();
    sub_220444830(&qword_281296D30, MEMORY[0x277D2D560]);
    v0 = type metadata accessor for AdAnalyticsJournalEntryProcessor();
    if (!v1)
    {
      atomic_store(v0, &qword_281284838);
    }
  }
}

void sub_2204E3520(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for TickerViewController();
  v2 = sub_2208884CC();
  swift_unknownObjectWeakAssign();
}

uint64_t sub_2204E35C4(uint64_t a1, void *a2)
{
  sub_2204E3804(0);
  swift_allocObject();
  sub_22088D4FC();
  sub_220483938(0, &unk_281297650, MEMORY[0x277D6E3B8]);
  swift_allocObject();
  sub_220483BDC(&qword_281297590, sub_2204E3804);
  sub_22088CE4C();
  sub_22088B6CC();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_220484AC4();
  result = sub_2208884CC();
  if (result)
  {
    swift_allocObject();
    sub_220483BDC(&qword_281297250, sub_220484AC4);
    sub_22088CE4C();
    sub_22088B6CC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2204E375C()
{
  result = sub_22088947C();
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

uint64_t sub_2204E3824@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_28128E350);
  result = sub_2208884DC();
  if (v37)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220446A58(0, qword_28127F440);
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
      v15 = type metadata accessor for TickerViewStyler();
      v33[3] = v15;
      v33[4] = &off_283412D78;
      v33[0] = v13;
      v16 = type metadata accessor for StockSparklineViewLayoutAttributesFactory();
      v31 = v16;
      v32 = &off_283424008;
      v30[0] = v14;
      v17 = type metadata accessor for TickerViewLayoutAttributesFactory();
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
      v18[6] = &off_283412D78;
      v18[2] = v27;
      v18[10] = v16;
      v18[11] = &off_283424008;
      v18[7] = v28;
      v18[12] = MEMORY[0x277D84F98];
      __swift_destroy_boxed_opaque_existential_1(v30);
      __swift_destroy_boxed_opaque_existential_1(v33);
      __swift_destroy_boxed_opaque_existential_1(v34);
      result = __swift_destroy_boxed_opaque_existential_1(v36);
      a2[3] = v17;
      a2[4] = &off_283412F90;
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

void sub_2204E3C68()
{
  if (!qword_281284818)
  {
    sub_22088EE9C();
    sub_22088EECC();
    sub_220444830(&qword_281296CF8, MEMORY[0x277D2D600]);
    v0 = type metadata accessor for AdAnalyticsJournalEntryProcessor();
    if (!v1)
    {
      atomic_store(v0, &qword_281284818);
    }
  }
}

void sub_2204E3D48()
{
  if (!qword_2812847F8)
  {
    sub_22088EEDC();
    sub_22088EEBC();
    sub_220444830(&qword_281296CE8, MEMORY[0x277D2D660]);
    v0 = type metadata accessor for AdAnalyticsJournalEntryProcessor();
    if (!v1)
    {
      atomic_store(v0, &qword_2812847F8);
    }
  }
}

uint64_t sub_2204E3E04(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_281281138);
  result = sub_2208884DC();
  if (v16)
  {
    v2 = __swift_mutable_project_boxed_opaque_existential_1(v15, v16);
    MEMORY[0x28223BE20](v2, v2);
    v4 = (v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v5 + 16))(v4);
    v6 = *v4;
    v7 = type metadata accessor for TickerViewLayoutAttributesFactory();
    v14[3] = v7;
    v14[4] = &off_283412F90;
    v14[0] = v6;
    type metadata accessor for TickerBlueprintLayoutBuilder();
    v8 = swift_allocObject();
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v14, v7);
    MEMORY[0x28223BE20](v9, v9);
    v11 = (v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11);
    v13 = *v11;
    v8[5] = v7;
    v8[6] = &off_283412F90;
    v8[2] = v13;
    __swift_destroy_boxed_opaque_existential_1(v14);
    __swift_destroy_boxed_opaque_existential_1(v15);
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2204E4014(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220484258();
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
  type metadata accessor for TickerBlueprintLayoutBuilder();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220484C24();
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
    sub_220484AC4();
    swift_allocObject();
    return sub_22088DE3C();
  }

LABEL_11:
  __break(1u);
  return result;
}

void sub_2204E41E8()
{
  if (!qword_281284808)
  {
    sub_22088EEAC();
    sub_22088ED1C();
    sub_220444830(&qword_281296CF0, MEMORY[0x277D2D618]);
    v0 = type metadata accessor for AdAnalyticsJournalEntryProcessor();
    if (!v1)
    {
      atomic_store(v0, &qword_281284808);
    }
  }
}

void sub_2204E42A4()
{
  if (!qword_2812847E8)
  {
    sub_22088ECDC();
    sub_22088ECEC();
    sub_220444830(&qword_281296D58, MEMORY[0x277D2D440]);
    v0 = type metadata accessor for AdAnalyticsJournalEntryProcessor();
    if (!v1)
    {
      atomic_store(v0, &qword_2812847E8);
    }
  }
}

void sub_2204E438C(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_22088B84C();
  sub_22088848C();
  sub_22088D56C();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_220484F6C();
  if (sub_2208884CC())
  {
    sub_220483BDC(&qword_281297448, sub_220484F6C);
  }

  sub_22088D57C();
  v3 = sub_22088D51C();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for TickerViewController();
  v4 = sub_2208884CC();
  if (v4)
  {
    v5 = v4;
    sub_22088D14C();
  }

  else
  {
    __break(1u);
  }
}

void sub_2204E44F8()
{
  if (!qword_281284828)
  {
    sub_22088ED9C();
    sub_22088ED1C();
    sub_220444830(&unk_281296D00, MEMORY[0x277D2D5A0]);
    v0 = type metadata accessor for AdAnalyticsJournalEntryProcessor();
    if (!v1)
    {
      atomic_store(v0, &qword_281284828);
    }
  }
}

uint64_t sub_2204E45B4(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_220484258();
  result = sub_2208884CC();
  if (result)
  {
    sub_220483BDC(&qword_2812978A0, sub_220484258);
    return sub_22088CD8C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2204E4674(uint64_t *a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for TickerViewController();
  v4 = sub_2208884CC();
  v3 = &off_283424890;
  if (!v4)
  {
    v3 = 0;
  }

  *(v2 + 24) = v3;
  swift_unknownObjectWeakAssign();
}

void sub_2204E4714(void **a1)
{
  v1 = *a1;
  Strong = swift_unknownObjectUnownedLoadStrong();
  [Strong addChildViewController_];

  v3 = [v1 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v3;
  [v3 setAlpha_];

  v5 = swift_unknownObjectUnownedLoadStrong();
  v6 = [v5 view];

  if (!v6)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v7 = [v1 view];
  if (!v7)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v7;
  v9 = swift_unknownObjectUnownedLoadStrong();
  v10 = *&v9[qword_281282178];

  [v6 insertSubview:v8 belowSubview:v10];
  v11 = swift_unknownObjectUnownedLoadStrong();
  [v1 didMoveToParentViewController_];

  v12 = swift_unknownObjectUnownedLoadStrong();
  v13 = [v12 view];

  if (!v13)
  {
LABEL_11:
    __break(1u);
    return;
  }

  [v13 setNeedsLayout];
}

uint64_t sub_2204E48BC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281294338);
  result = sub_2208884DC();
  if (!v13)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281296B00);
  sub_22046DA2C(a1, v9);
  v3 = swift_allocObject();
  sub_220457328(v9, v3 + 16);
  sub_2208884BC();

  v4 = v10;
  if (!v10)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_28128B450);
  result = sub_2208884DC();
  v6 = *&v9[0];
  if (*&v9[0])
  {
    v7 = *(&v9[0] + 1);
    type metadata accessor for ForYouFeedBlueprintViewCellProvider();
    v8 = swift_allocObject();
    v8[3] = 0;
    swift_unknownObjectWeakInit();
    sub_220457328(&v12, (v8 + 4));
    v8[9] = v4;
    v8[10] = v5;
    v8[11] = v6;
    v8[12] = v7;
    return v8;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_2204E4ACC(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v3 = sub_22088D3BC();
  result = sub_22088848C();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v17 = v3;
  v18 = MEMORY[0x277D6E678];
  *&v16 = result;
  sub_22088DE4C();
  __swift_destroy_boxed_opaque_existential_1(&v16);
  v5 = sub_22088D70C();
  swift_allocObject();
  v6 = sub_22088D6FC();
  v17 = v5;
  v18 = MEMORY[0x277D6E7D8];
  *&v16 = v6;
  sub_22088DE4C();
  __swift_destroy_boxed_opaque_existential_1(&v16);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_220489FD0(0, &qword_281297328, type metadata accessor for ForYouFeedModel, MEMORY[0x277D6E9B8]);
  v8 = v7;
  result = sub_2208884CC();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v9 = result;
  v17 = v8;
  v18 = sub_22051255C();
  *&v16 = v9;
  sub_22088DE4C();
  __swift_destroy_boxed_opaque_existential_1(&v16);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v10 = sub_22088FB0C();
  sub_22046DA2C(a2, &v16);
  v11 = swift_allocObject();
  sub_220457328(&v16, v11 + 16);
  v12 = sub_2208884AC();

  if (!v12)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v17 = v10;
  v18 = sub_22044E43C(&unk_281296A88, MEMORY[0x277D325A0]);
  *&v16 = v12;
  sub_22088DE4C();
  __swift_destroy_boxed_opaque_existential_1(&v16);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v13 = sub_220890B7C();
  sub_22046DA2C(a2, &v16);
  v14 = swift_allocObject();
  sub_220457328(&v16, v14 + 16);
  v15 = sub_2208884AC();

  if (v15)
  {
    v17 = v13;
    v18 = sub_22044E43C(&unk_281296750, MEMORY[0x277D34668]);
    *&v16 = v15;
    sub_22088DE4C();
    return __swift_destroy_boxed_opaque_existential_1(&v16);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_2204E4E20()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

void sub_2204E4E60()
{
  v19.receiver = v0;
  v19.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v19, sel_viewDidLoad);
  v1 = *&v0[OBJC_IVAR____TtC8StocksUI20TickerViewController_blueprintViewController];
  [v0 addChildViewController_];
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  v4 = [v1 view];
  if (!v4)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v5 = v4;
  [v3 addSubview_];

  [v1 didMoveToParentViewController_];
  v6 = [v1 view];
  if (!v6)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = v6;
  v8 = [v0 view];
  if (v8)
  {
    v9 = v8;
    [v8 bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    [v7 setFrame_];
    v18 = [v0 traitCollection];
    sub_2204FA0C8(v18);

    return;
  }

LABEL_9:
  __break(1u);
}

void sub_2204E4FFC()
{
  if (!qword_281297B68)
  {
    type metadata accessor for TickerView();
    sub_220484784(&qword_281294EB0, type metadata accessor for TickerView);
    v0 = sub_22088B9FC();
    if (!v1)
    {
      atomic_store(v0, &qword_281297B68);
    }
  }
}

uint64_t sub_2204E5090()
{
  v1 = *(sub_22088C6AC() - 8);
  v2 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_2204E5140(v2);
}

uint64_t sub_2204E5140(uint64_t a1)
{
  v2 = sub_22088C6AC();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v3 + 16))(v7, a1, v2, v5);
  v8 = (*(v3 + 88))(v7, v2);
  if (v8 == *MEMORY[0x277D6DF98])
  {
    (*(v3 + 8))(v7, v2);
    sub_22084D638();
  }

  else
  {
    if (v8 != *MEMORY[0x277D6DF90] && v8 != *MEMORY[0x277D6DFA0])
    {
      result = sub_22089267C();
      __break(1u);
      return result;
    }

    sub_2204E538C();
  }

  if (qword_281298C00 != -1)
  {
    swift_once();
  }

  v11[15] = 0;
  return sub_2208883FC();
}

uint64_t sub_2204E5428(uint64_t a1, uint64_t a2)
{
  v5 = sub_22088F11C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22088F14C();
  v10 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v11);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = *(v2 + OBJC_IVAR____TtC8StocksUI34WaitForStockListPrewarmStartupTask_queue);
  aBlock[4] = a1;
  v21 = v2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2204C35E8;
  aBlock[3] = a2;
  v14 = _Block_copy(aBlock);

  sub_22088F13C();
  v19 = MEMORY[0x277D84F90];
  v15 = MEMORY[0x277D85198];
  sub_220462834(&qword_281296CA0, MEMORY[0x277D85198]);
  sub_22046D6C8(0, &qword_28127EA60, v15);
  sub_22046D780(&qword_28127EA50, &qword_28127EA60, v15);
  sub_2208923FC();
  MEMORY[0x223D89EC0](0, v13, v9, v14);
  _Block_release(v14);
  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v18);
}

unint64_t sub_2204E56C0()
{
  result = qword_28128FCC8;
  if (!qword_28128FCC8)
  {
    type metadata accessor for PlacardViewRenderer();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28128FCC8);
  }

  return result;
}

uint64_t sub_2204E5714()
{
  v1 = OBJC_IVAR____TtC8StocksUI34WaitForStockListPrewarmStartupTask_sealed;
  if ((*(v0 + OBJC_IVAR____TtC8StocksUI34WaitForStockListPrewarmStartupTask_sealed) & 1) == 0)
  {
    result = sub_22088872C();
    *(v0 + v1) = 1;
  }

  return result;
}

uint64_t sub_2204E5768(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TickerView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2204E57A8(uint64_t a1)
{
  result = sub_2204E56C0();
  *(a1 + 8) = result;
  return result;
}

void sub_2204E57D0()
{
  if (!qword_281297D40)
  {
    type metadata accessor for TickerModel();
    sub_220483B88();
    sub_220483C24(&qword_281294CA0, type metadata accessor for TickerModel);
    v0 = sub_22088B67C();
    if (!v1)
    {
      atomic_store(v0, &qword_281297D40);
    }
  }
}

uint64_t getEnumTagSinglePayload for ForYouFeedGroupKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_2204E5918(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220488310(0);
  result = sub_2208884CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204888A4();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for ForYouFeedBlueprintViewCellProvider();
  sub_22046DA2C(a1, v8);
  v4 = swift_allocObject();
  sub_220457328(v8, v4 + 16);
  v5 = sub_2208884AC();

  if (!v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for ForYouFeedBlueprintViewSupplementaryViewProvider();
  result = sub_2208884CC();
  if (result)
  {
    *&v8[0] = v3;
    sub_220488704();
    v7 = objc_allocWithZone(v6);
    return sub_22088D7BC();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_2204E5AB8()
{
  result = sub_2204446D4(319, &qword_281299280);
  if (v1 <= 0x3F)
  {
    result = sub_2204446D4(319, &unk_2812991E0);
    if (v2 <= 0x3F)
    {
      result = sub_2204446D4(319, &unk_281299178);
      if (v3 <= 0x3F)
      {
        result = sub_220885D4C();
        if (v4 <= 0x3F)
        {
          result = sub_2204446D4(319, &qword_281288DB0);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_2204E5BF8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_281286200);
  result = sub_2208884DC();
  if (!v33)
  {
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_281288990);
  result = sub_2208884DC();
  v3 = v31;
  if (!v31)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v19 = v33;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_281282198);
  result = sub_2208884DC();
  v4 = v29;
  if (!v29)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v17 = v32;
  v18 = v34;
  v5 = v30;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_2812883C0);
  result = sub_2208884BC();
  v6 = v27;
  if (!v27)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = v28;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281296990);
  result = sub_2208884DC();
  if (!v26)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281294338);
  result = sub_2208884DC();
  if (!v24)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299220);
  result = sub_2208884DC();
  v8 = v21;
  if (v21)
  {
    v9 = type metadata accessor for ForYouFeedBlueprintViewSupplementaryViewProvider();
    v10 = v22;
    v11 = __swift_project_boxed_opaque_existential_1(v20, v21);
    MEMORY[0x28223BE20](v11, v11);
    v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v14 + 16))(v13);
    v15 = sub_2204EEB40(v19, v18, v3, v17, v4, v5, v6, v7, &v25, &v23, v13, v9, v8, v10);
    __swift_destroy_boxed_opaque_existential_1(v20);
    return v15;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_2204E5FB4@<X0>(uint64_t *a1@<X8>)
{
  v33 = a1;
  sub_2204AA824();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v30 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204753E0();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22049CD4C();
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22049CDFC();
  v18 = *(v17 - 8);
  v31 = v17;
  v32 = v18;
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v1 + 32), *(v1 + 56));
  sub_22088600C();
  swift_getKeyPath();
  sub_22046AA04(&qword_281296E10, 255, sub_2204753E0);
  sub_22088EB9C();

  (*(v7 + 8))(v10, v6);
  sub_22046AA04(&qword_281296E40, 255, sub_22049CD4C);
  sub_22046AA04(&qword_2812992E8, 255, MEMORY[0x277D69488]);
  sub_22088EBCC();
  (*(v13 + 8))(v16, v12);
  sub_22046D5B4();
  v22 = sub_220891D0C();
  v34 = v22;
  v23 = sub_220891CEC();
  v24 = v30;
  (*(*(v23 - 8) + 56))(v30, 1, 1, v23);
  sub_22049CE94(0);
  v25 = v33;
  v33[3] = v26;
  v25[4] = sub_22046AA04(&qword_281296DD0, 255, sub_22049CE94);
  __swift_allocate_boxed_opaque_existential_1(v25);
  sub_22046AA04(&qword_281296E20, 255, sub_22049CDFC);
  sub_22046AA04(&qword_28127E7C8, 255, sub_22046D5B4);
  v27 = v31;
  sub_22088EBAC();
  sub_2204E64C0(v24);

  return (*(v32 + 8))(v21, v27);
}

uint64_t sub_2204E6464@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for TickerViewController();
  result = sub_2208884CC();
  if (result)
  {
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2204E64C0(uint64_t a1)
{
  sub_2204AA824();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2204E65BC(uint64_t a1)
{
  v3 = type metadata accessor for TickerPrewarmBlueprintModifier();
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v17 - v9;
  sub_22046DA2C(v1 + 16, &v17 - v9 + 16);
  sub_22046DA2C(v1 + 56, (v10 + 56));
  sub_22046DA2C(v1 + 136, (v10 + 96));
  sub_22046DA2C(v1 + 96, &v10[v3[9]]);
  v11 = v3[8];
  v12 = sub_220885D4C();
  (*(*(v12 - 8) + 16))(&v10[v11], a1, v12);
  *v10 = 0x6D726177657250;
  *(v10 + 1) = 0xE700000000000000;
  v13 = &v10[v3[10]];
  v14 = [objc_opt_self() sharedApplication];
  LOBYTE(a1) = [v14 isRunningPerformanceTest];

  *v13 = 0x4008000000000000;
  *(v13 + 1) = 4;
  v13[16] = a1;
  sub_2204E6E5C(v10, v6, type metadata accessor for TickerPrewarmBlueprintModifier);
  sub_2204E57D0();
  swift_allocObject();
  sub_220483C24(qword_2812851B8, type metadata accessor for TickerPrewarmBlueprintModifier);
  v15 = sub_22088B66C();
  sub_2204E6D80(v10, type metadata accessor for TickerPrewarmBlueprintModifier);
  return v15;
}

uint64_t sub_2204E67D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2204E6820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20 = a4;
  v21 = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v19);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a1, a4);
  v17 = a5;
  v18 = a7;
  v13 = __swift_allocate_boxed_opaque_existential_1(&v16);
  (*(*(a5 - 8) + 32))(v13, a2, a5);
  v14 = swift_allocObject();
  sub_220457328(&v19, v14 + 16);
  sub_220457328(&v16, v14 + 56);
  return v14;
}

uint64_t sub_2204E6914()
{
  v1 = *v0;
  v2 = sub_220886A4C();
  v20 = *(v2 - 8);
  v21 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_220885D4C();
  v22 = *(v6 - 8);
  v23 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v19 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + v1[15]);
  sub_2204E5FB4(v24);
  __swift_project_boxed_opaque_existential_1(v24, v24[3]);
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  v12 = v1[10];
  v11[2] = v12;
  v13 = v1[11];
  v11[3] = v13;
  v11[4] = v10;
  sub_22088EBDC();

  swift_beginAccess();
  sub_22088EB6C();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1(v24);
  __swift_project_boxed_opaque_existential_1((v9 + 32), *(v9 + 56));
  sub_2208863EC();
  v14 = v19;
  sub_2208869CC();
  (*(v20 + 8))(v5, v21);
  v24[0] = (*(v13 + 40))(v14, v12, v13);
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v16[2] = v12;
  v16[3] = v13;
  v16[4] = v15;
  sub_2204E57D0();
  sub_220483C6C(&qword_281297D48, sub_2204E57D0);

  sub_22088B6DC();

  (*(v22 + 8))(v14, v23);
}

uint64_t sub_2204E6CE4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2204E6D1C()
{

  return swift_deallocObject();
}

uint64_t sub_2204E6D80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2204E6DE0()
{
  result = qword_281289748;
  if (!qword_281289748)
  {
    type metadata accessor for SectionHeaderViewRenderer();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281289748);
  }

  return result;
}

unint64_t sub_2204E6E34(uint64_t a1)
{
  result = sub_2204E6DE0();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2204E6E5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2204E6EC4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_22088F12C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299280);
  result = sub_2208884DC();
  if (v16)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220446A58(0, &unk_2812991E0);
    result = sub_2208884DC();
    if (v14)
    {
      type metadata accessor for TickerDataManager();
      v10 = swift_allocObject();
      v10[3] = 0;
      swift_unknownObjectWeakInit();
      sub_22044D56C(0, &qword_28127E7C0);
      (*(v5 + 104))(v8, *MEMORY[0x277D851B8], v4);
      v11 = sub_220891D3C();
      (*(v5 + 8))(v8, v4);
      v12 = MEMORY[0x277D84FA0];
      v10[14] = v11;
      v10[15] = v12;
      sub_220457328(&v15, (v10 + 4));
      result = sub_220457328(&v13, (v10 + 9));
      *a2 = v10;
      a2[1] = &off_283412F30;
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

void sub_2204E7150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_22088DA2C();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v10, a3, v5, v8);
  v11 = (*(v6 + 88))(v10, v5);
  if (v11 == *MEMORY[0x277D6E950])
  {
    (*(v6 + 8))(v10, v5);
LABEL_3:
    v12 = *(*(v3 + OBJC_IVAR____TtC8StocksUI20TickerViewController_eventHandler) + 40);
    ObjectType = swift_getObjectType();
    (*(v12 + 40))(ObjectType, v12);
    return;
  }

  if (v11 == *MEMORY[0x277D6E928])
  {
    v14 = *(*(v3 + OBJC_IVAR____TtC8StocksUI20TickerViewController_eventHandler) + 40);
    v15 = swift_getObjectType();
    (*(v14 + 32))(v15, v14);
  }

  else
  {
    if (v11 == *MEMORY[0x277D6E948] || v11 == *MEMORY[0x277D6E930])
    {
      goto LABEL_3;
    }

    if (v11 != *MEMORY[0x277D6E958])
    {
      if (v11 == *MEMORY[0x277D6E970])
      {
        sub_22088C71C();
        v17 = sub_22088BFCC();

        sub_220731E88();
        sub_22088B74C();
      }

      else
      {
        sub_22089267C();
        __break(1u);
      }
    }
  }
}

uint64_t type metadata accessor for TickerPrewarmBlueprintModifier()
{
  result = qword_2812851A0;
  if (!qword_2812851A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_2204E75CC()
{
  v1 = &v0[OBJC_IVAR____TtC8StocksUI20TickerCollectionView_tickerCollectionModel];
  v2 = v0[OBJC_IVAR____TtC8StocksUI20TickerCollectionView_tickerCollectionModel + 16];
  result = UIAccessibilityIsVoiceOverRunning();
  if ((result & 1) == 0 && (v2 & 1) == 0)
  {
    [v0 contentSize];
    v5 = v4;
    [v0 bounds];
    v7 = v6;
    v8 = *v1;
    result = UIAccessibilityIsVoiceOverRunning();
    if (result)
    {
      if (v7 > v5)
      {
        return result;
      }
    }

    else if (v7 * v8 > v5)
    {
      return result;
    }

    [v0 contentOffset];
    v10 = v9;
    v12 = v11;
    [v0 contentSize];
    v14 = v13;
    [v0 bounds];
    v16 = (v14 - v15) * 0.5;
    [v0 contentSize];
    v18 = v17;
    result = UIAccessibilityIsVoiceOverRunning();
    v19 = 1.0;
    if (!result)
    {
      v19 = v8;
    }

    v20 = v18 / v19;
    if (v20 <= vabdd_f64(v10, v16))
    {
      if (v10 - v16 > 0.0)
      {
        v20 = -v20;
      }

      v21 = v16 + v10 - v16 + v20;

      return [v0 setContentOffset_];
    }
  }

  return result;
}

uint64_t sub_2204E777C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_2204E77C4(uint64_t a1, uint64_t a2)
{
  result = sub_2204E777C(qword_2812917E0, a2, type metadata accessor for QuoteViewRenderer);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2204E7840@<X0>(uint64_t a1@<X0>, NSObject *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v128 = a4;
  v131 = a3;
  v132 = a5;
  v124 = sub_22088685C();
  v130 = *(v124 - 8);
  MEMORY[0x28223BE20](v124, v7);
  v123 = &v116 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = type metadata accessor for StockSparklineViewModel.CacheModel(0);
  MEMORY[0x28223BE20](v120, v9);
  v121 = &v116 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204E99F0(0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v116 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22045987C(0);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = &v116 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204E9FD4(0);
  MEMORY[0x28223BE20](v19 - 8, v20);
  v122 = &v116 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v23);
  v25 = &v116 - v24;
  v26 = sub_220890D8C();
  v126 = *(v26 - 8);
  v127 = v26;
  MEMORY[0x28223BE20](v26, v27);
  v118 = &v116 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v30);
  v32 = &v116 - v31;
  v33 = sub_22088665C();
  v34 = *(v33 - 8);
  MEMORY[0x28223BE20](v33, v35);
  v119 = &v116 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37, v38);
  v129 = &v116 - v39;
  MEMORY[0x28223BE20](v40, v41);
  v43 = &v116 - v42;
  type metadata accessor for StockListPriceDataUpdateBlueprintModifier();
  v125 = a1;
  v44 = sub_2208857FC();
  v133 = a2;
  v45 = sub_22088681C();
  if (!*(v44 + 16))
  {

    goto LABEL_6;
  }

  v117 = v32;
  v47 = sub_2204AF97C(v45, v46);
  v49 = v48;

  if ((v49 & 1) == 0)
  {
LABEL_6:

    goto LABEL_7;
  }

  v50 = *(v44 + 56) + *(v34 + 72) * v47;
  v116 = *(v34 + 16);
  v116(v43, v50, v33);

  __swift_project_boxed_opaque_existential_1((v125 + 16), *(v125 + 40));
  v51 = sub_22088676C();
  v52 = *(v51 - 8);
  (*(v52 + 16))(v18, v131, v51);
  (*(v52 + 56))(v18, 0, 1, v51);
  sub_2204B0174(v43, v18, v133, v25, 0.02);
  sub_2204AE3F4(v18, sub_22045987C);
  v53 = v126;
  v54 = v127;
  if ((*(v126 + 48))(v25, 1, v127) != 1)
  {
    v105 = v34;
    v106 = v117;
    (*(v53 + 32))(v117, v25, v54);
    v107 = v33;
    v108 = v132;
    (*(v53 + 16))(v132, v106, v54);
    v109 = type metadata accessor for StockSparklineViewModel(0);
    v116((v108 + v109[8]), v43, v107);
    v133 = sub_22088675C();
    LODWORD(v130) = v110;
    v111 = sub_22088666C();
    v113 = v112;
    (*(v53 + 8))(v106, v54);
    (*(v105 + 8))(v43, v107);
    v114 = v108 + v109[5];
    *v114 = v133;
    *(v114 + 8) = v130 & 1;
    v115 = v108 + v109[6];
    *v115 = v111;
    *(v115 + 8) = v113 & 1;
    *(v108 + v109[7]) = 0;
    return (*(*(v109 - 1) + 56))(v108, 0, 1, v109);
  }

  (*(v34 + 8))(v43, v33);
  sub_2204AE3F4(v25, sub_2204E9FD4);
LABEL_7:
  v55 = v33;
  v56 = v34;
  v57 = type metadata accessor for StockViewModel();
  sub_2204BD750(v128 + *(v57 + 24), v14, sub_2204E99F0);
  v58 = type metadata accessor for StockSparklineViewModel(0);
  v59 = *(v58 - 8);
  v60 = (*(v59 + 48))(v14, 1, v58);
  v61 = v129;
  v62 = v130;
  if (v60 == 1)
  {
    sub_2204AE3F4(v14, sub_2204E99F0);
    v63 = v123;
    v64 = v124;
  }

  else
  {
    v128 = v59;
    v65 = *(v120 + 24);
    v66 = *(v56 + 16);
    v67 = v18;
    v68 = v121;
    v69 = &v14[*(v58 + 32)];
    v120 = v56 + 16;
    v117 = v66;
    v66(&v121[v65], v69, v55);
    sub_2204AE3F4(v14, type metadata accessor for StockSparklineViewModel);
    v70 = *(v56 + 32);
    v71 = &v68[v65];
    v72 = v119;
    v70(v119, v71, v55);
    v70(v61, v72, v55);
    __swift_project_boxed_opaque_existential_1((v125 + 16), *(v125 + 40));
    v73 = sub_22088676C();
    v74 = *(v73 - 8);
    v75 = *(v74 + 16);
    v125 = v58;
    v75(v67, v131, v73);
    (*(v74 + 56))(v67, 0, 1, v73);
    v76 = v122;
    sub_2204B0174(v61, v67, v133, v122, 0.02);
    sub_2204AE3F4(v67, sub_22045987C);
    v77 = v126;
    v78 = v127;
    if ((*(v126 + 48))(v76, 1, v127) != 1)
    {
      v94 = v118;
      (*(v77 + 32))(v118, v76, v78);
      v95 = v132;
      (*(v77 + 16))(v132, v94, v78);
      v96 = v125;
      v117(v95 + *(v125 + 32), v61, v55);
      v97 = sub_22088675C();
      LODWORD(v133) = v98;
      v99 = sub_22088666C();
      v100 = v77;
      v102 = v101;
      (*(v100 + 8))(v94, v78);
      (*(v56 + 8))(v61, v55);
      v103 = v95 + v96[5];
      *v103 = v97;
      *(v103 + 8) = v133 & 1;
      v104 = v95 + v96[6];
      *v104 = v99;
      *(v104 + 8) = v102 & 1;
      *(v95 + v96[7]) = 0;
      return (*(v128 + 56))(v95, 0, 1, v96);
    }

    (*(v56 + 8))(v61, v55);
    sub_2204AE3F4(v76, sub_2204E9FD4);
    v63 = v123;
    v64 = v124;
    v59 = v128;
    v58 = v125;
  }

  if (qword_281298078 != -1)
  {
    swift_once();
  }

  v79 = sub_22088A84C();
  __swift_project_value_buffer(v79, qword_2812B6CB8);
  (*(v62 + 16))(v63, v133, v64);
  v80 = sub_22088A82C();
  v81 = sub_220891ADC();
  if (os_log_type_enabled(v80, v81))
  {
    v82 = v59;
    v83 = swift_slowAlloc();
    v84 = v58;
    v85 = swift_slowAlloc();
    v134 = v85;
    *v83 = 136446210;
    v86 = sub_22088681C();
    v87 = v63;
    v89 = v88;
    (*(v62 + 8))(v87, v64);
    v90 = sub_2204A7B78(v86, v89, &v134);

    *(v83 + 4) = v90;
    _os_log_impl(&dword_22043F000, v80, v81, "StockList: failed to created view model for sparkline %{public}s", v83, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v85);
    v91 = v85;
    v58 = v84;
    MEMORY[0x223D8B7F0](v91, -1, -1);
    v92 = v83;
    v59 = v82;
    MEMORY[0x223D8B7F0](v92, -1, -1);
  }

  else
  {

    (*(v62 + 8))(v63, v64);
  }

  return (*(v59 + 56))(v132, 1, 1, v58);
}

uint64_t sub_2204E840C@<X0>(NSObject *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v209 = a3;
  v210 = a2;
  v211 = a4;
  v185 = sub_220886A4C();
  v184 = *(v185 - 8);
  MEMORY[0x28223BE20](v185, v5);
  v183 = &v164 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = sub_2208852DC();
  v182 = *(v200 - 8);
  MEMORY[0x28223BE20](v200, v7);
  v199 = &v164 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = sub_2208857EC();
  v180 = *(v181 - 8);
  MEMORY[0x28223BE20](v181, v9);
  v172 = &v164 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = sub_22088699C();
  v173 = *(v179 - 8);
  MEMORY[0x28223BE20](v179, v11);
  v186 = &v164 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v194 = &v164 - v15;
  v16 = sub_220885D4C();
  v195 = *(v16 - 8);
  v196 = v16;
  MEMORY[0x28223BE20](v16, v17);
  v193 = &v164 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22045987C(0);
  MEMORY[0x28223BE20](v19 - 8, v20);
  v176 = &v164 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v23);
  v171 = &v164 - v24;
  MEMORY[0x28223BE20](v25, v26);
  v170 = &v164 - v27;
  MEMORY[0x28223BE20](v28, v29);
  v175 = &v164 - v30;
  MEMORY[0x28223BE20](v31, v32);
  v189 = &v164 - v33;
  MEMORY[0x28223BE20](v34, v35);
  v191 = &v164 - v36;
  v202 = sub_22088685C();
  v190 = *(v202 - 8);
  MEMORY[0x28223BE20](v202, v37);
  v206 = &v164 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204E99F0(0);
  MEMORY[0x28223BE20](v39 - 8, v40);
  v188 = &v164 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42, v43);
  v198 = &v164 - v44;
  v177 = type metadata accessor for StockListStockModel(0);
  MEMORY[0x28223BE20](v177, v45);
  v197 = &v164 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v205 = type metadata accessor for StockListModel(0);
  MEMORY[0x28223BE20](v205, v47);
  v178 = &v164 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49, v50);
  v201 = (&v164 - v51);
  MEMORY[0x28223BE20](v52, v53);
  v55 = &v164 - v54;
  v187 = type metadata accessor for StockViewModel();
  MEMORY[0x28223BE20](v187, v56);
  v203 = &v164 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v58, v59);
  v174 = (&v164 - v60);
  MEMORY[0x28223BE20](v61, v62);
  v192 = &v164 - v63;
  v64 = sub_22088676C();
  v207 = *(v64 - 8);
  v208 = v64;
  MEMORY[0x28223BE20](v64, v65);
  v67 = &v164 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v68, v69);
  v204 = &v164 - v70;
  sub_2204CF334(0);
  MEMORY[0x28223BE20](v71 - 8, v72);
  v74 = &v164 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22046B36C();
  v76 = v75;
  v77 = *(v75 - 8);
  MEMORY[0x28223BE20](v75, v78);
  v80 = &v164 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22088677C();
  sub_22046B19C();
  sub_22088B3AC();
  v81 = v76;
  v82 = v77;

  if ((*(v77 + 48))(v74, 1, v81) != 1)
  {
    v169 = v77;
    v89 = *(v77 + 32);
    v210 = v80;
    v168 = v89;
    (v89)(v80, v74, v81);
    updated = type metadata accessor for StockListPriceDataUpdateBlueprintModifier();
    v91 = sub_22088581C();
    v166 = a1;
    v92 = sub_22088681C();
    if (*(v91 + 16))
    {
      v167 = v81;
      v94 = sub_2204AF97C(v92, v93);
      v96 = v95;

      if (v96)
      {
        v97 = v207;
        v98 = *(v91 + 56) + *(v207 + 72) * v94;
        v99 = *(v207 + 16);
        v100 = v208;
        v99(v67, v98, v208);

        v101 = *(v97 + 32);
        v102 = v204;
        v101(v204, v67, v100);
        v103 = v210;
        sub_22088AD8C();
        v104 = v55;
        v105 = v201;
        sub_2204E3018(v104, v201, type metadata accessor for StockListModel);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (!EnumCaseMultiPayload)
        {
          v168 = updated;
          v107 = v105;
          v108 = v197;
          sub_2204E3018(v107, v197, type metadata accessor for StockListStockModel);
          v109 = v174;
          sub_2204BD750(v108, v174, type metadata accessor for StockViewModel);
          sub_2204AE3F4(v108, type metadata accessor for StockListStockModel);
          v110 = v99;
          v111 = v192;
          sub_2204E3018(v109, v192, type metadata accessor for StockViewModel);
          v112 = v198;
          v113 = v166;
          sub_2204E7840(v209, v166, v102, v111, v198);
          v201 = *(v190 + 16);
          (v201)(v206, v113, v202);
          v114 = v191;
          v115 = v208;
          v110(v191, v102, v208);
          (*(v207 + 56))(v114, 0, 1, v115);
          v174 = sub_2204E99F0;
          v116 = v188;
          sub_2204BD750(v112, v188, sub_2204E99F0);
          v117 = v187;
          v118 = *(v187 + 32);
          v165 = *(v195 + 16);
          v119 = v193;
          v120 = v196;
          v165(v193, v111 + v118, v196);
          LODWORD(v166) = *(v111 + v117[9]);
          v121 = v203;
          (v201)(v203, v206, v202);
          sub_2204BD750(v114, v121 + v117[5], sub_22045987C);
          sub_2204BD750(v116, v121 + v117[6], v174);
          v165((v121 + v117[8]), v119, v120);
          v122 = v117[9];
          v123 = v207;
          v124 = v208;
          *(v121 + v122) = v166;
          v125 = v114;
          v126 = v189;
          sub_2204BD750(v125, v189, sub_22045987C);
          v127 = v194;
          sub_2208867CC();
          v128 = v175;
          sub_2204BD750(v126, v175, sub_22045987C);
          v129 = *(v123 + 48);
          if (v129(v128, 1, v124) == 1)
          {
            sub_2204AE3F4(v128, sub_22045987C);
            v174 = 0;
            LODWORD(v166) = 1;
          }

          else
          {
            v174 = sub_22088675C();
            LODWORD(v166) = v131;
            (*(v123 + 8))(v128, v124);
          }

          v132 = v173;
          v133 = v171;
          v134 = v170;
          sub_2204BD750(v126, v170, sub_22045987C);
          if (v129(v134, 1, v124) == 1)
          {
            sub_2204AE3F4(v134, sub_22045987C);
            v175 = 0;
            LODWORD(v173) = 1;
          }

          else
          {
            v175 = sub_22088666C();
            LODWORD(v173) = v135;
            (*(v123 + 8))(v134, v124);
          }

          sub_2204BD750(v126, v133, sub_22045987C);
          if (v129(v133, 1, v124) == 1)
          {
            sub_2204AE3F4(v133, sub_22045987C);
            v171 = 0;
            LODWORD(v170) = 1;
          }

          else
          {
            v171 = sub_22088671C();
            LODWORD(v170) = v136;
            (*(v123 + 8))(v133, v124);
          }

          v137 = v176;
          sub_2204BD750(v126, v176, sub_22045987C);
          if (v129(v137, 1, v124) == 1)
          {
            sub_2204AE3F4(v137, sub_22045987C);
            v201 = 0;
            v165 = 0;
          }

          else
          {
            v201 = sub_22088668C();
            v165 = v138;
            (*(v123 + 8))(v137, v124);
          }

          v139 = v172;
          v140 = v186;
          v141 = v203 + *(v187 + 28);
          v187 = *(v132 + 16);
          v142 = v179;
          (v187)(v186, v127, v179);
          v143 = v180;
          v144 = v181;
          (*(v180 + 104))(v139, *MEMORY[0x277D69288], v181);
          sub_22088524C();
          *v141 = v174;
          *(v141 + 8) = v166 & 1;
          *(v141 + 16) = v175;
          *(v141 + 24) = v173 & 1;
          *(v141 + 32) = v171;
          *(v141 + 40) = v170 & 1;
          v145 = v165;
          *(v141 + 48) = v201;
          *(v141 + 56) = v145;
          v146 = type metadata accessor for PriceViewModel();
          (v187)(v141 + v146[10], v140, v142);
          *(v141 + 64) = 9666786;
          *(v141 + 72) = 0xA300000000000000;
          v147 = v139;
          (*(v143 + 16))(v141 + v146[9], v139, v144);
          v148 = v182;
          v149 = v141 + v146[11];
          v150 = v199;
          (*(v182 + 16))(v149, v199, v200);
          if (qword_281294078 != -1)
          {
            swift_once();
          }

          v151 = qword_2812B6B48;
          (*(v143 + 8))(v147, v144);
          v152 = *(v132 + 8);
          v152(v186, v142);
          v152(v194, v142);
          sub_2204AE3F4(v189, sub_22045987C);
          (*(v195 + 8))(v193, v196);
          sub_2204AE3F4(v188, sub_2204E99F0);
          sub_2204AE3F4(v191, sub_22045987C);
          (*(v190 + 8))(v206, v202);
          v153 = OBJC_IVAR____TtC8StocksUI14PriceFormatter_locale;
          swift_beginAccess();
          (*(v148 + 40))(v151 + v153, v150, v200);
          swift_endAccess();
          v154 = v203;
          v155 = v197;
          sub_2204BD750(v203, v197, type metadata accessor for StockViewModel);
          v156 = (v209 + *(v168 + 7));
          __swift_project_boxed_opaque_existential_1(v156, v156[3]);
          v157 = sub_22088602C();
          __swift_project_boxed_opaque_existential_1(v156, v156[3]);
          v158 = v183;
          sub_2208863EC();
          v159 = sub_2208869BC();
          v161 = v160;
          (*(v184 + 8))(v158, v185);
          v162 = v177;
          *(v155 + *(v177 + 20)) = v157 & 1;
          v163 = (v155 + *(v162 + 24));
          *v163 = v159;
          v163[1] = v161;
          sub_2204BD750(v155, v178, type metadata accessor for StockListStockModel);
          swift_storeEnumTagMultiPayload();
          sub_2204D681C(&qword_281293CD8, type metadata accessor for StockListModel);
          v83 = v211;
          sub_22088AD7C();
          sub_2204AE3F4(v155, type metadata accessor for StockListStockModel);
          sub_2204AE3F4(v154, type metadata accessor for StockViewModel);
          sub_2204AE3F4(v198, sub_2204E99F0);
          sub_2204AE3F4(v192, type metadata accessor for StockViewModel);
          (*(v207 + 8))(v204, v208);
          v82 = v169;
          v81 = v167;
          (*(v169 + 8))(v210, v167);
          goto LABEL_20;
        }

        v82 = v169;
        if (EnumCaseMultiPayload == 1)
        {
          (*(v207 + 8))(v102, v208);
          sub_2204AE3F4(v105, type metadata accessor for StockListModel);
        }

        else
        {
          (*(v207 + 8))(v102, v208);
        }

        v81 = v167;
LABEL_19:
        v83 = v211;
        v168(v211, v103, v81);
LABEL_20:
        v88 = 0;
        return (*(v82 + 56))(v83, v88, 1, v81);
      }

      v81 = v167;
    }

    else
    {
    }

    v82 = v169;
    v103 = v210;
    goto LABEL_19;
  }

  v83 = v211;
  sub_2204AE3F4(v74, sub_2204CF334);
  if (qword_281298078 != -1)
  {
    swift_once();
  }

  v84 = sub_22088A84C();
  __swift_project_value_buffer(v84, qword_2812B6CB8);
  v85 = sub_22088A82C();
  v86 = sub_220891ADC();
  if (os_log_type_enabled(v85, v86))
  {
    v87 = swift_slowAlloc();
    *v87 = 0;
    _os_log_impl(&dword_22043F000, v85, v86, "Invalid StockListBlueprint in PriceUpdate", v87, 2u);
    MEMORY[0x223D8B7F0](v87, -1, -1);
  }

  v88 = 1;
  return (*(v82 + 56))(v83, v88, 1, v81);
}

unint64_t sub_2204E9974()
{
  result = qword_28128A2E0;
  if (!qword_28128A2E0)
  {
    type metadata accessor for QuoteSummaryViewRenderer();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28128A2E0);
  }

  return result;
}

unint64_t sub_2204E99C8(uint64_t a1)
{
  result = sub_2204E9974();
  *(a1 + 8) = result;
  return result;
}

char *sub_2204E9A48(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  sub_2204CF334(0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22046B36C();
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v13);
  v35 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v32 = &v28 - v17;
  v18 = *(a3 + 16);
  if (!v18)
  {
    return MEMORY[0x277D84F90];
  }

  v19 = *(sub_22088685C() - 8);
  v29 = v12;
  v33 = (v12 + 32);
  v34 = (v12 + 48);
  v20 = a3 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
  v21 = *(v19 + 72);
  v36 = MEMORY[0x277D84F90];
  v30 = v11;
  v31 = a1;
  v28 = v21;
  while (1)
  {
    a1(v20);
    if (v3)
    {
      break;
    }

    if ((*v34)(v9, 1, v11) == 1)
    {
      sub_2204C5EE4(v9, sub_2204CF334);
    }

    else
    {
      v22 = v32;
      v23 = *v33;
      (*v33)(v32, v9, v11);
      v23(v35, v22, v11);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = sub_2204EA048(0, *(v36 + 2) + 1, 1, v36);
      }

      v25 = *(v36 + 2);
      v24 = *(v36 + 3);
      if (v25 >= v24 >> 1)
      {
        v36 = sub_2204EA048(v24 > 1, v25 + 1, 1, v36);
      }

      v26 = v36;
      *(v36 + 2) = v25 + 1;
      v11 = v30;
      v23(&v26[((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v25], v35, v30);
      a1 = v31;
      v21 = v28;
    }

    v20 += v21;
    if (!--v18)
    {
      return v36;
    }
  }

  return v36;
}

uint64_t sub_2204E9D70(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_2204E9DB8(uint64_t a1, uint64_t a2)
{
  result = sub_2204E9D70(&qword_28128C1E0, a2, type metadata accessor for StockTitleViewRenderer);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2204E9E74(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_2204E9EBC(uint64_t a1, uint64_t a2)
{
  result = sub_2204E9E74(qword_2812854C0, a2, type metadata accessor for StockSectionFooterViewRenderer);
  *(a1 + 8) = result;
  return result;
}

void sub_2204E9FF4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_2204EA07C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2204EA0C4(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for TickerPrewarmBlueprintModifier();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8, v7);
  v8 = *a1;
  __swift_project_boxed_opaque_existential_1((a2 + 56), *(a2 + 80));
  sub_22088632C();
  sub_2204EA3C4(a2, &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TickerPrewarmBlueprintModifier);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  sub_2204EA42C(&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  *(v10 + ((v6 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = v8;

  v11 = sub_220888D9C();
  v12 = sub_220888E4C();

  return v12;
}

uint64_t sub_2204EA25C()
{
  v1 = (type metadata accessor for TickerPrewarmBlueprintModifier() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  __swift_destroy_boxed_opaque_existential_1(v2 + 16);
  __swift_destroy_boxed_opaque_existential_1(v2 + 56);
  __swift_destroy_boxed_opaque_existential_1(v2 + 96);
  v3 = v1[10];
  v4 = sub_220885D4C();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[11]);

  return swift_deallocObject();
}

uint64_t sub_2204EA37C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_2204EA3C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2204EA42C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TickerPrewarmBlueprintModifier();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2204EA4B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = a5;
  v24 = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v22);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a1, a5);
  v20 = a6;
  v21 = a8;
  v15 = __swift_allocate_boxed_opaque_existential_1(&v19);
  (*(*(a6 - 8) + 32))(v15, a2, a6);
  v16 = swift_allocObject();
  sub_220457328(&v22, v16 + 16);
  sub_220457328(&v19, v16 + 56);
  v17 = *(a3 + 16);
  *(v16 + 96) = *a3;
  *(v16 + 112) = v17;
  *(v16 + 128) = *(a3 + 32);
  return v16;
}

uint64_t sub_2204EA5C4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for TickerPrewarmBlueprintModifier() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  return sub_2204EA66C(a1, (v2 + v6), *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)), a2);
}

uint64_t sub_2204EA66C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v19[2] = a1;
  v19[3] = a3;
  v21 = a4;
  v20 = sub_220885DFC();
  v5 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v6);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_220886A4C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a2[15];
  v19[1] = a2[16];
  v19[0] = __swift_project_boxed_opaque_existential_1(a2 + 12, v14);
  __swift_project_boxed_opaque_existential_1(a2 + 2, a2[5]);
  sub_2208863EC();
  sub_220886A3C();
  (*(v10 + 8))(v13, v9);
  v15 = sub_22088646C();
  (*(v5 + 8))(v8, v20);
  v16 = sub_22088581C();
  result = sub_2208857FC();
  v18 = v21;
  *v21 = v15;
  v18[1] = v16;
  v18[2] = result;
  return result;
}

uint64_t sub_2204EA86C()
{
  type metadata accessor for PremiumSealAnimationManager();
  result = swift_allocObject();
  *(result + 16) = 1;
  return result;
}

void sub_2204EA89C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a2;
  v5 = type metadata accessor for TickerPrewarmBlueprintModifier();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8, v8);
  v20 = v3;
  sub_2204ABDEC(0, &qword_28127EB50, MEMORY[0x277D69810], MEMORY[0x277D83940]);
  sub_220888FBC();
  sub_2204EA3C4(v3, &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TickerPrewarmBlueprintModifier);
  v9 = *(v6 + 80);
  v10 = swift_allocObject();
  sub_2204EA42C(&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + ((v9 + 16) & ~v9));
  v11 = sub_220888D9C();
  sub_220888E3C();

  sub_2204EA3C4(v3, &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TickerPrewarmBlueprintModifier);
  v12 = (v9 + 32) & ~v9;
  v13 = swift_allocObject();
  v14 = v19;
  *(v13 + 16) = v19;
  *(v13 + 24) = a3;
  sub_2204EA42C(&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);

  v15 = sub_220888D9C();
  sub_220888E4C();

  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = a3;

  v17 = sub_220888D9C();
  sub_220888E9C();
}

uint64_t sub_2204EAB50()
{
  v1 = (type metadata accessor for TickerPrewarmBlueprintModifier() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  __swift_destroy_boxed_opaque_existential_1(v2 + 16);
  __swift_destroy_boxed_opaque_existential_1(v2 + 56);
  __swift_destroy_boxed_opaque_existential_1(v2 + 96);
  v3 = v1[10];
  v4 = sub_220885D4C();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[11]);

  return swift_deallocObject();
}

uint64_t sub_2204EAC64()
{
  v1 = (type metadata accessor for TickerPrewarmBlueprintModifier() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);

  __swift_destroy_boxed_opaque_existential_1(v0 + v2 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + v2 + 56);
  __swift_destroy_boxed_opaque_existential_1(v0 + v2 + 96);
  v3 = v1[10];
  v4 = sub_220885D4C();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);
  __swift_destroy_boxed_opaque_existential_1(v0 + v2 + v1[11]);

  return swift_deallocObject();
}

uint64_t sub_2204EAD80()
{

  return swift_deallocObject();
}

unint64_t sub_2204EADDC(uint64_t a1)
{
  result = sub_2204EE81C();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2204EAE04(void *a1, void (*a2)(char *), uint64_t a3, uint64_t a4)
{
  v508 = a4;
  v430 = a3;
  sub_2204EEA80(0, &qword_281297858, MEMORY[0x277D6DF88]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v421 - v11;
  sub_2204EEA80(0, &qword_281296F38, MEMORY[0x277D6EC60]);
  v429 = v13;
  v428 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v14);
  v427 = &v421 - v15;
  v494 = type metadata accessor for TickerModel();
  MEMORY[0x28223BE20](v494, v16);
  v490 = (&v421 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v489 = sub_2208852DC();
  v496 = *(v489 - 8);
  MEMORY[0x28223BE20](v489, v18);
  v488 = &v421 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v487 = sub_2208857EC();
  v495 = *(v487 - 8);
  MEMORY[0x28223BE20](v487, v20);
  v486 = &v421 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v485 = sub_22088699C();
  v479 = *(v485 - 8);
  MEMORY[0x28223BE20](v485, v22);
  v506 = &v421 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v25);
  v484 = &v421 - v26;
  MEMORY[0x28223BE20](v27, v28);
  v500 = &v421 - v29;
  v516 = sub_220885D4C();
  v478 = *(v516 - 8);
  MEMORY[0x28223BE20](v516, v30);
  v505 = &v421 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32, v33);
  v499 = &v421 - v34;
  v515 = type metadata accessor for StockViewModel();
  MEMORY[0x28223BE20](v515, v35);
  v513 = &v421 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37, v38);
  v502 = &v421 - v39;
  v40 = MEMORY[0x277D83D88];
  sub_2204ABDEC(0, &qword_28127EDE8, MEMORY[0x277D6C680], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v41 - 8, v42);
  v455 = &v421 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44, v45);
  v450 = &v421 - v46;
  v461 = sub_220890D8C();
  v469 = *(v461 - 8);
  MEMORY[0x28223BE20](v461, v47);
  v454 = &v421 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49, v50);
  v453 = (&v421 - v51);
  MEMORY[0x28223BE20](v52, v53);
  v449 = (&v421 - v54);
  MEMORY[0x28223BE20](v55, v56);
  v448 = (&v421 - v57);
  v460 = sub_22088665C();
  v457 = *(v460 - 8);
  MEMORY[0x28223BE20](v460, v58);
  v452 = &v421 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v60, v61);
  v451 = &v421 - v62;
  MEMORY[0x28223BE20](v63, v64);
  v459 = &v421 - v65;
  MEMORY[0x28223BE20](v66, v67);
  v447 = (&v421 - v68);
  MEMORY[0x28223BE20](v69, v70);
  v446 = (&v421 - v71);
  MEMORY[0x28223BE20](v72, v73);
  v456 = &v421 - v74;
  sub_2204ABDEC(0, qword_28128AAE8, type metadata accessor for StockSparklineViewModel, v40);
  MEMORY[0x28223BE20](v75 - 8, v76);
  v504 = &v421 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v78, v79);
  v481 = &v421 - v80;
  MEMORY[0x28223BE20](v81, v82);
  v498 = &v421 - v83;
  MEMORY[0x28223BE20](v84, v85);
  v480 = (&v421 - v86);
  sub_2204ABDEC(0, &qword_2812990C0, MEMORY[0x277D697F8], v40);
  MEMORY[0x28223BE20](v87 - 8, v88);
  v477 = &v421 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v90, v91);
  v476 = &v421 - v92;
  MEMORY[0x28223BE20](v93, v94);
  v503 = &v421 - v95;
  MEMORY[0x28223BE20](v96, v97);
  v475 = (&v421 - v98);
  MEMORY[0x28223BE20](v99, v100);
  v520 = (&v421 - v101);
  MEMORY[0x28223BE20](v102, v103);
  v512 = &v421 - v104;
  MEMORY[0x28223BE20](v105, v106);
  v445 = (&v421 - v107);
  MEMORY[0x28223BE20](v108, v109);
  v444 = (&v421 - v110);
  MEMORY[0x28223BE20](v111, v112);
  v509 = (&v421 - v113);
  MEMORY[0x28223BE20](v114, v115);
  v473 = &v421 - v116;
  MEMORY[0x28223BE20](v117, v118);
  v472 = &v421 - v119;
  MEMORY[0x28223BE20](v120, v121);
  v497 = &v421 - v122;
  MEMORY[0x28223BE20](v123, v124);
  v471 = &v421 - v125;
  MEMORY[0x28223BE20](v126, v127);
  v514 = (&v421 - v128);
  MEMORY[0x28223BE20](v129, v130);
  v501 = (&v421 - v131);
  MEMORY[0x28223BE20](v132, v133);
  v443 = (&v421 - v134);
  MEMORY[0x28223BE20](v135, v136);
  v442 = &v421 - v137;
  MEMORY[0x28223BE20](v138, v139);
  v507 = &v421 - v140;
  v517 = sub_22088685C();
  v437 = *(v517 - 8);
  MEMORY[0x28223BE20](v517, v141);
  v518 = &v421 - ((v142 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v143, v144);
  v519 = (&v421 - v145);
  MEMORY[0x28223BE20](v146, v147);
  v510 = &v421 - v148;
  MEMORY[0x28223BE20](v149, v150);
  v511 = (&v421 - v151);
  sub_2204EECD0();
  v493 = v152;
  v492 = *(v152 - 8);
  MEMORY[0x28223BE20](v152, v153);
  v474 = &v421 - ((v154 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v155, v156);
  v470 = &v421 - v157;
  sub_2204EEED4();
  MEMORY[0x28223BE20](v158 - 8, v159);
  v433 = &v421 - ((v160 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v161, v162);
  v435 = &v421 - v163;
  sub_2204EF5C8();
  v165 = v164;
  v166 = *(v164 - 8);
  MEMORY[0x28223BE20](v164, v167);
  v432 = &v421 - ((v168 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v169, v170);
  v434 = &v421 - v171;
  sub_2204EF684();
  v440 = v172;
  MEMORY[0x28223BE20](v172, v173);
  v426 = &v421 - ((v174 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = MEMORY[0x28223BE20](v175, v176);
  v180 = &v421 - v179;
  v181 = *a1;
  if (!*(*a1 + 16))
  {
    (*(v9 + 104))(v12, *MEMORY[0x277D6DF80], v8, v178);
    a2(v12);
    return (*(v9 + 8))(v12, v8);
  }

  v421 = v177;
  v422 = v12;
  v423 = v9;
  v424 = a2;
  v425 = v4;
  v182 = a1[2];
  v491 = a1[1];
  v483 = v182;
  v183 = v181;
  sub_2204E67D8(&qword_281297E20, sub_2204EF5C8);
  sub_2204E67D8(&qword_281297E28, sub_2204EF5C8);
  v441 = v180;
  sub_2208888BC();
  v436 = v183;
  v439 = *(v183 + 16);
  v458 = type metadata accessor for TickerPrewarmBlueprintModifier();
  v184 = v508 + v458[10];
  v185 = *(v184 + 8);
  v186 = *(v184 + 16);
  IsVoiceOverRunning = UIAccessibilityIsVoiceOverRunning();
  if (v186)
  {
    v185 = 0;
  }

  if (IsVoiceOverRunning)
  {
    v188 = 0;
  }

  else
  {
    v188 = v185;
  }

  v189 = *v184;
  v190 = *v184;
  result = UIAccessibilityIsVoiceOverRunning();
  v192 = 1.0;
  if (((result | v186) & 1) == 0)
  {
    v192 = v189;
    if ((*&v190 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      goto LABEL_113;
    }
  }

  if (v192 <= -9.22337204e18)
  {
LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  if (v192 >= 9.22337204e18)
  {
LABEL_115:
    __break(1u);
LABEL_116:
    __break(1u);
    goto LABEL_117;
  }

  v193 = v192;
  v194 = v439;
  v482 = v8;
  if (v439 >= v188)
  {
    if (v193 < 0)
    {
LABEL_117:
      __break(1u);
      goto LABEL_118;
    }

    if (!v193)
    {
LABEL_109:
      v410 = v421;
      v411 = v440;
      (*(v421 + 16))(v426, v441, v440);
      sub_220483B88();
      sub_2204E67D8(&qword_281294CA0, type metadata accessor for TickerModel);
      v412 = v427;
      sub_22088E7CC();
      sub_2205A9888();
      v414 = *(v413 + 48);
      v415 = v428;
      v416 = v422;
      v417 = v429;
      (*(v428 + 16))(v422, v412, v429);
      v418 = *MEMORY[0x277D6D868];
      v419 = sub_22088B64C();
      (*(*(v419 - 8) + 104))(&v416[v414], v418, v419);
      v420 = v423;
      (*(v423 + 104))(v416, *MEMORY[0x277D6DF70], v8);
      v424(v416);
      (*(v420 + 8))(v416, v8);
      (*(v415 + 8))(v412, v417);
      return (*(v410 + 8))(v441, v411);
    }

    v438 = v165;
    v305 = 0;
    v306 = v439;
    v431 = (v306 & ~(v306 >> 63));
    v519 = (v437 + 16);
    v454 = (v457 + 16);
    v455 = v457 + 32;
    v453 = (v469 + 6);
    v452 = (v469 + 4);
    v444 = (v469 + 2);
    v445 = (v469 + 1);
    v451 = (v457 + 8);
    v476 = (v478 + 16);
    v475 = (v479 + 16);
    LODWORD(v474) = *MEMORY[0x277D69288];
    v469 = (v495 + 104);
    v468 = (v495 + 16);
    v467 = (v496 + 16);
    v466 = (v495 + 8);
    v465 = (v479 + 8);
    v464 = (v478 + 8);
    v463 = (v437 + 8);
    v462 = (v496 + 40);
    v459 = (v492 + 32);
    v432 = (v166 + 8);
    v307 = v517;
    v308 = v491;
    v309 = v480;
    v433 = v192;
    while (1)
    {
      v522 = v305;
      if (v306)
      {
        break;
      }

      v313 = MEMORY[0x277D84F90];
LABEL_68:
      v479 = v305 + 1;
      v310 = sub_2204E67D8(&qword_281297FD8, sub_2204EECD0);
      v311 = sub_2204E67D8(&qword_281297FE0, sub_2204EECD0);
      MEMORY[0x223D80A20](v313, v493, v310, v311);
      sub_220483B88();
      sub_2204E67D8(&qword_281294CA0, type metadata accessor for TickerModel);
      v312 = v434;
      sub_22088B29C();
      sub_2208888AC();
      (*v432)(v312, v438);
      v305 = v479;
      v306 = v439;
      if (v479 == v433)
      {
        goto LABEL_109;
      }
    }

    v479 = v305;
    v521 = MEMORY[0x277D84F90];
    result = sub_2204EF810(0, v431, 0);
    if (v306 < 1)
    {
      goto LABEL_112;
    }

    v478 = v458[8];
    v313 = v521;
    v314 = v436 + ((*(v437 + 80) + 32) & ~*(v437 + 80));
    v477 = *(v437 + 72);
    v520 = *(v437 + 16);
    v315 = v306;
    while (1)
    {
      v512 = v315;
      v513 = v314;
      v520(v511);
      v316 = sub_22088681C();
      if (*(v308 + 16))
      {
        v318 = sub_2204AF97C(v316, v317);
        v320 = v319;

        v321 = v507;
        if (v320)
        {
          v322 = *(v308 + 56);
          v323 = sub_22088676C();
          v324 = *(v323 - 8);
          (*(v324 + 16))(v321, v322 + *(v324 + 72) * v318, v323);
          (*(v324 + 56))(v321, 0, 1, v323);
        }

        else
        {
          v326 = sub_22088676C();
          (*(*(v326 - 8) + 56))(v321, 1, 1, v326);
        }
      }

      else
      {

        v325 = sub_22088676C();
        v321 = v507;
        (*(*(v325 - 8) + 56))(v507, 1, 1, v325);
      }

      v518 = v313;
      v327 = sub_22088681C();
      v329 = v483;
      if (*(v483 + 16))
      {
        v330 = sub_2204AF97C(v327, v328);
        v332 = v331;

        if (v332)
        {
          v333 = *(v329 + 56);
          v334 = v457;
          v335 = v333 + *(v457 + 72) * v330;
          v336 = *(v457 + 16);
          v337 = v446;
          v338 = v460;
          v336(v446, v335, v460);
          v339 = *(v334 + 32);
          v340 = v456;
          v339(v456, v337, v338);
          __swift_project_boxed_opaque_existential_1((v508 + v458[9]), *(v508 + v458[9] + 24));
          v341 = v450;
          sub_2204B0174(v340, v321, v511, v450, 0.02);
          v342 = v461;
          if ((*v453)(v341, 1, v461) != 1)
          {
            v390 = v448;
            v509 = *v452;
            v509(v448, v341, v342);
            (*v444)(v449, v390, v342);
            v336(v447, v340, v338);
            v391 = v442;
            sub_2204EFA50(v321, v442, &qword_2812990C0, MEMORY[0x277D697F8]);
            v392 = sub_22088676C();
            v393 = *(v392 - 8);
            v394 = *(v393 + 48);
            if (v394(v391, 1, v392) == 1)
            {
              sub_2204B3A94(v391, &qword_2812990C0, MEMORY[0x277D697F8]);
              v506 = 0;
              LODWORD(v505) = 1;
            }

            else
            {
              v506 = sub_22088675C();
              LODWORD(v505) = v395;
              (*(v393 + 8))(v391, v392);
            }

            v396 = v443;
            sub_2204EFA50(v507, v443, &qword_2812990C0, MEMORY[0x277D697F8]);
            v397 = v394(v396, 1, v392);
            v398 = v456;
            if (v397 == 1)
            {
              v399 = v461;
              (*v445)(v448, v461);
              v400 = v398;
              v401 = v460;
              (*v451)(v400, v460);
              sub_2204B3A94(v396, &qword_2812990C0, MEMORY[0x277D697F8]);
              v402 = 0;
              v403 = 1;
            }

            else
            {
              v402 = sub_22088666C();
              v403 = v404;
              v399 = v461;
              (*v445)(v448, v461);
              v405 = v398;
              v401 = v460;
              (*v451)(v405, v460);
              (*(v393 + 8))(v396, v392);
            }

            v406 = v480;
            v509(v480, v449, v399);
            v407 = type metadata accessor for StockSparklineViewModel(0);
            v339((v406 + v407[8]), v447, v401);
            v309 = v406;
            v408 = v406 + v407[5];
            *v408 = v506;
            *(v408 + 8) = v505 & 1;
            v409 = v406 + v407[6];
            *v409 = v402;
            *(v409 + 8) = v403 & 1;
            *(v406 + v407[7]) = 0;
            (*(*(v407 - 1) + 56))(v406, 0, 1, v407);
            v307 = v517;
            goto LABEL_83;
          }

          (*v451)(v340, v338);
          sub_2204B3A94(v341, &qword_28127EDE8, MEMORY[0x277D6C680]);
          v309 = v480;
        }
      }

      else
      {
      }

      v343 = type metadata accessor for StockSparklineViewModel(0);
      (*(*(v343 - 8) + 56))(v309, 1, 1, v343);
LABEL_83:
      v344 = v520;
      (v520)(v510, v511, v307);
      v345 = MEMORY[0x277D697F8];
      sub_2204EFA50(v507, v501, &qword_2812990C0, MEMORY[0x277D697F8]);
      v346 = v498;
      sub_2204EFA50(v309, v498, qword_28128AAE8, type metadata accessor for StockSparklineViewModel);
      v509 = *v476;
      v347 = v499;
      v348 = v516;
      v509(v499, v508 + v478, v516);
      v349 = v502;
      v344(v502, v510, v517);
      v350 = v515;
      v351 = v501;
      sub_2204EFA50(v501, v349 + *(v515 + 20), &qword_2812990C0, v345);
      sub_2204EFA50(v346, v349 + v350[6], qword_28128AAE8, type metadata accessor for StockSparklineViewModel);
      v509((v349 + v350[8]), v347, v348);
      *(v349 + v350[9]) = 0;
      v352 = v514;
      sub_2204EFA50(v351, v514, &qword_2812990C0, v345);
      v353 = v500;
      sub_2208867CC();
      v354 = v471;
      sub_2204EFA50(v352, v471, &qword_2812990C0, v345);
      v355 = sub_22088676C();
      v356 = *(v355 - 8);
      v357 = *(v356 + 48);
      if (v357(v354, 1, v355) == 1)
      {
        sub_2204B3A94(v354, &qword_2812990C0, MEMORY[0x277D697F8]);
        v509 = 0;
        LODWORD(v506) = 1;
      }

      else
      {
        v509 = sub_22088675C();
        LODWORD(v506) = v358;
        (*(v356 + 8))(v354, v355);
      }

      v359 = v473;
      v360 = v472;
      v361 = v497;
      sub_2204EFA50(v514, v497, &qword_2812990C0, MEMORY[0x277D697F8]);
      if (v357(v361, 1, v355) == 1)
      {
        sub_2204B3A94(v361, &qword_2812990C0, MEMORY[0x277D697F8]);
        v505 = 0;
        LODWORD(v504) = 1;
      }

      else
      {
        v505 = sub_22088666C();
        LODWORD(v504) = v362;
        (*(v356 + 8))(v497, v355);
      }

      sub_2204EFA50(v514, v360, &qword_2812990C0, MEMORY[0x277D697F8]);
      if (v357(v360, 1, v355) == 1)
      {
        sub_2204B3A94(v360, &qword_2812990C0, MEMORY[0x277D697F8]);
        v503 = 0;
        LODWORD(v496) = 1;
      }

      else
      {
        v503 = sub_22088671C();
        LODWORD(v496) = v363;
        (*(v356 + 8))(v360, v355);
      }

      sub_2204EFA50(v514, v359, &qword_2812990C0, MEMORY[0x277D697F8]);
      if (v357(v359, 1, v355) == 1)
      {
        sub_2204B3A94(v359, &qword_2812990C0, MEMORY[0x277D697F8]);
        v495 = 0;
        v481 = 0;
      }

      else
      {
        v495 = sub_22088668C();
        v481 = v364;
        (*(v356 + 8))(v359, v355);
      }

      v365 = v484;
      v366 = v502 + *(v515 + 28);
      v367 = *v475;
      v368 = v353;
      v369 = v485;
      (*v475)(v484, v368, v485);
      v370 = v486;
      v371 = v487;
      (*v469)(v486, v474, v487);
      v372 = v488;
      sub_22088524C();
      *v366 = v509;
      *(v366 + 8) = v506 & 1;
      *(v366 + 16) = v505;
      *(v366 + 24) = v504 & 1;
      *(v366 + 32) = v503;
      *(v366 + 40) = v496 & 1;
      v373 = v481;
      *(v366 + 48) = v495;
      *(v366 + 56) = v373;
      v374 = type metadata accessor for PriceViewModel();
      v367((v366 + v374[10]), v365, v369);
      *(v366 + 64) = 9666786;
      *(v366 + 72) = 0xA300000000000000;
      (*v468)(v366 + v374[9], v370, v371);
      v375 = v489;
      (*v467)(v366 + v374[11], v372, v489);
      if (qword_281294078 != -1)
      {
        swift_once();
      }

      v376 = qword_2812B6B48;
      (*v466)(v370, v371);
      v377 = *v465;
      (*v465)(v365, v369);
      v377(v500, v369);
      v378 = MEMORY[0x277D697F8];
      sub_2204B3A94(v514, &qword_2812990C0, MEMORY[0x277D697F8]);
      (*v464)(v499, v516);
      sub_2204B3A94(v498, qword_28128AAE8, type metadata accessor for StockSparklineViewModel);
      sub_2204B3A94(v501, &qword_2812990C0, v378);
      v379 = *v463;
      v380 = v517;
      (*v463)(v510, v517);
      v381 = OBJC_IVAR____TtC8StocksUI14PriceFormatter_locale;
      swift_beginAccess();
      (*v462)(v376 + v381, v372, v375);
      swift_endAccess();
      sub_220483A44();
      v383 = *(v382 + 48);
      v384 = v490;
      *v490 = v479;
      v385 = v502;
      sub_2204EA3C4(v502, v384 + v383, type metadata accessor for StockViewModel);
      sub_2204E67D8(&qword_281294CA0, type metadata accessor for TickerModel);
      v386 = v470;
      sub_22088AD7C();
      sub_2204EFAD0(v385);
      v309 = v480;
      sub_2204B3A94(v480, qword_28128AAE8, type metadata accessor for StockSparklineViewModel);
      sub_2204B3A94(v507, &qword_2812990C0, v378);
      v307 = v380;
      v379(v511, v380);
      v313 = v518;
      v521 = v518;
      v388 = *(v518 + 2);
      v387 = *(v518 + 3);
      v389 = v512;
      if (v388 >= v387 >> 1)
      {
        sub_2204EF810(v387 > 1, v388 + 1, 1);
        v313 = v521;
      }

      *(v313 + 2) = v388 + 1;
      (*(v492 + 32))(&v313[((*(v492 + 80) + 32) & ~*(v492 + 80)) + *(v492 + 72) * v388], v386, v493);
      v314 = &v477[v513];
      v315 = v389 - 1;
      v8 = v482;
      v308 = v491;
      if (!v315)
      {
        v305 = v479;
        goto LABEL_68;
      }
    }
  }

  result = UIAccessibilityIsVoiceOverRunning();
  if (result)
  {
    v195 = 0;
  }

  else
  {
    v195 = v185;
  }

  if (!v194)
  {
    goto LABEL_116;
  }

  v196 = v194;
  if (v195 == 0x8000000000000000 && v194 == -1)
  {
    goto LABEL_120;
  }

  v197 = v195 / v194;
  if (v197 <= 2)
  {
    v197 = 2;
  }

  v198 = v193 * v197;
  if ((v193 * v197) >> 64 == (v193 * v197) >> 63)
  {
    if ((v198 & 0x8000000000000000) == 0)
    {
      if (v198)
      {
        v438 = v165;
        v199 = 0;
        v435 = v194 & ~(v194 >> 63);
        v511 = (v437 + 16);
        v450 = v457 + 16;
        v456 = (v457 + 32);
        v449 = (v469 + 6);
        v448 = (v469 + 4);
        v446 = (v469 + 2);
        v443 = (v469 + 1);
        v447 = (v457 + 8);
        v473 = (v478 + 16);
        v472 = (v479 + 16);
        LODWORD(v471) = *MEMORY[0x277D69288];
        v470 = (v495 + 104);
        v469 = (v495 + 16);
        v468 = (v496 + 16);
        v467 = (v495 + 8);
        v466 = (v479 + 8);
        v465 = (v478 + 8);
        v464 = (v437 + 8);
        v463 = (v496 + 40);
        v462 = (v492 + 32);
        v431 = (v166 + 8);
        v200 = v517;
        v201 = v491;
        v202 = v481;
        v434 = v198;
        while (1)
        {
          if (__OFADD__(v199, 1))
          {
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
            goto LABEL_114;
          }

          v522 = v199;
          v521 = MEMORY[0x277D84F90];
          result = sub_2204EF810(0, v435, 0);
          if (v196 < 1)
          {
            goto LABEL_111;
          }

          v442 = (v199 + 1);
          v480 = v199;
          v479 = v458[8];
          v206 = v521;
          v207 = v436 + ((*(v437 + 80) + 32) & ~*(v437 + 80));
          v478 = *(v437 + 72);
          v514 = *(v437 + 16);
          v208 = v196;
          do
          {
            v502 = v208;
            v507 = v207;
            v514(v519);
            v209 = sub_22088681C();
            if (*(v201 + 16))
            {
              v211 = sub_2204AF97C(v209, v210);
              v213 = v212;

              v214 = v509;
              if (v213)
              {
                v215 = *(v201 + 56);
                v216 = sub_22088676C();
                v217 = *(v216 - 8);
                (*(v217 + 16))(v214, v215 + *(v217 + 72) * v211, v216);
                (*(v217 + 56))(v214, 0, 1, v216);
              }

              else
              {
                v219 = sub_22088676C();
                (*(*(v219 - 8) + 56))(v214, 1, 1, v219);
              }
            }

            else
            {

              v218 = sub_22088676C();
              v214 = v509;
              (*(*(v218 - 8) + 56))(v509, 1, 1, v218);
            }

            v510 = v206;
            v220 = sub_22088681C();
            v222 = v483;
            if (!*(v483 + 16))
            {

              goto LABEL_38;
            }

            v223 = sub_2204AF97C(v220, v221);
            v225 = v224;

            if ((v225 & 1) == 0)
            {
              goto LABEL_38;
            }

            v226 = *(v222 + 56);
            v227 = v457;
            v228 = v226 + *(v457 + 72) * v223;
            v229 = *(v457 + 16);
            v230 = v451;
            v231 = v460;
            v229(v451, v228, v460);
            v232 = *(v227 + 32);
            v233 = v214;
            v234 = v459;
            v232(v459, v230, v231);
            __swift_project_boxed_opaque_existential_1((v508 + v458[9]), *(v508 + v458[9] + 24));
            v235 = v455;
            sub_2204B0174(v234, v233, v519, v455, 0.02);
            v236 = v461;
            if ((*v449)(v235, 1, v461) == 1)
            {
              (*v447)(v234, v231);
              sub_2204B3A94(v235, &qword_28127EDE8, MEMORY[0x277D6C680]);
              v202 = v481;
              v214 = v233;
LABEL_38:
              v237 = type metadata accessor for StockSparklineViewModel(0);
              (*(*(v237 - 8) + 56))(v202, 1, 1, v237);
              goto LABEL_39;
            }

            v501 = v232;
            v285 = v453;
            v500 = *v448;
            (v500)(v453, v235, v236);
            (*v446)(v454, v285, v236);
            v229(v452, v234, v231);
            v286 = v444;
            sub_2204EFA50(v233, v444, &qword_2812990C0, MEMORY[0x277D697F8]);
            v287 = sub_22088676C();
            v288 = *(v287 - 8);
            v289 = *(v288 + 48);
            if (v289(v286, 1, v287) == 1)
            {
              sub_2204B3A94(v286, &qword_2812990C0, MEMORY[0x277D697F8]);
              v290 = 0;
              LODWORD(v499) = 1;
            }

            else
            {
              v290 = sub_22088675C();
              LODWORD(v499) = v291;
              (*(v288 + 8))(v286, v287);
            }

            v292 = v445;
            sub_2204EFA50(v509, v445, &qword_2812990C0, MEMORY[0x277D697F8]);
            v293 = v289(v292, 1, v287);
            v294 = v459;
            if (v293 == 1)
            {
              v295 = v461;
              (*v443)(v453, v461);
              v296 = v294;
              v297 = v460;
              (*v447)(v296, v460);
              sub_2204B3A94(v292, &qword_2812990C0, MEMORY[0x277D697F8]);
              v298 = 0;
              v299 = 1;
            }

            else
            {
              v298 = sub_22088666C();
              v299 = v300;
              v295 = v461;
              (*v443)(v453, v461);
              v301 = v294;
              v297 = v460;
              (*v447)(v301, v460);
              (*(v288 + 8))(v292, v287);
            }

            v202 = v481;
            (v500)(v481, v454, v295);
            v302 = type metadata accessor for StockSparklineViewModel(0);
            (v501)(v202 + v302[8], v452, v297);
            v303 = v202 + v302[5];
            *v303 = v290;
            *(v303 + 8) = v499 & 1;
            v304 = v202 + v302[6];
            *v304 = v298;
            *(v304 + 8) = v299 & 1;
            *(v202 + v302[7]) = 0;
            (*(*(v302 - 1) + 56))(v202, 0, 1, v302);
            v200 = v517;
            v214 = v509;
LABEL_39:
            v238 = v514;
            (v514)(v518, v519, v200);
            v239 = MEMORY[0x277D697F8];
            sub_2204EFA50(v214, v512, &qword_2812990C0, MEMORY[0x277D697F8]);
            v240 = v504;
            sub_2204EFA50(v202, v504, qword_28128AAE8, type metadata accessor for StockSparklineViewModel);
            v501 = *v473;
            v241 = v505;
            v242 = v516;
            (v501)(v505, v508 + v479, v516);
            v243 = v513;
            v238(v513, v518, v517);
            v244 = v515;
            v245 = v512;
            sub_2204EFA50(v512, v243 + *(v515 + 20), &qword_2812990C0, v239);
            sub_2204EFA50(v240, v243 + v244[6], qword_28128AAE8, type metadata accessor for StockSparklineViewModel);
            (v501)(v243 + v244[8], v241, v242);
            *(v243 + v244[9]) = 0;
            v246 = v520;
            sub_2204EFA50(v245, v520, &qword_2812990C0, v239);
            v247 = v506;
            sub_2208867CC();
            v248 = v475;
            sub_2204EFA50(v246, v475, &qword_2812990C0, v239);
            v249 = sub_22088676C();
            v250 = *(v249 - 8);
            v251 = *(v250 + 48);
            if (v251(v248, 1, v249) == 1)
            {
              sub_2204B3A94(v248, &qword_2812990C0, MEMORY[0x277D697F8]);
              v501 = 0;
              LODWORD(v500) = 1;
            }

            else
            {
              v501 = sub_22088675C();
              LODWORD(v500) = v252;
              (*(v250 + 8))(v248, v249);
            }

            v253 = v477;
            v254 = v476;
            v255 = v503;
            sub_2204EFA50(v520, v503, &qword_2812990C0, MEMORY[0x277D697F8]);
            if (v251(v255, 1, v249) == 1)
            {
              sub_2204B3A94(v255, &qword_2812990C0, MEMORY[0x277D697F8]);
              v499 = 0;
              LODWORD(v498) = 1;
            }

            else
            {
              v499 = sub_22088666C();
              LODWORD(v498) = v256;
              (*(v250 + 8))(v503, v249);
            }

            sub_2204EFA50(v520, v254, &qword_2812990C0, MEMORY[0x277D697F8]);
            if (v251(v254, 1, v249) == 1)
            {
              sub_2204B3A94(v254, &qword_2812990C0, MEMORY[0x277D697F8]);
              v497 = 0;
              LODWORD(v496) = 1;
            }

            else
            {
              v497 = sub_22088671C();
              LODWORD(v496) = v257;
              (*(v250 + 8))(v254, v249);
            }

            sub_2204EFA50(v520, v253, &qword_2812990C0, MEMORY[0x277D697F8]);
            if (v251(v253, 1, v249) == 1)
            {
              sub_2204B3A94(v253, &qword_2812990C0, MEMORY[0x277D697F8]);
              v495 = 0;
              v258 = 0;
            }

            else
            {
              v259 = sub_22088668C();
              v260 = v253;
              v495 = v259;
              v258 = v261;
              (*(v250 + 8))(v260, v249);
            }

            v262 = v513 + *(v515 + 28);
            v263 = *v472;
            v264 = v484;
            v265 = v485;
            (*v472)(v484, v247, v485);
            v266 = v486;
            v267 = v487;
            (*v470)(v486, v471, v487);
            v268 = v488;
            sub_22088524C();
            *v262 = v501;
            *(v262 + 8) = v500 & 1;
            *(v262 + 16) = v499;
            *(v262 + 24) = v498 & 1;
            *(v262 + 32) = v497;
            *(v262 + 40) = v496 & 1;
            *(v262 + 48) = v495;
            *(v262 + 56) = v258;
            v269 = type metadata accessor for PriceViewModel();
            v263(v262 + v269[10], v264, v265);
            *(v262 + 64) = 9666786;
            *(v262 + 72) = 0xA300000000000000;
            (*v469)((v262 + v269[9]), v266, v267);
            v270 = v489;
            (*v468)(v262 + v269[11], v268, v489);
            if (qword_281294078 != -1)
            {
              swift_once();
            }

            v271 = qword_2812B6B48;
            (*v467)(v266, v267);
            v272 = *v466;
            (*v466)(v264, v265);
            v272(v506, v265);
            v273 = MEMORY[0x277D697F8];
            sub_2204B3A94(v520, &qword_2812990C0, MEMORY[0x277D697F8]);
            (*v465)(v505, v516);
            sub_2204B3A94(v504, qword_28128AAE8, type metadata accessor for StockSparklineViewModel);
            sub_2204B3A94(v512, &qword_2812990C0, v273);
            v274 = *v464;
            v275 = v517;
            (*v464)(v518, v517);
            v276 = OBJC_IVAR____TtC8StocksUI14PriceFormatter_locale;
            swift_beginAccess();
            (*v463)(v271 + v276, v268, v270);
            swift_endAccess();
            sub_220483A44();
            v278 = *(v277 + 48);
            v279 = v490;
            *v490 = v480;
            v280 = v513;
            sub_2204EA3C4(v513, v279 + v278, type metadata accessor for StockViewModel);
            sub_2204E67D8(&qword_281294CA0, type metadata accessor for TickerModel);
            v281 = v474;
            v200 = v275;
            sub_22088AD7C();
            sub_2204EFAD0(v280);
            v202 = v481;
            sub_2204B3A94(v481, qword_28128AAE8, type metadata accessor for StockSparklineViewModel);
            sub_2204B3A94(v509, &qword_2812990C0, v273);
            v274(v519, v275);
            v206 = v510;
            v521 = v510;
            v283 = *(v510 + 2);
            v282 = *(v510 + 3);
            v284 = v502;
            if (v283 >= v282 >> 1)
            {
              sub_2204EF810(v282 > 1, v283 + 1, 1);
              v206 = v521;
            }

            *(v206 + 2) = v283 + 1;
            (*(v492 + 32))(&v206[((*(v492 + 80) + 32) & ~*(v492 + 80)) + *(v492 + 72) * v283], v281, v493);
            v207 = v507 + v478;
            v208 = v284 - 1;
            v8 = v482;
            v201 = v491;
          }

          while (v208);
          v203 = sub_2204E67D8(&qword_281297FD8, sub_2204EECD0);
          v204 = sub_2204E67D8(&qword_281297FE0, sub_2204EECD0);
          MEMORY[0x223D80A20](v206, v493, v203, v204);
          sub_220483B88();
          v205 = v432;
          sub_22088B29C();
          sub_2208888AC();
          result = (*v431)(v205, v438);
          v199 = v442;
          v196 = v439;
          if (v442 == v434)
          {
            goto LABEL_109;
          }
        }
      }

      goto LABEL_109;
    }

    goto LABEL_119;
  }

LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
  return result;
}

unint64_t sub_2204EE81C()
{
  result = qword_28128B6D8[0];
  if (!qword_28128B6D8[0])
  {
    type metadata accessor for ForYouTitleViewRenderer();
    result = swift_getWitnessTable();
    atomic_store(result, qword_28128B6D8);
  }

  return result;
}

void sub_2204EE870(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for TickerSectionDescriptor;
    v8[1] = type metadata accessor for TickerModel();
    v8[2] = sub_220483B88();
    v8[3] = sub_2204EF2A4(&qword_281294CA0, type metadata accessor for TickerModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2204EE930(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for TickerSectionDescriptor;
    v8[1] = type metadata accessor for TickerModel();
    v8[2] = sub_220483B88();
    v8[3] = sub_2205A9830();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2204EE9C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for TickerSectionDescriptor;
    v8[1] = type metadata accessor for TickerModel();
    v8[2] = sub_220483B88();
    v8[3] = sub_2206388C0(&qword_281294CA0, type metadata accessor for TickerModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2204EEA80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for TickerSectionDescriptor;
    v8[1] = type metadata accessor for TickerModel();
    v8[2] = sub_220483B88();
    v8[3] = sub_2204E67D8(&qword_281294CA0, type metadata accessor for TickerModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void *sub_2204EEB40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 *a9, __int128 *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v26 = a13;
  v27 = a14;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v25);
  (*(*(a13 - 8) + 32))(boxed_opaque_existential_1, a11, a13);
  v21 = swift_allocObject();
  v21[3] = 0;
  swift_unknownObjectWeakInit();
  v21[4] = a1;
  v21[5] = a2;
  v21[6] = a3;
  v21[7] = a4;
  v21[8] = a5;
  v21[9] = a6;
  v21[10] = a7;
  v21[11] = a8;
  sub_220457328(a9, (v21 + 12));
  sub_220457328(a10, (v21 + 17));
  sub_220457328(&v25, (v21 + 22));
  return v21;
}

void sub_2204EECD0()
{
  if (!qword_281297FD0)
  {
    type metadata accessor for TickerModel();
    sub_2204BC2F4(&qword_281294CA0, 255, type metadata accessor for TickerModel);
    v0 = sub_22088ADAC();
    if (!v1)
    {
      atomic_store(v0, &qword_281297FD0);
    }
  }
}

uint64_t sub_2204EED68(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22044D56C(0, &qword_28127E820);
  result = sub_22088848C();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220488704();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204898B0();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220489A00();
  result = sub_2208884CC();
  if (result)
  {
    sub_220488588();
    swift_allocObject();
    return sub_22088BFBC();
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_2204EEED4()
{
  if (!qword_2812987D8)
  {
    sub_2204EECD0();
    sub_2204EF2A4(&qword_281297FD8, sub_2204EECD0);
    sub_2204EF2A4(&qword_281297FE0, sub_2204EECD0);
    v0 = sub_2208888CC();
    if (!v1)
    {
      atomic_store(v0, &qword_2812987D8);
    }
  }
}

uint64_t sub_2204EEFA0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220488310(0);
  result = sub_2208884CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204888A4();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220487E40(0, &qword_281297678, sub_220488310, sub_2204897BC, MEMORY[0x277D6E388]);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297C50);
  result = sub_2208884DC();
  if (!v6)
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

  sub_22044E43C(&qword_281298BF0, MEMORY[0x277CEAEA8]);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297770);
  result = sub_2208884DC();
  if (!v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22048A3C8();
  result = sub_2208884CC();
  if (result)
  {
    sub_22044E43C(&qword_281297B00, sub_22048A3C8);
    sub_2204898B0();
    v4 = objc_allocWithZone(v3);
    return sub_22088D54C();
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_2204EF2A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2204EF2EC(void *a1)
{
  v2 = sub_22088D7EC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = (v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_22088D80C();
  MEMORY[0x28223BE20](v7 - 8, v8);
  sub_220487E40(0, &qword_2812976A0, sub_220488310, sub_2204897BC, MEMORY[0x277D6E380]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v12);
  v14 = v17 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220488310(0);
  result = sub_2208884CC();
  if (result)
  {
    v16 = result;
    (*(v11 + 104))(v14, *MEMORY[0x277D6E378], v10);
    *v6 = 0;
    (*(v3 + 104))(v6, *MEMORY[0x277D6E828], v2);
    sub_22088D7FC();
    v17[1] = v16;
    sub_220487E40(0, &qword_281297678, sub_220488310, sub_2204897BC, MEMORY[0x277D6E388]);
    swift_allocObject();
    return sub_22088CDAC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2204EF5C8()
{
  if (!qword_281297E10)
  {
    type metadata accessor for TickerModel();
    sub_220483B88();
    sub_2204BC2F4(&qword_281294CA0, 255, type metadata accessor for TickerModel);
    v0 = sub_22088B39C();
    if (!v1)
    {
      atomic_store(v0, &qword_281297E10);
    }
  }
}

void sub_2204EF684()
{
  if (!qword_281298798)
  {
    sub_2204EF5C8();
    sub_2204EF2A4(&qword_281297E20, sub_2204EF5C8);
    sub_2204EF2A4(&qword_281297E28, sub_2204EF5C8);
    v0 = sub_2208888CC();
    if (!v1)
    {
      atomic_store(v0, &qword_281298798);
    }
  }
}

uint64_t sub_2204EF750(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220488310(0);
  result = sub_2208884CC();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2204888A4();
    result = sub_2208884CC();
    if (result)
    {
      sub_220489A00();
      v4 = objc_allocWithZone(v3);
      return sub_22088D99C();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

size_t sub_2204EF810(size_t a1, int64_t a2, char a3)
{
  result = sub_22048DBF8(a1, a2, a3, *v3, &qword_28127E108, sub_2204EECD0, sub_2204EECD0);
  *v3 = result;
  return result;
}

uint64_t sub_2204EF860(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220488588();
  result = sub_2208884CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297128);
  result = sub_2208884DC();
  if (!v3)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220487E40(0, &unk_281297780, sub_220488588, sub_220489ABC, MEMORY[0x277D6E068]);
  result = sub_2208884CC();
  if (result)
  {
    sub_2204EFBE8();
    sub_2204883C0();
    swift_allocObject();
    return sub_22088B93C();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_2204EF9E4(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_220453F64(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2204EFA50(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2204ABDEC(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2204EFAD0(uint64_t a1)
{
  v2 = type metadata accessor for StockViewModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2204EFB2C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220488588();
  result = sub_2208884CC();
  if (result)
  {
    sub_220487E40(0, &unk_281297780, sub_220488588, sub_220489ABC, MEMORY[0x277D6E068]);
    swift_allocObject();
    return sub_22088C94C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2204EFBE8()
{
  result = qword_281297790;
  if (!qword_281297790)
  {
    sub_220487E40(255, &unk_281297780, sub_220488588, sub_220489ABC, MEMORY[0x277D6E068]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281297790);
  }

  return result;
}

uint64_t sub_2204EFC84()
{
  sub_22088E6FC();
  if (qword_281294340 != -1)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v94 = v0[71];
    v115 = v0[69];
    v118 = v0[70];
    v1 = v0[68];
    v2 = v0[67];
    v3 = v0[66];
    v4 = v0[65];
    v93 = v0[64];
    v5 = v0[61];
    v109 = v0[63];
    v112 = v0[62];
    v6 = v0[60];
    v92 = v0[59];
    v7 = v0[58];
    v104 = v0[57];
    v106 = v0[56];
    v96 = v0[29];
    v99 = v0[28];
    (*(v118 + 104))();
    v8 = sub_22088FFFC();
    (*(*(v8 - 8) + 56))(v1, 1, 1, v8);
    (*(v3 + 104))(v2, *MEMORY[0x277D6D180], v4);
    sub_22088C21C();
    sub_220891EDC();
    sub_22088C21C();
    sub_22088C25C();
    sub_22088C1EC();
    sub_22088C26C();
    v90 = v10;
    v91 = v9;
    sub_22088C24C();
    sub_22088C20C();
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    sub_22088C23C();
    sub_22088C2AC();
    sub_22088C22C();
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    (*(v6 + 104))(v5, *MEMORY[0x277D6D198], v92);
    v88 = v24;
    v89 = v26;
    v87 = v16;
    v85 = v12;
    v86 = v14;
    sub_220886D2C();
    sub_2207AE3F8(v96, v99, v7);
    v121 = sub_22088F5EC();

    (*(v104 + 8))(v7, v106);
    (*(v109 + 8))(v93, v112);
    (*(v3 + 8))(v2, v4);
    sub_2204C5F44(v1, &qword_281296950, MEMORY[0x277D32FE0]);
    (*(v118 + 8))(v94, v115);
    sub_22088C22C();
    v28 = v27;
    sub_22088C20C();
    v30 = v29;
    sub_22088C20C();
    v32 = v31;
    v33 = __swift_project_boxed_opaque_existential_1((v96 + 216), *(v96 + 240));
    sub_22088C21C();
    v35 = v34;
    v37 = v36;
    v38 = sub_22088C24C();
    sub_22088C1DC();
    v39 = *v33;
    v0[13] = v35;
    v0[14] = v37;
    v40 = *(MEMORY[0x277D768C8] + 16);
    *(v0 + 15) = *MEMORY[0x277D768C8];
    *(v0 + 17) = v40;
    v0[19] = v38;
    __swift_project_boxed_opaque_existential_1(v39 + 2, v39[5]);
    v41 = v38;
    sub_2204A52C8((v0 + 13), (v0 + 2));
    MinY = CGRectGetMinY(*(v0 + 1));
    __swift_project_boxed_opaque_existential_1(v39 + 7, v39[10]);
    if (qword_2812946D0 != -1)
    {
      swift_once();
    }

    v43 = v0[54];
    v97 = v0[53];
    v100 = v0[55];
    v105 = v0[52];
    v44 = v0[51];
    v102 = v0[50];
    v45 = v0[48];
    v110 = v0[47];
    v113 = v0[49];
    v116 = v0[46];
    v119 = v0[45];
    v124 = v0[44];
    v125 = v0[43];
    v122 = v0[42];
    v46 = v0[40];
    v47 = v0[41];
    v95 = v0[27];
    v107 = v0[26];
    v48 = qword_2812946D8;
    v49 = unk_2812946E0;

    v50 = sub_2204A5AE0(v48, v49, v41);

    v51 = sub_220891D8C();

    [v51 ascender];
    v53 = v52;
    [v51 capHeight];
    v55 = v54;

    (*(v43 + 8))(v100, v97);
    sub_2204A9180((v0 + 2));
    (*(v44 + 16))(v105, v95, v102);
    v56 = v0;
    (*(v45 + 104))(v113, *MEMORY[0x277D6E080], v110);
    (*(v47 + 16))(v116, v107, v46);
    sub_2204F1094(v116, v119);
    (*(v47 + 32))(v122, v119, v46);
    sub_22044E364(&qword_281296EC0, sub_2204F1480);
    sub_2208915BC();
    v120 = *(v125 + 36);
    *(v124 + v120) = 0;
    sub_2204F1130(0, &qword_28127E360, &unk_281296EB0, MEMORY[0x277D6EC70], MEMORY[0x277D84310]);
    v58 = *(v57 + 36);
    sub_22044E364(&unk_281296EB0, sub_2204F1480);
    sub_22089199C();
    if (*(v124 + v58) == v0[24])
    {
      break;
    }

    v61 = 0;
    v62 = v28 + v30;
    v114 = v0[38];
    v117 = v0 + 20;
    v63 = v0[36];
    v64 = v0[32];
    v108 = (v63 + 32);
    v111 = (v63 + 16);
    v98 = v64;
    v101 = (v64 + 32);
    v103 = (v64 + 48);
    v123 = MEMORY[0x277D84F90];
    while (1)
    {
      v126 = v61;
      v65 = v56[39];
      v66 = v56[37];
      v67 = v56[35];
      v0 = v56;
      v68 = sub_2208919BC();
      (*v111)(v66);
      v68(v117, 0);
      v69 = v124;
      sub_2208919AC();
      v70 = *(v114 + 48);
      *v65 = v126;
      (*v108)(v65 + v70, v66, v67);
      if (__OFADD__(v126, 1))
      {
        break;
      }

      v71 = v56[29];
      v72 = v56[30];
      v73 = v56[27];
      *(v124 + v120) = v126 + 1;
      sub_2204F1680(v126, v65 + v70, v73, v71, v121, v72, 0, v62, 0.0, v32, COERCE__INT64_FASTCALL_INT64_(MinY + v53 - v55 + 1.0));
      v74 = v56[30];
      v75 = v56[31];
      sub_220506264(v56[39]);
      if ((*v103)(v74, 1, v75) == 1)
      {
        sub_2204C5F44(v56[30], &qword_2812979E8, sub_22050605C);
      }

      else
      {
        v76 = v56[33];
        v77 = v56[34];
        v78 = v56[31];
        v79 = *v101;
        (*v101)(v77, v56[30], v78);
        v79(v76, v77, v78);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v123 = sub_220506494(0, v123[2] + 1, 1, v123);
        }

        v81 = v123[2];
        v80 = v123[3];
        if (v81 >= v80 >> 1)
        {
          v123 = sub_220506494(v80 > 1, v81 + 1, 1, v123);
        }

        v82 = v56[33];
        v83 = v56[31];
        v123[2] = v81 + 1;
        v79(v123 + ((*(v98 + 80) + 32) & ~*(v98 + 80)) + *(v98 + 72) * v81, v82, v83);
        v69 = v124;
      }

      sub_22089199C();
      v61 = v126 + 1;
      if (*(v69 + v58) == v56[24])
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_20:
    swift_once();
  }

LABEL_5:
  v59 = v56[46];
  sub_2207AFC54(v56[44], &qword_28127E350, MEMORY[0x277D843E0]);
  sub_2207AFC54(v59, &qword_28127E340, MEMORY[0x277D843E8]);
  type metadata accessor for ForYouFeedLayoutSectionDescriptor(0);
  type metadata accessor for ForYouFeedLayoutModel();
  sub_22044E364(&unk_2812835A0, type metadata accessor for ForYouFeedLayoutSectionDescriptor);
  sub_22044E364(&qword_28128DE00, type metadata accessor for ForYouFeedLayoutModel);
  sub_22088B06C();
  sub_22088F5DC();

  v60 = v56[1];

  return v60();
}

uint64_t sub_2204F09B4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220488310(0);
  result = sub_2208884CC();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2204883C0();
    result = sub_2208884CC();
    if (result)
    {
      sub_2204884CC();
      swift_allocObject();
      return sub_22088B6AC();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_2204F0A94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2204F0AF8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_281289A98);
  result = sub_2208884DC();
  v3 = v25;
  if (!v25)
  {
    __break(1u);
    goto LABEL_18;
  }

  v4 = v26;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_28128CD70);
  result = sub_2208884DC();
  if (!v24)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204884CC();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for ForYouFeedBlueprintModifierFactory();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204888A4();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220447D10();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v8 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22044869C(0, &qword_28127E5C0);
  result = sub_2208884CC();
  v18 = result;
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22048A10C();
  result = sub_2208884CC();
  v17 = result;
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v16 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204F65CC(0, &qword_281296880, sub_22044BB70, &type metadata for ArticleOfflineModel, MEMORY[0x277D33538]);
  result = sub_2208884CC();
  v15 = result;
  if (!result)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220489FD0(0, &qword_281298910, type metadata accessor for StockListSelectionModel, MEMORY[0x277D6CB60]);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v9 = result;
  v14 = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22048A294();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v10 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &unk_2812992B0);
  result = sub_2208884DC();
  if (!v22)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220453B1C();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v11 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088731C();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v12 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &unk_28128BFC0);
  sub_22088611C();
  sub_22088849C();

  if (v20)
  {
    sub_220487E40(0, &qword_28128F198, type metadata accessor for ForYouFeedBlueprintModifierFactory, sub_220487EE4, type metadata accessor for ForYouFeedInteractor);
    v13 = swift_allocObject();
    v13[3] = 0;
    swift_unknownObjectWeakInit();
    v13[20] = 0;
    v13[33] = MEMORY[0x277D84FA0];
    v13[4] = v5;
    v13[5] = v6;
    v13[6] = v14;
    v13[14] = v16;
    v13[15] = v18;
    v13[16] = v17;
    v13[17] = v15;
    v13[18] = v9;
    v13[19] = v10;
    sub_220457328(&v21, (v13 + 21));
    v13[26] = v11;
    v13[27] = v12;
    v13[20] = 0;
    sub_220457328(&v19, (v13 + 28));
    sub_220457328(&v23, (v13 + 9));
    v13[7] = v3;
    v13[8] = v4;
    *(v3 + OBJC_IVAR____TtC8StocksUI21ForYouFeedDataManager_delegate + 8) = &off_28341E4B0;
    swift_unknownObjectWeakAssign();
    return v13;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_2204F1094(uint64_t a1, uint64_t a2)
{
  sub_2204F1130(0, &qword_28127E340, &qword_281296EC0, MEMORY[0x277D6EC68], MEMORY[0x277D843E8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2204F1130(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_2204F1480();
    v10 = v9;
    v11 = sub_22044E364(a3, sub_2204F1480);
    v12 = a5(a1, v10, v11);
    if (!v13)
    {
      atomic_store(v12, a2);
    }
  }
}

uint64_t sub_2204F11C8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_281287430);
  result = sub_2208884DC();
  if (!v21)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &unk_2812991E0);
  result = sub_2208884DC();
  if (!v19)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22048A10C();
  result = sub_2208884CC();
  if (result)
  {
    v3 = result;
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    MEMORY[0x28223BE20](v4, v4);
    v6 = (&v17[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for ForYouFeedSectionFactory();
    v17[3] = v9;
    v17[4] = &off_283424880;
    v17[0] = v8;
    type metadata accessor for ForYouFeedBlueprintModifierFactory();
    v10 = swift_allocObject();
    v11 = __swift_mutable_project_boxed_opaque_existential_1(v17, v9);
    MEMORY[0x28223BE20](v11, v11);
    v13 = (&v17[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13);
    v15 = *v13;
    v10[5] = v9;
    v10[6] = &off_283424880;
    v10[2] = v15;
    sub_220457328(&v18, (v10 + 7));
    v10[12] = v3;
    __swift_destroy_boxed_opaque_existential_1(v17);
    __swift_destroy_boxed_opaque_existential_1(v20);
    return v10;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_2204F1480()
{
  if (!qword_281296EA0)
  {
    type metadata accessor for ForYouFeedSectionDescriptor();
    type metadata accessor for ForYouFeedModel();
    sub_2204BC2F4(&unk_281288490, 255, type metadata accessor for ForYouFeedSectionDescriptor);
    sub_2204BC2F4(&unk_281293320, 255, type metadata accessor for ForYouFeedModel);
    v0 = sub_22088E81C();
    if (!v1)
    {
      atomic_store(v0, &qword_281296EA0);
    }
  }
}

uint64_t sub_2204F1574@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281296A70);
  result = sub_2208884DC();
  if (v9)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_22044869C(0, &unk_28127E650);
    result = sub_2208884CC();
    if (result)
    {
      v5 = result;
      v6 = type metadata accessor for ForYouFeedSectionFactory();
      v7 = swift_allocObject();
      result = sub_220457328(&v8, v7 + 16);
      *(v7 + 56) = v5;
      a2[3] = v6;
      a2[4] = &off_283424880;
      *a2 = v7;
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

uint64_t sub_2204F1680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void, void, void)@<X2>, void *a4@<X3>, void (**a5)(char *, uint64_t)@<X4>, uint64_t a6@<X8>, uint64_t (*a7)(uint64_t)@<D0>, double a8@<D1>, double a9@<D2>, double a10@<D3>, uint64_t (*a11)(uint64_t)@<D5>)
{
  v676 = a5;
  v677 = a4;
  v674 = a3;
  v679 = a2;
  v625 = a1;
  v672 = a6;
  v686 = type metadata accessor for ForYouFeedLayoutModel();
  MEMORY[0x28223BE20](v686, v16);
  *&v683 = &v578 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v682 = sub_22088FD8C();
  v685 = *(v682 - 8);
  MEMORY[0x28223BE20](v682, v18);
  *&v697 = &v578 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204F63C4();
  v681 = v20;
  v684 = *(*&v20 - 8);
  MEMORY[0x28223BE20](*&v20, v21);
  v592 = &v578 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v24);
  v591 = &v578 - v25;
  MEMORY[0x28223BE20](v26, v27);
  v593 = &v578 - v28;
  sub_220488B20(0);
  MEMORY[0x28223BE20](v29 - 8, v30);
  v608 = &v578 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for CuratedForYouFeedGroup();
  MEMORY[0x28223BE20](v32 - 8, v33);
  v656 = &v578 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v638 = sub_22088C32C();
  v657 = *(v638 - 8);
  MEMORY[0x28223BE20](v638, v35);
  v601 = &v578 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for StockSectionFooterViewModel();
  MEMORY[0x28223BE20](v37 - 8, v38);
  v602 = &v578 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v615 = sub_22088FE7C();
  v590 = *(v615 - 8);
  MEMORY[0x28223BE20](v615, v40);
  v589 = &v578 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_22088D61C();
  v613 = *(v42 - 8);
  v614 = v42;
  MEMORY[0x28223BE20](v42, v43);
  v612 = &v578 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v616 = type metadata accessor for ForYouFeedLayoutSectionDescriptor.StockSectionFooter(0);
  MEMORY[0x28223BE20](v616, v45);
  v620 = &v578 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x277D83D88];
  sub_2204F0A94(0, &qword_281296BC0, MEMORY[0x277D31F38], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v48 - 8, v49);
  v611 = &v578 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51, v52);
  v641 = (&v578 - v53);
  v626 = type metadata accessor for StockTitleViewLayoutOptions();
  MEMORY[0x28223BE20](v626, v54);
  v627 = (&v578 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));
  v628 = type metadata accessor for StockTitleViewLayoutAttributes();
  MEMORY[0x28223BE20](v628, v56);
  v644 = (&v578 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
  v58 = type metadata accessor for StockTitleViewModel();
  MEMORY[0x28223BE20](v58 - 8, v59);
  v645 = (&v578 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0));
  v61 = type metadata accessor for StockViewModel();
  MEMORY[0x28223BE20](v61 - 8, v62);
  v631 = &v578 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v64, v65);
  v666 = &v578 - v66;
  v660 = sub_22088685C();
  v659 = *(v660 - 8);
  MEMORY[0x28223BE20](v660, v67);
  v600 = &v578 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v69, v70);
  v658 = &v578 - v71;
  v671 = sub_22088DA5C();
  v670 = *(v671 - 8);
  MEMORY[0x28223BE20](v671, v72);
  v636 = &v578 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v74, v75);
  v635 = &v578 - v76;
  MEMORY[0x28223BE20](v77, v78);
  v618 = &v578 - v79;
  MEMORY[0x28223BE20](v80, v81);
  v594 = &v578 - v82;
  MEMORY[0x28223BE20](v83, v84);
  v640 = &v578 - v85;
  v675 = type metadata accessor for ForYouFeedLayoutSectionDescriptor(0);
  MEMORY[0x28223BE20](v675, v86);
  v655 = &v578 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v88, v89);
  v633 = &v578 - v90;
  MEMORY[0x28223BE20](v91, v92);
  v617 = &v578 - v93;
  MEMORY[0x28223BE20](v94, v95);
  v653 = &v578 - v96;
  sub_2204F0A94(0, &qword_281283718, sub_220488B20, v47);
  MEMORY[0x28223BE20](v97 - 8, v98);
  v619 = &v578 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v100, v101);
  v610 = &v578 - v102;
  sub_2204F0A94(0, &qword_281298C80, MEMORY[0x277D6D1A0], v47);
  MEMORY[0x28223BE20](v103 - 8, v104);
  v650 = &v578 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v106, v107);
  v649 = &v578 - v108;
  MEMORY[0x28223BE20](v109, v110);
  v648 = &v578 - v111;
  MEMORY[0x28223BE20](v112, v113);
  v647 = &v578 - v114;
  v652 = sub_220886D7C();
  v651 = *(v652 - 8);
  MEMORY[0x28223BE20](v652, v115);
  v623 = &v578 - ((v116 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v117, v118);
  v603 = &v578 - v119;
  MEMORY[0x28223BE20](v120, v121);
  v604 = &v578 - v122;
  v123 = sub_22089050C();
  MEMORY[0x28223BE20](v123 - 8, v124);
  v629 = &v578 - ((v125 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204F0A94(0, &qword_281296B10, MEMORY[0x277D32218], v47);
  MEMORY[0x28223BE20](v126 - 8, v127);
  v661 = &v578 - v128;
  sub_2204F0A94(0, &unk_281296A50, MEMORY[0x277D325F8], v47);
  MEMORY[0x28223BE20](v129 - 8, v130);
  v662 = &v578 - v131;
  sub_2204F0A94(0, &qword_281296C38, MEMORY[0x277D31DD0], v47);
  MEMORY[0x28223BE20](v132 - 8, v133);
  v668 = &v578 - v134;
  v646 = sub_22089037C();
  v665 = *(v646 - 8);
  MEMORY[0x28223BE20](v646, v135);
  v664 = &v578 - ((v136 + 15) & 0xFFFFFFFFFFFFFFF0);
  v673 = sub_22088F39C();
  v678 = *(v673 - 8);
  MEMORY[0x28223BE20](v673, v137);
  v639 = &v578 - ((v138 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v139, v140);
  v667 = &v578 - v141;
  MEMORY[0x28223BE20](v142, v143);
  v643 = &v578 - v144;
  v669 = sub_22088F58C();
  v663 = *(v669 - 8);
  MEMORY[0x28223BE20](v669, v145);
  v622 = &v578 - ((v146 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v147, v148);
  v621 = &v578 - v149;
  MEMORY[0x28223BE20](v150, v151);
  v599 = &v578 - v152;
  MEMORY[0x28223BE20](v153, v154);
  v634 = &v578 - v155;
  MEMORY[0x28223BE20](v156, v157);
  v637 = &v578 - v158;
  v624 = type metadata accessor for SectionHeaderViewLayoutAttributes();
  MEMORY[0x28223BE20](v624, v159);
  v609 = &v578 - ((v160 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = sub_22088DA1C();
  v605 = *(v161 - 8);
  v606 = v161;
  MEMORY[0x28223BE20](v161, v162);
  v585 = &v578 - ((v163 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v164, v165);
  v595 = &v578 - v166;
  v607 = type metadata accessor for ForYouTitleViewLayoutOptions();
  MEMORY[0x28223BE20](v607, v167);
  v586 = (&v578 - ((v168 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v169, v170);
  v596 = &v578 - v171;
  v598 = type metadata accessor for ForYouTitleViewLayoutAttributes();
  MEMORY[0x28223BE20](v598, v172);
  v588 = &v578 - ((v173 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v174, v175);
  v597 = &v578 - v176;
  v177 = type metadata accessor for AttributionSource();
  MEMORY[0x28223BE20](v177 - 8, v178);
  v632 = (&v578 - ((v179 + 15) & 0xFFFFFFFFFFFFFFF0));
  v654 = type metadata accessor for ForYouFeedLayoutSectionDescriptor.LegacyHeader(0);
  v630 = *(v654 - 8);
  MEMORY[0x28223BE20](v654, v180);
  v642 = &v578 - ((v181 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v182, v183);
  v587 = &v578 - v184;
  MEMORY[0x28223BE20](v185, v186);
  v188 = &v578 - v187;
  MEMORY[0x28223BE20](v189, v190);
  v192 = &v578 - v191;
  sub_2204F0A94(0, &qword_281296C60, MEMORY[0x277D31C50], v47);
  MEMORY[0x28223BE20](v193 - 8, v194);
  v196 = &v578 - ((v195 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v197, v198);
  v200 = &v578 - v199;
  MEMORY[0x28223BE20](v201, v202);
  v204 = &v578 - v203;
  MEMORY[0x28223BE20](v205, v206);
  v208 = &v578 - v207;
  v209 = type metadata accessor for ForYouFeedSectionDescriptor();
  MEMORY[0x28223BE20](v209, v210);
  v212 = &v578 - ((v211 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = v680;
  result = sub_22089183C();
  if (v213)
  {
    return result;
  }

  v583 = v200;
  v584 = v208;
  v579 = v196;
  v580 = v188;
  v581 = v204;
  v582 = v192;
  v680 = 0;
  sub_2204FA2D0();
  v216 = v215;
  sub_22088B2AC();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      swift_storeEnumTagMultiPayload();
      v345 = v670;
      v346 = v636;
      v347 = v671;
      (*(v670 + 104))(v636, *MEMORY[0x277D6E9B0], v671);
      sub_2204FA480();
      v689 = 0u;
      v690 = 0u;
      *&v691 = 0;
      v348 = v622;
      v349 = v680;
      sub_22088F5BC();
      v680 = v349;
      if (v349)
      {
        sub_220504D6C(&v689);
        (*(v345 + 8))(v346, v347);
        sub_2204F9658(v655, type metadata accessor for ForYouFeedLayoutSectionDescriptor);
      }

      else
      {
        sub_220504D6C(&v689);
        v387 = sub_22088F55C();
        (*(v663 + 8))(v348, v669);
        v388 = *(v387 + 16);
        if (v388)
        {
          v673 = v212;
          *&v689 = MEMORY[0x277D84F90];
          sub_220505460(0, v388, 0);
          v389 = v689;
          v678 = *(v685 + 16);
          v390 = *(v685 + 80);
          v671 = v387;
          v391 = v387 + ((v390 + 32) & ~v390);
          v677 = *(v685 + 72);
          v685 += 16;
          v676 = (v685 - 8);
          v674 = (*&v684 + 32);
          v392 = *&v697;
          v393 = v592;
          do
          {
            v679 = v388;
            v394 = v682;
            v395 = v389;
            v396 = v393;
            v397 = v678;
            (v678)(v392, v391, v682);
            v397(*&v683, *&v697, v394);
            v393 = v396;
            v389 = v395;
            v392 = *&v697;
            swift_storeEnumTagMultiPayload();
            sub_22044E364(qword_28128DE08, type metadata accessor for ForYouFeedLayoutModel);
            sub_22088BC2C();
            (*v676)(v392, v394);
            *&v689 = v395;
            v399 = *(v395 + 16);
            v398 = *(v395 + 24);
            if (v399 >= v398 >> 1)
            {
              sub_220505460(v398 > 1, v399 + 1, 1);
              v389 = v689;
            }

            *(v389 + 16) = v399 + 1;
            (*(*&v684 + 32))(v389 + ((*(*&v684 + 80) + 32) & ~*(*&v684 + 80)) + *(*&v684 + 72) * v399, v393, COERCE_DOUBLE(*&v681));
            v391 += v677;
            v388 = v679 - 1;
          }

          while (v679 != 1);

          v212 = v673;
        }

        else
        {
        }

        sub_22044E364(&unk_2812835A0, type metadata accessor for ForYouFeedLayoutSectionDescriptor);
        sub_22044E364(&qword_28128DE00, type metadata accessor for ForYouFeedLayoutModel);
        v546 = v672;
        sub_22088C35C();
        sub_22050605C();
        (*(*(v547 - 8) + 56))(v546, 0, 1, v547);
      }

      v308 = type metadata accessor for ForYouFeedSectionDescriptor;
    }

    else
    {
      v303 = v671;
      if (EnumCaseMultiPayload != 4)
      {
        swift_storeEnumTagMultiPayload();
        v368 = (*(v670 + 104))(v640, *MEMORY[0x277D6E9B0], v303);
        MEMORY[0x28223BE20](v368, v369);
        v576 = v677;
        v577 = v674;
        sub_220574EEC(sub_2207AFCD0, &v574);
        sub_22044E364(&unk_2812835A0, type metadata accessor for ForYouFeedLayoutSectionDescriptor);
        sub_22044E364(&qword_28128DE00, type metadata accessor for ForYouFeedLayoutModel);
        v370 = v672;
        sub_22088C35C();
        sub_22050605C();
        return (*(*(v371 - 8) + 56))(v370, 0, 1, v371);
      }

      v212 = v633;
      swift_storeEnumTagMultiPayload();
      v304 = v670;
      v305 = v635;
      (*(v670 + 104))(v635, *MEMORY[0x277D6E9B0], v303);
      sub_2204FA480();
      v689 = 0u;
      v690 = 0u;
      *&v691 = 0;
      v306 = v621;
      v307 = v680;
      sub_22088F5BC();
      v680 = v307;
      if (!v307)
      {
        v400 = v672;
        sub_220504D6C(&v689);
        v401 = sub_22088F55C();
        (*(v663 + 8))(v306, v669);
        v402 = *(v401 + 16);
        if (v402)
        {
          *&v689 = MEMORY[0x277D84F90];
          sub_220505460(0, v402, 0);
          v403 = v689;
          v678 = *(v685 + 16);
          v404 = *(v685 + 80);
          v673 = v401;
          v405 = v401 + ((v404 + 32) & ~v404);
          v677 = *(v685 + 72);
          v685 += 16;
          v676 = (v685 - 8);
          v674 = (*&v684 + 32);
          v406 = *&v697;
          v407 = v591;
          do
          {
            v679 = v402;
            v408 = v682;
            v409 = v403;
            v410 = v407;
            v411 = v678;
            (v678)(v406, v405, v682);
            v411(*&v683, *&v697, v408);
            v407 = v410;
            v403 = v409;
            v406 = *&v697;
            swift_storeEnumTagMultiPayload();
            sub_22044E364(qword_28128DE08, type metadata accessor for ForYouFeedLayoutModel);
            sub_22088BC2C();
            (*v676)(v406, v408);
            *&v689 = v409;
            v413 = *(v409 + 16);
            v412 = *(v409 + 24);
            if (v413 >= v412 >> 1)
            {
              sub_220505460(v412 > 1, v413 + 1, 1);
              v403 = v689;
            }

            *(v403 + 16) = v413 + 1;
            (*(*&v684 + 32))(v403 + ((*(*&v684 + 80) + 32) & ~*(*&v684 + 80)) + *(*&v684 + 72) * v413, v407, COERCE_DOUBLE(*&v681));
            v405 += v677;
            v402 = v679 - 1;
          }

          while (v679 != 1);

          v520 = v672;
        }

        else
        {

          v520 = v400;
        }

        sub_22044E364(&unk_2812835A0, type metadata accessor for ForYouFeedLayoutSectionDescriptor);
        sub_22044E364(&qword_28128DE00, type metadata accessor for ForYouFeedLayoutModel);
        sub_22088C35C();
LABEL_87:
        sub_22050605C();
        return (*(*(v548 - 8) + 56))(v520, 0, 1, v548);
      }

      sub_220504D6C(&v689);
      (*(v304 + 8))(v305, v303);
      v308 = type metadata accessor for ForYouFeedLayoutSectionDescriptor;
    }

    return sub_2204F9658(v212, v308);
  }

  v578 = v216;
  if (!EnumCaseMultiPayload)
  {
    sub_2204FBAC4(v212, v584);
    v309 = sub_22088C24C();
    v310 = [v309 horizontalSizeClass];

    v311 = v632;
    if (v310 && v310 != 2)
    {
      v434 = v677;
      if (v310 != 1)
      {
        result = sub_22089267C();
        __break(1u);
        return result;
      }

      v435 = *(v677 + 304);
      v436 = *(v677 + 312);
      __swift_project_boxed_opaque_existential_1((v677 + 280), v435);
      AttributionProviderType.source.getter(v435, v436);
      v685 = *(v434 + 320);
      sub_22046DA2C(v434 + 328, v692);
      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v438 = objc_opt_self();
      swift_unknownObjectRetain();
      v439 = [v438 bundleForClass_];
      v697 = COERCE_DOUBLE(sub_220884CAC());

      v440 = [v438 bundleForClass_];
      v576 = 0x80000002208D5610;
      v441 = sub_220884CAC();
      v443 = v442;

      sub_220505224(0, &qword_28127DE60, &qword_28127DE10, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
      v444 = swift_allocObject();
      *(v444 + 16) = xmmword_220899360;
      v446 = *v311;
      v445 = v311[1];
      *(v444 + 56) = MEMORY[0x277D837D0];
      *(v444 + 64) = sub_22048D860();
      *(v444 + 32) = v446;
      *(v444 + 40) = v445;

      v447 = sub_22089139C();
      v449 = v448;

      sub_2204F9658(v311, type metadata accessor for AttributionSource);
      *&v689 = v441;
      *(&v689 + 1) = v443;
      *&v690 = v447;
      *(&v690 + 1) = v449;
      *&v691 = 0;
      *(&v691 + 1) = v685;
      sub_22046DA2C(v677 + 136, v687);
      __swift_project_boxed_opaque_existential_1(v687, v688);
      sub_22088C31C();
      v451 = v450;
      v453 = v452;
      sub_220891A5C();
      v455 = v454;
      v457 = v456;
      v459 = v458;
      v461 = v460;
      v462 = v595;
      sub_22088C1DC();
      sub_22088C1FC();
      v464 = v463;
      v465 = sub_22088C24C();
      v466 = sub_22088C2AC();
      v467 = v673;
      v468 = (*(v678 + 48))(v584, 1, v673);
      v469 = v468 == 1;
      if (v468 == 1)
      {
        v470 = 14.0;
      }

      else
      {
        v470 = 4.0;
      }

      v471 = v596;
      *v596 = v451;
      *(v471 + 1) = v453;
      *(v471 + 2) = v455;
      *(v471 + 3) = v457;
      *(v471 + 4) = v459;
      *(v471 + 5) = v461;
      v472 = v607;
      (*(v605 + 32))(&v471[*(v607 + 24)], v462, v606);
      *&v471[v472[7]] = v464;
      *&v471[v472[8]] = v465;
      *&v471[v472[9]] = v466;
      v471[v472[10]] = 1;
      v344 = v467;
      v471[v472[11]] = v469;
      *&v471[v472[12]] = 0x4000000000000000;
      *&v471[v472[13]] = v470;
      *&v471[v472[14]] = 0;
      v473 = v597;
      sub_220523318(&v689, v471, v597);
      sub_2204F9658(v471, type metadata accessor for ForYouTitleViewLayoutOptions);
      __swift_destroy_boxed_opaque_existential_1(v687);
      sub_22050632C(0, &unk_28128F160, type metadata accessor for ForYouTitleViewLayoutAttributes);
      v475 = *(v474 + 48);
      v476 = v692[1];
      v343 = v582;
      *(v582 + 3) = v692[0];
      *(v343 + 64) = v476;
      *(v343 + 80) = v693;
      v477 = v691;
      *(v343 + 16) = v690;
      *(v343 + 32) = v477;
      *v343 = v689;
      sub_2205230D8(v473, v343 + v475, type metadata accessor for ForYouTitleViewLayoutAttributes);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      v685 = a7;
      v312 = __swift_project_boxed_opaque_existential_1((v677 + 16), *(v677 + 40));
      if (qword_28128C9B8 != -1)
      {
        swift_once();
      }

      v314 = qword_2812B6A48;
      v313 = unk_2812B6A50;
      sub_22088C31C();
      v316 = v315;
      v684 = v315;
      v682 = v317;
      v318 = sub_22088C24C();
      __swift_project_boxed_opaque_existential_1((*v312 + 16), *(*v312 + 40));
      v319 = sub_22064ACF8(v314, v313, v318);
      v320 = sub_220891D8C();
      [v320 ascender];
      v322 = v321;

      v323 = sub_220891D8C();
      [v323 capHeight];
      v325 = v324;

      v326 = *&a11 - (v322 - v325);
      v681 = v326;
      v683 = v316 - a8 - a10;
      [v319 boundingRectWithSize:33 options:0 context:?];
      x = v698.origin.x;
      y = v698.origin.y;
      v697 = a10;
      width = v698.size.width;
      v330 = a8;
      height = v698.size.height;
      v332 = v326 + CGRectGetHeight(v698) + a9;
      v699.origin.x = x;
      v699.origin.y = y;
      v699.size.width = width;
      v699.size.height = height;
      v333 = CGRectGetWidth(v699);
      v700.origin.x = x;
      v700.origin.y = y;
      v700.size.width = width;
      v700.size.height = height;
      CGRectGetHeight(v700);
      v336 = MEMORY[0x28223BE20](v334, v335).n128_u64[0];
      v337 = v682;
      *(&v578 - 14) = v684;
      *(&v578 - 13) = v337;
      v338 = v685;
      *(&v578 - 12) = v332;
      *(&v578 - 11) = v338;
      *(&v578 - 10) = v330;
      *(&v578 - 9) = a9;
      v339 = v683;
      *(&v578 - 8) = v697;
      *(&v578 - 7) = v339;
      v572 = v337;
      v573 = v330;
      v574 = v681;
      v575 = *&v333;
      v576 = v336;
      v340 = v609;
      sub_22088C18C();

      sub_22050632C(0, &qword_28128C9B0, type metadata accessor for SectionHeaderViewLayoutAttributes);
      v342 = *(v341 + 48);
      v343 = v582;
      *v582 = v314;
      *(v343 + 8) = v313;
      sub_2205230D8(v340, v343 + v342, type metadata accessor for SectionHeaderViewLayoutAttributes);
      swift_storeEnumTagMultiPayload();

      v344 = v673;
    }

    v478 = v643;
    v479 = v343;
    v480 = v580;
    sub_220505D40(v479, v580, type metadata accessor for ForYouFeedLayoutSectionDescriptor.LegacyHeader);
    v481 = swift_getEnumCaseMultiPayload();
    v482 = v662;
    v483 = v661;
    v484 = v628;
    if (v481)
    {
      if (v481 == 1)
      {

        sub_22050632C(0, &qword_28128C9B0, type metadata accessor for SectionHeaderViewLayoutAttributes);
        v485 = v480;
        v487 = *(v486 + 48);
        *(&v690 + 1) = v624;
        *&v691 = sub_22044E364(qword_281283408, type metadata accessor for SectionHeaderViewLayoutAttributes);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v689);
        sub_2205230D8(v485 + v487, boxed_opaque_existential_1, type metadata accessor for SectionHeaderViewLayoutAttributes);
      }

      else
      {
        sub_2204891EC();
        v494 = *(v493 + 48);
        *(&v690 + 1) = v484;
        *&v691 = sub_22044E364(&qword_281285408, type metadata accessor for StockTitleViewLayoutAttributes);
        v495 = __swift_allocate_boxed_opaque_existential_1(&v689);
        sub_2205230D8(v480 + v494, v495, type metadata accessor for StockTitleViewLayoutAttributes);
        sub_2204F9658(v480, type metadata accessor for StockViewModel);
      }
    }

    else
    {
      sub_22050632C(0, &unk_28128F160, type metadata accessor for ForYouTitleViewLayoutAttributes);
      v489 = v480;
      v491 = *(v490 + 48);
      *(&v690 + 1) = v598;
      *&v691 = sub_22044E364(qword_281284EF0, type metadata accessor for ForYouTitleViewLayoutAttributes);
      v492 = __swift_allocate_boxed_opaque_existential_1(&v689);
      sub_2205230D8(v489 + v491, v492, type metadata accessor for ForYouTitleViewLayoutAttributes);
      sub_220515C00(v489);
    }

    __swift_project_boxed_opaque_existential_1(&v689, *(&v690 + 1));
    sub_22088D8CC();
    MaxY = CGRectGetMaxY(v701);
    __swift_destroy_boxed_opaque_existential_1(&v689);
    v497 = v581;
    sub_2204FA000(v584, v581, &qword_281296C60, MEMORY[0x277D31C50]);
    if ((*(v678 + 48))(v497, 1, v344) == 1)
    {
      v498 = sub_2204C5F44(v497, &qword_281296C60, MEMORY[0x277D31C50]);
      MEMORY[0x28223BE20](v498, *&MaxY);
      v576 = v679;
      v499 = v637;
      v500 = v680;
      sub_22088F59C();
      v680 = v500;
      v501 = v672;
      v502 = v610;
      if (v500)
      {
        sub_2204F9658(v582, type metadata accessor for ForYouFeedLayoutSectionDescriptor.LegacyHeader);
        return sub_2204C5F44(v584, &qword_281296C60, MEMORY[0x277D31C50]);
      }
    }

    else
    {
      v503 = v678;
      (*(v678 + 32))(v478, v497, v344);
      *&v685 = MaxY;
      v504 = v478;
      v505 = v664;
      sub_22088F37C();
      v506 = sub_22088F43C();
      v507 = v668;
      (*(*(v506 - 8) + 56))(v668, 1, 1, v506);
      (*(v503 + 16))(v667, v504, v344);
      sub_22088FB3C();
      v508 = sub_22088FB4C();
      (*(*(v508 - 8) + 56))(v482, 0, 1, v508);
      v509 = sub_22088F86C();
      (*(*(v509 - 8) + 56))(v483, 1, 1, v509);
      v510 = sub_22044E364(qword_2812884A0, type metadata accessor for ForYouFeedSectionDescriptor);
      v511 = sub_22044E364(&qword_281293318, type metadata accessor for ForYouFeedModel);
      v575 = v510;
      v576 = v511;
      v574 = v578;
      v572 = v483;
      v573 = MEMORY[0x277D84F90];
      v697 = COERCE_DOUBLE(sub_22088B36C());
      sub_2204C5F44(v483, &qword_281296B10, MEMORY[0x277D32218]);
      sub_2204C5F44(v482, &unk_281296A50, MEMORY[0x277D325F8]);
      sub_2204C5F44(v507, &qword_281296C38, MEMORY[0x277D31DD0]);
      v512 = *(v665 + 8);
      v513 = v646;
      v512(v505, v646);
      sub_2204F0A94(0, &qword_28127DFC0, MEMORY[0x277D333A8], MEMORY[0x277D84560]);
      sub_22089026C();
      *(swift_allocObject() + 16) = xmmword_220899360;
      sub_2208904EC();
      sub_22089025C();
      sub_22088F37C();
      v514 = sub_220890AFC();

      v512(v505, v513);
      v515 = sub_22089097C();
      *&v691 = MEMORY[0x277D33EB8];
      *(&v690 + 1) = v515;
      *&v689 = v514;
      v516 = sub_220886D8C();
      v517 = *(*(v516 - 8) + 56);
      v517(v647, 1, 1, v516);
      v517(v648, 1, 1, v516);
      v517(v649, 1, 1, v516);
      v517(v650, 1, 1, v516);

      v518 = v604;
      sub_220886D6C();
      v499 = v637;
      v519 = v680;
      sub_22088F5CC();
      v680 = v519;
      if (v519)
      {

        (*(v651 + 8))(v518, v652);
        (*(v678 + 8))(v643, v673);
        sub_2204F9658(v582, type metadata accessor for ForYouFeedLayoutSectionDescriptor.LegacyHeader);
        sub_220504D6C(&v689);
        return sub_2204C5F44(v584, &qword_281296C60, MEMORY[0x277D31C50]);
      }

      (*(v651 + 8))(v518, v652);
      (*(v678 + 8))(v643, v673);
      sub_220504D6C(&v689);
      v501 = v672;
      v502 = v610;
    }

    v697 = COERCE_DOUBLE(sub_2207AE9F8());
    sub_2207AED38(v584, v499, v502);
    sub_2207AFD4C();
    v522 = *(v521 + 48);
    v523 = v653;
    sub_2204FA000(v502, v653, &qword_281283718, sub_220488B20);
    v524 = v582;
    sub_220505D40(v582, v523 + v522, type metadata accessor for ForYouFeedLayoutSectionDescriptor.LegacyHeader);
    swift_storeEnumTagMultiPayload();
    v525 = *MEMORY[0x277D6E980];
    v526 = sub_22088DA3C();
    v527 = v640;
    (*(*(v526 - 8) + 104))(v640, v525, v526);
    (*(v670 + 104))(v527, *MEMORY[0x277D6E988], v671);
    sub_22044E364(&unk_2812835A0, type metadata accessor for ForYouFeedLayoutSectionDescriptor);
    sub_22044E364(&qword_28128DE00, type metadata accessor for ForYouFeedLayoutModel);
    sub_22088C35C();
    sub_2204C5F44(v502, &qword_281283718, sub_220488B20);
    (*(v663 + 8))(v637, v669);
    sub_2204F9658(v524, type metadata accessor for ForYouFeedLayoutSectionDescriptor.LegacyHeader);
    sub_2204C5F44(v584, &qword_281296C60, MEMORY[0x277D31C50]);
    sub_22050605C();
    return (*(*(v528 - 8) + 56))(v501, 0, 1, v528);
  }

  v218 = v665;
  v219 = v664;
  v220 = v668;
  v221 = v667;
  if (EnumCaseMultiPayload != 1)
  {
    v350 = v212;
    v351 = v656;
    sub_2205230D8(v350, v656, type metadata accessor for CuratedForYouFeedGroup);
    sub_22088F37C();
    v352 = sub_22088F43C();
    (*(*(v352 - 8) + 56))(v220, 1, 1, v352);
    v353 = *(v678 + 16);
    v678 += 16;
    v674 = v353;
    v353(v221, v351, v673);
    v354 = v662;
    sub_22088FB3C();
    v355 = sub_22088FB4C();
    (*(*(v355 - 8) + 56))(v354, 0, 1, v355);
    v356 = sub_22088F86C();
    v357 = v661;
    (*(*(v356 - 8) + 56))(v661, 1, 1, v356);
    v575 = sub_22044E364(qword_2812884A0, type metadata accessor for ForYouFeedSectionDescriptor);
    v576 = sub_22044E364(&qword_281293318, type metadata accessor for ForYouFeedModel);
    v574 = v578;
    v572 = v357;
    v573 = MEMORY[0x277D84F90];
    v679 = sub_22088B36C();
    sub_2204C5F44(v357, &qword_281296B10, MEMORY[0x277D32218]);
    sub_2204C5F44(v354, &unk_281296A50, MEMORY[0x277D325F8]);
    sub_2204C5F44(v220, &qword_281296C38, MEMORY[0x277D31DD0]);
    v358 = *(v218 + 8);
    v359 = v646;
    v358(v219, v646);
    sub_22088F37C();
    v360 = sub_220890AFC();
    v358(v219, v359);
    v361 = sub_22089097C();
    *&v691 = MEMORY[0x277D33EB8];
    *(&v690 + 1) = v361;
    *&v689 = v360;
    v362 = sub_220886D8C();
    v363 = *(*(v362 - 8) + 56);
    v363(v647, 1, 1, v362);
    v363(v648, 1, 1, v362);
    v363(v649, 1, 1, v362);
    v363(v650, 1, 1, v362);

    v364 = v623;
    sub_220886D6C();
    v365 = v634;
    v366 = v680;
    sub_22088F5CC();
    v680 = v366;
    v367 = v652;
    if (v366)
    {

      (*(v651 + 8))(v364, v367);
      sub_2204F9658(v656, type metadata accessor for CuratedForYouFeedGroup);
      return sub_220504D6C(&v689);
    }

    (*(v651 + 8))(v364, v652);

    sub_220504D6C(&v689);
    v414 = v667;
    v415 = v656;
    v674(v667, v656, v673);
    v416 = v599;
    (*(v663 + 16))(v599, v365, v669);
    v417 = v608;
    sub_2207AF040(v414, v416, v608);
    sub_220505D40(v417, v617, sub_220488B20);
    swift_storeEnumTagMultiPayload();
    v418 = *MEMORY[0x277D6E980];
    v419 = sub_22088DA3C();
    v420 = v618;
    (*(*(v419 - 8) + 104))(v618, v418, v419);
    (*(v670 + 104))(v420, *MEMORY[0x277D6E988], v671);
    v421 = sub_22088F55C();
    v422 = *(v421 + 16);
    if (v422)
    {
      *&v689 = MEMORY[0x277D84F90];
      sub_220505460(0, v422, 0);
      v423 = v689;
      v678 = *(v685 + 16);
      v424 = *(v685 + 80);
      v673 = v421;
      v425 = v421 + ((v424 + 32) & ~v424);
      v677 = *(v685 + 72);
      v685 += 16;
      v676 = (v685 - 8);
      v674 = (*&v684 + 32);
      v426 = *&v697;
      v427 = v593;
      do
      {
        v679 = v422;
        v428 = v682;
        v429 = v423;
        v430 = v427;
        v431 = v678;
        (v678)(v426, v425, v682);
        v431(*&v683, *&v697, v428);
        v427 = v430;
        v423 = v429;
        v426 = *&v697;
        swift_storeEnumTagMultiPayload();
        sub_22044E364(qword_28128DE08, type metadata accessor for ForYouFeedLayoutModel);
        sub_22088BC2C();
        (*v676)(v426, v428);
        *&v689 = v429;
        v433 = *(v429 + 16);
        v432 = *(v429 + 24);
        if (v433 >= v432 >> 1)
        {
          sub_220505460(v432 > 1, v433 + 1, 1);
          v423 = v689;
        }

        *(v423 + 16) = v433 + 1;
        (*(*&v684 + 32))(v423 + ((*(*&v684 + 80) + 32) & ~*(*&v684 + 80)) + *(*&v684 + 72) * v433, v427, COERCE_DOUBLE(*&v681));
        v425 += v677;
        v422 = v679 - 1;
      }

      while (v679 != 1);

      v415 = v656;
      v417 = v608;
    }

    else
    {
    }

    sub_22044E364(&unk_2812835A0, type metadata accessor for ForYouFeedLayoutSectionDescriptor);
    sub_22044E364(&qword_28128DE00, type metadata accessor for ForYouFeedLayoutModel);
    v520 = v672;
    sub_22088C35C();
    sub_2204F9658(v417, sub_220488B20);
    (*(v663 + 8))(v634, v669);
    sub_2204F9658(v415, type metadata accessor for CuratedForYouFeedGroup);
    goto LABEL_87;
  }

  sub_22045849C();
  v223 = *(v222 + 48);
  v224 = *(v222 + 64);
  (*(v659 + 32))(v658, v212, v660);
  v225 = v666;
  sub_2205230D8(&v212[v223], v666, type metadata accessor for StockViewModel);
  sub_2204FBAC4(&v212[v224], v583);
  v226 = MEMORY[0x277D84F90];
  v227 = v677;
  v228 = v674;
  v229 = v631;
  if (!v625)
  {
    v230 = sub_22088C24C();
    v231 = [v230 horizontalSizeClass];

    if (v231 == 1)
    {
      v232 = *(v227 + 38);
      v233 = *(v227 + 39);
      __swift_project_boxed_opaque_existential_1(v227 + 35, v232);
      AttributionProviderType.source.getter(v232, v233);
      v697 = v227[40];
      sub_22046DA2C((v227 + 41), v692);
      type metadata accessor for Localized();
      v234 = swift_getObjCClassFromMetadata();
      v235 = objc_opt_self();
      swift_unknownObjectRetain();
      v236 = [v235 bundleForClass_];
      sub_220884CAC();

      v237 = [v235 bundleForClass_];
      v576 = 0x80000002208C1320;
      *&v685 = COERCE_DOUBLE(sub_220884CAC());
      v239 = v238;

      sub_220505224(0, &qword_28127DE60, &qword_28127DE10, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
      v240 = swift_allocObject();
      *(v240 + 16) = xmmword_220899360;
      v241 = v632;
      v243 = *v632;
      v242 = v632[1];
      *(v240 + 56) = MEMORY[0x277D837D0];
      *(v240 + 64) = sub_22048D860();
      *(v240 + 32) = v243;
      *(v240 + 40) = v242;

      v244 = sub_22089139C();
      v246 = v245;

      sub_2204F9658(v241, type metadata accessor for AttributionSource);
      *&v689 = v685;
      *(&v689 + 1) = v239;
      *&v690 = v244;
      *(&v690 + 1) = v246;
      *&v691 = 0;
      *(&v691 + 1) = v697;
      sub_22046DA2C(v677 + 136, v687);
      __swift_project_boxed_opaque_existential_1(v687, v688);
      sub_22088C31C();
      v682 = v247;
      v249 = v248;
      v685 = a7;
      v684 = a8;
      v683 = a9;
      v697 = a10;
      sub_220891A5C();
      v251 = v250;
      v253 = v252;
      v255 = v254;
      v257 = v256;
      v258 = v585;
      sub_22088C1DC();
      sub_22088C1FC();
      v260 = v259;
      v261 = sub_22088C24C();
      v262 = sub_22088C2AC();
      v263 = (*(v678 + 48))(v583, 1, v673);
      v264 = v263 == 1;
      if (v263 == 1)
      {
        v265 = 14.0;
      }

      else
      {
        v265 = 4.0;
      }

      v266 = v586;
      *v586 = v682;
      *(v266 + 1) = v249;
      *(v266 + 2) = v251;
      *(v266 + 3) = v253;
      *(v266 + 4) = v255;
      *(v266 + 5) = v257;
      v267 = v607;
      (*(v605 + 32))(&v266[*(v607 + 24)], v258, v606);
      *&v266[v267[7]] = v260;
      *&v266[v267[8]] = v261;
      *&v266[v267[9]] = v262;
      v266[v267[10]] = 0;
      v266[v267[11]] = v264;
      *&v266[v267[12]] = 0x4000000000000000;
      *&v266[v267[13]] = v265;
      *&v266[v267[14]] = 0;
      v268 = v588;
      sub_220523318(&v689, v266, v588);
      sub_2204F9658(v266, type metadata accessor for ForYouTitleViewLayoutOptions);
      __swift_destroy_boxed_opaque_existential_1(v687);
      sub_22050632C(0, &unk_28128F160, type metadata accessor for ForYouTitleViewLayoutAttributes);
      v270 = *(v269 + 48);
      v271 = v587;
      sub_220525284(&v689, v587);
      sub_220505D40(v268, v271 + v270, type metadata accessor for ForYouTitleViewLayoutAttributes);
      swift_storeEnumTagMultiPayload();
      v226 = COERCE_DOUBLE(sub_2205253AC(0, 1, 1, MEMORY[0x277D84F90]));
      v273 = *(*&v226 + 16);
      v272 = *(*&v226 + 24);
      if (v273 >= v272 >> 1)
      {
        v226 = COERCE_DOUBLE(sub_2205253AC(v272 > 1, v273 + 1, 1, *&v226));
      }

      v225 = v666;
      v274 = v630;
      v229 = v631;
      sub_2204F9658(v268, type metadata accessor for ForYouTitleViewLayoutAttributes);
      sub_220515C00(&v689);
      *(*&v226 + 16) = v273 + 1;
      sub_2205230D8(v271, *&v226 + ((*(v274 + 80) + 32) & ~*(v274 + 80)) + *(v274 + 72) * v273, type metadata accessor for ForYouFeedLayoutSectionDescriptor.LegacyHeader);
      v228 = v674;
      a10 = v697;
      a8 = v684;
      a9 = v683;
      a7 = v685;
      v227 = v677;
    }
  }

  v275 = sub_22088C24C();
  v276 = [v275 horizontalSizeClass];

  v277 = v228;
  LODWORD(v697) = v276 == 1;
  v278 = a11;
  if (v276 == 1)
  {
    *&v278 = 0.0;
  }

  v685 = v278;
  sub_220505D40(v225, v229, type metadata accessor for StockViewModel);
  __swift_project_boxed_opaque_existential_1(v227 + 41, *(v227 + 44));
  v279 = sub_2208861AC() & 1;
  v280 = v645;
  sub_22050E1BC(v229, v279, v645);
  __swift_project_boxed_opaque_existential_1(v227 + 7, *(v227 + 10));
  v282 = v626;
  v281 = v627;
  v283 = *(v657 + 16);
  v284 = v627 + *(v626 + 20);
  v657 += 16;
  v684 = *&v283;
  v283(v284, v277, v638);
  *v281 = *&a7;
  v281[1] = a8;
  v281[2] = a9;
  v281[3] = a10;
  v285 = (v281 + *(v282 + 24));
  *v285 = *&v685;
  *(v285 + 8) = LOBYTE(v697);
  *(v281 + *(v282 + 28)) = 0.0;
  v286 = v280;
  v287 = v644;
  sub_22076D3E4(v286, v281, *&v644);
  sub_2204F9658(v281, type metadata accessor for StockTitleViewLayoutOptions);
  sub_2204891EC();
  v289 = *(v288 + 48);
  v290 = v642;
  sub_220505D40(v666, v642, type metadata accessor for StockViewModel);
  sub_220505D40(v287, v290 + v289, type metadata accessor for StockTitleViewLayoutAttributes);
  swift_storeEnumTagMultiPayload();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v226 = COERCE_DOUBLE(sub_2205253AC(0, *(*&v226 + 16) + 1, 1, *&v226));
  }

  v291 = v673;
  v292 = v678;
  v294 = *(*&v226 + 16);
  v293 = *(*&v226 + 24);
  v295 = v668;
  if (v294 >= v293 >> 1)
  {
    v226 = COERCE_DOUBLE(sub_2205253AC(v293 > 1, v294 + 1, 1, *&v226));
  }

  *(*&v226 + 16) = v294 + 1;
  sub_2205230D8(v642, *&v226 + ((*(v630 + 80) + 32) & ~*(v630 + 80)) + *(v630 + 72) * v294, type metadata accessor for ForYouFeedLayoutSectionDescriptor.LegacyHeader);
  v296 = CGRectGetMaxY(*v287);
  v297 = v579;
  sub_2204FA000(v583, v579, &qword_281296C60, MEMORY[0x277D31C50]);
  if ((*(v292 + 48))(v297, 1, v291) == 1)
  {
    sub_2204C5F44(v297, &qword_281296C60, MEMORY[0x277D31C50]);
    v298 = 1;
    v299 = v641;
    v300 = v669;
    v301 = v612;
    v302 = v613;
  }

  else
  {
    v697 = v226;
    v372 = v639;
    (*(v292 + 32))(v639, v297, v291);
    v683 = v296;
    v373 = v664;
    sub_22088F37C();
    v374 = sub_22088F43C();
    (*(*(v374 - 8) + 56))(v295, 1, 1, v374);
    (*(v292 + 16))(v667, v372, v291);
    v375 = v662;
    sub_22088FB3C();
    v376 = sub_22088FB4C();
    (*(*(v376 - 8) + 56))(v375, 0, 1, v376);
    v377 = sub_22088F86C();
    v378 = v661;
    (*(*(v377 - 8) + 56))(v661, 1, 1, v377);
    v575 = sub_22044E364(qword_2812884A0, type metadata accessor for ForYouFeedSectionDescriptor);
    v576 = sub_22044E364(&qword_281293318, type metadata accessor for ForYouFeedModel);
    v574 = v578;
    v572 = v378;
    v573 = MEMORY[0x277D84F90];
    *&v685 = COERCE_DOUBLE(sub_22088B36C());
    sub_2204C5F44(v378, &qword_281296B10, MEMORY[0x277D32218]);
    sub_2204C5F44(v375, &unk_281296A50, MEMORY[0x277D325F8]);
    sub_2204C5F44(v295, &qword_281296C38, MEMORY[0x277D31DD0]);
    v379 = *(v665 + 8);
    v380 = v646;
    v379(v373, v646);
    sub_2204F0A94(0, &qword_28127DFC0, MEMORY[0x277D333A8], MEMORY[0x277D84560]);
    sub_22089026C();
    *(swift_allocObject() + 16) = xmmword_220899360;
    sub_2208904EC();
    sub_22089025C();
    sub_22088F37C();
    v381 = sub_220890AFC();

    v379(v373, v380);
    v382 = sub_22089097C();
    *&v691 = MEMORY[0x277D33EB8];
    *(&v690 + 1) = v382;
    *&v689 = v381;
    v383 = sub_220886D8C();
    v384 = *(*(v383 - 8) + 56);
    v384(v647, 1, 1, v383);
    v384(v648, 1, 1, v383);
    v384(v649, 1, 1, v383);
    v384(v650, 1, 1, v383);

    v385 = v603;
    sub_220886D6C();
    v299 = v641;
    v386 = v680;
    sub_22088F5CC();
    v680 = v386;
    if (v386)
    {

      (*(v651 + 8))(v385, v652);
      (*(v678 + 8))(v639, v673);
      sub_2204F9658(v644, type metadata accessor for StockTitleViewLayoutAttributes);
      sub_2204F9658(v645, type metadata accessor for StockTitleViewModel);
      sub_2204F9658(v666, type metadata accessor for StockViewModel);
      (*(v659 + 8))(v658, v660);
      sub_220504D6C(&v689);
LABEL_92:

      return sub_2204C5F44(v583, &qword_281296C60, MEMORY[0x277D31C50]);
    }

    (*(v651 + 8))(v385, v652);
    (*(v678 + 8))(v639, v673);
    sub_220504D6C(&v689);
    v298 = 0;
    v300 = v669;
    v301 = v612;
    v302 = v613;
    v226 = v697;
  }

  v529 = v663;
  (*(v663 + 56))(v299, v298, 1, v300);
  v530 = v299;
  v531 = v611;
  sub_2204FA000(v530, v611, &qword_281296BC0, MEMORY[0x277D31F38]);
  v532 = *(v529 + 48);
  v685 = v529 + 48;
  v683 = *&v532;
  v533 = v532(v531, 1, v300);
  v535 = v614;
  v534 = v615;
  if (v533 == 1)
  {
    v536 = v300;
    sub_2204C5F44(v531, &qword_281296BC0, MEMORY[0x277D31F38]);
    v537 = v602;
    v538 = v600;
LABEL_89:
    (*(v659 + 16))(v538, v658, v660);
    sub_2206E2FA4(v538, v537);
    sub_220489428();
    v545 = v620;
    v550 = v620 + *(v549 + 48);
    sub_220505D40(v537, v620, type metadata accessor for StockSectionFooterViewModel);
    __swift_project_boxed_opaque_existential_1((v677 + 96), *(v677 + 120));
    v551 = v601;
    (*&v684)(v601, v674, v638);
    sub_2207D9CB0(v551, v694);
    sub_2204F72CC(*&v537, COERCE_DOUBLE(v694), v695);
    sub_2204F900C(v694);
    sub_2204F9658(v537, type metadata accessor for StockSectionFooterViewModel);
    *(v550 + 160) = v696;
    v552 = v695[9];
    *(v550 + 128) = v695[8];
    *(v550 + 144) = v552;
    v553 = v695[5];
    *(v550 + 64) = v695[4];
    *(v550 + 80) = v553;
    v554 = v695[7];
    *(v550 + 96) = v695[6];
    *(v550 + 112) = v554;
    v555 = v695[1];
    *v550 = v695[0];
    *(v550 + 16) = v555;
    v556 = v695[3];
    *(v550 + 32) = v695[2];
    *(v550 + 48) = v556;
    goto LABEL_90;
  }

  v697 = v226;
  (*(v302 + 104))(v301, *MEMORY[0x277D6E750], v614);
  v539 = v302;
  v540 = v535;
  v541 = v529;
  v542 = sub_22088F57C();
  (*(v539 + 8))(v301, v540);
  v536 = v300;
  (*(v541 + 8))(v531, v300);
  if (!*(v542 + 16))
  {

    v537 = v602;
    v538 = v600;
    v226 = v697;
    goto LABEL_89;
  }

  v543 = v589;
  v544 = v590;
  (*(v590 + 16))(v589, v542 + ((*(v544 + 80) + 32) & ~*(v544 + 80)), v534);

  v545 = v620;
  (*(v544 + 32))(v620, v543, v534);
  v226 = v697;
LABEL_90:
  swift_storeEnumTagMultiPayload();
  v557 = v641;
  v558 = v680;
  *&v559 = COERCE_DOUBLE(sub_2204F971C(v641, v676, v679));
  v680 = v558;
  v560 = v653;
  if (v558)
  {
    sub_2204F9658(v545, type metadata accessor for ForYouFeedLayoutSectionDescriptor.StockSectionFooter);
    sub_2204F9658(v644, type metadata accessor for StockTitleViewLayoutAttributes);
    sub_2204F9658(v645, type metadata accessor for StockTitleViewModel);
    sub_2204F9658(v666, type metadata accessor for StockViewModel);
    (*(v659 + 8))(v658, v660);
    sub_2204C5F44(v557, &qword_281296BC0, MEMORY[0x277D31F38]);
    goto LABEL_92;
  }

  v697 = *&v559;
  sub_2205056A8(v583, v557, v619);
  if ((*&v683)(v557, 1, v536) == 1)
  {
    v561 = MEMORY[0x277D6E9B0];
    v562 = v671;
    v563 = v594;
  }

  else
  {
    v564 = *MEMORY[0x277D6E980];
    v565 = sub_22088DA3C();
    v563 = v594;
    (*(*(v565 - 8) + 104))(v594, v564, v565);
    v561 = MEMORY[0x277D6E988];
    v562 = v671;
  }

  v566 = v670;
  (*(v670 + 104))(v563, *v561, v562);
  sub_22048934C();
  v568 = *(v567 + 48);
  v569 = *(v567 + 64);
  *&v685 = COERCE_DOUBLE(sub_220488B20);
  sub_2204FA000(v619, v560, &qword_281283718, sub_220488B20);
  *(v560 + v568) = v226;
  v570 = v620;
  sub_220505D40(v620, v560 + v569, type metadata accessor for ForYouFeedLayoutSectionDescriptor.StockSectionFooter);
  swift_storeEnumTagMultiPayload();
  (*(v566 + 16))(v640, v563, v562);
  sub_22044E364(&unk_2812835A0, type metadata accessor for ForYouFeedLayoutSectionDescriptor);
  sub_22044E364(&qword_28128DE00, type metadata accessor for ForYouFeedLayoutModel);
  sub_22088C35C();
  (*(v566 + 8))(v563, v562);
  sub_2204C5F44(v619, &qword_281283718, v685);
  sub_2204F9658(v570, type metadata accessor for ForYouFeedLayoutSectionDescriptor.StockSectionFooter);
  sub_2204F9658(v644, type metadata accessor for StockTitleViewLayoutAttributes);
  sub_2204F9658(v645, type metadata accessor for StockTitleViewModel);
  sub_2204F9658(v666, type metadata accessor for StockViewModel);
  (*(v659 + 8))(v658, v660);
  sub_2204C5F44(v641, &qword_281296BC0, MEMORY[0x277D31F38]);
  sub_2204C5F44(v583, &qword_281296C60, MEMORY[0x277D31C50]);
  sub_22050605C();
  return (*(*(v571 - 8) + 56))(v672, 0, 1, v571);
}