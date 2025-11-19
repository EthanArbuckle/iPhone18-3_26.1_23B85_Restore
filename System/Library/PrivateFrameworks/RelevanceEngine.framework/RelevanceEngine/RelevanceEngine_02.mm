id sub_22868C770(void *a1)
{
  v2 = sub_2286A092C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v110 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v89 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = (&v89 - v11);
  MEMORY[0x28223BE20](v10);
  v114 = &v89 - v13;
  v118 = MEMORY[0x277D84F90];
  v103 = a1;
  v14 = [a1 relevanceProviders];
  sub_228696230(0, &qword_27D84EEF0, off_2785F8E30);
  v15 = sub_2286A09FC();

  if (v15 >> 62)
  {
    goto LABEL_54;
  }

  v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v17)
  {
LABEL_3:
    v18 = 0;
    v106 = OBJC_IVAR___RankingManager_featureToConditionEvaluator;
    v94 = v15 & 0xC000000000000001;
    v91 = v15 & 0xFFFFFFFFFFFFFF8;
    v90 = v15 + 32;
    v112 = (v3 + 8);
    v113 = (v3 + 16);
    v100 = MEMORY[0x277D84F90];
    *&v16 = 138412290;
    v105 = v16;
    *&v16 = 136315394;
    v99 = v16;
    v101 = v12;
    v102 = v9;
    v93 = v15;
    v92 = v17;
    do
    {
      if (v94)
      {
        v19 = MEMORY[0x22AABB310](v18, v15);
      }

      else
      {
        if (v18 >= *(v91 + 16))
        {
          goto LABEL_53;
        }

        v19 = *(v90 + 8 * v18);
      }

      v9 = v19;
      if (__OFADD__(v18++, 1))
      {
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        v17 = sub_2286A0BAC();
        if (!v17)
        {
          goto LABEL_55;
        }

        goto LABEL_3;
      }

      v3 = [v111 relevanceEngine];
      v21 = [v3 featuresForRelevanceProvider_];

      if (v21)
      {
        sub_228696230(0, &qword_281057DB0, off_2785F8AF8);
        v3 = sub_2286A09FC();

        v22 = v3;
        v96 = v18;
        if (v3 >> 62)
        {
          v23 = sub_2286A0BAC();
          v22 = v3;
        }

        else
        {
          v23 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v95 = v9;
        if (v23)
        {
          if (v23 >= 1)
          {
            v24 = 0;
            v107 = v22 & 0xC000000000000001;
            v108 = v23;
            v109 = v22;
            while (1)
            {
              if (v107)
              {
                v28 = MEMORY[0x22AABB310](v24);
              }

              else
              {
                v28 = *(v22 + 8 * v24 + 32);
              }

              v29 = v28;
              v30 = sub_22868A460();
              v31 = *v113;
              (*v113)(v114, v30, v2);
              v32 = v29;
              v33 = sub_2286A090C();
              v34 = sub_2286A0A6C();

              if (os_log_type_enabled(v33, v34))
              {
                v35 = swift_slowAlloc();
                v36 = swift_slowAlloc();
                *v35 = v105;
                *(v35 + 4) = v32;
                *v36 = v32;
                v37 = v32;
                _os_log_impl(&dword_22859F000, v33, v34, "rankingBehaviorsForElement - featureName: %@", v35, 0xCu);
                sub_2286961D0(v36, &qword_27D84EF28, &qword_2286B3EF0);
                MEMORY[0x22AABCAC0](v36, -1, -1);
                MEMORY[0x22AABCAC0](v35, -1, -1);
              }

              v38 = *v112;
              (*v112)(v114, v2);
              v39 = v111;
              v40 = v106;
              swift_beginAccess();
              v41 = *&v39[v40];
              if ((v41 & 0xC000000000000001) != 0)
              {
                v42 = v32;
                v43 = sub_2286A0BBC();

                if (!v43)
                {
                  goto LABEL_38;
                }

                v115 = v43;
                sub_228696230(0, &qword_27D84EFA0, off_2785F8908);
                swift_dynamicCast();
                v44 = v116;
                if (!v116)
                {
                  goto LABEL_38;
                }
              }

              else if (!*(v41 + 16) || (v45 = sub_228690490(v32), (v46 & 1) == 0) || (v44 = *(*(v41 + 56) + 8 * v45)) == 0)
              {
LABEL_38:
                swift_endAccess();
                v31(v110, v30, v2);
                v68 = v32;
                v3 = sub_2286A090C();
                v69 = sub_2286A0A6C();

                if (os_log_type_enabled(v3, v69))
                {
                  v25 = swift_slowAlloc();
                  v26 = swift_slowAlloc();
                  *v25 = v105;
                  *(v25 + 4) = v68;
                  *v26 = v68;
                  v12 = v68;
                  _os_log_impl(&dword_22859F000, v3, v69, "Missing conditionEvaluator for feature %@", v25, 0xCu);
                  sub_2286961D0(v26, &qword_27D84EF28, &qword_2286B3EF0);
                  MEMORY[0x22AABCAC0](v26, -1, -1);
                  MEMORY[0x22AABCAC0](v25, -1, -1);
                }

                else
                {
                  v12 = v3;
                  v3 = v68;
                }

                v27 = v110;
                goto LABEL_19;
              }

              swift_endAccess();
              v47 = [v111 relevanceEngine];
              v48 = [v47 elementEvaluatorForConditionEvaluator_];

              v104 = v48;
              v49 = v103;
              if ([v48 shouldAcceptElement_])
              {
                v50 = v101;
                v31(v101, v30, v2);
                v51 = v32;
                v52 = v49;
                v53 = sub_2286A090C();
                v54 = sub_2286A0A6C();

                if (os_log_type_enabled(v53, v54))
                {
                  v98 = v54;
                  v100 = v51;
                  v55 = swift_slowAlloc();
                  v97 = swift_slowAlloc();
                  v117[0] = v97;
                  *v55 = v99;
                  v56 = [v52 applicationBundleIdentifier];
                  if (!v56)
                  {
                    v56 = [v52 bundleIdentifier];
                  }

                  v57 = sub_2286A097C();
                  v59 = v58;

                  v60 = sub_22868FE70(v57, v59, v117);

                  *(v55 + 4) = v60;
                  *(v55 + 12) = 2080;
                  v61 = [v100 name];
                  v62 = sub_2286A097C();
                  v64 = v63;

                  v65 = sub_22868FE70(v62, v64, v117);

                  *(v55 + 14) = v65;
                  _os_log_impl(&dword_22859F000, v53, v98, "Should accept element %s with feature %s", v55, 0x16u);
                  v66 = v97;
                  swift_arrayDestroy();
                  MEMORY[0x22AABCAC0](v66, -1, -1);
                  v67 = v55;
                  v51 = v100;
                  MEMORY[0x22AABCAC0](v67, -1, -1);

                  v38(v101, v2);
                }

                else
                {

                  v38(v50, v2);
                }

                v84 = [v51 name];
                v85 = sub_2286A097C();
                v12 = v86;

                sub_22868C414(v85, v12);

                v3 = &v118;
                MEMORY[0x22AABB1E0](v87);
                if (*((v118 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v118 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  v12 = *((v118 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  sub_2286A0A1C();
                }

                sub_2286A0A3C();

                swift_unknownObjectRelease();
                v100 = v118;
                goto LABEL_20;
              }

              v12 = v102;
              v31(v102, v30, v2);
              v70 = v32;
              v71 = v49;
              v3 = sub_2286A090C();
              v72 = sub_2286A0A6C();

              if (os_log_type_enabled(v3, v72))
              {
                v98 = v72;
                v12 = swift_slowAlloc();
                v97 = swift_slowAlloc();
                v117[0] = v97;
                LODWORD(v12->isa) = v99;
                v73 = [v71 applicationBundleIdentifier];
                if (!v73)
                {
                  v73 = [v71 bundleIdentifier];
                }

                v74 = sub_2286A097C();
                v76 = v75;

                v77 = sub_22868FE70(v74, v76, v117);

                *(&v12->isa + 4) = v77;
                WORD2(v12[1].isa) = 2080;
                v78 = [v70 name];
                v79 = sub_2286A097C();
                v81 = v80;

                v82 = sub_22868FE70(v79, v81, v117);

                *(&v12[1].isa + 6) = v82;
                _os_log_impl(&dword_22859F000, v3, v98, "Should not accept element %s with feature %s", v12, 0x16u);
                v83 = v97;
                swift_arrayDestroy();
                MEMORY[0x22AABCAC0](v83, -1, -1);
                MEMORY[0x22AABCAC0](v12, -1, -1);

                swift_unknownObjectRelease();
                v27 = v102;
              }

              else
              {

                swift_unknownObjectRelease();
                v27 = v12;
              }

LABEL_19:
              v38(v27, v2);
LABEL_20:
              ++v24;
              v22 = v109;
              if (v108 == v24)
              {
                goto LABEL_4;
              }
            }
          }

          goto LABEL_52;
        }

LABEL_4:

        v15 = v93;
        v17 = v92;
        v18 = v96;
        v9 = v95;
      }
    }

    while (v18 != v17);

    return v100;
  }

  else
  {
LABEL_55:

    return MEMORY[0x277D84F90];
  }
}

uint64_t sub_22868D354@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = sub_2286A089C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v47 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2286A092C();
  v48 = *(v7 - 8);
  v8 = *(v48 + 64);
  MEMORY[0x28223BE20](v7);
  v51 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 relevanceProviders];
  sub_228696230(0, &qword_27D84EEF0, off_2785F8E30);
  v11 = sub_2286A09FC();

  v55 = MEMORY[0x277D84F90];
  v50 = v4;
  if (v11 >> 62)
  {
LABEL_19:
    v12 = sub_2286A0BAC();
    v52 = v7;
    if (!v12)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v52 = v7;
    if (!v12)
    {
      goto LABEL_20;
    }
  }

  v7 = 0;
  do
  {
    v13 = v7;
    while (1)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x22AABB310](v13, v11);
      }

      else
      {
        if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v14 = *(v11 + 8 * v13 + 32);
      }

      v15 = v14;
      v7 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v54 = &unk_283BBF700;
      if (swift_dynamicCastObjCProtocolConditional())
      {
        break;
      }

      ++v13;
      if (v7 == v12)
      {
        goto LABEL_20;
      }
    }

    MEMORY[0x22AABB1E0]();
    if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v16 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_2286A0A1C();
    }

    sub_2286A0A3C();
  }

  while (v7 != v12);
LABEL_20:

  v55 = sub_2286932FC(v17);
  sub_228691364(&v55);

  v18 = v55;
  v19 = v3;
  v20 = v51;
  v21 = v52;
  if ((v55 & 0x8000000000000000) == 0 && (v55 & 0x4000000000000000) == 0)
  {
    v22 = v50;
    if (*(v55 + 16))
    {
      goto LABEL_23;
    }

LABEL_31:

    v44 = 1;
    v43 = v49;
    return (*(v22 + 56))(v43, v44, 1, v19);
  }

  v45 = sub_2286A0BAC();
  v22 = v50;
  if (!v45)
  {
    goto LABEL_31;
  }

LABEL_23:
  if ((v18 & 0xC000000000000001) != 0)
  {
    v23 = MEMORY[0x22AABB310](0, v18);
    goto LABEL_26;
  }

  if (*(v18 + 16))
  {
    v23 = *(v18 + 32);
    swift_unknownObjectRetain();
LABEL_26:

    v24 = sub_22868A460();
    v25 = v48;
    (*(v48 + 16))(v20, v24, v21);
    swift_unknownObjectRetain();
    v26 = sub_2286A090C();
    v27 = sub_2286A0A6C();
    swift_unknownObjectRelease();
    v28 = &selRef_removeFeatureValueAtIndex_;
    if (os_log_type_enabled(v26, v27))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v55 = v30;
      *v29 = 136315394;
      v31 = [v23 startDate];
      v32 = v19;
      v33 = v47;
      sub_2286A087C();

      sub_228696278(&qword_27D84EEF8, MEMORY[0x277CC9578]);
      v34 = sub_2286A0C9C();
      v36 = v35;
      v37 = v33;
      v19 = v32;
      (*(v22 + 8))(v37, v32);
      v38 = sub_22868FE70(v34, v36, &v55);

      *(v29 + 4) = v38;
      *(v29 + 12) = 2080;
      v53 = v23;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D84EF00, &qword_2286B3ED8);
      v39 = sub_2286A098C();
      v41 = sub_22868FE70(v39, v40, &v55);
      v28 = &selRef_removeFeatureValueAtIndex_;

      *(v29 + 14) = v41;
      _os_log_impl(&dword_22859F000, v26, v27, "Using startDate: %s from the first REDateRelevanceProviding found: %s", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABCAC0](v30, -1, -1);
      MEMORY[0x22AABCAC0](v29, -1, -1);

      (*(v48 + 8))(v51, v52);
    }

    else
    {

      (*(v25 + 8))(v20, v21);
    }

    v42 = [v23 v28[322]];
    v43 = v49;
    sub_2286A087C();
    swift_unknownObjectRelease();

    v44 = 0;
    return (*(v22 + 56))(v43, v44, 1, v19);
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_22868DA8C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_2286A089C();
  v7 = *(v6 - 1);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v108 = v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v110 = v101 - v11;
  v120 = sub_2286A092C();
  v12 = *(v120 - 8);
  v13 = *(v12 + 8);
  v14 = MEMORY[0x28223BE20](v120);
  v107 = v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v109 = v101 - v17;
  MEMORY[0x28223BE20](v16);
  v118 = v101 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D84EF08, &unk_2286B3F70);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v113 = v101 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v112 = v101 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v111 = v101 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v29 = v101 - v28;
  MEMORY[0x28223BE20](v27);
  v125 = v101 - v30;
  v31 = *(v7 + 56);
  v32 = 1;
  v119 = a2;
  v124 = v7 + 56;
  v123 = v31;
  v31(a2, 1, 1, v6);
  v130 = v3;
  v33 = [v3 rankingStartDateForElement_];
  if (v33)
  {
    v34 = v33;
    sub_2286A087C();

    v32 = 0;
  }

  v123(v29, v32, 1, v6);
  sub_228694F1C(v29, v125);
  v140 = sub_22868C770(a1);
  v35 = [a1 relevanceProviders];
  sub_228696230(0, &qword_27D84EEF0, off_2785F8E30);
  v36 = sub_2286A09FC();

  v38 = v36;
  v127 = v36;
  if (v36 >> 62)
  {
    goto LABEL_82;
  }

  v39 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v39)
  {
    v129 = v38 & 0xC000000000000001;
    v122 = v38 & 0xFFFFFFFFFFFFFF8;
    v121 = v38 + 32;
    v40 = v140 & 0xFFFFFFFFFFFFFF8;
    v139 = v140 & 0xFFFFFFFFFFFFFF8;
    if (v140 < 0)
    {
      v40 = v140;
    }

    v101[1] = v40;
    v138 = v140 & 0xC000000000000001;
    v116 = (v7 + 48);
    v106 = (v7 + 8);
    v115 = (v12 + 16);
    v114 = (v12 + 8);
    v105 = (v7 + 32);
    v104 = (v7 + 16);
    v7 = 0;
    *&v37 = 134217984;
    v103 = v37;
    *&v37 = 136315138;
    v102 = v37;
    v117 = v6;
    v126 = v39;
    while (1)
    {
      if (v129)
      {
        v41 = MEMORY[0x22AABB310](v7, v38);
        v42 = __OFADD__(v7++, 1);
        if (v42)
        {
          goto LABEL_80;
        }
      }

      else
      {
        if (v7 >= *(v122 + 16))
        {
          goto LABEL_81;
        }

        v41 = *(v121 + 8 * v7);
        v42 = __OFADD__(v7++, 1);
        if (v42)
        {
          goto LABEL_80;
        }
      }

      v131 = v7;
      v43 = v41;
      v44 = [v130 relevanceEngine];
      v45 = [v44 featuresForRelevanceProvider_];

      if (!v45)
      {

        goto LABEL_9;
      }

      v128 = v43;
      sub_228696230(0, &qword_281057DB0, off_2785F8AF8);
      v46 = sub_2286A09FC();

      v134 = v46;
      if (v46 >> 62)
      {
        v47 = sub_2286A0BAC();
        v7 = v131;
        if (!v47)
        {
LABEL_73:

          goto LABEL_10;
        }
      }

      else
      {
        v47 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v7 = v131;
        if (!v47)
        {
          goto LABEL_73;
        }
      }

      v7 = v140 >> 62 ? sub_2286A0BAC() : *(v139 + 16);
      v48 = 0;
      v135 = v47;
      v136 = (v134 & 0xC000000000000001);
      v132 = v134 + 32;
      v133 = v134 & 0xFFFFFFFFFFFFFF8;
LABEL_25:
      if (v136)
      {
        v49 = MEMORY[0x22AABB310](v48, v134);
      }

      else
      {
        if (v48 >= *(v133 + 16))
        {
          goto LABEL_79;
        }

        v49 = *(v132 + 8 * v48);
      }

      v50 = v49;
      v42 = __OFADD__(v48++, 1);
      v51 = MEMORY[0x277D84F90];
      if (v42)
      {
        goto LABEL_77;
      }

      v141[0] = MEMORY[0x277D84F90];
      if (v7)
      {
        break;
      }

LABEL_48:
      if ((v51 & 0x8000000000000000) == 0 && (v51 & 0x4000000000000000) == 0)
      {
        if (*(v51 + 16))
        {
          goto LABEL_51;
        }

LABEL_23:

LABEL_24:
        if (v48 == v135)
        {

          goto LABEL_9;
        }

        goto LABEL_25;
      }

      v66 = v51;
      v67 = sub_2286A0BAC();
      v51 = v66;
      if (!v67)
      {
        goto LABEL_23;
      }

LABEL_51:
      if ((v51 & 0xC000000000000001) != 0)
      {
        v63 = MEMORY[0x22AABB310](0, v51);
      }

      else
      {
        if (!*(v51 + 16))
        {
          goto LABEL_78;
        }

        v63 = *(v51 + 32);
      }

      (*(*v63 + 120))(v141, v64);
      v65 = v141[0];
      if ((v141[0] & 0x8000000000000000) == 0)
      {

        goto LABEL_24;
      }

      v69 = v65 & 0x7FFFFFFFFFFFFFFFLL;
      v70 = *(*v69 + 88);
      v137 = v69;
      v70(v141, v68);
      v71 = v141[3];

      v72 = v112;
      sub_228696168(v125, v112, &unk_27D84EF08, &unk_2286B3F70);
      v73 = *v116;
      v74 = v117;
      if ((*v116)(v72, 1, v117) == 1)
      {
        v75 = v119;
        sub_2286961D0(v119, &unk_27D84EF08, &unk_2286B3F70);
        sub_2286961D0(v72, &unk_27D84EF08, &unk_2286B3F70);
        v76 = 1;
        v77 = v111;
      }

      else
      {
        v77 = v111;
        sub_2286A082C();
        v75 = v119;
        sub_2286961D0(v119, &unk_27D84EF08, &unk_2286B3F70);
        (*v106)(v72, v74);
        v76 = 0;
      }

      v123(v77, v76, 1, v74);
      sub_228694F1C(v77, v75);
      v78 = sub_22868A460();
      v6 = *v115;
      (*v115)(v118, v78, v120);
      v79 = sub_2286A090C();
      v80 = sub_2286A0A6C();
      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        *v81 = v103;
        *(v81 + 4) = v71;
        _os_log_impl(&dword_22859F000, v79, v80, "startDateOffset: %f", v81, 0xCu);
        MEMORY[0x22AABCAC0](v81, -1, -1);
      }

      v82 = v120;
      v136 = *v114;
      v136(v118, v120);
      v83 = v113;
      v12 = &unk_2286B3F70;
      sub_228696168(v119, v113, &unk_27D84EF08, &unk_2286B3F70);
      v84 = v117;
      if (v73(v83, 1, v117) == 1)
      {
        sub_2286961D0(v83, &unk_27D84EF08, &unk_2286B3F70);
        v85 = v107;
        (v6)(v107, v78, v82);
        v86 = sub_2286A090C();
        v87 = sub_2286A0A6C();
        if (os_log_type_enabled(v86, v87))
        {
          v88 = swift_slowAlloc();
          *v88 = 0;
          _os_log_impl(&dword_22859F000, v86, v87, "startDate: nil", v88, 2u);
          MEMORY[0x22AABCAC0](v88, -1, -1);
        }

        v136(v85, v82);
      }

      else
      {
        v12 = v110;
        (*v105)(v110, v83, v84);
        v89 = v109;
        (v6)(v109, v78, v82);
        v90 = v108;
        (*v104)(v108, v12, v84);
        v91 = sub_2286A090C();
        v6 = sub_2286A0A6C();
        if (os_log_type_enabled(v91, v6))
        {
          v92 = swift_slowAlloc();
          v135 = swift_slowAlloc();
          v141[0] = v135;
          *v92 = v102;
          sub_228696278(&qword_27D84EEF8, MEMORY[0x277CC9578]);
          v93 = sub_2286A0C9C();
          v94 = v90;
          v96 = v95;
          v12 = *v106;
          (*v106)(v94, v84);
          v97 = sub_22868FE70(v93, v96, v141);

          *(v92 + 4) = v97;
          _os_log_impl(&dword_22859F000, v91, v6, "startDate: %s", v92, 0xCu);
          v98 = v135;
          __swift_destroy_boxed_opaque_existential_1(v135);
          MEMORY[0x22AABCAC0](v98, -1, -1);
          MEMORY[0x22AABCAC0](v92, -1, -1);

          v136(v109, v120);
          (v12)(v110, v84);
        }

        else
        {

          v99 = *v106;
          (*v106)(v90, v84);
          v136(v89, v82);
          (v99)(v12, v84);
        }
      }

LABEL_9:
      v7 = v131;
LABEL_10:
      v38 = v127;
      if (v7 == v126)
      {
        goto LABEL_83;
      }
    }

    v137 = v48;
    v52 = 0;
    while (v138)
    {
      v54 = MEMORY[0x22AABB310](v52, v140);
      v6 = (v52 + 1);
      if (__OFADD__(v52, 1))
      {
        goto LABEL_75;
      }

LABEL_38:
      v55 = (*(*v54 + 96))();
      v57 = v56;
      v58 = [v50 name];
      v59 = sub_2286A097C();
      v12 = v60;

      if (v55 == v59 && v57 == v12)
      {
      }

      else
      {
        v62 = sub_2286A0CAC();

        if ((v62 & 1) == 0)
        {

          goto LABEL_34;
        }
      }

      sub_2286A0B4C();
      v53 = *(v141[0] + 16);
      sub_2286A0B6C();
      sub_2286A0B7C();
      sub_2286A0B5C();
LABEL_34:
      ++v52;
      if (v6 == v7)
      {
        v51 = v141[0];
        v48 = v137;
        goto LABEL_48;
      }
    }

    if (v52 >= *(v139 + 16))
    {
      goto LABEL_76;
    }

    v54 = *(v140 + 8 * v52 + 32);

    v6 = (v52 + 1);
    if (!__OFADD__(v52, 1))
    {
      goto LABEL_38;
    }

LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    v39 = sub_2286A0BAC();
    v38 = v127;
  }

LABEL_83:

  return sub_2286961D0(v125, &unk_27D84EF08, &unk_2286B3F70);
}

unint64_t sub_22868EAE4(void *a1, char *a2)
{
  v4 = sub_2286A089C();
  v40 = *(v4 - 8);
  v5 = *(v40 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D84EF18, &qword_2286B3EE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2286B3EC0;
  *(inited + 32) = 0x49746E656D656C65;
  *(inited + 40) = 0xE900000000000064;
  v10 = [a1 identifier];
  v11 = sub_2286A097C();
  v13 = v12;

  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v11;
  *(inited + 56) = v13;
  sub_228693940(inited);
  swift_setDeallocating();
  sub_2286961D0(inited + 32, &qword_27D84EF20, &qword_2286B3EE8);
  v14 = sub_2286A093C();

  [v8 traceEvent:3 withMetadata:v14];

  sub_2286A088C();
  sub_2286A081C();
  v16 = v15;
  v44 = a1;
  result = sub_22868C770(a1);
  v18 = result;
  if (result >> 62)
  {
    result = sub_2286A0BAC();
    v19 = result;
  }

  else
  {
    v19 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v20 = v16 / 60.0;
  v41 = v4;
  if (!v19)
  {
    v22 = MEMORY[0x277D84F90];
    v23 = 0.0;
LABEL_22:

    sub_228695A60(v44, v22, a2, v7, v23, v20);

    return (*(v40 + 8))(v7, v41);
  }

  if (v19 >= 1)
  {
    v21 = 0;
    v43 = v18 & 0xC000000000000001;
    v22 = MEMORY[0x277D84F90];
    v23 = 0.0;
    v42 = v18;
    do
    {
      if (v43)
      {
        v24 = MEMORY[0x22AABB310](v21, v18);
      }

      else
      {
        v24 = *(v18 + 8 * v21 + 32);
      }

      v25 = (*(*v24 + 160))(a2, v7);
      v26 = sub_228694F8C(v44, v24, a2, v7, v25, v20);
      if (v25 == v23)
      {
        v27 = (*(*v24 + 96))(v26);
        v29 = v28;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_22868FC58(0, *(v22 + 2) + 1, 1, v22);
        }

        v31 = *(v22 + 2);
        v30 = *(v22 + 3);
        if (v31 >= v30 >> 1)
        {
          v22 = sub_22868FC58((v30 > 1), v31 + 1, 1, v22);
        }

        *(v22 + 2) = v31 + 1;
        v32 = &v22[16 * v31];
        *(v32 + 4) = v27;
        *(v32 + 5) = v29;
        v18 = v42;
      }

      else if (v23 >= v25)
      {
      }

      else
      {

        v34 = (*(*v24 + 96))(v33);
        v36 = v35;
        v22 = sub_22868FC58(0, 1, 1, MEMORY[0x277D84F90]);
        v38 = *(v22 + 2);
        v37 = *(v22 + 3);
        if (v38 >= v37 >> 1)
        {
          v22 = sub_22868FC58((v37 > 1), v38 + 1, 1, v22);
        }

        *(v22 + 2) = v38 + 1;
        v39 = &v22[16 * v38];
        *(v39 + 4) = v34;
        *(v39 + 5) = v36;
        v23 = v25;
        v18 = v42;
      }

      ++v21;
    }

    while (v19 != v21);
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

id sub_22868F09C(void *a1)
{
  v2 = v1;
  v88 = a1;
  v3 = sub_2286A092C();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v77 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v77 - v12;
  v14 = [v2 relevanceEngine];
  v15 = &selRef__setSection_forElementWithIdentifier_;
  v16 = [v14 configuration];

  v17 = [v16 rankingTierFilteringRules];
  if (!v17)
  {
    goto LABEL_5;
  }

  v86 = v13;
  v87 = v2;
  v78 = v11;
  v79 = v4;
  sub_228696230(0, &qword_27D84EF30, 0x277CCABB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D84EF38, &qword_2286B3EF8);
  sub_228695F80(&qword_27D84EF40, &qword_27D84EF30, 0x277CCABB0);
  v18 = sub_2286A094C();

  v8 = *(v18 + 16);
  v77 = v18;
  if (!v8)
  {
LABEL_9:
    v19 = MEMORY[0x277D84F90];
    goto LABEL_10;
  }

  v19 = sub_22868FDEC(v8, 0);
  v20 = sub_2286935CC(v91, v19 + 4, v8, v18);
  v2 = v91[0];
  v15 = v91[2];
  v4 = v91[3];

  sub_228695FD0();
  if (v20 != v8)
  {
    __break(1u);
LABEL_5:
    v21 = sub_22868A460();
    (v4[2])(v8, v21, v3);
    v22 = v2;
    v23 = sub_2286A090C();
    v24 = sub_2286A0A7C();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      v27 = [v22 relevanceEngine];
      v28 = [v27 v15[328]];

      *(v25 + 4) = v28;
      *v26 = v28;
      _os_log_impl(&dword_22859F000, v23, v24, "Could not unwrap ranking tier filtering rules from configuration: %@", v25, 0xCu);
      sub_2286961D0(v26, &qword_27D84EF28, &qword_2286B3EF0);
      MEMORY[0x22AABCAC0](v26, -1, -1);
      MEMORY[0x22AABCAC0](v25, -1, -1);
    }

    (v4[1])(v8, v3);
    result = [objc_opt_self() none];
    if (result)
    {
      return result;
    }

    __break(1u);
    goto LABEL_9;
  }

LABEL_10:
  v91[0] = v19;
  v30 = 0;
  sub_2286913E0(v91);
  v31 = v91[0];
  v90 = v91[0][2];
  if (v90)
  {
    v89 = objc_opt_self();
    v32 = 0;
    v83 = (v79 + 1);
    v84 = (v79 + 2);
    v33 = v31 + 5;
    *&v34 = 138412546;
    v81 = v34;
    v85 = v31;
    v80 = v3;
    while (v32 < v31[2])
    {
      v35 = *(v33 - 1);
      v36 = *v33;
      v37 = sub_228696230(0, &qword_27D84EF48, off_2785F8B50);
      v38 = v35;

      v39 = sub_2286A09EC();
      v40 = [v89 comparatorWithFilteringRules_];

      if (v40)
      {

        v30 = [v87 relevanceEngine];
        v41 = [v30 elementRankerForComparator_];

        if (([v41 shouldHideElement_] & 1) == 0)
        {

          v75 = [v38 integerValue];
          v76 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];

          swift_unknownObjectRelease();
          return v76;
        }

        swift_unknownObjectRelease();
      }

      else
      {
        v42 = sub_22868A460();
        v43 = v86;
        (*v84)(v86, v42, v3);
        v30 = v3;
        v44 = v38;

        v45 = sub_2286A090C();
        v46 = sub_2286A0A7C();

        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          v82 = swift_slowAlloc();
          v91[0] = v82;
          *v47 = v81;
          *(v47 + 4) = v44;
          *v30 = v44;
          *(v47 + 12) = 2080;
          v48 = v44;
          v49 = MEMORY[0x22AABB210](v36, v37);
          v51 = v50;

          v52 = sub_22868FE70(v49, v51, v91);

          *(v47 + 14) = v52;
          _os_log_impl(&dword_22859F000, v45, v46, "Could not unwrap comparator for tier number %@ with tier rules: %s", v47, 0x16u);
          sub_2286961D0(v30, &qword_27D84EF28, &qword_2286B3EF0);
          MEMORY[0x22AABCAC0](v30, -1, -1);
          v53 = v82;
          __swift_destroy_boxed_opaque_existential_1(v82);
          MEMORY[0x22AABCAC0](v53, -1, -1);
          MEMORY[0x22AABCAC0](v47, -1, -1);

          v3 = v80;
          (*v83)(v86, v80);
        }

        else
        {

          (*v83)(v43, v30);
          v3 = v30;
        }

        v31 = v85;
      }

      ++v32;
      v33 += 2;
      if (v90 == v32)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_21:
    v54 = sub_22868A460();
    v56 = v78;
    v55 = v79;
    (v79[2])(v78, v54, v3);
    v57 = v88;
    v58 = sub_2286A090C();
    v59 = sub_2286A0A7C();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v91[0] = v61;
      *v60 = 136315394;
      v62 = [v57 applicationBundleIdentifier];
      if (!v62)
      {
        v62 = [v57 bundleIdentifier];
      }

      v63 = v62;
      v64 = sub_2286A097C();
      v66 = v65;

      v67 = sub_22868FE70(v64, v66, v91);

      *(v60 + 4) = v67;
      *(v60 + 12) = 2080;
      v68 = [v57 identifier];
      v30 = sub_2286A097C();
      v70 = v69;

      v71 = sub_22868FE70(v30, v70, v91);

      *(v60 + 14) = v71;
      _os_log_impl(&dword_22859F000, v58, v59, "Element: %s, Element ID: %s doesn't match any tier! Returning no tier.", v60, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABCAC0](v61, -1, -1);
      MEMORY[0x22AABCAC0](v60, -1, -1);

      (v79[1])(v78, v3);
    }

    else
    {

      v72 = v55[1];
      v30 = v55 + 1;
      v72(v56, v3);
    }

    v73 = [objc_opt_self() none];
    if (v73)
    {
      v74 = v73;

      return v74;
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

void __swiftcall RankingManager.init()(RankingManager *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

char *sub_22868FB54(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D84EF70, &qword_2286B3F10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_22868FC58(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D84EF80, &qword_2286B3F20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22868FD64(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D84EFC0, &qword_2286B3F40);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_22868FDEC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D84EF78, &qword_2286B3F18);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t sub_22868FE70(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_22868FF3C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2286960A8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_22868FF3C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_228690048(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_2286A0B3C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_228690048(uint64_t a1, unint64_t a2)
{
  v4 = sub_228690094(a1, a2);
  sub_2286901C4(&unk_283B96BB0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_228690094(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2286902B0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_2286A0B3C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_2286A09BC();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2286902B0(v10, 0);
        result = sub_2286A0AEC();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2286901C4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_228690324(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2286902B0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D84EFA8, &qword_2286B3F30);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_228690324(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D84EFA8, &qword_2286B3F30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_228690418(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2286A0CEC();
  sub_2286A099C();
  v6 = sub_2286A0D1C();

  return sub_2286904D4(a1, a2, v6);
}

unint64_t sub_228690490(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_2286A0A9C();

  return sub_22869058C(a1, v5);
}

unint64_t sub_2286904D4(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_2286A0CAC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_22869058C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_228696230(0, &qword_281057DB0, off_2785F8AF8);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_2286A0AAC();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_228690660(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = *v1;
    v14 = sub_228690490(a1);
    if (v15)
    {
      v3 = v14;
      v16 = *v2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v2;
      v19 = *v2;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v3);
        sub_228690F08(v3, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_228691094();
      v8 = v19;
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = sub_2286A0BBC();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = sub_2286A0BAC();
  v8 = sub_2286907AC(v4, v7);

  v9 = sub_228690490(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_228690F08(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

uint64_t sub_2286907AC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D84EFF0, &qword_2286B3F58);
    v2 = sub_2286A0C1C();
    v20 = v2;
    sub_2286A0B9C();
    v3 = sub_2286A0BCC();
    if (v3)
    {
      v4 = v3;
      sub_228696230(0, &qword_281057DB0, off_2785F8AF8);
      v5 = v4;
      do
      {
        v18 = v5;
        swift_dynamicCast();
        sub_228696230(0, &qword_27D84EFA0, off_2785F8908);
        swift_dynamicCast();
        v13 = *(v2 + 16);
        if (*(v2 + 24) <= v13)
        {
          sub_2286909F8(v13 + 1, 1);
        }

        v2 = v20;
        v6 = *(v20 + 40);
        result = sub_2286A0A9C();
        v8 = v20 + 64;
        v9 = -1 << *(v20 + 32);
        v10 = result & ~v9;
        v11 = v10 >> 6;
        if (((-1 << v10) & ~*(v20 + 64 + 8 * (v10 >> 6))) != 0)
        {
          v12 = __clz(__rbit64((-1 << v10) & ~*(v20 + 64 + 8 * (v10 >> 6)))) | v10 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v14 = 0;
          v15 = (63 - v9) >> 6;
          do
          {
            if (++v11 == v15 && (v14 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v16 = v11 == v15;
            if (v11 == v15)
            {
              v11 = 0;
            }

            v14 |= v16;
            v17 = *(v8 + 8 * v11);
          }

          while (v17 == -1);
          v12 = __clz(__rbit64(~v17)) + (v11 << 6);
        }

        *(v8 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
        *(*(v20 + 48) + 8 * v12) = v19;
        *(*(v20 + 56) + 8 * v12) = v18;
        ++*(v20 + 16);
        v5 = sub_2286A0BCC();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

uint64_t sub_2286909F8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D84EFF0, &qword_2286B3F58);
  result = sub_2286A0C0C();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
        v24 = v22;
      }

      v25 = *(v8 + 40);
      result = sub_2286A0A9C();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_228690C60(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D84EFE8, &qword_2286B3F50);
  v38 = a2;
  result = sub_2286A0C0C();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_2286A0CEC();
      sub_2286A099C();
      result = sub_2286A0D1C();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

void sub_228690F08(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2286A0ACC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = sub_2286A0A9C();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * v3);
          v20 = (v18 + 8 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

id sub_228691094()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D84EFF0, &qword_2286B3F58);
  v2 = *v0;
  v3 = sub_2286A0BFC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_2286911F4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D84EFE8, &qword_2286B3F50);
  v2 = *v0;
  v3 = sub_2286A0BFC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_228691364(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_2286935A4(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_22869144C(v6);
  return sub_2286A0B5C();
}

void sub_2286913E0(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2286935B8(v2);
  }

  v3 = v2[2];
  v4[0] = (v2 + 4);
  v4[1] = v3;
  sub_22869155C(v4);
  *a1 = v2;
}

uint64_t sub_22869144C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2286A0C8C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D84EF00, &qword_2286B3ED8);
        v6 = sub_2286A0A2C();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_2286919BC(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_228691664(0, v2, 1, a1);
  }

  return result;
}

void sub_22869155C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_2286A0C8C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D84EF68, &qword_2286B3F08);
        v5 = sub_2286A0A2C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = (v5 + 32);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_228692244(v7, v8, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_22869188C(0, v2, 1, a1);
  }
}

uint64_t sub_228691664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v35 = sub_2286A089C();
  v8 = *(*(v35 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v14 = &v29 - v13;
  v30 = a2;
  if (a3 != a2)
  {
    v15 = (v12 + 8);
    v36 = *a4;
    v16 = v36 + 8 * a3 - 8;
    v17 = a1 - a3;
LABEL_5:
    v32 = v16;
    v33 = a3;
    v18 = *(v36 + 8 * a3);
    v31 = v17;
    v19 = v17;
    while (1)
    {
      v20 = *v16;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v21 = [v18 startDate];
      sub_2286A087C();

      v22 = [v20 startDate];
      v23 = v34;
      sub_2286A087C();

      LOBYTE(v22) = sub_2286A085C();
      v24 = *v15;
      v25 = v23;
      v26 = v35;
      (*v15)(v25, v35);
      v24(v14, v26);
      swift_unknownObjectRelease();
      result = swift_unknownObjectRelease();
      if ((v22 & 1) == 0)
      {
LABEL_4:
        a3 = v33 + 1;
        v16 = v32 + 8;
        v17 = v31 - 1;
        if (v33 + 1 == v30)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      v27 = *v16;
      v18 = *(v16 + 8);
      *v16 = v18;
      *(v16 + 8) = v27;
      v16 -= 8;
      if (__CFADD__(v19++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_22869188C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v19 = *a4;
    v4 = *a4 + 16 * a3 - 16;
    v5 = a1 - a3;
LABEL_5:
    v17 = v4;
    v18 = a3;
    v6 = *(v19 + 16 * a3);
    v16 = v5;
    while (1)
    {
      v8 = *v4;
      v7 = *(v4 + 8);
      v9 = v6;

      v10 = v8;

      v11 = [v9 integerValue];
      v12 = [v10 integerValue];

      if (v11 >= v12)
      {
LABEL_4:
        a3 = v18 + 1;
        v4 = v17 + 16;
        v5 = v16 - 1;
        if (v18 + 1 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v19)
      {
        break;
      }

      v13 = *v4;
      v6 = *(v4 + 16);
      *v4 = v6;
      *(v4 + 16) = v13;
      v4 -= 16;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

uint64_t sub_2286919BC(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v112 = a1;
  v121 = sub_2286A089C();
  v9 = *(*(v121 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v121);
  v120 = &v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v119 = &v106 - v14;
  v15 = a3[1];
  if (v15 < 1)
  {
    v17 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v112;
    if (!*v112)
    {
      goto LABEL_127;
    }

    a4 = v17;
    v18 = a3;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_121:
      result = sub_2286931B4(a4);
    }

    v122 = result;
    v102 = *(result + 16);
    if (v102 >= 2)
    {
      while (*v18)
      {
        a4 = *(result + 16 * v102);
        v103 = result;
        v104 = *(result + 16 * (v102 - 1) + 40);
        sub_228692950((*v18 + 8 * a4), (*v18 + 8 * *(result + 16 * (v102 - 1) + 32)), (*v18 + 8 * v104), v5);
        if (v6)
        {
        }

        if (v104 < a4)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v103 = sub_2286931B4(v103);
        }

        if (v102 - 2 >= *(v103 + 2))
        {
          goto LABEL_115;
        }

        v105 = &v103[16 * v102];
        *v105 = a4;
        v105[1] = v104;
        v122 = v103;
        sub_228693128(v102 - 1);
        result = v122;
        v102 = *(v122 + 16);
        if (v102 <= 1)
        {
        }
      }

      goto LABEL_125;
    }
  }

  v16 = 0;
  v118 = (v13 + 8);
  v17 = MEMORY[0x277D84F90];
  v111 = a4;
  v107 = a3;
  while (1)
  {
    v18 = v16++;
    if (v16 < v15)
    {
      v116 = v15;
      v109 = v17;
      v110 = v6;
      v19 = *a3;
      v20 = *(*a3 + 8 * v16);
      v115 = 8 * v18;
      v21 = (v19 + 8 * v18);
      v22 = *v21;
      v5 = (v21 + 2);
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v23 = [v20 startDate];
      v24 = v119;
      sub_2286A087C();

      v25 = [v22 startDate];
      v26 = v120;
      sub_2286A087C();

      LODWORD(v117) = sub_2286A085C();
      v27 = *v118;
      v28 = v121;
      (*v118)(v26, v121);
      v27(v24, v28);
      swift_unknownObjectRelease();
      result = swift_unknownObjectRelease();
      v108 = v18;
      v29 = (v18 + 2);
      while (1)
      {
        v16 = v116;
        if (v116 == v29)
        {
          break;
        }

        v30 = *(v5 - 8);
        v31 = *v5;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v32 = [v31 startDate];
        v33 = v119;
        sub_2286A087C();

        v34 = [v30 startDate];
        v35 = v120;
        sub_2286A087C();

        LODWORD(v34) = sub_2286A085C() & 1;
        v36 = v35;
        v37 = v121;
        v27(v36, v121);
        v27(v33, v37);
        swift_unknownObjectRelease();
        result = swift_unknownObjectRelease();
        ++v29;
        v5 += 8;
        if ((v117 & 1) != v34)
        {
          v16 = (v29 - 1);
          break;
        }
      }

      v17 = v109;
      v6 = v110;
      a4 = v111;
      v18 = v108;
      v38 = v115;
      if (v117)
      {
        if (v16 < v108)
        {
          goto LABEL_118;
        }

        a3 = v107;
        if (v108 < v16)
        {
          v39 = 8 * v16 - 8;
          v40 = v16;
          v41 = v108;
          do
          {
            if (v41 != --v40)
            {
              v43 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v42 = *(v43 + v38);
              *(v43 + v38) = *(v43 + v39);
              *(v43 + v39) = v42;
            }

            v41 = (v41 + 1);
            v39 -= 8;
            v38 += 8;
          }

          while (v41 < v40);
        }
      }

      else
      {
        a3 = v107;
      }
    }

    v44 = a3[1];
    if (v16 < v44)
    {
      if (__OFSUB__(v16, v18))
      {
        goto LABEL_117;
      }

      if (v16 - v18 < a4)
      {
        v45 = (v18 + a4);
        if (__OFADD__(v18, a4))
        {
          goto LABEL_119;
        }

        if (v45 >= v44)
        {
          v45 = a3[1];
        }

        if (v45 < v18)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v16 != v45)
        {
          break;
        }
      }
    }

LABEL_36:
    if (v16 < v18)
    {
      goto LABEL_116;
    }

    v58 = v17;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v17 = v58;
    }

    else
    {
      result = sub_22868FB54(0, *(v58 + 16) + 1, 1, v58);
      v17 = result;
    }

    a4 = *(v17 + 16);
    v59 = *(v17 + 24);
    v5 = a4 + 1;
    if (a4 >= v59 >> 1)
    {
      result = sub_22868FB54((v59 > 1), a4 + 1, 1, v17);
      v17 = result;
    }

    *(v17 + 16) = v5;
    v60 = v17 + 16 * a4;
    *(v60 + 32) = v18;
    *(v60 + 40) = v16;
    v61 = *v112;
    if (!*v112)
    {
      goto LABEL_126;
    }

    if (a4)
    {
      while (1)
      {
        v62 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v63 = *(v17 + 32);
          v64 = *(v17 + 40);
          v73 = __OFSUB__(v64, v63);
          v65 = v64 - v63;
          v66 = v73;
LABEL_56:
          if (v66)
          {
            goto LABEL_105;
          }

          v79 = (v17 + 16 * v5);
          v81 = *v79;
          v80 = v79[1];
          v82 = __OFSUB__(v80, v81);
          v83 = v80 - v81;
          v84 = v82;
          if (v82)
          {
            goto LABEL_108;
          }

          v85 = (v17 + 32 + 16 * v62);
          v87 = *v85;
          v86 = v85[1];
          v73 = __OFSUB__(v86, v87);
          v88 = v86 - v87;
          if (v73)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v83, v88))
          {
            goto LABEL_112;
          }

          if (v83 + v88 >= v65)
          {
            if (v65 < v88)
            {
              v62 = v5 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v89 = (v17 + 16 * v5);
        v91 = *v89;
        v90 = v89[1];
        v73 = __OFSUB__(v90, v91);
        v83 = v90 - v91;
        v84 = v73;
LABEL_70:
        if (v84)
        {
          goto LABEL_107;
        }

        v92 = v17 + 16 * v62;
        v94 = *(v92 + 32);
        v93 = *(v92 + 40);
        v73 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v73)
        {
          goto LABEL_110;
        }

        if (v95 < v83)
        {
          goto LABEL_3;
        }

LABEL_77:
        a4 = v62 - 1;
        if (v62 - 1 >= v5)
        {
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v100 = v17;
        v5 = *(v17 + 32 + 16 * a4);
        v18 = *(v17 + 32 + 16 * v62 + 8);
        sub_228692950((*a3 + 8 * v5), (*a3 + 8 * *(v17 + 32 + 16 * v62)), (*a3 + 8 * v18), v61);
        if (v6)
        {
        }

        if (v18 < v5)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v100 = sub_2286931B4(v100);
        }

        if (a4 >= *(v100 + 2))
        {
          goto LABEL_102;
        }

        v101 = &v100[16 * a4];
        *(v101 + 4) = v5;
        *(v101 + 5) = v18;
        v122 = v100;
        a4 = &v122;
        result = sub_228693128(v62);
        v17 = v122;
        v5 = *(v122 + 16);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v67 = v17 + 32 + 16 * v5;
      v68 = *(v67 - 64);
      v69 = *(v67 - 56);
      v73 = __OFSUB__(v69, v68);
      v70 = v69 - v68;
      if (v73)
      {
        goto LABEL_103;
      }

      v72 = *(v67 - 48);
      v71 = *(v67 - 40);
      v73 = __OFSUB__(v71, v72);
      v65 = v71 - v72;
      v66 = v73;
      if (v73)
      {
        goto LABEL_104;
      }

      v74 = (v17 + 16 * v5);
      v76 = *v74;
      v75 = v74[1];
      v73 = __OFSUB__(v75, v76);
      v77 = v75 - v76;
      if (v73)
      {
        goto LABEL_106;
      }

      v73 = __OFADD__(v65, v77);
      v78 = v65 + v77;
      if (v73)
      {
        goto LABEL_109;
      }

      if (v78 >= v70)
      {
        v96 = (v17 + 32 + 16 * v62);
        v98 = *v96;
        v97 = v96[1];
        v73 = __OFSUB__(v97, v98);
        v99 = v97 - v98;
        if (v73)
        {
          goto LABEL_113;
        }

        if (v65 < v99)
        {
          v62 = v5 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v15 = a3[1];
    a4 = v111;
    if (v16 >= v15)
    {
      goto LABEL_88;
    }
  }

  v109 = v17;
  v110 = v6;
  v117 = *a3;
  v46 = v117 + 8 * v16 - 8;
  v108 = v18;
  a4 = v18 - v16;
  v113 = v45;
LABEL_29:
  v115 = v46;
  v116 = v16;
  v5 = *(v117 + 8 * v16);
  v114 = a4;
  v47 = v46;
  while (1)
  {
    v48 = *v47;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v49 = [v5 startDate];
    v50 = v119;
    sub_2286A087C();

    v51 = [v48 startDate];
    v52 = v120;
    sub_2286A087C();

    LOBYTE(v51) = sub_2286A085C();
    v53 = *v118;
    v54 = v52;
    v55 = v121;
    (*v118)(v54, v121);
    v53(v50, v55);
    swift_unknownObjectRelease();
    result = swift_unknownObjectRelease();
    if ((v51 & 1) == 0)
    {
LABEL_28:
      v16 = v116 + 1;
      v46 = v115 + 8;
      a4 = v114 - 1;
      if ((v116 + 1) != v113)
      {
        goto LABEL_29;
      }

      v16 = v113;
      v17 = v109;
      v6 = v110;
      a3 = v107;
      v18 = v108;
      goto LABEL_36;
    }

    if (!v117)
    {
      break;
    }

    v56 = *v47;
    v5 = *(v47 + 8);
    *v47 = v5;
    *(v47 + 8) = v56;
    v47 -= 8;
    if (__CFADD__(a4++, 1))
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
  return result;
}

void sub_228692244(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_89:
    v7 = v9;
    v9 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_121:
      v7 = sub_2286931B4(v7);
    }

    v98 = *(v7 + 16);
    if (v98 >= 2)
    {
      do
      {
        v99 = *v6;
        if (!*v6)
        {
          goto LABEL_125;
        }

        v6 = (v98 - 1);
        v100 = *(v7 + 16 * v98);
        v101 = *(v7 + 16 * (v98 - 1) + 40);
        sub_228692DE8((v99 + 16 * v100), (v99 + 16 * *(v7 + 16 * (v98 - 1) + 32)), (v99 + 16 * v101), v9);
        if (v5)
        {
          break;
        }

        if (v101 < v100)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_2286931B4(v7);
        }

        if (v98 - 2 >= *(v7 + 16))
        {
          goto LABEL_115;
        }

        v102 = (v7 + 16 * v98);
        *v102 = v100;
        v102[1] = v101;
        sub_228693128(v98 - 1);
        v98 = *(v7 + 16);
        v6 = a3;
      }

      while (v98 > 1);
    }

LABEL_99:

    return;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8;
    v11 = v8 + 1;
    v108 = v10;
    if (v11 >= v7)
    {
      v7 = v11;
    }

    else
    {
      v104 = v9;
      v105 = v5;
      v12 = *v6 + 16 * v11;
      v13 = *(v12 + 8);
      v14 = v10;
      v112 = 16 * v10;
      v15 = *v6 + 16 * v10;
      v16 = *v15;
      v17 = *(v15 + 8);
      v18 = *v12;

      v19 = v16;

      v118 = [v18 integerValue];
      v114 = [v19 integerValue];

      v20 = v14 + 2;
      v21 = v15 + 24;
      v116 = v7;
      while (v7 != v20)
      {
        v22 = *v21;
        v24 = v21 + 16;
        v23 = *(v21 + 16);
        v25 = *(v21 - 8);
        v26 = *(v21 + 8);

        v27 = v25;

        v28 = [v26 integerValue];
        v29 = [v27 integerValue];

        ++v20;
        v21 = v24;
        v7 = v116;
        if (v118 < v114 == v28 >= v29)
        {
          v7 = v20 - 1;
          break;
        }
      }

      v30 = v112;
      v9 = v104;
      v5 = v105;
      v10 = v108;
      v6 = a3;
      if (v118 < v114)
      {
        if (v7 < v108)
        {
          goto LABEL_118;
        }

        if (v108 < v7)
        {
          v31 = 16 * v7 - 16;
          v32 = v7;
          v33 = v108;
          do
          {
            if (v33 != --v32)
            {
              v35 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v34 = *(v35 + v30);
              *(v35 + v30) = *(v35 + v31);
              *(v35 + v31) = v34;
            }

            ++v33;
            v31 -= 16;
            v30 += 16;
          }

          while (v33 < v32);
        }
      }
    }

    v36 = v6[1];
    if (v7 < v36)
    {
      if (__OFSUB__(v7, v10))
      {
        goto LABEL_117;
      }

      if (v7 - v10 < a4)
      {
        if (__OFADD__(v10, a4))
        {
          goto LABEL_119;
        }

        if (v10 + a4 >= v36)
        {
          v37 = v6[1];
        }

        else
        {
          v37 = v10 + a4;
        }

        if (v37 < v10)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v7 != v37)
        {
          break;
        }
      }
    }

    v38 = v7;
    if (v7 < v10)
    {
      goto LABEL_116;
    }

LABEL_29:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_22868FB54(0, *(v9 + 2) + 1, 1, v9);
    }

    v40 = *(v9 + 2);
    v39 = *(v9 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      v9 = sub_22868FB54((v39 > 1), v40 + 1, 1, v9);
    }

    *(v9 + 2) = v41;
    v42 = &v9[16 * v40];
    *(v42 + 4) = v108;
    *(v42 + 5) = v38;
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_126;
    }

    v110 = v38;
    if (v40)
    {
      while (1)
      {
        v43 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v44 = *(v9 + 4);
          v45 = *(v9 + 5);
          v54 = __OFSUB__(v45, v44);
          v46 = v45 - v44;
          v47 = v54;
LABEL_48:
          if (v47)
          {
            goto LABEL_105;
          }

          v60 = &v9[16 * v41];
          v62 = *v60;
          v61 = *(v60 + 1);
          v63 = __OFSUB__(v61, v62);
          v64 = v61 - v62;
          v65 = v63;
          if (v63)
          {
            goto LABEL_108;
          }

          v66 = &v9[16 * v43 + 32];
          v68 = *v66;
          v67 = *(v66 + 1);
          v54 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v54)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v64, v69))
          {
            goto LABEL_112;
          }

          if (v64 + v69 >= v46)
          {
            if (v46 < v69)
            {
              v43 = v41 - 2;
            }

            goto LABEL_69;
          }

          goto LABEL_62;
        }

        v70 = &v9[16 * v41];
        v72 = *v70;
        v71 = *(v70 + 1);
        v54 = __OFSUB__(v71, v72);
        v64 = v71 - v72;
        v65 = v54;
LABEL_62:
        if (v65)
        {
          goto LABEL_107;
        }

        v73 = &v9[16 * v43];
        v75 = *(v73 + 4);
        v74 = *(v73 + 5);
        v54 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v54)
        {
          goto LABEL_110;
        }

        if (v76 < v64)
        {
          goto LABEL_3;
        }

LABEL_69:
        v81 = v43 - 1;
        if (v43 - 1 >= v41)
        {
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (!*v6)
        {
          goto LABEL_123;
        }

        v82 = *&v9[16 * v81 + 32];
        v83 = *&v9[16 * v43 + 40];
        sub_228692DE8((*v6 + 16 * v82), (*v6 + 16 * *&v9[16 * v43 + 32]), (*v6 + 16 * v83), v7);
        if (v5)
        {
          goto LABEL_99;
        }

        if (v83 < v82)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_2286931B4(v9);
        }

        if (v81 >= *(v9 + 2))
        {
          goto LABEL_102;
        }

        v84 = &v9[16 * v81];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        sub_228693128(v43);
        v41 = *(v9 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v48 = &v9[16 * v41 + 32];
      v49 = *(v48 - 64);
      v50 = *(v48 - 56);
      v54 = __OFSUB__(v50, v49);
      v51 = v50 - v49;
      if (v54)
      {
        goto LABEL_103;
      }

      v53 = *(v48 - 48);
      v52 = *(v48 - 40);
      v54 = __OFSUB__(v52, v53);
      v46 = v52 - v53;
      v47 = v54;
      if (v54)
      {
        goto LABEL_104;
      }

      v55 = &v9[16 * v41];
      v57 = *v55;
      v56 = *(v55 + 1);
      v54 = __OFSUB__(v56, v57);
      v58 = v56 - v57;
      if (v54)
      {
        goto LABEL_106;
      }

      v54 = __OFADD__(v46, v58);
      v59 = v46 + v58;
      if (v54)
      {
        goto LABEL_109;
      }

      if (v59 >= v51)
      {
        v77 = &v9[16 * v43 + 32];
        v79 = *v77;
        v78 = *(v77 + 1);
        v54 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v54)
        {
          goto LABEL_113;
        }

        if (v46 < v80)
        {
          v43 = v41 - 2;
        }

        goto LABEL_69;
      }

      goto LABEL_48;
    }

LABEL_3:
    v7 = v6[1];
    v8 = v110;
    if (v110 >= v7)
    {
      goto LABEL_89;
    }
  }

  v106 = v5;
  v85 = *v6;
  v86 = *v6 + 16 * v7 - 16;
  v87 = v10 - v7;
  v111 = v37;
LABEL_80:
  v115 = v86;
  v117 = v7;
  v88 = *(v85 + 16 * v7);
  v113 = v87;
  v89 = v87;
  while (1)
  {
    v91 = *v86;
    v90 = *(v86 + 8);
    v92 = v88;

    v93 = v91;

    v94 = [v92 integerValue];
    v95 = [v93 integerValue];

    if (v94 >= v95)
    {
LABEL_79:
      v7 = v117 + 1;
      v86 = v115 + 16;
      v38 = v111;
      v87 = v113 - 1;
      if (v117 + 1 != v111)
      {
        goto LABEL_80;
      }

      v5 = v106;
      v6 = a3;
      if (v111 < v108)
      {
        goto LABEL_116;
      }

      goto LABEL_29;
    }

    if (!v85)
    {
      break;
    }

    v96 = *v86;
    v88 = *(v86 + 16);
    *v86 = v88;
    *(v86 + 16) = v96;
    v86 -= 16;
    if (__CFADD__(v89++, 1))
    {
      goto LABEL_79;
    }
  }

  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
}

uint64_t sub_228692950(void **a1, void **a2, void **a3, void **a4)
{
  v52 = sub_2286A089C();
  v8 = *(v52 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v52);
  v51 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v50 = &v46 - v12;
  v13 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v13 = a2 - a1;
  }

  v14 = v13 >> 3;
  v15 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v15 = a3 - a2;
  }

  v16 = v15 >> 3;
  if (v14 >= v15 >> 3)
  {
    v53 = a1;
    a1 = a2;
    if (a4 != a2 || &a2[v16] <= a4)
    {
      memmove(a4, a2, 8 * v16);
    }

    v55 = &a4[v16];
    if (a3 - a2 >= 8 && a2 > v53)
    {
      v47 = a4;
      v48 = (v8 + 8);
LABEL_27:
      v46 = a1;
      v30 = a1 - 1;
      v31 = a3 - 1;
      v32 = v55;
      v49 = a1 - 1;
      do
      {
        v54 = v31;
        v33 = v31 + 1;
        v34 = *--v32;
        v35 = *v30;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v36 = [v34 startDate];
        v37 = v50;
        sub_2286A087C();

        v38 = [v35 startDate];
        v39 = v51;
        sub_2286A087C();

        LOBYTE(v38) = sub_2286A085C();
        v40 = *v48;
        v41 = v39;
        v42 = v52;
        (*v48)(v41, v52);
        v40(v37, v42);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v38)
        {
          a4 = v47;
          a3 = v54;
          v44 = v49;
          if (v33 != v46)
          {
            *v54 = *v49;
          }

          if (v55 <= a4 || (a1 = v44, v44 <= v53))
          {
            a1 = v44;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        a4 = v47;
        v43 = v54;
        if (v33 != v55)
        {
          *v54 = *v32;
        }

        v31 = v43 - 1;
        v55 = v32;
        v30 = v49;
      }

      while (v32 > a4);
      v55 = v32;
      a1 = v46;
    }
  }

  else
  {
    if (a4 != a1 || &a1[v14] <= a4)
    {
      memmove(a4, a1, 8 * v14);
    }

    v55 = &a4[v14];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v54 = a3;
      v17 = (v8 + 8);
      while (1)
      {
        v53 = a1;
        v18 = *a2;
        v19 = *a4;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v20 = [v18 startDate];
        v21 = v50;
        sub_2286A087C();

        v22 = [v19 startDate];
        v23 = v51;
        sub_2286A087C();

        LOBYTE(v22) = sub_2286A085C();
        v24 = *v17;
        v25 = v23;
        v26 = v52;
        (*v17)(v25, v52);
        v24(v21, v26);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if ((v22 & 1) == 0)
        {
          break;
        }

        v27 = a2;
        v28 = v53;
        v29 = v53 == a2++;
        if (!v29)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 = v28 + 1;
        if (a4 >= v55 || a2 >= v54)
        {
          goto LABEL_39;
        }
      }

      v27 = a4;
      v28 = v53;
      v29 = v53 == a4++;
      if (v29)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v28 = *v27;
      goto LABEL_18;
    }
  }

LABEL_39:
  if (a1 != a4 || a1 >= (a4 + ((v55 - a4 + (v55 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a1, a4, 8 * (v55 - a4));
  }

  return 1;
}

uint64_t sub_228692DE8(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a3;
  v5 = __src;
  v7 = __src - __dst;
  v8 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v8 = __src - __dst;
  }

  v9 = v8 >> 4;
  v10 = a3 - __src;
  v11 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v11 = a3 - __src;
  }

  v12 = v11 >> 4;
  if (v9 >= v11 >> 4)
  {
    if (a4 != __src || &__src[16 * v12] <= a4)
    {
      v24 = a4;
      memmove(a4, __src, 16 * v12);
      a4 = v24;
    }

    v43 = &a4[16 * v12];
    v13 = a4;
    if (v10 >= 16 && v5 > __dst)
    {
      v40 = a4;
LABEL_27:
      v42 = v5;
      v38 = v5 - 16;
      v25 = v4 - 16;
      v26 = v43;
      do
      {
        v27 = v25;
        v28 = v25 + 16;
        v29 = *(v26 - 2);
        v30 = *(v26 - 1);
        v26 -= 16;
        v32 = *(v42 - 2);
        v31 = *(v42 - 1);
        v33 = v29;

        v34 = v32;

        v35 = [v33 integerValue];
        v36 = [v34 integerValue];

        if (v35 < v36)
        {
          v4 = v27;
          if (v28 != v42)
          {
            *v27 = *v38;
          }

          v13 = v40;
          if (v43 <= v40 || (v5 = v38, v38 <= __dst))
          {
            v5 = v38;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        if (v28 != v43)
        {
          *v27 = *v26;
        }

        v25 = v27 - 16;
        v43 = v26;
        v13 = v40;
      }

      while (v26 > v40);
      v43 = v26;
      v5 = v42;
    }
  }

  else
  {
    v13 = a4;
    if (a4 != __dst || &__dst[16 * v9] <= a4)
    {
      memmove(a4, __dst, 16 * v9);
    }

    v43 = &v13[16 * v9];
    if (v7 < 16)
    {
      v5 = __dst;
    }

    else
    {
      v14 = __dst;
      if (v5 < v4)
      {
        v41 = v4;
        while (1)
        {
          v15 = *(v5 + 1);
          v16 = *v13;
          v17 = *(v13 + 1);
          v18 = *v5;

          v19 = v16;

          v20 = [v18 integerValue];
          v21 = [v19 integerValue];

          if (v20 >= v21)
          {
            break;
          }

          v22 = v5;
          v23 = v14 == v5;
          v5 += 16;
          if (!v23)
          {
            goto LABEL_17;
          }

LABEL_18:
          v14 += 16;
          if (v13 >= v43 || v5 >= v41)
          {
            goto LABEL_20;
          }
        }

        v22 = v13;
        v23 = v14 == v13;
        v13 += 16;
        if (v23)
        {
          goto LABEL_18;
        }

LABEL_17:
        *v14 = *v22;
        goto LABEL_18;
      }

LABEL_20:
      v5 = v14;
    }
  }

LABEL_39:
  if (v5 != v13 || v5 >= &v13[(v43 - v13 + (v43 - v13 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v5, v13, 16 * ((v43 - v13) / 16));
  }

  return 1;
}

uint64_t sub_228693128(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2286931B4(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void *sub_2286931C8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D84EF78, &qword_2286B3F18);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D84EF68, &qword_2286B3F08);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2286932FC(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_2286A0BAC();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = sub_22868FD64(v3, 0);
  sub_228693390((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_228693390(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2286A0BAC();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2286A0BAC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_228696104();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D84EFB0, &qword_2286B3F38);
            v9 = sub_22869351C(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D84EF00, &qword_2286B3ED8);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_22869351C(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x22AABB310](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
    v5 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v5;
    return sub_22869359C;
  }

  __break(1u);
  return result;
}

void *sub_2286935CC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v24 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (v12 << 9) | (8 * __clz(__rbit64(v9)));
      v18 = *(*(a4 + 48) + v17);
      v19 = *(*(a4 + 56) + v17);
      v9 &= v9 - 1;
      *v11 = v18;
      v11[1] = v19;
      if (v14 == v10)
      {
        v23 = v18;

        goto LABEL_23;
      }

      v11 += 2;
      v20 = v18;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v22 = v12 + 1;
    }

    else
    {
      v22 = v13;
    }

    v12 = v22 - 1;
    v10 = result;
LABEL_23:
    v7 = v24;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

unint64_t sub_228693744(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D84EFE8, &qword_2286B3F50);
    v3 = sub_2286A0C2C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_228690418(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_228693848(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D84EFF0, &qword_2286B3F58);
    v3 = sub_2286A0C2C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_228690490(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_228693940(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D84EF98, &qword_2286B3F28);
    v3 = sub_2286A0C2C();
    v4 = a1 + 32;

    while (1)
    {
      sub_228696168(v4, &v13, &qword_27D84EF20, &qword_2286B3EE8);
      v5 = v13;
      v6 = v14;
      result = sub_228690418(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_228696098(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_228693A70(void (*a1)(void, void, void), uint64_t a2)
{
  v238 = a1;
  v228 = 0;
  v4 = sub_2286A092C();
  *&v231 = *(v4 - 8);
  v5 = *(v231 + 64);
  v6 = (MEMORY[0x28223BE20])();
  v237 = (&v215 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v6);
  v241 = &v215 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  i = (&v215 - v11);
  v12 = MEMORY[0x28223BE20](v10);
  v225 = &v215 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v215 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D84EF60, &qword_2286B3F00);
  v17 = (*(*(v16 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v215 - v18;
  v20 = sub_2286A07EC();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v236 = &v215 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v224 = &v215 - v26;
  MEMORY[0x28223BE20](v25);
  v28 = &v215 - v27;
  v29 = OBJC_IVAR___RankingManager_featureNameToBehavior;
  v30 = MEMORY[0x277D84F90];
  v31 = sub_228693744(MEMORY[0x277D84F90]);
  v243 = v29;
  *(v29 + v2) = v31;
  v32 = v238;
  v33 = v30;
  v34 = OBJC_IVAR___RankingManager_featureToConditionEvaluator;
  v242 = OBJC_IVAR___RankingManager_featureToConditionEvaluator;
  *&v2[v34] = sub_228693848(v33);
  v232 = OBJC_IVAR___RankingManager_relevanceEngine;
  *&v2[OBJC_IVAR___RankingManager_relevanceEngine] = v32;
  v227 = a2;
  v35 = v20;
  v36 = v21;
  sub_228696168(a2, v19, &qword_27D84EF60, &qword_2286B3F00);
  v37 = (*(v21 + 48))(v19, 1, v35);
  v240 = v2;
  v234 = v4;
  if (v37 == 1)
  {
    v38 = v32;
    sub_2286961D0(v19, &qword_27D84EF60, &qword_2286B3F00);
    v39 = sub_22868A460();
    v40 = v231;
    v238 = *(v231 + 16);
    v238(v15, v39, v4);
    v41 = sub_2286A090C();
    v42 = sub_2286A0A7C();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_22859F000, v41, v42, "Could not load ranking properties from provided URL", v43, 2u);
      MEMORY[0x22AABCAC0](v43, -1, -1);
    }

    v44 = v15;
    v45 = v4;
    v237 = *(v40 + 8);
    v237(v44, v4);
    goto LABEL_5;
  }

  (*(v21 + 32))(v28, v19, v35);
  v48 = sub_2286A07BC();
  v49 = *(v48 + 48);
  v50 = *(v48 + 52);
  swift_allocObject();
  v51 = v32;
  v52 = sub_2286A07AC();
  v53 = v228;
  v54 = sub_2286A07FC();
  if (!v53)
  {
    v59 = v54;
    v60 = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D84EFD0, &qword_2286B3F48);
    sub_2286962C0();
    sub_2286A079C();
    v61 = v59;
    v45 = v234;
    v216 = v61;
    v217 = v60;
    v218 = v52;
    v222 = v28;
    v219 = v36;
    v220 = v35;
    v228 = 0;
    v221 = v246;
    v155 = v246[2];
    if (!v155)
    {
LABEL_70:

      v198 = sub_22868A460();
      v40 = v231;
      v199 = v225;
      v238 = *(v231 + 16);
      v238(v225, v198, v45);
      v200 = v219;
      v201 = v224;
      v202 = v222;
      v203 = v220;
      (*(v219 + 16))(v224, v222, v220);
      v204 = sub_2286A090C();
      v205 = sub_2286A0A5C();
      if (os_log_type_enabled(v204, v205))
      {
        v206 = swift_slowAlloc();
        v243 = swift_slowAlloc();
        v246 = v243;
        *v206 = 136315138;
        sub_228696278(&qword_27D84EFC8, MEMORY[0x277CC9260]);
        v207 = sub_2286A0C9C();
        v208 = v201;
        v210 = v209;
        v211 = *(v200 + 8);
        v211(v208, v203);
        v212 = sub_22868FE70(v207, v210, &v246);

        *(v206 + 4) = v212;
        _os_log_impl(&dword_22859F000, v204, v205, "Initialized ranking properties from URL: %s", v206, 0xCu);
        v213 = v243;
        __swift_destroy_boxed_opaque_existential_1(v243);
        MEMORY[0x22AABCAC0](v213, -1, -1);
        MEMORY[0x22AABCAC0](v206, -1, -1);
        sub_228696398(v216, v217);

        v237 = *(v40 + 8);
        v237(v225, v234);
        v211(v222, v203);
      }

      else
      {
        sub_228696398(v216, v217);

        v214 = *(v200 + 8);
        v214(v201, v203);
        v237 = *(v40 + 8);
        v237(v199, v45);
        v214(v202, v203);
      }

LABEL_5:
      v46 = v240;
      v47 = v241;
      goto LABEL_11;
    }

    v230 = type metadata accessor for RankingBehavior();
    v229 = (v231 + 16);
    v226 = (v231 + 8);
    v156 = v221 + 8;
    *&v157 = 136315138;
    v223 = v157;
    while (1)
    {
      v236 = v155;
      v158 = *(v156 - 4);
      v159 = *(v156 - 3);
      v161 = *(v156 - 2);
      v160 = *(v156 - 1);
      v235 = v156;
      v162 = *v156;
      v246 = v158;
      v247 = v159;
      v248 = v161;
      v249 = v160;
      v250 = v162;
      sub_228687E50();
      v163 = sub_228688D30();
      v238 = v164;
      v245[0] = v158;
      v245[1] = v159;
      v245[2] = v161;
      v245[3] = v160;
      v245[4] = v162;
      v233 = v162;
      sub_228687E50();
      v237 = RankingBehavior.__allocating_init(properties:)(v245);
      v165 = v240;
      v166 = v243;
      swift_beginAccess();
      v167 = *(v166 + v165);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v244 = *(v166 + v165);
      v169 = v244;
      *(v166 + v165) = 0x8000000000000000;
      v170 = v163;
      v171 = v163;
      v172 = v238;
      v174 = sub_228690418(v171, v238);
      v175 = v169[2];
      v176 = (v173 & 1) == 0;
      v177 = v175 + v176;
      if (__OFADD__(v175, v176))
      {
        goto LABEL_77;
      }

      v178 = v173;
      if (v169[3] >= v177)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v181 = v244;
          if ((v173 & 1) == 0)
          {
            goto LABEL_66;
          }
        }

        else
        {
          sub_2286911F4();
          v181 = v244;
          if ((v178 & 1) == 0)
          {
            goto LABEL_66;
          }
        }
      }

      else
      {
        sub_228690C60(v177, isUniquelyReferenced_nonNull_native);
        v179 = sub_228690418(v170, v172);
        if ((v178 & 1) != (v180 & 1))
        {
          goto LABEL_80;
        }

        v174 = v179;
        v181 = v244;
        if ((v178 & 1) == 0)
        {
LABEL_66:
          v181[(v174 >> 6) + 8] |= 1 << v174;
          v184 = (v181[6] + 16 * v174);
          *v184 = v170;
          v184[1] = v172;
          *(v181[7] + 8 * v174) = v237;
          v185 = v181[2];
          v143 = __OFADD__(v185, 1);
          v186 = v185 + 1;
          if (v143)
          {
            goto LABEL_78;
          }

          v181[2] = v186;
          goto LABEL_68;
        }
      }

      v182 = v181[7];
      v183 = *(v182 + 8 * v174);
      *(v182 + 8 * v174) = v237;

LABEL_68:
      *(v243 + v240) = v181;
      swift_endAccess();
      v187 = sub_22868A460();
      v188 = i;
      v189 = v234;
      (*v229)(i, v187, v234);
      v190 = v233;
      sub_228687E50();
      v191 = sub_2286A090C();
      v192 = sub_2286A0A6C();
      sub_2286963EC();
      if (os_log_type_enabled(v191, v192))
      {
        v193 = swift_slowAlloc();
        v194 = swift_slowAlloc();
        v245[0] = v194;
        *v193 = v223;
        v246 = v158;
        v247 = v159;
        v248 = v161;
        v249 = v160;
        v250 = v190;
        v195 = sub_2286A098C();
        v197 = sub_22868FE70(v195, v196, v245);

        *(v193 + 4) = v197;
        _os_log_impl(&dword_22859F000, v191, v192, "rankingProperties: %s", v193, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v194);
        MEMORY[0x22AABCAC0](v194, -1, -1);
        MEMORY[0x22AABCAC0](v193, -1, -1);

        (*v226)(i, v189);
      }

      else
      {
        sub_2286963EC();

        (*v226)(v188, v189);
      }

      v45 = v189;
      v156 = v235 + 5;
      v155 = v236 - 1;
      if (v236 == 1)
      {
        goto LABEL_70;
      }
    }
  }

  v56 = v28;

  v228 = 0;
  v57 = v234;
  v46 = v240;
  v47 = v241;
  v58 = v231;
  v62 = sub_22868A460();
  v238 = *(v58 + 16);
  v238(v237, v62, v57);
  v63 = v236;
  (*(v36 + 16))(v236, v56, v35);
  v64 = v53;
  v65 = sub_2286A090C();
  v66 = sub_2286A0A7C();

  if (!os_log_type_enabled(v65, v66))
  {

    v86 = *(v36 + 8);
    v86(v63, v35);
    v87 = v231;
    v88 = v237;
    v45 = v234;
    v237 = *(v231 + 8);
    v237(v88, v234);
    v86(v56, v35);
    v85 = v232;
    v40 = v87;
    goto LABEL_13;
  }

  v67 = swift_slowAlloc();
  i = swift_slowAlloc();
  v68 = swift_slowAlloc();
  v222 = v56;
  v69 = v68;
  v246 = v68;
  *v67 = 136315394;
  sub_228696278(&qword_27D84EFC8, MEMORY[0x277CC9260]);
  v70 = sub_2286A0C9C();
  v72 = v71;
  v243 = *(v36 + 8);
  v73 = v63;
  v74 = v35;
  (v243)(v73, v35);
  v75 = sub_22868FE70(v70, v72, &v246);

  *(v67 + 4) = v75;
  *(v67 + 12) = 2112;
  v76 = v53;
  v77 = _swift_stdlib_bridgeErrorToNSError();
  *(v67 + 14) = v77;
  v78 = i;
  *i = v77;
  _os_log_impl(&dword_22859F000, v65, v66, "Error initializing ranking properties from URL: %s error: %@", v67, 0x16u);
  sub_2286961D0(v78, &qword_27D84EF28, &qword_2286B3EF0);
  v79 = v78;
  v40 = v231;
  v80 = v240;
  v81 = v241;
  MEMORY[0x22AABCAC0](v79, -1, -1);
  __swift_destroy_boxed_opaque_existential_1(v69);
  v82 = v69;
  v47 = v81;
  MEMORY[0x22AABCAC0](v82, -1, -1);
  v83 = v67;
  v46 = v80;
  MEMORY[0x22AABCAC0](v83, -1, -1);

  v84 = v237;
  v45 = v234;
  v237 = *(v40 + 8);
  v237(v84, v234);
  (v243)(v222, v74);
LABEL_11:
  v85 = v232;
LABEL_13:
  v89 = [*&v46[v85] configuration];
  v90 = [v89 featureToConditionMap];

  v91 = sub_228696230(0, &qword_281057DB0, off_2785F8AF8);
  v92 = sub_228696230(0, qword_281057DB8, off_2785F8900);
  sub_228695F80(&unk_281057DA0, &qword_281057DB0, off_2785F8AF8);
  v230 = v91;
  v229 = v92;
  v93 = sub_2286A094C();

  if ((v93 & 0xC000000000000001) != 0)
  {
    v95 = sub_2286A0B9C();
    v233 = 0;
    v96 = 0;
    v97 = 0;
    v93 = v95 | 0x8000000000000000;
  }

  else
  {
    v98 = -1 << *(v93 + 32);
    v99 = *(v93 + 64);
    v233 = v93 + 64;
    v96 = ~v98;
    v100 = -v98;
    if (v100 < 64)
    {
      v101 = ~(-1 << v100);
    }

    else
    {
      v101 = -1;
    }

    v97 = (v101 & v99);
  }

  v102 = 0;
  v226 = v96;
  v232 = (v96 + 64) >> 6;
  v236 = (v40 + 16);
  v235 = (v40 + 8);
  *&v94 = 138412546;
  v231 = v94;
  v103 = v45;
  for (i = v93; ; v93 = i)
  {
    v105 = v46;
    if ((v93 & 0x8000000000000000) == 0)
    {
      break;
    }

    v115 = sub_2286A0BCC();
    if (!v115)
    {
      goto LABEL_52;
    }

    v117 = v116;
    v245[0] = v115;
    swift_dynamicCast();
    v113 = v246;
    v245[0] = v117;
    swift_dynamicCast();
    v114 = v246;
    v108 = v102;
    v109 = v97;
    if (!v113)
    {
LABEL_52:
      sub_228695FD0();
      v251.receiver = v105;
      v251.super_class = RankingManager;
      v153 = objc_msgSendSuper2(&v251, sel_init);
      sub_2286961D0(v227, &qword_27D84EF60, &qword_2286B3F00);
      return v153;
    }

LABEL_31:
    v243 = v109;
    v118 = sub_22868A460();
    v238(v47, v118, v103);
    v119 = v113;
    v120 = v114;
    v121 = sub_2286A090C();
    v122 = sub_2286A0A6C();

    if (os_log_type_enabled(v121, v122))
    {
      v123 = swift_slowAlloc();
      v124 = swift_slowAlloc();
      *v123 = v231;
      *(v123 + 4) = v119;
      *(v123 + 12) = 2112;
      *(v123 + 14) = v120;
      *v124 = v113;
      v124[1] = v114;
      v125 = v119;
      v126 = v120;
      _os_log_impl(&dword_22859F000, v121, v122, "featureToConditionEvaluator - featureName: %@, condition: %@", v123, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D84EF28, &qword_2286B3EF0);
      swift_arrayDestroy();
      v127 = v234;
      MEMORY[0x22AABCAC0](v124, -1, -1);
      v128 = v123;
      v103 = v127;
      v105 = v240;
      v47 = v241;
      MEMORY[0x22AABCAC0](v128, -1, -1);
    }

    v237(v47, v103);
    v129 = objc_allocWithZone(REConditionEvaluator);
    v130 = v119;
    v131 = [v129 initWithCondition_];
    v132 = v242;
    v46 = v105;
    swift_beginAccess();
    if (v131)
    {
      v133 = *&v105[v132];
      if ((v133 & 0xC000000000000001) != 0)
      {
        if (v133 < 0)
        {
          v134 = *&v105[v132];
        }

        else
        {
          v134 = v133 & 0xFFFFFFFFFFFFFF8;
        }

        v135 = sub_2286A0BAC();
        if (__OFADD__(v135, 1))
        {
          goto LABEL_75;
        }

        v136 = v103;
        *&v105[v132] = sub_2286907AC(v134, v135 + 1);
      }

      else
      {
        v136 = v103;
      }

      v137 = swift_isUniquelyReferenced_nonNull_native();
      v245[0] = *&v105[v132];
      v138 = v245[0];
      *&v105[v132] = 0x8000000000000000;
      v139 = sub_228690490(v130);
      v141 = *(v138 + 16);
      v142 = (v140 & 1) == 0;
      v143 = __OFADD__(v141, v142);
      v144 = v141 + v142;
      if (v143)
      {
        goto LABEL_74;
      }

      v145 = v140;
      if (*(v138 + 24) >= v144)
      {
        if ((v137 & 1) == 0)
        {
          v152 = v139;
          sub_228691094();
          v139 = v152;
        }
      }

      else
      {
        sub_2286909F8(v144, v137);
        v139 = sub_228690490(v130);
        if ((v145 & 1) != (v146 & 1))
        {
          goto LABEL_79;
        }
      }

      v46 = v105;
      v103 = v136;
      v147 = v245[0];
      v47 = v241;
      if (v145)
      {
        v148 = *(v245[0] + 56);
        v149 = *(v148 + 8 * v139);
        *(v148 + 8 * v139) = v131;
      }

      else
      {
        *(v245[0] + 8 * (v139 >> 6) + 64) |= 1 << v139;
        *(v147[6] + 8 * v139) = v130;
        *(v147[7] + 8 * v139) = v131;
        v150 = v147[2];
        v143 = __OFADD__(v150, 1);
        v151 = v150 + 1;
        if (v143)
        {
          goto LABEL_76;
        }

        v147[2] = v151;
      }

      *&v105[v242] = v147;
    }

    else
    {
      v104 = sub_228690660(v130);
    }

    swift_endAccess();

    v102 = v108;
    v97 = v243;
  }

  v106 = v102;
  v107 = v97;
  v108 = v102;
  if (v97)
  {
LABEL_27:
    v109 = ((v107 - 1) & v107);
    v110 = (v108 << 9) | (8 * __clz(__rbit64(v107)));
    v111 = *(*(v93 + 48) + v110);
    v112 = *(*(v93 + 56) + v110);
    v113 = v111;
    v114 = v112;
    if (!v113)
    {
      goto LABEL_52;
    }

    goto LABEL_31;
  }

  while (1)
  {
    v108 = v106 + 1;
    if (__OFADD__(v106, 1))
    {
      break;
    }

    if (v108 >= v232)
    {
      goto LABEL_52;
    }

    v107 = *(v233 + 8 * v108);
    ++v106;
    if (v107)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  sub_2286A0CDC();
  __break(1u);
LABEL_80:
  result = sub_2286A0CDC();
  __break(1u);
  return result;
}

uint64_t sub_228694F1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D84EF08, &unk_2286B3F70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_228694F8C(void *a1, uint64_t a2, char *a3, char *a4, float a5, double a6)
{
  v126 = a3;
  v127 = a4;
  v128 = a1;
  v129 = sub_2286A089C();
  v9 = *(v129 - 8);
  isa = v9[8].isa;
  v11 = MEMORY[0x28223BE20](v129);
  v13 = &v120 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v125 = &v120 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v120 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v120 - v19;
  v21 = sub_2286A092C();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v120 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v120 - v28;
  (*(*a2 + 120))(&v134, v27);
  v130 = v22;
  v131 = v21;
  if ((v134 & 0x8000000000000000) != 0)
  {
    v46 = v21;
    v47 = v134 & 0x7FFFFFFFFFFFFFFFLL;
    v48 = sub_22868A460();
    (*(v22 + 16))(v26, v48, v46);
    v49 = v9[2].isa;
    v50 = v125;
    v51 = v129;
    v49(v125, v126, v129);
    v49(v13, v127, v51);
    v52 = v26;
    v53 = v128;

    v54 = sub_2286A090C();
    v55 = sub_2286A0A5C();

    LODWORD(v128) = v55;
    v56 = os_log_type_enabled(v54, v55);
    v57 = v50;
    if (v56)
    {
      v58 = v47;
      v126 = v13;
      v127 = v52;
      v123 = v9;
      v59 = swift_slowAlloc();
      v124 = swift_slowAlloc();
      v133 = v124;
      *v59 = 136316930;
      v60 = (*(*a2 + 96))();
      v62 = sub_22868FE70(v60, v61, &v133);

      *(v59 + 4) = v62;
      *(v59 + 12) = 2080;
      v63 = [v53 applicationBundleIdentifier];
      if (v63)
      {
        v64 = v57;
        v65 = v63;
        v66 = sub_2286A097C();
        v68 = v67;

        v57 = v64;
      }

      else
      {
        v66 = 0xD00000000000001ELL;
        v68 = 0x80000002286BB9C0;
      }

      v97 = sub_22868FE70(v66, v68, &v133);

      *(v59 + 14) = v97;
      *(v59 + 22) = 2080;
      v98 = [v53 identifier];
      v99 = sub_2286A097C();
      v101 = v100;

      v102 = sub_22868FE70(v99, v101, &v133);

      *(v59 + 24) = v102;
      *(v59 + 32) = 2080;
      (*(*v58 + 88))(&v132, v103);
      sub_228695FF0();
      v104 = sub_2286A0C9C();
      v106 = v105;

      v107 = sub_22868FE70(v104, v106, &v133);

      *(v59 + 34) = v107;
      *(v59 + 42) = 2080;
      sub_228696278(&qword_27D84EEF8, MEMORY[0x277CC9578]);
      v108 = sub_2286A0C9C();
      v110 = v109;
      v111 = v57;
      v112 = v123[1].isa;
      (v112)(v111, v51);
      v113 = sub_22868FE70(v108, v110, &v133);

      *(v59 + 44) = v113;
      *(v59 + 52) = 2080;
      v114 = v126;
      v115 = sub_2286A0C9C();
      v117 = v116;
      (v112)(v114, v51);
      v118 = sub_22868FE70(v115, v117, &v133);

      *(v59 + 54) = v118;
      *(v59 + 62) = 2048;
      *(v59 + 64) = a6;
      *(v59 + 72) = 2048;
      *(v59 + 74) = a5;
      _os_log_impl(&dword_22859F000, v54, v128, "Feature: %s, Element: %s, Element ID: %s, Normal function params: %s, Created at: %s, Current date: %s, Relevant minutes: %f, Score: %f", v59, 0x52u);
      v119 = v124;
      swift_arrayDestroy();
      MEMORY[0x22AABCAC0](v119, -1, -1);
      MEMORY[0x22AABCAC0](v59, -1, -1);

      return (*(v130 + 8))(v127, v131);
    }

    else
    {

      v71 = v9[1].isa;
      v71(v13, v51);
      v71(v50, v51);
      return (*(v130 + 8))(v52, v131);
    }
  }

  else
  {
    v30 = v134;
    v31 = sub_22868A460();
    (*(v22 + 16))(v29, v31, v21);
    v32 = v129;
    v33 = v9[2].isa;
    v33(v20, v126, v129);
    v33(v18, v127, v32);
    v34 = v128;

    v35 = sub_2286A090C();
    LODWORD(v33) = sub_2286A0A5C();

    v127 = v34;

    LODWORD(v128) = v33;
    if (os_log_type_enabled(v35, v33))
    {
      v123 = v35;
      v124 = v20;
      v125 = v30;
      v126 = v29;
      v121 = v18;
      v36 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      v133 = v122;
      *v36 = 136316930;
      v37 = (*(*a2 + 96))();
      v39 = sub_22868FE70(v37, v38, &v133);

      *(v36 + 4) = v39;
      *(v36 + 12) = 2080;
      v40 = v127;
      v41 = [v127 applicationBundleIdentifier];
      if (v41)
      {
        v42 = v41;
        v43 = sub_2286A097C();
        v45 = v44;
      }

      else
      {
        v43 = 0xD00000000000001ELL;
        v45 = 0x80000002286BB9C0;
      }

      v72 = v9;
      v73 = sub_22868FE70(v43, v45, &v133);

      *(v36 + 14) = v73;
      *(v36 + 22) = 2080;
      v74 = [v40 identifier];
      v75 = sub_2286A097C();
      v77 = v76;

      v78 = sub_22868FE70(v75, v77, &v133);

      *(v36 + 24) = v78;
      *(v36 + 32) = 2080;
      (*(*v125 + 88))(&v132, v79);
      sub_228696044();
      v80 = sub_2286A0C9C();
      v82 = v81;

      v83 = sub_22868FE70(v80, v82, &v133);

      *(v36 + 34) = v83;
      *(v36 + 42) = 2080;
      sub_228696278(&qword_27D84EEF8, MEMORY[0x277CC9578]);
      v84 = v124;
      v85 = sub_2286A0C9C();
      v87 = v86;
      v88 = v72[1].isa;
      v88(v84, v32);
      v89 = sub_22868FE70(v85, v87, &v133);

      *(v36 + 44) = v89;
      *(v36 + 52) = 2080;
      v90 = v121;
      v91 = sub_2286A0C9C();
      v93 = v92;
      v88(v90, v32);
      v94 = sub_22868FE70(v91, v93, &v133);

      *(v36 + 54) = v94;
      *(v36 + 62) = 2048;
      *(v36 + 64) = a6;
      *(v36 + 72) = 2048;
      *(v36 + 74) = a5;
      v95 = v123;
      _os_log_impl(&dword_22859F000, v123, v128, "Feature: %s, Element: %s, Element ID: %s, Linear function params: %s, Created at: %s, Current date: %s, Relevant minutes: %f, Score: %f", v36, 0x52u);
      v96 = v122;
      swift_arrayDestroy();
      MEMORY[0x22AABCAC0](v96, -1, -1);
      MEMORY[0x22AABCAC0](v36, -1, -1);

      return (*(v130 + 8))(v126, v131);
    }

    else
    {

      v69 = v9[1].isa;
      v69(v18, v32);
      v69(v20, v32);
      return (*(v130 + 8))(v29, v131);
    }
  }
}

uint64_t sub_228695A60(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5, double a6)
{
  v68 = a3;
  v69 = a4;
  v10 = sub_2286A089C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v62 - v16;
  v18 = sub_2286A092C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_22868A460();
  (*(v19 + 16))(v22, v23, v18);
  v70 = v11;
  v24 = *(v11 + 16);
  v24(v17, v68, v10);
  v24(v15, v69, v10);
  v25 = a1;

  v26 = sub_2286A090C();
  v27 = sub_2286A0A8C();
  v69 = a2;

  v28 = v25;

  if (os_log_type_enabled(v26, v27))
  {
    v64 = v27;
    v62 = v10;
    v65 = v17;
    v66 = v26;
    v29 = v70;
    v67 = v22;
    v68 = v18;
    v30 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v71 = v63;
    *v30 = 136316674;
    v31 = [v28 identifier];
    v32 = sub_2286A097C();
    v34 = v33;

    v35 = sub_22868FE70(v32, v34, &v71);

    *(v30 + 4) = v35;
    *(v30 + 12) = 2080;
    v36 = [v28 applicationBundleIdentifier];
    if (v36)
    {
      v37 = v36;
      v38 = sub_2286A097C();
      v40 = v39;
    }

    else
    {
      v40 = 0x80000002286BB9C0;
      v38 = 0xD00000000000001ELL;
    }

    v43 = v19;
    v44 = v15;
    v45 = v65;
    v46 = v62;
    v47 = sub_22868FE70(v38, v40, &v71);

    *(v30 + 14) = v47;
    *(v30 + 22) = 2080;
    v48 = MEMORY[0x22AABB210](v69, MEMORY[0x277D837D0]);
    v50 = sub_22868FE70(v48, v49, &v71);

    *(v30 + 24) = v50;
    *(v30 + 32) = 2080;
    sub_228696278(&qword_27D84EEF8, MEMORY[0x277CC9578]);
    v51 = sub_2286A0C9C();
    v53 = v52;
    v54 = *(v29 + 8);
    v54(v45, v46);
    v55 = sub_22868FE70(v51, v53, &v71);

    *(v30 + 34) = v55;
    *(v30 + 42) = 2080;
    v56 = sub_2286A0C9C();
    v58 = v57;
    v54(v44, v46);
    v59 = sub_22868FE70(v56, v58, &v71);

    *(v30 + 44) = v59;
    *(v30 + 52) = 2048;
    *(v30 + 54) = a6;
    *(v30 + 62) = 2048;
    *(v30 + 64) = a5;
    v60 = v66;
    _os_log_impl(&dword_22859F000, v66, v64, "Element ID: %s, Element: %s, Selected features: %s, Created at: %s, Current date: %s, Relevant minutes: %f, Final score: %f", v30, 0x48u);
    v61 = v63;
    swift_arrayDestroy();
    MEMORY[0x22AABCAC0](v61, -1, -1);
    MEMORY[0x22AABCAC0](v30, -1, -1);

    return (*(v43 + 8))(v67, v68);
  }

  else
  {

    v41 = *(v70 + 8);
    v41(v15, v10);
    v41(v17, v10);
    return (*(v19 + 8))(v22, v18);
  }
}

uint64_t sub_228695F80(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_228696230(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_228695FF0()
{
  result = qword_27D84EF88;
  if (!qword_27D84EF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D84EF88);
  }

  return result;
}

unint64_t sub_228696044()
{
  result = qword_27D84EF90;
  if (!qword_27D84EF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D84EF90);
  }

  return result;
}

_OWORD *sub_228696098(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2286960A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_228696104()
{
  result = qword_27D84EFB8;
  if (!qword_27D84EFB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D84EFB0, &qword_2286B3F38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D84EFB8);
  }

  return result;
}

uint64_t sub_228696168(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2286961D0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_228696230(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_228696278(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2286962C0()
{
  result = qword_27D84EFD8;
  if (!qword_27D84EFD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D84EFD0, &qword_2286B3F48);
    sub_228696344();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D84EFD8);
  }

  return result;
}

unint64_t sub_228696344()
{
  result = qword_27D84EFE0;
  if (!qword_27D84EFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D84EFE0);
  }

  return result;
}

uint64_t sub_228696398(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_22869640C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D84EF08, &unk_2286B3F70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_228696494(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D84EF08, &unk_2286B3F70);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_228696558(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D84EF08, &unk_2286B3F70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v9 - v6;
  sub_22869640C(a1, &v9 - v6);
  return (*((*MEMORY[0x277D85000] & **a2) + 0x68))(v7);
}

id sub_228696688(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D84EF08, &unk_2286B3F70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v16 - v7;
  v9 = *a3;
  swift_beginAccess();
  sub_22869640C(a1 + v9, v8);
  v10 = sub_2286A089C();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v8, 1, v10);
  v13 = 0;
  if (v12 != 1)
  {
    v14 = sub_2286A083C();
    (*(v11 + 8))(v8, v10);
    v13 = v14;
  }

  return v13;
}

uint64_t sub_2286967D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return sub_22869640C(v2 + v4, a2);
}

void sub_228696830(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D84EF08, &unk_2286B3F70);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v15 - v9;
  if (a3)
  {
    sub_2286A087C();
    v11 = sub_2286A089C();
    (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  }

  else
  {
    v12 = sub_2286A089C();
    (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  }

  v13 = *a4;
  swift_beginAccess();
  v14 = a1;
  sub_228696494(v10, a1 + v13);
  swift_endAccess();
}

uint64_t sub_22869697C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  sub_228696494(a1, v2 + v4);
  return swift_endAccess();
}

uint64_t sub_228696A2C(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D84EF08, &unk_2286B3F70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v9 - v6;
  sub_22869640C(a1, &v9 - v6);
  return (*((*MEMORY[0x277D85000] & **a2) + 0x80))(v7);
}

id sub_228696B50(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = objc_allocWithZone(v3);
  v7 = OBJC_IVAR____TtC15RelevanceEngine20RESleepScheduleEntry_wakeupTime;
  v8 = sub_2286A089C();
  v9 = *(*(v8 - 8) + 56);
  v9(&v6[v7], 1, 1, v8);
  v10 = OBJC_IVAR____TtC15RelevanceEngine20RESleepScheduleEntry_bedtime;
  v9(&v6[OBJC_IVAR____TtC15RelevanceEngine20RESleepScheduleEntry_bedtime], 1, 1, v8);
  swift_beginAccess();
  sub_228696C98(a1, &v6[v7]);
  swift_endAccess();
  swift_beginAccess();
  sub_228696C98(a2, &v6[v10]);
  swift_endAccess();
  v13.receiver = v6;
  v13.super_class = v3;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  sub_228696D08(a2);
  sub_228696D08(a1);
  return v11;
}

uint64_t sub_228696C98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D84EF08, &unk_2286B3F70);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_228696D08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D84EF08, &unk_2286B3F70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for RESleepScheduleEntry()
{
  result = qword_27D850928;
  if (!qword_27D850928)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id RESleepScheduleEntry.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RESleepScheduleEntry.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RESleepScheduleEntry();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_228697294(uint64_t a1)
{
  v2 = sub_2286A08DC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D84F088, &unk_2286B3FC0);
    v10 = sub_2286A0ADC();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_2286993D0(&qword_27D84F090, MEMORY[0x277CC99D0]);
      v18 = sub_2286A095C();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_2286993D0(&qword_27D84F098, MEMORY[0x277CC99D0]);
          v25 = sub_2286A096C();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

void sub_2286975B4(char *a1, void *a2)
{
  v147 = a2;
  v144 = a1;
  v143 = sub_2286A092C();
  v138 = *(v143 - 8);
  v2 = *(v138 + 64);
  v3 = MEMORY[0x28223BE20](v143);
  v131 = &v112 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v132 = &v112 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D84F068, &qword_2286B3FB0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v125 = &v112 - v8;
  v9 = sub_2286A08DC();
  v10 = *(v9 - 8);
  v11 = v10;
  v12 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v142 = &v112 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_2286A078C();
  v117 = *(v133 - 8);
  v14 = *(v117 + 64);
  v15 = MEMORY[0x28223BE20](v133);
  v146 = &v112 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v124 = &v112 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v129 = &v112 - v20;
  MEMORY[0x28223BE20](v19);
  v145 = &v112 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D84EF08, &unk_2286B3F70);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v115 = &v112 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v126 = &v112 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v112 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v112 - v31;
  v33 = sub_2286A08AC();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  v37 = &v112 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_2286A08FC();
  v116 = *(v128 - 8);
  v38 = *(v116 + 64);
  MEMORY[0x28223BE20](v128);
  v40 = &v112 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v34 + 104))(v37, *MEMORY[0x277CC9830], v33);
  sub_2286A08BC();
  (*(v34 + 8))(v37, v33);
  v41 = sub_2286A089C();
  v42 = *(v41 - 8);
  v43 = *(v42 + 56);
  v44 = v42 + 56;
  v130 = v32;
  v43(v32, 1, 1, v41);
  v127 = v30;
  v114 = v41;
  v113 = v43;
  v112 = v44;
  v43(v30, 1, 1, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D84F070, &qword_2286B3FB8);
  v45 = *(v10 + 72);
  v46 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_2286B3F60;
  v48 = v47 + v46;
  v49 = *(v11 + 104);
  v49(v48, *MEMORY[0x277CC9988], v9);
  v49(v48 + v45, *MEMORY[0x277CC9998], v9);
  v49(v48 + 2 * v45, *MEMORY[0x277CC9968], v9);
  sub_228697294(v47);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_2286A08CC();

  v50 = v142;
  v49(v142, *MEMORY[0x277CC99B8], v9);
  v144 = v40;
  sub_2286A08EC();
  (*(v11 + 8))(v50, v9);
  HKSPDayForNSGregorianCalendarDay();
  v51 = HKSPWeekdaysFromDay();
  v52 = [v147 occurrences];
  sub_228699384();
  v53 = sub_2286A09FC();

  if (v53 >> 62)
  {
LABEL_25:
    v55 = sub_2286A0BAC();
  }

  else
  {
    v55 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v56 = v133;
  v57 = v129;
  if (v55)
  {
    if (v55 >= 1)
    {
      v58 = 0;
      v59 = v53 & 0xC000000000000001;
      v123 = (v117 + 16);
      v141 = (v116 + 56);
      v142 = (v116 + 16);
      v139 = (v138 + 16);
      v140 = (v117 + 8);
      v138 += 8;
      v60 = &_OBJC_LABEL_PROTOCOL___REBluetoothDeviceRelevanceProviderManagerProperties;
      *&v54 = 136315138;
      v118 = v54;
      v122 = v51;
      v121 = v53;
      v120 = v55;
      v119 = v53 & 0xC000000000000001;
      while (1)
      {
        if (v59)
        {
          v61 = MEMORY[0x22AABB310](v58, v53);
        }

        else
        {
          v61 = *(v53 + 8 * v58 + 32);
        }

        v62 = v61;
        if ((v51 & ~[v61 v60[70]]) != 0)
        {
        }

        else
        {
          v134 = v58;
          v147 = v62;
          v137 = *v123;
          (v137)(v57, v145, v56);
          v136 = *v142;
          v63 = v125;
          v64 = v128;
          v136(v125, v144, v128);
          v135 = *v141;
          v135(v63, 0, 1, v64);
          swift_beginAccess();
          sub_2286A077C();
          swift_endAccess();
          v65 = [v147 wakeUpComponents];
          v66 = v124;
          sub_2286A06FC();

          sub_2286A073C();
          v67 = *v140;
          (*v140)(v66, v56);
          swift_beginAccess();
          sub_2286A074C();
          swift_endAccess();
          v68 = [v147 wakeUpComponents];
          sub_2286A06FC();

          sub_2286A075C();
          v67(v66, v56);
          swift_beginAccess();
          sub_2286A076C();
          swift_endAccess();
          v53 = v146;
          (v137)(v146, v145, v56);
          v69 = v147;
          v136(v63, v144, v64);
          v135(v63, 0, 1, v64);
          swift_beginAccess();
          v70 = v143;
          sub_2286A077C();
          swift_endAccess();
          v71 = [v69 bedtimeComponents];
          sub_2286A06FC();

          sub_2286A073C();
          v67(v66, v56);
          swift_beginAccess();
          sub_2286A074C();
          swift_endAccess();
          v72 = [v69 bedtimeComponents];
          sub_2286A06FC();

          sub_2286A075C();
          v137 = v67;
          v67(v66, v56);
          swift_beginAccess();
          sub_2286A076C();
          swift_endAccess();
          swift_beginAccess();
          v73 = sub_2286A070C();
          v51 = v74;
          swift_endAccess();
          v75 = v132;
          if ((v51 & 1) == 0 && [v69 crossesDayBoundary])
          {
            if (__OFSUB__(v73, 1))
            {
              __break(1u);
              goto LABEL_25;
            }

            swift_beginAccess();
            sub_2286A071C();
            swift_endAccess();
          }

          v76 = sub_22868A370();
          v77 = *v139;
          (*v139)(v75, v76, v70);
          v78 = sub_2286A090C();
          v79 = sub_2286A0A8C();
          if (os_log_type_enabled(v78, v79))
          {
            v80 = swift_slowAlloc();
            v81 = swift_slowAlloc();
            v149 = v81;
            *v80 = v118;
            sub_2286993D0(&qword_27D84F080, MEMORY[0x277CC8990]);
            v82 = sub_2286A0C9C();
            v84 = sub_22868FE70(v82, v83, &v149);

            *(v80 + 4) = v84;
            v70 = v143;
            _os_log_impl(&dword_22859F000, v78, v79, "The bedtime(startDate) is %s", v80, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v81);
            MEMORY[0x22AABCAC0](v81, -1, -1);
            MEMORY[0x22AABCAC0](v80, -1, -1);

            v85 = *v138;
            (*v138)(v132, v70);
          }

          else
          {

            v85 = *v138;
            (*v138)(v75, v70);
          }

          v86 = v131;
          v57 = v129;
          v58 = v134;
          v77(v131, v76, v70);
          v87 = sub_2286A090C();
          v88 = sub_2286A0A8C();
          if (os_log_type_enabled(v87, v88))
          {
            v89 = swift_slowAlloc();
            v90 = swift_slowAlloc();
            v149 = v90;
            *v89 = v118;
            sub_2286993D0(&qword_27D84F080, MEMORY[0x277CC8990]);
            v91 = v133;
            v92 = sub_2286A0C9C();
            v94 = sub_22868FE70(v92, v93, &v149);

            *(v89 + 4) = v94;
            v95 = v143;
            _os_log_impl(&dword_22859F000, v87, v88, "The wakeup(endDate) time is %s", v89, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v90);
            MEMORY[0x22AABCAC0](v90, -1, -1);
            MEMORY[0x22AABCAC0](v89, -1, -1);

            v85(v131, v95);
            v56 = v91;
          }

          else
          {

            v85(v86, v70);
            v56 = v133;
          }

          v59 = v119;
          v60 = &_OBJC_LABEL_PROTOCOL___REBluetoothDeviceRelevanceProviderManagerProperties;
          v96 = v147;
          v97 = v126;
          sub_2286A072C();
          v98 = v130;
          sub_228696D08(v130);
          sub_228694F1C(v97, v98);
          v99 = v146;
          sub_2286A072C();

          v100 = v127;
          sub_228696D08(v127);
          sub_228694F1C(v97, v100);
          v101 = v99;
          v102 = v137;
          v137(v101, v56);
          v102(v57, v56);
          v51 = v122;
          v53 = v121;
          v55 = v120;
        }

        if (v55 == ++v58)
        {
          goto LABEL_23;
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_23:

    v103 = v126;
    sub_22869640C(v130, v126);
    v104 = v127;
    v105 = v115;
    sub_22869640C(v127, v115);
    v106 = type metadata accessor for RESleepScheduleEntry();
    v107 = objc_allocWithZone(v106);
    v108 = OBJC_IVAR____TtC15RelevanceEngine20RESleepScheduleEntry_wakeupTime;
    v109 = v114;
    v110 = v113;
    v113(&v107[OBJC_IVAR____TtC15RelevanceEngine20RESleepScheduleEntry_wakeupTime], 1, 1, v114);
    v111 = OBJC_IVAR____TtC15RelevanceEngine20RESleepScheduleEntry_bedtime;
    v110(&v107[OBJC_IVAR____TtC15RelevanceEngine20RESleepScheduleEntry_bedtime], 1, 1, v109);
    swift_beginAccess();
    sub_228696C98(v103, &v107[v108]);
    swift_endAccess();
    swift_beginAccess();
    sub_228696C98(v105, &v107[v111]);
    swift_endAccess();
    v148.receiver = v107;
    v148.super_class = v106;
    objc_msgSendSuper2(&v148, sel_init);
    sub_228696D08(v105);
    sub_228696D08(v103);
    (*(v117 + 8))(v145, v133);
    sub_228696D08(v104);
    sub_228696D08(v130);
    (*(v116 + 8))(v144, v128);
  }
}

id _s15RelevanceEngine20RESleepScheduleEntryC05sleepE8ForDates7current4next8scheduleAC10Foundation4DateV_AJSo09HKSPSleepD0CtFZ_0(char *a1, char *a2, void *a3)
{
  v112 = a3;
  v96 = a2;
  v99 = a1;
  v3 = sub_2286A089C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v95 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v108 = &v89 - v9;
  MEMORY[0x28223BE20](v8);
  v100 = &v89 - v10;
  v11 = sub_2286A092C();
  v105 = *(v11 - 8);
  v106 = v11;
  v12 = v105[8];
  v13 = MEMORY[0x28223BE20](v11);
  v102 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v94 = &v89 - v16;
  MEMORY[0x28223BE20](v15);
  v104 = &v89 - v17;
  v18 = sub_2286A08AC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_2286A08FC();
  v110 = *(v23 - 8);
  v111 = v23;
  v24 = *(v110 + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v89 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D84EF08, &unk_2286B3F70);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v97 = &v89 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v89 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v101 = &v89 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v107 = &v89 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v40 = &v89 - v39;
  MEMORY[0x28223BE20](v38);
  v42 = &v89 - v41;
  v98 = v4;
  v43 = *(v4 + 56);
  v43(&v89 - v41, 1, 1, v3);
  v103 = v3;
  v43(v40, 1, 1, v3);
  (*(v19 + 104))(v22, *MEMORY[0x277CC9830], v18);
  v109 = v26;
  sub_2286A08BC();
  (*(v19 + 8))(v22, v18);
  if ([v112 isEnabled])
  {
    v93 = v42;
    v97 = v40;
    v44 = sub_22868A370();
    v45 = v105[2];
    v90 = v44;
    v92 = v105 + 2;
    v91 = v45;
    (v45)(v104);
    v46 = v98;
    v47 = v99;
    v48 = *(v98 + 16);
    v49 = v100;
    v50 = v103;
    v48(v100, v99, v103);
    v51 = sub_2286A090C();
    v52 = sub_2286A0A8C();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v89 = v48;
      v55 = v54;
      v114[0] = v54;
      *v53 = 136315138;
      sub_2286993D0(&qword_27D84EEF8, MEMORY[0x277CC9578]);
      v56 = sub_2286A0C9C();
      v57 = v49;
      v58 = v50;
      v60 = v59;
      v100 = *(v46 + 8);
      (v100)(v57, v58);
      v61 = sub_22868FE70(v56, v60, v114);
      v50 = v58;

      *(v53 + 4) = v61;
      _os_log_impl(&dword_22859F000, v51, v52, "Obtaining the schedule for %s", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v55);
      v62 = v55;
      v48 = v89;
      MEMORY[0x22AABCAC0](v62, -1, -1);
      MEMORY[0x22AABCAC0](v53, -1, -1);
    }

    else
    {

      v100 = *(v46 + 8);
      (v100)(v49, v50);
    }

    v69 = v104;
    v70 = v106;
    v104 = v105[1];
    (v104)(v69, v106);
    v71 = v93;
    v48(v108, v47, v50);
    sub_2286975B4(v47, v112);
    v68 = v72;
    v73 = v107;
    (*((*MEMORY[0x277D85000] & *v72) + 0x60))();
    v74 = v73;
    v75 = v101;
    sub_22869640C(v74, v101);
    if ((*(v46 + 48))(v75, 1, v50) == 1)
    {
      sub_228696D08(v75);
      v42 = v71;
      v76 = v70;
    }

    else
    {
      v77 = v95;
      (*(v46 + 32))(v95, v75, v50);
      v76 = v70;
      if (sub_2286A085C())
      {
        v78 = v94;
        v91(v94, v90, v76);
        v79 = sub_2286A090C();
        v80 = sub_2286A0A8C();
        v42 = v71;
        if (os_log_type_enabled(v79, v80))
        {
          v81 = swift_slowAlloc();
          *v81 = 0;
          _os_log_impl(&dword_22859F000, v79, v80, "Gettng the bedtime for currentDate", v81, 2u);
          MEMORY[0x22AABCAC0](v81, -1, -1);
        }

        (v104)(v78, v76);
        v87 = v100;
        (v100)(v95, v50);
        sub_228696D08(v107);
        v87(v108, v50);
        goto LABEL_16;
      }

      (v100)(v77, v50);
      v42 = v71;
    }

    v91(v102, v90, v76);
    v82 = sub_2286A090C();
    v83 = sub_2286A0A8C();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      *v84 = 0;
      _os_log_impl(&dword_22859F000, v82, v83, "Now is after currentDate's wakeupTime. gettng the bedtime for nextOccurrence", v84, 2u);
      MEMORY[0x22AABCAC0](v84, -1, -1);
    }

    (v104)(v102, v76);
    sub_2286975B4(v96, v112);
    v86 = v85;

    sub_228696D08(v107);
    (v100)(v108, v50);
    v68 = v86;
LABEL_16:
    v40 = v97;
    goto LABEL_17;
  }

  sub_22869640C(v42, v33);
  v63 = v97;
  sub_22869640C(v40, v97);
  v112 = type metadata accessor for RESleepScheduleEntry();
  v64 = objc_allocWithZone(v112);
  v65 = OBJC_IVAR____TtC15RelevanceEngine20RESleepScheduleEntry_wakeupTime;
  v66 = v103;
  v43(&v64[OBJC_IVAR____TtC15RelevanceEngine20RESleepScheduleEntry_wakeupTime], 1, 1, v103);
  v67 = OBJC_IVAR____TtC15RelevanceEngine20RESleepScheduleEntry_bedtime;
  v43(&v64[OBJC_IVAR____TtC15RelevanceEngine20RESleepScheduleEntry_bedtime], 1, 1, v66);
  swift_beginAccess();
  sub_228696C98(v33, &v64[v65]);
  swift_endAccess();
  swift_beginAccess();
  sub_228696C98(v63, &v64[v67]);
  swift_endAccess();
  v113.receiver = v64;
  v113.super_class = v112;
  v68 = objc_msgSendSuper2(&v113, sel_init);
  sub_228696D08(v63);
  sub_228696D08(v33);
LABEL_17:
  (*(v110 + 8))(v109, v111);
  sub_228696D08(v40);
  sub_228696D08(v42);
  return v68;
}

void sub_22869914C()
{
  sub_22869932C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_22869932C()
{
  if (!qword_27D84F060)
  {
    sub_2286A089C();
    v0 = sub_2286A0ABC();
    if (!v1)
    {
      atomic_store(v0, &qword_27D84F060);
    }
  }
}

unint64_t sub_228699384()
{
  result = qword_27D84F078;
  if (!qword_27D84F078)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D84F078);
  }

  return result;
}

uint64_t sub_2286993D0(unint64_t *a1, void (*a2)(uint64_t))
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

void REStoreLogFileForTask_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_22859F000, log, OS_LOG_TYPE_ERROR, "Unable to store logs for task %@ %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

void __REProcessIsRelevanced_block_invoke_cold_1(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_22859F000, a2, OS_LOG_TYPE_ERROR, "Unable to get process identifier: %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void RERaiseInternalException_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [a1 UTF8String];
  OUTLINED_FUNCTION_6(&dword_22859F000, v1, v2, "Internal exception: %s", v3, v4, v5, v6, 2u);
  v7 = *MEMORY[0x277D85DE8];
}

void _REGenerateSimulatedCrash_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [a1 UTF8String];
  OUTLINED_FUNCTION_6(&dword_22859F000, v1, v2, "Simulated exception: %s", v3, v4, v5, v6, 2u);
  v7 = *MEMORY[0x277D85DE8];
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F78E8]();
}

{
  return MEMORY[0x2821F78F8]();
}

{
  return MEMORY[0x2821F7900]();
}

{
  return MEMORY[0x2821F7918]();
}

{
  return MEMORY[0x2821F7928]();
}

{
  return MEMORY[0x2821F7938]();
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new()
{
    ;
  }
}