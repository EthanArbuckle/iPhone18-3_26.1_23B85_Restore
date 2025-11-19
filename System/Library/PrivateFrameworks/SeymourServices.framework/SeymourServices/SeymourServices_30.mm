void sub_2271515C4(void *a1, uint64_t a2)
{
  v3 = v2;
  v94 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F08, &qword_227672920);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v88 = &v83 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F00, &unk_227672910);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v90 = &v83 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v83 - v13;
  v15 = sub_2276624A0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227666370();
  v20 = sub_22766BFD0();

  [a1 setIdentifier_];

  sub_227666480();
  v21 = sub_22766BFD0();

  [a1 setTitle_];

  sub_2276664B0();
  v89 = v14;
  if (v22)
  {
    v23 = sub_22766BFD0();
  }

  else
  {
    v23 = 0;
  }

  [a1 setSummary_];

  sub_2276663C0();
  sub_227662390();
  v24 = *(v16 + 8);
  v24(v19, v15);
  v25 = sub_22766BFD0();

  [a1 setStreamingURL_];

  v26 = sub_2276663D0();
  v91 = v3;
  v27 = v94;
  v28 = v92;
  v29 = sub_22764A594(v94, v26);
  if (v28)
  {

    return;
  }

  v30 = v29;
  v85 = v16 + 8;
  v86 = v16;
  v84 = v19;
  v87 = v24;
  v92 = v15;

  [a1 setTrainerEvents_];

  v31 = sub_227666390();
  v32 = sub_22764AA60(v27, v31);

  [a1 setMusicTracks_];

  v33 = sub_2276663B0();
  v34 = sub_22764AE80(v27, v33);

  [a1 setMediaMoments_];

  v93 = sub_227666490();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB2A0, &qword_22767A148);
  sub_227125C68();
  v35 = sub_2276683C0();
  v37 = v36;

  v38 = sub_227662560();
  sub_226EDC420(v35, v37);
  [0 setArtwork_];

  v39 = v89;
  sub_227666400();
  v40 = v92;
  if ((*(v86 + 48))(v39, 1, v92) == 1)
  {
    sub_226E97D1C(v39, &unk_27D7BB570, &unk_227670FC0);
    v41 = 0;
  }

  else
  {
    sub_227662390();
    v87(v39, v40);
    v41 = sub_22766BFD0();
  }

  v42 = v94;
  [a1 setMusicPlaylistURL_];

  sub_227666460();
  if (v43)
  {
    v44 = sub_22766BFD0();
  }

  else
  {
    v44 = 0;
  }

  [a1 setMusicPlaylistIdentifier_];

  v45 = v90;
  sub_2276664A0();
  v46 = sub_227664210();
  v47 = *(v46 - 8);
  if ((*(v47 + 48))(v45, 1, v46) == 1)
  {
    sub_226E97D1C(v45, &qword_27D7B8F00, &unk_227672910);
    v48 = 0;
  }

  else
  {
    v52 = objc_opt_self();
    v53 = sub_22766BFD0();
    v54 = [v52 insertNewObjectForEntityForName:v53 inManagedObjectContext:v42];

    type metadata accessor for ManagedCatalogPreview();
    v55 = swift_dynamicCastClass();
    if (!v55)
    {

      v65 = sub_227664DD0();
      sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v65 - 8) + 104))(v66, *MEMORY[0x277D51000], v65);
      swift_willThrow();
      (*(v47 + 8))(v90, v46);
      return;
    }

    v48 = v55;
    v56 = v90;
    sub_226F9789C(v55);
    (*(v47 + 8))(v56, v46);
  }

  [a1 setPreview_];

  sub_2276664C0();
  v49 = v87;
  if (v50)
  {
    v51 = sub_22766BFD0();
  }

  else
  {
    v51 = 0;
  }

  [a1 setLocation_];

  v57 = sub_2276663A0();
  v58 = sub_22764B438(v42, v57);

  [a1 setContributors_];

  v59 = v84;
  sub_227666380();
  sub_227662390();
  v49(v59, v92);
  v60 = sub_22766BFD0();

  [a1 setSharingURL_];

  v61 = sub_2276663F0();
  v62 = sub_22764B860(v42, v61);

  [a1 setCommentaryEvents_];

  sub_227666470();
  if (v63)
  {
    v64 = sub_22766BFD0();
  }

  else
  {
    v64 = 0;
  }

  [a1 setStreamingProgramIdentifier_];

  v67 = sub_227666440();
  v68 = sub_227647448(v42, v67);

  [a1 setAccessibilityFeatures_];

  v69 = sub_227666420();
  v70 = sub_22764BD14(v42, v69);

  [a1 setLanguageDisclaimers_];

  v71 = sub_2276663E0();
  v72 = sub_22764C1DC(v42, v71);

  [a1 setCoachingEvents_];

  v73 = sub_227666450();
  v74 = sub_22714F978(v73);

  v75 = a1;
  v76 = v42;
  v77 = sub_226F3DADC(v74);

  v78 = sub_22764C5CC(v76, v77);

  [v75 setAvailableAudioLanguages_];

  v79 = v88;
  sub_227666410();
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB858, &qword_22767B048);
  if ((*(*(v80 - 8) + 48))(v79, 1, v80) == 1)
  {
    sub_226E97D1C(v88, &qword_27D7B8F08, &qword_227672920);
    v81 = 0;
  }

  else
  {
    v82 = v88;
    sub_227663AD0();
    sub_226E97D1C(v82, &qword_27D7BB858, &qword_22767B048);
    v81 = sub_22766BFD0();
  }

  [v75 setContentRatingSystem_];
}

size_t static CatalogWorkoutMetadata.representativeSamples()()
{
  v0 = sub_2276624A0();
  v144 = *(v0 - 8);
  v1 = *(v144 + 64);
  MEMORY[0x28223BE20](v0);
  v119 = &v106 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v148 = &v106 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F00, &unk_227672910);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v118 = &v106 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v147 = &v106 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F08, &qword_227672920);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v146 = &v106 - v13;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB838, &qword_22767B030);
  v14 = *(v117 - 1);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v117);
  v145 = &v106 - v16;
  v116 = sub_2276664D0();
  v17 = *(v116 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v116);
  v115 = &v106 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v149 = sub_22766C090();
  v20 = sub_22766CB70();
  v21 = sub_22766CB70();
  v120 = v0;
  v22 = sub_22766CB70();
  v23 = sub_2276622F0();
  v24 = sub_22766CB70();
  v25 = sub_2276622F0();
  v26 = sub_22766C090();
  v27 = sub_22766C090();
  v176 = v20;
  v177[0] = v149;
  v177[1] = v177;
  v177[2] = &v176;
  v174 = v22;
  v175 = v21;
  v177[3] = &v175;
  v177[4] = &v174;
  v172 = v24;
  v173 = v23;
  v177[5] = &v173;
  v177[6] = &v172;
  v170 = v26;
  v171 = v25;
  v177[7] = &v171;
  v177[8] = &v170;
  v169 = v27;
  v177[9] = &v169;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v160 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8470, qword_227677CA0);
  v161 = v29;
  v162 = v29;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB840, &qword_22767B038);
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B90F8, &qword_227679D10);
  v165 = v29;
  v166 = v164;
  v167 = v28;
  v168 = v28;
  v30 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v151 = v30;
  v31 = sub_226F5BF60(&qword_27D7BA460, &qword_27D7B8470, qword_227677CA0);
  v152 = v31;
  v153 = v31;
  v154 = sub_226F5BF60(&qword_27D7BB848, &qword_27D7BB840, &qword_22767B038);
  v155 = sub_226F5BF60(&qword_27D7B9108, &qword_27D7B90F8, &qword_227679D10);
  v156 = v31;
  v157 = v155;
  v158 = v30;
  v159 = v30;
  v32 = sub_2276638E0();

  v33 = *(v32 + 16);
  if (v33)
  {
    v150 = MEMORY[0x277D84F90];
    result = sub_226F1F8E8(0, v33, 0);
    v35 = 0;
    v110 = v32 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v108 = v17 + 32;
    v109 = (v144 + 16);
    v36 = v150;
    v37 = *MEMORY[0x277D53DC8];
    v106 = *MEMORY[0x277D51A60];
    v107 = v37;
    v149 = xmmword_227670CD0;
    v113 = v17;
    v114 = v14;
    v111 = v33;
    v112 = v32;
    while (v35 < *(v32 + 16))
    {
      v38 = v145;
      sub_226E93170(v110 + *(v14 + 72) * v35, v145, &qword_27D7BB838, &qword_22767B030);
      v39 = *v38;
      v40 = *(v38 + 1);
      v41 = *(v38 + 3);
      v142 = *(v38 + 2);
      v143 = v39;
      v135 = v40;
      v136 = v41;
      v42 = *(v38 + 5);
      v141 = *(v38 + 4);
      v125 = v117[20];
      v128 = v117[24];
      v43 = &v38[v117[28]];
      v45 = *v43;
      v44 = v43[1];
      v140 = v45;
      v133 = v44;
      v129 = v117[32];
      v46 = &v38[v117[36]];
      v47 = v46[1];
      v137 = *v46;
      v138 = v42;
      v48 = &v38[v117[40]];
      v49 = v38;
      v51 = *v48;
      v50 = v48[1];
      v134 = v51;
      v132 = v50;
      v139 = sub_226F4DB14(&unk_283A93A78);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B88E8, &qword_2276715D0);
      swift_arrayDestroy();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB850, &qword_22767B040);
      v52 = sub_227669180();
      v53 = *(v52 - 8);
      v54 = *(v53 + 72);
      v55 = *(v53 + 80);
      v144 = v36;
      v56 = (v55 + 32) & ~v55;
      v57 = swift_allocObject();
      *(v57 + 16) = v149;
      sub_227669170();
      v131 = sub_226F4DD20(v57);
      swift_setDeallocating();
      (*(v53 + 8))(v57 + v56, v52);
      swift_deallocClassInstance();
      v130 = sub_226F4BE8C(&unk_283A93AC8);
      sub_226FA6DA4(&unk_283A93AE8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB278, &qword_227679E10);
      v58 = sub_227663E50();
      v59 = *(v58 - 8);
      v60 = *(v59 + 72);
      v61 = (*(v59 + 80) + 32) & ~*(v59 + 80);
      v62 = swift_allocObject();
      *(v62 + 16) = v149;
      sub_227663E30();
      v127 = sub_226F4E040(v62);
      swift_setDeallocating();
      (*(v59 + 8))(v62 + v61, v58);
      swift_deallocClassInstance();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB258, &qword_227679DD0);
      v63 = sub_227664650();
      v64 = *(v63 - 8);
      v65 = *(v64 + 72);
      v66 = (*(v64 + 80) + 32) & ~*(v64 + 80);
      v67 = swift_allocObject();
      *(v67 + 16) = v149;
      sub_227664630();
      v126 = sub_226F4E360(v67);
      swift_setDeallocating();
      (*(v64 + 8))(v67 + v66, v63);
      swift_deallocClassInstance();
      v68 = sub_2276694F0();
      v69 = v146;
      (*(*(v68 - 8) + 104))(v146, v107, v68);
      v70 = sub_227665900();
      (*(*(v70 - 8) + 104))(v69, v106, v70);
      v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB858, &qword_22767B048);
      swift_storeEnumTagMultiPayload();
      (*(*(v71 - 8) + 56))(v69, 0, 1, v71);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB248, &unk_227679DC0);
      v72 = sub_227663610();
      v73 = *(v72 - 8);
      v74 = *(v73 + 72);
      v75 = (*(v73 + 80) + 32) & ~*(v73 + 80);
      v76 = swift_allocObject();
      *(v76 + 16) = v149;
      sub_227663600();
      v124 = sub_226F4E680(v76);
      swift_setDeallocating();
      (*(v73 + 8))(v76 + v75, v72);
      swift_deallocClassInstance();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB030, &unk_227679B40);
      v77 = sub_2276655A0();
      v78 = *(v77 - 8);
      v79 = *(v78 + 72);
      v80 = (*(v78 + 80) + 32) & ~*(v78 + 80);
      v81 = swift_allocObject();
      *(v81 + 16) = v149;
      sub_227665580();
      v123 = sub_226F4E9A0(v81);
      swift_setDeallocating();
      (*(v78 + 8))(v81 + v80, v77);
      swift_deallocClassInstance();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAFB8, &qword_227679A78);
      v82 = sub_227663680();
      v83 = *(v82 - 8);
      v84 = *(v83 + 72);
      v85 = (*(v83 + 80) + 32) & ~*(v83 + 80);
      v86 = swift_allocObject();
      *(v86 + 16) = v149;
      sub_227663660();
      v122 = sub_226F4ECC0(v86);
      swift_setDeallocating();
      (*(v83 + 8))(v86 + v85, v82);
      swift_deallocClassInstance();
      sub_226E93170(&v49[v125], v147, &unk_27D7BB570, &unk_227670FC0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAF48, &qword_2276799F0);
      v87 = sub_227663350();
      v88 = *(v87 - 8);
      v89 = *(v88 + 72);
      v90 = *(v88 + 80);
      v125 = v35;
      v91 = (v90 + 32) & ~v90;
      v92 = swift_allocObject();
      *(v92 + 16) = v149;
      sub_227663330();
      v121 = sub_226F4EFE0(v92);
      swift_setDeallocating();
      (*(v88 + 8))(v92 + v91, v87);
      swift_deallocClassInstance();
      v93 = v118;
      sub_227664200();
      v94 = sub_227664210();
      (*(*(v94 - 8) + 56))(v93, 0, 1, v94);
      v95 = *v109;
      v96 = v120;
      (*v109)(v148, &v49[v128], v120);
      v95(v119, &v49[v129], v96);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB010, &qword_227679B10);
      v97 = sub_227663C90();
      v98 = *(v97 - 8);
      v99 = *(v98 + 72);
      v100 = (*(v98 + 80) + 32) & ~*(v98 + 80);
      v101 = swift_allocObject();
      *(v101 + 16) = v149;
      sub_227663C70();
      sub_226F4F300(v101);
      swift_setDeallocating();
      v102 = v101 + v100;
      v36 = v144;
      (*(v98 + 8))(v102, v97);
      swift_deallocClassInstance();

      v103 = v115;
      sub_227666430();
      sub_226E97D1C(v145, &qword_27D7BB838, &qword_22767B030);
      v150 = v36;
      v105 = *(v36 + 16);
      v104 = *(v36 + 24);
      if (v105 >= v104 >> 1)
      {
        sub_226F1F8E8(v104 > 1, v105 + 1, 1);
        v36 = v150;
      }

      v35 = v125 + 1;
      *(v36 + 16) = v105 + 1;
      result = (*(v113 + 32))(v36 + ((*(v113 + 80) + 32) & ~*(v113 + 80)) + *(v113 + 72) * v105, v103, v116);
      v32 = v112;
      v14 = v114;
      if (v111 == v35)
      {

        return v36;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_2271531E0(void *a1)
{
  v108 = sub_227668480();
  v109 = *(v108 - 8);
  v3 = *(v109 + 64);
  v4 = MEMORY[0x28223BE20](v108);
  v6 = &v101 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v118 = &v101 - v7;
  v8 = sub_2276622D0();
  v102 = *(v8 - 8);
  v9 = *(v102 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v121 = &v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v101 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v119 = &v101 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v120 = &v101 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v101 - v19;
  v21 = [a1 count];
  v129 = MEMORY[0x277D84F90];
  sub_226F1F1B0(0, v21 & ~(v21 >> 63), 0);
  v117 = v129;
  v114 = v20;
  result = sub_22766CA80();
  if (v21 < 0)
  {
    __break(1u);
LABEL_95:
    __break(1u);
    return result;
  }

  v115 = v1;
  if (v21)
  {
    v105 = v6;
    v107 = (v102 + 8);
    v103 = v109 + 32;
    sub_226EB2904(&qword_28139BDF0, MEMORY[0x277CC9178]);
    v23 = 0;
    v104 = v21;
    while (1)
    {
      v113 = v23;
      result = sub_22766CBB0();
      if (!v128)
      {
        goto LABEL_95;
      }

      sub_226E97CC0(&v127, &v125);
      type metadata accessor for ManagedWorkoutPlanModalityPreference();
      if (!swift_dynamicCast())
      {
        break;
      }

      v24 = *&v124[0];
      v25 = [*&v124[0] modalityIdentifier];
      if (!v25)
      {
        (*v107)(v114, v8);
        v95 = sub_227664DD0();
        sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040]);
        swift_allocError();
        (*(*(v95 - 8) + 104))(v96, *MEMORY[0x277D51028], v95);
        swift_willThrow();

        return __swift_destroy_boxed_opaque_existential_0(&v127);
      }

      v26 = v25;
      v111 = sub_22766C000();
      v112 = v27;

      v28 = [v24 preferredMusicGenres];
      v116 = v24;
      if (v28)
      {
        v106 = v28;
        sub_22766CA80();
        sub_22766CBB0();
        if (v126)
        {
          v29 = MEMORY[0x277D84F90];
          do
          {
            sub_226F04970(&v125, v124);
            sub_226E97CC0(v124, v123);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAC30, &unk_227679670);
            if (swift_dynamicCast())
            {
              v30 = v122;
              ObjectType = swift_getObjectType();
              v32 = (*(v30 + 8))(ObjectType, v30);
              v34 = v33;
              swift_unknownObjectRelease();
              __swift_destroy_boxed_opaque_existential_0(v124);
              if (v34)
              {
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v29 = sub_226EB3F78(0, *(v29 + 2) + 1, 1, v29);
                }

                v36 = *(v29 + 2);
                v35 = *(v29 + 3);
                if (v36 >= v35 >> 1)
                {
                  v29 = sub_226EB3F78((v35 > 1), v36 + 1, 1, v29);
                }

                *(v29 + 2) = v36 + 1;
                v37 = &v29[16 * v36];
                *(v37 + 4) = v32;
                *(v37 + 5) = v34;
              }
            }

            else
            {
              __swift_destroy_boxed_opaque_existential_0(v124);
            }

            sub_22766CBB0();
          }

          while (v126);
        }

        else
        {
          v29 = MEMORY[0x277D84F90];
        }

        (*v107)(v14, v8);
        v110 = sub_226F3E6A8(v29);
        v40 = v106;

        v24 = v116;
      }

      else
      {
        sub_226F62704();
        v38 = v115;
        v39 = sub_22766C5E0();
        v115 = v38;
        if (v38)
        {
          (*v107)(v114, v8);

          return __swift_destroy_boxed_opaque_existential_0(&v127);
        }

        v110 = v39;
      }

      v41 = [v24 preferredTrainers];
      if (v41)
      {
        v106 = v41;
        sub_22766CA80();
        sub_22766CBB0();
        if (v126)
        {
          v42 = MEMORY[0x277D84F90];
          do
          {
            sub_226F04970(&v125, v124);
            sub_226E97CC0(v124, v123);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAC30, &unk_227679670);
            if (swift_dynamicCast())
            {
              v43 = v122;
              v44 = swift_getObjectType();
              v45 = (*(v43 + 8))(v44, v43);
              v47 = v46;
              swift_unknownObjectRelease();
              __swift_destroy_boxed_opaque_existential_0(v124);
              if (v47)
              {
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v42 = sub_226EB3F78(0, *(v42 + 2) + 1, 1, v42);
                }

                v49 = *(v42 + 2);
                v48 = *(v42 + 3);
                if (v49 >= v48 >> 1)
                {
                  v42 = sub_226EB3F78((v48 > 1), v49 + 1, 1, v42);
                }

                *(v42 + 2) = v49 + 1;
                v50 = &v42[16 * v49];
                *(v50 + 4) = v45;
                *(v50 + 5) = v47;
              }
            }

            else
            {
              __swift_destroy_boxed_opaque_existential_0(v124);
            }

            sub_22766CBB0();
          }

          while (v126);
        }

        else
        {
          v42 = MEMORY[0x277D84F90];
        }

        (*v107)(v121, v8);
        sub_226F3E6A8(v42);
        v52 = v106;
      }

      else
      {
        sub_226F62704();
        v51 = v115;
        sub_22766C5E0();
        v115 = v51;
        if (v51)
        {
          (*v107)(v114, v8);

          return __swift_destroy_boxed_opaque_existential_0(&v127);
        }
      }

      v53 = v105;
      sub_227668450();

      __swift_destroy_boxed_opaque_existential_0(&v127);
      v54 = v117;
      v129 = v117;
      v56 = *(v117 + 16);
      v55 = *(v117 + 24);
      v57 = v113;
      if (v56 >= v55 >> 1)
      {
        sub_226F1F1B0(v55 > 1, v56 + 1, 1);
        v54 = v129;
      }

      v23 = v57 + 1;
      *(v54 + 16) = v56 + 1;
      v58 = (*(v109 + 80) + 32) & ~*(v109 + 80);
      v117 = v54;
      (*(v109 + 32))(v54 + v58 + *(v109 + 72) * v56, v53, v108);
      if (v23 == v104)
      {
        goto LABEL_42;
      }
    }

    (*v107)(v114, v8);
    v93 = sub_227664DD0();
    sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v93 - 8) + 104))(v94, *MEMORY[0x277D51028], v93);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_0(&v127);
  }

LABEL_42:
  sub_226EB2904(&qword_28139BDF0, MEMORY[0x277CC9178]);
  sub_22766CBB0();
  if (!v126)
  {
LABEL_81:
    (*(v102 + 8))(v114, v8);
    sub_226E97D1C(&v125, &unk_27D7BC990, &qword_227670A30);
    return v117;
  }

  v111 = (v102 + 8);
  v107 = (v109 + 32);
  while (1)
  {
    sub_226F04970(&v125, &v127);
    sub_226E97CC0(&v127, &v125);
    type metadata accessor for ManagedWorkoutPlanModalityPreference();
    if (!swift_dynamicCast())
    {
      (*v111)(v114, v8);
      v97 = sub_227664DD0();
      sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v97 - 8) + 104))(v98, *MEMORY[0x277D51028], v97);
      swift_willThrow();
LABEL_86:
      __swift_destroy_boxed_opaque_existential_0(&v127);
    }

    v59 = *&v124[0];
    v60 = [*&v124[0] modalityIdentifier];
    if (!v60)
    {
      (*v111)(v114, v8);
      v99 = sub_227664DD0();
      sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v99 - 8) + 104))(v100, *MEMORY[0x277D51028], v99);
      swift_willThrow();

      goto LABEL_86;
    }

    v61 = v60;
    v113 = sub_22766C000();
    v63 = v62;

    v64 = [v59 preferredMusicGenres];
    v121 = v59;
    v116 = v63;
    if (v64)
    {
      v110 = v64;
      sub_22766CA80();
      sub_22766CBB0();
      v65 = MEMORY[0x277D84F90];
      while (v126)
      {
        sub_226F04970(&v125, v124);
        sub_226E97CC0(v124, v123);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAC30, &unk_227679670);
        if (swift_dynamicCast())
        {
          v67 = v122;
          v68 = swift_getObjectType();
          v69 = (*(v67 + 8))(v68, v67);
          v71 = v70;
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_0(v124);
          if (v71)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v65 = sub_226EB3F78(0, *(v65 + 2) + 1, 1, v65);
            }

            v73 = *(v65 + 2);
            v72 = *(v65 + 3);
            if (v73 >= v72 >> 1)
            {
              v65 = sub_226EB3F78((v72 > 1), v73 + 1, 1, v65);
            }

            *(v65 + 2) = v73 + 1;
            v74 = &v65[16 * v73];
            *(v74 + 4) = v69;
            *(v74 + 5) = v71;
          }
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_0(v124);
        }

        sub_22766CBB0();
      }

      (*v111)(v120, v8);
      v112 = sub_226F3E6A8(v65);
      v66 = v110;

      v59 = v121;
    }

    else
    {
      sub_226F62704();
      v75 = v115;
      v76 = sub_22766C5E0();
      v115 = v75;
      if (v75)
      {
        goto LABEL_92;
      }

      v112 = v76;
    }

    v77 = [v59 preferredTrainers];
    if (v77)
    {
      v110 = v77;
      sub_22766CA80();
      sub_22766CBB0();
      if (v126)
      {
        v78 = MEMORY[0x277D84F90];
        do
        {
          sub_226F04970(&v125, v124);
          sub_226E97CC0(v124, v123);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAC30, &unk_227679670);
          if (swift_dynamicCast())
          {
            v79 = v122;
            v80 = swift_getObjectType();
            v81 = (*(v79 + 8))(v80, v79);
            v83 = v82;
            swift_unknownObjectRelease();
            __swift_destroy_boxed_opaque_existential_0(v124);
            if (v83)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v78 = sub_226EB3F78(0, *(v78 + 2) + 1, 1, v78);
              }

              v85 = *(v78 + 2);
              v84 = *(v78 + 3);
              if (v85 >= v84 >> 1)
              {
                v78 = sub_226EB3F78((v84 > 1), v85 + 1, 1, v78);
              }

              *(v78 + 2) = v85 + 1;
              v86 = &v78[16 * v85];
              *(v86 + 4) = v81;
              *(v86 + 5) = v83;
            }
          }

          else
          {
            __swift_destroy_boxed_opaque_existential_0(v124);
          }

          sub_22766CBB0();
        }

        while (v126);
      }

      else
      {
        v78 = MEMORY[0x277D84F90];
      }

      (*v111)(v119, v8);
      sub_226F3E6A8(v78);
      v88 = v110;

      v59 = v121;
      goto LABEL_78;
    }

    sub_226F62704();
    v87 = v115;
    sub_22766C5E0();
    v115 = v87;
    if (v87)
    {
      break;
    }

LABEL_78:
    sub_227668450();

    __swift_destroy_boxed_opaque_existential_0(&v127);
    v89 = v117;
    v129 = v117;
    v91 = *(v117 + 16);
    v90 = *(v117 + 24);
    if (v91 >= v90 >> 1)
    {
      sub_226F1F1B0(v90 > 1, v91 + 1, 1);
      v89 = v129;
    }

    *(v89 + 16) = v91 + 1;
    v92 = (*(v109 + 80) + 32) & ~*(v109 + 80);
    v117 = v89;
    (*(v109 + 32))(v89 + v92 + *(v109 + 72) * v91);
    sub_22766CBB0();
    if (!v126)
    {
      goto LABEL_81;
    }
  }

LABEL_92:

  __swift_destroy_boxed_opaque_existential_0(&v127);
  (*v111)(v114, v8);
}

uint64_t sub_22715454C(void *a1)
{
  v39 = sub_2276622D0();
  v37 = *(v39 - 8);
  v2 = *(v37 + 64);
  MEMORY[0x28223BE20](v39);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [a1 count];
  v45 = MEMORY[0x277D84F90];
  sub_226F1F1F0(0, v5 & ~(v5 >> 63), 0);
  v6 = v45;
  v38 = v4;
  result = sub_22766CA80();
  if (v5 < 0)
  {
    __break(1u);
LABEL_37:
    __break(1u);
    return result;
  }

  if (v5)
  {
    sub_226EB2904(&qword_28139BDF0, MEMORY[0x277CC9178]);
    while (1)
    {
      result = sub_22766CBB0();
      if (!v44)
      {
        goto LABEL_37;
      }

      sub_226E97CC0(&v43, &v41);
      type metadata accessor for ManagedWorkoutPlanScheduleFilterProperty();
      if (!swift_dynamicCast())
      {
        break;
      }

      v8 = v40;
      v9 = [v40 bodyFocus];
      if (v9)
      {
        v10 = 0;
      }

      else
      {
        v9 = [v8 equipment];
        if (v9)
        {
          v10 = 1;
        }

        else
        {
          v9 = [v8 skillLevel];
          if (!v9)
          {
            v9 = [v8 theme];
            if (!v9)
            {
              v32 = sub_227664DD0();
              sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040]);
              swift_allocError();
              (*(*(v32 - 8) + 104))(v33, *MEMORY[0x277D51028], v32);
              swift_willThrow();

              (*(v37 + 8))(v38, v39);
              goto LABEL_30;
            }
          }

          v10 = 2;
        }
      }

      v11 = v9;
      v12 = sub_22766C000();
      v14 = v13;

      __swift_destroy_boxed_opaque_existential_0(&v43);
      v45 = v6;
      v16 = *(v6 + 16);
      v15 = *(v6 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_226F1F1F0((v15 > 1), v16 + 1, 1);
        v6 = v45;
      }

      *(v6 + 16) = v16 + 1;
      v17 = v6 + 24 * v16;
      *(v17 + 32) = v12;
      *(v17 + 40) = v14;
      *(v17 + 48) = v10;
      if (!--v5)
      {
        goto LABEL_16;
      }
    }

    (*(v37 + 8))(v38, v39);
    v28 = sub_227664DD0();
    sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v28 - 8) + 104))(v29, *MEMORY[0x277D51028], v28);
    swift_willThrow();
LABEL_30:

    __swift_destroy_boxed_opaque_existential_0(&v43);
    return v6;
  }

LABEL_16:
  sub_226EB2904(&qword_28139BDF0, MEMORY[0x277CC9178]);
  sub_22766CBB0();
  if (!v42)
  {
LABEL_28:
    (*(v37 + 8))(v38, v39);
    sub_226E97D1C(&v41, &unk_27D7BC990, &qword_227670A30);
    return v6;
  }

  while (1)
  {
    sub_226F04970(&v41, &v43);
    sub_226E97CC0(&v43, &v41);
    type metadata accessor for ManagedWorkoutPlanScheduleFilterProperty();
    if (!swift_dynamicCast())
    {
      (*(v37 + 8))(v38, v39);
      v30 = sub_227664DD0();
      sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v30 - 8) + 104))(v31, *MEMORY[0x277D51028], v30);
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_0(&v43);
      goto LABEL_32;
    }

    v18 = v40;
    v19 = [v40 bodyFocus];
    if (!v19)
    {
      break;
    }

    v20 = 0;
LABEL_25:
    v21 = v19;
    v22 = sub_22766C000();
    v24 = v23;

    __swift_destroy_boxed_opaque_existential_0(&v43);
    v45 = v6;
    v26 = *(v6 + 16);
    v25 = *(v6 + 24);
    if (v26 >= v25 >> 1)
    {
      sub_226F1F1F0((v25 > 1), v26 + 1, 1);
      v6 = v45;
    }

    *(v6 + 16) = v26 + 1;
    v27 = v6 + 24 * v26;
    *(v27 + 32) = v22;
    *(v27 + 40) = v24;
    *(v27 + 48) = v20;
    sub_22766CBB0();
    if (!v42)
    {
      goto LABEL_28;
    }
  }

  v19 = [v18 equipment];
  if (v19)
  {
    v20 = 1;
    goto LABEL_25;
  }

  v19 = [v18 skillLevel];
  if (v19 || (v19 = [v18 theme]) != 0)
  {
    v20 = 2;
    goto LABEL_25;
  }

  v34 = sub_227664DD0();
  sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040]);
  swift_allocError();
  (*(*(v34 - 8) + 104))(v35, *MEMORY[0x277D51028], v34);
  swift_willThrow();

  __swift_destroy_boxed_opaque_existential_0(&v43);
  (*(v37 + 8))(v38, v39);
LABEL_32:

  return v6;
}

uint64_t sub_227154CD0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v76 = (&v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v7 = &v62 - v6;
  v8 = sub_2276624A0();
  v63 = *(v8 - 8);
  v9 = *(v63 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v74 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v78 = &v62 - v13;
  MEMORY[0x28223BE20](v12);
  v66 = &v62 - v14;
  v77 = sub_2276653A0();
  v79 = *(v77 - 8);
  v15 = *(v79 + 64);
  v16 = MEMORY[0x28223BE20](v77);
  v18 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v65 = &v62 - v19;
  v82 = sub_2276622D0();
  v64 = *(v82 - 8);
  v20 = *(v64 + 64);
  MEMORY[0x28223BE20](v82);
  v22 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = [a1 count];
  v89 = MEMORY[0x277D84F90];
  sub_226F1F288(0, v23 & ~(v23 >> 63), 0);
  v24 = v89;
  v81 = v22;
  result = sub_22766CA80();
  if (v23 < 0)
  {
    __break(1u);
LABEL_34:
    __break(1u);
  }

  else
  {
    v67 = v7;
    if (v23)
    {
      v73 = (v63 + 48);
      v71 = (v63 + 32);
      v70 = (v63 + 16);
      v69 = (v63 + 8);
      v68 = v79 + 32;
      v75 = sub_226EB2904(&qword_28139BDF0, MEMORY[0x277CC9178]);
      v72 = v18;
      while (1)
      {
        result = sub_22766CBB0();
        if (!v88)
        {
          goto LABEL_34;
        }

        sub_226E97CC0(&v87, &v85);
        type metadata accessor for ManagedSocialMediaHandle();
        if (!swift_dynamicCast())
        {
          break;
        }

        v26 = v83;
        v27 = [v83 platform];
        if (!v27)
        {
          goto LABEL_26;
        }

        v28 = v27;
        v29 = sub_22766C000();
        v31 = v30;

        v32 = [v26 url];
        if (v32)
        {
          v33 = v32;
          sub_22766C000();
        }

        v34 = v76;
        sub_227662310();
        if ((*v73)(v34, 1, v8) == 1)
        {

          sub_226E97D1C(v34, &unk_27D7BB570, &unk_227670FC0);
LABEL_26:
          v56 = sub_227664DD0();
          sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040]);
          swift_allocError();
          (*(*(v56 - 8) + 104))(v57, *MEMORY[0x277D51028], v56);
          swift_willThrow();

          (*(v64 + 8))(v81, v82);
LABEL_27:

          __swift_destroy_boxed_opaque_existential_0(&v87);
          return v24;
        }

        v80 = v23;
        v35 = v24;
        v36 = v74;
        (*v71)(v74, v34, v8);
        v83 = v29;
        v84 = v31;
        sub_226FC47F4();
        sub_227663AE0();
        (*v70)(v78, v36, v8);
        v37 = v72;
        sub_227665380();

        v38 = v36;
        v24 = v35;
        (*v69)(v38, v8);
        __swift_destroy_boxed_opaque_existential_0(&v87);
        v89 = v35;
        v40 = *(v35 + 16);
        v39 = *(v35 + 24);
        if (v40 >= v39 >> 1)
        {
          sub_226F1F288(v39 > 1, v40 + 1, 1);
          v24 = v89;
        }

        *(v24 + 16) = v40 + 1;
        (*(v79 + 32))(v24 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v40, v37, v77);
        v23 = v80 - 1;
        if (v80 == 1)
        {
          goto LABEL_13;
        }
      }

      (*(v64 + 8))(v81, v82);
      v54 = sub_227664DD0();
      sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v54 - 8) + 104))(v55, *MEMORY[0x277D51028], v54);
      swift_willThrow();
      goto LABEL_27;
    }

LABEL_13:
    v80 = sub_226EB2904(&qword_28139BDF0, MEMORY[0x277CC9178]);
    sub_22766CBB0();
    if (v86)
    {
      v75 = (v63 + 32);
      v76 = (v63 + 48);
      v73 = (v63 + 8);
      v74 = (v63 + 16);
      v72 = (v79 + 32);
      while (1)
      {
        sub_226F04970(&v85, &v87);
        sub_226E97CC0(&v87, &v85);
        type metadata accessor for ManagedSocialMediaHandle();
        if (!swift_dynamicCast())
        {
          (*(v64 + 8))(v81, v82);
          v58 = sub_227664DD0();
          sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040]);
          swift_allocError();
          (*(*(v58 - 8) + 104))(v59, *MEMORY[0x277D51028], v58);
          swift_willThrow();
          __swift_destroy_boxed_opaque_existential_0(&v87);
          goto LABEL_31;
        }

        v41 = v83;
        v42 = [v83 platform];
        if (!v42)
        {
          break;
        }

        v43 = v42;
        v44 = sub_22766C000();
        v46 = v45;

        v47 = [v41 url];
        if (v47)
        {
          v48 = v47;
          sub_22766C000();
        }

        v49 = v67;
        sub_227662310();
        if ((*v76)(v49, 1, v8) == 1)
        {

          sub_226E97D1C(v49, &unk_27D7BB570, &unk_227670FC0);
          break;
        }

        v50 = v66;
        (*v75)(v66, v49, v8);
        v83 = v44;
        v84 = v46;
        sub_226FC47F4();
        sub_227663AE0();
        (*v74)(v78, v50, v8);
        v51 = v65;
        sub_227665380();

        (*v73)(v50, v8);
        __swift_destroy_boxed_opaque_existential_0(&v87);
        v89 = v24;
        v53 = *(v24 + 16);
        v52 = *(v24 + 24);
        if (v53 >= v52 >> 1)
        {
          sub_226F1F288(v52 > 1, v53 + 1, 1);
          v24 = v89;
        }

        *(v24 + 16) = v53 + 1;
        (*(v79 + 32))(v24 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v53, v51, v77);
        sub_22766CBB0();
        if (!v86)
        {
          goto LABEL_23;
        }
      }

      v60 = sub_227664DD0();
      sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v60 - 8) + 104))(v61, *MEMORY[0x277D51028], v60);
      swift_willThrow();

      __swift_destroy_boxed_opaque_existential_0(&v87);
      (*(v64 + 8))(v81, v82);
LABEL_31:
    }

    else
    {
LABEL_23:
      (*(v64 + 8))(v81, v82);
      sub_226E97D1C(&v85, &unk_27D7BC990, &qword_227670A30);
    }

    return v24;
  }

  return result;
}

uint64_t sub_227155968(void *a1)
{
  v2 = sub_227663A30();
  v3 = *(v2 - 8);
  v45 = v2;
  v46 = v3;
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v40 - v8;
  v48 = sub_2276622D0();
  v41 = *(v48 - 8);
  v10 = *(v41 + 64);
  MEMORY[0x28223BE20](v48);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 count];
  v54 = MEMORY[0x277D84F90];
  sub_226F1F308(0, v13 & ~(v13 >> 63), 0);
  v14 = v54;
  v47 = v12;
  result = sub_22766CA80();
  if (v13 < 0)
  {
    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    if (v13)
    {
      v42 = v46 + 32;
      v16 = sub_226EB2904(&qword_28139BDF0, MEMORY[0x277CC9178]);
      v43 = v9;
      v44 = v16;
      while (1)
      {
        result = sub_22766CBB0();
        if (!v53)
        {
          goto LABEL_32;
        }

        sub_226E97CC0(&v52, &v50);
        type metadata accessor for ManagedCatalogTheme();
        if (!swift_dynamicCast())
        {
          break;
        }

        v17 = v14;
        v14 = v7;
        v18 = v49;
        v19 = [v49 identifier];
        if (!v19)
        {
          (*(v41 + 8))(v47, v48);
          goto LABEL_23;
        }

        v20 = v19;
        sub_22766C000();

        v21 = [v18 name];
        if (!v21)
        {
          (*(v41 + 8))(v47, v48);

LABEL_23:
          v34 = sub_227664DD0();
          sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040]);
          swift_allocError();
          (*(*(v34 - 8) + 104))(v35, *MEMORY[0x277D51028], v34);
          swift_willThrow();

LABEL_24:
          __swift_destroy_boxed_opaque_existential_0(&v52);
          return v14;
        }

        v22 = v21;
        sub_22766C000();

        [v18 sortOrder];
        v7 = v14;
        sub_2276639F0();

        __swift_destroy_boxed_opaque_existential_0(&v52);
        v14 = v17;
        v54 = v17;
        v24 = *(v17 + 2);
        v23 = *(v17 + 3);
        if (v24 >= v23 >> 1)
        {
          sub_226F1F308(v23 > 1, v24 + 1, 1);
          v14 = v54;
        }

        *(v14 + 2) = v24 + 1;
        (*(v46 + 32))(&v14[((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v24], v7, v45);
        --v13;
        v9 = v43;
        if (!v13)
        {
          goto LABEL_11;
        }
      }

      (*(v41 + 8))(v47, v48);
      v32 = sub_227664DD0();
      sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v32 - 8) + 104))(v33, *MEMORY[0x277D51028], v32);
      swift_willThrow();

      goto LABEL_24;
    }

LABEL_11:
    sub_226EB2904(&qword_28139BDF0, MEMORY[0x277CC9178]);
    sub_22766CBB0();
    if (v51)
    {
      v44 = v46 + 32;
      while (1)
      {
        sub_226F04970(&v50, &v52);
        sub_226E97CC0(&v52, &v50);
        type metadata accessor for ManagedCatalogTheme();
        if (!swift_dynamicCast())
        {
          (*(v41 + 8))(v47, v48);
          v36 = sub_227664DD0();
          sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040]);
          swift_allocError();
          (*(*(v36 - 8) + 104))(v37, *MEMORY[0x277D51028], v36);
          swift_willThrow();
          goto LABEL_29;
        }

        v25 = v49;
        v26 = [v49 identifier];
        if (!v26)
        {
          (*(v41 + 8))(v47, v48);
          goto LABEL_28;
        }

        v27 = v26;
        sub_22766C000();

        v28 = [v25 name];
        if (!v28)
        {
          break;
        }

        v29 = v28;
        sub_22766C000();

        [v25 sortOrder];
        sub_2276639F0();

        __swift_destroy_boxed_opaque_existential_0(&v52);
        v54 = v14;
        v31 = *(v14 + 2);
        v30 = *(v14 + 3);
        if (v31 >= v30 >> 1)
        {
          sub_226F1F308(v30 > 1, v31 + 1, 1);
          v14 = v54;
        }

        *(v14 + 2) = v31 + 1;
        (*(v46 + 32))(&v14[((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v31], v9, v45);
        sub_22766CBB0();
        if (!v51)
        {
          goto LABEL_19;
        }
      }

      (*(v41 + 8))(v47, v48);

LABEL_28:
      v38 = sub_227664DD0();
      sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v38 - 8) + 104))(v39, *MEMORY[0x277D51028], v38);
      swift_willThrow();

LABEL_29:
      __swift_destroy_boxed_opaque_existential_0(&v52);
    }

    else
    {
LABEL_19:
      (*(v41 + 8))(v47, v48);
      sub_226E97D1C(&v50, &unk_27D7BC990, &qword_227670A30);
    }

    return v14;
  }

  return result;
}

uint64_t sub_22715629C(void *a1)
{
  v2 = sub_227663AB0();
  v3 = *(v2 - 8);
  v45 = v2;
  v46 = v3;
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v41 - v8;
  v48 = sub_2276622D0();
  v42 = *(v48 - 8);
  v10 = *(v42 + 64);
  MEMORY[0x28223BE20](v48);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 count];
  v57 = MEMORY[0x277D84F90];
  sub_226F1F348(0, v13 & ~(v13 >> 63), 0);
  v50 = v57;
  v47 = v12;
  result = sub_22766CA80();
  if (v13 < 0)
  {
    __break(1u);
LABEL_27:
    __break(1u);
  }

  else
  {
    if (v13)
    {
      sub_226EB2904(&qword_28139BDF0, MEMORY[0x277CC9178]);
      while (1)
      {
        result = sub_22766CBB0();
        if (!v56)
        {
          goto LABEL_27;
        }

        sub_226E97CC0(&v55, &v53);
        type metadata accessor for ManagedPlaylistItem();
        if (!swift_dynamicCast())
        {
          break;
        }

        v15 = v49;
        sub_226FFFF60(v51);
        v49 = v15;
        if (v15)
        {
          (*(v42 + 8))(v47, v48);
          goto LABEL_21;
        }

        __swift_destroy_boxed_opaque_existential_0(&v55);
        v16 = v50;
        v57 = v50;
        v18 = *(v50 + 16);
        v17 = *(v50 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_226F1F348(v17 > 1, v18 + 1, 1);
          v16 = v57;
        }

        *(v16 + 16) = v18 + 1;
        v19 = (*(v46 + 80) + 32) & ~*(v46 + 80);
        v50 = v16;
        (*(v46 + 32))(v16 + v19 + *(v46 + 72) * v18, v7, v45);
        if (!--v13)
        {
          goto LABEL_10;
        }
      }

      (*(v42 + 8))(v47, v48);
      v32 = sub_227664DD0();
      sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040]);
      v33 = swift_allocError();
      (*(*(v32 - 8) + 104))(v34, *MEMORY[0x277D51028], v32);
      v49 = v33;
      swift_willThrow();
LABEL_21:

      return __swift_destroy_boxed_opaque_existential_0(&v55);
    }

LABEL_10:
    v44 = sub_226EB2904(&qword_28139BDF0, MEMORY[0x277CC9178]);
    sub_22766CBB0();
    if (v54)
    {
      v43 = v46 + 32;
      while (1)
      {
        sub_226F04970(&v53, &v55);
        sub_226E97CC0(&v55, &v53);
        type metadata accessor for ManagedPlaylistItem();
        if (!swift_dynamicCast())
        {
          (*(v42 + 8))(v47, v48);
          v35 = sub_227664DD0();
          sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040]);
          v36 = swift_allocError();
          (*(*(v35 - 8) + 104))(v37, *MEMORY[0x277D51028], v35);
          v49 = v36;
          swift_willThrow();
          __swift_destroy_boxed_opaque_existential_0(&v55);
        }

        v20 = v51;
        v21 = [v51 identifier];
        if (!v21)
        {
          break;
        }

        v22 = v21;
        sub_22766C000();

        v23 = [v20 mediaType];
        if (!v23)
        {

          break;
        }

        v24 = v23;
        v25 = sub_22766C000();
        v27 = v26;

        [v20 index];
        [v20 healthKitActivityType];
        v51 = v25;
        v52 = v27;
        sub_226ED56C4();
        sub_227663AE0();
        [v20 duration];
        sub_227663A50();

        __swift_destroy_boxed_opaque_existential_0(&v55);
        v28 = v50;
        v57 = v50;
        v30 = *(v50 + 16);
        v29 = *(v50 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_226F1F348(v29 > 1, v30 + 1, 1);
          v28 = v57;
        }

        *(v28 + 16) = v30 + 1;
        v31 = (*(v46 + 80) + 32) & ~*(v46 + 80);
        v50 = v28;
        (*(v46 + 32))(v28 + v31 + *(v46 + 72) * v30, v9, v45);
        sub_22766CBB0();
        if (!v54)
        {
          goto LABEL_18;
        }
      }

      v38 = sub_227664DD0();
      sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040]);
      v39 = swift_allocError();
      (*(*(v38 - 8) + 104))(v40, *MEMORY[0x277D51028], v38);
      v49 = v39;
      swift_willThrow();

      __swift_destroy_boxed_opaque_existential_0(&v55);
      (*(v42 + 8))(v47, v48);
    }

    else
    {
LABEL_18:
      (*(v42 + 8))(v47, v48);
      sub_226E97D1C(&v53, &unk_27D7BC990, &qword_227670A30);
      return v50;
    }
  }

  return result;
}

uint64_t sub_227156A60(void *a1, uint64_t (*a2)(void), void (*a3)(BOOL, unint64_t, uint64_t), void (*a4)(void), void (*a5)(uint64_t))
{
  v33 = a5;
  v34 = a4;
  v32 = a2(0);
  v8 = *(v32 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v32);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v31 = &v28 - v13;
  v36 = sub_2276622D0();
  v29 = *(v36 - 8);
  v14 = *(v29 + 64);
  MEMORY[0x28223BE20](v36);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [a1 count];
  v42 = MEMORY[0x277D84F90];
  v28 = a3;
  a3(0, v17 & ~(v17 >> 63), 0);
  v18 = v42;
  v35 = v16;
  result = sub_22766CA80();
  if (v17 < 0)
  {
    __break(1u);
LABEL_25:
    __break(1u);
  }

  else
  {
    if (v17)
    {
      v30 = v8 + 32;
      sub_226EB2904(&qword_28139BDF0, MEMORY[0x277CC9178]);
      while (1)
      {
        result = sub_22766CBB0();
        if (!v41)
        {
          goto LABEL_25;
        }

        sub_226E97CC0(&v40, &v38);
        v34(0);
        if (!swift_dynamicCast())
        {
          break;
        }

        v33(v37);
        if (v5)
        {
          (*(v29 + 8))(v35, v36);
          goto LABEL_19;
        }

        __swift_destroy_boxed_opaque_existential_0(&v40);
        v42 = v18;
        v21 = *(v18 + 16);
        v20 = *(v18 + 24);
        if (v21 >= v20 >> 1)
        {
          v28(v20 > 1, v21 + 1, 1);
          v18 = v42;
        }

        *(v18 + 16) = v21 + 1;
        (*(v8 + 32))(v18 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v21, v12, v32);
        if (!--v17)
        {
          goto LABEL_10;
        }
      }

      (*(v29 + 8))(v35, v36);
      v24 = sub_227664DD0();
      sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v24 - 8) + 104))(v25, *MEMORY[0x277D51028], v24);
      swift_willThrow();
LABEL_19:

      __swift_destroy_boxed_opaque_existential_0(&v40);
      return v18;
    }

LABEL_10:
    sub_226EB2904(&qword_28139BDF0, MEMORY[0x277CC9178]);
    sub_22766CBB0();
    if (v39)
    {
      while (1)
      {
        sub_226F04970(&v38, &v40);
        sub_226E97CC0(&v40, &v38);
        v34(0);
        if (!swift_dynamicCast())
        {
          (*(v29 + 8))(v35, v36);
          v26 = sub_227664DD0();
          sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040]);
          swift_allocError();
          (*(*(v26 - 8) + 104))(v27, *MEMORY[0x277D51028], v26);
          swift_willThrow();
          __swift_destroy_boxed_opaque_existential_0(&v40);
          goto LABEL_22;
        }

        v33(v37);
        if (v5)
        {
          break;
        }

        __swift_destroy_boxed_opaque_existential_0(&v40);
        v42 = v18;
        v23 = *(v18 + 16);
        v22 = *(v18 + 24);
        if (v23 >= v22 >> 1)
        {
          v28(v22 > 1, v23 + 1, 1);
          v18 = v42;
        }

        *(v18 + 16) = v23 + 1;
        (*(v8 + 32))(v18 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v23, v31, v32);
        sub_22766CBB0();
        if (!v39)
        {
          goto LABEL_16;
        }
      }

      __swift_destroy_boxed_opaque_existential_0(&v40);
      (*(v29 + 8))(v35, v36);
LABEL_22:
    }

    else
    {
LABEL_16:
      (*(v29 + 8))(v35, v36);
      sub_226E97D1C(&v38, &unk_27D7BC990, &qword_227670A30);
    }

    return v18;
  }

  return result;
}

uint64_t sub_2271570C0(void *a1)
{
  v2 = sub_227664650();
  v3 = *(v2 - 8);
  v50 = v2;
  v51 = v3;
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v45 - v8;
  v53 = sub_2276622D0();
  v46 = *(v53 - 8);
  v10 = *(v46 + 64);
  MEMORY[0x28223BE20](v53);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 count];
  v60 = MEMORY[0x277D84F90];
  sub_226F1F3A8(0, v13 & ~(v13 >> 63), 0);
  v14 = v60;
  v52 = v12;
  result = sub_22766CA80();
  if (v13 < 0)
  {
    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
    v47 = v9;
    if (v13)
    {
      v48 = v51 + 32;
      v49 = sub_226EB2904(&qword_28139BDF0, MEMORY[0x277CC9178]);
      while (1)
      {
        result = sub_22766CBB0();
        if (!v59)
        {
          goto LABEL_29;
        }

        sub_226E97CC0(&v58, &v56);
        type metadata accessor for ManagedCommentaryEvent();
        if (!swift_dynamicCast())
        {
          break;
        }

        v16 = v54;
        v17 = [v54 topic];
        if (!v17)
        {
          goto LABEL_21;
        }

        v18 = v17;
        v19 = sub_22766C000();
        v21 = v20;

        v22 = [v16 topicIdentifier];
        if (!v22)
        {

LABEL_21:
          v39 = sub_227664DD0();
          sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040]);
          swift_allocError();
          (*(*(v39 - 8) + 104))(v40, *MEMORY[0x277D51028], v39);
          swift_willThrow();

          (*(v46 + 8))(v52, v53);
LABEL_22:

          __swift_destroy_boxed_opaque_existential_0(&v58);
          return v14;
        }

        v23 = v22;
        sub_22766C000();

        [v16 duration];
        [v16 startTime];
        v54 = v19;
        v55 = v21;
        sub_22706539C();
        sub_227663AE0();
        sub_227664610();

        __swift_destroy_boxed_opaque_existential_0(&v58);
        v60 = v14;
        v25 = *(v14 + 16);
        v24 = *(v14 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_226F1F3A8(v24 > 1, v25 + 1, 1);
          v14 = v60;
        }

        *(v14 + 16) = v25 + 1;
        (*(v51 + 32))(v14 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v25, v7, v50);
        if (!--v13)
        {
          goto LABEL_11;
        }
      }

      (*(v46 + 8))(v52, v53);
      v37 = sub_227664DD0();
      sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v37 - 8) + 104))(v38, *MEMORY[0x277D51028], v37);
      swift_willThrow();
      goto LABEL_22;
    }

LABEL_11:
    sub_226EB2904(&qword_28139BDF0, MEMORY[0x277CC9178]);
    sub_22766CBB0();
    if (v57)
    {
      while (1)
      {
        sub_226F04970(&v56, &v58);
        sub_226E97CC0(&v58, &v56);
        type metadata accessor for ManagedCommentaryEvent();
        if (!swift_dynamicCast())
        {
          (*(v46 + 8))(v52, v53);
          v41 = sub_227664DD0();
          sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040]);
          swift_allocError();
          (*(*(v41 - 8) + 104))(v42, *MEMORY[0x277D51028], v41);
          swift_willThrow();
          __swift_destroy_boxed_opaque_existential_0(&v58);
          goto LABEL_26;
        }

        v26 = v54;
        v27 = [v54 topic];
        if (!v27)
        {
          break;
        }

        v28 = v27;
        v29 = sub_22766C000();
        v31 = v30;

        v32 = [v26 topicIdentifier];
        if (!v32)
        {

          break;
        }

        v33 = v32;
        sub_22766C000();

        [v26 duration];
        [v26 startTime];
        v54 = v29;
        v55 = v31;
        sub_22706539C();
        sub_227663AE0();
        v34 = v47;
        sub_227664610();

        __swift_destroy_boxed_opaque_existential_0(&v58);
        v60 = v14;
        v36 = *(v14 + 16);
        v35 = *(v14 + 24);
        if (v36 >= v35 >> 1)
        {
          sub_226F1F3A8(v35 > 1, v36 + 1, 1);
          v14 = v60;
        }

        *(v14 + 16) = v36 + 1;
        (*(v51 + 32))(v14 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v36, v34, v50);
        sub_22766CBB0();
        if (!v57)
        {
          goto LABEL_18;
        }
      }

      v43 = sub_227664DD0();
      sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v43 - 8) + 104))(v44, *MEMORY[0x277D51028], v43);
      swift_willThrow();

      __swift_destroy_boxed_opaque_existential_0(&v58);
      (*(v46 + 8))(v52, v53);
LABEL_26:
    }

    else
    {
LABEL_18:
      (*(v46 + 8))(v52, v53);
      sub_226E97D1C(&v56, &unk_27D7BC990, &qword_227670A30);
    }

    return v14;
  }

  return result;
}

uint64_t sub_2271579B8(void *a1)
{
  v50 = sub_227669180();
  v2 = *(*(v50 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v50);
  v5 = v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v45 - v6;
  v49 = sub_227663680();
  v51 = *(v49 - 8);
  v8 = *(v51 + 64);
  v9 = MEMORY[0x28223BE20](v49);
  v11 = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v46 = v45 - v12;
  v54 = sub_2276622D0();
  v45[0] = *(v54 - 8);
  v13 = *(v45[0] + 64);
  MEMORY[0x28223BE20](v54);
  v15 = v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a1 count];
  v61 = MEMORY[0x277D84F90];
  sub_226F1F3E8(0, v16 & ~(v16 >> 63), 0);
  v17 = v61;
  v53 = v15;
  result = sub_22766CA80();
  if (v16 < 0)
  {
    __break(1u);
LABEL_36:
    __break(1u);
    return result;
  }

  v45[1] = v7;
  if (v16)
  {
    v47 = v51 + 32;
    v48 = sub_226EB2904(&qword_28139BDF0, MEMORY[0x277CC9178]);
    while (1)
    {
      result = sub_22766CBB0();
      if (!v60)
      {
        goto LABEL_36;
      }

      sub_226E97CC0(&v59, &v57);
      type metadata accessor for ManagedMediaMoment();
      if (!swift_dynamicCast())
      {
        break;
      }

      v19 = v56;
      v20 = [v56 identifier];
      if (!v20)
      {
        v39 = sub_227664DD0();
        sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040]);
        swift_allocError();
        (*(*(v39 - 8) + 104))(v40, *MEMORY[0x277D51028], v39);
        swift_willThrow();

        goto LABEL_27;
      }

      v21 = v20;
      v52 = v17;
      v22 = v5;
      sub_22766C000();

      [v19 startTime];
      [v19 duration];
      v23 = [v19 artwork];
      if (v23)
      {
        v24 = v23;
        sub_227662590();
      }

      sub_226EB2904(&qword_27D7BB870, MEMORY[0x277D53A78]);
      v5 = v22;
      v25 = v55;
      sub_2276683D0();
      v55 = v25;
      if (v25)
      {

        v17 = v52;
LABEL_27:
        (*(v45[0] + 8))(v53, v54);
LABEL_28:

        __swift_destroy_boxed_opaque_existential_0(&v59);
        return v17;
      }

      sub_227663620();

      __swift_destroy_boxed_opaque_existential_0(&v59);
      v17 = v52;
      v61 = v52;
      v27 = *(v52 + 16);
      v26 = *(v52 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_226F1F3E8(v26 > 1, v27 + 1, 1);
        v17 = v61;
      }

      *(v17 + 16) = v27 + 1;
      (*(v51 + 32))(v17 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v27, v11, v49);
      if (!--v16)
      {
        goto LABEL_13;
      }
    }

    (*(v45[0] + 8))(v53, v54);
    v37 = sub_227664DD0();
    sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v37 - 8) + 104))(v38, *MEMORY[0x277D51028], v37);
    swift_willThrow();
    goto LABEL_28;
  }

LABEL_13:
  sub_226EB2904(&qword_28139BDF0, MEMORY[0x277CC9178]);
  sub_22766CBB0();
  if (!v58)
  {
LABEL_23:
    (*(v45[0] + 8))(v53, v54);
    sub_226E97D1C(&v57, &unk_27D7BC990, &qword_227670A30);
    return v17;
  }

  v52 = v51 + 32;
  v28 = v55;
  while (1)
  {
    sub_226F04970(&v57, &v59);
    sub_226E97CC0(&v59, &v57);
    type metadata accessor for ManagedMediaMoment();
    if (!swift_dynamicCast())
    {
      (*(v45[0] + 8))(v53, v54);
      v41 = sub_227664DD0();
      sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v41 - 8) + 104))(v42, *MEMORY[0x277D51028], v41);
      swift_willThrow();
LABEL_31:
      __swift_destroy_boxed_opaque_existential_0(&v59);
      goto LABEL_33;
    }

    v29 = v56;
    v30 = [v56 identifier];
    if (!v30)
    {
      (*(v45[0] + 8))(v53, v54);
      v43 = sub_227664DD0();
      sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v43 - 8) + 104))(v44, *MEMORY[0x277D51028], v43);
      swift_willThrow();

      goto LABEL_31;
    }

    v31 = v30;
    sub_22766C000();

    [v29 startTime];
    [v29 duration];
    v32 = [v29 artwork];
    if (v32)
    {
      v33 = v32;
      sub_227662590();
    }

    sub_226EB2904(&qword_27D7BB870, MEMORY[0x277D53A78]);
    sub_2276683D0();
    if (v28)
    {
      break;
    }

    v34 = v46;
    sub_227663620();

    __swift_destroy_boxed_opaque_existential_0(&v59);
    v61 = v17;
    v36 = *(v17 + 16);
    v35 = *(v17 + 24);
    if (v36 >= v35 >> 1)
    {
      sub_226F1F3E8(v35 > 1, v36 + 1, 1);
      v34 = v46;
      v17 = v61;
    }

    *(v17 + 16) = v36 + 1;
    (*(v51 + 32))(v17 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v36, v34, v49);
    sub_22766CBB0();
    if (!v58)
    {
      goto LABEL_23;
    }
  }

  __swift_destroy_boxed_opaque_existential_0(&v59);
  (*(v45[0] + 8))(v53, v54);
LABEL_33:

  return v17;
}

uint64_t sub_227158438(void *a1)
{
  v2 = sub_227663C90();
  v3 = *(v2 - 8);
  v49 = v2;
  v50 = v3;
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v44[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v46 = &v44[-v8];
  v52 = sub_2276622D0();
  v45 = *(v52 - 8);
  v9 = *(v45 + 64);
  MEMORY[0x28223BE20](v52);
  v11 = &v44[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = [a1 count];
  v59 = MEMORY[0x277D84F90];
  sub_226F1F428(0, v12 & ~(v12 >> 63), 0);
  v13 = v59;
  v51 = v11;
  result = sub_22766CA80();
  if (v12 < 0)
  {
    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
    if (v12)
    {
      v47 = v50 + 32;
      v48 = sub_226EB2904(&qword_28139BDF0, MEMORY[0x277CC9178]);
      while (1)
      {
        result = sub_22766CBB0();
        if (!v58)
        {
          goto LABEL_29;
        }

        sub_226E97CC0(v57, &v55);
        type metadata accessor for ManagedTrainerEvent();
        if (!swift_dynamicCast())
        {
          break;
        }

        v15 = v53;
        v16 = [v53 identifier];
        if (!v16)
        {
          goto LABEL_21;
        }

        v17 = v16;
        sub_22766C000();

        v18 = [v15 type];
        if (!v18)
        {

LABEL_21:
          v38 = sub_227664DD0();
          sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040]);
          swift_allocError();
          (*(*(v38 - 8) + 104))(v39, *MEMORY[0x277D51028], v38);
          swift_willThrow();

          (*(v45 + 8))(v51, v52);
LABEL_22:

          __swift_destroy_boxed_opaque_existential_0(v57);
          return v13;
        }

        v19 = v18;
        v20 = sub_22766C000();
        v22 = v21;

        [v15 duration];
        [v15 leadDuration];
        [v15 startTime];
        v53 = v20;
        v54 = v22;
        sub_227158DC8();
        sub_227663AE0();
        sub_227663C20();

        __swift_destroy_boxed_opaque_existential_0(v57);
        v59 = v13;
        v24 = *(v13 + 16);
        v23 = *(v13 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_226F1F428(v23 > 1, v24 + 1, 1);
          v13 = v59;
        }

        *(v13 + 16) = v24 + 1;
        (*(v50 + 32))(v13 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v24, v7, v49);
        if (!--v12)
        {
          goto LABEL_11;
        }
      }

      (*(v45 + 8))(v51, v52);
      v36 = sub_227664DD0();
      sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v36 - 8) + 104))(v37, *MEMORY[0x277D51028], v36);
      swift_willThrow();
      goto LABEL_22;
    }

LABEL_11:
    sub_226EB2904(&qword_28139BDF0, MEMORY[0x277CC9178]);
    sub_22766CBB0();
    if (v56)
    {
      while (1)
      {
        sub_226F04970(&v55, v57);
        sub_226E97CC0(v57, &v55);
        type metadata accessor for ManagedTrainerEvent();
        if (!swift_dynamicCast())
        {
          (*(v45 + 8))(v51, v52);
          v40 = sub_227664DD0();
          sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040]);
          swift_allocError();
          (*(*(v40 - 8) + 104))(v41, *MEMORY[0x277D51028], v40);
          swift_willThrow();
          __swift_destroy_boxed_opaque_existential_0(v57);
          goto LABEL_26;
        }

        v25 = v53;
        v26 = [v53 identifier];
        if (!v26)
        {
          break;
        }

        v27 = v26;
        sub_22766C000();

        v28 = [v25 type];
        if (!v28)
        {

          break;
        }

        v29 = v28;
        v30 = sub_22766C000();
        v32 = v31;

        [v25 duration];
        [v25 leadDuration];
        [v25 startTime];
        v53 = v30;
        v54 = v32;
        v33 = v46;
        sub_227158DC8();
        sub_227663AE0();
        sub_227663C20();

        __swift_destroy_boxed_opaque_existential_0(v57);
        v59 = v13;
        v35 = *(v13 + 16);
        v34 = *(v13 + 24);
        if (v35 >= v34 >> 1)
        {
          sub_226F1F428(v34 > 1, v35 + 1, 1);
          v13 = v59;
        }

        *(v13 + 16) = v35 + 1;
        (*(v50 + 32))(v13 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v35, v33, v49);
        sub_22766CBB0();
        if (!v56)
        {
          goto LABEL_18;
        }
      }

      v42 = sub_227664DD0();
      sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v42 - 8) + 104))(v43, *MEMORY[0x277D51028], v42);
      swift_willThrow();

      __swift_destroy_boxed_opaque_existential_0(v57);
      (*(v45 + 8))(v51, v52);
LABEL_26:
    }

    else
    {
LABEL_18:
      (*(v45 + 8))(v51, v52);
      sub_226E97D1C(&v55, &unk_27D7BC990, &qword_227670A30);
    }

    return v13;
  }

  return result;
}

uint64_t sub_227158D70(uint64_t a1)
{
  result = sub_226EB2904(&qword_27D7BB860, MEMORY[0x277D52300]);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_227158DC8()
{
  result = qword_27D7BB878;
  if (!qword_27D7BB878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BB878);
  }

  return result;
}

void sub_227158E1C(void *a1)
{
  v2 = a1;
  v3 = [a1 modalityIdentifier];
  if (v3)
  {
    v4 = v3;
    sub_22766C000();

    v5 = [v2 filterProperties];
    if (v5)
    {
      v6 = v5;
      v7 = MEMORY[0x22AA99A00]();
      v8 = sub_22715454C(v6);
      if (v1)
      {
        objc_autoreleasePoolPop(v7);

        v2 = v6;
      }

      else
      {
        v13 = v8;
        objc_autoreleasePoolPop(v7);
        sub_226F3EAA8(v13);

        [v2 duration];
        sub_2276673D0();
      }
    }

    else
    {
      v11 = sub_227664DD0();
      sub_227159544(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v11 - 8) + 104))(v12, *MEMORY[0x277D51028], v11);
      swift_willThrow();
    }
  }

  else
  {
    v9 = sub_227664DD0();
    sub_227159544(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v9 - 8) + 104))(v10, *MEMORY[0x277D51028], v9);
    swift_willThrow();
  }
}

void sub_227159074(void *a1, uint64_t a2)
{
  v5 = sub_2276673F0();
  v6 = 0x7FFFFFFFLL;
  if (v5 < 0x7FFFFFFF)
  {
    v6 = v5;
  }

  if (v6 <= 0xFFFFFFFF80000000)
  {
    v7 = 0xFFFFFFFF80000000;
  }

  else
  {
    v7 = v6;
  }

  [a1 setDuration_];
  sub_2276673E0();
  v8 = sub_22766BFD0();

  [a1 setModalityIdentifier_];

  v9 = sub_2276673C0();
  v10 = sub_22764936C(a2, v9);

  if (!v2)
  {
    [a1 setFilterProperties_];
  }
}

size_t static WorkoutPlanScheduledItem.representativeSamples()()
{
  v25 = sub_227667400();
  v0 = *(v25 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v25);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226F05E24();
  v4 = sub_22766CFA0();
  v5 = static WorkoutPlanScheduleFilterProperty.representativeSamples()();
  v6 = sub_226F3EAA8(v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB880, &qword_22767B098);
  v7 = sub_22766C380();
  v7[2] = 3;
  v7[4] = v6;
  v7[5] = v6;
  v7[6] = v6;
  swift_bridgeObjectRetain_n();
  v8 = sub_22766C090();
  v34 = v4;
  v35[0] = v8;
  v35[1] = v35;
  v35[2] = &v34;
  v33 = v7;
  v35[3] = &v33;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96F0, qword_227674920);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB888, &qword_22767B0A0);
  v27 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v28 = sub_226F5BF60(&qword_27D7B8510, &qword_27D7B96F0, qword_227674920);
  v29 = sub_226F5BF60(&qword_27D7BB890, &qword_27D7BB888, &qword_22767B0A0);
  v9 = sub_2276638E0();

  v10 = *(v9 + 16);
  if (v10)
  {
    v26 = MEMORY[0x277D84F90];
    result = sub_226F1F1D0(0, v10, 0);
    v12 = 0;
    v13 = v26;
    v23 = v0 + 32;
    v24 = v0;
    v14 = (v9 + 56);
    while (v12 < *(v9 + 16))
    {
      v15 = v10;
      v16 = *(v14 - 3);
      v17 = *(v14 - 2);
      v18 = v3;
      v19 = *(v14 - 1);
      v20 = *v14;

      sub_2276673D0();
      v26 = v13;
      v22 = *(v13 + 16);
      v21 = *(v13 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_226F1F1D0(v21 > 1, v22 + 1, 1);
        v13 = v26;
      }

      ++v12;
      *(v13 + 16) = v22 + 1;
      result = (*(v24 + 32))(v13 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v22, v18, v25);
      v14 += 4;
      v10 = v15;
      v3 = v18;
      if (v15 == v12)
      {

        return v13;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_2271594EC(uint64_t a1)
{
  result = sub_227159544(&qword_27D7BB898, MEMORY[0x277D52CE0]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_227159544(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22715958C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v29 = MEMORY[0x277D84F90];
  sub_226F20148(0, v1, 0);
  v2 = v29;
  v3 = a1 + 56;
  v4 = -1 << *(a1 + 32);
  result = sub_22766CC90();
  v6 = result;
  v7 = a1;
  v8 = 0;
  v25 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v7 + 32))
  {
    v11 = v6 >> 6;
    if ((*(v3 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v26 = *(v7 + 36);
    v12 = *(*(v7 + 48) + v6);
    sub_227663FB0();
    sub_226ED978C();
    result = sub_227663AE0();
    v13 = v27;
    v15 = *(v29 + 16);
    v14 = *(v29 + 24);
    if (v15 >= v14 >> 1)
    {
      result = sub_226F20148((v14 > 1), v15 + 1, 1);
      v13 = v27;
    }

    *(v29 + 16) = v15 + 1;
    v16 = v29 + 24 * v15;
    *(v16 + 32) = v13;
    *(v16 + 48) = v28;
    v9 = 1 << *(v7 + 32);
    if (v6 >= v9)
    {
      goto LABEL_22;
    }

    v3 = a1 + 56;
    v17 = *(a1 + 56 + 8 * v11);
    if ((v17 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v26 != *(v7 + 36))
    {
      goto LABEL_24;
    }

    v18 = v17 & (-2 << (v6 & 0x3F));
    if (v18)
    {
      v9 = __clz(__rbit64(v18)) | v6 & 0x7FFFFFFFFFFFFFC0;
      v10 = v25;
    }

    else
    {
      v19 = v11 << 6;
      v20 = v11 + 1;
      v21 = (a1 + 64 + 8 * v11);
      v10 = v25;
      while (v20 < (v9 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          result = sub_226EB526C(v6, v26, 0);
          v7 = a1;
          v9 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      result = sub_226EB526C(v6, v26, 0);
      v7 = a1;
    }

LABEL_4:
    ++v8;
    v6 = v9;
    if (v8 == v10)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_2271597F4(uint64_t a1)
{
  v37 = sub_227666650();
  v3 = *(v37 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v29 = v1;
    v41 = MEMORY[0x277D84F90];
    sub_226F1EF90(0, v6, 0);
    v40 = v41;
    v8 = a1 + 56;
    v9 = -1 << *(a1 + 32);
    result = sub_22766CC90();
    v10 = result;
    v11 = 0;
    v34 = v3 + 8;
    v35 = v3 + 16;
    v30 = a1 + 64;
    v31 = v6;
    v32 = v3;
    v33 = a1 + 56;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
    {
      v13 = v10 >> 6;
      if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_22;
      }

      v38 = *(a1 + 36);
      v14 = v36;
      v15 = v37;
      (*(v3 + 16))(v36, *(a1 + 48) + *(v3 + 72) * v10, v37);
      v39 = sub_227666620();
      v17 = v16;
      result = (*(v3 + 8))(v14, v15);
      v18 = v40;
      v41 = v40;
      v20 = *(v40 + 16);
      v19 = *(v40 + 24);
      if (v20 >= v19 >> 1)
      {
        result = sub_226F1EF90(v19 > 1, v20 + 1, 1);
        v18 = v41;
      }

      *(v18 + 16) = v20 + 1;
      v21 = v18 + 16 * v20;
      *(v21 + 32) = v39;
      *(v21 + 40) = v17;
      v12 = 1 << *(a1 + 32);
      if (v10 >= v12)
      {
        goto LABEL_23;
      }

      v8 = v33;
      v22 = *(v33 + 8 * v13);
      if ((v22 & (1 << v10)) == 0)
      {
        goto LABEL_24;
      }

      v40 = v18;
      if (v38 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v23 = v22 & (-2 << (v10 & 0x3F));
      if (v23)
      {
        v12 = __clz(__rbit64(v23)) | v10 & 0x7FFFFFFFFFFFFFC0;
        v3 = v32;
      }

      else
      {
        v24 = v13 << 6;
        v25 = v13 + 1;
        v26 = (v30 + 8 * v13);
        v3 = v32;
        while (v25 < (v12 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_226EB526C(v10, v38, 0);
            v12 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        result = sub_226EB526C(v10, v38, 0);
      }

LABEL_4:
      ++v11;
      v10 = v12;
      if (v11 == v31)
      {
        return v40;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_227159AFC(uint64_t a1)
{
  v50 = sub_227666650();
  v2 = *(v50 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v50);
  v49 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v45 = &v43 - v7;
  MEMORY[0x28223BE20](v6);
  v44 = &v43 - v8;
  v9 = *(a1 + 16);
  v55 = MEMORY[0x277D84F90];
  sub_226F1EF90(0, v9, 0);
  v10 = a1 + 56;
  v11 = v55;
  v12 = -1;
  v13 = -1 << *(a1 + 32);
  if (-v13 < 64)
  {
    v12 = ~(-1 << -v13);
  }

  v14 = v12 & *(a1 + 56);
  v15 = (63 - v13) >> 6;
  v51 = a1;
  v52 = v2;
  v48 = v9;
  if (v9)
  {
    v46 = v2 + 8;
    v47 = v2 + 16;

    v16 = 0;
    v17 = 0;
    while (v14)
    {
      v18 = v11;
LABEL_11:
      v20 = v52;
      v21 = *(a1 + 48) + *(v52 + 72) * (__clz(__rbit64(v14)) | (v17 << 6));
      v22 = v49;
      v23 = v50;
      (*(v52 + 16))(v49, v21, v50);
      v24 = sub_227666620();
      v53 = v25;
      v54 = v24;
      (*(v20 + 8))(v22, v23);
      v11 = v18;
      v55 = v18;
      v27 = *(v18 + 16);
      v26 = *(v18 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_226F1EF90(v26 > 1, v27 + 1, 1);
        v11 = v55;
      }

      ++v16;
      v14 &= v14 - 1;
      *(v11 + 16) = v27 + 1;
      v28 = v11 + 16 * v27;
      v29 = v53;
      *(v28 + 32) = v54;
      *(v28 + 40) = v29;
      a1 = v51;
      if (v16 == v48)
      {
        goto LABEL_16;
      }
    }

    while (1)
    {
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v19 >= v15)
      {
        goto LABEL_29;
      }

      v14 = *(v10 + 8 * v19);
      ++v17;
      if (v14)
      {
        v18 = v11;
        v17 = v19;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {

    v17 = 0;
LABEL_16:
    v30 = v52;
    v53 = v52 + 16;
    v48 = v52 + 8;
    v49 = (v52 + 32);
    if (!v14)
    {
      goto LABEL_18;
    }

    do
    {
      v54 = v11;
LABEL_22:
      v32 = *(a1 + 48) + *(v30 + 72) * (__clz(__rbit64(v14)) | (v17 << 6));
      v33 = v45;
      v34 = v50;
      (*(v30 + 16))(v45, v32, v50);
      v35 = v44;
      (*(v30 + 32))(v44, v33, v34);
      v36 = sub_227666620();
      v38 = v37;
      (*(v30 + 8))(v35, v34);
      v11 = v54;
      v55 = v54;
      v40 = *(v54 + 16);
      v39 = *(v54 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_226F1EF90(v39 > 1, v40 + 1, 1);
        v11 = v55;
      }

      v14 &= v14 - 1;
      *(v11 + 16) = v40 + 1;
      v41 = v11 + 16 * v40;
      *(v41 + 32) = v36;
      *(v41 + 40) = v38;
      a1 = v51;
      v30 = v52;
    }

    while (v14);
LABEL_18:
    while (1)
    {
      v31 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v31 >= v15)
      {

        return v11;
      }

      v14 = *(v10 + 8 * v31);
      ++v17;
      if (v14)
      {
        v54 = v11;
        v17 = v31;
        goto LABEL_22;
      }
    }
  }

  __break(1u);
LABEL_29:

  __break(1u);
  return result;
}

uint64_t sub_227159F08@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v65 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BBA10, &unk_2276720E0);
  v63 = *(v3 - 8);
  v64 = v3;
  v62 = *(v63 + 64);
  v4 = MEMORY[0x28223BE20](v3);
  v61 = v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v59 = v58 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v11 = v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v58 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v66 = v58 - v16;
  MEMORY[0x28223BE20](v15);
  v60 = v58 - v17;
  v18 = sub_22766B390();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A660();
  sub_22766B370();
  (*(v19 + 8))(v22, v18);
  v23 = v2;
  sub_22715BF38();
  v24 = swift_allocObject();
  *(v24 + 16) = sub_22717B550;
  *(v24 + 24) = v2;
  v25 = *(v8 + 16);
  v72 = v8 + 16;
  v73 = v25;
  v25(v11, v14, v7);
  v26 = *(v8 + 80);
  v70 = (v26 + 16) & ~v26;
  v71 = v26;
  v27 = v70;
  v28 = (v9 + v70 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  v67 = *(v8 + 32);
  v30 = v29 + v27;
  v31 = v7;
  v67(v30, v11, v7);
  v58[1] = v8 + 32;
  v32 = (v29 + v28);
  *v32 = sub_227086964;
  v32[1] = v24;

  v33 = v66;
  sub_227669270();
  v34 = *(v8 + 8);
  v68 = v8 + 8;
  v69 = v34;
  v34(v14, v7);
  v35 = v23;
  v36 = *__swift_project_boxed_opaque_existential_0((v23 + 624), *(v23 + 648));
  v75[3] = type metadata accessor for RecommendationScriptClient();
  v75[4] = &off_283AAE7D8;
  v75[0] = v36;
  sub_226E91B50(v75, v74);
  v37 = swift_allocObject();
  sub_226E92AB8(v74, v37 + 16);

  __swift_destroy_boxed_opaque_existential_0(v75);
  v38 = swift_allocObject();
  *(v38 + 16) = sub_22717B558;
  *(v38 + 24) = v37;
  v73(v14, v33, v31);
  v58[0] = v28;
  v39 = swift_allocObject();
  v40 = v31;
  v67(v39 + v70, v14, v31);
  v41 = (v39 + v28);
  *v41 = sub_226F09740;
  v41[1] = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBA20, &qword_22767B6C0);
  v42 = v59;
  sub_227669270();
  v69(v33, v40);
  v43 = swift_allocObject();
  *(v43 + 16) = sub_22717B588;
  *(v43 + 24) = v35;
  v45 = v63;
  v44 = v64;
  v46 = v61;
  (*(v63 + 16))(v61, v42, v64);
  v47 = (*(v45 + 80) + 16) & ~*(v45 + 80);
  v48 = (v62 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
  v49 = swift_allocObject();
  (*(v45 + 32))(v49 + v47, v46, v44);
  v50 = (v49 + v48);
  *v50 = sub_227086814;
  v50[1] = v43;

  v51 = v60;
  sub_227669270();
  (*(v45 + 8))(v42, v44);
  v52 = v66;
  v53 = v51;
  v73(v66, v51, v40);
  v54 = v58[0];
  v55 = swift_allocObject();
  v67(v55 + v70, v52, v40);
  v56 = (v55 + v54);
  *v56 = sub_22715CBF4;
  v56[1] = 0;
  sub_227669270();
  return (v69)(v53, v40);
}

uint64_t sub_22715A67C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v16 - v3;
  v5 = sub_22766B390();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A660();
  v10 = sub_22766B380();
  v11 = sub_22766C8B0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_226E8E000, v10, v11, "[RecommendationSystem] catalog updated, evaluating recommendations", v12, 2u);
    MEMORY[0x22AA9A450](v12, -1, -1);
  }

  (*(v6 + 8))(v9, v5);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_227159F08(v4);

    v14 = sub_227669290();
    v15 = swift_allocObject();
    *(v15 + 16) = 0;
    *(v15 + 24) = 0;
    v14(sub_226EB4544, v15);

    return (*(v1 + 8))(v4, v0);
  }

  return result;
}

uint64_t sub_22715A91C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v23[1] = a3;
  v24 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v23 - v8;
  v10 = sub_22766B390();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A660();
  v15 = sub_22766B380();
  v16 = sub_22766C8B0();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = a2;
    v19 = v17;
    *v17 = 0;
    _os_log_impl(&dword_226E8E000, v15, v16, v18, v17, 2u);
    MEMORY[0x22AA9A450](v19, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_227159F08(v9);

    v21 = sub_227669290();
    v22 = swift_allocObject();
    *(v22 + 16) = 0;
    *(v22 + 24) = 0;
    v21(v24, v22);

    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

uint64_t sub_22715ABAC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5)
{
  v22[0] = a5;
  v22[1] = a2;
  v6 = sub_227669910();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22766B390();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A660();
  v16 = sub_22766B380();
  v17 = sub_22766C8B0();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = a4;
    v20 = v18;
    *v18 = 0;
    _os_log_impl(&dword_226E8E000, v16, v17, v19, v18, 2u);
    MEMORY[0x22AA9A450](v20, -1, -1);
  }

  (*(v12 + 8))(v15, v11);
  swift_getObjectType();
  (*(v7 + 104))(v10, *v22[0], v6);
  sub_227669660();
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_22715ADD0(uint64_t a1, uint64_t a2)
{
  v2[5] = a2;
  v3 = sub_22766B390();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22715AE90, 0, 0);
}

uint64_t sub_22715AE90()
{
  v1 = v0[8];
  sub_22766A660();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_226E8E000, v2, v3, "[RecommendationSystem] scheduled private data activity", v4, 2u);
    MEMORY[0x22AA9A450](v4, -1, -1);
  }

  v6 = v0[7];
  v5 = v0[8];
  v8 = v0[5];
  v7 = v0[6];

  (*(v6 + 8))(v5, v7);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v10 = swift_task_alloc();
    v0[10] = v10;
    *v10 = v0;
    v10[1] = sub_22715B02C;

    return sub_22715B14C();
  }

  else
  {
    v12 = v0[8];

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_22715B02C()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;

  if (v0)
  {
  }

  v5 = *(v2 + 72);

  v6 = *(v2 + 64);

  v7 = *(v4 + 8);

  return v7();
}

uint64_t sub_22715B14C()
{
  v1[6] = v0;
  v2 = sub_22766B390();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22715B218, 0, 0);
}

uint64_t sub_22715B218()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[6];
  sub_22766A660();
  sub_22766B370();
  v5 = *(v3 + 8);
  v0[11] = v5;
  v0[12] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v2);
  v6 = v4[71];
  __swift_project_boxed_opaque_existential_0(v4 + 67, v4[70]);
  v7 = *(v6 + 24);

  v12 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[13] = v9;
  *v9 = v0;
  v9[1] = sub_22715B3E8;
  v10 = v0[6];

  return v12();
}

uint64_t sub_22715B3E8()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_22715B594;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_22715B504;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22715B504()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = *__swift_project_boxed_opaque_existential_0((v0[6] + 792), *(v0[6] + 816));
  sub_2271D7EE8();

  v4 = v0[1];

  return v4();
}

uint64_t sub_22715B594()
{
  v29 = v0;
  v1 = v0[14];
  v2 = v0[9];
  v3 = v0[6];

  sub_22766A660();
  v4 = v1;
  v5 = sub_22766B380();
  v6 = sub_22766C890();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[14];
    v8 = v0[11];
    v27 = v0[12];
    v9 = v0[9];
    v10 = v0[7];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v28 = v12;
    *v11 = 136315138;
    swift_getErrorValue();
    v13 = v0[2];
    v14 = MEMORY[0x22AA995D0](v0[3], v0[4]);
    v16 = sub_226E97AE8(v14, v15, &v28);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_226E8E000, v5, v6, "[RecommendationSystem] Failed to deduplicate onboarding survey results: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x22AA9A450](v12, -1, -1);
    MEMORY[0x22AA9A450](v11, -1, -1);

    v8(v9, v10);
  }

  else
  {
    v18 = v0[11];
    v17 = v0[12];
    v19 = v0[9];
    v20 = v0[7];

    v18(v19, v20);
  }

  v21 = v0[14];
  v22 = v0[9];
  v23 = v0[10];
  swift_willThrow();

  v24 = v0[1];
  v25 = v0[14];

  return v24();
}

uint64_t sub_22715B770()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  __swift_destroy_boxed_opaque_existential_0((v0 + 136));
  __swift_destroy_boxed_opaque_existential_0((v0 + 176));
  __swift_destroy_boxed_opaque_existential_0((v0 + 216));
  __swift_destroy_boxed_opaque_existential_0((v0 + 256));
  __swift_destroy_boxed_opaque_existential_0((v0 + 296));
  __swift_destroy_boxed_opaque_existential_0((v0 + 336));
  __swift_destroy_boxed_opaque_existential_0((v0 + 376));
  v1 = *(v0 + 416);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 432));
  __swift_destroy_boxed_opaque_existential_0((v0 + 472));
  __swift_destroy_boxed_opaque_existential_0((v0 + 536));
  __swift_destroy_boxed_opaque_existential_0((v0 + 584));
  __swift_destroy_boxed_opaque_existential_0((v0 + 624));
  __swift_destroy_boxed_opaque_existential_0((v0 + 664));
  __swift_destroy_boxed_opaque_existential_0((v0 + 704));
  __swift_destroy_boxed_opaque_existential_0((v0 + 744));
  v2 = *(v0 + 784);

  __swift_destroy_boxed_opaque_existential_0((v0 + 792));
  __swift_destroy_boxed_opaque_existential_0((v0 + 832));
  v3 = *(v0 + 872);

  __swift_destroy_boxed_opaque_existential_0((v0 + 880));

  v4 = OBJC_IVAR____TtC15SeymourServices20RecommendationSystem__journalPersonalizationRequests;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t sub_22715B8A4()
{
  sub_22715B770();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RecommendationSystem()
{
  result = qword_2813A0CE0;
  if (!qword_2813A0CE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22715B950()
{
  sub_226F57660();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_22715BA54@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v23[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v7 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = v23 - v8;
  v10 = sub_22766B390();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A660();
  sub_22766B370();
  (*(v11 + 8))(v14, v10);
  v15 = v2[70];
  v16 = v2[71];
  __swift_project_boxed_opaque_existential_0(v2 + 67, v15);

  sub_226ECF5D8(sub_22717B688, v2, v15, MEMORY[0x277D84F78] + 8, v16, v9);

  v17 = swift_allocObject();
  *(v17 + 16) = sub_22717B6A4;
  *(v17 + 24) = v2;
  (*(v4 + 16))(v7, v9, v3);
  v18 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v19 = (v5 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  (*(v4 + 32))(v20 + v18, v7, v3);
  v21 = (v20 + v19);
  *v21 = sub_226F32FEC;
  v21[1] = v17;

  sub_227669270();
  return (*(v4 + 8))(v9, v3);
}

char *sub_22715BD6C(void *a1, uint64_t a2)
{
  result = sub_22734441C(a1);
  if (!v2)
  {
    v6 = result;
    sub_22734466C(a1);
    v7 = *__swift_project_boxed_opaque_existential_0((a2 + 792), *(a2 + 816));
    v8 = sub_227159AFC(v6);

    sub_2272D7D58(1, v8, a1);
  }

  return result;
}

uint64_t sub_22715BE1C(uint64_t a1, void *a2)
{
  v3 = sub_22766A430();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *__swift_project_boxed_opaque_existential_0(a2 + 99, a2[102]);
  sub_2271D7EE8();
  v9 = a2[52];
  v10 = a2[53];
  swift_getObjectType();
  sub_22766A420();
  sub_2276699D0();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_22715BF38()
{
  v1 = v0;
  v2 = sub_22766A8A0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22766B390();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A660();
  sub_22766B370();
  (*(v8 + 8))(v11, v7);
  v12 = *(v1 + 576);
  v13 = sub_2276693C0();
  (*(v3 + 104))(v6, *MEMORY[0x277D4F960], v2);
  LOBYTE(v1) = sub_226EC9A38(v6, v13);

  (*(v3 + 8))(v6, v2);
  if (v1)
  {
    return sub_2276692A0();
  }

  v15 = sub_227665A50();
  sub_22717B7C4(&qword_28139B778, MEMORY[0x277D51B70]);
  v16 = swift_allocError();
  (*(*(v15 - 8) + 104))(v17, *MEMORY[0x277D51B30], v15);
  *(swift_allocObject() + 16) = v16;
  return sub_227669280();
}

uint64_t sub_22715C210(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = "SeymourServices/RecommendationSystem.swift";
  *(v2 + 24) = 42;
  *(v2 + 32) = 2;
  *(v2 + 40) = 424;
  *(v2 + 48) = &unk_22767B6D8;
  *(v2 + 56) = a1;

  return sub_227669270();
}

uint64_t sub_22715C2C8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BBA10, &unk_2276720E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  v9 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v10 = *(*__swift_project_boxed_opaque_existential_0((*v9 + 16), *(*v9 + 40)) + 24);
  sub_22728B1A0(9, 0, 0, v8);
  sub_2272A6AC0(v8, a2);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_22715C3E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v72 = *(v74 - 8);
  v3 = *(v72 + 64);
  v4 = MEMORY[0x28223BE20](v74);
  v69 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v5;
  MEMORY[0x28223BE20](v4);
  v70 = &v68 - v6;
  v7 = sub_227664410();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v78 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v84 = &v68 - v12;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v68 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v68 - v22;
  sub_22766A660();
  sub_22766B370();
  v24 = *(v14 + 8);
  v86 = v14 + 8;
  v87 = v13;
  v85 = v24;
  v24(v23, v13);
  sub_22766A660();
  v88 = a1;

  v25 = sub_22766B380();
  v26 = sub_22766C8B0();
  v27 = os_log_type_enabled(v25, v26);
  v77 = v8;
  if (v27)
  {
    v28 = swift_slowAlloc();
    *v28 = 134349056;
    *(v28 + 4) = *(v88 + 16);

    _os_log_impl(&dword_226E8E000, v25, v26, "Inserting %{public}ld recommendations", v28, 0xCu);
    v8 = v77;
    MEMORY[0x22AA9A450](v28, -1, -1);
  }

  else
  {
  }

  v85(v21, v87);
  v29 = v88 + 56;
  v30 = 1 << *(v88 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & *(v88 + 56);
  v33 = (v30 + 63) >> 6;
  v82 = v8 + 32;
  v83 = v8 + 16;
  v81 = (v8 + 8);

  v35 = 0;
  *&v36 = 136446210;
  v76 = v36;
  v37 = v78;
  v38 = v18;
  v75 = v18;
  if (v32)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v39 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      break;
    }

    if (v39 >= v33)
    {
      v53 = v88;

      v54 = v71;
      v55 = v71[70];
      v56 = v71[71];
      __swift_project_boxed_opaque_existential_0(v71 + 67, v55);
      v57 = swift_allocObject();
      *(v57 + 16) = v54;
      *(v57 + 24) = v53;

      v58 = v70;
      sub_226ECF5D8(sub_22717B5B4, v57, v55, MEMORY[0x277D84F78] + 8, v56, v70);

      v59 = swift_allocObject();
      *(v59 + 16) = sub_22717B5D0;
      *(v59 + 24) = v54;
      v60 = swift_allocObject();
      *(v60 + 16) = sub_226EB4A28;
      *(v60 + 24) = v59;
      v61 = v72;
      v62 = v69;
      v63 = v74;
      (*(v72 + 16))(v69, v58, v74);
      v64 = (*(v61 + 80) + 16) & ~*(v61 + 80);
      v65 = (v68 + v64 + 7) & 0xFFFFFFFFFFFFFFF8;
      v66 = swift_allocObject();
      (*(v61 + 32))(v66 + v64, v62, v63);
      v67 = (v66 + v65);
      *v67 = sub_226EBFB9C;
      v67[1] = v60;

      sub_227669270();
      return (*(v61 + 8))(v58, v63);
    }

    v32 = *(v29 + 8 * v39);
    ++v35;
    if (v32)
    {
      while (1)
      {
        v40 = __clz(__rbit64(v32));
        v32 &= v32 - 1;
        v41 = v84;
        (*(v8 + 16))(v84, *(v88 + 48) + *(v8 + 72) * (v40 | (v39 << 6)), v7);
        sub_22766A660();
        (*(v8 + 32))(v37, v41, v7);
        v42 = v38;
        v43 = sub_22766B380();
        v44 = sub_22766C8B0();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          v79 = v45;
          v80 = swift_slowAlloc();
          v89 = v80;
          *v45 = v76;
          sub_22717B7C4(&qword_27D7BBA38, MEMORY[0x277D508B0]);
          v46 = sub_22766D140();
          v47 = v7;
          v49 = v48;
          (*v81)(v37, v47);
          v50 = sub_226E97AE8(v46, v49, &v89);
          v7 = v47;

          v51 = v79;
          *(v79 + 1) = v50;
          _os_log_impl(&dword_226E8E000, v43, v44, "Inserting %{public}s", v51, 0xCu);
          v52 = v80;
          __swift_destroy_boxed_opaque_existential_0(v80);
          MEMORY[0x22AA9A450](v52, -1, -1);
          v8 = v77;
          MEMORY[0x22AA9A450](v51, -1, -1);

          v38 = v75;
          result = (v85)(v75, v87);
          v35 = v39;
          v37 = v78;
          if (!v32)
          {
            goto LABEL_10;
          }
        }

        else
        {

          (*v81)(v37, v7);
          result = (v85)(v42, v87);
          v35 = v39;
          v38 = v42;
          if (!v32)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v39 = v35;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22715CBF4(uint64_t a1)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = *(a1 + 8);
  sub_22766A660();
  sub_226F04AAC(v7, v8);
  v9 = sub_22766B380();
  v10 = sub_22766C8B0();
  sub_226EB4548(v7, v8);
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = v12;
    *v11 = 136446210;
    v19[1] = v7;
    v20 = v8;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BBA28, &qword_22767B6C8);
    v14 = sub_226E9CFD0(&qword_2813989E0, &unk_27D7BBA28, &qword_22767B6C8);
    v15 = MEMORY[0x22AA958B0](v13, v14);
    v17 = sub_226E97AE8(v15, v16, &v21);

    *(v11 + 4) = v17;
    _os_log_impl(&dword_226E8E000, v9, v10, "[RecommendationSystem] evaluateAllRecommendations result: %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x22AA9A450](v12, -1, -1);
    MEMORY[0x22AA9A450](v11, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_22715CE14@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3A0, &unk_22767A2A0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = sub_22766B390();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A660();
  sub_22766B370();
  (*(v10 + 8))(v13, v9);
  v14 = __swift_project_boxed_opaque_existential_0((v2 + 624), *(v2 + 648));
  v15 = *(*__swift_project_boxed_opaque_existential_0((*v14 + 16), *(*v14 + 40)) + 24);
  sub_227288FBC(12, 0, 0, v8);
  sub_2272A4624(v8, a1);
  return (*(v5 + 8))(v8, v4);
}

char *sub_22715D004@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  result = sub_227344918(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_22715D030()
{
  v1[3] = v0;
  v2 = sub_22766B390();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22715D0F0, 0, 0);
}

uint64_t sub_22715D0F0()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  sub_22766A660();
  sub_22766B370();
  (*(v2 + 8))(v1, v3);
  v5 = v4[70];
  v6 = v4[71];
  __swift_project_boxed_opaque_existential_0(v4 + 67, v5);
  v7 = *(v6 + 24);

  v13 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[7] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8D80, &unk_227672090);
  *v9 = v0;
  v9[1] = sub_226F9D924;
  v11 = v0[3];

  return (v13)(v0 + 2, sub_22717A800, v11, v10, v5, v6);
}

uint64_t sub_22715D2C4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_22766B390();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22715D384, 0, 0);
}

uint64_t sub_22715D384()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  sub_22766A660();
  sub_22766B370();
  (*(v2 + 8))(v1, v3);
  v5 = v4[70];
  v6 = v4[71];
  __swift_project_boxed_opaque_existential_0(v4 + 67, v5);
  v7 = *(v6 + 24);

  v14 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[7] = v9;
  v10 = sub_227666650();
  *v9 = v0;
  v9[1] = sub_226FC1FE0;
  v11 = v0[2];
  v12 = v0[3];

  return (v14)(v11, sub_22717A82C, v12, v10, v5, v6);
}

char *sub_22715D548@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB8C0, &qword_22767F780);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14 - v7;
  result = sub_22734441C(a1);
  if (!v2)
  {
    sub_226F75D68(result, v8);

    v10 = sub_227666650();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v8, 1, v10) == 1)
    {
      sub_226E97D1C(v8, &unk_27D7BB8C0, &qword_22767F780);
      v12 = sub_227665A50();
      sub_22717B7C4(&qword_28139B778, MEMORY[0x277D51B70]);
      swift_allocError();
      (*(*(v12 - 8) + 104))(v13, *MEMORY[0x277D51B48], v12);
      return swift_willThrow();
    }

    else
    {
      return (*(v11 + 32))(a2, v8, v10);
    }
  }

  return result;
}

char *sub_22715D730@<X0>(void *a1@<X0>, uint64_t a2@<X2>, char **a3@<X8>)
{
  result = sub_227344DFC(a2, a1);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_22715D764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v32 = a1;
  v36 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v9);
  v11 = &v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8D90, &unk_22767B290);
  v34 = *(v12 - 8);
  v35 = v12;
  v13 = *(v34 + 64);
  MEMORY[0x28223BE20](v12);
  v33 = &v31 - v14;
  v15 = sub_22766B390();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A660();
  sub_22766B370();
  (*(v16 + 8))(v19, v15);
  v20 = __swift_project_boxed_opaque_existential_0((v4 + 624), *(v4 + 648));
  v21 = *(*__swift_project_boxed_opaque_existential_0((*v20 + 16), *(*v20 + 40)) + 24);
  v22 = swift_allocObject();
  *(v22 + 16) = v32;
  *(v22 + 24) = a2;

  sub_227669280();
  v23 = swift_allocObject();
  *(v23 + 16) = v21;
  *(v23 + 24) = 13;
  v24 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v24, v11, v6);
  v25 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v26 = (v8 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  (*(v7 + 32))(v27 + v25, v24, v6);
  v28 = (v27 + v26);
  *v28 = sub_22717A7A8;
  v28[1] = v23;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB8B0, &unk_22767E490);
  v29 = v33;
  sub_227669270();
  (*(v7 + 8))(v11, v6);
  sub_2272A55D0(v29, v36);
  return (*(v34 + 8))(v29, v35);
}

uint64_t sub_22715DB54@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA360, &qword_2276720F0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = sub_22766B390();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A680();
  sub_22766B370();
  (*(v10 + 8))(v13, v9);
  v14 = __swift_project_boxed_opaque_existential_0((v2 + 624), *(v2 + 648));
  v15 = *(*__swift_project_boxed_opaque_existential_0((*v14 + 16), *(*v14 + 40)) + 16);
  sub_227289554(14, 0, 0, v8);
  sub_2272A4B68(v8, a1);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_22715DD44()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BBA00, &qword_227684DA0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  v9 = sub_22766B390();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A660();
  sub_22766B370();
  (*(v10 + 8))(v13, v9);
  v14 = __swift_project_boxed_opaque_existential_0((v1 + 624), *(v1 + 648));
  v15 = *(*__swift_project_boxed_opaque_existential_0((*v14 + 16), *(*v14 + 40)) + 16);
  sub_227289B0C(2, 0, 0, v6);
  sub_2272A509C(v6, v8);
  v16 = *(v3 + 8);
  v16(v6, v2);
  (*(v3 + 16))(v6, v8, v2);
  v17 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v18 = swift_allocObject();
  (*(v3 + 32))(v18 + v17, v6, v2);
  v19 = (v18 + ((v4 + v17 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v19 = sub_22715E028;
  v19[1] = 0;
  sub_227664DC0();
  sub_227669270();
  return (v16)(v8, v2);
}

uint64_t sub_22715E028(uint64_t a1)
{
  v2 = sub_22766B390();
  v42 = *(v2 - 8);
  v43 = v2;
  v3 = *(v42 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v41 = &v39 - v7;
  v8 = sub_227664DC0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v39 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD750, &unk_22767B6B0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = (&v39 - v18);
  sub_226E93170(a1, &v39 - v18, &unk_27D7BD750, &unk_22767B6B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *v19;
    sub_22766A660();
    v21 = v20;
    v22 = sub_22766B380();
    v23 = sub_22766C890();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138543362;
      v26 = v20;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 4) = v27;
      *v25 = v27;
      _os_log_impl(&dword_226E8E000, v22, v23, "[Onboarding] Failed fetching onboarding detail: %{public}@", v24, 0xCu);
      sub_226E97D1C(v25, &unk_27D7B9660, &qword_2276740C0);
      MEMORY[0x22AA9A450](v25, -1, -1);
      MEMORY[0x22AA9A450](v24, -1, -1);
    }

    else
    {
    }

    return (*(v42 + 8))(v6, v43);
  }

  else
  {
    (*(v9 + 32))(v15, v19, v8);
    sub_22766A660();
    (*(v9 + 16))(v13, v15, v8);
    v28 = sub_22766B380();
    v29 = sub_22766C8B0();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v44 = v31;
      *v30 = 136315138;
      sub_22717B7C4(&qword_28139B8E0, MEMORY[0x277D50FD0]);
      v32 = sub_22766D140();
      v34 = v33;
      v40 = v15;
      v35 = *(v9 + 8);
      v35(v13, v8);
      v36 = sub_226E97AE8(v32, v34, &v44);

      *(v30 + 4) = v36;
      _os_log_impl(&dword_226E8E000, v28, v29, "[Onboarding] Fetched onboarding detail: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x22AA9A450](v31, -1, -1);
      MEMORY[0x22AA9A450](v30, -1, -1);

      (*(v42 + 8))(v41, v43);
      return (v35)(v40, v8);
    }

    else
    {

      v38 = *(v9 + 8);
      v38(v13, v8);
      (*(v42 + 8))(v41, v43);
      return (v38)(v15, v8);
    }
  }
}

uint64_t sub_22715E524(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = sub_227669890();
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v6 = *(v5 + 64) + 15;
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22715E5E8, 0, 0);
}

uint64_t sub_22715E5E8()
{
  v1 = v0[12];
  sub_22766A7F0();
  sub_226E9DD3C("fetchPersonalizationInferenceResponse", 37, 2, &dword_226E8E000, 1, v0 + 2);
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_22715E6B0;
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[7];

  return sub_22715E7C4(v5, v3, v4);
}

uint64_t sub_22715E6B0()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_22717B82C;
  }

  else
  {
    v3 = sub_22717B834;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22715E7C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_227668F90();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v3[7] = *(v5 + 64);
  v3[8] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB9B8, &qword_22767B638) - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v7 = swift_task_alloc();
  v3[11] = v7;
  *v7 = v3;
  v7[1] = sub_22715E904;

  return sub_22715F258();
}

uint64_t sub_22715E904()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;

  if (v0)
  {
    v6 = v2[9];
    v5 = v2[10];
    v7 = v2[8];

    v8 = *(v4 + 8);

    return v8();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22715EA5C, 0, 0);
  }
}

uint64_t sub_22715EA5C()
{
  v1 = v0[4];
  v2 = *(v0[3] + 872);
  v3 = sub_227668F80();
  if (*(v2 + 16) && (v4 = sub_226F3B210(v3), (v5 & 1) != 0))
  {
    v7 = v0[7];
    v6 = v0[8];
    v8 = v0[5];
    v9 = v0[6];
    v11 = v0[3];
    v10 = v0[4];
    v0[12] = *(*(v2 + 56) + 8 * v4);
    (*(v9 + 16))(v6, v10, v8);
    v12 = (*(v9 + 80) + 24) & ~*(v9 + 80);
    v13 = swift_allocObject();
    v0[13] = v13;
    *(v13 + 16) = v11;
    (*(v9 + 32))(v13 + v12, v6, v8);
    v14 = *(MEMORY[0x277D4FAF0] + 4);

    v15 = swift_task_alloc();
    v0[14] = v15;
    *v15 = v0;
    v15[1] = sub_22715EE28;
    v16 = v0[10];

    return MEMORY[0x2821AFC88](v16, &unk_22767B648, v13);
  }

  else
  {
    v18 = v0[9];
    v17 = v0[10];
    v19 = sub_2276689A0();
    v20 = *(v19 - 8);
    (*(v20 + 56))(v17, 1, 1, v19);
    sub_226E93170(v17, v18, &qword_27D7BB9B8, &qword_22767B638);
    if ((*(v20 + 48))(v18, 1, v19) == 1)
    {
      v21 = v0[10];
      sub_226E97D1C(v0[9], &qword_27D7BB9B8, &qword_22767B638);
      v22 = sub_227665A50();
      sub_22717B7C4(&qword_28139B778, MEMORY[0x277D51B70]);
      swift_allocError();
      (*(*(v22 - 8) + 104))(v23, *MEMORY[0x277D51B58], v22);
      swift_willThrow();
      sub_226E97D1C(v21, &qword_27D7BB9B8, &qword_22767B638);
      v25 = v0[9];
      v24 = v0[10];
      v26 = v0[8];
    }

    else
    {
      v28 = v0[9];
      v29 = v0[8];
      v30 = v0[2];
      sub_226E97D1C(v0[10], &qword_27D7BB9B8, &qword_22767B638);
      (*(v20 + 32))(v30, v28, v19);
    }

    v27 = v0[1];

    return v27();
  }
}

uint64_t sub_22715EE28()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v8 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_22715F1C8;
  }

  else
  {
    v6 = *(v2 + 96);
    v5 = *(v2 + 104);

    v4 = sub_22715EF4C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22715EF4C()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = sub_2276689A0();
  v4 = *(v3 - 8);
  (*(v4 + 56))(v1, 0, 1, v3);
  sub_226E93170(v1, v2, &qword_27D7BB9B8, &qword_22767B638);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    v5 = v0[10];
    sub_226E97D1C(v0[9], &qword_27D7BB9B8, &qword_22767B638);
    v6 = sub_227665A50();
    sub_22717B7C4(&qword_28139B778, MEMORY[0x277D51B70]);
    swift_allocError();
    (*(*(v6 - 8) + 104))(v7, *MEMORY[0x277D51B58], v6);
    swift_willThrow();
    sub_226E97D1C(v5, &qword_27D7BB9B8, &qword_22767B638);
    v9 = v0[9];
    v8 = v0[10];
    v10 = v0[8];
  }

  else
  {
    v12 = v0[9];
    v13 = v0[8];
    v14 = v0[2];
    sub_226E97D1C(v0[10], &qword_27D7BB9B8, &qword_22767B638);
    (*(v4 + 32))(v14, v12, v3);
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_22715F1C8()
{
  v2 = v0[12];
  v1 = v0[13];

  v3 = v0[15];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[8];

  v7 = v0[1];

  return v7();
}

uint64_t sub_22715F258()
{
  v1[7] = v0;
  v2 = sub_227669890();
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v4 = *(v3 + 64) + 15;
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22715F318, 0, 0);
}

uint64_t sub_22715F318()
{
  v1 = v0[10];
  sub_22766A7F0();
  sub_226E9DD3C("syncCatalogIfNeeded", 19, 2, &dword_226E8E000, 1, v0 + 2);
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_22715F3D8;
  v3 = v0[7];

  return sub_227178508(v2, v3);
}

uint64_t sub_22715F3D8()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_22715F5AC;
  }

  else
  {
    v3 = sub_22715F4EC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22715F4EC()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  sub_227669930();
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_22715F5AC()
{
  v1 = v0[12];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];
  v5 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  sub_227669930();
  swift_willThrow();
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  sub_227669920();
  (*(v3 + 8))(v2, v4);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v7 = v0[1];
  v8 = v0[12];

  return v7();
}

uint64_t sub_22715F6A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB9C0, &qword_22767B650) - 8) + 64) + 15;
  v3[13] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB9C8, &unk_22767B658) - 8) + 64) + 15;
  v3[14] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB9D0, &qword_227671550) - 8) + 64) + 15;
  v3[15] = swift_task_alloc();
  v8 = sub_2276689A0();
  v3[16] = v8;
  v9 = *(v8 - 8);
  v3[17] = v9;
  v10 = *(v9 + 64) + 15;
  v3[18] = swift_task_alloc();
  v11 = sub_227662750();
  v3[19] = v11;
  v12 = *(v11 - 8);
  v3[20] = v12;
  v13 = *(v12 + 64) + 15;
  v3[21] = swift_task_alloc();
  v14 = sub_2276627D0();
  v3[22] = v14;
  v15 = *(v14 - 8);
  v3[23] = v15;
  v16 = *(v15 + 64) + 15;
  v3[24] = swift_task_alloc();
  v17 = sub_22766C940();
  v3[25] = v17;
  v18 = *(v17 - 8);
  v3[26] = v18;
  v19 = *(v18 + 64) + 15;
  v3[27] = swift_task_alloc();
  v20 = sub_22766CA10();
  v3[28] = v20;
  v21 = *(*(v20 - 8) + 64) + 15;
  v3[29] = swift_task_alloc();
  v22 = *(*(sub_22766B3F0() - 8) + 64) + 15;
  v3[30] = swift_task_alloc();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  v3[31] = v23;
  v24 = *(v23 - 8);
  v3[32] = v24;
  v25 = *(v24 + 64) + 15;
  v3[33] = swift_task_alloc();
  v26 = sub_2276624A0();
  v3[34] = v26;
  v27 = *(v26 - 8);
  v3[35] = v27;
  v28 = *(v27 + 64) + 15;
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v29 = type metadata accessor for TransportSerializableJournalRecorder();
  v3[38] = v29;
  v30 = *(*(v29 - 8) + 64) + 15;
  v3[39] = swift_task_alloc();
  v31 = sub_227668850();
  v3[40] = v31;
  v32 = *(v31 - 8);
  v3[41] = v32;
  v33 = *(v32 + 64) + 15;
  v34 = swift_task_alloc();
  v3[42] = v34;
  v35 = swift_task_alloc();
  v3[43] = v35;
  *v35 = v3;
  v35[1] = sub_22715FB54;
  v36 = *MEMORY[0x277D85DE8];

  return sub_227161098(v34, a3);
}

uint64_t sub_22715FB54()
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 344);
  v7 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v3 = sub_227160DC0;
  }

  else
  {
    v3 = sub_22715FC94;
  }

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22715FC94()
{
  v76 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 352);
  v2 = *(v0 + 336);
  v3 = *(v0 + 320);
  sub_22717B7C4(&qword_28139B488, MEMORY[0x277D53618]);
  v4 = sub_2276683E0();
  if (v1)
  {
    (*(*(v0 + 328) + 8))(*(v0 + 336), *(v0 + 320));
LABEL_10:
    v42 = *(v0 + 336);
    v43 = *(v0 + 312);
    v45 = *(v0 + 288);
    v44 = *(v0 + 296);
    v46 = *(v0 + 264);
    v48 = *(v0 + 232);
    v47 = *(v0 + 240);
    v49 = *(v0 + 216);
    v50 = *(v0 + 192);
    v51 = *(v0 + 168);
    v69 = *(v0 + 144);
    v71 = *(v0 + 120);
    v73 = *(v0 + 112);
    v75 = *(v0 + 104);

    v52 = *(v0 + 8);
    v53 = *MEMORY[0x277D85DE8];

    return v52();
  }

  v6 = v4;
  v7 = v5;
  v8 = objc_opt_self();
  *(v0 + 360) = v8;
  v9 = sub_227662560();
  sub_226EDC420(v6, v7);
  *(v0 + 48) = 0;
  v10 = [v8 JSONObjectWithData:v9 options:0 error:v0 + 48];

  v11 = *(v0 + 48);
  if (!v10)
  {
    v33 = *(v0 + 328);
    v34 = *(v0 + 336);
    v35 = *(v0 + 320);
    v36 = v11;
    sub_2276622C0();

    swift_willThrow();
    (*(v33 + 8))(v34, v35);
    goto LABEL_10;
  }

  v12 = v11;
  sub_22766CC20();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB9E0, &unk_22767B668);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v38 = *(v0 + 328);
    v37 = *(v0 + 336);
    v39 = *(v0 + 320);
    v40 = sub_227665A50();
    sub_22717B7C4(&qword_28139B778, MEMORY[0x277D51B70]);
    swift_allocError();
    (*(*(v40 - 8) + 104))(v41, *MEMORY[0x277D51B20], v40);
    swift_willThrow();
    (*(v38 + 8))(v37, v39);
    goto LABEL_10;
  }

  v72 = *(v0 + 336);
  v61 = *(v0 + 304);
  v62 = *(v0 + 312);
  v13 = *(v0 + 288);
  v15 = *(v0 + 272);
  v14 = *(v0 + 280);
  v16 = *(v0 + 256);
  v17 = *(v0 + 264);
  v18 = *(v0 + 248);
  v55 = *(v0 + 240);
  v57 = *(v0 + 232);
  v19 = *(v0 + 208);
  v58 = *(v0 + 216);
  v59 = *(v0 + 200);
  v60 = *(v0 + 296);
  v65 = *(v0 + 192);
  v66 = *(v0 + 176);
  v67 = *(v0 + 184);
  v68 = *(v0 + 168);
  v70 = *(v0 + 160);
  v74 = *(v0 + 152);
  v20 = *(v0 + 88);
  v64 = *(v0 + 96);
  v54 = *(v0 + 56);
  *(v0 + 368) = v54;
  sub_227662330();
  sub_2276623F0();
  v63 = *(v14 + 8);
  v63(v13, v15);
  (*(v16 + 16))(v17, v20 + OBJC_IVAR____TtC15SeymourServices20RecommendationSystem__journalPersonalizationRequests, v18);
  sub_227669730();
  (*(v16 + 8))(v17, v18);
  v56 = *(v0 + 448);
  sub_226E99364(0, &unk_28139D250, 0x277D85C90);
  sub_22766B3D0();
  *(v0 + 64) = MEMORY[0x277D84F90];
  sub_22717B7C4(&qword_28139D260, MEMORY[0x277D852D8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC8B0, &qword_227678490);
  sub_226E9CFD0(&qword_28139D2D0, &unk_27D7BC8B0, &qword_227678490);
  sub_22766CC80();
  (*(v19 + 104))(v58, *MEMORY[0x277D85268], v59);
  v21 = sub_22766CA20();
  *(v62 + v61[8]) = 10;
  (*(v14 + 16))(v62, v60, v15);
  *(v62 + v61[6]) = v21;
  *(v62 + v61[7]) = v56;
  v22 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  *(v62 + v61[5]) = v22;
  v23 = v22;
  v24 = sub_22766BFD0();
  [v23 setDateFormat_];

  v63(v60, v15);
  sub_227668F40();
  *(v0 + 376) = sub_22717B7C4(&unk_28139BD90, MEMORY[0x277CC95F0]);
  v25 = sub_22766D140();
  MEMORY[0x22AA98450](v25);

  v26 = *(v67 + 8);
  *(v0 + 384) = v26;
  *(v0 + 392) = (v67 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v26(v65, v66);
  sub_2272ECFAC(0x5F74736575716552, 0xE800000000000000, v72, v62);

  sub_227662720();
  sub_2276626F0();
  v27 = *(v70 + 8);
  *(v0 + 400) = v27;
  *(v0 + 408) = (v70 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v27(v68, v74);
  sub_22766C4F0();
  *(v0 + 416) = v28;
  v29 = swift_task_alloc();
  *(v0 + 424) = v29;
  *v29 = v0;
  v29[1] = sub_2271604E8;
  v30 = *(v0 + 88);
  v31 = *MEMORY[0x277D85DE8];

  return sub_2271614F0(v54);
}

uint64_t sub_2271604E8(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 424);
  v6 = *v2;
  *(v4 + 432) = a1;
  *(v4 + 440) = v1;

  v7 = *(v3 + 368);

  if (v1)
  {
    v8 = sub_227160F10;
  }

  else
  {
    v8 = sub_227160650;
  }

  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_227160650()
{
  v83 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 432);
  v3 = *(v0 + 400);
  v2 = *(v0 + 408);
  v4 = *(v0 + 168);
  v5 = *(v0 + 152);
  sub_227662720();
  sub_2276626F0();
  v3(v4, v5);
  sub_22766C4F0();
  v6 = [v1 data];
  if (!v6)
  {
    v23 = *(v0 + 432);
    v25 = *(v0 + 328);
    v24 = *(v0 + 336);
    v27 = *(v0 + 312);
    v26 = *(v0 + 320);
    v28 = sub_227665A50();
    sub_22717B7C4(&qword_28139B778, MEMORY[0x277D51B70]);
    swift_allocError();
    (*(*(v28 - 8) + 104))(v29, *MEMORY[0x277D51B28], v28);
    swift_willThrow();

    sub_22717B2F8(v27, type metadata accessor for TransportSerializableJournalRecorder);
    (*(v25 + 8))(v24, v26);
    goto LABEL_8;
  }

  v7 = *(v0 + 360);
  v8 = v6;
  sub_22766BEB0();

  v9 = sub_22766BE90();

  *(v0 + 72) = 0;
  v10 = [v7 dataWithJSONObject:v9 options:0 error:v0 + 72];

  v11 = *(v0 + 72);
  if (!v10)
  {
    v30 = *(v0 + 432);
    v32 = *(v0 + 328);
    v31 = *(v0 + 336);
    v34 = *(v0 + 312);
    v33 = *(v0 + 320);
    v35 = v11;
    sub_2276622C0();

    swift_willThrow();
    sub_22717B2F8(v34, type metadata accessor for TransportSerializableJournalRecorder);
    (*(v32 + 8))(v31, v33);
    goto LABEL_8;
  }

  v12 = *(v0 + 440);
  v13 = *(v0 + 144);
  v14 = *(v0 + 128);
  v15 = sub_227662590();
  v17 = v16;

  sub_226F5E0B4(v15, v17);
  sub_22717B7C4(&qword_28139B480, MEMORY[0x277D536B8]);
  sub_2276683F0();
  v18 = *(v0 + 432);
  if (v12)
  {
    v20 = *(v0 + 328);
    v19 = *(v0 + 336);
    v22 = *(v0 + 312);
    v21 = *(v0 + 320);

    sub_226EDC420(v15, v17);
    sub_22717B2F8(v22, type metadata accessor for TransportSerializableJournalRecorder);
    (*(v20 + 8))(v19, v21);
LABEL_8:
    v36 = *(v0 + 336);
    v37 = *(v0 + 312);
    v39 = *(v0 + 288);
    v38 = *(v0 + 296);
    v40 = *(v0 + 264);
    v42 = *(v0 + 232);
    v41 = *(v0 + 240);
    v43 = *(v0 + 216);
    v44 = *(v0 + 192);
    v45 = *(v0 + 168);
    v75 = *(v0 + 144);
    v77 = *(v0 + 120);
    v79 = *(v0 + 112);
    v81 = *(v0 + 104);

    v46 = *(v0 + 8);
    v47 = *MEMORY[0x277D85DE8];
    goto LABEL_9;
  }

  v61 = *(v0 + 384);
  v62 = *(v0 + 392);
  v49 = *(v0 + 376);
  v69 = *(v0 + 328);
  v50 = *(v0 + 312);
  v70 = *(v0 + 320);
  v71 = *(v0 + 336);
  v66 = *(v0 + 416);
  v72 = *(v0 + 296);
  v73 = *(v0 + 288);
  v74 = *(v0 + 264);
  v76 = *(v0 + 240);
  v78 = *(v0 + 232);
  v51 = *(v0 + 184);
  v52 = *(v0 + 192);
  v53 = *(v0 + 176);
  v80 = *(v0 + 216);
  v82 = *(v0 + 168);
  v67 = *(v0 + 136);
  v68 = *(v0 + 128);
  v59 = *(v0 + 144);
  v60 = *(v0 + 120);
  v63 = *(v0 + 112);
  v64 = *(v0 + 104);
  v54 = *(v0 + 96);
  v65 = *(v0 + 80);
  sub_227668F40();
  v55 = sub_22766D140();
  MEMORY[0x22AA98450](v55);

  v61(v52, v53);
  sub_2272ED408(0x65736E6F70736552, 0xE90000000000005FLL, v59, v50);

  (*(v51 + 56))(v60, 1, 1, v53);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB9E8, &qword_22767B680);
  (*(*(v56 - 8) + 56))(v63, 1, 1, v56);
  v57 = sub_2276666B0();
  (*(*(v57 - 8) + 56))(v64, 1, 1, v57);
  sub_227668990();

  sub_226EDC420(v15, v17);
  sub_226E97D1C(v64, &qword_27D7BB9C0, &qword_22767B650);
  sub_226E97D1C(v63, &qword_27D7BB9C8, &unk_22767B658);
  sub_226E97D1C(v60, &unk_27D7BB9D0, &qword_227671550);
  (*(v67 + 8))(v59, v68);
  sub_22717B2F8(v50, type metadata accessor for TransportSerializableJournalRecorder);
  (*(v69 + 8))(v71, v70);

  v46 = *(v0 + 8);
  v58 = *MEMORY[0x277D85DE8];
LABEL_9:

  return v46();
}

uint64_t sub_227160DC0()
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = v0[42];
  v2 = v0[39];
  v4 = v0[36];
  v3 = v0[37];
  v5 = v0[33];
  v7 = v0[29];
  v6 = v0[30];
  v8 = v0[27];
  v9 = v0[24];
  v10 = v0[21];
  v14 = v0[44];
  v15 = v0[18];
  v16 = v0[15];
  v17 = v0[14];
  v18 = v0[13];

  v11 = v0[1];
  v12 = *MEMORY[0x277D85DE8];

  return v11();
}

uint64_t sub_227160F10()
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = v0[41];
  v1 = v0[42];
  v3 = v0[40];
  sub_22717B2F8(v0[39], type metadata accessor for TransportSerializableJournalRecorder);
  (*(v2 + 8))(v1, v3);
  v4 = v0[42];
  v5 = v0[39];
  v7 = v0[36];
  v6 = v0[37];
  v8 = v0[33];
  v10 = v0[29];
  v9 = v0[30];
  v11 = v0[27];
  v12 = v0[24];
  v13 = v0[21];
  v17 = v0[55];
  v18 = v0[18];
  v19 = v0[15];
  v20 = v0[14];
  v21 = v0[13];

  v14 = v0[1];
  v15 = *MEMORY[0x277D85DE8];

  return v14();
}

uint64_t sub_227161098(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = sub_227669890();
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v6 = *(v5 + 64) + 15;
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22716115C, 0, 0);
}

uint64_t sub_22716115C()
{
  v1 = v0[12];
  sub_22766A7F0();
  sub_226E9DD3C("makePersonalizationInferenceRequest", 35, 2, &dword_226E8E000, 1, v0 + 2);
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_227161224;
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[7];

  return sub_227166800(v5, v3, v4);
}

uint64_t sub_227161224()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_2271613F8;
  }

  else
  {
    v3 = sub_227161338;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227161338()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  sub_227669930();
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_2271613F8()
{
  v1 = v0[14];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];
  v5 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  sub_227669930();
  swift_willThrow();
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  sub_227669920();
  (*(v3 + 8))(v2, v4);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v7 = v0[1];
  v8 = v0[14];

  return v7();
}

uint64_t sub_2271614F0(uint64_t a1)
{
  v2[13] = a1;
  v2[14] = v1;
  v3 = sub_227669890();
  v2[15] = v3;
  v4 = *(v3 - 8);
  v2[16] = v4;
  v5 = *(v4 + 64) + 15;
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271615B0, 0, 0);
}

uint64_t sub_2271615B0()
{
  v1 = *(v0 + 136);
  v9 = *(v0 + 104);
  sub_22766A7F0();
  sub_226E9DD3C("enqueuePersonalizationInferenceRequest", 38, 2, &dword_226E8E000, 1, (v0 + 16));
  v2 = swift_task_alloc();
  *(v0 + 144) = v2;
  v2[1] = vextq_s8(v9, v9, 8uLL);
  v3 = sub_22766A4E0();
  v4 = MEMORY[0x277D4F7C0];
  *(v0 + 80) = v3;
  *(v0 + 88) = v4;
  __swift_allocate_boxed_opaque_existential_0((v0 + 56));
  sub_22766A4D0();
  v5 = *(MEMORY[0x277D4F0A8] + 4);
  v6 = swift_task_alloc();
  *(v0 + 152) = v6;
  v7 = sub_226E99364(0, &qword_281398A70, 0x277CEE4A0);
  *v6 = v0;
  v6[1] = sub_22716172C;

  return MEMORY[0x2821AEAF8](v0 + 96, &unk_22767B690, v2, 3, v0 + 56, sub_227171854, 0, v7);
}

uint64_t sub_22716172C()
{
  v2 = *v1;
  v3 = (*v1)[19];
  v7 = *v1;
  v2[20] = v0;

  __swift_destroy_boxed_opaque_existential_0(v2 + 7);
  if (v0)
  {
    v4 = sub_227161918;
  }

  else
  {
    v5 = v2[18];

    v4 = sub_227161850;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_227161850()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  sub_227669930();
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v5 = v0[12];

  v6 = v0[1];

  return v6(v5);
}

uint64_t sub_227161918()
{
  v1 = v0[20];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[15];
  v5 = v0[16];

  v6 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  sub_227669930();
  swift_willThrow();
  v7 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  sub_227669920();
  (*(v5 + 8))(v3, v4);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v8 = v0[1];
  v9 = v0[20];

  return v8();
}

uint64_t sub_227161A14(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_227668F90();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_227668D90();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v10 = swift_task_alloc();
  v3[11] = v10;
  *v10 = v3;
  v10[1] = sub_227161B60;

  return sub_22715F258();
}

uint64_t sub_227161B60()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;

  if (v0)
  {
    v5 = v2[10];
    v6 = v2[7];

    v7 = *(v4 + 8);

    return v7();
  }

  else
  {
    v9 = swift_task_alloc();
    v2[12] = v9;
    *v9 = v4;
    v9[1] = sub_227161CE8;
    v10 = v2[10];
    v11 = v2[3];
    v12 = v2[4];

    return sub_2271621B4(v10, v11);
  }
}

uint64_t sub_227161CE8()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_227162144;
  }

  else
  {
    v3 = sub_227161DFC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227161DFC()
{
  v1 = v0[7];
  v2 = v0[3];
  __swift_project_boxed_opaque_existential_0((v0[4] + 664), *(v0[4] + 688));
  sub_227668C40();
  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = sub_227161EC4;
  v4 = v0[10];
  v5 = v0[7];
  v6 = v0[2];

  return sub_2272DDED4(v6, v5, v4);
}

uint64_t sub_227161EC4()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v8 = *v1;
  *(*v1 + 120) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_2271620BC;
  }

  else
  {
    v6 = sub_227162034;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_227162034()
{
  v1 = v0[7];
  (*(v0[9] + 8))(v0[10], v0[8]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_2271620BC()
{
  (*(v0[9] + 8))(v0[10], v0[8]);
  v1 = v0[15];
  v2 = v0[10];
  v3 = v0[7];

  v4 = v0[1];

  return v4();
}

uint64_t sub_227162144()
{
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[7];

  v4 = v0[1];

  return v4();
}

uint64_t sub_2271621B4(uint64_t a1, uint64_t a2)
{
  v3[357] = v2;
  v3[351] = a2;
  v3[345] = a1;
  v4 = sub_22766B390();
  v3[363] = v4;
  v5 = *(v4 - 8);
  v3[369] = v5;
  v6 = *(v5 + 64) + 15;
  v3[375] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB8C0, &qword_22767F780);
  v3[381] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[387] = swift_task_alloc();
  v3[393] = swift_task_alloc();
  v3[399] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB920, &unk_227672480);
  v3[405] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v3[411] = swift_task_alloc();
  v3[417] = swift_task_alloc();
  v3[423] = swift_task_alloc();
  v11 = sub_227666D20();
  v3[429] = v11;
  v12 = *(v11 - 8);
  v3[435] = v12;
  v13 = *(v12 + 64) + 15;
  v3[441] = swift_task_alloc();
  v3[442] = swift_task_alloc();
  v3[443] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9550, &qword_22767B2D0);
  v3[444] = v14;
  v15 = *(v14 - 8);
  v3[445] = v15;
  v16 = *(v15 + 64) + 15;
  v3[446] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB990, &unk_22767B558) - 8) + 64) + 15;
  v3[447] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227162438, 0, 0);
}

uint64_t sub_227162438()
{
  v1 = v0[447];
  v2 = v0[351];
  sub_227668C30();
  v3 = sub_227668D90();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v1, 1, v3) == 1)
  {
    v5 = v0[446];
    v6 = v0[357];
    sub_226E97D1C(v0[447], &unk_27D7BB990, &unk_22767B558);
    v7 = v6[6];
    __swift_project_boxed_opaque_existential_0(v6 + 2, v6[5]);
    sub_22766AE00();
    v8 = swift_task_alloc();
    v0[448] = v8;
    *(v8 + 16) = "SeymourServices/RecommendationSystem.swift";
    *(v8 + 24) = 42;
    *(v8 + 32) = 2;
    *(v8 + 40) = 324;
    *(v8 + 48) = v5;
    v9 = *(MEMORY[0x277D85A40] + 4);
    v10 = swift_task_alloc();
    v0[449] = v10;
    v11 = sub_226E99364(0, &qword_2813989F0, 0x277CB8F30);
    *v10 = v0;
    v10[1] = sub_22716272C;

    return MEMORY[0x2822008A0](v0 + 339, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_22717B840, v8, v11);
  }

  else
  {
    (*(v4 + 32))(v0[345], v0[447], v3);
    v12 = v0[447];
    v13 = v0[446];
    v14 = v0[443];
    v15 = v0[442];
    v16 = v0[441];
    v17 = v0[423];
    v18 = v0[417];
    v19 = v0[411];
    v20 = v0[399];
    v23 = v0[393];
    v24 = v0[387];
    v25 = v0[375];
    sub_226EA9E3C(0);

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_22716272C()
{
  v2 = *v1;
  v3 = *(*v1 + 3592);
  v4 = *v1;
  v2[450] = v0;

  v5 = v2[448];
  if (v0)
  {

    v6 = sub_227162C68;
  }

  else
  {
    v7 = v2[446];
    v8 = v2[445];
    v9 = v2[444];
    v2[451] = v2[339];

    (*(v8 + 8))(v7, v9);
    v6 = sub_227162890;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_227162890()
{
  v1 = [*(v0 + 3608) ams_DSID];
  v2 = *(v0 + 3608);
  if (v1)
  {

    v3 = [v2 ams_storefront];
    if (v3)
    {
      v4 = v3;
      v5 = sub_22766C000();
      v7 = v6;

      *(v0 + 3616) = v5;
      *(v0 + 3624) = v7;
      v8 = swift_task_alloc();
      *(v0 + 3632) = v8;
      *v8 = v0;
      v8[1] = sub_227162EDC;
      v9 = *(v0 + 2856);

      return sub_2271648AC();
    }

    v2 = *(v0 + 3608);
    v11 = MEMORY[0x277D51B38];
  }

  else
  {
    v11 = MEMORY[0x277D51B18];
  }

  v12 = sub_227665A50();
  sub_22717B7C4(&qword_28139B778, MEMORY[0x277D51B70]);
  v13 = swift_allocError();
  (*(*(v12 - 8) + 104))(v14, *v11, v12);
  swift_willThrow();

  v15 = *(v0 + 3000);
  sub_22766A680();
  v16 = v13;
  v17 = sub_22766B380();
  v18 = sub_22766C890();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 138412290;
    v21 = v13;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 4) = v22;
    *v20 = v22;
    _os_log_impl(&dword_226E8E000, v17, v18, "[Inference] Error creating environment: %@", v19, 0xCu);
    sub_226E97D1C(v20, &unk_27D7B9660, &qword_2276740C0);
    MEMORY[0x22AA9A450](v20, -1, -1);
    MEMORY[0x22AA9A450](v19, -1, -1);
  }

  v23 = *(v0 + 3576);
  v24 = *(v0 + 3568);
  v25 = *(v0 + 3544);
  v26 = *(v0 + 3536);
  v31 = *(v0 + 3528);
  v32 = *(v0 + 3384);
  v33 = *(v0 + 3336);
  v34 = *(v0 + 3288);
  v35 = *(v0 + 3192);
  v36 = *(v0 + 3144);
  v37 = *(v0 + 3096);
  v27 = *(v0 + 3000);
  v28 = *(v0 + 2952);
  v29 = *(v0 + 2904);

  (*(v28 + 8))(v27, v29);
  swift_willThrow();
  sub_226EA9E3C(0);
  sub_226EA9E3C(0);
  sub_226EA9E3C(0);
  sub_226EA9E3C(0);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_227162C68()
{
  (*(v0[445] + 8))(v0[446], v0[444]);
  v1 = v0[450];
  v2 = v0[375];
  sub_22766A680();
  v3 = v1;
  v4 = sub_22766B380();
  v5 = sub_22766C890();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_226E8E000, v4, v5, "[Inference] Error creating environment: %@", v6, 0xCu);
    sub_226E97D1C(v7, &unk_27D7B9660, &qword_2276740C0);
    MEMORY[0x22AA9A450](v7, -1, -1);
    MEMORY[0x22AA9A450](v6, -1, -1);
  }

  v10 = v0[447];
  v11 = v0[446];
  v12 = v0[443];
  v13 = v0[442];
  v19 = v0[441];
  v20 = v0[423];
  v21 = v0[417];
  v22 = v0[411];
  v23 = v0[399];
  v24 = v0[393];
  v25 = v0[387];
  v14 = v0[375];
  v15 = v0[369];
  v16 = v0[363];

  (*(v15 + 8))(v14, v16);
  swift_willThrow();
  sub_226EA9E3C(0);
  sub_226EA9E3C(0);
  sub_226EA9E3C(0);
  sub_226EA9E3C(0);

  v17 = v0[1];

  return v17();
}

uint64_t sub_227162EDC(char a1)
{
  v3 = *v1;
  v4 = *(*v1 + 3632);
  v5 = *v1;
  *(v3 + 3704) = a1;

  v6 = swift_task_alloc();
  *(v3 + 3640) = v6;
  *v6 = v5;
  v6[1] = sub_227163048;
  v7 = *(v3 + 3544);
  v8 = *(v3 + 2856);

  return sub_227164F28(v7, a1);
}

uint64_t sub_227163048()
{
  v2 = *v1;
  v3 = *(*v1 + 3640);
  v7 = *v1;
  *(*v1 + 3648) = v0;

  if (v0)
  {
    v4 = *(v2 + 3624);

    v5 = sub_227163B4C;
  }

  else
  {
    v5 = sub_227163164;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_227163164()
{
  if (*(v0 + 3704) == 1)
  {
    v1 = *(v0 + 3384);
    v2 = *(v0 + 3240);
    v3 = *(v0 + 3192);
    v4 = *(v0 + 3048);
    v5 = *(v0 + 2856);

    swift_asyncLet_begin();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB8D0, &qword_22767B2F8);
    swift_asyncLet_begin();

    swift_asyncLet_begin();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB940, qword_22767B408);
    swift_asyncLet_begin();
    v6 = *(v0 + 3384);

    return MEMORY[0x282200930](v0 + 656, v6, sub_2271634FC, v0 + 2624);
  }

  else
  {
    v7 = *(v0 + 3624);
    v8 = *(v0 + 3616);
    v31 = *(v0 + 3608);
    v9 = *(v0 + 3544);
    v10 = *(v0 + 3528);
    v11 = *(v0 + 3480);
    v12 = *(v0 + 3432);
    v13 = *(v0 + 3288);
    v14 = *(v0 + 3096);
    v15 = *(v0 + 2760);
    v16 = sub_2276638D0();
    (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
    (*(v11 + 16))(v10, v9, v12);
    v17 = sub_227666650();
    (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
    sub_227668D40();

    (*(v11 + 8))(v9, v12);
    v18 = *(v0 + 3576);
    v19 = *(v0 + 3568);
    v20 = *(v0 + 3544);
    v21 = *(v0 + 3536);
    v22 = *(v0 + 3528);
    v23 = *(v0 + 3384);
    v24 = *(v0 + 3336);
    v25 = *(v0 + 3288);
    v26 = *(v0 + 3192);
    v29 = *(v0 + 3144);
    v30 = *(v0 + 3096);
    v32 = *(v0 + 3000);
    sub_226EA9E3C(0);

    v27 = *(v0 + 8);

    return v27();
  }
}

uint64_t sub_2271634FC()
{
  v1[457] = v0;
  if (v0)
  {
    v2 = v1[453];

    return MEMORY[0x282200920](v1 + 162, v1 + 327, sub_227163DAC, v1 + 334);
  }

  else
  {
    sub_226E93170(v1[423], v1[417], &unk_27D7BB920, &unk_227672480);

    return MEMORY[0x282200930](v1 + 242, v1 + 333, sub_2271635C8, v1 + 358);
  }
}

uint64_t sub_2271635C8()
{
  v1[458] = v0;
  if (v0)
  {
    v2 = v1[453];
    sub_226E97D1C(v1[417], &unk_27D7BB920, &unk_227672480);

    return MEMORY[0x2822009F8](sub_227164144, 0, 0);
  }

  else
  {
    v3 = v1[443];
    v4 = v1[442];
    v5 = v1[435];
    v6 = v1[429];
    v1[459] = v1[333];
    (*(v5 + 16))(v4, v3, v6);

    v7 = v1[399];

    return MEMORY[0x282200928](v1 + 2, v7, sub_2271636C0, v1 + 388);
  }
}

uint64_t sub_2271636C0()
{
  sub_226E93170(*(v0 + 3192), *(v0 + 3144), &unk_27D7BB8C0, &qword_22767F780);

  return MEMORY[0x282200930](v0 + 1296, v0 + 2616, sub_227163740, v0 + 3152);
}

uint64_t sub_227163740()
{
  v1[460] = v0;
  if (v0)
  {
    v2 = v1[459];
    v3 = v1[453];
    v4 = v1[442];
    v5 = v1[435];
    v6 = v1[429];
    v7 = v1[417];
    v8 = v1[393];

    sub_226E97D1C(v8, &unk_27D7BB8C0, &qword_22767F780);
    v9 = *(v5 + 8);
    v1[461] = v9;
    v1[462] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v4, v6);
    sub_226E97D1C(v7, &unk_27D7BB920, &unk_227672480);
    v10 = sub_2271644FC;
  }

  else
  {
    v10 = sub_227163848;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_227163848()
{
  v1 = v0[459];
  v2 = v0[453];
  v3 = v0[452];
  v4 = v0[442];
  v5 = v0[417];
  v6 = v0[393];
  v7 = v0[345];
  v8 = v0[327];

  sub_227668D40();

  return MEMORY[0x282200920](v0 + 162, v0 + 327, sub_227163910, v0 + 424);
}

uint64_t sub_2271639E0()
{
  v1 = *(v0 + 3544);
  v2 = *(v0 + 3480);
  v3 = *(v0 + 3432);
  v4 = *(v0 + 2856);

  (*(v2 + 8))(v1, v3);

  v5 = *(v0 + 2856);
  v6 = *(v0 + 3576);
  v7 = *(v0 + 3568);
  v8 = *(v0 + 3544);
  v9 = *(v0 + 3536);
  v10 = *(v0 + 3528);
  v11 = *(v0 + 3384);
  v12 = *(v0 + 3336);
  v13 = *(v0 + 3288);
  v14 = *(v0 + 3192);
  v17 = *(v0 + 3144);
  v18 = *(v0 + 3096);
  v19 = *(v0 + 3000);
  sub_226EA9E3C(&unk_22767B5A0);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_227163B4C()
{
  v1 = *(v0 + 3648);
  v2 = *(v0 + 3000);
  sub_22766A680();
  v3 = v1;
  v4 = sub_22766B380();
  v5 = sub_22766C890();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_226E8E000, v4, v5, "[Inference] Error creating environment: %@", v6, 0xCu);
    sub_226E97D1C(v7, &unk_27D7B9660, &qword_2276740C0);
    MEMORY[0x22AA9A450](v7, -1, -1);
    MEMORY[0x22AA9A450](v6, -1, -1);
  }

  v10 = *(v0 + 3576);
  v11 = *(v0 + 3568);
  v12 = *(v0 + 3544);
  v13 = *(v0 + 3536);
  v19 = *(v0 + 3528);
  v20 = *(v0 + 3384);
  v21 = *(v0 + 3336);
  v22 = *(v0 + 3288);
  v23 = *(v0 + 3192);
  v24 = *(v0 + 3144);
  v25 = *(v0 + 3096);
  v14 = *(v0 + 3000);
  v15 = *(v0 + 2952);
  v16 = *(v0 + 2904);

  (*(v15 + 8))(v14, v16);
  swift_willThrow();
  sub_226EA9E3C(0);
  sub_226EA9E3C(0);
  sub_226EA9E3C(0);
  sub_226EA9E3C(0);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_227163E7C()
{
  v1 = *(v0 + 3544);
  v2 = *(v0 + 3480);
  v3 = *(v0 + 3432);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 3656);
  v5 = *(v0 + 2856);
  v6 = *(v0 + 3000);
  sub_22766A680();
  v7 = v4;
  v8 = sub_22766B380();
  v9 = sub_22766C890();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v4;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_226E8E000, v8, v9, "[Inference] Error creating environment: %@", v10, 0xCu);
    sub_226E97D1C(v11, &unk_27D7B9660, &qword_2276740C0);
    MEMORY[0x22AA9A450](v11, -1, -1);
    MEMORY[0x22AA9A450](v10, -1, -1);
  }

  v14 = *(v0 + 3576);
  v15 = *(v0 + 3568);
  v16 = *(v0 + 3544);
  v22 = *(v0 + 3536);
  v23 = *(v0 + 3528);
  v24 = *(v0 + 3384);
  v25 = *(v0 + 3336);
  v26 = *(v0 + 3288);
  v27 = *(v0 + 3192);
  v28 = *(v0 + 3144);
  v29 = *(v0 + 3096);
  v17 = *(v0 + 3000);
  v18 = *(v0 + 2952);
  v19 = *(v0 + 2904);

  (*(v18 + 8))(v17, v19);
  swift_willThrow();
  sub_226EA9E3C(&unk_22767B570);
  sub_226EA9E3C(&unk_22767B580);
  sub_226EA9E3C(&unk_22767B590);
  sub_226EA9E3C(&unk_22767B5A0);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_227164234()
{
  v1 = *(v0 + 3544);
  v2 = *(v0 + 3480);
  v3 = *(v0 + 3432);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 3664);
  v5 = *(v0 + 2856);
  v6 = *(v0 + 3000);
  sub_22766A680();
  v7 = v4;
  v8 = sub_22766B380();
  v9 = sub_22766C890();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v4;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_226E8E000, v8, v9, "[Inference] Error creating environment: %@", v10, 0xCu);
    sub_226E97D1C(v11, &unk_27D7B9660, &qword_2276740C0);
    MEMORY[0x22AA9A450](v11, -1, -1);
    MEMORY[0x22AA9A450](v10, -1, -1);
  }

  v14 = *(v0 + 3576);
  v15 = *(v0 + 3568);
  v16 = *(v0 + 3544);
  v22 = *(v0 + 3536);
  v23 = *(v0 + 3528);
  v24 = *(v0 + 3384);
  v25 = *(v0 + 3336);
  v26 = *(v0 + 3288);
  v27 = *(v0 + 3192);
  v28 = *(v0 + 3144);
  v29 = *(v0 + 3096);
  v17 = *(v0 + 3000);
  v18 = *(v0 + 2952);
  v19 = *(v0 + 2904);

  (*(v18 + 8))(v17, v19);
  swift_willThrow();
  sub_226EA9E3C(&unk_22767B570);
  sub_226EA9E3C(&unk_22767B580);
  sub_226EA9E3C(&unk_22767B590);
  sub_226EA9E3C(&unk_22767B5A0);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_2271645EC()
{
  v1 = *(v0 + 3696);
  v2 = *(v0 + 3688);
  v3 = *(v0 + 3544);
  v4 = *(v0 + 3432);

  v2(v3, v4);
  v5 = *(v0 + 3680);
  v6 = *(v0 + 2856);
  v7 = *(v0 + 3000);
  sub_22766A680();
  v8 = v5;
  v9 = sub_22766B380();
  v10 = sub_22766C890();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v5;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_226E8E000, v9, v10, "[Inference] Error creating environment: %@", v11, 0xCu);
    sub_226E97D1C(v12, &unk_27D7B9660, &qword_2276740C0);
    MEMORY[0x22AA9A450](v12, -1, -1);
    MEMORY[0x22AA9A450](v11, -1, -1);
  }

  v15 = *(v0 + 3576);
  v16 = *(v0 + 3568);
  v17 = *(v0 + 3544);
  v23 = *(v0 + 3536);
  v24 = *(v0 + 3528);
  v25 = *(v0 + 3384);
  v26 = *(v0 + 3336);
  v27 = *(v0 + 3288);
  v28 = *(v0 + 3192);
  v29 = *(v0 + 3144);
  v30 = *(v0 + 3096);
  v18 = *(v0 + 3000);
  v19 = *(v0 + 2952);
  v20 = *(v0 + 2904);

  (*(v19 + 8))(v18, v20);
  swift_willThrow();
  sub_226EA9E3C(&unk_22767B570);
  sub_226EA9E3C(&unk_22767B580);
  sub_226EA9E3C(&unk_22767B590);
  sub_226EA9E3C(&unk_22767B5A0);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_2271648AC()
{
  v1[2] = v0;
  v2 = sub_22766B390();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = sub_227662750();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA270, &qword_2276708A0);
  v1[9] = v8;
  v9 = *(v8 - 8);
  v1[10] = v9;
  v10 = *(v9 + 64) + 15;
  v1[11] = swift_task_alloc();
  v11 = sub_227665AD0();
  v1[12] = v11;
  v12 = *(v11 - 8);
  v1[13] = v12;
  v13 = *(v12 + 64) + 15;
  v1[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227164A8C, 0, 0);
}

uint64_t sub_227164A8C()
{
  v1 = v0[11];
  v2 = v0[2];
  sub_227175A60();
  v3 = swift_task_alloc();
  v0[15] = v3;
  *(v3 + 16) = "SeymourServices/RecommendationSystem.swift";
  *(v3 + 24) = 42;
  *(v3 + 32) = 2;
  *(v3 + 40) = 686;
  *(v3 + 48) = v1;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  v0[16] = v5;
  *v5 = v0;
  v5[1] = sub_227164BA8;
  v6 = v0[14];
  v7 = v0[12];

  return MEMORY[0x2822008A0](v6, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_22717AE8C, v3, v7);
}

uint64_t sub_227164BA8()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *(*v1 + 120);
  v7 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v5 = sub_227164DE0;
  }

  else
  {
    (*(v2[10] + 8))(v2[11], v2[9]);
    v5 = sub_227164CF8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_227164CF8()
{
  v1 = v0[14];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  sub_227662740();
  v5 = sub_227665AA0();
  (*(v3 + 8))(v2, v4);
  v6 = v0[11];
  v7 = v0[8];
  v8 = v0[5];
  (*(v0[13] + 8))(v0[14], v0[12]);

  v9 = v0[1];

  return v9(v5 & 1);
}

uint64_t sub_227164DE0()
{
  v1 = v0[5];
  (*(v0[10] + 8))(v0[11], v0[9]);
  sub_22766A680();
  v2 = sub_22766B380();
  v3 = sub_22766C870();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[17];
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_226E8E000, v2, v3, "[Inference] User subscription unavailable or not subscribed.", v6, 2u);
    MEMORY[0x22AA9A450](v6, -1, -1);
  }

  v7 = v0[14];
  v8 = v0[11];
  v9 = v0[8];
  (*(v0[4] + 8))(v0[5], v0[3]);

  v10 = v0[1];

  return v10(0);
}

uint64_t sub_227164F28(uint64_t a1, char a2)
{
  *(v3 + 112) = a2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v2;
  v4 = sub_227669890();
  *(v3 + 72) = v4;
  v5 = *(v4 - 8);
  *(v3 + 80) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 88) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227164FEC, 0, 0);
}

uint64_t sub_227164FEC()
{
  v1 = *(v0 + 88);
  sub_22766A7F0();
  sub_226E9DD3C("fetchPersonalizationUserData", 28, 2, &dword_226E8E000, 1, (v0 + 16));
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = v0;
  v2[1] = sub_2271650B4;
  v3 = *(v0 + 112);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);

  return sub_227171938(v4, v5, v3);
}

uint64_t sub_2271650B4()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_227165288;
  }

  else
  {
    v3 = sub_2271651C8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2271651C8()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  sub_227669930();
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_227165288()
{
  v1 = v0[13];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  v5 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  sub_227669930();
  swift_willThrow();
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  sub_227669920();
  (*(v3 + 8))(v2, v4);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v7 = v0[1];
  v8 = v0[13];

  return v7();
}

uint64_t sub_227165380(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_227664EC0();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227165440, 0, 0);
}

uint64_t sub_227165440()
{
  v1 = v0[4];
  v2 = v1[70];
  v3 = v1[71];
  __swift_project_boxed_opaque_existential_0(v1 + 67, v2);
  v4 = *(v3 + 24);

  v11 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[8] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB920, &unk_227672480);
  *v6 = v0;
  v6[1] = sub_2271655B8;
  v8 = v0[3];
  v9 = v0[4];

  return (v11)(v8, sub_22717B814, v9, v7, v2, v3);
}

uint64_t sub_2271655B8()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22717B848, 0, 0);
  }

  else
  {
    v4 = v3[4];

    v5 = v3[7];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_2271656FC(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_227664EC0();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271657BC, 0, 0);
}

uint64_t sub_2271657BC()
{
  v1 = v0[4];
  v2 = v1[70];
  v3 = v1[71];
  __swift_project_boxed_opaque_existential_0(v1 + 67, v2);
  v4 = *(v3 + 24);

  v11 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[8] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB920, &unk_227672480);
  *v6 = v0;
  v6[1] = sub_227165934;
  v8 = v0[3];
  v9 = v0[4];

  return (v11)(v8, sub_22717AD30, v9, v7, v2, v3);
}

uint64_t sub_227165934()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_227165A78, 0, 0);
  }

  else
  {
    v4 = v3[4];

    v5 = v3[7];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_227165A78()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);

  *(v0 + 16) = v1;
  v5 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
  if (swift_dynamicCast())
  {
    if ((*(*(v0 + 48) + 88))(*(v0 + 56), *(v0 + 40)) == *MEMORY[0x277D51188])
    {
      v6 = *(v0 + 24);

      v7 = sub_2276638D0();
      (*(*(v7 - 8) + 56))(v6, 1, 1, v7);

      v8 = *(v0 + 56);

      v9 = *(v0 + 8);
      goto LABEL_6;
    }

    (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));
  }

  v10 = *(v0 + 72);
  v11 = *(v0 + 56);

  swift_willThrow();

  v9 = *(v0 + 8);
  v12 = *(v0 + 72);
LABEL_6:

  return v9();
}

uint64_t sub_227165C00(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_227165C94;

  return sub_227165ECC();
}

uint64_t sub_227165C94(uint64_t a1)
{
  v3 = *(*v2 + 24);
  v4 = *v2;
  *(v4 + 32) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_227165DC8, 0, 0);
  }
}

uint64_t sub_227165DC8()
{
  v9 = v0;
  v1 = *(v0 + 32);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = sub_2274CDADC(*(v1 + 16), 0);
    v4 = *(sub_227668EF0() - 8);
    v5 = sub_2274CEFBC(&v8, (v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80))), v2, v1);
    sub_226EBB21C();
    if (v5 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v3 = MEMORY[0x277D84F90];
LABEL_5:
  **(v0 + 16) = v3;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_227165ECC()
{
  v1[8] = v0;
  v2 = sub_227669890();
  v1[9] = v2;
  v3 = *(v2 - 8);
  v1[10] = v3;
  v4 = *(v3 + 64) + 15;
  v1[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227165F8C, 0, 0);
}

uint64_t sub_227165F8C()
{
  v1 = v0[11];
  sub_22766A7F0();
  sub_226E9DD3C("fetchPersonalizationAwardProgressReferences", 43, 2, &dword_226E8E000, 1, v0 + 2);
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_227166054;
  v3 = v0[8];

  return sub_227175E68((v0 + 7), v3);
}

uint64_t sub_227166054()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_227165288;
  }

  else
  {
    v3 = sub_227166168;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227166168()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  sub_227669930();
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v5 = v0[7];

  v6 = v0[1];

  return v6(v5);
}

uint64_t sub_227166230(uint64_t a1)
{
  *(v1 + 16) = a1;
  v3 = swift_task_alloc();
  *(v1 + 24) = v3;
  *v3 = v1;
  v3[1] = sub_2271662D0;

  return sub_22715D2C4(a1);
}

uint64_t sub_2271662D0()
{
  v2 = *(*v1 + 24);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_227166488;
  }

  else
  {
    v3 = sub_2271663E8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2271663E8()
{
  v1 = *(v0 + 16);
  v2 = sub_227666650();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_227166488()
{
  v1 = *(v0 + 16);
  v2 = sub_227666650();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_227166528(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return MEMORY[0x2822009F8](sub_227166548, 0, 0);
}

uint64_t sub_227166548()
{
  v1 = *(v0 + 32);
  v2 = v1[70];
  v3 = v1[71];
  __swift_project_boxed_opaque_existential_0(v1 + 67, v2);
  v4 = *(v3 + 24);

  v10 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 40) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB940, qword_22767B408);
  *v6 = v0;
  v6[1] = sub_2271666C4;
  v8 = *(v0 + 32);

  return (v10)(v0 + 16, sub_22717B170, v8, v7, v2, v3);
}

uint64_t sub_2271666C4()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_226FA13B4;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_2271667E0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_227166800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[593] = a3;
  v3[587] = a2;
  v3[581] = a1;
  v4 = *(*(sub_2276627D0() - 8) + 64) + 15;
  v3[599] = swift_task_alloc();
  v5 = sub_227668F10();
  v3[605] = v5;
  v6 = *(v5 - 8);
  v3[611] = v6;
  v7 = *(v6 + 64) + 15;
  v3[617] = swift_task_alloc();
  v3[623] = swift_task_alloc();
  v8 = sub_227668DB0();
  v3[629] = v8;
  v9 = *(v8 - 8);
  v3[635] = v9;
  v10 = *(v9 + 64) + 15;
  v3[641] = swift_task_alloc();
  v3[647] = swift_task_alloc();
  v11 = sub_227667870();
  v3[653] = v11;
  v12 = *(v11 - 8);
  v3[659] = v12;
  v13 = *(v12 + 64) + 15;
  v3[665] = swift_task_alloc();
  v3[671] = swift_task_alloc();
  v3[677] = swift_task_alloc();
  v14 = sub_227668B30();
  v3[683] = v14;
  v15 = *(v14 - 8);
  v3[689] = v15;
  v16 = *(v15 + 64) + 15;
  v3[695] = swift_task_alloc();
  v3[701] = swift_task_alloc();
  v3[707] = swift_task_alloc();
  v17 = sub_227668670();
  v3[713] = v17;
  v18 = *(v17 - 8);
  v3[719] = v18;
  v19 = *(v18 + 64) + 15;
  v3[725] = swift_task_alloc();
  v3[731] = swift_task_alloc();
  v3[737] = swift_task_alloc();
  v20 = sub_227668650();
  v3[743] = v20;
  v21 = *(v20 - 8);
  v3[749] = v21;
  v22 = *(v21 + 64) + 15;
  v3[755] = swift_task_alloc();
  v3[761] = swift_task_alloc();
  v3[767] = swift_task_alloc();
  v23 = sub_227666D20();
  v3[773] = v23;
  v24 = *(v23 - 8);
  v3[779] = v24;
  v25 = *(v24 + 64) + 15;
  v3[785] = swift_task_alloc();
  v3[791] = swift_task_alloc();
  v3[797] = swift_task_alloc();
  v26 = sub_227666190();
  v3[803] = v26;
  v27 = *(v26 - 8);
  v3[809] = v27;
  v28 = *(v27 + 64) + 15;
  v3[815] = swift_task_alloc();
  v3[821] = swift_task_alloc();
  v3[827] = swift_task_alloc();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9550, &qword_22767B2D0);
  v3[833] = v29;
  v30 = *(v29 - 8);
  v3[839] = v30;
  v31 = *(v30 + 64) + 15;
  v3[845] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227166C88, 0, 0);
}

uint64_t sub_227166C88()
{
  v1 = v0[845];
  v2 = v0[587];
  v3 = v2[6];
  __swift_project_boxed_opaque_existential_0(v2 + 2, v2[5]);
  sub_22766AE00();
  v4 = swift_task_alloc();
  v0[851] = v4;
  *(v4 + 16) = "SeymourServices/RecommendationSystem.swift";
  *(v4 + 24) = 42;
  *(v4 + 32) = 2;
  *(v4 + 40) = 369;
  *(v4 + 48) = v1;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  v0[857] = v6;
  v7 = sub_226E99364(0, &qword_2813989F0, 0x277CB8F30);
  *v6 = v0;
  v6[1] = sub_227166DE0;

  return MEMORY[0x2822008A0](v0 + 575, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_22717A848, v4, v7);
}

uint64_t sub_227166DE0()
{
  v2 = *v1;
  v3 = *(*v1 + 6856);
  v4 = *v1;
  v2[863] = v0;

  v5 = v2[851];
  if (v0)
  {

    v6 = sub_2271674D0;
  }

  else
  {
    v7 = v2[845];
    v8 = v2[839];
    v9 = v2[833];
    v2[869] = v2[575];

    (*(v8 + 8))(v7, v9);
    v6 = sub_227166F44;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_227166F44()
{
  v1 = [*(v0 + 6952) ams_DSID];
  *(v0 + 7000) = v1;
  v2 = *(v0 + 6952);
  if (v1)
  {
    v3 = v1;
    v4 = [*(v0 + 6952) ams_storefront];
    if (v4)
    {
      v5 = v4;
      v6 = *(v0 + 6616);
      v7 = *(v0 + 6424);
      v8 = *(v0 + 6376);
      v9 = *(v0 + 6184);
      v10 = *(v0 + 6136);
      v11 = *(v0 + 5944);
      v42 = *(v0 + 5704);
      v44 = *(v0 + 5896);
      v46 = *(v0 + 5464);
      v48 = *(v0 + 5656);
      v50 = *(v0 + 5224);
      v52 = *(v0 + 5416);
      v12 = *(v0 + 4696);
      v13 = sub_22766C000();
      v15 = v14;
      *(v0 + 4536) = v13;
      *(v0 + 4544) = v14;

      *(v0 + 7048) = v15;

      swift_asyncLet_begin();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB8D0, &qword_22767B2F8);
      swift_asyncLet_begin();

      swift_asyncLet_begin();

      swift_asyncLet_begin();

      swift_asyncLet_begin();

      swift_asyncLet_begin();

      swift_asyncLet_begin();
      v16 = *(v0 + 6616);

      return MEMORY[0x282200930](v0 + 656, v16, sub_2271676D4, v0 + 4608);
    }

    v2 = *(v0 + 6952);
    v19 = sub_227665A50();
    sub_22717B7C4(&qword_28139B778, MEMORY[0x277D51B70]);
    swift_allocError();
    (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277D51B38], v19);
    swift_willThrow();
  }

  else
  {
    v17 = sub_227665A50();
    sub_22717B7C4(&qword_28139B778, MEMORY[0x277D51B70]);
    swift_allocError();
    (*(*(v17 - 8) + 104))(v18, *MEMORY[0x277D51B18], v17);
    swift_willThrow();
  }

  v21 = *(v0 + 6760);
  v22 = *(v0 + 6616);
  v23 = *(v0 + 6568);
  v24 = *(v0 + 6520);
  v25 = *(v0 + 6376);
  v26 = *(v0 + 6328);
  v27 = *(v0 + 6280);
  v28 = *(v0 + 6136);
  v29 = *(v0 + 6088);
  v32 = *(v0 + 6040);
  v33 = *(v0 + 5896);
  v34 = *(v0 + 5848);
  v35 = *(v0 + 5800);
  v36 = *(v0 + 5656);
  v37 = *(v0 + 5608);
  v38 = *(v0 + 5560);
  v39 = *(v0 + 5416);
  v40 = *(v0 + 5368);
  v41 = *(v0 + 5320);
  v43 = *(v0 + 5176);
  v45 = *(v0 + 5128);
  v47 = *(v0 + 4984);
  v49 = *(v0 + 4936);
  v51 = *(v0 + 4792);
  sub_226EA9E3C(0);
  sub_226EA9E3C(0);
  sub_226EA9E3C(0);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_2271674D0()
{
  (*(v0[839] + 8))(v0[845], v0[833]);
  v27 = v0[863];
  v1 = v0[845];
  v2 = v0[827];
  v3 = v0[821];
  v4 = v0[815];
  v5 = v0[797];
  v6 = v0[791];
  v7 = v0[785];
  v8 = v0[767];
  v9 = v0[761];
  v12 = v0[755];
  v13 = v0[737];
  v14 = v0[731];
  v15 = v0[725];
  v16 = v0[707];
  v17 = v0[701];
  v18 = v0[695];
  v19 = v0[677];
  v20 = v0[671];
  v21 = v0[665];
  v22 = v0[647];
  v23 = v0[641];
  v24 = v0[623];
  v25 = v0[617];
  v26 = v0[599];
  sub_226EA9E3C(0);
  sub_226EA9E3C(0);
  sub_226EA9E3C(0);

  v10 = v0[1];

  return v10();
}

uint64_t sub_2271676D4()
{
  v1[887] = v0;
  if (v0)
  {
    v2 = v1[881];

    return MEMORY[0x2822009F8](sub_227168F84, 0, 0);
  }

  else
  {
    v3 = v1[827];
    v4 = v1[821];
    v5 = v1[809];
    v6 = v1[803];
    v7 = *(v5 + 16);
    v1[893] = v7;
    v1[899] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v7(v4, v3, v6);
    v8 = v1[677];

    return MEMORY[0x282200930](v1 + 162, v8, sub_2271677B4, v1 + 624);
  }
}

uint64_t sub_2271677B4()
{
  v1[905] = v0;
  if (v0)
  {
    v2 = v1[881];
    (*(v1[809] + 8))(v1[821], v1[803]);

    v3 = sub_227169384;
  }

  else
  {
    v3 = sub_227167854;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227167854()
{
  v1 = *(v0 + 5416);
  v2 = *(v0 + 5368);
  v3 = *(v0 + 5272);
  v4 = *(v0 + 5224);
  v5 = *(v0 + 4744);
  v6 = *(v3 + 16);
  *(v0 + 7288) = v6;
  *(v0 + 7336) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v1, v4);
  *(v0 + 8488) = sub_227668F50();
  *(v0 + 8489) = sub_227668F60();

  return MEMORY[0x282200930](v0 + 1936, v0 + 4552, sub_227167910, v0 + 5376);
}

uint64_t sub_227167910()
{
  v1[923] = v0;
  if (v0)
  {
    v2 = v1[881];
    v3 = v1[821];
    v4 = v1[809];
    v5 = v1[803];
    v6 = v1[671];
    v7 = v1[659];
    v8 = v1[653];

    (*(v7 + 8))(v6, v8);
    (*(v4 + 8))(v3, v5);

    return MEMORY[0x2822009F8](sub_227169784, 0, 0);
  }

  else
  {
    v1[929] = v1[569];

    v9 = v1[797];

    return MEMORY[0x282200930](v1 + 322, v9, sub_227167A2C, v1 + 720);
  }
}

uint64_t sub_227167A2C()
{
  v1[935] = v0;
  if (v0)
  {
    v2 = v1[929];
    v3 = v1[881];
    v4 = v1[821];
    v5 = v1[809];
    v6 = v1[803];
    v7 = v1[671];
    v8 = v1[659];
    v9 = v1[653];

    (*(v8 + 8))(v7, v9);
    (*(v5 + 8))(v4, v6);

    return MEMORY[0x2822009F8](sub_227169B84, 0, 0);
  }

  else
  {
    v10 = v1[797];
    v11 = v1[791];
    v12 = v1[779];
    v13 = v1[773];
    v14 = *(v12 + 16);
    v1[941] = v14;
    v1[947] = (v12 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v14(v11, v10, v13);
    v15 = v1[767];

    return MEMORY[0x282200930](v1 + 402, v15, sub_227167B84, v1 + 768);
  }
}

uint64_t sub_227167B84()
{
  v1[953] = v0;
  if (v0)
  {
    v2 = v1[929];
    v3 = v1[881];
    v19 = v1[821];
    v4 = v1[809];
    v5 = v1[803];
    v6 = v1[791];
    v7 = v1[779];
    v8 = v1[773];
    v9 = v1[671];
    v10 = v1[659];
    v11 = v1[653];

    (*(v7 + 8))(v6, v8);
    (*(v10 + 8))(v9, v11);
    (*(v4 + 8))(v19, v5);

    return MEMORY[0x2822009F8](sub_227169F84, 0, 0);
  }

  else
  {
    v12 = v1[767];
    v13 = v1[761];
    v14 = v1[749];
    v15 = v1[743];
    v16 = *(v14 + 16);
    v1[959] = v16;
    v1[965] = (v14 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v16(v13, v12, v15);
    v17 = v1[737];

    return MEMORY[0x282200930](v1 + 482, v17, sub_227167D10, v1 + 816);
  }
}

uint64_t sub_227167D10()
{
  v1[971] = v0;
  if (v0)
  {
    v2 = v1[929];
    v3 = v1[881];
    v4 = v1[809];
    v21 = v1[803];
    v22 = v1[821];
    v5 = v1[779];
    v6 = v1[773];
    v7 = v1[761];
    v8 = v1[749];
    v9 = v1[743];
    v19 = v1[791];
    v20 = v1[671];
    v10 = v1[659];
    v11 = v1[653];

    (*(v8 + 8))(v7, v9);
    (*(v5 + 8))(v19, v6);
    (*(v10 + 8))(v20, v11);
    (*(v4 + 8))(v22, v21);

    return MEMORY[0x2822009F8](sub_22716A384, 0, 0);
  }

  else
  {
    v12 = v1[737];
    v13 = v1[731];
    v14 = v1[719];
    v15 = v1[713];
    v16 = *(v14 + 16);
    v1[977] = v16;
    v1[983] = (v14 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v16(v13, v12, v15);
    v17 = v1[707];

    return MEMORY[0x282200930](v1 + 2, v17, sub_227167EC0, v1 + 864);
  }
}

uint64_t sub_227167EC0()
{
  v1[989] = v0;
  if (v0)
  {
    v2 = v1[929];
    v3 = v1[881];
    v4 = v1[809];
    v19 = v1[803];
    v20 = v1[821];
    v5 = v1[779];
    v17 = v1[773];
    v18 = v1[791];
    v6 = v1[749];
    v7 = v1[743];
    v8 = v1[731];
    v9 = v1[719];
    v10 = v1[713];
    v16 = v1[671];
    v11 = v1[659];
    v14 = v1[761];
    v15 = v1[653];

    (*(v9 + 8))(v8, v10);
    (*(v6 + 8))(v14, v7);
    (*(v5 + 8))(v18, v17);
    (*(v11 + 8))(v16, v15);
    (*(v4 + 8))(v20, v19);
    v12 = sub_22716A784;
  }

  else
  {
    v12 = sub_227168024;
  }

  return MEMORY[0x2822009F8](v12, 0, 0);
}

uint64_t sub_227168024()
{
  v16 = *(v0 + 7432);
  v1 = *(v0 + 8488);
  v2 = *(v0 + 6568);
  v3 = *(v0 + 6328);
  v4 = *(v0 + 6088);
  v5 = *(v0 + 5848);
  v6 = *(v0 + 5656);
  v7 = *(v0 + 5608);
  v8 = *(v0 + 5512);
  v9 = *(v0 + 5464);
  v10 = *(v0 + 5368);
  v11 = *(v8 + 16);
  v12 = *(v0 + 5176);
  *(v0 + 7960) = v11;
  *(v0 + 8008) = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v13 = *(v0 + 8489);
  v11(v7, v6, v9);
  sub_227668DA0();
  v14 = *(v0 + 6616);

  return MEMORY[0x282200930](v0 + 656, v14, sub_227168138, v0 + 7296);
}

uint64_t sub_227168138()
{
  *(v1 + 8056) = v0;
  if (v0)
  {
    v2 = *(v1 + 7048);

    return MEMORY[0x2822009F8](sub_22716AB84, 0, 0);
  }

  else
  {
    v3 = *(v1 + 7192);
    (*(v1 + 7144))(*(v1 + 6520), *(v1 + 6616), *(v1 + 6424));
    v4 = *(v1 + 5416);

    return MEMORY[0x282200930](v1 + 1296, v4, sub_227168200, v1 + 7680);
  }
}

uint64_t sub_227168200()
{
  *(v1 + 8104) = v0;
  if (v0)
  {
    v2 = *(v1 + 7048);
    (*(*(v1 + 6472) + 8))(*(v1 + 6520), *(v1 + 6424));

    return MEMORY[0x2822009F8](sub_22716AFE4, 0, 0);
  }

  else
  {
    v3 = *(v1 + 7336);
    (*(v1 + 7288))(*(v1 + 5320), *(v1 + 5416), *(v1 + 5224));

    return MEMORY[0x282200930](v1 + 1936, v1 + 4552, sub_2271682EC, v1 + 8064);
  }
}

uint64_t sub_2271682EC()
{
  v1[1019] = v0;
  if (v0)
  {
    v2 = v1[881];
    v3 = v1[815];
    v4 = v1[809];
    v5 = v1[803];
    v6 = v1[665];
    v7 = v1[659];
    v8 = v1[653];

    (*(v7 + 8))(v6, v8);
    (*(v4 + 8))(v3, v5);

    return MEMORY[0x2822009F8](sub_22716B444, 0, 0);
  }

  else
  {
    v1[1025] = v1[569];

    v9 = v1[797];

    return MEMORY[0x282200930](v1 + 322, v9, sub_227168408, v1 + 1056);
  }
}

uint64_t sub_227168408()
{
  *(v1 + 8248) = v0;
  if (v0)
  {
    v2 = *(v1 + 8200);
    v3 = *(v1 + 7048);
    v4 = *(v1 + 6520);
    v5 = *(v1 + 6472);
    v6 = *(v1 + 6424);
    v7 = *(v1 + 5320);
    v8 = *(v1 + 5272);
    v9 = *(v1 + 5224);

    (*(v8 + 8))(v7, v9);
    (*(v5 + 8))(v4, v6);

    return MEMORY[0x2822009F8](sub_22716B8A4, 0, 0);
  }

  else
  {
    v10 = *(v1 + 7576);
    (*(v1 + 7528))(*(v1 + 6280), *(v1 + 6376), *(v1 + 6184));
    v11 = *(v1 + 6136);

    return MEMORY[0x282200930](v1 + 3216, v11, sub_227168548, v1 + 8832);
  }
}

uint64_t sub_227168548()
{
  *(v1 + 8296) = v0;
  if (v0)
  {
    v2 = *(v1 + 8200);
    v3 = *(v1 + 7048);
    v15 = *(v1 + 6520);
    v4 = *(v1 + 6472);
    v5 = *(v1 + 6424);
    v6 = *(v1 + 6280);
    v7 = *(v1 + 6232);
    v8 = *(v1 + 6184);
    v9 = *(v1 + 5320);
    v10 = *(v1 + 5272);
    v11 = *(v1 + 5224);

    (*(v7 + 8))(v6, v8);
    (*(v10 + 8))(v9, v11);
    (*(v4 + 8))(v15, v5);

    return MEMORY[0x2822009F8](sub_22716BD04, 0, 0);
  }

  else
  {
    v12 = *(v1 + 7720);
    (*(v1 + 7672))(*(v1 + 6040), *(v1 + 6136), *(v1 + 5944));
    v13 = *(v1 + 5896);

    return MEMORY[0x282200930](v1 + 3856, v13, sub_2271686BC, v1 + 9216);
  }
}

uint64_t sub_2271686BC()
{
  *(v1 + 8344) = v0;
  if (v0)
  {
    v2 = *(v1 + 8200);
    v3 = *(v1 + 7048);
    v4 = *(v1 + 6472);
    v17 = *(v1 + 6424);
    v18 = *(v1 + 6520);
    v5 = *(v1 + 6232);
    v6 = *(v1 + 6184);
    v7 = *(v1 + 6040);
    v8 = *(v1 + 5992);
    v9 = *(v1 + 5944);
    v15 = *(v1 + 6280);
    v16 = *(v1 + 5320);
    v10 = *(v1 + 5272);
    v11 = *(v1 + 5224);

    (*(v8 + 8))(v7, v9);
    (*(v5 + 8))(v15, v6);
    (*(v10 + 8))(v16, v11);
    (*(v4 + 8))(v18, v17);

    return MEMORY[0x2822009F8](sub_22716C164, 0, 0);
  }

  else
  {
    v12 = *(v1 + 7864);
    (*(v1 + 7816))(*(v1 + 5800), *(v1 + 5896), *(v1 + 5704));
    v13 = *(v1 + 5656);

    return MEMORY[0x282200930](v1 + 16, v13, sub_227168854, v1 + 9600);
  }
}

uint64_t sub_227168854()
{
  v1[1049] = v0;
  if (v0)
  {
    v2 = v1[1025];
    v3 = v1[881];
    v4 = v1[809];
    v19 = v1[803];
    v20 = v1[815];
    v5 = v1[779];
    v17 = v1[773];
    v18 = v1[785];
    v6 = v1[749];
    v7 = v1[743];
    v8 = v1[725];
    v9 = v1[719];
    v10 = v1[713];
    v16 = v1[665];
    v11 = v1[659];
    v14 = v1[755];
    v15 = v1[653];

    (*(v9 + 8))(v8, v10);
    (*(v6 + 8))(v14, v7);
    (*(v5 + 8))(v18, v17);
    (*(v11 + 8))(v16, v15);
    (*(v4 + 8))(v20, v19);
    v12 = sub_22716C5C4;
  }

  else
  {
    v12 = sub_2271689B8;
  }

  return MEMORY[0x2822009F8](v12, 0, 0);
}

uint64_t sub_2271689B8()
{
  v1 = *(v0 + 8392);
  v2 = *(v0 + 8200);
  v3 = *(v0 + 8008);
  v4 = *(v0 + 6520);
  v5 = *(v0 + 6280);
  v6 = *(v0 + 6040);
  v7 = *(v0 + 5800);
  v8 = *(v0 + 5320);
  v9 = *(v0 + 4984);
  (*(v0 + 7960))(*(v0 + 5560), *(v0 + 5656), *(v0 + 5464));
  sub_227668F00();
  *(v0 + 8440) = v1;
  v10 = *(v0 + 7048);
  if (v1)
  {
    (*(*(v0 + 5080) + 8))(*(v0 + 5176), *(v0 + 5032));

    v11 = sub_22716CA24;
    v12 = *(v0 + 5416);
    v13 = v0 + 1296;
    v14 = v0 + 9984;
  }

  else
  {
    v28 = *(v0 + 7048);
    v29 = *(v0 + 4536);
    v15 = *(v0 + 5176);
    v16 = *(v0 + 5128);
    v17 = *(v0 + 5080);
    v18 = *(v0 + 5032);
    v19 = *(v0 + 4936);
    v20 = *(v0 + 4888);
    v25 = *(v0 + 4840);
    v26 = *(v0 + 4984);
    v21 = *(v0 + 4792);
    v22 = *(v0 + 4744);
    v27 = *(v0 + 4648);
    v23 = [*(v0 + 7000) stringValue];
    sub_22766C000();

    sub_227668F40();
    (*(v17 + 16))(v16, v15, v18);
    sub_227668F80();
    (*(v20 + 16))(v19, v26, v25);
    sub_227668F70();
    sub_227668840();
    (*(v20 + 8))(v26, v25);
    (*(v17 + 8))(v15, v18);
    v11 = sub_227168C04;
    v12 = *(v0 + 5416);
    v13 = v0 + 1296;
    v14 = v0 + 10320;
  }

  return MEMORY[0x282200920](v13, v12, v11, v14);
}

uint64_t sub_227168DA4()
{
  v1 = *(v0 + 7000);
  v2 = *(v0 + 6760);
  v3 = *(v0 + 6616);
  v4 = *(v0 + 6568);
  v5 = *(v0 + 6520);
  v6 = *(v0 + 6376);
  v7 = *(v0 + 6328);
  v8 = *(v0 + 6280);
  v12 = *(v0 + 6136);
  v13 = *(v0 + 6088);
  v14 = *(v0 + 6040);
  v15 = *(v0 + 5896);
  v16 = *(v0 + 5848);
  v17 = *(v0 + 5800);
  v18 = *(v0 + 5656);
  v19 = *(v0 + 5608);
  v20 = *(v0 + 5560);
  v21 = *(v0 + 5416);
  v22 = *(v0 + 5368);
  v23 = *(v0 + 5320);
  v24 = *(v0 + 5176);
  v25 = *(v0 + 5128);
  v26 = *(v0 + 4984);
  v27 = *(v0 + 4936);
  v28 = *(v0 + 4792);
  v9 = *(v0 + 4696);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_227169148()
{
  v1 = *(v0 + 7000);
  v2 = *(v0 + 4696);

  v30 = *(v0 + 7096);
  v3 = *(v0 + 4696);
  v4 = *(v0 + 6760);
  v5 = *(v0 + 6616);
  v6 = *(v0 + 6568);
  v7 = *(v0 + 6520);
  v8 = *(v0 + 6376);
  v9 = *(v0 + 6328);
  v10 = *(v0 + 6280);
  v11 = *(v0 + 6136);
  v14 = *(v0 + 6088);
  v15 = *(v0 + 6040);
  v16 = *(v0 + 5896);
  v17 = *(v0 + 5848);
  v18 = *(v0 + 5800);
  v19 = *(v0 + 5656);
  v20 = *(v0 + 5608);
  v21 = *(v0 + 5560);
  v22 = *(v0 + 5416);
  v23 = *(v0 + 5368);
  v24 = *(v0 + 5320);
  v25 = *(v0 + 5176);
  v26 = *(v0 + 5128);
  v27 = *(v0 + 4984);
  v28 = *(v0 + 4936);
  v29 = *(v0 + 4792);
  sub_226EA9E3C(&unk_22767B328);
  sub_226EA9E3C(&unk_22767B338);
  sub_226EA9E3C(&unk_22767B348);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_227169548()
{
  v1 = *(v0 + 7000);
  v2 = *(v0 + 4696);

  v30 = *(v0 + 7240);
  v3 = *(v0 + 4696);
  v4 = *(v0 + 6760);
  v5 = *(v0 + 6616);
  v6 = *(v0 + 6568);
  v7 = *(v0 + 6520);
  v8 = *(v0 + 6376);
  v9 = *(v0 + 6328);
  v10 = *(v0 + 6280);
  v11 = *(v0 + 6136);
  v14 = *(v0 + 6088);
  v15 = *(v0 + 6040);
  v16 = *(v0 + 5896);
  v17 = *(v0 + 5848);
  v18 = *(v0 + 5800);
  v19 = *(v0 + 5656);
  v20 = *(v0 + 5608);
  v21 = *(v0 + 5560);
  v22 = *(v0 + 5416);
  v23 = *(v0 + 5368);
  v24 = *(v0 + 5320);
  v25 = *(v0 + 5176);
  v26 = *(v0 + 5128);
  v27 = *(v0 + 4984);
  v28 = *(v0 + 4936);
  v29 = *(v0 + 4792);
  sub_226EA9E3C(&unk_22767B328);
  sub_226EA9E3C(&unk_22767B338);
  sub_226EA9E3C(&unk_22767B348);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_227169948()
{
  v1 = *(v0 + 7000);
  v2 = *(v0 + 4696);

  v30 = *(v0 + 7384);
  v3 = *(v0 + 4696);
  v4 = *(v0 + 6760);
  v5 = *(v0 + 6616);
  v6 = *(v0 + 6568);
  v7 = *(v0 + 6520);
  v8 = *(v0 + 6376);
  v9 = *(v0 + 6328);
  v10 = *(v0 + 6280);
  v11 = *(v0 + 6136);
  v14 = *(v0 + 6088);
  v15 = *(v0 + 6040);
  v16 = *(v0 + 5896);
  v17 = *(v0 + 5848);
  v18 = *(v0 + 5800);
  v19 = *(v0 + 5656);
  v20 = *(v0 + 5608);
  v21 = *(v0 + 5560);
  v22 = *(v0 + 5416);
  v23 = *(v0 + 5368);
  v24 = *(v0 + 5320);
  v25 = *(v0 + 5176);
  v26 = *(v0 + 5128);
  v27 = *(v0 + 4984);
  v28 = *(v0 + 4936);
  v29 = *(v0 + 4792);
  sub_226EA9E3C(&unk_22767B328);
  sub_226EA9E3C(&unk_22767B338);
  sub_226EA9E3C(&unk_22767B348);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_227169D48()
{
  v1 = *(v0 + 7000);
  v2 = *(v0 + 4696);

  v30 = *(v0 + 7480);
  v3 = *(v0 + 4696);
  v4 = *(v0 + 6760);
  v5 = *(v0 + 6616);
  v6 = *(v0 + 6568);
  v7 = *(v0 + 6520);
  v8 = *(v0 + 6376);
  v9 = *(v0 + 6328);
  v10 = *(v0 + 6280);
  v11 = *(v0 + 6136);
  v14 = *(v0 + 6088);
  v15 = *(v0 + 6040);
  v16 = *(v0 + 5896);
  v17 = *(v0 + 5848);
  v18 = *(v0 + 5800);
  v19 = *(v0 + 5656);
  v20 = *(v0 + 5608);
  v21 = *(v0 + 5560);
  v22 = *(v0 + 5416);
  v23 = *(v0 + 5368);
  v24 = *(v0 + 5320);
  v25 = *(v0 + 5176);
  v26 = *(v0 + 5128);
  v27 = *(v0 + 4984);
  v28 = *(v0 + 4936);
  v29 = *(v0 + 4792);
  sub_226EA9E3C(&unk_22767B328);
  sub_226EA9E3C(&unk_22767B338);
  sub_226EA9E3C(&unk_22767B348);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_22716A148()
{
  v1 = *(v0 + 7000);
  v2 = *(v0 + 4696);

  v30 = *(v0 + 7624);
  v3 = *(v0 + 4696);
  v4 = *(v0 + 6760);
  v5 = *(v0 + 6616);
  v6 = *(v0 + 6568);
  v7 = *(v0 + 6520);
  v8 = *(v0 + 6376);
  v9 = *(v0 + 6328);
  v10 = *(v0 + 6280);
  v11 = *(v0 + 6136);
  v14 = *(v0 + 6088);
  v15 = *(v0 + 6040);
  v16 = *(v0 + 5896);
  v17 = *(v0 + 5848);
  v18 = *(v0 + 5800);
  v19 = *(v0 + 5656);
  v20 = *(v0 + 5608);
  v21 = *(v0 + 5560);
  v22 = *(v0 + 5416);
  v23 = *(v0 + 5368);
  v24 = *(v0 + 5320);
  v25 = *(v0 + 5176);
  v26 = *(v0 + 5128);
  v27 = *(v0 + 4984);
  v28 = *(v0 + 4936);
  v29 = *(v0 + 4792);
  sub_226EA9E3C(&unk_22767B328);
  sub_226EA9E3C(&unk_22767B338);
  sub_226EA9E3C(&unk_22767B348);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_22716A548()
{
  v1 = *(v0 + 7000);
  v2 = *(v0 + 4696);

  v30 = *(v0 + 7768);
  v3 = *(v0 + 4696);
  v4 = *(v0 + 6760);
  v5 = *(v0 + 6616);
  v6 = *(v0 + 6568);
  v7 = *(v0 + 6520);
  v8 = *(v0 + 6376);
  v9 = *(v0 + 6328);
  v10 = *(v0 + 6280);
  v11 = *(v0 + 6136);
  v14 = *(v0 + 6088);
  v15 = *(v0 + 6040);
  v16 = *(v0 + 5896);
  v17 = *(v0 + 5848);
  v18 = *(v0 + 5800);
  v19 = *(v0 + 5656);
  v20 = *(v0 + 5608);
  v21 = *(v0 + 5560);
  v22 = *(v0 + 5416);
  v23 = *(v0 + 5368);
  v24 = *(v0 + 5320);
  v25 = *(v0 + 5176);
  v26 = *(v0 + 5128);
  v27 = *(v0 + 4984);
  v28 = *(v0 + 4936);
  v29 = *(v0 + 4792);
  sub_226EA9E3C(&unk_22767B328);
  sub_226EA9E3C(&unk_22767B338);
  sub_226EA9E3C(&unk_22767B348);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_22716A948()
{
  v1 = *(v0 + 7000);
  v2 = *(v0 + 4696);

  v30 = *(v0 + 7912);
  v3 = *(v0 + 4696);
  v4 = *(v0 + 6760);
  v5 = *(v0 + 6616);
  v6 = *(v0 + 6568);
  v7 = *(v0 + 6520);
  v8 = *(v0 + 6376);
  v9 = *(v0 + 6328);
  v10 = *(v0 + 6280);
  v11 = *(v0 + 6136);
  v14 = *(v0 + 6088);
  v15 = *(v0 + 6040);
  v16 = *(v0 + 5896);
  v17 = *(v0 + 5848);
  v18 = *(v0 + 5800);
  v19 = *(v0 + 5656);
  v20 = *(v0 + 5608);
  v21 = *(v0 + 5560);
  v22 = *(v0 + 5416);
  v23 = *(v0 + 5368);
  v24 = *(v0 + 5320);
  v25 = *(v0 + 5176);
  v26 = *(v0 + 5128);
  v27 = *(v0 + 4984);
  v28 = *(v0 + 4936);
  v29 = *(v0 + 4792);
  sub_226EA9E3C(&unk_22767B328);
  sub_226EA9E3C(&unk_22767B338);
  sub_226EA9E3C(&unk_22767B348);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_22716AB84()
{
  (*(v0[635] + 8))(v0[647], v0[629]);
  v1 = v0[677];

  return MEMORY[0x282200920](v0 + 162, v1, sub_22716AC08, v0 + 918);
}

uint64_t sub_22716ADA8()
{
  v1 = *(v0 + 7000);
  v2 = *(v0 + 4696);

  v30 = *(v0 + 8056);
  v3 = *(v0 + 4696);
  v4 = *(v0 + 6760);
  v5 = *(v0 + 6616);
  v6 = *(v0 + 6568);
  v7 = *(v0 + 6520);
  v8 = *(v0 + 6376);
  v9 = *(v0 + 6328);
  v10 = *(v0 + 6280);
  v11 = *(v0 + 6136);
  v14 = *(v0 + 6088);
  v15 = *(v0 + 6040);
  v16 = *(v0 + 5896);
  v17 = *(v0 + 5848);
  v18 = *(v0 + 5800);
  v19 = *(v0 + 5656);
  v20 = *(v0 + 5608);
  v21 = *(v0 + 5560);
  v22 = *(v0 + 5416);
  v23 = *(v0 + 5368);
  v24 = *(v0 + 5320);
  v25 = *(v0 + 5176);
  v26 = *(v0 + 5128);
  v27 = *(v0 + 4984);
  v28 = *(v0 + 4936);
  v29 = *(v0 + 4792);
  sub_226EA9E3C(&unk_22767B328);
  sub_226EA9E3C(&unk_22767B338);
  sub_226EA9E3C(&unk_22767B348);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_22716AFE4()
{
  (*(v0[635] + 8))(v0[647], v0[629]);
  v1 = v0[677];

  return MEMORY[0x282200920](v0 + 162, v1, sub_22716B068, v0 + 966);
}

uint64_t sub_22716B208()
{
  v1 = *(v0 + 7000);
  v2 = *(v0 + 4696);

  v30 = *(v0 + 8104);
  v3 = *(v0 + 4696);
  v4 = *(v0 + 6760);
  v5 = *(v0 + 6616);
  v6 = *(v0 + 6568);
  v7 = *(v0 + 6520);
  v8 = *(v0 + 6376);
  v9 = *(v0 + 6328);
  v10 = *(v0 + 6280);
  v11 = *(v0 + 6136);
  v14 = *(v0 + 6088);
  v15 = *(v0 + 6040);
  v16 = *(v0 + 5896);
  v17 = *(v0 + 5848);
  v18 = *(v0 + 5800);
  v19 = *(v0 + 5656);
  v20 = *(v0 + 5608);
  v21 = *(v0 + 5560);
  v22 = *(v0 + 5416);
  v23 = *(v0 + 5368);
  v24 = *(v0 + 5320);
  v25 = *(v0 + 5176);
  v26 = *(v0 + 5128);
  v27 = *(v0 + 4984);
  v28 = *(v0 + 4936);
  v29 = *(v0 + 4792);
  sub_226EA9E3C(&unk_22767B328);
  sub_226EA9E3C(&unk_22767B338);
  sub_226EA9E3C(&unk_22767B348);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_22716B444()
{
  (*(v0[635] + 8))(v0[647], v0[629]);
  v1 = v0[677];

  return MEMORY[0x282200920](v0 + 162, v1, sub_22716B4C8, v0 + 1014);
}

uint64_t sub_22716B668()
{
  v1 = *(v0 + 7000);
  v2 = *(v0 + 4696);

  v30 = *(v0 + 8152);
  v3 = *(v0 + 4696);
  v4 = *(v0 + 6760);
  v5 = *(v0 + 6616);
  v6 = *(v0 + 6568);
  v7 = *(v0 + 6520);
  v8 = *(v0 + 6376);
  v9 = *(v0 + 6328);
  v10 = *(v0 + 6280);
  v11 = *(v0 + 6136);
  v14 = *(v0 + 6088);
  v15 = *(v0 + 6040);
  v16 = *(v0 + 5896);
  v17 = *(v0 + 5848);
  v18 = *(v0 + 5800);
  v19 = *(v0 + 5656);
  v20 = *(v0 + 5608);
  v21 = *(v0 + 5560);
  v22 = *(v0 + 5416);
  v23 = *(v0 + 5368);
  v24 = *(v0 + 5320);
  v25 = *(v0 + 5176);
  v26 = *(v0 + 5128);
  v27 = *(v0 + 4984);
  v28 = *(v0 + 4936);
  v29 = *(v0 + 4792);
  sub_226EA9E3C(&unk_22767B328);
  sub_226EA9E3C(&unk_22767B338);
  sub_226EA9E3C(&unk_22767B348);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_22716B8A4()
{
  (*(v0[635] + 8))(v0[647], v0[629]);
  v1 = v0[677];

  return MEMORY[0x282200920](v0 + 162, v1, sub_22716B928, v0 + 1062);
}

uint64_t sub_22716BAC8()
{
  v1 = *(v0 + 7000);
  v2 = *(v0 + 4696);

  v30 = *(v0 + 8248);
  v3 = *(v0 + 4696);
  v4 = *(v0 + 6760);
  v5 = *(v0 + 6616);
  v6 = *(v0 + 6568);
  v7 = *(v0 + 6520);
  v8 = *(v0 + 6376);
  v9 = *(v0 + 6328);
  v10 = *(v0 + 6280);
  v11 = *(v0 + 6136);
  v14 = *(v0 + 6088);
  v15 = *(v0 + 6040);
  v16 = *(v0 + 5896);
  v17 = *(v0 + 5848);
  v18 = *(v0 + 5800);
  v19 = *(v0 + 5656);
  v20 = *(v0 + 5608);
  v21 = *(v0 + 5560);
  v22 = *(v0 + 5416);
  v23 = *(v0 + 5368);
  v24 = *(v0 + 5320);
  v25 = *(v0 + 5176);
  v26 = *(v0 + 5128);
  v27 = *(v0 + 4984);
  v28 = *(v0 + 4936);
  v29 = *(v0 + 4792);
  sub_226EA9E3C(&unk_22767B328);
  sub_226EA9E3C(&unk_22767B338);
  sub_226EA9E3C(&unk_22767B348);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_22716BD04()
{
  (*(v0[635] + 8))(v0[647], v0[629]);
  v1 = v0[677];

  return MEMORY[0x282200920](v0 + 162, v1, sub_22716BD88, v0 + 1110);
}

uint64_t sub_22716BF28()
{
  v1 = *(v0 + 7000);
  v2 = *(v0 + 4696);

  v30 = *(v0 + 8296);
  v3 = *(v0 + 4696);
  v4 = *(v0 + 6760);
  v5 = *(v0 + 6616);
  v6 = *(v0 + 6568);
  v7 = *(v0 + 6520);
  v8 = *(v0 + 6376);
  v9 = *(v0 + 6328);
  v10 = *(v0 + 6280);
  v11 = *(v0 + 6136);
  v14 = *(v0 + 6088);
  v15 = *(v0 + 6040);
  v16 = *(v0 + 5896);
  v17 = *(v0 + 5848);
  v18 = *(v0 + 5800);
  v19 = *(v0 + 5656);
  v20 = *(v0 + 5608);
  v21 = *(v0 + 5560);
  v22 = *(v0 + 5416);
  v23 = *(v0 + 5368);
  v24 = *(v0 + 5320);
  v25 = *(v0 + 5176);
  v26 = *(v0 + 5128);
  v27 = *(v0 + 4984);
  v28 = *(v0 + 4936);
  v29 = *(v0 + 4792);
  sub_226EA9E3C(&unk_22767B328);
  sub_226EA9E3C(&unk_22767B338);
  sub_226EA9E3C(&unk_22767B348);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_22716C164()
{
  (*(v0[635] + 8))(v0[647], v0[629]);
  v1 = v0[677];

  return MEMORY[0x282200920](v0 + 162, v1, sub_22716C1E8, v0 + 1158);
}

uint64_t sub_22716C388()
{
  v1 = *(v0 + 7000);
  v2 = *(v0 + 4696);

  v30 = *(v0 + 8344);
  v3 = *(v0 + 4696);
  v4 = *(v0 + 6760);
  v5 = *(v0 + 6616);
  v6 = *(v0 + 6568);
  v7 = *(v0 + 6520);
  v8 = *(v0 + 6376);
  v9 = *(v0 + 6328);
  v10 = *(v0 + 6280);
  v11 = *(v0 + 6136);
  v14 = *(v0 + 6088);
  v15 = *(v0 + 6040);
  v16 = *(v0 + 5896);
  v17 = *(v0 + 5848);
  v18 = *(v0 + 5800);
  v19 = *(v0 + 5656);
  v20 = *(v0 + 5608);
  v21 = *(v0 + 5560);
  v22 = *(v0 + 5416);
  v23 = *(v0 + 5368);
  v24 = *(v0 + 5320);
  v25 = *(v0 + 5176);
  v26 = *(v0 + 5128);
  v27 = *(v0 + 4984);
  v28 = *(v0 + 4936);
  v29 = *(v0 + 4792);
  sub_226EA9E3C(&unk_22767B328);
  sub_226EA9E3C(&unk_22767B338);
  sub_226EA9E3C(&unk_22767B348);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_22716C5C4()
{
  (*(v0[635] + 8))(v0[647], v0[629]);
  v1 = v0[677];

  return MEMORY[0x282200920](v0 + 162, v1, sub_22716C648, v0 + 1206);
}

uint64_t sub_22716C7E8()
{
  v1 = *(v0 + 7000);
  v2 = *(v0 + 4696);

  v30 = *(v0 + 8392);
  v3 = *(v0 + 4696);
  v4 = *(v0 + 6760);
  v5 = *(v0 + 6616);
  v6 = *(v0 + 6568);
  v7 = *(v0 + 6520);
  v8 = *(v0 + 6376);
  v9 = *(v0 + 6328);
  v10 = *(v0 + 6280);
  v11 = *(v0 + 6136);
  v14 = *(v0 + 6088);
  v15 = *(v0 + 6040);
  v16 = *(v0 + 5896);
  v17 = *(v0 + 5848);
  v18 = *(v0 + 5800);
  v19 = *(v0 + 5656);
  v20 = *(v0 + 5608);
  v21 = *(v0 + 5560);
  v22 = *(v0 + 5416);
  v23 = *(v0 + 5368);
  v24 = *(v0 + 5320);
  v25 = *(v0 + 5176);
  v26 = *(v0 + 5128);
  v27 = *(v0 + 4984);
  v28 = *(v0 + 4936);
  v29 = *(v0 + 4792);
  sub_226EA9E3C(&unk_22767B328);
  sub_226EA9E3C(&unk_22767B338);
  sub_226EA9E3C(&unk_22767B348);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_22716CBC4()
{
  v1 = *(v0 + 7000);
  v2 = *(v0 + 4696);

  v30 = *(v0 + 8440);
  v3 = *(v0 + 4696);
  v4 = *(v0 + 6760);
  v5 = *(v0 + 6616);
  v6 = *(v0 + 6568);
  v7 = *(v0 + 6520);
  v8 = *(v0 + 6376);
  v9 = *(v0 + 6328);
  v10 = *(v0 + 6280);
  v11 = *(v0 + 6136);
  v14 = *(v0 + 6088);
  v15 = *(v0 + 6040);
  v16 = *(v0 + 5896);
  v17 = *(v0 + 5848);
  v18 = *(v0 + 5800);
  v19 = *(v0 + 5656);
  v20 = *(v0 + 5608);
  v21 = *(v0 + 5560);
  v22 = *(v0 + 5416);
  v23 = *(v0 + 5368);
  v24 = *(v0 + 5320);
  v25 = *(v0 + 5176);
  v26 = *(v0 + 5128);
  v27 = *(v0 + 4984);
  v28 = *(v0 + 4936);
  v29 = *(v0 + 4792);
  sub_226EA9E3C(&unk_22767B328);
  sub_226EA9E3C(&unk_22767B338);
  sub_226EA9E3C(&unk_22767B348);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_22716CE00(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226E93028;

  return sub_22716CE9C(a1);
}

uint64_t sub_22716CE9C(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA360, &qword_2276720F0);
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v6 = sub_227669890();
  v2[13] = v6;
  v7 = *(v6 - 8);
  v2[14] = v7;
  v8 = *(v7 + 64) + 15;
  v2[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22716CFD0, 0, 0);
}

uint64_t sub_22716CFD0()
{
  v1 = v0[15];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[9];
  v5 = v0[10];
  v6 = v0[8];
  sub_22766A7F0();
  sub_226E9DD3C("fetchRemoteForYouCanvas", 23, 2, &dword_226E8E000, 1, v0 + 2);
  v7 = __swift_project_boxed_opaque_existential_0((v6 + 624), *(v6 + 648));
  v8 = *(*__swift_project_boxed_opaque_existential_0((*v7 + 16), *(*v7 + 40)) + 16);
  sub_227289554(14, 0, 0, v3);
  sub_2272A4B68(v3, v2);
  v9 = *(v5 + 8);
  v0[16] = v9;
  v0[17] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v3, v4);
  v10 = swift_task_alloc();
  v0[18] = v10;
  *(v10 + 16) = "SeymourServices/RecommendationSystem.swift";
  *(v10 + 24) = 42;
  *(v10 + 32) = 2;
  *(v10 + 40) = 695;
  *(v10 + 48) = v2;
  v11 = *(MEMORY[0x277D85A40] + 4);
  v12 = swift_task_alloc();
  v0[19] = v12;
  v13 = sub_227666190();
  *v12 = v0;
  v12[1] = sub_22716D19C;
  v14 = v0[7];

  return MEMORY[0x2822008A0](v14, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_22717AED0, v10, v13);
}

uint64_t sub_22716D19C()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *(*v1 + 144);
  v8 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v5 = sub_22716D3C0;
  }

  else
  {
    v6 = *(v2 + 136);
    (*(v2 + 128))(*(v2 + 96), *(v2 + 72));
    v5 = sub_22716D2E4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22716D2E4()
{
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[11];
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  sub_227669930();
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_22716D3C0()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 136);
  v4 = *(v0 + 112);
  v3 = *(v0 + 120);
  v5 = *(v0 + 104);
  v6 = *(v0 + 88);
  (*(v0 + 128))(*(v0 + 96), *(v0 + 72));
  v7 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
  sub_227669930();
  swift_willThrow();
  v8 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
  sub_227669920();
  (*(v4 + 8))(v3, v5);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v9 = *(v0 + 8);
  v10 = *(v0 + 160);

  return v9();
}

uint64_t sub_22716D4E4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_22716D578;

  return sub_227165ECC();
}

uint64_t sub_22716D578(uint64_t a1)
{
  v3 = *(*v2 + 24);
  v4 = *v2;
  *(v4 + 32) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22717B80C, 0, 0);
  }
}

uint64_t sub_22716D6AC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_22716D740;

  return sub_2271648AC();
}

uint64_t sub_22716D740(char a1)
{
  v3 = *v1;
  v4 = *(*v1 + 32);
  v5 = *v1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v5;
  v6[1] = sub_22716D8A8;
  v7 = v3[3];
  v8 = v3[2];

  return sub_227164F28(v8, a1);
}

uint64_t sub_22716D8A8()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_22716D99C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226E93028;

  return sub_22716DA38(a1);
}

uint64_t sub_22716DA38(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = sub_227669890();
  v2[13] = v3;
  v4 = *(v3 - 8);
  v2[14] = v4;
  v5 = *(v4 + 64) + 15;
  v2[15] = swift_task_alloc();
  v6 = sub_227668830();
  v2[16] = v6;
  v7 = *(v6 - 8);
  v2[17] = v7;
  v8 = *(v7 + 64) + 15;
  v2[18] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB930, &unk_22767B3F0) - 8) + 64) + 15;
  v2[19] = swift_task_alloc();
  v10 = sub_227664CA0();
  v2[20] = v10;
  v11 = *(v10 - 8);
  v2[21] = v11;
  v12 = *(v11 + 64) + 15;
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v13 = sub_227667500();
  v2[26] = v13;
  v14 = *(v13 - 8);
  v2[27] = v14;
  v15 = *(v14 + 64) + 15;
  v2[28] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B93D8, &qword_227673E10);
  v2[29] = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22716DCB0, 0, 0);
}

uint64_t sub_22716DCB0()
{
  v1 = v0[12];
  v2 = v1[70];
  v3 = v1[71];
  __swift_project_boxed_opaque_existential_0(v1 + 67, v2);
  v4 = *(v3 + 24);

  v11 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[32] = v6;
  *v6 = v0;
  v6[1] = sub_22716DE18;
  v7 = v0[31];
  v8 = v0[29];
  v9 = v0[12];

  return (v11)(v7, sub_22717AD48, v9, v8, v2, v3);
}

uint64_t sub_22716DE18()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v7 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v4 = sub_22716ED88;
  }

  else
  {
    v5 = *(v2 + 96);

    v4 = sub_22716DF34;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22716DF34()
{
  v1 = *(v0 + 240);
  sub_226E93170(*(v0 + 248), v1, &qword_27D7B93D8, &qword_227673E10);
  v2 = sub_227668A00();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_226E97D1C(*(v0 + 240), &qword_27D7B93D8, &qword_227673E10);
LABEL_7:
    v13 = MEMORY[0x277D84F90];
    *(v0 + 296) = MEMORY[0x277D84F90];
    v14 = *(v0 + 120);
    v15 = *(v0 + 96);
    sub_22766A7F0();
    sub_226E9DD3C("fetchPersonalizationUserHistoryData", 35, 2, &dword_226E8E000, 1, (v0 + 16));
    v16 = swift_task_alloc();
    *(v0 + 304) = v16;
    *v16 = v0;
    v16[1] = sub_22716E984;
    v17 = *(v0 + 88);
    v18 = *(v0 + 96);

    return sub_22717296C(v17, v15 + 832, v18, v13);
  }

  v4 = *(v0 + 240);
  v5 = sub_2276689C0();
  v7 = v6;
  (*(v3 + 8))(v4, v2);
  *(v0 + 56) = v5;
  *(v0 + 64) = v7 & 1;
  *(v0 + 72) = 1;
  *(v0 + 80) = 1;
  sub_22717AD98();
  sub_22717ADEC();
  if ((sub_227663B20() & 1) == 0)
  {
    goto LABEL_7;
  }

  v8 = *(v0 + 224);
  __swift_project_boxed_opaque_existential_0((*(v0 + 96) + 432), *(*(v0 + 96) + 456));
  sub_2276674E0();
  v9 = swift_task_alloc();
  *(v0 + 272) = v9;
  *v9 = v0;
  v9[1] = sub_22716E1DC;
  v10 = *(v0 + 224);
  v11 = MEMORY[0x277D84F90];

  return sub_2274FBDB4(v10, v11);
}

uint64_t sub_22716E1DC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 272);
  v6 = *v2;
  v4[35] = a1;
  v4[36] = v1;

  (*(v3[27] + 8))(v3[28], v3[26]);
  if (v1)
  {
    v7 = sub_22716E884;
  }

  else
  {
    v7 = sub_22716E34C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22716E34C()
{
  v57 = v0;
  v1 = v0[35];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[21];
    v4 = sub_2274CDB04(*(v1 + 16), 0);
    v5 = sub_2274CEFD4(&v56, &v4[(*(v3 + 80) + 32) & ~*(v3 + 80)], v2, v1);

    sub_226EBB21C();
    if (v5 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v4 = MEMORY[0x277D84F90];
LABEL_5:
  v6 = v0[36];
  v56 = v4;
  sub_227178B00(&v56);
  if (v6)
  {
  }

  v8 = v0[35];

  v9 = v56;
  v10 = *(v56 + 2);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v12 = 0;
    v13 = v0[21];
    v50 = *(v56 + 2);
    v53 = (v13 + 32);
    v51 = v56;
    while (v12 < *(v9 + 2))
    {
      v14 = v0[19];
      v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v16 = *(v13 + 72);
      (*(v13 + 16))(v0[25], &v9[v15 + v16 * v12], v0[20]);
      sub_227664C50();
      v17 = sub_2276674C0();
      v18 = (*(*(v17 - 8) + 48))(v14, 1, v17);
      sub_226E97D1C(v14, &unk_27D7BB930, &unk_22767B3F0);
      v19 = v0[25];
      if (v18 == 1)
      {
        v20 = *v53;
        (*v53)(v0[24], v0[25], v0[20]);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v56 = v11;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_226F1F828(0, *(v11 + 2) + 1, 1);
          v11 = v56;
        }

        v23 = *(v11 + 2);
        v22 = *(v11 + 3);
        if (v23 >= v22 >> 1)
        {
          sub_226F1F828(v22 > 1, v23 + 1, 1);
          v11 = v56;
        }

        v24 = v0[24];
        v25 = v0[20];
        *(v11 + 2) = v23 + 1;
        result = v20(&v11[v15 + v23 * v16], v24, v25);
        v10 = v50;
        v9 = v51;
      }

      else
      {
        result = (*(v13 + 8))(v0[25], v0[20]);
      }

      if (v10 == ++v12)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

LABEL_20:

  v26 = sub_2276671B0();
  result = sub_2273FC4C0(v26, v11);
  v54 = v28;
  v55 = v29 >> 1;
  v30 = (v29 >> 1) - v27;
  if (__OFSUB__(v29 >> 1, v27))
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v30)
  {
    v31 = v27;
    v56 = MEMORY[0x277D84F90];
    result = sub_226F20128(0, v30 & ~(v30 >> 63), 0);
    if (v30 < 0)
    {
LABEL_38:
      __break(1u);
      return result;
    }

    v49 = v0[21];
    v48 = v0[17];
    v32 = v55;
    v33 = v56;
    if (v31 > v55)
    {
      v32 = v31;
    }

    v52 = v32;
    while (v52 != v31)
    {
      v35 = v0[22];
      v34 = v0[23];
      v36 = v0[20];
      v37 = v0[18];
      v38 = *(v49 + 16);
      v38(v34, v54 + *(v49 + 72) * v31, v36);
      v38(v35, v34, v36);
      sub_227668820();
      (*(v49 + 8))(v34, v36);
      v56 = v33;
      v40 = *(v33 + 2);
      v39 = *(v33 + 3);
      if (v40 >= v39 >> 1)
      {
        sub_226F20128(v39 > 1, v40 + 1, 1);
        v33 = v56;
      }

      v41 = v0[18];
      v42 = v0[16];
      *(v33 + 2) = v40 + 1;
      result = (*(v48 + 32))(&v33[((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v40], v41, v42);
      if (v55 == ++v31)
      {
        swift_unknownObjectRelease();
        goto LABEL_32;
      }
    }

    goto LABEL_36;
  }

  swift_unknownObjectRelease();
  v33 = MEMORY[0x277D84F90];
LABEL_32:
  v0[37] = v33;
  v43 = v0[15];
  v44 = v0[12];
  sub_22766A7F0();
  sub_226E9DD3C("fetchPersonalizationUserHistoryData", 35, 2, &dword_226E8E000, 1, v0 + 2);
  v45 = swift_task_alloc();
  v0[38] = v45;
  *v45 = v0;
  v45[1] = sub_22716E984;
  v46 = v0[11];
  v47 = v0[12];

  return sub_22717296C(v46, v44 + 832, v47, v33);
}

uint64_t sub_22716E884()
{
  sub_226E97D1C(v0[31], &qword_27D7B93D8, &qword_227673E10);
  v13 = v0[36];
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[28];
  v5 = v0[24];
  v4 = v0[25];
  v7 = v0[22];
  v6 = v0[23];
  v9 = v0[18];
  v8 = v0[19];
  v10 = v0[15];

  v11 = v0[1];

  return v11();
}

uint64_t sub_22716E984()
{
  v2 = *v1;
  v3 = *(*v1 + 304);
  v4 = *v1;
  *(*v1 + 312) = v0;

  v5 = *(v2 + 296);

  if (v0)
  {
    v6 = sub_22716EC08;
  }

  else
  {
    v6 = sub_22716EAB8;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_22716EAB8()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[28];
  v4 = v0[25];
  v11 = v0[24];
  v12 = v0[23];
  v13 = v0[22];
  v14 = v0[19];
  v15 = v0[18];
  v6 = v0[14];
  v5 = v0[15];
  v7 = v0[13];
  v8 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  sub_227669930();
  (*(v6 + 8))(v5, v7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  sub_226E97D1C(v1, &qword_27D7B93D8, &qword_227673E10);

  v9 = v0[1];

  return v9();
}

uint64_t sub_22716EC08()
{
  v1 = v0[39];
  v2 = v0[31];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[13];
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  sub_227669930();
  swift_willThrow();
  v7 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  sub_227669920();
  (*(v4 + 8))(v3, v5);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  sub_226E97D1C(v2, &qword_27D7B93D8, &qword_227673E10);
  v20 = v0[39];
  v9 = v0[30];
  v8 = v0[31];
  v10 = v0[28];
  v12 = v0[24];
  v11 = v0[25];
  v14 = v0[22];
  v13 = v0[23];
  v16 = v0[18];
  v15 = v0[19];
  v17 = v0[15];

  v18 = v0[1];

  return v18();
}

uint64_t sub_22716ED88()
{
  v1 = v0[12];

  v14 = v0[33];
  v3 = v0[30];
  v2 = v0[31];
  v4 = v0[28];
  v6 = v0[24];
  v5 = v0[25];
  v8 = v0[22];
  v7 = v0[23];
  v10 = v0[18];
  v9 = v0[19];
  v11 = v0[15];

  v12 = v0[1];

  return v12();
}

uint64_t sub_22716EE78(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226E93028;

  return sub_22716EF14(a1);
}

uint64_t sub_22716EF14(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_2276638D0();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB918, &unk_22767B3C8) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB920, &unk_227672480) - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v8 = sub_227669890();
  v2[16] = v8;
  v9 = *(v8 - 8);
  v2[17] = v9;
  v10 = *(v9 + 64) + 15;
  v2[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22716F0B8, 0, 0);
}

uint64_t sub_22716F0B8()
{
  v1 = v0[18];
  sub_22766A7F0();
  sub_226E9DD3C("fetchPersonalizationUserLibraryData", 35, 2, &dword_226E8E000, 1, v0 + 2);
  v2 = swift_task_alloc();
  v0[19] = v2;
  *v2 = v0;
  v2[1] = sub_22716F180;
  v3 = v0[15];
  v4 = v0[8];

  return sub_2271656FC(v3);
}

uint64_t sub_22716F180()
{
  v2 = *(*v1 + 152);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_22716F4BC;
  }

  else
  {
    v3 = sub_22716F298;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22716F298()
{
  v1 = v0[14];
  v2 = v0[9];
  v3 = v0[10];
  sub_226E93170(v0[15], v1, &unk_27D7BB920, &unk_227672480);
  v4 = 1;
  if ((*(v3 + 48))(v1, 1, v2) != 1)
  {
    v5 = v0[13];
    v7 = v0[11];
    v6 = v0[12];
    v8 = v0[9];
    v9 = v0[10];
    (*(v9 + 32))(v6, v0[14], v8);
    (*(v9 + 16))(v7, v6, v8);
    sub_227667880();
    (*(v9 + 8))(v6, v8);
    v4 = 0;
  }

  v10 = v0[17];
  v11 = v0[18];
  v12 = v0[15];
  v13 = v0[16];
  v14 = v0[13];
  v15 = v0[14];
  v16 = v0[12];
  v22 = v0[11];
  v17 = v0[7];
  v18 = sub_227667890();
  (*(*(v18 - 8) + 56))(v14, v4, 1, v18);
  sub_227668660();
  sub_226E97D1C(v12, &unk_27D7BB920, &unk_227672480);
  v19 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  sub_227669930();
  (*(v10 + 8))(v11, v13);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v20 = v0[1];

  return v20();
}

uint64_t sub_22716F4BC()
{
  v1 = 1;
  (*(v0[10] + 56))(v0[15], 1, 1, v0[9]);
  v2 = v0[14];
  v3 = v0[9];
  v4 = v0[10];
  sub_226E93170(v0[15], v2, &unk_27D7BB920, &unk_227672480);
  if ((*(v4 + 48))(v2, 1, v3) != 1)
  {
    v5 = v0[13];
    v7 = v0[11];
    v6 = v0[12];
    v8 = v0[9];
    v9 = v0[10];
    (*(v9 + 32))(v6, v0[14], v8);
    (*(v9 + 16))(v7, v6, v8);
    sub_227667880();
    (*(v9 + 8))(v6, v8);
    v1 = 0;
  }

  v10 = v0[17];
  v11 = v0[18];
  v12 = v0[15];
  v13 = v0[16];
  v14 = v0[13];
  v15 = v0[14];
  v16 = v0[12];
  v22 = v0[11];
  v17 = v0[7];
  v18 = sub_227667890();
  (*(*(v18 - 8) + 56))(v14, v1, 1, v18);
  sub_227668660();
  sub_226E97D1C(v12, &unk_27D7BB920, &unk_227672480);
  v19 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  sub_227669930();
  (*(v10 + 8))(v11, v13);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v20 = v0[1];

  return v20();
}

uint64_t sub_22716F700(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226E93028;

  return sub_22716F79C(a1);
}

uint64_t sub_22716F79C(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB8C0, &qword_22767F780) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v4 = swift_task_alloc();
  v2[14] = v4;
  v2[15] = swift_task_alloc();
  v5 = swift_task_alloc();
  v2[16] = v5;
  *v5 = v2;
  v5[1] = sub_22716F890;

  return sub_22715D2C4(v4);
}

uint64_t sub_22716F890()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_22716FAD8;
  }

  else
  {
    v3 = sub_22716F9A4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22716F9A4()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = sub_227666650();
  (*(*(v3 - 8) + 56))(v1, 0, 1, v3);
  sub_22717ACC0(v1, v2);
  v4 = v0[15];
  v5 = v0[12];
  v6 = v0[11];
  sub_226E93170(v4, v0[13], &unk_27D7BB8C0, &qword_22767F780);
  v7 = *(v5 + 920);
  sub_227668B20();
  sub_226E97D1C(v4, &unk_27D7BB8C0, &qword_22767F780);

  v8 = v0[1];

  return v8();
}

uint64_t sub_22716FAD8()
{
  v1 = *(v0 + 136);
  swift_getErrorValue();
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = sub_227665A50();
  *(v0 + 40) = v5;
  *(v0 + 48) = sub_22717B7C4(&qword_28139B770, MEMORY[0x277D51B70]);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 16));
  (*(*(v5 - 8) + 104))(boxed_opaque_existential_0, *MEMORY[0x277D51B48], v5);
  LOBYTE(v2) = sub_22766D290();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v7 = *(v0 + 120);
  if (v2)
  {

    v8 = sub_227666650();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    v9 = *(v0 + 120);
    v10 = *(v0 + 96);
    v11 = *(v0 + 88);
    sub_226E93170(v9, *(v0 + 104), &unk_27D7BB8C0, &qword_22767F780);
    v12 = *(v10 + 920);
    sub_227668B20();
    sub_226E97D1C(v9, &unk_27D7BB8C0, &qword_22767F780);

    v13 = *(v0 + 8);
  }

  else
  {
    v15 = *(v0 + 104);
    v14 = *(v0 + 112);
    v16 = *(v0 + 136);
    swift_willThrow();

    v13 = *(v0 + 8);
    v17 = *(v0 + 136);
  }

  return v13();
}

uint64_t sub_22716FCFC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226E92F34;

  return sub_22716FD98(a1);
}

uint64_t sub_22716FD98(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_227669890();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22716FE58, 0, 0);
}

uint64_t sub_22716FE58()
{
  v1 = v0[11];
  v2 = v0[8];
  sub_22766A7F0();
  sub_226E9DD3C("fetchPersonalizationCatalogData", 31, 2, &dword_226E8E000, 1, v0 + 2);
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_22716FF24;
  v4 = v0[7];
  v5 = v0[8];

  return sub_22717324C(v4, v2 + 832, v5);
}

uint64_t sub_22716FF24()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_22717B830;
  }

  else
  {
    v3 = sub_22717B838;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227170038(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_22766A430();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_227666650();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v2[9] = *(v7 + 64);
  v2[10] = swift_task_alloc();
  v8 = sub_22766B390();
  v2[11] = v8;
  v9 = *(v8 - 8);
  v2[12] = v9;
  v10 = *(v9 + 64) + 15;
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271701B8, 0, 0);
}

uint64_t sub_2271701B8()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[8];
  v6 = v0[9];
  v7 = v0[7];
  v9 = v0[2];
  v8 = v0[3];
  sub_22766A660();
  sub_22766B370();
  (*(v2 + 8))(v1, v3);
  v10 = v8[71];
  __swift_project_boxed_opaque_existential_0(v8 + 67, v8[70]);
  (*(v5 + 16))(v4, v9, v7);
  v11 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v12 = swift_allocObject();
  v0[14] = v12;
  *(v12 + 16) = v8;
  (*(v5 + 32))(v12 + v11, v4, v7);
  v13 = *(v10 + 24);

  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  v0[15] = v15;
  *v15 = v0;
  v15[1] = sub_227170404;

  return v17();
}

uint64_t sub_227170404()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v7 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = sub_22717061C;
  }

  else
  {
    v5 = *(v2 + 112);

    v4 = sub_227170520;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_227170520()
{
  v1 = v0[13];
  v2 = v0[10];
  v4 = v0[5];
  v3 = v0[6];
  v6 = v0[3];
  v5 = v0[4];
  v7 = *__swift_project_boxed_opaque_existential_0(v6 + 99, v6[102]);
  sub_2271D7EE8();
  v8 = v6[52];
  v9 = v6[53];
  swift_getObjectType();
  sub_22766A420();
  sub_2276699D0();
  (*(v4 + 8))(v3, v5);

  v10 = v0[1];

  return v10();
}

uint64_t sub_22717061C()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[10];
  v4 = v0[6];

  v5 = v0[1];
  v6 = v0[16];

  return v5();
}

uint64_t sub_2271706C8()
{
  v1 = *(v0 + 16);
  v2 = v1[70];
  v3 = v1[71];
  __swift_project_boxed_opaque_existential_0(v1 + 67, v2);
  v4 = *(v3 + 32);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_2271707F4;

  return v8(v2, v3);
}

uint64_t sub_2271707F4(char a1)
{
  v2 = *(*v1 + 24);
  v4 = *v1;
  *(*v1 + 32) = a1;

  return MEMORY[0x2822009F8](sub_2271708F4, 0, 0);
}

uint64_t sub_2271708F4()
{
  v1 = *(v0 + 32);
  if (sub_227669C10())
  {
    v2 = sub_227665A50();
    sub_22717B7C4(&qword_28139B778, MEMORY[0x277D51B70]);
    swift_allocError();
    (*(*(v2 - 8) + 104))(v3, *MEMORY[0x277D51B40], v2);
    swift_willThrow();
  }

  v4 = *(v0 + 8);

  return v4();
}

void sub_227170A14(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22766B390();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2273452EC(a1);
  if (!v3)
  {
    sub_22766A770();
    sub_22766B370();
    (*(v7 + 8))(v10, v6);
    v11 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    sub_22756DD1C(a3, v11[1], *(v11 + 16), v11[3]);
  }
}

uint64_t sub_227170B5C(uint64_t a1)
{
  v2 = sub_22766A000();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 416);
  v7 = *(a1 + 424);
  swift_getObjectType();
  sub_227669FF0();
  sub_2276699D0();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_227170C54(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_227170C74, 0, 0);
}

uint64_t sub_227170C74()
{
  v1 = v0[3];
  v2 = *__swift_project_boxed_opaque_existential_0((v0[4] + 176), *(v0[4] + 200));
  v3 = sub_226E9EF44();
  v0[5] = v3;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  v0[7] = v6;
  v7 = sub_226E99364(0, &qword_281398A70, 0x277CEE4A0);
  *v6 = v0;
  v6[1] = sub_227170D9C;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000012, 0x8000000227699D80, sub_22717B404, v4, v7);
}

uint64_t sub_227170D9C()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_227170F20;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_227170EB8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_227170EB8()
{
  v1 = v0[5];
  swift_unknownObjectRelease();
  v2 = v0[2];
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_227170F20()
{
  v1 = v0[5];
  v2 = v0[6];
  swift_unknownObjectRelease();

  v3 = v0[1];
  v4 = v0[8];

  return v3();
}

uint64_t sub_227170F8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = a2;
  v31 = a3;
  v29 = a1;
  v32 = sub_22766B3B0();
  v35 = *(v32 - 8);
  v3 = *(v35 + 64);
  MEMORY[0x28223BE20](v32);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22766B3F0();
  v33 = *(v6 - 8);
  v34 = v6;
  v7 = *(v33 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB9F8, &unk_22767B6A0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v27 - v13;
  v15 = sub_22766B3C0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226E99364(0, &qword_2813A5840, 0x277D85C78);
  (*(v16 + 104))(v19, *MEMORY[0x277D851B8], v15);
  v28 = sub_22766C980();
  (*(v16 + 8))(v19, v15);
  (*(v11 + 16))(v14, v29, v10);
  v20 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v21 = swift_allocObject();
  v22 = v31;
  *(v21 + 16) = v30;
  *(v21 + 24) = v22;
  (*(v11 + 32))(v21 + v20, v14, v10);
  aBlock[4] = sub_22717B40C;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226E9D72C;
  aBlock[3] = &block_descriptor_17;
  v23 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  sub_22766B3D0();
  v36 = MEMORY[0x277D84F90];
  sub_22717B7C4(&qword_2813A5870, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA240, &unk_227674420);
  sub_226E9CFD0(&qword_2813A5860, &unk_27D7BA240, &unk_227674420);
  v24 = v32;
  sub_22766CC80();
  v25 = v28;
  MEMORY[0x22AA98C80](0, v9, v5, v23);
  _Block_release(v23);

  (*(v35 + 8))(v5, v24);
  (*(v33 + 8))(v9, v34);
}