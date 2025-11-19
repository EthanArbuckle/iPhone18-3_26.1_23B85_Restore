void sub_27224C69C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v49 = a4;
  v7 = v6;
  v50 = a6;
  v12 = sub_272376E5C();
  v47 = *(v12 - 8);
  v13 = *(v47 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v46 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x277D85000];
  v17 = (*((*MEMORY[0x277D85000] & *v6) + 0x120))(v14);
  if (!v17)
  {
    sub_2722032B4();
    swift_allocError();
    *v36 = 0x75716552206C694ELL;
    v36[1] = 0xEF6F666E49747365;
    swift_willThrow();
    return;
  }

  v18 = v17;
  v19 = (*((*v16 & *v6) + 0x150))();
  if (!v19)
  {
    sub_2722032B4();
    swift_allocError();
    *v37 = 0xD000000000000011;
    v37[1] = 0x8000000272388A20;
    swift_willThrow();
LABEL_17:

    return;
  }

  v20 = v19;
  v45 = v12;
  type metadata accessor for VAInstrumentedKeywordResult();
  v21 = (*(*a1 + 104))();
  v22 = VAInstrumentedKeywordResult.__allocating_init(detections:)(v21);
  v23 = *(*v22 + 480);

  v23(a2, a3);
  v24 = v20;
  v25 = *(*v22 + 528);

  v25(v49, a5);
  (*(*v22 + 504))((v50 & 1) == 0);
  v26 = *(**(v7 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_speechAPISpotterConfiguration) + 144);

  v26(&v52, v27);

  v51 = 1;
  sub_272252A6C();
  if ((sub_2723777DC() & 1) != 0 || (v28 = *(v7 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_audioDuringSpeech)) == 0)
  {
LABEL_14:
    v40 = v48;
    v41 = (*(*v18 + 432))(v22);
    v42 = v45;
    if (!v40)
    {
      v43 = v46;
      (*(*v18 + 144))(v41);
      (*(*v24 + 80))(v22, v43);
      (*(v47 + 8))(v43, v42);
    }

    goto LABEL_17;
  }

  v29 = v28;
  v30 = [v29 int16ChannelData];
  if (!v30)
  {
    sub_2722032B4();
    swift_allocError();
    *v38 = 0xD00000000000001CLL;
    v38[1] = 0x800000027238AAB0;
    swift_willThrow();

    return;
  }

  v31 = v30;
  v32 = [v29 frameLength];
  if (v32)
  {
    v33 = v32;
    v34 = v32;
    v35 = sub_272377B5C();
    *(v35 + 16) = v34;
    bzero((v35 + 32), 2 * v33);
  }

  else
  {
    v35 = MEMORY[0x277D84F90];
    v34 = *(MEMORY[0x277D84F90] + 16);
  }

  if (v34 + 0x4000000000000000 >= 0)
  {
    memmove((v35 + 32), *v31, 2 * [v29 frameLength]);
    v39 = *(*v22 + 136);

    v39(v35);

    goto LABEL_14;
  }

  __break(1u);
}

void sub_27224CC84(uint64_t a1)
{
  v3 = v2;
  v5 = sub_272376E5C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277D85000];
  v12 = (*((*MEMORY[0x277D85000] & *v1) + 0x120))(v8);
  if (!v12)
  {
    sub_2722032B4();
    swift_allocError();
    *v27 = 0x75716552206C694ELL;
    v27[1] = 0xEF6F666E49747365;
    swift_willThrow();
    return;
  }

  v13 = v12;
  v14 = (*((*v11 & *v1) + 0x150))();
  if (!v14)
  {
    sub_2722032B4();
    swift_allocError();
    *v28 = 0xD000000000000011;
    v28[1] = 0x8000000272388A20;
    swift_willThrow();
LABEL_17:

    return;
  }

  v15 = v14;
  v37 = v6;
  type metadata accessor for VAInstrumentedKeywordResult();
  v16 = (*(*a1 + 104))();
  v17 = VAInstrumentedKeywordResult.__allocating_init(detections:)(v16);
  v18 = *(**(v1 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_speechAPISpotterConfiguration) + 144);

  v18(&v39, v19);

  v38 = 1;
  sub_272252A6C();
  if ((sub_2723777DC() & 1) != 0 || (v20 = *(v1 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_audioDuringSpeech)) == 0)
  {
LABEL_14:
    v32 = (*(*v13 + 432))(v17);
    v33 = v37;
    if (!v3)
    {
      (*(*v13 + 144))(v32);
      (*(*v15 + 80))(v17, v10);
      (*(v33 + 8))(v10, v5);
    }

    goto LABEL_17;
  }

  v21 = v20;
  v22 = [v21 int16ChannelData];
  if (!v22)
  {
    sub_2722032B4();
    swift_allocError();
    *v29 = 0xD00000000000001CLL;
    v29[1] = 0x800000027238AAB0;
    swift_willThrow();

    return;
  }

  v35 = v22;
  v36 = v21;
  v23 = [v21 frameLength];
  if (v23)
  {
    v24 = v23;
    v25 = v23;
    v26 = sub_272377B5C();
    *(v26 + 16) = v25;
    bzero((v26 + 32), 2 * v24);
  }

  else
  {
    v26 = MEMORY[0x277D84F90];
    v25 = *(MEMORY[0x277D84F90] + 16);
  }

  if (v25 + 0x4000000000000000 >= 0)
  {
    v30 = v36;
    memmove((v26 + 32), *v35, 2 * [v36 frameLength]);
    v31 = *(*v17 + 136);

    v31(v26);

    goto LABEL_14;
  }

  __break(1u);
}

void sub_27224D17C(void *a1, int64_t a2)
{
  v56 = a2;
  v57 = a1;
  v3 = sub_2723773DC();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2721F065C(&qword_280881F80, &qword_27237E338);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v55 - v9;
  v11 = sub_2721F065C(&qword_280881F88, qword_27237E340);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v55 - v14;
  v16 = sub_27237728C();
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v24 = v55 - v23;
  v25 = *(v2 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_speechDetector);
  if (v25)
  {
    if (*(v2 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_feedEmptyBufferTillFinalResultTask))
    {
      if ((*(v2 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_pausedDetector) & 1) == 0)
      {
        *(v2 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_pausedDetector) = 1;
        v40 = v21;
        v41 = v22;

        v42 = sub_2722C389C();
        (*(v41 + 16))(v24, v42, v40);
        v43 = sub_27237725C();
        v44 = sub_272377E7C();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          *v45 = 0;
          _os_log_impl(&dword_2721E4000, v43, v44, "Ignoring audio while feeding 0 buffer", v45, 2u);
          MEMORY[0x2743C69C0](v45, -1, -1);
        }

        (*(v41 + 8))(v24, v40);
      }
    }

    else
    {
      if (*(v2 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_pausedDetector))
      {
        *(v2 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_pausedDetector) = 0;
        v34 = v21;
        v35 = v22;

        v36 = sub_2722C389C();
        (*(v35 + 16))(v20, v36, v34);
        v37 = sub_27237725C();
        v38 = sub_272377E7C();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          *v39 = 0;
          _os_log_impl(&dword_2721E4000, v37, v38, "Resuming audio to detector afer 0 buffer", v39, 2u);
          MEMORY[0x2743C69C0](v39, -1, -1);
        }

        (*(v35 + 8))(v20, v34);
      }

      else
      {
        v54 = *(v2 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_speechDetector);
      }

      (*(*v25 + 680))(v57, v56);
    }
  }

  else
  {
    v55[0] = v12;
    v55[1] = v6;
    v26 = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_audioDuringSpeech;
    v27 = *(v2 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_audioDuringSpeech);
    if (v27)
    {
      v28 = *((*MEMORY[0x277D85000] & *v2) + 0x518);
      v29 = v27;
      v30 = v59;
      v31 = v28();

      if (v30)
      {
        return;
      }

      v32 = v11;
      v33 = *(v2 + v26);
      *(v2 + v26) = v31;
    }

    else
    {
      v46 = v57;
      *(v2 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_audioDuringSpeech) = v57;
      v47 = v46;
      v32 = v11;
    }

    v48 = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_inputStreamBuilder;
    swift_beginAccess();
    sub_2721F07F4(v2 + v48, v10, &qword_280881F80, &qword_27237E338);
    v49 = sub_2721F065C(&qword_280881F58, &unk_27237E2F0);
    v50 = *(v49 - 8);
    v51 = (*(v50 + 48))(v10, 1, v49);
    v52 = v56;
    if (v51 != 1)
    {
      if ((v56 & 0x8000000000000000) == 0)
      {
        v53 = v57;
        CMTimeMake(&v58, v52, 1);
        sub_2723773BC();
        sub_272377C6C();
        (*(v55[0] + 8))(v15, v32);
        (*(v50 + 8))(v10, v49);
        return;
      }

      __break(1u);
    }

    __break(1u);
  }
}

uint64_t sub_27224D764()
{
  v1[5] = v0;
  v2 = *(*(sub_2721F065C(&qword_280881F80, &qword_27237E338) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v3 = sub_27237728C();
  v1[7] = v3;
  v4 = *(v3 - 8);
  v1[8] = v4;
  v5 = *(v4 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27224D874, 0, 0);
}

uint64_t sub_27224D874()
{
  v1 = v0[11];
  v2 = v0[7];
  v3 = v0[8];
  v4 = sub_2722C389C();
  v0[12] = v4;
  v5 = *(v3 + 16);
  v0[13] = v5;
  v0[14] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_27237725C();
  v7 = sub_272377E7C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2721E4000, v6, v7, "Stopping speech API spotter", v8, 2u);
    MEMORY[0x2743C69C0](v8, -1, -1);
  }

  v9 = v0[11];
  v10 = v0[7];
  v11 = v0[8];
  v13 = v0[5];
  v12 = v0[6];

  v14 = *(v11 + 8);
  v0[15] = v14;
  v14(v9, v10);
  *(v13 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_stopped) = 1;
  v15 = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_inputStreamBuilder;
  swift_beginAccess();
  sub_2721F07F4(v13 + v15, v12, &qword_280881F80, &qword_27237E338);
  v16 = sub_2721F065C(&qword_280881F58, &unk_27237E2F0);
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v12, 1, v16) == 1)
  {
    __break(1u);
    return MEMORY[0x28212BBF0]();
  }

  v19 = v0[5];
  v18 = v0[6];
  sub_272377C7C();
  (*(v17 + 8))(v18, v16);
  v20 = *(v19 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_speechAnalyzer);
  v0[16] = v20;
  if (v20)
  {
    v21 = *(MEMORY[0x277CDCA48] + 4);

    v22 = swift_task_alloc();
    v0[17] = v22;
    *v22 = v0;
    v22[1] = sub_27224DEBC;

    return MEMORY[0x28212BBF0]();
  }

  v23 = v0[5];
  v24 = *(v23 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_speechDetector);
  if (v24)
  {
    v25 = *(*v24 + 688);

    v25(v26);

    v23 = v0[5];
  }

  v27 = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_vadTask;
  if (*(v23 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_vadTask))
  {
    v28 = *(v23 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_vadTask);

    sub_2721F065C(&qword_280881A38, &unk_27237CA20);
    sub_272377CBC();

    v29 = *(v23 + v27);
    v30 = v0[5];
  }

  else
  {
    v30 = v23;
  }

  *(v23 + v27) = 0;

  (*((*MEMORY[0x277D85000] & *v30) + 0x220))(0);
  v31 = v0[5];
  if (*(v31 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_speechAPITask))
  {
    v32 = v0[14];
    (v0[13])(v0[10], v0[12], v0[7]);

    v33 = sub_27237725C();
    v34 = sub_272377E7C();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_2721E4000, v33, v34, "Stopping speech API Task", v35, 2u);
      MEMORY[0x2743C69C0](v35, -1, -1);
    }

    v36 = v0[15];
    v37 = v0[10];
    v38 = v0[7];
    v39 = v0[8];

    v36(v37, v38);
    sub_2721F065C(&qword_280881A38, &unk_27237CA20);
    sub_272377CBC();

    v31 = v0[5];
  }

  v40 = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_recognizerTask;
  if (*(v31 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_recognizerTask))
  {
    v41 = v0[14];
    (v0[13])(v0[9], v0[12], v0[7]);

    v42 = sub_27237725C();
    v43 = sub_272377E7C();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_2721E4000, v42, v43, "Stopping recognizer Task", v44, 2u);
      MEMORY[0x2743C69C0](v44, -1, -1);
    }

    v45 = v0[15];
    v47 = v0[8];
    v46 = v0[9];
    v48 = v0[7];

    v45(v46, v48);
    sub_2721F065C(&qword_280881A38, &unk_27237CA20);
    sub_272377CBC();

    v49 = *(v31 + v40);
  }

  v50 = v0[10];
  v51 = v0[11];
  v52 = v0[9];
  v53 = v0[6];
  *(v31 + v40) = 0;

  v54 = v0[1];

  return v54();
}

uint64_t sub_27224DEBC()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v7 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = sub_27224E3E0;
  }

  else
  {
    v5 = *(v2 + 128);

    v4 = sub_27224DFD8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_27224DFD8()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 40);
  v3 = *(v2 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_speechDetector);
  if (v3)
  {
    v4 = *(*v3 + 688);

    v4(v5);

    if (v1)
    {
LABEL_8:
      v11 = *(v0 + 80);
      v10 = *(v0 + 88);
      v12 = *(v0 + 72);
      v13 = *(v0 + 48);

      v14 = *(v0 + 8);
      goto LABEL_18;
    }

    v2 = *(v0 + 40);
  }

  v6 = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_vadTask;
  if (*(v2 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_vadTask))
  {
    v7 = *(v2 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_vadTask);

    sub_2721F065C(&qword_280881A38, &unk_27237CA20);
    sub_272377CBC();

    v8 = *(v2 + v6);
    v9 = *(v0 + 40);
  }

  else
  {
    v9 = v2;
  }

  *(v2 + v6) = 0;

  (*((*MEMORY[0x277D85000] & *v9) + 0x220))(0);
  if (v1)
  {
    goto LABEL_8;
  }

  v15 = *(v0 + 40);
  if (*(v15 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_speechAPITask))
  {
    v16 = *(v0 + 112);
    (*(v0 + 104))(*(v0 + 80), *(v0 + 96), *(v0 + 56));

    v17 = sub_27237725C();
    v18 = sub_272377E7C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_2721E4000, v17, v18, "Stopping speech API Task", v19, 2u);
      MEMORY[0x2743C69C0](v19, -1, -1);
    }

    v20 = *(v0 + 120);
    v21 = *(v0 + 80);
    v22 = *(v0 + 56);
    v23 = *(v0 + 64);

    v20(v21, v22);
    sub_2721F065C(&qword_280881A38, &unk_27237CA20);
    sub_272377CBC();

    v15 = *(v0 + 40);
  }

  v24 = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_recognizerTask;
  if (*(v15 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_recognizerTask))
  {
    v25 = *(v0 + 112);
    (*(v0 + 104))(*(v0 + 72), *(v0 + 96), *(v0 + 56));

    v26 = sub_27237725C();
    v27 = sub_272377E7C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_2721E4000, v26, v27, "Stopping recognizer Task", v28, 2u);
      MEMORY[0x2743C69C0](v28, -1, -1);
    }

    v29 = *(v0 + 120);
    v31 = *(v0 + 64);
    v30 = *(v0 + 72);
    v32 = *(v0 + 56);

    v29(v30, v32);
    sub_2721F065C(&qword_280881A38, &unk_27237CA20);
    sub_272377CBC();

    v33 = *(v15 + v24);
  }

  v34 = *(v0 + 80);
  v35 = *(v0 + 88);
  v36 = *(v0 + 72);
  v37 = *(v0 + 48);
  *(v15 + v24) = 0;

  v14 = *(v0 + 8);
LABEL_18:

  return v14();
}

uint64_t sub_27224E3E0()
{
  v1 = v0[16];

  v2 = v0[18];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[9];
  v6 = v0[6];

  v7 = v0[1];

  return v7();
}

uint64_t sub_27224E474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[346] = a5;
  v5[345] = a4;
  v6 = *(*(sub_2721F065C(&qword_2808819D8, &qword_27237CB50) - 8) + 64) + 15;
  v5[347] = swift_task_alloc();
  v5[348] = swift_task_alloc();
  v5[349] = swift_task_alloc();
  v7 = *(*(sub_2723773DC() - 8) + 64) + 15;
  v5[350] = swift_task_alloc();
  v8 = *(*(sub_2721F065C(&qword_280881F80, &qword_27237E338) - 8) + 64) + 15;
  v5[351] = swift_task_alloc();
  v5[352] = swift_task_alloc();
  v9 = sub_2721F065C(&qword_280881F88, qword_27237E340);
  v5[353] = v9;
  v10 = *(v9 - 8);
  v5[354] = v10;
  v11 = *(v10 + 64) + 15;
  v5[355] = swift_task_alloc();
  v12 = sub_27237728C();
  v5[356] = v12;
  v13 = *(v12 - 8);
  v5[357] = v13;
  v14 = *(v13 + 64) + 15;
  v5[358] = swift_task_alloc();
  v5[359] = swift_task_alloc();
  v5[360] = swift_task_alloc();
  v5[361] = swift_task_alloc();
  v5[362] = swift_task_alloc();
  v5[363] = swift_task_alloc();
  v5[364] = swift_task_alloc();
  v5[365] = swift_task_alloc();
  v15 = sub_2721F065C(&qword_280881A80, &unk_27237D610);
  v5[366] = v15;
  v16 = *(v15 - 8);
  v5[367] = v16;
  v17 = *(v16 + 64) + 15;
  v5[368] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27224E71C, 0, 0);
}

uint64_t sub_27224E71C()
{
  *(v0 + 2952) = (*((*MEMORY[0x277D85000] & **(v0 + 2760)) + 0x228))(16000);
  v1 = *(v0 + 2944);
  v2 = *(v0 + 2768);
  v3 = *(v0 + 2760);
  sub_2721F065C(&qword_280881900, &qword_27237C4F0);
  sub_272377C8C();
  *(v0 + 2960) = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_audioDuringSpeech;
  *(v0 + 2968) = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_timingInfo;
  *(v0 + 2976) = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_speechEnded;
  *(v0 + 2984) = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_gotFinalResult;
  *(v0 + 2992) = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_gotPartialResult;
  *(v0 + 3000) = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_asrDelegate;
  *(v0 + 3008) = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_inputStreamBuilder;
  *(v0 + 3016) = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_feedEmptyBufferTillFinalResultTask;
  *(v0 + 3024) = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_speechAnalyzer;
  swift_beginAccess();
  *(v0 + 3032) = 0;
  v4 = *(MEMORY[0x277D85798] + 4);
  v5 = swift_task_alloc();
  *(v0 + 3040) = v5;
  *v5 = v0;
  v5[1] = sub_27224E9F0;
  v6 = *(v0 + 2944);
  v7 = *(v0 + 2928);

  return MEMORY[0x2822003E8](v0 + 400, 0, 0, v7);
}

uint64_t sub_27224E9F0()
{
  v1 = *(*v0 + 3040);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_27224EAEC, 0, 0);
}

uint64_t sub_27224EAEC()
{
  v309 = v0;
  v1 = *(v0 + 464);
  v2 = *(v0 + 480);
  *(v0 + 336) = v1;
  *(v0 + 352) = v2;
  v3 = *(v0 + 496);
  v4 = *(v0 + 512);
  *(v0 + 368) = v3;
  *(v0 + 384) = v4;
  v5 = *(v0 + 400);
  v6 = *(v0 + 416);
  *(v0 + 272) = v5;
  *(v0 + 288) = v6;
  v7 = *(v0 + 432);
  v8 = *(v0 + 448);
  *(v0 + 304) = v7;
  *(v0 + 320) = v8;
  *(v0 + 176) = v7;
  *(v0 + 192) = v8;
  *(v0 + 144) = v5;
  *(v0 + 160) = v6;
  *(v0 + 240) = v3;
  *(v0 + 256) = v4;
  *(v0 + 208) = v1;
  *(v0 + 224) = v2;
  v9 = sub_272219874((v0 + 144));
  if (v9 == 1)
  {
    v13 = *(v0 + 2920);
    v14 = *(v0 + 2856);
    v15 = *(v0 + 2848);
    (*(*(v0 + 2936) + 8))(*(v0 + 2944), *(v0 + 2928));
    v16 = sub_2722C389C();
    (*(v14 + 16))(v13, v16, v15);
    v17 = sub_27237725C();
    v18 = sub_272377E7C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_2721E4000, v17, v18, "done reading vad output", v19, 2u);
      MEMORY[0x2743C69C0](v19, -1, -1);
    }

    v20 = *(v0 + 2920);
    v21 = *(v0 + 2856);
    v22 = *(v0 + 2848);
    v23 = *(v0 + 2760);

    (*(v21 + 8))(v20, v22);
    v24 = *(**(v23 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_speechAPISpotterConfiguration) + 216);

    LOBYTE(v24) = v24(v25);

    if (v24)
    {
      v26 = *(v0 + 2776);
      v27 = *(v0 + 2760);
      v28 = sub_272377C3C();
      (*(*(v28 - 8) + 56))(v26, 1, 1, v28);
      v29 = swift_allocObject();
      v29[2] = 0;
      v29[3] = 0;
      v29[4] = v27;
      v30 = v27;
      sub_27224C3F0(0, 0, v26, &unk_27237E4B8, v29);
    }

    v31 = *(v0 + 2944);
    v32 = *(v0 + 2920);
    v33 = *(v0 + 2912);
    v34 = *(v0 + 2904);
    v35 = *(v0 + 2896);
    v36 = *(v0 + 2888);
    v37 = *(v0 + 2880);
    v38 = *(v0 + 2872);
    v39 = *(v0 + 2864);
    v285 = *(v0 + 2840);
    v287 = *(v0 + 2816);
    v290 = *(v0 + 2808);
    v293 = *(v0 + 2800);
    v296 = *(v0 + 2792);
    v299 = *(v0 + 2784);
    v303 = *(v0 + 2776);

    v40 = *(v0 + 8);
    goto LABEL_31;
  }

  if (*(v0 + 160) == 1)
  {
    v41 = *(v0 + 2984);
    v42 = *(v0 + 2960);
    v297 = *(v0 + 2992);
    v300 = *(v0 + 2912);
    v43 = *(v0 + 2856);
    v304 = *(v0 + 2848);
    v44 = *(v0 + 2760);
    v45 = *(**(v44 + *(v0 + 2976)) + 168);

    v45(0);

    v46 = *(**(v44 + v41) + 168);

    v46(0);

    v47 = *(**(v44 + v297) + 168);

    v47(0);

    v48 = *(v44 + v42);
    *(v44 + v42) = *(v0 + 144);
    v49 = *(v0 + 352);
    *(v0 + 2000) = *(v0 + 336);
    *(v0 + 2016) = v49;
    v50 = *(v0 + 384);
    *(v0 + 2032) = *(v0 + 368);
    *(v0 + 2048) = v50;
    v51 = *(v0 + 288);
    *(v0 + 1936) = *(v0 + 272);
    *(v0 + 1952) = v51;
    v52 = *(v0 + 320);
    *(v0 + 1968) = *(v0 + 304);
    *(v0 + 1984) = v52;
    sub_272218D40(v0 + 1936, v0 + 2064);

    v53 = sub_2722C389C();
    (*(v43 + 16))(v300, v53, v304);
    v54 = *(v0 + 352);
    *(v0 + 1872) = *(v0 + 336);
    *(v0 + 1888) = v54;
    v55 = *(v0 + 384);
    *(v0 + 1904) = *(v0 + 368);
    *(v0 + 1920) = v55;
    v56 = *(v0 + 288);
    *(v0 + 1808) = *(v0 + 272);
    *(v0 + 1824) = v56;
    v57 = *(v0 + 320);
    *(v0 + 1840) = *(v0 + 304);
    *(v0 + 1856) = v57;
    sub_272218D40(v0 + 1808, v0 + 2192);
    v58 = sub_27237725C();
    v59 = sub_272377E7C();
    sub_2721F40F0(v0 + 272, &qword_280881A88, &qword_27237CA70);
    v60 = os_log_type_enabled(v58, v59);
    v61 = *(v0 + 2912);
    v62 = *(v0 + 2856);
    v63 = *(v0 + 2848);
    if (v60)
    {
      v305 = *(v0 + 2912);
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v308[0] = v65;
      *v64 = 136315138;
      v66 = *(v0 + 224);
      *(v0 + 2640) = *(v0 + 208);
      *(v0 + 2656) = v66;
      v67 = *(v0 + 256);
      *(v0 + 2672) = *(v0 + 240);
      *(v0 + 2688) = v67;
      v68 = *(v0 + 160);
      *(v0 + 2576) = *(v0 + 144);
      *(v0 + 2592) = v68;
      v69 = *(v0 + 192);
      *(v0 + 2608) = *(v0 + 176);
      *(v0 + 2624) = v69;
      v70 = *(v0 + 352);
      *(v0 + 2512) = *(v0 + 336);
      *(v0 + 2528) = v70;
      v71 = *(v0 + 384);
      *(v0 + 2544) = *(v0 + 368);
      *(v0 + 2560) = v71;
      v72 = *(v0 + 288);
      *(v0 + 2448) = *(v0 + 272);
      *(v0 + 2464) = v72;
      v73 = *(v0 + 320);
      *(v0 + 2480) = *(v0 + 304);
      *(v0 + 2496) = v73;
      sub_272218D40(v0 + 2448, v0 + 16);
      sub_272218FD0();
      v74 = sub_27237862C();
      v301 = v63;
      v76 = v75;
      v77 = *(v0 + 2656);
      *(v0 + 2384) = *(v0 + 2640);
      *(v0 + 2400) = v77;
      v78 = *(v0 + 2688);
      *(v0 + 2416) = *(v0 + 2672);
      *(v0 + 2432) = v78;
      v79 = *(v0 + 2592);
      *(v0 + 2320) = *(v0 + 2576);
      *(v0 + 2336) = v79;
      v80 = *(v0 + 2624);
      *(v0 + 2352) = *(v0 + 2608);
      *(v0 + 2368) = v80;
      sub_272218F7C(v0 + 2320);
      v81 = sub_2721FFD04(v74, v76, v308);

      *(v64 + 4) = v81;
      _os_log_impl(&dword_2721E4000, v58, v59, "Got start-of-speech: %s", v64, 0xCu);
      sub_2722039C8(v65);
      MEMORY[0x2743C69C0](v65, -1, -1);
      MEMORY[0x2743C69C0](v64, -1, -1);

      (*(v62 + 8))(v305, v301);
    }

    else
    {

      (*(v62 + 8))(v61, v63);
    }

    v89 = *(v0 + 3000);
    v90 = *(v0 + 2968);
    v91 = *(v0 + 2760);
    type metadata accessor for VATimingInfo();
    v92 = *(v91 + v89);
    v93 = swift_unknownObjectRetain();
    v94 = sub_272346CE4(v93);
    v95 = *(v91 + v90);
    *(v91 + v90) = v94;
    v96 = v94;

    if (*(v0 + 176))
    {
      goto LABEL_87;
    }

    (*((*MEMORY[0x277D85000] & *v96) + 0x208))(*(v0 + 168));

    goto LABEL_16;
  }

  if (*(v0 + 162) == 1)
  {
    v82 = *(v0 + 2760);
    v83 = *(v82 + *(v0 + 2960));
    if (!v83)
    {
LABEL_88:
      __break(1u);
      goto LABEL_89;
    }

    v84 = *(v0 + 3032);
    v85 = *(v0 + 144);
    v86 = *((*MEMORY[0x277D85000] & *v82) + 0x518);
    v87 = v0 + 272;
    v88 = v0 + 1680;
    goto LABEL_29;
  }

  if (*(v0 + 161) == 1)
  {
    v117 = *(v0 + 2760);
    v83 = *(v117 + *(v0 + 2960));
    if (!v83)
    {
LABEL_89:
      __break(1u);
      goto LABEL_90;
    }

    v84 = *(v0 + 3032);
    v118 = *(v0 + 144);
    v86 = *((*MEMORY[0x277D85000] & *v117) + 0x518);
    v87 = v0 + 272;
    v88 = v0 + 1552;
LABEL_29:
    sub_2721F07F4(v87, v88, &qword_280881A88, &qword_27237CA70);
    v119 = v83;
    v120 = v86();
    if (v84)
    {
      goto LABEL_30;
    }

    v133 = v120;
    v134 = *(v0 + 2960);
    v135 = *(v0 + 2760);
    sub_2721F40F0(v0 + 272, &qword_280881A88, &qword_27237CA70);

    v136 = *(v135 + v134);
    *(v135 + v134) = v133;

    v97 = 0;
    goto LABEL_17;
  }

  if (*(v0 + 265) != 1)
  {
    v202 = *(v0 + 2888);
    v203 = *(v0 + 2856);
    v204 = *(v0 + 2848);
    v205 = sub_2722C389C();
    (*(v203 + 16))(v202, v205, v204);
    v206 = sub_27237725C();
    v207 = sub_272377E8C();
    v208 = os_log_type_enabled(v206, v207);
    v209 = *(v0 + 2888);
    v210 = *(v0 + 2856);
    v211 = *(v0 + 2848);
    if (v208)
    {
      v212 = swift_slowAlloc();
      *v212 = 0;
      _os_log_impl(&dword_2721E4000, v206, v207, "Unexpected audio !!!!!!", v212, 2u);
      MEMORY[0x2743C69C0](v212, -1, -1);
    }

    (*(v210 + 8))(v209, v211);
LABEL_16:
    v97 = *(v0 + 3032);
    goto LABEL_17;
  }

  v137 = *(v0 + 2760);
  v138 = *(v137 + *(v0 + 2960));
  if (!v138)
  {
LABEL_90:
    __break(1u);
    return MEMORY[0x2822003E8](v9, v10, v11, v12);
  }

  v139 = *(v0 + 3032);
  v140 = *(v0 + 144);
  v141 = MEMORY[0x277D85000];
  v142 = *((*MEMORY[0x277D85000] & *v137) + 0x518);
  sub_2721F07F4(v0 + 272, v0 + 656, &qword_280881A88, &qword_27237CA70);
  v119 = v138;
  v143 = v142();
  if (v139)
  {
LABEL_30:
    v121 = *(v0 + 2952);
    (*(*(v0 + 2936) + 8))(*(v0 + 2944), *(v0 + 2928));
    sub_2721F40F0(v0 + 272, &qword_280881A88, &qword_27237CA70);
    sub_2721F40F0(v0 + 272, &qword_280881A88, &qword_27237CA70);

    v122 = *(v0 + 2944);
    v123 = *(v0 + 2920);
    v124 = *(v0 + 2912);
    v125 = *(v0 + 2904);
    v126 = *(v0 + 2896);
    v127 = *(v0 + 2888);
    v128 = *(v0 + 2880);
    v129 = *(v0 + 2872);
    v130 = *(v0 + 2864);
    v131 = *(v0 + 2840);
    v286 = *(v0 + 2816);
    v288 = *(v0 + 2808);
    v291 = *(v0 + 2800);
    v294 = *(v0 + 2792);
    v298 = *(v0 + 2784);
    v302 = *(v0 + 2776);

    v40 = *(v0 + 8);
LABEL_31:

    return v40();
  }

  v144 = v143;
  v145 = *(v0 + 2960);
  v146 = *(v0 + 2760);
  sub_2721F40F0(v0 + 272, &qword_280881A88, &qword_27237CA70);

  v147 = *(v146 + v145);
  *(v146 + v145) = v144;

  if (*(v0 + 266) == 1)
  {
    v148 = *(v0 + 2904);
    v149 = *(v0 + 2856);
    v150 = *(v0 + 2848);
    v151 = sub_2722C389C();
    v306 = *(v149 + 16);
    v306(v148, v151, v150);
    v152 = *(v0 + 352);
    *(v0 + 848) = *(v0 + 336);
    *(v0 + 864) = v152;
    v153 = *(v0 + 384);
    *(v0 + 880) = *(v0 + 368);
    *(v0 + 896) = v153;
    v154 = *(v0 + 288);
    *(v0 + 784) = *(v0 + 272);
    *(v0 + 800) = v154;
    v155 = *(v0 + 320);
    *(v0 + 816) = *(v0 + 304);
    *(v0 + 832) = v155;
    sub_272218D40(v0 + 784, v0 + 912);
    v156 = sub_27237725C();
    v157 = sub_272377E7C();
    sub_2721F40F0(v0 + 272, &qword_280881A88, &qword_27237CA70);
    v158 = os_log_type_enabled(v156, v157);
    v159 = *(v0 + 2904);
    v160 = *(v0 + 2856);
    v161 = *(v0 + 2848);
    if (v158)
    {
      v295 = *(v0 + 2848);
      v292 = *(v0 + 2904);
      v162 = swift_slowAlloc();
      v289 = swift_slowAlloc();
      v308[0] = v289;
      *v162 = 136315138;
      v163 = *(v0 + 224);
      *(v0 + 1360) = *(v0 + 208);
      *(v0 + 1376) = v163;
      v164 = *(v0 + 256);
      *(v0 + 1392) = *(v0 + 240);
      *(v0 + 1408) = v164;
      v165 = *(v0 + 160);
      *(v0 + 1296) = *(v0 + 144);
      *(v0 + 1312) = v165;
      v166 = *(v0 + 192);
      *(v0 + 1328) = *(v0 + 176);
      *(v0 + 1344) = v166;
      v167 = *(v0 + 352);
      *(v0 + 1232) = *(v0 + 336);
      *(v0 + 1248) = v167;
      v168 = *(v0 + 384);
      *(v0 + 1264) = *(v0 + 368);
      *(v0 + 1280) = v168;
      v169 = *(v0 + 288);
      *(v0 + 1168) = *(v0 + 272);
      *(v0 + 1184) = v169;
      v170 = *(v0 + 320);
      *(v0 + 1200) = *(v0 + 304);
      *(v0 + 1216) = v170;
      sub_272218D40(v0 + 1168, v0 + 1424);
      sub_272218FD0();
      v171 = sub_27237862C();
      v173 = v172;
      v174 = *(v0 + 1376);
      *(v0 + 1104) = *(v0 + 1360);
      *(v0 + 1120) = v174;
      v175 = *(v0 + 1408);
      *(v0 + 1136) = *(v0 + 1392);
      *(v0 + 1152) = v175;
      v176 = *(v0 + 1312);
      *(v0 + 1040) = *(v0 + 1296);
      *(v0 + 1056) = v176;
      v177 = *(v0 + 1344);
      *(v0 + 1072) = *(v0 + 1328);
      *(v0 + 1088) = v177;
      sub_272218F7C(v0 + 1040);
      v178 = sub_2721FFD04(v171, v173, v308);

      *(v162 + 4) = v178;
      _os_log_impl(&dword_2721E4000, v156, v157, "Got end-of-speech: %s", v162, 0xCu);
      sub_2722039C8(v289);
      MEMORY[0x2743C69C0](v289, -1, -1);
      MEMORY[0x2743C69C0](v162, -1, -1);

      v179 = *(v160 + 8);
      v179(v292, v295);
    }

    else
    {

      v179 = *(v160 + 8);
      v179(v159, v161);
    }

    v270 = *(v0 + 2760);
    v271 = *(v270 + *(v0 + 2968));
    if (v271)
    {
      v272 = *(v0 + 152);
      v273 = *((*v141 & *v271) + 0x210);
      v274 = v271;
      v273(v272);

      v270 = *(v0 + 2760);
    }

    v275 = *(v0 + 2984);
    v276 = *(**(v270 + *(v0 + 2976)) + 168);

    v276(1);

    v277 = *(**(v270 + v275) + 160);

    LOBYTE(v277) = v277(v278);

    if (v277)
    {
      v306(*(v0 + 2896), v151, *(v0 + 2848));
      v279 = sub_27237725C();
      v280 = sub_272377E7C();
      if (os_log_type_enabled(v279, v280))
      {
        v281 = swift_slowAlloc();
        *v281 = 0;
        _os_log_impl(&dword_2721E4000, v279, v280, "Got speech end after final, nothing to do", v281, 2u);
        MEMORY[0x2743C69C0](v281, -1, -1);
      }

      v282 = *(v0 + 2896);
      v283 = *(v0 + 2856);
      v284 = *(v0 + 2848);

      v179(v282, v284);
    }
  }

  v97 = 0;
LABEL_17:
  *(v0 + 3048) = v97;
  v98 = *(v0 + 2816);
  sub_2721F07F4(*(v0 + 2760) + *(v0 + 3008), v98, &qword_280881F80, &qword_27237E338);
  v99 = sub_2721F065C(&qword_280881F58, &unk_27237E2F0);
  *(v0 + 3056) = v99;
  v100 = *(v99 - 8);
  v101 = *(v100 + 48);
  *(v0 + 3064) = v101;
  *(v0 + 3072) = (v100 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v9 = v101(v98, 1, v99);
  if (v9 == 1)
  {
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v102 = *(v0 + 144);
  sub_2721F07F4(v0 + 272, v0 + 528, &qword_280881A88, &qword_27237CA70);
  v9 = mach_absolute_time();
  if (v9 < 0)
  {
    __break(1u);
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v103 = *(v0 + 2840);
  v104 = *(v0 + 2832);
  v105 = *(v0 + 2824);
  v106 = *(v0 + 2816);
  v107 = *(v0 + 2800);
  CMTimeMake((v0 + 3184), v9, 1);
  v108 = *(v0 + 3184);
  v109 = *(v0 + 3192);
  v110 = *(v0 + 3200);
  sub_2723773BC();
  sub_272377C6C();
  (*(v104 + 8))(v103, v105);
  v111 = *(v100 + 8);
  *(v0 + 3080) = v111;
  *(v0 + 3088) = (v100 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v111(v106, v99);
  if (*(v0 + 265) != 1 || (*(v0 + 266) & 1) == 0 || (v112 = *(**(*(v0 + 2760) + *(v0 + 2984)) + 160), v113 = , LOBYTE(v112) = v112(v113), , (v112 & 1) != 0))
  {
LABEL_22:
    sub_2721F40F0(v0 + 272, &qword_280881A88, &qword_27237CA70);
    goto LABEL_23;
  }

  v180 = *(v0 + 2880);
  v181 = *(v0 + 2856);
  v182 = *(v0 + 2848);
  v183 = *(v0 + 2760);
  v184 = sub_2722C389C();
  *(v0 + 3096) = v184;
  v185 = *(v181 + 16);
  *(v0 + 3104) = v185;
  *(v0 + 3112) = (v181 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v185(v180, v184, v182);
  v186 = v183;
  v187 = sub_27237725C();
  v188 = sub_272377E7C();

  if (os_log_type_enabled(v187, v188))
  {
    v189 = *(v0 + 2992);
    v307 = *(v0 + 2880);
    v190 = *(v0 + 2856);
    v191 = *(v0 + 2848);
    v192 = *(v0 + 2760);
    v193 = swift_slowAlloc();
    v194 = swift_slowAlloc();
    v308[0] = v194;
    *v193 = 136315138;
    v195 = *(**(v192 + v189) + 160);

    v197 = v195(v196);

    if (v197)
    {
      v198 = 0x207265746661;
    }

    else
    {
      v198 = 0x2065726F666562;
    }

    if (v197)
    {
      v199 = 0xE600000000000000;
    }

    else
    {
      v199 = 0xE700000000000000;
    }

    v200 = sub_2721FFD04(v198, v199, v308);

    *(v193 + 4) = v200;
    _os_log_impl(&dword_2721E4000, v187, v188, "Got speech end before final and %spartial, pad with audio till final", v193, 0xCu);
    sub_2722039C8(v194);
    MEMORY[0x2743C69C0](v194, -1, -1);
    MEMORY[0x2743C69C0](v193, -1, -1);

    v201 = *(v190 + 8);
    v201(v307, v191);
  }

  else
  {
    v213 = *(v0 + 2880);
    v214 = *(v0 + 2856);
    v215 = *(v0 + 2848);

    v201 = *(v214 + 8);
    v201(v213, v215);
  }

  *(v0 + 3120) = v201;
  *(v0 + 3128) = mach_absolute_time();
  *(v0 + 3136) = 0;
  v216 = *(**(*(v0 + 2760) + *(v0 + 2984)) + 160);

  LOBYTE(v216) = v216(v217);

  if (v216)
  {
    v97 = *(v0 + 3048);
    v218 = *(v0 + 3016);
    v219 = *(v0 + 2984);
    v220 = *(v0 + 2760);
    v221 = *(v220 + v218);
    *(v220 + v218) = 0;

    v222 = *(**(v220 + v219) + 160);

    LOBYTE(v222) = v222(v223);

    if ((v222 & 1) == 0)
    {
      v254 = *(v0 + 3000);
      v255 = *(v0 + 2760);
      type metadata accessor for VAASRResult();
      v256 = sub_2722E2418(0, 0xE000000000000000, 0, 0, 0, 1, 0);
      v257 = *(v255 + v254);
      if (v257)
      {
        [v257 speechResultsWithResult_];
      }

      goto LABEL_22;
    }

    v224 = *(v0 + 3128);
    type metadata accessor for VARequestContext(0);
    v225 = mach_absolute_time();
    v226 = v225 >= v224;
    v9 = v225 - v224;
    if (v226)
    {
      v227 = *(v0 + 3112);
      v228 = *(v0 + 3104);
      v229 = *(v0 + 3096);
      v230 = *(v0 + 2952);
      v231 = *(v0 + 2864);
      v232 = *(v0 + 2848);
      v233 = sub_2722310BC(v9);
      v228(v231, v229, v232);
      v234 = v230;
      v235 = sub_27237725C();
      v236 = sub_272377E7C();
      v237 = os_log_type_enabled(v235, v236);
      v238 = *(v0 + 3120);
      v239 = *(v0 + 2952);
      v240 = *(v0 + 2864);
      v241 = *(v0 + 2848);
      v242 = *(v0 + 2856) + 8;
      if (v237)
      {
        v243 = swift_slowAlloc();
        *v243 = 67109376;
        *(v243 + 4) = [v239 frameLength];

        *(v243 + 8) = 2048;
        *(v243 + 10) = v233;
        _os_log_impl(&dword_2721E4000, v235, v236, "Got final after padding speech end with %u samples of 0 audio for %f secs", v243, 0x12u);
        MEMORY[0x2743C69C0](v243, -1, -1);

        sub_2721F40F0(v0 + 272, &qword_280881A88, &qword_27237CA70);
      }

      else
      {
        sub_2721F40F0(v0 + 272, &qword_280881A88, &qword_27237CA70);
      }

      v238(v240, v241);
LABEL_23:
      *(v0 + 3032) = v97;
      v114 = *(MEMORY[0x277D85798] + 4);
      v115 = swift_task_alloc();
      *(v0 + 3040) = v115;
      *v115 = v0;
      v115[1] = sub_27224E9F0;
      v116 = *(v0 + 2944);
      v12 = *(v0 + 2928);
      v9 = v0 + 400;
      v10 = 0;
      v11 = 0;

      return MEMORY[0x2822003E8](v9, v10, v11, v12);
    }

    goto LABEL_85;
  }

  v244 = *(v0 + 2952);
  v245 = *(v0 + 2792);
  v246 = *(v0 + 2784);
  v247 = *(v0 + 2760);
  v248 = sub_272377C3C();
  v249 = *(v248 - 8);
  (*(v249 + 56))(v245, 1, 1, v248);
  v250 = swift_allocObject();
  v250[2] = 0;
  v250[3] = 0;
  v250[4] = 10;
  v250[5] = v247;
  v250[6] = v244;
  sub_2721F07F4(v245, v246, &qword_2808819D8, &qword_27237CB50);
  LODWORD(v246) = (*(v249 + 48))(v246, 1, v248);
  v251 = v247;
  v252 = v244;

  v253 = *(v0 + 2784);
  if (v246 == 1)
  {
    sub_2721F40F0(*(v0 + 2784), &qword_2808819D8, &qword_27237CB50);
  }

  else
  {
    sub_272377C2C();
    (*(v249 + 8))(v253, v248);
  }

  v259 = v250[2];
  v258 = v250[3];
  swift_unknownObjectRetain();

  if (v259)
  {
    swift_getObjectType();
    v260 = sub_272377BDC();
    v262 = v261;
    swift_unknownObjectRelease();
  }

  else
  {
    v260 = 0;
    v262 = 0;
  }

  sub_2721F40F0(*(v0 + 2792), &qword_2808819D8, &qword_27237CB50);
  v263 = swift_allocObject();
  *(v263 + 16) = &unk_27237E4D0;
  *(v263 + 24) = v250;
  if (v262 | v260)
  {
    *(v0 + 2704) = 0;
    *(v0 + 2712) = 0;
    *(v0 + 2720) = v260;
    *(v0 + 2728) = v262;
  }

  v264 = *(v0 + 3016);
  v265 = *(v0 + 2760);
  v266 = swift_task_create();
  *(v0 + 3144) = v266;
  v267 = *(v265 + v264);
  *(v265 + v264) = v266;

  v268 = *(MEMORY[0x277D857E0] + 4);
  v269 = swift_task_alloc();
  *(v0 + 3152) = v269;
  *v269 = v0;
  v269[1] = sub_272250334;

  return MEMORY[0x282200460]();
}

uint64_t sub_272250334()
{
  v1 = *(*v0 + 3152);
  v2 = *(*v0 + 3144);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_27225044C, 0, 0);
}

uint64_t sub_27225044C()
{
  if (*(v0 + 3136) == 99)
  {
    v1 = *(v0 + 3112);
    (*(v0 + 3104))(*(v0 + 2872), *(v0 + 3096), *(v0 + 2848));
    v2 = sub_27237725C();
    v3 = sub_272377E6C();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 134217984;
      *(v4 + 4) = 0x408F400000000000;
      _os_log_impl(&dword_2721E4000, v2, v3, "No final even after padding with bytes for %f ms", v4, 0xCu);
      MEMORY[0x2743C69C0](v4, -1, -1);
    }

    v5 = *(v0 + 3120);
    v86 = *(v0 + 3064);
    v87 = *(v0 + 3072);
    v6 = *(v0 + 3056);
    v7 = *(v0 + 3008);
    v8 = *(v0 + 2872);
    v9 = *(v0 + 2856);
    v10 = *(v0 + 2848);
    v11 = *(v0 + 2808);
    v12 = *(v0 + 2760);

    v5(v8, v10);
    sub_2721F07F4(v12 + v7, v11, &qword_280881F80, &qword_27237E338);
    if (v86(v11, 1, v6) == 1)
    {
      goto LABEL_36;
    }

    v13 = *(v0 + 3088);
    v14 = *(v0 + 3080);
    v15 = *(v0 + 3056);
    v16 = *(v0 + 3024);
    v17 = *(v0 + 2808);
    v18 = *(v0 + 2760);
    sub_272377C7C();
    v14(v17, v15);
    v19 = *(v18 + v16);
    *(v0 + 3160) = v19;
    if (v19)
    {
      v20 = *(MEMORY[0x277CDCA48] + 4);

      v21 = swift_task_alloc();
      *(v0 + 3168) = v21;
      *v21 = v0;
      v21[1] = sub_272250C48;

      return MEMORY[0x28212BBF0]();
    }

    v24 = *(v0 + 3048);
    v35 = *(v0 + 3016);
    v36 = *(v0 + 2760);
    v37 = *(v36 + v35);
    *(v36 + v35) = 0;
  }

  else
  {
    ++*(v0 + 3136);
    v22 = *(**(*(v0 + 2760) + *(v0 + 2984)) + 160);

    LOBYTE(v22) = v22(v23);

    if ((v22 & 1) == 0)
    {
      v25 = *(v0 + 2952);
      v26 = *(v0 + 2792);
      v27 = *(v0 + 2784);
      v28 = *(v0 + 2760);
      v29 = sub_272377C3C();
      v30 = *(v29 - 8);
      (*(v30 + 56))(v26, 1, 1, v29);
      v31 = swift_allocObject();
      v31[2] = 0;
      v31[3] = 0;
      v31[4] = 10;
      v31[5] = v28;
      v31[6] = v25;
      sub_2721F07F4(v26, v27, &qword_2808819D8, &qword_27237CB50);
      LODWORD(v27) = (*(v30 + 48))(v27, 1, v29);
      v32 = v28;
      v33 = v25;

      v34 = *(v0 + 2784);
      if (v27 == 1)
      {
        sub_2721F40F0(*(v0 + 2784), &qword_2808819D8, &qword_27237CB50);
      }

      else
      {
        sub_272377C2C();
        (*(v30 + 8))(v34, v29);
      }

      v70 = v31[2];
      v69 = v31[3];
      swift_unknownObjectRetain();

      if (v70)
      {
        swift_getObjectType();
        v71 = sub_272377BDC();
        v73 = v72;
        swift_unknownObjectRelease();
      }

      else
      {
        v71 = 0;
        v73 = 0;
      }

      sub_2721F40F0(*(v0 + 2792), &qword_2808819D8, &qword_27237CB50);
      v78 = swift_allocObject();
      *(v78 + 16) = &unk_27237E4D0;
      *(v78 + 24) = v31;
      if (v73 | v71)
      {
        *(v0 + 2704) = 0;
        *(v0 + 2712) = 0;
        *(v0 + 2720) = v71;
        *(v0 + 2728) = v73;
      }

      v79 = *(v0 + 3016);
      v80 = *(v0 + 2760);
      v81 = swift_task_create();
      *(v0 + 3144) = v81;
      v82 = *(v80 + v79);
      *(v80 + v79) = v81;

      v83 = *(MEMORY[0x277D857E0] + 4);
      v84 = swift_task_alloc();
      *(v0 + 3152) = v84;
      *v84 = v0;
      v84[1] = sub_272250334;

      return MEMORY[0x282200460]();
    }

    v24 = *(v0 + 3048);
  }

  v38 = *(v0 + 3016);
  v39 = *(v0 + 2984);
  v40 = *(v0 + 2760);
  v41 = *(v40 + v38);
  *(v40 + v38) = 0;

  v42 = *(**(v40 + v39) + 160);

  LOBYTE(v42) = v42(v43);

  if (v42)
  {
    v44 = *(v0 + 3128);
    type metadata accessor for VARequestContext(0);
    v45 = mach_absolute_time();
    v46 = v45 >= v44;
    v47 = v45 - v44;
    if (!v46)
    {
      __break(1u);
LABEL_36:
      __break(1u);
      return MEMORY[0x28212BBF0]();
    }

    v48 = *(v0 + 3112);
    v49 = *(v0 + 3104);
    v50 = *(v0 + 3096);
    v51 = *(v0 + 2952);
    v52 = *(v0 + 2864);
    v53 = *(v0 + 2848);
    v54 = sub_2722310BC(v47);
    v49(v52, v50, v53);
    v55 = v51;
    v56 = sub_27237725C();
    v57 = sub_272377E7C();
    v58 = os_log_type_enabled(v56, v57);
    v59 = *(v0 + 3120);
    v60 = *(v0 + 2952);
    v61 = *(v0 + 2864);
    v62 = *(v0 + 2848);
    v63 = *(v0 + 2856) + 8;
    if (v58)
    {
      v64 = swift_slowAlloc();
      *v64 = 67109376;
      *(v64 + 4) = [v60 frameLength];

      *(v64 + 8) = 2048;
      *(v64 + 10) = v54;
      _os_log_impl(&dword_2721E4000, v56, v57, "Got final after padding speech end with %u samples of 0 audio for %f secs", v64, 0x12u);
      MEMORY[0x2743C69C0](v64, -1, -1);

      sub_2721F40F0(v0 + 272, &qword_280881A88, &qword_27237CA70);
    }

    else
    {
      sub_2721F40F0(v0 + 272, &qword_280881A88, &qword_27237CA70);
    }

    v59(v61, v62);
  }

  else
  {
    v65 = *(v0 + 3000);
    v66 = *(v0 + 2760);
    type metadata accessor for VAASRResult();
    v67 = sub_2722E2418(0, 0xE000000000000000, 0, 0, 0, 1, 0);
    v68 = *(v66 + v65);
    if (v68)
    {
      [v68 speechResultsWithResult_];
    }

    sub_2721F40F0(v0 + 272, &qword_280881A88, &qword_27237CA70);
  }

  *(v0 + 3032) = v24;
  v74 = *(MEMORY[0x277D85798] + 4);
  v75 = swift_task_alloc();
  *(v0 + 3040) = v75;
  *v75 = v0;
  v75[1] = sub_27224E9F0;
  v76 = *(v0 + 2944);
  v77 = *(v0 + 2928);

  return MEMORY[0x2822003E8](v0 + 400, 0, 0, v77);
}

uint64_t sub_272250C48()
{
  v2 = *v1;
  v3 = *(*v1 + 3168);
  v4 = *v1;
  *(*v1 + 3176) = v0;

  v5 = *(v2 + 3160);

  if (v0)
  {
    v6 = sub_272251080;
  }

  else
  {
    v6 = sub_272250D7C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_272250D7C()
{
  v1 = v0[397];
  v2 = v0[377];
  v3 = v0[345];
  v4 = *(v3 + v2);
  *(v3 + v2) = 0;

  v5 = v0[377];
  v6 = v0[373];
  v7 = v0[345];
  v8 = *(v7 + v5);
  *(v7 + v5) = 0;

  v9 = *(**(v7 + v6) + 160);

  LOBYTE(v9) = v9(v10);

  if (v9)
  {
    v11 = v0[391];
    type metadata accessor for VARequestContext(0);
    v12 = mach_absolute_time();
    v16 = v12 >= v11;
    v17 = v12 - v11;
    if (!v16)
    {
      __break(1u);
      return MEMORY[0x2822003E8](v17, v13, v14, v15);
    }

    v18 = v0[389];
    v19 = v0[388];
    v20 = v0[387];
    v21 = v0[369];
    v22 = v0[358];
    v23 = v0[356];
    v24 = sub_2722310BC(v17);
    v19(v22, v20, v23);
    v25 = v21;
    v26 = sub_27237725C();
    v27 = sub_272377E7C();
    v28 = os_log_type_enabled(v26, v27);
    v29 = v0[390];
    v30 = v0[369];
    v31 = v0[358];
    v32 = v0[356];
    v33 = v0[357] + 8;
    if (v28)
    {
      v34 = swift_slowAlloc();
      *v34 = 67109376;
      *(v34 + 4) = [v30 frameLength];

      *(v34 + 8) = 2048;
      *(v34 + 10) = v24;
      _os_log_impl(&dword_2721E4000, v26, v27, "Got final after padding speech end with %u samples of 0 audio for %f secs", v34, 0x12u);
      MEMORY[0x2743C69C0](v34, -1, -1);

      sub_2721F40F0((v0 + 34), &qword_280881A88, &qword_27237CA70);
    }

    else
    {
      sub_2721F40F0((v0 + 34), &qword_280881A88, &qword_27237CA70);
    }

    v29(v31, v32);
  }

  else
  {
    v35 = v0[375];
    v36 = v0[345];
    type metadata accessor for VAASRResult();
    v37 = sub_2722E2418(0, 0xE000000000000000, 0, 0, 0, 1, 0);
    v38 = *(v36 + v35);
    if (v38)
    {
      [v38 speechResultsWithResult_];
    }

    sub_2721F40F0((v0 + 34), &qword_280881A88, &qword_27237CA70);
  }

  v0[379] = v1;
  v39 = *(MEMORY[0x277D85798] + 4);
  v40 = swift_task_alloc();
  v0[380] = v40;
  *v40 = v0;
  v40[1] = sub_27224E9F0;
  v41 = v0[368];
  v15 = v0[366];
  v17 = (v0 + 50);
  v13 = 0;
  v14 = 0;

  return MEMORY[0x2822003E8](v17, v13, v14, v15);
}

uint64_t sub_272251080()
{
  v1 = *(v0 + 2944);
  v2 = *(v0 + 2936);
  v3 = *(v0 + 2928);

  sub_2721F40F0(v0 + 272, &qword_280881A88, &qword_27237CA70);
  (*(v2 + 8))(v1, v3);
  v22 = *(v0 + 3176);
  v4 = *(v0 + 2944);
  v5 = *(v0 + 2920);
  v6 = *(v0 + 2912);
  v7 = *(v0 + 2904);
  v8 = *(v0 + 2896);
  v9 = *(v0 + 2888);
  v10 = *(v0 + 2880);
  v11 = *(v0 + 2872);
  v12 = *(v0 + 2864);
  v13 = *(v0 + 2840);
  v16 = *(v0 + 2816);
  v17 = *(v0 + 2808);
  v18 = *(v0 + 2800);
  v19 = *(v0 + 2792);
  v20 = *(v0 + 2784);
  v21 = *(v0 + 2776);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_272251210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[6] = a4;
  v7 = sub_272377BFC();
  v6[9] = v7;
  v8 = *(v7 - 8);
  v6[10] = v8;
  v9 = *(v8 + 64) + 15;
  v6[11] = swift_task_alloc();
  v10 = sub_27237728C();
  v6[12] = v10;
  v11 = *(v10 - 8);
  v6[13] = v11;
  v12 = *(v11 + 64) + 15;
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  v13 = *(*(sub_2723773DC() - 8) + 64) + 15;
  v6[16] = swift_task_alloc();
  v14 = *(*(sub_2721F065C(&qword_280881F80, &qword_27237E338) - 8) + 64) + 15;
  v6[17] = swift_task_alloc();
  v15 = sub_2721F065C(&qword_280881F88, qword_27237E340);
  v6[18] = v15;
  v16 = *(v15 - 8);
  v6[19] = v16;
  v17 = *(v16 + 64) + 15;
  v6[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_272251408, 0, 0);
}

uint64_t sub_272251408(uint64_t a1)
{
  v3 = *(v1 + 48);
  if (is_mul_ok(v3, 0xF4240uLL))
  {
    v4 = 1000000 * v3;
    v5 = *(MEMORY[0x277D857E8] + 4);
    v6 = swift_task_alloc();
    *(v1 + 168) = v6;
    *v6 = v1;
    v6[1] = sub_2722514BC;
    a1 = v4;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200480](a1);
}

uint64_t sub_2722514BC()
{
  v2 = *(*v1 + 168);
  v5 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_2722517BC;
  }

  else
  {
    v3 = sub_2722515D0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

int64_t sub_2722515D0()
{
  v21 = v0;
  v1 = *(v0 + 136);
  v2 = *(v0 + 56);
  v3 = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_inputStreamBuilder;
  swift_beginAccess();
  sub_2721F07F4(v2 + v3, v1, &qword_280881F80, &qword_27237E338);
  v4 = sub_2721F065C(&qword_280881F58, &unk_27237E2F0);
  v5 = *(v4 - 8);
  result = (*(v5 + 48))(v1, 1, v4);
  if (result == 1)
  {
    goto LABEL_7;
  }

  v7 = *(v0 + 64);
  result = mach_absolute_time();
  if (result < 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v9 = *(v0 + 152);
  v8 = *(v0 + 160);
  v10 = *(v0 + 136);
  v11 = *(v0 + 144);
  v12 = *(v0 + 128);
  v13 = *(v0 + 64);
  CMTimeMake(&v20, result, 1);
  sub_2723773BC();
  sub_272377C6C();
  (*(v9 + 8))(v8, v11);
  v14 = *(v0 + 160);
  v15 = *(v0 + 128);
  v17 = *(v0 + 112);
  v16 = *(v0 + 120);
  v18 = *(v0 + 88);
  (*(v5 + 8))(*(v0 + 136), v4);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_2722517BC()
{
  v1 = v0[22];
  v0[5] = v1;
  v2 = v0[11];
  v3 = v0[9];
  v4 = v1;
  sub_2721F065C(&qword_280881A38, &unk_27237CA20);
  if (swift_dynamicCast())
  {
    v6 = v0 + 14;
    v5 = v0[14];
    v7 = v0[12];
    v8 = v0[13];
    (*(v0[10] + 8))(v0[11], v0[9]);
    v9 = sub_2722C389C();
    (*(v8 + 16))(v5, v9, v7);
    v10 = sub_27237725C();
    v11 = sub_272377E7C();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[22];
    if (v12)
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_2721E4000, v10, v11, "Cancelled sleep task after getting final result", v14, 2u);
LABEL_6:
      MEMORY[0x2743C69C0](v14, -1, -1);

      goto LABEL_8;
    }
  }

  else
  {
    v6 = v0 + 15;
    v15 = v0[15];
    v16 = v0[22];
    v17 = v0[12];
    v18 = v0[13];
    v19 = sub_2722C389C();
    (*(v18 + 16))(v15, v19, v17);
    v20 = v16;
    v10 = sub_27237725C();
    v21 = sub_272377E8C();

    v22 = os_log_type_enabled(v10, v21);
    v13 = v0[22];
    if (v22)
    {
      v14 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v14 = 138412290;
      v24 = v13;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v25;
      *v23 = v25;
      _os_log_impl(&dword_2721E4000, v10, v21, "Error sleeping wating for final result: %@", v14, 0xCu);
      sub_2721F40F0(v23, &qword_280881A40, &unk_27237D620);
      MEMORY[0x2743C69C0](v23, -1, -1);
      goto LABEL_6;
    }
  }

LABEL_8:
  v26 = *v6;
  v27 = v0[20];
  v29 = v0[16];
  v28 = v0[17];
  v31 = v0[14];
  v30 = v0[15];
  v32 = v0[11];
  (*(v0[13] + 8))(v26, v0[12]);

  v33 = v0[1];

  return v33();
}

uint64_t sub_272251A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_27237728C();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_272251B44, 0, 0);
}

uint64_t sub_272251B44()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = sub_2722C389C();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_27237725C();
  v6 = sub_272377E7C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2721E4000, v5, v6, "in batch audio mode, stopping spotter after VAD detector is done", v7, 2u);
    MEMORY[0x2743C69C0](v7, -1, -1);
  }

  v9 = v0[4];
  v8 = v0[5];
  v11 = v0[2];
  v10 = v0[3];

  (*(v9 + 8))(v8, v10);
  v12 = *((*MEMORY[0x277D85000] & *v11) + 0xB8);
  v17 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  v0[6] = v14;
  *v14 = v0;
  v14[1] = sub_272251D2C;
  v15 = v0[2];

  return v17();
}

uint64_t sub_272251D2C()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_272251E6C()
{
  v1 = *(v0 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_speechAnalyzer);

  sub_2721F40F0(v0 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_inputStream, &qword_280881F98, &qword_27237E358);
  sub_2721F40F0(v0 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_inputStreamBuilder, &qword_280881F80, &qword_27237E338);
  v2 = *(v0 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_feedEmptyBufferTillFinalResultTask);

  v3 = *(v0 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_recognizerTask);

  v4 = *(v0 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_speechAPITask);

  v5 = *(v0 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_vadTask);

  v6 = *(v0 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_speechDetector);

  v7 = *(v0 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_asrDelegate);
  swift_unknownObjectRelease();
  v8 = *(v0 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_speechDetectorDelegate);
  swift_unknownObjectRelease();
  sub_2721F40F0(v0 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_speechDetectorOutputStream, &qword_2808819B8, &qword_27237C508);
  sub_2721F40F0(v0 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_runtimeParameters, &qword_280881F70, &qword_27237E320);

  v9 = *(v0 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_speechAPISpotterConfiguration);

  v10 = *(v0 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_speechEnded);

  v11 = *(v0 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_gotFinalResult);

  v12 = *(v0 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_gotPartialResult);
}

id VASpeechAPISpotter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VASpeechAPISpotter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_272252224(id result, const char **a2, float a3, float a4)
{
  v5 = *(v4 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_speechDetectorDelegate);
  if (v5)
  {
    v7 = result;
    result = [v5 respondsToSelector_];
    if (result)
    {
      v12 = *a2;
      *&v10 = a3;
      *&v11 = a4;

      return [v5 v12];
    }
  }

  return result;
}

char *sub_2722522CC(char *result, float a2, float a3, uint64_t a4, uint64_t a5, const char **a6)
{
  v6 = *&result[OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_speechDetectorDelegate];
  if (v6)
  {
    result = [*&result[OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_speechDetectorDelegate] respondsToSelector_];
    if (result)
    {
      v13 = *a6;
      *&v11 = a2;
      *&v12 = a3;

      return [v6 v13];
    }
  }

  return result;
}

unint64_t sub_272252468(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_27237745C();
  sub_272253DFC(&qword_280882080, MEMORY[0x277CDCBE8]);
  v5 = sub_27237776C();

  return sub_272252500(a1, v5);
}

unint64_t sub_272252500(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_27237745C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_272253DFC(&qword_280882088, MEMORY[0x277CDCBE8]);
      v16 = sub_2723777DC();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

id sub_2722526C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  *(v4 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_speechAnalyzer) = 0;
  v8 = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_inputStream;
  v9 = sub_2721F065C(&qword_280881F50, &unk_272381B70);
  (*(*(v9 - 8) + 56))(v4 + v8, 1, 1, v9);
  v10 = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_inputStreamBuilder;
  v11 = sub_2721F065C(&qword_280881F58, &unk_27237E2F0);
  (*(*(v11 - 8) + 56))(v4 + v10, 1, 1, v11);
  *(v4 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_feedEmptyBufferTillFinalResultTask) = 0;
  *(v4 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_recognizerTask) = 0;
  *(v4 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_speechAPITask) = 0;
  *(v4 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_vadTask) = 0;
  *(v4 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_speechDetector) = 0;
  *(v4 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_timingInfo) = 0;
  v12 = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_asrDelegate;
  *(v4 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_asrDelegate) = 0;
  v13 = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_speechDetectorDelegate;
  *(v4 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_speechDetectorDelegate) = 0;
  v14 = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_speechDetectorOutputStream;
  v15 = sub_2721F065C(&qword_280881900, &qword_27237C4F0);
  (*(*(v15 - 8) + 56))(v5 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_runtimeParameters;
  v17 = type metadata accessor for VARuntimeParameters();
  (*(*(v17 - 8) + 56))(v5 + v16, 1, 1, v17);
  *(v5 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_audioDuringSpeech) = 0;
  *(v5 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_stopped) = 0;
  *(v5 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_pausedDetector) = 0;
  v18 = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_speechEnded;
  type metadata accessor for SharedBool();
  v19 = swift_allocObject();
  sub_272244D44(0, 0x6E45686365657073, 0xEB00000000646564);
  *(v5 + v18) = v19;
  v20 = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_gotFinalResult;
  v21 = swift_allocObject();
  sub_272244D44(0, 0x6C616E6946746F67, 0xEE00746C75736552);
  *(v5 + v20) = v21;
  v22 = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_gotPartialResult;
  v23 = swift_allocObject();
  sub_272244D44(0, 0xD000000000000010, 0x800000027238AA40);
  *(v5 + v22) = v23;
  v24 = *(v5 + v12);
  *(v5 + v12) = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v25 = *(v5 + v13);
  *(v5 + v13) = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(v5 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_speechAPISpotterConfiguration) = a4;
  type metadata accessor for VAConfiguration();

  v27 = static VAConfiguration.buildForSpeechAPISpotter(speechAPISpotterConfig:)(v26);
  sub_272335304(v31);
  return sub_272335390(a1, v27, v31);
}

uint64_t sub_272252A2C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_272252A6C()
{
  result = qword_280881F78;
  if (!qword_280881F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881F78);
  }

  return result;
}

uint64_t sub_272252AC0(uint64_t a1)
{
  v3 = sub_2721F065C(&qword_280881900, &qword_27237C4F0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v20 - v6;
  v8 = sub_2721F065C(&qword_2808819D8, &qword_27237CB50);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v20 - v10;
  sub_2721F065C(&qword_280882040, &unk_27237E470);
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D837D0];
  *(v12 + 16) = xmmword_27237AF80;
  *(v12 + 56) = v13;
  strcpy((v12 + 32), "CREATING VAD");
  *(v12 + 45) = 0;
  *(v12 + 46) = -5120;
  sub_27237872C();

  v14 = sub_272377C3C();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  (*(v4 + 16))(v7, a1, v3);
  v15 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = 0;
  *(v16 + 3) = 0;
  *(v16 + 4) = v1;
  (*(v4 + 32))(&v16[v15], v7, v3);
  v17 = v1;
  v18 = sub_272215108(0, 0, v11, &unk_27237E4A0, v16);
  sub_2721F40F0(v11, &qword_2808819D8, &qword_27237CB50);
  return v18;
}

uint64_t sub_272252D40()
{
  v1 = (type metadata accessor for VARuntimeParameters() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = (v4 + v2 + v3) & ~v2;
  v6 = (v4 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  v8 = v0 + v3;
  v9 = *(v0 + v3);

  v10 = *(v0 + v3 + 64);

  v11 = *(v0 + v3 + 80);

  v12 = v1[29];
  v13 = sub_272376EBC();
  v14 = *(*(v13 - 8) + 8);
  v14(v8 + v12, v13);
  v15 = (v0 + v5);
  v16 = *v15;

  v17 = v15[8];

  v18 = v15[10];

  v14(v15 + v1[29], v13);

  v19 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x2821FE8E8](v0, v19 + 8, v2 | 7);
}

uint64_t sub_272252EE0(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for VARuntimeParameters() - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = *(v5 + 64);
  v9 = (v8 + v6 + v7) & ~v6;
  v10 = (v8 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v1 + v10);
  v13 = *(v1 + v11);
  v14 = *(v1 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8));
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_272219D80;

  return sub_272246C08(a1, v15, v16, v1 + v7, v1 + v9, v12, v13, v14);
}

uint64_t type metadata accessor for VASpeechAPISpotter()
{
  result = qword_280887908;
  if (!qword_280887908)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_272253084()
{
  sub_272219478(319, &qword_280881FA0, &qword_280881F50, &unk_272381B70);
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_272219478(319, &qword_280881FA8, &qword_280881F58, &unk_27237E2F0);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_272219478(319, &qword_280881A10, &qword_280881900, &qword_27237C4F0);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_272253328();
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_272253328()
{
  if (!qword_280881FB0)
  {
    type metadata accessor for VARuntimeParameters();
    v0 = sub_27237801C();
    if (!v1)
    {
      atomic_store(v0, &qword_280881FB0);
    }
  }
}

unint64_t sub_272253380(uint64_t a1)
{
  v2 = sub_2721F065C(&qword_280881FE0, &qword_27237E420);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_2721F065C(&qword_280882078, &qword_27237E490);
    v8 = sub_2723783EC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_2721F07F4(v10, v6, &qword_280881FE0, &qword_27237E420);
      result = sub_272252468(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_27237745C();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

uint64_t sub_272253568(uint64_t a1)
{
  v2 = sub_27237737C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_2721F065C(&qword_280882060, &qword_27237E488);
    v10 = sub_2723781AC();
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
      sub_272253DFC(&qword_280882068, MEMORY[0x277CDCB30]);
      v18 = sub_27237776C();
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
          sub_272253DFC(&qword_280882070, MEMORY[0x277CDCB30]);
          v25 = sub_2723777DC();
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

uint64_t sub_272253888(uint64_t a1)
{
  v2 = sub_27237733C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_2721F065C(&qword_280882048, &qword_27237E480);
    v10 = sub_2723781AC();
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
      sub_272253DFC(&qword_280882050, MEMORY[0x277CDCAC8]);
      v18 = sub_27237776C();
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
          sub_272253DFC(&qword_280882058, MEMORY[0x277CDCAC8]);
          v25 = sub_2723777DC();
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

uint64_t sub_272253BA8()
{
  v1 = (type metadata accessor for VARuntimeParameters() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  v7 = *(v0 + v3);

  v8 = *(v0 + v3 + 64);

  v9 = *(v0 + v3 + 80);

  v10 = v1[29];
  v11 = sub_272376EBC();
  (*(*(v11 - 8) + 8))(v0 + v3 + v10, v11);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_272253CB8(uint64_t a1)
{
  v4 = *(type metadata accessor for VARuntimeParameters() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_272219D80;

  return sub_2722497F4(a1, v8, v9, v6, v7, v1 + v5);
}

unint64_t sub_272253DA8()
{
  result = qword_280882038;
  if (!qword_280882038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882038);
  }

  return result;
}

uint64_t sub_272253DFC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_272253E44()
{
  v1 = sub_2721F065C(&qword_280881900, &qword_27237C4F0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_272253F1C()
{
  v2 = *(sub_2721F065C(&qword_280881900, &qword_27237C4F0) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_272211DBC;

  return sub_27224E474(v5, v6, v7, v4, v0 + v3);
}

uint64_t sub_272254000()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_272254040()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_272219D80;

  return sub_272251A84(v3, v4, v5, v2);
}

uint64_t sub_2722540D4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_27225411C()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_272211DBC;

  return sub_272251210(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_2722541C4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_272254228(float a1)
{
  v2 = v1;
  v18 = *MEMORY[0x277D85DE8];
  v4 = [v1 int16ChannelData];
  if (v4)
  {
    v5 = v4;
    v6 = [v1 frameLength];
    v7 = [v2 format];
    v8 = [v7 channelCount];

    if (v8)
    {
      v9 = v8;
      do
      {
        if (v6)
        {
          v11 = sub_272377B5C();
          *(v11 + 16) = v6;
          bzero((v11 + 32), 4 * v6);
        }

        else
        {
          v11 = MEMORY[0x277D84F90];
        }

        vDSP_vflt16(*v5, 1, (v11 + 32), 1, v6);
        v17 = a1;

        v12 = v11;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_2721FF8B4(0, *(v11 + 16), 0, v11);
        }

        MEMORY[0x2743C6C10](v11 + 32, 1, &v17, v12 + 32, 1, v6);

        __C = 32766.0;
        __B = -32767.0;

        v13 = v12;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_2721FF8B4(0, *(v12 + 2), 0, v12);
        }

        vDSP_vclip(v12 + 8, 1, &__B, &__C, v13 + 8, 1, v6);

        v10 = *v5++;
        vDSP_vfixr16(v13 + 8, 1, v10, 1, v6);

        --v9;
      }

      while (v9);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

Swift::String __swiftcall VATempDir()()
{
  v0 = 0x800000027238AC40;
  v1 = 0xD000000000000011;
  result._object = v0;
  result._countAndFlagsBits = v1;
  return result;
}

AVAudioPCMBuffer __swiftcall convert(audioBytes:)(Swift::OpaquePointer audioBytes)
{
  v24 = *MEMORY[0x277D85DE8];
  v1 = *(audioBytes._rawValue + 2);
  if (v1)
  {
    v3 = *(audioBytes._rawValue + 2);
    v4 = sub_272377B5C();
    *(v4 + 16) = v1;
    bzero((v4 + 32), 2 * v1);

    v21 = MEMORY[0x277D84F90];
    sub_272215F8C(0, v1, 0);
    v5 = v21;
    v6 = (audioBytes._rawValue + 32);
    while (1)
    {
      v7 = *v6;
      if ((*v6 & 0x7FFFFFFFu) > 0x7F7FFFFF)
      {
        break;
      }

      if (v7 <= -32769.0)
      {
        goto LABEL_18;
      }

      if (v7 >= 32768.0)
      {
        goto LABEL_19;
      }

      v21 = v5;
      v9 = v5[2];
      v8 = v5[3];
      if (v9 >= v8 >> 1)
      {
        sub_272215F8C((v8 > 1), v9 + 1, 1);
        v5 = v21;
      }

      v5[2] = v9 + 1;
      *(v5 + v9 + 16) = v7;
      ++v6;
      if (!--v1)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v5 = MEMORY[0x277D84F90];

LABEL_11:
  v21 = 0x40CF400000000000;
  v22 = xmmword_27237C4D0;
  v23 = xmmword_27237C4E0;
  v10 = [objc_allocWithZone(MEMORY[0x277CB83A8]) initWithStreamDescription_];
  if (!v10)
  {
    goto LABEL_21;
  }

  v11 = v5[2];
  if (HIDWORD(v11))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  v12 = v10;
  v13 = objc_allocWithZone(MEMORY[0x277CB83C8]);
  v14 = [v13 initWithPCMFormat:v12 frameCapacity:v11, v21, v22, v23, v24];
  if (!v14)
  {
    goto LABEL_22;
  }

  v15 = v14;
  v16 = [v14 int16ChannelData];
  if (v16)
  {
    v16 = *v16;
  }

  memcpy(v16, v5 + 4, 2 * v11);

  [v15 setFrameLength_];

  v18 = *MEMORY[0x277D85DE8];
  v19 = v15;
  result.super._impl = v17;
  result.super.super.isa = v19;
  return result;
}

AVAudioPCMBuffer __swiftcall convert(int16AudioBytes:)(Swift::OpaquePointer int16AudioBytes)
{
  v16 = *MEMORY[0x277D85DE8];
  v13 = 0x40CF400000000000;
  v14 = xmmword_27237C4D0;
  v15 = xmmword_27237C4E0;
  v2 = [objc_allocWithZone(MEMORY[0x277CB83A8]) initWithStreamDescription_];
  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = *(int16AudioBytes._rawValue + 2);
  if (HIDWORD(v3))
  {
    __break(1u);
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
  }

  v4 = v2;
  v5 = objc_allocWithZone(MEMORY[0x277CB83C8]);
  v6 = [v5 initWithPCMFormat:v4 frameCapacity:v3, v13, v14, v15, v16];
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = v6;
  v8 = [v6 int16ChannelData];
  if (v8)
  {
    v8 = *v8;
  }

  memcpy(v8, int16AudioBytes._rawValue + 32, 2 * v3);
  [v7 setFrameLength_];

  v10 = *MEMORY[0x277D85DE8];
  v11 = v7;
  result.super._impl = v9;
  result.super.super.isa = v11;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> VAfp16AVAudioBufferToFP32Array(buffer:floatBuffer:)(AVAudioPCMBuffer buffer, Swift::OpaquePointer *floatBuffer)
{
  impl = buffer.super._impl;
  isa = buffer.super.super.isa;
  v4 = [(objc_class *)buffer.super.super.isa int16ChannelData];
  if (v4)
  {
    v5 = v4;
    v6 = [(objc_class *)isa frameLength];
    v7 = *v5;
    v8 = *impl;
    if (*(*impl + 16) != v6)
    {
      v9 = *impl;

      if (v6)
      {
        v8 = sub_272377B5C();
        *(v8 + 16) = v6;
        bzero((v8 + 32), 4 * v6);
      }

      else
      {
        v8 = MEMORY[0x277D84F90];
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_2721FF8B4(0, *(v8 + 16), 0, v8);
    }

    *impl = v8;
    vDSP_vflt16(v7, 1, (v8 + 32), 1, v6);
  }

  else
  {
    sub_2722032B4();
    swift_allocError();
    *v10 = 0xD000000000000012;
    v10[1] = 0x800000027238AC60;
    swift_willThrow();
  }
}

uint64_t sub_272254910(void *a1, double a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  [v4 setNumberStyle_];
  [v4 setMaximumFractionDigits_];
  [v4 setMinimumFractionDigits_];
  v5 = sub_2723777FC();
  [v4 setDecimalSeparator_];

  v6 = a1[4];
  sub_27220300C(a1, a1[3]);
  sub_2723787BC();
  v7 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v8 = [v4 stringFromNumber_];

  if (v8)
  {
    sub_27237782C();
  }

  sub_2722581D4(v10, v10[3]);
  sub_27237866C();

  return sub_2722039C8(v10);
}

uint64_t sub_272254AC8(void *a1, float a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  [v4 setNumberStyle_];
  [v4 setMaximumFractionDigits_];
  [v4 setMinimumFractionDigits_];
  v5 = sub_2723777FC();
  [v4 setDecimalSeparator_];

  v6 = a1[4];
  sub_27220300C(a1, a1[3]);
  sub_2723787BC();
  v7 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  *&v8 = a2;
  v9 = [v7 initWithFloat_];
  v10 = [v4 stringFromNumber_];

  if (v10)
  {
    sub_27237782C();
  }

  sub_2722581D4(v12, v12[3]);
  sub_27237866C();

  return sub_2722039C8(v12);
}

uint64_t sub_272254C8C()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_272254CBC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 24) = 1;
  return result;
}

uint64_t sub_272254CD0()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

void sub_272254CDC(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
}

uint64_t sub_272254CEC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  sub_27237874C();
  sub_27237790C();
  sub_27237876C();
  if (v4 != 1)
  {
    MEMORY[0x2743C58B0](v3);
  }

  return sub_27237878C();
}

uint64_t sub_272254D78()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  sub_27237790C();
  if (v4 == 1)
  {
    return sub_27237876C();
  }

  sub_27237876C();
  return MEMORY[0x2743C58B0](v3);
}

uint64_t sub_272254DDC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  sub_27237874C();
  sub_27237790C();
  sub_27237876C();
  if (v4 != 1)
  {
    MEMORY[0x2743C58B0](v3);
  }

  return sub_27237878C();
}

void *sub_272254E64@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  *(a2 + 8) = v2;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  return result;
}

uint64_t sub_272254E7C(uint64_t a1)
{
  v2 = sub_27223879C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_272254EB8(uint64_t a1)
{
  v2 = sub_27223879C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_272254EF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v6 || (v7 = sub_27237865C(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v5)
      {
        return 1;
      }
    }

    else
    {
      if (v2 == v4)
      {
        v9 = v5;
      }

      else
      {
        v9 = 1;
      }

      if ((v9 & 1) == 0)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_272254F78@<X0>(uint64_t a1@<X3>, void *a2@<X8>)
{
  v17[1] = a1;
  v18 = sub_272376D5C();
  v3 = *(v18 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v18);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() defaultManager];
  v8 = sub_2723777FC();
  v9 = [v7 isReadableFileAtPath_];

  if (v9)
  {
    sub_272376CAC();
    v10 = sub_272376D6C();
    v12 = v11;
    v13 = sub_272376ABC();
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    sub_272376AAC();
    sub_272376A9C();
    (*(v3 + 8))(v6, v18);

    sub_2721F05C8(v10, v12);
    sub_272204304();
    sub_27237879C();
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    *a2 = 0x8000000000000000;
    sub_272204304();
    sub_27237879C();

    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_272255248()
{
  v1 = *(v0 + 16);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_2722582E0;
  *(v2 + 24) = v0;
  v5[4] = sub_27225836C;
  v5[5] = v2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_27225537C;
  v5[3] = &unk_28817E5F8;
  v3 = _Block_copy(v5);

  dispatch_sync(v1, v3);
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2722553A4()
{
  v1 = sub_27237728C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0[2];
  v7 = swift_allocObject();
  *(v7 + 16) = sub_2722583AC;
  *(v7 + 24) = v0;
  aBlock[4] = sub_272259128;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_27225537C;
  aBlock[3] = &unk_28817E648;
  v8 = _Block_copy(aBlock);

  dispatch_sync(v6, v8);
  _Block_release(v8);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  else
  {
    v10 = *(*v0 + 96);
    if ((v10)(result) >= 2)
    {
      v11 = sub_2722C389C();
      (*(v2 + 16))(v5, v11, v1);

      v12 = sub_27237725C();
      v13 = sub_272377E8C();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 134217984;
        *(v14 + 4) = v10();

        _os_log_impl(&dword_2721E4000, v12, v13, "!!!!! falling behind...LoopCount %ld", v14, 0xCu);
        MEMORY[0x2743C69C0](v14, -1, -1);
      }

      else
      {
      }

      (*(v2 + 8))(v5, v1);
    }
  }

  return result;
}

uint64_t sub_27225567C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2722556B4()
{
  v0 = swift_allocObject();
  sub_2722556EC();
  return v0;
}

uint64_t sub_2722556EC()
{
  v10[0] = sub_272377EDC();
  v1 = *(v10[0] - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v10[0]);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_272377ECC();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = sub_2723776EC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_27221982C(0, &qword_280881910, 0x277D85C78);
  sub_2723776CC();
  v10[1] = MEMORY[0x277D84F90];
  sub_272258224();
  sub_2721F065C(&qword_280881920, &qword_27237C500);
  sub_27225827C();
  sub_27237815C();
  (*(v1 + 104))(v4, *MEMORY[0x277D85260], v10[0]);
  *(v0 + 16) = sub_272377F0C();
  *(v0 + 24) = 0;
  return v0;
}

uint64_t sub_272255908(uint64_t a1)
{
  result = swift_allocObject();
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a1)
    {
      v3 = result;
      v4 = sub_272377B5C();
      *(v4 + 16) = a1;
      bzero((v4 + 32), 4 * a1);
      result = v3;
    }

    else
    {
      v4 = MEMORY[0x277D84F90];
    }

    *(result + 16) = v4;
    *(result + 24) = 0;
  }

  return result;
}

uint64_t sub_272255988(uint64_t a1, uint64_t a2)
{
  result = (*(*v2 + 160))();
  v5 = v2[3];
  v6 = __OFADD__(v5, a2);
  v7 = v5 + a2;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    v8 = *(v2[2] + 16);
    if (v8)
    {
      v2[3] = v7 % v8;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2722559F8(uint64_t result)
{
  v2 = *(v1 + 24);
  v3 = *(result + 16);
  if (__OFADD__(v2, v3))
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (*(*(v1 + 16) + 16) >= (v2 + v3))
  {
    v4 = v2 + v3;
  }

  else
  {
    v4 = *(*(v1 + 16) + 16);
  }

  v5 = v4 - v2;
  if (__OFSUB__(v4, v2))
  {
    goto LABEL_16;
  }

  if (v4 < v2 || (v5 & 0x8000000000000000) != 0)
  {
    goto LABEL_17;
  }

  if (v3 < v5)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v6 = result;

  result = sub_27225884C(v7, v7 + 32, 0, (2 * v5) | 1, v2, v4);
  if (v3 > v5)
  {
    if ((v3 - v5) >= 0)
    {
      sub_27225884C(v6, v6 + 32, v4 - v2, (2 * v3) | 1, 0, v3 - v5);
      goto LABEL_12;
    }

LABEL_19:
    __break(1u);
    return result;
  }

LABEL_12:
}

uint64_t sub_272255ADC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 16);
  if (v3 < v2)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v2 < 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (!v2)
  {

    v5 = 0;
    v6 = result;
    goto LABEL_5;
  }

LABEL_11:
  sub_272241D34(v1, v1 + 32, v2, (2 * v3) | 1);
  v5 = *(v0 + 24);
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  v6 = v8;
  result = *(v0 + 16);
  v3 = *(result + 16);
  if (v3 < v5)
  {
    __break(1u);
    return result;
  }

LABEL_5:
  if (v3 == v5)
  {
  }

  else
  {
    sub_272241D34(result, result + 32, 0, (2 * v5) | 1);
  }

  sub_272207944(v7);
  return v6;
}

uint64_t sub_272255B9C()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

void sub_272255BD4()
{
  v0 = sub_2723777FC();
  v1 = [objc_opt_self() bundleWithIdentifier_];

  if (!v1)
  {
    v2 = [objc_opt_self() processInfo];
    v3 = [v2 environment];

    v4 = sub_27237772C();
    if (*(v4 + 16) && (v5 = sub_27220038C(0xD000000000000013, 0x800000027238ACD0), (v6 & 1) != 0))
    {
      v7 = (*(v4 + 56) + 16 * v5);
      v8 = *v7;
      v9 = v7[1];

      v29 = 58;
      v30 = 0xE100000000000000;
      MEMORY[0x28223BE20](v10);
      v27[2] = &v29;
      v11 = sub_2721FF4F4(0x7FFFFFFFFFFFFFFFLL, 1, sub_272204258, v27, v8, v9, &v28);
      v12 = (v11 + 56);
      v28 = -*(v11 + 16);
      v13 = -1;
      while (1)
      {
        if (v28 + v13 == -1)
        {
LABEL_9:

          return;
        }

        if (++v13 >= *(v11 + 16))
        {
          break;
        }

        v14 = *(v12 - 3);
        v15 = *(v12 - 2);
        v17 = *(v12 - 1);
        v16 = *v12;
        v33 = 0;
        v34 = 0xE000000000000000;

        v18 = sub_27237791C();
        v19 = sub_27237806C();
        v20 = __OFADD__(v18, v19);
        v21 = v18 + v19;
        if (v20)
        {
          goto LABEL_14;
        }

        v12 += 4;
        MEMORY[0x2743C4A30](v21);
        v29 = v14;
        v30 = v15;
        v31 = v17;
        v32 = v16;
        sub_2722588D0();
        sub_27237795C();
        v29 = 0xD000000000000020;
        v30 = 0x800000027238AD40;
        sub_27237795C();

        v22 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
        v23 = sub_2723777FC();

        v24 = [v22 initWithPath_];

        if (v24)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
    }

    else
    {

      v25 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
      v26 = sub_2723777FC();
      [v25 initWithPath_];
    }
  }
}

uint64_t sub_272255F24()
{
  type metadata accessor for VAKeywordSpotter();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_2723777FC();
  v3 = sub_2723777FC();
  v4 = [v1 pathForResource:v2 ofType:v3];

  if (v4)
  {
    v5 = sub_27237782C();
  }

  else
  {

    return 0;
  }

  return v5;
}

void sub_272256018()
{
  sub_272255BD4();
  if (v0)
  {
    v1 = v0;
    v2 = sub_2723777FC();
    v3 = sub_2723777FC();
    v4 = [v1 pathForResource:v2 ofType:v3];

    if (v4)
    {
      sub_27237782C();
    }
  }
}

void sub_2722560E0()
{
  sub_272255F24();
  if (!v0)
  {
    sub_272256018();
  }
}

void static VABundleUtil.bundePathFallback(resource:type:)()
{
  sub_272255F24();
  if (!v0)
  {
    sub_272256018();
  }
}

id VABundleUtil.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VABundleUtil.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VABundleUtil();
  return objc_msgSendSuper2(&v2, sel_init);
}

id VABundleUtil.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VABundleUtil();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_272256424(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_30;
  }

  v2 = a1 + 32;
  v3 = *(*(a1 + 32) + 16);
  v4 = v1 * v3;
  if ((v1 * v3) >> 64 == (v1 * v3) >> 63)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      __M = *(*(a1 + 32) + 16);
      if (v4)
      {
        v5 = sub_272377B5C();
        *(v5 + 16) = v4;
        bzero((v5 + 32), 4 * v4);
      }

      else
      {
        v5 = MEMORY[0x277D84F90];
      }

      v6 = 0;
      v7 = MEMORY[0x277D84F90];
      while (1)
      {
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

        v9 = *(v2 + 8 * v6);
        v10 = *(v9 + 16);
        v11 = *(v7 + 2);
        v12 = v11 + v10;
        if (__OFADD__(v11, v10))
        {
          goto LABEL_26;
        }

        v13 = *(v2 + 8 * v6);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native && v12 <= *(v7 + 3) >> 1)
        {
          if (*(v9 + 16))
          {
            goto LABEL_20;
          }
        }

        else
        {
          if (v11 <= v12)
          {
            v15 = v11 + v10;
          }

          else
          {
            v15 = v11;
          }

          v7 = sub_2721FF8B4(isUniquelyReferenced_nonNull_native, v15, 1, v7);
          if (*(v9 + 16))
          {
LABEL_20:
            v16 = *(v7 + 2);
            if ((*(v7 + 3) >> 1) - v16 < v10)
            {
              goto LABEL_28;
            }

            memcpy(&v7[4 * v16 + 32], (v9 + 32), 4 * v10);

            if (v10)
            {
              v17 = *(v7 + 2);
              v18 = __OFADD__(v17, v10);
              v19 = v17 + v10;
              if (v18)
              {
                goto LABEL_29;
              }

              *(v7 + 2) = v19;
            }

            goto LABEL_9;
          }
        }

        if (v10)
        {
          goto LABEL_27;
        }

LABEL_9:
        ++v6;
        if (v8 == v1)
        {
          vDSP_mtrans(v7 + 8, 1, (v5 + 32), 1, __M, v1);

          return;
        }
      }
    }
  }

  else
  {
LABEL_31:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_2722565E8(uint64_t result)
{
  if (!*(result + 16))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v1 = *(result + 32);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(*(v1 + 32) + 16);
    v4 = *(v1 + 16);
    v5 = sub_272377B5C();
    *(v5 + 16) = v2;
    bzero((v5 + 32), 4 * v2);
    v6 = sub_272258594(v5, v3, &qword_280881858, &unk_27237C260);

    v7 = 0;
    while (!v3)
    {
LABEL_4:
      if (++v7 == v2)
      {
        return v6;
      }
    }

    v8 = 4;
    v9 = v3;
    while (v7 < *(v1 + 16))
    {
      v10 = *(v1 + 32 + 8 * v7);
      if ((v8 - 4) >= *(v10 + 16))
      {
        goto LABEL_20;
      }

      v11 = *(v10 + 8 * v8);
      if (!*(v11 + 16))
      {
        goto LABEL_21;
      }

      v12 = *(v11 + 32);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_272200344(v6);
        v6 = result;
      }

      if ((v8 - 4) >= v6[2])
      {
        goto LABEL_22;
      }

      v13 = v6[v8];
      result = swift_isUniquelyReferenced_nonNull_native();
      v6[v8] = v13;
      if ((result & 1) == 0)
      {
        result = sub_2722002AC(v13);
        v13 = result;
        v6[v8] = result;
      }

      if (v7 >= *(v13 + 16))
      {
        goto LABEL_23;
      }

      *(v13 + 4 * v7 + 32) = v12;
      ++v8;
      if (!--v9)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_25:
  __break(1u);
  return result;
}

void sub_27225677C(uint64_t a1, void **a2)
{
  v4 = *a2;
  if (!*a2)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v25 = *(a1 + 16);
    if (!v25)
    {
      break;
    }

    v5 = 0;
    v26 = a1 + 32;
    while (1)
    {
      v29 = v5;
      v2 = *(*(v26 + 8 * v5) + 16);

      if (v2)
      {
        break;
      }

LABEL_4:
      ++v5;

      if (v29 + 1 == v25)
      {
        return;
      }
    }

    v7 = 0;
    v27 = v6;
    v28 = v6 + 32;
    while (1)
    {
      if (v7 >= *(v6 + 16))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      a1 = *(v28 + 8 * v7);
      v8 = *(a1 + 16);

      if (v8)
      {
        break;
      }

LABEL_7:
      ++v7;

      v6 = v27;
      if (v7 == v2)
      {
        goto LABEL_4;
      }
    }

    v9 = 0;
    while (v9 < *(a1 + 16))
    {
      if (!v4)
      {
        goto LABEL_22;
      }

      v10 = v9 + 1;
      v11 = *(a1 + 32 + 4 * v9);
      sub_2721F065C(&qword_280882098, &qword_27237E8B0);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_27237E4F0;
      *(v12 + 32) = sub_272377DBC();
      *(v12 + 40) = sub_272377DBC();
      *(v12 + 48) = sub_272377DBC();
      v13 = objc_allocWithZone(MEMORY[0x277CCABB0]);
      LODWORD(v14) = v11;
      v15 = [v13 initWithFloat_];
      sub_27221982C(0, &qword_280881E98, 0x277CCABB0);
      v16 = sub_272377AEC();

      [v4 setObject:v15 forKeyedSubscript:v16];

      v9 = v10;
      if (v8 == v10)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_16:
    v17 = a2;
    sub_2721F065C(&qword_280882098, &qword_27237E8B0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_27237E4F0;
    v19 = *(a1 + 16);
    *(v18 + 32) = sub_272377DBC();
    if (!v19)
    {
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      return;
    }

    v20 = *(a1 + 32);
    v21 = *(v20 + 16);
    *(v18 + 40) = sub_272377DBC();
    if (!*(v20 + 16))
    {
      goto LABEL_24;
    }

    v22 = *(*(v20 + 32) + 16);
    *(v18 + 48) = sub_272377DBC();
    v23 = objc_allocWithZone(MEMORY[0x277CBFF40]);
    v24 = sub_272257FA4(v18, 65568);
    if (v2)
    {
      return;
    }

    v4 = v24;
    *v17 = v24;
  }
}

void sub_272256A38(uint64_t a1, void **a2)
{
  v4 = *a2;
  if (*a2)
  {
LABEL_2:
    v23 = *(a1 + 16);
    if (v23)
    {
      v5 = 0;
      v22 = a1 + 32;
      while (1)
      {
        v6 = *(v22 + 8 * v5);
        v7 = *(v6 + 16);

        if (v7)
        {
          break;
        }

LABEL_4:
        ++v5;

        if (v5 == v23)
        {
          return;
        }
      }

      v8 = 0;
      while (v8 < *(v6 + 16))
      {
        if (!v4)
        {
          goto LABEL_16;
        }

        v9 = v8 + 1;
        v10 = *(v6 + 32 + 4 * v8);
        sub_2721F065C(&qword_280882098, &qword_27237E8B0);
        v11 = swift_allocObject();
        *(v11 + 16) = xmmword_27237E500;
        *(v11 + 32) = sub_272377DBC();
        *(v11 + 40) = sub_272377DBC();
        v12 = objc_allocWithZone(MEMORY[0x277CCABB0]);
        LODWORD(v13) = v10;
        v14 = [v12 initWithFloat_];
        sub_27221982C(0, &qword_280881E98, 0x277CCABB0);
        v15 = sub_272377AEC();

        [v4 setObject:v14 forKeyedSubscript:v15];

        v8 = v9;
        if (v7 == v9)
        {
          goto LABEL_4;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    return;
  }

  sub_2721F065C(&qword_280882098, &qword_27237E8B0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_27237E500;
  v18 = *(a1 + 16);
  *(v17 + 32) = sub_272377DBC();
  if (!v18)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v19 = *(*(a1 + 32) + 16);
  *(v17 + 40) = sub_272377DBC();
  v20 = objc_allocWithZone(MEMORY[0x277CBFF40]);
  v21 = sub_272257FA4(v17, 65568);
  if (!v2)
  {
    v4 = v21;
    *a2 = v21;
    goto LABEL_2;
  }
}

void sub_272256CA4(uint64_t a1, void (*a2)(uint64_t, id *))
{
  v3 = 0;
  a2(a1, &v3);
  if (v2)
  {
  }

  else if (!v3)
  {
    __break(1u);
  }
}

void sub_272256CF4(id a1, uint64_t *a2)
{
  v4 = &selRef_environment;
  if (*a2)
  {
    goto LABEL_16;
  }

  v5 = [a1 shape];
  sub_27221982C(0, &qword_280881E98, 0x277CCABB0);
  v6 = sub_272377AFC();

  if ((v6 & 0xC000000000000001) != 0)
  {
    goto LABEL_63;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
  {
    goto LABEL_65;
  }

  for (i = *(v6 + 48); ; i = MEMORY[0x2743C5370](2, v6))
  {
    v5 = i;

    v8 = [v5 integerValue];

    if ((v8 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    if (v8)
    {
      v6 = sub_272377B5C();
      *(v6 + 16) = v8;
      bzero((v6 + 32), 4 * v8);
    }

    else
    {
      v6 = MEMORY[0x277D84F90];
    }

    v9 = [a1 v4[4]];
    v5 = sub_272377AFC();

    if ((v5 & 0xC000000000000001) == 0)
    {
      break;
    }

LABEL_66:
    v10 = MEMORY[0x2743C5370](1, v5);
LABEL_12:
    v11 = v10;

    v12 = [v11 integerValue];

    v13 = sub_272258594(v6, v12, &qword_280881858, &unk_27237C260);

    v14 = [a1 v4[4]];
    v15 = sub_272377AFC();

    if ((v15 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x2743C5370](0, v15);
    }

    else
    {
      if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_69;
      }

      v16 = *(v15 + 32);
    }

    v17 = v16;

    v18 = [v17 integerValue];

    v19 = sub_272258594(v13, v18, &qword_280881F28, &unk_272381E80);

    *a2 = v19;
LABEL_16:
    v20 = [a1 v4[4]];
    sub_27221982C(0, &qword_280881E98, 0x277CCABB0);
    v6 = sub_272377AFC();

    if ((v6 & 0xC000000000000001) != 0)
    {
LABEL_59:
      v21 = MEMORY[0x2743C5370](0, v6);
    }

    else
    {
      if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_61;
      }

      v21 = *(v6 + 32);
    }

    v22 = v21;

    v6 = [v22 integerValue];

    if ((v6 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    if (!v6)
    {
      return;
    }

    v23 = 0;
    for (j = [a1 v4[4]]; ; j = objc_msgSend(a1, v4[4], v42))
    {
      v25 = j;
      v6 = sub_272377AFC();

      if ((v6 & 0xC000000000000001) != 0)
      {
        v26 = MEMORY[0x2743C5370](1, v6);
      }

      else
      {
        if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
        {
          goto LABEL_58;
        }

        v26 = *(v6 + 40);
      }

      v27 = v26;

      v6 = [v27 integerValue];

      if ((v6 & 0x8000000000000000) != 0)
      {
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }

      if (v6)
      {
        break;
      }

LABEL_22:
      if (++v23 == v42)
      {
        return;
      }
    }

    v28 = 0;
    v43 = v6;
    while (1)
    {
      v29 = [a1 v4[4]];
      v6 = sub_272377AFC();

      if ((v6 & 0xC000000000000001) != 0)
      {
        v30 = MEMORY[0x2743C5370](2, v6);
      }

      else
      {
        if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
        {
          goto LABEL_56;
        }

        v30 = *(v6 + 48);
      }

      v31 = v30;

      v32 = [v31 integerValue];

      if ((v32 & 0x8000000000000000) != 0)
      {
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      if (v32)
      {
        break;
      }

LABEL_30:
      ++v28;
      v4 = &selRef_environment;
      if (v28 == v43)
      {
        goto LABEL_22;
      }
    }

    v6 = 0;
    while (1)
    {
      sub_2721F065C(&qword_280882098, &qword_27237E8B0);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_27237E4F0;
      *(v33 + 32) = sub_272377DBC();
      *(v33 + 40) = sub_272377DBC();
      *(v33 + 48) = sub_272377DBC();
      v34 = sub_272377AEC();
      v4 = [a1 objectForKeyedSubscript_];

      [(SEL *)v4 floatValue];
      v36 = v35;

      if (!*a2)
      {
        break;
      }

      v37 = *a2;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_272258428(v37);
      }

      if (v23 >= v37[2])
      {
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      v4 = (v37 + 4);
      v38 = v37[v23 + 4];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37[v23 + 4] = v38;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v38 = sub_272200344(v38);
        v4[v23] = v38;
      }

      if (v28 >= v38[2])
      {
        goto LABEL_53;
      }

      v4 = (v38 + 4);
      v40 = v38[v28 + 4];
      v41 = swift_isUniquelyReferenced_nonNull_native();
      v4[v28] = v40;
      if ((v41 & 1) == 0)
      {
        v40 = sub_2722002AC(v40);
        v4[v28] = v40;
      }

      if (v6 >= *(v40 + 2))
      {
        goto LABEL_54;
      }

      *&v40[4 * v6 + 32] = v36;
      *a2 = v37;
      if (v32 == ++v6)
      {
        goto LABEL_30;
      }
    }

LABEL_62:
    __break(1u);
LABEL_63:
    ;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
  {
    v10 = *(v5 + 40);
    goto LABEL_12;
  }

  __break(1u);
LABEL_69:
  __break(1u);
}

uint64_t sub_27225730C(void *a1)
{
  v2 = 0;
  sub_272256CF4(a1, &v2);
  result = v2;
  if (!v2)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_272257340()
{
  v1 = [v0 strides];
  sub_27221982C(0, &qword_280881E98, 0x277CCABB0);
  v2 = sub_272377AFC();

  v3 = [v0 strides];
  v4 = sub_272377AFC();

  if (v4 >> 62)
  {
    v5 = sub_2723783AC();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = v5 - 1;
  if (__OFSUB__(v5, 1))
  {
    __break(1u);
    goto LABEL_11;
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
LABEL_11:
    v7 = MEMORY[0x2743C5370](result, v2);
    goto LABEL_8;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(v2 + 8 * result + 32);
LABEL_8:
    v8 = v7;

    v9 = sub_272377FAC();
    v10 = sub_272377FBC();

    return v10 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_272257490()
{
  v1 = v0;
  v21 = MEMORY[0x277D84F90];
  v2 = [v0 shape];
  sub_27221982C(0, &qword_280881E98, 0x277CCABB0);
  v3 = sub_272377AFC();

  if (v3 >> 62)
  {
    goto LABEL_25;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);

  while (v4)
  {
    v5 = -v4;
    v6 = 1;
    v7 = 1;
    while (1)
    {
      [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      MEMORY[0x2743C4C30]();
      if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v18 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_272377B2C();
      }

      sub_272377B7C();
      v8 = v21;
      v9 = [v1 shape];
      v10 = sub_272377AFC();

      v11 = [v1 shape];
      v12 = sub_272377AFC();

      v13 = v12 >> 62 ? sub_2723783AC() : *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);

      v14 = v13 - v6;
      if (__OFSUB__(v13, v6))
      {
        break;
      }

      if ((v10 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x2743C5370](v14, v10);
      }

      else
      {
        if ((v14 & 0x8000000000000000) != 0)
        {
          goto LABEL_22;
        }

        if (v14 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v15 = *(v10 + 8 * v14 + 32);
      }

      v16 = v15;

      v17 = [v16 integerValue];

      if ((v7 * v17) >> 64 != (v7 * v17) >> 63)
      {
        goto LABEL_23;
      }

      ++v6;
      v7 *= v17;
      if (v5 + v6 == 1)
      {
        goto LABEL_20;
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
    v4 = sub_2723783AC();

    if (v4 < 0)
    {
      __break(1u);
      return result;
    }
  }

  v8 = MEMORY[0x277D84F90];
LABEL_20:
  v19 = sub_2722580A0(v8);

  return v19;
}

void sub_272257728(uint64_t *a1)
{
  v3 = v1;
  v4 = &selRef_environment;
  if (*a1)
  {
    goto LABEL_9;
  }

  v5 = [v1 shape];
  sub_27221982C(0, &qword_280881E98, 0x277CCABB0);
  v6 = sub_272377AFC();

  if ((v6 & 0xC000000000000001) != 0)
  {
    goto LABEL_72;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
  {
    for (i = *(v6 + 40); ; i = MEMORY[0x2743C5370](1, v6))
    {
      v8 = i;

      v9 = [v8 integerValue];

      v10 = sub_272258594(MEMORY[0x277D84F90], v9, &qword_280881858, &unk_27237C260);
      v11 = [v3 v4[4]];
      v12 = sub_272377AFC();

      if ((v12 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x2743C5370](0, v12);
      }

      else
      {
        if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_75;
        }

        v13 = *(v12 + 32);
      }

      v14 = v13;

      v15 = [v14 integerValue];

      v16 = sub_272258594(v10, v15, &qword_280881F28, &unk_272381E80);

      *a1 = v16;
LABEL_9:
      if ((sub_272257340() & 1) != 0 && [v3 dataType] == 65568)
      {
        v17 = v3;
      }

      else
      {
        v18 = [v3 v4[4]];
        sub_27221982C(0, &qword_280881E98, 0x277CCABB0);
        v19 = sub_272377AFC();

        v20 = objc_allocWithZone(MEMORY[0x277CBFF40]);
        v21 = sub_272257FA4(v19, 65568);
        if (v49)
        {
          return;
        }

        v17 = v21;
        v49 = 0;
        [v3 transferToMultiArray_];
      }

      v52 = [v17 dataPointer];
      v22 = &selRef_environment;
      v23 = [v17 strides];
      sub_27221982C(0, &qword_280881E98, 0x277CCABB0);
      v24 = sub_272377AFC();

      if ((v24 & 0xC000000000000001) == 0)
      {
        if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v25 = *(v24 + 32);
          goto LABEL_17;
        }

        __break(1u);
LABEL_68:
        v30 = MEMORY[0x2743C5370](0, v24);
        goto LABEL_23;
      }

      while (1)
      {
        v25 = MEMORY[0x2743C5370](0, v24);
LABEL_17:
        v26 = v25;

        v50 = [v26 integerValue];

        v6 = [v17 *(v22 + 48)];
        v27 = sub_272377AFC();

        v48 = v17;
        if ((v27 & 0xC000000000000001) == 0)
        {
          break;
        }

        v28 = MEMORY[0x2743C5370](1, v27);
LABEL_20:
        v29 = v28;

        v2 = [v29 integerValue];

        v6 = [v3 v4[4]];
        v24 = sub_272377AFC();

        if ((v24 & 0xC000000000000001) != 0)
        {
          goto LABEL_68;
        }

        if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_71;
        }

        v30 = *(v24 + 32);
LABEL_23:
        v6 = v30;

        v17 = [v6 integerValue];

        if (v17 < 0)
        {
          goto LABEL_70;
        }

        if (!v17)
        {
LABEL_55:

          return;
        }

        v22 = 0;
        v51 = v17;
        while (1)
        {
          v31 = [v3 v4[4]];
          v24 = sub_272377AFC();

          if ((v24 & 0xC000000000000001) != 0)
          {
            v32 = MEMORY[0x2743C5370](1, v24);
          }

          else
          {
            if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
            {
              goto LABEL_63;
            }

            v32 = *(v24 + 40);
          }

          v33 = v32;

          v34 = [v33 integerValue];

          if ((v34 & 0x8000000000000000) != 0)
          {
            break;
          }

          if (v34)
          {
            v53 = v22 * v50;
            if ((v22 * v50) >> 64 != (v22 * v50) >> 63)
            {
              goto LABEL_64;
            }

            v17 = 0;
            while (1)
            {
              v35 = v17 * v2;
              if ((v17 * v2) >> 64 != (v17 * v2) >> 63)
              {
                break;
              }

              v36 = v53 + v35;
              if (__OFADD__(v53, v35))
              {
                goto LABEL_58;
              }

              v37 = [v3 v4[4]];
              v24 = sub_272377AFC();

              if ((v24 & 0xC000000000000001) != 0)
              {
                v38 = MEMORY[0x2743C5370](2, v24);
              }

              else
              {
                if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
                {
                  goto LABEL_59;
                }

                v38 = *(v24 + 48);
              }

              v39 = v38;
              v4 = v3;

              v40 = [v39 integerValue];

              if (v40)
              {
                sub_2721F065C(&qword_280881848, &unk_27237C250);
                v3 = swift_allocObject();
                v41 = j__malloc_size(v3);
                v42 = v41 - 32;
                if (v41 < 32)
                {
                  v42 = v41 - 29;
                }

                v3[2] = v40;
                v3[3] = 2 * (v42 >> 2);
                memcpy(v3 + 4, &v52[4 * v36], 4 * v40);
              }

              else
              {
                v3 = MEMORY[0x277D84F90];
              }

              v24 = *a1;
              if (!*a1)
              {
                goto LABEL_76;
              }

              v43 = *a1;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v24 = sub_272258428(v24);
              }

              if (v22 >= *(v24 + 16))
              {
                goto LABEL_60;
              }

              v44 = *(v24 + 32 + 8 * v22);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *(v24 + 32 + 8 * v22) = v44;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v44 = sub_272200344(v44);
                *(v24 + 32 + 8 * v22) = v44;
              }

              if (v17 >= v44[2])
              {
                goto LABEL_61;
              }

              v46 = &v44[v17];
              v47 = v46[4];
              v46[4] = v3;

              *a1 = v24;
              ++v17;
              v3 = v4;
              v4 = &selRef_environment;
              if (v34 == v17)
              {
                goto LABEL_26;
              }
            }

            __break(1u);
LABEL_58:
            __break(1u);
LABEL_59:
            __break(1u);
LABEL_60:
            __break(1u);
LABEL_61:
            __break(1u);
            break;
          }

LABEL_26:
          ++v22;
          v17 = v51;
          if (v22 == v51)
          {
            goto LABEL_55;
          }
        }

        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
      }

      if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
      {
        break;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      ;
    }

    v28 = *(v27 + 40);
    goto LABEL_20;
  }

  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
}

void sub_272257E08(uint64_t *a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = [v1 shape];
  if (!v3)
  {
    sub_27221982C(0, &qword_280881E98, 0x277CCABB0);
    sub_272377AFC();
    v3 = sub_272377AEC();
  }

  sub_272257490();
  v4 = objc_allocWithZone(MEMORY[0x277CBFF40]);
  sub_27221982C(0, &qword_280881E98, 0x277CCABB0);
  v5 = sub_272377AEC();

  v10[0] = 0;
  v6 = [v4 initWithDataPointer:v2 + 32 shape:v3 dataType:65568 strides:v5 deallocator:0 error:v10];

  if (v6)
  {
    v7 = v10[0];
    [v6 transferToMultiArray_];
  }

  else
  {
    v8 = v10[0];
    sub_272376C6C();

    swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
}

id sub_272257FA4(uint64_t a1, uint64_t a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  sub_27221982C(0, &qword_280881E98, 0x277CCABB0);
  v4 = sub_272377AEC();

  v10[0] = 0;
  v5 = [v2 initWithShape:v4 dataType:a2 error:v10];

  if (v5)
  {
    v6 = v10[0];
  }

  else
  {
    v7 = v10[0];
    sub_272376C6C();

    swift_willThrow();
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

void *sub_2722580A0(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_5;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v3 = sub_27225814C(v2, 0);

    v1 = sub_272258470(&v5, v3 + 4, v2, v1);

    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = sub_2723783AC();
    if (!v2)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v3;
}

void *sub_27225814C(uint64_t a1, uint64_t a2)
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

  sub_2721F065C(&qword_280882098, &qword_27237E8B0);
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

uint64_t sub_2722581D4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

unint64_t sub_272258224()
{
  result = qword_280881918;
  if (!qword_280881918)
  {
    sub_272377ECC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881918);
  }

  return result;
}

unint64_t sub_27225827C()
{
  result = qword_280881928;
  if (!qword_280881928)
  {
    sub_2721F214C(&qword_280881920, &qword_27237C500);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881928);
  }

  return result;
}

uint64_t (*sub_2722582E0())(_BYTE *, void)
{
  result = (*(*v0 + 112))(v3);
  if (__OFADD__(*v2, 1))
  {
    __break(1u);
  }

  else
  {
    ++*v2;
    return result(v3, 0);
  }

  return result;
}

uint64_t sub_27225836C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_272258394(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t (*sub_2722583AC())(_BYTE *, void)
{
  result = (*(*v0 + 112))(v3);
  if (__OFSUB__(*v2, 1))
  {
    __break(1u);
  }

  else
  {
    --*v2;
    return result(v3, 0);
  }

  return result;
}

uint64_t sub_272258470(uint64_t result, void *a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v7 = result;
  if (!(a4 >> 62))
  {
    v8 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_24:
    v10 = v8;
    v8 = 0;
    goto LABEL_25;
  }

LABEL_23:
  result = sub_2723783AC();
  v8 = result;
  if (!v6)
  {
    goto LABEL_24;
  }

LABEL_3:
  if (!a3)
  {
    v10 = v8;
    v8 = 0;
LABEL_25:
    *v7 = a4;
    v7[1] = v10;
    return v8;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = 1;
    v10 = v8;
    while (v10)
    {
      v11 = __OFSUB__(v10--, 1);
      if (v11)
      {
        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      if ((a4 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x2743C5370](v10, a4);
      }

      else
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_20;
        }

        if (v10 >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v12 = *(a4 + 32 + 8 * v10);
      }

      *v6 = v12;
      if (a3 == v9)
      {
        v8 = a3;
        goto LABEL_25;
      }

      ++v6;
      v11 = __OFADD__(v9++, 1);
      if (v11)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

  __break(1u);
  return result;
}

uint64_t sub_272258594(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x277D84F90];
    }

    v5 = result;
    sub_2721F065C(a3, a4);
    v6 = sub_272377B5C();
    v7 = v6;
    *(v6 + 16) = a2;
    *(v6 + 32) = v5;
    v8 = a2 - 1;
    if (v8)
    {
      v9 = (v6 + 40);
      do
      {
        *v9++ = v5;

        --v8;
      }

      while (v8);
    }

    return v7;
  }

  return result;
}

unint64_t sub_272258628(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_21;
  }

  v9 = a3 - v8;
  if (__OFSUB__(a3, v8))
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v10 = *v7;
  v11 = (v10 + 32 + 4 * result);
  if (!v9)
  {
    goto LABEL_13;
  }

  v12 = *(v10 + 16);
  v13 = __OFSUB__(v12, a2);
  v14 = v12 - a2;
  if (v13)
  {
    goto LABEL_22;
  }

  result = v11 + 4 * a3;
  v15 = (v10 + 32 + 4 * a2);
  if (result != v15 || result >= v15 + 4 * v14)
  {
    v17 = a3;
    v18 = a6;
    v19 = a5;
    v20 = a7;
    result = memmove(result, v15, 4 * v14);
    a7 = v20;
    a5 = v19;
    a6 = v18;
    a3 = v17;
  }

  v21 = *(v10 + 16);
  v13 = __OFADD__(v21, v9);
  v22 = v21 + v9;
  if (v13)
  {
    goto LABEL_23;
  }

  *(v10 + 16) = v22;
LABEL_13:
  if (a3 < 1)
  {
    return result;
  }

  if (__OFSUB__(a7 >> 1, a6))
  {
    goto LABEL_24;
  }

  if ((a7 >> 1) - a6 != a3)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  v23 = 4 * a3;

  return memcpy(v11, (a5 + 4 * a6), v23);
}

unint64_t sub_272258744(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v8 = *v6;
  v9 = *(*v6 + 2);
  if (v9 < a2)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = result;
  v11 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v14 = __OFSUB__(v13, v11);
  v15 = v13 - v11;
  if (v14)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v16 = v9 + v15;
  if (__OFADD__(v9, v15))
  {
LABEL_19:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if (!isUniquelyReferenced_nonNull_native || v16 > *(v8 + 3) >> 1)
  {
    if (v9 <= v16)
    {
      v20 = v16;
    }

    else
    {
      v20 = v9;
    }

    v8 = sub_2721FF8B4(isUniquelyReferenced_nonNull_native, v20, 1, v8);
    *v6 = v8;
  }

  result = sub_272258628(v10, a2, v13, a3, a4, a5, a6);
  *v6 = v8;
  return result;
}

uint64_t sub_27225884C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  if ((a5 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = *(*v6 + 16);
  if (v7 < a5 || v7 < a6)
  {
    goto LABEL_14;
  }

  if (a6 < 0)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  if (*v6 + 4 * a5 + 32 != a2 + 4 * a3)
  {
    return sub_272258744(a5, a6, result, a2, a3, a4);
  }

  if ((a4 >> 1) < a3)
  {
    goto LABEL_16;
  }

  if (a5 != a3 || a4 >> 1 != a6)
  {
    return sub_272258744(a5, a6, result, a2, a3, a4);
  }

  return result;
}

unint64_t sub_2722588D0()
{
  result = qword_280882090;
  if (!qword_280882090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882090);
  }

  return result;
}

uint64_t sub_272258924(uint64_t a1, uint64_t a2)
{
  v5 = sub_27237728C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v48 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_opt_self();
  v10 = [v9 defaultManager];
  v11 = sub_2723777FC();
  v12 = [v10 fileExistsAtPath_];

  if (!v12)
  {
    v43 = v6;
    v44 = v2;
    v45 = v5;
    v18 = sub_2723777FC();
    v19 = [v18 pathExtension];

    sub_27237782C();
    v20 = sub_2723777FC();
    v21 = [v20 stringByDeletingPathExtension];

    sub_27237782C();
    v22 = sub_272255F24();
    if (v23)
    {
      v17 = v22;
      v24 = v23;
    }

    else
    {
      sub_272256018();
      v17 = v25;
      v24 = v26;

      if (!v24)
      {
        v46 = 0;
        v47 = 0xE000000000000000;
        sub_27237820C();
        MEMORY[0x2743C4AD0](0x2068637573206F4ELL, 0xEF203A6C65646F6DLL);
        MEMORY[0x2743C4AD0](a1, a2);
        MEMORY[0x2743C4AD0](0xD00000000000003BLL, 0x800000027238ADF0);
        goto LABEL_11;
      }
    }

    v27 = [v9 defaultManager];
    v28 = sub_2723777FC();
    v29 = [v27 isReadableFileAtPath_];

    v30 = v45;
    if (v29)
    {
      return v17;
    }

    v31 = sub_2722C389C();
    v32 = v43;
    v33 = v48;
    (*(v43 + 16))(v48, v31, v30);

    v34 = sub_27237725C();
    v35 = sub_272377E8C();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v46 = v37;
      *v36 = 136315138;
      *(v36 + 4) = sub_2721FFD04(v17, v24, &v46);
      _os_log_impl(&dword_2721E4000, v34, v35, "File not readable in %s", v36, 0xCu);
      sub_2722039C8(v37);
      MEMORY[0x2743C69C0](v37, -1, -1);
      MEMORY[0x2743C69C0](v36, -1, -1);
    }

    (*(v32 + 8))(v33, v30);
    v46 = 0;
    v47 = 0xE000000000000000;
    sub_27237820C();

    v46 = 0xD000000000000015;
    v47 = 0x800000027238AE30;
    MEMORY[0x2743C4AD0](v17, v24);

LABEL_11:
    v38 = v46;
    v39 = v47;
    sub_2722032B4();
    swift_allocError();
    *v40 = v38;
    v40[1] = v39;
    swift_willThrow();
    return v17;
  }

  v13 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v14 = sub_2723777FC();
  v15 = [v13 initWithString_];

  v16 = [v15 stringByStandardizingPath];
  v17 = sub_27237782C();

  return v17;
}

unint64_t sub_272258E2C()
{
  result = qword_2808820A0;
  if (!qword_2808820A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808820A0);
  }

  return result;
}

unint64_t sub_272258E84()
{
  result = qword_2808820A8;
  if (!qword_2808820A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808820A8);
  }

  return result;
}

unint64_t sub_272258EDC()
{
  result = qword_2808820B0;
  if (!qword_2808820B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808820B0);
  }

  return result;
}

unint64_t sub_272258F34()
{
  result = qword_2808820B8;
  if (!qword_2808820B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808820B8);
  }

  return result;
}

unint64_t sub_272258F98()
{
  result = qword_2808820C0;
  if (!qword_2808820C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808820C0);
  }

  return result;
}

__n128 sub_272259024(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_272259038(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_272259080(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_272259134()
{
  sub_2722032B4();
  swift_allocError();
  *v0 = 0xD00000000000001ELL;
  v0[1] = 0x800000027238AE50;
  return swift_willThrow();
}

void *sub_2722592C4()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

void sub_272259308(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t VAA2AAudioEncoderModelV3.__allocating_init(computeUnits:)(char *a1)
{
  v2 = swift_allocObject();
  VAA2AAudioEncoderModelV3.init(computeUnits:)(a1);
  return v2;
}

uint64_t VAA2AAudioEncoderModelV3.init(computeUnits:)(char *a1)
{
  v3 = *a1;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  v4 = [objc_allocWithZone(MEMORY[0x277CBFF30]) init];
  sub_2722595A4();
  sub_272377A8C();
  sub_272377A8C();
  if (v13 == v11 && v14 == v12)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_27237865C();

    if (v6)
    {
      v5 = 0;
    }

    else
    {
      sub_272377A8C();
      sub_272377A8C();
      if (v13 == v11 && v14 == v12)
      {
      }

      else
      {
        v7 = sub_27237865C();

        if ((v7 & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      v5 = 3;
    }
  }

  [v4 setComputeUnits_];
LABEL_12:
  type metadata accessor for aa_encoder_125141826();
  v8 = sub_272332068(v4);
  if (v2)
  {
    v9 = *(v1 + 24);

    type metadata accessor for VAA2AAudioEncoderModelV3();
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v1 + 16) = v8;
  }

  return v1;
}

unint64_t sub_2722595A4()
{
  result = qword_2808820C8;
  if (!qword_2808820C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808820C8);
  }

  return result;
}

char *sub_27225961C(uint64_t a1)
{
  v3 = v1;
  v5 = ((*v1)[16])();
  if (!v5)
  {
    sub_2721F065C(&qword_280882098, &qword_27237E8B0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_27237E500;
    v23 = *(a1 + 16);
    result = sub_272377DBC();
    *(v22 + 32) = result;
    if (!v23)
    {
      goto LABEL_35;
    }

    v24 = *(*(a1 + 32) + 16);
    *(v22 + 40) = sub_272377DBC();
    v25 = objc_allocWithZone(MEMORY[0x277CBFF40]);
    v26 = v22;
    v27 = v25;
    v5 = sub_272257FA4(v26, 65568);
    if (v2)
    {
      return v27;
    }
  }

  v6 = (*v3)[17];
  v7 = v5;
  v36 = v5;
  result = v6(v7);
  v9 = *(a1 + 16);
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
LABEL_23:
    v38 = v11;
    v27 = v36;
    sub_272257E08(&v38);
    if (v2)
    {
    }

    else
    {

      type metadata accessor for aa_encoder_125141826Input();
      v28 = v36;
      sub_272276D68();
      v29 = (*(*v3[2] + 136))();
      v30 = (*(*v29 + 88))(v29);

      v31 = ((*v3)[15])(v37);
      sub_272257728(v32);
      v33 = v31(v37, 0);
      v34 = ((*v3)[13])(v33);
      if (v34)
      {
        v27 = v34;
      }

      else
      {
        v27 = 0x800000027238AEC0;
        sub_2722032B4();
        swift_allocError();
        *v35 = 0xD00000000000001ELL;
        v35[1] = 0x800000027238AEC0;
        swift_willThrow();
      }
    }

    return v27;
  }

  v10 = (a1 + 32);
  v11 = MEMORY[0x277D84F90];
  while (1)
  {
    v12 = *v10;
    v13 = *(*v10 + 16);
    v14 = *(v11 + 16);
    v15 = v14 + v13;
    if (__OFADD__(v14, v13))
    {
      break;
    }

    v16 = *v10;

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v15 <= *(v11 + 24) >> 1)
    {
      if (*(v12 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v14 <= v15)
      {
        v17 = v14 + v13;
      }

      else
      {
        v17 = v14;
      }

      result = sub_2721FF8B4(result, v17, 1, v11);
      v11 = result;
      if (*(v12 + 16))
      {
LABEL_15:
        v18 = *(v11 + 16);
        if ((*(v11 + 24) >> 1) - v18 < v13)
        {
          goto LABEL_33;
        }

        memcpy((v11 + 4 * v18 + 32), (v12 + 32), 4 * v13);

        if (v13)
        {
          v19 = *(v11 + 16);
          v20 = __OFADD__(v19, v13);
          v21 = v19 + v13;
          if (v20)
          {
            goto LABEL_34;
          }

          *(v11 + 16) = v21;
        }

        goto LABEL_5;
      }
    }

    if (v13)
    {
      goto LABEL_32;
    }

LABEL_5:
    ++v10;
    if (!--v9)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t VAA2AAudioEncoderModelV3.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t VAA2AAudioEncoderModelV3.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t VAA2AAudioEncoderModelV3E1.__allocating_init(computeUnits:)(char *a1)
{
  v2 = swift_allocObject();
  VAA2AAudioEncoderModelV3E1.init(computeUnits:)(a1);
  return v2;
}

_OWORD *VAA2AAudioEncoderModelV3E1.init(computeUnits:)(char *a1)
{
  v3 = *a1;
  type metadata accessor for VAEspressoUtils();
  v11 = v3;
  v4 = sub_2722CBCD4();
  v6 = v5;
  v7 = sub_2721F7EE4();
  static VAEspressoUtils.loadModel(_:computeUnits:espressoPrefix:debug:)(0xD00000000000001DLL, 0x800000027238AEA0, &v11, v4, v6, v7 & 1, v12);

  if (v2)
  {
    type metadata accessor for VAA2AAudioEncoderModelV3E1();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v8 = v13[0];
    v1[3] = v12[2];
    v1[4] = v8;
    *(v1 + 73) = *(v13 + 9);
    v9 = v12[1];
    v1[1] = v12[0];
    v1[2] = v9;
  }

  return v1;
}

uint64_t sub_272259C18(void *a1)
{
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *sub_2722CB8B0();
  sub_2722CB8C8();
  result = sub_2722CB8D0(&v9);
  if (!v2)
  {
    sub_2722CB5A8(a1);
    v8 = *sub_2722CB8BC();
    sub_2722CB8C8();
    sub_2722CB8D0(v10);
    sub_2722CB800(*(v1 + 16));
    return sub_2722CB110();
  }

  return result;
}

void *VAA2AAudioEncoderModelV3E1.deinit()
{
  v1 = v0[6];
  v2 = v0[8];
  v3 = v0[10];

  return v0;
}

uint64_t VAA2AAudioEncoderModelV3E1.__deallocating_deinit()
{
  v1 = v0[6];
  v2 = v0[8];
  v3 = v0[10];

  return swift_deallocClassInstance();
}

_OWORD *VAA2AAudioEncoderModelV3E5.__allocating_init()()
{
  v1 = swift_allocObject();
  type metadata accessor for VAEspressoUtilsV2();
  v2 = sub_2721F7EE4();
  sub_2723195D0(0xD000000000000017, 0x800000027238AEE0, v2 & 1, v5);
  if (v0)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v3 = v5[1];
    v1[1] = v5[0];
    v1[2] = v3;
    v1[3] = v5[2];
  }

  return v1;
}

_OWORD *VAA2AAudioEncoderModelV3E5.init()()
{
  type metadata accessor for VAEspressoUtilsV2();
  v2 = sub_2721F7EE4();
  sub_2723195D0(0xD000000000000017, 0x800000027238AEE0, v2 & 1, v5);
  if (v1)
  {
    type metadata accessor for VAA2AAudioEncoderModelV3E5();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v3 = v5[1];
    v0[1] = v5[0];
    v0[2] = v3;
    v0[3] = v5[2];
  }

  return v0;
}

uint64_t sub_272259F80(uint64_t a1)
{
  v7 = v1[1];
  v8 = v1[2];
  v9 = v1[3];
  result = sub_272319394(0x61775F7475706E69, 0xE900000000000076);
  if (!v2)
  {
    (*(*result + 640))(a1);

    sub_272275B0C();
    v5 = sub_2723194B0(0x6F5F64335F636E65, 0xED00007475707475);
    v6 = (*(*v5 + 744))(v5);

    return v6;
  }

  return result;
}

void *VAA2AAudioEncoderModelV3E5.deinit()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];

  return v0;
}

uint64_t VAA2AAudioEncoderModelV3E5.__deallocating_deinit()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];

  return swift_deallocClassInstance();
}

uint64_t sub_27225A3A0()
{
  sub_27221982C(0, &qword_280882130, 0x277D86200);
  result = OS_os_log.init(category:)();
  qword_280893A48 = result;
  return result;
}

uint64_t sub_27225A430(float a1)
{
  result = swift_beginAccess();
  *(v1 + 120) = a1;
  return result;
}

uint64_t sub_27225A4A4(float a1)
{
  result = swift_beginAccess();
  *(v1 + 124) = a1;
  return result;
}

uint64_t sub_27225A570(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *a1) + 0x78);
  v6 = v5();
  (*((*v4 & *v6) + 0x68))();

  v7 = v33;
  sub_27225B344(1, 0, v33);
  v8 = v34;
  if (v34)
  {
    goto LABEL_4;
  }

  if (qword_280887E20 != -1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    OS_os_log.info(_:_:)("Failed to init neural net in normal flow, will init it on CPU directly", 70, 2, MEMORY[0x277D84F90]);
    v7 = v35;
    sub_27225B344(0, 0, v35);
    v8 = v36;
    if (!v36)
    {
      break;
    }

LABEL_4:
    v27 = v5;
    v29 = *(v7 + 6);
    v9 = v7[2];
    v10 = *((*v4 & *a1) + 0x90);
    v5 = v4;
    v4 = ((*v4 & *a1) + 144);
    v28 = *v7;
    v11 = v10();
    v12 = (*((*v5 & *v11) + 0x100))();

    v13 = v10();
    v14 = (*((*v5 & *v13) + 0x118))();

    *(v2 + 104) = v12;
    *(v2 + 112) = v14;
    *(v2 + 16) = v28;
    *(v2 + 32) = v9;
    *(v2 + 40) = v29;
    if (!*(v8 + 16))
    {
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v15 = sub_27220038C(0x4474757074754F3CLL, 0xEC0000003E617461);
    if ((v16 & 1) == 0)
    {
      goto LABEL_14;
    }

    sub_2722041FC(*(v8 + 56) + 32 * v15, v31);
    sub_27221981C(v31, v32);
    swift_dynamicCast();
    *(v2 + 48) = v30;
    if (!*(v8 + 16))
    {
      goto LABEL_15;
    }

    v17 = sub_27220038C(0x61447475706E493CLL, 0xEB000000003E6174);
    if ((v18 & 1) == 0)
    {
      goto LABEL_16;
    }

    sub_2722041FC(*(v8 + 56) + 32 * v17, v31);
    sub_27221981C(v31, v32);
    swift_dynamicCast();
    *(v2 + 64) = v30;
    if (!*(v8 + 16))
    {
      goto LABEL_17;
    }

    v19 = sub_27220038C(0xD000000000000011, 0x800000027238B060);
    if (v20)
    {
      sub_2722041FC(*(v8 + 56) + 32 * v19, v31);

      sub_27221981C(v31, v32);
      sub_2721F065C(&qword_2808820D0, &qword_27237E9B0);
      v21 = swift_dynamicCast();
      *(v2 + 80) = v30;
      *(v2 + 96) = 54;
      v22 = (v27)(v21);
      v23 = (*((*v5 & *v22) + 0x80))();

      *(v2 + 120) = v23;
      v24 = v27();
      v25 = (*((*v5 & *v24) + 0x98))();

      *(v2 + 124) = v25;

      return v2;
    }

LABEL_18:
    __break(1u);
LABEL_19:
    swift_once();
  }

  type metadata accessor for NeuralNet();
  OS_os_log.info(_:_:)("Failed to init neural net after two attempts", 44, 2, MEMORY[0x277D84F90]);

  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_27225AA68()
{
  v1 = v0[3];
  espresso_context_destroy();
  v2 = v0[2];
  espresso_plan_destroy();
  v3 = v0[7];

  v4 = v0[9];

  return swift_deallocClassInstance();
}

uint64_t sub_27225AAB8(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  if (v3 != *(v1 + 104))
  {
    __break(1u);
    goto LABEL_10;
  }

  if (!v3)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (*(*(a1 + 32) + 16) != *(v1 + 112))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 64);
  v7 = *(v1 + 72);
  v8 = *sub_2722CB8B0();
  sub_2722CB8C8();
  sub_2722CB8D0(&v19);
  v9 = *(v1 + 48);
  v10 = *(v1 + 56);
  v11 = *sub_2722CB8BC();
  sub_2722CB8C8();
  v12 = sub_2722CB8D0(&v20);
  MEMORY[0x28223BE20](v12);
  sub_2722CB3F0(sub_27225C6BC);
  sub_2722CB800(*(v1 + 16));
  v13 = *(v1 + 88);
  if (v13 < 0)
  {
LABEL_12:
    __break(1u);
    swift_unexpectedError();
    __break(1u);
    swift_unexpectedError();
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  if (v13)
  {
    v14 = *(v1 + 88);
    v15 = sub_272377B5C();
    *(v15 + 16) = v13;
    bzero((v15 + 32), 4 * v13);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  v16 = sub_27220392C(v15, *(v2 + 80));

  MEMORY[0x28223BE20](v17);
  sub_2722CB3F0(sub_27225C768);
  return v16;
}

uint64_t sub_27225AD2C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_2721F065C(&qword_280881A68, &unk_272382740);
  v36 = a2;
  result = sub_2723783DC();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_27221981C(v25, v37);
      }

      else
      {
        sub_2722041FC(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_27237874C();
      sub_27237790C();
      result = sub_27237878C();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_27221981C(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

_OWORD *sub_27225AFE4(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_27220038C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_27225B1A0();
      v11 = v19;
      goto LABEL_8;
    }

    sub_27225AD2C(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_27220038C(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_2723786BC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    sub_2722039C8(v23);

    return sub_27221981C(a1, v23);
  }

  else
  {
    sub_27225B134(v11, a2, a3, a1, v22);
  }
}

_OWORD *sub_27225B134(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_27221981C(a4, (a5[7] + 32 * a1));
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

void *sub_27225B1A0()
{
  v1 = v0;
  sub_2721F065C(&qword_280881A68, &unk_272382740);
  v2 = *v0;
  v3 = sub_2723783CC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_2722041FC(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_27221981C(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void sub_27225B344(char a1@<W2>, int a2@<W3>, uint64_t *a3@<X8>)
{
  LODWORD(v3) = a2;
  v132[1] = *MEMORY[0x277D85DE8];
  v6 = sub_272376BCC();
  v119 = *(v6 - 1);
  v7 = *(v119 + 64);
  MEMORY[0x28223BE20](v6);
  v118 = &v113 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_27237788C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v126 = &v113 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = &unk_280887000;
  if (a1)
  {
    context = espresso_create_context();
    v132[0] = context;
    if (context)
    {
      v14 = context;
      if (qword_280887E20 != -1)
      {
        goto LABEL_118;
      }

      goto LABEL_4;
    }

    if (qword_280887E20 != -1)
    {
      swift_once();
    }

    v15 = qword_280893A48;
    v18 = MEMORY[0x277D84F90];
    OS_os_log.info(_:_:)("Not able to utilized ANE; will use CPU instead", 46, 2, MEMORY[0x277D84F90]);
    v14 = espresso_create_context();
    v132[0] = v14;
    v17 = v18;
  }

  else
  {
    v14 = espresso_create_context();
    v132[0] = v14;
    if (qword_280887E20 != -1)
    {
LABEL_113:
      swift_once();
    }

    v15 = qword_280893A48;
    v17 = MEMORY[0x277D84F90];
  }

  OS_os_log.info(_:_:)("Will run acoustic model on CPU", 30, 2, v17);
  v123 = 0;
  if ((v3 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_14:
  if (v12[452] != -1)
  {
    swift_once();
  }

  sub_2721F065C(&qword_280881CB0, qword_27237D820);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_27237AF80;
  *(v19 + 56) = sub_2721F065C(&qword_280882120, &qword_27237EA70);
  *(v19 + 64) = sub_27225CBBC(&qword_280882128, &qword_280882120, &qword_27237EA70);
  *(v19 + 32) = v132;
  OS_os_log.debug(_:_:)("Pointer of espresso_context_ref_t %@", 36, 2, v19);

  v116 = v132[0];
  plan = espresso_create_plan();
  if (!plan)
  {
LABEL_119:
    __break(1u);
  }

  v128 = plan;
LABEL_18:
  if (v12[452] != -1)
  {
LABEL_109:
    swift_once();
  }

  sub_2721F065C(&qword_280881CB0, qword_27237D820);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_27237AF80;
  *(v21 + 56) = sub_2721F065C(&qword_280882110, &qword_272382F00);
  *(v21 + 64) = sub_27225CBBC(&qword_280882118, &qword_280882110, &qword_272382F00);
  *(v21 + 32) = &v128;
  OS_os_log.debug(_:_:)("Pointer of espresso_plan_ref_t", 30, 2, v21);

LABEL_20:
  v117 = v6;
  v22 = sub_27227BBF8();
  v23 = *v22;
  v24 = v22[1];

  LOBYTE(v23) = sub_2723779FC();

  if (v23)
  {
    sub_2722560E0();
    if (v26)
    {
      v27 = v25;
    }

    else
    {
      v27 = 0;
    }

    v125 = v27;
    if (v26)
    {
      v28 = v26;
    }

    else
    {
      v28 = 0xE000000000000000;
    }

    sub_2722560E0();
    if (v30)
    {
      v31 = v29;
    }

    else
    {
      v31 = 0;
    }

    if (v30)
    {
      v32 = v30;
    }

    else
    {
      v32 = 0xE000000000000000;
    }

    if ((v3 & 1) == 0)
    {
      v34 = v28;
      goto LABEL_48;
    }

    if (v12[452] != -1)
    {
      swift_once();
    }

    sub_2721F065C(&qword_280881CB0, qword_27237D820);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_27237AF80;
    *(v33 + 56) = MEMORY[0x277D837D0];
    *(v33 + 64) = sub_27225CAF0();
    *(v33 + 32) = v125;
    *(v33 + 40) = v28;
    v34 = v28;

    OS_os_log.debug(_:_:)("Path for the model file is %@", 29, 2, v33);
  }

  else
  {
    v124 = v15;
    v122 = v3;
    v121 = a3;
    v35 = objc_allocWithZone(MEMORY[0x277CCACA8]);
    v36 = sub_2723777FC();
    v37 = [v35 initWithString_];

    v38 = [v37 stringByStandardizingPath];
    v39 = sub_27237782C();
    v41 = v40;

    *&v130 = v39;
    *(&v130 + 1) = v41;

    MEMORY[0x2743C4AD0](0x6E6F632E74656E2ELL, 0xEB00000000676966);
    v42 = *(&v130 + 1);
    v31 = v130;
    v43 = objc_opt_self();
    v44 = [v43 defaultManager];
    v32 = v42;
    v45 = sub_2723777FC();
    v46 = [v44 isReadableFileAtPath_];

    if ((v46 & 1) == 0)
    {
      if (qword_280887E20 != -1)
      {
        swift_once();
      }

      sub_2721F065C(&qword_280881CB0, qword_27237D820);
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_27237AF80;
      *(v47 + 56) = MEMORY[0x277D837D0];
      *(v47 + 64) = sub_27225CAF0();
      *(v47 + 32) = v31;
      *(v47 + 40) = v32;
      OS_os_log.error(_:_:)("Network config not found in %@", 30, 2, v47);

      v31 = 0;
      v32 = 0xE000000000000000;
    }

    *&v130 = v39;
    *(&v130 + 1) = v41;

    MEMORY[0x2743C4AD0](1952804398, 0xE400000000000000);

    v48 = v130;

    v49 = [v43 defaultManager];
    v125 = v48;
    v50 = sub_2723777FC();

    v51 = [v49 isReadableFileAtPath_];

    if (v51)
    {
      a3 = v121;
      LODWORD(v3) = v122;
      v15 = v124;
      goto LABEL_48;
    }

    a3 = v121;
    LODWORD(v3) = v122;
    v15 = v124;
    if (qword_280887E20 != -1)
    {
      swift_once();
    }

    sub_2721F065C(&qword_280881CB0, qword_27237D820);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_27237AF80;
    *(v52 + 56) = MEMORY[0x277D837D0];
    *(v52 + 64) = sub_27225CAF0();
    *(v52 + 32) = v125;
    *(v52 + 40) = v34;

    OS_os_log.error(_:_:)("Network not found in %@", 23, 2, v52);

    v125 = 0;
    v34 = 0xE000000000000000;
  }

LABEL_48:
  v53 = HIBYTE(v32) & 0xF;
  if ((v32 & 0x2000000000000000) == 0)
  {
    v53 = v31 & 0xFFFFFFFFFFFFLL;
  }

  if (!v53)
  {
    goto LABEL_55;
  }

  v54 = HIBYTE(v34) & 0xF;
  if ((v34 & 0x2000000000000000) == 0)
  {
    v54 = v125 & 0xFFFFFFFFFFFFLL;
  }

  if (!v54)
  {
LABEL_55:

    v108 = 0;
    v109 = 0;
    v110 = 0;
    v111 = 0;
    v6 = 0;
LABEL_103:
    *a3 = v108;
    a3[1] = v109;
    a3[2] = v110;
    a3[3] = v111;
    a3[4] = v6;
    v112 = *MEMORY[0x277D85DE8];
    return;
  }

  v120 = v34;
  sub_27237787C();
  v55 = sub_2723777EC();
  v124 = v15;
  v115 = v32;
  v114 = 0;
  v122 = v3;
  *&v130 = v55;
  *(&v130 + 1) = v56;
  v57 = v118;
  sub_272376BBC();
  v12 = sub_272203AC4();
  v58 = MEMORY[0x277D837D0];
  v15 = &v130;
  v59 = sub_2723780AC();
  (*(v119 + 8))(v57, v117);

  v126 = *(v59 + 16);
  if (v126)
  {
    v121 = a3;
    v14 = 0;
    v119 = 0x800000027238B060;
    a3 = (v59 + 40);
    v6 = MEMORY[0x277D84F98];
    LODWORD(v3) = 0;
    while (1)
    {
      if (v14 >= *(v59 + 16))
      {
        __break(1u);
LABEL_107:
        __break(1u);
LABEL_108:
        __break(1u);
        goto LABEL_109;
      }

      v61 = *(a3 - 1);
      v60 = *a3;
      *&v130 = v61;
      *(&v130 + 1) = v60;
      strcpy(v129, "<OutputData>");
      BYTE13(v129[0]) = 0;
      HIWORD(v129[0]) = -5120;

      v15 = &v130;
      if (sub_27237813C())
      {
        break;
      }

      *&v130 = v61;
      *(&v130 + 1) = v60;
      strcpy(v129, "<InputData>");
      HIDWORD(v129[0]) = -352321536;
      if (sub_27237813C())
      {
        *&v130 = v61;
        *(&v130 + 1) = v60;
        *&v129[0] = 32;
        *(&v129[0] + 1) = 0xE100000000000000;
        v72 = sub_2723780BC();

        v131 = v58;
        if (v72[2] < 2uLL)
        {
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
          goto LABEL_113;
        }

        v74 = v72[6];
        v73 = v72[7];

        *&v130 = v74;
        *(&v130 + 1) = v73;
        sub_27221981C(&v130, v129);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v127[0] = v6;
        v15 = v6;
        v76 = sub_27220038C(0x61447475706E493CLL, 0xEB000000003E6174);
        v78 = v6[2];
        v79 = (v77 & 1) == 0;
        v80 = __OFADD__(v78, v79);
        v81 = v78 + v79;
        if (v80)
        {
          goto LABEL_111;
        }

        v82 = v77;
        if (v6[3] < v81)
        {
          sub_27225AD2C(v81, isUniquelyReferenced_nonNull_native);
          v15 = v127[0];
          v76 = sub_27220038C(0x61447475706E493CLL, 0xEB000000003E6174);
          if ((v82 & 1) != (v83 & 1))
          {
            goto LABEL_121;
          }

          goto LABEL_86;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
LABEL_86:
          v6 = v127[0];
          if ((v82 & 1) == 0)
          {
            goto LABEL_90;
          }
        }

        else
        {
          v15 = v127;
          v98 = v76;
          sub_27225B1A0();
          v76 = v98;
          v6 = v127[0];
          if ((v82 & 1) == 0)
          {
LABEL_90:
            v6[(v76 >> 6) + 8] |= 1 << v76;
            v99 = (v6[6] + 16 * v76);
            *v99 = 0x61447475706E493CLL;
            v99[1] = 0xEB000000003E6174;
            sub_27221981C(v129, (v6[7] + 32 * v76));
            v100 = v6[2];
            v80 = __OFADD__(v100, 1);
            v97 = v100 + 1;
            if (v80)
            {
              goto LABEL_117;
            }

            goto LABEL_91;
          }
        }

        v15 = (v6[7] + 32 * v76);
LABEL_88:
        sub_2722039C8(v15);
        sub_27221981C(v129, v15);
        goto LABEL_59;
      }

      *&v130 = v61;
      *(&v130 + 1) = v60;
      *&v129[0] = 0xD000000000000011;
      *(&v129[0] + 1) = v119;
      if (sub_27237813C())
      {
        *&v130 = v61;
        *(&v130 + 1) = v60;
        *&v129[0] = 32;
        *(&v129[0] + 1) = 0xE100000000000000;
        v84 = sub_2723780BC();

        if (v84[2] < 2uLL)
        {
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          swift_once();
LABEL_4:
          v15 = qword_280893A48;
          OS_os_log.info(_:_:)("Will run acoustic model on ANE", 30, 2, MEMORY[0x277D84F90]);
          v123 = 1;
          if ((v3 & 1) == 0)
          {
LABEL_5:
            v116 = v14;
            v16 = espresso_create_plan();
            if (!v16)
            {
              goto LABEL_119;
            }

            v128 = v16;
            if ((v3 & 1) == 0)
            {
              goto LABEL_20;
            }

            goto LABEL_18;
          }

          goto LABEL_14;
        }

        v86 = v84[6];
        v85 = v84[7];

        *&v130 = v86;
        *(&v130 + 1) = v85;
        *&v129[0] = 44;
        *(&v129[0] + 1) = 0xE100000000000000;
        v87 = sub_2723780BC();

        v131 = sub_2721F065C(&qword_280882108, &unk_27237EA60);
        v88 = swift_allocObject();
        *&v130 = v88;
        if (v87[2] < 3uLL)
        {
          goto LABEL_115;
        }

        v89 = v88;
        v90 = v87[8];
        v3 = v87[9];

        *(v89 + 16) = sub_2721F58F8(v90, v3);
        *(v89 + 24) = v91 & 1;
        if (v87[2] < 4uLL)
        {
          goto LABEL_116;
        }

        v92 = v87[10];
        v3 = v87[11];

        *(v89 + 32) = sub_2721F58F8(v92, v3);
        *(v89 + 40) = v93 & 1;
        sub_27221981C(&v130, v129);
        v94 = swift_isUniquelyReferenced_nonNull_native();
        v127[0] = v6;
        v15 = v127;
        sub_27225AFE4(v129, 0xD000000000000011, v119, v94);
        v6 = v127[0];
        LODWORD(v3) = 0;
      }

      else
      {
      }

LABEL_59:
      ++v14;
      a3 += 2;
      if (v126 == v14)
      {

        a3 = v121;
        goto LABEL_94;
      }
    }

    *&v129[0] = v61;
    *(&v129[0] + 1) = v60;
    v127[0] = 32;
    v127[1] = 0xE100000000000000;
    v15 = sub_2723780BC();

    v131 = v58;
    if (v15[2] < 2)
    {
      goto LABEL_107;
    }

    v63 = v15[6];
    v62 = v15[7];

    *&v130 = v63;
    *(&v130 + 1) = v62;
    sub_27221981C(&v130, v129);
    LODWORD(v3) = swift_isUniquelyReferenced_nonNull_native();
    v127[0] = v6;
    v15 = v6;
    v65 = sub_27220038C(0x4474757074754F3CLL, 0xEC0000003E617461);
    v66 = v6[2];
    v67 = (v64 & 1) == 0;
    v68 = v66 + v67;
    if (__OFADD__(v66, v67))
    {
      goto LABEL_108;
    }

    v69 = v64;
    if (v6[3] >= v68)
    {
      if ((v3 & 1) == 0)
      {
        v15 = v127;
        sub_27225B1A0();
      }
    }

    else
    {
      sub_27225AD2C(v68, v3);
      v15 = v127[0];
      v70 = sub_27220038C(0x4474757074754F3CLL, 0xEC0000003E617461);
      if ((v69 & 1) != (v71 & 1))
      {
        goto LABEL_121;
      }

      v65 = v70;
    }

    LODWORD(v3) = 0;
    v6 = v127[0];
    if ((v69 & 1) == 0)
    {
      *(v127[0] + 8 * (v65 >> 6) + 64) |= 1 << v65;
      v95 = v6[6] + 16 * v65;
      strcpy(v95, "<OutputData>");
      *(v95 + 13) = 0;
      *(v95 + 14) = -5120;
      sub_27221981C(v129, (v6[7] + 32 * v65));
      v96 = v6[2];
      v80 = __OFADD__(v96, 1);
      v97 = v96 + 1;
      if (v80)
      {
        goto LABEL_112;
      }

LABEL_91:
      v6[2] = v97;
      goto LABEL_59;
    }

    v15 = (*(v127[0] + 56) + 32 * v65);
    goto LABEL_88;
  }

  v6 = MEMORY[0x277D84F98];
LABEL_94:
  v101 = v122;
  v102 = v114;
  v108 = v128;
  if (v123)
  {
    v103 = sub_2722CB6D0();
  }

  else
  {
    v103 = sub_2722CB59C();
  }

  v104 = *v103;
  v105 = sub_2722CB6DC();
  if (!v102)
  {
    *&v130 = v105;
    DWORD2(v130) = v106;
    if (v101)
    {
      if (qword_280887E20 != -1)
      {
        swift_once();
      }

      sub_2721F065C(&qword_280881CB0, qword_27237D820);
      v107 = swift_allocObject();
      *(v107 + 16) = xmmword_27237AF80;
      *(v107 + 56) = sub_2721F065C(&qword_2808820F8, &qword_27237EA58);
      *(v107 + 64) = sub_27225CBBC(&qword_280882100, &qword_2808820F8, &qword_27237EA58);
      *(v107 + 32) = &v130;
      OS_os_log.debug(_:_:)("Pointer of espresso_network_t %@", 32, 2, v107);
    }

    sub_2722CB7D4(v108);
    v109 = v116;
    if (v116)
    {

      v110 = v130;
      v111 = DWORD2(v130);
      goto LABEL_103;
    }

    __break(1u);
LABEL_121:
    sub_2723786BC();
    __break(1u);
  }

  swift_unexpectedError();
  __break(1u);
}

uint64_t sub_27225C6BC(uint64_t result)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 104);
  if (v3 < 0)
  {
    goto LABEL_19;
  }

  if (v3)
  {
    v4 = *(v2 + 112);
    if (v4 < 0)
    {
LABEL_20:
      __break(1u);
      return result;
    }

    v5 = 0;
    v6 = *(v1 + 24);
    while (!v4)
    {
LABEL_5:
      if (++v5 == v3)
      {
        return result;
      }
    }

    v7 = v5 * v4;
    if ((v5 * v4) >> 64 == (v5 * v4) >> 63)
    {
      if (v5 >= *(v6 + 16))
      {
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      v8 = 0;
      v9 = *(v6 + 32 + 8 * v5);
      v10 = v9 + 32;
      v11 = *(v9 + 16);
      while (!__OFADD__(v7, v8))
      {
        if (v11 == v8)
        {
          goto LABEL_16;
        }

        *(result + 4 * (v7 + v8)) = *(v10 + 4 * v8);
        if (v4 == ++v8)
        {
          goto LABEL_5;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
    }

    __break(1u);
    goto LABEL_18;
  }

  return result;
}

void sub_27225C768(uint64_t a1)
{
  v4 = v1;
  v5 = *(v1 + 16);
  v6 = v5[10];
  if ((v6 & 0x8000000000000000) != 0)
  {
    goto LABEL_43;
  }

  if (v6)
  {
    v24 = v5[11];
    if (v24 < 0)
    {
      goto LABEL_44;
    }

    v3 = *(v4 + 24);
    v2 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v3 = v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_45;
    }

    while (1)
    {
      v8 = 0;
      *v3 = v2;
      v23 = v6;
      while (1)
      {
        if (v8 >= v6)
        {
          goto LABEL_40;
        }

        if (__OFADD__(v8, 1))
        {
          goto LABEL_41;
        }

        v25 = v8 + 1;
        if (v24)
        {
          break;
        }

LABEL_6:
        ++v8;
        v6 = v23;
        if (v25 == v23)
        {
          return;
        }
      }

      v27 = v8 * v24;
      if ((v8 * v24) >> 64 == (v8 * v24) >> 63)
      {
        v2 = *v3;
        v9 = swift_isUniquelyReferenced_nonNull_native();
        *v3 = v2;
        if ((v9 & 1) == 0)
        {
          v2 = sub_272200344(v2);
        }

        v10 = *(*v5 + 160);
        v6 = *v5 + 160;
        *v3 = v2;
        v11 = 8;
        while (1)
        {
          v12 = v11 - 8;
          if (__OFADD__(v27, v11 - 8))
          {
            break;
          }

          v13 = *(a1 + 4 * (v27 + v11 - 8));
          v2 = *v3;
          v14 = swift_isUniquelyReferenced_nonNull_native();
          *v3 = v2;
          if ((v14 & 1) == 0)
          {
            v2 = sub_272200344(v2);
            *v3 = v2;
          }

          if (v8 >= v2[2])
          {
            goto LABEL_34;
          }

          v15 = v2 + 4;
          v2 = v2[v8 + 4];
          v16 = swift_isUniquelyReferenced_nonNull_native();
          v15[v8] = v2;
          if ((v16 & 1) == 0)
          {
            v2 = sub_2722002AC(v2);
            v15[v8] = v2;
          }

          if (v12 >= v2[2])
          {
            goto LABEL_35;
          }

          *(v2 + v11) = v13;
          if (v8 >= *(*v3 + 16))
          {
            goto LABEL_36;
          }

          v17 = *(*v3 + 8 * v8 + 32);
          if (v12 >= *(v17 + 16))
          {
            goto LABEL_37;
          }

          v18 = *(v17 + 4 * v11);
          if (v18 < v10())
          {
            v19 = (*(*v5 + 184))();
            v2 = *v3;
            v20 = swift_isUniquelyReferenced_nonNull_native();
            *v3 = v2;
            if ((v20 & 1) == 0)
            {
              v2 = sub_272200344(v2);
              *v3 = v2;
            }

            if (v8 >= v2[2])
            {
              goto LABEL_38;
            }

            v21 = v2 + 4;
            v2 = v2[v8 + 4];
            v22 = swift_isUniquelyReferenced_nonNull_native();
            v21[v8] = v2;
            if ((v22 & 1) == 0)
            {
              v2 = sub_2722002AC(v2);
              v21[v8] = v2;
            }

            if (v12 >= v2[2])
            {
              goto LABEL_39;
            }

            *(v2 + v11) = v19;
          }

          if (++v11 - v24 == 8)
          {
            goto LABEL_6;
          }
        }

        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
      }

      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      v2 = sub_272200344(v2);
    }
  }
}

uint64_t sub_27225CA58(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_27225CA78(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void type metadata accessor for espresso_network_t()
{
  if (!qword_2808820D8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_2808820D8);
    }
  }
}

unint64_t sub_27225CAF0()
{
  result = qword_2808820E0;
  if (!qword_2808820E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808820E0);
  }

  return result;
}

unint64_t sub_27225CB44()
{
  result = qword_2808820F0;
  if (!qword_2808820F0)
  {
    sub_27221982C(255, &qword_2808820E8, 0x277CCA9B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808820F0);
  }

  return result;
}

uint64_t sub_27225CBBC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_2721F214C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_27225CC10()
{
  result = sub_27225F0E4(MEMORY[0x277D84F90]);
  qword_280887F28 = result;
  return result;
}

id sub_27225CC38()
{
  v0 = sub_27237728C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  type metadata accessor for VAEspressoUtils();
  v28 = 0;
  v2 = sub_2722CBCD4();
  v4 = v3;
  v5 = sub_2721F7EE4();
  static VAEspressoUtils.loadModel(_:computeUnits:espressoPrefix:debug:)(0xD000000000000018, 0x800000027238B2B0, &v28, v2, v4, v5 & 1, v29);

  v26[1] = unk_280887E40;
  v26[2] = xmmword_280887E50;
  v27[0] = unk_280887E60;
  *(v27 + 9) = unk_280887E69;
  v26[0] = xmmword_280887E30;
  xmmword_280887E50 = v29[2];
  unk_280887E60 = v30[0];
  unk_280887E69 = *(v30 + 9);
  xmmword_280887E30 = v29[0];
  unk_280887E40 = v29[1];
  sub_2721F40F0(v26, &qword_280881808, &qword_27237BF30);
  v23 = 0;
  v6 = sub_2722CBCD4();
  v8 = v7;
  v9 = sub_2721F7EE4();
  static VAEspressoUtils.loadModel(_:computeUnits:espressoPrefix:debug:)(0xD000000000000018, 0x800000027238B2D0, &v23, v6, v8, v9 & 1, v24);

  v21[2] = xmmword_280887EA0;
  *v22 = unk_280887EB0;
  *&v22[9] = unk_280887EB9;
  v21[0] = xmmword_280887E80;
  v21[1] = *algn_280887E90;
  xmmword_280887EA0 = v24[2];
  unk_280887EB0 = v25[0];
  unk_280887EB9 = *(v25 + 9);
  xmmword_280887E80 = v24[0];
  *algn_280887E90 = v24[1];
  sub_2721F40F0(v21, &qword_280881808, &qword_27237BF30);
  v18 = 0;
  v10 = sub_2722CBCD4();
  v12 = v11;
  v13 = sub_2721F7EE4();
  static VAEspressoUtils.loadModel(_:computeUnits:espressoPrefix:debug:)(0xD000000000000017, 0x800000027238B2F0, &v18, v10, v12, v13 & 1, v19);

  v16[2] = xmmword_280887EF0;
  *v17 = unk_280887F00;
  *&v17[9] = unk_280887F09;
  v16[0] = xmmword_280887ED0;
  v16[1] = unk_280887EE0;
  xmmword_280887EF0 = v19[2];
  unk_280887F00 = v20[0];
  unk_280887F09 = *(v20 + 9);
  xmmword_280887ED0 = v19[0];
  unk_280887EE0 = v19[1];
  sub_2721F40F0(v16, &qword_280881808, &qword_27237BF30);
  if (qword_280887F20 != -1)
  {
    swift_once();
  }

  v14 = sub_27225F1E0();
  swift_beginAccess();
  qword_280887F28 = v14;

  return [objc_allocWithZone(type metadata accessor for G2PFactored()) init];
}

id G2PFactored.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_27225D0EC()
{
  (*((*MEMORY[0x277D85000] & *v1) + 0x68))();
  if (!v2)
  {
    v0 = v3;
  }

  return v0;
}

uint64_t sub_27225D294()
{
  result = (*((*MEMORY[0x277D85000] & *v0) + 0x68))();
  if (!v1)
  {
    v3 = result;

    return v3;
  }

  return result;
}

uint64_t sub_27225D42C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_27237728C();
  v112 = *(v6 - 8);
  v113 = v6;
  v7 = *(v112 + 64);
  MEMORY[0x28223BE20](v6);
  v111 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_27237788C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v110 = &v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = a1;
  v120 = a2;
  v121 = 32;
  v122 = 0xE100000000000000;
  v12 = sub_272203AC4();
  v13 = MEMORY[0x277D837D0];
  if (sub_27237813C())
  {
    v119 = a1;
    v120 = a2;
    v121 = 32;
    v122 = 0xE100000000000000;
    v117 = 95;
    v118 = 0xE100000000000000;
    v104 = v12;
    v105 = v12;
    v103[0] = v13;
    v103[1] = v12;
    v14 = sub_2723780FC();
    v16 = v15;
  }

  else
  {

    v14 = a1;
    v16 = a2;
  }

  v119 = 0x3A3E53555F6E653CLL;
  v120 = 0xE800000000000000;
  MEMORY[0x2743C4AD0](v14, v16);

  v17 = sub_2721FFF28(v119, v120);

  v18 = *(v17 + 16);
  if (v18)
  {
    v123 = v2;
    v19 = a1;
    v119 = MEMORY[0x277D84F90];
    sub_2722005AC(0, v18, 0);
    v20 = 32;
    v21 = v119;
    do
    {
      v22 = *(v17 + v20) + 3;
      if (((*(v17 + v20) + 3) & 0x100) != 0)
      {
        goto LABEL_87;
      }

      v119 = v21;
      v24 = *(v21 + 16);
      v23 = *(v21 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_2722005AC((v23 > 1), v24 + 1, 1);
        v21 = v119;
      }

      *(v21 + 16) = v24 + 1;
      *(v21 + 4 * v24 + 32) = v22;
      ++v20;
      --v18;
    }

    while (v18);

    a1 = v19;
    v3 = v123;
  }

  else
  {

    v21 = MEMORY[0x277D84F90];
  }

  v25 = sub_272377B5C();
  *(v25 + 16) = 48;
  *(v25 + 32) = 0u;
  *(v25 + 48) = 0u;
  *(v25 + 64) = 0u;
  *(v25 + 80) = 0u;
  *(v25 + 96) = 0u;
  *(v25 + 112) = 0u;
  *(v25 + 128) = 0u;
  *(v25 + 144) = 0u;
  *(v25 + 160) = 0u;
  *(v25 + 176) = 0u;
  *(v25 + 192) = 0u;
  *(v25 + 208) = 0u;
  v26 = sub_272377B5C();
  v27 = v26;
  *(v26 + 16) = 48;
  *(v26 + 32) = 0u;
  *(v26 + 48) = 0u;
  *(v26 + 64) = 0u;
  *(v26 + 80) = 0u;
  *(v26 + 96) = 0u;
  *(v26 + 112) = 0u;
  *(v26 + 128) = 0u;
  *(v26 + 144) = 0u;
  *(v26 + 160) = 0u;
  *(v26 + 176) = 0u;
  v28 = 8;
  *(v26 + 192) = 0u;
  *(v26 + 208) = 0u;
  v29 = *(v21 + 16);
  do
  {
    v30 = v28 - 8;
    v31 = 0;
    if (v28 - 8 < v29)
    {
      v31 = *(v21 + 4 * v28);
    }

    if (v30 >= *(v25 + 16))
    {
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
      goto LABEL_96;
    }

    *(v25 + 4 * v28) = v31;
    if (v30 >= *(v26 + 16))
    {
      goto LABEL_86;
    }

    if (v30 >= v29)
    {
      v32 = 0.0;
    }

    else
    {
      v32 = 1.0;
    }

    *(v26 + 4 * v28++) = v32;
  }

  while (v28 != 56);

  v33 = v115;
  v34 = (*((*MEMORY[0x277D85000] & *v115) + 0x70))(v25, v27);
  v116 = v3;
  if (v3)
  {

LABEL_55:

    return a2;
  }

  v35 = v34;
  v108 = a1;
  v109 = a2;
  v36 = sub_272377B5C();
  *(v36 + 16) = 48;
  *(v36 + 32) = 0u;
  *(v36 + 48) = 0u;
  *(v36 + 64) = 0u;
  *(v36 + 80) = 0u;
  *(v36 + 96) = 0u;
  *(v36 + 112) = 0u;
  *(v36 + 128) = 0u;
  *(v36 + 144) = 0u;
  *(v36 + 160) = 0u;
  *(v36 + 176) = 0u;
  *(v36 + 192) = 0u;
  *(v36 + 208) = 0u;
  v37 = sub_272377B5C();
  v38 = 0;
  *(v37 + 16) = 48;
  *(v37 + 32) = 0u;
  *(v37 + 48) = 0u;
  *(v37 + 64) = 0u;
  *(v37 + 80) = 0u;
  *(v37 + 96) = 0u;
  *(v37 + 112) = 0u;
  *(v37 + 128) = 0u;
  *(v37 + 144) = 0u;
  *(v37 + 160) = 0u;
  *(v37 + 176) = 0u;
  v39 = MEMORY[0x277D84F90];
  *(v37 + 192) = 0u;
  *(v37 + 208) = 0u;
  v114 = v35;
  while (1)
  {
    v123 = v39;
    if (v38 == 48)
    {
      v107 = v37;
      goto LABEL_58;
    }

    v40 = v38;
    if (v38 > 0x2F)
    {
      goto LABEL_88;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v37 = sub_2722002AC(v37);
    }

    a2 = MEMORY[0x277D85000];
    v41 = v116;
    if (v40 >= *(v37 + 16))
    {
      goto LABEL_89;
    }

    *(v37 + 4 * v40 + 32) = 1065353216;
    (*((*a2 & *v33) + 0x78))(v36, v37, v35, v27);
    if (v41)
    {
      v116 = v41;

      goto LABEL_55;
    }

    v42 = (*((*a2 & *v33) + 0x80))();
    v116 = 0;
    v43 = v42;

    if (!*(v43 + 16))
    {
      goto LABEL_90;
    }

    v44 = *(v43 + 32);
    if (v40 >= *(v44 + 16))
    {
      goto LABEL_91;
    }

    v45 = *(v44 + 8 * v40 + 32);
    if (*(v45 + 16) < 0x180uLL)
    {
      goto LABEL_92;
    }

    v46 = 0;
    v47 = v45 + 32;
    v48 = -1;
    v49 = -100000.0;
    do
    {
      v50 = *(v47 + 4 * v46);
      if (v49 < v50)
      {
        v48 = v46;
      }

      v51 = v46 + 1;
      if (v49 < v50)
      {
        v49 = *(v47 + 4 * v46);
      }

      ++v46;
    }

    while (v51 != 384);

    if (v48 == 1)
    {
      break;
    }

    v52 = v48 - 3;
    if (__OFSUB__(v48, 3))
    {
      goto LABEL_93;
    }

    if ((v52 & 0x8000000000000000) != 0)
    {
      goto LABEL_94;
    }

    if (v52 > 0xFF)
    {
      goto LABEL_95;
    }

    v53 = v36;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v39 = v123;
    }

    else
    {
      v39 = sub_2722001B8(0, *(v123 + 2) + 1, 1, v123);
    }

    v55 = *(v39 + 2);
    v54 = *(v39 + 3);
    if (v55 >= v54 >> 1)
    {
      v39 = sub_2722001B8((v54 > 1), v55 + 1, 1, v39);
    }

    *(v39 + 2) = v55 + 1;
    v39[v55 + 32] = v52;
    v38 = 48;
    v36 = v53;
    v35 = v114;
    v33 = v115;
    if (v40 != 47)
    {
      v56 = v39;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = sub_2722002AC(v36);
      }

      v38 = v40 + 1;
      if ((v40 + 1) >= *(v36 + 16))
      {
        goto LABEL_97;
      }

      *(v36 + 4 * v38 + 32) = v48;
      v39 = v56;
    }
  }

  v107 = v37;
LABEL_58:

  v119 = v123;

  sub_27237787C();
  sub_2721F065C(&qword_280882138, &qword_27237EA78);
  sub_27225FB78();
  v110 = sub_27237785C();
  v59 = v58;

  v61 = v112;
  v60 = v113;
  a2 = v111;
  if (!v59)
  {

    sub_27225FBDC();
    v72 = swift_allocError();
    *v73 = 0xD000000000000023;
    v73[1] = 0x800000027238B310;
    v116 = v72;
    swift_willThrow();
    return a2;
  }

  v62 = sub_2722C389C();
  (*(v61 + 16))(a2, v62, v60);
  v63 = v109;

  v64 = sub_27237725C();
  v65 = sub_272377E6C();

  v66 = os_log_type_enabled(v64, v65);
  v106 = v36;
  if (v66)
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v119 = v68;
    *v67 = 136315394;
    *(v67 + 4) = sub_2721FFD04(v108, v63, &v119);
    *(v67 + 12) = 2080;

    v69 = v110;
    v70 = sub_2721FFD04(v110, v59, &v119);

    *(v67 + 14) = v70;
    _os_log_impl(&dword_2721E4000, v64, v65, "Inferred pronounciation for %s is %s", v67, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2743C69C0](v68, -1, -1);
    MEMORY[0x2743C69C0](v67, -1, -1);

    v71 = (*(v112 + 8))(v111, v113);
  }

  else
  {

    v71 = (*(v61 + 8))(a2, v113);
    v69 = v110;
  }

  v119 = 32;
  v120 = 0xE100000000000000;
  MEMORY[0x28223BE20](v71);
  v104 = &v119;

  v113 = v59;
  v74 = v116;
  v76 = sub_2721FF4F4(0x7FFFFFFFFFFFFFFFLL, 1, sub_272219A04, v103, v69, v59, v75);
  v116 = v74;
  v77 = *(v76 + 16);
  if (v77)
  {
    v119 = MEMORY[0x277D84F90];
    sub_27220056C(0, v77, 0);
    v78 = v119;
    v115 = v76;
    v79 = (v76 + 56);
    do
    {
      v80 = v78;
      v82 = *(v79 - 3);
      v81 = *(v79 - 2);
      v83 = *(v79 - 1);
      v84 = *v79;

      v85 = v81;
      v78 = v80;
      v86 = MEMORY[0x2743C4A20](v82, v85, v83, v84);
      v88 = v87;

      v119 = v80;
      v89 = *(v80 + 16);
      v90 = *(v78 + 24);
      if (v89 >= v90 >> 1)
      {
        sub_27220056C((v90 > 1), v89 + 1, 1);
        v78 = v119;
      }

      *(v78 + 16) = v89 + 1;
      v91 = v78 + 16 * v89;
      *(v91 + 32) = v86;
      *(v91 + 40) = v88;
      v79 += 4;
      --v77;
    }

    while (v77);
  }

  else
  {

    v78 = MEMORY[0x277D84F90];
  }

  v115 = *(v78 + 16);
  if (!v115)
  {
    a2 = MEMORY[0x277D84F90];
LABEL_84:

    return a2;
  }

  v92 = 0;
  a2 = MEMORY[0x277D84F90];
  v93 = (v78 + 40);
  v114 = v78;
  while (v92 < *(v78 + 16))
  {
    v94 = *(v93 - 1);
    v95 = *v93;
    v96 = qword_280887F20;

    if (v96 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v97 = qword_280887F28;
    if (!*(qword_280887F28 + 16))
    {
      goto LABEL_98;
    }

    v98 = sub_27220038C(v94, v95);
    if ((v99 & 1) == 0)
    {
      goto LABEL_98;
    }

    v100 = *(*(v97 + 56) + 8 * v98);
    swift_endAccess();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a2 = sub_27220897C(0, *(a2 + 2) + 1, 1, a2);
    }

    v102 = *(a2 + 2);
    v101 = *(a2 + 3);
    if (v102 >= v101 >> 1)
    {
      a2 = sub_27220897C((v101 > 1), v102 + 1, 1, a2);
    }

    v92 = (v92 + 1);
    *(a2 + 2) = v102 + 1;
    *&a2[8 * v102 + 32] = v100;
    v93 += 2;
    v78 = v114;
    if (v115 == v92)
    {
      goto LABEL_84;
    }
  }

LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  result = swift_endAccess();
  __break(1u);
  return result;
}

uint64_t sub_27225E0A8(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = *v4;
  if (a2)
  {
    v9 = sub_27220038C(a3, a4);
    v11 = v10;

    if (v11)
    {
      v13 = *v5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v5;
      v19 = *v5;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_272201D78();
        v15 = v19;
      }

      v16 = *(*(v15 + 48) + 16 * v9 + 8);

      result = sub_27223CF60(v9, v15);
      *v5 = v15;
    }
  }

  else
  {
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v5;
    sub_27225EF80(a1, a3, a4, v18);

    *v5 = v20;
  }

  return result;
}

uint64_t sub_27225E194()
{
  swift_getObjectType();
  v18[0] = xmmword_280887E30;
  v18[1] = unk_280887E40;
  v18[2] = xmmword_280887E50;
  *v19 = unk_280887E60;
  *&v19[9] = unk_280887E69;
  if (xmmword_280887E50)
  {
    v1 = *&v18[0];

    v2 = sub_2722CB8B0();
    v3 = *v2;
    sub_2722CB8C8();
    v4 = sub_2722CB8D0(&v15);
    if (v0)
    {
      return sub_2721F40F0(v18, &qword_280881808, &qword_27237BF30);
    }

    else
    {
      MEMORY[0x28223BE20](v4);
      sub_2722CB3F0(sub_27226026C);
      v5 = *v2;
      sub_2722CB8C8();
      v6 = sub_2722CB8D0(&v16);
      MEMORY[0x28223BE20](v6);
      sub_2722CB3F0(sub_27226026C);
      v9 = sub_272377B5C();
      *(v9 + 16) = 128;
      *(v9 + 32) = 0u;
      *(v9 + 48) = 0u;
      *(v9 + 64) = 0u;
      *(v9 + 80) = 0u;
      *(v9 + 96) = 0u;
      *(v9 + 112) = 0u;
      *(v9 + 128) = 0u;
      *(v9 + 144) = 0u;
      *(v9 + 160) = 0u;
      *(v9 + 176) = 0u;
      *(v9 + 192) = 0u;
      *(v9 + 208) = 0u;
      *(v9 + 224) = 0u;
      *(v9 + 240) = 0u;
      *(v9 + 256) = 0u;
      *(v9 + 272) = 0u;
      *(v9 + 288) = 0u;
      *(v9 + 304) = 0u;
      *(v9 + 320) = 0u;
      *(v9 + 336) = 0u;
      *(v9 + 352) = 0u;
      *(v9 + 368) = 0u;
      *(v9 + 384) = 0u;
      *(v9 + 400) = 0u;
      *(v9 + 416) = 0u;
      *(v9 + 432) = 0u;
      *(v9 + 448) = 0u;
      *(v9 + 464) = 0u;
      *(v9 + 480) = 0u;
      *(v9 + 496) = 0u;
      *(v9 + 512) = 0u;
      *(v9 + 528) = 0u;
      sub_2721F065C(&qword_280881858, &unk_27237C260);
      v10 = sub_272377B5C();
      *(v10 + 16) = 48;
      *(v10 + 32) = v9;
      for (i = 40; i != 416; i += 8)
      {
        *(v10 + i) = v9;
      }

      sub_2721F065C(&qword_280881F28, &unk_272381E80);
      v12 = sub_272377B5C();
      *(v12 + 16) = 1;
      *(v12 + 32) = v10;
      v20 = v12;
      v13 = *sub_2722CB8BC();
      sub_2722CB8C8();
      sub_2722CB8D0(&v17);
      sub_2722CB800(v1);
      v14 = sub_2721F40F0(v18, &qword_280881808, &qword_27237BF30);
      MEMORY[0x28223BE20](v14);
      sub_2722CB3F0(sub_272260284);
      return v20;
    }
  }

  else
  {
    sub_2722032B4();
    swift_allocError();
    *v8 = 0xD000000000000014;
    v8[1] = 0x800000027238B340;
    return swift_willThrow();
  }
}

uint64_t sub_27225E5D8()
{
  swift_getObjectType();
  v25[0] = xmmword_280887E80;
  v25[1] = *algn_280887E90;
  v25[2] = xmmword_280887EA0;
  *v26 = unk_280887EB0;
  *&v26[9] = unk_280887EB9;
  if (xmmword_280887EA0)
  {
    v1 = *&v25[0];

    v2 = sub_2722CB8B0();
    v3 = *v2;
    sub_2722CB8C8();
    v4 = sub_2722CB8D0(&v20);
    if (v0)
    {
      return sub_2721F40F0(v25, &qword_280881808, &qword_27237BF30);
    }

    else
    {
      v19 = v1;
      MEMORY[0x28223BE20](v4);
      sub_2722CB3F0(sub_27226026C);
      v5 = *v2;
      sub_2722CB8C8();
      v6 = sub_2722CB8D0(&v21);
      MEMORY[0x28223BE20](v6);
      sub_2722CB3F0(sub_27225FC30);
      v7 = *v2;
      sub_2722CB8C8();
      v8 = sub_2722CB8D0(&v22);
      MEMORY[0x28223BE20](v8);
      sub_2722CB3F0(sub_27226029C);
      v9 = *v2;
      sub_2722CB8C8();
      v10 = sub_2722CB8D0(&v23);
      MEMORY[0x28223BE20](v10);
      sub_2722CB3F0(sub_27226026C);
      v13 = sub_272377B5C();
      *(v13 + 16) = 128;
      *(v13 + 32) = 0u;
      *(v13 + 48) = 0u;
      *(v13 + 64) = 0u;
      *(v13 + 80) = 0u;
      *(v13 + 96) = 0u;
      *(v13 + 112) = 0u;
      *(v13 + 128) = 0u;
      *(v13 + 144) = 0u;
      *(v13 + 160) = 0u;
      *(v13 + 176) = 0u;
      *(v13 + 192) = 0u;
      *(v13 + 208) = 0u;
      *(v13 + 224) = 0u;
      *(v13 + 240) = 0u;
      *(v13 + 256) = 0u;
      *(v13 + 272) = 0u;
      *(v13 + 288) = 0u;
      *(v13 + 304) = 0u;
      *(v13 + 320) = 0u;
      *(v13 + 336) = 0u;
      *(v13 + 352) = 0u;
      *(v13 + 368) = 0u;
      *(v13 + 384) = 0u;
      *(v13 + 400) = 0u;
      *(v13 + 416) = 0u;
      *(v13 + 432) = 0u;
      *(v13 + 448) = 0u;
      *(v13 + 464) = 0u;
      *(v13 + 480) = 0u;
      *(v13 + 496) = 0u;
      *(v13 + 512) = 0u;
      *(v13 + 528) = 0u;
      sub_2721F065C(&qword_280881858, &unk_27237C260);
      v14 = sub_272377B5C();
      *(v14 + 16) = 48;
      *(v14 + 32) = v13;
      for (i = 40; i != 416; i += 8)
      {
        *(v14 + i) = v13;
      }

      sub_2721F065C(&qword_280881F28, &unk_272381E80);
      v16 = sub_272377B5C();
      *(v16 + 16) = 1;
      *(v16 + 32) = v14;
      v27 = v16;
      v17 = *sub_2722CB8BC();
      sub_2722CB8C8();
      sub_2722CB8D0(&v24);
      sub_2722CB800(v19);
      v18 = sub_2721F40F0(v25, &qword_280881808, &qword_27237BF30);
      MEMORY[0x28223BE20](v18);
      sub_2722CB3F0(sub_27225FDE0);
      return v27;
    }
  }

  else
  {
    sub_2722032B4();
    swift_allocError();
    *v12 = 0xD000000000000014;
    v12[1] = 0x800000027238B360;
    return swift_willThrow();
  }
}

uint64_t sub_27225EB7C()
{
  swift_getObjectType();
  v15[0] = xmmword_280887ED0;
  v15[1] = unk_280887EE0;
  v15[2] = xmmword_280887EF0;
  *v16 = unk_280887F00;
  *&v16[9] = unk_280887F09;
  if (xmmword_280887EF0)
  {
    v1 = *&v15[0];

    v2 = *sub_2722CB8B0();
    sub_2722CB8C8();
    v3 = sub_2722CB8D0(&v13);
    if (v0)
    {
      return sub_2721F40F0(v15, &qword_280881808, &qword_27237BF30);
    }

    else
    {
      MEMORY[0x28223BE20](v3);
      sub_2722CB3F0(sub_27225FF34);
      v6 = sub_272377B5C();
      *(v6 + 16) = 384;
      bzero((v6 + 32), 0x600uLL);
      sub_2721F065C(&qword_280881858, &unk_27237C260);
      v7 = sub_272377B5C();
      *(v7 + 16) = 48;
      *(v7 + 32) = v6;
      for (i = 40; i != 416; i += 8)
      {
        *(v7 + i) = v6;
      }

      sub_2721F065C(&qword_280881F28, &unk_272381E80);
      v9 = sub_272377B5C();
      *(v9 + 16) = 1;
      *(v9 + 32) = v7;
      v12 = v9;
      v10 = *sub_2722CB8BC();
      sub_2722CB8C8();
      sub_2722CB8D0(&v14);
      sub_2722CB800(v1);
      v11 = sub_2721F40F0(v15, &qword_280881808, &qword_27237BF30);
      MEMORY[0x28223BE20](v11);
      sub_2722CB3F0(sub_27225FFC8);
      return v12;
    }
  }

  else
  {
    sub_2722032B4();
    swift_allocError();
    *v5 = 0xD000000000000012;
    v5[1] = 0x800000027238B3C0;
    return swift_willThrow();
  }
}

id G2PFactored.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for G2PFactored();
  return objc_msgSendSuper2(&v2, sel_init);
}

id G2PFactored.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for G2PFactored();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_27225EF80(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_27220038C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_272201970(v16, a4 & 1);
      v20 = *v5;
      result = sub_27220038C(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_2723786BC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_272201D78();
      result = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    *(v22[7] + 8 * result) = a1;
    return result;
  }

  v22[(result >> 6) + 8] |= 1 << result;
  v23 = (v22[6] + 16 * result);
  *v23 = a2;
  v23[1] = a3;
  *(v22[7] + 8 * result) = a1;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22[2] = v25;
}

unint64_t sub_27225F0E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2721F065C(&qword_280881878, &unk_27237C280);
    v3 = sub_2723783EC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_27220038C(v5, v6);
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

unsigned __int8 *sub_27225F1E0()
{
  v1 = sub_272376BCC();
  v92 = *(v1 - 8);
  v2 = *(v92 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_27237788C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_2723777FC();
  v8 = [v7 stringByDeletingPathExtension];

  v9 = sub_27237782C();
  v11 = v10;

  v12 = sub_2723777FC();
  v13 = [v12 pathExtension];

  sub_27237782C();
  v83 = v9;
  sub_2722560E0();
  v15 = v14;

  if (!v15)
  {

    sub_27225FBDC();
    swift_allocError();
    *v20 = 0xD00000000000001DLL;
    v20[1] = 0x800000027238B410;
    return swift_willThrow();
  }

  sub_27237787C();
  v16 = sub_2723777EC();
  v18 = v0;
  if (v0)
  {
  }

  v21 = v16;
  v22 = v17;
  v79 = v11;

  v97 = sub_27225F0E4(MEMORY[0x277D84F90]);
  *&v94 = v21;
  *(&v94 + 1) = v22;
  sub_272376BBC();
  v90 = sub_272203AC4();
  v23 = sub_2723780AC();
  v24 = v92 + 8;
  v25 = *(v92 + 8);
  v25(v4, v1);

  v89 = *(v23 + 16);
  if (!v89)
  {
LABEL_89:

    return v97;
  }

  v91 = v25;
  v92 = v24;
  v26 = 0;
  v88 = v23 + 32;
  v78 = &v94 + 1;
  v81 = v4;
  v82 = v23;
  v80 = v1;
  while (v26 < *(v23 + 16))
  {
    v27 = (v88 + 16 * v26);
    v29 = *v27;
    v28 = v27[1];
    *&v94 = *v27;
    *(&v94 + 1) = v28;

    sub_272376B8C();
    v30 = sub_2723780EC();
    v32 = v31;
    v91(v4, v1);
    v33 = HIBYTE(v32) & 0xF;
    if ((v32 & 0x2000000000000000) == 0)
    {
      v33 = v30 & 0xFFFFFFFFFFFFLL;
    }

    if (!v33 || (sub_2722155A0() & 1) != 0)
    {
    }

    else
    {
      v34 = sub_2722155A0();

      if ((v34 & 1) == 0)
      {
        *&v94 = 32;
        *(&v94 + 1) = 0xE100000000000000;
        MEMORY[0x28223BE20](v35);
        *(&v77 - 2) = &v94;

        v37 = sub_2721FF4F4(0x7FFFFFFFFFFFFFFFLL, 1, sub_272219D88, (&v77 - 4), v29, v28, v36);
        if (*(v37 + 16) != 2)
        {

          *&v94 = 0;
          *(&v94 + 1) = 0xE000000000000000;
          sub_27237820C();

          strcpy(&v94, "Invalid line ");
          HIWORD(v94) = -4864;
          MEMORY[0x2743C4AD0](v29, v28);

          MEMORY[0x2743C4AD0](544106784, 0xE400000000000000);
          MEMORY[0x2743C4AD0](v83, v79);

          v75 = v94;
          sub_27225FBDC();
          swift_allocError();
          *v76 = v75;
          return swift_willThrow();
        }

        if (!*(v37 + 16))
        {
          goto LABEL_92;
        }

        v87 = v18;
        v38 = *(v37 + 48);
        v39 = *(v37 + 56);
        v94 = *(v37 + 32);
        v95 = v38;
        v96 = v39;

        sub_272376B4C();
        sub_272260218();
        v40 = sub_2723780EC();
        v86 = v41;
        v42 = v91;
        v91(v4, v1);

        if (*(v37 + 16) < 2uLL)
        {
          goto LABEL_93;
        }

        v84 = v40;
        v85 = *(v37 + 64);
        v43 = *(v37 + 80);
        v44 = *(v37 + 88);

        v94 = v85;
        v95 = v43;
        v96 = v44;
        sub_272376B4C();
        v45 = sub_2723780EC();
        v47 = v46;
        v48 = v80;
        v42(v4);
        v49 = v47;

        v50 = HIBYTE(v47) & 0xF;
        v51 = v45 & 0xFFFFFFFFFFFFLL;
        if ((v47 & 0x2000000000000000) != 0)
        {
          v52 = HIBYTE(v47) & 0xF;
        }

        else
        {
          v52 = v45 & 0xFFFFFFFFFFFFLL;
        }

        if (v52)
        {
          v18 = v87;
          if ((v47 & 0x1000000000000000) != 0)
          {
            v93 = 0;
            v54 = sub_272200A34(v45, v47, 10);
            v72 = v74;

            v4 = v81;
            v23 = v82;
            v1 = v48;
            goto LABEL_82;
          }

          v23 = v82;
          if ((v47 & 0x2000000000000000) != 0)
          {
            *&v94 = v45;
            *(&v94 + 1) = v47 & 0xFFFFFFFFFFFFFFLL;
            v1 = v48;
            v4 = v81;
            if (v45 == 43)
            {
              if (!v50)
              {
                goto LABEL_94;
              }

              if (--v50)
              {
                v54 = 0;
                v64 = v78;
                while (1)
                {
                  v65 = *v64 - 48;
                  if (v65 > 9)
                  {
                    break;
                  }

                  v66 = 10 * v54;
                  if ((v54 * 10) >> 64 != (10 * v54) >> 63)
                  {
                    break;
                  }

                  v54 = v66 + v65;
                  if (__OFADD__(v66, v65))
                  {
                    break;
                  }

                  ++v64;
                  if (!--v50)
                  {
                    goto LABEL_81;
                  }
                }
              }
            }

            else if (v45 == 45)
            {
              if (!v50)
              {
                goto LABEL_97;
              }

              if (--v50)
              {
                v54 = 0;
                v58 = v78;
                while (1)
                {
                  v59 = *v58 - 48;
                  if (v59 > 9)
                  {
                    break;
                  }

                  v60 = 10 * v54;
                  if ((v54 * 10) >> 64 != (10 * v54) >> 63)
                  {
                    break;
                  }

                  v54 = v60 - v59;
                  if (__OFSUB__(v60, v59))
                  {
                    break;
                  }

                  ++v58;
                  if (!--v50)
                  {
                    goto LABEL_81;
                  }
                }
              }
            }

            else if (v50)
            {
              v54 = 0;
              v69 = &v94;
              while (1)
              {
                v70 = *v69 - 48;
                if (v70 > 9)
                {
                  break;
                }

                v71 = 10 * v54;
                if ((v54 * 10) >> 64 != (10 * v54) >> 63)
                {
                  break;
                }

                v54 = v71 + v70;
                if (__OFADD__(v71, v70))
                {
                  break;
                }

                ++v69;
                if (!--v50)
                {
                  goto LABEL_81;
                }
              }
            }
          }

          else
          {
            v1 = v48;
            v4 = v81;
            if ((v45 & 0x1000000000000000) != 0)
            {
              result = ((v49 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              result = sub_27237825C();
            }

            v53 = *result;
            if (v53 == 43)
            {
              if (v51 < 1)
              {
                goto LABEL_95;
              }

              v50 = v51 - 1;
              if (v51 != 1)
              {
                v54 = 0;
                if (!result)
                {
                  goto LABEL_72;
                }

                v61 = result + 1;
                while (1)
                {
                  v62 = *v61 - 48;
                  if (v62 > 9)
                  {
                    break;
                  }

                  v63 = 10 * v54;
                  if ((v54 * 10) >> 64 != (10 * v54) >> 63)
                  {
                    break;
                  }

                  v54 = v63 + v62;
                  if (__OFADD__(v63, v62))
                  {
                    break;
                  }

                  ++v61;
                  if (!--v50)
                  {
                    goto LABEL_81;
                  }
                }
              }
            }

            else if (v53 == 45)
            {
              if (v51 < 1)
              {
                goto LABEL_96;
              }

              v50 = v51 - 1;
              if (v51 != 1)
              {
                v54 = 0;
                if (result)
                {
                  v55 = result + 1;
                  while (1)
                  {
                    v56 = *v55 - 48;
                    if (v56 > 9)
                    {
                      goto LABEL_80;
                    }

                    v57 = 10 * v54;
                    if ((v54 * 10) >> 64 != (10 * v54) >> 63)
                    {
                      goto LABEL_80;
                    }

                    v54 = v57 - v56;
                    if (__OFSUB__(v57, v56))
                    {
                      goto LABEL_80;
                    }

                    ++v55;
                    if (!--v50)
                    {
                      goto LABEL_81;
                    }
                  }
                }

LABEL_72:
                LOBYTE(v50) = 0;
LABEL_81:
                v93 = v50;
                v72 = v50;

LABEL_82:
                if (v72)
                {
                  v73 = 0;
                }

                else
                {
                  v73 = v54;
                }

LABEL_85:
                result = sub_27225E0A8(v73, v72 & 1, v84, v86);
                goto LABEL_10;
              }
            }

            else
            {
              if (!v51)
              {
                goto LABEL_80;
              }

              v54 = 0;
              if (!result)
              {
                goto LABEL_72;
              }

              while (1)
              {
                v67 = *result - 48;
                if (v67 > 9)
                {
                  break;
                }

                v68 = 10 * v54;
                if ((v54 * 10) >> 64 != (10 * v54) >> 63)
                {
                  break;
                }

                v54 = v68 + v67;
                if (__OFADD__(v68, v67))
                {
                  break;
                }

                ++result;
                if (!--v51)
                {
                  goto LABEL_72;
                }
              }
            }
          }

LABEL_80:
          v54 = 0;
          LOBYTE(v50) = 1;
          goto LABEL_81;
        }

        v73 = 0;
        v72 = 1;
        v18 = v87;
        v4 = v81;
        v23 = v82;
        v1 = v48;
        goto LABEL_85;
      }
    }

LABEL_10:
    if (++v26 == v89)
    {
      goto LABEL_89;
    }
  }

  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
  return result;
}

unint64_t sub_27225FB78()
{
  result = qword_280882140;
  if (!qword_280882140)
  {
    sub_2721F214C(&qword_280882138, &qword_27237EA78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882140);
  }

  return result;
}

unint64_t sub_27225FBDC()
{
  result = qword_280882148;
  if (!qword_280882148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882148);
  }

  return result;
}

_DWORD *sub_27225FC48(_DWORD *result)
{
  v2 = *(v1 + 16);
  if (*(v2 + 16) <= 0x2FuLL)
  {
    __break(1u);
  }

  else
  {
    *result = *(v2 + 32);
    result[1] = *(v2 + 36);
    result[2] = *(v2 + 40);
    result[3] = *(v2 + 44);
    result[4] = *(v2 + 48);
    result[5] = *(v2 + 52);
    result[6] = *(v2 + 56);
    result[7] = *(v2 + 60);
    result[8] = *(v2 + 64);
    result[9] = *(v2 + 68);
    result[10] = *(v2 + 72);
    result[11] = *(v2 + 76);
    result[12] = *(v2 + 80);
    result[13] = *(v2 + 84);
    result[14] = *(v2 + 88);
    result[15] = *(v2 + 92);
    result[16] = *(v2 + 96);
    result[17] = *(v2 + 100);
    result[18] = *(v2 + 104);
    result[19] = *(v2 + 108);
    result[20] = *(v2 + 112);
    result[21] = *(v2 + 116);
    result[22] = *(v2 + 120);
    result[23] = *(v2 + 124);
    result[24] = *(v2 + 128);
    result[25] = *(v2 + 132);
    result[26] = *(v2 + 136);
    result[27] = *(v2 + 140);
    result[28] = *(v2 + 144);
    result[29] = *(v2 + 148);
    result[30] = *(v2 + 152);
    result[31] = *(v2 + 156);
    result[32] = *(v2 + 160);
    result[33] = *(v2 + 164);
    result[34] = *(v2 + 168);
    result[35] = *(v2 + 172);
    result[36] = *(v2 + 176);
    result[37] = *(v2 + 180);
    result[38] = *(v2 + 184);
    result[39] = *(v2 + 188);
    result[40] = *(v2 + 192);
    result[41] = *(v2 + 196);
    result[42] = *(v2 + 200);
    result[43] = *(v2 + 204);
    result[44] = *(v2 + 208);
    result[45] = *(v2 + 212);
    result[46] = *(v2 + 216);
    result[47] = *(v2 + 220);
  }

  return result;
}