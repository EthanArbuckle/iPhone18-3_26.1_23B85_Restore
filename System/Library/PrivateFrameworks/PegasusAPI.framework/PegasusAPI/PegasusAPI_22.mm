uint64_t sub_1B8ECE508(void *a1, void *a2)
{
  v227 = type metadata accessor for Tvpb_Parent(0);
  v5 = OUTLINED_FUNCTION_59_1(v227);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_21();
  v224 = v8;
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD850, &qword_1B9663FC0);
  OUTLINED_FUNCTION_59_1(v226);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v222 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD7C8, &qword_1B9663DB0);
  v15 = OUTLINED_FUNCTION_183(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_44_0();
  v225 = v18;
  MEMORY[0x1EEE9AC00](v19);
  v228 = &v222 - v20;
  v232 = type metadata accessor for Tvpb_CommonSense(0);
  v21 = OUTLINED_FUNCTION_59_1(v232);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_21();
  v229 = v24;
  v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD858, &qword_1B9663FC8);
  OUTLINED_FUNCTION_59_1(v231);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v27);
  v233 = &v222 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD7C0, &qword_1B9663DA8);
  v30 = OUTLINED_FUNCTION_183(v29);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_44_0();
  v230 = v33;
  MEMORY[0x1EEE9AC00](v34);
  v234 = &v222 - v35;
  v36 = type metadata accessor for Tvpb_ContentRating(0);
  v37 = OUTLINED_FUNCTION_59_1(v36);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_21();
  v235 = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD860, &unk_1B9663FD0);
  OUTLINED_FUNCTION_59_1(v41);
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_79();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD7B8, &qword_1B9663DA0);
  v46 = OUTLINED_FUNCTION_183(v45);
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_44_0();
  v236 = v49;
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v222 - v51;
  OUTLINED_FUNCTION_521();
  v54 = a1[2];
  v53 = a1[3];
  OUTLINED_FUNCTION_521();
  v55 = v54 == a2[2] && v53 == a2[3];
  if (!v55 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521();
  v56 = a1[4];
  v57 = a1[5];
  OUTLINED_FUNCTION_521();
  v58 = v56 == a2[4] && v57 == a2[5];
  if (!v58 && (OUTLINED_FUNCTION_150_1() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521();
  v59 = a1[6];
  v60 = a1[7];
  OUTLINED_FUNCTION_521();
  v61 = v59 == a2[6] && v60 == a2[7];
  if (!v61 && (OUTLINED_FUNCTION_150_1() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521();
  v62 = a1[8];
  v63 = a1[9];
  OUTLINED_FUNCTION_521();
  v64 = v62 == a2[8] && v63 == a2[9];
  if (!v64 && (OUTLINED_FUNCTION_150_1() & 1) == 0)
  {
    return 0;
  }

  v222 = v13;
  v223 = a2;
  v65 = a1;
  OUTLINED_FUNCTION_521();
  v66 = v223;
  sub_1B8D92024();
  OUTLINED_FUNCTION_521();
  v67 = *(v41 + 48);
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v2);
  if (v55)
  {

    sub_1B8D9207C(v52, &qword_1EBABD7B8, &qword_1B9663DA0);
    OUTLINED_FUNCTION_37_0(v2 + v67);
    if (v55)
    {
      sub_1B8D9207C(v2, &qword_1EBABD7B8, &qword_1B9663DA0);
      goto LABEL_43;
    }

    goto LABEL_29;
  }

  v68 = v236;
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v2 + v67);
  if (v69)
  {

    sub_1B8D9207C(v52, &qword_1EBABD7B8, &qword_1B9663DA0);
    sub_1B8ECF904(v68, type metadata accessor for Tvpb_ContentRating);
LABEL_29:
    v70 = &qword_1EBABD860;
    v71 = &unk_1B9663FD0;
    v72 = v2;
LABEL_30:
    sub_1B8D9207C(v72, v70, v71);
    goto LABEL_100;
  }

  OUTLINED_FUNCTION_3_16();
  v73 = v235;
  sub_1B8ECF854();
  v74 = *v68 == *v73 && v68[1] == v73[1];
  if (!v74 && (sub_1B964C9F0() & 1) == 0 || (v68[2] == v73[2] ? (v75 = v68[3] == v73[3]) : (v75 = 0), !v75 && (sub_1B964C9F0() & 1) == 0))
  {

    sub_1B8ECF904(v73, type metadata accessor for Tvpb_ContentRating);
    sub_1B8D9207C(v52, &qword_1EBABD7B8, &qword_1B9663DA0);
    sub_1B8ECF904(v68, type metadata accessor for Tvpb_ContentRating);
    v72 = OUTLINED_FUNCTION_246();
    v71 = &qword_1B9663DA0;
    goto LABEL_30;
  }

  v76 = *(v36 + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_10_11();
  sub_1B8CD2180(v77, v78);

  OUTLINED_FUNCTION_33_4();
  v79 = sub_1B964C850();
  sub_1B8ECF904(v73, type metadata accessor for Tvpb_ContentRating);
  sub_1B8D9207C(v52, &qword_1EBABD7B8, &qword_1B9663DA0);
  sub_1B8ECF904(v68, type metadata accessor for Tvpb_ContentRating);
  v66 = v223;
  sub_1B8D9207C(v2, &qword_1EBABD7B8, &qword_1B9663DA0);
  if ((v79 & 1) == 0)
  {
    goto LABEL_100;
  }

LABEL_43:
  v80 = v65;
  v81 = (v65 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__thumbnail);
  OUTLINED_FUNCTION_26_6();
  v82 = *v81;
  v83 = v81[1];
  OUTLINED_FUNCTION_26_6();
  OUTLINED_FUNCTION_63();
  v85 = v55 && v83 == v84;
  if (!v85 && (OUTLINED_FUNCTION_120_0() & 1) == 0)
  {
    goto LABEL_100;
  }

  v86 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__genres;
  OUTLINED_FUNCTION_521();
  v87 = *(v65 + v86);
  v88 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__genres;
  OUTLINED_FUNCTION_521();
  if ((sub_1B8D6123C(v87, *(v66 + v88)) & 1) == 0)
  {
    goto LABEL_100;
  }

  v89 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__availabilities;
  OUTLINED_FUNCTION_521();
  v90 = *(v65 + v89);
  v91 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__availabilities;
  OUTLINED_FUNCTION_521();
  v92 = *(v66 + v91);

  OUTLINED_FUNCTION_543();
  sub_1B8D8AAA8();
  OUTLINED_FUNCTION_143_1();

  if ((v83 & 1) == 0)
  {
    goto LABEL_100;
  }

  v93 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__actors;
  OUTLINED_FUNCTION_521();
  v94 = *(v65 + v93);
  v95 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__actors;
  OUTLINED_FUNCTION_521();
  if ((sub_1B8D6123C(v94, *(v66 + v95)) & 1) == 0)
  {
    goto LABEL_100;
  }

  v96 = (v65 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__premieredNetwork);
  OUTLINED_FUNCTION_26_6();
  v97 = *v96;
  v98 = v96[1];
  OUTLINED_FUNCTION_26_6();
  OUTLINED_FUNCTION_63();
  v100 = v55 && v98 == v99;
  if (!v100 && (OUTLINED_FUNCTION_120_0() & 1) == 0)
  {
    goto LABEL_100;
  }

  v101 = (v65 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__premiereDate);
  OUTLINED_FUNCTION_26_6();
  v102 = *v101;
  v103 = v101[1];
  OUTLINED_FUNCTION_26_6();
  OUTLINED_FUNCTION_63();
  v105 = v55 && v103 == v104;
  if (!v105 && (OUTLINED_FUNCTION_120_0() & 1) == 0)
  {
    goto LABEL_100;
  }

  v106 = (v65 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__finaleDate);
  OUTLINED_FUNCTION_26_6();
  v107 = *v106;
  v108 = v106[1];
  OUTLINED_FUNCTION_26_6();
  OUTLINED_FUNCTION_63();
  v110 = v55 && v108 == v109;
  if (!v110 && (OUTLINED_FUNCTION_120_0() & 1) == 0)
  {
    goto LABEL_100;
  }

  OUTLINED_FUNCTION_521();
  v111 = v234;
  OUTLINED_FUNCTION_33_4();
  sub_1B8D92024();
  OUTLINED_FUNCTION_521();
  v112 = *(v231 + 48);
  v113 = v233;
  OUTLINED_FUNCTION_33_4();
  sub_1B8D92024();
  OUTLINED_FUNCTION_33_4();
  sub_1B8D92024();
  v114 = v232;
  if (__swift_getEnumTagSinglePayload(v113, 1, v232) == 1)
  {
    sub_1B8D9207C(v111, &qword_1EBABD7C0, &qword_1B9663DA8);
    OUTLINED_FUNCTION_37_0(v112 + v113);
    v115 = v80;
    if (!v55)
    {
      goto LABEL_74;
    }

    sub_1B8D9207C(v113, &qword_1EBABD7C0, &qword_1B9663DA8);
  }

  else
  {
    v116 = v230;
    sub_1B8D92024();
    OUTLINED_FUNCTION_37_0(v112 + v113);
    v115 = v80;
    if (v55)
    {
      sub_1B8D9207C(v234, &qword_1EBABD7C0, &qword_1B9663DA8);
      sub_1B8ECF904(v116, type metadata accessor for Tvpb_CommonSense);
LABEL_74:
      v117 = &qword_1EBABD858;
      v118 = &qword_1B9663FC8;
      v119 = v113;
LABEL_75:
      sub_1B8D9207C(v119, v117, v118);
LABEL_100:

      return 0;
    }

    v120 = v229;
    sub_1B8ECF854();
    v121 = *v116 == *v120 && v116[1] == v120[1];
    if (!v121 && (sub_1B964C9F0() & 1) == 0 || (v116[2] == v120[2] ? (v122 = v116[3] == v120[3]) : (v122 = 0), !v122 && (sub_1B964C9F0() & 1) == 0))
    {
      sub_1B8ECF904(v120, type metadata accessor for Tvpb_CommonSense);
      sub_1B8D9207C(v234, &qword_1EBABD7C0, &qword_1B9663DA8);
      sub_1B8ECF904(v116, type metadata accessor for Tvpb_CommonSense);
      v119 = v113;
      v117 = &qword_1EBABD7C0;
      v118 = &qword_1B9663DA8;
      goto LABEL_75;
    }

    v123 = *(v114 + 24);
    sub_1B964C2B0();
    OUTLINED_FUNCTION_10_11();
    sub_1B8CD2180(v124, v125);
    v126 = sub_1B964C850();
    sub_1B8ECF904(v120, type metadata accessor for Tvpb_CommonSense);
    v112 = &qword_1EBABD7C0;
    OUTLINED_FUNCTION_112_1();
    sub_1B8D9207C(v127, v128, v129);
    sub_1B8ECF904(v116, type metadata accessor for Tvpb_CommonSense);
    OUTLINED_FUNCTION_112_1();
    sub_1B8D9207C(v130, v131, v132);
    if ((v126 & 1) == 0)
    {
      goto LABEL_100;
    }
  }

  v133 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__appleOriginal;
  OUTLINED_FUNCTION_521();
  LODWORD(v133) = *(v115 + v133);
  v134 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__appleOriginal;
  OUTLINED_FUNCTION_521();
  if (v133 != *(v66 + v134))
  {
    goto LABEL_100;
  }

  v135 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__runtimeInMinutes;
  OUTLINED_FUNCTION_521();
  LODWORD(v135) = *(v115 + v135);
  v136 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__runtimeInMinutes;
  OUTLINED_FUNCTION_521();
  if (v135 != *(v66 + v136))
  {
    goto LABEL_100;
  }

  v137 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__children;
  OUTLINED_FUNCTION_521();
  v138 = *(v115 + v137);
  v139 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__children;
  OUTLINED_FUNCTION_521();
  v140 = *(v66 + v139);

  OUTLINED_FUNCTION_543();
  sub_1B8D8AC84();
  OUTLINED_FUNCTION_143_1();

  if ((v112 & 1) == 0)
  {
    goto LABEL_100;
  }

  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_33_4();
  sub_1B8D92024();
  v141 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__parent;
  OUTLINED_FUNCTION_521();
  v142 = *(v226 + 48);
  v143 = v222;
  OUTLINED_FUNCTION_33_4();
  sub_1B8D92024();
  OUTLINED_FUNCTION_33_4();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v143, 1, v227) == 1)
  {
    sub_1B8D9207C(v228, &qword_1EBABD7C8, &qword_1B9663DB0);
    OUTLINED_FUNCTION_37_0(v143 + v142);
    if (!v55)
    {
      goto LABEL_99;
    }

    sub_1B8D9207C(v143, &qword_1EBABD7C8, &qword_1B9663DB0);
  }

  else
  {
    v144 = v225;
    sub_1B8D92024();
    OUTLINED_FUNCTION_37_0(v143 + v142);
    if (v55)
    {
      sub_1B8D9207C(v228, &qword_1EBABD7C8, &qword_1B9663DB0);
      sub_1B8ECF904(v144, type metadata accessor for Tvpb_Parent);
LABEL_99:
      sub_1B8D9207C(v143, &qword_1EBABD850, &qword_1B9663FC0);
      goto LABEL_100;
    }

    v146 = v224;
    sub_1B8ECF854();
    v147 = static Tvpb_Parent.== infix(_:_:)(v144, v146);
    sub_1B8ECF904(v146, type metadata accessor for Tvpb_Parent);
    v141 = v143;
    OUTLINED_FUNCTION_112_1();
    sub_1B8D9207C(v148, v149, v150);
    sub_1B8ECF904(v144, type metadata accessor for Tvpb_Parent);
    OUTLINED_FUNCTION_112_1();
    sub_1B8D9207C(v151, v152, v153);
    if ((v147 & 1) == 0)
    {
      goto LABEL_100;
    }
  }

  v154 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__seasonNumber;
  OUTLINED_FUNCTION_521();
  LODWORD(v154) = *(v80 + v154);
  v155 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__seasonNumber;
  OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_521();
  if (v154 != *(v141 + v155))
  {
    goto LABEL_100;
  }

  v156 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__episodeNumber;
  OUTLINED_FUNCTION_521();
  LODWORD(v156) = *(v80 + v156);
  v157 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__episodeNumber;
  OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_521();
  if (v156 != *(v141 + v157))
  {
    goto LABEL_100;
  }

  v158 = v80 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__type;
  OUTLINED_FUNCTION_521();
  v159 = *v158;
  v160 = *(v158 + 8);
  v161 = v223 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__type;
  OUTLINED_FUNCTION_521();
  v162 = v161[8];
  if (!sub_1B8D92198(v159, v160, *v161))
  {
    goto LABEL_100;
  }

  v163 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__coverArt;
  OUTLINED_FUNCTION_521();
  v164 = *(v80 + v163);
  OUTLINED_FUNCTION_49_5();
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_79_3();

  OUTLINED_FUNCTION_543();
  sub_1B8D758CC();
  OUTLINED_FUNCTION_143_1();

  if ((v161 & 1) == 0)
  {
    goto LABEL_100;
  }

  v165 = (v80 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__episodeNumberFloat);
  OUTLINED_FUNCTION_521();
  v166 = *v165;
  v167 = (v223 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__episodeNumberFloat);
  OUTLINED_FUNCTION_521();
  if (v166 != *v167)
  {
    goto LABEL_100;
  }

  v168 = (v80 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__wikiID);
  OUTLINED_FUNCTION_26_6();
  v169 = *v168;
  v170 = v168[1];
  OUTLINED_FUNCTION_53_3(OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__wikiID);
  OUTLINED_FUNCTION_26_6();
  OUTLINED_FUNCTION_63();
  v172 = v55 && v170 == v171;
  if (!v172 && (OUTLINED_FUNCTION_120_0() & 1) == 0)
  {
    goto LABEL_100;
  }

  v173 = (v80 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__imdbID);
  OUTLINED_FUNCTION_26_6();
  v174 = *v173;
  v175 = v173[1];
  OUTLINED_FUNCTION_53_3(OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__imdbID);
  OUTLINED_FUNCTION_26_6();
  OUTLINED_FUNCTION_63();
  v177 = v55 && v175 == v176;
  if (!v177 && (OUTLINED_FUNCTION_120_0() & 1) == 0)
  {
    goto LABEL_100;
  }

  v178 = (v80 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__rottenTomatoesURL);
  OUTLINED_FUNCTION_26_6();
  v179 = *v178;
  v180 = v178[1];
  OUTLINED_FUNCTION_53_3(OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__rottenTomatoesURL);
  OUTLINED_FUNCTION_26_6();
  OUTLINED_FUNCTION_63();
  v182 = v55 && v180 == v181;
  if (!v182 && (OUTLINED_FUNCTION_120_0() & 1) == 0)
  {
    goto LABEL_100;
  }

  v183 = (v80 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__parentSeasonName);
  OUTLINED_FUNCTION_26_6();
  v184 = *v183;
  v185 = v183[1];
  OUTLINED_FUNCTION_53_3(OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__parentSeasonName);
  OUTLINED_FUNCTION_26_6();
  OUTLINED_FUNCTION_63();
  v187 = v55 && v185 == v186;
  if (!v187 && (OUTLINED_FUNCTION_120_0() & 1) == 0)
  {
    goto LABEL_100;
  }

  v188 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__localizedGenres;
  OUTLINED_FUNCTION_521();
  v189 = *(v80 + v188);
  OUTLINED_FUNCTION_49_5();
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_79_3();

  OUTLINED_FUNCTION_543();
  sub_1B8D8AEE0();
  OUTLINED_FUNCTION_143_1();

  if ((v185 & 1) == 0)
  {
    goto LABEL_100;
  }

  v190 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__characterNames[0];
  OUTLINED_FUNCTION_521();
  v191 = *(v190 + v80);
  v192 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__characterNames[0];
  OUTLINED_FUNCTION_49_5();
  OUTLINED_FUNCTION_521();
  if ((sub_1B8D6123C(v191, *(&qword_1ED9CC000 + v192)) & 1) == 0)
  {
    goto LABEL_100;
  }

  v193 = (v80 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__siribaseID);
  OUTLINED_FUNCTION_26_6();
  v194 = *v193;
  v195 = v193[1];
  OUTLINED_FUNCTION_53_3(OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__siribaseID);
  OUTLINED_FUNCTION_26_6();
  OUTLINED_FUNCTION_63();
  v197 = v55 && v195 == v196;
  if (!v197 && (OUTLINED_FUNCTION_120_0() & 1) == 0)
  {
    goto LABEL_100;
  }

  v198 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__directors[0];
  OUTLINED_FUNCTION_521();
  v199 = *(v198 + v80);
  v200 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__directors[0];
  OUTLINED_FUNCTION_49_5();
  OUTLINED_FUNCTION_521();
  if ((sub_1B8D6123C(v199, *(&qword_1ED9CC000 + v200)) & 1) == 0)
  {
    goto LABEL_100;
  }

  v201 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__trailersV2;
  OUTLINED_FUNCTION_521();
  v202 = *(v80 + v201);
  OUTLINED_FUNCTION_49_5();
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_79_3();

  OUTLINED_FUNCTION_543();
  sub_1B8D8A3CC();
  OUTLINED_FUNCTION_143_1();

  if ((v195 & 1) == 0)
  {
    goto LABEL_100;
  }

  v203 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__castAndCrew;
  OUTLINED_FUNCTION_521();
  v204 = *(v80 + v203);
  OUTLINED_FUNCTION_49_5();
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_79_3();

  OUTLINED_FUNCTION_543();
  sub_1B8D8A5D4();
  OUTLINED_FUNCTION_143_1();

  v205 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__boost;
  OUTLINED_FUNCTION_521();
  v206 = *(v80 + v205);
  OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_78_0();
  if (!v55)
  {
    goto LABEL_100;
  }

  v207 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__engTokens[0];
  OUTLINED_FUNCTION_521();
  v208 = *(v207 + v80);
  v209 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__engTokens[0];
  OUTLINED_FUNCTION_49_5();
  OUTLINED_FUNCTION_521();
  if ((sub_1B8D6123C(v208, *(&qword_1ED9CC000 + v209)) & 1) == 0)
  {
    goto LABEL_100;
  }

  v210 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__isAnnTier;
  OUTLINED_FUNCTION_521();
  v211 = *(v80 + v210);
  OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_78_0();
  if (!v55)
  {
    goto LABEL_100;
  }

  v212 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__isIm;
  OUTLINED_FUNCTION_521();
  v213 = *(v80 + v212);
  OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_78_0();
  if (!v55)
  {
    goto LABEL_100;
  }

  v214 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__isStereo;
  OUTLINED_FUNCTION_521();
  v215 = *(v80 + v214);
  OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_78_0();
  if (!v55)
  {
    goto LABEL_100;
  }

  v216 = (v80 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__kgInternalID);
  OUTLINED_FUNCTION_26_6();
  v217 = *v216;
  v218 = v216[1];
  OUTLINED_FUNCTION_53_3(OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__kgInternalID);
  OUTLINED_FUNCTION_26_6();
  OUTLINED_FUNCTION_63();
  if (v55 && v218 == v219)
  {
  }

  else
  {
    v221 = OUTLINED_FUNCTION_120_0();

    if ((v221 & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1B8ECF854()
{
  OUTLINED_FUNCTION_468();
  v2 = v1(0);
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_432();
  v6(v5);
  return v0;
}

uint64_t sub_1B8ECF8AC()
{
  OUTLINED_FUNCTION_468();
  v2 = v1(0);
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_432();
  v6(v5);
  return v0;
}

uint64_t sub_1B8ECF904(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_59_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t Snippetpb_TvShowSnippet.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Snippetpb_TvShowSnippet(0);
  sub_1B8CD2180(&qword_1EBABD7F0, type metadata accessor for Snippetpb_TvShowSnippet);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B8ECFA40(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2180(&qword_1EBABD808, type metadata accessor for Snippetpb_TvShowSnippet);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8ECFAC0(uint64_t a1)
{
  v2 = sub_1B8CD2180(&qword_1EBABAFE0, type metadata accessor for Snippetpb_TvShowSnippet);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8ECFB30()
{
  sub_1B8CD2180(&qword_1EBABAFE0, type metadata accessor for Snippetpb_TvShowSnippet);

  return sub_1B964C5D0();
}

uint64_t sub_1B8ECFCF8()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Snippetpb_TvShowSnippet._StorageClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B8ECFD84()
{
  sub_1B8ECFF68(319, &qword_1ED9CD868, type metadata accessor for Tvpb_ContentRating);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_1B8ECFF68(319, &qword_1ED9CD8B0, type metadata accessor for Tvpb_CommonSense);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_1B8ECFF68(319, &qword_1ED9CDAF0, type metadata accessor for Tvpb_Parent);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1B8ECFF68(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B964C930();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1B8ECFFBC()
{
  result = qword_1EBABD820;
  if (!qword_1EBABD820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABD820);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_29(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 64) = v2;
  result = type metadata accessor for Snippetpb_TvShowSnippet(0);
  *(a1 + 72) = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_1_26(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 56) = v2;
  result = type metadata accessor for Snippetpb_TvShowSnippet(0);
  v5 = *(result + 20);
  *(a1 + 64) = v5;
  v6 = *(v2 + v5);
  return result;
}

uint64_t OUTLINED_FUNCTION_2_17(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 72) = v2;
  result = type metadata accessor for Snippetpb_TvShowSnippet(0);
  v4 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_4_18()
{
  result = type metadata accessor for Snippetpb_TvShowSnippet(0);
  v1 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_12_11()
{
  v0 = type metadata accessor for Snippetpb_TvShowSnippet._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_17_9()
{
  v1 = *(v0 + *(type metadata accessor for Snippetpb_TvShowSnippet(0) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_29_10@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v2 + a1);
  v5 = *v1;

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_79_3()
{
  v3 = *(v1 + v0);
}

uint64_t Snippetpb_Visual3PSnippet.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = xmmword_1B9652FE0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0xE000000000000000;
  v1 = a1 + *(type metadata accessor for Snippetpb_Visual3PSnippet() + 36);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t type metadata accessor for Snippetpb_Visual3PSnippet()
{
  result = qword_1ED9CCBF8;
  if (!qword_1ED9CCBF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static Snippetpb_Visual3PSnippet.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  if ((MEMORY[0x1BFADC060](a1[4], a1[5], a2[4], a2[5]) & 1) == 0)
  {
    return 0;
  }

  v6 = a1[6] == a2[6] && a1[7] == a2[7];
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v7 = a1[8] == a2[8] && a1[9] == a2[9];
  if (!v7 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v8 = *(type metadata accessor for Snippetpb_Visual3PSnippet() + 36);
  sub_1B964C2B0();
  sub_1B8CD21C8(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  return sub_1B964C850() & 1;
}

uint64_t Snippetpb_Visual3PSnippet.objectID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_432();
}

uint64_t Snippetpb_Visual3PSnippet.objectID.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Snippetpb_Visual3PSnippet.imageURL.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_432();
}

uint64_t Snippetpb_Visual3PSnippet.imageURL.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Snippetpb_Visual3PSnippet.metadata.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v3, v4);
  return OUTLINED_FUNCTION_432();
}

uint64_t Snippetpb_Visual3PSnippet.metadata.setter()
{
  OUTLINED_FUNCTION_16();
  result = sub_1B8D538A0(*(v1 + 32), *(v1 + 40));
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Snippetpb_Visual3PSnippet.thumbnailURL.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_432();
}

uint64_t Snippetpb_Visual3PSnippet.thumbnailURL.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t Snippetpb_Visual3PSnippet.thumbnailTableName.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return OUTLINED_FUNCTION_432();
}

uint64_t Snippetpb_Visual3PSnippet.thumbnailTableName.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 72);

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t Snippetpb_Visual3PSnippet.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Snippetpb_Visual3PSnippet() + 36);
  v4 = sub_1B964C2B0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Snippetpb_Visual3PSnippet.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Snippetpb_Visual3PSnippet() + 36);
  v4 = sub_1B964C2B0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1B8ED0774()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABD868);
  __swift_project_value_buffer(v0, qword_1EBABD868);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "object_id";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "image_url";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "metadata";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v13 = *MEMORY[0x1E69AADC8];
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "thumbnail_url";
  *(v15 + 1) = 13;
  v15[16] = 2;
  v9();
  v16 = (v5 + 4 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "thumbnail_table_name";
  *(v17 + 1) = 20;
  v17[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t static Snippetpb_Visual3PSnippet._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB6588 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBABD868);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Snippetpb_Visual3PSnippet.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 4:
      case 5:
        sub_1B964C530();
        break;
      case 3:
        sub_1B964C470();
        break;
      default:
        continue;
    }
  }
}

uint64_t Snippetpb_Visual3PSnippet.traverse<A>(visitor:)()
{
  v2 = v0;
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v5 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v1))
  {
    v7 = v0[2];
    v8 = v0[3];
    OUTLINED_FUNCTION_1();
    if (!v9 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v1))
    {
      v10 = v0[4];
      if (sub_1B8D99EA8(v2[4], v2[5]) || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C6A0(), !v1))
      {
        v11 = v2[6];
        v12 = v2[7];
        OUTLINED_FUNCTION_1();
        if (!v13 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v1))
        {
          v14 = v2[8];
          v15 = v2[9];
          OUTLINED_FUNCTION_1();
          if (!v16 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v1))
          {
            v17 = v2 + *(type metadata accessor for Snippetpb_Visual3PSnippet() + 36);
            return sub_1B964C290();
          }
        }
      }
    }
  }

  return result;
}

uint64_t Snippetpb_Visual3PSnippet.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Snippetpb_Visual3PSnippet();
  sub_1B8CD21C8(&qword_1EBABD880, type metadata accessor for Snippetpb_Visual3PSnippet);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B8ED0D68(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD21C8(&qword_1EBABD898, type metadata accessor for Snippetpb_Visual3PSnippet);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8ED0DE8(uint64_t a1)
{
  v2 = sub_1B8CD21C8(&qword_1EBABAFA8, type metadata accessor for Snippetpb_Visual3PSnippet);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8ED0E58()
{
  sub_1B8CD21C8(&qword_1EBABAFA8, type metadata accessor for Snippetpb_Visual3PSnippet);

  return sub_1B964C5D0();
}

uint64_t sub_1B8ED1020()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t Snippetpb_WebImagesSnippet.init()@<X0>(uint64_t a1@<X8>)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v2 = *(type metadata accessor for Snippetpb_WebImagesSnippet(0) + 20);
  if (qword_1EBAB65A0 != -1)
  {
    swift_once();
  }

  *(a1 + v2) = qword_1EBABD8D8;
}

uint64_t static Snippetpb_WebImagesSnippet.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_3_17();
  if (*(v1 + v2) != *(v0 + v2))
  {
    v3 = *(v1 + v2);

    sub_1B8ED6DA4();
    v5 = v4;

    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_7_16();
  sub_1B8CD2210(v6, v7);
  OUTLINED_FUNCTION_288();
  return sub_1B964C850() & 1;
}

unint64_t Snippetpb_ImageSearchProvider.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 4;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1B8ED1258@<X0>(uint64_t *a1@<X8>)
{
  result = Snippetpb_ImageSearchProvider.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8ED128C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8ED8E28();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Snippetpb_ImageSearchProvider.allCases.setter(void *a1)
{
  OUTLINED_FUNCTION_18();
  off_1EBABD8A0 = a1;
}

uint64_t (*static Snippetpb_ImageSearchProvider.allCases.modify())()
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1B8ED13BC@<X0>(uint64_t *a1@<X8>)
{
  result = static Snippetpb_ImageSearchProvider.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t Snippetpb_WebImagesSnippet.imageURL.getter()
{
  OUTLINED_FUNCTION_3_17();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);

  return OUTLINED_FUNCTION_432();
}

void sub_1B8ED1428(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Snippetpb_WebImagesSnippet.imageURL.setter();
}

void Snippetpb_WebImagesSnippet.imageURL.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_16();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_6_8();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8ED4C58(v6);
    OUTLINED_FUNCTION_135(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 24);
  *(v5 + 16) = v2;
  *(v5 + 24) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Snippetpb_WebImagesSnippet.imageURL.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_27(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v5 + 24);
  *(v1 + 48) = *(v5 + 16);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8ED152C(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Snippetpb_WebImagesSnippet.imageURL.setter();
    v7 = *(v1 + 56);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      v10 = *(v1 + 72);
      v11 = *(v1 + 64);
      OUTLINED_FUNCTION_6_8();
      v12 = OUTLINED_FUNCTION_40_0();
      v13 = sub_1B8ED4C58(v12);
      OUTLINED_FUNCTION_168(v13);
    }

    OUTLINED_FUNCTION_59_3();
    v14 = *(v9 + 24);
    *(v9 + 16) = v4;
    *(v9 + 24) = v3;
  }

  free(v1);
}

uint64_t Snippetpb_WebImagesSnippet.title.getter()
{
  OUTLINED_FUNCTION_3_17();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);

  return OUTLINED_FUNCTION_432();
}

void sub_1B8ED1604(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Snippetpb_WebImagesSnippet.title.setter();
}

void Snippetpb_WebImagesSnippet.title.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_16();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_6_8();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8ED4C58(v6);
    OUTLINED_FUNCTION_135(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 40);
  *(v5 + 32) = v2;
  *(v5 + 40) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Snippetpb_WebImagesSnippet.title.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_27(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v5 + 40);
  *(v1 + 48) = *(v5 + 32);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8ED1708(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Snippetpb_WebImagesSnippet.title.setter();
    v7 = *(v1 + 56);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      v10 = *(v1 + 72);
      v11 = *(v1 + 64);
      OUTLINED_FUNCTION_6_8();
      v12 = OUTLINED_FUNCTION_40_0();
      v13 = sub_1B8ED4C58(v12);
      OUTLINED_FUNCTION_168(v13);
    }

    OUTLINED_FUNCTION_59_3();
    v14 = *(v9 + 40);
    *(v9 + 32) = v4;
    *(v9 + 40) = v3;
  }

  free(v1);
}

uint64_t Snippetpb_WebImagesSnippet.webPageURL.getter()
{
  OUTLINED_FUNCTION_3_17();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 48);
  v4 = *(v2 + 56);

  return OUTLINED_FUNCTION_432();
}

void sub_1B8ED17E0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Snippetpb_WebImagesSnippet.webPageURL.setter();
}

void Snippetpb_WebImagesSnippet.webPageURL.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_16();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_6_8();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8ED4C58(v6);
    OUTLINED_FUNCTION_135(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 56);
  *(v5 + 48) = v2;
  *(v5 + 56) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Snippetpb_WebImagesSnippet.webPageURL.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_27(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v5 + 56);
  *(v1 + 48) = *(v5 + 48);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8ED18E4(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Snippetpb_WebImagesSnippet.webPageURL.setter();
    v7 = *(v1 + 56);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      v10 = *(v1 + 72);
      v11 = *(v1 + 64);
      OUTLINED_FUNCTION_6_8();
      v12 = OUTLINED_FUNCTION_40_0();
      v13 = sub_1B8ED4C58(v12);
      OUTLINED_FUNCTION_168(v13);
    }

    OUTLINED_FUNCTION_59_3();
    v14 = *(v9 + 56);
    *(v9 + 48) = v4;
    *(v9 + 56) = v3;
  }

  free(v1);
}

uint64_t Snippetpb_WebImagesSnippet.publishTimestamp.getter()
{
  OUTLINED_FUNCTION_3_17();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  return *(v2 + 64);
}

uint64_t Snippetpb_WebImagesSnippet.publishTimestamp.setter(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_24_8();
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_6_8();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8ED4C58(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v5 + 64) = a1;
  return result;
}

uint64_t Snippetpb_WebImagesSnippet.publishTimestamp.modify()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_99(v2) + 80) = v0;
  OUTLINED_FUNCTION_3_17();
  *(v1 + 88) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 72) = *(v4 + 64);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8ED1A7C(uint64_t *a1)
{
  OUTLINED_FUNCTION_86_1(a1);
  v6 = OUTLINED_FUNCTION_177_3(v5);
  v7 = *(v4 + v2);
  if ((v6 & 1) == 0)
  {
    v8 = *(v1 + 88);
    v9 = *(v1 + 80);
    OUTLINED_FUNCTION_6_8();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B8ED4C58(v10);
    OUTLINED_FUNCTION_168(v11);
  }

  OUTLINED_FUNCTION_11_4();
  *(v7 + 64) = v3;

  free(v1);
}

uint64_t Snippetpb_WebImagesSnippet.fetchTimestamp.getter()
{
  OUTLINED_FUNCTION_3_17();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  return *(v2 + 72);
}

uint64_t Snippetpb_WebImagesSnippet.fetchTimestamp.setter(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_24_8();
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_6_8();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8ED4C58(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v5 + 72) = a1;
  return result;
}

uint64_t Snippetpb_WebImagesSnippet.fetchTimestamp.modify()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_99(v2) + 80) = v0;
  OUTLINED_FUNCTION_3_17();
  *(v1 + 88) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 72) = *(v4 + 72);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8ED1C04(uint64_t *a1)
{
  OUTLINED_FUNCTION_86_1(a1);
  v6 = OUTLINED_FUNCTION_177_3(v5);
  v7 = *(v4 + v2);
  if ((v6 & 1) == 0)
  {
    v8 = *(v1 + 88);
    v9 = *(v1 + 80);
    OUTLINED_FUNCTION_6_8();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B8ED4C58(v10);
    OUTLINED_FUNCTION_168(v11);
  }

  OUTLINED_FUNCTION_11_4();
  *(v7 + 72) = v3;

  free(v1);
}

uint64_t Snippetpb_WebImagesSnippet.imageWidth.getter()
{
  OUTLINED_FUNCTION_3_17();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  return *(v2 + 80);
}

uint64_t Snippetpb_WebImagesSnippet.imageWidth.setter(int a1)
{
  v4 = OUTLINED_FUNCTION_24_8();
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_6_8();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8ED4C58(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v5 + 80) = a1;
  return result;
}

uint64_t Snippetpb_WebImagesSnippet.imageWidth.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 72) = v0;
  OUTLINED_FUNCTION_3_17();
  *(v1 + 84) = v4;
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 80) = *(v5 + 80);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8ED1D88(uint64_t *a1)
{
  OUTLINED_FUNCTION_86_1(a1);
  v6 = OUTLINED_FUNCTION_135_3(v5);
  v7 = *(v4 + v2);
  if ((v6 & 1) == 0)
  {
    v8 = *(v1 + 84);
    v9 = *(v1 + 72);
    OUTLINED_FUNCTION_6_8();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B8ED4C58(v10);
    OUTLINED_FUNCTION_168(v11);
  }

  OUTLINED_FUNCTION_11_4();
  *(v7 + 80) = v3;

  free(v1);
}

uint64_t Snippetpb_WebImagesSnippet.imageHeight.getter()
{
  OUTLINED_FUNCTION_3_17();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  return *(v2 + 84);
}

uint64_t Snippetpb_WebImagesSnippet.imageHeight.setter(int a1)
{
  v4 = OUTLINED_FUNCTION_24_8();
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_6_8();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8ED4C58(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v5 + 84) = a1;
  return result;
}

uint64_t Snippetpb_WebImagesSnippet.imageHeight.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 72) = v0;
  OUTLINED_FUNCTION_3_17();
  *(v1 + 84) = v4;
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 80) = *(v5 + 84);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8ED1F0C(uint64_t *a1)
{
  OUTLINED_FUNCTION_86_1(a1);
  v6 = OUTLINED_FUNCTION_135_3(v5);
  v7 = *(v4 + v2);
  if ((v6 & 1) == 0)
  {
    v8 = *(v1 + 84);
    v9 = *(v1 + 72);
    OUTLINED_FUNCTION_6_8();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B8ED4C58(v10);
    OUTLINED_FUNCTION_168(v11);
  }

  OUTLINED_FUNCTION_11_4();
  *(v7 + 84) = v3;

  free(v1);
}

uint64_t Snippetpb_WebImagesSnippet.relatedImages.getter()
{
  OUTLINED_FUNCTION_3_17();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 88);
}

uint64_t sub_1B8ED1FCC(uint64_t *a1)
{
  v1 = *a1;

  return Snippetpb_WebImagesSnippet.relatedImages.setter(v2);
}

uint64_t Snippetpb_WebImagesSnippet.relatedImages.setter(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_24_8();
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_6_8();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8ED4C58(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 88);
  *(v5 + 88) = a1;
}

uint64_t Snippetpb_WebImagesSnippet.relatedImages.modify()
{
  v2 = __swift_coroFrameAllocStub(0x48uLL);
  *(OUTLINED_FUNCTION_99(v2) + 56) = v0;
  OUTLINED_FUNCTION_3_17();
  *(v1 + 64) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 48) = *(v4 + 88);

  return OUTLINED_FUNCTION_514();
}

void sub_1B8ED20D4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  if (a2)
  {
    v4 = *(v2 + 56);
    v5 = *(*a1 + 48);

    Snippetpb_WebImagesSnippet.relatedImages.setter(v6);
    v7 = *(v2 + 48);
  }

  else
  {
    v8 = *(v2 + 64);
    v9 = *(v2 + 56);
    v10 = *(v9 + v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v9 + v8);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = *(v2 + 64);
      v14 = *(v2 + 56);
      OUTLINED_FUNCTION_6_8();
      v15 = OUTLINED_FUNCTION_40_0();
      v12 = sub_1B8ED4C58(v15);
      *(v14 + v13) = v12;
    }

    OUTLINED_FUNCTION_59_3();
    v16 = *(v12 + 88);
    *(v12 + 88) = v3;
  }

  free(v2);
}

uint64_t Snippetpb_WebImagesSnippet.isDetail.getter()
{
  OUTLINED_FUNCTION_3_17();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  return *(v2 + 96);
}

uint64_t Snippetpb_WebImagesSnippet.isDetail.setter(char a1)
{
  v4 = OUTLINED_FUNCTION_24_8();
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_6_8();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8ED4C58(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v5 + 96) = a1 & 1;
  return result;
}

uint64_t Snippetpb_WebImagesSnippet.isDetail.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 72) = v0;
  OUTLINED_FUNCTION_3_17();
  *(v1 + 80) = v4;
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 84) = *(v5 + 96);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8ED2288(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 84);
  v5 = *(v3 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v3 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 80);
    v9 = *(v1 + 72);
    OUTLINED_FUNCTION_6_8();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B8ED4C58(v10);
    OUTLINED_FUNCTION_168(v11);
  }

  OUTLINED_FUNCTION_11_4();
  *(v7 + 96) = v4;

  free(v1);
}

uint64_t Snippetpb_WebImagesSnippet.thumbnailTableName.getter()
{
  OUTLINED_FUNCTION_3_17();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 104);
  v4 = *(v2 + 112);

  return OUTLINED_FUNCTION_432();
}

void sub_1B8ED2364(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Snippetpb_WebImagesSnippet.thumbnailTableName.setter();
}

void Snippetpb_WebImagesSnippet.thumbnailTableName.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_16();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_6_8();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8ED4C58(v6);
    OUTLINED_FUNCTION_135(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 112);
  *(v5 + 104) = v2;
  *(v5 + 112) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Snippetpb_WebImagesSnippet.thumbnailTableName.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_27(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v5 + 112);
  *(v1 + 48) = *(v5 + 104);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8ED2468(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Snippetpb_WebImagesSnippet.thumbnailTableName.setter();
    v7 = *(v1 + 56);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      v10 = *(v1 + 72);
      v11 = *(v1 + 64);
      OUTLINED_FUNCTION_6_8();
      v12 = OUTLINED_FUNCTION_40_0();
      v13 = sub_1B8ED4C58(v12);
      OUTLINED_FUNCTION_168(v13);
    }

    OUTLINED_FUNCTION_59_3();
    v14 = *(v9 + 112);
    *(v9 + 104) = v4;
    *(v9 + 112) = v3;
  }

  free(v1);
}

void Snippetpb_WebImagesSnippet.imageEmbedding.modify()
{
  OUTLINED_FUNCTION_284();
  v3 = OUTLINED_FUNCTION_185_0();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_66_0(v4);
  v5 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  v9 = type metadata accessor for Argos_Protos_Visualunderstandingpb_ImageEmbedding(v8);
  OUTLINED_FUNCTION_59_1(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  *(v2 + 48) = v13;
  OUTLINED_FUNCTION_3_17();
  v15 = *(v0 + v14);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v16)
  {
    *v13 = 0;
    v13[1] = 0xE000000000000000;
    v17 = MEMORY[0x1E69E7CC0];
    v13[2] = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_60_1(v17, xmmword_1B9652FE0);
    OUTLINED_FUNCTION_17_2();
    if (!v16)
    {
      sub_1B8D9207C(v1, &qword_1EBABD8F8, &qword_1B9664190);
    }
  }

  else
  {
    OUTLINED_FUNCTION_29_11();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Snippetpb_WebImagesSnippet.visualTokens.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD900, &qword_1B9664198);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  OUTLINED_FUNCTION_3_17();
  v10 = *(v1 + v9);
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_39();
  v11 = type metadata accessor for Argos_Protos_Visualunderstandingpb_VisualTokens(0);
  OUTLINED_FUNCTION_9_2();
  if (v12)
  {
    *a1 = 0;
    a1[1] = 0xE000000000000000;
    a1[2] = 0;
    a1[3] = 0xE000000000000000;
    v13 = MEMORY[0x1E69E7CC0];
    a1[4] = MEMORY[0x1E69E7CC0];
    a1[5] = v13;
    a1[6] = v13;
    v14 = a1 + *(v11 + 36);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v12)
    {
      return sub_1B8D9207C(v8, &qword_1EBABD900, &qword_1B9664198);
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_17();
    return sub_1B8ED7CE8();
  }

  return result;
}

uint64_t sub_1B8ED27D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = a5(0);
  OUTLINED_FUNCTION_183(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v15 - v12;
  sub_1B8ED7D40();
  return a7(v13);
}

uint64_t Snippetpb_WebImagesSnippet.visualTokens.setter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD900, &qword_1B9664198);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_14_8();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_6_8();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8ED4C58(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_8_17();
  sub_1B8ED7CE8();
  v10 = type metadata accessor for Argos_Protos_Visualunderstandingpb_VisualTokens(0);
  OUTLINED_FUNCTION_65_1(v10);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Snippetpb_WebImagesSnippet.visualTokens.modify()
{
  OUTLINED_FUNCTION_284();
  v3 = OUTLINED_FUNCTION_185_0();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_66_0(v4);
  v5 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  v9 = type metadata accessor for Argos_Protos_Visualunderstandingpb_VisualTokens(v8);
  OUTLINED_FUNCTION_59_1(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  *(v2 + 48) = v13;
  OUTLINED_FUNCTION_3_17();
  v15 = *(v0 + v14);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v16)
  {
    *v13 = 0;
    v13[1] = 0xE000000000000000;
    v13[2] = 0;
    v13[3] = 0xE000000000000000;
    v17 = MEMORY[0x1E69E7CC0];
    v13[4] = MEMORY[0x1E69E7CC0];
    v13[5] = v17;
    v13[6] = v17;
    v18 = v13 + *(v9 + 36);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v16)
    {
      sub_1B8D9207C(v1, &qword_1EBABD900, &qword_1B9664198);
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_17();
    sub_1B8ED7CE8();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

void sub_1B8ED2ACC(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*a1 + 40);
  v6 = *(*a1 + 48);
  v7 = *(*a1 + 24);
  v8 = *(*a1 + 32);
  if (a2)
  {
    v9 = *(*a1 + 48);
    sub_1B8ED7D40();
    a3(v5);
    sub_1B8ED7D98();
  }

  else
  {
    a3(*(*a1 + 48));
  }

  free(v6);
  free(v5);
  free(v8);

  free(v4);
}

uint64_t sub_1B8ED2BAC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_16();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_183(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - v15;
  OUTLINED_FUNCTION_3_17();
  v18 = *(v5 + v17);
  v19 = *a3;
  OUTLINED_FUNCTION_521();
  sub_1B8D92024();
  v20 = a4(0);
  OUTLINED_FUNCTION_178(v16, 1, v20);
  if (v21)
  {
    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  sub_1B8D9207C(v16, v6, v4);
  return v22;
}

uint64_t sub_1B8ED2CB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4)
{
  OUTLINED_FUNCTION_16();
  v7 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_183(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24 - v14;
  v16 = *(type metadata accessor for Snippetpb_WebImagesSnippet(0) + 20);
  v17 = *(v4 + v16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *(v4 + v16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_6_8();
    v20 = OUTLINED_FUNCTION_40_0();
    *(v7 + v16) = sub_1B8ED4C58(v20);
  }

  v21 = a3(0);
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v21);
  v22 = *a4;
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

void sub_1B8ED2DBC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Snippetpb_WebImagesSnippet.thirdPartyThumbnailURL.setter();
}

uint64_t Snippetpb_WebImagesSnippet.thirdPartyThumbnailURL.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_27(v3);
  v5 = (*(v0 + v4) + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__thirdPartyThumbnailURL);
  OUTLINED_FUNCTION_62_0();
  v6 = v5[1];
  *(v1 + 48) = *v5;
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

uint64_t Snippetpb_WebImagesSnippet.provider.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_3_17();
  v4 = *(v1 + v3) + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__provider;
  result = OUTLINED_FUNCTION_521();
  v6 = *(v4 + 8);
  *a1 = *v4;
  *(a1 + 8) = v6;
  return result;
}

uint64_t sub_1B8ED2EF4@<X0>(uint64_t a1@<X8>)
{
  result = Snippetpb_WebImagesSnippet.provider.getter(&v4);
  v3 = v5;
  *a1 = v4;
  *(a1 + 8) = v3;
  return result;
}

void sub_1B8ED2F38(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  Snippetpb_WebImagesSnippet.provider.setter();
}

void Snippetpb_WebImagesSnippet.provider.setter()
{
  OUTLINED_FUNCTION_193_0();
  v2 = v0;
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = OUTLINED_FUNCTION_14_8();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_6_8();
    v8 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8ED4C58(v8);
    *(v2 + v1) = v7;
  }

  v9 = v7 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__provider;
  OUTLINED_FUNCTION_18();
  *v9 = v4;
  *(v9 + 8) = v5;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Snippetpb_WebImagesSnippet.provider.modify()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_99(v2) + 88) = v0;
  OUTLINED_FUNCTION_3_17();
  *(v1 + 84) = v3;
  v4 = *(v0 + v3) + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__provider;
  OUTLINED_FUNCTION_62_0();
  v5 = *(v4 + 8);
  *(v1 + 72) = *v4;
  *(v1 + 80) = v5;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8ED3074(uint64_t *a1)
{
  OUTLINED_FUNCTION_86_1(a1);
  v3 = *(v2 + 72);
  v4 = *(v1 + 84);
  v5 = *(v1 + 88);
  v6 = *(v1 + 80);
  v7 = *(v5 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = *(v1 + 84);
    v11 = *(v1 + 88);
    OUTLINED_FUNCTION_6_8();
    v12 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8ED4C58(v12);
    *(v11 + v10) = v9;
  }

  v13 = v9 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__provider;
  OUTLINED_FUNCTION_18();
  *v13 = v3;
  *(v13 + 8) = v6;

  free(v1);
}

uint64_t sub_1B8ED3138(void *a1)
{
  OUTLINED_FUNCTION_3_17();
  v4 = (*(v1 + v3) + *a1);
  OUTLINED_FUNCTION_521();
  v6 = *v4;
  v5 = v4[1];

  return OUTLINED_FUNCTION_288();
}

void sub_1B8ED318C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Snippetpb_WebImagesSnippet.docID.setter();
}

void sub_1B8ED31D8()
{
  OUTLINED_FUNCTION_193_0();
  v4 = v3;
  v5 = v1;
  OUTLINED_FUNCTION_16();
  v6 = *(type metadata accessor for Snippetpb_WebImagesSnippet(0) + 20);
  v7 = *(v1 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_6_8();
    v10 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8ED4C58(v10);
    *(v5 + v6) = v9;
  }

  v11 = (v9 + *v4);
  OUTLINED_FUNCTION_18();
  v12 = v11[1];
  *v11 = v2;
  v11[1] = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Snippetpb_WebImagesSnippet.docID.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_27(v3);
  v5 = (*(v0 + v4) + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__docID);
  OUTLINED_FUNCTION_62_0();
  v6 = v5[1];
  *(v1 + 48) = *v5;
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8ED3300(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Snippetpb_WebImagesSnippet.thumbnailID.setter();
}

uint64_t Snippetpb_WebImagesSnippet.thumbnailID.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_27(v3);
  v5 = (*(v0 + v4) + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__thumbnailID);
  OUTLINED_FUNCTION_62_0();
  v6 = v5[1];
  *(v1 + 48) = *v5;
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8ED33E0(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    v7 = v5;
    OUTLINED_FUNCTION_191();
    v8 = OUTLINED_FUNCTION_461();
    v7(v8);
    v9 = *(v1 + 56);
  }

  else
  {
    v10 = v4;
    v11 = *(v1 + 72);
    v12 = *(v1 + 64);
    v13 = *(v12 + v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v12 + v11);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = *(v1 + 72);
      v17 = *(v1 + 64);
      OUTLINED_FUNCTION_6_8();
      v18 = OUTLINED_FUNCTION_40_0();
      v15 = sub_1B8ED4C58(v18);
      *(v17 + v16) = v15;
    }

    v19 = (v15 + *v10);
    OUTLINED_FUNCTION_18();
    v20 = v19[1];
    *v19 = v3;
    v19[1] = v2;
  }

  free(v1);
}

uint64_t Snippetpb_WebImagesSnippet.isE2I.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 72) = v0;
  OUTLINED_FUNCTION_3_17();
  *(v1 + 80) = v4;
  v5 = *(v0 + v4);
  v6 = OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__isE2I;
  OUTLINED_FUNCTION_62_0();
  *(v1 + 84) = *(v5 + v6);
  return OUTLINED_FUNCTION_105_0();
}

uint64_t sub_1B8ED3548(uint64_t *a1)
{
  OUTLINED_FUNCTION_3_17();
  v4 = *(v1 + v3);
  v5 = *a1;
  OUTLINED_FUNCTION_10_4();
  return *(v4 + v5);
}

void sub_1B8ED3594()
{
  OUTLINED_FUNCTION_193_0();
  v3 = v2;
  v5 = v4;
  v6 = OUTLINED_FUNCTION_14_8();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_6_8();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8ED4C58(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  v10 = *v3;
  OUTLINED_FUNCTION_9_3();
  *(v7 + v10) = v5 & 1;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Snippetpb_WebImagesSnippet.disableRelatedImagesSearch.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 72) = v0;
  OUTLINED_FUNCTION_3_17();
  *(v1 + 80) = v4;
  v5 = *(v0 + v4);
  v6 = OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__disableRelatedImagesSearch;
  OUTLINED_FUNCTION_62_0();
  *(v1 + 84) = *(v5 + v6);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8ED367C(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 72);
  v7 = *(*a1 + 84);
  v8 = *(v6 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v6 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v4 + 80);
    v12 = *(v4 + 72);
    OUTLINED_FUNCTION_6_8();
    v13 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8ED4C58(v13);
    *(v12 + v11) = v10;
  }

  v14 = *a3;
  OUTLINED_FUNCTION_11_4();
  *(v10 + v14) = v7;

  free(v4);
}

uint64_t Snippetpb_WebImagesSnippet.originalDomainInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD908, &qword_1B96641A0);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  OUTLINED_FUNCTION_3_17();
  v10 = *(v1 + v9);
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_39();
  v11 = type metadata accessor for Snippetpb_DomainInfo(0);
  OUTLINED_FUNCTION_9_2();
  if (v12)
  {
    *a1 = 0;
    *(a1 + 8) = 1;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0xE000000000000000;
    v13 = a1 + *(v11 + 24);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v12)
    {
      return sub_1B8D9207C(v8, &qword_1EBABD908, &qword_1B96641A0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_30();
    return sub_1B8ED7CE8();
  }

  return result;
}

uint64_t Snippetpb_WebImagesSnippet.originalDomainInfo.setter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD908, &qword_1B96641A0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_14_8();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_6_8();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8ED4C58(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_0_30();
  sub_1B8ED7CE8();
  v10 = type metadata accessor for Snippetpb_DomainInfo(0);
  OUTLINED_FUNCTION_65_1(v10);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t Snippetpb_DomainInfo.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  v1 = a1 + *(type metadata accessor for Snippetpb_DomainInfo(0) + 24);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Snippetpb_WebImagesSnippet.originalDomainInfo.modify()
{
  OUTLINED_FUNCTION_284();
  v3 = OUTLINED_FUNCTION_185_0();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_66_0(v4);
  v5 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  v9 = type metadata accessor for Snippetpb_DomainInfo(v8);
  OUTLINED_FUNCTION_59_1(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  *(v2 + 48) = v13;
  OUTLINED_FUNCTION_3_17();
  v15 = *(v0 + v14);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v16)
  {
    *v13 = 0;
    v13[8] = 1;
    *(v13 + 2) = 0;
    *(v13 + 3) = 0xE000000000000000;
    v17 = &v13[*(v9 + 24)];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v16)
    {
      sub_1B8D9207C(v1, &qword_1EBABD908, &qword_1B96641A0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_30();
    sub_1B8ED7CE8();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B8ED3B38@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD8F8, &qword_1B9664190);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - v9;
  OUTLINED_FUNCTION_3_17();
  v12 = *(v2 + v11);
  v13 = *a1;
  OUTLINED_FUNCTION_521();
  sub_1B8D92024();
  v14 = type metadata accessor for Argos_Protos_Visualunderstandingpb_ImageEmbedding(0);
  OUTLINED_FUNCTION_9_2();
  if (!v15)
  {
    return sub_1B8ED7CE8();
  }

  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  v16 = MEMORY[0x1E69E7CC0];
  *(a2 + 16) = MEMORY[0x1E69E7CC0];
  *(a2 + 24) = xmmword_1B9652FE0;
  *(a2 + 40) = v16;
  *(a2 + 48) = xmmword_1B9652FE0;
  v17 = a2 + *(v14 + 36);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  result = OUTLINED_FUNCTION_9_2();
  if (!v15)
  {
    return sub_1B8D9207C(v10, &qword_1EBABD8F8, &qword_1B9664190);
  }

  return result;
}

uint64_t sub_1B8ED3C84(uint64_t a1, uint64_t *a2)
{
  v4 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD8F8, &qword_1B9664190);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - v9;
  v11 = *(type metadata accessor for Snippetpb_WebImagesSnippet(0) + 20);
  v12 = *(v2 + v11);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(v2 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_6_8();
    v15 = OUTLINED_FUNCTION_40_0();
    *(v4 + v11) = sub_1B8ED4C58(v15);
  }

  OUTLINED_FUNCTION_461();
  sub_1B8ED7CE8();
  v16 = type metadata accessor for Argos_Protos_Visualunderstandingpb_ImageEmbedding(0);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v16);
  v17 = *a2;
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Snippetpb_WebImagesSnippet.dedupEmbedding.modify()
{
  OUTLINED_FUNCTION_284();
  v3 = OUTLINED_FUNCTION_185_0();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_66_0(v4);
  v5 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  v9 = type metadata accessor for Argos_Protos_Visualunderstandingpb_ImageEmbedding(v8);
  OUTLINED_FUNCTION_59_1(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  *(v2 + 48) = v13;
  OUTLINED_FUNCTION_3_17();
  v15 = *(v0 + v14);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v16)
  {
    *v13 = 0;
    v13[1] = 0xE000000000000000;
    v17 = MEMORY[0x1E69E7CC0];
    v13[2] = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_60_1(v17, xmmword_1B9652FE0);
    OUTLINED_FUNCTION_17_2();
    if (!v16)
    {
      sub_1B8D9207C(v1, &qword_1EBABD8F8, &qword_1B9664190);
    }
  }

  else
  {
    OUTLINED_FUNCTION_29_11();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Snippetpb_WebImagesSnippet.unknownFields.getter()
{
  v0 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_432();

  return v4(v3);
}

uint64_t Snippetpb_WebImagesSnippet.unknownFields.setter()
{
  OUTLINED_FUNCTION_313();
  v0 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v0);
  v2 = *(v1 + 40);
  v3 = OUTLINED_FUNCTION_288();

  return v4(v3);
}

void Snippetpb_DomainInfo.domain.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t Snippetpb_DomainInfo.domain.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t Snippetpb_DomainInfo.textQuery.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_432();
}

uint64_t Snippetpb_DomainInfo.textQuery.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Snippetpb_DomainInfo.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Snippetpb_DomainInfo(0) + 24);
  v4 = sub_1B964C2B0();
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t Snippetpb_DomainInfo.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Snippetpb_DomainInfo(v2) + 24);
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*Snippetpb_DomainInfo.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Snippetpb_DomainInfo(v0) + 24);
  return nullsub_1;
}

uint64_t sub_1B8ED421C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABD8A8);
  __swift_project_value_buffer(v0, qword_1EBABD8A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "IMAGE_SEARCH_PROVIDER_UNKNOWN";
  *(v6 + 8) = 29;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "IMAGE_SEARCH_PEGASUS";
  *(v10 + 8) = 20;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "IMAGE_SEARCH_BING";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "IMAGE_SEARCH_BAIDU";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8ED44A0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABD8C0);
  __swift_project_value_buffer(v0, qword_1EBABD8C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_1B9661280;
  v4 = v48 + v3;
  v5 = v48 + v3 + v1[14];
  *(v48 + v3) = 1;
  *v5 = "image_url";
  *(v5 + 8) = 9;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADE8];
  v7 = sub_1B964C750();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "title";
  *(v9 + 8) = 5;
  *(v9 + 16) = 2;
  v47 = *MEMORY[0x1E69AADC8];
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 4;
  *v11 = "web_page_url";
  *(v11 + 1) = 12;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 5;
  *v13 = "publish_timestamp";
  *(v13 + 1) = 17;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 6;
  *v15 = "fetch_timestamp";
  *(v15 + 1) = 15;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 7;
  *v17 = "image_width";
  *(v17 + 1) = 11;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 8;
  *v19 = "image_height";
  *(v19 + 1) = 12;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 9;
  *v21 = "related_images";
  *(v21 + 1) = 14;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 10;
  *v23 = "is_detail";
  *(v23 + 1) = 9;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 11;
  *v25 = "thumbnail_table_name";
  *(v25 + 1) = 20;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 12;
  *v27 = "image_embedding";
  *(v27 + 1) = 15;
  v27[16] = 2;
  v8();
  v28 = (v4 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 13;
  *v29 = "visual_tokens";
  *(v29 + 1) = 13;
  v29[16] = 2;
  v8();
  v30 = (v4 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 14;
  *v31 = "third_party_thumbnail_url";
  *(v31 + 1) = 25;
  v31[16] = 2;
  v8();
  v32 = (v4 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 15;
  *v33 = "provider";
  *(v33 + 1) = 8;
  v33[16] = 2;
  v8();
  v34 = (v4 + 14 * v2);
  v35 = v34 + v1[14];
  *v34 = 16;
  *v35 = "doc_id";
  *(v35 + 1) = 6;
  v35[16] = 2;
  v8();
  v36 = (v4 + 15 * v2);
  v37 = v36 + v1[14];
  *v36 = 17;
  *v37 = "thumbnail_id";
  *(v37 + 1) = 12;
  v37[16] = 2;
  v8();
  v38 = (v4 + 16 * v2);
  v39 = v38 + v1[14];
  *v38 = 18;
  *v39 = "is_e2i";
  *(v39 + 1) = 6;
  v39[16] = 2;
  v8();
  v40 = (v4 + 17 * v2);
  v41 = v40 + v1[14];
  *v40 = 19;
  *v41 = "disable_related_images_search";
  *(v41 + 1) = 29;
  v41[16] = 2;
  v8();
  v42 = (v4 + 18 * v2);
  v43 = v42 + v1[14];
  *v42 = 20;
  *v43 = "original_domain_info";
  *(v43 + 1) = 20;
  v43[16] = 2;
  v8();
  v44 = (v4 + 19 * v2);
  v45 = v44 + v1[14];
  *v44 = 21;
  *v45 = "dedup_embedding";
  *(v45 + 1) = 15;
  v45[16] = 2;
  v8();
  return sub_1B964C760();
}

uint64_t sub_1B8ED4AE4()
{
  OUTLINED_FUNCTION_6_8();
  result = sub_1B8ED4B14();
  qword_1EBABD8D8 = result;
  return result;
}

uint64_t sub_1B8ED4B14()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0xE000000000000000;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 80) = 0;
  *(v0 + 88) = v1;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0;
  *(v0 + 112) = 0xE000000000000000;
  v2 = OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__imageEmbedding;
  v3 = type metadata accessor for Argos_Protos_Visualunderstandingpb_ImageEmbedding(0);
  __swift_storeEnumTagSinglePayload(v0 + v2, 1, 1, v3);
  v4 = OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__visualTokens;
  v5 = type metadata accessor for Argos_Protos_Visualunderstandingpb_VisualTokens(0);
  __swift_storeEnumTagSinglePayload(v0 + v4, 1, 1, v5);
  v6 = (v0 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__thirdPartyThumbnailURL);
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  v7 = v0 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__provider;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = (v0 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__docID);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  v9 = (v0 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__thumbnailID);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__isE2I) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__disableRelatedImagesSearch) = 0;
  v10 = OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__originalDomainInfo;
  v11 = type metadata accessor for Snippetpb_DomainInfo(0);
  __swift_storeEnumTagSinglePayload(v0 + v10, 1, 1, v11);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__dedupEmbedding, 1, 1, v3);
  return v0;
}

uint64_t sub_1B8ED4C58(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD908, &qword_1B96641A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v81 = &v64 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD900, &qword_1B9664198);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v74 = &v64 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD8F8, &qword_1B9664190);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v71 = &v64 - v11;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  *(v1 + 48) = 0;
  *(v1 + 80) = 0;
  v66 = (v1 + 80);
  *(v1 + 72) = 0;
  v65 = (v1 + 72);
  *(v1 + 56) = 0xE000000000000000;
  *(v1 + 64) = 0;
  *(v1 + 88) = MEMORY[0x1E69E7CC0];
  *(v1 + 96) = 0;
  v67 = (v1 + 88);
  v68 = (v1 + 96);
  *(v1 + 104) = 0;
  v69 = (v1 + 104);
  *(v1 + 112) = 0xE000000000000000;
  v12 = OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__imageEmbedding;
  v70 = OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__imageEmbedding;
  v13 = type metadata accessor for Argos_Protos_Visualunderstandingpb_ImageEmbedding(0);
  __swift_storeEnumTagSinglePayload(v1 + v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__visualTokens;
  v15 = type metadata accessor for Argos_Protos_Visualunderstandingpb_VisualTokens(0);
  __swift_storeEnumTagSinglePayload(v1 + v14, 1, 1, v15);
  v16 = (v1 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__thirdPartyThumbnailURL);
  v72 = (v1 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__thirdPartyThumbnailURL);
  *v16 = 0;
  v16[1] = 0xE000000000000000;
  v17 = v1 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__provider;
  v73 = v1 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__provider;
  *v17 = 0;
  *(v17 + 8) = 1;
  v18 = (v1 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__docID);
  v75 = (v1 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__docID);
  *v18 = 0;
  v18[1] = 0xE000000000000000;
  v19 = (v1 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__thumbnailID);
  v76 = (v1 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__thumbnailID);
  *v19 = 0;
  v19[1] = 0xE000000000000000;
  v77 = OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__isE2I;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__isE2I) = 0;
  v78 = OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__disableRelatedImagesSearch;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__disableRelatedImagesSearch) = 0;
  v20 = OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__originalDomainInfo;
  v79 = OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__originalDomainInfo;
  v21 = type metadata accessor for Snippetpb_DomainInfo(0);
  __swift_storeEnumTagSinglePayload(v1 + v20, 1, 1, v21);
  v80 = OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__dedupEmbedding;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__dedupEmbedding, 1, 1, v13);
  swift_beginAccess();
  v23 = *(a1 + 16);
  v22 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v23;
  *(v1 + 24) = v22;
  swift_beginAccess();
  v25 = *(a1 + 32);
  v24 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 32) = v25;
  *(v1 + 40) = v24;

  swift_beginAccess();
  v27 = *(a1 + 48);
  v26 = *(a1 + 56);
  swift_beginAccess();
  v28 = *(v1 + 56);
  *(v1 + 48) = v27;
  *(v1 + 56) = v26;

  swift_beginAccess();
  v29 = *(a1 + 64);
  swift_beginAccess();
  *(v1 + 64) = v29;
  swift_beginAccess();
  v30 = *(a1 + 72);
  v31 = v65;
  swift_beginAccess();
  *v31 = v30;
  swift_beginAccess();
  LODWORD(v30) = *(a1 + 80);
  v32 = v66;
  swift_beginAccess();
  *v32 = v30;
  swift_beginAccess();
  LODWORD(v30) = *(a1 + 84);
  swift_beginAccess();
  *(v1 + 84) = v30;
  swift_beginAccess();
  v33 = *(a1 + 88);
  v34 = v67;
  swift_beginAccess();
  v35 = *v34;
  *v34 = v33;

  swift_beginAccess();
  LOBYTE(v33) = *(a1 + 96);
  v36 = v68;
  swift_beginAccess();
  *v36 = v33;
  swift_beginAccess();
  v38 = *(a1 + 104);
  v37 = *(a1 + 112);
  v39 = v69;
  swift_beginAccess();
  v40 = *(v1 + 112);
  *v39 = v38;
  *(v1 + 112) = v37;

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v41 = (a1 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__thirdPartyThumbnailURL);
  swift_beginAccess();
  v43 = *v41;
  v42 = v41[1];
  v44 = v72;
  swift_beginAccess();
  v45 = v44[1];
  *v44 = v43;
  v44[1] = v42;

  v46 = (a1 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__provider);
  swift_beginAccess();
  v47 = *v46;
  LOBYTE(v46) = *(v46 + 8);
  v48 = v73;
  swift_beginAccess();
  *v48 = v47;
  *(v48 + 8) = v46;
  v49 = (a1 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__docID);
  swift_beginAccess();
  v51 = *v49;
  v50 = v49[1];
  v52 = v75;
  swift_beginAccess();
  v53 = v52[1];
  *v52 = v51;
  v52[1] = v50;

  v54 = (a1 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__thumbnailID);
  swift_beginAccess();
  v56 = *v54;
  v55 = v54[1];
  v57 = v76;
  swift_beginAccess();
  v58 = v57[1];
  *v57 = v56;
  v57[1] = v55;

  v59 = OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__isE2I;
  swift_beginAccess();
  LOBYTE(v59) = *(a1 + v59);
  v60 = v77;
  swift_beginAccess();
  *(v1 + v60) = v59;
  v61 = OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__disableRelatedImagesSearch;
  swift_beginAccess();
  LOBYTE(v61) = *(a1 + v61);
  v62 = v78;
  swift_beginAccess();
  *(v1 + v62) = v61;
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();

  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  return v1;
}

void *sub_1B8ED54F8()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[11];

  v5 = v0[14];

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__imageEmbedding, &qword_1EBABD8F8, &qword_1B9664190);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__visualTokens, &qword_1EBABD900, &qword_1B9664198);
  v6 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__thirdPartyThumbnailURL + 8);

  v7 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__docID + 8);

  v8 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__thumbnailID + 8);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__originalDomainInfo, &qword_1EBABD908, &qword_1B96641A0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__dedupEmbedding, &qword_1EBABD8F8, &qword_1B9664190);
  return v0;
}

uint64_t sub_1B8ED5604()
{
  v0 = sub_1B8ED54F8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t Snippetpb_WebImagesSnippet.decodeMessage<A>(decoder:)()
{
  v1 = v0;
  v2 = *(type metadata accessor for Snippetpb_WebImagesSnippet(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for Snippetpb_WebImagesSnippet._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v9 = OUTLINED_FUNCTION_40_0();
    *(v1 + v2) = sub_1B8ED4C58(v9);
  }

  OUTLINED_FUNCTION_57_4();
  return sub_1B8ED56F4();
}

uint64_t sub_1B8ED56F4()
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1B8DAA85C();
        break;
      case 2:
        sub_1B8DC46F4();
        break;
      case 4:
        sub_1B8DC4778();
        break;
      case 5:
        sub_1B8ED59D8();
        break;
      case 6:
        sub_1B8ED5A5C();
        break;
      case 7:
        sub_1B8ED5AE0();
        break;
      case 8:
        sub_1B8ED5B64();
        break;
      case 9:
        sub_1B8ED5BE8();
        break;
      case 10:
        sub_1B8ED5CB4();
        break;
      case 11:
        sub_1B8EC1004();
        break;
      case 12:
      case 21:
        sub_1B8ED5FFC();
        break;
      case 13:
        sub_1B8ED5D38();
        break;
      case 14:
      case 16:
      case 17:
        sub_1B8E17690();
        break;
      case 15:
        sub_1B8ED5E14();
        break;
      case 18:
      case 19:
        sub_1B8ED5EB0();
        break;
      case 20:
        sub_1B8ED5F20();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8ED59D8()
{
  swift_beginAccess();
  sub_1B964C4B0();
  return swift_endAccess();
}

uint64_t sub_1B8ED5A5C()
{
  swift_beginAccess();
  sub_1B964C4B0();
  return swift_endAccess();
}

uint64_t sub_1B8ED5AE0()
{
  swift_beginAccess();
  sub_1B964C4A0();
  return swift_endAccess();
}

uint64_t sub_1B8ED5B64()
{
  swift_beginAccess();
  sub_1B964C4A0();
  return swift_endAccess();
}

uint64_t sub_1B8ED5BE8()
{
  swift_beginAccess();
  type metadata accessor for Snippetpb_WebImagesSnippet(0);
  sub_1B8CD2210(&qword_1EBABAFC0, type metadata accessor for Snippetpb_WebImagesSnippet);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8ED5CB4()
{
  swift_beginAccess();
  sub_1B964C400();
  return swift_endAccess();
}

uint64_t sub_1B8ED5D38()
{
  swift_beginAccess();
  type metadata accessor for Argos_Protos_Visualunderstandingpb_VisualTokens(0);
  sub_1B8CD2210(&qword_1EBABA868, type metadata accessor for Argos_Protos_Visualunderstandingpb_VisualTokens);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8ED5E14()
{
  swift_beginAccess();
  sub_1B8ED8E28();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B8ED5EB0()
{
  OUTLINED_FUNCTION_147_1();
  v1 = *v0;
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_12();
  sub_1B964C400();
  return swift_endAccess();
}

uint64_t sub_1B8ED5F20()
{
  swift_beginAccess();
  type metadata accessor for Snippetpb_DomainInfo(0);
  sub_1B8CD2210(&qword_1EBABD960, type metadata accessor for Snippetpb_DomainInfo);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8ED5FFC()
{
  OUTLINED_FUNCTION_147_1();
  v1 = *v0;
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  type metadata accessor for Argos_Protos_Visualunderstandingpb_ImageEmbedding(0);
  sub_1B8CD2210(&qword_1EBABA850, type metadata accessor for Argos_Protos_Visualunderstandingpb_ImageEmbedding);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t Snippetpb_WebImagesSnippet.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + *(type metadata accessor for Snippetpb_WebImagesSnippet(0) + 20));
  OUTLINED_FUNCTION_12();
  result = sub_1B8ED6128(v7, v8, v9, a3);
  if (!v4)
  {
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B8ED6128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD908, &qword_1B96641A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v66 = v60 - v10;
  v62 = type metadata accessor for Snippetpb_DomainInfo(0);
  v11 = *(*(v62 - 8) + 64);
  MEMORY[0x1EEE9AC00](v62);
  v60[2] = v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD900, &qword_1B9664198);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v64 = v60 - v15;
  v65 = type metadata accessor for Argos_Protos_Visualunderstandingpb_VisualTokens(0);
  v16 = *(*(v65 - 8) + 64);
  MEMORY[0x1EEE9AC00](v65);
  v63 = v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD8F8, &qword_1B9664190);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v61 = v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v60 - v22;
  v69 = type metadata accessor for Argos_Protos_Visualunderstandingpb_ImageEmbedding(0);
  v24 = *(*(v69 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v69);
  v60[1] = v60 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  swift_beginAccess();
  v27 = *(a1 + 24);
  v28 = HIBYTE(v27) & 0xF;
  if ((v27 & 0x2000000000000000) == 0)
  {
    v28 = *(a1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (v28)
  {
    v29 = *(a1 + 24);

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v30 = *(a1 + 40);
  v31 = HIBYTE(v30) & 0xF;
  if ((v30 & 0x2000000000000000) == 0)
  {
    v31 = *(a1 + 32) & 0xFFFFFFFFFFFFLL;
  }

  if (!v31)
  {
    goto LABEL_11;
  }

  v32 = *(a1 + 40);

  sub_1B964C700();
  if (v4)
  {
  }

LABEL_11:
  swift_beginAccess();
  v33 = *(a1 + 56);
  v34 = HIBYTE(v33) & 0xF;
  if ((v33 & 0x2000000000000000) == 0)
  {
    v34 = *(a1 + 48) & 0xFFFFFFFFFFFFLL;
  }

  if (v34)
  {
    v35 = *(a1 + 56);

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (!*(a1 + 64) || (result = sub_1B964C6D0(), !v4))
  {
    swift_beginAccess();
    if (!*(a1 + 72) || (result = sub_1B964C6D0(), !v4))
    {
      swift_beginAccess();
      if (!*(a1 + 80) || (result = sub_1B964C6C0(), !v4))
      {
        swift_beginAccess();
        if (!*(a1 + 84) || (result = sub_1B964C6C0(), !v4))
        {
          v60[0] = a4;
          swift_beginAccess();
          if (*(*(a1 + 88) + 16))
          {
            type metadata accessor for Snippetpb_WebImagesSnippet(0);
            sub_1B8CD2210(&qword_1EBABAFC0, type metadata accessor for Snippetpb_WebImagesSnippet);

            sub_1B964C730();
            if (v4)
            {
            }
          }

          swift_beginAccess();
          if (*(a1 + 96) != 1 || (result = sub_1B964C670(), !v4))
          {
            swift_beginAccess();
            v37 = *(a1 + 112);
            v38 = HIBYTE(v37) & 0xF;
            if ((v37 & 0x2000000000000000) == 0)
            {
              v38 = *(a1 + 104) & 0xFFFFFFFFFFFFLL;
            }

            if (v38)
            {
              v39 = *(a1 + 112);

              sub_1B964C700();
              if (v4)
              {
              }
            }

            swift_beginAccess();
            sub_1B8D92024();
            if (__swift_getEnumTagSinglePayload(v23, 1, v69) == 1)
            {
              sub_1B8D9207C(v23, &qword_1EBABD8F8, &qword_1B9664190);
            }

            else
            {
              sub_1B8ED7CE8();
              sub_1B8CD2210(&qword_1EBABA850, type metadata accessor for Argos_Protos_Visualunderstandingpb_ImageEmbedding);
              sub_1B964C740();
              if (v4)
              {
                return sub_1B8ED7D98();
              }

              sub_1B8ED7D98();
            }

            swift_beginAccess();
            v40 = v64;
            sub_1B8D92024();
            EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v40, 1, v65);
            v42 = v66;
            if (EnumTagSinglePayload == 1)
            {
              sub_1B8D9207C(v40, &qword_1EBABD900, &qword_1B9664198);
            }

            else
            {
              sub_1B8ED7CE8();
              sub_1B8CD2210(&qword_1EBABA868, type metadata accessor for Argos_Protos_Visualunderstandingpb_VisualTokens);
              sub_1B964C740();
              if (v4)
              {
                return sub_1B8ED7D98();
              }

              sub_1B8ED7D98();
              v42 = v66;
            }

            v43 = (a1 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__thirdPartyThumbnailURL);
            swift_beginAccess();
            v44 = *v43;
            v45 = v43[1];
            v46 = HIBYTE(v45) & 0xF;
            if ((v45 & 0x2000000000000000) == 0)
            {
              v46 = v44 & 0xFFFFFFFFFFFFLL;
            }

            if (!v46 || (, sub_1B964C700(), result = , !v5))
            {
              v47 = (a1 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__provider);
              swift_beginAccess();
              if (!*v47 || (v48 = *(v47 + 8), v67 = *v47, v68 = v48, sub_1B8ED8E28(), result = sub_1B964C680(), !v5))
              {
                v49 = (a1 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__docID);
                swift_beginAccess();
                v50 = *v49;
                v51 = v49[1];
                v52 = HIBYTE(v51) & 0xF;
                if ((v51 & 0x2000000000000000) == 0)
                {
                  v52 = v50 & 0xFFFFFFFFFFFFLL;
                }

                if (!v52 || (, sub_1B964C700(), result = , !v5))
                {
                  v53 = (a1 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__thumbnailID);
                  swift_beginAccess();
                  v54 = *v53;
                  v55 = v53[1];
                  v56 = HIBYTE(v55) & 0xF;
                  if ((v55 & 0x2000000000000000) == 0)
                  {
                    v56 = v54 & 0xFFFFFFFFFFFFLL;
                  }

                  if (!v56 || (, sub_1B964C700(), result = , !v5))
                  {
                    v57 = OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__isE2I;
                    swift_beginAccess();
                    if (*(a1 + v57) != 1 || (result = sub_1B964C670(), !v5))
                    {
                      v58 = OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__disableRelatedImagesSearch;
                      swift_beginAccess();
                      if (*(a1 + v58) != 1 || (result = sub_1B964C670(), !v5))
                      {
                        swift_beginAccess();
                        sub_1B8D92024();
                        if (__swift_getEnumTagSinglePayload(v42, 1, v62) == 1)
                        {
                          sub_1B8D9207C(v42, &qword_1EBABD908, &qword_1B96641A0);
LABEL_66:
                          swift_beginAccess();
                          v59 = v61;
                          sub_1B8D92024();
                          if (__swift_getEnumTagSinglePayload(v59, 1, v69) == 1)
                          {
                            return sub_1B8D9207C(v59, &qword_1EBABD8F8, &qword_1B9664190);
                          }

                          sub_1B8ED7CE8();
                          sub_1B8CD2210(&qword_1EBABA850, type metadata accessor for Argos_Protos_Visualunderstandingpb_ImageEmbedding);
                          sub_1B964C740();
                          return sub_1B8ED7D98();
                        }

                        sub_1B8ED7CE8();
                        sub_1B8CD2210(&qword_1EBABD960, type metadata accessor for Snippetpb_DomainInfo);
                        sub_1B964C740();
                        result = sub_1B8ED7D98();
                        if (!v5)
                        {
                          goto LABEL_66;
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

void sub_1B8ED6DA4()
{
  OUTLINED_FUNCTION_284();
  v1 = v0;
  v3 = v2;
  v142 = type metadata accessor for Snippetpb_DomainInfo(0);
  v4 = OUTLINED_FUNCTION_59_1(v142);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_21();
  v137 = v7;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD988, &qword_1B9664710);
  OUTLINED_FUNCTION_59_1(v139);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  v143 = &v134 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD908, &qword_1B96641A0);
  v13 = OUTLINED_FUNCTION_183(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_44_0();
  v140 = v16;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v17);
  v141 = &v134 - v18;
  v147 = type metadata accessor for Argos_Protos_Visualunderstandingpb_VisualTokens(0);
  v19 = OUTLINED_FUNCTION_59_1(v147);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_21();
  v144 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD990, &qword_1B9664718);
  OUTLINED_FUNCTION_59_1(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v26);
  v148 = &v134 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD900, &qword_1B9664198);
  v29 = OUTLINED_FUNCTION_183(v28);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_44_0();
  v145 = v32;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v134 - v34;
  v150 = type metadata accessor for Argos_Protos_Visualunderstandingpb_ImageEmbedding(0);
  v36 = OUTLINED_FUNCTION_59_1(v150);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_21();
  v146 = v39;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD998, &unk_1B9664720);
  v40 = OUTLINED_FUNCTION_59_1(v149);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_44_0();
  v138 = v43;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v134 - v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD8F8, &qword_1B9664190);
  v48 = OUTLINED_FUNCTION_183(v47);
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_44_0();
  v135 = v51;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v52);
  v136 = &v134 - v53;
  OUTLINED_FUNCTION_230();
  v55 = MEMORY[0x1EEE9AC00](v54);
  v57 = (&v134 - v56);
  MEMORY[0x1EEE9AC00](v55);
  v59 = &v134 - v58;
  OUTLINED_FUNCTION_521();
  v61 = *(v3 + 16);
  v60 = *(v3 + 24);
  OUTLINED_FUNCTION_521();
  v62 = v61 == *(v1 + 16) && v60 == *(v1 + 24);
  if (!v62)
  {
    OUTLINED_FUNCTION_200();
    if ((sub_1B964C9F0() & 1) == 0)
    {
      goto LABEL_48;
    }
  }

  OUTLINED_FUNCTION_521();
  v63 = *(v3 + 32);
  v64 = *(v3 + 40);
  OUTLINED_FUNCTION_521();
  if (v63 != *(v1 + 32) || v64 != *(v1 + 40))
  {
    OUTLINED_FUNCTION_57_4();
    if ((sub_1B964C9F0() & 1) == 0)
    {
      goto LABEL_48;
    }
  }

  OUTLINED_FUNCTION_521();
  v66 = *(v3 + 48);
  v67 = *(v3 + 56);
  OUTLINED_FUNCTION_521();
  if (v66 != *(v1 + 48) || v67 != *(v1 + 56))
  {
    OUTLINED_FUNCTION_57_4();
    if ((sub_1B964C9F0() & 1) == 0)
    {
      goto LABEL_48;
    }
  }

  OUTLINED_FUNCTION_521();
  v69 = *(v3 + 64);
  OUTLINED_FUNCTION_521();
  if (v69 != *(v1 + 64))
  {
    goto LABEL_48;
  }

  OUTLINED_FUNCTION_521();
  v70 = *(v3 + 72);
  OUTLINED_FUNCTION_521();
  if (v70 != *(v1 + 72))
  {
    goto LABEL_48;
  }

  OUTLINED_FUNCTION_521();
  v71 = *(v3 + 80);
  OUTLINED_FUNCTION_521();
  if (v71 != *(v1 + 80))
  {
    goto LABEL_48;
  }

  OUTLINED_FUNCTION_521();
  v72 = *(v3 + 84);
  OUTLINED_FUNCTION_521();
  if (v72 != *(v1 + 84))
  {
    goto LABEL_48;
  }

  OUTLINED_FUNCTION_521();
  v73 = *(v3 + 88);
  OUTLINED_FUNCTION_521();
  v74 = *(v1 + 88);

  OUTLINED_FUNCTION_57_4();
  sub_1B8D8AF20();
  LODWORD(v134) = v75;

  if ((v134 & 1) == 0)
  {
    goto LABEL_47;
  }

  OUTLINED_FUNCTION_521();
  v76 = *(v3 + 96);
  OUTLINED_FUNCTION_521();
  if (v76 != *(v1 + 96))
  {
    goto LABEL_47;
  }

  OUTLINED_FUNCTION_521();
  v77 = *(v3 + 104);
  v78 = *(v3 + 112);
  OUTLINED_FUNCTION_521();
  if (v77 != *(v1 + 104) || v78 != *(v1 + 112))
  {
    OUTLINED_FUNCTION_57_4();
    if ((sub_1B964C9F0() & 1) == 0)
    {
      goto LABEL_47;
    }
  }

  OUTLINED_FUNCTION_521();
  sub_1B8D92024();
  OUTLINED_FUNCTION_521();
  v80 = *(v149 + 48);
  sub_1B8D92024();
  v134 = v80;
  sub_1B8D92024();
  v81 = v150;
  OUTLINED_FUNCTION_178(v46, 1, v150);
  if (v62)
  {
    sub_1B8D9207C(v59, &qword_1EBABD8F8, &qword_1B9664190);
    OUTLINED_FUNCTION_178(&v46[v134], 1, v81);
    if (v62)
    {
      sub_1B8D9207C(v46, &qword_1EBABD8F8, &qword_1B9664190);
      goto LABEL_37;
    }

LABEL_35:
    v83 = &qword_1EBABD998;
    v84 = &unk_1B9664720;
    v85 = v46;
    goto LABEL_46;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_178(&v46[v134], 1, v81);
  if (v82)
  {
    sub_1B8D9207C(v59, &qword_1EBABD8F8, &qword_1B9664190);
    OUTLINED_FUNCTION_27_6();
    sub_1B8ED7D98();
    goto LABEL_35;
  }

  OUTLINED_FUNCTION_28_8();
  v86 = v146;
  sub_1B8ED7CE8();
  LODWORD(v134) = static Argos_Protos_Visualunderstandingpb_ImageEmbedding.== infix(_:_:)(v57, v86);
  OUTLINED_FUNCTION_200();
  sub_1B8ED7D98();
  sub_1B8D9207C(v59, &qword_1EBABD8F8, &qword_1B9664190);
  sub_1B8ED7D98();
  sub_1B8D9207C(v46, &qword_1EBABD8F8, &qword_1B9664190);
  if ((v134 & 1) == 0)
  {
    goto LABEL_47;
  }

LABEL_37:
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_52_2();
  OUTLINED_FUNCTION_521();
  v87 = *(v23 + 48);
  v88 = v148;
  OUTLINED_FUNCTION_52_2();
  OUTLINED_FUNCTION_52_2();
  v89 = v147;
  OUTLINED_FUNCTION_178(v88, 1, v147);
  if (v62)
  {
    sub_1B8D9207C(v35, &qword_1EBABD900, &qword_1B9664198);
    OUTLINED_FUNCTION_178(v88 + v87, 1, v89);
    if (v62)
    {
      sub_1B8D9207C(v88, &qword_1EBABD900, &qword_1B9664198);
      goto LABEL_50;
    }

LABEL_45:
    v83 = &qword_1EBABD990;
    v84 = &qword_1B9664718;
    v85 = v88;
    goto LABEL_46;
  }

  v90 = v145;
  sub_1B8D92024();
  OUTLINED_FUNCTION_178(v88 + v87, 1, v89);
  if (v91)
  {
    sub_1B8D9207C(v35, &qword_1EBABD900, &qword_1B9664198);
    sub_1B8ED7D98();
    goto LABEL_45;
  }

  v92 = v144;
  sub_1B8ED7CE8();
  v93 = static Argos_Protos_Visualunderstandingpb_VisualTokens.== infix(_:_:)(v90, v92);
  OUTLINED_FUNCTION_200();
  sub_1B8ED7D98();
  sub_1B8D9207C(v35, &qword_1EBABD900, &qword_1B9664198);
  sub_1B8ED7D98();
  sub_1B8D9207C(v88, &qword_1EBABD900, &qword_1B9664198);
  if ((v93 & 1) == 0)
  {
    goto LABEL_47;
  }

LABEL_50:
  v94 = (v3 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__thirdPartyThumbnailURL);
  OUTLINED_FUNCTION_521();
  v95 = *v94;
  v96 = v94[1];
  v97 = (v1 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__thirdPartyThumbnailURL);
  OUTLINED_FUNCTION_521();
  v98 = v95 == *v97 && v96 == v97[1];
  if (!v98 && (OUTLINED_FUNCTION_120_0() & 1) == 0)
  {
    goto LABEL_47;
  }

  v99 = v3 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__provider;
  OUTLINED_FUNCTION_521();
  v100 = *v99;
  v101 = *(v99 + 8);
  v102 = v1 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__provider;
  OUTLINED_FUNCTION_521();
  v103 = *(v102 + 8);
  if (!sub_1B8D92198(v100, v101, *v102))
  {
    goto LABEL_47;
  }

  v104 = (v3 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__docID);
  OUTLINED_FUNCTION_521();
  v105 = *v104;
  v106 = v104[1];
  v107 = (v1 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__docID);
  OUTLINED_FUNCTION_521();
  v108 = v105 == *v107 && v106 == v107[1];
  if (!v108 && (OUTLINED_FUNCTION_120_0() & 1) == 0)
  {
    goto LABEL_47;
  }

  v109 = (v3 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__thumbnailID);
  OUTLINED_FUNCTION_521();
  v110 = *v109;
  v111 = v109[1];
  v112 = (v1 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__thumbnailID);
  OUTLINED_FUNCTION_521();
  v113 = v110 == *v112 && v111 == v112[1];
  if (!v113 && (OUTLINED_FUNCTION_120_0() & 1) == 0)
  {
    goto LABEL_47;
  }

  v114 = OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__isE2I;
  OUTLINED_FUNCTION_521();
  LODWORD(v114) = *(v3 + v114);
  v115 = OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__isE2I;
  OUTLINED_FUNCTION_521();
  if (v114 != *(v1 + v115))
  {
    goto LABEL_47;
  }

  v116 = OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__disableRelatedImagesSearch;
  OUTLINED_FUNCTION_521();
  LODWORD(v116) = *(v3 + v116);
  v117 = OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__disableRelatedImagesSearch;
  OUTLINED_FUNCTION_521();
  if (v116 != *(v1 + v117))
  {
    goto LABEL_47;
  }

  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_81_1();
  OUTLINED_FUNCTION_521();
  v118 = *(v139 + 48);
  v119 = v143;
  OUTLINED_FUNCTION_81_1();
  OUTLINED_FUNCTION_52_2();
  OUTLINED_FUNCTION_178(v119, 1, v142);
  if (!v62)
  {
    v122 = v143;
    sub_1B8D92024();
    OUTLINED_FUNCTION_178(v122 + v118, 1, v142);
    if (!v123)
    {
      OUTLINED_FUNCTION_0_30();
      v124 = v137;
      sub_1B8ED7CE8();
      if (sub_1B8D57FD0(*v140, *(v140 + 8), *v124, *(v124 + 8)))
      {
        v125 = *(v140 + 16) == *(v137 + 16) && *(v140 + 24) == *(v137 + 24);
        if (v125 || (sub_1B964C9F0() & 1) != 0)
        {
          v126 = *(v142 + 24);
          sub_1B964C2B0();
          OUTLINED_FUNCTION_7_16();
          sub_1B8CD2210(v127, v128);
          v129 = sub_1B964C850();
          sub_1B8D9207C(v141, &qword_1EBABD908, &qword_1B96641A0);
          sub_1B8ED7D98();
          sub_1B8ED7D98();
          sub_1B8D9207C(v143, &qword_1EBABD908, &qword_1B96641A0);
          if (v129)
          {
            goto LABEL_73;
          }

LABEL_47:

          goto LABEL_48;
        }
      }

      sub_1B8D9207C(v141, &qword_1EBABD908, &qword_1B96641A0);
      sub_1B8ED7D98();
      sub_1B8ED7D98();
      v85 = v143;
      v83 = &qword_1EBABD908;
      v84 = &qword_1B96641A0;
LABEL_46:
      sub_1B8D9207C(v85, v83, v84);
      goto LABEL_47;
    }

    sub_1B8D9207C(v141, &qword_1EBABD908, &qword_1B96641A0);
    sub_1B8ED7D98();
LABEL_81:
    v83 = &qword_1EBABD988;
    v84 = &qword_1B9664710;
    v85 = v143;
    goto LABEL_46;
  }

  sub_1B8D9207C(v141, &qword_1EBABD908, &qword_1B96641A0);
  OUTLINED_FUNCTION_178(v143 + v118, 1, v142);
  if (!v62)
  {
    goto LABEL_81;
  }

  sub_1B8D9207C(v143, &qword_1EBABD908, &qword_1B96641A0);
LABEL_73:
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_81_1();
  OUTLINED_FUNCTION_521();
  v120 = *(v149 + 48);
  v121 = v138;
  OUTLINED_FUNCTION_81_1();
  OUTLINED_FUNCTION_52_2();
  OUTLINED_FUNCTION_178(v121, 1, v150);
  if (!v62)
  {
    v130 = v138;
    sub_1B8D92024();
    OUTLINED_FUNCTION_178(v130 + v120, 1, v150);
    if (!v131)
    {
      OUTLINED_FUNCTION_28_8();
      v132 = v138;
      v133 = v146;
      sub_1B8ED7CE8();
      static Argos_Protos_Visualunderstandingpb_ImageEmbedding.== infix(_:_:)(v135, v133);

      OUTLINED_FUNCTION_200();
      sub_1B8ED7D98();
      sub_1B8D9207C(v136, &qword_1EBABD8F8, &qword_1B9664190);
      sub_1B8ED7D98();
      sub_1B8D9207C(v132, &qword_1EBABD8F8, &qword_1B9664190);
      goto LABEL_48;
    }

    sub_1B8D9207C(v136, &qword_1EBABD8F8, &qword_1B9664190);
    OUTLINED_FUNCTION_27_6();
    sub_1B8ED7D98();
LABEL_94:
    sub_1B8D9207C(v138, &qword_1EBABD998, &unk_1B9664720);
    goto LABEL_48;
  }

  sub_1B8D9207C(v136, &qword_1EBABD8F8, &qword_1B9664190);
  OUTLINED_FUNCTION_178(v138 + v120, 1, v150);
  if (!v62)
  {
    goto LABEL_94;
  }

  sub_1B8D9207C(v138, &qword_1EBABD8F8, &qword_1B9664190);
LABEL_48:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B8ED7CE8()
{
  OUTLINED_FUNCTION_468();
  v2 = v1(0);
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_432();
  v6(v5);
  return v0;
}

uint64_t sub_1B8ED7D40()
{
  OUTLINED_FUNCTION_468();
  v2 = v1(0);
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_432();
  v6(v5);
  return v0;
}

uint64_t sub_1B8ED7D98()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1B8ED7EB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2210(&qword_1EBABD978, type metadata accessor for Snippetpb_WebImagesSnippet);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8ED7F30(uint64_t a1)
{
  v2 = sub_1B8CD2210(&qword_1EBABAFC0, type metadata accessor for Snippetpb_WebImagesSnippet);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8ED7FA0()
{
  sub_1B8CD2210(&qword_1EBABAFC0, type metadata accessor for Snippetpb_WebImagesSnippet);

  return sub_1B964C5D0();
}

uint64_t sub_1B8ED803C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABD8E0);
  __swift_project_value_buffer(v0, qword_1EBABD8E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "domain";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "text_query";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v9();
  return sub_1B964C760();
}

uint64_t Snippetpb_DomainInfo.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_288();
      sub_1B8E8FC9C();
    }
  }

  return result;
}

uint64_t Snippetpb_DomainInfo.traverse<A>(visitor:)()
{
  if (!*v0 || (v6 = *v0, v7 = *(v0 + 8), sub_1B8DEE788(), result = sub_1B964C680(), !v1))
  {
    v3 = v0[3];
    v4 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v4 = v0[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v4 || (result = sub_1B964C700(), !v1))
    {
      v5 = v0 + *(type metadata accessor for Snippetpb_DomainInfo(0) + 24);
      OUTLINED_FUNCTION_12();
      return sub_1B964C290();
    }
  }

  return result;
}

uint64_t static Snippetpb_DomainInfo.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  if (!sub_1B8D57FD0(*v2, *(v1 + 8), *v0, *(v0 + 8)))
  {
    return 0;
  }

  v3 = *(v1 + 16) == *(v0 + 16) && *(v1 + 24) == *(v0 + 24);
  if (!v3 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for Snippetpb_DomainInfo(0) + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_7_16();
  sub_1B8CD2210(v5, v6);
  return sub_1B964C850() & 1;
}

uint64_t sub_1B8ED84A8(void (*a1)(void))
{
  sub_1B964CA70();
  a1(0);
  v2 = OUTLINED_FUNCTION_461();
  sub_1B8CD2210(v2, v3);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B8ED8588(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2210(&qword_1EBABD970, type metadata accessor for Snippetpb_DomainInfo);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8ED8608(uint64_t a1)
{
  v2 = sub_1B8CD2210(&qword_1EBABD960, type metadata accessor for Snippetpb_DomainInfo);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8ED8678()
{
  sub_1B8CD2210(&qword_1EBABD960, type metadata accessor for Snippetpb_DomainInfo);

  return sub_1B964C5D0();
}

unint64_t sub_1B8ED86FC()
{
  result = qword_1EBABD920;
  if (!qword_1EBABD920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABD920);
  }

  return result;
}

unint64_t sub_1B8ED8754()
{
  result = qword_1EBABD928;
  if (!qword_1EBABD928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABD928);
  }

  return result;
}

unint64_t sub_1B8ED87AC()
{
  result = qword_1EBABD930;
  if (!qword_1EBABD930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABD930);
  }

  return result;
}

unint64_t sub_1B8ED8804()
{
  result = qword_1EBABD938;
  if (!qword_1EBABD938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBABD940, &qword_1B9664290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABD938);
  }

  return result;
}

uint64_t sub_1B8ED8AE0()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Snippetpb_WebImagesSnippet._StorageClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B8ED8B8C()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B8ED8C18()
{
  sub_1B8ED8DD4(319, &qword_1ED9C9518, type metadata accessor for Argos_Protos_Visualunderstandingpb_ImageEmbedding);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    sub_1B8ED8DD4(319, &qword_1ED9C99E0, type metadata accessor for Argos_Protos_Visualunderstandingpb_VisualTokens);
    if (v4 <= 0x3F)
    {
      v7 = *(v3 - 8) + 64;
      sub_1B8ED8DD4(319, &qword_1ED9CD7C0, type metadata accessor for Snippetpb_DomainInfo);
      if (v6 <= 0x3F)
      {
        v8 = *(v5 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1B8ED8DD4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B964C930();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1B8ED8E28()
{
  result = qword_1EBABD980;
  if (!qword_1EBABD980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABD980);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_27(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 64) = v2;
  result = type metadata accessor for Snippetpb_WebImagesSnippet(0);
  *(a1 + 72) = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_17()
{
  result = type metadata accessor for Snippetpb_WebImagesSnippet(0);
  v1 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_6_8()
{
  v0 = type metadata accessor for Snippetpb_WebImagesSnippet._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_11_16()
{
  v1 = *(v0 + *(type metadata accessor for Snippetpb_WebImagesSnippet(0) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_14_8()
{
  v1 = *(v0 + *(type metadata accessor for Snippetpb_WebImagesSnippet(0) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_24_8()
{
  v1 = *(v0 + *(type metadata accessor for Snippetpb_WebImagesSnippet(0) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_29_11()
{

  return sub_1B8ED7CE8();
}

uint64_t OUTLINED_FUNCTION_52_2()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_60_1@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  *(v2 + 24) = a2;
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  v5 = v2 + *(v3 + 36);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Tophitpb_TopHit.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v2 = type metadata accessor for Tophitpb_TopHit();
  *(a1 + 9) = 0;
  v3 = a1 + *(v2 + 36);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t type metadata accessor for Tophitpb_TopHit()
{
  result = qword_1ED9CD900;
  if (!qword_1ED9CD900)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t Tophitpb_TopHitValue.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1B8ED9198@<X0>(uint64_t *a1@<X8>)
{
  result = Tophitpb_TopHitValue.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8ED91CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8ED9CE8();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Tophitpb_TopHitValue.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_1EBABD9A0 = a1;
}

uint64_t sub_1B8ED9314@<X0>(uint64_t *a1@<X8>)
{
  result = static Tophitpb_TopHitValue.allCases.getter();
  *a1 = result;
  return result;
}

void Tophitpb_TopHit.hint.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t Tophitpb_TopHit.hint.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t Tophitpb_TopHit.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Tophitpb_TopHit() + 36);
  v4 = sub_1B964C2B0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Tophitpb_TopHit.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Tophitpb_TopHit() + 36);
  v4 = sub_1B964C2B0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1B8ED9584()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABD9A8);
  __swift_project_value_buffer(v0, qword_1EBABD9A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "UNSPECIFIED";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SHOULD_BE";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "MUST_BE";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8ED97D4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABD9C0);
  __swift_project_value_buffer(v0, qword_1EBABD9C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "hint";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "no_go_takeover";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "should_use_compact_display";
  *(v13 + 1) = 26;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "prefer_top_platter";
  *(v15 + 1) = 18;
  v15[16] = 2;
  v9();
  v16 = (v5 + 4 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "bullseye_compatible";
  *(v17 + 1) = 19;
  v17[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Tophitpb_TopHit.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1B8ED9B44();
        break;
      case 2:
      case 3:
      case 4:
      case 6:
        sub_1B964C400();
        break;
      default:
        continue;
    }
  }
}

uint64_t Tophitpb_TopHit.traverse<A>(visitor:)()
{
  if (!*v0 || (v4 = *v0, v5 = *(v0 + 8), sub_1B8ED9CE8(), result = sub_1B964C680(), !v1))
  {
    if (*(v0 + 9) != 1 || (result = OUTLINED_FUNCTION_0_31(), !v1))
    {
      if (*(v0 + 10) != 1 || (result = OUTLINED_FUNCTION_0_31(), !v1))
      {
        if (*(v0 + 11) != 1 || (result = OUTLINED_FUNCTION_0_31(), !v1))
        {
          if (*(v0 + 12) != 1 || (result = OUTLINED_FUNCTION_0_31(), !v1))
          {
            v3 = v0 + *(type metadata accessor for Tophitpb_TopHit() + 36);
            return sub_1B964C290();
          }
        }
      }
    }
  }

  return result;
}

unint64_t sub_1B8ED9CE8()
{
  result = qword_1EBABD9D8;
  if (!qword_1EBABD9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABD9D8);
  }

  return result;
}

uint64_t static Tophitpb_TopHit.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a2 + 8) != 1)
  {
    if (v2 != v3)
    {
      return 0;
    }

    goto LABEL_11;
  }

  if (!v3)
  {
    if (!v2)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (v3 != 1)
  {
    if (v2 == 2)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (v2 != 1)
  {
    return 0;
  }

LABEL_11:
  if (*(a1 + 9) != *(a2 + 9) || *(a1 + 10) != *(a2 + 10) || *(a1 + 11) != *(a2 + 11) || *(a1 + 12) != *(a2 + 12))
  {
    return 0;
  }

  v5 = *(type metadata accessor for Tophitpb_TopHit() + 36);
  sub_1B964C2B0();
  sub_1B8CD2258(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  return sub_1B964C850() & 1;
}

uint64_t Tophitpb_TopHit.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Tophitpb_TopHit();
  sub_1B8CD2258(&qword_1EBABD9E0, type metadata accessor for Tophitpb_TopHit);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B8ED9F48(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2258(&qword_1EBABDA20, type metadata accessor for Tophitpb_TopHit);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8ED9FC8(uint64_t a1)
{
  v2 = sub_1B8CD2258(&qword_1EBABAF90, type metadata accessor for Tophitpb_TopHit);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8EDA038()
{
  sub_1B8CD2258(&qword_1EBABAF90, type metadata accessor for Tophitpb_TopHit);

  return sub_1B964C5D0();
}

unint64_t sub_1B8EDA0B8()
{
  result = qword_1EBABD9E8;
  if (!qword_1EBABD9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABD9E8);
  }

  return result;
}

unint64_t sub_1B8EDA110()
{
  result = qword_1EBABD9F0;
  if (!qword_1EBABD9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABD9F0);
  }

  return result;
}

unint64_t sub_1B8EDA168()
{
  result = qword_1EBABD9F8;
  if (!qword_1EBABD9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABD9F8);
  }

  return result;
}

unint64_t sub_1B8EDA1C0()
{
  result = qword_1EBABDA00;
  if (!qword_1EBABDA00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBABDA08, &qword_1B9664818);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABDA00);
  }

  return result;
}

uint64_t sub_1B8EDA380()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_31()
{

  return sub_1B964C670();
}

uint64_t Trialpb_TrialExperiment.experimentNamespace.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Trialpb_TrialExperiment.experimentNamespace.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Trialpb_TrialExperiment.experimentID.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t Trialpb_TrialExperiment.experimentID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Trialpb_TrialExperiment.treatmentID.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t Trialpb_TrialExperiment.treatmentID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

void Trialpb_TrialExperiment.allocationStatus.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  *a1 = *(v1 + 56);
  *(a1 + 8) = v2;
}

uint64_t Trialpb_TrialExperiment.allocationStatus.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 56) = *result;
  *(v1 + 64) = v2;
  return result;
}

uint64_t Trialpb_TrialExperiment.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Trialpb_TrialExperiment() + 40);
  v4 = sub_1B964C2B0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Trialpb_TrialExperiment.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Trialpb_TrialExperiment() + 40);
  v4 = sub_1B964C2B0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Trialpb_TrialExperiment.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  *(a1 + 68) = 0;
  v1 = a1 + *(type metadata accessor for Trialpb_TrialExperiment() + 40);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B8EDA820()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABDA28);
  __swift_project_value_buffer(v0, qword_1EBABDA28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "experiment_namespace";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "experiment_id";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "treatment_id";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "deployment_id";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "allocation_status";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "compatibility_version";
  *(v18 + 1) = 21;
  v18[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t static Trialpb_TrialExperiment._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB65C0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBABDA28);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Trialpb_TrialExperiment.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C4B0();
        break;
      case 5:
        sub_1B8EDAC60();
        break;
      case 6:
        OUTLINED_FUNCTION_12();
        sub_1B964C540();
        break;
      default:
        continue;
    }
  }
}

uint64_t Trialpb_TrialExperiment.traverse<A>(visitor:)()
{
  v2 = v1;
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v5 || (result = OUTLINED_FUNCTION_3(), (v2 = v1) == 0))
  {
    v7 = v0[2];
    v8 = v0[3];
    OUTLINED_FUNCTION_1();
    if (!v9 || (result = OUTLINED_FUNCTION_3(), (v2 = v1) == 0))
    {
      v10 = v0[4];
      v11 = v0[5];
      OUTLINED_FUNCTION_1();
      if (!v12 || (result = OUTLINED_FUNCTION_3(), (v2 = v1) == 0))
      {
        if (!v0[6] || (OUTLINED_FUNCTION_29(), result = sub_1B964C6D0(), (v2 = v1) == 0))
        {
          if (!v0[7] || (v14 = v0[7], v15 = *(v0 + 64), sub_1B8EDB198(), v1 = v2, result = sub_1B964C680(), !v2))
          {
            if (!*(v0 + 17) || (OUTLINED_FUNCTION_29(), result = sub_1B964C710(), !v1))
            {
              v13 = v0 + *(type metadata accessor for Trialpb_TrialExperiment() + 40);
              OUTLINED_FUNCTION_12();
              return sub_1B964C290();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Trialpb_TrialExperiment.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40);
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 48) != *(a2 + 48))
  {
    return 0;
  }

  v7 = *(a2 + 64);
  if (!sub_1B8D92198(*(a1 + 56), *(a1 + 64), *(a2 + 56)) || *(a1 + 68) != *(a2 + 68))
  {
    return 0;
  }

  v8 = *(type metadata accessor for Trialpb_TrialExperiment() + 40);
  sub_1B964C2B0();
  sub_1B8CD22A0(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  return sub_1B964C850() & 1;
}

uint64_t Trialpb_TrialExperiment.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Trialpb_TrialExperiment();
  sub_1B8CD22A0(&qword_1EBABDA48, type metadata accessor for Trialpb_TrialExperiment);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B8EDB028(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD22A0(&qword_1EBABDA60, type metadata accessor for Trialpb_TrialExperiment);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8EDB0A8(uint64_t a1)
{
  v2 = sub_1B8CD22A0(&qword_1EBABDA58, type metadata accessor for Trialpb_TrialExperiment);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8EDB118()
{
  sub_1B8CD22A0(&qword_1EBABDA58, type metadata accessor for Trialpb_TrialExperiment);

  return sub_1B964C5D0();
}

unint64_t sub_1B8EDB198()
{
  result = qword_1EBABDA40;
  if (!qword_1EBABDA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABDA40);
  }

  return result;
}

uint64_t sub_1B8EDB334()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t Trialpb_TreatmentAllocationStatus.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 4;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1B8EDB418@<X0>(uint64_t *a1@<X8>)
{
  result = Trialpb_TreatmentAllocationStatus.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8EDB44C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8EDB198();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Trialpb_TreatmentAllocationStatus.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_1EBABDA68 = a1;
}

uint64_t sub_1B8EDB594@<X0>(uint64_t *a1@<X8>)
{
  result = static Trialpb_TreatmentAllocationStatus.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8EDB5BC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABDA70);
  __swift_project_value_buffer(v0, qword_1EBABDA70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "TREATMENT_ALLOCATION_STATUS_UNKNOWN";
  *(v6 + 8) = 35;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "TREATMENT_ALLOCATION_STATUS_ALLOCATED";
  *(v10 + 8) = 37;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "TREATMENT_ALLOCATION_STATUS_ACTIVATED";
  *(v12 + 1) = 37;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "TREATMENT_ALLOCATION_STATUS_DEACTIVATED";
  *(v14 + 1) = 39;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t static Trialpb_TreatmentAllocationStatus._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB65C8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBABDA70);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1B8EDB8A4()
{
  result = qword_1EBABDA88;
  if (!qword_1EBABDA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABDA88);
  }

  return result;
}

unint64_t sub_1B8EDB8FC()
{
  result = qword_1EBABDA90;
  if (!qword_1EBABDA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABDA90);
  }

  return result;
}

unint64_t sub_1B8EDB954()
{
  result = qword_1EBABDA98;
  if (!qword_1EBABDA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABDA98);
  }

  return result;
}

unint64_t sub_1B8EDB9AC()
{
  result = qword_1EBABDAA0;
  if (!qword_1EBABDAA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBABDAA8, &qword_1B9664CE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABDAA0);
  }

  return result;
}

uint64_t sub_1B8EDBA74@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  v2 = a2 + *(a1(0) + 24);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Tvpb_Parent.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_17_10(a1);
  v1 = type metadata accessor for Tvpb_Parent(0);
  return OUTLINED_FUNCTION_101_2(v1);
}

uint64_t sub_1B8EDBB5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8ECFFBC();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8EDBC3C@<X0>(uint64_t *a1@<X8>)
{
  result = static Tvpb_TvType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t Tvpb_TvAvailability.id.getter()
{
  OUTLINED_FUNCTION_12_12();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);

  return OUTLINED_FUNCTION_432();
}

void sub_1B8EDBCC8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Tvpb_TvAvailability.id.setter();
}

void Tvpb_TvAvailability.id.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_22_10();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Tvpb_TvAvailability._StorageClass();
    OUTLINED_FUNCTION_27_7();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8EE04A0(v6);
    OUTLINED_FUNCTION_135(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 24);
  *(v5 + 16) = v2;
  *(v5 + 24) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Tvpb_TvAvailability.id.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_9_13(v3);
  OUTLINED_FUNCTION_62_0();
  v4 = *(v0 + 24);
  *(v1 + 48) = *(v0 + 16);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EDBDF8(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Tvpb_TvAvailability.id.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_58_4();
      OUTLINED_FUNCTION_27_7();
      swift_allocObject();
      v10 = OUTLINED_FUNCTION_40_0();
      v11 = sub_1B8EE04A0(v10);
      OUTLINED_FUNCTION_168(v11);
    }

    OUTLINED_FUNCTION_59_3();
    v12 = *(v9 + 24);
    *(v9 + 16) = v4;
    *(v9 + 24) = v3;
  }

  free(v1);
}

uint64_t Tvpb_TvAvailability.startDateSeconds.getter()
{
  OUTLINED_FUNCTION_12_12();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  return *(v2 + 32);
}

uint64_t Tvpb_TvAvailability.startDateSeconds.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Tvpb_TvAvailability(v2) + 20);
  v4 = *(v1 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Tvpb_TvAvailability._StorageClass();
    OUTLINED_FUNCTION_27_7();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EE04A0(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v6 + 32) = v0;
  return result;
}

uint64_t Tvpb_TvAvailability.startDateSeconds.modify()
{
  v2 = OUTLINED_FUNCTION_196_1();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 80) = v0;
  OUTLINED_FUNCTION_12_12();
  *(v1 + 88) = v4;
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 72) = *(v5 + 32);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8EDBFA4(uint64_t a1)
{
  OUTLINED_FUNCTION_7_14(a1);
  v3 = *(v1 + 88);
  v4 = *(v1 + 80);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 88);
    v9 = *(v1 + 80);
    type metadata accessor for Tvpb_TvAvailability._StorageClass();
    OUTLINED_FUNCTION_27_7();
    swift_allocObject();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B8EE04A0(v10);
    OUTLINED_FUNCTION_168(v11);
  }

  OUTLINED_FUNCTION_11_4();
  *(v7 + 32) = v2;

  free(v1);
}

uint64_t Tvpb_TvAvailability.endDateSeconds.getter()
{
  OUTLINED_FUNCTION_12_12();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  return *(v2 + 40);
}

uint64_t Tvpb_TvAvailability.endDateSeconds.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Tvpb_TvAvailability(v2) + 20);
  v4 = *(v1 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Tvpb_TvAvailability._StorageClass();
    OUTLINED_FUNCTION_27_7();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EE04A0(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v6 + 40) = v0;
  return result;
}

uint64_t Tvpb_TvAvailability.endDateSeconds.modify()
{
  v2 = OUTLINED_FUNCTION_196_1();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 80) = v0;
  OUTLINED_FUNCTION_12_12();
  *(v1 + 88) = v4;
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 72) = *(v5 + 40);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8EDC158(uint64_t a1)
{
  OUTLINED_FUNCTION_7_14(a1);
  v3 = *(v1 + 88);
  v4 = *(v1 + 80);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 88);
    v9 = *(v1 + 80);
    type metadata accessor for Tvpb_TvAvailability._StorageClass();
    OUTLINED_FUNCTION_27_7();
    swift_allocObject();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B8EE04A0(v10);
    OUTLINED_FUNCTION_168(v11);
  }

  OUTLINED_FUNCTION_11_4();
  *(v7 + 40) = v2;

  free(v1);
}

void Tvpb_TvAvailability.tvOfferType.getter()
{
  OUTLINED_FUNCTION_12_12();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 56);
  OUTLINED_FUNCTION_66_2(*(v2 + 48));
}

void Tvpb_TvAvailability.tvOfferType.setter()
{
  OUTLINED_FUNCTION_193_0();
  v5 = OUTLINED_FUNCTION_15_10(v4);
  v6 = *(v0 + v3);
  if ((v5 & 1) == 0)
  {
    type metadata accessor for Tvpb_TvAvailability._StorageClass();
    OUTLINED_FUNCTION_27_7();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EE04A0(v7);
    OUTLINED_FUNCTION_72_2(v8);
  }

  OUTLINED_FUNCTION_9_3();
  *(v6 + 48) = v1;
  *(v6 + 56) = v2;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Tvpb_TvAvailability.tvOfferType.modify()
{
  v1 = OUTLINED_FUNCTION_196_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_4_19(v2);
  OUTLINED_FUNCTION_62_0();
  v3 = *(v0 + 56);
  OUTLINED_FUNCTION_71_2(*(v0 + 48));
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8EDC2FC()
{
  OUTLINED_FUNCTION_243();
  v5 = OUTLINED_FUNCTION_4_15(v4);
  v6 = *(v3 + v0);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_51_4();
    OUTLINED_FUNCTION_27_7();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EE04A0(v7);
    OUTLINED_FUNCTION_73_2(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 48) = v1;
  *(v6 + 56) = v2;
  OUTLINED_FUNCTION_242();

  free(v9);
}

uint64_t Tvpb_TvAvailability.webPunchoutURL.getter()
{
  OUTLINED_FUNCTION_12_12();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 64);
  v4 = *(v2 + 72);

  return OUTLINED_FUNCTION_432();
}

void sub_1B8EDC3C4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Tvpb_TvAvailability.webPunchoutURL.setter();
}

void Tvpb_TvAvailability.webPunchoutURL.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_22_10();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Tvpb_TvAvailability._StorageClass();
    OUTLINED_FUNCTION_27_7();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8EE04A0(v6);
    OUTLINED_FUNCTION_135(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 72);
  *(v5 + 64) = v2;
  *(v5 + 72) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Tvpb_TvAvailability.webPunchoutURL.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_9_13(v3);
  OUTLINED_FUNCTION_62_0();
  v4 = *(v0 + 72);
  *(v1 + 48) = *(v0 + 64);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EDC4D0(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Tvpb_TvAvailability.webPunchoutURL.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_58_4();
      OUTLINED_FUNCTION_27_7();
      swift_allocObject();
      v10 = OUTLINED_FUNCTION_40_0();
      v11 = sub_1B8EE04A0(v10);
      OUTLINED_FUNCTION_168(v11);
    }

    OUTLINED_FUNCTION_59_3();
    v12 = *(v9 + 72);
    *(v9 + 64) = v4;
    *(v9 + 72) = v3;
  }

  free(v1);
}

uint64_t Tvpb_TvAvailability.webPlayURL.getter()
{
  OUTLINED_FUNCTION_12_12();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 80);
  v4 = *(v2 + 88);

  return OUTLINED_FUNCTION_432();
}

void sub_1B8EDC5A8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Tvpb_TvAvailability.webPlayURL.setter();
}

void Tvpb_TvAvailability.webPlayURL.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_22_10();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Tvpb_TvAvailability._StorageClass();
    OUTLINED_FUNCTION_27_7();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8EE04A0(v6);
    OUTLINED_FUNCTION_135(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 88);
  *(v5 + 80) = v2;
  *(v5 + 88) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Tvpb_TvAvailability.webPlayURL.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_9_13(v3);
  OUTLINED_FUNCTION_62_0();
  v4 = *(v0 + 88);
  *(v1 + 48) = *(v0 + 80);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EDC6B4(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Tvpb_TvAvailability.webPlayURL.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_58_4();
      OUTLINED_FUNCTION_27_7();
      swift_allocObject();
      v10 = OUTLINED_FUNCTION_40_0();
      v11 = sub_1B8EE04A0(v10);
      OUTLINED_FUNCTION_168(v11);
    }

    OUTLINED_FUNCTION_59_3();
    v12 = *(v9 + 88);
    *(v9 + 80) = v4;
    *(v9 + 88) = v3;
  }

  free(v1);
}

uint64_t Tvpb_TvAvailability.appPunchoutURL.getter()
{
  OUTLINED_FUNCTION_12_12();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 96);
  v4 = *(v2 + 104);

  return OUTLINED_FUNCTION_432();
}

void sub_1B8EDC78C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Tvpb_TvAvailability.appPunchoutURL.setter();
}

void Tvpb_TvAvailability.appPunchoutURL.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_22_10();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Tvpb_TvAvailability._StorageClass();
    OUTLINED_FUNCTION_27_7();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8EE04A0(v6);
    OUTLINED_FUNCTION_135(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 104);
  *(v5 + 96) = v2;
  *(v5 + 104) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Tvpb_TvAvailability.appPunchoutURL.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_9_13(v3);
  OUTLINED_FUNCTION_62_0();
  v4 = *(v0 + 104);
  *(v1 + 48) = *(v0 + 96);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EDC898(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Tvpb_TvAvailability.appPunchoutURL.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_58_4();
      OUTLINED_FUNCTION_27_7();
      swift_allocObject();
      v10 = OUTLINED_FUNCTION_40_0();
      v11 = sub_1B8EE04A0(v10);
      OUTLINED_FUNCTION_168(v11);
    }

    OUTLINED_FUNCTION_59_3();
    v12 = *(v9 + 104);
    *(v9 + 96) = v4;
    *(v9 + 104) = v3;
  }

  free(v1);
}

uint64_t Tvpb_TvAvailability.appPlayURL.getter()
{
  OUTLINED_FUNCTION_12_12();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 112);
  v4 = *(v2 + 120);

  return OUTLINED_FUNCTION_432();
}

void sub_1B8EDC970(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Tvpb_TvAvailability.appPlayURL.setter();
}

void Tvpb_TvAvailability.appPlayURL.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_22_10();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Tvpb_TvAvailability._StorageClass();
    OUTLINED_FUNCTION_27_7();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8EE04A0(v6);
    OUTLINED_FUNCTION_135(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 120);
  *(v5 + 112) = v2;
  *(v5 + 120) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Tvpb_TvAvailability.appPlayURL.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_9_13(v3);
  OUTLINED_FUNCTION_62_0();
  v4 = *(v0 + 120);
  *(v1 + 48) = *(v0 + 112);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EDCA7C(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Tvpb_TvAvailability.appPlayURL.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_58_4();
      OUTLINED_FUNCTION_27_7();
      swift_allocObject();
      v10 = OUTLINED_FUNCTION_40_0();
      v11 = sub_1B8EE04A0(v10);
      OUTLINED_FUNCTION_168(v11);
    }

    OUTLINED_FUNCTION_59_3();
    v12 = *(v9 + 120);
    *(v9 + 112) = v4;
    *(v9 + 120) = v3;
  }

  free(v1);
}

void Tvpb_TvAvailability.tvMediaType.getter()
{
  OUTLINED_FUNCTION_12_12();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 136);
  OUTLINED_FUNCTION_66_2(*(v2 + 128));
}

void Tvpb_TvAvailability.tvMediaType.setter()
{
  OUTLINED_FUNCTION_193_0();
  v5 = OUTLINED_FUNCTION_15_10(v4);
  v6 = *(v0 + v3);
  if ((v5 & 1) == 0)
  {
    type metadata accessor for Tvpb_TvAvailability._StorageClass();
    OUTLINED_FUNCTION_27_7();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EE04A0(v7);
    OUTLINED_FUNCTION_72_2(v8);
  }

  OUTLINED_FUNCTION_9_3();
  *(v6 + 128) = v1;
  *(v6 + 136) = v2;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Tvpb_TvAvailability.tvMediaType.modify()
{
  v1 = OUTLINED_FUNCTION_196_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_4_19(v2);
  OUTLINED_FUNCTION_62_0();
  v3 = *(v0 + 136);
  OUTLINED_FUNCTION_71_2(*(v0 + 128));
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8EDCC18()
{
  OUTLINED_FUNCTION_243();
  v5 = OUTLINED_FUNCTION_4_15(v4);
  v6 = *(v3 + v0);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_51_4();
    OUTLINED_FUNCTION_27_7();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EE04A0(v7);
    OUTLINED_FUNCTION_73_2(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 128) = v1;
  *(v6 + 136) = v2;
  OUTLINED_FUNCTION_242();

  free(v9);
}

uint64_t Tvpb_TvAvailability.searchBrandID.getter()
{
  OUTLINED_FUNCTION_12_12();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 144);
  v4 = *(v2 + 152);

  return OUTLINED_FUNCTION_432();
}

void sub_1B8EDCCE0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Tvpb_TvAvailability.searchBrandID.setter();
}

void Tvpb_TvAvailability.searchBrandID.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_22_10();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Tvpb_TvAvailability._StorageClass();
    OUTLINED_FUNCTION_27_7();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8EE04A0(v6);
    OUTLINED_FUNCTION_135(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 152);
  *(v5 + 144) = v2;
  *(v5 + 152) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Tvpb_TvAvailability.searchBrandID.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_9_13(v3);
  OUTLINED_FUNCTION_62_0();
  v4 = *(v0 + 152);
  *(v1 + 48) = *(v0 + 144);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EDCDEC(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Tvpb_TvAvailability.searchBrandID.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_58_4();
      OUTLINED_FUNCTION_27_7();
      swift_allocObject();
      v10 = OUTLINED_FUNCTION_40_0();
      v11 = sub_1B8EE04A0(v10);
      OUTLINED_FUNCTION_168(v11);
    }

    OUTLINED_FUNCTION_59_3();
    v12 = *(v9 + 152);
    *(v9 + 144) = v4;
    *(v9 + 152) = v3;
  }

  free(v1);
}

void Tvpb_TvAvailability.searchBrandState.getter()
{
  OUTLINED_FUNCTION_12_12();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 168);
  OUTLINED_FUNCTION_66_2(*(v2 + 160));
}

void Tvpb_TvAvailability.searchBrandState.setter()
{
  OUTLINED_FUNCTION_193_0();
  v5 = OUTLINED_FUNCTION_15_10(v4);
  v6 = *(v0 + v3);
  if ((v5 & 1) == 0)
  {
    type metadata accessor for Tvpb_TvAvailability._StorageClass();
    OUTLINED_FUNCTION_27_7();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EE04A0(v7);
    OUTLINED_FUNCTION_72_2(v8);
  }

  OUTLINED_FUNCTION_9_3();
  *(v6 + 160) = v1;
  *(v6 + 168) = v2;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Tvpb_TvAvailability.searchBrandState.modify()
{
  v1 = OUTLINED_FUNCTION_196_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_4_19(v2);
  OUTLINED_FUNCTION_62_0();
  v3 = *(v0 + 168);
  OUTLINED_FUNCTION_71_2(*(v0 + 160));
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8EDCF88()
{
  OUTLINED_FUNCTION_243();
  v5 = OUTLINED_FUNCTION_4_15(v4);
  v6 = *(v3 + v0);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_51_4();
    OUTLINED_FUNCTION_27_7();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EE04A0(v7);
    OUTLINED_FUNCTION_73_2(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 160) = v1;
  *(v6 + 168) = v2;
  OUTLINED_FUNCTION_242();

  free(v9);
}

void Tvpb_TvAvailability.platformIosState.getter()
{
  OUTLINED_FUNCTION_12_12();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 184);
  OUTLINED_FUNCTION_66_2(*(v2 + 176));
}

void Tvpb_TvAvailability.platformIosState.setter()
{
  OUTLINED_FUNCTION_193_0();
  v5 = OUTLINED_FUNCTION_15_10(v4);
  v6 = *(v0 + v3);
  if ((v5 & 1) == 0)
  {
    type metadata accessor for Tvpb_TvAvailability._StorageClass();
    OUTLINED_FUNCTION_27_7();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EE04A0(v7);
    OUTLINED_FUNCTION_72_2(v8);
  }

  OUTLINED_FUNCTION_9_3();
  *(v6 + 176) = v1;
  *(v6 + 184) = v2;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Tvpb_TvAvailability.platformIosState.modify()
{
  v1 = OUTLINED_FUNCTION_196_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_4_19(v2);
  OUTLINED_FUNCTION_62_0();
  v3 = *(v0 + 184);
  OUTLINED_FUNCTION_71_2(*(v0 + 176));
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8EDD114()
{
  OUTLINED_FUNCTION_243();
  v5 = OUTLINED_FUNCTION_4_15(v4);
  v6 = *(v3 + v0);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_51_4();
    OUTLINED_FUNCTION_27_7();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EE04A0(v7);
    OUTLINED_FUNCTION_73_2(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 176) = v1;
  *(v6 + 184) = v2;
  OUTLINED_FUNCTION_242();

  free(v9);
}

void Tvpb_TvAvailability.platformTvosState.getter()
{
  OUTLINED_FUNCTION_12_12();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 200);
  OUTLINED_FUNCTION_66_2(*(v2 + 192));
}

void Tvpb_TvAvailability.platformTvosState.setter()
{
  OUTLINED_FUNCTION_193_0();
  v5 = OUTLINED_FUNCTION_15_10(v4);
  v6 = *(v0 + v3);
  if ((v5 & 1) == 0)
  {
    type metadata accessor for Tvpb_TvAvailability._StorageClass();
    OUTLINED_FUNCTION_27_7();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EE04A0(v7);
    OUTLINED_FUNCTION_72_2(v8);
  }

  OUTLINED_FUNCTION_9_3();
  *(v6 + 192) = v1;
  *(v6 + 200) = v2;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Tvpb_TvAvailability.platformTvosState.modify()
{
  v1 = OUTLINED_FUNCTION_196_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_4_19(v2);
  OUTLINED_FUNCTION_62_0();
  v3 = *(v0 + 200);
  OUTLINED_FUNCTION_71_2(*(v0 + 192));
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8EDD2A0()
{
  OUTLINED_FUNCTION_243();
  v5 = OUTLINED_FUNCTION_4_15(v4);
  v6 = *(v3 + v0);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_51_4();
    OUTLINED_FUNCTION_27_7();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EE04A0(v7);
    OUTLINED_FUNCTION_73_2(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 192) = v1;
  *(v6 + 200) = v2;
  OUTLINED_FUNCTION_242();

  free(v9);
}

void Tvpb_TvAvailability.platformWebState.getter()
{
  OUTLINED_FUNCTION_12_12();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 216);
  OUTLINED_FUNCTION_66_2(*(v2 + 208));
}

void Tvpb_TvAvailability.platformWebState.setter()
{
  OUTLINED_FUNCTION_193_0();
  v5 = OUTLINED_FUNCTION_15_10(v4);
  v6 = *(v0 + v3);
  if ((v5 & 1) == 0)
  {
    type metadata accessor for Tvpb_TvAvailability._StorageClass();
    OUTLINED_FUNCTION_27_7();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EE04A0(v7);
    OUTLINED_FUNCTION_72_2(v8);
  }

  OUTLINED_FUNCTION_9_3();
  *(v6 + 208) = v1;
  *(v6 + 216) = v2;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Tvpb_TvAvailability.platformWebState.modify()
{
  v1 = OUTLINED_FUNCTION_196_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_4_19(v2);
  OUTLINED_FUNCTION_62_0();
  v3 = *(v0 + 216);
  OUTLINED_FUNCTION_71_2(*(v0 + 208));
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8EDD42C()
{
  OUTLINED_FUNCTION_243();
  v5 = OUTLINED_FUNCTION_4_15(v4);
  v6 = *(v3 + v0);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_51_4();
    OUTLINED_FUNCTION_27_7();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EE04A0(v7);
    OUTLINED_FUNCTION_73_2(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 208) = v1;
  *(v6 + 216) = v2;
  OUTLINED_FUNCTION_242();

  free(v9);
}

uint64_t Tvpb_TvAvailability.isMccormickProvider.getter()
{
  OUTLINED_FUNCTION_12_12();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  return *(v2 + 217);
}

uint64_t Tvpb_TvAvailability.isMccormickProvider.setter(char a1)
{
  v4 = OUTLINED_FUNCTION_67_4();
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Tvpb_TvAvailability._StorageClass();
    OUTLINED_FUNCTION_27_7();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8EE04A0(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v5 + 217) = a1 & 1;
  return result;
}

uint64_t Tvpb_TvAvailability.isMccormickProvider.modify()
{
  v2 = __swift_coroFrameAllocStub(0x58uLL);
  *(OUTLINED_FUNCTION_99(v2) + 72) = v0;
  OUTLINED_FUNCTION_12_12();
  *(v1 + 80) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 84) = *(v4 + 217);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8EDD5C4(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_84_3();
    OUTLINED_FUNCTION_27_7();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EE04A0(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 217) = v3;

  free(v1);
}

void Tvpb_TvAvailability.videoQuality.getter()
{
  OUTLINED_FUNCTION_12_12();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 232);
  OUTLINED_FUNCTION_66_2(*(v2 + 224));
}

uint64_t sub_1B8EDD6CC(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  OUTLINED_FUNCTION_94_4();
  return v3(&v5);
}

void Tvpb_TvAvailability.videoQuality.setter()
{
  OUTLINED_FUNCTION_193_0();
  v5 = OUTLINED_FUNCTION_15_10(v4);
  v6 = *(v0 + v3);
  if ((v5 & 1) == 0)
  {
    type metadata accessor for Tvpb_TvAvailability._StorageClass();
    OUTLINED_FUNCTION_27_7();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EE04A0(v7);
    OUTLINED_FUNCTION_72_2(v8);
  }

  OUTLINED_FUNCTION_9_3();
  *(v6 + 224) = v1;
  *(v6 + 232) = v2;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Tvpb_TvAvailability.videoQuality.modify()
{
  v1 = OUTLINED_FUNCTION_196_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_4_19(v2);
  OUTLINED_FUNCTION_62_0();
  v3 = *(v0 + 232);
  OUTLINED_FUNCTION_71_2(*(v0 + 224));
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8EDD7D0()
{
  OUTLINED_FUNCTION_243();
  v5 = OUTLINED_FUNCTION_4_15(v4);
  v6 = *(v3 + v0);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_51_4();
    OUTLINED_FUNCTION_27_7();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EE04A0(v7);
    OUTLINED_FUNCTION_73_2(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 224) = v1;
  *(v6 + 232) = v2;
  OUTLINED_FUNCTION_242();

  free(v9);
}

uint64_t Tvpb_TvAvailability.isStereoContent.getter()
{
  OUTLINED_FUNCTION_12_12();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  return *(v2 + 233);
}

uint64_t Tvpb_TvAvailability.isStereoContent.setter(char a1)
{
  v4 = OUTLINED_FUNCTION_67_4();
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Tvpb_TvAvailability._StorageClass();
    OUTLINED_FUNCTION_27_7();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8EE04A0(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v5 + 233) = a1 & 1;
  return result;
}

uint64_t Tvpb_TvAvailability.isStereoContent.modify()
{
  v2 = __swift_coroFrameAllocStub(0x58uLL);
  *(OUTLINED_FUNCTION_99(v2) + 72) = v0;
  OUTLINED_FUNCTION_12_12();
  *(v1 + 80) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 84) = *(v4 + 233);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8EDD968(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_84_3();
    OUTLINED_FUNCTION_27_7();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EE04A0(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 233) = v3;

  free(v1);
}

uint64_t Tvpb_TvAvailability.isImmersiveContent.getter()
{
  OUTLINED_FUNCTION_12_12();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  return *(v2 + 234);
}

uint64_t Tvpb_TvAvailability.isImmersiveContent.setter(char a1)
{
  v4 = OUTLINED_FUNCTION_67_4();
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Tvpb_TvAvailability._StorageClass();
    OUTLINED_FUNCTION_27_7();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8EE04A0(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v5 + 234) = a1 & 1;
  return result;
}

uint64_t Tvpb_TvAvailability.isImmersiveContent.modify()
{
  v2 = __swift_coroFrameAllocStub(0x58uLL);
  *(OUTLINED_FUNCTION_99(v2) + 72) = v0;
  OUTLINED_FUNCTION_12_12();
  *(v1 + 80) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 84) = *(v4 + 234);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8EDDAFC(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_84_3();
    OUTLINED_FUNCTION_27_7();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EE04A0(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 234) = v3;

  free(v1);
}

uint64_t Tvpb_TvAvailability.unknownFields.getter()
{
  OUTLINED_FUNCTION_27();
  v0 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_432();

  return v4(v3);
}

uint64_t Tvpb_TvAvailability.unknownFields.setter()
{
  OUTLINED_FUNCTION_313();
  v2 = sub_1B964C2B0();
  v3 = OUTLINED_FUNCTION_59_1(v2);
  v5 = *(v4 + 40);

  return v5(v1, v0, v3);
}

uint64_t sub_1B8EDDC78(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8EEA448();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8EDDCF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8EEA3F4();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8EDDD5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8EEA3A0();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8EDDDC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8EEA34C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8EDDE24(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8EEA2F8();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Tvpb_TvAvailability.init()@<X0>(uint64_t a1@<X8>)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v2 = *(type metadata accessor for Tvpb_TvAvailability(0) + 20);
  if (qword_1EBAB65E0 != -1)
  {
    swift_once();
  }

  *(a1 + v2) = qword_1EBABDB20;
}

uint64_t sub_1B8EDDF80@<X0>(uint64_t *a1@<X8>)
{
  result = static Tvpb_TvAvailability.TvOfferType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8EDE030@<X0>(uint64_t *a1@<X8>)
{
  result = static Tvpb_TvAvailability.TvMediaType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8EDE0E0@<X0>(uint64_t *a1@<X8>)
{
  result = static Tvpb_TvAvailability.VideoQuality.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8EDE190@<X0>(uint64_t *a1@<X8>)
{
  result = static Tvpb_TvAvailability.PlatformState.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8EDE240@<X0>(uint64_t *a1@<X8>)
{
  result = static Tvpb_TvAvailability.SearchBrandState.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t Tvpb_CommonSense.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Tvpb_CommonSense(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B8EDE360()
{
  v0 = OUTLINED_FUNCTION_27();
  v2 = *(v1(v0) + 24);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_18_1();

  return v7(v6);
}

uint64_t sub_1B8EDE3E8()
{
  v0 = OUTLINED_FUNCTION_313();
  v2 = *(v1(v0) + 24);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_209();

  return v7(v6);
}

uint64_t Tvpb_ContentRating.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Tvpb_ContentRating(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Tvpb_Child.canonical.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_432();
}

uint64_t Tvpb_Child.canonical.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Tvpb_Child.title.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_432();
}

uint64_t Tvpb_Child.title.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Tvpb_Child.thumbnail.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_432();
}

uint64_t Tvpb_Child.thumbnail.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

void Tvpb_Child.type.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  OUTLINED_FUNCTION_4(a1);
}

uint64_t Tvpb_Child.type.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 56) = *result;
  *(v1 + 64) = v2;
  return result;
}

uint64_t Tvpb_Child.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Tvpb_Child(v0) + 40);
  return OUTLINED_FUNCTION_25();
}

uint64_t Tvpb_Child.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_17_10(a1);
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 64) = 1;
  *(v1 + 68) = 0;
  v2 = v1 + *(type metadata accessor for Tvpb_Child(0) + 40);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Tvpb_Parent.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Tvpb_Parent(v0) + 28);
  return OUTLINED_FUNCTION_25();
}

void Tvpb_CoverArt.type.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  OUTLINED_FUNCTION_4(a1);
}

uint64_t Tvpb_CoverArt.type.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 24) = *result;
  *(v1 + 32) = v2;
  return result;
}

uint64_t Tvpb_CoverArt.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Tvpb_CoverArt(v0) + 32);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B8EDE94C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8EE4BC8();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Tvpb_CoverArt.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  v1 = a1 + *(type metadata accessor for Tvpb_CoverArt(0) + 32);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B8EDEA74@<X0>(uint64_t *a1@<X8>)
{
  result = static Tvpb_CoverArt.AspectRatio.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t Tvpb_Genre.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Tvpb_Genre(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B8EDEC44()
{
  v0 = OUTLINED_FUNCTION_27();
  v2 = *(v1(v0) + 40);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_18_1();

  return v7(v6);
}

uint64_t sub_1B8EDECCC()
{
  v0 = OUTLINED_FUNCTION_313();
  v2 = *(v1(v0) + 40);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_209();

  return v7(v6);
}

uint64_t Tvpb_TrailerV2.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Tvpb_TrailerV2(v0) + 40);
  return OUTLINED_FUNCTION_25();
}

uint64_t Tvpb_TrailerV2.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_17_10(a1);
  v2 = type metadata accessor for Tvpb_TrailerV2(0);
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  v3 = v1 + *(v2 + 40);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Tvpb_CastAndCrew.personInfo.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9260, &unk_1B9664DA0);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - v7;
  v9 = type metadata accessor for Tvpb_CastAndCrew(0);
  sub_1B8EE0AAC(v1 + *(v9 + 32), v8);
  v10 = type metadata accessor for Tvpb_Person(0);
  v11 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v11, v12, v10);
  if (!v13)
  {
    return sub_1B8EE0B3C(v8, a1);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  a1[5] = 0xE000000000000000;
  a1[6] = 0;
  a1[7] = 0xE000000000000000;
  v14 = a1 + *(v10 + 32);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v15 = OUTLINED_FUNCTION_493();
  result = OUTLINED_FUNCTION_178(v15, v16, v10);
  if (!v13)
  {
    return sub_1B8D9207C(v8, &qword_1EBAB9260, &unk_1B9664DA0);
  }

  return result;
}

uint64_t sub_1B8EDEF04(uint64_t a1)
{
  v2 = type metadata accessor for Tvpb_Person(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1B8EE0BA0(a1, &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  return Tvpb_CastAndCrew.personInfo.setter();
}

uint64_t Tvpb_CastAndCrew.personInfo.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Tvpb_CastAndCrew(v2) + 32);
  sub_1B8D9207C(v1 + v3, &qword_1EBAB9260, &unk_1B9664DA0);
  sub_1B8EE0B3C(v0, v1 + v3);
  v4 = type metadata accessor for Tvpb_Person(0);

  return __swift_storeEnumTagSinglePayload(v1 + v3, 0, 1, v4);
}

uint64_t Tvpb_Person.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_17_10(a1);
  *(v1 + 48) = 0;
  *(v1 + 56) = v2;
  v3 = v1 + *(type metadata accessor for Tvpb_Person(0) + 32);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Tvpb_CastAndCrew.personInfo.modify(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9260, &unk_1B9664DA0);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Tvpb_Person(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Tvpb_CastAndCrew(0) + 32);
  *(v3 + 10) = v11;
  sub_1B8EE0AAC(v1 + v11, v6);
  v12 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v12, v13, v7);
  if (v14)
  {
    *v10 = 0;
    v10[1] = 0xE000000000000000;
    v10[2] = 0;
    v10[3] = 0xE000000000000000;
    v10[4] = 0;
    v10[5] = 0xE000000000000000;
    v10[6] = 0;
    v10[7] = 0xE000000000000000;
    v15 = v10 + *(v7 + 32);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v16 = OUTLINED_FUNCTION_493();
    OUTLINED_FUNCTION_178(v16, v17, v7);
    if (!v14)
    {
      sub_1B8D9207C(v6, &qword_1EBAB9260, &unk_1B9664DA0);
    }
  }

  else
  {
    v18 = OUTLINED_FUNCTION_461();
    sub_1B8EE0B3C(v18, v19);
  }

  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8EDF198()
{
  OUTLINED_FUNCTION_243();
  v1 = *(*v0 + 10);
  v2 = (*v0)[3];
  v3 = (*v0)[4];
  v4 = (*v0)[1];
  v5 = (*v0)[2];
  v6 = **v0;
  if (v7)
  {
    sub_1B8EE0BA0((*v0)[4], v2);
    sub_1B8D9207C(v6 + v1, &qword_1EBAB9260, &unk_1B9664DA0);
    sub_1B8EE0B3C(v2, v6 + v1);
    OUTLINED_FUNCTION_30_2();
    sub_1B8EE0C04(v3);
  }

  else
  {
    sub_1B8D9207C(v6 + v1, &qword_1EBAB9260, &unk_1B9664DA0);
    sub_1B8EE0B3C(v3, v6 + v1);
    OUTLINED_FUNCTION_30_2();
  }

  free(v3);
  free(v2);
  free(v4);
  OUTLINED_FUNCTION_242();

  free(v8);
}

uint64_t Tvpb_CastAndCrew.hasPersonInfo.getter()
{
  v1 = OUTLINED_FUNCTION_514();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for Tvpb_CastAndCrew(0);
  sub_1B8EE0AAC(v0 + *(v9 + 32), v8);
  type metadata accessor for Tvpb_Person(0);
  v10 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v10, v11, v12);
  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  sub_1B8D9207C(v8, &qword_1EBAB9260, &unk_1B9664DA0);
  return v14;
}

Swift::Void __swiftcall Tvpb_CastAndCrew.clearPersonInfo()()
{
  v1 = *(type metadata accessor for Tvpb_CastAndCrew(0) + 32);
  sub_1B8D9207C(v0 + v1, &qword_1EBAB9260, &unk_1B9664DA0);
  v2 = type metadata accessor for Tvpb_Person(0);

  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
}

uint64_t sub_1B8EDF3A4()
{
  v0 = OUTLINED_FUNCTION_27();
  v2 = *(v1(v0) + 28);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_18_1();

  return v7(v6);
}

uint64_t sub_1B8EDF42C()
{
  v0 = OUTLINED_FUNCTION_313();
  v2 = *(v1(v0) + 28);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_209();

  return v7(v6);
}

uint64_t Tvpb_CastAndCrew.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Tvpb_CastAndCrew(v0) + 28);
  return OUTLINED_FUNCTION_25();
}

uint64_t Tvpb_CastAndCrew.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_17_10(a1);
  v2 = type metadata accessor for Tvpb_CastAndCrew(0);
  OUTLINED_FUNCTION_101_2(v2);
  v3 = *(v2 + 32);
  v4 = type metadata accessor for Tvpb_Person(0);

  return __swift_storeEnumTagSinglePayload(v1 + v3, 1, 1, v4);
}

uint64_t Tvpb_Person.gender.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_432();
}

uint64_t Tvpb_Person.gender.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t sub_1B8EDF618()
{
  v0 = OUTLINED_FUNCTION_27();
  v2 = *(v1(v0) + 32);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_18_1();

  return v7(v6);
}

uint64_t sub_1B8EDF6A0()
{
  v0 = OUTLINED_FUNCTION_313();
  v2 = *(v1(v0) + 32);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_209();

  return v7(v6);
}

uint64_t Tvpb_Person.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Tvpb_Person(v0) + 32);
  return OUTLINED_FUNCTION_25();
}

void Tvpb_ProgramSignal.type.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  OUTLINED_FUNCTION_4(a1);
}

uint64_t Tvpb_ProgramSignal.type.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t Tvpb_ProgramSignal.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Tvpb_ProgramSignal(v0) + 28);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B8EDF85C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8EE72E0();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Tvpb_ProgramSignal.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v2 = type metadata accessor for Tvpb_ProgramSignal(0);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return OUTLINED_FUNCTION_101_2(v2);
}

uint64_t sub_1B8EDF978@<X0>(uint64_t *a1@<X8>)
{
  result = static Tvpb_ProgramSignal.ProgramSignalType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t Tvpb_LastEpisodeOfSeason.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Tvpb_LastEpisodeOfSeason(v0) + 28);
  return OUTLINED_FUNCTION_25();
}

uint64_t Tvpb_LastSeasonOfShow.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Tvpb_LastSeasonOfShow(v0) + 28);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B8EDFB70@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  v3 = a1(0);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return OUTLINED_FUNCTION_101_2(v3);
}

uint64_t sub_1B8EDFBAC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABDAF0);
  __swift_project_value_buffer(v0, qword_1EBABDAF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "MEDIA_UNKNOWN";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SHOWS";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "EPISODES";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "SEASONS";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8EDFE2C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABDB08);
  __swift_project_value_buffer(v0, qword_1EBABDB08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1B96511A0;
  v4 = v44 + v3;
  v5 = v44 + v3 + v1[14];
  *(v44 + v3) = 1;
  *v5 = "id";
  *(v5 + 8) = 2;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B964C750();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "start_date_seconds";
  *(v9 + 8) = 18;
  *(v9 + 16) = 2;
  v10 = *MEMORY[0x1E69AADE8];
  v8();
  v11 = (v4 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "end_date_seconds";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v8();
  v13 = (v4 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "tv_offer_type";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v8();
  v15 = (v4 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "web_punchout_url";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v8();
  v17 = (v4 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "web_play_url";
  *(v18 + 1) = 12;
  v18[16] = 2;
  v8();
  v19 = (v4 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "app_punchout_url";
  *(v20 + 1) = 16;
  v20[16] = 2;
  v8();
  v21 = (v4 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "app_play_url";
  *(v22 + 1) = 12;
  v22[16] = 2;
  v8();
  v23 = (v4 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "tv_media_type";
  *(v24 + 1) = 13;
  v24[16] = 2;
  v8();
  v25 = (v4 + 9 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "search_brand_id";
  *(v26 + 1) = 15;
  v26[16] = 2;
  v8();
  v27 = (v4 + 10 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "search_brand_state";
  *(v28 + 1) = 18;
  v28[16] = 2;
  v8();
  v29 = (v4 + 11 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "platform_ios_state";
  *(v30 + 1) = 18;
  v30[16] = 2;
  v8();
  v31 = (v4 + 12 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "platform_tvos_state";
  *(v32 + 1) = 19;
  v32[16] = 2;
  v8();
  v33 = (v4 + 13 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "platform_web_state";
  *(v34 + 1) = 18;
  v34[16] = 2;
  v8();
  v35 = (v4 + 14 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "is_mccormick_provider";
  *(v36 + 1) = 21;
  v36[16] = 2;
  v8();
  v37 = (v4 + 15 * v2);
  v38 = v37 + v1[14];
  *v37 = 16;
  *v38 = "video_quality";
  *(v38 + 1) = 13;
  v38[16] = 2;
  v8();
  v39 = (v4 + 16 * v2);
  v40 = v39 + v1[14];
  *v39 = 17;
  *v40 = "is_stereo_content";
  *(v40 + 1) = 17;
  v40[16] = 2;
  v8();
  v41 = (v4 + 17 * v2);
  v42 = v41 + v1[14];
  *v41 = 18;
  *v42 = "is_immersive_content";
  *(v42 + 1) = 20;
  v42[16] = 2;
  v8();
  return sub_1B964C760();
}

uint64_t sub_1B8EE03F8()
{
  type metadata accessor for Tvpb_TvAvailability._StorageClass();
  swift_allocObject();
  result = sub_1B8EE0438();
  qword_1EBABDB20 = result;
  return result;
}

uint64_t sub_1B8EE0438()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 32) = 0;
  *(v0 + 56) = 1;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0xE000000000000000;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0xE000000000000000;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0xE000000000000000;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0xE000000000000000;
  *(v0 + 128) = 0;
  *(v0 + 136) = 1;
  *(v0 + 144) = 0;
  *(v0 + 152) = 0xE000000000000000;
  *(v0 + 160) = 0;
  *(v0 + 168) = 1;
  *(v0 + 176) = 0;
  *(v0 + 184) = 1;
  *(v0 + 192) = 0;
  *(v0 + 200) = 1;
  *(v0 + 208) = 0;
  *(v0 + 216) = 1;
  *(v0 + 224) = 0;
  *(v0 + 232) = 1;
  *(v0 + 233) = 0;
  return result;
}

uint64_t sub_1B8EE04A0(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  *(v1 + 48) = 0;
  *(v1 + 40) = 0;
  *(v1 + 32) = 0;
  *(v1 + 56) = 1;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0xE000000000000000;
  *(v1 + 80) = 0;
  *(v1 + 88) = 0xE000000000000000;
  *(v1 + 96) = 0;
  *(v1 + 104) = 0xE000000000000000;
  *(v1 + 112) = 0;
  *(v1 + 120) = 0xE000000000000000;
  *(v1 + 128) = 0;
  *(v1 + 136) = 1;
  *(v1 + 144) = 0;
  *(v1 + 152) = 0xE000000000000000;
  *(v1 + 160) = 0;
  *(v1 + 168) = 1;
  *(v1 + 176) = 0;
  *(v1 + 184) = 1;
  *(v1 + 192) = 0;
  *(v1 + 200) = 1;
  *(v1 + 208) = 0;
  *(v1 + 216) = 1;
  *(v1 + 224) = 0;
  *(v1 + 232) = 1;
  *(v1 + 233) = 0;
  swift_beginAccess();
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  swift_beginAccess();
  v5 = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 32) = v5;
  swift_beginAccess();
  v6 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 40) = v6;
  swift_beginAccess();
  v7 = *(a1 + 48);
  LOBYTE(v3) = *(a1 + 56);
  swift_beginAccess();
  *(v1 + 48) = v7;
  *(v1 + 56) = v3;
  swift_beginAccess();
  v9 = *(a1 + 64);
  v8 = *(a1 + 72);
  swift_beginAccess();
  *(v1 + 64) = v9;
  *(v1 + 72) = v8;

  swift_beginAccess();
  v11 = *(a1 + 80);
  v10 = *(a1 + 88);
  swift_beginAccess();
  v12 = *(v1 + 88);
  *(v1 + 80) = v11;
  *(v1 + 88) = v10;

  swift_beginAccess();
  v14 = *(a1 + 96);
  v13 = *(a1 + 104);
  swift_beginAccess();
  v15 = *(v1 + 104);
  *(v1 + 96) = v14;
  *(v1 + 104) = v13;

  swift_beginAccess();
  v17 = *(a1 + 112);
  v16 = *(a1 + 120);
  swift_beginAccess();
  v18 = *(v1 + 120);
  *(v1 + 112) = v17;
  *(v1 + 120) = v16;

  swift_beginAccess();
  v19 = *(a1 + 128);
  LOBYTE(v18) = *(a1 + 136);
  swift_beginAccess();
  *(v1 + 128) = v19;
  *(v1 + 136) = v18;
  swift_beginAccess();
  v21 = *(a1 + 144);
  v20 = *(a1 + 152);
  swift_beginAccess();
  v22 = *(v1 + 152);
  *(v1 + 144) = v21;
  *(v1 + 152) = v20;

  swift_beginAccess();
  v23 = *(a1 + 160);
  LOBYTE(v22) = *(a1 + 168);
  swift_beginAccess();
  *(v1 + 160) = v23;
  *(v1 + 168) = v22;
  swift_beginAccess();
  v24 = *(a1 + 176);
  LOBYTE(v22) = *(a1 + 184);
  swift_beginAccess();
  *(v1 + 176) = v24;
  *(v1 + 184) = v22;
  swift_beginAccess();
  v25 = *(a1 + 192);
  LOBYTE(v22) = *(a1 + 200);
  swift_beginAccess();
  *(v1 + 192) = v25;
  *(v1 + 200) = v22;
  swift_beginAccess();
  v26 = *(a1 + 208);
  LOBYTE(v22) = *(a1 + 216);
  swift_beginAccess();
  *(v1 + 208) = v26;
  *(v1 + 216) = v22;
  swift_beginAccess();
  LOBYTE(v26) = *(a1 + 217);
  swift_beginAccess();
  *(v1 + 217) = v26;
  swift_beginAccess();
  v27 = *(a1 + 224);
  LOBYTE(v22) = *(a1 + 232);
  swift_beginAccess();
  *(v1 + 224) = v27;
  *(v1 + 232) = v22;
  swift_beginAccess();
  LOBYTE(v27) = *(a1 + 233);
  swift_beginAccess();
  *(v1 + 233) = v27;
  swift_beginAccess();
  LOBYTE(v27) = *(a1 + 234);

  swift_beginAccess();
  *(v1 + 234) = v27;
  return v1;
}

uint64_t sub_1B8EE0AAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9260, &unk_1B9664DA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8EE0B3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Tvpb_Person(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8EE0BA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Tvpb_Person(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8EE0C04(uint64_t a1)
{
  v2 = type metadata accessor for Tvpb_Person(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1B8EE0CC0()
{
  v1 = v0[3];

  v2 = v0[9];

  v3 = v0[11];

  v4 = v0[13];

  v5 = v0[15];

  v6 = v0[19];

  return v0;
}

uint64_t sub_1B8EE0D08()
{
  v0 = sub_1B8EE0CC0();

  return MEMORY[0x1EEE6BDC0](v0, 235, 7);
}

uint64_t Tvpb_TvAvailability.decodeMessage<A>(decoder:)()
{
  v1 = v0;
  v2 = *(type metadata accessor for Tvpb_TvAvailability(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Tvpb_TvAvailability._StorageClass();
    OUTLINED_FUNCTION_27_7();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    *(v1 + v2) = sub_1B8EE04A0(v6);
  }

  return sub_1B8EE0DD4();
}

uint64_t sub_1B8EE0DD4()
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1B8DAA85C();
        break;
      case 2:
        sub_1B8EA7230();
        break;
      case 3:
        sub_1B8EA72B4();
        break;
      case 4:
        sub_1B8EE103C();
        break;
      case 5:
        sub_1B8E16ACC();
        break;
      case 6:
        sub_1B8E16B50();
        break;
      case 7:
        sub_1B8E16BD4();
        break;
      case 8:
        sub_1B8E2F858();
        break;
      case 9:
        sub_1B8EE10D0();
        break;
      case 10:
        sub_1B8E88CF0();
        break;
      case 11:
        sub_1B8EE1164();
        break;
      case 12:
        sub_1B8EE11F8();
        break;
      case 13:
        sub_1B8EE128C();
        break;
      case 14:
        sub_1B8EE1320();
        break;
      case 15:
        sub_1B8EE13B4();
        break;
      case 16:
        sub_1B8EE1438();
        break;
      case 17:
        sub_1B8EE14CC();
        break;
      case 18:
        sub_1B8EE1550();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8EE103C()
{
  swift_beginAccess();
  sub_1B8EEA448();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B8EE10D0()
{
  swift_beginAccess();
  sub_1B8EEA3F4();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B8EE1164()
{
  swift_beginAccess();
  sub_1B8EEA2F8();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B8EE11F8()
{
  swift_beginAccess();
  sub_1B8EEA34C();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B8EE128C()
{
  swift_beginAccess();
  sub_1B8EEA34C();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B8EE1320()
{
  swift_beginAccess();
  sub_1B8EEA34C();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B8EE13B4()
{
  swift_beginAccess();
  sub_1B964C400();
  return swift_endAccess();
}

uint64_t sub_1B8EE1438()
{
  swift_beginAccess();
  sub_1B8EEA3A0();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B8EE14CC()
{
  swift_beginAccess();
  sub_1B964C400();
  return swift_endAccess();
}

uint64_t sub_1B8EE1550()
{
  swift_beginAccess();
  sub_1B964C400();
  return swift_endAccess();
}

uint64_t Tvpb_TvAvailability.traverse<A>(visitor:)()
{
  v2 = *(v0 + *(type metadata accessor for Tvpb_TvAvailability(0) + 20));
  OUTLINED_FUNCTION_12();
  result = sub_1B8EE1638(v3);
  if (!v1)
  {
    OUTLINED_FUNCTION_186();
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B8EE1638(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 24);
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *(a1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    v5 = *(a1 + 24);

    sub_1B964C700();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  if (!*(a1 + 32) || (result = sub_1B964C6D0(), !v1))
  {
    swift_beginAccess();
    if (!*(a1 + 40) || (result = sub_1B964C6D0(), !v1))
    {
      swift_beginAccess();
      if (!*(a1 + 48) || (v34 = *(a1 + 48), v35 = *(a1 + 56), sub_1B8EEA448(), result = sub_1B964C680(), !v1))
      {
        swift_beginAccess();
        v7 = *(a1 + 72);
        v8 = HIBYTE(v7) & 0xF;
        if ((v7 & 0x2000000000000000) == 0)
        {
          v8 = *(a1 + 64) & 0xFFFFFFFFFFFFLL;
        }

        if (v8)
        {
          v9 = *(a1 + 72);

          sub_1B964C700();
          if (v1)
          {
          }
        }

        swift_beginAccess();
        v10 = *(a1 + 88);
        v11 = HIBYTE(v10) & 0xF;
        if ((v10 & 0x2000000000000000) == 0)
        {
          v11 = *(a1 + 80) & 0xFFFFFFFFFFFFLL;
        }

        if (v11)
        {
          v12 = *(a1 + 88);

          sub_1B964C700();
          if (v1)
          {
          }
        }

        swift_beginAccess();
        v13 = *(a1 + 104);
        v14 = HIBYTE(v13) & 0xF;
        if ((v13 & 0x2000000000000000) == 0)
        {
          v14 = *(a1 + 96) & 0xFFFFFFFFFFFFLL;
        }

        if (v14)
        {
          v15 = *(a1 + 104);

          sub_1B964C700();
          if (v1)
          {
          }
        }

        swift_beginAccess();
        v16 = *(a1 + 120);
        v17 = HIBYTE(v16) & 0xF;
        if ((v16 & 0x2000000000000000) == 0)
        {
          v17 = *(a1 + 112) & 0xFFFFFFFFFFFFLL;
        }

        if (v17)
        {
          v18 = *(a1 + 120);

          sub_1B964C700();
          if (v1)
          {
          }
        }

        swift_beginAccess();
        if (!*(a1 + 128) || (v32 = *(a1 + 128), v33 = *(a1 + 136), sub_1B8EEA3F4(), result = sub_1B964C680(), !v1))
        {
          swift_beginAccess();
          v19 = *(a1 + 152);
          v20 = HIBYTE(v19) & 0xF;
          if ((v19 & 0x2000000000000000) == 0)
          {
            v20 = *(a1 + 144) & 0xFFFFFFFFFFFFLL;
          }

          if (!v20 || (v21 = *(a1 + 152), , sub_1B964C700(), result = , !v1))
          {
            swift_beginAccess();
            if (!*(a1 + 160) || (v30 = *(a1 + 160), v31 = *(a1 + 168), sub_1B8EEA2F8(), result = sub_1B964C680(), !v1))
            {
              swift_beginAccess();
              if (!*(a1 + 176) || (v28 = *(a1 + 176), v29 = *(a1 + 184), sub_1B8EEA34C(), result = sub_1B964C680(), !v1))
              {
                swift_beginAccess();
                if (!*(a1 + 192) || (v26 = *(a1 + 192), v27 = *(a1 + 200), sub_1B8EEA34C(), result = sub_1B964C680(), !v1))
                {
                  swift_beginAccess();
                  if (!*(a1 + 208) || (v24 = *(a1 + 208), v25 = *(a1 + 216), sub_1B8EEA34C(), result = sub_1B964C680(), !v1))
                  {
                    swift_beginAccess();
                    if (*(a1 + 217) != 1 || (result = sub_1B964C670(), !v1))
                    {
                      swift_beginAccess();
                      if (!*(a1 + 224) || (v22 = *(a1 + 224), v23 = *(a1 + 232), sub_1B8EEA3A0(), result = sub_1B964C680(), !v1))
                      {
                        swift_beginAccess();
                        if (*(a1 + 233) != 1 || (result = sub_1B964C670(), !v1))
                        {
                          result = swift_beginAccess();
                          if (*(a1 + 234) == 1)
                          {
                            return sub_1B964C670();
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

  return result;
}

uint64_t static Tvpb_TvAvailability.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_12_12();
  if (*(v1 + v2) != *(v0 + v2) && (sub_1B8EE1D08() & 1) == 0)
  {
    return 0;
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_32();
  sub_1B8CD22E8(v3, v4);
  return sub_1B964C850() & 1;
}

uint64_t sub_1B8EE1D08()
{
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_521();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  OUTLINED_FUNCTION_521();
  v4 = v2 == *(v0 + 16) && v3 == *(v0 + 24);
  if (!v4 && (OUTLINED_FUNCTION_22_8() & 1) == 0)
  {
    goto LABEL_42;
  }

  OUTLINED_FUNCTION_521();
  v5 = *(v1 + 32);
  OUTLINED_FUNCTION_521();
  if (v5 != *(v0 + 32))
  {
    goto LABEL_42;
  }

  OUTLINED_FUNCTION_521();
  v6 = *(v1 + 40);
  OUTLINED_FUNCTION_521();
  if (v6 != *(v0 + 40))
  {
    goto LABEL_42;
  }

  OUTLINED_FUNCTION_521();
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  OUTLINED_FUNCTION_521();
  v9 = *(v0 + 48);
  v10 = *(v0 + 56);
  v11 = OUTLINED_FUNCTION_303();
  if (!sub_1B8D92198(v11, v12, v13))
  {
    goto LABEL_42;
  }

  OUTLINED_FUNCTION_521();
  v14 = *(v1 + 64);
  v15 = *(v1 + 72);
  OUTLINED_FUNCTION_521();
  v16 = v14 == *(v0 + 64) && v15 == *(v0 + 72);
  if (!v16 && (OUTLINED_FUNCTION_22_8() & 1) == 0)
  {
    goto LABEL_42;
  }

  OUTLINED_FUNCTION_521();
  v17 = *(v1 + 80);
  v18 = *(v1 + 88);
  OUTLINED_FUNCTION_521();
  v19 = v17 == *(v0 + 80) && v18 == *(v0 + 88);
  if (!v19 && (OUTLINED_FUNCTION_22_8() & 1) == 0)
  {
    goto LABEL_42;
  }

  OUTLINED_FUNCTION_521();
  v20 = *(v1 + 96);
  v21 = *(v1 + 104);
  OUTLINED_FUNCTION_521();
  v22 = v20 == *(v0 + 96) && v21 == *(v0 + 104);
  if (!v22 && (OUTLINED_FUNCTION_22_8() & 1) == 0)
  {
    goto LABEL_42;
  }

  OUTLINED_FUNCTION_521();
  v23 = *(v1 + 112);
  v24 = *(v1 + 120);
  OUTLINED_FUNCTION_521();
  v25 = v23 == *(v0 + 112) && v24 == *(v0 + 120);
  if (!v25 && (OUTLINED_FUNCTION_22_8() & 1) == 0)
  {
    goto LABEL_42;
  }

  OUTLINED_FUNCTION_521();
  v26 = *(v1 + 128);
  v27 = *(v1 + 136);
  OUTLINED_FUNCTION_521();
  v28 = *(v0 + 128);
  v29 = *(v0 + 136);
  v30 = OUTLINED_FUNCTION_303();
  if (!sub_1B8D92198(v30, v31, v32))
  {
    goto LABEL_42;
  }

  OUTLINED_FUNCTION_521();
  v33 = *(v1 + 144);
  v34 = *(v1 + 152);
  OUTLINED_FUNCTION_521();
  v35 = v33 == *(v0 + 144) && v34 == *(v0 + 152);
  if (!v35 && (OUTLINED_FUNCTION_22_8() & 1) == 0)
  {
    goto LABEL_42;
  }

  OUTLINED_FUNCTION_521();
  v36 = *(v1 + 160);
  v37 = *(v1 + 168);
  OUTLINED_FUNCTION_521();
  v38 = *(v0 + 160);
  v39 = *(v0 + 168);
  v40 = OUTLINED_FUNCTION_303();
  if (!sub_1B8D92198(v40, v41, v42))
  {
    goto LABEL_42;
  }

  OUTLINED_FUNCTION_521();
  v43 = *(v1 + 176);
  v44 = *(v1 + 184);
  OUTLINED_FUNCTION_521();
  v45 = *(v0 + 176);
  v46 = *(v0 + 184);
  v47 = OUTLINED_FUNCTION_303();
  if (!sub_1B8D92198(v47, v48, v49))
  {
    goto LABEL_42;
  }

  OUTLINED_FUNCTION_521();
  v50 = *(v1 + 192);
  v51 = *(v1 + 200);
  OUTLINED_FUNCTION_521();
  v52 = *(v0 + 192);
  v53 = *(v0 + 200);
  v54 = OUTLINED_FUNCTION_303();
  if (!sub_1B8D92198(v54, v55, v56))
  {
    goto LABEL_42;
  }

  OUTLINED_FUNCTION_521();
  v57 = *(v1 + 208);
  v58 = *(v1 + 216);
  OUTLINED_FUNCTION_521();
  v59 = *(v0 + 208);
  v60 = *(v0 + 216);
  v61 = OUTLINED_FUNCTION_303();
  if (!sub_1B8D92198(v61, v62, v63))
  {
    goto LABEL_42;
  }

  OUTLINED_FUNCTION_521();
  v64 = *(v1 + 217);
  OUTLINED_FUNCTION_521();
  if (v64 != *(v0 + 217))
  {
    goto LABEL_42;
  }

  OUTLINED_FUNCTION_521();
  v65 = *(v1 + 224);
  v66 = *(v1 + 232);
  OUTLINED_FUNCTION_521();
  v67 = *(v0 + 224);
  v68 = *(v0 + 232);
  v69 = OUTLINED_FUNCTION_303();
  if (!sub_1B8D92198(v69, v70, v71))
  {
    goto LABEL_42;
  }

  OUTLINED_FUNCTION_521();
  v72 = *(v1 + 233);
  OUTLINED_FUNCTION_521();
  if (v72 == *(v0 + 233))
  {
    OUTLINED_FUNCTION_521();
    v75 = *(v1 + 234);
    OUTLINED_FUNCTION_521();
    v73 = v75 ^ *(v0 + 234) ^ 1;
  }

  else
  {
LABEL_42:
    v73 = 0;
  }

  return v73 & 1;
}

uint64_t sub_1B8EE215C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD22E8(&qword_1EBABE090, type metadata accessor for Tvpb_TvAvailability);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8EE21DC(uint64_t a1)
{
  v2 = sub_1B8CD22E8(&qword_1EBABD810, type metadata accessor for Tvpb_TvAvailability);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8EE224C()
{
  sub_1B8CD22E8(&qword_1EBABD810, type metadata accessor for Tvpb_TvAvailability);

  return sub_1B964C5D0();
}

uint64_t sub_1B8EE22CC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABDB28);
  __swift_project_value_buffer(v0, qword_1EBABDB28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE80;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "UNSPECIFIED";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "FREE";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "RENT";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "BUY";
  *(v14 + 1) = 3;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "SUBSCRIPTION";
  *(v16 + 1) = 12;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "PRE_ORDER";
  *(v18 + 1) = 9;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "FREE_WITH_ACCOUNT";
  *(v20 + 1) = 17;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "SERVICE";
  *(v22 + 1) = 7;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 8;
  *v24 = "COMING_SOON";
  *(v24 + 1) = 11;
  v24[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8EE2660()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABDB40);
  __swift_project_value_buffer(v0, qword_1EBABDB40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "MEDIA_UNKNOWN";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SHOWS";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "EPISODES";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "SEASONS";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "MOVIES";
  *(v16 + 1) = 6;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8EE2908()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABDB58);
  __swift_project_value_buffer(v0, qword_1EBABDB58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "QUALITY_UNKNOWN";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SD";
  *(v10 + 8) = 2;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "HD";
  *(v12 + 1) = 2;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "UHD";
  *(v14 + 1) = 3;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8EE2B64()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABDB70);
  __swift_project_value_buffer(v0, qword_1EBABDB70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "VOD_STATE_UNKNOWN";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "VOD_SERVICE_ON";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "VOD_SERVICE_OFF";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "VOD_SERVICE_TEST_MODE";
  *(v14 + 1) = 21;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8EE2DCC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABDB88);
  __swift_project_value_buffer(v0, qword_1EBABDB88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "STATE_UNKNOWN";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SEARCH_BRAND_LIVE";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "SEARCH_BRAND_PENDING_APPLE_REVIEW";
  *(v12 + 1) = 33;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8EE3010()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABDBA0);
  __swift_project_value_buffer(v0, qword_1EBABDBA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "age";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "url";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8EE32CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD22E8(&qword_1EBABE088, type metadata accessor for Tvpb_CommonSense);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8EE334C(uint64_t a1)
{
  v2 = sub_1B8CD22E8(&qword_1EBABD840, type metadata accessor for Tvpb_CommonSense);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8EE33BC()
{
  sub_1B8CD22E8(&qword_1EBABD840, type metadata accessor for Tvpb_CommonSense);

  return sub_1B964C5D0();
}

uint64_t sub_1B8EE3454()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABDBB8);
  __swift_project_value_buffer(v0, qword_1EBABDBB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "content_rating_system";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "content_rating_value";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8EE366C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_1_15();
  if (!v7 || (result = OUTLINED_FUNCTION_3(), !v4))
  {
    v9 = *(v5 + 16);
    v10 = *(v5 + 24);
    OUTLINED_FUNCTION_1();
    if (!v11 || (result = OUTLINED_FUNCTION_3(), !v4))
    {
      v12 = *(a4(0) + 24);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t sub_1B8EE3798(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD22E8(&qword_1EBABE080, type metadata accessor for Tvpb_ContentRating);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8EE3818(uint64_t a1)
{
  v2 = sub_1B8CD22E8(&qword_1EBABD848, type metadata accessor for Tvpb_ContentRating);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8EE3888()
{
  sub_1B8CD22E8(&qword_1EBABD848, type metadata accessor for Tvpb_ContentRating);

  return sub_1B964C5D0();
}

uint64_t sub_1B8EE3924()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABDBD0);
  __swift_project_value_buffer(v0, qword_1EBABDBD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1B964E4A0;
  v4 = v20 + v3;
  v5 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v5 = "canonical";
  *(v5 + 8) = 9;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B964C750();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "title";
  *(v9 + 8) = 5;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "thumbnail";
  *(v11 + 1) = 9;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "number";
  *(v13 + 1) = 6;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "type";
  *(v15 + 1) = 4;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "number_float";
  *(v17 + 1) = 12;
  v17[16] = 2;
  v18 = *MEMORY[0x1E69AADE8];
  v8();
  return sub_1B964C760();
}

uint64_t Tvpb_Child.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C4A0();
        break;
      case 5:
        OUTLINED_FUNCTION_9();
        sub_1B8EE3CC0();
        break;
      case 6:
        OUTLINED_FUNCTION_12();
        sub_1B964C490();
        break;
      default:
        continue;
    }
  }
}

uint64_t Tvpb_Child.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_15();
  if (!v2 || (result = OUTLINED_FUNCTION_3(), !v0))
  {
    v4 = *(v1 + 16);
    v5 = *(v1 + 24);
    OUTLINED_FUNCTION_1();
    if (!v6 || (result = OUTLINED_FUNCTION_3(), !v0))
    {
      v7 = *(v1 + 32);
      v8 = *(v1 + 40);
      OUTLINED_FUNCTION_1();
      if (!v9 || (result = OUTLINED_FUNCTION_3(), !v0))
      {
        if (!*(v1 + 48) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v0))
        {
          if (!*(v1 + 56) || (v10 = *(v1 + 64), OUTLINED_FUNCTION_94_4(), sub_1B8ECFFBC(), OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_89_2(), result = sub_1B964C680(), !v0))
          {
            if (*(v1 + 68) == 0.0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_12(), result = sub_1B964C6B0(), !v0))
            {
              v11 = *(type metadata accessor for Tvpb_Child(0) + 40);
              return OUTLINED_FUNCTION_8_1();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Tvpb_Child.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_17_1(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v9 = v6 && v7 == v8;
  if (!v9 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_40_5();
  v12 = v6 && v10 == v11;
  if (!v12 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  if (*(v3 + 48) != *(v2 + 48))
  {
    return 0;
  }

  v13 = *(v2 + 64);
  if (!sub_1B8D92198(*(v3 + 56), *(v3 + 64), *(v2 + 56)) || *(v3 + 68) != *(v2 + 68))
  {
    return 0;
  }

  v14 = *(type metadata accessor for Tvpb_Child(0) + 40);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_32();
  sub_1B8CD22E8(v15, v16);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B8EE3FD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD22E8(&qword_1EBABE078, type metadata accessor for Tvpb_Child);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8EE4054(uint64_t a1)
{
  v2 = sub_1B8CD22E8(&qword_1EBABD818, type metadata accessor for Tvpb_Child);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8EE40C4()
{
  sub_1B8CD22E8(&qword_1EBABD818, type metadata accessor for Tvpb_Child);

  return sub_1B964C5D0();
}

uint64_t sub_1B8EE4164()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABDBE8);
  __swift_project_value_buffer(v0, qword_1EBABDBE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "canonical";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "title";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "thumbnail";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Tvpb_Parent.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t Tvpb_Parent.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_15();
  if (!v2 || (result = OUTLINED_FUNCTION_3(), !v0))
  {
    v4 = v1[2];
    v5 = v1[3];
    OUTLINED_FUNCTION_1();
    if (!v6 || (result = OUTLINED_FUNCTION_3(), !v0))
    {
      v7 = v1[4];
      v8 = v1[5];
      OUTLINED_FUNCTION_1();
      if (!v9 || (result = OUTLINED_FUNCTION_3(), !v0))
      {
        v10 = *(type metadata accessor for Tvpb_Parent(0) + 28);
        return OUTLINED_FUNCTION_8_1();
      }
    }
  }

  return result;
}

uint64_t static Tvpb_Parent.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_17_1(a1, a2);
  v4 = v4 && v2 == v3;
  if (!v4 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v7 = v4 && v5 == v6;
  if (!v7 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_40_5();
  v10 = v4 && v8 == v9;
  if (!v10 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v11 = *(type metadata accessor for Tvpb_Parent(0) + 28);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_32();
  sub_1B8CD22E8(v12, v13);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B8EE45F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD22E8(&qword_1EBABE070, type metadata accessor for Tvpb_Parent);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8EE4670(uint64_t a1)
{
  v2 = sub_1B8CD22E8(&qword_1EBABD838, type metadata accessor for Tvpb_Parent);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8EE46E0()
{
  sub_1B8CD22E8(&qword_1EBABD838, type metadata accessor for Tvpb_Parent);

  return sub_1B964C5D0();
}

uint64_t sub_1B8EE4784()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABDC00);
  __swift_project_value_buffer(v0, qword_1EBABDC00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "url";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "width";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "height";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "type";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Tvpb_CoverArt.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 2:
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C4A0();
        break;
      case 4:
        OUTLINED_FUNCTION_9();
        sub_1B8EE4A88();
        break;
      default:
        continue;
    }
  }
}

uint64_t Tvpb_CoverArt.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_15();
  if (!v2 || (result = OUTLINED_FUNCTION_3(), !v0))
  {
    if (!*(v1 + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v0))
    {
      if (!*(v1 + 20) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v0))
      {
        if (!*(v1 + 24) || (v4 = *(v1 + 32), OUTLINED_FUNCTION_94_4(), sub_1B8EE4BC8(), OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_89_2(), result = sub_1B964C680(), !v0))
        {
          v5 = *(type metadata accessor for Tvpb_CoverArt(0) + 32);
          return OUTLINED_FUNCTION_8_1();
        }
      }
    }
  }

  return result;
}

unint64_t sub_1B8EE4BC8()
{
  result = qword_1EBABDD18;
  if (!qword_1EBABDD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABDD18);
  }

  return result;
}

uint64_t static Tvpb_CoverArt.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_17_1(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  if (*(v3 + 16) != *(v2 + 16))
  {
    return 0;
  }

  if (*(v3 + 20) != *(v2 + 20))
  {
    return 0;
  }

  v7 = *(v2 + 32);
  if (!sub_1B8D92198(*(v3 + 24), *(v3 + 32), *(v2 + 24)))
  {
    return 0;
  }

  v8 = *(type metadata accessor for Tvpb_CoverArt(0) + 32);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_32();
  sub_1B8CD22E8(v9, v10);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B8EE4D84(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD22E8(&qword_1EBABE068, type metadata accessor for Tvpb_CoverArt);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8EE4E04(uint64_t a1)
{
  v2 = sub_1B8CD22E8(&qword_1EBABD828, type metadata accessor for Tvpb_CoverArt);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8EE4E74()
{
  sub_1B8CD22E8(&qword_1EBABD828, type metadata accessor for Tvpb_CoverArt);

  return sub_1B964C5D0();
}

uint64_t sub_1B8EE4EF4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABDC18);
  __swift_project_value_buffer(v0, qword_1EBABDC18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "UNKNOWN";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SIXTEEN_BY_NINE";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "SQUARE";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8EE513C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABDC30);
  __swift_project_value_buffer(v0, qword_1EBABDC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "localizedGenre";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "genreCategory";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8EE5384(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  OUTLINED_FUNCTION_17_1(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v9 = v6 && v7 == v8;
  if (!v9 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v10 = *(a3(0) + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_32();
  sub_1B8CD22E8(v11, v12);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B8EE54B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD22E8(&qword_1EBABE060, type metadata accessor for Tvpb_Genre);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8EE5534(uint64_t a1)
{
  v2 = sub_1B8CD22E8(&qword_1EBABD830, type metadata accessor for Tvpb_Genre);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8EE55A4()
{
  sub_1B8CD22E8(&qword_1EBABD830, type metadata accessor for Tvpb_Genre);

  return sub_1B964C5D0();
}

uint64_t sub_1B8EE5648()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABDC48);
  __swift_project_value_buffer(v0, qword_1EBABDC48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "canonical_id";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "thumbnail";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "title";
  *(v13 + 1) = 5;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "availability_start";
  *(v15 + 1) = 18;
  v15[16] = 2;
  v9();
  v16 = (v5 + 4 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "availability_end";
  *(v17 + 1) = 16;
  v17[16] = 2;
  v9();
  v18 = (v5 + 5 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "order";
  *(v19 + 1) = 5;
  v19[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Tvpb_TrailerV2.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 4:
      case 5:
        OUTLINED_FUNCTION_12();
        sub_1B964C4B0();
        break;
      case 6:
        OUTLINED_FUNCTION_12();
        sub_1B964C4A0();
        break;
      default:
        continue;
    }
  }
}

uint64_t Tvpb_TrailerV2.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_15();
  if (!v2 || (result = OUTLINED_FUNCTION_3(), !v0))
  {
    v4 = *(v1 + 16);
    v5 = *(v1 + 24);
    OUTLINED_FUNCTION_1();
    if (!v6 || (result = OUTLINED_FUNCTION_3(), !v0))
    {
      v7 = *(v1 + 32);
      v8 = *(v1 + 40);
      OUTLINED_FUNCTION_1();
      if (!v9 || (result = OUTLINED_FUNCTION_3(), !v0))
      {
        if (!*(v1 + 48) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6D0(), !v0))
        {
          if (!*(v1 + 56) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6D0(), !v0))
          {
            if (!*(v1 + 64) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v0))
            {
              v10 = *(type metadata accessor for Tvpb_TrailerV2(0) + 40);
              return OUTLINED_FUNCTION_8_1();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Tvpb_TrailerV2.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_17_1(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v9 = v6 && v7 == v8;
  if (!v9 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_40_5();
  v12 = v6 && v10 == v11;
  if (!v12 && (sub_1B964C9F0() & 1) == 0 || *(v3 + 48) != *(v2 + 48) || *(v3 + 56) != *(v2 + 56) || *(v3 + 64) != *(v2 + 64))
  {
    return 0;
  }

  v13 = *(type metadata accessor for Tvpb_TrailerV2(0) + 40);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_32();
  sub_1B8CD22E8(v14, v15);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B8EE5C68(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD22E8(&qword_1EBABE058, type metadata accessor for Tvpb_TrailerV2);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8EE5CE8(uint64_t a1)
{
  v2 = sub_1B8CD22E8(&qword_1EBABD6E8, type metadata accessor for Tvpb_TrailerV2);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8EE5D58()
{
  sub_1B8CD22E8(&qword_1EBABD6E8, type metadata accessor for Tvpb_TrailerV2);

  return sub_1B964C5D0();
}

uint64_t sub_1B8EE5DF0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABDC60);
  __swift_project_value_buffer(v0, qword_1EBABDC60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "name";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "role";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "person_info";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v15 = *MEMORY[0x1E69AADE8];
  v9();
  return sub_1B964C760();
}

uint64_t Tvpb_CastAndCrew.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 5:
        OUTLINED_FUNCTION_9();
        sub_1B8EE60EC();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8EE60EC()
{
  v0 = *(type metadata accessor for Tvpb_CastAndCrew(0) + 32);
  type metadata accessor for Tvpb_Person(0);
  sub_1B8CD22E8(&qword_1EBABDD38, type metadata accessor for Tvpb_Person);
  return sub_1B964C580();
}

uint64_t Tvpb_CastAndCrew.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9260, &unk_1B9664DA0);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v27 - v7;
  v9 = type metadata accessor for Tvpb_Person(0);
  v10 = OUTLINED_FUNCTION_59_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v0;
  v16 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v17 || (result = OUTLINED_FUNCTION_3(), !v1))
  {
    v19 = v2[2];
    v20 = v2[3];
    OUTLINED_FUNCTION_1();
    if (!v21 || (result = OUTLINED_FUNCTION_3(), !v1))
    {
      v22 = v2[4];
      v23 = v2[5];
      OUTLINED_FUNCTION_1();
      if (!v24 || (result = OUTLINED_FUNCTION_3(), !v1))
      {
        v25 = type metadata accessor for Tvpb_CastAndCrew(0);
        sub_1B8EE0AAC(v2 + *(v25 + 32), v8);
        if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
        {
          sub_1B8D9207C(v8, &qword_1EBAB9260, &unk_1B9664DA0);
        }

        else
        {
          v28 = v25;
          sub_1B8EE0B3C(v8, v14);
          sub_1B8CD22E8(&qword_1EBABDD38, type metadata accessor for Tvpb_Person);
          OUTLINED_FUNCTION_79_0();
          OUTLINED_FUNCTION_89_2();
          sub_1B964C740();
          result = sub_1B8EE0C04(v14);
          if (v1)
          {
            return result;
          }

          v25 = v28;
        }

        v26 = *(v25 + 28);
        return OUTLINED_FUNCTION_8_1();
      }
    }
  }

  return result;
}