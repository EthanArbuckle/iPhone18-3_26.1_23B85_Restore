void sub_1D8F6CC54(void *a1, uint64_t a2, unint64_t a3, void *a4)
{
  v194 = a4;
  v191 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB71E0, &unk_1D9197360);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v189 = &v159 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v187 = &v159 - v10;
  v166 = sub_1D9176E3C();
  v180 = *(v166 - 8);
  v11 = *(v180 + 64);
  MEMORY[0x1EEE9AC00](v166);
  v165 = &v159 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = type metadata accessor for StoreFeedUpdater.Update(0);
  v13 = *(*(v164 - 8) + 64);
  MEMORY[0x1EEE9AC00](v164);
  v163 = &v159 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a3 >> 62;
  if (a3 >> 62)
  {
    v16 = sub_1D917935C();
  }

  else
  {
    v16 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = MEMORY[0x1E69E7CC0];
  v196 = a3;
  v182 = a1;
  v188 = a3 >> 62;
  v190 = v16;
  if (v16)
  {
    v197[0] = MEMORY[0x1E69E7CC0];
    sub_1D8D41BE0(0, v16 & ~(v16 >> 63), 0);
    if (v16 < 0)
    {
      __break(1u);
      goto LABEL_89;
    }

    v18 = v197[0];
    if ((a3 & 0xC000000000000001) != 0)
    {
      v19 = 0;
      do
      {
        v20 = (MEMORY[0x1DA72AA90](v19, a3) + OBJC_IVAR___MTServerPodcastEpisode_id);
        swift_beginAccess();
        v22 = *v20;
        v21 = v20[1];

        swift_unknownObjectRelease();
        v197[0] = v18;
        v24 = *(v18 + 16);
        v23 = *(v18 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_1D8D41BE0((v23 > 1), v24 + 1, 1);
          v18 = v197[0];
        }

        ++v19;
        *(v18 + 16) = v24 + 1;
        v25 = v18 + 16 * v24;
        *(v25 + 32) = v22;
        *(v25 + 40) = v21;
      }

      while (v190 != v19);
    }

    else
    {
      v151 = (a3 + 32);
      v152 = v190;
      do
      {
        v153 = (*v151 + OBJC_IVAR___MTServerPodcastEpisode_id);
        swift_beginAccess();
        v155 = *v153;
        v154 = v153[1];
        v197[0] = v18;
        v157 = *(v18 + 16);
        v156 = *(v18 + 24);

        if (v157 >= v156 >> 1)
        {
          sub_1D8D41BE0((v156 > 1), v157 + 1, 1);
          v18 = v197[0];
        }

        *(v18 + 16) = v157 + 1;
        v158 = v18 + 16 * v157;
        *(v158 + 32) = v155;
        *(v158 + 40) = v154;
        ++v151;
        --v152;
      }

      while (v152);
    }
  }

  else
  {
    v18 = MEMORY[0x1E69E7CC0];
  }

  v26 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  v27 = sub_1D8F6DFBC(v18);
  [v26 setPredicate_];

  v28 = *(v184 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_ctx);
  sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);
  v160 = v26;
  v15 = 0;
  v29 = sub_1D917908C();
  v42 = v29;
  if (!(v29 >> 62))
  {
    v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v30)
    {
      goto LABEL_25;
    }

    goto LABEL_14;
  }

  v30 = sub_1D917935C();
  if (v30)
  {
LABEL_14:
    v197[0] = v17;
    sub_1D8E31620(0, v30 & ~(v30 >> 63), 0);
    if ((v30 & 0x8000000000000000) == 0)
    {
      v186 = 0;
      v31 = 0;
      v32 = v197[0];
      v33 = v42;
      v192 = v42 & 0xC000000000000001;
      v193 = v30;
      v195 = v42;
      do
      {
        if (v192)
        {
          v34 = MEMORY[0x1DA72AA90](v31, v33);
        }

        else
        {
          v34 = v33[v31 + 4];
        }

        v35 = v34;
        v198[26] = [v34 storeTrackId];
        v36 = sub_1D9179A4C();
        v38 = v37;
        v197[0] = v32;
        v40 = *(v32 + 16);
        v39 = *(v32 + 24);
        if (v40 >= v39 >> 1)
        {
          sub_1D8E31620((v39 > 1), v40 + 1, 1);
          v32 = v197[0];
        }

        ++v31;
        *(v32 + 16) = v40 + 1;
        v41 = (v32 + 24 * v40);
        v41[4] = v36;
        v41[5] = v38;
        v41[6] = v35;
        v33 = v195;
      }

      while (v193 != v31);
      v15 = v186;
      goto LABEL_26;
    }

LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

LABEL_25:
  if (*(v17 + 16))
  {
LABEL_26:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7768, &unk_1D91A6B70);
    v43 = sub_1D91797AC();
    goto LABEL_27;
  }

  v43 = MEMORY[0x1E69E7CC8];
LABEL_27:
  v197[0] = v43;

  sub_1D8F6F334(v44, 1, v197);
  if (!v15)
  {

    swift_bridgeObjectRelease_n();
    v45 = v197[0];
    v46 = *(v197[0] + 16);
    v47 = v190;
    v48 = v190 - v46;
    if (__OFSUB__(v190, v46))
    {
      __break(1u);
    }

    else
    {
      v49 = v184 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_metricsData;
      v50 = *(v184 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_metricsData + 16);
      v51 = __OFADD__(v50, v48);
      v52 = v50 + v48;
      if (!v51)
      {
        *(v49 + 16) = v52;
        v53 = *(v49 + 24);
        v51 = __OFADD__(v53, v46);
        v54 = v53 + v46;
        if (!v51)
        {
          *(v49 + 24) = v54;
          if (qword_1EDCD1048 == -1)
          {
            goto LABEL_32;
          }

          goto LABEL_87;
        }

LABEL_86:
        __break(1u);
LABEL_87:
        swift_once();
LABEL_32:
        v181 = sub_1D917744C();
        __swift_project_value_buffer(v181, qword_1EDCD1050);
        v55 = v184;

        v56 = sub_1D917741C();
        v57 = sub_1D9178D1C();

        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          v195 = (v47 - v46);
          v59 = v58;
          v60 = swift_slowAlloc();
          v197[0] = v60;
          *v59 = 141559043;
          *(v59 + 4) = 1752392040;
          *(v59 + 12) = 2081;
          v61 = v45;
          v62 = v163;
          sub_1D8D800E0(v55 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_update, v163, type metadata accessor for StoreFeedUpdater.Update);
          v63 = (v62 + *(v164 + 32));
          v64 = *v63;
          v65 = v63[1];

          v66 = v62;
          v45 = v61;
          sub_1D8D90C88(v66, type metadata accessor for StoreFeedUpdater.Update);
          v67 = sub_1D8CFA924(v64, v65, v197);

          *(v59 + 14) = v67;
          *(v59 + 22) = 2048;
          *(v59 + 24) = v190;
          *(v59 + 32) = 2048;
          *(v59 + 34) = v46;
          *(v59 + 42) = 2048;
          *(v59 + 44) = v195;
          _os_log_impl(&dword_1D8CEC000, v56, v57, "Job %{private,mask.hash}s: Ingesting %ld episodes. %ld updates and %ld inserts.", v59, 0x34u);
          __swift_destroy_boxed_opaque_existential_1Tm(v60);
          MEMORY[0x1DA72CB90](v60, -1, -1);
          MEMORY[0x1DA72CB90](v59, -1, -1);
        }

        v15 = v196;
        v68 = v188;
        v69 = v182;
        if ([v182 importing] & 1) != 0 || (objc_msgSend(v69, sel_isHiddenOrImplicitlyFollowed))
        {
          LODWORD(v190) = 0;
        }

        else
        {
          LODWORD(v190) = [v69 isTransitioningFromImplicit] ^ 1;
        }

        v70 = v165;
        sub_1D9176E0C();
        sub_1D9176CCC();
        v72 = v71;
        v73 = *(v180 + 8);
        v180 += 8;
        v162 = v73;
        v73(v70, v166);
        if (v68)
        {
          v75 = sub_1D917935C();
          if (!v75)
          {
LABEL_76:

            return;
          }
        }

        else
        {
          v75 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v75)
          {
            goto LABEL_76;
          }
        }

        if (v75 >= 1)
        {
          v76 = 0;
          v183 = v184 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_update;
          v193 = v15 & 0xC000000000000001;
          v178 = 0x80000001D91CEFA0;
          v179 = @"com.apple.podcasts.storeEpisodeInsert";
          v176 = 0x80000001D91CEB70;
          v177 = 0x80000001D91CEFC0;
          v175 = v198;
          *&v74 = 141561859;
          v161 = v74;
          v174 = xmmword_1D9197860;
          v185 = v75;
          v186 = v45;
          while (1)
          {
            if (v193)
            {
              v79 = MEMORY[0x1DA72AA90](v76, v15);
            }

            else
            {
              v79 = *(v15 + 8 * v76 + 32);
            }

            v78 = v79;
            v80 = &v79[OBJC_IVAR___MTServerPodcastEpisode_id];
            if (*(v45 + 16) && (v81 = *v80, v82 = v80[1], , v83 = sub_1D8D33C70(v81, v82), v85 = v84, , (v85 & 1) != 0))
            {
              v86 = v76;
              v87 = *(*(v45 + 56) + 8 * v83);

              v88 = v187;
              sub_1D8D088B4(v191, v187, &qword_1ECAB71E0, &unk_1D9197360);
              v89 = sub_1D9176EAC();
              v90 = *(v89 - 8);
              v91 = (*(v90 + 48))(v88, 1, v89);
              v92 = 0;
              if (v91 != 1)
              {
                v93 = v187;
                v92 = sub_1D9176E6C();
                (*(v90 + 8))(v93, v89);
              }

              [v87 setBootstrapGeneration_];
              v15 = v196;
              v76 = v86;
            }

            else
            {
              v77 = [v194 unsafeIngestNewEpisode_];
              if (!v77)
              {
                v15 = v196;
                if (v190)
                {
                  goto LABEL_47;
                }

                goto LABEL_46;
              }

              v192 = v76;
              v94 = v189;
              sub_1D8D088B4(v191, v189, &qword_1ECAB71E0, &unk_1D9197360);
              v95 = sub_1D9176EAC();
              v96 = *(v95 - 8);
              v97 = *(v96 + 48);
              v98 = v97(v94, 1, v95);
              v195 = v77;
              v99 = 0;
              if (v98 != 1)
              {
                v100 = v189;
                v99 = sub_1D9176E6C();
                (*(v96 + 8))(v100, v95);
              }

              v101 = v195;
              [v195 setBootstrapGeneration_];

              if (!v190)
              {
                v15 = v196;
                v75 = v185;
                v45 = v186;
                v76 = v192;
                goto LABEL_46;
              }

              [v101 pubDate];
              v103 = v102;
              [v101 firstTimeAvailable];
              v105 = v104;
              v106 = [v101 backCatalog];
              v107 = v97(v191, 1, v95);
              v108 = *(v183 + *(type metadata accessor for FeedUpdateRequest() + 48));
              LODWORD(v188) = [v182 subscribed];
              if (qword_1ECAB0C80 != -1)
              {
                swift_once();
              }

              __swift_project_value_buffer(v181, qword_1ECAB0C88);

              v78 = v78;
              v109 = sub_1D917741C();
              v110 = sub_1D9178D1C();

              if (os_log_type_enabled(v109, v110))
              {
                v169 = v110;
                v170 = v109;
                v172 = v106;
                v173 = v108;
                v111 = swift_slowAlloc();
                v168 = swift_slowAlloc();
                v197[0] = v168;
                *v111 = v161;
                *(v111 + 4) = 1752392040;
                *(v111 + 12) = 2081;
                v112 = v163;
                sub_1D8D800E0(v183, v163, type metadata accessor for StoreFeedUpdater.Update);
                v113 = (v112 + *(v164 + 32));
                v114 = *v113;
                v115 = v113[1];

                sub_1D8D90C88(v112, type metadata accessor for StoreFeedUpdater.Update);
                v116 = sub_1D8CFA924(v114, v115, v197);

                *(v111 + 14) = v116;
                *(v111 + 22) = 2080;
                v117 = *v80;
                v118 = v80[1];

                v119 = sub_1D8CFA924(v117, v118, v197);

                *(v111 + 24) = v119;
                *(v111 + 32) = 2080;
                if (qword_1ECAB1E08 != -1)
                {
                  swift_once();
                }

                v120 = qword_1ECAB1E10;
                v121 = [qword_1ECAB1E10 stringFromTimeInterval_];
                if (v121)
                {
                  v122 = v121;
                  v123 = sub_1D917820C();
                  v125 = v124;
                }

                else
                {
                  v123 = 0x41544C4544204F4ELL;
                  v125 = 0xEF474E4952545320;
                }

                v126 = sub_1D8CFA924(v123, v125, v197);

                *(v111 + 34) = v126;
                *(v111 + 42) = 2048;
                *(v111 + 44) = v72 - v103;
                *(v111 + 52) = 2080;
                v127 = [v120 stringFromTimeInterval_];
                if (v127)
                {
                  v128 = v127;
                  v129 = sub_1D917820C();
                  v131 = v130;
                }

                else
                {
                  v129 = 0x41544C4544204F4ELL;
                  v131 = 0xEF474E4952545320;
                }

                v167 = v107 != 1;
                v132 = sub_1D8CFA924(v129, v131, v197);

                *(v111 + 54) = v132;
                *(v111 + 62) = 2048;
                *(v111 + 64) = v72 - v105;
                *(v111 + 72) = 2048;
                *(v111 + 74) = v72;
                *(v111 + 82) = 2080;
                v133 = v165;
                sub_1D9176CBC();
                sub_1D8F6F5EC(&qword_1EDCD5930, MEMORY[0x1E6969530]);
                v134 = v166;
                v135 = sub_1D9179A4C();
                v137 = v136;
                v171 = v107;
                v138 = v162;
                v162(v133, v134);
                v139 = sub_1D8CFA924(v135, v137, v197);

                *(v111 + 84) = v139;
                *(v111 + 92) = 2048;
                *(v111 + 94) = v103;
                *(v111 + 102) = 2080;
                sub_1D9176CBC();
                v140 = sub_1D9179A4C();
                v142 = v141;
                v138(v133, v134);
                v143 = sub_1D8CFA924(v140, v142, v197);

                *(v111 + 104) = v143;
                *(v111 + 112) = 2048;
                *(v111 + 114) = v105;
                *(v111 + 122) = 1024;
                *(v111 + 124) = v188;
                *(v111 + 128) = 1024;
                *(v111 + 130) = v172;
                *(v111 + 134) = 1024;
                *(v111 + 136) = v167;
                *(v111 + 140) = 2048;
                *(v111 + 142) = v173;
                v144 = v170;
                _os_log_impl(&dword_1D8CEC000, v170, v169, "Job %{private,mask.hash}s: Metrics event for %s - insert delta %s - %f - first time available delta %s - %f - current time %f - pub date %s - %f - first time available date %s - %f - is show followed %{BOOL}d - back catalog %{BOOL}d - bootstrap update %{BOOL}d - feed update source %ld", v111, 0x96u);
                v145 = v168;
                swift_arrayDestroy();
                MEMORY[0x1DA72CB90](v145, -1, -1);
                MEMORY[0x1DA72CB90](v111, -1, -1);

                v76 = v192;
              }

              else
              {

                v76 = v192;
              }

              v87 = [objc_allocWithZone(PFCoreAnalyticsChannel) init];
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7770, &qword_1D9198880);
              inited = swift_initStackObject();
              *(inited + 16) = v174;
              *(inited + 32) = 0xD000000000000012;
              *(inited + 40) = v178;
              *(inited + 48) = sub_1D9178A2C();
              *(inited + 56) = 0xD00000000000001ALL;
              *(inited + 64) = v177;
              *(inited + 72) = sub_1D9178A2C();
              strcpy((inited + 80), "isBackCatalog");
              *(inited + 94) = -4864;
              *(inited + 96) = sub_1D917873C();
              *(inited + 104) = 0x7473746F6F427369;
              *(inited + 112) = 0xEB00000000706172;
              *(inited + 120) = sub_1D917873C();
              *(inited + 128) = 0xD000000000000010;
              *(inited + 136) = v176;
              *(inited + 144) = sub_1D9178B6C();
              strcpy((inited + 152), "isShowFollowed");
              *(inited + 167) = -18;
              *(inited + 168) = sub_1D917873C();
              v147 = sub_1D8D6F4B4(inited);
              swift_setDeallocating();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7778, &qword_1D91BD910);
              swift_arrayDestroy();
              v148 = objc_allocWithZone(type metadata accessor for AnalyticsEvent());
              v149 = swift_allocObject();
              *(v149 + 16) = v147;
              v198[2] = sub_1D8E81910;
              v198[3] = v149;
              v197[0] = MEMORY[0x1E69E9820];
              v197[1] = 1107296256;
              v198[0] = sub_1D8D6F198;
              v198[1] = &block_descriptor_46;
              v150 = _Block_copy(v197);

              v92 = [v148 initWithName:v179 generator:v150];
              _Block_release(v150);
              [v87 sendEvent_];

              v15 = v196;
              v75 = v185;
              v45 = v186;
            }

            v77 = v78;

            v78 = v92;
LABEL_46:

            v78 = v77;
LABEL_47:
            ++v76;

            if (v75 == v76)
            {
              goto LABEL_76;
            }
          }
        }

        goto LABEL_90;
      }
    }

    __break(1u);
    goto LABEL_86;
  }

LABEL_91:

  __break(1u);
}

uint64_t sub_1D8F6DFBC(uint64_t result)
{
  v1 = *(result + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_78:
    v38 = *(v6 + 16);
    if (v38)
    {
      v46[0] = v2;
      sub_1D91795CC();
      v39 = 32;
      do
      {
        [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
        sub_1D917959C();
        v40 = *(v46[0] + 16);
        sub_1D91795DC();
        sub_1D91795EC();
        sub_1D91795AC();
        v39 += 8;
        --v38;
      }

      while (v38);

      v41 = v46[0];
    }

    else
    {

      v41 = MEMORY[0x1E69E7CC0];
    }

    v42 = objc_opt_self();
    sub_1D8FC0EF8(v41);

    sub_1D8CF2154(0, qword_1EDCD0810, 0x1E696AD98);
    sub_1D8F46DF8();
    v43 = sub_1D9178A8C();

    v44 = [v42 predicateForEpisodeStoreTrackIds_];

    return v44;
  }

  v3 = 0;
  v4 = result + 32;
  v5 = v46 + 1;
  v6 = MEMORY[0x1E69E7CC0];
  while (v3 < v1)
  {
    v7 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_85;
    }

    v8 = (v4 + 16 * v3);
    v9 = *v8;
    v10 = v8[1];
    ++v3;
    v11 = HIBYTE(v10) & 0xF;
    v12 = v9 & 0xFFFFFFFFFFFFLL;
    if ((v10 & 0x2000000000000000) != 0)
    {
      v13 = HIBYTE(v10) & 0xF;
    }

    else
    {
      v13 = v9 & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {
      if ((v10 & 0x1000000000000000) != 0)
      {

        v15 = sub_1D8FF7E64(v9, v10, 10);
        v45 = v33;

        if (v45)
        {
          goto LABEL_67;
        }

        goto LABEL_70;
      }

      if ((v10 & 0x2000000000000000) != 0)
      {
        v46[0] = v9;
        v46[1] = v10 & 0xFFFFFFFFFFFFFFLL;
        if (v9 == 43)
        {
          if (!v11)
          {
            goto LABEL_89;
          }

          if (--v11)
          {
            v15 = 0;
            v25 = v5;
            while (1)
            {
              v26 = *v25 - 48;
              if (v26 > 9)
              {
                break;
              }

              v27 = 10 * v15;
              if ((v15 * 10) >> 64 != (10 * v15) >> 63)
              {
                break;
              }

              v15 = v27 + v26;
              if (__OFADD__(v27, v26))
              {
                break;
              }

              ++v25;
              if (!--v11)
              {
                goto LABEL_66;
              }
            }
          }
        }

        else if (v9 == 45)
        {
          if (!v11)
          {
            goto LABEL_88;
          }

          if (--v11)
          {
            v15 = 0;
            v19 = v5;
            while (1)
            {
              v20 = *v19 - 48;
              if (v20 > 9)
              {
                break;
              }

              v21 = 10 * v15;
              if ((v15 * 10) >> 64 != (10 * v15) >> 63)
              {
                break;
              }

              v15 = v21 - v20;
              if (__OFSUB__(v21, v20))
              {
                break;
              }

              ++v19;
              if (!--v11)
              {
                goto LABEL_66;
              }
            }
          }
        }

        else if (v11)
        {
          v15 = 0;
          v30 = v46;
          while (1)
          {
            v31 = *v30 - 48;
            if (v31 > 9)
            {
              break;
            }

            v32 = 10 * v15;
            if ((v15 * 10) >> 64 != (10 * v15) >> 63)
            {
              break;
            }

            v15 = v32 + v31;
            if (__OFADD__(v32, v31))
            {
              break;
            }

            ++v30;
            if (!--v11)
            {
              goto LABEL_66;
            }
          }
        }
      }

      else
      {
        if ((v9 & 0x1000000000000000) != 0)
        {
          result = (v10 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          result = sub_1D917957C();
        }

        v14 = *result;
        if (v14 == 43)
        {
          if (v12 < 1)
          {
            goto LABEL_86;
          }

          v11 = v12 - 1;
          if (v12 != 1)
          {
            v15 = 0;
            if (!result)
            {
              goto LABEL_57;
            }

            v22 = (result + 1);
            while (1)
            {
              v23 = *v22 - 48;
              if (v23 > 9)
              {
                break;
              }

              v24 = 10 * v15;
              if ((v15 * 10) >> 64 != (10 * v15) >> 63)
              {
                break;
              }

              v15 = v24 + v23;
              if (__OFADD__(v24, v23))
              {
                break;
              }

              ++v22;
              if (!--v11)
              {
                goto LABEL_66;
              }
            }
          }
        }

        else if (v14 == 45)
        {
          if (v12 < 1)
          {
            goto LABEL_87;
          }

          v11 = v12 - 1;
          if (v12 != 1)
          {
            v15 = 0;
            if (!result)
            {
              goto LABEL_57;
            }

            v16 = (result + 1);
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v15;
              if ((v15 * 10) >> 64 != (10 * v15) >> 63)
              {
                break;
              }

              v15 = v18 - v17;
              if (__OFSUB__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v11)
              {
                goto LABEL_66;
              }
            }
          }
        }

        else if (v12)
        {
          v15 = 0;
          if (!result)
          {
LABEL_57:
            LOBYTE(v11) = 0;
            goto LABEL_66;
          }

          while (1)
          {
            v28 = *result - 48;
            if (v28 > 9)
            {
              break;
            }

            v29 = 10 * v15;
            if ((v15 * 10) >> 64 != (10 * v15) >> 63)
            {
              break;
            }

            v15 = v29 + v28;
            if (__OFADD__(v29, v28))
            {
              break;
            }

            ++result;
            if (!--v12)
            {
              goto LABEL_57;
            }
          }
        }
      }

      v15 = 0;
      LOBYTE(v11) = 1;
LABEL_66:
      v47 = v11;
      if (v11)
      {
        goto LABEL_67;
      }

LABEL_70:
      v34 = v5;
      result = swift_isUniquelyReferenced_nonNull_native();
      v35 = v2;
      if ((result & 1) == 0)
      {
        result = sub_1D8ECC9FC(0, *(v6 + 16) + 1, 1, v6);
        v6 = result;
      }

      v37 = *(v6 + 16);
      v36 = *(v6 + 24);
      if (v37 >= v36 >> 1)
      {
        result = sub_1D8ECC9FC((v36 > 1), v37 + 1, 1, v6);
        v6 = result;
      }

      *(v6 + 16) = v37 + 1;
      *(v6 + 8 * v37 + 32) = v15;
      v2 = v35;
      v5 = v34;
      if (v7 == v1)
      {
        goto LABEL_78;
      }
    }

    else
    {
LABEL_67:
      if (v7 == v1)
      {
        goto LABEL_78;
      }
    }
  }

  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
  return result;
}

void sub_1D8F6E4B0(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for StoreFeedUpdater.Update(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  [v10 setPredicate_];
  v11 = *(v3 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_ctx);
  sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);
  v12 = sub_1D917908C();
  v13 = v12 >> 62;
  if (v12 >> 62)
  {
    v14 = sub_1D917935C();
  }

  else
  {
    v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = *(v3 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_metricsData + 32);
  v16 = __OFADD__(v15, v14);
  v17 = v15 + v14;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_metricsData + 32) = v17;
    if (qword_1EDCD1048 == -1)
    {
      goto LABEL_5;
    }
  }

  swift_once();
LABEL_5:
  v18 = sub_1D917744C();
  __swift_project_value_buffer(v18, qword_1EDCD1050);

  v19 = sub_1D917741C();
  v20 = sub_1D9178D1C();

  if (!os_log_type_enabled(v19, v20))
  {

    v28 = v12 & 0xFFFFFFFFFFFFFF8;
    if (!v13)
    {
      goto LABEL_13;
    }

LABEL_9:
    v29 = sub_1D917935C();
    if (v29)
    {
      goto LABEL_14;
    }

LABEL_20:

    return;
  }

  v34 = v10;
  v21 = swift_slowAlloc();
  v22 = swift_slowAlloc();
  v35 = v22;
  *v21 = 141558531;
  *(v21 + 4) = 1752392040;
  *(v21 + 12) = 2081;
  sub_1D8D800E0(v3 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_update, v9, type metadata accessor for StoreFeedUpdater.Update);
  v23 = &v9[*(v6 + 32)];
  v24 = *v23;
  v25 = v23[1];

  sub_1D8D90C88(v9, type metadata accessor for StoreFeedUpdater.Update);
  v26 = sub_1D8CFA924(v24, v25, &v35);

  *(v21 + 14) = v26;
  *(v21 + 22) = 2048;
  if (v13)
  {
    v27 = sub_1D917935C();
  }

  else
  {
    v27 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v21 + 24) = v27;

  _os_log_impl(&dword_1D8CEC000, v19, v20, "Job %{private,mask.hash}s: Feed deleting %ld episodes", v21, 0x20u);
  __swift_destroy_boxed_opaque_existential_1Tm(v22);
  MEMORY[0x1DA72CB90](v22, -1, -1);
  MEMORY[0x1DA72CB90](v21, -1, -1);

  v10 = v34;
  v28 = v12 & 0xFFFFFFFFFFFFFF8;
  if (v13)
  {
    goto LABEL_9;
  }

LABEL_13:
  v29 = *(v28 + 16);
  if (!v29)
  {
    goto LABEL_20;
  }

LABEL_14:
  if (v29 >= 1)
  {
    for (i = 0; i != v29; ++i)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v31 = MEMORY[0x1DA72AA90](i, v12);
      }

      else
      {
        v31 = *(v12 + 8 * i + 32);
      }

      v32 = v31;
      [a2 unsafeDeleteFeedDeletedEpisode_];
    }

    goto LABEL_20;
  }

  __break(1u);
}

void sub_1D8F6E884()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AB70]) init];
  [v0 setAllowedUnits_];
  [v0 setUnitsStyle_];

  qword_1ECAB1E10 = v0;
}

void sub_1D8F6E8F4(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for StoreFeedUpdater.Update(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_ctx);
  v9 = a1 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_update;
  updated = type metadata accessor for FeedUpdateRequest();
  v11 = [v8 podcastForStoreId_];
  if (v11)
  {
    v54 = v7;
    v55 = a2;
    v53 = v4;
    v57 = v11;
    v13 = *(a1 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_ingesterProvider + 24);
    v12 = *(a1 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_ingesterProvider + 32);
    __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_ingesterProvider), v13);
    v14 = *(updated + 48);
    v56 = v9;
    v15 = *(v9 + v14);
    v16 = *(a1 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_updaterJobUUID);
    v17 = *(a1 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_updaterJobUUID + 8);
    v18 = *(v12 + 8);

    v19 = v18(v57, v15, v16, v17, v13, v12);

    [v19 unsafeFinalizeIngestion];
    [v57 setFeedUpdateNeedsRetry_];
    [v8 saveInCurrentBlock];
    v20 = [v57 uuid];
    if (v20)
    {
      v21 = v20;
      v22 = sub_1D917820C();
      v24 = v23;
    }

    else
    {
      v22 = 0;
      v24 = 0;
    }

    v37 = v55;
    v38 = *(a1 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_queue);
    v39 = swift_allocObject();
    v39[2] = a1;
    v39[3] = v22;
    v39[4] = v24;
    v39[5] = v37;

    v40 = v37;
    v41 = v56;
    OS_dispatch_queue.asyncWithTelemetry(for:_:)(v56, sub_1D8F6F684, v39);

    if (qword_1EDCD1048 != -1)
    {
      swift_once();
    }

    v42 = sub_1D917744C();
    __swift_project_value_buffer(v42, qword_1EDCD1050);

    v43 = sub_1D917741C();
    v44 = sub_1D9178D1C();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v58 = v46;
      *v45 = 141558275;
      *(v45 + 4) = 1752392040;
      *(v45 + 12) = 2081;
      v47 = v54;
      sub_1D8D800E0(v41, v54, type metadata accessor for StoreFeedUpdater.Update);
      v48 = (v47 + *(v53 + 32));
      v49 = *v48;
      v50 = v48[1];

      sub_1D8D90C88(v47, type metadata accessor for StoreFeedUpdater.Update);
      v51 = sub_1D8CFA924(v49, v50, &v58);

      *(v45 + 14) = v51;
      _os_log_impl(&dword_1D8CEC000, v43, v44, "Job %{private,mask.hash}s: Episode Processing partially completed", v45, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v46);
      MEMORY[0x1DA72CB90](v46, -1, -1);
      MEMORY[0x1DA72CB90](v45, -1, -1);
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();

      v52 = v57;
    }
  }

  else
  {
    if (qword_1EDCD1048 != -1)
    {
      swift_once();
    }

    v25 = sub_1D917744C();
    __swift_project_value_buffer(v25, qword_1EDCD1050);

    v26 = sub_1D917741C();
    v27 = sub_1D9178D1C();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v58 = v29;
      *v28 = 141558275;
      *(v28 + 4) = 1752392040;
      *(v28 + 12) = 2081;
      sub_1D8D800E0(v9, v7, type metadata accessor for StoreFeedUpdater.Update);
      v30 = &v7[*(v4 + 32)];
      v31 = *v30;
      v32 = v30[1];

      sub_1D8D90C88(v7, type metadata accessor for StoreFeedUpdater.Update);
      v33 = sub_1D8CFA924(v31, v32, &v58);

      *(v28 + 14) = v33;
      _os_log_impl(&dword_1D8CEC000, v26, v27, "Job %{private,mask.hash}s: Partial Success failed to finalize", v28, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      MEMORY[0x1DA72CB90](v29, -1, -1);
      MEMORY[0x1DA72CB90](v28, -1, -1);
    }

    v34 = *(a1 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_queue);
    v35 = swift_allocObject();
    *(v35 + 16) = a1;
    *(v35 + 24) = a2;

    v36 = a2;
    OS_dispatch_queue.asyncWithTelemetry(for:_:)(v9, sub_1D8F6F67C, v35);
  }
}

uint64_t sub_1D8F6EEEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_update;
  v9 = v8 + *(type metadata accessor for FeedUpdateRequest() + 64);
  v10 = *v9;
  if (*v9)
  {
    v11 = a3 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v12 = *(v9 + 8);
    v13 = *(a1 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_ctx);

    v10(a2, a3, v13);
    sub_1D8D15664(v10);
  }

  v14 = a1 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_completion;
  v16 = *(a1 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_completion);
  v15 = *(v14 + 8);
  v18[0] = a4;
  v19 = 1;

  v16(v8, v18);
}

uint64_t sub_1D8F6EFE8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_completion);
  v3 = *(a1 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_completion + 8);
  v5 = OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_update;
  v7[0] = a2;
  v8 = 1;

  v4(a1 + v5, v7);
}

uint64_t sub_1D8F6F0C8(uint64_t result)
{
  *(result + 168) |= 0x38u;
  *(result + 169) = 0;
  return result;
}

uint64_t sub_1D8F6F0F8(uint64_t result)
{
  *(result + 168) &= 0xC7u;
  *(result + 169) = 0;
  return result;
}

uint64_t sub_1D8F6F10C(uint64_t result)
{
  *(result + 168) = *(result + 168) & 0xC7 | 0x30;
  *(result + 169) = 0;
  return result;
}

uint64_t sub_1D8F6F12C(uint64_t result)
{
  *(result + 168) = *(result + 168) & 0xC7 | 8;
  *(result + 169) = 0;
  return result;
}

uint64_t sub_1D8F6F144(uint64_t result)
{
  *(result + 168) = *(result + 168) & 0xC7 | 0x10;
  *(result + 169) = 0;
  return result;
}

uint64_t sub_1D8F6F1DC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 >> 6 == 1)
  {
    return sub_1D8D85E5C(result, a2, a3, a4, a5, a6 & 0x3F);
  }

  if (!(a6 >> 6))
  {
  }

  return result;
}

unint64_t sub_1D8F6F214()
{
  result = qword_1EDCD43A0;
  if (!qword_1EDCD43A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD43A0);
  }

  return result;
}

uint64_t sub_1D8F6F298(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 >> 6 == 1)
  {
    return sub_1D8D8DFD4(result, a2, a3, a4, a5, a6 & 0x3F);
  }

  if (!(a6 >> 6))
  {
  }

  return result;
}

uint64_t sub_1D8F6F2EC(uint64_t result)
{
  *(result + 168) = *(result + 168) & 0xC7 | 0x20;
  *(result + 169) = 0;
  return result;
}

uint64_t sub_1D8F6F318(uint64_t result)
{
  *(result + 168) = *(result + 168) & 0xC7 | 0x28;
  *(result + 169) = 0;
  return result;
}

void sub_1D8F6F334(void *a1, char a2, void *a3)
{
  v3 = a1[2];
  if (!v3)
  {
    return;
  }

  LOBYTE(i) = a2;
  v6 = a1;
  v8 = a1[4];
  v7 = a1[5];
  v9 = a1[6];
  v10 = *a3;

  v11 = v9;
  v12 = sub_1D8D33C70(v8, v7);
  v14 = v10[2];
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v18) = v13;
  if (v10[3] < v17)
  {
    sub_1D900737C(v17, i & 1);
    v19 = *a3;
    v12 = sub_1D8D33C70(v8, v7);
    if ((v18 & 1) == (v20 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v12 = sub_1D9179CFC();
    __break(1u);
  }

  if (i)
  {
LABEL_7:
    v21 = *a3;
    if (v18)
    {
      goto LABEL_8;
    }

LABEL_11:
    v21[(v12 >> 6) + 8] |= 1 << v12;
    v27 = (v21[6] + 16 * v12);
    *v27 = v8;
    v27[1] = v7;
    *(v21[7] + 8 * v12) = v11;
    v28 = v21[2];
    v16 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (v16)
    {
LABEL_24:
      __break(1u);
      return;
    }

    v21[2] = v29;
    v18 = v3 - 1;
    if (v3 != 1)
    {
      goto LABEL_14;
    }

    return;
  }

  v26 = v12;
  sub_1D8F83FCC();
  v12 = v26;
  v21 = *a3;
  if ((v18 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v22 = v12;
  v23 = *(v21[7] + 8 * v12);

  v24 = v21[7];
  v25 = *(v24 + 8 * v22);
  *(v24 + 8 * v22) = v23;

  v18 = v3 - 1;
  if (v3 != 1)
  {
LABEL_14:
    for (i = (v6 + 72); ; i += 3)
    {
      v11 = *(i - 2);
      v6 = *(i - 1);
      v34 = *i;
      v35 = *a3;

      v7 = v34;
      v36 = sub_1D8D33C70(v11, v6);
      v38 = v35[2];
      v39 = (v37 & 1) == 0;
      v16 = __OFADD__(v38, v39);
      v40 = v38 + v39;
      if (v16)
      {
        break;
      }

      v8 = v37;
      if (v35[3] < v40)
      {
        sub_1D900737C(v40, 1);
        v41 = *a3;
        v36 = sub_1D8D33C70(v11, v6);
        if ((v8 & 1) != (v42 & 1))
        {
          goto LABEL_5;
        }
      }

      v3 = *a3;
      if (v8)
      {
        v30 = v36;
        v31 = *(v3[7] + 8 * v36);

        v32 = v3[7];
        v33 = *(v32 + 8 * v30);
        *(v32 + 8 * v30) = v31;
      }

      else
      {
        v3[(v36 >> 6) + 8] |= 1 << v36;
        v43 = (v3[6] + 16 * v36);
        *v43 = v11;
        v43[1] = v6;
        *(v3[7] + 8 * v36) = v7;
        v44 = v3[2];
        v16 = __OFADD__(v44, 1);
        v45 = v44 + 1;
        if (v16)
        {
          goto LABEL_24;
        }

        v3[2] = v45;
      }

      if (!--v18)
      {
        return;
      }
    }

    goto LABEL_23;
  }
}

uint64_t sub_1D8F6F5D4(uint64_t result)
{
  *(result + 168) = *(result + 168) & 0xC7 | 0x18;
  *(result + 169) = 0;
  return result;
}

uint64_t sub_1D8F6F5EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_52Tm()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D8F6F690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 != 0xFF)
  {
    return sub_1D8D85E5C(a1, a2, a3, a4, a5, a6);
  }

  return a1;
}

void sub_1D8F6F6A4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, id a8, char a9)
{
  if (a9 == 1)
  {
  }

  else if (!a9)
  {
  }
}

__n128 __swift_memcpy161_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_1D8F6F70C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 161))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D8F6F754(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 160) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 161) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 161) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D8F6F7D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x1E && *(a1 + 41))
  {
    return (*a1 + 30);
  }

  v3 = ((*(a1 + 40) >> 1) & 0x1C | (*(a1 + 40) >> 6)) ^ 0x1F;
  if (v3 >= 0x1D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D8F6F824(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1D)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 30;
    if (a3 >= 0x1E)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1E)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 32) = 0;
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 40) = 8 * (((-a2 >> 2) & 7) - 8 * a2);
    }
  }

  return result;
}

uint64_t sub_1D8F6F89C(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    *(result + 40) = *(result + 40) & 7 | (a2 << 6);
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0x80;
  }

  return result;
}

uint64_t sub_1D8F6F8E4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1D8F6F934(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t ImplicitFollowsDecayEvent.hashValue.getter()
{
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](0);
  return sub_1D9179E1C();
}

uint64_t ImplicitFollowsDecayCoordinator.delegate.getter()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 48);
  return result;
}

uint64_t ImplicitFollowsDecayCoordinator.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 48) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*ImplicitFollowsDecayCoordinator.delegate.modify(uint64_t *a1))()
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 48);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1D8F6FB48;
}

uint64_t ImplicitFollowsDecayCoordinator.__allocating_init()()
{
  v0 = swift_allocObject();
  ImplicitFollowsDecayCoordinator.init()();
  return v0;
}

void *ImplicitFollowsDecayCoordinator.init()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v43 = v34 - v2;
  v44 = sub_1D9178DFC();
  v41 = *(v44 - 8);
  v3 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v39 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7780, &qword_1D9198CD8);
  v37 = *(v5 - 8);
  v38 = v5;
  v6 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v36 = v34 - v7;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7788, &unk_1D9198CE0);
  v42 = *(v45 - 8);
  v8 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v40 = v34 - v9;
  v35 = sub_1D9178E0C();
  v10 = *(v35 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D9178D8C();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v16 = sub_1D9177E9C();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  v34[0] = "episodeFirstAvailableDelta";
  sub_1D9177E3C();
  v46 = MEMORY[0x1E69E7CC0];
  sub_1D8D017BC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
  v19 = v34[1];
  sub_1D8CF48EC(&qword_1EDCD7B60, &unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D91792CC();
  (*(v10 + 104))(v13, *MEMORY[0x1E69E8090], v35);
  v35 = v18;
  v19[2] = sub_1D9178E4C();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7790, &qword_1D9198CF0);
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  v19[3] = sub_1D91778DC();
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1D917935C())
  {
    v23 = sub_1D8FB23AC(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v23 = MEMORY[0x1E69E7CD0];
  }

  v19[4] = v23;
  v19[6] = 0;
  swift_unknownObjectWeakInit();
  v46 = v19[3];
  sub_1D8CF48EC(&qword_1ECAB7798, &qword_1ECAB7790, &qword_1D9198CF0);

  v24 = v36;
  sub_1D9177C4C();

  v25 = v39;
  sub_1D9178DCC();
  v46 = v19[2];
  v26 = v46;
  v27 = sub_1D9178DBC();
  v28 = v43;
  (*(*(v27 - 8) + 56))(v43, 1, 1, v27);
  sub_1D8CF48EC(&qword_1ECAB77A0, &qword_1ECAB7780, &qword_1D9198CD8);
  sub_1D8D02DF0();
  v29 = v26;
  v30 = v40;
  v31 = v38;
  sub_1D9177CFC();
  sub_1D8D08A50(v28, &qword_1ECAB4D70, &unk_1D918BCE0);

  (*(v41 + 8))(v25, v44);
  (*(v37 + 8))(v24, v31);
  swift_allocObject();
  swift_weakInit();
  sub_1D8CF48EC(&qword_1ECAB77A8, &qword_1ECAB7788, &unk_1D9198CE0);
  v32 = v45;
  sub_1D9177D9C();

  (*(v42 + 8))(v30, v32);
  swift_beginAccess();
  sub_1D917783C();
  swift_endAccess();

  return v19;
}

uint64_t sub_1D8F702A0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D8F70300();
  }

  return result;
}

void sub_1D8F70300()
{
  v1 = v0;
  if (qword_1EDCD0FC0 != -1)
  {
    swift_once();
  }

  v2 = sub_1D917744C();
  __swift_project_value_buffer(v2, qword_1EDCD0FC8);
  v3 = sub_1D9178D1C();
  v4 = sub_1D917741C();
  if (os_log_type_enabled(v4, v3))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1D8CEC000, v4, v3, "Triggering new check for Max Implicit Follows limit.", v5, 2u);
    MEMORY[0x1DA72CB90](v5, -1, -1);
  }

  v6 = [objc_opt_self() sharedInstance];
  v7 = [v6 integerForKey_];

  v9[4] = sub_1D8F71014;
  v9[5] = v1;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1D8D591F0;
  v9[3] = &block_descriptor_47;
  v8 = _Block_copy(v9);

  [v7 asyncValueWithCompletion_];
  _Block_release(v8);
}

void sub_1D8F704C4(uint64_t a1, int a2, NSObject *a3)
{
  if (!a3)
  {
    if (a1)
    {
      aBlock = 0;
      sub_1D9178B7C();
    }

    if (qword_1EDCD0FC0 != -1)
    {
      swift_once();
    }

    v11 = sub_1D917744C();
    __swift_project_value_buffer(v11, qword_1EDCD0FC8);
    oslog = sub_1D917741C();
    v12 = sub_1D9178CFC();
    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1D8CEC000, oslog, v12, "Unable to cast value for implicitly followed shows limit from the bag to an Int", v13, 2u);
      MEMORY[0x1DA72CB90](v13, -1, -1);
    }

    goto LABEL_12;
  }

  v4 = a3;
  if (qword_1EDCD0FC0 != -1)
  {
    swift_once();
  }

  v5 = sub_1D917744C();
  __swift_project_value_buffer(v5, qword_1EDCD0FC8);
  v6 = a3;
  oslog = sub_1D917741C();
  v7 = sub_1D9178CFC();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = sub_1D9176A5C();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&dword_1D8CEC000, oslog, v7, "Failed to fetch implicit followed shows limit from the bag: %@", v8, 0xCu);
    sub_1D8D08A50(v9, &unk_1ECAB6C70, &unk_1D9188C30);
    MEMORY[0x1DA72CB90](v9, -1, -1);
    MEMORY[0x1DA72CB90](v8, -1, -1);

LABEL_12:
    v14 = oslog;

    goto LABEL_14;
  }

  v14 = a3;

LABEL_14:
}

void sub_1D8F708A4(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v8 = Strong;
  v9 = [a2 countOfObjectsInEntity:@"MTPodcast" predicate:a3];
  v10 = v9;
  if ((a4 & 0x8000000000000000) != 0 || v9 > a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D9189070;
    *(inited + 32) = [objc_allocWithZone(MEMORY[0x1E696AEB0]) initWithKey:@"lastDatePlayed" ascending:1];
    if (v10 < 0)
    {
      __break(1u);
      goto LABEL_22;
    }

    v16 = __OFSUB__(v10, a4);
    v17 = v10 - a4;
    if (v16)
    {
      __break(1u);
    }

    else
    {
      v18 = @"MTPodcast";
      sub_1D8F61018(inited);
      swift_setDeallocating();
      v19 = *(inited + 16);
      swift_arrayDestroy();
      v20 = sub_1D91785DC();

      v21 = [a2 objectsInEntity:v18 predicate:a3 sortDescriptors:v20 returnsObjectsAsFaults:0 limit:v17];

      if (!v21 || (sub_1D8CF2154(0, &qword_1EDCD5B70, 0x1E695D620), v22 = sub_1D91785FC(), v21, v10 = sub_1D8FBEF14(v22), , !v10))
      {
LABEL_19:

        return;
      }

      if (qword_1EDCD0FC0 == -1)
      {
LABEL_13:
        v23 = sub_1D917744C();
        __swift_project_value_buffer(v23, qword_1EDCD0FC8);
        v24 = sub_1D9178D1C();
        v25 = sub_1D917741C();
        if (os_log_type_enabled(v25, v24))
        {
          v26 = swift_slowAlloc();
          *v26 = 134217984;
          *(v26 + 4) = v17;
          _os_log_impl(&dword_1D8CEC000, v25, v24, "Implicitly followed shows over the limit. Proceeding to evict %ld shows.", v26, 0xCu);
          MEMORY[0x1DA72CB90](v26, -1, -1);
        }

        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v27 = *(v8 + 48);
          ObjectType = swift_getObjectType();
          (*(v27 + 8))(v8, v10, a2, ObjectType, v27);

          swift_unknownObjectRelease();
        }

        else
        {
        }

        [a2 saveInCurrentBlock];
        goto LABEL_19;
      }
    }

    swift_once();
    goto LABEL_13;
  }

  if (qword_1EDCD0FC0 != -1)
  {
LABEL_22:
    swift_once();
  }

  v11 = sub_1D917744C();
  __swift_project_value_buffer(v11, qword_1EDCD0FC8);
  v12 = sub_1D9178D1C();
  v13 = sub_1D917741C();
  if (os_log_type_enabled(v13, v12))
  {
    v14 = swift_slowAlloc();
    *v14 = 134218240;
    *(v14 + 4) = v10;
    *(v14 + 12) = 2048;
    *(v14 + 14) = a4;
    _os_log_impl(&dword_1D8CEC000, v13, v12, "Not proceeding with eviction of implicitly followed shows -- Count of implicitly followed shows: %lu is not over the limit: %ld", v14, 0x16u);
    MEMORY[0x1DA72CB90](v14, -1, -1);
  }
}

uint64_t ImplicitFollowsDecayCoordinator.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  sub_1D8EB07F4(v0 + 40);
  return v0;
}

uint64_t ImplicitFollowsDecayCoordinator.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  sub_1D8EB07F4(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_1D8F70D30()
{
  v1 = *v0;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 48);
  return result;
}

uint64_t sub_1D8F70D78(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  swift_beginAccess();
  *(v4 + 48) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*sub_1D8F70DDC(uint64_t *a1))()
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
  v5 = *v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 48);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v7;
  return sub_1D8F71028;
}

void sub_1D8F70E74(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 48) = *(*a1 + 32);
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

unint64_t sub_1D8F70EFC()
{
  result = qword_1ECAB77B0;
  if (!qword_1ECAB77B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB77B0);
  }

  return result;
}

uint64_t InterestModel.interestValueUpdatedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InterestModel() + 24);
  v4 = sub_1D9176E3C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t InterestModel.init(adamID:interestValue:interestValueUpdatedDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = a1;
  *(a3 + 8) = a4;
  v6 = *(type metadata accessor for InterestModel() + 24);
  v7 = sub_1D9176E3C();
  v8 = *(*(v7 - 8) + 32);

  return v8(a3 + v6, a2, v7);
}

uint64_t static InterestModel.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v3 = *(type metadata accessor for InterestModel() + 24);

  return sub_1D9176DEC();
}

uint64_t sub_1D8F711B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v3 = *(a3 + 24);
  return sub_1D9176DEC();
}

void *InterestObserverProvider.init(ctx:)(void *a1)
{
  v2 = sub_1D8D1F9D4(a1);

  return v2;
}

uint64_t sub_1D8F71264@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for MTInterest();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = v4;
    v6 = a1;
    v7 = [v5 adamID];
    [v5 interestValue];
    v9 = v8;
    v10 = [v5 lastUpdatedDate];
    v11 = type metadata accessor for InterestModel();
    v12 = a2 + *(v11 + 24);
    sub_1D9176DFC();

    *a2 = v7;
    a2[1] = v9;
    v13 = *(*(v11 - 8) + 56);
    v14 = a2;
    v15 = 0;
    v16 = v11;
  }

  else
  {
    v17 = type metadata accessor for InterestModel();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a2;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_1D8F713AC(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 1;
  }

  v2 = *(type metadata accessor for InterestModel() + 24);
  return (sub_1D9176DEC() ^ 1) & 1;
}

uint64_t sub_1D8F71420(void *a1)
{
  v1 = a1;

  return RecommendationsMetadata.Shows.Metadata.init(from:)(v1);
}

uint64_t sub_1D8F71458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D9177E0C();
  v24 = *(v6 - 8);
  v7 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D9177E9C();
  v22 = *(v10 - 8);
  v23 = v10;
  v11 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 16);
  v15 = sub_1D8D52F10();
  v16 = sub_1D8D53120();
  v18 = (v15 || v16) | sub_1D8D53330();
  sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  v19 = sub_1D9178E1C();
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;
  *(v20 + 32) = (v18 & 1) == 0;
  aBlock[4] = sub_1D8F71B3C;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_21_1;
  v21 = _Block_copy(aBlock);

  sub_1D9177E4C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D8CFBD18(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v13, v9, v21);
  _Block_release(v21);

  (*(v24 + 8))(v9, v6);
  return (*(v22 + 8))(v13, v23);
}

uint64_t InterestObserverProvider.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  v5 = *(v0 + 56);

  v6 = *(v0 + 64);

  v7 = *(v0 + 72);

  v8 = *(v0 + 80);

  v9 = *(v0 + 88);

  v10 = *(v0 + 96);

  return v0;
}

uint64_t InterestObserverProvider.__deallocating_deinit()
{
  InterestObserverProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D8F71AF4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(1, 0);
}

uint64_t InterestRepository.init(interestStore:syncKeysRepository:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t InterestRepository.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t InterestRepository.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1D8F71CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(v4 + 16) + 16);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a1;
  v19 = a3;
  v20 = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  v18 = a4;
  v11 = _Block_copy(aBlock);

  [v8 performBlock_];
  _Block_release(v11);
  v12 = *(v4 + 24);
  v13 = OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  swift_beginAccess();
  sub_1D8CFD9D8(v12 + v13, aBlock);
  v14 = v18;
  v15 = v19;
  __swift_project_boxed_opaque_existential_1(aBlock, v18);
  (*(v15 + 280))(1, v14, v15);
  return __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
}

uint64_t sub_1D8F71E2C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(*(v5 + 16) + 16);
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = a1;
  *(v12 + 32) = a2;
  v21 = a4;
  v22 = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  v20 = a5;
  v13 = _Block_copy(aBlock);

  [v10 performBlock_];
  _Block_release(v13);
  v14 = *(v5 + 24);
  v15 = OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  swift_beginAccess();
  sub_1D8CFD9D8(v14 + v15, aBlock);
  v16 = v20;
  v17 = v21;
  __swift_project_boxed_opaque_existential_1(aBlock, v20);
  (*(v17 + 280))(1, v16, v17);
  return __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
}

Swift::Void __swiftcall InterestRepository.unsafeFavoriteExistingEntitledChannelsIfNeeded(entitledChannels:)(Swift::OpaquePointer entitledChannels)
{
  v2 = v1;
  v4 = sub_1D9177E0C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D9177E9C();
  v28 = *(v9 - 8);
  v10 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  v14 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v15 = [v13 BOOLForKey_];

  if ((v15 & 1) == 0)
  {
    if (entitledChannels._rawValue >> 62)
    {
      if (sub_1D917935C() >= 1)
      {
        goto LABEL_4;
      }
    }

    else if (*((entitledChannels._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
LABEL_4:
      v27 = v5;
      v16 = *(v2 + 16);
      InterestStore.unsafeFavoriteExistingEntitledChannelsIfNeeded(entitledChannels:)(entitledChannels);
      if (qword_1EDCD0990 != -1)
      {
        swift_once();
      }

      v17 = swift_allocObject();
      swift_weakInit();
      v34 = sub_1D8F72758;
      v35 = v17;
      aBlock = MEMORY[0x1E69E9820];
      v31 = 1107296256;
      v32 = sub_1D8CF5F60;
      v33 = &block_descriptor_34_0;
      v18 = _Block_copy(&aBlock);

      sub_1D9177E4C();
      v29 = MEMORY[0x1E69E7CC0];
      sub_1D8D123F8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
      sub_1D8D1D5B0();
      sub_1D91792CC();
      MEMORY[0x1DA72A400](0, v12, v8, v18);
      _Block_release(v18);
      (*(v27 + 8))(v8, v4);
LABEL_15:
      (*(v28 + 8))(v12, v9);

      return;
    }

    v19 = v5;
    if (qword_1EDCD0F40 != -1)
    {
      swift_once();
    }

    v20 = sub_1D917744C();
    __swift_project_value_buffer(v20, qword_1EDCD0F48);
    v21 = sub_1D917741C();
    v22 = sub_1D9178D1C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1D8CEC000, v21, v22, "[Interests] No subscribed channels to sync for interests on first launch.", v23, 2u);
      MEMORY[0x1DA72CB90](v23, -1, -1);
    }

    if (qword_1EDCD0990 != -1)
    {
      swift_once();
    }

    v24 = swift_allocObject();
    swift_weakInit();
    v34 = sub_1D8F72750;
    v35 = v24;
    aBlock = MEMORY[0x1E69E9820];
    v31 = 1107296256;
    v32 = sub_1D8CF5F60;
    v33 = &block_descriptor_30;
    v25 = _Block_copy(&aBlock);

    sub_1D9177E4C();
    v29 = MEMORY[0x1E69E7CC0];
    sub_1D8D123F8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D8D1D5B0();
    sub_1D91792CC();
    MEMORY[0x1DA72A400](0, v12, v8, v25);
    _Block_release(v25);
    (*(v19 + 8))(v8, v4);
    goto LABEL_15;
  }
}

void sub_1D8F72524()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    v0 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
    v1 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    [v0 setBool:1 forKey:v1];
  }
}

void sub_1D8F725D4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + 24);
    v2 = OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
    swift_beginAccess();
    sub_1D8CFD9D8(v1 + v2, v7);
    v3 = v8;
    v4 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    (*(v4 + 280))(1, v3, v4);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    v5 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
    v6 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    [v5 setBool:1 forKey:v6];
  }
}

void sub_1D8F7280C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(v5 + 16);
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = a1;
  *(v12 + 32) = a2;
  v14[4] = a4;
  v14[5] = v12;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1D8CF5F60;
  v14[3] = a5;
  v13 = _Block_copy(v14);

  [v10 performBlock_];
  _Block_release(v13);
}

void sub_1D8F72934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(v4 + 16);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a1;
  v12[4] = a3;
  v12[5] = v10;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1D8CF5F60;
  v12[3] = a4;
  v11 = _Block_copy(v12);

  [v8 performBlock_];
  _Block_release(v11);
}

Swift::Void __swiftcall InterestStore.unsafeFavoriteExistingEntitledChannelsIfNeeded(entitledChannels:)(Swift::OpaquePointer entitledChannels)
{
  v2 = sub_1D9176FBC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D9176FDC();
  v85 = *(v7 - 1);
  v86 = v7;
  v8 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v71 - v13;
  v15 = sub_1D9176E3C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v71 - v21;
  sub_1D9176FAC();
  (*(v3 + 104))(v6, *MEMORY[0x1E6969A48], v2);
  sub_1D9176E0C();
  sub_1D9176F9C();
  v23 = *(v16 + 8);
  v24 = v20;
  v25 = v15;
  v73 = v16 + 8;
  v72 = v23;
  v23(v24, v15);
  (*(v3 + 8))(v6, v2);
  (*(v85 + 8))(v10, v86);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_1D8CF5EF8(v14);
    if (qword_1ECAB0BF0 != -1)
    {
      goto LABEL_49;
    }

    goto LABEL_3;
  }

  (*(v16 + 32))(v22, v14, v15);
  v31 = v22;
  if (entitledChannels._rawValue >> 62)
  {
    v32 = sub_1D917935C();
    if (v32)
    {
      goto LABEL_8;
    }

LABEL_51:
    v72(v31, v25);
    return;
  }

  v32 = *((entitledChannels._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v32)
  {
    goto LABEL_51;
  }

LABEL_8:
  v33 = 0;
  v74 = 0;
  v82 = entitledChannels._rawValue & 0xC000000000000001;
  v75 = entitledChannels._rawValue + 32;
  v76 = entitledChannels._rawValue & 0xFFFFFFFFFFFFFF8;
  *&v30 = 134217984;
  v77 = v30;
  v80 = v15;
  rawValue = entitledChannels._rawValue;
  v78 = v32;
  v79 = v22;
  while (1)
  {
    if (v82)
    {
      v34 = MEMORY[0x1DA72AA90](v33, entitledChannels._rawValue);
    }

    else
    {
      if (v33 >= *(v76 + 16))
      {
        goto LABEL_48;
      }

      v34 = *&v75[8 * v33];
    }

    v35 = v34;
    if (__OFADD__(v33++, 1))
    {
      break;
    }

    v37 = [v34 podcasts];
    v86 = v35;
    if (v37)
    {
      v38 = v37;
      v39 = sub_1D8F46024();
      sub_1D8F74C20();
      v40 = sub_1D9178A9C();

      v84 = v33;
      v85 = v39;
      if ((v40 & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        sub_1D917931C();
        sub_1D9178B3C();
        v41 = v89;
        v42 = v90;
        v43 = v91;
        v44 = v92;
        v45 = v93;
      }

      else
      {
        v46 = -1 << *(v40 + 32);
        v42 = v40 + 56;
        v43 = ~v46;
        v47 = -v46;
        if (v47 < 64)
        {
          v48 = ~(-1 << v47);
        }

        else
        {
          v48 = -1;
        }

        v45 = v48 & *(v40 + 56);

        v44 = 0;
        v41 = v40;
      }

      v83 = v43;
      v49 = (v43 + 64) >> 6;
      do
      {
        if (v41 < 0)
        {
          v53 = sub_1D917938C();
          if (!v53 || (v87 = v53, swift_dynamicCast(), (v52 = v88) == 0))
          {
LABEL_36:
            sub_1D8D1B144();

            v25 = v80;
            entitledChannels._rawValue = rawValue;
            v32 = v78;
            v31 = v79;
            v33 = v84;
            v35 = v86;
            goto LABEL_37;
          }
        }

        else
        {
          v50 = v44;
          v51 = v45;
          if (!v45)
          {
            while (1)
            {
              v44 = v50 + 1;
              if (__OFADD__(v50, 1))
              {
                break;
              }

              if (v44 >= v49)
              {
                goto LABEL_36;
              }

              v51 = *(v42 + 8 * v44);
              ++v50;
              if (v51)
              {
                goto LABEL_29;
              }
            }

            __break(1u);
            goto LABEL_47;
          }

LABEL_29:
          v45 = (v51 - 1) & v51;
          v52 = *(*(v41 + 48) + ((v44 << 9) | (8 * __clz(__rbit64(v51)))));
          if (!v52)
          {
            goto LABEL_36;
          }
        }

        v54 = [v52 subscribed];
      }

      while ((v54 & 1) == 0);
      v55 = sub_1D8D1B144();
      MEMORY[0x1EEE9AC00](v55);
      v31 = v79;
      *(&v71 - 2) = v79;
      v56 = v74;
      sub_1D8F458E8(sub_1D8F74C78, (&v71 - 4), v40);
      v58 = v57;
      v74 = v56;

      if (v58)
      {
        v35 = v86;
        v59 = [v86 storeId];
        sub_1D8F733FC(v59 & ~(v59 >> 63), 0);
        v25 = v80;
        entitledChannels._rawValue = rawValue;
        v32 = v78;
        v33 = v84;
        goto LABEL_10;
      }

      v25 = v80;
      entitledChannels._rawValue = rawValue;
      v32 = v78;
      v33 = v84;
      v35 = v86;
      if (qword_1ECAB0BF0 != -1)
      {
        swift_once();
      }

      v69 = sub_1D917744C();
      __swift_project_value_buffer(v69, qword_1ECAB0BF8);
      v61 = v35;
      v62 = sub_1D917741C();
      v70 = sub_1D9178D1C();
      if (os_log_type_enabled(v62, v70))
      {
        v64 = swift_slowAlloc();
        *v64 = v77;
        *(v64 + 4) = [v61 storeId];

        v65 = v70;
        v66 = v62;
        v67 = "Existing channel %lld does not have at least one played episodes in the last 90 days.";
        goto LABEL_41;
      }
    }

    else
    {
LABEL_37:
      if (qword_1ECAB0BF0 != -1)
      {
        swift_once();
      }

      v60 = sub_1D917744C();
      __swift_project_value_buffer(v60, qword_1ECAB0BF8);
      v61 = v35;
      v62 = sub_1D917741C();
      v63 = sub_1D9178D1C();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        *v64 = v77;
        *(v64 + 4) = [v61 storeId];

        v65 = v63;
        v66 = v62;
        v67 = "Existing channel %lld does not have at least one followed show. Not favoriting.";
LABEL_41:
        _os_log_impl(&dword_1D8CEC000, v66, v65, v67, v64, 0xCu);
        v68 = v64;
        v35 = v86;
        MEMORY[0x1DA72CB90](v68, -1, -1);

        goto LABEL_10;
      }
    }

LABEL_10:
    if (v33 == v32)
    {
      goto LABEL_51;
    }
  }

LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  swift_once();
LABEL_3:
  v26 = sub_1D917744C();
  __swift_project_value_buffer(v26, qword_1ECAB0BF8);
  v27 = sub_1D917741C();
  v28 = sub_1D9178CFC();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_1D8CEC000, v27, v28, "Unable to favorite existing entitled channels because could not get a date value for 90 days in the past.", v29, 2u);
    MEMORY[0x1DA72CB90](v29, -1, -1);
  }
}

uint64_t InterestStore.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D8F73388(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D8F733FC(a2, a3 & 1);
  }

  return result;
}

void sub_1D8F733FC(uint64_t a1, char a2)
{
  v5 = sub_1D9176E3C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8F7381C(a1);
  if (v10)
  {
    v11 = v10;
    sub_1D8F73AEC(v10);
    sub_1D8F744F0(v11, &selRef_channelForStoreId_, &selRef_setChannel_, "Could not find channel for interest: %llu. Not configuring relationship to channel.");
    if ((a2 & 1) != 0 || ([v11 interestValue], v12 == 0.0))
    {
      [v11 setInterestValue_];
      sub_1D9176E0C();
      v13 = _s10Foundation4DateV08PodcastsA0E18userDefaultsObjectSo6NSDateCSgyF_0();
      (*(v6 + 8))(v9, v5);
      [v11 setLastUpdatedDate_];

      [*(v2 + 16) saveInCurrentBlock];
LABEL_5:

      return;
    }

    if (qword_1ECAB0BF0 != -1)
    {
      swift_once();
    }

    v21 = sub_1D917744C();
    __swift_project_value_buffer(v21, qword_1ECAB0BF8);
    v11 = v11;
    v31 = sub_1D917741C();
    v22 = sub_1D9178CFC();

    if (os_log_type_enabled(v31, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v32 = a1;
      v33 = v24;
      *v23 = 136315394;
      sub_1D8E40D20();
      v25 = sub_1D917927C();
      v27 = sub_1D8CFA924(v25, v26, &v33);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2048;
      [v11 interestValue];
      *(v23 + 14) = v28;
      _os_log_impl(&dword_1D8CEC000, v31, v22, "Cannot favorite interest: %s because the interestValue is not neutral. InterestValue: %f", v23, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      MEMORY[0x1DA72CB90](v24, -1, -1);
      MEMORY[0x1DA72CB90](v23, -1, -1);

      goto LABEL_5;
    }
  }

  else
  {
    if (qword_1ECAB0BF0 != -1)
    {
      swift_once();
    }

    v14 = sub_1D917744C();
    __swift_project_value_buffer(v14, qword_1ECAB0BF8);
    v31 = sub_1D917741C();
    v15 = sub_1D9178CFC();
    if (os_log_type_enabled(v31, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v32 = a1;
      v33 = v17;
      *v16 = 136315138;
      sub_1D8E40A10();
      v18 = sub_1D9179A4C();
      v20 = sub_1D8CFA924(v18, v19, &v33);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_1D8CEC000, v31, v15, "Could not find or create interest for adamID: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x1DA72CB90](v17, -1, -1);
      MEMORY[0x1DA72CB90](v16, -1, -1);

      return;
    }
  }

  v29 = v31;
}

void sub_1D8F7381C(uint64_t a1)
{
  v3 = sub_1D9176E3C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 16);
  NSManagedObjectContext.unsafeInterest(forAdamID:)(a1);
  if (!v9)
  {
    v10 = objc_opt_self();
    v11 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    v12 = [v10 insertNewObjectForEntityForName:v11 inManagedObjectContext:v8];

    type metadata accessor for MTInterest();
    v13 = swift_dynamicCastClass();
    if (v13)
    {
      v14 = v13;
      [v13 setAdamID_];
      [v14 setInterestValue_];
      sub_1D9176E0C();
      v15 = _s10Foundation4DateV08PodcastsA0E18userDefaultsObjectSo6NSDateCSgyF_0();
      (*(v4 + 8))(v7, v3);
      [v14 setLastUpdatedDate_];
    }

    else
    {

      if (qword_1ECAB0BF0 != -1)
      {
        swift_once();
      }

      v16 = sub_1D917744C();
      __swift_project_value_buffer(v16, qword_1ECAB0BF8);
      v17 = sub_1D917741C();
      v18 = sub_1D9178CFC();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v24 = a1;
        v25 = v20;
        *v19 = 136315138;
        sub_1D8E40A10();
        v21 = sub_1D9179A4C();
        v23 = sub_1D8CFA924(v21, v22, &v25);

        *(v19 + 4) = v23;
        _os_log_impl(&dword_1D8CEC000, v17, v18, "Cannot create MTInterest for adamID: %s. Unable to favorite interest.", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v20);
        MEMORY[0x1DA72CB90](v20, -1, -1);
        MEMORY[0x1DA72CB90](v19, -1, -1);
      }
    }
  }
}

void sub_1D8F73AEC(void *a1)
{
  v3 = *(v1 + 16);
  NSManagedObjectContext.unsafeCategory(forAdamID:)([a1 adamID]);
  if (v4)
  {
    v10 = v4;
    [a1 setCategory_];
    [v10 setInterest:a1];
    v5 = v10;
  }

  else
  {
    if (qword_1ECAB0BF0 != -1)
    {
      swift_once();
    }

    v6 = sub_1D917744C();
    __swift_project_value_buffer(v6, qword_1ECAB0BF8);
    v7 = a1;
    v11 = sub_1D917741C();
    v8 = sub_1D9178D1C();
    if (os_log_type_enabled(v11, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 134217984;
      *(v9 + 4) = [v7 adamID];

      _os_log_impl(&dword_1D8CEC000, v11, v8, "Could not find category for interest: %llu. Not configuring relationship to category.", v9, 0xCu);
      MEMORY[0x1DA72CB90](v9, -1, -1);
      v5 = v11;
    }

    else
    {

      v5 = v7;
    }
  }
}

void sub_1D8F73C60(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D9176E3C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    sub_1D8F7381C(a2);
    if (v10)
    {
      v11 = v10;
      sub_1D8F73AEC(v10);
      sub_1D8F744F0(v11, &selRef_channelForStoreId_, &selRef_setChannel_, "Could not find channel for interest: %llu. Not configuring relationship to channel.");
      [v11 interestValue];
      if (v12 == 1.0)
      {
        [v11 setInterestValue_];
        sub_1D9176E0C();
        v13 = _s10Foundation4DateV08PodcastsA0E18userDefaultsObjectSo6NSDateCSgyF_0();
        (*(v4 + 8))(v7, v3);
        [v11 setLastUpdatedDate_];

        [*(v9 + 16) saveInCurrentBlock];
      }

      else
      {
        if (qword_1ECAB0BF0 != -1)
        {
          swift_once();
        }

        v22 = sub_1D917744C();
        __swift_project_value_buffer(v22, qword_1ECAB0BF8);
        v23 = v11;
        v24 = sub_1D917741C();
        v25 = sub_1D9178CFC();

        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          v33 = a2;
          v34 = v27;
          *v26 = 136315394;
          sub_1D8E40D20();
          v28 = sub_1D917927C();
          v30 = sub_1D8CFA924(v28, v29, &v34);

          *(v26 + 4) = v30;
          *(v26 + 12) = 2048;
          [v23 interestValue];
          *(v26 + 14) = v31;
          _os_log_impl(&dword_1D8CEC000, v24, v25, "Cannot un-favorite interest: %s because the interestValue is not favorited. InterestValue: %f", v26, 0x16u);
          __swift_destroy_boxed_opaque_existential_1Tm(v27);
          MEMORY[0x1DA72CB90](v27, -1, -1);
          MEMORY[0x1DA72CB90](v26, -1, -1);
        }

        else
        {
        }
      }
    }

    else
    {
      if (qword_1ECAB0BF0 != -1)
      {
        swift_once();
      }

      v14 = sub_1D917744C();
      __swift_project_value_buffer(v14, qword_1ECAB0BF8);
      v15 = sub_1D917741C();
      v16 = sub_1D9178CFC();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v33 = a2;
        v34 = v18;
        *v17 = 136315138;
        sub_1D8E40A10();
        v19 = sub_1D9179A4C();
        v21 = sub_1D8CFA924(v19, v20, &v34);

        *(v17 + 4) = v21;
        _os_log_impl(&dword_1D8CEC000, v15, v16, "Could not find or create interest for adamID: %s", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v18);
        MEMORY[0x1DA72CB90](v18, -1, -1);
        MEMORY[0x1DA72CB90](v17, -1, -1);
      }
    }
  }
}

void sub_1D8F740A0(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_1D9176E3C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    sub_1D8F7381C(a2);
    if (v12)
    {
      v13 = v12;
      sub_1D8F73AEC(v12);
      sub_1D8F744F0(v13, &selRef_channelForStoreId_, &selRef_setChannel_, "Could not find channel for interest: %llu. Not configuring relationship to channel.");
      sub_1D8F744F0(v13, &selRef_podcastForStoreId_, &selRef_setPodcast_, "Could not find podcast for interest: %llu. Not configuring relationship to podcast.");
      if ((a3 & 1) != 0 || ([v13 interestValue], v14 == 0.0))
      {
        [v13 setInterestValue_];
        sub_1D9176E0C();
        v15 = _s10Foundation4DateV08PodcastsA0E18userDefaultsObjectSo6NSDateCSgyF_0();
        (*(v6 + 8))(v9, v5);
        [v13 setLastUpdatedDate_];

        [*(v11 + 16) saveInCurrentBlock];
LABEL_6:

        return;
      }

      if (qword_1ECAB0BF0 != -1)
      {
        swift_once();
      }

      v24 = sub_1D917744C();
      __swift_project_value_buffer(v24, qword_1ECAB0BF8);
      v13 = v13;
      v25 = sub_1D917741C();
      v26 = sub_1D9178CFC();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v34 = a2;
        v35 = v28;
        *v27 = 136315394;
        sub_1D8E40D20();
        v29 = sub_1D917927C();
        v31 = sub_1D8CFA924(v29, v30, &v35);

        *(v27 + 4) = v31;
        *(v27 + 12) = 2048;
        [v13 interestValue];
        *(v27 + 14) = v32;
        _os_log_impl(&dword_1D8CEC000, v25, v26, "Cannot Suggest Less for interest: %s because the interestValue is not neutral. InterestValue: %f", v27, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v28);
        MEMORY[0x1DA72CB90](v28, -1, -1);
        MEMORY[0x1DA72CB90](v27, -1, -1);

        goto LABEL_6;
      }
    }

    else
    {
      if (qword_1ECAB0BF0 != -1)
      {
        swift_once();
      }

      v16 = sub_1D917744C();
      __swift_project_value_buffer(v16, qword_1ECAB0BF8);
      v17 = sub_1D917741C();
      v18 = sub_1D9178CFC();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v34 = a2;
        v35 = v20;
        *v19 = 136315138;
        sub_1D8E40A10();
        v21 = sub_1D9179A4C();
        v23 = sub_1D8CFA924(v21, v22, &v35);

        *(v19 + 4) = v23;
        _os_log_impl(&dword_1D8CEC000, v17, v18, "Could not find or create interest for adamID: %s", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v20);
        MEMORY[0x1DA72CB90](v20, -1, -1);
        MEMORY[0x1DA72CB90](v19, -1, -1);
      }
    }
  }
}

void sub_1D8F744F0(void *a1, SEL *a2, SEL *a3, const char *a4)
{
  v9 = *(v4 + 16);
  v10 = [a1 adamID];
  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_12:
    swift_once();
    goto LABEL_5;
  }

  v11 = [v9 *a2];
  if (v11)
  {
    v17 = v11;
    [a1 *a3];
    [v17 setInterest:a1];
    v12 = v17;
    goto LABEL_8;
  }

  if (qword_1ECAB0BF0 != -1)
  {
    goto LABEL_12;
  }

LABEL_5:
  v13 = sub_1D917744C();
  __swift_project_value_buffer(v13, qword_1ECAB0BF8);
  v14 = a1;
  v18 = sub_1D917741C();
  v15 = sub_1D9178D1C();
  if (os_log_type_enabled(v18, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134217984;
    *(v16 + 4) = [v14 adamID];

    _os_log_impl(&dword_1D8CEC000, v18, v15, a4, v16, 0xCu);
    MEMORY[0x1DA72CB90](v16, -1, -1);
    v12 = v18;
  }

  else
  {

    v12 = v14;
  }

LABEL_8:
}

void sub_1D8F74694(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D9176E3C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    sub_1D8F7381C(a2);
    if (v10)
    {
      v11 = v10;
      sub_1D8F73AEC(v10);
      sub_1D8F744F0(v11, &selRef_channelForStoreId_, &selRef_setChannel_, "Could not find channel for interest: %llu. Not configuring relationship to channel.");
      sub_1D8F744F0(v11, &selRef_podcastForStoreId_, &selRef_setPodcast_, "Could not find podcast for interest: %llu. Not configuring relationship to podcast.");
      [v11 interestValue];
      if (v12 == -1.0)
      {
        [v11 setInterestValue_];
        sub_1D9176E0C();
        v13 = _s10Foundation4DateV08PodcastsA0E18userDefaultsObjectSo6NSDateCSgyF_0();
        (*(v4 + 8))(v7, v3);
        [v11 setLastUpdatedDate_];

        [*(v9 + 16) saveInCurrentBlock];
      }

      else
      {
        if (qword_1ECAB0BF0 != -1)
        {
          swift_once();
        }

        v22 = sub_1D917744C();
        __swift_project_value_buffer(v22, qword_1ECAB0BF8);
        v23 = v11;
        v24 = sub_1D917741C();
        v25 = sub_1D9178CFC();

        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          v33 = a2;
          v34 = v27;
          *v26 = 136315394;
          sub_1D8E40D20();
          v28 = sub_1D917927C();
          v30 = sub_1D8CFA924(v28, v29, &v34);

          *(v26 + 4) = v30;
          *(v26 + 12) = 2048;
          [v23 interestValue];
          *(v26 + 14) = v31;
          _os_log_impl(&dword_1D8CEC000, v24, v25, "Cannot Undo Suggest Less for interest: %s because the interestValue is not suggestLess. InterestValue: %f", v26, 0x16u);
          __swift_destroy_boxed_opaque_existential_1Tm(v27);
          MEMORY[0x1DA72CB90](v27, -1, -1);
          MEMORY[0x1DA72CB90](v26, -1, -1);
        }

        else
        {
        }
      }
    }

    else
    {
      if (qword_1ECAB0BF0 != -1)
      {
        swift_once();
      }

      v14 = sub_1D917744C();
      __swift_project_value_buffer(v14, qword_1ECAB0BF8);
      v15 = sub_1D917741C();
      v16 = sub_1D9178CFC();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v33 = a2;
        v34 = v18;
        *v17 = 136315138;
        sub_1D8E40A10();
        v19 = sub_1D9179A4C();
        v21 = sub_1D8CFA924(v19, v20, &v34);

        *(v17 + 4) = v21;
        _os_log_impl(&dword_1D8CEC000, v15, v16, "Could not find or create interest for adamID: %s", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v18);
        MEMORY[0x1DA72CB90](v18, -1, -1);
        MEMORY[0x1DA72CB90](v17, -1, -1);
      }
    }
  }
}

uint64_t sub_1D8F74AF4(id *a1)
{
  v2 = sub_1D9176E3C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*a1 lastDatePlayed];
  sub_1D9176CBC();
  v7 = sub_1D9176D9C();
  (*(v3 + 8))(v6, v2);
  return v7 & 1;
}

uint64_t sub_1D8F74BF0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_1D8F74C20()
{
  result = qword_1ECAB72F8;
  if (!qword_1ECAB72F8)
  {
    sub_1D8F46024();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB72F8);
  }

  return result;
}

double sub_1D8F74CC0@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_1D8F74CE0()
{
  v1 = *v0;
  sub_1D9179DBC();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x1DA72B3C0](*&v2);
  return sub_1D9179E1C();
}

uint64_t sub_1D8F74D3C()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x1DA72B3C0](*&v1);
}

uint64_t sub_1D8F74D78()
{
  v1 = *v0;
  sub_1D9179DBC();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x1DA72B3C0](*&v2);
  return sub_1D9179E1C();
}

unint64_t sub_1D8F74DEC()
{
  result = qword_1ECAB77D8;
  if (!qword_1ECAB77D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB77D8);
  }

  return result;
}

PodcastsFoundation::PodcastsSystem_optional __swiftcall PodcastsSystem.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D9179C6C();

  v5 = 0;
  v6 = 36;
  switch(v3)
  {
    case 0:
      goto LABEL_51;
    case 1:
      v5 = 1;
      goto LABEL_51;
    case 2:
      v5 = 2;
      goto LABEL_51;
    case 3:
      v5 = 3;
      goto LABEL_51;
    case 4:
      v5 = 4;
      goto LABEL_51;
    case 5:
      v5 = 5;
      goto LABEL_51;
    case 6:
      v5 = 6;
      goto LABEL_51;
    case 7:
      v5 = 7;
      goto LABEL_51;
    case 8:
      v5 = 8;
      goto LABEL_51;
    case 9:
      v5 = 9;
      goto LABEL_51;
    case 10:
      v5 = 10;
      goto LABEL_51;
    case 11:
      v5 = 11;
      goto LABEL_51;
    case 12:
      v5 = 12;
      goto LABEL_51;
    case 13:
      v5 = 13;
      goto LABEL_51;
    case 14:
      v5 = 14;
      goto LABEL_51;
    case 15:
      v5 = 15;
      goto LABEL_51;
    case 16:
      v5 = 16;
      goto LABEL_51;
    case 17:
      v5 = 17;
      goto LABEL_51;
    case 18:
      v5 = 18;
      goto LABEL_51;
    case 19:
      v5 = 19;
      goto LABEL_51;
    case 20:
      v5 = 20;
      goto LABEL_51;
    case 21:
      v5 = 21;
      goto LABEL_51;
    case 22:
      v5 = 22;
      goto LABEL_51;
    case 23:
      v5 = 23;
      goto LABEL_51;
    case 24:
      v5 = 24;
      goto LABEL_51;
    case 25:
      v5 = 25;
      goto LABEL_51;
    case 26:
      v5 = 26;
      goto LABEL_51;
    case 27:
      v5 = 27;
      goto LABEL_51;
    case 28:
      v5 = 28;
      goto LABEL_51;
    case 29:
      v5 = 29;
      goto LABEL_51;
    case 30:
      v5 = 30;
      goto LABEL_51;
    case 31:
      v5 = 31;
      goto LABEL_51;
    case 32:
      v5 = 32;
      goto LABEL_51;
    case 33:
      v5 = 33;
      goto LABEL_51;
    case 34:
      v5 = 34;
      goto LABEL_51;
    case 35:
      v5 = 35;
LABEL_51:
      v6 = v5;
      break;
    case 36:
      break;
    case 37:
      v6 = 37;
      break;
    case 38:
      v6 = 38;
      break;
    case 39:
      v6 = 39;
      break;
    case 40:
      v6 = 40;
      break;
    case 41:
      v6 = 41;
      break;
    case 42:
      v6 = 42;
      break;
    case 43:
      v6 = 43;
      break;
    case 44:
      v6 = 44;
      break;
    case 45:
      v6 = 45;
      break;
    case 46:
      v6 = 46;
      break;
    case 47:
      v6 = 47;
      break;
    case 48:
      v6 = 48;
      break;
    case 49:
      v6 = 49;
      break;
    case 50:
      v6 = 50;
      break;
    case 51:
      v6 = 51;
      break;
    case 52:
      v6 = 52;
      break;
    case 53:
      v6 = 53;
      break;
    default:
      v6 = 54;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t PodcastsSystem.rawValue.getter()
{
  result = 0x6B72616D6B6F6F42;
  switch(*v0)
  {
    case 1:
      result = 0x6573616261746144;
      break;
    case 2:
      result = 0x64616F6C6E776F44;
      break;
    case 3:
      result = 21322;
      break;
    case 4:
      result = 0x697461676976614ELL;
      break;
    case 5:
      result = 0x746567646957;
      break;
    case 6:
      result = 0x537972617262694CLL;
      break;
    case 7:
      result = 0x677542656C6946;
      break;
    case 8:
      result = 0x73676E6974746553;
      break;
    case 9:
      result = 0xD00000000000001ALL;
      break;
    case 0xA:
      result = 0x79726F6D654D6E49;
      break;
    case 0xB:
      result = 0x6E795364756F6C43;
      break;
    case 0xC:
    case 0x35:
      result = 0xD000000000000010;
      break;
    case 0xD:
      result = 0x616E6F4469726953;
      break;
    case 0xE:
      result = 0x5564656546535352;
      break;
    case 0xF:
      result = 0xD000000000000015;
      break;
    case 0x10:
      result = 0x6E69776F6C6C6F46;
      break;
    case 0x11:
      result = 0x6164705564656546;
      break;
    case 0x12:
      result = 0x6B63616279616C50;
      break;
    case 0x13:
      result = 0x6D617A616853;
      break;
    case 0x14:
      result = 0x697263736E617254;
      break;
    case 0x15:
      result = 0x6573616863727550;
      break;
    case 0x16:
      result = 0x50746E6572727543;
      break;
    case 0x17:
      result = 0x79616C5072696146;
      break;
    case 0x18:
      result = 0xD000000000000014;
      break;
    case 0x19:
      result = 0x7363697274654DLL;
      break;
    case 0x1A:
      result = 0x737465737341;
      break;
    case 0x1B:
      result = 0x6B726F77747241;
      break;
    case 0x1C:
      result = 0xD000000000000011;
      break;
    case 0x1D:
      result = 0xD000000000000011;
      break;
    case 0x1E:
      result = 0x6F52746E65746E49;
      break;
    case 0x1F:
      result = 0x614279636E756F42;
      break;
    case 0x20:
      result = 0x6979616C50776F4ELL;
      break;
    case 0x21:
      result = 0xD000000000000011;
      break;
    case 0x22:
      result = 0xD000000000000019;
      break;
    case 0x23:
      result = 0x6C506E7265646F4DLL;
      break;
    case 0x24:
      result = 0x73776F7262657945;
      break;
    case 0x25:
      result = 0xD000000000000011;
      break;
    case 0x26:
      result = 0x79636176697250;
      break;
    case 0x27:
      result = 0x6C6379636566694CLL;
      break;
    case 0x28:
      result = 0x6F4E6E657473694CLL;
      break;
    case 0x29:
      result = 18773;
      break;
    case 0x2A:
      result = 0x7473657265746E49;
      break;
    case 0x2B:
      result = 0xD000000000000017;
      break;
    case 0x2C:
      result = 0x6974634172657355;
      break;
    case 0x2D:
      result = 0x6B726F7774654ELL;
      break;
    case 0x2E:
      result = 0x686372616553;
      break;
    case 0x2F:
      result = 0x6163696669746F4ELL;
      break;
    case 0x30:
      result = 0x7463697274736552;
      break;
    case 0x31:
      result = 1936746836;
      break;
    case 0x32:
      result = 0x7372657470616843;
      break;
    case 0x33:
      result = 0x736B6E694CLL;
      break;
    case 0x34:
      result = 5525584;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D8F7561C(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = PodcastsSystem.rawValue.getter();
  v4 = v3;
  if (v2 == PodcastsSystem.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1D9179ACC();
  }

  return v7 & 1;
}

uint64_t sub_1D8F756B8()
{
  v1 = *v0;
  sub_1D9179DBC();
  PodcastsSystem.rawValue.getter();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t sub_1D8F75720()
{
  v2 = *v0;
  PodcastsSystem.rawValue.getter();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1D8F75784()
{
  v1 = *v0;
  sub_1D9179DBC();
  PodcastsSystem.rawValue.getter();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

unint64_t sub_1D8F757F4@<X0>(unint64_t *a1@<X8>)
{
  result = PodcastsSystem.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t Logger.init(domain:)(char *a1)
{
  v2 = *a1;
  PodcastsSystem.rawValue.getter();

  return sub_1D917742C();
}

uint64_t sub_1D8F75A9C()
{
  v0 = sub_1D917744C();
  __swift_allocate_value_buffer(v0, qword_1EDCD0FC8);
  __swift_project_value_buffer(v0, qword_1EDCD0FC8);
  return sub_1D917742C();
}

uint64_t sub_1D8F75E3C()
{
  v0 = sub_1D917744C();
  __swift_allocate_value_buffer(v0, qword_1ECAB0D50);
  __swift_project_value_buffer(v0, qword_1ECAB0D50);
  return sub_1D917742C();
}

uint64_t sub_1D8F75FE0()
{
  v0 = sub_1D917744C();
  __swift_allocate_value_buffer(v0, qword_1ECAB7810);
  __swift_project_value_buffer(v0, qword_1ECAB7810);
  return sub_1D917742C();
}

uint64_t sub_1D8F76234()
{
  v0 = sub_1D917744C();
  __swift_allocate_value_buffer(v0, qword_1EDCD1030);
  __swift_project_value_buffer(v0, qword_1EDCD1030);
  return sub_1D917742C();
}

uint64_t sub_1D8F76400()
{
  v0 = sub_1D917744C();
  __swift_allocate_value_buffer(v0, qword_1ECAB0D30);
  __swift_project_value_buffer(v0, qword_1ECAB0D30);
  return sub_1D917742C();
}

uint64_t sub_1D8F766EC()
{
  v0 = sub_1D917744C();
  __swift_allocate_value_buffer(v0, qword_1ECAB0D98);
  __swift_project_value_buffer(v0, qword_1ECAB0D98);
  return sub_1D917742C();
}

uint64_t (*static OS_os_log.bookmarks.modify())()
{
  if (qword_1ECAB3570 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t (*static OS_os_log.carPlay.modify())()
{
  if (qword_1ECAB3578 != -1)
  {
    swift_once();
  }

  v0 = sub_1D917744C();
  __swift_project_value_buffer(v0, qword_1ECAB7920);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t (*static OS_os_log.classKit.modify())()
{
  if (qword_1EDCD06E0 != -1)
  {
    swift_once();
  }

  v0 = sub_1D917744C();
  __swift_project_value_buffer(v0, qword_1EDCD06E8);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t (*static OS_os_log.cloudSync.modify())()
{
  if (qword_1EDCD06A8 != -1)
  {
    swift_once();
  }

  v0 = sub_1D917744C();
  __swift_project_value_buffer(v0, qword_1EDCD06B0);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t (*static OS_os_log.cloudSyncSignpost.modify())()
{
  if (qword_1EDCD0740 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1D8F77140()
{
  sub_1D8CF2AC4();
  result = sub_1D917919C();
  qword_1ECAB7938 = result;
  return result;
}

uint64_t (*static OS_os_log.contentServiceDefault.modify())()
{
  if (qword_1ECAB3588 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t (*static OS_os_log.database.modify())()
{
  if (qword_1EDCD06D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t (*static OS_os_log.downloads.modify())()
{
  if (qword_1EDCD5AB8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t (*static OS_os_log.drm.modify())()
{
  if (qword_1ECAAFBE0 != -1)
  {
    swift_once();
  }

  v0 = sub_1D917744C();
  __swift_project_value_buffer(v0, qword_1ECAAFBE8);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t (*static OS_os_log.episodeStatesSignpost.modify())()
{
  if (qword_1EDCD0728 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t (*static OS_os_log.stateLogger.modify())()
{
  if (qword_1ECAAFC40 != -1)
  {
    swift_once();
  }

  v0 = sub_1D917744C();
  __swift_project_value_buffer(v0, qword_1ECAAFC48);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t (*static OS_os_log.feedUpdate.modify())()
{
  if (qword_1EDCD0768 != -1)
  {
    swift_once();
  }

  v0 = sub_1D917744C();
  __swift_project_value_buffer(v0, qword_1EDCD0770);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t (*static OS_os_log.feedFetch.modify())()
{
  if (qword_1ECAB3590 != -1)
  {
    swift_once();
  }

  v0 = sub_1D917744C();
  __swift_project_value_buffer(v0, qword_1ECAB7940);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1D8F77828()
{
  sub_1D8CF2AC4();
  result = sub_1D917919C();
  qword_1ECAB7958 = result;
  return result;
}

uint64_t (*static OS_os_log.iTunesContentConsolidation.modify())()
{
  if (qword_1ECAB3598 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1D8F77964()
{
  sub_1D8CF2AC4();
  result = sub_1D917919C();
  qword_1ECAB7960 = result;
  return result;
}

uint64_t (*static OS_os_log.iTunesMigration.modify())()
{
  if (qword_1ECAB35A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t (*static OS_os_log.iTunesSync.modify())()
{
  if (qword_1ECAB35A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t (*static OS_os_log.jsSignpost.modify())()
{
  if (qword_1EDCD0750 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1D8F77C40()
{
  v0 = sub_1D917744C();
  __swift_allocate_value_buffer(v0, qword_1ECAB7970);
  __swift_project_value_buffer(v0, qword_1ECAB7970);
  if (qword_1EDCD0750 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = qword_1EDCD0758;
  return sub_1D917745C();
}

uint64_t (*static OS_os_log.js.modify())()
{
  if (qword_1ECAB35B8 != -1)
  {
    swift_once();
  }

  v0 = sub_1D917744C();
  __swift_project_value_buffer(v0, qword_1ECAB7970);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t (*static OS_os_log.launch.modify())()
{
  if (qword_1EDCD0710 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1D8F77E9C()
{
  v0 = sub_1D917744C();
  __swift_allocate_value_buffer(v0, qword_1ECAAFC20);
  __swift_project_value_buffer(v0, qword_1ECAAFC20);
  return sub_1D917742C();
}

uint64_t (*static OS_os_log.librarySplitView.modify())()
{
  if (qword_1ECAAFC18 != -1)
  {
    swift_once();
  }

  v0 = sub_1D917744C();
  __swift_project_value_buffer(v0, qword_1ECAAFC20);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t (*static OS_os_log.mediaLibrary.modify())()
{
  if (qword_1ECAB35C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t (*static OS_os_log.mediaRemote.modify())()
{
  if (qword_1ECAB35C8 != -1)
  {
    swift_once();
  }

  v0 = sub_1D917744C();
  __swift_project_value_buffer(v0, qword_1ECAB7990);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t (*static OS_os_log.metrics.modify())()
{
  if (qword_1EDCD0700 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t (*static OS_os_log.notifications.modify())()
{
  if (qword_1ECAB35D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t (*static OS_os_log.playback.modify())()
{
  if (qword_1ECAB35E0 != -1)
  {
    swift_once();
  }

  v0 = sub_1D917744C();
  __swift_project_value_buffer(v0, qword_1ECAB79B0);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t (*static OS_os_log.purchases.modify())()
{
  if (qword_1EDCD5AA8 != -1)
  {
    swift_once();
  }

  v0 = sub_1D917744C();
  __swift_project_value_buffer(v0, qword_1EDCD0690);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t (*static OS_os_log.search.modify())()
{
  if (qword_1ECAB35F0 != -1)
  {
    swift_once();
  }

  v0 = sub_1D917744C();
  __swift_project_value_buffer(v0, qword_1ECAB79C8);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t (*static OS_os_log.restore.modify())()
{
  if (qword_1EDCD5AC8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t (*static OS_os_log.reviews.modify())()
{
  if (qword_1ECAB3600 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1D8F78878(uint64_t a1, void *a2, uint64_t a3)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  v5 = sub_1D917744C();
  v6 = __swift_project_value_buffer(v5, a3);
  swift_beginAccess();
  v7 = *(v5 - 8);
  (*(v7 + 24))(v6, a1, v5);
  swift_endAccess();
  return (*(v7 + 8))(a1, v5);
}

uint64_t (*static OS_os_log.shelfSystem.modify())()
{
  if (qword_1EDCD5AD8 != -1)
  {
    swift_once();
  }

  v0 = sub_1D917744C();
  __swift_project_value_buffer(v0, qword_1EDCD5AE0);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t (*static OS_os_log.widget.modify())()
{
  if (qword_1EDCD7B10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1D8F78AD8()
{
  sub_1D8CF2AC4();
  result = sub_1D917919C();
  qword_1ECAAFC10 = result;
  return result;
}

void sub_1D8F78B88(void *a1, void *a2, void **a3)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = *a3;
  *a3 = a1;
}

uint64_t (*static OS_os_log.podcastsMediaLibrarySignpost.modify())()
{
  if (qword_1ECAAFC08 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

unint64_t sub_1D8F78D88()
{
  result = qword_1ECAB79E8;
  if (!qword_1ECAB79E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB79E8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PodcastsSystem(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xCB)
  {
    goto LABEL_17;
  }

  if (a2 + 53 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 53) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 53;
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

      return (*a1 | (v4 << 8)) - 53;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 53;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x36;
  v8 = v6 - 54;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PodcastsSystem(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 53 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 53) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xCB)
  {
    v4 = 0;
  }

  if (a2 > 0xCA)
  {
    v5 = ((a2 - 203) >> 8) + 1;
    *result = a2 + 53;
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
    *result = a2 + 53;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t PublisherSignpostIntervalEndType.hashValue.getter()
{
  v1 = *v0;
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](v1);
  return sub_1D9179E1C();
}

uint64_t sub_1D8F78FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v35 = a5;
  v34 = a4;
  v32[1] = a2;
  v32[2] = a3;
  v36 = sub_1D917734C();
  v33 = *(v36 - 8);
  v6 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v32[0] = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v32 - v14;
  swift_getAssociatedConformanceWitness();
  v16 = sub_1D91777CC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = v32 - v20;
  (*(v17 + 16))(v32 - v20, a1, v16, v19);
  if ((*(v9 + 48))(v21, 1, AssociatedTypeWitness) == 1)
  {
    return (*(v17 + 8))(v21, v16);
  }

  (*(v9 + 32))(v15, v21, AssociatedTypeWitness);
  sub_1D9178F6C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1D918A530;
  v37 = swift_getAssociatedTypeWitness();
  swift_getMetatypeMetadata();
  v24 = sub_1D917826C();
  v26 = v25;
  v27 = MEMORY[0x1E69E6158];
  *(v23 + 56) = MEMORY[0x1E69E6158];
  v28 = sub_1D8D34978();
  *(v23 + 64) = v28;
  *(v23 + 32) = v24;
  *(v23 + 40) = v26;
  (*(v9 + 16))(v12, v15, AssociatedTypeWitness);
  v29 = sub_1D917826C();
  *(v23 + 96) = v27;
  *(v23 + 104) = v28;
  *(v23 + 72) = v29;
  *(v23 + 80) = v30;
  v31 = v32[0];
  sub_1D917733C();
  sub_1D91772EC();

  (*(v33 + 8))(v31, v36);
  return (*(v9 + 8))(v15, AssociatedTypeWitness);
}

uint64_t Publisher.endSignpostInterval(endType:log:name:signpostID:)(char *a1, void *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = a5;
  v43 = a3;
  v44 = a4;
  v46 = a2;
  v47 = a8;
  v48 = a7;
  v10 = sub_1D91775FC();
  v41 = *(v10 - 8);
  v42 = v10;
  v11 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v40 = &v38 - v12;
  v13 = sub_1D917734C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = *a1;
  v17 = swift_allocObject();
  v18 = 0;
  *(v17 + 16) = 0;
  v19 = *(v14 + 16);
  if ((v16 & 1) == 0)
  {
    v39 = *(v14 + 16);
    (v19)(&v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a6, v13);
    v20 = (*(v14 + 80) + 57) & ~*(v14 + 80);
    v21 = swift_allocObject();
    v22 = v47;
    *(v21 + 16) = v48;
    *(v21 + 24) = v22;
    v38 = a6;
    v23 = v46;
    v25 = v43;
    v24 = v44;
    *(v21 + 32) = v46;
    *(v21 + 40) = v25;
    *(v21 + 48) = v24;
    *(v21 + 56) = v45;
    (*(v14 + 32))(v21 + v20, &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
    *(v21 + ((v15 + v20 + 7) & 0xFFFFFFFFFFFFFFF8)) = v17;
    v26 = v23;
    a6 = v38;

    v19 = v39;
    v18 = sub_1D8F79D68;
  }

  v39 = v18;
  (v19)(&v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a6, v13);
  v27 = (*(v14 + 80) + 65) & ~*(v14 + 80);
  v28 = swift_allocObject();
  v29 = v47;
  *(v28 + 16) = v48;
  *(v28 + 24) = v29;
  v30 = v46;
  *(v28 + 32) = v17;
  *(v28 + 40) = v30;
  v31 = v44;
  *(v28 + 48) = v43;
  *(v28 + 56) = v31;
  *(v28 + 64) = v45;
  (*(v14 + 32))(v28 + v27, &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
  v32 = v30;

  v34 = v39;
  v33 = v40;
  sub_1D9177B3C();
  v35 = v42;
  swift_getWitnessTable();
  v36 = sub_1D9177B1C();

  sub_1D8D15664(v34);
  (*(v41 + 8))(v33, v35);

  return v36;
}

uint64_t sub_1D8F7974C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v20 = a6;
  v19[3] = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = v19 - v12;
  sub_1D9178F4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1D9189080;
  (*(v10 + 16))(v13, a1, AssociatedTypeWitness);
  v15 = sub_1D917826C();
  v17 = v16;
  *(v14 + 56) = MEMORY[0x1E69E6158];
  *(v14 + 64) = sub_1D8D34978();
  *(v14 + 32) = v15;
  *(v14 + 40) = v17;
  sub_1D91772EC();

  result = swift_beginAccess();
  *(a7 + 16) = 1;
  return result;
}

uint64_t sub_1D8F79924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v30 = a7;
  v29 = a6;
  v28[0] = a4;
  v28[1] = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v28 - v15;
  swift_getAssociatedConformanceWitness();
  v17 = sub_1D91777CC();
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = v28 - v20;
  (*(v22 + 16))(v28 - v20, a1, v19);
  if ((*(v10 + 48))(v21, 1, AssociatedTypeWitness) == 1)
  {
    result = swift_beginAccess();
    if (*(a2 + 16))
    {
      return result;
    }

    sub_1D9178F4C();
    sub_1D91772EC();
  }

  else
  {
    (*(v10 + 32))(v16, v21, AssociatedTypeWitness);
    swift_beginAccess();
    if (*(a2 + 16))
    {
      return (*(v10 + 8))(v16, AssociatedTypeWitness);
    }

    sub_1D9178F4C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1D9189080;
    (*(v10 + 16))(v13, v16, AssociatedTypeWitness);
    v25 = sub_1D917826C();
    v27 = v26;
    *(v24 + 56) = MEMORY[0x1E69E6158];
    *(v24 + 64) = sub_1D8D34978();
    *(v24 + 32) = v25;
    *(v24 + 40) = v27;
    sub_1D91772EC();

    (*(v10 + 8))(v16, AssociatedTypeWitness);
  }

  result = swift_beginAccess();
  *(a2 + 16) = 1;
  return result;
}

uint64_t sub_1D8F79CDC(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(sub_1D917734C() - 8);
  return sub_1D8F79924(a1, *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), v1 + ((*(v5 + 80) + 65) & ~*(v5 + 80)));
}

uint64_t sub_1D8F79D68(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(sub_1D917734C() - 8);
  v6 = (*(v5 + 80) + 57) & ~*(v5 + 80);
  return sub_1D8F7974C(a1, *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), v1 + v6, *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

unint64_t sub_1D8F79E24()
{
  result = qword_1ECAB79F0[0];
  if (!qword_1ECAB79F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECAB79F0);
  }

  return result;
}

uint64_t static MetricsField.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1D9179ACC();
  }
}

uint64_t MetricsField.hashValue.getter()
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  return sub_1D9179E1C();
}

uint64_t sub_1D8F79F48()
{
  v1 = *v0;
  v2 = v0[1];
  return MetricsField.hashValue.getter();
}

uint64_t sub_1D8F79F58()
{
  sub_1D9179DBC();
  MetricsField.hash(into:)(v2, *v0, v0[1]);
  return sub_1D9179E1C();
}

uint64_t MetricsField.debugDescription.getter(uint64_t a1, uint64_t a2)
{
  sub_1D917946C();

  strcpy(v6, "MetricsField<");
  v4 = sub_1D9179FEC();
  MEMORY[0x1DA7298F0](v4);

  MEMORY[0x1DA7298F0](2238526, 0xE300000000000000);
  MEMORY[0x1DA7298F0](a1, a2);
  MEMORY[0x1DA7298F0](10530, 0xE200000000000000);
  return v6[0];
}

uint64_t MetricsField.description.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = nullsub_1(a1, a2, a3, a4);

  return v4;
}

uint64_t sub_1D8F7A0B0(uint64_t a1)
{
  v2 = nullsub_1(*v1, v1[1], *(a1 + 16), *(a1 + 24));

  return v2;
}

uint64_t sub_1D8F7AAB0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t Bool.init(metricsFieldValue:)()
{
  if (swift_dynamicCast())
  {
    return v1;
  }

  else
  {
    return 2;
  }
}

uint64_t Bool.metricsFieldRepresentation()@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = MEMORY[0x1E69E6370];
  *a2 = result;
  return result;
}

uint64_t sub_1D8F7AB68@<X0>(char *a1@<X8>)
{
  result = swift_dynamicCast();
  v3 = v4;
  if (!result)
  {
    v3 = 2;
  }

  *a1 = v3;
  return result;
}

unint64_t Float.init(metricsFieldValue:)(uint64_t *a1)
{
  sub_1D8CFAD1C(a1, v8);
  sub_1D8E93CA4();
  v2 = swift_dynamicCast();
  if (v2)
  {
    [v7 floatValue];
    v4 = v3;

    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v5 = v4;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v5 = 0;
  }

  return v5 | ((v2 ^ 1u) << 32);
}

unint64_t Float.metricsFieldRepresentation()@<X0>(void *a1@<X8>, float a2@<S0>)
{
  v4 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  *&v5 = a2;
  v6 = [v4 initWithFloat_];
  result = sub_1D8E93CA4();
  a1[3] = result;
  *a1 = v6;
  return result;
}

uint64_t sub_1D8F7ACD8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D8CFAD1C(a1, v9);
  sub_1D8E93CA4();
  v4 = swift_dynamicCast();
  if (v4)
  {
    [v8 floatValue];
    v6 = v5;

    result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v6 = 0;
  }

  *a2 = v6;
  *(a2 + 4) = v4 ^ 1;
  return result;
}

unint64_t sub_1D8F7AD8C@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  LODWORD(v5) = v3;
  v6 = [v4 initWithFloat_];
  result = sub_1D8E93CA4();
  a1[3] = result;
  *a1 = v6;
  return result;
}

uint64_t Double.init(metricsFieldValue:)(uint64_t *a1)
{
  sub_1D8CFAD1C(a1, v6);
  sub_1D8E93CA4();
  if (swift_dynamicCast())
  {
    [v5 doubleValue];
    v3 = v2;

    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return v3;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return 0;
  }
}

unint64_t Double.metricsFieldRepresentation()@<X0>(void *a1@<X8>, double a2@<D0>)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  result = sub_1D8E93CA4();
  a1[3] = result;
  *a1 = v3;
  return result;
}

uint64_t sub_1D8F7AEF0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D8CFAD1C(a1, v9);
  sub_1D8E93CA4();
  v4 = swift_dynamicCast();
  if (v4)
  {
    [v8 doubleValue];
    v6 = v5;

    result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v6 = 0;
  }

  *a2 = v6;
  *(a2 + 8) = v4 ^ 1;
  return result;
}

unint64_t sub_1D8F7AFA4@<X0>(void *a1@<X8>)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  result = sub_1D8E93CA4();
  a1[3] = result;
  *a1 = v3;
  return result;
}

uint64_t Int8.init(metricsFieldValue:)(uint64_t *a1)
{
  sub_1D8CFAD1C(a1, v6);
  sub_1D8E93CA4();
  v2 = swift_dynamicCast();
  if (v2)
  {
    v3 = [v5 charValue];

    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v3 = 0;
  }

  return v3 | ((v2 ^ 1u) << 8);
}

unint64_t Int8.metricsFieldRepresentation()@<X0>(char a1@<W0>, void *a2@<X8>)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithChar_];
  result = sub_1D8E93CA4();
  a2[3] = result;
  *a2 = v3;
  return result;
}

uint64_t sub_1D8F7B12C@<X0>(uint64_t *a1@<X0>, unsigned __int8 *a2@<X8>)
{
  sub_1D8CFAD1C(a1, v8);
  sub_1D8E93CA4();
  v4 = swift_dynamicCast();
  if (v4)
  {
    v5 = [v7 charValue];

    result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v5 = 0;
  }

  *a2 = v5;
  a2[1] = v4 ^ 1;
  return result;
}

unint64_t sub_1D8F7B1E0@<X0>(void *a1@<X8>)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithChar_];
  result = sub_1D8E93CA4();
  a1[3] = result;
  *a1 = v3;
  return result;
}

uint64_t Int16.init(metricsFieldValue:)(uint64_t *a1)
{
  sub_1D8CFAD1C(a1, v7);
  sub_1D8E93CA4();
  v2 = swift_dynamicCast();
  if (v2)
  {
    v3 = [v6 shortValue];

    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v4 = v3;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v4 = 0;
  }

  return v4 | ((v2 ^ 1u) << 16);
}

unint64_t Int16.metricsFieldRepresentation()@<X0>(__int16 a1@<W0>, void *a2@<X8>)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
  result = sub_1D8E93CA4();
  a2[3] = result;
  *a2 = v3;
  return result;
}

uint64_t sub_1D8F7B330@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D8CFAD1C(a1, v8);
  sub_1D8E93CA4();
  v4 = swift_dynamicCast();
  if (v4)
  {
    v5 = [v7 shortValue];

    result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v5 = 0;
  }

  *a2 = v5;
  *(a2 + 2) = v4 ^ 1;
  return result;
}

unint64_t sub_1D8F7B3E4@<X0>(void *a1@<X8>)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
  result = sub_1D8E93CA4();
  a1[3] = result;
  *a1 = v3;
  return result;
}

uint64_t UInt8.init(metricsFieldValue:)(uint64_t *a1)
{
  sub_1D8CFAD1C(a1, v6);
  sub_1D8E93CA4();
  v2 = swift_dynamicCast();
  if (v2)
  {
    v3 = [v5 unsignedCharValue];

    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v3 = 0;
  }

  return v3 | ((v2 ^ 1) << 8);
}

unint64_t UInt8.metricsFieldRepresentation()@<X0>(unsigned __int8 a1@<W0>, void *a2@<X8>)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedChar_];
  result = sub_1D8E93CA4();
  a2[3] = result;
  *a2 = v3;
  return result;
}

uint64_t sub_1D8F7B5B4@<X0>(uint64_t *a1@<X0>, unsigned __int8 *a2@<X8>)
{
  sub_1D8CFAD1C(a1, v8);
  sub_1D8E93CA4();
  v4 = swift_dynamicCast();
  if (v4)
  {
    v5 = [v7 unsignedCharValue];

    result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v5 = 0;
  }

  *a2 = v5;
  a2[1] = v4 ^ 1;
  return result;
}

unint64_t sub_1D8F7B668@<X0>(void *a1@<X8>)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedChar_];
  result = sub_1D8E93CA4();
  a1[3] = result;
  *a1 = v3;
  return result;
}

uint64_t UInt16.init(metricsFieldValue:)(uint64_t *a1)
{
  sub_1D8CFAD1C(a1, v6);
  sub_1D8E93CA4();
  v2 = swift_dynamicCast();
  if (v2)
  {
    v3 = [v5 unsignedShortValue];

    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v3 = 0;
  }

  return v3 | ((v2 ^ 1) << 16);
}

unint64_t UInt16.metricsFieldRepresentation()@<X0>(unsigned __int16 a1@<W0>, void *a2@<X8>)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedShort_];
  result = sub_1D8E93CA4();
  a2[3] = result;
  *a2 = v3;
  return result;
}

uint64_t sub_1D8F7B7B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D8CFAD1C(a1, v8);
  sub_1D8E93CA4();
  v4 = swift_dynamicCast();
  if (v4)
  {
    v5 = [v7 unsignedShortValue];

    result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v5 = 0;
  }

  *a2 = v5;
  *(a2 + 2) = v4 ^ 1;
  return result;
}

unint64_t sub_1D8F7B868@<X0>(void *a1@<X8>)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedShort_];
  result = sub_1D8E93CA4();
  a1[3] = result;
  *a1 = v3;
  return result;
}

unint64_t sub_1D8F7B8C8(uint64_t *a1, SEL *a2)
{
  sub_1D8CFAD1C(a1, v9);
  sub_1D8E93CA4();
  v4 = swift_dynamicCast();
  if (v4)
  {
    v5 = [v8 *a2];

    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v6 = v5;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v6 = 0;
  }

  return v6 | ((v4 ^ 1u) << 32);
}

unint64_t sub_1D8F7B984@<X0>(uint64_t a1@<X0>, SEL *a2@<X1>, void *a3@<X8>)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) *a2];
  result = sub_1D8E93CA4();
  a3[3] = result;
  *a3 = v4;
  return result;
}

uint64_t sub_1D8F7B9EC@<X0>(uint64_t *a1@<X0>, SEL *a2@<X3>, uint64_t a3@<X8>)
{
  sub_1D8CFAD1C(a1, v10);
  sub_1D8E93CA4();
  v6 = swift_dynamicCast();
  if (v6)
  {
    v7 = [v9 *a2];

    result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v7 = 0;
  }

  *a3 = v7;
  *(a3 + 4) = v6 ^ 1;
  return result;
}

unint64_t sub_1D8F7BAAC@<X0>(SEL *a1@<X2>, void *a2@<X8>)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) *a1];
  result = sub_1D8E93CA4();
  a2[3] = result;
  *a2 = v4;
  return result;
}

id sub_1D8F7BB14(uint64_t *a1, SEL *a2)
{
  sub_1D8CFAD1C(a1, v7);
  sub_1D8E93CA4();
  if (swift_dynamicCast())
  {
    v4 = [v6 *a2];

    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return v4;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return 0;
  }
}

uint64_t sub_1D8F7BBD0@<X0>(uint64_t *a1@<X0>, SEL *a2@<X3>, uint64_t a3@<X8>)
{
  sub_1D8CFAD1C(a1, v10);
  sub_1D8E93CA4();
  v6 = swift_dynamicCast();
  if (v6)
  {
    v7 = [v9 *a2];

    result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v7 = 0;
  }

  *a3 = v7;
  *(a3 + 8) = v6 ^ 1;
  return result;
}

uint64_t String.init(metricsFieldValue:)()
{
  if (swift_dynamicCast())
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t String.metricsFieldRepresentation()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  a3[3] = MEMORY[0x1E69E6158];
  *a3 = a1;
  a3[1] = a2;
}

uint64_t sub_1D8F7BCF8@<X0>(void *a1@<X8>)
{
  result = swift_dynamicCast();
  v3 = v5;
  v4 = v6;
  if (!result)
  {
    v3 = 0;
    v4 = 0;
  }

  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D8F7BD54@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  v3 = v2[1];
  a2[3] = a1;
  *a2 = v4;
  a2[1] = v3;
}

uint64_t RawRepresentable<>.init(metricsFieldValue:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v38 = a5;
  v9 = sub_1D91791BC();
  v33 = *(v9 - 8);
  v34 = v9;
  v10 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v37 = &v32 - v11;
  v36 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v35 = sub_1D91791BC();
  v13 = *(v35 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v16 = &v32 - v15;
  v17 = *(AssociatedTypeWitness - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v32 - v23;
  sub_1D8CFAD1C(a1, v39);
  (*(a4 + 8))(v39, AssociatedTypeWitness, a4);
  if ((*(v17 + 48))(v16, 1, AssociatedTypeWitness) == 1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    (*(v13 + 8))(v16, v35);
    v25 = *(a2 - 8);
  }

  else
  {
    (*(v17 + 32))(v24, v16, AssociatedTypeWitness);
    (*(v17 + 16))(v21, v24, AssociatedTypeWitness);
    v26 = v37;
    sub_1D917853C();
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    (*(v17 + 8))(v24, AssociatedTypeWitness);
    v25 = *(a2 - 8);
    v27 = v25;
    if (!(*(v25 + 48))(v26, 1, a2))
    {
      v31 = v38;
      (*(v25 + 32))(v38, v26, a2);
      v29 = v31;
      v28 = 0;
      return (*(v27 + 56))(v29, v28, 1, a2);
    }

    (*(v33 + 8))(v26, v34);
  }

  v27 = v25;
  v28 = 1;
  v29 = v38;
  return (*(v27 + 56))(v29, v28, 1, a2);
}

uint64_t RawRepresentable<>.metricsFieldRepresentation()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v11 - v8;
  sub_1D917852C();
  (*(a4 + 16))(AssociatedTypeWitness, a4);
  return (*(v6 + 8))(v9, AssociatedTypeWitness);
}

uint64_t Array<A>.init(metricsFieldValue:)(uint64_t *a1)
{
  sub_1D8CFAD1C(a1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7A78, &unk_1D9199550);
  v2 = swift_dynamicCast();
  if (v2)
  {
    v6[0] = v5;
    MEMORY[0x1EEE9AC00](v2);
    sub_1D8F7C400();
    v3 = sub_1D917843C();
    __swift_destroy_boxed_opaque_existential_1Tm(a1);

    return v3;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return 0;
  }
}

uint64_t sub_1D8F7C38C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1D8CFAD1C(a1, v5);
  return (*(v3 + 8))(v5, v2, v3);
}

unint64_t sub_1D8F7C400()
{
  result = qword_1ECAB7A80;
  if (!qword_1ECAB7A80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB7A78, &unk_1D9199550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7A80);
  }

  return result;
}

uint64_t Array<A>.metricsFieldRepresentation()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v10[5] = a1;
  v10[2] = a2;
  v10[3] = a3;
  v5 = sub_1D91786FC();
  WitnessTable = swift_getWitnessTable();
  v8 = sub_1D8D175AC(sub_1D8F7C52C, v10, v5, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v7);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7A78, &unk_1D9199550);
  a4[3] = result;
  *a4 = v8;
  return result;
}

uint64_t sub_1D8F7C570@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = *(a3 - 8);
  v6 = *(a2 + 16);
  result = Array<A>.init(metricsFieldValue:)(a1);
  *a4 = result;
  return result;
}

uint64_t URL.init(metricsFieldValue:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13[-v6];
  sub_1D8CFAD1C(a1, v13);
  if (swift_dynamicCast())
  {
    sub_1D9176BFC();

    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v8 = sub_1D9176C2C();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v7, 1, v8))
    {
      (*(v9 + 32))(a2, v7, v8);
      return (*(v9 + 56))(a2, 0, 1, v8);
    }

    sub_1D8E677CC(v7);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v10 = sub_1D9176C2C();
  return (*(*(v10 - 8) + 56))(a2, 1, 1, v10);
}

uint64_t URL.metricsFieldRepresentation()@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D9176ACC();
  a1[3] = MEMORY[0x1E69E6158];
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D8F7C7B0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D9176ACC();
  a1[3] = MEMORY[0x1E69E6158];
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D8F7C8D0@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  sub_1D8CFAD1C(a1, v6);
  if (swift_dynamicCast())
  {
    v4 = _s18PodcastsFoundation29MetricsEngagementThresholdMetO8rawValueACSgSS_tcfC_0();
    result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
    if (v4 != 4)
    {
      goto LABEL_6;
    }
  }

  else
  {
    result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v4 = 4;
LABEL_6:
  *a2 = v4;
  return result;
}

void sub_1D8F7C968(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 7562617;
  v4 = 0xE800000000000000;
  v5 = 0x6465636E79736E75;
  if (*v1 != 2)
  {
    v5 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 28526;
    v2 = 0xE200000000000000;
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

  a1[3] = MEMORY[0x1E69E6158];
  *a1 = v6;
  a1[1] = v2;
}

id sub_1D8F7C9E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1D8F7CAD0(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_1D8F7CA10@<X0>(SEL *a1@<X2>, void *a2@<X8>)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) *a1];
  result = sub_1D8E93CA4();
  a2[3] = result;
  *a2 = v4;
  return result;
}

uint64_t sub_1D8F7CA6C@<X0>(void *a1@<X8>)
{
  result = swift_dynamicCast();
  if (result)
  {
    v3 = v5;
    v4 = v6;
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  *a1 = v3;
  a1[1] = v4;
  return result;
}

id sub_1D8F7CAD0(uint64_t *a1)
{
  sub_1D8CFAD1C(a1, v6);
  sub_1D8CFAD1C(v6, v5);
  sub_1D8E93CA4();
  if (swift_dynamicCast())
  {
    v2 = [v4 unsignedIntegerValue];

    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    return v2;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    return 0;
  }
}

void sub_1D8F7CB98(uint64_t a1, void *a2)
{
  v3 = v2;
  if (a1)
  {
    v5 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_1D8F4F334(a1, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v15;
  }

  else
  {
    v7 = *v2;
    v8 = sub_1D8F06994(a2);
    if (v9)
    {
      v10 = v8;
      v11 = *v3;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v3;
      v16 = *v3;
      if (!v12)
      {
        sub_1D8F82428();
        v13 = v16;
      }

      sub_1D8F7F48C(v10, v13);
      *v3 = v13;
    }

    else
    {
    }
  }
}

uint64_t sub_1D8F7CC9C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5908, &unk_1D9190D80);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v26 - v8;
  v10 = sub_1D917653C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10, v13) == 1)
  {
    sub_1D8D08A50(a1, &qword_1ECAB5908, &unk_1D9190D80);
    v16 = *v3;
    v17 = sub_1D8D490F4(a2);
    if (v18)
    {
      v19 = v17;
      v20 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = *v3;
      v27 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1D8F82724();
        v22 = v27;
      }

      (*(v11 + 32))(v9, *(v22 + 56) + *(v11 + 72) * v19, v10);
      sub_1D8F80DD4(v19, v22, MEMORY[0x1E6967EC8]);
      *v3 = v22;
      (*(v11 + 56))(v9, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
    }

    return sub_1D8D08A50(v9, &qword_1ECAB5908, &unk_1D9190D80);
  }

  else
  {
    (*(v11 + 32))(v15, a1, v10);
    v23 = *v3;
    v24 = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v3;
    result = sub_1D8F4F634(v15, a2, v24);
    *v3 = v27;
  }

  return result;
}

uint64_t sub_1D8F7CF00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_1D8F50130(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  else
  {
    v11 = *v3;
    v12 = sub_1D8D33C70(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v20 = *v4;
      if (!v15)
      {
        sub_1D8F84E04(&qword_1ECAB42F0, &unk_1D9188E50);
        v16 = v20;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      v18 = *(*(v16 + 56) + 8 * v12);

      result = sub_1D8DA2AFC(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_1D8F7D008(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    result = sub_1D8D888D4(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v16;
  }

  else
  {
    v9 = *v2;
    result = sub_1D8D490F4(a2);
    if (v10)
    {
      v11 = result;
      v12 = *v3;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v17 = *v3;
      if (!v13)
      {
        sub_1D8F838F8(&qword_1ECAB7AA8, &qword_1D9199710);
        v14 = v17;
      }

      v15 = *(*(v14 + 56) + 8 * v11);

      result = sub_1D8F80C64(v11, v14);
      *v3 = v14;
    }
  }

  return result;
}

uint64_t sub_1D8F7D0D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB76D0, &unk_1D9197ED8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v26 - v8;
  v10 = type metadata accessor for StoreFeedUpdater.Update(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10, v13) == 1)
  {
    sub_1D8D08A50(a1, &qword_1ECAB76D0, &unk_1D9197ED8);
    v16 = *v3;
    v17 = sub_1D8D490F4(a2);
    if (v18)
    {
      v19 = v17;
      v20 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = *v3;
      v27 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1D8F83AD0(type metadata accessor for StoreFeedUpdater.Update, &qword_1ECAB7AB0, &unk_1D91A6B80, type metadata accessor for StoreFeedUpdater.Update);
        v22 = v27;
      }

      sub_1D8F86EDC(*(v22 + 56) + *(v11 + 72) * v19, v9, type metadata accessor for StoreFeedUpdater.Update);
      sub_1D8F80DD4(v19, v22, type metadata accessor for StoreFeedUpdater.Update);
      *v3 = v22;
      (*(v11 + 56))(v9, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
    }

    return sub_1D8D08A50(v9, &qword_1ECAB76D0, &unk_1D9197ED8);
  }

  else
  {
    sub_1D8F86EDC(a1, v15, type metadata accessor for StoreFeedUpdater.Update);
    v23 = *v3;
    v24 = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v3;
    result = sub_1D8F50314(v15, a2, v24);
    *v3 = v27;
  }

  return result;
}

uint64_t sub_1D8F7D378(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB76D8, &qword_1D9197EE8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v26 - v8;
  v10 = type metadata accessor for StoreFeedUpdater.Retry(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10, v13) == 1)
  {
    sub_1D8D08A50(a1, &qword_1ECAB76D8, &qword_1D9197EE8);
    v16 = *v3;
    v17 = sub_1D8D490F4(a2);
    if (v18)
    {
      v19 = v17;
      v20 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = *v3;
      v27 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1D8F83AD0(type metadata accessor for StoreFeedUpdater.Retry, &qword_1ECAB7AC0, &unk_1D91A6B90, type metadata accessor for StoreFeedUpdater.Retry);
        v22 = v27;
      }

      sub_1D8F86EDC(*(v22 + 56) + *(v11 + 72) * v19, v9, type metadata accessor for StoreFeedUpdater.Retry);
      sub_1D8F80DD4(v19, v22, type metadata accessor for StoreFeedUpdater.Retry);
      *v3 = v22;
      (*(v11 + 56))(v9, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
    }

    return sub_1D8D08A50(v9, &qword_1ECAB76D8, &qword_1D9197EE8);
  }

  else
  {
    sub_1D8F86EDC(a1, v15, type metadata accessor for StoreFeedUpdater.Retry);
    v23 = *v3;
    v24 = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v3;
    result = sub_1D8F50468(v15, a2, v24);
    *v3 = v27;
  }

  return result;
}

unint64_t sub_1D8F7D618(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    result = sub_1D8F506E0(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v16;
  }

  else
  {
    v9 = *v2;
    result = sub_1D8D94734(a2);
    if (v10)
    {
      v11 = result;
      v12 = *v3;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v17 = *v3;
      if (!v13)
      {
        sub_1D8F83E80(&qword_1ECAB42D0, &unk_1D9188E30);
        v14 = v17;
      }

      v15 = *(*(v14 + 56) + 8 * v11);

      result = sub_1D8F80F88(v11, v14);
      *v3 = v14;
    }
  }

  return result;
}

uint64_t sub_1D8F7D6E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1D8D65618(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_1D8F50804(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    sub_1D8D08A50(a1, &qword_1ECAB57F0, &unk_1D9190AA0);
    sub_1D8F7ED84(sub_1D8F86E60, v10);

    return sub_1D8D08A50(v10, &qword_1ECAB57F0, &unk_1D9190AA0);
  }

  return result;
}

uint64_t sub_1D8F7D7CC(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v26 - v8;
  v10 = sub_1D9176E3C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10, v13) == 1)
  {
    sub_1D8D08A50(a1, &qword_1ECAB75C0, &unk_1D9188A50);
    v16 = *v3;
    v17 = sub_1D8F06EDC(a2);
    if (v18)
    {
      v19 = v17;
      v20 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = *v3;
      v27 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1D8F84638();
        v22 = v27;
      }

      (*(v11 + 32))(v9, *(v22 + 56) + *(v11 + 72) * v19, v10);
      sub_1D8F813D8(v19, v22);
      *v3 = v22;
      (*(v11 + 56))(v9, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
    }

    return sub_1D8D08A50(v9, &qword_1ECAB75C0, &unk_1D9188A50);
  }

  else
  {
    (*(v11 + 32))(v15, a1, v10);
    v23 = *v3;
    v24 = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v3;
    result = sub_1D8F50B34(v15, a2, v24);
    *v3 = v27;
  }

  return result;
}

uint64_t sub_1D8F7DA1C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7AE0, &qword_1D91B7E20);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v26 - v8;
  v10 = type metadata accessor for EpisodePlayState();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10, v13) == 1)
  {
    sub_1D8D08A50(a1, &qword_1ECAB7AE0, &qword_1D91B7E20);
    v16 = *v3;
    v17 = sub_1D8D1AC44(a2);
    if (v18)
    {
      v19 = v17;
      v20 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = *v3;
      v27 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1D8F86124();
        v22 = v27;
      }

      sub_1D8F86EDC(*(v22 + 56) + *(v11 + 72) * v19, v9, type metadata accessor for EpisodePlayState);
      sub_1D8F81AAC(v19, v22);
      *v3 = v22;
      (*(v11 + 56))(v9, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
    }

    return sub_1D8D08A50(v9, &qword_1ECAB7AE0, &qword_1D91B7E20);
  }

  else
  {
    sub_1D8F86EDC(a1, v15, type metadata accessor for EpisodePlayState);
    v23 = *v3;
    v24 = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v3;
    result = sub_1D8F5162C(v15, a2, v24);
    *v3 = v27;
  }

  return result;
}

uint64_t Dictionary<>.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if (*(a3 + 16) && (v10 = sub_1D8F86E60(a1, a2), (v11 & 1) != 0))
  {
    sub_1D8CFAD1C(*(a3 + 56) + 32 * v10, v14);
    sub_1D8D65618(v14, v15);
    sub_1D8CFAD1C(v15, v14);
    (*(a5 + 8))(v14, a4, a5);
    return __swift_destroy_boxed_opaque_existential_1Tm(v15);
  }

  else
  {
    v13 = *(*(a4 - 8) + 56);

    return v13(a6, 1, 1, a4);
  }
}

uint64_t sub_1D8F7DD6C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 16);
  v6 = *(a3 + a4 - 8);
  v7 = *a3;
  v8 = a3[1];

  j___sSD18PodcastsFoundationSSRszypRs_rlE8addValue_8forFieldyqd__Sg_AA07MetricsF0Vyqd__GtAA0gF13RepresentableRd__lF(a1, v7, v8, v5, v6);
}

uint64_t Dictionary<>.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  j___sSD18PodcastsFoundationSSRszypRs_rlE8addValue_8forFieldyqd__Sg_AA07MetricsF0Vyqd__GtAA0gF13RepresentableRd__lF(a1, a2, a3, a4, a5);

  v6 = sub_1D91791BC();
  v7 = *(*(v6 - 8) + 8);

  return v7(a1, v6);
}

uint64_t Dictionary<>.addValue<A>(_:forField:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a2;
  v9 = sub_1D91791BC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v22 - v12;
  v14 = *(a4 - 8);
  v15 = *(v14 + 64);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, a1, v9, v17);
  if ((*(v14 + 48))(v13, 1, a4) == 1)
  {
    (*(v10 + 8))(v13, v9);
    return Dictionary<>.removeValue<A>(forField:)(v23, a3);
  }

  else
  {
    (*(v14 + 32))(v19, v13, a4);
    v21 = *(a5 + 16);

    v21(v24, a4, a5);
    sub_1D8F7D6E8(v24, v23, a3);
    return (*(v14 + 8))(v19, a4);
  }
}

{
  v9 = *(a5 + 16);

  v9(v11, a4, a5);
  return sub_1D8F7D6E8(v11, a2, a3);
}

void (*Dictionary<>.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t **a1, char a2)
{
  v11 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(0x48uLL);
  }

  v13 = v12;
  *a1 = v12;
  v12[3] = a5;
  v12[4] = v5;
  v12[1] = a3;
  v12[2] = a4;
  *v12 = a2;
  v14 = sub_1D91791BC();
  v13[5] = v14;
  v15 = *(v14 - 8);
  v13[6] = v15;
  v16 = *(v15 + 64);
  if (v11)
  {
    v13[7] = swift_coroFrameAlloc();
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v13[7] = malloc(*(v15 + 64));
    v17 = malloc(v16);
  }

  v13[8] = v17;
  Dictionary<>.subscript.getter(a2, a3, *v5, a4, a5, v17);
  return sub_1D8F7E1D4;
}

void sub_1D8F7E1D4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[7];
  v4 = (*a1)[8];
  v5 = (*a1)[5];
  v6 = (*a1)[6];
  v8 = (*a1)[3];
  v7 = (*a1)[4];
  v9 = (*a1)[1];
  v10 = (*a1)[2];
  v11 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[7], v4, v5);

    Dictionary<>.addValue<A>(_:forField:)(v3, v11, v9, v10, v8);

    v12 = *(v6 + 8);
    v12(v3, v5);
    v12(v4, v5);
  }

  else
  {
    v13 = (*a1)[1];

    Dictionary<>.addValue<A>(_:forField:)(v4, v11, v9, v10, v8);

    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t Dictionary<>.addingValue<A>(_:forField:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  v10 = *(a6 + 16);

  v10(v13, a5, a6);
  sub_1D8F7D6E8(v13, a2, a3);
  return a4;
}

{
  v24 = a6;
  v11 = sub_1D91791BC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v24 - v14;
  v16 = *(a5 - 8);
  v17 = *(v16 + 64);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v24 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, a1, v11, v19);
  if ((*(v16 + 48))(v15, 1, a5) == 1)
  {
    (*(v12 + 8))(v15, v11);
    v25 = a4;

    Dictionary<>.removeValue<A>(forField:)(a2, a3);
    return v25;
  }

  else
  {
    (*(v16 + 32))(v21, v15, a5);
    v23 = Dictionary<>.addingValue<A>(_:forField:)(v21, a2, a3, a4, a5, v24);
    (*(v16 + 8))(v21, a5);
    return v23;
  }
}

uint64_t Dictionary<>.removeValue<A>(forField:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_1D8F86E60(a1, a2);
  if (v6)
  {
    v7 = v5;
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v13 = *v3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1D8F84138();
      v10 = v13;
    }

    v11 = *(*(v10 + 48) + 16 * v7 + 8);

    sub_1D8D65618((*(v10 + 56) + 32 * v7), v14);
    sub_1D8F81228(v7, v10);
    *v3 = v10;
  }

  else
  {
    memset(v14, 0, sizeof(v14));
  }

  return sub_1D8D08A50(v14, &qword_1ECAB57F0, &unk_1D9190AA0);
}

uint64_t Dictionary<>.removingValue<A>(forField:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  Dictionary<>.removeValue<A>(forField:)(a1, a2);
  return a3;
}

uint64_t Dictionary<>.init(metricsFieldValue:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4608, &qword_1D91AC8D0);
  if (swift_dynamicCast())
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t Dictionary<>.metricsFieldRepresentation()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4608, &qword_1D91AC8D0);
  *a2 = a1;
}

uint64_t sub_1D8F7E81C@<X0>(void *a1@<X8>)
{
  result = swift_dynamicCast();
  v3 = v4;
  if (!result)
  {
    v3 = 0;
  }

  *a1 = v3;
  return result;
}

uint64_t sub_1D8F7E874@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *v2;
  a2[3] = a1;
  *a2 = v3;
}

uint64_t sub_1D8F7E888(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_1D8F0671C(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v18 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1D8F81DEC();
    v9 = v18;
  }

  v10 = *(v9 + 48) + 48 * v6;
  v11 = *(v10 + 8);
  v12 = *(v10 + 16);
  v13 = *(v10 + 24);
  v14 = *(v10 + 32);
  v15 = *(v10 + 40);

  sub_1D8CFEACC(v11, v12, v13, v14, v15);
  v16 = *(*(v9 + 56) + 8 * v6);
  sub_1D8F7F064(v6, v9);
  *v2 = v9;
  return v16;
}

uint64_t sub_1D8F7E958(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = *v1;
    v14 = sub_1D8F068B0(a1);
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
        sub_1D8F7F48C(v3, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_1D8F82144();
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
  v6 = sub_1D91796BC();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = sub_1D917935C();
  v8 = sub_1D8F7EE2C(v4, v7);

  v9 = sub_1D8F068B0(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_1D8F7F48C(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

uint64_t sub_1D8F7EAA4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_1D8D33C70(a1, a2);
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
    sub_1D8F8258C();
    v10 = v14;
  }

  v11 = *(*(v10 + 48) + 16 * v7 + 8);

  v12 = *(*(v10 + 56) + 8 * v7);
  sub_1D8DA2AFC(v7, v10);
  *v3 = v10;
  return v12;
}

uint64_t sub_1D8F7EB64(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = *v4;
  v9 = sub_1D8D33C70(a1, a2);
  if ((v10 & 1) == 0)
  {
    return 0;
  }

  v11 = v9;
  v12 = *v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v7;
  v18 = *v7;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1D8F85824(a3, a4);
    v14 = v18;
  }

  v15 = *(*(v14 + 48) + 16 * v11 + 8);

  v16 = *(*(v14 + 56) + 8 * v11);
  sub_1D8DA2AFC(v11, v14);
  *v7 = v14;
  return v16;
}

uint64_t sub_1D8F7EC14(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_1D8D490F4(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v13 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1D8F838F8(&qword_1ECAB42F8, &unk_1D91A6C90);
    v9 = v13;
  }

  v10 = v6;
  v11 = *(*(v9 + 56) + 8 * v6);
  sub_1D8F80C64(v10, v9);
  *v2 = v9;
  return v11;
}

uint64_t sub_1D8F7ECEC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_1D8D490F4(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v13 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1D8F848B4(&qword_1ECAB7AB8, &qword_1D9199718);
    v9 = v13;
  }

  v10 = v6;
  v11 = *(*(v9 + 56) + 8 * v6);
  sub_1D8F80C64(v10, v9);
  *v2 = v9;
  return v11;
}

double sub_1D8F7ED84@<D0>(uint64_t (*a1)(void)@<X2>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = a1();
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v14 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D8F84138();
      v11 = v14;
    }

    v12 = *(*(v11 + 48) + 16 * v8 + 8);

    sub_1D8D65618((*(v11 + 56) + 32 * v8), a2);
    sub_1D8F81228(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1D8F7EE2C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB43B8, &qword_1D9188F20);
    v2 = sub_1D917979C();
    v20 = v2;
    sub_1D917969C();
    v3 = sub_1D91796CC();
    if (v3)
    {
      v4 = v3;
      sub_1D8F86F44();
      v5 = v4;
      do
      {
        v18 = v5;
        swift_dynamicCast();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB49C8, &qword_1D918B148);
        swift_dynamicCast();
        v13 = *(v2 + 16);
        if (*(v2 + 24) <= v13)
        {
          sub_1D9003D04(v13 + 1, 1);
        }

        v2 = v20;
        v6 = *(v20 + 40);
        result = sub_1D917913C();
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
        v5 = sub_1D91796CC();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

uint64_t sub_1D8F7F064(uint64_t result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v33 = a2 + 64;
    v31 = (sub_1D91792EC() + 1) & ~v5;
    v32 = v7;
    do
    {
      v8 = 48 * v6;
      v9 = *(v2 + 40);
      v10 = *(v2 + 48) + 48 * v6;
      v11 = *v10;
      v12 = *(v10 + 8);
      v13 = *(v10 + 16);
      v14 = *(v10 + 24);
      v15 = *(v10 + 32);
      v16 = *(v10 + 40);
      sub_1D9179DBC();
      sub_1D9179DDC();
      if (v11)
      {
        v17 = v11;
        sub_1D8D092C0(v12, v13, v14, v15, v16);
        v11 = v17;
        sub_1D917915C();
      }

      else
      {
        sub_1D8D092C0(v12, v13, v14, v15, v16);
      }

      MediaIdentifier.hash(into:)(v35);
      v18 = sub_1D9179E1C();

      result = sub_1D8CFEACC(v12, v13, v14, v15, v16);
      v19 = v18 & v32;
      if (v3 >= v31)
      {
        v4 = v33;
        v2 = a2;
        if (v19 < v31)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v4 = v33;
        v2 = a2;
        if (v19 >= v31)
        {
          goto LABEL_13;
        }
      }

      if (v3 >= v19)
      {
LABEL_13:
        v20 = *(v2 + 48);
        v21 = (v20 + 48 * v3);
        v22 = (v20 + v8);
        if (48 * v3 < v8 || v21 >= v22 + 3 || v3 != v6)
        {
          v23 = *v22;
          v24 = v22[2];
          v21[1] = v22[1];
          v21[2] = v24;
          *v21 = v23;
        }

        v25 = *(v2 + 56);
        v26 = (v25 + 8 * v3);
        v27 = (v25 + 8 * v6);
        if (v3 != v6 || v26 >= v27 + 1)
        {
          *v26 = *v27;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v32;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v28 = *(v2 + 16);
  v29 = __OFSUB__(v28, 1);
  v30 = v28 - 1;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v30;
    ++*(v2 + 36);
  }

  return result;
}

char *sub_1D8F7F2D8(char *result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D91792EC() + 1) & ~v5;
    do
    {
      sub_1D8D41388(*(a2 + 48) + 264 * v6, v20);
      v9 = *(a2 + 40);
      sub_1D9179DBC();
      ArtworkRequest.hash(into:)();
      v10 = sub_1D9179E1C();
      result = sub_1D8D58578(v20);
      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        result = (v12 + 264 * v3);
        v13 = (v12 + 264 * v6);
        if (v3 != v6 || result >= v13 + 264)
        {
          result = memmove(result, v13, 0x108uLL);
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1D8F7F48C(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D91792EC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = sub_1D917913C();

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

void sub_1D8F7F630(int64_t a1, uint64_t a2)
{
  v41 = sub_1D917653C();
  v4 = *(v41 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v42 = v6;
    v12 = sub_1D91792EC();
    v13 = v41;
    v6 = v42;
    v14 = v11;
    v39 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v37 = a2 + 64;
    v38 = v16;
    v17 = *(v15 + 56);
    v36 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v40;
      v21 = v14;
      v22 = v15;
      v23 = v6;
      v38(v40, *(v6 + 48) + v17 * v10, v13);
      v24 = *(v23 + 40);
      sub_1D8D111AC(&qword_1ECAB2CC8, MEMORY[0x1E6967EC8]);
      v25 = sub_1D917813C();
      (*v36)(v20, v13);
      v14 = v21;
      v26 = v25 & v21;
      if (a1 >= v39)
      {
        if (v26 >= v39 && a1 >= v26)
        {
LABEL_15:
          v6 = v42;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, *(v42 + 48) + v18 * a1 >= (*(v42 + 48) + v19 + v18)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v6 = v42;
            v17 = v18;
            v14 = v21;
            v8 = v37;
          }

          else
          {
            v8 = v37;
            if (v18 * a1 != v19)
            {
              swift_arrayInitWithTakeBackToFront();
              v6 = v42;
              v17 = v18;
              v14 = v21;
            }
          }

          v29 = *(v6 + 56);
          v30 = (v29 + 8 * a1);
          v31 = (v29 + 8 * v10);
          if (a1 != v10 || v30 >= v31 + 1)
          {
            *v30 = *v31;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v26 >= v39 || a1 >= v26)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v37;
      v17 = v18;
      v6 = v42;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v32 = *(v6 + 16);
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v34;
    ++*(v6 + 36);
  }
}

void sub_1D8F7F950(int64_t a1, uint64_t a2)
{
  v41 = sub_1D9176EAC();
  v4 = *(v41 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v42 = v6;
    v12 = sub_1D91792EC();
    v13 = v41;
    v6 = v42;
    v14 = v11;
    v39 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v37 = a2 + 64;
    v38 = v16;
    v17 = *(v15 + 56);
    v36 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v40;
      v21 = v14;
      v22 = v15;
      v23 = v6;
      v38(v40, *(v6 + 48) + v17 * v10, v13);
      v24 = *(v23 + 40);
      sub_1D8D111AC(&qword_1EDCD5920, MEMORY[0x1E69695A8]);
      v25 = sub_1D917813C();
      (*v36)(v20, v13);
      v14 = v21;
      v26 = v25 & v21;
      if (a1 >= v39)
      {
        if (v26 >= v39 && a1 >= v26)
        {
LABEL_15:
          v6 = v42;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, *(v42 + 48) + v18 * a1 >= (*(v42 + 48) + v19 + v18)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v6 = v42;
            v17 = v18;
            v14 = v21;
            v8 = v37;
          }

          else
          {
            v8 = v37;
            if (v18 * a1 != v19)
            {
              swift_arrayInitWithTakeBackToFront();
              v6 = v42;
              v17 = v18;
              v14 = v21;
            }
          }

          v29 = *(v6 + 56);
          v30 = (v29 + 8 * a1);
          v31 = (v29 + 8 * v10);
          if (a1 != v10 || v30 >= v31 + 1)
          {
            *v30 = *v31;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v26 >= v39 || a1 >= v26)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v37;
      v17 = v18;
      v6 = v42;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v32 = *(v6 + 16);
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v34;
    ++*(v6 + 36);
  }
}

char *sub_1D8F7FC70(char *result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D91792EC() + 1) & ~v5;
    do
    {
      sub_1D8EC8C5C(*(a2 + 48) + 72 * v6, &v21);
      v9 = *(a2 + 40);
      sub_1D9179DBC();
      MEMORY[0x1DA72B3C0](v21);
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
      v10 = LODWORD(flt_1D918CD50[v22]);
      sub_1D9179DEC();
      v11 = sub_1D9179E1C();
      result = sub_1D8EC8D90(&v21);
      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        result = (v13 + 72 * v3);
        v14 = (v13 + 72 * v6);
        if (v3 != v6 || result >= v14 + 72)
        {
          result = memmove(result, v14, 0x48uLL);
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 8 * v3);
        v17 = (v15 + 8 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1D8F7FE44(int64_t a1, uint64_t a2)
{
  v4 = sub_1D9176C2C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v43 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v39 - v10;
  v12 = type metadata accessor for TTMLRequest();
  v13 = *(*(v12 - 1) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a2 + 64;
  v18 = -1 << *(a2 + 32);
  v19 = (a1 + 1) & ~v18;
  if ((*(a2 + 64 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
  {
    v20 = ~v18;
    v47 = v14;
    v46 = (sub_1D91792EC() + 1) & ~v18;
    v21 = *(v47 + 72);
    v44 = (v5 + 48);
    v45 = v21;
    v40 = (v5 + 8);
    v41 = (v5 + 32);
    v22 = v21;
    v42 = a2 + 64;
    do
    {
      v23 = *(a2 + 48);
      v47 = v22 * v19;
      sub_1D8D80148(v23 + v22 * v19, v16, type metadata accessor for TTMLRequest);
      v24 = *(a2 + 40);
      sub_1D9179DBC();
      sub_1D8ECA48C(v16, v11);
      if ((*v44)(v11, 1, v4) == 1)
      {
        sub_1D9179DDC();
      }

      else
      {
        v25 = v43;
        (*v41)(v43, v11, v4);
        sub_1D9179DDC();
        sub_1D8D111AC(&qword_1ECAB2CA8, MEMORY[0x1E6968FB0]);
        sub_1D917814C();
        v26 = v25;
        v17 = v42;
        (*v40)(v26, v4);
      }

      v27 = LODWORD(flt_1D918CD50[v16[v12[5]]]);
      sub_1D9179DEC();
      v28 = &v16[v12[6]];
      v29 = *v28;
      v30 = *(v28 + 1);
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
      if (v16[v12[7]] > 3u)
      {
        v16[v12[7]];
      }

      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

      v31 = sub_1D9179E1C();
      sub_1D8F51BD8(v16, type metadata accessor for TTMLRequest);
      v32 = v31 & v20;
      if (a1 >= v46)
      {
        v22 = v45;
        if (v32 < v46)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v22 = v45;
        if (v32 >= v46)
        {
          goto LABEL_15;
        }
      }

      if (a1 >= v32)
      {
LABEL_15:
        if (v22 * a1 < v47 || *(a2 + 48) + v22 * a1 >= (*(a2 + 48) + v47 + v22))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v22 * a1 != v47)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v33 = *(a2 + 56);
        v34 = (v33 + 8 * a1);
        v35 = (v33 + 8 * v19);
        if (a1 != v19 || v34 >= v35 + 1)
        {
          *v34 = *v35;
          a1 = v19;
        }
      }

LABEL_4:
      v19 = (v19 + 1) & v20;
    }

    while (((*(v17 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) != 0);
  }

  *(v17 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v36 = *(a2 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v38;
    ++*(a2 + 36);
  }
}

void sub_1D8F803C0(int64_t a1, uint64_t a2)
{
  v4 = sub_1D9176C2C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v43 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v39 - v10;
  v12 = type metadata accessor for ShazamSignatureRequest();
  v13 = *(*(v12 - 1) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a2 + 64;
  v18 = -1 << *(a2 + 32);
  v19 = (a1 + 1) & ~v18;
  if ((*(a2 + 64 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
  {
    v20 = ~v18;
    v47 = v14;
    v46 = (sub_1D91792EC() + 1) & ~v18;
    v21 = *(v47 + 72);
    v44 = (v5 + 48);
    v45 = v21;
    v40 = (v5 + 8);
    v41 = (v5 + 32);
    v22 = v21;
    v42 = a2 + 64;
    do
    {
      v23 = *(a2 + 48);
      v47 = v22 * v19;
      sub_1D8D80148(v23 + v22 * v19, v16, type metadata accessor for ShazamSignatureRequest);
      v24 = *(a2 + 40);
      sub_1D9179DBC();
      sub_1D8ECA48C(v16, v11);
      if ((*v44)(v11, 1, v4) == 1)
      {
        sub_1D9179DDC();
      }

      else
      {
        v25 = v43;
        (*v41)(v43, v11, v4);
        sub_1D9179DDC();
        sub_1D8D111AC(&qword_1ECAB2CA8, MEMORY[0x1E6968FB0]);
        sub_1D917814C();
        v26 = v25;
        v17 = v42;
        (*v40)(v26, v4);
      }

      v27 = LODWORD(flt_1D918CD50[v16[v12[5]]]);
      sub_1D9179DEC();
      v28 = &v16[v12[6]];
      v29 = *v28;
      v30 = *(v28 + 1);
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
      if (v16[v12[7]] > 3u)
      {
        v16[v12[7]];
      }

      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

      v31 = sub_1D9179E1C();
      sub_1D8F51BD8(v16, type metadata accessor for ShazamSignatureRequest);
      v32 = v31 & v20;
      if (a1 >= v46)
      {
        v22 = v45;
        if (v32 < v46)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v22 = v45;
        if (v32 >= v46)
        {
          goto LABEL_15;
        }
      }

      if (a1 >= v32)
      {
LABEL_15:
        if (v22 * a1 < v47 || *(a2 + 48) + v22 * a1 >= (*(a2 + 48) + v47 + v22))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v22 * a1 != v47)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v33 = *(a2 + 56);
        v34 = (v33 + 8 * a1);
        v35 = (v33 + 8 * v19);
        if (a1 != v19 || v34 >= v35 + 1)
        {
          *v34 = *v35;
          a1 = v19;
        }
      }

LABEL_4:
      v19 = (v19 + 1) & v20;
    }

    while (((*(v17 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) != 0);
  }

  *(v17 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v36 = *(a2 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v38;
    ++*(a2 + 36);
  }
}

void sub_1D8F8093C(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D91792EC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = sub_1D917913C();

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
          v19 = (v18 + 16 * v3);
          v20 = (v18 + 16 * v6);
          if (16 * v3 != 16 * v6 || (v3 = v6, v19 >= v20 + 1))
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

void sub_1D8F80AD4(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D91792EC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = sub_1D917913C();

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
          v19 = (v18 + v3);
          v20 = (v18 + v6);
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

uint64_t sub_1D8F80C64(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D91792EC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      v12 = *v11;
      result = sub_1D9179DAC();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = (v10 + 8 * v3);
          if (v3 != v6 || v16 >= v11 + 1)
          {
            *v16 = *v11;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v13 >= v8 || v3 >= v13)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1D8F80DD4(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (sub_1D91792EC() + 1) & ~v6;
    do
    {
      v11 = *(a2 + 40);
      v12 = *(a2 + 48);
      v13 = (v12 + 8 * v7);
      v14 = *v13;
      result = sub_1D9179DAC();
      v15 = result & v9;
      if (v4 >= v10)
      {
        if (v15 < v10 || v4 < v15)
        {
          goto LABEL_5;
        }
      }

      else if (v15 < v10 && v4 < v15)
      {
        goto LABEL_5;
      }

      v18 = (v12 + 8 * v4);
      if (v4 != v7 || v18 >= v13 + 1)
      {
        *v18 = *v13;
      }

      v19 = *(a2 + 56);
      v20 = *(*(a3(0) - 8) + 72);
      v21 = v20 * v4;
      result = v19 + v20 * v4;
      v22 = v20 * v7;
      v23 = v19 + v20 * v7 + v20;
      if (v21 < v22 || result >= v23)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v21 == v22)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v25 = *(a2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v27;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1D8F80F88(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D91792EC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + v6);
      sub_1D9179DBC();
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

      result = sub_1D9179E1C();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + v3);
        v14 = (v12 + v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 8 * v3);
        v17 = (v15 + 8 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1D8F81228(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D91792EC() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_1D9179DBC();

      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
      v14 = sub_1D9179E1C();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1D8F813D8(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D91792EC() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + v6);
      sub_1D9179DBC();
      v11 = *&aStdq_7[8 * v10];
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

      result = sub_1D9179E1C();
      v12 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v12 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v13 = *(a2 + 48);
      v14 = (v13 + v3);
      v15 = (v13 + v6);
      if (v3 != v6 || v14 >= v15 + 1)
      {
        *v14 = *v15;
      }

      v16 = *(a2 + 56);
      v17 = *(*(sub_1D9176E3C() - 8) + 72);
      v18 = v17 * v3;
      result = v16 + v17 * v3;
      v19 = v17 * v6;
      v20 = v16 + v17 * v6 + v17;
      if (v18 < v19 || result >= v20)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v18 == v19)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v12 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v12)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1D8F815BC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D91792EC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      sub_1D9179DBC();
      MEMORY[0x1DA72B3C0](v10);
      result = sub_1D9179E1C();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 8 * v3);
        v14 = (v12 + 8 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + v3);
        v17 = (v15 + v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1D8F81750(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D91792EC() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = *(*(a2 + 48) + 8 * v6);
      sub_1D9179DBC();
      MEMORY[0x1DA72B3C0](v12);
      result = sub_1D9179E1C();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = v17 + 40 * v3;
        v19 = (v17 + 40 * v6);
        if (v3 != v6 || v18 >= v19 + 40)
        {
          v9 = *v19;
          v10 = v19[1];
          *(v18 + 32) = *(v19 + 4);
          *v18 = v9;
          *(v18 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1D8F818F0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D91792EC() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v6);
      v13 = *v12;
      v14 = v12[1];
      sub_1D9179DBC();

      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
      v15 = sub_1D9179E1C();

      v16 = v15 & v7;
      if (v3 >= v8)
      {
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v16)
      {
LABEL_10:
        v17 = *(a2 + 48);
        v18 = (v17 + 16 * v3);
        v19 = (v17 + 16 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
        }

        v20 = *(a2 + 56);
        v21 = v20 + 40 * v3;
        v22 = (v20 + 40 * v6);
        if (v3 != v6 || v21 >= v22 + 40)
        {
          v9 = *v22;
          v10 = v22[1];
          *(v21 + 32) = *(v22 + 4);
          *v21 = v9;
          *(v21 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1D8F81AAC(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D91792EC() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      sub_1D9179DBC();
      MEMORY[0x1DA72B3C0](v10);
      result = sub_1D9179E1C();
      v11 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v11 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v12 = *(a2 + 48);
      v13 = (v12 + 8 * v3);
      v14 = (v12 + 8 * v6);
      if (v3 != v6 || v13 >= v14 + 1)
      {
        *v13 = *v14;
      }

      v15 = *(a2 + 56);
      v16 = *(*(type metadata accessor for EpisodePlayState() - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v11 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v11)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
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

  return result;
}

uint64_t sub_1D8F81C7C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D91792EC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      v12 = *v11;
      result = sub_1D9179DAC();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = (v10 + 8 * v3);
          if (v3 != v6 || v16 >= v11 + 1)
          {
            *v16 = *v11;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 16 * v3);
          v19 = (v17 + 16 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v13 >= v8 || v3 >= v13)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_1D8F81DEC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB43D0, &unk_1D91A6CB0);
  v26 = v0;
  v1 = *v0;
  v27 = sub_1D917977C();
  v28 = v1;
  if (*(v1 + 16))
  {
    result = (v27 + 64);
    v3 = v1 + 64;
    v4 = ((1 << *(v27 + 32)) + 63) >> 6;
    if (v27 != v1 || result >= v1 + 64 + 8 * v4)
    {
      result = memmove(result, (v1 + 64), 8 * v4);
    }

    v6 = 0;
    *(v27 + 16) = *(v28 + 16);
    v7 = 1 << *(v28 + 32);
    v8 = *(v28 + 64);
    v9 = -1;
    if (v7 < 64)
    {
      v9 = ~(-1 << v7);
    }

    v10 = v9 & v8;
    v11 = (v7 + 63) >> 6;
    if ((v9 & v8) != 0)
    {
      do
      {
        v12 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_17:
        v15 = v12 | (v6 << 6);
        v16 = *(v28 + 48) + 48 * v15;
        v17 = *v16;
        v18 = *(v16 + 8);
        v19 = *(v16 + 16);
        v20 = *(v16 + 24);
        v21 = *(v16 + 32);
        v22 = *(*(v28 + 56) + 8 * v15);
        v23 = *(v27 + 48) + 48 * v15;
        v24 = *(v16 + 40);
        *v23 = *v16;
        *(v23 + 8) = v18;
        *(v23 + 16) = v19;
        *(v23 + 24) = v20;
        *(v23 + 32) = v21;
        *(v23 + 40) = v24;
        *(*(v27 + 56) + 8 * v15) = v22;
        v25 = v17;
        sub_1D8D092C0(v18, v19, v20, v21, v24);
      }

      while (v10);
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_19;
      }

      v14 = *(v3 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v26 = v27;
  }

  return result;
}

void *sub_1D8F81FB4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB43C0, &qword_1D9188F28);
  v2 = *v0;
  v3 = sub_1D917977C();
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
        sub_1D8D41388(*(v2 + 48) + 264 * v17, v19);
        v18 = *(*(v2 + 56) + 8 * v17);
        memcpy((*(v4 + 48) + 264 * v17), v19, 0x108uLL);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void *sub_1D8F82144()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB43B8, &qword_1D9188F20);
  v2 = *v0;
  v3 = sub_1D917977C();
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

id sub_1D8F822A8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB43A8, &qword_1D9188F10);
  v2 = *v0;
  v3 = sub_1D917977C();
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
        sub_1D8CFAD1C(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_1D8D65618(v19, (*(v4 + 56) + 32 * v17));
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

id sub_1D8F82428()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4390, &unk_1D9188EF0);
  v2 = *v0;
  v3 = sub_1D917977C();
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

void *sub_1D8F8258C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4398, &qword_1D9188F00);
  v2 = *v0;
  v3 = sub_1D917977C();
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

        result = swift_unknownObjectRetain();
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

void *sub_1D8F82724()
{
  v1 = v0;
  v30 = sub_1D917653C();
  v32 = *(v30 - 8);
  v2 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v29 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4308, &qword_1D9188E68);
  v4 = *v0;
  v5 = sub_1D917977C();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v4 + 16);
    v31 = v6;
    *(v6 + 16) = v10;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v32 + 16;
    v26 = v4 + 64;
    for (i = v32 + 32; v13; result = (*(v20 + 32))(*(v24 + 56) + v21, v23, v22))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_14:
      v18 = v15 | (v9 << 6);
      v19 = *(*(v4 + 48) + 8 * v18);
      v20 = v32;
      v21 = *(v32 + 72) * v18;
      v23 = v29;
      v22 = v30;
      (*(v32 + 16))(v29, *(v4 + 56) + v21, v30);
      v24 = v31;
      *(*(v31 + 48) + 8 * v18) = v19;
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v25;
        v6 = v31;
        goto LABEL_18;
      }

      v17 = *(v26 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

char *sub_1D8F8298C()
{
  v1 = v0;
  v32 = sub_1D917653C();
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4318, &unk_1D91A6C60);
  v4 = *v0;
  v5 = sub_1D917977C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v34;
        v21 = *(v34 + 72) * v19;
        v23 = v31;
        v22 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v21, v32);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v33;
        result = (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + 8 * v19) = v24;
        v14 = v35;
      }

      while (v35);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v27;
        v6 = v33;
        goto LABEL_18;
      }

      v18 = *(v28 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

char *sub_1D8F82C10()
{
  v1 = v0;
  v34 = sub_1D9176EAC();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4388, &unk_1D91A6C80);
  v4 = *v0;
  v5 = sub_1D917977C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;

        v14 = v37;
      }

      while (v37);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}