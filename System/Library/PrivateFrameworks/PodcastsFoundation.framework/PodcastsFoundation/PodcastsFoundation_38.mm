uint64_t sub_1D909D854(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = sub_1D9176C2C();
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9F70, qword_1D91B1680) - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v8 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  v2[9] = v8;
  v9 = *(v8 - 8);
  v2[10] = v9;
  v10 = *(v9 + 64) + 15;
  v2[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D909D9E0, 0, 0);
}

uint64_t sub_1D909D9E0()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  sub_1D8D088B4(v0[2], v3, &qword_1ECAB9F70, qword_1D91B1680);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1D8D08A50(v0[8], &qword_1ECAB9F70, qword_1D91B1680);
    if (qword_1ECAB0DB8 != -1)
    {
      swift_once();
    }

    v4 = sub_1D917744C();
    __swift_project_value_buffer(v4, qword_1ECAB0DC0);
    v5 = sub_1D917741C();
    v6 = sub_1D9178D1C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1D8CEC000, v5, v6, "Initial media item not found", v7, 2u);
      MEMORY[0x1DA72CB90](v7, -1, -1);
    }

    type metadata accessor for PodcastsPlaybackError.ValidationError();
    sub_1D8D08C08(&qword_1ECABA008, type metadata accessor for PodcastsPlaybackError.ValidationError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_34;
  }

  v8 = v0[11];
  v9 = v0[9];
  sub_1D90AB210(v0[8], v8, type metadata accessor for PodcastsMediaLibrary.MediaItem);
  v10 = *(v8 + *(v9 + 120));
  if (v10 != 5 && (sub_1D8FDD174(v10, 4u) & 1) != 0)
  {
    v11 = v0[11];
    if (*(v11 + 24))
    {
      v12 = v0[5];
      v13 = v0[6];
      v14 = v0[4];
      v15 = *(v11 + 16);
      sub_1D9176BFC();
      if ((*(v13 + 48))(v14, 1, v12) != 1)
      {
        v11 = v0[11];
        v41 = v0[6];
        v40 = v0[7];
        v42 = v0[5];
        (*(v41 + 32))(v40, v0[4], v42);
        type metadata accessor for PodcastsPlaybackError.ValidationError();
        sub_1D8D08C08(&qword_1ECABA008, type metadata accessor for PodcastsPlaybackError.ValidationError);
        swift_allocError();
        (*(v41 + 16))(v43, v40, v42);
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        (*(v41 + 8))(v40, v42);
        goto LABEL_32;
      }

      sub_1D8D08A50(v0[4], &unk_1ECAB5910, &qword_1D9188C90);
      v11 = v0[11];
    }

    goto LABEL_30;
  }

  v11 = v0[11];
  v16 = v0[9];
  v17 = *(v11 + v16[29]);
  v18 = v17 > 4;
  v19 = (1 << v17) & 0x19;
  if (v18 || v19 == 0)
  {
    v27 = v0[3];
    v28 = sub_1D909E188();
    v11 = v0[11];
    if ((v28 & 1) == 0)
    {
      goto LABEL_30;
    }

    v16 = v0[9];
  }

  if (*(v11 + v16[27]))
  {
    if (*(v11 + 56))
    {
      if (qword_1ECAB0DB8 != -1)
      {
        swift_once();
      }

      v21 = sub_1D917744C();
      __swift_project_value_buffer(v21, qword_1ECAB0DC0);
      v22 = sub_1D917741C();
      v23 = sub_1D9178D1C();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_1D8CEC000, v22, v23, "Subscription required for an item without an adamID.", v24, 2u);
        MEMORY[0x1DA72CB90](v24, -1, -1);
      }

      v25 = v0[11];

      type metadata accessor for PodcastsPlaybackError.ValidationError();
      sub_1D8D08C08(&qword_1ECABA008, type metadata accessor for PodcastsPlaybackError.ValidationError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v26 = v25;
      goto LABEL_33;
    }

    v29 = *(v11 + 48);
    type metadata accessor for PodcastsPlaybackError.ValidationError();
    sub_1D8D08C08(&qword_1ECABA008, type metadata accessor for PodcastsPlaybackError.ValidationError);
    swift_allocError();
    *v30 = v29;
    goto LABEL_31;
  }

  if ((*(v11 + v16[26]) & 1) == 0)
  {
    v32 = v0[7];
    v31 = v0[8];
    v33 = v0[4];
    sub_1D90AA0F0(v11, type metadata accessor for PodcastsMediaLibrary.MediaItem);

    v34 = v0[1];
    goto LABEL_35;
  }

LABEL_30:
  type metadata accessor for PodcastsPlaybackError.ValidationError();
  sub_1D8D08C08(&qword_1ECABA008, type metadata accessor for PodcastsPlaybackError.ValidationError);
  swift_allocError();
LABEL_31:
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
LABEL_32:
  v26 = v11;
LABEL_33:
  sub_1D90AA0F0(v26, type metadata accessor for PodcastsMediaLibrary.MediaItem);
LABEL_34:
  v35 = v0[11];
  v37 = v0[7];
  v36 = v0[8];
  v38 = v0[4];

  v34 = v0[1];
LABEL_35:

  return v34();
}

BOOL PodcastsMediaLibrary.MediaItem.requiresAuthentication.getter()
{
  v1 = *(v0 + *(type metadata accessor for PodcastsMediaLibrary.MediaItem(0) + 116));
  if (v1 == 4)
  {
    return 0;
  }

  if (v1)
  {
    v3 = v1 == 3;
  }

  else
  {
    v3 = 1;
  }

  return !v3;
}

uint64_t sub_1D909E188()
{
  v8[1] = *MEMORY[0x1E69E9840];
  v0 = [objc_opt_self() sharedAccountStore];
  v8[0] = 0;
  v1 = [v0 activeStoreAccountWithError_];

  if (!v1)
  {
    v5 = v8[0];
    v6 = sub_1D9176A6C();

    swift_willThrow();
    goto LABEL_5;
  }

  v2 = v8[0];
  v3 = [v1 ams_DSID];

  if (!v3)
  {
LABEL_5:
    result = 0;
    goto LABEL_6;
  }

  result = 1;
LABEL_6:
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t PlaybackIntent.resolvedIntent()(uint64_t a1)
{
  v2[135] = v1;
  v2[134] = a1;
  v3 = sub_1D9176EAC();
  v2[136] = v3;
  v4 = *(v3 - 8);
  v2[137] = v4;
  v5 = *(v4 + 64) + 15;
  v2[138] = swift_task_alloc();
  EpisodeListBuilder = type metadata accessor for UpNextEpisodeListBuilder();
  v2[139] = EpisodeListBuilder;
  v7 = *(*(EpisodeListBuilder - 8) + 64) + 15;
  v2[140] = swift_task_alloc();
  v8 = type metadata accessor for DefaultListBuilder();
  v2[141] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v2[142] = swift_task_alloc();
  v10 = type metadata accessor for EndOfQueueEpisodeListBuilder();
  v2[143] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v2[144] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9F70, qword_1D91B1680) - 8) + 64) + 15;
  v2[145] = swift_task_alloc();
  v2[146] = swift_task_alloc();
  v2[147] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D909E434, 0, 0);
}

uint64_t sub_1D909E434()
{
  v1 = v0[135];
  v2 = type metadata accessor for PlaybackIntent(0);
  v0[148] = v2;
  if (*(v1 + *(v2 + 36)))
  {
    sub_1D90AB088(v1, v0[134], type metadata accessor for PlaybackIntent);
    v3 = v0[147];
    v4 = v0[146];
    v5 = v0[145];
    v6 = v0[144];
    v7 = v0[142];
    v8 = v0[140];
    v9 = v0[138];

    v10 = v0[1];

    return v10();
  }

  else
  {
    v12 = swift_task_alloc();
    v0[149] = v12;
    *v12 = v0;
    v12[1] = sub_1D909E5A4;
    v13 = v0[147];
    v14 = v0[135];

    return sub_1D909FED8(v13);
  }
}

uint64_t sub_1D909E5A4()
{
  v1 = *(*v0 + 1192);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D909E6A0, 0, 0);
}

uint64_t sub_1D909E6A0()
{
  v144 = v0;
  v1 = *(v0 + 1080);
  v2 = *(v1 + 32);
  if (v2 > 3)
  {
    if (v2 - 5 < 3)
    {
      goto LABEL_11;
    }

    if (v2 == 4)
    {
      if (*(v1 + 24))
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    }
  }

  else if (v2 >= 2 && v2 == 2)
  {
    goto LABEL_7;
  }

  v4 = *(v0 + 1168);
  sub_1D8D088B4(v1 + *(*(v0 + 1184) + 20), v4, &qword_1ECAB9F70, qword_1D91B1680);
  v5 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  v6 = (*(*(v5 - 8) + 48))(v4, 1, v5);
  sub_1D8D08A50(v4, &qword_1ECAB9F70, qword_1D91B1680);
  if (v6 != 1)
  {
LABEL_7:
    v7 = swift_task_alloc();
    *(v0 + 1200) = v7;
    *v7 = v0;
    v7[1] = sub_1D909F264;
    v8 = *(v0 + 1176);
    v9 = *(v0 + 1080);

    return sub_1D909D854(v8);
  }

LABEL_11:
  if (MTPlaybackContinuousPlaybackEnabled())
  {
    v11 = *(*(v0 + 1080) + *(*(v0 + 1184) + 28));
    if (*(v11 + 16))
    {
      v12 = *(v11 + 40);
      sub_1D9179DBC();
      MEMORY[0x1DA72B390](2);
      v13 = sub_1D9179E1C();
      v14 = -1 << *(v11 + 32);
      v15 = v13 & ~v14;
      if ((*(v11 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
      {
        v16 = ~v14;
        do
        {
          v17 = *(v11 + 48) + 24 * v15;
          v18 = *v17;
          v19 = *(v17 + 8);
          v20 = *(v17 + 16);
          if (v20 > 1)
          {
            if (v20 != 2 && !(v18 ^ 1 | v19))
            {
              sub_1D8D02FCC(v18, v19, 3);
              sub_1D8D02FCC(1, 0, 3);
              goto LABEL_22;
            }
          }

          else if (*(v17 + 16))
          {
            v21 = *v17;
            v22 = *(v17 + 8);
            v23 = *(v17 + 16);

            LOBYTE(v20) = v23;
            v19 = v22;
            v18 = v21;
          }

          sub_1D8D02FCC(v18, v19, v20);
          sub_1D8D02FCC(1, 0, 3);
          v15 = (v15 + 1) & v16;
        }

        while (((*(v11 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) != 0);
      }
    }

LABEL_32:
    v36 = *(v0 + 1080);
    v37 = *v36;
    v38 = *(v36 + 8);
    v40 = *(v36 + 16);
    v39 = *(v36 + 24);
    v134 = *(v36 + 32);
    sub_1D8D092C0(*v36, v38, v40, v39, v134);
  }

  else
  {
LABEL_22:
    v11 = *(*(v0 + 1080) + *(*(v0 + 1184) + 28));
    if (*(v11 + 16))
    {
      v24 = *(v11 + 40);
      sub_1D9179DBC();
      MEMORY[0x1DA72B390](6);
      v25 = sub_1D9179E1C();
      v26 = -1 << *(v11 + 32);
      v27 = v25 & ~v26;
      if ((*(v11 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27))
      {
        v28 = ~v26;
        do
        {
          v29 = *(v11 + 48) + 24 * v27;
          v30 = *v29;
          v31 = *(v29 + 8);
          v32 = *(v29 + 16);
          if (v32 > 1)
          {
            if (v32 != 2 && __PAIR128__(v31, v30) >= 3)
            {
              sub_1D8D02FCC(v30, v31, 3);
              sub_1D8D02FCC(3, 0, 3);
              goto LABEL_32;
            }
          }

          else if (*(v29 + 16))
          {
            v33 = *v29;
            v34 = *(v29 + 8);
            v35 = *(v29 + 16);

            LOBYTE(v32) = v35;
            v31 = v34;
            v30 = v33;
          }

          sub_1D8D02FCC(v30, v31, v32);
          sub_1D8D02FCC(3, 0, 3);
          v27 = (v27 + 1) & v28;
        }

        while (((*(v11 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) != 0);
      }
    }

    v41 = *(v0 + 1080);
    v135 = *v41;
    v136 = v41[1];
    v137 = *(v41 + 32);
    sub_1D90A02B4(&v139);
    v38 = *(&v139 + 1);
    v37 = v139;
    v39 = *(&v140 + 1);
    v40 = v140;
    v134 = v141;
  }

  v42 = (*(v0 + 1080) + *(*(v0 + 1184) + 24));
  v131 = *(v0 + 1184);
  if (*v42 <= 1u)
  {
    if (!*v42)
    {
      v43 = v40;
      v44 = *(v0 + 1120);
      v45 = *(v0 + 1112);
      sub_1D8D088B4(*(v0 + 1176), v44 + *(v45 + 20), &qword_1ECAB9F70, qword_1D91B1680);
      v46 = *(v42 + 4);
      *(v0 + 544) = *(v42 + 3);
      *(v0 + 560) = v46;
      v48 = *(v42 + 6);
      v47 = *(v42 + 7);
      v49 = *(v42 + 5);
      *(v0 + 621) = *(v42 + 125);
      *(v0 + 592) = v48;
      *(v0 + 608) = v47;
      *(v0 + 576) = v49;
      *v44 = v37;
      *(v44 + 8) = v38;
      *(v44 + 16) = v43;
      *(v44 + 24) = v39;
      *(v44 + 32) = v134;
      v50 = v44 + *(v45 + 24);
      v51 = *(v0 + 560);
      *v50 = *(v0 + 544);
      v52 = *(v0 + 576);
      v53 = *(v0 + 592);
      v54 = *(v0 + 608);
      *(v50 + 77) = *(v0 + 621);
      *(v50 + 48) = v53;
      *(v50 + 64) = v54;
      *(v50 + 16) = v51;
      *(v50 + 32) = v52;
      v130 = v37;
      v132 = v39;
      v133 = v43;
      sub_1D8D092C0(v37, v38, v43, v39, v134);
      sub_1D8D088B4(v0 + 544, v0 + 632, &qword_1ECAB9F78, qword_1D91B16D0);
      sub_1D9097A80(&v139);
      v55 = type metadata accessor for UpNextEpisodeListBuilder;
LABEL_39:
      sub_1D90AA0F0(v44, v55);
      v67 = v142;
      *(v0 + 48) = v141;
      *(v0 + 64) = v67;
      *(v0 + 80) = v143[0];
      *(v0 + 93) = *(v143 + 13);
      v68 = v139;
      v69 = v140;
      goto LABEL_57;
    }

    v70 = v42[40];
    if (v70 == 4)
    {
      v73 = *(v42 + 4);
      if (v73)
      {
        v72 = *(v42 + 3);
        v86 = *(v42 + 4);

        sub_1D8CFEACC(v37, v38, v40, v39, v134);
LABEL_53:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D60, &qword_1D918A700);
        v37 = swift_allocObject();
        v38 = 0;
        v133 = 0;
        v39 = 0;
        *(v37 + 16) = xmmword_1D9189080;
        *(v37 + 32) = v72;
        *(v37 + 40) = v73;
        v87 = 2;
LABEL_56:
        v88 = *(v0 + 1152);
        v89 = *(v0 + 1144);
        sub_1D8D088B4(*(v0 + 1176), v88 + *(v89 + 20), &qword_1ECAB9F70, qword_1D91B1680);
        v90 = *(v42 + 4);
        *(v0 + 896) = *(v42 + 3);
        *(v0 + 912) = v90;
        v92 = *(v42 + 6);
        v91 = *(v42 + 7);
        v93 = *(v42 + 5);
        *(v0 + 973) = *(v42 + 125);
        *(v0 + 944) = v92;
        *(v0 + 960) = v91;
        *(v0 + 928) = v93;
        *v88 = v37;
        *(v88 + 8) = v38;
        *(v88 + 16) = v133;
        *(v88 + 24) = v39;
        *(v88 + 32) = v87;
        v94 = v88 + *(v89 + 24);
        v95 = *(v0 + 912);
        *v94 = *(v0 + 896);
        v96 = *(v0 + 928);
        v97 = *(v0 + 944);
        v98 = *(v0 + 960);
        *(v94 + 77) = *(v0 + 973);
        *(v94 + 48) = v97;
        *(v94 + 64) = v98;
        *(v94 + 16) = v95;
        *(v94 + 32) = v96;
        v130 = v37;
        v132 = v39;
        v134 = v87;
        sub_1D8D092C0(v37, v38, v133, v39, v87);
        sub_1D8D088B4(v0 + 896, v0 + 984, &qword_1ECAB9F78, qword_1D91B16D0);
        sub_1D9096F68(&v139);
        sub_1D90AA0F0(v88, type metadata accessor for EndOfQueueEpisodeListBuilder);
        v99 = v142;
        *(v0 + 48) = v141;
        *(v0 + 64) = v99;
        *(v0 + 80) = v143[0];
        *(v0 + 93) = *(v143 + 13);
        v68 = v139;
        v69 = v140;
        goto LABEL_57;
      }
    }

    else if (v70 == 2)
    {
      v71 = *(v42 + 1);
      if (!v71[2])
      {
        v133 = v40;
        v87 = v134;
        goto LABEL_56;
      }

      result = sub_1D8CFEACC(v37, v38, v40, v39, v134);
      if (!v71[2])
      {
        __break(1u);
        return result;
      }

      v72 = v71[4];
      v73 = v71[5];

      goto LABEL_53;
    }

    v133 = v40;
    v87 = v134;
    goto LABEL_56;
  }

  v130 = v37;
  v132 = v39;
  v133 = v40;
  if (*v42 == 2)
  {
    v56 = v40;
    v44 = *(v0 + 1136);
    v57 = *(v0 + 1128);
    sub_1D8D088B4(*(v0 + 1176), v44 + *(v57 + 20), &qword_1ECAB9F70, qword_1D91B1680);
    v58 = *(v42 + 4);
    *(v0 + 720) = *(v42 + 3);
    *(v0 + 736) = v58;
    v60 = *(v42 + 6);
    v59 = *(v42 + 7);
    v61 = *(v42 + 5);
    *(v0 + 797) = *(v42 + 125);
    *(v0 + 768) = v60;
    *(v0 + 784) = v59;
    *(v0 + 752) = v61;
    *v44 = v37;
    *(v44 + 8) = v38;
    *(v44 + 16) = v56;
    *(v44 + 24) = v39;
    *(v44 + 32) = v134;
    v62 = v44 + *(v57 + 24);
    v63 = *(v0 + 736);
    *v62 = *(v0 + 720);
    v64 = *(v0 + 752);
    v65 = *(v0 + 768);
    v66 = *(v0 + 784);
    *(v62 + 77) = *(v0 + 797);
    *(v62 + 48) = v65;
    *(v62 + 64) = v66;
    *(v62 + 16) = v63;
    *(v62 + 32) = v64;
    sub_1D8D092C0(v37, v38, v56, v39, v134);
    sub_1D8D088B4(v0 + 720, v0 + 808, &qword_1ECAB9F78, qword_1D91B16D0);
    sub_1D90968D4(&v139);
    v55 = type metadata accessor for DefaultListBuilder;
    goto LABEL_39;
  }

  if (v42[128] == 2)
  {
    *(v0 + 64) = 0u;
    *(v0 + 80) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0u;
    *(v0 + 16) = 0u;
    *(v0 + 100) = 0;
    *(v0 + 96) = 2;
    goto LABEL_58;
  }

  v74 = *(v0 + 1136);
  v75 = *(v0 + 1128);
  sub_1D8D088B4(*(v0 + 1176), v74 + *(v75 + 20), &qword_1ECAB9F70, qword_1D91B1680);
  v76 = *(v42 + 4);
  *(v0 + 368) = *(v42 + 3);
  *(v0 + 384) = v76;
  v78 = *(v42 + 6);
  v77 = *(v42 + 7);
  v79 = *(v42 + 5);
  *(v0 + 445) = *(v42 + 125);
  *(v0 + 416) = v78;
  *(v0 + 432) = v77;
  *(v0 + 400) = v79;
  *v74 = v37;
  *(v74 + 8) = v38;
  *(v74 + 16) = v133;
  *(v74 + 24) = v39;
  *(v74 + 32) = v134;
  v80 = v74 + *(v75 + 24);
  v81 = *(v0 + 384);
  *v80 = *(v0 + 368);
  v82 = *(v0 + 400);
  v83 = *(v0 + 416);
  v84 = *(v0 + 432);
  *(v80 + 77) = *(v0 + 445);
  *(v80 + 48) = v83;
  *(v80 + 64) = v84;
  *(v80 + 16) = v81;
  *(v80 + 32) = v82;
  sub_1D8D092C0(v37, v38, v133, v39, v134);
  sub_1D8D088B4(v0 + 368, v0 + 456, &qword_1ECAB9F78, qword_1D91B16D0);
  sub_1D90968D4(&v139);
  sub_1D90AA0F0(v74, type metadata accessor for DefaultListBuilder);
  v85 = v142;
  *(v0 + 48) = v141;
  *(v0 + 64) = v85;
  *(v0 + 80) = v143[0];
  *(v0 + 93) = *(v143 + 13);
  v68 = v139;
  v69 = v140;
LABEL_57:
  *(v0 + 16) = v68;
  *(v0 + 32) = v69;
LABEL_58:
  *&v138[39] = *(v0 + 48);
  *&v138[55] = *(v0 + 64);
  *&v138[71] = *(v0 + 80);
  *&v138[7] = *(v0 + 16);
  v100 = *v42;
  v101 = *(v42 + 2);
  v102 = *(v42 + 3);
  v127 = v102;
  v128 = *(v42 + 1);
  v126 = *(v42 + 4);
  v103 = v42[40];
  *&v138[84] = *(v0 + 93);
  *&v138[23] = *(v0 + 32);
  v129 = v11;
  v104 = v38;
  if (*(v0 + 96) != 2 && *(v0 + 80) == 6)
  {
    v105 = 192;
    if (v100 == 3)
    {
      v105 = 280;
      LOBYTE(v100) = 0;
    }

    sub_1D8D088B4(v0 + 16, v0 + v105, &qword_1ECAB9F78, qword_1D91B16D0);
  }

  v106 = *(v0 + 1184);
  v107 = *(v0 + 1160);
  v108 = *(v0 + 1104);
  v123 = *(v0 + 1096);
  v124 = *(v0 + 1088);
  v125 = *(v0 + 1176);
  v109 = *(v0 + 1072);
  sub_1D8D088B4(v125, v107, &qword_1ECAB9F70, qword_1D91B1680);
  *v109 = v130;
  *(v109 + 8) = v104;
  *(v109 + 16) = v133;
  *(v109 + 24) = v132;
  *(v109 + 32) = v134;
  v110 = v109 + *(v131 + 24);
  *(v110 + 73) = *&v138[32];
  *(v110 + 89) = *&v138[48];
  *(v110 + 105) = *&v138[64];
  *(v110 + 117) = *&v138[76];
  *(v110 + 41) = *v138;
  *v110 = v100;
  *(v110 + 8) = v128;
  *(v110 + 16) = v101;
  *(v110 + 24) = v127;
  *(v110 + 32) = v126;
  *(v110 + 40) = v103;
  *(v110 + 57) = *&v138[16];
  sub_1D8D088B4(v107, v109 + v106[5], &qword_1ECAB9F70, qword_1D91B1680);
  sub_1D8D088B4(v0 + 16, v0 + 104, &qword_1ECAB9F78, qword_1D91B16D0);
  sub_1D8D0B37C(v128, v101, v127, v126, v103);

  sub_1D9176E9C();
  v111 = sub_1D9176E5C();
  v113 = v112;
  sub_1D8D08A50(v0 + 16, &qword_1ECAB9F78, qword_1D91B16D0);
  (*(v123 + 8))(v108, v124);
  sub_1D8D08A50(v107, &qword_1ECAB9F70, qword_1D91B1680);
  sub_1D8D08A50(v125, &qword_1ECAB9F70, qword_1D91B1680);
  v114 = (v109 + v106[8]);
  *v114 = v111;
  v114[1] = v113;
  *(v109 + v106[7]) = v129;
  *(v109 + v106[9]) = 1;
  v115 = *(v0 + 1176);
  v116 = *(v0 + 1168);
  v117 = *(v0 + 1160);
  v118 = *(v0 + 1152);
  v119 = *(v0 + 1136);
  v120 = *(v0 + 1120);
  v121 = *(v0 + 1104);

  v122 = *(v0 + 8);

  return v122();
}

uint64_t sub_1D909F264()
{
  v2 = *(*v1 + 1200);
  v5 = *v1;
  *(*v1 + 1208) = v0;

  if (v0)
  {
    v3 = sub_1D909FDF8;
  }

  else
  {
    v3 = sub_1D909F378;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D909F378()
{
  v135 = v0;
  if (MTPlaybackContinuousPlaybackEnabled())
  {
    v1 = *(*(v0 + 1080) + *(*(v0 + 1184) + 28));
    if (*(v1 + 16))
    {
      v2 = *(v1 + 40);
      sub_1D9179DBC();
      MEMORY[0x1DA72B390](2);
      v3 = sub_1D9179E1C();
      v4 = -1 << *(v1 + 32);
      v5 = v3 & ~v4;
      if ((*(v1 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
      {
        v6 = ~v4;
        do
        {
          v7 = *(v1 + 48) + 24 * v5;
          v8 = *v7;
          v9 = *(v7 + 8);
          v10 = *(v7 + 16);
          if (v10 > 1)
          {
            if (v10 != 2 && !(v8 ^ 1 | v9))
            {
              sub_1D8D02FCC(v8, v9, 3);
              sub_1D8D02FCC(1, 0, 3);
              goto LABEL_12;
            }
          }

          else if (*(v7 + 16))
          {
            v11 = *v7;
            v12 = *(v7 + 8);
            v13 = *(v7 + 16);

            LOBYTE(v10) = v13;
            v9 = v12;
            v8 = v11;
          }

          sub_1D8D02FCC(v8, v9, v10);
          sub_1D8D02FCC(1, 0, 3);
          v5 = (v5 + 1) & v6;
        }

        while (((*(v1 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
      }
    }

LABEL_22:
    v26 = *(v0 + 1080);
    v27 = *v26;
    v28 = *(v26 + 8);
    v30 = *(v26 + 16);
    v29 = *(v26 + 24);
    v125 = *(v26 + 32);
    sub_1D8D092C0(*v26, v28, v30, v29, v125);
  }

  else
  {
LABEL_12:
    v1 = *(*(v0 + 1080) + *(*(v0 + 1184) + 28));
    if (*(v1 + 16))
    {
      v14 = *(v1 + 40);
      sub_1D9179DBC();
      MEMORY[0x1DA72B390](6);
      v15 = sub_1D9179E1C();
      v16 = -1 << *(v1 + 32);
      v17 = v15 & ~v16;
      if ((*(v1 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
      {
        v18 = ~v16;
        do
        {
          v19 = *(v1 + 48) + 24 * v17;
          v20 = *v19;
          v21 = *(v19 + 8);
          v22 = *(v19 + 16);
          if (v22 > 1)
          {
            if (v22 != 2 && __PAIR128__(v21, v20) >= 3)
            {
              sub_1D8D02FCC(v20, v21, 3);
              sub_1D8D02FCC(3, 0, 3);
              goto LABEL_22;
            }
          }

          else if (*(v19 + 16))
          {
            v23 = *v19;
            v24 = *(v19 + 8);
            v25 = *(v19 + 16);

            LOBYTE(v22) = v25;
            v21 = v24;
            v20 = v23;
          }

          sub_1D8D02FCC(v20, v21, v22);
          sub_1D8D02FCC(3, 0, 3);
          v17 = (v17 + 1) & v18;
        }

        while (((*(v1 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) != 0);
      }
    }

    v31 = *(v0 + 1080);
    v126 = *v31;
    v127 = v31[1];
    v128 = *(v31 + 32);
    sub_1D90A02B4(&v130);
    v28 = *(&v130 + 1);
    v27 = v130;
    v29 = *(&v131 + 1);
    v30 = v131;
    v125 = v132;
  }

  v32 = (*(v0 + 1080) + *(*(v0 + 1184) + 24));
  v122 = *(v0 + 1184);
  if (*v32 <= 1u)
  {
    if (!*v32)
    {
      v33 = v30;
      v34 = *(v0 + 1120);
      v35 = *(v0 + 1112);
      sub_1D8D088B4(*(v0 + 1176), v34 + *(v35 + 20), &qword_1ECAB9F70, qword_1D91B1680);
      v36 = *(v32 + 4);
      *(v0 + 544) = *(v32 + 3);
      *(v0 + 560) = v36;
      v38 = *(v32 + 6);
      v37 = *(v32 + 7);
      v39 = *(v32 + 5);
      *(v0 + 621) = *(v32 + 125);
      *(v0 + 592) = v38;
      *(v0 + 608) = v37;
      *(v0 + 576) = v39;
      *v34 = v27;
      *(v34 + 8) = v28;
      *(v34 + 16) = v33;
      *(v34 + 24) = v29;
      *(v34 + 32) = v125;
      v40 = v34 + *(v35 + 24);
      v41 = *(v0 + 560);
      *v40 = *(v0 + 544);
      v42 = *(v0 + 576);
      v43 = *(v0 + 592);
      v44 = *(v0 + 608);
      *(v40 + 77) = *(v0 + 621);
      *(v40 + 48) = v43;
      *(v40 + 64) = v44;
      *(v40 + 16) = v41;
      *(v40 + 32) = v42;
      v121 = v27;
      v123 = v29;
      v124 = v33;
      sub_1D8D092C0(v27, v28, v33, v29, v125);
      sub_1D8D088B4(v0 + 544, v0 + 632, &qword_1ECAB9F78, qword_1D91B16D0);
      sub_1D9097A80(&v130);
      v45 = type metadata accessor for UpNextEpisodeListBuilder;
LABEL_29:
      sub_1D90AA0F0(v34, v45);
      v57 = v133;
      *(v0 + 48) = v132;
      *(v0 + 64) = v57;
      *(v0 + 80) = v134[0];
      *(v0 + 93) = *(v134 + 13);
      v58 = v130;
      v59 = v131;
      goto LABEL_44;
    }

    v60 = v32[40];
    if (v60 == 4)
    {
      v64 = *(v32 + 4);
      if (v64)
      {
        v63 = *(v32 + 3);
        v77 = *(v32 + 4);

        sub_1D8CFEACC(v27, v28, v30, v29, v125);
LABEL_40:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D60, &qword_1D918A700);
        v27 = swift_allocObject();
        v28 = 0;
        v124 = 0;
        v29 = 0;
        *(v27 + 16) = xmmword_1D9189080;
        *(v27 + 32) = v63;
        *(v27 + 40) = v64;
        v78 = 2;
LABEL_43:
        v79 = *(v0 + 1152);
        v80 = *(v0 + 1144);
        sub_1D8D088B4(*(v0 + 1176), v79 + *(v80 + 20), &qword_1ECAB9F70, qword_1D91B1680);
        v81 = *(v32 + 4);
        *(v0 + 896) = *(v32 + 3);
        *(v0 + 912) = v81;
        v83 = *(v32 + 6);
        v82 = *(v32 + 7);
        v84 = *(v32 + 5);
        *(v0 + 973) = *(v32 + 125);
        *(v0 + 944) = v83;
        *(v0 + 960) = v82;
        *(v0 + 928) = v84;
        *v79 = v27;
        *(v79 + 8) = v28;
        *(v79 + 16) = v124;
        *(v79 + 24) = v29;
        *(v79 + 32) = v78;
        v85 = v79 + *(v80 + 24);
        v86 = *(v0 + 912);
        *v85 = *(v0 + 896);
        v87 = *(v0 + 928);
        v88 = *(v0 + 944);
        v89 = *(v0 + 960);
        *(v85 + 77) = *(v0 + 973);
        *(v85 + 48) = v88;
        *(v85 + 64) = v89;
        *(v85 + 16) = v86;
        *(v85 + 32) = v87;
        v121 = v27;
        v123 = v29;
        v125 = v78;
        sub_1D8D092C0(v27, v28, v124, v29, v78);
        sub_1D8D088B4(v0 + 896, v0 + 984, &qword_1ECAB9F78, qword_1D91B16D0);
        sub_1D9096F68(&v130);
        sub_1D90AA0F0(v79, type metadata accessor for EndOfQueueEpisodeListBuilder);
        v90 = v133;
        *(v0 + 48) = v132;
        *(v0 + 64) = v90;
        *(v0 + 80) = v134[0];
        *(v0 + 93) = *(v134 + 13);
        v58 = v130;
        v59 = v131;
        goto LABEL_44;
      }
    }

    else if (v60 == 2)
    {
      v61 = *(v32 + 1);
      if (!v61[2])
      {
        v124 = v30;
        v78 = v125;
        goto LABEL_43;
      }

      result = sub_1D8CFEACC(v27, v28, v30, v29, v125);
      if (!v61[2])
      {
        __break(1u);
        return result;
      }

      v63 = v61[4];
      v64 = v61[5];

      goto LABEL_40;
    }

    v124 = v30;
    v78 = v125;
    goto LABEL_43;
  }

  v121 = v27;
  v123 = v29;
  v124 = v30;
  if (*v32 == 2)
  {
    v46 = v30;
    v34 = *(v0 + 1136);
    v47 = *(v0 + 1128);
    sub_1D8D088B4(*(v0 + 1176), v34 + *(v47 + 20), &qword_1ECAB9F70, qword_1D91B1680);
    v48 = *(v32 + 4);
    *(v0 + 720) = *(v32 + 3);
    *(v0 + 736) = v48;
    v50 = *(v32 + 6);
    v49 = *(v32 + 7);
    v51 = *(v32 + 5);
    *(v0 + 797) = *(v32 + 125);
    *(v0 + 768) = v50;
    *(v0 + 784) = v49;
    *(v0 + 752) = v51;
    *v34 = v27;
    *(v34 + 8) = v28;
    *(v34 + 16) = v46;
    *(v34 + 24) = v29;
    *(v34 + 32) = v125;
    v52 = v34 + *(v47 + 24);
    v53 = *(v0 + 736);
    *v52 = *(v0 + 720);
    v54 = *(v0 + 752);
    v55 = *(v0 + 768);
    v56 = *(v0 + 784);
    *(v52 + 77) = *(v0 + 797);
    *(v52 + 48) = v55;
    *(v52 + 64) = v56;
    *(v52 + 16) = v53;
    *(v52 + 32) = v54;
    sub_1D8D092C0(v27, v28, v46, v29, v125);
    sub_1D8D088B4(v0 + 720, v0 + 808, &qword_1ECAB9F78, qword_1D91B16D0);
    sub_1D90968D4(&v130);
    v45 = type metadata accessor for DefaultListBuilder;
    goto LABEL_29;
  }

  if (v32[128] == 2)
  {
    *(v0 + 64) = 0u;
    *(v0 + 80) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0u;
    *(v0 + 16) = 0u;
    *(v0 + 100) = 0;
    *(v0 + 96) = 2;
    goto LABEL_45;
  }

  v65 = *(v0 + 1136);
  v66 = *(v0 + 1128);
  sub_1D8D088B4(*(v0 + 1176), v65 + *(v66 + 20), &qword_1ECAB9F70, qword_1D91B1680);
  v67 = *(v32 + 4);
  *(v0 + 368) = *(v32 + 3);
  *(v0 + 384) = v67;
  v69 = *(v32 + 6);
  v68 = *(v32 + 7);
  v70 = *(v32 + 5);
  *(v0 + 445) = *(v32 + 125);
  *(v0 + 416) = v69;
  *(v0 + 432) = v68;
  *(v0 + 400) = v70;
  *v65 = v27;
  *(v65 + 8) = v28;
  *(v65 + 16) = v124;
  *(v65 + 24) = v29;
  *(v65 + 32) = v125;
  v71 = v65 + *(v66 + 24);
  v72 = *(v0 + 384);
  *v71 = *(v0 + 368);
  v73 = *(v0 + 400);
  v74 = *(v0 + 416);
  v75 = *(v0 + 432);
  *(v71 + 77) = *(v0 + 445);
  *(v71 + 48) = v74;
  *(v71 + 64) = v75;
  *(v71 + 16) = v72;
  *(v71 + 32) = v73;
  sub_1D8D092C0(v27, v28, v124, v29, v125);
  sub_1D8D088B4(v0 + 368, v0 + 456, &qword_1ECAB9F78, qword_1D91B16D0);
  sub_1D90968D4(&v130);
  sub_1D90AA0F0(v65, type metadata accessor for DefaultListBuilder);
  v76 = v133;
  *(v0 + 48) = v132;
  *(v0 + 64) = v76;
  *(v0 + 80) = v134[0];
  *(v0 + 93) = *(v134 + 13);
  v58 = v130;
  v59 = v131;
LABEL_44:
  *(v0 + 16) = v58;
  *(v0 + 32) = v59;
LABEL_45:
  *&v129[39] = *(v0 + 48);
  *&v129[55] = *(v0 + 64);
  *&v129[71] = *(v0 + 80);
  *&v129[7] = *(v0 + 16);
  v91 = *v32;
  v92 = *(v32 + 2);
  v93 = *(v32 + 3);
  v118 = v93;
  v119 = *(v32 + 1);
  v117 = *(v32 + 4);
  v94 = v32[40];
  *&v129[84] = *(v0 + 93);
  *&v129[23] = *(v0 + 32);
  v120 = v1;
  v95 = v28;
  if (*(v0 + 96) != 2 && *(v0 + 80) == 6)
  {
    v96 = 192;
    if (v91 == 3)
    {
      v96 = 280;
      LOBYTE(v91) = 0;
    }

    sub_1D8D088B4(v0 + 16, v0 + v96, &qword_1ECAB9F78, qword_1D91B16D0);
  }

  v97 = *(v0 + 1184);
  v98 = *(v0 + 1160);
  v99 = *(v0 + 1104);
  v114 = *(v0 + 1096);
  v115 = *(v0 + 1088);
  v116 = *(v0 + 1176);
  v100 = *(v0 + 1072);
  sub_1D8D088B4(v116, v98, &qword_1ECAB9F70, qword_1D91B1680);
  *v100 = v121;
  *(v100 + 8) = v95;
  *(v100 + 16) = v124;
  *(v100 + 24) = v123;
  *(v100 + 32) = v125;
  v101 = v100 + *(v122 + 24);
  *(v101 + 73) = *&v129[32];
  *(v101 + 89) = *&v129[48];
  *(v101 + 105) = *&v129[64];
  *(v101 + 117) = *&v129[76];
  *(v101 + 41) = *v129;
  *v101 = v91;
  *(v101 + 8) = v119;
  *(v101 + 16) = v92;
  *(v101 + 24) = v118;
  *(v101 + 32) = v117;
  *(v101 + 40) = v94;
  *(v101 + 57) = *&v129[16];
  sub_1D8D088B4(v98, v100 + v97[5], &qword_1ECAB9F70, qword_1D91B1680);
  sub_1D8D088B4(v0 + 16, v0 + 104, &qword_1ECAB9F78, qword_1D91B16D0);
  sub_1D8D0B37C(v119, v92, v118, v117, v94);

  sub_1D9176E9C();
  v102 = sub_1D9176E5C();
  v104 = v103;
  sub_1D8D08A50(v0 + 16, &qword_1ECAB9F78, qword_1D91B16D0);
  (*(v114 + 8))(v99, v115);
  sub_1D8D08A50(v98, &qword_1ECAB9F70, qword_1D91B1680);
  sub_1D8D08A50(v116, &qword_1ECAB9F70, qword_1D91B1680);
  v105 = (v100 + v97[8]);
  *v105 = v102;
  v105[1] = v104;
  *(v100 + v97[7]) = v120;
  *(v100 + v97[9]) = 1;
  v106 = *(v0 + 1176);
  v107 = *(v0 + 1168);
  v108 = *(v0 + 1160);
  v109 = *(v0 + 1152);
  v110 = *(v0 + 1136);
  v111 = *(v0 + 1120);
  v112 = *(v0 + 1104);

  v113 = *(v0 + 8);

  return v113();
}

uint64_t sub_1D909FDF8()
{
  v1 = v0[146];
  v2 = v0[145];
  v3 = v0[144];
  v4 = v0[142];
  v5 = v0[140];
  v6 = v0[138];
  sub_1D8D08A50(v0[147], &qword_1ECAB9F70, qword_1D91B1680);

  v7 = v0[1];
  v8 = v0[151];

  return v7();
}

uint64_t sub_1D909FED8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9F70, qword_1D91B1680);
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D909FF78, 0, 0);
}

uint64_t sub_1D909FF78()
{
  if ([objc_opt_self() supportsLocalLibrary] && (v1 = v0[5], v2 = v0[3], v3 = type metadata accessor for PlaybackIntent(0), sub_1D8D088B4(v2 + *(v3 + 20), v1, &qword_1ECAB9F70, qword_1D91B1680), v4 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0), LODWORD(v2) = (*(*(v4 - 8) + 48))(v1, 1, v4), sub_1D8D08A50(v1, &qword_1ECAB9F70, qword_1D91B1680), v2 == 1))
  {
    v5 = v0[3];
    v6 = swift_task_alloc();
    v0[6] = v6;
    *(v6 + 16) = v5;
    v7 = *(MEMORY[0x1E69E88D0] + 4);
    v8 = swift_task_alloc();
    v0[7] = v8;
    *v8 = v0;
    v8[1] = sub_1D90A0180;
    v9 = v0[4];
    v10 = v0[2];

    return MEMORY[0x1EEE6DDE0](v10, 0, 0, 0xD000000000000012, 0x80000001D91D54A0, sub_1D90AB0F0, v6, v9);
  }

  else
  {
    v12 = v0[2];
    v11 = v0[3];
    v13 = type metadata accessor for PlaybackIntent(0);
    sub_1D8D088B4(v11 + *(v13 + 20), v12, &qword_1ECAB9F70, qword_1D91B1680);
    v14 = v0[5];

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_1D90A0180()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v7 = *v0;

  v4 = *(v1 + 40);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_1D90A02B4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 32);
  if (v4 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA1D0, &unk_1D91B3640);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D9189080;
    if (v3[2])
    {
      v16 = v3[4];
      *(inited + 32) = v16;
      *(inited + 40) = 0;

      result = sub_1D8ECC958(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v18 = result;
      v20 = *(result + 16);
      v19 = *(result + 24);
      if (v20 >= v19 >> 1)
      {
        result = sub_1D8ECC958((v19 > 1), v20 + 1, 1, result);
        v18 = result;
      }

      *(v18 + 16) = v20 + 1;
      *(v18 + 8 * v20 + 32) = v16;
    }

    else
    {
      *(inited + 32) = 0;
      *(inited + 40) = 1;

      v18 = MEMORY[0x1E69E7CC0];
    }

    *a1 = v18;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    v21 = 1;
    goto LABEL_29;
  }

  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  if (v4 == 4)
  {
    if (v7)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D60, &qword_1D918A700);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_1D9189080;
      *(v14 + 32) = v6;
      *(v14 + 40) = v7;
      *a1 = v14;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      *(a1 + 32) = 2;
    }

    else
    {
      *a1 = v3;
      *(a1 + 8) = v5;
      *(a1 + 16) = v6;
      *(a1 + 24) = 0;
      *(a1 + 32) = 4;
    }
  }

  else
  {
    if (v4 == 2)
    {
      if (v3[2])
      {
        v9 = v3[4];
        v8 = v3[5];
        v22 = v9;
        v23 = v8;

        if (v8)
        {

          v10 = MEMORY[0x1E69E7CC0];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_1D8D4241C(0, *(v10 + 2) + 1, 1, v10);
          }

          v12 = *(v10 + 2);
          v11 = *(v10 + 3);
          if (v12 >= v11 >> 1)
          {
            v10 = sub_1D8D4241C((v11 > 1), v12 + 1, 1, v10);
          }

          *(v10 + 2) = v12 + 1;
          v13 = &v10[16 * v12];
          *(v13 + 4) = v9;
          *(v13 + 5) = v8;
          goto LABEL_28;
        }
      }

      else
      {
        v22 = 0;
        v23 = 0;
      }

      v10 = MEMORY[0x1E69E7CC0];
LABEL_28:
      result = sub_1D8D08A50(&v22, &qword_1ECAB5900, &unk_1D9191B80);
      *a1 = v10;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      v21 = 2;
LABEL_29:
      *(a1 + 32) = v21;
      return result;
    }

    *a1 = v3;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
    *(a1 + 24) = v7;
    *(a1 + 32) = v4;

    return sub_1D8D092C0(v3, v5, v6, v7, v4);
  }
}

uint64_t PlaybackIntent.listSettings.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PlaybackIntent(0) + 24);
  v4 = *(v3 + 80);
  v6 = *(v3 + 112);
  v15 = *(v3 + 96);
  v5 = v15;
  v16[0] = v6;
  *(v16 + 13) = *(v3 + 125);
  v7 = *(v16 + 13);
  v9 = *(v3 + 48);
  v13 = *(v3 + 64);
  v8 = v13;
  v14 = v4;
  v12 = v9;
  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  *(a1 + 64) = v6;
  *(a1 + 77) = v7;
  *a1 = v9;
  *(a1 + 16) = v8;
  return sub_1D8D088B4(&v12, v11, &qword_1ECAB9F78, qword_1D91B16D0);
}

uint64_t PlaybackIntent.initialItemRequiresLocalPlayback.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9F70, qword_1D91B1680);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v15 - v3;
  v5 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PlaybackIntent(0);
  sub_1D8D088B4(v0 + *(v10 + 20), v4, &qword_1ECAB9F70, qword_1D91B1680);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1D8D08A50(v4, &qword_1ECAB9F70, qword_1D91B1680);
  }

  else
  {
    sub_1D90AB210(v4, v9, type metadata accessor for PodcastsMediaLibrary.MediaItem);
    if ((v9[56] & 1) != 0 || ((v11 = *(v9 + 6)) != 0 ? (v12 = v11 == 1000000000000) : (v12 = 1), v12))
    {
      if (*(v9 + 5))
      {
        v13 = *(v9 + 13);

        sub_1D90AA0F0(v9, type metadata accessor for PodcastsMediaLibrary.MediaItem);
        if (v13)
        {

          return 0;
        }
      }

      else
      {
        sub_1D90AA0F0(v9, type metadata accessor for PodcastsMediaLibrary.MediaItem);
      }

      return 1;
    }

    sub_1D90AA0F0(v9, type metadata accessor for PodcastsMediaLibrary.MediaItem);
  }

  return 0;
}

void sub_1D90A0838(uint64_t a1, uint64_t a2)
{
  v52 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9F70, qword_1D91B1680);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v48 - v5;
  v7 = type metadata accessor for PlaybackIntent(0);
  v50 = *(v7 - 8);
  v8 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v51 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA1D8, &qword_1D91B3650);
  v49 = *(v53 - 8);
  v9 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v11 = &v48 - v10;
  v12 = [objc_opt_self() sharedInstance];
  v55 = [v12 playbackContext];

  v54 = a2;
  sub_1D90A0E48(&aBlock);
  v14 = aBlock;
  v13 = v57;
  v16 = v58;
  v15 = v59;
  v17 = v60;
  switch(v60)
  {
    case 2u:
      if (!aBlock[2])
      {
        v18 = aBlock;
        v19 = v57;
        v20 = v58;
        v21 = v59;
        v17 = 2;
        goto LABEL_15;
      }

      v22 = v58;
      v16 = aBlock[4];
      v23 = aBlock[5];

      sub_1D8CFF364(v14, v13, v22, v15, 2u);
      v15 = v23;
      break;
    case 4u:

      sub_1D8CFF364(v14, v13, v16, v15, 4u);
      if (!v15)
      {
        goto LABEL_16;
      }

      break;
    case 0xFFu:
LABEL_16:
      if (qword_1ECAB0DB8 != -1)
      {
        swift_once();
      }

      v44 = sub_1D917744C();
      __swift_project_value_buffer(v44, qword_1ECAB0DC0);
      v45 = sub_1D917741C();
      v46 = sub_1D9178D1C();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&dword_1D8CEC000, v45, v46, "Initial UUID not found. Returning early.", v47, 2u);
        MEMORY[0x1DA72CB90](v47, -1, -1);
      }

      sub_1D8D088B4(v54 + *(v7 + 20), v6, &qword_1ECAB9F70, qword_1D91B1680);
      sub_1D917876C();
      goto LABEL_21;
    default:
      v18 = aBlock;
      v19 = v57;
      v20 = v58;
      v21 = v59;
LABEL_15:
      sub_1D8CFF364(v18, v19, v20, v21, v17);
      goto LABEL_16;
  }

  if (qword_1ECAB0DB8 != -1)
  {
    swift_once();
  }

  v24 = v11;
  v25 = sub_1D917744C();
  __swift_project_value_buffer(v25, qword_1ECAB0DC0);

  v26 = sub_1D917741C();
  v27 = sub_1D9178D1C();

  v28 = os_log_type_enabled(v26, v27);
  v48 = v16;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    aBlock = v30;
    *v29 = 136315138;

    v31 = sub_1D8CFA924(v16, v15, &aBlock);

    *(v29 + 4) = v31;
    _os_log_impl(&dword_1D8CEC000, v26, v27, "Fetching initial item %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    MEMORY[0x1DA72CB90](v30, -1, -1);
    MEMORY[0x1DA72CB90](v29, -1, -1);
  }

  v32 = v49;
  v33 = v24;
  v34 = v24;
  v35 = v53;
  (*(v49 + 16))(v34, v52, v53);
  v36 = v51;
  sub_1D90AB088(v54, v51, type metadata accessor for PlaybackIntent);
  v37 = (*(v32 + 80) + 40) & ~*(v32 + 80);
  v38 = (v9 + *(v50 + 80) + v37) & ~*(v50 + 80);
  v39 = swift_allocObject();
  v40 = v55;
  v41 = v48;
  *(v39 + 2) = v55;
  *(v39 + 3) = v41;
  *(v39 + 4) = v15;
  (*(v32 + 32))(&v39[v37], v33, v35);
  sub_1D90AB210(v36, &v39[v38], type metadata accessor for PlaybackIntent);
  v60 = sub_1D90AB278;
  v61 = v39;
  aBlock = MEMORY[0x1E69E9820];
  v57 = 1107296256;
  v58 = sub_1D8CF5F60;
  v59 = &block_descriptor_75;
  v42 = _Block_copy(&aBlock);
  v43 = v40;

  [v43 performBlock_];
  _Block_release(v42);
LABEL_21:
}

uint64_t sub_1D90A0E48@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PlaybackIntent(0) + 24);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = *(v3 + 32);
  v8 = *(v3 + 40);
  if (v8 != 255)
  {
    *a1 = v4;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
    *(a1 + 24) = v7;
    *(a1 + 32) = v8;
    goto LABEL_11;
  }

  v9 = *(v1 + 32);
  if (v9 == 4)
  {
    v17 = v1[3];
    if (v17)
    {
      v11 = v7;
      v12 = v6;
      v13 = v5;
      v14 = v4;
      v15 = v8;
      v16 = v1[2];
      goto LABEL_9;
    }
  }

  else if (v9 == 2)
  {
    v10 = *v1;
    if (*(*v1 + 16))
    {
      v11 = v7;
      v12 = v6;
      v13 = v5;
      v14 = v4;
      v15 = v8;
      v16 = *(v10 + 32);
      v17 = *(v10 + 40);
LABEL_9:

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D60, &qword_1D918A700);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1D9189080;
      *(v18 + 32) = v16;
      *(v18 + 40) = v17;
      *a1 = v18;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      *(a1 + 32) = 2;
      LOBYTE(v8) = v15;
      v4 = v14;
      v5 = v13;
      v6 = v12;
      v7 = v11;
      goto LABEL_11;
    }
  }

  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = -1;
LABEL_11:

  return sub_1D8D0B37C(v4, v5, v6, v7, v8);
}

uint64_t sub_1D90A0F90(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27[0] = a5;
  v27[1] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA1E0, &qword_1D91B3658);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v27 - v11;
  v13 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9F70, qword_1D91B1680);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = v27 - v20;
  v22 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v23 = [a1 episodeForUuid_];

  if (v23)
  {
    v24 = v23;
    sub_1D90BFA08(v24, v17);
    sub_1D90AB088(v17, v12, type metadata accessor for PodcastsMediaLibrary.MediaItem);
    (*(v14 + 56))(v12, 0, 1, v13);
    swift_storeEnumTagMultiPayload();
    sub_1D8D088B4(v12, v9, &qword_1ECABA1E0, &qword_1D91B3658);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA1D8, &qword_1D91B3650);
      sub_1D917875C();
    }

    else
    {
      sub_1D90AA150(v9, v21);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA1D8, &qword_1D91B3650);
      sub_1D917876C();
    }

    sub_1D8D08A50(v12, &qword_1ECABA1E0, &qword_1D91B3658);
    return sub_1D90AA0F0(v17, type metadata accessor for PodcastsMediaLibrary.MediaItem);
  }

  else
  {
    v25 = type metadata accessor for PlaybackIntent(0);
    sub_1D8D088B4(v27[0] + *(v25 + 20), v21, &qword_1ECAB9F70, qword_1D91B1680);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA1D8, &qword_1D91B3650);
    return sub_1D917876C();
  }
}

uint64_t PlaybackIntent.replacingOptions(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a1;
  v4 = sub_1D9176EAC();
  v42 = *(v4 - 8);
  v43 = v4;
  v5 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v41 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9F70, qword_1D91B1680);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - v12;
  v14 = *v2;
  v39 = *(v2 + 8);
  v40 = v14;
  v15 = *(v2 + 24);
  v37 = *(v2 + 16);
  v16 = v37;
  v38 = *(v2 + 32);
  v17 = type metadata accessor for PlaybackIntent(0);
  v18 = (v2 + v17[6]);
  v19 = v18[7];
  v52 = v18[6];
  v53[0] = v19;
  *(v53 + 13) = *(v18 + 125);
  v20 = v18[3];
  v48 = v18[2];
  v49 = v20;
  v21 = v18[5];
  v50 = v18[4];
  v51 = v21;
  v22 = v18[1];
  v46 = *v18;
  v47 = v22;
  sub_1D8D088B4(v2 + v17[5], v13, &qword_1ECAB9F70, qword_1D91B1680);
  sub_1D8D088B4(v13, v10, &qword_1ECAB9F70, qword_1D91B1680);
  v24 = v39;
  v23 = v40;
  *a2 = v40;
  *(a2 + 8) = v24;
  *(a2 + 16) = v16;
  *(a2 + 24) = v15;
  LOBYTE(v16) = v38;
  *(a2 + 32) = v38;
  v25 = a2 + v17[6];
  v26 = v53[0];
  *(v25 + 96) = v52;
  *(v25 + 112) = v26;
  *(v25 + 125) = *(v53 + 13);
  v27 = v49;
  *(v25 + 32) = v48;
  *(v25 + 48) = v27;
  v28 = v51;
  *(v25 + 64) = v50;
  *(v25 + 80) = v28;
  v29 = v47;
  *v25 = v46;
  *(v25 + 16) = v29;
  sub_1D8D088B4(v10, a2 + v17[5], &qword_1ECAB9F70, qword_1D91B1680);
  sub_1D8D092C0(v23, v24, v37, v15, v16);
  sub_1D8CFEB60(&v46, &v45);
  v30 = v41;
  sub_1D9176E9C();
  v31 = sub_1D9176E5C();
  v33 = v32;
  (*(v42 + 8))(v30, v43);
  sub_1D8D08A50(v10, &qword_1ECAB9F70, qword_1D91B1680);
  sub_1D8D08A50(v13, &qword_1ECAB9F70, qword_1D91B1680);
  v34 = (a2 + v17[8]);
  *v34 = v31;
  v34[1] = v33;
  *(a2 + v17[7]) = v44;
  *(a2 + v17[9]) = 0;
}

uint64_t PlaybackIntent.addingOptions(_:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D9176EAC();
  v47 = *(v3 - 8);
  v48 = v3;
  v4 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v46 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9F70, qword_1D91B1680);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v43 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v40 - v10;
  v12 = type metadata accessor for PlaybackIntent(0);
  v13 = *(v1 + v12[7]);

  v45 = sub_1D8FB14EC(v14, v13);
  v15 = *v1;
  v41 = *(v1 + 8);
  v42 = v15;
  v17 = *(v1 + 16);
  v16 = *(v1 + 24);
  v18 = (v1 + v12[6]);
  v19 = v18[3];
  v52 = v18[2];
  v53 = v19;
  *(v57 + 13) = *(v18 + 125);
  v20 = v18[7];
  v56 = v18[6];
  v57[0] = v20;
  v21 = v18[5];
  v54 = v18[4];
  v55 = v21;
  v22 = v18[1];
  v50 = *v18;
  v51 = v22;
  v23 = *(v1 + 32);
  v24 = v1 + v12[5];
  v44 = v11;
  sub_1D8D088B4(v24, v11, &qword_1ECAB9F70, qword_1D91B1680);
  v25 = v11;
  v26 = v43;
  sub_1D8D088B4(v25, v43, &qword_1ECAB9F70, qword_1D91B1680);
  v28 = v41;
  v27 = v42;
  *a1 = v42;
  *(a1 + 8) = v28;
  *(a1 + 16) = v17;
  *(a1 + 24) = v16;
  *(a1 + 32) = v23;
  v29 = a1 + v12[6];
  v30 = v57[0];
  *(v29 + 96) = v56;
  *(v29 + 112) = v30;
  *(v29 + 125) = *(v57 + 13);
  v31 = v53;
  *(v29 + 32) = v52;
  *(v29 + 48) = v31;
  v32 = v55;
  *(v29 + 64) = v54;
  *(v29 + 80) = v32;
  v33 = v51;
  *v29 = v50;
  *(v29 + 16) = v33;
  sub_1D8D088B4(v26, a1 + v12[5], &qword_1ECAB9F70, qword_1D91B1680);
  sub_1D8D092C0(v27, v28, v17, v16, v23);
  sub_1D8CFEB60(&v50, &v49);
  v34 = v46;
  sub_1D9176E9C();
  v35 = sub_1D9176E5C();
  v37 = v36;
  (*(v47 + 8))(v34, v48);
  sub_1D8D08A50(v26, &qword_1ECAB9F70, qword_1D91B1680);
  result = sub_1D8D08A50(v44, &qword_1ECAB9F70, qword_1D91B1680);
  v39 = (a1 + v12[8]);
  *v39 = v35;
  v39[1] = v37;
  *(a1 + v12[7]) = v45;
  *(a1 + v12[9]) = 0;
  return result;
}

uint64_t PlaybackIntent.subtracingOption(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA150, &qword_1D91B1FD8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D9189080;
  *(inited + 32) = v3;
  *(inited + 40) = v4;
  *(inited + 48) = v5;
  sub_1D8D02FE4(v3, v4, v5);
  PlaybackIntent.subtractingOptions(_:)(inited, a2);
  swift_setDeallocating();
  v7 = *(inited + 16);
  return swift_arrayDestroy();
}

uint64_t PlaybackIntent.subtractingOptions(_:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1D9176EAC();
  v47 = *(v5 - 8);
  v48 = v5;
  v6 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v46 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9F70, qword_1D91B1680);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v43 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v40 - v12;
  v14 = type metadata accessor for PlaybackIntent(0);
  v15 = *(v2 + v14[7]);

  v45 = sub_1D90A4FD0(a1, v15);
  v16 = *v2;
  v41 = *(v2 + 8);
  v42 = v16;
  v18 = *(v2 + 16);
  v17 = *(v2 + 24);
  v19 = (v2 + v14[6]);
  v20 = v19[3];
  v52 = v19[2];
  v53 = v20;
  *(v57 + 13) = *(v19 + 125);
  v21 = v19[7];
  v56 = v19[6];
  v57[0] = v21;
  v22 = v19[5];
  v54 = v19[4];
  v55 = v22;
  v23 = v19[1];
  v50 = *v19;
  v51 = v23;
  LOBYTE(a1) = *(v2 + 32);
  v24 = v2 + v14[5];
  v44 = v13;
  sub_1D8D088B4(v24, v13, &qword_1ECAB9F70, qword_1D91B1680);
  v25 = v13;
  v26 = v43;
  sub_1D8D088B4(v25, v43, &qword_1ECAB9F70, qword_1D91B1680);
  v28 = v41;
  v27 = v42;
  *a2 = v42;
  *(a2 + 8) = v28;
  *(a2 + 16) = v18;
  *(a2 + 24) = v17;
  *(a2 + 32) = a1;
  v29 = a2 + v14[6];
  v30 = v57[0];
  *(v29 + 96) = v56;
  *(v29 + 112) = v30;
  *(v29 + 125) = *(v57 + 13);
  v31 = v53;
  *(v29 + 32) = v52;
  *(v29 + 48) = v31;
  v32 = v55;
  *(v29 + 64) = v54;
  *(v29 + 80) = v32;
  v33 = v51;
  *v29 = v50;
  *(v29 + 16) = v33;
  sub_1D8D088B4(v26, a2 + v14[5], &qword_1ECAB9F70, qword_1D91B1680);
  sub_1D8D092C0(v27, v28, v18, v17, a1);
  sub_1D8CFEB60(&v50, &v49);
  v34 = v46;
  sub_1D9176E9C();
  v35 = sub_1D9176E5C();
  v37 = v36;
  (*(v47 + 8))(v34, v48);
  sub_1D8D08A50(v26, &qword_1ECAB9F70, qword_1D91B1680);
  result = sub_1D8D08A50(v44, &qword_1ECAB9F70, qword_1D91B1680);
  v39 = (a2 + v14[8]);
  *v39 = v35;
  v39[1] = v37;
  *(a2 + v14[7]) = v45;
  *(a2 + v14[9]) = 0;
  return result;
}

uint64_t PlaybackIntent.initialItemPlayheadOverride.getter()
{
  v1 = type metadata accessor for PlaybackIntent(0);
  v2 = *(v0 + *(v1 + 28));
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 56);
  v6 = (v3 + 63) >> 6;
  v7 = *(v0 + *(v1 + 28));

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v11 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v12 = *(v2 + 48) + 24 * (v11 | (v9 << 6));
      if (!*(v12 + 16))
      {
        break;
      }

      if (!v5)
      {
        goto LABEL_6;
      }
    }

    v14 = *v12;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D8CF69F0(0, *(v10 + 16) + 1, 1, v10);
      v10 = result;
    }

    v15 = *(v10 + 16);
    v16 = *(v10 + 24);
    v17 = v15 + 1;
    if (v15 >= v16 >> 1)
    {
      v21 = v15 + 1;
      v18 = v10;
      v19 = *(v10 + 16);
      result = sub_1D8CF69F0((v16 > 1), v15 + 1, 1, v18);
      v15 = v19;
      v17 = v21;
      v10 = result;
    }

    *(v10 + 16) = v17;
    *(v10 + 8 * v15 + 32) = v14;
  }

  while (v5);
  while (1)
  {
LABEL_6:
    v13 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      return result;
    }

    if (v13 >= v6)
    {
      break;
    }

    v5 = *(v2 + 56 + 8 * v13);
    ++v9;
    if (v5)
    {
      v9 = v13;
      goto LABEL_4;
    }
  }

  if (*(v10 + 16))
  {
    v20 = *(v10 + 32);
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

uint64_t sub_1D90A1DF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D90AAE2C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D90A1E20(uint64_t a1)
{
  v2 = sub_1D8D0926C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D90A1E5C(uint64_t a1)
{
  v2 = sub_1D8D0926C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PlaybackIntent.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9F70, qword_1D91B1680);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v32 - v6;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA168, &qword_1D91B1FF0);
  v8 = *(v34 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v11 = &v32 - v10;
  v12 = type metadata accessor for PlaybackIntent(0);
  v13 = *(*(v12 - 1) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v16 = a1[4];
  v46 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1D8D0926C();
  sub_1D9179EEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v46);
  }

  v18 = v8;
  v19 = v33;
  LOBYTE(v36) = 0;
  sub_1D90A9DA8();
  sub_1D91798FC();
  v20 = v40;
  v21 = v39;
  *v15 = v38;
  *(v15 + 1) = v21;
  v15[32] = v20;
  type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  LOBYTE(v38) = 1;
  sub_1D8D08C08(&qword_1ECAB2C08, type metadata accessor for PodcastsMediaLibrary.MediaItem);
  sub_1D917989C();
  sub_1D90AA150(v7, &v15[v12[5]]);
  v37 = 2;
  sub_1D90AA1C0();
  sub_1D91798FC();
  v22 = &v15[v12[6]];
  v23 = v45[0];
  *(v22 + 6) = v44;
  *(v22 + 7) = v23;
  *(v22 + 125) = *(v45 + 13);
  v24 = v41;
  *(v22 + 2) = v40;
  *(v22 + 3) = v24;
  v25 = v43;
  *(v22 + 4) = v42;
  *(v22 + 5) = v25;
  v26 = v39;
  *v22 = v38;
  *(v22 + 1) = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA160, &qword_1D91B1FE8);
  v35 = 3;
  sub_1D8D0DBA0(&qword_1ECAAFE68, sub_1D90AA214);
  sub_1D91798FC();
  *&v15[v12[7]] = v36;
  LOBYTE(v36) = 4;
  v27 = sub_1D91798BC();
  v28 = &v15[v12[8]];
  *v28 = v27;
  v28[1] = v29;
  LOBYTE(v36) = 5;
  v30 = sub_1D91798CC();
  (*(v18 + 8))(v11, v34);
  v15[v12[9]] = v30 & 1;
  sub_1D90AB088(v15, v19, type metadata accessor for PlaybackIntent);
  __swift_destroy_boxed_opaque_existential_1Tm(v46);
  return sub_1D90AA0F0(v15, type metadata accessor for PlaybackIntent);
}

uint64_t sub_1D90A2510()
{
  v0 = sub_1D8FB2640(&unk_1F5461FB0);
  result = swift_arrayDestroy();
  qword_1ECAAFE80 = v0;
  return result;
}

uint64_t static PlaybackIntent.Option.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      if (v7 != 2)
      {
        goto LABEL_9;
      }
    }

    else
    {
      if (v2 > 1)
      {
        if (v2 ^ 2 | v3)
        {
          if (v7 != 3 || v5 != 3)
          {
            goto LABEL_9;
          }
        }

        else if (v7 != 3 || v5 != 2)
        {
          goto LABEL_9;
        }
      }

      else
      {
        if (!(v2 | v3))
        {
          if (v7 == 3 && !(v6 | v5))
          {
            goto LABEL_25;
          }

          goto LABEL_9;
        }

        if (v7 != 3 || v5 != 1)
        {
          goto LABEL_9;
        }
      }

      if (v6)
      {
        goto LABEL_9;
      }
    }

LABEL_25:
    v9 = 1;
    goto LABEL_26;
  }

  if (*(a1 + 16))
  {
    v8 = *(a1 + 8);
  }

  else if (!*(a2 + 16))
  {
    goto LABEL_25;
  }

LABEL_9:
  v9 = 0;
LABEL_26:
  sub_1D8D02FE4(v5, v6, v7);
  sub_1D8D02FCC(v2, v3, v4);
  sub_1D8D02FCC(v5, v6, v7);
  return v9;
}

uint64_t PlaybackIntent.Option.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (*(v0 + 16) > 1u)
  {
    if (*(v0 + 16) == 2)
    {
      v3 = 8;
    }

    else if (v1 > 1)
    {
      if (v1 ^ 2 | v2)
      {
        v3 = 6;
      }

      else
      {
        v3 = 4;
      }
    }

    else if (v1 | v2)
    {
      v3 = 2;
    }

    else
    {
      v3 = 1;
    }

    return MEMORY[0x1DA72B390](v3, v1, v2);
  }

  if (!*(v0 + 16))
  {
    v3 = 3;
    return MEMORY[0x1DA72B390](v3, v1, v2);
  }

  return _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
}

uint64_t PlaybackIntent.Option.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1D9179DBC();
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v4 = 8;
    }

    else if (v1 > 1)
    {
      if (v1 ^ 2 | v2)
      {
        v4 = 6;
      }

      else
      {
        v4 = 4;
      }
    }

    else if (v1 | v2)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    if (v3)
    {
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
      return sub_1D9179E1C();
    }

    v4 = 3;
  }

  MEMORY[0x1DA72B390](v4);
  return sub_1D9179E1C();
}

uint64_t sub_1D90A2808()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (*(v0 + 16) > 1u)
  {
    if (*(v0 + 16) == 2)
    {
      v3 = 8;
    }

    else if (v1 > 1)
    {
      if (v1 ^ 2 | v2)
      {
        v3 = 6;
      }

      else
      {
        v3 = 4;
      }
    }

    else if (v1 | v2)
    {
      v3 = 2;
    }

    else
    {
      v3 = 1;
    }

    return MEMORY[0x1DA72B390](v3, v1, v2);
  }

  if (!*(v0 + 16))
  {
    v3 = 3;
    return MEMORY[0x1DA72B390](v3, v1, v2);
  }

  return _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
}

char *PlaybackIntent.genericTrackIdentifierQueue(with:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for PlaybackIntent(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v175 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = sub_1D91766EC();
  v193 = *(v196 - 8);
  v8 = *(v193 + 64);
  MEMORY[0x1EEE9AC00](v196);
  v190 = v175 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v195 = (v175 - v11);
  MEMORY[0x1EEE9AC00](v12);
  v192 = (v175 - v13);
  MEMORY[0x1EEE9AC00](v14);
  v191 = v175 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v189 = (v175 - v17);
  MEMORY[0x1EEE9AC00](v18);
  v194 = v175 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v187 = v175 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v186 = v175 - v23;
  v183 = sub_1D91767FC();
  v188 = *(v183 - 8);
  v24 = *(v188 + 64);
  MEMORY[0x1EEE9AC00](v183);
  v26 = v175 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = v175 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = v175 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = v175 - v34;
  v36 = sub_1D8E2765C(MEMORY[0x1E69E7CC0]);
  v37 = v36;
  v38 = *(a1 + 80);
  if (v38)
  {
    v39 = v38;
    v40 = [v39 ams_DSID];
    if (v40)
    {
      v182 = v29;
      v41 = v37;
      v42 = v40;
      v43 = v2;
      v44 = v26;
      v45 = v32;
      v46 = [v40 stringValue];

      v47 = sub_1D917820C();
      v184 = v7;
      v48 = v47;
      v185 = v35;
      v50 = v49;

      v32 = v45;
      v26 = v44;
      v2 = v43;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v204 = v41;
      v29 = v182;
      v52 = v48;
      v7 = v184;
      v53 = v50;
      v35 = v185;
      sub_1D8F50EE4(v52, v53, 16, isUniquelyReferenced_nonNull_native);

      v37 = v204;
    }

    else
    {
    }
  }

  v184 = *v2;
  v54 = *(v2 + 32);
  if (v54 > 6)
  {
    if (v54 != 7)
    {
      if (v54 != 8 || *(v2 + 24) | *(v2 + 16) | *(v2 + 8) | v184)
      {
        goto LABEL_12;
      }

      v178 = v37;
      v2 = sub_1D9053F20(v37);
      v199 = 0;
      v198 = v2;
      v191 = 0x80000001D91C8520;
      v195 = (v193 + 32);
      v192 = (v188 + 8);

      sub_1D91767EC();
      sub_1D91767AC();
      v185 = v35;
      MEMORY[0x1DA727D30](*"playPodcplayPodcplayStatsubscribplayItemasts", *"asts");
      v152 = v2 + 64;
      v153 = 1 << *(v2 + 32);
      v154 = -1;
      if (v153 < 64)
      {
        v154 = ~(-1 << v153);
      }

      v155 = v154 & *(v2 + 64);
      v26 = (v153 + 63) >> 6;
      v194 = v2;

      v156 = 0;
      v157 = MEMORY[0x1E69E7CC0];
      v7 = v187;
      if (v155)
      {
        goto LABEL_89;
      }

      while (1)
      {
        v158 = v156 + 1;
        if (__OFADD__(v156, 1))
        {
          goto LABEL_106;
        }

        if (v158 >= v26)
        {
          break;
        }

        v155 = *(v152 + 8 * v158);
        ++v156;
        if (v155)
        {
          v156 = v158;
          do
          {
LABEL_89:
            v159 = __clz(__rbit64(v155));
            v155 &= v155 - 1;
            v160 = v159 | (v156 << 6);
            v161 = *(*(v194 + 6) + v160);
            v162 = (*(v194 + 7) + 16 * v160);
            v164 = *v162;
            v163 = v162[1];

            sub_1D91766BC();

            v2 = *v195;
            v165 = v186;
            (*v195)(v186, v7, v196);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v157 = sub_1D8D8EDF4(0, v157[2] + 1, 1, v157);
            }

            v167 = v157[2];
            v166 = v157[3];
            if (v167 >= v166 >> 1)
            {
              v157 = sub_1D8D8EDF4(v166 > 1, v167 + 1, 1, v157);
            }

            v157[2] = v167 + 1;
            (v2)(v157 + ((*(v193 + 80) + 32) & ~*(v193 + 80)) + *(v193 + 72) * v167, v165, v196);
          }

          while (v155);
        }
      }

      v168 = v185;
      sub_1D917671C();
      v169 = sub_1D91767CC();
      v171 = v170;
      (*v192)(v168, v183);

      v55 = MEMORY[0x1E69E7CC0];
      if (v171)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v55 = sub_1D8D4241C(0, *(v55 + 2) + 1, 1, v55);
        }

        v173 = *(v55 + 2);
        v172 = *(v55 + 3);
        if (v173 >= v172 >> 1)
        {
          v55 = sub_1D8D4241C((v172 > 1), v173 + 1, 1, v55);
        }

        *(v55 + 2) = v173 + 1;
        v174 = &v55[16 * v173];
        *(v174 + 4) = v169;
        *(v174 + 5) = v171;
      }

      v150 = &v197;
LABEL_79:
      sub_1D90AA268((v150 + 32));

      return v55;
    }

    v178 = v37;
    v88 = 0;
    v175[1] = 0;
    v181 = *(v184 + 16);
    v180 = v184 + 32;
    v177 = 0x80000001D91C8520;
    v195 = (v193 + 32);
    v179 = (v188 + 8);
    v176 = MEMORY[0x1E69E7CC0];
    v182 = v29;
    while (1)
    {
      if (v88 == v181)
      {

        return v176;
      }

      if (v88 >= *(v184 + 16))
      {
        goto LABEL_105;
      }

      v93 = (v180 + 40 * v88);
      v94 = *v93;
      v95 = v93[1];
      v96 = v93[2];
      v97 = v93[3];
      v98 = *(v93 + 32);
      v190 = (v88 + 1);
      v204 = v94;
      v205 = v95;
      v206 = v96;
      v207 = v97;
      v208 = v98;
      v189 = v94;
      v188 = v95;
      v187 = v96;
      v186 = v97;
      LODWORD(v185) = v98;
      sub_1D8E899C4(v94, v95, v96, v97, v98);
      UniversalEpisodeIdentifier.urlTrackIdentifier()();
      v2 = v202;
      v99 = v203;
      sub_1D91767EC();
      sub_1D91767AC();
      MEMORY[0x1DA727D30](*&aPlaypodcplaypo[8 * v99], *&aPlaypodcplaypo[8 * v99 + 40]);
      v100 = v2 + 64;
      v101 = 1 << *(v2 + 32);
      if (v101 < 64)
      {
        v102 = ~(-1 << v101);
      }

      else
      {
        v102 = -1;
      }

      v103 = v102 & *(v2 + 64);
      v104 = (v101 + 63) >> 6;
      v194 = v2;

      v26 = 0;
      v105 = MEMORY[0x1E69E7CC0];
      while (v103)
      {
LABEL_40:
        v107 = __clz(__rbit64(v103));
        v103 &= v103 - 1;
        v108 = v107 | (v26 << 6);
        v109 = *(*(v194 + 6) + v108);
        v110 = (*(v194 + 7) + 16 * v108);
        v112 = *v110;
        v111 = v110[1];

        v2 = v192;
        sub_1D91766BC();

        v113 = *v195;
        v7 = v191;
        (*v195)(v191, v2, v196);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v105 = sub_1D8D8EDF4(0, *(v105 + 2) + 1, 1, v105);
        }

        v115 = *(v105 + 2);
        v114 = *(v105 + 3);
        if (v115 >= v114 >> 1)
        {
          v105 = sub_1D8D8EDF4(v114 > 1, v115 + 1, 1, v105);
        }

        *(v105 + 2) = v115 + 1;
        v113(&v105[((*(v193 + 80) + 32) & ~*(v193 + 80)) + *(v193 + 72) * v115], v7, v196);
      }

      while (1)
      {
        v106 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          __break(1u);
          while (1)
          {
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            swift_once();
LABEL_13:
            v56 = sub_1D917744C();
            __swift_project_value_buffer(v56, qword_1ECAB0DC0);
            sub_1D90AB088(v2, v7, type metadata accessor for PlaybackIntent);
            v57 = sub_1D917741C();
            v2 = sub_1D9178CFC();
            if (os_log_type_enabled(v57, v2))
            {
              v58 = swift_slowAlloc();
              v59 = swift_slowAlloc();
              v202 = v59;
              *v58 = 136315138;
              v60 = *(v7 + 8);
              v61 = *(v7 + 16);
              v62 = *(v7 + 24);
              v63 = *(v7 + 32);
              v204 = *v7;
              v205 = v60;
              v206 = v61;
              v207 = v62;
              v208 = v63;
              sub_1D8D092C0(v204, v60, v61, v62, v63);
              v64 = sub_1D917826C();
              v66 = v65;
              sub_1D90AA0F0(v7, type metadata accessor for PlaybackIntent);
              v67 = sub_1D8CFA924(v64, v66, &v202);

              *(v58 + 4) = v67;
              _os_log_impl(&dword_1D8CEC000, v57, v2, "Unable to create remote identifier from: %s", v58, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v59);
              MEMORY[0x1DA72CB90](v59, -1, -1);
              MEMORY[0x1DA72CB90](v58, -1, -1);
            }

            else
            {

              sub_1D90AA0F0(v7, type metadata accessor for PlaybackIntent);
            }

            v126 = sub_1D9053F20(v178);
            v211 = 0;
            v210 = v126;
            v187 = 0x80000001D91C8520;
            v127 = (v193 + 32);
            v189 = (v188 + 8);

            sub_1D91767EC();
            sub_1D91767AC();
            v191 = v26;
            MEMORY[0x1DA727D30](*"playPodcplayPodcplayStatsubscribplayItemasts", *"asts");
            v128 = v126 + 64;
            v129 = 1 << *(v126 + 32);
            v130 = -1;
            if (v129 < 64)
            {
              v130 = ~(-1 << v129);
            }

            v131 = v130 & *(v126 + 64);
            v26 = (v129 + 63) >> 6;
            v194 = v126;

            v132 = 0;
            v133 = MEMORY[0x1E69E7CC0];
            v192 = v127;
            v7 = v190;
            while (v131)
            {
LABEL_66:
              v135 = __clz(__rbit64(v131));
              v131 &= v131 - 1;
              v136 = v135 | (v132 << 6);
              v137 = *(*(v194 + 6) + v136);
              v138 = (*(v194 + 7) + 16 * v136);
              v140 = *v138;
              v139 = v138[1];

              sub_1D91766BC();

              v2 = *v192;
              (*v192)(v195, v7, v196);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v133 = sub_1D8D8EDF4(0, v133[2] + 1, 1, v133);
              }

              v142 = v133[2];
              v141 = v133[3];
              if (v142 >= v141 >> 1)
              {
                v133 = sub_1D8D8EDF4(v141 > 1, v142 + 1, 1, v133);
              }

              v133[2] = v142 + 1;
              (v2)(v133 + ((*(v193 + 80) + 32) & ~*(v193 + 80)) + *(v193 + 72) * v142, v195, v196);
            }

            while (1)
            {
              v134 = v132 + 1;
              if (__OFADD__(v132, 1))
              {
                break;
              }

              if (v134 >= v26)
              {

                v143 = v191;
                sub_1D917671C();
                v144 = sub_1D91767CC();
                v146 = v145;
                (*v189)(v143, v183);

                v55 = MEMORY[0x1E69E7CC0];
                if (v146)
                {
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v55 = sub_1D8D4241C(0, *(v55 + 2) + 1, 1, v55);
                  }

                  v148 = *(v55 + 2);
                  v147 = *(v55 + 3);
                  if (v148 >= v147 >> 1)
                  {
                    v55 = sub_1D8D4241C((v147 > 1), v148 + 1, 1, v55);
                  }

                  *(v55 + 2) = v148 + 1;
                  v149 = &v55[16 * v148];
                  *(v149 + 4) = v144;
                  *(v149 + 5) = v146;
                }

                v150 = &v209;
                goto LABEL_79;
              }

              v131 = *(v128 + 8 * v134);
              ++v132;
              if (v131)
              {
                v132 = v134;
                goto LABEL_66;
              }
            }
          }
        }

        if (v106 >= v104)
        {
          break;
        }

        v103 = *(v100 + 8 * v106);
        ++v26;
        if (v103)
        {
          v26 = v106;
          goto LABEL_40;
        }
      }

      v89 = v182;
      sub_1D917671C();
      v90 = sub_1D91767CC();
      v92 = v91;
      sub_1D8E89A08(v189, v188, v187, v186, v185);
      (*v179)(v89, v183);

      v88 = v190;
      if (v92)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v176 = sub_1D8D4241C(0, *(v176 + 2) + 1, 1, v176);
        }

        v2 = *(v176 + 2);
        v116 = *(v176 + 3);
        if (v2 >= v116 >> 1)
        {
          v176 = sub_1D8D4241C((v116 > 1), v2 + 1, 1, v176);
        }

        v117 = v176;
        *(v176 + 2) = v2 + 1;
        v118 = &v117[16 * v2];
        *(v118 + 4) = v90;
        *(v118 + 5) = v92;
      }
    }
  }

  if (*(v2 + 32))
  {
    if (v54 == 1)
    {
      MEMORY[0x1EEE9AC00](v36);
      v175[-2] = a1;
      v55 = sub_1D901C138(sub_1D90AA2BC, &v175[-4], v184);

      return v55;
    }

LABEL_12:
    v178 = v37;
    if (qword_1ECAB0DB8 == -1)
    {
      goto LABEL_13;
    }

    goto LABEL_107;
  }

  v204 = v184;
  sub_1D8E40D20();
  v68 = sub_1D917927C();
  v70 = v69;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v204 = v37;
  sub_1D8F50EE4(v68, v70, 2, v71);
  v190 = v204;
  v2 = sub_1D9053F20(v204);
  v201 = 1;
  v200 = v2;
  v187 = 0x80000001D91C8520;
  v72 = (v193 + 32);
  v188 += 8;

  sub_1D91767EC();
  sub_1D91767AC();
  v191 = v32;
  MEMORY[0x1DA727D30](*"playPodcplayStatsubscribplayItemasts", 0xEB00000000747361);
  v73 = v2 + 64;
  v74 = 1 << *(v2 + 32);
  v75 = -1;
  if (v74 < 64)
  {
    v75 = ~(-1 << v74);
  }

  v76 = v75 & *(v2 + 64);
  v26 = (v74 + 63) >> 6;
  v195 = v2;

  v7 = 0;
  v77 = MEMORY[0x1E69E7CC0];
  v192 = v72;
  if (v76)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v78 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_104;
    }

    if (v78 >= v26)
    {
      break;
    }

    v76 = *(v73 + 8 * v78);
    ++v7;
    if (v76)
    {
      v7 = v78;
      do
      {
LABEL_22:
        v79 = __clz(__rbit64(v76));
        v76 &= v76 - 1;
        v80 = v79 | (v7 << 6);
        v81 = *(v195[6] + v80);
        v82 = (v195[7] + 16 * v80);
        v84 = *v82;
        v83 = v82[1];

        v85 = v189;
        sub_1D91766BC();

        v2 = *v192;
        (*v192)(v194, v85, v196);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v77 = sub_1D8D8EDF4(0, v77[2] + 1, 1, v77);
        }

        v87 = v77[2];
        v86 = v77[3];
        if (v87 >= v86 >> 1)
        {
          v77 = sub_1D8D8EDF4(v86 > 1, v87 + 1, 1, v77);
        }

        v77[2] = v87 + 1;
        (v2)(v77 + ((*(v193 + 80) + 32) & ~*(v193 + 80)) + *(v193 + 72) * v87, v194, v196);
      }

      while (v76);
    }
  }

  v119 = v191;
  sub_1D917671C();
  v120 = sub_1D91767CC();
  v122 = v121;
  (*v188)(v119, v183);

  v55 = MEMORY[0x1E69E7CC0];
  if (v122)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v55 = sub_1D8D4241C(0, *(v55 + 2) + 1, 1, v55);
    }

    v124 = *(v55 + 2);
    v123 = *(v55 + 3);
    if (v124 >= v123 >> 1)
    {
      v55 = sub_1D8D4241C((v123 > 1), v124 + 1, 1, v55);
    }

    *(v55 + 2) = v124 + 1;
    v125 = &v55[16 * v124];
    *(v125 + 4) = v120;
    *(v125 + 5) = v122;
  }

  sub_1D90AA268(&v200);

  return v55;
}

uint64_t sub_1D90A44EC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  sub_1D8E40D20();
  v10 = sub_1D917927C();
  v12 = v11;
  sub_1D90AB088(a2, v9, type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext);
  URLTrackIdentifier.init(id:playbackContext:)(v10, v12, v9, &v19);
  v17 = v19;
  v18 = v20;
  v13 = URLTrackIdentifier.stringValue.getter();
  v15 = v14;

  *a3 = v13;
  a3[1] = v15;
  return result;
}

uint64_t sub_1D90A4604(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  v55 = *MEMORY[0x1E69E9840];
  if (*(a2 + 16))
  {
    v49 = a1;
    v50 = 0;
    v8 = a1 + 56;
    v7 = *(a1 + 56);
    v9 = -1 << *(a1 + 32);
    v48 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v7;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 56;
    v14 = 1;
    while (1)
    {
      do
      {
        if (!v11)
        {
          v15 = v49;
          v16 = v50;
          while (1)
          {
            v17 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              break;
            }

            if (v17 >= v12)
            {

              goto LABEL_43;
            }

            v11 = *(v8 + 8 * v17);
            ++v16;
            if (v11)
            {
              v50 = v17;
              goto LABEL_13;
            }
          }

LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        v15 = v49;
LABEL_13:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v4 = *(*(v15 + 48) + ((v50 << 9) | (8 * v18)));
        v19 = *(v6 + 40);
        v20 = sub_1D9179DAC();
        v21 = -1 << *(v6 + 32);
        v5 = v20 & ~v21;
        v3 = v5 >> 6;
        v2 = 1 << v5;
      }

      while (((1 << v5) & *(v13 + 8 * (v5 >> 6))) == 0);
      v22 = *(v6 + 48);
      if (*(v22 + 8 * v5) == v4)
      {
        break;
      }

      while (1)
      {
        v5 = (v5 + 1) & ~v21;
        v3 = v5 >> 6;
        v2 = 1 << v5;
        if (((1 << v5) & *(v13 + 8 * (v5 >> 6))) == 0)
        {
          break;
        }

        if (*(v22 + 8 * v5) == v4)
        {
          goto LABEL_17;
        }
      }
    }

LABEL_17:
    v52 = v48;
    v53 = v50;
    v54 = v11;
    v51[0] = v49;
    v51[1] = v8;
    v4 = (63 - v21) >> 6;
    v14 = 8 * v4;

    if (v4 <= 0x80)
    {
      goto LABEL_18;
    }

LABEL_47:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v42 = swift_slowAlloc();
      memcpy(v42, (v6 + 56), v14);
      v43 = sub_1D90A6664(v42, v4, v6, v5, v51);

      MEMORY[0x1DA72CB90](v42, -1, -1);
      v48 = v52;
      v50 = v53;
      v6 = v43;
      goto LABEL_43;
    }

LABEL_18:
    v45 = v4;
    v46 = &v44;
    MEMORY[0x1EEE9AC00](v23);
    v5 = &v44 - v24;
    memcpy(&v44 - v24, (v6 + 56), v14);
    v25 = *(v6 + 16);
    *(v5 + 8 * v3) &= ~v2;
    v26 = v25 - 1;
    v14 = -1;
    v4 = 1;
    v2 = v49;
LABEL_19:
    v47 = v26;
    while (v11)
    {
LABEL_27:
      v30 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v3 = *(*(v2 + 48) + ((v50 << 9) | (8 * v30)));
      v31 = *(v6 + 40);
      v32 = sub_1D9179DAC();
      v33 = -1 << *(v6 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      v36 = 1 << v34;
      if (((1 << v34) & *(v13 + 8 * (v34 >> 6))) != 0)
      {
        v37 = *(v6 + 48);
        if (*(v37 + 8 * v34) == v3)
        {
LABEL_20:
          v27 = *(v5 + 8 * v35);
          *(v5 + 8 * v35) = v27 & ~v36;
          if ((v27 & v36) != 0)
          {
            v26 = v47 - 1;
            if (__OFSUB__(v47, 1))
            {
              __break(1u);
            }

            if (v47 == 1)
            {

              v6 = MEMORY[0x1E69E7CD0];
              goto LABEL_43;
            }

            goto LABEL_19;
          }
        }

        else
        {
          v38 = ~v33;
          while (1)
          {
            v34 = (v34 + 1) & v38;
            v35 = v34 >> 6;
            v36 = 1 << v34;
            if (((1 << v34) & *(v13 + 8 * (v34 >> 6))) == 0)
            {
              break;
            }

            if (*(v37 + 8 * v34) == v3)
            {
              goto LABEL_20;
            }
          }
        }
      }
    }

    v28 = v50;
    while (1)
    {
      v29 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      if (v29 >= v12)
      {
        break;
      }

      v11 = *(v8 + 8 * v29);
      ++v28;
      if (v11)
      {
        v50 = v29;
        goto LABEL_27;
      }
    }

    if (v12 <= v50 + 1)
    {
      v39 = v50 + 1;
    }

    else
    {
      v39 = v12;
    }

    v50 = v39 - 1;
    v6 = sub_1D90A7AD8(v5, v45, v47, v6);
LABEL_43:
    sub_1D8D1B144();
  }

  else
  {

    v6 = MEMORY[0x1E69E7CD0];
  }

  v40 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t sub_1D90A4A60(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v69 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 16))
  {

    v5 = MEMORY[0x1E69E7CD0];
LABEL_53:
    v50 = *MEMORY[0x1E69E9840];
    return v5;
  }

  v56 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v60 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v64 = (a2 + 56);

  v15 = 0;
  v62 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_55;
      }

      if (v17 >= v12)
      {
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v63 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    v23 = *(v5 + 40);
    sub_1D9179DBC();

    _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
    v24 = sub_1D9179E1C();
    v25 = -1 << *(v5 + 32);
    v2 = v24 & ~v25;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v64[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v62;
    v15 = v63;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v25;
  while (1)
  {
    v26 = (*(v5 + 48) + 16 * v2);
    v27 = *v26 == v22 && v26[1] == v21;
    if (v27 || (sub_1D9179ACC() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v64[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v62;
  v28 = v63;
  v66 = v60;
  v67 = v63;
  v68 = v11;
  v65[0] = v62;
  v65[1] = v7;

  v30 = *(v5 + 32);
  v57 = ((1 << v30) + 63) >> 6;
  v14 = 8 * v57;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v58 = &v56;
    MEMORY[0x1EEE9AC00](v29);
    v2 = &v56 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v64, v31);
    v32 = *(v2 + 8 * v8) & ~v4;
    v33 = *(v5 + 16);
    v61 = v2;
    *(v2 + 8 * v8) = v32;
    v34 = v33 - 1;
LABEL_23:
    v59 = v34;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v36 = v28;
    while (1)
    {
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v37 >= v12)
      {
        v5 = sub_1D90A7CC4(v61, v57, v59, v5);
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v37);
      ++v36;
      if (v11)
      {
        v28 = v37;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v38 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v39 = *(v3 + 48);
            v63 = v28;
            v40 = (v39 + ((v28 << 10) | (16 * v38)));
            v41 = *v40;
            v4 = v40[1];
            v42 = *(v5 + 40);
            sub_1D9179DBC();

            _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
            v43 = sub_1D9179E1C();
            v44 = -1 << *(v5 + 32);
            v8 = v43 & ~v44;
            v2 = v8 >> 6;
            v45 = 1 << v8;
            if (((1 << v8) & v64[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v28 = v63;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v46 = (*(v5 + 48) + 16 * v8);
          if (*v46 != v41 || v46[1] != v4)
          {
            v48 = ~v44;
            while ((sub_1D9179ACC() & 1) == 0)
            {
              v8 = (v8 + 1) & v48;
              v2 = v8 >> 6;
              v45 = 1 << v8;
              if (((1 << v8) & v64[v8 >> 6]) == 0)
              {
                v3 = v62;
                goto LABEL_45;
              }

              v49 = (*(v5 + 48) + 16 * v8);
              if (*v49 == v41 && v49[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v62;
          v35 = v61[v2];
          v61[v2] = v35 & ~v45;
          v27 = (v35 & v45) == 0;
          v28 = v63;
          if (!v27)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v34 = v59 - 1;
        if (__OFSUB__(v59, 1))
        {
          __break(1u);
        }

        if (v59 == 1)
        {

          v5 = MEMORY[0x1E69E7CD0];
          goto LABEL_52;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v52 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v28 = v63;
  }

  v53 = swift_slowAlloc();
  memcpy(v53, v64, v52);
  v54 = v56;
  v55 = sub_1D90A6820(v53, v57, v5, v2, v65);

  if (!v54)
  {

    MEMORY[0x1DA72CB90](v53, -1, -1);
    v60 = v66;
    v5 = v55;
LABEL_52:
    sub_1D8D1B144();
    goto LABEL_53;
  }

  result = MEMORY[0x1DA72CB90](v53, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_1D90A4FD0(unint64_t a1, uint64_t a2)
{
  v2 = a2;
  v79[2] = *MEMORY[0x1E69E9840];
  if (!*(a2 + 16))
  {

    v2 = MEMORY[0x1E69E7CD0];
    goto LABEL_122;
  }

  v79[0] = a1;
  v3 = *(a1 + 16);
  v69 = a1;

  v72 = v3;
  if (!v3)
  {
    goto LABEL_121;
  }

  v4 = 0;
  v70 = v69 + 32;
  v77 = v2;
  v78 = (v2 + 56);
  while (1)
  {
    v5 = v70 + 24 * v4;
    v7 = *v5;
    v6 = *(v5 + 8);
    v8 = *(v5 + 16);
    v9 = *(v2 + 40);
    sub_1D9179DBC();
    v76 = v6;
    if (v8 > 1)
    {
      if (v8 == 2)
      {
        v10 = 8;
      }

      else if (v7 > 1)
      {
        if (v7 ^ 2 | v6)
        {
          v10 = 6;
        }

        else
        {
          v10 = 4;
        }
      }

      else if (v7 | v6)
      {
        v10 = 2;
      }

      else
      {
        v10 = 1;
      }

      goto LABEL_10;
    }

    if (!v8)
    {
      v10 = 3;
LABEL_10:
      MEMORY[0x1DA72B390](v10);
      goto LABEL_12;
    }

    _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
LABEL_12:
    v71 = v4 + 1;
    v11 = sub_1D9179E1C();
    v12 = -1 << *(v2 + 32);
    v13 = v11 & ~v12;
    v14 = v13 >> 6;
    v15 = 1 << v13;
    if (((1 << v13) & v78[v13 >> 6]) != 0)
    {
      break;
    }

LABEL_4:
    sub_1D8D02FCC(v7, v76, v8);
    v4 = v71;
    v2 = v77;
    if (v71 == v72)
    {
      goto LABEL_121;
    }
  }

  v16 = ~v12;
  v17 = v7 != 3;
  v18 = v7 != 2;
  v19 = v7 != 1;
  if (v76)
  {
    v17 = 1;
    v18 = 1;
    v19 = 1;
  }

  if (v8 != 3)
  {
    v17 = 1;
  }

  v75 = v17;
  v20 = v8 != 3 || v18;
  v74 = v20;
  v21 = v8 != 3 || v19;
  v73 = v21;
  if (v76 | v7)
  {
    v22 = 0;
  }

  else
  {
    v22 = v8 == 3;
  }

  while (1)
  {
    v24 = *(v77 + 48) + 24 * v13;
    v25 = *v24;
    v26 = *(v24 + 8);
    v27 = *(v24 + 16);
    if (v27 <= 1)
    {
      if (*(v24 + 16))
      {
        v23 = *(v24 + 8);
      }

      else if (!v8)
      {
        goto LABEL_54;
      }

      goto LABEL_27;
    }

    if (v27 == 2)
    {
      if (v8 == 2)
      {
        goto LABEL_54;
      }

      goto LABEL_27;
    }

    if (v25 > 1)
    {
      break;
    }

    if (v25 | v26)
    {
      if ((v73 & 1) == 0)
      {
        v76 = 0;
        v7 = 1;
        goto LABEL_54;
      }
    }

    else if (v22)
    {
      goto LABEL_54;
    }

LABEL_27:
    sub_1D8D02FE4(v7, v76, v8);
    sub_1D8D02FCC(v25, v26, v27);
    sub_1D8D02FCC(v7, v76, v8);
    v13 = (v13 + 1) & v16;
    v14 = v13 >> 6;
    v15 = 1 << v13;
    if ((v78[v13 >> 6] & (1 << v13)) == 0)
    {
      goto LABEL_4;
    }
  }

  if (!(v25 ^ 2 | v26))
  {
    if ((v74 & 1) == 0)
    {
      v76 = 0;
      v7 = 2;
      goto LABEL_54;
    }

    goto LABEL_27;
  }

  if (v75)
  {
    goto LABEL_27;
  }

  v76 = 0;
  v7 = 3;
LABEL_54:
  v28 = v71;
  v79[1] = v71;
  sub_1D8D02FE4(v7, v76, v27);
  sub_1D8D02FCC(v25, v26, v27);
  v29 = sub_1D8D02FCC(v7, v76, v27);
  v30 = v77;
  v31 = *(v77 + 32);
  v65[0] = ((1 << v31) + 63) >> 6;
  v32 = 8 * v65[0];
  if ((v31 & 0x3Fu) <= 0xD)
  {
LABEL_55:
    v65[1] = v65;
    MEMORY[0x1EEE9AC00](v29);
    v34 = v65 - ((v33 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v34, v78, v33);
    v35 = *&v34[8 * v14] & ~v15;
    v67 = v34;
    *&v34[8 * v14] = v35;
    v36 = *(v30 + 16) - 1;
    v13 = v69;
    v37 = *(v69 + 16);
    v68 = v37;
    while (1)
    {
      v66 = v36;
      if (v28 == v37)
      {
LABEL_115:
        v2 = sub_1D90A80D4(v67, v65[0], v66, v30);
        goto LABEL_121;
      }

      v38 = v28;
      v71 = v28;
      while (1)
      {
        if (v28 < 0)
        {
          __break(1u);
LABEL_117:
          __break(1u);
          goto LABEL_118;
        }

        if (v38 >= *(v13 + 16))
        {
          goto LABEL_117;
        }

        v39 = v70 + 24 * v38;
        v40 = *v39;
        v41 = *(v39 + 8);
        v42 = *(v39 + 16);
        v43 = *(v30 + 40);
        sub_1D9179DBC();
        if (v42 > 1)
        {
          if (v42 == 2)
          {
            v44 = 8;
          }

          else if (v40 > 1)
          {
            if (v40 ^ 2 | v41)
            {
              v44 = 6;
            }

            else
            {
              v44 = 4;
            }
          }

          else if (v40 | v41)
          {
            v44 = 2;
          }

          else
          {
            v44 = 1;
          }

          goto LABEL_67;
        }

        if (!v42)
        {
          v44 = 3;
LABEL_67:
          MEMORY[0x1DA72B390](v44);
          goto LABEL_69;
        }

        _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
LABEL_69:
        v76 = v38 + 1;
        v45 = sub_1D9179E1C();
        v46 = -1 << *(v30 + 32);
        v14 = v45 & ~v46;
        v47 = v14 >> 6;
        v48 = 1 << v14;
        if (((1 << v14) & v78[v14 >> 6]) == 0)
        {
LABEL_58:
          sub_1D8D02FCC(v40, v41, v42);
          goto LABEL_59;
        }

        v49 = ~v46;
        v50 = v40 != 3;
        v51 = v40 != 2;
        v52 = v40 != 1;
        if (v41)
        {
          v50 = 1;
          v51 = 1;
          v52 = 1;
        }

        if (v42 != 3)
        {
          v50 = 1;
        }

        v75 = v50;
        v53 = v42 != 3 || v51;
        v74 = v53;
        v54 = v42 != 3 || v52;
        v73 = v54;
        if (v41 | v40)
        {
          v55 = 0;
        }

        else
        {
          v55 = v42 == 3;
        }

        LODWORD(v72) = v55;
        while (1)
        {
          v57 = *(v30 + 48) + 24 * v14;
          v58 = *v57;
          v15 = *(v57 + 8);
          v59 = *(v57 + 16);
          if (v59 <= 1)
          {
            if (*(v57 + 16))
            {
              v56 = *(v57 + 8);
            }

            else if (!v42)
            {
              goto LABEL_103;
            }

            goto LABEL_85;
          }

          if (v59 == 2)
          {
            if (v42 == 2)
            {
              goto LABEL_103;
            }

            goto LABEL_85;
          }

          if (v58 > 1)
          {
            break;
          }

          if (v58 | v15)
          {
            if ((v73 & 1) == 0)
            {
              goto LABEL_103;
            }
          }

          else if (v72)
          {
            goto LABEL_103;
          }

LABEL_85:
          sub_1D8D02FE4(v40, v41, v42);
          sub_1D8D02FCC(v58, v15, v59);
          sub_1D8D02FCC(v40, v41, v42);
          v14 = (v14 + 1) & v49;
          v47 = v14 >> 6;
          v30 = v77;
          v48 = 1 << v14;
          if ((v78[v14 >> 6] & (1 << v14)) == 0)
          {
            goto LABEL_58;
          }
        }

        if (!(v58 ^ 2 | v15))
        {
          if ((v74 & 1) == 0)
          {
            goto LABEL_103;
          }

          goto LABEL_85;
        }

        if (v75)
        {
          goto LABEL_85;
        }

LABEL_103:
        sub_1D8D02FE4(v40, v41, v42);
        sub_1D8D02FCC(v58, v15, v59);
        sub_1D8D02FCC(v40, v41, v42);
        v60 = v67[v47];
        v67[v47] = v60 & ~v48;
        v30 = v77;
        if ((v60 & v48) != 0)
        {
          break;
        }

LABEL_59:
        v38 = v76;
        v13 = v69;
        v28 = v71;
        if (v76 == v68)
        {
          goto LABEL_115;
        }
      }

      v36 = v66 - 1;
      v13 = v69;
      v37 = v68;
      v28 = v76;
      if (__OFSUB__(v66, 1))
      {
        __break(1u);
      }

      if (v66 == 1)
      {

        v2 = MEMORY[0x1E69E7CD0];
        goto LABEL_121;
      }
    }
  }

LABEL_118:
  v61 = v32;

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_55;
  }

  v62 = swift_slowAlloc();
  memcpy(v62, v78, v61);
  v2 = sub_1D90A6CEC(v62, v65[0], v30, v13, v79);

  MEMORY[0x1DA72CB90](v62, -1, -1);
LABEL_121:

LABEL_122:
  v63 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t sub_1D90A582C(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v83 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 16))
  {

    v5 = MEMORY[0x1E69E7CD0];
    goto LABEL_99;
  }

  v6 = a1;
  v64 = 0;
  v7 = *(a1 + 56);
  v71 = a1 + 56;
  v8 = -1 << *(a1 + 32);
  v69 = ~v8;
  if (-v8 < 64)
  {
    v9 = ~(-1 << -v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & v7;
  v70 = (63 - v8) >> 6;
  v76 = (a2 + 56);

  v73 = 0;
  v75 = v5;
  do
  {
LABEL_6:
    if (v10)
    {
      goto LABEL_12;
    }

    v12 = v73;
    do
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
LABEL_101:
        __break(1u);
LABEL_102:
        v59 = v11;

        v60 = v59;
        if (swift_stdlib_isStackAllocationSafe())
        {

          v31 = v72;
          goto LABEL_49;
        }

        v61 = swift_slowAlloc();
        memcpy(v61, v76, v60);
        v62 = v64;
        v63 = sub_1D90A707C(v61, v65, v5, v2, &v78);

        if (!v62)
        {

          MEMORY[0x1DA72CB90](v61, -1, -1);
          v69 = v80;
          v73 = v81;
          v5 = v63;
          goto LABEL_98;
        }

        result = MEMORY[0x1DA72CB90](v61, -1, -1);
        __break(1u);
        return result;
      }

      if (v13 >= v70)
      {
        goto LABEL_98;
      }

      v10 = *(v71 + 8 * v13);
      ++v12;
    }

    while (!v10);
    v73 = v13;
LABEL_12:
    v14 = *(v6 + 48) + ((v73 << 10) | (16 * __clz(__rbit64(v10))));
    v15 = *v14;
    v16 = *(v14 + 8);
    v17 = *(v14 + 9);
    v18 = *(v5 + 40);
    sub_1D9179DBC();
    sub_1D9179DDC();
    if (v16 != 1)
    {
      MEMORY[0x1DA72B3C0](v15);
    }

    v74 = v15;
    v10 &= v10 - 1;
    _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

    v19 = sub_1D9179E1C();
    v20 = -1 << *(v5 + 32);
    v2 = v19 & ~v20;
    v3 = v2 >> 6;
    v4 = 1 << v2;
  }

  while (((1 << v2) & *(v76 + (v2 >> 6))) == 0);
  v21 = ~v20;
  while (1)
  {
    v24 = *(v5 + 48) + 16 * v2;
    v25 = *(v24 + 9);
    if (*(v24 + 8))
    {
      if (!v16)
      {
        goto LABEL_17;
      }
    }

    else
    {
      if (*v24 == v74)
      {
        v26 = v16;
      }

      else
      {
        v26 = 1;
      }

      if (v26)
      {
        goto LABEL_17;
      }
    }

    if (v25 <= 1)
    {
      v27 = 0x4C74736567677573;
      v28 = 0xEB00000000737365;
      if (v25)
      {
        v28 = 0xE700000000000000;
        v27 = 0x6C61727475656ELL;
        if (v17 > 1)
        {
          goto LABEL_35;
        }

        goto LABEL_32;
      }

      goto LABEL_31;
    }

    if (v25 == 2)
    {
      v27 = 0x657469726F766166;
      v28 = 0xE900000000000064;
LABEL_31:
      if (v17 > 1)
      {
        goto LABEL_35;
      }

      goto LABEL_32;
    }

    v28 = 0xE700000000000000;
    v27 = 0x6E776F6E6B6E75;
    if (v17 > 1)
    {
LABEL_35:
      if (v17 == 2)
      {
        v29 = 0x657469726F766166;
      }

      else
      {
        v29 = 0x6E776F6E6B6E75;
      }

      if (v17 == 2)
      {
        v30 = 0xE900000000000064;
      }

      else
      {
        v30 = 0xE700000000000000;
      }

      goto LABEL_41;
    }

LABEL_32:
    v29 = 0x4C74736567677573;
    v30 = 0xEB00000000737365;
    if (v17)
    {
      v30 = 0xE700000000000000;
      v29 = 0x6C61727475656ELL;
    }

LABEL_41:
    if (v27 == v29 && v28 == v30)
    {
      v31 = v72;
      v80 = v69;
      v81 = v73;
      v82 = v10;
      v78 = v72;
      v79 = v71;

      v5 = v75;
      goto LABEL_48;
    }

    v22 = sub_1D9179ACC();

    v5 = v75;
    if (v22)
    {
      break;
    }

LABEL_17:
    v2 = (v2 + 1) & v21;
    v3 = v2 >> 6;
    v4 = 1 << v2;
    if ((*(v76 + (v2 >> 6)) & (1 << v2)) == 0)
    {
      v6 = v72;
      goto LABEL_6;
    }
  }

  v31 = v72;
  v80 = v69;
  v81 = v73;
  v82 = v10;
  v78 = v72;
  v79 = v71;
LABEL_48:
  v32 = *(v5 + 32);
  v65 = ((1 << v32) + 63) >> 6;
  v11 = 8 * v65;
  if ((v32 & 0x3Fu) > 0xD)
  {
    goto LABEL_102;
  }

LABEL_49:
  v66 = &v64;
  MEMORY[0x1EEE9AC00](v23);
  v2 = &v64 - ((v33 + 15) & 0x3FFFFFFFFFFFFFF0);
  memcpy(v2, v76, v33);
  v34 = *(v2 + 8 * v3) & ~v4;
  v68 = v2;
  *(v2 + 8 * v3) = v34;
  v35 = *(v5 + 16) - 1;
LABEL_50:
  v67 = v35;
LABEL_52:
  while (2)
  {
    if (v10)
    {
LABEL_58:
      v38 = *(v31 + 48) + ((v73 << 10) | (16 * __clz(__rbit64(v10))));
      v39 = *v38;
      v40 = *(v38 + 8);
      v41 = *(v38 + 9);
      v42 = *(v5 + 40);
      sub_1D9179DBC();
      sub_1D9179DDC();
      if (v40 != 1)
      {
        MEMORY[0x1DA72B3C0](v39);
      }

      v74 = v39;
      v10 &= v10 - 1;
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

      v2 = &v77;
      v43 = sub_1D9179E1C();
      v44 = -1 << *(v5 + 32);
      v45 = v43 & ~v44;
      v46 = v45 >> 6;
      v4 = 1 << v45;
      if (((1 << v45) & *(v76 + (v45 >> 6))) == 0)
      {
        continue;
      }

      v47 = ~v44;
      while (1)
      {
        v49 = *(v5 + 48) + 16 * v45;
        v50 = *(v49 + 9);
        if (*(v49 + 8))
        {
          if (!v40)
          {
            goto LABEL_63;
          }
        }

        else
        {
          if (*v49 == v74)
          {
            v51 = v40;
          }

          else
          {
            v51 = 1;
          }

          if (v51)
          {
            goto LABEL_63;
          }
        }

        if (v50 <= 1)
        {
          break;
        }

        if (v50 == 2)
        {
          v52 = 0x657469726F766166;
          v2 = 0xE900000000000064;
LABEL_77:
          if (v41 <= 1)
          {
            goto LABEL_78;
          }

          goto LABEL_81;
        }

        v2 = 0xE700000000000000;
        v52 = 0x6E776F6E6B6E75;
        if (v41 <= 1)
        {
LABEL_78:
          v53 = 0x4C74736567677573;
          v54 = 0xEB00000000737365;
          if (v41)
          {
            v54 = 0xE700000000000000;
            v53 = 0x6C61727475656ELL;
          }

          goto LABEL_87;
        }

LABEL_81:
        if (v41 == 2)
        {
          v53 = 0x657469726F766166;
        }

        else
        {
          v53 = 0x6E776F6E6B6E75;
        }

        if (v41 == 2)
        {
          v54 = 0xE900000000000064;
        }

        else
        {
          v54 = 0xE700000000000000;
        }

LABEL_87:
        if (v52 == v53 && v2 == v54)
        {

          v5 = v75;
LABEL_90:
          v55 = v68[v46];
          v68[v46] = v55 & ~v4;
          v31 = v72;
          if ((v55 & v4) != 0)
          {
            v35 = v67 - 1;
            if (__OFSUB__(v67, 1))
            {
              __break(1u);
            }

            if (v67 == 1)
            {

              v5 = MEMORY[0x1E69E7CD0];
              goto LABEL_98;
            }

            goto LABEL_50;
          }

          goto LABEL_52;
        }

        v48 = sub_1D9179ACC();

        v5 = v75;
        if (v48)
        {
          goto LABEL_90;
        }

LABEL_63:
        v45 = (v45 + 1) & v47;
        v46 = v45 >> 6;
        v4 = 1 << v45;
        if ((*(v76 + (v45 >> 6)) & (1 << v45)) == 0)
        {
          v31 = v72;
          goto LABEL_52;
        }
      }

      v52 = 0x4C74736567677573;
      v2 = 0xEB00000000737365;
      if (v50)
      {
        v2 = 0xE700000000000000;
        v52 = 0x6C61727475656ELL;
        if (v41 <= 1)
        {
          goto LABEL_78;
        }

        goto LABEL_81;
      }

      goto LABEL_77;
    }

    break;
  }

  v36 = v73;
  v3 = v71;
  while (1)
  {
    v37 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      __break(1u);
      goto LABEL_101;
    }

    if (v37 >= v70)
    {
      break;
    }

    v10 = *(v71 + 8 * v37);
    ++v36;
    if (v10)
    {
      v73 = v37;
      goto LABEL_58;
    }
  }

  if (v70 <= v73 + 1)
  {
    v56 = v73 + 1;
  }

  else
  {
    v56 = v70;
  }

  v73 = v56 - 1;
  v5 = sub_1D90A83A4(v68, v65, v67, v5);
LABEL_98:
  sub_1D8D1B144();
LABEL_99:
  v57 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t sub_1D90A61DC(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  v56 = *MEMORY[0x1E69E9840];
  if (*(a2 + 16))
  {
    v49 = a1;
    v50 = 0;
    v8 = a1 + 64;
    v7 = *(a1 + 64);
    v9 = -1 << *(a1 + 32);
    v48 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v7;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 56;
    v14 = 1;
    while (1)
    {
      do
      {
        if (!v11)
        {
          v15 = v49;
          v16 = v50;
          while (1)
          {
            v17 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              break;
            }

            if (v17 >= v12)
            {

              goto LABEL_43;
            }

            v11 = *(v8 + 8 * v17);
            ++v16;
            if (v11)
            {
              v50 = v17;
              goto LABEL_13;
            }
          }

LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        v15 = v49;
LABEL_13:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v5 = *(*(v15 + 48) + ((v50 << 9) | (8 * v18)));
        v19 = *(v6 + 40);
        sub_1D9179DBC();
        MEMORY[0x1DA72B3C0](v5);
        v20 = sub_1D9179E1C();
        v21 = -1 << *(v6 + 32);
        v2 = v20 & ~v21;
        v3 = v2 >> 6;
        v4 = 1 << v2;
      }

      while (((1 << v2) & *(v13 + 8 * (v2 >> 6))) == 0);
      v22 = *(v6 + 48);
      if (*(v22 + 8 * v2) == v5)
      {
        break;
      }

      while (1)
      {
        v2 = (v2 + 1) & ~v21;
        v3 = v2 >> 6;
        v4 = 1 << v2;
        if (((1 << v2) & *(v13 + 8 * (v2 >> 6))) == 0)
        {
          break;
        }

        if (*(v22 + 8 * v2) == v5)
        {
          goto LABEL_17;
        }
      }
    }

LABEL_17:
    v53 = v48;
    v54 = v50;
    v55 = v11;
    v52[0] = v49;
    v52[1] = v8;
    v14 = (63 - v21) >> 6;
    v5 = 8 * v14;

    if (v14 <= 0x80)
    {
      goto LABEL_18;
    }

LABEL_47:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v42 = swift_slowAlloc();
      memcpy(v42, (v6 + 56), v5);
      v43 = sub_1D90A78EC(v42, v14, v6, v2, v52);

      MEMORY[0x1DA72CB90](v42, -1, -1);
      v48 = v53;
      v50 = v54;
      v6 = v43;
      goto LABEL_43;
    }

LABEL_18:
    v45 = v14;
    v46 = &v44;
    MEMORY[0x1EEE9AC00](v23);
    v14 = &v44 - v24;
    memcpy(&v44 - v24, (v6 + 56), v5);
    v25 = *(v6 + 16);
    *(v14 + 8 * v3) &= ~v4;
    v26 = v25 - 1;
    v3 = 1;
    v4 = v49;
LABEL_19:
    v47 = v26;
    while (v11)
    {
LABEL_27:
      v30 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v5 = *(*(v4 + 48) + ((v50 << 9) | (8 * v30)));
      v31 = *(v6 + 40);
      sub_1D9179DBC();
      v2 = &v51;
      MEMORY[0x1DA72B3C0](v5);
      v32 = sub_1D9179E1C();
      v33 = -1 << *(v6 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      v36 = 1 << v34;
      if (((1 << v34) & *(v13 + 8 * (v34 >> 6))) != 0)
      {
        v37 = *(v6 + 48);
        if (*(v37 + 8 * v34) == v5)
        {
LABEL_20:
          v27 = *(v14 + 8 * v35);
          *(v14 + 8 * v35) = v27 & ~v36;
          if ((v27 & v36) != 0)
          {
            v26 = v47 - 1;
            if (__OFSUB__(v47, 1))
            {
              __break(1u);
            }

            if (v47 == 1)
            {

              v6 = MEMORY[0x1E69E7CD0];
              goto LABEL_43;
            }

            goto LABEL_19;
          }
        }

        else
        {
          v38 = ~v33;
          while (1)
          {
            v34 = (v34 + 1) & v38;
            v35 = v34 >> 6;
            v36 = 1 << v34;
            if (((1 << v34) & *(v13 + 8 * (v34 >> 6))) == 0)
            {
              break;
            }

            if (*(v37 + 8 * v34) == v5)
            {
              goto LABEL_20;
            }
          }
        }
      }
    }

    v28 = v50;
    while (1)
    {
      v29 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      if (v29 >= v12)
      {
        break;
      }

      v11 = *(v8 + 8 * v29);
      ++v28;
      if (v11)
      {
        v50 = v29;
        goto LABEL_27;
      }
    }

    if (v12 <= v50 + 1)
    {
      v39 = v50 + 1;
    }

    else
    {
      v39 = v12;
    }

    v50 = v39 - 1;
    v6 = sub_1D90A89E0(v14, v45, v47, v6);
LABEL_43:
    sub_1D8D1B144();
  }

  else
  {

    v6 = MEMORY[0x1E69E7CD0];
  }

  v40 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t sub_1D90A6664(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v8 = result;
  v9 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v10 = v9 - 1;
  v11 = a3 + 56;
  while (1)
  {
    v13 = a5[3];
    v14 = a5[4];
    if (!v14)
    {
      break;
    }

    v15 = a5[3];
LABEL_9:
    v18 = *(*(*a5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    a5[3] = v15;
    a5[4] = (v14 - 1) & v14;
    v19 = *(a3 + 40);
    result = sub_1D9179DAC();
    v20 = -1 << *(a3 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    v23 = 1 << v21;
    if (((1 << v21) & *(v11 + 8 * (v21 >> 6))) != 0)
    {
      v24 = *(a3 + 48);
      if (*(v24 + 8 * v21) == v18)
      {
LABEL_2:
        v12 = v8[v22];
        v8[v22] = v12 & ~v23;
        if ((v12 & v23) != 0)
        {
          if (__OFSUB__(v10--, 1))
          {
LABEL_23:
            __break(1u);
            return result;
          }

          if (!v10)
          {
            return MEMORY[0x1E69E7CD0];
          }
        }
      }

      else
      {
        v25 = ~v20;
        while (1)
        {
          v21 = (v21 + 1) & v25;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v11 + 8 * (v21 >> 6))) == 0)
          {
            break;
          }

          if (*(v24 + 8 * v21) == v18)
          {
            goto LABEL_2;
          }
        }
      }
    }
  }

  v16 = (a5[2] + 64) >> 6;
  v17 = a5[3];
  while (1)
  {
    v15 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v15 >= v16)
    {
      break;
    }

    v14 = *(a5[1] + 8 * v15);
    ++v17;
    if (v14)
    {
      goto LABEL_9;
    }
  }

  if (v16 <= v13 + 1)
  {
    v27 = v13 + 1;
  }

  else
  {
    v27 = (a5[2] + 64) >> 6;
  }

  a5[3] = v27 - 1;
  a5[4] = 0;

  return sub_1D90A7AD8(v8, a2, v10, a3);
}

uint64_t sub_1D90A6820(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v32 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v31 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v29 = v11 + 1;
          }

          else
          {
            v29 = (a5[2] + 64) >> 6;
          }

          a5[3] = v29 - 1;
          a5[4] = 0;

          return sub_1D90A7CC4(v32, a2, v31, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        v19 = *(a3 + 40);
        sub_1D9179DBC();

        _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
        v20 = sub_1D9179E1C();
        v21 = -1 << *(a3 + 32);
        v22 = v20 & ~v21;
        v23 = v22 >> 6;
        v24 = 1 << v22;
        if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v25 = (*(a3 + 48) + 16 * v22);
      if (*v25 != v18 || v25[1] != v17)
      {
        v27 = ~v21;
        while ((sub_1D9179ACC() & 1) == 0)
        {
          v22 = (v22 + 1) & v27;
          v23 = v22 >> 6;
          v24 = 1 << v22;
          if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v28 = (*(a3 + 48) + 16 * v22);
          if (*v28 == v18 && v28[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v32[v23];
      v32[v23] = v10 & ~v24;
    }

    while ((v10 & v24) == 0);
    v8 = v31 - 1;
    if (__OFSUB__(v31, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v31 != 1)
      {
        continue;
      }

      return MEMORY[0x1E69E7CD0];
    }

    return result;
  }
}

void sub_1D90A6A58(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v34 = a3 + 56;
  while (2)
  {
    v31 = v8;
    do
    {
      while (1)
      {
        if ((*v5 & 0x8000000000000000) != 0)
        {
          if (!sub_1D917938C())
          {
            goto LABEL_29;
          }

          sub_1D8D6B2FC();
          swift_dynamicCast();
          v12 = v35;
          if (!v35)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v9 = v5[3];
          v10 = v5[4];
          if (!v10)
          {
            v13 = (v5[2] + 64) >> 6;
            if (v13 <= v9 + 1)
            {
              v14 = v9 + 1;
            }

            else
            {
              v14 = (v5[2] + 64) >> 6;
            }

            v15 = v14 - 1;
            while (1)
            {
              v11 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
                break;
              }

              if (v11 >= v13)
              {
                v5[3] = v15;
                v5[4] = 0;
                goto LABEL_29;
              }

              v10 = *(v5[1] + 8 * v11);
              ++v9;
              if (v10)
              {
                goto LABEL_17;
              }
            }

            __break(1u);
            goto LABEL_31;
          }

          v11 = v5[3];
LABEL_17:
          v16 = (v10 - 1) & v10;
          v12 = *(*(*v5 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
          v17 = v12;
          v5[3] = v11;
          v5[4] = v16;
          if (!v12)
          {
LABEL_29:

            sub_1D90A7EE8(a1, a2, v31, a3, &unk_1ECAB6740, &qword_1D91936F0);
            return;
          }
        }

        v18 = *(a3 + 40);
        v19 = sub_1D917913C();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v34 + 8 * (v21 >> 6))) == 0)
        {
          goto LABEL_3;
        }

        sub_1D8D6B2FC();
        v24 = *(*(a3 + 48) + 8 * v21);
        v25 = sub_1D917914C();

        if (v25)
        {
          break;
        }

        v26 = ~v20;
        while (1)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v34 + 8 * (v21 >> 6))) == 0)
          {
            break;
          }

          v27 = *(*(a3 + 48) + 8 * v21);
          v28 = sub_1D917914C();

          if (v28)
          {
            goto LABEL_23;
          }
        }

LABEL_3:

        v5 = a5;
      }

LABEL_23:
      v5 = a5;

      v29 = a1[v22];
      a1[v22] = v29 & ~v23;
    }

    while ((v29 & v23) == 0);
    v8 = v31 - 1;
    if (__OFSUB__(v31, 1))
    {
LABEL_31:
      __break(1u);
      return;
    }

    if (v31 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_1D90A6CEC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = *(a3 + 16);
  v34 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v6 = v5 - 1;
  v41 = a3 + 56;
  v35 = a5;
LABEL_2:
  v33 = v6;
  while (1)
  {
    v7 = a5[1];
    v8 = *(*a5 + 16);
    if (v7 == v8)
    {

      return sub_1D90A80D4(v34, a2, v33, a3);
    }

    if (v7 >= v8)
    {
      break;
    }

    v9 = *a5 + 24 * v7;
    v10 = *(v9 + 32);
    v11 = *(v9 + 40);
    v12 = *(v9 + 48);
    a5[1] = v7 + 1;
    v13 = *(a3 + 40);
    sub_1D9179DBC();
    if (v12 > 1)
    {
      if (v12 == 2)
      {
        v14 = 8;
      }

      else if (v10 > 1)
      {
        if (v10 ^ 2 | v11)
        {
          v14 = 6;
        }

        else
        {
          v14 = 4;
        }
      }

      else if (v10 | v11)
      {
        v14 = 2;
      }

      else
      {
        v14 = 1;
      }
    }

    else
    {
      if (v12)
      {

        _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
        goto LABEL_14;
      }

      v14 = 3;
    }

    MEMORY[0x1DA72B390](v14);
LABEL_14:
    v15 = sub_1D9179E1C();
    v16 = -1 << *(a3 + 32);
    v17 = v15 & ~v16;
    v18 = v17 >> 6;
    v19 = 1 << v17;
    if (((1 << v17) & *(v41 + 8 * (v17 >> 6))) == 0)
    {
LABEL_3:
      result = sub_1D8D02FCC(v10, v11, v12);
      goto LABEL_4;
    }

    v40 = ~v16;
    v20 = v10 != 3;
    v21 = v10 != 2;
    v22 = v10 != 1;
    if (v11)
    {
      v20 = 1;
      v21 = 1;
      v22 = 1;
    }

    if (v12 != 3)
    {
      v20 = 1;
    }

    v39 = v20;
    v23 = v12 != 3 || v21;
    v38 = v23;
    v24 = v12 != 3 || v22;
    if (v11 | v10)
    {
      v25 = 0;
    }

    else
    {
      v25 = v12 == 3;
    }

    v36 = v25;
    v37 = v24;
    while (1)
    {
      v27 = *(a3 + 48) + 24 * v17;
      v28 = *v27;
      v29 = *(v27 + 8);
      v30 = *(v27 + 16);
      if (v30 <= 1)
      {
        if (*(v27 + 16))
        {
          v26 = *(v27 + 8);
        }

        else if (!v12)
        {
          goto LABEL_48;
        }

        goto LABEL_30;
      }

      if (v30 == 2)
      {
        if (v12 == 2)
        {
          goto LABEL_48;
        }

        goto LABEL_30;
      }

      if (v28 > 1)
      {
        break;
      }

      if (v28 | v29)
      {
        if ((v37 & 1) == 0)
        {
          goto LABEL_48;
        }
      }

      else if (v36)
      {
        goto LABEL_48;
      }

LABEL_30:
      sub_1D8D02FE4(v10, v11, v12);
      sub_1D8D02FCC(v28, v29, v30);
      sub_1D8D02FCC(v10, v11, v12);
      v17 = (v17 + 1) & v40;
      v18 = v17 >> 6;
      v19 = 1 << v17;
      if ((*(v41 + 8 * (v17 >> 6)) & (1 << v17)) == 0)
      {
        goto LABEL_3;
      }
    }

    if (!(v28 ^ 2 | v29))
    {
      if ((v38 & 1) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_30;
    }

    if (v39)
    {
      goto LABEL_30;
    }

LABEL_48:
    sub_1D8D02FE4(v10, v11, v12);
    sub_1D8D02FCC(v28, v29, v30);
    result = sub_1D8D02FCC(v10, v11, v12);
    v31 = v34[v18];
    v34[v18] = v31 & ~v19;
    if ((v31 & v19) != 0)
    {
      v6 = v33 - 1;
      a5 = v35;
      if (__OFSUB__(v33, 1))
      {
        goto LABEL_62;
      }

      if (v33 == 1)
      {
        return MEMORY[0x1E69E7CD0];
      }

      goto LABEL_2;
    }

LABEL_4:
    a5 = v35;
  }

  __break(1u);
LABEL_62:
  __break(1u);
  return result;
}

uint64_t sub_1D90A707C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v38 = result;
  v5 = a3;
  v6 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v7 = v6 - 1;
  v8 = a3 + 56;
  v40 = a3 + 56;
LABEL_2:
  v37 = v7;
LABEL_3:
  while (2)
  {
    v9 = a5[3];
    v10 = a5[4];
    if (v10)
    {
      v11 = a5[3];
LABEL_9:
      v14 = *(*a5 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v10))));
      v15 = *v14;
      v16 = *(v14 + 8);
      v17 = *(v14 + 9);
      a5[3] = v11;
      a5[4] = (v10 - 1) & v10;
      v18 = *(v5 + 40);
      sub_1D9179DBC();
      v42 = v16;
      sub_1D9179DDC();
      if (v16 != 1)
      {
        MEMORY[0x1DA72B3C0](v15);
      }

      v41 = v15;
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

      result = sub_1D9179E1C();
      v19 = -1 << *(v5 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      v22 = 1 << v20;
      if (((1 << v20) & *(v8 + 8 * (v20 >> 6))) == 0)
      {
        continue;
      }

      v23 = ~v19;
      while (1)
      {
        v25 = *(v5 + 48) + 16 * v20;
        v26 = *(v25 + 9);
        if (*(v25 + 8))
        {
          if (!v42)
          {
            goto LABEL_14;
          }
        }

        else
        {
          v27 = *v25 == v41;
          v28 = v42;
          if (!v27)
          {
            v28 = 1;
          }

          if (v28)
          {
            goto LABEL_14;
          }
        }

        if (v26 > 1)
        {
          if (v26 == 2)
          {
            v29 = 0x657469726F766166;
            v30 = 0xE900000000000064;
          }

          else
          {
            v30 = 0xE700000000000000;
            v29 = 0x6E776F6E6B6E75;
          }
        }

        else
        {
          v29 = 0x4C74736567677573;
          v30 = 0xEB00000000737365;
          if (v26)
          {
            v30 = 0xE700000000000000;
            v29 = 0x6C61727475656ELL;
          }
        }

        v31 = v5;
        if (v17 > 1)
        {
          if (v17 == 2)
          {
            v32 = 0x657469726F766166;
          }

          else
          {
            v32 = 0x6E776F6E6B6E75;
          }

          if (v17 == 2)
          {
            v33 = 0xE900000000000064;
          }

          else
          {
            v33 = 0xE700000000000000;
          }
        }

        else
        {
          v32 = 0x4C74736567677573;
          v33 = 0xEB00000000737365;
          if (v17)
          {
            v33 = 0xE700000000000000;
            v32 = 0x6C61727475656ELL;
          }
        }

        if (v29 == v32 && v30 == v33)
        {

          v5 = v31;
          v8 = v40;
LABEL_39:
          v34 = v38[v21];
          v38[v21] = v34 & ~v22;
          if ((v34 & v22) != 0)
          {
            v7 = v37 - 1;
            if (__OFSUB__(v37, 1))
            {
LABEL_48:
              __break(1u);
              return result;
            }

            if (v37 == 1)
            {
              return MEMORY[0x1E69E7CD0];
            }

            goto LABEL_2;
          }

          goto LABEL_3;
        }

        v24 = sub_1D9179ACC();

        v5 = v31;
        v8 = v40;
        if (v24)
        {
          goto LABEL_39;
        }

LABEL_14:
        v20 = (v20 + 1) & v23;
        v21 = v20 >> 6;
        v22 = 1 << v20;
        if ((*(v8 + 8 * (v20 >> 6)) & (1 << v20)) == 0)
        {
          goto LABEL_3;
        }
      }
    }

    break;
  }

  v12 = (a5[2] + 64) >> 6;
  v13 = a5[3];
  while (1)
  {
    v11 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v11 >= v12)
    {
      break;
    }

    v10 = *(a5[1] + 8 * v11);
    ++v13;
    if (v10)
    {
      goto LABEL_9;
    }
  }

  if (v12 <= v9 + 1)
  {
    v35 = v9 + 1;
  }

  else
  {
    v35 = (a5[2] + 64) >> 6;
  }

  a5[3] = v35 - 1;
  a5[4] = 0;

  return sub_1D90A83A4(v38, a2, v37, v5);
}

uint64_t sub_1D90A748C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a5;
  v6 = a3;
  v7 = *(a3 + 16);
  v57 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v70 = a3 + 56;
  while (2)
  {
    v56 = v8;
    while (1)
    {
LABEL_4:
      v9 = v5[3];
      v10 = v5[4];
      if (!v10)
      {
        v12 = (v5[2] + 64) >> 6;
        v13 = v5[3];
        while (1)
        {
          v11 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            __break(1u);
            goto LABEL_63;
          }

          if (v11 >= v12)
          {
            break;
          }

          v10 = *(v5[1] + 8 * v11);
          ++v13;
          if (v10)
          {
            goto LABEL_10;
          }
        }

        if (v12 <= v9 + 1)
        {
          v54 = v9 + 1;
        }

        else
        {
          v54 = (v5[2] + 64) >> 6;
        }

        v5[3] = v54 - 1;
        v5[4] = 0;

        return sub_1D90A8694(v57, a2, v56, v6);
      }

      v11 = v5[3];
LABEL_10:
      v14 = *(*v5 + 48) + 72 * (__clz(__rbit64(v10)) | (v11 << 6));
      v72 = *v14;
      v15 = *(v14 + 16);
      v16 = *(v14 + 32);
      v17 = *(v14 + 48);
      v76 = *(v14 + 64);
      v74 = v16;
      v75 = v17;
      v73 = v15;
      v5[3] = v11;
      v5[4] = (v10 - 1) & v10;
      v18 = *(v6 + 40);
      sub_1D9179DBC();
      v19 = v72;
      sub_1D8D1808C(&v72, v71);
      v77 = v19;
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
      v20 = v73;
      v66 = BYTE8(v73);
      if (BYTE8(v73) == 1)
      {
        sub_1D9179DDC();
      }

      else
      {
        sub_1D9179DDC();
        MEMORY[0x1DA72B3C0](v20);
      }

      v21 = *(&v74 + 1);
      v22 = v75;
      v62 = DWORD2(v75);
      v63 = v74;
      v23 = v76;
      v61 = v76;
      switch(v75)
      {
        case 0:
          v24 = 0;
          goto LABEL_19;
        case 1:
          v24 = 1;
          goto LABEL_19;
        case 2:
          v24 = 3;
LABEL_19:
          MEMORY[0x1DA72B390](v24);
          goto LABEL_21;
      }

      MEMORY[0x1DA72B390](2);
      sub_1D9179DDC();
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
      sub_1D9179DDC();
      MEMORY[0x1DA72B3C0](v23);
LABEL_21:
      v25 = sub_1D9179E1C();
      v26 = -1 << *(v6 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = 1 << v27;
      if (((1 << v27) & *(v70 + 8 * (v27 >> 6))) != 0)
      {
        break;
      }

      result = sub_1D8D183D4(&v72);
    }

    v64 = v20;
    v65 = v22;
    v60 = v21;
    v30 = ~v26;
    v31 = *(v6 + 48);
    v32 = v77;
    v33 = *(&v19 + 1);
    while (1)
    {
      v34 = v31 + 72 * v27;
      v35 = *(v34 + 16);
      v36 = *(v34 + 24);
      v37 = *(v34 + 32);
      v38 = *(v34 + 40);
      v39 = *(v34 + 48);
      v40 = *(v34 + 56);
      v41 = *(v34 + 64);
      if (*v34 != v32 || *(v34 + 8) != v33)
      {
        v43 = v30;
        v68 = v29;
        v69 = *(v34 + 56);
        v40 = *(v34 + 64);
        v44 = v31;
        v67 = v28;
        v45 = *(v34 + 48);
        v46 = *(v34 + 24);
        v47 = sub_1D9179ACC();
        v36 = v46;
        v39 = v45;
        v28 = v67;
        v29 = v68;
        v31 = v44;
        v41 = v40;
        LODWORD(v40) = v69;
        v30 = v43;
        v33 = *(&v19 + 1);
        v32 = v77;
        if ((v47 & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      if (v36)
      {
        if (!v66)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v48 = v66;
        if (v35 != v64)
        {
          v48 = 1;
        }

        if (v48)
        {
          goto LABEL_24;
        }
      }

      if (v39)
      {
        break;
      }

      if (!v65)
      {
        goto LABEL_52;
      }

LABEL_24:
      v27 = (v27 + 1) & v30;
      v28 = v27 >> 6;
      v29 = 1 << v27;
      if ((*(v70 + 8 * (v27 >> 6)) & (1 << v27)) == 0)
      {
        result = sub_1D8D183D4(&v72);
        v5 = a5;
        v6 = a3;
        goto LABEL_4;
      }
    }

    if (v39 == 1)
    {
      if (v65 == 1)
      {
        goto LABEL_52;
      }

      goto LABEL_24;
    }

    if (v39 == 2)
    {
      if (v65 == 2)
      {
        goto LABEL_52;
      }

      goto LABEL_24;
    }

    if (v65 < 3 || ((v37 ^ v63) & 1) != 0)
    {
      goto LABEL_24;
    }

    if (v38 != v60 || v39 != v65)
    {
      v50 = v30;
      v51 = v31;
      v52 = sub_1D9179ACC();
      v31 = v51;
      v30 = v50;
      v33 = *(&v19 + 1);
      v32 = v77;
      if ((v52 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    if (((v62 ^ v40) & 1) != 0 || v41 != v61)
    {
      goto LABEL_24;
    }

LABEL_52:
    result = sub_1D8D183D4(&v72);
    v5 = a5;
    v53 = v57[v28];
    v57[v28] = v53 & ~v29;
    if ((v53 & v29) == 0)
    {
      v6 = a3;
      goto LABEL_4;
    }

    v8 = v56 - 1;
    v6 = a3;
    if (__OFSUB__(v56, 1))
    {
LABEL_63:
      __break(1u);
    }

    else
    {
      if (v56 != 1)
      {
        continue;
      }

      return MEMORY[0x1E69E7CD0];
    }

    return result;
  }
}

uint64_t sub_1D90A78EC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = result;
  v8 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v9 = v8 - 1;
  v10 = a3 + 56;
  while (1)
  {
    v12 = a5[3];
    v13 = a5[4];
    if (!v13)
    {
      break;
    }

    v14 = a5[3];
LABEL_9:
    v17 = *(*(*a5 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    a5[3] = v14;
    a5[4] = (v13 - 1) & v13;
    v18 = *(a3 + 40);
    sub_1D9179DBC();
    MEMORY[0x1DA72B3C0](v17);
    result = sub_1D9179E1C();
    v19 = -1 << *(a3 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    v22 = 1 << v20;
    if (((1 << v20) & *(v10 + 8 * (v20 >> 6))) != 0)
    {
      v23 = *(a3 + 48);
      if (*(v23 + 8 * v20) == v17)
      {
LABEL_2:
        v11 = v7[v21];
        v7[v21] = v11 & ~v22;
        if ((v11 & v22) != 0)
        {
          if (__OFSUB__(v9--, 1))
          {
LABEL_24:
            __break(1u);
            return result;
          }

          if (!v9)
          {
            return MEMORY[0x1E69E7CD0];
          }
        }
      }

      else
      {
        v24 = ~v19;
        while (1)
        {
          v20 = (v20 + 1) & v24;
          v21 = v20 >> 6;
          v22 = 1 << v20;
          if (((1 << v20) & *(v10 + 8 * (v20 >> 6))) == 0)
          {
            break;
          }

          if (*(v23 + 8 * v20) == v17)
          {
            goto LABEL_2;
          }
        }
      }
    }
  }

  v15 = (a5[2] + 64) >> 6;
  v16 = a5[3];
  while (1)
  {
    v14 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v14 >= v15)
    {
      break;
    }

    v13 = *(a5[1] + 8 * v14);
    ++v16;
    if (v13)
    {
      goto LABEL_9;
    }
  }

  if (v15 <= v12 + 1)
  {
    v26 = v12 + 1;
  }

  else
  {
    v26 = (a5[2] + 64) >> 6;
  }

  a5[3] = v26 - 1;
  a5[4] = 0;

  return sub_1D90A89E0(v7, a2, v9, a3);
}

uint64_t sub_1D90A7AD8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6720, &unk_1D91936D8);
  result = sub_1D917942C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    v17 = *(v9 + 40);
    result = sub_1D9179DAC();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + 8 * v21) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1D90A7CC4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6768, &qword_1D9193708);
  result = sub_1D917942C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v9 + 40);
    sub_1D9179DBC();

    _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
    result = sub_1D9179E1C();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1D90A7EE8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v6 = a4;
  if (!a3)
  {
    v11 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v11;
  }

  v7 = a3;
  if (*(a4 + 16) == a3)
  {
    return v6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  result = sub_1D917942C();
  v11 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_17:
    v18 = *(v11 + 40);
    v19 = *(*(v6 + 48) + 8 * (v15 | (v13 << 6)));
    result = sub_1D917913C();
    v20 = -1 << *(v11 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v14 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    *(*(v11 + 48) + 8 * v23) = v19;
    ++*(v11 + 16);
    if (__OFSUB__(v7--, 1))
    {
      goto LABEL_32;
    }

    if (!v7)
    {
      goto LABEL_6;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_6;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v12 = (v17 - 1) & v17;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1D90A80D4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6788, &unk_1D91B3630);
  result = sub_1D917942C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v34 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(v4 + 48) + 24 * (v13 | (v11 << 6));
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = *(v16 + 16);
    v20 = *(v9 + 40);
    sub_1D9179DBC();
    v35 = v18;
    if (v19 > 1)
    {
      if (v19 == 2)
      {
        v21 = v17;
        v22 = 8;
      }

      else
      {
        v33 = v18;
        v21 = v17;
        if (v17 > 1)
        {
          if (v17 ^ 2 | v33)
          {
            v22 = 6;
          }

          else
          {
            v22 = 4;
          }
        }

        else if (v17 | v33)
        {
          v22 = 2;
        }

        else
        {
          v22 = 1;
        }
      }

      goto LABEL_22;
    }

    if (!v19)
    {
      v21 = v17;
      v22 = 3;
LABEL_22:
      MEMORY[0x1DA72B390](v22);
      goto LABEL_24;
    }

    v21 = v17;
    _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
LABEL_24:
    result = sub_1D9179E1C();
    v23 = -1 << *(v9 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v12 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_34;
        }
      }

      goto LABEL_45;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_34:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = *(v9 + 48) + 24 * v26;
    *v31 = v21;
    *(v31 + 8) = v35;
    *(v31 + 16) = v19;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_46;
    }

    v4 = v34;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_1D90A83A4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6778, &qword_1D9193718);
  result = sub_1D917942C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(v4 + 48) + 16 * (v13 | (v11 << 6));
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = *(v16 + 9);
    v20 = *(v9 + 40);
    sub_1D9179DBC();
    sub_1D9179DDC();
    if (v18 != 1)
    {
      MEMORY[0x1DA72B3C0](v17);
    }

    _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

    result = sub_1D9179E1C();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v21) >> 6;
      v25 = v17;
      while (++v23 != v27 || (v26 & 1) == 0)
      {
        v28 = v23 == v27;
        if (v23 == v27)
        {
          v23 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v23);
        if (v29 != -1)
        {
          v24 = __clz(__rbit64(~v29)) + (v23 << 6);
          goto LABEL_29;
        }
      }

      goto LABEL_33;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
    v25 = v17;
LABEL_29:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v30 = *(v9 + 48) + 16 * v24;
    *v30 = v25;
    *(v30 + 8) = v18;
    *(v30 + 9) = v19;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_34;
    }

    v4 = v32;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_1D90A8694(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6718, &qword_1D91936D0);
  result = sub_1D917942C();
  v6 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = *(a4 + 48) + 72 * (v13 | (v11 << 6));
    v17 = *(v16 + 16);
    v18 = *(v16 + 32);
    v19 = *(v16 + 48);
    v43 = *(v16 + 64);
    v41 = v18;
    v42 = v19;
    v39 = *v16;
    v40 = v17;
    v20 = *(v6 + 40);
    sub_1D9179DBC();
    sub_1D8D1808C(&v39, v38);
    _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
    if (BYTE8(v40) == 1)
    {
      sub_1D9179DDC();
      v21 = v42;
      if (!v42)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v23 = v40;
      sub_1D9179DDC();
      MEMORY[0x1DA72B3C0](v23);
      v21 = v42;
      if (!v42)
      {
LABEL_22:
        v22 = 0;
        goto LABEL_24;
      }
    }

    if (v21 == 1)
    {
      v22 = 1;
      goto LABEL_24;
    }

    if (v21 == 2)
    {
      v22 = 3;
LABEL_24:
      MEMORY[0x1DA72B390](v22);
      goto LABEL_26;
    }

    v37 = v43;
    MEMORY[0x1DA72B390](2);
    sub_1D9179DDC();
    _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
    sub_1D9179DDC();
    MEMORY[0x1DA72B3C0](v37);
LABEL_26:
    result = sub_1D9179E1C();
    v24 = -1 << *(v6 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
    {
      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v12 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_36;
        }
      }

      goto LABEL_41;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_36:
    *(v12 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = *(v6 + 48) + 72 * v27;
    *v32 = v39;
    v33 = v40;
    v34 = v41;
    v35 = v42;
    *(v32 + 64) = v43;
    *(v32 + 32) = v34;
    *(v32 + 48) = v35;
    *(v32 + 16) = v33;
    ++*(v6 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_42;
    }

    if (!v5)
    {
LABEL_38:

      return v6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_38;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_1D90A89E0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6710, &unk_1D91B3620);
  result = sub_1D917942C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    v17 = *(v9 + 40);
    sub_1D9179DBC();
    MEMORY[0x1DA72B3C0](v16);
    result = sub_1D9179E1C();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + 8 * v21) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t _s18PodcastsFoundation14PlaybackIntentV16PlayerConstraintO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  v36 = *(v4 - 8);
  v37 = v4;
  v5 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v34 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9F70, qword_1D91B1680);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v35 = &v34 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA1F0, &qword_1D91B3668);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v34 - v13;
  v15 = type metadata accessor for PlaybackIntent.PlayerConstraint(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA1F8, &unk_1D91B3670);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v34 - v21;
  v24 = *(v23 + 56);
  sub_1D90AB088(a1, &v34 - v21, type metadata accessor for PlaybackIntent.PlayerConstraint);
  sub_1D90AB088(a2, &v22[v24], type metadata accessor for PlaybackIntent.PlayerConstraint);
  v25 = *(v8 + 48);
  v26 = v25(v22, 3, v7);
  if (v26 > 1)
  {
    if (v26 == 2)
    {
      if (v25(&v22[v24], 3, v7) != 2)
      {
        goto LABEL_12;
      }
    }

    else if (v25(&v22[v24], 3, v7) != 3)
    {
      goto LABEL_12;
    }

LABEL_11:
    sub_1D90AA0F0(v22, type metadata accessor for PlaybackIntent.PlayerConstraint);
    return 1;
  }

  if (v26)
  {
    if (v25(&v22[v24], 3, v7) != 1)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  sub_1D90AB088(v22, v18, type metadata accessor for PlaybackIntent.PlayerConstraint);
  if (!v25(&v22[v24], 3, v7))
  {
    v28 = *(v11 + 48);
    sub_1D90AA150(v18, v14);
    sub_1D90AA150(&v22[v24], &v14[v28]);
    v29 = v37;
    v30 = *(v36 + 48);
    if (v30(v14, 1, v37) == 1)
    {
      if (v30(&v14[v28], 1, v29) == 1)
      {
        sub_1D8D08A50(v14, &qword_1ECAB9F70, qword_1D91B1680);
        goto LABEL_11;
      }
    }

    else
    {
      v31 = v35;
      sub_1D8D088B4(v14, v35, &qword_1ECAB9F70, qword_1D91B1680);
      if (v30(&v14[v28], 1, v29) != 1)
      {
        v32 = v34;
        sub_1D90AB210(&v14[v28], v34, type metadata accessor for PodcastsMediaLibrary.MediaItem);
        v33 = static PodcastsMediaLibrary.MediaItem.== infix(_:_:)(v31, v32);
        sub_1D90AA0F0(v32, type metadata accessor for PodcastsMediaLibrary.MediaItem);
        sub_1D90AA0F0(v31, type metadata accessor for PodcastsMediaLibrary.MediaItem);
        sub_1D8D08A50(v14, &qword_1ECAB9F70, qword_1D91B1680);
        if (v33)
        {
          goto LABEL_11;
        }

LABEL_20:
        sub_1D90AA0F0(v22, type metadata accessor for PlaybackIntent.PlayerConstraint);
        return 0;
      }

      sub_1D90AA0F0(v31, type metadata accessor for PodcastsMediaLibrary.MediaItem);
    }

    sub_1D8D08A50(v14, &qword_1ECABA1F0, &qword_1D91B3668);
    goto LABEL_20;
  }

  sub_1D8D08A50(v18, &qword_1ECAB9F70, qword_1D91B1680);
LABEL_12:
  sub_1D8D08A50(v22, &qword_1ECABA1F8, &unk_1D91B3670);
  return 0;
}

uint64_t _s18PodcastsFoundation14PlaybackIntentV7ContextV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v4 = *(a1 + 1);
  v3 = *(a1 + 2);
  v6 = *(a1 + 3);
  v5 = *(a1 + 4);
  v7 = a1[40];
  v8 = *(a1 + 6);
  v57 = *(a1 + 5);
  v58 = v8;
  *v59 = *(a1 + 7);
  *&v59[13] = *(a1 + 125);
  v9 = *(a1 + 4);
  v55 = *(a1 + 3);
  v56 = v9;
  v10 = *a2;
  v12 = *(a2 + 1);
  v11 = *(a2 + 2);
  v14 = *(a2 + 3);
  v13 = *(a2 + 4);
  v15 = a2[40];
  v16 = *(a2 + 6);
  v62 = *(a2 + 5);
  v63 = v16;
  *v64 = *(a2 + 7);
  *&v64[13] = *(a2 + 125);
  v17 = *(a2 + 4);
  v60 = *(a2 + 3);
  v61 = v17;
  if (v2 != v10)
  {
    goto LABEL_5;
  }

  if (v7 == 255)
  {
    sub_1D8D0B37C(v4, v3, v6, v5, 0xFFu);
    if (v15 == 255)
    {
      sub_1D8D0B37C(v12, v11, v14, v13, 0xFFu);
      sub_1D8CFF364(v4, v3, v6, v5, 0xFFu);
LABEL_11:
      v52 = v57;
      v53 = v58;
      v54 = *v59;
      v50 = v55;
      v51 = v56;
      *&v49[19] = v61;
      *&v49[35] = v62;
      *&v49[51] = v63;
      *&v49[67] = *v64;
      v20 = *&v59[16] | (v59[20] << 32);
      v21 = *&v64[16] | (v64[20] << 32);
      *&v49[3] = v60;
      if (v59[16] == 2)
      {
        if (v64[16] == 2)
        {
          v39 = v57;
          v40 = v58;
          *v41 = *v59;
          v37 = v55;
          v38 = v56;
          *&v41[16] = *&v59[16];
          v41[20] = BYTE4(v20);
          sub_1D8D088B4(&v55, &v32, &qword_1ECAB9F78, qword_1D91B16D0);
          sub_1D8D088B4(&v60, &v32, &qword_1ECAB9F78, qword_1D91B16D0);
          sub_1D8D08A50(&v37, &qword_1ECAB9F78, qword_1D91B16D0);
          v19 = 1;
          return v19 & 1;
        }

        sub_1D8D088B4(&v55, &v37, &qword_1ECAB9F78, qword_1D91B16D0);
        sub_1D8D088B4(&v60, &v37, &qword_1ECAB9F78, qword_1D91B16D0);
      }

      else
      {
        v40 = v58;
        *v41 = *v59;
        v38 = v56;
        v39 = v57;
        v37 = v55;
        *&v41[16] = *&v59[16];
        v41[20] = BYTE4(v20);
        v34 = v57;
        v35 = v58;
        v36[0] = *v59;
        v32 = v55;
        v33 = v56;
        *(v36 + 13) = *&v41[13];
        if (v64[16] != 2)
        {
          v29 = v62;
          v30 = v63;
          *v31 = *v64;
          v27 = v60;
          v28 = v61;
          v31[20] = BYTE4(v21);
          *&v31[16] = *&v64[16];
          sub_1D8D088B4(&v55, v25, &qword_1ECAB9F78, qword_1D91B16D0);
          sub_1D8D088B4(&v60, v25, &qword_1ECAB9F78, qword_1D91B16D0);
          sub_1D8D088B4(&v37, v25, &qword_1ECAB9F78, qword_1D91B16D0);
          v19 = _s18PodcastsFoundation19EpisodeListSettingsV2eeoiySbAC_ACtFZ_0(&v32, &v27);
          v23[2] = v29;
          v23[3] = v30;
          v24[0] = *v31;
          *(v24 + 13) = *&v31[13];
          v23[0] = v27;
          v23[1] = v28;
          sub_1D8F3D204(v23);
          v25[2] = v34;
          v25[3] = v35;
          v26[0] = v36[0];
          *(v26 + 13) = *(v36 + 13);
          v25[0] = v32;
          v25[1] = v33;
          sub_1D8F3D204(v25);
          v29 = v52;
          v30 = v53;
          *v31 = v54;
          v27 = v50;
          v28 = v51;
          v31[20] = BYTE4(v20);
          *&v31[16] = v20;
          sub_1D8D08A50(&v27, &qword_1ECAB9F78, qword_1D91B16D0);
          return v19 & 1;
        }

        v29 = v39;
        v30 = v40;
        *v31 = *v41;
        *&v31[13] = *&v41[13];
        v27 = v37;
        v28 = v38;
        sub_1D8D088B4(&v55, v25, &qword_1ECAB9F78, qword_1D91B16D0);
        sub_1D8D088B4(&v60, v25, &qword_1ECAB9F78, qword_1D91B16D0);
        sub_1D8D088B4(&v37, v25, &qword_1ECAB9F78, qword_1D91B16D0);
        sub_1D8F3D204(&v27);
      }

      v39 = v52;
      v40 = v53;
      *v41 = v54;
      v37 = v50;
      v38 = v51;
      v44 = *&v49[32];
      v45 = *&v49[48];
      *v46 = *&v49[64];
      v42 = *v49;
      *&v41[16] = v20;
      v41[20] = BYTE4(v20);
      v43 = *&v49[16];
      v48 = BYTE4(v21);
      *&v46[15] = *&v49[79];
      v47 = v21;
      sub_1D8D08A50(&v37, &qword_1ECABA1E8, &qword_1D91B3660);
      v19 = 0;
      return v19 & 1;
    }

    sub_1D8D0B37C(v12, v11, v14, v13, v15);
LABEL_9:
    sub_1D8CFF364(v4, v3, v6, v5, v7);
    sub_1D8CFF364(v12, v11, v14, v13, v15);
    v19 = 0;
    return v19 & 1;
  }

  v37.i64[0] = v4;
  v37.i64[1] = v3;
  *&v38 = v6;
  *(&v38 + 1) = v5;
  LOBYTE(v39) = v7;
  if (v15 == 255)
  {
    sub_1D8D0B37C(v4, v3, v6, v5, v7);
    sub_1D8D0B37C(v12, v11, v14, v13, 0xFFu);
    sub_1D8D0B37C(v4, v3, v6, v5, v7);
    sub_1D8CFEACC(v4, v3, v6, v5, v7);
    goto LABEL_9;
  }

  v32.i64[0] = v12;
  v32.i64[1] = v11;
  *&v33 = v14;
  *(&v33 + 1) = v13;
  LOBYTE(v34) = v15;
  sub_1D8D0B37C(v4, v3, v6, v5, v7);
  sub_1D8D0B37C(v12, v11, v14, v13, v15);
  sub_1D8D0B37C(v4, v3, v6, v5, v7);
  v18 = static MediaIdentifier.== infix(_:_:)(&v37, &v32);
  sub_1D8CFEACC(v32.i64[0], v32.i64[1], v33, *(&v33 + 1), v34);
  sub_1D8CFEACC(v37.i64[0], v37.i64[1], v38, *(&v38 + 1), v39);
  sub_1D8CFF364(v4, v3, v6, v5, v7);
  if (v18)
  {
    goto LABEL_11;
  }

LABEL_5:
  v19 = 0;
  return v19 & 1;
}

uint64_t _s18PodcastsFoundation14PlaybackIntentV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  v61 = *(v4 - 8);
  v62 = v4;
  v5 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v59 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9F70, qword_1D91B1680);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v60 = &v58 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA1F0, &qword_1D91B3668);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v58 - v12;
  v14 = *(a1 + 8);
  v15 = *(a1 + 16);
  v16 = *(a1 + 24);
  v17 = *(a1 + 32);
  *&v102 = *a1;
  *(&v102 + 1) = v14;
  *&v103 = v15;
  *(&v103 + 1) = v16;
  LOBYTE(v104) = v17;
  v19 = *(a2 + 8);
  v21 = *(a2 + 16);
  v20 = *(a2 + 24);
  v22 = *(a2 + 32);
  *&v94 = *a2;
  v18 = v94;
  *(&v94 + 1) = v19;
  *&v95 = v21;
  *(&v95 + 1) = v20;
  LOBYTE(v96) = v22;
  sub_1D8D092C0(v102, v14, v15, v16, v17);
  sub_1D8D092C0(v18, v19, v21, v20, v22);
  LOBYTE(v20) = _s18PodcastsFoundation15MediaIdentifierO2eeoiySbAC_ACtFZ_0(&v102, &v94);
  sub_1D8CFEACC(v94, *(&v94 + 1), v95, *(&v95 + 1), v96);
  sub_1D8CFEACC(v102, *(&v102 + 1), v103, *(&v103 + 1), v104);
  if ((v20 & 1) == 0)
  {
    goto LABEL_15;
  }

  v23 = type metadata accessor for PlaybackIntent(0);
  v24 = v23[5];
  v25 = *(v10 + 48);
  sub_1D8D088B4(a1 + v24, v13, &qword_1ECAB9F70, qword_1D91B1680);
  sub_1D8D088B4(a2 + v24, &v13[v25], &qword_1ECAB9F70, qword_1D91B1680);
  v26 = v62;
  v27 = *(v61 + 48);
  v28 = a2;
  if (v27(v13, 1, v62) == 1)
  {
    if (v27(&v13[v25], 1, v26) == 1)
    {
      sub_1D8D08A50(v13, &qword_1ECAB9F70, qword_1D91B1680);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v29 = v60;
  sub_1D8D088B4(v13, v60, &qword_1ECAB9F70, qword_1D91B1680);
  if (v27(&v13[v25], 1, v26) == 1)
  {
    sub_1D90AA0F0(v29, type metadata accessor for PodcastsMediaLibrary.MediaItem);
LABEL_7:
    sub_1D8D08A50(v13, &qword_1ECABA1F0, &qword_1D91B3668);
LABEL_15:
    v56 = 0;
    return v56 & 1;
  }

  v30 = &v13[v25];
  v31 = v59;
  sub_1D90AB210(v30, v59, type metadata accessor for PodcastsMediaLibrary.MediaItem);
  v32 = static PodcastsMediaLibrary.MediaItem.== infix(_:_:)(v29, v31);
  sub_1D90AA0F0(v31, type metadata accessor for PodcastsMediaLibrary.MediaItem);
  sub_1D90AA0F0(v29, type metadata accessor for PodcastsMediaLibrary.MediaItem);
  sub_1D8D08A50(v13, &qword_1ECAB9F70, qword_1D91B1680);
  if ((v32 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_9:
  v33 = a1 + v23[6];
  v34 = *(v33 + 64);
  v35 = *(v33 + 96);
  v84 = *(v33 + 80);
  v85 = v35;
  v36 = *(v33 + 96);
  v86[0] = *(v33 + 112);
  *(v86 + 13) = *(v33 + 125);
  v37 = *(v33 + 48);
  v38 = *(v33 + 16);
  v81 = *(v33 + 32);
  v82 = v37;
  v39 = *(v33 + 48);
  v83 = *(v33 + 64);
  v40 = *(v33 + 16);
  v80[0] = *v33;
  v80[1] = v40;
  v75 = v39;
  v76 = v34;
  v73 = v38;
  v74 = v81;
  *(v79 + 13) = *(v33 + 125);
  v41 = *(v33 + 112);
  v78 = v36;
  v79[0] = v41;
  v77 = v84;
  v72 = v80[0];
  v42 = v28 + v23[6];
  v43 = *(v42 + 96);
  v44 = *(v42 + 64);
  v91 = *(v42 + 80);
  v92 = v43;
  v45 = *(v42 + 96);
  v93[0] = *(v42 + 112);
  v46 = *(v42 + 16);
  v47 = *(v42 + 48);
  v88 = *(v42 + 32);
  v89 = v47;
  v48 = *(v42 + 48);
  v90 = *(v42 + 64);
  v49 = *(v42 + 16);
  v87[0] = *v42;
  v87[1] = v49;
  v50 = *(v42 + 112);
  v70 = v45;
  v71[0] = v50;
  v66 = v88;
  v67 = v48;
  v68 = v44;
  v69 = v91;
  *(v93 + 13) = *(v42 + 125);
  *(v71 + 13) = *(v42 + 125);
  v64 = v87[0];
  v65 = v46;
  sub_1D8CFEB60(v80, v63);
  sub_1D8CFEB60(v87, v63);
  v51 = _s18PodcastsFoundation14PlaybackIntentV7ContextV2eeoiySbAE_AEtFZ_0(&v72, &v64);
  v99 = v69;
  v100 = v70;
  v101[0] = v71[0];
  *(v101 + 13) = *(v71 + 13);
  v96 = v66;
  v97 = v67;
  v98 = v68;
  v94 = v64;
  v95 = v65;
  sub_1D8D0DB70(&v94);
  v107 = v77;
  v108 = v78;
  v109[0] = v79[0];
  *(v109 + 13) = *(v79 + 13);
  v104 = v74;
  v105 = v75;
  v106 = v76;
  v102 = v72;
  v103 = v73;
  sub_1D8D0DB70(&v102);
  if ((v51 & 1) == 0 || (sub_1D8F66674(*(a1 + v23[7]), *(v28 + v23[7])) & 1) == 0)
  {
    goto LABEL_15;
  }

  v52 = v23[8];
  v53 = *(a1 + v52);
  v54 = *(a1 + v52 + 8);
  v55 = (v28 + v52);
  if ((v53 != *v55 || v54 != v55[1]) && (sub_1D9179ACC() & 1) == 0)
  {
    goto LABEL_15;
  }

  v56 = *(a1 + v23[9]) ^ *(v28 + v23[9]) ^ 1;
  return v56 & 1;
}

unint64_t sub_1D90A9C58()
{
  result = qword_1ECAB2548;
  if (!qword_1ECAB2548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2548);
  }

  return result;
}

unint64_t sub_1D90A9CAC()
{
  result = qword_1ECABA060;
  if (!qword_1ECABA060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA060);
  }

  return result;
}

unint64_t sub_1D90A9D00()
{
  result = qword_1ECABA068;
  if (!qword_1ECABA068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA068);
  }

  return result;
}

unint64_t sub_1D90A9D54()
{
  result = qword_1ECAB2500;
  if (!qword_1ECAB2500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2500);
  }

  return result;
}

unint64_t sub_1D90A9DA8()
{
  result = qword_1ECAB2288;
  if (!qword_1ECAB2288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2288);
  }

  return result;
}

unint64_t sub_1D90A9DFC()
{
  result = qword_1ECAB1E58;
  if (!qword_1ECAB1E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1E58);
  }

  return result;
}

unint64_t sub_1D90A9E50()
{
  result = qword_1ECAB25E8;
  if (!qword_1ECAB25E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB25E8);
  }

  return result;
}

unint64_t sub_1D90A9EA4()
{
  result = qword_1ECAB24F8;
  if (!qword_1ECAB24F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB24F8);
  }

  return result;
}

unint64_t sub_1D90A9EF8()
{
  result = qword_1ECABA0E8;
  if (!qword_1ECABA0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA0E8);
  }

  return result;
}

unint64_t sub_1D90A9F4C()
{
  result = qword_1ECABA0F0;
  if (!qword_1ECABA0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA0F0);
  }

  return result;
}

unint64_t sub_1D90A9FA0()
{
  result = qword_1ECABA0F8;
  if (!qword_1ECABA0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA0F8);
  }

  return result;
}

unint64_t sub_1D90A9FF4()
{
  result = qword_1ECABA100;
  if (!qword_1ECABA100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA100);
  }

  return result;
}

unint64_t sub_1D90AA048()
{
  result = qword_1ECABA108;
  if (!qword_1ECABA108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA108);
  }

  return result;
}

unint64_t sub_1D90AA09C()
{
  result = qword_1ECAB24E8;
  if (!qword_1ECAB24E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB24E8);
  }

  return result;
}

uint64_t sub_1D90AA0F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D90AA150(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9F70, qword_1D91B1680);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D90AA1C0()
{
  result = qword_1ECAB24C0;
  if (!qword_1ECAB24C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB24C0);
  }

  return result;
}

unint64_t sub_1D90AA214()
{
  result = qword_1ECAB2578;
  if (!qword_1ECAB2578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2578);
  }

  return result;
}

unint64_t sub_1D90AA2DC()
{
  result = qword_1ECABA170;
  if (!qword_1ECABA170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA170);
  }

  return result;
}

unint64_t sub_1D90AA334()
{
  result = qword_1ECABA178;
  if (!qword_1ECABA178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA178);
  }

  return result;
}

unint64_t sub_1D90AA38C()
{
  result = qword_1ECABA180;
  if (!qword_1ECABA180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA180);
  }

  return result;
}

__n128 __swift_memcpy133_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 125) = *(a2 + 125);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1D90AA444(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 133))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 128);
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1D90AA4A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 132) = 0;
    *(result + 128) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 133) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 133) = 0;
    }

    if (a2)
    {
      *(result + 128) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1D90AA520(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D90AA5B0()
{
  sub_1D8CEF9DC();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

unint64_t sub_1D90AA61C()
{
  result = qword_1ECABA198;
  if (!qword_1ECABA198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA198);
  }

  return result;
}

unint64_t sub_1D90AA674()
{
  result = qword_1ECABA1A0;
  if (!qword_1ECABA1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA1A0);
  }

  return result;
}

unint64_t sub_1D90AA6CC()
{
  result = qword_1ECABA1A8;
  if (!qword_1ECABA1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA1A8);
  }

  return result;
}

unint64_t sub_1D90AA724()
{
  result = qword_1ECABA1B0;
  if (!qword_1ECABA1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA1B0);
  }

  return result;
}

unint64_t sub_1D90AA77C()
{
  result = qword_1ECABA1B8;
  if (!qword_1ECABA1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA1B8);
  }

  return result;
}

unint64_t sub_1D90AA7D4()
{
  result = qword_1ECABA1C0;
  if (!qword_1ECABA1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA1C0);
  }

  return result;
}

unint64_t sub_1D90AA82C()
{
  result = qword_1ECABA1C8;
  if (!qword_1ECABA1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA1C8);
  }

  return result;
}

unint64_t sub_1D90AA884()
{
  result = qword_1ECAB25D8;
  if (!qword_1ECAB25D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB25D8);
  }

  return result;
}

unint64_t sub_1D90AA8DC()
{
  result = qword_1ECAB25E0;
  if (!qword_1ECAB25E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB25E0);
  }

  return result;
}

uint64_t sub_1D90AA930(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7478654E7075 && a2 == 0xE600000000000000;
  if (v4 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657551664F646E65 && a2 == 0xEA00000000006575 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x616C507472616D73 && a2 == 0xE900000000000079 || (sub_1D9179ACC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746C7561666564 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D9179ACC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1D90AAAA0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E696769726FLL && a2 == 0xE600000000000000;
  if (v4 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1684366707 && a2 == 0xE400000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D91D5400 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D9179ACC();

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

uint64_t sub_1D90AABBC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x616C507472617473 && a2 == 0xED00006B63616279;
  if (v4 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001D91D5420 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x51746E6576657270 && a2 == 0xEF676E6965756575 || (sub_1D9179ACC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D91D5440 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000001D91D5460 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6B63616279616C70 && a2 == 0xEF746E756F636341 || (sub_1D9179ACC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6B63616279616C70 && a2 == 0xEE00656372756F53)
  {

    return 6;
  }

  else
  {
    v6 = sub_1D9179ACC();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1D90AAE2C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x496C616974696E69 && a2 == 0xEB000000006D6574 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x747865746E6F63 && a2 == 0xE700000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D91D5480 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x766C6F7365527369 && a2 == 0xEA00000000006465)
  {

    return 5;
  }

  else
  {
    v6 = sub_1D9179ACC();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t sub_1D90AB034()
{
  result = qword_1ECAB24F0;
  if (!qword_1ECAB24F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB24F0);
  }

  return result;
}

uint64_t sub_1D90AB088(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D90AB0F8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  if (a9 <= 3u)
  {
    if (a9 >= 4u)
    {
      return;
    }

    goto LABEL_12;
  }

  if (a9 <= 6u)
  {
    if (a9 != 4)
    {
      if (a9 != 5)
      {
        return;
      }
    }

    goto LABEL_12;
  }

  if (a9 == 7)
  {
LABEL_12:

    return;
  }

  if (a9 != 8)
  {
    if (a9 != 9)
    {
      return;
    }

    goto LABEL_12;
  }

  sub_1D8F95794(a3, a4);
}

uint64_t sub_1D90AB210(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D90AB278()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA1D8, &qword_1D91B3650) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for PlaybackIntent(0) - 8);
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_1D90A0F90(v5, v6, v7, v0 + v2, v8);
}

uint64_t sub_1D90AB358(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return sub_1D8DD4394(a1, a2);
}

uint64_t sub_1D90AB3B0()
{
  result = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  qword_1ECAAFD28 = result;
  return result;
}

id static NSNotificationName.pfPerShowSettingsChanged.getter()
{
  if (qword_1ECAAFD20 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECAAFD28;

  return v1;
}

uint64_t Notification.pfPerShowSettingData.getter@<X0>(void *a1@<X8>)
{
  result = sub_1D917669C();
  if (!result)
  {
    goto LABEL_7;
  }

  v3 = result;
  sub_1D91793EC();
  if (!*(v3 + 16) || (v4 = sub_1D8D6550C(v6), (v5 & 1) == 0))
  {

    result = sub_1D8D9A308(v6);
    goto LABEL_7;
  }

  sub_1D8CFAD1C(*(v3 + 56) + 32 * v4, v7);
  sub_1D8D9A308(v6);

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_7:
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  return result;
}

uint64_t PerShowSettingNotificationData.uuid.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

void PerShowSettingNotificationData.playbackRate.getter()
{
  if (*(v0 + 4) == 2)
  {
    v1 = type metadata accessor for PodcastsPlaybackSettingsHelper();
    if (qword_1ECAB1988 != -1)
    {
      swift_once();
    }

    v2 = qword_1ECAB1990;
    sub_1D90AB800(0, v2, v1);
  }

  else
  {
    v3 = *v0;
  }
}

uint64_t PerShowSettingNotificationData.enhanceDialogueEnabled.getter()
{
  v1 = *v0 | (*(v0 + 4) << 32);
  if ((v1 & 0xFF00000000) != 0x200000000)
  {
    return HIDWORD(v1) & 1;
  }

  v2 = type metadata accessor for PodcastsPlaybackSettingsHelper();
  if (qword_1ECAB1988 != -1)
  {
    swift_once();
  }

  v3 = qword_1ECAB1990;
  v4 = sub_1D90ABB94(0, 0, v3, v2);

  return v4 & 1;
}

uint64_t PerShowSettingNotificationData.pafPlaybackSettingSource.getter()
{
  if (*(v0 + 4) << 32 == 0x200000000)
  {
    return 0x6C61626F6C67;
  }

  else
  {
    return 0x6D6F74737563;
  }
}

void sub_1D90AB6FC(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 uuid];
  if (!v4)
  {

    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    return;
  }

  v5 = v4;
  v6 = sub_1D917820C();
  v8 = v7;

  v9 = [a1 advancedPlaybackSettings];
  if (v9)
  {
    v10 = v9;
    if ([v9 hasCustomSettings])
    {
      [v10 playbackRate];
      v12 = v11;
      v13 = [v10 enhanceDialogueEnabled];

      v14 = 0x100000000;
      if (!v13)
      {
        v14 = 0;
      }

      v15 = v14 | LODWORD(v12);
      goto LABEL_10;
    }
  }

  v15 = 0x200000000;
LABEL_10:
  *a2 = v15;
  a2[1] = v6;
  a2[2] = v8;
}

float sub_1D90AB800(void *a1, id a2, uint64_t a3)
{
  if (!a1)
  {
    [a2 playbackRateGlobalValue];
    v25 = v24;
    v6 = _s18PodcastsFoundation18PlaybackRateHelperC07clampedD0yS2fFZ_0(v24);
    if (qword_1ECAB0D90 != -1)
    {
      swift_once();
    }

    v26 = sub_1D917744C();
    __swift_project_value_buffer(v26, qword_1ECAB0D98);
    v9 = sub_1D917741C();
    v27 = sub_1D9178CDC();
    if (os_log_type_enabled(v9, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v38 = v29;
      *v28 = 136315650;
      nullsub_1(a3, v30, v31, v32);
      v33 = sub_1D9179FEC();
      v35 = sub_1D8CFA924(v33, v34, &v38);

      *(v28 + 4) = v35;
      *(v28 + 12) = 2048;
      *(v28 + 14) = v25;
      *(v28 + 22) = 2048;
      *(v28 + 24) = v6;
      _os_log_impl(&dword_1D8CEC000, v9, v27, "[%s] No podcast provided, will use global value %f, clamped to %f", v28, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      MEMORY[0x1DA72CB90](v29, -1, -1);
      MEMORY[0x1DA72CB90](v28, -1, -1);

      return v6;
    }

LABEL_12:

    return v6;
  }

  v4 = a1;
  sub_1D90B2210();
  v6 = _s18PodcastsFoundation18PlaybackRateHelperC07clampedD0yS2fFZ_0(v5);
  if (qword_1ECAB0D90 != -1)
  {
    swift_once();
  }

  v7 = sub_1D917744C();
  __swift_project_value_buffer(v7, qword_1ECAB0D98);
  v8 = v4;
  v9 = sub_1D917741C();
  v10 = sub_1D9178CDC();

  if (!os_log_type_enabled(v9, v10))
  {

    goto LABEL_12;
  }

  v11 = swift_slowAlloc();
  v12 = swift_slowAlloc();
  v38 = v12;
  *v11 = 136315907;
  nullsub_1(a3, v13, v14, v15);
  v16 = sub_1D9179FEC();
  v18 = sub_1D8CFA924(v16, v17, &v38);

  *(v11 + 4) = v18;
  *(v11 + 12) = 2048;
  *(v11 + 14) = v6;
  *(v11 + 22) = 2160;
  *(v11 + 24) = 1752392040;
  *(v11 + 32) = 2081;
  v19 = [v8 title];
  if (v19)
  {
    v20 = v19;
    v21 = sub_1D917820C();
    v23 = v22;
  }

  else
  {
    v23 = 0xEA00000000002965;
    v21 = 0x6C746974206F6E28;
  }

  v36 = sub_1D8CFA924(v21, v23, &v38);

  *(v11 + 34) = v36;
  _os_log_impl(&dword_1D8CEC000, v9, v10, "[%s] Retrieved resolved playback rate %f for podcast: %{private,mask.hash}s]", v11, 0x2Au);
  swift_arrayDestroy();
  MEMORY[0x1DA72CB90](v12, -1, -1);
  MEMORY[0x1DA72CB90](v11, -1, -1);

  return v6;
}

uint64_t sub_1D90ABB94(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_1D90ABE3C(a1, a2, a3, a4);
  v7 = sub_1D90B3824(v6);

  if (v7 == 2)
  {
    if (qword_1ECAB0D90 != -1)
    {
      swift_once();
    }

    v8 = sub_1D917744C();
    __swift_project_value_buffer(v8, qword_1ECAB0D98);
    v9 = sub_1D917741C();
    v10 = sub_1D9178CFC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v20 = v12;
      *v11 = 136315138;
      nullsub_1(a4, v13, v14, v15);
      v16 = sub_1D9179FEC();
      v18 = sub_1D8CFA924(v16, v17, &v20);

      *(v11 + 4) = v18;
      _os_log_impl(&dword_1D8CEC000, v9, v10, "[%s] No valid enhance dialogue enabled setting found when retrieving for uuid, will use global value", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x1DA72CB90](v12, -1, -1);
      MEMORY[0x1DA72CB90](v11, -1, -1);
    }

    v7 = [a3 enhanceDialogueEnabledGlobalValue];
  }

  return v7 & 1;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for PerShowSettingNotificationData.PlayerSetting(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 5))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 4);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  if (v5 + 1 >= 2)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PerShowSettingNotificationData.PlayerSetting(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 4) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1D90ABDE8(uint64_t a1)
{
  v1 = *(a1 + 4);
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D90ABE04(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
  }

  else if (a2)
  {
    *(result + 4) = a2 + 1;
  }

  return result;
}

unint64_t sub_1D90ABE3C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2 && [objc_opt_self() supportsLocalLibrary])
  {
    v8 = [objc_opt_self() sharedInstance];
    v9 = [v8 mainQueueContext];

    MEMORY[0x1EEE9AC00](v10);
    v27[2] = v9;
    v27[3] = a1;
    v27[4] = a2;
    v27[5] = a4;
    v27[6] = a4;
    v11 = sub_1D90ACF98(sub_1D90AC11C, v27);

    return v11;
  }

  else
  {
    if (qword_1ECAB0D90 != -1)
    {
      swift_once();
    }

    v13 = sub_1D917744C();
    __swift_project_value_buffer(v13, qword_1ECAB0D98);

    v14 = sub_1D917741C();
    v15 = sub_1D9178CDC();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v28 = v17;
      *v16 = 136315650;
      nullsub_1(a4, v18, v19, v20);
      v21 = sub_1D9179FEC();
      v23 = sub_1D8CFA924(v21, v22, &v28);

      *(v16 + 4) = v23;
      *(v16 + 12) = 2080;
      if (a2)
      {
        v24 = 0x6C696E2D6E6F6ELL;
      }

      else
      {
        v24 = 7104878;
      }

      if (a2)
      {
        v25 = 0xE700000000000000;
      }

      else
      {
        v25 = 0xE300000000000000;
      }

      v26 = sub_1D8CFA924(v24, v25, &v28);

      *(v16 + 14) = v26;
      *(v16 + 22) = 1024;
      *(v16 + 24) = [objc_opt_self() supportsLocalLibrary];
      _os_log_impl(&dword_1D8CEC000, v14, v15, "[%s] Podcast UUID provided is %s, platform supports custom settings = %{BOOL}d. Will retrieve global settings", v16, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v17, -1, -1);
      MEMORY[0x1DA72CB90](v16, -1, -1);
    }

    return sub_1D90B52F0(a3);
  }
}

void sub_1D90AC11C(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  sub_1D90B1E48(*(v1 + 16), a1);
}

void *sub_1D90AC134()
{
  v2[3] = &type metadata for Podcasts;
  v2[4] = sub_1D8CF0F2C();
  LOBYTE(v2[0]) = 39;
  v0 = sub_1D917710C();
  __swift_destroy_boxed_opaque_existential_1Tm(v2);
  if (v0)
  {
    result = &unk_1F545D2B8;
  }

  else
  {
    if (qword_1ECAB1FE8 != -1)
    {
      swift_once();
    }
  }

  off_1ECAB1FD8 = result;
  return result;
}

uint64_t sub_1D90AC200()
{
  v3[3] = &type metadata for Podcasts;
  v3[4] = sub_1D8CF0F2C();
  LOBYTE(v3[0]) = 39;
  v0 = sub_1D917710C();
  result = __swift_destroy_boxed_opaque_existential_1Tm(v3);
  if (v0)
  {
    if (qword_1ECAB1FD0 != -1)
    {
      result = swift_once();
    }

    v2 = off_1ECAB1FD8;
    if (*(off_1ECAB1FD8 + 2))
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  if (qword_1ECAB1FE8 != -1)
  {
    result = swift_once();
  }

  v2 = off_1ECAB1FF0;
  if (*(off_1ECAB1FF0 + 2))
  {
LABEL_9:
    dword_1ECAB1FC0 = v2[8];
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D90AC310()
{
  v4[3] = &type metadata for Podcasts;
  v4[4] = sub_1D8CF0F2C();
  LOBYTE(v4[0]) = 39;
  v0 = sub_1D917710C();
  result = __swift_destroy_boxed_opaque_existential_1Tm(v4);
  if (v0)
  {
    if (qword_1ECAB1FD0 != -1)
    {
      result = swift_once();
    }

    v2 = off_1ECAB1FD8;
    v3 = *(off_1ECAB1FD8 + 2);
    if (v3)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  if (qword_1ECAB1FE8 != -1)
  {
    result = swift_once();
  }

  v2 = off_1ECAB1FF0;
  v3 = *(off_1ECAB1FF0 + 2);
  if (v3)
  {
LABEL_9:
    dword_1ECAB1FAC = v2[v3 + 7];
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D90AC424()
{
  v3[3] = &type metadata for Podcasts;
  v3[4] = sub_1D8CF0F2C();
  LOBYTE(v3[0]) = 39;
  v0 = sub_1D917710C();
  result = __swift_destroy_boxed_opaque_existential_1Tm(v3);
  v2 = 0.1;
  if ((v0 & 1) == 0)
  {
    v2 = 0.25;
  }

  dword_1ECABA200 = LODWORD(v2);
  return result;
}

float sub_1D90AC4BC(void *a1, uint64_t a2)
{
  if (*a1 == -1)
  {
    return *a2;
  }

  swift_once();
  return *a2;
}

uint64_t static PlaybackRateHelper.localizedWithX(_:alwaysShowTenthsDigit:)(char a1)
{
  if (a1)
  {
    if (qword_1ECAB36F8 != -1)
    {
      swift_once();
    }

    v2 = qword_1ECABA208;
    v3 = sub_1D9178A6C();
    v4 = [v2 stringForObjectValue_];

    if (v4)
    {
      v5 = sub_1D917820C();
      v7 = v6;
    }

    else
    {
      sub_1D90ACC64();
      v5 = sub_1D917801C();
      v7 = v9;
    }

    v10 = [objc_opt_self() mainBundle];
    sub_1D917693C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1D9189080;
    *(v11 + 56) = MEMORY[0x1E69E6158];
    *(v11 + 64) = sub_1D8D34978();
    *(v11 + 32) = v5;
    *(v11 + 40) = v7;
    v12 = sub_1D91781DC();

    return v12;
  }

  else
  {

    return _s18PodcastsFoundation18PlaybackRateHelperC14localizedWithXySSSfFZ_0();
  }
}

uint64_t static PlaybackRateHelper.localizedPlain(_:)()
{
  if (qword_1ECAAFDC0 != -1)
  {
    swift_once();
  }

  v0 = qword_1ECAAFDC8;
  v1 = sub_1D9178A6C();
  v2 = [v0 stringForObjectValue_];

  if (v2)
  {
    v3 = sub_1D917820C();

    return v3;
  }

  else
  {
    sub_1D90ACC64();
    return sub_1D917801C();
  }
}

id PlaybackRateHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PlaybackRateHelper.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PlaybackRateHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1D90AC8EC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  [v5 setMinimumFractionDigits_];
  [v5 setMaximumFractionDigits_];
  result = [v5 setNumberStyle_];
  *a3 = v5;
  return result;
}

float _s18PodcastsFoundation18PlaybackRateHelperC07clampedD0yS2fFZ_0(float a1)
{
  if (qword_1ECAB1FB8 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *&dword_1ECAB1FC0;
  if (qword_1ECAB1FA0 == -1)
  {
    if (*&dword_1ECAB1FC0 >= a1)
    {
      return v1;
    }
  }

  else
  {
    v8 = a1;
    swift_once();
    a1 = v8;
    if (v1 >= v8)
    {
      return v1;
    }
  }

  v2 = dword_1ECAB1FAC;
  if (qword_1ECAB1FD0 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v3 = *(off_1ECAB1FD8 + 2);
  v4 = (off_1ECAB1FD8 + 32);
  while (v3)
  {
    v5 = *v4++;
    v1 = v5;
    --v3;
    if (v5 >= a1)
    {
      return v1;
    }
  }

  return *&v2;
}

uint64_t _s18PodcastsFoundation18PlaybackRateHelperC14localizedWithXySSSfFZ_0()
{
  if (qword_1ECAAFDC0 != -1)
  {
    swift_once();
  }

  v0 = qword_1ECAAFDC8;
  v1 = sub_1D9178A6C();
  v2 = [v0 stringForObjectValue_];

  if (v2)
  {
    v3 = sub_1D917820C();
    v5 = v4;
  }

  else
  {
    sub_1D90ACC64();
    v3 = sub_1D917801C();
    v5 = v6;
  }

  v7 = [objc_opt_self() mainBundle];
  sub_1D917693C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D9189080;
  *(v8 + 56) = MEMORY[0x1E69E6158];
  *(v8 + 64) = sub_1D8D34978();
  *(v8 + 32) = v3;
  *(v8 + 40) = v5;
  v9 = sub_1D91781DC();

  return v9;
}

unint64_t sub_1D90ACC64()
{
  result = qword_1ECABA210;
  if (!qword_1ECABA210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA210);
  }

  return result;
}

uint64_t sub_1D90ACCB8(uint64_t a1, uint64_t a2)
{
  v12 = 0;
  v5 = swift_allocObject();
  v5[2] = &v12;
  v5[3] = a1;
  v5[4] = a2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1D90B1C0C;
  *(v6 + 24) = v5;
  aBlock[4] = sub_1D8EDCFE0;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8D24488;
  aBlock[3] = &block_descriptor_47_0;
  v7 = _Block_copy(aBlock);

  [v2 performBlockAndWait_];
  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v10 = v12;
    if (v12)
    {

      return v10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D90ACE28(uint64_t a1, uint64_t a2)
{
  v12 = 0;
  v5 = swift_allocObject();
  v5[2] = &v12;
  v5[3] = a1;
  v5[4] = a2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1D90B1C74;
  *(v6 + 24) = v5;
  aBlock[4] = sub_1D8EDCFE0;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8D24488;
  aBlock[3] = &block_descriptor_57_1;
  v7 = _Block_copy(aBlock);

  [v2 performBlockAndWait_];
  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v10 = v12;
    if (v12)
    {

      return v10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D90ACF98(uint64_t a1, uint64_t a2)
{
  v12 = 0;
  v5 = swift_allocObject();
  v5[2] = &v12;
  v5[3] = a1;
  v5[4] = a2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1D90B1C74;
  *(v6 + 24) = v5;
  aBlock[4] = sub_1D8D24508;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8D24488;
  aBlock[3] = &block_descriptor_27_2;
  v7 = _Block_copy(aBlock);

  [v2 performBlockAndWait_];
  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v10 = v12;
    if (v12)
    {

      return v10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D90AD108(uint64_t a1, uint64_t a2)
{
  v12 = 2;
  v5 = swift_allocObject();
  v5[2] = &v12;
  v5[3] = a1;
  v5[4] = a2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1D90B1B74;
  *(v6 + 24) = v5;
  aBlock[4] = sub_1D8EDCFE0;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8D24488;
  aBlock[3] = &block_descriptor_37_1;
  v7 = _Block_copy(aBlock);

  [v2 performBlockAndWait_];
  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v10 = v12;
    if (v12 != 2)
    {

      return v10 & 1;
    }
  }

  __break(1u);
  return result;
}

id sub_1D90AD280()
{
  result = [objc_opt_self() defaultCenter];
  qword_1ECABA218 = result;
  return result;
}

id sub_1D90AD2BC()
{
  if (qword_1ECAB1988 != -1)
  {
    swift_once();
  }

  v0 = PlaybackSettingsDefaults.playbackRateGlobalValue.getter();
  result = PlaybackSettingsDefaults.enhanceDialogueEnabledGlobalValue.getter();
  dword_1ECABA220 = LODWORD(v0);
  byte_1ECABA224 = result & 1;
  return result;
}

void sub_1D90AD33C()
{
  if (qword_1ECAB0D90 != -1)
  {
    swift_once();
  }

  v0 = sub_1D917744C();
  __swift_project_value_buffer(v0, qword_1ECAB0D98);
  oslog = sub_1D917741C();
  v1 = sub_1D9178D1C();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v8 = v3;
    *v2 = 136315650;
    v4 = sub_1D9179FEC();
    v6 = sub_1D8CFA924(v4, v5, &v8);

    *(v2 + 4) = v6;
    *(v2 + 12) = 2048;
    if (qword_1ECAB3708 != -1)
    {
      swift_once();
    }

    *(v2 + 14) = *&dword_1ECABA220;
    *(v2 + 22) = 1024;
    *(v2 + 24) = byte_1ECABA224;
    _os_log_impl(&dword_1D8CEC000, oslog, v1, "[%s] Took snapshot of global playback settings. Playback rate: %f, Enhance Dialogue enabled: %{BOOL}d", v2, 0x1Cu);
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
    MEMORY[0x1DA72CB90](v3, -1, -1);
    MEMORY[0x1DA72CB90](v2, -1, -1);
  }
}

void static PlayerPerShowSettingsHelper.takeGlobalSnapshot()()
{
  if (qword_1ECAB1988 != -1)
  {
    swift_once();
  }

  v0 = PlaybackSettingsDefaults.playbackRateGlobalValue.getter();
  v1 = PlaybackSettingsDefaults.enhanceDialogueEnabledGlobalValue.getter();
  if (qword_1ECAB3708 != -1)
  {
    v2 = v1;
    swift_once();
    v1 = v2;
  }

  dword_1ECABA220 = LODWORD(v0);
  byte_1ECABA224 = v1 & 1;

  sub_1D90AD33C();
}

void sub_1D90AD5E4(uint64_t a1, NSObject *a2, void *a3, uint64_t a4, unsigned __int8 a5)
{
  v9 = sub_1D90AE3E4(a2, a3, a4, a5);
  if (v9)
  {
    v10 = v9;
    oslog = a2;
    if (qword_1ECAB0D90 != -1)
    {
      swift_once();
    }

    v11 = sub_1D917744C();
    __swift_project_value_buffer(v11, qword_1ECAB0D98);
    v12 = v10;
    v13 = sub_1D917741C();
    v14 = sub_1D9178D1C();

    v15 = &selRef_setParent_;
    if (os_log_type_enabled(v13, v14))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v90[0] = v18;
      *v16 = 136316163;
      v19 = sub_1D9179FEC();
      v21 = sub_1D8CFA924(v19, v20, v90);

      *(v16 + 4) = v21;
      *(v16 + 12) = 2080;
      *(v16 + 14) = sub_1D8CFA924(0xD000000000000020, 0x80000001D91D56F0, v90);
      *(v16 + 22) = 2160;
      *(v16 + 24) = 1752392040;
      *(v16 + 32) = 2081;
      v22 = [v12 title];
      if (v22)
      {
        v23 = v22;
        v24 = sub_1D917820C();
        v26 = v25;
      }

      else
      {
        v24 = 0x6C746974206F6E28;
        v26 = 0xEA00000000002965;
      }

      v37 = sub_1D8CFA924(v24, v26, v90);

      *(v16 + 34) = v37;
      *(v16 + 42) = 2112;
      v15 = &selRef_setParent_;
      v38 = [v12 advancedPlaybackSettings];
      *(v16 + 44) = v38;
      *v17 = v38;
      _os_log_impl(&dword_1D8CEC000, v13, v14, "[%s] [%s] Attempting to save custom show settings for podcast: %{private,mask.hash}s. Current custom playback settings: %@", v16, 0x34u);
      sub_1D8D08A50(v17, &unk_1ECAB6C70, &unk_1D9188C30);
      MEMORY[0x1DA72CB90](v17, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v18, -1, -1);
      MEMORY[0x1DA72CB90](v16, -1, -1);
    }

    v39 = [v12 v15[172]];
    v40 = qword_1ECAB0FE8 + 24;
    if (v39)
    {
      v41 = v39;
      if (qword_1ECAB0C18 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v11, qword_1ECAB0C20);
      v42 = sub_1D917741C();
      v43 = sub_1D9178CEC();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v90[0] = v45;
        *v44 = 136315394;
        v46 = sub_1D9179FEC();
        v48 = sub_1D8CFA924(v46, v47, v90);
        v40 = &qword_1ECAB0FE8[3];

        *(v44 + 4) = v48;
        *(v44 + 12) = 2080;
        *(v44 + 14) = sub_1D8CFA924(0xD000000000000020, 0x80000001D91D56F0, v90);
        _os_log_impl(&dword_1D8CEC000, v42, v43, "[%s] [%s] advancedPlaybackSettings already existed, modifying existing record", v44, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1DA72CB90](v45, -1, -1);
        MEMORY[0x1DA72CB90](v44, -1, -1);
      }

      v49 = oslog;
      [v41 setHasCustomSettings_];
      if (v40[305] != -1)
      {
        swift_once();
      }

      [v41 setPlaybackRate_];
      [v41 setEnhanceDialogueEnabled_];
      [v41 setSettingsAdjustedCount_];
    }

    else
    {
      if (qword_1ECAB0C18 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v11, qword_1ECAB0C20);
      v50 = sub_1D917741C();
      v51 = sub_1D9178CEC();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v90[0] = v53;
        *v52 = 136315394;
        v54 = sub_1D9179FEC();
        v56 = sub_1D8CFA924(v54, v55, v90);
        v40 = &qword_1ECAB0FE8[3];

        *(v52 + 4) = v56;
        *(v52 + 12) = 2080;
        *(v52 + 14) = sub_1D8CFA924(0xD000000000000020, 0x80000001D91D56F0, v90);
        _os_log_impl(&dword_1D8CEC000, v50, v51, "[%s] [%s] advancedPlaybackSettings did not already exist, inserting new record", v52, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1DA72CB90](v53, -1, -1);
        MEMORY[0x1DA72CB90](v52, -1, -1);
      }

      v49 = oslog;
      v57 = objc_opt_self();
      if (v40[305] != -1)
      {
        swift_once();
      }

      v58 = PlaybackSettingsDefaults.playbackRateGlobalValue.getter();
      v41 = [v57 insertNewAdvancedPlaybackSettingsOnPodcast:v12 hasCustomSettings:1 playbackRate:PlaybackSettingsDefaults.enhanceDialogueEnabledGlobalValue.getter() & 1 enhanceDialogueEnabled:v58];
    }

    [v49 saveInCurrentBlock];
    osloga = v12;
    v59 = sub_1D917741C();
    v60 = sub_1D9178D1C();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = 0x6C746974206F6E28;
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v90[0] = v64;
      *v62 = 136316163;
      v65 = sub_1D9179FEC();
      v67 = sub_1D8CFA924(v65, v66, v90);

      *(v62 + 4) = v67;
      *(v62 + 12) = 2080;
      *(v62 + 14) = sub_1D8CFA924(0xD000000000000020, 0x80000001D91D56F0, v90);
      *(v62 + 22) = 2160;
      *(v62 + 24) = 1752392040;
      *(v62 + 32) = 2081;
      v68 = [osloga title];
      if (v68)
      {
        v69 = v68;
        v61 = sub_1D917820C();
        v71 = v70;
      }

      else
      {
        v71 = 0xEA00000000002965;
      }

      v72 = sub_1D8CFA924(v61, v71, v90);

      *(v62 + 34) = v72;
      *(v62 + 42) = 2112;
      v73 = [osloga advancedPlaybackSettings];
      *(v62 + 44) = v73;
      *v63 = v73;
      _os_log_impl(&dword_1D8CEC000, v59, v60, "[%s] [%s] Saved custom show settings for podcast: %{private,mask.hash}s. Current custom playback settings: %@", v62, 0x34u);
      sub_1D8D08A50(v63, &unk_1ECAB6C70, &unk_1D9188C30);
      MEMORY[0x1DA72CB90](v63, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v64, -1, -1);
      MEMORY[0x1DA72CB90](v62, -1, -1);

      v40 = qword_1ECAB0FE8 + 24;
    }

    else
    {
    }

    static PlayerPerShowSettingsHelper.postPerShowSettingsChangedNotification(podcast:)(osloga);
    v74 = sub_1D917741C();
    v75 = sub_1D9178D1C();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v90[0] = v77;
      *v76 = 136315906;
      v78 = sub_1D9179FEC();
      v80 = sub_1D8CFA924(v78, v79, v90);

      *(v76 + 4) = v80;
      v40 = &qword_1ECAB0FE8[3];
      *(v76 + 12) = 2080;
      *(v76 + 14) = sub_1D8CFA924(0xD000000000000020, 0x80000001D91D56F0, v90);
      *(v76 + 22) = 2048;
      if (qword_1ECAB1988 != -1)
      {
        swift_once();
      }

      *(v76 + 24) = PlaybackSettingsDefaults.playbackRateGlobalValue.getter();
      *(v76 + 32) = 1024;
      *(v76 + 34) = PlaybackSettingsDefaults.enhanceDialogueEnabledGlobalValue.getter() & 1;
      _os_log_impl(&dword_1D8CEC000, v74, v75, "[%s] [%s] Attempting to restore global playback settings from snapshot. Current global playback settings, playback rate: %f, enhanced dialogue enabled: %{BOOL}d", v76, 0x26u);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v77, -1, -1);
      MEMORY[0x1DA72CB90](v76, -1, -1);
    }

    if (v40[305] != -1)
    {
      swift_once();
    }

    if (qword_1ECAB3708 != -1)
    {
      swift_once();
    }

    PlaybackSettingsDefaults.playbackRateGlobalValue.setter(*&dword_1ECABA220);
    PlaybackSettingsDefaults.enhanceDialogueEnabledGlobalValue.setter(byte_1ECABA224);
    v81 = sub_1D917741C();
    v82 = sub_1D9178D1C();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v90[0] = v84;
      *v83 = 136315906;
      v85 = sub_1D9179FEC();
      v87 = sub_1D8CFA924(v85, v86, v90);

      *(v83 + 4) = v87;
      *(v83 + 12) = 2080;
      *(v83 + 14) = sub_1D8CFA924(0xD000000000000020, 0x80000001D91D56F0, v90);
      *(v83 + 22) = 2048;
      *(v83 + 24) = PlaybackSettingsDefaults.playbackRateGlobalValue.getter();
      *(v83 + 32) = 1024;
      *(v83 + 34) = PlaybackSettingsDefaults.enhanceDialogueEnabledGlobalValue.getter() & 1;
      _os_log_impl(&dword_1D8CEC000, v81, v82, "[%s] [%s] Restored global playback settings from snapshot. Current global playback settings, playback rate: %f, enhanced dialogue enabled: %{BOOL}d", v83, 0x26u);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v84, -1, -1);
      MEMORY[0x1DA72CB90](v83, -1, -1);

      goto LABEL_44;
    }
  }

  else
  {
    if (qword_1ECAB0D90 != -1)
    {
      swift_once();
    }

    v27 = sub_1D917744C();
    __swift_project_value_buffer(v27, qword_1ECAB0D98);
    sub_1D8FE1240(a3, a4, a5);
    osloga = sub_1D917741C();
    v28 = sub_1D9178CFC();
    sub_1D8FE1298(a3, a4, a5);
    if (os_log_type_enabled(osloga, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v92 = v30;
      *v29 = 136315650;
      v31 = sub_1D9179FEC();
      v33 = sub_1D8CFA924(v31, v32, &v92);

      *(v29 + 4) = v33;
      *(v29 + 12) = 2080;
      *(v29 + 14) = sub_1D8CFA924(0xD000000000000020, 0x80000001D91D56F0, &v92);
      *(v29 + 22) = 2080;
      v90[0] = a3;
      v90[1] = a4;
      v91 = a5;
      sub_1D8FE1240(a3, a4, a5);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB88D8, &unk_1D91A45D0);
      v34 = sub_1D917826C();
      v36 = sub_1D8CFA924(v34, v35, &v92);

      *(v29 + 24) = v36;
      _os_log_impl(&dword_1D8CEC000, osloga, v28, "[%s] [%s] Failed to find podcast for contentID: %s, did not set custom show settings", v29, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v30, -1, -1);
      MEMORY[0x1DA72CB90](v29, -1, -1);
      goto LABEL_44;
    }
  }

LABEL_44:
}