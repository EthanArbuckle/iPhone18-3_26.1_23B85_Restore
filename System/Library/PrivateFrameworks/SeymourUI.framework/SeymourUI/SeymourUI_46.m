void sub_20BA30520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t (*)(), uint64_t, uint64_t, uint64_t), void (*a8)(char *, uint64_t, uint64_t), unsigned __int8 a9, void (*a10)(uint64_t), void (*a11)(uint64_t))
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
      v41 = &v183[OBJC_IVAR____TtC9SeymourUI14CircleItemCell_artworkView];
      [*&v183[OBJC_IVAR____TtC9SeymourUI14CircleItemCell_artworkView] setContentMode_];
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
        v148(sub_20BA6547C, v54, ObjectType, v63);

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
          sub_20B5F1634(v96, v170);
          v100 = v145;
          if ((*(v97 + 48))(v99, 1, v145) == 1)
          {
            sub_20B520158(v99, &unk_27C766670);
            v101 = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI14CircleItemCell_artworkView);
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
            *(v112 + 16) = sub_20BA654C8;
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
            *(v123 + 16) = sub_20BA65494;
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

void sub_20BA315A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t (*)(), uint64_t, uint64_t, uint64_t), void (*a8)(char *, uint64_t, uint64_t), unsigned __int8 a9, void (*a10)(uint64_t), void (*a11)(uint64_t))
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
      v41 = &v183[OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_artworkView];
      [*&v183[OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_artworkView] setContentMode_];
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
        v148(sub_20BA65334, v54, ObjectType, v63);

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
          sub_20B5F17F8(v96, v170);
          v100 = v145;
          if ((*(v97 + 48))(v99, 1, v145) == 1)
          {
            sub_20B520158(v99, &unk_27C766670);
            v101 = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_artworkView);
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
            *(v112 + 16) = sub_20BA65380;
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
            *(v123 + 16) = sub_20BA6534C;
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

void sub_20BA32630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(char *, uint64_t, uint64_t), char a9, void (*a10)(id), void (*a11)(id))
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
      v39 = OBJC_IVAR____TtC9SeymourUI16TVCircleItemCell_tvArtworkView;
      [*&v37[OBJC_IVAR____TtC9SeymourUI16TVCircleItemCell_tvArtworkView] setContentMode_];
      v40 = *&v37[v39];
      v41 = v179;
      v42 = sub_20B92C808(v179, v40, a9 & 1);

      if ((v42 & 1) != 0 && (v143 = v22, v136 = v19, v137 = v12, v152 = a11, v154 = a10, v139 = v39, v149 = *&v37[v39], v147 = swift_allocObject(), swift_unknownObjectWeakInit(), v43 = v171, v44 = *(v171 + 16), v150 = a9 & 1, v45 = v172, v151 = v37, v46 = v178, v145 = v171 + 16, v144 = v44, v44(v172, v41, v178), v47 = *(v43 + 80), v148 = a7, v48 = (v47 + 24) & ~v47, v138 = v170 + 7, v49 = (v170 + 7 + v48) & 0xFFFFFFFFFFFFFFF8, v50 = (v49 + 23) & 0xFFFFFFFFFFFFFFF8, v51 = (v50 + 23) & 0xFFFFFFFFFFFFFFF8, v146 = (v51 + 15) & 0xFFFFFFFFFFFFFFF8, v142 = v47, v52 = swift_allocObject(), *(v52 + 16) = v147, v53 = *(v43 + 32), v54 = v45, LOBYTE(v45) = v150, v141 = v43 + 32, v140 = v53, v53(v52 + v48, v54, v46), v55 = (v52 + v49), v56 = v174, *v55 = v173, v55[1] = v56, v57 = (v52 + v50), v58 = v176, *v57 = v175, v57[1] = v58, *(v52 + v51) = v148, v59 = v52 + v146, *v59 = v177, *(v59 + 8) = v45, v60 = (v52 + ((v51 + 31) & 0xFFFFFFFFFFFFFFF8)), v61 = v154, v62 = v152, *v60 = v154, v60[1] = v62, v63 = (v149 + OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layoutHandler), v64 = *(v149 + OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layoutHandler), *v63 = sub_20BA653D8, v63[1] = v52, , , v65 = v62, , , sub_20B584050(v61), v37 = v151, v66 = v179, sub_20B583ECC(v64), , v67 = sub_20B6272F4(v66, v45), v67 > 0.0) && (v69 = v68, v68 > 0.0))
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
        sub_20B5F1820(v97, v165);
        v99 = v169;
        v100 = v143;
        if ((*(v169 + 48))(v98, 1, v143) == 1)
        {
          sub_20B520158(v98, &unk_27C766670);
          v101 = sub_20BA1DB84(&OBJC_IVAR____TtC9SeymourUI16TVCircleItemCell_tvArtworkView);
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
          *(v113 + 16) = sub_20BA65424;
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
          *(v121 + 16) = sub_20BA653F0;
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

void sub_20BA335F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t (*)(), uint64_t, uint64_t, uint64_t), void (*a8)(char *, uint64_t, uint64_t), unsigned __int8 a9, void (*a10)(uint64_t), void (*a11)(uint64_t))
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
      v41 = &v183[OBJC_IVAR____TtC9SeymourUI16TVMusicTrackCell_artworkView];
      [*&v183[OBJC_IVAR____TtC9SeymourUI16TVMusicTrackCell_artworkView] setContentMode_];
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
        v148(sub_20BA65520, v54, ObjectType, v63);

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
          sub_20B5F1848(v96, v170);
          v100 = v145;
          if ((*(v97 + 48))(v99, 1, v145) == 1)
          {
            sub_20B520158(v99, &unk_27C766670);
            v101 = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI16TVMusicTrackCell_artworkView);
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
            *(v112 + 16) = sub_20BA6556C;
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
            *(v123 + 16) = sub_20BA65538;
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

void sub_20BA34678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t (*)(), uint64_t, uint64_t, uint64_t), void (*a8)(char *, uint64_t, uint64_t), unsigned __int8 a9, void (*a10)(uint64_t), void (*a11)(uint64_t))
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
      v41 = &v183[OBJC_IVAR____TtC9SeymourUI17ArtworkHeaderCell_artworkView];
      [*&v183[OBJC_IVAR____TtC9SeymourUI17ArtworkHeaderCell_artworkView] setContentMode_];
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
        v148(sub_20BA64CCC, v54, ObjectType, v63);

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
          sub_20B5F1870(v96, v170);
          v100 = v145;
          if ((*(v97 + 48))(v99, 1, v145) == 1)
          {
            sub_20B520158(v99, &unk_27C766670);
            v101 = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI17ArtworkHeaderCell_artworkView);
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
            *(v112 + 16) = sub_20BA64D18;
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
            *(v123 + 16) = sub_20BA64CE4;
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

void sub_20BA35700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t (*)(), uint64_t, uint64_t, uint64_t), void (*a8)(char *, uint64_t, uint64_t), unsigned __int8 a9, void (*a10)(uint64_t), void (*a11)(uint64_t))
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
      v41 = &v183[OBJC_IVAR____TtC9SeymourUI17TrainerFilterCell_artworkView];
      [*&v183[OBJC_IVAR____TtC9SeymourUI17TrainerFilterCell_artworkView] setContentMode_];
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
        v148(sub_20BA655C4, v54, ObjectType, v63);

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
          sub_20B5F1898(v96, v170);
          v100 = v145;
          if ((*(v97 + 48))(v99, 1, v145) == 1)
          {
            sub_20B520158(v99, &unk_27C766670);
            v101 = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI17TrainerFilterCell_artworkView);
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
            *(v112 + 16) = sub_20BA65610;
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
            *(v123 + 16) = sub_20BA655DC;
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

void sub_20BA36788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(char *, uint64_t, uint64_t), unsigned __int8 a9, void (*a10)(uint64_t), void (*a11)(uint64_t))
{
  v175 = a6;
  v176 = a8;
  v173 = a4;
  v174 = a5;
  v172 = a3;
  v179 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v161 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v159 = &v133 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v160 = &v133 - v15;
  v158 = v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v133 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v20 - 8);
  v167 = &v133 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v169 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v157 = &v133 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = v23;
  MEMORY[0x28223BE20](v24);
  v162 = &v133 - v25;
  v165 = sub_20C1391C4();
  v164 = *(v165 - 8);
  MEMORY[0x28223BE20](v165);
  v166 = &v133 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_20C138A64();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v168 = &v133 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  MEMORY[0x28223BE20](v30 - 8);
  v163 = &v133 - v31;
  v178 = sub_20C137C24();
  v171 = *(v178 - 8);
  MEMORY[0x28223BE20](v178);
  v170 = v32;
  v177 = &v133 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_20C13C554();
  v34 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v36 = (&v133 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v154 = v22;
    sub_20B51C88C(0, &qword_281100530);
    *v36 = sub_20C13D374();
    (*(v34 + 104))(v36, *MEMORY[0x277D85200], v33);
    v37 = sub_20C13C584();
    (*(v34 + 8))(v36, v33);
    if (v37)
    {
      v153 = v28;
      v38 = Strong;
      v39 = &Strong[OBJC_IVAR____TtC9SeymourUI21VideoBrickContentView_artworkView];
      v40 = a7;
      [*&Strong[OBJC_IVAR____TtC9SeymourUI21VideoBrickContentView_artworkView] setContentMode_];
      v41 = v179;
      if ((sub_20BA640CC(v179, *v39, *(v39 + 1), a9 & 1) & 1) == 0)
      {

        return;
      }

      v137 = v27;
      v134 = v19;
      v135 = v12;
      v155 = a11;
      v152 = a10;
      v149 = *v39;
      v146 = *(v39 + 1);
      ObjectType = swift_getObjectType();
      v145 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v147 = a9;
      v42 = v171;
      v43 = *(v171 + 16);
      v151 = a9 & 1;
      v150 = v39;
      v45 = v177;
      v44 = v178;
      v141 = v171 + 16;
      v140 = v43;
      v43(v177, v41, v178);
      v46 = *(v42 + 80);
      v47 = (v46 + 24) & ~v46;
      v136 = v170 + 7;
      v48 = (v170 + 7 + v47) & 0xFFFFFFFFFFFFFFF8;
      v49 = (v48 + 23) & 0xFFFFFFFFFFFFFFF8;
      v50 = (v49 + 23) & 0xFFFFFFFFFFFFFFF8;
      v144 = ((v50 + 15) & 0xFFFFFFFFFFFFFFF8);
      v142 = v46;
      v51 = swift_allocObject();
      v143 = v40;
      v52 = v51;
      *(v51 + 16) = v145;
      v53 = *(v42 + 32);
      v139 = v42 + 32;
      v138 = v53;
      v53(v51 + v47, v45, v44);
      v54 = (v52 + v48);
      v55 = v173;
      *v54 = v172;
      v54[1] = v55;
      v56 = (v52 + v49);
      v57 = v175;
      *v56 = v174;
      v56[1] = v57;
      *(v52 + v50) = v143;
      v58 = v144 + v52;
      *v58 = v176;
      v58[8] = v151;
      v59 = (v52 + ((v50 + 31) & 0xFFFFFFFFFFFFFFF8));
      v60 = v152;
      v61 = v155;
      *v59 = v152;
      v59[1] = v61;
      v62 = v146;
      v144 = *(v146 + 152);

      sub_20B584050(v60);
      v144(sub_20BA667B4, v52, ObjectType, v62);

      if (v147)
      {
        v63 = [objc_opt_self() mainScreen];
        [v63 scale];
        v65 = v64;

        v66 = v179;
        v67 = sub_20C137BF4() / v65;
        v68 = sub_20C137C04() / v65;
        v69 = v66;
        v70 = v150;
      }

      else
      {
        v70 = v150;
        [*v150 bounds];
        v67 = v71;
        v68 = v72;
        v69 = v179;
      }

      if (v67 <= 0.0 || v68 <= 0.0)
      {
      }

      else
      {
        v150 = ~v142;
        v73 = v70[1];
        v74 = swift_getObjectType();
        v73[15](0, v74, v73);
        v75 = v70[1];
        v76 = swift_getObjectType();
        v77 = v163;
        v78 = v178;
        v79 = v140;
        v140(v163, v69, v178);
        (*(v171 + 56))(v77, 0, 1, v78);
        v75[2](v77, v76, v75);
        v80 = *v70;
        sub_20B51C88C(0, &qword_27C762070);
        sub_20C137BC4();
        v81 = sub_20C13D5A4();
        [v80 setBackgroundColor_];

        v82 = v70[1];
        v83 = swift_getObjectType();
        v82[22](COERCE_DOUBLE(*&v67), COERCE_DOUBLE(*&v68), 0, v83, v82);
        v84 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v85 = v177;
        v79(v177, v69, v78);
        v86 = (v142 + 16) & v150;
        v87 = (v136 + v86) & 0xFFFFFFFFFFFFFFF8;
        v88 = (v87 + 15) & 0xFFFFFFFFFFFFFFF8;
        v89 = swift_allocObject();
        v138(v89 + v86, v85, v78);
        *(v89 + v87) = v84;
        v90 = (v89 + v88);
        *v90 = v67;
        v90[1] = v68;
        v171 = v89;
        v91 = (v89 + ((v88 + 23) & 0xFFFFFFFFFFFFFFF8));
        v92 = v152;
        v93 = v155;
        *v91 = v152;
        v91[1] = v93;
        v79(v85, v69, v78);
        (*(v164 + 104))(v166, *MEMORY[0x277D542A8], v165);

        sub_20B584050(v92);
        v94 = v168;
        sub_20C138A54();
        v95 = *&Strong[OBJC_IVAR____TtC9SeymourUI21VideoBrickContentView_fetchArtworkHandler];
        if (v95)
        {

          v96 = v167;
          v95(v94);
          sub_20B583ECC(v95);
          v97 = v169;
          v98 = v154;
          if ((*(v169 + 48))(v96, 1, v154) != 1)
          {
            v176 = *(v97 + 32);
            v176(v162, v96, v98);
            v99 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v101 = v177;
            v100 = v178;
            v140(v177, v179, v178);
            v102 = (v142 + 40) & v150;
            v103 = v102 + v170;
            v104 = (v102 + v170) & 0xFFFFFFFFFFFFFFF8;
            v105 = swift_allocObject();
            *(v105 + 16) = v99;
            *(v105 + 24) = v67;
            *(v105 + 32) = v68;
            v138(v105 + v102, v101, v100);
            *(v105 + v103) = v151;
            v106 = v105 + v104;
            v107 = v155;
            *(v106 + 8) = v92;
            *(v106 + 16) = v107;
            v108 = swift_allocObject();
            *(v108 + 16) = sub_20BA66800;
            *(v108 + 24) = v105;
            v109 = v169;
            v110 = v157;
            (*(v169 + 16))(v157, v162, v98);
            v111 = v109;
            v112 = (*(v109 + 80) + 16) & ~*(v109 + 80);
            v113 = (v156 + v112 + 7) & 0xFFFFFFFFFFFFFFF8;
            v114 = swift_allocObject();
            v176((v114 + v112), v110, v98);
            v115 = (v114 + v113);
            *v115 = sub_20B5F7760;
            v115[1] = v108;
            sub_20B584050(v92);
            v116 = v160;
            sub_20C137C94();
            v117 = swift_allocObject();
            v118 = v171;
            *(v117 + 16) = sub_20BA667CC;
            *(v117 + 24) = v118;
            v119 = swift_allocObject();
            *(v119 + 16) = sub_20BA66C80;
            *(v119 + 24) = v117;
            v120 = v161;
            v121 = v159;
            v122 = v135;
            (*(v161 + 16))(v159, v116, v135);
            v123 = (*(v120 + 80) + 16) & ~*(v120 + 80);
            v124 = (v158 + v123 + 7) & 0xFFFFFFFFFFFFFFF8;
            v125 = swift_allocObject();
            (*(v120 + 32))(v125 + v123, v121, v122);
            v126 = (v125 + v124);
            *v126 = sub_20B5F7764;
            v126[1] = v119;

            v127 = v134;
            sub_20C137C94();
            v128 = *(v120 + 8);
            v128(v116, v122);
            v129 = sub_20C137CB4();
            v130 = swift_allocObject();
            *(v130 + 16) = 0;
            *(v130 + 24) = 0;
            v129(sub_20B5DF6DC, v130);

            v128(v127, v122);
            (*(v111 + 8))(v162, v154);
            (*(v153 + 8))(v168, v137);
            return;
          }
        }

        else
        {
          v96 = v167;
          (*(v169 + 56))(v167, 1, 1, v154);
        }

        sub_20B520158(v96, &unk_27C766670);
        v131 = Strong;
        v132 = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI21VideoBrickContentView_artworkView);
        if (v92)
        {
          v92(v132);
        }

        else
        {
        }

        (*(v153 + 8))(v94, v137);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_20BA3784C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t (*)(), uint64_t, uint64_t, uint64_t), void (*a8)(char *, uint64_t, uint64_t), unsigned __int8 a9, void (*a10)(uint64_t), void (*a11)(uint64_t))
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
      v41 = &v183[OBJC_IVAR____TtC9SeymourUI18ActionBrickRowCell_artworkView];
      [*&v183[OBJC_IVAR____TtC9SeymourUI18ActionBrickRowCell_artworkView] setContentMode_];
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
        v148(sub_20BA665C8, v54, ObjectType, v63);

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
          sub_20B5F18C0(v96, v170);
          v100 = v145;
          if ((*(v97 + 48))(v99, 1, v145) == 1)
          {
            sub_20B520158(v99, &unk_27C766670);
            v101 = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI18ActionBrickRowCell_artworkView);
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
            *(v112 + 16) = sub_20BA66614;
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
            *(v123 + 16) = sub_20BA665E0;
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

void sub_20BA388D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t (*)(), uint64_t, uint64_t, uint64_t), void (*a8)(char *, uint64_t, uint64_t), unsigned __int8 a9, void (*a10)(uint64_t), void (*a11)(uint64_t))
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
      v41 = &v183[OBJC_IVAR____TtC9SeymourUI18UpNextQueueRowCell_artworkView];
      [*&v183[OBJC_IVAR____TtC9SeymourUI18UpNextQueueRowCell_artworkView] setContentMode_];
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
        v148(sub_20BA64E14, v54, ObjectType, v63);

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
          sub_20B5F18E8(v96, v170);
          v100 = v145;
          if ((*(v97 + 48))(v99, 1, v145) == 1)
          {
            sub_20B520158(v99, &unk_27C766670);
            v101 = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI18UpNextQueueRowCell_artworkView);
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
            *(v112 + 16) = sub_20BA64E60;
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
            *(v123 + 16) = sub_20BA64E2C;
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

void sub_20BA3995C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t (*)(), uint64_t, uint64_t, uint64_t), void (*a8)(char *, uint64_t, uint64_t), unsigned __int8 a9, void (*a10)(uint64_t), void (*a11)(uint64_t))
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
      v41 = &v183[OBJC_IVAR____TtC9SeymourUI19ActionBrickItemCell_artworkView];
      [*&v183[OBJC_IVAR____TtC9SeymourUI19ActionBrickItemCell_artworkView] setContentMode_];
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
        v148(sub_20BA64A3C, v54, ObjectType, v63);

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
          sub_20B5F1910(v96, v170);
          v100 = v145;
          if ((*(v97 + 48))(v99, 1, v145) == 1)
          {
            sub_20B520158(v99, &unk_27C766670);
            v101 = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI19ActionBrickItemCell_artworkView);
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
            *(v112 + 16) = sub_20BA64A88;
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
            *(v123 + 16) = sub_20BA64A54;
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

void sub_20BA3A9E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t (*)(), uint64_t, uint64_t, uint64_t), void (*a8)(char *, uint64_t, uint64_t), unsigned __int8 a9, void (*a10)(uint64_t), void (*a11)(uint64_t))
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
      v41 = &v183[OBJC_IVAR____TtC9SeymourUI19ProgramBrickRowCell_artworkView];
      [*&v183[OBJC_IVAR____TtC9SeymourUI19ProgramBrickRowCell_artworkView] setContentMode_];
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
        v148(sub_20BA65B88, v54, ObjectType, v63);

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
          sub_20B5F1938(v96, v170);
          v100 = v145;
          if ((*(v97 + 48))(v99, 1, v145) == 1)
          {
            sub_20B520158(v99, &unk_27C766670);
            v101 = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI19ProgramBrickRowCell_artworkView);
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
            *(v112 + 16) = sub_20BA65BD4;
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
            *(v123 + 16) = sub_20BA65BA0;
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

void sub_20BA3BA6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t (*)(), uint64_t, uint64_t, uint64_t), void (*a8)(char *, uint64_t, uint64_t), unsigned __int8 a9, void (*a10)(uint64_t), void (*a11)(uint64_t))
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
      v41 = &v183[OBJC_IVAR____TtC9SeymourUI20DynamicBrickItemCell_artworkView];
      [*&v183[OBJC_IVAR____TtC9SeymourUI20DynamicBrickItemCell_artworkView] setContentMode_];
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
        v148(sub_20BA65EBC, v54, ObjectType, v63);

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
          sub_20B5F1960(v96, v170);
          v100 = v145;
          if ((*(v97 + 48))(v99, 1, v145) == 1)
          {
            sub_20B520158(v99, &unk_27C766670);
            v101 = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI20DynamicBrickItemCell_artworkView);
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
            *(v112 + 16) = sub_20BA65F08;
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
            *(v123 + 16) = sub_20BA65ED4;
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

void sub_20BA3CAF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t (*)(), uint64_t, uint64_t, uint64_t), void (*a8)(char *, uint64_t, uint64_t), unsigned __int8 a9, void (*a10)(uint64_t), void (*a11)(uint64_t))
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
      v41 = &v183[OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_artworkView];
      [*&v183[OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_artworkView] setContentMode_];
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
        v148(sub_20BA66004, v54, ObjectType, v63);

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
          sub_20B5F1988(v96, v170);
          v100 = v145;
          if ((*(v97 + 48))(v99, 1, v145) == 1)
          {
            sub_20B520158(v99, &unk_27C766670);
            v101 = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_artworkView);
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
            *(v112 + 16) = sub_20BA66050;
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
            *(v123 + 16) = sub_20BA6601C;
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

void sub_20BA3DB7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t (*)(), uint64_t, uint64_t, uint64_t), void (*a8)(char *, uint64_t, uint64_t), unsigned __int8 a9, void (*a10)(uint64_t), void (*a11)(uint64_t))
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
      v41 = &v183[OBJC_IVAR____TtC9SeymourUI20PreferredTrainerCell_artworkView];
      [*&v183[OBJC_IVAR____TtC9SeymourUI20PreferredTrainerCell_artworkView] setContentMode_];
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
        v148(sub_20BA66524, v54, ObjectType, v63);

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
          sub_20B5F19B0(v96, v170);
          v100 = v145;
          if ((*(v97 + 48))(v99, 1, v145) == 1)
          {
            sub_20B520158(v99, &unk_27C766670);
            v101 = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI20PreferredTrainerCell_artworkView);
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
            *(v112 + 16) = sub_20BA66570;
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
            *(v123 + 16) = sub_20BA6653C;
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

void sub_20BA3EC04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t (*)(), uint64_t, uint64_t, uint64_t), void (*a8)(char *, uint64_t, uint64_t), unsigned __int8 a9, void (*a10)(uint64_t), void (*a11)(uint64_t))
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
      v41 = &v183[OBJC_IVAR____TtC9SeymourUI20ProgramBrickItemCell_artworkView];
      [*&v183[OBJC_IVAR____TtC9SeymourUI20ProgramBrickItemCell_artworkView] setContentMode_];
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
        v148(sub_20BA64D70, v54, ObjectType, v63);

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
          sub_20B5F19D8(v96, v170);
          v100 = v145;
          if ((*(v97 + 48))(v99, 1, v145) == 1)
          {
            sub_20B520158(v99, &unk_27C766670);
            v101 = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI20ProgramBrickItemCell_artworkView);
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
            *(v112 + 16) = sub_20BA64DBC;
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
            *(v123 + 16) = sub_20BA64D88;
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

void sub_20BA3FC8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t (*)(), uint64_t, uint64_t, uint64_t), void (*a8)(char *, uint64_t, uint64_t), unsigned __int8 a9, void (*a10)(uint64_t), void (*a11)(uint64_t))
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
      v41 = &v183[OBJC_IVAR____TtC9SeymourUI21StandardBrickItemCell_artworkView];
      [*&v183[OBJC_IVAR____TtC9SeymourUI21StandardBrickItemCell_artworkView] setContentMode_];
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
        v148(sub_20BA65C2C, v54, ObjectType, v63);

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
          sub_20B5F1A00(v96, v170);
          v100 = v145;
          if ((*(v97 + 48))(v99, 1, v145) == 1)
          {
            sub_20B520158(v99, &unk_27C766670);
            v101 = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI21StandardBrickItemCell_artworkView);
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
            *(v112 + 16) = sub_20BA65C78;
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
            *(v123 + 16) = sub_20BA65C44;
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

void sub_20BA40D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t (*)(), uint64_t, uint64_t, uint64_t), void (*a8)(char *, uint64_t, uint64_t), unsigned __int8 a9, void (*a10)(uint64_t), void (*a11)(uint64_t))
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
      v41 = &v183[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_artworkView];
      [*&v183[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_artworkView] setContentMode_];
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
        v148(sub_20BA65148, v54, ObjectType, v63);

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
          sub_20B5F1A28(v96, v170);
          v100 = v145;
          if ((*(v97 + 48))(v99, 1, v145) == 1)
          {
            sub_20B520158(v99, &unk_27C766670);
            v101 = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_artworkView);
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
            *(v112 + 16) = sub_20BA65194;
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
            *(v123 + 16) = sub_20BA65160;
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

void sub_20BA41D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(char *, uint64_t, uint64_t), char a9, void (*a10)(id), void (*a11)(id))
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
      v39 = OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_tvArtworkView;
      [*&v37[OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_tvArtworkView] setContentMode_];
      v40 = *&v37[v39];
      v41 = v179;
      v42 = sub_20B8EF674(v179, v40, a9 & 1);

      if ((v42 & 1) != 0 && (v143 = v22, v136 = v19, v137 = v12, v152 = a11, v154 = a10, v139 = v39, v149 = *&v37[v39], v147 = swift_allocObject(), swift_unknownObjectWeakInit(), v43 = v171, v44 = *(v171 + 16), v150 = a9 & 1, v45 = v172, v151 = v37, v46 = v178, v145 = v171 + 16, v144 = v44, v44(v172, v41, v178), v47 = *(v43 + 80), v148 = a7, v48 = (v47 + 24) & ~v47, v138 = v170 + 7, v49 = (v170 + 7 + v48) & 0xFFFFFFFFFFFFFFF8, v50 = (v49 + 23) & 0xFFFFFFFFFFFFFFF8, v51 = (v50 + 23) & 0xFFFFFFFFFFFFFFF8, v146 = (v51 + 15) & 0xFFFFFFFFFFFFFFF8, v142 = v47, v52 = swift_allocObject(), *(v52 + 16) = v147, v53 = *(v43 + 32), v54 = v45, LOBYTE(v45) = v150, v141 = v43 + 32, v140 = v53, v53(v52 + v48, v54, v46), v55 = (v52 + v49), v56 = v174, *v55 = v173, v55[1] = v56, v57 = (v52 + v50), v58 = v176, *v57 = v175, v57[1] = v58, *(v52 + v51) = v148, v59 = v52 + v146, *v59 = v177, *(v59 + 8) = v45, v60 = (v52 + ((v51 + 31) & 0xFFFFFFFFFFFFFFF8)), v61 = v154, v62 = v152, *v60 = v154, v60[1] = v62, v63 = (v149 + OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layoutHandler), v64 = *(v149 + OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layoutHandler), *v63 = sub_20BA65290, v63[1] = v52, , , v65 = v62, , , sub_20B584050(v61), v37 = v151, v66 = v179, sub_20B583ECC(v64), , v67 = sub_20B627300(v66, v45), v67 > 0.0) && (v69 = v68, v68 > 0.0))
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
        sub_20B5F1A50(v97, v165);
        v99 = v169;
        v100 = v143;
        if ((*(v169 + 48))(v98, 1, v143) == 1)
        {
          sub_20B520158(v98, &unk_27C766670);
          v101 = sub_20BA1DB84(&OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_tvArtworkView);
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
          *(v113 + 16) = sub_20BA652DC;
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
          *(v121 + 16) = sub_20BA652A8;
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

void sub_20BA42D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t (*)(), uint64_t, uint64_t, uint64_t), void (*a8)(char *, uint64_t, uint64_t), unsigned __int8 a9, void (*a10)(uint64_t), void (*a11)(uint64_t))
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
      v41 = &v183[OBJC_IVAR____TtC9SeymourUI22TVGroupedBrickItemCell_artworkView];
      [*&v183[OBJC_IVAR____TtC9SeymourUI22TVGroupedBrickItemCell_artworkView] setContentMode_];
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
        v148(sub_20BA64B84, v54, ObjectType, v63);

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
          sub_20B5F1A78(v96, v170);
          v100 = v145;
          if ((*(v97 + 48))(v99, 1, v145) == 1)
          {
            sub_20B520158(v99, &unk_27C766670);
            v101 = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI22TVGroupedBrickItemCell_artworkView);
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
            *(v112 + 16) = sub_20BA64BD0;
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
            *(v123 + 16) = sub_20BA64B9C;
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

void sub_20BA43DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(char *, uint64_t, uint64_t), char a9, void (*a10)(id), void (*a11)(id))
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
      v39 = OBJC_IVAR____TtC9SeymourUI22TVIndexedBrickItemCell_tvArtworkView;
      [*&v37[OBJC_IVAR____TtC9SeymourUI22TVIndexedBrickItemCell_tvArtworkView] setContentMode_];
      v40 = *&v37[v39];
      v41 = v179;
      v42 = sub_20BE97988(v179, v40, a9 & 1);

      if ((v42 & 1) != 0 && (v143 = v22, v136 = v19, v137 = v12, v152 = a11, v154 = a10, v139 = v39, v149 = *&v37[v39], v147 = swift_allocObject(), swift_unknownObjectWeakInit(), v43 = v171, v44 = *(v171 + 16), v150 = a9 & 1, v45 = v172, v151 = v37, v46 = v178, v145 = v171 + 16, v144 = v44, v44(v172, v41, v178), v47 = *(v43 + 80), v148 = a7, v48 = (v47 + 24) & ~v47, v138 = v170 + 7, v49 = (v170 + 7 + v48) & 0xFFFFFFFFFFFFFFF8, v50 = (v49 + 23) & 0xFFFFFFFFFFFFFFF8, v51 = (v50 + 23) & 0xFFFFFFFFFFFFFFF8, v146 = (v51 + 15) & 0xFFFFFFFFFFFFFFF8, v142 = v47, v52 = swift_allocObject(), *(v52 + 16) = v147, v53 = *(v43 + 32), v54 = v45, LOBYTE(v45) = v150, v141 = v43 + 32, v140 = v53, v53(v52 + v48, v54, v46), v55 = (v52 + v49), v56 = v174, *v55 = v173, v55[1] = v56, v57 = (v52 + v50), v58 = v176, *v57 = v175, v57[1] = v58, *(v52 + v51) = v148, v59 = v52 + v146, *v59 = v177, *(v59 + 8) = v45, v60 = (v52 + ((v51 + 31) & 0xFFFFFFFFFFFFFFF8)), v61 = v154, v62 = v152, *v60 = v154, v60[1] = v62, v63 = (v149 + OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layoutHandler), v64 = *(v149 + OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layoutHandler), *v63 = sub_20BA66480, v63[1] = v52, , , v65 = v62, , , sub_20B584050(v61), v37 = v151, v66 = v179, sub_20B583ECC(v64), , v67 = sub_20B62730C(v66, v45), v67 > 0.0) && (v69 = v68, v68 > 0.0))
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
        sub_20B5F1AA0(v97, v165);
        v99 = v169;
        v100 = v143;
        if ((*(v169 + 48))(v98, 1, v143) == 1)
        {
          sub_20B520158(v98, &unk_27C766670);
          v101 = sub_20BA1DB84(&OBJC_IVAR____TtC9SeymourUI22TVIndexedBrickItemCell_tvArtworkView);
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
          *(v113 + 16) = sub_20BA664CC;
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
          *(v121 + 16) = sub_20BA66498;
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

void sub_20BA44DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(char *, uint64_t, uint64_t), char a9, void (*a10)(id), void (*a11)(id))
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
      v39 = OBJC_IVAR____TtC9SeymourUI22TVPlaylistBrickRowCell_tvArtworkView;
      [*&v37[OBJC_IVAR____TtC9SeymourUI22TVPlaylistBrickRowCell_tvArtworkView] setContentMode_];
      v40 = *&v37[v39];
      v41 = v179;
      v42 = sub_20BC32F08(v179, v40, a9 & 1);

      if ((v42 & 1) != 0 && (v143 = v22, v136 = v19, v137 = v12, v152 = a11, v154 = a10, v139 = v39, v149 = *&v37[v39], v147 = swift_allocObject(), swift_unknownObjectWeakInit(), v43 = v171, v44 = *(v171 + 16), v150 = a9 & 1, v45 = v172, v151 = v37, v46 = v178, v145 = v171 + 16, v144 = v44, v44(v172, v41, v178), v47 = *(v43 + 80), v148 = a7, v48 = (v47 + 24) & ~v47, v138 = v170 + 7, v49 = (v170 + 7 + v48) & 0xFFFFFFFFFFFFFFF8, v50 = (v49 + 23) & 0xFFFFFFFFFFFFFFF8, v51 = (v50 + 23) & 0xFFFFFFFFFFFFFFF8, v146 = (v51 + 15) & 0xFFFFFFFFFFFFFFF8, v142 = v47, v52 = swift_allocObject(), *(v52 + 16) = v147, v53 = *(v43 + 32), v54 = v45, LOBYTE(v45) = v150, v141 = v43 + 32, v140 = v53, v53(v52 + v48, v54, v46), v55 = (v52 + v49), v56 = v174, *v55 = v173, v55[1] = v56, v57 = (v52 + v50), v58 = v176, *v57 = v175, v57[1] = v58, *(v52 + v51) = v148, v59 = v52 + v146, *v59 = v177, *(v59 + 8) = v45, v60 = (v52 + ((v51 + 31) & 0xFFFFFFFFFFFFFFF8)), v61 = v154, v62 = v152, *v60 = v154, v60[1] = v62, v63 = (v149 + OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layoutHandler), v64 = *(v149 + OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layoutHandler), *v63 = sub_20BA65D74, v63[1] = v52, , , v65 = v62, , , sub_20B584050(v61), v37 = v151, v66 = v179, sub_20B583ECC(v64), , v67 = sub_20B627318(v66, v45), v67 > 0.0) && (v69 = v68, v68 > 0.0))
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
        sub_20B5F1AC8(v97, v165);
        v99 = v169;
        v100 = v143;
        if ((*(v169 + 48))(v98, 1, v143) == 1)
        {
          sub_20B520158(v98, &unk_27C766670);
          v101 = sub_20BA1DB84(&OBJC_IVAR____TtC9SeymourUI22TVPlaylistBrickRowCell_tvArtworkView);
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
          *(v113 + 16) = sub_20BA65DC0;
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
          *(v121 + 16) = sub_20BA65D8C;
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

void sub_20BA45D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t (*)(), uint64_t, uint64_t, uint64_t), void (*a8)(char *, uint64_t, uint64_t), unsigned __int8 a9, void (*a10)(uint64_t), void (*a11)(uint64_t))
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
      v41 = &v183[OBJC_IVAR____TtC9SeymourUI22TVProgramBrickItemCell_artworkView];
      [*&v183[OBJC_IVAR____TtC9SeymourUI22TVProgramBrickItemCell_artworkView] setContentMode_];
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
        v148(sub_20BA66294, v54, ObjectType, v63);

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
          sub_20B5F1AF0(v96, v170);
          v100 = v145;
          if ((*(v97 + 48))(v99, 1, v145) == 1)
          {
            sub_20B520158(v99, &unk_27C766670);
            v101 = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI22TVProgramBrickItemCell_artworkView);
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
            *(v112 + 16) = sub_20BA662E0;
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
            *(v123 + 16) = sub_20BA662AC;
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

void sub_20BA46DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(char *, uint64_t, uint64_t), char a9, void (*a10)(id), void (*a11)(id))
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
      v39 = OBJC_IVAR____TtC9SeymourUI22TVStandardBrickRowCell_tvArtworkView;
      [*&v37[OBJC_IVAR____TtC9SeymourUI22TVStandardBrickRowCell_tvArtworkView] setContentMode_];
      v40 = *&v37[v39];
      v41 = v179;
      v42 = sub_20BC8E3D8(v179, v40, a9 & 1);

      if ((v42 & 1) != 0 && (v143 = v22, v136 = v19, v137 = v12, v152 = a11, v154 = a10, v139 = v39, v149 = *&v37[v39], v147 = swift_allocObject(), swift_unknownObjectWeakInit(), v43 = v171, v44 = *(v171 + 16), v150 = a9 & 1, v45 = v172, v151 = v37, v46 = v178, v145 = v171 + 16, v144 = v44, v44(v172, v41, v178), v47 = *(v43 + 80), v148 = a7, v48 = (v47 + 24) & ~v47, v138 = v170 + 7, v49 = (v170 + 7 + v48) & 0xFFFFFFFFFFFFFFF8, v50 = (v49 + 23) & 0xFFFFFFFFFFFFFFF8, v51 = (v50 + 23) & 0xFFFFFFFFFFFFFFF8, v146 = (v51 + 15) & 0xFFFFFFFFFFFFFFF8, v142 = v47, v52 = swift_allocObject(), *(v52 + 16) = v147, v53 = *(v43 + 32), v54 = v45, LOBYTE(v45) = v150, v141 = v43 + 32, v140 = v53, v53(v52 + v48, v54, v46), v55 = (v52 + v49), v56 = v174, *v55 = v173, v55[1] = v56, v57 = (v52 + v50), v58 = v176, *v57 = v175, v57[1] = v58, *(v52 + v51) = v148, v59 = v52 + v146, *v59 = v177, *(v59 + 8) = v45, v60 = (v52 + ((v51 + 31) & 0xFFFFFFFFFFFFFFF8)), v61 = v154, v62 = v152, *v60 = v154, v60[1] = v62, v63 = (v149 + OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layoutHandler), v64 = *(v149 + OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layoutHandler), *v63 = sub_20BA65E18, v63[1] = v52, , , v65 = v62, , , sub_20B584050(v61), v37 = v151, v66 = v179, sub_20B583ECC(v64), , v67 = sub_20B627324(v66, v45), v67 > 0.0) && (v69 = v68, v68 > 0.0))
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
        sub_20B5F1B18(v97, v165);
        v99 = v169;
        v100 = v143;
        if ((*(v169 + 48))(v98, 1, v143) == 1)
        {
          sub_20B520158(v98, &unk_27C766670);
          v101 = sub_20BA1DB84(&OBJC_IVAR____TtC9SeymourUI22TVStandardBrickRowCell_tvArtworkView);
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
          *(v113 + 16) = sub_20BA65E64;
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
          *(v121 + 16) = sub_20BA65E30;
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

void sub_20BA47DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t (*)(), uint64_t, uint64_t, uint64_t), void (*a8)(char *, uint64_t, uint64_t), unsigned __int8 a9, void (*a10)(uint64_t), void (*a11)(uint64_t))
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
      v41 = &v183[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_artworkView];
      [*&v183[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_artworkView] setContentMode_];
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
        v148(sub_20BA65854, v54, ObjectType, v63);

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
          sub_20B5F1B40(v96, v170);
          v100 = v145;
          if ((*(v97 + 48))(v99, 1, v145) == 1)
          {
            sub_20B520158(v99, &unk_27C766670);
            v101 = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_artworkView);
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
            *(v112 + 16) = sub_20BA658A0;
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
            *(v123 + 16) = sub_20BA6586C;
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

void sub_20BA48E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t (*)(), uint64_t, uint64_t, uint64_t), void (*a8)(char *, uint64_t, uint64_t), unsigned __int8 a9, void (*a10)(uint64_t), void (*a11)(uint64_t))
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
      v41 = &v183[OBJC_IVAR____TtC9SeymourUI23RoundedDetailHeaderCell_artworkView];
      [*&v183[OBJC_IVAR____TtC9SeymourUI23RoundedDetailHeaderCell_artworkView] setContentMode_];
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
        v148(sub_20BA6570C, v54, ObjectType, v63);

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
          sub_20B5F1B68(v96, v170);
          v100 = v145;
          if ((*(v97 + 48))(v99, 1, v145) == 1)
          {
            sub_20B520158(v99, &unk_27C766670);
            v101 = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI23RoundedDetailHeaderCell_artworkView);
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
            *(v112 + 16) = sub_20BA65758;
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
            *(v123 + 16) = sub_20BA65724;
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

void sub_20BA49EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t (*)(), uint64_t, uint64_t, uint64_t), void (*a8)(char *, uint64_t, uint64_t), unsigned __int8 a9, void (*a10)(uint64_t), void (*a11)(uint64_t))
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
      v41 = &v183[OBJC_IVAR____TtC9SeymourUI23TVModalityBrickItemCell_artworkView];
      [*&v183[OBJC_IVAR____TtC9SeymourUI23TVModalityBrickItemCell_artworkView] setContentMode_];
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
        v148(sub_20BA64EB8, v54, ObjectType, v63);

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
          sub_20B5F1B90(v96, v170);
          v100 = v145;
          if ((*(v97 + 48))(v99, 1, v145) == 1)
          {
            sub_20B520158(v99, &unk_27C766670);
            v101 = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI23TVModalityBrickItemCell_artworkView);
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
            *(v112 + 16) = sub_20BA64F04;
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
            *(v123 + 16) = sub_20BA64ED0;
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

void sub_20BA4AF44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(char *, uint64_t, uint64_t), char a9, void (*a10)(id), void (*a11)(id))
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
      v39 = OBJC_IVAR____TtC9SeymourUI23TVStandardBrickItemCell_tvArtworkView;
      [*&v37[OBJC_IVAR____TtC9SeymourUI23TVStandardBrickItemCell_tvArtworkView] setContentMode_];
      v40 = *&v37[v39];
      v41 = v179;
      v42 = sub_20B627414(v179, v40, a9 & 1);

      if ((v42 & 1) != 0 && (v143 = v22, v136 = v19, v137 = v12, v152 = a11, v154 = a10, v139 = v39, v149 = *&v37[v39], v147 = swift_allocObject(), swift_unknownObjectWeakInit(), v43 = v171, v44 = *(v171 + 16), v150 = a9 & 1, v45 = v172, v151 = v37, v46 = v178, v145 = v171 + 16, v144 = v44, v44(v172, v41, v178), v47 = *(v43 + 80), v148 = a7, v48 = (v47 + 24) & ~v47, v138 = v170 + 7, v49 = (v170 + 7 + v48) & 0xFFFFFFFFFFFFFFF8, v50 = (v49 + 23) & 0xFFFFFFFFFFFFFFF8, v51 = (v50 + 23) & 0xFFFFFFFFFFFFFFF8, v146 = (v51 + 15) & 0xFFFFFFFFFFFFFFF8, v142 = v47, v52 = swift_allocObject(), *(v52 + 16) = v147, v53 = *(v43 + 32), v54 = v45, LOBYTE(v45) = v150, v141 = v43 + 32, v140 = v53, v53(v52 + v48, v54, v46), v55 = (v52 + v49), v56 = v174, *v55 = v173, v55[1] = v56, v57 = (v52 + v50), v58 = v176, *v57 = v175, v57[1] = v58, *(v52 + v51) = v148, v59 = v52 + v146, *v59 = v177, *(v59 + 8) = v45, v60 = (v52 + ((v51 + 31) & 0xFFFFFFFFFFFFFFF8)), v61 = v154, v62 = v152, *v60 = v154, v60[1] = v62, v63 = (v149 + OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layoutHandler), v64 = *(v149 + OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layoutHandler), *v63 = sub_20BA64AE0, v63[1] = v52, , , v65 = v62, , , sub_20B584050(v61), v37 = v151, v66 = v179, sub_20B583ECC(v64), , v67 = sub_20B627330(v66, v45), v67 > 0.0) && (v69 = v68, v68 > 0.0))
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
        sub_20B5F1BB8(v97, v165);
        v99 = v169;
        v100 = v143;
        if ((*(v169 + 48))(v98, 1, v143) == 1)
        {
          sub_20B520158(v98, &unk_27C766670);
          v101 = sub_20BA1DB84(&OBJC_IVAR____TtC9SeymourUI23TVStandardBrickItemCell_tvArtworkView);
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
          *(v113 + 16) = sub_20BA64B2C;
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
          *(v121 + 16) = sub_20BA64AF8;
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

void sub_20BA4BF04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t (*)(), uint64_t, uint64_t, uint64_t), void (*a8)(char *, uint64_t, uint64_t), unsigned __int8 a9, void (*a10)(uint64_t), void (*a11)(uint64_t))
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
      v41 = &v183[OBJC_IVAR____TtC9SeymourUI23TVWorkoutPlanBannerCell_artworkView];
      [*&v183[OBJC_IVAR____TtC9SeymourUI23TVWorkoutPlanBannerCell_artworkView] setContentMode_];
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
        v148(sub_20BA661F0, v54, ObjectType, v63);

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
          sub_20B5F1BE0(v96, v170);
          v100 = v145;
          if ((*(v97 + 48))(v99, 1, v145) == 1)
          {
            sub_20B520158(v99, &unk_27C766670);
            v101 = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI23TVWorkoutPlanBannerCell_artworkView);
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
            *(v112 + 16) = sub_20BA6623C;
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
            *(v123 + 16) = sub_20BA66208;
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

void sub_20BA4CF8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t (*)(), uint64_t, uint64_t, uint64_t), void (*a8)(char *, uint64_t, uint64_t), unsigned __int8 a9, void (*a10)(uint64_t), void (*a11)(uint64_t))
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
      v41 = &v183[OBJC_IVAR____TtC9SeymourUI23WorkoutPlanBrickRowCell_artworkView];
      [*&v183[OBJC_IVAR____TtC9SeymourUI23WorkoutPlanBrickRowCell_artworkView] setContentMode_];
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
        v148(sub_20BA6614C, v54, ObjectType, v63);

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
          sub_20B5F1C08(v96, v170);
          v100 = v145;
          if ((*(v97 + 48))(v99, 1, v145) == 1)
          {
            sub_20B520158(v99, &unk_27C766670);
            v101 = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI23WorkoutPlanBrickRowCell_artworkView);
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
            *(v112 + 16) = sub_20BA66198;
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
            *(v123 + 16) = sub_20BA66164;
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

void sub_20BA4E014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t (*)(), uint64_t, uint64_t, uint64_t), void (*a8)(char *, uint64_t, uint64_t), unsigned __int8 a9, void (*a10)(uint64_t), void (*a11)(uint64_t))
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
      v41 = &v183[OBJC_IVAR____TtC9SeymourUI24TabletActionBrickRowCell_artworkView];
      [*&v183[OBJC_IVAR____TtC9SeymourUI24TabletActionBrickRowCell_artworkView] setContentMode_];
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
        v148(sub_20BA65CD0, v54, ObjectType, v63);

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
          sub_20B5F1C30(v96, v170);
          v100 = v145;
          if ((*(v97 + 48))(v99, 1, v145) == 1)
          {
            sub_20B520158(v99, &unk_27C766670);
            v101 = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI24TabletActionBrickRowCell_artworkView);
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
            *(v112 + 16) = sub_20BA65D1C;
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
            *(v123 + 16) = sub_20BA65CE8;
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

void sub_20BA4F09C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t (*)(), uint64_t, uint64_t, uint64_t), void (*a8)(char *, uint64_t, uint64_t), unsigned __int8 a9, void (*a10)(uint64_t), void (*a11)(uint64_t))
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
      v41 = &v183[OBJC_IVAR____TtC9SeymourUI24WorkoutPlanBrickItemCell_artworkView];
      [*&v183[OBJC_IVAR____TtC9SeymourUI24WorkoutPlanBrickItemCell_artworkView] setContentMode_];
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
        v148(sub_20BA658F8, v54, ObjectType, v63);

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
          sub_20B5F1C58(v96, v170);
          v100 = v145;
          if ((*(v97 + 48))(v99, 1, v145) == 1)
          {
            sub_20B520158(v99, &unk_27C766670);
            v101 = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI24WorkoutPlanBrickItemCell_artworkView);
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
            *(v112 + 16) = sub_20BA65944;
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
            *(v123 + 16) = sub_20BA65910;
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

void sub_20BA50124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t (*)(), uint64_t, uint64_t, uint64_t), void (*a8)(char *, uint64_t, uint64_t), unsigned __int8 a9, void (*a10)(uint64_t), void (*a11)(uint64_t))
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
      v41 = &v183[OBJC_IVAR____TtC9SeymourUI25FullWidthDetailHeaderCell_artworkView];
      [*&v183[OBJC_IVAR____TtC9SeymourUI25FullWidthDetailHeaderCell_artworkView] setContentMode_];
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
        v148(sub_20BA64F5C, v54, ObjectType, v63);

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
          sub_20B5F1C80(v96, v170);
          v100 = v145;
          if ((*(v97 + 48))(v99, 1, v145) == 1)
          {
            sub_20B520158(v99, &unk_27C766670);
            v101 = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI25FullWidthDetailHeaderCell_artworkView);
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
            *(v112 + 16) = sub_20BA64FA8;
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
            *(v123 + 16) = sub_20BA64F74;
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

void sub_20BA511AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t (*)(), uint64_t, uint64_t, uint64_t), void (*a8)(char *, uint64_t, uint64_t), unsigned __int8 a9, void (*a10)(uint64_t), void (*a11)(uint64_t))
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
      v41 = &v183[OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutBrickRowCell_artworkView];
      [*&v183[OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutBrickRowCell_artworkView] setContentMode_];
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
        v148(sub_20BA65F60, v54, ObjectType, v63);

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
          sub_20B5F1CA8(v96, v170);
          v100 = v145;
          if ((*(v97 + 48))(v99, 1, v145) == 1)
          {
            sub_20B520158(v99, &unk_27C766670);
            v101 = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutBrickRowCell_artworkView);
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
            *(v112 + 16) = sub_20BA65FAC;
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
            *(v123 + 16) = sub_20BA65F78;
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