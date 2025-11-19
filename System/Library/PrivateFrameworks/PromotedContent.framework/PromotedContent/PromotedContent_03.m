uint64_t sub_1C1AE1750(void *a1)
{
  v3 = v2;
  v4 = v1;
  v248 = *MEMORY[0x1E69E9840];
  v6 = sub_1C1AC1F08(&qword_1EBF08590, &qword_1C1B9AFC0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v185 - v9;
  v11 = a1[4];
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1AE4798();
  sub_1C1B95A18();
  v12 = (v4 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_advertisementType);
  swift_beginAccess();
  v13 = *v12;
  v14 = v12[1];
  v247 = 0;

  sub_1C1B95748();
  if (!v3)
  {

    v15 = (v4 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_creativeType);
    swift_beginAccess();
    v16 = *v15;
    v17 = v15[1];
    v246 = 1;

    sub_1C1B95748();

    v18 = (v4 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleArticleId);
    swift_beginAccess();
    v19 = *v18;
    v20 = v18[1];
    v245 = 2;

    sub_1C1B95748();

    v21 = (v4 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleArticleId);
    swift_beginAccess();
    v22 = *v21;
    v23 = v21[1];
    v244 = 3;

    sub_1C1B95748();

    v26 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleIsSponsored;
    swift_beginAccess();
    v27 = *(v4 + v26);
    if (v27)
    {
      [v27 BOOLValue];
    }

    v243 = 4;
    sub_1C1B95758();
    v28 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleIsSponsored;
    swift_beginAccess();
    v29 = *(v4 + v28);
    if (v29)
    {
      [v29 BOOLValue];
    }

    v242 = 5;
    sub_1C1B95758();
    v30 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticlePublicationMetadata;
    swift_beginAccess();
    v241 = *(v4 + v30);
    LOBYTE(v240) = 6;
    sub_1C1AC1F08(&unk_1EBF08578, &qword_1C1B9AFB0);
    sub_1C1AE4A54();
    sub_1C1B95788();
    v31 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticlePublicationMetadata;
    swift_beginAccess();
    v240 = *(v4 + v31);
    v239 = 7;
    sub_1C1B95788();
    v32 = (v4 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleRating);
    swift_beginAccess();
    v33 = *v32;
    v34 = v32[1];
    v239 = 8;

    sub_1C1B95748();

    v35 = (v4 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleRating);
    swift_beginAccess();
    v36 = *v35;
    v37 = v35[1];
    v238 = 9;

    sub_1C1B95748();

    v186 = v4;
    v38 = (v4 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleSourceChannel);
    swift_beginAccess();
    v39 = *v38;
    v40 = v38[1];
    v237 = 10;

    sub_1C1B95748();

    v41 = (v186 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleSourceChannel);
    swift_beginAccess();
    v42 = *v41;
    v43 = v41[1];
    v236 = 11;

    sub_1C1B95748();

    v44 = (v186 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleSourceChannelRating);
    swift_beginAccess();
    v45 = *v44;
    v46 = v44[1];
    v235 = 12;

    sub_1C1B95748();

    v47 = (v186 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleSourceChannelRating);
    swift_beginAccess();
    v48 = *v47;
    v49 = v47[1];
    v234 = 13;

    sub_1C1B95748();

    v50 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleSourceContentProviderId;
    v51 = v186;
    swift_beginAccess();
    v52 = *(v51 + v50);
    if (v52)
    {
      [v52 integerValue];
    }

    v233 = 14;
    sub_1C1B95778();
    v53 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleSourceContentProviderId;
    v54 = v186;
    swift_beginAccess();
    v55 = *(v54 + v53);
    if (v55)
    {
      [v55 integerValue];
    }

    v232 = 15;
    sub_1C1B95778();
    v56 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleSourceSections;
    v57 = v186;
    swift_beginAccess();
    v231 = *(v57 + v56);
    LOBYTE(v230) = 16;
    v58 = sub_1C1AC1F08(&unk_1EBF07AA0, &qword_1C1B98CF0);
    v185[0] = sub_1C1AC34C8(&unk_1EDE6BBA0);
    v185[1] = v58;
    sub_1C1B95788();
    v59 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleSourceSections;
    v60 = v186;
    swift_beginAccess();
    v230 = *(v60 + v59);
    LOBYTE(v229) = 17;
    sub_1C1B95788();
    v61 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataCategories;
    v62 = v186;
    swift_beginAccess();
    v229 = *(v62 + v61);
    v228 = 18;
    sub_1C1B95788();
    v63 = (v186 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataChannelId);
    swift_beginAccess();
    v64 = *v63;
    v65 = v63[1];
    v228 = 19;

    sub_1C1B95748();

    v66 = (v186 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataTagId);
    swift_beginAccess();
    v67 = *v66;
    v68 = v66[1];
    v227 = 20;

    sub_1C1B95748();

    v69 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataContentProviderID;
    v70 = v186;
    swift_beginAccess();
    v71 = *(v70 + v69);
    if (v71)
    {
      [v71 integerValue];
    }

    v226 = 21;
    sub_1C1B95778();
    v72 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataKeywords;
    v73 = v186;
    swift_beginAccess();
    v225 = *(v73 + v72);
    LOBYTE(v224) = 22;
    sub_1C1B95788();
    v74 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataLanguages;
    v75 = v186;
    swift_beginAccess();
    v224 = *(v75 + v74);
    v223 = 23;
    sub_1C1B95788();
    v76 = (v186 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataRating);
    swift_beginAccess();
    v77 = *v76;
    v78 = v76[1];
    v223 = 24;

    sub_1C1B95748();

    v79 = (v186 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataSectionId);
    swift_beginAccess();
    v80 = *v79;
    v81 = v79[1];
    v222 = 25;

    sub_1C1B95748();

    v82 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextCategories;
    v83 = v186;
    swift_beginAccess();
    v221 = *(v83 + v82);
    LOBYTE(v220) = 26;
    sub_1C1B95788();
    v84 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveCategories;
    v85 = v186;
    swift_beginAccess();
    v220 = *(v85 + v84);
    LOBYTE(v219) = 27;
    sub_1C1B95788();
    v86 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowCategories;
    v87 = v186;
    swift_beginAccess();
    v219 = *(v87 + v86);
    v218 = 28;
    sub_1C1B95788();
    v88 = (v186 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextId);
    swift_beginAccess();
    v89 = *v88;
    v90 = v88[1];
    v218 = 29;

    sub_1C1B95748();

    v91 = (v186 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveId);
    swift_beginAccess();
    v92 = *v91;
    v93 = v91[1];
    v217 = 30;

    sub_1C1B95748();

    v94 = (v186 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowId);
    swift_beginAccess();
    v95 = *v94;
    v96 = v94[1];
    v216 = 31;

    sub_1C1B95748();

    v97 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextKeywords;
    v98 = v186;
    swift_beginAccess();
    v215 = *(v98 + v97);
    LOBYTE(v214) = 32;
    sub_1C1B95788();
    v99 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveKeywords;
    v100 = v186;
    swift_beginAccess();
    v214 = *(v100 + v99);
    LOBYTE(v213) = 33;
    sub_1C1B95788();
    v101 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowKeywords;
    v102 = v186;
    swift_beginAccess();
    v213 = *(v102 + v101);
    LOBYTE(v212) = 34;
    sub_1C1B95788();
    v103 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextLanguages;
    v104 = v186;
    swift_beginAccess();
    v212 = *(v104 + v103);
    LOBYTE(v211) = 35;
    sub_1C1B95788();
    v105 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveLanguages;
    v106 = v186;
    swift_beginAccess();
    v211 = *(v106 + v105);
    LOBYTE(v210) = 36;
    sub_1C1B95788();
    v107 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowLanguages;
    v108 = v186;
    swift_beginAccess();
    v210 = *(v108 + v107);
    v209 = 37;
    sub_1C1B95788();
    v109 = (v186 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveChannelId);
    swift_beginAccess();
    v110 = *v109;
    v111 = v109[1];
    v209 = 38;

    sub_1C1B95748();

    v112 = (v186 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveTagId);
    swift_beginAccess();
    v113 = *v112;
    v114 = v112[1];
    v208 = 39;

    sub_1C1B95748();

    v115 = (v186 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowChannelId);
    swift_beginAccess();
    v116 = *v115;
    v117 = v115[1];
    v207 = 40;

    sub_1C1B95748();

    v118 = (v186 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowTagId);
    swift_beginAccess();
    v119 = *v118;
    v120 = v118[1];
    v206 = 41;

    sub_1C1B95748();

    v121 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextContentProviderId;
    v122 = v186;
    swift_beginAccess();
    v123 = *(v122 + v121);
    if (v123)
    {
      [v123 integerValue];
    }

    v205 = 42;
    sub_1C1B95778();
    v124 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveContentProviderId;
    v125 = v186;
    swift_beginAccess();
    v126 = *(v125 + v124);
    if (v126)
    {
      [v126 integerValue];
    }

    v204 = 43;
    sub_1C1B95778();
    v127 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowContentProviderId;
    v128 = v186;
    swift_beginAccess();
    v129 = *(v128 + v127);
    if (v129)
    {
      [v129 integerValue];
    }

    v203 = 44;
    sub_1C1B95778();
    v130 = (v186 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextType);
    swift_beginAccess();
    v131 = *v130;
    v132 = v130[1];
    v202 = 45;

    sub_1C1B95748();

    v133 = (v186 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveType);
    swift_beginAccess();
    v134 = *v133;
    v135 = v133[1];
    v201 = 46;

    sub_1C1B95748();

    v136 = (v186 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowType);
    swift_beginAccess();
    v137 = *v136;
    v138 = v136[1];
    v200 = 47;

    sub_1C1B95748();

    v139 = (v186 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_contentEnvironment);
    swift_beginAccess();
    v140 = *v139;
    v141 = v139[1];
    v199 = 48;

    sub_1C1B95748();

    v142 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_isDraft;
    v143 = v186;
    swift_beginAccess();
    v144 = *(v143 + v142);
    if (v144)
    {
      [v144 integerValue];
    }

    v198 = 49;
    sub_1C1B95778();
    v145 = (v186 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_placement);
    swift_beginAccess();
    v146 = *v145;
    v147 = v145[1];
    v197 = 50;

    sub_1C1B95748();

    v148 = (v186 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_referralCampaignId);
    swift_beginAccess();
    v149 = *v148;
    v150 = v148[1];
    v196 = 51;

    sub_1C1B95748();

    v151 = (v186 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_referralLocation);
    swift_beginAccess();
    v152 = *v151;
    v153 = v151[1];
    v195 = 52;

    sub_1C1B95748();

    v154 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_referralPublisherInventory;
    v155 = v186;
    swift_beginAccess();
    v156 = *(v155 + v154);
    if (v156)
    {
      [v156 doubleValue];
    }

    v194 = 53;
    sub_1C1B95768();
    v157 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_numOfArticlesSeenSinceLastInterstitial;
    v158 = v186;
    swift_beginAccess();
    v159 = *(v158 + v157);
    if (v159)
    {
      [v159 integerValue];
    }

    v193 = 54;
    sub_1C1B95778();
    v160 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_playerAspectRatio;
    v161 = v186;
    swift_beginAccess();
    v162 = *(v161 + v160);
    if (v162)
    {
      [v162 doubleValue];
    }

    v192 = 55;
    sub_1C1B95768();
    v163 = (v186 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_subscriptionType);
    swift_beginAccess();
    v164 = *v163;
    v165 = v163[1];
    v191 = 56;

    sub_1C1B95748();

    v166 = (v186 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentIssueId);
    swift_beginAccess();
    v167 = *v166;
    v168 = v166[1];
    v190 = 57;

    sub_1C1B95748();

    v169 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_superFeedMetadata;
    v170 = v186;
    swift_beginAccess();
    v189[0] = *(v170 + v169);
    v188 = 58;
    sub_1C1B95788();
    if (*(v186 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_anfComponentMetadataInternal))
    {
      v171 = objc_opt_self();

      v172 = sub_1C1B94CA8();

      v189[0] = 0;
      v173 = [v171 dataWithJSONObject:v172 options:0 error:v189];

      v174 = v189[0];
      if (!v173)
      {
        v178 = v174;
        sub_1C1B94458();

        swift_willThrow();
LABEL_10:
        result = (*(v7 + 8))(v10, v6);
        goto LABEL_4;
      }

      v175 = sub_1C1B944D8();
      v177 = v176;

      v189[0] = v175;
      v189[1] = v177;
      v188 = 59;
      sub_1C1AE4B54();
      sub_1C1B95808();
      sub_1C1AE4A00(v175, v177);
    }

    else
    {
      LOBYTE(v189[0]) = 59;
      sub_1C1B95828();
    }

    v179 = *(v186 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentIssueIsDraftInternal);
    if (v179)
    {
      [v179 BOOLValue];
    }

    LOBYTE(v189[0]) = 60;
    sub_1C1B95758();
    v180 = *(v186 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentIssueIsCurrentInternal);
    if (v180)
    {
      [v180 BOOLValue];
    }

    LOBYTE(v189[0]) = 61;
    sub_1C1B95758();
    v181 = *(v186 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_requestedAdTypeInternal);
    v182 = *(v186 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_requestedAdTypeInternal + 8);
    LOBYTE(v189[0]) = 62;

    sub_1C1B95748();

    v183 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_sponsorshipPlacement;
    v184 = v186;
    swift_beginAccess();
    v188 = *(v184 + v183);
    v187 = 63;
    sub_1C1AE4B00();
    sub_1C1B95788();
    goto LABEL_10;
  }

  (*(v7 + 8))(v10, v6);

LABEL_4:
  v25 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1C1AE3224()
{
  sub_1C1B95008();
  *(v0 + 16) = sub_1C1B94FF8();
  v2 = sub_1C1B94FC8();

  return MEMORY[0x1EEE6DFA0](sub_1C1AE32B8, v2, v1);
}

uint64_t sub_1C1AE32B8()
{
  v1 = *(v0 + 16);

  if (qword_1EDE6C4E0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C1B94BE8();
  sub_1C1AB4454(v2, qword_1EDE6D058);
  v3 = sub_1C1B94BC8();
  v4 = sub_1C1B95118();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1C1AA2000, v3, v4, "Starting APClientInfoUI", v5, 2u);
    MEMORY[0x1C6908230](v5, -1, -1);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1C1AE33F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_1C1AC1F08(&qword_1EBF08560, &qword_1C1B9AF90) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v11 = v26 - v10;
  sub_1C1AA7E30(a3, v26 - v10, &qword_1EBF08560, &qword_1C1B9AF90);
  v12 = sub_1C1B95028();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1C1AA7C8C(v11, &qword_1EBF08560, &qword_1C1B9AF90);
  }

  else
  {
    sub_1C1B95018();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1C1B94FC8();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1C1B94DD8() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_1C1AA7C8C(a3, &qword_1EBF08560, &qword_1C1B9AF90);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1C1AA7C8C(a3, &qword_1EBF08560, &qword_1C1B9AF90);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1C1AE36F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1C1AC1F08(&qword_1EBF08560, &qword_1C1B9AF90);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1C1AA7E30(a3, v27 - v11, &qword_1EBF08560, &qword_1C1B9AF90);
  v13 = sub_1C1B95028();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1C1AA7C8C(v12, &qword_1EBF08560, &qword_1C1B9AF90);
  }

  else
  {
    sub_1C1B95018();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1C1B94FC8();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1C1B94DD8() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      sub_1C1AC1F08(&qword_1EBF085D0, &qword_1C1B9B2A0);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_1C1AA7C8C(a3, &qword_1EBF08560, &qword_1C1B9AF90);

      return v24;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1C1AA7C8C(a3, &qword_1EBF08560, &qword_1C1B9AF90);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  sub_1C1AC1F08(&qword_1EBF085D0, &qword_1C1B9B2A0);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

id NewsSupplementalContext.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NewsSupplementalContext();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C1AE3C64(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = (v3 + *a3);
  swift_beginAccess();
  v6 = *v4;
  v5 = v4[1];

  return v6;
}

id sub_1C1AE3CD0@<X0>(void *a1@<X2>, char *a2@<X8>)
{
  result = *(v2 + *a1);
  if (result)
  {
    result = [result BOOLValue];
    if (result)
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_1C1AE3D2C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  swift_beginAccess();
  v5 = *(v3 + v4);
}

id sub_1C1AE3D70@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for NewsSupplementalContext());
  result = NewsSupplementalContext.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1C1AE3DE8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1C1AE3EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1C1AA7C14(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1C1AD917C(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_1C1AA7C14(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_1C1B958E8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1C1ADA50C();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;
}

unint64_t sub_1C1AE4068(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1C1AD8AE8(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1C1AD943C(v14, a3 & 1);
      v18 = *v4;
      result = sub_1C1AD8AE8(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        result = sub_1C1B958E8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_1C1ADA820();
      result = v17;
    }
  }

  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 8 * result) = a2;
    *(v20[7] + 8 * result) = a1;
    v23 = v20[2];
    v13 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v13)
    {
      v20[2] = v24;
      return result;
    }

    goto LABEL_15;
  }

  v21 = v20[7];
  v22 = *(v21 + 8 * result);
  *(v21 + 8 * result) = a1;
}

void sub_1C1AE41E0(uint64_t a1, int a2, uint64_t a3, char a4)
{
  v5 = v4;
  v31 = a2;
  v9 = sub_1C1B944A8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v4;
  v16 = sub_1C1AD8BA0(a3);
  v17 = *(v14 + 16);
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = *(v14 + 24);
  if (v21 < v19 || (a4 & 1) == 0)
  {
    if (v21 >= v19 && (a4 & 1) == 0)
    {
      sub_1C1ADA990();
      goto LABEL_9;
    }

    sub_1C1AD9978(v19, a4 & 1);
    v22 = *v5;
    v23 = sub_1C1AD8BA0(a3);
    if ((v20 & 1) == (v24 & 1))
    {
      v16 = v23;
      goto LABEL_9;
    }

LABEL_15:
    sub_1C1B958E8();
    __break(1u);
    return;
  }

LABEL_9:
  v25 = v31;
  v26 = *v5;
  if (v20)
  {
    v27 = v26[7] + 16 * v16;
    v28 = *v27;
    v29 = *(v27 + 8);
    *v27 = a1;
    *(v27 + 8) = v25 & 1;

    sub_1C1AD4AEC(v28, v29);
  }

  else
  {
    (*(v10 + 16))(v13, a3, v9);
    sub_1C1AE4624(v16, v13, a1, v25 & 1, v26);
  }
}

uint64_t sub_1C1AE43F4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void))
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_1C1AA7C14(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      a6(v20, a4 & 1);
      v24 = *v9;
      v15 = sub_1C1AA7C14(a2, a3);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_18:
        result = sub_1C1B958E8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      a5();
      v15 = v23;
    }
  }

  v26 = *v9;
  if (v21)
  {
    v27 = v26[7];
    v28 = *(v27 + 8 * v15);
    *(v27 + 8 * v15) = a1;
  }

  v26[(v15 >> 6) + 8] |= 1 << v15;
  v30 = (v26[6] + 16 * v15);
  *v30 = a2;
  v30[1] = a3;
  *(v26[7] + 8 * v15) = a1;
  v31 = v26[2];
  v19 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v32;
}

_OWORD *sub_1C1AE45B8(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1C1AA7E98(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_1C1AE4624(unint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = sub_1C1B944A8();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = a5[7] + 16 * a1;
  *v13 = a3;
  *(v13 + 8) = a4 & 1;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

uint64_t sub_1C1AE46EC()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1C1AB9CA0;

  return sub_1C1AE3224();
}

unint64_t sub_1C1AE4798()
{
  result = qword_1EBF08570;
  if (!qword_1EBF08570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08570);
  }

  return result;
}

unint64_t sub_1C1AE47EC()
{
  result = qword_1EDE6A760;
  if (!qword_1EDE6A760)
  {
    sub_1C1AC3404(&unk_1EBF08578, &qword_1C1B9AFB0);
    sub_1C1AC34C8(&qword_1EDE6BB98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6A760);
  }

  return result;
}

unint64_t sub_1C1AE4898()
{
  result = qword_1EDE6C390;
  if (!qword_1EDE6C390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6C390);
  }

  return result;
}

unint64_t sub_1C1AE48EC()
{
  result = qword_1EBF08588;
  if (!qword_1EBF08588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08588);
  }

  return result;
}

uint64_t sub_1C1AE4940()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1C1AB9A98;

  return sub_1C1AE3224();
}

uint64_t sub_1C1AE49EC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1C1AE4A00(a1, a2);
  }

  return a1;
}

uint64_t sub_1C1AE4A00(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_1C1AE4A54()
{
  result = qword_1EDE6A768;
  if (!qword_1EDE6A768)
  {
    sub_1C1AC3404(&unk_1EBF08578, &qword_1C1B9AFB0);
    sub_1C1AC34C8(&unk_1EDE6BBA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6A768);
  }

  return result;
}

unint64_t sub_1C1AE4B00()
{
  result = qword_1EBF08598;
  if (!qword_1EBF08598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08598);
  }

  return result;
}

unint64_t sub_1C1AE4B54()
{
  result = qword_1EDE6B850;
  if (!qword_1EDE6B850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B850);
  }

  return result;
}

unint64_t sub_1C1AE4BAC()
{
  result = qword_1EBF085A8;
  if (!qword_1EBF085A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF085A8);
  }

  return result;
}

id sub_1C1AE4C00@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v4 + v5);
  *a3 = v6;

  return v6;
}

uint64_t sub_1C1AE4C64@<X0>(void *a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v4 = (*a1 + *a2);
  swift_beginAccess();
  v5 = v4[1];
  *a3 = *v4;
  a3[1] = v5;
}

id sub_1C1AE4CB8@<X0>(void *a1@<X0>, void *a2@<X3>, char *a3@<X8>)
{
  result = *(*a1 + *a2);
  if (result)
  {
    result = [result BOOLValue];
    if (result)
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  *a3 = v5;
  return result;
}

uint64_t getEnumTagSinglePayload for NewsSupplementalContext.AppleNewsFormatComponentMetadataKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NewsSupplementalContext.AppleNewsFormatComponentMetadataKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NewsSupplementalContext.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xC1)
  {
    goto LABEL_17;
  }

  if (a2 + 63 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 63) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 63;
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

      return (*a1 | (v4 << 8)) - 63;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 63;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x40;
  v8 = v6 - 64;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NewsSupplementalContext.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 63 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 63) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xC1)
  {
    v4 = 0;
  }

  if (a2 > 0xC0)
  {
    v5 = ((a2 - 193) >> 8) + 1;
    *result = a2 + 63;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 63;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C1AE7B24()
{
  result = qword_1EBF085B8;
  if (!qword_1EBF085B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF085B8);
  }

  return result;
}

unint64_t sub_1C1AE7B7C()
{
  result = qword_1EBF085C0;
  if (!qword_1EBF085C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF085C0);
  }

  return result;
}

unint64_t sub_1C1AE7BD4()
{
  result = qword_1EBF085C8;
  if (!qword_1EBF085C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF085C8);
  }

  return result;
}

uint64_t sub_1C1AE7C28()
{
  v0 = sub_1C1B958A8();

  if (v0 >= 0x40)
  {
    return 64;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1C1AE7C7C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1C1AB9A98;

  return sub_1C1AB96F0(a1, v5);
}

uint64_t sub_1C1AE7D3C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = NewsRequestedAdType.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == NewsRequestedAdType.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1C1B95888();
  }

  return v8 & 1;
}

uint64_t sub_1C1AE7DC4()
{
  v1 = *v0;
  sub_1C1B95958();
  NewsRequestedAdType.rawValue.getter(v1);
  sub_1C1B94DE8();

  return sub_1C1B959A8();
}

uint64_t sub_1C1AE7E28()
{
  NewsRequestedAdType.rawValue.getter(*v0);
  sub_1C1B94DE8();
}

uint64_t sub_1C1AE7E7C()
{
  v1 = *v0;
  sub_1C1B95958();
  NewsRequestedAdType.rawValue.getter(v1);
  sub_1C1B94DE8();

  return sub_1C1B959A8();
}

uint64_t sub_1C1AE7EDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = _s15PromotedContent19NewsRequestedAdTypeO8rawValueACSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1C1AE7F10@<X0>(uint64_t *a1@<X8>)
{
  result = NewsRequestedAdType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1C1AE7FF0()
{
  result = qword_1EBF085D8;
  if (!qword_1EBF085D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF085D8);
  }

  return result;
}

unint64_t sub_1C1AE8054()
{
  result = qword_1EBF085E0;
  if (!qword_1EBF085E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF085E0);
  }

  return result;
}

uint64_t sub_1C1AE80BC(uint64_t a1)
{
  v2 = sub_1C1AE904C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1AE80F8(uint64_t a1)
{
  v2 = sub_1C1AE904C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C1AE8134()
{
  v1 = *v0;
  v2 = 7959906;
  v3 = 0x6E776F6E6B6E75;
  if (v1 != 6)
  {
    v3 = 2003134838;
  }

  v4 = 0x6269726373627573;
  if (v1 != 4)
  {
    v4 = 0x6572467449797274;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6E7261656CLL;
  if (v1 != 2)
  {
    v5 = 0x65726F4D64616572;
  }

  if (*v0)
  {
    v2 = 0x64616F6C6E776F64;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1C1AE8220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C1AEAC6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C1AE8248(uint64_t a1)
{
  v2 = sub_1C1AE8DAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1AE8284(uint64_t a1)
{
  v2 = sub_1C1AE8DAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C1AE82C0(uint64_t a1)
{
  v2 = sub_1C1AE8FF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1AE82FC(uint64_t a1)
{
  v2 = sub_1C1AE8FF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C1AE8338(uint64_t a1)
{
  v2 = sub_1C1AE8FA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1AE8374(uint64_t a1)
{
  v2 = sub_1C1AE8FA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C1AE83B0(uint64_t a1)
{
  v2 = sub_1C1AE8F50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1AE83EC(uint64_t a1)
{
  v2 = sub_1C1AE8F50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C1AE8428(uint64_t a1)
{
  v2 = sub_1C1AE8EFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1AE8464(uint64_t a1)
{
  v2 = sub_1C1AE8EFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C1AE84A0(uint64_t a1)
{
  v2 = sub_1C1AE8EA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1AE84DC(uint64_t a1)
{
  v2 = sub_1C1AE8EA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C1AE8518(uint64_t a1)
{
  v2 = sub_1C1AE8E54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1AE8554(uint64_t a1)
{
  v2 = sub_1C1AE8E54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C1AE8590(uint64_t a1)
{
  v2 = sub_1C1AE8E00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1AE85CC(uint64_t a1)
{
  v2 = sub_1C1AE8E00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ClientLayoutButton.ButtonType.encode(to:)(void *a1)
{
  v3 = sub_1C1AC1F08(&qword_1EBF085E8, &qword_1C1B9B3F0);
  v62 = *(v3 - 8);
  v63 = v3;
  v4 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v61 = &v43 - v5;
  v6 = sub_1C1AC1F08(&qword_1EBF085F0, &qword_1C1B9B3F8);
  v59 = *(v6 - 8);
  v60 = v6;
  v7 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v58 = &v43 - v8;
  v9 = sub_1C1AC1F08(&qword_1EBF085F8, &qword_1C1B9B400);
  v56 = *(v9 - 8);
  v57 = v9;
  v10 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v55 = &v43 - v11;
  v12 = sub_1C1AC1F08(&qword_1EBF08600, &qword_1C1B9B408);
  v53 = *(v12 - 8);
  v54 = v12;
  v13 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v52 = &v43 - v14;
  v15 = sub_1C1AC1F08(&qword_1EBF08608, &qword_1C1B9B410);
  v50 = *(v15 - 8);
  v51 = v15;
  v16 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v49 = &v43 - v17;
  v18 = sub_1C1AC1F08(&qword_1EBF08610, &qword_1C1B9B418);
  v47 = *(v18 - 8);
  v48 = v18;
  v19 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v46 = &v43 - v20;
  v45 = sub_1C1AC1F08(&qword_1EBF08618, &qword_1C1B9B420);
  v44 = *(v45 - 8);
  v21 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v23 = &v43 - v22;
  v24 = sub_1C1AC1F08(&qword_1EBF08620, &qword_1C1B9B428);
  v43 = *(v24 - 8);
  v25 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v43 - v26;
  v64 = sub_1C1AC1F08(&qword_1EBF08628, &qword_1C1B9B430);
  v28 = *(v64 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v30 = *v1;
  v32 = a1[3];
  v31 = a1[4];
  v33 = a1;
  v35 = &v43 - v34;
  sub_1C1AAABE0(v33, v32);
  sub_1C1AE8DAC();
  sub_1C1B95A18();
  v36 = (v28 + 8);
  if (v30 > 3)
  {
    if (v30 > 5)
    {
      if (v30 == 6)
      {
        v71 = 6;
        sub_1C1AE8E54();
        v38 = v58;
        v37 = v64;
        sub_1C1B95728();
        v40 = v59;
        v39 = v60;
      }

      else
      {
        v72 = 7;
        sub_1C1AE8E00();
        v38 = v61;
        v37 = v64;
        sub_1C1B95728();
        v40 = v62;
        v39 = v63;
      }
    }

    else if (v30 == 4)
    {
      v69 = 4;
      sub_1C1AE8EFC();
      v38 = v52;
      v37 = v64;
      sub_1C1B95728();
      v40 = v53;
      v39 = v54;
    }

    else
    {
      v70 = 5;
      sub_1C1AE8EA8();
      v38 = v55;
      v37 = v64;
      sub_1C1B95728();
      v40 = v56;
      v39 = v57;
    }

    goto LABEL_16;
  }

  if (v30 > 1)
  {
    if (v30 == 2)
    {
      v67 = 2;
      sub_1C1AE8FA4();
      v38 = v46;
      v37 = v64;
      sub_1C1B95728();
      v40 = v47;
      v39 = v48;
    }

    else
    {
      v68 = 3;
      sub_1C1AE8F50();
      v38 = v49;
      v37 = v64;
      sub_1C1B95728();
      v40 = v50;
      v39 = v51;
    }

LABEL_16:
    (*(v40 + 8))(v38, v39);
    return (*v36)(v35, v37);
  }

  if (v30)
  {
    v66 = 1;
    sub_1C1AE8FF8();
    v41 = v64;
    sub_1C1B95728();
    (*(v44 + 8))(v23, v45);
    return (*v36)(v35, v41);
  }

  v65 = 0;
  sub_1C1AE904C();
  v37 = v64;
  sub_1C1B95728();
  (*(v43 + 8))(v27, v24);
  return (*v36)(v35, v37);
}

unint64_t sub_1C1AE8DAC()
{
  result = qword_1EBF08630;
  if (!qword_1EBF08630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08630);
  }

  return result;
}

unint64_t sub_1C1AE8E00()
{
  result = qword_1EBF08638;
  if (!qword_1EBF08638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08638);
  }

  return result;
}

unint64_t sub_1C1AE8E54()
{
  result = qword_1EBF08640;
  if (!qword_1EBF08640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08640);
  }

  return result;
}

unint64_t sub_1C1AE8EA8()
{
  result = qword_1EBF08648;
  if (!qword_1EBF08648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08648);
  }

  return result;
}

unint64_t sub_1C1AE8EFC()
{
  result = qword_1EBF08650;
  if (!qword_1EBF08650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08650);
  }

  return result;
}

unint64_t sub_1C1AE8F50()
{
  result = qword_1EBF08658;
  if (!qword_1EBF08658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08658);
  }

  return result;
}

unint64_t sub_1C1AE8FA4()
{
  result = qword_1EBF08660;
  if (!qword_1EBF08660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08660);
  }

  return result;
}

unint64_t sub_1C1AE8FF8()
{
  result = qword_1EBF08668;
  if (!qword_1EBF08668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08668);
  }

  return result;
}

unint64_t sub_1C1AE904C()
{
  result = qword_1EBF08670;
  if (!qword_1EBF08670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08670);
  }

  return result;
}

uint64_t ClientLayoutButton.ButtonType.hashValue.getter()
{
  v1 = *v0;
  sub_1C1B95958();
  MEMORY[0x1C6907960](v1);
  return sub_1C1B959A8();
}

uint64_t ClientLayoutButton.ButtonType.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v94 = a2;
  v3 = sub_1C1AC1F08(&qword_1EBF08678, &qword_1C1B9B438);
  v86 = *(v3 - 8);
  v87 = v3;
  v4 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v89 = &v68 - v5;
  v6 = sub_1C1AC1F08(&qword_1EBF08680, &qword_1C1B9B440);
  v84 = *(v6 - 8);
  v85 = v6;
  v7 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v93 = &v68 - v8;
  v9 = sub_1C1AC1F08(&qword_1EBF08688, &qword_1C1B9B448);
  v82 = *(v9 - 8);
  v83 = v9;
  v10 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v92 = &v68 - v11;
  v12 = sub_1C1AC1F08(&qword_1EBF08690, &qword_1C1B9B450);
  v13 = *(v12 - 8);
  v80 = v12;
  v81 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v91 = &v68 - v15;
  v79 = sub_1C1AC1F08(&qword_1EBF08698, &qword_1C1B9B458);
  v78 = *(v79 - 8);
  v16 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v90 = &v68 - v17;
  v77 = sub_1C1AC1F08(&qword_1EBF086A0, &qword_1C1B9B460);
  v76 = *(v77 - 8);
  v18 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v77);
  v88 = &v68 - v19;
  v75 = sub_1C1AC1F08(&qword_1EBF086A8, &qword_1C1B9B468);
  v74 = *(v75 - 8);
  v20 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v22 = &v68 - v21;
  v23 = sub_1C1AC1F08(&qword_1EBF086B0, &qword_1C1B9B470);
  v73 = *(v23 - 8);
  v24 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v68 - v25;
  v27 = sub_1C1AC1F08(&qword_1EBF086B8, &unk_1C1B9B478);
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v68 - v30;
  v33 = a1[3];
  v32 = a1[4];
  v96 = a1;
  sub_1C1AAABE0(a1, v33);
  sub_1C1AE8DAC();
  v34 = v95;
  sub_1C1B95A08();
  if (!v34)
  {
    v69 = v26;
    v68 = v23;
    v70 = v22;
    v36 = v90;
    v35 = v91;
    v38 = v92;
    v37 = v93;
    v95 = v28;
    v39 = v94;
    v72 = v27;
    v71 = v31;
    v40 = sub_1C1B95718();
    v41 = (2 * *(v40 + 16)) | 1;
    v97 = v40;
    v98 = v40 + 32;
    v99 = 0;
    v100 = v41;
    v42 = sub_1C1ACC710();
    if (v42 != 8 && v99 == v100 >> 1)
    {
      v101 = v42;
      if (v42 > 3u)
      {
        v54 = v72;
        v55 = v71;
        if (v42 > 5u)
        {
          v63 = v95;
          if (v42 == 6)
          {
            v102 = 6;
            sub_1C1AE8E54();
            sub_1C1B95608();
            (*(v84 + 8))(v37, v85);
          }

          else
          {
            v102 = 7;
            sub_1C1AE8E00();
            v67 = v89;
            sub_1C1B95608();
            (*(v86 + 8))(v67, v87);
          }

          (*(v63 + 8))(v55, v54);
          swift_unknownObjectRelease();
          v43 = v39;
          goto LABEL_25;
        }

        v43 = v39;
        v56 = v95;
        if (v42 == 4)
        {
          v102 = 4;
          sub_1C1AE8EFC();
          sub_1C1B95608();
          v57 = v80;
          v58 = v81;
        }

        else
        {
          v102 = 5;
          sub_1C1AE8EA8();
          v35 = v38;
          sub_1C1B95608();
          v58 = v82;
          v57 = v83;
        }

        (*(v58 + 8))(v35, v57);
        (*(v56 + 8))(v55, v54);
      }

      else
      {
        if (v42 > 1u)
        {
          v59 = v95;
          if (v42 == 2)
          {
            v102 = 2;
            sub_1C1AE8FA4();
            v60 = v88;
            v61 = v72;
            v62 = v71;
            sub_1C1B95608();
            (*(v76 + 8))(v60, v77);
          }

          else
          {
            v102 = 3;
            sub_1C1AE8F50();
            v61 = v72;
            v62 = v71;
            sub_1C1B95608();
            (*(v78 + 8))(v36, v79);
          }

          (*(v59 + 8))(v62, v61);
          swift_unknownObjectRelease();
          v43 = v39;
          goto LABEL_25;
        }

        v43 = v39;
        if (v42)
        {
          v102 = 1;
          sub_1C1AE8FF8();
          v64 = v70;
          v65 = v72;
          v66 = v71;
          sub_1C1B95608();
          (*(v74 + 8))(v64, v75);
          (*(v95 + 8))(v66, v65);
        }

        else
        {
          v102 = 0;
          sub_1C1AE904C();
          v44 = v69;
          v45 = v72;
          v46 = v71;
          sub_1C1B95608();
          (*(v73 + 8))(v44, v68);
          (*(v95 + 8))(v46, v45);
        }
      }

      swift_unknownObjectRelease();
LABEL_25:
      *v43 = v101;
      return sub_1C1AA86F8(v96);
    }

    v47 = sub_1C1B954C8();
    swift_allocError();
    v49 = v48;
    v50 = *(sub_1C1AC1F08(&qword_1EBF07CC0, &qword_1C1B99190) + 48);
    *v49 = &type metadata for ClientLayoutButton.ButtonType;
    v51 = v72;
    v52 = v71;
    sub_1C1B95618();
    sub_1C1B954B8();
    (*(*(v47 - 8) + 104))(v49, *MEMORY[0x1E69E6AF8], v47);
    swift_willThrow();
    (*(v95 + 8))(v52, v51);
    swift_unknownObjectRelease();
  }

  return sub_1C1AA86F8(v96);
}

uint64_t ClientLayoutButton.text.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t ClientLayoutButton.accessibilityText.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t sub_1C1AE9CC4()
{
  v1 = 1954047348;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_1C1AE9D14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C1AEAF0C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C1AE9D3C(uint64_t a1)
{
  v2 = sub_1C1AE9F88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1AE9D78(uint64_t a1)
{
  v2 = sub_1C1AE9F88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ClientLayoutButton.encode(to:)(void *a1)
{
  v4 = sub_1C1AC1F08(&qword_1EBF086C0, &qword_1C1B9B488);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v14 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v14[2] = *(v1 + 2);
  v14[3] = v10;
  v11 = *(v1 + 3);
  v14[0] = *(v1 + 4);
  v14[1] = v11;
  v12 = a1[4];
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1AE9F88();
  sub_1C1B95A18();
  v18 = v9;
  v17 = 0;
  sub_1C1AE9FDC();
  sub_1C1B95808();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v16 = 1;
  sub_1C1B95748();
  v15 = 2;
  sub_1C1B95748();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1C1AE9F88()
{
  result = qword_1EBF086C8;
  if (!qword_1EBF086C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF086C8);
  }

  return result;
}

unint64_t sub_1C1AE9FDC()
{
  result = qword_1EBF086D0;
  if (!qword_1EBF086D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF086D0);
  }

  return result;
}

uint64_t ClientLayoutButton.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C1AC1F08(&qword_1EBF086D8, &qword_1C1B9B490);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1AE9F88();
  sub_1C1B95A08();
  if (v2)
  {
    return sub_1C1AA86F8(a1);
  }

  v25 = 0;
  sub_1C1AEA274();
  sub_1C1B956F8();
  v11 = v26;
  v24 = 1;
  v12 = sub_1C1B95638();
  v14 = v13;
  v22 = v12;
  v23 = 2;
  v15 = sub_1C1B95638();
  v17 = v16;
  v18 = *(v6 + 8);
  v21 = v15;
  v18(v9, v5);
  *a2 = v11;
  v19 = v21;
  *(a2 + 8) = v22;
  *(a2 + 16) = v14;
  *(a2 + 24) = v19;
  *(a2 + 32) = v17;

  sub_1C1AA86F8(a1);
}

unint64_t sub_1C1AEA274()
{
  result = qword_1EBF086E0;
  if (!qword_1EBF086E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF086E0);
  }

  return result;
}

unint64_t sub_1C1AEA2CC()
{
  result = qword_1EBF086E8;
  if (!qword_1EBF086E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF086E8);
  }

  return result;
}

__n128 sub_1C1AEA350(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C1AEA364(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1C1AEA3C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_1C1AEA4E0()
{
  result = qword_1EBF086F0;
  if (!qword_1EBF086F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF086F0);
  }

  return result;
}

unint64_t sub_1C1AEA538()
{
  result = qword_1EBF086F8;
  if (!qword_1EBF086F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF086F8);
  }

  return result;
}

unint64_t sub_1C1AEA590()
{
  result = qword_1EBF08700;
  if (!qword_1EBF08700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08700);
  }

  return result;
}

unint64_t sub_1C1AEA5E8()
{
  result = qword_1EBF08708;
  if (!qword_1EBF08708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08708);
  }

  return result;
}

unint64_t sub_1C1AEA640()
{
  result = qword_1EBF08710;
  if (!qword_1EBF08710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08710);
  }

  return result;
}

unint64_t sub_1C1AEA698()
{
  result = qword_1EBF08718;
  if (!qword_1EBF08718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08718);
  }

  return result;
}

unint64_t sub_1C1AEA6F0()
{
  result = qword_1EBF08720;
  if (!qword_1EBF08720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08720);
  }

  return result;
}

unint64_t sub_1C1AEA748()
{
  result = qword_1EBF08728;
  if (!qword_1EBF08728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08728);
  }

  return result;
}

unint64_t sub_1C1AEA7A0()
{
  result = qword_1EBF08730;
  if (!qword_1EBF08730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08730);
  }

  return result;
}

unint64_t sub_1C1AEA7F8()
{
  result = qword_1EBF08738;
  if (!qword_1EBF08738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08738);
  }

  return result;
}

unint64_t sub_1C1AEA850()
{
  result = qword_1EBF08740;
  if (!qword_1EBF08740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08740);
  }

  return result;
}

unint64_t sub_1C1AEA8A8()
{
  result = qword_1EBF08748;
  if (!qword_1EBF08748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08748);
  }

  return result;
}

unint64_t sub_1C1AEA900()
{
  result = qword_1EBF08750;
  if (!qword_1EBF08750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08750);
  }

  return result;
}

unint64_t sub_1C1AEA958()
{
  result = qword_1EBF08758;
  if (!qword_1EBF08758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08758);
  }

  return result;
}

unint64_t sub_1C1AEA9B0()
{
  result = qword_1EBF08760;
  if (!qword_1EBF08760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08760);
  }

  return result;
}

unint64_t sub_1C1AEAA08()
{
  result = qword_1EBF08768;
  if (!qword_1EBF08768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08768);
  }

  return result;
}

unint64_t sub_1C1AEAA60()
{
  result = qword_1EBF08770;
  if (!qword_1EBF08770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08770);
  }

  return result;
}

unint64_t sub_1C1AEAAB8()
{
  result = qword_1EBF08778;
  if (!qword_1EBF08778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08778);
  }

  return result;
}

unint64_t sub_1C1AEAB10()
{
  result = qword_1EBF08780;
  if (!qword_1EBF08780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08780);
  }

  return result;
}

unint64_t sub_1C1AEAB68()
{
  result = qword_1EBF08788;
  if (!qword_1EBF08788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08788);
  }

  return result;
}

unint64_t sub_1C1AEABC0()
{
  result = qword_1EBF08790;
  if (!qword_1EBF08790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08790);
  }

  return result;
}

unint64_t sub_1C1AEAC18()
{
  result = qword_1EBF08798;
  if (!qword_1EBF08798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08798);
  }

  return result;
}

uint64_t sub_1C1AEAC6C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7959906 && a2 == 0xE300000000000000;
  if (v3 || (sub_1C1B95888() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64616F6C6E776F64 && a2 == 0xE800000000000000 || (sub_1C1B95888() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E7261656CLL && a2 == 0xE500000000000000 || (sub_1C1B95888() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65726F4D64616572 && a2 == 0xE800000000000000 || (sub_1C1B95888() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6269726373627573 && a2 == 0xE900000000000065 || (sub_1C1B95888() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6572467449797274 && a2 == 0xE900000000000065 || (sub_1C1B95888() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000 || (sub_1C1B95888() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 2003134838 && a2 == 0xE400000000000000)
  {

    return 7;
  }

  else
  {
    v6 = sub_1C1B95888();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1C1AEAF0C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C1B95888() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1954047348 && a2 == 0xE400000000000000 || (sub_1C1B95888() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001C1BA8000 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1C1B95888();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

BOOL sub_1C1AEB034(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
    v7 = sub_1C1B94978();
  }

  while (v7 != sub_1C1B94978());
  return v4 != 0;
}

uint64_t FrequencyCapEventManager.__allocating_init(using:)(__int128 *a1)
{
  v2 = swift_allocObject();
  *(v2 + 56) = 0;
  sub_1C1AC0580(a1, v2 + 16);
  return v2;
}

uint64_t FrequencyCapEventManager.init(using:)(__int128 *a1)
{
  *(v1 + 56) = 0;
  sub_1C1AC0580(a1, v1 + 16);
  return v1;
}

void sub_1C1AEB108()
{
  v1 = v0;
  if (v0[7])
  {
    if (qword_1EDE6C4E0 != -1)
    {
      swift_once();
    }

    v2 = sub_1C1B94BE8();
    sub_1C1AB4454(v2, qword_1EDE6D058);

    oslog = sub_1C1B94BC8();
    v3 = sub_1C1B95108();

    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v15 = v5;
      *v4 = 136315138;
      type metadata accessor for FrequencyCapEventManager();

      v6 = sub_1C1B94D98();
      v8 = sub_1C1AC7650(v6, v7, &v15);

      *(v4 + 4) = v8;
      _os_log_impl(&dword_1C1AA2000, oslog, v3, "[%s] Journey Placed and Interacted Event Listeners already launched, skipping", v4, 0xCu);
      sub_1C1AA86F8(v5);
      MEMORY[0x1C6908230](v5, -1, -1);
      MEMORY[0x1C6908230](v4, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v9 = *v0;
    *(v1 + 56) = 1;
    v10 = swift_allocObject();
    swift_weakInit();
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = v9;

    _s15PromotedContent21EventRegistrarHandlerC010addJourneyC8Listener3for7closureSiSo15APJourneyMetricV_ySo16APMetricProtocol_pctFZ_0(1408, sub_1C1AEB3EC, v11);

    v12 = swift_allocObject();
    swift_weakInit();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = v9;

    _s15PromotedContent21EventRegistrarHandlerC010addJourneyC8Listener3for7closureSiSo15APJourneyMetricV_ySo16APMetricProtocol_pctFZ_0(1403, sub_1C1AEC8A0, v13);
  }
}

id sub_1C1AEB41C(void *a1, void *a2)
{
  v3 = v2;
  result = [a1 handle];
  if (!result)
  {
    return result;
  }

  v7 = result;
  v8 = sub_1C1B94D88();
  v10 = v9;

  v11 = sub_1C1AEBA6C(v8, v10);

  if (!v11)
  {
    return result;
  }

  v12 = *(v11 + 96);
  if (v12)
  {
    v13 = *(v11 + 88);
    v14 = *(v11 + 96);

    v15 = [a1 properties];
    if (v15)
    {
      v16 = v15;
      sub_1C1AC1F08(&qword_1EBF08EE0, &unk_1C1B9BE70);
      v17 = sub_1C1B94CB8();

      if (*(v17 + 16))
      {
        v18 = sub_1C1AA7C14(1701869940, 0xE400000000000000);
        if (v19)
        {
          v20 = *(*(v17 + 56) + 8 * v18);
          swift_unknownObjectRetain();

          v39[0] = v20;
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_22;
          }

          v21 = sub_1C1B94968();
          if (v22)
          {
            goto LABEL_22;
          }

          v34 = v21;
          v23 = sub_1C1B94978();
          if (v23 == sub_1C1B94978())
          {
            goto LABEL_22;
          }

          swift_beginAccess();
          if ((*(v11 + 130) & 1) == 0)
          {
            *(v11 + 130) = 1;
            v24 = a2[4];
            v33 = a2[3];
            sub_1C1AAABE0(a2, v33);
            v40 = type metadata accessor for NativeAdTrackingInstance();
            v41 = &protocol witness table for NativeAdTrackingInstance;
            v39[0] = v11;
            v37 = 0;
            v38 = 1;
            v25 = swift_allocObject();
            swift_weakInit();
            v26 = swift_allocObject();
            v26[2] = v25;
            v26[3] = v3;
            v26[4] = v13;
            v26[5] = v12;
            v32 = *(v24 + 8);

            v32(v39, &v37, sub_1C1AEC9C0, v26, v33, v24);

            sub_1C1AA86F8(v39);
          }

          swift_beginAccess();
          if ((*(v11 + 129) & 1) != 0 || !sub_1C1AEB034(v34, &unk_1F414D148))
          {
LABEL_22:
          }

          else
          {
            *(v11 + 129) = 1;
            v27 = a2[3];
            v28 = a2[4];
            sub_1C1AAABE0(a2, v27);
            v40 = type metadata accessor for NativeAdTrackingInstance();
            v41 = &protocol witness table for NativeAdTrackingInstance;
            v39[0] = v11;
            v35 = 1;
            v36 = 0;
            v29 = swift_allocObject();
            swift_weakInit();
            v30 = swift_allocObject();
            v30[2] = v29;
            v30[3] = v3;
            v30[4] = v13;
            v30[5] = v12;
            v31 = *(v28 + 8);

            v31(v39, &v35, sub_1C1AECA0C, v30, v27, v28);

            return sub_1C1AA86F8(v39);
          }
        }
      }
    }
  }

  else
  {
  }
}

uint64_t sub_1C1AEB85C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a4(a1, result + 16);
  }

  return result;
}

id sub_1C1AEB8D4(void *a1, uint64_t a2)
{
  v3 = v2;
  result = [a1 handle];
  if (result)
  {
    v6 = result;
    v7 = sub_1C1B94D88();
    v9 = v8;

    v10 = sub_1C1AEBA6C(v7, v9);

    if (v10)
    {
      v11 = *(v10 + 96);
      if (v11)
      {
        v12 = *(v10 + 88);
        v13 = *(v10 + 96);

        v14 = sub_1C1B4D6BC();
        v15 = swift_allocObject();
        swift_weakInit();

        sub_1C1AAD2FC(a2, v19);
        v16 = swift_allocObject();
        v16[2] = v15;
        sub_1C1AC0580(v19, (v16 + 3));
        v16[8] = v3;
        v16[9] = v12;
        v16[10] = v11;
        swift_beginAccess();
        v17 = *(v14 + 16);
        v18 = *(v14 + 24);
        *(v14 + 16) = sub_1C1AEC944;
        *(v14 + 24) = v16;

        sub_1C1AC0530(v17);
      }

      else
      {
      }
    }
  }

  return result;
}

uint64_t sub_1C1AEBA6C(uint64_t a1, unint64_t a2)
{
  if (qword_1EDE6BD38 != -1)
  {
    swift_once();
  }

  result = NativeAdTrackingInstanceStorage.get(for:)(a1, a2);
  if (!result)
  {
    if (qword_1EDE6C4E0 != -1)
    {
      swift_once();
    }

    v5 = sub_1C1B94BE8();
    sub_1C1AB4454(v5, qword_1EDE6D058);

    v6 = sub_1C1B94BC8();
    v7 = sub_1C1B95128();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v13 = v9;
      *v8 = 136315394;
      sub_1C1AC1F08(&qword_1EBF087A0, &unk_1C1B9BE60);
      v10 = sub_1C1B94D98();
      v12 = sub_1C1AC7650(v10, v11, &v13);

      *(v8 + 4) = v12;
      *(v8 + 12) = 2080;
      *(v8 + 14) = sub_1C1AC7650(a1, a2, &v13);
      _os_log_impl(&dword_1C1AA2000, v6, v7, "[%s] Unable to look up tracking instance for identifier %s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C6908230](v9, -1, -1);
      MEMORY[0x1C6908230](v8, -1, -1);
    }

    return 0;
  }

  return result;
}

void sub_1C1AEBC6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a1)
  {
    v7 = sub_1C1B94448();
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      if (qword_1EDE6C4E0 != -1)
      {
        swift_once();
      }

      v10 = sub_1C1B94BE8();
      sub_1C1AB4454(v10, qword_1EDE6D058);

      v11 = v7;
      v12 = sub_1C1B94BC8();
      v13 = sub_1C1B95128();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v24[0] = v15;
        *v14 = 136315650;
        sub_1C1AC1F08(&qword_1EBF087A0, &unk_1C1B9BE60);
        v16 = sub_1C1B94D98();
        v18 = sub_1C1AC7650(v16, v17, v24);

        *(v14 + 4) = v18;
        *(v14 + 12) = 2080;
        *(v14 + 14) = sub_1C1AC7650(a4, a5, v24);
        *(v14 + 22) = 2080;
        v19 = [v11 localizedDescription];
        v20 = sub_1C1B94D88();
        v22 = v21;

        v23 = sub_1C1AC7650(v20, v22, v24);

        *(v14 + 24) = v23;
        _os_log_impl(&dword_1C1AA2000, v12, v13, "[%s] Error updating click cap data with identifier %s, %s", v14, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1C6908230](v15, -1, -1);
        MEMORY[0x1C6908230](v14, -1, -1);
      }

      else
      {
      }

      swift_beginAccess();
      *(v9 + 130) = 0;
    }

    else
    {
    }
  }
}

void sub_1C1AEBEEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a1)
  {
    v7 = sub_1C1B94448();
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      if (qword_1EDE6C4E0 != -1)
      {
        swift_once();
      }

      v10 = sub_1C1B94BE8();
      sub_1C1AB4454(v10, qword_1EDE6D058);

      v11 = v7;
      v12 = sub_1C1B94BC8();
      v13 = sub_1C1B95128();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v24[0] = v15;
        *v14 = 136315650;
        sub_1C1AC1F08(&qword_1EBF087A0, &unk_1C1B9BE60);
        v16 = sub_1C1B94D98();
        v18 = sub_1C1AC7650(v16, v17, v24);

        *(v14 + 4) = v18;
        *(v14 + 12) = 2080;
        *(v14 + 14) = sub_1C1AC7650(a4, a5, v24);
        *(v14 + 22) = 2080;
        v19 = [v11 localizedDescription];
        v20 = sub_1C1B94D88();
        v22 = v21;

        v23 = sub_1C1AC7650(v20, v22, v24);

        *(v14 + 24) = v23;
        _os_log_impl(&dword_1C1AA2000, v12, v13, "[%s] Error updating download cap data for Identifier %s, %s", v14, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1C6908230](v15, -1, -1);
        MEMORY[0x1C6908230](v14, -1, -1);
      }

      else
      {
      }

      swift_beginAccess();
      *(v9 + 129) = 0;
    }

    else
    {
    }
  }
}

uint64_t sub_1C1AEC16C(uint64_t a1, void *a2, char *a3, uint64_t a4, uint64_t a5)
{
  v45 = a3;
  v8 = sub_1C1B94768();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C1B949A8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v41 = a4;
    v19 = result;
    v20 = sub_1C1B4D6BC();
    swift_beginAccess();
    v39 = *(v20 + 16);
    v40 = a5;
    v21 = *(v20 + 24);
    sub_1C1AC0598(v39);

    sub_1C1B95048();
    v44 = v9;
    v22 = MEMORY[0x1E69E7CC0];
    sub_1C1B01524(MEMORY[0x1E69E7CC0]);
    v42 = v17;
    sub_1C1B94998();
    v23 = v19[4];

    sub_1C1AA7D00(v22);
    sub_1C1AEC958();
    v43 = v14;
    sub_1C1B94948();

    v37 = v8;
    v24 = v19[9];
    sub_1C1AAABE0(v19 + 5, v19[8]);
    sub_1C1B94738();
    v38 = v13;
    v26 = a2[3];
    v25 = a2[4];
    v36 = sub_1C1AAABE0(a2, v26);
    v48[3] = type metadata accessor for NativeAdTrackingInstance();
    v48[4] = &protocol witness table for NativeAdTrackingInstance;
    v48[0] = v19;
    v46 = 1;
    v47 = 1;
    v27 = swift_allocObject();
    swift_weakInit();
    v28 = swift_allocObject();
    v29 = v45;
    v28[2] = v27;
    v28[3] = v29;
    v30 = v40;
    v28[4] = v41;
    v28[5] = v30;
    v31 = v39;
    v28[6] = v39;
    v28[7] = v21;
    v45 = v12;
    v32 = *(v25 + 8);
    sub_1C1AC0598(v31);

    v32(v48, &v46, sub_1C1AEC9B0, v28, v26, v25);
    sub_1C1AC0530(v31);

    sub_1C1AA86F8(v48);
    v33 = v19[15];

    (*(v44 + 8))(v45, v37);
    (*(v43 + 8))(v42, v38);
    swift_beginAccess();
    v34 = *(v33 + 16);
    v35 = *(v33 + 24);
    *(v33 + 16) = 0;
    *(v33 + 24) = 0;
    sub_1C1AC0530(v34);
  }

  return result;
}

void sub_1C1AEC598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1)
  {
    v11 = sub_1C1B94448();
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      if (qword_1EDE6C4E0 != -1)
      {
        swift_once();
      }

      v12 = sub_1C1B94BE8();
      sub_1C1AB4454(v12, qword_1EDE6D058);

      v13 = v11;
      v14 = sub_1C1B94BC8();
      v15 = sub_1C1B95128();

      if (os_log_type_enabled(v14, v15))
      {
        v30 = a7;
        v16 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v31[0] = v29;
        *v16 = 136315650;
        sub_1C1AC1F08(&qword_1EBF087A0, &unk_1C1B9BE60);
        v17 = sub_1C1B94D98();
        v19 = sub_1C1AC7650(v17, v18, v31);

        *(v16 + 4) = v19;
        *(v16 + 12) = 2080;
        *(v16 + 14) = sub_1C1AC7650(a4, a5, v31);
        *(v16 + 22) = 2080;
        v20 = [v13 localizedDescription];
        v21 = sub_1C1B94D88();
        v23 = v22;

        v24 = sub_1C1AC7650(v21, v23, v31);

        *(v16 + 24) = v24;
        _os_log_impl(&dword_1C1AA2000, v14, v15, "[%s] Error updating impression cap data for Identifier %s, %s", v16, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1C6908230](v29, -1, -1);
        v25 = v16;
        a7 = v30;
        MEMORY[0x1C6908230](v25, -1, -1);
      }

      v26 = sub_1C1B4D6BC();

      swift_beginAccess();
      v27 = *(v26 + 16);
      v28 = *(v26 + 24);
      *(v26 + 16) = a6;
      *(v26 + 24) = a7;
      sub_1C1AC0530(v27);
      sub_1C1AC0598(a6);
    }

    else
    {
    }
  }
}

uint64_t FrequencyCapEventManager.__deallocating_deinit()
{
  sub_1C1AA86F8((v0 + 16));

  return MEMORY[0x1EEE6BDC0](v0, 57, 7);
}

unint64_t sub_1C1AEC958()
{
  result = qword_1EDE6A798;
  if (!qword_1EDE6A798)
  {
    sub_1C1B94768();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6A798);
  }

  return result;
}

uint64_t sub_1C1AEC9CC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

void *initializeBufferWithCopyOfBuffer for MetricEventsTrackingDTO(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *assignWithCopy for MetricEventsTrackingDTO(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *assignWithTake for MetricEventsTrackingDTO(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for MetricEventsTrackingDTO(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for MetricEventsTrackingDTO(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C1AECB60(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x65756C6176;
  }

  else
  {
    v4 = 0x79654B65707974;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  if (*a2)
  {
    v6 = 0x65756C6176;
  }

  else
  {
    v6 = 0x79654B65707974;
  }

  if (*a2)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1C1B95888();
  }

  return v9 & 1;
}

uint64_t sub_1C1AECC04()
{
  v1 = *v0;
  sub_1C1B95958();
  sub_1C1B94DE8();

  return sub_1C1B959A8();
}

uint64_t sub_1C1AECC84()
{
  *v0;
  sub_1C1B94DE8();
}

uint64_t sub_1C1AECCF0()
{
  v1 = *v0;
  sub_1C1B95958();
  sub_1C1B94DE8();

  return sub_1C1B959A8();
}

uint64_t sub_1C1AECD6C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1C1B955F8();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_1C1AECDCC(uint64_t *a1@<X8>)
{
  v2 = 0x79654B65707974;
  if (*v1)
  {
    v2 = 0x65756C6176;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1C1AECE08()
{
  if (*v0)
  {
    result = 0x65756C6176;
  }

  else
  {
    result = 0x79654B65707974;
  }

  *v0;
  return result;
}

uint64_t sub_1C1AECE40@<X0>(char *a1@<X8>)
{
  v2 = sub_1C1B955F8();

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

uint64_t sub_1C1AECEA4(uint64_t a1)
{
  v2 = sub_1C1AED518();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1AECEE0(uint64_t a1)
{
  v2 = sub_1C1AED518();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C1AECF1C()
{
  sub_1C1B95958();
  sub_1C1B94DE8();
  return sub_1C1B959A8();
}

uint64_t sub_1C1AECF98()
{
  sub_1C1B95958();
  sub_1C1B94DE8();
  return sub_1C1B959A8();
}

uint64_t sub_1C1AECFF0@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1C1B955F8();

  *a2 = v5 != 0;
  return result;
}

void sub_1C1AED044(uint64_t a1@<X8>)
{
  strcpy(a1, "metricEvents");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

uint64_t sub_1C1AED118(void *a1, uint64_t a2)
{
  v5 = sub_1C1AC1F08(&qword_1EBF087B0, &qword_1C1B9BF10);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1AED518();
  sub_1C1B95A18();
  v14 = 0;
  sub_1C1AED5C0();
  sub_1C1B95808();
  if (!v2)
  {
    sub_1C1AED614(&unk_1EDE6C0B0);
    sub_1C1AED614(&qword_1EDE6C0C0);
    swift_getObjectType();
    v13 = a2;
    v12[15] = 1;
    sub_1C1B95808();
  }

  return (*(v6 + 8))(v9, v5);
}

void *sub_1C1AED2E0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1C1AED328(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void *sub_1C1AED328(uint64_t *a1)
{
  v3 = sub_1C1AC1F08(&qword_1EBF087A8, &qword_1C1B9BF08);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11[-v6];
  v8 = a1[4];
  v9 = sub_1C1AAABE0(a1, a1[3]);
  sub_1C1AED518();
  sub_1C1B95A08();
  if (!v1)
  {
    v13 = 0;
    sub_1C1AED56C();
    sub_1C1B956F8();
    type metadata accessor for MetricEventsTracker();
    v11[15] = 1;
    sub_1C1AED614(&unk_1EDE6C0B0);
    sub_1C1B956F8();
    (*(v4 + 8))(v7, v3);
    v9 = v12;
  }

  sub_1C1AA86F8(a1);
  return v9;
}

unint64_t sub_1C1AED518()
{
  result = qword_1EDE6BEE0;
  if (!qword_1EDE6BEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6BEE0);
  }

  return result;
}

unint64_t sub_1C1AED56C()
{
  result = qword_1EDE6BEB8;
  if (!qword_1EDE6BEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6BEB8);
  }

  return result;
}

unint64_t sub_1C1AED5C0()
{
  result = qword_1EDE6BEC8;
  if (!qword_1EDE6BEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6BEC8);
  }

  return result;
}

uint64_t sub_1C1AED614(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MetricEventsTracker();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C1AED67C()
{
  result = qword_1EBF087B8;
  if (!qword_1EBF087B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF087B8);
  }

  return result;
}

unint64_t sub_1C1AED6D4()
{
  result = qword_1EBF087C0;
  if (!qword_1EBF087C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF087C0);
  }

  return result;
}

unint64_t sub_1C1AED72C()
{
  result = qword_1EDE6BED0;
  if (!qword_1EDE6BED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6BED0);
  }

  return result;
}

unint64_t sub_1C1AED784()
{
  result = qword_1EDE6BED8;
  if (!qword_1EDE6BED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6BED8);
  }

  return result;
}

unint64_t sub_1C1AED7D8()
{
  result = qword_1EDE6BEC0;
  if (!qword_1EDE6BEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6BEC0);
  }

  return result;
}

uint64_t sub_1C1AED82C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1;
  v4 = [a1 inclusionCriteria];
  sub_1C1AEDCB4();
  v5 = sub_1C1B94EC8();

  if (v5 >> 62)
  {
    v6 = sub_1C1B953A8();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = MEMORY[0x1E69E7CC0];
  v47 = a2;
  v48 = v2;
  if (v6)
  {
    v51 = MEMORY[0x1E69E7CC0];
    sub_1C1AC7C5C(0, v6 & ~(v6 >> 63), 0);
    if (v6 < 0)
    {
      __break(1u);
      goto LABEL_35;
    }

    v8 = 0;
    v9 = v51;
    v10 = v5;
    v49 = v5 & 0xC000000000000001;
    v11 = v5;
    do
    {
      if (v49)
      {
        v12 = MEMORY[0x1C6907490](v8, v10);
      }

      else
      {
        v12 = *(v10 + 8 * v8 + 32);
      }

      v13 = v12;
      v14 = [v12 identifier];
      v15 = sub_1C1B94D88();
      v17 = v16;

      v18 = [v13 values];
      v19 = sub_1C1B94EC8();

      v51 = v9;
      v21 = *(v9 + 16);
      v20 = *(v9 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1C1AC7C5C((v20 > 1), v21 + 1, 1);
        v9 = v51;
      }

      ++v8;
      *(v9 + 16) = v21 + 1;
      v22 = (v9 + 24 * v21);
      v22[4] = v15;
      v22[5] = v17;
      v22[6] = v19;
      v10 = v11;
    }

    while (v6 != v8);

    v2 = v48;
    v7 = MEMORY[0x1E69E7CC0];
    if (*(v9 + 16))
    {
      goto LABEL_13;
    }
  }

  else
  {

    v9 = MEMORY[0x1E69E7CC0];
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
LABEL_13:
      sub_1C1AC1F08(&qword_1EBF080E8, qword_1C1B9A6B8);
      v23 = sub_1C1B955C8();
      goto LABEL_16;
    }
  }

  v23 = MEMORY[0x1E69E7CC8];
LABEL_16:
  v51 = v23;
  sub_1C1AEDD00(v9, 1, &v51);

  a2 = v51;
  v24 = [v2 exclusionCriteria];
  v25 = sub_1C1B94EC8();

  if (v25 >> 62)
  {
    v26 = sub_1C1B953A8();
    v46 = a2;
    if (v26)
    {
LABEL_18:
      v51 = v7;
      sub_1C1AC7C5C(0, v26 & ~(v26 >> 63), 0);
      if ((v26 & 0x8000000000000000) == 0)
      {
        v27 = 0;
        v28 = v51;
        v29 = v25;
        v50 = v25 & 0xC000000000000001;
        v30 = v25;
        v31 = v26;
        do
        {
          if (v50)
          {
            v32 = MEMORY[0x1C6907490](v27, v29);
          }

          else
          {
            v32 = *(v29 + 8 * v27 + 32);
          }

          v33 = v32;
          v34 = [v32 identifier];
          v35 = sub_1C1B94D88();
          v37 = v36;

          v38 = [v33 values];
          v39 = sub_1C1B94EC8();

          v51 = v28;
          v41 = *(v28 + 16);
          v40 = *(v28 + 24);
          if (v41 >= v40 >> 1)
          {
            sub_1C1AC7C5C((v40 > 1), v41 + 1, 1);
            v28 = v51;
          }

          ++v27;
          *(v28 + 16) = v41 + 1;
          v42 = (v28 + 24 * v41);
          v42[4] = v35;
          v42[5] = v37;
          v42[6] = v39;
          v29 = v30;
        }

        while (v31 != v27);

        v2 = v48;
        goto LABEL_30;
      }

LABEL_35:
      __break(1u);

      __break(1u);
      return result;
    }
  }

  else
  {
    v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v46 = a2;
    if (v26)
    {
      goto LABEL_18;
    }
  }

  v28 = MEMORY[0x1E69E7CC0];
LABEL_30:
  if (*(v28 + 16))
  {
    sub_1C1AC1F08(&qword_1EBF080E8, qword_1C1B9A6B8);
    v43 = sub_1C1B955C8();
  }

  else
  {
    v43 = MEMORY[0x1E69E7CC8];
  }

  v51 = v43;
  sub_1C1AEDD00(v28, 1, &v51);

  v45 = v51;
  *v47 = v46;
  v47[1] = v45;
  return result;
}

unint64_t sub_1C1AEDCB4()
{
  result = qword_1EDE6A640;
  if (!qword_1EDE6A640)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE6A640);
  }

  return result;
}

unint64_t sub_1C1AEDD00(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  v4 = a3;
  for (i = (result + 48); ; i += 3)
  {
    v10 = *(i - 2);
    v9 = *(i - 1);
    v11 = *i;
    v12 = *v4;

    result = sub_1C1AA7C14(v10, v9);
    v14 = v12[2];
    v15 = (v13 & 1) == 0;
    v16 = __OFADD__(v14, v15);
    v17 = v14 + v15;
    if (v16)
    {
      break;
    }

    v18 = v13;
    if (v12[3] < v17)
    {
      sub_1C1AD8ED4(v17, a2 & 1);
      v19 = *v4;
      result = sub_1C1AA7C14(v10, v9);
      if ((v18 & 1) != (v20 & 1))
      {
        goto LABEL_34;
      }

LABEL_11:
      v21 = *v4;
      if ((v18 & 1) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_12;
    }

    if (a2)
    {
      goto LABEL_11;
    }

    v31 = result;
    sub_1C1ADA39C();
    result = v31;
    v4 = a3;
    v21 = *a3;
    if ((v18 & 1) == 0)
    {
LABEL_25:
      v21[(result >> 6) + 8] |= 1 << result;
      v32 = (v21[6] + 16 * result);
      *v32 = v10;
      v32[1] = v9;
      *(v21[7] + 8 * result) = v11;
      v33 = v21[2];
      v16 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v16)
      {
        goto LABEL_30;
      }

      v21[2] = v34;
      goto LABEL_5;
    }

LABEL_12:
    v22 = *(v21[7] + 8 * result);
    v23 = *(v11 + 16);
    v24 = *(v22 + 2);
    v25 = v24 + v23;
    if (__OFADD__(v24, v23))
    {
      goto LABEL_29;
    }

    v36 = result;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || (v27 = *(v22 + 3) >> 1, v27 < v25))
    {
      if (v24 <= v25)
      {
        v28 = v24 + v23;
      }

      else
      {
        v28 = v24;
      }

      v22 = sub_1C1ACDF80(isUniquelyReferenced_nonNull_native, v28, 1, v22);
      v27 = *(v22 + 3) >> 1;
    }

    v4 = a3;
    if (*(v11 + 16))
    {
      if (v27 - *(v22 + 2) < v23)
      {
        goto LABEL_32;
      }

      swift_arrayInitWithCopy();

      if (v23)
      {
        v29 = *(v22 + 2);
        v16 = __OFADD__(v29, v23);
        v30 = v29 + v23;
        if (v16)
        {
          goto LABEL_33;
        }

        *(v22 + 2) = v30;
      }
    }

    else
    {

      if (v23)
      {
        goto LABEL_31;
      }
    }

    v7 = v21[7];
    v8 = *(v7 + 8 * v36);
    *(v7 + 8 * v36) = v22;

LABEL_5:
    a2 = 1;
    if (!--v3)
    {
      return result;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_1C1B958E8();
  __break(1u);
  return result;
}

uint64_t CachePolicy.hashValue.getter()
{
  v1 = *v0;
  sub_1C1B95958();
  MEMORY[0x1C6907960](v1);
  return sub_1C1B959A8();
}

unint64_t sub_1C1AEDFF8()
{
  result = qword_1EBF087C8;
  if (!qword_1EBF087C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF087C8);
  }

  return result;
}

uint64_t dispatch thunk of ContentPipelineTransformer.fetch(using:adType:cachePolicy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 24);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_1C1AEE19C;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t sub_1C1AEE19C(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

void *sub_1C1AEE2C0(void *a1)
{
  v1 = [a1 policyValue];
  sub_1C1AEE4FC();
  v2 = sub_1C1B94CB8();

  sub_1C1AC1F08(&unk_1EBF07FA0, &unk_1C1B9A620);
  result = sub_1C1B955A8();
  v4 = result;
  v5 = 0;
  v7 = v2 + 64;
  v6 = *(v2 + 64);
  v33 = v2;
  v8 = 1 << *(v2 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v6;
  v11 = (v8 + 63) >> 6;
  v32 = (result + 8);
  if ((v9 & v6) != 0)
  {
    while (1)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_10:
      v15 = v12 | (v5 << 6);
      v16 = (*(v33 + 48) + 16 * v15);
      v17 = *v16;
      v18 = v16[1];
      v19 = *(*(v33 + 56) + 8 * v15);

      result = [v19 integerValue];
      *&v32[(v15 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v15;
      v20 = (v4[6] + 16 * v15);
      *v20 = v17;
      v20[1] = v18;
      *(v4[7] + 8 * v15) = result;
      v21 = v4[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        break;
      }

      v4[2] = v23;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v11)
      {

        v24 = [a1 creativeIdentifier];
        v25 = sub_1C1B94D88();
        v27 = v26;

        v28 = type metadata accessor for PolicyData();
        v29 = objc_allocWithZone(v28);
        v30 = &v29[OBJC_IVAR____TtC15PromotedContent10PolicyData_creativeIdentifier];
        *v30 = v25;
        v30[1] = v27;
        *&v29[OBJC_IVAR____TtC15PromotedContent10PolicyData_policyValues] = v4;
        v34.receiver = v29;
        v34.super_class = v28;
        return objc_msgSendSuper2(&v34, sel_init);
      }

      v14 = *(v7 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1C1AEE4FC()
{
  result = qword_1EDE6C9F0;
  if (!qword_1EDE6C9F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE6C9F0);
  }

  return result;
}

uint64_t sub_1C1AEE55C()
{
  sub_1C1B95958();
  sub_1C1B94DE8();
  return sub_1C1B959A8();
}

uint64_t sub_1C1AEE5E0()
{
  sub_1C1B95958();
  sub_1C1B94DE8();
  return sub_1C1B959A8();
}

uint64_t sub_1C1AEE63C@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1C1B955F8();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_1C1AEE6DC@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1C1B955F8();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1C1AEE734(uint64_t a1)
{
  v2 = sub_1C1AEEDE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1AEE770(uint64_t a1)
{
  v2 = sub_1C1AEEDE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id SafariTapAction.__allocating_init(destinationURL:actionType:confirmedClickInterval:)(uint64_t a1, uint64_t a2, double a3)
{
  v7 = objc_allocWithZone(v3);
  sub_1C1AC5430(a1, &v7[OBJC_IVAR____TtC15PromotedContent15SafariTapAction_destinationURL]);
  *&v7[OBJC_IVAR___APPCTapAction_actionType] = a2;
  *&v7[OBJC_IVAR___APPCTapAction_confirmedClickInterval] = a3;
  v10.receiver = v7;
  v10.super_class = type metadata accessor for TapAction();
  v8 = objc_msgSendSuper2(&v10, sel_init);
  sub_1C1AC54A0(a1);
  return v8;
}

id SafariTapAction.init(destinationURL:actionType:confirmedClickInterval:)(uint64_t a1, uint64_t a2, double a3)
{
  sub_1C1AC5430(a1, &v3[OBJC_IVAR____TtC15PromotedContent15SafariTapAction_destinationURL]);
  *&v3[OBJC_IVAR___APPCTapAction_actionType] = a2;
  *&v3[OBJC_IVAR___APPCTapAction_confirmedClickInterval] = a3;
  v9.receiver = v3;
  v9.super_class = type metadata accessor for TapAction();
  v7 = objc_msgSendSuper2(&v9, sel_init);
  sub_1C1AC54A0(a1);
  return v7;
}

void *sub_1C1AEE938(uint64_t *a1)
{
  v3 = v1;
  v5 = sub_1C1AC1F08(&qword_1EBF07AC8, &qword_1C1B9CED0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v20 - v7;
  v22 = sub_1C1AC1F08(&qword_1EBF087F8, &qword_1C1B9C388);
  v9 = *(v22 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v12 = v20 - v11;
  v13 = a1[4];
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1AEEDE8();
  sub_1C1B95A08();
  if (v2)
  {
    sub_1C1AA86F8(a1);
    type metadata accessor for SafariTapAction();
    v17 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x30);
    v18 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v14 = v9;
    v15 = sub_1C1B944A8();
    sub_1C1AEF214(&unk_1EDE6C3A0);
    v16 = v22;
    sub_1C1B956F8();
    (*(*(v15 - 8) + 56))(v8, 0, 1, v15);
    sub_1C1AEF258(v8, v1 + OBJC_IVAR____TtC15PromotedContent15SafariTapAction_destinationURL);
    sub_1C1B95628();
    sub_1C1AAD2FC(v21, v20);
    v3 = TapAction.init(from:)(v20);
    sub_1C1AA86F8(v21);
    (*(v14 + 8))(v12, v16);
    sub_1C1AA86F8(a1);
  }

  return v3;
}

uint64_t sub_1C1AEEC58(void *a1)
{
  v3 = sub_1C1AC1F08(&qword_1EBF087D0, &qword_1C1B9C210);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11[-1] - v6;
  v8 = a1[4];
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1AEEDE8();
  sub_1C1B95A18();
  sub_1C1AC1F08(&qword_1EBF07AC8, &qword_1C1B9CED0);
  sub_1C1AEEE3C();
  sub_1C1B95808();
  if (!v1)
  {
    sub_1C1B95738();
    sub_1C1B3BBE0(v11);
    sub_1C1AA86F8(v11);
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1C1AEEDE8()
{
  result = qword_1EBF087D8;
  if (!qword_1EBF087D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF087D8);
  }

  return result;
}

unint64_t sub_1C1AEEE3C()
{
  result = qword_1EDE6C398;
  if (!qword_1EDE6C398)
  {
    sub_1C1AC3404(&qword_1EBF07AC8, &qword_1C1B9CED0);
    sub_1C1AEF214(&unk_1EDE6C3B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6C398);
  }

  return result;
}

id SafariTapAction.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SafariTapAction();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SafariTapAction()
{
  result = qword_1EDE6C220;
  if (!qword_1EDE6C220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C1AEEFE8()
{
  sub_1C1AEF0A4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1C1AEF0A4()
{
  if (!qword_1EDE6CD38)
  {
    sub_1C1B944A8();
    v0 = sub_1C1B952D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE6CD38);
    }
  }
}

unint64_t sub_1C1AEF110()
{
  result = qword_1EBF087E0;
  if (!qword_1EBF087E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF087E0);
  }

  return result;
}

unint64_t sub_1C1AEF168()
{
  result = qword_1EBF087E8;
  if (!qword_1EBF087E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF087E8);
  }

  return result;
}

unint64_t sub_1C1AEF1C0()
{
  result = qword_1EBF087F0;
  if (!qword_1EBF087F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF087F0);
  }

  return result;
}

uint64_t sub_1C1AEF214(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1C1B944A8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C1AEF258(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1AC1F08(&qword_1EBF07AC8, &qword_1C1B9CED0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t Placement.apPlacement.getter(uint64_t result)
{
  if ((result - 100) >= 6 && (result - 7005) >= 4 && result != 0)
  {
    result = sub_1C1B958C8();
    __break(1u);
  }

  return result;
}

uint64_t sub_1C1AEF350()
{
  v1 = *v0;
  sub_1C1B95958();
  MEMORY[0x1C6907960](v1);
  return sub_1C1B959A8();
}

uint64_t sub_1C1AEF398()
{
  v1 = *v0;
  sub_1C1B95958();
  MEMORY[0x1C6907960](v1);
  return sub_1C1B959A8();
}

uint64_t sub_1C1AEF3DC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C1AEF4C0(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1C1AEF4C0(uint64_t result)
{
  if ((result - 7005) < 4 || result == 0)
  {
    v2 = result;
  }

  else
  {
    v2 = 0;
  }

  if ((result - 100) >= 6)
  {
    return v2;
  }

  return result;
}

unint64_t sub_1C1AEF4F4()
{
  result = qword_1EBF08800;
  if (!qword_1EBF08800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08800);
  }

  return result;
}

unint64_t sub_1C1AEF558()
{
  result = qword_1EDE6BC40;
  if (!qword_1EDE6BC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6BC40);
  }

  return result;
}

uint64_t sub_1C1AEF5AC(uint64_t a1)
{
  if ((*(a1 + 8) & 7) == 7)
  {
    return (*a1 + 7);
  }

  else
  {
    return *(a1 + 8) & 7;
  }
}

uint64_t sub_1C1AEF5C8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 9))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 8);
  if (v3 <= 7)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1C1AEF610(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 8) = 0;
    *result = a2 - 249;
    if (a3 >= 0xF9)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C1AEF654(uint64_t result, unsigned int a2)
{
  if (a2 >= 7)
  {
    *result = a2 - 7;
    LOBYTE(a2) = 7;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t AdContentSessionCancelReason.hashValue.getter()
{
  sub_1C1B95958();
  MEMORY[0x1C6907960](0);
  return sub_1C1B959A8();
}

uint64_t AdContentSessionUnfilledReason.errorDescription.getter()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    v2 = 0x7373694D616C73;
    if (v1 != 1)
    {
      v2 = 0x64417963696C6F70;
    }

    if (v1)
    {
      return v2;
    }

    else
    {
      return 0x616974696E696E75;
    }
  }

  else
  {
    MEMORY[0x1C6906DF0](0x20726568746FLL, 0xE600000000000000);
    type metadata accessor for APAdFillFailureReasonCode(0);
    sub_1C1B95558();
    return 0;
  }
}

BOOL static AdContentSessionUnfilledReason.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) == 1)
  {
    if (v2)
    {
      if (v2 == 1)
      {
        if (v3 == 1)
        {
          v5 = *(a2 + 8);
        }

        else
        {
          v5 = 0;
        }

        if (v5)
        {
          return 1;
        }
      }

      else
      {
        if (v3 > 1)
        {
          v8 = *(a2 + 8);
        }

        else
        {
          v8 = 0;
        }

        if (v8)
        {
          return 1;
        }
      }
    }

    else
    {
      if (v3)
      {
        LOBYTE(v7) = 0;
      }

      else
      {
        v7 = *(a2 + 8);
      }

      if (v7)
      {
        return 1;
      }
    }
  }

  else if ((*(a2 + 8) & 1) == 0)
  {
    return v2 == v3;
  }

  return 0;
}

BOOL sub_1C1AEF880(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) != 1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return v2 == v3;
    }

    return 0;
  }

  if (v2)
  {
    if (v2 != 1)
    {
      if (v3 > 1)
      {
        v8 = *(a2 + 8);
      }

      else
      {
        v8 = 0;
      }

      return v8 == 1;
    }

    v5 = v3 == 1;
  }

  else
  {
    v5 = v3 == 0;
  }

  if (v5)
  {
    v7 = *(a2 + 8);
  }

  else
  {
    v7 = 0;
  }

  return (v7 & 1) != 0;
}

uint64_t sub_1C1AEF8E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15PromotedContent16AdContentSession_clientRequestID;
  swift_beginAccess();
  v5 = sub_1C1B945F8();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1C1AEF974(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1C1B945F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = *a2;
  v10 = OBJC_IVAR____TtC15PromotedContent16AdContentSession_clientRequestID;
  swift_beginAccess();
  (*(v5 + 40))(v9 + v10, v8, v4);
  return swift_endAccess();
}

uint64_t sub_1C1AEFA8C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15PromotedContent16AdContentSession_clientRequestID;
  swift_beginAccess();
  v4 = sub_1C1B945F8();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1C1AEFB34()
{
  v1 = v0 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_diagnosticDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_1C1AEFB84(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_diagnosticDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1C1AEFBF0(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15PromotedContent16AdContentSession_diagnosticDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1C1AEFC90;
}

void sub_1C1AEFC90(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t AdContentSession.__allocating_init(context:placement:commandManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = *(v5 + 48);
  v10 = *(v5 + 52);
  v11 = swift_allocObject();
  *(v11 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_diagnosticDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v11 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_commandManager + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_1C1B94578();
  v12 = OBJC_IVAR____TtC15PromotedContent16AdContentSession_completionLock;
  *(v11 + v12) = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  v13 = (v11 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_completion);
  *v13 = 0;
  v13[1] = 0;
  *(v11 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_completedWithError) = 0;
  *(v11 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_missedOpportunityDueToSLA) = 0;
  v14 = OBJC_IVAR___APPCBaseContext_identifier;
  swift_beginAccess();
  v15 = OBJC_IVAR____TtC15PromotedContent16AdContentSession_clientRequestID;
  v16 = sub_1C1B945F8();
  (*(*(v16 - 8) + 16))(v11 + v15, a1 + v14, v16);
  *(v11 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_context) = a1;
  *(v11 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_placement) = a2;
  *(v11 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_commandManager + 8) = a4;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v11;
}

uint64_t AdContentSession.init(context:placement:commandManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_diagnosticDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_commandManager + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_1C1B94578();
  v8 = OBJC_IVAR____TtC15PromotedContent16AdContentSession_completionLock;
  *(v4 + v8) = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  v9 = (v4 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_completion);
  *v9 = 0;
  v9[1] = 0;
  *(v4 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_completedWithError) = 0;
  *(v4 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_missedOpportunityDueToSLA) = 0;
  v10 = OBJC_IVAR___APPCBaseContext_identifier;
  swift_beginAccess();
  v11 = OBJC_IVAR____TtC15PromotedContent16AdContentSession_clientRequestID;
  v12 = sub_1C1B945F8();
  (*(*(v12 - 8) + 16))(v4 + v11, a1 + v10, v12);
  *(v4 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_context) = a1;
  *(v4 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_placement) = a2;
  *(v4 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_commandManager + 8) = a4;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v4;
}

uint64_t static AdContentSession.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1B945F8();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v17[-v10];
  v12 = OBJC_IVAR____TtC15PromotedContent16AdContentSession_clientRequestID;
  swift_beginAccess();
  v13 = v5[2];
  v13(v11, a1 + v12, v4);
  v14 = OBJC_IVAR____TtC15PromotedContent16AdContentSession_clientRequestID;
  swift_beginAccess();
  v13(v9, a2 + v14, v4);
  LOBYTE(a2) = sub_1C1B945C8();
  v15 = v5[1];
  v15(v9, v4);
  v15(v11, v4);
  return a2 & 1;
}

uint64_t sub_1C1AF01B0()
{
  v1 = v0;
  v2 = sub_1C1B945F8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v26[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1C1B94588();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v26[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C1B94568();
  sub_1C1B94528();
  v13 = v12;
  (*(v8 + 8))(v11, v7);
  v14 = sub_1C1B95138();
  sub_1C1AC53E4();
  v15 = sub_1C1B95298();
  if (os_log_type_enabled(v15, v14))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v27 = v17;
    *v16 = 136315650;
    v18 = OBJC_IVAR____TtC15PromotedContent16AdContentSession_clientRequestID;
    swift_beginAccess();
    (*(v3 + 16))(v6, v1 + v18, v2);
    v19 = sub_1C1B945A8();
    v21 = v20;
    (*(v3 + 8))(v6, v2);
    v22 = sub_1C1AC7650(v19, v21, &v27);

    *(v16 + 4) = v22;
    *(v16 + 12) = 2048;
    *(v16 + 14) = v13;
    *(v16 + 22) = 2080;
    *(v16 + 24) = sub_1C1AC7650(0x7373696D20414C53, 0xE800000000000000, &v27);
    _os_log_impl(&dword_1C1AA2000, v15, v14, "Task (%s was canceled after %f. Reason: %s", v16, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1C6908230](v17, -1, -1);
    MEMORY[0x1C6908230](v16, -1, -1);
  }

  v23 = v1 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_commandManager;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v25 = *(v23 + 8);
    swift_getObjectType();
    (*(v25 + 32))(v1);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1C1AF0518(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_completion);
  v4 = *(v2 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_completion);
  v5 = *(v2 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_completion + 8);
  *v3 = a1;
  v3[1] = a2;
  sub_1C1AC0598(a1);

  return sub_1C1AC0530(v4);
}

uint64_t sub_1C1AF0564(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_commandManager;
  swift_unknownObjectWeakLoadStrong();
  *(a1 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_commandManager + 8) = *(v3 + 8);
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  v4 = *(v1 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_completion);
  v5 = *(v1 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_completion + 8);
  v6 = (a1 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_completion);
  v7 = *(a1 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_completion);
  v8 = *(a1 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_completion + 8);
  *v6 = v4;
  v6[1] = v5;
  sub_1C1AC0598(v4);
  sub_1C1AC0530(v7);
  v9 = v1 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_diagnosticDelegate;
  swift_beginAccess();
  swift_unknownObjectWeakLoadStrong();
  v10 = *(v9 + 8);
  v11 = a1 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_diagnosticDelegate;
  swift_beginAccess();
  *(v11 + 8) = v10;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

id sub_1C1AF0664(uint64_t a1, char a2)
{
  v3 = v2;
  v55 = sub_1C1B945F8();
  v6 = *(v55 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v55);
  v10 = &v47[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v47[-v12];
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v47[-v14];
  v16 = *a1;
  v17 = *(a1 + 8);
  v18 = *(a1 + 9);
  v54 = v16;
  v56 = v16;
  v52 = v17;
  v57 = v17;
  v58 = v18;
  sub_1C1AF0B8C(&v56, a2);
  v53 = OBJC_IVAR____TtC15PromotedContent16AdContentSession_completionLock;
  [*(v3 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_completionLock) lock];
  v19 = (v3 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_completion);
  v20 = *(v3 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_completion);
  if (v20)
  {
    v21 = v19[1];
    v51 = v18;
    v50 = v21;
    if (v18)
    {
    }

    else
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1C1AC0598(v20);
      if (Strong)
      {
        v25 = v54;
        v26 = v52;
        sub_1C1AF11E8(v54, v52, 0);
        v27 = [Strong identifier];
        v49 = v20;
        v28 = v27;
        swift_unknownObjectRelease();
        sub_1C1B945D8();
        sub_1C1AF11F4(v25, v26, 0);

        v29 = *(v6 + 32);
        v30 = v55;
        v29(v15, v13, v55);
        v29(v10, v15, v30);
        v20 = v49;
        v31 = OBJC_IVAR____TtC15PromotedContent16AdContentSession_clientRequestID;
        swift_beginAccess();
        (*(v6 + 40))(v3 + v31, v10, v30);
        swift_endAccess();
      }
    }

    v32 = sub_1C1B95138();
    sub_1C1AC53E4();
    v33 = sub_1C1B95298();
    if (os_log_type_enabled(v33, v32))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v49 = v20;
      v36 = v35;
      v56 = v35;
      *v34 = 136315138;
      v37 = OBJC_IVAR____TtC15PromotedContent16AdContentSession_clientRequestID;
      swift_beginAccess();
      (*(v6 + 16))(v10, v3 + v37, v55);
      v38 = sub_1C1B945A8();
      v48 = v32;
      v40 = v39;
      (*(v6 + 8))(v10, v55);
      v41 = sub_1C1AC7650(v38, v40, &v56);

      *(v34 + 4) = v41;
      _os_log_impl(&dword_1C1AA2000, v33, v48, "Task (%s is resolving", v34, 0xCu);
      sub_1C1AA86F8(v36);
      v42 = v36;
      v20 = v49;
      MEMORY[0x1C6908230](v42, -1, -1);
      MEMORY[0x1C6908230](v34, -1, -1);
    }

    v59 = v54;
    v60 = v52;
    v61 = v51;
    v43 = OBJC_IVAR____TtC15PromotedContent16AdContentSession_clientRequestID;
    swift_beginAccess();
    v44 = v55;
    (*(v6 + 16))(v10, v3 + v43, v55);
    v20(&v59, v10);
    sub_1C1AC0530(v20);
    (*(v6 + 8))(v10, v44);
    v45 = *v19;
    v46 = v19[1];
    *v19 = 0;
    v19[1] = 0;
    sub_1C1AC0530(v45);
    return [*(v3 + v53) unlock];
  }

  else
  {
    v22 = *(v3 + v53);

    return [v22 unlock];
  }
}

uint64_t sub_1C1AF0B8C(uint64_t a1, char a2)
{
  if (*(a1 + 9) == 1)
  {
    v3 = *a1;
    v4 = *(a1 + 8);
    v5 = v2 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_diagnosticDelegate;
    if ((v4 & 1) != 0 && v3 == 1)
    {
      swift_beginAccess();
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v7 = *(v5 + 8);
        ObjectType = swift_getObjectType();
        (*(v7 + 24))(15, *(v2 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_completedWithError), ObjectType, v7);
        result = swift_unknownObjectRelease();
      }

      *(v2 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_completedWithError) = 1;
      v9 = OBJC_IVAR____TtC15PromotedContent16AdContentSession_missedOpportunityDueToSLA;
    }

    else
    {
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v14 = *(v5 + 8);
        v15 = swift_getObjectType();
        (*(v14 + 8))(v15, v14);
        swift_unknownObjectRelease();
      }

      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        if (v4)
        {
          v16 = 2 * v3 + 13;
        }

        else
        {
          v16 = v3;
        }

        v17 = *(v5 + 8);
        v18 = swift_getObjectType();
        (*(v17 + 24))(v16, *(v2 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_completedWithError), v18, v17);
        result = swift_unknownObjectRelease();
      }

      v9 = OBJC_IVAR____TtC15PromotedContent16AdContentSession_completedWithError;
    }

LABEL_24:
    *(v2 + v9) = 1;
    return result;
  }

  v11 = v2 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_diagnosticDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = *(v11 + 8);
    v13 = swift_getObjectType();
    (*(v12 + 8))(v13, v12);
    result = swift_unknownObjectRelease();
  }

  if (a2)
  {
    if (!*(v2 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_missedOpportunityDueToSLA))
    {
      return result;
    }

    goto LABEL_21;
  }

  if (*(v2 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_missedOpportunityDueToSLA))
  {
LABEL_21:
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v19 = *(v11 + 8);
      v20 = swift_getObjectType();
      (*(v19 + 24))(16, *(v2 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_completedWithError), v20, v19);
      result = swift_unknownObjectRelease();
    }

    v9 = OBJC_IVAR____TtC15PromotedContent16AdContentSession_completedWithError;
    goto LABEL_24;
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v21 = *(v11 + 8);
    v22 = swift_getObjectType();
    (*(v21 + 16))(v22, v21);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t AdContentSession.deinit()
{
  v1 = OBJC_IVAR____TtC15PromotedContent16AdContentSession_clientRequestID;
  v2 = sub_1C1B945F8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1C1ABD038(v0 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_diagnosticDelegate);
  sub_1C1ABD038(v0 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_commandManager);
  v3 = OBJC_IVAR____TtC15PromotedContent16AdContentSession_sessionBegan;
  v4 = sub_1C1B94588();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = *(v0 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_completion + 8);
  sub_1C1AC0530(*(v0 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_completion));
  return v0;
}

uint64_t AdContentSession.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15PromotedContent16AdContentSession_clientRequestID;
  v2 = sub_1C1B945F8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1C1ABD038(v0 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_diagnosticDelegate);
  sub_1C1ABD038(v0 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_commandManager);
  v3 = OBJC_IVAR____TtC15PromotedContent16AdContentSession_sessionBegan;
  v4 = sub_1C1B94588();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = *(v0 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_completion + 8);
  sub_1C1AC0530(*(v0 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_completion));
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v6, v7);
}

uint64_t sub_1C1AF1050(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_1C1B945F8();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v19[-v10];
  v12 = *a1;
  v13 = *a2;
  v14 = OBJC_IVAR____TtC15PromotedContent16AdContentSession_clientRequestID;
  swift_beginAccess();
  v15 = v5[2];
  v15(v11, v12 + v14, v4);
  v16 = OBJC_IVAR____TtC15PromotedContent16AdContentSession_clientRequestID;
  swift_beginAccess();
  v15(v9, v13 + v16, v4);
  LOBYTE(v13) = sub_1C1B945C8();
  v17 = v5[1];
  v17(v9, v4);
  v17(v11, v4);
  return v13 & 1;
}

id sub_1C1AF11E8(id result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    return result;
  }

  return result;
}

void sub_1C1AF11F4(id a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }
}

unint64_t sub_1C1AF1204()
{
  result = qword_1EBF08808;
  if (!qword_1EBF08808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08808);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AdContentSessionUnfilledReason(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AdContentSessionUnfilledReason(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1C1AF12B8(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C1AF12D4(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t type metadata accessor for AdContentSession()
{
  result = qword_1EDE6B538;
  if (!qword_1EDE6B538)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C1AF1394()
{
  result = sub_1C1B945F8();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_1C1B94588();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

id sub_1C1AF1608(id a1)
{
  v2 = sub_1C1B944A8();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v31 - v8;
  if ([a1 actionType] == 3)
  {
    v10 = [a1 actionURL];
    if (v10)
    {
      v11 = v10;
      sub_1C1B94488();

      v12 = v3[2];
      v12(v7, v9, v2);
      [a1 confirmedClickInterval];
      v14 = v13;
      v15 = objc_allocWithZone(type metadata accessor for DeepLinkTapAction());
      v12(&v15[OBJC_IVAR____TtC15PromotedContent17DeepLinkTapAction_url], v7, v2);
      *&v15[OBJC_IVAR___APPCTapAction_actionType] = 3;
      *&v15[OBJC_IVAR___APPCTapAction_confirmedClickInterval] = v14;
      v16 = type metadata accessor for TapAction();
      v31.receiver = v15;
      v31.super_class = v16;
      v17 = objc_msgSendSuper2(&v31, sel_init);

      v18 = v3[1];
      v18(v7, v2);
      v18(v9, v2);
      return v17;
    }

    if (qword_1EDE6C4E0 != -1)
    {
      swift_once();
    }

    v29 = sub_1C1B94BE8();
    sub_1C1AB4454(v29, qword_1EDE6D058);
    v21 = sub_1C1B94BC8();
    v30 = sub_1C1B95128();
    if (!os_log_type_enabled(v21, v30))
    {
      goto LABEL_14;
    }

    v23 = swift_slowAlloc();
    *v23 = 0;
    v24 = "Attempting to initialize a DeepLinkTapAction without a URL.";
    v25 = v30;
    v26 = v21;
    v27 = v23;
    v28 = 2;
LABEL_13:
    _os_log_impl(&dword_1C1AA2000, v26, v25, v24, v27, v28);
    MEMORY[0x1C6908230](v23, -1, -1);
LABEL_14:

    goto LABEL_15;
  }

  if (qword_1EDE6C4E0 != -1)
  {
    swift_once();
  }

  v20 = sub_1C1B94BE8();
  sub_1C1AB4454(v20, qword_1EDE6D058);
  a1 = a1;
  v21 = sub_1C1B94BC8();
  v22 = sub_1C1B95128();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 134217984;
    *(v23 + 4) = [a1 actionType];

    v24 = "Attempting to initialize a WebTapAction with an invalid tap action type %ld.";
    v25 = v22;
    v26 = v21;
    v27 = v23;
    v28 = 12;
    goto LABEL_13;
  }

LABEL_15:
  return 0;
}

uint64_t PromotedContent.dataIdentifier.getter()
{
  v1 = (v0 + OBJC_IVAR___APPCPromotedContent_identifier);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_1C1AF19F8()
{
  v1 = (*v0 + OBJC_IVAR___APPCPromotedContent_identifier);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_1C1AF1A58(uint64_t a1)
{
  *(a1 + 8) = sub_1C1AF1AC0(&qword_1EDE6BC08);
  result = sub_1C1AF1AC0(&qword_1EDE6BC10);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C1AF1AC0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PromotedContent();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t ActionStatus.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1C1AF1B1C()
{
  result = qword_1EBF08810;
  if (!qword_1EBF08810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08810);
  }

  return result;
}

uint64_t *sub_1C1AF1B70@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t static AppAdTemplateType.translateTemplateType(tapActionTemplateType:)(uint64_t a1)
{
  result = sub_1C1AF1CC0(a1);
  if (v2)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1C1AF1BDC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C1AF1CC0(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1C1AF1CC0(uint64_t result)
{
  if ((result - 4780) >= 0xB && result != 0)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1C1AF1CE4()
{
  result = qword_1EBF08818;
  if (!qword_1EBF08818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08818);
  }

  return result;
}

unint64_t sub_1C1AF1D48()
{
  result = qword_1EBF08820;
  if (!qword_1EBF08820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08820);
  }

  return result;
}

uint64_t sub_1C1AF1D9C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v107 = a2;
  v123 = sub_1C1B944A8();
  v108 = *(v123 - 8);
  v3 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v123);
  v114 = &v105 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C1AC1F08(&qword_1EBF07AC8, &qword_1C1B9CED0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v109 = &v105 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v113 = &v105 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v122 = &v105 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v105 - v13;
  v15 = sub_1C1B945F8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v105 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1C1B945E8();
  v112 = sub_1C1B945A8();
  v115 = v20;
  (*(v16 + 8))(v19, v15);
  v21 = MEMORY[0x1E69E7CC0];
  v133 = MEMORY[0x1E69E7CC0];
  v116 = a1;
  v22 = [a1 asset];
  if (!v22)
  {
    goto LABEL_22;
  }

  v23 = v22;
  v24 = [v22 assetInformation];
  if (v24)
  {
    v25 = v24;
    sub_1C1AF2854();
    v26 = sub_1C1B94EC8();

    if (v26 >> 62)
    {
      result = sub_1C1B953A8();
      if (result)
      {
        goto LABEL_5;
      }
    }

    else
    {
      result = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
LABEL_5:
        v106 = v23;
        if (result < 1)
        {
          __break(1u);
          return result;
        }

        v28 = 0;
        v118 = (v26 & 0xC000000000000001);
        v29 = (v108 + 56);
        v117 = (v108 + 48);
        v111 = (v108 + 32);
        v110 = (v108 + 8);
        v120 = v26;
        v121 = v14;
        v119 = result;
        v30 = v123;
        do
        {
          if (v118)
          {
            v31 = MEMORY[0x1C6907490](v28, v26);
          }

          else
          {
            v31 = *(v26 + 8 * v28 + 32);
          }

          v32 = v31;
          v33 = [v31 contentType];
          v34 = [v32 width];
          v35 = [v32 height];
          v36 = [v32 url];
          if (v36)
          {
            v37 = v36;
            sub_1C1B94488();

            v38 = 0;
          }

          else
          {
            v38 = 1;
          }

          v125 = *v29;
          (v125)(v14, v38, 1, v30);
          v39 = [v32 length];
          [v32 bitrate];
          v41 = v40;
          v42 = [v32 autoloop];
          v124 = type metadata accessor for ClientLayoutAssetInfo();
          v43 = objc_allocWithZone(v124);
          *&v43[OBJC_IVAR___APPCClientLayoutAssetInfo_contentType] = v33;
          *&v43[OBJC_IVAR___APPCClientLayoutAssetInfo_width] = v34;
          *&v43[OBJC_IVAR___APPCClientLayoutAssetInfo_height] = v35;
          sub_1C1AC5430(v14, &v43[OBJC_IVAR___APPCClientLayoutAssetInfo_url]);
          *&v43[OBJC_IVAR___APPCClientLayoutAssetInfo_length] = v39;
          *&v43[OBJC_IVAR___APPCClientLayoutAssetInfo_bitrate] = v41;
          v43[OBJC_IVAR___APPCClientLayoutAssetInfo_autoloop] = v42;
          v44 = v122;
          sub_1C1AC5430(v14, v122);
          if ((*v117)(v44, 1, v30) == 1)
          {
            sub_1C1AC54A0(v44);
            (v125)(&v43[OBJC_IVAR___APPCClientLayoutAssetInfo_proxyUrl], 1, 1, v30);
          }

          else
          {
            v45 = v114;
            (*v111)(v114, v44, v30);
            v46 = objc_opt_self();
            v47 = sub_1C1B94478();
            v48 = sub_1C1B94D78();
            v49 = [v46 proxyURLForURL:v47 adIdentifier:v48];

            v50 = v113;
            sub_1C1B94488();

            (*v110)(v45, v30);
            (v125)(v50, 0, 1, v30);
            sub_1C1AEF258(v50, &v43[OBJC_IVAR___APPCClientLayoutAssetInfo_proxyUrl]);
          }

          v126.receiver = v43;
          v126.super_class = v124;
          v51 = objc_msgSendSuper2(&v126, sel_init);
          v14 = v121;
          sub_1C1AC54A0(v121);
          v52 = v51;
          MEMORY[0x1C6906EA0]();
          if (*((v133 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v133 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v53 = *((v133 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_1C1B94F08();
          }

          v28 = v28 + 1;
          sub_1C1B94F48();

          v26 = v120;
        }

        while (v119 != v28);
        v21 = v133;
        v23 = v106;
      }
    }
  }

LABEL_22:

  v54 = [v116 asset];
  if (v54 && (v55 = v54, v56 = [v54 name], v55, v56))
  {
    v57 = sub_1C1B94D88();
    v59 = v58;
  }

  else
  {
    v57 = 0;
    v59 = 0;
  }

  v60 = [v116 asset];
  v61 = v60;
  if (v60)
  {
    v62 = [v60 adamID];
  }

  else
  {
    v62 = 0;
  }

  v63 = [v116 aHh];
  if (v63 && (v64 = v63, v65 = [v63 treatment], v64, v65))
  {
    v66 = sub_1C1B94D88();
    v68 = v67;
  }

  else
  {
    v66 = 0;
    v68 = 0;
  }

  v69 = type metadata accessor for ClientLayoutAsset();
  v70 = objc_allocWithZone(v69);
  v71 = &v70[OBJC_IVAR___APPCClientLayoutAsset_name];
  *v71 = v57;
  v71[1] = v59;
  *&v70[OBJC_IVAR___APPCClientLayoutAsset_assetInfoArray] = v21;
  v72 = &v70[OBJC_IVAR___APPCClientLayoutAsset_adamId];
  *v72 = v62;
  v72[8] = v61 == 0;
  v73 = &v70[OBJC_IVAR___APPCClientLayoutAsset_treatment];
  *v73 = v66;
  v73[1] = v68;
  v132.receiver = v70;
  v132.super_class = v69;
  v74 = objc_msgSendSuper2(&v132, sel_init);
  v75 = v116;
  v76 = [v116 button];
  if (v76)
  {
    sub_1C1B21D50(v76, &v127);
    v125 = v127;
    v124 = v128;
    v121 = v129;
    v122 = v130;
    v120 = v131;
  }

  else
  {
    v124 = 0;
    v125 = 0;
    v120 = 0;
    v121 = 1;
    v122 = 0;
  }

  v77 = v109;
  v118 = [v75 elementID];
  v78 = [v75 tapAction];
  if (v78)
  {
    v79 = v78;
    v119 = _s15PromotedContent9TapActionC04makecD04withACSo05APTapD0C_tFZ_0(v78);
  }

  else
  {
    v119 = 0;
  }

  v80 = [v75 style];
  if (v80)
  {
    sub_1C1AFAC60(v80, &v127);
    v82 = v127;
    v81 = v128;
  }

  else
  {
    v82 = 0;
    v81 = 0;
  }

  v83 = [v116 caption];
  if (v83)
  {
    v84 = v83;
    v85 = sub_1C1B94D88();
    v87 = v86;
  }

  else
  {
    v85 = 0;
    v87 = 0;
  }

  v88 = [v116 caption];
  if (v88)
  {
    v89 = v88;
    v90 = sub_1C1B94D88();
    v92 = v91;
  }

  else
  {
    v90 = 0;
    v92 = 0;
  }

  v93 = v116;
  v94 = [v116 actionURL];
  if (v94)
  {
    v95 = v94;
    sub_1C1B94488();

    v96 = 0;
    v93 = v95;
    v77 = v109;
  }

  else
  {
    v96 = 1;
  }

  (*(v108 + 56))(v77, v96, 1, v123);
  v97 = v107;
  *v107 = v118;
  v97[1] = v74;
  v97[2] = v85;
  v97[3] = v87;
  v97[4] = v90;
  v99 = v124;
  v98 = v125;
  v97[5] = v92;
  v97[6] = v98;
  v100 = v121;
  v101 = v122;
  v97[7] = v99;
  v97[8] = v100;
  v102 = v120;
  v97[9] = v101;
  v97[10] = v102;
  v103 = type metadata accessor for ClientLayoutElement();
  result = sub_1C1AEF258(v77, v97 + v103[9]);
  *(v97 + v103[10]) = v119;
  v104 = (v97 + v103[11]);
  *v104 = v82;
  v104[1] = v81;
  return result;
}

unint64_t sub_1C1AF2854()
{
  result = qword_1EDE6BB48;
  if (!qword_1EDE6BB48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE6BB48);
  }

  return result;
}

uint64_t sub_1C1AF28C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C1AF4604(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id sub_1C1AF2960(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v16 - v7;
  v9 = *a3;
  swift_beginAccess();
  sub_1C1ABB0C4(a1 + v9, v8);
  v10 = sub_1C1B94588();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v8, 1, v10);
  v13 = 0;
  if (v12 != 1)
  {
    v14 = sub_1C1B94538();
    (*(v11 + 8))(v8, v10);
    v13 = v14;
  }

  return v13;
}

uint64_t sub_1C1AF2AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v15 - v9;
  if (a3)
  {
    sub_1C1B94558();
    v11 = sub_1C1B94588();
    (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  }

  else
  {
    v12 = sub_1C1B94588();
    (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  }

  v13 = *a4;
  swift_beginAccess();

  sub_1C1AABE90(v10, a1 + v13);
  swift_endAccess();
}

uint64_t sub_1C1AF2C28(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v12 - v7;

  sub_1C1B94578();
  v9 = sub_1C1B94588();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = *a3;
  swift_beginAccess();
  sub_1C1AABE90(v8, a1 + v10);
  swift_endAccess();
}

void sub_1C1AF2D2C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, double a5)
{
  sub_1C1AC1F08(&qword_1EBF090B0, &unk_1C1B9F3A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1B9C9C0;
  v12 = *(v5 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_intervalKey + 8);
  *(inited + 32) = *(v5 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_intervalKey);
  *(inited + 40) = v12;
  v13 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  *(inited + 48) = [v13 initWithDouble_];
  v14 = *(v5 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_intervalTypeKey + 8);
  *(inited + 56) = *(v5 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_intervalTypeKey);
  *(inited + 64) = v14;
  v15 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  *(inited + 72) = [v15 initWithInteger_];
  v16 = *(v5 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_networkTypeKey + 8);
  *(inited + 80) = *(v5 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_networkTypeKey);
  *(inited + 88) = v16;
  v17 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  *(inited + 96) = [v17 initWithUnsignedInteger_];
  v18 = *(v5 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_placementTypeKey + 8);
  *(inited + 104) = *(v5 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_placementTypeKey);
  *(inited + 112) = v18;
  v19 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  *(inited + 120) = [v19 initWithUnsignedInteger_];
  v20 = *(v5 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_failedKey + 8);
  *(inited + 128) = *(v5 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_failedKey);
  *(inited + 136) = v20;
  v21 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  *(inited + 144) = [v21 initWithBool_];
  v22 = sub_1C1AD46B4(inited);
  swift_setDeallocating();
  sub_1C1AC1F08(&qword_1EBF08840, &qword_1C1B9CB40);
  swift_arrayDestroy();
  v23 = objc_opt_self();
  v24 = *(v5 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_analyticsEventName);
  v25 = *(v5 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_analyticsEventName + 8);
  v26 = sub_1C1B94D78();
  sub_1C1B1A914(v22);

  sub_1C1AF4720();
  v27 = sub_1C1B94CA8();

  [v23 sendEvent:v26 customPayload:v27];
}

unint64_t sub_1C1AF3044(char a1)
{
  result = 0x6C61767265746E69;
  switch(a1)
  {
    case 1:
    case 6:
      result = 0xD00000000000001ALL;
      break;
    case 2:
      result = 0xD00000000000001CLL;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0xD000000000000019;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
    case 9:
      return result;
    case 10:
      result = 0x546B726F7774656ELL;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0x654B64656C696166;
      break;
    default:
      result = 0xD000000000000014;
      break;
  }

  return result;
}

uint64_t sub_1C1AF31E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C1AF49C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C1AF3214(uint64_t a1)
{
  v2 = sub_1C1AF4688();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1AF3250(uint64_t a1)
{
  v2 = sub_1C1AF4688();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C1AF328C()
{
  sub_1C1ABBAF4(v0 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_finalPromotedContent);
  sub_1C1ABBAF4(v0 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_placeholderPlacedTimestamp);
  sub_1C1ABBAF4(v0 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_replacedPlaceholderTimestamp);
  sub_1C1ABBAF4(v0 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_adRequestTimestamp);
  sub_1C1ABBAF4(v0 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_adResponseTimestamp);
  sub_1C1ABBAF4(v0 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_prerollAdRequestTimestamp);
  sub_1C1ABBAF4(v0 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_prerollAdResponseTimestamp);
  v1 = *(v0 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_analyticsEventName + 8);

  v2 = *(v0 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_intervalKey + 8);

  v3 = *(v0 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_intervalTypeKey + 8);

  v4 = *(v0 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_networkTypeKey + 8);

  v5 = *(v0 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_placementTypeKey + 8);

  v6 = *(v0 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_failedKey + 8);

  return v0;
}

uint64_t sub_1C1AF338C()
{
  sub_1C1AF328C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1C1AF33E4(void *a1)
{
  v2 = v1;
  v4 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v60 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v61 = &v60 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v62 = &v60 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v63 = &v60 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v64 = &v60 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v60 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v60 - v19;
  v21 = sub_1C1AC1F08(&qword_1EBF08838, &unk_1C1B9CB30);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v60 - v24;
  v26 = a1[4];
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1AF4688();
  sub_1C1B95A18();
  v27 = OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_finalPromotedContent;
  swift_beginAccess();
  v65 = v2;
  sub_1C1ABB0C4(v2 + v27, v20);
  v73 = 0;
  sub_1C1B94588();
  sub_1C1AF46DC(&unk_1EDE6C380);
  v67 = v21;
  v28 = v25;
  v29 = v66;
  sub_1C1B95788();
  if (v29)
  {
    sub_1C1ABBAF4(v20);
    return (*(v22 + 8))(v25, v67);
  }

  else
  {
    v31 = v64;
    v66 = v22;
    sub_1C1ABBAF4(v20);
    v32 = OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_placeholderPlacedTimestamp;
    v33 = v65;
    swift_beginAccess();
    sub_1C1ABB0C4(v33 + v32, v18);
    v72 = 1;
    sub_1C1B95788();
    sub_1C1ABBAF4(v18);
    v34 = OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_replacedPlaceholderTimestamp;
    swift_beginAccess();
    sub_1C1ABB0C4(v33 + v34, v31);
    v71 = 2;
    sub_1C1B95788();
    sub_1C1ABBAF4(v31);
    v35 = OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_adRequestTimestamp;
    swift_beginAccess();
    v36 = v33 + v35;
    v37 = v63;
    sub_1C1ABB0C4(v36, v63);
    v70 = 3;
    sub_1C1B95788();
    sub_1C1ABBAF4(v37);
    v38 = OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_adResponseTimestamp;
    swift_beginAccess();
    v39 = v33 + v38;
    v40 = v62;
    sub_1C1ABB0C4(v39, v62);
    v69 = 4;
    sub_1C1B95788();
    sub_1C1ABBAF4(v40);
    v41 = OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_prerollAdRequestTimestamp;
    swift_beginAccess();
    v42 = v33 + v41;
    v43 = v61;
    sub_1C1ABB0C4(v42, v61);
    v68 = 5;
    sub_1C1B95788();
    sub_1C1ABBAF4(v43);
    v44 = OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_prerollAdResponseTimestamp;
    swift_beginAccess();
    v45 = v33 + v44;
    v46 = v60;
    sub_1C1ABB0C4(v45, v60);
    v74 = 6;
    sub_1C1B95788();
    sub_1C1ABBAF4(v46);
    v47 = *(v33 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_analyticsEventName);
    v48 = *(v33 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_analyticsEventName + 8);
    v74 = 7;
    sub_1C1B957A8();
    v49 = *(v33 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_intervalKey);
    v50 = *(v33 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_intervalKey + 8);
    v74 = 8;
    sub_1C1B957A8();
    v51 = *(v33 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_intervalTypeKey);
    v52 = *(v33 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_intervalTypeKey + 8);
    v74 = 9;
    sub_1C1B957A8();
    v53 = *(v33 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_networkTypeKey);
    v54 = *(v33 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_networkTypeKey + 8);
    v74 = 10;
    sub_1C1B957A8();
    v55 = *(v65 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_placementTypeKey);
    v56 = *(v65 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_placementTypeKey + 8);
    v74 = 11;
    sub_1C1B957A8();
    v57 = *(v65 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_failedKey);
    v58 = *(v65 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_failedKey + 8);
    v74 = 12;
    v59 = v67;
    sub_1C1B957A8();
    return (*(v66 + 8))(v28, v59);
  }
}

uint64_t sub_1C1AF3B20(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v69 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v70 = &v68 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v71 = &v68 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v72 = &v68 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v68 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v68 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v76 = &v68 - v20;
  v21 = sub_1C1AC1F08(&qword_1EBF08830, &qword_1C1B9CB28);
  v73 = *(v21 - 8);
  v74 = v21;
  v22 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v68 - v23;
  v25 = OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_finalPromotedContent;
  v26 = sub_1C1B94588();
  v27 = *(*(v26 - 8) + 56);
  v80 = v25;
  v27(v2 + v25, 1, 1, v26);
  v79 = OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_placeholderPlacedTimestamp;
  v27(v2 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_placeholderPlacedTimestamp, 1, 1, v26);
  v86 = OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_replacedPlaceholderTimestamp;
  v27(v2 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_replacedPlaceholderTimestamp, 1, 1, v26);
  v84 = OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_adRequestTimestamp;
  v27(v2 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_adRequestTimestamp, 1, 1, v26);
  v83 = OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_adResponseTimestamp;
  v27(v2 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_adResponseTimestamp, 1, 1, v26);
  v82 = OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_prerollAdRequestTimestamp;
  v27(v2 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_prerollAdRequestTimestamp, 1, 1, v26);
  v81 = OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_prerollAdResponseTimestamp;
  v27(v2 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_prerollAdResponseTimestamp, 1, 1, v26);
  v28 = a1[3];
  v29 = a1[4];
  v78 = a1;
  sub_1C1AAABE0(a1, v28);
  sub_1C1AF4688();
  v75 = v24;
  v30 = v77;
  sub_1C1B95A08();
  if (v30)
  {
    v33 = v79;
    sub_1C1ABBAF4(v2 + v80);
    sub_1C1ABBAF4(v2 + v33);
    sub_1C1ABBAF4(v2 + v86);
    sub_1C1ABBAF4(v2 + v84);
    sub_1C1ABBAF4(v2 + v83);
    sub_1C1ABBAF4(v2 + v82);
    sub_1C1ABBAF4(v2 + v81);
    type metadata accessor for MetricEventsTracker();
    v34 = *(*v2 + 48);
    v35 = *(*v2 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v31 = v19;
    v85 = 0;
    v32 = sub_1C1AF46DC(&unk_1EDE6C370);
    sub_1C1B95678();
    v37 = v80;
    swift_beginAccess();
    sub_1C1AABE90(v76, v2 + v37);
    swift_endAccess();
    v85 = 1;
    sub_1C1B95678();
    v77 = v32;
    v38 = v79;
    swift_beginAccess();
    sub_1C1AABE90(v31, v2 + v38);
    swift_endAccess();
    v85 = 2;
    sub_1C1B95678();
    v39 = v16;
    v40 = v86;
    swift_beginAccess();
    sub_1C1AABE90(v39, v2 + v40);
    swift_endAccess();
    v85 = 3;
    v41 = v72;
    sub_1C1B95678();
    v42 = v84;
    swift_beginAccess();
    sub_1C1AABE90(v41, v2 + v42);
    swift_endAccess();
    v85 = 4;
    v43 = v71;
    sub_1C1B95678();
    v44 = v83;
    swift_beginAccess();
    sub_1C1AABE90(v43, v2 + v44);
    swift_endAccess();
    v85 = 5;
    v45 = v70;
    sub_1C1B95678();
    v46 = v82;
    swift_beginAccess();
    sub_1C1AABE90(v45, v2 + v46);
    swift_endAccess();
    v85 = 6;
    v47 = v69;
    sub_1C1B95678();
    v48 = v81;
    swift_beginAccess();
    sub_1C1AABE90(v47, v2 + v48);
    swift_endAccess();
    v85 = 7;
    v49 = sub_1C1B95698();
    v50 = (v2 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_analyticsEventName);
    *v50 = v49;
    v50[1] = v51;
    v85 = 8;
    v52 = sub_1C1B95698();
    v53 = (v2 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_intervalKey);
    *v53 = v52;
    v53[1] = v54;
    v85 = 9;
    v55 = sub_1C1B95698();
    v56 = (v2 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_intervalTypeKey);
    *v56 = v55;
    v56[1] = v57;
    v85 = 10;
    v58 = sub_1C1B95698();
    v59 = (v2 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_networkTypeKey);
    *v59 = v58;
    v59[1] = v60;
    v85 = 11;
    v61 = sub_1C1B95698();
    v62 = (v2 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_placementTypeKey);
    *v62 = v61;
    v62[1] = v63;
    v85 = 12;
    v64 = sub_1C1B95698();
    v66 = v65;
    (*(v73 + 8))(v75, v74);
    v67 = (v2 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_failedKey);
    *v67 = v64;
    v67[1] = v66;
  }

  sub_1C1AA86F8(v78);
  return v2;
}

uint64_t sub_1C1AF4584@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for MetricEventsTracker();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  result = sub_1C1AF3B20(a1);
  if (!v2)
  {
    *a2 = v8;
  }

  return result;
}

uint64_t sub_1C1AF4604(uint64_t result)
{
  if ((result - 9) < 0xFFFFFFFFFFFFFFF8)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1C1AF461C()
{
  result = qword_1EBF08828;
  if (!qword_1EBF08828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08828);
  }

  return result;
}

unint64_t sub_1C1AF4688()
{
  result = qword_1EDE6C0D8;
  if (!qword_1EDE6C0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6C0D8);
  }

  return result;
}

uint64_t sub_1C1AF46DC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1C1B94588();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C1AF4720()
{
  result = qword_1EDE6C9D0;
  if (!qword_1EDE6C9D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE6C9D0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MetricEventsTracker.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MetricEventsTracker.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C1AF48C0()
{
  result = qword_1EBF08848;
  if (!qword_1EBF08848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08848);
  }

  return result;
}

unint64_t sub_1C1AF4918()
{
  result = qword_1EDE6C0C8;
  if (!qword_1EDE6C0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6C0C8);
  }

  return result;
}

unint64_t sub_1C1AF4970()
{
  result = qword_1EDE6C0D0;
  if (!qword_1EDE6C0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6C0D0);
  }

  return result;
}

uint64_t sub_1C1AF49C4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000014 && 0x80000001C1BA81C0 == a2;
  if (v4 || (sub_1C1B95888() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001C1BA64E0 == a2 || (sub_1C1B95888() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001C1BA6500 == a2 || (sub_1C1B95888() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001C1BA81E0 == a2 || (sub_1C1B95888() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001C1BA6520 == a2 || (sub_1C1B95888() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001C1BA6540 == a2 || (sub_1C1B95888() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001C1BA6560 == a2 || (sub_1C1B95888() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001C1BA8200 == a2 || (sub_1C1B95888() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6C61767265746E69 && a2 == 0xEB0000000079654BLL || (sub_1C1B95888() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6C61767265746E69 && a2 == 0xEF79654B65707954 || (sub_1C1B95888() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x546B726F7774656ELL && a2 == 0xEE0079654B657079 || (sub_1C1B95888() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001C1BA8240 == a2 || (sub_1C1B95888() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x654B64656C696166 && a2 == 0xE900000000000079)
  {

    return 12;
  }

  else
  {
    v6 = sub_1C1B95888();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

void NSUserDefaults.set(_:for:)(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_1C1B944C8();
  }

  v4 = sub_1C1B94D78();
  [v2 setValue:v3 forKey:v4];
  swift_unknownObjectRelease();
}

uint64_t NSUserDefaults.get(for:)()
{
  v1 = sub_1C1B94D78();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_1C1B952F8();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1C1AF4F4C(v7);
    return 0;
  }
}

uint64_t sub_1C1AF4F4C(uint64_t a1)
{
  v2 = sub_1C1AC1F08(&qword_1EBF08850, &qword_1C1B9CC70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1C1AF4FB4(uint64_t a1, unint64_t a2)
{
  v3 = *v2;
  if (a2 >> 60 == 15)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_1C1B944C8();
  }

  v5 = sub_1C1B94D78();
  [v3 setValue:v4 forKey:v5];
  swift_unknownObjectRelease();
}

uint64_t DefaultsPersistenceManager.__allocating_init()()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1C1B94D78();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    v2 = [objc_opt_self() standardUserDefaults];
  }

  v5 = sub_1C1AA576C(0, &unk_1EDE6BB68, 0x1E695E000);
  v6 = &protocol witness table for NSUserDefaults;
  *&v4 = v2;
  return DefaultsPersistenceManager.__allocating_init(backing:)(&v4);
}

uint64_t DefaultsPersistenceManager.__allocating_init(backing:)(__int128 *a1)
{
  v2 = swift_allocObject();
  *(v2 + 56) = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  sub_1C1AC0580(a1, v2 + 16);
  return v2;
}

uint64_t DefaultsPersistenceManager.init(backing:)(__int128 *a1)
{
  *(v1 + 56) = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  sub_1C1AC0580(a1, v1 + 16);
  return v1;
}

id sub_1C1AF51F0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v32 = *v3;
  [v3[7] lock];
  v7 = v3[5];
  v8 = v3[6];
  sub_1C1AAABE0(v3 + 2, v7);
  v31 = a2;
  v9 = (*(v8 + 16))(a1, a2, v7, v8);
  v11 = v10;
  v12 = sub_1C1B95108();
  sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
  v13 = sub_1C1B95298();
  v14 = os_log_type_enabled(v13, v12);
  if (v11 >> 60 == 15)
  {
    if (v14)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v34[0] = v16;
      *v15 = 136446210;
      *(v15 + 4) = sub_1C1AC7650(a1, v31, v34);
      _os_log_impl(&dword_1C1AA2000, v13, v12, "Unable to retrieve data for identifier: %{public}s", v15, 0xCu);
      sub_1C1AA86F8(v16);
      MEMORY[0x1C6908230](v16, -1, -1);
      MEMORY[0x1C6908230](v15, -1, -1);
    }

    (*(*(*(v32 + 80) - 8) + 56))(a3, 1, 1);
  }

  else
  {
    if (v14)
    {
      v19 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v34[0] = v30;
      *v19 = 136315138;
      sub_1C1AF5DAC(v9, v11);
      v20 = sub_1C1B944B8();
      v29 = v12;
      v22 = v21;
      sub_1C1AE49EC(v9, v11);
      v23 = sub_1C1AC7650(v20, v22, v34);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_1C1AA2000, v13, v29, "Returning fetch result from storage %s", v19, 0xCu);
      sub_1C1AA86F8(v30);
      MEMORY[0x1C6908230](v30, -1, -1);
      MEMORY[0x1C6908230](v19, -1, -1);
    }

    v24 = sub_1C1B943E8();
    v25 = *(v24 + 48);
    v26 = *(v24 + 52);
    swift_allocObject();
    sub_1C1B943D8();
    v27 = *(v32 + 80);
    v28 = *(*(v32 + 88) + 8);
    sub_1C1B943C8();
    sub_1C1AE49EC(v9, v11);

    (*(*(v27 - 8) + 56))(a3, 0, 1);
  }

  v17 = v4[7];

  return [v17 unlock];
}

uint64_t sub_1C1AF5720(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v24 - v8;
  [v1[7] lock];
  v10 = sub_1C1B94418();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  sub_1C1B94408();
  v13 = *(v4 + 88);
  v14 = *(v13 + 16);
  v15 = sub_1C1B943F8();
  v17 = v16;
  v24[2] = v9;
  v24[3] = v6;

  v25 = v1[5];
  v18 = a1;
  v19 = v2[6];
  v24[4] = sub_1C1AAABE0(v2 + 2, v25);
  v20 = *(v13 + 24);
  sub_1C1AF5DAC(v15, v17);
  v24[0] = v13;
  v24[1] = v18;
  v21 = v20(v5, v13);
  (*(v19 + 8))(v15, v17, v21, v22, v25, v19);
  sub_1C1AE4A00(v15, v17);

  sub_1C1AE4A00(v15, v17);
  [v2[7] unlock];
  return 1;
}

uint64_t sub_1C1AF5B08(uint64_t a1, uint64_t a2)
{
  [*(v2 + 56) lock];
  v5 = *(v2 + 40);
  v6 = *(v2 + 48);
  sub_1C1AAABE0((v2 + 16), v5);
  (*(v6 + 8))(0, 0xF000000000000000, a1, a2, v5, v6);
  [*(v2 + 56) unlock];
  return 1;
}

uint64_t DefaultsPersistenceManager.deinit()
{
  sub_1C1AA86F8((v0 + 16));

  return v0;
}

uint64_t DefaultsPersistenceManager.__deallocating_deinit()
{
  sub_1C1AA86F8((v0 + 16));

  return MEMORY[0x1EEE6BDC0](v0, 64, 7);
}

uint64_t sub_1C1AF5DAC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1C1AF5F70(__int128 *a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v10 = 0;
  while (v6)
  {
    v22 = v9;
LABEL_11:
    v12 = __clz(__rbit64(v6)) | (v10 << 6);
    v13 = (*(a2 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(a2 + 56) + 8 * v12);
    v25 = a1[2];
    v26 = a1[3];
    v27 = *(a1 + 8);
    v23 = *a1;
    v24 = a1[1];

    sub_1C1B94DE8();

    MEMORY[0x1C6907960](*(v16 + 16));
    v17 = *(v16 + 16);
    if (v17)
    {
      v18 = (v16 + 40);
      do
      {
        v19 = *(v18 - 1);
        v20 = *v18;

        sub_1C1B94DE8();

        v18 += 2;
        --v17;
      }

      while (v17);
    }

    v6 &= v6 - 1;

    result = sub_1C1B959A8();
    v9 = result ^ v22;
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return MEMORY[0x1C6907960](v9);
    }

    v6 = *(v3 + 8 * v11);
    ++v10;
    if (v6)
    {
      v22 = v9;
      v10 = v11;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t NativeAdTrackingInstanceStorage.get(for:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  os_unfair_lock_lock(v5 + 4);
  swift_beginAccess();
  v6 = *(v2 + 24);
  if (*(v6 + 16) && (v7 = sub_1C1AA7C14(a1, a2), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
  }

  else
  {
    v9 = 0;
  }

  swift_endAccess();
  os_unfair_lock_unlock(v5 + 4);
  return v9;
}

unint64_t sub_1C1AF61B0()
{
  type metadata accessor for NativeAdTrackingInstanceStorage();
  v0 = swift_allocObject();
  sub_1C1AC1F08(&qword_1EBF08860, &qword_1C1B9CD80);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v0 + 16) = v1;
  result = sub_1C1AD44C4(MEMORY[0x1E69E7CC0]);
  *(v0 + 24) = result;
  qword_1EDE6BD40 = v0;
  return result;
}

uint64_t static NativeAdTrackingInstanceStorage.shared.getter()
{
  if (qword_1EDE6BD38 != -1)
  {
    swift_once();
  }
}

void NativeAdTrackingInstanceStorage.set(instance:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 16);
  os_unfair_lock_lock(v7 + 4);
  swift_beginAccess();

  v8 = *(v3 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + 24);
  *(v3 + 24) = 0x8000000000000000;
  sub_1C1AE41B4(a1, a2, a3, isUniquelyReferenced_nonNull_native);

  *(v3 + 24) = v10;
  swift_endAccess();
  os_unfair_lock_unlock(v7 + 4);
}

Swift::Void __swiftcall NativeAdTrackingInstanceStorage.delete(identifier:)(Swift::String identifier)
{
  object = identifier._object;
  countAndFlagsBits = identifier._countAndFlagsBits;
  v4 = *(v1 + 16);
  os_unfair_lock_lock(v4 + 4);
  swift_beginAccess();
  sub_1C1AF657C(countAndFlagsBits, object);
  swift_endAccess();

  os_unfair_lock_unlock(v4 + 4);
}

uint64_t NativeAdTrackingInstanceStorage.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t NativeAdTrackingInstanceStorage.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1C1AF6428(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_1C1AA7C14(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v16 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1C1ADA50C();
    v10 = v16;
  }

  v11 = *(*(v10 + 48) + 16 * v7 + 8);

  v12 = (*(v10 + 56) + 16 * v7);
  v13 = *v12;
  v14 = v12[1];
  sub_1C1AD356C(v7, v10);
  *v3 = v10;
  return v13;
}

double sub_1C1AF64D8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1C1AA7C14(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1C1AAA964();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_1C1AA7E98((*(v12 + 56) + 32 * v9), a3);
    sub_1C1AD388C(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1C1AF657C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_1C1AA7C14(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v14 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1C1ADA97C();
    v10 = v14;
  }

  v11 = *(*(v10 + 48) + 16 * v7 + 8);

  v12 = *(*(v10 + 56) + 8 * v7);
  sub_1C1AD3A3C(v7, v10);
  *v3 = v10;
  return v12;
}

uint64_t sub_1C1AF6614(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_1C1AA7C14(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v16 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1C1ADADAC();
    v10 = v16;
  }

  v11 = *(*(v10 + 48) + 16 * v7 + 8);

  v12 = (*(v10 + 56) + 16 * v7);
  v13 = *v12;
  v14 = v12[1];
  sub_1C1AD3EB4(v7, v10);
  *v3 = v10;
  return v13;
}

uint64_t sub_1C1AF6820@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___APPCContextBuilder_identifier;
  swift_beginAccess();
  v4 = sub_1C1B945F8();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1C1AF69BC(uint64_t a1)
{
  v3 = OBJC_IVAR___APPCContextBuilder_identifier;
  swift_beginAccess();
  v4 = sub_1C1B945F8();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_1C1AF6A4C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___APPCContextBuilder_identifier;
  swift_beginAccess();
  v5 = sub_1C1B945F8();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1C1AF6AD8(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1C1B945F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = *a2;
  v10 = OBJC_IVAR___APPCContextBuilder_identifier;
  swift_beginAccess();
  (*(v5 + 40))(v9 + v10, v8, v4);
  return swift_endAccess();
}

double sub_1C1AF6C98()
{
  v1 = v0 + OBJC_IVAR___APPCContextBuilder_maxSize;
  swift_beginAccess();
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_1C1AF6D38(double a1, double a2)
{
  v5 = (v2 + OBJC_IVAR___APPCContextBuilder_maxSize);
  result = swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_1C1AF6E4C()
{
  v1 = OBJC_IVAR___APPCContextBuilder_current;
  swift_beginAccess();
  v2 = *(v0 + v1);
  return swift_unknownObjectRetain();
}

uint64_t sub_1C1AF6EF4(uint64_t a1)
{
  v3 = OBJC_IVAR___APPCContextBuilder_current;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v5 = *(v1 + v3);
  if (!v5 || [v5 adjacentPosition])
  {
    v6 = sub_1C1B94D78();
    APSimulateCrash();
  }

  return swift_unknownObjectRelease();
}

void (*sub_1C1AF6FAC(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR___APPCContextBuilder_current;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1C1AF7034;
}

void sub_1C1AF7034(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(v3[3] + v3[4]);
    if (!v4 || [v4 adjacentPosition])
    {
      v5 = sub_1C1B94D78();
      APSimulateCrash();
    }
  }

  free(v3);
}

uint64_t sub_1C1AF7158()
{
  v1 = OBJC_IVAR___APPCContextBuilder_next;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_1C1AF7220(uint64_t a1)
{
  v3 = OBJC_IVAR___APPCContextBuilder_next;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1C1AF7278(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___APPCContextBuilder_next;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t sub_1C1AF7414()
{
  v1 = *(v0 + OBJC_IVAR___APPCContextBuilder_resourceLock);
  [v1 lock];
  v2 = OBJC_IVAR___APPCContextBuilder_adjacentInternal;
  swift_beginAccess();
  v3 = *(v0 + v2);

  [v1 unlock];
  return v3;
}

uint64_t sub_1C1AF7524()
{
  v1 = (v0 + OBJC_IVAR___APPCContextBuilder_requestedAd);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_1C1AF75F8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___APPCContextBuilder_requestedAd);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1C1AF7658(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR___APPCContextBuilder_requestedAd);
  swift_beginAccess();
  v5 = v4[1];
  *v4 = v3;
  v4[1] = v2;
}

void *sub_1C1AF7770()
{
  v1 = OBJC_IVAR___APPCContextBuilder_newsContext;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1C1AF781C(uint64_t a1)
{
  v3 = OBJC_IVAR___APPCContextBuilder_newsContext;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_1C1AF7874(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___APPCContextBuilder_newsContext;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id ContextBuilder.__allocating_init(maxSize:current:next:newsContext:requestedAd:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  v14 = objc_allocWithZone(v7);
  sub_1C1B945E8();
  v15 = OBJC_IVAR___APPCContextBuilder_current;
  *&v14[OBJC_IVAR___APPCContextBuilder_current] = 0;
  v16 = &v14[OBJC_IVAR___APPCContextBuilder_requestedAd];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = OBJC_IVAR___APPCContextBuilder_newsContext;
  *&v14[OBJC_IVAR___APPCContextBuilder_newsContext] = 0;
  v18 = OBJC_IVAR___APPCContextBuilder_resourceLock;
  *&v14[v18] = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  *&v14[OBJC_IVAR___APPCContextBuilder_adjacentInternal] = MEMORY[0x1E69E7CC0];
  v19 = &v14[OBJC_IVAR___APPCContextBuilder_maxSize];
  *v19 = a6;
  v19[1] = a7;
  swift_beginAccess();
  v20 = *&v14[v15];
  *&v14[v15] = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *&v14[OBJC_IVAR___APPCContextBuilder_next] = a2;
  swift_beginAccess();
  v21 = *&v14[v17];
  *&v14[v17] = a3;
  v22 = a3;

  swift_beginAccess();
  v23 = *(v16 + 1);
  *v16 = a4;
  *(v16 + 1) = a5;

  v27.receiver = v14;
  v27.super_class = v7;
  v24 = objc_msgSendSuper2(&v27, sel_init);
  swift_unknownObjectRelease();

  return v24;
}

id ContextBuilder.init(maxSize:current:next:newsContext:requestedAd:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  v8 = sub_1C1AF8784(a1, a2, a3, a4, a5, a6, a7);

  swift_unknownObjectRelease();
  return v8;
}

id ContextBuilder.__allocating_init(maxSize:current:newsContext:requestedAd:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v12 = objc_allocWithZone(v6);
  sub_1C1B945E8();
  v13 = OBJC_IVAR___APPCContextBuilder_current;
  *&v12[OBJC_IVAR___APPCContextBuilder_current] = 0;
  v14 = &v12[OBJC_IVAR___APPCContextBuilder_requestedAd];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = OBJC_IVAR___APPCContextBuilder_newsContext;
  *&v12[OBJC_IVAR___APPCContextBuilder_newsContext] = 0;
  v16 = OBJC_IVAR___APPCContextBuilder_resourceLock;
  *&v12[v16] = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  v17 = MEMORY[0x1E69E7CC0];
  *&v12[OBJC_IVAR___APPCContextBuilder_adjacentInternal] = MEMORY[0x1E69E7CC0];
  v18 = &v12[OBJC_IVAR___APPCContextBuilder_maxSize];
  *v18 = a5;
  v18[1] = a6;
  swift_beginAccess();
  v19 = *&v12[v13];
  *&v12[v13] = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *&v12[OBJC_IVAR___APPCContextBuilder_next] = v17;
  swift_beginAccess();
  v20 = *&v12[v15];
  *&v12[v15] = a2;
  v21 = a2;

  swift_beginAccess();
  v22 = *(v14 + 1);
  *v14 = a3;
  *(v14 + 1) = a4;

  v26.receiver = v12;
  v26.super_class = v6;
  v23 = objc_msgSendSuper2(&v26, sel_init);
  swift_unknownObjectRelease();

  return v23;
}

id sub_1C1AF7E8C(void *a1)
{
  v3 = &property descriptor for VideoRepresentation.unbranded;
  if ([a1 adjacentPosition])
  {
    v21 = a1;
    v19 = *(v1 + OBJC_IVAR___APPCContextBuilder_resourceLock);
    [v19 lock];
    v4 = OBJC_IVAR___APPCContextBuilder_adjacentInternal;
    swift_beginAccess();
    v18 = v4;
    v5 = *(v1 + v4);
    v20 = v1;
    if (v5 >> 62)
    {
LABEL_20:
      v6 = sub_1C1B953A8();
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = 0;
    v8 = v3;
    while (v6 != v7)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1C6907490](v7, v5);
        if (__OFADD__(v7, 1))
        {
LABEL_13:
          __break(1u);
          goto LABEL_14;
        }
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_20;
        }

        v9 = *(v5 + 8 * v7 + 32);
        swift_unknownObjectRetain();
        if (__OFADD__(v7, 1))
        {
          goto LABEL_13;
        }
      }

      v10 = [v9 v8 + 870];
      v3 = [v21 v8 + 870];
      swift_unknownObjectRelease();
      ++v7;
      if (v10 == v3)
      {

        sub_1C1B95138();
        sub_1C1AC53E4();
        v15 = sub_1C1B95298();
        sub_1C1B94BA8();

        goto LABEL_16;
      }
    }

LABEL_16:
    swift_beginAccess();
    v16 = swift_unknownObjectRetain();
    MEMORY[0x1C6906EA0](v16);
    if (*((*(v20 + v18) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v20 + v18) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v17 = *((*(v20 + v18) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1C1B94F08();
    }

    sub_1C1B94F48();
    swift_endAccess();
    return [v19 unlock];
  }

  else
  {
LABEL_14:
    sub_1C1AC53E4();
    v11 = sub_1C1B95298();
    sub_1C1B95128();
    sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1C1B98E60;
    *(v12 + 56) = MEMORY[0x1E69E6158];
    *(v12 + 64) = sub_1C1AA5E7C();
    *(v12 + 32) = 0xD000000000000030;
    *(v12 + 40) = 0x80000001C1BA83C0;
    sub_1C1B94B98();

    sub_1C1AF8908();
    swift_allocError();
    *v13 = 1;
    return swift_willThrow();
  }
}

id sub_1C1AF82D8(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___APPCContextBuilder_resourceLock);
  [v3 lock];
  v4 = OBJC_IVAR___APPCContextBuilder_adjacentInternal;
  swift_beginAccess();
  swift_unknownObjectRetain();
  v5 = sub_1C1AF895C((v1 + v4), a1);
  result = swift_unknownObjectRelease();
  v7 = *(v1 + v4);
  if (v7 >> 62)
  {
    if (v7 < 0)
    {
      v9 = *(v1 + v4);
    }

    result = sub_1C1B953A8();
    v8 = result;
    if (result >= v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8 >= v5)
    {
LABEL_3:
      sub_1C1AF8D8C(v5, v8);
      swift_endAccess();
      return [v3 unlock];
    }
  }

  __break(1u);
  return result;
}

id ContextBuilder.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ContextBuilder.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContextBuilder();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1C1AF85AC(unint64_t a1, void *a2)
{
  if (a1 >> 62)
  {
LABEL_22:
    v17 = a1 & 0xFFFFFFFFFFFFFF8;
    v19 = sub_1C1B953A8();
  }

  else
  {
    v17 = a1 & 0xFFFFFFFFFFFFFF8;
    v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  while (1)
  {
    if (v19 == v3)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1C6907490](v3, a1);
    }

    else
    {
      if (v3 >= *(v17 + 16))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v4 = *(a1 + 8 * v3 + 32);
      swift_unknownObjectRetain();
    }

    v5 = [v4 identifier];
    v6 = sub_1C1B94D88();
    v8 = v7;

    v9 = [a2 identifier];
    v10 = sub_1C1B94D88();
    v12 = v11;

    if (v6 == v10 && v8 == v12)
    {
      break;
    }

    v14 = sub_1C1B95888();
    swift_unknownObjectRelease();

    if (v14)
    {
      return v3;
    }

    if (__OFADD__(v3++, 1))
    {
      goto LABEL_21;
    }
  }

  swift_unknownObjectRelease();

  return v3;
}

id sub_1C1AF8784(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  sub_1C1B945E8();
  v15 = OBJC_IVAR___APPCContextBuilder_current;
  *&v7[OBJC_IVAR___APPCContextBuilder_current] = 0;
  v16 = &v7[OBJC_IVAR___APPCContextBuilder_requestedAd];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = OBJC_IVAR___APPCContextBuilder_newsContext;
  *&v7[OBJC_IVAR___APPCContextBuilder_newsContext] = 0;
  v18 = OBJC_IVAR___APPCContextBuilder_resourceLock;
  *&v7[v18] = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  *&v7[OBJC_IVAR___APPCContextBuilder_adjacentInternal] = MEMORY[0x1E69E7CC0];
  v19 = &v7[OBJC_IVAR___APPCContextBuilder_maxSize];
  *v19 = a6;
  v19[1] = a7;
  swift_beginAccess();
  v20 = *&v7[v15];
  *&v7[v15] = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *&v7[OBJC_IVAR___APPCContextBuilder_next] = a2;
  swift_beginAccess();
  v21 = *&v7[v17];
  *&v7[v17] = a3;
  v22 = a3;

  swift_beginAccess();
  v23 = *(v16 + 1);
  *v16 = a4;
  *(v16 + 1) = a5;

  v25.receiver = v7;
  v25.super_class = type metadata accessor for ContextBuilder();
  return objc_msgSendSuper2(&v25, sel_init);
}

unint64_t sub_1C1AF8908()
{
  result = qword_1EBF08868;
  if (!qword_1EBF08868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08868);
  }

  return result;
}

unint64_t sub_1C1AF895C(unint64_t *a1, void *a2)
{
  v4 = a2;
  v6 = *a1;
  result = sub_1C1AF85AC(*a1, a2);
  if (v2)
  {
    return result;
  }

  if (v8)
  {
    if (v6 >> 62)
    {
      return sub_1C1B953A8();
    }

    return *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v29 = a1;
  v30 = result;
  v9 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v6 >> 62)
    {
      if (v9 == sub_1C1B953A8())
      {
        return v30;
      }
    }

    else if (v9 == *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v30;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1C6907490](v9, v6);
      goto LABEL_17;
    }

    if ((v9 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v9 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_48;
    }

    v11 = *(v6 + 8 * v9 + 32);
    swift_unknownObjectRetain();
LABEL_17:
    v12 = [v11 identifier];
    v13 = sub_1C1B94D88();
    v15 = v14;

    v3 = v4;
    v16 = [v4 identifier];
    v17 = sub_1C1B94D88();
    v19 = v18;

    if (v13 == v17 && v15 == v19)
    {
LABEL_8:
      swift_unknownObjectRelease();

LABEL_9:
      v4 = v3;
      goto LABEL_10;
    }

    v20 = sub_1C1B95888();
    swift_unknownObjectRelease();

    if (v20)
    {
      goto LABEL_9;
    }

    v4 = v3;
    if (v30 != v9)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x1C6907490](v30, v6);
        v22 = MEMORY[0x1C6907490](v9, v6);
      }

      else
      {
        if ((v30 & 0x8000000000000000) != 0)
        {
          goto LABEL_52;
        }

        v23 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v30 >= v23)
        {
          goto LABEL_53;
        }

        if (v9 >= v23)
        {
          goto LABEL_54;
        }

        v21 = *(v6 + 32 + 8 * v30);
        v22 = *(v6 + 32 + 8 * v9);
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
      }

      if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
      {
        v6 = sub_1C1B91B54(v6);
        v24 = (v6 >> 62) & 1;
      }

      else
      {
        LODWORD(v24) = 0;
      }

      v25 = v6 & 0xFFFFFFFFFFFFFF8;
      v26 = *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v30 + 0x20);
      *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v30 + 0x20) = v22;
      swift_unknownObjectRelease();
      if ((v6 & 0x8000000000000000) != 0 || v24)
      {
        v6 = sub_1C1B91B54(v6);
        v25 = v6 & 0xFFFFFFFFFFFFFF8;
        if ((v9 & 0x8000000000000000) != 0)
        {
LABEL_44:
          __break(1u);
          return v30;
        }
      }

      else if ((v9 & 0x8000000000000000) != 0)
      {
        goto LABEL_44;
      }

      if (v9 >= *(v25 + 16))
      {
        goto LABEL_51;
      }

      v27 = v25 + 8 * v9;
      v28 = *(v27 + 32);
      *(v27 + 32) = v21;
      swift_unknownObjectRelease();
      *v29 = v6;
    }

    v10 = __OFADD__(v30++, 1);
    if (v10)
    {
      goto LABEL_50;
    }

LABEL_10:
    v10 = __OFADD__(v9++, 1);
    if (v10)
    {
      goto LABEL_49;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
  return sub_1C1B953A8();
}

uint64_t sub_1C1AF8C80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_1C1AC1F08(&unk_1EBF09000, &qword_1C1B9CEC8);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_1C1B953A8();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_1C1B953A8();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1C1AF8D8C(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_1C1B953A8();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = sub_1C1B953A8();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_1C1AB6C30(result, 1);

  return sub_1C1AF8C80(v4, v2, 0);
}

unint64_t sub_1C1AF9350()
{
  result = qword_1EBF08870;
  if (!qword_1EBF08870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08870);
  }

  return result;
}

unint64_t sub_1C1AF93A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for PlaceholderRequest();
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_1C1AF94EC(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_1C1ACE1A4(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_1C1AF93A4(v6, a2, 0);
  *v2 = v4;
  return result;
}

void *MobileRichAdInterfaceDefinitionTapAction.adamIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15PromotedContent40MobileRichAdInterfaceDefinitionTapAction_adamIdentifier);
  v2 = v1;
  return v1;
}

uint64_t sub_1C1AF961C()
{
  v1 = *v0;
  sub_1C1B95958();
  sub_1C1B94DE8();

  return sub_1C1B959A8();
}

uint64_t sub_1C1AF96F4()
{
  *v0;
  *v0;
  *v0;
  sub_1C1B94DE8();
}

uint64_t sub_1C1AF97B8()
{
  v1 = *v0;
  sub_1C1B95958();
  sub_1C1B94DE8();

  return sub_1C1B959A8();
}

uint64_t sub_1C1AF988C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1C1AFAC14();
  *a2 = result;
  return result;
}

void sub_1C1AF98BC(unint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 7107189;
  v4 = 0xEE00726569666974;
  v5 = 0x6E6564496D616461;
  if (*v1 != 2)
  {
    v5 = 0x654D73656E755469;
    v4 = 0xEE00617461646174;
  }

  if (*v1)
  {
    v3 = 0xD000000000000011;
    v2 = 0x80000001C1BA56E0;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_1C1AF9950()
{
  v1 = 7107189;
  v2 = 0x6E6564496D616461;
  if (*v0 != 2)
  {
    v2 = 0x654D73656E755469;
  }

  if (*v0)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1C1AF99E0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C1AFAC14();
  *a1 = result;
  return result;
}

uint64_t sub_1C1AF9A08(uint64_t a1)
{
  v2 = sub_1C1AFA88C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1AF9A44(uint64_t a1)
{
  v2 = sub_1C1AFA88C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id MobileRichAdInterfaceDefinitionTapAction.__allocating_init(actionType:confirmedClickInterval:)(double a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = OBJC_IVAR____TtC15PromotedContent40MobileRichAdInterfaceDefinitionTapAction_url;
  v5 = sub_1C1B944A8();
  (*(*(v5 - 8) + 56))(&v3[v4], 1, 1, v5);
  v3[OBJC_IVAR____TtC15PromotedContent40MobileRichAdInterfaceDefinitionTapAction_opensInstalledApp] = 0;
  *&v3[OBJC_IVAR____TtC15PromotedContent40MobileRichAdInterfaceDefinitionTapAction_adamIdentifier] = 0;
  *&v3[OBJC_IVAR____TtC15PromotedContent40MobileRichAdInterfaceDefinitionTapAction_iTunesMetadata] = 0;
  *&v3[OBJC_IVAR___APPCTapAction_actionType] = 4;
  *&v3[OBJC_IVAR___APPCTapAction_confirmedClickInterval] = a1;
  v7.receiver = v3;
  v7.super_class = type metadata accessor for TapAction();
  return objc_msgSendSuper2(&v7, sel_init);
}

id MobileRichAdInterfaceDefinitionTapAction.init(actionType:confirmedClickInterval:)(double a1)
{
  v3 = OBJC_IVAR____TtC15PromotedContent40MobileRichAdInterfaceDefinitionTapAction_url;
  v4 = sub_1C1B944A8();
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  v1[OBJC_IVAR____TtC15PromotedContent40MobileRichAdInterfaceDefinitionTapAction_opensInstalledApp] = 0;
  *&v1[OBJC_IVAR____TtC15PromotedContent40MobileRichAdInterfaceDefinitionTapAction_adamIdentifier] = 0;
  *&v1[OBJC_IVAR____TtC15PromotedContent40MobileRichAdInterfaceDefinitionTapAction_iTunesMetadata] = 0;
  *&v1[OBJC_IVAR___APPCTapAction_actionType] = 4;
  *&v1[OBJC_IVAR___APPCTapAction_confirmedClickInterval] = a1;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for TapAction();
  return objc_msgSendSuper2(&v6, sel_init);
}

id MobileRichAdInterfaceDefinitionTapAction.init(url:opensInstalledApp:confirmedClickInterval:)(uint64_t a1, char a2, double a3)
{
  v7 = OBJC_IVAR____TtC15PromotedContent40MobileRichAdInterfaceDefinitionTapAction_url;
  v8 = sub_1C1B944A8();
  v9 = *(v8 - 8);
  (*(v9 + 16))(&v3[v7], a1, v8);
  (*(v9 + 56))(&v3[v7], 0, 1, v8);
  v3[OBJC_IVAR____TtC15PromotedContent40MobileRichAdInterfaceDefinitionTapAction_opensInstalledApp] = a2;
  *&v3[OBJC_IVAR____TtC15PromotedContent40MobileRichAdInterfaceDefinitionTapAction_adamIdentifier] = 0;
  *&v3[OBJC_IVAR____TtC15PromotedContent40MobileRichAdInterfaceDefinitionTapAction_iTunesMetadata] = 0;
  *&v3[OBJC_IVAR___APPCTapAction_actionType] = 4;
  *&v3[OBJC_IVAR___APPCTapAction_confirmedClickInterval] = a3;
  v12.receiver = v3;
  v12.super_class = type metadata accessor for TapAction();
  v10 = objc_msgSendSuper2(&v12, sel_init);
  (*(v9 + 8))(a1, v8);
  return v10;
}

id MobileRichAdInterfaceDefinitionTapAction.__allocating_init(adamIdentifier:iTunesMetadata:confirmedClickInterval:)(uint64_t a1, uint64_t a2, double a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR____TtC15PromotedContent40MobileRichAdInterfaceDefinitionTapAction_adamIdentifier] = a1;
  *&v7[OBJC_IVAR____TtC15PromotedContent40MobileRichAdInterfaceDefinitionTapAction_iTunesMetadata] = a2;
  v8 = OBJC_IVAR____TtC15PromotedContent40MobileRichAdInterfaceDefinitionTapAction_url;
  v9 = sub_1C1B944A8();
  (*(*(v9 - 8) + 56))(&v7[v8], 1, 1, v9);
  v7[OBJC_IVAR____TtC15PromotedContent40MobileRichAdInterfaceDefinitionTapAction_opensInstalledApp] = 0;
  *&v7[OBJC_IVAR___APPCTapAction_actionType] = 4;
  *&v7[OBJC_IVAR___APPCTapAction_confirmedClickInterval] = a3;
  v11.receiver = v7;
  v11.super_class = type metadata accessor for TapAction();
  return objc_msgSendSuper2(&v11, sel_init);
}

id MobileRichAdInterfaceDefinitionTapAction.init(adamIdentifier:iTunesMetadata:confirmedClickInterval:)(uint64_t a1, uint64_t a2, double a3)
{
  *&v3[OBJC_IVAR____TtC15PromotedContent40MobileRichAdInterfaceDefinitionTapAction_adamIdentifier] = a1;
  *&v3[OBJC_IVAR____TtC15PromotedContent40MobileRichAdInterfaceDefinitionTapAction_iTunesMetadata] = a2;
  v5 = OBJC_IVAR____TtC15PromotedContent40MobileRichAdInterfaceDefinitionTapAction_url;
  v6 = sub_1C1B944A8();
  (*(*(v6 - 8) + 56))(&v3[v5], 1, 1, v6);
  v3[OBJC_IVAR____TtC15PromotedContent40MobileRichAdInterfaceDefinitionTapAction_opensInstalledApp] = 0;
  *&v3[OBJC_IVAR___APPCTapAction_actionType] = 4;
  *&v3[OBJC_IVAR___APPCTapAction_confirmedClickInterval] = a3;
  v8.receiver = v3;
  v8.super_class = type metadata accessor for TapAction();
  return objc_msgSendSuper2(&v8, sel_init);
}

void *sub_1C1AFA0F4(uint64_t *a1)
{
  v3 = sub_1C1AC1F08(&qword_1EBF07AC8, &qword_1C1B9CED0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v22 - v5;
  v7 = sub_1C1AC1F08(&qword_1EBF088A0, &unk_1C1B9D0A0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v22 - v10;
  v12 = a1[4];
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1AFA88C();
  sub_1C1B95A08();
  if (v1)
  {
    v14 = v23;
    sub_1C1AA86F8(a1);
    type metadata accessor for MobileRichAdInterfaceDefinitionTapAction();
    v15 = *((*MEMORY[0x1E69E7D40] & *v14) + 0x30);
    v16 = *((*MEMORY[0x1E69E7D40] & *v14) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v13 = v8;
    sub_1C1B944A8();
    LOBYTE(v25[0]) = 0;
    sub_1C1AEF214(&unk_1EDE6C3A0);
    sub_1C1B95678();
    v18 = v23;
    sub_1C1AEF258(v6, v23 + OBJC_IVAR____TtC15PromotedContent40MobileRichAdInterfaceDefinitionTapAction_url);
    LOBYTE(v25[0]) = 1;
    *(v18 + OBJC_IVAR____TtC15PromotedContent40MobileRichAdInterfaceDefinitionTapAction_opensInstalledApp) = sub_1C1B95648();
    LOBYTE(v25[0]) = 2;
    v19 = sub_1C1B95658();
    if (v20)
    {
      v21 = 0;
    }

    else
    {
      v21 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    }

    *(v18 + OBJC_IVAR____TtC15PromotedContent40MobileRichAdInterfaceDefinitionTapAction_adamIdentifier) = v21;
    sub_1C1AC1F08(&qword_1EBF07EA0, &qword_1C1B9ACD0);
    LOBYTE(v24[0]) = 3;
    sub_1C1AD0C9C(&unk_1EDE6BBF0);
    sub_1C1B95678();
    *(v18 + OBJC_IVAR____TtC15PromotedContent40MobileRichAdInterfaceDefinitionTapAction_iTunesMetadata) = v25[0];
    sub_1C1B95628();
    sub_1C1AAD2FC(v25, v24);
    v14 = TapAction.init(from:)(v24);
    sub_1C1AA86F8(v25);
    (*(v13 + 8))(v11, v7);
    sub_1C1AA86F8(a1);
  }

  return v14;
}

uint64_t sub_1C1AFA5A0(void *a1)
{
  v3 = v1;
  v5 = sub_1C1AC1F08(&qword_1EBF08878, &qword_1C1B9CED8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v13 - v8;
  v10 = a1[4];
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1AFA88C();
  sub_1C1B95A18();
  LOBYTE(v13[0]) = 0;
  sub_1C1B944A8();
  sub_1C1AEF214(&unk_1EDE6C3B0);
  sub_1C1B95788();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v11 = *(v3 + OBJC_IVAR____TtC15PromotedContent40MobileRichAdInterfaceDefinitionTapAction_opensInstalledApp);
  LOBYTE(v13[0]) = 1;
  sub_1C1B95758();
  if (*(v3 + OBJC_IVAR____TtC15PromotedContent40MobileRichAdInterfaceDefinitionTapAction_adamIdentifier))
  {
    [*(v3 + OBJC_IVAR____TtC15PromotedContent40MobileRichAdInterfaceDefinitionTapAction_adamIdentifier) doubleValue];
  }

  LOBYTE(v13[0]) = 2;
  sub_1C1B95768();
  v13[0] = *(v3 + OBJC_IVAR____TtC15PromotedContent40MobileRichAdInterfaceDefinitionTapAction_iTunesMetadata);
  v14 = 3;
  sub_1C1AC1F08(&qword_1EBF07EA0, &qword_1C1B9ACD0);
  sub_1C1AD0C9C(&qword_1EDE6BC00);
  sub_1C1B95788();
  sub_1C1B95738();
  sub_1C1B3BBE0(v13);
  sub_1C1AA86F8(v13);
  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1C1AFA88C()
{
  result = qword_1EBF08880;
  if (!qword_1EBF08880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08880);
  }

  return result;
}

uint64_t sub_1C1AFA8E0()
{
  sub_1C1AC54A0(v0 + OBJC_IVAR____TtC15PromotedContent40MobileRichAdInterfaceDefinitionTapAction_url);

  v1 = *(v0 + OBJC_IVAR____TtC15PromotedContent40MobileRichAdInterfaceDefinitionTapAction_iTunesMetadata);
}

id MobileRichAdInterfaceDefinitionTapAction.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MobileRichAdInterfaceDefinitionTapAction();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for MobileRichAdInterfaceDefinitionTapAction()
{
  result = qword_1EDE6BC68;
  if (!qword_1EDE6BC68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C1AFAA18()
{
  sub_1C1AEF0A4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1C1AFAB10()
{
  result = qword_1EBF08888;
  if (!qword_1EBF08888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08888);
  }

  return result;
}

unint64_t sub_1C1AFAB68()
{
  result = qword_1EBF08890;
  if (!qword_1EBF08890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08890);
  }

  return result;
}

unint64_t sub_1C1AFABC0()
{
  result = qword_1EBF08898;
  if (!qword_1EBF08898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08898);
  }

  return result;
}

uint64_t sub_1C1AFAC14()
{
  v0 = sub_1C1B955F8();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

void sub_1C1AFAC60(void *a1@<X0>, char **a2@<X8>)
{
  v2 = a1;
  v4 = [a1 backgroundColor];
  v38 = a2;
  if (v4 && (v5 = v4, v6 = [v4 lightModeColors], v5, v6))
  {
    sub_1C1AFB0AC();
    v7 = sub_1C1B94EC8();

    if (v7 >> 62)
    {
      goto LABEL_20;
    }

    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = v2; v8; i = v2)
    {
      v9 = 0;
      v42 = v7 & 0xFFFFFFFFFFFFFF8;
      v44 = v7 & 0xC000000000000001;
      v10 = MEMORY[0x1E69E7CC0];
      v40 = v8;
      v11 = v7;
      while (1)
      {
        if (v44)
        {
          v12 = MEMORY[0x1C6907490](v9, v7);
        }

        else
        {
          if (v9 >= *(v42 + 16))
          {
            goto LABEL_19;
          }

          v12 = *(v7 + 8 * v9 + 32);
        }

        v13 = v12;
        v2 = (v9 + 1);
        if (__OFADD__(v9, 1))
        {
          break;
        }

        v14 = [v12 red];
        v15 = [v13 blue];
        v16 = [v13 green];
        v17 = [v13 alpha];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1C1ACDD20(0, *(v10 + 2) + 1, 1, v10);
        }

        v19 = *(v10 + 2);
        v18 = *(v10 + 3);
        if (v19 >= v18 >> 1)
        {
          v10 = sub_1C1ACDD20((v18 > 1), v19 + 1, 1, v10);
        }

        *(v10 + 2) = v19 + 1;
        v20 = &v10[16 * v19];
        v20[8] = v14;
        v20[9] = v15;
        v20[10] = v16;
        v20[11] = v17;
        ++v9;
        v7 = v11;
        if (v2 == v40)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      v8 = sub_1C1B953A8();
    }

    v10 = MEMORY[0x1E69E7CC0];
LABEL_22:

    v2 = i;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v21 = [v2 backgroundColor];
  if (v21 && (v22 = v21, v23 = [v21 darkModeColors], v22, v23))
  {
    sub_1C1AFB0AC();
    v24 = sub_1C1B94EC8();

    if (v24 >> 62)
    {
      goto LABEL_42;
    }

    v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (j = v2; v25; j = v2)
    {
      v26 = 0;
      v43 = v24 & 0xFFFFFFFFFFFFFF8;
      v45 = v24 & 0xC000000000000001;
      v27 = MEMORY[0x1E69E7CC0];
      v39 = v25;
      v41 = v24;
      while (1)
      {
        if (v45)
        {
          v28 = MEMORY[0x1C6907490](v26, v24);
        }

        else
        {
          if (v26 >= *(v43 + 16))
          {
            goto LABEL_41;
          }

          v28 = *(v24 + 8 * v26 + 32);
        }

        v24 = v28;
        v2 = (v26 + 1);
        if (__OFADD__(v26, 1))
        {
          break;
        }

        v29 = [v28 red];
        v30 = [v24 blue];
        v31 = [v24 green];
        v32 = [v24 alpha];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_1C1ACDD20(0, *(v27 + 2) + 1, 1, v27);
        }

        v34 = *(v27 + 2);
        v33 = *(v27 + 3);
        if (v34 >= v33 >> 1)
        {
          v27 = sub_1C1ACDD20((v33 > 1), v34 + 1, 1, v27);
        }

        *(v27 + 2) = v34 + 1;
        v35 = &v27[16 * v34];
        v35[8] = v29;
        v35[9] = v30;
        v35[10] = v31;
        v35[11] = v32;
        ++v26;
        v24 = v41;
        if (v2 == v39)
        {
          goto LABEL_44;
        }
      }

      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      v25 = sub_1C1B953A8();
    }

    v27 = MEMORY[0x1E69E7CC0];
LABEL_44:
  }

  else
  {

    v27 = MEMORY[0x1E69E7CC0];
  }

  *v38 = v10;
  v38[1] = v27;
}

unint64_t sub_1C1AFB0AC()
{
  result = qword_1EBF088A8;
  if (!qword_1EBF088A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBF088A8);
  }

  return result;
}

id sub_1C1AFB0F8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1C1AA7C14(0xD00000000000001ELL, 0x80000001C1BA86D0);
    if (*(a1 + 16))
    {
      sub_1C1AA7C14(0xD00000000000001CLL, 0x80000001C1BA86F0);
      if (*(a1 + 16))
      {
        sub_1C1AA7C14(0xD00000000000001ELL, 0x80000001C1BA8710);
        if (*(a1 + 16))
        {
          sub_1C1AA7C14(0xD00000000000001CLL, 0x80000001C1BA8730);
        }
      }
    }
  }

  v2 = type metadata accessor for DenylistReasonCharacteristic();
  v3 = objc_allocWithZone(v2);
  v4 = OBJC_IVAR___APPCDenylistReasonCharacteristic_globalCategories;
  v5 = MEMORY[0x1E69E7CC0];
  *&v3[OBJC_IVAR___APPCDenylistReasonCharacteristic_globalCategories] = MEMORY[0x1E69E7CC0];
  v6 = OBJC_IVAR___APPCDenylistReasonCharacteristic_globalKeywords;
  *&v3[OBJC_IVAR___APPCDenylistReasonCharacteristic_globalKeywords] = v5;
  v7 = OBJC_IVAR___APPCDenylistReasonCharacteristic_campaignCategories;
  *&v3[OBJC_IVAR___APPCDenylistReasonCharacteristic_campaignCategories] = v5;
  v8 = OBJC_IVAR___APPCDenylistReasonCharacteristic_campaignKeywords;
  *&v3[OBJC_IVAR___APPCDenylistReasonCharacteristic_campaignKeywords] = v5;
  swift_beginAccess();
  *&v3[v4] = v5;
  swift_beginAccess();
  *&v3[v6] = v5;
  swift_beginAccess();
  v9 = *&v3[v7];
  *&v3[v7] = v5;

  swift_beginAccess();
  v10 = *&v3[v8];
  *&v3[v8] = v5;

  v12.receiver = v3;
  v12.super_class = v2;
  return objc_msgSendSuper2(&v12, sel_init);
}