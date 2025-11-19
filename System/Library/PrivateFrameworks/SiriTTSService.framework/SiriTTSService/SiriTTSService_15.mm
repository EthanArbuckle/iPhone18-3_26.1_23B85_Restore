id sub_1B1BD03B4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762440, &qword_1B1C383E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B1C40970;
  if (qword_1EB7615E0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB7625D8;
  *(v0 + 32) = qword_1EB7625D8;
  v2 = qword_1ED9A9628;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_1ED9A9598;
  *(v0 + 40) = qword_1ED9A9598;
  v5 = qword_1ED9A9100;
  v6 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = qword_1ED9A90A8;
  *(v0 + 48) = qword_1ED9A90A8;
  v8 = qword_1ED9A97D8;
  v9 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = qword_1ED9A9830;
  *(v0 + 56) = qword_1ED9A9830;
  qword_1EB763FB8 = v0;

  return v10;
}

BOOL TTSAsset.isOlder(_:)()
{
  v1 = *v0;
  OUTLINED_FUNCTION_2_31();
  v3 = (*(v2 + 160))();
  v5 = v4;
  OUTLINED_FUNCTION_0_34();
  if (v3 == (*(v6 + 160))() && v5 == v7)
  {

    goto LABEL_8;
  }

  v9 = OUTLINED_FUNCTION_4_26();

  result = 0;
  if (v9)
  {
LABEL_8:
    v11 = *v0;
    OUTLINED_FUNCTION_2_31();
    v13 = (*(v12 + 168))();
    OUTLINED_FUNCTION_0_34();
    return v13 < (*(v14 + 168))();
  }

  return result;
}

BOOL TTSAsset.isNewer(_:)()
{
  v1 = *v0;
  OUTLINED_FUNCTION_2_31();
  v3 = (*(v2 + 160))();
  v5 = v4;
  OUTLINED_FUNCTION_0_34();
  if (v3 == (*(v6 + 160))() && v5 == v7)
  {

    goto LABEL_8;
  }

  v9 = OUTLINED_FUNCTION_4_26();

  result = 0;
  if (v9)
  {
LABEL_8:
    v11 = *v0;
    OUTLINED_FUNCTION_2_31();
    v13 = (*(v12 + 168))();
    OUTLINED_FUNCTION_0_34();
    return (*(v14 + 168))() < v13;
  }

  return result;
}

uint64_t sub_1B1BD0814(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1B1BCFF50() & 1;
}

void sub_1B1BD0858(void *a1)
{
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  [*(*(v1 + 16) + 40) lock];
  v4 = *(v1 + 16);
  OUTLINED_FUNCTION_9_25();
  v5 = a1;

  [*(*(v1 + 16) + 40) unlock];
}

void sub_1B1BD08E8(void *a1)
{
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  [*(*(v1 + 48) + 40) lock];
  v4 = *(v1 + 48);
  OUTLINED_FUNCTION_9_25();
  v5 = a1;

  [*(*(v1 + 48) + 40) unlock];
}

void sub_1B1BD0978(void *a1)
{
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  [*(*(v1 + 32) + 40) lock];
  v4 = *(v1 + 32);
  OUTLINED_FUNCTION_9_25();
  v5 = a1;

  [*(*(v1 + 32) + 40) unlock];
}

unint64_t sub_1B1BD0A08(unint64_t result)
{
  if (result >= 3)
  {
    result = sub_1B1C2D7E8();
    __break(1u);
  }

  return result;
}

uint64_t sub_1B1BD0A48(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E6977A88]) initWithUnit_];
  SynthesizingRequestProtocol.text.getter();
  v3 = sub_1B1C2CB28();

  [v2 setString_];

  v4 = SynthesizingRequestProtocol.voice.getter(a1);
  v5 = &v4[OBJC_IVAR___SiriTTSSynthesisVoice_language];
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v7 = *v5;
  v6 = *(v5 + 1);

  v8 = sub_1B1C2CB28();

  [v2 setLanguage_];

  SynthesizingRequestProtocol.text.getter();

  SynthesizingRequestProtocol.text.getter();

  v9 = sub_1B1C2D048();

  v10 = *(v9 + 16);

  return v10;
}

uint64_t sub_1B1BD0BB8(uint64_t a1)
{
  if (!SynthesizingRequestProtocol.style.getter(a1))
  {
    if (qword_1ED9A96B8 != -1)
    {
      swift_once();
    }

    v4 = sub_1B1B5692C();
    if ((v5 & 1) != 0 || (v6 = v4, v4 = sub_1B1BD0A48(a1), v4 < v6))
    {
      if ((*((*MEMORY[0x1E69E7D40] & *v1) + 0xA8))(v4) == 0xD00000000000001ALL && 0x80000001B1C48480 == v7)
      {
      }

      else
      {
        v9 = sub_1B1C2D7A8();

        if ((v9 & 1) == 0)
        {
          goto LABEL_2;
        }
      }
    }

    return 1;
  }

LABEL_2:

  return SynthesizingRequestProtocol.style.getter(a1);
}

uint64_t sub_1B1BD0CFC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1B1BD0D28(v4);
}

uint64_t sub_1B1BD0D28(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t sub_1B1BD0D70(char a1)
{
  swift_beginAccess();
  v3 = *(v1 + 120);
  [v3 lock];
  *(v1 + 128) = a1;
  [v3 unlock];
  return swift_endAccess();
}

void *sub_1B1BD0DE4()
{
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = v1;
  v4 = v2;
  [v4 lock];
  v5 = v3;
  [v4 unlock];

  return v1;
}

uint64_t sub_1B1BD0E68(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 136);
  [v3 lock];
  v4 = *(v1 + 144);
  *(v1 + 144) = a1;

  [v3 unlock];
  return swift_endAccess();
}

uint64_t DeviceSynthesisAction.__allocating_init(pool:)()
{
  swift_allocObject();
  OUTLINED_FUNCTION_24();
  return DeviceSynthesisAction.init(pool:)();
}

void sub_1B1BD0F1C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 56);

  v3 = *(v0 + 64);

  sub_1B1ADA260(v0 + 72);
  v4 = *(v0 + 112);

  v5 = *(v0 + 144);
}

void sub_1B1BD0F98()
{
  v0 = sub_1B1BD0DE4();
  if (v0)
  {
    v1 = v0;
    [v0 stopSynthesis];
    sub_1B1BD0D70(1);
  }
}

void sub_1B1BD0FE0(uint64_t a1)
{
  v3 = v1;
  v5 = *v3;
  v6 = sub_1B1C2C988();
  v7 = OUTLINED_FUNCTION_7(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v13 = &v135 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1B1C2C9D8();
  v15 = OUTLINED_FUNCTION_7(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v150 = &v135 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1B1B22BB4();
  if (v21)
  {
    v144 = v5;
    v149 = v21;
    v145 = v17;
    v151 = a1;
    v22 = sub_1B1AA95C4();
    if (v22)
    {
      v23 = v22;
      if (v3[6])
      {
        if (qword_1ED9A4DF8 != -1)
        {
          swift_once();
        }

        sub_1B1AEAD14();
      }

      v141 = v14;
      v142 = v9;
      v140 = v6;
      v143 = v2;
      OUTLINED_FUNCTION_17();
      v148 = swift_allocObject();
      *(v148 + 16) = 0;
      OUTLINED_FUNCTION_17();
      v24 = swift_allocObject();
      *(v24 + 16) = MEMORY[0x1E69E7CC0];
      v25 = [objc_allocWithZone(SiriTTSSynthesisEngineRequest) init];
      ObjectType = swift_getObjectType();
      SynthesizingRequestProtocol.text.getter();
      v27 = sub_1B1C2CB28();

      [v25 setText_];

      aBlock = (*((*MEMORY[0x1E69E7D40] & *v23) + 0x90))();
      v28 = sub_1B1C2D778();
      sub_1B1BD2CA4(v28, v29, v25);
      v30 = OUTLINED_FUNCTION_6_25();
      *&v31 = SynthesizingRequestProtocol.rate.getter(v30);
      [v25 setRate_];
      *&v32 = SynthesizingRequestProtocol.pitch.getter(ObjectType);
      [v25 setPitch_];
      *&v33 = SynthesizingRequestProtocol.volume.getter(ObjectType);
      [v25 setVolume_];
      v34 = SynthesizingRequestProtocol.prosodyProperties.getter(ObjectType);
      v35 = &v34[OBJC_IVAR___SiriTTSProsodyProperties_neuralSentencePitch];
      OUTLINED_FUNCTION_11_0();
      swift_beginAccess();
      v36 = *v35;

      OUTLINED_FUNCTION_10_27(v38, v37, sel_setNeuralSentencePitch_);
      v39 = OUTLINED_FUNCTION_6_25();
      v40 = SynthesizingRequestProtocol.prosodyProperties.getter(v39);
      v41 = &v40[OBJC_IVAR___SiriTTSProsodyProperties_neuralSentencePitchRange];
      OUTLINED_FUNCTION_11_0();
      swift_beginAccess();
      v42 = *v41;

      OUTLINED_FUNCTION_10_27(v44, v43, sel_setNeuralSentencePitchRange_);
      v45 = OUTLINED_FUNCTION_6_25();
      v46 = SynthesizingRequestProtocol.prosodyProperties.getter(v45);
      v47 = &v46[OBJC_IVAR___SiriTTSProsodyProperties_neuralSentenceDuration];
      OUTLINED_FUNCTION_11_0();
      swift_beginAccess();
      v48 = *v47;

      OUTLINED_FUNCTION_10_27(v50, v49, sel_setNeuralSentenceDuration_);
      v51 = OUTLINED_FUNCTION_6_25();
      v52 = SynthesizingRequestProtocol.prosodyProperties.getter(v51);
      v53 = &v52[OBJC_IVAR___SiriTTSProsodyProperties_neuralSentenceEnergy];
      OUTLINED_FUNCTION_11_0();
      swift_beginAccess();
      v54 = *v53;

      OUTLINED_FUNCTION_10_27(v56, v55, sel_setNeuralSentenceEnergy_);
      v57 = OUTLINED_FUNCTION_6_25();
      v58 = SynthesizingRequestProtocol.prosodyProperties.getter(v57);
      v59 = &v58[OBJC_IVAR___SiriTTSProsodyProperties_neuralSentenceTilt];
      OUTLINED_FUNCTION_11_0();
      swift_beginAccess();
      v60 = *v59;

      OUTLINED_FUNCTION_10_27(v62, v61, sel_setNeuralSentenceTilt_);
      v63 = v3[8];
      if (v63 && (sub_1B1A9B6B0(), v64 != 2) && (v64 & 1) != 0)
      {
        v65 = 0;
      }

      else
      {
        v70 = OUTLINED_FUNCTION_6_25();
        v65 = SynthesizingRequestProtocol.privacySensitive.getter(v70);
      }

      [v25 setPrivacySensitive_];
      v71 = OUTLINED_FUNCTION_6_25();
      [v25 setDisableThermalFallback_];
      [v25 setProfile_];
      v72 = sub_1B1BD0BB8(ObjectType);
      SynthesisContext.PromptStyle.description.getter(v72);
      sub_1B1C2CB28();
      OUTLINED_FUNCTION_24();

      [v25 setPromptStyle_];

      sub_1B1ADD454((v3 + 9), &aBlock);
      v73 = v159;
      v139 = v13;
      v138 = v25;
      if (v159)
      {
        v74 = v160;
        __swift_project_boxed_opaque_existential_1(&aBlock, v159);
        v75 = v74[2];
        v76 = OUTLINED_FUNCTION_24();
        v73 = v77(v76, v74);
        v79 = v78;
        __swift_destroy_boxed_opaque_existential_0(&aBlock);
        if (v79)
        {
          v80 = v3;
          v73 = 0;
        }

        else
        {
          v80 = v3;
        }
      }

      else
      {
        v80 = v3;
        sub_1B1ADA260(&aBlock);
      }

      v85 = swift_allocObject();
      *(v85 + 16) = 0;
      OUTLINED_FUNCTION_17();
      v86 = swift_allocObject();
      v86[2] = 0;
      v87 = swift_allocObject();
      v88 = v149;
      *(v87 + 2) = v85;
      *(v87 + 3) = v88;
      *(v87 + 4) = v80;
      *(v87 + 5) = v23;
      *(v87 + 6) = v151;
      *(v87 + 7) = v24;
      v146 = v24;
      *(v87 + 8) = v148;
      *(v87 + 9) = v86;
      v89 = v144;
      *(v87 + 10) = v73;
      *(v87 + 11) = v89;
      v160 = sub_1B1ACEC10;
      v161 = v87;
      aBlock = MEMORY[0x1E69E9820];
      v157 = 1107296256;
      v158 = sub_1B1ACEB88;
      v159 = &block_descriptor_25;
      v90 = _Block_copy(&aBlock);
      v137 = v161;
      v147 = v85;

      v91 = v88;
      v92 = v80;
      v93 = v91;

      v144 = v23;
      v94 = v23;
      v95 = v146;

      v149 = v86;

      v97 = v138;
      OUTLINED_FUNCTION_7_20(v96, sel_setAudioHandler_);
      _Block_release(v90);
      v160 = sub_1B1BD2D08;
      v161 = v92;
      aBlock = MEMORY[0x1E69E9820];
      v157 = 1107296256;
      v158 = sub_1B1BD2190;
      v159 = &block_descriptor_13_0;
      _Block_copy(&aBlock);
      OUTLINED_FUNCTION_5_29();

      OUTLINED_FUNCTION_7_20(v98, sel_setPromptHandler_);
      _Block_release(v90);
      v99 = v93;
      if ([v93 supportWordTiming])
      {
        v100 = v94;
        v101 = swift_allocObject();
        *(v101 + 16) = 0;
        v160 = sub_1B1BD2DD0;
        v161 = v101;
        aBlock = MEMORY[0x1E69E9820];
        OUTLINED_FUNCTION_2_32();
        v158 = v102;
        v159 = &block_descriptor_35_0;
        v103 = _Block_copy(&aBlock);

        OUTLINED_FUNCTION_7_20(v104, sel_setWordAlignmentFailureHandler_);
        _Block_release(v103);
        v105 = swift_allocObject();
        *(v105 + 2) = v101;
        *(v105 + 3) = v100;
        *(v105 + 4) = v95;
        *(v105 + 5) = v92;
        v160 = sub_1B1AC2E3C;
        v161 = v105;
        aBlock = MEMORY[0x1E69E9820];
        v157 = 1107296256;
        v158 = sub_1B1AC5EAC;
        v159 = &block_descriptor_41_0;
        v106 = _Block_copy(&aBlock);

        v107 = v100;

        OUTLINED_FUNCTION_7_20(v108, sel_setWordTimingsHandler_);
        _Block_release(v106);
      }

      else
      {
        v109 = v94;
        if (qword_1ED9A9288 != -1)
        {
          OUTLINED_FUNCTION_0_0();
          swift_once();
        }

        v110 = sub_1B1C2C8A8();
        __swift_project_value_buffer(v110, qword_1ED9A9120);
        v106 = sub_1B1C2C888();
        v111 = sub_1B1C2D098();
        if (os_log_type_enabled(v106, v111))
        {
          v112 = swift_slowAlloc();
          *v112 = 0;
          _os_log_impl(&dword_1B1A8A000, v106, v111, "Word timing isn't supported", v112, 2u);
          MEMORY[0x1B2739FD0](v112, -1, -1);
        }

        v100 = v109;
      }

      v160 = sub_1B1AEE9A0;
      v161 = v92;
      OUTLINED_FUNCTION_0_35();
      v158 = sub_1B1A95870;
      v159 = &block_descriptor_16_1;
      _Block_copy(&aBlock);
      OUTLINED_FUNCTION_5_29();

      OUTLINED_FUNCTION_7_20(v113, sel_setNeuralFallbackHandler_);
      _Block_release(v106);
      v160 = sub_1B1BD2D10;
      v161 = v92;
      aBlock = MEMORY[0x1E69E9820];
      OUTLINED_FUNCTION_2_32();
      v158 = v114;
      v159 = &block_descriptor_19_0;
      _Block_copy(&aBlock);
      OUTLINED_FUNCTION_5_29();

      OUTLINED_FUNCTION_7_20(v115, sel_setUseHydraFrontendHandler_);
      _Block_release(v106);
      v160 = sub_1B1BD2D54;
      v161 = v92;
      aBlock = MEMORY[0x1E69E9820];
      v157 = 1107296256;
      v158 = sub_1B1BD255C;
      v159 = &block_descriptor_22_0;
      _Block_copy(&aBlock);
      OUTLINED_FUNCTION_5_29();

      OUTLINED_FUNCTION_7_20(v116, sel_setDynamicPromptHandler_);
      _Block_release(v106);
      v160 = sub_1B1BD2D5C;
      v161 = v92;
      aBlock = MEMORY[0x1E69E9820];
      v157 = 1107296256;
      v158 = sub_1B1BD27B4;
      v159 = &block_descriptor_25;
      _Block_copy(&aBlock);
      OUTLINED_FUNCTION_5_29();

      OUTLINED_FUNCTION_7_20(v117, sel_setSynthesisIssueHandler_);
      _Block_release(v106);
      sub_1B1B3456C(1);
      v118 = [objc_allocWithZone(type metadata accessor for AudioData()) init];
      [v99 asbd];
      v119 = &v118[OBJC_IVAR___SiriTTSAudioData_asbd];
      swift_beginAccess();
      v120 = v154;
      *v119 = v153;
      *(v119 + 1) = v120;
      *(v119 + 4) = v155;
      type metadata accessor for DataContainer();
      OUTLINED_FUNCTION_17();
      v121 = swift_allocObject();
      *(v121 + 16) = sub_1B1C2CAB8();
      v137 = v118;
      sub_1B1ACC2E4(v118);
      v122 = v100;
      sub_1B1AD7464(v144);
      v123 = v151;
      v126 = sub_1B1AA95A0(v124, v125);
      sub_1B1AA795C(v126);
      v127 = sub_1B1AA9644();
      sub_1B1AA9764(v127);
      sub_1B1AA81A8();
      v144 = v92[5];
      v128 = swift_allocObject();
      v129 = v148;
      *(v128 + 2) = v92;
      *(v128 + 3) = v129;
      *(v128 + 4) = v99;
      *(v128 + 5) = v97;
      *(v128 + 6) = v147;
      *(v128 + 7) = v122;
      *(v128 + 8) = v123;
      v160 = sub_1B1BD2D64;
      v161 = v128;
      OUTLINED_FUNCTION_0_35();
      v158 = sub_1B1A95870;
      v159 = &block_descriptor_31;
      v130 = _Block_copy(&aBlock);

      v136 = v99;

      v135 = v122;

      v131 = v97;
      v132 = v150;
      sub_1B1C2C9A8();
      v152 = MEMORY[0x1E69E7CC0];
      sub_1B1BD2D78();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761900, &unk_1B1C38430);
      sub_1B1AA6F40();
      v133 = v139;
      v134 = v140;
      sub_1B1C2D418();
      MEMORY[0x1B2738610](0, v132, v133, v130);
      _Block_release(v130);

      (*(v142 + 8))(v133, v134);
      (*(v145 + 8))(v132, v141);
    }

    else
    {
      sub_1B1A9EC9C();
      v81 = swift_allocError();
      OUTLINED_FUNCTION_8_26(v81, v82);
      *(v84 + 8) = v83 | 1;
      *(v84 + 16) = 0x80000001B1C52490;
      swift_willThrow();
    }
  }

  else
  {
    sub_1B1A9EC9C();
    v66 = swift_allocError();
    OUTLINED_FUNCTION_8_26(v66, v67);
    *(v68 + 8) = v69;
    *(v68 + 16) = 0x80000001B1C52460;
    swift_willThrow();
  }
}

unint64_t sub_1B1BD1EFC(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v4 = SynthesizingRequestProtocol.synthesisProfile.getter(ObjectType);
  sub_1B1ADD454(a2 + 72, v11);
  v5 = v12;
  if (!v12)
  {
    sub_1B1ADA260(v11);
LABEL_6:
    if (!v4)
    {
      return v4;
    }

    goto LABEL_9;
  }

  v6 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  v7 = (*(v6 + 8))(v5, v6);
  v9 = v8;
  __swift_destroy_boxed_opaque_existential_0(v11);
  if (v9)
  {
    goto LABEL_6;
  }

  if (!v4)
  {
    v4 = v7;
LABEL_9:
    sub_1B1BD0A08(v4);
    return v4;
  }

  return 0;
}

void sub_1B1BD1FC0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (qword_1ED9A9288 != -1)
  {
    swift_once();
  }

  v6 = sub_1B1C2C8A8();
  __swift_project_value_buffer(v6, qword_1ED9A9120);

  v7 = sub_1B1C2C888();
  v8 = sub_1B1C2D098();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_1B1A930E4(a1, a2, &v13);
    _os_log_impl(&dword_1B1A8A000, v7, v8, "Synthesized with prompt: '%s'", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1B2739FD0](v10, -1, -1);
    MEMORY[0x1B2739FD0](v9, -1, -1);
  }

  v11 = *(a3 + 48);
  if (v11)
  {
    if (qword_1ED9A4DB0 != -1)
    {
      swift_once();
    }

    v12 = qword_1ED9A4DB8;

    [v11 postNotificationName:v12 object:0];
  }
}

uint64_t sub_1B1BD2190(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = sub_1B1C2CB58();
  v5 = v4;

  v2(v3, v5);
}

uint64_t sub_1B1BD21FC(uint64_t a1)
{
  if (qword_1ED9A9288 != -1)
  {
    swift_once();
  }

  v2 = sub_1B1C2C8A8();
  __swift_project_value_buffer(v2, qword_1ED9A9120);
  v3 = sub_1B1C2C888();
  v4 = sub_1B1C2D0B8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1B1A8A000, v3, v4, "Encountered word alignment failure, word timing info will be ignored", v5, 2u);
    MEMORY[0x1B2739FD0](v5, -1, -1);
  }

  result = swift_beginAccess();
  *(a1 + 16) = 1;
  return result;
}

void sub_1B1BD22FC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (qword_1ED9A9288 != -1)
  {
    swift_once();
  }

  v10 = sub_1B1C2C8A8();
  __swift_project_value_buffer(v10, qword_1ED9A9120);

  v11 = sub_1B1C2C888();
  v12 = sub_1B1C2D0D8();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v17 = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_1B1A930E4(a1, a2, &v17);
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_1B1A930E4(a3, a4, &v17);
    _os_log_impl(&dword_1B1A8A000, v11, v12, "Received dynamic prompt usage status. voicePrompt:%s, stylePrompt:%s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2739FD0](v14, -1, -1);
    MEMORY[0x1B2739FD0](v13, -1, -1);
  }

  v15 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v15 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v15 && *(a5 + 48))
  {
    if (qword_1EB760FC0 != -1)
    {
      swift_once();
    }

    sub_1B1B18D54();
  }

  v16 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v16 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v16 && *(a5 + 48))
  {
    if (qword_1EB760FD8 != -1)
    {
      swift_once();
    }

    sub_1B1B18D54();
  }
}

uint64_t sub_1B1BD255C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = sub_1B1C2CB58();
  v5 = v4;
  v6 = sub_1B1C2CB58();
  v8 = v7;

  v2(v3, v5, v6, v8);
}

uint64_t sub_1B1BD25F4(uint64_t a1, uint64_t a2)
{
  if (qword_1ED9A9288 != -1)
  {
    swift_once();
  }

  v4 = sub_1B1C2C8A8();
  __swift_project_value_buffer(v4, qword_1ED9A9120);
  v5 = sub_1B1C2C888();
  v6 = sub_1B1C2D0D8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1B1A8A000, v5, v6, "Detected quality issue in synthesized audio data.", v7, 2u);
    MEMORY[0x1B2739FD0](v7, -1, -1);
  }

  if (a1 == 2)
  {
    if (!*(a2 + 48))
    {
      return 0;
    }

    if (qword_1ED9A4E28 != -1)
    {
      swift_once();
    }

    sub_1B1AC638C();
    v8 = 0;
    goto LABEL_16;
  }

  if (a1 == 1 && *(a2 + 48))
  {
    if (qword_1ED9A4E28 != -1)
    {
      swift_once();
    }

    sub_1B1AC638C();
    v8 = 1;
LABEL_16:

    return v8;
  }

  return 1;
}

uint64_t sub_1B1BD27B4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  LOBYTE(a2) = v4(a2);

  return a2 & 1;
}

uint64_t sub_1B1BD2804(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v34[3] = *MEMORY[0x1E69E9840];
  v12 = a3;
  sub_1B1BD0E68(a3);
  if (qword_1ED9A4D38 != -1)
  {
    swift_once();
  }

  v13 = qword_1ED9A4D40;

  sub_1B1B34568(v13, sub_1B1BD2EF0, a1);

  v34[0] = 0;
  v14 = [v12 synthesize:a4 error:v34];
  v15 = v34[0];
  if (v14)
  {
    swift_beginAccess();
    if (*(a5 + 16))
    {
      v16 = objc_allocWithZone(type metadata accessor for AudioData());
      v17 = v15;
      v18 = [v16 init];
      type metadata accessor for DataContainer();
      v19 = swift_allocObject();
      *(v19 + 16) = sub_1B1C2CAB8();
      v20 = v18;
      sub_1B1ACC2E4(v18);
      v21 = a6;
      sub_1B1AD7464(a6);
      v24 = sub_1B1AA95A0(v22, v23);
      sub_1B1AA795C(v24);
      v25 = sub_1B1AA9644();
      sub_1B1AA9764(v25);
      sub_1B1AA81A8();
    }

    else if (*(a1 + 48))
    {
      v30 = qword_1EB761020;
      v31 = v15;
      if (v30 != -1)
      {
        swift_once();
      }

      sub_1B1AC638C();
    }

    else
    {
      v26 = v15;
    }

    sub_1B1ADA1CC(v26);
  }

  else
  {
    v27 = v34[0];
    v28 = sub_1B1C2C058();

    swift_willThrow();
    if (*(a1 + 48))
    {
      if (qword_1EB761020 != -1)
      {
        swift_once();
      }

      sub_1B1B18DB8();
    }

    v29 = v28;
    sub_1B1BD0978(v28);
    if (*(a1 + 112))
    {
      sub_1B1B231C4(0);
    }
  }

  result = sub_1B1BD2B30(a1, (a2 + 16));
  v33 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B1BD2B30(uint64_t a1, uint64_t *a2)
{
  sub_1B1BD0E68(0);
  if (*(a1 + 48))
  {
    if (qword_1ED9A4E88 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v4 = *a2;
    sub_1B1ADED40();
  }

  return sub_1B1B3456C(0);
}

uint64_t sub_1B1BD2C34@<X0>(uint64_t *a1@<X8>)
{
  result = DeviceSynthesisAction.__allocating_init(pool:)();
  *a1 = result;
  return result;
}

void sub_1B1BD2CA4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1B1C2CB28();

  [a3 setRequestId_];
}

unint64_t sub_1B1BD2D78()
{
  result = qword_1ED9A8DC0;
  if (!qword_1ED9A8DC0)
  {
    sub_1B1C2C988();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9A8DC0);
  }

  return result;
}

uint64_t sub_1B1BD2F2C(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v34 - v24;
  v26 = sub_1B1C2CFA8();
  if (!v26)
  {
    return sub_1B1C2CEA8();
  }

  v48 = v26;
  v52 = sub_1B1C2D5F8();
  v39 = sub_1B1C2D608();
  sub_1B1C2D5A8();
  result = sub_1B1C2CF98();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_1B1C2CFF8();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_1B1C2D5E8();
      result = sub_1B1C2CFB8();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1BD3348(uint64_t a1)
{
  v2 = *(a1 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  sub_1B1AE06E4(0, v2, 0);
  v3 = v10;
  v4 = a1 + 32;
  if (v2)
  {
    while (1)
    {
      sub_1B1A93378(v4, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761C30, &unk_1B1C38180);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v10 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1B1AE06E4(v5 > 1, v6 + 1, 1);
        v3 = v10;
      }

      *(v3 + 16) = v6 + 1;
      *(v3 + 8 * v6 + 32) = v8;
      v4 += 32;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

char *sub_1B1BD3470(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    goto LABEL_8;
  }

  v2 = sub_1B1A8EB10();
  if ((v3 & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_1B1A93378(*(a1 + 56) + 32 * v2, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F10, &unk_1B1C37DA0);
  if ((OUTLINED_FUNCTION_0_36() & 1) == 0)
  {
    goto LABEL_8;
  }

  if (!v13[2])
  {

LABEL_8:

    return 0;
  }

  v4 = v13[4];
  v5 = v13[5];

  sub_1B1A93AEC(1701667150, 0xE400000000000000, a1);
  if (v15)
  {
    OUTLINED_FUNCTION_0_36();
  }

  else
  {
    sub_1B1A90C78(v14, &qword_1EB761DE0, &qword_1B1C352C0);
  }

  v8 = objc_allocWithZone(type metadata accessor for SynthesisVoice());
  v6 = SynthesisVoice.init(language:name:)();
  sub_1B1A93AEC(1701869908, 0xE400000000000000, a1);

  if (v15)
  {
    if (OUTLINED_FUNCTION_0_36())
    {
      v9 = SynthesisVoice.VoiceType.init(rawValue:)(v13);
      if ((v10 & 1) == 0)
      {
        v11 = v9;
        v12 = OBJC_IVAR___SiriTTSSynthesisVoice_type;
        swift_beginAccess();
        *&v6[v12] = v11;
      }
    }
  }

  else
  {
    sub_1B1A90C78(v14, &qword_1EB761DE0, &qword_1B1C352C0);
  }

  return v6;
}

uint64_t sub_1B1BD365C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB762470, &qword_1B1C35D80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B1C361C0;
  *(inited + 32) = 0x65676175676E614CLL;
  *(inited + 40) = 0xE900000000000073;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761C70, &qword_1B1C36250);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B1C361C0;
  v4 = (v1 + OBJC_IVAR___SiriTTSSynthesisVoice_language);
  OUTLINED_FUNCTION_65();
  v5 = *v4;
  v6 = v4[1];
  *(v3 + 32) = v5;
  *(v3 + 40) = v6;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F10, &unk_1B1C37DA0);
  *(inited + 48) = v3;

  v7 = MEMORY[0x1E69E6158];
  v8 = sub_1B1C2CAB8();
  v9 = (v1 + OBJC_IVAR___SiriTTSSynthesisVoice_name);
  OUTLINED_FUNCTION_65();
  v10 = v9[1];
  if (v10)
  {
    v11 = *v9;
    v17 = v7;
    *&v16 = v11;
    *(&v16 + 1) = v10;
    sub_1B1A9EEE0(&v16, v15);

    swift_isUniquelyReferenced_nonNull_native();
    v18 = v8;
    sub_1B1A9EEF0();
    v8 = v18;
  }

  v12 = OBJC_IVAR___SiriTTSSynthesisVoice_type;
  OUTLINED_FUNCTION_65();
  v13 = *(v1 + v12);
  if (v13)
  {
    v17 = MEMORY[0x1E69E6530];
    *&v16 = v13;
    sub_1B1A9EEE0(&v16, v15);
    swift_isUniquelyReferenced_nonNull_native();
    sub_1B1A9EEF0();
  }

  return v8;
}

void *sub_1B1BD385C(uint64_t a1)
{
  v7 = sub_1B1BDDD5C(a1);
  sub_1B1BD52CC(&v7);
  v1 = v7;
  v2 = v7[2];
  if (v2)
  {
    v7 = MEMORY[0x1E69E7CC0];
    sub_1B1C2D5B8();
    v3 = 5;
    do
    {
      v4 = v1[v3];
      sub_1B1C2D588();
      v5 = v7[2];
      sub_1B1C2D5C8();
      sub_1B1C2D5D8();
      sub_1B1C2D598();
      v3 += 2;
      --v2;
    }

    while (v2);

    return v7;
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t RandomAccessCollection.stableSorted(by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(*(a4 + 8) + 8) + 8);
  v9 = sub_1B1C2D678();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v21[-v12];
  MEMORY[0x1B27382F0](a3, v8);
  v24 = a3;
  v25 = a4;
  v26 = a1;
  v27 = a2;
  swift_getWitnessTable();
  v14 = sub_1B1C2CE48();
  (*(v10 + 8))(v13, v9);
  v28 = v14;
  v22 = a3;
  v23 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  v16 = sub_1B1C2CEF8();
  WitnessTable = swift_getWitnessTable();
  v19 = sub_1B1BD2F2C(sub_1B1BD3E08, v21, v16, AssociatedTypeWitness, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v18);

  return v19;
}

BOOL sub_1B1BD3B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = a2;
  v9 = a4;
  v6 = sub_1B1BD3ED0(&v10, &v9);
  if (v6 == 2)
  {
    return a1 < a3;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_1B1BD3BD0(char *a1, char *a2, uint64_t (*a3)(char *, char *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(*(*(a6 + 8) + 8) + 8);
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = a3(&a1[*(TupleTypeMetadata2 + 48)], &a2[*(TupleTypeMetadata2 + 48)]);
  if (v11 == 2)
  {
    v11 = *a1 < *a2;
  }

  return v11 & 1;
}

uint64_t sub_1B1BD3CB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(*(*(a2 + 8) + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = *(*(TupleTypeMetadata2 - 8) + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1, TupleTypeMetadata2);
  return (*(*(AssociatedTypeWitness - 8) + 32))(a3, &v10[*(TupleTypeMetadata2 + 48)], AssociatedTypeWitness);
}

id sub_1B1BD3E50()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E695E000]) init];
  *&v0[OBJC_IVAR___SiriTTSPreferences_defaults] = v1;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for Preferences();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_1B1BD3ED0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = (*a1 + OBJC_IVAR___SiriTTSVoiceSubscription_accessoryId);
  swift_beginAccess();
  v6 = *v4;
  v5 = v4[1];
  v7 = (v3 + OBJC_IVAR___SiriTTSVoiceSubscription_accessoryId);
  swift_beginAccess();
  v9 = *v7;
  v8 = v7[1];
  if (v5)
  {
    if (!v8 || (v6 == v9 ? (v10 = v5 == v8) : (v10 = 0), !v10 && (sub_1B1C2D7A8() & 1) == 0))
    {
LABEL_18:
      v11 = v5;
      goto LABEL_19;
    }
  }

  else if (v8)
  {
    goto LABEL_10;
  }

  v12 = (v2 + OBJC_IVAR___SiriTTSVoiceSubscription_clientId);
  swift_beginAccess();
  v13 = *v12;
  v14 = v12[1];
  v15 = (v3 + OBJC_IVAR___SiriTTSVoiceSubscription_clientId);
  swift_beginAccess();
  v16 = v13 == *v15 && v14 == v15[1];
  if (v16 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 2;
  }

  if (v5)
  {
    goto LABEL_18;
  }

LABEL_10:
  v6 = 0;
  v11 = 0xE000000000000000;
LABEL_19:
  v18 = (v2 + OBJC_IVAR___SiriTTSVoiceSubscription_clientId);
  swift_beginAccess();
  v20 = *v18;
  v19 = v18[1];
  if (v8)
  {
    v21 = v9;
  }

  else
  {
    v21 = 0;
  }

  if (v8)
  {
    v22 = v8;
  }

  else
  {
    v22 = 0xE000000000000000;
  }

  v23 = (v3 + OBJC_IVAR___SiriTTSVoiceSubscription_clientId);
  swift_beginAccess();
  v25 = *v23;
  v24 = v23[1];
  v26 = v6 == v21 && v11 == v22;
  if (v26 || (sub_1B1C2D7A8() & 1) != 0)
  {

    if (v20 == v25 && v19 == v24)
    {
      v28 = 0;
    }

    else
    {
      v28 = sub_1B1C2D7A8();
    }
  }

  else
  {
    v28 = sub_1B1C2D7A8();
  }

  return v28 & 1;
}

void sub_1B1BD4148(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7628F0, &unk_1B1C39750);
  v2 = sub_1B1C2CAB8();
  v63 = sub_1B1A9547C(a1);
  if (v63)
  {
    v3 = 0;
    v61 = a1;
    v62 = a1 & 0xC000000000000001;
    v60 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v62)
      {
        v4 = MEMORY[0x1B2738A20](v3, a1);
      }

      else
      {
        if (v3 >= *(v60 + 16))
        {
          goto LABEL_54;
        }

        v4 = *(a1 + 8 * v3 + 32);
      }

      v5 = v4;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v6 = &v4[OBJC_IVAR___SiriTTSVoiceSubscription_accessoryId];
      OUTLINED_FUNCTION_65();
      if (*(v6 + 1))
      {
        v7 = *v6;
        v8 = *(v6 + 1);
      }

      v9 = &v5[OBJC_IVAR___SiriTTSVoiceSubscription_clientId];
      OUTLINED_FUNCTION_65();
      v10 = *(v9 + 1);
      v65 = *v9;
      v11 = v2[2];

      if (!v11 || (OUTLINED_FUNCTION_1_37(), sub_1B1A8EB10(), (v12 & 1) == 0))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7624F0, &qword_1B1C38030);
        sub_1B1C2CAB8();
        swift_isUniquelyReferenced_nonNull_native();
        sub_1B1B37A0C();
      }

      if (!v2[2])
      {
        goto LABEL_46;
      }

      OUTLINED_FUNCTION_1_37();
      v13 = sub_1B1A8EB10();
      if ((v14 & 1) == 0)
      {
        goto LABEL_47;
      }

      v64 = v3 + 1;
      if (!*(*(v2[7] + 8 * v13) + 16) || (, sub_1B1A8EB10(), v16 = v15, , (v16 & 1) == 0))
      {
        v17 = v5;
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_1_37();
        sub_1B1A8EB10();
        v18 = v2[2];
        OUTLINED_FUNCTION_2_33();
        if (__OFADD__(v21, v22))
        {
          goto LABEL_52;
        }

        v23 = v19;
        v24 = v20;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762550, &qword_1B1C38108);
        if (sub_1B1C2D628())
        {
          OUTLINED_FUNCTION_1_37();
          v25 = sub_1B1A8EB10();
          if ((v24 & 1) != (v26 & 1))
          {
            goto LABEL_55;
          }

          v23 = v25;
        }

        if ((v24 & 1) == 0)
        {
          goto LABEL_53;
        }

        v27 = *(v2[7] + 8 * v23);
        swift_isUniquelyReferenced_nonNull_native();
        sub_1B1B379F8();
        if (v27)
        {
          *(v2[7] + 8 * v23) = v27;
        }

        else
        {
          sub_1B1BD640C(v2[6] + 16 * v23);
          sub_1B1C2D648();
        }

        v5 = v17;
      }

      v28 = OBJC_IVAR___SiriTTSVoiceSubscription_voice;
      OUTLINED_FUNCTION_65();
      v29 = v5;
      v30 = *&v5[v28];
      v31 = sub_1B1BD365C();

      swift_isUniquelyReferenced_nonNull_native();
      v67 = v2;
      OUTLINED_FUNCTION_1_37();
      sub_1B1A8EB10();
      v32 = v2[2];
      OUTLINED_FUNCTION_2_33();
      if (__OFADD__(v35, v36))
      {
        goto LABEL_48;
      }

      v37 = v33;
      v38 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762550, &qword_1B1C38108);
      if (sub_1B1C2D628())
      {
        OUTLINED_FUNCTION_1_37();
        v39 = sub_1B1A8EB10();
        if ((v38 & 1) != (v40 & 1))
        {
          goto LABEL_55;
        }

        v37 = v39;
      }

      if ((v38 & 1) == 0)
      {
        goto LABEL_49;
      }

      v41 = *(v2[7] + 8 * v37);
      swift_isUniquelyReferenced_nonNull_native();
      v66 = v41;
      sub_1B1A8EB10();
      v42 = *(v41 + 16);
      OUTLINED_FUNCTION_2_33();
      if (__OFADD__(v45, v46))
      {
        goto LABEL_50;
      }

      v47 = v43;
      v48 = v44;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762548, &qword_1B1C38100);
      if (sub_1B1C2D628())
      {
        v49 = sub_1B1A8EB10();
        if ((v48 & 1) != (v50 & 1))
        {
          goto LABEL_55;
        }

        v47 = v49;
      }

      if ((v48 & 1) == 0)
      {
        goto LABEL_51;
      }

      v51 = *(*(v41 + 56) + 8 * v47);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B1B04A94(0, v51[2] + 1, 1, v51);
        v51 = v54;
      }

      v53 = v51[2];
      v52 = v51[3];
      if (v53 >= v52 >> 1)
      {
        sub_1B1B04A94(v52 > 1, v53 + 1, 1, v51);
        v51 = v55;
      }

      v51[2] = v53 + 1;
      v51[v53 + 4] = v31;

      *(*(v66 + 56) + 8 * v47) = v51;

      if (v66)
      {

        v2 = v67;
        *(v67[7] + 8 * v37) = v66;
      }

      else
      {

        v2 = v67;
        sub_1B1BD640C(v67[6] + 16 * v37);
        sub_1B1C2D648();
      }

      a1 = v61;

      ++v3;
      if (v64 == v63)
      {
        goto LABEL_44;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
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
LABEL_55:
    sub_1B1C2D818();
    __break(1u);
  }

  else
  {
LABEL_44:
    v56 = *(v59 + OBJC_IVAR___SiriTTSPreferences_defaults);
    v57 = sub_1B1C2CA78();
    v58 = sub_1B1C2CB28();

    [v56 setObject:v57 forKey:v58];
  }
}

uint64_t sub_1B1BD47A4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1B1BD47D8(v4);
}

uint64_t sub_1B1BD47D8(uint64_t a1)
{
  sub_1B1BD4148(a1);
}

uint64_t (*sub_1B1BD4814(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1B1AF7348();
  return sub_1B1BD4860;
}

uint64_t sub_1B1BD4868(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1B1BD489C(v4);
}

uint64_t sub_1B1BD489C(uint64_t a1)
{
  sub_1B1BD4148(a1);
}

uint64_t (*sub_1B1BD48D8(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1B1AF7348();
  return sub_1B1BD4924;
}

uint64_t sub_1B1BD492C(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = *a1;
  if (a2)
  {

    sub_1B1BD4148(v4);
  }

  else
  {
    sub_1B1BD4148(v3);
  }
}

void sub_1B1BD4994(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4E562D6976 && a2 == 0xE500000000000000;
  if (v4 || (sub_1B1C2D7A8() & 1) != 0)
  {

    sub_1B1BD4A9C(a1, a2, 0xD00000000000001BLL, 0x80000001B1C48330);
  }
}

void sub_1B1BD4A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(v4 + OBJC_IVAR___SiriTTSPreferences_defaults);
  v9 = sub_1B1C2CB28();
  v10 = [v8 dictionaryForKey_];

  if (!v10)
  {
    v32 = 0u;
    v33 = 0u;
    goto LABEL_20;
  }

  v11 = sub_1B1C2CA98();

  sub_1B1A93AEC(0, 0xE000000000000000, v11);

  if (!*(&v33 + 1))
  {
LABEL_20:
    sub_1B1A90C78(&v32, &qword_1EB761DE0, &qword_1B1C352C0);
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB763FC8, &qword_1B1C40A40);
  if (OUTLINED_FUNCTION_6_26())
  {
    v12 = sub_1B1AE795C(a3, a4);

    if (v12)
    {
      v13 = sub_1B1BD3348(v12);

      if (v13)
      {
        v14 = 0;
        v15 = *(v13 + 16);
        v16 = v13 + 32;
        OUTLINED_FUNCTION_8_27();
        v28 = v15;
        v29 = v13;
        v27 = v13 + 32;
        while (1)
        {
LABEL_7:
          if (v14 == v15)
          {

            return;
          }

          if (v14 >= *(v13 + 16))
          {
            break;
          }

          v17 = *(v16 + 8 * v14++);
          if (*(v17 + 16))
          {

            v18 = sub_1B1A8EB10();
            if (v19)
            {
              sub_1B1A93378(*(v17 + 56) + 32 * v18, &v32);
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F10, &unk_1B1C37DA0);
              if (OUTLINED_FUNCTION_6_26())
              {
                v20 = (v31 + 40);
                v21 = -*(v31 + 16);
                v22 = -1;
                while (1)
                {
                  if (v21 + v22 == -1)
                  {

                    v15 = v28;
                    v13 = v29;
                    v16 = v27;
                    OUTLINED_FUNCTION_8_27();
                    goto LABEL_7;
                  }

                  if (++v22 >= *(v31 + 16))
                  {
                    break;
                  }

                  v23 = v20 + 2;
                  v24 = *(v20 - 1);
                  v25 = *v20;
                  type metadata accessor for AssistantAsset();

                  v26 = sub_1B1B65974(a1, a2, v24, v25);

                  v20 = v23;
                  if (v26)
                  {

                    return;
                  }
                }

                __break(1u);
                break;
              }
            }
          }
        }

        __break(1u);
      }
    }
  }
}

void sub_1B1BD4D78()
{
  v1 = *(v0 + OBJC_IVAR___SiriTTSPreferences_defaults);
  v2 = sub_1B1C2CB28();
  v3 = [v1 dictionaryForKey_];

  if (v3)
  {
    v4 = sub_1B1C2CA98();

    v5 = sub_1B1A8EB10();
    if (v6)
    {
      v7 = v5;
      swift_isUniquelyReferenced_nonNull_native();
      v8 = v4[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB762480, &unk_1B1C37E50);
      sub_1B1C2D628();
      v9 = *(v4[6] + 16 * v7 + 8);

      sub_1B1A9EEE0((v4[7] + 32 * v7), &v22);
      sub_1B1C2D648();
    }

    else
    {
      v22 = 0u;
      v23 = 0u;
    }

    sub_1B1A90C78(&v22, &qword_1EB761DE0, &qword_1B1C352C0);
    v10 = sub_1B1C2CA78();

    v11 = sub_1B1C2CB28();
    [v1 setObject:v10 forKey:v11];
  }

  v12 = sub_1B1C2CB28();
  v13 = [v1 dictionaryForKey_];

  if (v13)
  {
    v14 = sub_1B1C2CA98();

    v15 = sub_1B1A8EB10();
    if (v16)
    {
      v17 = v15;
      swift_isUniquelyReferenced_nonNull_native();
      v18 = v14[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB762480, &unk_1B1C37E50);
      sub_1B1C2D628();
      v19 = *(v14[6] + 16 * v17 + 8);

      sub_1B1A9EEE0((v14[7] + 32 * v17), &v22);
      sub_1B1C2D648();
    }

    else
    {
      v22 = 0u;
      v23 = 0u;
    }

    sub_1B1A90C78(&v22, &qword_1EB761DE0, &qword_1B1C352C0);
    v20 = sub_1B1C2CA78();

    v21 = sub_1B1C2CB28();
    [v1 setObject:v20 forKey:v21];
  }
}

uint64_t sub_1B1BD52CC(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1B1BDE510(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1B1BD5338(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_1B1BD5338(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1B1C2D768();
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7624A0, &unk_1B1C37E80);
        v6 = sub_1B1C2CEB8();
        *(v6 + 16) = v5;
      }

      v49[0] = (v6 + 32);
      v49[1] = v5;
      sub_1B1BD5728(v49, v48, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
    goto LABEL_56;
  }

  if (v2 < 0)
  {
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    return result;
  }

  if (v2 < 2)
  {
    return result;
  }

  v39 = v2;
  v7 = *a1;
  v8 = -1;
  v9 = 1;
  v43 = *a1;
  do
  {
    v41 = v9;
    v42 = v8;
    v10 = (v43 + 16 * v9);
    v11 = *v10;
    v12 = v10[1];
    v13 = v8;
    v40 = v7;
    while (1)
    {
      v14 = v7[1];
      v45 = *v7;
      v15 = (v12 + OBJC_IVAR___SiriTTSVoiceSubscription_accessoryId);
      swift_beginAccess();
      v17 = *v15;
      v16 = v15[1];
      v50 = v14;
      v18 = (v14 + OBJC_IVAR___SiriTTSVoiceSubscription_accessoryId);
      swift_beginAccess();
      v19 = v18[1];
      v46 = *v18;
      v47 = v13;
      if (v16)
      {
        if (!v19)
        {
          goto LABEL_27;
        }

        v20 = v17 == *v18 && v16 == v19;
        if (!v20 && (sub_1B1C2D7A8() & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      else if (v19)
      {
        goto LABEL_18;
      }

      v21 = (v12 + OBJC_IVAR___SiriTTSVoiceSubscription_clientId);
      swift_beginAccess();
      v22 = *v21;
      v23 = v21[1];
      v24 = (v50 + OBJC_IVAR___SiriTTSVoiceSubscription_clientId);
      result = swift_beginAccess();
      if (v22 != *v24 || v23 != v24[1])
      {
        result = sub_1B1C2D7A8();
        if ((result & 1) == 0)
        {
          break;
        }
      }

      v26 = v47;
      if (v11 >= v45)
      {
        goto LABEL_50;
      }

LABEL_45:
      if (!v43)
      {
        goto LABEL_57;
      }

      v11 = v7[2];
      v12 = v7[3];
      *(v7 + 1) = *v7;
      *v7 = v11;
      v7[1] = v12;
      v7 -= 2;
      v38 = __CFADD__(v26, 1);
      v13 = v26 + 1;
      if (v38)
      {
        goto LABEL_50;
      }
    }

    if (!v16)
    {
LABEL_18:
      v17 = 0;
      v16 = 0xE000000000000000;
    }

LABEL_27:
    v27 = (v12 + OBJC_IVAR___SiriTTSVoiceSubscription_clientId);
    swift_beginAccess();
    v28 = v27[1];
    v44 = *v27;
    if (v19)
    {
      v29 = v46;
    }

    else
    {
      v29 = 0;
    }

    if (v19)
    {
      v30 = v19;
    }

    else
    {
      v30 = 0xE000000000000000;
    }

    v31 = (v50 + OBJC_IVAR___SiriTTSVoiceSubscription_clientId);
    swift_beginAccess();
    v33 = *v31;
    v32 = v31[1];
    v34 = v17 == v29 && v16 == v30;
    if (!v34 && (sub_1B1C2D7A8() & 1) == 0)
    {
      v37 = sub_1B1C2D7A8();

      v26 = v47;
      if ((v37 & 1) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_45;
    }

    if (v44 != v33 || v28 != v32)
    {
      v36 = sub_1B1C2D7A8();

      v26 = v47;
      if ((v36 & 1) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_45;
    }

LABEL_50:
    v9 = v41 + 1;
    v7 = v40 + 2;
    v8 = v42 - 1;
  }

  while (v41 + 1 != v39);
  return result;
}

void sub_1B1BD5728(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_162:
    v165 = *a1;
    if (!*a1)
    {
      goto LABEL_204;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_164:
      v134 = (v8 + 16);
      v135 = *(v8 + 16);
      while (v135 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_201;
        }

        v136 = v8;
        v137 = (v8 + 16 * v135);
        v138 = *v137;
        v139 = &v134[2 * v135];
        v8 = *(v139 + 1);
        sub_1B1BD6230((*a3 + 16 * *v137), (*a3 + 16 * *v139), (*a3 + 16 * v8), v165);
        if (v5)
        {
          break;
        }

        if (v8 < v138)
        {
          goto LABEL_189;
        }

        if (v135 - 2 >= *v134)
        {
          goto LABEL_190;
        }

        *v137 = v138;
        v137[1] = v8;
        v140 = *v134 - v135;
        if (*v134 < v135)
        {
          goto LABEL_191;
        }

        v135 = *v134 - 1;
        sub_1B1BDD81C(v139 + 16, v140, v139);
        *v134 = v135;
        v8 = v136;
      }

LABEL_172:

      return;
    }

LABEL_198:
    v8 = sub_1B1BDD728(v8);
    goto LABEL_164;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v150 = v7;
    if (v7 + 1 >= v6)
    {
      v19 = v7 + 1;
      goto LABEL_57;
    }

    v152 = v6;
    v9 = *a3 + 16 * (v7 + 1);
    v10 = *v9;
    v11 = (*a3 + 16 * v7);
    v12 = v7;
    v14 = *v11;
    v13 = v11[1];
    v15 = *(v9 + 8);
    v16 = v13;
    v154 = sub_1B1BD3B6C(v10, v15, v14, v16);
    if (v5)
    {

      return;
    }

    v17 = v12 + 2;
    v160 = 16 * v12;
    v18 = v11 + 5;
    v7 = v12;
    v148 = v8;
    while (1)
    {
      v19 = v152;
      if (v17 >= v152)
      {
        break;
      }

      v162 = v18;
      v163 = v17;
      v20 = *v18;
      v156 = *(v18 - 1);
      v22 = *(v18 - 3);
      v21 = *(v18 - 2);
      v23 = (*v18 + OBJC_IVAR___SiriTTSVoiceSubscription_accessoryId);
      swift_beginAccess();
      v25 = *v23;
      v24 = v23[1];
      v165 = v21;
      v26 = &v21[OBJC_IVAR___SiriTTSVoiceSubscription_accessoryId];
      swift_beginAccess();
      v27 = *v26;
      v28 = *(v26 + 1);
      if (v24)
      {
        if (!v28)
        {
          goto LABEL_24;
        }

        if (v25 != v27 || v24 != v28)
        {
          v30 = *v26;
          v31 = *(v26 + 1);
          if ((sub_1B1C2D7A8() & 1) == 0)
          {
            goto LABEL_24;
          }
        }
      }

      else if (v28)
      {
        goto LABEL_16;
      }

      v33 = (v20 + OBJC_IVAR___SiriTTSVoiceSubscription_clientId);
      swift_beginAccess();
      v34 = *v33;
      v35 = v33[1];
      v36 = &v21[OBJC_IVAR___SiriTTSVoiceSubscription_clientId];
      swift_beginAccess();
      v37 = v34 == *v36 && v35 == *(v36 + 1);
      if (v37 || (sub_1B1C2D7A8() & 1) != 0)
      {
        v38 = v156 < v22;
        goto LABEL_45;
      }

      if (v24)
      {
LABEL_24:
        v32 = v24;
        goto LABEL_25;
      }

LABEL_16:
      v25 = 0;
      v32 = 0xE000000000000000;
LABEL_25:
      v39 = (v20 + OBJC_IVAR___SiriTTSVoiceSubscription_clientId);
      swift_beginAccess();
      v40 = v39[1];
      v157 = *v39;
      if (v28)
      {
        v41 = v27;
      }

      else
      {
        v41 = 0;
      }

      if (v28)
      {
        v42 = v28;
      }

      else
      {
        v42 = 0xE000000000000000;
      }

      v43 = &v165[OBJC_IVAR___SiriTTSVoiceSubscription_clientId];
      swift_beginAccess();
      v44 = *v43;
      v45 = *(v43 + 1);
      v46 = v25 == v41 && v32 == v42;
      if (v46 || (sub_1B1C2D7A8() & 1) != 0)
      {

        if (v157 == v44 && v40 == v45)
        {

          v8 = v148;
          v7 = v150;
          v48 = v163;
          if (v154)
          {
            v19 = v163;
            v5 = 0;
            goto LABEL_50;
          }

          goto LABEL_46;
        }

        v38 = sub_1B1C2D7A8();
      }

      else
      {
        v38 = sub_1B1C2D7A8();
      }

LABEL_45:
      v8 = v148;
      v7 = v150;
      v48 = v163;
      if ((v154 ^ v38))
      {
        v19 = v163;
        break;
      }

LABEL_46:
      v17 = v48 + 1;
      v18 = v162 + 2;
    }

    v5 = 0;
    if (!v154)
    {
      goto LABEL_57;
    }

LABEL_50:
    if (v19 < v7)
    {
      goto LABEL_195;
    }

    if (v7 < v19)
    {
      v49 = 0;
      v50 = 16 * v19;
      v51 = v7;
      do
      {
        if (v51 != v19 + v49 - 1)
        {
          v52 = *a3;
          if (!*a3)
          {
            goto LABEL_202;
          }

          v53 = (v52 + v160);
          v54 = v52 + v50;
          v55 = *v53;
          v56 = v53[1];
          *v53 = *(v54 - 16);
          *(v54 - 16) = v55;
          *(v54 - 8) = v56;
        }

        ++v51;
        --v49;
        v50 -= 16;
        v160 += 16;
      }

      while (v51 < v19 + v49);
    }

LABEL_57:
    v57 = a3[1];
    if (v19 >= v57)
    {
      goto LABEL_110;
    }

    if (__OFSUB__(v19, v7))
    {
      goto LABEL_194;
    }

    if (v19 - v7 >= a4)
    {
LABEL_110:
      if (v19 < v7)
      {
        goto LABEL_193;
      }

      v145 = v19;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v131 = *(v8 + 16);
        sub_1B1B04838();
        v8 = v132;
      }

      v89 = *(v8 + 16);
      v90 = v89 + 1;
      if (v89 >= *(v8 + 24) >> 1)
      {
        sub_1B1B04838();
        v8 = v133;
      }

      *(v8 + 16) = v90;
      v91 = v8 + 32;
      v92 = (v8 + 32 + 16 * v89);
      *v92 = v7;
      v92[1] = v145;
      v165 = *a1;
      if (!*a1)
      {
        goto LABEL_203;
      }

      if (!v89)
      {
LABEL_159:
        v6 = a3[1];
        v7 = v145;
        if (v145 >= v6)
        {
          goto LABEL_162;
        }

        continue;
      }

      while (1)
      {
        v93 = v90 - 1;
        v94 = (v91 + 16 * (v90 - 1));
        v95 = (v8 + 16 * v90);
        if (v90 >= 4)
        {
          break;
        }

        if (v90 == 3)
        {
          v96 = *(v8 + 32);
          v97 = *(v8 + 40);
          v106 = __OFSUB__(v97, v96);
          v98 = v97 - v96;
          v99 = v106;
LABEL_130:
          if (v99)
          {
            goto LABEL_180;
          }

          v111 = *v95;
          v110 = v95[1];
          v112 = __OFSUB__(v110, v111);
          v113 = v110 - v111;
          v114 = v112;
          if (v112)
          {
            goto LABEL_183;
          }

          v115 = v94[1];
          v116 = v115 - *v94;
          if (__OFSUB__(v115, *v94))
          {
            goto LABEL_186;
          }

          if (__OFADD__(v113, v116))
          {
            goto LABEL_188;
          }

          if (v113 + v116 >= v98)
          {
            if (v98 < v116)
            {
              v93 = v90 - 2;
            }

            goto LABEL_152;
          }

          goto LABEL_145;
        }

        if (v90 < 2)
        {
          goto LABEL_182;
        }

        v118 = *v95;
        v117 = v95[1];
        v106 = __OFSUB__(v117, v118);
        v113 = v117 - v118;
        v114 = v106;
LABEL_145:
        if (v114)
        {
          goto LABEL_185;
        }

        v120 = *v94;
        v119 = v94[1];
        v106 = __OFSUB__(v119, v120);
        v121 = v119 - v120;
        if (v106)
        {
          goto LABEL_187;
        }

        if (v121 < v113)
        {
          goto LABEL_159;
        }

LABEL_152:
        if (v93 - 1 >= v90)
        {
          __break(1u);
LABEL_175:
          __break(1u);
LABEL_176:
          __break(1u);
LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
LABEL_180:
          __break(1u);
LABEL_181:
          __break(1u);
LABEL_182:
          __break(1u);
LABEL_183:
          __break(1u);
LABEL_184:
          __break(1u);
LABEL_185:
          __break(1u);
LABEL_186:
          __break(1u);
LABEL_187:
          __break(1u);
LABEL_188:
          __break(1u);
LABEL_189:
          __break(1u);
LABEL_190:
          __break(1u);
LABEL_191:
          __break(1u);
LABEL_192:
          __break(1u);
LABEL_193:
          __break(1u);
LABEL_194:
          __break(1u);
LABEL_195:
          __break(1u);
LABEL_196:
          __break(1u);
          goto LABEL_197;
        }

        if (!*a3)
        {
          goto LABEL_200;
        }

        v125 = (v91 + 16 * (v93 - 1));
        v126 = *v125;
        v127 = v91 + 16 * v93;
        v128 = *(v127 + 8);
        sub_1B1BD6230((*a3 + 16 * *v125), (*a3 + 16 * *v127), (*a3 + 16 * v128), v165);
        if (v5)
        {
          goto LABEL_172;
        }

        if (v128 < v126)
        {
          goto LABEL_175;
        }

        v129 = v8;
        v8 = *(v8 + 16);
        if (v93 > v8)
        {
          goto LABEL_176;
        }

        *v125 = v126;
        v125[1] = v128;
        if (v93 >= v8)
        {
          goto LABEL_177;
        }

        v90 = v8 - 1;
        sub_1B1BDD81C((v127 + 16), v8 - 1 - v93, (v91 + 16 * v93));
        *(v129 + 16) = v8 - 1;
        v130 = v8 > 2;
        v8 = v129;
        if (!v130)
        {
          goto LABEL_159;
        }
      }

      v100 = v91 + 16 * v90;
      v101 = *(v100 - 64);
      v102 = *(v100 - 56);
      v106 = __OFSUB__(v102, v101);
      v103 = v102 - v101;
      if (v106)
      {
        goto LABEL_178;
      }

      v105 = *(v100 - 48);
      v104 = *(v100 - 40);
      v106 = __OFSUB__(v104, v105);
      v98 = v104 - v105;
      v99 = v106;
      if (v106)
      {
        goto LABEL_179;
      }

      v107 = v95[1];
      v108 = v107 - *v95;
      if (__OFSUB__(v107, *v95))
      {
        goto LABEL_181;
      }

      v106 = __OFADD__(v98, v108);
      v109 = v98 + v108;
      if (v106)
      {
        goto LABEL_184;
      }

      if (v109 >= v103)
      {
        v123 = *v94;
        v122 = v94[1];
        v106 = __OFSUB__(v122, v123);
        v124 = v122 - v123;
        if (v106)
        {
          goto LABEL_192;
        }

        if (v98 < v124)
        {
          v93 = v90 - 2;
        }

        goto LABEL_152;
      }

      goto LABEL_130;
    }

    break;
  }

  if (__OFADD__(v7, a4))
  {
    goto LABEL_196;
  }

  if (v7 + a4 < v57)
  {
    v57 = v7 + a4;
  }

  if (v57 < v7)
  {
LABEL_197:
    __break(1u);
    goto LABEL_198;
  }

  if (v19 == v57)
  {
    goto LABEL_110;
  }

  v144 = v57;
  v149 = v8;
  v142 = v5;
  v155 = *a3;
  v58 = (*a3 + 16 * v19);
  v59 = v7 - v19;
  while (2)
  {
    v153 = v19;
    v60 = (v155 + 16 * v19);
    v61 = *v60;
    v62 = v60[1];
    v146 = v59;
    v147 = v58;
LABEL_67:
    v164 = v59;
    v161 = *(v58 - 2);
    v63 = *(v58 - 1);
    v64 = (v62 + OBJC_IVAR___SiriTTSVoiceSubscription_accessoryId);
    swift_beginAccess();
    v65 = *v64;
    v66 = v64[1];
    v165 = v63;
    v67 = &v63[OBJC_IVAR___SiriTTSVoiceSubscription_accessoryId];
    swift_beginAccess();
    v68 = *v67;
    v69 = *(v67 + 1);
    if (!v66)
    {
      if (v69)
      {
        goto LABEL_76;
      }

      goto LABEL_77;
    }

    if (v69)
    {
      v70 = v65 == v68 && v66 == v69;
      if (v70 || (v71 = *v67, v72 = *(v67 + 1), (sub_1B1C2D7A8() & 1) != 0))
      {
LABEL_77:
        v158 = v65;
        v74 = (v62 + OBJC_IVAR___SiriTTSVoiceSubscription_clientId);
        swift_beginAccess();
        v75 = *v74;
        v76 = v74[1];
        v77 = &v165[OBJC_IVAR___SiriTTSVoiceSubscription_clientId];
        swift_beginAccess();
        v78 = v75 == *v77 && v76 == *(v77 + 1);
        if (v78 || (sub_1B1C2D7A8() & 1) != 0)
        {
          if (v61 >= v161)
          {
            goto LABEL_108;
          }

          goto LABEL_104;
        }

        v65 = v158;
        if (v66)
        {
          goto LABEL_85;
        }

LABEL_76:
        v73 = 0;
        v66 = 0xE000000000000000;
        goto LABEL_86;
      }
    }

LABEL_85:
    v73 = v65;
LABEL_86:
    v79 = (v62 + OBJC_IVAR___SiriTTSVoiceSubscription_clientId);
    swift_beginAccess();
    v80 = v79[1];
    v159 = *v79;
    if (v69)
    {
      v81 = v68;
    }

    else
    {
      v81 = 0;
    }

    if (v69)
    {
      v82 = v69;
    }

    else
    {
      v82 = 0xE000000000000000;
    }

    v83 = &v165[OBJC_IVAR___SiriTTSVoiceSubscription_clientId];
    swift_beginAccess();
    v84 = *v83;
    v85 = *(v83 + 1);
    v86 = v73 == v81 && v66 == v82;
    if (v86 || (sub_1B1C2D7A8() & 1) != 0)
    {

      if (v159 == v84 && v80 == v85)
      {

LABEL_108:
        v19 = v153 + 1;
        v58 = v147 + 2;
        v59 = v146 - 1;
        if (v153 + 1 == v144)
        {
          v5 = v142;
          v8 = v149;
          v7 = v150;
          v19 = v144;
          goto LABEL_110;
        }

        continue;
      }

      v88 = sub_1B1C2D7A8();
    }

    else
    {
      v88 = sub_1B1C2D7A8();
    }

    break;
  }

  if ((v88 & 1) == 0)
  {
    goto LABEL_108;
  }

LABEL_104:
  if (v155)
  {
    v61 = *v58;
    v62 = v58[1];
    *v58 = *(v58 - 1);
    *(v58 - 1) = v62;
    *(v58 - 2) = v61;
    v58 -= 2;
    v59 = v164 + 1;
    if (v164 == -1)
    {
      goto LABEL_108;
    }

    goto LABEL_67;
  }

  __break(1u);
LABEL_200:
  __break(1u);
LABEL_201:
  __break(1u);
LABEL_202:
  __break(1u);
LABEL_203:
  __break(1u);
LABEL_204:
  __break(1u);
}

uint64_t sub_1B1BD6230(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_1B1AC9DF0(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_34;
      }

      v12 = *v6;
      v14 = *v4;
      v13 = *(v4 + 1);
      v30 = *(v6 + 1);
      v29 = v13;
      v15 = sub_1B1BD3ED0(&v30, &v29);
      v16 = v15 == 2 ? v12 < v14 : v15;
      if (!v16)
      {
        break;
      }

      v17 = v6;
      v18 = v7 == v6;
      v6 += 16;
      if (!v18)
      {
        goto LABEL_15;
      }

LABEL_16:
      v7 += 16;
    }

    v17 = v4;
    v18 = v7 == v4;
    v4 += 16;
    if (v18)
    {
      goto LABEL_16;
    }

LABEL_15:
    *v7 = *v17;
    goto LABEL_16;
  }

  sub_1B1AC9DF0(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_18:
  v19 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v21 = *(v10 - 2);
    v23 = *(v6 - 2);
    v22 = *(v6 - 1);
    v30 = *(v10 - 1);
    v29 = v22;
    v24 = sub_1B1BD3ED0(&v30, &v29);
    if (v24 == 2)
    {
      v25 = v21 < v23;
    }

    else
    {
      v25 = v24;
    }

    if (v25)
    {
      v18 = v5 + 16 == v6;
      v6 -= 16;
      if (!v18)
      {
        *v5 = *v19;
        v6 = v19;
      }

      goto LABEL_18;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_34:
  v26 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v26])
  {
    memmove(v6, v4, 16 * v26);
  }

  return 1;
}

unint64_t sub_1B1BD6460()
{
  result = qword_1EB763FD8;
  if (!qword_1EB763FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB763FD0, &qword_1B1C40A70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB763FD8);
  }

  return result;
}

void *sub_1B1BD6504()
{
  v1 = OBJC_IVAR___TTSAsset_age;
  OUTLINED_FUNCTION_7_3();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void *sub_1B1BD6580()
{
  v1 = OBJC_IVAR___TTSAsset_downloadSize;
  OUTLINED_FUNCTION_7_3();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_1B1BD66BC(uint64_t result)
{
  v2 = v1 + OBJC_IVAR___TTSAsset____lazy_storage___brand;
  *v2 = result;
  *(v2 + 8) = 0;
  return result;
}

void *TTSAsset.effectiveDiskSize.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DB0, &unk_1B1C40E10);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v63 - v3;
  v74 = sub_1B1C2BFD8();
  v5 = OUTLINED_FUNCTION_7(v74);
  v68 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v70 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F00, &qword_1B1C36480);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v63 - v12;
  v14 = sub_1B1C2C078();
  v15 = OUTLINED_FUNCTION_7(v14);
  v67 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v20 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1B1C2C1C8();
  v22 = OUTLINED_FUNCTION_7(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  v27 = MEMORY[0x1EEE9AC00](v22);
  v29 = &v63 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = &v63 - v31;
  v33 = MEMORY[0x1EEE9AC00](v30);
  v35 = &v63 - v34;
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x118))(v33);
  if (result)
  {
    v37 = result;
    v66 = v14;
    v38 = [result bundleURL];

    sub_1B1C2C168();
    v69 = v24;
    v71 = *(v24 + 32);
    v72 = v24 + 32;
    v71(v35, v32, v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DB8, &unk_1B1C364C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B1C36280;
    v40 = *MEMORY[0x1E695DB50];
    v41 = *MEMORY[0x1E695DB78];
    *(inited + 32) = *MEMORY[0x1E695DB50];
    *(inited + 40) = v41;
    v42 = v40;
    v43 = v41;
    sub_1B1B483DC(inited);
    v45 = v44;
    v46 = [objc_opt_self() defaultManager];

    sub_1B1BD6F24(v47, sub_1B1B36F90, sub_1B1BDE214);
    v48 = sub_1B1C2D088();

    if (v48)
    {
      v73 = v45;
      v64 = v35;
      v63 = v48;
      sub_1B1C2D058();
      v65 = 0;
      v49 = (v69 + 1);
      v50 = (v68 + 4);
      ++v68;
      v69 = v50;
      while (1)
      {
        sub_1B1C2C068();
        if (!v75)
        {
          break;
        }

        if (swift_dynamicCast())
        {
          __swift_storeEnumTagSinglePayload(v13, 0, 1, v21);
          v71(v29, v13, v21);
          sub_1B1C2C0D8();
          v51 = v74;
          __swift_storeEnumTagSinglePayload(v4, 0, 1, v74);
          v52 = v70;
          (*v69)(v70, v4, v51);
          v53 = sub_1B1C2BF98();
          if (v53 == 2 || (v53 & 1) != 0)
          {
            (*v68)(v52, v74);
            v54 = OUTLINED_FUNCTION_8_28();
            v55(v54);
          }

          else
          {
            v56 = sub_1B1C2BFC8();
            v57 = v52;
            v59 = v58;
            (*v68)(v57, v74);
            v60 = OUTLINED_FUNCTION_8_28();
            v61(v60);
            if ((v59 & 1) == 0)
            {
              v62 = __OFADD__(v65, v56);
              v65 += v56;
              if (v62)
              {
                __break(1u);
                break;
              }
            }
          }
        }

        else
        {
          __swift_storeEnumTagSinglePayload(v13, 1, 1, v21);
          sub_1B1A90C78(v13, &unk_1EB761F00, &qword_1B1C36480);
        }
      }

      (*(v67 + 8))(v20, v66);
      (*v49)(v64, v21);
      return v65;
    }

    else
    {
      (v69)[1](v35, v21);

      return 0;
    }
  }

  return result;
}

uint64_t sub_1B1BD6F24(uint64_t a1, uint64_t (*a2)(void, void), uint64_t (*a3)(uint64_t *, uint64_t, uint64_t, uint64_t))
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_4;
  }

  v6 = a2(*(a1 + 16), 0);
  v7 = a3(&v9, v6 + 32, v4, a1);
  sub_1B1A9D350();
  if (v7 != v4)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v6;
}

uint64_t sub_1B1BD7234@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xC8))();
  *a2 = result;
  return result;
}

void sub_1B1BD7290(id *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  sub_1B1BD6540();
}

uint64_t sub_1B1BD7350@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xE0))();
  *a2 = result;
  return result;
}

void sub_1B1BD73AC(id *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  sub_1B1BD65BC();
}

void *sub_1B1BD7410()
{
  v1 = OBJC_IVAR___TTSAsset_diskSize;
  OUTLINED_FUNCTION_7_3();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_1B1BD74A8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xF8))();
  *a2 = result;
  return result;
}

void sub_1B1BD7504(id *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  sub_1B1BD65FC();
}

void *sub_1B1BD7578()
{
  v1 = OBJC_IVAR___TTSAsset_bundle;
  OUTLINED_FUNCTION_7_3();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_1B1BD7610@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x118))();
  *a2 = result;
  return result;
}

void sub_1B1BD7674(id *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  sub_1B1BD667C();
}

uint64_t sub_1B1BD7700@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x130))();
  *a2 = result;
  return result;
}

id TTSAsset.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TTSAsset.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTSAsset();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL TTSAsset.locallyAvailable.getter()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x118))();
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

uint64_t OpusEncoder.__allocating_init(sourceFormat:)(__int128 *a1)
{
  OUTLINED_FUNCTION_1_0();
  v2 = swift_allocObject();
  OpusEncoder.init(sourceFormat:)(a1);
  return v2;
}

uint64_t OpusEncoder.init(sourceFormat:)(__int128 *a1)
{
  v2 = v1;
  v41 = *MEMORY[0x1E69E9840];
  v4 = a1[1];
  v39[0] = *a1;
  v39[1] = v4;
  v40 = *(a1 + 4);
  v5 = [objc_allocWithZone(MEMORY[0x1E6958418]) initWithStreamDescription_];
  if (!v5)
  {
    *v38 = 0;
    *&v38[8] = 0xE000000000000000;
    sub_1B1C2D538();
    v32 = *v38;
    MEMORY[0x1B27381B0](0xD00000000000001ALL, 0x80000001B1C52A00);
    v13 = a1[1];
    *v38 = *a1;
    *&v38[16] = v13;
    *&v38[32] = *(a1 + 4);
    type metadata accessor for AudioStreamBasicDescription(0);
    sub_1B1C2D618();
    sub_1B1A9EC9C();
    v14 = OUTLINED_FUNCTION_34();
    OUTLINED_FUNCTION_0_18(v14, v15);
    *(v16 + 8) = v32;
    swift_willThrow();
LABEL_12:
    type metadata accessor for OpusEncoder();
    swift_deallocPartialClassInstance();
    goto LABEL_13;
  }

  v6 = v5;
  *(v2 + 16) = v5;
  OUTLINED_FUNCTION_5_30();
  *v38 = v7;
  *&v38[8] = xmmword_1B1C387F0;
  *&v38[24] = xmmword_1B1C38800;
  v8 = objc_allocWithZone(MEMORY[0x1E6958418]);
  v9 = v6;
  v10 = [v8 initWithStreamDescription_];
  if (!v10)
  {
    sub_1B1A9EC9C();
    v17 = OUTLINED_FUNCTION_34();
    OUTLINED_FUNCTION_0_18(v17, v18);
    *(v19 + 8) = 0xD00000000000001FLL;
    *(v19 + 16) = 0x80000001B1C52A20;
    swift_willThrow();

    v20 = *(v2 + 16);
LABEL_11:

    goto LABEL_12;
  }

  v11 = v10;
  *(v2 + 24) = v10;
  sub_1B1A8E474(0, &qword_1ED9A9880, 0x1E69E58C0);
  v12 = v11;
  if (sub_1B1C2D248())
  {

    *(v2 + 32) = 0;
    *(v2 + 40) = 0;
    goto LABEL_13;
  }

  sub_1B1A8E474(0, &qword_1EB761030, 0x1E69583F0);
  v21 = v9;
  v22 = v12;
  v23 = sub_1B1B3FA14(v21, v22);
  if (!v23)
  {
    *&v33 = 0;
    *(&v33 + 1) = 0xE000000000000000;
    sub_1B1C2D538();
    v37 = v33;
    MEMORY[0x1B27381B0](0xD000000000000035, 0x80000001B1C52A40);
    v34 = *a1;
    v35 = a1[1];
    v36 = *(a1 + 4);
    type metadata accessor for AudioStreamBasicDescription(0);
    sub_1B1C2D618();
    sub_1B1A9EC9C();
    v26 = OUTLINED_FUNCTION_34();
    OUTLINED_FUNCTION_0_18(v26, v27);
    *(v28 + 8) = v37;
    swift_willThrow();

    v20 = *(v2 + 24);
    goto LABEL_11;
  }

  *(v2 + 32) = v23;
  v24 = v23;
  if ([v24 maximumOutputPacketSize])
  {
    v25 = [v24 maximumOutputPacketSize];
  }

  else
  {
    v25 = 1024;
  }

  v31 = [objc_allocWithZone(MEMORY[0x1E69583D8]) initWithFormat:v22 packetCapacity:50 maximumPacketSize:v25];

  *(v2 + 40) = v31;
LABEL_13:
  v29 = *MEMORY[0x1E69E9840];
  return v2;
}

void *sub_1B1BD7FEC()
{
  v2 = v0[4];
  if (v2)
  {
    v3 = objc_allocWithZone(type metadata accessor for AudioData());
    v4 = v2;
    v5 = [v3 init];
    sub_1B1AD16A4(v5);
    if (v1)
    {
    }

    else
    {
      v0 = v6;

      [v4 reset];
    }
  }

  else
  {
    v0 = [objc_allocWithZone(type metadata accessor for AudioData()) init];
    v7 = v0 + OBJC_IVAR___SiriTTSAudioData_asbd;
    swift_beginAccess();
    OUTLINED_FUNCTION_5_30();
    *v7 = v8;
    *(v7 + 8) = xmmword_1B1C387F0;
    *(v7 + 24) = xmmword_1B1C38800;
  }

  return v0;
}

uint64_t OpusEncoder.__deallocating_deinit()
{
  OpusEncoder.deinit();
  v0 = OUTLINED_FUNCTION_1_0();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t dispatch thunk of OpusEncoder.__allocating_init(sourceFormat:)(uint64_t *a1)
{
  v2 = *(v1 + 112);
  v5 = *a1;
  v3 = *(a1 + 3);
  v6 = *(a1 + 1);
  v7 = v3;
  return v2(&v5);
}

SiriTTSService::SynthesisCacheFile::SynthesisCacheChunkIterator __swiftcall SynthesisCacheFile.makeIterator()()
{
  v2 = v0;
  v3 = *(v1 + *(type metadata accessor for SynthesisCacheFile(0) + 20));
  *v2 = v3;

  return v3;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SynthesisCacheFile.close()()
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(v0 + *(type metadata accessor for SynthesisCacheFile(0) + 20));
  v11 = 0;
  v3 = [v2 seekToOffset:0 error:&v11];
  v4 = v11;
  if (!v3)
  {
    goto LABEL_7;
  }

  v5 = qword_1ED9A5138;
  v6 = v11;
  if (v5 != -1)
  {
    OUTLINED_FUNCTION_2_35();
  }

  v11 = qword_1ED9A5140;
  v12 = *algn_1ED9A5148;
  sub_1B1AA64DC(qword_1ED9A5140, *algn_1ED9A5148);
  sub_1B1AD03C8();
  sub_1B1C2D078();
  sub_1B1A94524(v11, v12);
  if (!v1)
  {
    v11 = 0;
    v7 = [v2 closeAndReturnError_];
    v4 = v11;
    if (v7)
    {
      v8 = v11;
      goto LABEL_8;
    }

LABEL_7:
    v9 = v4;
    sub_1B1C2C058();

    swift_willThrow();
  }

LABEL_8:
  v10 = *MEMORY[0x1E69E9840];
}

uint64_t SynthesisCache.init(audio:timingInfos:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_1B1BD83B4()
{
  result = sub_1B1BD83D4();
  qword_1ED9A5228 = result;
  return result;
}

uint64_t sub_1B1BD83D4()
{
  v0 = sub_1B1C2C0A8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B1C2C1C8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v32 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v32 - v14;
  v16 = [objc_opt_self() mainBundle];
  v17 = sub_1B1A91B08(v16);
  if (v18)
  {
    v19 = v17;
    v20 = v18;
    sub_1B1C2C0B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761C70, &qword_1B1C36250);
    v21 = swift_allocObject();
    v33 = v10;
    *(v21 + 16) = xmmword_1B1C364E0;
    *(v21 + 32) = 0x7972617262694CLL;
    *(v21 + 40) = 0xE700000000000000;
    *(v21 + 48) = 0x736568636143;
    *(v21 + 56) = 0xE600000000000000;
    *(v21 + 64) = v19;
    *(v21 + 72) = v20;
    strcpy((v21 + 80), "SynthesisCache");
    *(v21 + 95) = -18;
    (*(v1 + 104))(v4, *MEMORY[0x1E6968F58], v0);
    sub_1B1A8EDAC();
    sub_1B1C2C1A8();

    (*(v1 + 8))(v4, v0);
    v22 = *(v6 + 8);
    v22(v13, v5);
    (*(v6 + 16))(v33, v15, v5);
    v23 = type metadata accessor for CacheStorage(0);
    v24 = *(v23 + 48);
    v25 = *(v23 + 52);
    v26 = swift_allocObject();
    sub_1B1BD892C();
    v22(v15, v5);
  }

  else
  {
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v27 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v27, qword_1ED9A9120);
    v28 = sub_1B1C2C888();
    v29 = sub_1B1C2D0B8();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1B1A8A000, v28, v29, "Missing bundle identifier for CacheStorage", v30, 2u);
      MEMORY[0x1B2739FD0](v30, -1, -1);
    }

    return 0;
  }

  return v26;
}

void sub_1B1BD892C()
{
  OUTLINED_FUNCTION_12_17();
  v2 = v1;
  v34 = *MEMORY[0x1E69E9840];
  v3 = sub_1B1C2C1C8();
  v4 = OUTLINED_FUNCTION_7(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_16();
  v11 = v10 - v9;
  v12 = OBJC_IVAR____TtC14SiriTTSService12CacheStorage_storageURL;
  v13 = *(v6 + 16);
  v31 = v2;
  v13(v0 + OBJC_IVAR____TtC14SiriTTSService12CacheStorage_storageURL, v2, v3);
  v33 = 0;
  v28 = objc_opt_self();
  v14 = [v28 defaultManager];
  v29 = v12;
  v30 = v13;
  v13(v11, v0 + v12, v3);
  sub_1B1C2C098();
  v15 = *(v6 + 8);
  v15(v11, v3);
  v16 = sub_1B1C2CB28();

  LOBYTE(v12) = [v14 fileExistsAtPath:v16 isDirectory:&v33];

  if (v12)
  {
    v17 = v31;
    v18 = v3;
    v19 = v15;
    if ((v33 & 1) == 0)
    {
      sub_1B1C2D538();

      v32[0] = 0xD000000000000013;
      v32[1] = 0x80000001B1C52C40;
      sub_1B1B317AC();
      v20 = sub_1B1C2D778();
      MEMORY[0x1B27381B0](v20);

      MEMORY[0x1B27381B0](0xD000000000000015, 0x80000001B1C52C60);
      sub_1B1A9EC9C();
      OUTLINED_FUNCTION_34();
      *v21 = 1;
      *(v21 + 8) = 0xD000000000000013;
      *(v21 + 16) = 0x80000001B1C52C40;
LABEL_8:
      swift_willThrow();

      v19(v17, v18);
      goto LABEL_9;
    }
  }

  else
  {
    v22 = [v28 defaultManager];
    v30(v11, v0 + v29, v3);
    v23 = sub_1B1C2C118();
    v15(v11, v3);
    v32[0] = 0;
    v24 = [v22 createDirectoryAtURL:v23 withIntermediateDirectories:1 attributes:0 error:v32];

    v18 = v3;
    v19 = v15;
    if (!v24)
    {
      v26 = v32[0];
      OUTLINED_FUNCTION_19_5();
      sub_1B1C2C058();

      v17 = v31;
      goto LABEL_8;
    }

    v25 = v32[0];
    v17 = v31;
  }

  v19(v17, v18);
LABEL_9:
  v27 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13_23();
}

void sub_1B1BD8C94()
{
  OUTLINED_FUNCTION_12_17();
  v33 = v1;
  v34 = v2;
  v4 = v3;
  v35[2] = *MEMORY[0x1E69E9840];
  v5 = sub_1B1C2C0A8();
  v6 = OUTLINED_FUNCTION_7(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_16();
  v13 = (v12 - v11);
  v14 = sub_1B1C2C1C8();
  v15 = OUTLINED_FUNCTION_7(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v15);
  v22 = &v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  (*(v17 + 16))(v22, v0 + OBJC_IVAR____TtC14SiriTTSService12CacheStorage_storageURL, v14);
  v35[0] = v4;
  v35[1] = v34;
  (*(v8 + 104))(v13, *MEMORY[0x1E6968F68], v5);
  sub_1B1A8EDAC();
  sub_1B1C2C1B8();
  v23 = *(v8 + 8);
  v24 = OUTLINED_FUNCTION_42_0();
  v25(v24);
  v26 = *(v17 + 8);
  v26(v22, v14);
  v27 = [objc_opt_self() defaultManager];
  sub_1B1C2C098();
  sub_1B1C2CB28();
  OUTLINED_FUNCTION_19_5();

  v35[0] = 0;
  LOBYTE(v4) = [v27 removeItemAtPath:v13 error:v35];

  if (v4)
  {
    v28 = v35[0];
  }

  else
  {
    v30 = v35[0];
    sub_1B1C2C058();

    swift_willThrow();
  }

  v29 = OUTLINED_FUNCTION_15();
  (v26)(v29);
  v31 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13_23();
}

void sub_1B1BD8F50()
{
  OUTLINED_FUNCTION_12_17();
  v60[2] = *MEMORY[0x1E69E9840];
  v57 = sub_1B1C2C0A8();
  v2 = OUTLINED_FUNCTION_7(v57);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_16();
  v56 = v8 - v7;
  v9 = sub_1B1C2C1C8();
  v10 = OUTLINED_FUNCTION_7(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_132();
  v53 = v15;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v42 - v17;
  v51 = objc_opt_self();
  v19 = [v51 defaultManager];
  v20 = *(v12 + 16);
  v58 = v0;
  v49 = v12 + 16;
  v50 = OBJC_IVAR____TtC14SiriTTSService12CacheStorage_storageURL;
  v48 = v20;
  v20(v18, v0 + OBJC_IVAR____TtC14SiriTTSService12CacheStorage_storageURL, v9);
  sub_1B1C2C098();
  OUTLINED_FUNCTION_25_11();
  v21 = *(v12 + 8);
  v52 = v18;
  v54 = v12 + 8;
  v55 = v9;
  v47 = v21;
  v21(v18, v9);
  OUTLINED_FUNCTION_42_1();
  v22 = sub_1B1C2CB28();

  v60[0] = 0;
  v23 = [v19 contentsOfDirectoryAtPath:v22 error:v60];

  v24 = v60[0];
  if (v23)
  {
    v42 = v1;
    v25 = sub_1B1C2CE78();
    v26 = v24;

    v27 = 0;
    v46 = *(v25 + 16);
    v45 = *MEMORY[0x1E6968F68];
    v43 = (v4 + 8);
    v44 = (v4 + 104);
    v59 = v25;
    for (i = (v25 + 40); ; i += 2)
    {
      if (v46 == v27)
      {

        goto LABEL_11;
      }

      if (v27 >= *(v59 + 16))
      {
        __break(1u);
      }

      v30 = *(i - 1);
      v29 = *i;

      v31 = [v51 defaultManager];
      v32 = v53;
      v33 = v55;
      v48(v53, v58 + v50, v55);
      v60[0] = v30;
      v60[1] = v29;
      v35 = v56;
      v34 = v57;
      (*v44)(v56, v45, v57);
      sub_1B1A8EDAC();
      v36 = v52;
      sub_1B1C2C1B8();
      (*v43)(v35, v34);
      v37 = v47;
      v47(v32, v33);

      sub_1B1C2C098();
      OUTLINED_FUNCTION_25_11();
      v37(v36, v33);
      OUTLINED_FUNCTION_42_1();
      v38 = sub_1B1C2CB28();

      v60[0] = 0;
      LODWORD(v29) = [v31 removeItemAtPath:v38 error:v60];

      v39 = v60[0];
      if (!v29)
      {
        break;
      }

      ++v27;
    }

    v40 = v39;
  }

  else
  {
    v40 = v60[0];
  }

  sub_1B1C2C058();

  swift_willThrow();
LABEL_11:
  v41 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13_23();
}

void sub_1B1BD937C(uint64_t a1, void (**a2)(char *, uint64_t))
{
  v77 = a2;
  v79[1] = *MEMORY[0x1E69E9840];
  v3 = sub_1B1C2C1C8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v78 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v70 = &v64 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v66 = &v64 - v10;
  if (qword_1ED9A9288 != -1)
  {
    swift_once();
  }

  v11 = sub_1B1C2C8A8();
  v12 = __swift_project_value_buffer(v11, qword_1ED9A9120);

  v74 = v12;
  v13 = sub_1B1C2C888();
  v14 = sub_1B1C2D0D8();

  v15 = os_log_type_enabled(v13, v14);
  v75 = v3;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v79[0] = v17;
    *v16 = 136446210;
    v18 = v66;
    (*(v4 + 16))(v66, a1 + OBJC_IVAR____TtC14SiriTTSService12CacheStorage_storageURL, v75);
    sub_1B1B317AC();
    v19 = sub_1B1C2D778();
    v21 = v20;
    (*(v4 + 8))(v18, v75);
    v22 = sub_1B1A930E4(v19, v21, v79);

    *(v16 + 4) = v22;
    _os_log_impl(&dword_1B1A8A000, v13, v14, "Cleaning cache storage: %{public}s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x1B2739FD0](v17, -1, -1);
    v23 = v16;
    v3 = v75;
    MEMORY[0x1B2739FD0](v23, -1, -1);
  }

  v67 = a1;
  v24 = sub_1B1BDA094(a1);
  v25 = sub_1B1BDA3E8(v24, v77);

  v26 = *(v25 + 16);
  if (v26)
  {
    v27 = objc_opt_self();
    v64 = v25;
    v65 = v4;
    v29 = v4 + 16;
    v28 = *(v4 + 16);
    v30 = v25 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v76 = *(v4 + 72);
    v77 = (v4 + 8);
    *&v31 = 136315138;
    v68 = v31;
    v32 = v70;
    v72 = v29;
    v73 = v27;
    v69 = v28;
    do
    {
      v28(v32, v30, v3);
      v33 = [v27 defaultManager];
      v34 = sub_1B1C2C118();
      v79[0] = 0;
      v35 = [v33 removeItemAtURL:v34 error:v79];

      if (v35)
      {
        v36 = *v77;
        v37 = v79[0];
        v36(v32, v3);
      }

      else
      {
        v38 = v79[0];
        v39 = sub_1B1C2C058();

        swift_willThrow();
        v28(v78, v32, v3);
        v40 = sub_1B1C2C888();
        v41 = sub_1B1C2D0C8();
        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          v79[0] = v43;
          *v42 = v68;
          sub_1B1B317AC();
          v44 = sub_1B1C2D778();
          v46 = v45;
          v71 = v39;
          v47 = *v77;
          (*v77)(v78, v75);
          v48 = sub_1B1A930E4(v44, v46, v79);
          v3 = v75;

          *(v42 + 4) = v48;
          _os_log_impl(&dword_1B1A8A000, v40, v41, "Unable to remove cache file at path: %s", v42, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v43);
          v32 = v70;
          MEMORY[0x1B2739FD0](v43, -1, -1);
          v28 = v69;
          MEMORY[0x1B2739FD0](v42, -1, -1);

          v47(v32, v3);
        }

        else
        {

          v49 = *v77;
          (*v77)(v78, v3);
          v49(v32, v3);
        }

        v27 = v73;
      }

      v30 += v76;
      --v26;
    }

    while (v26);

    v4 = v65;
  }

  else
  {
  }

  v50 = v67;

  v51 = sub_1B1C2C888();
  v52 = sub_1B1C2D0D8();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v55 = v50;
    v56 = v4;
    v57 = v54;
    v79[0] = v54;
    *v53 = 136446210;
    v58 = v66;
    (*(v56 + 16))(v66, v55 + OBJC_IVAR____TtC14SiriTTSService12CacheStorage_storageURL, v3);
    sub_1B1B317AC();
    v59 = sub_1B1C2D778();
    v61 = v60;
    (*(v56 + 8))(v58, v3);
    v62 = sub_1B1A930E4(v59, v61, v79);

    *(v53 + 4) = v62;
    _os_log_impl(&dword_1B1A8A000, v51, v52, "Cleaned cache storage: %{public}s", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v57);
    MEMORY[0x1B2739FD0](v57, -1, -1);
    MEMORY[0x1B2739FD0](v53, -1, -1);
  }

  v63 = *MEMORY[0x1E69E9840];
}

void sub_1B1BD9A5C()
{
  OUTLINED_FUNCTION_25();
  v1 = v0;
  v81 = v3;
  v82 = v2;
  v84[1] = *MEMORY[0x1E69E9840];
  v80 = sub_1B1C2C1C8();
  v4 = OUTLINED_FUNCTION_7(v80);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_132();
  v83 = v9;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x1EEE9AC00](v10);
  v75 = &v69 - v11;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x1EEE9AC00](v12);
  v71 = &v69 - v13;
  if (qword_1ED9A9288 != -1)
  {
    OUTLINED_FUNCTION_3_1();
  }

  v14 = sub_1B1C2C8A8();
  v15 = __swift_project_value_buffer(v14, qword_1ED9A9120);

  v79 = v15;
  v16 = sub_1B1C2C888();
  v17 = sub_1B1C2D0D8();

  v18 = os_log_type_enabled(v16, v17);
  v72 = v1;
  if (v18)
  {
    v19 = OUTLINED_FUNCTION_21_0();
    v20 = OUTLINED_FUNCTION_19_0();
    v84[0] = v20;
    *v19 = 136446210;
    v21 = v1 + OBJC_IVAR____TtC14SiriTTSService12CacheStorage_storageURL;
    v22 = v71;
    v23 = v80;
    (*(v6 + 16))(v71, v21, v80);
    sub_1B1B317AC();
    sub_1B1C2D778();
    OUTLINED_FUNCTION_25_11();
    v24 = v23;
    v1 = v72;
    (*(v6 + 8))(v22, v24);
    v25 = OUTLINED_FUNCTION_42_1();
    v28 = sub_1B1A930E4(v25, v26, v27);

    *(v19 + 4) = v28;
    _os_log_impl(&dword_1B1A8A000, v16, v17, "Cleaning cache storage: %{public}s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_11();
  }

  sub_1B1BDA094(v1);
  v29 = v82();

  v30 = *(v29 + 16);
  v31 = v80;
  if (v30)
  {
    v32 = objc_opt_self();
    v69 = v29;
    v70 = v6;
    v34 = v6 + 16;
    v33 = *(v6 + 16);
    v35 = v29 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v81 = *(v6 + 72);
    v82 = (v6 + 8);
    *&v36 = 136315138;
    v73 = v36;
    v37 = v75;
    v77 = v34;
    v78 = v32;
    v74 = v33;
    do
    {
      v33(v37, v35, v31);
      v38 = [v32 defaultManager];
      v39 = sub_1B1C2C118();
      v84[0] = 0;
      v40 = [v38 removeItemAtURL:v39 error:v84];

      if (v40)
      {
        v41 = *v82;
        v42 = v84[0];
        v41(v37, v31);
      }

      else
      {
        v43 = v84[0];
        v44 = sub_1B1C2C058();

        swift_willThrow();
        v33(v83, v37, v31);
        v45 = sub_1B1C2C888();
        v46 = sub_1B1C2D0C8();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = OUTLINED_FUNCTION_21_0();
          v48 = OUTLINED_FUNCTION_19_0();
          v84[0] = v48;
          *v47 = v73;
          sub_1B1B317AC();
          v49 = sub_1B1C2D778();
          v51 = v50;
          v76 = v44;
          v52 = *v82;
          (*v82)(v83, v80);
          v53 = sub_1B1A930E4(v49, v51, v84);
          v31 = v80;

          *(v47 + 4) = v53;
          _os_log_impl(&dword_1B1A8A000, v45, v46, "Unable to remove cache file at path: %s", v47, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v48);
          v37 = v75;
          OUTLINED_FUNCTION_11();
          v33 = v74;
          OUTLINED_FUNCTION_11();

          v52(v37, v31);
        }

        else
        {

          v54 = *v82;
          (*v82)(v83, v31);
          v54(v37, v31);
        }

        v32 = v78;
      }

      v35 += v81;
      --v30;
    }

    while (v30);

    v6 = v70;
  }

  else
  {
  }

  v55 = v72;

  v56 = sub_1B1C2C888();
  v57 = sub_1B1C2D0D8();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = OUTLINED_FUNCTION_21_0();
    v59 = OUTLINED_FUNCTION_19_0();
    v60 = v55;
    v61 = v6;
    v62 = v59;
    v84[0] = v59;
    *v58 = 136446210;
    v63 = v71;
    (*(v61 + 16))(v71, v60 + OBJC_IVAR____TtC14SiriTTSService12CacheStorage_storageURL, v31);
    sub_1B1B317AC();
    sub_1B1C2D778();
    OUTLINED_FUNCTION_25_11();
    (*(v61 + 8))(v63, v31);
    v64 = OUTLINED_FUNCTION_42_1();
    v67 = sub_1B1A930E4(v64, v65, v66);

    *(v58 + 4) = v67;
    _os_log_impl(&dword_1B1A8A000, v56, v57, "Cleaned cache storage: %{public}s", v58, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v62);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_11();
  }

  v68 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_26_1();
}

uint64_t sub_1B1BDA094(uint64_t a1)
{
  v30[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1B1C2C1C8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  v7 = [objc_opt_self() defaultManager];
  (*(v3 + 16))(v6, a1 + OBJC_IVAR____TtC14SiriTTSService12CacheStorage_storageURL, v2);
  v8 = sub_1B1C2C118();
  (*(v3 + 8))(v6, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DB8, &unk_1B1C364C0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1B1C361C0;
  v10 = *MEMORY[0x1E695DA90];
  *(v9 + 32) = *MEMORY[0x1E695DA90];
  v30[0] = 0;
  v11 = v10;
  v12 = sub_1B1BDE408(v8, v9, 5, v30, v7);

  v13 = v30[0];
  if (v12)
  {
    v14 = sub_1B1C2CE78();
    v15 = v13;
  }

  else
  {
    v16 = v30[0];
    v17 = sub_1B1C2C058();

    swift_willThrow();
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v18 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v18, qword_1ED9A9120);
    v19 = v17;
    v20 = sub_1B1C2C888();
    v21 = sub_1B1C2D0B8();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v30[0] = v23;
      *v22 = 136315138;
      swift_getErrorValue();
      v24 = sub_1B1C2D828();
      v26 = sub_1B1A930E4(v24, v25, v30);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_1B1A8A000, v20, v21, "Unable to list directory, error: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x1B2739FD0](v23, -1, -1);
      MEMORY[0x1B2739FD0](v22, -1, -1);
    }

    v14 = MEMORY[0x1E69E7CC0];
  }

  v27 = *MEMORY[0x1E69E9840];
  return v14;
}

uint64_t sub_1B1BDA3E8(uint64_t a1, unint64_t a2)
{
  v17 = a1;

  v5 = 0;
  sub_1B1BDBA90(&v17);
  v6 = *(v17 + 16);
  v7 = __OFSUB__(v6, a2);
  v8 = v6 - a2;
  if (v7)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  a2 = sub_1B1BDAA88(0, v8 & ~(v8 >> 63), v17);
  v2 = v9;
  v5 = v10;
  v3 = v11;

  if ((v3 & 1) == 0)
  {
LABEL_3:
    sub_1B1B372A0(a2, v2, v5, v3);
    v13 = v12;
LABEL_10:
    swift_unknownObjectRelease();
    return v13;
  }

  sub_1B1C2D7C8();
  swift_unknownObjectRetain_n();
  v14 = swift_dynamicCastClass();
  if (!v14)
  {
    swift_unknownObjectRelease();
    v14 = MEMORY[0x1E69E7CC0];
  }

  v15 = *(v14 + 16);

  if (__OFSUB__(v3 >> 1, v5))
  {
    goto LABEL_13;
  }

  if (v15 != (v3 >> 1) - v5)
  {
LABEL_14:
    swift_unknownObjectRelease_n();
    goto LABEL_3;
  }

  v13 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (!v13)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_10;
  }

  return v13;
}

BOOL sub_1B1BDA53C(uint64_t a1, uint64_t a2)
{
  v37 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DB0, &unk_1B1C40E10);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v34 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761D88, &qword_1B1C36488);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v39 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v34 - v13;
  v15 = sub_1B1C2C428();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v38 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v40 = &v34 - v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DB8, &unk_1B1C364C0);
  inited = swift_initStackObject();
  v36 = xmmword_1B1C361C0;
  *(inited + 16) = xmmword_1B1C361C0;
  v22 = *MEMORY[0x1E695DA90];
  *(inited + 32) = *MEMORY[0x1E695DA90];
  v35 = v22;
  sub_1B1B7037C(inited);
  v23 = v34;
  sub_1B1C2C0D8();
  if (v23)
  {

    v24 = sub_1B1C2BFD8();
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v24);
    sub_1B1BDE4BC(v8, &qword_1EB761DB0, &unk_1B1C40E10);
    __swift_storeEnumTagSinglePayload(v14, 1, 1, v15);
  }

  else
  {

    v25 = sub_1B1C2BFD8();
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v25);
    sub_1B1C2BFB8();
    (*(*(v25 - 8) + 8))(v8, v25);
    if (__swift_getEnumTagSinglePayload(v14, 1, v15) != 1)
    {
      (*(v16 + 32))(v40, v14, v15);
      v26 = v39;
      goto LABEL_7;
    }
  }

  v26 = v39;
  sub_1B1C2C358();
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) != 1)
  {
    sub_1B1BDE4BC(v14, &qword_1EB761D88, &qword_1B1C36488);
  }

LABEL_7:
  v27 = swift_initStackObject();
  *(v27 + 16) = v36;
  *(v27 + 32) = v35;
  sub_1B1B7037C(v27);
  sub_1B1C2C0D8();

  v28 = sub_1B1C2BFD8();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v28);
  sub_1B1C2BFB8();
  (*(*(v28 - 8) + 8))(v6, v28);
  if (__swift_getEnumTagSinglePayload(v26, 1, v15) == 1)
  {
    v29 = v38;
    sub_1B1C2C358();
    if (__swift_getEnumTagSinglePayload(v26, 1, v15) != 1)
    {
      sub_1B1BDE4BC(v26, &qword_1EB761D88, &qword_1B1C36488);
    }
  }

  else
  {
    v29 = v38;
    (*(v16 + 32))(v38, v26, v15);
  }

  v30 = v40;
  v31 = sub_1B1C2C3F8();
  v32 = *(v16 + 8);
  v32(v29, v15);
  v32(v30, v15);
  return v31 == -1;
}

unint64_t sub_1B1BDAA88(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v5 = *(sub_1B1C2C1C8() - 8);
    v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1B1BDAB30(uint64_t a1)
{
  v2 = sub_1B1C2C428();
  v3 = OUTLINED_FUNCTION_7(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  (*(v5 + 16))(&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  sub_1B1BD9A5C();
}

uint64_t sub_1B1BDAC5C(uint64_t a1, uint64_t a2)
{
  v4[2] = a2;

  return sub_1B1B08BA4(sub_1B1BDE49C, v4, a1);
}

uint64_t sub_1B1BDACB8(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761D88, &qword_1B1C36488);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v26 - v5;
  v29 = sub_1B1C2C428();
  v27 = *(v29 - 8);
  v7 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DB0, &unk_1B1C40E10);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v26 - v12;
  v14 = sub_1B1C2BFD8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DB8, &unk_1B1C364C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B1C361C0;
  v20 = *MEMORY[0x1E695DA90];
  *(inited + 32) = *MEMORY[0x1E695DA90];
  v21 = v20;
  sub_1B1B7037C(inited);
  sub_1B1C2C0D8();
  if (v2)
  {

    v22 = 1;
    __swift_storeEnumTagSinglePayload(v13, 1, 1, v14);
    sub_1B1BDE4BC(v13, &qword_1EB761DB0, &unk_1B1C40E10);
  }

  else
  {

    __swift_storeEnumTagSinglePayload(v13, 0, 1, v14);
    (*(v15 + 32))(v18, v13, v14);
    sub_1B1C2BFB8();
    v23 = v29;
    if (__swift_getEnumTagSinglePayload(v6, 1, v29) == 1)
    {
      (*(v15 + 8))(v18, v14);
      sub_1B1BDE4BC(v6, &qword_1EB761D88, &qword_1B1C36488);
      v22 = 1;
    }

    else
    {
      v24 = v27;
      (*(v27 + 32))(v9, v6, v23);
      v22 = sub_1B1C2C388();
      (*(v24 + 8))(v9, v23);
      (*(v15 + 8))(v18, v14);
    }
  }

  return v22 & 1;
}

uint64_t CacheStorage.deinit()
{
  v1 = OBJC_IVAR____TtC14SiriTTSService12CacheStorage_storageURL;
  v2 = sub_1B1C2C1C8();
  OUTLINED_FUNCTION_7_0(v2);
  (*(v3 + 8))(v0 + v1);
  return v0;
}

uint64_t CacheStorage.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC14SiriTTSService12CacheStorage_storageURL;
  v2 = sub_1B1C2C1C8();
  OUTLINED_FUNCTION_7_0(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v4, v5);
}

uint64_t sub_1B1BDB124()
{
  v0 = sub_1B1C2CBC8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B1C2CBB8();
  v5 = sub_1B1C2CB68();
  v7 = v6;
  result = (*(v1 + 8))(v4, v0);
  if (v7 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    qword_1ED9A5140 = v5;
    *algn_1ED9A5148 = v7;
  }

  return result;
}

void *SynthesisCacheFile.voice.getter()
{
  v1 = *(v0 + *(type metadata accessor for SynthesisCacheFile(0) + 24));
  v2 = v1;
  return v1;
}

void *SynthesisCacheFile.resource.getter()
{
  v1 = *(v0 + *(type metadata accessor for SynthesisCacheFile(0) + 28));
  v2 = v1;
  return v1;
}

uint64_t sub_1B1BDB29C()
{
  SynthesisCacheFile.makeIterator()();

  return sub_1B1ACD41C(v0);
}

uint64_t sub_1B1BDB2D4()
{
  v1 = sub_1B1BDD948(v0);
  sub_1B1ACD41C(v0);
  return v1;
}

uint64_t sub_1B1BDB334()
{
  v0 = sub_1B1C2D6C8();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1B1BDB3A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1B1BDB334();
  *a2 = result;
  return result;
}

uint64_t sub_1B1BDB3D4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B1AA9D2C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1B1BDB400@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B1BDB334();
  *a1 = result;
  return result;
}

uint64_t sub_1B1BDB434(uint64_t a1)
{
  v2 = sub_1B1AA9CD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1BDB470(uint64_t a1)
{
  v2 = sub_1B1AA9CD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1BDB4AC(uint64_t a1)
{
  v3 = *(sub_1B1C2C428() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1B1BDAC5C(a1, v4);
}

unint64_t sub_1B1BDB520()
{
  result = qword_1EB764018;
  if (!qword_1EB764018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB764018);
  }

  return result;
}

void sub_1B1BDB6A8()
{
  sub_1B1C2C1C8();
  if (v0 <= 0x3F)
  {
    sub_1B1A8E474(319, &qword_1ED9A4F20, 0x1E696AC00);
    if (v1 <= 0x3F)
    {
      sub_1B1BDB7A4(319, &unk_1EB7611F8, type metadata accessor for SynthesisVoice);
      if (v2 <= 0x3F)
      {
        sub_1B1BDB7A4(319, &qword_1EB761150, type metadata accessor for SynthesisResource);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B1BDB7A4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B1C2D2B8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1B1BDB804(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B1BDB844(uint64_t result, int a2, int a3)
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

unint64_t sub_1B1BDB8B4()
{
  result = qword_1EB764020;
  if (!qword_1EB764020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB764020);
  }

  return result;
}

unint64_t sub_1B1BDB90C()
{
  result = qword_1ED9A5198;
  if (!qword_1ED9A5198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9A5198);
  }

  return result;
}

unint64_t sub_1B1BDB964()
{
  result = qword_1ED9A51A0;
  if (!qword_1ED9A51A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9A51A0);
  }

  return result;
}

uint64_t sub_1B1BDB9B8(uint64_t a1)
{
  v2 = sub_1B1C2BF08();
  if (v2)
  {
    v3 = v2;
    result = sub_1B1C2BF38();
    if (__OFSUB__(a1, result))
    {
      __break(1u);
      goto LABEL_8;
    }

    v5 = (a1 - result + v3);
  }

  else
  {
    v5 = 0;
  }

  result = sub_1B1C2BF28();
  if (v5)
  {
    return *v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1B1BDBA24(uint64_t a1)
{
  v2 = sub_1B1C2BF08();
  if (v2)
  {
    v3 = v2;
    result = sub_1B1C2BF38();
    if (__OFSUB__(a1, result))
    {
      __break(1u);
      goto LABEL_8;
    }

    v5 = a1 - result + v3;
  }

  else
  {
    v5 = 0;
  }

  result = sub_1B1C2BF28();
  if (v5)
  {
    return *v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1B1BDBA90(uint64_t *a1)
{
  v2 = *(sub_1B1C2C1C8() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1B1BDE524(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_1B1BDBB38(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_1B1BDBB38(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_1B1C2D768();
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
        sub_1B1C2C1C8();
        v6 = sub_1B1C2CEB8();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_1B1C2C1C8() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1B1BDBF48(v8, v9, a1, v4);
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
    return sub_1B1BDBC68(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1B1BDBC68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v43 = sub_1B1C2C1C8();
  v9 = *(v43 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v43);
  v48 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v36 - v14;
  result = MEMORY[0x1EEE9AC00](v13);
  v38 = a2;
  if (a3 != a2)
  {
    v51 = &v36 - v17;
    v18 = *a4;
    v20 = *(v9 + 16);
    v19 = v9 + 16;
    v21 = *(v19 + 56);
    v49 = v20;
    v50 = (v19 - 8);
    v22 = (v18 + v21 * (a3 - 1));
    v44 = -v21;
    v45 = (v19 + 16);
    v23 = a1 - a3;
    v46 = v18;
    v47 = v19;
    v37 = v21;
    v24 = v18 + v21 * a3;
    v25 = v4;
    while (2)
    {
      v41 = v22;
      v42 = a3;
      v39 = v24;
      v40 = v23;
      v26 = v43;
      while (1)
      {
        v27 = v51;
        v28 = v49;
        v49(v51, v24, v26);
        v28(v15, v22, v26);
        v29 = sub_1B1BDA53C(v27, v15);
        v52 = v25;
        if (v25)
        {
          v35 = *v50;
          (*v50)(v15, v26);
          return (v35)(v27, v26);
        }

        v30 = v29;
        v31 = *v50;
        (*v50)(v15, v26);
        result = (v31)(v27, v26);
        if (!v30)
        {
          break;
        }

        if (!v46)
        {
          __break(1u);
          return result;
        }

        v32 = *v45;
        v33 = v48;
        (*v45)(v48, v24, v26);
        swift_arrayInitWithTakeFrontToBack();
        result = v32(v22, v33, v26);
        v22 += v44;
        v24 += v44;
        v34 = __CFADD__(v23++, 1);
        v25 = v52;
        if (v34)
        {
          goto LABEL_11;
        }
      }

      v25 = v52;
LABEL_11:
      a3 = v42 + 1;
      v22 = &v41[v37];
      v23 = v40 - 1;
      v24 = v39 + v37;
      if (v42 + 1 != v38)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1B1BDBF48(unint64_t *a1, uint64_t a2, char **a3, uint64_t a4)
{
  v5 = v4;
  v170 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DB0, &unk_1B1C40E10);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v164 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v164 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761D88, &qword_1B1C36488);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v192 = &v164 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v164 - v19;
  v21 = sub_1B1C2C428();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v201 = &v164 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v200 = &v164 - v26;
  v196 = sub_1B1C2C1C8();
  v27 = *(*(v196 - 8) + 64);
  v28 = MEMORY[0x1EEE9AC00](v196);
  v171 = &v164 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v184 = &v164 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v202 = &v164 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v199 = &v164 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v174 = &v164 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v165 = &v164 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v167 = &v164 - v41;
  MEMORY[0x1EEE9AC00](v40);
  v166 = &v164 - v43;
  v180 = a3;
  v44 = a3[1];
  v179 = v42;
  if (v44 < 1)
  {
    v46 = MEMORY[0x1E69E7CC0];
LABEL_112:
    v202 = *v170;
    if (v202)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_146;
      }

      goto LABEL_114;
    }

    goto LABEL_155;
  }

  v45 = 0;
  v194 = v42 + 16;
  v195 = (v42 + 8);
  v193 = (v42 + 32);
  v187 = *MEMORY[0x1E695DA90];
  v181 = (v22 + 32);
  v186 = (v22 + 8);
  v198 = xmmword_1B1C361C0;
  v169 = a4;
  v191 = v12;
  v190 = v14;
  v46 = MEMORY[0x1E69E7CC0];
  v189 = v20;
  v188 = v21;
  while (1)
  {
    v47 = v45 + 1;
    if (v45 + 1 >= v44)
    {
      goto LABEL_34;
    }

    v183 = v44;
    v168 = v46;
    v48 = *v180;
    v49 = *(v42 + 72);
    v178 = v45 + 1;
    v50 = &v48[v49 * v47];
    v51 = *(v42 + 16);
    v52 = v166;
    v53 = v196;
    v51(v166, v50, v196);
    v185 = v48;
    v54 = &v48[v49 * v45];
    v55 = v167;
    v177 = v51;
    v51(v167, v54, v53);
    LODWORD(v182) = sub_1B1BDA53C(v52, v55);
    if (v5)
    {
      v163 = *v195;
      (*v195)(v55, v53);
      (v163)(v52, v53);
      goto LABEL_122;
    }

    v197 = 0;
    v56 = *v195;
    (*v195)(v55, v53);
    v176 = v56;
    (v56)(v52, v53);
    v164 = v45;
    v57 = v45 + 2;
    v58 = &v185[v49 * (v45 + 2)];
    v59 = v165;
    v47 = v178;
    v60 = v174;
    v61 = v49;
    v185 = v49;
    v62 = v183;
    while (1)
    {
      v63 = v57;
      if (v47 + 1 >= v62)
      {
        break;
      }

      v64 = v47;
      v65 = v196;
      v66 = v177;
      (v177)(v59, v58, v196);
      v66(v60, v50, v65);
      v67 = v197;
      v68 = sub_1B1BDA53C(v59, v60);
      v197 = v67;
      if (v67)
      {
        v162 = v176;
        (v176)(v60, v65);
        v162(v59, v65);

        return;
      }

      v69 = v68;
      v70 = v176;
      (v176)(v60, v65);
      v70(v59, v65);
      v60 = v174;
      v61 = v185;
      v58 = &v185[v58];
      v50 = &v185[v50];
      v47 = v64 + 1;
      v57 = v63 + 1;
      v62 = v183;
      if ((v182 ^ v69))
      {
        goto LABEL_11;
      }
    }

    v47 = v62;
LABEL_11:
    a4 = v169;
    if ((v182 & 1) == 0)
    {
      v42 = v179;
      v45 = v164;
LABEL_33:
      v46 = v168;
      v5 = v197;
      goto LABEL_34;
    }

    v45 = v164;
    if (v47 < v164)
    {
      goto LABEL_149;
    }

    if (v164 >= v47)
    {
      v42 = v179;
      goto LABEL_33;
    }

    v71 = v62 >= v63 ? v63 : v62;
    v72 = v61 * (v71 - 1);
    v73 = v61 * v71;
    v74 = v164 * v61;
    v75 = v47;
    v5 = v197;
    v178 = v47;
    do
    {
      if (v45 != --v75)
      {
        v76 = *v180;
        if (!*v180)
        {
          goto LABEL_153;
        }

        v77 = v196;
        v197 = *v193;
        (v197)(v171, &v76[v74], v196);
        v78 = v74 < v72 || &v76[v74] >= &v76[v73];
        if (v78)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v74 != v72)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        (v197)(&v76[v72], v171, v77);
        v47 = v178;
        v61 = v185;
      }

      ++v45;
      v72 -= v61;
      v73 -= v61;
      v74 += v61;
    }

    while (v45 < v75);
    v42 = v179;
    a4 = v169;
    v45 = v164;
    v46 = v168;
LABEL_34:
    v79 = v180[1];
    if (v47 < v79)
    {
      if (__OFSUB__(v47, v45))
      {
        goto LABEL_145;
      }

      if (v47 - v45 < a4)
      {
        v80 = v45 + a4;
        if (__OFADD__(v45, a4))
        {
          __break(1u);
        }

        else
        {
          if (v80 >= v79)
          {
            v80 = v180[1];
          }

          if (v80 >= v45)
          {
            if (v47 == v80)
            {
              goto LABEL_60;
            }

            v168 = v46;
            v81 = *v180;
            v82 = *(v42 + 72);
            v185 = *(v42 + 16);
            v83 = &v81[v82 * (v47 - 1)];
            v182 = -v82;
            v164 = v45;
            v84 = (v45 - v47);
            v183 = v81;
            v172 = v82;
            v85 = &v81[v47 * v82];
            v86 = v196;
            v173 = v80;
            while (1)
            {
              v178 = v47;
              v175 = v85;
              v176 = v84;
              v87 = v84;
              v177 = v83;
              do
              {
                v197 = v87;
                v88 = v185;
                (v185)(v199, v85, v86);
                v88(v202, v83, v86);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DB8, &unk_1B1C364C0);
                inited = swift_initStackObject();
                *(inited + 16) = v198;
                v90 = v187;
                *(inited + 32) = v187;
                v91 = v90;
                sub_1B1B7037C(inited);
                v92 = v190;
                sub_1B1C2C0D8();
                if (v5)
                {

                  v93 = sub_1B1C2BFD8();
                  __swift_storeEnumTagSinglePayload(v92, 1, 1, v93);
                  sub_1B1BDE4BC(v92, &qword_1EB761DB0, &unk_1B1C40E10);
                  v94 = v189;
                  v95 = v188;
                  __swift_storeEnumTagSinglePayload(v189, 1, 1, v188);
LABEL_47:
                  v97 = v192;
                  sub_1B1C2C358();
                  if (__swift_getEnumTagSinglePayload(v94, 1, v95) != 1)
                  {
                    sub_1B1BDE4BC(v94, &qword_1EB761D88, &qword_1B1C36488);
                  }

                  goto LABEL_50;
                }

                v96 = sub_1B1C2BFD8();
                __swift_storeEnumTagSinglePayload(v92, 0, 1, v96);
                v94 = v189;
                sub_1B1C2BFB8();
                (*(*(v96 - 8) + 8))(v92, v96);
                v95 = v188;
                if (__swift_getEnumTagSinglePayload(v94, 1, v188) == 1)
                {
                  goto LABEL_47;
                }

                (*v181)(v200, v94, v95);
                v97 = v192;
LABEL_50:
                v98 = swift_initStackObject();
                *(v98 + 16) = v198;
                *(v98 + 32) = v91;
                sub_1B1B7037C(v98);
                v99 = v191;
                sub_1B1C2C0D8();

                v100 = sub_1B1C2BFD8();
                __swift_storeEnumTagSinglePayload(v99, 0, 1, v100);
                sub_1B1C2BFB8();
                (*(*(v100 - 8) + 8))(v99, v100);
                if (__swift_getEnumTagSinglePayload(v97, 1, v95) == 1)
                {
                  sub_1B1C2C358();
                  if (__swift_getEnumTagSinglePayload(v97, 1, v95) != 1)
                  {
                    sub_1B1BDE4BC(v97, &qword_1EB761D88, &qword_1B1C36488);
                  }
                }

                else
                {
                  (*v181)(v201, v97, v95);
                }

                v102 = v200;
                v101 = v201;
                v103 = sub_1B1C2C3F8();
                v104 = *v186;
                (*v186)(v101, v95);
                v104(v102, v95);
                v86 = v196;
                v105 = *v195;
                (*v195)(v202, v196);
                (v105)(v199, v86);
                v5 = 0;
                if (v103 != -1)
                {
                  break;
                }

                v106 = v197;
                if (!v183)
                {
                  goto LABEL_150;
                }

                v107 = *v193;
                v108 = v184;
                (*v193)(v184, v85, v86);
                swift_arrayInitWithTakeFrontToBack();
                v107(v83, v108, v86);
                v83 += v182;
                v85 += v182;
                v78 = __CFADD__(v106, 1);
                v87 = v106 + 1;
              }

              while (!v78);
              v47 = v178 + 1;
              v83 = &v177[v172];
              v84 = v176 - 1;
              v85 = &v175[v172];
              if (v178 + 1 == v173)
              {
                v47 = v173;
                v46 = v168;
                v45 = v164;
                goto LABEL_60;
              }
            }
          }
        }

        __break(1u);
LABEL_149:
        __break(1u);
LABEL_150:
        __break(1u);
LABEL_151:
        __break(1u);
LABEL_152:
        __break(1u);
LABEL_153:
        __break(1u);
        goto LABEL_154;
      }
    }

LABEL_60:
    if (v47 < v45)
    {
      goto LABEL_144;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v152 = *(v46 + 2);
      sub_1B1B04838();
      v46 = v153;
    }

    v110 = *(v46 + 2);
    v109 = *(v46 + 3);
    v111 = v110 + 1;
    v178 = v47;
    if (v110 >= v109 >> 1)
    {
      sub_1B1B04838();
      v46 = v154;
    }

    *(v46 + 2) = v111;
    v112 = v46 + 32;
    v113 = &v46[16 * v110 + 32];
    v114 = v178;
    *v113 = v45;
    *(v113 + 1) = v114;
    v197 = *v170;
    if (!v197)
    {
LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
      return;
    }

    if (v110)
    {
      break;
    }

LABEL_109:
    v44 = v180[1];
    v45 = v178;
    v42 = v179;
    a4 = v169;
    if (v178 >= v44)
    {
      goto LABEL_112;
    }
  }

  while (1)
  {
    v115 = v111 - 1;
    v116 = &v112[16 * v111 - 16];
    v117 = &v46[16 * v111];
    if (v111 >= 4)
    {
      v122 = &v112[16 * v111];
      v123 = *(v122 - 8);
      v124 = *(v122 - 7);
      v128 = __OFSUB__(v124, v123);
      v125 = v124 - v123;
      if (v128)
      {
        goto LABEL_132;
      }

      v127 = *(v122 - 6);
      v126 = *(v122 - 5);
      v128 = __OFSUB__(v126, v127);
      v120 = v126 - v127;
      v121 = v128;
      if (v128)
      {
        goto LABEL_133;
      }

      v129 = *(v117 + 1);
      v130 = v129 - *v117;
      if (__OFSUB__(v129, *v117))
      {
        goto LABEL_135;
      }

      v128 = __OFADD__(v120, v130);
      v131 = v120 + v130;
      if (v128)
      {
        goto LABEL_138;
      }

      if (v131 >= v125)
      {
        v145 = *v116;
        v144 = *(v116 + 1);
        v128 = __OFSUB__(v144, v145);
        v146 = v144 - v145;
        if (v128)
        {
          goto LABEL_143;
        }

        if (v120 < v146)
        {
          v115 = v111 - 2;
        }

        goto LABEL_102;
      }

      goto LABEL_80;
    }

    if (v111 == 3)
    {
      v118 = *(v46 + 4);
      v119 = *(v46 + 5);
      v128 = __OFSUB__(v119, v118);
      v120 = v119 - v118;
      v121 = v128;
LABEL_80:
      if (v121)
      {
        goto LABEL_134;
      }

      v133 = *v117;
      v132 = *(v117 + 1);
      v134 = __OFSUB__(v132, v133);
      v135 = v132 - v133;
      v136 = v134;
      if (v134)
      {
        goto LABEL_137;
      }

      v137 = *(v116 + 1);
      v138 = v137 - *v116;
      if (__OFSUB__(v137, *v116))
      {
        goto LABEL_140;
      }

      if (__OFADD__(v135, v138))
      {
        goto LABEL_142;
      }

      if (v135 + v138 >= v120)
      {
        if (v120 < v138)
        {
          v115 = v111 - 2;
        }

        goto LABEL_102;
      }

      goto LABEL_95;
    }

    if (v111 < 2)
    {
      goto LABEL_136;
    }

    v140 = *v117;
    v139 = *(v117 + 1);
    v128 = __OFSUB__(v139, v140);
    v135 = v139 - v140;
    v136 = v128;
LABEL_95:
    if (v136)
    {
      goto LABEL_139;
    }

    v142 = *v116;
    v141 = *(v116 + 1);
    v128 = __OFSUB__(v141, v142);
    v143 = v141 - v142;
    if (v128)
    {
      goto LABEL_141;
    }

    if (v143 < v135)
    {
      goto LABEL_109;
    }

LABEL_102:
    if (v115 - 1 >= v111)
    {
      break;
    }

    if (!*v180)
    {
      goto LABEL_151;
    }

    v147 = &v112[16 * v115 - 16];
    v148 = *v147;
    v149 = &v112[16 * v115];
    v150 = *(v149 + 1);
    sub_1B1BDD0D4(&(*v180)[*(v179 + 72) * *v147], &(*v180)[*(v179 + 72) * *v149], &(*v180)[*(v179 + 72) * v150], v197);
    if (v5)
    {
      goto LABEL_122;
    }

    if (v150 < v148)
    {
      goto LABEL_126;
    }

    v151 = *(v46 + 2);
    if (v115 > v151)
    {
      goto LABEL_127;
    }

    *v147 = v148;
    *(v147 + 1) = v150;
    if (v115 >= v151)
    {
      goto LABEL_128;
    }

    v111 = v151 - 1;
    memmove(&v112[16 * v115], v149 + 16, 16 * (v151 - 1 - v115));
    *(v46 + 2) = v151 - 1;
    if (v151 <= 2)
    {
      goto LABEL_109;
    }
  }

  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
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
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  v46 = sub_1B1BDD728(v46);
LABEL_114:
  v155 = (v46 + 16);
  for (i = *(v46 + 2); i >= 2; *v155 = i)
  {
    if (!*v180)
    {
      goto LABEL_152;
    }

    v157 = &v46[16 * i];
    v158 = *v157;
    v159 = &v155[2 * i];
    v160 = v159[1];
    sub_1B1BDD0D4(&(*v180)[*(v179 + 72) * *v157], &(*v180)[*(v179 + 72) * *v159], &(*v180)[*(v179 + 72) * v160], v202);
    if (v5)
    {
      break;
    }

    if (v160 < v158)
    {
      goto LABEL_129;
    }

    if (i - 2 >= *v155)
    {
      goto LABEL_130;
    }

    *v157 = v158;
    *(v157 + 1) = v160;
    v161 = *v155 - i;
    if (*v155 < i)
    {
      goto LABEL_131;
    }

    i = *v155 - 1;
    memmove(v159, v159 + 2, 16 * v161);
  }

LABEL_122:
}

uint64_t sub_1B1BDD0D4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = sub_1B1C2C1C8();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v82 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v74 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v74 - v16;
  result = MEMORY[0x1EEE9AC00](v15);
  v21 = &v74 - v20;
  v23 = *(v22 + 72);
  if (!v23)
  {
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    return result;
  }

  v24 = a2 - a1 == 0x8000000000000000 && v23 == -1;
  if (v24)
  {
    goto LABEL_66;
  }

  v25 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v23 == -1)
  {
    goto LABEL_67;
  }

  v90 = a1;
  v89 = a4;
  v83 = a3;
  v84 = (v19 + 16);
  v85 = (v19 + 8);
  v27 = v25 / v23;
  v28 = v23;
  if ((a2 - a1) / v23 >= v25 / v23)
  {
    v79 = v14;
    sub_1B1B04B98(a2, v25 / v23, a4);
    v44 = a2;
    v45 = a4 + v27 * v28;
    v46 = -v28;
    v47 = v45;
    v48 = v83;
    v49 = a1;
    v50 = v87;
    v76 = v46;
    v77 = a1;
    v78 = a4;
LABEL_39:
    v80 = v44;
    v81 = (v44 + v46);
    v51 = v48;
    v74 = v47;
    v52 = v47;
    v53 = v82;
    while (1)
    {
      if (v45 <= a4)
      {
        v87 = v50;
        v88 = v52;
        v90 = v44;
        goto LABEL_64;
      }

      if (v44 <= v49)
      {
        v90 = v44;
        v87 = v50;
        v88 = v74;
        goto LABEL_64;
      }

      v54 = v53;
      v55 = v51;
      v75 = v52;
      v56 = v50;
      v83 = v45;
      v57 = v45 + v46;
      v58 = *v84;
      v59 = v79;
      (*v84)(v79, v45 + v46, v8);
      (v58)(v54, v81, v8);
      v60 = sub_1B1BDA53C(v59, v54);
      v87 = v56;
      if (v56)
      {
        break;
      }

      v61 = v60;
      v48 = v55 + v46;
      v62 = *v85;
      (*v85)(v54, v8);
      v62(v59, v8);
      if (v61)
      {
        v66 = v55 < v80 || v48 >= v80;
        a4 = v78;
        if (v66)
        {
          v67 = v81;
          swift_arrayInitWithTakeFrontToBack();
          v44 = v67;
          v47 = v75;
          v46 = v76;
          v49 = v77;
          v50 = v87;
          v45 = v83;
        }

        else
        {
          v46 = v76;
          v47 = v75;
          v24 = v55 == v80;
          v68 = v81;
          v44 = v81;
          v49 = v77;
          v50 = v87;
          v45 = v83;
          if (!v24)
          {
            v69 = v87;
            v70 = v76;
            v71 = v75;
            swift_arrayInitWithTakeBackToFront();
            v45 = v83;
            v50 = v69;
            v44 = v68;
            v47 = v71;
            v46 = v70;
          }
        }

        goto LABEL_39;
      }

      v63 = v55 < v83 || v48 >= v83;
      a4 = v78;
      if (v63)
      {
        swift_arrayInitWithTakeFrontToBack();
        v51 = v55 + v46;
        v45 = v57;
        v52 = v57;
        v44 = v80;
        v46 = v76;
        v49 = v77;
        v50 = v87;
        v53 = v82;
      }

      else
      {
        v52 = v57;
        v24 = v83 == v55;
        v51 = v55 + v46;
        v45 = v57;
        v44 = v80;
        v46 = v76;
        v49 = v77;
        v50 = v87;
        v53 = v82;
        if (!v24)
        {
          v64 = v80;
          v65 = v87;
          swift_arrayInitWithTakeBackToFront();
          v50 = v65;
          v44 = v64;
          v51 = v48;
          v45 = v57;
          v52 = v57;
        }
      }
    }

    v73 = *v85;
    (*v85)(v54, v8);
    v73(v59, v8);
    v90 = v80;
    v88 = v75;
  }

  else
  {
    v29 = v8;
    v30 = (a2 - a1) / v23;
    sub_1B1B04B98(a1, v30, a4);
    v31 = a2;
    v81 = v21;
    v82 = (a4 + v30 * v28);
    v88 = v82;
    v32 = v83;
    v33 = a1;
    v86 = v29;
    v80 = v17;
    while (a4 < v82 && v31 < v32)
    {
      v35 = v28;
      v36 = *v84;
      v37 = v31;
      (*v84)(v21);
      (v36)(v17, a4, v29);
      v38 = v87;
      v39 = sub_1B1BDA53C(v21, v17);
      v87 = v38;
      if (v38)
      {
        v72 = *v85;
        (*v85)(v17, v29);
        v72(v21, v29);
        break;
      }

      v40 = v39;
      v41 = *v85;
      (*v85)(v17, v29);
      v41(v21, v29);
      v28 = v35;
      if (v40)
      {
        if (v33 < v37 || v33 >= v37 + v35)
        {
          swift_arrayInitWithTakeFrontToBack();
          v31 = v37 + v35;
          v17 = v80;
        }

        else
        {
          v17 = v80;
          if (v33 != v37)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v31 = v37 + v35;
        }

        v21 = v81;
      }

      else
      {
        if (v33 < a4 || v33 >= a4 + v35)
        {
          swift_arrayInitWithTakeFrontToBack();
          v17 = v80;
        }

        else
        {
          v17 = v80;
          if (v33 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v89 = a4 + v35;
        a4 += v35;
        v21 = v81;
        v31 = v37;
      }

      v33 += v35;
      v90 = v33;
      v32 = v83;
      v29 = v86;
    }
  }

LABEL_64:
  sub_1B1BDD73C(&v90, &v89, &v88);
  return 1;
}

uint64_t sub_1B1BDD73C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_1B1C2C1C8();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_1B1BDD81C(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_1B1BDD848(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761C20, &qword_1B1C35D98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

uint64_t sub_1B1BDD948(uint64_t a1)
{
  v2 = type metadata accessor for SynthesisCacheFile(0);
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B1AD0F78(a1, v6);
  v7 = *&v6[*(v3 + 28)];
  sub_1B1ACD41C(v6);
  v8 = 0;
  v44 = MEMORY[0x1E69E7CC0];
  v9 = (MEMORY[0x1E69E7CC0] + 32);
  while (2)
  {
    result = sub_1B1C2D068();
    v12 = v11;
    if (v11 >> 60 == 15)
    {

      goto LABEL_47;
    }

    v13 = result;
    v14 = 0;
    switch(v11 >> 62)
    {
      case 1uLL:
        if (result > result >> 32)
        {
          goto LABEL_53;
        }

        v15 = sub_1B1C2BF08();
        if (!v15)
        {
          goto LABEL_9;
        }

        result = sub_1B1C2BF38();
        if (__OFSUB__(v13, result))
        {
          goto LABEL_57;
        }

        v15 = (v15 + v13 - result);
LABEL_9:
        result = sub_1B1C2BF28();
        if (!v15)
        {
          goto LABEL_60;
        }

LABEL_15:
        v14 = *v15;
LABEL_16:
        v17 = v14;
        v18 = v7;
        result = sub_1B1C2D068();
        v20 = v19;
        if (v19 >> 60 == 15)
        {
          goto LABEL_46;
        }

        break;
      case 2uLL:
        v16 = *(result + 16);
        v15 = sub_1B1C2BF08();
        if (!v15)
        {
          goto LABEL_14;
        }

        result = sub_1B1C2BF38();
        if (__OFSUB__(v16, result))
        {
          goto LABEL_56;
        }

        v15 = (v15 + v16 - result);
LABEL_14:
        result = sub_1B1C2BF28();
        if (v15)
        {
          goto LABEL_15;
        }

        goto LABEL_59;
      case 3uLL:
        goto LABEL_16;
      default:
        v14 = result;
        goto LABEL_16;
    }

    v21 = result;
    switch(v19 >> 62)
    {
      case 1uLL:
        LODWORD(v22) = HIDWORD(result) - result;
        if (__OFSUB__(HIDWORD(result), result))
        {
          goto LABEL_54;
        }

        v22 = v22;
        goto LABEL_26;
      case 2uLL:
        v24 = *(result + 16);
        v23 = *(result + 24);
        v25 = __OFSUB__(v23, v24);
        v22 = v23 - v24;
        if (v25)
        {
          goto LABEL_55;
        }

        goto LABEL_26;
      case 3uLL:
        if (v17)
        {
          goto LABEL_45;
        }

        goto LABEL_27;
      default:
        v22 = BYTE6(v19);
LABEL_26:
        if (v22 == v17)
        {
LABEL_27:
          v26 = sub_1B1C2C008();
          v27 = *(v26 + 48);
          v28 = *(v26 + 52);
          swift_allocObject();
          sub_1B1C2BFF8();
          sub_1B1AD76E8();
          sub_1B1C2BFE8();
          sub_1B1AA9670(v21, v20);
          sub_1B1AA9670(v13, v12);

          v29 = v45;
          if (v8)
          {
            v7 = v18;
            v30 = v44;
          }

          else
          {
            v31 = v44;
            v32 = v44[3];
            if (((v32 >> 1) + 0x4000000000000000) < 0)
            {
              goto LABEL_52;
            }

            v7 = v18;
            v43 = v45;
            v33 = v32 & 0xFFFFFFFFFFFFFFFELL;
            if (v33 <= 1)
            {
              v34 = 1;
            }

            else
            {
              v34 = v33;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB764028, &qword_1B1C40E08);
            v30 = swift_allocObject();
            v35 = (_swift_stdlib_malloc_size(v30) - 32) / 16;
            v30[2] = v34;
            v30[3] = 2 * v35;
            v36 = (v30 + 4);
            v37 = v31[3];
            v38 = v37 >> 1;
            if (v31[2])
            {
              if (v30 != v31 || v36 >= &v31[2 * v38 + 4])
              {
                memmove(v30 + 4, v31 + 4, 16 * v38);
              }

              v31[2] = 0;
            }

            v9 = (v36 + 16 * v38);
            v8 = (v35 & 0x7FFFFFFFFFFFFFFFLL) - (v37 >> 1);

            v29 = v43;
          }

          v25 = __OFSUB__(v8--, 1);
          if (v25)
          {
            __break(1u);
LABEL_52:
            __break(1u);
LABEL_53:
            __break(1u);
LABEL_54:
            __break(1u);
LABEL_55:
            __break(1u);
LABEL_56:
            __break(1u);
LABEL_57:
            __break(1u);
LABEL_58:
            __break(1u);
LABEL_59:
            __break(1u);
LABEL_60:
            __break(1u);
            return result;
          }

          v44 = v30;
          *v9++ = v29;
          continue;
        }

LABEL_45:
        sub_1B1AA9670(result, v19);
LABEL_46:
        sub_1B1AA9670(v13, v12);

LABEL_47:
        result = v44;
        v40 = v44[3];
        if (v40 >= 2)
        {
          v41 = v40 >> 1;
          v25 = __OFSUB__(v41, v8);
          v42 = v41 - v8;
          if (v25)
          {
            goto LABEL_58;
          }

          v44[2] = v42;
        }

        return result;
    }
  }
}

void *sub_1B1BDDD5C(uint64_t a1)
{
  v1 = a1;
  result = sub_1B1A9547C(a1);
  v3 = result;
  v4 = 0;
  v5 = 0;
  v6 = v1 & 0xC000000000000001;
  v7 = MEMORY[0x1E69E7CC0];
  v8 = (MEMORY[0x1E69E7CC0] + 32);
  v9 = v1 & 0xFFFFFFFFFFFFFF8;
  v26 = v1 & 0xFFFFFFFFFFFFFF8;
  v27 = v1;
  while (1)
  {
    if (v3 == v4)
    {
      v23 = v7[3];
      if (v23 >= 2)
      {
        v24 = v23 >> 1;
        v22 = __OFSUB__(v24, v5);
        v25 = v24 - v5;
        if (v22)
        {
          goto LABEL_32;
        }

        v7[2] = v25;
      }

      return v7;
    }

    if (v6)
    {
      result = MEMORY[0x1B2738A20](v4, v1);
    }

    else
    {
      if (v4 >= *(v9 + 16))
      {
        goto LABEL_29;
      }

      result = *(v1 + 8 * v4 + 32);
    }

    v10 = result;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (!v5)
    {
      v11 = v7[3];
      if (((v11 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_31;
      }

      v12 = v3;
      v13 = v6;
      v14 = v11 & 0xFFFFFFFFFFFFFFFELL;
      if (v14 <= 1)
      {
        v15 = 1;
      }

      else
      {
        v15 = v14;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762498, &qword_1B1C37E78);
      v16 = swift_allocObject();
      v17 = (_swift_stdlib_malloc_size(v16) - 32) / 16;
      v16[2] = v15;
      v16[3] = 2 * v17;
      v18 = (v16 + 4);
      v19 = v7[3];
      v20 = v19 >> 1;
      if (v7[2])
      {
        if (v16 != v7 || v18 >= &v7[2 * v20 + 4])
        {
          memmove(v16 + 4, v7 + 4, 16 * v20);
        }

        v7[2] = 0;
      }

      v8 = (v18 + 16 * v20);
      v5 = (v17 & 0x7FFFFFFFFFFFFFFFLL) - (v19 >> 1);

      v7 = v16;
      v6 = v13;
      v3 = v12;
      v9 = v26;
      v1 = v27;
    }

    v22 = __OFSUB__(v5--, 1);
    if (v22)
    {
      goto LABEL_30;
    }

    *v8 = v4;
    v8[1] = v10;
    v8 += 2;
    ++v4;
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
  return result;
}

uint64_t sub_1B1BDDF14(void *a1, uint64_t a2, uint64_t a3)
{
  v28 = *(v3 + *(type metadata accessor for SynthesisCacheFile(0) + 20));
  result = sub_1B1ACD41C(v3);
  v8 = 0;
  if (!a2 || !a3)
  {
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_41;
  }

  v27 = a1;
  v8 = 0;
  while (2)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      return result;
    }

    result = sub_1B1C2D068();
    v11 = v10;
    if (v10 >> 60 == 15)
    {
      goto LABEL_35;
    }

    v12 = result;
    v13 = 0;
    switch(v10 >> 62)
    {
      case 1uLL:
        if (result > result >> 32)
        {
          goto LABEL_38;
        }

        v14 = sub_1B1C2BF08();
        if (!v14)
        {
          goto LABEL_13;
        }

        result = sub_1B1C2BF38();
        if (__OFSUB__(v12, result))
        {
          goto LABEL_43;
        }

        v14 = (v14 + v12 - result);
LABEL_13:
        result = sub_1B1C2BF28();
        if (!v14)
        {
          goto LABEL_45;
        }

LABEL_19:
        v13 = *v14;
LABEL_20:
        v16 = v13;
        result = sub_1B1C2D068();
        v18 = v17;
        if (v17 >> 60 == 15)
        {
          goto LABEL_34;
        }

        break;
      case 2uLL:
        v15 = *(result + 16);
        v14 = sub_1B1C2BF08();
        if (!v14)
        {
          goto LABEL_18;
        }

        result = sub_1B1C2BF38();
        if (__OFSUB__(v15, result))
        {
          goto LABEL_42;
        }

        v14 = (v14 + v15 - result);
LABEL_18:
        result = sub_1B1C2BF28();
        if (v14)
        {
          goto LABEL_19;
        }

        goto LABEL_44;
      case 3uLL:
        goto LABEL_20;
      default:
        v13 = result;
        goto LABEL_20;
    }

    v19 = result;
    switch(v17 >> 62)
    {
      case 1uLL:
        LODWORD(v20) = HIDWORD(result) - result;
        if (__OFSUB__(HIDWORD(result), result))
        {
          goto LABEL_39;
        }

        v20 = v20;
        goto LABEL_30;
      case 2uLL:
        v22 = *(result + 16);
        v21 = *(result + 24);
        v23 = __OFSUB__(v21, v22);
        v20 = v21 - v22;
        if (v23)
        {
          goto LABEL_40;
        }

        goto LABEL_30;
      case 3uLL:
        if (v16)
        {
          goto LABEL_33;
        }

        goto LABEL_31;
      default:
        v20 = BYTE6(v17);
LABEL_30:
        if (v20 == v16)
        {
LABEL_31:
          v24 = sub_1B1C2C008();
          v25 = *(v24 + 48);
          v26 = *(v24 + 52);
          swift_allocObject();
          sub_1B1C2BFF8();
          sub_1B1AD76E8();
          sub_1B1C2BFE8();
          sub_1B1AA9670(v19, v18);
          sub_1B1AA9670(v12, v11);

          *(a2 + 16 * v8++) = v29;
          if (v9 == a3)
          {
            v8 = a3;
            goto LABEL_35;
          }

          continue;
        }

LABEL_33:
        sub_1B1AA9670(result, v17);
LABEL_34:
        sub_1B1AA9670(v12, v11);
LABEL_35:
        a1 = v27;
LABEL_36:
        *a1 = v28;
        return v8;
    }
  }
}

void sub_1B1BDE214()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_8_29(v5, v6, v7, v8);
  if (!v10)
  {
    v12 = 0;
LABEL_17:
    OUTLINED_FUNCTION_20_13(v12);
    OUTLINED_FUNCTION_26_1();
    return;
  }

  v11 = v9;
  if (!v9)
  {
    v12 = 0;
    goto LABEL_17;
  }

  if ((v9 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_15_18();
    while (v13 < v11)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_21;
      }

      if (!v3)
      {
        while (1)
        {
          v15 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          if (v15 >= v4)
          {
            goto LABEL_17;
          }

          v3 = *(v2 + 8 * v15);
          ++v12;
          if (v3)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v15 = v12;
LABEL_12:
      v16 = __clz(__rbit64(v3));
      v3 &= v3 - 1;
      v17 = *(*(v0 + 48) + ((v15 << 9) | (8 * v16)));
      *v1 = v17;
      if (v14 == v11)
      {
        v19 = v17;
        v12 = v15;
        goto LABEL_17;
      }

      ++v1;
      v18 = v17;
      v13 = v14;
      v12 = v15;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_1B1BDE30C()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_8_29(v5, v6, v7, v8);
  if (!v10)
  {
    v12 = 0;
LABEL_17:
    OUTLINED_FUNCTION_20_13(v12);
    OUTLINED_FUNCTION_26_1();
    return;
  }

  v11 = v9;
  if (!v9)
  {
    v12 = 0;
    goto LABEL_17;
  }

  if ((v9 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_15_18();
    while (v13 < v11)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_21;
      }

      if (!v3)
      {
        while (1)
        {
          v15 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          if (v15 >= v4)
          {
            goto LABEL_17;
          }

          v3 = *(v2 + 8 * v15);
          ++v12;
          if (v3)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v15 = v12;
LABEL_12:
      v16 = (*(v0 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v3)))));
      v17 = v16[1];
      v3 &= v3 - 1;
      *v1 = *v16;
      v1[1] = v17;
      if (v14 == v11)
      {

        v12 = v15;
        goto LABEL_17;
      }

      v1 += 2;

      v13 = v14;
      v12 = v15;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

id sub_1B1BDE408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  type metadata accessor for URLResourceKey(0);
  v9 = sub_1B1C2CE68();

  v10 = [a5 contentsOfDirectoryAtURL:a1 includingPropertiesForKeys:v9 options:a3 error:a4];

  return v10;
}

uint64_t sub_1B1BDE4BC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_7_0(v4);
  (*(v5 + 8))(a1);
  return a1;
}

void sub_1B1BDE538(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v8 = a1 >> 32;
      if (a1 >> 32 >= a1)
      {
        a1 = a1;
        v6 = a2 & 0x3FFFFFFFFFFFFFFFLL;
        v7 = v8;
        goto LABEL_8;
      }

      __break(1u);
      break;
    case 2uLL:
      v5 = *(a1 + 24);
      v6 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      a1 = *(a1 + 16);
      v7 = v5;
LABEL_8:
      sub_1B1BE1FB8(a1, v7, v6, a3);
      break;
    case 3uLL:
      a1 = 0;
      v4 = 0;
      goto LABEL_5;
    default:
      v4 = a2 & 0xFFFFFFFFFFFFFFLL;
LABEL_5:
      sub_1B1BE1F3C(a1, v4, a3);
      break;
  }
}

uint64_t sub_1B1BDE5D0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB764058, &qword_1B1C40E80);
    v2 = sub_1B1C2D6A8();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v4 = v2;
  sub_1B1BE2BC0(a1, 1, &v4);
  return v4;
}

uint64_t sub_1B1BDE668(int a1)
{
  v2 = sub_1B1C2CBC8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  OUTLINED_FUNCTION_16();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761C80, &qword_1B1C35DF8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B1C364E0;
  *(v4 + 32) = HIBYTE(a1);
  *(v4 + 33) = BYTE2(a1);
  *(v4 + 34) = BYTE1(a1);
  *(v4 + 35) = a1;
  v5 = sub_1B1BDE7BC(v4);
  v7 = v6;
  sub_1B1C2CBA8();
  v8 = sub_1B1C2CB78();
  if (!v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
    v10 = swift_allocObject();
    v11 = MEMORY[0x1E69E7668];
    *(v10 + 16) = xmmword_1B1C361C0;
    v12 = MEMORY[0x1E69E76D0];
    *(v10 + 56) = v11;
    *(v10 + 64) = v12;
    *(v10 + 32) = a1;
    v8 = sub_1B1C2CB98();
  }

  v13 = v8;
  sub_1B1A94524(v5, v7);
  return v13;
}

uint64_t sub_1B1BDE7BC(uint64_t a1)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB764068, &unk_1B1C40E90);
  v8 = sub_1B1AA624C(&qword_1EB764070, &qword_1EB764068, &unk_1B1C40E90);
  v6[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v6, v7);
  sub_1B1BE2EEC(*v2 + 32, *v2 + 32 + *(*v2 + 16), &v5);
  v3 = v5;
  __swift_destroy_boxed_opaque_existential_0(v6);
  return v3;
}

uint64_t sub_1B1BDE88C()
{
  v1 = OBJC_IVAR____TtC14SiriTTSService19TTSAssetLegacyAsset____lazy_storage___voiceDesc;
  if (*(v0 + OBJC_IVAR____TtC14SiriTTSService19TTSAssetLegacyAsset____lazy_storage___voiceDesc))
  {
    v2 = *(v0 + OBJC_IVAR____TtC14SiriTTSService19TTSAssetLegacyAsset____lazy_storage___voiceDesc);
  }

  else
  {
    v2 = sub_1B1BDE93C();
    v3 = *(v0 + v1);
    *(v0 + v1) = v2;
  }

  return v2;
}

id sub_1B1BDE8F0(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC14SiriTTSService19TTSAssetLegacyAsset____lazy_storage___voiceDesc] = 0;
  *&v1[OBJC_IVAR____TtC14SiriTTSService19TTSAssetLegacyAsset_asset] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TTSAssetLegacyAsset();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_1B1BDE93C()
{
  v1 = sub_1B1C2C1C8();
  v2 = OUTLINED_FUNCTION_7(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_16();
  v9 = v8 - v7;
  v10 = *(v0 + OBJC_IVAR____TtC14SiriTTSService19TTSAssetLegacyAsset_asset);
  OUTLINED_FUNCTION_75();
  v12 = sub_1B1BE34F8(0xD000000000000010, v11, 0, 0xE000000000000000, v10);
  if (v12)
  {
    v13 = v12;
    sub_1B1C2C168();

    v14 = sub_1B1BDEBC0();
    (*(v4 + 8))(v9, v1);
  }

  else
  {
    sub_1B1AE309C();
    v14 = sub_1B1C2CAB8();
  }

  v33 = v14;
  v15 = [v10 bundleIdentifier];
  if (v15)
  {
    v16 = v15;
    sub_1B1C2CB58();

    v30 = 45;
    v31 = 0xE100000000000000;
    v28 = 0;
    v29 = 0xE000000000000000;
    sub_1B1A8EDAC();
    v17 = MEMORY[0x1E69E6158];
    OUTLINED_FUNCTION_13_24();
    v18 = sub_1B1C2D398();
    v20 = v19;

    v32[3] = v17;
    v32[0] = v18;
    v32[1] = v20;
    sub_1B1AE3710(v32, 5);
  }

  v21 = [v10 infoDictionary];
  if (!v21)
  {
    return v33;
  }

  v22 = v21;
  v23 = sub_1B1C2CA98();

  v24 = sub_1B1BDF010(v23);

  v25 = v33;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v32[0] = v25;
  sub_1B1BE29AC(v24, sub_1B1BE2EB8, 0, isUniquelyReferenced_nonNull_native, v32);
  return v32[0];
}

uint64_t sub_1B1BDEBC0()
{
  v4 = MEMORY[0x1E69E7CC8];
  v0 = sub_1B1C2C208();
  v2 = v1;
  sub_1B1BDE538(v0, v1, &v4);
  sub_1B1A94524(v0, v2);
  return v4;
}

uint64_t sub_1B1BDEC3C(unsigned __int8 *a1)
{
  v2 = sub_1B1C2CBC8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = *a1;
  sub_1B1C2CBB8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB764040, &qword_1B1C40E60);
  sub_1B1AA624C(&qword_1EB764048, &qword_1EB764040, &qword_1B1C40E60);
  result = sub_1B1C2CB88();
  if (!v5)
  {
    return 0;
  }

  return result;
}

void sub_1B1BDED2C(int *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, _BYTE *a4@<X8>)
{
  v46 = *MEMORY[0x1E69E9840];
  if (!a1 || (a2 - a1 + 363) <= 0x2D6)
  {
    *a4 = 0;
    goto LABEL_15;
  }

  v6 = a1[1];
  v7 = *(a1 + 168);
  v8 = *(a1 + 169);
  v9 = *(a1 + 170);
  v10 = *(a1 + 171);
  v11 = *(a1 + 172);
  v28 = *(a1 + 173);
  v29 = a1[2];
  v12 = a1[87];
  v31 = *a1;
  memmove(&v32, a1 + 3, 0x144uLL);
  v34 = v7;
  v35 = v8;
  v36 = v9;
  v37 = v10;
  v38 = v11;
  v39 = v28;
  v40 = v12;
  v13 = a1[90];
  v41 = *(a1 + 44);
  v42 = v13;
  v14 = MEMORY[0x1E69E7668];
  v45 = MEMORY[0x1E69E7668];
  LODWORD(v43) = bswap32(v6);
  sub_1B1AE3710(&v43, 0);
  v45 = v14;
  LODWORD(v43) = bswap32(v29);
  sub_1B1AE3710(&v43, 1);
  v15 = sub_1B1BDEC3C(&v32 + 4);
  v16 = MEMORY[0x1E69E6158];
  v45 = MEMORY[0x1E69E6158];
  v43 = v15;
  v44 = v17;
  sub_1B1AE3710(&v43, 4);
  sub_1B1B29F40(4, *a3);
  sub_1B1AE3710(&v43, 2);
  v18 = sub_1B1BDEC3C(v33);
  v45 = v16;
  v43 = v18;
  v44 = v19;
  sub_1B1AE3710(&v43, 8);
  v20 = bswap32(v7) >> 16;
  if (v20 == 2)
  {
    v21 = "VoiceGenderFemale";
LABEL_9:
    v45 = v16;
    v43 = 0xD000000000000011;
    v44 = (v21 - 32) | 0x8000000000000000;
    goto LABEL_10;
  }

  if (v20 != 1)
  {
    v21 = "VoiceGenderNeuter";
    goto LABEL_9;
  }

  v45 = v16;
  v43 = 0x6E65476563696F56;
  v44 = 0xEF656C614D726564;
LABEL_10:
  sub_1B1AE3710(&v43, 7);
  v45 = MEMORY[0x1E69E7290];
  LOWORD(v43) = __rev16(v8);
  sub_1B1AE3710(&v43, 6);
  CanonicalLocaleIdentifierFromScriptManagerCodes = CFLocaleCreateCanonicalLocaleIdentifierFromScriptManagerCodes(*MEMORY[0x1E695E480], bswap32(v10) >> 16, bswap32(v11) >> 16);
  if (CanonicalLocaleIdentifierFromScriptManagerCodes)
  {
    v23 = CanonicalLocaleIdentifierFromScriptManagerCodes;
    type metadata accessor for CFString(0);
    v45 = v24;
    v43 = v23;
    sub_1B1AE3710(&v43, 10);
  }

  v25 = bswap32(v9) >> 16;
  v26 = bswap32(v12);
  if (v25 < 0)
  {
    v25 = v26;
  }

  v45 = MEMORY[0x1E69E72F0];
  LODWORD(v43) = v25;
  sub_1B1AE3710(&v43, 12);
  *a4 = 0;
LABEL_15:
  v27 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B1BDF010(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7621E0, &qword_1B1C37470);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B1C361C0;
  *(inited + 32) = 12;
  *(inited + 64) = MEMORY[0x1E69E7668];
  *(inited + 40) = 134217984;
  sub_1B1AE309C();
  v3 = sub_1B1C2CAB8();
  sub_1B1A93AEC(0x7474416563696F56, 0xEF73657475626972, a1);
  if (!*(&v35[0] + 1))
  {

    sub_1B1A90C78(&v34, &qword_1EB761DE0, &qword_1B1C352C0);
    return sub_1B1C2CAB8();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761C30, &unk_1B1C38180);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return sub_1B1C2CAB8();
  }

  v4 = 0;
  v5 = v31 + 64;
  v29 = v31;
  v6 = 1 << *(v31 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v31 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = v4;
LABEL_12:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = v11 | (v10 << 6);
    v13 = (*(v29 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_1B1A93378(*(v29 + 56) + 32 * v12, v30);
    *&v31 = v15;
    *(&v31 + 1) = v14;
    sub_1B1A9EEE0(v30, &v32);

LABEL_13:
    v34 = v31;
    v35[0] = v32;
    v35[1] = v33;
    if (!*(&v31 + 1))
    {

      return v3;
    }

    sub_1B1A9EEE0(v35, &v31);
    v16 = sub_1B1B1991C();
    if (v16 != 21)
    {
      v17 = v16;
      sub_1B1A93378(&v31, v30);
      swift_isUniquelyReferenced_nonNull_native();
      v18 = sub_1B1AE3960(v17);
      if (__OFADD__(v3[2], (v19 & 1) == 0))
      {
        goto LABEL_31;
      }

      v20 = v18;
      v21 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762500, &unk_1B1C380A8);
      if (sub_1B1C2D628())
      {
        v22 = sub_1B1AE3960(v17);
        if ((v21 & 1) != (v23 & 1))
        {
          goto LABEL_33;
        }

        v20 = v22;
      }

      if (v21)
      {
        v24 = (v3[7] + 32 * v20);
        __swift_destroy_boxed_opaque_existential_0(v24);
        sub_1B1A9EEE0(v30, v24);
      }

      else
      {
        v3[(v20 >> 6) + 8] |= 1 << v20;
        *(v3[6] + v20) = v17;
        sub_1B1A9EEE0(v30, (v3[7] + 32 * v20));
        v25 = v3[2];
        v26 = __OFADD__(v25, 1);
        v27 = v25 + 1;
        if (v26)
        {
          goto LABEL_32;
        }

        v3[2] = v27;
      }
    }

    __swift_destroy_boxed_opaque_existential_0(&v31);
  }

  while (1)
  {
    v10 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v10 >= v9)
    {
      v8 = 0;
      v32 = 0u;
      v33 = 0u;
      v31 = 0u;
      goto LABEL_13;
    }

    v8 = *(v5 + 8 * v10);
    ++v4;
    if (v8)
    {
      v4 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_1B1C2D818();
  __break(1u);
  return result;
}

id sub_1B1BDF414()
{
  sub_1B1BDE88C();
  OUTLINED_FUNCTION_8_30();
  sub_1B1B29F40(0, v0);

  if (v18)
  {
    v1 = swift_dynamicCast() ^ 1;
  }

  else
  {
    sub_1B1A90C78(v17, &qword_1EB761DE0, &qword_1B1C352C0);
    v1 = 1;
  }

  sub_1B1AE3480();
  if ((v2 & 0x100000000) != 0)
  {
    if (v1)
    {
      goto LABEL_16;
    }
  }

  else
  {
    OUTLINED_FUNCTION_12_18();
    if ((v3 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  sub_1B1AE3480();
  if ((v4 & 0x100000000) != 0)
  {
    if (v1)
    {
      goto LABEL_16;
    }
  }

  else
  {
    OUTLINED_FUNCTION_12_18();
    if ((v5 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  sub_1B1AE3480();
  if ((v6 & 0x100000000) != 0)
  {
    if (v1)
    {
      goto LABEL_16;
    }
  }

  else
  {
    OUTLINED_FUNCTION_12_18();
    if ((v7 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  sub_1B1AE3480();
  if ((v11 & 0x100000000) != 0)
  {
    if (v1)
    {
LABEL_28:
      if (qword_1ED9A9850 != -1)
      {
        OUTLINED_FUNCTION_22();
      }

      v8 = &qword_1ED9A97E0;
      goto LABEL_19;
    }
  }

  else
  {
    OUTLINED_FUNCTION_12_18();
    if ((v12 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  sub_1B1AE3480();
  if ((v13 & 0x100000000) != 0)
  {
    if (v1)
    {
      goto LABEL_28;
    }
  }

  else
  {
    OUTLINED_FUNCTION_12_18();
    if ((v14 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  sub_1B1AE3480();
  if ((v15 & 0x100000000) == 0)
  {
    OUTLINED_FUNCTION_12_18();
    if ((v16 & 1) == 0)
    {
      goto LABEL_36;
    }

LABEL_16:
    if (qword_1ED9A98A8 != -1)
    {
      OUTLINED_FUNCTION_21();
    }

    v8 = &qword_1ED9A98B0;
    goto LABEL_19;
  }

  if (!v1)
  {
    goto LABEL_16;
  }

LABEL_36:
  if (qword_1ED9A9978 != -1)
  {
    OUTLINED_FUNCTION_6();
  }

  v8 = &qword_1ED9A9980;
LABEL_19:
  v9 = *v8;

  return v9;
}

id sub_1B1BDF660()
{
  if (qword_1EB7615D8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB7625D0;

  return v1;
}

id sub_1B1BDF700()
{
  v1 = v0;
  v2 = sub_1B1BDF414();
  v3 = qword_1ED9A98A8;
  v4 = v2;
  if (v3 != -1)
  {
    OUTLINED_FUNCTION_21();
  }

  v5 = qword_1ED9A98B0;
  sub_1B1A8E474(0, &qword_1ED9A99D0, off_1E7AF1A98);
  v6 = v5;
  v7 = sub_1B1C2D248();

  if (v7)
  {

    if (qword_1ED9A5280 != -1)
    {
      swift_once();
    }

    v8 = &qword_1ED9A5288;
    goto LABEL_50;
  }

  v9 = qword_1ED9A9850;
  v10 = v4;
  if (v9 != -1)
  {
    OUTLINED_FUNCTION_22();
  }

  v11 = qword_1ED9A97E0;
  v12 = sub_1B1C2D248();

  if (v12)
  {

    sub_1B1BDE88C();
    OUTLINED_FUNCTION_8_30();
    sub_1B1B29F40(13, v1);

    if (v25)
    {
      if (OUTLINED_FUNCTION_8_18())
      {
        OUTLINED_FUNCTION_75();
        v14 = v22 == 0xD000000000000010 && v13 == v23;
        if (v14 || (OUTLINED_FUNCTION_3() & 1) != 0 || ((OUTLINED_FUNCTION_75(), v22 == 0xD000000000000017) ? (v16 = v15 == v23) : (v16 = 0), v16))
        {

LABEL_39:
          if (qword_1ED9A97B8 != -1)
          {
            swift_once();
          }

          v8 = &qword_1ED9A97C0;
          goto LABEL_50;
        }

        OUTLINED_FUNCTION_3();
        OUTLINED_FUNCTION_121();
        if (v22)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      sub_1B1A90C78(v24, &qword_1EB761DE0, &qword_1B1C352C0);
    }

    goto LABEL_35;
  }

  if (qword_1ED9A9978 != -1)
  {
    OUTLINED_FUNCTION_6();
  }

  v17 = qword_1ED9A9980;
  v18 = sub_1B1C2D248();

  if ((v18 & 1) == 0)
  {
LABEL_35:
    if (qword_1ED9A9890 != -1)
    {
      swift_once();
    }

    v8 = &qword_1ED9A9818;
    goto LABEL_50;
  }

  sub_1B1BDE88C();
  OUTLINED_FUNCTION_8_30();
  sub_1B1B29F40(14, v1);

  if (v25)
  {
    if (OUTLINED_FUNCTION_8_18())
    {
      if (v22 == 0x6C617275656ELL && v23 == 0xE600000000000000)
      {

LABEL_47:
        if (qword_1ED9A9820 != -1)
        {
          swift_once();
        }

        v8 = &qword_1ED9A9828;
        goto LABEL_50;
      }

      sub_1B1C2D7A8();
      OUTLINED_FUNCTION_121();
      if (v1)
      {
        goto LABEL_47;
      }
    }
  }

  else
  {
    sub_1B1A90C78(v24, &qword_1EB761DE0, &qword_1B1C352C0);
  }

  if (qword_1ED9A97A8 != -1)
  {
    swift_once();
  }

  v8 = &qword_1ED9A9898;
LABEL_50:
  v20 = *v8;

  return v20;
}

id sub_1B1BDFB24()
{
  v1 = v0;
  sub_1B1A8E474(0, &qword_1ED9A99D0, off_1E7AF1A98);
  v2 = sub_1B1BDF414();
  if (qword_1ED9A98A8 != -1)
  {
    OUTLINED_FUNCTION_21();
  }

  v3 = qword_1ED9A98B0;
  v4 = sub_1B1C2D248();

  if (v4)
  {
    v5 = sub_1B1BDE88C();
    sub_1B1B29F40(0, v5);

    if (v27)
    {
      v6 = OUTLINED_FUNCTION_8_18();
      if (v6)
      {
        v7 = v24;
      }

      else
      {
        v7 = 0;
      }

      v8 = v6 ^ 1;
    }

    else
    {
      sub_1B1A90C78(v26, &qword_1EB761DE0, &qword_1B1C352C0);
      v7 = 0;
      v8 = 1;
    }

    sub_1B1AE3480();
    if ((v15 & 0x100000000) != 0)
    {
      if (v8)
      {
        goto LABEL_55;
      }
    }

    else
    {
      if (v7 == v15)
      {
        v16 = v8;
      }

      else
      {
        v16 = 1;
      }

      if ((v16 & 1) == 0)
      {
        goto LABEL_55;
      }
    }

    sub_1B1AE3480();
    if ((v17 & 0x100000000) == 0)
    {
      if (v7 == v17)
      {
        v18 = v8;
      }

      else
      {
        v18 = 1;
      }

      if ((v18 & 1) == 0)
      {
        goto LABEL_55;
      }

LABEL_42:
      v19 = *(v1 + OBJC_IVAR____TtC14SiriTTSService19TTSAssetLegacyAsset____lazy_storage___voiceDesc);

      sub_1B1B29F40(13, v19);

      if (v27)
      {
        if (OUTLINED_FUNCTION_8_18())
        {
          if (v24 != 0xD000000000000011 || 0x80000001B1C4A5B0 != v25)
          {
            sub_1B1C2D7A8();
            OUTLINED_FUNCTION_121();
            if (v7)
            {
              goto LABEL_55;
            }

            goto LABEL_51;
          }

          goto LABEL_54;
        }

LABEL_51:
        if (qword_1ED9A9100 != -1)
        {
          swift_once();
        }

        v21 = &qword_1ED9A90A8;
        goto LABEL_58;
      }

LABEL_50:
      sub_1B1A90C78(v26, &qword_1EB761DE0, &qword_1B1C352C0);
      goto LABEL_51;
    }

    if (!v8)
    {
      goto LABEL_42;
    }

LABEL_55:
    if (qword_1ED9A97D8 != -1)
    {
      swift_once();
    }

    v21 = &qword_1ED9A9830;
    goto LABEL_58;
  }

  sub_1B1BDE88C();
  OUTLINED_FUNCTION_8_30();
  sub_1B1B29F40(13, v1);

  if (!v27)
  {
    goto LABEL_50;
  }

  if ((OUTLINED_FUNCTION_8_18() & 1) == 0)
  {
    goto LABEL_51;
  }

  OUTLINED_FUNCTION_75();
  v10 = v24 == 0xD000000000000011 && v9 == v25;
  if (v10 || (OUTLINED_FUNCTION_3() & 1) != 0 || ((OUTLINED_FUNCTION_75(), v24 == 0xD000000000000017) ? (v12 = v11 == v25) : (v12 = 0), v12 || (OUTLINED_FUNCTION_3() & 1) != 0))
  {
LABEL_54:

    goto LABEL_55;
  }

  OUTLINED_FUNCTION_75();
  if (v24 == 0xD000000000000010 && v13 == v25)
  {
  }

  else
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_121();
    if ((v24 & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  if (qword_1ED9A9628 != -1)
  {
    swift_once();
  }

  v21 = &qword_1ED9A9598;
LABEL_58:
  v22 = *v21;

  return v22;
}

uint64_t sub_1B1BDFEF0()
{
  sub_1B1BDE88C();
  OUTLINED_FUNCTION_8_30();
  sub_1B1B29F40(4, v0);

  if (v20)
  {
    OUTLINED_FUNCTION_17_15(v2, v3, v4, MEMORY[0x1E69E6158], v5, v6, v7, v8, v18);
    if (swift_dynamicCast())
    {
      return v18;
    }
  }

  else
  {
    sub_1B1A90C78(v19, &qword_1EB761DE0, &qword_1B1C352C0);
  }

  v9 = *(v1 + OBJC_IVAR____TtC14SiriTTSService19TTSAssetLegacyAsset____lazy_storage___voiceDesc);

  sub_1B1B29F40(2, v9);

  if (v20)
  {
    OUTLINED_FUNCTION_17_15(v10, v11, v12, MEMORY[0x1E69E6158], v13, v14, v15, v16, v18);
    if (swift_dynamicCast())
    {
      return v18;
    }
  }

  else
  {
    sub_1B1A90C78(v19, &qword_1EB761DE0, &qword_1B1C352C0);
  }

  return 0;
}

uint64_t sub_1B1BE0010()
{
  sub_1B1BDE88C();
  OUTLINED_FUNCTION_8_30();
  sub_1B1B29F40(5, v0);

  if (v43)
  {
    OUTLINED_FUNCTION_17_15(v2, v3, v4, MEMORY[0x1E69E6158], v5, v6, v7, v8, v39);
    if (OUTLINED_FUNCTION_19_11())
    {
      return v39;
    }
  }

  else
  {
    sub_1B1A90C78(&v41, &qword_1EB761DE0, &qword_1B1C352C0);
  }

  v10 = OBJC_IVAR____TtC14SiriTTSService19TTSAssetLegacyAsset____lazy_storage___voiceDesc;
  v11 = *(v1 + OBJC_IVAR____TtC14SiriTTSService19TTSAssetLegacyAsset____lazy_storage___voiceDesc);

  sub_1B1B29F40(4, v11);

  if (!v43)
  {
    sub_1B1A90C78(&v41, &qword_1EB761DE0, &qword_1B1C352C0);
LABEL_9:
    v19 = 1061109567;
    v20 = *(v1 + v10);

    sub_1B1B29F40(0, v20);

    if (v43)
    {
      OUTLINED_FUNCTION_17_15(v21, v22, v23, MEMORY[0x1E69E7668], v24, v25, v26, v27, v39);
      if (OUTLINED_FUNCTION_19_11())
      {
        sub_1B1BDE668(v39);
      }
    }

    else
    {
      sub_1B1A90C78(&v41, &qword_1EB761DE0, &qword_1B1C352C0);
    }

    v28 = *(v1 + v10);

    sub_1B1B29F40(1, v28);

    if (v43)
    {
      OUTLINED_FUNCTION_17_15(v29, v30, v31, MEMORY[0x1E69E7668], v32, v33, v34, v35, v39);
      if (OUTLINED_FUNCTION_19_11())
      {
        v19 = sub_1B1BDE668(v40);
        v37 = v36;
LABEL_18:
        v41 = 0;
        v42 = 0xE000000000000000;
        sub_1B1C2D538();

        OUTLINED_FUNCTION_15_19();
        v38 = OUTLINED_FUNCTION_33();
        MEMORY[0x1B27381B0](v38);

        MEMORY[0x1B27381B0](46, 0xE100000000000000);
        MEMORY[0x1B27381B0](v19, v37);
        goto LABEL_19;
      }
    }

    else
    {
      sub_1B1A90C78(&v41, &qword_1EB761DE0, &qword_1B1C352C0);
    }

    v37 = 0xE400000000000000;
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_17_15(v12, v13, v14, MEMORY[0x1E69E6158], v15, v16, v17, v18, v39);
  if ((OUTLINED_FUNCTION_19_11() & 1) == 0)
  {
    goto LABEL_9;
  }

  v41 = 0;
  v42 = 0xE000000000000000;
  sub_1B1C2D538();

  OUTLINED_FUNCTION_15_19();
  MEMORY[0x1B27381B0](v39);
LABEL_19:

  return v41;
}

void sub_1B1BE02D4()
{
  OUTLINED_FUNCTION_25();
  v1 = *(v0 + OBJC_IVAR____TtC14SiriTTSService19TTSAssetLegacyAsset_asset);
  OUTLINED_FUNCTION_75();
  v2 = sub_1B1C2CB28();
  v3 = [v1 objectForInfoDictionaryKey_];

  if (v3)
  {
    sub_1B1C2D3F8();
    swift_unknownObjectRelease();
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
  }

  v30[0] = v28;
  v30[1] = v29;
  if (!*(&v29 + 1))
  {
    sub_1B1A90C78(v30, &qword_1EB761DE0, &qword_1B1C352C0);
    goto LABEL_29;
  }

  v4 = swift_dynamicCast();
  if ((v4 & 1) == 0)
  {
LABEL_29:
    OUTLINED_FUNCTION_26_1();
    return;
  }

  *&v30[0] = 46;
  *(&v30[0] + 1) = 0xE100000000000000;
  MEMORY[0x1EEE9AC00](v4);
  v27[2] = v30;
  v7 = sub_1B1BE1BA0(0x7FFFFFFFFFFFFFFFLL, 1, sub_1B1ABAB38, v27, v5, v6);
  v8 = 0;
  v9 = (v7 + 56);
  v10 = -*(v7 + 16);
  v11 = -1;
  while (1)
  {
    if (v10 + v11 == -1)
    {

      goto LABEL_29;
    }

    if (++v11 >= *(v7 + 16))
    {
      break;
    }

    v12 = 100 * v8;
    if ((v8 * 100) >> 64 != (100 * v8) >> 63)
    {
      goto LABEL_31;
    }

    v14 = *(v9 - 3);
    v13 = *(v9 - 2);
    if ((v13 ^ v14) < 0x4000)
    {
      v22 = 0;
    }

    else
    {
      v16 = *(v9 - 1);
      v15 = *v9;
      if ((*v9 & 0x1000000000000000) != 0)
      {
        v23 = *v9;

        v19 = sub_1B1BE2F64(v14, v13, v16, v15, 10);
        v21 = v24;
      }

      else
      {
        if ((v15 & 0x2000000000000000) != 0)
        {
          v18 = HIBYTE(v15) & 0xF;
          *&v30[0] = *(v9 - 1);
          *(&v30[0] + 1) = v15 & 0xFFFFFFFFFFFFFFLL;
          v17 = v30;
        }

        else if ((v16 & 0x1000000000000000) != 0)
        {
          v17 = ((v15 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v18 = v16 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v25 = *(v9 - 1);
          v26 = *v9;
          v17 = sub_1B1C2D578();
        }

        v19 = sub_1B1BE36C4(v17, v18, v14, v13, v16, v15, 10);
        LOBYTE(v28) = v20 & 1;

        v21 = v28;
      }

      if (v21)
      {
        v22 = 0;
      }

      else
      {
        v22 = v19;
      }
    }

    v9 += 4;
    v8 = v12 + v22;
    if (__OFADD__(v12, v22))
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  swift_bridgeObjectRetain_n();

  __break(1u);
}

id sub_1B1BE059C(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_1B1C2CB28();

  return v5;
}

uint64_t sub_1B1BE060C()
{
  v1 = sub_1B1BDE88C();
  sub_1B1B29F40(11, v1);

  if (*(&v12 + 1))
  {
    if (OUTLINED_FUNCTION_10_29())
    {
      return v9[0];
    }
  }

  else
  {
    sub_1B1A90C78(&v11, &qword_1EB761DE0, &qword_1B1C352C0);
  }

  v2 = *(v0 + OBJC_IVAR____TtC14SiriTTSService19TTSAssetLegacyAsset____lazy_storage___voiceDesc);

  sub_1B1B29F40(11, v2);

  if (!*(&v12 + 1))
  {
    sub_1B1A90C78(&v11, &qword_1EB761DE0, &qword_1B1C352C0);
LABEL_9:
    v5 = *(v0 + OBJC_IVAR____TtC14SiriTTSService19TTSAssetLegacyAsset_asset);
    OUTLINED_FUNCTION_75();
    v6 = sub_1B1C2CB28();
    v7 = [v5 objectForInfoDictionaryKey_];

    if (v7)
    {
      sub_1B1C2D3F8();
      swift_unknownObjectRelease();
    }

    else
    {
      *v9 = 0u;
      v10 = 0u;
    }

    v11 = *v9;
    v12 = v10;
    if (*(&v10 + 1))
    {
      if (OUTLINED_FUNCTION_10_29())
      {
        return v9[0];
      }
    }

    else
    {
      sub_1B1A90C78(&v11, &qword_1EB761DE0, &qword_1B1C352C0);
    }

    return 0x6E776F6E6B6E555BLL;
  }

  sub_1B1A8E474(0, &qword_1ED9A94B0, 0x1E696AD98);
  if ((OUTLINED_FUNCTION_10_29() & 1) == 0)
  {
    goto LABEL_9;
  }

  v3 = [v9[0] description];

  v4 = sub_1B1C2CB58();
  return v4;
}

uint64_t sub_1B1BE0870()
{
  v0 = sub_1B1BDE88C();
  sub_1B1B29F40(10, v0);

  if (!v8[3])
  {
    sub_1B1A90C78(v8, &qword_1EB761DE0, &qword_1B1C352C0);
    return MEMORY[0x1E69E7CC0];
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761C70, &qword_1B1C36250);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1B1C361C0;
  v8[0] = v6;
  v8[1] = v7;
  sub_1B1A8EDAC();
  OUTLINED_FUNCTION_13_24();
  v2 = sub_1B1C2D398();
  v4 = v3;

  *(v1 + 32) = v2;
  *(v1 + 40) = v4;
  return v1;
}

uint64_t sub_1B1BE09DC()
{
  sub_1B1BDE88C();
  OUTLINED_FUNCTION_8_30();
  sub_1B1B29F40(7, v0);

  if (v3)
  {
    if (OUTLINED_FUNCTION_8_18())
    {
      return qword_1B1C40EA0[sub_1B1B19970()];
    }
  }

  else
  {
    sub_1B1A90C78(v2, &qword_1EB761DE0, &qword_1B1C352C0);
  }

  return 0;
}

uint64_t sub_1B1BE0AB8()
{
  sub_1B1BDE88C();
  OUTLINED_FUNCTION_8_30();
  sub_1B1B29F40(6, v0);

  if (v4)
  {
    sub_1B1A8E474(0, &qword_1ED9A94B0, 0x1E696AD98);
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1B1A90C78(v3, &qword_1EB761DE0, &qword_1B1C352C0);
    return 0;
  }
}

void sub_1B1BE0BA8()
{
  OUTLINED_FUNCTION_25();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DB0, &unk_1B1C40E10);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v60 - v3;
  v72 = sub_1B1C2BFD8();
  v5 = OUTLINED_FUNCTION_7(v72);
  v67 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_16();
  v70 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F00, &qword_1B1C36480);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v60 - v13;
  v15 = sub_1B1C2C078();
  v16 = OUTLINED_FUNCTION_7(v15);
  v64 = v17;
  v65 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_16();
  v66 = v21 - v20;
  v22 = sub_1B1C2C1C8();
  v23 = OUTLINED_FUNCTION_7(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  v28 = MEMORY[0x1EEE9AC00](v23);
  v30 = &v60 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v60 - v31;
  v33 = [*(v0 + OBJC_IVAR____TtC14SiriTTSService19TTSAssetLegacyAsset_asset) bundleURL];
  sub_1B1C2C168();

  v34 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DB8, &unk_1B1C364C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B1C361C0;
  v36 = *MEMORY[0x1E695DB50];
  *(inited + 32) = *MEMORY[0x1E695DB50];
  v37 = v36;
  sub_1B1B483DC(inited);
  v39 = v38;

  sub_1B1BD6ECC(v40);
  OUTLINED_FUNCTION_13_24();
  v41 = sub_1B1C2D088();

  if (v41)
  {
    v74 = v39;
    v62 = v32;
    v42 = v66;
    v61 = v41;
    sub_1B1C2D058();
    v63 = 0;
    v71 = (v25 + 32);
    v73 = (v25 + 8);
    v43 = (v67 + 4);
    ++v67;
    v68 = v43;
    v44 = v42;
    v45 = v34;
    v69 = v34;
    while (1)
    {
      sub_1B1C2C068();
      if (!v75)
      {
        break;
      }

      if (swift_dynamicCast())
      {
        __swift_storeEnumTagSinglePayload(v14, 0, 1, v22);
        (*v71)(v30, v14, v22);
        sub_1B1C2C0D8();
        v46 = v4;
        v47 = v30;
        v48 = v44;
        v49 = v4;
        v50 = v72;
        __swift_storeEnumTagSinglePayload(v46, 0, 1, v72);
        v51 = v70;
        (*v68)(v70, v49, v50);
        v52 = sub_1B1C2BFC8();
        v54 = v53;
        v55 = v50;
        v4 = v49;
        v44 = v48;
        v30 = v47;
        v45 = v69;
        (*v67)(v51, v55);
        v56 = OUTLINED_FUNCTION_16_20();
        v57(v56);
        if ((v54 & 1) == 0)
        {
          v58 = __OFADD__(v63, v52);
          v63 += v52;
          if (v58)
          {
            __break(1u);
            break;
          }
        }
      }

      else
      {
        __swift_storeEnumTagSinglePayload(v14, 1, 1, v22);
        sub_1B1A90C78(v14, &unk_1EB761F00, &qword_1B1C36480);
      }
    }

    (*(v64 + 8))(v44, v65);

    v59 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    [v59 initWithInteger_];

    (*v73)(v62, v22);
  }

  else
  {
    (*(v25 + 8))(v32, v22);
  }

  OUTLINED_FUNCTION_26_1();
}

uint64_t sub_1B1BE11B0()
{
  v1 = sub_1B1BDE88C();
  v2 = *(v1 + 16);
  if (v2)
  {
    v33 = v0;
    v49 = MEMORY[0x1E69E7CC0];
    sub_1B1AE5B70(0, v2, 0);
    v3 = v49;
    result = sub_1B1B60118(v1);
    v6 = result;
    v8 = v7;
    v9 = 0;
    v37 = v1 + 64;
    v34 = v7;
    v35 = v2;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v1 + 32))
    {
      v10 = v6 >> 6;
      if ((*(v37 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_24;
      }

      if (*(v1 + 36) != v8)
      {
        goto LABEL_25;
      }

      v36 = v5;
      v11 = *(*(v1 + 48) + v6);
      sub_1B1A93378(*(v1 + 56) + 32 * v6, v46);
      v42[0] = v11;
      sub_1B1A9EEE0(v46, &v43);
      sub_1B1B50850(v42, v40, &qword_1EB7621F0, &qword_1B1C37478);
      *&v47 = sub_1B1AE3168(v40[0]);
      *(&v47 + 1) = v12;
      *(&v38[0] + 1) = v43;
      v38[1] = v44;
      v39 = v45;
      sub_1B1A9EEE0((v38 + 8), v48);
      result = __swift_destroy_boxed_opaque_existential_0(v41);
      v13 = v3;
      v49 = v3;
      v15 = *(v3 + 16);
      v14 = *(v3 + 24);
      if (v15 >= v14 >> 1)
      {
        result = sub_1B1AE5B70(v14 > 1, v15 + 1, 1);
        v13 = v49;
      }

      *(v13 + 16) = v15 + 1;
      v16 = (v13 + 48 * v15);
      v17 = v47;
      v18 = v48[1];
      v16[3] = v48[0];
      v16[4] = v18;
      v16[2] = v17;
      v19 = 1 << *(v1 + 32);
      if (v6 >= v19)
      {
        goto LABEL_26;
      }

      v20 = *(v37 + 8 * v10);
      if ((v20 & (1 << v6)) == 0)
      {
        goto LABEL_27;
      }

      v3 = v13;
      if (*(v1 + 36) != v8)
      {
        goto LABEL_28;
      }

      v21 = v20 & (-2 << (v6 & 0x3F));
      if (v21)
      {
        v19 = __clz(__rbit64(v21)) | v6 & 0x7FFFFFFFFFFFFFC0;
        v22 = v35;
      }

      else
      {
        v23 = v10 << 6;
        v24 = v10 + 1;
        v25 = (v1 + 72 + 8 * v10);
        v22 = v35;
        while (v24 < (v19 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            result = sub_1B1B1A544(v6, v8, v36 & 1);
            v19 = __clz(__rbit64(v26)) + v23;
            goto LABEL_19;
          }
        }

        result = sub_1B1B1A544(v6, v8, v36 & 1);
      }

LABEL_19:
      v5 = 0;
      ++v9;
      v6 = v19;
      v8 = v34;
      if (v9 == v22)
      {

        v0 = v33;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

    v3 = MEMORY[0x1E69E7CC0];
LABEL_22:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB762470, &qword_1B1C35D80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B1C361C0;
    *(inited + 32) = 0xD000000000000015;
    *(inited + 40) = 0x80000001B1C41F80;
    v29 = [v0 description];
    v30 = sub_1B1C2CB58();
    v32 = v31;

    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 48) = v30;
    *(inited + 56) = v32;
    *&v47 = v3;
    sub_1B1C003EC(inited);
    return sub_1B1ADFBB4(v47);
  }

  return result;
}

void *sub_1B1BE1570()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriTTSService19TTSAssetLegacyAsset_asset);
  v2 = v1;
  return v1;
}

BOOL sub_1B1BE15D4()
{
  v1 = [*(v0 + OBJC_IVAR____TtC14SiriTTSService19TTSAssetLegacyAsset_asset) bundlePath];
  sub_1B1C2CB58();

  sub_1B1A8EDAC();
  LOBYTE(v1) = sub_1B1C2D3D8();

  return (v1 & 1) == 0;
}

void sub_1B1BE168C()
{
  OUTLINED_FUNCTION_25();
  v2 = v1;
  v34[1] = *MEMORY[0x1E69E9840];
  v3 = sub_1B1C2C1C8();
  v4 = OUTLINED_FUNCTION_7(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_16();
  v11 = v10 - v9;
  v12 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
  v13 = *(v0 + OBJC_IVAR____TtC14SiriTTSService19TTSAssetLegacyAsset_asset);
  v14 = [v13 bundleURL];
  sub_1B1C2C168();

  v15 = sub_1B1C2C118();
  (*(v6 + 8))(v11, v3);
  v34[0] = 0;
  LODWORD(v3) = [v12 removeItemAtURL:v15 error:v34];

  if (!v3)
  {
    v17 = v34[0];
    v18 = sub_1B1C2C058();

    swift_willThrow();
    sub_1B1C2D0B8();
    if (qword_1ED9A99B8 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1B1C36280;
    v20 = [v13 bundlePath];
    v21 = sub_1B1C2CB58();
    v23 = v22;

    v24 = MEMORY[0x1E69E6158];
    *(v19 + 56) = MEMORY[0x1E69E6158];
    v25 = sub_1B1AC9204();
    *(v19 + 64) = v25;
    *(v19 + 32) = v21;
    *(v19 + 40) = v23;
    swift_getErrorValue();
    v26 = sub_1B1C2D828();
    *(v19 + 96) = v24;
    *(v19 + 104) = v25;
    *(v19 + 72) = v26;
    *(v19 + 80) = v27;
    sub_1B1C2C7C8();

    if (v2)
    {
      v28 = v18;
      v2(v18);
    }

    goto LABEL_9;
  }

  if (v2)
  {
    v16 = v34[0];
    v2(0);
LABEL_9:
    v29 = *MEMORY[0x1E69E9840];
    OUTLINED_FUNCTION_26_1();
    return;
  }

  v30 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_26_1();

  v33 = v31;
}

id TTSAssetLegacyAsset.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1B1BE1AE0()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriTTSService19TTSAssetLegacyAsset____lazy_storage___voiceDesc);
}

id TTSAssetLegacyAsset.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTSAssetLegacyAsset();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B1BE1BA0(uint64_t a1, char a2, uint64_t (*a3)(void *), uint64_t a4, uint64_t a5, unint64_t a6)
{
  v51 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v10 = a5;
  v13 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v14 = HIBYTE(a6) & 0xF) : (v14 = a5 & 0xFFFFFFFFFFFFLL), !v14))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v13 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v13 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v6 = sub_1B1C2CE08();
    v10 = v30;
    v11 = v31;
    v12 = v32;

    sub_1B1B04580();
    v15 = v33;
    v8 = *(v33 + 16);
    v34 = *(v33 + 24);
LABEL_37:
    v9 = v8 + 1;
    if (v8 < v34 >> 1)
    {
LABEL_38:
      *(v15 + 16) = v9;
      v38 = (v15 + 32 * v8);
      v38[4] = v6;
      v38[5] = v10;
      v38[6] = v11;
      v38[7] = v12;
      return v15;
    }

LABEL_41:
    sub_1B1B04580();
    v15 = v39;
    goto LABEL_38;
  }

  v6 = a4;
  v15 = 4 * v14;
  v49 = MEMORY[0x1E69E7CC0];
  v16 = 15;
  while (1)
  {
    v47 = v16;
    while (1)
    {
      v12 = v16 >> 14;
      if (v16 >> 14 == v15)
      {
        v16 = v47;
        goto LABEL_30;
      }

      v17 = sub_1B1C2CDD8();
      v11 = v18;
      v50[0] = v17;
      v50[1] = v18;
      v19 = v51(v50);
      if (v7)
      {

        return v15;
      }

      v20 = v19;

      if (v20)
      {
        break;
      }

      v16 = sub_1B1C2CC78();
    }

    v22 = (v47 >> 14 == v12) & a2;
    if (v22)
    {
      goto LABEL_20;
    }

    if (v12 < v47 >> 14)
    {
      break;
    }

    v48 = sub_1B1C2CE08();
    v43 = v24;
    v44 = v23;
    v42 = v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = *(v49 + 16);
      sub_1B1B04580();
      v49 = v28;
    }

    v12 = *(v49 + 16);
    v11 = v12 + 1;
    if (v12 >= *(v49 + 24) >> 1)
    {
      sub_1B1B04580();
      v49 = v29;
    }

    *(v49 + 16) = v11;
    v26 = (v49 + 32 * v12);
    v26[4] = v48;
    v26[5] = v44;
    v26[6] = v43;
    v26[7] = v42;
LABEL_20:
    v16 = sub_1B1C2CC78();
    if ((v22 & 1) == 0 && *(v49 + 16) == a1)
    {
LABEL_30:
      if (v16 >> 14 == v15 && (a2 & 1) != 0)
      {

        return v49;
      }

      if (v15 < v16 >> 14)
      {
        __break(1u);
      }

      else
      {
        v6 = sub_1B1C2CE08();
        v10 = v35;
        v11 = v36;
        v12 = v37;

        v15 = v49;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_36:
          v8 = *(v15 + 16);
          v34 = *(v15 + 24);
          goto LABEL_37;
        }
      }

      v40 = *(v15 + 16);
      sub_1B1B04580();
      v15 = v41;
      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

void sub_1B1BE1F3C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a1;
  v6 = WORD2(a2);
  v5 = a2;
  sub_1B1BDED2C(&v4, &v4 + BYTE6(a2), a3, &v7);
  v3 = *MEMORY[0x1E69E9840];
}

void sub_1B1BE1FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = sub_1B1C2BF08();
  if (v7)
  {
    v8 = sub_1B1C2BF38();
    if (__OFSUB__(a1, v8))
    {
LABEL_13:
      __break(1u);
      return;
    }

    v7 = (v7 + a1 - v8);
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = sub_1B1C2BF28();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = v7 + v12;
  if (v7)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  sub_1B1BDED2C(v7, v14, a4, &v15);
}

uint64_t sub_1B1BE2064()
{
  v0 = sub_1B1BE20D0();
  v4 = sub_1B1BE2104(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1B1BE2104(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1B1C2CC38();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_1B1C2D308();
  if (!v9)
  {
    v11 = MEMORY[0x1E69E7CC0];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_1B1AB59F8(v9, 0);
  v12 = sub_1B1BE2264(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_1B1C2CC38();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_1B1C2D578();
LABEL_4:

  return sub_1B1C2CC38();
}

unint64_t sub_1B1BE2264(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_1B1B276E0(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1B1C2CD58();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1B1C2D578();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_1B1B276E0(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = sub_1B1C2CD28();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1B1BE2474(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB764050, &qword_1B1C40E68);
  result = sub_1B1C2D698();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_34:

LABEL_35:
    *v3 = v8;
    return result;
  }

  v32 = v3;
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
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      sub_1B1ADFF70(0, (v31 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
    goto LABEL_34;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = *(*(v5 + 48) + v19);
    v21 = (*(v5 + 56) + 32 * v19);
    if (a2)
    {
      sub_1B1A9EEE0(v21, v33);
    }

    else
    {
      sub_1B1A93378(v21, v33);
    }

    v22 = *(v8 + 40);
    sub_1B1C2D888();
    sub_1B1AE3168(v20);
    sub_1B1C2CC48();

    result = sub_1B1C2D8E8();
    v23 = -1 << *(v8 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    *(*(v8 + 48) + v26) = v20;
    result = sub_1B1A9EEE0(v33, (*(v8 + 56) + 32 * v26));
    ++*(v8 + 16);
    if (!v13)
    {
      goto LABEL_9;
    }
  }

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
    v30 = *(v15 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_26;
    }
  }

LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_1B1BE2720(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB764058, &qword_1B1C40E80);
  v33 = a2;
  result = sub_1B1C2D698();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_33:

LABEL_34:
    *v3 = v8;
    return result;
  }

  v32 = v3;
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
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_34;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      sub_1B1ADFF70(0, (v31 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
    goto LABEL_33;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = *(*(v5 + 48) + 8 * v19);
    v21 = *(*(v5 + 56) + 8 * v19);
    if ((v33 & 1) == 0)
    {
      swift_unknownObjectRetain();
    }

    v22 = *(v8 + 40);
    sub_1B1C2D888();
    MEMORY[0x1B2738D60](v20);
    result = sub_1B1C2D8E8();
    v23 = -1 << *(v8 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v15 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    *(*(v8 + 48) + 8 * v26) = v20;
    *(*(v8 + 56) + 8 * v26) = v21;
    ++*(v8 + 16);
    if (!v13)
    {
      goto LABEL_9;
    }
  }

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
    v30 = *(v15 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_25;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_1B1BE29AC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  sub_1B1A9E6C0(a1, a2, a3, v34);
  v30 = v34[0];
  v31 = v34[1];
  v32 = v34[2];
  v33 = v35;

  while (1)
  {
    sub_1B1BE358C(v27);
    if (!v29)
    {
      sub_1B1A9D350();
    }

    v7 = v27[0];
    sub_1B1A9EEE0(&v28, v26);
    v8 = *a5;
    v10 = sub_1B1AE3960(v7);
    v11 = v8[2];
    v12 = (v9 & 1) == 0;
    v13 = v11 + v12;
    if (__OFADD__(v11, v12))
    {
      break;
    }

    v14 = v9;
    if (v8[3] >= v13)
    {
      if (a4)
      {
        if (v9)
        {
          goto LABEL_10;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762500, &unk_1B1C380A8);
        sub_1B1C2D638();
        if (v14)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_1B1BE2474(v13, a4 & 1);
      v15 = *a5;
      v16 = sub_1B1AE3960(v7);
      if ((v14 & 1) != (v17 & 1))
      {
        goto LABEL_18;
      }

      v10 = v16;
      if (v14)
      {
LABEL_10:
        v18 = *a5;
        sub_1B1A93378(v26, v25);
        __swift_destroy_boxed_opaque_existential_0(v26);
        v19 = (v18[7] + 32 * v10);
        __swift_destroy_boxed_opaque_existential_0(v19);
        sub_1B1A9EEE0(v25, v19);
        goto LABEL_14;
      }
    }

    v20 = *a5;
    *(*a5 + 8 * (v10 >> 6) + 64) |= 1 << v10;
    *(v20[6] + v10) = v7;
    sub_1B1A9EEE0(v26, (v20[7] + 32 * v10));
    v21 = v20[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_17;
    }

    v20[2] = v23;
LABEL_14:
    a4 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_1B1C2D818();
  __break(1u);
  return result;
}