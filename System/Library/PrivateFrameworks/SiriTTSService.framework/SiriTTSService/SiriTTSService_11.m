void sub_1B1B66FE8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6, uint64_t a7, uint64_t *a8, uint64_t *a9)
{
  v15 = *a1;
  sub_1B1A93AEC(1701667182, 0xE400000000000000, *a1);
  if (!v28)
  {
    __break(1u);
    goto LABEL_17;
  }

  v24 = a3;
  v31 = a7;
  sub_1B1A9EEE0(&v27, &v29);
  swift_dynamicCast();
  sub_1B1A93AEC(0x696669746E656469, 0xEA00000000007265, v15);
  if (!v28)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_1B1A9EEE0(&v27, &v29);
  swift_dynamicCast();
  sub_1B1A93AEC(0x726564726FLL, 0xE500000000000000, v15);
  if (!v28)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_1B1A9EEE0(&v27, &v29);
  swift_dynamicCast();
  sub_1B1A93AEC(0x7265646E6567, 0xE600000000000000, v15);
  if (!v28)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  sub_1B1A9EEE0(&v27, &v29);
  swift_dynamicCast();
  sub_1B1A93AEC(0x6E61526863746970, 0xEA00000000006567, v15);
  if (!v28)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_1B1A9EEE0(&v27, &v29);
  swift_dynamicCast();
  if (qword_1ED9A9528 != -1)
  {
    swift_once();
  }

  if (byte_1ED9A9536 == 1)
  {
    sub_1B1A93AEC(0x65676175676E616CLL, 0xE900000000000073, v15);
    if (v30)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F10, &unk_1B1C37DA0);
      if (swift_dynamicCast())
      {
        v16 = a5;
        v17 = v27;
        v18 = v24;
        goto LABEL_14;
      }
    }

    else
    {
      sub_1B1A90C78(&v29, &qword_1EB761DE0, &qword_1B1C352C0);
    }
  }

  v16 = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761C70, &qword_1B1C36250);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1B1C361C0;
  v18 = v24;
  *(v17 + 32) = v24;
  *(v17 + 40) = a4;

LABEL_14:
  objc_allocWithZone(type metadata accessor for AssistantAsset());

  v19 = sub_1B1B65618(v17, v25, v26, v25, v26, v25, v25);
  MEMORY[0x1B2738320]();
  sub_1B1B3E0D4(*((*v16 & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_1B1C2CEC8();
  *&v29 = v18;
  *(&v29 + 1) = a4;

  MEMORY[0x1B27381B0]();
  sub_1B1BD0084(v25, v26, v31);
  if ((v20 & 1) == 0)
  {

    v21 = *a6;
    swift_isUniquelyReferenced_nonNull_native();
    *&v29 = *a6;
    sub_1B1B377C4();
    *a6 = v29;
    v22 = *a8;
    swift_isUniquelyReferenced_nonNull_native();
    *&v29 = *a8;
    sub_1B1B377C4();
    *a8 = v29;
    v23 = *a9;
    swift_isUniquelyReferenced_nonNull_native();
    *&v29 = *a9;
    sub_1B1B3758C();
    *a9 = v29;

    return;
  }

LABEL_21:
  __break(1u);
}

uint64_t TTSAsset.siriVoiceSimilarInLanguage(_:)(uint64_t a1, unint64_t a2)
{
  v5 = *v2;
  OUTLINED_FUNCTION_1_26();
  (*(v6 + 184))();
  v7 = *v2;
  OUTLINED_FUNCTION_1_26();
  (*(v8 + 152))();
  v9 = *v2;
  OUTLINED_FUNCTION_1_26();
  (*(v10 + 192))();
  v11 = objc_allocWithZone(type metadata accessor for AssistantAsset());
  OUTLINED_FUNCTION_2_26();
  v19 = sub_1B1B65618(v12, v13, v14, v15, v16, v17, v18);
  v20 = sub_1B1B65A2C(a1, a2);
  if (v20)
  {
    v21 = v20;
    type metadata accessor for TTSAsset();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762440, &qword_1B1C383E0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1B1C37D90;
    if (qword_1ED9A9978 != -1)
    {
      swift_once();
    }

    v23 = qword_1ED9A9980;
    *(v22 + 32) = qword_1ED9A9980;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7627A8, &unk_1B1C396D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B1C36280;
    *(inited + 32) = 1;
    v25 = sub_1B1B6584C();
    v26 = MEMORY[0x1E69E6158];
    *(inited + 40) = v25;
    *(inited + 48) = v27;
    *(inited + 64) = v26;
    *(inited + 72) = 0;
    v28 = *&v21[OBJC_IVAR___TTSAssistantAsset_name];
    v29 = *&v21[OBJC_IVAR___TTSAssistantAsset_name + 8];
    *(inited + 104) = v26;
    *(inited + 80) = v28;
    *(inited + 88) = v29;
    type metadata accessor for TTSAssetProperty(0);
    sub_1B1B37E44();
    v30 = v23;

    v31 = sub_1B1C2CAB8();
    v32 = static TTSAsset.bestAsset(ofTypes:matching:)(v22, v31);
  }

  else
  {

    return 0;
  }

  return v32;
}

id SynthesisVoice.siriVoiceSimilarInLanguage(_:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761C70, &qword_1B1C36250);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1B1C361C0;
  v2 = (v0 + OBJC_IVAR___SiriTTSSynthesisVoice_language);
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  v5 = (v0 + OBJC_IVAR___SiriTTSSynthesisVoice_name);
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  if (v5[1])
  {
    v6 = *v5;
  }

  v7 = OBJC_IVAR___SiriTTSSynthesisVoice_gender;
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v8 = *(v0 + v7);
  objc_allocWithZone(type metadata accessor for AssistantAsset());

  OUTLINED_FUNCTION_2_26();
  v16 = sub_1B1B65618(v9, v10, v11, v12, v13, v14, v15);
  v17 = OUTLINED_FUNCTION_72();
  v19 = sub_1B1B65A2C(v17, v18);
  if (v19)
  {
    v20 = v19;
    sub_1B1B6584C();
    v21 = *&v20[OBJC_IVAR___TTSAssistantAsset_name];
    v22 = *&v20[OBJC_IVAR___TTSAssistantAsset_name + 8];
    objc_allocWithZone(type metadata accessor for SynthesisVoice());

    v23 = SynthesisVoice.init(language:name:)();
  }

  else
  {

    return 0;
  }

  return v23;
}

id sub_1B1B678FC(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = sub_1B1C2CB58();
  v8 = v7;
  v9 = a1;
  v10 = a4(v6, v8);

  return v10;
}

unint64_t sub_1B1B67998()
{
  result = qword_1EB7628C0;
  if (!qword_1EB7628C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB7628B8, &unk_1B1C396C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7628C0);
  }

  return result;
}

id sub_1B1B67B98(void *a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1B1C2CB28();
  OUTLINED_FUNCTION_13_17();
  v3 = [v2 initWithString_];

  return v3;
}

uint64_t sub_1B1B67C04(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7624D0, &unk_1B1C39860);
  if (v4 >= 9)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B1C364E0;
    strcpy((inited + 32), "tts.language");
    *(inited + 45) = 0;
    *(inited + 46) = -5120;
    v9 = a3[15];
    *(inited + 48) = a3[14];
    *(inited + 56) = v9;
    *(inited + 64) = 0x656D616E2E737474;
    *(inited + 72) = 0xE800000000000000;
    v14 = a3[16];
    v15 = a3[17];
    sub_1B1A8EDAC();

    *(inited + 80) = sub_1B1C2D398();
    *(inited + 88) = v10;
    strcpy((inited + 96), "tts.technology");
    *(inited + 111) = -18;
    v11 = a3[19];
    *(inited + 112) = a3[18];
    *(inited + 120) = v11;
    *(inited + 128) = 0x6C6175712E737474;
    *(inited + 136) = 0xEB00000000797469;
    v12 = a3[20];
    v13 = a3[21];
    *(inited + 144) = v12;
    *(inited + 152) = v13;

    return sub_1B1C2CAB8();
  }

  result = swift_initStackObject();
  *(result + 16) = xmmword_1B1C361C0;
  strcpy((result + 32), "tts.language");
  *(result + 45) = 0;
  *(result + 46) = -5120;
  if (v4 >= 6)
  {
    v6 = result;
    v7 = a3[15];
    *(v6 + 48) = a3[14];
    *(v6 + 56) = v7;

    return sub_1B1C2CAB8();
  }

  __break(1u);
  return result;
}

unint64_t sub_1B1B67DE4(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3[2] < 5uLL)
  {
    __break(1u);
  }

  else
  {
    v3 = a3[12];
    v4 = a3[13];

    MEMORY[0x1B27381B0](v3, v4);

    return 0xD000000000000013;
  }

  return result;
}

uint64_t sub_1B1B67EAC()
{
  v0 = NSUserName();
  v1 = sub_1B1C2CB58();
  v3 = v2;

  strcpy(v8, "/private/var/");
  HIWORD(v8[1]) = -4864;
  MEMORY[0x1B27381B0](v1, v3);

  v5 = v8[0];
  v4 = v8[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761C70, &qword_1B1C36250);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1B1C361C0;

  MEMORY[0x1B27381B0](0xD00000000000001FLL, 0x80000001B1C4F5B0);

  *(v6 + 32) = v5;
  *(v6 + 40) = v4;
  sub_1B1ABF93C(&unk_1F28BFBB0);
  return v6;
}

uint64_t sub_1B1B67FBC()
{
  result = sub_1B1AC6C24();
  qword_1EB772D08 = result;
  return result;
}

uint64_t sub_1B1B67FDC()
{
  result = sub_1B1B67FFC();
  qword_1EB772CE8 = result;
  return result;
}

uint64_t sub_1B1B67FFC()
{
  v38[4] = *MEMORY[0x1E69E9840];
  v0 = sub_1B1C2C1C8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v0);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v31 - v6;
  if (qword_1ED9A9588 != -1)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v8 = sub_1B1BE34F8(0x7365527465737341, 0xEE0073656372756FLL, 0x7473696C70, 0xE500000000000000, qword_1ED9AA640);
    if (!v8)
    {
      __break(1u);
    }

    v9 = v8;
    sub_1B1C2C168();

    (*(v1 + 32))(v7, v5, v0);
    v10 = sub_1B1C2C208();
    v12 = v11;
    v33 = v7;
    v34 = v1;
    v35 = v0;
    v13 = objc_opt_self();
    v31 = v12;
    v32 = v10;
    v14 = sub_1B1C2C298();
    v38[0] = 0;
    v5 = [v13 propertyListWithData:v14 options:0 format:0 error:v38];

    v15 = v38[0];
    if (!v5)
    {
      break;
    }

    sub_1B1C2D3F8();
    swift_unknownObjectRelease();
    sub_1B1A93378(v38, v37);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7628F8, &unk_1B1C39828);
    swift_dynamicCast();
    v7 = v36;
    v16 = MEMORY[0x1E69E7CC0];
    v37[0] = MEMORY[0x1E69E7CC0];
    v17 = 1 << v36[32];
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v0 = v18 & *(v36 + 8);
    v19 = (v17 + 63) >> 6;

    v1 = 0;
    while (v0)
    {
LABEL_12:
      v21 = __clz(__rbit64(v0));
      v0 &= v0 - 1;
      v22 = v21 | (v1 << 6);
      v23 = (*(v7 + 6) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 7) + 8 * v22);
      v27 = objc_allocWithZone(type metadata accessor for TTSAssetUAFResourceAsset(0));

      v5 = v27;
      if (sub_1B1B46D4C())
      {
        v5 = v37;
        MEMORY[0x1B2738320]();
        if (*((v37[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1B1C2CE98();
        }

        sub_1B1C2CEC8();
        v16 = v37[0];
      }
    }

    while (1)
    {
      v20 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        break;
      }

      if (v20 >= v19)
      {

        sub_1B1A94524(v32, v31);
        __swift_destroy_boxed_opaque_existential_0(v38);
        (*(v34 + 8))(v33, v35);

        v28 = *MEMORY[0x1E69E9840];
        return v16;
      }

      v0 = *&v7[8 * v20 + 64];
      ++v1;
      if (v0)
      {
        v1 = v20;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_18:
    swift_once();
  }

  v30 = v15;
  sub_1B1C2C058();

  swift_willThrow();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void sub_1B1B68430(void *a1, uint64_t a2)
{
  if (!*a1)
  {
    v4 = [objc_opt_self() sharedManager];
    v5 = sub_1B1C2CB28();
    if (qword_1EB761360 != -1)
    {
      swift_once();
    }

    v6 = qword_1EB772D00;
    v7 = swift_allocObject();
    *(v7 + 16) = a2;
    v10[4] = sub_1B1B6ADBC;
    v10[5] = v7;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = sub_1B1A95870;
    v10[3] = &block_descriptor_17;
    v8 = _Block_copy(v10);

    v9 = [v4 observeAssetSet:v5 queue:v6 handler:v8];
    _Block_release(v8);

    *a1 = v9;
  }
}

void sub_1B1B685B8()
{
  sub_1B1C2D098();
  if (qword_1ED9A99B8 != -1)
  {
LABEL_33:
    swift_once();
  }

  sub_1B1C2C7C8();
  if (qword_1EB761370 != -1)
  {
    swift_once();
  }

  v0 = qword_1EB772D08;
  v1 = sub_1B1A9547C(qword_1EB772D08);
  for (i = 0; v1 != i; ++i)
  {
    if ((v0 & 0xC000000000000001) != 0)
    {
      v3 = MEMORY[0x1B2738A20](i, v0);
    }

    else
    {
      if (i >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_30;
      }

      v3 = *(v0 + 8 * i + 32);
    }

    v4 = v3;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v5 = &v3[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_isDirty];
    os_unfair_lock_lock(&v3[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_isDirty]);
    LOBYTE(v5[1]._os_unfair_lock_opaque) = 1;
    os_unfair_lock_unlock(v5);
  }

  if (qword_1EB7612C8 != -1)
  {
    swift_once();
  }

  v6 = qword_1EB772CE8;
  v7 = sub_1B1A9547C(qword_1EB772CE8);
  for (j = 0; v7 != j; ++j)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1B2738A20](j, v6);
    }

    else
    {
      if (j >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }

      v9 = *(v6 + 8 * j + 32);
    }

    v10 = v9;
    if (__OFADD__(j, 1))
    {
      goto LABEL_31;
    }

    v11 = &v9[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_isDirty];
    os_unfair_lock_lock(&v9[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_isDirty]);
    LOBYTE(v11[1]._os_unfair_lock_opaque) = 1;
    os_unfair_lock_unlock(v11);
  }

  if (qword_1EB761280 != -1)
  {
    swift_once();
  }

  if (byte_1EB772CE0 == 1)
  {

    notify_post("com.apple.voiceservices.notification.voice-update");
  }
}

void sub_1B1B68860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v101 = *v5;
  v6 = sub_1B1C2C988();
  v7 = OUTLINED_FUNCTION_7(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_16();
  v107 = v13 - v12;
  v14 = sub_1B1C2C9D8();
  v15 = OUTLINED_FUNCTION_7(v14);
  v106 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_16();
  v105 = v20 - v19;
  v104 = sub_1B1C2C998();
  v21 = OUTLINED_FUNCTION_7(v104);
  v103 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_16();
  v102 = v26 - v25;
  LOBYTE(v27) = sub_1B1C2D0D8();
  if (qword_1ED9A99C0 != -1)
  {
    goto LABEL_51;
  }

  while (1)
  {
    v28 = qword_1ED9AA670;
    if (os_log_type_enabled(qword_1ED9AA670, v27))
    {

      v29 = swift_slowAlloc();
      v30 = OUTLINED_FUNCTION_19_0();
      aBlock = v30;
      *v29 = 134218242;
      *(v29 + 4) = sub_1B1A9547C(a1);

      *(v29 + 12) = 2080;
      v31 = OUTLINED_FUNCTION_5_21();
      *(v29 + 14) = sub_1B1A930E4(v31, v32, v33);
      _os_log_impl(&dword_1B1A8A000, v28, v27, "#UAF updating %ld subscriptions for %s", v29, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v30);
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_11();
    }

    v113 = objc_opt_self();
    v34 = [v113 sharedManager];
    OUTLINED_FUNCTION_5_21();
    v35 = sub_1B1C2CB28();
    v36 = [v34 subscriptionsForSubscriber_];

    v110 = v6;
    v109 = v9;
    v108 = v14;
    if (v36)
    {
      sub_1B1A8E474(0, &qword_1EB760F88, 0x1E69DEEF8);
      v37 = sub_1B1C2CE78();
    }

    else
    {
      v37 = MEMORY[0x1E69E7CC0];
    }

    v118 = v37;
    v38 = swift_allocObject();
    *(v38 + 16) = 0;
    v117 = v38;
    *(v38 + 24) = 0;
    v114 = dispatch_group_create();
    v39 = sub_1B1A9547C(a1);
    if (!v39)
    {
      v52 = MEMORY[0x1E69E7CC0];
LABEL_19:
      if (sub_1B1A9547C(v52))
      {
        dispatch_group_enter(v114);
        v53 = [v113 sharedManager];
        OUTLINED_FUNCTION_5_21();
        v54 = sub_1B1C2CB28();
        sub_1B1A8E474(0, &qword_1EB760F88, 0x1E69DEEF8);
        v55 = sub_1B1C2CE68();
        OUTLINED_FUNCTION_66();
        v56 = swift_allocObject();
        v56[2] = v117;
        v56[3] = a1;
        v56[4] = v114;
        OUTLINED_FUNCTION_1_27(v56);
        v122 = 1107296256;
        OUTLINED_FUNCTION_13_1();
        v123 = v57;
        v124 = &block_descriptor_14;
        v58 = _Block_copy(&aBlock);

        v59 = v114;

        OUTLINED_FUNCTION_9_19(v60, sel_subscribe_subscriptions_queue_completion_);
        _Block_release(v58);
      }

      v61 = v118;
      v62 = sub_1B1A9547C(v118);
      if (v62)
      {
        v63 = v62;
        OUTLINED_FUNCTION_8_19(MEMORY[0x1E69E7CC0]);
        if (v63 < 0)
        {
          goto LABEL_53;
        }

        v64 = 0;
        v65 = aBlock;
        do
        {
          if ((v118 & 0xC000000000000001) != 0)
          {
            v66 = MEMORY[0x1B2738A20](v64, v61);
          }

          else
          {
            v66 = *(v61 + 8 * v64 + 32);
          }

          v67 = v66;
          v68 = [v66 name];
          v69 = sub_1B1C2CB58();
          v71 = v70;

          aBlock = v65;
          v72 = *(v65 + 16);
          if (v72 >= *(v65 + 24) >> 1)
          {
            sub_1B1AC9FA8();
            v65 = aBlock;
          }

          ++v64;
          *(v65 + 16) = v72 + 1;
          v73 = v65 + 16 * v72;
          *(v73 + 32) = v69;
          *(v73 + 40) = v71;
          v61 = v118;
        }

        while (v63 != v64);
      }

      else
      {

        v65 = MEMORY[0x1E69E7CC0];
      }

      v74 = sub_1B1ACB6B8(v65);
      v75 = sub_1B1A9547C(v52);
      if (v75)
      {
        v76 = v75;
        OUTLINED_FUNCTION_8_19(MEMORY[0x1E69E7CC0]);
        if (v76 < 0)
        {
          goto LABEL_54;
        }

        v120 = v74;
        v77 = 0;
        v78 = aBlock;
        do
        {
          if ((v52 & 0xC000000000000001) != 0)
          {
            v79 = MEMORY[0x1B2738A20](v77, v52);
          }

          else
          {
            v79 = *(v52 + 8 * v77 + 32);
          }

          v80 = v79;
          v81 = [v79 name];
          v82 = sub_1B1C2CB58();
          v84 = v83;

          aBlock = v78;
          v85 = *(v78 + 16);
          if (v85 >= *(v78 + 24) >> 1)
          {
            sub_1B1AC9FA8();
            v78 = aBlock;
          }

          ++v77;
          *(v78 + 16) = v85 + 1;
          v86 = v78 + 16 * v85;
          *(v86 + 32) = v82;
          *(v86 + 40) = v84;
        }

        while (v76 != v77);

        v74 = v120;
      }

      else
      {

        v78 = MEMORY[0x1E69E7CC0];
      }

      v87 = sub_1B1ACB6B8(v78);
      v88 = sub_1B1B6964C(v87, v74);

      v89 = sub_1B1BD6EF8(v88);
      if (*(v89 + 16))
      {
        dispatch_group_enter(v114);
        v90 = [v113 sharedManager];
        v91 = sub_1B1C2CB28();
        v92 = sub_1B1C2CE68();
        v93 = swift_allocObject();
        v93[2] = v117;
        v93[3] = a2;
        v93[4] = a3;
        v93[5] = v89;
        v93[6] = v114;
        v93[7] = v101;
        OUTLINED_FUNCTION_1_27(v93);
        v122 = 1107296256;
        OUTLINED_FUNCTION_13_1();
        v123 = v94;
        v124 = &block_descriptor_20;
        v95 = _Block_copy(&aBlock);

        v96 = v114;

        OUTLINED_FUNCTION_9_19(v97, sel_unsubscribe_subscriptionNames_queue_completion_);
        _Block_release(v95);
      }

      else
      {
      }

      if (a4)
      {
        sub_1B1A8E474(0, &qword_1ED9A9940, 0x1E69E9610);
        (*(v103 + 104))(v102, *MEMORY[0x1E69E7F98], v104);

        v98 = sub_1B1C2D168();
        (*(v103 + 8))(v102, v104);
        OUTLINED_FUNCTION_66();
        v99 = swift_allocObject();
        v99[2] = a4;
        v99[3] = a5;
        v99[4] = v117;
        OUTLINED_FUNCTION_1_27(v99);
        v122 = 1107296256;
        v123 = sub_1B1A95870;
        v124 = &block_descriptor_26;
        v100 = _Block_copy(&aBlock);

        sub_1B1A94514(a4);
        sub_1B1C2C9A8();
        sub_1B1A979CC(&qword_1ED9A8DC0, MEMORY[0x1E69E7F60]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761900, &unk_1B1C38430);
        sub_1B1A97978(&qword_1ED9A8DB0, &unk_1EB761900, &unk_1B1C38430);
        sub_1B1C2D418();
        sub_1B1C2D108();
        _Block_release(v100);

        sub_1B1A949B4(a4);
        v109[1](v107, v110);
        (*(v106 + 8))(v105, v108);
      }

      else
      {
      }

      return;
    }

    v14 = v39;
    aBlock = MEMORY[0x1E69E7CC0];
    sub_1B1C2D5B8();
    if (v14 < 0)
    {
      break;
    }

    v40 = 0;
    v27 = a1 & 0xC000000000000001;
    while (1)
    {
      v41 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        break;
      }

      if (v27)
      {
        v42 = MEMORY[0x1B2738A20](v40, a1);
      }

      else
      {
        if (v40 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_50;
        }

        v42 = *(a1 + 8 * v40 + 32);
      }

      v9 = v42;
      v43 = &v42[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier];
      v44 = *&v42[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier];
      v45 = *&v42[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier + 8];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762738, &unk_1B1C39850);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1B1C361C0;
      *(inited + 32) = 0xD000000000000012;
      *(inited + 40) = 0x80000001B1C4D870;
      v47 = *(v43 + 2);

      *(inited + 48) = sub_1B1B67C04(v48, v49, v47);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761EE0, &unk_1B1C38950);
      v50 = sub_1B1C2CAB8();
      v51 = objc_allocWithZone(MEMORY[0x1E69DEEF8]);
      if (!sub_1B1B4740C(v44, v45, v50, 0))
      {
        goto LABEL_55;
      }

      sub_1B1C2D588();
      v6 = *(aBlock + 16);
      sub_1B1C2D5C8();
      sub_1B1C2D5D8();
      sub_1B1C2D598();
      ++v40;
      if (v41 == v14)
      {
        v52 = aBlock;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    OUTLINED_FUNCTION_0_13();
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
}

void sub_1B1B6946C(void *a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  if (a1)
  {
    v7 = a1;
    os_unfair_lock_lock((a2 + 16));

    *(a2 + 24) = a1;
    os_unfair_lock_unlock((a2 + 16));
  }

  else
  {
    v18 = MEMORY[0x1E69E7CC0];
    v9 = sub_1B1A9547C(a3);
    for (i = 0; v9 != i; ++i)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1B2738A20](i, a3);
      }

      else
      {
        if (i >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v11 = *(a3 + 8 * i + 32);
      }

      v12 = v11;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        return;
      }

      if ([v11 locallyAvailable])
      {
      }

      else
      {
        sub_1B1C2D588();
        v13 = *(v18 + 16);
        sub_1B1C2D5C8();
        sub_1B1C2D5D8();
        sub_1B1C2D598();
      }
    }

    v14 = sub_1B1A9547C(v18);
    for (j = 0; v14 != j; ++j)
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1B2738A20](j, v18);
      }

      else
      {
        if (j >= *(v18 + 16))
        {
          goto LABEL_29;
        }

        v16 = *(v18 + 8 * j + 32);
      }

      v17 = v16;
      if (__OFADD__(j, 1))
      {
        goto LABEL_28;
      }

      sub_1B1AF6E30(0, 0, 0, 0, 0);
    }
  }

  dispatch_group_leave(a4);
}

uint64_t sub_1B1B6964C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) <= *(a2 + 16) >> 3)
  {
    sub_1B1B6A048(a1);
    return a2;
  }

  else
  {

    return sub_1B1B6A174(a1, a2);
  }
}

void sub_1B1B696A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, NSObject *a6)
{
  v37 = a6;
  if (a1)
  {
    v11 = a1;
    os_unfair_lock_lock((a2 + 16));

    *(a2 + 24) = a1;
    os_unfair_lock_unlock((a2 + 16));
  }

  v12 = a3 == 0x73747469726973 && a4 == 0xE700000000000000;
  if (v12 || (sub_1B1C2D7A8() & 1) != 0)
  {
    if (qword_1EB761370 != -1)
    {
LABEL_32:
      swift_once();
    }

    v13 = qword_1EB772D08;
    v14 = sub_1B1A9547C(qword_1EB772D08);
    v15 = 0;
    v16 = v13 & 0xC000000000000001;
    while (v14 != v15)
    {
      sub_1B1A9EC44(v15, v16 == 0, v13);
      if (v16)
      {
        v17 = MEMORY[0x1B2738A20](v15, v13);
      }

      else
      {
        v17 = *(v13 + 8 * v15 + 32);
      }

      v18 = v17;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v19 = *&v17[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier + 8];
      v38 = *&v17[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier];
      v39 = v19;
      MEMORY[0x1EEE9AC00](v17);
      v36 = &v38;
      if (sub_1B1ABAA5C(sub_1B1ABB394, v35, a5))
      {
        v20 = &v18[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_path];
        os_unfair_lock_lock(&v18[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_path]);
        v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762728, &unk_1B1C38940) + 28);
        sub_1B1A90C78(v20 + v21, &unk_1EB761F00, &qword_1B1C36480);
        v22 = sub_1B1C2C1C8();
        __swift_storeEnumTagSinglePayload(v20 + v21, 1, 1, v22);
        os_unfair_lock_unlock(v20);
        v23 = &v18[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_isDirty];
        os_unfair_lock_lock(&v18[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_isDirty]);
        LOBYTE(v23[1]._os_unfair_lock_opaque) = 1;
        os_unfair_lock_unlock(v23);
      }

      ++v15;
    }

    if (qword_1EB7612C8 != -1)
    {
      swift_once();
    }

    v24 = qword_1EB772CE8;
    v25 = sub_1B1A9547C(qword_1EB772CE8);
    v26 = 0;
    v27 = v24 & 0xC000000000000001;
    while (v25 != v26)
    {
      sub_1B1A9EC44(v26, v27 == 0, v24);
      if (v27)
      {
        v28 = MEMORY[0x1B2738A20](v26, v24);
      }

      else
      {
        v28 = *(v24 + 8 * v26 + 32);
      }

      v29 = v28;
      if (__OFADD__(v26, 1))
      {
        goto LABEL_31;
      }

      v30 = *&v28[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier + 8];
      v38 = *&v28[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier];
      v39 = v30;
      MEMORY[0x1EEE9AC00](v28);
      v36 = &v38;
      if (sub_1B1ABAA5C(sub_1B1ABB394, v35, a5))
      {
        v31 = &v29[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_path];
        os_unfair_lock_lock(&v29[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_path]);
        v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762728, &unk_1B1C38940) + 28);
        sub_1B1A90C78(v31 + v32, &unk_1EB761F00, &qword_1B1C36480);
        v33 = sub_1B1C2C1C8();
        __swift_storeEnumTagSinglePayload(v31 + v32, 1, 1, v33);
        os_unfair_lock_unlock(v31);
        v34 = &v29[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_isDirty];
        os_unfair_lock_lock(&v29[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_isDirty]);
        LOBYTE(v34[1]._os_unfair_lock_opaque) = 1;
        os_unfair_lock_unlock(v34);
      }

      ++v26;
    }
  }

  dispatch_group_leave(v37);
}

void sub_1B1B69AAC(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock((a3 + 16));
  v5 = *(a3 + 24);
  v6 = v5;
  os_unfair_lock_unlock((a3 + 16));
  a1(v5);
}

void sub_1B1B69B18(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void), uint64_t a5)
{
  v10 = sub_1B1C2D0D8();
  if (qword_1ED9A99C0 != -1)
  {
    OUTLINED_FUNCTION_0_13();
  }

  v11 = qword_1ED9AA670;
  if (os_log_type_enabled(qword_1ED9AA670, v10))
  {

    v12 = swift_slowAlloc();
    v13 = OUTLINED_FUNCTION_19_0();
    aBlock[0] = v13;
    *v12 = 134218242;
    *(v12 + 4) = sub_1B1A9547C(a1);

    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_1B1A930E4(a2, a3, aBlock);
    _os_log_impl(&dword_1B1A8A000, v11, v10, "#UAF removing %ld subscription(s) for %s", v12, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v13);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_11();
  }

  if (sub_1B1A9547C(a1))
  {
    v14 = sub_1B1A9547C(a1);
    if (!v14)
    {
LABEL_16:
      v24 = [objc_opt_self() sharedManager];
      v25 = sub_1B1C2CB28();
      v26 = sub_1B1C2CE68();

      v27 = swift_allocObject();
      v27[2] = a2;
      v27[3] = a3;
      v27[4] = a1;
      v27[5] = a4;
      v27[6] = a5;
      aBlock[4] = sub_1B1B6ADEC;
      aBlock[5] = v27;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      OUTLINED_FUNCTION_13_1();
      aBlock[2] = v28;
      aBlock[3] = &block_descriptor_34;
      v29 = _Block_copy(aBlock);

      sub_1B1A94514(a4);

      [v24 unsubscribe:v25 subscriptionNames:v26 queue:0 completion:v29];
      _Block_release(v29);

      return;
    }

    v15 = v14;
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1B1AC9FA8();
    if ((v15 & 0x8000000000000000) == 0)
    {
      v30 = a2;
      v31 = a3;
      v16 = 0;
      v17 = aBlock[0];
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v18 = MEMORY[0x1B2738A20](v16, a1);
        }

        else
        {
          v18 = *(a1 + 8 * v16 + 32);
        }

        v19 = v18;
        v20 = *&v18[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier];
        v21 = *&v18[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier + 8];

        aBlock[0] = v17;
        v22 = *(v17 + 16);
        if (v22 >= *(v17 + 24) >> 1)
        {
          sub_1B1AC9FA8();
          v17 = aBlock[0];
        }

        ++v16;
        *(v17 + 16) = v22 + 1;
        v23 = v17 + 16 * v22;
        *(v23 + 32) = v20;
        *(v23 + 40) = v21;
      }

      while (v15 != v16);
      a2 = v30;
      a3 = v31;
      goto LABEL_16;
    }

    __break(1u);
  }

  else if (a4)
  {
    a4(0);
  }
}

void sub_1B1B69E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  v6 = a2 == 0x73747469726973 && a3 == 0xE700000000000000;
  if (v6 || (sub_1B1C2D7A8() & 1) != 0)
  {
    v7 = sub_1B1A9547C(a4);
    for (i = 0; v7 != i; ++i)
    {
      if ((a4 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1B2738A20](i, a4);
      }

      else
      {
        if (i >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v9 = *(a4 + 8 * i + 32);
      }

      v10 = v9;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        return;
      }

      v11 = &v9[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_path];
      os_unfair_lock_lock(&v9[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_path]);
      v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762728, &unk_1B1C38940) + 28);
      sub_1B1A90C78(v11 + v12, &unk_1EB761F00, &qword_1B1C36480);
      v13 = sub_1B1C2C1C8();
      __swift_storeEnumTagSinglePayload(v11 + v12, 1, 1, v13);
      os_unfair_lock_unlock(v11);
      v14 = &v10[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_isDirty];
      os_unfair_lock_lock(&v10[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_isDirty]);
      LOBYTE(v14[1]._os_unfair_lock_opaque) = 1;
      os_unfair_lock_unlock(v14);
    }
  }

  if (a5)
  {
    a5(a1);
  }
}

uint64_t sub_1B1B6A048(uint64_t result)
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
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_1B1B6A64C(v12, v13);

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

uint64_t sub_1B1B6A174(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v59 = *MEMORY[0x1E69E9840];
  if (*(a2 + 16))
  {
    v7 = a1 + 56;
    v6 = *(a1 + 56);
    v8 = -1;
    v9 = -1 << *(a1 + 32);
    v50 = ~v9;
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
    v13 = a2 + 56;

    v15 = 0;
    v52 = v12;
    v53 = v7;
    v54 = v14;
    if (v11)
    {
      while (2)
      {
        v16 = v15;
LABEL_11:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v19 = (*(v14 + 48) + ((v16 << 10) | (16 * v18)));
        v3 = *v19;
        v2 = v19[1];
        v20 = *(v5 + 40);
        sub_1B1C2D888();

        sub_1B1C2CC48();
        v21 = sub_1B1C2D8E8();
        v22 = ~(-1 << *(v5 + 32));
        while (1)
        {
          v7 = v21 & v22;
          v4 = (v21 & v22) >> 6;
          v8 = 1 << (v21 & v22);
          if ((v8 & *(v13 + 8 * v4)) == 0)
          {
            break;
          }

          v23 = (*(v5 + 48) + 16 * v7);
          v24 = *v23 == v3 && v23[1] == v2;
          if (v24 || (sub_1B1C2D7A8() & 1) != 0)
          {
            v56 = v50;
            v57 = v16;
            v58 = v11;
            v3 = v53;
            v12 = v54;
            v55[0] = v54;
            v55[1] = v53;

            v26 = *(v5 + 32);
            v47 = ((1 << v26) + 63) >> 6;
            v2 = 8 * v47;
            if ((v26 & 0x3Fu) > 0xD)
            {
              goto LABEL_48;
            }

            while (1)
            {
              v48 = &v46;
              MEMORY[0x1EEE9AC00](v25);
              v7 = &v46 - ((v2 + 15) & 0x3FFFFFFFFFFFFFF0);
              memcpy(v7, (v5 + 56), v2);
              v27 = *(v7 + 8 * v4) & ~v8;
              v28 = *(v5 + 16);
              v51 = v7;
              *(v7 + 8 * v4) = v27;
              v29 = v28 - 1;
              v30 = v52;
              while (1)
              {
                v49 = v29;
LABEL_24:
                if (!v11)
                {
                  break;
                }

LABEL_29:
                v32 = __clz(__rbit64(v11));
                v11 &= v11 - 1;
                v33 = (*(v12 + 48) + ((v16 << 10) | (16 * v32)));
                v2 = *v33;
                v34 = v33[1];
                v35 = *(v5 + 40);
                sub_1B1C2D888();

                sub_1B1C2CC48();
                v36 = sub_1B1C2D8E8();
                v37 = ~(-1 << *(v5 + 32));
                do
                {
                  v4 = v36 & v37;
                  v7 = (v36 & v37) >> 6;
                  v8 = 1 << (v36 & v37);
                  if ((v8 & *(v13 + 8 * v7)) == 0)
                  {

                    v3 = v53;
                    v12 = v54;
                    v30 = v52;
                    goto LABEL_24;
                  }

                  v38 = (*(v5 + 48) + 16 * v4);
                  if (*v38 == v2 && v38[1] == v34)
                  {
                    break;
                  }

                  v40 = sub_1B1C2D7A8();
                  v36 = v4 + 1;
                }

                while ((v40 & 1) == 0);

                v41 = v51[v7];
                v51[v7] = v41 & ~v8;
                v3 = v53;
                v12 = v54;
                v30 = v52;
                if ((v41 & v8) == 0)
                {
                  goto LABEL_24;
                }

                v29 = v49 - 1;
                if (__OFSUB__(v49, 1))
                {
                  __break(1u);
                }

                if (v49 == 1)
                {

                  v5 = MEMORY[0x1E69E7CD0];
                  goto LABEL_44;
                }
              }

              while (1)
              {
                v31 = v16 + 1;
                if (__OFADD__(v16, 1))
                {
                  break;
                }

                if (v31 >= v30)
                {
                  v5 = sub_1B1B6A9E8(v51, v47, v49, v5);
                  goto LABEL_44;
                }

                v11 = *(v3 + 8 * v31);
                ++v16;
                if (v11)
                {
                  v16 = v31;
                  goto LABEL_29;
                }
              }

              __break(1u);
LABEL_47:
              __break(1u);
LABEL_48:

              if (!swift_stdlib_isStackAllocationSafe())
              {
                break;
              }
            }

            v44 = swift_slowAlloc();
            v45 = sub_1B1B6A960(v44, v47, (v5 + 56), v47, v5, v7, v55);

            MEMORY[0x1B2739FD0](v44, -1, -1);
            v50 = v56;
            v5 = v45;
            goto LABEL_44;
          }

          v21 = v7 + 1;
        }

        v15 = v16;
        v7 = v53;
        v14 = v54;
        v12 = v52;
        v8 = -1;
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v17 = v15;
    while (1)
    {
      v16 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_47;
      }

      if (v16 >= v12)
      {
        break;
      }

      v11 = *(v7 + 8 * v16);
      ++v17;
      if (v11)
      {
        goto LABEL_11;
      }
    }

LABEL_44:
    sub_1B1A9D350();
  }

  else
  {

    v5 = MEMORY[0x1E69E7CD0];
  }

  v42 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t sub_1B1B6A64C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_1B1C2D888();
  sub_1B1C2CC48();
  v7 = sub_1B1C2D8E8();
  v8 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v9 = v7 & v8;
    if (((*(v5 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v7 & v8)) & 1) == 0)
    {
      return 0;
    }

    v10 = (*(v5 + 48) + 16 * v9);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1B1C2D7A8() & 1) != 0)
    {
      break;
    }

    v7 = v9 + 1;
  }

  v12 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v19 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1B1B1F12C();
    v14 = v19;
  }

  v15 = (*(v14 + 48) + 16 * v9);
  v16 = *v15;
  v17 = v15[1];
  sub_1B1B6AC04(v9);
  *v2 = v19;
  return v16;
}

uint64_t sub_1B1B6A774(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v28 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (1)
  {
    v27 = v8;
LABEL_3:
    v10 = a5[3];
    v11 = a5[4];
    if (!v11)
    {
      break;
    }

    v12 = a5[3];
LABEL_8:
    v13 = (*(*a5 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v11)))));
    v15 = *v13;
    v14 = v13[1];
    a5[3] = v12;
    a5[4] = (v11 - 1) & v11;
    v16 = *(a3 + 40);
    sub_1B1C2D888();

    sub_1B1C2CC48();
    v17 = sub_1B1C2D8E8();
    v18 = ~(-1 << *(a3 + 32));
    do
    {
      v19 = v17 & v18;
      v20 = (v17 & v18) >> 6;
      v21 = 1 << (v17 & v18);
      if ((v21 & *(v9 + 8 * v20)) == 0)
      {

        goto LABEL_3;
      }

      v22 = (*(a3 + 48) + 16 * v19);
      if (*v22 == v15 && v22[1] == v14)
      {
        break;
      }

      v24 = sub_1B1C2D7A8();
      v17 = v19 + 1;
    }

    while ((v24 & 1) == 0);

    v25 = v28[v20];
    v28[v20] = v25 & ~v21;
    if ((v25 & v21) == 0)
    {
      goto LABEL_3;
    }

    v8 = v27 - 1;
    if (__OFSUB__(v27, 1))
    {
      goto LABEL_23;
    }

    if (v27 == 1)
    {
      return MEMORY[0x1E69E7CD0];
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((a5[2] + 64) >> 6))
    {
      a5[3] = v10;
      a5[4] = 0;

      return sub_1B1B6A9E8(v28, a2, v27, a3);
    }

    v11 = *(a5[1] + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1B1B6A960(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_1B1B6A774(a1, a2, a5, a6, a7);

  return v12;
}

uint64_t sub_1B1B6A9E8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7622E8, &qword_1B1C37900);
  result = sub_1B1C2D4F8();
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
    sub_1B1C2D888();

    sub_1B1C2CC48();
    result = sub_1B1C2D8E8();
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
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
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
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_1B1B6AC04(unint64_t result)
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

    v9 = sub_1B1C2D438();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_1B1C2D888();

        sub_1B1C2CC48();
        v15 = sub_1B1C2D8E8();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 >= v10 && v2 >= v16)
          {
LABEL_15:
            v19 = *(v3 + 48);
            v20 = (v19 + 16 * v2);
            v21 = (v19 + 16 * v6);
            if (v2 != v6 || v20 >= v21 + 1)
            {
              *v20 = *v21;
              v2 = v6;
            }
          }
        }

        else if (v16 >= v10 || v2 >= v16)
        {
          goto LABEL_15;
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

  v23 = *(v3 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v25;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t CoreAnalyticsSynthesisHandler.__allocating_init(notificationCenter:coreAnalyticsService:)(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  CoreAnalyticsSynthesisHandler.init(notificationCenter:coreAnalyticsService:)(a1, a2);
  return v4;
}

uint64_t sub_1B1B6AFC4(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v4 = *a1;
  v5 = a1[1];
  OUTLINED_FUNCTION_65();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3(v4, v5);
  }

  return result;
}

void sub_1B1B6B0F4(char *a1)
{
  v3 = *(v1 + 72);
  v4 = OBJC_IVAR___SiriTTSBaseRequest_requestCreatedTime;
  OUTLINED_FUNCTION_65();
  v5 = *&a1[v4];
  v6 = OBJC_IVAR___SiriTTSInstrumentationMetrics_requestCreatedTime;
  OUTLINED_FUNCTION_66_0();
  *(v3 + v6) = v5;
  v7 = &a1[OBJC_IVAR___SiriTTSBaseRequest_clientBundleId];
  OUTLINED_FUNCTION_65();
  v9 = *v7;
  v8 = *(v7 + 1);
  v10 = (v3 + OBJC_IVAR___SiriTTSInstrumentationMetrics_clientBundleIdentifier);
  OUTLINED_FUNCTION_66_0();
  v11 = v10[1];
  *v10 = v9;
  v10[1] = v8;

  v12 = OBJC_IVAR___SiriTTSInstrumentationMetrics_isWarmStart;
  OUTLINED_FUNCTION_66_0();
  *(v3 + v12) = 1;
  type metadata accessor for AudioRequest(0);
  if (swift_dynamicCastClass())
  {
    goto LABEL_4;
  }

  v32[3] = &unk_1F28D9340;
  if (swift_dynamicCastObjCProtocolConditional())
  {
    ObjectType = swift_getObjectType();
    v14 = SynthesizingRequestProtocol.text.getter();
    v16 = v15;
    v17 = (v3 + OBJC_IVAR___SiriTTSInstrumentationMetrics_utterance);
    OUTLINED_FUNCTION_66_0();
    v18 = v17[1];
    *v17 = v14;
    v17[1] = v16;

    LOBYTE(v14) = SynthesizingRequestProtocol.privacySensitive.getter(ObjectType);
    v19 = OBJC_IVAR___SiriTTSInstrumentationMetrics_privacySensitive;
    OUTLINED_FUNCTION_66_0();
    *(v3 + v19) = v14 & 1;
    v20 = SynthesizingRequestProtocol.minimizeDeviceUsage.getter(ObjectType);
    v21 = OBJC_IVAR___SiriTTSInstrumentationMetrics_minimizeDeviceUsage;
    OUTLINED_FUNCTION_66_0();
    *(v3 + v21) = v20 & 1;
LABEL_4:
    if (swift_dynamicCastObjCProtocolConditional())
    {
      v22 = OBJC_IVAR___SiriTTSInstrumentationMetrics_isAudibleRequest;
      OUTLINED_FUNCTION_19_2();
      *(v3 + v22) = 1;
    }

    return;
  }

  if (qword_1ED9A9288 != -1)
  {
    swift_once();
  }

  v23 = sub_1B1C2C8A8();
  __swift_project_value_buffer(v23, qword_1ED9A9120);
  v24 = a1;
  v25 = sub_1B1C2C888();
  v26 = sub_1B1C2D0C8();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v32[0] = v28;
    *v27 = 136315138;
    swift_getObjectType();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762928, &unk_1B1C39958);
    v29 = sub_1B1C2CBD8();
    v31 = sub_1B1A930E4(v29, v30, v32);

    *(v27 + 4) = v31;
    _os_log_impl(&dword_1B1A8A000, v25, v26, "Unrecognized request type in handleRequestReceived, got: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x1B2739FD0](v28, -1, -1);
    MEMORY[0x1B2739FD0](v27, -1, -1);
  }
}

uint64_t sub_1B1B6B454()
{
  v1 = *(v0 + 72);
  v2 = OBJC_IVAR___SiriTTSInstrumentationMetrics_isWarmStart;
  result = OUTLINED_FUNCTION_19_2();
  *(v1 + v2) = 0;
  return result;
}

uint64_t sub_1B1B6B494()
{
  v1 = *(v0 + 72);
  v2 = OBJC_IVAR___SiriTTSInstrumentationMetrics_promptCount;
  result = OUTLINED_FUNCTION_19_2();
  v4 = *(v1 + v2);
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    *(v1 + v2) = v6;
  }

  return result;
}

uint64_t sub_1B1B6B4FC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (*(v3 + 72) + *a3);
  OUTLINED_FUNCTION_66_0();
  v7 = v6[1];
  *v6 = a1;
  v6[1] = a2;
}

uint64_t sub_1B1B6B560()
{
  v1 = *(v0 + 72);
  v2 = OBJC_IVAR___SiriTTSInstrumentationMetrics_neuralAlignmentStall;
  result = OUTLINED_FUNCTION_19_2();
  *(v1 + v2) = 1;
  return result;
}

uint64_t sub_1B1B6B5AC()
{
  v1 = *(v0 + 72);
  v2 = OBJC_IVAR___SiriTTSInstrumentationMetrics_useHydraFrontend;
  result = OUTLINED_FUNCTION_19_2();
  *(v1 + v2) = 1;
  return result;
}

uint64_t DownloadOption.toOptions()()
{
  if (v0[1])
  {
    return *v0 | 2;
  }

  else
  {
    return *v0;
  }
}

uint64_t VoiceAsset.description.getter()
{
  v1 = v0;
  v2 = [*(v0 + 16) description];
  v3 = sub_1B1C2CB58();

  MEMORY[0x1B27381B0](58, 0xE100000000000000);
  MEMORY[0x1B27381B0](*(v1 + 24), *(v1 + 32));
  return v3;
}

unint64_t sub_1B1B6B718(unint64_t result)
{
  if (result >= 4)
  {
    return 0;
  }

  return result;
}

SiriTTSService::DownloadOption __swiftcall DownloadOption.init(allowExpensiveData:allowDiscretionary:)(Swift::Bool allowExpensiveData, Swift::Bool allowDiscretionary)
{
  *v2 = allowExpensiveData;
  v2[1] = allowDiscretionary;
  result.allowExpensiveData = allowExpensiveData;
  return result;
}

uint64_t TrialAssetProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  TrialAssetProvider.init()();
  return v0;
}

uint64_t sub_1B1B6B778(void *a1, unsigned __int8 a2)
{
  if (a1)
  {
    v3 = a1;
    v4 = sub_1B1ABAF00(a2);
  }

  else
  {
    if (a2 != 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7627A8, &unk_1B1C396D0);
      inited = swift_initStackObject();
      v8 = OUTLINED_FUNCTION_14_2(inited, xmmword_1B1C361C0);
      v8[4].n128_u64[0] = MEMORY[0x1E69E6370];
      v8[2].n128_u8[8] = a2 & 1;
    }

    type metadata accessor for TTSAssetProperty(0);
    OUTLINED_FUNCTION_0_26();
    sub_1B1A97A5C(v5, v6);
    v4 = sub_1B1C2CAB8();
  }

  v13 = v4;
  if (qword_1ED9A94C8 != -1)
  {
    OUTLINED_FUNCTION_6_19();
  }

  v9 = qword_1ED9A94B8;
  v12[3] = sub_1B1A8E474(0, &qword_1ED9A9838, off_1E7AF1A88);
  v12[0] = v9;
  v10 = v9;
  sub_1B1AB51D0(v12, 7);
  return v13;
}

uint64_t sub_1B1B6B90C()
{
  OUTLINED_FUNCTION_26_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762440, &qword_1B1C383E0);
  OUTLINED_FUNCTION_38_1();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B1C38B50;
  if (qword_1ED9A9978 != -1)
  {
LABEL_19:
    OUTLINED_FUNCTION_6();
  }

  v5 = qword_1ED9A9980;
  *(v4 + 32) = qword_1ED9A9980;
  v6 = qword_1ED9A9850;
  v7 = v5;
  if (v6 != -1)
  {
    OUTLINED_FUNCTION_22();
  }

  v8 = qword_1ED9A97E0;
  *(v4 + 40) = qword_1ED9A97E0;
  v9 = v8;
  v10 = OUTLINED_FUNCTION_34_7();
  v12 = sub_1B1B6B778(v10, v11);
  OUTLINED_FUNCTION_27_9(v12);
  OUTLINED_FUNCTION_37_6();

  v13 = MEMORY[0x1E69E7CC0];
  v48 = MEMORY[0x1E69E7CC0];
  sub_1B1A9547C(v0);
  OUTLINED_FUNCTION_23_4();
  v14 = MEMORY[0x1E69E7D40];
  while (v4 != v1)
  {
    if (v2)
    {
      v15 = MEMORY[0x1B2738A20](v1, v0);
    }

    else
    {
      if (v1 >= *(v3 + 16))
      {
        goto LABEL_18;
      }

      v15 = *(v0 + 8 * v1 + 32);
    }

    v16 = v15;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v17 = *v15;
    v18 = *v14;
    OUTLINED_FUNCTION_21_6();
    v20 = (*(v19 + 280))();
    if (v20)
    {
      v21 = v20;
      v46 = sub_1B1ABFFF8();
      v22 = [v21 bundlePath];
      sub_1B1C2CB58();
      v44 = v23;

      type metadata accessor for VoiceAsset();
      OUTLINED_FUNCTION_66();
      v24 = swift_allocObject();
      OUTLINED_FUNCTION_17_10(v24, v25, v26, v27, v28, v29, v30, v31, v42, v44, v46);
      OUTLINED_FUNCTION_10_3(v32, v33, v34, v35, v36, v37, v38, v39, v43, v45, v47, v48);
      if (v40)
      {
        OUTLINED_FUNCTION_9_14();
      }

      OUTLINED_FUNCTION_39_6();
      v13 = v48;
      ++v1;
    }

    else
    {

      ++v1;
    }
  }

  return v13;
}

void sub_1B1B6BB24()
{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_26_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762440, &qword_1B1C383E0);
  OUTLINED_FUNCTION_38_1();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1B1C38B50;
  if (qword_1ED9A9978 != -1)
  {
    OUTLINED_FUNCTION_6();
  }

  v2 = qword_1ED9A9980;
  *(v1 + 32) = qword_1ED9A9980;
  v3 = qword_1ED9A9850;
  v4 = v2;
  if (v3 != -1)
  {
    OUTLINED_FUNCTION_22();
  }

  v5 = qword_1ED9A97E0;
  *(v1 + 40) = qword_1ED9A97E0;
  v6 = v5;
  v7 = OUTLINED_FUNCTION_34_7();
  v9 = sub_1B1B6B778(v7, v8);
  OUTLINED_FUNCTION_27_9(v9);
  OUTLINED_FUNCTION_37_6();

  v10 = sub_1B1A9547C(v0);
  if (!v10)
  {
    goto LABEL_12;
  }

  v11 = v10;
  v17 = MEMORY[0x1E69E7CC0];
  sub_1B1C2D5B8();
  if ((v11 & 0x8000000000000000) == 0)
  {
    v12 = 0;
    do
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        v13 = OUTLINED_FUNCTION_33_2();
        v14 = MEMORY[0x1B2738A20](v13);
      }

      else
      {
        v14 = *(v0 + 8 * v12 + 32);
      }

      v15 = v14;
      ++v12;
      sub_1B1ABFFF8();

      sub_1B1C2D588();
      v16 = *(v17 + 16);
      OUTLINED_FUNCTION_38_5();
      sub_1B1C2D5C8();
      OUTLINED_FUNCTION_38_5();
      sub_1B1C2D5D8();
      sub_1B1C2D598();
    }

    while (v11 != v12);
LABEL_12:

    OUTLINED_FUNCTION_22_4();
    return;
  }

  __break(1u);
}

void *sub_1B1B6BCB8()
{
  v0 = OUTLINED_FUNCTION_26_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762440, &qword_1B1C383E0);
  OUTLINED_FUNCTION_38_1();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1B1C38B50;
  if (qword_1ED9A9978 != -1)
  {
    OUTLINED_FUNCTION_6();
  }

  v2 = qword_1ED9A9980;
  *(v1 + 32) = qword_1ED9A9980;
  v3 = qword_1ED9A9850;
  v4 = v2;
  if (v3 != -1)
  {
    OUTLINED_FUNCTION_22();
  }

  v5 = qword_1ED9A97E0;
  *(v1 + 40) = qword_1ED9A97E0;
  v6 = v5;
  v7 = OUTLINED_FUNCTION_34_7();
  sub_1B1B6B778(v7, v8);
  v9 = OUTLINED_FUNCTION_72();
  static TTSAsset.bestAsset(ofTypes:matching:)(v9, v10);
  OUTLINED_FUNCTION_5_4();

  if (v0)
  {
    v11 = *v0;
    v12 = *MEMORY[0x1E69E7D40];
    OUTLINED_FUNCTION_21_6();
    v14 = (*(v13 + 280))();
    if (v14)
    {
      v15 = v14;
      sub_1B1ABFFF8();
      v16 = [v15 bundlePath];
      sub_1B1C2CB58();
      OUTLINED_FUNCTION_52_3();

      type metadata accessor for VoiceAsset();
      OUTLINED_FUNCTION_66();
      v17 = swift_allocObject();
      return OUTLINED_FUNCTION_47_4(v17);
    }
  }

  return 0;
}

void sub_1B1B6BE30(char a1)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v2 = [objc_opt_self() clientWithIdentifier_];
  v3 = sub_1B1C2CB28();
  v4 = [v2 rolloutIdentifiersWithNamespaceName_];

  if (v4)
  {
  }

  else
  {
    if (qword_1ED9A9288 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v5 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v5, qword_1ED9A9120);
    v6 = sub_1B1C2C888();
    v7 = sub_1B1C2D0D8();
    if (os_log_type_enabled(v6, v7))
    {
      OUTLINED_FUNCTION_45_0();
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1B1A8A000, v6, v7, "SIRI_TEXT_TO_SPEECH namespace is not downloaded yet. Try downloading now.", v8, 2u);
      OUTLINED_FUNCTION_14();
      MEMORY[0x1B2739FD0]();
    }

    if ((a1 & 2) != 0)
    {
      sub_1B1A9EC9C();
      swift_allocError();
      *v12 = 1;
      *(v12 + 8) = 0xD000000000000034;
      *(v12 + 16) = 0x80000001B1C4FB90;
      swift_willThrow();
    }

    else
    {
      sub_1B1AB6238(&unk_1F28BFDB0);
      v9 = sub_1B1C2CF48();

      v17[0] = 0;
      v10 = [v2 immediateDownloadForNamespaceNames:v9 allowExpensiveNetworking:0 error:v17];

      if (v10)
      {
        v11 = v17[0];
      }

      else
      {
        v13 = v17[0];
        v14 = sub_1B1C2C058();

        swift_willThrow();
        sub_1B1A9EC9C();
        swift_allocError();
        *v15 = 1;
        *(v15 + 8) = 0xD000000000000030;
        *(v15 + 16) = 0x80000001B1C4FB50;
        swift_willThrow();
      }
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B1B6C0F4(void *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2[1])
  {
    v8 = *a2 | 2;
  }

  else
  {
    v8 = *a2;
  }

  return sub_1B1B6C10C(a1, v8, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1B1B6C10C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *v8;
  v38 = sub_1B1C2C988();
  v18 = OUTLINED_FUNCTION_7(v38);
  v41 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_16_13();
  v40 = sub_1B1C2C9D8();
  v22 = OUTLINED_FUNCTION_7(v40);
  v39 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22_5();
  v26 = swift_allocObject();
  v26[2] = a1;
  v26[3] = a2;
  v26[4] = v8;
  v26[5] = a7;
  v26[6] = a8;
  v26[7] = a3;
  v26[8] = a4;
  v26[9] = a5;
  v26[10] = a6;
  v26[11] = v17;
  OUTLINED_FUNCTION_10_21(v26);
  OUTLINED_FUNCTION_8_14(COERCE_DOUBLE(1107296256));
  v43 = v27;
  v44 = &block_descriptor_18;
  v28 = _Block_copy(aBlock);
  v29 = a1;

  sub_1B1A94514(a3);
  sub_1B1A94514(a5);
  sub_1B1C2C9A8();
  OUTLINED_FUNCTION_13_19();
  sub_1B1A97A5C(v30, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761900, &unk_1B1C38430);
  sub_1B1A97978(&qword_1ED9A8DB0, &unk_1EB761900, &unk_1B1C38430);
  sub_1B1C2D418();
  MEMORY[0x1B2738610](0, v10, v9, v28);
  _Block_release(v28);
  v32 = *(v41 + 8);
  v33 = OUTLINED_FUNCTION_33_2();
  v34(v33);
  (*(v39 + 8))(v10, v40);
}

void sub_1B1B6C3D8(void *a1, char *a2, uint64_t a3, void (*a4)(void, void), uint64_t a5, void (*a6)(uint64_t **), uint64_t a7, uint64_t a8, char *a9)
{
  v139 = a7;
  v140 = a6;
  v14 = a9;
  v15 = sub_1B1C2C1C8();
  v136 = *(v15 - 8);
  v137 = v15;
  v16 = *(v136 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v132 = &v127 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v133 = &v127 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v134 = &v127 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v135 = &v127 - v23;
  if (qword_1ED9A9288 != -1)
  {
    swift_once();
  }

  v24 = sub_1B1C2C8A8();
  v25 = __swift_project_value_buffer(v24, qword_1ED9A9120);
  v26 = a1;
  v27 = sub_1B1C2C888();
  v28 = sub_1B1C2D0D8();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v138 = a4;
    v31 = a5;
    v32 = v30;
    *v29 = 138412546;
    *(v29 + 4) = v26;
    *v30 = v26;
    *(v29 + 12) = 1024;
    *(v29 + 14) = (a2 >> 1) & 1;
    v33 = v26;
    _os_log_impl(&dword_1B1A8A000, v27, v28, "Attempting voice download, voice: %@, discretionary: %{BOOL}d", v29, 0x12u);
    sub_1B1B1AF0C(v32);
    v34 = v32;
    a5 = v31;
    a4 = v138;
    MEMORY[0x1B2739FD0](v34, -1, -1);
    MEMORY[0x1B2739FD0](v29, -1, -1);
  }

  sub_1B1B6BE30(a2);
  v35 = type metadata accessor for TTSAsset();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762440, &qword_1B1C383E0);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1B1C38B50;
  if (qword_1ED9A9978 != -1)
  {
    swift_once();
  }

  v131 = a5;
  v37 = qword_1ED9A9980;
  *(v36 + 32) = qword_1ED9A9980;
  v38 = qword_1ED9A9850;
  v39 = v37;
  if (v38 != -1)
  {
    swift_once();
  }

  v40 = qword_1ED9A97E0;
  *(v36 + 40) = qword_1ED9A97E0;
  v41 = v40;
  v42 = sub_1B1B6B778(v26, 2u);
  v43 = static TTSAsset.bestAsset(ofTypes:matching:)(v36, v42);

  if (v43)
  {
    v130 = v35;
    v44 = [v43 locallyAvailable];
    v45 = v25;
    v46 = v43;
    v138 = v45;
    v47 = sub_1B1C2C888();
    v48 = sub_1B1C2D0D8();

    v49 = os_log_type_enabled(v47, v48);
    if ((v44 & 1) == 0)
    {
      v129 = v46;
      if (v49)
      {
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        *v70 = 138412290;
        v72 = v129;
        *(v70 + 4) = v129;
        *v71 = v43;
        v73 = v72;
        _os_log_impl(&dword_1B1A8A000, v47, v48, "New voice will be downloaded: %@", v70, 0xCu);
        sub_1B1B1AF0C(v71);
        MEMORY[0x1B2739FD0](v71, -1, -1);
        MEMORY[0x1B2739FD0](v70, -1, -1);
      }

      v74 = v131;
      goto LABEL_23;
    }

    if (v49)
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *v50 = 138412290;
      *(v50 + 4) = v46;
      *v51 = v43;
      v52 = v46;
      _os_log_impl(&dword_1B1A8A000, v47, v48, "Voice is locally available already: %@", v50, 0xCu);
      sub_1B1B1AF0C(v51);
      MEMORY[0x1B2739FD0](v51, -1, -1);
      MEMORY[0x1B2739FD0](v50, -1, -1);
    }

    v53 = (*((*MEMORY[0x1E69E7D40] & *v46) + 0x118))();
    if (v53)
    {
      v54 = v53;
      v55 = sub_1B1ABFFF8();
      v56 = [v54 bundlePath];
      v57 = sub_1B1C2CB58();
      v58 = v46;
      v60 = v59;

      type metadata accessor for VoiceAsset();
      v61 = swift_allocObject();
      v61[2] = v55;
      v61[3] = v57;
      v61[4] = v60;
      a4(0, v61);

      return;
    }

    type metadata accessor for TTSAssetMAAsset();
    v83 = swift_dynamicCastClass();
    v74 = v131;
    v129 = v46;
    if (v83)
    {
      v84 = v83;
      v133 = a2;
      v85 = v46;
      v86 = sub_1B1C2C888();
      v87 = sub_1B1C2D0C8();
      if (!os_log_type_enabled(v86, v87))
      {

        goto LABEL_35;
      }

      v138 = a4;
      v88 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      aBlock = v127;
      v128 = v88;
      *v88 = 136315138;
      v89 = [*(v84 + OBJC_IVAR____TtC14SiriTTSService15TTSAssetMAAsset_asset) getLocalFileUrl];
      v132 = v85;

      if (v89)
      {
        v90 = v134;
        sub_1B1C2C168();

        v92 = v135;
        v91 = v136;
        v93 = v137;
        (*(v136 + 32))(v135, v90, v137);
        sub_1B1A97A5C(&qword_1ED9A5260, MEMORY[0x1E6968FB0]);
        v94 = sub_1B1C2D778();
        v96 = v95;
        (*(v91 + 8))(v92, v93);
        v97 = sub_1B1A930E4(v94, v96, &aBlock);

        v98 = v128;
        *(v128 + 1) = v97;
        _os_log_impl(&dword_1B1A8A000, v86, v87, "Locally available MAAsset has no bundle: %s", v98, 0xCu);
        v99 = v127;
        __swift_destroy_boxed_opaque_existential_0(v127);
        MEMORY[0x1B2739FD0](v99, -1, -1);
        MEMORY[0x1B2739FD0](v98, -1, -1);

        a4 = v138;
LABEL_35:
        a2 = v133;
LABEL_23:
        v75 = v140;
        v76 = v129;
        if (v140)
        {
          v144 = v130;
          aBlock = v129;
          v77 = v129;
          sub_1B1A94514(v75);
          v75(&aBlock);
          sub_1B1A949B4(v75);
          __swift_destroy_boxed_opaque_existential_0(&aBlock);
        }

        v78 = swift_allocObject();
        *(v78 + 16) = a8;
        *(v78 + 24) = v14;
        v145 = sub_1B1B4B110;
        v146 = v78;
        aBlock = MEMORY[0x1E69E9820];
        v142 = 1107296256;
        v143 = sub_1B1B203B8;
        v144 = &block_descriptor_66_0;
        v79 = _Block_copy(&aBlock);
        sub_1B1A94514(a8);

        v80 = swift_allocObject();
        v80[2] = a4;
        v80[3] = v74;
        v80[4] = v76;
        v145 = sub_1B1B70F48;
        v146 = v80;
        aBlock = MEMORY[0x1E69E9820];
        v142 = 1107296256;
        v143 = sub_1B1B20428;
        v144 = &block_descriptor_72_0;
        v81 = _Block_copy(&aBlock);
        v82 = v76;

        [v82 downloadWithOptions:a2 progress:v79 then:v81];
        _Block_release(v81);
        _Block_release(v79);

        return;
      }

      __break(1u);
LABEL_42:
      __break(1u);
      return;
    }

    v135 = a9;
    type metadata accessor for TTSAssetFactoryTrialAsset();
    v100 = swift_dynamicCastClass();
    v101 = v46;
    v102 = v101;
    if (v100)
    {
      v103 = v101;
      v104 = sub_1B1C2C888();
      v105 = sub_1B1C2D0C8();
      if (os_log_type_enabled(v104, v105))
      {
        v138 = a8;
        v106 = swift_slowAlloc();
        v127 = swift_slowAlloc();
        aBlock = v127;
        v128 = v106;
        *v106 = 136315138;
        v107 = [*(v100 + OBJC_IVAR____TtC14SiriTTSService25TTSAssetFactoryTrialAsset_asset) getLocalUrl];
        v134 = v103;

        if (!v107)
        {
          goto LABEL_42;
        }

        v108 = v132;
        sub_1B1C2C168();

        v109 = v136;
        v110 = v137;
        v111 = v133;
        (*(v136 + 32))(v133, v108, v137);
        sub_1B1A97A5C(&qword_1ED9A5260, MEMORY[0x1E6968FB0]);
        v112 = sub_1B1C2D778();
        v114 = v113;
        (*(v109 + 8))(v111, v110);
        v115 = sub_1B1A930E4(v112, v114, &aBlock);

        v116 = v128;
        *(v128 + 1) = v115;
        _os_log_impl(&dword_1B1A8A000, v104, v105, "Locally available FactoryTrialAsset has no bundle: %s", v116, 0xCu);
        v117 = v127;
        __swift_destroy_boxed_opaque_existential_0(v127);
        MEMORY[0x1B2739FD0](v117, -1, -1);
        MEMORY[0x1B2739FD0](v116, -1, -1);

        a8 = v138;
      }

      else
      {
      }
    }

    else
    {
      v118 = sub_1B1C2C888();
      v119 = sub_1B1C2D0C8();

      if (os_log_type_enabled(v118, v119))
      {
        v120 = swift_slowAlloc();
        v121 = a8;
        v122 = a2;
        v123 = a4;
        v124 = swift_slowAlloc();
        *v120 = 138412290;
        *(v120 + 4) = v102;
        *v124 = v43;
        v125 = v102;
        _os_log_impl(&dword_1B1A8A000, v118, v119, "Locally available voice has no bundle: %@", v120, 0xCu);
        sub_1B1B1AF0C(v124);
        v126 = v124;
        a4 = v123;
        a2 = v122;
        a8 = v121;
        MEMORY[0x1B2739FD0](v126, -1, -1);
        MEMORY[0x1B2739FD0](v120, -1, -1);
      }
    }

    v14 = v135;
    goto LABEL_23;
  }

  aBlock = 0;
  v142 = 0xE000000000000000;
  sub_1B1C2D538();

  aBlock = 0xD00000000000001ELL;
  v142 = 0x80000001B1C4DD60;
  v62 = [v26 description];
  v63 = sub_1B1C2CB58();
  v65 = v64;

  MEMORY[0x1B27381B0](v63, v65);

  v66 = aBlock;
  v67 = v142;
  sub_1B1A9EC9C();
  v68 = swift_allocError();
  *v69 = 5;
  *(v69 + 8) = v66;
  *(v69 + 16) = v67;
  a4(v68, 0);
}

void sub_1B1B6D27C(void *a1, void (*a2)(void *, void *), uint64_t a3, void *a4)
{
  if (a1)
  {
    v5 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x118);
    v31 = a1;
    v6 = v5();
    if (v6)
    {
      v7 = v6;
      v8 = sub_1B1ABFFF8();
      v9 = [v7 bundlePath];
      v10 = sub_1B1C2CB58();
      v12 = v11;

      type metadata accessor for VoiceAsset();
      v13 = swift_allocObject();
      v13[2] = v8;
      v13[3] = v10;
      v13[4] = v12;
      a2(0, v13);

      v14 = [objc_opt_self() defaultCenter];
      v29 = v14;
      if (qword_1EB760FF8 != -1)
      {
        swift_once();
        v14 = v29;
      }

      [v14 postNotificationName:qword_1EB761000 object:{0, v29}];

      v15 = v30;
    }

    else
    {
      sub_1B1C2D538();
      MEMORY[0x1B27381B0](0xD000000000000039, 0x80000001B1C4FBD0);
      v23 = [v31 description];
      v24 = sub_1B1C2CB58();
      v26 = v25;

      MEMORY[0x1B27381B0](v24, v26);

      sub_1B1A9EC9C();
      v27 = swift_allocError();
      *v28 = 1;
      *(v28 + 8) = 0;
      *(v28 + 16) = 0xE000000000000000;
      a2(v27, 0);

      v15 = v31;
    }
  }

  else
  {
    sub_1B1C2D538();

    v17 = [a4 description];
    v18 = sub_1B1C2CB58();
    v20 = v19;

    MEMORY[0x1B27381B0](v18, v20);

    sub_1B1A9EC9C();
    v21 = swift_allocError();
    *v22 = 1;
    *(v22 + 8) = 0xD00000000000001ALL;
    *(v22 + 16) = 0x80000001B1C4DD80;
    a2(v21, 0);
    v15 = v21;
  }
}

void sub_1B1B6D604()
{
  OUTLINED_FUNCTION_26_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762440, &qword_1B1C383E0);
  OUTLINED_FUNCTION_38_1();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B1C38B50;
  if (qword_1ED9A9978 != -1)
  {
LABEL_25:
    OUTLINED_FUNCTION_6();
  }

  v1 = qword_1ED9A9980;
  *(v0 + 32) = qword_1ED9A9980;
  v2 = qword_1ED9A9850;
  v3 = v1;
  if (v2 != -1)
  {
    OUTLINED_FUNCTION_22();
  }

  v4 = qword_1ED9A97E0;
  *(v0 + 40) = qword_1ED9A97E0;
  v5 = v4;
  v6 = OUTLINED_FUNCTION_34_7();
  sub_1B1B6B778(v6, v7);
  v8 = OUTLINED_FUNCTION_33_2();
  v10 = static TTSAsset.listAssets(ofTypes:matching:)(v8, v9);

  v0 = MEMORY[0x1E69E7CC0];
  v18 = MEMORY[0x1E69E7CC0];
  v11 = sub_1B1A9547C(v10);
  v12 = 0;
  while (v11 != v12)
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x1B2738A20](v12, v10);
    }

    else
    {
      if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v13 = *(v10 + 8 * v12 + 32);
    }

    v14 = v13;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    type metadata accessor for TTSAssetTrialAsset();
    if (swift_dynamicCastClass())
    {
      MEMORY[0x1B2738320]();
      if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B1C2CE98();
      }

      sub_1B1C2CEC8();
      v0 = v18;
      ++v12;
    }

    else
    {

      ++v12;
    }
  }

  type metadata accessor for TTSAssetTrialAsset();
  static TTSAssetTrialAsset.purge(assets:then:)(v0, 0, 0);

  if (v11)
  {
    v15 = [objc_opt_self() defaultCenter];
    v16 = v15;
    if (qword_1EB760FF8 != -1)
    {
      swift_once();
      v15 = v16;
    }

    [v15 postNotificationName:qword_1EB761000 object:{0, v16}];
  }
}

uint64_t sub_1B1B6D8E4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7627A8, &unk_1B1C396D0);
  inited = swift_initStackObject();
  v4 = OUTLINED_FUNCTION_14_2(inited, xmmword_1B1C36280);
  v5 = MEMORY[0x1E69E6370];
  v4[2].n128_u8[8] = 1;
  v4[4].n128_u64[0] = v5;
  v4[4].n128_u64[1] = 7;
  if (qword_1ED9A94C8 != -1)
  {
LABEL_19:
    OUTLINED_FUNCTION_6_19();
  }

  v6 = qword_1ED9A94B8;
  inited[6].n128_u64[1] = sub_1B1A8E474(0, &qword_1ED9A9838, off_1E7AF1A88);
  inited[5].n128_u64[0] = v6;
  type metadata accessor for TTSAssetProperty(0);
  OUTLINED_FUNCTION_0_26();
  v9 = sub_1B1A97A5C(v7, v8);
  v10 = v6;
  OUTLINED_FUNCTION_25_4();
  OUTLINED_FUNCTION_46_5();
  type metadata accessor for TTSAsset();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762440, &qword_1B1C383E0);
  OUTLINED_FUNCTION_66();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1B1C37D90;
  if (qword_1ED9A9960 != -1)
  {
    OUTLINED_FUNCTION_12_4();
  }

  v12 = qword_1ED9A9968;
  *(v11 + 32) = qword_1ED9A9968;
  v13 = v12;
  inited = static TTSAsset.listAssets(ofTypes:matching:)(v11, v9);

  v14 = MEMORY[0x1E69E7CC0];
  v49 = MEMORY[0x1E69E7CC0];
  sub_1B1A9547C(inited);
  OUTLINED_FUNCTION_23_4();
  v15 = MEMORY[0x1E69E7D40];
  while (v9 != v0)
  {
    if (v1)
    {
      v16 = MEMORY[0x1B2738A20](v0, inited);
    }

    else
    {
      if (v0 >= *(v2 + 16))
      {
        goto LABEL_18;
      }

      v16 = inited[2].n128_u64[v0];
    }

    v17 = v16;
    if (__OFADD__(v0, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v18 = *v16;
    v19 = *v15;
    OUTLINED_FUNCTION_21_6();
    v21 = (*(v20 + 280))();
    if (v21)
    {
      v22 = v21;
      v47 = sub_1B1ABC174();
      v23 = [v22 bundlePath];
      sub_1B1C2CB58();
      v45 = v24;

      type metadata accessor for ResourceAsset();
      OUTLINED_FUNCTION_66();
      v25 = swift_allocObject();
      OUTLINED_FUNCTION_17_10(v25, v26, v27, v28, v29, v30, v31, v32, v43, v45, v47);
      OUTLINED_FUNCTION_10_3(v33, v34, v35, v36, v37, v38, v39, v40, v44, v46, v48, v49);
      if (v41)
      {
        OUTLINED_FUNCTION_9_14();
      }

      OUTLINED_FUNCTION_39_6();
      v14 = v49;
      ++v0;
    }

    else
    {

      ++v0;
    }
  }

  return v14;
}

uint64_t sub_1B1B6DBA4(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3[1])
  {
    v7 = *a3 | 2;
  }

  else
  {
    v7 = *a3;
  }

  return sub_1B1B6DBBC(a1, a2, v7, a4, a5, a6, a7);
}

uint64_t sub_1B1B6DBBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_46_5();
  v14 = sub_1B1C2C988();
  v15 = OUTLINED_FUNCTION_7(v14);
  v36 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_16_13();
  v35 = sub_1B1C2C9D8();
  v19 = OUTLINED_FUNCTION_7(v35);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22_5();
  v24 = swift_allocObject();
  v24[2] = v7;
  v24[3] = a2;
  v24[4] = a6;
  v24[5] = a7;
  v24[6] = a3;
  v24[7] = a4;
  v24[8] = a5;
  OUTLINED_FUNCTION_10_21(v24);
  OUTLINED_FUNCTION_8_14(COERCE_DOUBLE(1107296256));
  v38 = v25;
  v39 = &block_descriptor_6_3;
  v26 = _Block_copy(aBlock);

  sub_1B1A94514(a4);
  sub_1B1C2C9A8();
  OUTLINED_FUNCTION_13_19();
  sub_1B1A97A5C(v27, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761900, &unk_1B1C38430);
  sub_1B1A97978(&qword_1ED9A8DB0, &unk_1EB761900, &unk_1B1C38430);
  sub_1B1C2D418();
  MEMORY[0x1B2738610](0, v9, v8, v26);
  _Block_release(v26);
  v29 = *(v36 + 8);
  v30 = OUTLINED_FUNCTION_33_2();
  v31(v30);
  (*(v21 + 8))(v9, v35);
}

void sub_1B1B6DE34(uint64_t a1, unint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7627A8, &unk_1B1C396D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B1C36280;
  v14 = MEMORY[0x1E69E6158];
  *(inited + 32) = 1;
  *(inited + 40) = a1;
  *(inited + 48) = a2;
  *(inited + 64) = v14;
  *(inited + 72) = 7;
  v15 = qword_1ED9A94C8;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = qword_1ED9A94B8;
  *(inited + 104) = sub_1B1A8E474(0, &qword_1ED9A9838, off_1E7AF1A88);
  *(inited + 80) = v16;
  type metadata accessor for TTSAssetProperty(0);
  sub_1B1A97A5C(&qword_1ED9A90A0, type metadata accessor for TTSAssetProperty);
  v17 = v16;
  v18 = sub_1B1C2CAB8();
  type metadata accessor for TTSAsset();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762440, &qword_1B1C383E0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1B1C37D90;
  if (qword_1ED9A9960 != -1)
  {
    swift_once();
  }

  v20 = qword_1ED9A9968;
  *(v19 + 32) = qword_1ED9A9968;
  v21 = v20;
  v22 = static TTSAsset.bestAsset(ofTypes:matching:)(v19, v18);

  if (v22)
  {
    if ([v22 locallyAvailable])
    {
      if (qword_1ED9A9288 != -1)
      {
        swift_once();
      }

      v23 = sub_1B1C2C8A8();
      __swift_project_value_buffer(v23, qword_1ED9A9120);

      v24 = sub_1B1C2C888();
      v25 = sub_1B1C2D0D8();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        aBlock = v27;
        *v26 = 136315138;
        *(v26 + 4) = sub_1B1A930E4(a1, a2, &aBlock);
        _os_log_impl(&dword_1B1A8A000, v24, v25, "Resource asset is locally available: %s", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v27);
        MEMORY[0x1B2739FD0](v27, -1, -1);
        MEMORY[0x1B2739FD0](v26, -1, -1);
      }

      (a3)(0);
    }

    else
    {
      v30 = swift_allocObject();
      *(v30 + 16) = a6;
      *(v30 + 24) = a7;
      v39 = sub_1B1B4B178;
      v40 = v30;
      aBlock = MEMORY[0x1E69E9820];
      v36 = 1107296256;
      v37 = sub_1B1B203B8;
      v38 = &block_descriptor_54_0;
      v31 = _Block_copy(&aBlock);
      sub_1B1A94514(a6);

      v32 = swift_allocObject();
      v32[2] = a3;
      v32[3] = a4;
      v32[4] = a1;
      v32[5] = a2;
      v39 = sub_1B1B4B104;
      v40 = v32;
      aBlock = MEMORY[0x1E69E9820];
      v36 = 1107296256;
      v37 = sub_1B1B20428;
      v38 = &block_descriptor_60_0;
      v33 = _Block_copy(&aBlock);

      [v22 downloadWithOptions:a5 progress:v31 then:v33];
      _Block_release(v33);
      _Block_release(v31);
    }
  }

  else
  {
    sub_1B1C2D538();

    MEMORY[0x1B27381B0](a1, a2);
    sub_1B1A9EC9C();
    v28 = swift_allocError();
    *v29 = 1;
    *(v29 + 8) = 0xD00000000000001CLL;
    *(v29 + 16) = 0x80000001B1C4DD20;
    a3();
  }
}

void sub_1B1B6E374(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7627A8, &unk_1B1C396D0);
  inited = swift_initStackObject();
  v5 = OUTLINED_FUNCTION_14_2(inited, xmmword_1B1C364D0);
  v6 = OUTLINED_FUNCTION_32_8(v5, MEMORY[0x1E69E6370]);
  v7 = MEMORY[0x1E69E6158];
  v6[10] = a1;
  v6[11] = a2;
  v6[13] = v7;
  v6[14] = 7;
  v8 = qword_1ED9A94C8;

  if (v8 != -1)
  {
    OUTLINED_FUNCTION_6_19();
  }

  v9 = qword_1ED9A94B8;
  inited[9].n128_u64[0] = sub_1B1A8E474(0, &qword_1ED9A9838, off_1E7AF1A88);
  inited[7].n128_u64[1] = v9;
  type metadata accessor for TTSAssetProperty(0);
  OUTLINED_FUNCTION_0_26();
  sub_1B1A97A5C(v10, v11);
  v12 = v9;
  OUTLINED_FUNCTION_25_4();
  v13 = OUTLINED_FUNCTION_26_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762440, &qword_1B1C383E0);
  OUTLINED_FUNCTION_66();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1B1C37D90;
  if (qword_1ED9A9960 != -1)
  {
    OUTLINED_FUNCTION_12_4();
  }

  v15 = qword_1ED9A9968;
  *(v14 + 32) = qword_1ED9A9968;
  v16 = v15;
  v17 = OUTLINED_FUNCTION_72();
  static TTSAsset.bestAsset(ofTypes:matching:)(v17, v18);
  OUTLINED_FUNCTION_5_4();

  if (v13)
  {
    [v13 purgeThen_];
  }
}

void sub_1B1B6E520(uint64_t a1)
{
  sub_1B1A93378(a1, aBlock);
  type metadata accessor for TTSAsset();
  if (swift_dynamicCast())
  {
    v1 = aBlock[6];
    aBlock[4] = nullsub_1;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B1B20428;
    aBlock[3] = &block_descriptor_9_0;
    v2 = _Block_copy(aBlock);
    [v1 cancelDownloadingThen_];
    _Block_release(v2);
  }

  else
  {
    if (qword_1ED9A9288 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v3 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v3, qword_1ED9A9120);
    v1 = sub_1B1C2C888();
    v4 = sub_1B1C2D0B8();
    if (OUTLINED_FUNCTION_10_2(v4))
    {
      OUTLINED_FUNCTION_45_0();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_25_7(&dword_1B1A8A000, v5, v6, "Unable to cancel download of non-TTSAssetTrialAsset asset");
      OUTLINED_FUNCTION_14();
      MEMORY[0x1B2739FD0]();
    }
  }
}

uint64_t sub_1B1B6E6BC(uint64_t a1)
{
  if (a1)
  {
    v1 = sub_1B1ABAF00(1u);
  }

  else
  {
    type metadata accessor for TTSAssetProperty(0);
    OUTLINED_FUNCTION_0_26();
    sub_1B1A97A5C(v2, v3);
    v1 = sub_1B1C2CAB8();
  }

  v12 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762520, &qword_1B1C39820);
  OUTLINED_FUNCTION_40_5(v4, &unk_1F28BA508, v9, v10[0], v10[1], v10[2], v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762440, &qword_1B1C383E0);
  OUTLINED_FUNCTION_66();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B1C37D90;
  if (qword_1ED9A4F08 != -1)
  {
    swift_once();
  }

  v6 = qword_1ED9A4F10;
  *(v5 + 32) = qword_1ED9A4F10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762930, &qword_1B1C39C08);
  v10[0] = v5;
  v7 = v6;
  sub_1B1AB51D0(v10, 7);
  return v12;
}

uint64_t sub_1B1B6E800()
{
  OUTLINED_FUNCTION_26_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762440, &qword_1B1C383E0);
  OUTLINED_FUNCTION_38_1();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B1C38B50;
  if (qword_1ED9A9978 != -1)
  {
LABEL_19:
    OUTLINED_FUNCTION_6();
  }

  v5 = qword_1ED9A9980;
  *(v4 + 32) = qword_1ED9A9980;
  v6 = qword_1ED9A9850;
  v7 = v5;
  if (v6 != -1)
  {
    OUTLINED_FUNCTION_22();
  }

  v8 = qword_1ED9A97E0;
  *(v4 + 40) = qword_1ED9A97E0;
  v9 = v8;
  v10 = sub_1B1B6E6BC(v0);
  OUTLINED_FUNCTION_27_9(v10);
  OUTLINED_FUNCTION_37_6();

  v11 = MEMORY[0x1E69E7CC0];
  v46 = MEMORY[0x1E69E7CC0];
  sub_1B1A9547C(v0);
  OUTLINED_FUNCTION_23_4();
  v12 = MEMORY[0x1E69E7D40];
  while (v4 != v1)
  {
    if (v2)
    {
      v13 = MEMORY[0x1B2738A20](v1, v0);
    }

    else
    {
      if (v1 >= *(v3 + 16))
      {
        goto LABEL_18;
      }

      v13 = *(v0 + 8 * v1 + 32);
    }

    v14 = v13;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v15 = *v13;
    v16 = *v12;
    OUTLINED_FUNCTION_21_6();
    v18 = (*(v17 + 280))();
    if (v18)
    {
      v19 = v18;
      v44 = sub_1B1ABFFF8();
      v20 = [v19 bundlePath];
      sub_1B1C2CB58();
      v42 = v21;

      type metadata accessor for VoiceAsset();
      OUTLINED_FUNCTION_66();
      v22 = swift_allocObject();
      OUTLINED_FUNCTION_17_10(v22, v23, v24, v25, v26, v27, v28, v29, v40, v42, v44);
      OUTLINED_FUNCTION_10_3(v30, v31, v32, v33, v34, v35, v36, v37, v41, v43, v45, v46);
      if (v38)
      {
        OUTLINED_FUNCTION_9_14();
      }

      OUTLINED_FUNCTION_39_6();
      v11 = v46;
      ++v1;
    }

    else
    {

      ++v1;
    }
  }

  return v11;
}

void *sub_1B1B6EA54(uint64_t a1, uint64_t a2, uint64_t *a3, void **a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7627A8, &unk_1B1C396D0);
  inited = swift_initStackObject();
  v9 = OUTLINED_FUNCTION_14_2(inited, xmmword_1B1C364D0);
  v10 = OUTLINED_FUNCTION_32_8(v9, MEMORY[0x1E69E6370]);
  v11 = MEMORY[0x1E69E6158];
  v10[10] = a1;
  v10[11] = a2;
  v10[13] = v11;
  v10[14] = 7;
  v12 = *a3;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = *a4;
  inited[9].n128_u64[0] = sub_1B1A8E474(0, &qword_1ED9A9838, off_1E7AF1A88);
  inited[7].n128_u64[1] = v13;
  type metadata accessor for TTSAssetProperty(0);
  OUTLINED_FUNCTION_0_26();
  sub_1B1A97A5C(v14, v15);
  v16 = v13;
  OUTLINED_FUNCTION_25_4();
  v17 = OUTLINED_FUNCTION_26_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762440, &qword_1B1C383E0);
  OUTLINED_FUNCTION_66();
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1B1C37D90;
  if (qword_1ED9A9960 != -1)
  {
    OUTLINED_FUNCTION_12_4();
  }

  v19 = qword_1ED9A9968;
  *(v18 + 32) = qword_1ED9A9968;
  v20 = v19;
  v21 = OUTLINED_FUNCTION_72();
  static TTSAsset.bestAsset(ofTypes:matching:)(v21, v22);
  OUTLINED_FUNCTION_5_4();

  if (v17)
  {
    v23 = *v17;
    v24 = *MEMORY[0x1E69E7D40];
    OUTLINED_FUNCTION_21_6();
    v26 = (*(v25 + 280))();
    if (v26)
    {
      v27 = v26;
      sub_1B1ABC174();
      v28 = [v27 bundlePath];
      sub_1B1C2CB58();
      OUTLINED_FUNCTION_52_3();

      type metadata accessor for ResourceAsset();
      OUTLINED_FUNCTION_66();
      v29 = swift_allocObject();
      return OUTLINED_FUNCTION_47_4(v29);
    }
  }

  return 0;
}

uint64_t sub_1B1B6EC88()
{
  result = sub_1B1B6ECA8();
  qword_1EB772E90 = result;
  return result;
}

uint64_t sub_1B1B6ECA8()
{
  v0 = sub_1B1C2CAB8();
  type metadata accessor for VoiceAsset();
  v1 = sub_1B1C2CAB8();
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 allCompactResources];

  sub_1B1A8E474(0, &qword_1EB762938, off_1E7AF1A50);
  v4 = sub_1B1C2CE78();

  v5 = sub_1B1A9547C(v4);
  if (!v5)
  {
LABEL_21:

    return v1;
  }

  v6 = v5;
  if (v5 < 1)
  {
    goto LABEL_24;
  }

  v7 = 0;
  v50 = v4 & 0xC000000000000001;
  v47 = v4;
  v48 = v0;
  v46 = v5;
  while (1)
  {
    if (v50)
    {
      v8 = MEMORY[0x1B2738A20](v7, v4);
    }

    else
    {
      v8 = *(v4 + 8 * v7 + 32);
    }

    v9 = v8;
    v10 = [v8 language];
    sub_1B1C2CB58();

    MEMORY[0x1B27381B0](95, 0xE100000000000000);
    v11 = [v9 name];
    v12 = sub_1B1C2CB58();
    v14 = v13;

    MEMORY[0x1B27381B0](v12, v14);

    if (!*(v0 + 16))
    {

LABEL_16:

      goto LABEL_20;
    }

    v15 = sub_1B1A8EB10();
    v17 = v16;

    if ((v17 & 1) == 0)
    {
      goto LABEL_16;
    }

    v18 = (*(v0 + 56) + 16 * v15);
    v19 = *v18;
    v20 = v18[1];
    swift_bridgeObjectRetain_n();
    v21 = [v9 name];
    sub_1B1C2CB58();

    v22 = objc_allocWithZone(type metadata accessor for SynthesisVoice());
    v23 = SynthesisVoice.init(language:name:)();
    v24 = OBJC_IVAR___SiriTTSSynthesisVoice_footprint[0];
    swift_beginAccess();
    *&v23[v24] = 1;
    v25 = OBJC_IVAR___SiriTTSSynthesisVoice_type;
    swift_beginAccess();
    *&v23[v25] = 1;
    v26 = v23;
    v27 = [v9 path];
    v28 = sub_1B1C2CB58();
    v30 = v29;

    v31 = swift_allocObject();
    v49 = v26;
    v31[2] = v26;
    v31[3] = v28;
    v31[4] = v30;
    swift_isUniquelyReferenced_nonNull_native();
    v32 = v19;
    v33 = sub_1B1A8EB10();
    if (__OFADD__(v1[2], (v34 & 1) == 0))
    {
      break;
    }

    v35 = v33;
    v36 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762940, &unk_1B1C39C10);
    if (sub_1B1C2D628())
    {
      v37 = sub_1B1A8EB10();
      if ((v36 & 1) != (v38 & 1))
      {
        goto LABEL_25;
      }

      v35 = v37;
    }

    if (v36)
    {
      v39 = v1[7];
      v40 = *(v39 + 8 * v35);
      *(v39 + 8 * v35) = v31;
    }

    else
    {
      v1[(v35 >> 6) + 8] |= 1 << v35;
      v41 = (v1[6] + 16 * v35);
      *v41 = v32;
      v41[1] = v20;
      *(v1[7] + 8 * v35) = v31;
      v42 = v1[2];
      v43 = __OFADD__(v42, 1);
      v44 = v42 + 1;
      if (v43)
      {
        goto LABEL_23;
      }

      v1[2] = v44;
    }

    v4 = v47;
    v0 = v48;
    v6 = v46;
LABEL_20:
    if (v6 == ++v7)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_1B1C2D818();
  __break(1u);
  return result;
}

void sub_1B1B6F118()
{
  OUTLINED_FUNCTION_23_1();
  v2 = v0 == 0x4F4E2D626ELL && v1 == 0xE500000000000000;
  if (v2 || (v3 = v1, v4 = v0, (sub_1B1C2D7A8() & 1) != 0))
  {
    if (qword_1ED9A9288 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v5 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v5, qword_1ED9A9120);
    v6 = sub_1B1C2C888();
    v7 = sub_1B1C2D098();
    if (OUTLINED_FUNCTION_10_2(v7))
    {
      OUTLINED_FUNCTION_45_0();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_25_7(&dword_1B1A8A000, v8, v9, "Falling back to no-NO voice since nb-NO is not available");
      OUTLINED_FUNCTION_14();
      MEMORY[0x1B2739FD0]();
    }

LABEL_11:
    OUTLINED_FUNCTION_72();
    if ((sub_1B1C2D7A8() & 1) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_18;
  }

  if (v4 != 0x2D752D4E562D6976 || v3 != 0xEF74636E762D6473)
  {
    goto LABEL_11;
  }

LABEL_18:

  if (qword_1ED9A9288 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v11 = sub_1B1C2C8A8();
  __swift_project_value_buffer(v11, qword_1ED9A9120);
  v12 = sub_1B1C2C888();
  v13 = sub_1B1C2D098();
  if (OUTLINED_FUNCTION_10_2(v13))
  {
    OUTLINED_FUNCTION_45_0();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_25_7(&dword_1B1A8A000, v14, v15, "Falling back to vi-VN buildInVoiceAsset for vi-VN-u-sd-vnct");
    OUTLINED_FUNCTION_14();
    MEMORY[0x1B2739FD0]();
  }

LABEL_23:
  if (qword_1EB761640 != -1)
  {
    swift_once();
  }

  v16 = OUTLINED_FUNCTION_72();
  if (sub_1B1B302B4(v16))
  {
  }

  else
  {
    if (qword_1ED9A9288 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v17 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v17, qword_1ED9A9120);

    v18 = sub_1B1C2C888();
    v19 = sub_1B1C2D0C8();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v20 = 136446210;
      v21 = OUTLINED_FUNCTION_72();
      v24 = sub_1B1A930E4(v21, v22, v23);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_1B1A8A000, v18, v19, "Unfound built-in voice for language %{public}s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      OUTLINED_FUNCTION_14();
      MEMORY[0x1B2739FD0]();
      OUTLINED_FUNCTION_14();
      MEMORY[0x1B2739FD0]();
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_22_4();
}

uint64_t sub_1B1B6F454()
{
  v1 = OUTLINED_FUNCTION_46_5();
  type metadata accessor for TTSAssetProperty(v1);
  OUTLINED_FUNCTION_0_26();
  sub_1B1A97A5C(v2, v3);
  v86 = sub_1B1C2CAB8();
  v11 = OUTLINED_FUNCTION_36_8(v86, v4, v5, v6, v7, v8, v9, v10, v63, v66, v69, v72, v75, v78, v81, 1);
  sub_1B1AB51D0(v11, 5);
  if (v0)
  {
    v12 = &v0[OBJC_IVAR___SiriTTSSynthesisVoice_language];
    swift_beginAccess();
    v13 = *(v12 + 1);
    v14 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v14 = *v12 & 0xFFFFFFFFFFFFLL;
    }

    if (v14)
    {
      v84 = *v12;
      v85 = *(v12 + 1);

      v23 = OUTLINED_FUNCTION_36_8(v15, v16, v17, v18, v19, v20, v21, v22, v64, v67, v70, v73, v76, v79, v82, v84);
      sub_1B1AB51D0(v23, 1);
    }

    v24 = OBJC_IVAR___SiriTTSSynthesisVoice_gender;
    swift_beginAccess();
    v25 = *&v0[v24];
    if (!v25)
    {
      v26 = v0;
      sub_1B1B6F6E8(v26);
      v25 = v27;
    }

    if (v25 == 2)
    {
      type metadata accessor for TTSAssetVoiceGender(0);
      v36 = 2;
    }

    else
    {
      if (v25 != 1)
      {
        goto LABEL_13;
      }

      type metadata accessor for TTSAssetVoiceGender(0);
      v36 = 1;
    }

    v37 = OUTLINED_FUNCTION_36_8(v28, v29, v30, v31, v32, v33, v34, v35, v64, v67, v70, v73, v76, v79, v82, v36);
    sub_1B1AB51D0(v37, 2);
  }

LABEL_13:
  if (qword_1ED9A97B8 != -1)
  {
    OUTLINED_FUNCTION_8_0();
  }

  v38 = qword_1ED9A97C0;
  sub_1B1A8E474(0, &qword_1ED9A9938, off_1E7AF1A90);
  v39 = v38;
  v47 = OUTLINED_FUNCTION_36_8(v39, v40, v41, v42, v43, v44, v45, v46, v64, v67, v70, v73, v76, v79, v82, v38);
  sub_1B1AB51D0(v47, 3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762440, &qword_1B1C383E0);
  OUTLINED_FUNCTION_38_1();
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_1B1C38B50;
  if (qword_1ED9A9840 != -1)
  {
    OUTLINED_FUNCTION_19_8();
  }

  v49 = qword_1ED9A9728;
  *(v48 + 32) = qword_1ED9A9728;
  v50 = qword_1ED9A9630;
  v51 = v49;
  if (v50 != -1)
  {
    OUTLINED_FUNCTION_18_7();
  }

  v52 = qword_1ED9A9638;
  *(v48 + 40) = qword_1ED9A9638;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762930, &qword_1B1C39C08);
  v53 = v52;
  v61 = OUTLINED_FUNCTION_36_8(v53, v54, v55, v56, v57, v58, v59, v60, v65, v68, v71, v74, v77, v80, v83, v48);
  sub_1B1AB51D0(v61, 7);
  return v86;
}

void sub_1B1B6F6E8(uint64_t a1)
{
  v2 = [type metadata accessor for TTSAsset() assistantVoiceMaps];
  v3 = *&v2[OBJC_IVAR___TTSAssistantVoiceMaps_voicesForLanguageMap];
  v4 = (a1 + OBJC_IVAR___SiriTTSSynthesisVoice_language);
  swift_beginAccess();
  v6 = *v4;
  v5 = v4[1];

  v7 = sub_1B1AE795C(v6, v5, v3);

  if (v7)
  {
    v8 = sub_1B1A9547C(v7);
    v9 = (a1 + OBJC_IVAR___SiriTTSSynthesisVoice_name);
    swift_beginAccess();
    for (i = 0; ; ++i)
    {
      if (v8 == i)
      {

        goto LABEL_18;
      }

      if ((v7 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1B2738A20](i, v7);
      }

      else
      {
        if (i >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v11 = *(v7 + 8 * i + 32);
      }

      v12 = v11;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v13 = v9[1];
      if (v13)
      {
        v14 = &v11[OBJC_IVAR___TTSAssistantAsset_name];
        v15 = *&v11[OBJC_IVAR___TTSAssistantAsset_name];
        v16 = *v14 == *v9 && v13 == *(v14 + 1);
        if (v16 || (sub_1B1C2D7A8() & 1) != 0)
        {

          v17 = *&v12[OBJC_IVAR___TTSAssistantAsset_assistantGender];

          sub_1B1B6B718(v17);
          return;
        }
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
LABEL_18:
  }
}

void *sub_1B1B6F8B4(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR___SiriTTSSynthesisVoice_type;
  swift_beginAccess();
  if ((*(a1 + v4) | 2) == 2)
  {
    type metadata accessor for TTSAsset();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762440, &qword_1B1C383E0);
    OUTLINED_FUNCTION_66();
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1B1C37D90;
    if (qword_1ED9A98D0 != -1)
    {
      swift_once();
    }

    v6 = qword_1ED9A98D8;
    *(v5 + 32) = qword_1ED9A98D8;
    v7 = v6;
    sub_1B1B6F454();
    v8 = OUTLINED_FUNCTION_33_2();
    v10 = static TTSAsset.bestAsset(ofTypes:matching:)(v8, v9);

    if (v10)
    {
      v11 = *v10;
      v12 = *MEMORY[0x1E69E7D40];
      OUTLINED_FUNCTION_21_6();
      v14 = (*(v13 + 280))();
      if (v14)
      {
        v15 = v14;
        sub_1B1ABFFF8();
        v16 = [v15 bundlePath];
        sub_1B1C2CB58();
        OUTLINED_FUNCTION_52_3();

        type metadata accessor for VoiceAsset();
        OUTLINED_FUNCTION_66();
        v17 = swift_allocObject();
        return OUTLINED_FUNCTION_47_4(v17);
      }
    }
  }

  return 0;
}

uint64_t sub_1B1B6FA80(uint64_t a1)
{
  if (a1)
  {
    v1 = sub_1B1ABAF00(1u);
  }

  else
  {
    type metadata accessor for TTSAssetProperty(0);
    OUTLINED_FUNCTION_0_26();
    sub_1B1A97A5C(v2, v3);
    v1 = sub_1B1C2CAB8();
  }

  v15 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762520, &qword_1B1C39820);
  OUTLINED_FUNCTION_40_5(v4, &unk_1F28BA508, v12, v13[0], v13[1], v13[2], v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762440, &qword_1B1C383E0);
  OUTLINED_FUNCTION_38_1();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B1C38B50;
  if (qword_1ED9A9630 != -1)
  {
    OUTLINED_FUNCTION_18_7();
  }

  v6 = qword_1ED9A9638;
  *(v5 + 32) = qword_1ED9A9638;
  v7 = qword_1ED9A4EF8;
  v8 = v6;
  if (v7 != -1)
  {
    swift_once();
  }

  v9 = qword_1ED9A4F00;
  *(v5 + 40) = qword_1ED9A4F00;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762930, &qword_1B1C39C08);
  v13[0] = v5;
  v10 = v9;
  sub_1B1AB51D0(v13, 7);
  return v15;
}

void sub_1B1B6FBF4()
{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_26_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762440, &qword_1B1C383E0);
  OUTLINED_FUNCTION_66();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1B1C37D90;
  if (qword_1ED9A9978 != -1)
  {
    OUTLINED_FUNCTION_6();
  }

  v2 = qword_1ED9A9980;
  *(v1 + 32) = qword_1ED9A9980;
  v3 = v2;
  v4 = sub_1B1B6FA80(v0);
  OUTLINED_FUNCTION_27_9(v4);
  OUTLINED_FUNCTION_37_6();

  v5 = sub_1B1A9547C(v0);
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = v5;
  v12 = MEMORY[0x1E69E7CC0];
  sub_1B1C2D5B8();
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    do
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        v8 = OUTLINED_FUNCTION_33_2();
        v9 = MEMORY[0x1B2738A20](v8);
      }

      else
      {
        v9 = *(v0 + 8 * v7 + 32);
      }

      v10 = v9;
      ++v7;
      sub_1B1ABFFF8();

      sub_1B1C2D588();
      v11 = *(v12 + 16);
      OUTLINED_FUNCTION_38_5();
      sub_1B1C2D5C8();
      OUTLINED_FUNCTION_38_5();
      sub_1B1C2D5D8();
      sub_1B1C2D598();
    }

    while (v6 != v7);
LABEL_10:

    OUTLINED_FUNCTION_22_4();
    return;
  }

  __break(1u);
}

void *sub_1B1B6FD70(uint64_t a1, void (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_46_5();
  type metadata accessor for TTSAsset();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762440, &qword_1B1C383E0);
  OUTLINED_FUNCTION_66();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B1C37D90;
  if (qword_1ED9A9978 != -1)
  {
    OUTLINED_FUNCTION_6();
  }

  v5 = qword_1ED9A9980;
  *(v4 + 32) = qword_1ED9A9980;
  v6 = v5;
  a2(v2);
  v7 = OUTLINED_FUNCTION_33_2();
  v9 = static TTSAsset.bestAsset(ofTypes:matching:)(v7, v8);

  if (v9)
  {
    v10 = *v9;
    v11 = *MEMORY[0x1E69E7D40];
    OUTLINED_FUNCTION_21_6();
    v13 = (*(v12 + 280))();
    if (v13)
    {
      v14 = v13;
      sub_1B1ABFFF8();
      v15 = [v14 bundlePath];
      sub_1B1C2CB58();
      OUTLINED_FUNCTION_52_3();

      type metadata accessor for VoiceAsset();
      OUTLINED_FUNCTION_66();
      v16 = swift_allocObject();
      return OUTLINED_FUNCTION_47_4(v16);
    }
  }

  return 0;
}

uint64_t sub_1B1B6FEC8()
{
  type metadata accessor for ResourceAsset();
  result = sub_1B1C2CAB8();
  qword_1EB7610E0 = result;
  return result;
}

void *sub_1B1B6FF08(uint64_t a1, uint64_t a2)
{
  if (qword_1EB7610D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = OUTLINED_FUNCTION_72();
  v5 = sub_1B1B302B4(v4);
  if (v5)
  {
    v6 = v5;
    swift_endAccess();
    v7 = [objc_opt_self() defaultManager];
    v8 = v6[3];
    v9 = v6[4];

    v10 = sub_1B1C2CB28();

    LOBYTE(v9) = [v7 fileExistsAtPath_];

    if (v9)
    {
      return v6;
    }

    swift_beginAccess();
    OUTLINED_FUNCTION_72();
    sub_1B1B70744();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7627A8, &unk_1B1C396D0);
  inited = swift_initStackObject();
  v12 = OUTLINED_FUNCTION_14_2(inited, xmmword_1B1C364D0);
  v13 = OUTLINED_FUNCTION_32_8(v12, MEMORY[0x1E69E6370]);
  v14 = MEMORY[0x1E69E6158];
  v13[10] = a1;
  v13[11] = a2;
  v13[13] = v14;
  v13[14] = 7;
  v15 = qword_1ED9A9840;

  if (v15 != -1)
  {
    OUTLINED_FUNCTION_19_8();
  }

  v16 = qword_1ED9A9728;
  inited[9].n128_u64[0] = sub_1B1A8E474(0, &qword_1ED9A9838, off_1E7AF1A88);
  inited[7].n128_u64[1] = v16;
  type metadata accessor for TTSAssetProperty(0);
  OUTLINED_FUNCTION_0_26();
  sub_1B1A97A5C(v17, v18);
  v19 = v16;
  v20 = sub_1B1C2CAB8();
  type metadata accessor for TTSAsset();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762440, &qword_1B1C383E0);
  OUTLINED_FUNCTION_66();
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1B1C37D90;
  if (qword_1ED9A9960 != -1)
  {
    OUTLINED_FUNCTION_12_4();
  }

  v22 = qword_1ED9A9968;
  *(v21 + 32) = qword_1ED9A9968;
  v23 = v22;
  v24 = static TTSAsset.bestAsset(ofTypes:matching:)(v21, v20);

  if (!v24)
  {
    return 0;
  }

  v26 = MEMORY[0x1E69E7D40];
  v27 = (*((*MEMORY[0x1E69E7D40] & *v24) + 0x118))(v25);
  if (v27)
  {
    v28 = v27;
    v29 = objc_allocWithZone(type metadata accessor for SynthesisResource());

    v30 = OUTLINED_FUNCTION_72();
    v32 = SynthesisResource.init(language:)(v30, v31);
    v33 = (*((*v26 & *v24) + 0xA8))();
    v34 = OBJC_IVAR___SiriTTSSynthesisResource_version;
    v35 = v33 / 100000;
    OUTLINED_FUNCTION_66_0();
    *&v32[v34] = v35;
    v36 = v32;
    v37 = [v28 bundlePath];
    v38 = sub_1B1C2CB58();
    v40 = v39;

    type metadata accessor for ResourceAsset();
    OUTLINED_FUNCTION_66();
    v6 = swift_allocObject();
    v6[2] = v36;
    v6[3] = v38;
    v6[4] = v40;
    swift_beginAccess();

    swift_isUniquelyReferenced_nonNull_native();
    v42 = qword_1EB7610E0;
    OUTLINED_FUNCTION_38_5();
    sub_1B1B374BC();
    qword_1EB7610E0 = v42;
    swift_endAccess();

    v24 = v28;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_1B1B7037C(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16) && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7622F8, &qword_1B1C37910), v2 = sub_1B1C2D4F8(), v3 = v2, (v26 = *(v1 + 16)) != 0))
  {
    v4 = 0;
    v5 = v2 + 56;
    v24 = v1;
    v25 = v1 + 32;
    while (v4 < *(v1 + 16))
    {
      v6 = *(v25 + 8 * v4++);
      v7 = *(v3 + 40);
      sub_1B1C2CB58();
      sub_1B1C2D888();
      v27 = v6;
      sub_1B1C2CC48();
      v8 = sub_1B1C2D8E8();

      v9 = ~(-1 << *(v3 + 32));
      while (1)
      {
        v10 = v8 & v9;
        v11 = (v8 & v9) >> 6;
        v12 = *(v5 + 8 * v11);
        v13 = 1 << (v8 & v9);
        if ((v13 & v12) == 0)
        {
          break;
        }

        v14 = *(*(v3 + 48) + 8 * v10);
        v15 = sub_1B1C2CB58();
        v17 = v16;
        if (v15 == sub_1B1C2CB58() && v17 == v18)
        {

          goto LABEL_17;
        }

        v20 = sub_1B1C2D7A8();

        if (v20)
        {

          goto LABEL_17;
        }

        v8 = v10 + 1;
      }

      *(v5 + 8 * v11) = v13 | v12;
      *(*(v3 + 48) + 8 * v10) = v27;
      v21 = *(v3 + 16);
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_20;
      }

      *(v3 + 16) = v23;
LABEL_17:
      v1 = v24;
      if (v4 == v26)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:
  }
}

double sub_1B1B70580@<D0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_1B1A8EB10();
  if (v6)
  {
    v7 = v5;
    v8 = *v2;
    swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    v9 = *(*v2 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB762480, &unk_1B1C37E50);
    OUTLINED_FUNCTION_43_6();
    v10 = sub_1B1C2D628();
    OUTLINED_FUNCTION_49_4(v10, v11, v12, v13, v14, v15, v16, v17, v19, v20);
    sub_1B1A9EEE0((*(v4 + 56) + 32 * v7), a1);
    sub_1B1C2D648();
    *v2 = v4;
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

uint64_t sub_1B1B70654()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_1B1A8EB10();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  v6 = *v1;
  swift_isUniquelyReferenced_nonNull_native();
  v13 = *v1;
  v7 = *(*v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7625C8, &qword_1B1C39C20);
  OUTLINED_FUNCTION_43_6();
  sub_1B1C2D628();
  v8 = *(*(v13 + 48) + 16 * v5 + 8);

  v9 = (*(v13 + 56) + 16 * v5);
  v10 = *v9;
  v11 = v9[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762310, &unk_1B1C379A0);
  sub_1B1C2D648();
  *v1 = v13;
  return v10;
}

uint64_t sub_1B1B70744()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_1B1A8EB10();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  v6 = *v1;
  swift_isUniquelyReferenced_nonNull_native();
  v11 = *v1;
  v7 = *(*v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762578, &qword_1B1C38130);
  sub_1B1C2D628();
  v8 = *(*(v11 + 48) + 16 * v5 + 8);

  v9 = *(*(v11 + 56) + 8 * v5);
  type metadata accessor for ResourceAsset();
  sub_1B1C2D648();
  *v1 = v11;
  return v9;
}

uint64_t sub_1B1B7081C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_1B1A8EB10();
  if (v6)
  {
    v7 = v5;
    v8 = *v2;
    swift_isUniquelyReferenced_nonNull_native();
    v25 = *v2;
    v9 = *(*v2 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762570, &qword_1B1C39C00);
    OUTLINED_FUNCTION_43_6();
    v10 = sub_1B1C2D628();
    OUTLINED_FUNCTION_49_4(v10, v11, v12, v13, v14, v15, v16, v17, v24, v25);
    v18 = *(v4 + 56);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7624A8, &unk_1B1C38120);
    sub_1B1B37D08(v18 + *(*(v19 - 8) + 72) * v7, a1);
    sub_1B1C2D648();
    *v2 = v4;
    v20 = a1;
    v21 = 0;
    v22 = v19;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7624A8, &unk_1B1C38120);
    v20 = OUTLINED_FUNCTION_34_7();
  }

  return __swift_storeEnumTagSinglePayload(v20, v21, 1, v22);
}

uint64_t getEnumTagSinglePayload for DownloadOption(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 65281 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65281 < 0xFF0000)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65282;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for DownloadOption(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1B1B70F7C()
{
  swift_beginAccess();
  [*(*(v0 + 48) + 40) lock];
  v1 = *(v0 + 48);
  v2 = *(v1 + 16);
  [*(v1 + 40) unlock];
  return v2;
}

void *sub_1B1B70FE4()
{
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  [*(*(v0 + 32) + 40) lock];
  v1 = *(v0 + 32);
  v2 = *(v1 + 24);
  v3 = *(v1 + 40);
  v4 = v2;
  [v3 unlock];
  return v2;
}

void *sub_1B1B71054()
{
  swift_beginAccess();
  [*(*(v0 + 48) + 40) lock];
  v1 = *(v0 + 48);
  v2 = *(v1 + 24);
  v3 = *(v1 + 40);
  v4 = v2;
  [v3 unlock];
  return v2;
}

uint64_t sub_1B1B710C8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1B1B71128(v4);
}

uint64_t sub_1B1B710F4()
{
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v1 = *(v0 + 48);
}

uint64_t sub_1B1B71128(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 48);
  *(v1 + 48) = a1;
}

double sub_1B1B711C0()
{
  v1 = v0;
  v2 = v0[7];
  sub_1B1B53CC0();
  if ((v3 & 0x100000000) != 0)
  {
    v11 = v1[12];
    v12 = v1[13];
    __swift_project_boxed_opaque_existential_1(v1 + 9, v11);
    *&v13 = COERCE_DOUBLE((*(v12 + 8))(v11, v12));
    if (v14)
    {
      if (qword_1ED9A9288 != -1)
      {
        OUTLINED_FUNCTION_0_0();
        swift_once();
      }

      v15 = sub_1B1C2C8A8();
      __swift_project_value_buffer(v15, qword_1ED9A9120);
      v16 = sub_1B1C2C888();
      v17 = sub_1B1C2D0D8();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_1B1A8A000, v16, v17, "Default Osprey timeout: 1.0", v18, 2u);
        OUTLINED_FUNCTION_14();
        MEMORY[0x1B2739FD0]();
      }

      return 1.0;
    }

    else
    {
      v19 = v13;
      v10 = *&v13;
      if (qword_1ED9A9288 != -1)
      {
        OUTLINED_FUNCTION_0_0();
        swift_once();
      }

      v20 = sub_1B1C2C8A8();
      __swift_project_value_buffer(v20, qword_1ED9A9120);
      v21 = sub_1B1C2C888();
      v22 = sub_1B1C2D0D8();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 134217984;
        *(v23 + 4) = v19;
        _os_log_impl(&dword_1B1A8A000, v21, v22, "Osprey config specifies timeout: %f", v23, 0xCu);
        OUTLINED_FUNCTION_14();
        MEMORY[0x1B2739FD0]();
      }
    }
  }

  else
  {
    v4 = *&v3;
    if (qword_1ED9A9288 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v5 = v4;
    v6 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v6, qword_1ED9A9120);
    v7 = sub_1B1C2C888();
    v8 = sub_1B1C2D0D8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 134217984;
      v10 = v5;
      *(v9 + 4) = v10;
      _os_log_impl(&dword_1B1A8A000, v7, v8, "Internal setting specifies timeout: %f", v9, 0xCu);
      OUTLINED_FUNCTION_14();
      MEMORY[0x1B2739FD0]();
    }

    else
    {

      return v5;
    }
  }

  return v10;
}

uint64_t OspreyTTSAction.__allocating_init(pool:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return OspreyTTSAction.init(pool:)();
}

uint64_t OspreyTTSAction.init(pool:)()
{
  v1 = v0;
  v0[5] = MEMORY[0x1E69E7CC0];
  type metadata accessor for AsynchronousContext();
  swift_allocObject();
  v0[6] = sub_1B1ADA774();
  v2 = OBJC_IVAR____TtC14SiriTTSService15OspreyTTSAction_streamingStartedDate;
  v3 = sub_1B1C2C428();
  __swift_storeEnumTagSinglePayload(v1 + v2, 1, 1, v3);
  v1[4] = sub_1B1AA1E5C();
  sub_1B1B19360();
  v1[8] = v4;
  sub_1B1AA1C5C();
  v1[7] = v5;
  sub_1B1B194FC();
  sub_1B1B197C4(&v12, &v13);
  sub_1B1B197C4(&v13, (v1 + 9));
  sub_1B1ADB340();
  v1[15] = v6;
  v7 = type metadata accessor for Timeout();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v1[14] = sub_1B1BC78CC();
  v10 = _s14SiriTTSService17PassThroughActionCACycfc_0();

  return v10;
}

uint64_t sub_1B1B716BC()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  __swift_destroy_boxed_opaque_existential_0((v0 + 72));
  v5 = *(v0 + 112);

  v6 = *(v0 + 120);

  return sub_1B1A90C20(v0 + OBJC_IVAR____TtC14SiriTTSService15OspreyTTSAction_streamingStartedDate, &qword_1EB761D88, &qword_1B1C36488);
}

uint64_t OspreyTTSAction.deinit()
{
  sub_1B1B323C8();
  v0 = Buffer.deinit();

  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  __swift_destroy_boxed_opaque_existential_0((v0 + 72));
  v5 = *(v0 + 112);

  v6 = *(v0 + 120);

  sub_1B1A90C20(v0 + OBJC_IVAR____TtC14SiriTTSService15OspreyTTSAction_streamingStartedDate, &qword_1EB761D88, &qword_1B1C36488);
  return v0;
}

uint64_t OspreyTTSAction.__deallocating_deinit()
{
  v0 = OspreyTTSAction.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void sub_1B1B71810()
{
  v2 = *v0;
  v128 = v0;
  v3 = v2;
  v4 = sub_1B1C2C428();
  v5 = OUTLINED_FUNCTION_7(v4);
  v125 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_16();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762088, &unk_1B1C371C0);
  v13 = OUTLINED_FUNCTION_45(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v112 - v16;
  v18 = type metadata accessor for SynthesisCacheFile(0);
  v19 = OUTLINED_FUNCTION_45(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_16();
  v24 = v23 - v22;
  sub_1B1AA61C0(&v134);
  if (!v135)
  {
    sub_1B1A90C20(&v134, &qword_1EB761DE0, &qword_1B1C352C0);
    goto LABEL_6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762318, &qword_1B1C38FA0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    sub_1B1A9EC9C();
    swift_allocError();
    *v31 = 1;
    *(v31 + 8) = 0xD000000000000031;
    *(v31 + 16) = 0x80000001B1C4FC10;
    swift_willThrow();
    return;
  }

  v117 = v4;
  v118 = v3;
  v25 = v18;
  v122 = v24;
  v123 = v1;
  v26 = v133;
  ObjectType = swift_getObjectType();
  v28 = SynthesizingRequestProtocol.voice.getter(ObjectType);
  v29 = &v28[OBJC_IVAR___SiriTTSSynthesisVoice_name];
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v30 = *(v29 + 1);

  if (v30)
  {
  }

  else
  {
    v32 = SynthesizingRequestProtocol.voice.getter(ObjectType);
    v33 = OBJC_IVAR___SiriTTSSynthesisVoice_gender;
    OUTLINED_FUNCTION_11_0();
    swift_beginAccess();
    v34 = *&v32[v33];

    if (!v34)
    {
      v131 = 0;
      v132 = 0xE000000000000000;
      sub_1B1C2D538();

      v131 = 0xD00000000000002ELL;
      v132 = 0x80000001B1C4FC50;
      v130 = (*((*MEMORY[0x1E69E7D40] & *v26) + 0x90))(v91);
      v92 = sub_1B1C2D778();
      MEMORY[0x1B27381B0](v92);

      MEMORY[0x1B27381B0](32032, 0xE200000000000000);
      v93 = v131;
      v94 = v132;
      sub_1B1A9EC9C();
      swift_allocError();
      *v95 = 6;
      *(v95 + 8) = v93;
      *(v95 + 16) = v94;
      swift_willThrow();

      return;
    }
  }

  v127 = v26;
  v36 = SynthesizingRequestProtocol.text.getter() == 0xD000000000000010 && 0x80000001B1C4A490 == v35;
  v124 = v25;
  if (v36)
  {

    v38 = 0;
  }

  else
  {
    v37 = sub_1B1C2D7A8();

    v38 = 0;
    if ((v37 & 1) == 0)
    {
      v39 = v128[7];
      sub_1B1AC5D40();
      if (v40 == 2)
      {
        v38 = 1;
      }

      else
      {
        v38 = v40 ^ 1;
      }
    }
  }

  v116 = v38;
  v126 = type metadata accessor for DataContainer();
  OUTLINED_FUNCTION_17();
  v41 = swift_allocObject();
  *(v41 + 16) = sub_1B1C2CAB8();
  v42 = v127;
  v43 = v127;
  sub_1B1ACFA84(v42);
  v44 = [objc_allocWithZone(type metadata accessor for AudioData()) init];
  v45 = &v44[OBJC_IVAR___SiriTTSAudioData_asbd];
  swift_beginAccess();
  *v45 = 0x40E7700000000000;
  *(v45 + 8) = xmmword_1B1C387F0;
  *(v45 + 24) = xmmword_1B1C38800;
  v119 = v44;
  sub_1B1ACC2E4(v44);
  v120 = v41;
  v46 = v128;
  sub_1B1AA81A8();
  v47 = v46[15];
  if (!v47)
  {
    v48 = v43;

    goto LABEL_20;
  }

  v48 = v43;
  v49 = v43;

  v50 = sub_1B1B75704(v49, ObjectType);
  v52 = v51;

  sub_1B1AEA43C();
  if (__swift_getEnumTagSinglePayload(v17, 1, v124) == 1)
  {

    sub_1B1A90C20(v17, &qword_1EB762088, &unk_1B1C371C0);
LABEL_20:
    v53 = v124;
    if (qword_1ED9A4D38 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_17();
    swift_allocObject();
    v54 = v128;
    swift_weakInit();

    sub_1B1B340E4();

    sub_1B1B33170();
    v55 = v48;
    v121 = sub_1B1B75704(v55, ObjectType);
    v122 = v56;
    v115 = v55;

    v127 = swift_allocBox();
    __swift_storeEnumTagSinglePayload(v57, 1, 1, v53);
    v58 = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
    v59 = v54[4];
    v60 = v117;
    if (v59)
    {
      if (qword_1ED9A4DF8 != -1)
      {
        OUTLINED_FUNCTION_32();
      }

      sub_1B1AEAD14();
      if (qword_1ED9A4DE0 != -1)
      {
        OUTLINED_FUNCTION_4_20();
      }

      [v59 postNotificationName:qword_1ED9A4DE8 object:0];
    }

    v61 = v128;
    v62 = v128[14];
    sub_1B1B711C0();
    sub_1B1C2C3A8();
    v63 = OBJC_IVAR____TtC14SiriTTSService7Timeout_timeoutDate;
    v114 = v62;
    swift_beginAccess();
    (*(v125 + 40))(v62 + v63, v11, v60);
    swift_endAccess();
    OUTLINED_FUNCTION_17();
    v64 = swift_allocObject();
    *(v64 + 16) = 0;
    v65 = v64;
    OUTLINED_FUNCTION_17();
    v126 = swift_allocObject();
    *(v126 + 16) = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_17();
    v66 = swift_allocObject();
    *(v66 + 16) = 0;
    v124 = swift_allocObject();
    *(v124 + 16) = 0;
    v117 = v61[8];
    v67 = swift_allocObject();
    *(v67 + 16) = v58;
    *(v67 + 24) = v61;
    *(v67 + 32) = v65;
    v125 = v65;
    *(v67 + 40) = v116 & 1;
    v68 = v115;
    v69 = v127;
    *(v67 + 48) = v115;
    *(v67 + 56) = v69;
    v70 = v122;
    *(v67 + 64) = v121;
    *(v67 + 72) = v70;
    *(v67 + 80) = v118;
    v71 = swift_allocObject();
    v71[2] = v58;
    v71[3] = v61;
    v71[4] = v66;
    v71[5] = v68;
    v72 = v126;
    v71[6] = v65;
    v71[7] = v72;
    v71[8] = v69;
    v73 = swift_allocObject();
    v73[2] = v58;
    v73[3] = v61;
    v73[4] = v72;
    v73[5] = v66;
    v113 = v66;
    v73[6] = v124;
    v74 = v58;
    swift_retain_n();
    v75 = v68;
    v76 = v74;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v77 = v75;
    v78 = v76;
    v79 = v122;

    sub_1B1B29698(v77, sub_1B1B75B40, v67, sub_1B1B75B80, v71, sub_1B1B75BB4, v73);

    v80 = swift_allocObject();
    v80[2] = v78;
    v80[3] = v61;
    v81 = v113;
    v80[4] = v77;
    v80[5] = v81;
    v82 = v124;
    v80[6] = v127;
    v80[7] = v82;
    v80[8] = v121;
    v80[9] = v79;
    v83 = v77;
    v84 = v78;

    sub_1B1BC7124(sub_1B1B75BC4, v80);

    return;
  }

  v118 = v50;
  v121 = v52;
  v125 = v47;
  v85 = v122;
  sub_1B1AEACB0(v17, v122);
  if (qword_1ED9A9288 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v86 = sub_1B1C2C8A8();
  __swift_project_value_buffer(v86, qword_1ED9A9120);
  v87 = v49;
  v88 = sub_1B1C2C888();
  v89 = sub_1B1C2D0D8();
  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    *v90 = 134217984;
    *(v90 + 4) = (*((*MEMORY[0x1E69E7D40] & v87->isa) + 0x90))();

    _os_log_impl(&dword_1B1A8A000, v88, v89, "Osprey cache is found, requestId: %llu", v90, 0xCu);
    v85 = v122;
    OUTLINED_FUNCTION_14();
    MEMORY[0x1B2739FD0]();
  }

  else
  {

    v88 = v87;
  }

  v96 = v128[4];
  if (v96)
  {
    if (qword_1ED9A4DF8 != -1)
    {
      OUTLINED_FUNCTION_32();
    }

    sub_1B1AEAD14();
    if (qword_1ED9A4DE0 != -1)
    {
      OUTLINED_FUNCTION_4_20();
    }

    [v96 postNotificationName:qword_1ED9A4DE8 object:0];
    v97 = *(v85 + *(v124 + 24));
    if (v97)
    {
      v98 = qword_1ED9A4EB8;
      v99 = v97;
      if (v98 != -1)
      {
        swift_once();
      }

      [v96 postNotificationName:qword_1ED9A4EC0 object:v99];
    }

    v100 = *(v85 + *(v124 + 28));
    if (v100)
    {
      v101 = qword_1ED9A4D20;
      v102 = v100;
      if (v101 != -1)
      {
        swift_once();
      }

      [v96 postNotificationName:qword_1ED9A4D28 object:v102];
    }
  }

  v129 = *(v85 + *(v124 + 20));
  v103 = v129;
  v104 = 0.0;
  while (1)
  {
    SynthesisCacheFile.SynthesisCacheChunkIterator.next()(&v130);
    v105 = v130;
    if (!v130)
    {
      break;
    }

    if (v96)
    {
      if (qword_1ED9A4EA8 != -1)
      {
        swift_once();
      }

      [v96 postNotificationName:qword_1ED9A4EB0 object:v105];
      if (qword_1ED9A4DA0 != -1)
      {
        swift_once();
      }

      sub_1B1AC4DD4();
    }

    AudioData.duration.getter();
    v104 = v104 + v106;
    OUTLINED_FUNCTION_17();
    v107 = swift_allocObject();
    v108 = v87;
    *(v107 + 16) = sub_1B1C2CAB8();
    v109 = v105;
    sub_1B1ACC2E4(v105);

    sub_1B1ACC308(v110);
    sub_1B1ACFA84(v127);
    sub_1B1AA81A8();

    sub_1B1AD8690(v105);
  }

  v111 = v122;
  if (v96)
  {
    if (qword_1ED9A4E88 != -1)
    {
      swift_once();
    }

    sub_1B1ADED40();
  }

  sub_1B1B7461C(v87, v118, v121);

  sub_1B1ACD41C(v111);
}

uint64_t sub_1B1B72790()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 112);

    sub_1B1BC7598();
  }

  return result;
}

id sub_1B1B727FC(void *a1, void *a2, uint64_t a3, void *a4, void *a5, uint64_t a6, char a7, void *a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v56 = a11;
  v57 = a12;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762088, &unk_1B1C371C0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v52 - v23;
  v58 = swift_projectBox();
  [a4 lock];
  if (sub_1B1B70F7C())
  {
    v59 = 0x40E7700000000000;
    v60 = xmmword_1B1C387F0;
    v61 = xmmword_1B1C38800;
    if (sub_1B1B01D2C(a3, &v59))
    {
      v53 = a8;
      if (qword_1ED9A9288 != -1)
      {
        swift_once();
      }

      v25 = sub_1B1C2C8A8();
      v26 = __swift_project_value_buffer(v25, qword_1ED9A9120);
      v27 = a1;
      v28 = a2;
      v52 = v26;
      v29 = sub_1B1C2C888();
      v30 = sub_1B1C2D0D8();
      v55 = v28;

      v54 = v27;
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = v55;
        v33 = v31;
        v34 = swift_slowAlloc();
        *v33 = 138412802;
        v35 = v54;
        *(v33 + 4) = v54;
        *(v33 + 12) = 2112;
        *(v33 + 14) = v32;
        *v34 = v35;
        v34[1] = v32;
        *(v33 + 22) = 2048;
        *(v33 + 24) = a9;
        v36 = v35;
        v37 = v32;
        _os_log_impl(&dword_1B1A8A000, v29, v30, "Server voice: %@, resource: %@, buffer size: %f", v33, 0x20u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7625C0, &qword_1B1C37990);
        swift_arrayDestroy();
        MEMORY[0x1B2739FD0](v34, -1, -1);
        MEMORY[0x1B2739FD0](v33, -1, -1);
      }

      swift_beginAccess();
      *(a6 + 16) = a9;
      if (a5[15] && (a7 & 1) != 0)
      {
        v38 = a5[15];

        v39 = v53;
        v40 = sub_1B1C2C888();
        v41 = sub_1B1C2D098();

        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          *v42 = 138412290;
          *(v42 + 4) = v39;
          *v43 = v39;
          v44 = v39;
          _os_log_impl(&dword_1B1A8A000, v40, v41, "Osprey Synthesis cache starting...{%@}.", v42, 0xCu);
          sub_1B1A90C20(v43, &qword_1EB7625C0, &qword_1B1C37990);
          MEMORY[0x1B2739FD0](v43, -1, -1);
          MEMORY[0x1B2739FD0](v42, -1, -1);
        }

        sub_1B1ACC580();

        v49 = type metadata accessor for SynthesisCacheFile(0);
        __swift_storeEnumTagSinglePayload(v24, 0, 1, v49);
        v50 = v58;
        swift_beginAccess();
        sub_1B1B75E88(v24, v50, &qword_1EB762088, &unk_1B1C371C0);
      }

      v51 = a5[4];
      if (v51)
      {
        if (qword_1ED9A4EB8 != -1)
        {
          swift_once();
        }

        [v51 postNotificationName:qword_1ED9A4EC0 object:v54];
        if (qword_1ED9A4D20 != -1)
        {
          swift_once();
        }

        [v51 postNotificationName:qword_1ED9A4D28 object:v55];
      }

      return [a4 unlock];
    }

    sub_1B1A9EC9C();
    v45 = swift_allocError();
    *v46 = 19;
    *(v46 + 8) = 0xD00000000000001BLL;
    *(v46 + 16) = 0x80000001B1C4FD50;
    sub_1B1BD08E8(v45);
    v47 = a5[14];
    sub_1B1BC7598();
  }

  return [a4 unlock];
}

id sub_1B1B72D34(void *a1, unint64_t a2, void *a3, void *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v113 = a7;
  v114 = a8;
  v118 = a6;
  v119 = a2;
  v115 = a1;
  v116 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762088, &unk_1B1C371C0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v101 - v12;
  v14 = type metadata accessor for SynthesisCacheFile(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v101 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1B1C2C428();
  v111 = *(v18 - 8);
  v112 = v18;
  v19 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v110 = &v101 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761D88, &qword_1B1C36488);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v109 = &v101 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v108 = &v101 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v101 - v27;
  v29 = swift_projectBox();
  [a3 lock];
  if ((sub_1B1B70F7C() & 1) == 0)
  {
    goto LABEL_4;
  }

  v30 = sub_1B1B71054();
  if (v30)
  {

LABEL_4:

    return [a3 unlock];
  }

  v32 = v116;
  swift_beginAccess();
  if (*(v32 + 16) > 0.8)
  {
    v33 = a4[7];
    sub_1B1B55438();
    if (v34 != 2 && (v34 & 1) != 0)
    {
      if (qword_1ED9A9288 == -1)
      {
LABEL_11:
        v35 = sub_1B1C2C8A8();
        __swift_project_value_buffer(v35, qword_1ED9A9120);
        v36 = sub_1B1C2C888();
        v37 = sub_1B1C2D0D8();
        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          *v38 = 0;
          _os_log_impl(&dword_1B1A8A000, v36, v37, "Simulate network stall is on, ignore audio object", v38, 2u);
          MEMORY[0x1B2739FD0](v38, -1, -1);
        }

        return [a3 unlock];
      }

LABEL_57:
      swift_once();
      goto LABEL_11;
    }
  }

  v39 = v116;
  swift_beginAccess();
  if (*(v39 + 16) == 0.0)
  {
    v40 = a4[4];
    if (v40)
    {
      if (qword_1ED9A4CD8 != -1)
      {
        swift_once();
      }

      [v40 postNotificationName:qword_1ED9A4CE0 object:0];
    }
  }

  v104 = v28;
  AudioData.duration.getter();
  v42 = v41;
  v43 = v116;
  swift_beginAccess();
  *(v43 + 16) = v42 + *(v43 + 16);
  v44 = sub_1B1A9547C(v119);
  v45 = MEMORY[0x1E69E7CC0];
  v106 = v14;
  v107 = v29;
  if (v44)
  {
    v46 = v44;
    v101 = a4;
    v102 = v17;
    v105 = v13;
    v103 = a3;
    v121 = MEMORY[0x1E69E7CC0];
    v47 = &v121;
    sub_1B1C2D5B8();
    if (v46 < 0)
    {
      __break(1u);
      goto LABEL_55;
    }

    v117 = type metadata accessor for NSRangeUtil();
    swift_getObjectType();
    v48 = 0;
    v49 = v119 & 0xC000000000000001;
    do
    {
      if (v49)
      {
        v50 = MEMORY[0x1B2738A20](v48, v119);
      }

      else
      {
        v50 = *(v119 + 8 * v48 + 32);
      }

      v51 = v50;
      ++v48;
      v52 = OBJC_IVAR___SiriTTSWordTimingInfo_startTime;
      swift_beginAccess();
      v53 = *&v51[v52];
      v54 = &v51[OBJC_IVAR___SiriTTSWordTimingInfo_textRange];
      swift_beginAccess();
      v55 = *v54;
      v56 = v54[1];
      v57 = SynthesizingRequestProtocol.text.getter();
      static NSRangeUtil.mapUtf8RangeToUtf16(_:inText:)(v55, v56, v57, v58);

      v59 = objc_allocWithZone(type metadata accessor for WordTimingInfo());
      WordTimingInfo.init(startTiming:textRange:)();

      sub_1B1C2D588();
      v60 = *(v121 + 16);
      sub_1B1C2D5C8();
      sub_1B1C2D5D8();
      sub_1B1C2D598();
    }

    while (v46 != v48);
    v45 = v121;
    v17 = v102;
    a3 = v103;
    v13 = v105;
    a4 = v101;
    v29 = v107;
  }

  type metadata accessor for DataContainer();
  v61 = swift_allocObject();
  v62 = MEMORY[0x1E69E7CC0];
  v61[2] = sub_1B1C2CAB8();
  v63 = v118;
  v64 = v118;
  sub_1B1ACFA84(v63);
  v65 = v115;
  v119 = v115;
  sub_1B1ACC2E4(v65);

  sub_1B1ACC308(v66);
  v67 = v116;
  swift_beginAccess();
  v68 = *(v67 + 16);
  v69 = v113;
  swift_beginAccess();
  v70 = *(v69 + 16);
  v117 = v45;
  if (v68 < v70)
  {
    v71 = v114;
    swift_beginAccess();

    MEMORY[0x1B2738320](v72);
    sub_1B1B3E0D4(*((*(v71 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
    sub_1B1C2CEC8();
    swift_endAccess();
    v14 = v106;
    goto LABEL_44;
  }

  v118 = v61;
  v73 = v114;
  swift_beginAccess();
  if (sub_1B1A9547C(*(v73 + 16)))
  {
    v74 = v62;
    swift_beginAccess();
    v75 = *(v73 + 16);
    v76 = sub_1B1A9547C(v75);
    if (v76)
    {
      v77 = v76;
      v105 = v13;
      if (v76 < 1)
      {
        __break(1u);
        goto LABEL_57;
      }

      v78 = a4;

      for (i = 0; i != v77; ++i)
      {
        if ((v75 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1B2738A20](i, v75);
        }

        else
        {
          v80 = *(v75 + 8 * i + 32);
        }

        sub_1B1AA81A8();
      }

      v13 = v105;
      a4 = v78;
    }

    v81 = v114;
    swift_beginAccess();
    v82 = *(v81 + 16);
    *(v81 + 16) = v74;
  }

  sub_1B1AA81A8();
  v83 = a4;
  v84 = OBJC_IVAR____TtC14SiriTTSService15OspreyTTSAction_streamingStartedDate;
  swift_beginAccess();
  v85 = v104;
  sub_1B1AA7A0C(v83 + v84, v104, &qword_1EB761D88, &qword_1B1C36488);
  v86 = v112;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v85, 1, v112);
  sub_1B1A90C20(v85, &qword_1EB761D88, &qword_1B1C36488);
  if (EnumTagSinglePayload != 1)
  {
    v97 = v83[14];
    AudioData.duration.getter();
    swift_beginAccess();
    sub_1B1C2C3C8();
    swift_endAccess();
    v14 = v106;
    a4 = v83;
    goto LABEL_43;
  }

  v88 = v108;
  sub_1B1C2C3E8();
  __swift_storeEnumTagSinglePayload(v88, 0, 1, v86);
  swift_beginAccess();
  sub_1B1B75E88(v88, v83 + v84, &qword_1EB761D88, &qword_1B1C36488);
  swift_endAccess();
  v89 = v83[14];
  v90 = v109;
  sub_1B1AA7A0C(v83 + v84, v109, &qword_1EB761D88, &qword_1B1C36488);
  result = __swift_getEnumTagSinglePayload(v90, 1, v86);
  if (result != 1)
  {
    a4 = v83;
    v91 = v116;
    swift_beginAccess();
    v92 = *(v91 + 16) + 0.05;
    v93 = v110;
    sub_1B1C2C398();
    v94 = v90;
    v95 = v111;
    (*(v111 + 8))(v94, v86);
    v96 = OBJC_IVAR____TtC14SiriTTSService7Timeout_timeoutDate;
    swift_beginAccess();
    (*(v95 + 40))(v89 + v96, v93, v86);
    swift_endAccess();
    v14 = v106;
LABEL_43:
    v29 = v107;
LABEL_44:
    v98 = a4[14];
    sub_1B1BC760C();
    v47 = a4[4];
    v45 = v117;
    if (!v47)
    {
LABEL_51:
      swift_beginAccess();
      sub_1B1AA7A0C(v29, v13, &qword_1EB762088, &unk_1B1C371C0);
      if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
      {

        sub_1B1A90C20(v13, &qword_1EB762088, &unk_1B1C371C0);
      }

      else
      {
        sub_1B1AEACB0(v13, v17);
        *&v120 = v119;
        *(&v120 + 1) = v45;
        v99 = v119;
        SynthesisCacheFile.append(chunk:)(&v120);

        v100 = v120;

        sub_1B1ACD41C(v17);
      }

      return [a3 unlock];
    }

    if (qword_1ED9A4EA8 == -1)
    {
LABEL_46:
      [v47 postNotificationName:qword_1ED9A4EB0 object:v119];
      if (qword_1ED9A4DA0 != -1)
      {
        swift_once();
      }

      sub_1B1AC4DD4();
      if (qword_1ED9A4CF0 != -1)
      {
        swift_once();
      }

      [v47 postNotificationName:qword_1ED9A4CF8 object:0];
      goto LABEL_51;
    }

LABEL_55:
    swift_once();
    goto LABEL_46;
  }

  __break(1u);
  return result;
}

id sub_1B1B738C8(void *a1, id a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  [a2 lock];
  if (sub_1B1B70F7C())
  {
    v12 = sub_1B1B71054();
    if (v12)
    {

      goto LABEL_4;
    }

    swift_beginAccess();
    v14 = *(a4 + 16);
    v15 = sub_1B1A9547C(v14);
    if (v15)
    {
      v16 = v15;
      v27 = a1;
      if (v15 < 1)
      {
        __break(1u);
        goto LABEL_25;
      }

      for (i = 0; i != v16; ++i)
      {
        if ((v14 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1B2738A20](i, v14);
        }

        else
        {
          v18 = *(v14 + 8 * i + 32);
        }

        sub_1B1AA81A8();
      }
    }

    swift_beginAccess();
    if (*(a5 + 16) <= 0.8 || (v19 = *(a3 + 56), sub_1B1B55438(), v20 == 2) || (v20 & 1) == 0)
    {
      swift_beginAccess();
      *(a6 + 16) = 1;
      v25 = a1;
      sub_1B1BD08E8(a1);
      v26 = *(a3 + 112);
      sub_1B1BC7598();
      return [a2 unlock];
    }

    if (qword_1ED9A9288 == -1)
    {
LABEL_19:
      v21 = sub_1B1C2C8A8();
      __swift_project_value_buffer(v21, qword_1ED9A9120);
      v22 = sub_1B1C2C888();
      v23 = sub_1B1C2D0D8();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_1B1A8A000, v22, v23, "Simulate network stall is on, ignore audio object", v24, 2u);
        MEMORY[0x1B2739FD0](v24, -1, -1);
      }

      return [a2 unlock];
    }

LABEL_25:
    swift_once();
    goto LABEL_19;
  }

LABEL_4:

  return [a2 unlock];
}

id sub_1B1B73B68(int a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v87 = a8;
  v89 = a7;
  v88 = a5;
  v86 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762088, &unk_1B1C371C0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v91 = &v81 - v16;
  v92 = type metadata accessor for SynthesisCacheFile(0);
  v17 = *(*(v92 - 8) + 64);
  MEMORY[0x1EEE9AC00](v92);
  v93 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762948, &qword_1B1C39D08);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v81 - v21;
  v90 = swift_projectBox();
  [a2 lock];
  v23 = sub_1B1B71054();
  if (v23)
  {
    v24 = v23;
    v84 = v15;
    v85 = a3;
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v25 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v25, qword_1ED9A9120);
    v26 = a4;
    v27 = v24;
    v28 = sub_1B1C2C888();
    v29 = sub_1B1C2D0B8();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v83 = a2;
      v31 = v30;
      v32 = swift_slowAlloc();
      v82 = a4;
      v33 = v32;
      v97[0] = v32;
      *v31 = 136315394;
      swift_getErrorValue();
      v34 = sub_1B1C2D828();
      v36 = sub_1B1A930E4(v34, v35, v97);

      *(v31 + 4) = v36;
      *(v31 + 12) = 2048;
      v38 = (*((*MEMORY[0x1E69E7D40] & *v26) + 0x90))(v37);

      *(v31 + 14) = v38;
      _os_log_impl(&dword_1B1A8A000, v28, v29, "Encountered Osprey error: %s, { id: %llu }", v31, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v33);
      v39 = v33;
      a4 = v82;
      MEMORY[0x1B2739FD0](v39, -1, -1);
      v40 = v31;
      a2 = v83;
      MEMORY[0x1B2739FD0](v40, -1, -1);
    }

    else
    {
    }

    a3 = v85;
    v15 = v84;
  }

  v41 = sub_1B1B71054();
  v42 = OBJC_IVAR____TtC14SiriTTSService15OspreyTTSAction_streamingStartedDate;
  swift_beginAccess();
  v43 = *(v19 + 64);
  sub_1B1AA7A0C(a3 + v42, &v22[v43], &qword_1EB761D88, &qword_1B1C36488);
  if (v41)
  {
    v44 = sub_1B1C2C428();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&v22[v43], 1, v44);
    v46 = v90;
    if (EnumTagSinglePayload == 1)
    {
      v94 = v41;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762090, &qword_1B1C38450);
      if (swift_dynamicCast())
      {

        goto LABEL_20;
      }

LABEL_18:
      v95 = 0;
      v96 = 0xE000000000000000;
      sub_1B1C2D538();

      v95 = 0xD000000000000021;
      v96 = 0x80000001B1C4FD20;
      v94 = (*((*MEMORY[0x1E69E7D40] & *a4) + 0x90))(v55);
      v56 = sub_1B1C2D778();
      MEMORY[0x1B27381B0](v56);

      MEMORY[0x1B27381B0](32032, 0xE200000000000000);
      v50 = v95;
      v51 = v96;
      sub_1B1A9EC9C();
      v52 = swift_allocError();
      v54 = 17;
      goto LABEL_19;
    }
  }

  else
  {
    v46 = v90;
    if (v86)
    {
      sub_1B1A90C20(&v22[v43], &qword_1EB761D88, &qword_1B1C36488);
      goto LABEL_20;
    }

    v47 = sub_1B1C2C428();
    if (__swift_getEnumTagSinglePayload(&v22[v43], 1, v47) == 1)
    {
      goto LABEL_18;
    }
  }

  sub_1B1A90C20(&v22[v43], &qword_1EB761D88, &qword_1B1C36488);
  v95 = 0;
  v96 = 0xE000000000000000;
  sub_1B1C2D538();

  v95 = 0xD000000000000025;
  v96 = 0x80000001B1C4FCF0;
  v94 = (*((*MEMORY[0x1E69E7D40] & *a4) + 0x90))(v48);
  v49 = sub_1B1C2D778();
  MEMORY[0x1B27381B0](v49);

  MEMORY[0x1B27381B0](32032, 0xE200000000000000);
  v50 = v95;
  v51 = v96;
  sub_1B1A9EC9C();
  v52 = swift_allocError();
  v54 = 18;
LABEL_19:
  *v53 = v54;
  *(v53 + 8) = v50;
  *(v53 + 16) = v51;
  sub_1B1BD08E8(v52);
LABEL_20:
  v57 = v92;
  if (*(a3 + 32))
  {
    if (qword_1ED9A4E88 != -1)
    {
      swift_once();
    }

    v58 = v88;
    swift_beginAccess();
    v59 = *(v58 + 16);
    sub_1B1ADED40();
  }

  swift_beginAccess();
  v60 = v91;
  sub_1B1AA7A0C(v46, v91, &qword_1EB762088, &unk_1B1C371C0);
  if (__swift_getEnumTagSinglePayload(v60, 1, v57) == 1)
  {
    sub_1B1A90C20(v60, &qword_1EB762088, &unk_1B1C371C0);
  }

  else
  {
    sub_1B1AEACB0(v60, v93);
    SynthesisCacheFile.close()();
    if (v61)
    {
    }

    __swift_storeEnumTagSinglePayload(v15, 1, 1, v57);
    swift_beginAccess();
    sub_1B1B75E88(v15, v46, &qword_1EB762088, &unk_1B1C371C0);
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v62 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v62, qword_1ED9A9120);
    v63 = a4;
    v64 = sub_1B1C2C888();
    v65 = sub_1B1C2D098();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = a4;
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      *v67 = 138412290;
      *(v67 + 4) = v63;
      *v68 = v63;
      v69 = v63;
      _os_log_impl(&dword_1B1A8A000, v64, v65, "Osprey Synthesis cache complete {%@}.", v67, 0xCu);
      sub_1B1A90C20(v68, &qword_1EB7625C0, &qword_1B1C37990);
      MEMORY[0x1B2739FD0](v68, -1, -1);
      v70 = v67;
      a4 = v66;
      MEMORY[0x1B2739FD0](v70, -1, -1);
    }

    sub_1B1ACD41C(v93);
  }

  if (*(a3 + 120))
  {
    v71 = v89;
    swift_beginAccess();
    LODWORD(v71) = *(v71 + 16);

    if (v71 == 1)
    {
      v72 = sub_1B1B71054();
      if (!v72)
      {

        goto LABEL_42;
      }
    }

    sub_1B1BD8C94();
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v73 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v73, qword_1ED9A9120);
    v74 = a4;
    v75 = sub_1B1C2C888();
    v76 = sub_1B1C2D098();

    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      *v77 = 138412290;
      *(v77 + 4) = v74;
      *v78 = v74;
      v79 = v74;
      _os_log_impl(&dword_1B1A8A000, v75, v76, "Osprey Synthesis cache removed {%@}.", v77, 0xCu);
      sub_1B1A90C20(v78, &qword_1EB7625C0, &qword_1B1C37990);
      MEMORY[0x1B2739FD0](v78, -1, -1);
      MEMORY[0x1B2739FD0](v77, -1, -1);
    }
  }

LABEL_42:
  sub_1B1B33170();
  return [a2 unlock];
}

uint64_t sub_1B1B7461C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1B1C2C988();
  v5 = OUTLINED_FUNCTION_7(v4);
  v38 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_16();
  v11 = v10 - v9;
  v37 = sub_1B1C2C9D8();
  v12 = OUTLINED_FUNCTION_7(v37);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_16();
  v19 = v18 - v17;
  v20 = sub_1B1C2C998();
  v21 = OUTLINED_FUNCTION_7(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_16();
  v28 = v27 - v26;
  sub_1B1AA7918();
  (*(v23 + 104))(v28, *MEMORY[0x1E69E7FA0], v20);
  v29 = sub_1B1C2D168();
  (*(v23 + 8))(v28, v20);
  v30 = swift_allocObject();
  v30[2] = v3;
  v30[3] = a1;
  v30[4] = a2;
  v30[5] = a3;
  aBlock[4] = sub_1B1B75E5C;
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B1A95870;
  aBlock[3] = &block_descriptor_19;
  v31 = _Block_copy(aBlock);

  v32 = a1;

  sub_1B1C2C9A8();
  sub_1B1ACD078(&qword_1ED9A8DC0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761900, &unk_1B1C38430);
  sub_1B1AA6F40();
  sub_1B1C2D418();
  MEMORY[0x1B2738610](0, v19, v11, v31);
  _Block_release(v31);

  (*(v38 + 8))(v11, v4);
  (*(v14 + 8))(v19, v37);
}

uint64_t sub_1B1B74974(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 120);
  if (v4)
  {
    v8 = result;
    v9 = qword_1ED9A9288;
    v10 = *(result + 120);

    if (v9 != -1)
    {
      swift_once();
    }

    v11 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v11, qword_1ED9A9120);
    v12 = sub_1B1C2C888();
    v13 = sub_1B1C2D098();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1B1A8A000, v12, v13, "Updating osprey cache", v14, 2u);
      MEMORY[0x1B2739FD0](v14, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762088, &unk_1B1C371C0);
    v15 = swift_allocBox();
    v17 = v16;
    v18 = type metadata accessor for SynthesisCacheFile(0);
    __swift_storeEnumTagSinglePayload(v17, 1, 1, v18);
    v19 = *(v8 + 64);
    v20 = swift_allocObject();
    v20[2] = v4;
    v20[3] = a3;
    v20[4] = a4;
    v20[5] = v15;
    v21 = swift_allocObject();
    *(v21 + 16) = v15;
    *(v21 + 24) = a2;
    v22 = swift_allocObject();
    v22[2] = v15;
    v22[3] = v4;
    v22[4] = a3;
    v22[5] = a4;
    swift_retain_n();
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    sub_1B1B29698(a2, sub_1B1B75E68, v20, sub_1B1B75E74, v21, sub_1B1B75E7C, v22);
  }

  return result;
}

void sub_1B1B74BE4(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762088, &unk_1B1C371C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v19[-v6];
  v8 = swift_projectBox();
  sub_1B1BD8C94();
  sub_1B1ACC580();
  v9 = type metadata accessor for SynthesisCacheFile(0);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v9);
  swift_beginAccess();
  sub_1B1B75E88(v7, v8, &qword_1EB762088, &unk_1B1C371C0);
  if (qword_1ED9A9288 != -1)
  {
    swift_once();
  }

  v10 = sub_1B1C2C8A8();
  __swift_project_value_buffer(v10, qword_1ED9A9120);
  v11 = a1;
  v12 = a2;
  v13 = sub_1B1C2C888();
  v14 = sub_1B1C2D0D8();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412546;
    *(v15 + 4) = v11;
    *(v15 + 12) = 2112;
    *(v15 + 14) = v12;
    *v16 = v11;
    v16[1] = v12;
    v17 = v11;
    v18 = v12;
    _os_log_impl(&dword_1B1A8A000, v13, v14, "Updated Server cache voice: %@, resource: %@", v15, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7625C0, &qword_1B1C37990);
    swift_arrayDestroy();
    MEMORY[0x1B2739FD0](v16, -1, -1);
    MEMORY[0x1B2739FD0](v15, -1, -1);
  }
}

uint64_t sub_1B1B74E60(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762088, &unk_1B1C371C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v35 - v8;
  v10 = type metadata accessor for SynthesisCacheFile(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_projectBox();
  swift_beginAccess();
  sub_1B1AA7A0C(v14, v9, &qword_1EB762088, &unk_1B1C371C0);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    return sub_1B1A90C20(v9, &qword_1EB762088, &unk_1B1C371C0);
  }

  sub_1B1AEACB0(v9, v13);
  v16 = sub_1B1A9547C(a2);
  v17 = MEMORY[0x1E69E7CC0];
  if (!v16)
  {
    goto LABEL_11;
  }

  v18 = v16;
  *&v39 = MEMORY[0x1E69E7CC0];
  result = sub_1B1C2D5B8();
  if ((v18 & 0x8000000000000000) == 0)
  {
    v35 = v13;
    v36 = a1;
    v37 = type metadata accessor for NSRangeUtil();
    swift_getObjectType();
    v19 = 0;
    v20 = a2 & 0xC000000000000001;
    v21 = a2;
    do
    {
      if (v20)
      {
        v22 = MEMORY[0x1B2738A20](v19, a2);
      }

      else
      {
        v22 = *(a2 + 8 * v19 + 32);
      }

      v23 = v22;
      ++v19;
      v24 = OBJC_IVAR___SiriTTSWordTimingInfo_startTime;
      swift_beginAccess();
      v25 = *&v23[v24];
      v26 = &v23[OBJC_IVAR___SiriTTSWordTimingInfo_textRange];
      swift_beginAccess();
      v27 = *v26;
      v28 = v26[1];
      v29 = SynthesizingRequestProtocol.text.getter();
      static NSRangeUtil.mapUtf8RangeToUtf16(_:inText:)(v27, v28, v29, v30);

      v31 = objc_allocWithZone(type metadata accessor for WordTimingInfo());
      WordTimingInfo.init(startTiming:textRange:)();

      sub_1B1C2D588();
      v32 = *(v39 + 16);
      sub_1B1C2D5C8();
      sub_1B1C2D5D8();
      sub_1B1C2D598();
      a2 = v21;
    }

    while (v18 != v19);
    v17 = v39;
    v13 = v35;
    a1 = v36;
LABEL_11:
    *&v39 = a1;
    *(&v39 + 1) = v17;
    v33 = a1;
    SynthesisCacheFile.append(chunk:)(&v39);
    v34 = v39;

    return sub_1B1ACD41C(v13);
  }

  __break(1u);
  return result;
}

void sub_1B1B7516C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762088, &unk_1B1C371C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v31 - v8;
  v10 = type metadata accessor for SynthesisCacheFile(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_projectBox();
  swift_beginAccess();
  sub_1B1AA7A0C(v14, v9, &qword_1EB762088, &unk_1B1C371C0);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_1B1A90C20(v9, &qword_1EB762088, &unk_1B1C371C0);
  }

  else
  {
    sub_1B1AEACB0(v9, v13);
    SynthesisCacheFile.close()();
    if (v15)
    {
    }

    if (a1)
    {
      v16 = a1;
      if (qword_1ED9A9288 != -1)
      {
        swift_once();
      }

      v17 = sub_1B1C2C8A8();
      __swift_project_value_buffer(v17, qword_1ED9A9120);
      v18 = a1;
      v19 = sub_1B1C2C888();
      v20 = sub_1B1C2D0B8();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v33 = a4;
        v22 = v21;
        v32 = swift_slowAlloc();
        v34 = v32;
        *v22 = 136315138;
        swift_getErrorValue();
        v23 = sub_1B1C2D828();
        v25 = sub_1B1A930E4(v23, v24, &v34);

        *(v22 + 4) = v25;
        _os_log_impl(&dword_1B1A8A000, v19, v20, "OspreyTTSAction: error when updating osprey cache, %s", v22, 0xCu);
        v26 = v32;
        __swift_destroy_boxed_opaque_existential_0(v32);
        MEMORY[0x1B2739FD0](v26, -1, -1);
        MEMORY[0x1B2739FD0](v22, -1, -1);
      }

      sub_1B1BD8C94();
      sub_1B1ACD41C(v13);
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
      v29 = sub_1B1C2D0D8();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_1B1A8A000, v28, v29, "Updated osprey cache", v30, 2u);
        MEMORY[0x1B2739FD0](v30, -1, -1);
      }

      sub_1B1ACD41C(v13);
    }
  }
}

uint64_t (*sub_1B1B755AC())()
{
  v1 = *v0;
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1B1B75600@<X0>(uint64_t *a1@<X8>)
{
  result = OspreyTTSAction.__allocating_init(pool:)();
  *a1 = result;
  return result;
}

uint64_t sub_1B1B75630()
{
  v2 = *MEMORY[0x1E69E9840];
  sub_1B1C2CA68();
  sub_1B1ACD078(&qword_1ED9A4F48, MEMORY[0x1E6966620]);
  result = sub_1B1C2CA28();
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B1B75704(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B1C2CA38();
  v33 = *(v3 - 8);
  v34 = v3;
  v4 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1B1C2CBC8();
  v7 = *(v35 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B1C2CA68();
  v31 = *(v11 - 8);
  v32 = v11;
  v12 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B1C2CA58();
  v36 = 0;
  v37 = 0xE000000000000000;
  sub_1B1C2D538();
  v38 = v36;
  v39 = v37;
  v15 = SynthesizingRequestProtocol.voice.getter(a2);
  v16 = &v15[OBJC_IVAR___SiriTTSSynthesisVoice_language];
  swift_beginAccess();
  v17 = *v16;
  v18 = *(v16 + 1);

  MEMORY[0x1B27381B0](v17, v18);

  MEMORY[0x1B27381B0](10, 0xE100000000000000);
  v19 = SynthesizingRequestProtocol.voice.getter(a2);
  v20 = &v19[OBJC_IVAR___SiriTTSSynthesisVoice_name];
  swift_beginAccess();
  v22 = *v20;
  v21 = *(v20 + 1);

  if (v21)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  if (v21)
  {
    v24 = v21;
  }

  else
  {
    v24 = 0xE000000000000000;
  }

  MEMORY[0x1B27381B0](v23, v24);

  MEMORY[0x1B27381B0](10, 0xE100000000000000);
  v25 = SynthesizingRequestProtocol.text.getter();
  MEMORY[0x1B27381B0](v25);

  MEMORY[0x1B27381B0](10, 0xE100000000000000);
  SynthesizingRequestProtocol.pitch.getter(a2);
  sub_1B1C2CF38();
  MEMORY[0x1B27381B0](10, 0xE100000000000000);
  SynthesizingRequestProtocol.rate.getter(a2);
  sub_1B1C2CF38();
  MEMORY[0x1B27381B0](10, 0xE100000000000000);
  SynthesizingRequestProtocol.volume.getter(a2);
  sub_1B1C2CF38();
  sub_1B1C2CBB8();
  v26 = sub_1B1C2CB68();
  v28 = v27;
  result = (*(v7 + 8))(v10, v35);
  if (v28 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {

    sub_1B1AA64DC(v26, v28);
    sub_1B1ACCEA4(v26, v28);
    sub_1B1AA9670(v26, v28);
    sub_1B1AA9670(v26, v28);
    sub_1B1C2CA48();
    v30 = sub_1B1ACD0C0();
    (*(v33 + 8))(v6, v34);
    (*(v31 + 8))(v14, v32);
    return v30;
  }

  return result;
}

uint64_t type metadata accessor for OspreyTTSAction()
{
  result = qword_1ED9A5178;
  if (!qword_1ED9A5178)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B1B75C4C()
{
  sub_1B1B75E04();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1B1B75E04()
{
  if (!qword_1ED9A5240)
  {
    sub_1B1C2C428();
    v0 = sub_1B1C2D2B8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9A5240);
    }
  }
}

void sub_1B1B75E68(void *a1, void *a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  sub_1B1B74BE4(a1, a2);
}

uint64_t sub_1B1B75E88(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_11_18(a1, a2, a3, a4);
  OUTLINED_FUNCTION_45(v6);
  (*(v7 + 40))(v4, v5);
  return v4;
}

uint64_t sub_1B1B75ED8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762108, &qword_1B1C372C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762110, &qword_1B1C372D0);
  sub_1B1C2CBD8();
  v3[3] = type metadata accessor for LocalAssetProvider();
  v3[0] = a1;
  swift_beginAccess();

  sub_1B1A9EE20(v3);
  return swift_endAccess();
}

uint64_t sub_1B1B75F90(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7620F8, &qword_1B1C372B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762100, &qword_1B1C372C0);
  sub_1B1C2CBD8();
  v3[3] = type metadata accessor for TTSAssetUAFAssetProvider();
  v3[0] = a1;
  swift_beginAccess();

  sub_1B1A9EE20(v3);
  return swift_endAccess();
}

uint64_t sub_1B1B76048(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7620E8, &qword_1B1C372A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7620F0, &qword_1B1C372B0);
  sub_1B1C2CBD8();
  v3[3] = type metadata accessor for TrialAssetProvider();
  v3[0] = a1;
  swift_beginAccess();

  sub_1B1A9EE20(v3);
  return swift_endAccess();
}

uint64_t sub_1B1B76100(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7620D8, &qword_1B1C37298);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7620E0, &qword_1B1C372A0);
  sub_1B1C2CBD8();
  v3[3] = type metadata accessor for BuiltInVoiceProvider();
  v3[0] = a1;
  swift_beginAccess();

  sub_1B1A9EE20(v3);
  return swift_endAccess();
}

uint64_t sub_1B1B761B8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7620C8, &qword_1B1C37288);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7620D0, &qword_1B1C37290);
  sub_1B1C2CBD8();
  v3[3] = type metadata accessor for VocalizerCustomVoiceProvider();
  v3[0] = a1;
  swift_beginAccess();

  sub_1B1A9EE20(v3);
  return swift_endAccess();
}

uint64_t sub_1B1B76270(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7620B8, &qword_1B1C37278);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7620C0, &qword_1B1C37280);
  sub_1B1C2CBD8();
  v3[3] = type metadata accessor for PreinstalledVoiceProvider();
  v3[0] = a1;
  swift_beginAccess();

  sub_1B1A9EE20(v3);
  return swift_endAccess();
}

uint64_t sub_1B1B76328()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762188, &unk_1B1C37350);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762190, &qword_1B1C39E00);
  sub_1B1C2CBD8();
  type metadata accessor for InternalSettings();
  OUTLINED_FUNCTION_5_23();

  OUTLINED_FUNCTION_10_22(v0, v1, v2, v3);
  return swift_endAccess();
}

uint64_t sub_1B1B763B8(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762198, &unk_1B1C37360);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7621A0, &unk_1B1C39DF0);
  sub_1B1C2CBD8();
  sub_1B1B766EC();
  OUTLINED_FUNCTION_5_23();
  v2 = a1;
  OUTLINED_FUNCTION_10_22(v2, v3, v4, v5);
  return swift_endAccess();
}

uint64_t static VoiceSelectionAction.defaultSetupAction()()
{
  type metadata accessor for ObjectPool();
  swift_initStackObject();
  ObjectPool.init()();
  type metadata accessor for LocalAssetProvider();
  v0 = OUTLINED_FUNCTION_12_14();
  sub_1B1B75ED8(v0);

  type metadata accessor for TTSAssetUAFAssetProvider();
  swift_allocObject();
  TTSAssetUAFAssetProvider.init()();
  sub_1B1B75F90(v1);

  type metadata accessor for TrialAssetProvider();
  swift_allocObject();
  v2 = TrialAssetProvider.init()();
  sub_1B1B76048(v2);

  type metadata accessor for BuiltInVoiceProvider();
  v3 = OUTLINED_FUNCTION_12_14();
  sub_1B1B76100(v3);

  type metadata accessor for VocalizerCustomVoiceProvider();
  v4 = OUTLINED_FUNCTION_12_14();
  sub_1B1B761B8(v4);

  type metadata accessor for PreinstalledVoiceProvider();
  v5 = OUTLINED_FUNCTION_12_14();
  sub_1B1B76270(v5);

  if (qword_1ED9A96B8 != -1)
  {
    swift_once();
  }

  sub_1B1B76328();
  type metadata accessor for VoiceSelectionAction();
  swift_allocObject();
  return VoiceSelectionAction.init(pool:)();
}

uint64_t sub_1B1B76600()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  v5 = *(v0 + 64);

  v6 = *(v0 + 72);

  v7 = *(v0 + 88);
}

uint64_t sub_1B1B76660@<X0>(uint64_t *a1@<X8>)
{
  result = VoiceSelectionAction.__allocating_init(pool:)();
  *a1 = result;
  return result;
}

unint64_t sub_1B1B766EC()
{
  result = qword_1ED9A4C78;
  if (!qword_1ED9A4C78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED9A4C78);
  }

  return result;
}

uint64_t sub_1B1B76730(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1B1B76790(v4);
}

uint64_t sub_1B1B7675C()
{
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v1 = *(v0 + 32);
}

uint64_t sub_1B1B76790(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

void sub_1B1B76814()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);
}

uint64_t sub_1B1B76844@<X0>(uint64_t *a1@<X8>)
{
  result = RequestParsingAction.__allocating_init(pool:)();
  *a1 = result;
  return result;
}

uint64_t sub_1B1B7693C()
{
  if (qword_1EB7610A0 != -1)
  {
    OUTLINED_FUNCTION_0_27();
  }

  sub_1B1C2CB58();
  v0 = sub_1B1C2CBF8();

  notify_post((v0 + 32));
}

uint64_t sub_1B1B769B4()
{
  result = sub_1B1C2CB28();
  qword_1EB7610A8 = result;
  return result;
}

id static TTSAsset.NewAssetNotification.getter()
{
  if (qword_1EB7610A0 != -1)
  {
    OUTLINED_FUNCTION_0_27();
  }

  v1 = qword_1EB7610A8;

  return v1;
}

uint64_t sub_1B1B76A60()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7624A8, &unk_1B1C38120);
  result = sub_1B1C2CAB8();
  dword_1EB762950 = 0;
  qword_1EB762958 = result;
  return result;
}

void static Logger.log(_:thresholdFrequency:)(uint64_t a1, uint64_t a2, double a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB762560, &qword_1B1C38118);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - v8;
  if (qword_1EB761650 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EB762950);
  sub_1B1B76DF4(&qword_1EB762958, a1, a2, &v26, a3);
  os_unfair_lock_unlock(&dword_1EB762950);
  v10 = v26;
  if (v26)
  {
    if (v26 == 1)
    {
      if (qword_1ED9A9288 != -1)
      {
        OUTLINED_FUNCTION_3_1();
      }

      v11 = sub_1B1C2C8A8();
      __swift_project_value_buffer(v11, qword_1ED9A9120);

      v12 = sub_1B1C2C888();
      v13 = sub_1B1C2D0D8();

      if (!os_log_type_enabled(v12, v13))
      {
        goto LABEL_14;
      }

      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v26 = v15;
      *(v14 + 4) = OUTLINED_FUNCTION_1_30(4.8149e-34);
      v16 = "%s";
      v17 = v13;
      v18 = v12;
      v19 = v14;
      v20 = 12;
    }

    else
    {
      if (qword_1ED9A9288 != -1)
      {
        OUTLINED_FUNCTION_3_1();
      }

      v21 = sub_1B1C2C8A8();
      __swift_project_value_buffer(v21, qword_1ED9A9120);

      v12 = sub_1B1C2C888();
      v22 = sub_1B1C2D0D8();

      if (!os_log_type_enabled(v12, v22))
      {
        goto LABEL_14;
      }

      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v26 = v15;
      *(v14 + 4) = OUTLINED_FUNCTION_1_30(4.8152e-34);
      *(v14 + 12) = 2048;
      *(v14 + 14) = v10;
      *(v14 + 22) = 2048;
      *(v14 + 24) = a3;
      v16 = "%s (%ld times in past %f sec)";
      v17 = v22;
      v18 = v12;
      v19 = v14;
      v20 = 32;
    }

    _os_log_impl(&dword_1B1A8A000, v18, v17, v16, v19, v20);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x1B2739FD0](v15, -1, -1);
    MEMORY[0x1B2739FD0](v14, -1, -1);
LABEL_14:

    os_unfair_lock_lock(&dword_1EB762950);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7624A8, &unk_1B1C38120);
    v24 = *(v23 + 48);

    sub_1B1C2C3E8();
    *&v9[v24] = 0;
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v23);
    sub_1B1B35CF8();
    os_unfair_lock_unlock(&dword_1EB762950);
  }
}

uint64_t sub_1B1B76DF4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, double a5@<D0>)
{
  v58 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB762560, &qword_1B1C38118);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v54 = v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v55 = v50 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v56 = v50 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = v50 - v17;
  v19 = sub_1B1C2C428();
  v57 = *(v19 - 8);
  v20 = *(v57 + 64);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = v50 - v24;
  v26 = a1;
  v27 = *a1;
  v28 = a2;
  v29 = a3;
  sub_1B1B2A1A0(v27, v18);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7624A8, &unk_1B1C38120);
  if (__swift_getEnumTagSinglePayload(v18, 1, v30))
  {
    result = sub_1B1B773D8(v18);
LABEL_3:
    v32 = 1;
LABEL_14:
    v48 = v58;
LABEL_15:
    *v48 = v32;
    return result;
  }

  v51 = v27;
  v52 = v30;
  v50[1] = v26;
  v50[2] = v28;
  v53 = v29;
  v34 = v56;
  v33 = v57;
  v35 = *(v57 + 16);
  v35(v23, v18, v19);
  sub_1B1B773D8(v18);
  (*(v33 + 32))(v25, v23, v19);
  sub_1B1C2C3B8();
  v37 = fabs(v36);
  if (v37 >= a5)
  {
    if (v37 >= a5 + a5)
    {
      result = (*(v57 + 8))(v25, v19, v51);
      goto LABEL_3;
    }

    v45 = v54;
    sub_1B1B2A1A0(v51, v54);
    (*(v57 + 8))(v25, v19);
    v46 = v52;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v45, 1, v52);
    v48 = v58;
    if (EnumTagSinglePayload)
    {
      v49 = 0;
    }

    else
    {
      v49 = *(v45 + *(v46 + 48));
    }

    result = sub_1B1B773D8(v45);
    v32 = v49 + 1;
    if (!__OFADD__(v49, 1))
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  else
  {
    v38 = v34;
    v39 = v25;
    v35(v34, v25, v19);
    v40 = v55;
    sub_1B1B2A1A0(v51, v55);
    v41 = v52;
    v42 = __swift_getEnumTagSinglePayload(v40, 1, v52);
    v43 = *(v41 + 48);
    if (v42)
    {
      v44 = 0;
    }

    else
    {
      v44 = *(v40 + v43);
    }

    result = sub_1B1B773D8(v40);
    if (!__OFADD__(v44, 1))
    {
      *(v38 + v43) = v44 + 1;
      __swift_storeEnumTagSinglePayload(v38, 0, 1, v52);

      sub_1B1B35CF8();
      result = (*(v57 + 8))(v39, v19);
      v32 = 0;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1B771F0()
{
  v0 = sub_1B1C2C8A8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B1C2C828();
  __swift_allocate_value_buffer(v5, qword_1ED9A4F70);
  __swift_project_value_buffer(v5, qword_1ED9A4F70);
  if (qword_1ED9A9288 != -1)
  {
    OUTLINED_FUNCTION_3_1();
  }

  v6 = __swift_project_value_buffer(v0, qword_1ED9A9120);
  (*(v1 + 16))(v4, v6, v0);
  return sub_1B1C2C808();
}

_BYTE *sub_1B1B7732C(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1B1B773D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB762560, &qword_1B1C38118);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B1B77444()
{
  v0 = sub_1B1B77498(0);

  return sub_1B1B35EC8(v0);
}

int64_t sub_1B1B77498(char a1)
{
  sub_1B1AE53F8(a1);
  v2 = sub_1B1C2CBF8();

  int64 = xpc_dictionary_get_int64(v1, (v2 + 32));

  return int64;
}

uint64_t sub_1B1B774F0(uint64_t result, unint64_t a2, uint64_t a3, OpaqueCMBlockBuffer **a4, const opaqueCMFormatDescription **a5, uint64_t a6, void *a7, CMSampleBufferRef *a8)
{
  v47 = *MEMORY[0x1E69E9840];
  switch(a2 >> 62)
  {
    case 1uLL:
      v29 = result >> 32;
      if (result >> 32 < result)
      {
        goto LABEL_40;
      }

      v43 = a4;
      v44 = a8;
      p_packetDescriptions = &packetDescriptions;
      v30 = result;
      swift_retain_n();
      swift_retain_n();
      v31 = sub_1B1C2BF08();
      if (!v31)
      {
        goto LABEL_22;
      }

      v32 = sub_1B1C2BF38();
      if (__OFSUB__(v30, v32))
      {
        goto LABEL_43;
      }

      v31 += v30 - v32;
LABEL_22:
      result = sub_1B1C2BF28();
      if (!v31)
      {
        goto LABEL_32;
      }

      v33 = v29 - v30;
      if (result < v29 - v30)
      {
        v33 = result;
      }

      if (v33 < a3)
      {
        goto LABEL_45;
      }

      v20 = (v31 + a3);
      goto LABEL_34;
    case 2uLL:
      goto LABEL_5;
    case 3uLL:
      memset(v45, 0, 14);
      if (a3 <= 0)
      {
        v12 = *a5;
        if (*a5)
        {
LABEL_17:
          v44 = &packetDescriptions;
          v22 = *a4;
          v23 = *MEMORY[0x1E695E480];
          v24 = (v45 + a3);
          v25 = *(a6 + 40);
          v26 = a7[8];
          v27 = a7[10];

          presentationTimeStamp.value = v26;
          *&presentationTimeStamp.timescale = a7[9];
          presentationTimeStamp.epoch = v27;
          v28 = CMAudioSampleBufferCreateWithPacketDescriptions(v23, v22, 1u, 0, 0, v12, v25, &presentationTimeStamp, v24, a8);

LABEL_37:

          v40 = *MEMORY[0x1E69E9840];
          return v28;
        }

        __break(1u);
        goto LABEL_49;
      }

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
      goto LABEL_44;
    default:
      v45[0] = result;
      LOWORD(v45[1]) = a2;
      BYTE2(v45[1]) = BYTE2(a2);
      BYTE3(v45[1]) = BYTE3(a2);
      BYTE4(v45[1]) = BYTE4(a2);
      BYTE5(v45[1]) = BYTE5(a2);
      if (a3 > BYTE6(a2))
      {
        goto LABEL_39;
      }

      v12 = *a5;
      if (*a5)
      {
        goto LABEL_17;
      }

      __break(1u);
LABEL_5:
      v43 = a4;
      v44 = a8;
      p_packetDescriptions = &packetDescriptions;
      v13 = *(result + 16);
      v14 = *(result + 24);
      swift_retain_n();
      swift_retain_n();
      v15 = sub_1B1C2BF08();
      if (!v15)
      {
        goto LABEL_8;
      }

      v16 = sub_1B1C2BF38();
      if (__OFSUB__(v13, v16))
      {
        goto LABEL_42;
      }

      v15 += v13 - v16;
LABEL_8:
      v17 = __OFSUB__(v14, v13);
      v18 = v14 - v13;
      if (v17)
      {
        goto LABEL_41;
      }

      result = sub_1B1C2BF28();
      if (v15)
      {
        if (result >= v18)
        {
          v19 = v18;
        }

        else
        {
          v19 = result;
        }

        if (v19 >= a3)
        {
          v20 = (v15 + a3);
          goto LABEL_29;
        }

LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      if (a3 > 0)
      {
        goto LABEL_46;
      }

      v20 = 0;
LABEL_29:
      v34 = *a5;
      if (!*a5)
      {
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      if (v20)
      {
LABEL_36:
        v35 = *MEMORY[0x1E695E480];
        v36 = *v43;
        v37 = a7[10];
        v38 = a7[8];
        v39 = *(a6 + 40);

        presentationTimeStamp.value = v38;
        *&presentationTimeStamp.timescale = a7[9];
        presentationTimeStamp.epoch = v37;
        v28 = CMAudioSampleBufferCreateWithPacketDescriptions(v35, v36, 1u, 0, 0, v34, v39, &presentationTimeStamp, v20, v44);

        goto LABEL_37;
      }

      __break(1u);
LABEL_32:
      if (a3 > 0)
      {
LABEL_47:
        __break(1u);
      }

      v20 = 0;
LABEL_34:
      v34 = *a5;
      if (!*a5)
      {
        goto LABEL_50;
      }

      if (v20)
      {
        goto LABEL_36;
      }

LABEL_51:
      __break(1u);
      return result;
  }
}

uint64_t sub_1B1B778E0(uint64_t result, unint64_t a2, uint64_t a3, size_t a4, id *a5)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v14 = result >> 32;
      if (result >> 32 < result)
      {
        __break(1u);
        goto LABEL_25;
      }

      v21 = &v20;
      v15 = result;
      v11 = sub_1B1C2BF08();
      if (v11)
      {
        result = sub_1B1C2BF38();
        if (__OFSUB__(v15, result))
        {
          goto LABEL_26;
        }

        v11 += v15 - result;
      }

      v13 = v14 - v15;
      goto LABEL_17;
    case 2uLL:
      v21 = &v20;
      v10 = *(result + 16);
      v9 = *(result + 24);
      v11 = sub_1B1C2BF08();
      if (!v11)
      {
        goto LABEL_6;
      }

      result = sub_1B1C2BF38();
      if (__OFSUB__(v10, result))
      {
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
      }

      else
      {
        v11 += v10 - result;
LABEL_6:
        v12 = __OFSUB__(v9, v10);
        v13 = v9 - v10;
        if (v12)
        {
          __break(1u);
LABEL_9:
          result = 0;
          v8 = 0;
          return sub_1B1B7E134(result, v8, a3, a4, a5);
        }

        else
        {
LABEL_17:
          v16 = sub_1B1C2BF28();
          if (v16 >= v13)
          {
            v17 = v13;
          }

          else
          {
            v17 = v16;
          }

          v18 = v17 + v11;
          if (v11)
          {
            v19 = v18;
          }

          else
          {
            v19 = 0;
          }

          return sub_1B1B1C0A0(v11, v19, a3, a4, a5);
        }
      }

      return result;
    case 3uLL:
      goto LABEL_9;
    default:
      v8 = a2 & 0xFFFFFFFFFFFFFFLL;
      return sub_1B1B7E134(result, v8, a3, a4, a5);
  }
}

uint64_t sub_1B1B77A48(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    v3 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      sub_1B1A9EC44(result - 1, (a1 & 0xC000000000000001) == 0, a1);
      if ((a1 & 0xC000000000000001) == 0)
      {
        v4 = *(a1 + 8 * v3 + 32);
      }
    }

    return MEMORY[0x1B2738A20](v3, a1);
  }

  result = sub_1B1C2D468();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_1B1B77ADC(uint64_t a1)
{
  v3 = *(a1 + 16);
  v1 = a1 + 16;
  v2 = v3;
  if (!v3)
  {
    return 0;
  }

  v4 = (v1 + 16 * v2);
  v5 = *v4;
  v6 = v4[1];

  return v5;
}

uint64_t sub_1B1B77B24(char a1)
{
  result = 0x646573756170;
  switch(a1)
  {
    case 1:
      result = 0x64657472617473;
      break;
    case 2:
      result = OUTLINED_FUNCTION_19_9();
      break;
    case 3:
      result = OUTLINED_FUNCTION_25_8() & 0xFFFFFFFFFFFFLL | 0x64000000000000;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B1B77BBC()
{
  v0 = sub_1B1C2D6C8();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1B1B77C2C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1B1B77BBC();
  *a2 = result;
  return result;
}

uint64_t sub_1B1B77C5C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B1B77B24(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1B1B77C90(uint64_t result, double a2, double a3, double a4)
{
  if (__OFSUB__(v4[4], v4[3]))
  {
    __break(1u);
  }

  else
  {
    v5 = *(result + 8);
    if (v5 == 1869641075)
    {
      if (*result != 0.0)
      {
        LODWORD(a4) = *(result + 20);
        v7 = v4[5] * *&a4;
      }
    }

    else if (v5 == 1819304813)
    {
      LODWORD(a4) = *(result + 24);
      v6 = *result * *&a4;
    }
  }

  return result;
}

uint64_t sub_1B1B77D14()
{
  v1 = *(v0 + 80);
  sub_1B1A949B4(*(v0 + 72));
  return v0;
}

uint64_t sub_1B1B77D3C()
{
  v0 = sub_1B1B77D14();

  return MEMORY[0x1EEE6BDC0](v0, 88, 7);
}

void sub_1B1B77D6C()
{
  if (*(v0 + 16))
  {
    v1 = qword_1EB762980;
    qword_1EB762980 = 0;
  }
}

void sub_1B1B77D88(void *a1)
{
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;
  v3 = a1;

  sub_1B1B77D6C();
}

uint64_t sub_1B1B77DD8()
{
  os_unfair_lock_lock((v0 + 56));
  v1 = *(v0 + 60);
  os_unfair_lock_unlock((v0 + 56));
  return v1;
}

void sub_1B1B77E0C(char a1)
{
  os_unfair_lock_lock((v1 + 56));
  *(v1 + 60) = a1;

  os_unfair_lock_unlock((v1 + 56));
}

double sub_1B1B77E4C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_1B1B77E94(v6);
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v7;
  return result;
}

__n128 sub_1B1B77E94@<Q0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  result = *(v1 + 128);
  v4 = *(v1 + 144);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(v1 + 160);
  return result;
}

__n128 sub_1B1B77EDC(uint64_t a1)
{
  OUTLINED_FUNCTION_15_0();
  swift_beginAccess();
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 128) = *a1;
  *(v1 + 144) = v4;
  *(v1 + 160) = *(a1 + 32);
  return result;
}

uint64_t (*sub_1B1B77F24())()
{
  OUTLINED_FUNCTION_15_1();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

void sub_1B1B77F70(uint64_t a1@<X8>)
{
  *a1 = 0x524142535641;
  *(a1 + 8) = 0xE600000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
}

uint64_t sub_1B1B77F94()
{
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  return *(v0 + 168);
}

uint64_t sub_1B1B77FC4(char a1)
{
  OUTLINED_FUNCTION_15_0();
  result = swift_beginAccess();
  *(v1 + 168) = a1;
  return result;
}

uint64_t (*sub_1B1B78000())()
{
  OUTLINED_FUNCTION_15_1();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1B1B7804C@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  return sub_1B1AA7A0C(v1 + 176, a1, &unk_1EB762990, &unk_1B1C352D0);
}

uint64_t sub_1B1B780A0(uint64_t a1)
{
  OUTLINED_FUNCTION_15_1();
  swift_beginAccess();
  sub_1B1B75E88(a1, v1 + 176, &unk_1EB762990, &unk_1B1C352D0);
  return swift_endAccess();
}

uint64_t (*sub_1B1B780FC())()
{
  OUTLINED_FUNCTION_15_1();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1B1B78148(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(_BYTE *))
{
  sub_1B1AA7A0C(a1, v11, a5, a6);
  v9 = *a2;
  return a7(v11);
}

uint64_t sub_1B1B78194@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  return sub_1B1AA7A0C(v1 + 216, a1, &qword_1EB7618F8, &unk_1B1C352E0);
}

uint64_t sub_1B1B781E8(uint64_t a1)
{
  OUTLINED_FUNCTION_15_1();
  swift_beginAccess();
  sub_1B1B75E88(a1, v1 + 216, &qword_1EB7618F8, &unk_1B1C352E0);
  return swift_endAccess();
}

uint64_t (*sub_1B1B78244())()
{
  OUTLINED_FUNCTION_15_1();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t AVSBARPlayback.__allocating_init(audioSessionId:asbd:)(unsigned int a1)
{
  v2 = swift_allocObject();
  AVSBARPlayback.init(audioSessionId:asbd:)(a1);
  return v2;
}

uint64_t AVSBARPlayback.init(audioSessionId:asbd:)(unsigned int a1)
{
  v82 = sub_1B1C2D128();
  v2 = OUTLINED_FUNCTION_7(v82);
  v81 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_16();
  v8 = v7 - v6;
  v9 = sub_1B1C2D118();
  v10 = OUTLINED_FUNCTION_45(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_16();
  v13 = sub_1B1C2C9D8();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  OUTLINED_FUNCTION_16();
  v84 = v1;
  *(v1 + 16) = 0;
  *(v1 + 24) = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  sub_1B1A8E474(0, &qword_1ED9A9940, 0x1E69E9610);
  sub_1B1C2C9A8();
  v85 = MEMORY[0x1E69E7CC0];
  sub_1B1A979CC(&qword_1ED9A9720, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7629A0, &unk_1B1C38440);
  sub_1B1A97978(&qword_1ED9A96A0, &qword_1EB7629A0, &unk_1B1C38440);
  v15 = a1;
  sub_1B1C2D418();
  (*(v81 + 104))(v8, *MEMORY[0x1E69E8090], v82);
  OUTLINED_FUNCTION_22_10();
  *(v8 + 48) = sub_1B1C2D158();
  *(v8 + 56) = 0;
  *(v8 + 60) = 0;
  v16 = MEMORY[0x1E6960CC0];
  v17 = *(MEMORY[0x1E6960CC0] + 16);
  *(v8 + 64) = *MEMORY[0x1E6960CC0];
  *(v8 + 72) = *(v16 + 8);
  *(v8 + 80) = v17;
  *(v8 + 88) = 0;
  type metadata accessor for MappedData();
  v18 = sub_1B1B1AFA4();
  *(v8 + 176) = 0u;
  v19 = v8 + 176;
  *(v8 + 96) = v18;
  *(v8 + 104) = MEMORY[0x1E69E7CC0];
  *(v8 + 112) = 0;
  *(v8 + 120) = 0;
  *(v8 + 168) = 0;
  *(v8 + 192) = 0u;
  *(v8 + 208) = 0u;
  *(v8 + 224) = 0u;
  *(v8 + 240) = 0u;
  mach_absolute_time();
  OUTLINED_FUNCTION_41_2();
  v21 = *(v20 + 16);
  *(v8 + 128) = *v20;
  *(v8 + 144) = v21;
  *(v8 + 160) = *(v20 + 32);
  v22 = [objc_opt_self() retrieveSessionWithID_];
  if (!v22)
  {
    sub_1B1C2D538();

    v32 = sub_1B1C2D778();
    MEMORY[0x1B27381B0](v32);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB762470, &qword_1B1C35D80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B1C361C0;
    v34 = *MEMORY[0x1E696A578];
    *(inited + 32) = sub_1B1C2CB58();
    *(inited + 40) = v35;
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 48) = 0xD000000000000020;
    *(inited + 56) = 0x80000001B1C500D0;
    v36 = sub_1B1C2CAB8();
    v37 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    sub_1B1B1AE5C(0xD00000000000001BLL, 0x80000001B1C50100, 0, v36);
    swift_willThrow();
    goto LABEL_28;
  }

  v23 = v22;
  v24 = qword_1EB762980;
  v25 = 0x1E6988000;
  v26 = &qword_1EB762000;
  if (qword_1EB762980)
  {
    v27 = qword_1EB762980;
    v28 = [v27 renderers];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7629A8, &qword_1B1C39ED8);
    v29 = sub_1B1C2CE78();

    if (!sub_1B1A9547C(v29))
    {

      goto LABEL_18;
    }

    sub_1B1A9EC44(0, (v29 & 0xC000000000000001) == 0, v29);
    if ((v29 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1B2738A20](0, v29);
    }

    else
    {
      v8 = *(v29 + 32);
      swift_unknownObjectRetain();
    }

    v25 = 0x1E6988000uLL;
    objc_opt_self();
    v30 = swift_dynamicCastObjCClass();
    if (v30)
    {
      v31 = v30;
      if ([v30 status] == 2)
      {

        swift_unknownObjectRelease();
LABEL_17:
        OUTLINED_FUNCTION_22_10();
        v26 = &qword_1EB762000;
        goto LABEL_19;
      }

      v38 = [v31 audioSession];
      v39 = [v38 opaqueSessionID];

      v40 = v39 == a1;
      v15 = a1;
      if (v40)
      {
        [v27 currentTime];
        v25 = 0x1E6988000;
        if (!v85 && byte_1EB762988 != 1)
        {
          *(v84 + 32) = v31;
          *(v84 + 40) = v27;
          v79 = v27;
          v8 = v84;
          swift_unknownObjectRetain();
LABEL_22:
          v49 = [objc_opt_self() defaultCenter];
          [v49 addObserver:v8 selector:sel_handleMediaServerReset name:*MEMORY[0x1E6958128] object:0];

          if (qword_1ED9A9288 != -1)
          {
            OUTLINED_FUNCTION_0_0();
            swift_once();
          }

          v50 = sub_1B1C2C8A8();
          __swift_project_value_buffer(v50, qword_1ED9A9120);
          v51 = OUTLINED_FUNCTION_43_7();
          sub_1B1B7D9EC(v51, v52);
          v53 = sub_1B1C2C888();
          v54 = sub_1B1C2D0D8();
          if (os_log_type_enabled(v53, v54))
          {
            v55 = swift_slowAlloc();
            *v55 = 67109376;
            *(v55 + 4) = v15;
            *(v55 + 8) = 1024;
            *(v55 + 10) = v24 != 0;
            v56 = OUTLINED_FUNCTION_43_7();
            sub_1B1B7DA2C(v56, v57);
            _os_log_impl(&dword_1B1A8A000, v53, v54, "#AVSBAR initialized with session ID: %u, reusing previous synchronizer: %{BOOL}d", v55, 0xEu);
            OUTLINED_FUNCTION_14();
            MEMORY[0x1B2739FD0]();
          }

          else
          {
            v65 = OUTLINED_FUNCTION_43_7();
            sub_1B1B7DA2C(v65, v66);
          }

          v8 = mach_absolute_time();
          v67 = sub_1B1C2C888();
          v68 = sub_1B1C2D098();
          v69 = OUTLINED_FUNCTION_9_22();
          if (!os_log_type_enabled(v69, v70))
          {
            goto LABEL_35;
          }

          OUTLINED_FUNCTION_23_6();
          *swift_slowAlloc() = 134217984;
          OUTLINED_FUNCTION_41_2();
          v73 = v8 >= v72;
          v74 = v8 - v72;
          if (v73)
          {
            v53 = v71;
            v75 = v74;
            if (qword_1ED9A5270 == -1)
            {
LABEL_34:
              *(v53 + 4) = *&qword_1ED9AA500 * v75;
              _os_log_impl(&dword_1B1A8A000, v67, v68, "VSAudioPlaybackService init latency: %f", v53, 0xCu);
              OUTLINED_FUNCTION_14();
              MEMORY[0x1B2739FD0]();
LABEL_35:
              v76 = OUTLINED_FUNCTION_43_7();
              sub_1B1B7DA2C(v76, v77);

              OUTLINED_FUNCTION_22_10();
              return v8;
            }
          }

          else
          {
            __break(1u);
          }

          OUTLINED_FUNCTION_0_6();
          v83 = v80;
          swift_once();
          v75 = v83;
          goto LABEL_34;
        }

        swift_unknownObjectRelease();

        goto LABEL_17;
      }

      swift_unknownObjectRelease();

      OUTLINED_FUNCTION_22_10();
      v26 = &qword_1EB762000;
LABEL_18:
      v25 = 0x1E6988000uLL;
      goto LABEL_19;
    }

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_22_10();
  }

LABEL_19:
  v41 = [objc_allocWithZone(*(v25 + 296)) init];
  if (v41)
  {
    v42 = v41;
    v43 = [objc_allocWithZone(MEMORY[0x1E6988140]) init];
    if (v43)
    {
      v44 = v43;
      [v42 setAudioSession_];
      [v44 setDelaysRateChangeUntilHasSufficientMediaData_];
      [v44 addRenderer_];
      *(v8 + 32) = v42;
      *(v8 + 40) = v44;
      v45 = v15;
      v46 = qword_1EB762980;
      qword_1EB762980 = v44;
      v47 = v42;
      v48 = v44;

      v15 = v45;
      *(v26 + 2440) = 0;

      v24 = 0;
      goto LABEL_22;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB762470, &qword_1B1C35D80);
  v58 = swift_initStackObject();
  *(v58 + 16) = xmmword_1B1C361C0;
  v59 = *MEMORY[0x1E696A578];
  *(v58 + 32) = sub_1B1C2CB58();
  *(v58 + 40) = v60;
  *(v58 + 72) = MEMORY[0x1E69E6158];
  *(v58 + 48) = 0xD000000000000098;
  *(v58 + 56) = 0x80000001B1C50120;
  v61 = sub_1B1C2CAB8();
  v62 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  sub_1B1B1AE5C(0xD00000000000001BLL, 0x80000001B1C50100, 1, v61);
  swift_willThrow();

LABEL_28:
  v63 = *(v8 + 96);

  v64 = *(v8 + 104);

  sub_1B1A90C20(v19, &unk_1EB762990, &unk_1B1C352D0);
  sub_1B1A90C20(v19 + 40, &qword_1EB7618F8, &unk_1B1C352E0);
  type metadata accessor for AVSBARPlayback();
  swift_deallocPartialClassInstance();
  return v8;
}

uint64_t AVSBARPlayback.deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  sub_1B1B7CBD0();
  sub_1B1B7D614();

  v2 = *(v0 + 96);

  v3 = *(v0 + 104);

  sub_1B1A90C20(v0 + 176, &unk_1EB762990, &unk_1B1C352D0);
  sub_1B1A90C20(v0 + 216, &qword_1EB7618F8, &unk_1B1C352E0);
  return v0;
}

uint64_t AVSBARPlayback.__deallocating_deinit()
{
  AVSBARPlayback.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 256, 7);
}

void sub_1B1B78E7C(void (*a1)(void *))
{
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  if (*(v1 + 168) == 1 && (v3 = *(v1 + 16)) != 0)
  {
    v4 = v3;
    a1(v3);
  }

  else
  {
    sub_1B1B77E0C(1);
    if (*(v1 + 88) > 0.15)
    {
      sub_1B1B78F2C();
    }

    a1(0);
  }
}

uint64_t sub_1B1B78F2C()
{
  v1 = v0;
  v2 = sub_1B1C2C988();
  v3 = OUTLINED_FUNCTION_7(v2);
  v40 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_16();
  v9 = v8 - v7;
  v10 = sub_1B1C2C9D8();
  v11 = OUTLINED_FUNCTION_7(v10);
  v38 = v12;
  v39 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_16();
  v17 = v16 - v15;
  v18 = sub_1B1C2C998();
  v19 = OUTLINED_FUNCTION_7(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_16();
  v26 = v25 - v24;
  if (qword_1ED9A9288 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v27 = sub_1B1C2C8A8();
  OUTLINED_FUNCTION_12_1(v27, qword_1ED9A9120);

  v28 = sub_1B1C2C888();
  v29 = sub_1B1C2D0D8();

  if (os_log_type_enabled(v28, v29))
  {
    OUTLINED_FUNCTION_34_8();
    v30 = swift_slowAlloc();
    *v30 = 134218240;
    *(v30 + 4) = *(v1 + 88);
    *(v30 + 12) = 2048;
    [*(v1 + 40) rate];
    *(v30 + 14) = v31;
    _os_log_impl(&dword_1B1A8A000, v28, v29, "#AVSBAR synchronizer.rate will be set to 1 with enqueued audio duration %f sec. Previous rate: %f", v30, 0x16u);
    OUTLINED_FUNCTION_14();
    MEMORY[0x1B2739FD0]();
  }

  sub_1B1A8E474(0, &qword_1ED9A9940, 0x1E69E9610);
  (*(v21 + 104))(v26, *MEMORY[0x1E69E7F90], v18);
  v32 = sub_1B1C2D168();
  (*(v21 + 8))(v26, v18);
  v45 = sub_1B1B7E1D4;
  v46 = v1;
  OUTLINED_FUNCTION_2_2();
  v42 = 1107296256;
  OUTLINED_FUNCTION_25_0();
  v43 = v33;
  v44 = &block_descriptor_95;
  v34 = _Block_copy(aBlock);

  sub_1B1C2C9A8();
  OUTLINED_FUNCTION_15_15();
  sub_1B1A979CC(v35, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761900, &unk_1B1C38430);
  sub_1B1A97978(&qword_1ED9A8DB0, &unk_1EB761900, &unk_1B1C38430);
  sub_1B1C2D418();
  MEMORY[0x1B2738610](0, v17, v9, v34);
  _Block_release(v34);

  (*(v40 + 8))(v9, v2);
  (*(v38 + 8))(v17, v39);
}

void sub_1B1B79318(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 56));
  sub_1B1B79658((a1 + 60), &v22);
  os_unfair_lock_unlock((a1 + 56));
  if (v22 == 1)
  {
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v3 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v3, qword_1ED9A9120);
    oslog = sub_1B1C2C888();
    v4 = sub_1B1C2D098();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      v6 = "#AVSBAR already stopped or paused: will not resume rate";
      v7 = v4;
      v8 = oslog;
      v9 = v5;
      v10 = 2;
LABEL_18:
      _os_log_impl(&dword_1B1A8A000, v8, v7, v6, v9, v10);
      MEMORY[0x1B2739FD0](v5, -1, -1);
      goto LABEL_19;
    }

    goto LABEL_19;
  }

  v11 = mach_absolute_time();
  LODWORD(v12) = 1.0;
  [*(a1 + 40) setRate_];
  v13 = mach_absolute_time();
  if (v13 < v11)
  {
    __break(1u);
  }

  else
  {
    v1 = (v13 - v11);
    if (qword_1ED9A5270 == -1)
    {
      goto LABEL_8;
    }
  }

  swift_once();
LABEL_8:
  if (*&qword_1ED9AA500 * v1 > 0.25)
  {
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v14 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v14, qword_1ED9A9120);
    v15 = sub_1B1C2C888();
    v16 = sub_1B1C2D0B8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 134217984;
      *(v17 + 4) = *&qword_1ED9AA500 * v1;
      _os_log_impl(&dword_1B1A8A000, v15, v16, "synchronizer play rate high latency: %f sec", v17, 0xCu);
      MEMORY[0x1B2739FD0](v17, -1, -1);
    }
  }

  if (qword_1ED9A9288 != -1)
  {
    swift_once();
  }

  v18 = sub_1B1C2C8A8();
  __swift_project_value_buffer(v18, qword_1ED9A9120);

  oslog = sub_1B1C2C888();
  v19 = sub_1B1C2D098();

  if (os_log_type_enabled(oslog, v19))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    [*(a1 + 40) rate];
    *(v5 + 4) = v20;
    v6 = "#AVSBAR synchronizer.rate was set to 1. Current rate: %f";
    v7 = v19;
    v8 = oslog;
    v9 = v5;
    v10 = 12;
    goto LABEL_18;
  }

LABEL_19:
}

uint64_t sub_1B1B79658@<X0>(_BYTE *a1@<X0>, _BYTE *a2@<X8>)
{
  v2 = *a1;
  v3 = 1;
  switch(*a1)
  {
    case 3:
      goto LABEL_7;
    default:
      v5 = sub_1B1C2D7A8();

      if (v5)
      {
        v3 = 1;
      }

      else
      {
        if (v2)
        {
          v3 = sub_1B1C2D7A8();
        }

        else
        {
          v3 = 1;
        }

LABEL_7:
      }

      *a2 = v3 & 1;
      return result;
  }
}

void sub_1B1B797C4(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v2 = (*(a1 + 24) == *(a1 + 32) ? sub_1B1B7AB80() : sub_1B1B7988C(a1));
    v3 = v2;
    v4 = *(a1 + 16);
    *(a1 + 16) = v2;
    target = v2;

    if (v3)
    {
      if (*(a1 + 64) == 1)
      {
        CMSetAttachment(target, *MEMORY[0x1E69604C0], *MEMORY[0x1E695E4D0], 0);
      }
    }
  }
}

uint64_t sub_1B1B7988C(void *a1)
{
  v150[1] = *MEMORY[0x1E69E9840];
  v5 = a1[3];
  v4 = a1[4];
  v6 = v4 - v5;
  if (__OFSUB__(v4, v5))
  {
    __break(1u);
    goto LABEL_44;
  }

  v7 = v1;
  v150[0] = 0;
  v9 = *(v7 + 96);
  v3 = v9[5];
  v10 = MEMORY[0x1E695E480];
  if (v3)
  {
    v11 = *MEMORY[0x1E695E480];
    destinationBuffer[0] = 0;

    OUTLINED_FUNCTION_35_9();
    v2 = CMBlockBufferCreateWithMemoryBlock(v12, v13, v14, v15, v16, v17, v6, 1u, destinationBuffer);
    result = sub_1B1C2C958();
    if (v2 != result)
    {
LABEL_7:
      v20 = destinationBuffer[0];

      goto LABEL_10;
    }

    if (destinationBuffer[0])
    {
      v2 = CMBlockBufferReplaceDataBytes((v3 + v5), destinationBuffer[0], 0, v6);
      if (v2 == sub_1B1C2C958())
      {
        v150[0] = destinationBuffer[0];
        v19 = destinationBuffer[0];
        v2 = sub_1B1C2C958();
      }

      goto LABEL_7;
    }

LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v21 = v7;
  OUTLINED_FUNCTION_11_0();
  result = swift_beginAccess();
  v3 = v9[8];
  if (v3 >> 60 == 15)
  {
    __break(1u);
    goto LABEL_46;
  }

  v22 = v9[7];

  sub_1B1B1C108(v22, v3);
  v2 = sub_1B1B778E0(v22, v3, v5, v6, v150);
  sub_1B1AA9670(v22, v3);

  v7 = v21;
  v10 = MEMORY[0x1E695E480];
LABEL_10:
  if (v2 != sub_1B1C2C958())
  {
    if (qword_1ED9A9288 == -1)
    {
LABEL_17:
      v34 = sub_1B1C2C8A8();
      OUTLINED_FUNCTION_12_1(v34, qword_1ED9A9120);
      v35 = sub_1B1C2C888();
      sub_1B1C2D0B8();
      v36 = OUTLINED_FUNCTION_19();
      if (os_log_type_enabled(v36, v37))
      {
        OUTLINED_FUNCTION_23_6();
        v38 = swift_slowAlloc();
        v39 = OUTLINED_FUNCTION_19_0();
        destinationBuffer[0] = v39;
        *v38 = 136315138;
        v40 = sub_1B1B269CC(v2);
        sub_1B1A930E4(v40, v41, destinationBuffer);
        OUTLINED_FUNCTION_37_7();
        *(v38 + 4) = v3;
        OUTLINED_FUNCTION_23_11();
        _os_log_impl(v42, v43, v44, v45, v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v39);
        v46 = OUTLINED_FUNCTION_6_20();
        MEMORY[0x1B2739FD0](v46);
        OUTLINED_FUNCTION_14();
        MEMORY[0x1B2739FD0]();
      }

      v47 = *MEMORY[0x1E696A768];
      sub_1B1C2CB58();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB762470, &qword_1B1C35D80);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1B1C361C0;
      v49 = *MEMORY[0x1E696A578];
      v50 = sub_1B1C2CB58();
      *(inited + 32) = v50;
      *(inited + 40) = v51;
      OUTLINED_FUNCTION_31_6(v50, MEMORY[0x1E69E6158]);
      *(inited + 48) = v52 + 9;
      *(inited + 56) = v53;
      OUTLINED_FUNCTION_38_6();
      v54 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v55 = OUTLINED_FUNCTION_32_9();
      sub_1B1B77D88(v55);
      goto LABEL_41;
    }

LABEL_44:
    OUTLINED_FUNCTION_0_0();
    swift_once();
    goto LABEL_17;
  }

  v149 = 0;
  v23 = *v10;
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v24 = *(v7 + 144);
  *destinationBuffer = *(v7 + 128);
  v147 = v24;
  v148 = *(v7 + 160);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_35_9();
  v32 = CMAudioFormatDescriptionCreate(v25, v26, v27, v28, v29, v30, 0, v31);
  result = sub_1B1C2C958();
  if (v32 != result)
  {
    if (qword_1ED9A9288 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v56 = sub_1B1C2C8A8();
    OUTLINED_FUNCTION_12_1(v56, qword_1ED9A9120);
    v57 = sub_1B1C2C888();
    sub_1B1C2D0B8();
    v58 = OUTLINED_FUNCTION_9_22();
    if (os_log_type_enabled(v58, v59))
    {
      OUTLINED_FUNCTION_23_6();
      v60 = swift_slowAlloc();
      v61 = OUTLINED_FUNCTION_19_0();
      destinationBuffer[0] = v61;
      *v60 = 136315138;
      v62 = sub_1B1B269CC(v32);
      sub_1B1A930E4(v62, v63, destinationBuffer);
      OUTLINED_FUNCTION_37_7();
      *(v60 + 4) = v3;
      OUTLINED_FUNCTION_29_8();
      _os_log_impl(v64, v65, v66, v67, v68, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v61);
      v69 = OUTLINED_FUNCTION_6_20();
      MEMORY[0x1B2739FD0](v69);
      OUTLINED_FUNCTION_14();
      MEMORY[0x1B2739FD0]();
    }

    v70 = *MEMORY[0x1E696A768];
    sub_1B1C2CB58();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB762470, &qword_1B1C35D80);
    v71 = swift_initStackObject();
    *(v71 + 16) = xmmword_1B1C361C0;
    v72 = *MEMORY[0x1E696A578];
    v73 = sub_1B1C2CB58();
    *(v71 + 32) = v73;
    *(v71 + 40) = v74;
    OUTLINED_FUNCTION_31_6(v73, MEMORY[0x1E69E6158]);
    *(v71 + 48) = v76;
    *(v71 + 56) = v75;
    OUTLINED_FUNCTION_38_6();
    v77 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v78 = OUTLINED_FUNCTION_32_9();
    sub_1B1B77D88(v78);
LABEL_40:

LABEL_41:
    v119 = 0;
    goto LABEL_42;
  }

  sbuf = 0;
  if (a1[5] < 1 || (v33 = a1[6], v33 == a1[7]))
  {
    if (v149)
    {
      *(v7 + 152);
      v91 = *(v7 + 80);
      destinationBuffer[0] = *(v7 + 64);
      destinationBuffer[1] = *(v7 + 72);
      *&v147 = v91;
      OUTLINED_FUNCTION_28_6();
      v100 = CMAudioSampleBufferCreateWithPacketDescriptions(v92, v93, v94, v95, v96, v97, v98, v99, 0, &sbuf);
LABEL_31:
      if (v100 == sub_1B1C2C958())
      {
        result = sbuf;
        if (sbuf)
        {
          CMSampleBufferGetOutputPresentationTimeStamp(destinationBuffer, sbuf);
          result = sbuf;
          if (sbuf)
          {
            v111 = destinationBuffer[0];
            v112 = destinationBuffer[1];
            v113 = v147;
            CMSampleBufferGetOutputDuration(destinationBuffer, sbuf);
            v114 = destinationBuffer[0];
            v115 = v147;
            v116 = destinationBuffer[1];
            destinationBuffer[0] = v111;
            destinationBuffer[1] = v112;
            *&v147 = v113;
            rhs.value = v114;
            *&rhs.timescale = v116;
            rhs.epoch = v115;
            CMTimeAdd(&v143, destinationBuffer, &rhs);
            epoch = v143.epoch;
            v118 = *&v143.timescale;
            *(v7 + 64) = v143.value;
            *(v7 + 72) = v118;
            *(v7 + 80) = epoch;
            v119 = sbuf;

LABEL_42:
            v139 = *MEMORY[0x1E69E9840];
            return v119;
          }

          goto LABEL_49;
        }

LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      if (qword_1ED9A9288 != -1)
      {
        OUTLINED_FUNCTION_0_0();
        swift_once();
      }

      v120 = sub_1B1C2C8A8();
      OUTLINED_FUNCTION_12_1(v120, qword_1ED9A9120);
      v121 = sub_1B1C2C888();
      v122 = sub_1B1C2D0B8();
      v123 = OUTLINED_FUNCTION_9_22();
      if (os_log_type_enabled(v123, v124))
      {
        OUTLINED_FUNCTION_23_6();
        v125 = swift_slowAlloc();
        v126 = OUTLINED_FUNCTION_19_0();
        destinationBuffer[0] = v126;
        *v125 = 136315138;
        v127 = sub_1B1B269CC(v100);
        sub_1B1A930E4(v127, v128, destinationBuffer);
        OUTLINED_FUNCTION_37_7();
        *(v125 + 4) = v3;
        _os_log_impl(&dword_1B1A8A000, v121, v122, "Error in CMAudioSampleBufferCreateWithPacketDescriptions, code: %s", v125, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v126);
        v129 = OUTLINED_FUNCTION_6_20();
        MEMORY[0x1B2739FD0](v129);
        OUTLINED_FUNCTION_14();
        MEMORY[0x1B2739FD0]();
      }

      v130 = *MEMORY[0x1E696A768];
      sub_1B1C2CB58();
      OUTLINED_FUNCTION_27_10();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB762470, &qword_1B1C35D80);
      v131 = swift_initStackObject();
      *(v131 + 16) = xmmword_1B1C361C0;
      v132 = *MEMORY[0x1E696A578];
      v133 = sub_1B1C2CB58();
      *(v131 + 32) = v133;
      *(v131 + 40) = v134;
      OUTLINED_FUNCTION_31_6(v133, MEMORY[0x1E69E6158]);
      *(v131 + 48) = v135 + 17;
      *(v131 + 56) = v136;
      OUTLINED_FUNCTION_38_6();
      v137 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v138 = OUTLINED_FUNCTION_13_20();
      sub_1B1B77D88(v138);

      goto LABEL_40;
    }

LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v79 = *(v7 + 96);
  v80 = v79[5];
  if (v80)
  {
    p_blockBufferOut = &blockBufferOut;
    v81 = v149;
    if (!v149)
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v3 = v80 + v33;
    v82 = a1[5];
    v83 = *(v7 + 64);
    v84 = *(v7 + 80);

    destinationBuffer[0] = v83;
    destinationBuffer[1] = *(v7 + 72);
    *&v147 = v84;
    blockBufferOut = v3;
    p_sbuf = &sbuf;
    OUTLINED_FUNCTION_28_6();
    v100 = CMAudioSampleBufferCreateWithPacketDescriptions(v85, v86, v87, v88, v89, v81, v82, v90, blockBufferOut, p_sbuf);
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_11_0();
  result = swift_beginAccess();
  if (v79[8] >> 60 != 15)
  {
    v101 = v79[7];
    swift_retain_n();
    swift_retain_n();

    v102 = OUTLINED_FUNCTION_42_0();
    sub_1B1B1C108(v102, v103);
    v104 = OUTLINED_FUNCTION_42_0();
    v100 = sub_1B1B774F0(v104, v105, v33, v106, v107, a1, v7, v108);
    v109 = OUTLINED_FUNCTION_42_0();
    sub_1B1AA9670(v109, v110);

LABEL_30:

    goto LABEL_31;
  }

LABEL_51:
  __break(1u);
  return result;
}

uint64_t sub_1B1B7A1A0(uint64_t a1, const void *a2, size_t a3, id *a4)
{
  destinationBuffer[1] = *MEMORY[0x1E69E9840];
  destinationBuffer[0] = 0;
  OUTLINED_FUNCTION_35_9();
  v13 = CMBlockBufferCreateWithMemoryBlock(v7, v8, v9, v10, v11, v12, v9, 1u, destinationBuffer);
  result = sub_1B1C2C958();
  if (v13 != result)
  {
    goto LABEL_5;
  }

  if (destinationBuffer[0])
  {
    v13 = CMBlockBufferReplaceDataBytes(a2, destinationBuffer[0], 0, a3);
    if (v13 == sub_1B1C2C958())
    {

      v15 = destinationBuffer[0];
      *a4 = destinationBuffer[0];
      v16 = v15;
      v13 = sub_1B1C2C958();
    }

LABEL_5:

    v17 = *MEMORY[0x1E69E9840];
    return v13;
  }

  __break(1u);
  return result;
}

void sub_1B1B7A28C(char *a1, void (*a2)(void))
{
  sub_1B1B7A2F8(a1, 0, 0);
  if (!v2)
  {
    if (a2)
    {

      a2(0);
      sub_1B1A949B4(a2);
    }
  }
}

void sub_1B1B7A2F8(char *a1, void (*a2)(void), uint64_t a3)
{
  v5 = v3;
  os_unfair_lock_lock((v5 + 56));
  sub_1B1B7A850((v5 + 60), v55);
  if (v4)
  {
    os_unfair_lock_unlock((v5 + 56));
    __break(1u);
    return;
  }

  os_unfair_lock_unlock((v5 + 56));
  if (v55[0])
  {
    v9 = &a1[OBJC_IVAR___SiriTTSAudioData_audioData];
    OUTLINED_FUNCTION_11_0();
    swift_beginAccess();
    if (sub_1B1AA5F48(*v9, *(v9 + 1)))
    {
      if (qword_1ED9A9288 != -1)
      {
        OUTLINED_FUNCTION_0_0();
        swift_once();
      }

      v10 = sub_1B1C2C8A8();
      __swift_project_value_buffer(v10, qword_1ED9A9120);
      v11 = sub_1B1C2C888();
      sub_1B1C2D0B8();
      v12 = OUTLINED_FUNCTION_19();
      if (os_log_type_enabled(v12, v13))
      {
        OUTLINED_FUNCTION_45_0();
        v14 = swift_slowAlloc();
        *v14 = 0;
        OUTLINED_FUNCTION_23_11();
        _os_log_impl(v15, v16, v17, v18, v14, 2u);
        OUTLINED_FUNCTION_14();
        MEMORY[0x1B2739FD0]();
      }

      if (!a2)
      {
        return;
      }

LABEL_15:
      a2(0);
      return;
    }

    v54 = a3;
    [*(v5 + 24) lock];
    if (qword_1ED9A9288 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v57 = 0;
    v25 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v25, qword_1ED9A9120);
    v26 = a1;
    v27 = sub_1B1C2C888();
    v28 = sub_1B1C2D098();

    if (os_log_type_enabled(v27, v28))
    {
      OUTLINED_FUNCTION_23_6();
      v29 = swift_slowAlloc();
      *v29 = 134217984;
      AudioData.duration.getter();
      *(v29 + 4) = v30;
      _os_log_impl(&dword_1B1A8A000, v27, v28, "Will add to enqueuedMappedAudioInfo: %f sec", v29, 0xCu);
      v31 = OUTLINED_FUNCTION_6_20();
      MEMORY[0x1B2739FD0](v31);
    }

    type metadata accessor for AVSBARPlayback.AudioMappedInfoAVSBAR();
    v32 = swift_allocObject();
    *(v32 + 16) = 0u;
    *(v32 + 32) = 0u;
    *(v32 + 48) = 0u;
    *(v32 + 64) = 0;
    *(v32 + 72) = 0;
    *(v32 + 80) = 0;
    v33 = *(v5 + 96);
    v34 = *v9;
    v35 = *(v9 + 1);

    sub_1B1AA64DC(v34, v35);
    v36 = sub_1B1B1BD94(v34, v35);
    v38 = v37;
    sub_1B1A94524(v34, v35);

    *(v32 + 24) = v36;
    *(v32 + 32) = v38;
    v39 = OBJC_IVAR___SiriTTSAudioData_packetCount;
    OUTLINED_FUNCTION_11_0();
    swift_beginAccess();
    *(v32 + 40) = *&v26[v39];
    v40 = *(v5 + 96);
    v41 = &v26[OBJC_IVAR___SiriTTSAudioData_packetDescriptions];
    OUTLINED_FUNCTION_11_0();
    swift_beginAccess();
    v43 = *v41;
    v42 = v41[1];

    sub_1B1AA64DC(v43, v42);
    v44 = sub_1B1B1BD94(v43, v42);
    v46 = v45;
    sub_1B1A94524(v43, v42);

    *(v32 + 48) = v44;
    *(v32 + 56) = v46;
    *(v32 + 72) = a2;
    *(v32 + 80) = v54;
    sub_1B1A94514(a2);
    sub_1B1A949B4(0);
    OUTLINED_FUNCTION_15_1();
    swift_beginAccess();

    MEMORY[0x1B2738320](v47);
    sub_1B1B3E0D4(*((*(v5 + 104) & 0xFFFFFFFFFFFFFF8) + 0x10));
    sub_1B1C2CEC8();
    swift_endAccess();

    v48 = sub_1B1C2C888();
    v49 = sub_1B1C2D098();

    if (os_log_type_enabled(v48, v49))
    {
      OUTLINED_FUNCTION_23_6();
      v50 = swift_slowAlloc();
      *v50 = 134217984;
      OUTLINED_FUNCTION_11_0();
      swift_beginAccess();
      v51 = *(v5 + 144);
      v55[0] = *(v5 + 128);
      v55[1] = v51;
      v56 = *(v5 + 160);
      sub_1B1B77C90(v55, *v55, *&v51, v52);
      *(v50 + 4) = v53;
      _os_log_impl(&dword_1B1A8A000, v48, v49, "Did add to enqueuedMappedAudioInfo: %f sec", v50, 0xCu);
      OUTLINED_FUNCTION_14();
      MEMORY[0x1B2739FD0]();
    }

    [*(v5 + 24) unlock];
    sub_1B1B7A9C4();
  }

  else
  {
    if (qword_1ED9A9288 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v19 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v19, qword_1ED9A9120);
    v20 = sub_1B1C2C888();
    v21 = sub_1B1C2D0B8();
    v22 = OUTLINED_FUNCTION_9_22();
    if (os_log_type_enabled(v22, v23))
    {
      OUTLINED_FUNCTION_45_0();
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1B1A8A000, v20, v21, "#AVSBAR already stopped or waiting for finish: will not enqueue more", v24, 2u);
      OUTLINED_FUNCTION_14();
      MEMORY[0x1B2739FD0]();
    }

    OUTLINED_FUNCTION_15_0();
    swift_beginAccess();
    *(v5 + 168) = 1;
    if (a2)
    {
      goto LABEL_15;
    }
  }
}

uint64_t sub_1B1B7A850@<X0>(_BYTE *a1@<X0>, _BYTE *a2@<X8>)
{
  v2 = *a1;
  switch(*a1)
  {
    case 3:
      goto LABEL_5;
    default:
      v4 = sub_1B1C2D7A8();

      v6 = 0;
      if ((v4 & 1) == 0)
      {
        if (v2 > 1)
        {
LABEL_5:

          v6 = 0;
        }

        else
        {
          v7 = sub_1B1C2D7A8();

          v6 = v7 ^ 1;
        }
      }

      *a2 = v6 & 1;
      return result;
  }
}

void sub_1B1B7A9C4()
{
  if ((*(v0 + 112) & 1) == 0)
  {
    v1 = v0;
    *(v0 + 112) = 1;
    v2 = qword_1EB762980;
    if (qword_1EB762980)
    {
      v3 = *(v0 + 40);
      sub_1B1A8E474(0, &qword_1EB7629C8, 0x1E6988140);
      v4 = v3;
      v5 = v2;
      v6 = sub_1B1C2D248();

      if (v6)
      {
        byte_1EB762988 = 1;
      }
    }

    v7 = *(v1 + 32);
    v8 = *(v1 + 48);
    OUTLINED_FUNCTION_17();
    v9 = swift_allocObject();
    swift_weakInit();
    v18 = sub_1B1B7E1CC;
    v19 = v9;
    v14 = MEMORY[0x1E69E9820];
    v15 = 1107296256;
    OUTLINED_FUNCTION_25_0();
    v16 = v10;
    v17 = &block_descriptor_92;
    v11 = _Block_copy(&v14);
    v12 = v7;
    v13 = v8;

    [v12 requestMediaDataWhenReadyOnQueue:v13 usingBlock:{v11, v14, v15}];
    _Block_release(v11);
  }
}

uint64_t sub_1B1B7AB28()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B1B7B384();
  }

  return result;
}

uint64_t sub_1B1B7AB80()
{
  blockBufferOut[1] = *MEMORY[0x1E69E9840];
  v1 = calloc(2uLL, 0x800uLL);
  blockBufferOut[0] = 0;
  v2 = *MEMORY[0x1E695E480];
  v3 = *MEMORY[0x1E695E488];
  OUTLINED_FUNCTION_35_9();
  v10 = CMBlockBufferCreateWithMemoryBlock(v4, v5, v6, v7, v8, v9, 0x1000uLL, 0, blockBufferOut);
  if (v10 == sub_1B1C2C958())
  {
    v68 = 0;
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_35_9();
    v18 = CMAudioFormatDescriptionCreate(v11, v12, v13, v14, v15, v16, 0, v17);
    result = sub_1B1C2C958();
    if (v18 == result)
    {
      v67[3] = 0;
      __break(1u);
      return result;
    }

    if (qword_1ED9A9288 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v41 = sub_1B1C2C8A8();
    OUTLINED_FUNCTION_12_1(v41, qword_1ED9A9120);
    v42 = sub_1B1C2C888();
    sub_1B1C2D0B8();
    v43 = OUTLINED_FUNCTION_19();
    if (os_log_type_enabled(v43, v44))
    {
      OUTLINED_FUNCTION_23_6();
      v45 = swift_slowAlloc();
      v46 = OUTLINED_FUNCTION_19_0();
      v67[0] = v46;
      *v45 = 136315138;
      v47 = sub_1B1B269CC(v18);
      sub_1B1A930E4(v47, v48, v67);
      OUTLINED_FUNCTION_37_7();
      *(v45 + 4) = v0;
      OUTLINED_FUNCTION_12_15();
      _os_log_impl(v49, v50, v51, v52, v53, v54);
      __swift_destroy_boxed_opaque_existential_0(v46);
      v55 = OUTLINED_FUNCTION_6_20();
      MEMORY[0x1B2739FD0](v55);
      v56 = OUTLINED_FUNCTION_10_0();
      MEMORY[0x1B2739FD0](v56);
    }

    v57 = *MEMORY[0x1E696A768];
    sub_1B1C2CB58();
    OUTLINED_FUNCTION_27_10();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB762470, &qword_1B1C35D80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B1C361C0;
    v59 = *MEMORY[0x1E696A578];
    v60 = sub_1B1C2CB58();
    *(inited + 32) = v60;
    *(inited + 40) = v61;
    OUTLINED_FUNCTION_40_6(v60, MEMORY[0x1E69E6158]);
    *(inited + 48) = v62 + 19;
    *(inited + 56) = v63;
    OUTLINED_FUNCTION_38_6();
    v64 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v65 = OUTLINED_FUNCTION_13_20();
    sub_1B1B77D88(v65);
  }

  else
  {
    if (qword_1ED9A9288 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v20 = sub_1B1C2C8A8();
    OUTLINED_FUNCTION_12_1(v20, qword_1ED9A9120);
    v21 = sub_1B1C2C888();
    v22 = sub_1B1C2D0B8();
    v23 = OUTLINED_FUNCTION_9_22();
    if (os_log_type_enabled(v23, v24))
    {
      OUTLINED_FUNCTION_23_6();
      v25 = swift_slowAlloc();
      v26 = OUTLINED_FUNCTION_19_0();
      v67[0] = v26;
      *v25 = 136315138;
      v27 = sub_1B1B269CC(v10);
      v29 = sub_1B1A930E4(v27, v28, v67);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_1B1A8A000, v21, v22, "Error in creating block buffer for Silence buffer, code: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      OUTLINED_FUNCTION_14();
      MEMORY[0x1B2739FD0]();
      v30 = OUTLINED_FUNCTION_6_20();
      MEMORY[0x1B2739FD0](v30);
    }

    v31 = *MEMORY[0x1E696A768];
    v32 = sub_1B1C2CB58();
    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB762470, &qword_1B1C35D80);
    v35 = swift_initStackObject();
    *(v35 + 16) = xmmword_1B1C361C0;
    v36 = *MEMORY[0x1E696A578];
    *(v35 + 32) = sub_1B1C2CB58();
    *(v35 + 40) = v37;
    *(v35 + 72) = MEMORY[0x1E69E6158];
    *(v35 + 48) = 0xD000000000000031;
    *(v35 + 56) = 0x80000001B1C50400;
    v38 = sub_1B1C2CAB8();
    v39 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v40 = sub_1B1B1AE5C(v32, v34, v10, v38);
    sub_1B1B77D88(v40);
    free(v1);
  }

  v66 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_1B1B7B1DC()
{
  v1 = v0;
  [*(v0 + 24) lock];
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v2 = *(v0 + 104);

  v4 = sub_1B1B77A48(v3);

  if (v4)
  {
    *(v4 + 64) = 1;
  }

  else
  {
    type metadata accessor for AVSBARPlayback.AudioMappedInfoAVSBAR();
    v5 = swift_allocObject();
    *(v5 + 16) = 0u;
    *(v5 + 32) = 0u;
    *(v5 + 72) = 0;
    *(v5 + 80) = 0;
    v6 = *(*(v1 + 96) + 32);
    *(v5 + 24) = v6;
    *(v5 + 32) = v6;
    *(v5 + 48) = v6;
    *(v5 + 56) = v6;
    *(v5 + 64) = 1;
    OUTLINED_FUNCTION_15_1();
    v7 = swift_beginAccess();
    MEMORY[0x1B2738320](v7);
    sub_1B1B3E0D4(*((*(v1 + 104) & 0xFFFFFFFFFFFFFF8) + 0x10));
    sub_1B1C2CEC8();
    swift_endAccess();
  }

  [*(v1 + 24) unlock];
  if (qword_1ED9A9288 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v8 = sub_1B1C2C8A8();
  OUTLINED_FUNCTION_12_1(v8, qword_1ED9A9120);
  v9 = sub_1B1C2C888();
  sub_1B1C2D098();
  v10 = OUTLINED_FUNCTION_37_0();
  if (os_log_type_enabled(v10, v11))
  {
    OUTLINED_FUNCTION_45_0();
    v12 = swift_slowAlloc();
    *v12 = 0;
    OUTLINED_FUNCTION_69();
    _os_log_impl(v13, v14, v15, v16, v12, 2u);
    OUTLINED_FUNCTION_14();
    MEMORY[0x1B2739FD0]();
  }
}

uint64_t sub_1B1B7B384()
{
  v1 = v0;
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  if (sub_1B1A9547C(*(v0 + 104)))
  {
    if (qword_1ED9A9288 != -1)
    {
LABEL_83:
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v2 = sub_1B1C2C8A8();
    OUTLINED_FUNCTION_12_1(v2, qword_1ED9A9120);

    v3 = sub_1B1C2C888();
    v4 = sub_1B1C2D0A8();

    if (os_log_type_enabled(v3, v4))
    {
      OUTLINED_FUNCTION_23_6();
      v5 = swift_slowAlloc();
      v6 = OUTLINED_FUNCTION_19_0();
      v74 = v6;
      *v5 = 136315138;
      v7 = 0xE600000000000000;
      v8 = sub_1B1B77DD8();
      v9 = 0x646573756170;
      switch(v8)
      {
        case 1:
          v10 = OUTLINED_FUNCTION_17_16();
          goto LABEL_8;
        case 2:
          OUTLINED_FUNCTION_19_9();
          OUTLINED_FUNCTION_44_3();
          break;
        case 3:
          v7 = 0xE700000000000000;
          v10 = OUTLINED_FUNCTION_25_8();
LABEL_8:
          v9 = v10 & 0xFFFFFFFFFFFFLL | 0x64000000000000;
          break;
        default:
          break;
      }

      v11 = sub_1B1A930E4(v9, v7, &v74);

      *(v5 + 4) = v11;
      _os_log_impl(&dword_1B1A8A000, v3, v4, "#AVSBAR Call to provide more audio data during state %s.", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      v12 = OUTLINED_FUNCTION_6_20();
      MEMORY[0x1B2739FD0](v12);
      v13 = OUTLINED_FUNCTION_10_0();
      MEMORY[0x1B2739FD0](v13);
    }
  }

  OUTLINED_FUNCTION_15_0();
  swift_beginAccess();
  v14 = &selRef_array;
  v15 = &selRef_array;
  v72 = 134217984;
  while ([*(v1 + 32) isReadyForMoreMediaData])
  {
    [*(v1 + 24) v14[126]];
    v16 = *(v1 + 104);
    if (v16 >> 62)
    {
      if (v16 < 0)
      {
        v48 = *(v1 + 104);
      }

      if (!sub_1B1C2D468())
      {
LABEL_47:
        [*(v1 + 24) v15[273]];
        break;
      }
    }

    else if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_47;
    }

    if ((v16 & 0xC000000000000001) != 0)
    {

      v17 = MEMORY[0x1B2738A20](0, v16);
    }

    else
    {
      if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_81;
      }

      v17 = *(v16 + 32);
    }

    OUTLINED_FUNCTION_15_1();
    swift_beginAccess();
    v18 = *(v1 + 104);
    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    *(v1 + 104) = v18;
    if (!isUniquelyReferenced_nonNull_bridgeObject || v18 < 0 || (v18 & 0x4000000000000000) != 0)
    {
      v18 = sub_1B1C00F10(v18);
      *(v1 + 104) = v18;
    }

    v20 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v20)
    {
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

    v21 = v20 - 1;
    v22 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x20);
    memmove(((v18 & 0xFFFFFFFFFFFFFF8) + 32), ((v18 & 0xFFFFFFFFFFFFFF8) + 40), 8 * (v20 - 1));
    *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) = v21;
    *(v1 + 104) = v18;
    swift_endAccess();

    sub_1B1B797C4(v17);
    [*(v1 + 24) v15[273]];
    v23 = v17[2];
    if (v23)
    {
      v24 = v23;
      CMSampleBufferGetOutputDuration(&time, v24);
      Seconds = CMTimeGetSeconds(&time);
      if (qword_1ED9A9288 != -1)
      {
        OUTLINED_FUNCTION_0_0();
        swift_once();
      }

      v26 = sub_1B1C2C8A8();
      OUTLINED_FUNCTION_12_1(v26, qword_1ED9A9120);

      v27 = sub_1B1C2C888();
      v28 = sub_1B1C2D098();

      if (os_log_type_enabled(v27, v28))
      {
        OUTLINED_FUNCTION_34_8();
        v29 = swift_slowAlloc();
        v30 = v15;
        v31 = swift_slowAlloc();
        *v29 = 138412546;
        v32 = *(v1 + 32);
        *(v29 + 4) = v32;
        *v31 = v32;
        *(v29 + 12) = 2048;
        *(v29 + 14) = Seconds;
        v33 = v32;
        _os_log_impl(&dword_1B1A8A000, v27, v28, "#AVSBAR Enqueuing to %@: %f sec", v29, 0x16u);
        sub_1B1A90C20(v31, &qword_1EB7625C0, &qword_1B1C37990);
        v15 = v30;
        v14 = &selRef_array;
        OUTLINED_FUNCTION_14();
        MEMORY[0x1B2739FD0]();
        OUTLINED_FUNCTION_14();
        MEMORY[0x1B2739FD0]();
      }

      v34 = mach_absolute_time();
      [*(v1 + 32) enqueueSampleBuffer_];
      v35 = mach_absolute_time();
      v36 = v35 >= v34;
      v37 = v35 - v34;
      if (!v36)
      {
        goto LABEL_82;
      }

      if (qword_1ED9A5270 != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v38 = v37;
      if (*&qword_1ED9AA500 * v37 > 0.25)
      {
        v39 = sub_1B1C2C888();
        v40 = sub_1B1C2D0B8();
        v41 = OUTLINED_FUNCTION_9_22();
        if (os_log_type_enabled(v41, v42))
        {
          OUTLINED_FUNCTION_23_6();
          v43 = swift_slowAlloc();
          *v43 = v72;
          *(v43 + 4) = *&qword_1ED9AA500 * v38;
          _os_log_impl(&dword_1B1A8A000, v39, v40, "renderer enqueueSampleBuffer high latency: %f sec", v43, 0xCu);
          OUTLINED_FUNCTION_14();
          MEMORY[0x1B2739FD0]();
        }
      }

      *(v1 + 88) = Seconds + *(v1 + 88);
      v44 = v17[9];
      if (v44)
      {
        v45 = v17[10];

        v44(0);
        sub_1B1A949B4(v44);
      }

      OUTLINED_FUNCTION_11_0();
      kdebug_trace();
    }

    else
    {
      *(v1 + 168) = 1;
      v46 = v17[9];
      if (v46)
      {
        v47 = v17[10];

        v46(0);
        sub_1B1A949B4(v46);
      }
    }
  }

  if (sub_1B1A9547C(*(v1 + 104)))
  {
    if (qword_1ED9A9288 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v49 = sub_1B1C2C8A8();
    OUTLINED_FUNCTION_12_1(v49, qword_1ED9A9120);
    swift_retain_n();
    v50 = sub_1B1C2C888();
    sub_1B1C2D098();
    v51 = OUTLINED_FUNCTION_19();
    if (os_log_type_enabled(v51, v52))
    {
      OUTLINED_FUNCTION_34_8();
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v53 = 138412546;
      v55 = *(v1 + 32);
      *(v53 + 4) = v55;
      *v54 = v55;
      *(v53 + 12) = 2048;
      v56 = sub_1B1A9547C(*(v1 + 104));
      v57 = v55;

      *(v53 + 14) = v56;

      OUTLINED_FUNCTION_23_11();
      _os_log_impl(v58, v59, v60, v61, v53, 0x16u);
      sub_1B1A90C20(v54, &qword_1EB7625C0, &qword_1B1C37990);
      v14 = &selRef_array;
      OUTLINED_FUNCTION_14();
      MEMORY[0x1B2739FD0]();
      OUTLINED_FUNCTION_14();
      MEMORY[0x1B2739FD0]();
    }

    else
    {
    }

    switch(sub_1B1B77DD8())
    {
      case 1u:
        OUTLINED_FUNCTION_17_16();
        goto LABEL_58;
      case 2u:
        OUTLINED_FUNCTION_49_5();
        goto LABEL_59;
      case 3u:
        OUTLINED_FUNCTION_25_8();
        goto LABEL_58;
      default:
LABEL_58:
        v62 = OUTLINED_FUNCTION_21_10();

        if ((v62 & 1) == 0)
        {
          break;
        }

LABEL_59:
        [*(v1 + 24) v14[126]];
        v63 = *(v1 + 104);
        result = sub_1B1A9547C(v63);
        if (!result)
        {
          goto LABEL_67;
        }

        v65 = result;
        if (result < 1)
        {
          __break(1u);
          return result;
        }

        for (i = 0; i != v65; ++i)
        {
          if ((v63 & 0xC000000000000001) != 0)
          {
            v67 = MEMORY[0x1B2738A20](i, v63);
          }

          else
          {
            v67 = *(v63 + 8 * i + 32);
          }

          sub_1B1B797C4(v67);
        }

LABEL_67:
        [*(v1 + 24) v15[273]];
        break;
    }
  }

  result = [*(v1 + 40) rate];
  if (v68 == 0.0)
  {
    v69 = sub_1B1B77DD8();
    switch(v69)
    {
      case 1:

        goto LABEL_74;
      case 2:
        OUTLINED_FUNCTION_19_9();
        break;
      case 3:
        OUTLINED_FUNCTION_25_8();
        break;
      default:
        break;
    }

    v70 = sub_1B1C2D7A8();

    if (v70)
    {
LABEL_74:
      if (*(v1 + 88) > 0.0)
      {
        return sub_1B1B78F2C();
      }
    }

    switch(v69)
    {
      case 2:
        OUTLINED_FUNCTION_49_5();
        return sub_1B1B78F2C();
      default:
        v71 = OUTLINED_FUNCTION_21_10();

        if (v71)
        {
          return sub_1B1B78F2C();
        }

        break;
    }
  }

  return result;
}