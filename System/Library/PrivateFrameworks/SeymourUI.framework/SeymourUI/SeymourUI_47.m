void sub_20BA52234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t (*)(), uint64_t, uint64_t, uint64_t), void (*a8)(char *, uint64_t, uint64_t), unsigned __int8 a9, void (*a10)(uint64_t), void (*a11)(uint64_t))
{
  v180 = a6;
  v181 = a8;
  v178 = a4;
  v179 = a5;
  v177 = a3;
  v184 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v165 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v163 = &v137 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v164 = &v137 - v15;
  v162 = v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v137 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v20 - 8);
  v170 = &v137 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v161 = &v137 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = v24;
  MEMORY[0x28223BE20](v25);
  v171 = &v137 - v26;
  v168 = sub_20C1391C4();
  v167 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v169 = &v137 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_20C138A64();
  v172 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v173 = &v137 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  MEMORY[0x28223BE20](v30 - 8);
  v166 = &v137 - v31;
  v32 = sub_20C137C24();
  v175 = *(v32 - 8);
  v176 = v32;
  MEMORY[0x28223BE20](v32);
  v174 = v33;
  v182 = &v137 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_20C13C554();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = (&v137 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v183 = Strong;
    sub_20B51C88C(0, &qword_281100530);
    *v37 = sub_20C13D374();
    (*(v35 + 104))(v37, *MEMORY[0x277D85200], v34);
    v39 = sub_20C13C584();
    (*(v35 + 8))(v37, v34);
    if (v39)
    {
      v40 = v183;
      v41 = &v183[OBJC_IVAR____TtC9SeymourUI25MarketingHeaderBannerCell_artworkView];
      [*&v183[OBJC_IVAR____TtC9SeymourUI25MarketingHeaderBannerCell_artworkView] setContentMode_];
      v42 = *v41;
      v43 = *(v41 + 1);
      LODWORD(v159) = a9;
      v44 = v184;
      if (sub_20BA640CC(v184, v42, v43, a9 & 1))
      {
        v144 = v23;
        v141 = v28;
        v145 = v22;
        v138 = v19;
        v139 = v12;
        v157 = a11;
        v158 = a10;
        v151 = *v41;
        v149 = *(v41 + 1);
        ObjectType = swift_getObjectType();
        v147 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v45 = v175;
        v46 = *(v175 + 16);
        v154 = a9 & 1;
        v148 = a7;
        v152 = v41;
        v47 = v182;
        v48 = v176;
        v155 = v175 + 16;
        v153 = v46;
        v46(v182, v44, v176);
        v49 = *(v45 + 80);
        v50 = (v49 + 24) & ~v49;
        v140 = v174 + 7;
        v51 = (v174 + 7 + v50) & 0xFFFFFFFFFFFFFFF8;
        v52 = (v51 + 23) & 0xFFFFFFFFFFFFFFF8;
        v53 = (v52 + 23) & 0xFFFFFFFFFFFFFFF8;
        v146 = (v53 + 15) & 0xFFFFFFFFFFFFFFF8;
        v156 = v49;
        v54 = swift_allocObject();
        *(v54 + 16) = v147;
        v143 = *(v45 + 32);
        v142 = v45 + 32;
        v143(v54 + v50, v47, v48);
        v55 = (v54 + v51);
        v56 = v178;
        *v55 = v177;
        v55[1] = v56;
        v57 = (v54 + v52);
        v58 = v180;
        *v57 = v179;
        v57[1] = v58;
        *(v54 + v53) = v148;
        v59 = v54 + v146;
        *v59 = v181;
        *(v59 + 8) = v154;
        v60 = (v54 + ((v53 + 31) & 0xFFFFFFFFFFFFFFF8));
        v61 = v158;
        v62 = v157;
        *v60 = v158;
        v60[1] = v62;
        v63 = v149;
        v148 = *(v149 + 152);

        sub_20B584050(v61);
        v148(sub_20BA66710, v54, ObjectType, v63);

        if (v159)
        {
          v64 = [objc_opt_self() mainScreen];
          [v64 scale];
          v66 = v65;

          v67 = sub_20C137BF4() / v66;
          v68 = sub_20C137C04() / v66;
          v69 = v152;
        }

        else
        {
          v69 = v152;
          [*v152 bounds];
          v67 = v70;
          v68 = v71;
        }

        v72 = v182;
        v73 = v153;
        if (v67 <= 0.0 || v68 <= 0.0)
        {
        }

        else
        {
          v159 = ~v156;
          v74 = v69[1];
          v75 = swift_getObjectType();
          v74[15](0, v75, v74);
          v76 = v69[1];
          v77 = swift_getObjectType();
          v78 = v166;
          v79 = v176;
          v73(v166, v184, v176);
          (*(v175 + 56))(v78, 0, 1, v79);
          v76[2](v78, v77, v76);
          v80 = *v69;
          sub_20B51C88C(0, &qword_27C762070);
          sub_20C137BC4();
          v81 = sub_20C13D5A4();
          [v80 setBackgroundColor_];

          v82 = v69[1];
          v83 = swift_getObjectType();
          v82[22](COERCE_DOUBLE(*&v67), COERCE_DOUBLE(*&v68), 0, v83, v82);
          v84 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v73(v72, v184, v79);
          v85 = (v156 + 16) & v159;
          v86 = v73;
          v87 = (v140 + v85) & 0xFFFFFFFFFFFFFFF8;
          v88 = (v87 + 15) & 0xFFFFFFFFFFFFFFF8;
          v89 = swift_allocObject();
          v143(v89 + v85, v72, v79);
          *(v89 + v87) = v84;
          v90 = (v89 + v88);
          v91 = v184;
          *v90 = v67;
          v90[1] = v68;
          v175 = v89;
          v92 = (v89 + ((v88 + 23) & 0xFFFFFFFFFFFFFFF8));
          v93 = v79;
          v94 = v158;
          v95 = v157;
          *v92 = v158;
          v92[1] = v95;
          v86(v72, v91, v79);
          (*(v167 + 104))(v169, *MEMORY[0x277D542A8], v168);

          sub_20B584050(v94);
          v96 = v173;
          v97 = v144;
          v98 = v183;
          sub_20C138A54();
          v99 = v170;
          sub_20B5F1CD0(v96, v170);
          v100 = v145;
          if ((*(v97 + 48))(v99, 1, v145) == 1)
          {
            sub_20B520158(v99, &unk_27C766670);
            v101 = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI25MarketingHeaderBannerCell_artworkView);
            if (v158)
            {
              v158(v101);
            }

            else
            {
            }

            (*(v172 + 8))(v96, v141);
          }

          else
          {
            v102 = v93;
            v181 = *(v97 + 32);
            v103 = v171;
            v181(v171, v99, v100);
            v104 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v153(v72, v91, v102);
            v105 = (v156 + 40) & v159;
            v106 = v105 + v174;
            v107 = (v105 + v174) & 0xFFFFFFFFFFFFFFF8;
            v108 = swift_allocObject();
            *(v108 + 16) = v104;
            *(v108 + 24) = v67;
            *(v108 + 32) = v68;
            v143(v108 + v105, v72, v102);
            *(v108 + v106) = v154;
            v109 = v108 + v107;
            v110 = v158;
            v111 = v157;
            *(v109 + 8) = v158;
            *(v109 + 16) = v111;
            v112 = swift_allocObject();
            *(v112 + 16) = sub_20BA6675C;
            *(v112 + 24) = v108;
            v113 = v144;
            v114 = v161;
            v115 = v103;
            v116 = v145;
            (*(v144 + 16))(v161, v115, v145);
            v117 = v113;
            v118 = (*(v113 + 80) + 16) & ~*(v113 + 80);
            v119 = (v160 + v118 + 7) & 0xFFFFFFFFFFFFFFF8;
            v120 = swift_allocObject();
            v181((v120 + v118), v114, v116);
            v121 = (v120 + v119);
            *v121 = sub_20B5F7760;
            v121[1] = v112;
            sub_20B584050(v110);
            v122 = v164;
            sub_20C137C94();
            v123 = swift_allocObject();
            v124 = v175;
            *(v123 + 16) = sub_20BA66728;
            *(v123 + 24) = v124;
            v125 = swift_allocObject();
            *(v125 + 16) = sub_20BA66C80;
            *(v125 + 24) = v123;
            v126 = v165;
            v127 = v163;
            v128 = v139;
            (*(v165 + 16))(v163, v122, v139);
            v129 = (*(v126 + 80) + 16) & ~*(v126 + 80);
            v130 = (v162 + v129 + 7) & 0xFFFFFFFFFFFFFFF8;
            v131 = swift_allocObject();
            (*(v126 + 32))(v131 + v129, v127, v128);
            v132 = (v131 + v130);
            *v132 = sub_20B5F7764;
            v132[1] = v125;

            v133 = v138;
            sub_20C137C94();
            v134 = *(v126 + 8);
            v134(v122, v128);
            v135 = sub_20C137CB4();
            v136 = swift_allocObject();
            *(v136 + 16) = 0;
            *(v136 + 24) = 0;
            v135(sub_20B5DF6DC, v136);

            v134(v133, v128);
            (*(v117 + 8))(v171, v145);
            (*(v172 + 8))(v173, v141);
          }
        }
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

void sub_20BA532BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t (*)(), uint64_t, uint64_t, uint64_t), void (*a8)(char *, uint64_t, uint64_t), unsigned __int8 a9, void (*a10)(uint64_t), void (*a11)(uint64_t))
{
  v180 = a6;
  v181 = a8;
  v178 = a4;
  v179 = a5;
  v177 = a3;
  v184 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v165 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v163 = &v137 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v164 = &v137 - v15;
  v162 = v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v137 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v20 - 8);
  v170 = &v137 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v161 = &v137 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = v24;
  MEMORY[0x28223BE20](v25);
  v171 = &v137 - v26;
  v168 = sub_20C1391C4();
  v167 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v169 = &v137 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_20C138A64();
  v172 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v173 = &v137 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  MEMORY[0x28223BE20](v30 - 8);
  v166 = &v137 - v31;
  v32 = sub_20C137C24();
  v175 = *(v32 - 8);
  v176 = v32;
  MEMORY[0x28223BE20](v32);
  v174 = v33;
  v182 = &v137 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_20C13C554();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = (&v137 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v183 = Strong;
    sub_20B51C88C(0, &qword_281100530);
    *v37 = sub_20C13D374();
    (*(v35 + 104))(v37, *MEMORY[0x277D85200], v34);
    v39 = sub_20C13C584();
    (*(v35 + 8))(v37, v34);
    if (v39)
    {
      v40 = v183;
      v41 = &v183[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_artworkView];
      [*&v183[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_artworkView] setContentMode_];
      v42 = *v41;
      v43 = *(v41 + 1);
      LODWORD(v159) = a9;
      v44 = v184;
      if (sub_20BA640CC(v184, v42, v43, a9 & 1))
      {
        v144 = v23;
        v141 = v28;
        v145 = v22;
        v138 = v19;
        v139 = v12;
        v157 = a11;
        v158 = a10;
        v151 = *v41;
        v149 = *(v41 + 1);
        ObjectType = swift_getObjectType();
        v147 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v45 = v175;
        v46 = *(v175 + 16);
        v154 = a9 & 1;
        v148 = a7;
        v152 = v41;
        v47 = v182;
        v48 = v176;
        v155 = v175 + 16;
        v153 = v46;
        v46(v182, v44, v176);
        v49 = *(v45 + 80);
        v50 = (v49 + 24) & ~v49;
        v140 = v174 + 7;
        v51 = (v174 + 7 + v50) & 0xFFFFFFFFFFFFFFF8;
        v52 = (v51 + 23) & 0xFFFFFFFFFFFFFFF8;
        v53 = (v52 + 23) & 0xFFFFFFFFFFFFFFF8;
        v146 = (v53 + 15) & 0xFFFFFFFFFFFFFFF8;
        v156 = v49;
        v54 = swift_allocObject();
        *(v54 + 16) = v147;
        v143 = *(v45 + 32);
        v142 = v45 + 32;
        v143(v54 + v50, v47, v48);
        v55 = (v54 + v51);
        v56 = v178;
        *v55 = v177;
        v55[1] = v56;
        v57 = (v54 + v52);
        v58 = v180;
        *v57 = v179;
        v57[1] = v58;
        *(v54 + v53) = v148;
        v59 = v54 + v146;
        *v59 = v181;
        *(v59 + 8) = v154;
        v60 = (v54 + ((v53 + 31) & 0xFFFFFFFFFFFFFFF8));
        v61 = v158;
        v62 = v157;
        *v60 = v158;
        v60[1] = v62;
        v63 = v149;
        v148 = *(v149 + 152);

        sub_20B584050(v61);
        v148(sub_20BA65668, v54, ObjectType, v63);

        if (v159)
        {
          v64 = [objc_opt_self() mainScreen];
          [v64 scale];
          v66 = v65;

          v67 = sub_20C137BF4() / v66;
          v68 = sub_20C137C04() / v66;
          v69 = v152;
        }

        else
        {
          v69 = v152;
          [*v152 bounds];
          v67 = v70;
          v68 = v71;
        }

        v72 = v182;
        v73 = v153;
        if (v67 <= 0.0 || v68 <= 0.0)
        {
        }

        else
        {
          v159 = ~v156;
          v74 = v69[1];
          v75 = swift_getObjectType();
          v74[15](0, v75, v74);
          v76 = v69[1];
          v77 = swift_getObjectType();
          v78 = v166;
          v79 = v176;
          v73(v166, v184, v176);
          (*(v175 + 56))(v78, 0, 1, v79);
          v76[2](v78, v77, v76);
          v80 = *v69;
          sub_20B51C88C(0, &qword_27C762070);
          sub_20C137BC4();
          v81 = sub_20C13D5A4();
          [v80 setBackgroundColor_];

          v82 = v69[1];
          v83 = swift_getObjectType();
          v82[22](COERCE_DOUBLE(*&v67), COERCE_DOUBLE(*&v68), 0, v83, v82);
          v84 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v73(v72, v184, v79);
          v85 = (v156 + 16) & v159;
          v86 = v73;
          v87 = (v140 + v85) & 0xFFFFFFFFFFFFFFF8;
          v88 = (v87 + 15) & 0xFFFFFFFFFFFFFFF8;
          v89 = swift_allocObject();
          v143(v89 + v85, v72, v79);
          *(v89 + v87) = v84;
          v90 = (v89 + v88);
          v91 = v184;
          *v90 = v67;
          v90[1] = v68;
          v175 = v89;
          v92 = (v89 + ((v88 + 23) & 0xFFFFFFFFFFFFFFF8));
          v93 = v79;
          v94 = v158;
          v95 = v157;
          *v92 = v158;
          v92[1] = v95;
          v86(v72, v91, v79);
          (*(v167 + 104))(v169, *MEMORY[0x277D542A8], v168);

          sub_20B584050(v94);
          v96 = v173;
          v97 = v144;
          v98 = v183;
          sub_20C138A54();
          v99 = v170;
          sub_20B5F1CF8(v96, v170);
          v100 = v145;
          if ((*(v97 + 48))(v99, 1, v145) == 1)
          {
            sub_20B520158(v99, &unk_27C766670);
            v101 = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_artworkView);
            if (v158)
            {
              v158(v101);
            }

            else
            {
            }

            (*(v172 + 8))(v96, v141);
          }

          else
          {
            v102 = v93;
            v181 = *(v97 + 32);
            v103 = v171;
            v181(v171, v99, v100);
            v104 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v153(v72, v91, v102);
            v105 = (v156 + 40) & v159;
            v106 = v105 + v174;
            v107 = (v105 + v174) & 0xFFFFFFFFFFFFFFF8;
            v108 = swift_allocObject();
            *(v108 + 16) = v104;
            *(v108 + 24) = v67;
            *(v108 + 32) = v68;
            v143(v108 + v105, v72, v102);
            *(v108 + v106) = v154;
            v109 = v108 + v107;
            v110 = v158;
            v111 = v157;
            *(v109 + 8) = v158;
            *(v109 + 16) = v111;
            v112 = swift_allocObject();
            *(v112 + 16) = sub_20BA656B4;
            *(v112 + 24) = v108;
            v113 = v144;
            v114 = v161;
            v115 = v103;
            v116 = v145;
            (*(v144 + 16))(v161, v115, v145);
            v117 = v113;
            v118 = (*(v113 + 80) + 16) & ~*(v113 + 80);
            v119 = (v160 + v118 + 7) & 0xFFFFFFFFFFFFFFF8;
            v120 = swift_allocObject();
            v181((v120 + v118), v114, v116);
            v121 = (v120 + v119);
            *v121 = sub_20B5F7760;
            v121[1] = v112;
            sub_20B584050(v110);
            v122 = v164;
            sub_20C137C94();
            v123 = swift_allocObject();
            v124 = v175;
            *(v123 + 16) = sub_20BA65680;
            *(v123 + 24) = v124;
            v125 = swift_allocObject();
            *(v125 + 16) = sub_20BA66C80;
            *(v125 + 24) = v123;
            v126 = v165;
            v127 = v163;
            v128 = v139;
            (*(v165 + 16))(v163, v122, v139);
            v129 = (*(v126 + 80) + 16) & ~*(v126 + 80);
            v130 = (v162 + v129 + 7) & 0xFFFFFFFFFFFFFFF8;
            v131 = swift_allocObject();
            (*(v126 + 32))(v131 + v129, v127, v128);
            v132 = (v131 + v130);
            *v132 = sub_20B5F7764;
            v132[1] = v125;

            v133 = v138;
            sub_20C137C94();
            v134 = *(v126 + 8);
            v134(v122, v128);
            v135 = sub_20C137CB4();
            v136 = swift_allocObject();
            *(v136 + 16) = 0;
            *(v136 + 24) = 0;
            v135(sub_20B5DF6DC, v136);

            v134(v133, v128);
            (*(v117 + 8))(v171, v145);
            (*(v172 + 8))(v173, v141);
          }
        }
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

void sub_20BA54344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t (*)(), uint64_t, uint64_t, uint64_t), void (*a8)(char *, uint64_t, uint64_t), unsigned __int8 a9, void (*a10)(uint64_t), void (*a11)(uint64_t))
{
  v180 = a6;
  v181 = a8;
  v178 = a4;
  v179 = a5;
  v177 = a3;
  v184 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v165 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v163 = &v137 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v164 = &v137 - v15;
  v162 = v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v137 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v20 - 8);
  v170 = &v137 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v161 = &v137 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = v24;
  MEMORY[0x28223BE20](v25);
  v171 = &v137 - v26;
  v168 = sub_20C1391C4();
  v167 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v169 = &v137 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_20C138A64();
  v172 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v173 = &v137 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  MEMORY[0x28223BE20](v30 - 8);
  v166 = &v137 - v31;
  v32 = sub_20C137C24();
  v175 = *(v32 - 8);
  v176 = v32;
  MEMORY[0x28223BE20](v32);
  v174 = v33;
  v182 = &v137 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_20C13C554();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = (&v137 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v183 = Strong;
    sub_20B51C88C(0, &qword_281100530);
    *v37 = sub_20C13D374();
    (*(v35 + 104))(v37, *MEMORY[0x277D85200], v34);
    v39 = sub_20C13C584();
    (*(v35 + 8))(v37, v34);
    if (v39)
    {
      v40 = v183;
      v41 = &v183[OBJC_IVAR____TtC9SeymourUI25PhoneStandardBrickRowCell_artworkView];
      [*&v183[OBJC_IVAR____TtC9SeymourUI25PhoneStandardBrickRowCell_artworkView] setContentMode_];
      v42 = *v41;
      v43 = *(v41 + 1);
      LODWORD(v159) = a9;
      v44 = v184;
      if (sub_20BA640CC(v184, v42, v43, a9 & 1))
      {
        v144 = v23;
        v141 = v28;
        v145 = v22;
        v138 = v19;
        v139 = v12;
        v157 = a11;
        v158 = a10;
        v151 = *v41;
        v149 = *(v41 + 1);
        ObjectType = swift_getObjectType();
        v147 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v45 = v175;
        v46 = *(v175 + 16);
        v154 = a9 & 1;
        v148 = a7;
        v152 = v41;
        v47 = v182;
        v48 = v176;
        v155 = v175 + 16;
        v153 = v46;
        v46(v182, v44, v176);
        v49 = *(v45 + 80);
        v50 = (v49 + 24) & ~v49;
        v140 = v174 + 7;
        v51 = (v174 + 7 + v50) & 0xFFFFFFFFFFFFFFF8;
        v52 = (v51 + 23) & 0xFFFFFFFFFFFFFFF8;
        v53 = (v52 + 23) & 0xFFFFFFFFFFFFFFF8;
        v146 = (v53 + 15) & 0xFFFFFFFFFFFFFFF8;
        v156 = v49;
        v54 = swift_allocObject();
        *(v54 + 16) = v147;
        v143 = *(v45 + 32);
        v142 = v45 + 32;
        v143(v54 + v50, v47, v48);
        v55 = (v54 + v51);
        v56 = v178;
        *v55 = v177;
        v55[1] = v56;
        v57 = (v54 + v52);
        v58 = v180;
        *v57 = v179;
        v57[1] = v58;
        *(v54 + v53) = v148;
        v59 = v54 + v146;
        *v59 = v181;
        *(v59 + 8) = v154;
        v60 = (v54 + ((v53 + 31) & 0xFFFFFFFFFFFFFFF8));
        v61 = v158;
        v62 = v157;
        *v60 = v158;
        v60[1] = v62;
        v63 = v149;
        v148 = *(v149 + 152);

        sub_20B584050(v61);
        v148(sub_20BA650A4, v54, ObjectType, v63);

        if (v159)
        {
          v64 = [objc_opt_self() mainScreen];
          [v64 scale];
          v66 = v65;

          v67 = sub_20C137BF4() / v66;
          v68 = sub_20C137C04() / v66;
          v69 = v152;
        }

        else
        {
          v69 = v152;
          [*v152 bounds];
          v67 = v70;
          v68 = v71;
        }

        v72 = v182;
        v73 = v153;
        if (v67 <= 0.0 || v68 <= 0.0)
        {
        }

        else
        {
          v159 = ~v156;
          v74 = v69[1];
          v75 = swift_getObjectType();
          v74[15](0, v75, v74);
          v76 = v69[1];
          v77 = swift_getObjectType();
          v78 = v166;
          v79 = v176;
          v73(v166, v184, v176);
          (*(v175 + 56))(v78, 0, 1, v79);
          v76[2](v78, v77, v76);
          v80 = *v69;
          sub_20B51C88C(0, &qword_27C762070);
          sub_20C137BC4();
          v81 = sub_20C13D5A4();
          [v80 setBackgroundColor_];

          v82 = v69[1];
          v83 = swift_getObjectType();
          v82[22](COERCE_DOUBLE(*&v67), COERCE_DOUBLE(*&v68), 0, v83, v82);
          v84 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v73(v72, v184, v79);
          v85 = (v156 + 16) & v159;
          v86 = v73;
          v87 = (v140 + v85) & 0xFFFFFFFFFFFFFFF8;
          v88 = (v87 + 15) & 0xFFFFFFFFFFFFFFF8;
          v89 = swift_allocObject();
          v143(v89 + v85, v72, v79);
          *(v89 + v87) = v84;
          v90 = (v89 + v88);
          v91 = v184;
          *v90 = v67;
          v90[1] = v68;
          v175 = v89;
          v92 = (v89 + ((v88 + 23) & 0xFFFFFFFFFFFFFFF8));
          v93 = v79;
          v94 = v158;
          v95 = v157;
          *v92 = v158;
          v92[1] = v95;
          v86(v72, v91, v79);
          (*(v167 + 104))(v169, *MEMORY[0x277D542A8], v168);

          sub_20B584050(v94);
          v96 = v173;
          v97 = v144;
          v98 = v183;
          sub_20C138A54();
          v99 = v170;
          sub_20B5F1D20(v96, v170);
          v100 = v145;
          if ((*(v97 + 48))(v99, 1, v145) == 1)
          {
            sub_20B520158(v99, &unk_27C766670);
            v101 = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI25PhoneStandardBrickRowCell_artworkView);
            if (v158)
            {
              v158(v101);
            }

            else
            {
            }

            (*(v172 + 8))(v96, v141);
          }

          else
          {
            v102 = v93;
            v181 = *(v97 + 32);
            v103 = v171;
            v181(v171, v99, v100);
            v104 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v153(v72, v91, v102);
            v105 = (v156 + 40) & v159;
            v106 = v105 + v174;
            v107 = (v105 + v174) & 0xFFFFFFFFFFFFFFF8;
            v108 = swift_allocObject();
            *(v108 + 16) = v104;
            *(v108 + 24) = v67;
            *(v108 + 32) = v68;
            v143(v108 + v105, v72, v102);
            *(v108 + v106) = v154;
            v109 = v108 + v107;
            v110 = v158;
            v111 = v157;
            *(v109 + 8) = v158;
            *(v109 + 16) = v111;
            v112 = swift_allocObject();
            *(v112 + 16) = sub_20BA650F0;
            *(v112 + 24) = v108;
            v113 = v144;
            v114 = v161;
            v115 = v103;
            v116 = v145;
            (*(v144 + 16))(v161, v115, v145);
            v117 = v113;
            v118 = (*(v113 + 80) + 16) & ~*(v113 + 80);
            v119 = (v160 + v118 + 7) & 0xFFFFFFFFFFFFFFF8;
            v120 = swift_allocObject();
            v181((v120 + v118), v114, v116);
            v121 = (v120 + v119);
            *v121 = sub_20B5F7760;
            v121[1] = v112;
            sub_20B584050(v110);
            v122 = v164;
            sub_20C137C94();
            v123 = swift_allocObject();
            v124 = v175;
            *(v123 + 16) = sub_20BA650BC;
            *(v123 + 24) = v124;
            v125 = swift_allocObject();
            *(v125 + 16) = sub_20BA66C80;
            *(v125 + 24) = v123;
            v126 = v165;
            v127 = v163;
            v128 = v139;
            (*(v165 + 16))(v163, v122, v139);
            v129 = (*(v126 + 80) + 16) & ~*(v126 + 80);
            v130 = (v162 + v129 + 7) & 0xFFFFFFFFFFFFFFF8;
            v131 = swift_allocObject();
            (*(v126 + 32))(v131 + v129, v127, v128);
            v132 = (v131 + v130);
            *v132 = sub_20B5F7764;
            v132[1] = v125;

            v133 = v138;
            sub_20C137C94();
            v134 = *(v126 + 8);
            v134(v122, v128);
            v135 = sub_20C137CB4();
            v136 = swift_allocObject();
            *(v136 + 16) = 0;
            *(v136 + 24) = 0;
            v135(sub_20B5DF6DC, v136);

            v134(v133, v128);
            (*(v117 + 8))(v171, v145);
            (*(v172 + 8))(v173, v141);
          }
        }
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

void sub_20BA553CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t (*)(), uint64_t, uint64_t, uint64_t), void (*a8)(char *, uint64_t, uint64_t), unsigned __int8 a9, void (*a10)(uint64_t), void (*a11)(uint64_t))
{
  v180 = a6;
  v181 = a8;
  v178 = a4;
  v179 = a5;
  v177 = a3;
  v184 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v165 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v163 = &v137 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v164 = &v137 - v15;
  v162 = v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v137 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v20 - 8);
  v170 = &v137 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v161 = &v137 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = v24;
  MEMORY[0x28223BE20](v25);
  v171 = &v137 - v26;
  v168 = sub_20C1391C4();
  v167 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v169 = &v137 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_20C138A64();
  v172 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v173 = &v137 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  MEMORY[0x28223BE20](v30 - 8);
  v166 = &v137 - v31;
  v32 = sub_20C137C24();
  v175 = *(v32 - 8);
  v176 = v32;
  MEMORY[0x28223BE20](v32);
  v174 = v33;
  v182 = &v137 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_20C13C554();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = (&v137 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v183 = Strong;
    sub_20B51C88C(0, &qword_281100530);
    *v37 = sub_20C13D374();
    (*(v35 + 104))(v37, *MEMORY[0x277D85200], v34);
    v39 = sub_20C13C584();
    (*(v35 + 8))(v37, v34);
    if (v39)
    {
      v40 = v183;
      v41 = &v183[OBJC_IVAR____TtC9SeymourUI26GuidedWorkoutBrickItemCell_artworkView];
      [*&v183[OBJC_IVAR____TtC9SeymourUI26GuidedWorkoutBrickItemCell_artworkView] setContentMode_];
      v42 = *v41;
      v43 = *(v41 + 1);
      LODWORD(v159) = a9;
      v44 = v184;
      if (sub_20BA640CC(v184, v42, v43, a9 & 1))
      {
        v144 = v23;
        v141 = v28;
        v145 = v22;
        v138 = v19;
        v139 = v12;
        v157 = a11;
        v158 = a10;
        v151 = *v41;
        v149 = *(v41 + 1);
        ObjectType = swift_getObjectType();
        v147 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v45 = v175;
        v46 = *(v175 + 16);
        v154 = a9 & 1;
        v148 = a7;
        v152 = v41;
        v47 = v182;
        v48 = v176;
        v155 = v175 + 16;
        v153 = v46;
        v46(v182, v44, v176);
        v49 = *(v45 + 80);
        v50 = (v49 + 24) & ~v49;
        v140 = v174 + 7;
        v51 = (v174 + 7 + v50) & 0xFFFFFFFFFFFFFFF8;
        v52 = (v51 + 23) & 0xFFFFFFFFFFFFFFF8;
        v53 = (v52 + 23) & 0xFFFFFFFFFFFFFFF8;
        v146 = (v53 + 15) & 0xFFFFFFFFFFFFFFF8;
        v156 = v49;
        v54 = swift_allocObject();
        *(v54 + 16) = v147;
        v143 = *(v45 + 32);
        v142 = v45 + 32;
        v143(v54 + v50, v47, v48);
        v55 = (v54 + v51);
        v56 = v178;
        *v55 = v177;
        v55[1] = v56;
        v57 = (v54 + v52);
        v58 = v180;
        *v57 = v179;
        v57[1] = v58;
        *(v54 + v53) = v148;
        v59 = v54 + v146;
        *v59 = v181;
        *(v59 + 8) = v154;
        v60 = (v54 + ((v53 + 31) & 0xFFFFFFFFFFFFFFF8));
        v61 = v158;
        v62 = v157;
        *v60 = v158;
        v60[1] = v62;
        v63 = v149;
        v148 = *(v149 + 152);

        sub_20B584050(v61);
        v148(sub_20BA64C28, v54, ObjectType, v63);

        if (v159)
        {
          v64 = [objc_opt_self() mainScreen];
          [v64 scale];
          v66 = v65;

          v67 = sub_20C137BF4() / v66;
          v68 = sub_20C137C04() / v66;
          v69 = v152;
        }

        else
        {
          v69 = v152;
          [*v152 bounds];
          v67 = v70;
          v68 = v71;
        }

        v72 = v182;
        v73 = v153;
        if (v67 <= 0.0 || v68 <= 0.0)
        {
        }

        else
        {
          v159 = ~v156;
          v74 = v69[1];
          v75 = swift_getObjectType();
          v74[15](0, v75, v74);
          v76 = v69[1];
          v77 = swift_getObjectType();
          v78 = v166;
          v79 = v176;
          v73(v166, v184, v176);
          (*(v175 + 56))(v78, 0, 1, v79);
          v76[2](v78, v77, v76);
          v80 = *v69;
          sub_20B51C88C(0, &qword_27C762070);
          sub_20C137BC4();
          v81 = sub_20C13D5A4();
          [v80 setBackgroundColor_];

          v82 = v69[1];
          v83 = swift_getObjectType();
          v82[22](COERCE_DOUBLE(*&v67), COERCE_DOUBLE(*&v68), 0, v83, v82);
          v84 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v73(v72, v184, v79);
          v85 = (v156 + 16) & v159;
          v86 = v73;
          v87 = (v140 + v85) & 0xFFFFFFFFFFFFFFF8;
          v88 = (v87 + 15) & 0xFFFFFFFFFFFFFFF8;
          v89 = swift_allocObject();
          v143(v89 + v85, v72, v79);
          *(v89 + v87) = v84;
          v90 = (v89 + v88);
          v91 = v184;
          *v90 = v67;
          v90[1] = v68;
          v175 = v89;
          v92 = (v89 + ((v88 + 23) & 0xFFFFFFFFFFFFFFF8));
          v93 = v79;
          v94 = v158;
          v95 = v157;
          *v92 = v158;
          v92[1] = v95;
          v86(v72, v91, v79);
          (*(v167 + 104))(v169, *MEMORY[0x277D542A8], v168);

          sub_20B584050(v94);
          v96 = v173;
          v97 = v144;
          v98 = v183;
          sub_20C138A54();
          v99 = v170;
          sub_20B5F1D48(v96, v170);
          v100 = v145;
          if ((*(v97 + 48))(v99, 1, v145) == 1)
          {
            sub_20B520158(v99, &unk_27C766670);
            v101 = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI26GuidedWorkoutBrickItemCell_artworkView);
            if (v158)
            {
              v158(v101);
            }

            else
            {
            }

            (*(v172 + 8))(v96, v141);
          }

          else
          {
            v102 = v93;
            v181 = *(v97 + 32);
            v103 = v171;
            v181(v171, v99, v100);
            v104 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v153(v72, v91, v102);
            v105 = (v156 + 40) & v159;
            v106 = v105 + v174;
            v107 = (v105 + v174) & 0xFFFFFFFFFFFFFFF8;
            v108 = swift_allocObject();
            *(v108 + 16) = v104;
            *(v108 + 24) = v67;
            *(v108 + 32) = v68;
            v143(v108 + v105, v72, v102);
            *(v108 + v106) = v154;
            v109 = v108 + v107;
            v110 = v158;
            v111 = v157;
            *(v109 + 8) = v158;
            *(v109 + 16) = v111;
            v112 = swift_allocObject();
            *(v112 + 16) = sub_20BA64C74;
            *(v112 + 24) = v108;
            v113 = v144;
            v114 = v161;
            v115 = v103;
            v116 = v145;
            (*(v144 + 16))(v161, v115, v145);
            v117 = v113;
            v118 = (*(v113 + 80) + 16) & ~*(v113 + 80);
            v119 = (v160 + v118 + 7) & 0xFFFFFFFFFFFFFFF8;
            v120 = swift_allocObject();
            v181((v120 + v118), v114, v116);
            v121 = (v120 + v119);
            *v121 = sub_20B5F7760;
            v121[1] = v112;
            sub_20B584050(v110);
            v122 = v164;
            sub_20C137C94();
            v123 = swift_allocObject();
            v124 = v175;
            *(v123 + 16) = sub_20BA64C40;
            *(v123 + 24) = v124;
            v125 = swift_allocObject();
            *(v125 + 16) = sub_20BA66C80;
            *(v125 + 24) = v123;
            v126 = v165;
            v127 = v163;
            v128 = v139;
            (*(v165 + 16))(v163, v122, v139);
            v129 = (*(v126 + 80) + 16) & ~*(v126 + 80);
            v130 = (v162 + v129 + 7) & 0xFFFFFFFFFFFFFFF8;
            v131 = swift_allocObject();
            (*(v126 + 32))(v131 + v129, v127, v128);
            v132 = (v131 + v130);
            *v132 = sub_20B5F7764;
            v132[1] = v125;

            v133 = v138;
            sub_20C137C94();
            v134 = *(v126 + 8);
            v134(v122, v128);
            v135 = sub_20C137CB4();
            v136 = swift_allocObject();
            *(v136 + 16) = 0;
            *(v136 + 24) = 0;
            v135(sub_20B5DF6DC, v136);

            v134(v133, v128);
            (*(v117 + 8))(v171, v145);
            (*(v172 + 8))(v173, v141);
          }
        }
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

void sub_20BA56454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t (*)(), uint64_t, uint64_t, uint64_t), void (*a8)(char *, uint64_t, uint64_t), unsigned __int8 a9, void (*a10)(uint64_t), void (*a11)(uint64_t))
{
  v180 = a6;
  v181 = a8;
  v178 = a4;
  v179 = a5;
  v177 = a3;
  v184 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v165 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v163 = &v137 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v164 = &v137 - v15;
  v162 = v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v137 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v20 - 8);
  v170 = &v137 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v161 = &v137 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = v24;
  MEMORY[0x28223BE20](v25);
  v171 = &v137 - v26;
  v168 = sub_20C1391C4();
  v167 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v169 = &v137 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_20C138A64();
  v172 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v173 = &v137 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  MEMORY[0x28223BE20](v30 - 8);
  v166 = &v137 - v31;
  v32 = sub_20C137C24();
  v175 = *(v32 - 8);
  v176 = v32;
  MEMORY[0x28223BE20](v32);
  v174 = v33;
  v182 = &v137 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_20C13C554();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = (&v137 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v183 = Strong;
    sub_20B51C88C(0, &qword_281100530);
    *v37 = sub_20C13D374();
    (*(v35 + 104))(v37, *MEMORY[0x277D85200], v34);
    v39 = sub_20C13C584();
    (*(v35 + 8))(v37, v34);
    if (v39)
    {
      v40 = v183;
      v41 = &v183[OBJC_IVAR____TtC9SeymourUI26TVWorkoutPlanBrickItemCell_artworkView];
      [*&v183[OBJC_IVAR____TtC9SeymourUI26TVWorkoutPlanBrickItemCell_artworkView] setContentMode_];
      v42 = *v41;
      v43 = *(v41 + 1);
      LODWORD(v159) = a9;
      v44 = v184;
      if (sub_20BA640CC(v184, v42, v43, a9 & 1))
      {
        v144 = v23;
        v141 = v28;
        v145 = v22;
        v138 = v19;
        v139 = v12;
        v157 = a11;
        v158 = a10;
        v151 = *v41;
        v149 = *(v41 + 1);
        ObjectType = swift_getObjectType();
        v147 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v45 = v175;
        v46 = *(v175 + 16);
        v154 = a9 & 1;
        v148 = a7;
        v152 = v41;
        v47 = v182;
        v48 = v176;
        v155 = v175 + 16;
        v153 = v46;
        v46(v182, v44, v176);
        v49 = *(v45 + 80);
        v50 = (v49 + 24) & ~v49;
        v140 = v174 + 7;
        v51 = (v174 + 7 + v50) & 0xFFFFFFFFFFFFFFF8;
        v52 = (v51 + 23) & 0xFFFFFFFFFFFFFFF8;
        v53 = (v52 + 23) & 0xFFFFFFFFFFFFFFF8;
        v146 = (v53 + 15) & 0xFFFFFFFFFFFFFFF8;
        v156 = v49;
        v54 = swift_allocObject();
        *(v54 + 16) = v147;
        v143 = *(v45 + 32);
        v142 = v45 + 32;
        v143(v54 + v50, v47, v48);
        v55 = (v54 + v51);
        v56 = v178;
        *v55 = v177;
        v55[1] = v56;
        v57 = (v54 + v52);
        v58 = v180;
        *v57 = v179;
        v57[1] = v58;
        *(v54 + v53) = v148;
        v59 = v54 + v146;
        *v59 = v181;
        *(v59 + 8) = v154;
        v60 = (v54 + ((v53 + 31) & 0xFFFFFFFFFFFFFFF8));
        v61 = v158;
        v62 = v157;
        *v60 = v158;
        v60[1] = v62;
        v63 = v149;
        v148 = *(v149 + 152);

        sub_20B584050(v61);
        v148(sub_20BA65A40, v54, ObjectType, v63);

        if (v159)
        {
          v64 = [objc_opt_self() mainScreen];
          [v64 scale];
          v66 = v65;

          v67 = sub_20C137BF4() / v66;
          v68 = sub_20C137C04() / v66;
          v69 = v152;
        }

        else
        {
          v69 = v152;
          [*v152 bounds];
          v67 = v70;
          v68 = v71;
        }

        v72 = v182;
        v73 = v153;
        if (v67 <= 0.0 || v68 <= 0.0)
        {
        }

        else
        {
          v159 = ~v156;
          v74 = v69[1];
          v75 = swift_getObjectType();
          v74[15](0, v75, v74);
          v76 = v69[1];
          v77 = swift_getObjectType();
          v78 = v166;
          v79 = v176;
          v73(v166, v184, v176);
          (*(v175 + 56))(v78, 0, 1, v79);
          v76[2](v78, v77, v76);
          v80 = *v69;
          sub_20B51C88C(0, &qword_27C762070);
          sub_20C137BC4();
          v81 = sub_20C13D5A4();
          [v80 setBackgroundColor_];

          v82 = v69[1];
          v83 = swift_getObjectType();
          v82[22](COERCE_DOUBLE(*&v67), COERCE_DOUBLE(*&v68), 0, v83, v82);
          v84 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v73(v72, v184, v79);
          v85 = (v156 + 16) & v159;
          v86 = v73;
          v87 = (v140 + v85) & 0xFFFFFFFFFFFFFFF8;
          v88 = (v87 + 15) & 0xFFFFFFFFFFFFFFF8;
          v89 = swift_allocObject();
          v143(v89 + v85, v72, v79);
          *(v89 + v87) = v84;
          v90 = (v89 + v88);
          v91 = v184;
          *v90 = v67;
          v90[1] = v68;
          v175 = v89;
          v92 = (v89 + ((v88 + 23) & 0xFFFFFFFFFFFFFFF8));
          v93 = v79;
          v94 = v158;
          v95 = v157;
          *v92 = v158;
          v92[1] = v95;
          v86(v72, v91, v79);
          (*(v167 + 104))(v169, *MEMORY[0x277D542A8], v168);

          sub_20B584050(v94);
          v96 = v173;
          v97 = v144;
          v98 = v183;
          sub_20C138A54();
          v99 = v170;
          sub_20B5F1D70(v96, v170);
          v100 = v145;
          if ((*(v97 + 48))(v99, 1, v145) == 1)
          {
            sub_20B520158(v99, &unk_27C766670);
            v101 = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI26TVWorkoutPlanBrickItemCell_artworkView);
            if (v158)
            {
              v158(v101);
            }

            else
            {
            }

            (*(v172 + 8))(v96, v141);
          }

          else
          {
            v102 = v93;
            v181 = *(v97 + 32);
            v103 = v171;
            v181(v171, v99, v100);
            v104 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v153(v72, v91, v102);
            v105 = (v156 + 40) & v159;
            v106 = v105 + v174;
            v107 = (v105 + v174) & 0xFFFFFFFFFFFFFFF8;
            v108 = swift_allocObject();
            *(v108 + 16) = v104;
            *(v108 + 24) = v67;
            *(v108 + 32) = v68;
            v143(v108 + v105, v72, v102);
            *(v108 + v106) = v154;
            v109 = v108 + v107;
            v110 = v158;
            v111 = v157;
            *(v109 + 8) = v158;
            *(v109 + 16) = v111;
            v112 = swift_allocObject();
            *(v112 + 16) = sub_20BA65A8C;
            *(v112 + 24) = v108;
            v113 = v144;
            v114 = v161;
            v115 = v103;
            v116 = v145;
            (*(v144 + 16))(v161, v115, v145);
            v117 = v113;
            v118 = (*(v113 + 80) + 16) & ~*(v113 + 80);
            v119 = (v160 + v118 + 7) & 0xFFFFFFFFFFFFFFF8;
            v120 = swift_allocObject();
            v181((v120 + v118), v114, v116);
            v121 = (v120 + v119);
            *v121 = sub_20B5F7760;
            v121[1] = v112;
            sub_20B584050(v110);
            v122 = v164;
            sub_20C137C94();
            v123 = swift_allocObject();
            v124 = v175;
            *(v123 + 16) = sub_20BA65A58;
            *(v123 + 24) = v124;
            v125 = swift_allocObject();
            *(v125 + 16) = sub_20BA66C80;
            *(v125 + 24) = v123;
            v126 = v165;
            v127 = v163;
            v128 = v139;
            (*(v165 + 16))(v163, v122, v139);
            v129 = (*(v126 + 80) + 16) & ~*(v126 + 80);
            v130 = (v162 + v129 + 7) & 0xFFFFFFFFFFFFFFF8;
            v131 = swift_allocObject();
            (*(v126 + 32))(v131 + v129, v127, v128);
            v132 = (v131 + v130);
            *v132 = sub_20B5F7764;
            v132[1] = v125;

            v133 = v138;
            sub_20C137C94();
            v134 = *(v126 + 8);
            v134(v122, v128);
            v135 = sub_20C137CB4();
            v136 = swift_allocObject();
            *(v136 + 16) = 0;
            *(v136 + 24) = 0;
            v135(sub_20B5DF6DC, v136);

            v134(v133, v128);
            (*(v117 + 8))(v171, v145);
            (*(v172 + 8))(v173, v141);
          }
        }
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

void sub_20BA574DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t (*)(), uint64_t, uint64_t, uint64_t), void (*a8)(char *, uint64_t, uint64_t), unsigned __int8 a9, void (*a10)(uint64_t), void (*a11)(uint64_t))
{
  v180 = a6;
  v181 = a8;
  v178 = a4;
  v179 = a5;
  v177 = a3;
  v184 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v165 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v163 = &v137 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v164 = &v137 - v15;
  v162 = v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v137 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v20 - 8);
  v170 = &v137 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v161 = &v137 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = v24;
  MEMORY[0x28223BE20](v25);
  v171 = &v137 - v26;
  v168 = sub_20C1391C4();
  v167 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v169 = &v137 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_20C138A64();
  v172 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v173 = &v137 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  MEMORY[0x28223BE20](v30 - 8);
  v166 = &v137 - v31;
  v32 = sub_20C137C24();
  v175 = *(v32 - 8);
  v176 = v32;
  MEMORY[0x28223BE20](v32);
  v174 = v33;
  v182 = &v137 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_20C13C554();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = (&v137 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v183 = Strong;
    sub_20B51C88C(0, &qword_281100530);
    *v37 = sub_20C13D374();
    (*(v35 + 104))(v37, *MEMORY[0x277D85200], v34);
    v39 = sub_20C13C584();
    (*(v35 + 8))(v37, v34);
    if (v39)
    {
      v40 = v183;
      v41 = &v183[OBJC_IVAR____TtC9SeymourUI26TabletIndexedBrickItemCell_artworkView];
      [*&v183[OBJC_IVAR____TtC9SeymourUI26TabletIndexedBrickItemCell_artworkView] setContentMode_];
      v42 = *v41;
      v43 = *(v41 + 1);
      LODWORD(v159) = a9;
      v44 = v184;
      if (sub_20BA640CC(v184, v42, v43, a9 & 1))
      {
        v144 = v23;
        v141 = v28;
        v145 = v22;
        v138 = v19;
        v139 = v12;
        v157 = a11;
        v158 = a10;
        v151 = *v41;
        v149 = *(v41 + 1);
        ObjectType = swift_getObjectType();
        v147 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v45 = v175;
        v46 = *(v175 + 16);
        v154 = a9 & 1;
        v148 = a7;
        v152 = v41;
        v47 = v182;
        v48 = v176;
        v155 = v175 + 16;
        v153 = v46;
        v46(v182, v44, v176);
        v49 = *(v45 + 80);
        v50 = (v49 + 24) & ~v49;
        v140 = v174 + 7;
        v51 = (v174 + 7 + v50) & 0xFFFFFFFFFFFFFFF8;
        v52 = (v51 + 23) & 0xFFFFFFFFFFFFFFF8;
        v53 = (v52 + 23) & 0xFFFFFFFFFFFFFFF8;
        v146 = (v53 + 15) & 0xFFFFFFFFFFFFFFF8;
        v156 = v49;
        v54 = swift_allocObject();
        *(v54 + 16) = v147;
        v143 = *(v45 + 32);
        v142 = v45 + 32;
        v143(v54 + v50, v47, v48);
        v55 = (v54 + v51);
        v56 = v178;
        *v55 = v177;
        v55[1] = v56;
        v57 = (v54 + v52);
        v58 = v180;
        *v57 = v179;
        v57[1] = v58;
        *(v54 + v53) = v148;
        v59 = v54 + v146;
        *v59 = v181;
        *(v59 + 8) = v154;
        v60 = (v54 + ((v53 + 31) & 0xFFFFFFFFFFFFFFF8));
        v61 = v158;
        v62 = v157;
        *v60 = v158;
        v60[1] = v62;
        v63 = v149;
        v148 = *(v149 + 152);

        sub_20B584050(v61);
        v148(sub_20BA651EC, v54, ObjectType, v63);

        if (v159)
        {
          v64 = [objc_opt_self() mainScreen];
          [v64 scale];
          v66 = v65;

          v67 = sub_20C137BF4() / v66;
          v68 = sub_20C137C04() / v66;
          v69 = v152;
        }

        else
        {
          v69 = v152;
          [*v152 bounds];
          v67 = v70;
          v68 = v71;
        }

        v72 = v182;
        v73 = v153;
        if (v67 <= 0.0 || v68 <= 0.0)
        {
        }

        else
        {
          v159 = ~v156;
          v74 = v69[1];
          v75 = swift_getObjectType();
          v74[15](0, v75, v74);
          v76 = v69[1];
          v77 = swift_getObjectType();
          v78 = v166;
          v79 = v176;
          v73(v166, v184, v176);
          (*(v175 + 56))(v78, 0, 1, v79);
          v76[2](v78, v77, v76);
          v80 = *v69;
          sub_20B51C88C(0, &qword_27C762070);
          sub_20C137BC4();
          v81 = sub_20C13D5A4();
          [v80 setBackgroundColor_];

          v82 = v69[1];
          v83 = swift_getObjectType();
          v82[22](COERCE_DOUBLE(*&v67), COERCE_DOUBLE(*&v68), 0, v83, v82);
          v84 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v73(v72, v184, v79);
          v85 = (v156 + 16) & v159;
          v86 = v73;
          v87 = (v140 + v85) & 0xFFFFFFFFFFFFFFF8;
          v88 = (v87 + 15) & 0xFFFFFFFFFFFFFFF8;
          v89 = swift_allocObject();
          v143(v89 + v85, v72, v79);
          *(v89 + v87) = v84;
          v90 = (v89 + v88);
          v91 = v184;
          *v90 = v67;
          v90[1] = v68;
          v175 = v89;
          v92 = (v89 + ((v88 + 23) & 0xFFFFFFFFFFFFFFF8));
          v93 = v79;
          v94 = v158;
          v95 = v157;
          *v92 = v158;
          v92[1] = v95;
          v86(v72, v91, v79);
          (*(v167 + 104))(v169, *MEMORY[0x277D542A8], v168);

          sub_20B584050(v94);
          v96 = v173;
          v97 = v144;
          v98 = v183;
          sub_20C138A54();
          v99 = v170;
          sub_20B5F1D98(v96, v170);
          v100 = v145;
          if ((*(v97 + 48))(v99, 1, v145) == 1)
          {
            sub_20B520158(v99, &unk_27C766670);
            v101 = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI26TabletIndexedBrickItemCell_artworkView);
            if (v158)
            {
              v158(v101);
            }

            else
            {
            }

            (*(v172 + 8))(v96, v141);
          }

          else
          {
            v102 = v93;
            v181 = *(v97 + 32);
            v103 = v171;
            v181(v171, v99, v100);
            v104 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v153(v72, v91, v102);
            v105 = (v156 + 40) & v159;
            v106 = v105 + v174;
            v107 = (v105 + v174) & 0xFFFFFFFFFFFFFFF8;
            v108 = swift_allocObject();
            *(v108 + 16) = v104;
            *(v108 + 24) = v67;
            *(v108 + 32) = v68;
            v143(v108 + v105, v72, v102);
            *(v108 + v106) = v154;
            v109 = v108 + v107;
            v110 = v158;
            v111 = v157;
            *(v109 + 8) = v158;
            *(v109 + 16) = v111;
            v112 = swift_allocObject();
            *(v112 + 16) = sub_20BA65238;
            *(v112 + 24) = v108;
            v113 = v144;
            v114 = v161;
            v115 = v103;
            v116 = v145;
            (*(v144 + 16))(v161, v115, v145);
            v117 = v113;
            v118 = (*(v113 + 80) + 16) & ~*(v113 + 80);
            v119 = (v160 + v118 + 7) & 0xFFFFFFFFFFFFFFF8;
            v120 = swift_allocObject();
            v181((v120 + v118), v114, v116);
            v121 = (v120 + v119);
            *v121 = sub_20B5F7760;
            v121[1] = v112;
            sub_20B584050(v110);
            v122 = v164;
            sub_20C137C94();
            v123 = swift_allocObject();
            v124 = v175;
            *(v123 + 16) = sub_20BA65204;
            *(v123 + 24) = v124;
            v125 = swift_allocObject();
            *(v125 + 16) = sub_20BA66C80;
            *(v125 + 24) = v123;
            v126 = v165;
            v127 = v163;
            v128 = v139;
            (*(v165 + 16))(v163, v122, v139);
            v129 = (*(v126 + 80) + 16) & ~*(v126 + 80);
            v130 = (v162 + v129 + 7) & 0xFFFFFFFFFFFFFFF8;
            v131 = swift_allocObject();
            (*(v126 + 32))(v131 + v129, v127, v128);
            v132 = (v131 + v130);
            *v132 = sub_20B5F7764;
            v132[1] = v125;

            v133 = v138;
            sub_20C137C94();
            v134 = *(v126 + 8);
            v134(v122, v128);
            v135 = sub_20C137CB4();
            v136 = swift_allocObject();
            *(v136 + 16) = 0;
            *(v136 + 24) = 0;
            v135(sub_20B5DF6DC, v136);

            v134(v133, v128);
            (*(v117 + 8))(v171, v145);
            (*(v172 + 8))(v173, v141);
          }
        }
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

void sub_20BA58564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t (*)(), uint64_t, uint64_t, uint64_t), void (*a8)(char *, uint64_t, uint64_t), unsigned __int8 a9, void (*a10)(uint64_t), void (*a11)(uint64_t))
{
  v180 = a6;
  v181 = a8;
  v178 = a4;
  v179 = a5;
  v177 = a3;
  v184 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v165 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v163 = &v137 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v164 = &v137 - v15;
  v162 = v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v137 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v20 - 8);
  v170 = &v137 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v161 = &v137 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = v24;
  MEMORY[0x28223BE20](v25);
  v171 = &v137 - v26;
  v168 = sub_20C1391C4();
  v167 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v169 = &v137 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_20C138A64();
  v172 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v173 = &v137 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  MEMORY[0x28223BE20](v30 - 8);
  v166 = &v137 - v31;
  v32 = sub_20C137C24();
  v175 = *(v32 - 8);
  v176 = v32;
  MEMORY[0x28223BE20](v32);
  v174 = v33;
  v182 = &v137 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_20C13C554();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = (&v137 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v183 = Strong;
    sub_20B51C88C(0, &qword_281100530);
    *v37 = sub_20C13D374();
    (*(v35 + 104))(v37, *MEMORY[0x277D85200], v34);
    v39 = sub_20C13C584();
    (*(v35 + 8))(v37, v34);
    if (v39)
    {
      v40 = v183;
      v41 = &v183[OBJC_IVAR____TtC9SeymourUI26TabletStandardBrickRowCell_artworkView];
      [*&v183[OBJC_IVAR____TtC9SeymourUI26TabletStandardBrickRowCell_artworkView] setContentMode_];
      v42 = *v41;
      v43 = *(v41 + 1);
      LODWORD(v159) = a9;
      v44 = v184;
      if (sub_20BA640CC(v184, v42, v43, a9 & 1))
      {
        v144 = v23;
        v141 = v28;
        v145 = v22;
        v138 = v19;
        v139 = v12;
        v157 = a11;
        v158 = a10;
        v151 = *v41;
        v149 = *(v41 + 1);
        ObjectType = swift_getObjectType();
        v147 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v45 = v175;
        v46 = *(v175 + 16);
        v154 = a9 & 1;
        v148 = a7;
        v152 = v41;
        v47 = v182;
        v48 = v176;
        v155 = v175 + 16;
        v153 = v46;
        v46(v182, v44, v176);
        v49 = *(v45 + 80);
        v50 = (v49 + 24) & ~v49;
        v140 = v174 + 7;
        v51 = (v174 + 7 + v50) & 0xFFFFFFFFFFFFFFF8;
        v52 = (v51 + 23) & 0xFFFFFFFFFFFFFFF8;
        v53 = (v52 + 23) & 0xFFFFFFFFFFFFFFF8;
        v146 = (v53 + 15) & 0xFFFFFFFFFFFFFFF8;
        v156 = v49;
        v54 = swift_allocObject();
        *(v54 + 16) = v147;
        v143 = *(v45 + 32);
        v142 = v45 + 32;
        v143(v54 + v50, v47, v48);
        v55 = (v54 + v51);
        v56 = v178;
        *v55 = v177;
        v55[1] = v56;
        v57 = (v54 + v52);
        v58 = v180;
        *v57 = v179;
        v57[1] = v58;
        *(v54 + v53) = v148;
        v59 = v54 + v146;
        *v59 = v181;
        *(v59 + 8) = v154;
        v60 = (v54 + ((v53 + 31) & 0xFFFFFFFFFFFFFFF8));
        v61 = v158;
        v62 = v157;
        *v60 = v158;
        v60[1] = v62;
        v63 = v149;
        v148 = *(v149 + 152);

        sub_20B584050(v61);
        v148(sub_20BA660A8, v54, ObjectType, v63);

        if (v159)
        {
          v64 = [objc_opt_self() mainScreen];
          [v64 scale];
          v66 = v65;

          v67 = sub_20C137BF4() / v66;
          v68 = sub_20C137C04() / v66;
          v69 = v152;
        }

        else
        {
          v69 = v152;
          [*v152 bounds];
          v67 = v70;
          v68 = v71;
        }

        v72 = v182;
        v73 = v153;
        if (v67 <= 0.0 || v68 <= 0.0)
        {
        }

        else
        {
          v159 = ~v156;
          v74 = v69[1];
          v75 = swift_getObjectType();
          v74[15](0, v75, v74);
          v76 = v69[1];
          v77 = swift_getObjectType();
          v78 = v166;
          v79 = v176;
          v73(v166, v184, v176);
          (*(v175 + 56))(v78, 0, 1, v79);
          v76[2](v78, v77, v76);
          v80 = *v69;
          sub_20B51C88C(0, &qword_27C762070);
          sub_20C137BC4();
          v81 = sub_20C13D5A4();
          [v80 setBackgroundColor_];

          v82 = v69[1];
          v83 = swift_getObjectType();
          v82[22](COERCE_DOUBLE(*&v67), COERCE_DOUBLE(*&v68), 0, v83, v82);
          v84 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v73(v72, v184, v79);
          v85 = (v156 + 16) & v159;
          v86 = v73;
          v87 = (v140 + v85) & 0xFFFFFFFFFFFFFFF8;
          v88 = (v87 + 15) & 0xFFFFFFFFFFFFFFF8;
          v89 = swift_allocObject();
          v143(v89 + v85, v72, v79);
          *(v89 + v87) = v84;
          v90 = (v89 + v88);
          v91 = v184;
          *v90 = v67;
          v90[1] = v68;
          v175 = v89;
          v92 = (v89 + ((v88 + 23) & 0xFFFFFFFFFFFFFFF8));
          v93 = v79;
          v94 = v158;
          v95 = v157;
          *v92 = v158;
          v92[1] = v95;
          v86(v72, v91, v79);
          (*(v167 + 104))(v169, *MEMORY[0x277D542A8], v168);

          sub_20B584050(v94);
          v96 = v173;
          v97 = v144;
          v98 = v183;
          sub_20C138A54();
          v99 = v170;
          sub_20B5F1DC0(v96, v170);
          v100 = v145;
          if ((*(v97 + 48))(v99, 1, v145) == 1)
          {
            sub_20B520158(v99, &unk_27C766670);
            v101 = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI26TabletStandardBrickRowCell_artworkView);
            if (v158)
            {
              v158(v101);
            }

            else
            {
            }

            (*(v172 + 8))(v96, v141);
          }

          else
          {
            v102 = v93;
            v181 = *(v97 + 32);
            v103 = v171;
            v181(v171, v99, v100);
            v104 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v153(v72, v91, v102);
            v105 = (v156 + 40) & v159;
            v106 = v105 + v174;
            v107 = (v105 + v174) & 0xFFFFFFFFFFFFFFF8;
            v108 = swift_allocObject();
            *(v108 + 16) = v104;
            *(v108 + 24) = v67;
            *(v108 + 32) = v68;
            v143(v108 + v105, v72, v102);
            *(v108 + v106) = v154;
            v109 = v108 + v107;
            v110 = v158;
            v111 = v157;
            *(v109 + 8) = v158;
            *(v109 + 16) = v111;
            v112 = swift_allocObject();
            *(v112 + 16) = sub_20BA660F4;
            *(v112 + 24) = v108;
            v113 = v144;
            v114 = v161;
            v115 = v103;
            v116 = v145;
            (*(v144 + 16))(v161, v115, v145);
            v117 = v113;
            v118 = (*(v113 + 80) + 16) & ~*(v113 + 80);
            v119 = (v160 + v118 + 7) & 0xFFFFFFFFFFFFFFF8;
            v120 = swift_allocObject();
            v181((v120 + v118), v114, v116);
            v121 = (v120 + v119);
            *v121 = sub_20B5F7760;
            v121[1] = v112;
            sub_20B584050(v110);
            v122 = v164;
            sub_20C137C94();
            v123 = swift_allocObject();
            v124 = v175;
            *(v123 + 16) = sub_20BA660C0;
            *(v123 + 24) = v124;
            v125 = swift_allocObject();
            *(v125 + 16) = sub_20BA66C80;
            *(v125 + 24) = v123;
            v126 = v165;
            v127 = v163;
            v128 = v139;
            (*(v165 + 16))(v163, v122, v139);
            v129 = (*(v126 + 80) + 16) & ~*(v126 + 80);
            v130 = (v162 + v129 + 7) & 0xFFFFFFFFFFFFFFF8;
            v131 = swift_allocObject();
            (*(v126 + 32))(v131 + v129, v127, v128);
            v132 = (v131 + v130);
            *v132 = sub_20B5F7764;
            v132[1] = v125;

            v133 = v138;
            sub_20C137C94();
            v134 = *(v126 + 8);
            v134(v122, v128);
            v135 = sub_20C137CB4();
            v136 = swift_allocObject();
            *(v136 + 16) = 0;
            *(v136 + 24) = 0;
            v135(sub_20B5DF6DC, v136);

            v134(v133, v128);
            (*(v117 + 8))(v171, v145);
            (*(v172 + 8))(v173, v141);
          }
        }
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

void sub_20BA595EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t (*)(), uint64_t, uint64_t, uint64_t), void (*a8)(char *, uint64_t, uint64_t), unsigned __int8 a9, void (*a10)(uint64_t), void (*a11)(uint64_t))
{
  v180 = a6;
  v181 = a8;
  v178 = a4;
  v179 = a5;
  v177 = a3;
  v184 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v165 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v163 = &v137 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v164 = &v137 - v15;
  v162 = v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v137 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v20 - 8);
  v170 = &v137 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v161 = &v137 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = v24;
  MEMORY[0x28223BE20](v25);
  v171 = &v137 - v26;
  v168 = sub_20C1391C4();
  v167 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v169 = &v137 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_20C138A64();
  v172 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v173 = &v137 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  MEMORY[0x28223BE20](v30 - 8);
  v166 = &v137 - v31;
  v32 = sub_20C137C24();
  v175 = *(v32 - 8);
  v176 = v32;
  MEMORY[0x28223BE20](v32);
  v174 = v33;
  v182 = &v137 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_20C13C554();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = (&v137 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v183 = Strong;
    sub_20B51C88C(0, &qword_281100530);
    *v37 = sub_20C13D374();
    (*(v35 + 104))(v37, *MEMORY[0x277D85200], v34);
    v39 = sub_20C13C584();
    (*(v35 + 8))(v37, v34);
    if (v39)
    {
      v40 = v183;
      v41 = &v183[OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_artworkView];
      [*&v183[OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_artworkView] setContentMode_];
      v42 = *v41;
      v43 = *(v41 + 1);
      LODWORD(v159) = a9;
      v44 = v184;
      if (sub_20BA640CC(v184, v42, v43, a9 & 1))
      {
        v144 = v23;
        v141 = v28;
        v145 = v22;
        v138 = v19;
        v139 = v12;
        v157 = a11;
        v158 = a10;
        v151 = *v41;
        v149 = *(v41 + 1);
        ObjectType = swift_getObjectType();
        v147 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v45 = v175;
        v46 = *(v175 + 16);
        v154 = a9 & 1;
        v148 = a7;
        v152 = v41;
        v47 = v182;
        v48 = v176;
        v155 = v175 + 16;
        v153 = v46;
        v46(v182, v44, v176);
        v49 = *(v45 + 80);
        v50 = (v49 + 24) & ~v49;
        v140 = v174 + 7;
        v51 = (v174 + 7 + v50) & 0xFFFFFFFFFFFFFFF8;
        v52 = (v51 + 23) & 0xFFFFFFFFFFFFFFF8;
        v53 = (v52 + 23) & 0xFFFFFFFFFFFFFFF8;
        v146 = (v53 + 15) & 0xFFFFFFFFFFFFFFF8;
        v156 = v49;
        v54 = swift_allocObject();
        *(v54 + 16) = v147;
        v143 = *(v45 + 32);
        v142 = v45 + 32;
        v143(v54 + v50, v47, v48);
        v55 = (v54 + v51);
        v56 = v178;
        *v55 = v177;
        v55[1] = v56;
        v57 = (v54 + v52);
        v58 = v180;
        *v57 = v179;
        v57[1] = v58;
        *(v54 + v53) = v148;
        v59 = v54 + v146;
        *v59 = v181;
        *(v59 + 8) = v154;
        v60 = (v54 + ((v53 + 31) & 0xFFFFFFFFFFFFFFF8));
        v61 = v158;
        v62 = v157;
        *v60 = v158;
        v60[1] = v62;
        v63 = v149;
        v148 = *(v149 + 152);

        sub_20B584050(v61);
        v148(sub_20BA66338, v54, ObjectType, v63);

        if (v159)
        {
          v64 = [objc_opt_self() mainScreen];
          [v64 scale];
          v66 = v65;

          v67 = sub_20C137BF4() / v66;
          v68 = sub_20C137C04() / v66;
          v69 = v152;
        }

        else
        {
          v69 = v152;
          [*v152 bounds];
          v67 = v70;
          v68 = v71;
        }

        v72 = v182;
        v73 = v153;
        if (v67 <= 0.0 || v68 <= 0.0)
        {
        }

        else
        {
          v159 = ~v156;
          v74 = v69[1];
          v75 = swift_getObjectType();
          v74[15](0, v75, v74);
          v76 = v69[1];
          v77 = swift_getObjectType();
          v78 = v166;
          v79 = v176;
          v73(v166, v184, v176);
          (*(v175 + 56))(v78, 0, 1, v79);
          v76[2](v78, v77, v76);
          v80 = *v69;
          sub_20B51C88C(0, &qword_27C762070);
          sub_20C137BC4();
          v81 = sub_20C13D5A4();
          [v80 setBackgroundColor_];

          v82 = v69[1];
          v83 = swift_getObjectType();
          v82[22](COERCE_DOUBLE(*&v67), COERCE_DOUBLE(*&v68), 0, v83, v82);
          v84 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v73(v72, v184, v79);
          v85 = (v156 + 16) & v159;
          v86 = v73;
          v87 = (v140 + v85) & 0xFFFFFFFFFFFFFFF8;
          v88 = (v87 + 15) & 0xFFFFFFFFFFFFFFF8;
          v89 = swift_allocObject();
          v143(v89 + v85, v72, v79);
          *(v89 + v87) = v84;
          v90 = (v89 + v88);
          v91 = v184;
          *v90 = v67;
          v90[1] = v68;
          v175 = v89;
          v92 = (v89 + ((v88 + 23) & 0xFFFFFFFFFFFFFFF8));
          v93 = v79;
          v94 = v158;
          v95 = v157;
          *v92 = v158;
          v92[1] = v95;
          v86(v72, v91, v79);
          (*(v167 + 104))(v169, *MEMORY[0x277D542A8], v168);

          sub_20B584050(v94);
          v96 = v173;
          v97 = v144;
          v98 = v183;
          sub_20C138A54();
          v99 = v170;
          sub_20B5F1DE8(v96, v170);
          v100 = v145;
          if ((*(v97 + 48))(v99, 1, v145) == 1)
          {
            sub_20B520158(v99, &unk_27C766670);
            v101 = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_artworkView);
            if (v158)
            {
              v158(v101);
            }

            else
            {
            }

            (*(v172 + 8))(v96, v141);
          }

          else
          {
            v102 = v93;
            v181 = *(v97 + 32);
            v103 = v171;
            v181(v171, v99, v100);
            v104 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v153(v72, v91, v102);
            v105 = (v156 + 40) & v159;
            v106 = v105 + v174;
            v107 = (v105 + v174) & 0xFFFFFFFFFFFFFFF8;
            v108 = swift_allocObject();
            *(v108 + 16) = v104;
            *(v108 + 24) = v67;
            *(v108 + 32) = v68;
            v143(v108 + v105, v72, v102);
            *(v108 + v106) = v154;
            v109 = v108 + v107;
            v110 = v158;
            v111 = v157;
            *(v109 + 8) = v158;
            *(v109 + 16) = v111;
            v112 = swift_allocObject();
            *(v112 + 16) = sub_20BA66384;
            *(v112 + 24) = v108;
            v113 = v144;
            v114 = v161;
            v115 = v103;
            v116 = v145;
            (*(v144 + 16))(v161, v115, v145);
            v117 = v113;
            v118 = (*(v113 + 80) + 16) & ~*(v113 + 80);
            v119 = (v160 + v118 + 7) & 0xFFFFFFFFFFFFFFF8;
            v120 = swift_allocObject();
            v181((v120 + v118), v114, v116);
            v121 = (v120 + v119);
            *v121 = sub_20B5F7760;
            v121[1] = v112;
            sub_20B584050(v110);
            v122 = v164;
            sub_20C137C94();
            v123 = swift_allocObject();
            v124 = v175;
            *(v123 + 16) = sub_20BA66350;
            *(v123 + 24) = v124;
            v125 = swift_allocObject();
            *(v125 + 16) = sub_20BA66C80;
            *(v125 + 24) = v123;
            v126 = v165;
            v127 = v163;
            v128 = v139;
            (*(v165 + 16))(v163, v122, v139);
            v129 = (*(v126 + 80) + 16) & ~*(v126 + 80);
            v130 = (v162 + v129 + 7) & 0xFFFFFFFFFFFFFFF8;
            v131 = swift_allocObject();
            (*(v126 + 32))(v131 + v129, v127, v128);
            v132 = (v131 + v130);
            *v132 = sub_20B5F7764;
            v132[1] = v125;

            v133 = v138;
            sub_20C137C94();
            v134 = *(v126 + 8);
            v134(v122, v128);
            v135 = sub_20C137CB4();
            v136 = swift_allocObject();
            *(v136 + 16) = 0;
            *(v136 + 24) = 0;
            v135(sub_20B5DF6DC, v136);

            v134(v133, v128);
            (*(v117 + 8))(v171, v145);
            (*(v172 + 8))(v173, v141);
          }
        }
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

void sub_20BA5A674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t (*)(), uint64_t, uint64_t, uint64_t), void (*a8)(char *, uint64_t, uint64_t), unsigned __int8 a9, void (*a10)(uint64_t), void (*a11)(uint64_t))
{
  v180 = a6;
  v181 = a8;
  v178 = a4;
  v179 = a5;
  v177 = a3;
  v184 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v165 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v163 = &v137 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v164 = &v137 - v15;
  v162 = v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v137 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v20 - 8);
  v170 = &v137 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v161 = &v137 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = v24;
  MEMORY[0x28223BE20](v25);
  v171 = &v137 - v26;
  v168 = sub_20C1391C4();
  v167 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v169 = &v137 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_20C138A64();
  v172 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v173 = &v137 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  MEMORY[0x28223BE20](v30 - 8);
  v166 = &v137 - v31;
  v32 = sub_20C137C24();
  v175 = *(v32 - 8);
  v176 = v32;
  MEMORY[0x28223BE20](v32);
  v174 = v33;
  v182 = &v137 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_20C13C554();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = (&v137 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v183 = Strong;
    sub_20B51C88C(0, &qword_281100530);
    *v37 = sub_20C13D374();
    (*(v35 + 104))(v37, *MEMORY[0x277D85200], v34);
    v39 = sub_20C13C584();
    (*(v35 + 8))(v37, v34);
    if (v39)
    {
      v40 = v183;
      v41 = &v183[OBJC_IVAR____TtC9SeymourUI30TVFilterResultDetailHeaderCell_artworkView];
      [*&v183[OBJC_IVAR____TtC9SeymourUI30TVFilterResultDetailHeaderCell_artworkView] setContentMode_];
      v42 = *v41;
      v43 = *(v41 + 1);
      LODWORD(v159) = a9;
      v44 = v184;
      if (sub_20BA640CC(v184, v42, v43, a9 & 1))
      {
        v144 = v23;
        v141 = v28;
        v145 = v22;
        v138 = v19;
        v139 = v12;
        v157 = a11;
        v158 = a10;
        v151 = *v41;
        v149 = *(v41 + 1);
        ObjectType = swift_getObjectType();
        v147 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v45 = v175;
        v46 = *(v175 + 16);
        v154 = a9 & 1;
        v148 = a7;
        v152 = v41;
        v47 = v182;
        v48 = v176;
        v155 = v175 + 16;
        v153 = v46;
        v46(v182, v44, v176);
        v49 = *(v45 + 80);
        v50 = (v49 + 24) & ~v49;
        v140 = v174 + 7;
        v51 = (v174 + 7 + v50) & 0xFFFFFFFFFFFFFFF8;
        v52 = (v51 + 23) & 0xFFFFFFFFFFFFFFF8;
        v53 = (v52 + 23) & 0xFFFFFFFFFFFFFFF8;
        v146 = (v53 + 15) & 0xFFFFFFFFFFFFFFF8;
        v156 = v49;
        v54 = swift_allocObject();
        *(v54 + 16) = v147;
        v143 = *(v45 + 32);
        v142 = v45 + 32;
        v143(v54 + v50, v47, v48);
        v55 = (v54 + v51);
        v56 = v178;
        *v55 = v177;
        v55[1] = v56;
        v57 = (v54 + v52);
        v58 = v180;
        *v57 = v179;
        v57[1] = v58;
        *(v54 + v53) = v148;
        v59 = v54 + v146;
        *v59 = v181;
        *(v59 + 8) = v154;
        v60 = (v54 + ((v53 + 31) & 0xFFFFFFFFFFFFFFF8));
        v61 = v158;
        v62 = v157;
        *v60 = v158;
        v60[1] = v62;
        v63 = v149;
        v148 = *(v149 + 152);

        sub_20B584050(v61);
        v148(sub_20BA65000, v54, ObjectType, v63);

        if (v159)
        {
          v64 = [objc_opt_self() mainScreen];
          [v64 scale];
          v66 = v65;

          v67 = sub_20C137BF4() / v66;
          v68 = sub_20C137C04() / v66;
          v69 = v152;
        }

        else
        {
          v69 = v152;
          [*v152 bounds];
          v67 = v70;
          v68 = v71;
        }

        v72 = v182;
        v73 = v153;
        if (v67 <= 0.0 || v68 <= 0.0)
        {
        }

        else
        {
          v159 = ~v156;
          v74 = v69[1];
          v75 = swift_getObjectType();
          v74[15](0, v75, v74);
          v76 = v69[1];
          v77 = swift_getObjectType();
          v78 = v166;
          v79 = v176;
          v73(v166, v184, v176);
          (*(v175 + 56))(v78, 0, 1, v79);
          v76[2](v78, v77, v76);
          v80 = *v69;
          sub_20B51C88C(0, &qword_27C762070);
          sub_20C137BC4();
          v81 = sub_20C13D5A4();
          [v80 setBackgroundColor_];

          v82 = v69[1];
          v83 = swift_getObjectType();
          v82[22](COERCE_DOUBLE(*&v67), COERCE_DOUBLE(*&v68), 0, v83, v82);
          v84 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v73(v72, v184, v79);
          v85 = (v156 + 16) & v159;
          v86 = v73;
          v87 = (v140 + v85) & 0xFFFFFFFFFFFFFFF8;
          v88 = (v87 + 15) & 0xFFFFFFFFFFFFFFF8;
          v89 = swift_allocObject();
          v143(v89 + v85, v72, v79);
          *(v89 + v87) = v84;
          v90 = (v89 + v88);
          v91 = v184;
          *v90 = v67;
          v90[1] = v68;
          v175 = v89;
          v92 = (v89 + ((v88 + 23) & 0xFFFFFFFFFFFFFFF8));
          v93 = v79;
          v94 = v158;
          v95 = v157;
          *v92 = v158;
          v92[1] = v95;
          v86(v72, v91, v79);
          (*(v167 + 104))(v169, *MEMORY[0x277D542A8], v168);

          sub_20B584050(v94);
          v96 = v173;
          v97 = v144;
          v98 = v183;
          sub_20C138A54();
          v99 = v170;
          sub_20B5F1E10(v96, v170);
          v100 = v145;
          if ((*(v97 + 48))(v99, 1, v145) == 1)
          {
            sub_20B520158(v99, &unk_27C766670);
            v101 = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI30TVFilterResultDetailHeaderCell_artworkView);
            if (v158)
            {
              v158(v101);
            }

            else
            {
            }

            (*(v172 + 8))(v96, v141);
          }

          else
          {
            v102 = v93;
            v181 = *(v97 + 32);
            v103 = v171;
            v181(v171, v99, v100);
            v104 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v153(v72, v91, v102);
            v105 = (v156 + 40) & v159;
            v106 = v105 + v174;
            v107 = (v105 + v174) & 0xFFFFFFFFFFFFFFF8;
            v108 = swift_allocObject();
            *(v108 + 16) = v104;
            *(v108 + 24) = v67;
            *(v108 + 32) = v68;
            v143(v108 + v105, v72, v102);
            *(v108 + v106) = v154;
            v109 = v108 + v107;
            v110 = v158;
            v111 = v157;
            *(v109 + 8) = v158;
            *(v109 + 16) = v111;
            v112 = swift_allocObject();
            *(v112 + 16) = sub_20BA6504C;
            *(v112 + 24) = v108;
            v113 = v144;
            v114 = v161;
            v115 = v103;
            v116 = v145;
            (*(v144 + 16))(v161, v115, v145);
            v117 = v113;
            v118 = (*(v113 + 80) + 16) & ~*(v113 + 80);
            v119 = (v160 + v118 + 7) & 0xFFFFFFFFFFFFFFF8;
            v120 = swift_allocObject();
            v181((v120 + v118), v114, v116);
            v121 = (v120 + v119);
            *v121 = sub_20B5F7760;
            v121[1] = v112;
            sub_20B584050(v110);
            v122 = v164;
            sub_20C137C94();
            v123 = swift_allocObject();
            v124 = v175;
            *(v123 + 16) = sub_20BA65018;
            *(v123 + 24) = v124;
            v125 = swift_allocObject();
            *(v125 + 16) = sub_20BA66C80;
            *(v125 + 24) = v123;
            v126 = v165;
            v127 = v163;
            v128 = v139;
            (*(v165 + 16))(v163, v122, v139);
            v129 = (*(v126 + 80) + 16) & ~*(v126 + 80);
            v130 = (v162 + v129 + 7) & 0xFFFFFFFFFFFFFFF8;
            v131 = swift_allocObject();
            (*(v126 + 32))(v131 + v129, v127, v128);
            v132 = (v131 + v130);
            *v132 = sub_20B5F7764;
            v132[1] = v125;

            v133 = v138;
            sub_20C137C94();
            v134 = *(v126 + 8);
            v134(v122, v128);
            v135 = sub_20C137CB4();
            v136 = swift_allocObject();
            *(v136 + 16) = 0;
            *(v136 + 24) = 0;
            v135(sub_20B5DF6DC, v136);

            v134(v133, v128);
            (*(v117 + 8))(v171, v145);
            (*(v172 + 8))(v173, v141);
          }
        }
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

void sub_20BA5B6FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t (*)(), uint64_t, uint64_t, uint64_t), void (*a8)(char *, uint64_t, uint64_t), unsigned __int8 a9, void (*a10)(uint64_t), void (*a11)(uint64_t))
{
  v180 = a6;
  v181 = a8;
  v178 = a4;
  v179 = a5;
  v177 = a3;
  v184 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v165 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v163 = &v137 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v164 = &v137 - v15;
  v162 = v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v137 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v20 - 8);
  v170 = &v137 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v161 = &v137 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = v24;
  MEMORY[0x28223BE20](v25);
  v171 = &v137 - v26;
  v168 = sub_20C1391C4();
  v167 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v169 = &v137 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_20C138A64();
  v172 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v173 = &v137 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  MEMORY[0x28223BE20](v30 - 8);
  v166 = &v137 - v31;
  v32 = sub_20C137C24();
  v175 = *(v32 - 8);
  v176 = v32;
  MEMORY[0x28223BE20](v32);
  v174 = v33;
  v182 = &v137 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_20C13C554();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = (&v137 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v183 = Strong;
    sub_20B51C88C(0, &qword_281100530);
    *v37 = sub_20C13D374();
    (*(v35 + 104))(v37, *MEMORY[0x277D85200], v34);
    v39 = sub_20C13C584();
    (*(v35 + 8))(v37, v34);
    if (v39)
    {
      v40 = v183;
      v41 = &v183[OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_artworkView];
      [*&v183[OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_artworkView] setContentMode_];
      v42 = *v41;
      v43 = *(v41 + 1);
      LODWORD(v159) = a9;
      v44 = v184;
      if (sub_20BA640CC(v184, v42, v43, a9 & 1))
      {
        v144 = v23;
        v141 = v28;
        v145 = v22;
        v138 = v19;
        v139 = v12;
        v157 = a11;
        v158 = a10;
        v151 = *v41;
        v149 = *(v41 + 1);
        ObjectType = swift_getObjectType();
        v147 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v45 = v175;
        v46 = *(v175 + 16);
        v154 = a9 & 1;
        v148 = a7;
        v152 = v41;
        v47 = v182;
        v48 = v176;
        v155 = v175 + 16;
        v153 = v46;
        v46(v182, v44, v176);
        v49 = *(v45 + 80);
        v50 = (v49 + 24) & ~v49;
        v140 = v174 + 7;
        v51 = (v174 + 7 + v50) & 0xFFFFFFFFFFFFFFF8;
        v52 = (v51 + 23) & 0xFFFFFFFFFFFFFFF8;
        v53 = (v52 + 23) & 0xFFFFFFFFFFFFFFF8;
        v146 = (v53 + 15) & 0xFFFFFFFFFFFFFFF8;
        v156 = v49;
        v54 = swift_allocObject();
        *(v54 + 16) = v147;
        v143 = *(v45 + 32);
        v142 = v45 + 32;
        v143(v54 + v50, v47, v48);
        v55 = (v54 + v51);
        v56 = v178;
        *v55 = v177;
        v55[1] = v56;
        v57 = (v54 + v52);
        v58 = v180;
        *v57 = v179;
        v57[1] = v58;
        *(v54 + v53) = v148;
        v59 = v54 + v146;
        *v59 = v181;
        *(v59 + 8) = v154;
        v60 = (v54 + ((v53 + 31) & 0xFFFFFFFFFFFFFFF8));
        v61 = v158;
        v62 = v157;
        *v60 = v158;
        v60[1] = v62;
        v63 = v149;
        v148 = *(v149 + 152);

        sub_20B584050(v61);
        v148(sub_20BA648B0, v54, ObjectType, v63);

        if (v159)
        {
          v64 = [objc_opt_self() mainScreen];
          [v64 scale];
          v66 = v65;

          v67 = sub_20C137BF4() / v66;
          v68 = sub_20C137C04() / v66;
          v69 = v152;
        }

        else
        {
          v69 = v152;
          [*v152 bounds];
          v67 = v70;
          v68 = v71;
        }

        v72 = v182;
        v73 = v153;
        if (v67 <= 0.0 || v68 <= 0.0)
        {
        }

        else
        {
          v159 = ~v156;
          v74 = v69[1];
          v75 = swift_getObjectType();
          v74[15](0, v75, v74);
          v76 = v69[1];
          v77 = swift_getObjectType();
          v78 = v166;
          v79 = v176;
          v73(v166, v184, v176);
          (*(v175 + 56))(v78, 0, 1, v79);
          v76[2](v78, v77, v76);
          v80 = *v69;
          sub_20B51C88C(0, &qword_27C762070);
          sub_20C137BC4();
          v81 = sub_20C13D5A4();
          [v80 setBackgroundColor_];

          v82 = v69[1];
          v83 = swift_getObjectType();
          v82[22](COERCE_DOUBLE(*&v67), COERCE_DOUBLE(*&v68), 0, v83, v82);
          v84 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v73(v72, v184, v79);
          v85 = (v156 + 16) & v159;
          v86 = v73;
          v87 = (v140 + v85) & 0xFFFFFFFFFFFFFFF8;
          v88 = (v87 + 15) & 0xFFFFFFFFFFFFFFF8;
          v89 = swift_allocObject();
          v143(v89 + v85, v72, v79);
          *(v89 + v87) = v84;
          v90 = (v89 + v88);
          v91 = v184;
          *v90 = v67;
          v90[1] = v68;
          v175 = v89;
          v92 = (v89 + ((v88 + 23) & 0xFFFFFFFFFFFFFFF8));
          v93 = v79;
          v94 = v158;
          v95 = v157;
          *v92 = v158;
          v92[1] = v95;
          v86(v72, v91, v79);
          (*(v167 + 104))(v169, *MEMORY[0x277D542A8], v168);

          sub_20B584050(v94);
          v96 = v173;
          v97 = v144;
          v98 = v183;
          sub_20C138A54();
          v99 = v170;
          sub_20B5F1E38(v96, v170);
          v100 = v145;
          if ((*(v97 + 48))(v99, 1, v145) == 1)
          {
            sub_20B520158(v99, &unk_27C766670);
            v101 = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_artworkView);
            if (v158)
            {
              v158(v101);
            }

            else
            {
            }

            (*(v172 + 8))(v96, v141);
          }

          else
          {
            v102 = v93;
            v181 = *(v97 + 32);
            v103 = v171;
            v181(v171, v99, v100);
            v104 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v153(v72, v91, v102);
            v105 = (v156 + 40) & v159;
            v106 = v105 + v174;
            v107 = (v105 + v174) & 0xFFFFFFFFFFFFFFF8;
            v108 = swift_allocObject();
            *(v108 + 16) = v104;
            *(v108 + 24) = v67;
            *(v108 + 32) = v68;
            v143(v108 + v105, v72, v102);
            *(v108 + v106) = v154;
            v109 = v108 + v107;
            v110 = v158;
            v111 = v157;
            *(v109 + 8) = v158;
            *(v109 + 16) = v111;
            v112 = swift_allocObject();
            *(v112 + 16) = sub_20BA649E4;
            *(v112 + 24) = v108;
            v113 = v144;
            v114 = v161;
            v115 = v103;
            v116 = v145;
            (*(v144 + 16))(v161, v115, v145);
            v117 = v113;
            v118 = (*(v113 + 80) + 16) & ~*(v113 + 80);
            v119 = (v160 + v118 + 7) & 0xFFFFFFFFFFFFFFF8;
            v120 = swift_allocObject();
            v181((v120 + v118), v114, v116);
            v121 = (v120 + v119);
            *v121 = sub_20B5F7760;
            v121[1] = v112;
            sub_20B584050(v110);
            v122 = v164;
            sub_20C137C94();
            v123 = swift_allocObject();
            v124 = v175;
            *(v123 + 16) = sub_20BA649B0;
            *(v123 + 24) = v124;
            v125 = swift_allocObject();
            *(v125 + 16) = sub_20BA66C80;
            *(v125 + 24) = v123;
            v126 = v165;
            v127 = v163;
            v128 = v139;
            (*(v165 + 16))(v163, v122, v139);
            v129 = (*(v126 + 80) + 16) & ~*(v126 + 80);
            v130 = (v162 + v129 + 7) & 0xFFFFFFFFFFFFFFF8;
            v131 = swift_allocObject();
            (*(v126 + 32))(v131 + v129, v127, v128);
            v132 = (v131 + v130);
            *v132 = sub_20B5F7764;
            v132[1] = v125;

            v133 = v138;
            sub_20C137C94();
            v134 = *(v126 + 8);
            v134(v122, v128);
            v135 = sub_20C137CB4();
            v136 = swift_allocObject();
            *(v136 + 16) = 0;
            *(v136 + 24) = 0;
            v135(sub_20B5DF6DC, v136);

            v134(v133, v128);
            (*(v117 + 8))(v171, v145);
            (*(v172 + 8))(v173, v141);
          }
        }
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

void sub_20BA5C784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t (*)(), uint64_t, uint64_t, uint64_t), void (*a8)(char *, uint64_t, uint64_t), unsigned __int8 a9, void (*a10)(uint64_t), void (*a11)(uint64_t))
{
  v180 = a6;
  v181 = a8;
  v178 = a4;
  v179 = a5;
  v177 = a3;
  v184 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v165 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v163 = &v137 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v164 = &v137 - v15;
  v162 = v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v137 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v20 - 8);
  v170 = &v137 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v161 = &v137 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = v24;
  MEMORY[0x28223BE20](v25);
  v171 = &v137 - v26;
  v168 = sub_20C1391C4();
  v167 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v169 = &v137 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_20C138A64();
  v172 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v173 = &v137 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  MEMORY[0x28223BE20](v30 - 8);
  v166 = &v137 - v31;
  v32 = sub_20C137C24();
  v175 = *(v32 - 8);
  v176 = v32;
  MEMORY[0x28223BE20](v32);
  v174 = v33;
  v182 = &v137 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_20C13C554();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = (&v137 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v183 = Strong;
    sub_20B51C88C(0, &qword_281100530);
    *v37 = sub_20C13D374();
    (*(v35 + 104))(v37, *MEMORY[0x277D85200], v34);
    v39 = sub_20C13C584();
    (*(v35 + 8))(v37, v34);
    if (v39)
    {
      v40 = v183;
      v41 = &v183[OBJC_IVAR____TtC9SeymourUI31EditorialCollectionBrickRowCell_artworkView];
      [*&v183[OBJC_IVAR____TtC9SeymourUI31EditorialCollectionBrickRowCell_artworkView] setContentMode_];
      v42 = *v41;
      v43 = *(v41 + 1);
      LODWORD(v159) = a9;
      v44 = v184;
      if (sub_20BA640CC(v184, v42, v43, a9 & 1))
      {
        v144 = v23;
        v141 = v28;
        v145 = v22;
        v138 = v19;
        v139 = v12;
        v157 = a11;
        v158 = a10;
        v151 = *v41;
        v149 = *(v41 + 1);
        ObjectType = swift_getObjectType();
        v147 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v45 = v175;
        v46 = *(v175 + 16);
        v154 = a9 & 1;
        v148 = a7;
        v152 = v41;
        v47 = v182;
        v48 = v176;
        v155 = v175 + 16;
        v153 = v46;
        v46(v182, v44, v176);
        v49 = *(v45 + 80);
        v50 = (v49 + 24) & ~v49;
        v140 = v174 + 7;
        v51 = (v174 + 7 + v50) & 0xFFFFFFFFFFFFFFF8;
        v52 = (v51 + 23) & 0xFFFFFFFFFFFFFFF8;
        v53 = (v52 + 23) & 0xFFFFFFFFFFFFFFF8;
        v146 = (v53 + 15) & 0xFFFFFFFFFFFFFFF8;
        v156 = v49;
        v54 = swift_allocObject();
        *(v54 + 16) = v147;
        v143 = *(v45 + 32);
        v142 = v45 + 32;
        v143(v54 + v50, v47, v48);
        v55 = (v54 + v51);
        v56 = v178;
        *v55 = v177;
        v55[1] = v56;
        v57 = (v54 + v52);
        v58 = v180;
        *v57 = v179;
        v57[1] = v58;
        *(v54 + v53) = v148;
        v59 = v54 + v146;
        *v59 = v181;
        *(v59 + 8) = v154;
        v60 = (v54 + ((v53 + 31) & 0xFFFFFFFFFFFFFFF8));
        v61 = v158;
        v62 = v157;
        *v60 = v158;
        v60[1] = v62;
        v63 = v149;
        v148 = *(v149 + 152);

        sub_20B584050(v61);
        v148(sub_20BA6599C, v54, ObjectType, v63);

        if (v159)
        {
          v64 = [objc_opt_self() mainScreen];
          [v64 scale];
          v66 = v65;

          v67 = sub_20C137BF4() / v66;
          v68 = sub_20C137C04() / v66;
          v69 = v152;
        }

        else
        {
          v69 = v152;
          [*v152 bounds];
          v67 = v70;
          v68 = v71;
        }

        v72 = v182;
        v73 = v153;
        if (v67 <= 0.0 || v68 <= 0.0)
        {
        }

        else
        {
          v159 = ~v156;
          v74 = v69[1];
          v75 = swift_getObjectType();
          v74[15](0, v75, v74);
          v76 = v69[1];
          v77 = swift_getObjectType();
          v78 = v166;
          v79 = v176;
          v73(v166, v184, v176);
          (*(v175 + 56))(v78, 0, 1, v79);
          v76[2](v78, v77, v76);
          v80 = *v69;
          sub_20B51C88C(0, &qword_27C762070);
          sub_20C137BC4();
          v81 = sub_20C13D5A4();
          [v80 setBackgroundColor_];

          v82 = v69[1];
          v83 = swift_getObjectType();
          v82[22](COERCE_DOUBLE(*&v67), COERCE_DOUBLE(*&v68), 0, v83, v82);
          v84 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v73(v72, v184, v79);
          v85 = (v156 + 16) & v159;
          v86 = v73;
          v87 = (v140 + v85) & 0xFFFFFFFFFFFFFFF8;
          v88 = (v87 + 15) & 0xFFFFFFFFFFFFFFF8;
          v89 = swift_allocObject();
          v143(v89 + v85, v72, v79);
          *(v89 + v87) = v84;
          v90 = (v89 + v88);
          v91 = v184;
          *v90 = v67;
          v90[1] = v68;
          v175 = v89;
          v92 = (v89 + ((v88 + 23) & 0xFFFFFFFFFFFFFFF8));
          v93 = v79;
          v94 = v158;
          v95 = v157;
          *v92 = v158;
          v92[1] = v95;
          v86(v72, v91, v79);
          (*(v167 + 104))(v169, *MEMORY[0x277D542A8], v168);

          sub_20B584050(v94);
          v96 = v173;
          v97 = v144;
          v98 = v183;
          sub_20C138A54();
          v99 = v170;
          sub_20B5F1E60(v96, v170);
          v100 = v145;
          if ((*(v97 + 48))(v99, 1, v145) == 1)
          {
            sub_20B520158(v99, &unk_27C766670);
            v101 = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI31EditorialCollectionBrickRowCell_artworkView);
            if (v158)
            {
              v158(v101);
            }

            else
            {
            }

            (*(v172 + 8))(v96, v141);
          }

          else
          {
            v102 = v93;
            v181 = *(v97 + 32);
            v103 = v171;
            v181(v171, v99, v100);
            v104 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v153(v72, v91, v102);
            v105 = (v156 + 40) & v159;
            v106 = v105 + v174;
            v107 = (v105 + v174) & 0xFFFFFFFFFFFFFFF8;
            v108 = swift_allocObject();
            *(v108 + 16) = v104;
            *(v108 + 24) = v67;
            *(v108 + 32) = v68;
            v143(v108 + v105, v72, v102);
            *(v108 + v106) = v154;
            v109 = v108 + v107;
            v110 = v158;
            v111 = v157;
            *(v109 + 8) = v158;
            *(v109 + 16) = v111;
            v112 = swift_allocObject();
            *(v112 + 16) = sub_20BA659E8;
            *(v112 + 24) = v108;
            v113 = v144;
            v114 = v161;
            v115 = v103;
            v116 = v145;
            (*(v144 + 16))(v161, v115, v145);
            v117 = v113;
            v118 = (*(v113 + 80) + 16) & ~*(v113 + 80);
            v119 = (v160 + v118 + 7) & 0xFFFFFFFFFFFFFFF8;
            v120 = swift_allocObject();
            v181((v120 + v118), v114, v116);
            v121 = (v120 + v119);
            *v121 = sub_20B5F7760;
            v121[1] = v112;
            sub_20B584050(v110);
            v122 = v164;
            sub_20C137C94();
            v123 = swift_allocObject();
            v124 = v175;
            *(v123 + 16) = sub_20BA659B4;
            *(v123 + 24) = v124;
            v125 = swift_allocObject();
            *(v125 + 16) = sub_20BA66C80;
            *(v125 + 24) = v123;
            v126 = v165;
            v127 = v163;
            v128 = v139;
            (*(v165 + 16))(v163, v122, v139);
            v129 = (*(v126 + 80) + 16) & ~*(v126 + 80);
            v130 = (v162 + v129 + 7) & 0xFFFFFFFFFFFFFFF8;
            v131 = swift_allocObject();
            (*(v126 + 32))(v131 + v129, v127, v128);
            v132 = (v131 + v130);
            *v132 = sub_20B5F7764;
            v132[1] = v125;

            v133 = v138;
            sub_20C137C94();
            v134 = *(v126 + 8);
            v134(v122, v128);
            v135 = sub_20C137CB4();
            v136 = swift_allocObject();
            *(v136 + 16) = 0;
            *(v136 + 24) = 0;
            v135(sub_20B5DF6DC, v136);

            v134(v133, v128);
            (*(v117 + 8))(v171, v145);
            (*(v172 + 8))(v173, v141);
          }
        }
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

void sub_20BA5D80C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t (*)(), uint64_t, uint64_t, uint64_t), void (*a8)(char *, uint64_t, uint64_t), unsigned __int8 a9, void (*a10)(uint64_t), void (*a11)(uint64_t))
{
  v180 = a6;
  v181 = a8;
  v178 = a4;
  v179 = a5;
  v177 = a3;
  v184 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v165 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v163 = &v137 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v164 = &v137 - v15;
  v162 = v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v137 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v20 - 8);
  v170 = &v137 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v161 = &v137 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = v24;
  MEMORY[0x28223BE20](v25);
  v171 = &v137 - v26;
  v168 = sub_20C1391C4();
  v167 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v169 = &v137 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_20C138A64();
  v172 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v173 = &v137 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  MEMORY[0x28223BE20](v30 - 8);
  v166 = &v137 - v31;
  v32 = sub_20C137C24();
  v175 = *(v32 - 8);
  v176 = v32;
  MEMORY[0x28223BE20](v32);
  v174 = v33;
  v182 = &v137 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_20C13C554();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = (&v137 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v183 = Strong;
    sub_20B51C88C(0, &qword_281100530);
    *v37 = sub_20C13D374();
    (*(v35 + 104))(v37, *MEMORY[0x277D85200], v34);
    v39 = sub_20C13C584();
    (*(v35 + 8))(v37, v34);
    if (v39)
    {
      v40 = v183;
      v41 = &v183[OBJC_IVAR____TtC9SeymourUI32EditorialCollectionBrickItemCell_artworkView];
      [*&v183[OBJC_IVAR____TtC9SeymourUI32EditorialCollectionBrickItemCell_artworkView] setContentMode_];
      v42 = *v41;
      v43 = *(v41 + 1);
      LODWORD(v159) = a9;
      v44 = v184;
      if (sub_20BA640CC(v184, v42, v43, a9 & 1))
      {
        v144 = v23;
        v141 = v28;
        v145 = v22;
        v138 = v19;
        v139 = v12;
        v157 = a11;
        v158 = a10;
        v151 = *v41;
        v149 = *(v41 + 1);
        ObjectType = swift_getObjectType();
        v147 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v45 = v175;
        v46 = *(v175 + 16);
        v154 = a9 & 1;
        v148 = a7;
        v152 = v41;
        v47 = v182;
        v48 = v176;
        v155 = v175 + 16;
        v153 = v46;
        v46(v182, v44, v176);
        v49 = *(v45 + 80);
        v50 = (v49 + 24) & ~v49;
        v140 = v174 + 7;
        v51 = (v174 + 7 + v50) & 0xFFFFFFFFFFFFFFF8;
        v52 = (v51 + 23) & 0xFFFFFFFFFFFFFFF8;
        v53 = (v52 + 23) & 0xFFFFFFFFFFFFFFF8;
        v146 = (v53 + 15) & 0xFFFFFFFFFFFFFFF8;
        v156 = v49;
        v54 = swift_allocObject();
        *(v54 + 16) = v147;
        v143 = *(v45 + 32);
        v142 = v45 + 32;
        v143(v54 + v50, v47, v48);
        v55 = (v54 + v51);
        v56 = v178;
        *v55 = v177;
        v55[1] = v56;
        v57 = (v54 + v52);
        v58 = v180;
        *v57 = v179;
        v57[1] = v58;
        *(v54 + v53) = v148;
        v59 = v54 + v146;
        *v59 = v181;
        *(v59 + 8) = v154;
        v60 = (v54 + ((v53 + 31) & 0xFFFFFFFFFFFFFFF8));
        v61 = v158;
        v62 = v157;
        *v60 = v158;
        v60[1] = v62;
        v63 = v149;
        v148 = *(v149 + 152);

        sub_20B584050(v61);
        v148(sub_20BA663DC, v54, ObjectType, v63);

        if (v159)
        {
          v64 = [objc_opt_self() mainScreen];
          [v64 scale];
          v66 = v65;

          v67 = sub_20C137BF4() / v66;
          v68 = sub_20C137C04() / v66;
          v69 = v152;
        }

        else
        {
          v69 = v152;
          [*v152 bounds];
          v67 = v70;
          v68 = v71;
        }

        v72 = v182;
        v73 = v153;
        if (v67 <= 0.0 || v68 <= 0.0)
        {
        }

        else
        {
          v159 = ~v156;
          v74 = v69[1];
          v75 = swift_getObjectType();
          v74[15](0, v75, v74);
          v76 = v69[1];
          v77 = swift_getObjectType();
          v78 = v166;
          v79 = v176;
          v73(v166, v184, v176);
          (*(v175 + 56))(v78, 0, 1, v79);
          v76[2](v78, v77, v76);
          v80 = *v69;
          sub_20B51C88C(0, &qword_27C762070);
          sub_20C137BC4();
          v81 = sub_20C13D5A4();
          [v80 setBackgroundColor_];

          v82 = v69[1];
          v83 = swift_getObjectType();
          v82[22](COERCE_DOUBLE(*&v67), COERCE_DOUBLE(*&v68), 0, v83, v82);
          v84 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v73(v72, v184, v79);
          v85 = (v156 + 16) & v159;
          v86 = v73;
          v87 = (v140 + v85) & 0xFFFFFFFFFFFFFFF8;
          v88 = (v87 + 15) & 0xFFFFFFFFFFFFFFF8;
          v89 = swift_allocObject();
          v143(v89 + v85, v72, v79);
          *(v89 + v87) = v84;
          v90 = (v89 + v88);
          v91 = v184;
          *v90 = v67;
          v90[1] = v68;
          v175 = v89;
          v92 = (v89 + ((v88 + 23) & 0xFFFFFFFFFFFFFFF8));
          v93 = v79;
          v94 = v158;
          v95 = v157;
          *v92 = v158;
          v92[1] = v95;
          v86(v72, v91, v79);
          (*(v167 + 104))(v169, *MEMORY[0x277D542A8], v168);

          sub_20B584050(v94);
          v96 = v173;
          v97 = v144;
          v98 = v183;
          sub_20C138A54();
          v99 = v170;
          sub_20B5F1E88(v96, v170);
          v100 = v145;
          if ((*(v97 + 48))(v99, 1, v145) == 1)
          {
            sub_20B520158(v99, &unk_27C766670);
            v101 = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI32EditorialCollectionBrickItemCell_artworkView);
            if (v158)
            {
              v158(v101);
            }

            else
            {
            }

            (*(v172 + 8))(v96, v141);
          }

          else
          {
            v102 = v93;
            v181 = *(v97 + 32);
            v103 = v171;
            v181(v171, v99, v100);
            v104 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v153(v72, v91, v102);
            v105 = (v156 + 40) & v159;
            v106 = v105 + v174;
            v107 = (v105 + v174) & 0xFFFFFFFFFFFFFFF8;
            v108 = swift_allocObject();
            *(v108 + 16) = v104;
            *(v108 + 24) = v67;
            *(v108 + 32) = v68;
            v143(v108 + v105, v72, v102);
            *(v108 + v106) = v154;
            v109 = v108 + v107;
            v110 = v158;
            v111 = v157;
            *(v109 + 8) = v158;
            *(v109 + 16) = v111;
            v112 = swift_allocObject();
            *(v112 + 16) = sub_20BA66428;
            *(v112 + 24) = v108;
            v113 = v144;
            v114 = v161;
            v115 = v103;
            v116 = v145;
            (*(v144 + 16))(v161, v115, v145);
            v117 = v113;
            v118 = (*(v113 + 80) + 16) & ~*(v113 + 80);
            v119 = (v160 + v118 + 7) & 0xFFFFFFFFFFFFFFF8;
            v120 = swift_allocObject();
            v181((v120 + v118), v114, v116);
            v121 = (v120 + v119);
            *v121 = sub_20B5F7760;
            v121[1] = v112;
            sub_20B584050(v110);
            v122 = v164;
            sub_20C137C94();
            v123 = swift_allocObject();
            v124 = v175;
            *(v123 + 16) = sub_20BA663F4;
            *(v123 + 24) = v124;
            v125 = swift_allocObject();
            *(v125 + 16) = sub_20BA66C80;
            *(v125 + 24) = v123;
            v126 = v165;
            v127 = v163;
            v128 = v139;
            (*(v165 + 16))(v163, v122, v139);
            v129 = (*(v126 + 80) + 16) & ~*(v126 + 80);
            v130 = (v162 + v129 + 7) & 0xFFFFFFFFFFFFFFF8;
            v131 = swift_allocObject();
            (*(v126 + 32))(v131 + v129, v127, v128);
            v132 = (v131 + v130);
            *v132 = sub_20B5F7764;
            v132[1] = v125;

            v133 = v138;
            sub_20C137C94();
            v134 = *(v126 + 8);
            v134(v122, v128);
            v135 = sub_20C137CB4();
            v136 = swift_allocObject();
            *(v136 + 16) = 0;
            *(v136 + 24) = 0;
            v135(sub_20B5DF6DC, v136);

            v134(v133, v128);
            (*(v117 + 8))(v171, v145);
            (*(v172 + 8))(v173, v141);
          }
        }
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

void sub_20BA5E894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(char *, uint64_t, uint64_t), char a9, void (*a10)(id), void (*a11)(id))
{
  v176 = a6;
  v177 = a8;
  v174 = a4;
  v175 = a5;
  v173 = a3;
  v179 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v160 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v158 = &v135 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v159 = &v135 - v15;
  v157 = v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v135 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v20 - 8);
  v165 = &v135 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v169 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v156 = &v135 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = v23;
  MEMORY[0x28223BE20](v24);
  v166 = &v135 - v25;
  v163 = sub_20C1391C4();
  v162 = *(v163 - 8);
  MEMORY[0x28223BE20](v163);
  v164 = &v135 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_20C138A64();
  v167 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v168 = &v135 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  MEMORY[0x28223BE20](v29 - 8);
  v161 = &v135 - v30;
  v178 = sub_20C137C24();
  v171 = *(v178 - 8);
  MEMORY[0x28223BE20](v178);
  v170 = v31;
  v172 = &v135 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_20C13C554();
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v35 = (&v135 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v37 = Strong;
    v153 = v27;
    sub_20B51C88C(0, &qword_281100530);
    *v35 = sub_20C13D374();
    (*(v33 + 104))(v35, *MEMORY[0x277D85200], v32);
    v38 = sub_20C13C584();
    (*(v33 + 8))(v35, v32);
    if (v38)
    {
      v39 = OBJC_IVAR____TtC9SeymourUI34TVEditorialCollectionBrickItemCell_tvArtworkView;
      [*&v37[OBJC_IVAR____TtC9SeymourUI34TVEditorialCollectionBrickItemCell_tvArtworkView] setContentMode_];
      v40 = *&v37[v39];
      v41 = v179;
      v42 = sub_20BB96188(v179, v40, a9 & 1);

      if ((v42 & 1) != 0 && (v143 = v22, v136 = v19, v137 = v12, v152 = a11, v154 = a10, v139 = v39, v149 = *&v37[v39], v147 = swift_allocObject(), swift_unknownObjectWeakInit(), v43 = v171, v44 = *(v171 + 16), v150 = a9 & 1, v45 = v172, v151 = v37, v46 = v178, v145 = v171 + 16, v144 = v44, v44(v172, v41, v178), v47 = *(v43 + 80), v148 = a7, v48 = (v47 + 24) & ~v47, v138 = v170 + 7, v49 = (v170 + 7 + v48) & 0xFFFFFFFFFFFFFFF8, v50 = (v49 + 23) & 0xFFFFFFFFFFFFFFF8, v51 = (v50 + 23) & 0xFFFFFFFFFFFFFFF8, v146 = (v51 + 15) & 0xFFFFFFFFFFFFFFF8, v142 = v47, v52 = swift_allocObject(), *(v52 + 16) = v147, v53 = *(v43 + 32), v54 = v45, LOBYTE(v45) = v150, v141 = v43 + 32, v140 = v53, v53(v52 + v48, v54, v46), v55 = (v52 + v49), v56 = v174, *v55 = v173, v55[1] = v56, v57 = (v52 + v50), v58 = v176, *v57 = v175, v57[1] = v58, *(v52 + v51) = v148, v59 = v52 + v146, *v59 = v177, *(v59 + 8) = v45, v60 = (v52 + ((v51 + 31) & 0xFFFFFFFFFFFFFFF8)), v61 = v154, v62 = v152, *v60 = v154, v60[1] = v62, v63 = (v149 + OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layoutHandler), v64 = *(v149 + OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layoutHandler), *v63 = sub_20BA65AE4, v63[1] = v52, , , v65 = v62, , , sub_20B584050(v61), v37 = v151, v66 = v179, sub_20B583ECC(v64), , v67 = sub_20B62733C(v66, v45), v67 > 0.0) && (v69 = v68, v68 > 0.0))
      {
        v70 = v67;
        v71 = v142;
        v149 = ~v142;
        v72 = v139;
        [*&v37[v139] setStackImage_];
        v73 = *&v37[v72];
        v74 = v161;
        v75 = v66;
        v76 = v178;
        v144(v161, v66, v178);
        (*(v171 + 56))(v74, 0, 1, v76);
        v77 = OBJC_IVAR____TtC9SeymourUI13TVArtworkView_artwork;
        swift_beginAccess();
        sub_20B69AB5C(v74, v73 + v77);
        swift_endAccess();
        v78 = *&v37[v72];
        sub_20B51C88C(0, &qword_27C762070);
        v79 = v75;
        sub_20C137BC4();
        v80 = sub_20C13D5A4();
        [v78 setBackgroundColor_];

        v81 = *&v37[v72] + OBJC_IVAR____TtC9SeymourUI13TVArtworkView_pendingArtworkSize;
        *v81 = v70;
        *(v81 + 8) = v69;
        *(v81 + 16) = 0;
        v82 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v83 = v172;
        v84 = v76;
        v85 = v144;
        v144(v172, v79, v84);
        v86 = (v71 + 16) & v149;
        v87 = v65;
        v88 = (v138 + v86) & 0xFFFFFFFFFFFFFFF8;
        v89 = (v88 + 15) & 0xFFFFFFFFFFFFFFF8;
        v90 = swift_allocObject();
        v91 = v90 + v86;
        v92 = v178;
        v140(v91, v83, v178);
        *(v90 + v88) = v82;
        v93 = (v90 + v89);
        *v93 = v70;
        v93[1] = v69;
        v171 = v90;
        v94 = (v90 + ((v89 + 23) & 0xFFFFFFFFFFFFFFF8));
        v95 = v92;
        v96 = v154;
        *v94 = v154;
        v94[1] = v87;
        v85(v83, v179, v92);
        (*(v162 + 104))(v164, *MEMORY[0x277D542A8], v163);

        sub_20B584050(v96);
        v97 = v168;
        sub_20C138A54();
        v98 = v165;
        sub_20B5F1EB0(v97, v165);
        v99 = v169;
        v100 = v143;
        if ((*(v169 + 48))(v98, 1, v143) == 1)
        {
          sub_20B520158(v98, &unk_27C766670);
          v101 = sub_20BA1DB84(&OBJC_IVAR____TtC9SeymourUI34TVEditorialCollectionBrickItemCell_tvArtworkView);
          if (v96)
          {
            v96(v101);
          }

          else
          {
          }

          (*(v167 + 8))(v97, v153);
        }

        else
        {
          v102 = v95;
          v177 = *(v99 + 32);
          v103 = v166;
          v177(v166, v98, v100);
          v104 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v144(v83, v179, v102);
          v105 = (v142 + 40) & v149;
          v106 = v105 + v170;
          v107 = (v105 + v170) & 0xFFFFFFFFFFFFFFF8;
          v108 = v100;
          v109 = swift_allocObject();
          *(v109 + 2) = v104;
          v109[3] = v70;
          v109[4] = v69;
          v140(v109 + v105, v83, v102);
          *(v109 + v106) = v150;
          v110 = v109 + v107;
          v111 = v154;
          v112 = v152;
          *(v110 + 1) = v154;
          *(v110 + 2) = v112;
          v113 = swift_allocObject();
          *(v113 + 16) = sub_20BA65B30;
          *(v113 + 24) = v109;
          v114 = v169;
          v115 = v156;
          (*(v169 + 16))(v156, v103, v108);
          v116 = (*(v114 + 80) + 16) & ~*(v114 + 80);
          v117 = (v155 + v116 + 7) & 0xFFFFFFFFFFFFFFF8;
          v118 = swift_allocObject();
          v177((v118 + v116), v115, v108);
          v119 = (v118 + v117);
          *v119 = sub_20B5F7760;
          v119[1] = v113;
          sub_20B584050(v111);
          v120 = v159;
          sub_20C137C94();
          v121 = swift_allocObject();
          v122 = v171;
          *(v121 + 16) = sub_20BA65AFC;
          *(v121 + 24) = v122;
          v123 = swift_allocObject();
          *(v123 + 16) = sub_20BA66C80;
          *(v123 + 24) = v121;
          v124 = v160;
          v125 = v158;
          v126 = v137;
          (*(v160 + 16))(v158, v120, v137);
          v127 = (*(v124 + 80) + 16) & ~*(v124 + 80);
          v128 = (v157 + v127 + 7) & 0xFFFFFFFFFFFFFFF8;
          v129 = swift_allocObject();
          (*(v124 + 32))(v129 + v127, v125, v126);
          v130 = (v129 + v128);
          *v130 = sub_20B5F7764;
          v130[1] = v123;

          v131 = v136;
          sub_20C137C94();
          v132 = *(v124 + 8);
          v132(v120, v126);
          v133 = sub_20C137CB4();
          v134 = swift_allocObject();
          *(v134 + 16) = 0;
          *(v134 + 24) = 0;
          v133(sub_20B5DF6DC, v134);

          v132(v131, v126);
          (*(v169 + 8))(v166, v143);
          (*(v167 + 8))(v168, v153);
        }
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

void sub_20BA5F854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(char *, uint64_t, uint64_t), char a9, void (*a10)(id), void (*a11)(id))
{
  v176 = a6;
  v177 = a8;
  v174 = a4;
  v175 = a5;
  v173 = a3;
  v179 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v160 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v158 = &v135 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v159 = &v135 - v15;
  v157 = v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v135 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v20 - 8);
  v165 = &v135 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v169 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v156 = &v135 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = v23;
  MEMORY[0x28223BE20](v24);
  v166 = &v135 - v25;
  v163 = sub_20C1391C4();
  v162 = *(v163 - 8);
  MEMORY[0x28223BE20](v163);
  v164 = &v135 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_20C138A64();
  v167 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v168 = &v135 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  MEMORY[0x28223BE20](v29 - 8);
  v161 = &v135 - v30;
  v178 = sub_20C137C24();
  v171 = *(v178 - 8);
  MEMORY[0x28223BE20](v178);
  v170 = v31;
  v172 = &v135 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_20C13C554();
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v35 = (&v135 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v37 = Strong;
    v153 = v27;
    sub_20B51C88C(0, &qword_281100530);
    *v35 = sub_20C13D374();
    (*(v33 + 104))(v35, *MEMORY[0x277D85200], v32);
    v38 = sub_20C13C584();
    (*(v33 + 8))(v35, v32);
    if (v38)
    {
      v39 = OBJC_IVAR____TtC9SeymourUI34TVWorkoutPlanShowcaseBrickItemCell_tvArtworkView;
      [*&v37[OBJC_IVAR____TtC9SeymourUI34TVWorkoutPlanShowcaseBrickItemCell_tvArtworkView] setContentMode_];
      v40 = *&v37[v39];
      v41 = v179;
      v42 = sub_20B9F9964(v179, v40, a9 & 1);

      if ((v42 & 1) != 0 && (v143 = v22, v136 = v19, v137 = v12, v152 = a11, v154 = a10, v139 = v39, v149 = *&v37[v39], v147 = swift_allocObject(), swift_unknownObjectWeakInit(), v43 = v171, v44 = *(v171 + 16), v150 = a9 & 1, v45 = v172, v151 = v37, v46 = v178, v145 = v171 + 16, v144 = v44, v44(v172, v41, v178), v47 = *(v43 + 80), v148 = a7, v48 = (v47 + 24) & ~v47, v138 = v170 + 7, v49 = (v170 + 7 + v48) & 0xFFFFFFFFFFFFFFF8, v50 = (v49 + 23) & 0xFFFFFFFFFFFFFFF8, v51 = (v50 + 23) & 0xFFFFFFFFFFFFFFF8, v146 = (v51 + 15) & 0xFFFFFFFFFFFFFFF8, v142 = v47, v52 = swift_allocObject(), *(v52 + 16) = v147, v53 = *(v43 + 32), v54 = v45, LOBYTE(v45) = v150, v141 = v43 + 32, v140 = v53, v53(v52 + v48, v54, v46), v55 = (v52 + v49), v56 = v174, *v55 = v173, v55[1] = v56, v57 = (v52 + v50), v58 = v176, *v57 = v175, v57[1] = v58, *(v52 + v51) = v148, v59 = v52 + v146, *v59 = v177, *(v59 + 8) = v45, v60 = (v52 + ((v51 + 31) & 0xFFFFFFFFFFFFFFF8)), v61 = v154, v62 = v152, *v60 = v154, v60[1] = v62, v63 = (v149 + OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layoutHandler), v64 = *(v149 + OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layoutHandler), *v63 = sub_20BA657B0, v63[1] = v52, , , v65 = v62, , , sub_20B584050(v61), v37 = v151, v66 = v179, sub_20B583ECC(v64), , v67 = sub_20B627348(v66, v45), v67 > 0.0) && (v69 = v68, v68 > 0.0))
      {
        v70 = v67;
        v71 = v142;
        v149 = ~v142;
        v72 = v139;
        [*&v37[v139] setStackImage_];
        v73 = *&v37[v72];
        v74 = v161;
        v75 = v66;
        v76 = v178;
        v144(v161, v66, v178);
        (*(v171 + 56))(v74, 0, 1, v76);
        v77 = OBJC_IVAR____TtC9SeymourUI13TVArtworkView_artwork;
        swift_beginAccess();
        sub_20B69AB5C(v74, v73 + v77);
        swift_endAccess();
        v78 = *&v37[v72];
        sub_20B51C88C(0, &qword_27C762070);
        v79 = v75;
        sub_20C137BC4();
        v80 = sub_20C13D5A4();
        [v78 setBackgroundColor_];

        v81 = *&v37[v72] + OBJC_IVAR____TtC9SeymourUI13TVArtworkView_pendingArtworkSize;
        *v81 = v70;
        *(v81 + 8) = v69;
        *(v81 + 16) = 0;
        v82 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v83 = v172;
        v84 = v76;
        v85 = v144;
        v144(v172, v79, v84);
        v86 = (v71 + 16) & v149;
        v87 = v65;
        v88 = (v138 + v86) & 0xFFFFFFFFFFFFFFF8;
        v89 = (v88 + 15) & 0xFFFFFFFFFFFFFFF8;
        v90 = swift_allocObject();
        v91 = v90 + v86;
        v92 = v178;
        v140(v91, v83, v178);
        *(v90 + v88) = v82;
        v93 = (v90 + v89);
        *v93 = v70;
        v93[1] = v69;
        v171 = v90;
        v94 = (v90 + ((v89 + 23) & 0xFFFFFFFFFFFFFFF8));
        v95 = v92;
        v96 = v154;
        *v94 = v154;
        v94[1] = v87;
        v85(v83, v179, v92);
        (*(v162 + 104))(v164, *MEMORY[0x277D542A8], v163);

        sub_20B584050(v96);
        v97 = v168;
        sub_20C138A54();
        v98 = v165;
        sub_20B5F1ED8(v97, v165);
        v99 = v169;
        v100 = v143;
        if ((*(v169 + 48))(v98, 1, v143) == 1)
        {
          sub_20B520158(v98, &unk_27C766670);
          v101 = sub_20BA1DB84(&OBJC_IVAR____TtC9SeymourUI34TVWorkoutPlanShowcaseBrickItemCell_tvArtworkView);
          if (v96)
          {
            v96(v101);
          }

          else
          {
          }

          (*(v167 + 8))(v97, v153);
        }

        else
        {
          v102 = v95;
          v177 = *(v99 + 32);
          v103 = v166;
          v177(v166, v98, v100);
          v104 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v144(v83, v179, v102);
          v105 = (v142 + 40) & v149;
          v106 = v105 + v170;
          v107 = (v105 + v170) & 0xFFFFFFFFFFFFFFF8;
          v108 = v100;
          v109 = swift_allocObject();
          *(v109 + 2) = v104;
          v109[3] = v70;
          v109[4] = v69;
          v140(v109 + v105, v83, v102);
          *(v109 + v106) = v150;
          v110 = v109 + v107;
          v111 = v154;
          v112 = v152;
          *(v110 + 1) = v154;
          *(v110 + 2) = v112;
          v113 = swift_allocObject();
          *(v113 + 16) = sub_20BA657FC;
          *(v113 + 24) = v109;
          v114 = v169;
          v115 = v156;
          (*(v169 + 16))(v156, v103, v108);
          v116 = (*(v114 + 80) + 16) & ~*(v114 + 80);
          v117 = (v155 + v116 + 7) & 0xFFFFFFFFFFFFFFF8;
          v118 = swift_allocObject();
          v177((v118 + v116), v115, v108);
          v119 = (v118 + v117);
          *v119 = sub_20B5F7760;
          v119[1] = v113;
          sub_20B584050(v111);
          v120 = v159;
          sub_20C137C94();
          v121 = swift_allocObject();
          v122 = v171;
          *(v121 + 16) = sub_20BA657C8;
          *(v121 + 24) = v122;
          v123 = swift_allocObject();
          *(v123 + 16) = sub_20BA66C80;
          *(v123 + 24) = v121;
          v124 = v160;
          v125 = v158;
          v126 = v137;
          (*(v160 + 16))(v158, v120, v137);
          v127 = (*(v124 + 80) + 16) & ~*(v124 + 80);
          v128 = (v157 + v127 + 7) & 0xFFFFFFFFFFFFFFF8;
          v129 = swift_allocObject();
          (*(v124 + 32))(v129 + v127, v125, v126);
          v130 = (v129 + v128);
          *v130 = sub_20B5F7764;
          v130[1] = v123;

          v131 = v136;
          sub_20C137C94();
          v132 = *(v124 + 8);
          v132(v120, v126);
          v133 = sub_20C137CB4();
          v134 = swift_allocObject();
          *(v134 + 16) = 0;
          *(v134 + 24) = 0;
          v133(sub_20B5DF6DC, v134);

          v132(v131, v126);
          (*(v169 + 8))(v166, v143);
          (*(v167 + 8))(v168, v153);
        }
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

void sub_20BA60814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t (*)(), uint64_t, uint64_t, uint64_t), void (*a8)(char *, uint64_t, uint64_t), unsigned __int8 a9, void (*a10)(uint64_t), void (*a11)(uint64_t))
{
  v180 = a6;
  v181 = a8;
  v178 = a4;
  v179 = a5;
  v177 = a3;
  v184 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v165 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v163 = &v137 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v164 = &v137 - v15;
  v162 = v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v137 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v20 - 8);
  v170 = &v137 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v161 = &v137 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = v24;
  MEMORY[0x28223BE20](v25);
  v171 = &v137 - v26;
  v168 = sub_20C1391C4();
  v167 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v169 = &v137 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_20C138A64();
  v172 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v173 = &v137 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  MEMORY[0x28223BE20](v30 - 8);
  v166 = &v137 - v31;
  v32 = sub_20C137C24();
  v175 = *(v32 - 8);
  v176 = v32;
  MEMORY[0x28223BE20](v32);
  v174 = v33;
  v182 = &v137 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_20C13C554();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = (&v137 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v183 = Strong;
    sub_20B51C88C(0, &qword_281100530);
    *v37 = sub_20C13D374();
    (*(v35 + 104))(v37, *MEMORY[0x277D85200], v34);
    v39 = sub_20C13C584();
    (*(v35 + 8))(v37, v34);
    if (v39)
    {
      v40 = v183;
      v41 = &v183[OBJC_IVAR____TtC9SeymourUI30TVRootShowcaseCarouselItemCell_artworkView];
      [*&v183[OBJC_IVAR____TtC9SeymourUI30TVRootShowcaseCarouselItemCell_artworkView] setContentMode_];
      v42 = *v41;
      v43 = *(v41 + 1);
      LODWORD(v159) = a9;
      v44 = v184;
      if (sub_20BA640CC(v184, v42, v43, a9 & 1))
      {
        v144 = v23;
        v141 = v28;
        v145 = v22;
        v138 = v19;
        v139 = v12;
        v157 = a11;
        v158 = a10;
        v151 = *v41;
        v149 = *(v41 + 1);
        ObjectType = swift_getObjectType();
        v147 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v45 = v175;
        v46 = *(v175 + 16);
        v154 = a9 & 1;
        v148 = a7;
        v152 = v41;
        v47 = v182;
        v48 = v176;
        v155 = v175 + 16;
        v153 = v46;
        v46(v182, v44, v176);
        v49 = *(v45 + 80);
        v50 = (v49 + 24) & ~v49;
        v140 = v174 + 7;
        v51 = (v174 + 7 + v50) & 0xFFFFFFFFFFFFFFF8;
        v52 = (v51 + 23) & 0xFFFFFFFFFFFFFFF8;
        v53 = (v52 + 23) & 0xFFFFFFFFFFFFFFF8;
        v146 = (v53 + 15) & 0xFFFFFFFFFFFFFFF8;
        v156 = v49;
        v54 = swift_allocObject();
        *(v54 + 16) = v147;
        v143 = *(v45 + 32);
        v142 = v45 + 32;
        v143(v54 + v50, v47, v48);
        v55 = (v54 + v51);
        v56 = v178;
        *v55 = v177;
        v55[1] = v56;
        v57 = (v54 + v52);
        v58 = v180;
        *v57 = v179;
        v57[1] = v58;
        *(v54 + v53) = v148;
        v59 = v54 + v146;
        *v59 = v181;
        *(v59 + 8) = v154;
        v60 = (v54 + ((v53 + 31) & 0xFFFFFFFFFFFFFFF8));
        v61 = v158;
        v62 = v157;
        *v60 = v158;
        v60[1] = v62;
        v63 = v149;
        v148 = *(v149 + 152);

        sub_20B584050(v61);
        v148(sub_20BA66858, v54, ObjectType, v63);

        if (v159)
        {
          v64 = [objc_opt_self() mainScreen];
          [v64 scale];
          v66 = v65;

          v67 = sub_20C137BF4() / v66;
          v68 = sub_20C137C04() / v66;
          v69 = v152;
        }

        else
        {
          v69 = v152;
          [*v152 bounds];
          v67 = v70;
          v68 = v71;
        }

        v72 = v182;
        v73 = v153;
        if (v67 <= 0.0 || v68 <= 0.0)
        {
        }

        else
        {
          v159 = ~v156;
          v74 = v69[1];
          v75 = swift_getObjectType();
          v74[15](0, v75, v74);
          v76 = v69[1];
          v77 = swift_getObjectType();
          v78 = v166;
          v79 = v176;
          v73(v166, v184, v176);
          (*(v175 + 56))(v78, 0, 1, v79);
          v76[2](v78, v77, v76);
          v80 = *v69;
          sub_20B51C88C(0, &qword_27C762070);
          sub_20C137BC4();
          v81 = sub_20C13D5A4();
          [v80 setBackgroundColor_];

          v82 = v69[1];
          v83 = swift_getObjectType();
          v82[22](COERCE_DOUBLE(*&v67), COERCE_DOUBLE(*&v68), 0, v83, v82);
          v84 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v73(v72, v184, v79);
          v85 = (v156 + 16) & v159;
          v86 = v73;
          v87 = (v140 + v85) & 0xFFFFFFFFFFFFFFF8;
          v88 = (v87 + 15) & 0xFFFFFFFFFFFFFFF8;
          v89 = swift_allocObject();
          v143(v89 + v85, v72, v79);
          *(v89 + v87) = v84;
          v90 = (v89 + v88);
          v91 = v184;
          *v90 = v67;
          v90[1] = v68;
          v175 = v89;
          v92 = (v89 + ((v88 + 23) & 0xFFFFFFFFFFFFFFF8));
          v93 = v79;
          v94 = v158;
          v95 = v157;
          *v92 = v158;
          v92[1] = v95;
          v86(v72, v91, v79);
          (*(v167 + 104))(v169, *MEMORY[0x277D542A8], v168);

          sub_20B584050(v94);
          v96 = v173;
          v97 = v144;
          v98 = v183;
          sub_20C138A54();
          v99 = v170;
          sub_20B5F1F00(v96, v170);
          v100 = v145;
          if ((*(v97 + 48))(v99, 1, v145) == 1)
          {
            sub_20B520158(v99, &unk_27C766670);
            v101 = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI30TVRootShowcaseCarouselItemCell_artworkView);
            if (v158)
            {
              v158(v101);
            }

            else
            {
            }

            (*(v172 + 8))(v96, v141);
          }

          else
          {
            v102 = v93;
            v181 = *(v97 + 32);
            v103 = v171;
            v181(v171, v99, v100);
            v104 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v153(v72, v91, v102);
            v105 = (v156 + 40) & v159;
            v106 = v105 + v174;
            v107 = (v105 + v174) & 0xFFFFFFFFFFFFFFF8;
            v108 = swift_allocObject();
            *(v108 + 16) = v104;
            *(v108 + 24) = v67;
            *(v108 + 32) = v68;
            v143(v108 + v105, v72, v102);
            *(v108 + v106) = v154;
            v109 = v108 + v107;
            v110 = v158;
            v111 = v157;
            *(v109 + 8) = v158;
            *(v109 + 16) = v111;
            v112 = swift_allocObject();
            *(v112 + 16) = sub_20BA668A4;
            *(v112 + 24) = v108;
            v113 = v144;
            v114 = v161;
            v115 = v103;
            v116 = v145;
            (*(v144 + 16))(v161, v115, v145);
            v117 = v113;
            v118 = (*(v113 + 80) + 16) & ~*(v113 + 80);
            v119 = (v160 + v118 + 7) & 0xFFFFFFFFFFFFFFF8;
            v120 = swift_allocObject();
            v181((v120 + v118), v114, v116);
            v121 = (v120 + v119);
            *v121 = sub_20B5F7760;
            v121[1] = v112;
            sub_20B584050(v110);
            v122 = v164;
            sub_20C137C94();
            v123 = swift_allocObject();
            v124 = v175;
            *(v123 + 16) = sub_20BA66870;
            *(v123 + 24) = v124;
            v125 = swift_allocObject();
            *(v125 + 16) = sub_20BA66C80;
            *(v125 + 24) = v123;
            v126 = v165;
            v127 = v163;
            v128 = v139;
            (*(v165 + 16))(v163, v122, v139);
            v129 = (*(v126 + 80) + 16) & ~*(v126 + 80);
            v130 = (v162 + v129 + 7) & 0xFFFFFFFFFFFFFFF8;
            v131 = swift_allocObject();
            (*(v126 + 32))(v131 + v129, v127, v128);
            v132 = (v131 + v130);
            *v132 = sub_20B5F7764;
            v132[1] = v125;

            v133 = v138;
            sub_20C137C94();
            v134 = *(v126 + 8);
            v134(v122, v128);
            v135 = sub_20C137CB4();
            v136 = swift_allocObject();
            *(v136 + 16) = 0;
            *(v136 + 24) = 0;
            v135(sub_20B5DF6DC, v136);

            v134(v133, v128);
            (*(v117 + 8))(v171, v145);
            (*(v172 + 8))(v173, v141);
          }
        }
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

void sub_20BA6189C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(char *, uint64_t, uint64_t), unsigned __int8 a9, void (*a10)(uint64_t), void (*a11)(uint64_t))
{
  v178 = a6;
  v179 = a8;
  v176 = a4;
  v177 = a5;
  v175 = a3;
  v182 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v164 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v162 = &v137 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v163 = &v137 - v15;
  v161 = v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v137 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v20 - 8);
  v170 = &v137 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v172 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v160 = &v137 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = v23;
  MEMORY[0x28223BE20](v24);
  v165 = &v137 - v25;
  v168 = sub_20C1391C4();
  v167 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v169 = &v137 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_20C138A64();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v171 = &v137 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  MEMORY[0x28223BE20](v30 - 8);
  v166 = &v137 - v31;
  v181 = sub_20C137C24();
  v174 = *(v181 - 8);
  MEMORY[0x28223BE20](v181);
  v173 = v32;
  v180 = &v137 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_20C13C554();
  v34 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v36 = (&v137 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v156 = v28;
    sub_20B51C88C(0, &qword_281100530);
    *v36 = sub_20C13D374();
    (*(v34 + 104))(v36, *MEMORY[0x277D85200], v33);
    v37 = sub_20C13C584();
    (*(v34 + 8))(v36, v33);
    if (v37)
    {
      v157 = v22;
      v38 = Strong;
      v39 = &Strong[OBJC_IVAR____TtC9SeymourUI19CatalogTipPlainView_artworkView];
      v40 = a7;
      [*&Strong[OBJC_IVAR____TtC9SeymourUI19CatalogTipPlainView_artworkView] setContentMode_];
      v41 = v182;
      if ((sub_20BA640CC(v182, *v39, *(v39 + 1), a9 & 1) & 1) == 0)
      {

        return;
      }

      v140 = v27;
      v137 = v19;
      v138 = v12;
      v158 = a11;
      v155 = a10;
      v152 = *v39;
      v149 = *(v39 + 1);
      ObjectType = swift_getObjectType();
      v148 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v150 = a9;
      v42 = v174;
      v43 = *(v174 + 16);
      v154 = a9 & 1;
      v153 = v39;
      v45 = v180;
      v44 = v181;
      v145 = v174 + 16;
      v143 = v43;
      v43(v180, v41, v181);
      v46 = *(v42 + 80);
      v47 = (v46 + 24) & ~v46;
      v139 = v173 + 7;
      v48 = (v173 + 7 + v47) & 0xFFFFFFFFFFFFFFF8;
      v49 = (v48 + 23) & 0xFFFFFFFFFFFFFFF8;
      v50 = (v49 + 23) & 0xFFFFFFFFFFFFFFF8;
      v147 = ((v50 + 15) & 0xFFFFFFFFFFFFFFF8);
      v144 = v46;
      v51 = swift_allocObject();
      v146 = v40;
      v52 = v51;
      *(v51 + 16) = v148;
      v53 = *(v42 + 32);
      v142 = v42 + 32;
      v141 = v53;
      v53(v51 + v47, v45, v44);
      v54 = (v52 + v48);
      v55 = v176;
      *v54 = v175;
      v54[1] = v55;
      v56 = (v52 + v49);
      v57 = v178;
      *v56 = v177;
      v56[1] = v57;
      *(v52 + v50) = v146;
      v58 = v147 + v52;
      *v58 = v179;
      v58[8] = v154;
      v59 = (v52 + ((v50 + 31) & 0xFFFFFFFFFFFFFFF8));
      v60 = v155;
      v61 = v158;
      *v59 = v155;
      v59[1] = v61;
      v62 = v149;
      v147 = *(v149 + 152);

      sub_20B584050(v60);
      v147(sub_20BA66C70, v52, ObjectType, v62);

      if (v150)
      {
        v63 = [objc_opt_self() mainScreen];
        [v63 scale];
        v65 = v64;

        v66 = v182;
        v67 = sub_20C137BF4() / v65;
        v68 = sub_20C137C04() / v65;
        v69 = v66;
        v70 = v153;
      }

      else
      {
        v70 = v153;
        [*v153 bounds];
        v67 = v71;
        v68 = v72;
        v69 = v182;
      }

      if (v67 <= 0.0 || v68 <= 0.0)
      {
      }

      else
      {
        v73 = v144;
        v153 = ~v144;
        v74 = v70[1];
        v75 = swift_getObjectType();
        v74[15](0, v75, v74);
        v76 = v70[1];
        v77 = swift_getObjectType();
        v78 = v166;
        v79 = v181;
        v80 = v143;
        v143(v166, v69, v181);
        (*(v174 + 56))(v78, 0, 1, v79);
        v76[2](v78, v77, v76);
        v81 = *v70;
        sub_20B51C88C(0, &qword_27C762070);
        sub_20C137BC4();
        v82 = sub_20C13D5A4();
        [v81 setBackgroundColor_];

        v83 = v70[1];
        v84 = swift_getObjectType();
        v83[22](COERCE_DOUBLE(*&v67), COERCE_DOUBLE(*&v68), 0, v84, v83);
        v85 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v86 = v180;
        v80(v180, v69, v79);
        v87 = (v73 + 16) & v153;
        v88 = (v139 + v87) & 0xFFFFFFFFFFFFFFF8;
        v89 = (v88 + 15) & 0xFFFFFFFFFFFFFFF8;
        v90 = (v89 + 23) & 0xFFFFFFFFFFFFFFF8;
        v91 = swift_allocObject();
        v141(v91 + v87, v86, v79);
        *(v91 + v88) = v85;
        v92 = (v91 + v89);
        v93 = v182;
        v94 = Strong;
        *v92 = v67;
        v92[1] = v68;
        v174 = v91;
        v95 = (v91 + v90);
        v96 = v155;
        v97 = v158;
        *v95 = v155;
        v95[1] = v97;
        v80(v86, v93, v79);
        (*(v167 + 104))(v169, *MEMORY[0x277D542A8], v168);

        sub_20B584050(v96);
        v98 = v171;
        sub_20C138A54();
        v99 = &v94[OBJC_IVAR____TtC9SeymourUI19CatalogTipPlainView_delegate];
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v100 = *(v99 + 1);
          v101 = swift_getObjectType();
          v102 = v170;
          (*(v100 + 8))(v94, v98, v101, v100);
          swift_unknownObjectRelease();
          v103 = v172;
          v104 = v157;
          if ((*(v172 + 48))(v102, 1, v157) != 1)
          {
            v179 = *(v103 + 32);
            v179(v165, v102, v104);
            v105 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v107 = v180;
            v106 = v181;
            v143(v180, v182, v181);
            v108 = (v144 + 40) & v153;
            v109 = v108 + v173;
            v110 = (v108 + v173) & 0xFFFFFFFFFFFFFFF8;
            v111 = swift_allocObject();
            *(v111 + 16) = v105;
            *(v111 + 24) = v67;
            *(v111 + 32) = v68;
            v141(v111 + v108, v107, v106);
            *(v111 + v109) = v154;
            v112 = v111 + v110;
            *(v112 + 8) = v96;
            *(v112 + 16) = v158;
            v113 = swift_allocObject();
            *(v113 + 16) = sub_20BA66C58;
            *(v113 + 24) = v111;
            v114 = v172;
            v115 = v160;
            (*(v172 + 16))(v160, v165, v104);
            v116 = v114;
            v117 = (*(v114 + 80) + 16) & ~*(v114 + 80);
            v118 = (v159 + v117 + 7) & 0xFFFFFFFFFFFFFFF8;
            v119 = swift_allocObject();
            v179((v119 + v117), v115, v104);
            v120 = (v119 + v118);
            *v120 = sub_20B5F7760;
            v120[1] = v113;
            sub_20B584050(v96);
            v121 = v163;
            sub_20C137C94();
            v122 = swift_allocObject();
            v123 = v174;
            *(v122 + 16) = sub_20BA66C74;
            *(v122 + 24) = v123;
            v124 = swift_allocObject();
            *(v124 + 16) = sub_20BA66C80;
            *(v124 + 24) = v122;
            v125 = v164;
            v126 = v162;
            v127 = v138;
            (*(v164 + 16))(v162, v121, v138);
            v128 = (*(v125 + 80) + 16) & ~*(v125 + 80);
            v129 = (v161 + v128 + 7) & 0xFFFFFFFFFFFFFFF8;
            v130 = swift_allocObject();
            (*(v125 + 32))(v130 + v128, v126, v127);
            v131 = (v130 + v129);
            *v131 = sub_20B5F7764;
            v131[1] = v124;

            v132 = v137;
            sub_20C137C94();
            v133 = *(v125 + 8);
            v133(v121, v127);
            v134 = sub_20C137CB4();
            v135 = swift_allocObject();
            *(v135 + 16) = 0;
            *(v135 + 24) = 0;
            v134(sub_20B5DF6DC, v135);

            v133(v132, v127);
            (*(v116 + 8))(v165, v157);
            (*(v156 + 8))(v171, v140);
            return;
          }
        }

        else
        {
          v102 = v170;
          (*(v172 + 56))(v170, 1, 1, v157);
        }

        sub_20B520158(v102, &unk_27C766670);
        v136 = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI19CatalogTipPlainView_artworkView);
        if (v96)
        {
          v96(v136);
        }

        else
        {
        }

        (*(v156 + 8))(v98, v140);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_20BA629E0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void (*a7)(void, void, double, double), double a8, double a9)
{
  v51 = a5;
  v52 = a6;
  v50 = a4;
  v55 = a3;
  v56 = a1;
  v13 = sub_20C137C24();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_20C13BB84();
  v53 = *(v17 - 8);
  v54 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_20C13C554();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = (&v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20B51C88C(0, &qword_281100530);
  *v23 = sub_20C13D374();
  (*(v21 + 104))(v23, *MEMORY[0x277D85200], v20);
  v24 = sub_20C13C584();
  (*(v21 + 8))(v23, v20);
  if ((v24 & 1) == 0)
  {
    __break(1u);
    return;
  }

  sub_20C13B4A4();
  (*(v14 + 16))(v16, a2, v13);
  v25 = v56;
  v26 = v56;
  v27 = sub_20C13BB74();
  v28 = sub_20C13D1D4();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v49 = a7;
    v31 = v30;
    v59[0] = v30;
    *v29 = 136315650;
    *(v29 + 4) = sub_20B51E694(0xD000000000000059, 0x800000020C1A4550, v59);
    *(v29 + 12) = 2082;
    sub_20BA64840(&qword_27C769710);
    v32 = sub_20C13DFA4();
    v34 = v33;
    (*(v14 + 8))(v16, v13);
    v35 = sub_20B51E694(v32, v34, v59);

    *(v29 + 14) = v35;
    *(v29 + 22) = 2082;
    swift_getErrorValue();
    v36 = MEMORY[0x20F2F5850](v57, v58);
    v38 = sub_20B51E694(v36, v37, v59);

    *(v29 + 24) = v38;
    _os_log_impl(&dword_20B517000, v27, v28, "%s failed to fetch artwork: %{public}s, error: %{public}s", v29, 0x20u);
    swift_arrayDestroy();
    v39 = v31;
    a7 = v49;
    MEMORY[0x20F2F6A40](v39, -1, -1);
    MEMORY[0x20F2F6A40](v29, -1, -1);
  }

  else
  {

    (*(v14 + 8))(v16, v13);
  }

  (*(v53 + 8))(v19, v54);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v41 = Strong + *v52, v42 = *(v41 + 8), v43 = Strong, v44 = *v41, v43, ObjectType = swift_getObjectType(), v46 = (*(v42 + 112))(ObjectType, v42), v44, !v46))
  {
    swift_beginAccess();
    v47 = swift_unknownObjectWeakLoadStrong();
    if (!v47)
    {
      return;
    }

    v46 = v47;
    a7(v50, v51, a8, a9);
  }
}

void sub_20BA63100(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void (*a7)(void, void, double, double), double a8, double a9)
{
  v48 = a5;
  v49 = a6;
  v47 = a4;
  v52 = a3;
  v53 = a1;
  v13 = sub_20C137C24();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_20C13BB84();
  v50 = *(v17 - 8);
  v51 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_20C13C554();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = (&v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20B51C88C(0, &qword_281100530);
  *v23 = sub_20C13D374();
  (*(v21 + 104))(v23, *MEMORY[0x277D85200], v20);
  v24 = sub_20C13C584();
  (*(v21 + 8))(v23, v20);
  if ((v24 & 1) == 0)
  {
    __break(1u);
    return;
  }

  sub_20C13B4A4();
  (*(v14 + 16))(v16, a2, v13);
  v25 = v53;
  v26 = v53;
  v27 = sub_20C13BB74();
  v28 = sub_20C13D1D4();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v46 = a7;
    v31 = v30;
    v56[0] = v30;
    *v29 = 136315650;
    *(v29 + 4) = sub_20B51E694(0xD000000000000059, 0x800000020C1A4550, v56);
    *(v29 + 12) = 2082;
    sub_20BA64840(&qword_27C769710);
    v32 = sub_20C13DFA4();
    v34 = v33;
    (*(v14 + 8))(v16, v13);
    v35 = sub_20B51E694(v32, v34, v56);

    *(v29 + 14) = v35;
    *(v29 + 22) = 2082;
    swift_getErrorValue();
    v36 = MEMORY[0x20F2F5850](v54, v55);
    v38 = sub_20B51E694(v36, v37, v56);

    *(v29 + 24) = v38;
    _os_log_impl(&dword_20B517000, v27, v28, "%s failed to fetch artwork: %{public}s, error: %{public}s", v29, 0x20u);
    swift_arrayDestroy();
    v39 = v31;
    a7 = v46;
    MEMORY[0x20F2F6A40](v39, -1, -1);
    MEMORY[0x20F2F6A40](v29, -1, -1);
  }

  else
  {

    (*(v14 + 8))(v16, v13);
  }

  (*(v50 + 8))(v19, v51);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v41 = Strong, v42 = *(Strong + *v49), v41, v43 = [v42 stackImage], v42, !v43))
  {
    swift_beginAccess();
    v44 = swift_unknownObjectWeakLoadStrong();
    if (!v44)
    {
      return;
    }

    v43 = v44;
    a7(v47, v48, a8, a9);
  }
}

void sub_20BA639B0(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, void *a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = *(Strong + *a5);

    [v10 setStackImage_];
  }

  if (a3)
  {
    a3();
  }
}

void sub_20BA63A5C(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4, void *a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong + *a5;
    v10 = *(v9 + 8);
    v11 = Strong;
    v12 = *v9;

    ObjectType = swift_getObjectType();
    v14 = *(v10 + 120);
    v15 = a1;
    v14(a1, ObjectType, v10);
  }

  if (a3)
  {
    a3();
  }
}

uint64_t sub_20BA63B40(void **a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;

  v7 = v5;

  return sub_20C137C94();
}

void sub_20BA63C04()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC9SeymourUI19CatalogTipPlainView_artworkView);
  v3 = objc_allocWithZone(type metadata accessor for ArtworkView());
  v4 = sub_20B91B5FC(1);
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  *v2 = v4;
  v2[1] = &off_2822B63E8;
  v5 = OBJC_IVAR____TtC9SeymourUI19CatalogTipPlainView_titleLabel;
  v6 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  v7 = objc_opt_self();
  v8 = [v7 preferredFontForTextStyle_];
  [v6 setFont_];

  [v6 setNumberOfLines_];
  [v6 setAdjustsFontSizeToFitWidth_];
  [v6 setMinimumScaleFactor_];
  [v6 setLineBreakMode_];
  [v6 setAdjustsFontForContentSizeCategory_];
  *(v1 + v5) = v6;
  v9 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  v10 = objc_opt_self();
  v11 = [v10 secondaryLabelColor];
  [v9 setTextColor_];

  v12 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76968] compatibleWithTraitCollection:0];
  v13 = [v12 fontDescriptorWithSymbolicTraits_];
  if (v13)
  {
    v14 = v13;

    v12 = v14;
  }

  v15 = OBJC_IVAR____TtC9SeymourUI19CatalogTipPlainView_subtitleLabel;
  v16 = [v7 fontWithDescriptor:v12 size:0.0];

  [v9 setFont_];
  [v9 setNumberOfLines_];
  [v9 setAdjustsFontSizeToFitWidth_];
  [v9 setMinimumScaleFactor_];
  [v9 setLineBreakMode_];
  [v9 setAdjustsFontForContentSizeCategory_];
  *(v1 + v15) = v9;
  v17 = OBJC_IVAR____TtC9SeymourUI19CatalogTipPlainView_separatorView;
  v18 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v18 setTranslatesAutoresizingMaskIntoConstraints_];
  v19 = [v10 systemGray3Color];
  [v18 setBackgroundColor_];

  *(v1 + v17) = v18;
  v20 = OBJC_IVAR____TtC9SeymourUI19CatalogTipPlainView_detailLabel;
  v21 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v21 setTranslatesAutoresizingMaskIntoConstraints_];
  v22 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v21 setTextColor_];

  v23 = [v7 preferredFontForTextStyle_];
  [v21 setFont_];

  [v21 setNumberOfLines_];
  [v21 setMinimumScaleFactor_];
  [v21 setLineBreakMode_];
  [v21 setAdjustsFontForContentSizeCategory_];
  *(v1 + v20) = v21;
  *(v1 + OBJC_IVAR____TtC9SeymourUI19CatalogTipPlainView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20BA640CC(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v43 = a4;
  v7 = sub_20C137C24();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v39 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7626D0);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v39 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v44 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v39 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v39 - v20;
  ObjectType = swift_getObjectType();
  v23 = *(a3 + 8);
  v40 = ObjectType;
  v41 = a2;
  v42 = a3;
  v23(ObjectType, a3);
  (*(v8 + 16))(v19, a1, v7);
  (*(v8 + 56))(v19, 0, 1, v7);
  v24 = *(v11 + 56);
  sub_20B654504(v21, v13);
  sub_20B654504(v19, &v13[v24]);
  v25 = *(v8 + 48);
  if (v25(v13, 1, v7) != 1)
  {
    sub_20B654504(v13, v44);
    if (v25(&v13[v24], 1, v7) != 1)
    {
      v27 = v39;
      (*(v8 + 32))(v39, &v13[v24], v7);
      sub_20BA64840(&qword_27C7626D8);
      v28 = v44;
      v29 = sub_20C13C894();
      v30 = *(v8 + 8);
      v30(v27, v7);
      sub_20B520158(v19, &unk_27C766680);
      sub_20B520158(v21, &unk_27C766680);
      v30(v28, v7);
      sub_20B520158(v13, &unk_27C766680);
      v26 = v29 ^ 1;
      if ((v29 ^ 1) & 1) != 0 || (v43)
      {
        return v26 & 1;
      }

      goto LABEL_10;
    }

    sub_20B520158(v19, &unk_27C766680);
    sub_20B520158(v21, &unk_27C766680);
    (*(v8 + 8))(v44, v7);
LABEL_7:
    sub_20B520158(v13, &qword_27C7626D0);
    v26 = 1;
    return v26 & 1;
  }

  sub_20B520158(v19, &unk_27C766680);
  sub_20B520158(v21, &unk_27C766680);
  if (v25(&v13[v24], 1, v7) != 1)
  {
    goto LABEL_7;
  }

  sub_20B520158(v13, &unk_27C766680);
  if (v43)
  {
    v26 = 0;
    return v26 & 1;
  }

LABEL_10:
  [v41 bounds];
  v31 = v42;
  v32 = v40;
  v33 = (*(v42 + 112))(v40, v42);
  if (v33)
  {
    v34 = v33;
    [v33 size];
  }

  else
  {
    (*(v31 + 168))(v32, v31);
  }

  sub_20C13D504();
  v37 = round(fabs(v36)) > 1.0;
  v26 = round(fabs(v35)) > 1.0 || v37;
  return v26 & 1;
}

unint64_t sub_20BA646BC()
{
  result = qword_27C769708;
  if (!qword_27C769708)
  {
    sub_20B51C88C(255, &qword_27C769700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C769708);
  }

  return result;
}

uint64_t sub_20BA64840(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_20C137C24();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_20BA648C8(uint64_t (*a1)(void, unint64_t, void, void, void, void, void, void, char, void, void))
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v1 + v8 + 8);
  return a1(*(v1 + 16), v1 + v4, *(v1 + v5), *(v1 + v5 + 8), *(v1 + v6), *(v1 + v6 + 8), *(v1 + v7), *(v1 + v8), v10, *(v1 + ((v7 + 31) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v7 + 31) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_20BA668D0(uint64_t a1, uint64_t (*a2)(uint64_t, void, unint64_t, void, void, void, double, double))
{
  v5 = *(sub_20C137C24() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  return a2(a1, *(v2 + 16), v2 + v6, *(v2 + v6 + *(v5 + 64)), *(v2 + ((v6 + *(v5 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((v6 + *(v5 + 64)) & 0xFFFFFFFFFFFFFFF8) + 16), *(v2 + 24), *(v2 + 32));
}

uint64_t objectdestroy_38Tm()
{

  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20BA66A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, unint64_t, void, void, void, uint64_t, uint64_t, double, double))
{
  v9 = *(sub_20C137C24() - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  return a4(a1, v4 + v10, *(v4 + v11), *(v4 + ((((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v4 + ((((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8), a2, a3, *(v4 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v4 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_20BA66AD8(void **a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  sub_20B5F31EC(*a1, *(v1 + 16), (v1 + v4), *(v1 + v4 + *(v3 + 64)), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 16));
}

uint64_t sub_20BA66B8C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_20BA66CE4()
{
  sub_20C1380F4();
  v0 = objc_opt_self();
  v1 = [v0 mainScreen];
  [v1 nativeBounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v14.origin.x = v3;
  v14.origin.y = v5;
  v14.size.width = v7;
  v14.size.height = v9;
  v10 = [v0 mainScreen];
  [v10 nativeScale];

  v11 = sub_20C138104();
  result = sub_20C138104();
  v13 = 7.0;
  if (v11 == result)
  {
    v13 = 16.0;
  }

  qword_27C769718 = *&v13;
  return result;
}

uint64_t sub_20BA66DD0()
{
  sub_20C1380F4();
  v0 = objc_opt_self();
  v1 = [v0 mainScreen];
  [v1 nativeBounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v14.origin.x = v3;
  v14.origin.y = v5;
  v14.size.width = v7;
  v14.size.height = v9;
  v10 = [v0 mainScreen];
  [v10 nativeScale];

  v11 = sub_20C138104();
  result = sub_20C138104();
  v13 = 275.0;
  if (v11 == result)
  {
    v13 = 650.0;
  }

  qword_27C769720 = *&v13;
  return result;
}

char *SummaryBurnBarView.init(workoutActivityType:stringBuilder:)(uint64_t a1, char a2, uint64_t a3)
{
  v7 = *(a3 + 48);
  __src[2] = *(a3 + 32);
  __src[3] = v7;
  v34 = *(a3 + 64);
  v8 = *(a3 + 16);
  __src[0] = *a3;
  __src[1] = v8;
  v9 = OBJC_IVAR____TtC9SeymourUI18SummaryBurnBarView_headerLabelStack;
  v10 = [objc_allocWithZone(type metadata accessor for SessionStackedLabelView()) initWithFrame_];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v3[v9] = v10;
  v11 = OBJC_IVAR____TtC9SeymourUI18SummaryBurnBarView_burnBarSummary;
  v12 = [objc_allocWithZone(type metadata accessor for BurnBarSummary()) initWithFrame_];
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v3[v11] = v12;
  v13 = &v3[OBJC_IVAR____TtC9SeymourUI18SummaryBurnBarView_stringBuilder];
  v14 = *(a3 + 48);
  *(v13 + 2) = *(a3 + 32);
  *(v13 + 3) = v14;
  *(v13 + 32) = *(a3 + 64);
  v15 = *(a3 + 16);
  *v13 = *a3;
  *(v13 + 1) = v15;
  sub_20B7A3194(__src, v31);
  v30.receiver = v3;
  v30.super_class = type metadata accessor for SummaryBurnBarView();
  v16 = objc_msgSendSuper2(&v30, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v17 = *&v16[OBJC_IVAR____TtC9SeymourUI18SummaryBurnBarView_headerLabelStack];
  v18 = v16;
  [v18 addSubview_];
  v19 = OBJC_IVAR____TtC9SeymourUI18SummaryBurnBarView_burnBarSummary;
  [v18 addSubview_];
  if ((a2 & 1) == 0)
  {
    v20 = *&v18[v19];
    sub_20C11D61C(a1);
  }

  v21 = *&v18[v19];
  v31[0] = *&v21[OBJC_IVAR____TtC9SeymourUI14BurnBarSummary_stringBuilder];
  v23 = *&v21[OBJC_IVAR____TtC9SeymourUI14BurnBarSummary_stringBuilder + 32];
  v22 = *&v21[OBJC_IVAR____TtC9SeymourUI14BurnBarSummary_stringBuilder + 48];
  v24 = *&v21[OBJC_IVAR____TtC9SeymourUI14BurnBarSummary_stringBuilder + 16];
  v32 = *&v21[OBJC_IVAR____TtC9SeymourUI14BurnBarSummary_stringBuilder + 64];
  v31[2] = v23;
  v31[3] = v22;
  v31[1] = v24;
  memmove(&v21[OBJC_IVAR____TtC9SeymourUI14BurnBarSummary_stringBuilder], __src, 0x42uLL);
  v25 = v21;
  sub_20B520158(v31, &qword_27C769740);

  v26 = *&v18[v19];
  v27 = (sub_20C1380F4() & 0xF) == 3;
  v26[OBJC_IVAR____TtC9SeymourUI14BurnBarSummary_style] = v27;
  sub_20C11D420();
  [v26 setNeedsLayout];

  sub_20BA6717C();
  v28 = sub_20C13C914();
  [v18 setAccessibilityIdentifier_];

  return v18;
}

void sub_20BA6717C()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC9SeymourUI18SummaryBurnBarView_burnBarSummary];
  if (qword_27C7608C8 != -1)
  {
    swift_once();
  }

  [v2 sizeThatFits_];
  v4 = v3;
  v6 = v5;
  v31 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_20C151DF0;
  v8 = *&v1[OBJC_IVAR____TtC9SeymourUI18SummaryBurnBarView_headerLabelStack];
  v9 = [v8 leadingAnchor];
  v10 = [v1 leadingAnchor];
  v11 = [v9 constraintEqualToAnchor_];

  *(v7 + 32) = v11;
  v12 = [v8 trailingAnchor];
  v13 = [v1 trailingAnchor];
  v14 = [v12 constraintEqualToAnchor_];

  *(v7 + 40) = v14;
  v15 = [v8 topAnchor];
  v16 = [v1 topAnchor];
  v17 = [v15 constraintEqualToAnchor_];

  *(v7 + 48) = v17;
  v18 = [v2 topAnchor];
  v19 = [v8 bottomAnchor];
  if (qword_27C7608C0 != -1)
  {
    swift_once();
  }

  v20 = [v18 constraintEqualToAnchor:v19 constant:{*&qword_27C769718, v31}];

  *(v7 + 56) = v20;
  v21 = [v2 leadingAnchor];
  v22 = [v1 leadingAnchor];
  v23 = [v21 constraintEqualToAnchor_];

  *(v7 + 64) = v23;
  v24 = [v2 trailingAnchor];
  v25 = [v1 trailingAnchor];
  v26 = [v24 constraintLessThanOrEqualToAnchor_];

  *(v7 + 72) = v26;
  v27 = [v2 widthAnchor];
  v28 = [v27 constraintEqualToConstant_];

  *(v7 + 80) = v28;
  v29 = [v2 heightAnchor];
  v30 = [v29 constraintEqualToConstant_];

  *(v7 + 88) = v30;
  sub_20B5E29D0();
  v33 = sub_20C13CC54();

  [v32 activateConstraints_];
}

id sub_20BA675CC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AE0);
  MEMORY[0x28223BE20](v3 - 8);
  v56 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v53 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769748);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v53 - v9;
  v11 = sub_20C133CB4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v1;
  v15 = *&v1[OBJC_IVAR____TtC9SeymourUI18SummaryBurnBarView_headerLabelStack];
  v16 = type metadata accessor for SummaryBurnBarMetricViewModel();
  [*(v15 + OBJC_IVAR____TtC9SeymourUI23SessionStackedLabelView_primaryLabel) setAttributedText_];
  v17 = *(a1 + *(v16 + 28));
  v18 = OBJC_IVAR____TtC9SeymourUI23SessionStackedLabelView_secondaryLabel;
  [*(v15 + OBJC_IVAR____TtC9SeymourUI23SessionStackedLabelView_secondaryLabel) setHidden_];
  [*(v15 + v18) setAttributedText_];
  sub_20B52F9E8(a1, v10, &qword_27C769748);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_20B520158(v10, &qword_27C769748);
    v19 = v57;
    v20 = *&v57[OBJC_IVAR____TtC9SeymourUI18SummaryBurnBarView_burnBarSummary];
    v21 = sub_20C1337A4();
    (*(*(v21 - 8) + 56))(v7, 1, 1, v21);
    v22 = OBJC_IVAR____TtC9SeymourUI14BurnBarSummary_scoreMetric;
    swift_beginAccess();
    sub_20BA67E0C(v7, v20 + v22);
    swift_endAccess();
    v23 = v20 + v22;
    v24 = v56;
    sub_20B52F9E8(v23, v56, &unk_27C768AE0);
    sub_20C11D770(v24);
    sub_20B520158(v24, &unk_27C768AE0);
    sub_20B520158(v7, &unk_27C768AE0);
    v25 = v19;
  }

  else
  {
    v54 = v12;
    v26 = *(v12 + 32);
    v55 = v11;
    v26(v14, v10, v11);
    v27 = v57;
    v28 = *&v57[OBJC_IVAR____TtC9SeymourUI18SummaryBurnBarView_burnBarSummary];
    sub_20C133CA4();
    v29 = sub_20C1337A4();
    (*(*(v29 - 8) + 56))(v7, 0, 1, v29);
    v30 = OBJC_IVAR____TtC9SeymourUI14BurnBarSummary_scoreMetric;
    swift_beginAccess();
    sub_20BA67E0C(v7, v28 + v30);
    swift_endAccess();
    v31 = v28 + v30;
    v32 = v56;
    sub_20B52F9E8(v31, v56, &unk_27C768AE0);
    sub_20C11D770(v32);
    sub_20B520158(v32, &unk_27C768AE0);
    sub_20B520158(v7, &unk_27C768AE0);
    v33 = *&v27[OBJC_IVAR____TtC9SeymourUI18SummaryBurnBarView_stringBuilder + 16];
    v34 = *&v27[OBJC_IVAR____TtC9SeymourUI18SummaryBurnBarView_stringBuilder + 48];
    v66 = *&v27[OBJC_IVAR____TtC9SeymourUI18SummaryBurnBarView_stringBuilder + 32];
    v67 = v34;
    v35 = *&v27[OBJC_IVAR____TtC9SeymourUI18SummaryBurnBarView_stringBuilder + 16];
    v65[0] = *&v27[OBJC_IVAR____TtC9SeymourUI18SummaryBurnBarView_stringBuilder];
    v65[1] = v35;
    v62 = v66;
    v63 = *&v27[OBJC_IVAR____TtC9SeymourUI18SummaryBurnBarView_stringBuilder + 48];
    v68 = *&v27[OBJC_IVAR____TtC9SeymourUI18SummaryBurnBarView_stringBuilder + 64];
    v64 = *&v27[OBJC_IVAR____TtC9SeymourUI18SummaryBurnBarView_stringBuilder + 64];
    v61 = v33;
    v60 = v65[0];
    sub_20B7A3194(v65, v58);
    sub_20C133C94();
    sub_20BAABBCC(v36);
    v25 = v27;
    v58[2] = v62;
    v58[3] = v63;
    v59 = v64;
    v58[1] = v61;
    v58[0] = v60;
    sub_20B7A3B8C(v58);
    v37 = sub_20C13C914();

    sub_20C133C94();
    v39 = v38;
    sub_20C133C54();
    v41 = v40;
    sub_20C133C74();
    v43 = v42;
    sub_20C133C84();
    v45 = v44;
    sub_20C133C64();
    LODWORD(v47) = v46;
    LODWORD(v48) = v39;
    LODWORD(v49) = v41;
    LODWORD(v50) = v43;
    LODWORD(v51) = v45;
    [v27 updateBurnBarAccessibility:v37 personalScore:v48 low:v49 lowMiddle:v50 highMiddle:v51 high:v47];

    (*(v54 + 8))(v14, v55);
  }

  return [v25 invalidateIntrinsicContentSize];
}

id SummaryBurnBarView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id SummaryBurnBarView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SummaryBurnBarView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20BA67E0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AE0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_20BA67EE0()
{
  v1 = OBJC_IVAR____TtC9SeymourUI18SummaryBurnBarView_headerLabelStack;
  v2 = [objc_allocWithZone(type metadata accessor for SessionStackedLabelView()) initWithFrame_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v1) = v2;
  v3 = OBJC_IVAR____TtC9SeymourUI18SummaryBurnBarView_burnBarSummary;
  v4 = [objc_allocWithZone(type metadata accessor for BurnBarSummary()) initWithFrame_];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v3) = v4;
  sub_20C13DE24();
  __break(1u);
}

uint64_t NavigationRoutingBehavior.hashValue.getter()
{
  v1 = *v0;
  sub_20C13E164();
  MEMORY[0x20F2F58E0](v1);
  return sub_20C13E1B4();
}

unint64_t sub_20BA6805C()
{
  result = qword_27C769750;
  if (!qword_27C769750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C769750);
  }

  return result;
}

char *sub_20BA680C0()
{
  v0[OBJC_IVAR____TtC9SeymourUI20PlaybackMetadataView_currentStyle] = 1;
  v1 = OBJC_IVAR____TtC9SeymourUI20PlaybackMetadataView_titleLabelLeadingConstraint;
  *&v0[v1] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  *&v0[OBJC_IVAR____TtC9SeymourUI20PlaybackMetadataView_fontSize] = 0;
  *&v0[OBJC_IVAR____TtC9SeymourUI20PlaybackMetadataView_metadataInteritemSpacingMultiplier] = 0;
  v2 = *MEMORY[0x277D76860];
  *&v0[OBJC_IVAR____TtC9SeymourUI20PlaybackMetadataView_metadataMaximumContentSizeCategory] = *MEMORY[0x277D76860];
  v3 = &v0[OBJC_IVAR____TtC9SeymourUI20PlaybackMetadataView_styleProvider];
  v4 = v2;
  sub_20BA692D8(v83);
  v5 = v83[7];
  v6 = v83[8];
  v3[6] = v83[6];
  v3[7] = v5;
  v7 = v83[3];
  v3[2] = v83[2];
  v3[3] = v7;
  v8 = v83[5];
  v3[4] = v83[4];
  v3[5] = v8;
  v9 = v83[1];
  *v3 = v83[0];
  v3[1] = v9;
  v3[8] = v6;
  v3[9] = xmmword_20C15D8A0;
  v3[10] = xmmword_20C15D8A0;
  v3[11] = xmmword_20C169040;
  v3[12] = xmmword_20C169050;
  v3[13] = xmmword_20C15D8F0;
  v10 = OBJC_IVAR____TtC9SeymourUI20PlaybackMetadataView_subtitleMarqueeView;
  v11 = [objc_allocWithZone(MEMORY[0x277D25708]) init];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v0[v10] = v11;
  v12 = OBJC_IVAR____TtC9SeymourUI20PlaybackMetadataView_subtitleLabel;
  v13 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v0[v12] = v13;
  v14 = OBJC_IVAR____TtC9SeymourUI20PlaybackMetadataView_titleMarqueeView;
  v15 = [objc_allocWithZone(MEMORY[0x277D25708]) init];
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v0[v14] = v15;
  v16 = OBJC_IVAR____TtC9SeymourUI20PlaybackMetadataView_titleLabel;
  v17 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v0[v16] = v17;
  v82.receiver = v0;
  v82.super_class = type metadata accessor for PlaybackMetadataView();
  v18 = objc_msgSendSuper2(&v82, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v19 = [v18 layer];
  [v19 setAllowsGroupBlending_];

  v20 = OBJC_IVAR____TtC9SeymourUI20PlaybackMetadataView_titleMarqueeView;
  v21 = OBJC_IVAR____TtC9SeymourUI20PlaybackMetadataView_titleLabel;
  [*&v18[OBJC_IVAR____TtC9SeymourUI20PlaybackMetadataView_titleMarqueeView] setAnimationReferenceView_];
  v22 = &v18[OBJC_IVAR____TtC9SeymourUI20PlaybackMetadataView_styleProvider];
  [*&v18[v20] setContentGap_];
  [*&v18[v20] setFadeEdgeInsets_];
  [*&v18[v20] setViewForContentSize_];
  [v18 addSubview_];
  [*&v18[v20] setMarqueeEnabled:1 withOptions:0];
  [*&v18[v21] setTextColor_];
  v23 = *&v18[v21];
  type metadata accessor for UILayoutPriority(0);
  sub_20B60B184();
  v24 = v23;
  sub_20C13BB94();
  LODWORD(v25) = v81;
  [v24 setContentCompressionResistancePriority:0 forAxis:v25];

  LODWORD(v26) = 1148846080;
  [*&v18[v21] setContentCompressionResistancePriority:1 forAxis:v26];
  result = [*&v18[v20] contentView];
  if (result)
  {
    v28 = result;
    v80 = v21;
    [result addSubview_];

    LODWORD(v29) = 1148846080;
    [*&v18[v20] setContentCompressionResistancePriority:1 forAxis:v29];
    v30 = OBJC_IVAR____TtC9SeymourUI20PlaybackMetadataView_subtitleMarqueeView;
    v31 = OBJC_IVAR____TtC9SeymourUI20PlaybackMetadataView_subtitleLabel;
    [*&v18[OBJC_IVAR____TtC9SeymourUI20PlaybackMetadataView_subtitleMarqueeView] setAnimationReferenceView_];
    [*&v18[v30] setContentGap_];
    [*&v18[v30] setFadeEdgeInsets_];
    v32 = [*&v18[v30] layer];
    [v32 setCompositingFilter_];

    [*&v18[v30] setViewForContentSize_];
    [*&v18[v20] addCoordinatedMarqueeView_];
    [v18 addSubview_];
    [*&v18[v31] setTextColor_];
    v33 = *&v18[v31];
    sub_20C13BB94();
    LODWORD(v34) = v81;
    [v33 setContentCompressionResistancePriority:0 forAxis:v34];

    LODWORD(v35) = 1148846080;
    [*&v18[v31] setContentCompressionResistancePriority:1 forAxis:v35];
    result = [*&v18[v30] contentView];
    if (result)
    {
      v36 = result;
      [result addSubview_];

      LODWORD(v37) = 1148846080;
      [*&v18[v30] setContentCompressionResistancePriority:1 forAxis:v37];
      v38 = [v18 traitCollection];
      sub_20BA68D50(v38);

      v39 = [*&v18[v80] leadingAnchor];
      v40 = [*&v18[v20] leadingAnchor];
      v41 = [v39 constraintEqualToAnchor_];

      v78 = OBJC_IVAR____TtC9SeymourUI20PlaybackMetadataView_titleLabelLeadingConstraint;
      v42 = *&v18[OBJC_IVAR____TtC9SeymourUI20PlaybackMetadataView_titleLabelLeadingConstraint];
      *&v18[OBJC_IVAR____TtC9SeymourUI20PlaybackMetadataView_titleLabelLeadingConstraint] = v41;

      v79 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_20C1615B0;
      v44 = [*&v18[v20] leadingAnchor];
      v45 = [v18 leadingAnchor];
      v46 = [v44 constraintEqualToAnchor_];

      *(v43 + 32) = v46;
      v47 = [*&v18[v20] trailingAnchor];
      v48 = [v18 trailingAnchor];
      v49 = [v47 constraintEqualToAnchor_];

      *(v43 + 40) = v49;
      v50 = [*&v18[v20] topAnchor];
      v51 = [v18 &selRef_setLineBreakMode_];
      v52 = [v50 constraintEqualToAnchor_];

      *(v43 + 48) = v52;
      v53 = [*&v18[v30] &selRef_setLineBreakMode_];
      v54 = [*&v18[v20] bottomAnchor];
      v55 = [v53 constraintEqualToAnchor_];

      *(v43 + 56) = v55;
      v56 = [*&v18[v30] leadingAnchor];
      v57 = [v18 leadingAnchor];
      v58 = [v56 constraintEqualToAnchor_];

      *(v43 + 64) = v58;
      v59 = [*&v18[v30] trailingAnchor];
      v60 = [v18 trailingAnchor];
      v61 = [v59 constraintEqualToAnchor_];

      *(v43 + 72) = v61;
      v62 = [*&v18[v30] bottomAnchor];
      v63 = [v18 bottomAnchor];

      v64 = [v62 constraintEqualToAnchor_];
      *(v43 + 80) = v64;
      v65 = [*&v18[v80] topAnchor];
      v66 = [*&v18[v20] topAnchor];
      v67 = [v65 constraintEqualToAnchor_];

      *(v43 + 88) = v67;
      v68 = *&v18[v78];
      *(v43 + 96) = v68;
      v69 = *&v18[v31];
      v70 = v68;
      v71 = [v69 topAnchor];
      v72 = [*&v18[v30] topAnchor];
      v73 = [v71 constraintEqualToAnchor_];

      *(v43 + 104) = v73;
      v74 = [*&v18[v31] leadingAnchor];
      v75 = [*&v18[v80] leadingAnchor];
      v76 = [v74 constraintEqualToAnchor_];

      *(v43 + 112) = v76;
      sub_20B5E29D0();
      v77 = sub_20C13CC54();

      [v79 activateConstraints_];

      return v18;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_20BA68B28(void *a1)
{
  v17.receiver = v1;
  v17.super_class = type metadata accessor for PlaybackMetadataView();
  objc_msgSendSuper2(&v17, sel_traitCollectionDidChange_, a1);
  swift_unknownObjectUnownedInit();
  if (a1)
  {
    v3 = a1;
    v4 = [v3 preferredContentSizeCategory];
    v5 = [v1 traitCollection];
    v6 = [v5 preferredContentSizeCategory];

    v7 = sub_20C13C954();
    v9 = v8;
    if (v7 == sub_20C13C954() && v9 == v10)
    {
    }

    else
    {
      v12 = sub_20C13DFF4();

      if ((v12 & 1) == 0)
      {
        v13 = [v1 traitCollection];
        Strong = swift_unknownObjectUnownedLoadStrong();
        sub_20BA68D50(v13);

        v3 = Strong;
      }
    }
  }

  else
  {
    v15 = [v1 traitCollection];
    v3 = swift_unknownObjectUnownedLoadStrong();
    sub_20BA68D50(v15);
  }

  return swift_unknownObjectUnownedDestroy();
}

void sub_20BA68D50(void *a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI20PlaybackMetadataView_titleLabel);
  v5 = OBJC_IVAR____TtC9SeymourUI20PlaybackMetadataView_currentStyle;
  if (*(v1 + OBJC_IVAR____TtC9SeymourUI20PlaybackMetadataView_currentStyle))
  {
    v6 = v1 + OBJC_IVAR____TtC9SeymourUI20PlaybackMetadataView_styleProvider;
    v7 = [objc_opt_self() systemFontOfSize:*(v1 + OBJC_IVAR____TtC9SeymourUI20PlaybackMetadataView_fontSize) weight:*(v6 + 8)];
  }

  else
  {
    v7 = sub_20B7C6A74(a1);
  }

  v8 = v7;
  [v4 setFont_];

  v9 = *(v2 + OBJC_IVAR____TtC9SeymourUI20PlaybackMetadataView_subtitleLabel);
  if (*(v2 + v5))
  {
    v10 = v2 + OBJC_IVAR____TtC9SeymourUI20PlaybackMetadataView_styleProvider;
    v11 = [objc_opt_self() systemFontOfSize:*(v2 + OBJC_IVAR____TtC9SeymourUI20PlaybackMetadataView_fontSize) weight:*(v10 + 24)];
  }

  else
  {
    v11 = sub_20B7C6A74(a1);
  }

  v12 = v11;
  [v9 setFont_];
}

id sub_20BA68F0C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlaybackMetadataView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 __swift_memcpy224_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v11;
  *(a1 + 160) = result;
  *(a1 + 176) = v10;
  return result;
}

uint64_t sub_20BA69074(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 224))
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

uint64_t sub_20BA690BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 224) = 1;
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

    *(result + 224) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_20BA69158()
{
  result = qword_27C7697A8;
  if (!qword_27C7697A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7697A8);
  }

  return result;
}

void sub_20BA691D0(uint64_t a1)
{
  sub_20B8C9204(a1, v7);
  sub_20B8C9204(v7, v8);
  sub_20B8C9204(v8, v9);
  [*&v1[OBJC_IVAR____TtC9SeymourUI20PlaybackMetadataView_titleLabelLeadingConstraint] setConstant_];
  v2 = v12;
  *&v1[OBJC_IVAR____TtC9SeymourUI20PlaybackMetadataView_fontSize] = v10;
  *&v1[OBJC_IVAR____TtC9SeymourUI20PlaybackMetadataView_metadataInteritemSpacingMultiplier] = v2;
  v3 = *&v1[OBJC_IVAR____TtC9SeymourUI20PlaybackMetadataView_metadataMaximumContentSizeCategory];
  *&v1[OBJC_IVAR____TtC9SeymourUI20PlaybackMetadataView_metadataMaximumContentSizeCategory] = v14;
  sub_20B8C9260(v9, v6);

  v4 = v13;
  [*&v1[OBJC_IVAR____TtC9SeymourUI20PlaybackMetadataView_titleMarqueeView] setContentGap_];
  [*&v1[OBJC_IVAR____TtC9SeymourUI20PlaybackMetadataView_subtitleMarqueeView] setContentGap_];
  v5 = [v1 traitCollection];
  sub_20BA68D50(v5);
}

id sub_20BA692D8@<X0>(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 whiteColor];
  v4 = [v3 colorWithAlphaComponent_];

  v5 = *MEMORY[0x277D743F8];
  v6 = [v2 whiteColor];
  v7 = [v6 colorWithAlphaComponent_];

  v8 = *MEMORY[0x277D74418];
  v9 = *MEMORY[0x277D76A28];
  v10 = *MEMORY[0x277D76818];
  v11 = MEMORY[0x277D84FA0];
  v16 = MEMORY[0x277D84FA0];
  v12 = *MEMORY[0x277D76818];
  sub_20B6FF83C(v17, 1);
  v17[0] = 1;
  v13 = v12;
  v15 = v9;
  sub_20B6FF83C(v17, 1);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  *(a1 + 32) = 0;
  *(a1 + 40) = v10;
  *(a1 + 48) = v15;
  *(a1 + 56) = 0;
  *(a1 + 60) = 2305;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  *(a1 + 80) = v16;
  *(a1 + 88) = 0;
  *(a1 + 96) = v10;
  *(a1 + 104) = v15;
  *(a1 + 112) = 0;
  *(a1 + 116) = 2305;
  *(a1 + 120) = 0;
  *(a1 + 128) = 1;
  *(a1 + 136) = v11;

  return v15;
}

void sub_20BA6948C()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI20PlaybackMetadataView_currentStyle) = 1;
  v1 = OBJC_IVAR____TtC9SeymourUI20PlaybackMetadataView_titleLabelLeadingConstraint;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  *(v0 + OBJC_IVAR____TtC9SeymourUI20PlaybackMetadataView_fontSize) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI20PlaybackMetadataView_metadataInteritemSpacingMultiplier) = 0;
  v2 = *MEMORY[0x277D76860];
  *(v0 + OBJC_IVAR____TtC9SeymourUI20PlaybackMetadataView_metadataMaximumContentSizeCategory) = *MEMORY[0x277D76860];
  v3 = (v0 + OBJC_IVAR____TtC9SeymourUI20PlaybackMetadataView_styleProvider);
  v4 = v2;
  sub_20BA692D8(v18);
  v5 = v18[7];
  v3[6] = v18[6];
  v3[7] = v5;
  v6 = v18[8];
  v7 = v18[3];
  v3[2] = v18[2];
  v3[3] = v7;
  v8 = v18[5];
  v3[4] = v18[4];
  v3[5] = v8;
  v9 = v18[1];
  *v3 = v18[0];
  v3[1] = v9;
  v3[8] = v6;
  v3[9] = xmmword_20C15D8A0;
  v3[10] = xmmword_20C15D8A0;
  v3[11] = xmmword_20C169040;
  v3[12] = xmmword_20C169050;
  v3[13] = xmmword_20C15D8F0;
  v10 = OBJC_IVAR____TtC9SeymourUI20PlaybackMetadataView_subtitleMarqueeView;
  v11 = [objc_allocWithZone(MEMORY[0x277D25708]) init];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v10) = v11;
  v12 = OBJC_IVAR____TtC9SeymourUI20PlaybackMetadataView_subtitleLabel;
  v13 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v12) = v13;
  v14 = OBJC_IVAR____TtC9SeymourUI20PlaybackMetadataView_titleMarqueeView;
  v15 = [objc_allocWithZone(MEMORY[0x277D25708]) init];
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v14) = v15;
  v16 = OBJC_IVAR____TtC9SeymourUI20PlaybackMetadataView_titleLabel;
  v17 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v16) = v17;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20BA696C0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
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

uint64_t sub_20BA69708(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
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
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_20BA697B4(unint64_t a1)
{
  switch((a1 >> 57) & 0x78 | a1 & 7)
  {
    case 1uLL:
      return type metadata accessor for AccountSettingRowCell();
    case 2uLL:
      return type metadata accessor for ActionButtonsCell();
    case 3uLL:
    case 0x44uLL:
      return type metadata accessor for ActionBannerCell();
    case 4uLL:
      return type metadata accessor for ActivityPickerCell();
    case 5uLL:
      return type metadata accessor for ArtworkHeaderCell();
    case 6uLL:
    case 0x11uLL:
    case 0x1AuLL:
    case 0x37uLL:
    case 0x3BuLL:
      return type metadata accessor for StandardFilterCell();
    case 7uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xFuLL:
    case 0x15uLL:
    case 0x16uLL:
    case 0x17uLL:
    case 0x19uLL:
    case 0x25uLL:
    case 0x32uLL:
    case 0x33uLL:
    case 0x3FuLL:
    case 0x43uLL:
      return sub_20C093BC8(a1);
    case 8uLL:
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764E00);
      if (*(swift_projectBox() + *(v3 + 80)))
      {
        return type metadata accessor for RoundedDetailHeaderCell();
      }

      else
      {
        return type metadata accessor for FullWidthDetailHeaderCell();
      }

    case 0xBuLL:
      return type metadata accessor for DownloadButtonCell();
    case 0xCuLL:
      return type metadata accessor for DownloadButtonHeaderCell();
    case 0xDuLL:
      return type metadata accessor for DurationFilterCell();
    case 0xEuLL:
      return type metadata accessor for ContentUnavailableCell();
    case 0x10uLL:
    case 0x22uLL:
      return type metadata accessor for MarketingHeaderBannerCell();
    case 0x12uLL:
      return type metadata accessor for ExpandingDetailDescriptionCell();
    case 0x13uLL:
      return type metadata accessor for ExpandingTextCell();
    case 0x14uLL:
      return type metadata accessor for FilterHeaderCell();
    case 0x18uLL:
      return type metadata accessor for FullScreenMessageCell();
    case 0x1BuLL:
      return type metadata accessor for GuidedWalkMediaTagsCell();
    case 0x1CuLL:
    case 0x39uLL:
      return sub_20BA697B4(*((a1 & 0xFFFFFFFFFFFFFF8) + 0x20));
    case 0x1DuLL:
      return type metadata accessor for HostedContentCell();
    case 0x1EuLL:
      v4 = &unk_27C7677D0;
      goto LABEL_57;
    case 0x1FuLL:
      v4 = &qword_27C762B80;
LABEL_57:
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v4);
      v6 = swift_projectBox();
      v7 = (v5 + 64);
      goto LABEL_66;
    case 0x20uLL:
      v2 = &unk_27C772250;
      goto LABEL_65;
    case 0x21uLL:
      v2 = &qword_27C762B28;
      goto LABEL_65;
    case 0x23uLL:
      return type metadata accessor for MarketingHeaderUpsellCell();
    case 0x24uLL:
      return type metadata accessor for MetadataEntryCell();
    case 0x26uLL:
      return type metadata accessor for ModalityFilterCell();
    case 0x27uLL:
      return type metadata accessor for ModalityPickerItemCell();
    case 0x28uLL:
      return type metadata accessor for PreferredMusicGenreCell();
    case 0x29uLL:
      return type metadata accessor for MusicTrackCell();
    case 0x2AuLL:
      return type metadata accessor for MyLibraryEntryCell();
    case 0x2BuLL:
      return type metadata accessor for NotificationBannerCell();
    case 0x2CuLL:
      return type metadata accessor for OfflineWorkoutsBannerCell();
    case 0x2DuLL:
      return type metadata accessor for PlaylistDetailHeaderCell();
    case 0x2EuLL:
      return type metadata accessor for PreferenceDescriptionCell();
    case 0x2FuLL:
      return type metadata accessor for PreviewVideoLinkCell();
    case 0x30uLL:
      return type metadata accessor for ProgramDetailHeaderCell();
    case 0x31uLL:
      return type metadata accessor for ProgramMediaTagsCell();
    case 0x34uLL:
      return type metadata accessor for SchedulePickerCell();
    case 0x35uLL:
      return type metadata accessor for SegmentedOptionPickerCell();
    case 0x36uLL:
      return type metadata accessor for SelectedFilterCell();
    case 0x38uLL:
      return type metadata accessor for SortingHeaderCell();
    case 0x3AuLL:
      return type metadata accessor for ThemeFilterCell();
    case 0x3CuLL:
      return type metadata accessor for TrainerFilterCell();
    case 0x3DuLL:
      return type metadata accessor for PreferredTrainerCell();
    case 0x3EuLL:
      return type metadata accessor for UpNextQueueHeaderCell();
    case 0x40uLL:
      return type metadata accessor for ValueItemCell();
    case 0x41uLL:
      return type metadata accessor for WorkoutMediaTagsCell();
    case 0x42uLL:
      if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x28) > 1u)
      {
        if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x28) == 2)
        {
          return type metadata accessor for WeekdayPlannerModalityCell();
        }

        else
        {
          return type metadata accessor for WeekdayPlannerEmptyCell();
        }
      }

      else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x28))
      {
        return type metadata accessor for WeekdayPlannerHeaderCell();
      }

      else
      {
        return type metadata accessor for WeekdayPlannerAddCell();
      }

    case 0x45uLL:
      return type metadata accessor for TabletWorkoutPlanBannerCell();
    case 0x46uLL:
      return type metadata accessor for WorkoutPlanHeaderCell();
    case 0x47uLL:
      return type metadata accessor for WorkoutPlanGalleryBannerCell();
    case 0x48uLL:
      return type metadata accessor for WorkoutPlanGalleryBrickItemCell();
    case 0x49uLL:
      return type metadata accessor for WorkoutPlanDetailHeaderCell();
    case 0x4AuLL:
      v2 = &unk_27C762A70;
LABEL_65:
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v2);
      v6 = swift_projectBox();
      v7 = (v8 + 48);
LABEL_66:
      result = sub_20BA6A478(*(v6 + *v7));
      break;
    case 0x4BuLL:
      result = type metadata accessor for WorkoutPlanPreferenceRowCell();
      break;
    case 0x4CuLL:
      result = type metadata accessor for WorkoutPlanReviewHeaderCell();
      break;
    case 0x4DuLL:
      result = type metadata accessor for LoadingCell();
      break;
    default:
      result = type metadata accessor for AccountSettingAvatarRowCell();
      break;
  }

  return result;
}

uint64_t sub_20BA69D68()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762B78);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_20C169240;
  *(v0 + 32) = type metadata accessor for AccountSettingAvatarRowCell();
  *(v0 + 40) = &off_2822C9C00;
  *(v0 + 48) = type metadata accessor for AccountSettingRowCell();
  *(v0 + 56) = &off_2822F48C0;
  *(v0 + 64) = type metadata accessor for ActionBannerCell();
  *(v0 + 72) = &off_2822E9950;
  *(v0 + 80) = type metadata accessor for ActionBrickItemCell();
  *(v0 + 88) = &off_282297588;
  *(v0 + 96) = type metadata accessor for ActionButtonsCell();
  *(v0 + 104) = &off_2822E82A0;
  *(v0 + 112) = type metadata accessor for ActivityPickerCell();
  *(v0 + 120) = &off_2822E9308;
  *(v0 + 128) = type metadata accessor for ArtworkHeaderCell();
  *(v0 + 136) = &off_2822A23B0;
  *(v0 + 144) = type metadata accessor for CircleItemCell();
  *(v0 + 152) = &off_2822B72D8;
  *(v0 + 160) = type metadata accessor for ContentUnavailableCell();
  *(v0 + 168) = &off_2822AB5D8;
  *(v0 + 176) = type metadata accessor for DownloadButtonHeaderCell();
  *(v0 + 184) = &off_2822E17C8;
  *(v0 + 192) = type metadata accessor for DurationFilterCell();
  *(v0 + 200) = &off_2822D12C0;
  *(v0 + 208) = type metadata accessor for DynamicBrickItemCell();
  *(v0 + 216) = &off_2822DDF08;
  *(v0 + 224) = type metadata accessor for EditorialCollectionBrickItemCell();
  *(v0 + 232) = &off_2822EE3D0;
  *(v0 + 240) = type metadata accessor for EditorialCollectionBrickRowCell();
  *(v0 + 248) = &off_2822C9130;
  *(v0 + 256) = type metadata accessor for ExpandingDetailDescriptionCell();
  *(v0 + 264) = &off_2822DF5C8;
  *(v0 + 272) = type metadata accessor for ExpandingTextCell();
  *(v0 + 280) = &off_2822A7818;
  *(v0 + 288) = type metadata accessor for FallbackCell();
  *(v0 + 296) = &off_2822B7120;
  *(v0 + 304) = type metadata accessor for FilterHeaderCell();
  *(v0 + 312) = &off_2822CE620;
  *(v0 + 320) = type metadata accessor for FullScreenMessageCell();
  *(v0 + 328) = &off_2822CF7D8;
  *(v0 + 336) = type metadata accessor for FullWidthDetailHeaderCell();
  *(v0 + 344) = &off_2822ABA08;
  *(v0 + 352) = type metadata accessor for GroupedBrickItemCell();
  *(v0 + 360) = &off_2822E0210;
  *(v0 + 368) = type metadata accessor for GuidedWalkMediaTagsCell();
  *(v0 + 376) = &off_2822F7838;
  *(v0 + 384) = type metadata accessor for GuidedWorkoutBrickItemCell();
  *(v0 + 392) = &off_28229AFA8;
  *(v0 + 400) = type metadata accessor for GuidedWorkoutBrickRowCell();
  *(v0 + 408) = &off_2822DE930;
  *(v0 + 416) = type metadata accessor for HighlightBrickItemCell();
  *(v0 + 424) = &off_2822AD880;
  *(v0 + 432) = type metadata accessor for HostedContentCell();
  *(v0 + 440) = &off_2822AE110;
  *(v0 + 448) = type metadata accessor for LoadingCell();
  *(v0 + 456) = &off_282307F40;
  *(v0 + 464) = type metadata accessor for MarketingHeaderBannerCell();
  *(v0 + 472) = &off_2822FAD50;
  *(v0 + 480) = type metadata accessor for MarketingHeaderUpsellCell();
  *(v0 + 488) = &off_2823065C0;
  *(v0 + 496) = type metadata accessor for MetadataEntryCell();
  *(v0 + 504) = &off_2822E2BA0;
  *(v0 + 512) = type metadata accessor for ModalityBrickItemCell();
  *(v0 + 520) = &off_2822F4D40;
  *(v0 + 528) = type metadata accessor for ModalityFilterCell();
  *(v0 + 536) = &off_2822AC048;
  *(v0 + 544) = type metadata accessor for ModalityPickerItemCell();
  *(v0 + 552) = &off_282305A18;
  *(v0 + 560) = type metadata accessor for MusicTrackCell();
  *(v0 + 568) = &off_2822B5990;
  *(v0 + 576) = type metadata accessor for MyLibraryEntryCell();
  *(v0 + 584) = &off_2822DE1B0;
  *(v0 + 592) = type metadata accessor for NotificationBannerCell();
  *(v0 + 600) = &off_2822B1B68;
  *(v0 + 608) = type metadata accessor for OfflineWorkoutsBannerCell();
  *(v0 + 616) = &off_282308118;
  *(v0 + 624) = type metadata accessor for PlaylistDetailHeaderCell();
  *(v0 + 632) = &off_2822E2558;
  *(v0 + 640) = type metadata accessor for PreferenceDescriptionCell();
  *(v0 + 648) = &off_2822998F0;
  *(v0 + 656) = type metadata accessor for PreferredMusicGenreCell();
  *(v0 + 664) = &off_282303100;
  *(v0 + 672) = type metadata accessor for PreferredTrainerCell();
  *(v0 + 680) = &off_2822F6E58;
  *(v0 + 688) = type metadata accessor for PreviewVideoLinkCell();
  *(v0 + 696) = &off_2822CE1E8;
  *(v0 + 704) = type metadata accessor for ProgramBrickItemCell();
  *(v0 + 712) = &off_2822A6690;
  *(v0 + 720) = type metadata accessor for ProgramBrickRowCell();
  *(v0 + 728) = &off_2822D2758;
  *(v0 + 736) = type metadata accessor for ProgramDetailHeaderCell();
  *(v0 + 744) = &off_2822C6748;
  *(v0 + 752) = type metadata accessor for ProgramMediaTagsCell();
  *(v0 + 760) = &off_2822DB4C8;
  *(v0 + 768) = type metadata accessor for RoundedDetailHeaderCell();
  *(v0 + 776) = &off_2822BD6E8;
  *(v0 + 784) = type metadata accessor for SchedulePickerCell();
  *(v0 + 792) = &off_2822DE5C8;
  *(v0 + 800) = type metadata accessor for SegmentedOptionPickerCell();
  *(v0 + 808) = &off_2822AD718;
  *(v0 + 816) = type metadata accessor for SelectedFilterCell();
  *(v0 + 824) = &off_28229A7D8;
  *(v0 + 832) = type metadata accessor for SortingHeaderCell();
  *(v0 + 840) = &off_2822F5C30;
  *(v0 + 848) = type metadata accessor for StandardBrickItemCell();
  *(v0 + 856) = &off_2822D2D48;
  *(v0 + 864) = type metadata accessor for StandardFilterCell();
  *(v0 + 872) = &off_2822B8068;
  *(v0 + 880) = type metadata accessor for TabletActionBrickRowCell();
  *(v0 + 888) = &off_2822D55E8;
  *(v0 + 896) = type metadata accessor for TabletIndexedBrickItemCell();
  *(v0 + 904) = &off_2822B2FE0;
  *(v0 + 912) = type metadata accessor for TabletStandardBrickRowCell();
  *(v0 + 920) = &off_2822E1438;
  *(v0 + 928) = type metadata accessor for TabletWorkoutPlanBannerCell();
  *(v0 + 936) = &off_2822D92D8;
  *(v0 + 944) = type metadata accessor for TabletWorkoutPlanBrickItemCell();
  *(v0 + 952) = &off_282296828;
  *(v0 + 960) = type metadata accessor for ThemeFilterCell();
  *(v0 + 968) = &off_282301488;
  *(v0 + 976) = type metadata accessor for TrainerFilterCell();
  *(v0 + 984) = &off_2822B8298;
  *(v0 + 992) = type metadata accessor for UpNextQueueHeaderCell();
  *(v0 + 1000) = &off_2822BC500;
  *(v0 + 1008) = type metadata accessor for UpNextQueueRowCell();
  *(v0 + 1016) = &off_2822A88D0;
  *(v0 + 1024) = type metadata accessor for ValueItemCell();
  *(v0 + 1032) = &off_2822DAA68;
  *(v0 + 1040) = type metadata accessor for VideoBrickItemCell();
  *(v0 + 1048) = &off_28229D150;
  *(v0 + 1056) = type metadata accessor for VideoBrickRowCell();
  *(v0 + 1064) = &off_282297778;
  *(v0 + 1072) = type metadata accessor for WeekdayPlannerAddCell();
  *(v0 + 1080) = &off_2822B4B98;
  *(v0 + 1088) = type metadata accessor for WeekdayPlannerEmptyCell();
  *(v0 + 1096) = &off_2822F84E0;
  *(v0 + 1104) = type metadata accessor for WeekdayPlannerHeaderCell();
  *(v0 + 1112) = &off_2822C8518;
  *(v0 + 1120) = type metadata accessor for WeekdayPlannerModalityCell();
  *(v0 + 1128) = &off_2822AE8B0;
  *(v0 + 1136) = type metadata accessor for WorkoutMediaTagsCell();
  *(v0 + 1144) = &off_2822A6548;
  *(v0 + 1152) = type metadata accessor for WorkoutPlanBrickRowCell();
  *(v0 + 1160) = &off_2822E4260;
  *(v0 + 1168) = type metadata accessor for WorkoutPlanDetailHeaderCell();
  *(v0 + 1176) = &off_2822FEC60;
  *(v0 + 1184) = type metadata accessor for WorkoutPlanHeaderCell();
  *(v0 + 1192) = &off_2822B8D70;
  *(v0 + 1200) = type metadata accessor for WorkoutPlanGalleryBannerCell();
  *(v0 + 1208) = &off_2822F7F20;
  *(v0 + 1216) = type metadata accessor for WorkoutPlanGalleryBrickItemCell();
  *(v0 + 1224) = &off_2822AF008;
  *(v0 + 1232) = type metadata accessor for WorkoutPlanReviewHeaderCell();
  *(v0 + 1240) = &off_2822A4D38;
  *(v0 + 1248) = type metadata accessor for WorkoutPlanPreferenceRowCell();
  *(v0 + 1256) = &off_2822B92C8;
  return v0;
}

uint64_t sub_20BA6A478(char a1)
{
  switch(a1)
  {
    case 1:
    case 23:
      result = type metadata accessor for TabletActionBrickRowCell();
      break;
    case 2:
    case 3:
    case 4:
    case 12:
    case 21:
    case 24:
    case 30:
    case 35:
    case 36:
    case 40:
    case 41:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
      result = sub_20C093E48(a1);
      break;
    case 5:
    case 13:
      result = type metadata accessor for GroupedBrickItemCell();
      break;
    case 6:
    case 7:
      result = type metadata accessor for CircleItemCell();
      break;
    case 8:
    case 25:
    case 28:
    case 29:
    case 34:
      result = type metadata accessor for TabletStandardBrickRowCell();
      break;
    case 9:
    case 31:
      result = type metadata accessor for DynamicBrickItemCell();
      break;
    case 10:
      result = type metadata accessor for EditorialCollectionBrickItemCell();
      break;
    case 11:
      result = type metadata accessor for EditorialCollectionBrickRowCell();
      break;
    case 14:
    case 16:
      result = type metadata accessor for GuidedWorkoutBrickItemCell();
      break;
    case 15:
    case 17:
      result = type metadata accessor for GuidedWorkoutBrickRowCell();
      break;
    case 18:
      result = type metadata accessor for HighlightBrickItemCell();
      break;
    case 19:
      result = type metadata accessor for TabletIndexedBrickItemCell();
      break;
    case 20:
    case 32:
    case 33:
      result = type metadata accessor for StandardBrickItemCell();
      break;
    case 22:
      result = type metadata accessor for ModalityBrickItemCell();
      break;
    case 26:
      result = type metadata accessor for ProgramBrickItemCell();
      break;
    case 27:
      result = type metadata accessor for ProgramBrickRowCell();
      break;
    case 37:
      result = type metadata accessor for UpNextQueueRowCell();
      break;
    case 38:
      result = type metadata accessor for VideoBrickItemCell();
      break;
    case 39:
      result = type metadata accessor for VideoBrickRowCell();
      break;
    case 42:
      result = type metadata accessor for TabletWorkoutPlanBrickItemCell();
      break;
    case 43:
      result = type metadata accessor for WorkoutPlanBrickRowCell();
      break;
    default:
      result = type metadata accessor for ActionBrickItemCell();
      break;
  }

  return result;
}

unint64_t sub_20BA6A6C0()
{
  result = qword_27C7697B0;
  if (!qword_27C7697B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7697B0);
  }

  return result;
}

uint64_t sub_20BA6A71C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *(v4 + 16) = xmmword_20C169320;
  *(v4 + 32) = xmmword_20C169330;
  *(v4 + 48) = xmmword_20C169340;
  *(v4 + 64) = xmmword_20C169350;
  *(v4 + 80) = xmmword_20C169360;
  *(v4 + 96) = xmmword_20C169370;
  *(v4 + 112) = vdupq_n_s64(6uLL);
  *(v4 + 128) = xmmword_20C169380;
  swift_unknownObjectRetain();
  SummaryStringBuilder.init(unitPreferencesProvider:)(a2, a3, &v26);
  v30 = 257;
  v32 = 257;
  v8 = v28;
  v9 = v29;
  v31[2] = v28;
  v31[3] = v29;
  v10 = v27;
  v11 = v26;
  v31[0] = v26;
  v31[1] = v27;
  *(v4 + 264) = 257;
  *(v4 + 216) = v10;
  *(v4 + 232) = v8;
  *(v4 + 248) = v9;
  *(v4 + 200) = v11;
  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  v14 = *(v13 + 8);
  sub_20B7A3194(v31, v33);
  *(v4 + 144) = v14(v12, v13);
  *(v4 + 152) = v15 & 1;
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  *(v4 + 160) = (*(v17 + 16))(v16, v17);
  *(v4 + 168) = v18 & 1;
  v19 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  *(v4 + 176) = (*(v20 + 24))(v19, v20);
  *(v4 + 184) = v21 & 1;
  v22 = a1[3];
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v22);
  v24 = (*(v23 + 32))(v22, v23);
  swift_unknownObjectRelease();
  v33[2] = v28;
  v33[3] = v29;
  v34 = v30;
  v33[0] = v26;
  v33[1] = v27;
  sub_20B7A3B8C(v33);
  *(v4 + 192) = v24;
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

UIImage *sub_20BA6A948(uint64_t a1)
{
  v11.width = 270.0;
  v11.height = 168.0;
  UIGraphicsBeginImageContextWithOptions(v11, 0, 0.0);
  v4 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v4 setContentMode_];
  [v4 setImage_];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  v5 = [v4 image];
  [v5 drawInRect_];

  sub_20BA6AB18(v8);
  sub_20BA6B288(v8, v9);
  if (*&v9[0] | v10)
  {
    sub_20BA6B464(168.0);
    if (v2)
    {
LABEL_7:
      sub_20BA6B434(v9);
      sub_20BA6B434(v8);
      return v1;
    }

    sub_20BA6B640(v9, 270.0, 168.0);
  }

  v1 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  if (!v1)
  {
    sub_20B659CD4();
    swift_allocError();
    *v6 = 0;
    swift_willThrow();
    goto LABEL_7;
  }

  sub_20BA6B434(v8);
  sub_20BA6B434(v9);
  return v1;
}

void sub_20BA6AB18(uint64_t a1@<X8>)
{
  v3 = sub_20BA6ACC4();
  v5 = v4;
  v22 = v6 & 1;
  v8 = v7 & 0xFF01;
  v9 = sub_20BA6AF4C();
  v11 = v10;
  v13 = v12 & 1;
  v15 = v14 & 0xFF01;
  v16 = sub_20BA6B0E8();
  v20 = v17 & 1;
  v21 = v19 & 0xFF01;
  if (v3)
  {
    if (v9)
    {
      sub_20BA6B3F4(v16, v20, v18);
    }

    else
    {
      v9 = v16;
      v13 = v20;
      v11 = v18;
      v15 = v21;
    }

    v2 = v22;
  }

  else if (v9)
  {
    sub_20BA6B3F4(v16, v20, v18);
    v3 = v9;
    v2 = v13;
    v5 = v11;
    v8 = v15;
    v9 = 0;
    v13 = 0;
    v11 = 0;
    v15 = 0;
  }

  else if (v16)
  {
    v9 = 0;
    v13 = 0;
    v11 = 0;
    v15 = 0;
    v3 = v16;
    v2 = v20;
    v5 = v18;
    v8 = v21;
  }

  else
  {
    v3 = 0;
    v9 = 0;
    v2 = v20;
    v5 = v18;
    v8 = v21;
    v13 = v20;
    v11 = v18;
    v15 = v21;
  }

  *a1 = v3;
  *(a1 + 8) = v2;
  *(a1 + 16) = v5;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = v13;
  *(a1 + 48) = v11;
  *(a1 + 56) = v15;
}

id sub_20BA6ACC4()
{
  if (*(v1 + 152))
  {
    sub_20B659CD4();
    swift_allocError();
    *v3 = 6;
    swift_willThrow();
  }

  else
  {
    v4 = *(v1 + 144);
    v5 = *(v1 + 216);
    v6 = *(v1 + 248);
    v31 = *(v1 + 232);
    v32 = v6;
    v33 = *(v1 + 264);
    v29 = *(v1 + 200);
    v30 = v5;
    v7 = *(v1 + 216);
    v8 = *(v1 + 248);
    v26 = *(v1 + 232);
    v27 = v8;
    v28 = *(v1 + 264);
    v24 = *(v1 + 200);
    v25 = v7;
    sub_20B7A3194(&v29, &v19);
    sub_20BAADCAC();
    v21 = v31;
    v22 = v32;
    v23 = v33;
    v19 = v29;
    v20 = v30;
    sub_20BAAD990();
    v9 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v10 = sub_20C13C914();

    type metadata accessor for Key(0);
    sub_20B76322C();
    v11 = sub_20C13C744();

    v0 = [v9 initWithString:v10 attributes:v11];
    sub_20B7A3B8C(&v29);

    v12 = *(v1 + 216);
    v13 = *(v1 + 248);
    v34[2] = *(v1 + 232);
    v34[3] = v13;
    v35 = *(v1 + 264);
    v34[0] = *(v1 + 200);
    v34[1] = v12;
    v14 = *(v1 + 216);
    v15 = *(v1 + 248);
    v26 = *(v1 + 232);
    v27 = v15;
    v28 = *(v1 + 264);
    v24 = *(v1 + 200);
    v25 = v14;
    sub_20B7A3194(v34, &v19);
    v16 = sub_20BAAB954(v4);
    if (v2)
    {
      v21 = v26;
      v22 = v27;
      v23 = v28;
      v19 = v24;
      v20 = v25;
      sub_20B7A3B8C(&v19);
    }

    else
    {
      v18 = v16;
      v21 = v26;
      v22 = v27;
      v23 = v28;
      v19 = v24;
      v20 = v25;
      sub_20B7A3B8C(&v19);
      [v0 length];
      [v18 length];
    }
  }

  return v0;
}

id sub_20BA6AF4C()
{
  if (*(v1 + 168))
  {
    sub_20B659CD4();
    swift_allocError();
    *v3 = 6;
    swift_willThrow();
  }

  else
  {
    v4 = *(v1 + 160);
    v5 = *(v1 + 216);
    v6 = *(v1 + 248);
    v21 = *(v1 + 232);
    v22 = v6;
    v23 = *(v1 + 264);
    v19 = *(v1 + 200);
    v20 = v5;
    v0 = sub_20BAABE50();
    v7 = *(v1 + 216);
    v8 = *(v1 + 248);
    v24[2] = *(v1 + 232);
    v24[3] = v8;
    v25 = *(v1 + 264);
    v24[0] = *(v1 + 200);
    v24[1] = v7;
    v9 = *(v1 + 216);
    v10 = *(v1 + 248);
    v21 = *(v1 + 232);
    v22 = v10;
    v23 = *(v1 + 264);
    v19 = *(v1 + 200);
    v20 = v9;
    sub_20B7A3194(v24, &v14);
    v11 = sub_20BAABFD0(v4);
    if (v2)
    {
      v16 = v21;
      v17 = v22;
      v18 = v23;
      v14 = v19;
      v15 = v20;
      sub_20B7A3B8C(&v14);
    }

    else
    {
      v13 = v11;
      v16 = v21;
      v17 = v22;
      v18 = v23;
      v14 = v19;
      v15 = v20;
      sub_20B7A3B8C(&v14);
      [v0 length];
      [v13 length];
    }
  }

  return v0;
}

id sub_20BA6B0E8()
{
  if (*(v1 + 184))
  {
    sub_20B659CD4();
    swift_allocError();
    *v3 = 6;
    swift_willThrow();
  }

  else
  {
    v4 = *(v1 + 176);
    v5 = *(v1 + 216);
    v6 = *(v1 + 248);
    v21 = *(v1 + 232);
    v22 = v6;
    v23 = *(v1 + 264);
    v19 = *(v1 + 200);
    v20 = v5;
    v0 = sub_20BAAC21C();
    v7 = *(v1 + 216);
    v8 = *(v1 + 248);
    v24[2] = *(v1 + 232);
    v24[3] = v8;
    v25 = *(v1 + 264);
    v24[0] = *(v1 + 200);
    v24[1] = v7;
    v9 = *(v1 + 216);
    v10 = *(v1 + 248);
    v21 = *(v1 + 232);
    v22 = v10;
    v23 = *(v1 + 264);
    v19 = *(v1 + 200);
    v20 = v9;
    sub_20B7A3194(v24, &v14);
    sub_20BAAC39C(v4);
    if (v2)
    {
      v16 = v21;
      v17 = v22;
      v18 = v23;
      v14 = v19;
      v15 = v20;
      sub_20B7A3B8C(&v14);
    }

    else
    {
      v13 = v11;
      v16 = v21;
      v17 = v22;
      v18 = v23;
      v14 = v19;
      v15 = v20;
      sub_20B7A3B8C(&v14);
      [v0 length];
      [v13 length];
    }
  }

  return v0;
}

double sub_20BA6B288@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 12);
  v6 = (a1[1] & 1) != 0 || v4 == 0;
  v7 = !v6;
  if (v6)
  {
    if (a1[4])
    {
      v8 = *(a1 + 40);
      v9 = v5 & 1;
      if (v4)
      {
        v10 = v9 == 0;
      }

      else
      {
        v10 = 0;
      }

      if (!v10)
      {
LABEL_16:
        v11 = v8 & 1;
        if ((a1[7] & 1) == 0)
        {
          goto LABEL_27;
        }

        goto LABEL_23;
      }

      if ((a1[5] & 1) == 0)
      {
LABEL_26:
        v11 = 0;
LABEL_27:
        v14 = 0;
        goto LABEL_28;
      }
    }

    else
    {
      v12 = v5 & 1;
      if (v4)
      {
        v13 = v12 == 0;
      }

      else
      {
        v13 = 0;
      }

      if (!v13)
      {
        goto LABEL_22;
      }
    }

    v14 = 0;
    v11 = 1;
    goto LABEL_28;
  }

  if ((v5 & 1) == 0)
  {
    goto LABEL_26;
  }

  if (a1[4])
  {
    v8 = 0;
    goto LABEL_16;
  }

LABEL_22:
  v11 = v7 ^ 1;
LABEL_23:
  v14 = 256;
LABEL_28:
  *(v2 + 264) = v14 | v11;
  sub_20BA6AB18(v17);
  v15 = v17[1];
  *a2 = v17[0];
  a2[1] = v15;
  a2[2] = v18[0];
  result = *(v18 + 10);
  *(a2 + 42) = *(v18 + 10);
  return result;
}

uint64_t sub_20BA6B364()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_20BA6B3F4(void *a1, uint64_t a2, void *a3)
{
  if (a1)
  {
  }
}

void sub_20BA6B464(CGFloat a1)
{
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_20C151490;
  v4 = objc_opt_self();
  v5 = [v4 clearColor];
  v6 = [v5 CGColor];

  *(v3 + 32) = v6;
  v7 = [v4 blackColor];
  v8 = [v7 CGColor];

  *(v3 + 40) = v8;
  type metadata accessor for CGColor(0);
  v9 = DeviceRGB;
  v10 = sub_20C13CC54();

  v11 = CGGradientCreateWithColors(v9, v10, 0);

  if (v11)
  {
    v12 = UIGraphicsGetCurrentContext();
    if (v12)
    {
      v13 = v12;
      v15.x = 0.0;
      v16.x = 0.0;
      v15.y = a1 + -111.0;
      v16.y = a1;
      CGContextDrawLinearGradient(v13, v11, v15, v16, 0);
    }

    else
    {
    }
  }

  else
  {
    sub_20B659CD4();
    swift_allocError();
    *v14 = 2;
    swift_willThrow();
  }
}

void sub_20BA6B640(uint64_t a1, double a2, double a3)
{
  v6 = *MEMORY[0x277D74410];
  v7 = *MEMORY[0x277D74368];
  v8 = objc_opt_self();
  v9 = [v8 systemFontOfSize:30.0 weight:v6];
  v10 = [v9 fontDescriptor];
  v11 = [v10 fontDescriptorWithDesign_];
  if (v11)
  {
    v12 = v11;

    v10 = v12;
  }

  v13 = [v8 fontWithDescriptor:v10 size:0.0];

  [v13 ascender];
  v15 = v14;

  v16 = a3 + -14.0 - v15;
  v17 = [v8 systemFontOfSize:14.0 weight:v6];
  [v17 ascender];
  v19 = v18;

  v20 = v16 + -5.0 - v19;
  if (*a1)
  {
    v21 = *(a1 + 16);
    v22 = *a1;
    v23 = v21;
    [v22 size];
    [v22 drawInRect_];
    [v23 size];
    [v23 drawInRect_];
  }

  v28 = *(a1 + 32);
  if (v28)
  {
    v29 = *(a1 + 48);
    v30 = v28;
    v31 = v29;
    [(CGPath *)v30 size];
    [(CGPath *)v30 drawInRect:a2 * 0.6, v20, v32, v33];
    [(CGContext *)v31 size];
    [(CGContext *)v31 drawInRect:a2 * 0.6, v16, v34, v35];
    v36 = UIGraphicsGetCurrentContext();
    if (v36)
    {
      v37 = v36;
      Mutable = CGPathCreateMutable();
      sub_20C13D294();
      sub_20C13D2A4();
      CGPathCloseSubpath(Mutable);
      CGContextAddPath(v37, Mutable);
      v39 = [objc_opt_self() whiteColor];
      v40 = [v39 colorWithAlphaComponent_];

      v41 = [v40 CGColor];
      CGContextSetStrokeColorWithColor(v37, v41);

      CGContextSetLineWidth(v37, 2.0);
      CGContextSetLineCap(v37, kCGLineCapRound);
      CGContextStrokePath(v37);

      v31 = v37;
      v30 = Mutable;
    }
  }
}

uint64_t get_enum_tag_for_layout_string_9SeymourUI29CompletedWorkoutImageRendererC0D10MetricInfoVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy58_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_20BA6BA24(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 58))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_20BA6BA80(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 58) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 58) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy26_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_20BA6BB08(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 26))
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

uint64_t sub_20BA6BB50(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 26) = 1;
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

    *(result + 26) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_20BA6BBF0(double a1, double a2, double a3, double a4, uint64_t a5, double *a6)
{
  v10 = *a6;
  v92 = *MEMORY[0x277D74368];
  v11 = objc_opt_self();
  v12 = [v11 systemFontOfSize:a1 weight:v10];
  v13 = [v12 fontDescriptor];
  v14 = [v13 fontDescriptorWithSymbolicTraits_];
  if (v14)
  {
    v15 = v14;

    v13 = v15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  v17 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771970);
  v18 = swift_initStackObject();
  v19 = MEMORY[0x277D74430];
  *(v18 + 16) = xmmword_20C14F980;
  v20 = *v19;
  *(v18 + 32) = *v19;
  *(v18 + 40) = v10;
  v21 = v17;
  v22 = v20;
  v23 = v21;
  v24 = v22;
  v25 = sub_20B6B134C(v18);
  swift_setDeallocating();
  sub_20B520158(v18 + 32, &unk_27C773200);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771980);
  *(inited + 64) = v91;
  *(inited + 40) = v25;
  sub_20B6B143C(inited);
  swift_setDeallocating();
  sub_20B520158(inited + 32, &qword_27C773210);
  type metadata accessor for AttributeName(0);
  sub_20B5E5BD0();
  v26 = sub_20C13C744();

  v27 = [v13 fontDescriptorByAddingAttributes_];

  v28 = [v27 fontDescriptorWithDesign_];
  if (v28)
  {
    v29 = v28;

    v27 = v29;
  }

  v90 = [v11 fontWithDescriptor:v27 size:0.0];

  v30 = [v11 systemFontOfSize:a2 weight:v10];
  v31 = [v30 fontDescriptor];
  v32 = [v31 fontDescriptorWithSymbolicTraits_];
  if (v32)
  {
    v33 = v32;

    v31 = v33;
  }

  v34 = swift_initStackObject();
  *(v34 + 16) = xmmword_20C14F980;
  *(v34 + 32) = v23;
  v35 = swift_initStackObject();
  *(v35 + 16) = xmmword_20C14F980;
  *(v35 + 32) = v24;
  *(v35 + 40) = v10;
  v36 = v23;
  v37 = v24;
  v38 = sub_20B6B134C(v35);
  swift_setDeallocating();
  sub_20B520158(v35 + 32, &unk_27C773200);
  *(v34 + 64) = v91;
  *(v34 + 40) = v38;
  sub_20B6B143C(v34);
  swift_setDeallocating();
  sub_20B520158(v34 + 32, &qword_27C773210);
  v39 = sub_20C13C744();

  v40 = [v31 fontDescriptorByAddingAttributes_];

  v41 = [v40 fontDescriptorWithDesign_];
  if (v41)
  {
    v42 = v41;

    v40 = v42;
  }

  v89 = [v11 fontWithDescriptor:v40 size:0.0];

  v43 = [v11 systemFontOfSize:a3 weight:v10];
  v44 = [v43 fontDescriptor];
  v45 = [v44 fontDescriptorWithSymbolicTraits_];
  if (v45)
  {
    v46 = v45;

    v44 = v46;
  }

  v47 = swift_initStackObject();
  *(v47 + 16) = xmmword_20C14F980;
  *(v47 + 32) = v36;
  v48 = swift_initStackObject();
  *(v48 + 16) = xmmword_20C14F980;
  *(v48 + 32) = v37;
  *(v48 + 40) = v10;
  v49 = v36;
  v50 = v37;
  v51 = sub_20B6B134C(v48);
  swift_setDeallocating();
  sub_20B520158(v48 + 32, &unk_27C773200);
  *(v47 + 64) = v91;
  *(v47 + 40) = v51;
  sub_20B6B143C(v47);
  swift_setDeallocating();
  sub_20B520158(v47 + 32, &qword_27C773210);
  v52 = sub_20C13C744();

  v53 = [v44 fontDescriptorByAddingAttributes_];

  v54 = [v53 fontDescriptorWithDesign_];
  if (v54)
  {
    v55 = v54;

    v53 = v55;
  }

  v56 = [v11 fontWithDescriptor:v53 size:0.0];

  v57 = [v11 systemFontOfSize:a4 weight:v10];
  v58 = [v57 fontDescriptor];
  v59 = [v58 fontDescriptorWithSymbolicTraits_];
  if (v59)
  {
    v60 = v59;

    v58 = v60;
  }

  v61 = swift_initStackObject();
  *(v61 + 16) = xmmword_20C14F980;
  *(v61 + 32) = v49;
  v62 = swift_initStackObject();
  *(v62 + 16) = xmmword_20C14F980;
  *(v62 + 32) = v50;
  v63 = v62 + 32;
  *(v62 + 40) = v10;
  v64 = sub_20B6B134C(v62);
  swift_setDeallocating();
  sub_20B520158(v63, &unk_27C773200);
  *(v61 + 64) = v91;
  *(v61 + 40) = v64;
  sub_20B6B143C(v61);
  swift_setDeallocating();
  sub_20B520158(v61 + 32, &qword_27C773210);
  v65 = sub_20C13C744();

  v66 = [v58 fontDescriptorByAddingAttributes_];

  v67 = [v66 fontDescriptorWithDesign_];
  if (v67)
  {
    v68 = v67;

    v66 = v68;
  }

  v69 = [v11 fontWithDescriptor:v66 size:0.0];

  v70 = objc_opt_self();
  v71 = [v70 mainScreen];
  [v71 nativeBounds];
  v73 = v72;
  v75 = v74;
  v77 = v76;
  v79 = v78;

  v93.origin.x = v73;
  v93.origin.y = v75;
  v93.size.width = v77;
  v93.size.height = v79;
  Width = CGRectGetWidth(v93);
  v81 = [v70 mainScreen];
  [v81 nativeScale];
  v83 = v82;

  v84 = sub_20C138104();
  v85 = sub_20C138104();
  v86 = v69;
  if (v84 != v85)
  {
    v86 = v90;
    if (Width / v83 > 375.0)
    {
      if (Width / v83 >= 834.0)
      {
        v86 = v56;
      }

      else
      {
        v86 = v89;
      }
    }
  }

  v87 = v86;

  return v87;
}

Class sub_20BA6C50C()
{
  v0 = *MEMORY[0x277D74418];
  v83 = *MEMORY[0x277D74368];
  v1 = objc_opt_self();
  v2 = [v1 systemFontOfSize:30.0 weight:v0];
  v3 = [v2 fontDescriptor];
  v4 = [v3 fontDescriptorWithSymbolicTraits_];
  if (v4)
  {
    v5 = v4;

    v3 = v5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  v7 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771970);
  v8 = swift_initStackObject();
  v9 = MEMORY[0x277D74430];
  *(v8 + 16) = xmmword_20C14F980;
  v10 = *v9;
  *(v8 + 32) = *v9;
  *(v8 + 40) = v0;
  v11 = v7;
  v12 = v10;
  v13 = v11;
  v14 = v12;
  v15 = sub_20B6B134C(v8);
  swift_setDeallocating();
  sub_20B520158(v8 + 32, &unk_27C773200);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771980);
  *(inited + 64) = v82;
  *(inited + 40) = v15;
  sub_20B6B143C(inited);
  swift_setDeallocating();
  sub_20B520158(inited + 32, &qword_27C773210);
  type metadata accessor for AttributeName(0);
  sub_20B5E5BD0();
  v16 = sub_20C13C744();

  v17 = [v3 fontDescriptorByAddingAttributes_];

  v18 = [v17 fontDescriptorWithDesign_];
  if (v18)
  {
    v19 = v18;

    v17 = v19;
  }

  v81 = [v1 fontWithDescriptor:v17 size:0.0];

  v20 = [v1 systemFontOfSize:40.0 weight:v0];
  v21 = [v20 fontDescriptor];
  v22 = [v21 fontDescriptorWithSymbolicTraits_];
  if (v22)
  {
    v23 = v22;

    v21 = v23;
  }

  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_20C14F980;
  *(v24 + 32) = v13;
  v25 = swift_initStackObject();
  *(v25 + 16) = xmmword_20C14F980;
  *(v25 + 32) = v14;
  *(v25 + 40) = v0;
  v26 = v13;
  v27 = v14;
  v28 = sub_20B6B134C(v25);
  swift_setDeallocating();
  sub_20B520158(v25 + 32, &unk_27C773200);
  *(v24 + 64) = v82;
  *(v24 + 40) = v28;
  sub_20B6B143C(v24);
  swift_setDeallocating();
  sub_20B520158(v24 + 32, &qword_27C773210);
  v29 = sub_20C13C744();

  v30 = [v21 fontDescriptorByAddingAttributes_];

  v31 = [v30 fontDescriptorWithDesign_];
  if (v31)
  {
    v32 = v31;

    v30 = v32;
  }

  v80 = [v1 fontWithDescriptor:v30 size:0.0];

  v33 = [v1 systemFontOfSize:50.0 weight:v0];
  v34 = [v33 fontDescriptor];
  v35 = [v34 fontDescriptorWithSymbolicTraits_];
  if (v35)
  {
    v36 = v35;

    v34 = v36;
  }

  v37 = swift_initStackObject();
  *(v37 + 16) = xmmword_20C14F980;
  *(v37 + 32) = v26;
  v38 = swift_initStackObject();
  *(v38 + 16) = xmmword_20C14F980;
  *(v38 + 32) = v27;
  *(v38 + 40) = v0;
  v39 = v26;
  v40 = v27;
  v41 = sub_20B6B134C(v38);
  swift_setDeallocating();
  sub_20B520158(v38 + 32, &unk_27C773200);
  *(v37 + 64) = v82;
  *(v37 + 40) = v41;
  sub_20B6B143C(v37);
  swift_setDeallocating();
  sub_20B520158(v37 + 32, &qword_27C773210);
  v42 = sub_20C13C744();

  v43 = [v34 fontDescriptorByAddingAttributes_];

  v44 = [v43 fontDescriptorWithDesign_];
  if (v44)
  {
    v45 = v44;

    v43 = v45;
  }

  v46 = [v1 fontWithDescriptor:v43 size:0.0];

  v47 = [v1 systemFontOfSize:76.0 weight:v0];
  v48 = [v47 fontDescriptor];
  v49 = [v48 fontDescriptorWithSymbolicTraits_];
  if (v49)
  {
    v50 = v49;

    v48 = v50;
  }

  v51 = swift_initStackObject();
  *(v51 + 16) = xmmword_20C14F980;
  *(v51 + 32) = v39;
  v52 = swift_initStackObject();
  *(v52 + 16) = xmmword_20C14F980;
  *(v52 + 32) = v40;
  v53 = v52 + 32;
  *(v52 + 40) = v0;
  v54 = sub_20B6B134C(v52);
  swift_setDeallocating();
  sub_20B520158(v53, &unk_27C773200);
  *(v51 + 64) = v82;
  *(v51 + 40) = v54;
  sub_20B6B143C(v51);
  swift_setDeallocating();
  sub_20B520158(v51 + 32, &qword_27C773210);
  v55 = sub_20C13C744();

  v56 = [v48 fontDescriptorByAddingAttributes_];

  v57 = [v56 fontDescriptorWithDesign_];
  if (v57)
  {
    v58 = v57;

    v56 = v58;
  }

  v59 = [v1 fontWithDescriptor:v56 size:0.0];

  v60 = objc_opt_self();
  v61 = [v60 mainScreen];
  [v61 nativeBounds];
  v63 = v62;
  v65 = v64;
  v67 = v66;
  v69 = v68;

  v84.origin.x = v63;
  v84.origin.y = v65;
  v84.size.width = v67;
  v84.size.height = v69;
  Width = CGRectGetWidth(v84);
  v71 = [v60 mainScreen];
  [v71 nativeScale];
  v73 = v72;

  v74 = sub_20C138104();
  v75 = sub_20C138104();
  v76 = v59;
  if (v74 != v75)
  {
    v76 = v81;
    if (Width / v73 > 375.0)
    {
      if (Width / v73 >= 834.0)
      {
        v76 = v46;
      }

      else
      {
        v76 = v80;
      }
    }
  }

  v77 = v76;

  isa = UIFont.monospaced()().super.isa;
  return isa;
}

Class sub_20BA6CE30()
{
  v0 = *MEMORY[0x277D74410];
  v84 = *MEMORY[0x277D74368];
  v1 = objc_opt_self();
  v2 = [v1 systemFontOfSize:30.0 weight:v0];
  v3 = [v2 fontDescriptor];
  v4 = [v3 fontDescriptorWithSymbolicTraits_];
  if (v4)
  {
    v5 = v4;

    v3 = v5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  v7 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771970);
  v8 = swift_initStackObject();
  v9 = MEMORY[0x277D74430];
  *(v8 + 16) = xmmword_20C14F980;
  v10 = *v9;
  *(v8 + 32) = *v9;
  *(v8 + 40) = v0;
  v11 = v7;
  v12 = v10;
  v13 = v11;
  v14 = v12;
  v15 = sub_20B6B134C(v8);
  swift_setDeallocating();
  sub_20B520158(v8 + 32, &unk_27C773200);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771980);
  *(inited + 64) = v83;
  *(inited + 40) = v15;
  sub_20B6B143C(inited);
  swift_setDeallocating();
  sub_20B520158(inited + 32, &qword_27C773210);
  type metadata accessor for AttributeName(0);
  sub_20B5E5BD0();
  v16 = sub_20C13C744();

  v17 = [v3 fontDescriptorByAddingAttributes_];

  v18 = [v17 fontDescriptorWithDesign_];
  if (v18)
  {
    v19 = v18;

    v17 = v19;
  }

  v82 = [v1 fontWithDescriptor:v17 size:0.0];

  v20 = [v1 systemFontOfSize:40.0 weight:v0];
  v21 = [v20 fontDescriptor];
  v22 = [v21 fontDescriptorWithSymbolicTraits_];
  if (v22)
  {
    v23 = v22;

    v21 = v23;
  }

  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_20C14F980;
  *(v24 + 32) = v13;
  v25 = swift_initStackObject();
  *(v25 + 16) = xmmword_20C14F980;
  *(v25 + 32) = v14;
  *(v25 + 40) = v0;
  v26 = v13;
  v27 = v14;
  v28 = sub_20B6B134C(v25);
  swift_setDeallocating();
  sub_20B520158(v25 + 32, &unk_27C773200);
  *(v24 + 64) = v83;
  *(v24 + 40) = v28;
  sub_20B6B143C(v24);
  swift_setDeallocating();
  sub_20B520158(v24 + 32, &qword_27C773210);
  v29 = sub_20C13C744();

  v30 = [v21 fontDescriptorByAddingAttributes_];

  v31 = [v30 fontDescriptorWithDesign_];
  if (v31)
  {
    v32 = v31;

    v30 = v32;
  }

  v81 = [v1 fontWithDescriptor:v30 size:0.0];

  v33 = [v1 systemFontOfSize:50.0 weight:v0];
  v34 = [v33 fontDescriptor];
  v35 = [v34 fontDescriptorWithSymbolicTraits_];
  if (v35)
  {
    v36 = v35;

    v34 = v36;
  }

  v37 = swift_initStackObject();
  *(v37 + 16) = xmmword_20C14F980;
  *(v37 + 32) = v26;
  v38 = swift_initStackObject();
  *(v38 + 16) = xmmword_20C14F980;
  *(v38 + 32) = v27;
  *(v38 + 40) = v0;
  v39 = v26;
  v40 = v27;
  v41 = sub_20B6B134C(v38);
  swift_setDeallocating();
  sub_20B520158(v38 + 32, &unk_27C773200);
  *(v37 + 64) = v83;
  *(v37 + 40) = v41;
  sub_20B6B143C(v37);
  swift_setDeallocating();
  sub_20B520158(v37 + 32, &qword_27C773210);
  v42 = sub_20C13C744();

  v43 = [v34 fontDescriptorByAddingAttributes_];

  v44 = [v43 fontDescriptorWithDesign_];
  if (v44)
  {
    v45 = v44;

    v43 = v45;
  }

  v46 = [v1 fontWithDescriptor:v43 size:0.0];

  v47 = [v1 systemFontOfSize:76.0 weight:v0];
  v48 = [v47 fontDescriptor];
  v49 = [v48 fontDescriptorWithSymbolicTraits_];
  if (v49)
  {
    v50 = v49;

    v48 = v50;
  }

  v51 = swift_initStackObject();
  *(v51 + 16) = xmmword_20C14F980;
  *(v51 + 32) = v39;
  v52 = swift_initStackObject();
  *(v52 + 16) = xmmword_20C14F980;
  *(v52 + 32) = v40;
  v53 = v52 + 32;
  *(v52 + 40) = v0;
  v54 = sub_20B6B134C(v52);
  swift_setDeallocating();
  sub_20B520158(v53, &unk_27C773200);
  *(v51 + 64) = v83;
  *(v51 + 40) = v54;
  sub_20B6B143C(v51);
  swift_setDeallocating();
  sub_20B520158(v51 + 32, &qword_27C773210);
  v55 = sub_20C13C744();

  v56 = [v48 fontDescriptorByAddingAttributes_];

  v57 = [v56 fontDescriptorWithDesign_];
  if (v57)
  {
    v58 = v57;

    v56 = v58;
  }

  v59 = [v1 fontWithDescriptor:v56 size:0.0];

  v60 = objc_opt_self();
  v61 = [v60 mainScreen];
  [v61 nativeBounds];
  v63 = v62;
  v65 = v64;
  v67 = v66;
  v69 = v68;

  v85.origin.x = v63;
  v85.origin.y = v65;
  v85.size.width = v67;
  v85.size.height = v69;
  Width = CGRectGetWidth(v85);
  v71 = [v60 mainScreen];
  [v71 nativeScale];
  v73 = v72;

  v74 = sub_20C138104();
  v75 = sub_20C138104();
  v76 = v59;
  if (v74 != v75)
  {
    v76 = v82;
    if (Width / v73 > 375.0)
    {
      if (Width / v73 >= 834.0)
      {
        v76 = v46;
      }

      else
      {
        v76 = v81;
      }
    }
  }

  v77 = v76;

  isa = UIFont.centeredColonsVersion()().super.isa;
  v79 = UIFont.monospaced()().super.isa;

  return v79;
}

char *sub_20BA6D748(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  *&v4[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_isMinFontPreferred] = 0;
  v10 = OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_itemInfo;
  v11 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v11 - 8) + 56))(&v5[v10], 1, 1, v11);
  v12 = &v5[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_layout];
  *v12 = xmmword_20C156A10;
  v12[1] = xmmword_20C169530;
  v13 = &v5[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_artworkView];
  v14 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame_];
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  *v13 = v14;
  v13[1] = &off_2822B63E8;
  v15 = OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_contentLayoutGuide;
  *&v5[v15] = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  v16 = OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_vibrantShadowView;
  v17 = [objc_allocWithZone(type metadata accessor for VibrantShadowView()) initWithFrame_];
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v5[v16] = v17;
  v18 = OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_textContainer;
  v19 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v19 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v5[v18] = v19;
  v20 = OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_titleLabel;
  v21 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v21 setTranslatesAutoresizingMaskIntoConstraints_];
  [v21 setLineBreakMode_];
  [v21 setNumberOfLines_];
  [v21 setAllowsDefaultTighteningForTruncation_];
  *&v5[v20] = v21;
  v22 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v22 setTranslatesAutoresizingMaskIntoConstraints_];
  v23 = *MEMORY[0x277D74368];
  v24 = *MEMORY[0x277D74418];
  v25 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76A20] compatibleWithTraitCollection:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  v27 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771970);
  v28 = swift_initStackObject();
  v29 = MEMORY[0x277D74430];
  *(v28 + 16) = xmmword_20C14F980;
  v30 = *v29;
  *(v28 + 32) = *v29;
  *(v28 + 40) = v24;
  v31 = v27;
  v32 = v30;
  v33 = sub_20B6B134C(v28);
  swift_setDeallocating();
  sub_20B520158(v28 + 32, &unk_27C773200);
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771980);
  *(inited + 40) = v33;
  sub_20B6B143C(inited);
  swift_setDeallocating();
  sub_20B520158(inited + 32, &qword_27C773210);
  type metadata accessor for AttributeName(0);
  sub_20B5E5BD0();
  v34 = sub_20C13C744();

  v35 = [v25 fontDescriptorByAddingAttributes_];

  v36 = [v35 fontDescriptorWithDesign_];
  if (v36)
  {
    v37 = v36;

    v35 = v37;
  }

  v38 = OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_subtitleLabel;
  v39 = [objc_opt_self() fontWithDescriptor:v35 size:0.0];

  [v22 setFont_];
  [v22 setAllowsDefaultTighteningForTruncation_];
  *&v5[v38] = v22;
  v40 = OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_previewButtonPlatter;
  v41 = [objc_opt_self() effectWithStyle_];
  v42 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  v43 = v42;
  [v43 setTranslatesAutoresizingMaskIntoConstraints_];
  [v43 setClipsToBounds_];
  v44 = [v43 layer];
  [v44 setCornerRadius_];

  [v43 setClipsToBounds_];
  *&v5[v40] = v43;
  v45 = OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_previewButton;
  v46 = objc_opt_self();
  v47 = [v46 whiteColor];
  type metadata accessor for RoundedButton();
  v48 = [swift_getObjCClassFromMetadata() buttonWithType_];
  [v48 setTitle:0 forState:0];
  v49 = v48;
  v50 = [v49 titleLabel];
  [v50 setAdjustsFontForContentSizeCategory_];

  sub_20BD4F054(0, 0, 1, 0);
  [v49 setTintColor_];

  v51 = [v46 clearColor];
  [v49 setBackgroundColor_];

  [v49 setTranslatesAutoresizingMaskIntoConstraints_];
  v52 = v49;
  v53 = [v52 titleLabel];
  [v53 setAdjustsFontForContentSizeCategory_];

  *&v5[v45] = v52;
  *&v5[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_contentLayoutGuideLeftConstraint] = 0;
  *&v5[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_contentLayoutGuideTopConstraint] = 0;
  *&v5[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_contentLayoutGuideWidthConstraint] = 0;
  v54 = &v5[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_currentContainerSize];
  *v54 = 0;
  v54[1] = 0;
  v5[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_currentLayout] = 4;
  *&v5[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_oldWidth] = 0;
  *&v5[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_previewButtonRightConstraint] = 0;
  *&v5[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_previewButtonWidthConstraint] = 0;
  v73.receiver = v5;
  v73.super_class = type metadata accessor for ProgramDetailHeaderCell();
  v55 = objc_msgSendSuper2(&v73, sel_initWithFrame_, a1, a2, a3, a4);
  v56 = OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_previewButton;
  v57 = *&v55[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_previewButton];
  v58 = v55;
  [v57 addTarget:v58 action:sel_playButtonTapped_ forControlEvents:64];
  v59 = &v58[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_artworkView];
  v60 = *&v58[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_artworkView];
  v61 = *&v58[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_artworkView + 8];
  ObjectType = swift_getObjectType();
  v63 = *(v61 + 288);
  v64 = v60;
  v63(2, ObjectType, v61);

  v65 = [v58 contentView];
  [v65 addSubview_];

  v66 = [v58 contentView];
  [v66 addSubview_];

  v67 = [v58 contentView];
  v68 = OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_textContainer;
  [v67 addSubview_];

  [*&v58[v68] addSubview_];
  [*&v58[v68] addSubview_];
  v69 = [v58 contentView];
  [v69 addSubview_];

  v70 = [v58 contentView];
  [v70 addSubview_];

  v71 = [v58 contentView];
  [v71 addLayoutGuide_];

  sub_20BA6E64C();
  return v58;
}

id sub_20BA6E1CC()
{
  v1 = OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_oldWidth;
  v2 = *&v0[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_oldWidth];
  [v0 bounds];
  if (v2 != CGRectGetWidth(v12))
  {
    [v0 bounds];
    *&v0[v1] = CGRectGetWidth(v13);
    v3 = [v0 window];
    if (v3)
    {
      v4 = v3;
      [v3 bounds];
      v6 = v5;
      v8 = v7;
      v9 = [v0 traitCollection];
      sub_20BA7231C(v6, v8);
    }
  }

  v11.receiver = v0;
  v11.super_class = type metadata accessor for ProgramDetailHeaderCell();
  return objc_msgSendSuper2(&v11, sel_layoutSubviews);
}

void sub_20BA6E4A8(void *a1)
{
  v2 = v1;
  v15.receiver = v2;
  v15.super_class = type metadata accessor for ProgramDetailHeaderCell();
  objc_msgSendSuper2(&v15, sel_traitCollectionDidChange_, a1);
  v4 = [v2 traitCollection];
  v5 = v4;
  if (!a1)
  {
    if (!v4)
    {
      return;
    }

    goto LABEL_7;
  }

  if (!v4 || (sub_20B51C88C(0, &qword_27C7655A0), v6 = a1, v7 = sub_20C13D5F4(), v6, v5, (v7 & 1) == 0))
  {
LABEL_7:
    v8 = [v2 window];
    if (v8)
    {
      v9 = v8;
      [v8 bounds];
      v11 = v10;
      v13 = v12;
      v14 = [v2 traitCollection];
      sub_20BA7231C(v11, v13);
    }
  }
}

void sub_20BA6E64C()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_artworkView];
  v3 = [v0 contentView];
  v4 = *MEMORY[0x277D768C8];
  v5 = *(MEMORY[0x277D768C8] + 8);
  v7 = *(MEMORY[0x277D768C8] + 16);
  v6 = *(MEMORY[0x277D768C8] + 24);
  v8 = [v2 leadingAnchor];
  v9 = [v3 leadingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9 constant:v5];

  LODWORD(v11) = 1148846080;
  [v10 setPriority_];
  v12 = v10;
  v13 = [v2 trailingAnchor];
  v14 = [v3 trailingAnchor];
  v15 = -v6;
  v16 = [v13 constraintEqualToAnchor:v14 constant:v15];

  LODWORD(v17) = 1148846080;
  [v16 setPriority_];
  v18 = v16;
  v19 = [v2 topAnchor];
  v20 = [v3 &selRef_setLineBreakMode_];
  v21 = [v19 constraintEqualToAnchor:v20 constant:v4];

  LODWORD(v22) = 1148846080;
  [v21 setPriority_];
  v23 = [v2 bottomAnchor];
  v24 = [v3 &selRef_secondaryLabel + 5];
  v25 = -v7;
  v26 = [v23 constraintEqualToAnchor:v24 constant:v25];

  LODWORD(v27) = 1148846080;
  [v26 setPriority_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_20C14FE90;
  *(v28 + 32) = v12;
  *(v28 + 40) = v18;
  *(v28 + 48) = v21;
  *(v28 + 56) = v26;
  v176 = v28;
  v29 = v21;

  v177 = *&v1[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_contentLayoutGuide];
  v30 = [v177 leftAnchor];
  v31 = [v1 contentView];
  v32 = [v31 leftAnchor];

  v33 = [v30 constraintEqualToAnchor_];
  v178 = OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_contentLayoutGuideLeftConstraint;
  v34 = *&v1[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_contentLayoutGuideLeftConstraint];
  *&v1[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_contentLayoutGuideLeftConstraint] = v33;

  v35 = *&v1[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_textContainer];
  v36 = [v1 contentView];
  v37 = [v35 leadingAnchor];
  v38 = [v36 leadingAnchor];
  v39 = [v37 constraintEqualToAnchor:v38 constant:v5];

  LODWORD(v40) = 1148846080;
  [v39 setPriority_];
  v41 = v39;
  v42 = [v35 trailingAnchor];
  v43 = [v36 trailingAnchor];
  v44 = [v42 constraintEqualToAnchor:v43 constant:v15];

  LODWORD(v45) = 1148846080;
  [v44 setPriority_];
  v46 = v44;
  v47 = [v35 topAnchor];
  v48 = [v36 topAnchor];
  v49 = [v47 &selRef_passwordEntryCancelledHandler + 6];

  LODWORD(v50) = 1148846080;
  [v49 &selRef_meterUnit];
  v51 = [v35 bottomAnchor];
  v52 = [v36 bottomAnchor];
  v53 = [v51 &selRef_passwordEntryCancelledHandler + 6];

  LODWORD(v54) = 1148846080;
  [v53 &selRef_meterUnit];
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_20C14FE90;
  *(v55 + 32) = v41;
  *(v55 + 40) = v46;
  *(v55 + 48) = v49;
  *(v55 + 56) = v53;
  v56 = v49;

  v57 = [v177 topAnchor];
  v58 = [v1 contentView];
  v59 = [v58 safeAreaLayoutGuide];

  v60 = [v59 topAnchor];
  v61 = [v57 &selRef_passwordEntryCancelledHandler + 6];

  v62 = OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_contentLayoutGuideTopConstraint;
  v63 = *&v1[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_contentLayoutGuideTopConstraint];
  *&v1[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_contentLayoutGuideTopConstraint] = v61;

  v64 = *&v1[v62];
  v183 = *&v1[v178];
  v184 = v64;
  v65 = v64;
  v66 = v183;
  v67 = [v177 bottomAnchor];
  v68 = [v1 contentView];
  v69 = [v68 bottomAnchor];

  v70 = [v67 &selRef_passwordEntryCancelledHandler + 6];
  v71 = 0;
  v185 = v70;
  v181 = MEMORY[0x277D84F90];
  v179 = MEMORY[0x277D84F90];
  v72 = MEMORY[0x277D84F90];
LABEL_2:
  if (v71 <= 3)
  {
    v73 = 3;
  }

  else
  {
    v73 = v71;
  }

  while (v71 != 3)
  {
    if (v73 == v71)
    {
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    v74 = v182[v71++ + 4];
    if (v74)
    {
      v75 = v74;
      MEMORY[0x20F2F43B0]();
      if (*((v181 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v181 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_20C13CCA4();
      }

      sub_20C13CCE4();
      v72 = v181;
      goto LABEL_2;
    }
  }

  v173 = v72;
  v174 = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765390);
  swift_arrayDestroy();
  v76 = swift_allocObject();
  *(v76 + 16) = xmmword_20C150040;
  v77 = *&v1[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_titleLabel];
  v78 = [v77 leftAnchor];
  v79 = [v177 leftAnchor];
  v80 = [v78 constraintEqualToAnchor_];

  *(v76 + 32) = v80;
  v81 = [v77 rightAnchor];
  v82 = [v177 rightAnchor];
  v83 = [v81 &selRef:v82 alertControllerReleasedDictationButton:? + 5];

  *(v76 + 40) = v83;
  v84 = [v77 topAnchor];
  v85 = [v177 topAnchor];
  v86 = [v84 &selRef:v85 alertControllerReleasedDictationButton:? + 5];

  v172 = v76;
  *(v76 + 48) = v86;
  v87 = swift_allocObject();
  *(v87 + 16) = xmmword_20C150040;
  v88 = *&v1[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_subtitleLabel];
  v89 = [v88 leftAnchor];
  v90 = [v177 leftAnchor];
  v91 = [v89 &selRef:v90 alertControllerReleasedDictationButton:? + 5];

  *(v87 + 32) = v91;
  v92 = [v88 widthAnchor];
  v93 = [v77 widthAnchor];
  v94 = [v92 &selRef:v93 alertControllerReleasedDictationButton:? + 5];

  *(v87 + 40) = v94;
  v95 = [v88 topAnchor];
  v96 = [v77 bottomAnchor];
  v97 = [v95 &selRef:v96 alertControllerReleasedDictationButton:? + 5];

  v175 = v87;
  *(v87 + 48) = v97;
  v98 = *&v1[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_previewButton];
  v99 = [v98 rightAnchor];
  v100 = [v1 contentView];
  v101 = [v100 rightAnchor];

  v102 = [v99 &selRef:v101 alertControllerReleasedDictationButton:? + 5];
  v103 = OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_previewButtonRightConstraint;
  v104 = *&v1[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_previewButtonRightConstraint];
  *&v1[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_previewButtonRightConstraint] = v102;

  v105 = [v98 widthAnchor];
  v106 = [v105 constraintEqualToConstant_];

  v107 = OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_previewButtonWidthConstraint;
  v108 = *&v1[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_previewButtonWidthConstraint];
  *&v1[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_previewButtonWidthConstraint] = v106;

  v109 = [v98 leftAnchor];
  v110 = [v177 leftAnchor];
  v111 = [v109 &selRef:v110 alertControllerReleasedDictationButton:? + 5];

  v180[4] = v111;
  v112 = [v98 rightAnchor];
  v113 = [v1 contentView];
  v114 = [v113 rightAnchor];

  v115 = [v112 constraintLessThanOrEqualToAnchor_];
  v116 = *&v1[v103];
  v180[5] = v115;
  v180[6] = v116;
  v117 = v116;
  v118 = [v98 bottomAnchor];
  v119 = [v177 bottomAnchor];
  v120 = [v118 &selRef:v119 alertControllerReleasedDictationButton:? + 5];

  v121 = *&v1[v107];
  v180[7] = v120;
  v180[8] = v121;
  v181 = MEMORY[0x277D84F90];
  v122 = v121;
  v123 = 0;
LABEL_12:
  if (v123 <= 5)
  {
    v124 = 5;
  }

  else
  {
    v124 = v123;
  }

  while (v123 != 5)
  {
    if (v124 == v123)
    {
      goto LABEL_23;
    }

    v125 = v180[v123++ + 4];
    if (v125)
    {
      v126 = v125;
      MEMORY[0x20F2F43B0]();
      if (*((v181 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v181 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_20C13CCA4();
      }

      sub_20C13CCE4();
      v179 = v181;
      goto LABEL_12;
    }
  }

  swift_arrayDestroy();
  v127 = *&v1[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_previewButtonPlatter];
  v128 = [v127 leadingAnchor];
  v129 = [v98 leadingAnchor];
  v130 = [v128 constraintEqualToAnchor:v129 constant:v5];

  LODWORD(v131) = 1148846080;
  [v130 setPriority_];
  v132 = v130;
  v133 = [v127 trailingAnchor];
  v134 = [v98 trailingAnchor];
  v135 = [v133 constraintEqualToAnchor:v134 constant:v15];

  LODWORD(v136) = 1148846080;
  [v135 setPriority_];
  v137 = v135;
  v138 = [v127 topAnchor];
  v139 = [v98 &selRef_setLineBreakMode_];
  v140 = [v138 constraintEqualToAnchor:v139 constant:v4];

  LODWORD(v141) = 1148846080;
  [v140 setPriority_];
  v142 = [v127 bottomAnchor];
  v143 = [v98 &selRef_secondaryLabel + 5];
  v144 = [v142 constraintEqualToAnchor:v143 constant:v25];

  LODWORD(v145) = 1148846080;
  [v144 setPriority_];
  v146 = swift_allocObject();
  *(v146 + 16) = xmmword_20C14FE90;
  *(v146 + 32) = v132;
  *(v146 + 40) = v137;
  *(v146 + 48) = v140;
  *(v146 + 56) = v144;

  v147 = *&v1[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_vibrantShadowView];
  v148 = [v1 contentView];
  v149 = [v147 leadingAnchor];
  v150 = [v148 leadingAnchor];
  v151 = [v149 constraintEqualToAnchor:v150 constant:v5];

  LODWORD(v152) = 1148846080;
  [v151 setPriority_];
  v153 = v151;
  v154 = [v147 trailingAnchor];
  v155 = [v148 trailingAnchor];
  v156 = [v154 &selRef_passwordEntryCancelledHandler + 6];

  LODWORD(v157) = 1148846080;
  [v156 setPriority_];
  v158 = v156;
  v159 = [v147 topAnchor];
  v160 = [v148 topAnchor];
  v161 = [v159 &selRef_passwordEntryCancelledHandler + 6];

  LODWORD(v162) = 1148846080;
  [v161 setPriority_];
  v163 = [v147 bottomAnchor];
  v164 = [v148 bottomAnchor];
  v165 = [v163 &selRef_passwordEntryCancelledHandler + 6];

  LODWORD(v166) = 1148846080;
  [v165 setPriority_];
  v167 = swift_allocObject();
  *(v167 + 16) = xmmword_20C14FE90;
  *(v167 + 32) = v153;
  *(v167 + 40) = v158;
  *(v167 + 48) = v161;
  *(v167 + 56) = v165;
  v168 = v161;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768260);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C150DC0;
  *(inited + 32) = v176;
  *(inited + 40) = v174;
  *(inited + 48) = v173;
  *(inited + 56) = v172;
  *(inited + 64) = v175;
  *(inited + 72) = v179;
  *(inited + 80) = v146;
  *(inited + 88) = v167;
  v170 = objc_opt_self();
  sub_20BE54D20(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7677E0);
  swift_arrayDestroy();
  sub_20B51C88C(0, &qword_281100500);
  v171 = sub_20C13CC54();

  [v170 activateConstraints_];
}

uint64_t sub_20BA6F930(unsigned __int8 a1, double a2, double a3)
{
  v4 = v3;
  v6 = &v4[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_currentContainerSize];
  *v6 = a2;
  v6[1] = a3;
  v4[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_currentLayout] = a1;
  v65 = *&v4[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_subtitleLabel];
  v63 = [v4 traitCollection];
  if (qword_27C7606A0 != -1)
  {
    swift_once();
  }

  *&v133[16] = xmmword_27C7633D8;
  *&v133[32] = unk_27C7633E8;
  v134 = unk_27C7633F8;
  v130 = xmmword_27C763398;
  v131 = *&qword_27C7633A8;
  v132 = xmmword_27C7633B8;
  *v133 = *&qword_27C7633C8;
  v136 = unk_27C763418;
  v135 = unk_27C763408;
  v139 = *&qword_27C763468;
  *&v138[32] = xmmword_27C763458;
  *&v138[16] = *&qword_27C763448;
  v137 = *&qword_27C763428;
  *v138 = xmmword_27C763438;
  v141 = *&qword_27C763488;
  v140 = xmmword_27C763478;
  v144 = unk_27C7634D8;
  *&v143[32] = *(&xmmword_27C7634C0 + 8);
  *&v143[16] = *(&xmmword_27C7634B0 + 8);
  v142 = xmmword_27C763498;
  *v143 = *&qword_27C7634A8;
  v145 = unk_27C7634E8;
  v146 = unk_27C7634F8;
  *&v148[32] = *(&xmmword_27C763530 + 8);
  v149 = unk_27C763548;
  *v148 = xmmword_27C763518;
  *&v148[16] = unk_27C763528;
  v147 = *&qword_27C763508;
  v67 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v59 = *&v143[8];
      v61 = *&v143[24];
      v55 = *(&v144 + 1);
      v57 = v144;
      v53 = *&v143[40];
      v7 = *v143;
      v8 = v142;
      v9 = BYTE8(v142);
      v10 = BYTE13(v141);
      v11 = DWORD2(v141);
      v12 = BYTE12(v141);
      v13 = v141;
      v14 = *(&v140 + 1);
      v15 = v140;
      v16 = &v140;
    }

    else
    {
      v59 = *&v148[8];
      v61 = *&v148[24];
      v55 = *(&v149 + 1);
      v57 = v149;
      v53 = *&v148[40];
      v7 = *v148;
      v8 = v147;
      v9 = BYTE8(v147);
      v10 = BYTE13(v146);
      v11 = DWORD2(v146);
      v12 = BYTE12(v146);
      v14 = *(&v145 + 1);
      v13 = v146;
      v15 = v145;
      v16 = &v145;
    }
  }

  else if (a1)
  {
    v59 = *&v138[8];
    v61 = *&v138[24];
    v55 = *(&v139 + 1);
    v57 = v139;
    v53 = *&v138[40];
    v7 = *v138;
    v8 = v137;
    v9 = BYTE8(v137);
    v10 = BYTE13(v136);
    v11 = DWORD2(v136);
    v12 = BYTE12(v136);
    v13 = v136;
    v14 = *(&v135 + 1);
    v15 = v135;
    v16 = &v135;
  }

  else
  {
    v59 = *&v133[8];
    v61 = *&v133[24];
    v55 = *(&v134 + 1);
    v57 = v134;
    v53 = *&v133[40];
    v7 = *v133;
    v8 = v132;
    v9 = BYTE8(v132);
    v10 = BYTE13(v131);
    v11 = DWORD2(v131);
    v12 = BYTE12(v131);
    v13 = v131;
    v14 = *(&v130 + 1);
    v15 = v130;
    v16 = &v130;
  }

  sub_20B7B07E8(v16, &v109);
  v81 = v12;
  v80 = v9;
  v121 = v15;
  v122 = v14;
  v123 = v13;
  v124 = v11;
  v125 = v12;
  v126 = v10;
  v127 = v8;
  v128 = v9;
  v129 = v7;
  v82[0] = v15;
  v82[1] = v14;
  v82[2] = v13;
  v83 = v11;
  v84 = v12;
  v85 = v10;
  v86 = v8;
  v87 = v9;
  v90 = v61;
  v89 = v59;
  v88 = v7;
  v91 = v53;
  v92 = v57;
  v93 = v55;
  v17 = sub_20B7C6A74(v63);
  sub_20B7B0844(v82);

  [v65 setFont_];
  [v65 setNumberOfLines_];
  v66 = *&v4[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_titleLabel];
  v64 = [v4 traitCollection];
  if (qword_27C7606A8 != -1)
  {
    swift_once();
  }

  *&v97[16] = xmmword_27C763598;
  *&v97[32] = unk_27C7635A8;
  v98 = unk_27C7635B8;
  v99 = unk_27C7635C8;
  v94 = xmmword_27C763558;
  v95 = *&qword_27C763568;
  v96 = xmmword_27C763578;
  *v97 = *&qword_27C763588;
  v100 = unk_27C7635D8;
  v101 = *&qword_27C7635E8;
  *&v102[32] = xmmword_27C763618;
  v103 = *&qword_27C763628;
  *v102 = xmmword_27C7635F8;
  *&v102[16] = *&qword_27C763608;
  v104 = xmmword_27C763638;
  v105 = *&qword_27C763648;
  *&v107[32] = *(&xmmword_27C763680 + 8);
  v108 = unk_27C763698;
  *v107 = *&qword_27C763668;
  *&v107[16] = *(&xmmword_27C763670 + 8);
  v106 = xmmword_27C763658;
  v109 = unk_27C7636A8;
  v110 = unk_27C7636B8;
  *&v112[32] = *(&xmmword_27C7636F0 + 8);
  v113 = unk_27C763708;
  *v112 = xmmword_27C7636D8;
  *&v112[16] = unk_27C7636E8;
  v111 = *&qword_27C7636C8;
  if (v67 > 1u)
  {
    if (v67 == 2)
    {
      v60 = *&v107[8];
      v62 = *&v107[24];
      v56 = *(&v108 + 1);
      v58 = v108;
      v54 = *&v107[40];
      v18 = *v107;
      v19 = v106;
      v20 = BYTE8(v106);
      v21 = BYTE13(v105);
      v22 = DWORD2(v105);
      v23 = BYTE12(v105);
      v24 = v105;
      v25 = *(&v104 + 1);
      v26 = v104;
      v27 = &v104;
    }

    else
    {
      v60 = *&v112[8];
      v62 = *&v112[24];
      v56 = *(&v113 + 1);
      v58 = v113;
      v54 = *&v112[40];
      v18 = *v112;
      v19 = v111;
      v20 = BYTE8(v111);
      v21 = BYTE13(v110);
      v22 = DWORD2(v110);
      v23 = BYTE12(v110);
      v24 = v110;
      v25 = *(&v109 + 1);
      v26 = v109;
      v27 = &v109;
    }
  }

  else if (v67)
  {
    v60 = *&v102[8];
    v62 = *&v102[24];
    v56 = *(&v103 + 1);
    v58 = v103;
    v54 = *&v102[40];
    v18 = *v102;
    v19 = v101;
    v20 = BYTE8(v101);
    v21 = BYTE13(v100);
    v22 = DWORD2(v100);
    v23 = BYTE12(v100);
    v25 = *(&v99 + 1);
    v24 = v100;
    v26 = v99;
    v27 = &v99;
  }

  else
  {
    v60 = *&v97[8];
    v62 = *&v97[24];
    v56 = *(&v98 + 1);
    v58 = v98;
    v54 = *&v97[40];
    v18 = *v97;
    v19 = v96;
    v20 = BYTE8(v96);
    v21 = BYTE13(v95);
    v22 = DWORD2(v95);
    v23 = BYTE12(v95);
    v25 = *(&v94 + 1);
    v24 = v95;
    v26 = v94;
    v27 = &v94;
  }

  sub_20B7B07E8(v27, v68);
  v114[5] = v26;
  v114[6] = v25;
  v114[7] = v24;
  v115 = v22;
  v116 = v23;
  v117 = v21;
  v118 = v19;
  v119 = v20;
  v120 = v18;
  v68[0] = v26;
  v68[1] = v25;
  v68[2] = v24;
  v69 = v22;
  v70 = v23;
  v71 = v21;
  v72 = v19;
  v73 = v20;
  v74 = v18;
  v75 = v60;
  v76 = v62;
  v77 = v54;
  v78 = v58;
  v79 = v56;
  v28 = sub_20B7C6A74(v64);
  sub_20B7B0844(v68);

  [v66 setFont_];
  [v66 setNumberOfLines_];
  [v4 bounds];
  sub_20B755B8C(v114, v29);
  sub_20B5F320C(v114);
  v30 = *v114;
  v31 = *&v4[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_contentLayoutGuideLeftConstraint];
  if (v31)
  {
    v32 = v31;
    [v4 effectiveUserInterfaceLayoutDirection];
    [v32 setConstant_];
  }

  v33 = OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_previewButtonRightConstraint;
  v34 = *&v4[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_previewButtonRightConstraint];
  if (v34)
  {
    [v34 setActive_];
    v35 = *&v4[v33];
    if (v35)
    {
      v36 = v35;
      [v4 effectiveUserInterfaceLayoutDirection];
      [v36 setConstant_];
    }
  }

  v37 = *&v4[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_previewButtonWidthConstraint];
  if (v37)
  {
    [v37 setActive_];
  }

  if ((v67 & 0xFE) != 0)
  {
    v38 = 0.45;
  }

  else
  {
    v38 = 0.5;
  }

  v39 = OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_contentLayoutGuideWidthConstraint;
  v40 = *&v4[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_contentLayoutGuideWidthConstraint];
  if (v40)
  {
    [v40 multiplier];
    if (v41 == v38)
    {
      goto LABEL_35;
    }

    v42 = *&v4[v39];
    if (v42)
    {
      [v42 setActive_];
    }
  }

  v43 = [*&v4[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_contentLayoutGuide] widthAnchor];
  v44 = [v4 contentView];
  v45 = [v44 widthAnchor];

  v46 = [v43 constraintEqualToAnchor:v45 multiplier:v38];
  v47 = *&v4[v39];
  *&v4[v39] = v46;
  v48 = v46;

  if (v48)
  {
    [v48 setActive_];
  }

LABEL_35:
  [v4 setNeedsUpdateConstraints];
  v49 = [v4 traitCollection];
  v50 = sub_20BE8BF3C(&unk_28228DA28);
  v51 = sub_20B7AC3D4(v50, v67 | 0x80u, v49);
  sub_20B7B0B88(v67 | 0x80, v49, v51 & 1);
}

id sub_20BA701C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProgramDetailHeaderCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ProgramDetailHeaderCell()
{
  result = qword_27C769848;
  if (!qword_27C769848)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BA70380()
{
  sub_20B5E238C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20BA70490(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_20BA704DC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20BA70534(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_20BA70598(uint64_t a1, void *a2)
{
  sub_20BD543C0(a2);
  [objc_msgSend(a2 container)];
  return swift_unknownObjectRelease();
}

id sub_20BA7061C(double a1)
{
  v2 = a1 + 5.0;
  v3 = OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_contentLayoutGuideTopConstraint;
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_contentLayoutGuideTopConstraint);
  if (v4)
  {
    result = [v4 constant];
    if (v2 == v6)
    {
      return result;
    }

    v4 = *(v1 + v3);
  }

  return [v4 setConstant_];
}

uint64_t sub_20BA706B8(unint64_t a1)
{
  v2 = sub_20C13BB84();
  v200 = *(v2 - 1);
  v201 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v160 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v160 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v186 = &v160 - v10;
  v185 = v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v160 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v15 - 8);
  v191 = &v160 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v196 = *(v17 - 8);
  v197 = v17;
  MEMORY[0x28223BE20](v17);
  v184 = &v160 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = v18;
  MEMORY[0x28223BE20](v19);
  v195 = &v160 - v20;
  v190 = sub_20C1391C4();
  v188 = *(v190 - 1);
  MEMORY[0x28223BE20](v190);
  v189 = &v160 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_20C138A64();
  v192 = *(v22 - 8);
  v193 = v22;
  MEMORY[0x28223BE20](v22);
  v194 = &v160 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v160 - v25;
  v27 = sub_20C13C554();
  v199 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v29 = (&v160 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = *(sub_20C137C24() - 8);
  MEMORY[0x28223BE20](*(v30 + 64));
  MEMORY[0x28223BE20](v31);
  v37 = &v160 - v36;
  if (((a1 >> 57) & 0x78 | a1 & 7) == 0x30)
  {
    v182 = v27;
    v173 = v26;
    v174 = v32;
    v176 = v35;
    v168 = v8;
    v169 = v14;
    v170 = v6;
    v171 = v5;
    v38 = v33;
    v39 = v34;
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7681A8);
    v41 = swift_projectBox();
    v42 = *v41;
    v43 = *(v41 + 8);
    v44 = *(v41 + 16);
    v45 = *(v40 + 80);
    v46 = (v41 + *(v40 + 96));
    v47 = v46[1];
    v175 = *v46;
    v200 = v39;
    v48 = *(v39 + 16);
    v198 = v38;
    v178 = v39 + 16;
    v177 = v48;
    v48(v37, v41 + v45, v38);
    v49 = v202;
    v50 = *&v202[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_titleLabel];
    v181 = v44;
    v201 = v44;
    v51 = v42;
    v52 = v43;
    v187 = v47;

    v180 = v51;
    [v50 setAttributedText_];
    v53 = *&v49[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_subtitleLabel];
    v179 = v52;
    [v53 setAttributedText_];
    v54 = v49[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_currentLayout];
    v55 = v37;
    if (v54 != 4)
    {
      v56 = [v49 traitCollection];
      v57 = sub_20BE8BF3C(&unk_282287150);
      v58 = sub_20B7AC3D4(v57, v54 | 0x80u, v56);
      sub_20B7B0B88(v54 | 0x80, v56, v58 & 1);
    }

    v59 = *&v49[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_previewButton];
    [v59 setAttributedTitle:v201 forState:0];
    v60 = v181 == 0;
    [v59 setHidden_];
    [*&v49[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_previewButtonPlatter] setHidden_];
    v61 = sub_20C138054();
    v63 = v62;
    sub_20B51C88C(0, &qword_281100530);
    *v29 = sub_20C13D374();
    v64 = v199;
    v65 = v182;
    (*(v199 + 13))(v29, *MEMORY[0x277D85200], v182);
    LOBYTE(v59) = sub_20C13C584();
    result = (*(v64 + 1))(v29, v65);
    if (v59)
    {
      v68 = *&v49[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_artworkView];
      v67 = *&v49[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_artworkView + 8];
      ObjectType = swift_getObjectType();
      [v68 setContentMode_];
      if (sub_20BA66C54(v55, v68, v67, 0))
      {
        v70 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v181 = v63;
        v71 = v176;
        v199 = v55;
        v166 = ObjectType;
        v72 = v198;
        v177(v176, v55, v198);
        v172 = v61;
        v73 = v200;
        v74 = *(v200 + 80);
        v75 = (v74 + 24) & ~v74;
        v161 = v174 + 7;
        v76 = (v174 + 7 + v75) & 0xFFFFFFFFFFFFFFF8;
        v77 = (v76 + 23) & 0xFFFFFFFFFFFFFFF8;
        v182 = v67;
        v167 = v68;
        v78 = (v77 + 23) & 0xFFFFFFFFFFFFFFF8;
        v165 = (v78 + 15) & 0xFFFFFFFFFFFFFFF8;
        v79 = (v78 + 31) & 0xFFFFFFFFFFFFFFF8;
        v164 = v74;
        v80 = swift_allocObject();
        *(v80 + 16) = v70;
        v81 = v73;
        v82 = v172;
        v83 = *(v81 + 32);
        v84 = v71;
        v85 = v181;
        v163 = v81 + 32;
        v162 = v83;
        v83(v80 + v75, v84, v72);
        v86 = (v80 + v76);
        v87 = v187;
        *v86 = v175;
        v86[1] = v87;
        v88 = (v80 + v77);
        *v88 = v82;
        v88[1] = v85;
        *(v80 + v78) = 2;
        v89 = v167;
        v90 = v182;
        v91 = v80 + v165;
        *v91 = MEMORY[0x277D84F90];
        *(v91 + 8) = 0;
        v92 = (v80 + v79);
        *v92 = 0;
        v92[1] = 0;
        v93 = *(v90 + 152);

        v94 = v166;
        v93(sub_20BA719B0, v80);

        [v89 bounds];
        if (v95 <= 0.0 || (v97 = v96, v96 <= 0.0))
        {

          v49 = v202;
          v55 = v199;
        }

        else
        {
          v98 = v95;
          v165 = ~v164;
          v99 = v94;
          (*(v90 + 120))(0, v94, v90);
          v100 = v173;
          v101 = v198;
          v55 = v199;
          v177(v173, v199, v198);
          (*(v200 + 56))(v100, 0, 1, v101);
          (*(v90 + 16))(v100, v99, v90);
          sub_20B51C88C(0, &qword_27C762070);
          sub_20C137BC4();
          v102 = sub_20C13D5A4();
          [v89 setBackgroundColor_];

          (*(v90 + 176))(COERCE_DOUBLE(*&v98), COERCE_DOUBLE(*&v97), 0, v99, v90);
          v182 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v103 = v176;
          v104 = v198;
          v105 = v177;
          v177(v176, v55, v198);
          v106 = (v164 + 16) & v165;
          v107 = (v161 + v106) & 0xFFFFFFFFFFFFFFF8;
          v108 = (v107 + 15) & 0xFFFFFFFFFFFFFFF8;
          v109 = (v108 + 23) & 0xFFFFFFFFFFFFFFF8;
          v110 = swift_allocObject();
          v162(v110 + v106, v103, v104);
          *(v110 + v107) = v182;
          v111 = (v110 + v108);
          v49 = v202;
          *v111 = v98;
          v111[1] = v97;
          v182 = v110;
          v112 = (v110 + v109);
          *v112 = 0;
          v112[1] = 0;
          v105(v103, v55, v104);
          (*(v188 + 104))(v189, *MEMORY[0x277D542A8], v190);
          v113 = v194;
          sub_20C138A54();
          v114 = v191;
          sub_20B5F1B40(v113, v191);
          v116 = v196;
          v115 = v197;
          if ((*(v196 + 48))(v114, 1, v197) == 1)
          {
            sub_20B520158(v114, &unk_27C766670);
            sub_20BA1DA64();

            (*(v192 + 8))(v113, v193);
          }

          else
          {
            v190 = *(v116 + 32);
            v190(v195, v114, v115);
            v128 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v129 = v198;
            v105(v103, v55, v198);
            v130 = (v164 + 40) & v165;
            v131 = v130 + v174;
            v132 = (v130 + v174) & 0xFFFFFFFFFFFFFFF8;
            v133 = swift_allocObject();
            *(v133 + 2) = v128;
            v133[3] = v98;
            v133[4] = v97;
            v162(v133 + v130, v103, v129);
            *(v133 + v131) = 0;
            v134 = v133 + v132;
            *(v134 + 1) = 0;
            *(v134 + 2) = 0;
            v135 = swift_allocObject();
            *(v135 + 16) = sub_20BA71B44;
            *(v135 + 24) = v133;
            v136 = v116;
            v137 = *(v116 + 16);
            v138 = v184;
            v139 = v197;
            v137(v184, v195, v197);
            v140 = (*(v136 + 80) + 16) & ~*(v136 + 80);
            v141 = (v183 + v140 + 7) & 0xFFFFFFFFFFFFFFF8;
            v142 = swift_allocObject();
            v190((v142 + v140), v138, v139);
            v143 = (v142 + v141);
            *v143 = sub_20B5F67A4;
            v143[1] = v135;
            v144 = v186;
            sub_20C137C94();
            v145 = swift_allocObject();
            v146 = v182;
            *(v145 + 16) = sub_20BA71A88;
            *(v145 + 24) = v146;
            v147 = swift_allocObject();
            *(v147 + 16) = sub_20B5F67D4;
            *(v147 + 24) = v145;
            v148 = v170;
            v149 = v168;
            v150 = v171;
            (*(v170 + 16))(v168, v144, v171);
            v151 = (*(v148 + 80) + 16) & ~*(v148 + 80);
            v152 = (v185 + v151 + 7) & 0xFFFFFFFFFFFFFFF8;
            v153 = swift_allocObject();
            v154 = v149;
            v55 = v199;
            (*(v148 + 32))(v153 + v151, v154, v150);
            v155 = (v153 + v152);
            *v155 = sub_20B5DF204;
            v155[1] = v147;

            v156 = v169;
            sub_20C137C94();
            v157 = *(v148 + 8);
            v157(v144, v150);
            v158 = sub_20C137CB4();
            v159 = swift_allocObject();
            *(v159 + 16) = 0;
            *(v159 + 24) = 0;
            v158(sub_20B52347C, v159);

            v49 = v202;

            v157(v156, v150);
            (*(v196 + 8))(v195, v197);
            (*(v192 + 8))(v194, v193);
          }
        }
      }

      else
      {
      }

      sub_20B86E3F4(*&v49[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_textContainer]);

      return (*(v200 + 8))(v55, v198);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_20C13B534();

    v117 = v202;
    v118 = sub_20C13BB74();
    v119 = sub_20C13D1D4();

    if (os_log_type_enabled(v118, v119))
    {
      v120 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      v203 = a1;
      v204 = v122;
      *v120 = 138543618;
      *(v120 + 4) = v117;
      *v121 = v117;
      *(v120 + 12) = 2082;
      v123 = sub_20B5F66D0();
      v124 = v117;
      v125 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v123);
      v127 = sub_20B51E694(v125, v126, &v204);

      *(v120 + 14) = v127;
      _os_log_impl(&dword_20B517000, v118, v119, "Attempted to configure %{public}@ with item: %{public}s", v120, 0x16u);
      sub_20B520158(v121, &unk_27C762E30);
      MEMORY[0x20F2F6A40](v121, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v122);
      MEMORY[0x20F2F6A40](v122, -1, -1);
      MEMORY[0x20F2F6A40](v120, -1, -1);
    }

    return (*(v200 + 8))(v4, v201);
  }

  return result;
}

void sub_20BA719B0()
{
  v1 = *(sub_20C137C24() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_20BA47DAC(*(v0 + 16), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v4 + 8), *(v0 + v5), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_20BA71A88(void *a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);
  v9 = *(v1 + v6 + 8);
  v10 = (v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  sub_20BA63690(a1, v1 + v4, v7, v11, v12, v8, v9);
}

void sub_20BA71B44(void **a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  sub_20B5F2EEC(*a1, *(v1 + 16), (v1 + v4), *(v1 + v4 + *(v3 + 64)), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 16));
}

void sub_20BA71BF8()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_isMinFontPreferred) = 0;
  v2 = OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_itemInfo;
  v3 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  v4 = (v1 + OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_layout);
  *v4 = xmmword_20C156A10;
  v4[1] = xmmword_20C169530;
  v5 = (v1 + OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_artworkView);
  v6 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame_];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  *v5 = v6;
  v5[1] = &off_2822B63E8;
  v7 = OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_contentLayoutGuide;
  *(v1 + v7) = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  v8 = OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_vibrantShadowView;
  v9 = [objc_allocWithZone(type metadata accessor for VibrantShadowView()) initWithFrame_];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v8) = v9;
  v10 = OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_textContainer;
  v11 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v10) = v11;
  v12 = OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_titleLabel;
  v13 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  [v13 setLineBreakMode_];
  [v13 setNumberOfLines_];
  [v13 setAllowsDefaultTighteningForTruncation_];
  *(v1 + v12) = v13;
  v14 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  v15 = *MEMORY[0x277D74368];
  v16 = *MEMORY[0x277D74418];
  v17 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76A20] compatibleWithTraitCollection:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  v19 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771970);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_20C14F980;
  v21 = *MEMORY[0x277D74430];
  *(v20 + 32) = *MEMORY[0x277D74430];
  *(v20 + 40) = v16;
  v22 = v19;
  v23 = v21;
  v24 = sub_20B6B134C(v20);

  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771980);
  *(inited + 40) = v24;
  sub_20B6B143C(inited);

  type metadata accessor for AttributeName(0);
  sub_20B5E5BD0();
  v25 = sub_20C13C744();

  v26 = [v17 fontDescriptorByAddingAttributes_];

  v27 = [v26 fontDescriptorWithDesign_];
  if (v27)
  {
    v28 = v27;

    v26 = v28;
  }

  v29 = OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_subtitleLabel;
  v30 = [objc_opt_self() fontWithDescriptor:v26 size:0.0];

  [v14 setFont_];
  [v14 setAllowsDefaultTighteningForTruncation_];
  *(v1 + v29) = v14;
  v31 = OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_previewButtonPlatter;
  v32 = [objc_opt_self() effectWithStyle_];
  v33 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  v34 = v33;
  [v34 setTranslatesAutoresizingMaskIntoConstraints_];
  [v34 setClipsToBounds_];
  v35 = [v34 layer];
  [v35 setCornerRadius_];

  [v34 setClipsToBounds_];
  *(v1 + v31) = v34;
  v36 = OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_previewButton;
  v37 = objc_opt_self();
  v38 = [v37 whiteColor];
  type metadata accessor for RoundedButton();
  v39 = [swift_getObjCClassFromMetadata() buttonWithType_];
  [v39 setTitle:0 forState:0];
  v40 = v39;
  v41 = [v40 titleLabel];
  [v41 setAdjustsFontForContentSizeCategory_];

  sub_20BD4F054(0, 0, 1, 0);
  [v40 setTintColor_];

  v42 = [v37 clearColor];
  [v40 setBackgroundColor_];

  [v40 setTranslatesAutoresizingMaskIntoConstraints_];
  v43 = v40;
  v44 = [v43 titleLabel];
  [v44 setAdjustsFontForContentSizeCategory_];

  *(v1 + v36) = v43;
  *(v1 + OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_contentLayoutGuideLeftConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_contentLayoutGuideTopConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_contentLayoutGuideWidthConstraint) = 0;
  v45 = (v1 + OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_currentContainerSize);
  *v45 = 0;
  v45[1] = 0;
  *(v1 + OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_currentLayout) = 4;
  *(v1 + OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_oldWidth) = 0;
  *(v1 + OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_previewButtonRightConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_previewButtonWidthConstraint) = 0;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20BA7231C(double a1, double a2)
{
  if (a1 >= 568.0)
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  if (a1 < 480.0)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a1 >= 350.0)
  {
    result = v4;
  }

  else
  {
    result = 0;
  }

  if (*(v2 + OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_currentLayout) != result)
  {
    return sub_20BA6F930(result, a1, a2);
  }

  if (*(v2 + OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_currentContainerSize) != a1 || *(v2 + OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_currentContainerSize + 8) != a2)
  {
    return sub_20BA6F930(result, a1, a2);
  }

  return result;
}