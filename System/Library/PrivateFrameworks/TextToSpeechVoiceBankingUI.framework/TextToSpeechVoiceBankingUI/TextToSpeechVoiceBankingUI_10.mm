uint64_t sub_26EF0EB44@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v3 + 32);
  if (v4)
  {
    v5 = v4;
    v6 = sub_26EF0FFFC();

    if (v6)
    {
      result = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
    }

    else
    {
      v11 = sub_26EE17094();
      v12._object = 0x800000026EF46FC0;
      v13 = v11 & 1;
      v12._countAndFlagsBits = 0xD000000000000026;
      TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v12, v13, 0);
      sub_26EE12538();
      result = sub_26EF3A5DC();
      v9 = v14 & 1;
    }

    *a1 = result;
    a1[1] = v8;
    a1[2] = v9;
    a1[3] = v10;
  }

  else
  {
    v15 = *(v3 + 40);
    type metadata accessor for VoiceBankingAudioServiceViewModel();
    sub_26EF0EAF4(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel);
    result = sub_26EF39BFC();
    __break(1u);
  }

  return result;
}

unint64_t sub_26EF0EC5C()
{
  result = qword_2806C9B60;
  if (!qword_2806C9B60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9B58, &qword_26EF43EC8);
    sub_26EE2E174();
    sub_26EE63944();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C9B60);
  }

  return result;
}

uint64_t objectdestroyTm_18()
{
  v1 = type metadata accessor for RecordingSection();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v18 = *(*(v1 - 8) + 64);
  v4 = sub_26EF38AAC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v17 = *(v5 + 64);
  v7 = v0 + v3;
  sub_26EE05C9C(*(v0 + v3), *(v0 + v3 + 8));
  v8 = *(v0 + v3 + 16);

  v9 = *(v0 + v3 + 48);

  v10 = *(v1 + 32);
  if (!(*(v5 + 48))(v0 + v3 + v10, 1, v4))
  {
    (*(v5 + 8))(v7 + v10, v4);
  }

  v11 = *(v1 + 36);
  v12 = sub_26EF38DBC();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v7 + v11, 1, v12))
  {
    (*(v13 + 8))(v7 + v11, v12);
  }

  v14 = v2 | v6;
  v15 = (v3 + v18 + v6) & ~v6;
  (*(v5 + 8))(v0 + v15, v4);

  return MEMORY[0x2821FE8E8](v0, v15 + v17, v14 | 7);
}

uint64_t sub_26EF0EF40(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for RecordingSection() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_26EF38AAC() - 8);
  v6 = v1 + ((v3 + v4 + *(v5 + 80)) & ~*(v5 + 80));

  return a1(v1 + v3, v6);
}

id sub_26EF0F080()
{
  v1 = v0;
  v2 = sub_26EF3B53C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26EF3B50C();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8, v10);
  v11 = sub_26EF3AFAC();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v14 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel____lazy_storage___manualModeTimeoutQueue;
  v15 = *(v0 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel____lazy_storage___manualModeTimeoutQueue);
  if (v15)
  {
    v16 = *(v0 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel____lazy_storage___manualModeTimeoutQueue);
  }

  else
  {
    v17 = sub_26EE1FAB8(0, &qword_2806C9C40, 0x277D85C78);
    v24 = "erviceViewModel.swift";
    v25 = v17;
    sub_26EF3AF9C();
    v26 = MEMORY[0x277D84F90];
    v22[1] = sub_26EF204A0(&qword_2806C9268, MEMORY[0x277D85230]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9E80, qword_26EF42588);
    v23 = v2;
    sub_26EE154C8(&qword_2806C9270, &unk_2806C9E80, qword_26EF42588);
    sub_26EF3B68C();
    (*(v3 + 104))(v7, *MEMORY[0x277D85268], v23);
    v18 = sub_26EF3B56C();
    v19 = *(v0 + v14);
    *(v1 + v14) = v18;
    v16 = v18;

    v15 = 0;
  }

  v20 = v15;
  return v16;
}

uint64_t sub_26EF0F32C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();

  return v1;
}

uint64_t sub_26EF0F3A0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();

  *a2 = v5;
  return result;
}

uint64_t sub_26EF0F420(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  v5 = v2;
  return sub_26EF3953C();
}

uint64_t sub_26EF0F4D4(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_26EF0F4FC();
}

uint64_t sub_26EF0F4FC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  sub_26EF3953C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();

  if (v4 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v3 = v1;
    return sub_26EF3953C();
  }

  return result;
}

void sub_26EF0F600()
{
  v1 = sub_26EF38C2C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26EF3883C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26EF3933C();
  v13 = v0;
  v14 = sub_26EF3881C();
  v15 = sub_26EF3B44C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v28 = v1;
    v17 = v16;
    v29 = swift_slowAlloc();
    v31 = v29;
    *v17 = 136315138;
    swift_getKeyPath();
    swift_getKeyPath();
    v30 = v7;
    sub_26EF3952C();

    v18 = sub_26EF38C0C();
    v20 = v19;
    (*(v2 + 8))(v6, v28);
    v21 = sub_26EE40670(v18, v20, &v31);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_26EE01000, v14, v15, "Recording state set to %s", v17, 0xCu);
    v22 = v29;
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x2743842A0](v22, -1, -1);
    MEMORY[0x2743842A0](v17, -1, -1);

    (*(v8 + 8))(v12, v30);
  }

  else
  {

    (*(v8 + 8))(v12, v7);
  }

  sub_26EF0F990();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();

  if (v32 == 1)
  {
    v23 = *&v13[OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel_player];
    if (v23)
    {
      v24 = v23;
      v25 = [v24 delegate];
      if (v25)
      {
        v26 = v25;
        if ([v25 respondsToSelector_])
        {
          [v26 audioPlayerDidFinishPlaying:v24 successfully:1];
        }

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }
}

void sub_26EF0F990()
{
  swift_getObjectType();
  v0 = sub_26EF3883C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26EF204A0(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel);
  sub_26EF394BC();
  sub_26EF394DC();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();

  v6 = v14;
  v7 = [v14 isSpeaking];

  if (v7)
  {
    v8 = sub_26EE27ED0();
    (*(v1 + 16))(v5, v8, v0);
    v9 = sub_26EF3881C();
    v10 = sub_26EF3B43C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_26EE01000, v9, v10, "VoiceBankingAudioServiceViewModel: Did stop synthesizing sample", v11, 2u);
      MEMORY[0x2743842A0](v11, -1, -1);
    }

    (*(v1 + 8))(v5, v0);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26EF3952C();

    v12 = v14;
    [v14 stopSpeakingAtBoundary_];
  }
}

void sub_26EF0FC18()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();

  if (v5 == 1)
  {
    v1 = *(v0 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel_player);
    if (v1)
    {
      v2 = v1;
      v3 = [v2 delegate];
      if (v3)
      {
        v4 = v3;
        if ([v3 respondsToSelector_])
        {
          [v4 audioPlayerDidFinishPlaying:v2 successfully:1];
        }

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }
}

uint64_t sub_26EF0FD1C(uint64_t a1, void **a2)
{
  v4 = sub_26EF38C2C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v17 - v12;
  v14 = *(v5 + 16);
  v14(&v17 - v12, a1, v4);
  v15 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v14(v10, v13, v4);
  v15;
  sub_26EF3953C();
  sub_26EF0F600();
  return (*(v5 + 8))(v13, v4);
}

uint64_t sub_26EF0FE94()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();

  return v1;
}

uint64_t sub_26EF0FF08@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();

  *a2 = v5;
  return result;
}

uint64_t sub_26EF0FF88(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v5 = v3;
  return sub_26EF3953C();
}

uint64_t sub_26EF10074()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_26EF3953C();
}

uint64_t sub_26EF10118(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return sub_26EF3953C();
}

uint64_t type metadata accessor for VoiceBankingAudioServiceViewModel()
{
  result = qword_2806CF5F0;
  if (!qword_2806CF5F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26EF1021C(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v11 = *(*(v10 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v10 - 8, v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v22 - v17;
  sub_26EE13B88(a1, &v22 - v17, a5, a6);
  v19 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EE13B88(v18, v15, a5, a6);
  v20 = v19;
  sub_26EF3953C();
  return sub_26EE14578(v18, a5, a6);
}

uint64_t sub_26EF10354()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();
}

uint64_t sub_26EF103D8(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();
}

uint64_t sub_26EF10450(uint64_t a1, uint64_t *a2)
{
  v4 = sub_26EF38BEC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, a1);
  v10 = *a2;
  return sub_26EF1051C(v8);
}

uint64_t sub_26EF1051C(uint64_t a1)
{
  v18 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9BF8, &qword_26EF44258);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v17 - v6;
  v8 = sub_26EF38BEC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  (*(v9 + 16))(v13, a1, v8);
  v14 = v1;
  sub_26EF3953C();
  sub_26EE1FAB8(0, &qword_2806C9C00, 0x277CBEBD0);
  v15 = sub_26EF3B48C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();

  (*(v9 + 56))(v7, 0, 1, v8);
  sub_26EF3B4AC();

  return (*(v9 + 8))(v18, v8);
}

id sub_26EF10738()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *sub_26EF1076C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9C18, &unk_26EF44270);
  v190 = *(v2 - 8);
  v191 = v2;
  v3 = *(v190 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v189 = &v157 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9C20, &qword_26EF40920);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v192 = &v157 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9C28, &qword_26EF44280);
  v11 = *(v10 - 8);
  v197 = v10;
  v198 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v193 = &v157 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9BF8, &qword_26EF44258);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8, v17);
  v158 = &v157 - v18;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C08, &unk_26EF44260);
  v186 = *(v187 - 8);
  v19 = *(v186 + 64);
  MEMORY[0x28223BE20](v187, v20);
  v185 = &v157 - v21;
  v184 = sub_26EF38BEC();
  v171 = *(v184 - 8);
  v22 = *(v171 + 64);
  v24 = MEMORY[0x28223BE20](v184, v23);
  v194 = &v157 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24, v26);
  v157 = &v157 - v28;
  v30 = MEMORY[0x28223BE20](v27, v29);
  v196 = &v157 - v31;
  MEMORY[0x28223BE20](v30, v32);
  v183 = &v157 - v33;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9BE8, &unk_26EF44200);
  v181 = *(v182 - 8);
  v34 = *(v181 + 64);
  MEMORY[0x28223BE20](v182, v35);
  v180 = &v157 - v36;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9BE0, &qword_26EF3D3C0);
  v37 = *(*(v179 - 8) + 64);
  v39 = MEMORY[0x28223BE20](v179, v38);
  v178 = &v157 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39, v41);
  v177 = &v157 - v42;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9BD0, &unk_26EF44158);
  v175 = *(v176 - 8);
  v43 = *(v175 + 64);
  MEMORY[0x28223BE20](v176, v44);
  v174 = &v157 - v45;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9BB8, &unk_26EF440F8);
  v172 = *(v173 - 8);
  v46 = *(v172 + 64);
  MEMORY[0x28223BE20](v173, v47);
  v170 = &v157 - v48;
  v169 = sub_26EF38C2C();
  v168 = *(v169 - 8);
  v49 = *(v168 + 64);
  v51 = MEMORY[0x28223BE20](v169, v50);
  v167 = &v157 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51, v53);
  v166 = &v157 - v54;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9BA0, &unk_26EF3E550);
  v164 = *(v165 - 8);
  v55 = *(v164 + 64);
  MEMORY[0x28223BE20](v165, v56);
  v195 = &v157 - v57;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9B90, &unk_26EF43FB8);
  v162 = *(v163 - 8);
  v58 = *(v162 + 64);
  MEMORY[0x28223BE20](v163, v59);
  v161 = &v157 - v60;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9B78, &unk_26EF43F60);
  v61 = *(v160 - 8);
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v160, v63);
  v65 = &v157 - v64;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9B70, &qword_26EF43F10);
  v67 = *(*(v66 - 8) + 64);
  v69 = MEMORY[0x28223BE20](v66, v68);
  v71 = &v157 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v69, v72);
  v74 = &v157 - v73;
  v75 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel_voiceBankingSession;
  v76 = sub_26EED2EB8();
  v77 = *v76;
  *&v1[v75] = *v76;
  v159 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel__recordingResult;
  v78 = sub_26EF38FEC();
  (*(*(v78 - 8) + 56))(v74, 1, 1, v78);
  sub_26EE13B88(v74, v71, &qword_2806C9B70, &qword_26EF43F10);
  v79 = v77;
  sub_26EF394EC();
  sub_26EE14578(v74, &qword_2806C9B70, &qword_26EF43F10);
  (*(v61 + 32))(&v1[v159], v65, v160);
  v80 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel_audioService;
  v81 = *(*v76 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceBankingManager);
  v82 = sub_26EF388BC();

  *&v1[v80] = v82;
  *&v1[OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel_player] = 0;
  *&v1[OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel_speechRecognitionDelayTimer] = 0;
  *&v1[OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel____lazy_storage___manualModeTimeoutQueue] = 0;
  *&v1[OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel_manualModeTimeoutTimer] = 0;
  v83 = v1;
  v84 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel__synthesizer;
  v200 = [objc_allocWithZone(MEMORY[0x277CB84B8]) init];
  sub_26EE1FAB8(0, &qword_2806C9B88, 0x277CB84B8);
  v85 = v161;
  sub_26EF394EC();
  (*(v162 + 32))(&v1[v84], v85, v163);
  v86 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel__isRecording;
  LOBYTE(v200) = 0;
  v87 = v195;
  sub_26EF394EC();
  v88 = *(v164 + 32);
  v89 = v165;
  v88(&v1[v86], v87, v165);
  v90 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel__recordingState;
  v91 = v168;
  v92 = v166;
  v93 = v169;
  (*(v168 + 104))(v166, *MEMORY[0x277D70598], v169);
  (*(v91 + 16))(v167, v92, v93);
  v94 = v170;
  sub_26EF394EC();
  (*(v91 + 8))(v92, v93);
  (*(v172 + 32))(&v83[v90], v94, v173);
  v95 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel__inputSource;
  v200 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9BC8, &qword_26EF44108);
  v96 = v174;
  sub_26EF394EC();
  (*(v175 + 32))(&v83[v95], v96, v176);
  v97 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel__isInputAvailable;
  LOBYTE(v200) = 0;
  v98 = v195;
  sub_26EF394EC();
  v99 = v83;
  v88(&v83[v97], v98, v89);
  v100 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel__playingRecording;
  LOBYTE(v200) = 0;
  sub_26EF394EC();
  v88(&v83[v100], v98, v89);
  v101 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel__isRecordingRequestInFlight;
  LOBYTE(v200) = 0;
  sub_26EF394EC();
  v88(&v83[v101], v98, v89);
  v102 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel__operationError;
  v103 = sub_26EF38A4C();
  v104 = v177;
  (*(*(v103 - 8) + 56))(v177, 1, 1, v103);
  sub_26EE13B88(v104, v178, &qword_2806C9BE0, &qword_26EF3D3C0);
  v105 = v180;
  sub_26EF394EC();
  sub_26EE14578(v104, &qword_2806C9BE0, &qword_26EF3D3C0);
  (*(v181 + 32))(&v83[v102], v105, v182);
  v106 = sub_26EE82F00();
  v107 = v171;
  v108 = *(v171 + 104);
  v109 = MEMORY[0x277D70578];
  if (!v106)
  {
    v109 = MEMORY[0x277D70570];
  }

  v110 = v183;
  v111 = v184;
  v108(v183, *v109, v184);
  v112 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel__recordingMode;
  v113 = v107;
  v114 = *(v107 + 16);
  v115 = v110;
  v114(v196, v110, v111);
  v116 = v185;
  sub_26EF394EC();
  v117 = *(v113 + 8);
  v117(v115, v111);
  (*(v186 + 32))(&v99[v112], v116, v187);
  *&v99[OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel_cancellables] = MEMORY[0x277D84FA0];
  v202.receiver = v99;
  v118 = v111;
  v202.super_class = ObjectType;
  v119 = objc_msgSendSuper2(&v202, sel_init);
  sub_26EE1FAB8(0, &qword_2806C9C00, 0x277CBEBD0);
  v120 = v119;
  v121 = sub_26EF3B48C();
  LOBYTE(v116) = sub_26EF3B4BC();

  if (v116)
  {
    v122 = sub_26EF3B48C();
    v123 = v158;
    sub_26EF3B49C();

    v124 = *(v113 + 48);
    if (v124(v123, 1, v118) == 1)
    {
      v125 = v157;
      v108(v157, *MEMORY[0x277D70570], v118);
      v126 = v125;
      if (v124(v123, 1, v118) != 1)
      {
        sub_26EE14578(v123, &qword_2806C9BF8, &qword_26EF44258);
      }
    }

    else
    {
      v126 = v157;
      (*(v113 + 32))(v157, v123, v118);
    }

    sub_26EF1051C(v126);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v127 = v196;
  sub_26EF3952C();

  v128 = v194;
  v108(v194, *MEMORY[0x277D70578], v118);
  sub_26EF204A0(&qword_2806C8B90, MEMORY[0x277D70580]);
  sub_26EF3B1DC();
  sub_26EF3B1DC();
  v117(v128, v118);
  v117(v127, v118);
  if (v200 == v199)
  {
    v129 = sub_26EF0F080();
    v130 = [objc_allocWithZone(MEMORY[0x277CE6950]) initWithTargetSerialQueue_];

    v131 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel_manualModeTimeoutTimer;
    swift_beginAccess();
    v132 = *&v120[v131];
    *&v120[v131] = v130;

    v133 = *&v120[v131];
    if (v133)
    {
      [v133 setAutomaticallyCancelPendingBlockUponSchedulingNewBlock_];
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();

  v134 = v200;
  v135 = v120;
  [v134 setDelegate_];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();

  v136 = v200;
  [v200 setIsInternalSynth_];

  v137 = *&v135[OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel_audioService];
  v138 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel_audioService;
  v181 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel_audioService;
  v139 = v137;
  v140 = sub_26EF3903C();

  v200 = v140;
  sub_26EE1FAB8(0, &qword_2806C9C40, 0x277D85C78);
  v141 = sub_26EF3B54C();
  v201 = v141;
  v195 = sub_26EF3B52C();
  v142 = *(v195 - 1);
  v194 = *(v142 + 56);
  v196 = (v142 + 56);
  v143 = v192;
  (v194)(v192, 1, 1, v195);
  ObjectType = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9C48, &qword_26EF44288);
  v184 = MEMORY[0x277CBCD90];
  v187 = sub_26EE154C8(&unk_2806C9C50, &qword_2806C9C48, &qword_26EF44288);
  v183 = sub_26EE97328();
  v144 = v193;
  sub_26EF3955C();
  sub_26EE14578(v143, &qword_2806C9C20, &qword_26EF40920);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v182 = MEMORY[0x277CBCD60];
  v186 = sub_26EE154C8(&qword_2806C9C60, &qword_2806C9C28, &qword_26EF44280);
  v145 = v197;
  sub_26EF3956C();

  v146 = *(v198 + 8);
  v198 += 8;
  v185 = v146;
  (v146)(v144, v145);
  swift_beginAccess();
  sub_26EF3949C();
  swift_endAccess();

  v147 = *&v135[v138];
  v148 = sub_26EF3901C();

  v200 = v148;
  v149 = sub_26EF3B54C();
  v201 = v149;
  (v194)(v143, 1, 1, v195);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9C68, &qword_26EF44290);
  sub_26EE154C8(&qword_2806C9C70, &qword_2806C9C68, &qword_26EF44290);
  v150 = v189;
  sub_26EF3955C();
  sub_26EE14578(v143, &qword_2806C9C20, &qword_26EF40920);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_26EE154C8(&qword_2806C9C78, &qword_2806C9C18, &unk_26EF44270);
  v151 = v191;
  sub_26EF3956C();

  (*(v190 + 8))(v150, v151);
  swift_beginAccess();
  sub_26EF3949C();
  swift_endAccess();

  v152 = *&v135[v181];
  v153 = sub_26EF3907C();

  v200 = v153;
  v154 = sub_26EF3B54C();
  v201 = v154;
  (v194)(v143, 1, 1, v195);
  sub_26EF3955C();
  sub_26EE14578(v143, &qword_2806C9C20, &qword_26EF40920);

  swift_allocObject();
  swift_unknownObjectWeakInit();

  v155 = v197;
  sub_26EF3956C();

  (v185)(v144, v155);
  swift_beginAccess();
  sub_26EF3949C();
  swift_endAccess();

  return v135;
}

uint64_t sub_26EF11E7C()
{
  v1[2] = v0;
  v1[3] = sub_26EF3B2DC();
  v1[4] = sub_26EF3B2CC();
  v3 = sub_26EF3B29C();
  v1[5] = v3;
  v1[6] = v2;

  return MEMORY[0x2822009F8](sub_26EF11F18, v3, v2);
}

uint64_t sub_26EF11F18()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = sub_26EF3B2CC();
  v0[7] = v3;
  v4 = swift_task_alloc();
  v0[8] = v4;
  *(v4 + 16) = v2;
  v5 = *(MEMORY[0x277D859E0] + 4);
  v6 = swift_task_alloc();
  v0[9] = v6;
  *v6 = v0;
  v6[1] = sub_26EF1201C;
  v7 = MEMORY[0x277D85700];
  v8 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v6, v3, v7, 0xD000000000000016, 0x800000026EF47010, sub_26EF20690, v4, v8);
}

uint64_t sub_26EF1201C()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v4 = *(*v0 + 56);
  v8 = *v0;

  v5 = *(v1 + 48);
  v6 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_26EF22958, v6, v5);
}

uint64_t sub_26EF1217C(uint64_t a1, char *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9E48, &unk_26EF44480);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v26 - v8;
  v10 = sub_26EF3883C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *&a2[OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel_audioService];
  if (sub_26EF3902C())
  {
    return sub_26EF3B2BC();
  }

  v29 = a1;
  sub_26EF3933C();
  v17 = sub_26EF3881C();
  v18 = sub_26EF3B43C();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v28 = a2;
    v20 = v19;
    v27 = swift_slowAlloc();
    v31 = v27;
    *v20 = 136315394;
    *(v20 + 4) = sub_26EE40670(0xD000000000000095, 0x800000026EF47300, &v31);
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_26EE40670(0xD000000000000016, 0x800000026EF47010, &v31);
    _os_log_impl(&dword_26EE01000, v17, v18, "%s->%s. Requesting startAudio from audio service", v20, 0x16u);
    v21 = v27;
    swift_arrayDestroy();
    MEMORY[0x2743842A0](v21, -1, -1);
    v22 = v20;
    a2 = v28;
    MEMORY[0x2743842A0](v22, -1, -1);
  }

  (*(v11 + 8))(v15, v10);
  (*(v5 + 16))(v9, v29, v4);
  v23 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = a2;
  (*(v5 + 32))(v24 + v23, v9, v4);
  v25 = a2;
  sub_26EF38ECC();
}

uint64_t sub_26EF124B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9BE0, &qword_26EF3D3C0) - 8) + 64) + 15;
  v6[5] = swift_task_alloc();
  v6[6] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9E70, &unk_26EF42D40);
  v6[7] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v6[8] = swift_task_alloc();
  v10 = sub_26EF38A4C();
  v6[9] = v10;
  v11 = *(v10 - 8);
  v6[10] = v11;
  v12 = *(v11 + 64) + 15;
  v6[11] = swift_task_alloc();
  sub_26EF3B2DC();
  v6[12] = sub_26EF3B2CC();
  v14 = sub_26EF3B29C();

  return MEMORY[0x2822009F8](sub_26EF22910, v14, v13);
}

uint64_t sub_26EF1262C()
{
  v1[2] = v0;
  v1[3] = sub_26EF3B2DC();
  v1[4] = sub_26EF3B2CC();
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = sub_26EF126DC;

  return sub_26EF12AE4();
}

uint64_t sub_26EF126DC()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 24);
  v8 = *v0;

  v6 = sub_26EF3B29C();
  *(v1 + 48) = v6;
  *(v1 + 56) = v5;

  return MEMORY[0x2822009F8](sub_26EF12820, v6, v5);
}

uint64_t sub_26EF12820()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = sub_26EF3B2CC();
  v0[8] = v3;
  v4 = swift_task_alloc();
  v0[9] = v4;
  *(v4 + 16) = v2;
  v5 = *(MEMORY[0x277D859E0] + 4);
  v6 = swift_task_alloc();
  v0[10] = v6;
  *v6 = v0;
  v6[1] = sub_26EF12924;
  v7 = MEMORY[0x277D85700];
  v8 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v6, v3, v7, 0xD000000000000015, 0x800000026EF47030, sub_26EF20698, v4, v8);
}

uint64_t sub_26EF12924()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v4 = *(*v0 + 64);
  v8 = *v0;

  v5 = *(v1 + 56);
  v6 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_26EF12A84, v6, v5);
}

uint64_t sub_26EF12A84()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26EF12AE4()
{
  v1[7] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400) - 8) + 64) + 15;
  v1[8] = swift_task_alloc();
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9BE0, &qword_26EF3D3C0) - 8);
  v1[9] = v3;
  v1[10] = *(v3 + 64);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v4 = sub_26EF3917C();
  v1[13] = v4;
  v5 = *(v4 - 8);
  v1[14] = v5;
  v1[15] = *(v5 + 64);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v6 = sub_26EF38BEC();
  v1[18] = v6;
  v7 = *(v6 - 8);
  v1[19] = v7;
  v8 = *(v7 + 64) + 15;
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v9 = sub_26EF38C2C();
  v1[22] = v9;
  v10 = *(v9 - 8);
  v1[23] = v10;
  v11 = *(v10 + 64) + 15;
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = sub_26EF3B2DC();
  v1[27] = sub_26EF3B2CC();
  v13 = sub_26EF3B29C();
  v1[28] = v13;
  v1[29] = v12;

  return MEMORY[0x2822009F8](sub_26EF12D70, v13, v12);
}

uint64_t sub_26EF12D70()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[22];
  v4 = v0[23];
  v5 = v0[7];
  (*(v4 + 104))(v1, *MEMORY[0x277D70598], v3);
  swift_getKeyPath();
  swift_getKeyPath();
  (*(v4 + 16))(v2, v1, v3);
  v6 = v5;
  sub_26EF3953C();
  sub_26EF0F600();
  (*(v4 + 8))(v1, v3);
  v7 = *&v6[OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel_speechRecognitionDelayTimer];
  if (v7)
  {
    [v7 invalidate];
  }

  v9 = v0[20];
  v8 = v0[21];
  v10 = v0[18];
  v11 = v0[19];
  v12 = v0[7];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();

  (*(v11 + 104))(v9, *MEMORY[0x277D70570], v10);
  sub_26EF204A0(&qword_2806C8B90, MEMORY[0x277D70580]);
  sub_26EF3B1DC();
  sub_26EF3B1DC();
  v13 = *(v11 + 8);
  v13(v9, v10);
  v13(v8, v10);
  if (v0[5] == v0[6])
  {
    v14 = v0[26];
    v15 = v0[7];
    v16 = sub_26EF3B2CC();
    v0[30] = v16;
    v17 = swift_task_alloc();
    v0[31] = v17;
    *(v17 + 16) = v15;
    v18 = *(MEMORY[0x277D859E0] + 4);
    v19 = swift_task_alloc();
    v0[32] = v19;
    *v19 = v0;
    v19[1] = sub_26EF13380;
    v20 = MEMORY[0x277D85700];
    v21 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822007B8](v19, v16, v20, 0xD000000000000014, 0x800000026EF47050, sub_26EF20834, v17, v21);
  }

  else
  {
    v23 = v0[26];
    v22 = v0[27];
    v25 = v0[16];
    v24 = v0[17];
    v26 = v0[14];
    v66 = v0[15];
    v28 = v0[12];
    v27 = v0[13];
    v29 = v0[11];
    v58 = v29;
    v30 = v0[8];
    v60 = v25;
    v61 = v0[9];
    v62 = v0[10];
    v63 = v30;
    v31 = v0[7];

    v64 = v24;
    v59 = v27;
    (*(v26 + 104))(v24, *MEMORY[0x277D70630], v27);
    v32 = sub_26EF38A4C();
    v65 = v28;
    (*(*(v32 - 8) + 56))(v28, 1, 1, v32);
    v33 = sub_26EF3B30C();
    (*(*(v33 - 8) + 56))(v30, 1, 1, v33);
    sub_26EE13B88(v28, v29, &qword_2806C9BE0, &qword_26EF3D3C0);
    (*(v26 + 16))(v25, v24, v27);
    v34 = v31;
    v35 = sub_26EF3B2CC();
    v36 = (*(v61 + 80) + 32) & ~*(v61 + 80);
    v37 = (v62 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
    v38 = (v37 + 15) & 0xFFFFFFFFFFFFFFF8;
    v39 = (v38 + 23) & 0xFFFFFFFFFFFFFFF8;
    v40 = (*(v26 + 80) + v39 + 16) & ~*(v26 + 80);
    v41 = swift_allocObject();
    v42 = MEMORY[0x277D85700];
    *(v41 + 16) = v35;
    *(v41 + 24) = v42;
    sub_26EE14D98(v58, v41 + v36, &qword_2806C9BE0, &qword_26EF3D3C0);
    *(v41 + v37) = v34;
    v43 = (v41 + v38);
    v44 = (v41 + v39);
    *v43 = 0;
    v43[1] = 0;
    *v44 = 0;
    v44[1] = 0;
    (*(v26 + 32))(v41 + v40, v60, v59);
    sub_26EE2C388(0, 0, v63, &unk_26EF442C0, v41);

    sub_26EE14578(v65, &qword_2806C9BE0, &qword_26EF3D3C0);
    (*(v26 + 8))(v64, v59);
    v45 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel_manualModeTimeoutTimer;
    swift_beginAccess();
    v46 = *&v34[v45];
    if (v46)
    {
      [v46 cancel];
    }

    v48 = v0[24];
    v47 = v0[25];
    v50 = v0[20];
    v49 = v0[21];
    v52 = v0[16];
    v51 = v0[17];
    v54 = v0[11];
    v53 = v0[12];
    v55 = v0[8];

    v56 = v0[1];

    return v56();
  }
}

uint64_t sub_26EF13380()
{
  v1 = *v0;
  v2 = *(*v0 + 256);
  v3 = *(*v0 + 248);
  v4 = *(*v0 + 240);
  v8 = *v0;

  v5 = *(v1 + 232);
  v6 = *(v1 + 224);

  return MEMORY[0x2822009F8](sub_26EF134E0, v6, v5);
}

uint64_t sub_26EF134E0()
{
  v1 = v0[27];

  v3 = v0[24];
  v2 = v0[25];
  v5 = v0[20];
  v4 = v0[21];
  v7 = v0[16];
  v6 = v0[17];
  v9 = v0[11];
  v8 = v0[12];
  v10 = v0[8];

  v11 = v0[1];

  return v11();
}

uint64_t sub_26EF135B0(uint64_t a1, char *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9E48, &unk_26EF44480);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v29 - v8;
  v10 = sub_26EF3883C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *&a2[OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel_audioService];
  if ((sub_26EF3902C() & 1) == 0)
  {
    return sub_26EF3B2BC();
  }

  v32 = v9;
  sub_26EF3933C();
  v16 = sub_26EF3881C();
  v17 = sub_26EF3B43C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v31 = a2;
    v19 = v18;
    v20 = swift_slowAlloc();
    v30 = a1;
    v21 = v20;
    v34 = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_26EE40670(0xD000000000000015, 0x800000026EF47030, &v34);
    _os_log_impl(&dword_26EE01000, v16, v17, "%s. Requesting stopAudio from audio service", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    v22 = v21;
    a1 = v30;
    MEMORY[0x2743842A0](v22, -1, -1);
    v23 = v19;
    a2 = v31;
    MEMORY[0x2743842A0](v23, -1, -1);
  }

  (*(v11 + 8))(v15, v10);
  v24 = v32;
  (*(v5 + 16))(v32, a1, v4);
  v25 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = a2;
  (*(v5 + 32))(v26 + v25, v24, v4);
  v27 = a2;
  sub_26EF3908C();
}

uint64_t sub_26EF138B0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v37 = a4;
  v38 = a5;
  v35 = a3;
  v36 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9E48, &unk_26EF44480);
  v32 = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v31 - v10;
  v33 = &v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9E70, &unk_26EF42D40);
  v34 = *(v12 - 8);
  v13 = *(v34 + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v16 = &v31 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8, v19);
  v21 = &v31 - v20;
  v22 = sub_26EF3B30C();
  (*(*(v22 - 8) + 56))(v21, 1, 1, v22);
  sub_26EE13B88(a1, v16, &unk_2806C9E70, &unk_26EF42D40);
  (*(v7 + 16))(v11, v35, v6);
  sub_26EF3B2DC();
  v23 = v36;
  v24 = sub_26EF3B2CC();
  v25 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v26 = (v13 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = (*(v7 + 80) + v26 + 8) & ~*(v7 + 80);
  v28 = swift_allocObject();
  v29 = MEMORY[0x277D85700];
  *(v28 + 16) = v24;
  *(v28 + 24) = v29;
  sub_26EE14D98(v16, v28 + v25, &unk_2806C9E70, &unk_26EF42D40);
  *(v28 + v26) = v23;
  (*(v7 + 32))(v28 + v27, v33, v32);
  sub_26EE2C388(0, 0, v21, v38, v28);
}

uint64_t sub_26EF13B98()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9B70, &qword_26EF43F10);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v4 = v12 - v3;
  v5 = sub_26EF38FEC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_26EE14578(v4, &qword_2806C9B70, &qword_26EF43F10);
    sub_26EF3930C();
    v12[1] = MEMORY[0x277D84F90];
    sub_26EF204A0(&qword_2806C6A50, MEMORY[0x277D706C0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C90, &qword_26EF43A48);
    sub_26EE154C8(&qword_2806C9978, &unk_2806C9C90, &qword_26EF43A48);
    return sub_26EF3B68C();
  }

  (*(v6 + 32))(v10, v4, v5);
  result = sub_26EF38FDC();
  if (result < -32768)
  {
    __break(1u);
  }

  else if (result < 0x8000)
  {
    sub_26EF38F6C();
    sub_26EF38F2C();
    sub_26EF38F5C();
    sub_26EF38F1C();
    sub_26EF392FC();
    return (*(v6 + 8))(v10, v5);
  }

  __break(1u);
  return result;
}

uint64_t sub_26EF13E7C(uint64_t a1)
{
  v2[26] = a1;
  v2[27] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9BE0, &qword_26EF3D3C0) - 8) + 64) + 15;
  v2[28] = swift_task_alloc();
  v4 = sub_26EF38BEC();
  v2[29] = v4;
  v5 = *(v4 - 8);
  v2[30] = v5;
  v6 = *(v5 + 64) + 15;
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v7 = sub_26EF37DCC();
  v2[33] = v7;
  v8 = *(v7 - 8);
  v2[34] = v8;
  v9 = *(v8 + 64) + 15;
  v2[35] = swift_task_alloc();
  v10 = sub_26EF38CDC();
  v2[36] = v10;
  v11 = *(v10 - 8);
  v2[37] = v11;
  v12 = *(v11 + 64) + 15;
  v2[38] = swift_task_alloc();
  v13 = sub_26EF37CEC();
  v2[39] = v13;
  v14 = *(v13 - 8);
  v2[40] = v14;
  v15 = *(v14 + 64) + 15;
  v2[41] = swift_task_alloc();
  v16 = sub_26EF3936C();
  v2[42] = v16;
  v17 = *(v16 - 8);
  v2[43] = v17;
  v18 = *(v17 + 64) + 15;
  v2[44] = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9CA0, &qword_26EF3F100) - 8) + 64) + 15;
  v2[45] = swift_task_alloc();
  v20 = sub_26EF38E9C();
  v2[46] = v20;
  v21 = *(v20 - 8);
  v2[47] = v21;
  v22 = *(v21 + 64) + 15;
  v2[48] = swift_task_alloc();
  v23 = sub_26EF3917C();
  v2[49] = v23;
  v24 = *(v23 - 8);
  v2[50] = v24;
  v25 = *(v24 + 64) + 15;
  v2[51] = swift_task_alloc();
  v26 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6840, &qword_26EF3CD50) - 8) + 64) + 15;
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  v2[54] = swift_task_alloc();
  v27 = sub_26EF3919C();
  v2[55] = v27;
  v28 = *(v27 - 8);
  v2[56] = v28;
  v29 = *(v28 + 64) + 15;
  v2[57] = swift_task_alloc();
  v30 = sub_26EF38C2C();
  v2[58] = v30;
  v31 = *(v30 - 8);
  v2[59] = v31;
  v32 = *(v31 + 64) + 15;
  v2[60] = swift_task_alloc();
  v2[61] = swift_task_alloc();
  v33 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9CB0, &qword_26EF3DD20) - 8) + 64) + 15;
  v2[62] = swift_task_alloc();
  v34 = sub_26EF37EDC();
  v2[63] = v34;
  v35 = *(v34 - 8);
  v2[64] = v35;
  v36 = *(v35 + 64) + 15;
  v2[65] = swift_task_alloc();
  v2[66] = sub_26EF3B2DC();
  v2[67] = sub_26EF3B2CC();
  v38 = sub_26EF3B29C();
  v2[68] = v38;
  v2[69] = v37;

  return MEMORY[0x2822009F8](sub_26EF143C4, v38, v37);
}

uint64_t sub_26EF143C4()
{
  v1 = v0[63];
  v2 = v0[64];
  v3 = v0[62];
  v4 = *(v0[27] + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel_voiceBankingSession);
  v5 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceID;
  swift_beginAccess();
  sub_26EE13B88(v4 + v5, v3, &qword_2806C9CB0, &qword_26EF3DD20);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v6 = v0[67];
    v7 = v0[62];

    sub_26EE14578(v7, &qword_2806C9CB0, &qword_26EF3DD20);
LABEL_13:
    v73 = v0[65];
    v75 = v0[61];
    v74 = v0[62];
    v76 = v0[60];
    v77 = v0[57];
    v78 = v0[53];
    v79 = v0[54];
    v81 = v0[51];
    v80 = v0[52];
    v82 = v0[48];
    v107 = v0[45];
    v111 = v0[44];
    v113 = v0[41];
    v115 = v0[38];
    v119 = v0[35];
    v123 = v0[32];
    v127 = v0[31];
    v131 = v0[28];

    v83 = v0[1];

    return v83();
  }

  v8 = v0[61];
  v10 = v0[59];
  v9 = v0[60];
  v11 = v0[58];
  v105 = v4;
  v108 = v0[57];
  v114 = v0[54];
  v120 = v0[51];
  v128 = v0[50];
  v116 = v0[49];
  v12 = v0[34];
  v112 = v0[33];
  v13 = v0[27];
  v124 = v0[26];
  (*(v0[64] + 32))(v0[65], v0[62], v0[63]);
  (*(v10 + 104))(v8, *MEMORY[0x277D705A0], v11);
  swift_getKeyPath();
  swift_getKeyPath();
  (*(v10 + 16))(v9, v8, v11);
  v14 = v13;
  sub_26EF3953C();
  sub_26EF0F600();
  (*(v10 + 8))(v8, v11);
  v15 = *&v14[OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel_audioService];
  v16 = sub_26EF38EAC();
  sub_26EF204A0(&qword_2806C9CB8, type metadata accessor for VoiceBankingAudioServiceViewModel);
  swift_unknownObjectRetain();
  sub_26EF3927C();

  sub_26EF3918C();
  v17 = *(v12 + 56);
  v17(v114, 1, 1, v112);
  v0[20] = 0;
  v0[21] = 0;
  v18 = *(v128 + 104);
  v18(v120, *MEMORY[0x277D70630], v116);
  LOBYTE(v16) = sub_26EF38C1C();
  v19 = *(v128 + 8);
  v19(v120, v116);
  if (v16)
  {
    v20 = v0[46];
    v21 = v0[47];
    v22 = v0[45];
    v23 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_sample;
    swift_beginAccess();
    sub_26EE13B88(v105 + v23, v22, &unk_2806C9CA0, &qword_26EF3F100);
    if ((*(v21 + 48))(v22, 1, v20) != 1)
    {
      v46 = v0[64];
      v95 = v0[63];
      v96 = v0[65];
      v47 = v0[56];
      v98 = v0[55];
      v100 = v0[57];
      v104 = v0[54];
      v48 = v0[53];
      v49 = v0[48];
      v126 = v0[47];
      v122 = v0[46];
      v130 = v17;
      v50 = v0[43];
      v51 = v0[44];
      v52 = v0[41];
      v53 = v0[42];
      v106 = v52;
      v110 = v0[40];
      v118 = v0[39];
      v102 = v0[33];
      (*(v126 + 32))(v49, v0[45]);
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9CC0, &unk_26EF442E0);
      v55 = (v51 + *(v54 + 48));
      v56 = *(v54 + 64);
      (*(v46 + 16))(v51, v96, v95);
      v57 = v49;
      *v55 = sub_26EF38E7C();
      v55[1] = v58;
      (*(v47 + 16))(v51 + v56, v100, v98);
      (*(v50 + 104))(v51, *MEMORY[0x277D706D8], v53);
      sub_26EF3935C();
      (*(v50 + 8))(v51, v53);
      sub_26EE14578(v104, &qword_2806C6840, &qword_26EF3CD50);
      v130(v48, 0, 1, v102);
      sub_26EE14D98(v48, v104, &qword_2806C6840, &qword_26EF3CD50);
      v0[22] = sub_26EF38E6C();
      v0[23] = v59;
      sub_26EF37CDC();
      sub_26EE12538();
      countAndFlagsBits = sub_26EF3B5EC();
      object = v60;
      (*(v110 + 8))(v106, v118);

      (*(v126 + 8))(v57, v122);
      goto LABEL_10;
    }

    sub_26EE14578(v0[45], &unk_2806C9CA0, &qword_26EF3F100);
  }

  v24 = v0[51];
  v25 = v0[49];
  v26 = v0[26];
  v18(v24, *MEMORY[0x277D70628], v25);
  LOBYTE(v26) = sub_26EF38C1C();
  v19(v24, v25);
  if (v26)
  {
    v97 = v0[65];
    v27 = v0[63];
    v28 = v0[64];
    v101 = v0[57];
    v129 = v17;
    v29 = v0[56];
    v99 = v0[55];
    v30 = v0[53];
    v103 = v0[54];
    v31 = v0[43];
    v32 = v0[44];
    v33 = v0[42];
    v125 = v0[38];
    v117 = v0[37];
    v121 = v0[36];
    v109 = v0[33];
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9CC0, &unk_26EF442E0);
    v35 = (v32 + *(v34 + 48));
    v36 = *(v34 + 64);
    (*(v28 + 16))(v32, v97, v27);
    *v35 = 0x68635F6F69647561;
    v35[1] = 0xEB000000006B6365;
    (*(v29 + 16))(v32 + v36, v101, v99);
    (*(v31 + 104))(v32, *MEMORY[0x277D706D8], v33);
    sub_26EF3935C();
    (*(v31 + 8))(v32, v33);
    sub_26EE14578(v103, &qword_2806C6840, &qword_26EF3CD50);
    v129(v30, 0, 1, v109);
    sub_26EE14D98(v30, v103, &qword_2806C6840, &qword_26EF3CD50);
    v37 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceCreationLocale;
    swift_beginAccess();
    (*(v117 + 16))(v125, v105 + v37, v121);
    v38 = sub_26EF38CAC();
    v40 = v39;
    (*(v117 + 8))(v125, v121);
    v41._object = 0x800000026EF46ED0;
    v41._countAndFlagsBits = 0xD000000000000015;
    v42.value._countAndFlagsBits = v38;
    v42.value._object = v40;
    v43 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v41, 1, v42);
    countAndFlagsBits = v43._countAndFlagsBits;
    object = v43._object;

LABEL_10:
    v0[20] = countAndFlagsBits;
    v0[21] = object;
  }

  v61 = v0[52];
  v62 = v0[33];
  v63 = v0[34];
  sub_26EE13B88(v0[54], v61, &qword_2806C6840, &qword_26EF3CD50);
  if ((*(v63 + 48))(v61, 1, v62) == 1)
  {
    v64 = v0[67];
    v65 = v0[65];
    v67 = v0[63];
    v66 = v0[64];
    v69 = v0[56];
    v68 = v0[57];
    v71 = v0[54];
    v70 = v0[55];
    v72 = v0[52];

    sub_26EE14578(v71, &qword_2806C6840, &qword_26EF3CD50);
    (*(v69 + 8))(v68, v70);
    (*(v66 + 8))(v65, v67);
    sub_26EE14578(v72, &qword_2806C6840, &qword_26EF3CD50);

    goto LABEL_13;
  }

  v85 = v0[66];
  v86 = v0[35];
  v88 = v0[26];
  v87 = v0[27];
  (*(v0[34] + 32))(v86, v0[52], v0[33]);
  v89 = sub_26EF3B2CC();
  v0[70] = v89;
  v90 = swift_task_alloc();
  v0[71] = v90;
  v90[2] = v87;
  v90[3] = v0 + 20;
  v90[4] = v88;
  v90[5] = v86;
  v91 = *(MEMORY[0x277D859E0] + 4);
  v92 = swift_task_alloc();
  v0[72] = v92;
  *v92 = v0;
  v92[1] = sub_26EF14E60;
  v93 = MEMORY[0x277D85700];
  v94 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v92, v89, v93, 0xD00000000000002DLL, 0x800000026EF47070, sub_26EF2083C, v90, v94);
}

uint64_t sub_26EF14E60()
{
  v1 = *v0;
  v2 = *(*v0 + 576);
  v3 = *(*v0 + 568);
  v4 = *(*v0 + 560);
  v8 = *v0;

  v5 = *(v1 + 552);
  v6 = *(v1 + 544);

  return MEMORY[0x2822009F8](sub_26EF14FC0, v6, v5);
}

uint64_t sub_26EF14FC0()
{
  v1 = v0[67];
  v3 = v0[31];
  v2 = v0[32];
  v4 = v0[29];
  v5 = v0[30];
  v6 = v0[27];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();

  (*(v5 + 104))(v3, *MEMORY[0x277D70578], v4);
  sub_26EF204A0(&qword_2806C8B90, MEMORY[0x277D70580]);
  sub_26EF3B1DC();
  sub_26EF3B1DC();
  v7 = *(v5 + 8);
  v7(v3, v4);
  v7(v2, v4);
  if (v0[24] == v0[25])
  {
    v8 = v0[27];
    v9 = v0[28];
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26EF3952C();

    v10 = sub_26EF38A4C();
    if ((*(*(v10 - 8) + 48))(v9, 1, v10) == 1)
    {
      v11 = v0[27];
      sub_26EE14578(v0[28], &qword_2806C9BE0, &qword_26EF3D3C0);
      v12 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel_manualModeTimeoutTimer;
      swift_beginAccess();
      v13 = *(v11 + v12);
      v14 = v0[65];
      v15 = v0[63];
      v16 = v0[64];
      v17 = v0[56];
      v18 = v0[57];
      v20 = v0[54];
      v19 = v0[55];
      if (v13)
      {
        v57 = v0[57];
        v59 = v0[63];
        v61 = v0[65];
        v21 = v0[34];
        v63 = v0[33];
        v65 = v0[35];
        v22 = v0[27];
        swift_endAccess();
        v23 = swift_allocObject();
        *(v23 + 16) = v22;
        v0[6] = sub_26EF20848;
        v0[7] = v23;
        v0[2] = MEMORY[0x277D85DD0];
        v0[3] = 1107296256;
        v0[4] = sub_26EE1DD80;
        v0[5] = &block_descriptor_3;
        v24 = _Block_copy(v0 + 2);
        v25 = v0[7];
        v26 = v22;
        v27 = v13;

        [v27 afterDelay:v24 processBlock:60.0];
        _Block_release(v24);

        sub_26EE14578(v20, &qword_2806C6840, &qword_26EF3CD50);
        (*(v17 + 8))(v57, v19);
        (*(v16 + 8))(v61, v59);
        (*(v21 + 8))(v65, v63);
        goto LABEL_9;
      }

      sub_26EE14578(v0[54], &qword_2806C6840, &qword_26EF3CD50);
      (*(v17 + 8))(v18, v19);
      (*(v16 + 8))(v14, v15);
      swift_endAccess();
    }

    else
    {
      v34 = v0[65];
      v35 = v0[63];
      v36 = v0[64];
      v38 = v0[56];
      v37 = v0[57];
      v39 = v0[55];
      v40 = v0[28];
      sub_26EE14578(v0[54], &qword_2806C6840, &qword_26EF3CD50);
      (*(v38 + 8))(v37, v39);
      (*(v36 + 8))(v34, v35);
      sub_26EE14578(v40, &qword_2806C9BE0, &qword_26EF3D3C0);
    }
  }

  else
  {
    v28 = v0[65];
    v29 = v0[63];
    v30 = v0[64];
    v32 = v0[56];
    v31 = v0[57];
    v33 = v0[55];
    sub_26EE14578(v0[54], &qword_2806C6840, &qword_26EF3CD50);
    (*(v32 + 8))(v31, v33);
    (*(v30 + 8))(v28, v29);
  }

  (*(v0[34] + 8))(v0[35], v0[33]);
LABEL_9:
  v41 = v0[21];

  v42 = v0[65];
  v44 = v0[61];
  v43 = v0[62];
  v45 = v0[60];
  v46 = v0[57];
  v47 = v0[53];
  v48 = v0[54];
  v50 = v0[51];
  v49 = v0[52];
  v51 = v0[48];
  v54 = v0[45];
  v55 = v0[44];
  v56 = v0[41];
  v58 = v0[38];
  v60 = v0[35];
  v62 = v0[32];
  v64 = v0[31];
  v66 = v0[28];

  v52 = v0[1];

  return v52();
}

uint64_t sub_26EF1556C(uint64_t a1, char *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v32 = a4;
  v33 = a5;
  v31 = a1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9E48, &unk_26EF44480);
  v7 = *(v29 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v29, v9);
  v11 = &v27 - v10;
  v12 = sub_26EF38CDC();
  v28 = v12;
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *&a2[OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel_audioService];
  v18 = *a3;
  v19 = a3[1];
  v27 = v18;
  v20 = *&a2[OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel_voiceBankingSession];
  v21 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceCreationLocale;
  swift_beginAccess();
  (*(v13 + 16))(v17, v20 + v21, v12);
  v22 = v29;
  (*(v7 + 16))(v11, v31, v29);
  v23 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = a2;
  (*(v7 + 32))(v24 + v23, v11, v22);

  v25 = a2;
  sub_26EF38FFC();

  return (*(v13 + 8))(v17, v28);
}

uint64_t sub_26EF157F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9BE0, &qword_26EF3D3C0) - 8) + 64) + 15;
  v6[5] = swift_task_alloc();
  v6[6] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9E70, &unk_26EF42D40);
  v6[7] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v6[8] = swift_task_alloc();
  v10 = sub_26EF38A4C();
  v6[9] = v10;
  v11 = *(v10 - 8);
  v6[10] = v11;
  v12 = *(v11 + 64) + 15;
  v6[11] = swift_task_alloc();
  sub_26EF3B2DC();
  v6[12] = sub_26EF3B2CC();
  v14 = sub_26EF3B29C();

  return MEMORY[0x2822009F8](sub_26EF15968, v14, v13);
}

uint64_t sub_26EF15968()
{
  v1 = v0[12];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[2];

  sub_26EE13B88(v4, v3, &unk_2806C9E70, &unk_26EF42D40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = v0[10];
    v5 = v0[11];
    v7 = v0[9];
    v9 = v0[5];
    v8 = v0[6];
    v18 = v0[3];
    (*(v6 + 32))(v5, v0[8], v7);
    (*(v6 + 16))(v8, v5, v7);
    (*(v6 + 56))(v8, 0, 1, v7);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26EE13B88(v8, v9, &qword_2806C9BE0, &qword_26EF3D3C0);
    v10 = v18;
    sub_26EF3953C();
    sub_26EE14578(v8, &qword_2806C9BE0, &qword_26EF3D3C0);
    (*(v6 + 8))(v5, v7);
  }

  else
  {
    sub_26EE14578(v0[8], &unk_2806C9E70, &unk_26EF42D40);
  }

  v11 = v0[11];
  v12 = v0[8];
  v14 = v0[5];
  v13 = v0[6];
  v15 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9E48, &unk_26EF44480);
  sub_26EF3B2BC();

  v16 = v0[1];

  return v16();
}

uint64_t sub_26EF15B84(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v22 - v5;
  v7 = sub_26EF3883C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26EF3933C();
  v13 = sub_26EF3881C();
  v14 = sub_26EF3B47C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_26EE01000, v13, v14, "Manual mode recording was left open for 1 minute, closing.", v15, 2u);
    MEMORY[0x2743842A0](v15, -1, -1);
  }

  (*(v8 + 8))(v12, v7);
  v16 = sub_26EF3B30C();
  (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
  sub_26EF3B2DC();
  v17 = a1;
  v18 = sub_26EF3B2CC();
  v19 = swift_allocObject();
  v20 = MEMORY[0x277D85700];
  v19[2] = v18;
  v19[3] = v20;
  v19[4] = v17;
  sub_26EE2C388(0, 0, v6, &unk_26EF444C0, v19);
}

uint64_t sub_26EF15DBC()
{
  v0[2] = sub_26EF3B2DC();
  v0[3] = sub_26EF3B2CC();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_26EE751BC;

  return sub_26EF12AE4();
}

uint64_t sub_26EF15E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v7[9] = sub_26EF3B2DC();
  v7[10] = sub_26EF3B2CC();
  v9 = sub_26EF3B29C();
  v7[11] = v9;
  v7[12] = v8;

  return MEMORY[0x2822009F8](sub_26EF15F10, v9, v8);
}

uint64_t sub_26EF15F10()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  v14 = *(v0 + 40);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = sub_26EF3B2CC();
  *(v0 + 104) = v6;
  v7 = swift_task_alloc();
  *(v0 + 112) = v7;
  *(v7 + 16) = v2;
  *(v7 + 24) = v5;
  *(v7 + 32) = v4;
  *(v7 + 40) = v14;
  *(v7 + 56) = v3;
  v8 = *(MEMORY[0x277D85A40] + 4);
  v9 = swift_task_alloc();
  *(v0 + 120) = v9;
  v10 = sub_26EF38FEC();
  *v9 = v0;
  v9[1] = sub_26EF1604C;
  v11 = *(v0 + 16);
  v12 = MEMORY[0x277D85700];

  return MEMORY[0x2822008A0](v11, v6, v12, 0xD000000000000036, 0x800000026EF470A0, sub_26EF20868, v7, v10);
}

uint64_t sub_26EF1604C()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v10 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = v2[11];
    v5 = v2[12];
    v6 = sub_26EF16170;
  }

  else
  {
    v7 = v2[13];
    v8 = v2[14];

    v4 = v2[11];
    v5 = v2[12];
    v6 = sub_26EEDA8AC;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_26EF16170()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[10];

  v4 = v0[1];
  v5 = v0[16];

  return v4();
}

uint64_t sub_26EF161E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25[4] = a6;
  v25[5] = a7;
  v25[2] = a4;
  v25[3] = a5;
  v25[1] = a3;
  v9 = sub_26EF3919C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9E60, &qword_26EF444A8);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15, v18);
  v20 = v25 - v19;
  v21 = *(a2 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel_audioService);
  (*(v16 + 16))(v25 - v19, a1, v15);
  v22 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v23 = swift_allocObject();
  (*(v16 + 32))(v23 + v22, v20, v15);
  sub_26EF3918C();
  sub_26EF3904C();

  return (*(v10 + 8))(v14, v9);
}

uint64_t sub_26EF16404(uint64_t a1, uint64_t a2)
{
  v27 = a1;
  v28 = a2;
  v2 = sub_26EF38A4C();
  v26 = *(v2 - 8);
  v3 = *(v26 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26EF38FEC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v26 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9E68, &qword_26EF444B0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v26 - v20;
  sub_26EE13B88(v27, &v26 - v20, &qword_2806C9E68, &qword_26EF444B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = v26;
    (*(v26 + 32))(v6, v21, v2);
    sub_26EF204A0(&unk_2806C9CD0, MEMORY[0x277D70518]);
    v23 = swift_allocError();
    (*(v22 + 16))(v24, v6, v2);
    v29 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9E60, &qword_26EF444A8);
    sub_26EF3B2AC();
    return (*(v22 + 8))(v6, v2);
  }

  else
  {
    (*(v8 + 32))(v16, v21, v7);
    (*(v8 + 16))(v13, v16, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9E60, &qword_26EF444A8);
    sub_26EF3B2BC();
    return (*(v8 + 8))(v16, v7);
  }
}

uint64_t sub_26EF16730()
{
  v1[9] = v0;
  v2 = sub_26EF37E7C();
  v1[10] = v2;
  v3 = *(v2 - 8);
  v1[11] = v3;
  v4 = *(v3 + 64) + 15;
  v1[12] = swift_task_alloc();
  v5 = sub_26EF37DCC();
  v1[13] = v5;
  v6 = *(v5 - 8);
  v1[14] = v6;
  v7 = *(v6 + 64) + 15;
  v1[15] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9CA0, &qword_26EF3F100) - 8) + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v9 = sub_26EF38E9C();
  v1[19] = v9;
  v10 = *(v9 - 8);
  v1[20] = v10;
  v11 = *(v10 + 64) + 15;
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9B70, &qword_26EF43F10) - 8) + 64) + 15;
  v1[23] = swift_task_alloc();
  v13 = sub_26EF38FEC();
  v1[24] = v13;
  v14 = *(v13 - 8);
  v1[25] = v14;
  v15 = *(v14 + 64) + 15;
  v1[26] = swift_task_alloc();
  sub_26EF3B2DC();
  v1[27] = sub_26EF3B2CC();
  v17 = sub_26EF3B29C();
  v1[28] = v17;
  v1[29] = v16;

  return MEMORY[0x2822009F8](sub_26EF169CC, v17, v16);
}

uint64_t sub_26EF169CC()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[23];
  v4 = v0[9];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = v0[27];
    v6 = v0[23];

    v7 = &qword_2806C9B70;
    v8 = &qword_26EF43F10;
LABEL_5:
    sub_26EE14578(v6, v7, v8);
    v18 = v0[26];
    v19 = v0[22];
    v20 = v0[23];
    v21 = v0[21];
    v23 = v0[17];
    v22 = v0[18];
    v25 = v0[15];
    v24 = v0[16];
    v26 = v0[12];

    v27 = v0[1];

    return v27();
  }

  v9 = v0[19];
  v10 = v0[20];
  v11 = v0[18];
  v12 = v0[9];
  (*(v0[25] + 32))(v0[26], v0[23], v0[24]);
  v13 = *(v12 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel_voiceBankingSession);
  v0[30] = v13;
  v14 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_sample;
  swift_beginAccess();
  sub_26EE13B88(v13 + v14, v11, &unk_2806C9CA0, &qword_26EF3F100);
  v15 = *(v10 + 48);
  v0[31] = v15;
  v0[32] = (v10 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v16 = v15(v11, 1, v9);
  v6 = v0[18];
  if (v16 == 1)
  {
    v17 = v0[27];
    (*(v0[25] + 8))(v0[26], v0[24]);

    v7 = &unk_2806C9CA0;
    v8 = &qword_26EF3F100;
    goto LABEL_5;
  }

  v29 = v0[26];
  v30 = v0[22];
  v31 = v0[19];
  v32 = v0[20];
  v33 = v0[15];
  v34 = v0[12];
  v35 = *(v32 + 32);
  v0[33] = v35;
  v0[34] = (v32 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v35(v30, v6, v31);
  sub_26EF38F0C();
  v36 = sub_26EF38E7C();
  v38 = v37;
  v0[35] = v37;
  v39 = sub_26EF38FDC();
  v40 = sub_26EF38EFC();
  v42 = v41;
  v0[36] = v41;
  sub_26EF37E6C();
  sub_26EF38F8C();
  v44 = v43;
  sub_26EF38F2C();
  v46 = v45;
  sub_26EF38F7C();
  v48 = v47;
  sub_26EF38F1C();
  v50 = v49;
  v51 = swift_task_alloc();
  v0[37] = v51;
  *v51 = v0;
  v51[1] = sub_26EF16D70;
  v52 = v0[15];
  v53 = v0[12];

  return VoiceBankingSession.updateSampleForCapturedRecording(sampleID:audioFileURL:userScore:userPhrase:recordingDate:spl:splThreshold:snr:snrThreshold:)(v36, v38, v52, v39, v40, v42, v53, v44, v46, v48, v50);
}

uint64_t sub_26EF16D70()
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v4 = *v1;
  *(*v1 + 304) = v0;

  v5 = v2[36];
  v6 = v2[35];
  (*(v2[11] + 8))(v2[12], v2[10]);

  v7 = v2[29];
  v8 = v2[28];
  if (v0)
  {
    v9 = sub_26EF17338;
  }

  else
  {
    v9 = sub_26EF16F38;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_26EF16F38()
{
  v62 = v0;
  v1 = *(v0 + 304);
  v2 = *(v0 + 240);
  v3 = *(v0 + 216);
  v4 = *(v0 + 176);
  v5 = *(v0 + 136);

  v6 = sub_26EF38E7C();
  sub_26EEDF798(v6, v7, v5);
  if (!v1)
  {
    v17 = *(v0 + 248);
    v16 = *(v0 + 256);
    v18 = *(v0 + 152);
    v20 = *(v0 + 128);
    v19 = *(v0 + 136);

    sub_26EE13B88(v19, v20, &unk_2806C9CA0, &qword_26EF3F100);
    if (v17(v20, 1, v18) == 1)
    {
      sub_26EE14578(*(v0 + 128), &unk_2806C9CA0, &qword_26EF3F100);
LABEL_15:
      v36 = *(v0 + 200);
      v58 = *(v0 + 192);
      v60 = *(v0 + 208);
      v37 = *(v0 + 176);
      v39 = *(v0 + 152);
      v38 = *(v0 + 160);
      v40 = *(v0 + 136);
      v41 = *(v0 + 112);
      v42 = *(v0 + 120);
      v43 = *(v0 + 104);
      v44 = *(v0 + 72);
      sub_26EF17564();
      sub_26EE14578(v40, &unk_2806C9CA0, &qword_26EF3F100);
      (*(v41 + 8))(v42, v43);
      (*(v38 + 8))(v37, v39);
      (*(v36 + 8))(v60, v58);
      v45 = *(v0 + 208);
      v46 = *(v0 + 176);
      v47 = *(v0 + 184);
      v48 = *(v0 + 168);
      v50 = *(v0 + 136);
      v49 = *(v0 + 144);
      v52 = *(v0 + 120);
      v51 = *(v0 + 128);
      v53 = *(v0 + 96);

      v15 = *(v0 + 8);
      goto LABEL_16;
    }

    v21 = *(v0 + 272);
    v22 = *(v0 + 240);
    (*(v0 + 264))(*(v0 + 168), *(v0 + 128), *(v0 + 152));
    VoiceBankingSession.script.getter(&v61);
    v23 = v61;
    if (!v61)
    {

      goto LABEL_14;
    }

    v24 = *(v0 + 168);
    v25 = swift_task_alloc();
    *(v25 + 16) = v24;
    v26 = sub_26EF17478(sub_26EF2086C, v25, v23);
    v28 = v27;

    if (v28)
    {
LABEL_14:
      (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
      goto LABEL_15;
    }

    v29 = *(v0 + 240);
    v31 = VoiceBankingSession.script.modify((v0 + 16));
    v32 = *v30;
    if (!*v30)
    {
LABEL_12:
      (v31)(v0 + 16, 0);
      goto LABEL_14;
    }

    v33 = v30;
    v34 = *v30;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v33 = v32;
    if (result)
    {
      if ((v26 & 0x8000000000000000) == 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      result = sub_26EF20ADC(v32);
      v32 = result;
      *v33 = result;
      if ((v26 & 0x8000000000000000) == 0)
      {
LABEL_10:
        if (v26 < v32[2])
        {
          (*(*(v0 + 160) + 24))(v32 + ((*(*(v0 + 160) + 80) + 32) & ~*(*(v0 + 160) + 80)) + *(*(v0 + 160) + 72) * v26, *(v0 + 168), *(v0 + 152));
          goto LABEL_12;
        }

LABEL_21:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  v9 = *(v0 + 200);
  v8 = *(v0 + 208);
  v11 = *(v0 + 184);
  v10 = *(v0 + 192);
  v12 = *(v0 + 176);
  v14 = *(v0 + 152);
  v13 = *(v0 + 160);
  v54 = *(v0 + 168);
  v55 = *(v0 + 144);
  v56 = *(v0 + 136);
  v57 = *(v0 + 128);
  v59 = *(v0 + 96);
  (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));
  (*(v13 + 8))(v12, v14);
  (*(v9 + 8))(v8, v10);

  v15 = *(v0 + 8);
LABEL_16:

  return v15();
}

uint64_t sub_26EF17338()
{
  v1 = v0[27];

  v3 = v0[25];
  v2 = v0[26];
  v5 = v0[23];
  v4 = v0[24];
  v7 = v0[21];
  v6 = v0[22];
  v8 = v0[19];
  v9 = v0[20];
  v12 = v0[18];
  v13 = v0[17];
  v14 = v0[16];
  v15 = v0[12];
  v16 = v0[38];
  (*(v0[14] + 8))(v0[15], v0[13]);
  (*(v9 + 8))(v6, v8);
  (*(v3 + 8))(v2, v4);

  v10 = v0[1];

  return v10();
}

uint64_t sub_26EF17478(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(sub_26EF38E9C() - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_26EF17564()
{
  v1 = sub_26EF38A2C();
  v32 = *(v1 - 8);
  v33 = v1;
  v2 = *(v32 + 64);
  MEMORY[0x28223BE20](v1, v3);
  v31 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_26EF3883C();
  v34 = *(v36 - 8);
  v5 = *(v34 + 64);
  MEMORY[0x28223BE20](v36, v6);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9B70, &qword_26EF43F10);
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v8 - 8, v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v31 - v15;
  v17 = sub_26EF38C2C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v21 = MEMORY[0x28223BE20](v17, v20);
  v23 = &v31 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v31 - v25;
  (*(v18 + 104))(&v31 - v25, *MEMORY[0x277D70598], v17);
  swift_getKeyPath();
  swift_getKeyPath();
  (*(v18 + 16))(v23, v26, v17);
  v27 = v0;
  sub_26EF3953C();
  sub_26EF0F600();
  (*(v18 + 8))(v26, v17);
  v28 = *&v27[OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel_voiceBankingSession];
  v37 = 0;
  VoiceBankingSession.sampleState.setter(&v37);
  v29 = sub_26EF38FEC();
  (*(*(v29 - 8) + 56))(v16, 1, 1, v29);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EE13B88(v16, v13, &qword_2806C9B70, &qword_26EF43F10);
  v27;
  sub_26EF3953C();
  sub_26EE14578(v16, &qword_2806C9B70, &qword_26EF43F10);
  return sub_26EF1966C();
}

uint64_t sub_26EF17B00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9E48, &unk_26EF44480);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v14 - v8;
  v10 = *(a2 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel_audioService);
  if ((sub_26EF38EDC() & 1) == 0)
  {
    return sub_26EF3B2BC();
  }

  (*(v5 + 16))(v9, a1, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v9, v4);
  sub_26EF38EEC();
}

uint64_t sub_26EF17C6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v42 = a5;
  v41 = a6;
  v37 = a2;
  v38 = a4;
  v45 = a1;
  v46 = a3;
  v6 = sub_26EF3917C();
  v39 = v6;
  v7 = *(v6 - 8);
  v44 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9BE0, &qword_26EF3D3C0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8, v14);
  v16 = &v37 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8, v19);
  v21 = &v37 - v20;
  v22 = sub_26EF3B30C();
  (*(*(v22 - 8) + 56))(v21, 1, 1, v22);
  sub_26EE13B88(v41, v16, &qword_2806C9BE0, &qword_26EF3D3C0);
  (*(v7 + 16))(v10, v42, v6);
  sub_26EF3B2DC();

  v43 = v43;

  v23 = sub_26EF3B2CC();
  v24 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v25 = (v13 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v26 + 23) & 0xFFFFFFFFFFFFFFF8;
  v28 = (*(v7 + 80) + v27 + 16) & ~*(v7 + 80);
  v29 = swift_allocObject();
  v30 = MEMORY[0x277D85700];
  *(v29 + 16) = v23;
  *(v29 + 24) = v30;
  sub_26EE14D98(v16, v29 + v24, &qword_2806C9BE0, &qword_26EF3D3C0);
  *(v29 + v25) = v43;
  v31 = (v29 + v26);
  v32 = v37;
  *v31 = v45;
  v31[1] = v32;
  v33 = (v29 + v27);
  v35 = v38;
  v34 = v39;
  *v33 = v46;
  v33[1] = v35;
  (*(v7 + 32))(v29 + v28, v40, v34);
  sub_26EE2C388(0, 0, v21, &unk_26EF44300, v29);
}

uint64_t sub_26EF17FAC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_26EF3883C();
  v67 = *(v4 - 8);
  v68 = v4;
  v5 = *(v67 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v69 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6840, &qword_26EF3CD50);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v70 = (&v63 - v11);
  v12 = sub_26EF37DCC();
  v73 = *(v12 - 8);
  v74 = v12;
  v13 = *(v73 + 64);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v66 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15, v16);
  v65 = &v63 - v18;
  MEMORY[0x28223BE20](v17, v19);
  v71 = &v63 - v20;
  v21 = sub_26EF38FEC();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v63 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9B70, &qword_26EF43F10);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8, v29);
  v31 = &v63 - v30;
  v75 = a1;
  v32 = sub_26EF38E7C();
  v34 = v33;
  swift_getKeyPath();
  swift_getKeyPath();
  v72 = v2;
  sub_26EF3952C();

  if ((*(v22 + 48))(v31, 1, v21))
  {
    sub_26EE14578(v31, &qword_2806C9B70, &qword_26EF43F10);

    goto LABEL_3;
  }

  (*(v22 + 16))(v26, v31, v21);
  sub_26EE14578(v31, &qword_2806C9B70, &qword_26EF43F10);
  v39 = sub_26EF38FBC();
  v41 = v40;
  (*(v22 + 8))(v26, v21);
  if (v32 == v39 && v34 == v41)
  {

    return sub_26EF18664();
  }

  v42 = sub_26EF3B82C();

  if (v42)
  {
    return sub_26EF18664();
  }

LABEL_3:
  result = sub_26EF38DDC();
  if (result)
  {
    v36 = v70;
    sub_26EF38E5C();
    v37 = v73;
    v38 = v74;
    if ((*(v73 + 48))(v36, 1, v74) == 1)
    {
      return sub_26EE14578(v36, &qword_2806C6840, &qword_26EF3CD50);
    }

    else
    {
      v43 = *(v37 + 32);
      v44 = v71;
      v75 = v37 + 32;
      v70 = v43;
      v43(v71, v36, v38);
      v45 = v69;
      sub_26EF3933C();
      v46 = v65;
      v64 = *(v37 + 16);
      v64(v65, v44, v38);
      v47 = sub_26EF3881C();
      v48 = sub_26EF3B43C();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v76 = v50;
        *v49 = 136315138;
        v51 = sub_26EF37D9C();
        v53 = v52;
        v65 = *(v73 + 8);
        (v65)(v46, v74);
        v54 = sub_26EE40670(v51, v53, &v76);
        v38 = v74;

        *(v49 + 4) = v54;
        _os_log_impl(&dword_26EE01000, v47, v48, "Will play back saved sample recording: %s", v49, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v50);
        v55 = v50;
        v37 = v73;
        MEMORY[0x2743842A0](v55, -1, -1);
        MEMORY[0x2743842A0](v49, -1, -1);

        (*(v67 + 8))(v69, v68);
      }

      else
      {

        v65 = *(v37 + 8);
        (v65)(v46, v38);
        (*(v67 + 8))(v45, v68);
      }

      v57 = v71;
      v56 = v72;
      v58 = *&v72[OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel_audioService];
      v59 = v66;
      v64(v66, v71, v38);
      v60 = (*(v37 + 80) + 24) & ~*(v37 + 80);
      v61 = swift_allocObject();
      *(v61 + 16) = v56;
      v70(v61 + v60, v59, v38);
      v62 = v56;
      sub_26EF38EBC();

      return (v65)(v57, v38);
    }
  }

  return result;
}

uint64_t sub_26EF18664()
{
  v1 = v0;
  v2 = sub_26EF37DCC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v2, v5);
  v61 = v7;
  v62 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v63 = &v52 - v9;
  v10 = sub_26EF3883C();
  v59 = *(v10 - 8);
  v60 = v10;
  v11 = *(v59 + 64);
  MEMORY[0x28223BE20](v10, v12);
  v64 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9B70, &qword_26EF43F10);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v18 = &v52 - v17;
  v19 = sub_26EF38FEC();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v23 = MEMORY[0x28223BE20](v19, v22);
  v25 = &v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v26);
  v28 = &v52 - v27;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();

  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    return sub_26EE14578(v18, &qword_2806C9B70, &qword_26EF43F10);
  }

  v58 = v1;
  v30 = v2;
  (*(v20 + 32))(v28, v18, v19);
  sub_26EF3933C();
  (*(v20 + 16))(v25, v28, v19);
  v31 = sub_26EF3881C();
  v32 = sub_26EF3B43C();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v54 = v33;
    v55 = swift_slowAlloc();
    v65 = v55;
    *v33 = 136315138;
    v34 = v63;
    sub_26EF38F0C();
    v53 = sub_26EF37D9C();
    v36 = v35;
    (*(v3 + 8))(v34, v30);
    v37 = *(v20 + 8);
    v56 = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v57 = v37;
    v37(v25, v19);
    v38 = sub_26EE40670(v53, v36, &v65);
    v39 = v34;

    v40 = v54;
    *(v54 + 1) = v38;
    v41 = v32;
    v42 = v40;
    _os_log_impl(&dword_26EE01000, v31, v41, "Will play back unsaved recording: %s", v40, 0xCu);
    v43 = v55;
    __swift_destroy_boxed_opaque_existential_1(v55);
    MEMORY[0x2743842A0](v43, -1, -1);
    MEMORY[0x2743842A0](v42, -1, -1);

    (*(v59 + 8))(v64, v60);
  }

  else
  {

    v44 = *(v20 + 8);
    v56 = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v57 = v44;
    v44(v25, v19);
    (*(v59 + 8))(v64, v60);
    v39 = v63;
  }

  v45 = v39;
  sub_26EF38F0C();
  v46 = v58;
  v47 = *&v58[OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel_audioService];
  v48 = v62;
  (*(v3 + 16))(v62, v45, v30);
  v49 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v50 = swift_allocObject();
  *(v50 + 16) = v46;
  (*(v3 + 32))(v50 + v49, v48, v30);
  v51 = v46;
  sub_26EF38EBC();

  (*(v3 + 8))(v45, v30);
  return v57(v28, v19);
}

uint64_t sub_26EF18BF4(void *a1, uint64_t a2)
{
  v4 = sub_26EF37DCC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v8 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v21 - v12;
  v14 = sub_26EF3B30C();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  (*(v5 + 16))(v8, a2, v4);
  sub_26EF3B2DC();
  v15 = a1;
  v16 = sub_26EF3B2CC();
  v17 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  *(v18 + 2) = v16;
  *(v18 + 3) = v19;
  *(v18 + 4) = v15;
  (*(v5 + 32))(&v18[v17], v8, v4);
  sub_26EE2C388(0, 0, v13, &unk_26EF44498, v18);
}

uint64_t sub_26EF18DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_26EF38A2C();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9BE0, &qword_26EF3D3C0) - 8) + 64) + 15;
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();
  v10 = sub_26EF37DCC();
  v5[9] = v10;
  v11 = *(v10 - 8);
  v5[10] = v11;
  v12 = *(v11 + 64) + 15;
  v5[11] = swift_task_alloc();
  v5[12] = sub_26EF3B2DC();
  v5[13] = sub_26EF3B2CC();
  v5[14] = sub_26EF3B2CC();
  v13 = swift_task_alloc();
  v5[15] = v13;
  *v13 = v5;
  v13[1] = sub_26EF18FA8;

  return sub_26EF12AE4();
}

uint64_t sub_26EF18FA8()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 112);
  v4 = *(*v0 + 96);
  v8 = *v0;

  v6 = sub_26EF3B29C();
  *(v1 + 128) = v6;
  *(v1 + 136) = v5;

  return MEMORY[0x2822009F8](sub_26EF190EC, v6, v5);
}

uint64_t sub_26EF190EC()
{
  v1 = v0[12];
  v2 = v0[2];
  v3 = sub_26EF3B2CC();
  v0[18] = v3;
  v4 = swift_task_alloc();
  v0[19] = v4;
  *(v4 + 16) = v2;
  v5 = *(MEMORY[0x277D859E0] + 4);
  v6 = swift_task_alloc();
  v0[20] = v6;
  *v6 = v0;
  v6[1] = sub_26EF191F4;
  v7 = MEMORY[0x277D85700];
  v8 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v6, v3, v7, 0xD000000000000015, 0x800000026EF47030, sub_26EF22954, v4, v8);
}

uint64_t sub_26EF191F4()
{
  v1 = *v0;
  v2 = *(*v0 + 160);
  v3 = *(*v0 + 152);
  v4 = *(*v0 + 144);
  v8 = *v0;

  v5 = *(v1 + 136);
  v6 = *(v1 + 128);

  return MEMORY[0x2822009F8](sub_26EF19354, v6, v5);
}

uint64_t sub_26EF19354()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];

  v5 = sub_26EF3B29C();

  return MEMORY[0x2822009F8](sub_26EF193D8, v5, v4);
}

uint64_t sub_26EF193D8()
{
  v1 = *(v0 + 104);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = *(v0 + 72);
  v5 = *(v0 + 24);

  (*(v3 + 16))(v2, v5, v4);
  v6 = objc_allocWithZone(MEMORY[0x277CB83D0]);
  v7 = sub_26EF20354(v2);
  v8 = *(v0 + 16);
  v9 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel_player;
  v10 = *(v8 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel_player);
  *(v8 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel_player) = v7;

  v11 = *(v8 + v9);
  if (v11)
  {
    [v11 setDelegate_];
    v12 = *(v8 + v9);
    if (v12)
    {
      [v12 play];
    }
  }

  v13 = *(v0 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 168) = 1;
  v14 = v13;
  sub_26EF3953C();
  v15 = *(v0 + 88);
  v16 = *(v0 + 56);
  v17 = *(v0 + 64);
  v18 = *(v0 + 48);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_26EF1966C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9CE0, &qword_26EF44308);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v66 = &v60 - v3;
  v4 = sub_26EF390AC();
  v68 = *(v4 - 8);
  v69 = v4;
  v5 = *(v68 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v67 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_26EF37DCC();
  v8 = *(v70 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x28223BE20](v70, v10);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v65 = &v60 - v15;
  v16 = sub_26EF3883C();
  v73 = *(v16 - 8);
  v74 = v16;
  v17 = *(v73 + 64);
  MEMORY[0x28223BE20](v16, v18);
  v72 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9B70, &qword_26EF43F10);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8, v22);
  v24 = &v60 - v23;
  v25 = sub_26EF38FEC();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v29 = MEMORY[0x28223BE20](v25, v28);
  v31 = &v60 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v32);
  v34 = &v60 - v33;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();
  v35 = v25;

  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    return sub_26EE14578(v24, &qword_2806C9B70, &qword_26EF43F10);
  }

  (*(v26 + 32))(v34, v24, v25);
  v37 = sub_26EE27ED0();
  (*(v73 + 16))(v72, v37, v74);
  (*(v26 + 16))(v31, v34, v25);
  v38 = sub_26EF3881C();
  v39 = sub_26EF3B43C();
  v40 = os_log_type_enabled(v38, v39);
  v64 = v8;
  if (v40)
  {
    v41 = swift_slowAlloc();
    v61 = v41;
    v63 = swift_slowAlloc();
    v75 = v63;
    *v41 = 136315138;
    v42 = v65;
    v62 = v39;
    sub_26EF38F0C();
    sub_26EF204A0(&qword_2806C9CE8, MEMORY[0x277CC9260]);
    v71 = v34;
    v43 = v26;
    v44 = v13;
    v45 = v70;
    v46 = sub_26EF3B7FC();
    v60 = v38;
    v48 = v47;
    v49 = v45;
    v13 = v44;
    v50 = v43;
    v34 = v71;
    (*(v8 + 8))(v42, v49);
    v51 = *(v50 + 8);
    v25 = v35;
    v51(v31, v35);
    v52 = sub_26EE40670(v46, v48, &v75);

    v54 = v60;
    v53 = v61;
    *(v61 + 1) = v52;
    _os_log_impl(&dword_26EE01000, v54, v62, "Deleting unsaved recording at path: %s", v53, 0xCu);
    v55 = v63;
    __swift_destroy_boxed_opaque_existential_1(v63);
    MEMORY[0x2743842A0](v55, -1, -1);
    MEMORY[0x2743842A0](v53, -1, -1);
  }

  else
  {

    v51 = *(v26 + 8);
    v51(v31, v25);
  }

  (*(v73 + 8))(v72, v74);
  v56 = v67;
  sub_26EF38DCC();
  sub_26EF38F0C();
  v57 = sub_26EF38A2C();
  v58 = v34;
  v59 = v66;
  (*(*(v57 - 8) + 56))(v66, 1, 1, v57);
  sub_26EF3909C();
  sub_26EE14578(v59, &qword_2806C9CE0, &qword_26EF44308);
  (*(v64 + 8))(v13, v70);
  (*(v68 + 8))(v56, v69);
  return (v51)(v58, v25);
}

uint64_t sub_26EF19D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v4[10] = swift_getObjectType();
  v5 = sub_26EF3883C();
  v4[11] = v5;
  v6 = *(v5 - 8);
  v4[12] = v6;
  v7 = *(v6 + 64) + 15;
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v8 = sub_26EF38CDC();
  v4[15] = v8;
  v9 = *(v8 - 8);
  v4[16] = v9;
  v10 = *(v9 + 64) + 15;
  v4[17] = swift_task_alloc();
  v11 = sub_26EF38E9C();
  v4[18] = v11;
  v12 = *(v11 - 8);
  v4[19] = v12;
  v13 = *(v12 + 64) + 15;
  v4[20] = swift_task_alloc();
  v4[21] = sub_26EF3B2DC();
  v4[22] = sub_26EF3B2CC();
  v15 = sub_26EF3B29C();
  v4[23] = v15;
  v4[24] = v14;

  return MEMORY[0x2822009F8](sub_26EF19EE4, v15, v14);
}

uint64_t sub_26EF19EE4()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = *(v0[9] + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel_voiceBankingSession);
  v4 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_sample;
  swift_beginAccess();
  if ((*(v1 + 48))(v3 + v4, 1, v2))
  {
    v5 = v0[22];

    v6 = v0[20];
    v7 = v0[17];
    v9 = v0[13];
    v8 = v0[14];

    v10 = v0[1];

    return v10();
  }

  else
  {
    v13 = v0[19];
    v12 = v0[20];
    v14 = v0[17];
    v15 = v0[18];
    v16 = v0[16];
    v25 = v0[15];
    v17 = v0[9];
    (*(v13 + 16))(v12, v3 + v4, v15);
    sub_26EF38E6C();
    (*(v13 + 8))(v12, v15);
    sub_26EF0F990();
    v18 = objc_allocWithZone(MEMORY[0x277CB84C0]);
    v19 = sub_26EF3B0BC();

    v0[25] = [v18 initWithString_];

    v20 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceCreationLocale;
    swift_beginAccess();
    (*(v16 + 16))(v14, v3 + v20, v25);
    v21 = sub_26EF38CAC();
    v23 = v22;
    v0[26] = v22;
    (*(v16 + 8))(v14, v25);
    v24 = swift_task_alloc();
    v0[27] = v24;
    *v24 = v0;
    v24[1] = sub_26EF1A170;

    return sub_26EF20F3C(v21, v23);
  }
}

uint64_t sub_26EF1A170(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 216);
  v6 = *(*v2 + 208);
  v10 = *v2;
  *(v4 + 224) = a1;
  *(v4 + 232) = a2;

  v7 = *(v3 + 192);
  v8 = *(v3 + 184);

  return MEMORY[0x2822009F8](sub_26EF1A2BC, v8, v7);
}

uint64_t sub_26EF1A2BC()
{
  v51 = v0;
  v1 = v0[29];
  if (v1)
  {
    v2 = v0[28];
    v3 = v0[25];
    v5 = v0[12];
    v4 = v0[13];
    v6 = v0[11];
    v7 = objc_opt_self();
    v8 = sub_26EF3B0BC();
    v9 = [v7 _voiceFromInternalVoiceListWithIdentifier_];

    [v3 setVoice_];
    v10 = sub_26EE27ED0();
    (*(v5 + 16))(v4, v10, v6);

    v11 = v3;
    v12 = sub_26EF3881C();
    v13 = sub_26EF3B43C();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = v0[28];
      v15 = v0[25];
      v16 = v0[12];
      v48 = v0[11];
      v49 = v0[13];
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v50 = v19;
      *v17 = 136315394;
      v20 = sub_26EE40670(v14, v1, &v50);

      *(v17 + 4) = v20;
      *(v17 + 12) = 2112;
      v21 = [v15 voice];
      *(v17 + 14) = v21;
      *v18 = v21;
      _os_log_impl(&dword_26EE01000, v12, v13, "Will speak preview with voiceID: %s. Voice=%@", v17, 0x16u);
      sub_26EE14578(v18, &qword_2806C7140, &unk_26EF3E420);
      MEMORY[0x2743842A0](v18, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x2743842A0](v19, -1, -1);
      MEMORY[0x2743842A0](v17, -1, -1);

      (*(v16 + 8))(v49, v48);
    }

    else
    {
      v37 = v0[12];
      v36 = v0[13];
      v38 = v0[11];

      (*(v37 + 8))(v36, v38);
    }

    v39 = v0[21];
    v0[30] = sub_26EF3B2CC();
    v41 = sub_26EF3B29C();
    v0[31] = v41;
    v0[32] = v40;

    return MEMORY[0x2822009F8](sub_26EF1A6CC, v41, v40);
  }

  else
  {
    v22 = v0[22];
    v23 = v0[14];
    v24 = v0[11];
    v25 = v0[12];

    v26 = sub_26EE27ED0();
    (*(v25 + 16))(v23, v26, v24);
    v27 = sub_26EF3881C();
    v28 = sub_26EF3B45C();
    v29 = os_log_type_enabled(v27, v28);
    v30 = v0[25];
    v31 = v0[14];
    v32 = v0[11];
    v33 = v0[12];
    if (v29)
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_26EE01000, v27, v28, "Could not find a voiceID to speak preview", v34, 2u);
      MEMORY[0x2743842A0](v34, -1, -1);
      v35 = v27;
    }

    else
    {
      v35 = v0[25];
      v30 = v27;
    }

    (*(v33 + 8))(v31, v32);
    v42 = v0[20];
    v43 = v0[17];
    v45 = v0[13];
    v44 = v0[14];

    v46 = v0[1];

    return v46();
  }
}

uint64_t sub_26EF1A6CC()
{
  v1 = v0[21];
  v2 = v0[9];
  v3 = sub_26EF3B2CC();
  v0[33] = v3;
  v4 = swift_task_alloc();
  v0[34] = v4;
  *(v4 + 16) = v2;
  v5 = *(MEMORY[0x277D859E0] + 4);
  v6 = swift_task_alloc();
  v0[35] = v6;
  *v6 = v0;
  v6[1] = sub_26EF1A7D4;
  v7 = MEMORY[0x277D85700];
  v8 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v6, v3, v7, 0xD00000000000002CLL, 0x800000026EF472B0, sub_26EF21D40, v4, v8);
}

uint64_t sub_26EF1A7D4()
{
  v1 = *v0;
  v2 = *(*v0 + 280);
  v3 = *(*v0 + 272);
  v4 = *(*v0 + 264);
  v8 = *v0;

  v5 = *(v1 + 256);
  v6 = *(v1 + 248);

  return MEMORY[0x2822009F8](sub_26EF1A934, v6, v5);
}

uint64_t sub_26EF1A934()
{
  v1 = v0[30];

  v2 = v0[23];
  v3 = v0[24];

  return MEMORY[0x2822009F8](sub_26EF1A998, v2, v3);
}

uint64_t sub_26EF1A998()
{
  v1 = v0[25];
  v2 = v0[22];
  v3 = v0[9];
  v4 = v0[10];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();

  v5 = v0[8];
  [v5 speakUtterance_];

  sub_26EF204A0(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel);
  sub_26EF394BC();
  sub_26EF394DC();

  v6 = v0[20];
  v7 = v0[17];
  v9 = v0[13];
  v8 = v0[14];

  v10 = v0[1];

  return v10();
}

uint64_t sub_26EF1AAEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9E48, &unk_26EF44480);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v14 - v8;
  v10 = *(a2 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel_audioService);
  (*(v5 + 16))(&v14 - v8, a1, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v9, v4);
  sub_26EF38EBC();
}

uint64_t sub_26EF1AC40()
{
  v1[3] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v1[5] = sub_26EF3B2DC();
  v1[6] = sub_26EF3B2CC();
  v4 = sub_26EF3B29C();
  v1[7] = v4;
  v1[8] = v3;

  return MEMORY[0x2822009F8](sub_26EF1AD14, v4, v3);
}

uint64_t sub_26EF1AD14()
{
  v1 = v0[3];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();

  v2 = v0[2];
  v3 = [v2 isSpeaking];

  if (v3)
  {
    v4 = v0[6];
    v5 = v0[3];

    sub_26EF0F990();
    v6 = v0[4];

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = swift_task_alloc();
    v0[9] = v9;
    *v9 = v0;
    v9[1] = sub_26EF1AE60;
    v10 = v0[3];

    return sub_26EF12AE4();
  }
}

uint64_t sub_26EF1AE60()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v6 = *v0;

  v3 = *(v1 + 64);
  v4 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_26EF1AF80, v4, v3);
}

uint64_t sub_26EF1AF80()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];

  v5 = sub_26EF3B30C();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = v4;
  v7 = sub_26EF3B2CC();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v6;
  sub_26EE2C388(0, 0, v3, &unk_26EF44328, v8);

  v10 = v0[4];

  v11 = v0[1];

  return v11();
}

uint64_t sub_26EF1B094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_26EF3B2DC();
  *(v4 + 24) = sub_26EF3B2CC();
  v6 = sub_26EF3B29C();

  return MEMORY[0x2822009F8](sub_26EF1B12C, v6, v5);
}

uint64_t sub_26EF1B12C()
{
  v7 = v0;
  v2 = v0[2];
  v1 = v0[3];

  v3 = *(v2 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel_voiceBankingSession);
  v6 = 1;
  VoiceBankingSession.sampleState.setter(&v6);
  v4 = v0[1];

  return v4();
}

uint64_t sub_26EF1B1A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[22] = v37;
  v8[23] = v38;
  v8[20] = a7;
  v8[21] = a8;
  v8[18] = a5;
  v8[19] = a6;
  v8[17] = a4;
  v9 = sub_26EF38A2C();
  v8[24] = v9;
  v10 = *(v9 - 8);
  v8[25] = v10;
  v11 = *(v10 + 64) + 15;
  v8[26] = swift_task_alloc();
  v12 = sub_26EF3883C();
  v8[27] = v12;
  v13 = *(v12 - 8);
  v8[28] = v13;
  v14 = *(v13 + 64) + 15;
  v8[29] = swift_task_alloc();
  v8[30] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9B70, &qword_26EF43F10) - 8) + 64) + 15;
  v8[31] = swift_task_alloc();
  v8[32] = swift_task_alloc();
  v16 = sub_26EF38C2C();
  v8[33] = v16;
  v17 = *(v16 - 8);
  v8[34] = v17;
  v18 = *(v17 + 64) + 15;
  v8[35] = swift_task_alloc();
  v8[36] = swift_task_alloc();
  v19 = sub_26EF38BEC();
  v8[37] = v19;
  v20 = *(v19 - 8);
  v8[38] = v20;
  v21 = *(v20 + 64) + 15;
  v8[39] = swift_task_alloc();
  v8[40] = swift_task_alloc();
  v22 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9CA0, &qword_26EF3F100) - 8) + 64) + 15;
  v8[41] = swift_task_alloc();
  v23 = sub_26EF38E9C();
  v8[42] = v23;
  v24 = *(v23 - 8);
  v8[43] = v24;
  v25 = *(v24 + 64) + 15;
  v8[44] = swift_task_alloc();
  v26 = sub_26EF3917C();
  v8[45] = v26;
  v27 = *(v26 - 8);
  v8[46] = v27;
  v28 = *(v27 + 64) + 15;
  v8[47] = swift_task_alloc();
  v29 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9BE0, &qword_26EF3D3C0) - 8) + 64) + 15;
  v8[48] = swift_task_alloc();
  v8[49] = swift_task_alloc();
  v8[50] = swift_task_alloc();
  v30 = sub_26EF38A4C();
  v8[51] = v30;
  v31 = *(v30 - 8);
  v8[52] = v31;
  v32 = *(v31 + 64) + 15;
  v8[53] = swift_task_alloc();
  v8[54] = sub_26EF3B2DC();
  v8[55] = sub_26EF3B2CC();
  v34 = sub_26EF3B29C();
  v8[56] = v34;
  v8[57] = v33;

  return MEMORY[0x2822009F8](sub_26EF1B5CC, v34, v33);
}

uint64_t sub_26EF1B5CC()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 416);
  v3 = *(v0 + 400);
  sub_26EE13B88(*(v0 + 136), v3, &qword_2806C9BE0, &qword_26EF3D3C0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 176);
    v5 = *(v0 + 160);
    sub_26EE14578(*(v0 + 400), &qword_2806C9BE0, &qword_26EF3D3C0);
    v6 = 0;
    v7 = 0xE000000000000000;
    v8 = -1;
    if (v5 && v4)
    {
      v9 = *(v0 + 168);
      v7 = *(v0 + 176);
      v11 = *(v0 + 152);
      v10 = *(v0 + 160);

      sub_26EF3B13C();
      sub_26EF3B13C();
      v8 = sub_26EF3B14C();

      v6 = *(v0 + 168);
    }

    *(v0 + 480) = v6;
    *(v0 + 488) = v7;
    *(v0 + 472) = v8;
    v13 = *(v0 + 368);
    v12 = *(v0 + 376);
    v14 = *(v0 + 360);
    v15 = *(v0 + 184);
    *(v0 + 648) = *MEMORY[0x277D70628];
    v16 = *(v13 + 104);
    *(v0 + 496) = v16;
    *(v0 + 504) = (v13 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v16(v12);
    LOBYTE(v15) = sub_26EF38C1C();
    v17 = *(v13 + 8);
    *(v0 + 512) = v17;
    *(v0 + 520) = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v17(v12, v14);
    if (v15)
    {
      v18 = 0xEB000000006B6365;
      v19 = 0x68635F6F69647561;
    }

    else
    {
      v30 = *(v0 + 336);
      v31 = *(v0 + 344);
      v32 = *(v0 + 328);
      v33 = *(*(v0 + 144) + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel_voiceBankingSession);
      v34 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_sample;
      swift_beginAccess();
      sub_26EE13B88(v33 + v34, v32, &unk_2806C9CA0, &qword_26EF3F100);
      if ((*(v31 + 48))(v32, 1, v30) == 1)
      {
        sub_26EE14578(*(v0 + 328), &unk_2806C9CA0, &qword_26EF3F100);
        v19 = 0;
        v18 = 0xE000000000000000;
      }

      else
      {
        v36 = *(v0 + 344);
        v35 = *(v0 + 352);
        v37 = *(v0 + 336);
        (*(v36 + 32))(v35, *(v0 + 328), v37);
        v19 = sub_26EF38E7C();
        v18 = v38;
        (*(v36 + 8))(v35, v37);
      }
    }

    *(v0 + 536) = v18;
    *(v0 + 528) = v19;
    v40 = *(v0 + 312);
    v39 = *(v0 + 320);
    v41 = *(v0 + 296);
    v42 = *(v0 + 304);
    v43 = *(v0 + 144);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26EF3952C();

    *(v0 + 652) = *MEMORY[0x277D70570];
    v44 = *(v42 + 104);
    *(v0 + 544) = v44;
    *(v0 + 552) = (v42 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v44(v40);
    *(v0 + 560) = sub_26EF204A0(&qword_2806C8B90, MEMORY[0x277D70580]);
    sub_26EF3B1DC();
    sub_26EF3B1DC();
    v45 = *(v42 + 8);
    *(v0 + 568) = v45;
    *(v0 + 576) = (v42 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v45(v40, v41);
    v45(v39, v41);
    if (*(v0 + 88) == *(v0 + 96))
    {
      v47 = *(v0 + 280);
      v46 = *(v0 + 288);
      v48 = *(v0 + 264);
      v49 = *(v0 + 272);
      v50 = *(v0 + 144);
      (*(v49 + 104))(v46, *MEMORY[0x277D70598], v48);
      swift_getKeyPath();
      swift_getKeyPath();
      (*(v49 + 16))(v47, v46, v48);
      v50;
      sub_26EF3953C();
      sub_26EF0F600();
      (*(v49 + 8))(v46, v48);
    }

    v51 = *(v0 + 432);
    *(v0 + 584) = sub_26EF3B2CC();
    v53 = sub_26EF3B29C();
    *(v0 + 592) = v53;
    *(v0 + 600) = v52;

    return MEMORY[0x2822009F8](sub_26EF1BE8C, v53, v52);
  }

  else
  {
    v21 = *(v0 + 416);
    v20 = *(v0 + 424);
    v22 = *(v0 + 408);
    v24 = *(v0 + 384);
    v23 = *(v0 + 392);
    v25 = *(v0 + 144);
    (*(v21 + 32))(v20, *(v0 + 400), v22);
    (*(v21 + 16))(v23, v20, v22);
    (*(v21 + 56))(v23, 0, 1, v22);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26EE13B88(v23, v24, &qword_2806C9BE0, &qword_26EF3D3C0);
    v26 = v25;
    sub_26EF3953C();
    sub_26EE14578(v23, &qword_2806C9BE0, &qword_26EF3D3C0);
    v27 = swift_task_alloc();
    *(v0 + 464) = v27;
    *v27 = v0;
    v27[1] = sub_26EF1BC14;
    v28 = *(v0 + 144);

    return sub_26EF12AE4();
  }
}

uint64_t sub_26EF1BC14()
{
  v1 = *v0;
  v2 = *(*v0 + 464);
  v6 = *v0;

  v3 = *(v1 + 456);
  v4 = *(v1 + 448);

  return MEMORY[0x2822009F8](sub_26EF1BD34, v4, v3);
}

uint64_t sub_26EF1BD34()
{
  v1 = v0[55];
  v3 = v0[52];
  v2 = v0[53];
  v4 = v0[51];
  v5 = v0[18];

  sub_26EF17564();
  (*(v3 + 8))(v2, v4);
  v6 = v0[53];
  v8 = v0[49];
  v7 = v0[50];
  v10 = v0[47];
  v9 = v0[48];
  v11 = v0[44];
  v13 = v0[40];
  v12 = v0[41];
  v14 = v0[39];
  v15 = v0[36];
  v18 = v0[35];
  v19 = v0[32];
  v20 = v0[31];
  v21 = v0[30];
  v22 = v0[29];
  v23 = v0[26];

  v16 = v0[1];

  return v16();
}

uint64_t sub_26EF1BE8C()
{
  v1 = *(v0 + 536);
  v2 = *(v0 + 528);
  v14 = *(v0 + 480);
  v3 = *(v0 + 472);
  v4 = *(v0 + 432);
  v5 = *(v0 + 144);
  v6 = sub_26EF3B2CC();
  *(v0 + 608) = v6;
  v7 = swift_task_alloc();
  *(v0 + 616) = v7;
  *(v7 + 16) = v5;
  *(v7 + 24) = v14;
  *(v7 + 40) = v3;
  *(v7 + 48) = v2;
  *(v7 + 56) = v1;
  v8 = *(MEMORY[0x277D85A40] + 4);
  v9 = swift_task_alloc();
  *(v0 + 624) = v9;
  v10 = sub_26EF38FEC();
  *(v0 + 632) = v10;
  *v9 = v0;
  v9[1] = sub_26EF1BFD4;
  v11 = *(v0 + 256);
  v12 = MEMORY[0x277D85700];

  return MEMORY[0x2822008A0](v11, v6, v12, 0xD000000000000036, 0x800000026EF470A0, sub_26EF22950, v7, v10);
}

uint64_t sub_26EF1BFD4()
{
  v2 = *v1;
  v3 = *(*v1 + 624);
  v11 = *v1;
  *(*v1 + 640) = v0;

  if (v0)
  {
    v4 = v2[75];
    v5 = v2[74];
    v6 = sub_26EF1C844;
  }

  else
  {
    v7 = v2[77];
    v8 = v2[76];
    v9 = v2[67];

    v4 = v2[75];
    v5 = v2[74];
    v6 = sub_26EF1C118;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_26EF1C118()
{
  v1 = v0[73];

  v2 = v0[56];
  v3 = v0[57];

  return MEMORY[0x2822009F8](sub_26EF1C17C, v2, v3);
}

uint64_t sub_26EF1C17C()
{
  v90 = v0;
  v1 = v0[79];
  v2 = v0[55];
  v4 = v0[31];
  v3 = v0[32];
  v5 = v0[30];
  v6 = v0[28];
  v78 = v0[27];
  v82 = v0[61];
  v7 = v0[18];

  (*(*(v1 - 8) + 56))(v3, 0, 1, v1);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EE13B88(v3, v4, &qword_2806C9B70, &qword_26EF43F10);
  v8 = v7;
  sub_26EF3953C();
  sub_26EE14578(v3, &qword_2806C9B70, &qword_26EF43F10);
  v9 = sub_26EE27ED0();
  (*(v6 + 16))(v5, v9, v78);

  v10 = sub_26EF3881C();
  v11 = sub_26EF3B43C();

  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[61];
  if (v12)
  {
    v14 = v0[59];
    v15 = v0[60];
    v83 = v0[30];
    v16 = v0[27];
    v17 = v0[28];
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v89 = v19;
    *v18 = 136315394;
    v20 = sub_26EE40670(v15, v13, &v89);

    *(v18 + 4) = v20;
    *(v18 + 12) = 2048;
    *(v18 + 14) = v14;
    _os_log_impl(&dword_26EE01000, v10, v11, "Speech recognition ended. Recording state = complete. userPhrase=%s userScore=%ld", v18, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x2743842A0](v19, -1, -1);
    MEMORY[0x2743842A0](v18, -1, -1);

    (*(v17 + 8))(v83, v16);
  }

  else
  {
    v21 = v0[30];
    v22 = v0[27];
    v23 = v0[28];
    v24 = v0[61];

    (*(v23 + 8))(v21, v22);
  }

  v25 = v0[72];
  v26 = v0[71];
  v27 = v0[70];
  v79 = v0[68];
  v84 = v0[69];
  v29 = v0[39];
  v28 = v0[40];
  v30 = v0[37];
  v31 = v0[18];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();

  v79(v29, *MEMORY[0x277D70578], v30);
  sub_26EF3B1DC();
  sub_26EF3B1DC();
  v26(v29, v30);
  v26(v28, v30);
  if (v0[13] == v0[14])
  {
    goto LABEL_6;
  }

  v32 = v0[65];
  v33 = v0[63];
  v34 = v0[64];
  v35 = v0[47];
  v36 = v0[45];
  v37 = v0[23];
  (v0[62])(v35, *(v0 + 162), v36);
  LOBYTE(v37) = sub_26EF38C1C();
  v34(v35, v36);
  if (v37)
  {
LABEL_6:
    v38 = *(v0[18] + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel_voiceBankingSession);
    v88 = 3;
    VoiceBankingSession.sampleState.setter(&v88);
  }

  v39 = v0[65];
  v40 = v0[63];
  v41 = v0[64];
  v42 = v0[47];
  v43 = v0[45];
  v44 = v0[23];
  (v0[62])(v42, *MEMORY[0x277D70630], v43);
  LOBYTE(v44) = sub_26EF38C1C();
  v41(v42, v43);
  if (v44)
  {
    v45 = v0[71];
    v46 = v0[70];
    v80 = v0[69];
    v85 = v0[72];
    v76 = v0[68];
    v47 = *(v0 + 163);
    v49 = v0[39];
    v48 = v0[40];
    v50 = v0[37];
    v51 = v0[18];
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26EF3952C();

    v76(v49, v47, v50);
    sub_26EF3B1DC();
    sub_26EF3B1DC();
    v45(v49, v50);
    v45(v48, v50);
    if (v0[15] == v0[16])
    {
      v52 = v0[18];
      v53 = *(v52 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel_voiceBankingSession);
      v87 = 2;
      VoiceBankingSession.sampleState.setter(&v87);
      if (sub_26EE82F00())
      {
        v54 = 0.0;
      }

      else
      {
        v54 = 1.0;
      }

      v55 = objc_opt_self();
      v56 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v0[6] = sub_26EF22220;
      v0[7] = v56;
      v0[2] = MEMORY[0x277D85DD0];
      v0[3] = 1107296256;
      v0[4] = sub_26EF1D798;
      v0[5] = &block_descriptor_166;
      v57 = _Block_copy(v0 + 2);
      v58 = v0[7];

      v59 = [v55 scheduledTimerWithTimeInterval:0 repeats:v57 block:v54];
      _Block_release(v57);
      v60 = *(v52 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel_speechRecognitionDelayTimer);
      *(v52 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel_speechRecognitionDelayTimer) = v59;
    }
  }

  v61 = v0[53];
  v63 = v0[49];
  v62 = v0[50];
  v65 = v0[47];
  v64 = v0[48];
  v66 = v0[44];
  v68 = v0[40];
  v67 = v0[41];
  v69 = v0[39];
  v70 = v0[36];
  v73 = v0[35];
  v74 = v0[32];
  v75 = v0[31];
  v77 = v0[30];
  v81 = v0[29];
  v86 = v0[26];

  v71 = v0[1];

  return v71();
}

uint64_t sub_26EF1C844()
{
  v1 = v0[77];
  v2 = v0[76];
  v3 = v0[73];
  v4 = v0[67];
  v5 = v0[61];

  v6 = v0[56];
  v7 = v0[57];

  return MEMORY[0x2822009F8](sub_26EF1C8E0, v6, v7);
}

uint64_t sub_26EF1C8E0()
{
  v1 = v0[80];
  v2 = v0[55];
  v3 = v0[29];

  sub_26EF3934C();
  v4 = v1;
  v5 = sub_26EF3881C();
  v6 = sub_26EF3B47C();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[80];
  if (v7)
  {
    v9 = v0[51];
    v11 = v0[25];
    v10 = v0[26];
    v12 = v0[24];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    (*(v11 + 104))(v10, *MEMORY[0x277D704D8], v12);
    sub_26EF204A0(&unk_2806C9CD0, MEMORY[0x277D70518]);
    swift_allocError();
    sub_26EF389BC();
    (*(v11 + 8))(v10, v12);
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v15;
    *v14 = v15;
    _os_log_impl(&dword_26EE01000, v5, v6, "%@", v13, 0xCu);
    sub_26EE14578(v14, &qword_2806C7140, &unk_26EF3E420);
    MEMORY[0x2743842A0](v14, -1, -1);
    MEMORY[0x2743842A0](v13, -1, -1);
  }

  else
  {
  }

  (*(v0[28] + 8))(v0[29], v0[27]);
  v16 = v0[53];
  v18 = v0[49];
  v17 = v0[50];
  v20 = v0[47];
  v19 = v0[48];
  v21 = v0[44];
  v23 = v0[40];
  v22 = v0[41];
  v24 = v0[39];
  v25 = v0[36];
  v28 = v0[35];
  v29 = v0[32];
  v30 = v0[31];
  v31 = v0[30];
  v32 = v0[29];
  v33 = v0[26];

  v26 = v0[1];

  return v26();
}

void sub_26EF1CBC8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v4 = &v12 - v3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = sub_26EF3B30C();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    sub_26EF3B2DC();
    v8 = v6;
    v9 = sub_26EF3B2CC();
    v10 = swift_allocObject();
    v11 = MEMORY[0x277D85700];
    v10[2] = v9;
    v10[3] = v11;
    v10[4] = v8;
    sub_26EE6F2A4(0, 0, v4, &unk_26EF444F0, v10);
  }
}

uint64_t sub_26EF1CD1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_26EF3917C();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();
  v4[6] = sub_26EF3B2DC();
  v4[7] = sub_26EF3B2CC();
  v8 = swift_task_alloc();
  v4[8] = v8;
  *v8 = v4;
  v8[1] = sub_26EF1CE28;

  return sub_26EF16730();
}

uint64_t sub_26EF1CE28()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 48);
  v11 = *v1;
  v3[9] = v2;

  v8 = sub_26EF3B29C();
  v3[10] = v8;
  v3[11] = v7;
  if (v2)
  {
    v9 = sub_26EF1D728;
  }

  else
  {
    v9 = sub_26EF1CF88;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_26EF1CF88()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel_voiceBankingSession);
  sub_26EED7058();
  if (VoiceBankingSession.isRecordingComplete.getter() || sub_26EE82F00())
  {
    if (VoiceBankingSession.isRecordingComplete.getter())
    {
      v2 = v0[6];
      v0[13] = sub_26EF3B2CC();
      v3 = swift_task_alloc();
      v0[14] = v3;
      *v3 = v0;
      v3[1] = sub_26EF1D318;
      v4 = v0[2];

      return sub_26EF12AE4();
    }

    else
    {
      v6 = v0[7];

      v7 = v0[5];

      v8 = v0[1];

      return v8();
    }
  }

  else
  {
    (*(v0[4] + 104))(v0[5], *MEMORY[0x277D70630], v0[3]);
    v9 = swift_task_alloc();
    v0[12] = v9;
    *v9 = v0;
    v9[1] = sub_26EF1D128;
    v10 = v0[5];
    v11 = v0[2];

    return sub_26EF13E7C(v10);
  }
}

uint64_t sub_26EF1D128()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 32);
  v5 = *(*v0 + 24);
  v9 = *v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v1 + 88);
  v7 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_26EF1D2AC, v7, v6);
}

uint64_t sub_26EF1D2AC()
{
  v1 = v0[7];

  v2 = v0[5];

  v3 = v0[1];

  return v3();
}

uint64_t sub_26EF1D318()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 104);
  v4 = *(*v0 + 48);
  v8 = *v0;

  v6 = sub_26EF3B29C();
  *(v1 + 120) = v6;
  *(v1 + 128) = v5;

  return MEMORY[0x2822009F8](sub_26EF1D45C, v6, v5);
}

uint64_t sub_26EF1D45C()
{
  v1 = v0[6];
  v2 = v0[2];
  v3 = sub_26EF3B2CC();
  v0[17] = v3;
  v4 = swift_task_alloc();
  v0[18] = v4;
  *(v4 + 16) = v2;
  v5 = *(MEMORY[0x277D859E0] + 4);
  v6 = swift_task_alloc();
  v0[19] = v6;
  *v6 = v0;
  v6[1] = sub_26EF1D564;
  v7 = MEMORY[0x277D85700];
  v8 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v6, v3, v7, 0xD000000000000015, 0x800000026EF47030, sub_26EF22954, v4, v8);
}

uint64_t sub_26EF1D564()
{
  v1 = *v0;
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 144);
  v4 = *(*v0 + 136);
  v8 = *v0;

  v5 = *(v1 + 128);
  v6 = *(v1 + 120);

  return MEMORY[0x2822009F8](sub_26EF1D6C4, v6, v5);
}

uint64_t sub_26EF1D6C4()
{
  v1 = v0[13];

  v2 = v0[10];
  v3 = v0[11];

  return MEMORY[0x2822009F8](sub_26EF22940, v2, v3);
}

uint64_t sub_26EF1D728()
{
  v1 = v0[7];
  v2 = v0[5];

  v3 = v0[1];
  v4 = v0[9];

  return v3();
}

void sub_26EF1D798(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_26EF1D800(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 16) = a5;
  *(v5 + 97) = a4;
  v6 = sub_26EF389FC();
  *(v5 + 24) = v6;
  v7 = *(v6 - 8);
  *(v5 + 32) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 40) = swift_task_alloc();
  v9 = sub_26EF38A2C();
  *(v5 + 48) = v9;
  v10 = *(v9 - 8);
  *(v5 + 56) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 64) = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9BE0, &qword_26EF3D3C0) - 8) + 64) + 15;
  *(v5 + 72) = swift_task_alloc();
  *(v5 + 80) = swift_task_alloc();
  sub_26EF3B2DC();
  *(v5 + 88) = sub_26EF3B2CC();
  v14 = sub_26EF3B29C();

  return MEMORY[0x2822009F8](sub_26EF1D998, v14, v13);
}

uint64_t sub_26EF1D998()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 97);

  if (v2 == 1)
  {
    v3 = *(v0 + 16);
    v4 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel_player;
    v5 = *(v3 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel_player);
    if (v5)
    {
      [v5 stop];
      v6 = *(v3 + v4);
    }

    else
    {
      v6 = 0;
    }

    *(v3 + v4) = 0;
  }

  else
  {
    v7 = *(v0 + 72);
    v8 = *(v0 + 80);
    v9 = *(v0 + 40);
    v10 = *(v0 + 24);
    v11 = *(v0 + 32);
    v12 = *(v0 + 16);
    (*(*(v0 + 56) + 104))(*(v0 + 64), *MEMORY[0x277D704F0], *(v0 + 48));
    (*(v11 + 104))(v9, *MEMORY[0x277D704A0], v10);
    sub_26EF38A5C();
    v13 = sub_26EF38A4C();
    (*(*(v13 - 8) + 56))(v8, 0, 1, v13);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26EE13B88(v8, v7, &qword_2806C9BE0, &qword_26EF3D3C0);
    v14 = v12;
    sub_26EF3953C();
    sub_26EE14578(v8, &qword_2806C9BE0, &qword_26EF3D3C0);
  }

  v15 = *(v0 + 72);
  v16 = *(v0 + 80);
  v17 = *(v0 + 64);
  v18 = *(v0 + 40);
  v19 = *(v0 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 96) = 0;
  v20 = v19;
  sub_26EF3953C();

  v21 = *(v0 + 8);

  return v21();
}

void sub_26EF1DD1C()
{
  v1 = v0;
  v2 = sub_26EF3883C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26EE27ED0();
  (*(v3 + 16))(v7, v8, v2);
  v9 = sub_26EF3881C();
  v10 = sub_26EF3B47C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_26EE01000, v9, v10, "VoiceBankingAudioServiceViewModel: Registering for observers.", v11, 2u);
    MEMORY[0x2743842A0](v11, -1, -1);
  }

  (*(v3 + 8))(v7, v2);
  v12 = objc_opt_self();
  v13 = [v12 defaultCenter];
  [v13 addObserver:v1 selector:sel_applicationDidResign name:*MEMORY[0x277D76768] object:0];

  v14 = [v12 defaultCenter];
  [v14 addObserver:v1 selector:sel_applicationDidResign name:*MEMORY[0x277D76660] object:0];
}

void sub_26EF1DF0C()
{
  v1 = v0;
  v2 = sub_26EF3883C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26EE27ED0();
  (*(v3 + 16))(v7, v8, v2);
  v9 = sub_26EF3881C();
  v10 = sub_26EF3B47C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_26EE01000, v9, v10, "VoiceBankingAudioServiceViewModel: Unregistering all observers.", v11, 2u);
    MEMORY[0x2743842A0](v11, -1, -1);
  }

  (*(v3 + 8))(v7, v2);
  v12 = [objc_opt_self() defaultCenter];
  [v12 removeObserver_];
}

uint64_t sub_26EF1E0A0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v23 - v5;
  v7 = sub_26EF3883C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_26EE27ED0();
  (*(v8 + 16))(v12, v13, v7);
  v14 = sub_26EF3881C();
  v15 = sub_26EF3B47C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_26EE01000, v14, v15, "VoiceBankingAudioServiceViewModel: Application did resign, stopping audio monitor if neccessary", v16, 2u);
    MEMORY[0x2743842A0](v16, -1, -1);
  }

  (*(v8 + 8))(v12, v7);
  v17 = sub_26EF3B30C();
  (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
  sub_26EF3B2DC();
  v18 = v1;
  v19 = sub_26EF3B2CC();
  v20 = swift_allocObject();
  v21 = MEMORY[0x277D85700];
  v20[2] = v19;
  v20[3] = v21;
  v20[4] = v18;
  sub_26EE2C388(0, 0, v6, &unk_26EF44358, v20);
}

uint64_t sub_26EF1E2F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_26EF3B2DC();
  v4[4] = sub_26EF3B2CC();
  v4[5] = sub_26EF3B2CC();
  v5 = swift_task_alloc();
  v4[6] = v5;
  *v5 = v4;
  v5[1] = sub_26EF1E3AC;

  return sub_26EF12AE4();
}

uint64_t sub_26EF1E3AC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 24);
  v8 = *v0;

  v6 = sub_26EF3B29C();
  *(v1 + 56) = v6;
  *(v1 + 64) = v5;

  return MEMORY[0x2822009F8](sub_26EF1E4F0, v6, v5);
}

uint64_t sub_26EF1E4F0()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = sub_26EF3B2CC();
  v0[9] = v3;
  v4 = swift_task_alloc();
  v0[10] = v4;
  *(v4 + 16) = v2;
  v5 = *(MEMORY[0x277D859E0] + 4);
  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_26EF1E5F4;
  v7 = MEMORY[0x277D85700];
  v8 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v6, v3, v7, 0xD000000000000015, 0x800000026EF47030, sub_26EF22954, v4, v8);
}

uint64_t sub_26EF1E5F4()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 72);
  v8 = *v0;

  v5 = *(v1 + 64);
  v6 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_26EF1E754, v6, v5);
}

uint64_t sub_26EF1E754()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];

  v5 = sub_26EF3B29C();

  return MEMORY[0x2822009F8](sub_26EF22958, v5, v4);
}

uint64_t sub_26EF1E820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9CF0, &qword_26EF44368) - 8) + 64) + 15;
  v4[9] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9CF8, &qword_26EF44370);
  v4[10] = v6;
  v7 = *(v6 - 8);
  v4[11] = v7;
  v8 = *(v7 + 64) + 15;
  v4[12] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9D00, &qword_26EF44378);
  v4[13] = v9;
  v10 = *(v9 - 8);
  v4[14] = v10;
  v11 = *(v10 + 64) + 15;
  v4[15] = swift_task_alloc();
  v12 = sub_26EF3844C();
  v4[16] = v12;
  v13 = *(v12 - 8);
  v4[17] = v13;
  v14 = *(v13 + 64) + 15;
  v4[18] = swift_task_alloc();
  v15 = sub_26EF381AC();
  v4[19] = v15;
  v16 = *(v15 - 8);
  v4[20] = v16;
  v17 = *(v16 + 64) + 15;
  v4[21] = swift_task_alloc();
  v18 = sub_26EF3819C();
  v4[22] = v18;
  v19 = *(v18 - 8);
  v4[23] = v19;
  v20 = *(v19 + 64) + 15;
  v4[24] = swift_task_alloc();
  v21 = sub_26EF3846C();
  v4[25] = v21;
  v22 = *(v21 - 8);
  v4[26] = v22;
  v23 = *(v22 + 64) + 15;
  v4[27] = swift_task_alloc();
  v24 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7818, &qword_26EF44380) - 8) + 64) + 15;
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v25 = sub_26EF383FC();
  v4[30] = v25;
  v26 = *(v25 - 8);
  v4[31] = v26;
  v27 = *(v26 + 64) + 15;
  v4[32] = swift_task_alloc();
  v4[33] = sub_26EF3B2DC();
  v4[34] = sub_26EF3B2CC();
  v28 = sub_26EF3B29C();
  v4[35] = v28;
  v4[36] = v29;
  v30 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_26EF1EC0C, v28, v29);
}

uint64_t sub_26EF1EC0C()
{
  v30 = *MEMORY[0x277D85DE8];
  sub_26EF3848C();
  v1 = sub_26EF3847C();
  v0[37] = v1;
  v2 = [objc_opt_self() auxiliarySession];
  v0[2] = 0;
  v0[38] = v2;
  v3 = [v2 setCategory:*MEMORY[0x277CB8030] withOptions:3 error:v0 + 2];
  v4 = v0[2];
  if (v3)
  {
    v5 = v4;
    sub_26EF381EC();
    v6 = v2;
    sub_26EF381DC();
    v7 = MEMORY[0x277D70320];
    v8 = *(MEMORY[0x277D70320] + 4);
    v9 = *MEMORY[0x277D70320];
    v10 = swift_task_alloc();
    v0[39] = v10;
    *v10 = v0;
    v10[1] = sub_26EF1EE80;
    v11 = v0[29];
    v12 = v0[5];
    v13 = v0[6];
    v14 = *MEMORY[0x277D85DE8];

    return ((v9 + v7))(v11, v12, v13);
  }

  else
  {
    v16 = v0[34];
    v17 = v4;

    sub_26EF37D1C();

    swift_willThrow();
    v18 = v0[32];
    v20 = v0[28];
    v19 = v0[29];
    v21 = v0[27];
    v22 = v0[24];
    v23 = v0[21];
    v24 = v0[18];
    v25 = v0[15];
    v26 = v0[12];
    v27 = v0[9];

    v28 = v0[1];
    v29 = *MEMORY[0x277D85DE8];

    return v28();
  }
}

uint64_t sub_26EF1EE80()
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = *(*v0 + 312);
  v8 = *v0;

  v3 = *(v1 + 288);
  v4 = *(v1 + 280);
  v5 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_26EF1EFD4, v4, v3);
}

uint64_t sub_26EF1EFD4()
{
  v67 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);
  v3 = *(v0 + 232);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 296);
    v5 = *(v0 + 272);

    sub_26EE14578(v3, &qword_2806C7818, &qword_26EF44380);
LABEL_8:
    v39 = *(v0 + 256);
    v40 = *(v0 + 224);
    v41 = *(v0 + 232);
    v42 = *(v0 + 216);
    v43 = *(v0 + 192);
    v44 = *(v0 + 168);
    v45 = *(v0 + 144);
    v46 = *(v0 + 120);
    v47 = *(v0 + 96);
    v48 = *(v0 + 72);

    v49 = *(v0 + 8);
    v50 = *MEMORY[0x277D85DE8];

    return v49();
  }

  v7 = *(v0 + 56);
  v6 = *(v0 + 64);
  v9 = *(v0 + 40);
  v8 = *(v0 + 48);
  (*(v2 + 32))(*(v0 + 256), v3, v1);
  v10 = [objc_opt_self() sharedInstance];
  v11 = sub_26EF3B0BC();
  v12 = sub_26EF3B0BC();
  v13 = [v10 sampleStringForVoiceIdentifier:v11 withPreferredLocaleID:v12];

  v14 = *(v0 + 296);
  if (!v13)
  {
    v37 = *(v0 + 304);
    v38 = *(v0 + 272);
    (*(*(v0 + 248) + 8))(*(v0 + 256), *(v0 + 240));

    goto LABEL_8;
  }

  v15 = *(v0 + 248);
  v52 = *(v0 + 256);
  v16 = *(v0 + 240);
  v17 = *(v0 + 224);
  v61 = *(v0 + 216);
  v19 = *(v0 + 184);
  v18 = *(v0 + 192);
  v55 = *(v0 + 176);
  v56 = *(v0 + 168);
  v65 = *(v0 + 296);
  v20 = *(v0 + 160);
  v57 = *(v0 + 152);
  v58 = *(v0 + 136);
  v59 = *(v0 + 144);
  v60 = *(v0 + 128);
  v64 = *(v0 + 120);
  v62 = *(v0 + 96);
  v66 = *(v0 + 88);
  v63 = *(v0 + 80);
  v53 = *(v0 + 56);
  v54 = *(v0 + 64);
  v21 = sub_26EF3B0FC();
  v23 = v22;

  (*(v15 + 16))(v17, v52, v16);
  (*(v15 + 56))(v17, 0, 1, v16);
  v24 = swift_task_alloc();
  v24[2] = v21;
  v24[3] = v23;
  v24[4] = v53;
  v24[5] = v54;
  (*(v19 + 104))(v18, *MEMORY[0x277D70198], v55);
  (*(v20 + 104))(v56, *MEMORY[0x277D701A0], v57);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9D10, &qword_26EF44388);
  v25 = *(v58 + 72);
  v26 = (*(v58 + 80) + 32) & ~*(v58 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_26EF3EE20;
  sub_26EF3843C();
  sub_26EF3842C();
  sub_26EF3841C();
  *(v0 + 24) = v27;
  sub_26EF204A0(&qword_2806C9D18, MEMORY[0x277D70340]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9D20, &qword_26EF44390);
  sub_26EE154C8(&unk_2806C9D28, &qword_2806C9D20, &qword_26EF44390);
  sub_26EF3B68C();
  sub_26EF3845C();

  sub_26EF3840C();
  sub_26EF3B31C();
  (*(v66 + 8))(v62, v63);
  v28 = *(v0 + 264);
  v29 = sub_26EF3B2CC();
  *(v0 + 320) = v29;
  v30 = *(MEMORY[0x277D858B8] + 4);
  v31 = swift_task_alloc();
  *(v0 + 328) = v31;
  *v31 = v0;
  v31[1] = sub_26EF1F598;
  v32 = *(v0 + 120);
  v33 = *(v0 + 104);
  v34 = *(v0 + 72);
  v35 = *MEMORY[0x277D85DE8];
  v36 = MEMORY[0x277D85700];

  return MEMORY[0x2822005A8](v34, v29, v36, v33, v0 + 32);
}

uint64_t sub_26EF1F598()
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 328);
  v11 = *v1;

  v4 = v2[40];

  v5 = v2[35];
  v6 = v2[36];
  if (v0)
  {
    v7 = sub_26EF1F99C;
  }

  else
  {
    v7 = sub_26EF1F6EC;
  }

  v8 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_26EF1F6EC()
{
  v36 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 72);
  v2 = sub_26EF381FC();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 304);
    v4 = *(v0 + 272);
    v5 = *(v0 + 248);
    v34 = *(v0 + 240);
    v35 = *(v0 + 256);
    v6 = *(v0 + 208);
    v7 = *(v0 + 216);
    v8 = *(v0 + 200);
    v9 = *(v0 + 112);
    v10 = *(v0 + 120);
    v11 = *(v0 + 104);

    (*(v9 + 8))(v10, v11);
    (*(v6 + 8))(v7, v8);
    (*(v5 + 8))(v35, v34);
    v12 = *(v0 + 256);
    v13 = *(v0 + 224);
    v14 = *(v0 + 232);
    v15 = *(v0 + 216);
    v16 = *(v0 + 192);
    v17 = *(v0 + 168);
    v18 = *(v0 + 144);
    v19 = *(v0 + 120);
    v20 = *(v0 + 96);
    v21 = *(v0 + 72);

    v22 = *(v0 + 8);
    v23 = *MEMORY[0x277D85DE8];

    return v22();
  }

  else
  {
    sub_26EE14578(v1, &qword_2806C9CF0, &qword_26EF44368);
    v25 = *(v0 + 264);
    v26 = sub_26EF3B2CC();
    *(v0 + 320) = v26;
    v27 = *(MEMORY[0x277D858B8] + 4);
    v28 = swift_task_alloc();
    *(v0 + 328) = v28;
    *v28 = v0;
    v28[1] = sub_26EF1F598;
    v29 = *(v0 + 120);
    v30 = *(v0 + 104);
    v31 = *(v0 + 72);
    v32 = *MEMORY[0x277D85DE8];
    v33 = MEMORY[0x277D85700];

    return MEMORY[0x2822005A8](v31, v26, v33, v30, v0 + 32);
  }
}

uint64_t sub_26EF1F99C()
{
  v26 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 304);
  v2 = *(v0 + 272);
  v3 = *(v0 + 248);
  v23 = *(v0 + 240);
  v24 = *(v0 + 256);
  v4 = *(v0 + 208);
  v5 = *(v0 + 216);
  v6 = *(v0 + 200);
  v7 = *(v0 + 112);
  v8 = *(v0 + 120);
  v9 = *(v0 + 104);

  (*(v7 + 8))(v8, v9);
  (*(v4 + 8))(v5, v6);
  (*(v3 + 8))(v24, v23);
  v25 = *(v0 + 32);
  v10 = *(v0 + 256);
  v12 = *(v0 + 224);
  v11 = *(v0 + 232);
  v13 = *(v0 + 216);
  v14 = *(v0 + 192);
  v15 = *(v0 + 168);
  v16 = *(v0 + 144);
  v17 = *(v0 + 120);
  v18 = *(v0 + 96);
  v19 = *(v0 + 72);

  v20 = *(v0 + 8);
  v21 = *MEMORY[0x277D85DE8];

  return v20();
}

uint64_t sub_26EF1FB34()
{
  v0 = sub_26EF3853C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_26EF3854C();
  sub_26EF3807C();
  (*(v1 + 8))(v5, v0);
  sub_26EF3851C();
  __swift_destroy_boxed_opaque_existential_1(v7);
  sub_26EF3851C();
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

id sub_26EF1FC74()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26EF1FFC4@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  result = sub_26EF394BC();
  *a1 = result;
  return result;
}

uint64_t sub_26EF20004()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v5 = &v12 - v4;
  v6 = sub_26EF3B30C();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_26EF3B2DC();
  v7 = v0;
  v8 = sub_26EF3B2CC();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v7;
  sub_26EE2C388(0, 0, v5, &unk_26EF44468, v9);
}

uint64_t sub_26EF2012C()
{
  swift_getObjectType();
  v0 = sub_26EF3883C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26EE27ED0();
  (*(v1 + 16))(v5, v6, v0);
  v7 = sub_26EF3881C();
  v8 = sub_26EF3B43C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_26EE01000, v7, v8, "VoiceBankingAudioServiceViewModel: Did finish synthesizing sample", v9, 2u);
    MEMORY[0x2743842A0](v9, -1, -1);
  }

  (*(v1 + 8))(v5, v0);
  sub_26EF204A0(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel);
  sub_26EF394BC();
  sub_26EF394DC();
}

id sub_26EF20354(uint64_t a1)
{
  v2 = v1;
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = sub_26EF37D7C();
  v14[0] = 0;
  v5 = [v2 initWithContentsOfURL:v4 error:v14];

  v6 = v14[0];
  if (v5)
  {
    v7 = sub_26EF37DCC();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v14[0];
    sub_26EF37D1C();

    swift_willThrow();
    v11 = sub_26EF37DCC();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t sub_26EF204A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26EF204E8()
{
  MEMORY[0x274384370](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_26EF20520(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_26EF0F4FC();
  }
}

uint64_t sub_26EF20578(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v3 = v1;
    return sub_26EF3953C();
  }

  return result;
}

uint64_t sub_26EF20608(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_26EF3953C();
  }

  return result;
}

uint64_t sub_26EF206A4()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9BE0, &qword_26EF3D3C0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(sub_26EF3917C() - 8);
  v8 = (*(v7 + 80) + v6 + 16) & ~*(v7 + 80);
  v9 = *(v0 + v4);
  v10 = v0 + v5;
  v11 = *(v0 + v5);
  v12 = *(v10 + 8);
  v13 = v0 + v6;
  v14 = *(v0 + v6);
  v15 = *(v13 + 8);
  v16 = swift_task_alloc();
  *(v1 + 16) = v16;
  *v16 = v1;
  v16[1] = sub_26EE15538;

  return sub_26EF1B1A8(v16, v17, v18, v0 + v3, v9, v11, v12, v14);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26EF2086C()
{
  v1 = *(v0 + 16);
  v2 = sub_26EF38E7C();
  v4 = v3;
  if (v2 == sub_26EF38E7C() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_26EF3B82C();
  }

  return v7 & 1;
}

size_t sub_26EF20904(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C92E8, &qword_26EF444A0);
  v10 = *(sub_26EF38E9C() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_26EF38E9C() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t objectdestroy_49Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9BE0, &qword_26EF3D3C0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_26EF3917C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(v0 + 16);
  swift_unknownObjectRelease();
  v10 = sub_26EF38A4C();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v3, 1, v10))
  {
    (*(v11 + 8))(v0 + v3, v10);
  }

  v12 = v2 | v7;
  v13 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 23) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v7 + v15 + 16) & ~v7;

  v17 = *(v0 + v14 + 8);

  v18 = *(v0 + v15 + 8);

  (*(v6 + 8))(v0 + v16, v5);

  return MEMORY[0x2821FE8E8](v0, v16 + v8, v12 | 7);
}

uint64_t objectdestroy_67Tm()
{
  v1 = sub_26EF37DCC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26EF20DA4()
{
  v1 = *(sub_26EF37DCC() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_26EF18BF4(v2, v3);
}

uint64_t sub_26EF20E08()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26EE15538;

  return sub_26EF19D1C(v3, v4, v5, v2);
}

uint64_t sub_26EF20E9C()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26EE15538;

  return sub_26EF1E2F4(v3, v4, v5, v2);
}

uint64_t sub_26EF20F30()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  return sub_26EF1FB34();
}

uint64_t sub_26EF20F3C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7818, &qword_26EF44380) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v2[5] = swift_task_alloc();
  v4 = sub_26EF380AC();
  v2[6] = v4;
  v5 = *(v4 - 8);
  v2[7] = v5;
  v6 = *(v5 + 64) + 15;
  v2[8] = swift_task_alloc();
  v7 = *(*(sub_26EF383AC() - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  sub_26EF3B2DC();
  v2[11] = sub_26EF3B2CC();
  v9 = sub_26EF3B29C();
  v2[12] = v9;
  v2[13] = v8;

  return MEMORY[0x2822009F8](sub_26EF210AC, v9, v8);
}

uint64_t sub_26EF210AC()
{
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  sub_26EF380CC();
  sub_26EF384AC();
  sub_26EF3849C();
  sub_26EF3839C();
  sub_26EF3838C();
  (*(v4 + 104))(v3, *MEMORY[0x277D700F0], v5);
  v0[14] = sub_26EF3809C();
  v6 = *(MEMORY[0x277D70108] + 4);
  v12 = (*MEMORY[0x277D70108] + MEMORY[0x277D70108]);
  v7 = swift_task_alloc();
  v0[15] = v7;
  *v7 = v0;
  v7[1] = sub_26EF21200;
  v8 = v0[5];
  v9 = v0[2];
  v10 = v0[3];

  return v12(v8, v9, v10);
}

uint64_t sub_26EF21200()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v6 = *v0;

  v3 = *(v1 + 104);
  v4 = *(v1 + 96);

  return MEMORY[0x2822009F8](sub_26EF21320, v4, v3);
}

uint64_t sub_26EF21320()
{
  v1 = v0[11];
  v2 = v0[4];
  v3 = v0[5];

  sub_26EE13B88(v3, v2, &qword_2806C7818, &qword_26EF44380);
  v4 = sub_26EF383FC();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 48))(v2, 1, v4);
  v7 = v0[14];
  v8 = v0[4];
  v9 = v0[5];
  if (v6 == 1)
  {
    sub_26EE14578(v0[5], &qword_2806C7818, &qword_26EF44380);

    sub_26EE14578(v8, &qword_2806C7818, &qword_26EF44380);
    v10 = 0;
    v11 = 0;
  }

  else
  {
    v12 = v0[4];
    v10 = sub_26EF3825C();
    v11 = v13;

    sub_26EE14578(v9, &qword_2806C7818, &qword_26EF44380);
    (*(v5 + 8))(v8, v4);
  }

  v15 = v0[9];
  v14 = v0[10];
  v16 = v0[8];
  v18 = v0[4];
  v17 = v0[5];

  v19 = v0[1];

  return v19(v10, v11);
}

uint64_t sub_26EF214E0()
{
  v1 = sub_26EF3AF7C();
  v18 = *(v1 - 8);
  v2 = *(v18 + 64);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_26EF3AFAC();
  v6 = *(v17 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v17, v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26EE1FAB8(0, &qword_2806C9C40, 0x277D85C78);
  v11 = sub_26EF3B54C();
  v12 = swift_allocObject();
  *(v12 + 16) = v0;
  aBlock[4] = sub_26EF21D38;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26EE1DD80;
  aBlock[3] = &block_descriptor_116;
  v13 = _Block_copy(aBlock);
  v14 = v0;
  sub_26EF3AF8C();
  v19 = MEMORY[0x277D84F90];
  sub_26EF204A0(&unk_2806C9E30, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6DF0, &qword_26EF3D550);
  sub_26EE154C8(&qword_2806C9E40, &qword_2806C6DF0, &qword_26EF3D550);
  sub_26EF3B68C();
  MEMORY[0x274383620](0, v10, v5, v13);
  _Block_release(v13);

  (*(v18 + 8))(v5, v1);
  (*(v6 + 8))(v10, v17);
}

void sub_26EF217D8()
{
  sub_26EE11978(319, &qword_2806C9D98, &qword_2806C9B70, &qword_26EF43F10);
  if (v1 <= 0x3F)
  {
    v15 = *(v0 - 8) + 64;
    sub_26EF21A7C();
    if (v3 <= 0x3F)
    {
      v16 = *(v2 - 8) + 64;
      sub_26EF21AE4();
      if (v5 <= 0x3F)
      {
        v6 = *(v4 - 8) + 64;
        sub_26EF21B34(319, &qword_2806C9DB0, MEMORY[0x277D705A8]);
        if (v8 <= 0x3F)
        {
          v17 = *(v7 - 8) + 64;
          sub_26EE11978(319, &qword_2806C9DB8, &qword_2806C9BC8, &qword_26EF44108);
          if (v10 <= 0x3F)
          {
            v18 = *(v9 - 8) + 64;
            sub_26EE11978(319, &qword_2806C9DC0, &qword_2806C9BE0, &qword_26EF3D3C0);
            if (v12 <= 0x3F)
            {
              v19 = *(v11 - 8) + 64;
              sub_26EF21B34(319, &qword_2806C9DC8, MEMORY[0x277D70580]);
              if (v14 <= 0x3F)
              {
                v20 = *(v13 - 8) + 64;
                swift_updateClassMetadata2();
              }
            }
          }
        }
      }
    }
  }
}

void sub_26EF21A7C()
{
  if (!qword_2806C9DA0)
  {
    sub_26EE1FAB8(255, &qword_2806C9B88, 0x277CB84B8);
    v0 = sub_26EF3954C();
    if (!v1)
    {
      atomic_store(v0, &qword_2806C9DA0);
    }
  }
}

void sub_26EF21AE4()
{
  if (!qword_2806C75E8)
  {
    v0 = sub_26EF3954C();
    if (!v1)
    {
      atomic_store(v0, &qword_2806C75E8);
    }
  }
}

void sub_26EF21B34(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26EF3954C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t objectdestroy_88Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26EF21BCC()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26EE15538;

  return sub_26EF1D800(v4, v5, v6, v2, v3);
}

uint64_t sub_26EF21C6C()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26EE15538;

  return sub_26EF1B094(v3, v4, v5, v2);
}

uint64_t sub_26EF21D00()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26EF21D5C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9E48, &unk_26EF44480) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_26EF3B2BC();
}

uint64_t sub_26EF21DC8()
{
  v1 = sub_26EF37DCC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26EF21E94()
{
  v2 = *(sub_26EF37DCC() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_26EE15538;

  return sub_26EF18DF4(v5, v6, v7, v4, v0 + v3);
}

uint64_t sub_26EF21F80(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9E60, &qword_26EF444A8) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_26EF16404(a1, v4);
}

uint64_t sub_26EF21FFC()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26EE15538;

  return sub_26EF15DBC();
}

uint64_t sub_26EF220B8()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9E70, &unk_26EF42D40) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9E48, &unk_26EF44480) - 8);
  v6 = (v4 + *(v5 + 80) + 8) & ~*(v5 + 80);
  v7 = *(v0 + v4);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_26EE05D7C;

  return sub_26EF157F0(v8, v9, v10, v0 + v3, v7, v0 + v6);
}

uint64_t objectdestroy_74Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26EF22268()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26EE05D7C;

  return sub_26EF1CD1C(v3, v4, v5, v2);
}

uint64_t sub_26EF2231C()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9E70, &unk_26EF42D40) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9E48, &unk_26EF44480) - 8);
  v6 = (v4 + *(v5 + 80) + 8) & ~*(v5 + 80);
  v7 = *(v0 + v4);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_26EE15538;

  return sub_26EF124B4(v8, v9, v10, v0 + v3, v7, v0 + v6);
}

uint64_t objectdestroy_142Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9E48, &unk_26EF44480);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t objectdestroy_145Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9E70, &unk_26EF42D40) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9E48, &unk_26EF44480);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(v0 + 16);
  swift_unknownObjectRelease();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_26EF38A4C();
  }

  else
  {
    v10 = sub_26EF38BFC();
  }

  (*(*(v10 - 8) + 8))(v0 + v3, v10);
  v11 = v2 | v7;
  v12 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + v7 + 8) & ~v7;

  (*(v6 + 8))(v0 + v13, v5);

  return MEMORY[0x2821FE8E8](v0, v13 + v8, v11 | 7);
}

uint64_t sub_26EF227AC()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9E70, &unk_26EF42D40) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9E48, &unk_26EF44480) - 8);
  v6 = (v4 + *(v5 + 80) + 8) & ~*(v5 + 80);
  v7 = *(v0 + v4);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_26EE15538;

  return sub_26EF124B4(v8, v9, v10, v0 + v3, v7, v0 + v6);
}

uint64_t sub_26EF2295C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26EF387DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9EF0, &qword_26EF44520);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10, v12);
  v15 = &v22 - v14;
  if (*(a1 + 16) < 2uLL)
  {
    v21 = *(v13 + 56);

    return v21(a2, 1, 1, v10);
  }

  else
  {
    v16 = *MEMORY[0x277CE76C8];
    v17 = *(v5 + 104);
    v23 = v13;
    v18 = v17(v9, v16, v4);
    MEMORY[0x28223BE20](v18, v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9EF8, &qword_26EF44528);
    sub_26EF22DD8();
    sub_26EF3877C();
    (*(v23 + 32))(a2, v15, v10);
    return (*(v23 + 56))(a2, 0, 1, v10);
  }
}

uint64_t sub_26EF22BFC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26EE17094();
  v3._object = 0x800000026EF473E0;
  v4 = v2 & 1;
  v3._countAndFlagsBits = 0xD000000000000018;
  TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v3, v4, 0);
  sub_26EE12538();
  result = sub_26EF3A5DC();
  *a1 = result;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_26EF22C7C()
{
  v2 = *(v0 + 16);

  sub_26EF233A4(&v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8908, &qword_26EF41090);
  sub_26EF37EDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9F10, qword_26EF44530);
  sub_26EE154C8(&qword_2806C9F30, &qword_2806C8908, &qword_26EF41090);
  sub_26EE154C8(&qword_2806C9F08, &qword_2806C9F10, qword_26EF44530);
  sub_26EF2344C();
  return sub_26EF3ACFC();
}

unint64_t sub_26EF22DD8()
{
  result = qword_2806C9F00;
  if (!qword_2806C9F00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9EF8, &qword_26EF44528);
    sub_26EE154C8(&qword_2806C9F08, &qword_2806C9F10, qword_26EF44530);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C9F00);
  }

  return result;
}

double sub_26EF22E88@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26EF39E4C();
  v17 = 1;
  sub_26EF22F8C(a1, &v10);
  v20 = v12;
  v21 = v13;
  v22 = v14;
  v23 = v15;
  v18 = v10;
  v19 = v11;
  v25 = v15;
  v24[2] = v12;
  v24[3] = v13;
  v24[4] = v14;
  v24[0] = v10;
  v24[1] = v11;
  sub_26EF234A4(&v18, v9);
  sub_26EF23514(v24);
  *&v16[39] = v20;
  *&v16[55] = v21;
  *&v16[71] = v22;
  *&v16[87] = v23;
  *&v16[7] = v18;
  *&v16[23] = v19;
  v5 = *&v16[48];
  *(a2 + 49) = *&v16[32];
  *(a2 + 65) = v5;
  *(a2 + 81) = *&v16[64];
  *(a2 + 96) = *&v16[79];
  result = *&v16[16];
  v7 = *v16;
  *(a2 + 33) = *&v16[16];
  v8 = v17;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v8;
  *(a2 + 17) = v7;
  return result;
}

uint64_t sub_26EF22F8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a1;
  v37 = sub_26EF37DEC();
  v3 = *(v37 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v37, v5);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_26EF37E1C();
  v8 = *(v36 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v36, v10);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_26EF37E7C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26EF38D0C();
  sub_26EF37E0C();
  sub_26EF37DDC();
  v19 = sub_26EF37E5C();
  v21 = v20;
  (*(v3 + 8))(v7, v37);
  (*(v8 + 8))(v12, v36);
  (*(v14 + 8))(v18, v13);
  v41 = v19;
  v42 = v21;
  sub_26EE12538();
  v22 = sub_26EF3A5DC();
  v24 = v23;
  LOBYTE(v18) = v25;
  v27 = v26;
  v41 = sub_26EF38CEC();
  v42 = v28;
  v29 = sub_26EF3A5DC();
  v31 = v30;
  LOBYTE(v41) = v18 & 1;
  v40 = v18 & 1;
  v39 = 1;
  LOBYTE(v12) = v32 & 1;
  v38 = v32 & 1;
  *a2 = v22;
  *(a2 + 8) = v24;
  *(a2 + 16) = v18 & 1;
  *(a2 + 24) = v27;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v29;
  *(a2 + 56) = v30;
  *(a2 + 64) = v32 & 1;
  *(a2 + 72) = v33;
  *(a2 + 80) = 0x3FE0000000000000;
  sub_26EE13B20(v22, v24, v18 & 1);

  sub_26EE13B20(v29, v31, v12);

  sub_26EE12ABC(v29, v31, v12);

  sub_26EE12ABC(v22, v24, v41);
}

unint64_t sub_26EF232F4()
{
  result = qword_2806C9F18;
  if (!qword_2806C9F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9F20, &unk_26EF445C8);
    sub_26EE154C8(&qword_2806C9F28, &qword_2806C9EF0, &qword_26EF44520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C9F18);
  }

  return result;
}

uint64_t sub_26EF233A4(void **a1)
{
  v2 = *(sub_26EF38DBC() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_26EECF530(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_26EF2357C(v6);
  *a1 = v3;
  return result;
}

unint64_t sub_26EF2344C()
{
  result = qword_2806C9F38;
  if (!qword_2806C9F38)
  {
    sub_26EF38DBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C9F38);
  }

  return result;
}

uint64_t sub_26EF234A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9F40, &qword_26EF445D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EF23514(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9F40, &qword_26EF445D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26EF2357C(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_26EF3B7EC();
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
        sub_26EF38DBC();
        v6 = sub_26EF3B24C();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_26EF38DBC() - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_26EF23A48(v8, v9, a1, v4);
      *(v6 + 16) = 0;
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
    return sub_26EF236A8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_26EF236A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v67 = sub_26EF37E7C();
  v8 = *(v67 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x28223BE20](v67, v10);
  v66 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v65 = &v48 - v14;
  v15 = sub_26EF38DBC();
  v16 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v58 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18, v20);
  v64 = &v48 - v22;
  result = MEMORY[0x28223BE20](v21, v23);
  v63 = &v48 - v26;
  v50 = a2;
  if (a3 != a2)
  {
    v27 = *a4;
    v29 = *(v25 + 16);
    v28 = v25 + 16;
    v30 = *(v28 + 56);
    v60 = (v8 + 8);
    v61 = v29;
    v59 = (v28 - 8);
    v62 = v28;
    v31 = (v27 + v30 * (a3 - 1));
    v55 = -v30;
    v56 = (v28 + 16);
    v32 = a1 - a3;
    v57 = v27;
    v49 = v30;
    v33 = v27 + v30 * a3;
    v34 = v65;
LABEL_5:
    v53 = v31;
    v54 = a3;
    v51 = v33;
    v52 = v32;
    v68 = v32;
    while (1)
    {
      v35 = v63;
      v36 = v61;
      v61(v63, v33, v15);
      v37 = v15;
      v38 = v64;
      v36(v64, v31, v37);
      sub_26EF38D0C();
      v39 = v66;
      sub_26EF38D0C();
      v69 = sub_26EF37E3C();
      v40 = *v60;
      v41 = v39;
      v42 = v67;
      (*v60)(v41, v67);
      v40(v34, v42);
      v43 = *v59;
      v44 = v38;
      v15 = v37;
      (*v59)(v44, v37);
      result = v43(v35, v37);
      if ((v69 & 1) == 0)
      {
LABEL_4:
        a3 = v54 + 1;
        v31 = &v53[v49];
        v32 = v52 - 1;
        v33 = v51 + v49;
        if (v54 + 1 == v50)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v57)
      {
        break;
      }

      v45 = *v56;
      v46 = v58;
      (*v56)(v58, v33, v37);
      swift_arrayInitWithTakeFrontToBack();
      result = v45(v31, v46, v37);
      v31 += v55;
      v33 += v55;
      if (__CFADD__(v68++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26EF23A48(char **a1, uint64_t a2, char *a3, uint64_t a4)
{
  v5 = v4;
  v145 = a1;
  v167 = sub_26EF37E7C();
  v8 = *(v167 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x28223BE20](v167, v10);
  v166 = &v141 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v165 = &v141 - v14;
  v15 = sub_26EF38DBC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 8);
  v19 = MEMORY[0x28223BE20](v15, v18);
  v148 = &v141 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19, v21);
  v157 = &v141 - v23;
  v25 = MEMORY[0x28223BE20](v22, v24);
  v164 = &v141 - v26;
  result = MEMORY[0x28223BE20](v25, v27);
  v168 = &v141 - v29;
  v30 = *(a3 + 1);
  v153 = a3;
  if (v30 < 1)
  {
    v32 = MEMORY[0x277D84F90];
LABEL_96:
    v15 = v32;
    v32 = *v145;
    if (!*v145)
    {
      goto LABEL_134;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v60 = v153;
    if ((result & 1) == 0)
    {
LABEL_128:
      result = sub_26EE13990(v15);
      v15 = result;
    }

    v170 = v15;
    v137 = *(v15 + 16);
    if (v137 >= 2)
    {
      while (*v60)
      {
        v138 = *(v15 + 16 * v137);
        v139 = *(v15 + 16 * (v137 - 1) + 40);
        sub_26EF24648(*v60 + *(v16 + 9) * v138, *v60 + *(v16 + 9) * *(v15 + 16 * (v137 - 1) + 32), *v60 + *(v16 + 9) * v139, v32);
        if (v5)
        {
        }

        if (v139 < v138)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_26EE13990(v15);
        }

        if (v137 - 2 >= *(v15 + 16))
        {
          goto LABEL_122;
        }

        v140 = (v15 + 16 * v137);
        *v140 = v138;
        v140[1] = v139;
        v170 = v15;
        result = sub_26EE5C168(v137 - 1);
        v15 = v170;
        v137 = *(v170 + 16);
        if (v137 <= 1)
        {
        }
      }

      goto LABEL_132;
    }
  }

  v141 = a4;
  v31 = 0;
  v161 = (v8 + 8);
  v162 = v16 + 16;
  v159 = (v16 + 32);
  v160 = v16 + 8;
  v32 = MEMORY[0x277D84F90];
  v163 = v15;
  v144 = v16;
  while (1)
  {
    v33 = v31 + 1;
    if (v31 + 1 >= v30)
    {
      v49 = v31 + 1;
      v60 = v153;
    }

    else
    {
      v154 = v30;
      v142 = v32;
      v143 = v5;
      v34 = v31;
      v146 = v31;
      v35 = *v153;
      v169 = v35;
      v36 = *(v16 + 9);
      v37 = (v35 + v36 * v33);
      v38 = v15;
      v39 = *(v16 + 2);
      (v39)(v168, v37, v15);
      v40 = v164;
      v155 = v39;
      (v39)(v164, v35 + v36 * v34, v38);
      v41 = v165;
      sub_26EF38D0C();
      v42 = v166;
      sub_26EF38D0C();
      LODWORD(v156) = sub_26EF37E3C();
      v43 = *v161;
      v44 = v42;
      v45 = v167;
      (*v161)(v44, v167);
      v152 = v43;
      (v43)(v41, v45);
      v46 = *(v144 + 1);
      v32 = v160;
      v46(v40, v38);
      v151 = v46;
      result = (v46)(v168, v38);
      v47 = v146 + 2;
      v158 = v36;
      v48 = v169 + v36 * (v146 + 2);
      while (1)
      {
        v49 = v154;
        if (v154 == v47)
        {
          break;
        }

        v50 = v163;
        v51 = v155;
        v155();
        v52 = v164;
        v51(v164, v37, v50);
        v53 = v165;
        sub_26EF38D0C();
        v54 = v166;
        sub_26EF38D0C();
        LOBYTE(v169) = sub_26EF37E3C() & 1;
        LODWORD(v169) = v169;
        v55 = v54;
        v56 = v167;
        v57 = v37;
        v58 = v152;
        (v152)(v55, v167);
        v58(v53, v56);
        v32 = v160;
        v59 = v151;
        (v151)(v52, v50);
        result = v59(v168, v50);
        ++v47;
        v48 += v158;
        v37 = &v158[v57];
        if ((v156 & 1) != v169)
        {
          v49 = v47 - 1;
          goto LABEL_9;
        }
      }

      v5 = v143;
      v60 = v153;
      v16 = v144;
      v15 = v163;
      v31 = v146;
      if ((v156 & 1) == 0)
      {
        goto LABEL_23;
      }

LABEL_9:
      if (v49 < v146)
      {
        goto LABEL_125;
      }

      if (v146 < v49)
      {
        v61 = v49;
        v62 = v158 * (v49 - 1);
        v63 = v49 * v158;
        v154 = v49;
        v64 = v146;
        v65 = v146 * v158;
        do
        {
          if (v64 != --v61)
          {
            v66 = *v60;
            if (!v66)
            {
              goto LABEL_131;
            }

            v67 = *v159;
            (*v159)(v148, v66 + v65, v15);
            if (v65 < v62 || v66 + v65 >= (v66 + v63))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v65 != v62)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = (v67)(v66 + v62, v148, v15);
            v60 = v153;
          }

          ++v64;
          v62 -= v158;
          v63 -= v158;
          v65 += v158;
        }

        while (v64 < v61);
        v5 = v143;
        v16 = v144;
        v32 = v142;
        v31 = v146;
        v49 = v154;
      }

      else
      {
LABEL_23:
        v32 = v142;
      }
    }

    v68 = *(v60 + 1);
    if (v49 < v68)
    {
      if (__OFSUB__(v49, v31))
      {
        goto LABEL_124;
      }

      if (v49 - v31 < v141)
      {
        if (__OFADD__(v31, v141))
        {
          goto LABEL_126;
        }

        if (v31 + v141 >= v68)
        {
          v69 = *(v60 + 1);
        }

        else
        {
          v69 = v31 + v141;
        }

        if (v69 < v31)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v49 != v69)
        {
          break;
        }
      }
    }

    v70 = v49;
    if (v49 < v31)
    {
      goto LABEL_123;
    }

LABEL_35:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_26EE12E30(0, *(v32 + 2) + 1, 1, v32);
      v32 = result;
    }

    v72 = *(v32 + 2);
    v71 = *(v32 + 3);
    v73 = v72 + 1;
    v60 = v16;
    if (v72 >= v71 >> 1)
    {
      result = sub_26EE12E30((v71 > 1), v72 + 1, 1, v32);
      v32 = result;
    }

    *(v32 + 2) = v73;
    v74 = &v32[16 * v72];
    *(v74 + 4) = v31;
    *(v74 + 5) = v70;
    v75 = *v145;
    if (!*v145)
    {
      goto LABEL_133;
    }

    v149 = v70;
    if (v72)
    {
      v16 = v75;
      while (1)
      {
        v76 = v73 - 1;
        if (v73 >= 4)
        {
          break;
        }

        if (v73 == 3)
        {
          v77 = *(v32 + 4);
          v78 = *(v32 + 5);
          v87 = __OFSUB__(v78, v77);
          v79 = v78 - v77;
          v80 = v87;
LABEL_55:
          if (v80)
          {
            goto LABEL_112;
          }

          v93 = &v32[16 * v73];
          v95 = *v93;
          v94 = *(v93 + 1);
          v96 = __OFSUB__(v94, v95);
          v97 = v94 - v95;
          v98 = v96;
          if (v96)
          {
            goto LABEL_115;
          }

          v99 = &v32[16 * v76 + 32];
          v101 = *v99;
          v100 = *(v99 + 1);
          v87 = __OFSUB__(v100, v101);
          v102 = v100 - v101;
          if (v87)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v97, v102))
          {
            goto LABEL_119;
          }

          if (v97 + v102 >= v79)
          {
            if (v79 < v102)
            {
              v76 = v73 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v103 = &v32[16 * v73];
        v105 = *v103;
        v104 = *(v103 + 1);
        v87 = __OFSUB__(v104, v105);
        v97 = v104 - v105;
        v98 = v87;
LABEL_69:
        if (v98)
        {
          goto LABEL_114;
        }

        v106 = &v32[16 * v76];
        v108 = *(v106 + 4);
        v107 = *(v106 + 5);
        v87 = __OFSUB__(v107, v108);
        v109 = v107 - v108;
        if (v87)
        {
          goto LABEL_117;
        }

        if (v109 < v97)
        {
          goto LABEL_3;
        }

LABEL_76:
        v114 = v76 - 1;
        if (v76 - 1 >= v73)
        {
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
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*v153)
        {
          goto LABEL_130;
        }

        v115 = *&v32[16 * v114 + 32];
        v116 = *&v32[16 * v76 + 40];
        sub_26EF24648(*v153 + *(v60 + 9) * v115, *v153 + *(v60 + 9) * *&v32[16 * v76 + 32], *v153 + *(v60 + 9) * v116, v16);
        if (v5)
        {
        }

        if (v116 < v115)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v32 = sub_26EE13990(v32);
        }

        if (v114 >= *(v32 + 2))
        {
          goto LABEL_109;
        }

        v117 = &v32[16 * v114];
        *(v117 + 4) = v115;
        *(v117 + 5) = v116;
        v170 = v32;
        result = sub_26EE5C168(v76);
        v32 = v170;
        v73 = *(v170 + 16);
        if (v73 <= 1)
        {
          goto LABEL_3;
        }
      }

      v81 = &v32[16 * v73 + 32];
      v82 = *(v81 - 64);
      v83 = *(v81 - 56);
      v87 = __OFSUB__(v83, v82);
      v84 = v83 - v82;
      if (v87)
      {
        goto LABEL_110;
      }

      v86 = *(v81 - 48);
      v85 = *(v81 - 40);
      v87 = __OFSUB__(v85, v86);
      v79 = v85 - v86;
      v80 = v87;
      if (v87)
      {
        goto LABEL_111;
      }

      v88 = &v32[16 * v73];
      v90 = *v88;
      v89 = *(v88 + 1);
      v87 = __OFSUB__(v89, v90);
      v91 = v89 - v90;
      if (v87)
      {
        goto LABEL_113;
      }

      v87 = __OFADD__(v79, v91);
      v92 = v79 + v91;
      if (v87)
      {
        goto LABEL_116;
      }

      if (v92 >= v84)
      {
        v110 = &v32[16 * v76 + 32];
        v112 = *v110;
        v111 = *(v110 + 1);
        v87 = __OFSUB__(v111, v112);
        v113 = v111 - v112;
        if (v87)
        {
          goto LABEL_120;
        }

        if (v79 < v113)
        {
          v76 = v73 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v30 = *(v153 + 1);
    v31 = v149;
    v16 = v60;
    if (v149 >= v30)
    {
      goto LABEL_96;
    }
  }

  v142 = v32;
  v143 = v5;
  v118 = *v60;
  v119 = *(v16 + 9);
  v158 = *(v16 + 2);
  v120 = (v118 + v119 * (v49 - 1));
  v155 = -v119;
  v146 = v31;
  v121 = (v31 - v49);
  v156 = v118;
  v147 = v119;
  v122 = v118 + v49 * v119;
  v149 = v69;
LABEL_87:
  v154 = v49;
  v150 = v122;
  v151 = v121;
  v123 = v122;
  v152 = v120;
  v124 = v120;
  while (1)
  {
    v60 = v168;
    v125 = v158;
    (v158)(v168, v123, v15);
    v126 = v164;
    v125(v164, v124, v15);
    v127 = v165;
    sub_26EF38D0C();
    v128 = v166;
    sub_26EF38D0C();
    LODWORD(v169) = sub_26EF37E3C();
    v129 = *v161;
    v130 = v128;
    v131 = v167;
    (*v161)(v130, v167);
    v132 = v127;
    v15 = v163;
    v129(v132, v131);
    v133 = *v160;
    (*v160)(v126, v15);
    result = v133(v60, v15);
    if ((v169 & 1) == 0)
    {
LABEL_86:
      v49 = v154 + 1;
      v120 = &v152[v147];
      v121 = v151 - 1;
      v70 = v149;
      v122 = v150 + v147;
      if (v154 + 1 != v149)
      {
        goto LABEL_87;
      }

      v5 = v143;
      v16 = v144;
      v32 = v142;
      v31 = v146;
      if (v149 < v146)
      {
        goto LABEL_123;
      }

      goto LABEL_35;
    }

    if (!v156)
    {
      break;
    }

    v134 = *v159;
    v135 = v157;
    (*v159)(v157, v123, v15);
    swift_arrayInitWithTakeFrontToBack();
    v134(v124, v135, v15);
    v124 = v155 + v124;
    v123 += v155;
    if (__CFADD__(v121++, 1))
    {
      goto LABEL_86;
    }
  }

  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_26EF24648(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v79 = a3;
  v74 = sub_26EF37E7C();
  v7 = *(v74 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x28223BE20](v74, v9);
  v73 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v72 = &v62 - v13;
  v78 = sub_26EF38DBC();
  v14 = *(v78 - 8);
  v15 = *(v14 + 64);
  v17 = MEMORY[0x28223BE20](v78, v16);
  v71 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v17, v19);
  v76 = &v62 - v21;
  v23 = *(v22 + 72);
  if (!v23)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v23 == -1)
  {
    goto LABEL_61;
  }

  v24 = v79 - a2;
  if (v79 - a2 == 0x8000000000000000 && v23 == -1)
  {
    goto LABEL_62;
  }

  v25 = (a2 - a1) / v23;
  v82 = a1;
  v81 = a4;
  if (v25 >= v24 / v23)
  {
    v27 = v24 / v23 * v23;
    if (a4 < a2 || a2 + v27 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v44 = a4 + v27;
    if (v27 >= 1)
    {
      v45 = -v23;
      v66 = (v7 + 8);
      v67 = (v14 + 16);
      v64 = a4;
      v65 = (v14 + 8);
      v46 = v44;
      v77 = a1;
      v68 = -v23;
      v47 = v78;
      while (2)
      {
        while (1)
        {
          v62 = v44;
          v48 = a2;
          v49 = a2 + v45;
          v69 = v48;
          v70 = v49;
          while (1)
          {
            v50 = v79;
            if (v48 <= a1)
            {
              v82 = v48;
              v80 = v62;
              goto LABEL_59;
            }

            v63 = v44;
            v79 += v45;
            v51 = v46 + v45;
            v52 = *v67;
            (*v67)();
            v53 = v71;
            (v52)(v71, v49, v47);
            v54 = v72;
            sub_26EF38D0C();
            v55 = v73;
            sub_26EF38D0C();
            v75 = sub_26EF37E3C();
            v56 = *v66;
            v57 = v55;
            v58 = v74;
            (*v66)(v57, v74);
            v56(v54, v58);
            v59 = *v65;
            (*v65)(v53, v47);
            v59(v76, v47);
            if (v75)
            {
              break;
            }

            v44 = v51;
            v60 = v64;
            if (v50 < v46 || v79 >= v46)
            {
              swift_arrayInitWithTakeFrontToBack();
              v49 = v70;
              v45 = v68;
            }

            else
            {
              v49 = v70;
              v45 = v68;
              if (v50 != v46)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v46 = v51;
            a1 = v77;
            v48 = v69;
            if (v51 <= v60)
            {
              a2 = v69;
              goto LABEL_58;
            }
          }

          v61 = v64;
          if (v50 < v69 || v79 >= v69)
          {
            break;
          }

          a2 = v70;
          a1 = v77;
          v44 = v63;
          v45 = v68;
          if (v50 != v69)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v46 <= v61)
          {
            goto LABEL_58;
          }
        }

        a2 = v70;
        swift_arrayInitWithTakeFrontToBack();
        a1 = v77;
        v44 = v63;
        v45 = v68;
        if (v46 > v61)
        {
          continue;
        }

        break;
      }
    }

LABEL_58:
    v82 = a2;
    v80 = v44;
  }

  else
  {
    v26 = v25 * v23;
    if (a4 < a1 || a1 + v26 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v70 = a4 + v26;
    v80 = a4 + v26;
    if (v26 >= 1 && a2 < v79)
    {
      v29 = *(v14 + 16);
      v66 = (v7 + 8);
      v67 = v29;
      v68 = v23;
      v69 = v14 + 16;
      v65 = (v14 + 8);
      v30 = v78;
      do
      {
        v77 = a1;
        v31 = v76;
        v32 = v67;
        (v67)(v76, a2, v30);
        v33 = v71;
        (v32)(v71, a4, v30);
        v34 = v72;
        sub_26EF38D0C();
        v35 = v73;
        sub_26EF38D0C();
        v75 = sub_26EF37E3C();
        v36 = a2;
        v37 = *v66;
        v38 = v35;
        v39 = a4;
        v40 = v74;
        (*v66)(v38, v74);
        v37(v34, v40);
        v41 = *v65;
        (*v65)(v33, v30);
        v41(v31, v30);
        if (v75)
        {
          v42 = v68;
          a2 = v36 + v68;
          v43 = v77;
          a4 = v39;
          if (v77 < v36 || v77 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v77 != v36)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          a2 = v36;
          v42 = v68;
          a4 = v39 + v68;
          v43 = v77;
          if (v77 < v39 || v77 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v77 != v39)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v81 = a4;
        }

        a1 = v43 + v42;
        v82 = a1;
      }

      while (a4 < v70 && a2 < v79);
    }
  }

LABEL_59:
  sub_26EECF41C(&v82, &v81, &v80);
  return 1;
}

uint64_t sub_26EF24D24@<X0>(uint64_t a1@<X8>)
{
  v95 = a1;
  v97 = sub_26EF3A1FC();
  v96 = *(v97 - 8);
  v2 = *(v96 + 64);
  MEMORY[0x28223BE20](v97, v3);
  v94 = v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_26EF39DDC();
  v91 = *(v87 - 8);
  v5 = *(v91 + 64);
  MEMORY[0x28223BE20](v87, v6);
  v86 = v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PromptView();
  v100 = *(v8 - 8);
  v9 = *(v100 + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v83 = v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26EF3872C();
  v12 = *(v11 - 8);
  v13 = v12;
  v14 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v15);
  v17 = v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8018, &qword_26EF41830);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8, v20);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9F48, &qword_26EF445F8);
  v98 = *(v85 - 8);
  v21 = *(v98 + 64);
  MEMORY[0x28223BE20](v85, v22);
  v82 = v81 - v23;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9F50, &qword_26EF44600);
  v24 = *(*(v101 - 8) + 64);
  MEMORY[0x28223BE20](v101, v25);
  v84 = v81 - v26;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9F58, &qword_26EF44608);
  v88 = *(v90 - 8);
  v27 = *(v88 + 64);
  MEMORY[0x28223BE20](v90, v28);
  v99 = v81 - v29;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9F60, &qword_26EF44610);
  v92 = *(v93 - 8);
  v30 = *(v92 + 64);
  v32 = MEMORY[0x28223BE20](v93, v31);
  v89 = v81 - v33;
  v34 = v1;
  v81[1] = sub_26EF25AA4(v32);
  v81[0] = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8080, &unk_26EF3FC30);
  v36 = *(v12 + 72);
  v37 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_26EF3EE20;
  sub_26EF386EC();
  sub_26EF3870C();
  sub_26EF386DC();
  v105 = v38;
  sub_26EF31BEC(&qword_2806C8088, MEMORY[0x277CE7670]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8090, &unk_26EF3FB80);
  sub_26EE154C8(&qword_2806C8098, &qword_2806C8090, &unk_26EF3FB80);
  sub_26EF3B68C();
  sub_26EF3AC8C();
  v39 = v17;
  v40 = v34;
  v41 = v11;
  v42 = v83;
  (*(v13 + 8))(v39, v41);
  v104 = v34;
  v103 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9F68, &qword_26EF44618);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9F70, &qword_26EF44620);
  sub_26EE154C8(&qword_2806C9F78, &qword_2806C9F68, &qword_26EF44618);
  sub_26EF27264();
  v43 = v82;
  sub_26EF386BC();
  v102 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9108, &unk_26EF421F0);
  sub_26EE154C8(&qword_2806C9FD8, &qword_2806C9F48, &qword_26EF445F8);
  v44 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8C20, &qword_26EF41880);
  v45 = type metadata accessor for ToolbarCancelButton();
  v46 = sub_26EF31BEC(&qword_2806C8BF0, type metadata accessor for ToolbarCancelButton);
  v105 = v45;
  v106 = v46;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v105 = v44;
  v106 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v48 = v84;
  v49 = v85;
  sub_26EF3A8EC();
  (*(v98 + 8))(v43, v49);
  sub_26EF279C4(v34, v42);
  v50 = (*(v100 + 80) + 16) & ~*(v100 + 80);
  v100 = v9;
  v51 = swift_allocObject();
  v98 = v50;
  sub_26EF27A2C(v42, v51 + v50);
  v52 = v48;
  v53 = &v48[*(v101 + 36)];
  v54 = &v53[*(sub_26EF3990C() + 20)];
  sub_26EF3B2EC();
  *v53 = &unk_26EF44668;
  *(v53 + 1) = v51;
  v55 = *v40;
  v56 = *(v40 + 8);
  if (v56 == 1)
  {
    v57 = v55;
    v58 = v86;
  }

  else
  {
    v59 = *v40;

    sub_26EF3B46C();
    v60 = sub_26EF3A36C();
    sub_26EF3880C();

    v58 = v86;
    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v55, 0);
    (*(v91 + 8))(v58, v87);
    v57 = v105;
  }

  v61 = VoiceBankingSession.isRecordingComplete.getter();

  LOBYTE(v105) = v61;
  sub_26EF279C4(v40, v42);
  v62 = v98;
  v63 = swift_allocObject();
  sub_26EF27A2C(v42, v63 + v62);
  v64 = sub_26EF27E64();
  sub_26EF3A8FC();

  sub_26EE14578(v52, &qword_2806C9F50, &qword_26EF44600);
  if (v56)
  {
    v65 = v55;
  }

  else
  {

    sub_26EF3B46C();
    v66 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v55, 0);
    (*(v91 + 8))(v58, v87);
    v65 = v105;
  }

  v67 = VoiceBankingSession.indexOfCurrentSample.getter();
  v69 = v68;

  v109 = v67;
  v110 = v69 & 1;
  sub_26EF279C4(v40, v42);
  v70 = v98;
  v71 = swift_allocObject();
  v91 = v40;
  sub_26EF27A2C(v42, v71 + v70);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6E40, &qword_26EF44670);
  v105 = v101;
  v106 = MEMORY[0x277D839B0];
  v107 = v64;
  v108 = MEMORY[0x277D839C8];
  v72 = swift_getOpaqueTypeConformance2();
  v73 = sub_26EE25D44();
  v74 = v89;
  v75 = v90;
  v76 = v99;
  sub_26EF3A90C();

  (*(v88 + 8))(v76, v75);
  v77 = v94;
  sub_26EF3A1EC();
  sub_26EF279C4(v91, v42);
  v78 = swift_allocObject();
  sub_26EF27A2C(v42, v78 + v70);
  v105 = v75;
  v106 = v87;
  v107 = v72;
  v108 = v73;
  swift_getOpaqueTypeConformance2();
  v79 = v93;
  sub_26EF3A7AC();

  (*(v96 + 8))(v77, v97);
  return (*(v92 + 8))(v74, v79);
}

uint64_t type metadata accessor for PromptView()
{
  result = qword_2806CF710;
  if (!qword_2806CF710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26EF25C8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA0A0, &qword_26EF447C8);
  v4 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v3 - 8, v5);
  v48 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v47 = &v45 - v9;
  v10 = sub_26EF39DDC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9FF0, &qword_26EF44678);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v45 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA0B8, &unk_26EF447D8);
  v23 = *(*(v22 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v22 - 8, v24);
  v46 = &v45 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v27);
  v29 = (&v45 - v28);
  v30 = *a1;
  if (*(a1 + 8) == 1)
  {
    v31 = v30;
  }

  else
  {
    v32 = *a1;

    sub_26EF3B46C();
    v33 = sub_26EF3A36C();
    v45 = v10;
    v34 = v33;
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v30, 0);
    (*(v11 + 8))(v15, v45);
  }

  type metadata accessor for VoiceBankingSession();
  sub_26EF31BEC(&qword_2806C65C0, type metadata accessor for VoiceBankingSession);
  sub_26EF3ADBC();
  *v29 = sub_26EF3AE4C();
  v29[1] = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9FF8, &qword_26EF44680);
  sub_26EF2BC9C(v21, a1, v29 + *(v36 + 44));
  (*(v17 + 8))(v21, v16);
  v37 = v47;
  sub_26EF26118(v47);
  v38 = v46;
  sub_26EE13B88(v29, v46, &qword_2806CA0B8, &unk_26EF447D8);
  v39 = v48;
  sub_26EE13B88(v37, v48, &qword_2806CA0A0, &qword_26EF447C8);
  v40 = v49;
  sub_26EE13B88(v38, v49, &qword_2806CA0B8, &unk_26EF447D8);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA1C8, &qword_26EF449A0);
  v42 = v40 + v41[12];
  *v42 = 0;
  *(v42 + 8) = 1;
  sub_26EE13B88(v39, v40 + v41[16], &qword_2806CA0A0, &qword_26EF447C8);
  v43 = v40 + v41[20];
  *v43 = 0;
  *(v43 + 8) = 1;
  sub_26EE14578(v37, &qword_2806CA0A0, &qword_26EF447C8);
  sub_26EE14578(v29, &qword_2806CA0B8, &unk_26EF447D8);
  sub_26EE14578(v39, &qword_2806CA0A0, &qword_26EF447C8);
  return sub_26EE14578(v38, &qword_2806CA0B8, &unk_26EF447D8);
}

uint64_t sub_26EF26118@<X0>(uint64_t a1@<X8>)
{
  v69 = a1;
  v2 = type metadata accessor for PromptView();
  v64 = *(v2 - 8);
  v3 = *(v64 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v65 = v5;
  v66 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA000, &qword_26EF44688);
  v6 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59, v7);
  v9 = &v57 - v8;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA008, &qword_26EF44690);
  v10 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62, v11);
  v63 = &v57 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA010, &unk_26EF44698);
  v67 = *(v13 - 8);
  v68 = v13;
  v14 = *(v67 + 64);
  MEMORY[0x28223BE20](v13, v15);
  v61 = &v57 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9CA0, &qword_26EF3F100);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8, v19);
  v21 = &v57 - v20;
  v22 = sub_26EF39DDC();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22, v25);
  v27 = &v57 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_26EF38E9C();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28, v31);
  v58 = &v57 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *v1;
  v60 = v1;
  if (*(v1 + 8) == 1)
  {
    v34 = v33;
  }

  else
  {

    sub_26EF3B46C();
    v57 = v22;
    v35 = v2;
    v36 = v9;
    v37 = v29;
    v38 = v28;
    v39 = sub_26EF3A36C();
    sub_26EF3880C();

    v28 = v38;
    v29 = v37;
    v9 = v36;
    v2 = v35;
    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v33, 0);
    (*(v23 + 8))(v27, v57);
    v34 = v70;
  }

  v40 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_sample;
  swift_beginAccess();
  sub_26EE13B88(v34 + v40, v21, &unk_2806C9CA0, &qword_26EF3F100);

  if ((*(v29 + 48))(v21, 1, v28) == 1)
  {
    sub_26EE14578(v21, &unk_2806C9CA0, &qword_26EF3F100);
    return (*(v67 + 56))(v69, 1, 1, v68);
  }

  else
  {
    v42 = v58;
    (*(v29 + 32))(v58, v21, v28);
    *v9 = sub_26EF39F6C();
    *(v9 + 1) = 0x402E000000000000;
    v9[16] = 0;
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA018, &qword_26EF446A8);
    v44 = v60;
    sub_26EF28E58(v60, &v9[*(v43 + 44)]);
    v45 = *(v2 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9FE0, &unk_26EF44658);
    sub_26EF3A21C();
    v57 = v28;
    sub_26EE154C8(&qword_2806CA020, &qword_2806CA000, &qword_26EF44688);
    v46 = v63;
    sub_26EF3A7EC();

    sub_26EE14578(v9, &qword_2806CA000, &qword_26EF44688);
    KeyPath = swift_getKeyPath();
    v48 = (v46 + *(v62 + 36));
    v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA028, &qword_26EF446E0) + 28);
    v50 = *MEMORY[0x277CDFA88];
    v51 = sub_26EF39A4C();
    (*(*(v51 - 8) + 104))(v48 + v49, v50, v51);
    *v48 = KeyPath;
    v52 = v66;
    sub_26EF279C4(v44, v66);
    v53 = (*(v64 + 80) + 16) & ~*(v64 + 80);
    v54 = swift_allocObject();
    sub_26EF27A2C(v52, v54 + v53);
    sub_26EF2C278();
    v55 = v61;
    sub_26EF3A85C();

    sub_26EE14578(v46, &qword_2806CA008, &qword_26EF44690);
    v56 = v69;
    sub_26EE14D98(v55, v69, &qword_2806CA010, &unk_26EF44698);
    (*(v67 + 56))(v56, 0, 1, v68);
    return (*(v29 + 8))(v42, v57);
  }
}

uint64_t sub_26EF26838@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v3 = type metadata accessor for PromptView();
  v65 = *(v3 - 8);
  v4 = *(v65 + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v66 = v6;
  v7 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9FD0, &qword_26EF44648);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v63 - v11;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9FB0, &qword_26EF44638);
  v13 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70, v14);
  v67 = &v63 - v15;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA1C0, &qword_26EF44998);
  v16 = *(*(v73 - 8) + 64);
  MEMORY[0x28223BE20](v73, v17);
  v19 = &v63 - v18;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9F90, &qword_26EF44628);
  v20 = *(*(v69 - 8) + 64);
  MEMORY[0x28223BE20](v69, v21);
  v23 = &v63 - v22;
  v24 = sub_26EF39DDC();
  v68 = *(v24 - 8);
  v25 = *(v68 + 64);
  MEMORY[0x28223BE20](v24, v26);
  v28 = &v63 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9F70, &qword_26EF44620);
  v74 = *(v29 - 8);
  v30 = *(v74 + 64);
  MEMORY[0x28223BE20](v29, v31);
  v72 = &v63 - v32;
  v33 = *a1;
  if (*(a1 + 8) == 1)
  {
    v34 = v33;
  }

  else
  {
    v35 = *a1;

    sub_26EF3B46C();
    v63 = v24;
    v36 = sub_26EF3A36C();
    v64 = v12;
    v37 = a1;
    v38 = v29;
    v39 = v36;
    sub_26EF3880C();

    v29 = v38;
    a1 = v37;
    v12 = v64;
    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v33, 0);
    (*(v68 + 8))(v28, v63);
    v34 = v77;
  }

  VoiceBankingSession.sampleState.getter(&v76);

  v75 = 4;
  v40 = static SampleState.== infix(_:_:)(&v76, &v75);
  v41 = v72;
  if (v40 || (sub_26EF26F04() & 1) != 0)
  {
    *v23 = sub_26EF39F5C();
    *(v23 + 1) = 0x4034000000000000;
    v23[16] = 0;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA040, &qword_26EF446E8);
    sub_26EF2B03C(a1, &v23[*(v42 + 44)]);
    v43 = sub_26EF3A3DC();
    sub_26EF3962C();
    v44 = &v23[*(v69 + 36)];
    *v44 = v43;
    *(v44 + 1) = v45;
    *(v44 + 2) = v46;
    *(v44 + 3) = v47;
    *(v44 + 4) = v48;
    v44[40] = 0;
    v49 = &qword_2806C9F90;
    v50 = &qword_26EF44628;
    sub_26EE13B88(v23, v19, &qword_2806C9F90, &qword_26EF44628);
    swift_storeEnumTagMultiPayload();
    sub_26EF272F0();
    sub_26EF273A8();
    sub_26EF3A06C();
    v51 = v23;
  }

  else
  {
    *v12 = sub_26EF39F5C();
    *(v12 + 1) = 0x4041800000000000;
    v12[16] = 0;
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA048, &qword_26EF446F0);
    sub_26EF2B974(a1, &v12[*(v52 + 44)]);
    sub_26EF279C4(a1, v7);
    v53 = (*(v65 + 80) + 16) & ~*(v65 + 80);
    v54 = swift_allocObject();
    sub_26EF27A2C(v7, v54 + v53);
    sub_26EE154C8(&qword_2806C9FC8, &qword_2806C9FD0, &qword_26EF44648);
    v55 = v67;
    sub_26EF3A85C();

    sub_26EE14578(v12, &qword_2806C9FD0, &qword_26EF44648);
    LOBYTE(v53) = sub_26EF3A3DC();
    sub_26EF3962C();
    v56 = v55 + *(v70 + 36);
    *v56 = v53;
    *(v56 + 8) = v57;
    *(v56 + 16) = v58;
    *(v56 + 24) = v59;
    *(v56 + 32) = v60;
    *(v56 + 40) = 0;
    v49 = &qword_2806C9FB0;
    v50 = &qword_26EF44638;
    sub_26EE13B88(v55, v19, &qword_2806C9FB0, &qword_26EF44638);
    swift_storeEnumTagMultiPayload();
    sub_26EF272F0();
    sub_26EF273A8();
    sub_26EF3A06C();
    v51 = v55;
  }

  sub_26EE14578(v51, v49, v50);
  v61 = v71;
  sub_26EE14D98(v41, v71, &qword_2806C9F70, &qword_26EF44620);
  return (*(v74 + 56))(v61, 0, 1, v29);
}

uint64_t sub_26EF26F04()
{
  v1 = v0;
  v2 = sub_26EF39DDC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26EF38BEC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v28 - v16;
  v18 = *(v0 + 32);
  if (v18)
  {
    v19 = v18;
    sub_26EF10340();

    (*(v9 + 104))(v14, *MEMORY[0x277D70578], v8);
    sub_26EF31BEC(&qword_2806C8B90, MEMORY[0x277D70580]);
    sub_26EF3B1DC();
    sub_26EF3B1DC();
    v20 = *(v9 + 8);
    v20(v14, v8);
    v20(v17, v8);
    if (v29 == v28)
    {
      v21 = *v1;
      if (*(v1 + 8) == 1)
      {
        v22 = v21;
      }

      else
      {
        v24 = *v1;

        sub_26EF3B46C();
        v25 = sub_26EF3A36C();
        sub_26EF3880C();

        sub_26EF39DCC();
        swift_getAtKeyPath();
        sub_26EE05C9C(v21, 0);
        (*(v3 + 8))(v7, v2);
        v22 = v29;
      }

      VoiceBankingSession.sampleState.getter(&v29);

      LOBYTE(v28) = 3;
      return static SampleState.== infix(_:_:)(&v29, &v28);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v27 = *(v0 + 40);
    type metadata accessor for VoiceBankingAudioServiceViewModel();
    sub_26EF31BEC(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel);
    result = sub_26EF39BFC();
    __break(1u);
  }

  return result;
}

unint64_t sub_26EF27264()
{
  result = qword_2806C9F80;
  if (!qword_2806C9F80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9F70, &qword_26EF44620);
    sub_26EF272F0();
    sub_26EF273A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C9F80);
  }

  return result;
}

unint64_t sub_26EF272F0()
{
  result = qword_2806C9F88;
  if (!qword_2806C9F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9F90, &qword_26EF44628);
    sub_26EE154C8(&qword_2806C9F98, &qword_2806C9FA0, &qword_26EF44630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C9F88);
  }

  return result;
}

unint64_t sub_26EF273A8()
{
  result = qword_2806C9FA8;
  if (!qword_2806C9FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9FB0, &qword_26EF44638);
    sub_26EF27434();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C9FA8);
  }

  return result;
}

unint64_t sub_26EF27434()
{
  result = qword_2806C9FB8;
  if (!qword_2806C9FB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9FC0, &qword_26EF44640);
    sub_26EE154C8(&qword_2806C9FC8, &qword_2806C9FD0, &qword_26EF44648);
    sub_26EF31BEC(&qword_2806C6AD8, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C9FB8);
  }

  return result;
}

uint64_t sub_26EF2751C()
{
  v0 = type metadata accessor for ToolbarCancelButton();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8C20, &qword_26EF41880);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = v17 - v9;
  v11 = sub_26EE17094() & 1;
  v12._countAndFlagsBits = 0x454E4F445F4256;
  v12._object = 0xE700000000000000;
  v13 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v12, v11, 0);
  sub_26EF363D8(v13._countAndFlagsBits, v13._object, v4);
  v14 = sub_26EF31BEC(&qword_2806C8BF0, type metadata accessor for ToolbarCancelButton);
  MEMORY[0x274382230](v4, v0, v14);
  sub_26EEB2754(v4);
  v17[0] = v0;
  v17[1] = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x274382230](v10, v5, OpaqueTypeConformance2);
  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_26EF27704(uint64_t a1)
{
  v1[3] = a1;
  v2 = sub_26EF39DDC();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  sub_26EF3B2DC();
  v1[7] = sub_26EF3B2CC();
  v6 = sub_26EF3B29C();

  return MEMORY[0x2822009F8](sub_26EF277F8, v6, v5);
}

uint64_t sub_26EF277F8()
{
  v1 = v0[7];
  v2 = v0[3];

  v3 = *(v2 + 32);
  v4 = v0[3];
  if (v3)
  {
    v5 = v3;
    sub_26EF17564();

    v6 = *v4;
    if (*(v4 + 8) == 1)
    {
      v7 = v6;
    }

    else
    {
      v11 = v0[5];
      v10 = v0[6];
      v12 = v0[4];

      sub_26EF3B46C();
      v13 = sub_26EF3A36C();
      sub_26EF3880C();

      sub_26EF39DCC();
      swift_getAtKeyPath();
      sub_26EE05C9C(v6, 0);
      (*(v11 + 8))(v10, v12);
      v7 = v0[2];
    }

    v14 = v0[6];
    sub_26EED7058();

    v15 = v0[1];

    return v15();
  }

  else
  {
    v8 = *(v4 + 40);
    type metadata accessor for VoiceBankingAudioServiceViewModel();
    sub_26EF31BEC(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel);

    return sub_26EF39BFC();
  }
}

uint64_t sub_26EF279C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PromptView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EF27A2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PromptView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EF27A90()
{
  v2 = *(type metadata accessor for PromptView() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26EE15538;

  return sub_26EF27704(v0 + v3);
}

uint64_t sub_26EF27B5C(_BYTE *a1, uint64_t a2)
{
  v4 = sub_26EF39DDC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4, v7);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 1)
  {
    if (*(a2 + 16))
    {
      v11 = result;
      v12 = *a2;
      v13 = *(a2 + 8);

      if (v13 == 1)
      {
        sub_26EECABE0(v12, 1);
      }

      else
      {
        sub_26EECABE0(v12, 0);
        sub_26EF3B46C();
        v14 = sub_26EF3A36C();
        sub_26EF3880C();

        sub_26EF39DCC();
        swift_getAtKeyPath();
        sub_26EE05C9C(v12, 0);
        (*(v5 + 8))(v10, v11);
        v12 = v25[0];
      }

      v15 = sub_26EED6EB4();

      v16 = VoiceBankingNavigationModel.itemPath.modify(v25);
      v18 = v17;
      v19 = *v17;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v18 = v19;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v19 = sub_26EEB3AD4(0, *(v19 + 2) + 1, 1, v19);
        *v18 = v19;
      }

      v22 = *(v19 + 2);
      v21 = *(v19 + 3);
      if (v22 >= v21 >> 1)
      {
        v19 = sub_26EEB3AD4((v21 > 1), v22 + 1, 1, v19);
        *v18 = v19;
      }

      *(v19 + 2) = v22 + 1;
      v23 = &v19[16 * v22];
      *(v23 + 4) = v15;
      v23[40] = 0;
      (v16)(v25, 0);
    }

    else
    {
      v24 = *(a2 + 24);
      type metadata accessor for VoiceBankingNavigationModel();
      sub_26EF31BEC(&qword_2806C6C20, type metadata accessor for VoiceBankingNavigationModel);
      result = sub_26EF39BFC();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_26EF27DF4(uint64_t a1, _BYTE *a2)
{
  v4 = *(type metadata accessor for PromptView() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_26EF27B5C(a2, v5);
}

unint64_t sub_26EF27E64()
{
  result = qword_2806C9FE8;
  if (!qword_2806C9FE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9F50, &qword_26EF44600);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9F48, &qword_26EF445F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9108, &unk_26EF421F0);
    sub_26EE154C8(&qword_2806C9FD8, &qword_2806C9F48, &qword_26EF445F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8C20, &qword_26EF41880);
    type metadata accessor for ToolbarCancelButton();
    sub_26EF31BEC(&qword_2806C8BF0, type metadata accessor for ToolbarCancelButton);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_26EF31BEC(&qword_2806C6708, MEMORY[0x277CDD8B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C9FE8);
  }

  return result;
}

uint64_t sub_26EF2804C()
{
  v1 = type metadata accessor for PromptView();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = *(v2 + 48);
  v4 = *(v2 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72E0, &qword_26EF3E8C0);
  sub_26EF3AAFC();
  if (v7 == 1)
  {
    v5 = *(v1 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9FE0, &unk_26EF44658);
    return sub_26EF3A20C();
  }

  else
  {
    sub_26EE82F18();
    return sub_26EF3AB0C();
  }
}

uint64_t sub_26EF28174@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v38 = a2;
  *&v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C83C0, &qword_26EF40210);
  v3 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34, v4);
  v6 = &v33 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA0C0, &qword_26EF44818);
  v36 = *(v7 - 8);
  v37 = v7;
  v8 = *(v36 + 64);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v35 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v39 = &v33 - v13;
  sub_26EE98378(&v44);
  v14 = sub_26EF39E4C();
  v43 = 1;
  sub_26EF28688(&v55, a1);
  v49 = v56;
  v50 = v57;
  v51 = v58;
  v52 = v59;
  v48 = v55;
  v53[1] = v56;
  v53[2] = v57;
  v53[3] = v58;
  v54 = v59;
  v53[0] = v55;
  sub_26EE13B88(&v48, &v40, &qword_2806CA0C8, &qword_26EF44820);
  sub_26EE14578(v53, &qword_2806CA0C8, &qword_26EF44820);
  *(&v42[1] + 7) = v49;
  *(&v42[2] + 7) = v50;
  *(&v42[3] + 7) = v51;
  *(&v42[4] + 7) = v52;
  *(v42 + 7) = v48;
  v15 = v43;
  v16 = *(type metadata accessor for PromptView() + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8338, &qword_26EF40020);
  sub_26EF397FC();
  sub_26EF3AE4C();
  sub_26EF3984C();
  *(&v41[1] + 1) = v42[1];
  *(&v41[2] + 1) = v42[2];
  *(&v41[3] + 1) = v42[3];
  v41[4] = *(&v42[3] + 15);
  v40 = v14;
  LOBYTE(v41[0]) = v15;
  *(v41 + 1) = v42[0];
  v17 = *MEMORY[0x277CDF988];
  v18 = sub_26EF39A3C();
  (*(*(v18 - 8) + 104))(v6, v17, v18);
  sub_26EF31BEC(&qword_2806C83D0, MEMORY[0x277CDFA28]);
  result = sub_26EF3B0AC();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA0D0, &qword_26EF44828);
    sub_26EF31730();
    sub_26EE154C8(&qword_2806C83D8, &qword_2806C83C0, &qword_26EF40210);
    v20 = v39;
    sub_26EF3A73C();
    sub_26EE14578(v6, &qword_2806C83C0, &qword_26EF40210);
    v61 = v41[5];
    v62 = v41[6];
    v63 = v41[7];
    v57 = v41[1];
    v58 = v41[2];
    v59 = v41[3];
    v60 = v41[4];
    v55 = v40;
    v56 = v41[0];
    sub_26EE14578(&v55, &qword_2806CA0D0, &qword_26EF44828);
    v21 = v47;
    v23 = v35;
    v22 = v36;
    v24 = *(v36 + 16);
    v25 = v46;
    v26 = v20;
    v27 = v37;
    v24(v35, v26, v37);
    v28 = v45;
    v33 = v44;
    v34 = v45;
    v29 = v38;
    *v38 = v44;
    v29[1] = v28;
    *(v29 + 32) = v25 & 1;
    *(v29 + 5) = v21;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA0F0, &qword_26EF44838);
    v24(v29 + *(v30 + 48), v23, v27);
    v31 = v33;
    sub_26EE980F4();
    v32 = *(v22 + 8);

    v32(v39, v27);
    v32(v23, v27);

    sub_26EE05CA8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26EF28A90()
{
  v1 = v0;
  v2 = sub_26EF38C2C();
  v32 = *(v2 - 8);
  v33 = v2;
  v3 = *(v32 + 64);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v32 - v9;
  v11 = sub_26EF39DDC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v0;
  v18 = *(v0 + 8);
  if (v18 == 1)
  {
    v19 = v17;
  }

  else
  {
    v20 = *v0;

    sub_26EF3B46C();
    v21 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v17, 0);
    (*(v12 + 8))(v16, v11);
    v19 = v35;
  }

  VoiceBankingSession.sampleState.getter(&v35);

  v34 = 2;
  if (static SampleState.== infix(_:_:)(&v35, &v34))
  {
    v22 = 1;
    return v22 & 1;
  }

  if (v18)
  {
    v23 = v17;
  }

  else
  {

    sub_26EF3B46C();
    v24 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v17, 0);
    (*(v12 + 8))(v16, v11);
    v23 = v35;
  }

  VoiceBankingSession.sampleState.getter(&v35);

  v22 = 1;
  v34 = 1;
  if (static SampleState.== infix(_:_:)(&v35, &v34))
  {
    return v22 & 1;
  }

  v25 = *(v1 + 32);
  if (v25)
  {
    v26 = v25;
    sub_26EF0F97C();

    v28 = v32;
    v27 = v33;
    (*(v32 + 104))(v7, *MEMORY[0x277D705A0], v33);
    v22 = sub_26EF38C1C();
    v29 = *(v28 + 8);
    v29(v7, v27);
    v29(v10, v27);
    return v22 & 1;
  }

  v31 = *(v1 + 40);
  type metadata accessor for VoiceBankingAudioServiceViewModel();
  sub_26EF31BEC(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel);
  result = sub_26EF39BFC();
  __break(1u);
  return result;
}

uint64_t sub_26EF28E58@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  v96 = a2;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA0B0, &qword_26EF447D0);
  v3 = *(*(v95 - 8) + 64);
  MEMORY[0x28223BE20](v95, v4);
  v78 = &v77 - v5;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA128, &qword_26EF448D0);
  v6 = *(*(v93 - 8) + 64);
  MEMORY[0x28223BE20](v93, v7);
  v94 = &v77 - v8;
  v9 = type metadata accessor for PromptView();
  v10 = v9 - 8;
  v81 = *(v9 - 8);
  v11 = *(v81 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v82 = v13;
  v83 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8800, &qword_26EF40D20);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v80 = &v77 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA058, &qword_26EF44708);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8, v20);
  v84 = (&v77 - v21);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA070, &qword_26EF44718);
  v22 = *(*(v90 - 8) + 64);
  MEMORY[0x28223BE20](v90, v23);
  v85 = &v77 - v24;
  v79 = sub_26EF39DDC();
  v25 = *(v79 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v79, v27);
  v29 = &v77 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA130, &qword_26EF448D8);
  v31 = *(*(v30 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v30 - 8, v32);
  v92 = &v77 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33, v35);
  v91 = &v77 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA138, &qword_26EF448E0);
  v86 = *(v37 - 8);
  v87 = v37;
  v38 = *(v86 + 64);
  v40 = MEMORY[0x28223BE20](v37, v39);
  v89 = &v77 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40, v42);
  v44 = &v77 - v43;
  sub_26EF38E6C();
  v45 = sub_26EED275C();
  v98[0] = v45;
  v98[1] = v46;
  v98[2] = v47;
  v98[3] = v48;
  v49 = *(v10 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9FE0, &unk_26EF44658);
  sub_26EF3A21C();
  sub_26EF31C38();
  v88 = v44;
  sub_26EF3A7EC();

  v50 = *a1;
  if (*(a1 + 8) == 1)
  {
    v51 = v50;
  }

  else
  {
    v52 = *a1;

    sub_26EF3B46C();
    v53 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v50, 0);
    (*(v25 + 8))(v29, v79);
    v51 = v98[0];
  }

  VoiceBankingSession.sampleState.getter(v98);

  LOBYTE(v97) = 4;
  if (static SampleState.== infix(_:_:)(v98, &v97) || (sub_26EF26F04() & 1) != 0)
  {
    v54 = v80;
    sub_26EF398DC();
    v55 = sub_26EF398FC();
    (*(*(v55 - 8) + 56))(v54, 0, 1, v55);
    v56 = v83;
    sub_26EF279C4(a1, v83);
    v57 = (*(v81 + 80) + 16) & ~*(v81 + 80);
    v58 = swift_allocObject();
    v59 = sub_26EF27A2C(v56, v58 + v57);
    MEMORY[0x28223BE20](v59, v60);
    *(&v77 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA060, &qword_26EF44710);
    sub_26EE154C8(&qword_2806CA068, &qword_2806CA060, &qword_26EF44710);
    v61 = v84;
    sub_26EE98DD0(v54, sub_26EF323C8, v58, sub_26EF323F8, v84);
    if (sub_26EF2A5D4())
    {
      v62 = 1.0;
    }

    else
    {
      v62 = 0.0;
    }

    v63 = v85;
    sub_26EF2C3B0(v61, v85);
    *(v63 + *(v90 + 36)) = v62;
    v64 = &qword_2806CA070;
    v65 = &qword_26EF44718;
    sub_26EE13B88(v63, v94, &qword_2806CA070, &qword_26EF44718);
    swift_storeEnumTagMultiPayload();
    sub_26EF2C6E4();
    sub_26EF314EC(&qword_2806CA0A8, &qword_2806CA0B0, &qword_26EF447D0, sub_26EF2C6E4);
    v66 = v91;
  }

  else
  {
    v63 = v78;
    sub_26EF29798(v78);
    v64 = &qword_2806CA0B0;
    v65 = &qword_26EF447D0;
    sub_26EE13B88(v63, v94, &qword_2806CA0B0, &qword_26EF447D0);
    swift_storeEnumTagMultiPayload();
    sub_26EF2C6E4();
    sub_26EF314EC(&qword_2806CA0A8, &qword_2806CA0B0, &qword_26EF447D0, sub_26EF2C6E4);
    v66 = v91;
  }

  sub_26EF3A06C();
  sub_26EE14578(v63, v64, v65);
  v67 = v86;
  v68 = v87;
  v69 = *(v86 + 16);
  v70 = v88;
  v71 = v89;
  v69(v89, v88, v87);
  v72 = v92;
  sub_26EE13B88(v66, v92, &qword_2806CA130, &qword_26EF448D8);
  v73 = v96;
  v69(v96, v71, v68);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA148, &qword_26EF448E8);
  sub_26EE13B88(v72, &v73[*(v74 + 48)], &qword_2806CA130, &qword_26EF448D8);
  sub_26EE14578(v66, &qword_2806CA130, &qword_26EF448D8);
  v75 = *(v67 + 8);
  v75(v70, v68);
  sub_26EE14578(v72, &qword_2806CA130, &qword_26EF448D8);
  return (v75)(v71, v68);
}

uint64_t sub_26EF29798@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v34 = sub_26EF39F4C();
  v32 = *(v34 - 8);
  v2 = *(v32 + 64);
  MEMORY[0x28223BE20](v34, v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PromptView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8, v9);
  v10 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8800, &qword_26EF40D20);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = &v31 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA058, &qword_26EF44708);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  v20 = (&v31 - v19);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA070, &qword_26EF44718);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21, v23);
  v25 = &v31 - v24;
  sub_26EF398CC();
  v26 = sub_26EF398FC();
  (*(*(v26 - 8) + 56))(v15, 0, 1, v26);
  sub_26EF279C4(v1, v10);
  v27 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v28 = swift_allocObject();
  sub_26EF27A2C(v10, v28 + v27);
  v35 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA060, &qword_26EF44710);
  sub_26EE154C8(&qword_2806CA068, &qword_2806CA060, &qword_26EF44710);
  sub_26EE98DD0(v15, sub_26EF2C420, v28, sub_26EF2C4B4, v20);
  if (sub_26EF2A5D4())
  {
    v29 = 1.0;
  }

  else
  {
    v29 = 0.0;
  }

  sub_26EF2C3B0(v20, v25);
  *&v25[*(v21 + 36)] = v29;
  sub_26EF39F0C();
  sub_26EF2C6E4();
  sub_26EF3A81C();
  (*(v32 + 8))(v5, v34);
  return sub_26EE14578(v25, &qword_2806CA070, &qword_26EF44718);
}

uint64_t sub_26EF29B74(uint64_t a1)
{
  v2 = sub_26EF39A4C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2, v4);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_26EF39CCC();
}

void sub_26EF29C3C()
{
  v1 = type metadata accessor for PromptView();
  v44 = *(v1 - 8);
  v2 = *(v44 + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v45 = v4;
  v47 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v46 = &v42 - v8;
  v48 = sub_26EF3925C();
  v9 = *(v48 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v48, v11);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_26EF39DDC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *v0;
  v43 = v0;
  if (*(v0 + 8) == 1)
  {
    v21 = v20;
    v22 = VoiceBankingSession.indexOfCurrentSample.getter();
    v24 = v23;

    if (v24)
    {
      return;
    }

    v25 = v21;
  }

  else
  {

    sub_26EF3B46C();
    v26 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v20, 0);
    v27 = *(v15 + 8);
    v27(v19, v14);
    v28 = v49;
    v22 = VoiceBankingSession.indexOfCurrentSample.getter();
    v30 = v29;

    if (v30)
    {
      return;
    }

    sub_26EF3B46C();
    v31 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v20, 0);
    v27(v19, v14);
    v25 = v49;
  }

  v32 = v48;
  (*(v9 + 16))(v13, v25 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceCreationExperience, v48);

  v33 = sub_26EF3923C();
  (*(v9 + 8))(v13, v32);
  if (v22 < v33)
  {
    v34 = sub_26EF3B30C();
    v35 = v46;
    (*(*(v34 - 8) + 56))(v46, 1, 1, v34);
    v36 = v47;
    sub_26EF279C4(v43, v47);
    sub_26EF3B2DC();
    v37 = sub_26EF3B2CC();
    v38 = (*(v44 + 80) + 32) & ~*(v44 + 80);
    v39 = (v45 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
    v40 = swift_allocObject();
    v41 = MEMORY[0x277D85700];
    *(v40 + 16) = v37;
    *(v40 + 24) = v41;
    sub_26EF27A2C(v36, v40 + v38);
    *(v40 + v39) = v22;
    sub_26EE2C388(0, 0, v35, &unk_26EF44878, v40);
  }
}

void sub_26EF2A0DC()
{
  v1 = v0;
  v2 = type metadata accessor for PromptView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8, v5);
  v6 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = v31 - v10;
  v12 = sub_26EF39DDC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x28223BE20](v12, v15);
  v18 = v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v0;
  if (*(v0 + 8) == 1)
  {
    v20 = v19;
  }

  else
  {
    v31[0] = v16;

    sub_26EF3B46C();
    v21 = sub_26EF3A36C();
    v1 = v0;
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v19, 0);
    (*(v13 + 8))(v18, v31[0]);
    v20 = v31[1];
  }

  v22 = VoiceBankingSession.indexOfCurrentSample.getter();
  v24 = v23;

  if ((v24 & 1) == 0 && v22 >= 1)
  {
    v25 = sub_26EF3B30C();
    (*(*(v25 - 8) + 56))(v11, 1, 1, v25);
    sub_26EF279C4(v1, v6);
    sub_26EF3B2DC();
    v26 = sub_26EF3B2CC();
    v27 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v28 = (v4 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
    v29 = swift_allocObject();
    v30 = MEMORY[0x277D85700];
    *(v29 + 16) = v26;
    *(v29 + 24) = v30;
    sub_26EF27A2C(v6, v29 + v27);
    *(v29 + v28) = v22;
    sub_26EE2C388(0, 0, v11, &unk_26EF44890, v29);
  }
}

uint64_t sub_26EF2A418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_26EF3B2DC();
  v4[3] = sub_26EF3B2CC();
  v6 = sub_26EF3B29C();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_26EF2A4B0, v6, v5);
}

uint64_t sub_26EF2A4B0()
{
  v1 = v0[2];
  v2 = *(v1 + 32);
  v0[6] = v2;
  if (v2)
  {
    v2;
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_26EE7CD18;

    return sub_26EF1AC40();
  }

  else
  {
    v5 = *(v1 + 40);
    type metadata accessor for VoiceBankingAudioServiceViewModel();
    sub_26EF31BEC(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel);

    return sub_26EF39BFC();
  }
}

uint64_t sub_26EF2A5D4()
{
  v1 = v0;
  v2 = sub_26EF39DDC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v31[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_26EF38C2C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v14 = &v31[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v31[-v16];
  v18 = *(v0 + 32);
  if (v18)
  {
    v19 = v18;
    sub_26EF0F97C();

    (*(v9 + 104))(v14, *MEMORY[0x277D70598], v8);
    LOBYTE(v19) = sub_26EF38C1C();
    v20 = *(v9 + 8);
    v20(v14, v8);
    v20(v17, v8);
    if ((v19 & 1) == 0)
    {
      goto LABEL_7;
    }

    v21 = *v1;
    v22 = *(v1 + 8);
    if (v22 == 1)
    {
      v23 = v21;
    }

    else
    {
      v24 = *v1;

      sub_26EF3B46C();
      v25 = sub_26EF3A36C();
      sub_26EF3880C();

      sub_26EF39DCC();
      swift_getAtKeyPath();
      sub_26EE05C9C(v21, 0);
      (*(v3 + 8))(v7, v2);
      v23 = v34;
    }

    VoiceBankingSession.sampleState.getter(&v34);

    v33 = v34;
    v32 = 2;
    sub_26EEF21B0();
    if ((sub_26EF3B0AC() & 1) == 0)
    {
      if (v22)
      {
        v27 = v21;
      }

      else
      {

        sub_26EF3B46C();
        v28 = sub_26EF3A36C();
        sub_26EF3880C();

        sub_26EF39DCC();
        swift_getAtKeyPath();
        sub_26EE05C9C(v21, 0);
        (*(v3 + 8))(v7, v2);
        v27 = v34;
      }

      VoiceBankingSession.sampleState.getter(&v34);

      v33 = v34;
      v32 = 1;
      v26 = sub_26EF3B0AC() ^ 1;
    }

    else
    {
LABEL_7:
      v26 = 0;
    }

    return v26 & 1;
  }

  else
  {
    v30 = *(v0 + 40);
    type metadata accessor for VoiceBankingAudioServiceViewModel();
    sub_26EF31BEC(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel);
    result = sub_26EF39BFC();
    __break(1u);
  }

  return result;
}

void sub_26EF2A9D8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9CA0, &qword_26EF3F100);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v33 - v5;
  v7 = sub_26EF38E9C();
  v34 = *(v7 - 8);
  v8 = *(v34 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v33 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26EF39DDC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v0;
  v18 = *(v0 + 8);
  if (v18 == 1)
  {
    v19 = v17;
  }

  else
  {
    v20 = *v0;

    sub_26EF3B46C();
    v21 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v17, 0);
    (*(v12 + 8))(v16, v11);
    v19 = *v35;
  }

  VoiceBankingSession.sampleState.getter(v35);

  v36 = 4;
  if (static SampleState.== infix(_:_:)(v35, &v36) || (sub_26EF26F04() & 1) != 0)
  {
    v22 = *(v1 + 32);
    if (v22)
    {
      v23 = v22;
      v24 = sub_26EF10038();

      if (v24)
      {
        v25 = v23;
        sub_26EF0FC18();
      }

      else
      {
        if (v18)
        {
          v26 = v17;
        }

        else
        {

          sub_26EF3B46C();
          v27 = sub_26EF3A36C();
          sub_26EF3880C();

          sub_26EF39DCC();
          swift_getAtKeyPath();
          sub_26EE05C9C(v17, 0);
          (*(v12 + 8))(v16, v11);
          v26 = *v35;
        }

        v28 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_sample;
        swift_beginAccess();
        sub_26EE13B88(v26 + v28, v6, &unk_2806C9CA0, &qword_26EF3F100);

        v29 = v34;
        if ((*(v34 + 48))(v6, 1, v7) == 1)
        {
          sub_26EE14578(v6, &unk_2806C9CA0, &qword_26EF3F100);
        }

        else
        {
          v30 = v33;
          (*(v29 + 32))(v33, v6, v7);
          v31 = v23;
          sub_26EF17FAC(v30);

          (*(v29 + 8))(v30, v7);
        }
      }
    }

    else
    {
      v32 = *(v1 + 40);
      type metadata accessor for VoiceBankingAudioServiceViewModel();
      sub_26EF31BEC(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel);
      sub_26EF39BFC();
      __break(1u);
    }
  }
}

uint64_t sub_26EF2AE38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26EF39E4C();
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    sub_26EF10038();

    v8 = sub_26EF3AA8C();
    v9 = v7;
    v10 = sub_26EF10038();

    if (v10)
    {
      v11 = 0x504F54535F4256;
    }

    else
    {
      v11 = 0x455453494C5F4256;
    }

    if (v10)
    {
      v12 = 0xE700000000000000;
    }

    else
    {
      v12 = 0xE90000000000004ELL;
    }

    v13 = sub_26EE17094() & 1;
    v14._countAndFlagsBits = v11;
    v14._object = v12;
    TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v14, v13, 0);

    sub_26EE12538();
    v15 = sub_26EF3A5DC();
    v17 = v16;
    v19 = v18;
    v21 = v20 & 1;
    v24 = v20 & 1;

    sub_26EE13B20(v15, v17, v21);

    sub_26EE12ABC(v15, v17, v21);

    *a2 = v6;
    *(a2 + 8) = 0;
    *(a2 + 16) = 1;
    *(a2 + 24) = v8;
    *(a2 + 32) = v15;
    *(a2 + 40) = v17;
    *(a2 + 48) = v24;
    *(a2 + 56) = v19;
  }

  else
  {
    v23 = *(a1 + 40);
    type metadata accessor for VoiceBankingAudioServiceViewModel();
    sub_26EF31BEC(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel);
    result = sub_26EF39BFC();
    __break(1u);
  }

  return result;
}

uint64_t sub_26EF2B03C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v114 = a2;
  v3 = sub_26EF387FC();
  v4 = *(v3 - 8);
  v112 = v3;
  v113 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v111 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_26EF39B4C();
  v105 = *(v108 - 8);
  v8 = *(v105 + 64);
  MEMORY[0x28223BE20](v108, v9);
  v99 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6788, &unk_26EF3D080);
  v12 = *(v11 - 8);
  v100 = v11;
  v101 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v91 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6A80, &qword_26EF3D530);
  v18 = *(v17 - 8);
  v102 = v17;
  v103 = v18;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  v96 = &v91 - v21;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA108, &qword_26EF448A8);
  v110 = *(v107 - 8);
  v22 = *(v110 + 64);
  MEMORY[0x28223BE20](v107, v23);
  v97 = &v91 - v24;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA110, &qword_26EF448B0);
  v106 = *(v109 - 8);
  v25 = *(v106 + 64);
  v27 = MEMORY[0x28223BE20](v109, v26);
  v104 = &v91 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v29);
  v98 = &v91 - v30;
  v31 = type metadata accessor for PromptView();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31 - 8, v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA118, &qword_26EF448B8);
  v36 = v35 - 8;
  v37 = *(*(v35 - 8) + 64);
  v39 = MEMORY[0x28223BE20](v35, v38);
  v115 = &v91 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39, v41);
  v43 = &v91 - v42;
  *v43 = sub_26EF39F5C();
  *(v43 + 1) = 0x402E000000000000;
  v43[16] = 0;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA050, &unk_26EF446F8);
  sub_26EF28174(a1, &v43[*(v44 + 44)]);
  *&v43[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA0F8, &qword_26EF44898) + 36)] = xmmword_26EF445E0;
  v45 = sub_26EF3A3DC();
  sub_26EF3962C();
  v46 = &v43[*(v36 + 44)];
  *v46 = v45;
  *(v46 + 1) = v47;
  *(v46 + 2) = v48;
  *(v46 + 3) = v49;
  *(v46 + 4) = v50;
  v46[40] = 0;
  v51 = sub_26EE17094();
  v52._object = 0xEB0000000045554ELL;
  v53 = v51 & 1;
  v52._countAndFlagsBits = 0x49544E4F435F4256;
  countAndFlagsBits = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v52, v53, 0)._countAndFlagsBits;
  sub_26EF279C4(a1, &v91 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v55 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v56 = swift_allocObject();
  sub_26EF27A2C(&v91 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0), v56 + v55);
  CGSizeMake(countAndFlagsBits, v57, v58);
  v95 = v59;
  v93 = v60;
  v94 = v61;
  v92 = v62;
  v63 = sub_26EE17094();
  v64._object = 0x800000026EF47440;
  v65 = v63 & 1;
  v64._countAndFlagsBits = 0xD000000000000013;
  v116 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v64, v65, 0);
  sub_26EF279C4(a1, &v91 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v66 = swift_allocObject();
  sub_26EF27A2C(&v91 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0), v66 + v55);
  sub_26EE12538();
  sub_26EF3AB7C();
  v67 = v99;
  sub_26EF39B3C();
  v68 = sub_26EE154C8(&qword_2806C6790, &qword_2806C6788, &unk_26EF3D080);
  v69 = v96;
  v70 = v100;
  sub_26EF3A77C();
  (*(v105 + 8))(v67, v108);
  (*(v101 + 8))(v16, v70);
  v116._countAndFlagsBits = v70;
  v116._object = v68;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v72 = v97;
  v73 = v102;
  sub_26EF3A88C();
  (*(v103 + 8))(v69, v73);
  v74 = v111;
  sub_26EF396BC();
  v116._countAndFlagsBits = v73;
  v116._object = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_26EF31BEC(&qword_2806C9820, MEMORY[0x277CE7708]);
  v75 = v98;
  v76 = v107;
  v77 = v112;
  sub_26EF3A66C();
  (*(v113 + 8))(v74, v77);
  (*(v110 + 8))(v72, v76);
  v78 = v115;
  sub_26EE13B88(v43, v115, &qword_2806CA118, &qword_26EF448B8);
  v79 = v106;
  v80 = *(v106 + 16);
  v81 = v104;
  v82 = v109;
  v80(v104, v75, v109);
  v83 = v78;
  v84 = v114;
  sub_26EE13B88(v83, v114, &qword_2806CA118, &qword_26EF448B8);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA120, &qword_26EF448C0);
  v86 = (v84 + *(v85 + 48));
  v87 = v93;
  *v86 = v95;
  v86[1] = v87;
  v88 = v92;
  v86[2] = v94;
  v86[3] = v88;
  v80((v84 + *(v85 + 64)), v81, v82);
  v89 = *(v79 + 8);

  v89(v75, v82);
  sub_26EE14578(v43, &qword_2806CA118, &qword_26EF448B8);
  v89(v81, v82);

  return sub_26EE14578(v115, &qword_2806CA118, &qword_26EF448B8);
}

uint64_t sub_26EF2B974@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PromptView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA0F8, &qword_26EF44898);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v31 - v16;
  *v17 = sub_26EF39F5C();
  *(v17 + 1) = 0x402E000000000000;
  v17[16] = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA050, &unk_26EF446F8);
  sub_26EF28174(a1, &v17[*(v18 + 44)]);
  *&v17[*(v9 + 44)] = xmmword_26EF445E0;
  sub_26EF279C4(a1, &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v20 = swift_allocObject();
  sub_26EF27A2C(&v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
  CGSizeMake(sub_26EF323B0, v21, v22);
  v24 = v23;
  v26 = v25;
  LOBYTE(v19) = sub_26EF2E430();
  KeyPath = swift_getKeyPath();
  v28 = swift_allocObject();
  *(v28 + 16) = v19 & 1;
  sub_26EE13B88(v17, v14, &qword_2806CA0F8, &qword_26EF44898);
  sub_26EE13B88(v14, a2, &qword_2806CA0F8, &qword_26EF44898);
  v29 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA100, &qword_26EF448A0) + 48));
  *v29 = v24;
  v29[1] = v26;
  v29[2] = KeyPath;
  v29[3] = sub_26EE673E4;
  v29[4] = v28;

  sub_26EE14578(v17, &qword_2806CA0F8, &qword_26EF44898);

  return sub_26EE14578(v14, &qword_2806CA0F8, &qword_26EF44898);
}

void sub_26EF2BC34()
{
  v0 = sub_26EF3A42C();
  if (v0 == sub_26EF3A42C())
  {
    sub_26EF29C3C();
  }

  v1 = sub_26EF3A42C();
  if (v1 == sub_26EF3A42C())
  {
    sub_26EF2A0DC();
  }
}

uint64_t sub_26EF2BC9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA150, &qword_26EF448F0);
  v7 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v6 - 8, v8);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v53 = (&v49 - v13);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C83C0, &qword_26EF40210);
  v14 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52, v15);
  v17 = &v49 - v16;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA158, &qword_26EF448F8);
  v55 = *(v57 - 8);
  v18 = *(v55 + 64);
  v20 = MEMORY[0x28223BE20](v57, v19);
  v54 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v22);
  v24 = &v49 - v23;
  v25 = sub_26EF39F5C();
  v60 = 0;
  v56 = a2;
  sub_26EF2C79C(a1, a2, v64);
  memcpy(v62, v64, sizeof(v62));
  memcpy(v63, v64, sizeof(v63));
  sub_26EE13B88(v62, v58, &qword_2806CA160, &qword_26EF44900);
  sub_26EE14578(v63, &qword_2806CA160, &qword_26EF44900);
  memcpy(&v59[7], v62, 0x128uLL);
  v26 = v60;
  LOBYTE(a1) = sub_26EF3A3CC();
  sub_26EF3962C();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v61 = 0;
  v58[0] = v25;
  v58[1] = 0x4024000000000000;
  LOBYTE(v58[2]) = v26;
  memcpy(&v58[2] + 1, v59, 0x12FuLL);
  LOBYTE(v58[40]) = a1;
  v58[41] = v28;
  v58[42] = v30;
  v58[43] = v32;
  v58[44] = v34;
  LOBYTE(v58[45]) = 0;
  v35 = *MEMORY[0x277CDF9A8];
  v36 = sub_26EF39A3C();
  (*(*(v36 - 8) + 104))(v17, v35, v36);
  sub_26EF31BEC(&qword_2806C83D0, MEMORY[0x277CDFA28]);
  result = sub_26EF3B0AC();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA168, &qword_26EF44908);
    sub_26EF31CE8();
    v50 = v11;
    v51 = a3;
    sub_26EE154C8(&qword_2806C83D8, &qword_2806C83C0, &qword_26EF40210);
    v49 = v24;
    sub_26EF3A73C();
    sub_26EE14578(v17, &qword_2806C83C0, &qword_26EF40210);
    memcpy(v64, v58, 0x169uLL);
    sub_26EE14578(v64, &qword_2806CA168, &qword_26EF44908);
    v38 = sub_26EF39E4C();
    v39 = v53;
    *v53 = v38;
    *(v39 + 8) = 0;
    *(v39 + 16) = 1;
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA188, &qword_26EF44918);
    sub_26EF2D730(v56, v39 + *(v40 + 44));
    v42 = v54;
    v41 = v55;
    v43 = *(v55 + 16);
    v44 = v57;
    v43(v54, v24, v57);
    v45 = v50;
    sub_26EE13B88(v39, v50, &qword_2806CA150, &qword_26EF448F0);
    v46 = v51;
    v43(v51, v42, v44);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA190, &qword_26EF44920);
    sub_26EE13B88(v45, &v46[*(v47 + 48)], &qword_2806CA150, &qword_26EF448F0);
    sub_26EE14578(v39, &qword_2806CA150, &qword_26EF448F0);
    v48 = *(v41 + 8);
    v48(v49, v44);
    sub_26EE14578(v45, &qword_2806CA150, &qword_26EF448F0);
    return (v48)(v42, v44);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_26EF2C1CC()
{
  v0 = *(type metadata accessor for PromptView() - 8);
  v1 = (*(v0 + 80) + 16) & ~*(v0 + 80);
  v2 = sub_26EF3A42C();
  if (v2 == sub_26EF3A42C())
  {
    sub_26EF29C3C();
  }

  v3 = sub_26EF3A42C();
  if (v3 == sub_26EF3A42C())
  {
    sub_26EF2A0DC();
  }
}

unint64_t sub_26EF2C278()
{
  result = qword_2806CA030;
  if (!qword_2806CA030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806CA008, &qword_26EF44690);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806CA000, &qword_26EF44688);
    sub_26EE154C8(&qword_2806CA020, &qword_2806CA000, &qword_26EF44688);
    swift_getOpaqueTypeConformance2();
    sub_26EE154C8(&qword_2806CA038, &qword_2806CA028, &qword_26EF446E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806CA030);
  }

  return result;
}

uint64_t sub_26EF2C3B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA058, &qword_26EF44708);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_26EF2C6E4()
{
  result = qword_2806CA078;
  if (!qword_2806CA078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806CA070, &qword_26EF44718);
    sub_26EE154C8(&qword_2806CA080, &qword_2806CA058, &qword_26EF44708);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806CA078);
  }

  return result;
}

uint64_t sub_26EF2C79C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v84 = a2;
  v85 = a3;
  v4 = type metadata accessor for PromptView();
  v90 = *(v4 - 8);
  v89 = *(v90 + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8, v5);
  KeyPath = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v83 = &v74 - v9;
  v79 = sub_26EF3925C();
  v10 = *(v79 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v79, v12);
  v14 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9FF0, &qword_26EF44678);
  v16 = *(v15 - 8);
  v17 = v16[8];
  v19 = MEMORY[0x28223BE20](v15, v18);
  v78 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v74 - v22;
  v86 = v16[2];
  v88 = v16 + 2;
  v86(&v74 - v22, a1, v15);
  sub_26EF3AD9C();
  v24 = v16[1];
  v87 = v16 + 1;
  v24(v23, v15);
  v25 = *&v135[0];
  v26 = v79;
  (*(v10 + 16))(v14, *&v135[0] + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceCreationExperience, v79);

  v82 = sub_26EF3923C();
  (*(v10 + 8))(v14, v26);
  v75 = v23;
  v81 = a1;
  v27 = v86;
  v86(v23, a1, v15);
  v28 = v78;
  sub_26EF3ADAC();
  v24(v23, v15);
  swift_getKeyPath();
  sub_26EF3ADCC();

  v29 = v28;
  v30 = v24;
  v80 = v24;
  v24(v29, v15);
  v78 = v138;
  v79 = v137;
  v77 = v139;
  v76 = v140;
  v31 = v75;
  v27(v75, a1, v15);
  sub_26EF3AD9C();
  v32 = v31;
  v30(v31, v15);
  v33 = *&v135[0];
  v34 = sub_26EED785C();
  LOBYTE(v23) = v35;

  if (v23)
  {
    v36 = 0;
  }

  else
  {
    v36 = v34;
  }

  v37 = v83;
  v38 = v84;
  sub_26EF279C4(v84, v83);
  v39 = (*(v90 + 80) + 16) & ~*(v90 + 80);
  v40 = swift_allocObject();
  sub_26EF27A2C(v37, v40 + v39);
  v41 = v38;
  v42 = KeyPath;
  sub_26EF279C4(v41, KeyPath);
  v43 = swift_allocObject();
  sub_26EF27A2C(v42, v43 + v39);
  sub_26EE24A0C(v82, v79, v78, v77, v76, v36, sub_26EF31E88, v40, &v93, sub_26EF31EA0, v43);
  *&v135[0] = sub_26EF2CFE4();
  *(&v135[0] + 1) = v44;
  sub_26EE12538();
  v45 = sub_26EF3A5DC();
  v47 = v46;
  v49 = v48;
  v89 = v50;
  v83 = sub_26EF3A4DC();
  KeyPath = swift_getKeyPath();
  LOBYTE(v135[0]) = v49 & 1;
  LOBYTE(v39) = v49 & 1;
  LODWORD(v82) = v49 & 1;
  LODWORD(v90) = sub_26EF3A1DC();
  v86(v32, v81, v15);
  sub_26EF3AD9C();
  v80(v32, v15);
  v51 = *&v135[0];
  v52 = VoiceBankingSession.indexOfCurrentSample.getter();
  v81 = v52;
  LOBYTE(v43) = v53;

  LODWORD(v88) = v43 & 1;
  v54 = sub_26EEB10D4();
  v87 = v55;
  LODWORD(v86) = sub_26EF3A3CC();
  sub_26EF3962C();
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v63 = v62;
  LOBYTE(v135[0]) = 0;
  v64 = sub_26EF2D2EC();
  v84 = swift_getKeyPath();
  v65 = swift_allocObject();
  v67 = v97;
  v66 = v98;
  v101[4] = v97;
  v101[5] = v98;
  v68 = v99;
  v101[6] = v99;
  v101[0] = v93;
  v101[1] = v94;
  v101[2] = v95;
  v101[3] = v96;
  v92[2] = v95;
  v92[3] = v96;
  v92[0] = v93;
  v92[1] = v94;
  *(v65 + 16) = v64 & 1;
  v102 = v100;
  *&v92[7] = v100;
  v92[5] = v66;
  v92[6] = v68;
  v92[4] = v67;
  *&v103 = v45;
  *(&v103 + 1) = v47;
  LOBYTE(v104) = v39;
  *(&v104 + 1) = v89;
  LOWORD(v105) = 1;
  *(&v105 + 1) = KeyPath;
  v69 = v83;
  *&v106 = v83;
  DWORD2(v106) = v90;
  *&v107 = 0;
  *(&v107 + 1) = v52;
  v108 = v88;
  BYTE8(v92[12]) = v88;
  *(&v92[7] + 8) = v103;
  *(&v92[9] + 8) = v105;
  *(&v92[10] + 8) = v106;
  *(&v92[11] + 8) = v107;
  *(&v92[8] + 8) = v104;
  v70 = v54;
  *&v109 = v54;
  v71 = v87;
  *(&v109 + 1) = v87;
  LOBYTE(v51) = v86;
  LOBYTE(v110) = v86;
  *(&v110 + 1) = v57;
  *&v111 = v59;
  *(&v111 + 1) = v61;
  *&v112 = v63;
  BYTE8(v112) = 0;
  v72 = v84;
  *&v113 = v84;
  *(&v113 + 1) = sub_26EE673E4;
  v114 = v65;
  v92[13] = v109;
  v92[14] = v110;
  *&v92[18] = v65;
  v92[16] = v112;
  v92[17] = v113;
  v92[15] = v111;
  memcpy(v85, v92, 0x128uLL);
  v115[0] = v70;
  v115[1] = v71;
  v116 = v51;
  v117 = v57;
  v118 = v59;
  v119 = v61;
  v120 = v63;
  v121 = 0;
  v122 = v72;
  v123 = sub_26EE673E4;
  v124 = v65;
  sub_26EE25C0C(v101, v135);
  sub_26EE13B88(&v103, v135, &qword_2806CA1B0, &qword_26EF44978);
  sub_26EE13B88(&v109, v135, &qword_2806CA1B8, &unk_26EF44980);
  sub_26EE14578(v115, &qword_2806CA1B8, &unk_26EF44980);
  v125[0] = v45;
  v125[1] = v47;
  v126 = v82;
  v127 = v89;
  v128 = 1;
  v129 = KeyPath;
  v130 = v69;
  v131 = v90;
  v132 = 0;
  v133 = v81;
  v134 = v88;
  sub_26EE14578(v125, &qword_2806CA1B0, &qword_26EF44978);
  v135[4] = v97;
  v135[5] = v98;
  v135[6] = v99;
  v136 = v100;
  v135[0] = v93;
  v135[1] = v94;
  v135[2] = v95;
  v135[3] = v96;
  return sub_26EF31F2C(v135);
}

uint64_t sub_26EF2CFE4()
{
  v1 = sub_26EF39DDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v0;
  v8 = *(v0 + 8);
  if (v8 == 1)
  {
    v9 = v7;
  }

  else
  {
    v10 = *v0;

    sub_26EF3B46C();
    v11 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v7, 0);
    (*(v2 + 8))(v6, v1);
    v9 = v29;
  }

  v12 = VoiceBankingSession.indexOfCurrentSample.getter();
  v14 = v13;

  if (v14)
  {
    return 0;
  }

  v16 = sub_26EE17094();
  v17._object = 0xEF5446454C5F5345;
  v18 = v16 & 1;
  v17._countAndFlagsBits = 0x53415248505F4256;
  TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v17, v18, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C67B0, &qword_26EF3D4B0);
  result = swift_allocObject();
  *(result + 16) = xmmword_26EF3D070;
  v19 = v12 + 1;
  if (__OFADD__(v12, 1))
  {
    __break(1u);
  }

  else
  {
    v20 = result;
    v21 = MEMORY[0x277D83B88];
    v22 = MEMORY[0x277D83C10];
    *(result + 56) = MEMORY[0x277D83B88];
    *(result + 64) = v22;
    *(result + 32) = v19;
    if (v8)
    {
      v23 = v7;
    }

    else
    {

      sub_26EF3B46C();
      v24 = v21;
      v25 = sub_26EF3A36C();
      sub_26EF3880C();

      v21 = v24;
      sub_26EF39DCC();
      swift_getAtKeyPath();
      sub_26EE05C9C(v7, 0);
      (*(v2 + 8))(v6, v1);
      v23 = v29;
    }

    v26 = VoiceBankingSession.minimumPhraseCount.getter();

    v20[12] = v21;
    v20[13] = MEMORY[0x277D83C10];
    v20[9] = v26;
    v27 = sub_26EF3B0CC();

    return v27;
  }

  return result;
}

uint64_t sub_26EF2D2EC()
{
  v1 = v0;
  v2 = sub_26EF38C2C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v2, v5);
  v8 = &v36[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v36[-v10];
  v12 = sub_26EF39DDC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v36[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = *v0;
  v37 = *(v0 + 8);
  if (v37 == 1)
  {
    v19 = v18;
  }

  else
  {

    sub_26EF3B46C();
    v20 = sub_26EF3A36C();
    v38 = v18;
    v21 = v2;
    v22 = v12;
    v23 = v20;
    sub_26EF3880C();

    v12 = v22;
    v2 = v21;
    v1 = v0;
    v18 = v38;
    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v18, 0);
    (*(v13 + 8))(v17, v12);
    v19 = v41;
  }

  VoiceBankingSession.sampleState.getter(&v41);

  v40 = v41;
  v39 = 0;
  sub_26EEF21B0();
  if ((sub_26EF3B0AC() & 1) == 0)
  {
    if (v37)
    {
      v24 = v18;
    }

    else
    {

      sub_26EF3B46C();
      v25 = sub_26EF3A36C();
      v38 = v18;
      v26 = v13;
      v27 = v12;
      v28 = v25;
      sub_26EF3880C();

      sub_26EF39DCC();
      v29 = v38;
      swift_getAtKeyPath();
      sub_26EE05C9C(v29, 0);
      (*(v26 + 8))(v17, v27);
      v24 = v41;
    }

    VoiceBankingSession.sampleState.getter(&v41);

    v40 = 4;
    if (!static SampleState.== infix(_:_:)(&v41, &v40) && (sub_26EF26F04() & 1) == 0)
    {
      v32 = 1;
      return v32 & 1;
    }
  }

  v30 = *(v1 + 32);
  if (v30)
  {
    v31 = v30;
    sub_26EF0F97C();

    (*(v3 + 104))(v8, *MEMORY[0x277D705A0], v2);
    v32 = sub_26EF38C1C();
    v33 = *(v3 + 8);
    v33(v8, v2);
    v33(v11, v2);
    return v32 & 1;
  }

  v35 = *(v1 + 40);
  type metadata accessor for VoiceBankingAudioServiceViewModel();
  sub_26EF31BEC(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel);
  result = sub_26EF39BFC();
  __break(1u);
  return result;
}

uint64_t sub_26EF2D730@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a1;
  v96 = a2;
  v86 = sub_26EF39DDC();
  v85 = *(v86 - 8);
  v3 = *(v85 + 64);
  MEMORY[0x28223BE20](v86, v4);
  v84 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA198, &qword_26EF44928);
  v7 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v6 - 8, v8);
  v95 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v94 = &v79 - v12;
  v105 = sub_26EF398FC();
  v102 = *(v105 - 8);
  v13 = *(v102 + 64);
  MEMORY[0x28223BE20](v105, v14);
  v99 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PromptView();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16 - 8, v19);
  v98 = v18;
  v20 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6788, &unk_26EF3D080);
  v103 = *(v21 - 8);
  v104 = v21;
  v22 = *(v103 + 64);
  MEMORY[0x28223BE20](v21, v23);
  v25 = &v79 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA1A0, &qword_26EF44930);
  v90 = *(v26 - 8);
  v91 = v26;
  v27 = *(v90 + 64);
  v29 = MEMORY[0x28223BE20](v26, v28);
  v93 = &v79 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v29, v31);
  v101 = &v79 - v33;
  v35 = MEMORY[0x28223BE20](v32, v34);
  v100 = &v79 - v36;
  MEMORY[0x28223BE20](v35, v37);
  v39 = &v79 - v38;
  sub_26EF39EAC();
  sub_26EF279C4(a1, v20);
  v40 = *(v17 + 80);
  v41 = (v40 + 16) & ~v40;
  v42 = swift_allocObject();
  sub_26EF27A2C(v20, v42 + v41);
  v87 = v25;
  sub_26EF3AB6C();
  v43 = v99;
  sub_26EF398EC();
  sub_26EF3994C();
  v97 = sub_26EE154C8(&qword_2806C6790, &qword_2806C6788, &unk_26EF3D080);
  v92 = v39;
  v44 = v102;
  v45 = v104;
  sub_26EF3A76C();
  v46 = *(v44 + 8);
  v80 = v46;
  v46(v43, v105);
  v47 = v103 + 8;
  v88 = *(v103 + 8);
  v88(v25, v45);
  v48 = sub_26EF39EAC();
  v102 = v49;
  v103 = v48;
  v50 = v89;
  sub_26EF279C4(v89, v20);
  v81 = v40;
  v51 = swift_allocObject();
  v82 = v41;
  v83 = v20;
  sub_26EF27A2C(v20, v51 + v41);
  v52 = v87;
  v53 = v50;
  sub_26EF3AB6C();
  sub_26EF398BC();
  sub_26EF3994C();
  v54 = v104;
  sub_26EF3A76C();
  v55 = v43;
  v56 = v52;
  v102 = v44 + 8;
  v46(v55, v105);
  v57 = v88;
  v103 = v47;
  v88(v52, v54);
  v58 = *v53;
  if (*(v53 + 8) == 1)
  {
    v59 = v58;
  }

  else
  {
    v60 = *v53;

    sub_26EF3B46C();
    v61 = sub_26EF3A36C();
    sub_26EF3880C();

    v62 = v84;
    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v58, 0);
    (*(v85 + 8))(v62, v86);
    v59 = v108;
  }

  VoiceBankingSession.sampleState.getter(&v107);

  v106 = 4;
  v63 = static SampleState.== infix(_:_:)(&v107, &v106);
  v64 = v101;
  if (v63 || (sub_26EF26F04()) && (sub_26EF2A5D4())
  {
    sub_26EF39EAC();
    v65 = v83;
    sub_26EF279C4(v53, v83);
    v66 = v82;
    v67 = swift_allocObject();
    sub_26EF27A2C(v65, v67 + v66);
    sub_26EF3AB6C();
    v68 = v99;
    sub_26EF398CC();
    sub_26EF3994C();
    v69 = v104;
    sub_26EF3A76C();
    v80(v68, v105);
    v57(v56, v69);
    v70 = v94;
    sub_26EE14D98(v64, v94, &qword_2806CA1A0, &qword_26EF44930);
    v71 = 0;
  }

  else
  {
    v71 = 1;
    v70 = v94;
  }

  (*(v90 + 56))(v70, v71, 1, v91);
  v72 = v92;
  sub_26EE13B88(v92, v64, &qword_2806CA1A0, &qword_26EF44930);
  v73 = v100;
  v74 = v93;
  sub_26EE13B88(v100, v93, &qword_2806CA1A0, &qword_26EF44930);
  v75 = v95;
  sub_26EE13B88(v70, v95, &qword_2806CA198, &qword_26EF44928);
  v76 = v96;
  sub_26EE13B88(v64, v96, &qword_2806CA1A0, &qword_26EF44930);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA1A8, &qword_26EF44938);
  sub_26EE13B88(v74, v76 + *(v77 + 48), &qword_2806CA1A0, &qword_26EF44930);
  sub_26EE13B88(v75, v76 + *(v77 + 64), &qword_2806CA198, &qword_26EF44928);
  sub_26EE14578(v70, &qword_2806CA198, &qword_26EF44928);
  sub_26EE14578(v73, &qword_2806CA1A0, &qword_26EF44930);
  sub_26EE14578(v72, &qword_2806CA1A0, &qword_26EF44930);
  sub_26EE14578(v75, &qword_2806CA198, &qword_26EF44928);
  sub_26EE14578(v74, &qword_2806CA1A0, &qword_26EF44930);
  return sub_26EE14578(v101, &qword_2806CA1A0, &qword_26EF44930);
}

uint64_t sub_26EF2E0A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_26EF3B2DC();
  v4[3] = sub_26EF3B2CC();
  v6 = sub_26EF3B29C();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_26EF2E138, v6, v5);
}

uint64_t sub_26EF2E138()
{
  v1 = v0[2];
  v2 = *(v1 + 32);
  v0[6] = v2;
  if (v2)
  {
    v2;
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_26EEFC5A8;

    return sub_26EF1AC40();
  }

  else
  {
    v5 = *(v1 + 40);
    type metadata accessor for VoiceBankingAudioServiceViewModel();
    sub_26EF31BEC(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel);

    return sub_26EF39BFC();
  }
}

uint64_t sub_26EF2E25C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for PromptView();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v20 - v12;
  v14 = sub_26EF3B30C();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  sub_26EF279C4(a1, &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_26EF3B2DC();
  v15 = sub_26EF3B2CC();
  v16 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  *(v17 + 16) = v15;
  *(v17 + 24) = v18;
  sub_26EF27A2C(&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  sub_26EE2C388(0, 0, v13, a3, v17);
}

uint64_t sub_26EF2E430()
{
  v1 = v0;
  v2 = sub_26EF39DDC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + 32);
  if (v8)
  {
    v9 = v8;
    v10 = sub_26EF100DC();

    if (v10)
    {
      return 1;
    }

    else
    {
      v12 = *v1;
      if (*(v1 + 8) == 1)
      {
        v13 = v12;
      }

      else
      {
        v14 = *v1;

        sub_26EF3B46C();
        v15 = sub_26EF3A36C();
        sub_26EF3880C();

        sub_26EF39DCC();
        swift_getAtKeyPath();
        sub_26EE05C9C(v12, 0);
        (*(v3 + 8))(v7, v2);
        v13 = v19;
      }

      VoiceBankingSession.sampleState.getter(&v18 + 7);

      BYTE6(v18) = 1;
      return static SampleState.== infix(_:_:)(&v18 + 7, &v18 + 6);
    }
  }

  else
  {
    v17 = *(v0 + 40);
    type metadata accessor for VoiceBankingAudioServiceViewModel();
    sub_26EF31BEC(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel);
    result = sub_26EF39BFC();
    __break(1u);
  }

  return result;
}

uint64_t sub_26EF2E62C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9CA0, &qword_26EF3F100) - 8) + 64) + 15;
  v5[6] = swift_task_alloc();
  v7 = sub_26EF39DDC();
  v5[7] = v7;
  v8 = *(v7 - 8);
  v5[8] = v8;
  v9 = *(v8 + 64) + 15;
  v5[9] = swift_task_alloc();
  v10 = sub_26EF3883C();
  v5[10] = v10;
  v11 = *(v10 - 8);
  v5[11] = v11;
  v12 = *(v11 + 64) + 15;
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9B70, &qword_26EF43F10) - 8) + 64) + 15;
  v5[14] = swift_task_alloc();
  sub_26EF3B2DC();
  v5[15] = sub_26EF3B2CC();
  v15 = sub_26EF3B29C();
  v5[16] = v15;
  v5[17] = v14;

  return MEMORY[0x2822009F8](sub_26EF2E7F8, v15, v14);
}

uint64_t sub_26EF2E7F8()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + 32);
  *(v0 + 144) = v2;
  if (v2)
  {
    v3 = *(v0 + 112);
    v4 = v2;
    sub_26EF0F034();

    v5 = sub_26EF38FEC();
    v6 = (*(*(v5 - 8) + 48))(v3, 1, v5);
    sub_26EE14578(v3, &qword_2806C9B70, &qword_26EF43F10);
    if (v6 == 1)
    {
      *(v0 + 144);
      v7 = swift_task_alloc();
      *(v0 + 200) = v7;
      *v7 = v0;
      v7[1] = sub_26EF2ECBC;

      return sub_26EF12AE4();
    }

    else
    {
      v10 = *(v0 + 104);
      v11 = *(v0 + 80);
      v12 = *(v0 + 88);
      v13 = sub_26EE27DAC();
      *(v0 + 152) = v13;
      v14 = *(v12 + 16);
      *(v0 + 160) = v14;
      *(v0 + 168) = (v12 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v14(v10, v13, v11);
      v15 = sub_26EF3881C();
      v16 = sub_26EF3B47C();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_26EE01000, v15, v16, "PromptView: Attempting to save unsaved recording result.", v17, 2u);
        MEMORY[0x2743842A0](v17, -1, -1);
      }

      v18 = *(v0 + 104);
      v19 = *(v0 + 80);
      v20 = *(v0 + 88);

      v21 = *(v20 + 8);
      *(v0 + 176) = v21;
      v21(v18, v19);
      v4;
      v22 = swift_task_alloc();
      *(v0 + 184) = v22;
      *v22 = v0;
      v22[1] = sub_26EF2EAFC;

      return sub_26EF16730();
    }
  }

  else
  {
    v9 = *(v1 + 40);
    type metadata accessor for VoiceBankingAudioServiceViewModel();
    sub_26EF31BEC(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel);

    return sub_26EF39BFC();
  }
}

uint64_t sub_26EF2EAFC()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v8 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v4 = *(v2 + 128);
    v5 = *(v2 + 136);
    v6 = sub_26EF2F01C;
  }

  else
  {

    v4 = *(v2 + 128);
    v5 = *(v2 + 136);
    v6 = sub_26EF2EC18;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_26EF2EC18()
{
  *(v0 + 144);
  v1 = swift_task_alloc();
  *(v0 + 200) = v1;
  *v1 = v0;
  v1[1] = sub_26EF2ECBC;

  return sub_26EF12AE4();
}

uint64_t sub_26EF2ECBC()
{
  v1 = *v0;
  v2 = *(*v0 + 200);
  v3 = *(*v0 + 144);
  v7 = *v0;

  v4 = *(v1 + 136);
  v5 = *(v1 + 128);

  return MEMORY[0x2822009F8](sub_26EF2EDFC, v5, v4);
}

unint64_t sub_26EF2EDFC()
{
  v1 = v0[15];
  v2 = v0[4];

  v3 = *v2;
  if (*(v2 + 8) == 1)
  {
    v4 = v3;
    v5 = v4;
  }

  else
  {
    v7 = v0[8];
    v6 = v0[9];
    v8 = v0[7];

    sub_26EF3B46C();
    v9 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v3, 0);
    v10 = *(v7 + 8);
    v10(v6, v8);
    v5 = v0[2];

    sub_26EF3B46C();
    v11 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v3, 0);
    v10(v6, v8);
    v4 = v0[3];
  }

  v12 = v0[5];
  result = v12 - 1;
  if (__OFSUB__(v12, 1))
  {
    __break(1u);
  }

  else
  {
    v15 = v0[13];
    v14 = v0[14];
    v16 = v0[12];
    v17 = v0[9];
    v18 = v0[6];
    sub_26EED768C(result, v18);

    sub_26EED6AEC(v18);

    v19 = v0[1];

    return v19();
  }

  return result;
}

uint64_t sub_26EF2F01C()
{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 152);
  v4 = *(v0 + 96);
  v5 = *(v0 + 80);

  v2(v4, v3, v5);
  v6 = sub_26EF3881C();
  v7 = sub_26EF3B45C();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 192);
  v10 = *(v0 + 176);
  v12 = *(v0 + 88);
  v11 = *(v0 + 96);
  v13 = *(v0 + 80);
  if (v8)
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_26EE01000, v6, v7, "PromptView: Failed to save recording.", v14, 2u);
    MEMORY[0x2743842A0](v14, -1, -1);
  }

  v10(v11, v13);
  *(v0 + 144);
  v15 = swift_task_alloc();
  *(v0 + 200) = v15;
  *v15 = v0;
  v15[1] = sub_26EF2ECBC;

  return sub_26EF12AE4();
}

uint64_t sub_26EF2F19C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v6 = sub_26EF38BEC();
  v5[11] = v6;
  v7 = *(v6 - 8);
  v5[12] = v7;
  v8 = *(v7 + 64) + 15;
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9CA0, &qword_26EF3F100) - 8) + 64) + 15;
  v5[15] = swift_task_alloc();
  v10 = sub_26EF39DDC();
  v5[16] = v10;
  v11 = *(v10 - 8);
  v5[17] = v11;
  v12 = *(v11 + 64) + 15;
  v5[18] = swift_task_alloc();
  v13 = sub_26EF3883C();
  v5[19] = v13;
  v14 = *(v13 - 8);
  v5[20] = v14;
  v15 = *(v14 + 64) + 15;
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9B70, &qword_26EF43F10) - 8) + 64) + 15;
  v5[23] = swift_task_alloc();
  sub_26EF3B2DC();
  v5[24] = sub_26EF3B2CC();
  v18 = sub_26EF3B29C();
  v5[25] = v18;
  v5[26] = v17;

  return MEMORY[0x2822009F8](sub_26EF2F3D0, v18, v17);
}

uint64_t sub_26EF2F3D0()
{
  v1 = *(v0 + 72);
  v2 = *(v1 + 32);
  *(v0 + 216) = v2;
  if (v2)
  {
    v3 = *(v0 + 184);
    v4 = v2;
    sub_26EF0F034();

    v5 = sub_26EF38FEC();
    v6 = (*(*(v5 - 8) + 48))(v3, 1, v5);
    sub_26EE14578(v3, &qword_2806C9B70, &qword_26EF43F10);
    if (v6 == 1)
    {
      *(v0 + 216);
      v7 = swift_task_alloc();
      *(v0 + 272) = v7;
      *v7 = v0;
      v7[1] = sub_26EF2F894;

      return sub_26EF12AE4();
    }

    else
    {
      v10 = *(v0 + 176);
      v11 = *(v0 + 152);
      v12 = *(v0 + 160);
      v13 = sub_26EE27DAC();
      *(v0 + 224) = v13;
      v14 = *(v12 + 16);
      *(v0 + 232) = v14;
      *(v0 + 240) = (v12 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v14(v10, v13, v11);
      v15 = sub_26EF3881C();
      v16 = sub_26EF3B47C();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_26EE01000, v15, v16, "PromptView: Attempting to save unsaved recording result.", v17, 2u);
        MEMORY[0x2743842A0](v17, -1, -1);
      }

      v18 = *(v0 + 176);
      v19 = *(v0 + 152);
      v20 = *(v0 + 160);

      v21 = *(v20 + 8);
      *(v0 + 248) = v21;
      v21(v18, v19);
      v4;
      v22 = swift_task_alloc();
      *(v0 + 256) = v22;
      *v22 = v0;
      v22[1] = sub_26EF2F6D4;

      return sub_26EF16730();
    }
  }

  else
  {
    v9 = *(v1 + 40);
    type metadata accessor for VoiceBankingAudioServiceViewModel();
    sub_26EF31BEC(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel);

    return sub_26EF39BFC();
  }
}

uint64_t sub_26EF2F6D4()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v8 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v4 = *(v2 + 200);
    v5 = *(v2 + 208);
    v6 = sub_26EF2FEDC;
  }

  else
  {

    v4 = *(v2 + 200);
    v5 = *(v2 + 208);
    v6 = sub_26EF2F7F0;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_26EF2F7F0()
{
  *(v0 + 216);
  v1 = swift_task_alloc();
  *(v0 + 272) = v1;
  *v1 = v0;
  v1[1] = sub_26EF2F894;

  return sub_26EF12AE4();
}

uint64_t sub_26EF2F894()
{
  v1 = *v0;
  v2 = *(*v0 + 272);
  v3 = *(*v0 + 216);
  v7 = *v0;

  v4 = *(v1 + 208);
  v5 = *(v1 + 200);

  return MEMORY[0x2822009F8](sub_26EF2F9D4, v5, v4);
}

unint64_t sub_26EF2F9D4()
{
  v1 = v0[24];
  v2 = v0[9];

  v3 = *v2;
  v4 = *(v2 + 8);
  if (v4 == 1)
  {
    v5 = v3;
    v6 = VoiceBankingSession.nextSampleHasRecording.getter();

    if (v6)
    {
      v7 = v5;
      v8 = v7;
LABEL_6:
      v20 = v0[10];
      result = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        return result;
      }

      v22 = v0[15];
      sub_26EED768C(result, v22);

      sub_26EED6AEC(v22);
      goto LABEL_15;
    }

    v23 = v5;
  }

  else
  {
    v10 = v0[17];
    v9 = v0[18];
    v11 = v0[16];

    sub_26EF3B46C();
    v12 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v3, 0);
    v13 = *(v10 + 8);
    v13(v9, v11);
    v14 = v0[2];
    v15 = VoiceBankingSession.nextSampleHasRecording.getter();

    v16 = v0[18];
    v17 = v0[16];
    if (v15)
    {

      sub_26EF3B46C();
      v18 = sub_26EF3A36C();
      sub_26EF3880C();

      sub_26EF39DCC();
      swift_getAtKeyPath();
      sub_26EE05C9C(v3, 0);
      v13(v16, v17);
      v8 = v0[7];

      sub_26EF3B46C();
      v19 = sub_26EF3A36C();
      sub_26EF3880C();

      sub_26EF39DCC();
      swift_getAtKeyPath();
      sub_26EE05C9C(v3, 0);
      v13(v16, v17);
      v7 = v0[8];
      goto LABEL_6;
    }

    sub_26EF3B46C();
    v24 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v3, 0);
    v13(v16, v17);
    v23 = v0[3];
  }

  v25 = v0[27];
  v27 = v0[13];
  v26 = v0[14];
  v28 = v0[11];
  v29 = v0[12];
  sub_26EED7058();

  v30 = v25;
  sub_26EF10340();

  (*(v29 + 104))(v27, *MEMORY[0x277D70578], v28);
  sub_26EF31BEC(&qword_2806C8B90, MEMORY[0x277D70580]);
  sub_26EF3B1DC();
  sub_26EF3B1DC();
  v31 = *(v29 + 8);
  v31(v27, v28);
  v31(v26, v28);
  if (v0[4] == v0[5])
  {
    if (v4)
    {
      v8 = v3;
    }

    else
    {
      v33 = v0[17];
      v32 = v0[18];
      v34 = v0[16];

      sub_26EF3B46C();
      v35 = sub_26EF3A36C();
      sub_26EF3880C();

      sub_26EF39DCC();
      swift_getAtKeyPath();
      sub_26EE05C9C(v3, 0);
      (*(v33 + 8))(v32, v34);
      v8 = v0[6];
    }

    VoiceBankingSession.isRecordingComplete.getter();
LABEL_15:
  }

  v37 = v0[22];
  v36 = v0[23];
  v38 = v0[21];
  v39 = v0[18];
  v41 = v0[14];
  v40 = v0[15];
  v42 = v0[13];

  v43 = v0[1];

  return v43();
}

uint64_t sub_26EF2FEDC()
{
  v2 = *(v0 + 232);
  v1 = *(v0 + 240);
  v3 = *(v0 + 224);
  v4 = *(v0 + 168);
  v5 = *(v0 + 152);

  v2(v4, v3, v5);
  v6 = sub_26EF3881C();
  v7 = sub_26EF3B45C();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 264);
  v10 = *(v0 + 248);
  v12 = *(v0 + 160);
  v11 = *(v0 + 168);
  v13 = *(v0 + 152);
  if (v8)
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_26EE01000, v6, v7, "PromptView: Failed to save recording.", v14, 2u);
    MEMORY[0x2743842A0](v14, -1, -1);
  }

  v10(v11, v13);
  *(v0 + 216);
  v15 = swift_task_alloc();
  *(v0 + 272) = v15;
  *v15 = v0;
  v15[1] = sub_26EF2F894;

  return sub_26EF12AE4();
}

uint64_t sub_26EF3005C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = sub_26EF3917C();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v7 = *(v6 + 64) + 15;
  v4[9] = swift_task_alloc();
  v8 = sub_26EF38E9C();
  v4[10] = v8;
  v9 = *(v8 - 8);
  v4[11] = v9;
  v10 = *(v9 + 64) + 15;
  v4[12] = swift_task_alloc();
  v11 = sub_26EF39DDC();
  v4[13] = v11;
  v12 = *(v11 - 8);
  v4[14] = v12;
  v13 = *(v12 + 64) + 15;
  v4[15] = swift_task_alloc();
  v14 = sub_26EF3883C();
  v4[16] = v14;
  v15 = *(v14 - 8);
  v4[17] = v15;
  v16 = *(v15 + 64) + 15;
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  sub_26EF3B2DC();
  v4[20] = sub_26EF3B2CC();
  v18 = sub_26EF3B29C();
  v4[21] = v18;
  v4[22] = v17;

  return MEMORY[0x2822009F8](sub_26EF30270, v18, v17);
}

uint64_t sub_26EF30270()
{
  v1 = v0[6];
  v2 = *(v1 + 32);
  v0[23] = v2;
  if (v2)
  {
    v3 = v2;
    v4 = sub_26EF0F498();

    if (v4)
    {
      v5 = v0[19];
      v6 = v0[16];
      v7 = v0[17];
      v8 = sub_26EE27DAC();
      (*(v7 + 16))(v5, v8, v6);
      v9 = sub_26EF3881C();
      v10 = sub_26EF3B43C();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_26EE01000, v9, v10, "PromptView: Recording state changed: user stopped recording.", v11, 2u);
        MEMORY[0x2743842A0](v11, -1, -1);
      }

      v12 = v0[19];
      v13 = v0[16];
      v14 = v0[17];

      (*(v14 + 8))(v12, v13);
      v3;
      v15 = swift_task_alloc();
      v0[24] = v15;
      *v15 = v0;
      v16 = sub_26EF304CC;
    }

    else
    {
      v3;
      v15 = swift_task_alloc();
      v0[25] = v15;
      *v15 = v0;
      v16 = sub_26EF30860;
    }

    v15[1] = v16;

    return sub_26EF12AE4();
  }

  else
  {
    v17 = *(v1 + 40);
    type metadata accessor for VoiceBankingAudioServiceViewModel();
    sub_26EF31BEC(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel);

    return sub_26EF39BFC();
  }
}

uint64_t sub_26EF304CC()
{
  v1 = *v0;
  v2 = *(*v0 + 192);
  v3 = *(*v0 + 184);
  v7 = *v0;

  v4 = *(v1 + 176);
  v5 = *(v1 + 168);

  return MEMORY[0x2822009F8](sub_26EF3060C, v5, v4);
}

uint64_t sub_26EF3060C()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 48);

  v3 = *(type metadata accessor for PromptView() + 32);
  *(v0 + 216) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9FE0, &unk_26EF44658);
  sub_26EF3A20C();
  v4 = *v2;
  if (*(v2 + 8) == 1)
  {
    v5 = v4;
  }

  else
  {
    v7 = *(v0 + 112);
    v6 = *(v0 + 120);
    v8 = *(v0 + 104);

    sub_26EF3B46C();
    v9 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v4, 0);
    (*(v7 + 8))(v6, v8);
    v5 = *(v0 + 40);
  }

  v10 = *(v0 + 80);
  v11 = *(v0 + 88);
  v12 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_sample;
  swift_beginAccess();
  if ((*(v11 + 48))(&v5[v12], 1, v10))
  {
  }

  else
  {
    v14 = *(v0 + 88);
    v13 = *(v0 + 96);
    v15 = *(v0 + 80);
    (*(v14 + 16))(v13, &v5[v12], v15);

    sub_26EF38E6C();
    (*(v14 + 8))(v13, v15);
    sub_26EE82F2C();
  }

  v17 = *(v0 + 144);
  v16 = *(v0 + 152);
  v18 = *(v0 + 120);
  v19 = *(v0 + 96);
  v20 = *(v0 + 72);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_26EF30860()
{
  v1 = *v0;
  v2 = *(*v0 + 200);
  v3 = *(*v0 + 184);
  v7 = *v0;

  v4 = *(v1 + 176);
  v5 = *(v1 + 168);

  return MEMORY[0x2822009F8](sub_26EF309A0, v5, v4);
}

uint64_t sub_26EF309A0()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 128);
  v4 = *(v0 + 184);
  sub_26EF17564();

  v5 = sub_26EE27DAC();
  (*(v2 + 16))(v1, v5, v3);
  v6 = sub_26EF3881C();
  v7 = sub_26EF3B43C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_26EE01000, v6, v7, "PromptView: Recording state changed: user is recording audio.", v8, 2u);
    MEMORY[0x2743842A0](v8, -1, -1);
  }

  v9 = *(v0 + 184);
  v11 = *(v0 + 136);
  v10 = *(v0 + 144);
  v12 = *(v0 + 128);
  v14 = *(v0 + 64);
  v13 = *(v0 + 72);
  v15 = *(v0 + 56);

  (*(v11 + 8))(v10, v12);
  v16 = v9;
  sub_26EF0F4AC();

  (*(v14 + 104))(v13, *MEMORY[0x277D70630], v15);
  v16;
  v17 = swift_task_alloc();
  *(v0 + 208) = v17;
  *v17 = v0;
  v17[1] = sub_26EF30B6C;
  v18 = *(v0 + 72);

  return sub_26EF13E7C(v18);
}

uint64_t sub_26EF30B6C()
{
  v1 = *v0;
  v2 = *(*v0 + 208);
  v3 = *(*v0 + 184);
  v4 = *(*v0 + 72);
  v5 = *(*v0 + 64);
  v6 = *(*v0 + 56);
  v10 = *v0;

  (*(v5 + 8))(v4, v6);
  v7 = *(v1 + 176);
  v8 = *(v1 + 168);

  return MEMORY[0x2822009F8](sub_26EF30D08, v8, v7);
}

uint64_t sub_26EF30D08()
{
  v1 = v0[20];

  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[15];
  v5 = v0[12];
  v6 = v0[9];

  v7 = v0[1];

  return v7();
}

uint64_t sub_26EF30DA4@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for VoiceBankingSession();
  sub_26EF31BEC(&qword_2806C65C0, type metadata accessor for VoiceBankingSession);
  *a1 = sub_26EF3973C();
  *(a1 + 8) = v2 & 1;
  type metadata accessor for VoiceBankingNavigationModel();
  sub_26EF31BEC(&qword_2806C6C20, type metadata accessor for VoiceBankingNavigationModel);
  *(a1 + 16) = sub_26EF39C1C();
  *(a1 + 24) = v3;
  type metadata accessor for VoiceBankingAudioServiceViewModel();
  sub_26EF31BEC(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel);
  *(a1 + 32) = sub_26EF39C1C();
  *(a1 + 40) = v4;
  sub_26EF3AAEC();
  *(a1 + 48) = v10;
  *(a1 + 56) = v11;
  v5 = type metadata accessor for PromptView();
  v6 = a1 + v5[8];
  sub_26EF3A22C();
  v7 = v5[9];
  sub_26EE8560C();
  sub_26EF397EC();
  v8 = a1 + v5[10];
  result = sub_26EF3AAEC();
  *v8 = 0;
  *(v8 + 8) = v11;
  return result;
}

uint64_t sub_26EF30F9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9FE0, &unk_26EF44658);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 32);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8338, &qword_26EF40020);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 36);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_26EF310F8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9FE0, &unk_26EF44658);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8338, &qword_26EF40020);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_26EF31234()
{
  sub_26EE1F6E4();
  if (v0 <= 0x3F)
  {
    sub_26EE1F73C();
    if (v1 <= 0x3F)
    {
      sub_26EE1F7D0();
      if (v2 <= 0x3F)
      {
        sub_26EE38E90();
        if (v3 <= 0x3F)
        {
          sub_26EF3131C();
          if (v4 <= 0x3F)
          {
            sub_26EE859C8();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_26EF3131C()
{
  if (!qword_2806CA088)
  {
    v0 = sub_26EF3A23C();
    if (!v1)
    {
      atomic_store(v0, &qword_2806CA088);
    }
  }
}

unint64_t sub_26EF31378()
{
  result = qword_2806CA090;
  if (!qword_2806CA090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806CA098, &unk_26EF447B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9F58, &qword_26EF44608);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6E40, &qword_26EF44670);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9F50, &qword_26EF44600);
    sub_26EF27E64();
    swift_getOpaqueTypeConformance2();
    sub_26EE25D44();
    swift_getOpaqueTypeConformance2();
    sub_26EF31BEC(&qword_2806C6AD8, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806CA090);
  }

  return result;
}

uint64_t sub_26EF314EC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_26EF31BEC(&qword_2806C6AD8, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26EF315A0()
{
  v2 = *(type metadata accessor for PromptView() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26EE15538;

  return sub_26EF3005C(v4, v5, v6, v0 + v3);
}

uint64_t sub_26EF31668()
{
  v2 = *(type metadata accessor for PromptView() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26EE15538;

  return sub_26EF2A418(v4, v5, v6, v0 + v3);
}

unint64_t sub_26EF31730()
{
  result = qword_2806CA0D8;
  if (!qword_2806CA0D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806CA0D0, &qword_26EF44828);
    sub_26EE154C8(&qword_2806CA0E0, &qword_2806CA0E8, &qword_26EF44830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806CA0D8);
  }

  return result;
}

uint64_t sub_26EF317EC()
{
  v2 = *(type metadata accessor for PromptView() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_26EE05D7C;

  return sub_26EF2F19C(v5, v6, v7, v0 + v3, v4);
}

uint64_t objectdestroy_72Tm()
{
  v1 = type metadata accessor for PromptView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  sub_26EE05C9C(*(v0 + v3), *(v0 + v3 + 8));
  v7 = *(v0 + v3 + 16);

  v8 = *(v0 + v3 + 56);

  v9 = v0 + v3 + v1[8];
  v10 = sub_26EF3A29C();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v9, 1, v10))
  {
    (*(v11 + 8))(v9, v10);
  }

  v12 = *(v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9FE0, &unk_26EF44658) + 40));

  v13 = v1[9];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8338, &qword_26EF40020);
  (*(*(v14 - 8) + 8))(v6 + v13, v14);
  v15 = *(v6 + v1[10] + 8);

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_26EF31ACC()
{
  v2 = *(type metadata accessor for PromptView() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_26EE15538;

  return sub_26EF2E62C(v5, v6, v7, v0 + v3, v4);
}

uint64_t sub_26EF31BEC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26EF31C38()
{
  result = qword_2806CA140;
  if (!qword_2806CA140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806CA140);
  }

  return result;
}

void sub_26EF31C8C()
{
  v1 = *(type metadata accessor for PromptView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  sub_26EF2A9D8();
}

unint64_t sub_26EF31CE8()
{
  result = qword_2806CA170;
  if (!qword_2806CA170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806CA168, &qword_26EF44908);
    sub_26EE154C8(&qword_2806CA178, &qword_2806CA180, &qword_26EF44910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806CA170);
  }

  return result;
}

uint64_t sub_26EF31DC0()
{
  v2 = *(type metadata accessor for PromptView() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26EE15538;

  return sub_26EF2E0A0(v4, v5, v6, v0 + v3);
}

uint64_t objectdestroy_48Tm_0()
{
  v1 = type metadata accessor for PromptView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  sub_26EE05C9C(*(v0 + v3), *(v0 + v3 + 8));
  v7 = *(v0 + v3 + 16);

  v8 = *(v0 + v3 + 56);

  v9 = v0 + v3 + v1[8];
  v10 = sub_26EF3A29C();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v9, 1, v10))
  {
    (*(v11 + 8))(v9, v10);
  }

  v12 = *(v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9FE0, &unk_26EF44658) + 40));

  v13 = v1[9];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8338, &qword_26EF40020);
  (*(*(v14 - 8) + 8))(v6 + v13, v14);
  v15 = *(v6 + v1[10] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_19()
{
  v1 = type metadata accessor for PromptView();
  v2 = *(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  sub_26EE05C9C(*(v0 + v4), *(v0 + v4 + 8));
  v6 = *(v0 + v4 + 16);

  v7 = *(v0 + v4 + 56);

  v8 = v0 + v4 + v1[8];
  v9 = sub_26EF3A29C();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v8, 1, v9))
  {
    (*(v10 + 8))(v8, v9);
  }

  v11 = *(v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9FE0, &unk_26EF44658) + 40));

  v12 = v1[9];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8338, &qword_26EF40020);
  (*(*(v13 - 8) + 8))(v5 + v12, v13);
  v14 = *(v5 + v1[10] + 8);

  return MEMORY[0x2821FE8E8](v0, v4 + v3, v2 | 7);
}

void sub_26EF32320()
{
  v0 = *(*(type metadata accessor for PromptView() - 8) + 80);

  sub_26EF2BC34();
}

uint64_t sub_26EF323FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26EF32444()
{
  v0 = sub_26EF3872C();
  v1 = *(v0 - 8);
  v2 = v1;
  v3 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v4);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _UISolariumEnabled();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8080, &unk_26EF3FC30);
  v8 = *(v1 + 72);
  v9 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v10 = swift_allocObject();
  if (v7)
  {
    *(v10 + 16) = xmmword_26EF3EE20;
    sub_26EF386EC();
    sub_26EF386CC();
    sub_26EF3871C();
  }

  else
  {
    *(v10 + 16) = xmmword_26EF3D070;
    sub_26EF386EC();
    sub_26EF386CC();
  }

  v12[1] = v10;
  sub_26EF323FC(&qword_2806C8088, MEMORY[0x277CE7670]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8090, &unk_26EF3FB80);
  sub_26EE154C8(&qword_2806C8098, &qword_2806C8090, &unk_26EF3FB80);
  sub_26EF3B68C();
  sub_26EF3AC8C();
  return (*(v2 + 8))(v6, v0);
}

uint64_t sub_26EF32680@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8018, &qword_26EF41830);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &countAndFlagsBits - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA1D0, &qword_26EF449A8);
  v8 = *(v7 - 8);
  v26 = v7;
  v27 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &countAndFlagsBits - v11;
  v13 = sub_26EE17094();
  v14._object = 0x800000026EF47480;
  v15 = v13 & 1;
  v14._countAndFlagsBits = 0xD000000000000015;
  countAndFlagsBits = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v14, v15, 0)._countAndFlagsBits;
  v16 = sub_26EE17094();
  v17._countAndFlagsBits = 0xD00000000000001BLL;
  v17._object = 0x800000026EF474A0;
  TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v17, v16 & 1, 0);
  v18 = type metadata accessor for PhraseStyleView();
  sub_26EE13B88(v1 + *(v18 + 32), v6, &qword_2806C8018, &qword_26EF41830);
  v31 = v1;
  v30 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA1D8, &unk_26EF449B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8030, &qword_26EF3FAD0);
  sub_26EE154C8(&qword_2806CA1E0, &qword_2806CA1D8, &unk_26EF449B0);
  sub_26EE79320();
  sub_26EF386BC();
  v29 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8BC8, &unk_26EF42490);
  sub_26EE154C8(&qword_2806CA1E8, &qword_2806CA1D0, &qword_26EF449A8);
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8BD8, &unk_26EF41860);
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8BE0, &qword_26EF424A0);
  v21 = sub_26EEB2104();
  v32 = v20;
  v33 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = v19;
  v33 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v23 = v26;
  sub_26EF3A8EC();
  return (*(v27 + 8))(v12, v23);
}

uint64_t type metadata accessor for PhraseStyleView()
{
  result = qword_2806CF7B0;
  if (!qword_2806CF7B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26EF32A88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v144 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA208, &qword_26EF44A48);
  v145 = *(v3 - 8);
  v146 = v3;
  v4 = *(v145 + 64);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v143 = &v131 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v148 = &v131 - v9;
  v10 = sub_26EF3A0BC();
  v140 = *(v10 - 8);
  v141 = v10;
  v11 = *(v140 + 64);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v131 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA210, &qword_26EF44A50);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v131 - v19;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA218, &qword_26EF44A58);
  v137 = *(v139 - 8);
  v21 = *(v137 + 64);
  MEMORY[0x28223BE20](v139, v22);
  v24 = &v131 - v23;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA220, &qword_26EF44A60);
  v135 = *(v138 - 8);
  v25 = *(v135 + 64);
  MEMORY[0x28223BE20](v138, v26);
  v134 = &v131 - v27;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA228, &qword_26EF44A68);
  v28 = *(*(v132 - 8) + 64);
  MEMORY[0x28223BE20](v132, v29);
  v31 = &v131 - v30;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA230, &qword_26EF44A70);
  v32 = *(*(v133 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v133, v33);
  v142 = &v131 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v34, v36);
  v39 = &v131 - v38;
  MEMORY[0x28223BE20](v37, v40);
  v147 = &v131 - v41;
  v136 = a1;
  v149 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA238, &qword_26EF44A78);
  sub_26EF34FB0();
  sub_26EF3A50C();
  v42 = sub_26EE154C8(&qword_2806CA258, &qword_2806CA210, &qword_26EF44A50);
  sub_26EF3A83C();
  (*(v16 + 8))(v20, v15);
  sub_26EF3A0AC();
  LOBYTE(a1) = sub_26EF3A39C();
  sub_26EF3A38C();
  sub_26EF3A38C();
  if (sub_26EF3A38C() != a1)
  {
    sub_26EF3A38C();
  }

  v167._countAndFlagsBits = v15;
  v167._object = v42;
  swift_getOpaqueTypeConformance2();
  v43 = v134;
  v44 = v139;
  sub_26EF3A7FC();
  (*(v140 + 8))(v14, v141);
  (*(v137 + 8))(v24, v44);
  sub_26EF3AE4C();
  sub_26EF3984C();
  (*(v135 + 32))(v31, v43, v138);
  v45 = &v31[*(v132 + 36)];
  v46 = v169[3];
  *v45 = v169[2];
  *(v45 + 1) = v46;
  *(v45 + 2) = v169[4];
  v47 = sub_26EF3A3CC();
  sub_26EF3962C();
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;
  sub_26EE14D98(v31, v39, &qword_2806CA228, &qword_26EF44A68);
  v56 = &v39[*(v133 + 36)];
  *v56 = v47;
  *(v56 + 1) = v49;
  *(v56 + 2) = v51;
  *(v56 + 3) = v53;
  *(v56 + 4) = v55;
  v56[40] = 0;
  sub_26EE14D98(v39, v147, &qword_2806CA230, &qword_26EF44A70);
  v141 = sub_26EF39F5C();
  v153 = 0;
  v140 = sub_26EF39E4C();
  v57 = sub_26EE17094();
  v58._object = 0x800000026EF47520;
  v59 = v57 & 1;
  v58._countAndFlagsBits = 0xD000000000000017;
  v167 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v58, v59, 0);
  v132 = sub_26EE12538();
  v60 = sub_26EF3A5DC();
  v62 = v61;
  v64 = v63;
  LODWORD(v167._countAndFlagsBits) = sub_26EF3A1DC();
  v65 = sub_26EF3A58C();
  v67 = v66;
  v69 = v68;
  sub_26EE12ABC(v60, v62, v64 & 1);

  sub_26EF3A4DC();
  v70 = sub_26EF3A5BC();
  v72 = v71;
  v74 = v73;

  sub_26EE12ABC(v65, v67, v69 & 1);

  v75 = sub_26EF3A5AC();
  v77 = v76;
  LOBYTE(v60) = v78;
  v80 = v79;
  sub_26EE12ABC(v70, v72, v74 & 1);

  LOBYTE(v60) = v60 & 1;
  v173 = v60;
  v172 = 1;
  sub_26EE13B20(v75, v77, v60);

  v137 = v77;
  v138 = v75;
  sub_26EE12ABC(v75, v77, v60);
  v139 = v80;

  v174 = 1;
  LODWORD(v134) = v173;
  LODWORD(v135) = v172;
  v133 = sub_26EF39E4C();
  v171 = 1;
  v81 = *(v136 + 56);
  v167._countAndFlagsBits = *(v136 + 48);
  v167._object = v81;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA200, &unk_26EF44A38);
  sub_26EF3AAFC();
  countAndFlagsBits = v150._countAndFlagsBits;
  v83 = *MEMORY[0x277D70768];
  v84 = sub_26EF3B0FC();
  v86 = v85;
  if (v84 == sub_26EF3B0FC() && v86 == v87)
  {

    v88 = "SHORT_DESCRIPTION";
    v89 = 0xD000000000000023;
  }

  else
  {
    v90 = sub_26EF3B82C();

    v89 = 0xD000000000000023;
    if (v90)
    {
      v88 = "SHORT_DESCRIPTION";
    }

    else
    {
      v88 = "VB_PHRASE_STYLE_DESCRIPTION";
    }

    if ((v90 & 1) == 0)
    {
      v89 = 0xD000000000000021;
    }
  }

  v91 = sub_26EE17094();
  v92._object = (v88 | 0x8000000000000000);
  v93 = v91 & 1;
  v92._countAndFlagsBits = v89;
  v167 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v92, v93, 0);
  v94 = sub_26EF3A5DC();
  v96 = v95;
  v98 = v97;
  sub_26EF3A44C();
  v99 = sub_26EF3A5BC();
  v101 = v100;
  v103 = v102;

  sub_26EE12ABC(v94, v96, v98 & 1);

  LODWORD(v167._countAndFlagsBits) = sub_26EF3A1CC();
  v104 = sub_26EF3A58C();
  v106 = v105;
  LOBYTE(v94) = v107;
  sub_26EE12ABC(v99, v101, v103 & 1);

  v108 = sub_26EF3A5AC();
  v110 = v109;
  v112 = v111;
  v114 = v113;
  sub_26EE12ABC(v104, v106, v94 & 1);

  KeyPath = swift_getKeyPath();
  v185 = v112 & 1;
  v155._countAndFlagsBits = v108;
  v155._object = v110;
  LOBYTE(v156) = v112 & 1;
  *(&v156 + 1) = v180[0];
  DWORD1(v156) = *(v180 + 3);
  *(&v156 + 1) = v114;
  *(&v157 + 2) = v175._countAndFlagsBits;
  WORD3(v157) = WORD2(v175._countAndFlagsBits);
  LOWORD(v157) = 256;
  *(&v157 + 1) = KeyPath;
  LOBYTE(v158) = 0;
  LOBYTE(v151[2]) = 0;
  v151[0] = v156;
  v151[1] = v157;
  v150 = v155;
  v167._countAndFlagsBits = v108;
  v167._object = v110;
  v184 = 1;
  LOBYTE(v168[0]) = v112 & 1;
  DWORD1(v168[0]) = *(v180 + 3);
  *(v168 + 1) = v180[0];
  *(&v168[0] + 1) = v114;
  LOWORD(v168[1]) = 256;
  WORD3(v168[1]) = WORD2(v175._countAndFlagsBits);
  *(&v168[1] + 2) = v175._countAndFlagsBits;
  *(&v168[1] + 1) = KeyPath;
  LOBYTE(v168[2]) = 0;
  sub_26EE13B88(&v155, v154, &qword_2806C9298, &qword_26EF44AE0);
  sub_26EE14578(&v167, &qword_2806C9298, &qword_26EF44AE0);
  v175 = v150;
  v176 = v151[0];
  v177 = v151[1];
  v178 = *&v151[2];
  v179 = 1;
  v180[2] = v151[1];
  v180[1] = v151[0];
  v180[0] = v150;
  v181 = *&v151[2];
  v182 = 0;
  v183 = 1;
  sub_26EE13B88(&v175, &v167, &qword_2806CA280, &qword_26EF44AA0);
  sub_26EE14578(v180, &qword_2806CA280, &qword_26EF44AA0);
  *&v154[7] = v175;
  v154[71] = v179;
  *&v154[55] = v178;
  *&v154[39] = v177;
  *&v154[23] = v176;
  *(&v151[4] + 1) = *&v154[64];
  v150 = v133;
  LOBYTE(v151[0]) = v171;
  *(v151 + 1) = *v154;
  *(&v151[3] + 1) = *&v154[48];
  *(&v151[2] + 1) = *&v154[32];
  *(&v151[1] + 1) = *&v154[16];
  *(&v170[1] + 7) = v151[0];
  *(v170 + 7) = v133;
  v170[5] = *(&v151[3] + 9);
  *(&v170[4] + 7) = v151[3];
  *(&v170[3] + 7) = v151[2];
  *(&v170[2] + 7) = v151[1];
  v167 = v133;
  LOBYTE(v168[0]) = v171;
  *(v168 + 1) = *v154;
  *(&v168[4] + 1) = *&v154[64];
  *(&v168[3] + 1) = *&v154[48];
  *(&v168[2] + 1) = *&v154[32];
  *(&v168[1] + 1) = *&v154[16];
  LOBYTE(v101) = v134;
  v117 = v137;
  v116 = v138;
  sub_26EE13B20(v138, v137, v134 & 1);
  v118 = v139;

  sub_26EE13B88(&v150, &v155, &qword_2806CA288, &qword_26EF44AA8);
  sub_26EE14578(&v167, &qword_2806CA288, &qword_26EF44AA8);
  sub_26EE12ABC(v116, v117, v101 & 1);

  *&v154[81] = v170[1];
  *&v154[65] = v170[0];
  *&v154[145] = v170[5];
  *&v154[129] = v170[4];
  *&v154[113] = v170[3];
  *&v154[97] = v170[2];
  v162 = v170[1];
  v161 = v170[0];
  *&v154[17] = v150._countAndFlagsBits;
  *&v154[20] = *(&v150._countAndFlagsBits + 3);
  *&v154[44] = *(v180 + 3);
  *&v154[41] = v180[0];
  *v154 = v140;
  *&v154[8] = 0;
  v154[16] = 1;
  *&v154[24] = v116;
  *&v154[32] = v117;
  v154[40] = v101;
  *&v154[48] = v118;
  *&v154[56] = 0;
  v154[64] = v135;
  v155 = v140;
  LOBYTE(v156) = 1;
  DWORD1(v156) = *(&v150._countAndFlagsBits + 3);
  *(&v156 + 1) = v150._countAndFlagsBits;
  *(&v156 + 1) = v116;
  *&v157 = v117;
  BYTE8(v157) = v101;
  HIDWORD(v157) = *(v180 + 3);
  *(&v157 + 9) = v180[0];
  v158 = v118;
  v159 = 0;
  v160 = v135;
  v166 = v170[5];
  v165 = v170[4];
  v164 = v170[3];
  v163 = v170[2];
  sub_26EE13B88(v154, &v167, &qword_2806CA260, &qword_26EF44A88);
  sub_26EE14578(&v155, &qword_2806CA260, &qword_26EF44A88);
  *&v152[119] = *&v154[112];
  *&v152[135] = *&v154[128];
  *&v152[151] = *&v154[144];
  *&v152[55] = *&v154[48];
  *&v152[71] = *&v154[64];
  *&v152[87] = *&v154[80];
  *&v152[103] = *&v154[96];
  *&v152[7] = *v154;
  *&v152[23] = *&v154[16];
  *&v152[39] = *&v154[32];
  *(&v151[7] + 1) = *&v152[112];
  *(&v151[8] + 1) = *&v152[128];
  *(&v151[9] + 1) = *&v152[144];
  *(&v151[3] + 1) = *&v152[48];
  *(&v151[4] + 1) = *&v152[64];
  *(&v151[5] + 1) = *&v152[80];
  *(&v151[6] + 1) = *&v152[96];
  *(v151 + 1) = *v152;
  *(&v151[1] + 1) = *&v152[16];
  v152[167] = v154[160];
  v150._countAndFlagsBits = v141;
  v150._object = 0x4014000000000000;
  LOBYTE(v151[0]) = v153;
  *(&v151[10] + 1) = *&v152[160];
  *(&v151[2] + 1) = *&v152[32];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA268, &qword_26EF44A90);
  sub_26EE154C8(&qword_2806CA270, &qword_2806CA268, &qword_26EF44A90);
  v119 = v148;
  sub_26EF3A5EC();
  v168[7] = v151[7];
  v168[8] = v151[8];
  v169[0] = v151[9];
  *(v169 + 9) = *(&v151[9] + 9);
  v168[3] = v151[3];
  v168[4] = v151[4];
  v168[5] = v151[5];
  v168[6] = v151[6];
  v167 = v150;
  v168[0] = v151[0];
  v168[1] = v151[1];
  v168[2] = v151[2];
  sub_26EE14578(&v167, &qword_2806CA268, &qword_26EF44A90);
  v120 = v147;
  v121 = v142;
  sub_26EF3506C(v147, v142);
  v123 = v145;
  v122 = v146;
  v124 = *(v145 + 16);
  v125 = v143;
  v124(v143, v119, v146);
  v126 = v144;
  sub_26EF3506C(v121, v144);
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA278, &qword_26EF44A98);
  v124((v126 + *(v127 + 48)), v125, v122);
  v128 = v126 + *(v127 + 64);
  *v128 = 0;
  *(v128 + 8) = 1;
  v129 = *(v123 + 8);
  v129(v148, v122);
  sub_26EE14578(v120, &qword_2806CA230, &qword_26EF44A70);
  v129(v125, v122);
  return sub_26EE14578(v121, &qword_2806CA230, &qword_26EF44A70);
}

uint64_t sub_26EF33AA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PhraseStyleView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8, v7);
  v8 = sub_26EE17094();
  v9._object = 0xEB0000000045554ELL;
  v10 = v8 & 1;
  v9._countAndFlagsBits = 0x49544E4F435F4256;
  countAndFlagsBits = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v9, v10, 0)._countAndFlagsBits;
  sub_26EF352D0(a1, &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PhraseStyleView);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  sub_26EF34E44(&v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  CGSizeMake(countAndFlagsBits, v14, v15);
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  LOBYTE(countAndFlagsBits) = sub_26EF3A3DC();
  result = sub_26EF3962C();
  *a2 = v17;
  *(a2 + 8) = v19;
  *(a2 + 16) = v21;
  *(a2 + 24) = v23;
  *(a2 + 32) = countAndFlagsBits;
  *(a2 + 40) = v25;
  *(a2 + 48) = v26;
  *(a2 + 56) = v27;
  *(a2 + 64) = v28;
  *(a2 + 72) = 0;
  return result;
}

uint64_t sub_26EF33C58(uint64_t *a1)
{
  v2 = sub_26EF39DDC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v25[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[2];
  if (*(a1 + 24) == 1)
  {
    v9 = v8;
  }

  else
  {
    v10 = a1[2];

    sub_26EF3B46C();
    v11 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v8, 0);
    (*(v3 + 8))(v7, v2);
    v9 = v25[0];
  }

  v12 = a1[7];
  v25[0] = a1[6];
  v25[1] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA200, &unk_26EF44A38);
  sub_26EF3AAFC();
  VoiceBankingSession.trainingScriptType.setter(v25[4]);

  if (*a1)
  {
    v13 = *a1;

    v14 = VoiceBankingNavigationModel.itemPath.modify(v25);
    v16 = v15;
    v17 = *v15;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v16 = v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = sub_26EEB3AD4(0, *(v17 + 2) + 1, 1, v17);
      *v16 = v17;
    }

    v20 = *(v17 + 2);
    v19 = *(v17 + 3);
    if (v20 >= v19 >> 1)
    {
      v17 = sub_26EEB3AD4((v19 > 1), v20 + 1, 1, v17);
      *v16 = v17;
    }

    *(v17 + 2) = v20 + 1;
    v21 = &v17[16 * v20];
    *(v21 + 4) = 5;
    v21[40] = 1;
    (v14)(v25, 0);
  }

  else
  {
    v23 = a1[1];
    type metadata accessor for VoiceBankingNavigationModel();
    sub_26EF323FC(&qword_2806C6C20, type metadata accessor for VoiceBankingNavigationModel);
    result = sub_26EF39BFC();
    __break(1u);
  }

  return result;
}

uint64_t sub_26EF33F0C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8BD8, &unk_26EF41860);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = v10 - v4;
  sub_26EF34040();
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8BE0, &qword_26EF424A0);
  v7 = sub_26EEB2104();
  v10[0] = v6;
  v10[1] = v7;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x274382230](v5, v0, OpaqueTypeConformance2);
  return (*(v1 + 8))(v5, v0);
}

uint64_t sub_26EF34040()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8C20, &qword_26EF41880);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v29 - v4;
  v6 = type metadata accessor for ToolbarCancelButton();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8BE0, &qword_26EF424A0);
  v12 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v29 - v18;
  v20 = _UISolariumEnabled();
  if (v20)
  {
    (*(v1 + 56))(v16, 1, 1, v0);
    v21 = sub_26EF323FC(&qword_2806C8BF0, type metadata accessor for ToolbarCancelButton);
    v29 = v6;
    v30 = v21;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x274382260](v16, v0, OpaqueTypeConformance2);
    sub_26EE14578(v16, &qword_2806C8BE0, &qword_26EF424A0);
  }

  else
  {
    v23 = sub_26EF36388(v20);
    sub_26EF363D8(v23, v24, v10);
    v25 = sub_26EF323FC(&qword_2806C8BF0, type metadata accessor for ToolbarCancelButton);
    MEMORY[0x274382230](v10, v6, v25);
    (*(v1 + 16))(v16, v5, v0);
    (*(v1 + 56))(v16, 0, 1, v0);
    v29 = v6;
    v30 = v25;
    v26 = swift_getOpaqueTypeConformance2();
    MEMORY[0x274382260](v16, v0, v26);
    sub_26EE14578(v16, &qword_2806C8BE0, &qword_26EF424A0);
    (*(v1 + 8))(v5, v0);
    sub_26EF35338(v10, type metadata accessor for ToolbarCancelButton);
  }

  v27 = sub_26EEB2104();
  MEMORY[0x274382230](v19, v11, v27);
  return sub_26EE14578(v19, &qword_2806C8BE0, &qword_26EF424A0);
}

uint64_t sub_26EF343CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v3 = type metadata accessor for PhraseStyleView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8, v6);
  v52 = v7;
  v8 = &object - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SelectionCell();
  v10 = *(*(v9 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v9 - 8, v11);
  v59 = &object - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v58 = &object - v16;
  v18 = MEMORY[0x28223BE20](v15, v17);
  v57 = (&object - v19);
  MEMORY[0x28223BE20](v18, v20);
  v22 = (&object - v21);
  v56 = &object - v21;
  v23 = sub_26EE17094();
  v24._countAndFlagsBits = 0xD00000000000001FLL;
  v24._object = 0x800000026EF47540;
  v25 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v24, v23 & 1, 0);
  object = v25._object;
  countAndFlagsBits = v25._countAndFlagsBits;
  v26 = *(a1 + 32);
  v54 = *(a1 + 40);
  v55 = v26;
  v53 = a1;
  v64 = v26;
  v65 = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA290, &qword_26EF44AE8);
  sub_26EF3AB1C();
  v27 = v61;
  v28 = v62;
  v29 = v63;
  sub_26EF352D0(a1, v8, type metadata accessor for PhraseStyleView);
  v30 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v31 = swift_allocObject();
  sub_26EF34E44(v8, v31 + v30);
  v32 = sub_26EE17094();
  sub_26EE170E0(countAndFlagsBits, object, v32 & 1, 0, v27, v28, v29, sub_26EF350E4, v22, v31);
  v33 = sub_26EE17094();
  v34._object = 0x800000026EF47560;
  v35 = v33 & 1;
  v34._countAndFlagsBits = 0xD00000000000001DLL;
  v36 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v34, v35, 0);
  v64 = v55;
  v65 = v54;
  sub_26EF3AB1C();
  v37 = v61;
  v38 = v62;
  v39 = v63;
  sub_26EF352D0(v53, v8, type metadata accessor for PhraseStyleView);
  v40 = swift_allocObject();
  sub_26EF34E44(v8, v40 + v30);
  v41 = sub_26EE17094();
  v49 = v40;
  v42 = v57;
  sub_26EE170E0(v36._countAndFlagsBits, v36._object, v41 & 1, 1, v37, v38, v39, sub_26EF35228, v57, v49);
  v43 = v56;
  v44 = v58;
  sub_26EF352D0(v56, v58, type metadata accessor for SelectionCell);
  v45 = v59;
  sub_26EF352D0(v42, v59, type metadata accessor for SelectionCell);
  v46 = v60;
  sub_26EF352D0(v44, v60, type metadata accessor for SelectionCell);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA298, &qword_26EF44AF0);
  sub_26EF352D0(v45, v46 + *(v47 + 48), type metadata accessor for SelectionCell);
  sub_26EF35338(v42, type metadata accessor for SelectionCell);
  sub_26EF35338(v43, type metadata accessor for SelectionCell);
  sub_26EF35338(v45, type metadata accessor for SelectionCell);
  return sub_26EF35338(v44, type metadata accessor for SelectionCell);
}

uint64_t sub_26EF347E0@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for VoiceBankingNavigationModel();
  sub_26EF323FC(&qword_2806C6C20, type metadata accessor for VoiceBankingNavigationModel);
  *a1 = sub_26EF39C1C();
  *(a1 + 8) = v2;
  type metadata accessor for VoiceBankingSession();
  sub_26EF323FC(&qword_2806C65C0, type metadata accessor for VoiceBankingSession);
  *(a1 + 16) = sub_26EF3973C();
  *(a1 + 24) = v3 & 1;
  sub_26EF3AAEC();
  *(a1 + 32) = v8;
  v4 = *MEMORY[0x277D70768];
  type metadata accessor for TTSVBSiriTrainingScriptType(0);
  v5 = v4;
  sub_26EF3AAEC();
  *(a1 + 48) = v8;
  v6 = a1 + *(type metadata accessor for PhraseStyleView() + 32);
  return sub_26EF32444();
}

uint64_t sub_26EF3495C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 48);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8018, &qword_26EF41830);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_26EF34A2C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 48) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8018, &qword_26EF41830);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_26EF34ADC()
{
  sub_26EE1F73C();
  if (v0 <= 0x3F)
  {
    sub_26EF34CAC(319, &qword_2806C66B0, type metadata accessor for VoiceBankingSession, MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_26EF34C5C(319, &qword_2806CA1F0, MEMORY[0x277D83B88], MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        sub_26EF34CAC(319, &qword_2806CA1F8, type metadata accessor for TTSVBSiriTrainingScriptType, MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          sub_26EF34CAC(319, &qword_2806C8070, MEMORY[0x277CE7670], MEMORY[0x277CE11F8]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_26EF34C5C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_26EF34CAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_26EF34D10()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806CA1D0, &qword_26EF449A8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8BC8, &unk_26EF42490);
  sub_26EE154C8(&qword_2806CA1E8, &qword_2806CA1D0, &qword_26EF449A8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8BD8, &unk_26EF41860);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8BE0, &qword_26EF424A0);
  sub_26EEB2104();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_26EF34E44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhraseStyleView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EF34EA8()
{
  v1 = *(type metadata accessor for PhraseStyleView() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_26EF33C58(v2);
}

uint64_t sub_26EF34F08()
{
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA250, &qword_26EF44A80);
  sub_26EE154C8(&qword_2806CA248, &qword_2806CA250, &qword_26EF44A80);
  return sub_26EF3AD6C();
}

unint64_t sub_26EF34FB0()
{
  result = qword_2806CA240;
  if (!qword_2806CA240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806CA238, &qword_26EF44A78);
    sub_26EE154C8(&qword_2806CA248, &qword_2806CA250, &qword_26EF44A80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806CA240);
  }

  return result;
}

uint64_t sub_26EF3506C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA230, &qword_26EF44A70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_20()
{
  v1 = (type metadata accessor for PhraseStyleView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3);

  sub_26EE05C9C(*(v0 + v3 + 16), *(v0 + v3 + 24));
  v6 = *(v0 + v3 + 40);

  v7 = *(v0 + v3 + 56);

  v8 = (v0 + v3 + v1[10]);
  v9 = *v8;

  v10 = *(v8 + 1);

  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8018, &qword_26EF41830) + 32);
  v12 = sub_26EF3872C();
  (*(*(v12 - 8) + 8))(&v8[v11], v12);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26EF35234(id *a1)
{
  v3 = *(type metadata accessor for PhraseStyleView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  v7 = *(v4 + 48);
  v8 = *(v4 + 56);
  v5 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA200, &unk_26EF44A38);
  return sub_26EF3AB0C();
}

uint64_t sub_26EF352D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26EF35338(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_26EF353A0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9BA0, &unk_26EF3E550);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v11[-v4];
  v6 = type metadata accessor for VoiceBankingBatteryMonitor();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  v10 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI26VoiceBankingBatteryMonitor__deviceIsCharging;
  v11[15] = 0;
  sub_26EF394EC();
  (*(v1 + 32))(v9 + v10, v5, v0);
  sub_26EF35C30();
  qword_2806CFA88 = v9;
}

uint64_t sub_26EF354B8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9BA0, &unk_26EF3E550);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v12[-v5];
  v7 = *(v0 + 48);
  v8 = *(v0 + 52);
  v9 = swift_allocObject();
  v10 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI26VoiceBankingBatteryMonitor__deviceIsCharging;
  v12[15] = 0;
  sub_26EF394EC();
  (*(v2 + 32))(v9 + v10, v6, v1);
  sub_26EF35C30();
  return v9;
}

uint64_t *sub_26EF355C4()
{
  if (qword_2806CF7D0 != -1)
  {
    swift_once();
  }

  return &qword_2806CFA88;
}

uint64_t sub_26EF35614()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();

  return v1;
}

uint64_t sub_26EF35688@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 88))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_26EF35720()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_26EF3953C();
}

void (*sub_26EF35790(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_26EF3951C();
  return sub_26EE42F5C;
}

uint64_t sub_26EF35834()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9BA0, &unk_26EF3E550);
  sub_26EF394FC();
  return swift_endAccess();
}

uint64_t sub_26EF358A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C75C0, &qword_26EF44060);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  (*(v3 + 16))(&v8 - v6, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9BA0, &unk_26EF3E550);
  sub_26EF3950C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_26EF359E0(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C75C0, &qword_26EF44060);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI26VoiceBankingBatteryMonitor__deviceIsCharging;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9BA0, &unk_26EF3E550);
  sub_26EF394FC();
  swift_endAccess();
  return sub_26EE4351C;
}

uint64_t sub_26EF35B50()
{
  v1 = [objc_opt_self() currentDevice];
  [v1 setBatteryMonitoringEnabled_];

  v2 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI26VoiceBankingBatteryMonitor__deviceIsCharging;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9BA0, &unk_26EF3E550);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

void sub_26EF35C30()
{
  v1 = v0;
  v2 = sub_26EF3883C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26EE27ED0();
  (*(v3 + 16))(v7, v8, v2);
  v9 = sub_26EF3881C();
  v10 = sub_26EF3B47C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_26EE01000, v9, v10, "VoiceBankingBatteryMonitor: Registering for observers.", v11, 2u);
    MEMORY[0x2743842A0](v11, -1, -1);
  }

  (*(v3 + 8))(v7, v2);
  v12 = objc_opt_self();
  v13 = [v12 currentDevice];
  [v13 setBatteryMonitoringEnabled_];

  v14 = [v12 currentDevice];
  v15 = [v14 batteryState];

  (*(*v1 + 96))(v15 != 1);
  v16 = [objc_opt_self() defaultCenter];
  [v16 addObserver:v1 selector:sel_batteryStateChanged name:*MEMORY[0x277D76870] object:0];
}

uint64_t sub_26EF35E74()
{
  v1 = [objc_opt_self() currentDevice];
  v2 = [v1 batteryState];

  v3 = *(*v0 + 96);

  return v3(v2 != 1);
}

uint64_t sub_26EF35FB8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for VoiceBankingBatteryMonitor();
  result = sub_26EF394BC();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for VoiceBankingBatteryMonitor()
{
  result = qword_2806CF870;
  if (!qword_2806CF870)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26EF3604C()
{
  sub_26EF21AE4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

id sub_26EF360E0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  [v0 startAnimating];
  [v0 setHidesWhenStopped_];
  return v0;
}

uint64_t sub_26EF361A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26EF362A0();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_26EF36204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26EF362A0();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_26EF36268()
{
  sub_26EF362A0();
  sub_26EF3A02C();
  __break(1u);
}

unint64_t sub_26EF362A0()
{
  result = qword_2806CA2A0;
  if (!qword_2806CA2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806CA2A0);
  }

  return result;
}

uint64_t sub_26EF362F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for ToolbarCancelButton()
{
  result = qword_2806CFA00;
  if (!qword_2806CFA00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26EF363D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for VoiceBankingSession();
  sub_26EF362F4(&qword_2806C65C0, type metadata accessor for VoiceBankingSession);
  *a3 = sub_26EF3973C();
  *(a3 + 8) = v6 & 1;
  type metadata accessor for VoiceBankingNavigationModel();
  sub_26EF362F4(&qword_2806C6C20, type metadata accessor for VoiceBankingNavigationModel);
  *(a3 + 16) = sub_26EF39C1C();
  *(a3 + 24) = v7;
  type metadata accessor for VoiceBankingAudioServiceViewModel();
  sub_26EF362F4(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel);
  *(a3 + 32) = sub_26EF39C1C();
  *(a3 + 40) = v8;
  v9 = type metadata accessor for ToolbarCancelButton();
  v10 = a3 + *(v9 + 28);
  result = sub_26EF3A0DC();
  v12 = (a3 + *(v9 + 32));
  *v12 = a1;
  v12[1] = a2;
  return result;
}

uint64_t sub_26EF36528(uint64_t a1)
{
  v2 = type metadata accessor for ToolbarCancelButton();
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7138, &unk_26EF3DCC0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = v18 - v10;
  v12 = (a1 + *(v3 + 40));
  v13 = v12[1];
  v18[0] = *v12;
  v18[1] = v13;

  sub_26EF3960C();
  v14 = sub_26EF3961C();
  (*(*(v14 - 8) + 56))(v11, 0, 1, v14);
  sub_26EF371E0(a1, v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v16 = swift_allocObject();
  sub_26EF37358(v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  sub_26EE12538();
  return sub_26EF3AB5C();
}

void sub_26EF36720(uint64_t a1)
{
  v2 = sub_26EF39DDC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ToolbarCancelButton();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8, v11);
  v12 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v17 = v34 - v16;
  if (!*(a1 + 16))
  {
    v30 = *(a1 + 24);
    type metadata accessor for VoiceBankingNavigationModel();
    v31 = &qword_2806C6C20;
    v32 = type metadata accessor for VoiceBankingNavigationModel;
LABEL_9:
    sub_26EF362F4(v31, v32);
    sub_26EF39BFC();
    __break(1u);
    return;
  }

  v18 = *(a1 + 16);

  VoiceBankingNavigationModel.dismissSheet()();

  v19 = *(a1 + 32);
  if (!v19)
  {
    v33 = *(a1 + 40);
    type metadata accessor for VoiceBankingAudioServiceViewModel();
    v31 = &qword_2806C9BB0;
    v32 = type metadata accessor for VoiceBankingAudioServiceViewModel;
    goto LABEL_9;
  }

  v20 = v19;
  sub_26EF17564();

  v21 = sub_26EF3B30C();
  (*(*(v21 - 8) + 56))(v17, 1, 1, v21);
  sub_26EF371E0(a1, v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_26EF3B2DC();
  v22 = sub_26EF3B2CC();
  v23 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v24 = swift_allocObject();
  v25 = MEMORY[0x277D85700];
  *(v24 + 16) = v22;
  *(v24 + 24) = v25;
  sub_26EF37358(v12, v24 + v23);
  sub_26EE2C388(0, 0, v17, &unk_26EF44D10, v24);

  v26 = *a1;
  if (*(a1 + 8))
  {
    v27 = v26;
  }

  else
  {
    v28 = *a1;

    sub_26EF3B46C();
    v29 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v26, 0);
    (*(v3 + 8))(v7, v2);
    v27 = v34[1];
  }

  VoiceBankingSession.indexOfCurrentSample.setter(-1, 0);
}

uint64_t sub_26EF36AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_26EF3B2DC();
  v4[3] = sub_26EF3B2CC();
  v6 = sub_26EF3B29C();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_26EF36B7C, v6, v5);
}

uint64_t sub_26EF36B7C()
{
  v1 = v0[2];
  v2 = *(v1 + 32);
  v0[6] = v2;
  if (v2)
  {
    v2;
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_26EE7CD18;

    return sub_26EF1262C();
  }

  else
  {
    v5 = *(v1 + 40);
    type metadata accessor for VoiceBankingAudioServiceViewModel();
    sub_26EF362F4(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel);

    return sub_26EF39BFC();
  }
}

uint64_t sub_26EF36CA0(uint64_t a1)
{
  v3 = sub_26EF3A13C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C73A8, &qword_26EF3E150);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v17[-v13];
  (*(v4 + 16))(v8, v1 + *(a1 + 28), v3);
  v18 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6788, &unk_26EF3D080);
  sub_26EE154C8(&qword_2806C6790, &qword_2806C6788, &unk_26EF3D080);
  sub_26EF397CC();
  v15 = sub_26EE154C8(&qword_2806C73B0, &qword_2806C73A8, &qword_26EF3E150);
  MEMORY[0x274382230](v14, v9, v15);
  return (*(v10 + 8))(v14, v9);
}

uint64_t sub_26EF36EF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26EF3A13C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_26EF36FCC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26EF3A13C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 28);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = (a2 - 1);
  }

  return result;
}

void sub_26EF3708C()
{
  sub_26EE1F6E4();
  if (v0 <= 0x3F)
  {
    sub_26EE1F73C();
    if (v1 <= 0x3F)
    {
      sub_26EE1F7D0();
      if (v2 <= 0x3F)
      {
        sub_26EF3A13C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_26EF37148()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C73A8, &qword_26EF3E150);
  sub_26EE154C8(&qword_2806C73B0, &qword_2806C73A8, &qword_26EF3E150);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_26EF371E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolbarCancelButton();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EF37244()
{
  v1 = (type metadata accessor for ToolbarCancelButton() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  sub_26EE05C9C(*(v0 + v3), *(v0 + v3 + 8));
  v5 = *(v0 + v3 + 16);

  v6 = v1[9];
  v7 = sub_26EF3A13C();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  v8 = *(v0 + v3 + v1[10] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26EF37358(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolbarCancelButton();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_26EF373BC()
{
  v1 = *(type metadata accessor for ToolbarCancelButton() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_26EF36720(v2);
}

uint64_t sub_26EF3741C()
{
  v1 = (type metadata accessor for ToolbarCancelButton() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_26EE05C9C(*(v0 + v3), *(v0 + v3 + 8));
  v6 = *(v0 + v3 + 16);

  v7 = v1[9];
  v8 = sub_26EF3A13C();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  v9 = *(v0 + v3 + v1[10] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26EF37538()
{
  v2 = *(type metadata accessor for ToolbarCancelButton() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26EE05D7C;

  return sub_26EF36AE4(v4, v5, v6, v0 + v3);
}

uint64_t sub_26EF3760C(uint64_t *a1, int a2)
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

uint64_t sub_26EF37654(uint64_t result, int a2, int a3)
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

uint64_t __isPlatformVersionAtLeast(uint64_t a1, int a2, int a3, int a4)
{
  v16 = *MEMORY[0x277D85DE8];
  if (qword_2806CFA28 == -1)
  {
    if (qword_2806CFA30)
    {
LABEL_3:
      result = _availability_version_check();
      v5 = *MEMORY[0x277D85DE8];
      return result;
    }
  }

  else
  {
    v6 = a4;
    v7 = a3;
    v8 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v8;
    a3 = v7;
    a4 = v6;
    if (qword_2806CFA30)
    {
      goto LABEL_3;
    }
  }

  if (qword_2806CFA20 != -1)
  {
    v13 = a4;
    v14 = a3;
    v15 = a2;
    __isPlatformVersionAtLeast_cold_2();
    a3 = v14;
    a4 = v13;
    v9 = _MergedGlobals < v15;
    if (_MergedGlobals > v15)
    {
      goto LABEL_11;
    }

LABEL_7:
    if (!v9)
    {
      if (dword_2806CFA14 > a3)
      {
        goto LABEL_11;
      }

      if (dword_2806CFA14 >= a3)
      {
        result = dword_2806CFA18 >= a4;
        v12 = *MEMORY[0x277D85DE8];
        return result;
      }
    }

    result = 0;
    v10 = *MEMORY[0x277D85DE8];
    return result;
  }

  v9 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

LABEL_11:
  result = 1;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t _initializeAvailabilityCheck(unint64_t result)
{
  v30 = *MEMORY[0x277D85DE8];
  v1 = qword_2806CFA30;
  if (qword_2806CFA30)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x28223BE68])
    {
      v1 = MEMORY[0x28223BE68];
      qword_2806CFA30 = MEMORY[0x28223BE68];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v28 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v27 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x274383C20](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v26 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v26, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v27)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v28(v23, v29, 32, 134217984))
                                        {
                                          sscanf(v29, "%d.%d.%d", &_MergedGlobals, &dword_2806CFA14, &dword_2806CFA18);
                                        }
                                      }
                                    }
                                  }

                                  (v27)(v20);
                                }

                                (v27)(v18);
                                v16 = v26;
                              }

                              else
                              {
                                v16 = v26;
                              }
                            }
                          }

                          free(v16);
                          result = fclose(v13);
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

  v25 = *MEMORY[0x277D85DE8];
  return result;
}

void TTSUIAppImageForBundleID_cold_1()
{
  dlerror();
  v0 = abort_report_np();
  TTSDeviceTemplateType_cold_1(v0, v1, v2, v3, v4, v5, v6, v7);
}