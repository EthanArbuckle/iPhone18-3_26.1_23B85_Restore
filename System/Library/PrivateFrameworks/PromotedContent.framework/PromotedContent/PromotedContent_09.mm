uint64_t PromotedContent.init(from:)(uint64_t *a1)
{
  v2 = v1;
  v333 = a1;
  v3 = sub_1C1AC1F08(&qword_1EBF08560, &qword_1C1B9AF90);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v299 = &v284 - v5;
  v6 = sub_1C1B945F8();
  v311 = *(v6 - 8);
  v7 = *(v311 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v298 = &v284 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C1B94588();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v297 = &v284 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v292 = &v284 - v14;
  v15 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v296 = &v284 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v295 = &v284 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v293 = &v284 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v291 = &v284 - v23;
  v24 = sub_1C1AC1F08(&qword_1EBF07AC8, &qword_1C1B9CED0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v304 = &v284 - v26;
  v27 = sub_1C1AC1F08(&unk_1EBF098E0, &qword_1C1BA22A0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v305 = &v284 - v29;
  v30 = sub_1C1AC1F08(&qword_1EBF098F8, &qword_1C1BA3DF0);
  v306 = *(v30 - 8);
  v307 = v30;
  v31 = *(v306 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v284 - v32;
  v34 = &v2[OBJC_IVAR___APPCPromotedContent_impressionId];
  *v34 = 0;
  v34[1] = 0;
  v331 = v34;
  v317 = OBJC_IVAR___APPCPromotedContent_context;
  swift_unknownObjectWeakInit();
  v330 = OBJC_IVAR___APPCPromotedContent_metaData;
  *&v2[OBJC_IVAR___APPCPromotedContent_metaData] = 0;
  v35 = OBJC_IVAR___APPCPromotedContent_disclosureURL;
  v36 = sub_1C1B944A8();
  v37 = *(*(v36 - 8) + 56);
  v329 = v35;
  v303 = v36;
  v37(&v2[v35], 1, 1);
  v38 = &v2[OBJC_IVAR___APPCPromotedContent_disclosureRendererPayload];
  *v38 = 0;
  v38[1] = 0;
  v328 = v38;
  v39 = &v2[OBJC_IVAR___APPCPromotedContent_brandName];
  *v39 = 0;
  v39[1] = 0;
  v326 = v39;
  v40 = &v2[OBJC_IVAR___APPCPromotedContent_campaignText];
  *v40 = 0;
  v40[1] = 0;
  v325 = v40;
  v323 = OBJC_IVAR___APPCPromotedContent_installAttribution;
  *&v2[OBJC_IVAR___APPCPromotedContent_installAttribution] = 0;
  v313 = OBJC_IVAR___APPCPromotedContent_bestRepresentation;
  *&v2[OBJC_IVAR___APPCPromotedContent_bestRepresentation] = 0;
  v315 = OBJC_IVAR___APPCPromotedContent_error;
  *&v2[OBJC_IVAR___APPCPromotedContent_error] = 0;
  v308 = v10;
  v41 = *(v10 + 56);
  v318 = OBJC_IVAR___APPCPromotedContent_startDate;
  v41(&v2[OBJC_IVAR___APPCPromotedContent_startDate], 1, 1, v9);
  v321 = OBJC_IVAR___APPCPromotedContent_mediaMetricHelper;
  *&v2[OBJC_IVAR___APPCPromotedContent_mediaMetricHelper] = 0;
  v302 = OBJC_IVAR___APPCPromotedContent_attachedToView;
  v2[OBJC_IVAR___APPCPromotedContent_attachedToView] = 0;
  v301 = OBJC_IVAR___APPCPromotedContent_vended;
  v2[OBJC_IVAR___APPCPromotedContent_vended] = 0;
  v294 = OBJC_IVAR___APPCPromotedContent_discarded;
  v2[OBJC_IVAR___APPCPromotedContent_discarded] = 0;
  v300 = OBJC_IVAR___APPCPromotedContent_consumed;
  v2[OBJC_IVAR___APPCPromotedContent_consumed] = 0;
  v290 = OBJC_IVAR___APPCPromotedContent_impressionThreshold;
  *&v2[OBJC_IVAR___APPCPromotedContent_impressionThreshold] = 0x3FF0000000000000;
  v314 = OBJC_IVAR___APPCPromotedContent_videoRequestStartDate;
  v309 = v9;
  v41(&v2[OBJC_IVAR___APPCPromotedContent_videoRequestStartDate], 1, 1, v9);
  v42 = OBJC_IVAR___APPCPromotedContent_discardedDueToPolicy;
  v2[OBJC_IVAR___APPCPromotedContent_discardedDueToPolicy] = 0;
  v43 = OBJC_IVAR___APPCPromotedContent_metricEventsTracking;
  v44 = type metadata accessor for MetricEventsTracker();
  v45 = *(v44 + 48);
  v46 = *(v44 + 52);
  swift_allocObject();
  v47 = sub_1C1AB0510();
  v324 = v43;
  *&v2[v43] = v47;
  v48 = &v2[OBJC_IVAR___APPCPromotedContent_unfilledReasonDelegate];
  *(v48 + 8) = 0;
  v316 = v48;
  swift_unknownObjectWeakInit();
  v49 = &v2[OBJC_IVAR___APPCPromotedContent_promotedContentUsedRegisterID];
  *v49 = 0;
  *(v49 + 1) = 0;
  v312 = v49;
  v50 = &v2[OBJC_IVAR___APPCPromotedContent_overriddenAdType];
  *v50 = 0;
  v50[8] = 1;
  v51 = *(v311 + 56);
  v332 = OBJC_IVAR___APPCPromotedContent__contextIdentifier;
  v51(&v2[OBJC_IVAR___APPCPromotedContent__contextIdentifier], 1, 1, v6);
  v52 = &v2[OBJC_IVAR___APPCPromotedContent_discardReason];
  *v52 = 0;
  v52[8] = 1;
  v319 = OBJC_IVAR___APPCPromotedContent_onPromotedContentComplete;
  *&v2[OBJC_IVAR___APPCPromotedContent_onPromotedContentComplete] = MEMORY[0x1E69E7CC0];
  v320 = OBJC_IVAR___APPCPromotedContent_appImpressionTask;
  *&v2[OBJC_IVAR___APPCPromotedContent_appImpressionTask] = 0;
  v53 = &v2[OBJC_IVAR___APPCPromotedContent_appImpression];
  *v53 = 0u;
  *(v53 + 16) = 0u;
  v322 = v53;
  *(v53 + 32) = 0;
  v327 = v2;
  v2[OBJC_IVAR___APPCPromotedContent_shouldSetupAttributionEventView] = 0;
  v54 = v333[4];
  sub_1C1AAABE0(v333, v333[3]);
  sub_1C1B795B4();
  v55 = v310;
  sub_1C1B95A08();
  if (v55)
  {
    v58 = v327;
    sub_1C1AA86F8(v333);
    v59 = 0;
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v63 = 0;
    v64 = 0;
LABEL_4:
    v65 = v331[1];

    sub_1C1ABD038(v58 + v317);
    v66 = *(v58 + v330);

    sub_1C1AA7C8C(v58 + v329, &qword_1EBF07AC8, &qword_1C1B9CED0);
    v67 = v328[1];

    v68 = v326[1];

    v69 = v325[1];

    if (v59)
    {
      v70 = *(v58 + OBJC_IVAR___APPCPromotedContent_representations);
    }

    v71 = *(v58 + v313);
    swift_unknownObjectRelease();

    sub_1C1AA7C8C(v58 + v318, &qword_1EBF07F50, &qword_1C1B9A590);
    if (v60)
    {
      (*(v308 + 8))(v58 + OBJC_IVAR___APPCPromotedContent_expirationDate, v309);
    }

    v72 = *(v321 + v58);
    swift_unknownObjectRelease();
    sub_1C1AA7C8C(v58 + v314, &qword_1EBF07F50, &qword_1C1B9A590);
    v73 = *(v58 + v324);
    swift_unknownObjectRelease();
    if (v61)
    {
      sub_1C1AA7C8C(v58 + OBJC_IVAR___APPCPromotedContent_receivedReferenceTime, &qword_1EBF07F50, &qword_1C1B9A590);
    }

    if (v62)
    {
      v74 = *(v58 + OBJC_IVAR___APPCPromotedContent_adServerEnvironments);
    }

    sub_1C1ABD038(v316);
    v75 = v312[1];

    sub_1C1AA7C8C(v58 + v332, &unk_1EBF098E0, &qword_1C1BA22A0);
    if (v63)
    {
      v76 = *(v58 + OBJC_IVAR___APPCPromotedContent_primitiveCreator);
      swift_unknownObjectRelease();
    }

    if (v64)
    {
      v77 = *(v58 + OBJC_IVAR___APPCPromotedContent_diagnosticPrimitiveCreator);
      swift_unknownObjectRelease();
    }

    v78 = *(v58 + v319);

    v79 = *&v320[v58];

    sub_1C1AA7C8C(v322, &qword_1EBF098F0, &qword_1C1B9D838);
    type metadata accessor for PromotedContent();
    v80 = *((*MEMORY[0x1E69E7D40] & *v58) + 0x30);
    v81 = *((*MEMORY[0x1E69E7D40] & *v58) + 0x34);
    swift_deallocPartialClassInstance();
    return v61;
  }

  v310 = v6;
  v56 = v305;
  v287 = v42;
  v288 = v52;
  v289 = v44;
  v352 = 0;
  v57 = sub_1C1B95698();
  v83 = v327;
  v84 = (v327 + OBJC_IVAR___APPCPromotedContent_identifier);
  *v84 = v57;
  v84[1] = v85;
  v352 = 2;
  sub_1C1B79608(&qword_1EDE6C358, MEMORY[0x1E69695A8]);
  sub_1C1B95678();
  v86 = v332;
  v87 = v33;
  swift_beginAccess();
  sub_1C1B19384(v56, v83 + v86, &unk_1EBF098E0, &qword_1C1BA22A0);
  swift_endAccess();
  v352 = 1;
  v88 = sub_1C1B95698();
  v91 = (v83 + OBJC_IVAR___APPCPromotedContent_journeyIdentifier);
  *v91 = v88;
  v91[1] = v92;
  v352 = 36;
  v93 = sub_1C1B95638();
  v95 = v94;
  v285 = v91;
  v286 = v84;
  v96 = v331;
  swift_beginAccess();
  v97 = v96[1];
  *v96 = v93;
  v96[1] = v95;

  sub_1C1AC1F08(&qword_1EBF09900, &qword_1C1BA3DF8);
  v351 = 3;
  sub_1C1B798E8(&unk_1EDE6BBD8, &unk_1EDE6BBF0);
  sub_1C1B95678();
  v98 = v350;
  v99 = v330;
  swift_beginAccess();
  v100 = *(v83 + v99);
  *(v83 + v99) = v98;

  LOBYTE(v350) = 4;
  sub_1C1B79608(&unk_1EDE6C3A0, MEMORY[0x1E6968FB0]);
  v101 = v304;
  sub_1C1B95678();
  v102 = v87;
  v103 = v329;
  swift_beginAccess();
  sub_1C1B19384(v101, v83 + v103, &qword_1EBF07AC8, &qword_1C1B9CED0);
  swift_endAccess();
  LOBYTE(v350) = 5;
  v104 = sub_1C1B95638();
  v106 = v105;
  v107 = v328;
  swift_beginAccess();
  v108 = v107[1];
  *v107 = v104;
  v107[1] = v106;

  v349 = 6;
  *(v83 + OBJC_IVAR___APPCPromotedContent_minimumTimeBetweenPresentation) = sub_1C1B956D8();
  v349 = 7;
  v109 = sub_1C1B95638();
  v305 = 0;
  v111 = v109;
  v112 = v110;
  v113 = v326;
  swift_beginAccess();
  v114 = v113[1];
  *v113 = v111;
  v113[1] = v112;

  v348 = 8;
  v304 = v102;
  v115 = v305;
  v116 = sub_1C1B95638();
  v305 = v115;
  if (v115)
  {
    goto LABEL_20;
  }

  v118 = v116;
  v119 = v117;
  v120 = v325;
  swift_beginAccess();
  v121 = v120[1];
  *v120 = v118;
  v120[1] = v119;

  sub_1C1AC1F08(&qword_1EBF09908, &qword_1C1BA3E00);
  LOBYTE(v346) = 9;
  sub_1C1B79974(&qword_1EDE6BBB0, sub_1C1B79650);
  v122 = v305;
  sub_1C1B956F8();
  v305 = v122;
  if (v122)
  {
LABEL_20:
    (*(v306 + 8))(v304, v307);
    v59 = 0;
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v63 = 0;
    v64 = 0;
LABEL_21:
    v58 = v327;
    sub_1C1AA86F8(v333);
    v89 = *(v58 + OBJC_IVAR___APPCPromotedContent_identifier + 8);

    v90 = *(v58 + OBJC_IVAR___APPCPromotedContent_journeyIdentifier + 8);

    goto LABEL_4;
  }

  v123 = v347;
  v124 = *(v347 + 16);
  if (v124)
  {
    v346 = MEMORY[0x1E69E7CC0];
    sub_1C1B95518();
    v125 = 32;
    while (1)
    {
      v130 = *(v123 + v125);
      v131 = v130 >> 61;
      if ((v130 >> 61) <= 1)
      {
        if (!v131)
        {
          sub_1C1B79608(&qword_1EBF08D50, type metadata accessor for BannerRepresentation);
          sub_1C1B79608(&qword_1EBF09930, type metadata accessor for BannerRepresentation);
          v132 = (v130 & 0x1FFFFFFFFFFFFFFFLL);
          goto LABEL_26;
        }

        v132 = (v130 & 0x1FFFFFFFFFFFFFFFLL);
        v126 = type metadata accessor for VideoRepresentation;
        sub_1C1B79608(&qword_1EBF08D48, type metadata accessor for VideoRepresentation);
        v127 = &unk_1EBF09920;
      }

      else
      {
        v132 = (v130 & 0x1FFFFFFFFFFFFFFFLL);
        if (v131 == 2)
        {
          v126 = type metadata accessor for NativeRepresentation;
          sub_1C1B79608(&qword_1EBF08D40, type metadata accessor for NativeRepresentation);
          v127 = &unk_1EBF09910;
        }

        else if (v131 == 3)
        {
          v126 = type metadata accessor for SearchLandingPageRepresentation;
          sub_1C1B79608(&unk_1EDE6A7F0, type metadata accessor for SearchLandingPageRepresentation);
          v127 = &unk_1EDE6A800;
        }

        else
        {
          v126 = type metadata accessor for ClientLayoutRepresentation;
          sub_1C1B79608(&qword_1EDE6A8F0, type metadata accessor for ClientLayoutRepresentation);
          v127 = &unk_1EDE6A8F8;
        }
      }

      sub_1C1B79608(v127, v126);
LABEL_26:
      v128 = v132;
      sub_1C1B954F8();
      v129 = *(v346 + 16);
      sub_1C1B95528();
      sub_1C1B95538();
      sub_1C1B95508();
      v125 += 8;
      if (!--v124)
      {

        v133 = v346;
        goto LABEL_37;
      }
    }
  }

  v133 = MEMORY[0x1E69E7CC0];
LABEL_37:
  *(v327 + OBJC_IVAR___APPCPromotedContent_representations) = v133;
  LOBYTE(v347) = 13;
  v134 = v305;
  v135 = sub_1C1B956A8();
  v305 = v134;
  if (v134)
  {
    goto LABEL_49;
  }

  *(v327 + OBJC_IVAR___APPCPromotedContent_placeholder) = v135 & 1;
  LOBYTE(v347) = 17;
  v136 = v305;
  v137 = sub_1C1B956A8();
  v305 = v136;
  if (v136)
  {
    goto LABEL_49;
  }

  v138 = v137;
  v139 = v327;
  v140 = v302;
  swift_beginAccess();
  *(v139 + v140) = v138 & 1;
  LOBYTE(v346) = 18;
  v141 = v305;
  v142 = sub_1C1B956A8();
  v305 = v141;
  if (v141)
  {
    goto LABEL_49;
  }

  v143 = v142;
  v144 = v327;
  v145 = v301;
  swift_beginAccess();
  *(v144 + v145) = v143 & 1;
  v345 = 20;
  v146 = v305;
  v147 = sub_1C1B956A8();
  v305 = v146;
  if (v146)
  {
    goto LABEL_49;
  }

  v148 = v147;
  v149 = v327;
  v150 = v300;
  swift_beginAccess();
  *(v149 + v150) = v148 & 1;
  v344 = 21;
  v151 = v305;
  sub_1C1B956B8();
  v305 = v151;
  if (v151)
  {
    goto LABEL_49;
  }

  v153 = v152;
  v154 = v327;
  v155 = v290;
  swift_beginAccess();
  *(v154 + v155) = v153;
  v343 = 22;
  sub_1C1B79608(&unk_1EDE6C370, MEMORY[0x1E6969530]);
  v156 = v305;
  sub_1C1B95678();
  v305 = v156;
  if (v156)
  {
    goto LABEL_49;
  }

  v157 = v314;
  v158 = v327;
  swift_beginAccess();
  sub_1C1B19384(v291, v158 + v157, &qword_1EBF07F50, &qword_1C1B9A590);
  swift_endAccess();
  v343 = 23;
  v159 = v305;
  v160 = sub_1C1B956A8();
  v305 = v159;
  if (v159)
  {
    goto LABEL_49;
  }

  v161 = v160;
  v162 = v327;
  v163 = v287;
  swift_beginAccess();
  *(v162 + v163) = v161 & 1;
  v341 = 24;
  sub_1C1B1D308();
  v164 = v305;
  sub_1C1B95678();
  v305 = v164;
  if (v164)
  {
    goto LABEL_49;
  }

  v165 = v342;
  if (v342)
  {
    sub_1C1B79608(&unk_1EDE6C0B0, type metadata accessor for MetricEventsTracker);
    sub_1C1B79608(&qword_1EDE6C0C0, type metadata accessor for MetricEventsTracker);
  }

  v166 = v324;
  v167 = v327;
  swift_beginAccess();
  v168 = *(v167 + v166);
  *(v167 + v166) = v165;
  swift_unknownObjectRelease();
  v341 = 31;
  sub_1C1B796A4();
  v169 = v305;
  sub_1C1B95678();
  v305 = v169;
  if (v169)
  {
    goto LABEL_49;
  }

  v170 = v339;
  v171 = v340;
  v172 = v288;
  swift_beginAccess();
  *v172 = v170;
  *(v172 + 8) = v171;
  LOBYTE(v339) = 15;
  v173 = v305;
  sub_1C1B956F8();
  v305 = v173;
  if (v173)
  {
LABEL_49:
    (*(v306 + 8))(v304, v307);
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v63 = 0;
    v64 = 0;
    v59 = 1;
    goto LABEL_21;
  }

  v174 = *(v308 + 32);
  v174(v327 + OBJC_IVAR___APPCPromotedContent_expirationDate, v292, v309);
  LOBYTE(v339) = 14;
  v175 = v305;
  sub_1C1B95678();
  v305 = v175;
  if (v175)
  {
    goto LABEL_67;
  }

  v176 = v318;
  v177 = v327;
  swift_beginAccess();
  sub_1C1B19384(v293, v177 + v176, &qword_1EBF07F50, &qword_1C1B9A590);
  swift_endAccess();
  v338 = 16;
  sub_1C1B796F8();
  v178 = v305;
  sub_1C1B956F8();
  v305 = v178;
  if (v178)
  {
    goto LABEL_67;
  }

  *(v327 + OBJC_IVAR___APPCPromotedContent_serverUnfilledReason) = v339;
  v338 = 11;
  sub_1C1B79650();
  v179 = v305;
  sub_1C1B95678();
  v305 = v179;
  if (v179)
  {
    goto LABEL_67;
  }

  v180 = v339;
  if ((~v339 & 0xF000000000000007) != 0)
  {
    v181 = v339 >> 61;
    if ((v339 >> 61) <= 1)
    {
      if (v181)
      {
        v180 = v339 & 0x1FFFFFFFFFFFFFFFLL;
        v182 = type metadata accessor for VideoRepresentation;
        sub_1C1B79608(&qword_1EBF08D48, type metadata accessor for VideoRepresentation);
        v183 = &unk_1EBF09920;
      }

      else
      {
        v182 = type metadata accessor for BannerRepresentation;
        sub_1C1B79608(&qword_1EBF08D50, type metadata accessor for BannerRepresentation);
        v183 = &qword_1EBF09930;
      }
    }

    else
    {
      v180 = v339 & 0x1FFFFFFFFFFFFFFFLL;
      if (v181 == 2)
      {
        v182 = type metadata accessor for NativeRepresentation;
        sub_1C1B79608(&qword_1EBF08D40, type metadata accessor for NativeRepresentation);
        v183 = &unk_1EBF09910;
      }

      else if (v181 == 3)
      {
        v182 = type metadata accessor for SearchLandingPageRepresentation;
        sub_1C1B79608(&unk_1EDE6A7F0, type metadata accessor for SearchLandingPageRepresentation);
        v183 = &unk_1EDE6A800;
      }

      else
      {
        v182 = type metadata accessor for ClientLayoutRepresentation;
        sub_1C1B79608(&qword_1EDE6A8F0, type metadata accessor for ClientLayoutRepresentation);
        v183 = &unk_1EDE6A8F8;
      }
    }

    sub_1C1B79608(v183, v182);
  }

  else
  {
    v180 = 0;
  }

  v184 = v313;
  v185 = v327;
  swift_beginAccess();
  v186 = *(v185 + v184);
  *(v185 + v184) = v180;
  swift_unknownObjectRelease();
  v338 = 19;
  v187 = v305;
  v188 = sub_1C1B956A8();
  v305 = v187;
  if (v187)
  {
    goto LABEL_67;
  }

  v189 = v188;
  v190 = v294;
  v191 = v327;
  swift_beginAccess();
  *(v191 + v190) = v189 & 1;
  v335 = 26;
  sub_1C1B1D2B4();
  v192 = v305;
  sub_1C1B956F8();
  v305 = v192;
  if (v192)
  {
LABEL_67:
    (*(v306 + 8))(v304, v307);
    v61 = 0;
    v62 = 0;
    v63 = 0;
    v64 = 0;
    v59 = 1;
    v60 = 1;
    goto LABEL_21;
  }

  v193 = v336;
  sub_1C1B79608(&unk_1EDE6C140, type metadata accessor for PrimitiveCreator);
  sub_1C1B79608(&qword_1EDE6C150, type metadata accessor for PrimitiveCreator);
  v194 = OBJC_IVAR___APPCPromotedContent_primitiveCreator;
  *(v327 + OBJC_IVAR___APPCPromotedContent_primitiveCreator) = v193;
  v335 = 34;
  v195 = v305;
  sub_1C1B956F8();
  v305 = v195;
  if (v195)
  {
    (*(v306 + 8))(v304, v307);
    v61 = 0;
    v62 = 0;
    v64 = 0;
    v59 = 1;
    v60 = 1;
    v63 = 1;
    goto LABEL_21;
  }

  *(v327 + OBJC_IVAR___APPCPromotedContent_diagnosticPrimitiveCreator) = v336;
  LOBYTE(v336) = 27;
  v196 = v305;
  v197 = sub_1C1B956A8();
  v305 = v196;
  if (v196)
  {
    goto LABEL_75;
  }

  *(v327 + OBJC_IVAR___APPCPromotedContent_isLocationAvailableForAd) = v197 & 1;
  LOBYTE(v336) = 28;
  v198 = v305;
  v199 = sub_1C1B956A8();
  v305 = v198;
  if (v198)
  {
    goto LABEL_75;
  }

  *(v327 + OBJC_IVAR___APPCPromotedContent_isPAAvailableForAd) = v199 & 1;
  v335 = 29;
  sub_1C1B5AE40();
  v200 = v305;
  sub_1C1B956F8();
  v305 = v200;
  if (v200)
  {
    goto LABEL_75;
  }

  v201 = OBJC_IVAR___APPCPromotedContent_placement;
  *(v327 + OBJC_IVAR___APPCPromotedContent_placement) = v336;
  LOBYTE(v336) = 30;
  v202 = v305;
  v203 = sub_1C1B95658();
  v305 = v202;
  if (v202 || (v205 = v327 + OBJC_IVAR___APPCPromotedContent_serverResponseReceivedTimestamp, *v205 = v203, v205[8] = v204 & 1, LOBYTE(v336) = 32, v206 = v305, sub_1C1B95678(), (v305 = v206) != 0))
  {
LABEL_75:
    (*(v306 + 8))(v304, v307);
    v61 = 0;
    v62 = 0;
    v59 = 1;
    v60 = 1;
LABEL_76:
    v63 = 1;
    v64 = 1;
    goto LABEL_21;
  }

  v207 = OBJC_IVAR___APPCPromotedContent_receivedReferenceTime;
  sub_1C1B193EC(v295, v327 + OBJC_IVAR___APPCPromotedContent_receivedReferenceTime);
  sub_1C1AC1F08(&unk_1EBF07AA0, &qword_1C1B98CF0);
  v335 = 33;
  sub_1C1AC34C8(&qword_1EDE6BB98);
  v208 = v305;
  sub_1C1B95678();
  v305 = v208;
  if (v208)
  {
    (*(v306 + 8))(v304, v307);
    v62 = 0;
    v59 = 1;
    v60 = 1;
    v61 = 1;
    goto LABEL_76;
  }

  v303 = OBJC_IVAR___APPCPromotedContent_adServerEnvironments;
  *(v327 + OBJC_IVAR___APPCPromotedContent_adServerEnvironments) = v336;
  LOBYTE(v336) = 35;
  v209 = v305;
  v210 = sub_1C1B95668();
  v305 = v209;
  if (v209 || ((v211 & 1) != 0 ? (v212 = -1) : (v212 = v210), *(v327 + OBJC_IVAR___APPCPromotedContent_diagnosticCode) = v212, v335 = 10, sub_1C1AE4898(), v213 = v305, sub_1C1B95678(), (v305 = v213) != 0))
  {
    (*(v306 + 8))(v304, v307);
LABEL_85:
    v59 = 1;
    v60 = 1;
    v61 = 1;
    v62 = 1;
    goto LABEL_76;
  }

  v302 = v337;
  if (v337 >> 60 != 15)
  {
    v214 = v336;
    v215 = objc_allocWithZone(MEMORY[0x1E696ACD0]);
    sub_1C1B798D4(v214, v302);
    v301 = v214;
    v216 = v305;
    v217 = sub_1C1B79814();
    v305 = v216;
    if (v216)
    {
      v219 = v301;
      v218 = v302;
      sub_1C1AE49EC(v301, v302);
      (*(v306 + 8))(v304, v307);
      sub_1C1AE49EC(v219, v218);
      goto LABEL_85;
    }

    v220 = v217;
    sub_1C1AE49EC(v301, v302);
    [v220 setRequiresSecureCoding_];
    v331 = [objc_allocWithZone(MEMORY[0x1E698A040]) initWithCoder_];
    v221 = v323;
    v222 = v327;
    swift_beginAccess();
    v223 = *(v222 + v221);
    *(v222 + v221) = v331;

    [v220 finishDecoding];
    sub_1C1AE49EC(v301, v302);
  }

  type metadata accessor for MetricsUnloadTracker();
  v224 = swift_allocObject();
  *(v224 + 16) = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  *(v224 + 24) = 0;
  v330 = v224;
  *(v224 + 32) = 1;
  [objc_allocWithZone(MEMORY[0x1E69861C0]) init];
  v225 = sub_1C1B94908();
  v226 = *(v225 + 48);
  v227 = *(v225 + 52);
  swift_allocObject();
  v331 = sub_1C1B948E8();
  v228 = v296;
  sub_1C1AA7E30(v327 + v207, v296, &qword_1EBF07F50, &qword_1C1B9A590);
  if ((*(v308 + 48))(v228, 1, v309) == 1)
  {
    sub_1C1AA7C8C(v296, &qword_1EBF07F50, &qword_1C1B9A590);
  }

  else
  {
    v229 = v297;
    v230 = v309;
    v174(v297, v296, v309);
    sub_1C1B948D8();
    (*(v308 + 8))(v229, v230);
  }

  v231 = v286;
  swift_beginAccess();
  v232 = v231[1];
  v323 = *v231;
  v329 = v232;
  v325 = *(v311 + 48);
  v326 = (v311 + 48);
  if ((v325)(v327 + v332, 1, v310))
  {

    sub_1C1B945E8();
  }

  else
  {
    (*(v311 + 16))(v298, v327 + v332, v310);
  }

  v233 = v298;
  v318 = sub_1C1B945A8();
  v319 = v234;
  v321 = *(v311 + 8);
  v322 = v311 + 8;
  v321(v233, v310);
  v235 = v285;
  swift_beginAccess();
  v236 = *v235;
  v237 = v235[1];
  v317 = v236;
  v238 = v327;
  v239 = *(v327 + v194);
  v240 = objc_opt_self();
  v316 = v237;

  v315 = v239;
  swift_unknownObjectRetain();
  v320 = v240;
  [v240 daemonDeliveryClass];
  swift_getObjCClassMetadata();
  v241 = [swift_getObjCClassFromMetadata() daemonDelivery];
  v328 = 0;
  v242 = 0;
  v243 = *(v238 + v201) - 7005;
  if (v243 <= 3)
  {
    v328 = qword_1C1BA4170[v243];
    v242 = qword_1C1BA4190[v243];
  }

  type metadata accessor for JourneyMetricsHelper();
  swift_getObjectType();
  v244 = v327;
  v245 = *(v327 + v303);

  v246 = v331;

  v247 = v330;

  *(v244 + OBJC_IVAR___APPCPromotedContent_metricsHelper) = sub_1C1AB0E7C(v323, v329, v318, v319, v317, v316, v246, v247, v315, v241, v328, v242, v245, 0, 0, 0, 0, 1);
  if ((v325)(v244 + v332, 1, v310))
  {
    sub_1C1B945E8();
  }

  else
  {
    (*(v311 + 16))(v298, v327 + v332, v310);
  }

  v248 = v298;
  v332 = sub_1C1B945A8();
  v250 = v249;
  v321(v248, v310);
  v251 = v286[1];
  v329 = *v286;
  v252 = v327;
  v253 = *(v327 + v194);

  swift_unknownObjectRetain();
  [v320 daemonDeliveryClass];
  swift_getObjCClassMetadata();
  v254 = [swift_getObjCClassFromMetadata() daemonDelivery];
  v255 = *(v252 + v324);
  if (v255)
  {
    v256 = v255;
  }

  else
  {
    v257 = *(v289 + 48);
    v258 = *(v289 + 52);
    swift_allocObject();
    v256 = sub_1C1AB0510();
  }

  type metadata accessor for DiagnosticMetricsHelper();
  swift_getObjectType();
  swift_unknownObjectRetain();
  v259 = sub_1C1AB1708(v332, v250, v329, v251, v253, v254, v256);
  v260 = v327;
  *(v327 + OBJC_IVAR___APPCPromotedContent_diagnosticMetricHelper) = v259;
  v261 = type metadata accessor for PromotedContent();
  v334.receiver = v260;
  v334.super_class = v261;
  v61 = objc_msgSendSuper2(&v334, sel_init);
  v262 = sub_1C1AB17D0(v331, v330);
  v263 = OBJC_IVAR___APPCPromotedContent_mediaMetricHelper;
  swift_beginAccess();
  v264 = *(v61 + v263);
  *(v61 + v263) = v262;
  swift_unknownObjectRelease();
  v265 = OBJC_IVAR___APPCPromotedContent_metricsHelper;
  swift_beginAccess();
  v266 = *(v61 + v265);
  v267 = OBJC_IVAR___APPCPromotedContent_impressionThreshold;
  swift_beginAccess();
  [v266 setImpressionThresholdDuration_];
  v268 = *(v61 + OBJC_IVAR___APPCPromotedContent_diagnosticMetricHelper);
  swift_unknownObjectRetain();
  [v268 setNetworkType_];
  swift_unknownObjectRelease();
  v269 = *(v61 + v265);
  [swift_unknownObjectRetain() setPromotedContent_];
  swift_unknownObjectRelease();

  v270 = OBJC_IVAR___APPCPromotedContent_installAttribution;
  swift_beginAccess();
  v271 = *(v61 + v270);
  if (v271)
  {
    v272 = [v271 attributionSignature];
    v273 = sub_1C1B94D88();
    v275 = v274;

    v276 = OBJC_IVAR___APPCPromotedContent_shouldSetupAttributionEventView;
    swift_beginAccess();
    *(v61 + v276) = 1;
    v277 = sub_1C1B95028();
    v278 = v299;
    (*(*(v277 - 8) + 56))(v299, 1, 1, v277);
    v279 = swift_allocObject();
    v279[2] = 0;
    v279[3] = 0;
    v279[4] = v61;
    v279[5] = v273;
    v279[6] = v275;
    v280 = v61;
    v281 = sub_1C1B025C8(0, 0, v278, &unk_1C1BA3E10, v279);

    (*(v306 + 8))(v304, v307);
    v282 = OBJC_IVAR___APPCPromotedContent_appImpressionTask;
    swift_beginAccess();
    v283 = *&v280[v282];
    *&v280[v282] = v281;
  }

  else
  {

    (*(v306 + 8))(v304, v307);
  }

  sub_1C1AA86F8(v333);
  return v61;
}

uint64_t sub_1C1B72B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[10] = a1;
  v6[11] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1C1B72BA0, 0, 0);
}

uint64_t sub_1C1B72BA0()
{
  v1 = v0[13];
  v0[5] = sub_1C1B94718();
  v0[6] = &protocol witness table for AppImpression;
  v2 = sub_1C1AB0D60(v0 + 2);
  v3 = *(MEMORY[0x1E6959CC8] + 4);

  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_1C1B72C74;
  v5 = v0[12];
  v6 = v0[13];

  return MEMORY[0x1EEDB2930](v2, v5, v6);
}

uint64_t sub_1C1B72C74()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_1C1B7B4CC;
  }

  else
  {
    v3 = sub_1C1B7B4D8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1C1B72D88(void *a1)
{
  v2 = v1;
  v4 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v116 = &v112 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v117 = &v112 - v8;
  v9 = sub_1C1B94588();
  v119 = *(v9 - 8);
  v120 = v9;
  v10 = *(v119 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v118 = &v112 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_1C1AC1F08(&qword_1EBF07AC8, &qword_1C1B9CED0);
  v12 = *(*(v121 - 8) + 64);
  MEMORY[0x1EEE9AC00](v121);
  v14 = &v112 - v13;
  v15 = sub_1C1AC1F08(&unk_1EBF098E0, &qword_1C1BA22A0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v122 = &v112 - v17;
  v18 = sub_1C1AC1F08(&qword_1EBF09938, &qword_1C1BA3E18);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v112 - v21;
  v23 = a1[4];
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B795B4();
  sub_1C1B95A18();
  v24 = (v2 + OBJC_IVAR___APPCPromotedContent_identifier);
  swift_beginAccess();
  v25 = *v24;
  v26 = v24[1];
  v150 = 0;

  v27 = v151;
  sub_1C1B957A8();
  if (v27)
  {
    (*(v19 + 8))(v22, v18);
  }

  v115 = v14;
  v151 = v19;

  v29 = OBJC_IVAR___APPCPromotedContent__contextIdentifier;
  v30 = v2;
  swift_beginAccess();
  v31 = v2 + v29;
  v32 = v122;
  sub_1C1AA7E30(v31, v122, &unk_1EBF098E0, &qword_1C1BA22A0);
  v149 = 2;
  sub_1C1B945F8();
  sub_1C1B79608(&unk_1EDE6C360, MEMORY[0x1E69695A8]);
  sub_1C1B95788();
  v33 = v18;
  sub_1C1AA7C8C(v32, &unk_1EBF098E0, &qword_1C1BA22A0);
  v35 = *v24;
  v34 = v24[1];
  v149 = 0;

  sub_1C1B957A8();

  v36 = (v30 + OBJC_IVAR___APPCPromotedContent_journeyIdentifier);
  swift_beginAccess();
  v37 = *v36;
  v38 = v36[1];
  v148 = 1;

  sub_1C1B957A8();

  v39 = OBJC_IVAR___APPCPromotedContent_impressionId;
  swift_beginAccess();
  v147 = *(v30 + v39);
  LOBYTE(v146) = 36;
  v40 = sub_1C1AC1F08(&qword_1EBF07AB8, &qword_1C1B98D00);
  v41 = sub_1C1AC344C();
  sub_1C1B95808();
  v122 = v41;
  v42 = v22;
  v43 = OBJC_IVAR___APPCPromotedContent_metaData;
  swift_beginAccess();
  v146 = *(v30 + v43);
  v145 = 3;
  sub_1C1AC1F08(&qword_1EBF09900, &qword_1C1BA3DF8);
  sub_1C1B798E8(&qword_1EDE6BBE8, &qword_1EDE6BC00);
  sub_1C1B95788();
  v44 = OBJC_IVAR___APPCPromotedContent_disclosureURL;
  swift_beginAccess();
  v45 = v30 + v44;
  v46 = v115;
  sub_1C1AA7E30(v45, v115, &qword_1EBF07AC8, &qword_1C1B9CED0);
  v145 = 4;
  sub_1C1AEEE3C();
  sub_1C1B95808();
  sub_1C1AA7C8C(v46, &qword_1EBF07AC8, &qword_1C1B9CED0);
  v47 = OBJC_IVAR___APPCPromotedContent_disclosureRendererPayload;
  swift_beginAccess();
  v144 = *(v30 + v47);
  v143 = 5;
  sub_1C1B95808();
  v121 = v40;
  v48 = OBJC_IVAR___APPCPromotedContent_minimumTimeBetweenPresentation;
  swift_beginAccess();
  v49 = *(v30 + v48);
  v143 = 6;
  sub_1C1B957E8();
  v50 = OBJC_IVAR___APPCPromotedContent_brandName;
  swift_beginAccess();
  v142 = *(v30 + v50);
  LOBYTE(v141) = 7;
  sub_1C1B95808();
  v51 = OBJC_IVAR___APPCPromotedContent_campaignText;
  swift_beginAccess();
  v141 = *(v30 + v51);
  LOBYTE(v140) = 8;
  v113 = v42;
  v114 = v33;
  sub_1C1B95808();
  v112 = 0;
  v52 = OBJC_IVAR___APPCPromotedContent_representations;
  swift_beginAccess();
  v115 = *(v30 + v52);
  if (v115 >> 62)
  {
LABEL_41:
    v53 = v115 & 0xFFFFFFFFFFFFFF8;
    v122 = sub_1C1B953A8();
  }

  else
  {
    v53 = v115 & 0xFFFFFFFFFFFFFF8;
    v122 = *((v115 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v122)
  {
    v54 = 0;
    v121 = v115 & 0xC000000000000001;
    v55 = MEMORY[0x1E69E7CC0];
    do
    {
      v56 = v54;
      v57 = v115;
      while (1)
      {
        if (v121)
        {
          MEMORY[0x1C6907490](v56, v57);
          v54 = v56 + 1;
          if (__OFADD__(v56, 1))
          {
            goto LABEL_39;
          }
        }

        else
        {
          if (v56 >= *(v53 + 16))
          {
            goto LABEL_40;
          }

          v58 = *(v57 + 8 * v56 + 32);
          swift_unknownObjectRetain();
          v54 = v56 + 1;
          if (__OFADD__(v56, 1))
          {
LABEL_39:
            __break(1u);
LABEL_40:
            __break(1u);
            goto LABEL_41;
          }
        }

        type metadata accessor for BannerRepresentation();
        v59 = swift_dynamicCastClass();
        if (v59)
        {
          v64 = v59;
          goto LABEL_26;
        }

        type metadata accessor for VideoRepresentation();
        v60 = swift_dynamicCastClass();
        if (v60)
        {
          v64 = v60 | 0x2000000000000000;
          goto LABEL_26;
        }

        type metadata accessor for NativeRepresentation();
        v61 = swift_dynamicCastClass();
        if (v61)
        {
          v64 = v61 | 0x4000000000000000;
          goto LABEL_26;
        }

        type metadata accessor for SearchLandingPageRepresentation();
        v62 = swift_dynamicCastClass();
        if (v62)
        {
          v64 = v62 | 0x6000000000000000;
          goto LABEL_26;
        }

        type metadata accessor for ClientLayoutRepresentation();
        v63 = swift_dynamicCastClass();
        if (v63)
        {
          break;
        }

        swift_unknownObjectRelease();
        ++v56;
        if (v54 == v122)
        {
          goto LABEL_33;
        }
      }

      v64 = v63 | 0x8000000000000000;
LABEL_26:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v55 = sub_1C1ACE5F4(0, *(v55 + 2) + 1, 1, v55);
      }

      v66 = *(v55 + 2);
      v65 = *(v55 + 3);
      if (v66 >= v65 >> 1)
      {
        v55 = sub_1C1ACE5F4((v65 > 1), v66 + 1, 1, v55);
      }

      *(v55 + 2) = v66 + 1;
      *&v55[8 * v66 + 32] = v64;
    }

    while (v54 != v122);
  }

  else
  {
    v55 = MEMORY[0x1E69E7CC0];
  }

LABEL_33:

  v140 = v55;
  LOBYTE(v139) = 9;
  sub_1C1AC1F08(&qword_1EBF09908, &qword_1C1BA3E00);
  sub_1C1B79974(&qword_1EDE6BBB8, sub_1C1B799EC);
  v67 = v112;
  sub_1C1B95808();
  if (v67)
  {

    return (*(v151 + 8))(v113, v114);
  }

  v68 = OBJC_IVAR___APPCPromotedContent_bestRepresentation;
  swift_beginAccess();
  if (*(v30 + v68))
  {
    v69 = *(v30 + v68);
    swift_unknownObjectRetain_n();
    v70 = sub_1C1B113D8();
    v139 = v70;
    v138 = 11;
    sub_1C1AC1F08(&unk_1EBF09950, &qword_1C1BA3E30);
    sub_1C1B79BF0();
    sub_1C1B95808();
    sub_1C1B79C74(v70);
    swift_unknownObjectRelease();
  }

  v71 = *(v30 + OBJC_IVAR___APPCPromotedContent_placeholder);
  LOBYTE(v139) = 13;
  sub_1C1B957B8();
  v72 = OBJC_IVAR___APPCPromotedContent_expirationDate;
  swift_beginAccess();
  (*(v119 + 16))(v118, v30 + v72, v120);
  v138 = 15;
  sub_1C1B79608(&unk_1EDE6C380, MEMORY[0x1E6969530]);
  sub_1C1B95808();
  (*(v119 + 8))(v118, v120);
  v73 = OBJC_IVAR___APPCPromotedContent_startDate;
  swift_beginAccess();
  sub_1C1AA7E30(v30 + v73, v117, &qword_1EBF07F50, &qword_1C1B9A590);
  v137 = 14;
  sub_1C1B95788();
  sub_1C1AA7C8C(v117, &qword_1EBF07F50, &qword_1C1B9A590);
  v74 = OBJC_IVAR___APPCPromotedContent_serverUnfilledReason;
  swift_beginAccess();
  v136 = *(v30 + v74);
  v135 = 16;
  sub_1C1B79A40();
  sub_1C1B95808();
  v75 = OBJC_IVAR___APPCPromotedContent_attachedToView;
  swift_beginAccess();
  v76 = *(v30 + v75);
  v135 = 17;
  sub_1C1B957B8();
  v77 = OBJC_IVAR___APPCPromotedContent_vended;
  swift_beginAccess();
  v78 = *(v30 + v77);
  v134 = 18;
  sub_1C1B957B8();
  v79 = OBJC_IVAR___APPCPromotedContent_discarded;
  swift_beginAccess();
  v80 = *(v30 + v79);
  v133 = 19;
  sub_1C1B957B8();
  v81 = OBJC_IVAR___APPCPromotedContent_consumed;
  swift_beginAccess();
  v82 = *(v30 + v81);
  v132 = 20;
  sub_1C1B957B8();
  v83 = OBJC_IVAR___APPCPromotedContent_impressionThreshold;
  swift_beginAccess();
  v84 = *(v30 + v83);
  v131 = 21;
  sub_1C1B957C8();
  v85 = OBJC_IVAR___APPCPromotedContent_videoRequestStartDate;
  swift_beginAccess();
  sub_1C1AA7E30(v30 + v85, v116, &qword_1EBF07F50, &qword_1C1B9A590);
  v130 = 22;
  sub_1C1B95788();
  sub_1C1AA7C8C(v116, &qword_1EBF07F50, &qword_1C1B9A590);
  v86 = OBJC_IVAR___APPCPromotedContent_discardedDueToPolicy;
  swift_beginAccess();
  v87 = *(v30 + v86);
  v129 = 23;
  sub_1C1B957B8();
  v88 = OBJC_IVAR___APPCPromotedContent_metricEventsTracking;
  swift_beginAccess();
  if (*(v30 + v88))
  {
    type metadata accessor for MetricEventsTracker();
    v89 = swift_dynamicCastClass();
    if (v89)
    {
      swift_unknownObjectRetain();
    }

    v128 = v89;
    LOBYTE(v126) = 24;
    swift_unknownObjectRetain();
    sub_1C1AC1F08(&qword_1EBF09948, &qword_1C1BA3E28);
    sub_1C1B79B6C();
    sub_1C1B95808();
    swift_unknownObjectRelease();
  }

  v90 = v30 + OBJC_IVAR___APPCPromotedContent_discardReason;
  swift_beginAccess();
  v91 = *(v90 + 8);
  v126 = *v90;
  v127 = v91;
  LOBYTE(v124) = 31;
  sub_1C1B79A94();
  sub_1C1B95788();
  v92 = *(v30 + OBJC_IVAR___APPCPromotedContent_overriddenAdType + 8);
  v126 = *(v30 + OBJC_IVAR___APPCPromotedContent_overriddenAdType);
  v127 = v92;
  LOBYTE(v124) = 25;
  sub_1C1AC1F08(&qword_1EBF09940, &qword_1C1BA3E20);
  sub_1C1B79AE8();
  sub_1C1B95808();
  v93 = *(v30 + OBJC_IVAR___APPCPromotedContent_primitiveCreator);
  type metadata accessor for PrimitiveCreator();
  v94 = swift_dynamicCastClass();
  if (v94)
  {
    swift_unknownObjectRetain();
  }

  v126 = v94;
  LOBYTE(v124) = 26;
  sub_1C1B1D3A4();
  sub_1C1B95788();

  v95 = *(v30 + OBJC_IVAR___APPCPromotedContent_diagnosticPrimitiveCreator);
  v96 = swift_dynamicCastClass();
  if (v96)
  {
    swift_unknownObjectRetain();
  }

  v126 = v96;
  LOBYTE(v124) = 34;
  sub_1C1B95788();

  v97 = *(v30 + OBJC_IVAR___APPCPromotedContent_isLocationAvailableForAd);
  LOBYTE(v126) = 27;
  sub_1C1B957B8();
  v98 = *(v30 + OBJC_IVAR___APPCPromotedContent_isPAAvailableForAd);
  LOBYTE(v126) = 28;
  sub_1C1B957B8();
  v126 = *(v30 + OBJC_IVAR___APPCPromotedContent_placement);
  LOBYTE(v124) = 29;
  sub_1C1B5AD98();
  sub_1C1B95808();
  v99 = *(v30 + OBJC_IVAR___APPCPromotedContent_serverResponseReceivedTimestamp);
  v100 = *(v30 + OBJC_IVAR___APPCPromotedContent_serverResponseReceivedTimestamp + 8);
  LOBYTE(v126) = 30;
  sub_1C1B95768();
  LOBYTE(v126) = 32;
  sub_1C1B95788();
  v126 = *(v30 + OBJC_IVAR___APPCPromotedContent_adServerEnvironments);
  LOBYTE(v124) = 33;
  sub_1C1AC1F08(&unk_1EBF07AA0, &qword_1C1B98CF0);
  sub_1C1AC34C8(&unk_1EDE6BBA0);
  sub_1C1B95788();
  v101 = *(v30 + OBJC_IVAR___APPCPromotedContent_diagnosticCode);
  LOBYTE(v126) = 35;
  sub_1C1B95778();
  v102 = OBJC_IVAR___APPCPromotedContent_installAttribution;
  swift_beginAccess();
  v103 = *(v30 + v102);
  if (!v103)
  {
    return (*(v151 + 8))(v113, v114);
  }

  v104 = objc_opt_self();
  v105 = v103;
  v106 = [v104 supportsSecureCoding];
  v107 = [objc_allocWithZone(MEMORY[0x1E696ACC8]) initRequiringSecureCoding_];
  [v105 encodeWithCoder_];
  [v107 finishEncoding];
  v108 = [v107 encodedData];
  v109 = sub_1C1B944D8();
  v111 = v110;

  v124 = v109;
  v125 = v111;
  v123 = 10;
  sub_1C1AE4B54();
  sub_1C1B95808();
  (*(v151 + 8))(v113, v114);

  return sub_1C1AE4A00(v109, v111);
}

uint64_t sub_1C1B742B0(uint64_t a1)
{
  v3 = OBJC_IVAR___APPCPromotedContent_metricsHelper;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_1C1B74314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OBJC_IVAR___APPCPromotedContent_metricsHelper;
  swift_beginAccess();
  v6 = *(a1 + v5);
  *(a1 + v5) = a3;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_1C1B743B0(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = OBJC_IVAR___APPCPromotedContent_onPromotedContentComplete;
  swift_beginAccess();
  v7 = *(v2 + v6);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v6) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_1C1ACE190(0, v7[2] + 1, 1, v7);
    *(v2 + v6) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = sub_1C1ACE190((v9 > 1), v10 + 1, 1, v7);
  }

  v7[2] = v10 + 1;
  v11 = &v7[2 * v10];
  v11[4] = sub_1C1B32A6C;
  v11[5] = v5;
  *(v2 + v6) = v7;
  return swift_endAccess();
}

uint64_t sub_1C1B74618(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR___APPCPromotedContent_onPromotedContentComplete;
  result = swift_beginAccess();
  v8 = *(*(v2 + v6) + 16);
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    while (1)
    {
      v11 = *(v3 + v6);
      if (v10 >= *(v11 + 16))
      {
        break;
      }

      ++v10;
      v12 = v11 + v9;
      v14 = *(v12 + 32);
      v13 = *(v12 + 40);
      v15[0] = a1;
      v15[1] = a2;

      v14(v15);

      v9 += 16;
      if (v8 == v10)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

char *sub_1C1B7474C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = v5;
  v254 = a5;
  v262 = a3;
  v10 = sub_1C1AC1F08(&qword_1EBF08560, &qword_1C1B9AF90);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v217 = &v215 - v12;
  v13 = sub_1C1AC1F08(&unk_1EBF098E0, &qword_1C1BA22A0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v240 = (&v215 - v15);
  v16 = sub_1C1B94588();
  v261 = *(v16 - 8);
  v17 = *(v261 + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v216 = &v215 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v260 = &v215 - v20;
  v21 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v246 = &v215 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v215 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v259 = &v215 - v28;
  v29 = sub_1C1AC1F08(&qword_1EBF07AC8, &qword_1C1B9CED0);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v258 = &v215 - v31;
  v32 = sub_1C1B945F8();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v251 = &v215 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v36 = a2;
  }

  else
  {
    sub_1C1B945E8();
    a1 = sub_1C1B945A8();
    v36 = v37;
    (*(v33 + 8))(v251, v32);
  }

  v266 = v36;
  v267 = v27;
  v268 = a1;
  v263 = v33;
  v252 = v32;
  v229 = a4;

  if (a4)
  {
    v265 = a4;
  }

  else
  {
    v38 = v251;
    sub_1C1B945E8();
    v262 = sub_1C1B945A8();
    v265 = v39;
    (*(v33 + 8))(v38, v32);
  }

  v40 = (v6 + OBJC_IVAR___APPCPromotedContent_impressionId);
  swift_beginAccess();
  v41 = v40[1];
  v255 = *v40;
  v256 = v41;
  v42 = OBJC_IVAR___APPCPromotedContent_metaData;
  swift_beginAccess();
  v228 = *(v6 + v42);
  v43 = OBJC_IVAR___APPCPromotedContent_disclosureURL;
  swift_beginAccess();
  sub_1C1AA7E30(v6 + v43, v258, &qword_1EBF07AC8, &qword_1C1B9CED0);
  v44 = v6 + OBJC_IVAR___APPCPromotedContent_disclosureRendererPayload;
  swift_beginAccess();
  v45 = *(v44 + 8);
  v238 = *v44;
  v226 = v45;
  v46 = OBJC_IVAR___APPCPromotedContent_minimumTimeBetweenPresentation;
  swift_beginAccess();
  v235 = *(v6 + v46);
  v47 = (v6 + OBJC_IVAR___APPCPromotedContent_brandName);
  swift_beginAccess();
  v48 = v47[1];
  v233 = *v47;
  v249 = v48;
  v49 = (v6 + OBJC_IVAR___APPCPromotedContent_campaignText);
  swift_beginAccess();
  v50 = v49[1];
  v234 = *v49;
  v253 = v50;
  v51 = OBJC_IVAR___APPCPromotedContent_startDate;
  swift_beginAccess();
  sub_1C1AA7E30(v6 + v51, v259, &qword_1EBF07F50, &qword_1C1B9A590);
  v52 = OBJC_IVAR___APPCPromotedContent_expirationDate;
  swift_beginAccess();
  v53 = v261;
  v54 = *(v261 + 16);
  v231 = v261 + 16;
  v232 = v54;
  v54(v260, (v6 + v52), v16);
  v55 = OBJC_IVAR___APPCPromotedContent_serverUnfilledReason;
  swift_beginAccess();
  v230 = *(v6 + v55);
  v56 = OBJC_IVAR___APPCPromotedContent_representations;
  swift_beginAccess();
  v248 = *(v6 + v56);
  v269 = v16;
  v57 = OBJC_IVAR___APPCPromotedContent_installAttribution;
  swift_beginAccess();
  v257 = *(v6 + v57);
  v58 = OBJC_IVAR___APPCPromotedContent_error;
  swift_beginAccess();
  v219 = *(v6 + v58);
  v59 = v219;
  v60 = OBJC_IVAR___APPCPromotedContent_impressionThreshold;
  swift_beginAccess();
  v61 = *(v6 + v60);
  v237 = *(v6 + OBJC_IVAR___APPCPromotedContent_serverResponseReceivedTimestamp);
  v236 = *(v6 + OBJC_IVAR___APPCPromotedContent_serverResponseReceivedTimestamp + 8);
  sub_1C1AA7E30(v6 + OBJC_IVAR___APPCPromotedContent_receivedReferenceTime, v267, &qword_1EBF07F50, &qword_1C1B9A590);
  v62 = *(v6 + OBJC_IVAR___APPCPromotedContent_isLocationAvailableForAd);
  v244 = *(v6 + OBJC_IVAR___APPCPromotedContent_isPAAvailableForAd);
  v245 = v62;
  v264 = *(v6 + OBJC_IVAR___APPCPromotedContent_adServerEnvironments);
  v241 = *(v6 + OBJC_IVAR___APPCPromotedContent_diagnosticCode);
  v243 = type metadata accessor for PromotedContent();
  v63 = objc_allocWithZone(v243);
  v64 = &v63[OBJC_IVAR___APPCPromotedContent_impressionId];
  *v64 = 0;
  v64[1] = 0;
  v239 = v64;
  swift_unknownObjectWeakInit();
  v221 = OBJC_IVAR___APPCPromotedContent_metaData;
  *&v63[OBJC_IVAR___APPCPromotedContent_metaData] = 0;
  v65 = OBJC_IVAR___APPCPromotedContent_disclosureURL;
  v220 = OBJC_IVAR___APPCPromotedContent_disclosureURL;
  v66 = sub_1C1B944A8();
  (*(*(v66 - 8) + 56))(&v63[v65], 1, 1, v66);
  v67 = &v63[OBJC_IVAR___APPCPromotedContent_disclosureRendererPayload];
  *v67 = 0;
  v67[1] = 0;
  v68 = &v63[OBJC_IVAR___APPCPromotedContent_brandName];
  v222 = &v63[OBJC_IVAR___APPCPromotedContent_brandName];
  *v68 = 0;
  v68[1] = 0;
  v69 = &v63[OBJC_IVAR___APPCPromotedContent_campaignText];
  v223 = &v63[OBJC_IVAR___APPCPromotedContent_campaignText];
  *v69 = 0;
  v69[1] = 0;
  v225 = OBJC_IVAR___APPCPromotedContent_installAttribution;
  *&v63[OBJC_IVAR___APPCPromotedContent_installAttribution] = 0;
  *&v63[OBJC_IVAR___APPCPromotedContent_bestRepresentation] = 0;
  v227 = OBJC_IVAR___APPCPromotedContent_error;
  *&v63[OBJC_IVAR___APPCPromotedContent_error] = 0;
  v224 = OBJC_IVAR___APPCPromotedContent_startDate;
  v70 = *(v53 + 56);
  v70(&v63[OBJC_IVAR___APPCPromotedContent_startDate], 1, 1, v269);
  *&v63[OBJC_IVAR___APPCPromotedContent_mediaMetricHelper] = 0;
  v63[OBJC_IVAR___APPCPromotedContent_attachedToView] = 0;
  v63[OBJC_IVAR___APPCPromotedContent_vended] = 0;
  v63[OBJC_IVAR___APPCPromotedContent_discarded] = 0;
  v63[OBJC_IVAR___APPCPromotedContent_consumed] = 0;
  v250 = OBJC_IVAR___APPCPromotedContent_impressionThreshold;
  *&v63[OBJC_IVAR___APPCPromotedContent_impressionThreshold] = 0x3FF0000000000000;
  v70(&v63[OBJC_IVAR___APPCPromotedContent_videoRequestStartDate], 1, 1, v269);
  v63[OBJC_IVAR___APPCPromotedContent_discardedDueToPolicy] = 0;
  v71 = OBJC_IVAR___APPCPromotedContent_metricEventsTracking;
  v72 = type metadata accessor for MetricEventsTracker();
  v73 = *(v72 + 48);
  v74 = *(v72 + 52);
  v215 = v72;
  swift_allocObject();
  v75 = sub_1C1AB0510();
  v242 = v71;
  *&v63[v71] = v75;
  *&v63[OBJC_IVAR___APPCPromotedContent_unfilledReasonDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v76 = &v63[OBJC_IVAR___APPCPromotedContent_promotedContentUsedRegisterID];
  *v76 = 0;
  v76[1] = 0;
  v77 = &v63[OBJC_IVAR___APPCPromotedContent_overriddenAdType];
  *v77 = 0;
  v77[8] = 1;
  v78 = OBJC_IVAR___APPCPromotedContent__contextIdentifier;
  v218 = *(v263 + 56);
  v79 = v252;
  v218(&v63[OBJC_IVAR___APPCPromotedContent__contextIdentifier], 1, 1, v252);
  v80 = &v63[OBJC_IVAR___APPCPromotedContent_discardReason];
  *v80 = 0;
  v80[8] = 1;
  *&v63[OBJC_IVAR___APPCPromotedContent_onPromotedContentComplete] = MEMORY[0x1E69E7CC0];
  *&v63[OBJC_IVAR___APPCPromotedContent_appImpressionTask] = 0;
  v81 = &v63[OBJC_IVAR___APPCPromotedContent_appImpression];
  *v81 = 0u;
  *(v81 + 1) = 0u;
  *(v81 + 4) = 0;
  v63[OBJC_IVAR___APPCPromotedContent_shouldSetupAttributionEventView] = 0;
  v63[OBJC_IVAR___APPCPromotedContent_placeholder] = 0;
  v82 = &v63[OBJC_IVAR___APPCPromotedContent_identifier];
  v83 = v266;
  *v82 = v268;
  v82[1] = v83;
  swift_beginAccess();
  v84 = v254;
  swift_unknownObjectWeakAssign();
  v247 = v59;

  v85 = v228;

  v86 = v226;

  v229 = v257;

  v87 = [v84 identifier];
  v88 = v240;
  sub_1C1B945D8();

  v218(v88, 0, 1, v79);
  swift_beginAccess();
  sub_1C1B19384(v88, &v63[v78], &unk_1EBF098E0, &qword_1C1BA22A0);
  swift_endAccess();
  v89 = v221;
  swift_beginAccess();
  v90 = *&v63[v89];
  *&v63[v89] = v85;

  v91 = v220;
  swift_beginAccess();
  sub_1C1B7953C(v258, &v63[v91], &qword_1EBF07AC8, &qword_1C1B9CED0);
  swift_endAccess();
  swift_beginAccess();
  v92 = v67[1];
  *v67 = v238;
  v67[1] = v86;

  *&v63[OBJC_IVAR___APPCPromotedContent_minimumTimeBetweenPresentation] = v235;
  v93 = v222;
  swift_beginAccess();
  v94 = v93[1];
  v95 = v249;
  *v93 = v233;
  v93[1] = v95;

  v96 = v223;
  swift_beginAccess();
  v97 = v96[1];
  v98 = v253;
  *v96 = v234;
  v96[1] = v98;

  v99 = v224;
  swift_beginAccess();
  sub_1C1B7953C(v259, &v63[v99], &qword_1EBF07F50, &qword_1C1B9A590);
  swift_endAccess();
  v232(&v63[OBJC_IVAR___APPCPromotedContent_expirationDate], v260, v269);
  *&v63[OBJC_IVAR___APPCPromotedContent_serverUnfilledReason] = v230;
  *&v63[OBJC_IVAR___APPCPromotedContent_representations] = v248;
  v100 = v225;
  swift_beginAccess();
  v101 = *&v63[v100];
  *&v63[v100] = v257;
  v238 = v229;

  if (v219)
  {
    v102 = v247;
    v103 = sub_1C1B94448();
  }

  else
  {
    v103 = 0;
  }

  v104 = v227;
  swift_beginAccess();
  v105 = *&v63[v104];
  *&v63[v104] = v103;

  v106 = &v63[OBJC_IVAR___APPCPromotedContent_serverResponseReceivedTimestamp];
  *v106 = v237;
  v106[8] = v236;
  v107 = OBJC_IVAR___APPCContext_newsContext;
  v108 = v254;
  swift_beginAccess();
  v109 = *&v108[v107];
  v110 = v267;
  v111 = v264;
  v112 = v252;
  v113 = v256;
  if (v109 && (v114 = (v109 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_placement), swift_beginAccess(), (v115 = v114[1]) != 0))
  {
    v116 = sub_1C1AB08D0(*v114, v115);
    v117 = v255;
  }

  else
  {
    v118 = [v108 current];
    v117 = v255;
    if (v118)
    {
      v116 = [v118 placement];
      swift_unknownObjectRelease();
    }

    else
    {
      v116 = 0;
    }
  }

  *&v63[OBJC_IVAR___APPCPromotedContent_placement] = v116;
  v119 = v250;
  swift_beginAccess();
  *&v63[v119] = v61;
  v120 = v239;
  swift_beginAccess();
  v121 = v120[1];
  *v120 = v117;
  v120[1] = v113;

  v122 = &v63[OBJC_IVAR___APPCPromotedContent_journeyIdentifier];
  v123 = v265;
  *v122 = v262;
  v122[1] = v123;
  v265 = v123;
  sub_1C1AA7E30(v110, &v63[OBJC_IVAR___APPCPromotedContent_receivedReferenceTime], &qword_1EBF07F50, &qword_1C1B9A590);
  *&v63[OBJC_IVAR___APPCPromotedContent_adServerEnvironments] = v111;

  v124 = [v108 identifier];
  v125 = v251;
  sub_1C1B945D8();

  v126 = sub_1C1B945A8();
  v128 = v127;
  v129 = *(v263 + 8);
  v263 += 8;
  v239 = v129;
  (v129)(v125, v112);
  v130 = objc_opt_self();

  v253 = v130;
  [v130 daemonDeliveryClass];
  swift_getObjCClassMetadata();
  v131 = [swift_getObjCClassFromMetadata() daemonDelivery];
  v240 = type metadata accessor for PrimitiveCreator();
  v132 = objc_allocWithZone(v240);
  v133 = &v132[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_promotedContentIdentifier];
  v134 = v111;
  v136 = v265;
  v135 = v266;
  *v133 = v268;
  v133[1] = v135;
  v137 = &v132[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_contextIdentifier];
  v249 = v126;
  *v137 = v126;
  v137[1] = v128;
  v138 = &v132[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_journeyIdentifier];
  *v138 = v262;
  v138[1] = v136;
  v139 = &v132[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_impressionId];
  *v139 = v255;
  v139[1] = v113;
  v132[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_placeholder] = 0;
  *&v132[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_receiver] = v131;
  *&v132[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_branch] = 0;
  *&v132[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_environment] = v134;
  v140 = qword_1EDE6C538;

  v254 = v128;

  swift_unknownObjectRetain();
  if (v140 != -1)
  {
    swift_once();
  }

  sub_1C1AAD2FC(qword_1EDE6C540, &v132[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_eventPipeline]);
  v278.receiver = v132;
  v141 = v240;
  v278.super_class = v240;
  v142 = objc_msgSendSuper2(&v278, sel_init);
  swift_unknownObjectRelease();
  v248 = OBJC_IVAR___APPCPromotedContent_primitiveCreator;
  *&v63[OBJC_IVAR___APPCPromotedContent_primitiveCreator] = v142;
  v270 = 6911329;
  v271 = 0xE300000000000000;
  sub_1C1B945E8();
  v143 = sub_1C1B945A8();
  v145 = v144;
  (v239)(v125, v252);
  MEMORY[0x1C6906DF0](v143, v145);

  v146 = v270;
  v147 = v271;
  v148 = v264;

  [v253 daemonDeliveryClass];
  swift_getObjCClassMetadata();
  v149 = [swift_getObjCClassFromMetadata() daemonDelivery];
  v150 = objc_allocWithZone(v141);
  v151 = &v150[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_promotedContentIdentifier];
  *v151 = v268;
  v151[1] = v135;
  v152 = &v150[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_contextIdentifier];
  v153 = v254;
  *v152 = v249;
  v152[1] = v153;
  v154 = &v150[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_journeyIdentifier];
  *v154 = v146;
  v154[1] = v147;
  v155 = &v150[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_impressionId];
  v156 = v256;
  *v155 = v255;
  v155[1] = v156;
  v150[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_placeholder] = 0;
  *&v150[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_receiver] = v149;
  *&v150[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_branch] = 0;
  *&v150[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_environment] = v148;
  sub_1C1AAD2FC(qword_1EDE6C540, &v150[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_eventPipeline]);
  v277.receiver = v150;
  v277.super_class = v141;

  v157 = objc_msgSendSuper2(&v277, sel_init);
  v256 = OBJC_IVAR___APPCPromotedContent_diagnosticPrimitiveCreator;
  *&v63[OBJC_IVAR___APPCPromotedContent_diagnosticPrimitiveCreator] = v157;
  *&v63[OBJC_IVAR___APPCPromotedContent_diagnosticCode] = v241;
  [objc_allocWithZone(MEMORY[0x1E69861C0]) init];
  v158 = sub_1C1B94908();
  v159 = *(v158 + 48);
  v160 = *(v158 + 52);
  swift_allocObject();
  v161 = sub_1C1B948E8();
  v162 = v246;
  sub_1C1AA7E30(v267, v246, &qword_1EBF07F50, &qword_1C1B9A590);
  v163 = v261;
  v164 = v269;
  v165 = (*(v261 + 48))(v162, 1, v269);
  v166 = v253;
  if (v165 == 1)
  {
    sub_1C1AA7C8C(v162, &qword_1EBF07F50, &qword_1C1B9A590);
  }

  else
  {
    v167 = v216;
    (*(v163 + 32))(v216, v162, v164);
    sub_1C1B948D8();
    (*(v163 + 8))(v167, v164);
  }

  type metadata accessor for MetricsUnloadTracker();
  v168 = swift_allocObject();
  *(v168 + 16) = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  *(v168 + 24) = 0;
  v263 = v168;
  *(v168 + 32) = 1;
  v255 = *&v63[v248];
  swift_unknownObjectRetain();
  [v166 daemonDeliveryClass];
  swift_getObjCClassMetadata();
  v169 = [swift_getObjCClassFromMetadata() daemonDelivery];
  v170 = 0;
  v171 = 0;
  v172 = *&v63[OBJC_IVAR___APPCPromotedContent_placement] - 7005;
  if (v172 <= 3)
  {
    v170 = qword_1C1BA4170[v172];
    v171 = qword_1C1BA4190[v172];
  }

  type metadata accessor for JourneyMetricsHelper();
  swift_getObjectType();
  v173 = v266;

  v174 = v254;

  v176 = v173;
  v177 = v249;
  v178 = sub_1C1AB0E7C(v268, v176, v249, v174, v262, v265, v161, v175, v255, v169, v170, v171, v264, 0, 0, 0, 0, 1);
  *&v63[OBJC_IVAR___APPCPromotedContent_metricsHelper] = v178;
  [v178 setImpressionThresholdDuration_];
  v179 = *&v63[v256];
  swift_unknownObjectRetain();
  [v253 daemonDeliveryClass];
  swift_getObjCClassMetadata();
  v180 = [swift_getObjCClassFromMetadata() daemonDelivery];
  v181 = v242;
  swift_beginAccess();
  if (*&v63[v181])
  {
    v182 = *&v63[v181];
  }

  else
  {
    v183 = *(v215 + 48);
    v184 = *(v215 + 52);
    swift_allocObject();
    v182 = sub_1C1AB0510();
  }

  type metadata accessor for DiagnosticMetricsHelper();
  swift_getObjectType();
  swift_unknownObjectRetain();
  *&v63[OBJC_IVAR___APPCPromotedContent_diagnosticMetricHelper] = sub_1C1AB1708(v177, v254, v268, v266, v179, v180, v182);
  v185 = v244;
  v63[OBJC_IVAR___APPCPromotedContent_isLocationAvailableForAd] = v245;
  v63[OBJC_IVAR___APPCPromotedContent_isPAAvailableForAd] = v185;
  v276.receiver = v63;
  v276.super_class = v243;
  v186 = objc_msgSendSuper2(&v276, sel_init);
  v187 = sub_1C1AB17D0(v161, v263);
  v188 = OBJC_IVAR___APPCPromotedContent_mediaMetricHelper;
  swift_beginAccess();
  v189 = *&v186[v188];
  *&v186[v188] = v187;
  swift_unknownObjectRelease();
  v190 = *&v186[OBJC_IVAR___APPCPromotedContent_diagnosticMetricHelper];
  swift_unknownObjectRetain();
  [v190 setNetworkType_];
  swift_unknownObjectRelease();
  v191 = OBJC_IVAR___APPCPromotedContent_metricsHelper;
  swift_beginAccess();
  [*&v186[v191] setPromotedContent_];
  v192 = *&v186[v191];
  v193 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectRetain();

  v274 = sub_1C1B7B4D4;
  v275 = v193;
  v270 = MEMORY[0x1E69E9820];
  v271 = 1107296256;
  v272 = sub_1C1B196F0;
  v273 = &unk_1F4153D68;
  v194 = _Block_copy(&v270);

  v195 = [v192 registerForPCUsedEventWithAction_];
  swift_unknownObjectRelease();
  _Block_release(v194);
  v196 = sub_1C1B94D88();
  v198 = v197;

  v199 = &v186[OBJC_IVAR___APPCPromotedContent_promotedContentUsedRegisterID];
  v200 = *&v186[OBJC_IVAR___APPCPromotedContent_promotedContentUsedRegisterID + 8];
  *v199 = v196;
  v199[1] = v198;

  if (v257)
  {
    v201 = v238;
    v202 = [v238 attributionSignature];
    v203 = sub_1C1B94D88();
    v205 = v204;

    v206 = OBJC_IVAR___APPCPromotedContent_shouldSetupAttributionEventView;
    swift_beginAccess();
    v186[v206] = 1;
    v207 = sub_1C1B95028();
    v208 = v217;
    (*(*(v207 - 8) + 56))(v217, 1, 1, v207);
    v209 = swift_allocObject();
    v209[2] = 0;
    v209[3] = 0;
    v209[4] = v186;
    v209[5] = v203;
    v209[6] = v205;
    v210 = v186;
    v211 = sub_1C1B025C8(0, 0, v208, &unk_1C1BA4100, v209);

    sub_1C1AA7C8C(v267, &qword_1EBF07F50, &qword_1C1B9A590);
    (*(v261 + 8))(v260, v269);
    sub_1C1AA7C8C(v259, &qword_1EBF07F50, &qword_1C1B9A590);
    sub_1C1AA7C8C(v258, &qword_1EBF07AC8, &qword_1C1B9CED0);
    v212 = OBJC_IVAR___APPCPromotedContent_appImpressionTask;
    swift_beginAccess();
    v213 = *&v210[v212];
    *&v210[v212] = v211;
  }

  else
  {

    sub_1C1AA7C8C(v267, &qword_1EBF07F50, &qword_1C1B9A590);
    (*(v261 + 8))(v260, v269);
    sub_1C1AA7C8C(v259, &qword_1EBF07F50, &qword_1C1B9A590);
    sub_1C1AA7C8C(v258, &qword_1EBF07AC8, &qword_1C1B9CED0);
  }

  return v186;
}

id PromotedContent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1C1B760B8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for PromotedContent());
  result = PromotedContent.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_1C1B76134(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x1C69073C0](a1, a2, v7);
      sub_1C1AA576C(0, &qword_1EDE6CA00, 0x1E698A050);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_1C1AA576C(0, &qword_1EDE6CA00, 0x1E698A050);
    if (sub_1C1B95388() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_1C1B95398();
    swift_dynamicCast();
    v4 = v16;
    v8 = *(a4 + 40);
    v9 = sub_1C1B95268();
    v10 = -1 << *(a4 + 32);
    v6 = v9 & ~v10;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v11 = ~v10;
      do
      {
        v12 = *(*(a4 + 48) + 8 * v6);
        v13 = sub_1C1B95278();

        if (v13)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v11;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v14 = *(*(a4 + 48) + 8 * v6);

  v15 = v14;
}

char *sub_1C1B76358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, double a7, double a8)
{
  v212 = a6;
  v221 = a5;
  v222 = a1;
  v203 = a4;
  v217 = a2;
  v11 = sub_1C1AC1F08(&unk_1EBF098E0, &qword_1C1BA22A0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v204 = &v184 - v13;
  v14 = sub_1C1B94588();
  v219 = *(v14 - 8);
  v220 = v14;
  v15 = *(v219 + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v186 = &v184 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v216 = &v184 - v18;
  v19 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v200 = &v184 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v218 = &v184 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v215 = &v184 - v25;
  v26 = sub_1C1AC1F08(&qword_1EBF07AC8, &qword_1C1B9CED0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = &v184 - v28;
  v30 = sub_1C1B945F8();
  v205 = *(v30 - 8);
  v31 = v205;
  v32 = *(v205 + 64);
  v33 = MEMORY[0x1EEE9AC00](v30);
  v35 = &v184 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v37 = &v184 - v36;
  sub_1C1B945E8();
  v38 = type metadata accessor for ContentRepresentation();
  v39 = objc_allocWithZone(v38);
  v40 = sub_1C1B945A8();
  v41 = &v39[OBJC_IVAR___APPCContentRepresentation_identifier];
  *v41 = v40;
  v41[1] = v42;
  (*(v31 + 16))(&v39[OBJC_IVAR___APPCContentRepresentation_id], v37, v30);
  v202 = a3;
  *&v39[OBJC_IVAR___APPCContentRepresentation_adType] = a3;
  *&v39[OBJC_IVAR___APPCContentRepresentation_desiredPosition] = 0;
  *&v39[OBJC_IVAR___APPCContentRepresentation_privacyMarkerPosition] = 0;
  *&v39[OBJC_IVAR___APPCContentRepresentation_privacyMarkerType] = 0;
  v43 = &v39[OBJC_IVAR___APPCContentRepresentation_adSize];
  *v43 = a7;
  v43[1] = a8;
  *&v39[OBJC_IVAR___APPCContentRepresentation_tapAction] = 0;
  *&v39[OBJC_IVAR___APPCContentRepresentation_adPolicyData] = 0;
  v227.receiver = v39;
  v227.super_class = v38;
  v44 = objc_msgSendSuper2(&v227, sel_init);
  v45 = *(v31 + 8);
  v213 = v37;
  v45(v37, v30);
  sub_1C1B945E8();
  v214 = sub_1C1B945A8();
  v207 = v46;
  v210 = v31 + 8;
  v211 = v45;
  v45(v35, v30);
  v47 = sub_1C1B944A8();
  v48 = *(*(v47 - 8) + 56);
  v209 = v29;
  (v48)(v29, 1, 1, v47);
  v49 = v220;
  v50 = *(v219 + 56);
  (v50)(v215, 1, 1, v220);
  swift_unknownObjectRetain();
  sub_1C1B94518();
  sub_1C1AC1F08(&qword_1EBF08D30, qword_1C1B9E9E0);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_1C1B9FE60;
  v197 = v51;
  v208 = v44;
  *(v51 + 32) = v44;
  (v50)(v218, 1, 1, v49);
  v201 = type metadata accessor for PromotedContent();
  v52 = objc_allocWithZone(v201);
  v53 = &v52[OBJC_IVAR___APPCPromotedContent_impressionId];
  *v53 = 0;
  v53[1] = 0;
  v198 = v53;
  v189 = &v52[OBJC_IVAR___APPCPromotedContent_context];
  swift_unknownObjectWeakInit();
  v190 = &v52[OBJC_IVAR___APPCPromotedContent_metaData];
  *&v52[OBJC_IVAR___APPCPromotedContent_metaData] = 0;
  v191 = &v52[OBJC_IVAR___APPCPromotedContent_disclosureURL];
  v48();
  v54 = v30;
  v55 = &v52[OBJC_IVAR___APPCPromotedContent_disclosureRendererPayload];
  *v55 = 0;
  v55[1] = 0;
  v56 = &v52[OBJC_IVAR___APPCPromotedContent_brandName];
  *v56 = 0;
  v56[1] = 0;
  v192 = v56;
  v57 = &v52[OBJC_IVAR___APPCPromotedContent_campaignText];
  *v57 = 0;
  v57[1] = 0;
  v194 = v57;
  v195 = &v52[OBJC_IVAR___APPCPromotedContent_installAttribution];
  *&v52[OBJC_IVAR___APPCPromotedContent_installAttribution] = 0;
  *&v52[OBJC_IVAR___APPCPromotedContent_bestRepresentation] = 0;
  v196 = &v52[OBJC_IVAR___APPCPromotedContent_error];
  *&v52[OBJC_IVAR___APPCPromotedContent_error] = 0;
  v193 = &v52[OBJC_IVAR___APPCPromotedContent_startDate];
  v50();
  *&v52[OBJC_IVAR___APPCPromotedContent_mediaMetricHelper] = 0;
  v52[OBJC_IVAR___APPCPromotedContent_attachedToView] = 0;
  v52[OBJC_IVAR___APPCPromotedContent_vended] = 0;
  v52[OBJC_IVAR___APPCPromotedContent_discarded] = 0;
  v52[OBJC_IVAR___APPCPromotedContent_consumed] = 0;
  v206 = OBJC_IVAR___APPCPromotedContent_impressionThreshold;
  *&v52[OBJC_IVAR___APPCPromotedContent_impressionThreshold] = 0x3FF0000000000000;
  v58 = v217;
  (v50)(&v52[OBJC_IVAR___APPCPromotedContent_videoRequestStartDate], 1, 1, v49);
  v52[OBJC_IVAR___APPCPromotedContent_discardedDueToPolicy] = 0;
  v59 = OBJC_IVAR___APPCPromotedContent_metricEventsTracking;
  v60 = type metadata accessor for MetricEventsTracker();
  v61 = *(v60 + 48);
  v62 = *(v60 + 52);
  v185 = v60;
  swift_allocObject();
  v63 = sub_1C1AB0510();
  v199 = v59;
  *&v52[v59] = v63;
  *&v52[OBJC_IVAR___APPCPromotedContent_unfilledReasonDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v64 = &v52[OBJC_IVAR___APPCPromotedContent_promotedContentUsedRegisterID];
  *v64 = 0;
  v64[1] = 0;
  v65 = &v52[OBJC_IVAR___APPCPromotedContent_overriddenAdType];
  *v65 = 0;
  v65[8] = 1;
  v66 = &v52[OBJC_IVAR___APPCPromotedContent__contextIdentifier];
  v188 = *(v205 + 56);
  v188(&v52[OBJC_IVAR___APPCPromotedContent__contextIdentifier], 1, 1, v54);
  v67 = &v52[OBJC_IVAR___APPCPromotedContent_discardReason];
  *v67 = 0;
  v67[8] = 1;
  *&v52[OBJC_IVAR___APPCPromotedContent_onPromotedContentComplete] = MEMORY[0x1E69E7CC0];
  *&v52[OBJC_IVAR___APPCPromotedContent_appImpressionTask] = 0;
  v68 = &v52[OBJC_IVAR___APPCPromotedContent_appImpression];
  *v68 = 0u;
  *(v68 + 1) = 0u;
  *(v68 + 4) = 0;
  v52[OBJC_IVAR___APPCPromotedContent_shouldSetupAttributionEventView] = 0;
  if (v58)
  {
    v69 = v208;
    v70 = v58;
    v71 = v222;
  }

  else
  {
    strcpy(v223, "placeholder: ");
    HIWORD(v223[1]) = -4864;
    v72 = v208;
    v73 = v213;
    sub_1C1B945E8();
    v74 = sub_1C1B945A8();
    v76 = v75;
    v211(v73, v54);
    v77 = v74;
    v58 = 0;
    MEMORY[0x1C6906DF0](v77, v76);

    v71 = v223[0];
    v70 = v223[1];
  }

  LODWORD(v205) = v58 == 0;
  v52[OBJC_IVAR___APPCPromotedContent_placeholder] = v205;
  v78 = &v52[OBJC_IVAR___APPCPromotedContent_identifier];
  v222 = v71;
  *v78 = v71;
  v78[1] = v70;
  swift_beginAccess();
  v79 = v221;
  swift_unknownObjectWeakAssign();
  v217 = v70;

  v80 = [v79 identifier];
  v81 = v204;
  sub_1C1B945D8();

  v82 = v54;
  v188(v81, 0, 1, v54);
  swift_beginAccess();
  sub_1C1B19384(v81, v66, &unk_1EBF098E0, &qword_1C1BA22A0);
  swift_endAccess();
  v83 = v190;
  swift_beginAccess();
  v84 = *v83;
  *v83 = 0;

  v85 = v191;
  swift_beginAccess();
  sub_1C1B7953C(v209, v85, &qword_1EBF07AC8, &qword_1C1B9CED0);
  swift_endAccess();
  swift_beginAccess();
  v86 = v55[1];
  *v55 = 0;
  v55[1] = 0;

  *&v52[OBJC_IVAR___APPCPromotedContent_minimumTimeBetweenPresentation] = 0;
  v87 = v192;
  swift_beginAccess();
  v88 = v87[1];
  *v87 = 0;
  v87[1] = 0;

  v89 = v194;
  swift_beginAccess();
  v90 = v89[1];
  *v89 = 0;
  v89[1] = 0;

  v91 = v193;
  swift_beginAccess();
  sub_1C1B7953C(v215, v91, &qword_1EBF07F50, &qword_1C1B9A590);
  swift_endAccess();
  (*(v219 + 16))(&v52[OBJC_IVAR___APPCPromotedContent_expirationDate], v216, v220);
  *&v52[OBJC_IVAR___APPCPromotedContent_serverUnfilledReason] = v212;
  *&v52[OBJC_IVAR___APPCPromotedContent_representations] = v197;
  v92 = v195;
  swift_beginAccess();
  v93 = *v92;
  *v92 = 0;

  v94 = v196;
  swift_beginAccess();
  v95 = *v94;
  *v94 = 0;

  v96 = &v52[OBJC_IVAR___APPCPromotedContent_serverResponseReceivedTimestamp];
  *v96 = 0;
  v96[8] = 1;
  type metadata accessor for Context();
  v97 = swift_dynamicCastClass();
  if (v97 && (v98 = OBJC_IVAR___APPCContext_newsContext, v99 = v97, swift_beginAccess(), (v100 = *(v99 + v98)) != 0) && (v101 = (v100 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_placement), swift_beginAccess(), (v102 = v101[1]) != 0))
  {
    v103 = sub_1C1AB08D0(*v101, v102);
    v104 = v213;
    v105 = v211;
  }

  else
  {
    v106 = [v221 current];
    v104 = v213;
    v105 = v211;
    if (v106)
    {
      v103 = [v106 placement];
      swift_unknownObjectRelease();
    }

    else
    {
      v103 = 0;
    }
  }

  v187 = v82;
  *&v52[OBJC_IVAR___APPCPromotedContent_placement] = v103;
  v107 = v206;
  swift_beginAccess();
  *&v52[v107] = 0x3FF0000000000000;
  v108 = v198;
  swift_beginAccess();
  v109 = v108[1];
  *v108 = 0;
  v108[1] = 0;

  v110 = &v52[OBJC_IVAR___APPCPromotedContent_journeyIdentifier];
  v111 = v207;
  *v110 = v214;
  v110[1] = v111;
  sub_1C1AA7E30(v218, &v52[OBJC_IVAR___APPCPromotedContent_receivedReferenceTime], &qword_1EBF07F50, &qword_1C1B9A590);
  *&v52[OBJC_IVAR___APPCPromotedContent_adServerEnvironments] = 0;

  v112 = [v221 identifier];
  sub_1C1B945D8();

  v113 = sub_1C1B945A8();
  v115 = v114;
  v105(v104, v82);
  v212 = objc_opt_self();
  [v212 daemonDeliveryClass];
  swift_getObjCClassMetadata();
  v116 = [swift_getObjCClassFromMetadata() daemonDelivery];
  v117 = type metadata accessor for PrimitiveCreator();
  v118 = objc_allocWithZone(v117);
  v119 = &v118[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_promotedContentIdentifier];
  v120 = v217;
  *v119 = v222;
  v119[1] = v120;
  v121 = &v118[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_contextIdentifier];
  v204 = v113;
  *v121 = v113;
  v121[1] = v115;
  v122 = &v118[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_journeyIdentifier];
  *v122 = v214;
  v122[1] = v111;
  v123 = &v118[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_impressionId];
  *v123 = 0;
  v123[1] = 0;
  v118[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_placeholder] = v205;
  *&v118[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_receiver] = v116;
  *&v118[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_branch] = 0;
  *&v118[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_environment] = 0;
  v124 = qword_1EDE6C538;

  v213 = v115;

  swift_unknownObjectRetain();
  if (v124 != -1)
  {
    swift_once();
  }

  sub_1C1AAD2FC(qword_1EDE6C540, &v118[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_eventPipeline]);
  v226.receiver = v118;
  v226.super_class = v117;
  v125 = objc_msgSendSuper2(&v226, sel_init);
  swift_unknownObjectRelease();
  v198 = OBJC_IVAR___APPCPromotedContent_primitiveCreator;
  *&v52[OBJC_IVAR___APPCPromotedContent_primitiveCreator] = v125;
  v223[0] = 6911329;
  v223[1] = 0xE300000000000000;
  sub_1C1B945E8();
  v126 = sub_1C1B945A8();
  v128 = v127;
  v211(v104, v187);
  MEMORY[0x1C6906DF0](v126, v128);

  v129 = v223[0];
  v130 = v223[1];
  [v212 daemonDeliveryClass];
  swift_getObjCClassMetadata();
  v131 = [swift_getObjCClassFromMetadata() daemonDelivery];
  v132 = objc_allocWithZone(v117);
  v133 = &v132[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_promotedContentIdentifier];
  v134 = v217;
  *v133 = v222;
  v133[1] = v134;
  v135 = &v132[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_contextIdentifier];
  v136 = v213;
  *v135 = v204;
  v135[1] = v136;
  v137 = &v132[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_journeyIdentifier];
  *v137 = v129;
  v137[1] = v130;
  v138 = &v132[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_impressionId];
  *v138 = 0;
  v138[1] = 0;
  v132[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_placeholder] = v205;
  *&v132[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_receiver] = v131;
  *&v132[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_branch] = 0;
  *&v132[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_environment] = 0;
  sub_1C1AAD2FC(qword_1EDE6C540, &v132[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_eventPipeline]);
  v225.receiver = v132;
  v225.super_class = v117;

  v139 = objc_msgSendSuper2(&v225, sel_init);
  v205 = OBJC_IVAR___APPCPromotedContent_diagnosticPrimitiveCreator;
  *&v52[OBJC_IVAR___APPCPromotedContent_diagnosticPrimitiveCreator] = v139;
  *&v52[OBJC_IVAR___APPCPromotedContent_diagnosticCode] = -1;
  [objc_allocWithZone(MEMORY[0x1E69861C0]) init];
  v140 = sub_1C1B94908();
  v141 = *(v140 + 48);
  v142 = *(v140 + 52);
  swift_allocObject();
  v143 = sub_1C1B948E8();
  v144 = v200;
  sub_1C1AA7E30(v218, v200, &qword_1EBF07F50, &qword_1C1B9A590);
  v146 = v219;
  v145 = v220;
  v147 = (*(v219 + 48))(v144, 1, v220);
  v210 = v143;
  if (v147 == 1)
  {
    sub_1C1AA7C8C(v144, &qword_1EBF07F50, &qword_1C1B9A590);
  }

  else
  {
    v148 = v186;
    (*(v146 + 32))(v186, v144, v145);
    sub_1C1B948D8();
    (*(v146 + 8))(v148, v145);
  }

  type metadata accessor for MetricsUnloadTracker();
  v149 = swift_allocObject();
  v149[2] = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  *(v149 + 24) = 0;
  v211 = v149;
  v149[4] = 1;
  v200 = *(v198 + v52);
  swift_unknownObjectRetain();
  [v212 daemonDeliveryClass];
  swift_getObjCClassMetadata();
  v150 = [swift_getObjCClassFromMetadata() daemonDelivery];
  v151 = 0;
  v152 = 0;
  v153 = *&v52[OBJC_IVAR___APPCPromotedContent_placement] - 7005;
  if (v153 <= 3)
  {
    v151 = qword_1C1BA4170[v153];
    v152 = qword_1C1BA4190[v153];
  }

  v198 = v151;
  type metadata accessor for JourneyMetricsHelper();
  swift_getObjectType();
  v154 = v217;

  v155 = v213;

  v156 = v210;

  v157 = v211;

  v158 = v154;
  v159 = v204;
  v160 = sub_1C1AB0E7C(v222, v158, v204, v155, v214, v207, v156, v157, v200, v150, v198, v152, 0, 0, 0, 0, 0, 1);
  *&v52[OBJC_IVAR___APPCPromotedContent_metricsHelper] = v160;
  [v160 setImpressionThresholdDuration_];
  v161 = *&v52[v205];
  swift_unknownObjectRetain();
  [v212 daemonDeliveryClass];
  swift_getObjCClassMetadata();
  v162 = [swift_getObjCClassFromMetadata() daemonDelivery];
  v163 = v199;
  swift_beginAccess();
  if (*&v52[v163])
  {
    v164 = *&v52[v163];
  }

  else
  {
    v165 = *(v185 + 48);
    v166 = *(v185 + 52);
    swift_allocObject();
    v164 = sub_1C1AB0510();
  }

  type metadata accessor for DiagnosticMetricsHelper();
  swift_getObjectType();
  swift_unknownObjectRetain();
  *&v52[OBJC_IVAR___APPCPromotedContent_diagnosticMetricHelper] = sub_1C1AB1708(v159, v213, v222, v217, v161, v162, v164);
  v52[OBJC_IVAR___APPCPromotedContent_isLocationAvailableForAd] = 0;
  v52[OBJC_IVAR___APPCPromotedContent_isPAAvailableForAd] = 0;
  v224.receiver = v52;
  v224.super_class = v201;
  v167 = objc_msgSendSuper2(&v224, sel_init);
  v168 = sub_1C1AB17D0(v156, v211);
  v169 = OBJC_IVAR___APPCPromotedContent_mediaMetricHelper;
  swift_beginAccess();
  v170 = *&v167[v169];
  *&v167[v169] = v168;
  swift_unknownObjectRelease();
  v171 = *&v167[OBJC_IVAR___APPCPromotedContent_diagnosticMetricHelper];
  swift_unknownObjectRetain();
  [v171 setNetworkType_];
  swift_unknownObjectRelease();
  v172 = OBJC_IVAR___APPCPromotedContent_metricsHelper;
  swift_beginAccess();
  [*&v167[v172] setPromotedContent_];
  v173 = *&v167[v172];
  v174 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectRetain();

  v223[4] = sub_1C1B7B4D4;
  v223[5] = v174;
  v223[0] = MEMORY[0x1E69E9820];
  v223[1] = 1107296256;
  v223[2] = sub_1C1B196F0;
  v223[3] = &unk_1F4153E08;
  v175 = _Block_copy(v223);

  v176 = [v173 registerForPCUsedEventWithAction_];
  swift_unknownObjectRelease();
  _Block_release(v175);
  v177 = sub_1C1B94D88();
  v179 = v178;

  v180 = &v167[OBJC_IVAR___APPCPromotedContent_promotedContentUsedRegisterID];
  v181 = *&v167[OBJC_IVAR___APPCPromotedContent_promotedContentUsedRegisterID + 8];
  *v180 = v177;
  v180[1] = v179;
  swift_unknownObjectRelease();

  sub_1C1AA7C8C(v218, &qword_1EBF07F50, &qword_1C1B9A590);
  (*(v219 + 8))(v216, v220);
  sub_1C1AA7C8C(v215, &qword_1EBF07F50, &qword_1C1B9A590);
  sub_1C1AA7C8C(v209, &qword_1EBF07AC8, &qword_1C1B9CED0);
  v182 = *&v167[v172];
  [swift_unknownObjectRetain() createdWithAdType:v202 container:v203];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v167;
}

char *_s15PromotedContentAAC11contentData7contextABSo09APContentD0C_AA17PromotableContext_pSgtcfC_0(void *a1, void *a2)
{
  v4 = sub_1C1AC1F08(&qword_1EBF08560, &qword_1C1B9AF90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v252 = &v250 - v6;
  v7 = sub_1C1B945F8();
  v284 = *(v7 - 8);
  v8 = v284[8];
  MEMORY[0x1EEE9AC00](v7);
  v276 = &v250 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C1AC1F08(&unk_1EBF098E0, &qword_1C1BA22A0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v282 = &v250 - v12;
  v13 = sub_1C1B94588();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v251 = &v250 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v289 = &v250 - v18;
  v19 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v273 = &v250 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v293 = &v250 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v288 = &v250 - v25;
  v26 = sub_1C1AC1F08(&qword_1EBF07AC8, &qword_1C1B9CED0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v287 = &v250 - v28;
  v29 = sub_1C1B87B74([a1 serverUnfilledReason]);
  v31 = v30;
  v32 = [a1 representations];
  if (v32)
  {
    v33 = v32;
    sub_1C1AA576C(0, &qword_1EDE6CA00, 0x1E698A050);
    sub_1C1B7B340();
    v34 = sub_1C1B95058();

    sub_1C1B6774C(v35, v34);
    v279 = v36;
  }

  else
  {
    v279 = MEMORY[0x1E69E7CC0];
  }

  v37 = [a1 identifier];
  v38 = sub_1C1B94D88();
  v296 = v39;
  v297 = v38;

  v40 = [a1 journeyIdentifier];
  v286 = sub_1C1B94D88();
  v277 = v41;

  v42 = [a1 impressionId];
  if (v42)
  {
    v43 = v42;
    v283 = sub_1C1B94D88();
    v292 = v44;
  }

  else
  {
    v283 = 0;
    v292 = 0;
  }

  v45 = v288;
  v46 = [a1 metadata];
  if (v46)
  {
    v47 = v46;
    sub_1C1AC1F08(&qword_1EBF07EA0, &qword_1C1B9ACD0);
    v281 = sub_1C1B94CB8();
  }

  else
  {
    v281 = 0;
  }

  v285 = v7;
  v48 = [a1 disclosureURL];
  if (v48)
  {
    v49 = v287;
    v50 = v48;
    sub_1C1B94488();

    v51 = sub_1C1B944A8();
    (*(*(v51 - 8) + 56))(v49, 0, 1, v51);
  }

  else
  {
    v52 = sub_1C1B944A8();
    (*(*(v52 - 8) + 56))(v287, 1, 1, v52);
  }

  v53 = [a1 disclosureRendererPayload];
  if (v53)
  {
    v54 = v53;
    v280 = sub_1C1B94D88();
    v269 = v55;
  }

  else
  {
    v280 = 0;
    v269 = 0;
  }

  v266 = [a1 minimumTimeBetweenPresentation];
  v56 = [a1 brandName];
  if (v56)
  {
    v57 = v56;
    v58 = sub_1C1B94D88();
    v264 = v59;
    v265 = v58;
  }

  else
  {
    v264 = 0;
    v265 = 0;
  }

  v60 = [a1 campaignText];
  if (v60)
  {
    v61 = v60;
    v62 = sub_1C1B94D88();
    v262 = v63;
    v263 = v62;
  }

  else
  {
    v262 = 0;
    v263 = 0;
  }

  v64 = [a1 startDate];
  if (v64)
  {
    v65 = v64;
    sub_1C1B94558();

    v66 = 0;
  }

  else
  {
    v66 = 1;
  }

  v290 = v14;
  v67 = *(v14 + 56);
  (v67)(v45, v66, 1, v13);
  v68 = [a1 expirationDate];
  sub_1C1B94558();

  v69 = 200;
  if ((v31 & 1) == 0)
  {
    v69 = v29;
  }

  v259 = v69;
  v260 = [a1 installAttribution];
  v278 = [a1 error];
  [a1 impressionThreshold];
  v71 = v70;
  [a1 serverResponseReceivedTimestamp];
  v73 = v72;
  v74 = 0;
  if (v72 > 0.0)
  {
    [a1 serverResponseReceivedTimestamp];
    v74 = v75;
  }

  v76 = [a1 receivedReferenceTime];
  v77 = v293;
  if (v76)
  {
    v78 = v76;
    sub_1C1B94558();

    v79 = 0;
  }

  else
  {
    v79 = 1;
  }

  (v67)(v77, v79, 1, v13);
  v272 = [a1 isLocationAvailableForAd];
  v271 = [a1 isPAAvailableForAd];
  v80 = [a1 adServerEnvironment];
  v294 = v13;
  v295 = a2;
  if (v80)
  {
    v81 = v80;
    v291 = sub_1C1B94EC8();
  }

  else
  {
    v291 = 0;
  }

  v274 = a1;
  v267 = [a1 diagnosticCode];
  v270 = type metadata accessor for PromotedContent();
  v82 = objc_allocWithZone(v270);
  v83 = (v82 + OBJC_IVAR___APPCPromotedContent_impressionId);
  *v83 = 0;
  v83[1] = 0;
  v261 = v83;
  swift_unknownObjectWeakInit();
  v253 = (v82 + OBJC_IVAR___APPCPromotedContent_metaData);
  *(v82 + OBJC_IVAR___APPCPromotedContent_metaData) = 0;
  v84 = v82 + OBJC_IVAR___APPCPromotedContent_disclosureURL;
  v85 = sub_1C1B944A8();
  v86 = *(*(v85 - 8) + 56);
  v254 = v84;
  v86(v84, 1, 1, v85);
  v87 = v82 + OBJC_IVAR___APPCPromotedContent_disclosureRendererPayload;
  *v87 = 0;
  v87[1] = 0;
  v88 = (v82 + OBJC_IVAR___APPCPromotedContent_brandName);
  *v88 = 0;
  v88[1] = 0;
  v89 = (v82 + OBJC_IVAR___APPCPromotedContent_campaignText);
  *v89 = 0;
  v89[1] = 0;
  v255 = v89;
  v257 = (v82 + OBJC_IVAR___APPCPromotedContent_installAttribution);
  *(v82 + OBJC_IVAR___APPCPromotedContent_installAttribution) = 0;
  *(v82 + OBJC_IVAR___APPCPromotedContent_bestRepresentation) = 0;
  v258 = OBJC_IVAR___APPCPromotedContent_error;
  *(v82 + OBJC_IVAR___APPCPromotedContent_error) = 0;
  v256 = v82 + OBJC_IVAR___APPCPromotedContent_startDate;
  v90 = v294;
  v67();
  *(v82 + OBJC_IVAR___APPCPromotedContent_mediaMetricHelper) = 0;
  *(v82 + OBJC_IVAR___APPCPromotedContent_attachedToView) = 0;
  *(v82 + OBJC_IVAR___APPCPromotedContent_vended) = 0;
  *(v82 + OBJC_IVAR___APPCPromotedContent_discarded) = 0;
  *(v82 + OBJC_IVAR___APPCPromotedContent_consumed) = 0;
  v275 = OBJC_IVAR___APPCPromotedContent_impressionThreshold;
  *(v82 + OBJC_IVAR___APPCPromotedContent_impressionThreshold) = 0x3FF0000000000000;
  (v67)(v82 + OBJC_IVAR___APPCPromotedContent_videoRequestStartDate, 1, 1, v90);
  *(v82 + OBJC_IVAR___APPCPromotedContent_discardedDueToPolicy) = 0;
  v91 = OBJC_IVAR___APPCPromotedContent_metricEventsTracking;
  v92 = type metadata accessor for MetricEventsTracker();
  v93 = *(v92 + 48);
  v94 = *(v92 + 52);
  v250 = v92;
  swift_allocObject();
  v95 = sub_1C1AB0510();
  v268 = v91;
  *(v82 + v91) = v95;
  *(v82 + OBJC_IVAR___APPCPromotedContent_unfilledReasonDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v96 = v82 + OBJC_IVAR___APPCPromotedContent_promotedContentUsedRegisterID;
  *v96 = 0;
  v96[1] = 0;
  v97 = v82 + OBJC_IVAR___APPCPromotedContent_overriddenAdType;
  *v97 = 0;
  v97[8] = 1;
  v98 = v82 + OBJC_IVAR___APPCPromotedContent__contextIdentifier;
  v99 = v285;
  v100 = v284[7];
  v100(v82 + OBJC_IVAR___APPCPromotedContent__contextIdentifier, 1, 1, v285);
  v101 = v82 + OBJC_IVAR___APPCPromotedContent_discardReason;
  *v101 = 0;
  v101[8] = 1;
  *(v82 + OBJC_IVAR___APPCPromotedContent_onPromotedContentComplete) = MEMORY[0x1E69E7CC0];
  *(v82 + OBJC_IVAR___APPCPromotedContent_appImpressionTask) = 0;
  v102 = v82 + OBJC_IVAR___APPCPromotedContent_appImpression;
  *v102 = 0u;
  *(v102 + 1) = 0u;
  *(v102 + 4) = 0;
  *(v82 + OBJC_IVAR___APPCPromotedContent_shouldSetupAttributionEventView) = 0;
  *(v82 + OBJC_IVAR___APPCPromotedContent_placeholder) = 0;
  v103 = v82 + OBJC_IVAR___APPCPromotedContent_identifier;
  v104 = v296;
  *v103 = v297;
  v103[1] = v104;
  swift_beginAccess();
  v105 = v295;
  swift_unknownObjectWeakAssign();
  if (v105)
  {

    v106 = [swift_unknownObjectRetain() identifier];
    v107 = v282;
    sub_1C1B945D8();

    v100(v107, 0, 1, v99);
  }

  else
  {
    v108 = v282;
    v100(v282, 1, 1, v99);
    v107 = v108;
  }

  swift_beginAccess();
  sub_1C1B19384(v107, v98, &unk_1EBF098E0, &qword_1C1BA22A0);
  swift_endAccess();
  v109 = v253;
  swift_beginAccess();
  v110 = *v109;
  *v109 = v281;

  v111 = v254;
  swift_beginAccess();
  sub_1C1B7953C(v287, v111, &qword_1EBF07AC8, &qword_1C1B9CED0);
  swift_endAccess();
  swift_beginAccess();
  v112 = v87[1];
  v113 = v269;
  *v87 = v280;
  v87[1] = v113;

  *(v82 + OBJC_IVAR___APPCPromotedContent_minimumTimeBetweenPresentation) = v266;
  swift_beginAccess();
  v114 = v88[1];
  v115 = v264;
  *v88 = v265;
  v88[1] = v115;

  v116 = v255;
  swift_beginAccess();
  v117 = v116[1];
  v118 = v262;
  *v116 = v263;
  v116[1] = v118;

  v119 = v256;
  swift_beginAccess();
  sub_1C1B7953C(v288, v119, &qword_1EBF07F50, &qword_1C1B9A590);
  swift_endAccess();
  (*(v290 + 16))(v82 + OBJC_IVAR___APPCPromotedContent_expirationDate, v289, v294);
  *(v82 + OBJC_IVAR___APPCPromotedContent_serverUnfilledReason) = v259;
  *(v82 + OBJC_IVAR___APPCPromotedContent_representations) = v279;
  v120 = v257;
  swift_beginAccess();
  v121 = *v120;
  v122 = v260;
  *v120 = v260;

  v123 = v122;

  v124 = v292;
  if (v278)
  {
    v125 = v278;
    v126 = sub_1C1B94448();
  }

  else
  {
    v126 = 0;
  }

  v127 = v296;
  v128 = v277;
  v129 = v283;
  v130 = v258;
  swift_beginAccess();
  v131 = *(v82 + v130);
  *(v82 + v130) = v126;

  v132 = v82 + OBJC_IVAR___APPCPromotedContent_serverResponseReceivedTimestamp;
  *v132 = v74;
  v132[8] = v73 <= 0.0;
  v133 = v295;
  if (!v295)
  {
    goto LABEL_48;
  }

  type metadata accessor for Context();
  v134 = swift_dynamicCastClass();
  if (v134)
  {
    v135 = OBJC_IVAR___APPCContext_newsContext;
    v136 = v134;
    swift_beginAccess();
    v137 = *(v136 + v135);
    v133 = v295;
    if (v137)
    {
      v138 = (v137 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_placement);
      swift_beginAccess();
      v139 = v138[1];
      if (v139)
      {
        v140 = sub_1C1AB08D0(*v138, v139);
        goto LABEL_49;
      }
    }
  }

  v141 = [v133 current];
  if (v141)
  {
    v140 = [v141 placement];
    swift_unknownObjectRelease();
  }

  else
  {
LABEL_48:
    v140 = 0;
  }

LABEL_49:
  v269 = v123;
  *(v82 + OBJC_IVAR___APPCPromotedContent_placement) = v140;
  v142 = v275;
  swift_beginAccess();
  *(v82 + v142) = v71;
  v143 = v261;
  swift_beginAccess();
  v144 = v143[1];
  *v143 = v129;
  v143[1] = v124;

  v145 = v82 + OBJC_IVAR___APPCPromotedContent_journeyIdentifier;
  *v145 = v286;
  v145[1] = v128;
  sub_1C1AA7E30(v293, v82 + OBJC_IVAR___APPCPromotedContent_receivedReferenceTime, &qword_1EBF07F50, &qword_1C1B9A590);
  v146 = v291;
  *(v82 + OBJC_IVAR___APPCPromotedContent_adServerEnvironments) = v291;
  v147 = v295;
  if (v295)
  {

    v148 = [v147 identifier];
    v149 = v276;
    sub_1C1B945D8();

    v282 = sub_1C1B945A8();
    v151 = v150;
    v265 = v284[1];
    v265(v149, v285);
  }

  else
  {
    v298[0] = 0;
    v298[1] = 0xE000000000000000;

    sub_1C1B95468();

    strcpy(v298, "missingContext");
    HIBYTE(v298[1]) = -18;
    v152 = v276;
    sub_1C1B945E8();
    v153 = sub_1C1B945A8();
    v155 = v154;
    v265 = v284[1];
    v265(v152, v285);
    MEMORY[0x1C6906DF0](v153, v155);
    v146 = v291;

    v151 = v298[1];
    v282 = v298[0];
  }

  v156 = objc_opt_self();

  v280 = v156;
  [v156 daemonDeliveryClass];
  swift_getObjCClassMetadata();
  v157 = [swift_getObjCClassFromMetadata() daemonDelivery];
  v158 = type metadata accessor for PrimitiveCreator();
  v159 = objc_allocWithZone(v158);
  v160 = &v159[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_promotedContentIdentifier];
  *v160 = v297;
  v160[1] = v127;
  v161 = &v159[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_contextIdentifier];
  *v161 = v282;
  v161[1] = v151;
  v162 = &v159[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_journeyIdentifier];
  *v162 = v286;
  v162[1] = v128;
  v163 = &v159[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_impressionId];
  v164 = v151;
  v165 = v292;
  *v163 = v283;
  v163[1] = v165;
  v159[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_placeholder] = 0;
  *&v159[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_receiver] = v157;
  *&v159[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_branch] = 0;
  *&v159[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_environment] = v146;
  v166 = qword_1EDE6C538;

  v292 = v165;

  v281 = v164;

  swift_unknownObjectRetain();
  if (v166 != -1)
  {
    swift_once();
  }

  sub_1C1AAD2FC(qword_1EDE6C540, &v159[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_eventPipeline]);
  v301.receiver = v159;
  v167 = v158;
  v301.super_class = v158;
  v168 = objc_msgSendSuper2(&v301, sel_init);
  swift_unknownObjectRelease();
  v266 = OBJC_IVAR___APPCPromotedContent_primitiveCreator;
  *(v82 + OBJC_IVAR___APPCPromotedContent_primitiveCreator) = v168;
  v298[0] = 6911329;
  v298[1] = 0xE300000000000000;
  v169 = v276;
  sub_1C1B945E8();
  v170 = sub_1C1B945A8();
  v172 = v171;
  v265(v169, v285);
  MEMORY[0x1C6906DF0](v170, v172);

  v173 = v298[0];
  v174 = v298[1];

  [v280 daemonDeliveryClass];
  swift_getObjCClassMetadata();
  v175 = [swift_getObjCClassFromMetadata() daemonDelivery];
  v176 = objc_allocWithZone(v167);
  v177 = &v176[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_promotedContentIdentifier];
  v178 = v296;
  *v177 = v297;
  v177[1] = v178;
  v179 = &v176[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_contextIdentifier];
  v180 = v281;
  *v179 = v282;
  v179[1] = v180;
  v181 = &v176[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_journeyIdentifier];
  *v181 = v173;
  v181[1] = v174;
  v182 = &v176[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_impressionId];
  v183 = v292;
  *v182 = v283;
  v182[1] = v183;
  v176[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_placeholder] = 0;
  *&v176[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_receiver] = v175;
  *&v176[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_branch] = 0;
  v291 = v146;
  *&v176[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_environment] = v146;
  sub_1C1AAD2FC(qword_1EDE6C540, &v176[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_eventPipeline]);
  v300.receiver = v176;
  v300.super_class = v167;

  v184 = objc_msgSendSuper2(&v300, sel_init);
  v284 = OBJC_IVAR___APPCPromotedContent_diagnosticPrimitiveCreator;
  *(v82 + OBJC_IVAR___APPCPromotedContent_diagnosticPrimitiveCreator) = v184;
  *(v82 + OBJC_IVAR___APPCPromotedContent_diagnosticCode) = v267;
  [objc_allocWithZone(MEMORY[0x1E69861C0]) init];
  v185 = sub_1C1B94908();
  v186 = *(v185 + 48);
  v187 = *(v185 + 52);
  swift_allocObject();
  v188 = sub_1C1B948E8();
  v189 = v273;
  sub_1C1AA7E30(v293, v273, &qword_1EBF07F50, &qword_1C1B9A590);
  v190 = v290;
  v191 = v294;
  v192 = (*(v290 + 48))(v189, 1, v294);
  v285 = v188;
  if (v192 == 1)
  {
    sub_1C1AA7C8C(v189, &qword_1EBF07F50, &qword_1C1B9A590);
  }

  else
  {
    v193 = v251;
    (*(v190 + 32))(v251, v189, v191);
    sub_1C1B948D8();
    (*(v190 + 8))(v193, v191);
  }

  type metadata accessor for MetricsUnloadTracker();
  v194 = swift_allocObject();
  *(v194 + 16) = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  *(v194 + 24) = 0;
  v292 = v194;
  *(v194 + 32) = 1;
  v283 = *&v266[v82];
  swift_unknownObjectRetain();
  [v280 daemonDeliveryClass];
  swift_getObjCClassMetadata();
  v195 = [swift_getObjCClassFromMetadata() daemonDelivery];
  v196 = 0;
  v197 = 0;
  v198 = *(v82 + OBJC_IVAR___APPCPromotedContent_placement) - 7005;
  if (v198 <= 3)
  {
    v196 = qword_1C1BA4170[v198];
    v197 = qword_1C1BA4190[v198];
  }

  v276 = v196;
  type metadata accessor for JourneyMetricsHelper();
  swift_getObjectType();
  v199 = v296;

  v200 = v281;

  v201 = v285;

  v202 = v292;

  v203 = v199;
  v204 = v282;
  v205 = sub_1C1AB0E7C(v297, v203, v282, v200, v286, v277, v201, v202, v283, v195, v276, v197, v291, 0, 0, 0, 0, 1);
  *(v82 + OBJC_IVAR___APPCPromotedContent_metricsHelper) = v205;
  [v205 setImpressionThresholdDuration_];
  v206 = *(v284 + v82);
  swift_unknownObjectRetain();
  [v280 daemonDeliveryClass];
  swift_getObjCClassMetadata();
  v207 = [swift_getObjCClassFromMetadata() daemonDelivery];
  v208 = v268;
  swift_beginAccess();
  if (*(v82 + v208))
  {
    v209 = *(v82 + v208);
  }

  else
  {
    v210 = *(v250 + 48);
    v211 = *(v250 + 52);
    swift_allocObject();
    v209 = sub_1C1AB0510();
  }

  type metadata accessor for DiagnosticMetricsHelper();
  swift_getObjectType();
  swift_unknownObjectRetain();
  *(v82 + OBJC_IVAR___APPCPromotedContent_diagnosticMetricHelper) = sub_1C1AB1708(v204, v281, v297, v296, v206, v207, v209);
  v212 = v271;
  *(v82 + OBJC_IVAR___APPCPromotedContent_isLocationAvailableForAd) = v272;
  *(v82 + OBJC_IVAR___APPCPromotedContent_isPAAvailableForAd) = v212;
  v299.receiver = v82;
  v299.super_class = v270;
  v213 = objc_msgSendSuper2(&v299, sel_init);
  v214 = sub_1C1AB17D0(v201, v292);
  v215 = OBJC_IVAR___APPCPromotedContent_mediaMetricHelper;
  swift_beginAccess();
  v216 = *&v213[v215];
  *&v213[v215] = v214;
  swift_unknownObjectRelease();
  v217 = *&v213[OBJC_IVAR___APPCPromotedContent_diagnosticMetricHelper];
  swift_unknownObjectRetain();
  [v217 setNetworkType_];
  swift_unknownObjectRelease();
  v218 = OBJC_IVAR___APPCPromotedContent_metricsHelper;
  swift_beginAccess();
  [*&v213[v218] setPromotedContent_];
  v219 = *&v213[v218];
  v220 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectRetain();

  v298[4] = sub_1C1B7B4D4;
  v298[5] = v220;
  v298[0] = MEMORY[0x1E69E9820];
  v298[1] = 1107296256;
  v298[2] = sub_1C1B196F0;
  v298[3] = &unk_1F4153E30;
  v221 = _Block_copy(v298);

  v222 = [v219 registerForPCUsedEventWithAction_];
  swift_unknownObjectRelease();
  _Block_release(v221);
  v223 = sub_1C1B94D88();
  v225 = v224;

  v226 = &v213[OBJC_IVAR___APPCPromotedContent_promotedContentUsedRegisterID];
  v227 = *&v213[OBJC_IVAR___APPCPromotedContent_promotedContentUsedRegisterID + 8];
  *v226 = v223;
  v226[1] = v225;

  v228 = v269;
  if (v269)
  {
    v229 = [v269 attributionSignature];
    v230 = sub_1C1B94D88();
    v232 = v231;

    v233 = OBJC_IVAR___APPCPromotedContent_shouldSetupAttributionEventView;
    swift_beginAccess();
    v213[v233] = 1;
    v234 = sub_1C1B95028();
    v235 = v252;
    (*(*(v234 - 8) + 56))(v252, 1, 1, v234);
    v236 = swift_allocObject();
    v236[2] = 0;
    v236[3] = 0;
    v236[4] = v213;
    v236[5] = v230;
    v236[6] = v232;
    v237 = v213;
    v238 = sub_1C1B025C8(0, 0, v235, &unk_1C1BA4108, v236);
    swift_unknownObjectRelease();

    sub_1C1AA7C8C(v293, &qword_1EBF07F50, &qword_1C1B9A590);
    (*(v290 + 8))(v289, v294);
    sub_1C1AA7C8C(v288, &qword_1EBF07F50, &qword_1C1B9A590);
    sub_1C1AA7C8C(v287, &qword_1EBF07AC8, &qword_1C1B9CED0);
    v239 = OBJC_IVAR___APPCPromotedContent_appImpressionTask;
    swift_beginAccess();
    v240 = *&v237[v239];
    *&v237[v239] = v238;
  }

  else
  {
    swift_unknownObjectRelease();

    sub_1C1AA7C8C(v293, &qword_1EBF07F50, &qword_1C1B9A590);
    (*(v290 + 8))(v289, v294);
    sub_1C1AA7C8C(v288, &qword_1EBF07F50, &qword_1C1B9A590);
    sub_1C1AA7C8C(v287, &qword_1EBF07AC8, &qword_1C1B9CED0);
  }

  v241 = v274;
  if (v279 >> 62)
  {
    v243 = sub_1C1B953A8();

    if (v243)
    {
      goto LABEL_67;
    }

LABEL_69:
    v244 = [v241 representations];
    if (v244)
    {
      sub_1C1AA576C(0, &qword_1EDE6CA00, 0x1E698A050);
      sub_1C1B7B340();
      v245 = sub_1C1B95058();

      v246 = sub_1C1B67A68(v245);

      if (v246)
      {
        v244 = [v246 placementType];

        swift_unknownObjectRelease();
        v247 = 0;
        if (v244 >= 5)
        {
          if (v244 == 5)
          {
            v247 = 0;
            v244 = 6;
          }

          else if (v244 != 7)
          {
            v244 = 0;
            v247 = 0;
          }
        }

        goto LABEL_78;
      }

      swift_unknownObjectRelease();
      v244 = 0;
    }

    else
    {

      swift_unknownObjectRelease();
    }

    v247 = 1;
LABEL_78:
    v248 = &v213[OBJC_IVAR___APPCPromotedContent_overriddenAdType];
    *v248 = v244;
    v248[8] = v247;
    return v213;
  }

  v242 = *((v279 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v242)
  {
    goto LABEL_69;
  }

LABEL_67:

  swift_unknownObjectRelease();
  return v213;
}

uint64_t sub_1C1B7953C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1C1AC1F08(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

unint64_t sub_1C1B795B4()
{
  result = qword_1EDE6BC30;
  if (!qword_1EDE6BC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6BC30);
  }

  return result;
}

uint64_t sub_1C1B79608(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C1B79650()
{
  result = qword_1EDE6C318;
  if (!qword_1EDE6C318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6C318);
  }

  return result;
}

unint64_t sub_1C1B796A4()
{
  result = qword_1EDE6BE00;
  if (!qword_1EDE6BE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6BE00);
  }

  return result;
}

unint64_t sub_1C1B796F8()
{
  result = qword_1EDE6C258;
  if (!qword_1EDE6C258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6C258);
  }

  return result;
}

uint64_t sub_1C1B7974C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1C1AB9CA0;

  return sub_1C1B72B7C(a1, v4, v5, v6, v7, v8);
}

id sub_1C1B79814()
{
  v7[1] = *MEMORY[0x1E69E9840];
  v1 = sub_1C1B944C8();
  v7[0] = 0;
  v2 = [v0 initForReadingFromData:v1 error:v7];

  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_1C1B94458();

    swift_willThrow();
  }

  v5 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t sub_1C1B798D4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1C1AF5DAC(a1, a2);
  }

  return a1;
}

uint64_t sub_1C1B798E8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1C1AC3404(&qword_1EBF09900, &qword_1C1BA3DF8);
    sub_1C1AD0C9C(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C1B79974(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1C1AC3404(&qword_1EBF09908, &qword_1C1BA3E00);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C1B799EC()
{
  result = qword_1EDE6C320;
  if (!qword_1EDE6C320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6C320);
  }

  return result;
}

unint64_t sub_1C1B79A40()
{
  result = qword_1EDE6C270;
  if (!qword_1EDE6C270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6C270);
  }

  return result;
}

unint64_t sub_1C1B79A94()
{
  result = qword_1EDE6BE08;
  if (!qword_1EDE6BE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6BE08);
  }

  return result;
}

unint64_t sub_1C1B79AE8()
{
  result = qword_1EDE6C2A8;
  if (!qword_1EDE6C2A8)
  {
    sub_1C1AC3404(&qword_1EBF09940, &qword_1C1BA3E20);
    sub_1C1AC1FA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6C2A8);
  }

  return result;
}

unint64_t sub_1C1B79B6C()
{
  result = qword_1EDE6BE90;
  if (!qword_1EDE6BE90)
  {
    sub_1C1AC3404(&qword_1EBF09948, &qword_1C1BA3E28);
    sub_1C1B1D3F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6BE90);
  }

  return result;
}

unint64_t sub_1C1B79BF0()
{
  result = qword_1EDE6B828;
  if (!qword_1EDE6B828)
  {
    sub_1C1AC3404(&unk_1EBF09950, &qword_1C1BA3E30);
    sub_1C1B799EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B828);
  }

  return result;
}

void sub_1C1B79C74(uint64_t a1)
{
  if ((~a1 & 0xF000000000000007) != 0)
  {
  }
}

uint64_t sub_1C1B79C8C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t *a4@<X5>, uint64_t a5@<X8>)
{
  v8 = *a1;
  v9 = *a2;
  swift_beginAccess();
  return sub_1C1AA7E30(v8 + v9, a5, a3, a4);
}

uint64_t sub_1C1B79CFC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t (*a3)(void)@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  swift_beginAccess();
  *a4 = *(v6 + v7);
  return a3();
}

uint64_t sub_1C1B79D5C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t sub_1C1B79DB0(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

uint64_t getEnumTagSinglePayload for PromotedContent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDC)
  {
    goto LABEL_17;
  }

  if (a2 + 36 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 36) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 36;
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

      return (*a1 | (v4 << 8)) - 36;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 36;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x25;
  v8 = v6 - 37;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PromotedContent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 36 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 36) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDC)
  {
    v4 = 0;
  }

  if (a2 > 0xDB)
  {
    v5 = ((a2 - 220) >> 8) + 1;
    *result = a2 + 36;
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
    *result = a2 + 36;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C1B7B078()
{
  result = qword_1EBF09960;
  if (!qword_1EBF09960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF09960);
  }

  return result;
}

unint64_t sub_1C1B7B0D0()
{
  result = qword_1EDE6BC18;
  if (!qword_1EDE6BC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6BC18);
  }

  return result;
}

unint64_t sub_1C1B7B128()
{
  result = qword_1EDE6BC20;
  if (!qword_1EDE6BC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6BC20);
  }

  return result;
}

uint64_t sub_1C1B7B17C()
{
  v0 = sub_1C1B958A8();

  if (v0 >= 0x25)
  {
    return 37;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1C1B7B1D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1C1AB9CA0;

  return sub_1C1B6BFF8(a1, v4, v5, v6, v7, v8);
}

uint64_t *sub_1C1B7B298(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x1C6908230);
  }

  return result;
}

void sub_1C1B7B2E8()
{
  v1 = *(v0 + 16);
  v2 = sub_1C1B94D78();
  (*(v1 + 16))(v1, v2);
}

unint64_t sub_1C1B7B340()
{
  result = qword_1EDE6C9F8;
  if (!qword_1EDE6C9F8)
  {
    sub_1C1AA576C(255, &qword_1EDE6CA00, 0x1E698A050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6C9F8);
  }

  return result;
}

uint64_t sub_1C1B7B3A8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C1B7B3F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1C1AB9A98;

  return sub_1C1B6BFF8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1C1B7B4F8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  *(a2 + 16) = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  return sub_1C1B95218();
}

id sub_1C1B7B560()
{
  v32 = sub_1C1B94BF8();
  v0 = *(v32 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v3 = (&v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = sub_1C1B94C58();
  v4 = *(v31 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v31);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - v9;
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  v29 = (v11 + 16);
  v12 = dispatch_semaphore_create(0);
  v30 = objc_opt_self();
  sub_1C1AA576C(0, &qword_1EBF099D8, 0x1E6986088);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = swift_allocObject();
  *(v14 + 16) = v11;
  *(v14 + 24) = v12;
  aBlock[4] = sub_1C1B7BC70;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C1B49F5C;
  aBlock[3] = &unk_1F4153EF8;
  v15 = _Block_copy(aBlock);

  v16 = v12;

  [v30 fetchConfigurationForClass:ObjCClassFromMetadata completion:v15];
  _Block_release(v15);
  sub_1C1B94C48();
  *v3 = 1;
  v17 = v32;
  (*(v0 + 104))(v3, *MEMORY[0x1E69E7F48], v32);
  MEMORY[0x1C6906C80](v8, v3);
  (*(v0 + 8))(v3, v17);
  v18 = *(v4 + 8);
  v19 = v31;
  v18(v8, v31);
  sub_1C1B95208();
  v18(v10, v19);
  if ((sub_1C1B94C08() & 1) != 0 && (v20 = v29, swift_beginAccess(), *v20) && (objc_opt_self(), (v21 = swift_dynamicCastObjCClass()) != 0))
  {
    v22 = v21;
    swift_unknownObjectRetain();
    v23 = [v22 m1409Left];
    v24 = [v23 integerValue];

    v25 = [v22 m1409VoiceLeft];
    [v25 integerValue];

    v26 = [v22 m1409ConfigVersion];
    [v26 integerValue];

    swift_unknownObjectRelease();
  }

  else
  {
    v27 = sub_1C1B94D78();
    APSimulateCrash();

    v24 = 0;
    v16 = v27;
  }

  return v24;
}

id sub_1C1B7BA08()
{
  v0 = sub_1C1B7B560();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  sub_1C1B95118();
  sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
  v7 = sub_1C1B95298();
  sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
  v8 = swift_allocObject();
  v9 = 0;
  v10 = 0;
  *(v8 + 16) = xmmword_1C1B98E60;
  v11 = MEMORY[0x1E69E6158];
  if ((v6 & 1) == 0)
  {
    sub_1C1AC1F08(&qword_1EBF09968, &qword_1C1BA41B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C1B9EEE0;
    *(inited + 32) = 0x66654C393034316DLL;
    *(inited + 40) = 0xE900000000000074;
    *(inited + 48) = v0;
    strcpy((inited + 56), "m1409VoiceLeft");
    *(inited + 71) = -18;
    *(inited + 72) = v2;
    *(inited + 80) = 0xD000000000000012;
    *(inited + 88) = 0x80000001C1BAC780;
    *(inited + 96) = v4;
    sub_1C1AD49F0(inited);
    swift_setDeallocating();
    sub_1C1AC1F08(&qword_1EBF09970, qword_1C1BA41B8);
    swift_arrayDestroy();
    v9 = sub_1C1B94CC8();
    v10 = v13;

    v11 = MEMORY[0x1E69E6158];
  }

  *(v8 + 56) = v11;
  *(v8 + 64) = sub_1C1AA5E7C();
  v14 = 7104878;
  if (v10)
  {
    v14 = v9;
  }

  v15 = 0xE300000000000000;
  if (v10)
  {
    v15 = v10;
  }

  *(v8 + 32) = v14;
  *(v8 + 40) = v15;
  sub_1C1B94BA8();

  return v0;
}

uint64_t sub_1C1B7BE0C()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1C1B7BE6C(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_promotedContent;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1C1B61900;
}

uint64_t sub_1C1B7BFA8()
{
  v1 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_primitiveCreator;
  swift_beginAccess();
  v2 = *(v0 + v1);
  return swift_unknownObjectRetain();
}

uint64_t sub_1C1B7C058(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_primitiveCreator;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_1C1B7C0CC()
{
  v1 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_hasBeenOnScreen;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C1B7C1AC()
{
  v1 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_isCurrentlyOnScreen;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C1B7C244()
{
  v1 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_wasCollapsedOnScreen;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C1B7C2D0()
{
  v1 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_didUnload;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C1B7C3B0()
{
  v1 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_didImpress;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C1B7C584@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_impressionStartDate;
  swift_beginAccess();
  return sub_1C1ABB0C4(v1 + v3, a1);
}

uint64_t sub_1C1B7C71C(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1C1ABB0C4(a1, &v11 - v6);
  v8 = *a2;
  v9 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_impressionStartDate;
  swift_beginAccess();
  sub_1C1AABE90(v7, v8 + v9);
  return swift_endAccess();
}

double sub_1C1B7C824()
{
  v1 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_impressionDuration;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C1B7C904()
{
  v1 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_isClickImpression;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1C1B7CA48(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_diagnostics;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

double sub_1C1B7CB00()
{
  v1 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_impressionThresholdDuration;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C1B7CB44(double a1)
{
  v3 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_impressionThresholdDuration;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1C1B7CC1C(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = MEMORY[0x1E69E7CD0];
    *(v1 + v2) = MEMORY[0x1E69E7CD0];
  }

  return v4;
}

id JourneyMetricsHelper.__allocating_init(promotedContentIdentifier:contextIdentifier:journeyIdentifier:impressionId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = objc_opt_self();

  v37 = v15;
  [v15 daemonDeliveryClass];
  swift_getObjCClassMetadata();
  v16 = [swift_getObjCClassFromMetadata() daemonDelivery];
  v17 = type metadata accessor for PrimitiveCreator();
  v18 = objc_allocWithZone(v17);
  v19 = &v18[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_promotedContentIdentifier];
  v38 = a1;
  *v19 = a1;
  v19[1] = a2;
  v20 = a6;
  v21 = &v18[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_contextIdentifier];
  *v21 = a3;
  v21[1] = a4;
  v22 = &v18[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_journeyIdentifier];
  *v22 = a5;
  v22[1] = a6;
  v23 = &v18[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_impressionId];
  *v23 = a7;
  v23[1] = a8;
  v18[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_placeholder] = 0;
  *&v18[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_receiver] = v16;
  *&v18[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_branch] = 0;
  *&v18[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_environment] = 0;
  v24 = qword_1EDE6C538;
  swift_unknownObjectRetain();
  if (v24 != -1)
  {
    swift_once();
  }

  sub_1C1AAD2FC(qword_1EDE6C540, &v18[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_eventPipeline]);
  v39.receiver = v18;
  v39.super_class = v17;
  v25 = objc_msgSendSuper2(&v39, sel_init);
  swift_unknownObjectRelease();
  [objc_allocWithZone(MEMORY[0x1E69861C0]) init];
  v26 = sub_1C1B94908();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  v29 = sub_1C1B948E8();
  type metadata accessor for MetricsUnloadTracker();
  v30 = swift_allocObject();
  *(v30 + 16) = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  *(v30 + 24) = 0;
  *(v30 + 32) = 1;
  v31 = v25;
  [v37 daemonDeliveryClass];
  swift_getObjCClassMetadata();
  v32 = [swift_getObjCClassFromMetadata() daemonDelivery];
  swift_getObjectType();
  v33 = objc_allocWithZone(type metadata accessor for JourneyMetricsHelper());
  v34 = sub_1C1AB0F40(v38, a2, a3, a4, a5, v20, v29, v30, v31, v32, 0, 0, 0, 0, 0, 0, 0, 1, v33);

  return v34;
}

id sub_1C1B7D030()
{
  result = sub_1C1B7BA08();
  qword_1EBF09A40 = result;
  *algn_1EBF09A48 = v1;
  qword_1EBF09A50 = v2;
  byte_1EBF09A58 = v3 & 1;
  return result;
}

id JourneyMetricsHelper.__deallocating_deinit()
{
  sub_1C1B7D0A4();
  sub_1C1B7EF7C(9102);
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JourneyMetricsHelper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C1B7D0A4()
{
  v1 = v0;
  v2 = sub_1C1B94A58();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v0[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_hasBeenPlaced] != 1 || (v8 = *&v0[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_placedProperties]) == 0)
  {
    sub_1C1B95138();
    sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
    v33 = sub_1C1B95298();
    sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1C1B98E60;
    v35 = &v1[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_promotedContentIdentifier];
    swift_beginAccess();
    v37 = *v35;
    v36 = *(v35 + 1);
    *(v34 + 56) = MEMORY[0x1E69E6158];
    *(v34 + 64) = sub_1C1AA5E7C();
    *(v34 + 32) = v37;
    *(v34 + 40) = v36;

    sub_1C1B94BA8();
  }

  v56 = v5;
  *&v0[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_placedProperties] = 0;
  v9 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_unfilledReasons;
  swift_beginAccess();
  v10 = *&v0[v9];
  if (!v10 || !*(v10 + 16))
  {
LABEL_27:
    [v1 notifyListenersPCUsed];
    v50 = sub_1C1AB35FC();
    sub_1C1AB3CFC(1403, v8, v50);
  }

  v55 = v8;

  v12 = sub_1C1B859E4(v11);

  v13 = *(v12 + 16);
  if (!v13)
  {

    v38 = MEMORY[0x1E69E7CC0];
LABEL_26:
    v39 = v56;
    (*(v3 + 104))(v7, *MEMORY[0x1E6989F88], v56);
    v40 = sub_1C1B94A48();
    v42 = v41;
    (*(v3 + 8))(v7, v39);
    sub_1C1B63274(v38);
    v43 = objc_allocWithZone(MEMORY[0x1E695DEC8]);
    v44 = sub_1C1B94EB8();

    v45 = [v43 initWithArray_];

    v46 = v55;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v59 = v46;
    sub_1C1AB31CC(v45, v40, v42, isUniquelyReferenced_nonNull_native, &v59);

    v8 = v59;
    sub_1C1B95138();
    sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
    v48 = sub_1C1B95298();
    sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_1C1B98E60;
    *(v49 + 56) = sub_1C1AC1F08(&qword_1EBF09B20, &qword_1C1BA4338);
    *(v49 + 64) = sub_1C1B86F84();
    *(v49 + 32) = v38;
    sub_1C1B94BA8();

    goto LABEL_27;
  }

  v52 = v7;
  v53 = v3;
  v54 = v1;
  v59 = MEMORY[0x1E69E7CC0];
  sub_1C1B95518();
  v14 = v12 + 56;
  v15 = -1 << *(v12 + 32);
  result = sub_1C1B95328();
  v17 = result;
  v18 = 0;
  v19 = *(v12 + 36);
  v57 = v12 + 64;
  while ((v17 & 0x8000000000000000) == 0 && v17 < 1 << *(v12 + 32))
  {
    v22 = v17 >> 6;
    if ((*(v14 + 8 * (v17 >> 6)) & (1 << v17)) == 0)
    {
      goto LABEL_30;
    }

    if (v19 != *(v12 + 36))
    {
      goto LABEL_31;
    }

    v58 = v18;
    v23 = *(*(v12 + 48) + 8 * v17);
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    sub_1C1B954F8();
    v24 = v12;
    v25 = v59[2];
    sub_1C1B95528();
    v12 = v24;
    sub_1C1B95538();
    result = sub_1C1B95508();
    v20 = 1 << *(v24 + 32);
    if (v17 >= v20)
    {
      goto LABEL_32;
    }

    v26 = *(v14 + 8 * v22);
    if ((v26 & (1 << v17)) == 0)
    {
      goto LABEL_33;
    }

    if (v19 != *(v24 + 36))
    {
      goto LABEL_34;
    }

    v27 = v26 & (-2 << (v17 & 0x3F));
    if (v27)
    {
      v20 = __clz(__rbit64(v27)) | v17 & 0x7FFFFFFFFFFFFFC0;
      v21 = v58;
    }

    else
    {
      v28 = v22 << 6;
      v29 = v22 + 1;
      v30 = (v57 + 8 * v22);
      while (v29 < (v20 + 63) >> 6)
      {
        v32 = *v30++;
        v31 = v32;
        v28 += 64;
        ++v29;
        if (v32)
        {
          result = sub_1C1B616D0(v17, v19, 0);
          v20 = __clz(__rbit64(v31)) + v28;
          goto LABEL_22;
        }
      }

      result = sub_1C1B616D0(v17, v19, 0);
LABEL_22:
      v12 = v24;
      v21 = v58;
    }

    v18 = v21 + 1;
    v17 = v20;
    if (v18 == v13)
    {

      v38 = v59;
      v3 = v53;
      v1 = v54;
      v7 = v52;
      goto LABEL_26;
    }
  }

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
  __break(1u);
  return result;
}

uint64_t sub_1C1B7D8F0(uint64_t result, void *a2, uint64_t a3)
{
  v6 = result;
  v7 = *&v3[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_newsSupplementalContext];
  if (!v7 || (v8 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_sponsorshipPlacement, result = swift_beginAccess(), *(v7 + v8)))
  {
    if ((v3[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_stop] & 1) == 0)
    {
      if (qword_1EDE6C4E0 != -1)
      {
        swift_once();
      }

      v9 = sub_1C1B94BE8();
      sub_1C1AB4454(v9, qword_1EDE6D058);
      v10 = v3;
      v11 = sub_1C1B94BC8();
      v12 = sub_1C1B95118();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v23 = v14;
        *v13 = 134349570;
        *(v13 + 4) = 0;
        *(v13 + 12) = 2050;
        v15 = *&v10[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_unloadManager];
        [*(v15 + 16) lock];
        v16 = *(v15 + 32);
        [*(v15 + 16) unlock];
        *(v13 + 14) = v16;

        *(v13 + 22) = 2080;
        v17 = &v10[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_promotedContentIdentifier];
        swift_beginAccess();
        v18 = *v17;
        v19 = v17[1];

        v20 = sub_1C1AC7650(v18, v19, &v23);

        *(v13 + 24) = v20;
        _os_log_impl(&dword_1C1AA2000, v11, v12, "Journey order: %{public}ld, event count: %{public}ld, promoted content: %s", v13, 0x20u);
        sub_1C1AA86F8(v14);
        MEMORY[0x1C6908230](v14, -1, -1);
        MEMORY[0x1C6908230](v13, -1, -1);
      }

      else
      {
      }

      v21 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_primitiveCreator;
      swift_beginAccess();
      v22 = *&v10[v21];
      swift_unknownObjectRetain();
      sub_1C1AB448C(v6, -1, a2, a3);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1C1B7DB78(uint64_t a1, uint64_t a2)
{
  if (qword_1EDE6BC60 != -1)
  {
    swift_once();
  }

  sub_1C1AAD2FC(&qword_1EDE6CE68, v15);
  v5 = sub_1C1AAABE0(v15, v15[3]);
  v6 = (v2 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_contextIdentifier);
  swift_beginAccess();
  v8 = *v6;
  v7 = v6[1];
  v9 = (v2 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_promotedContentIdentifier);
  swift_beginAccess();
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v13 = *v5;

  sub_1C1B4A2D8(v8, v7, v10, v11, sub_1C1B18B2C, v12);

  return sub_1C1AA86F8(v15);
}

uint64_t sub_1C1B7DD6C()
{
  if (qword_1EDE6BC60 != -1)
  {
    swift_once();
  }

  sub_1C1AAD2FC(&qword_1EDE6CE68, v10);
  v1 = sub_1C1AAABE0(v10, v10[3]);
  v2 = (v0 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_contextIdentifier);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];
  v5 = (v0 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_promotedContentIdentifier);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  v8 = *v1;

  sub_1C1B4A4E4(v4, v3, v6, v7);

  return sub_1C1AA86F8(v10);
}

uint64_t sub_1C1B7DEDC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C1B94A58();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1AC1F08(&qword_1EBF08DC8, &unk_1C1B9F390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1B98E60;
  (*(v5 + 104))(v8, *MEMORY[0x1E6989F48], v4);
  v10 = sub_1C1B94A48();
  v12 = v11;
  (*(v5 + 8))(v8, v4);
  *(inited + 32) = v10;
  *(inited + 40) = v12;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v13 = sub_1C1AD408C(inited);
  swift_setDeallocating();
  sub_1C1AA7C8C(inited + 32, &unk_1EBF08DD0, &unk_1C1B9EF00);
  v14 = sub_1C1AB35FC();
  sub_1C1AB3CFC(1201, v13, v14);

  *(v2 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_stop) = *(v2 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_stop) & 1 | ((a1 & 0xFFFFFFFFFFFFFFFELL) == 2606);
  return result;
}

uint64_t sub_1C1B7E168()
{
  v1 = v0;
  v2 = sub_1C1B94A58();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_hasBeenOnScreen;
  result = swift_beginAccess();
  if (*(v1 + v7) == 1)
  {
    v9 = sub_1C1AB35FC();
    if (!v9)
    {
      v9 = sub_1C1AB3BEC(MEMORY[0x1E69E7CC0]);
    }

    v10 = v9;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v12 = [Strong adType];
      swift_unknownObjectRelease();
      (*(v3 + 104))(v6, *MEMORY[0x1E6989F58], v2);
      v13 = sub_1C1B94A48();
      v15 = v14;
      (*(v3 + 8))(v6, v2);
      v16 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = v10;
      sub_1C1AB7E20(v16, v13, v15, isUniquelyReferenced_nonNull_native, &v19);

      v10 = v19;
    }

    sub_1C1B7D8F0(77006, 0, v10);
  }

  return result;
}

uint64_t sub_1C1B7E3B4(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_wasCreated) = 1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = sub_1C1AB2B4C(Strong, a1, 0, 0, 0);
  swift_unknownObjectRelease();
  v5 = sub_1C1AB35FC();
  sub_1C1AB3CFC(1400, v4, v5);
}

uint64_t sub_1C1B7E4BC(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_wasCreated) = 1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = sub_1C1AB2B4C(Strong, a1, a2, 0, 0);
  swift_unknownObjectRelease();
  v7 = sub_1C1AB35FC();
  sub_1C1AB3CFC(1400, v6, v7);
}

uint64_t sub_1C1B7E648(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v83 = sub_1C1B94A58();
  v85 = *(v83 - 8);
  v4 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v83);
  v82 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDE6BC60 != -1)
  {
    swift_once();
  }

  sub_1C1AAD2FC(&qword_1EDE6CE68, v86);
  v6 = sub_1C1AAABE0(v86, v87);
  v7 = (v2 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_contextIdentifier);
  swift_beginAccess();
  v9 = *v7;
  v8 = v7[1];

  v10 = [a1 promotedContentIdentifier];
  v11 = sub_1C1B94D88();
  v13 = v12;

  v14 = (v2 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_promotedContentIdentifier);
  swift_beginAccess();
  v15 = *v14;
  v16 = v14[1];
  v17 = *v6;

  sub_1C1B4A6A0(v9, v8, v11, v13, v15, v16);

  sub_1C1AA86F8(v86);
  v18 = [a1 journeyIdentifier];
  v19 = sub_1C1B94D88();
  v21 = v20;

  v22 = (v2 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_journeyIdentifier);
  swift_beginAccess();
  if (v19 == *v22 && v21 == v22[1])
  {

LABEL_7:
    sub_1C1B95118();
    sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
    v24 = sub_1C1B95298();
    sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1C1B98E60;
    v26 = [a1 journeyIdentifier];
    v27 = sub_1C1B94D88();
    v29 = v28;

    *(v25 + 56) = MEMORY[0x1E69E6158];
    *(v25 + 64) = sub_1C1AA5E7C();
    *(v25 + 32) = v27;
    *(v25 + 40) = v29;
    sub_1C1B94BA8();
  }

  v23 = sub_1C1B95888();

  if (v23)
  {
    goto LABEL_7;
  }

  v79 = v7;
  sub_1C1B95118();
  sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
  v31 = sub_1C1B95298();
  sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1C1B9AF30;
  v33 = [a1 journeyIdentifier];
  v34 = sub_1C1B94D88();
  v36 = v35;

  v37 = MEMORY[0x1E69E6158];
  *(v32 + 56) = MEMORY[0x1E69E6158];
  v38 = sub_1C1AA5E7C();
  *(v32 + 32) = v34;
  *(v32 + 40) = v36;
  v40 = *v22;
  v39 = v22[1];
  *(v32 + 96) = v37;
  *(v32 + 104) = v38;
  *(v32 + 64) = v38;
  *(v32 + 72) = v40;
  *(v32 + 80) = v39;

  sub_1C1B94BA8();

  v81 = a1;
  v41 = swift_dynamicCastClass();
  if (v41)
  {
    v42 = *(v41 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_orderVendor);
    v43 = *(v2 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_orderVendor);
    sub_1C1B948F8();
  }

  sub_1C1AC1F08(&qword_1EBF08DC8, &unk_1C1B9F390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1B98E60;
  v45 = *MEMORY[0x1E6989F78];
  v46 = v85;
  v47 = v82;
  v48 = v83;
  v80 = *(v85 + 104);
  v80(v82, v45, v83);
  v49 = sub_1C1B94A48();
  v51 = v50;
  v52 = *(v46 + 8);
  v85 = v46 + 8;
  v52(v47, v48);
  v53 = v52;
  *(inited + 32) = v49;
  *(inited + 40) = v51;
  v54 = *v22;
  v55 = v22[1];

  v56 = sub_1C1B94D78();

  *(inited + 48) = v56;
  v57 = sub_1C1AD408C(inited);
  swift_setDeallocating();
  sub_1C1AA7C8C(inited + 32, &unk_1EBF08DD0, &unk_1C1B9EF00);
  v58 = sub_1C1AB35FC();
  if (!v58)
  {
    v58 = sub_1C1AB3BEC(MEMORY[0x1E69E7CC0]);
  }

  v59 = v58;
  v60 = v79;
  v61 = v82;
  v62 = v83;
  v80(v82, *MEMORY[0x1E6989F20], v83);
  v63 = sub_1C1B94A48();
  v65 = v64;
  v53(v61, v62);
  v66 = v81;
  v67 = [v81 promotedContentIdentifier];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v86[0] = v59;
  sub_1C1AB7E20(v67, v63, v65, isUniquelyReferenced_nonNull_native, v86);

  v69 = v86[0];
  if (swift_dynamicCastClass())
  {
    swift_unknownObjectRetain();
    sub_1C1AB3CFC(1401, v57, v69);
    swift_unknownObjectRelease();
  }

  else
  {
  }

  sub_1C1AAD2FC(&qword_1EDE6CE68, v86);
  v70 = sub_1C1AAABE0(v86, v87);
  v71 = *v60;
  v72 = v60[1];

  v73 = [v66 promotedContentIdentifier];
  v74 = sub_1C1B94D88();
  v76 = v75;

  v77 = *v70;
  sub_1C1B4A4E4(v71, v72, v74, v76);

  return sub_1C1AA86F8(v86);
}

uint64_t sub_1C1B7EE58()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_diagnostics;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    v7 = xmmword_1C1BA41D0;
    v8 = 3;
    v4 = v3;
    sub_1C1ACCE70(&v7);
  }

  v5 = sub_1C1AB35FC();
  sub_1C1AB3CFC(1402, 0, v5);
}

void sub_1C1B7EF44()
{
  v1 = v0 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_unloadReason;
  *v1 = 9101;
  *(v1 + 8) = 0;
}

uint64_t sub_1C1B7EF7C(uint64_t a1)
{
  v2 = v1;
  v29[1] = a1;
  v3 = sub_1C1B94A58();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v29 - v9;
  v11 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_diagnostics;
  swift_beginAccess();
  v12 = *(v2 + v11);
  if (v12)
  {
    v30 = xmmword_1C1BA41E0;
    v31 = 3;
    v13 = v12;
    sub_1C1ACCE70(&v30);
  }

  v14 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_didUnload;
  swift_beginAccess();
  *(v2 + v14) = 1;
  sub_1C1AC1F08(&qword_1EBF08DC8, &unk_1C1B9F390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1B9AF30;
  v16 = v4[13];
  v16(v10, *MEMORY[0x1E6989F48], v3);
  v17 = sub_1C1B94A48();
  v19 = v18;
  v29[0] = v2;
  v20 = v4[1];
  v20(v10, v3);
  *(inited + 32) = v17;
  *(inited + 40) = v19;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v16(v8, *MEMORY[0x1E6989F60], v3);
  v21 = sub_1C1B94A48();
  v23 = v22;
  v20(v8, v3);
  *(inited + 56) = v21;
  *(inited + 64) = v23;
  v24 = *(v29[0] + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_unloadManager);
  [*(v24 + 16) lock];
  v25 = *(v24 + 32);
  [*(v24 + 16) unlock];
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v26 = sub_1C1AD408C(inited);
  swift_setDeallocating();
  sub_1C1AC1F08(&unk_1EBF08DD0, &unk_1C1B9EF00);
  swift_arrayDestroy();
  v27 = sub_1C1AB35FC();
  sub_1C1AB3CFC(1412, v26, v27);
}

void sub_1C1B7F484()
{
  v1 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_viewReady;
  if ((*(v0 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_viewReady) & 1) == 0)
  {
    v2 = v0;
    v3 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_diagnostics;
    swift_beginAccess();
    v4 = *(v2 + v3);
    if (v4)
    {
      v7 = xmmword_1C1BA41F0;
      v8 = 3;
      v5 = v4;
      sub_1C1ACCE70(&v7);
    }

    *(v2 + v1) = 1;
    v6 = sub_1C1AB35FC();
    sub_1C1AB3CFC(1404, 0, v6);
  }
}

uint64_t sub_1C1B7F588(char a1)
{
  v2 = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v5 = [Strong adType], swift_unknownObjectRelease(), v5 == 7))
  {
    if (a1)
    {
      v6 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_wasCollapsedOnScreen;
      result = swift_beginAccess();
      if (*(v2 + v6))
      {
        return result;
      }

      *(v2 + v6) = 1;
      v8 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_isCurrentlyOnScreen;
      swift_beginAccess();
      *(v2 + v8) = 0;
    }

    else
    {
      v17 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_isCurrentlyOnScreen;
      result = swift_beginAccess();
      if (*(v2 + v17))
      {
        return result;
      }

      v18 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_wasCollapsedOnScreen;
      swift_beginAccess();
      *(v2 + v18) = 0;
      v19 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_hasBeenOnScreen;
      swift_beginAccess();
      *(v2 + v19) = 1;
      *(v2 + v17) = 1;
    }
  }

  else
  {
    v9 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_isCurrentlyOnScreen;
    result = swift_beginAccess();
    if (*(v2 + v9))
    {
      return result;
    }

    v10 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_hasBeenOnScreen;
    swift_beginAccess();
    if ((*(v2 + v10) & 1) == 0 && (a1 & 1) == 0)
    {
      *(v2 + v10) = 1;
    }

    *(v2 + v9) = 1;
    sub_1C1B7D0A4();
  }

  v11 = sub_1C1B7F814(a1 & 1);
  v13 = v12;
  v14 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_diagnostics;
  swift_beginAccess();
  v15 = *(v2 + v14);
  if (v15)
  {
    v20 = xmmword_1C1BA4200;
    v21 = 3;
    v16 = v15;
    sub_1C1ACCE70(&v20);
  }

  sub_1C1AB3CFC(1405, v11, v13);
}

unint64_t sub_1C1B7F814(char a1)
{
  v2 = v1;
  v4 = sub_1C1B94A58();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v64 - v10;
  v12 = sub_1C1AD408C(MEMORY[0x1E69E7CC0]);
  v13 = [objc_opt_self() product];
  v68 = v11;
  if ((v13 | 2) == 2)
  {
    (*(v5 + 104))(v11, *MEMORY[0x1E6989FC0], v4);
    v14 = a1;
    v73 = sub_1C1B94A48();
    v16 = v15;
    (*(v5 + 8))(v11, v4);
    v17 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v79[0] = v12;
    sub_1C1AB31CC(v17, v73, v16, isUniquelyReferenced_nonNull_native, v79);

    v12 = v79[0];
  }

  v19 = sub_1C1AB35FC();
  v69 = v12;
  if (!v19)
  {
    v19 = sub_1C1AB3BEC(MEMORY[0x1E69E7CC0]);
  }

  v20 = v19;
  v21 = v68;
  v22 = *MEMORY[0x1E6989EC8];
  v71 = *(v5 + 104);
  v72 = v5 + 104;
  v71(v9, v22, v4);
  v23 = sub_1C1B94A48();
  v25 = v24;
  v26 = *(v5 + 8);
  v73 = v5 + 8;
  v70 = v26;
  v26(v9, v4);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v28 = [Strong placeholder];
    swift_unknownObjectRelease();
  }

  else
  {
    v28 = 0;
  }

  v29 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  v30 = swift_isUniquelyReferenced_nonNull_native();
  v78[0] = v20;
  sub_1C1AB7E20(v29, v23, v25, v30, v78);

  v31 = v78[0];
  v32 = swift_unknownObjectWeakLoadStrong();
  if (v32)
  {
    v33 = [v32 adType];
    swift_unknownObjectRelease();
    v71(v21, *MEMORY[0x1E6989F58], v4);
    v34 = sub_1C1B94A48();
    v35 = v31;
    v37 = v36;
    v70(v21, v4);
    v38 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    v39 = swift_isUniquelyReferenced_nonNull_native();
    v78[0] = v35;
    sub_1C1AB7E20(v38, v34, v37, v39, v78);

    v31 = v78[0];
  }

  v40 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_unfilledReasons;
  swift_beginAccess();
  v41 = *(v2 + v40);
  if (v41)
  {
    v66 = v31;
    v67 = v2;
    v42 = *(v41 + 16);
    v43 = MEMORY[0x1E69E7CC0];
    if (v42)
    {
      v65 = v4;
      v77[0] = MEMORY[0x1E69E7CC0];

      sub_1C1B95518();
      v44 = 32;
      do
      {
        v45 = *(v41 + v44);
        [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
        sub_1C1B954F8();
        v46 = *(v77[0] + 16);
        sub_1C1B95528();
        sub_1C1B95538();
        sub_1C1B95508();
        v44 += 8;
        --v42;
      }

      while (v42);

      v43 = v77[0];
      v4 = v65;
    }

    v71(v21, *MEMORY[0x1E6989F88], v4);
    v47 = sub_1C1B94A48();
    v49 = v48;
    v70(v21, v4);
    sub_1C1B63274(v43);

    v50 = objc_allocWithZone(MEMORY[0x1E695DEC8]);
    v51 = sub_1C1B94EB8();

    v52 = [v50 initWithArray_];

    v53 = v66;
    v54 = swift_isUniquelyReferenced_nonNull_native();
    v77[0] = v53;
    sub_1C1AB7E20(v52, v47, v49, v54, v77);

    v2 = v67;
  }

  v55 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_diagnostics;
  swift_beginAccess();
  v56 = *(v2 + v55);
  if (v56)
  {
    v57 = *&v56[OBJC_IVAR____TtC15PromotedContent31JourneyMetricsHelperDiagnostics_lastReadyIdentifier + 8];
    if (v57)
    {
      if (*(v2 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_viewReady) == 1)
      {
        v58 = *&v56[OBJC_IVAR____TtC15PromotedContent31JourneyMetricsHelperDiagnostics_lastReadyIdentifier];
        v59 = (v2 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_promotedContentIdentifier);
        swift_beginAccess();
        if ((v58 != *v59 || v57 != v59[1]) && (sub_1C1B95888() & 1) == 0)
        {
          v74 = 0;
          v75 = 0xE000000000000000;

          v60 = v56;
          sub_1C1B95468();
          MEMORY[0x1C6906DF0](0xD00000000000001DLL, 0x80000001C1BACE60);
          MEMORY[0x1C6906DF0](v58, v57);

          MEMORY[0x1C6906DF0](0xD000000000000012, 0x80000001C1BACE80);
          v62 = *v59;
          v61 = v59[1];

          MEMORY[0x1C6906DF0](v62, v61);

          v76 = 2;
          sub_1C1ACCE70(&v74);

          sub_1C1ACCBB8(v74, v75, v76);
        }
      }
    }
  }

  return v69;
}

void *sub_1C1B7FF1C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, double a5)
{
  v6 = v5;
  v147 = a4;
  v149 = a2;
  v146 = a1;
  v9 = sub_1C1B94A58();
  v10 = *(v9 - 8);
  v11 = v10[8];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v144 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C1B95048();
  sub_1C1AC1F08(&qword_1EBF08DC8, &unk_1C1B9F390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1B98E60;
  v16 = *MEMORY[0x1E6989FB0];
  v152 = v10[13];
  v153 = v10 + 13;
  v152(v13, v16, v9);
  v17 = sub_1C1B94A48();
  v19 = v18;
  v20 = v10[1];
  v154 = v13;
  v155 = v10 + 1;
  v156 = v9;
  v20(v13, v9);
  *(inited + 32) = v17;
  *(inited + 40) = v19;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v21 = sub_1C1AD408C(inited);
  swift_setDeallocating();
  sub_1C1AA7C8C(inited + 32, &unk_1EBF08DD0, &unk_1C1B9EF00);
  v22 = [objc_opt_self() product];
  v150 = v20;
  v148 = v6;
  if (!v22 || v22 == 2)
  {
    v33 = v154;
    v34 = a3;
    v35 = v21;
    v36 = v156;
    v37 = v152;
    v152(v154, *MEMORY[0x1E6989FA0], v156);
    v38 = sub_1C1B94A48();
    v40 = v39;
    v150(v33, v36);
    v41 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    v42 = [v41 initWithInteger_];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v159[0] = v35;
    a3 = v34;
    sub_1C1AB31CC(v42, v38, v40, isUniquelyReferenced_nonNull_native, v159);

    v44 = v159[0];
    v37(v33, *MEMORY[0x1E6989FC0], v36);
    v20 = v150;
    v45 = sub_1C1B94A48();
    v47 = v46;
    v20(v33, v36);
    v48 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    v32 = v147;
    v49 = [v48 initWithBool_];
    v50 = swift_isUniquelyReferenced_nonNull_native();
    v159[0] = v44;
    sub_1C1AB31CC(v49, v45, v47, v50, v159);

    v21 = v159[0];
  }

  else
  {
    if (v22 == 1)
    {
      v23 = a3;
      v24 = v21;
      v25 = v154;
      v26 = v156;
      v152(v154, *MEMORY[0x1E6989FA0], v156);
      v27 = sub_1C1B94A48();
      v29 = v28;
      v20(v25, v26);
      v30 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      v31 = swift_isUniquelyReferenced_nonNull_native();
      v159[0] = v24;
      a3 = v23;
      sub_1C1AB31CC(v30, v27, v29, v31, v159);

      v21 = v159[0];
    }

    v32 = v147;
  }

  v51 = v149;
  if ((a3 & 0x100000000) == 0)
  {
    v52 = a3;
    v53 = v154;
    v54 = v156;
    v152(v154, *MEMORY[0x1E6989EF8], v156);
    v55 = sub_1C1B94A48();
    v57 = v56;
    v20(v53, v54);
    v58 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    LODWORD(v59) = v52;
    v60 = [v58 initWithFloat_];
    v61 = swift_isUniquelyReferenced_nonNull_native();
    v159[0] = v21;
    sub_1C1AB31CC(v60, v55, v57, v61, v159);

    v21 = v159[0];
  }

  v62 = v148;
  v63 = sub_1C1AB35FC();
  v144 = v21;
  if (!v63)
  {
    v63 = sub_1C1AB3BEC(MEMORY[0x1E69E7CC0]);
  }

  v64 = v63;
  v65 = v154;
  v66 = v156;
  v152(v154, *MEMORY[0x1E6989FD0], v156);
  v67 = sub_1C1B94A48();
  v69 = v68;
  v20(v65, v66);
  v70 = sub_1C1B94538();
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v159[0] = v64;
  sub_1C1AB7E20(v70, v67, v69, v71, v159);

  v72 = v159[0];
  v73 = *(sub_1C1B7CC04() + 16);

  if (v73)
  {
    v145 = v72;
    v74 = *(v62 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper____lazy_storage___shownSet);
    v75 = *(v74 + 16);
    v76 = MEMORY[0x1E69E7CC0];
    if (v75)
    {
      v159[0] = MEMORY[0x1E69E7CC0];
      v157 = v74;

      sub_1C1B95518();
      v77 = v157 + 56;
      v78 = -1 << *(v157 + 32);
      v79 = sub_1C1B95328();
      result = v157;
      v81 = 0;
      v151 = v157 + 64;
      while ((v79 & 0x8000000000000000) == 0 && v79 < 1 << *(result + 32))
      {
        v83 = v79 >> 6;
        if ((*(v77 + 8 * (v79 >> 6)) & (1 << v79)) == 0)
        {
          goto LABEL_55;
        }

        v84 = *(result + 9);
        v85 = *(result[6] + v79);
        v86 = objc_allocWithZone(MEMORY[0x1E696AD98]);
        [v86 initWithUnsignedChar_];
        sub_1C1B954F8();
        v87 = *(v159[0] + 16);
        sub_1C1B95528();
        sub_1C1B95538();
        sub_1C1B95508();
        result = v157;
        v82 = 1 << *(v157 + 32);
        if (v79 >= v82)
        {
          goto LABEL_56;
        }

        v88 = *(v77 + 8 * v83);
        if ((v88 & (1 << v79)) == 0)
        {
          goto LABEL_57;
        }

        if (v84 != *(v157 + 36))
        {
          goto LABEL_58;
        }

        v89 = v88 & (-2 << (v79 & 0x3F));
        if (v89)
        {
          v82 = __clz(__rbit64(v89)) | v79 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v90 = v83 << 6;
          v91 = v83 + 1;
          v92 = (v151 + 8 * v83);
          while (v91 < (v82 + 63) >> 6)
          {
            v94 = *v92++;
            v93 = v94;
            v90 += 64;
            ++v91;
            if (v94)
            {
              sub_1C1B616D0(v79, v84, 0);
              result = v157;
              v82 = __clz(__rbit64(v93)) + v90;
              goto LABEL_15;
            }
          }

          sub_1C1B616D0(v79, v84, 0);
          result = v157;
        }

LABEL_15:
        ++v81;
        v79 = v82;
        if (v81 == v75)
        {

          v76 = v159[0];
          v62 = v148;
          v32 = v147;
          goto LABEL_30;
        }
      }

      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

LABEL_30:
    v95 = v154;
    v96 = v156;
    v152(v154, *MEMORY[0x1E6989EE8], v156);
    v97 = sub_1C1B94A48();
    v99 = v98;
    v20 = v150;
    v150(v95, v96);
    sub_1C1B63274(v76);

    v100 = objc_allocWithZone(MEMORY[0x1E695DEC8]);
    v101 = sub_1C1B94EB8();

    v102 = [v100 initWithArray_];

    v103 = v145;
    v104 = swift_isUniquelyReferenced_nonNull_native();
    v159[0] = v103;
    sub_1C1AB7E20(v102, v97, v99, v104, v159);

    v72 = v159[0];
    v51 = v149;
  }

  v105 = *(sub_1C1B7CC10() + 16);

  if (!v105)
  {
LABEL_51:
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v135 = [Strong adType];
      swift_unknownObjectRelease();
      v136 = v154;
      v137 = v72;
      v138 = v156;
      v152(v154, *MEMORY[0x1E6989F58], v156);
      v139 = sub_1C1B94A48();
      v141 = v140;
      v20(v136, v138);
      v142 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      v143 = swift_isUniquelyReferenced_nonNull_native();
      v158 = v137;
      sub_1C1AB7E20(v142, v139, v141, v143, &v158);

      v72 = v158;
    }

    sub_1C1AB3CFC(1406, v144, v72);

    return sub_1C1B82D74(v146, v51, v32 & 1, a5);
  }

  v145 = v72;
  v106 = *(v62 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper____lazy_storage___partiallyShownSet);
  v107 = *(v106 + 16);
  v108 = MEMORY[0x1E69E7CC0];
  if (!v107)
  {
LABEL_50:
    v124 = v154;
    v125 = v156;
    v152(v154, *MEMORY[0x1E6989F28], v156);
    v126 = sub_1C1B94A48();
    v128 = v127;
    v20 = v150;
    v150(v124, v125);
    sub_1C1B63274(v108);

    v129 = objc_allocWithZone(MEMORY[0x1E695DEC8]);
    v130 = sub_1C1B94EB8();

    v131 = [v129 initWithArray_];

    v132 = v145;
    v133 = swift_isUniquelyReferenced_nonNull_native();
    v159[0] = v132;
    sub_1C1AB7E20(v131, v126, v128, v133, v159);

    v72 = v159[0];
    goto LABEL_51;
  }

  v159[0] = MEMORY[0x1E69E7CC0];
  v157 = v106;

  sub_1C1B95518();
  v109 = v157 + 56;
  v110 = -1 << *(v157 + 32);
  v111 = sub_1C1B95328();
  result = v157;
  v112 = 0;
  v151 = v157 + 64;
  while ((v111 & 0x8000000000000000) == 0 && v111 < 1 << *(result + 32))
  {
    v114 = v111 >> 6;
    if ((*(v109 + 8 * (v111 >> 6)) & (1 << v111)) == 0)
    {
      goto LABEL_60;
    }

    v115 = *(result + 9);
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedChar_];
    sub_1C1B954F8();
    v116 = *(v159[0] + 16);
    sub_1C1B95528();
    sub_1C1B95538();
    sub_1C1B95508();
    result = v157;
    v113 = 1 << *(v157 + 32);
    if (v111 >= v113)
    {
      goto LABEL_61;
    }

    v117 = *(v109 + 8 * v114);
    if ((v117 & (1 << v111)) == 0)
    {
      goto LABEL_62;
    }

    if (v115 != *(v157 + 36))
    {
      goto LABEL_63;
    }

    v118 = v117 & (-2 << (v111 & 0x3F));
    if (v118)
    {
      v113 = __clz(__rbit64(v118)) | v111 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v119 = v114 << 6;
      v120 = v114 + 1;
      v121 = (v151 + 8 * v114);
      while (v120 < (v113 + 63) >> 6)
      {
        v123 = *v121++;
        v122 = v123;
        v119 += 64;
        ++v120;
        if (v123)
        {
          sub_1C1B616D0(v111, v115, 0);
          result = v157;
          v113 = __clz(__rbit64(v122)) + v119;
          goto LABEL_35;
        }
      }

      sub_1C1B616D0(v111, v115, 0);
      result = v157;
    }

LABEL_35:
    ++v112;
    v111 = v113;
    if (v112 == v107)
    {

      v108 = v159[0];
      v32 = v147;
      v51 = v149;
      goto LABEL_50;
    }
  }

LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
  return result;
}

uint64_t sub_1C1B80E54(char a1)
{
  v2 = v1;
  v4 = sub_1C1B94A58();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v25[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v10 = [Strong adType], swift_unknownObjectRelease(), v10 == 7))
  {
    v11 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_wasCollapsedOnScreen;
    swift_beginAccess();
    if ((*(v2 + v11) & 1) == 0)
    {
      v12 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_isCurrentlyOnScreen;
      result = swift_beginAccess();
      if (*(v2 + v12) != 1)
      {
        return result;
      }
    }

    *(v2 + v11) = 0;
    v14 = (v2 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_isCurrentlyOnScreen);
    swift_beginAccess();
  }

  else
  {
    v14 = (v2 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_isCurrentlyOnScreen);
    result = swift_beginAccess();
    if (*v14 != 1)
    {
      return result;
    }
  }

  *v14 = 0;
  v15 = sub_1C1AD408C(MEMORY[0x1E69E7CC0]);
  if (([objc_opt_self() product] | 2) == 2)
  {
    (*(v5 + 104))(v8, *MEMORY[0x1E6989FC0], v4);
    v16 = sub_1C1B94A48();
    v18 = v17;
    (*(v5 + 8))(v8, v4);
    v19 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = v15;
    sub_1C1AB31CC(v19, v16, v18, isUniquelyReferenced_nonNull_native, &v28);

    v15 = v28;
  }

  v21 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_diagnostics;
  swift_beginAccess();
  v22 = *(v2 + v21);
  if (v22)
  {
    v26 = xmmword_1C1BA4210;
    v27 = 3;
    v23 = v22;
    sub_1C1ACCE70(&v26);
  }

  v24 = sub_1C1AB35FC();
  sub_1C1AB3CFC(1407, v15, v24);
}

uint64_t sub_1C1B8119C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = v5;
  v51 = a1;
  v11 = sub_1C1B94A58();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1B94508();
  v16 = v6 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_interactionTime;
  *v16 = v17;
  *(v16 + 8) = 0;
  *(v6 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_leftAdDestinationWasReported) = 0;
  if ((a2 & 0x100000000) != 0)
  {
    if (a3 & 0x100000000) != 0 && (a5)
    {
      v28 = 0;
      goto LABEL_14;
    }

    v50 = a5;
    v28 = sub_1C1AD408C(MEMORY[0x1E69E7CC0]);
    if ((a3 & 0x100000000) != 0)
    {
LABEL_3:
      LOBYTE(a5) = v50;
      if (v50)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v50 = a5;
    v18 = a4;
    v19 = sub_1C1AD408C(MEMORY[0x1E69E7CC0]);
    v20 = a2;
    (*(v12 + 104))(v15, *MEMORY[0x1E6989FD8], v11);
    v21 = sub_1C1B94A48();
    v23 = v22;
    (*(v12 + 8))(v15, v11);
    v24 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    LODWORD(v25) = v20;
    v26 = [v24 initWithFloat_];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = v19;
    sub_1C1AB31CC(v26, v21, v23, isUniquelyReferenced_nonNull_native, &v52);

    v28 = v52;
    a4 = v18;
    if ((a3 & 0x100000000) != 0)
    {
      goto LABEL_3;
    }
  }

  if (!v28)
  {
    LOBYTE(a5) = v50;
    goto LABEL_14;
  }

  (*(v12 + 104))(v15, *MEMORY[0x1E6989FE0], v11);
  v29 = sub_1C1B94A48();
  v31 = v30;
  (*(v12 + 8))(v15, v11);
  v32 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  LODWORD(v33) = a3;
  v34 = [v32 initWithFloat_];
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v52 = v28;
  sub_1C1AB31CC(v34, v29, v31, v35, &v52);

  v28 = v52;
  LOBYTE(a5) = v50;
  if (v50)
  {
    goto LABEL_14;
  }

LABEL_11:
  if (v28)
  {
    (*(v12 + 104))(v15, *MEMORY[0x1E6989F58], v11);
    v36 = sub_1C1B94A48();
    v38 = v37;
    (*(v12 + 8))(v15, v11);
    v39 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    v40 = swift_isUniquelyReferenced_nonNull_native();
    v52 = v28;
    sub_1C1AB31CC(v39, v36, v38, v40, &v52);

    v28 = v52;
  }

LABEL_14:
  v41 = sub_1C1AB35FC();
  if ((v51 & 0x100) == 0)
  {
    if (sub_1C1B952A8())
    {
      v42 = sub_1C1AB3BEC(MEMORY[0x1E69E7CC0]);

      v41 = v42;
LABEL_18:
      (*(v12 + 104))(v15, *MEMORY[0x1E6989F98], v11);
      v43 = sub_1C1B94A48();
      v45 = v44;
      (*(v12 + 8))(v15, v11);
      v46 = objc_allocWithZone(MEMORY[0x1E696AD98]);
      v47 = [v46 initWithUnsignedChar_];
      v48 = swift_isUniquelyReferenced_nonNull_native();
      v52 = v41;
      sub_1C1AB7E20(v47, v43, v45, v48, &v52);

      v41 = v52;
      goto LABEL_19;
    }

    if (v41)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  sub_1C1AB3CFC(1408, v28, v41);
  sub_1C1B81634(a4, a5 & 1);
}

void *sub_1C1B81634(uint64_t a1, char a2)
{
  v4 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v22 - v9;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    if ([result adType] && objc_msgSend(v12, sel_adType) != 7)
    {
      return swift_unknownObjectRelease();
    }

    if ([v12 placeholder])
    {
      return swift_unknownObjectRelease();
    }

    v13 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_didImpress;
    swift_beginAccess();
    if (*(v2 + v13))
    {
      return swift_unknownObjectRelease();
    }

    if (a2)
    {
      return swift_unknownObjectRelease();
    }

    v14 = sub_1C1B94978();
    if (v14 == sub_1C1B94978())
    {
      return swift_unknownObjectRelease();
    }

    else
    {
      v15 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_internalImpressionStartDate;
      swift_beginAccess();
      sub_1C1ABB0C4(v2 + v15, v8);
      v16 = sub_1C1B94588();
      v17 = *(v16 - 8);
      v18 = *(v17 + 48);
      if (v18(v8, 1, v16) == 1)
      {
        sub_1C1B94578();
        swift_unknownObjectRelease();
        if (v18(v8, 1, v16) != 1)
        {
          sub_1C1AA7C8C(v8, &qword_1EBF07F50, &qword_1C1B9A590);
        }
      }

      else
      {
        swift_unknownObjectRelease();
        (*(v17 + 32))(v10, v8, v16);
      }

      (*(v17 + 56))(v10, 0, 1, v16);
      v19 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_impressionStartDate;
      swift_beginAccess();
      sub_1C1AABE90(v10, v2 + v19);
      swift_endAccess();
      v20 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_impressionDuration;
      swift_beginAccess();
      *(v2 + v20) = 0;
      v21 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_isClickImpression;
      result = swift_beginAccess();
      *(v2 + v21) = 1;
      *(v2 + v13) = 1;
    }
  }

  return result;
}

uint64_t sub_1C1B81AF0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C1B94A58();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1B94508();
  v9 = v2 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_interactionTime;
  *v9 = v10;
  *(v9 + 8) = 0;
  *(v2 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_leftAdDestinationWasReported) = 0;
  v11 = sub_1C1AD408C(MEMORY[0x1E69E7CC0]);
  (*(v5 + 104))(v8, *MEMORY[0x1E6989F58], v4);
  v12 = sub_1C1B94A48();
  v14 = v13;
  (*(v5 + 8))(v8, v4);
  v15 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = v11;
  sub_1C1AB31CC(v15, v12, v14, isUniquelyReferenced_nonNull_native, &v21);

  v17 = v21;
  v18 = sub_1C1AB35FC();
  sub_1C1AB3CFC(1408, v17, v18);

  sub_1C1B81634(a1, 0);
}

uint64_t sub_1C1B81D7C(char a1, double a2)
{
  v5 = sub_1C1B94A58();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x1EEE9AC00](v5);
  v42 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v40 - v10;
  swift_beginAccess();
  v43 = v2;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v13 = [Strong bestRepresentation], swift_unknownObjectRelease(), v13) && (v14 = objc_msgSend(v13, sel_tapAction), swift_unknownObjectRelease(), v14))
  {
    v15 = *&v14[OBJC_IVAR___APPCTapAction_confirmedClickInterval];

    v41 = 0;
    v16 = v15 * 10.0;
    if ((a1 & 1) == 0)
    {
      v16 = v15;
    }

    v17 = v16 * 1000.0;
  }

  else
  {
    if (qword_1EBF076E8 != -1)
    {
      swift_once();
    }

    if (byte_1EBF09A58)
    {
      v41 = 0;
      v17 = 1000.0;
      if (a1)
      {
        v17 = 10000.0;
      }
    }

    else
    {
      v18 = &qword_1EBF09A40;
      v41 = qword_1EBF09A50;
      if (a1)
      {
        v18 = algn_1EBF09A48;
      }

      v17 = *v18;
    }
  }

  v19 = a2 * 1000.0;
  if (a2 * 1000.0 >= v17 * 0.1)
  {
    if (v19 >= v17 * 0.25)
    {
      if (v19 >= v17 * 0.5)
      {
        v20 = 8104;
        v21 = 8105;
        v22 = 8106;
        v23 = 8107;
        v24 = 8108;
        v25 = 8110;
        if (v19 < v17 + v17)
        {
          v25 = 8109;
        }

        if (v19 >= v17 * 1.75)
        {
          v24 = v25;
        }

        if (v19 >= v17 * 1.5)
        {
          v23 = v24;
        }

        if (v19 >= v17 * 1.25)
        {
          v22 = v23;
        }

        if (v19 >= v17)
        {
          v21 = v22;
        }

        if (v19 >= v17 * 0.75)
        {
          v20 = v21;
        }
      }

      else
      {
        v20 = 8103;
      }
    }

    else
    {
      v20 = 8102;
    }
  }

  else
  {
    v20 = 8101;
  }

  v40 = v20;
  sub_1C1AC1F08(&qword_1EBF08DC8, &unk_1C1B9F390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1B9AF30;
  v27 = v6[13];
  v27(v11, *MEMORY[0x1E6989EC0], v5);
  v28 = sub_1C1B94A48();
  v30 = v29;
  v31 = v6[1];
  v31(v11, v5);
  *(inited + 32) = v28;
  *(inited + 40) = v30;
  v32 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  *(inited + 48) = [v32 initWithInteger_];
  v33 = v42;
  v27(v42, *MEMORY[0x1E6989EE0], v5);
  v34 = sub_1C1B94A48();
  v36 = v35;
  v31(v33, v5);
  *(inited + 56) = v34;
  *(inited + 64) = v36;
  v37 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  *(inited + 72) = [v37 initWithInteger_];
  v38 = sub_1C1AD408C(inited);
  swift_setDeallocating();
  sub_1C1AC1F08(&unk_1EBF08DD0, &unk_1C1B9EF00);
  swift_arrayDestroy();
  sub_1C1AB3CFC(1409, v38, 0);
}

uint64_t sub_1C1B821E4(uint64_t a1)
{
  v3 = v1;
  v4 = sub_1C1B94A58();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1B94508();
  v9 = v3 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_interactionTime;
  *v9 = v10;
  *(v9 + 8) = 0;
  *(v3 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_leftAdDestinationWasReported) = 0;
  v11 = sub_1C1AD408C(MEMORY[0x1E69E7CC0]);
  (*(v5 + 104))(v8, *MEMORY[0x1E6989F58], v4);
  v12 = sub_1C1B94A48();
  v14 = v13;
  (*(v5 + 8))(v8, v4);
  v15 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = v11;
  sub_1C1AB31CC(v15, v12, v14, isUniquelyReferenced_nonNull_native, &v21);

  v17 = v21;
  v18 = sub_1C1AB35FC();
  sub_1C1AB3CFC(1408, v17, v18);

  sub_1C1B81634(a1, 0);
}

uint64_t sub_1C1B82478(uint64_t a1, void (*a2)(uint64_t, void, unint64_t, void))
{
  v4 = sub_1C1AB35FC();
  a2(a1, 0, v4, 0);
}

void sub_1C1B824F8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v1 = [Strong serverUnfilledReason], swift_unknownObjectRelease(), v1 == 200))
  {
    v2 = sub_1C1AB35FC();
    sub_1C1B7D8F0(77001, 0, v2);
  }

  else
  {
    sub_1C1B95138();
    sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
    v3 = sub_1C1B95298();
    sub_1C1B94BA8();
  }
}

void sub_1C1B82678(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_1C1B94A58();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v20[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *a1;
  v10 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_diagnostics;
  swift_beginAccess();
  v11 = *(v2 + v10);
  if (v11)
  {
    v21[0] = v9;
    v21[1] = 0;
    v22 = 0;
    v12 = v11;
    sub_1C1ACCE70(v21);
  }

  if ((v9 & 2) != 0)
  {
    v13 = 2607;
  }

  else
  {
    if ((v9 & 1) == 0)
    {
      return;
    }

    v13 = 2606;
  }

  sub_1C1AC1F08(&qword_1EBF08DC8, &unk_1C1B9F390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1B98E60;
  (*(v5 + 104))(v8, *MEMORY[0x1E6989F48], v4);
  v15 = sub_1C1B94A48();
  v17 = v16;
  (*(v5 + 8))(v8, v4);
  *(inited + 32) = v15;
  *(inited + 40) = v17;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v18 = sub_1C1AD408C(inited);
  swift_setDeallocating();
  sub_1C1AA7C8C(inited + 32, &unk_1EBF08DD0, &unk_1C1B9EF00);
  v19 = sub_1C1AB35FC();
  sub_1C1AB3CFC(1201, v18, v19);

  *(v2 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_stop) = 1;
}

uint64_t sub_1C1B828A8(uint64_t a1, double a2)
{
  v41[1] = a1;
  v3 = sub_1C1B94A58();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = MEMORY[0x1EEE9AC00](v3);
  v44 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v42 = v41 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v41[0] = v41 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v41 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = v41 - v15;
  sub_1C1AC1F08(&qword_1EBF08DC8, &unk_1C1B9F390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1B9C9C0;
  v18 = v4[13];
  v18(v16, *MEMORY[0x1E6989FB0], v3);
  v19 = sub_1C1B94A48();
  v21 = v20;
  v22 = v4[1];
  v22(v16, v3);
  *(inited + 32) = v19;
  v43 = inited + 32;
  *(inited + 40) = v21;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v18(v14, *MEMORY[0x1E6989FD0], v3);
  v23 = sub_1C1B94A48();
  v25 = v24;
  v22(v14, v3);
  *(inited + 56) = v23;
  *(inited + 64) = v25;
  *(inited + 72) = sub_1C1B94538();
  v26 = v41[0];
  v18(v41[0], *MEMORY[0x1E6989FA0], v3);
  v27 = sub_1C1B94A48();
  v29 = v28;
  v22(v26, v3);
  *(inited + 80) = v27;
  *(inited + 88) = v29;
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v30 = v42;
  v18(v42, *MEMORY[0x1E6989FC0], v3);
  v31 = sub_1C1B94A48();
  v33 = v32;
  v22(v30, v3);
  *(inited + 104) = v31;
  *(inited + 112) = v33;
  *(inited + 120) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  v34 = v44;
  v18(v44, *MEMORY[0x1E6989F50], v3);
  v35 = v34;
  v36 = sub_1C1B94A48();
  v38 = v37;
  v22(v35, v3);
  *(inited + 128) = v36;
  *(inited + 136) = v38;
  *(inited + 144) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  v39 = sub_1C1AD408C(inited);
  swift_setDeallocating();
  sub_1C1AC1F08(&unk_1EBF08DD0, &unk_1C1B9EF00);
  swift_arrayDestroy();
  sub_1C1AB3CFC(1406, v39, 0);
}

id JourneyMetricsHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void *sub_1C1B82D74(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v9 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v30[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v30[-v14];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = result;
    if ([result adType] && objc_msgSend(v17, sel_adType) != 7)
    {
      return swift_unknownObjectRelease();
    }

    else
    {
      v18 = [v17 placeholder];
      result = swift_unknownObjectRelease();
      if ((v18 & 1) == 0 && (a3 & 1) == 0)
      {
        v19 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_didImpress;
        result = swift_beginAccess();
        if ((*(v4 + v19) & 1) == 0)
        {
          if (a1 > 49)
          {
            v22 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_internalImpressionStartDate;
            swift_beginAccess();
            sub_1C1ABB0C4(v4 + v22, v13);
            v23 = sub_1C1B94588();
            v24 = *(v23 - 8);
            v25 = (*(v24 + 48))(v13, 1, v23);
            sub_1C1AA7C8C(v13, &qword_1EBF07F50, &qword_1C1B9A590);
            if (v25 == 1)
            {
              (*(v24 + 16))(v15, a2, v23);
              (*(v24 + 56))(v15, 0, 1, v23);
              swift_beginAccess();
              sub_1C1AABE90(v15, v4 + v22);
              swift_endAccess();
            }

            v26 = *(v4 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_internalAccumulatedImpressionDuration) + a4;
            *(v4 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_internalAccumulatedImpressionDuration) = v26;
            v27 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_impressionThresholdDuration;
            result = swift_beginAccess();
            if (*(v4 + v27) <= v26)
            {
              v28 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_impressionDuration;
              swift_beginAccess();
              *(v4 + v28) = v26;
              sub_1C1ABB0C4(v4 + v22, v15);
              v29 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_impressionStartDate;
              swift_beginAccess();
              sub_1C1AABE90(v15, v4 + v29);
              result = swift_endAccess();
              *(v4 + v19) = 1;
            }
          }

          else
          {
            v20 = sub_1C1B94588();
            (*(*(v20 - 8) + 56))(v15, 1, 1, v20);
            v21 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_internalImpressionStartDate;
            swift_beginAccess();
            sub_1C1AABE90(v15, v4 + v21);
            result = swift_endAccess();
            *(v4 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_internalAccumulatedImpressionDuration) = 0;
          }
        }
      }
    }
  }

  return result;
}

Swift::Void __swiftcall JourneyMetricsHelper.updateElementsShown(shown:partiallyShown:)(Swift::OpaquePointer shown, Swift::OpaquePointer partiallyShown)
{
  v3 = v2;
  v6 = sub_1C1B7CC04();
  v23 = v6;
  v7 = *(shown._rawValue + 2);
  if (v7)
  {
    v8 = shown._rawValue + 32;
    do
    {
      v9 = *v8++;
      sub_1C1B834A8(&v22, v9);
      --v7;
    }

    while (v7);
    v6 = v23;
  }

  v10 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper____lazy_storage___shownSet;
  v11 = *(v2 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper____lazy_storage___shownSet);
  *(v2 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper____lazy_storage___shownSet) = v6;

  v12 = sub_1C1B7CC10();
  v23 = v12;
  v13 = *(partiallyShown._rawValue + 2);
  if (v13)
  {
    v14 = partiallyShown._rawValue + 32;
    do
    {
      v15 = *v14++;
      sub_1C1B834A8(&v22, v15);
      --v13;
    }

    while (v13);
    v16 = v23;
  }

  else
  {
    v16 = v12;
  }

  v17 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper____lazy_storage___partiallyShownSet;
  v18 = *(v3 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper____lazy_storage___partiallyShownSet);
  *(v3 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper____lazy_storage___partiallyShownSet) = v16;

  v19 = *(v3 + v10);
  v23 = v16;

  sub_1C1B858F0(v20);

  v21 = *(v3 + v17);
  *(v3 + v17) = v23;
}

Swift::String __swiftcall JourneyMetricsHelper.debugging()()
{
  v1 = [v0 debugDescription];
  v2 = sub_1C1B94D88();
  v4 = v3;

  v5 = v2;
  v6 = v4;
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

uint64_t sub_1C1B8338C(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 40);
  sub_1C1B95958();
  v8 = sub_1C1B94988();
  MEMORY[0x1C6907960](v8);
  v9 = sub_1C1B959A8();
  v10 = -1 << *(v6 + 32);
  v11 = v9 & ~v10;
  if ((*(v6 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = *(*(v6 + 48) + 8 * v11);
      v14 = sub_1C1B94988();
      if (v14 == sub_1C1B94988())
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v6 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    a2 = *(*(v6 + 48) + 8 * v11);
  }

  else
  {
LABEL_5:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_1C1B84250(a2, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1C1B834A8(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = MEMORY[0x1C6907930](*(*v2 + 40), a2, 1);
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v10 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_1C1B843BC(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1C1B83590(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1C1B95958();
  sub_1C1B94DE8();
  v9 = sub_1C1B959A8();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_1C1B95888() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_1C1B844E0(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1C1B836E0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1C1AC1F08(&qword_1EBF09B30, &qword_1C1BA4348);
    v2 = sub_1C1B95438();
    v16 = v2;
    sub_1C1B95368();
    if (sub_1C1B953D8())
    {
      type metadata accessor for AdResponseBlock(0);
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_1C1B83B14(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        result = sub_1C1B95268();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (sub_1C1B953D8());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1C1B838C0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1C1AC1F08(&qword_1EBF09B28, &qword_1C1BA4340);
  result = sub_1C1B95428();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_1C1B95958();
      v20 = sub_1C1B94988();
      MEMORY[0x1C6907960](v20);
      result = sub_1C1B959A8();
      v21 = -1 << *(v6 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v13 + 8 * v23);
          if (v27 != -1)
          {
            v14 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v28;
    }

    v2 = v29;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1C1B83B14(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1C1AC1F08(&qword_1EBF09B30, &qword_1C1BA4348);
  result = sub_1C1B95428();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      result = sub_1C1B95268();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1C1B83D3C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1C1AC1F08(&unk_1EBF09B10, &qword_1C1BA4318);
  result = sub_1C1B95428();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + (v15 | (v7 << 6)));
      result = MEMORY[0x1C6907930](*(v6 + 40), v18, 1);
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1C1B83F6C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1C1AC1F08(&qword_1EBF09B38, &qword_1C1BA4350);
  result = sub_1C1B95428();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_1C1B95958();
      sub_1C1B94DE8();
      result = sub_1C1B959A8();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_1C1B841CC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_1C1B95268();
  v5 = -1 << *(a2 + 32);
  result = sub_1C1B95348();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_1C1B84250(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1C1B838C0(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_1C1B84660();
      goto LABEL_12;
    }

    sub_1C1B84B8C(v7 + 1);
  }

  v9 = *v3;
  v10 = *(*v3 + 40);
  sub_1C1B95958();
  v11 = sub_1C1B94988();
  MEMORY[0x1C6907960](v11);
  result = sub_1C1B959A8();
  v12 = -1 << *(v9 + 32);
  a2 = result & ~v12;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    do
    {
      v14 = *(*(v9 + 48) + 8 * a2);
      v15 = sub_1C1B94988();
      result = sub_1C1B94988();
      if (v15 == result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v13;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v16 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v16 + 48) + 8 * a2) = v6;
  v17 = *(v16 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v16 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1C1B958D8();
  __break(1u);
  return result;
}

uint64_t sub_1C1B843BC(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1C1B83D3C(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1C1B848F0();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1C1B84DB0(v5 + 1);
  }

  v8 = *v3;
  result = MEMORY[0x1C6907930](*(*v3 + 40), v4, 1);
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1C1B958D8();
  __break(1u);
  return result;
}

uint64_t sub_1C1B844E0(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1C1B83F6C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1C1B84A30();
      goto LABEL_16;
    }

    sub_1C1B84FA4(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_1C1B95958();
  sub_1C1B94DE8();
  result = sub_1C1B959A8();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1C1B95888();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1C1B958D8();
  __break(1u);
  return result;
}

void *sub_1C1B84660()
{
  v1 = v0;
  sub_1C1AC1F08(&qword_1EBF09B28, &qword_1C1BA4340);
  v2 = *v0;
  v3 = sub_1C1B95418();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

id sub_1C1B847A0()
{
  v1 = v0;
  sub_1C1AC1F08(&qword_1EBF09B30, &qword_1C1BA4348);
  v2 = *v0;
  v3 = sub_1C1B95418();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_1C1B848F0()
{
  v1 = v0;
  sub_1C1AC1F08(&unk_1EBF09B10, &qword_1C1BA4318);
  v2 = *v0;
  v3 = sub_1C1B95418();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_1C1B84A30()
{
  v1 = v0;
  sub_1C1AC1F08(&qword_1EBF09B38, &qword_1C1BA4350);
  v2 = *v0;
  v3 = sub_1C1B95418();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_1C1B84B8C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1C1AC1F08(&qword_1EBF09B28, &qword_1C1BA4340);
  result = sub_1C1B95428();
  v6 = result;
  if (*(v3 + 16))
  {
    v27 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_1C1B95958();
      v19 = sub_1C1B94988();
      MEMORY[0x1C6907960](v19);
      result = sub_1C1B959A8();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v27;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1C1B84DB0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1C1AC1F08(&unk_1EBF09B10, &qword_1C1BA4318);
  result = sub_1C1B95428();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
      result = MEMORY[0x1C6907930](*(v6 + 40), v17, 1);
      v18 = -1 << *(v6 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_1C1B84FA4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1C1AC1F08(&qword_1EBF09B38, &qword_1C1BA4350);
  result = sub_1C1B95428();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_1C1B95958();

      sub_1C1B94DE8();
      result = sub_1C1B959A8();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1C1B851DC(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    v5 = *v1;

    v6 = a1;
    v7 = sub_1C1B953E8();

    if (v7)
    {
      v8 = sub_1C1B85470();

      return v8;
    }

    return 0;
  }

  v10 = v1;
  type metadata accessor for AdResponseBlock(0);
  v11 = *(v3 + 40);
  v12 = sub_1C1B95268();
  v13 = -1 << *(v3 + 32);
  v14 = v12 & ~v13;
  if (((*(v3 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
    return 0;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v3 + 48) + 8 * v14);
    v17 = sub_1C1B95278();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v3 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      return 0;
    }
  }

  v18 = *v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v10;
  v22 = *v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1C1B847A0();
    v20 = v22;
  }

  v21 = *(*(v20 + 48) + 8 * v14);
  sub_1C1B855C8(v14);
  result = v21;
  *v10 = v22;
  return result;
}

uint64_t sub_1C1B85364(unsigned __int8 a1)
{
  v3 = *v1;
  v4 = 1;
  v5 = MEMORY[0x1C6907930](*(*v1 + 40), a1, 1);
  v6 = -1 << *(v3 + 32);
  v7 = v5 & ~v6;
  if ((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    while (*(*(v3 + 48) + v7) != a1)
    {
      v7 = (v7 + 1) & v8;
      if (((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        v9 = 0;
        v4 = 1;
        return v9 | (v4 << 8);
      }
    }

    v10 = *v1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v1;
    v14 = *v1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1C1B848F0();
      v12 = v14;
    }

    v9 = *(*(v12 + 48) + v7);
    sub_1C1B85768(v7);
    v4 = 0;
    *v1 = v14;
  }

  else
  {
    v9 = 0;
  }

  return v9 | (v4 << 8);
}

uint64_t sub_1C1B85470()
{
  v1 = v0;
  v2 = *v0;

  v3 = sub_1C1B953A8();
  v4 = swift_unknownObjectRetain();
  v5 = sub_1C1B836E0(v4, v3);
  v15 = v5;
  v6 = *(v5 + 40);

  v7 = sub_1C1B95268();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    type metadata accessor for AdResponseBlock(0);
    while (1)
    {
      v11 = *(*(v5 + 48) + 8 * v9);
      v12 = sub_1C1B95278();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v5 + 48) + 8 * v9);
  sub_1C1B855C8(v9);
  result = sub_1C1B95278();
  if (result)
  {
    *v1 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1C1B855C8(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_1C1B95338();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        v13 = sub_1C1B95268();

        v14 = v13 & v7;
        if (v2 >= v10)
        {
          if (v14 >= v10 && v2 >= v14)
          {
LABEL_16:
            v17 = *(v3 + 48);
            v18 = (v17 + 8 * v2);
            v19 = (v17 + 8 * v6);
            if (v2 != v6 || v18 >= v19 + 1)
            {
              *v18 = *v19;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v10 || v2 >= v14)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1C1B85768(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1C1B95338();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 48);
        v11 = (v10 + v6);
        v12 = MEMORY[0x1C6907930](*(v3 + 40), *(v10 + v6), 1) & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = (v10 + v2);
            if (v2 != v6 || v15 >= v11 + 1)
            {
              *v15 = *v11;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1C1B858F0(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        result = sub_1C1B85364(*(*(v2 + 48) + (v10 | (v9 << 6))));
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_1C1B859E4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1C1B86FE8();
  result = MEMORY[0x1C6907070](v2, MEMORY[0x1E6989E38], v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_1C1B8338C(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1C1B85A58(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C1B94A58();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v39 - v10;
  v12 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_hasBeenOnScreen;
  swift_beginAccess();
  if (*(v2 + v12))
  {
    v13 = sub_1C1AB35FC();
    if (!v13)
    {
      v13 = sub_1C1AB3BEC(MEMORY[0x1E69E7CC0]);
    }

    v14 = v13;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v16 = [Strong adType];
      swift_unknownObjectRelease();
      (*(v5 + 104))(v11, *MEMORY[0x1E6989F58], v4);
      v17 = sub_1C1B94A48();
      v19 = v18;
      (*(v5 + 8))(v11, v4);
      v20 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41[0] = v14;
      sub_1C1AB7E20(v20, v17, v19, isUniquelyReferenced_nonNull_native, v41);

      v14 = v41[0];
    }

    sub_1C1B7D8F0(77003, 0, v14);
  }

  else
  {
    sub_1C1AC1F08(&qword_1EBF08DC8, &unk_1C1B9F390);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C1B98E60;
    v24 = *MEMORY[0x1E6989F48];
    v40 = *(v5 + 104);
    v40(v11, v24, v4);
    v25 = sub_1C1B94A48();
    v27 = v26;
    v39 = *(v5 + 8);
    v39(v11, v4);
    *(inited + 32) = v25;
    *(inited + 40) = v27;
    *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    v28 = sub_1C1AD408C(inited);
    swift_setDeallocating();
    sub_1C1AA7C8C(inited + 32, &unk_1EBF08DD0, &unk_1C1B9EF00);
    v29 = sub_1C1AB35FC();
    if (!v29)
    {
      v29 = sub_1C1AB3BEC(MEMORY[0x1E69E7CC0]);
    }

    v30 = v29;
    v40(v9, *MEMORY[0x1E6989EC8], v4);
    v31 = sub_1C1B94A48();
    v33 = v32;
    v39(v9, v4);
    swift_beginAccess();
    v34 = swift_unknownObjectWeakLoadStrong();
    if (v34)
    {
      v35 = [v34 placeholder];
      swift_unknownObjectRelease();
    }

    else
    {
      v35 = 0;
    }

    v36 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    v37 = swift_isUniquelyReferenced_nonNull_native();
    v41[0] = v30;
    sub_1C1AB7E20(v36, v31, v33, v37, v41);

    sub_1C1AB3CFC(1202, v28, v41[0]);

    v38 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_isCurrentlyOnScreen;
    result = swift_beginAccess();
    *(v2 + v38) = 0;
    *(v2 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_viewReady) = 0;
    *(v2 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_hasBeenPlaced) = 0;
  }

  return result;
}

uint64_t sub_1C1B85ECC(uint64_t a1)
{
  v2 = sub_1C1B94A58();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1AC1F08(&qword_1EBF08DC8, &unk_1C1B9F390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1B98E60;
  (*(v3 + 104))(v6, *MEMORY[0x1E6989F58], v2);
  v8 = sub_1C1B94A48();
  v10 = v9;
  (*(v3 + 8))(v6, v2);
  *(inited + 32) = v8;
  *(inited + 40) = v10;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v11 = sub_1C1AD408C(inited);
  swift_setDeallocating();
  sub_1C1AA7C8C(inited + 32, &unk_1EBF08DD0, &unk_1C1B9EF00);
  v12 = sub_1C1AB35FC();
  sub_1C1AB3CFC(1408, v11, v12);
}

double sub_1C1B86088@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, double *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  result = *(v4 + v5);
  *a3 = result;
  return result;
}

uint64_t sub_1C1B860DC(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

void sub_1C1B86134()
{
  sub_1C1AA3EA0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1C1B86F84()
{
  result = qword_1EDE6BB88;
  if (!qword_1EDE6BB88)
  {
    sub_1C1AC3404(&qword_1EBF09B20, &qword_1C1BA4338);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6BB88);
  }

  return result;
}

unint64_t sub_1C1B86FE8()
{
  result = qword_1EDE6A790;
  if (!qword_1EDE6A790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6A790);
  }

  return result;
}

uint64_t sub_1C1B8703C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1C6907070](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1C1B83590(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

id sub_1C1B870D4(id a1)
{
  v2 = sub_1C1B944A8();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v31 - v8;
  if ([a1 actionType] == 1)
  {
    v10 = [a1 actionURL];
    if (v10)
    {
      v11 = v10;
      sub_1C1B94488();

      v12 = v3[2];
      v12(v7, v9, v2);
      LOBYTE(v11) = [a1 opensInstalledApp];
      [a1 confirmedClickInterval];
      v14 = v13;
      v15 = objc_allocWithZone(type metadata accessor for WebTapAction());
      v12(&v15[OBJC_IVAR____TtC15PromotedContent12WebTapAction_url], v7, v2);
      v15[OBJC_IVAR____TtC15PromotedContent12WebTapAction_opensInstalledApp] = v11;
      *&v15[OBJC_IVAR___APPCTapAction_actionType] = 1;
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
    v24 = "Attempting to initialize a WebTapAction without a URL.";
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

uint64_t UnfilledReason.fulfillOrder.getter(uint64_t a1)
{
  if (a1 <= 204)
  {
    if (a1 <= 201)
    {
      if (a1 == 200)
      {
        return 0;
      }

      else if (a1 == 201)
      {
        return 4;
      }

      else
      {
LABEL_40:
        result = sub_1C1B958C8();
        __break(1u);
      }
    }

    else if (a1 == 202)
    {
      return 3;
    }

    else if (a1 == 203)
    {
      return 2;
    }

    else
    {
      return 6;
    }
  }

  else
  {
    switch(a1)
    {
      case 1000:
        return 10;
      case 1001:
      case 1002:
      case 1003:
      case 1004:
      case 1005:
      case 1006:
      case 1007:
      case 1008:
      case 1009:
      case 1011:
      case 1012:
      case 1013:
      case 1014:
      case 1015:
      case 1016:
      case 1017:
      case 1018:
      case 1019:
      case 1024:
      case 1032:
      case 1033:
      case 1034:
      case 1035:
      case 1036:
      case 1037:
      case 1038:
      case 1039:
      case 1040:
      case 1041:
      case 1042:
      case 1043:
      case 1044:
      case 1045:
      case 1046:
      case 1047:
      case 1048:
        goto LABEL_40;
      case 1010:
        return 5;
      case 1020:
        return 7;
      case 1021:
        return 8;
      case 1022:
      case 1023:
        return 9;
      case 1025:
        return 28;
      case 1026:
        return 34;
      case 1027:
        return 35;
      case 1028:
        return 36;
      case 1029:
        return 31;
      case 1030:
        return 37;
      case 1031:
        return 38;
      case 1049:
        return 20;
      case 1050:
        return 21;
      case 1051:
        return 22;
      case 1052:
        return 23;
      case 1053:
        return 24;
      case 1054:
        return 25;
      case 1055:
        return 26;
      case 1056:
        return 27;
      case 1057:
        return 30;
      case 1058:
        return 32;
      case 1059:
        return 33;
      default:
        if (a1 == 206)
        {
          return 29;
        }

        if (a1 != 205)
        {
          goto LABEL_40;
        }

        result = 1;
        break;
    }
  }

  return result;
}

uint64_t UnfilledReason.description.getter(uint64_t a1)
{
  if (a1 <= 204)
  {
    if (a1 <= 201)
    {
      if (a1 == 200)
      {
        return 0x726F727245206F4ELL;
      }

      else if (a1 == 201)
      {
        return 0xD00000000000001DLL;
      }

      else
      {
LABEL_36:
        result = sub_1C1B958C8();
        __break(1u);
      }
    }

    else if (a1 == 202)
    {
      return 0xD000000000000019;
    }

    else if (a1 == 203)
    {
      return 0xD000000000000019;
    }

    else
    {
      return 0x78452074696D694CLL;
    }
  }

  else
  {
    switch(a1)
    {
      case 1000:
        return 0xD000000000000014;
      case 1001:
      case 1002:
      case 1003:
      case 1004:
      case 1005:
      case 1006:
      case 1007:
      case 1008:
      case 1009:
      case 1011:
      case 1012:
      case 1013:
      case 1014:
      case 1015:
      case 1016:
      case 1017:
      case 1018:
      case 1019:
      case 1024:
      case 1032:
      case 1033:
      case 1034:
      case 1035:
      case 1036:
      case 1037:
      case 1038:
      case 1039:
      case 1040:
      case 1041:
      case 1042:
      case 1043:
      case 1044:
      case 1045:
      case 1046:
      case 1047:
      case 1048:
        goto LABEL_36;
      case 1010:
        return 0x206B726F7774654ELL;
      case 1020:
      case 1027:
        return 0xD00000000000001CLL;
      case 1021:
        return 0xD00000000000001DLL;
      case 1022:
      case 1023:
      case 1056:
        return 0xD000000000000023;
      case 1025:
        return 0x6920736461206F4ELL;
      case 1026:
      case 1029:
        goto LABEL_21;
      case 1028:
      case 1031:
        return 0xD00000000000002CLL;
      case 1030:
        return 0xD000000000000018;
      case 1049:
        return 0xD000000000000019;
      case 1050:
        return 0xD000000000000013;
      case 1051:
        return 0xD000000000000012;
      case 1052:
        goto LABEL_34;
      case 1053:
        return 0xD000000000000016;
      case 1054:
        return 0xD00000000000001ALL;
      case 1055:
        return 0xD000000000000015;
      case 1057:
        return 0x7373696D20414C53;
      case 1058:
        return 0xD00000000000001BLL;
      case 1059:
        return 0x7661206461206F4ELL;
      default:
        if (a1 == 205)
        {
LABEL_21:
          result = 0xD00000000000001ELL;
        }

        else
        {
          if (a1 != 206)
          {
            goto LABEL_36;
          }

LABEL_34:
          result = 0xD000000000000022;
        }

        break;
    }
  }

  return result;
}

uint64_t UnfilledReason.unfilledReasonInternal.getter(uint64_t result)
{
  if (((result - 1000) > 0x3B || ((1 << (result + 24)) & 0xFFE0000FEF00401) == 0) && (result - 200) >= 7)
  {
    result = sub_1C1B958C8();
    __break(1u);
  }

  return result;
}

uint64_t sub_1C1B87A88@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C1B87B74(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1C1B87B74(uint64_t result)
{
  if (((result - 1000) > 0x3B || ((1 << (result + 24)) & 0xFFE0000FEF00401) == 0) && (result - 200) >= 7)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1C1B87BC0()
{
  result = qword_1EBF09B40;
  if (!qword_1EBF09B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF09B40);
  }

  return result;
}

unint64_t sub_1C1B87C24()
{
  result = qword_1EDE6C260;
  if (!qword_1EDE6C260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6C260);
  }

  return result;
}

uint64_t WebTapAction.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15PromotedContent12WebTapAction_url;
  v4 = sub_1C1B944A8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1C1B87D00(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000011;
  }

  else
  {
    v4 = 7107189;
  }

  if (v3)
  {
    v5 = 0xE300000000000000;
  }

  else
  {
    v5 = 0x80000001C1BA56E0;
  }

  if (*a2)
  {
    v6 = 0xD000000000000011;
  }

  else
  {
    v6 = 7107189;
  }

  if (*a2)
  {
    v7 = 0x80000001C1BA56E0;
  }

  else
  {
    v7 = 0xE300000000000000;
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

uint64_t sub_1C1B87DA4()
{
  v1 = *v0;
  sub_1C1B95958();
  sub_1C1B94DE8();

  return sub_1C1B959A8();
}

uint64_t sub_1C1B87E24()
{
  *v0;
  sub_1C1B94DE8();
}

uint64_t sub_1C1B87E90()
{
  v1 = *v0;
  sub_1C1B95958();
  sub_1C1B94DE8();

  return sub_1C1B959A8();
}

uint64_t sub_1C1B87F0C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
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

void sub_1C1B87F6C(unint64_t *a1@<X8>)
{
  v2 = 0x80000001C1BA56E0;
  v3 = 7107189;
  if (*v1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v2 = 0xE300000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

unint64_t sub_1C1B87FA8()
{
  if (*v0)
  {
    result = 0xD000000000000011;
  }

  else
  {
    result = 7107189;
  }

  *v0;
  return result;
}

uint64_t sub_1C1B87FE0@<X0>(char *a1@<X8>)
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

uint64_t sub_1C1B88044(uint64_t a1)
{
  v2 = sub_1C1B88E00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1B88080(uint64_t a1)
{
  v2 = sub_1C1B88E00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id WebTapAction.__allocating_init(url:opensInstalledApp:confirmedClickInterval:)(uint64_t a1, char a2, double a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = OBJC_IVAR____TtC15PromotedContent12WebTapAction_url;
  v9 = sub_1C1B944A8();
  v10 = *(v9 - 8);
  (*(v10 + 16))(&v7[v8], a1, v9);
  v7[OBJC_IVAR____TtC15PromotedContent12WebTapAction_opensInstalledApp] = a2;
  *&v7[OBJC_IVAR___APPCTapAction_actionType] = 1;
  *&v7[OBJC_IVAR___APPCTapAction_confirmedClickInterval] = a3;
  v13.receiver = v7;
  v13.super_class = type metadata accessor for TapAction();
  v11 = objc_msgSendSuper2(&v13, sel_init);
  (*(v10 + 8))(a1, v9);
  return v11;
}

id WebTapAction.init(url:opensInstalledApp:confirmedClickInterval:)(uint64_t a1, char a2, double a3)
{
  v7 = OBJC_IVAR____TtC15PromotedContent12WebTapAction_url;
  v8 = sub_1C1B944A8();
  v9 = *(v8 - 8);
  (*(v9 + 16))(&v3[v7], a1, v8);
  v3[OBJC_IVAR____TtC15PromotedContent12WebTapAction_opensInstalledApp] = a2;
  *&v3[OBJC_IVAR___APPCTapAction_actionType] = 1;
  *&v3[OBJC_IVAR___APPCTapAction_confirmedClickInterval] = a3;
  v12.receiver = v3;
  v12.super_class = type metadata accessor for TapAction();
  v10 = objc_msgSendSuper2(&v12, sel_init);
  (*(v9 + 8))(a1, v8);
  return v10;
}

id WebTapAction.__allocating_init(_:)(char *a1)
{
  return sub_1C1B88338(a1, &OBJC_IVAR____TtC15PromotedContent40MobileRichAdInterfaceDefinitionTapAction_url, &OBJC_IVAR____TtC15PromotedContent40MobileRichAdInterfaceDefinitionTapAction_opensInstalledApp, "Unable to initialize WebTapAction from MobileRichAdInterfaceDefinitionTapAction because of missing required fields.");
}

{
  return sub_1C1B88338(a1, &OBJC_IVAR____TtC15PromotedContent23OutstreamVideoTapAction_url, &OBJC_IVAR____TtC15PromotedContent23OutstreamVideoTapAction_opensInstalledApp, "Unable to initialize WebTapAction from OutstreamVideoTapAction because of missing required fields.");
}

id sub_1C1B88338(char *a1, void *a2, void *a3, const char *a4)
{
  v8 = sub_1C1AC1F08(&qword_1EBF07AC8, &qword_1C1B9CED0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v32 - v10;
  v12 = sub_1C1B944A8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v32 - v18;
  sub_1C1AC5430(&a1[*a2], v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1C1AC54A0(v11);
    if (qword_1EDE6C4E0 != -1)
    {
      swift_once();
    }

    v20 = sub_1C1B94BE8();
    sub_1C1AB4454(v20, qword_1EDE6D058);
    v21 = sub_1C1B94BC8();
    v22 = sub_1C1B95118();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1C1AA2000, v21, v22, a4, v23, 2u);
      MEMORY[0x1C6908230](v23, -1, -1);
    }

    return 0;
  }

  else
  {
    (*(v13 + 32))(v19, v11, v12);
    v25 = a1[*a3];
    v26 = *(v13 + 16);
    v26(v17, v19, v12);
    v27 = *&a1[OBJC_IVAR___APPCTapAction_confirmedClickInterval];
    v28 = objc_allocWithZone(type metadata accessor for WebTapAction());
    v26(&v28[OBJC_IVAR____TtC15PromotedContent12WebTapAction_url], v17, v12);
    v28[OBJC_IVAR____TtC15PromotedContent12WebTapAction_opensInstalledApp] = v25 & 1;
    *&v28[OBJC_IVAR___APPCTapAction_actionType] = 1;
    *&v28[OBJC_IVAR___APPCTapAction_confirmedClickInterval] = v27;
    v29 = type metadata accessor for TapAction();
    v32.receiver = v28;
    v32.super_class = v29;
    v30 = objc_msgSendSuper2(&v32, sel_init);

    v31 = *(v13 + 8);
    v31(v17, v12);
    v31(v19, v12);
    return v30;
  }
}

void *sub_1C1B886C0(uint64_t *a1)
{
  v3 = sub_1C1B944A8();
  v19 = *(v3 - 8);
  v4 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1C1AC1F08(&qword_1EBF09B58, &qword_1C1BA4618);
  v7 = *(v20 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v10 = &v19 - v9;
  v11 = a1[4];
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B88E00();
  sub_1C1B95A08();
  if (v1)
  {
    v18 = v23;
    sub_1C1AA86F8(a1);
    type metadata accessor for WebTapAction();
    v14 = *((*MEMORY[0x1E69E7D40] & *v18) + 0x30);
    v15 = *((*MEMORY[0x1E69E7D40] & *v18) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v12 = v7;
    v13 = v19;
    LOBYTE(v22[0]) = 0;
    sub_1C1AEF214(&unk_1EDE6C3A0);
    sub_1C1B956F8();
    v17 = v23;
    (*(v13 + 32))(v23 + OBJC_IVAR____TtC15PromotedContent12WebTapAction_url, v6, v3);
    LOBYTE(v22[0]) = 1;
    *(v17 + OBJC_IVAR____TtC15PromotedContent12WebTapAction_opensInstalledApp) = sub_1C1B956A8() & 1;
    sub_1C1B95628();
    sub_1C1AAD2FC(v22, v21);
    v18 = TapAction.init(from:)(v21);
    sub_1C1AA86F8(v22);
    (*(v12 + 8))(v10, v20);
    sub_1C1AA86F8(a1);
  }

  return v18;
}

uint64_t sub_1C1B88A34(void *a1)
{
  v3 = v1;
  v5 = sub_1C1AC1F08(&qword_1EBF09B48, &qword_1C1BA4488);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14[-1] - v8;
  v10 = a1[4];
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B88E00();
  sub_1C1B95A18();
  LOBYTE(v14[0]) = 0;
  sub_1C1B944A8();
  sub_1C1AEF214(&unk_1EDE6C3B0);
  sub_1C1B95808();
  if (!v2)
  {
    v12 = *(v3 + OBJC_IVAR____TtC15PromotedContent12WebTapAction_opensInstalledApp);
    LOBYTE(v14[0]) = 1;
    sub_1C1B957B8();
    sub_1C1B95738();
    sub_1C1B3BBE0(v14);
    sub_1C1AA86F8(v14);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1C1B88CA8()
{
  v1 = OBJC_IVAR____TtC15PromotedContent12WebTapAction_url;
  v2 = sub_1C1B944A8();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id WebTapAction.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WebTapAction();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for WebTapAction()
{
  result = qword_1EDE6C2D8;
  if (!qword_1EDE6C2D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1C1B88E00()
{
  result = qword_1EDE6B228;
  if (!qword_1EDE6B228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B228);
  }

  return result;
}

uint64_t sub_1C1B88E5C()
{
  result = sub_1C1B944A8();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1C1B88F34()
{
  result = qword_1EBF09B50;
  if (!qword_1EBF09B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF09B50);
  }

  return result;
}

unint64_t sub_1C1B88F8C()
{
  result = qword_1EDE6B218;
  if (!qword_1EDE6B218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B218);
  }

  return result;
}

unint64_t sub_1C1B88FE4()
{
  result = qword_1EDE6B220;
  if (!qword_1EDE6B220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B220);
  }

  return result;
}

uint64_t sub_1C1B89048(uint64_t a1, uint64_t a2, unint64_t a3, double a4, double a5)
{
  v6 = v5;
  sub_1C1B95138();
  sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
  v11 = sub_1C1B95298();
  sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1C1B9C9C0;
  v13 = [v5 identifier];
  v14 = sub_1C1B94D88();
  v16 = v15;

  v17 = MEMORY[0x1E69E6158];
  *(v12 + 56) = MEMORY[0x1E69E6158];
  v18 = sub_1C1AA5E7C();
  v19 = v18;
  *(v12 + 32) = v14;
  *(v12 + 40) = v16;
  *(v12 + 96) = v17;
  *(v12 + 104) = v18;
  if (a3)
  {
    v20 = a2;
  }

  else
  {
    v20 = 1701736270;
  }

  v21 = 0xE400000000000000;
  if (a3)
  {
    v21 = a3;
  }

  *(v12 + 64) = v18;
  *(v12 + 72) = v20;
  v41 = v21;
  *(v12 + 80) = v21;
  v22 = v5;

  v23 = PlacementType.stringValue.getter(a1);
  *(v12 + 136) = v17;
  *(v12 + 144) = v19;
  *(v12 + 112) = v23;
  *(v12 + 120) = v24;
  v25 = MEMORY[0x1E69E7DE0];
  *(v12 + 176) = MEMORY[0x1E69E7DE0];
  v26 = sub_1C1AFC370();
  *(v12 + 184) = v26;
  *(v12 + 152) = a4;
  *(v12 + 216) = v25;
  *(v12 + 224) = v26;
  *(v12 + 192) = a5;
  sub_1C1B94BA8();

  v27 = a1;
  if (PlacementType.isSuitableReplacement(for:)(a1, [v5 adType]))
  {
    return sub_1C1B89384(a4, a5);
  }

  sub_1C1B95138();
  v29 = sub_1C1B95298();
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1C1B9D2F0;
  v31 = [v6 identifier];
  v32 = sub_1C1B94D88();
  v33 = v20;
  v35 = v34;

  v36 = MEMORY[0x1E69E6158];
  *(v30 + 56) = MEMORY[0x1E69E6158];
  *(v30 + 64) = v19;
  *(v30 + 32) = v32;
  *(v30 + 40) = v35;
  v37 = PlacementType.stringValue.getter(v27);
  *(v30 + 96) = v36;
  *(v30 + 104) = v19;
  *(v30 + 72) = v37;
  *(v30 + 80) = v38;
  v39 = PlacementType.stringValue.getter([v22 &selRef_context + 1]);
  *(v30 + 136) = v36;
  *(v30 + 144) = v19;
  *(v30 + 112) = v39;
  *(v30 + 120) = v40;
  *(v30 + 176) = v36;
  *(v30 + 184) = v19;
  *(v30 + 152) = v33;
  *(v30 + 160) = v41;

  sub_1C1B94BA8();

  return 0;
}

uint64_t sub_1C1B89384(double a1, double a2)
{
  v5 = v2;
  v8 = sub_1C1AC1F08(&qword_1EBF07AC8, &qword_1C1B9CED0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v60 - v10;
  v12 = &selRef_hash;
  if ([v2 serverUnfilledReason] != 200)
  {
LABEL_4:
    v14 = [v2 representations];
    sub_1C1AC1F08(&qword_1EBF07AE8, qword_1C1BA46C0);
    v15 = sub_1C1B94EC8();

    if (v15 >> 62)
    {
      if (sub_1C1B953A8())
      {
        goto LABEL_6;
      }
    }

    else if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_6:
      if ((v15 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1C6907490](0, v15);
        goto LABEL_9;
      }

      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v16 = *(v15 + 32);
        swift_unknownObjectRetain();
LABEL_9:

LABEL_46:
        [v5 serverUnfilledReason];
        return v16;
      }

      __break(1u);
LABEL_50:
      if (!sub_1C1B953A8())
      {
        goto LABEL_51;
      }

LABEL_34:
      if ((v14 & 0xC000000000000001) != 0)
      {
        goto LABEL_91;
      }

      if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v12 = *(v14 + 32);
        swift_unknownObjectRetain();
        goto LABEL_37;
      }

      __break(1u);
      goto LABEL_93;
    }

    v16 = 0;
    goto LABEL_46;
  }

  v13 = [v2 error];
  if (v13)
  {

    goto LABEL_4;
  }

  v17 = [v2 adType];
  if (v17 > 3)
  {
    if (v17 <= 5)
    {
      if (v17 != 4)
      {
LABEL_31:
        if (v17 != 5)
        {
          goto LABEL_119;
        }

        goto LABEL_32;
      }
    }

    else if (v17 != 6)
    {
      if (v17 != 7)
      {
        if (v17 == 8)
        {
          sub_1C1B95128();
          sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
          v18 = sub_1C1B95298();
          sub_1C1B94BA8();

          return 0;
        }

        goto LABEL_119;
      }

      goto LABEL_32;
    }

    v23 = [v2 representations];
    sub_1C1AC1F08(&qword_1EBF07AE8, qword_1C1BA46C0);
    v5 = sub_1C1B94EC8();

    if (v5 >> 62)
    {
      v17 = sub_1C1B953A8();
      if (!v17)
      {
        goto LABEL_99;
      }
    }

    else
    {
      v17 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v17)
      {
        goto LABEL_99;
      }
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      goto LABEL_95;
    }

    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_42:
      v16 = *(v5 + 32);
      swift_unknownObjectRetain();
      goto LABEL_43;
    }

    __break(1u);
    goto LABEL_31;
  }

  if (v17 >= 3)
  {
    if (v17 != 3)
    {
      goto LABEL_119;
    }

    v12 = &selRef_hash;
    v11 = [v2 representations];
    v14 = sub_1C1AC1F08(&qword_1EBF07AE8, qword_1C1BA46C0);
    v15 = sub_1C1B94EC8();

    if (!(v15 >> 62))
    {
      if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_105:

        goto LABEL_106;
      }

LABEL_20:
      if ((v15 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1C6907490](0, v15);
      }

      else
      {
        if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_109;
        }

        v19 = *(v15 + 32);
        swift_unknownObjectRetain();
      }

      v64 = &unk_1F415F4B8;
      v20 = swift_dynamicCastObjCProtocolConditional();
      swift_unknownObjectRelease();
      if (v20)
      {
        v21 = [v5 v12[23]];
        v22 = sub_1C1B94EC8();

        v16 = sub_1C1B8A0AC(v22);
LABEL_43:

        return v16;
      }

LABEL_106:
      sub_1C1B95128();
      sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
      v57 = sub_1C1B95298();
      sub_1C1B94BA8();

      return 0;
    }

LABEL_104:
    if (!sub_1C1B953A8())
    {
      goto LABEL_105;
    }

    goto LABEL_20;
  }

LABEL_32:
  v3 = &selRef_hash;
  v12 = [v5 representations];
  v15 = sub_1C1AC1F08(&qword_1EBF07AE8, qword_1C1BA46C0);
  v14 = sub_1C1B94EC8();

  if (v14 >> 62)
  {
    goto LABEL_50;
  }

  if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_34;
  }

LABEL_51:

  do
  {
    v26 = [v5 *(v3 + 184)];
    v12 = sub_1C1B94EC8();

    v14 = sub_1C1B8AD30(v12, a1, a2);

    if (v14 >> 62)
    {
LABEL_93:
      v3 = sub_1C1B953A8();
      if (!v3)
      {
LABEL_94:

        sub_1C1B95138();
        sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
        v51 = sub_1C1B95298();
        sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
        v52 = swift_allocObject();
        *(v52 + 16) = xmmword_1C1B98E60;
        v53 = [v5 identifier];
        v54 = sub_1C1B94D88();
        v56 = v55;

        *(v52 + 56) = MEMORY[0x1E69E6158];
        *(v52 + 64) = sub_1C1AA5E7C();
        *(v52 + 32) = v54;
        *(v52 + 40) = v56;
        sub_1C1B94BA8();

        return 0;
      }
    }

    else
    {
      v3 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v3)
      {
        goto LABEL_94;
      }
    }

    v4 = v14 & 0xC000000000000001;
    if ((v14 & 0xC000000000000001) != 0)
    {
      v27 = MEMORY[0x1C6907490](0, v14);
    }

    else
    {
      if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_103:
        __break(1u);
        goto LABEL_104;
      }

      v27 = *(v14 + 32);
      swift_unknownObjectRetain();
    }

    v62 = v15;
    if (v3 == 1)
    {
LABEL_58:
      v28 = v27;
LABEL_59:
      v3 = sub_1C1AF5F58(v14);

      if (v3)
      {
        if ([v5 isOutstreamVideoAd])
        {
          sub_1C1B95108();
          sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
          v15 = sub_1C1B95298();
          sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
          v4 = swift_allocObject();
          *(v4 + 16) = xmmword_1C1B9AF30;
          v29 = [v5 identifier];
          v30 = sub_1C1B94D88();
          v32 = v31;

          *(v4 + 56) = MEMORY[0x1E69E6158];
          v63 = sub_1C1AA5E7C();
          *(v4 + 64) = v63;
          *(v4 + 32) = v30;
          *(v4 + 40) = v32;
          v33 = [v5 representations];
          v14 = sub_1C1B94EC8();

          if (!(v14 >> 62))
          {
            if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
LABEL_63:
              if ((v14 & 0xC000000000000001) != 0)
              {
                MEMORY[0x1C6907490](0, v14);
LABEL_66:
                v35 = v15;

                type metadata accessor for BannerRepresentation();
                v36 = swift_dynamicCastClass();
                if (v36)
                {
                  v37 = *(v36 + OBJC_IVAR___APPCBannerRepresentation_outstreamVideoInfo);
                  v38 = v37;
                  swift_unknownObjectRelease();
                  if (v37)
                  {
                    sub_1C1AA7E30(v38 + OBJC_IVAR___APPCOutstreamVideoInfo_videoAssetURL, v11, &qword_1EBF07AC8, &qword_1C1B9CED0);

                    v39 = sub_1C1B944A8();
                    v40 = *(v39 - 8);
                    if ((*(v40 + 48))(v11, 1, v39) != 1)
                    {
                      v61 = sub_1C1B94468();
                      v48 = v47;
                      (*(v40 + 8))(v11, v39);
                      v49 = (v4 + 72);
                      v50 = v63;
                      *(v4 + 96) = MEMORY[0x1E69E6158];
                      *(v4 + 104) = v50;
                      if (v48)
                      {
                        *v49 = v61;
LABEL_113:
                        *(v4 + 80) = v48;
                        sub_1C1B94BA8();

                        if (v3 >> 62)
                        {
                          v59 = sub_1C1B95578();
                        }

                        else
                        {
                          sub_1C1B95898();
                          v59 = v3;
                        }

                        v16 = sub_1C1B8A0AC(v59);

                        swift_unknownObjectRelease();
                        return v16;
                      }

LABEL_112:
                      *v49 = 4271950;
                      v48 = 0xE300000000000000;
                      goto LABEL_113;
                    }

                    sub_1C1AA7C8C(v11, &qword_1EBF07AC8, &qword_1C1B9CED0);
                  }
                }

                else
                {
                  swift_unknownObjectRelease();
                }

LABEL_111:
                v49 = (v4 + 72);
                v58 = v63;
                *(v4 + 96) = MEMORY[0x1E69E6158];
                *(v4 + 104) = v58;
                goto LABEL_112;
              }

              if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v34 = *(v14 + 32);
                swift_unknownObjectRetain();
                goto LABEL_66;
              }

              __break(1u);
LABEL_119:
              v65 = v17;
              result = sub_1C1B958C8();
              __break(1u);
              return result;
            }

LABEL_110:
            v35 = v15;

            goto LABEL_111;
          }

LABEL_109:
          v17 = sub_1C1B953A8();
          if (v17)
          {
            goto LABEL_63;
          }

          goto LABEL_110;
        }
      }

      return v28;
    }

    v63 = v14 & 0xFFFFFFFFFFFFFF8;
    v41 = 1;
    v15 = &selRef_hash;
    while (v4)
    {
      v28 = MEMORY[0x1C6907490](v41, v14);
      v42 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        goto LABEL_88;
      }

LABEL_79:
      [v27 adSize];
      a2 = v43;
      [v28 adSize];
      if (a2 > v44 || ([v27 adSize], a2 = v45, objc_msgSend(v28, sel_adSize), a2 > v46))
      {
        swift_unknownObjectRelease();
        ++v41;
        if (v42 == v3)
        {
          goto LABEL_58;
        }
      }

      else
      {
        swift_unknownObjectRelease();
        v27 = v28;
        v41 = v42;
        if (v42 == v3)
        {
          goto LABEL_59;
        }
      }
    }

    if ((v41 & 0x8000000000000000) != 0)
    {
      goto LABEL_89;
    }

    if (v41 >= *(v63 + 16))
    {
      goto LABEL_90;
    }

    v28 = *(v14 + 8 * v41 + 32);
    swift_unknownObjectRetain();
    v42 = v41 + 1;
    if (!__OFADD__(v41, 1))
    {
      goto LABEL_79;
    }

LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    v12 = MEMORY[0x1C6907490](0, v14);
LABEL_37:

    type metadata accessor for ClientLayoutRepresentation();
    v24 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
  }

  while (!v24);
  v14 = [v5 *(v3 + 184)];
  v5 = sub_1C1B94EC8();

  if (v5 >> 62)
  {
    if (!sub_1C1B953A8())
    {
      goto LABEL_99;
    }

LABEL_40:
    if ((v5 & 0xC000000000000001) == 0)
    {
      if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_42;
      }

      goto LABEL_103;
    }

LABEL_95:
    v16 = MEMORY[0x1C6907490](0, v5);
    goto LABEL_43;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_40;
  }

LABEL_99:

  return 0;
}

uint64_t sub_1C1B8A0AC(unint64_t a1)
{
  v9 = sub_1C1AC1F08(&qword_1EBF07AC8, &qword_1C1B9CED0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v87 - v11;
  v13 = sub_1C1B944A8();
  v14 = *(v13 - 1);
  v15 = v14[8];
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (!sub_1C1B953A8())
  {
    return 0;
  }

LABEL_3:
  v87 = v1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1C6907490](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_109;
    }

    v4 = *(a1 + 32);
    swift_unknownObjectRetain();
  }

  ObjectType = swift_getObjectType();
  v18 = sub_1C1B4E4EC();
  if (v18)
  {
    v19 = v18;
    if (*(v18 + 16) && (v20 = sub_1C1AA7C14(0x697463656E6E6F63, 0xEE00657079546E6FLL), (v21 & 1) != 0))
    {
      sub_1C1AAA7B8(*(v19 + 56) + 32 * v20, v98);

      if (swift_dynamicCast())
      {
        v18 = v95;
        goto LABEL_13;
      }
    }

    else
    {
    }

    v18 = 0;
  }

LABEL_13:
  v5 = dbl_1C1BA4710[sub_1C1B1945C(v18)];
  v22 = sub_1C1B4E4EC();
  v23 = 0.0;
  if (v22)
  {
    v24 = v22;
    if (*(v22 + 16) && (v25 = sub_1C1AA7C14(0x74536C616E676973, 0xEE006874676E6572), (v26 & 1) != 0))
    {
      sub_1C1AAA7B8(*(v24 + 56) + 32 * v25, v98);

      if (swift_dynamicCast())
      {
        v23 = v95;
      }
    }

    else
    {
    }
  }

  v90 = v12;

  v98[0] = sub_1C1B90C70(v27, sub_1C1AC8CB8);
  a1 = 0;
  v28 = sub_1C1B8FF18(v98);
  v3 = v98[0];
  v6 = v23 / 100.0;
  if ((v98[0] & 0x8000000000000000) == 0 && (v98[0] & 0x4000000000000000) == 0)
  {
    v29 = *(v98[0] + 16);
    goto LABEL_22;
  }

LABEL_109:
  v28 = sub_1C1B953A8();
  v29 = v28;
LABEL_22:
  v30 = v5 * v6;
  v91 = v14;
  v93 = v13;
  v88 = v17;
  v92 = v4;
  if (!v29)
  {

    v14 = 0;
    v41 = 1;
    v6 = 0.0;
    v7 = 0.0;
    v42 = 0;
    v43 = v90;
    goto LABEL_72;
  }

  v31 = v3 & 0xC000000000000001;
  if ((v3 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x1C6907490](0, v3);
  }

  else
  {
    if (!*(v3 + 16))
    {
      __break(1u);
LABEL_112:
      __break(1u);
LABEL_113:
      __break(1u);
LABEL_114:
      MEMORY[0x1C6907490](v28, v3);
LABEL_65:

      swift_getObjectType();
      v49 = sub_1C1B4E4EC();
      swift_unknownObjectRelease();
      v42 = 0;
      v43 = v90;
      if (v49)
      {
        if (*(v49 + 16) && (v50 = sub_1C1AA7C14(v17, 0xE700000000000000), (v51 & 1) != 0))
        {
          sub_1C1AAA7B8(*(v49 + 56) + 32 * v50, v98);

          if (swift_dynamicCast())
          {
            v42 = v95;
          }
        }

        else
        {
        }
      }

      v41 = ObjectType;
LABEL_72:
      v52 = MEMORY[0x1E69E63B0];
      sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
      v53 = sub_1C1B95298();
      sub_1C1B95138();
      sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_1C1B9D2F0;
      v55 = MEMORY[0x1E69E6438];
      *(v54 + 56) = v52;
      *(v54 + 64) = v55;
      *(v54 + 32) = v30;
      *(v54 + 96) = v52;
      *(v54 + 104) = v55;
      *(v54 + 72) = v42;
      *(v54 + 136) = v52;
      *(v54 + 144) = v55;
      *(v54 + 112) = v6;
      *(v54 + 176) = v52;
      *(v54 + 184) = v55;
      *(v54 + 152) = v7;
      sub_1C1B94B98();

      if ((v41 & 1) == 0)
      {
        swift_getObjectType();
        v56 = sub_1C1B4E4EC();
        if (v56)
        {
          v57 = v56;
          if (*(v56 + 16))
          {
            v58 = sub_1C1AA7C14(0x4C52557465737361, 0xE800000000000000);
            if (v59)
            {
              sub_1C1AAA7B8(*(v57 + 56) + 32 * v58, v98);

              v60 = v93;
              v61 = swift_dynamicCast();
              v62 = v91;
              (v91[7])(v43, v61 ^ 1u, 1, v60);
              if ((*(v62 + 48))(v43, 1, v60) == 1)
              {
                swift_unknownObjectRelease();
LABEL_80:
                sub_1C1AA7C8C(v43, &qword_1EBF07AC8, &qword_1C1B9CED0);
                return v14;
              }

              v63 = v43;
              v64 = v88;
              (*(v62 + 32))(v88, v63, v60);
              v65 = sub_1C1B4E4EC();
              if (v65)
              {
                v66 = v65;
                a1 = v62;
                if (!*(v65 + 16) || (v67 = sub_1C1AA7C14(0x6E6F697461727564, 0xE800000000000000), (v68 & 1) == 0))
                {

                  swift_unknownObjectRelease();
LABEL_96:
                  (*(a1 + 8))(v88, v93);
                  return v14;
                }

                sub_1C1AAA7B8(*(v66 + 56) + 32 * v67, v98);

                if (swift_dynamicCast())
                {
                  v69 = *&v95;
                  [v14 adSize];
                  v71 = v70;
                  v73 = v72;
                  v13 = v87;
                  v74 = [v87 mediaMetricHelper];
                  if (v74 && (v94 = v74, sub_1C1AC1F08(&qword_1EBF088D0, &qword_1C1B9D308), sub_1C1AC1F08(&qword_1EBF088D8, &qword_1C1BA46E0), (swift_dynamicCast() & 1) != 0))
                  {
                    if (*(&v96 + 1))
                    {
                      sub_1C1AC0580(&v95, v98);
                      v75 = sub_1C1AFBB40(v7 * (v71 * v73) * 0.000000953674316);
                      if (v76)
                      {
                        v77 = 0;
                      }

                      else
                      {
                        v77 = v75;
                      }

                      v78 = *sub_1C1AAABE0(v98, v98[3]);
                      v79 = v88;
                      sub_1C1B18484(v88, v77, v69);
                      swift_unknownObjectRelease();
                      (*(a1 + 8))(v79, v93);
                      sub_1C1AA86F8(v98);
                      return v14;
                    }
                  }

                  else
                  {
LABEL_102:
                    v97 = 0;
                    v95 = 0u;
                    v96 = 0u;
                  }

                  sub_1C1AA7C8C(&v95, &qword_1EBF088C8, &qword_1C1B9D300);
                  LODWORD(v90) = sub_1C1B95128();
                  v80 = sub_1C1B95298();
                  v81 = swift_allocObject();
                  *(v81 + 16) = xmmword_1C1B98E60;
                  v82 = [v13 identifier];
                  v83 = sub_1C1B94D88();
                  v85 = v84;

                  *(v81 + 56) = MEMORY[0x1E69E6158];
                  *(v81 + 64) = sub_1C1AA5E7C();
                  *(v81 + 32) = v83;
                  *(v81 + 40) = v85;
                  sub_1C1B94BA8();
                  swift_unknownObjectRelease();

                  goto LABEL_96;
                }

LABEL_99:
                (*(a1 + 8))(v88, v93);
              }

              else
              {
                (*(v62 + 8))(v64, v60);
              }

              swift_unknownObjectRelease();
              return v14;
            }
          }
        }
      }

      swift_unknownObjectRelease();
      (v91[7])(v43, 1, 1, v93);
      goto LABEL_80;
    }

    v14 = *(v3 + 32);
    swift_unknownObjectRetain();
  }

  v32 = 0;
  v17 = 0x65746172746962;
  v89 = (v3 + 32);
  while (1)
  {
    if (v31)
    {
      a1 = MEMORY[0x1C6907490](v32, v3);
      v13 = (v32 + 1);
      if (__OFADD__(v32, 1))
      {
        goto LABEL_98;
      }
    }

    else
    {
      if (v32 >= *(v3 + 16))
      {
        __break(1u);
        goto LABEL_102;
      }

      a1 = *(v3 + 8 * v32 + 32);
      swift_unknownObjectRetain();
      v13 = (v32 + 1);
      if (__OFADD__(v32, 1))
      {
LABEL_98:
        __break(1u);
        goto LABEL_99;
      }
    }

    swift_getObjectType();
    v33 = sub_1C1B4E4EC();
    if (!v33)
    {
      goto LABEL_40;
    }

    v34 = v33;
    if (!*(v33 + 16) || (v35 = sub_1C1AA7C14(0x65746172746962, 0xE700000000000000), (v36 & 1) == 0))
    {

LABEL_40:
      v28 = swift_unknownObjectRelease();
      goto LABEL_41;
    }

    sub_1C1AAA7B8(*(v34 + 56) + 32 * v35, v98);

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_40;
    }

    if (*&v95 > v30)
    {
      break;
    }

    v28 = swift_unknownObjectRelease();
    v14 = a1;
LABEL_41:
    ++v32;
    if (v13 == v29)
    {
      goto LABEL_42;
    }
  }

  v28 = swift_unknownObjectRelease();
LABEL_42:
  ObjectType = v14 == 0;
  v7 = 0.0;
  if (!v14)
  {
    v37 = v89;
LABEL_51:
    if (v31)
    {
      goto LABEL_82;
    }

    goto LABEL_52;
  }

  swift_getObjectType();
  v28 = sub_1C1B4E4EC();
  v37 = v89;
  if (!v28)
  {
    goto LABEL_51;
  }

  v38 = v28;
  if (!*(v28 + 16) || (v39 = sub_1C1AA7C14(0x65746172746962, 0xE700000000000000), (v40 & 1) == 0))
  {

    if (v31)
    {
      goto LABEL_82;
    }

    goto LABEL_52;
  }

  sub_1C1AAA7B8(*(v38 + 56) + 32 * v39, v98);

  v28 = swift_dynamicCast();
  if ((v28 & 1) == 0)
  {
    goto LABEL_51;
  }

  v7 = *&v95;
  if (v31)
  {
LABEL_82:
    v44 = MEMORY[0x1C6907490](0, v3);
    goto LABEL_54;
  }

LABEL_52:
  if (!*(v3 + 16))
  {
    goto LABEL_113;
  }

  v44 = *v37;
  swift_unknownObjectRetain();
LABEL_54:
  swift_getObjectType();
  v45 = sub_1C1B4E4EC();
  swift_unknownObjectRelease();
  v6 = 0.0;
  if (v45)
  {
    if (*(v45 + 16) && (v46 = sub_1C1AA7C14(0x65746172746962, 0xE700000000000000), (v47 & 1) != 0))
    {
      sub_1C1AAA7B8(*(v45 + 56) + 32 * v46, v98);

      if (swift_dynamicCast())
      {
        v6 = *&v95;
      }
    }

    else
    {
    }
  }

  v28 = v29 - 1;
  if (__OFSUB__(v29, 1))
  {
    goto LABEL_112;
  }

  if (v31)
  {
    goto LABEL_114;
  }

  if ((v28 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v28 < *(v3 + 16))
  {
    v48 = v37[v28];
    swift_unknownObjectRetain();
    goto LABEL_65;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1C1B8AD30(unint64_t a1, double a2, double a3)
{
  v5 = a1;
  v36 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
LABEL_18:
    v6 = sub_1C1B953A8();
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_3:
      v7 = 0;
      v33 = v5 & 0xFFFFFFFFFFFFFF8;
      v34 = v5 & 0xC000000000000001;
      v32 = v6;
      v31 = v5;
      while (1)
      {
        if (v34)
        {
          v8 = MEMORY[0x1C6907490](v7, v5);
          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            goto LABEL_14;
          }
        }

        else
        {
          if (v7 >= *(v33 + 16))
          {
            __break(1u);
            goto LABEL_18;
          }

          v8 = *(v5 + 8 * v7 + 32);
          swift_unknownObjectRetain();
          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
LABEL_14:
            __break(1u);
LABEL_15:
            v23 = v36;
            if ((v36 & 0x8000000000000000) == 0)
            {
              goto LABEL_20;
            }

            goto LABEL_24;
          }
        }

        sub_1C1B95138();
        sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
        v10 = sub_1C1B95298();
        sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
        v11 = swift_allocObject();
        *(v11 + 16) = xmmword_1C1B9C9C0;
        v12 = MEMORY[0x1E69E7DE0];
        *(v11 + 56) = MEMORY[0x1E69E7DE0];
        v13 = sub_1C1AFC370();
        *(v11 + 64) = v13;
        *(v11 + 32) = a2;
        *(v11 + 96) = v12;
        *(v11 + 104) = v13;
        *(v11 + 72) = a3;
        [v8 adSize];
        *(v11 + 136) = v12;
        *(v11 + 144) = v13;
        *(v11 + 112) = v14;
        [v8 adSize];
        *(v11 + 176) = v12;
        *(v11 + 184) = v13;
        *(v11 + 152) = v15;
        v16 = [v35 identifier];
        v17 = sub_1C1B94D88();
        v19 = v18;

        *(v11 + 216) = MEMORY[0x1E69E6158];
        *(v11 + 224) = sub_1C1AA5E7C();
        *(v11 + 192) = v17;
        *(v11 + 200) = v19;
        sub_1C1B94BA8();

        [v8 adSize];
        if (v20 > a2 || ([v8 adSize], v21 > a3))
        {
          swift_unknownObjectRelease();
        }

        else
        {
          sub_1C1B954F8();
          v22 = *(v36 + 16);
          sub_1C1B95528();
          sub_1C1B95538();
          sub_1C1B95508();
        }

        v5 = v31;
        ++v7;
        if (v9 == v32)
        {
          goto LABEL_15;
        }
      }
    }
  }

  v23 = MEMORY[0x1E69E7CC0];
  if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) != 0)
  {
    goto LABEL_24;
  }

LABEL_20:
  if ((v23 & 0x4000000000000000) != 0)
  {
LABEL_24:
    if (sub_1C1B953A8())
    {
      return v23;
    }

    goto LABEL_22;
  }

  if (!*(v23 + 16))
  {
LABEL_22:
    sub_1C1B95138();
    sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
    v24 = sub_1C1B95298();
    sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1C1B98E60;
    v26 = [v35 identifier];
    v27 = sub_1C1B94D88();
    v29 = v28;

    *(v25 + 56) = MEMORY[0x1E69E6158];
    *(v25 + 64) = sub_1C1AA5E7C();
    *(v25 + 32) = v27;
    *(v25 + 40) = v29;
    sub_1C1B94BA8();
  }

  return v23;
}

uint64_t static SponsorshipAdManager.shared.getter()
{
  if (qword_1EDE6BFF0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1C1B8B1B8(unint64_t a1, _BYTE *a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1C1B94588();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C1B945F8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a2)
  {
    if (*a2 == 1)
    {
      v18 = OBJC_IVAR___APPCContext_newsContext;
      swift_beginAccess();
      v19 = *(a3 + v18);
      if (v19)
      {
        v20 = (v19 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataChannelId);
        swift_beginAccess();
        v21 = v20[1];
        if (v21)
        {
          v22 = *v20 == 0xD00000000000001BLL && v21 == 0x80000001C1BAD590;
          if (v22 || (sub_1C1B95888() & 1) != 0)
          {
            v23 = &unk_1F414DAA0;
LABEL_22:
            v41 = OBJC_IVAR___APPCBaseContext_identifier;
            swift_beginAccess();
            (*(v14 + 16))(v17, a3 + v41, v13);
            v42 = sub_1C1B945A8();
            v44 = v43;
            (*(v14 + 8))(v17, v13);
            v37 = sub_1C1B8D2F4(a1, v23, v42, v44);

            return v37;
          }
        }

        v38 = (v19 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataChannelId);
        swift_beginAccess();
        v39 = v38[1];
        if (v39)
        {
          v40 = *v38 == 0xD000000000000017 && v39 == 0x80000001C1BAD570;
          if (v40 || (sub_1C1B95888() & 1) != 0)
          {
            v23 = &unk_1F414DAD0;
            goto LABEL_22;
          }
        }
      }

      v23 = a1;
      goto LABEL_22;
    }

    v32 = OBJC_IVAR___APPCBaseContext_identifier;
    swift_beginAccess();
    (*(v14 + 16))(v17, a3 + v32, v13);
    v33 = sub_1C1B945A8();
    v35 = v34;
    (*(v14 + 8))(v17, v13);
    sub_1C1B94578();
    v36 = swift_beginAccess();
    v29 = *(v4 + 24);
    MEMORY[0x1EEE9AC00](v36);
    v30 = &v46 - 8;
    *(&v46 - 6) = v12;
    *(&v46 - 5) = v33;
    *(&v46 - 4) = v35;
    strcpy(&v46 - 24, "superfeed_key1");
    *(&v46 - 9) = -18;
    *(&v46 - 1) = a1;

    v31 = sub_1C1B91A28;
  }

  else
  {
    v24 = OBJC_IVAR___APPCBaseContext_identifier;
    swift_beginAccess();
    (*(v14 + 16))(v17, a3 + v24, v13);
    v25 = sub_1C1B945A8();
    v27 = v26;
    (*(v14 + 8))(v17, v13);
    sub_1C1B94578();
    v28 = swift_beginAccess();
    v29 = *(v4 + 24);
    MEMORY[0x1EEE9AC00](v28);
    v30 = &v46 - 8;
    *(&v46 - 6) = v12;
    *(&v46 - 5) = v25;
    *(&v46 - 4) = v27;
    strcpy(&v46 - 24, "superfeed_key1");
    *(&v46 - 9) = -18;
    *(&v46 - 1) = a1;

    v31 = sub_1C1B91B60;
  }

  v37 = sub_1C1AAE7B4(v31, v30, v29);

  (*(v9 + 8))(v12, v8);
  return v37;
}

void *SponsorshipAdManager.promotedContent(info:)(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(v1 + 32);
  if (v2 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1C1B953A8())
  {
    v19 = OBJC_IVAR___APPCPromotedContentInfo_promotedContent;

    if (!i)
    {
      break;
    }

    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1C6907490](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = &v5[OBJC_IVAR___APPCPromotedContent_identifier];
      swift_beginAccess();
      v10 = *v8;
      v9 = *(v8 + 1);
      v11 = *(a1 + v19);

      v12 = [v11 identifier];
      v13 = sub_1C1B94D88();
      v15 = v14;

      if (v10 == v13 && v9 == v15)
      {

LABEL_19:

        return v6;
      }

      v17 = sub_1C1B95888();

      if (v17)
      {
        goto LABEL_19;
      }

      ++v4;
      if (v7 == i)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

LABEL_17:

  return 0;
}

uint64_t sub_1C1B8B8B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 248);
  v9 = *v4;
  v5[32] = a1;
  v5[33] = a2;
  v5[34] = a3;
  v5[35] = v3;

  if (v3)
  {
    v7 = sub_1C1B8C5C0;
  }

  else
  {
    v7 = sub_1C1B8B9D0;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1C1B8B9D0()
{
  v103 = v0;
  v1 = *(v0 + 208);
  result = swift_beginAccess();
  v97 = *(v1 + 24);
  if (v97 >> 62)
  {
    result = sub_1C1B953A8();
    v3 = result;
    v91 = v1;
    if (!result)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v3 = *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v91 = v1;
    if (!v3)
    {
      goto LABEL_15;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v4 = v97 & 0xC000000000000001;

  v5 = 0;
  v94 = v3;
  do
  {
    if (v4)
    {
      v14 = MEMORY[0x1C6907490](v5, v97);
    }

    else
    {
      v14 = *(v97 + 8 * v5 + 32);
    }

    v15 = v14;
    if (qword_1EDE6C4E0 != -1)
    {
      swift_once();
    }

    v16 = v101[34];
    v17 = sub_1C1B94BE8();
    sub_1C1AB4454(v17, qword_1EDE6D058);

    v18 = v15;
    v19 = sub_1C1B94BC8();
    v20 = sub_1C1B95108();

    if (os_log_type_enabled(v19, v20))
    {
      v6 = v101[33];
      v7 = v101[34];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v102 = v9;
      *v8 = 67109890;
      *(v8 + 4) = 36;
      *(v8 + 8) = 2080;
      *(v8 + 10) = sub_1C1AC7650(v6, v7, &v102);
      *(v8 + 18) = 1024;
      *(v8 + 20) = 36;
      *(v8 + 24) = 2080;
      v10 = &v18[OBJC_IVAR___APPCPromotedContent_identifier];
      v4 = v97 & 0xC000000000000001;
      swift_beginAccess();
      v12 = *v10;
      v11 = v10[1];

      v13 = sub_1C1AC7650(v12, v11, &v102);
      v3 = v94;

      *(v8 + 26) = v13;
      _os_log_impl(&dword_1C1AA2000, v19, v20, "Context ID: %-*s Content ID: %-*s Content removed from cache.", v8, 0x22u);
      swift_arrayDestroy();
      MEMORY[0x1C6908230](v9, -1, -1);
      MEMORY[0x1C6908230](v8, -1, -1);
    }

    else
    {
    }

    ++v5;
  }

  while (v3 != v5);

  v1 = v91;
LABEL_15:
  v21 = v101[32];
  v22 = *(v1 + 24);
  *(v1 + 24) = MEMORY[0x1E69E7CC0];

  if (v21 >> 62)
  {
    if (v101[32] < 0)
    {
      v63 = v101[32];
    }

    result = sub_1C1B953A8();
    v98 = result;
    if (result)
    {
LABEL_17:
      if (v98 >= 1)
      {
        v24 = 0;
        v95 = v21 & 0xC000000000000001;
        v25 = v101[28];
        v90 = v101[32] + 32;
        v92 = (v25 + 8);
        v93 = (v25 + 16);
        *&v23 = 67110146;
        v88 = v23;
        while (1)
        {
          v26 = v95 ? MEMORY[0x1C6907490](v24, v101[32]) : *(v90 + 8 * v24);
          v27 = v26;
          v29 = v101[29];
          v28 = v101[30];
          v30 = v101[27];
          [v26 setBestRepresentation_];
          swift_unknownObjectRelease();
          v31 = OBJC_IVAR___APPCPromotedContent_expirationDate;
          swift_beginAccess();
          (*v93)(v28, &v27[v31], v30);
          sub_1C1B94578();
          LOBYTE(v31) = sub_1C1B94548();
          v32 = *v92;
          (*v92)(v29, v30);
          v32(v28, v30);
          if ((v31 & 1) == 0)
          {
            break;
          }

          v33 = OBJC_IVAR___APPCPromotedContent_serverUnfilledReason;
          swift_beginAccess();
          v34 = *&v27[v33];
          if (v34 == 1030 || v34 == 200)
          {
            swift_beginAccess();
            v35 = v27;
            MEMORY[0x1C6906EA0]();
            if (*((*(v1 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v62 = *((*(v1 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_1C1B94F08();
            }

            sub_1C1B94F48();
            swift_endAccess();

            goto LABEL_21;
          }

          if (qword_1EDE6C4E0 != -1)
          {
            swift_once();
          }

          v49 = v101[34];
          v50 = sub_1C1B94BE8();
          sub_1C1AB4454(v50, qword_1EDE6D058);

          v38 = v27;
          v39 = sub_1C1B94BC8();
          v51 = sub_1C1B95108();

          if (os_log_type_enabled(v39, v51))
          {
            v52 = v101[33];
            v53 = v101[34];
            v54 = swift_slowAlloc();
            v89 = swift_slowAlloc();
            v102 = v89;
            *v54 = v88;
            *(v54 + 4) = 36;
            *(v54 + 8) = 2080;
            *(v54 + 10) = sub_1C1AC7650(v52, v53, &v102);
            *(v54 + 18) = 1024;
            *(v54 + 20) = 36;
            *(v54 + 24) = 2080;
            v55 = &v38[OBJC_IVAR___APPCPromotedContent_identifier];
            swift_beginAccess();
            v57 = *v55;
            v56 = v55[1];

            v58 = sub_1C1AC7650(v57, v56, &v102);

            *(v54 + 26) = v58;
            *(v54 + 34) = 2080;
            v59 = UnfilledReason.description.getter(*&v27[v33]);
            v61 = sub_1C1AC7650(v59, v60, &v102);

            *(v54 + 36) = v61;
            v1 = v91;
            _os_log_impl(&dword_1C1AA2000, v39, v51, "Context ID: %-*s Content ID: %-*s Content has server unfilled reason %s.", v54, 0x2Cu);
            swift_arrayDestroy();
            MEMORY[0x1C6908230](v89, -1, -1);
LABEL_19:
            MEMORY[0x1C6908230]();
          }

LABEL_20:

LABEL_21:
          if (v98 == ++v24)
          {
            goto LABEL_44;
          }
        }

        if (qword_1EDE6C4E0 != -1)
        {
          swift_once();
        }

        v36 = v101[34];
        v37 = sub_1C1B94BE8();
        sub_1C1AB4454(v37, qword_1EDE6D058);

        v38 = v27;
        v39 = sub_1C1B94BC8();
        v40 = sub_1C1B95108();

        if (!os_log_type_enabled(v39, v40))
        {
          goto LABEL_20;
        }

        v42 = v101[33];
        v41 = v101[34];
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v102 = v44;
        *v43 = 67109890;
        *(v43 + 4) = 36;
        *(v43 + 8) = 2080;
        *(v43 + 10) = sub_1C1AC7650(v42, v41, &v102);
        *(v43 + 18) = 1024;
        *(v43 + 20) = 36;
        *(v43 + 24) = 2080;
        v45 = &v38[OBJC_IVAR___APPCPromotedContent_identifier];
        swift_beginAccess();
        v47 = *v45;
        v46 = v45[1];

        v48 = sub_1C1AC7650(v47, v46, &v102);

        *(v43 + 26) = v48;
        v1 = v91;
        _os_log_impl(&dword_1C1AA2000, v39, v40, "Context ID: %-*s Content ID: %-*s Content has expired.", v43, 0x22u);
        swift_arrayDestroy();
        MEMORY[0x1C6908230](v44, -1, -1);
        goto LABEL_19;
      }

      goto LABEL_64;
    }
  }

  else
  {
    v98 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v98)
    {
      goto LABEL_17;
    }
  }

LABEL_44:
  v64 = v101[32];

  v99 = *(v1 + 24);
  if (v99 >> 62)
  {
    result = sub_1C1B953A8();
    v65 = result;
    if (result)
    {
      goto LABEL_46;
    }

LABEL_59:
    v100 = v101[34];
    goto LABEL_60;
  }

  v65 = *((v99 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v65)
  {
    goto LABEL_59;
  }

LABEL_46:
  if (v65 < 1)
  {
LABEL_65:
    __break(1u);
    return result;
  }

  v66 = v99 & 0xC000000000000001;

  v67 = 0;
  v96 = v65;
  do
  {
    if (v66)
    {
      v76 = MEMORY[0x1C6907490](v67, v99);
    }

    else
    {
      v76 = *(v99 + 8 * v67 + 32);
    }

    v77 = v76;
    if (qword_1EDE6C4E0 != -1)
    {
      swift_once();
    }

    v78 = v101[34];
    v79 = sub_1C1B94BE8();
    sub_1C1AB4454(v79, qword_1EDE6D058);

    v80 = v77;
    v81 = sub_1C1B94BC8();
    v82 = sub_1C1B95108();

    if (os_log_type_enabled(v81, v82))
    {
      v68 = v101[33];
      v69 = v101[34];
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v102 = v71;
      *v70 = 67109890;
      *(v70 + 4) = 36;
      *(v70 + 8) = 2080;
      *(v70 + 10) = sub_1C1AC7650(v68, v69, &v102);
      *(v70 + 18) = 1024;
      *(v70 + 20) = 36;
      *(v70 + 24) = 2080;
      v72 = &v80[OBJC_IVAR___APPCPromotedContent_identifier];
      v66 = v99 & 0xC000000000000001;
      swift_beginAccess();
      v74 = *v72;
      v73 = v72[1];

      v75 = sub_1C1AC7650(v74, v73, &v102);
      v65 = v96;

      *(v70 + 26) = v75;
      _os_log_impl(&dword_1C1AA2000, v81, v82, "Context ID: %-*s Content ID: %-*s Content saved to cache.", v70, 0x22u);
      swift_arrayDestroy();
      MEMORY[0x1C6908230](v71, -1, -1);
      MEMORY[0x1C6908230](v70, -1, -1);
    }

    else
    {
    }

    ++v67;
  }

  while (v65 != v67);
  v83 = v101[34];

LABEL_60:
  v84 = v101[26];

  sub_1C1B8C774();
  v86 = v101[29];
  v85 = v101[30];

  v87 = v101[1];

  return v87();
}

uint64_t sub_1C1B8C5C0()
{
  if (qword_1EDE6C4E0 != -1)
  {
    swift_once();
  }

  v1 = v0[35];
  v2 = sub_1C1B94BE8();
  sub_1C1AB4454(v2, qword_1EDE6D058);
  v3 = v1;
  v4 = sub_1C1B94BC8();
  v5 = sub_1C1B95128();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[35];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1C1AA2000, v4, v5, "%@", v8, 0xCu);
    sub_1C1AA7C8C(v9, &qword_1EBF08A28, &qword_1C1B9D830);
    MEMORY[0x1C6908230](v9, -1, -1);
    MEMORY[0x1C6908230](v8, -1, -1);
  }

  else
  {
  }

  v13 = v0[29];
  v12 = v0[30];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1C1B8C774()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  if (!(v1 >> 62))
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

    goto LABEL_3;
  }

  if (v1 < 0)
  {
    v18 = *(v0 + 24);
  }

  result = sub_1C1B953A8();
  if (result)
  {
LABEL_3:
    v3 = sub_1C1B94418();
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();
    sub_1C1B94408();
    v19 = *(v0 + 24);

    sub_1C1AC1F08(&qword_1EBF09B60, &unk_1C1BA46B0);
    sub_1C1B91A6C(&qword_1EDE6A698, &qword_1EDE6BC10);
    v6 = sub_1C1B943F8();
    v8 = v7;

    v9 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v10 = sub_1C1B94D78();
    v11 = [v9 initWithSuiteName_];

    if (!v11)
    {
      v11 = [objc_opt_self() standardUserDefaults];
    }

    v12 = sub_1C1B94D78();
    [v11 removeObjectForKey_];

    v13 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v14 = sub_1C1B94D78();
    v15 = [v13 initWithSuiteName_];

    if (!v15)
    {
      v15 = [objc_opt_self() standardUserDefaults];
    }

    v16 = sub_1C1B944C8();
    v17 = sub_1C1B94D78();
    [v15 setObject:v16 forKey:v17];

    return sub_1C1AE4A00(v6, v8);
  }

  return result;
}

uint64_t sub_1C1B8CB68()
{
  v1 = sub_1C1B943E8();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_1C1B943D8();
  sub_1C1AC1F08(&qword_1EBF09B60, &unk_1C1BA46B0);
  sub_1C1B91A6C(&qword_1EDE6A690, &qword_1EDE6BC08);
  sub_1C1B943C8();

  swift_beginAccess();
  v4 = *(v0 + 24);
  *(v0 + 24) = v6;

  return 1;
}

void sub_1C1B8CDB0(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = objc_allocWithZone(MEMORY[0x1E696ACD0]);
  sub_1C1AF5DAC(a1, a2);
  v7 = sub_1C1B79814();
  sub_1C1AE4A00(a1, a2);
  sub_1C1B8FE14();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1B9D2F0;
  *(inited + 32) = sub_1C1B94938();
  *(inited + 40) = sub_1C1AA576C(0, &qword_1EDE6BB28, 0x1E695DEC8);
  *(inited + 48) = sub_1C1AA576C(0, &qword_1EDE6C4C0, 0x1E698A038);
  *(inited + 56) = sub_1C1AA576C(0, qword_1EDE6CA20, 0x1E698A028);
  sub_1C1B63440(inited);

  v9 = *MEMORY[0x1E696A508];
  sub_1C1B94D88();
  sub_1C1B95238();

  if (!v27[3])
  {
    sub_1C1AA7C8C(v27, &qword_1EBF08850, &qword_1C1B9CC70);
    goto LABEL_12;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    if (qword_1EDE6C4E0 != -1)
    {
      swift_once();
    }

    v20 = sub_1C1B94BE8();
    sub_1C1AB4454(v20, qword_1EDE6D058);
    v21 = sub_1C1B94BC8();
    v22 = sub_1C1B95128();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1C1AA2000, v21, v22, "Sponsorship ad manager failed to decode SponsorshipArchive.", v23, 2u);
      MEMORY[0x1C6908230](v23, -1, -1);
    }

    return;
  }

  v10 = sub_1C1B94928();
  v11 = sub_1C1B447A0(v10);
  v12 = sub_1C1B94918();
  v13 = v12;
  if (v12 >> 62)
  {
    v14 = sub_1C1B953A8();
    if (v14)
    {
      goto LABEL_5;
    }

LABEL_19:

    v24 = MEMORY[0x1E69E7CC0];
LABEL_20:
    swift_beginAccess();
    v25 = *(v3 + 24);
    *(v3 + 24) = v24;

    return;
  }

  v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
    goto LABEL_19;
  }

LABEL_5:
  v27[0] = MEMORY[0x1E69E7CC0];
  sub_1C1B95518();
  if ((v14 & 0x8000000000000000) == 0)
  {
    v15 = 0;
    do
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1C6907490](v15, v13);
      }

      else
      {
        v16 = *(v13 + 8 * v15 + 32);
      }

      v17 = v16;
      ++v15;
      v18 = v11;
      _s15PromotedContentAAC11contentData7contextABSo09APContentD0C_AA17PromotableContext_pSgtcfC_0(v17, v11);
      sub_1C1B954F8();
      v19 = *(v27[0] + 16);
      sub_1C1B95528();
      sub_1C1B95538();
      sub_1C1B95508();
    }

    while (v14 != v15);

    v24 = v27[0];
    goto LABEL_20;
  }

  __break(1u);
}

uint64_t sub_1C1B8D2F4(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v9 = sub_1C1B94588();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1B94578();
  swift_beginAccess();
  v63 = v4;
  v14 = *(v4 + 24);
  v67 = v13;
  v68 = a3;
  v65 = a3;
  v69 = a4;
  strcpy(v70, "superfeed_key1");
  v70[15] = -18;
  v71 = a2;

  v15 = sub_1C1AAE7B4(sub_1C1B91B60, v66, v14);
  v16 = *(v10 + 8);
  v16(v13, v9);
  if (v15 >> 62)
  {
    goto LABEL_34;
  }

  if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    do
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x1C6907490](0, v15);
      }

      else
      {
        if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_46;
        }

        v17 = *(v15 + 32);
      }

      v18 = v17;

      v19 = OBJC_IVAR___APPCPromotedContent_bestRepresentation;
      swift_beginAccess();
      v20 = *&v18[v19];
      swift_unknownObjectRetain();

      if (!v20)
      {
        goto LABEL_36;
      }

      type metadata accessor for ClientLayoutRepresentation();
      v21 = swift_dynamicCastClass();
      if (!v21)
      {
        swift_unknownObjectRelease();
        goto LABEL_36;
      }

      v22 = (v21 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_journeyRelayCampaignID);
      v23 = *(v21 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_journeyRelayCampaignID + 8);
      v61[1] = v20;
      if (!v23)
      {
        if (qword_1EDE6C4E0 != -1)
        {
          swift_once();
        }

        v64 = v16;
        v36 = sub_1C1B94BE8();
        sub_1C1AB4454(v36, qword_1EDE6D058);

        v37 = sub_1C1B94BC8();
        v38 = sub_1C1B95108();

        v39 = a4;
        if (os_log_type_enabled(v37, v38))
        {
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          v62 = v9;
          v42 = v41;
          v73 = v41;
          *v40 = 67109378;
          *(v40 + 4) = 36;
          *(v40 + 8) = 2080;
          v43 = v65;
          *(v40 + 10) = sub_1C1AC7650(v65, v39, &v73);
          _os_log_impl(&dword_1C1AA2000, v37, v38, "Context ID: %-*s There are no campaign ID for the today feed to perform a brand conflict check with.", v40, 0x12u);
          sub_1C1AA86F8(v42);
          v44 = v42;
          v9 = v62;
          MEMORY[0x1C6908230](v44, -1, -1);
          MEMORY[0x1C6908230](v40, -1, -1);
        }

        else
        {

          v43 = v65;
        }

        v45 = sub_1C1B94578();
        v46 = *(v63 + 24);
        MEMORY[0x1EEE9AC00](v45);
        v61[-6] = v13;
        v61[-5] = v43;
        v61[-4] = v39;
        v61[-3] = 0x6F72677265707573;
        v61[-2] = 0xEF3179656B5F7075;
        v61[-1] = a1;

        v35 = sub_1C1AAE7B4(sub_1C1B91B60, &v61[-8], v46);
        swift_unknownObjectRelease();
        goto LABEL_42;
      }

      v64 = *v22;
      v62 = v23;

      v24 = sub_1C1B94578();
      v25 = *(v63 + 24);
      MEMORY[0x1EEE9AC00](v24);
      v26 = v65;
      v61[-6] = v13;
      v61[-5] = v26;
      v61[-4] = a4;
      v61[-3] = 0x6F72677265707573;
      v61[-2] = 0xEF3179656B5F7075;
      v61[-1] = a1;

      v27 = sub_1C1AAE7B4(sub_1C1B91B60, &v61[-8], v25);
      v28 = v9;
      v9 = v27;
      v16(v13, v28);
      v73 = MEMORY[0x1E69E7CC0];
      if (!(v9 >> 62))
      {
        v29 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_11;
      }

LABEL_46:
      v29 = sub_1C1B953A8();
LABEL_11:
      v15 = v65;
      a1 = v62;
      if (!v29)
      {
        v35 = MEMORY[0x1E69E7CC0];
LABEL_29:

        swift_unknownObjectRelease();

        return v35;
      }

      v13 = 0;
      v63 = v9 & 0xC000000000000001;
      v30 = v9 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v63)
        {
          v31 = v9;
          v32 = MEMORY[0x1C6907490](v13, v9);
        }

        else
        {
          if (v13 >= *(v30 + 16))
          {
            goto LABEL_33;
          }

          v31 = v9;
          v32 = *(v9 + 8 * v13 + 32);
        }

        v9 = v32;
        v16 = (v13 + 1);
        if (__OFADD__(v13, 1))
        {
          break;
        }

        v72 = v32;
        if (sub_1C1B8DB3C(&v72, v15, a4, v64, a1))
        {
          sub_1C1B954F8();
          v33 = a4;
          v34 = *(v73 + 16);
          sub_1C1B95528();
          a4 = v33;
          a1 = v62;
          sub_1C1B95538();
          sub_1C1B95508();
          v15 = v65;
        }

        else
        {
        }

        ++v13;
        v9 = v31;
        if (v16 == v29)
        {
          v35 = v73;
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      ;
    }

    while (sub_1C1B953A8());
  }

LABEL_36:
  if (qword_1EDE6C4E0 != -1)
  {
    swift_once();
  }

  v64 = v16;
  v47 = sub_1C1B94BE8();
  sub_1C1AB4454(v47, qword_1EDE6D058);

  v48 = sub_1C1B94BC8();
  v49 = sub_1C1B95108();

  v50 = a4;
  if (os_log_type_enabled(v48, v49))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v62 = 0;
    v53 = a1;
    v54 = v9;
    v55 = v52;
    v73 = v52;
    *v51 = 67109378;
    *(v51 + 4) = 36;
    *(v51 + 8) = 2080;
    v56 = v65;
    *(v51 + 10) = sub_1C1AC7650(v65, v50, &v73);
    _os_log_impl(&dword_1C1AA2000, v48, v49, "Context ID: %-*s There are no eligible masthead ads for the today feed to perform a brand conflict check with.", v51, 0x12u);
    sub_1C1AA86F8(v55);
    v57 = v55;
    v9 = v54;
    a1 = v53;
    MEMORY[0x1C6908230](v57, -1, -1);
    MEMORY[0x1C6908230](v51, -1, -1);
  }

  else
  {

    v56 = v65;
  }

  v58 = sub_1C1B94578();
  v59 = *(v63 + 24);
  MEMORY[0x1EEE9AC00](v58);
  v61[-6] = v13;
  v61[-5] = v56;
  v61[-4] = v50;
  v61[-3] = 0x6F72677265707573;
  v61[-2] = 0xEF3179656B5F7075;
  v61[-1] = a1;

  v35 = sub_1C1AAE7B4(sub_1C1B91B60, &v61[-8], v59);
LABEL_42:
  v64(v13, v9);
  return v35;
}

uint64_t sub_1C1B8DB3C(void **a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = *a1;
  v10 = OBJC_IVAR___APPCPromotedContent_bestRepresentation;
  swift_beginAccess();
  if (!*&v9[v10] || (type metadata accessor for ClientLayoutRepresentation(), (v11 = swift_dynamicCastClass()) == 0))
  {
    if (qword_1EDE6C4E0 != -1)
    {
      swift_once();
    }

    v27 = sub_1C1B94BE8();
    sub_1C1AB4454(v27, qword_1EDE6D058);

    v28 = v9;
    v29 = sub_1C1B94BC8();
    v30 = sub_1C1B95108();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v33 = a2;
      v34 = v32;
      v70 = v32;
      *v31 = 67109890;
      *(v31 + 4) = 36;
      *(v31 + 8) = 2080;
      *(v31 + 10) = sub_1C1AC7650(v33, a3, &v70);
      *(v31 + 18) = 1024;
      *(v31 + 20) = 36;
      *(v31 + 24) = 2080;
      v35 = &v28[OBJC_IVAR___APPCPromotedContent_identifier];
      swift_beginAccess();
      v36 = *v35;
      v37 = v35[1];

      v38 = sub_1C1AC7650(v36, v37, &v70);

      *(v31 + 26) = v38;
      _os_log_impl(&dword_1C1AA2000, v29, v30, "Context ID: %-*s Content ID: %-*s Content is ineligible for sponsorship because it's campaign ID cannot be determined because it is of the wrong type.", v31, 0x22u);
      swift_arrayDestroy();
      MEMORY[0x1C6908230](v34, -1, -1);
      MEMORY[0x1C6908230](v31, -1, -1);
    }

    goto LABEL_30;
  }

  v12 = (v11 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_journeyRelayCampaignID);
  v13 = *(v11 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_journeyRelayCampaignID + 8);
  if (!v13)
  {
    v39 = qword_1EDE6C4E0;
    swift_unknownObjectRetain();
    if (v39 != -1)
    {
      swift_once();
    }

    v40 = sub_1C1B94BE8();
    sub_1C1AB4454(v40, qword_1EDE6D058);

    v41 = v9;
    v29 = sub_1C1B94BC8();
    v42 = sub_1C1B95108();

    if (!os_log_type_enabled(v29, v42))
    {
      goto LABEL_29;
    }

    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v45 = a2;
    v46 = v44;
    v70 = v44;
    *v43 = 67109890;
    *(v43 + 4) = 36;
    *(v43 + 8) = 2080;
    *(v43 + 10) = sub_1C1AC7650(v45, a3, &v70);
    *(v43 + 18) = 1024;
    *(v43 + 20) = 36;
    *(v43 + 24) = 2080;
    v47 = &v41[OBJC_IVAR___APPCPromotedContent_identifier];
    swift_beginAccess();
    v48 = *v47;
    v49 = v47[1];

    v50 = sub_1C1AC7650(v48, v49, &v70);

    *(v43 + 26) = v50;
    _os_log_impl(&dword_1C1AA2000, v29, v42, "Context ID: %-*s Content ID: %-*s Content is ineligible for sponsorship because it does not contain a campaign ID to match against.", v43, 0x22u);
    swift_arrayDestroy();
    MEMORY[0x1C6908230](v46, -1, -1);
    v51 = v43;
    goto LABEL_27;
  }

  v14 = *v12 == a4 && v13 == a5;
  v69 = *v12;
  if (!v14 && (sub_1C1B95888() & 1) == 0)
  {
    v52 = qword_1EDE6C4E0;
    swift_unknownObjectRetain();

    if (v52 != -1)
    {
      swift_once();
    }

    v53 = sub_1C1B94BE8();
    sub_1C1AB4454(v53, qword_1EDE6D058);

    v54 = v9;

    osloga = sub_1C1B94BC8();
    v55 = sub_1C1B95108();

    v66 = v55;
    v56 = v55;
    v29 = osloga;
    if (!os_log_type_enabled(osloga, v56))
    {

      goto LABEL_29;
    }

    v57 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v70 = v63;
    *v57 = 67110402;
    *(v57 + 4) = 36;
    *(v57 + 8) = 2080;
    *(v57 + 10) = sub_1C1AC7650(a2, a3, &v70);
    *(v57 + 18) = 1024;
    *(v57 + 20) = 36;
    *(v57 + 24) = 2080;
    v58 = &v54[OBJC_IVAR___APPCPromotedContent_identifier];
    swift_beginAccess();
    v60 = *v58;
    v59 = v58[1];

    v61 = sub_1C1AC7650(v60, v59, &v70);

    *(v57 + 26) = v61;
    *(v57 + 34) = 2080;
    v62 = sub_1C1AC7650(v69, v13, &v70);

    *(v57 + 36) = v62;
    *(v57 + 44) = 2080;
    *(v57 + 46) = sub_1C1AC7650(a4, a5, &v70);
    _os_log_impl(&dword_1C1AA2000, osloga, v66, "Context ID: %-*s Content ID: %-*s Content is ineligible for sponsorship because it's campaign ID %s does not match %s.", v57, 0x36u);
    swift_arrayDestroy();
    MEMORY[0x1C6908230](v63, -1, -1);
    v51 = v57;
LABEL_27:
    MEMORY[0x1C6908230](v51, -1, -1);
LABEL_29:
    swift_unknownObjectRelease();
LABEL_30:

    return 0;
  }

  oslog = a2;
  v15 = qword_1EDE6C4E0;
  swift_unknownObjectRetain();

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = sub_1C1B94BE8();
  sub_1C1AB4454(v16, qword_1EDE6D058);

  v17 = v9;

  v18 = sub_1C1B94BC8();
  v19 = sub_1C1B95108();

  if (os_log_type_enabled(v18, v19))
  {
    log = v18;
    v20 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v70 = v65;
    *v20 = 67110402;
    *(v20 + 4) = 36;
    *(v20 + 8) = 2080;
    *(v20 + 10) = sub_1C1AC7650(oslog, a3, &v70);
    *(v20 + 18) = 1024;
    *(v20 + 20) = 36;
    *(v20 + 24) = 2080;
    v21 = &v17[OBJC_IVAR___APPCPromotedContent_identifier];
    swift_beginAccess();
    v22 = *v21;
    v23 = v21[1];

    v24 = sub_1C1AC7650(v22, v23, &v70);

    *(v20 + 26) = v24;
    *(v20 + 34) = 2080;
    v25 = sub_1C1AC7650(v69, v13, &v70);

    *(v20 + 36) = v25;
    *(v20 + 44) = 2080;
    *(v20 + 46) = sub_1C1AC7650(a4, a5, &v70);
    _os_log_impl(&dword_1C1AA2000, log, v19, "Context ID: %-*s Content ID: %-*s Content is eligible for sponsorship because it's campaign ID %s does match %s.", v20, 0x36u);
    swift_arrayDestroy();
    MEMORY[0x1C6908230](v65, -1, -1);
    MEMORY[0x1C6908230](v20, -1, -1);
    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  return 1;
}

uint64_t sub_1C1B8E3F0(void **a1, char *a2, uint64_t a3, NSObject *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v205 = a7;
  v204 = a6;
  v203 = a5;
  v210 = a4;
  v209 = a3;
  v9 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v203 - v11;
  v13 = sub_1C1B94588();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v206 = &v203 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v207 = &v203 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v208 = &v203 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v203 - v22;
  v24 = *a1;
  v25 = OBJC_IVAR___APPCPromotedContent_startDate;
  swift_beginAccess();
  v211 = v24;
  v26 = &v24[v25];
  v27 = v14;
  sub_1C1AA7E30(v26, v12, &qword_1EBF07F50, &qword_1C1B9A590);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1C1AA7C8C(v12, &qword_1EBF07F50, &qword_1C1B9A590);
  }

  else
  {
    (*(v14 + 32))(v23, v12, v13);
    if (sub_1C1B94548())
    {
      v28 = v23;
      v29 = v13;
      v30 = v211;
      if (qword_1EDE6C4E0 != -1)
      {
        swift_once();
      }

      v31 = sub_1C1B94BE8();
      sub_1C1AB4454(v31, qword_1EDE6D058);
      v32 = *(v27 + 16);
      v33 = v208;
      v206 = v28;
      v32(v208, v28, v29);
      v34 = v27;
      v35 = v207;
      v32(v207, a2, v29);
      v36 = v210;

      v37 = v30;
      v38 = sub_1C1B94BC8();
      v39 = sub_1C1B95108();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v211 = swift_slowAlloc();
        v214[0] = v211;
        *v40 = 67110402;
        LODWORD(v205) = v39;
        *(v40 + 4) = 36;
        *(v40 + 8) = 2080;
        *(v40 + 10) = sub_1C1AC7650(v209, v36, v214);
        *(v40 + 18) = 1024;
        *(v40 + 20) = 36;
        *(v40 + 24) = 2080;
        v41 = &v37[OBJC_IVAR___APPCPromotedContent_identifier];
        swift_beginAccess();
        v43 = *v41;
        v42 = v41[1];

        v44 = sub_1C1AC7650(v43, v42, v214);

        *(v40 + 26) = v44;
        *(v40 + 34) = 2080;
        sub_1C1B91B08(&qword_1EBF09B68, MEMORY[0x1E6969530]);
        v45 = v208;
        v46 = sub_1C1B95858();
        v210 = v38;
        v47 = v46;
        v49 = v48;
        v50 = *(v34 + 8);
        v50(v45, v29);
        v51 = sub_1C1AC7650(v47, v49, v214);

        *(v40 + 36) = v51;
        *(v40 + 44) = 2080;
        v52 = sub_1C1B95858();
        v54 = v53;
        v50(v35, v29);
        v55 = sub_1C1AC7650(v52, v54, v214);

        *(v40 + 46) = v55;
        v56 = v210;
        _os_log_impl(&dword_1C1AA2000, v210, v205, "Context ID: %-*s Content ID: %-*s Content is ineligible for sponsorship because the start date %s is greater than the current date %s.", v40, 0x36u);
        v57 = v211;
        swift_arrayDestroy();
        MEMORY[0x1C6908230](v57, -1, -1);
        MEMORY[0x1C6908230](v40, -1, -1);

        v50(v206, v29);
      }

      else
      {

        v87 = *(v34 + 8);
        v87(v35, v29);
        v87(v33, v29);
        v87(v206, v29);
      }

      return 0;
    }

    (*(v14 + 8))(v23, v13);
  }

  v58 = v211;
  v59 = OBJC_IVAR___APPCPromotedContent_bestRepresentation;
  swift_beginAccess();
  v60 = *&v58[v59];
  v61 = v210;
  if (!v60 || (type metadata accessor for ClientLayoutRepresentation(), (v62 = swift_dynamicCastClass()) == 0))
  {
    if (qword_1EDE6C4E0 != -1)
    {
      swift_once();
    }

    v77 = sub_1C1B94BE8();
    sub_1C1AB4454(v77, qword_1EDE6D058);

    v78 = v58;
    v79 = sub_1C1B94BC8();
    v80 = sub_1C1B95108();

    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v213[0] = v82;
      *v81 = 67109890;
      *(v81 + 4) = 36;
      *(v81 + 8) = 2080;
      *(v81 + 10) = sub_1C1AC7650(v209, v61, v213);
      *(v81 + 18) = 1024;
      *(v81 + 20) = 36;
      *(v81 + 24) = 2080;
      v83 = &v78[OBJC_IVAR___APPCPromotedContent_identifier];
      swift_beginAccess();
      v84 = *v83;
      v85 = v83[1];

      v86 = sub_1C1AC7650(v84, v85, v213);

      *(v81 + 26) = v86;
      _os_log_impl(&dword_1C1AA2000, v79, v80, "Context ID: %-*s Content ID: %-*s Content is ineligible for sponsorship because of type mismatch.", v81, 0x22u);
      swift_arrayDestroy();
      MEMORY[0x1C6908230](v82, -1, -1);
      MEMORY[0x1C6908230](v81, -1, -1);
    }

    goto LABEL_82;
  }

  v63 = *(v62 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_targetingDimensions);
  if (!v63)
  {
    v88 = qword_1EDE6C4E0;
    swift_unknownObjectRetain();
    if (v88 != -1)
    {
      swift_once();
    }

    v89 = sub_1C1B94BE8();
    sub_1C1AB4454(v89, qword_1EDE6D058);

    v90 = v58;
    v79 = sub_1C1B94BC8();
    v91 = sub_1C1B95108();

    if (!os_log_type_enabled(v79, v91))
    {
      goto LABEL_81;
    }

    v92 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    v213[0] = v93;
    *v92 = 67109890;
    *(v92 + 4) = 36;
    *(v92 + 8) = 2080;
    *(v92 + 10) = sub_1C1AC7650(v209, v61, v213);
    *(v92 + 18) = 1024;
    *(v92 + 20) = 36;
    *(v92 + 24) = 2080;
    v94 = &v90[OBJC_IVAR___APPCPromotedContent_identifier];
    swift_beginAccess();
    v95 = *v94;
    v96 = v94[1];

    v97 = sub_1C1AC7650(v95, v96, v213);

    *(v92 + 26) = v97;
    v98 = "Context ID: %-*s Content ID: %-*s Content is ineligible for sponsorship because of missing targeting dimensions.";
LABEL_31:
    _os_log_impl(&dword_1C1AA2000, v79, v91, v98, v92, 0x22u);
    swift_arrayDestroy();
    MEMORY[0x1C6908230](v93, -1, -1);
    MEMORY[0x1C6908230](v92, -1, -1);
    goto LABEL_81;
  }

  v64 = v58;
  v65 = *(v62 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_targetingDimensions + 8);
  v66 = OBJC_IVAR___APPCPromotedContent_expirationDate;
  swift_beginAccess();
  v67 = &v64[v66];
  v68 = v60;
  v69 = v206;
  (*(v14 + 16))(v206, v67, v13);
  v208 = v68;
  swift_unknownObjectRetain();
  sub_1C1B08B68(v63);
  LOBYTE(v68) = sub_1C1B94548();
  (*(v14 + 8))(v69, v13);
  if ((v68 & 1) == 0)
  {
    sub_1C1B0923C(v63);
    if (qword_1EDE6C4E0 != -1)
    {
      swift_once();
    }

    v99 = sub_1C1B94BE8();
    sub_1C1AB4454(v99, qword_1EDE6D058);

    v100 = v211;
    v79 = sub_1C1B94BC8();
    v91 = sub_1C1B95108();

    if (!os_log_type_enabled(v79, v91))
    {
      goto LABEL_81;
    }

    v92 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    v212[0] = v93;
    *v92 = 67109890;
    *(v92 + 4) = 36;
    *(v92 + 8) = 2080;
    *(v92 + 10) = sub_1C1AC7650(v209, v61, v212);
    *(v92 + 18) = 1024;
    *(v92 + 20) = 36;
    *(v92 + 24) = 2080;
    v101 = &v100[OBJC_IVAR___APPCPromotedContent_identifier];
    swift_beginAccess();
    v102 = *v101;
    v103 = v101[1];

    v104 = sub_1C1AC7650(v102, v103, v212);

    *(v92 + 26) = v104;
    v98 = "Context ID: %-*s Content ID: %-*s Content is ineligible for sponsorship because it has expired.";
    goto LABEL_31;
  }

  v70 = OBJC_IVAR___APPCPromotedContent_serverUnfilledReason;
  swift_beginAccess();
  v71 = *&v64[v70];
  if (v71 != 1030 && v71 != 200)
  {
    sub_1C1B0923C(v63);
    if (qword_1EDE6C4E0 != -1)
    {
      swift_once();
    }

    v105 = sub_1C1B94BE8();
    sub_1C1AB4454(v105, qword_1EDE6D058);
    v106 = v210;

    v107 = v211;
    v108 = v211;
    v79 = sub_1C1B94BC8();
    v109 = sub_1C1B95108();

    if (!os_log_type_enabled(v79, v109))
    {
      goto LABEL_81;
    }

    v110 = swift_slowAlloc();
    v215 = swift_slowAlloc();
    v111 = v215;
    *v110 = 67110146;
    *(v110 + 4) = 36;
    *(v110 + 8) = 2080;
    *(v110 + 10) = sub_1C1AC7650(v209, v106, &v215);
    *(v110 + 18) = 1024;
    *(v110 + 20) = 36;
    *(v110 + 24) = 2080;
    v112 = &v108[OBJC_IVAR___APPCPromotedContent_identifier];
    swift_beginAccess();
    v113 = *v112;
    v114 = v112[1];

    v115 = sub_1C1AC7650(v113, v114, &v215);

    *(v110 + 26) = v115;
    *(v110 + 34) = 2080;
    v116 = UnfilledReason.description.getter(*&v107[v70]);
    v118 = sub_1C1AC7650(v116, v117, &v215);

    *(v110 + 36) = v118;
    _os_log_impl(&dword_1C1AA2000, v79, v109, "Context ID: %-*s Content ID: %-*s Content is ineligible for sponsorship because it contains a server unfilled reason: %s.", v110, 0x2Cu);
    goto LABEL_69;
  }

  if (*(v65 + 16))
  {
    v72 = v203;
    v73 = v204;
    v74 = sub_1C1AA7C14(v203, v204);
    if (v75)
    {
      v76 = *(*(v65 + 56) + 8 * v74);
    }

    else
    {
      v76 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v76 = MEMORY[0x1E69E7CC0];
    v73 = v204;
    v72 = v203;
  }

  v119 = MEMORY[0x1E69E7CC0];
  if (*(v63 + 16))
  {
    v120 = sub_1C1AA7C14(v72, v73);
    if (v121)
    {
      v122 = *(*(v63 + 56) + 8 * v120);
    }

    else
    {
      v122 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v122 = MEMORY[0x1E69E7CC0];
  }

  sub_1C1B0923C(v63);
  v123 = *(v76 + 16);
  if (v123)
  {
    v212[0] = v119;
    sub_1C1AC7E04(0, v123, 0);
    v124 = v212[0];
    v125 = (v76 + 40);
    do
    {
      v126 = *(v125 - 1);
      v127 = *v125;
      v128 = sub_1C1B94DA8();
      v212[0] = v124;
      v131 = *(v124 + 16);
      v130 = *(v124 + 24);
      if (v131 >= v130 >> 1)
      {
        v207 = v128;
        v206 = v129;
        sub_1C1AC7E04((v130 > 1), v131 + 1, 1);
        v129 = v206;
        v128 = v207;
        v124 = v212[0];
      }

      *(v124 + 16) = v131 + 1;
      v132 = v124 + 16 * v131;
      *(v132 + 32) = v128;
      *(v132 + 40) = v129;
      v125 += 2;
      --v123;
    }

    while (v123);
  }

  else
  {

    v124 = MEMORY[0x1E69E7CC0];
  }

  v133 = sub_1C1B8703C(v124);

  v134 = *(v122 + 16);
  if (v134)
  {
    v212[0] = v119;
    sub_1C1AC7E04(0, v134, 0);
    v135 = v212[0];
    v136 = (v122 + 40);
    v137 = v210;
    do
    {
      v138 = *(v136 - 1);
      v139 = *v136;
      v140 = sub_1C1B94DA8();
      v212[0] = v135;
      v143 = *(v135 + 16);
      v142 = *(v135 + 24);
      if (v143 >= v142 >> 1)
      {
        v207 = v140;
        v145 = v141;
        sub_1C1AC7E04((v142 > 1), v143 + 1, 1);
        v141 = v145;
        v137 = v210;
        v140 = v207;
        v135 = v212[0];
      }

      *(v135 + 16) = v143 + 1;
      v144 = v135 + 16 * v143;
      *(v144 + 32) = v140;
      *(v144 + 40) = v141;
      v136 += 2;
      --v134;
    }

    while (v134);
  }

  else
  {

    v135 = MEMORY[0x1E69E7CC0];
    v137 = v210;
  }

  v146 = sub_1C1B8703C(v135);

  v147 = v205;
  v148 = *(v205 + 16);
  v149 = MEMORY[0x1E69E7CC0];
  if (v148)
  {
    v212[0] = MEMORY[0x1E69E7CC0];
    sub_1C1AC7E04(0, v148, 0);
    v149 = v212[0];
    v150 = (v147 + 40);
    do
    {
      v151 = *(v150 - 1);
      v152 = *v150;
      v153 = sub_1C1B94DA8();
      v212[0] = v149;
      v156 = *(v149 + 16);
      v155 = *(v149 + 24);
      if (v156 >= v155 >> 1)
      {
        v207 = v153;
        v158 = v154;
        sub_1C1AC7E04((v155 > 1), v156 + 1, 1);
        v154 = v158;
        v137 = v210;
        v153 = v207;
        v149 = v212[0];
      }

      *(v149 + 16) = v156 + 1;
      v157 = v149 + 16 * v156;
      *(v157 + 32) = v153;
      *(v157 + 40) = v154;
      v150 += 2;
      --v148;
    }

    while (v148);
  }

  v159 = sub_1C1B8703C(v149);

  if ((sub_1C1B8FB2C(v133, v159) & 1) == 0)
  {

    if (qword_1EDE6C4E0 != -1)
    {
      swift_once();
    }

    v176 = sub_1C1B94BE8();
    sub_1C1AB4454(v176, qword_1EDE6D058);

    v177 = v211;

    v79 = sub_1C1B94BC8();
    v178 = sub_1C1B95108();

    if (os_log_type_enabled(v79, v178))
    {
      v110 = swift_slowAlloc();
      v210 = swift_slowAlloc();
      v215 = v210;
      *v110 = 67110402;
      LODWORD(v211) = v178;
      *(v110 + 4) = 36;
      *(v110 + 8) = 2080;
      *(v110 + 10) = sub_1C1AC7650(v209, v137, &v215);
      *(v110 + 18) = 1024;
      *(v110 + 20) = 36;
      *(v110 + 24) = 2080;
      v179 = &v177[OBJC_IVAR___APPCPromotedContent_identifier];
      swift_beginAccess();
      v180 = *v179;
      v181 = v179[1];

      v182 = sub_1C1AC7650(v180, v181, &v215);

      *(v110 + 26) = v182;
      *(v110 + 34) = 2080;
      v183 = sub_1C1B95068();
      v185 = v184;

      v186 = sub_1C1AC7650(v183, v185, &v215);

      *(v110 + 36) = v186;
      *(v110 + 44) = 2080;
      v187 = sub_1C1B95068();
      v189 = v188;

      v190 = sub_1C1AC7650(v187, v189, &v215);

      *(v110 + 46) = v190;
      _os_log_impl(&dword_1C1AA2000, v79, v211, "Context ID: %-*s Content ID: %-*s Content is ineligible for sponsorship because key set %s is a subset of excluded keys %s.", v110, 0x36u);
      v191 = v210;
      swift_arrayDestroy();
      v175 = v191;
      goto LABEL_74;
    }

    goto LABEL_80;
  }

  if (sub_1C1B8FB2C(v146, v159))
  {
    if (qword_1EDE6C4E0 != -1)
    {
      swift_once();
    }

    v160 = sub_1C1B94BE8();
    sub_1C1AB4454(v160, qword_1EDE6D058);

    v161 = v211;

    v79 = sub_1C1B94BC8();
    v162 = sub_1C1B95108();

    if (os_log_type_enabled(v79, v162))
    {
      v110 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      v215 = v111;
      *v110 = 67110402;
      LODWORD(v211) = v162;
      *(v110 + 4) = 36;
      *(v110 + 8) = 2080;
      *(v110 + 10) = sub_1C1AC7650(v209, v137, &v215);
      *(v110 + 18) = 1024;
      *(v110 + 20) = 36;
      *(v110 + 24) = 2080;
      v163 = &v161[OBJC_IVAR___APPCPromotedContent_identifier];
      swift_beginAccess();
      v164 = *v163;
      v165 = v163[1];

      v166 = sub_1C1AC7650(v164, v165, &v215);

      *(v110 + 26) = v166;
      *(v110 + 34) = 2080;
      v167 = sub_1C1B95068();
      v169 = v168;

      v170 = sub_1C1AC7650(v167, v169, &v215);

      *(v110 + 36) = v170;
      *(v110 + 44) = 2080;
      v171 = sub_1C1B95068();
      v173 = v172;

      v174 = sub_1C1AC7650(v171, v173, &v215);

      *(v110 + 46) = v174;
      _os_log_impl(&dword_1C1AA2000, v79, v211, "Context ID: %-*s Content ID: %-*s Content is ineligible for sponsorship because key set %s is disjoint from inclusion key set %s.", v110, 0x36u);
LABEL_69:
      swift_arrayDestroy();
      v175 = v111;
LABEL_74:
      MEMORY[0x1C6908230](v175, -1, -1);
      MEMORY[0x1C6908230](v110, -1, -1);
LABEL_81:
      swift_unknownObjectRelease();
LABEL_82:

      return 0;
    }

LABEL_80:

    goto LABEL_81;
  }

  if (qword_1EDE6C4E0 != -1)
  {
    swift_once();
  }

  v192 = sub_1C1B94BE8();
  sub_1C1AB4454(v192, qword_1EDE6D058);

  v193 = v211;
  v194 = sub_1C1B94BC8();
  v195 = sub_1C1B95108();

  if (os_log_type_enabled(v194, v195))
  {
    v196 = swift_slowAlloc();
    v197 = swift_slowAlloc();
    v215 = v197;
    *v196 = 67109890;
    *(v196 + 4) = 36;
    *(v196 + 8) = 2080;
    *(v196 + 10) = sub_1C1AC7650(v209, v137, &v215);
    *(v196 + 18) = 1024;
    *(v196 + 20) = 36;
    *(v196 + 24) = 2080;
    v198 = &v193[OBJC_IVAR___APPCPromotedContent_identifier];
    swift_beginAccess();
    v199 = *v198;
    v200 = v198[1];

    v201 = sub_1C1AC7650(v199, v200, &v215);

    *(v196 + 26) = v201;
    _os_log_impl(&dword_1C1AA2000, v194, v195, "Context ID: %-*s Content ID: %-*s Content is eligible for sponsorship.", v196, 0x22u);
    swift_arrayDestroy();
    MEMORY[0x1C6908230](v197, -1, -1);
    MEMORY[0x1C6908230](v196, -1, -1);
  }

  swift_unknownObjectRelease();

  return 1;
}

uint64_t sub_1C1B8FB2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 1;
  }

  if (v2 >= v3)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  v5 = v4 + 56;
  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1;
  }

  v7 = 1 << *(v4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v4 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = v6 + 56;

  v13 = 0;
  v26 = v4;
  while (v9)
  {
    v14 = v9;
LABEL_19:
    v9 = (v14 - 1) & v14;
    if (*(v6 + 16))
    {
      v16 = (*(v4 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v14)))));
      v18 = *v16;
      v17 = v16[1];
      v19 = *(v6 + 40);
      sub_1C1B95958();

      sub_1C1B94DE8();
      v20 = sub_1C1B959A8();
      v21 = -1 << *(v6 + 32);
      v22 = v20 & ~v21;
      if ((*(v11 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
      {
        v23 = ~v21;
        while (1)
        {
          v24 = (*(v6 + 48) + 16 * v22);
          v25 = *v24 == v18 && v24[1] == v17;
          if (v25 || (sub_1C1B95888() & 1) != 0)
          {
            break;
          }

          v22 = (v22 + 1) & v23;
          if (((*(v11 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        return 0;
      }

LABEL_28:

      v4 = v26;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v10)
    {

      return 1;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      v13 = v15;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

void *SponsorshipAdManager.deinit()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[3];

  v3 = v0[4];

  return v0;
}

uint64_t SponsorshipAdManager.__deallocating_deinit()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[3];

  v3 = v0[4];

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

void *sub_1C1B8FD8C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  sub_1C1AC1F08(&qword_1EBF08D30, qword_1C1B9E9E0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
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

uint64_t sub_1C1B8FE14()
{
  v0 = sub_1C1AC1F08(&qword_1EBF09870, &qword_1C1BA3AF0);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &unk_1EBF09B70;
    v3 = &unk_1C1BA4700;
  }

  else
  {
    v2 = &unk_1EBF08D30;
    v3 = &unk_1C1B9E9E0;
  }

  return sub_1C1AC1F08(v2, v3);
}

uint64_t sub_1C1B8FEB4(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1C1B953A8();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_1C1B954A8();
}

uint64_t sub_1C1B8FF18(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1C1AC0494(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1C1B8FF94(v6);
  return sub_1C1B95508();
}

uint64_t sub_1C1B8FF94(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1C1B95848();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1C1AC1F08(&qword_1EBF07AE8, qword_1C1BA46C0);
        v6 = sub_1C1B94F28();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_1C1B90194(v8, v9, a1, v4);
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
    return sub_1C1B900A4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1C1B900A4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v5 = a3;
    v6 = *a4;
    v7 = *a4 + 8 * a3 - 8;
    v8 = result - a3;
LABEL_4:
    v9 = *(v6 + 8 * v5);
    v10 = v8;
    v15 = v7;
    while (1)
    {
      v17 = v9;
      v16 = *v7;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v11 = sub_1C1AFE010(&v17, &v16);
      swift_unknownObjectRelease();
      result = swift_unknownObjectRelease();
      if (v4)
      {
        break;
      }

      if (v11)
      {
        if (!v6)
        {
          __break(1u);
          return result;
        }

        v12 = *v7;
        v9 = *(v7 + 8);
        *v7 = v9;
        *(v7 + 8) = v12;
        v7 -= 8;
        if (!__CFADD__(v10++, 1))
        {
          continue;
        }
      }

      ++v5;
      v7 = v15 + 8;
      --v8;
      if (v5 != a2)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_1C1B90194(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v88 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v88;
    if (*v88)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_118;
      }

      goto LABEL_90;
    }

    goto LABEL_127;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v89 = v6;
      v10 = *a3;
      v11 = *(*a3 + 8 * v7);
      v92 = *(*a3 + 8 * v9);
      v93 = v11;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v12 = sub_1C1AFE010(&v93, &v92);
      if (v4)
      {
LABEL_99:

        swift_unknownObjectRelease();
        return swift_unknownObjectRelease();
      }

      v13 = v9;
      v14 = v12;
      swift_unknownObjectRelease();
      result = swift_unknownObjectRelease();
      v15 = v13 + 2;
      v86 = v13;
      v16 = 8 * v13;
      v5 = v10 + v16 + 16;
      while (1)
      {
        v7 = v89;
        if (v89 == v15)
        {
          break;
        }

        v17 = *v5;
        v92 = *(v5 - 8);
        v93 = v17;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v18 = sub_1C1AFE010(&v93, &v92);
        swift_unknownObjectRelease();
        result = swift_unknownObjectRelease();
        ++v15;
        v5 += 8;
        if ((v14 ^ v18))
        {
          v7 = v15 - 1;
          break;
        }
      }

      if (v14)
      {
        v9 = v86;
        if (v7 < v86)
        {
          goto LABEL_121;
        }

        if (v86 < v7)
        {
          v19 = 8 * v7 - 8;
          v20 = v7;
          v21 = v86;
          do
          {
            if (v21 != --v20)
            {
              v22 = *a3;
              if (!*a3)
              {
                goto LABEL_125;
              }

              v23 = *(v22 + v16);
              *(v22 + v16) = *(v22 + v19);
              *(v22 + v19) = v23;
            }

            ++v21;
            v19 -= 8;
            v16 += 8;
          }

          while (v21 < v20);
        }
      }

      else
      {
        v9 = v86;
      }
    }

    v24 = a3[1];
    if (v7 >= v24)
    {
      goto LABEL_130;
    }

    if (__OFSUB__(v7, v9))
    {
      goto LABEL_117;
    }

    if (v7 - v9 >= a4)
    {
      goto LABEL_130;
    }

    v25 = v9 + a4;
    if (__OFADD__(v9, a4))
    {
      __break(1u);
LABEL_120:
      __break(1u);
LABEL_121:
      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
      goto LABEL_124;
    }

    if (v25 >= v24)
    {
      v25 = a3[1];
    }

    if (v25 < v9)
    {
      goto LABEL_120;
    }

    if (v7 == v25)
    {
LABEL_130:
      if (v7 < v9)
      {
        goto LABEL_116;
      }
    }

    else
    {
      v72 = *a3;
      v5 = *a3 + 8 * v7 - 8;
      v87 = v9;
      v73 = v9 - v7;
      v83 = v25;
      do
      {
        v74 = *(v72 + 8 * v7);
        v84 = v73;
        v90 = v5;
        do
        {
          v92 = *v5;
          v93 = v74;
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          v75 = sub_1C1AFE010(&v93, &v92);
          if (v4)
          {
            goto LABEL_99;
          }

          v76 = v75;
          swift_unknownObjectRelease();
          result = swift_unknownObjectRelease();
          if (!v76)
          {
            break;
          }

          if (!v72)
          {
            goto LABEL_123;
          }

          v77 = *v5;
          v74 = *(v5 + 8);
          *v5 = v74;
          *(v5 + 8) = v77;
          v5 -= 8;
        }

        while (!__CFADD__(v73++, 1));
        ++v7;
        v5 = v90 + 8;
        v73 = v84 - 1;
      }

      while (v7 != v83);
      v7 = v83;
      v9 = v87;
      if (v83 < v87)
      {
        goto LABEL_116;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1C1ACE08C(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v27 = *(v8 + 2);
    v26 = *(v8 + 3);
    v28 = v27 + 1;
    if (v27 >= v26 >> 1)
    {
      result = sub_1C1ACE08C((v26 > 1), v27 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v28;
    v29 = &v8[16 * v27];
    *(v29 + 4) = v9;
    *(v29 + 5) = v7;
    v30 = *v88;
    if (!*v88)
    {
      goto LABEL_126;
    }

    if (v27)
    {
      break;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  while (1)
  {
    v31 = v28 - 1;
    if (v28 >= 4)
    {
      v36 = &v8[16 * v28 + 32];
      v37 = *(v36 - 64);
      v38 = *(v36 - 56);
      v42 = __OFSUB__(v38, v37);
      v39 = v38 - v37;
      if (v42)
      {
        goto LABEL_103;
      }

      v41 = *(v36 - 48);
      v40 = *(v36 - 40);
      v42 = __OFSUB__(v40, v41);
      v34 = v40 - v41;
      v35 = v42;
      if (v42)
      {
        goto LABEL_104;
      }

      v43 = &v8[16 * v28];
      v45 = *v43;
      v44 = *(v43 + 1);
      v42 = __OFSUB__(v44, v45);
      v46 = v44 - v45;
      if (v42)
      {
        goto LABEL_106;
      }

      v42 = __OFADD__(v34, v46);
      v47 = v34 + v46;
      if (v42)
      {
        goto LABEL_109;
      }

      if (v47 >= v39)
      {
        v65 = &v8[16 * v31 + 32];
        v67 = *v65;
        v66 = *(v65 + 1);
        v42 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v42)
        {
          goto LABEL_115;
        }

        if (v34 < v68)
        {
          v31 = v28 - 2;
        }

        goto LABEL_68;
      }

      goto LABEL_47;
    }

    if (v28 == 3)
    {
      v32 = *(v8 + 4);
      v33 = *(v8 + 5);
      v42 = __OFSUB__(v33, v32);
      v34 = v33 - v32;
      v35 = v42;
LABEL_47:
      if (v35)
      {
        goto LABEL_105;
      }

      v48 = &v8[16 * v28];
      v50 = *v48;
      v49 = *(v48 + 1);
      v51 = __OFSUB__(v49, v50);
      v52 = v49 - v50;
      v53 = v51;
      if (v51)
      {
        goto LABEL_108;
      }

      v54 = &v8[16 * v31 + 32];
      v56 = *v54;
      v55 = *(v54 + 1);
      v42 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v42)
      {
        goto LABEL_111;
      }

      if (__OFADD__(v52, v57))
      {
        goto LABEL_112;
      }

      if (v52 + v57 >= v34)
      {
        if (v34 < v57)
        {
          v31 = v28 - 2;
        }

        goto LABEL_68;
      }

      goto LABEL_61;
    }

    v58 = &v8[16 * v28];
    v60 = *v58;
    v59 = *(v58 + 1);
    v42 = __OFSUB__(v59, v60);
    v52 = v59 - v60;
    v53 = v42;
LABEL_61:
    if (v53)
    {
      goto LABEL_107;
    }

    v61 = &v8[16 * v31];
    v63 = *(v61 + 4);
    v62 = *(v61 + 5);
    v42 = __OFSUB__(v62, v63);
    v64 = v62 - v63;
    if (v42)
    {
      goto LABEL_110;
    }

    if (v64 < v52)
    {
      goto LABEL_3;
    }

LABEL_68:
    v69 = v31 - 1;
    if (v31 - 1 >= v28)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_122;
    }

    v5 = *&v8[16 * v69 + 32];
    v70 = *&v8[16 * v31 + 40];
    sub_1C1B90808((*a3 + 8 * v5), (*a3 + 8 * *&v8[16 * v31 + 32]), (*a3 + 8 * v70), v30);
    if (v4)
    {
    }

    if (v70 < v5)
    {
      goto LABEL_101;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1C1B90C2C(v8);
    }

    if (v69 >= *(v8 + 2))
    {
      goto LABEL_102;
    }

    v71 = &v8[16 * v69];
    *(v71 + 4) = v5;
    *(v71 + 5) = v70;
    v94 = v8;
    result = sub_1C1B90BA0(v31);
    v8 = v94;
    v28 = *(v94 + 2);
    if (v28 <= 1)
    {
      goto LABEL_3;
    }
  }

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
  result = sub_1C1B90C2C(v8);
  v8 = result;
LABEL_90:
  v94 = v8;
  v79 = *(v8 + 2);
  if (v79 < 2)
  {
  }

  while (*a3)
  {
    v80 = *&v8[16 * v79];
    v81 = *&v8[16 * v79 + 24];
    sub_1C1B90808((*a3 + 8 * v80), (*a3 + 8 * *&v8[16 * v79 + 16]), (*a3 + 8 * v81), v5);
    if (v4)
    {
    }

    if (v81 < v80)
    {
      goto LABEL_113;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1C1B90C2C(v8);
    }

    if (v79 - 2 >= *(v8 + 2))
    {
      goto LABEL_114;
    }

    v82 = &v8[16 * v79];
    *v82 = v80;
    *(v82 + 1) = v81;
    v94 = v8;
    result = sub_1C1B90BA0(v79 - 1);
    v8 = v94;
    v79 = *(v94 + 2);
    if (v79 <= 1)
    {
    }
  }

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

uint64_t sub_1C1B90808(void **__dst, void **__src, void **a3, void **a4)
{
  v5 = a4;
  v6 = a3;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v15 = (v5 + 8 * v10);
    if (v8 < 8 || __src >= v6)
    {
LABEL_21:
      v21 = v7;
      goto LABEL_53;
    }

    v16 = __src;
    while (1)
    {
      v45 = *v16;
      v44 = *v5;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v17 = sub_1C1AFE010(&v45, &v44);
      if (v4)
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v33 = v15 - v5 + 7;
        if ((v15 - v5) >= 0)
        {
          v33 = v15 - v5;
        }

        if (v7 < v5 || v7 >= v5 + (v33 & 0xFFFFFFFFFFFFFFF8) || v7 != v5)
        {
          v34 = 8 * (v33 >> 3);
          v35 = v7;
          goto LABEL_59;
        }

        return 1;
      }

      v18 = v17;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (!v18)
      {
        break;
      }

      v19 = v16;
      v20 = v7 == v16++;
      if (!v20)
      {
        goto LABEL_18;
      }

LABEL_19:
      ++v7;
      if (v5 >= v15 || v16 >= v6)
      {
        goto LABEL_21;
      }
    }

    v19 = v5;
    v20 = v7 == v5;
    v5 += 8;
    if (v20)
    {
      goto LABEL_19;
    }

LABEL_18:
    *v7 = *v19;
    goto LABEL_19;
  }

  v21 = __src;
  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v15 = (v5 + 8 * v13);
  if (v11 < 8 || v21 <= v7)
  {
LABEL_53:
    v39 = v15 - v5 + 7;
    if ((v15 - v5) >= 0)
    {
      v39 = v15 - v5;
    }

    if (v21 >= v5 && v21 < v5 + (v39 & 0xFFFFFFFFFFFFFFF8) && v21 == v5)
    {
      return 1;
    }

    v34 = 8 * (v39 >> 3);
    v35 = v21;
LABEL_59:
    v38 = v5;
LABEL_60:
    memmove(v35, v38, v34);
    return 1;
  }

  v43 = v5;
  v22 = -v5;
  v41 = -v5;
LABEL_28:
  v42 = v21;
  v23 = v21 - 1;
  v24 = v15 + v22;
  --v6;
  v25 = v15;
  v26 = v15;
  while (1)
  {
    v27 = *--v26;
    v45 = v27;
    v28 = v23;
    v44 = *v23;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v29 = sub_1C1AFE010(&v45, &v44);
    if (v4)
    {
      break;
    }

    v30 = v29;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v31 = v6 + 1;
    if (v30)
    {
      v32 = v28;
      if (v31 != v42)
      {
        *v6 = *v28;
      }

      v5 = v43;
      v15 = v25;
      if (v25 <= v43 || (v21 = v32, v22 = v41, v32 <= v7))
      {
        v21 = v32;
        goto LABEL_53;
      }

      goto LABEL_28;
    }

    if (v31 != v25)
    {
      *v6 = *v26;
    }

    v24 -= 8;
    --v6;
    v25 = v26;
    v23 = v28;
    if (v26 <= v43)
    {
      v15 = v26;
      v21 = v42;
      v5 = v43;
      goto LABEL_53;
    }
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v24 >= 0)
  {
    v36 = v24;
  }

  else
  {
    v36 = v24 + 7;
  }

  v37 = v36 >> 3;
  v35 = v42;
  v38 = v43;
  if (v42 < v43 || v42 >= (v43 + (v36 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v42, v43, 8 * v37);
    return 1;
  }

  if (v42 != v43)
  {
    v34 = 8 * v37;
    goto LABEL_60;
  }

  return 1;
}

uint64_t sub_1C1B90BA0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1C1B90C2C(v3);
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

uint64_t sub_1C1B90C70(unint64_t a1, void (*a2)(void *, uint64_t, unint64_t))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = sub_1C1B953A8();
  if (!v5)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v6 = v5;
  v7 = sub_1C1B8FD8C(v5, 0);
  a2(v7 + 4, v6, a1);
  v9 = v8;

  result = v7;
  if (v9 != v6)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

char *sub_1C1B90D0C(void *a1, uint64_t a2)
{
  v4 = sub_1C1B945F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v25[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C1B945E8();
  v9 = sub_1C1B945A8();
  v11 = v10;
  (*(v5 + 8))(v8, v4);
  v12 = a1;
  v13 = sub_1C1AAE960(v9, v11, 7, 100, v12, a2, 0.0, 0.0);
  v14 = OBJC_IVAR___APPCPromotedContent_metricsHelper;
  swift_beginAccess();
  v15 = *&v13[v14];
  type metadata accessor for JourneyMetricsHelper();
  v16 = swift_dynamicCastClass();
  if (v16)
  {
    v17 = v16;
    v18 = OBJC_IVAR___APPCContext_newsContext;
    swift_beginAccess();
    v19 = *&v12[v18];
    v20 = *(v17 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_newsSupplementalContext);
    *(v17 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_newsSupplementalContext) = v19;
    swift_unknownObjectRetain();
    v21 = v19;

    v22 = v17 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_serverUnfilledReason;
    *v22 = a2;
    *(v22 + 8) = 0;
    swift_unknownObjectRelease();
  }

  else
  {
    v23 = sub_1C1B94D78();
    APSimulateCrash();
  }

  return v13;
}

char *sub_1C1B90F08(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1B945F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v34 - v10;
  sub_1C1B945E8();
  v12 = sub_1C1B945A8();
  v14 = v13;
  v15 = *(v5 + 8);
  v15(v11, v4);
  sub_1C1B945E8();
  v16 = sub_1C1B945A8();
  v18 = v17;
  v15(v9, v4);
  v19 = sub_1C1B7474C(v12, v14, v16, v18, a2);

  v20 = OBJC_IVAR___APPCPromotedContent_metricsHelper;
  swift_beginAccess();
  v21 = *&v19[v20];
  type metadata accessor for JourneyMetricsHelper();
  v22 = swift_dynamicCastClass();
  if (v22)
  {
    v23 = v22;
    v24 = (a1 + OBJC_IVAR___APPCPromotedContent_identifier);
    swift_beginAccess();
    v25 = *v24;
    v26 = v24[1];
    v27 = (v23 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_originalContentIdentifier);
    v28 = *(v23 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_originalContentIdentifier + 8);
    *v27 = v25;
    v27[1] = v26;
    swift_unknownObjectRetain();

    v29 = OBJC_IVAR___APPCContext_newsContext;
    swift_beginAccess();
    v30 = *(a2 + v29);
    v31 = *(v23 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_newsSupplementalContext);
    *(v23 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_newsSupplementalContext) = v30;
    v32 = v30;
    swift_unknownObjectRelease();
  }

  else
  {
    v31 = sub_1C1B94D78();
    APSimulateCrash();
  }

  [v19 setBestRepresentation_];
  swift_unknownObjectRelease();
  return v19;
}

uint64_t sub_1C1B911E8()
{
  v1 = sub_1C1B945F8();
  v0[11] = v1;
  v2 = *(v1 - 8);
  v0[12] = v2;
  v3 = *(v2 + 64) + 15;
  v0[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C1B912A4, 0, 0);
}

uint64_t sub_1C1B912A4()
{
  v27 = v0;
  v1 = sub_1C1B5B934();
  v0[14] = v1;
  v2 = [objc_opt_self() sharedCoordinator];
  v3 = type metadata accessor for AdRequestManager(0);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  v6 = swift_allocObject();
  v0[15] = v6;
  v6[3] = MEMORY[0x1E69E7CD0];
  v6[4] = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  sub_1C1B945E8();
  *(v6 + OBJC_IVAR____TtC15PromotedContent16AdRequestManager_isSessionActive) = 1;
  v6[2] = v2;
  v7 = v2;
  v8 = sub_1C1B945B8();
  [v7 beginSessionForID_];

  if (qword_1EDE6C4E0 != -1)
  {
    swift_once();
  }

  v9 = sub_1C1B94BE8();
  sub_1C1AB4454(v9, qword_1EDE6D058);
  v10 = v1;
  v11 = sub_1C1B94BC8();
  v12 = sub_1C1B95108();

  if (os_log_type_enabled(v11, v12))
  {
    v24 = v12;
    v14 = v0[12];
    v13 = v0[13];
    v15 = v0[11];
    v16 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = v25;
    *v16 = 67109378;
    *(v16 + 4) = 36;
    *(v16 + 8) = 2080;
    v17 = OBJC_IVAR___APPCBaseContext_identifier;
    swift_beginAccess();
    (*(v14 + 16))(v13, &v10[v17], v15);
    v18 = sub_1C1B945A8();
    v20 = v19;
    (*(v14 + 8))(v13, v15);
    v21 = sub_1C1AC7650(v18, v20, &v26);

    *(v16 + 10) = v21;
    _os_log_impl(&dword_1C1AA2000, v11, v24, "Context ID: %-*s Sponsorship Ad Manager is fetching sponsorship content.", v16, 0x12u);
    sub_1C1AA86F8(v25);
    MEMORY[0x1C6908230](v25, -1, -1);
    MEMORY[0x1C6908230](v16, -1, -1);
  }

  v22 = swift_task_alloc();
  v0[16] = v22;
  *v22 = v0;
  v22[1] = sub_1C1B915CC;

  return sub_1C1B45AF8(v10, &unk_1F414E5E8, 1);
}

uint64_t sub_1C1B915CC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 128);
  v7 = *v2;
  *(v3 + 136) = a1;
  *(v3 + 144) = v1;

  if (v1)
  {
    v5 = sub_1C1B919AC;
  }

  else
  {
    v5 = sub_1C1B916E0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C1B916E0()
{
  v1 = *(v0 + 136);
  if (v1 >> 62)
  {
    goto LABEL_21;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_22;
  }

LABEL_3:
  v30 = MEMORY[0x1E69E7CC0];
  result = sub_1C1B95518();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = 0;
    v5 = *(v0 + 112);
    v6 = *(v0 + 136) + 32;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1C6907490](v4, *(v0 + 136));
      }

      else
      {
        v7 = *(v6 + 8 * v4);
      }

      v8 = v7;
      ++v4;
      v9 = *(v0 + 112);
      _s15PromotedContentAAC11contentData7contextABSo09APContentD0C_AA17PromotableContext_pSgtcfC_0(v8, v5);
      sub_1C1B954F8();
      v10 = *(v30 + 16);
      sub_1C1B95528();
      sub_1C1B95538();
      sub_1C1B95508();
    }

    while (v2 != v4);
    v11 = *(v0 + 136);

    v12 = v30;
    if (v30 >> 62)
    {
      while (1)
      {
        v13 = sub_1C1B953A8();
        if (!v13)
        {
          break;
        }

LABEL_11:
        v14 = 0;
        v1 = v12 & 0xC000000000000001;
        while (1)
        {
          if (v1)
          {
            v15 = MEMORY[0x1C6907490](v14, v12);
          }

          else
          {
            if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_20;
            }

            v15 = *(v12 + 8 * v14 + 32);
          }

          v16 = v15;
          v17 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            break;
          }

          v18 = OBJC_IVAR___APPCPromotedContent_metricsHelper;
          swift_beginAccess();
          [*&v16[v18] delivered];

          ++v14;
          if (v17 == v13)
          {
            goto LABEL_24;
          }
        }

        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        v2 = sub_1C1B953A8();
        if (v2)
        {
          goto LABEL_3;
        }

LABEL_22:
        v19 = *(v0 + 136);

        v12 = MEMORY[0x1E69E7CC0];
        if (!(MEMORY[0x1E69E7CC0] >> 62))
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v13)
      {
        goto LABEL_11;
      }
    }

LABEL_24:
    v21 = *(v0 + 112);
    v20 = *(v0 + 120);
    v23 = *(v0 + 96);
    v22 = *(v0 + 104);
    v24 = *(v0 + 88);
    v25 = OBJC_IVAR___APPCBaseContext_identifier;
    swift_beginAccess();
    (*(v23 + 16))(v22, &v21[v25], v24);
    v26 = sub_1C1B945A8();
    v28 = v27;

    (*(v23 + 8))(v22, v24);

    v29 = *(v0 + 8);

    return v29(v12, v26, v28);
  }

  return result;
}

uint64_t sub_1C1B919AC()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];

  v4 = v0[1];
  v5 = v0[18];

  return v4();
}

uint64_t sub_1C1B91A6C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1C1AC3404(&qword_1EBF09B60, &unk_1C1BA46B0);
    sub_1C1B91B08(a2, type metadata accessor for PromotedContent);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C1B91B08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C1B91B88(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x79 && *(a1 + 8))
  {
    return (*a1 + 121);
  }

  v3 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x78)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1C1B91BE4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x78)
  {
    *result = a2 - 121;
    if (a3 >= 0x79)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x79)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1C1B91C44@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
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

uint64_t sub_1C1B91CA4@<X0>(char *a1@<X8>)
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

uint64_t sub_1C1B91D08(uint64_t a1)
{
  v2 = sub_1C1B92BA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1B91D44(uint64_t a1)
{
  v2 = sub_1C1B92BA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C1B91DA8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1C1B924F4();
  *a2 = result;
  return result;
}

void sub_1C1B91DD8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 7364980;
  v5 = 0xE800000000000000;
  v6 = 0x706154646961726DLL;
  if (v2 != 6)
  {
    v6 = 0x6B6E694C70656564;
    v5 = 0xEB00000000706154;
  }

  v7 = 0xE900000000000070;
  v8 = 0x6154646E61707865;
  if (v2 != 4)
  {
    v8 = 0x616572747374756FLL;
    v7 = 0xEC0000007061546DLL;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x7261646E656C6163;
  v10 = 0xEB00000000706154;
  if (v2 != 2)
  {
    v9 = 0x70615465726F7473;
    v10 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = 0x706154626577;
    v3 = 0xE600000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v9;
    v3 = v10;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_1C1B91F98(void *a1, unint64_t a2)
{
  v5 = sub_1C1AC1F08(&qword_1EBF09B80, &qword_1C1BA4920);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B92BA4();
  sub_1C1B95A18();
  v11 = a2 >> 61;
  v18 = a2 >> 61;
  v17 = 0;
  sub_1C1B92C4C();
  sub_1C1B95808();
  if (!v2)
  {
    if (v11 > 3)
    {
      a2 &= 0x1FFFFFFFFFFFFFFFuLL;
      if (v11 > 5)
      {
        if (v11 == 6)
        {
          v12 = type metadata accessor for MobileRichAdInterfaceDefinitionTapAction;
          sub_1C1B92CA0(&qword_1EBF09518, type metadata accessor for MobileRichAdInterfaceDefinitionTapAction);
          v13 = &unk_1EBF09520;
        }

        else
        {
          v12 = type metadata accessor for DeepLinkTapAction;
          sub_1C1B92CA0(&qword_1EBF09508, type metadata accessor for DeepLinkTapAction);
          v13 = &unk_1EBF09510;
        }
      }

      else if (v11 == 4)
      {
        v12 = type metadata accessor for ExpandTapAction;
        sub_1C1B92CA0(&qword_1EBF09538, type metadata accessor for ExpandTapAction);
        v13 = &unk_1EBF09540;
      }

      else
      {
        v12 = type metadata accessor for OutstreamVideoTapAction;
        sub_1C1B92CA0(&qword_1EBF09528, type metadata accessor for OutstreamVideoTapAction);
        v13 = &unk_1EBF09530;
      }
    }

    else if (v11 > 1)
    {
      a2 &= 0x1FFFFFFFFFFFFFFFuLL;
      if (v11 == 2)
      {
        v12 = type metadata accessor for CalendarTapAction;
        sub_1C1B92CA0(&qword_1EBF09558, type metadata accessor for CalendarTapAction);
        v13 = &unk_1EBF09560;
      }

      else
      {
        v12 = type metadata accessor for StoreTapAction;
        sub_1C1B92CA0(&qword_1EBF09548, type metadata accessor for StoreTapAction);
        v13 = &unk_1EBF09550;
      }
    }

    else if (v11)
    {
      a2 &= 0x1FFFFFFFFFFFFFFFuLL;
      v12 = type metadata accessor for WebTapAction;
      sub_1C1B92CA0(&qword_1EDE6B208, type metadata accessor for WebTapAction);
      v13 = &unk_1EDE6B210;
    }

    else
    {
      v12 = type metadata accessor for TapAction;
      sub_1C1B92CA0(&qword_1EBF08B80, type metadata accessor for TapAction);
      v13 = &qword_1EBF08B60;
    }

    sub_1C1B92CA0(v13, v12);
    swift_getObjectType();
    v16 = a2;
    v15[15] = 1;
    swift_getWitnessTable();
    sub_1C1B95808();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1C1B923C0@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  result = sub_1C1B92540(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1C1B92408(uint64_t a1)
{
  type metadata accessor for WebTapAction();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    return v2 | 0x2000000000000000;
  }

  type metadata accessor for CalendarTapAction();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    return v3 | 0x4000000000000000;
  }

  type metadata accessor for StoreTapAction();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    return v4 | 0x6000000000000000;
  }

  type metadata accessor for ExpandTapAction();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    return v5 | 0x8000000000000000;
  }

  type metadata accessor for OutstreamVideoTapAction();
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    return v6 | 0xA000000000000000;
  }

  type metadata accessor for MobileRichAdInterfaceDefinitionTapAction();
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    return v7 | 0xC000000000000000;
  }

  type metadata accessor for DeepLinkTapAction();
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    return v8 | 0xE000000000000000;
  }

  return a1;
}

uint64_t sub_1C1B924F4()
{
  v0 = sub_1C1B955F8();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1C1B92540(uint64_t *a1)
{
  v3 = sub_1C1AC1F08(&qword_1EBF09B78, &qword_1C1BA4918);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = a1[4];
  v9 = sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B92BA4();
  sub_1C1B95A08();
  if (!v1)
  {
    v12 = 0;
    sub_1C1B92BF8();
    sub_1C1B956F8();
    if (v11 > 3u)
    {
      if (v11 > 5u)
      {
        if (v11 == 6)
        {
          type metadata accessor for MobileRichAdInterfaceDefinitionTapAction();
          v12 = 1;
          sub_1C1B92CA0(&qword_1EBF09518, type metadata accessor for MobileRichAdInterfaceDefinitionTapAction);
          sub_1C1B956F8();
          (*(v4 + 8))(v7, v3);
          v9 = v11 | 0xC000000000000000;
        }

        else
        {
          type metadata accessor for DeepLinkTapAction();
          v12 = 1;
          sub_1C1B92CA0(&qword_1EBF09508, type metadata accessor for DeepLinkTapAction);
          sub_1C1B956F8();
          (*(v4 + 8))(v7, v3);
          v9 = v11 | 0xE000000000000000;
        }
      }

      else if (v11 == 4)
      {
        type metadata accessor for ExpandTapAction();
        v12 = 1;
        sub_1C1B92CA0(&qword_1EBF09538, type metadata accessor for ExpandTapAction);
        sub_1C1B956F8();
        (*(v4 + 8))(v7, v3);
        v9 = v11 | 0x8000000000000000;
      }

      else
      {
        type metadata accessor for OutstreamVideoTapAction();
        v12 = 1;
        sub_1C1B92CA0(&qword_1EBF09528, type metadata accessor for OutstreamVideoTapAction);
        sub_1C1B956F8();
        (*(v4 + 8))(v7, v3);
        v9 = v11 | 0xA000000000000000;
      }
    }

    else if (v11 > 1u)
    {
      if (v11 == 2)
      {
        type metadata accessor for CalendarTapAction();
        v12 = 1;
        sub_1C1B92CA0(&qword_1EBF09558, type metadata accessor for CalendarTapAction);
        sub_1C1B956F8();
        (*(v4 + 8))(v7, v3);
        v9 = v11 | 0x4000000000000000;
      }

      else
      {
        type metadata accessor for StoreTapAction();
        v12 = 1;
        sub_1C1B92CA0(&qword_1EBF09548, type metadata accessor for StoreTapAction);
        sub_1C1B956F8();
        (*(v4 + 8))(v7, v3);
        v9 = v11 | 0x6000000000000000;
      }
    }

    else if (v11)
    {
      type metadata accessor for WebTapAction();
      v12 = 1;
      sub_1C1B92CA0(&qword_1EDE6B208, type metadata accessor for WebTapAction);
      sub_1C1B956F8();
      (*(v4 + 8))(v7, v3);
      v9 = v11 | 0x2000000000000000;
    }

    else
    {
      type metadata accessor for TapAction();
      v12 = 1;
      sub_1C1B92CA0(&qword_1EBF08B80, type metadata accessor for TapAction);
      sub_1C1B956F8();
      (*(v4 + 8))(v7, v3);
      v9 = v11;
    }
  }

  sub_1C1AA86F8(a1);
  return v9;
}

unint64_t sub_1C1B92BA4()
{
  result = qword_1EDE6AD90;
  if (!qword_1EDE6AD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6AD90);
  }

  return result;
}

unint64_t sub_1C1B92BF8()
{
  result = qword_1EDE6AD68;
  if (!qword_1EDE6AD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6AD68);
  }

  return result;
}

unint64_t sub_1C1B92C4C()
{
  result = qword_1EDE6AD78;
  if (!qword_1EDE6AD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6AD78);
  }

  return result;
}

uint64_t sub_1C1B92CA0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C1B92D0C()
{
  result = qword_1EBF09B88;
  if (!qword_1EBF09B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF09B88);
  }

  return result;
}

unint64_t sub_1C1B92D64()
{
  result = qword_1EBF09B90[0];
  if (!qword_1EBF09B90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBF09B90);
  }

  return result;
}

unint64_t sub_1C1B92DBC()
{
  result = qword_1EDE6AD80;
  if (!qword_1EDE6AD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6AD80);
  }

  return result;
}

unint64_t sub_1C1B92E14()
{
  result = qword_1EDE6AD88;
  if (!qword_1EDE6AD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6AD88);
  }

  return result;
}

unint64_t sub_1C1B92E68()
{
  result = qword_1EDE6AD70;
  if (!qword_1EDE6AD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6AD70);
  }

  return result;
}

uint64_t sub_1C1B92ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1C1AC1F08(&qword_1EBF08560, &qword_1C1B9AF90);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v26[-1] - v11;
  v27[0] = a4;
  v27[1] = a5;
  sub_1C1B03588(a3, &v26[-1] - v11);
  v13 = sub_1C1B95028();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1C1B94360(v12);
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
      v21 = sub_1C1B94DD8();
      v22 = *(v21 + 16);
      sub_1C1B93E74(v21 + 32, v27, v26);

      v23 = v26[0];
      sub_1C1B94360(a3);

      return v23;
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

  sub_1C1B94360(a3);
  if (v20 | v18)
  {
    v26[1] = 0;
    v26[2] = 0;
    v26[3] = v18;
    v26[4] = v20;
  }

  return swift_task_create();
}

uint64_t DeduplicatingContentPipelineTransformer.__allocating_init(readthroughSource:)(__int128 *a1)
{
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v2 + 112) = 0;
  sub_1C1AC0580(a1, v2 + 120);
  return v2;
}

uint64_t DeduplicatingContentPipelineTransformer.init(readthroughSource:)(__int128 *a1)
{
  swift_defaultActor_initialize();
  *(v1 + 112) = 0;
  sub_1C1AC0580(a1, v1 + 120);
  return v1;
}

uint64_t sub_1C1B9319C(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(v4 + 40) = a2;
  *(v4 + 48) = v3;
  *(v4 + 32) = a1;
  *(v4 + 56) = *v3;
  v6 = *(*(sub_1C1AC1F08(&qword_1EBF08560, &qword_1C1B9AF90) - 8) + 64) + 15;
  *(v4 + 64) = swift_task_alloc();
  *(v4 + 120) = *a3;

  return MEMORY[0x1EEE6DFA0](sub_1C1B93270, v3, 0);
}

uint64_t sub_1C1B93270()
{
  v1 = *(v0 + 48);
  v2 = *(v1 + 112);
  *(v0 + 72) = v2;
  if (v2)
  {
    v3 = *(v0 + 56);
    v4 = *(MEMORY[0x1E69E86A8] + 4);

    v5 = swift_task_alloc();
    *(v0 + 80) = v5;
    v6 = *(v3 + 80);
    v7 = sub_1C1B94FA8();
    v8 = sub_1C1AC1F08(&qword_1EBF08A18, &qword_1C1B9D740);
    *v5 = v0;
    v5[1] = sub_1C1B934F4;
    v9 = MEMORY[0x1E69E7288];
    v10 = v0 + 16;
  }

  else
  {
    v11 = *(v0 + 120);
    v13 = *(v0 + 56);
    v12 = *(v0 + 64);
    v14 = *(v0 + 32);
    v15 = *(v0 + 40);
    v16 = sub_1C1B95028();
    (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
    v18 = *(v13 + 80);
    v17 = *(v13 + 88);
    type metadata accessor for DeduplicatingContentPipelineTransformer();
    WitnessTable = swift_getWitnessTable();
    v20 = swift_allocObject();
    *(v20 + 16) = v1;
    *(v20 + 24) = WitnessTable;
    *(v20 + 32) = v1;
    *(v20 + 40) = v14;
    *(v20 + 48) = v15;
    *(v20 + 56) = v11;
    v7 = sub_1C1B94FA8();
    swift_retain_n();
    v21 = v14;
    v2 = sub_1C1B92ED0(0, 0, v12, &unk_1C1BA4B90, v20);
    *(v0 + 96) = v2;
    v22 = *(v1 + 112);
    *(v1 + 112) = v2;

    v23 = *(MEMORY[0x1E69E86A8] + 4);
    v24 = swift_task_alloc();
    *(v0 + 104) = v24;
    v8 = sub_1C1AC1F08(&qword_1EBF08A18, &qword_1C1B9D740);
    *v24 = v0;
    v24[1] = sub_1C1B93620;
    v9 = MEMORY[0x1E69E7288];
    v10 = v0 + 24;
  }

  return MEMORY[0x1EEE6DA10](v10, v2, v7, v8, v9);
}

uint64_t sub_1C1B934F4()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 88) = v0;

  v5 = *(v2 + 48);
  if (v0)
  {
    v6 = sub_1C1B938A0;
  }

  else
  {
    v6 = sub_1C1B937C0;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1C1B93620()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;
  *(*v1 + 112) = v0;

  v5 = *(v2 + 48);
  if (v0)
  {
    v6 = sub_1C1B93834;
  }

  else
  {
    v6 = sub_1C1B9374C;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1C1B9374C()
{
  v1 = v0[12];

  v2 = v0[3];
  v3 = v0[8];

  v4 = v0[1];

  return v4(v2);
}

uint64_t sub_1C1B937C0()
{
  v1 = v0[9];

  v2 = v0[2];
  v3 = v0[8];

  v4 = v0[1];

  return v4(v2);
}

uint64_t sub_1C1B93834()
{
  v1 = v0[12];

  v2 = v0[14];
  v3 = v0[8];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1C1B938A0()
{
  v1 = v0[9];

  v2 = v0[11];
  v3 = v0[8];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1C1B9390C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 73) = a7;
  *(v7 + 32) = a5;
  *(v7 + 40) = a6;
  *(v7 + 16) = a1;
  *(v7 + 24) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1C1B93934, a4, 0);
}

uint64_t sub_1C1B93934()
{
  v1 = *(v0 + 73);
  v2 = *(v0 + 24);
  v3 = v2[18];
  v4 = v2[19];
  sub_1C1AAABE0(v2 + 15, v3);
  *(v0 + 72) = v1 & 1;
  v5 = *(v4 + 24);
  v11 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v0 + 48) = v7;
  *v7 = v0;
  v7[1] = sub_1C1B93A80;
  v9 = *(v0 + 32);
  v8 = *(v0 + 40);

  return v11(v9, v8, v0 + 72, v3, v4);
}

uint64_t sub_1C1B93A80(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;
  *(*v2 + 56) = v1;

  v7 = *(v4 + 24);
  if (v1)
  {
    v8 = sub_1C1B93C20;
  }

  else
  {
    *(v4 + 64) = a1;
    v8 = sub_1C1B93BAC;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1C1B93BAC()
{
  v1 = v0[8];
  v3 = v0[2];
  v2 = v0[3];
  v4 = *(v2 + 112);
  *(v2 + 112) = 0;

  *v3 = v1;
  v5 = v0[1];

  return v5();
}

uint64_t sub_1C1B93C38(uint64_t a1, uint64_t a2)
{
  v5 = v2[18];
  v6 = v2[19];
  sub_1C1AAABE0(v2 + 15, v5);
  return (*(v6 + 32))(a1, a2, v5, v6);
}

uint64_t sub_1C1B93CA4()
{
  v1 = v0[18];
  v2 = v0[19];
  sub_1C1AAABE0(v0 + 15, v1);
  return (*(v2 + 40))(v1, v2);
}

uint64_t DeduplicatingContentPipelineTransformer.deinit()
{
  v1 = *(v0 + 112);

  sub_1C1AA86F8((v0 + 120));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t DeduplicatingContentPipelineTransformer.__deallocating_deinit()
{
  DeduplicatingContentPipelineTransformer.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1C1B93D7C(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1C1B013DC;

  return sub_1C1B9319C(a1, a2, a3);
}

uint64_t sub_1C1B93E74@<X0>(uint64_t result@<X0>, uint64_t *a2@<X5>, uint64_t *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];

    result = swift_task_create();
    *a3 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C1B93F48(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1C1AB9A98;

  return sub_1C1B9390C(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t dispatch thunk of DeduplicatingContentPipelineTransformer.fetch(using:adType:cachePolicy:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 152);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1C1AEE19C;

  return v12(a1, a2, a3);
}

uint64_t sub_1C1B94224()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C1B9426C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C1B942BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1C1B94310(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1C1B94328(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_1C1B94360(uint64_t a1)
{
  v2 = sub_1C1AC1F08(&qword_1EBF08560, &qword_1C1B9AF90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}