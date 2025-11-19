uint64_t sub_1B1AECCBC()
{
  v1 = *v0;
  if (v0[2])
  {
    v2 = v0[2];
  }

  else
  {
    v2 = sub_1B1B08790();
    v3 = v0[2];
    v0[2] = v2;
  }

  return v2;
}

uint64_t sub_1B1AECD40()
{
  v1 = v0 + OBJC_IVAR____TtC14SiriTTSService19TTSAssetStaticVoice_lazyAssetType;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC14SiriTTSService19TTSAssetStaticVoice_lazyAssetType));
  sub_1B1B604E8((v1 + 8), v0, &v3);
  os_unfair_lock_unlock(v1);
  return v3;
}

uint64_t sub_1B1AECDA0()
{
  v55[1] = *MEMORY[0x1E69E9840];
  v0 = sub_1B1C2C1C8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v0);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = v43 - v5;
  MEMORY[0x1EEE9AC00](v4);
  v9 = v43 - v8;
  p_cache = &OBJC_METACLASS___SiriTTSSynthesisResource.cache;
  v11 = qword_1ED9A96A8;
  if (qword_1ED9A96A8)
  {
  }

  else
  {
    v48 = v7;
    v12 = [objc_opt_self() defaultManager];
    if (qword_1ED9A9870 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v0, qword_1ED9AA650);
    v13 = sub_1B1C2C118();
    v54 = 0;
    v14 = [v12 contentsOfDirectoryAtURL:v13 includingPropertiesForKeys:0 options:1 error:&v54];

    v15 = v54;
    if (v14)
    {
      v16 = sub_1B1C2CE78();
      v17 = v15;

      v54 = MEMORY[0x1E69E7CC0];
      v19 = *(v16 + 16);
      if (v19)
      {
        v21 = v1 + 16;
        v20 = *(v1 + 16);
        v22 = *(v21 + 64);
        v43[1] = v16;
        v23 = v16 + ((v22 + 32) & ~v22);
        v53 = *(v21 + 56);
        v24 = (v21 - 8);
        v11 = MEMORY[0x1E69E7CC0];
        *&v18 = 136446210;
        v44 = v18;
        v52 = v6;
        v45 = v21;
        do
        {
          v20(v9, v23, v0);
          v20(v6, v9, v0);
          v25 = objc_allocWithZone(type metadata accessor for TTSAssetPreinstalledVoice());
          v26 = sub_1B1B63788(v6);
          if (v26)
          {
            v27 = v26;
            MEMORY[0x1B2738320]();
            if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1B1C2CE98();
            }

            sub_1B1C2CEC8();

            (*v24)(v9, v0);
            v11 = v54;
            v6 = v52;
          }

          else if (sub_1B1C2C0E8())
          {
            v50 = v11;
            v51 = sub_1B1C2D098();
            if (qword_1ED9A99C0 != -1)
            {
              swift_once();
            }

            v28 = qword_1ED9AA670;
            v29 = v48;
            v20(v48, v9, v0);
            v49 = v28;
            if (os_log_type_enabled(v28, v51))
            {
              v30 = swift_slowAlloc();
              v47 = swift_slowAlloc();
              v55[0] = v47;
              *v30 = v44;
              v46 = sub_1B1C2C098();
              v32 = v31;
              v33 = *v24;
              (*v24)(v29, v0);
              v34 = sub_1B1A930E4(v46, v32, v55);
              v6 = v52;

              *(v30 + 4) = v34;
              _os_log_impl(&dword_1B1A8A000, v49, v51, "Skip invalid voice folder '%{public}s'", v30, 0xCu);
              v35 = v47;
              __swift_destroy_boxed_opaque_existential_0(v47);
              MEMORY[0x1B2739FD0](v35, -1, -1);
              MEMORY[0x1B2739FD0](v30, -1, -1);
              v33(v9, v0);
            }

            else
            {
              v36 = v29;
              v37 = *v24;
              (*v24)(v36, v0);
              v37(v9, v0);
            }

            v11 = v50;
          }

          else
          {
            (*v24)(v9, v0);
          }

          v23 += v53;
          --v19;
        }

        while (v19);

        p_cache = (&OBJC_METACLASS___SiriTTSSynthesisResource + 16);
      }

      else
      {

        v11 = MEMORY[0x1E69E7CC0];
      }

      v40 = p_cache[213];
      p_cache[213] = v11;
    }

    else
    {
      v38 = v54;
      v39 = sub_1B1C2C058();

      swift_willThrow();
      sub_1B1C2D0B8();
      if (qword_1ED9A99C0 != -1)
      {
        swift_once();
      }

      v11 = MEMORY[0x1E69E7CC0];
      sub_1B1C2C7C8();
    }
  }

  v41 = *MEMORY[0x1E69E9840];
  return v11;
}

void sub_1B1AED35C()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriTTSService19TTSAssetStaticVoice_attr);
  sub_1B1A93AEC(0xD000000000000016, 0x80000001B1C4DE10, v1);
  if (v27)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F10, &unk_1B1C37DA0);
    if (OUTLINED_FUNCTION_33_6())
    {
      goto LABEL_7;
    }
  }

  else
  {
    sub_1B1A90C78(v26, &qword_1EB761DE0, &qword_1B1C352C0);
  }

  v2 = OUTLINED_FUNCTION_16_16();
  sub_1B1A93AEC(v2, 0xE900000000000073, v1);
  if (v27)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F10, &unk_1B1C37DA0);
    if (OUTLINED_FUNCTION_33_6())
    {
LABEL_7:
      v3 = v24;
      goto LABEL_10;
    }
  }

  else
  {
    sub_1B1A90C78(v26, &qword_1EB761DE0, &qword_1B1C352C0);
  }

  v3 = sub_1B1B616FC();
LABEL_10:
  v4 = *(v3 + 16);
  if (v4)
  {
    v25 = MEMORY[0x1E69E7CC0];
    sub_1B1AC9FA8();
    v5 = v25;
    sub_1B1A8EDAC();
    v6 = (v3 + 40);
    do
    {
      v7 = *v6;
      v26[0] = *(v6 - 1);
      v26[1] = v7;
      OUTLINED_FUNCTION_4();
      v8 = sub_1B1C2D398();
      v10 = v9;
      v11 = *(v25 + 16);
      if (v11 >= *(v25 + 24) >> 1)
      {
        sub_1B1AC9FA8();
      }

      *(v25 + 16) = v11 + 1;
      v12 = v25 + 16 * v11;
      *(v12 + 32) = v8;
      *(v12 + 40) = v10;
      v6 += 2;
      --v4;
    }

    while (v4);
  }

  else
  {

    v5 = MEMORY[0x1E69E7CC0];
  }

  v13 = 0;
  v14 = *(v5 + 16);
  v15 = MEMORY[0x1E69E7CC0];
LABEL_18:
  for (i = (v5 + 40 + 16 * v13); ; i += 2)
  {
    if (v14 == v13)
    {

      return;
    }

    if (v13 >= *(v5 + 16))
    {
      break;
    }

    v18 = *(i - 1);
    v17 = *i;

    sub_1B1AED674();
    v19 = sub_1B1AC974C();

    if (v19)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v26[0] = v15;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v21 = *(v15 + 16);
        sub_1B1AC9FA8();
        v15 = v26[0];
      }

      v22 = *(v15 + 16);
      if (v22 >= *(v15 + 24) >> 1)
      {
        sub_1B1AC9FA8();
        v15 = v26[0];
      }

      ++v13;
      *(v15 + 16) = v22 + 1;
      v23 = v15 + 16 * v22;
      *(v23 + 32) = v18;
      *(v23 + 40) = v17;
      goto LABEL_18;
    }

    ++v13;
  }

  __break(1u);
}

uint64_t sub_1B1AED674()
{
  OUTLINED_FUNCTION_27_8(OBJC_IVAR____TtC14SiriTTSService19TTSAssetStaticVoice_attr);
  if (v0)
  {
    v1 = sub_1B1A8EB10();
    if (v2)
    {
      OUTLINED_FUNCTION_23_10(v1, v2, v3);
      if (OUTLINED_FUNCTION_8_18())
      {
        sub_1B1A8EDAC();
        v4 = sub_1B1C2D378();
        sub_1B1AC8BF0(v6, v7, v4);
      }
    }
  }

  return OUTLINED_FUNCTION_43_0();
}

uint64_t sub_1B1AED7D4()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 96);
  sub_1B1C2CAD8();
  v4 = sub_1B1C2C508();
  sub_1B1B1C340(v4);
  return v0;
}

uint64_t sub_1B1AED8BC(uint64_t a1, unint64_t a2)
{
  v47[0] = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761C70, &qword_1B1C36250);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B1C36280;
  *(inited + 32) = 0xD000000000000020;
  *(inited + 40) = 0x80000001B1C521A0;
  *(inited + 48) = 0xD000000000000024;
  *(inited + 56) = 0x80000001B1C521D0;
  objc_allocWithZone(MEMORY[0x1E696AE70]);

  v5 = sub_1B1AEDFA4(0xD000000000000020, 0x80000001B1C521A0, 0);
  if (v5)
  {
    OUTLINED_FUNCTION_8_24();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB763F50, &qword_1B1C407E0);
    sub_1B1AEDF30();
    sub_1B1A8EDAC();
    v6 = sub_1B1C2D268();
    v34 = v7;
    v36 = v6;
    v33 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_66();
    v8 = swift_allocObject();
    v8[2] = a1;
    v8[3] = a2;
    v8[4] = v47;
    v9 = swift_allocObject();
    v40 = sub_1B1BC8D00;
    *(v9 + 16) = sub_1B1BC8D00;
    *(v9 + 24) = v8;
    v45 = sub_1B1BC8D04;
    v46 = v9;
    aBlock = MEMORY[0x1E69E9820];
    v42 = 1107296256;
    v43 = sub_1B1BC87C0;
    v44 = &block_descriptor_35;
    v10 = _Block_copy(&aBlock);

    [v5 enumerateMatchesInString:v33 options:0 range:v36 usingBlock:{v34, v10}];

    _Block_release(v10);
    v11 = OUTLINED_FUNCTION_10_26();

    if (v11)
    {
      __break(1u);
      goto LABEL_30;
    }
  }

  else
  {
    v40 = 0;
  }

  v13 = objc_allocWithZone(MEMORY[0x1E696AE70]);
  if (sub_1B1AEDFA4(0xD000000000000024, 0x80000001B1C521D0, 0))
  {
    v16 = a2 & 0x2000000000000000;
    v17 = a1 & 0xFFFFFFFFFFFFLL;
    OUTLINED_FUNCTION_8_24();
    v39 = v18;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB763F50, &qword_1B1C407E0);
    sub_1B1AEDF30();
    sub_1B1A8EDAC();
    v19 = sub_1B1C2D268();
    v37 = v20;
    v38 = v19;
    v35 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_66();
    v21 = swift_allocObject();
    v21[2] = a1;
    v21[3] = a2;
    v21[4] = v47;

    sub_1B1A949B4(v40);
    v22 = swift_allocObject();
    *(v22 + 16) = sub_1B1BC8CF4;
    *(v22 + 24) = v21;
    v45 = sub_1B1BC8D04;
    v46 = v22;
    aBlock = MEMORY[0x1E69E9820];
    v42 = 1107296256;
    v43 = sub_1B1BC87C0;
    v44 = &block_descriptor_24;
    v23 = _Block_copy(&aBlock);

    [v39 enumerateMatchesInString:v35 options:0 range:v38 usingBlock:{v37, v23}];

    _Block_release(v23);
    LOBYTE(v23) = OUTLINED_FUNCTION_10_26();

    if ((v23 & 1) == 0)
    {
      swift_setDeallocating();
      sub_1B1AC9708();
      v14 = v47[0];
      v15 = *(v47[0] + 16);
      v24 = sub_1B1BC8CF4;
      if (!v15)
      {
        goto LABEL_27;
      }

      v40 = sub_1B1BC8CF4;
      goto LABEL_12;
    }

LABEL_30:
    __break(1u);
    return result;
  }

  swift_setDeallocating();
  sub_1B1AC9708();
  v14 = v47[0];
  v15 = *(v47[0] + 16);
  if (!v15)
  {
    goto LABEL_26;
  }

  v16 = a2 & 0x2000000000000000;
  v17 = a1 & 0xFFFFFFFFFFFFLL;
LABEL_12:

  v25 = (v14 + 40);
  v26 = 0.0;
  do
  {
    v28 = *(v25 - 1);
    v27 = *v25;
    sub_1B1C2CE08();
    v29 = COERCE_DOUBLE(sub_1B1C2CF28());
    if ((v30 & 1) != 0 || (v31 = v29 / 1000.0, v29 / 1000.0 <= 0.01))
    {
      v31 = 0.01;
      if (v28 < 0x4000)
      {
        goto LABEL_24;
      }

      v31 = 0.01;
    }

    else if (v28 < 0x4000)
    {
      goto LABEL_22;
    }

    v32 = v17;
    if (v16)
    {
      v32 = HIBYTE(a2) & 0xF;
    }

    if (v27 >> 14 == 4 * v32)
    {
LABEL_22:
      if (v31 > 0.1)
      {
        v31 = 0.1;
      }
    }

LABEL_24:
    v25 += 2;
    v26 = v26 + v31;
    --v15;
  }

  while (v15);

LABEL_26:
  v24 = v40;
LABEL_27:

  return sub_1B1A949B4(v24);
}

uint64_t sub_1B1AEDEDC()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_66();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

unint64_t sub_1B1AEDF30()
{
  result = qword_1EB763F58;
  if (!qword_1EB763F58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB763F50, &qword_1B1C407E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB763F58);
  }

  return result;
}

id sub_1B1AEDFA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1B1C2CB28();

  v11[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_1B1C2C058();

    swift_willThrow();
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t sub_1B1AEE088()
{
  v1 = sub_1B1AA95C4();
  if (v1)
  {
    v2 = v1;
    sub_1B1BC84BC(v0, &v28);
    v3 = *&v28;
    v4 = *(&v28 + 1);
    v5 = *&v29;
    v6 = *(&v29 + 4);
    ObjectType = swift_getObjectType();
    SynthesizingRequestProtocol.text.getter();
    v8 = sub_1B1C2CB28();

    v9 = SynthesizingRequestProtocol.voice.getter(ObjectType);
    v10 = &v9[OBJC_IVAR___SiriTTSSynthesisVoice_language];
    swift_beginAccess();
    v12 = *v10;
    v11 = *(v10 + 1);

    v13 = sub_1B1C2CB28();

    v14 = SiriTTSService_TransformEmojiWithLanguage(v8, v13);

    v15 = sub_1B1C2CB58();
    v17 = v16;

    sub_1B1AED8BC(v15, v17);
    v19 = v18;
    sub_1B1AE9388(v15, v17, &v28);
    v27 = v30;
    v20 = v28;
    v21 = v29;

    v22 = vmulq_f64(vcvtq_f64_f32(v6), vcvtq_f64_s64(v27));
    *&v23 = v19 + v3 * v20 + v4 * v21 + v5 * *(&v21 + 1) + v22.f64[0] + v22.f64[1];
    type metadata accessor for DataContainer();
    v24 = swift_allocObject();
    *(v24 + 16) = sub_1B1C2CAB8();
    sub_1B1AEE4F4(v23, 0);
    sub_1B1AA81A8();
  }

  else
  {
    sub_1B1A9EC9C();
    swift_allocError();
    *v26 = 1;
    *(v26 + 8) = 0xD00000000000003CLL;
    *(v26 + 16) = 0x80000001B1C51FE0;
    return swift_willThrow();
  }
}

uint64_t sub_1B1AEE318()
{
  v0 = sub_1B1A8EDAC();
  v1 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_15_5(v0, v2, v3, v4, v5, v6, v7, v8, MEMORY[0x1E69E6158], v0, v0, v0, 0, 0xE000000000000000, 38);
  v9 = OUTLINED_FUNCTION_0_32();
  OUTLINED_FUNCTION_15_5(v9, v10, v11, v12, v13, v14, v15, v16, v27, v28, v0, v0, 0, 0xE000000000000000, 19);
  OUTLINED_FUNCTION_0_32();

  OUTLINED_FUNCTION_15_5(v17, v18, v19, v20, v21, v22, v23, v24, v1, v0, v0, v0, 0, 0xE000000000000000, 60);
  v25 = OUTLINED_FUNCTION_0_32();

  return v25;
}

uint64_t sub_1B1AEE42C()
{
  v0 = sub_1B1A8EDAC();
  OUTLINED_FUNCTION_15_5(v0, v1, v2, v3, v4, v5, v6, v7, MEMORY[0x1E69E6158], v0, v0, v0, 0, 0xE000000000000000, 17);
  v19 = OUTLINED_FUNCTION_0_32();
  OUTLINED_FUNCTION_15_5(v19, v8, v9, v10, v11, v12, v13, v14, v17, v18, v0, v0, 0, 0xE000000000000000, 60);
  v15 = OUTLINED_FUNCTION_0_32();

  return v15;
}

uint64_t sub_1B1AEE4F4(uint64_t a1, char a2)
{
  if (a2)
  {
    a1 = 0;
    v2 = 0;
    v4[1] = 0;
    v4[2] = 0;
  }

  else
  {
    v2 = MEMORY[0x1E69E63B0];
  }

  v4[0] = a1;
  v4[3] = v2;
  return sub_1B1AA5E5C(v4);
}

double static DurationEstimator.roughEstimation(request:)(void *a1)
{
  type metadata accessor for ObjectPool();
  swift_initStackObject();
  ObjectPool.init()();
  type metadata accessor for RoughDurationEstimationAction();
  swift_initStackObject();

  RoughDurationEstimationAction.init(pool:)();
  type metadata accessor for DataContainer();
  inited = swift_initStackObject();
  *(inited + 16) = sub_1B1C2CAB8();
  v3 = a1;
  sub_1B1ACFA84(a1);
  sub_1B1AEE088();
  if (!sub_1B1AA8754())
  {
    if (qword_1ED9A9288 != -1)
    {
      OUTLINED_FUNCTION_3_1();
    }

    v10 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v10, qword_1ED9A9120);
    v11 = sub_1B1C2C888();
    v12 = sub_1B1C2D0B8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1B1A8A000, v11, v12, "DurationEstimator: Unable to get output", v13, 2u);
      OUTLINED_FUNCTION_11();
    }

    goto LABEL_13;
  }

  v4 = sub_1B1AEE920();
  if (v5)
  {
    if (qword_1ED9A9288 != -1)
    {
      OUTLINED_FUNCTION_3_1();
    }

    v6 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v6, qword_1ED9A9120);
    v7 = sub_1B1C2C888();
    v8 = sub_1B1C2D0B8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1B1A8A000, v7, v8, "DurationEstimator: DurationEstimator: Missing duration", v9, 2u);
      OUTLINED_FUNCTION_11();
    }

LABEL_13:

    return 0.0;
  }

  v15 = *&v4;

  return v15;
}

uint64_t sub_1B1AEE920()
{
  sub_1B1AA61C0(&v20);
  if (v21)
  {
    OUTLINED_FUNCTION_0_8(v0, v1, v2, MEMORY[0x1E69E63B0], v3, v4, v5, v6, v16, v18);
    v7 = swift_dynamicCast();
    return OUTLINED_FUNCTION_5_5(v7, v8, v9, v10, v11, v12, v13, v14, v17, v19);
  }

  else
  {
    sub_1B1A9937C(&v20);
    return 0;
  }
}

void sub_1B1AEE9E4(uint64_t a1, const char *a2, void *a3, uint64_t *a4)
{
  if (qword_1ED9A9288 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v8 = sub_1B1C2C8A8();
  __swift_project_value_buffer(v8, qword_1ED9A9120);
  v9 = sub_1B1C2C888();
  v10 = sub_1B1C2D0D8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1B1A8A000, v9, v10, a2, v11, 2u);
    MEMORY[0x1B2739FD0](v11, -1, -1);
  }

  v12 = *(a1 + 48);
  if (v12)
  {
    if (*a3 != -1)
    {
      swift_once();
    }

    v13 = *a4;

    [v12 postNotificationName:v13 object:0];
  }
}

void sub_1B1AEEB38()
{
  v1 = *(v0 + 72);
  v2 = OBJC_IVAR___SiriTTSInstrumentationMetrics_neuralFallback;
  OUTLINED_FUNCTION_66_0();
  *(v1 + v2) = 1;

  v3 = OBJC_IVAR___SiriTTSInstrumentationMetrics_errorCode;
  OUTLINED_FUNCTION_66_0();
  *(v1 + v3) = 103;
  OUTLINED_FUNCTION_19_2();
  sub_1B1AA149C();
  OUTLINED_FUNCTION_16_17();
  OUTLINED_FUNCTION_8_20();
}

uint64_t sub_1B1AEEBDC()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_metrics);
  v3 = OBJC_IVAR___SiriTTSInstrumentationMetrics_neuralFallback;
  OUTLINED_FUNCTION_66_0();
  *(v2 + v3) = 1;
  v4 = OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_encounteredIssues;
  OUTLINED_FUNCTION_67();
  sub_1B1AC69E8();
  v5 = *(*(v1 + v4) + 16);
  sub_1B1ACF958(v5);
  v6 = *(v1 + v4);
  *(v6 + 16) = v5 + 1;
  v7 = v6 + 24 * v5;
  *(v7 + 32) = 8;
  *(v7 + 40) = 0;
  *(v7 + 48) = 0;
  *(v1 + v4) = v6;
  return swift_endAccess();
}

id sub_1B1AEEC94()
{
  OUTLINED_FUNCTION_27_8(OBJC_IVAR____TtC14SiriTTSService19TTSAssetStaticVoice_attr);
  if (!v0)
  {
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_40_4();
  v1 = sub_1B1A8EB10();
  if ((v2 & 1) == 0)
  {
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_23_10(v1, v2, v3);
  if (!OUTLINED_FUNCTION_8_18())
  {
    goto LABEL_18;
  }

  v4 = v12 == 0x746361706D6F63 && v13 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_3() & 1) != 0)
  {

    if (qword_1ED9A97D8 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    v5 = &qword_1ED9A9830;
    goto LABEL_21;
  }

  v6 = v12 == 0x6D75696D657270 && v13 == 0xE700000000000000;
  if (v6 || (OUTLINED_FUNCTION_3() & 1) != 0)
  {

LABEL_18:
    if (qword_1ED9A9100 != -1)
    {
      OUTLINED_FUNCTION_2_0();
    }

    v5 = &qword_1ED9A90A8;
    goto LABEL_21;
  }

  v9 = v12 == 0x686D75696D657270 && v13 == 0xEB00000000686769;
  if (v9 || (OUTLINED_FUNCTION_3() & 1) != 0)
  {

    if (qword_1ED9A9628 != -1)
    {
      OUTLINED_FUNCTION_14_0();
    }

    v5 = &qword_1ED9A9598;
  }

  else
  {
    if (v12 == 1635018082 && v13 == 0xE400000000000000)
    {
    }

    else
    {
      v11 = OUTLINED_FUNCTION_3();

      if ((v11 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    if (qword_1EB7615E0 != -1)
    {
      swift_once();
    }

    v5 = &qword_1EB7625D8;
  }

LABEL_21:
  v7 = *v5;

  return v7;
}

void sub_1B1AEEEB8()
{
  OUTLINED_FUNCTION_39_0(OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_assetAttr);
  OUTLINED_FUNCTION_75_1();

  if (!v27)
  {
    sub_1B1A90C20(v26, &qword_1EB761DE0, &qword_1B1C352C0);
    goto LABEL_13;
  }

  v9 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_9_7(v1, v2, v3, v4, v5, v6, v7, v8, v23);
  if (!swift_dynamicCast())
  {
LABEL_13:
    sub_1B1C2D0B8();
    if (qword_1ED9A99B8 != -1)
    {
      OUTLINED_FUNCTION_0_12();
    }

    sub_1B1C2C7C8();
    goto LABEL_16;
  }

  v10 = v24 == OUTLINED_FUNCTION_36_2() && v25 == v0 + 7;
  if (!v10 && (OUTLINED_FUNCTION_8_6() & 1) == 0)
  {
    OUTLINED_FUNCTION_61_2();
    v16 = v10 && v25 == 0xE600000000000000;
    if (v16 || (OUTLINED_FUNCTION_8_6() & 1) != 0)
    {

      if (qword_1ED9A97B8 == -1)
      {
        goto LABEL_9;
      }

      goto LABEL_64;
    }

    OUTLINED_FUNCTION_49_1();
    v17 = v10 && v25 == 0xE700000000000000;
    if (v17 || (OUTLINED_FUNCTION_8_6() & 1) != 0)
    {

      if (qword_1ED9A97A8 == -1)
      {
        goto LABEL_9;
      }

      goto LABEL_64;
    }

    v18 = v24 == OUTLINED_FUNCTION_25_3() && v25 == 0xE600000000000000;
    if (v18 || (OUTLINED_FUNCTION_8_6() & 1) != 0)
    {

      if (qword_1ED9A9820 == -1)
      {
        goto LABEL_9;
      }

      goto LABEL_64;
    }

    v19 = v24 == (OUTLINED_FUNCTION_25_3() & 0xFFFFFFFFFFFFLL | 0x5841000000000000) && v25 == 0xE800000000000000;
    if (v19 || (OUTLINED_FUNCTION_8_6() & 1) != 0)
    {

      if (qword_1ED9A9698 == -1)
      {
        goto LABEL_9;
      }

      goto LABEL_64;
    }

    v20 = v24 == OUTLINED_FUNCTION_63() && v25 == 0xE700000000000000;
    if (v20 || (OUTLINED_FUNCTION_8_6() & 1) != 0)
    {

      if (qword_1ED9A8D90 == -1)
      {
        goto LABEL_9;
      }

      goto LABEL_64;
    }

    OUTLINED_FUNCTION_48_4();
    v21 = v10 && v25 == v0;
    if (v21 || (OUTLINED_FUNCTION_8_6() & 1) != 0)
    {

      if (qword_1ED9A5280 == -1)
      {
        goto LABEL_9;
      }

      goto LABEL_64;
    }

    sub_1B1C2D0B8();
    if (qword_1ED9A99B8 != -1)
    {
      OUTLINED_FUNCTION_0_12();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
    v22 = OUTLINED_FUNCTION_54_0();
    *(v22 + 16) = xmmword_1B1C361C0;
    *(v22 + 56) = v9;
    *(v22 + 64) = sub_1B1AC9204();
    *(v22 + 32) = v24;
    *(v22 + 40) = v25;
    OUTLINED_FUNCTION_46_2();
    OUTLINED_FUNCTION_53_2();

LABEL_16:
    sub_1B1A8E474(0, &qword_1ED9A9938, off_1E7AF1A90);
    v14 = OUTLINED_FUNCTION_11_1();
    sub_1B1ABAA54(v14, v15);
    OUTLINED_FUNCTION_76_2();
    return;
  }

  if (qword_1ED9A9890 != -1)
  {
LABEL_64:
    swift_once();
  }

LABEL_9:
  OUTLINED_FUNCTION_76_2();

  v13 = v11;
}

BOOL static TTSAsset.isBetterAsset(_:_:)(uint64_t *a1)
{
  v2 = *a1;
  OUTLINED_FUNCTION_2_31();
  v4 = *(v3 + 136);
  v5 = v4();
  OUTLINED_FUNCTION_0_34();
  v7 = *(v6 + 136);
  v8 = v7();
  sub_1B1A8E474(0, &qword_1ED9A9938, off_1E7AF1A90);
  v9 = sub_1B1C2D248();

  if ((v9 & 1) == 0)
  {
    v4();
    OUTLINED_FUNCTION_5_28();
    v41 = v7();
    v42 = sub_1B1AF22E4();
    if (v42 >> 62)
    {
      sub_1B1A8E474(0, &unk_1ED9A9950, &off_1E7AF1AA0);
      v43 = sub_1B1C2D668();
    }

    else
    {

      sub_1B1C2D7B8();
      sub_1B1A8E474(0, &unk_1ED9A9950, &off_1E7AF1AA0);
      v43 = v42;
    }

    v44 = static TTSAsset.isBetter(_:_:order:)(a1, v41, v43);

    return v44 & 1;
  }

  v10 = *a1;
  OUTLINED_FUNCTION_3_23();
  v12 = *(v11 + 128);
  v13 = v12();
  OUTLINED_FUNCTION_1_36();
  v15 = *(v14 + 128);
  v16 = v15();
  sub_1B1A8E474(0, &qword_1ED9A9838, off_1E7AF1A88);
  v17 = sub_1B1C2D248();

  if ((v17 & 1) == 0)
  {
    v12();
    OUTLINED_FUNCTION_5_28();
    v46 = v15();
    if (qword_1EB761848 != -1)
    {
      swift_once();
    }

    v47 = qword_1EB763FB0;
    goto LABEL_19;
  }

  v18 = *a1;
  OUTLINED_FUNCTION_3_23();
  v20 = *(v19 + 144);
  v21 = v20();
  OUTLINED_FUNCTION_1_36();
  v23 = *(v22 + 144);
  v24 = v23();
  sub_1B1A8E474(0, &qword_1ED9A97D0, off_1E7AF1A78);
  v25 = sub_1B1C2D248();

  if ((v25 & 1) == 0)
  {
    v20();
    OUTLINED_FUNCTION_5_28();
    v46 = v23();
    if (qword_1EB761850 != -1)
    {
      swift_once();
    }

    v47 = qword_1EB763FB8;
LABEL_19:
    if (v47 >> 62)
    {
      sub_1B1A8E474(0, &unk_1ED9A9950, &off_1E7AF1AA0);

      v48 = sub_1B1C2D668();

      v47 = v48;
    }

    else
    {

      sub_1B1C2D7B8();
      sub_1B1A8E474(0, &unk_1ED9A9950, &off_1E7AF1AA0);
    }

    v40 = static TTSAsset.isBetter(_:_:order:)(a1, v46, v47);

    goto LABEL_22;
  }

  v26 = *a1;
  OUTLINED_FUNCTION_3_23();
  v28 = *(v27 + 168);
  v29 = v28();
  OUTLINED_FUNCTION_1_36();
  v31 = *(v30 + 168);
  if (v29 == v31())
  {
    v32 = *a1;
    OUTLINED_FUNCTION_3_23();
    v34 = (*(v33 + 152))();
    v36 = v35;
    OUTLINED_FUNCTION_1_36();
    if ((*(v37 + 152))() != v34 || v38 != v36)
    {
      v40 = sub_1B1C2D7A8();

LABEL_22:

      return v40 & 1;
    }

    return 0;
  }

  else
  {
    v28();
    OUTLINED_FUNCTION_5_28();
    return v31() < a1;
  }
}

uint64_t sub_1B1AEF88C(char a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetProxyAsset_proxy_attr);
  v5 = sub_1B1AE3168(a1);
  sub_1B1A93AEC(v5, v6, v4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DE0, &qword_1B1C352C0);
  if (swift_dynamicCast())
  {
    return v8;
  }

  return a2;
}

void sub_1B1AEF968()
{
  OUTLINED_FUNCTION_53_0();
  v1 = v0;
  v2 = sub_1B1C2C998();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 48);
  sub_1B1C2D1B8();

  if (!*(v1 + 32))
  {
    v8 = *(v1 + 16);
    v9 = *(v1 + 24);
    sub_1B1A8E474(0, &qword_1ED9A9940, 0x1E69E9610);
    (*(v3 + 104))(v6, *MEMORY[0x1E69E7F98], v2);
    v10 = sub_1B1C2D168();
    v11 = *(v3 + 8);
    v12 = OUTLINED_FUNCTION_33();
    v13(v12);
    v14 = sub_1B1C2CBF8();
    v15 = xpc_connection_create((v14 + 32), v10);

    v21[4] = nullsub_1;
    v21[5] = 0;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 1107296256;
    v21[2] = sub_1B1B3658C;
    v21[3] = &block_descriptor_16_0;
    v16 = _Block_copy(v21);
    v17 = OUTLINED_FUNCTION_36();
    xpc_connection_set_event_handler(v17, v18);
    _Block_release(v16);
    v19 = *(v1 + 32);
    *(v1 + 32) = v15;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    xpc_connection_resume(v15);
    if (!*(v1 + 40))
    {
      sub_1B1B365EC();
    }

    swift_unknownObjectRelease();
  }

  v20 = *(v1 + 48);
  sub_1B1C2D1C8();

  OUTLINED_FUNCTION_34_3();
}

void sub_1B1AEFB90()
{
  OUTLINED_FUNCTION_25();
  v1 = v0;
  v3 = v2;
  empty = xpc_dictionary_create_empty();
  if (v3)
  {
    v5 = 7005;
  }

  else
  {
    v5 = 7001;
  }

  v6 = xpc_int64_create(v5);
  xpc_dictionary_set_value(empty, "msg", v6);
  swift_unknownObjectRelease();
  v7 = *(v1 + 64);
  v8 = *(v1 + 32);
  OUTLINED_FUNCTION_19_4();
  v11 = v10 & v9;
  v13 = (v12 + 63) >> 6;

  v14 = 0;
  if (v11)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      JUMPOUT(0x1B1AEFDA4);
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v1 + 64 + 8 * v15);
    ++v14;
    if (v11)
    {
      v14 = v15;
      do
      {
LABEL_9:
        v16 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v17 = v16 | (v14 << 6);
        v18 = *(*(v1 + 56) + 8 * v17);
        *(*(v1 + 48) + v17);
        v19 = sub_1B1C2CBF8();
        OUTLINED_FUNCTION_21_4();
        swift_unknownObjectRetain_n();

        xpc_dictionary_set_value(empty, (v19 + 32), v18);
        OUTLINED_FUNCTION_21_4();
        swift_unknownObjectRelease_n();
      }

      while (v11);
    }
  }

  OUTLINED_FUNCTION_26_1();
}

void sub_1B1AEFDC8(uint64_t a1, char a2, uint64_t a3)
{
  if (a2)
  {
    v5 = 0x656372756F736572;
  }

  else
  {
    v5 = 0x6563696F76;
  }

  v132 = v5;
  if (a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (a2)
  {
    v125 = 1;
  }

  else
  {
    v125 = sub_1B1C2D7A8();
  }

  sub_1B1AA0AEC(3, a1);
  v7 = &unk_1B1C36000;
  v127 = v6;
  v133 = a3;
  if (!v142)
  {
    sub_1B1A9937C(&v141);
    v128 = 0;
    goto LABEL_17;
  }

  sub_1B1A9EEE0(&v141, &v143);
  sub_1B1A93378(&v143, &v141);
  if (swift_dynamicCast())
  {
    v8 = v138;
    v9 = v139;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761C70, &qword_1B1C36250);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1B1C361C0;
    *(v10 + 32) = v8;
    *(v10 + 40) = v9;
    v128 = v10;
LABEL_16:
    __swift_destroy_boxed_opaque_existential_0(&v143);
    goto LABEL_17;
  }

  sub_1B1A93378(&v143, &v141);
  sub_1B1A8E474(0, &qword_1ED9A9938, off_1E7AF1A90);
  if (swift_dynamicCast())
  {
    v11 = v138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761C70, &qword_1B1C36250);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1B1C361C0;
    v13 = [v11 string];
    v14 = sub_1B1C2CB58();
    v16 = v15;

    *(v12 + 32) = v14;
    *(v12 + 40) = v16;
    v7 = &unk_1B1C36000;
    v128 = v12;

    goto LABEL_16;
  }

  sub_1B1A93378(&v143, &v141);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F10, &unk_1B1C37DA0);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(&v143);
    v86 = v138;
LABEL_143:
    v128 = v86;
    goto LABEL_17;
  }

  sub_1B1A93378(&v143, &v141);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762678, &qword_1B1C38428);
  if (!swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(&v143);
    v86 = MEMORY[0x1E69E7CC0];
    goto LABEL_143;
  }

  v87 = v138;
  v88 = sub_1B1A9547C(v138);
  if (v88)
  {
    v89 = v88;
    *&v141 = MEMORY[0x1E69E7CC0];
    sub_1B1AC9FA8();
    if (v89 < 0)
    {
      goto LABEL_158;
    }

    v90 = 0;
    v91 = v141;
    do
    {
      v92 = v91;
      if ((v87 & 0xC000000000000001) != 0)
      {
        v93 = MEMORY[0x1B2738A20](v90, v87);
      }

      else
      {
        v93 = *(v87 + 8 * v90 + 32);
      }

      v94 = v93;
      v95 = [v93 string];
      v96 = sub_1B1C2CB58();
      v98 = v97;

      v91 = v92;
      *&v141 = v92;
      v99 = *(v92 + 16);
      if (v99 >= *(v91 + 24) >> 1)
      {
        sub_1B1AC9FA8();
        v91 = v141;
      }

      ++v90;
      *(v91 + 16) = v99 + 1;
      v100 = v91 + 16 * v99;
      *(v100 + 32) = v96;
      *(v100 + 40) = v98;
      a3 = v133;
    }

    while (v89 != v90);
    v128 = v91;
    __swift_destroy_boxed_opaque_existential_0(&v143);

    v6 = v127;
  }

  else
  {
LABEL_146:

    __swift_destroy_boxed_opaque_existential_0(&v143);
    v128 = MEMORY[0x1E69E7CC0];
  }

  v7 = &unk_1B1C36000;
LABEL_17:
  sub_1B1AA0AEC(4, a1);
  if (!v142)
  {
    sub_1B1A9937C(&v141);
    v19 = 0;
    goto LABEL_24;
  }

  sub_1B1A9EEE0(&v141, &v143);
  sub_1B1A93378(&v143, &v141);
  if (swift_dynamicCast())
  {
    v17 = v138;
    v18 = v139;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761C70, &qword_1B1C36250);
    v19 = swift_allocObject();
    *(v19 + 16) = v7[28];
    *(v19 + 32) = v17;
    *(v19 + 40) = v18;
LABEL_23:
    __swift_destroy_boxed_opaque_existential_0(&v143);
    goto LABEL_24;
  }

  sub_1B1A93378(&v143, &v141);
  sub_1B1A8E474(0, &qword_1ED9A97D0, off_1E7AF1A78);
  if (swift_dynamicCast())
  {
    v20 = v138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761C70, &qword_1B1C36250);
    v19 = swift_allocObject();
    *(v19 + 16) = v7[28];
    v21 = [v20 string];
    v22 = sub_1B1C2CB58();
    v24 = v23;

    *(v19 + 32) = v22;
    *(v19 + 40) = v24;

    goto LABEL_23;
  }

  sub_1B1A93378(&v143, &v141);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F10, &unk_1B1C37DA0);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(&v143);
    v19 = v138;
    goto LABEL_24;
  }

  sub_1B1A93378(&v143, &v141);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762670, &unk_1B1C38418);
  if (!swift_dynamicCast())
  {
    goto LABEL_149;
  }

  v101 = v138;
  v102 = sub_1B1A9547C(v138);
  if (!v102)
  {

LABEL_149:
    __swift_destroy_boxed_opaque_existential_0(&v143);
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_24;
  }

  v103 = v102;
  *&v141 = MEMORY[0x1E69E7CC0];
  sub_1B1AC9FA8();
  if (v103 < 0)
  {
    goto LABEL_159;
  }

  v104 = 0;
  v19 = v141;
  do
  {
    if ((v101 & 0xC000000000000001) != 0)
    {
      v105 = MEMORY[0x1B2738A20](v104, v101);
    }

    else
    {
      v105 = *(v101 + 8 * v104 + 32);
    }

    v106 = v105;
    v107 = [v105 string];
    v108 = sub_1B1C2CB58();
    v110 = v109;

    *&v141 = v19;
    v111 = v19;
    v112 = *(v19 + 16);
    if (v112 >= *(v111 + 24) >> 1)
    {
      sub_1B1AC9FA8();
      v111 = v141;
    }

    ++v104;
    *(v111 + 16) = v112 + 1;
    v113 = v111 + 16 * v112;
    *(v113 + 32) = v108;
    *(v113 + 40) = v110;
    v6 = v127;
    a3 = v133;
    v19 = v111;
  }

  while (v103 != v104);
  __swift_destroy_boxed_opaque_existential_0(&v143);

LABEL_24:
  sub_1B1AA0AEC(5, a1);
  if (v145)
  {
    v25 = swift_dynamicCast();
    if (v25)
    {
      v26 = v141;
    }

    else
    {
      v26 = 2;
    }
  }

  else
  {
    v25 = sub_1B1A9937C(&v143);
    v26 = 2;
  }

  v134 = v26;
  if (v19)
  {
    *&v143 = 0x686D75696D657270;
    *(&v143 + 1) = 0xEB00000000686769;
    MEMORY[0x1EEE9AC00](v25);
    v116 = &v143;

    v124 = sub_1B1ABAA5C(sub_1B1ABB394, &v114, v19);
    v126 = 0;
    v26 = v134;
  }

  else
  {
    v124 = 0;
    v126 = 0;
  }

  sub_1B1AA0AEC(0, a1);
  if (!v145)
  {
    sub_1B1A9937C(&v143);
LABEL_37:
    v122 = 0;
    v130 = 0;
    goto LABEL_38;
  }

  v27 = MEMORY[0x1E69E6158];
  if ((swift_dynamicCast() & 1) == 0)
  {
    v26 = v134;
    goto LABEL_37;
  }

  v143 = v141;
  *&v141 = 45;
  *(&v141 + 1) = 0xE100000000000000;
  v138 = 0;
  v139 = 0xE000000000000000;
  v116 = sub_1B1A8EDAC();
  v117 = v116;
  v114 = v27;
  v115 = v116;
  sub_1B1C2D398();

  v122 = sub_1B1C2CBE8();
  v130 = v28;

  v26 = v134;
LABEL_38:
  sub_1B1AA0AEC(0, a1);
  v129 = v19;
  if (v145)
  {
    sub_1B1A8E474(0, &qword_1ED9A8D88, 0x1E696AE70);
    if (swift_dynamicCast())
    {
      v29 = v141;
    }

    else
    {
      v29 = 0;
    }
  }

  else
  {
    sub_1B1A9937C(&v143);
    v29 = 0;
  }

  v140 = MEMORY[0x1E69E7CC0];
  a1 = sub_1B1A9547C(a3);
  v30 = 0;
  v135 = a3 & 0xC000000000000001;
  v31 = a3 & 0xFFFFFFFFFFFFFF8;
  v131 = 0x80000001B1C4CC40;
  v123 = (v130 | v29) == 0;
  while (1)
  {
    if (a1 == v30)
    {

      return;
    }

    if (v135)
    {
      v32 = MEMORY[0x1B2738A20](v30, a3);
    }

    else
    {
      if (v30 >= *(v31 + 16))
      {
        goto LABEL_145;
      }

      v32 = *(a3 + 8 * v30 + 32);
    }

    v33 = v32;
    if (__OFADD__(v30, 1))
    {
      __break(1u);
LABEL_145:
      __break(1u);
      goto LABEL_146;
    }

    v34 = v29;
    v35 = [v32 factor];
    if (!v35)
    {
      break;
    }

    v36 = v35;
    v37 = [v35 type];

    if (v37 != 101)
    {
      goto LABEL_55;
    }

    if (v26 == 2)
    {
      goto LABEL_56;
    }

    v38 = [v33 level];
    if (!v38)
    {
      goto LABEL_161;
    }

    v39 = v38;
    v40 = [v38 directoryValue];

    if (!v40)
    {
      goto LABEL_162;
    }

    v41 = v134 & 1;
    v42 = [v40 hasPath];

    v72 = v42 == v41;
    v26 = v134;
    if (v72)
    {
LABEL_56:
      v43 = [v33 factor];
      if (!v43)
      {
        goto LABEL_160;
      }

      v44 = v43;
      if (![v43 hasName])
      {
        sub_1B1C2D0C8();
        if (qword_1ED9A99C0 != -1)
        {
          swift_once();
        }

        sub_1B1C2C7C8();

        goto LABEL_103;
      }

      v45 = sub_1B1AF10E0(v44);
      if (!v46)
      {
        goto LABEL_163;
      }

      v47 = v45;
      v48 = v46;

      *&v143 = v47;
      *(&v143 + 1) = v48;
      v144 = MEMORY[0x1E69E7CC0];
      *&v141 = 0xD000000000000013;
      *(&v141 + 1) = v131;

      MEMORY[0x1B27381B0](v132, v6);
      MEMORY[0x1B27381B0](46, 0xE100000000000000);
      LOBYTE(v47) = sub_1B1C2CDA8();

      if ((v47 & 1) == 0)
      {
        goto LABEL_101;
      }

      v49 = sub_1B1AE6D1C();
      if ((v49 & 1) == 0)
      {

        goto LABEL_102;
      }

      if (v125)
      {
        goto LABEL_62;
      }

      v51 = v128;
      if (v128)
      {
        if (v144[2] < 8uLL)
        {
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
          break;
        }

        v121 = &v118;
        v52 = v144[19];
        *&v141 = v144[18];
        *(&v141 + 1) = v52;
        MEMORY[0x1EEE9AC00](v49);
        v116 = &v141;

        v53 = v126;
        v54 = sub_1B1ABAA5C(sub_1B1ABB394, &v114, v51);
        v126 = v53;

        if (!v54)
        {
LABEL_76:

LABEL_77:

          v6 = v127;
LABEL_78:
          a3 = v133;
          v26 = v134;
          goto LABEL_103;
        }

        v26 = v134;
      }

      if (v129)
      {
        if (v144[2] < 9uLL)
        {
          goto LABEL_151;
        }

        v121 = &v118;
        v55 = v144[21];
        *&v141 = v144[20];
        *(&v141 + 1) = v55;
        MEMORY[0x1EEE9AC00](v49);
        v116 = &v141;

        v56 = v126;
        v57 = sub_1B1ABAA5C(sub_1B1ABAB38, &v114, v129);
        v126 = v56;

        if (!v57)
        {
          goto LABEL_76;
        }

        v6 = v127;
        v26 = v134;
      }

      else
      {
        v6 = v127;
      }

      if (!v124)
      {
        if (v144[2] < 9uLL)
        {
          goto LABEL_152;
        }

        v74 = v144[20] == 0x686D75696D657270 && v144[21] == 0xEB00000000686769;
        if (v74 || (sub_1B1C2D7A8() & 1) != 0)
        {

LABEL_101:

LABEL_102:
          a3 = v133;
          goto LABEL_103;
        }
      }

      if (v123)
      {
LABEL_62:

        a3 = v133;
      }

      else
      {
        v58 = v144;
        if (v144[2] < 7uLL)
        {
          goto LABEL_153;
        }

        v59 = v144[17];
        *&v141 = v144[16];
        *(&v141 + 1) = v59;
        v138 = 95;
        v139 = 0xE100000000000000;
        v136 = 45;
        v137 = 0xE100000000000000;
        v116 = sub_1B1A8EDAC();
        v117 = v116;
        v121 = v116;
        v115 = v116;
        v114 = MEMORY[0x1E69E6158];
        v60 = sub_1B1C2D398();
        v62 = v61;

        v63 = HIBYTE(v62) & 0xF;
        if ((v62 & 0x2000000000000000) == 0)
        {
          v63 = v60 & 0xFFFFFFFFFFFFLL;
        }

        if (!v63)
        {

          goto LABEL_78;
        }

        v29 = v34;
        if (v130)
        {
          if (v58[2] < 7uLL)
          {
            goto LABEL_155;
          }

          v64 = v58[17];
          *&v141 = v58[16];
          *(&v141 + 1) = v64;
          v138 = 95;
          v139 = 0xE100000000000000;
          v136 = 45;
          v137 = 0xE100000000000000;
          v65 = v121;
          v116 = v121;
          v117 = v121;
          v115 = v121;
          v66 = MEMORY[0x1E69E6158];
          v114 = MEMORY[0x1E69E6158];
          v67 = sub_1B1C2D398();
          v120 = v68;
          *&v141 = v67;
          *(&v141 + 1) = v68;
          v138 = 45;
          v139 = 0xE100000000000000;
          v136 = 0;
          v137 = 0xE000000000000000;
          v116 = v65;
          v117 = v65;
          v114 = v66;
          v115 = v65;
          sub_1B1C2D398();

          v69 = sub_1B1C2CBE8();
          v71 = v70;

          v72 = v122 == v69 && v130 == v71;
          if (v72)
          {

            v6 = v127;
            v29 = v34;
          }

          else
          {
            v73 = sub_1B1C2D7A8();

            v6 = v127;
            v29 = v34;
            if ((v73 & 1) == 0)
            {

              a3 = v133;
              v26 = v134;
              goto LABEL_104;
            }
          }
        }

        if (v29)
        {
          if (v58[2] < 7uLL)
          {
            goto LABEL_156;
          }

          v75 = v58[17];
          *&v141 = v58[16];
          *(&v141 + 1) = v75;
          v138 = 95;
          v139 = 0xE100000000000000;
          v136 = 45;
          v137 = 0xE100000000000000;

          v120 = v29;

          v76 = v121;
          v116 = v121;
          v117 = v121;
          v115 = v121;
          v77 = MEMORY[0x1E69E6158];
          v114 = MEMORY[0x1E69E6158];
          sub_1B1C2D398();
          v119 = sub_1B1C2CB28();

          if (v58[2] < 7uLL)
          {
            goto LABEL_157;
          }

          v78 = v58[16];
          v118 = v58[17];
          *&v141 = v78;
          *(&v141 + 1) = v118;
          v138 = 95;
          v139 = 0xE100000000000000;
          v136 = 45;
          v137 = 0xE100000000000000;

          v116 = v76;
          v117 = v76;
          v114 = v77;
          v115 = v76;
          v79 = sub_1B1C2D398();
          v81 = v80;

          v82 = MEMORY[0x1B2738250](v79, v81);

          v83 = v120;
          v84 = v119;
          v85 = [v120 numberOfMatchesInString:v119 options:4 range:{0, v82}];

          if (!v85)
          {
            goto LABEL_77;
          }

          v6 = v127;
        }

        else
        {
        }

        a3 = v133;
        v26 = v134;
      }

      sub_1B1C2D588();
      v50 = *(v140 + 16);
      sub_1B1C2D5C8();
      sub_1B1C2D5D8();
      sub_1B1C2D598();
    }

    else
    {
LABEL_55:
    }

LABEL_103:
    v29 = v34;
LABEL_104:
    ++v30;
  }

  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
LABEL_163:
  __break(1u);
}

uint64_t sub_1B1AF10E0(void *a1)
{
  v1 = [a1 name];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1B1C2CB58();

  return v3;
}

uint64_t sub_1B1AF1144()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B1AC4B6C(0xD000000000000019, 0x80000001B1C4D360, 1);
  }

  return result;
}

id sub_1B1AF11E8()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriTTSService19TTSAssetStaticVoice_attr);
  sub_1B1A93AEC(0x325665707954, 0xE600000000000000, v1);
  if (v21)
  {
    sub_1B1A9EEE0(&v20, &v22);
  }

  else
  {
    sub_1B1A93AEC(1701869908, 0xE400000000000000, v1);
  }

  if (!v23)
  {
    sub_1B1A90C78(&v22, &qword_1EB761DE0, &qword_1B1C352C0);
    goto LABEL_13;
  }

  if (!swift_dynamicCast())
  {
LABEL_13:
    v4 = sub_1B1AECD40();
    if (qword_1ED9A98D0 != -1)
    {
      OUTLINED_FUNCTION_23_0();
    }

    v5 = qword_1ED9A98D8;
    sub_1B1A8E474(0, &qword_1ED9A99D0, off_1E7AF1A98);
    v6 = v5;
    v7 = sub_1B1C2D248();

    if (v7)
    {

LABEL_17:
      if (qword_1ED9A97B8 != -1)
      {
        swift_once();
      }

      v8 = &qword_1ED9A97C0;
      goto LABEL_29;
    }

    if (qword_1ED9A98A8 != -1)
    {
      OUTLINED_FUNCTION_21();
    }

    v9 = qword_1ED9A98B0;
    v10 = sub_1B1C2D248();

    if ((v10 & 1) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_23;
  }

  v2 = v20;
  v3 = v20 == 0x657A696C61636F76 && *(&v20 + 1) == 0xE900000000000072;
  if (v3 || (OUTLINED_FUNCTION_8_6() & 1) != 0)
  {

LABEL_26:
    if (qword_1ED9A9890 != -1)
    {
      swift_once();
    }

    v8 = &qword_1ED9A9818;
    goto LABEL_29;
  }

  v13 = v2 == 0x6D6F74737563 && *(&v2 + 1) == 0xE600000000000000;
  if (v13 || (OUTLINED_FUNCTION_8_6() & 1) != 0)
  {

    goto LABEL_17;
  }

  v14 = v2 == 0x6E6F6870797267 && *(&v2 + 1) == 0xE700000000000000;
  if (v14 || (OUTLINED_FUNCTION_8_6() & 1) != 0)
  {

    if (qword_1ED9A97A8 != -1)
    {
      swift_once();
    }

    v8 = &qword_1ED9A9898;
    goto LABEL_29;
  }

  v15 = v2 == 0x6C617275656ELL && *(&v2 + 1) == 0xE600000000000000;
  if (v15 || (OUTLINED_FUNCTION_8_6() & 1) != 0)
  {

    if (qword_1ED9A9820 != -1)
    {
      swift_once();
    }

    v8 = &qword_1ED9A9828;
    goto LABEL_29;
  }

  v16 = v2 == 0x58416C617275656ELL && *(&v2 + 1) == 0xE800000000000000;
  if (v16 || (OUTLINED_FUNCTION_8_6() & 1) != 0)
  {

    if (qword_1ED9A9698 != -1)
    {
      swift_once();
    }

    v8 = &qword_1ED9A9710;
    goto LABEL_29;
  }

  v17 = v2 == 0x6C61727574616ELL && *(&v2 + 1) == 0xE700000000000000;
  if (v17 || (OUTLINED_FUNCTION_8_6() & 1) != 0)
  {

    if (qword_1ED9A8D90 != -1)
    {
      swift_once();
    }

    v8 = &qword_1ED9A8D98;
    goto LABEL_29;
  }

  if (v2 != 0x6C61746E6963616DLL || *(&v2 + 1) != 0xE90000000000006BLL)
  {
    v19 = OUTLINED_FUNCTION_8_6();

    if (v19)
    {
      goto LABEL_23;
    }

    goto LABEL_13;
  }

LABEL_23:
  if (qword_1ED9A5280 != -1)
  {
    swift_once();
  }

  v8 = &qword_1ED9A5288;
LABEL_29:
  v11 = *v8;

  return v11;
}

uint64_t sub_1B1AF16C4(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetProxyAsset_proxy_attr);
  v3 = sub_1B1AE3168(a1);
  sub_1B1A93AEC(v3, v4, v2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DE0, &qword_1B1C352C0);
  if (swift_dynamicCast())
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

id sub_1B1AF1750()
{
  v2 = *(v0 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetProxyAsset_cookie);
  v1 = *(v0 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetProxyAsset_cookie + 8);
  OUTLINED_FUNCTION_4_14();
  if (OUTLINED_FUNCTION_8_13())
  {
    if (qword_1ED9A9960 != -1)
    {
      OUTLINED_FUNCTION_12_4();
    }

    v3 = &qword_1ED9A9968;
    goto LABEL_18;
  }

  v4 = sub_1B1AF16C4(14);
  if (!v5)
  {
    goto LABEL_11;
  }

  if (v4 == 0x657A696C61636F76 && v5 == 0xE900000000000072)
  {
  }

  else
  {
    v7 = sub_1B1C2D7A8();

    if ((v7 & 1) == 0)
    {
LABEL_11:
      if (qword_1ED9A9978 != -1)
      {
        swift_once();
      }

      v3 = &qword_1ED9A9980;
      goto LABEL_18;
    }
  }

  if (qword_1ED9A9850 != -1)
  {
    swift_once();
  }

  v3 = &qword_1ED9A97E0;
LABEL_18:
  v8 = *v3;

  return v8;
}

id sub_1B1AF18D0()
{
  v2 = *(v0 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetProxyAsset_cookie);
  v1 = *(v0 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetProxyAsset_cookie + 8);
  OUTLINED_FUNCTION_4_14();
  if (OUTLINED_FUNCTION_8_13())
  {
    goto LABEL_9;
  }

  v3 = sub_1B1AF16C4(14);
  if (!v4)
  {
    goto LABEL_33;
  }

  v5 = v3;
  v6 = v4;
  v7 = v3 == 0x657A696C61636F76 && v4 == 0xE900000000000072;
  if (v7 || (OUTLINED_FUNCTION_3() & 1) != 0)
  {

LABEL_9:
    if (qword_1ED9A9890 != -1)
    {
      swift_once();
    }

    v8 = &qword_1ED9A9818;
    goto LABEL_36;
  }

  v9 = v5 == 0x6C617275656ELL && v6 == 0xE600000000000000;
  if (v9 || (OUTLINED_FUNCTION_3() & 1) != 0)
  {

    if (qword_1ED9A9820 != -1)
    {
      swift_once();
    }

    v8 = &qword_1ED9A9828;
    goto LABEL_36;
  }

  v10 = v5 == 0x58416C617275656ELL && v6 == 0xE800000000000000;
  if (v10 || (OUTLINED_FUNCTION_3() & 1) != 0)
  {

    if (qword_1ED9A9698 != -1)
    {
      swift_once();
    }

    v8 = &qword_1ED9A9710;
    goto LABEL_36;
  }

  if (v5 == 0x6C61727574616ELL && v6 == 0xE700000000000000)
  {
  }

  else
  {
    v12 = OUTLINED_FUNCTION_3();

    if ((v12 & 1) == 0)
    {
LABEL_33:
      if (qword_1ED9A97A8 != -1)
      {
        swift_once();
      }

      v8 = &qword_1ED9A9898;
      goto LABEL_36;
    }
  }

  if (qword_1ED9A8D90 != -1)
  {
    swift_once();
  }

  v8 = &qword_1ED9A8D98;
LABEL_36:
  v13 = *v8;

  return v13;
}

void sub_1B1AF1B80()
{
  OUTLINED_FUNCTION_39_0(OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_assetAttr);
  OUTLINED_FUNCTION_35_5();

  if (!v23)
  {
    sub_1B1A90C20(v22, &qword_1EB761DE0, &qword_1B1C352C0);
    goto LABEL_14;
  }

  v8 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_9_7(v0, v1, v2, v3, v4, v5, v6, v7, v19);
  if (!swift_dynamicCast())
  {
LABEL_14:
    sub_1B1C2D0B8();
    if (qword_1ED9A99B8 != -1)
    {
      OUTLINED_FUNCTION_0_12();
    }

    sub_1B1C2C7C8();
    goto LABEL_17;
  }

  v9 = v20 == 0x746361706D6F63 && v21 == 0xE700000000000000;
  if (!v9 && (OUTLINED_FUNCTION_8_6() & 1) == 0)
  {
    v15 = v20 == 0x6D75696D657270 && v21 == 0xE700000000000000;
    if (v15 || (OUTLINED_FUNCTION_8_6() & 1) != 0)
    {

      if (qword_1ED9A9100 != -1)
      {
        OUTLINED_FUNCTION_2_0();
      }

      goto LABEL_10;
    }

    v16 = v20 == 0x686D75696D657270 && v21 == 0xEB00000000686769;
    if (v16 || (OUTLINED_FUNCTION_8_6() & 1) != 0)
    {

      if (qword_1ED9A9628 != -1)
      {
        OUTLINED_FUNCTION_14_0();
      }

      goto LABEL_10;
    }

    v17 = v20 == 1635018082 && v21 == 0xE400000000000000;
    if (v17 || (OUTLINED_FUNCTION_8_6() & 1) != 0)
    {

      if (qword_1EB7615E0 != -1)
      {
        swift_once();
      }

      goto LABEL_10;
    }

    sub_1B1C2D0B8();
    if (qword_1ED9A99B8 != -1)
    {
      OUTLINED_FUNCTION_0_12();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
    v18 = OUTLINED_FUNCTION_54_0();
    *(v18 + 16) = xmmword_1B1C361C0;
    *(v18 + 56) = v8;
    *(v18 + 64) = sub_1B1AC9204();
    *(v18 + 32) = v20;
    *(v18 + 40) = v21;
    OUTLINED_FUNCTION_46_2();
    OUTLINED_FUNCTION_53_2();

LABEL_17:
    sub_1B1A8E474(0, &qword_1ED9A97D0, off_1E7AF1A78);
    v13 = OUTLINED_FUNCTION_11_1();
    sub_1B1ABAA54(v13, v14);
    OUTLINED_FUNCTION_76_2();
    return;
  }

  if (qword_1ED9A97D8 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

LABEL_10:
  OUTLINED_FUNCTION_76_2();

  v12 = v10;
}

id sub_1B1AF1F00()
{
  if (qword_1EB761310 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB761318;

  return v1;
}

uint64_t sub_1B1AF1F5C()
{
  v1 = sub_1B1AF2238(9);
  if (!v1)
  {
    v12 = sub_1B1AF16C4(10);
    if (v13)
    {
      v14 = v12;
      v15 = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761C70, &qword_1B1C36250);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1B1C361C0;
      v27 = v14;
      v28 = v15;
      sub_1B1A8EDAC();
      OUTLINED_FUNCTION_4();
      v16 = sub_1B1C2D398();
      v18 = v17;

      *(v4 + 32) = v16;
      *(v4 + 40) = v18;
      return v4;
    }

    if (qword_1ED9A9288 != -1)
    {
      OUTLINED_FUNCTION_3_1();
    }

    v19 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v19, qword_1ED9A9120);
    v20 = v0;
    v21 = sub_1B1C2C888();
    v22 = sub_1B1C2D0C8();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = OUTLINED_FUNCTION_21_0();
      v24 = OUTLINED_FUNCTION_19_0();
      v27 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_1B1A930E4(*&v20[OBJC_IVAR____TtC14SiriTTSService18TTSAssetProxyAsset_cookie], *&v20[OBJC_IVAR____TtC14SiriTTSService18TTSAssetProxyAsset_cookie + 8], &v27);
      _os_log_impl(&dword_1B1A8A000, v21, v22, "Missing supportedLanguages: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_11();
    }

    return MEMORY[0x1E69E7CC0];
  }

  v2 = v1;
  v3 = *(v1 + 16);
  if (!v3)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v26 = MEMORY[0x1E69E7CC0];
  sub_1B1AC9FA8();
  v4 = v26;
  sub_1B1A8EDAC();
  v5 = (v2 + 40);
  do
  {
    v6 = *v5;
    v27 = *(v5 - 1);
    v28 = v6;
    OUTLINED_FUNCTION_4();
    v7 = sub_1B1C2D398();
    v9 = v8;
    v10 = *(v26 + 16);
    if (v10 >= *(v26 + 24) >> 1)
    {
      sub_1B1AC9FA8();
    }

    *(v26 + 16) = v10 + 1;
    v11 = v26 + 16 * v10;
    *(v11 + 32) = v7;
    *(v11 + 40) = v9;
    v5 += 2;
    --v3;
  }

  while (v3);

  return v4;
}

uint64_t sub_1B1AF2238(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetProxyAsset_proxy_attr);
  v3 = sub_1B1AE3168(a1);
  sub_1B1A93AEC(v3, v4, v2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DE0, &qword_1B1C352C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F10, &unk_1B1C37DA0);
  if (swift_dynamicCast())
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B1AF22E4()
{
  type metadata accessor for NeuralUtils();
  if (static NeuralUtils.isNaturalVoiceEnabled.getter())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762440, &qword_1B1C383E0);
    v0 = swift_allocObject();
    *(v0 + 16) = xmmword_1B1C40960;
    if (qword_1ED9A8D90 != -1)
    {
      swift_once();
    }

    v1 = qword_1ED9A8D98;
    *(v0 + 32) = qword_1ED9A8D98;
    v2 = qword_1ED9A9820;
    v3 = v1;
    if (v2 != -1)
    {
      swift_once();
    }

    v4 = qword_1ED9A9828;
    *(v0 + 40) = qword_1ED9A9828;
    v5 = qword_1ED9A9698;
    v6 = v4;
    if (v5 != -1)
    {
      swift_once();
    }

    v7 = qword_1ED9A9710;
    *(v0 + 48) = qword_1ED9A9710;
    v8 = qword_1ED9A97A8;
    v9 = v7;
    if (v8 != -1)
    {
      swift_once();
    }

    v10 = qword_1ED9A9898;
    *(v0 + 56) = qword_1ED9A9898;
    v11 = qword_1ED9A97B8;
    v12 = v10;
    if (v11 != -1)
    {
      swift_once();
    }

    v13 = qword_1ED9A97C0;
    *(v0 + 64) = qword_1ED9A97C0;
    v14 = qword_1ED9A5280;
    v15 = v13;
    if (v14 != -1)
    {
      swift_once();
    }

    v16 = qword_1ED9A5288;
    *(v0 + 72) = qword_1ED9A5288;
    v17 = (v0 + 80);
  }

  else
  {
    if (qword_1ED9A9590 != -1)
    {
      swift_once();
    }

    v18 = byte_1ED9A9643;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762440, &qword_1B1C383E0);
    v0 = swift_allocObject();
    *(v0 + 16) = xmmword_1B1C38370;
    if (v18 == 1)
    {
      if (qword_1ED9A9820 != -1)
      {
        swift_once();
      }

      v19 = qword_1ED9A9828;
      *(v0 + 32) = qword_1ED9A9828;
      v20 = qword_1ED9A9698;
      v21 = v19;
      if (v20 != -1)
      {
        swift_once();
      }

      v22 = qword_1ED9A9710;
      *(v0 + 40) = qword_1ED9A9710;
      v23 = qword_1ED9A97A8;
      v24 = v22;
      if (v23 != -1)
      {
        swift_once();
      }

      v25 = qword_1ED9A9898;
    }

    else
    {
      if (qword_1ED9A97A8 != -1)
      {
        swift_once();
      }

      v26 = qword_1ED9A9898;
      *(v0 + 32) = qword_1ED9A9898;
      v27 = qword_1ED9A9820;
      v28 = v26;
      if (v27 != -1)
      {
        swift_once();
      }

      v29 = qword_1ED9A9828;
      *(v0 + 40) = qword_1ED9A9828;
      v30 = qword_1ED9A9698;
      v31 = v29;
      if (v30 != -1)
      {
        swift_once();
      }

      v25 = qword_1ED9A9710;
    }

    *(v0 + 48) = v25;
    v32 = qword_1ED9A97B8;
    v33 = v25;
    if (v32 != -1)
    {
      swift_once();
    }

    v34 = qword_1ED9A97C0;
    *(v0 + 56) = qword_1ED9A97C0;
    v35 = qword_1ED9A5280;
    v36 = v34;
    if (v35 != -1)
    {
      swift_once();
    }

    v16 = qword_1ED9A5288;
    *(v0 + 64) = qword_1ED9A5288;
    v17 = (v0 + 72);
  }

  v37 = qword_1ED9A9890;
  v38 = v16;
  if (v37 != -1)
  {
    swift_once();
  }

  v39 = qword_1ED9A9818;
  *v17 = qword_1ED9A9818;
  v40 = v39;
  return v0;
}

void sub_1B1AF2784()
{
  OUTLINED_FUNCTION_11_7();
  OUTLINED_FUNCTION_17_1();
  v2 = *(v0 + 1040);
  v3 = *(v0 + 1048);
  v4 = *(v0 + 1056);
  v5 = *(v0 + 1064);
  v6 = v2;
  OUTLINED_FUNCTION_7_13();

  v7 = OUTLINED_FUNCTION_0_21();
  sub_1B1A8DCB4(v7, v8, v9, v5);
  OUTLINED_FUNCTION_41_1();

  OUTLINED_FUNCTION_15_10();
}

BOOL static NeuralUtils.isNaturalVoiceEnabled.getter()
{
  if (qword_1ED9A96B8 != -1)
  {
    swift_once();
  }

  sub_1B1AF2784();
  if (v0 != 2 && (v0 & 1) != 0)
  {
    return 1;
  }

  if (qword_1EB761248 != -1)
  {
    swift_once();
  }

  return byte_1EB761252 == 1 && static NeuralUtils.isGMEnabled.getter();
}

uint64_t sub_1B1AF28AC()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriTTSService19TTSAssetStaticVoice_attr);
  v2 = OUTLINED_FUNCTION_22_9();
  sub_1B1A93AEC(v2, v3, v1);
  sub_1B1A93AEC(0xD000000000000010, 0x80000001B1C4EF00, v1);
  sub_1B1A93AEC(0xD000000000000015, 0x80000001B1C4EF20, v1);
  if (v40)
  {
    sub_1B1A9EEE0(&v39, v35);
    *&v39 = 0;
    *(&v39 + 1) = 0xE000000000000000;
    MEMORY[0x1B27381B0](23328, 0xE200000000000000);
    sub_1B1C2D618();
    MEMORY[0x1B27381B0](93, 0xE100000000000000);
    v4 = *(&v39 + 1);
    v5 = v39;
    __swift_destroy_boxed_opaque_existential_0(v35);
  }

  else
  {
    sub_1B1A90C78(&v39, &qword_1EB761DE0, &qword_1B1C352C0);
    v5 = 0;
    v4 = 0xE000000000000000;
  }

  sub_1B1A9D80C(v42, v35);
  sub_1B1A9D80C(v41, &v37);
  if (v36)
  {
    sub_1B1A9D80C(v35, &v39);
    if (v38)
    {
      sub_1B1A9EEE0(&v39, v34);
      sub_1B1A9EEE0(&v37, &v31);
      OUTLINED_FUNCTION_30_8();
      OUTLINED_FUNCTION_36_5();
      MEMORY[0x1B27381B0](0x20564D202F20, 0xE600000000000000);
      OUTLINED_FUNCTION_36_5();

      MEMORY[0x1B27381B0](v5, v4);

      __swift_destroy_boxed_opaque_existential_0(&v31);
    }

    else
    {
      sub_1B1A9EEE0(&v39, v34);
      v7 = MEMORY[0x1B27381B0](2119235, 0xE300000000000000);
      OUTLINED_FUNCTION_35_0(v7, v8, v9, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v10, v11, v12, v29, v30, 0, 0xE000000000000000, v32, v33, v34[0]);
      sub_1B1C2D618();

      MEMORY[0x1B27381B0](v5, v4);
    }

    v6 = v34;
  }

  else
  {
    if (!v38)
    {

      OUTLINED_FUNCTION_30();
      sub_1B1A90C78(v23, v24, v25);
      OUTLINED_FUNCTION_30();
      sub_1B1A90C78(v26, v27, v28);
      sub_1B1A90C78(v35, &qword_1EB7627C0, &qword_1B1C39550);
      OUTLINED_FUNCTION_25_6();
      return OUTLINED_FUNCTION_43_0();
    }

    sub_1B1A9EEE0(&v37, &v39);
    *&v34[0] = 0;
    *(&v34[0] + 1) = 0xE000000000000000;
    MEMORY[0x1B27381B0](2119245, 0xE300000000000000);
    sub_1B1C2D618();

    MEMORY[0x1B27381B0](v5, v4);

    v6 = &v39;
  }

  __swift_destroy_boxed_opaque_existential_0(v6);
  OUTLINED_FUNCTION_34_6();
  sub_1B1A90C78(v13, v14, v15);
  OUTLINED_FUNCTION_34_6();
  sub_1B1A90C78(v16, v17, v18);
  OUTLINED_FUNCTION_34_6();
  sub_1B1A90C78(v19, v20, v21);
  return OUTLINED_FUNCTION_43_0();
}

uint64_t sub_1B1AF2C4C(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetProxyAsset_proxy_attr);
  v3 = sub_1B1AE3168(a1);
  sub_1B1A93AEC(v3, v4, v2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DE0, &qword_1B1C352C0);
  v5 = swift_dynamicCast();
  v6 = v8;
  if (!v5)
  {
    return 0;
  }

  return v6;
}

uint64_t sub_1B1AF2CDC()
{
  sub_1B1AF2C4C(11);
  if (v0)
  {
    return 0x6E776F6E6B6E555BLL;
  }

  v2 = sub_1B1C2D778();
  MEMORY[0x1B27381B0](v2);

  return 2119235;
}

void sub_1B1AF2D6C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B1A9547C(a2);
  v4 = 0;
  while (v3 != v4)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1B2738A20](v4, a2);
    }

    else
    {
      if (v4 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }

      v5 = *(a2 + 8 * v4 + 32);
    }

    v6 = v5;
    sub_1B1A8E474(0, &unk_1ED9A9950, &off_1E7AF1AA0);
    v7 = sub_1B1C2D248();

    if (v7)
    {
      return;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_14;
    }
  }
}

uint64_t static TTSAsset.isBetter(_:_:order:)(void *a1, void *a2, uint64_t a3)
{
  if (!a1)
  {
    goto LABEL_15;
  }

  if (!a2)
  {
    v17 = 1;
    return v17 & 1;
  }

  sub_1B1AF2D6C(a1, a3);
  if (v7)
  {
    v23 = a2;
    MEMORY[0x1EEE9AC00](v6);
    v22[2] = &v23;
    if ((sub_1B1ABAB9C(sub_1B1BD0838, v22, a3) & 1) == 0)
    {
      v8 = [a1 string];
      v9 = sub_1B1C2CB58();
      v11 = v10;

      v12 = [a2 string];
      v13 = sub_1B1C2CB58();
      v15 = v14;

      if (v9 != v13 || v11 != v15)
      {
        v17 = sub_1B1C2D7A8();

        return v17 & 1;
      }
    }

LABEL_15:
    v17 = 0;
    return v17 & 1;
  }

  v18 = v6;
  sub_1B1AF2D6C(a2, a3);
  v17 = (v20 & 1) != 0 || v18 < v19;
  return v17 & 1;
}

BOOL static NeuralUtils.isGMEnabled.getter()
{
  v0 = sub_1B1C2C518();
  v1 = OUTLINED_FUNCTION_7(v0);
  v37 = v2;
  v38 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_16();
  v7 = v6 - v5;
  v8 = sub_1B1C2C558();
  v9 = OUTLINED_FUNCTION_7(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_16();
  v16 = v15 - v14;
  v17 = sub_1B1C2C538();
  v18 = OUTLINED_FUNCTION_7(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_16();
  v25 = v24 - v23;
  v26 = sub_1B1C2C578();
  v27 = OUTLINED_FUNCTION_7(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_16();
  v34 = v33 - v32;
  (*(v11 + 104))(v16, *MEMORY[0x1E69A12B8], v8);
  sub_1B1C2C528();
  sub_1B1C2C568();
  (*(v20 + 8))(v25, v17);
  sub_1B1C2C548();
  (*(v29 + 8))(v34, v26);
  v35 = (*(v37 + 88))(v7, v38) != *MEMORY[0x1E69A0F00];
  (*(v37 + 8))(v7, v38);
  return v35;
}

uint64_t sub_1B1AF3310(void *a1, void *a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x98);
  v11 = v10();
  v13 = v12;
  swift_beginAccess();
  v14 = sub_1B1AE795C(v11, v13, *(a3 + 16));

  if (v14)
  {
    v32 = a4;
    v35 = v14;
    swift_endAccess();
    v33 = a1;
    sub_1B1AF3660(&v35, a1);
    v16 = v15;
    v17 = v35;
    v18 = sub_1B1A9547C(v35);
    v19 = v18 - v16;
    if (v18 < v16)
    {
      __break(1u);
    }

    else if ((v16 & 0x8000000000000000) == 0)
    {
      v20 = v18;
      if (sub_1B1A95484(v17) >= v18)
      {
        v21 = __OFSUB__(0, v19);
        v22 = -v19;
        if (!v21)
        {
          v23 = sub_1B1A9547C(v17);
          v21 = __OFADD__(v23, v22);
          v24 = v23 + v22;
          if (!v21)
          {
            sub_1B1A9E870(v24);
            sub_1B1AA8A84(v16, v20, 0, type metadata accessor for TTSAsset, sub_1B1AA8B80);
            a2;
            MEMORY[0x1B2738320]();
            if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
LABEL_8:
              v25 = sub_1B1C2CEC8();
              (v10)(v25);
              swift_beginAccess();
              v26 = *(a3 + 16);
              swift_isUniquelyReferenced_nonNull_native();
              v34 = *(a3 + 16);
              sub_1B1AF3A0C();
              *(a3 + 16) = v34;

              swift_endAccess();
              a1 = v33;
              a4 = v32;
              goto LABEL_10;
            }

LABEL_20:
            sub_1B1C2CE98();
            goto LABEL_8;
          }

LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_17;
  }

  swift_endAccess();
LABEL_10:
  if (a4)
  {
    swift_beginAccess();
    v27 = a1;
    MEMORY[0x1B2738320]();
    sub_1B1B3E0D4(*((*(a5 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
    sub_1B1C2CEC8();
    return swift_endAccess();
  }

  swift_beginAccess();
  sub_1B1AF3660((a5 + 16), a1);
  v29 = v28;
  v30 = sub_1B1A9547C(*(a5 + 16));
  if (v30 >= v29)
  {
    sub_1B1AA8890(v29, v30, sub_1B1A9547C, type metadata accessor for TTSAsset, sub_1B1AA8B80);
    return swift_endAccess();
  }

  __break(1u);
  result = swift_endAccess();
  __break(1u);
  return result;
}

void sub_1B1AF3660(unint64_t *a1, void *a2)
{
  v5 = *a1;
  v6 = a2;
  v7 = OUTLINED_FUNCTION_17_21();
  v9 = sub_1B1AF3868(v7, v8);
  v11 = v9;
  if (v3)
  {
    goto LABEL_36;
  }

  if (v10)
  {
    sub_1B1A9547C(v5);
LABEL_36:

    return;
  }

  v12 = v9 + 1;
  if (!__OFADD__(v9, 1))
  {
    while (1)
    {
      if (v5 >> 62)
      {
        v13 = sub_1B1C2D468();
      }

      else
      {
        v13 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v12 == v13)
      {
        goto LABEL_36;
      }

      if ((v5 & 0xC000000000000001) != 0)
      {
        v25 = OUTLINED_FUNCTION_42_0();
        v26 = MEMORY[0x1B2738A20](v25);
        swift_unknownObjectRelease();
        if (v26 != v2)
        {
          if (v11 != v12)
          {
            v16 = MEMORY[0x1B2738A20](v11, v5);
            v27 = OUTLINED_FUNCTION_42_0();
            v17 = MEMORY[0x1B2738A20](v27);
            goto LABEL_16;
          }

LABEL_26:
          v24 = __OFADD__(v11++, 1);
          if (v24)
          {
            goto LABEL_40;
          }
        }
      }

      else
      {
        if ((v12 & 0x8000000000000000) != 0)
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
          break;
        }

        v14 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v12 >= v14)
        {
          goto LABEL_38;
        }

        v15 = *(v5 + 32 + 8 * v12);
        if (v15 != v2)
        {
          if (v11 != v12)
          {
            if ((v11 & 0x8000000000000000) != 0)
            {
              goto LABEL_41;
            }

            if (v11 >= v14)
            {
              goto LABEL_42;
            }

            v16 = *(v5 + 32 + 8 * v11);
            v17 = v15;
LABEL_16:
            v18 = v17;
            if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
            {
              v5 = sub_1B1AF7E5C(v5);
              v19 = (v5 >> 62) & 1;
            }

            else
            {
              LODWORD(v19) = 0;
            }

            v20 = v5 & 0xFFFFFFFFFFFFFF8;
            v21 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v11 + 0x20);
            *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v11 + 0x20) = v18;

            if ((v5 & 0x8000000000000000) != 0 || v19)
            {
              v5 = sub_1B1AF7E5C(v5);
              v20 = v5 & 0xFFFFFFFFFFFFFF8;
              if ((v12 & 0x8000000000000000) != 0)
              {
LABEL_35:
                __break(1u);
                goto LABEL_36;
              }
            }

            else if ((v12 & 0x8000000000000000) != 0)
            {
              goto LABEL_35;
            }

            if (v12 >= *(v20 + 16))
            {
              goto LABEL_43;
            }

            v22 = v20 + 8 * v12;
            v23 = *(v22 + 32);
            *(v22 + 32) = v16;

            *a1 = v5;
          }

          goto LABEL_26;
        }
      }

      v24 = __OFADD__(v12++, 1);
      if (v24)
      {
        goto LABEL_39;
      }
    }
  }

  __break(1u);
}

uint64_t sub_1B1AF3868(uint64_t a1, void *a2)
{
  result = sub_1B1A9547C(a1);
  v5 = result;
  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {
      v9 = 0;
      goto LABEL_12;
    }

    if ((a1 & 0xC000000000000001) == 0)
    {
      break;
    }

    v8 = MEMORY[0x1B2738A20](v6, a1);
    result = swift_unknownObjectRelease();
    if (v8 == a2)
    {
LABEL_10:
      v9 = v6;
LABEL_12:

      return v9;
    }

LABEL_6:
    if (__OFADD__(v6++, 1))
    {
      goto LABEL_14;
    }
  }

  if (v6 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    if (*(a1 + 8 * v6 + 32) == a2)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_1B1AF393C()
{
  OUTLINED_FUNCTION_25();
  v5 = v4;
  v7 = v6;
  v8 = OUTLINED_FUNCTION_5_12();
  OUTLINED_FUNCTION_1_14(v8, v9);
  if (v10)
  {
    __break(1u);
LABEL_14:
    result = sub_1B1C2D818();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_40_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(v7, v5);
  if (OUTLINED_FUNCTION_9_10())
  {
    OUTLINED_FUNCTION_32_4();
    OUTLINED_FUNCTION_6_10();
    if (!v12)
    {
      goto LABEL_14;
    }

    v3 = v11;
  }

  if (v2)
  {
    v13 = *(*v1 + 56);
    v14 = *(v13 + 8 * v3);
    *(v13 + 8 * v3) = v0;
    OUTLINED_FUNCTION_26_1();
  }

  else
  {
    v17 = OUTLINED_FUNCTION_13_10();
    sub_1B1B37BA4(v17, v18, v19, v20, v21);
    OUTLINED_FUNCTION_26_1();
  }
}

uint64_t sub_1B1AF3A80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762918, &qword_1B1C39880);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for SignpostHandler()
{
  result = qword_1ED9A5168;
  if (!qword_1ED9A5168)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void SignpostHandler.init(notificationCenter:)()
{
  OUTLINED_FUNCTION_25();
  v2 = v1;
  v3 = sub_1B1C2C8A8();
  v4 = OUTLINED_FUNCTION_7(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_16();
  v11 = v10 - v9;
  v12 = sub_1B1C2C828();
  v13 = OUTLINED_FUNCTION_7(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_16();
  v20 = v19 - v18;
  *(v0 + 24) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC14SiriTTSService15SignpostHandler_synthesisInterval) = 0;
  *(v0 + OBJC_IVAR____TtC14SiriTTSService15SignpostHandler_voiceSelectionInternal) = 0;
  *(v0 + OBJC_IVAR____TtC14SiriTTSService15SignpostHandler_engineSelectionInterval) = 0;
  *(v0 + OBJC_IVAR____TtC14SiriTTSService15SignpostHandler_audioStartingInterval) = 0;
  *(v0 + OBJC_IVAR____TtC14SiriTTSService15SignpostHandler_playbackInterval) = 0;
  *(v0 + 16) = v2;
  v21 = qword_1ED9A9288;
  v22 = v2;
  if (v21 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v3, qword_1ED9A9120);
  (*(v6 + 16))(v11, v23, v3);
  sub_1B1C2C808();
  (*(v15 + 32))(v0 + OBJC_IVAR____TtC14SiriTTSService15SignpostHandler_signposter, v20, v12);
  if (qword_1ED9A4DF8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17();
  swift_allocObject();
  OUTLINED_FUNCTION_14_4();

  v24 = OUTLINED_FUNCTION_2_9();
  sub_1B1ADCDB0(v24);

  if (qword_1ED9A4E88 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17();
  swift_allocObject();
  OUTLINED_FUNCTION_14_4();
  v25 = OUTLINED_FUNCTION_2_9();
  sub_1B1ADAC08(v25, v26, v27);

  if (qword_1ED9A4DE0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17();
  swift_allocObject();
  OUTLINED_FUNCTION_14_4();

  v28 = OUTLINED_FUNCTION_2_9();
  sub_1B1ADBA84(v28, v29, v30);
  OUTLINED_FUNCTION_14_7();
  if (qword_1ED9A4EB8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17();
  swift_allocObject();
  OUTLINED_FUNCTION_14_4();
  v31 = OUTLINED_FUNCTION_2_9();
  sub_1B1ADBDC4(v31);

  if (qword_1ED9A4DD0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17();
  swift_allocObject();
  OUTLINED_FUNCTION_14_4();

  v32 = OUTLINED_FUNCTION_2_9();
  sub_1B1ADBA84(v32, v33, v34);
  OUTLINED_FUNCTION_14_7();
  if (qword_1ED9A4E58 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17();
  swift_allocObject();
  OUTLINED_FUNCTION_14_4();
  v35 = OUTLINED_FUNCTION_2_9();
  sub_1B1AF3A20(v35);

  if (qword_1ED9A4CD8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17();
  swift_allocObject();
  OUTLINED_FUNCTION_14_4();

  v36 = OUTLINED_FUNCTION_2_9();
  sub_1B1ADBA84(v36, v37, v38);
  OUTLINED_FUNCTION_14_7();
  if (qword_1ED9A4D48 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17();
  swift_allocObject();
  OUTLINED_FUNCTION_14_4();

  v39 = OUTLINED_FUNCTION_2_9();
  sub_1B1ADBA84(v39, v40, v41);
  OUTLINED_FUNCTION_14_7();
  if (qword_1ED9A4D90 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17();
  swift_allocObject();
  OUTLINED_FUNCTION_14_4();
  v42 = OUTLINED_FUNCTION_2_9();
  sub_1B1ADAD54(v42);

  if (qword_1ED9A4D58 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17();
  swift_allocObject();
  OUTLINED_FUNCTION_14_4();
  v43 = OUTLINED_FUNCTION_2_9();
  sub_1B1ADABD8(v43, v44, v45);

  if (qword_1ED9A4DC0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17();
  swift_allocObject();
  OUTLINED_FUNCTION_14_4();

  v46 = OUTLINED_FUNCTION_2_9();
  sub_1B1ADBA84(v46, v47, v48);

  OUTLINED_FUNCTION_14_7();
  OUTLINED_FUNCTION_26_1();
}

uint64_t sub_1B1AF41E0()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_17();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t type metadata accessor for SiriAnalyticsHandler()
{
  result = qword_1ED9A7FC0;
  if (!qword_1ED9A7FC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B1AF4260(void *a1, void *a2, void *a3, char a4)
{
  v9 = MEMORY[0x1E69E7CC0];
  *(v4 + 24) = MEMORY[0x1E69E7CC0];
  v10 = OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_ttsId;
  v11 = sub_1B1C2C478();
  __swift_storeEnumTagSinglePayload(v4 + v10, 1, 1, v11);
  sub_1B1C2C468();
  OUTLINED_FUNCTION_27_15(OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_isolatedStreamId);
  v12 = OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_metrics;
  *(v4 + v12) = [objc_allocWithZone(type metadata accessor for InstrumentationMetrics()) init];
  *(v4 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_logSynthesisEvents) = 0;
  *(v4 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_expectedVoice) = 0;
  *(v4 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_selectedVoice) = 0;
  *(v4 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_selectedResource) = 0;
  v13 = (v4 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_routeInfo);
  *v13 = 0u;
  v13[1] = 0u;
  *(v13 + 28) = 0u;
  *(v4 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_encounteredIssues) = v9;
  *(v4 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_emittedStartRequest) = 0;
  v14 = (v4 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_clientId);
  *v14 = 0;
  v14[1] = 0;
  OUTLINED_FUNCTION_27_15(OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_logLinkId);
  OUTLINED_FUNCTION_27_15(OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_interactionLinkId);
  *(v4 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_voiceSelectStartTimestamp) = 0;
  *(v4 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_voiceSelectLatencyInSeconds) = 0;
  *(v4 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_audioStartingTimestamp) = 0;
  *(v4 + 16) = a1;
  *(v4 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_siriStream) = a2;
  *(v4 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_siriPowerLogger) = a3;
  *(v4 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_logSynthesisEvents) = a4;
  v15 = qword_1ED9A4E40;
  v16 = a1;
  v17 = a2;
  v18 = a3;
  if (v15 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17();
  swift_allocObject();
  OUTLINED_FUNCTION_4_30();

  v19 = OUTLINED_FUNCTION_2_37();
  sub_1B1ADACF0(v19);

  if (qword_1ED9A4D38 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17();
  swift_allocObject();
  OUTLINED_FUNCTION_4_30();

  v20 = OUTLINED_FUNCTION_2_37();
  sub_1B1ADAB20(v20, v21, v22);
  OUTLINED_FUNCTION_49_8();
  if (qword_1ED9A52D0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17();
  swift_allocObject();
  OUTLINED_FUNCTION_4_30();
  v23 = OUTLINED_FUNCTION_2_37();
  sub_1B1AF3A54(v23);

  if (qword_1ED9A4E28 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17();
  swift_allocObject();
  OUTLINED_FUNCTION_4_30();
  v24 = OUTLINED_FUNCTION_2_37();
  sub_1B1AF3A54(v24);

  if (qword_1ED9A4DE0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17();
  swift_allocObject();
  OUTLINED_FUNCTION_4_30();

  v25 = OUTLINED_FUNCTION_2_37();
  sub_1B1ADAB20(v25, v26, v27);
  OUTLINED_FUNCTION_49_8();
  if (qword_1ED9A4EB8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17();
  swift_allocObject();
  OUTLINED_FUNCTION_4_30();
  v28 = OUTLINED_FUNCTION_2_37();
  sub_1B1ADBDC4(v28);

  if (qword_1ED9A4D20 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17();
  swift_allocObject();
  OUTLINED_FUNCTION_4_30();
  v29 = OUTLINED_FUNCTION_2_37();
  sub_1B1ADAD1C(v29);

  if (qword_1ED9A4D48 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17();
  swift_allocObject();
  OUTLINED_FUNCTION_4_30();

  v30 = OUTLINED_FUNCTION_2_37();
  sub_1B1ADAB20(v30, v31, v32);
  OUTLINED_FUNCTION_49_8();
  if (qword_1ED9A4D90 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17();
  swift_allocObject();
  OUTLINED_FUNCTION_4_30();
  v33 = OUTLINED_FUNCTION_2_37();
  sub_1B1ADAD54(v33);

  if (qword_1ED9A4D58 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17();
  swift_allocObject();
  OUTLINED_FUNCTION_4_30();
  v34 = OUTLINED_FUNCTION_2_37();
  sub_1B1ADABD8(v34, v35, v36);

  if (qword_1ED9A4DC0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17();
  swift_allocObject();
  OUTLINED_FUNCTION_4_30();

  v37 = OUTLINED_FUNCTION_2_37();
  sub_1B1ADAB20(v37, v38, v39);
  OUTLINED_FUNCTION_49_8();
  if (qword_1ED9A4D08 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17();
  swift_allocObject();
  OUTLINED_FUNCTION_4_30();

  v40 = OUTLINED_FUNCTION_2_37();
  sub_1B1ADAB20(v40, v41, v42);
  OUTLINED_FUNCTION_49_8();
  if (qword_1ED9A4DF8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17();
  swift_allocObject();
  OUTLINED_FUNCTION_4_30();
  v43 = OUTLINED_FUNCTION_2_37();
  sub_1B1ADCDB0(v43);

  if (qword_1ED9A4E88 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17();
  swift_allocObject();
  OUTLINED_FUNCTION_4_30();
  v44 = OUTLINED_FUNCTION_2_37();
  sub_1B1ADAC08(v44, v45, v46);

  if (qword_1ED9A4EA8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17();
  swift_allocObject();
  OUTLINED_FUNCTION_4_30();
  v47 = OUTLINED_FUNCTION_2_37();
  sub_1B1ADABD8(v47, v48, v49);

  if (qword_1ED9A4DB0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17();
  swift_allocObject();
  OUTLINED_FUNCTION_4_30();

  v50 = OUTLINED_FUNCTION_2_37();
  sub_1B1ADAB20(v50, v51, v52);
  OUTLINED_FUNCTION_49_8();
  if (qword_1ED9A4E98 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17();
  swift_allocObject();
  OUTLINED_FUNCTION_4_30();

  v53 = OUTLINED_FUNCTION_2_37();
  sub_1B1ADAB20(v53, v54, v55);
  OUTLINED_FUNCTION_49_8();
  if (qword_1EB760FD8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17();
  swift_allocObject();
  OUTLINED_FUNCTION_4_30();
  v56 = OUTLINED_FUNCTION_2_37();
  sub_1B1AF3A20(v56);

  if (qword_1EB760FC0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17();
  swift_allocObject();
  OUTLINED_FUNCTION_4_30();

  v57 = OUTLINED_FUNCTION_2_37();
  sub_1B1AF3A20(v57);

  return v4;
}

uint64_t sub_1B1AF4C40()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_17();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t AudioHandler.init(notificationCenter:)(void *a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  *(v1 + 32) = 0;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0u;
  *(v1 + 72) = 0u;
  *(v1 + 88) = 0u;
  *(v1 + 104) = 0u;
  *(v1 + 16) = a1;
  *(v1 + 24) = v2;
  v3 = qword_1ED9A4CC0;
  v4 = a1;
  if (v3 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17();
  swift_allocObject();
  OUTLINED_FUNCTION_14_4();

  v5 = OUTLINED_FUNCTION_2_9();
  sub_1B1AF4E88(v5, v6, v7);

  if (qword_1ED9A4CA8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17();
  swift_allocObject();
  OUTLINED_FUNCTION_14_4();
  v8 = OUTLINED_FUNCTION_2_9();
  sub_1B1AF4EB8(v8, v9, v10);

  if (qword_1ED9A4DC0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17();
  swift_allocObject();
  OUTLINED_FUNCTION_14_4();

  v11 = OUTLINED_FUNCTION_2_9();
  sub_1B1ADAB20(v11, v12, v13);

  return v1;
}

uint64_t sub_1B1AF4E54()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_17();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t DiagnosticService.init(notification:)(void *a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = 1;
  *(v1 + 16) = a1;
  *(v1 + 24) = v2;
  v3 = qword_1ED9A4E40;
  v4 = a1;
  if (v3 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17();
  swift_allocObject();
  OUTLINED_FUNCTION_14_4();

  OUTLINED_FUNCTION_27_0(v5, sub_1B1B0A48C, v6, &unk_1F28C0990, sub_1B1B0A6E8, &block_descriptor_78);

  if (qword_1ED9A4C90 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17();
  swift_allocObject();
  v7 = OUTLINED_FUNCTION_14_4();
  OUTLINED_FUNCTION_27_0(v7, sub_1B1AB0A8C, v8, &unk_1F28C09E0, sub_1B1AAFBA0, &block_descriptor_84);

  if (qword_1ED9A4E28 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17();
  swift_allocObject();
  v9 = OUTLINED_FUNCTION_14_4();
  OUTLINED_FUNCTION_27_0(v9, sub_1B1ACF970, v10, &unk_1F28C0968, sub_1B1AC6794, &block_descriptor_72);

  if (qword_1EB760FA8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17();
  swift_allocObject();
  OUTLINED_FUNCTION_14_4();

  OUTLINED_FUNCTION_27_0(v11, sub_1B1AC45EC, v12, &unk_1F28C0AF8, sub_1B1AC45E0, &block_descriptor_108);

  return v1;
}

uint64_t sub_1B1AF51D4()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_17();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t std::__function::__value_func<void ()(std::vector<float> const&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void std::vector<std::shared_ptr<Observer>>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = (v3 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<short>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = 16 * v7;
    v12 = *a2;
    *(16 * v7) = *a2;
    if (*(&v12 + 1))
    {
      atomic_fetch_add_explicit((*(&v12 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v6 = (v11 + 16);
    v13 = *a1;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    *a1 = v15;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    v5 = *(a2 + 1);
    *v3 = *a2;
    v3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v3 + 2;
  }

  *(a1 + 8) = v6;
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

uint64_t std::__function::__value_func<void ()(void const*)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(std::vector<TTSSynthesizer::Marker> const&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

uint64_t sub_1B1AF5660()
{
  type metadata accessor for InternalSettings();
  v0 = swift_allocObject();
  result = sub_1B1AF56BC();
  qword_1ED9A96C0 = v0;
  return result;
}

id sub_1B1AF569C()
{
  result = sub_1B1AF5DCC();
  qword_1ED9AA648 = result;
  return result;
}

uint64_t sub_1B1AF56BC()
{
  if (qword_1ED9A96D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED9AA648;
  *(v0 + 40) = 2;
  *(v0 + 16) = v1;
  *(v0 + 24) = 0x54656C6261736964;
  *(v0 + 32) = 0xEA00000000005354;
  *(v0 + 72) = 1;
  *(v0 + 48) = v1;
  *(v0 + 56) = 0x7541656C62616E65;
  *(v0 + 64) = 0xEF706D75446F6964;
  *(v0 + 104) = 2;
  *(v0 + 80) = v1;
  *(v0 + 88) = 0xD000000000000010;
  *(v0 + 96) = 0x80000001B1C4E4D0;
  *(v0 + 136) = 2;
  *(v0 + 112) = v1;
  strcpy((v0 + 120), "DisableCaching");
  *(v0 + 135) = -18;
  *(v0 + 168) = 0u;
  *(v0 + 144) = v1;
  *(v0 + 152) = 0xD000000000000014;
  *(v0 + 160) = 0x80000001B1C4E4F0;
  *(v0 + 208) = 2;
  OUTLINED_FUNCTION_51_3();
  *(v0 + 184) = v2;
  *(v0 + 192) = v3;
  *(v0 + 200) = v4;
  *(v0 + 240) = v5;
  OUTLINED_FUNCTION_51_3();
  *(v0 + 216) = v7;
  *(v0 + 224) = v6 | 8;
  *(v0 + 232) = v8;
  *(v0 + 272) = v9;
  OUTLINED_FUNCTION_51_3();
  *(v0 + 248) = v11;
  *(v0 + 256) = v10 + 17;
  *(v0 + 264) = v12;
  *(v0 + 304) = v13;
  OUTLINED_FUNCTION_51_3();
  *(v0 + 280) = v14;
  *(v0 + 288) = v15;
  *(v0 + 296) = v16;
  *(v0 + 336) = v17;
  OUTLINED_FUNCTION_51_3();
  *(v0 + 312) = v18;
  *(v0 + 320) = v19;
  *(v0 + 328) = v20;
  *(v0 + 376) = 0;
  *(v0 + 380) = v21;
  OUTLINED_FUNCTION_46_4();
  *(v0 + 352) = v23;
  *(v0 + 360) = v22 & 0xFFFFFFFFFFFFLL | 0x5674000000000000;
  *(v0 + 368) = 0xED0000656D756C6FLL;
  *(v0 + 408) = 0;
  *(v0 + 412) = v24;
  OUTLINED_FUNCTION_46_4();
  *(v0 + 384) = v26;
  *(v0 + 392) = v25 & 0xFFFFFFFFFFFFLL | 0x5074000000000000;
  *(v0 + 400) = 0xEC00000068637469;
  *(v0 + 440) = 0;
  *(v0 + 444) = v27;
  OUTLINED_FUNCTION_46_4();
  *(v0 + 416) = v29;
  *(v0 + 424) = v28 & 0xFFFFFFFFFFFFLL | 0x5274000000000000;
  *(v0 + 432) = 0xEB00000000657461;
  *(v0 + 472) = v30;
  *(v0 + 448) = v29;
  *(v0 + 456) = 0x72657073696877;
  *(v0 + 464) = 0xE700000000000000;
  *(v0 + 504) = v30;
  *(v0 + 480) = v29;
  *(v0 + 488) = 0x6F4C726576726573;
  *(v0 + 496) = 0xEA00000000007367;
  *(v0 + 536) = 0;
  *(v0 + 540) = v31;
  *(v0 + 512) = v29;
  OUTLINED_FUNCTION_59_2();
  *(v0 + 520) = v32;
  *(v0 + 528) = v33;
  *(v0 + 568) = 0;
  *(v0 + 572) = v34;
  *(v0 + 544) = v35;
  OUTLINED_FUNCTION_59_2();
  *(v0 + 552) = v36;
  *(v0 + 560) = v37;
  *(v0 + 600) = v38;
  *(v0 + 576) = v39;
  OUTLINED_FUNCTION_59_2();
  *(v0 + 584) = v40 | 2;
  *(v0 + 592) = v41;
  *(v0 + 632) = v42;
  *(v0 + 608) = v43;
  strcpy((v0 + 616), "forceServerTTS");
  *(v0 + 631) = -18;
  *(v0 + 664) = v42;
  *(v0 + 640) = v43;
  OUTLINED_FUNCTION_59_2();
  *(v0 + 648) = v44;
  *(v0 + 656) = v45;
  *(v0 + 696) = v46;
  *(v0 + 672) = v47;
  OUTLINED_FUNCTION_44_2();
  *(v0 + 680) = v48 + 5;
  *(v0 + 688) = v49;
  *(v0 + 728) = v50;
  *(v0 + 704) = v51;
  OUTLINED_FUNCTION_44_2();
  *(v0 + 712) = v52;
  *(v0 + 720) = v53;
  *(v0 + 760) = 0;
  *(v0 + 768) = v54;
  *(v0 + 736) = v55;
  OUTLINED_FUNCTION_44_2();
  *(v0 + 744) = v56;
  *(v0 + 752) = v57;
  *(v0 + 800) = v58;
  *(v0 + 776) = v59;
  strcpy((v0 + 784), "useBetaVoice");
  *(v0 + 797) = 0;
  *(v0 + 798) = -5120;
  *(v0 + 832) = v60;
  *(v0 + 808) = v59;
  OUTLINED_FUNCTION_44_2();
  *(v0 + 816) = v61;
  *(v0 + 824) = v62;
  *(v0 + 872) = v63;
  *(v0 + 848) = v64;
  OUTLINED_FUNCTION_44_2();
  *(v0 + 856) = v65;
  *(v0 + 864) = v66;
  *(v0 + 904) = v67;
  *(v0 + 880) = v68;
  OUTLINED_FUNCTION_44_2();
  *(v0 + 888) = v69 + 1;
  *(v0 + 896) = v70;
  *(v0 + 936) = v71;
  *(v0 + 912) = v72;
  *(v0 + 920) = v73;
  *(v0 + 928) = 0x80000001B1C4E700;
  *(v0 + 968) = v71;
  *(v0 + 944) = v72;
  strcpy((v0 + 952), "useSSMLInput");
  *(v0 + 965) = 0;
  *(v0 + 966) = -5120;
  *(v0 + 1000) = v71;
  *(v0 + 976) = v72;
  *(v0 + 984) = v69 + 9;
  *(v0 + 992) = 0x80000001B1C4E720;
  *(v0 + 1032) = v71;
  *(v0 + 1008) = v72;
  *(v0 + 1016) = v69 + 1;
  *(v0 + 1024) = 0x80000001B1C4E740;
  *(v0 + 1064) = v71;
  *(v0 + 1040) = v72;
  *(v0 + 1048) = v69;
  *(v0 + 1056) = 0x80000001B1C4E760;
  *(v0 + 1096) = v71;
  *(v0 + 1072) = v72;
  *(v0 + 1080) = v69 + 1;
  *(v0 + 1088) = 0x80000001B1C4E780;
  *(v0 + 1128) = v71;
  *(v0 + 1104) = v72;
  OUTLINED_FUNCTION_44_2();
  *(v0 + 1112) = v74;
  *(v0 + 1120) = v75;
  *(v0 + 1160) = v76;
  *(v0 + 1136) = v77;
  *(v0 + 1144) = v78 | 6;
  *(v0 + 1152) = 0x80000001B1C4E7C0;
  *(v0 + 1192) = 0;
  *(v0 + 1200) = v79;
  *(v0 + 1168) = v77;
  *(v0 + 1176) = v78 | 6;
  *(v0 + 1184) = 0x80000001B1C4E7E0;
  *(v0 + 1232) = v76;
  *(v0 + 1208) = v77;
  *(v0 + 1216) = 0x706C416563726F66;
  *(v0 + 1224) = v80;
  *(v0 + 1264) = v81;
  *(v0 + 1240) = v77;
  *(v0 + 1248) = 0x6E656B6F54776164;
  *(v0 + 1256) = 0xE800000000000000;
  *(v0 + 1304) = v81;
  *(v0 + 1280) = v77;
  *(v0 + 1288) = 0x6F54656E69706C61;
  *(v0 + 1296) = 0xEB000000006E656BLL;
  *(v0 + 1344) = v78 + 7;
  *(v0 + 1352) = 0x80000001B1C4E800;
  *(v0 + 1320) = v77;
  *(v0 + 1328) = 0x6F4D656E69706C61;
  *(v0 + 1336) = 0xEB000000006C6564;
  *(v0 + 1384) = v76;
  *(v0 + 1360) = v77;
  strcpy((v0 + 1368), "forcePegasus");
  *(v0 + 1381) = 0;
  *(v0 + 1382) = -5120;
  *(v0 + 1416) = v78 + 75;
  *(v0 + 1424) = 0x80000001B1C4E820;
  *(v0 + 1392) = v77;
  *(v0 + 1400) = 0x4573757361676570;
  *(v0 + 1408) = 0xEF746E696F70646ELL;
  *(v0 + 1456) = v76;
  *(v0 + 1432) = v77;
  *(v0 + 1440) = 0x534D476563726F66;
  *(v0 + 1448) = 0xE800000000000000;
  v82 = v77;
  return v0;
}

id sub_1B1AF5DCC()
{
  if (qword_1ED9A96E0 != -1)
  {
    swift_once();
  }

  if (byte_1ED9A9738 != 1)
  {
    return 0;
  }

  if (geteuid() != 501)
  {
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v0 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v0, qword_1ED9A9120);
    v1 = sub_1B1C2C888();
    v2 = sub_1B1C2D0B8();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_1B1A8A000, v1, v2, "process is not running as user Mobile: it's not accessing our shared UserDefaults", v3, 2u);
      MEMORY[0x1B2739FD0](v3, -1, -1);
    }
  }

  v4 = objc_allocWithZone(MEMORY[0x1E695E000]);
  return sub_1B1A99318(0xD000000000000017, 0x80000001B1C4AEA0);
}

void sub_1B1AF5F4C()
{
  sub_1B1AF6018();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1B1AF6018()
{
  if (!qword_1ED9A9210)
  {
    sub_1B1C2C478();
    v0 = sub_1B1C2D2B8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9A9210);
    }
  }
}

void sub_1B1AF6070()
{
  sub_1B1AF6198(319, &qword_1ED9A9210, MEMORY[0x1E69695A8]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    sub_1B1AF6198(319, &unk_1ED9A9220, MEMORY[0x1E6968FB0]);
    if (v4 <= 0x3F)
    {
      v5 = *(v3 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1B1AF6198(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    OUTLINED_FUNCTION_107();
    v4 = sub_1B1C2D2B8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1B1AF61E8()
{
  v0 = sub_1B1C2C8A8();
  __swift_allocate_value_buffer(v0, qword_1ED9A9120);
  __swift_project_value_buffer(v0, qword_1ED9A9120);
  return sub_1B1C2C898();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_1B1AF62C4()
{
  result = sub_1B1ACB6B8(&unk_1F28BACA8);
  qword_1ED9A8F48 = result;
  return result;
}

uint64_t sub_1B1AF62EC()
{
  result = sub_1B1C2CAB8();
  qword_1ED9AA508 = result;
  return result;
}

unint64_t sub_1B1AF6328()
{
  result = qword_1ED9A9880;
  if (!qword_1ED9A9880)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED9A9880);
  }

  return result;
}

void sub_1B1AF636C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7642A0, &qword_1B1C35DF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B1C36280;
  v1 = type metadata accessor for InstrumentationMetrics();
  *(v0 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7626B8, &qword_1B1C387B0);
  *(v0 + 32) = v1;
  v2 = sub_1B1A8E474(0, &qword_1ED9A90E0, 0x1E696AEC0);
  *(v0 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7626C0, &qword_1B1C387B8);
  *(v0 + 64) = v2;
  sub_1B1A8E474(0, &unk_1ED9A90F0, 0x1E695DFD8);
  v3 = MEMORY[0x1B27386A0](v0);
  sub_1B1A8E474(0, &qword_1ED9A9880, 0x1E69E58C0);
  sub_1B1A9C7B4();
  v4 = sub_1B1C2CF68();

  qword_1ED9A9110 = v4;
}

void OUTLINED_FUNCTION_75_1()
{

  sub_1B1AB9288();
}

uint64_t OUTLINED_FUNCTION_75_2()
{

  return sub_1B1C2C5C8();
}

uint64_t sub_1B1AF64DC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_1B1A91B08(v0);
  if (v2)
  {
    v3 = v1 == 0xD000000000000014 && v2 == 0x80000001B1C52680;
    if (v3 || (OUTLINED_FUNCTION_43_0(), (sub_1B1C2D7A8() & 1) != 0))
    {
    }
  }

  return OUTLINED_FUNCTION_43_0();
}

uint64_t OUTLINED_FUNCTION_150()
{
  v2 = *v0;
}

id sub_1B1AF6B10()
{
  v1 = OUTLINED_FUNCTION_126();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_23(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = sub_1B1C2C1C8();
  v10 = OUTLINED_FUNCTION_7(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_16();
  v17 = v16 - v15;
  v18 = (v0 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_path);
  os_unfair_lock_lock(v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762728, &unk_1B1C38940);
  sub_1B1AA101C(v18 + *(v19 + 28), v8, &unk_1EB761F00, &qword_1B1C36480);
  os_unfair_lock_unlock(v18);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_1B1A90C20(v8, &unk_1EB761F00, &qword_1B1C36480);
    return 0;
  }

  else
  {
    (*(v12 + 32))(v17, v8, v9);
    v21 = [objc_opt_self() defaultManager];
    sub_1B1C2C178();
    v22 = sub_1B1C2CB28();

    v20 = [v21 isDeletableFileAtPath_];

    (*(v12 + 8))(v17, v9);
  }

  return v20;
}

void sub_1B1AF6D44()
{
  if (([v0 locallyAvailable] & 1) == 0)
  {
    v1 = &v0[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_isDownloading];
    os_unfair_lock_lock(&v0[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_isDownloading]);
    os_unfair_lock_opaque = v1[1]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v1);
    if ((os_unfair_lock_opaque & 1) == 0)
    {
      v3 = &v0[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_updateCounter];
      os_unfair_lock_lock(&v0[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_updateCounter]);
      if (*&v3[2]._os_unfair_lock_opaque)
      {
LABEL_6:
        os_unfair_lock_unlock(v3);
        os_unfair_lock_lock(v1);
        os_unfair_lock_opaque_low = LOBYTE(v1[1]._os_unfair_lock_opaque);
        os_unfair_lock_unlock(v1);
        return;
      }

      *&v3[2]._os_unfair_lock_opaque = 1;
      os_unfair_lock_unlock(v3);
      sub_1B1AF6E30(0, 0, 0, 0, 0);
      os_unfair_lock_lock(v3);
      v4 = *&v3[2]._os_unfair_lock_opaque;
      v5 = __OFSUB__(v4, 1);
      v6 = v4 - 1;
      if (!v5)
      {
        *&v3[2]._os_unfair_lock_opaque = v6;
        goto LABEL_6;
      }

      __break(1u);
    }
  }
}

uint64_t sub_1B1AF6E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = &v5[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_updateCounter];
  os_unfair_lock_lock(&v5[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_updateCounter]);
  v12 = *(v11 + 1);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(v11 + 1) = v14;
    os_unfair_lock_unlock(v11);
    if (qword_1EB761360 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  queue = qword_1EB772D00;
  v15 = swift_allocObject();
  v15[2] = v5;
  v15[3] = a1;
  v15[4] = a2;
  v15[5] = a3;
  v15[6] = a4;
  v15[7] = a5;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1B1B48204;
  *(v16 + 24) = v15;
  v27 = sub_1B1AF77FC;
  v28 = v16;
  OUTLINED_FUNCTION_10_14();
  v24 = 1107296256;
  v25 = sub_1B1AAC018;
  v26 = &block_descriptor_129;
  v17 = _Block_copy(aBlock);

  v18 = v5;
  sub_1B1A94514(a2);
  v19 = OUTLINED_FUNCTION_33_2();
  sub_1B1A94514(v19);

  dispatch_sync(queue, v17);
  _Block_release(v17);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B1AF7014()
{
  v1 = *(v0 + 24);

  if (*(v0 + 32))
  {
    v2 = *(v0 + 40);
  }

  if (*(v0 + 48))
  {
    v3 = *(v0 + 56);
  }

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1B1AF7080()
{
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
  v7 = sub_1B1ABB11C(v0, 1u);
  v8 = static TTSAsset.listAssets(ofTypes:matching:)(v1, v7);

  v9 = sub_1B1A9547C(v8);
  if (v9)
  {
    v10 = v9;
    v16 = MEMORY[0x1E69E7CC0];
    result = sub_1B1C2D5B8();
    if (v10 < 0)
    {
      __break(1u);
    }

    else
    {
      v12 = 0;
      do
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x1B2738A20](v12, v8);
        }

        else
        {
          v13 = *(v8 + 8 * v12 + 32);
        }

        v14 = v13;
        ++v12;
        sub_1B1ABFFF8();

        sub_1B1C2D588();
        v15 = *(v16 + 16);
        sub_1B1C2D5C8();
        sub_1B1C2D5D8();
        sub_1B1C2D598();
      }

      while (v10 != v12);

      return v16;
    }
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_74_1()
{

  return sub_1B1C2CAE8();
}

uint64_t OUTLINED_FUNCTION_74_2()
{
}

uint64_t sub_1B1AF7348()
{
  v1 = *(v0 + OBJC_IVAR___SiriTTSPreferences_defaults);
  v2 = sub_1B1C2CB28();

  v3 = [v1 dictionaryForKey_];

  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = sub_1B1C2CA98();

  v6 = v4 + 64;
  v5 = *(v4 + 64);
  v7 = *(v4 + 32);
  OUTLINED_FUNCTION_3_24();
  v10 = v9 & v8;
  v43 = (v11 + 63) >> 6;

  v13 = 0;
  v14 = MEMORY[0x1E69E7CC0];
  v44 = v4 + 64;
  v41 = v4;
  while (v10)
  {
LABEL_8:
    v16 = __clz(__rbit64(v10)) | (v13 << 6);
    v17 = (*(v4 + 48) + 16 * v16);
    v18 = *v17;
    v19 = v17[1];
    sub_1B1A93378(*(v4 + 56) + 32 * v16, v50);
    v49[0] = v18;
    v49[1] = v19;

    v20 = sub_1B1AF782C(v18, v19, v50);
    sub_1B1A90C78(v49, &qword_1EB762900, &qword_1B1C39838);
    if (v20 >> 62)
    {
      v21 = sub_1B1C2D468();
    }

    else
    {
      v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v22 = v14 >> 62;
    if (v14 >> 62)
    {
      result = sub_1B1C2D468();
    }

    else
    {
      result = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v23 = result + v21;
    if (__OFADD__(result, v21))
    {
      goto LABEL_44;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (!result)
    {
      if (v22)
      {
LABEL_20:
        sub_1B1C2D468();
      }

      else
      {
        v24 = v14 & 0xFFFFFFFFFFFFFF8;
LABEL_19:
        v25 = *(v24 + 16);
      }

      result = sub_1B1C2D568();
      v47 = result;
      v24 = result & 0xFFFFFFFFFFFFFF8;
      goto LABEL_22;
    }

    if (v22)
    {
      goto LABEL_20;
    }

    v24 = v14 & 0xFFFFFFFFFFFFFF8;
    if (v23 > *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_19;
    }

    v47 = v14;
LABEL_22:
    v45 = v24;
    v46 = v21;
    v10 &= v10 - 1;
    v26 = *(v24 + 16);
    v27 = (*(v24 + 24) >> 1) - v26;
    v28 = v24 + 8 * v26;
    if (v20 >> 62)
    {
      v30 = sub_1B1C2D468();
      if (v30)
      {
        v31 = v30;
        result = sub_1B1C2D468();
        if (v27 < result)
        {
          goto LABEL_48;
        }

        if (v31 < 1)
        {
          goto LABEL_49;
        }

        v42 = result;
        v32 = v28 + 32;
        sub_1B1BD6460();
        for (i = 0; i != v31; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB763FD0, &qword_1B1C40A70);
          v34 = sub_1B1B37C88(v48, i, v20);
          v36 = *v35;
          v34(v48, 0);
          *(v32 + 8 * i) = v36;
        }

        v4 = v41;
        v29 = v42;
        goto LABEL_32;
      }

LABEL_36:

      v14 = v47;
      v6 = v44;
      if (v21 > 0)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v29 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v29)
      {
        goto LABEL_36;
      }

      if (v27 < v29)
      {
        goto LABEL_47;
      }

      type metadata accessor for SynthesisVoiceSubscription();
      swift_arrayInitWithCopy();
LABEL_32:

      v14 = v47;
      v6 = v44;
      if (v29 < v46)
      {
        goto LABEL_45;
      }

      if (v29 > 0)
      {
        v37 = *(v45 + 16);
        v38 = __OFADD__(v37, v29);
        v39 = v37 + v29;
        if (v38)
        {
          goto LABEL_46;
        }

        *(v45 + 16) = v39;
      }
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v43)
    {

      v40 = sub_1B1BD385C(v14);

      return v40;
    }

    v10 = *(v6 + 8 * v15);
    ++v13;
    if (v10)
    {
      v13 = v15;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
  return result;
}

uint64_t sub_1B1AF7788(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  a4(a3);
  sub_1B1C2CE78();
  OUTLINED_FUNCTION_129_1();

  v6(a2);
}

uint64_t sub_1B1AF782C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  sub_1B1A93378(a3, v53);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761C30, &unk_1B1C38180);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = v52[0];
  v6 = v52[0] + 64;
  v7 = 1 << *(v52[0] + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v52[0] + 64);
  v46 = (v7 + 63) >> 6;

  v11 = 0;
  v12 = MEMORY[0x1E69E7CC0];
  v43 = a1;
  v44 = a2;
  v42 = v52[0];
  v47 = v52[0] + 64;
  while (1)
  {
    v51 = v12;
    if (!v9)
    {
      break;
    }

LABEL_10:
    v14 = __clz(__rbit64(v9)) | (v11 << 6);
    v15 = (*(v5 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    sub_1B1A93378(*(v5 + 56) + 32 * v14, v54);
    v53[0] = v16;
    v53[1] = v17;

    v18 = sub_1B1AF7C64(v16, v17, v54, a1, a2);
    sub_1B1A90C78(v53, &qword_1EB762900, &qword_1B1C39838);
    v19 = v18 >> 62;
    if (v18 >> 62)
    {
      v20 = sub_1B1C2D468();
    }

    else
    {
      v20 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v21 = v51 >> 62;
    v50 = v18;
    if (v51 >> 62)
    {
      result = sub_1B1C2D468();
    }

    else
    {
      result = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v22 = result + v20;
    if (__OFADD__(result, v20))
    {
      goto LABEL_45;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v49 = v20;
    if (!result)
    {
      if (v21)
      {
LABEL_22:
        v24 = v5;
        sub_1B1C2D468();
      }

      else
      {
        v23 = v51 & 0xFFFFFFFFFFFFFF8;
LABEL_21:
        v24 = v5;
        v26 = *(v23 + 16);
      }

      v25 = a1;
      result = sub_1B1C2D568();
      v51 = result;
      v23 = result & 0xFFFFFFFFFFFFFF8;
      goto LABEL_24;
    }

    if (v21)
    {
      goto LABEL_22;
    }

    v23 = v51 & 0xFFFFFFFFFFFFFF8;
    if (v22 > *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_21;
    }

    v24 = v5;
    v25 = a1;
LABEL_24:
    v9 &= v9 - 1;
    v27 = *(v23 + 16);
    v28 = (*(v23 + 24) >> 1) - v27;
    v29 = v23 + 8 * v27;
    v48 = v23;
    if (v19)
    {
      v32 = sub_1B1C2D468();
      if (v32)
      {
        v33 = v32;
        result = sub_1B1C2D468();
        if (v28 < result)
        {
          goto LABEL_49;
        }

        if (v33 < 1)
        {
          goto LABEL_50;
        }

        v45 = result;
        v34 = v29 + 32;
        sub_1B1BD6460();
        for (i = 0; i != v33; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB763FD0, &qword_1B1C40A70);
          v36 = sub_1B1B37C88(v52, i, v50);
          v38 = *v37;
          v36(v52, 0);
          *(v34 + 8 * i) = v38;
        }

        a1 = v43;
        a2 = v44;
        v5 = v42;
        v31 = v45;
        goto LABEL_34;
      }

LABEL_38:

      v6 = v47;
      v12 = v51;
      a1 = v25;
      v5 = v24;
      if (v49 > 0)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v30)
      {
        goto LABEL_38;
      }

      if (v28 < v30)
      {
        goto LABEL_48;
      }

      v31 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
      type metadata accessor for SynthesisVoiceSubscription();
      swift_arrayInitWithCopy();
      a1 = v25;
      v5 = v24;
LABEL_34:

      v6 = v47;
      v12 = v51;
      if (v31 < v49)
      {
        goto LABEL_46;
      }

      if (v31 > 0)
      {
        v39 = *(v48 + 16);
        v40 = __OFADD__(v39, v31);
        v41 = v39 + v31;
        if (v40)
        {
          goto LABEL_47;
        }

        *(v48 + 16) = v41;
      }
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v46)
    {

      return v51;
    }

    v9 = *(v6 + 8 * v13);
    ++v11;
    if (v9)
    {
      v11 = v13;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_45:
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
  return result;
}

uint64_t sub_1B1AF7C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  sub_1B1A93378(a3, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7624F0, &qword_1B1C38030);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v9 = 0;
  v18 = MEMORY[0x1E69E7CC0];
  v19 = a4;
  v23[0] = MEMORY[0x1E69E7CC0];
  v10 = *(v22 + 16);
  v11 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v11 = a4 & 0xFFFFFFFFFFFFLL;
  }

  v20 = v11;
  while (1)
  {
    if (v10 == v9)
    {

      return v18;
    }

    if (v9 >= *(v22 + 16))
    {
      break;
    }

    v12 = *(v22 + 8 * v9 + 32);
    type metadata accessor for SynthesisVoice();
    swift_bridgeObjectRetain_n();
    v13 = sub_1B1BD3470(v12);
    if (!v13)
    {

      goto LABEL_13;
    }

    v14 = v13;
    if (v20)
    {

      v15 = v19;
      v16 = a5;
    }

    else
    {
      v15 = 0;
      v16 = 0;
    }

    objc_allocWithZone(type metadata accessor for SynthesisVoiceSubscription());

    v17 = SynthesisVoiceSubscription.init(voice:clientId:accessoryId:)(v14, a1, a2, v15, v16);

    if (v17)
    {
      MEMORY[0x1B2738320](result);
      if (*((v23[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B1C2CE98();
      }

      ++v9;
      result = sub_1B1C2CEC8();
      v18 = v23[0];
    }

    else
    {
LABEL_13:
      ++v9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1AF7E5C(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1B1C2D468();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_1B1C2D568();
}

void sub_1B1AF7EDC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  a4(a3);
  v5 = sub_1B1C2CE68();
  (*(a2 + 16))(a2, v5);
}

id sub_1B1AF7F8C(void *a1, uint64_t a2, void (*a3)(void))
{
  a3();
  sub_1B1C2CB28();
  OUTLINED_FUNCTION_24();

  return a1;
}

void sub_1B1AF8024(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_1B1AF8058();
  *a2 = v4;
  *(a2 + 8) = v5 & 1;
}

uint64_t sub_1B1AF80D8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B1B06490();
  *a1 = result;
  return result;
}

uint64_t sub_1B1AF8164()
{
  OUTLINED_FUNCTION_22_0();
  result = sub_1B1AF818C();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B1AF81C8(_DWORD *a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return OUTLINED_FUNCTION_55(a1);
  }

  else
  {
    return OUTLINED_FUNCTION_53();
  }
}

uint64_t sub_1B1AF81DC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_1B1AF8208(_DWORD *a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return OUTLINED_FUNCTION_55(a1);
  }

  else
  {
    return OUTLINED_FUNCTION_53();
  }
}

uint64_t sub_1B1AF821C(uint64_t result, int a2, int a3)
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

uint64_t sub_1B1AF8244()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B1AF827C()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

unint64_t sub_1B1AF8344@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = PreviewType.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_1B1AF8378@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = SynthesisVoice.VoiceGender.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1B1AF8460(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  result = sub_1B1B0ADF4();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_1B1AF848C(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  result = sub_1B1B0B254();
  *v1 = result;
  return result;
}

uint64_t sub_1B1AF84DC(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  v1 = sub_1B1B0B2FC();
  return OUTLINED_FUNCTION_71(v1);
}

uint64_t sub_1B1AF87AC(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  result = sub_1B1B0C878();
  *v1 = result;
  v1[1] = v3;
  return result;
}

id sub_1B1AF8800(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  result = sub_1B1B0C928();
  *v1 = result;
  return result;
}

uint64_t sub_1B1AF882C(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  v1 = sub_1B1B0CAA8();
  return OUTLINED_FUNCTION_71(v1);
}

uint64_t sub_1B1AF8878(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  v1 = sub_1B1B0CB50();
  return OUTLINED_FUNCTION_71(v1);
}

uint64_t sub_1B1AF88C4(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  result = sub_1B1B0CCA4();
  *v1 = result;
  return result;
}

uint64_t sub_1B1AF89D4(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  result = sub_1B1B0D058();
  *v1 = result;
  return result;
}

uint64_t sub_1B1AF8A00(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  result = sub_1B1B0D1E4();
  *v1 = result;
  return result;
}

uint64_t sub_1B1AF8A4C(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  result = sub_1B1B0D344();
  *v1 = result;
  return result;
}

uint64_t sub_1B1AF8A98(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  v1 = sub_1B1B0D454();
  return OUTLINED_FUNCTION_71(v1);
}

uint64_t sub_1B1AF8AE4(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  v1 = sub_1B1B0D564();
  return OUTLINED_FUNCTION_71(v1);
}

uint64_t sub_1B1AF8B40(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  result = sub_1B1B0DBF0();
  *v1 = result;
  return result;
}

uint64_t sub_1B1AF8B8C(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  v1 = sub_1B1B0DD00();
  return OUTLINED_FUNCTION_71(v1);
}

id sub_1B1AF8BD8(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  result = sub_1B1B0DE1C();
  *v1 = result;
  return result;
}

uint64_t sub_1B1AF8C04(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  v1 = sub_1B1B0DF9C();
  return OUTLINED_FUNCTION_71(v1);
}

uint64_t sub_1B1AF8D3C(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  result = sub_1B1AA1260();
  *v1 = result;
  return result;
}

uint64_t sub_1B1AF8D88(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  result = sub_1B1A9F828();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_1B1AF8E9C(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  result = sub_1B1AF5264();
  *v1 = result;
  v1[1] = v3;
  return result;
}

id sub_1B1AF8FB8(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  result = sub_1B1B10C28();
  *v1 = result;
  return result;
}

id sub_1B1AF8FE4(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  result = sub_1B1A93FE8();
  *v1 = result;
  return result;
}

uint64_t sub_1B1AF9010(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  result = sub_1B1B11448();
  *v1 = result;
  v1[1] = v3;
  return result;
}

id sub_1B1AF9064(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  result = sub_1B1B11568();
  *v1 = result;
  return result;
}

uint64_t sub_1B1AF9090(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  result = sub_1B1B116E8();
  *v1 = result;
  return result;
}

id sub_1B1AF90DC(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  result = sub_1B1A9449C();
  *v1 = result;
  return result;
}

id sub_1B1AF9108(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  result = sub_1B1A945B0();
  *v1 = result;
  return result;
}

id sub_1B1AF9134(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  result = sub_1B1B1229C();
  *v1 = result;
  return result;
}

id sub_1B1AF9160(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  result = sub_1B1B12428();
  *v1 = result;
  return result;
}

uint64_t sub_1B1AF918C(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  result = sub_1B1B125F0();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_1B1AF91E0(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  result = sub_1B1B12744();
  *v1 = result;
  return result;
}

id sub_1B1AF922C(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  result = sub_1B1B1317C();
  *v1 = result;
  return result;
}

id sub_1B1AF9258(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  result = sub_1B1B13308();
  *v1 = result;
  return result;
}

uint64_t sub_1B1AF9284(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  result = sub_1B1B13484();
  *v1 = result;
  return result;
}

uint64_t sub_1B1AF92D0(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  v1 = sub_1B1B13594();
  return OUTLINED_FUNCTION_71(v1);
}

uint64_t sub_1B1AF931C(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  result = sub_1B1AF7F80();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_1B1AF9370(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  result = sub_1B1AC04E8();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_1B1AF93C4(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  result = sub_1B1B14084();
  *v1 = result;
  return result;
}

uint64_t sub_1B1AF9410(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  result = sub_1B1AC0788();
  *v1 = result;
  return result;
}

uint64_t sub_1B1AF945C(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  result = sub_1B1B14260();
  *v1 = result;
  return result;
}

uint64_t sub_1B1AF94A8(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  result = sub_1B1B1436C();
  *v1 = result;
  return result;
}

uint64_t sub_1B1AF94FC(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  result = sub_1B1B15144();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_1B1AF9550(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  result = sub_1B1B151E4();
  *v1 = result;
  return result;
}

uint64_t sub_1B1AF95A8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

BOOL sub_1B1AF9778(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_1B1AF97B4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B1AF97FC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B1AF9834()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B1AF9874()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B1AF98B8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1B1B22DA4();
  *a2 = result;
  return result;
}

void *sub_1B1AF990C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_1B1B23160();
  *a2 = result;
  return result;
}

uint64_t sub_1B1AF9A44()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_2_11();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1B1AF9A98()
{
  v1 = sub_1B1C2C428();
  OUTLINED_FUNCTION_45(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);
  v8 = *(v0 + v5);

  v9 = *(v0 + v6);

  if (*(v0 + v7))
  {
    v10 = *(v0 + v7 + 8);
  }

  return MEMORY[0x1EEE6BDD0](v0, v7 + 16, v3 | 7);
}

uint64_t sub_1B1AF9B60()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  OUTLINED_FUNCTION_66();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1B1AF9BA4()
{
  v1 = v0[2];

  if (v0[3])
  {
    v2 = v0[4];
  }

  OUTLINED_FUNCTION_66();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_1B1AF9BE8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B1AF9C24()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B1AF9C78()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_38_1();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1B1AF9CB4()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_38_1();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1B1AF9D04()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B1AF9D3C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B1AF9D7C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1B1ACEB4C();
  *a2 = result;
  return result;
}

uint64_t sub_1B1AF9DAC()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B1AF9E14()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B1AF9E4C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B1AF9E84@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v5 = *a1;
  result = Asynchronous<>.isProcessing.getter(*(a2 + a3 - 16), *(a2 + a3 - 8));
  *a4 = result & 1;
  return result;
}

__n128 sub_1B1AF9F00(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1B1AF9F24@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1B1B3E8DC();
  *a2 = result;
  return result;
}

uint64_t sub_1B1AF9FEC()
{
  v1 = *(v0 + 24);

  v2 = OUTLINED_FUNCTION_1_0();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1B1AFA02C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B1AFA06C()
{
  v1 = sub_1B1C2C428();
  OUTLINED_FUNCTION_7(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v6 = (v4 + 48) & ~v4;
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;

  if (*(v0 + 24))
  {
    v8 = *(v0 + 32);
  }

  (*(v3 + 8))(v0 + v6, v1);
  if (*(v0 + v7))
  {
    v9 = *(v0 + v7 + 8);
  }

  return MEMORY[0x1EEE6BDD0](v0, v7 + 16, v4 | 7);
}

uint64_t sub_1B1AFA154()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B1AFA198()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B1AFA1DC()
{
  v1 = sub_1B1C2C428();
  OUTLINED_FUNCTION_45(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);
  v8 = *(v0 + v5);

  v9 = *(v0 + v6);

  if (*(v0 + v7))
  {
    v10 = *(v0 + v7 + 8);
  }

  return MEMORY[0x1EEE6BDD0](v0, v7 + 16, v3 | 7);
}

uint64_t sub_1B1AFA2A8()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  OUTLINED_FUNCTION_66();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1B1AFA32C()
{
  v1 = OUTLINED_FUNCTION_15_3();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1B1AFA35C()
{
  v1 = *(v0 + 32);

  if (*(v0 + 40))
  {
    v2 = *(v0 + 48);
  }

  if (*(v0 + 64))
  {
    v3 = *(v0 + 72);
  }

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1B1AFA3BC()
{
  v1 = v0[3];

  v2 = v0[5];

  if (v0[7])
  {
    v3 = v0[8];
  }

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1B1AFA410()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  OUTLINED_FUNCTION_38_1();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_1B1AFA44C()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_66();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1B1AFA490()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B1AFA4E0()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B1AFA520()
{
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_66();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1B1AFA560()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1B1AFA620(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  sub_1B1A91998();
  *v1 = v2;
}

void sub_1B1AFA66C(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  sub_1B1AC4B08();
  *v1 = v2;
}

void sub_1B1AFA6B8(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  sub_1B1A9B6B0();
  *v1 = v2;
}

void sub_1B1AFA704(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  sub_1B1AC5D40();
  *v1 = v2;
}

uint64_t sub_1B1AFA750(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  result = sub_1B1AC0980();
  *v1 = result;
  v1[1] = v3;
  return result;
}

void sub_1B1AFA7A4(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  sub_1B1B5267C();
  *v1 = v2;
}

void sub_1B1AFA7F0(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  sub_1B1B528CC();
  *v1 = v2;
}

void sub_1B1AFA83C(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  sub_1B1B52B1C();
  *v1 = v2;
}

void sub_1B1AFA888(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  sub_1B1AB2758();
  *v1 = v2;
}

uint64_t sub_1B1AFA8D4(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  result = sub_1B1B52F58();
  *v1 = result;
  v1[1] = v3;
  return result;
}

void sub_1B1AFA9B8(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  sub_1B1AA4344();
  *v1 = v2;
}

void sub_1B1AFAA04(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  sub_1B1B53A3C();
  *v1 = v2;
}

void sub_1B1AFAAB0(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  sub_1B1B54220();
  *v1 = v2;
}

void sub_1B1AFAAFC(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  sub_1B1ABF41C();
  *v1 = v2;
}

void sub_1B1AFAB48(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  sub_1B1AC04F4();
  *v1 = v2;
}

void sub_1B1AFAB94(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  sub_1B1AD6050();
  *v1 = v2;
}

void sub_1B1AFABE0(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  sub_1B1B54A58();
  *v1 = v2;
}

void sub_1B1AFAC48(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  sub_1B1B54F70();
  *v1 = v2;
}

uint64_t sub_1B1AFAC94(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  result = sub_1B1B551CC();
  *v1 = result;
  v1[1] = v3;
  return result;
}

void sub_1B1AFACE8(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  sub_1B1B55438();
  *v1 = v2;
}

void sub_1B1AFAD34(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  sub_1B1AD3948();
  *v1 = v2;
}

void sub_1B1AFAD80(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  sub_1B1ABFF90();
  *v1 = v2;
}

void sub_1B1AFADCC(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  sub_1B1AC0918();
  *v1 = v2;
}

void sub_1B1AFAE18(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  sub_1B1B55C70();
  *v1 = v2;
}

void sub_1B1AFAE64(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  sub_1B1AC06F4();
  *v1 = v2;
}

void sub_1B1AFAEB0(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  sub_1B1AF2784();
  *v1 = v2;
}

void sub_1B1AFAEFC(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  sub_1B1B562B4();
  *v1 = v2;
}

void sub_1B1AFAF48(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  sub_1B1A8F0C8();
  *v1 = v2;
}

void sub_1B1AFAF94(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  sub_1B1AD0338();
  *v1 = v2;
}

void sub_1B1AFAFFC(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  sub_1B1B56BBC();
  *v1 = v2;
}

uint64_t sub_1B1AFB048(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  result = sub_1B1B56E18();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_1B1AFB09C(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  result = sub_1B1B57084();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_1B1AFB0F0(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  result = sub_1B1B57304();
  *v1 = result;
  v1[1] = v3;
  return result;
}

void sub_1B1AFB144(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  sub_1B1B57570();
  *v1 = v2;
}

uint64_t sub_1B1AFB190(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  result = sub_1B1B57814();
  *v1 = result;
  v1[1] = v3;
  return result;
}

void sub_1B1AFB1E4(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  sub_1B1B57A94();
  *v1 = v2;
}

uint64_t sub_1B1AFB278()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_17();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1B1AFB2AC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B1AFB2EC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1B1ACEB4C();
  *a2 = result;
  return result;
}

uint64_t sub_1B1AFB450@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1B1B65000();
  *a2 = result;
  return result;
}

uint64_t sub_1B1AFB480@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1B1B65074();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1B1AFB4E4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762908, &qword_1B1C39840);
  sub_1B1B1C340(v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762910, &qword_1B1C39848);
  sub_1B1B1C340(v2);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B1AFB558()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  OUTLINED_FUNCTION_66();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_1B1AFB59C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1B1AFB5EC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  OUTLINED_FUNCTION_66();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_1B1AFB628()
{
  v1 = v0[3];

  v2 = v0[4];

  if (v0[5])
  {
    v3 = v0[6];
  }

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B1AFB678()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  if (*(v0 + 56))
  {
    v3 = *(v0 + 64);
  }

  if (*(v0 + 72))
  {
    v4 = *(v0 + 80);
  }

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1B1AFB6E0()
{
  v1 = v0[3];

  v2 = v0[5];

  if (v0[7])
  {
    v3 = v0[8];
  }

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1B1AFB75C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  OUTLINED_FUNCTION_38_1();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_1B1AFB798()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_66();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1B1AFB7D8()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_17();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1B1AFB818()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_17();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1B1AFB858()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1B1AFB8B8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  v5 = *(v0 + 64);

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1B1AFB920()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B1AFB978()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  v5 = *(v0 + 72);

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1B1AFB9E0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1B1B710F4();
  *a2 = result;
  return result;
}

uint64_t sub_1B1AFBA10()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = OUTLINED_FUNCTION_1_0();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_1B1AFBA50()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = OUTLINED_FUNCTION_1_0();

  return MEMORY[0x1EEE6BDD0](v4, v5, v6);
}

uint64_t sub_1B1AFBA90()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B1AFBAD0()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  v4 = OUTLINED_FUNCTION_1_0();

  return MEMORY[0x1EEE6BDD0](v4, v5, v6);
}

uint64_t sub_1B1AFBB10@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1B1B7675C();
  *a2 = result;
  return result;
}

uint64_t sub_1B1AFBC2C()
{
  OUTLINED_FUNCTION_17();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

double sub_1B1AFBC64(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  *&result = sub_1B1B77EDC(a1).n128_u64[0];
  return result;
}

uint64_t sub_1B1AFBC88@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_1B1B77F94();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1B1AFBDC8()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_17();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1B1AFBF40()
{
  sub_1B1B8C340();
  OUTLINED_FUNCTION_39();
  return sub_1B1C2C648();
}

uint64_t sub_1B1AFC3FC@<X0>(uint64_t *a1@<X8>)
{
  result = Realtime_V1_SessionUpdate.eventID.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B1AFC59C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762AE0, &qword_1B1C3A110);
  v7 = OUTLINED_FUNCTION_86(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v9 = sub_1B1C2C5C8();
    v10 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_1B1AFC640()
{
  OUTLINED_FUNCTION_120_0();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762AE0, &qword_1B1C3A110);
  v7 = OUTLINED_FUNCTION_86(v6);
  if (*(v8 + 84) == v1)
  {
    v9 = v7;
    v10 = v5;
  }

  else
  {
    v9 = sub_1B1C2C5C8();
    v10 = v5 + *(v0 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, v3, v3, v9);
}

uint64_t sub_1B1AFC6E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_58_0();
  v6 = sub_1B1C2C5C8();
  v7 = OUTLINED_FUNCTION_86(v6);
  if (*(v8 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v7);
  }

  else
  {
    v10 = *(v3 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1B1AFC78C()
{
  OUTLINED_FUNCTION_120_0();
  v3 = v2;
  v5 = v4;
  v6 = sub_1B1C2C5C8();
  result = OUTLINED_FUNCTION_86(v6);
  if (*(v8 + 84) == v1)
  {

    return __swift_storeEnumTagSinglePayload(v5, v3, v3, result);
  }

  else
  {
    *(v5 + *(v0 + 20)) = (v3 - 1);
  }

  return result;
}

uint64_t sub_1B1AFC830()
{
  OUTLINED_FUNCTION_61();
  if (v2)
  {
    return OUTLINED_FUNCTION_18_8();
  }

  v4 = OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_86(v4);
  if (*(v5 + 84) == v0)
  {
    v6 = *(v1 + 28);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762AF8, &qword_1B1C3A120);
    v6 = *(v1 + 32);
  }

  v7 = OUTLINED_FUNCTION_76(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_1B1AFC8DC()
{
  OUTLINED_FUNCTION_45_1();
  if (v2)
  {
    OUTLINED_FUNCTION_100_0();
  }

  else
  {
    OUTLINED_FUNCTION_120_0();
    v3 = sub_1B1C2C5C8();
    OUTLINED_FUNCTION_86(v3);
    if (*(v4 + 84) == v1)
    {
      v5 = *(v0 + 28);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762AF8, &qword_1B1C3A120);
      v5 = *(v0 + 32);
    }

    v6 = OUTLINED_FUNCTION_62_0(v5);

    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }
}

uint64_t sub_1B1AFC990()
{
  OUTLINED_FUNCTION_61();
  if (v1)
  {
    return OUTLINED_FUNCTION_18_8();
  }

  OUTLINED_FUNCTION_88();
  v3 = OUTLINED_FUNCTION_76(*(v0 + 36));

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_1B1AFC9F0()
{
  OUTLINED_FUNCTION_45_1();
  if (v1)
  {
    OUTLINED_FUNCTION_100_0();
  }

  else
  {
    v2 = v0;
    sub_1B1C2C5C8();
    v3 = OUTLINED_FUNCTION_62_0(*(v2 + 36));

    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }
}

uint64_t sub_1B1AFCA64()
{
  OUTLINED_FUNCTION_61();
  if (v2)
  {
    return OUTLINED_FUNCTION_18_8();
  }

  v4 = OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_86(v4);
  if (*(v5 + 84) == v0)
  {
    v6 = *(v1 + 24);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762B08, &qword_1B1C3A130);
    v6 = *(v1 + 28);
  }

  v7 = OUTLINED_FUNCTION_76(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_1B1AFCB10()
{
  OUTLINED_FUNCTION_45_1();
  if (v2)
  {
    OUTLINED_FUNCTION_100_0();
  }

  else
  {
    OUTLINED_FUNCTION_120_0();
    v3 = sub_1B1C2C5C8();
    OUTLINED_FUNCTION_86(v3);
    if (*(v4 + 84) == v1)
    {
      v5 = *(v0 + 24);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762B08, &qword_1B1C3A130);
      v5 = *(v0 + 28);
    }

    v6 = OUTLINED_FUNCTION_62_0(v5);

    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }
}

uint64_t sub_1B1AFCBF8@<X0>(uint64_t *a1@<X8>)
{
  result = Realtime_V1_Modality.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B1AFCC54()
{
  OUTLINED_FUNCTION_74();
  sub_1B1B9316C();
  OUTLINED_FUNCTION_39();
  return sub_1B1C2C638();
}

uint64_t sub_1B1AFCCA4()
{
  OUTLINED_FUNCTION_74();
  sub_1B1B931C0();
  OUTLINED_FUNCTION_39();
  return sub_1B1C2C648();
}

uint64_t _s14SiriTTSService20Realtime_V1_ModalityOwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return OUTLINED_FUNCTION_55(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B1AFCFA0(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return OUTLINED_FUNCTION_55(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B1AFCFB4()
{
  OUTLINED_FUNCTION_61();
  if (v3)
  {
    return OUTLINED_FUNCTION_15_16(*v1);
  }

  v5 = OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_86(v5);
  if (*(v6 + 84) == v0)
  {
    v7 = v2[15];
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762FD8, &qword_1B1C3B480);
    OUTLINED_FUNCTION_86(v8);
    if (*(v9 + 84) == v0)
    {
      v7 = v2[16];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762FE0, &qword_1B1C3B488);
      v7 = v2[17];
    }
  }

  v10 = OUTLINED_FUNCTION_76(v7);

  return __swift_getEnumTagSinglePayload(v10, v11, v12);
}

void sub_1B1AFD0B0()
{
  OUTLINED_FUNCTION_45_1();
  if (v4)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v5 = OUTLINED_FUNCTION_86_1();
    OUTLINED_FUNCTION_86(v5);
    if (*(v6 + 84) == v3)
    {
      v7 = v2[15];
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762FD8, &qword_1B1C3B480);
      OUTLINED_FUNCTION_86(v8);
      if (*(v9 + 84) == v3)
      {
        v7 = v2[16];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762FE0, &qword_1B1C3B488);
        v7 = v2[17];
      }
    }

    v10 = OUTLINED_FUNCTION_62_0(v7);

    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }
}

uint64_t sub_1B1AFD1AC()
{
  OUTLINED_FUNCTION_61();
  if (v2)
  {
    return OUTLINED_FUNCTION_15_16(*v0);
  }

  OUTLINED_FUNCTION_88();
  v4 = OUTLINED_FUNCTION_76(*(v1 + 48));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1B1AFD210()
{
  OUTLINED_FUNCTION_45_1();
  if (v3)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_75_2();
    v4 = OUTLINED_FUNCTION_62_0(*(v2 + 48));

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_1B1AFD284()
{
  OUTLINED_FUNCTION_61();
  if (v1)
  {
    return OUTLINED_FUNCTION_18_8();
  }

  OUTLINED_FUNCTION_88();
  v3 = OUTLINED_FUNCTION_76(*(v0 + 20));

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_1B1AFD2E4()
{
  OUTLINED_FUNCTION_45_1();
  if (v1)
  {
    OUTLINED_FUNCTION_100_0();
  }

  else
  {
    OUTLINED_FUNCTION_75_2();
    v2 = OUTLINED_FUNCTION_62_0(*(v0 + 20));

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_1B1AFD344()
{
  OUTLINED_FUNCTION_61();
  if (v2)
  {
    return OUTLINED_FUNCTION_18_8();
  }

  v4 = OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_86(v4);
  if (*(v5 + 84) == v0)
  {
    v6 = *(v1 + 20);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762FE8, &qword_1B1C3B490);
    v6 = *(v1 + 24);
  }

  v7 = OUTLINED_FUNCTION_76(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_1B1AFD3F0()
{
  OUTLINED_FUNCTION_45_1();
  if (v2)
  {
    OUTLINED_FUNCTION_100_0();
  }

  else
  {
    v3 = OUTLINED_FUNCTION_86_1();
    OUTLINED_FUNCTION_86(v3);
    if (*(v4 + 84) == v1)
    {
      v5 = *(v0 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762FE8, &qword_1B1C3B490);
      v5 = *(v0 + 24);
    }

    v6 = OUTLINED_FUNCTION_62_0(v5);

    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }
}

uint64_t sub_1B1AFD49C()
{
  OUTLINED_FUNCTION_61();
  if (v2)
  {
    return OUTLINED_FUNCTION_18_8();
  }

  v4 = OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_86(v4);
  if (*(v5 + 84) == v0)
  {
    v6 = *(v1 + 24);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762FF0, &qword_1B1C3B498);
    v6 = *(v1 + 28);
  }

  v7 = OUTLINED_FUNCTION_76(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_1B1AFD548()
{
  OUTLINED_FUNCTION_45_1();
  if (v2)
  {
    OUTLINED_FUNCTION_100_0();
  }

  else
  {
    v3 = OUTLINED_FUNCTION_86_1();
    OUTLINED_FUNCTION_86(v3);
    if (*(v4 + 84) == v1)
    {
      v5 = *(v0 + 24);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762FF0, &qword_1B1C3B498);
      v5 = *(v0 + 28);
    }

    v6 = OUTLINED_FUNCTION_62_0(v5);

    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }
}

uint64_t sub_1B1AFD5F4()
{
  OUTLINED_FUNCTION_61();
  if (v1)
  {
    return OUTLINED_FUNCTION_18_8();
  }

  OUTLINED_FUNCTION_88();
  v3 = OUTLINED_FUNCTION_76(*(v0 + 28));

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_1B1AFD654()
{
  OUTLINED_FUNCTION_45_1();
  if (v1)
  {
    OUTLINED_FUNCTION_100_0();
  }

  else
  {
    OUTLINED_FUNCTION_75_2();
    v2 = OUTLINED_FUNCTION_62_0(*(v0 + 28));

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_1B1AFD6C0()
{
  OUTLINED_FUNCTION_61();
  if (v1)
  {
    return OUTLINED_FUNCTION_18_8();
  }

  OUTLINED_FUNCTION_88();
  v3 = OUTLINED_FUNCTION_76(*(v0 + 52));

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_1B1AFD720()
{
  OUTLINED_FUNCTION_45_1();
  if (v1)
  {
    OUTLINED_FUNCTION_100_0();
  }

  else
  {
    OUTLINED_FUNCTION_75_2();
    v2 = OUTLINED_FUNCTION_62_0(*(v0 + 52));

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_1B1AFD788()
{
  OUTLINED_FUNCTION_61();
  if (v1)
  {
    return OUTLINED_FUNCTION_18_8();
  }

  OUTLINED_FUNCTION_88();
  v3 = OUTLINED_FUNCTION_76(*(v0 + 36));

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_1B1AFD7E8()
{
  OUTLINED_FUNCTION_45_1();
  if (v1)
  {
    OUTLINED_FUNCTION_100_0();
  }

  else
  {
    OUTLINED_FUNCTION_75_2();
    v2 = OUTLINED_FUNCTION_62_0(*(v0 + 36));

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_1B1AFD9B8()
{
  OUTLINED_FUNCTION_74();
  sub_1B1BB99FC();
  OUTLINED_FUNCTION_39();
  return sub_1B1C2C648();
}

uint64_t sub_1B1AFE8A0@<X0>(uint64_t *a1@<X8>)
{
  result = Realtime_V1_SessionCreated.eventID.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B1AFE990@<X0>(uint64_t *a1@<X8>)
{
  result = Realtime_V1_SessionUpdated.eventID.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B1AFEDD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7636C0, &qword_1B1C3D080);
  v7 = OUTLINED_FUNCTION_86(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v9 = sub_1B1C2C5C8();
    v10 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_1B1AFEE74()
{
  OUTLINED_FUNCTION_120_0();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7636C0, &qword_1B1C3D080);
  v7 = OUTLINED_FUNCTION_86(v6);
  if (*(v8 + 84) == v1)
  {
    v9 = v7;
    v10 = v5;
  }

  else
  {
    v9 = sub_1B1C2C5C8();
    v10 = v5 + *(v0 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, v3, v3, v9);
}

uint64_t sub_1B1AFEF74()
{
  OUTLINED_FUNCTION_61();
  if (v2)
  {
    return OUTLINED_FUNCTION_18_8();
  }

  v4 = OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_86(v4);
  if (*(v5 + 84) == v0)
  {
    v6 = *(v1 + 28);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762AF8, &qword_1B1C3A120);
    v6 = *(v1 + 32);
  }

  v7 = OUTLINED_FUNCTION_76(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_1B1AFF020()
{
  OUTLINED_FUNCTION_45_1();
  if (v2)
  {
    OUTLINED_FUNCTION_100_0();
  }

  else
  {
    OUTLINED_FUNCTION_120_0();
    v3 = sub_1B1C2C5C8();
    OUTLINED_FUNCTION_86(v3);
    if (*(v4 + 84) == v1)
    {
      v5 = *(v0 + 28);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762AF8, &qword_1B1C3A120);
      v5 = *(v0 + 32);
    }

    v6 = OUTLINED_FUNCTION_62_0(v5);

    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }
}

uint64_t sub_1B1AFF114()
{
  OUTLINED_FUNCTION_61();
  if (v1)
  {
    return OUTLINED_FUNCTION_18_8();
  }

  OUTLINED_FUNCTION_88();
  v3 = OUTLINED_FUNCTION_76(*(v0 + 24));

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_1B1AFF174()
{
  OUTLINED_FUNCTION_45_1();
  if (v1)
  {
    OUTLINED_FUNCTION_100_0();
  }

  else
  {
    OUTLINED_FUNCTION_75_2();
    v2 = OUTLINED_FUNCTION_62_0(*(v0 + 24));

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_1B1AFF278()
{
  OUTLINED_FUNCTION_61();
  if (v1)
  {
    return OUTLINED_FUNCTION_18_8();
  }

  OUTLINED_FUNCTION_88();
  v3 = OUTLINED_FUNCTION_76(*(v0 + 48));

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_1B1AFF2D8()
{
  OUTLINED_FUNCTION_45_1();
  if (v1)
  {
    OUTLINED_FUNCTION_100_0();
  }

  else
  {
    OUTLINED_FUNCTION_75_2();
    v2 = OUTLINED_FUNCTION_62_0(*(v0 + 48));

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_1B1AFF338()
{
  OUTLINED_FUNCTION_61();
  if (v1)
  {
    return OUTLINED_FUNCTION_18_8();
  }

  OUTLINED_FUNCTION_88();
  v3 = OUTLINED_FUNCTION_76(*(v0 + 40));

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_1B1AFF398()
{
  OUTLINED_FUNCTION_45_1();
  if (v1)
  {
    OUTLINED_FUNCTION_100_0();
  }

  else
  {
    OUTLINED_FUNCTION_75_2();
    v2 = OUTLINED_FUNCTION_62_0(*(v0 + 40));

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_1B1AFF498()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B1AFF4FC()
{
  v1 = *(v0 + 16);

  v2 = OUTLINED_FUNCTION_15_3();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1B1AFF534()
{
  v1 = OUTLINED_FUNCTION_15_3();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1B1AFF564@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1B1BC945C();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1B1AFF594()
{
  _Block_release(*(v0 + 16));
  v1 = OUTLINED_FUNCTION_15_3();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1B1AFF5D4()
{
  swift_weakDestroy();
  v0 = OUTLINED_FUNCTION_15_3();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1B1AFF604()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = OUTLINED_FUNCTION_0_23();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_1B1AFF640()
{
  v1 = *(v0 + 16);

  v2 = OUTLINED_FUNCTION_0_23();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1B1AFF694@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1B1B65000();
  *a2 = result;
  return result;
}

uint64_t sub_1B1AFF6C4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1B1BCF734();
  *a2 = result;
  return result;
}

uint64_t sub_1B1AFF704()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_17();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1B1AFF744()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  v5 = *(v0 + 64);

  v6 = *(v0 + 72);

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1B1AFF7B4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1B1AFF81C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B1AFF86C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1B1ACEB4C();
  *a2 = result;
  return result;
}

uint64_t sub_1B1AFF89C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1B1BD47D0();
  *a2 = result;
  return result;
}

uint64_t sub_1B1AFF8CC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1B1BD4894();
  *a2 = result;
  return result;
}

uint64_t sub_1B1AFF948()
{
  v1 = sub_1B1C2C428();
  OUTLINED_FUNCTION_7_0(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B1AFFA14()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B1AFFA84@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1B1AC0650();
  *a2 = result;
  return result;
}

uint64_t sub_1B1AFFAB8()
{
  OUTLINED_FUNCTION_17();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1B1AFFAEC(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  result = sub_1B1BE68BC();
  *v1 = result;
  v1[1] = v3;
  return result;
}

void *sub_1B1AFFB40(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  result = sub_1B1BE696C();
  *v1 = result;
  return result;
}

void *sub_1B1AFFB6C(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  result = sub_1B1BE6B04();
  *v1 = result;
  return result;
}

uint64_t sub_1B1AFFB98(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  result = sub_1B1BE6CD8();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_1B1AFFBEC(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  result = sub_1B1BE6E34();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_1B1AFFC40(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  result = sub_1B1BE6EC8();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_1B1AFFC94(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  result = sub_1B1AD95F0();
  *v1 = result;
  return result;
}

uint64_t sub_1B1AFFD2C(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  result = sub_1B1BE7134();
  *v1 = result;
  return result;
}

uint64_t sub_1B1AFFD78(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  result = sub_1B1BE7248();
  *v1 = result;
  return result;
}

uint64_t sub_1B1AFFDC4(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  result = sub_1B1AD9650();
  *v1 = result;
  return result;
}

uint64_t sub_1B1AFFE10(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  result = sub_1B1AD96B0();
  *v1 = result;
  return result;
}

uint64_t sub_1B1AFFE5C(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  result = sub_1B1BE74C4();
  *v1 = result;
  return result;
}

uint64_t sub_1B1AFFEF4(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  result = sub_1B1BE76F0();
  *v1 = result;
  return result;
}

uint64_t sub_1B1AFFF40(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  result = sub_1B1BE7804();
  *v1 = result;
  return result;
}

uint64_t sub_1B1B00024(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  v1 = sub_1B1BE7B4C();
  return OUTLINED_FUNCTION_71(v1);
}

uint64_t sub_1B1B00070(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  result = sub_1B1BE7C94();
  *v1 = result;
  return result;
}

uint64_t sub_1B1B000BC(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  v1 = sub_1B1BE7DAC();
  return OUTLINED_FUNCTION_71(v1);
}

uint64_t sub_1B1B00108(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  v1 = sub_1B1BE7EC4();
  return OUTLINED_FUNCTION_71(v1);
}

uint64_t sub_1B1B00154(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  result = sub_1B1BE7FD8();
  *v1 = result;
  return result;
}

uint64_t sub_1B1B001A0(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  result = sub_1B1BE811C();
  *v1 = result;
  return result;
}

uint64_t sub_1B1B001CC(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  v1 = sub_1B1BE82AC();
  return OUTLINED_FUNCTION_71(v1);
}

uint64_t sub_1B1B00218(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  result = sub_1B1BE83C0();
  *v1 = result;
  return result;
}

uint64_t sub_1B1B00264(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  v1 = sub_1B1BE84D8();
  return OUTLINED_FUNCTION_71(v1);
}

uint64_t sub_1B1B002B0(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  v1 = sub_1B1BE85F0();
  return OUTLINED_FUNCTION_71(v1);
}

uint64_t sub_1B1B002FC(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  v1 = sub_1B1BE8708();
  return OUTLINED_FUNCTION_71(v1);
}

uint64_t sub_1B1B00348(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  v1 = sub_1B1BE8820();
  return OUTLINED_FUNCTION_71(v1);
}

uint64_t sub_1B1B00394(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  v1 = sub_1B1BE8938();
  return OUTLINED_FUNCTION_71(v1);
}

uint64_t sub_1B1B003E0(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  v1 = sub_1B1BE8A50();
  return OUTLINED_FUNCTION_71(v1);
}

uint64_t sub_1B1B0042C(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  result = sub_1B1BE8B64();
  *v1 = result;
  return result;
}

uint64_t sub_1B1B00478(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  result = sub_1B1BE8C78();
  *v1 = result;
  return result;
}

uint64_t sub_1B1B004C8(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  result = sub_1B1BE8D80();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_1B1B0051C(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  result = sub_1B1BE8E14();
  *v1 = result;
  v1[1] = v3;
  return result;
}

id sub_1B1B00578(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  result = sub_1B1BE9E74();
  *v1 = result;
  return result;
}

uint64_t sub_1B1B005A4(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  result = sub_1B1BE9FF4();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_1B1B005D0(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  result = sub_1B1BEA1A8();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_1B1B00634(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  v1 = sub_1B1BEB704();
  return OUTLINED_FUNCTION_71(v1);
}

uint64_t sub_1B1B00680(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_3(a1);
  result = sub_1B1BEB9B8();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_1B1B007F0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B1B00828@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1B1BFBE84();
  *a2 = result;
  return result;
}

uint64_t storeEnumTagSinglePayload for Realtime_V1_ClientEventType(uint64_t result, int a2, int a3)
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

uint64_t sub_1B1B0088C(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

SiriTTSService::AudioPlaybackError_optional __swiftcall AudioPlaybackError.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1B1B008DC(unsigned __int8 a1)
{
  sub_1B1C2D888();
  MEMORY[0x1B2738D60](a1);
  return sub_1B1C2D8E8();
}

uint64_t sub_1B1B00984(uint64_t a1, void (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_57();
  a2(a1);
  OUTLINED_FUNCTION_54();

  return sub_1B1C2D8E8();
}

uint64_t sub_1B1B009D4(char a1)
{
  OUTLINED_FUNCTION_57();
  MEMORY[0x1B2738D60](qword_1B1C360F0[a1]);
  return sub_1B1C2D8E8();
}

uint64_t sub_1B1B00A20()
{
  OUTLINED_FUNCTION_57();
  sub_1B1B0A8A4();
  return sub_1B1C2D8E8();
}

uint64_t sub_1B1B00B00(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = OUTLINED_FUNCTION_57();
  a3(v4);
  OUTLINED_FUNCTION_74_1();
  return sub_1B1C2D8E8();
}

uint64_t sub_1B1B00B5C()
{
  OUTLINED_FUNCTION_57();
  v0 = OUTLINED_FUNCTION_71_0();
  MEMORY[0x1B2738D60](v0);
  return sub_1B1C2D8E8();
}

uint64_t sub_1B1B00BA8()
{
  sub_1B1C2D888();
  sub_1B1C2CC48();

  return sub_1B1C2D8E8();
}

uint64_t sub_1B1B00C6C(uint64_t a1, unsigned __int8 a2)
{
  sub_1B1C2D888();
  MEMORY[0x1B2738D60](a2);
  return sub_1B1C2D8E8();
}

uint64_t sub_1B1B00D10()
{
  sub_1B1C2D888();
  sub_1B1B0A8A4();
  return sub_1B1C2D8E8();
}

uint64_t sub_1B1B00D94(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v5 = sub_1B1C2D888();
  a4(v5);
  OUTLINED_FUNCTION_74_1();
  return sub_1B1C2D8E8();
}

uint64_t sub_1B1B00E00(uint64_t a1, char a2)
{
  sub_1B1C2D888();
  MEMORY[0x1B2738D60](qword_1B1C360F0[a2]);
  return sub_1B1C2D8E8();
}

uint64_t sub_1B1B00E58@<X0>(uint64_t *a1@<X8>)
{
  result = AudioPlaybackError.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t AudioRouteInfo.audioRouteName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_43_0();
}

uint64_t AudioRouteInfo.audioRouteName.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

__n128 sub_1B1B01040@<Q0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_29(OBJC_IVAR___SiriTTSAudioData_asbd);
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  result = *v1;
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(v1 + 32);
  return result;
}

__n128 sub_1B1B010D0(uint64_t a1)
{
  OUTLINED_FUNCTION_29(OBJC_IVAR___SiriTTSAudioData_asbd);
  OUTLINED_FUNCTION_15_0();
  swift_beginAccess();
  result = *a1;
  v4 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v4;
  *(v1 + 32) = *(a1 + 32);
  return result;
}

double sub_1B1B0111C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_1B1B01040(v6);
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v7;
  return result;
}

double sub_1B1B01164(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  *&result = sub_1B1B010D0(a1).n128_u64[0];
  return result;
}

uint64_t sub_1B1B0121C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1B1B011EC();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1B1B012D0()
{
  v1 = OBJC_IVAR___SiriTTSAudioData_packetCount;
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B1B01338(uint64_t a1)
{
  v3 = OBJC_IVAR___SiriTTSAudioData_packetCount;
  OUTLINED_FUNCTION_15_0();
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B1B01384@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1B1B012D0();
  *a2 = result;
  return result;
}

id sub_1B1B0143C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  v3 = sub_1B1C2C298();
  v4 = OUTLINED_FUNCTION_43_0();
  sub_1B1A94524(v4, v5);

  return v3;
}

uint64_t sub_1B1B014A4(void *a1)
{
  v2 = (v1 + *a1);
  OUTLINED_FUNCTION_4_0();
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];
  v5 = OUTLINED_FUNCTION_49();
  sub_1B1AA64DC(v5, v6);
  return OUTLINED_FUNCTION_49();
}

void sub_1B1B01504(void *a1, uint64_t a2, void *a3, void (*a4)(uint64_t))
{
  v6 = a3;
  v8 = a1;
  sub_1B1C2C2B8();

  v7 = OUTLINED_FUNCTION_67_0();
  a4(v7);
}

uint64_t sub_1B1B01590(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_29(*a3);
  OUTLINED_FUNCTION_15_0();
  swift_beginAccess();
  v6 = *v3;
  v7 = v3[1];
  *v3 = a1;
  v3[1] = a2;
  return sub_1B1A94524(v6, v7);
}

uint64_t sub_1B1B015E0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1B1B01498();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1B1B01624(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, unint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;
  sub_1B1AA64DC(*a1, v6);
  return a5(v7, v6);
}

id AudioData.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t static AudioData.supportsSecureCoding.setter(char a1)
{
  OUTLINED_FUNCTION_15_0();
  result = swift_beginAccess();
  byte_1EB7614B0 = a1;
  return result;
}

uint64_t (*static AudioData.supportsSecureCoding.modify())()
{
  OUTLINED_FUNCTION_49();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1B1B017A4@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EB7614B0;
  return result;
}

uint64_t sub_1B1B017F0(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EB7614B0 = v1;
  return result;
}

uint64_t sub_1B1B018D4()
{
  v1 = v0;
  sub_1B1C2D538();
  MEMORY[0x1B27381B0](0x203A74616D726F66, 0xE800000000000000);
  v2 = (v0 + OBJC_IVAR___SiriTTSAudioData_asbd);
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v16 = *v2;
  v17 = v2[1];
  v18 = *(v2 + 4);
  type metadata accessor for AudioStreamBasicDescription(0);
  sub_1B1C2D618();
  MEMORY[0x1B27381B0](0x3A7365747962202CLL, 0xE900000000000020);
  v3 = (v1 + OBJC_IVAR___SiriTTSAudioData_audioData);
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];
  v6 = OUTLINED_FUNCTION_36();
  sub_1B1AA64DC(v6, v7);
  v8 = OUTLINED_FUNCTION_36();
  MEMORY[0x1B27377C0](v8);
  v9 = OUTLINED_FUNCTION_36();
  sub_1B1A94524(v9, v10);
  OUTLINED_FUNCTION_51();
  v11 = sub_1B1C2D778();
  MEMORY[0x1B27381B0](v11);

  OUTLINED_FUNCTION_75();
  MEMORY[0x1B27381B0](0xD000000000000010);
  v12 = OBJC_IVAR___SiriTTSAudioData_packetCount;
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v15 = *(v1 + v12);
  OUTLINED_FUNCTION_51();
  v13 = sub_1B1C2D778();
  MEMORY[0x1B27381B0](v13);

  return 0;
}

id AudioData.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudioData();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t AudioData.isEqual(_:)(uint64_t a1)
{
  sub_1B1A9D80C(a1, &v34);
  if (!*(&v35 + 1))
  {
    sub_1B1A90C20(&v34, &qword_1EB761DE0, &qword_1B1C352C0);
    goto LABEL_9;
  }

  type metadata accessor for AudioData();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v29 = 0;
    return v29 & 1;
  }

  v2 = (v1 + OBJC_IVAR___SiriTTSAudioData_asbd);
  OUTLINED_FUNCTION_4_0();
  swift_beginAccess();
  v3 = v2[1];
  v34 = *v2;
  v35 = v3;
  v36 = *(v2 + 4);
  v4 = OBJC_IVAR___SiriTTSAudioData_asbd;
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  if ((sub_1B1B01D2C(&v34, &v33[v4]) & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = OBJC_IVAR___SiriTTSAudioData_packetCount;
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR___SiriTTSAudioData_packetCount;
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  if (v6 != *&v33[v7])
  {
    goto LABEL_8;
  }

  v8 = (v1 + OBJC_IVAR___SiriTTSAudioData_packetDescriptions);
  OUTLINED_FUNCTION_4_0();
  swift_beginAccess();
  v10 = *v8;
  v9 = v8[1];
  v11 = &v33[OBJC_IVAR___SiriTTSAudioData_packetDescriptions];
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v13 = *v11;
  v12 = v11[1];
  v14 = OUTLINED_FUNCTION_72();
  sub_1B1AA64DC(v14, v15);
  sub_1B1AA64DC(v13, v12);
  v16 = OUTLINED_FUNCTION_72();
  v17 = MEMORY[0x1B2737770](v16);
  sub_1B1A94524(v13, v12);
  v18 = OUTLINED_FUNCTION_72();
  sub_1B1A94524(v18, v19);
  if ((v17 & 1) == 0)
  {
LABEL_8:

    goto LABEL_9;
  }

  v20 = (v1 + OBJC_IVAR___SiriTTSAudioData_audioData);
  OUTLINED_FUNCTION_4_0();
  swift_beginAccess();
  v21 = *v20;
  v22 = v20[1];
  v23 = &v33[OBJC_IVAR___SiriTTSAudioData_audioData];
  OUTLINED_FUNCTION_4_0();
  swift_beginAccess();
  v24 = *v23;
  v25 = v23[1];
  v26 = OUTLINED_FUNCTION_67_0();
  sub_1B1AA64DC(v26, v27);
  sub_1B1AA64DC(v24, v25);
  v28 = OUTLINED_FUNCTION_67_0();
  v29 = MEMORY[0x1B2737770](v28);
  sub_1B1A94524(v24, v25);
  v30 = OUTLINED_FUNCTION_67_0();
  sub_1B1A94524(v30, v31);

  return v29 & 1;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1B1B01D2C(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) && *(a1 + 12) == *(a2 + 12) && *(a1 + 16) == *(a2 + 16) && *(a1 + 20) == *(a2 + 20) && *(a1 + 24) == *(a2 + 24) && *(a1 + 28) == *(a2 + 28) && *(a1 + 32) == *(a2 + 32))
  {
    return *(a1 + 36) == *(a2 + 36);
  }

  else
  {
    return OUTLINED_FUNCTION_53();
  }
}

uint64_t AudioData.hash.getter()
{
  v1 = v0;
  sub_1B1C2D8F8();
  v2 = v0 + OBJC_IVAR___SiriTTSAudioData_asbd;
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v3 = *v2;
  if (*v2 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x1B2738D90](*&v3);
  v4 = *(v2 + 8);
  sub_1B1C2D8B8();
  v5 = *(v2 + 12);
  sub_1B1C2D8B8();
  v6 = *(v2 + 16);
  sub_1B1C2D8B8();
  v7 = *(v2 + 20);
  sub_1B1C2D8B8();
  v8 = *(v2 + 24);
  sub_1B1C2D8B8();
  v9 = *(v2 + 28);
  sub_1B1C2D8B8();
  v10 = *(v2 + 32);
  sub_1B1C2D8B8();
  v11 = OBJC_IVAR___SiriTTSAudioData_packetCount;
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  MEMORY[0x1B2738D60](*(v1 + v11));
  v12 = (v1 + OBJC_IVAR___SiriTTSAudioData_packetDescriptions);
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v14 = *v12;
  v13 = v12[1];
  v15 = OUTLINED_FUNCTION_36();
  sub_1B1AA64DC(v15, v16);
  sub_1B1C2C2C8();
  v17 = OUTLINED_FUNCTION_36();
  sub_1B1A94524(v17, v18);
  v19 = (v1 + OBJC_IVAR___SiriTTSAudioData_audioData);
  OUTLINED_FUNCTION_4_0();
  swift_beginAccess();
  v21 = *v19;
  v20 = v19[1];
  v22 = OUTLINED_FUNCTION_49();
  sub_1B1AA64DC(v22, v23);
  sub_1B1C2C2C8();
  v24 = OUTLINED_FUNCTION_49();
  sub_1B1A94524(v24, v25);
  return sub_1B1C2D8D8();
}

char *AudioData.__allocating_init(audioFileURL:)(uint64_t a1)
{
  outAudioFile[1] = *MEMORY[0x1E69E9840];
  v3 = [objc_allocWithZone(v1) init];
  outAudioFile[0] = 0;
  v4 = sub_1B1C2C118();
  v5 = AudioFileOpenURL(v4, kAudioFileReadPermission, 0, outAudioFile);

  if (!v5)
  {
    v10 = outAudioFile[0];
    if (outAudioFile[0])
    {
      v97 = 0;
      outPropertyData = 0u;
      v96 = 0u;
      ioDataSize = 40;
      if (AudioFileGetProperty(outAudioFile[0], 0x64666D74u, &ioDataSize, &outPropertyData))
      {
        OUTLINED_FUNCTION_62_1();
        *&v91 = 0;
        *(&v91 + 1) = v11;
        sub_1B1C2D538();
        OUTLINED_FUNCTION_30_0();
        MEMORY[0x1B27381B0](v12 + 8, v13 | 0x8000000000000000);
        v105 = 0;
        v14 = sub_1B1C2D778();
        MEMORY[0x1B27381B0](v14);

        v16 = *(&v91 + 1);
        mStartOffset = 0;
LABEL_6:
        sub_1B1A9EC9C();
        OUTLINED_FUNCTION_27();
        v17 = swift_allocError();
        OUTLINED_FUNCTION_59(v17, v18);
LABEL_10:
        *(v19 + 8) = mStartOffset;
        *(v19 + 16) = v16;
        swift_willThrow();
LABEL_11:
        AudioFileClose(v10);
        goto LABEL_12;
      }

      v91 = outPropertyData;
      v92 = v96;
      v93 = v97;
      v20 = &v3[OBJC_IVAR___SiriTTSAudioData_asbd];
      OUTLINED_FUNCTION_15_0();
      swift_beginAccess();
      *v20 = v91;
      *(v20 + 1) = v92;
      *(v20 + 4) = v93;
      v90 = 0;
      ioDataSize = 8;
      if (AudioFileGetProperty(v10, 0x62636E74u, &ioDataSize, &v90))
      {
        OUTLINED_FUNCTION_62_1();
        v103 = 0;
        v104 = v21;
        sub_1B1C2D538();
        OUTLINED_FUNCTION_30_0();
        MEMORY[0x1B27381B0](v22 + 12, v23 | 0x8000000000000000);
        LODWORD(v100.mStartOffset) = 0;
        v24 = sub_1B1C2D778();
        MEMORY[0x1B27381B0](v24);

        mStartOffset = v103;
        v16 = v104;
LABEL_9:
        sub_1B1A9EC9C();
        OUTLINED_FUNCTION_27();
        swift_allocError();
        *v19 = 1;
        goto LABEL_10;
      }

      v89 = 0;
      ioDataSize = 8;
      if (AudioFileGetProperty(v10, 0x70636E74u, &ioDataSize, &v89))
      {
        OUTLINED_FUNCTION_62_1();
        v103 = 0;
        v104 = v29;
        sub_1B1C2D538();
        OUTLINED_FUNCTION_30_0();
        MEMORY[0x1B27381B0](v30 + 14, v31 | 0x8000000000000000);
        LODWORD(v100.mStartOffset) = 0;
        v32 = sub_1B1C2D778();
        MEMORY[0x1B27381B0](v32);

        mStartOffset = v103;
        v16 = v104;
        goto LABEL_6;
      }

      v33 = v89;
      if (v89 < 0)
      {
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
      }

      else
      {
        v34 = OBJC_IVAR___SiriTTSAudioData_packetCount;
        OUTLINED_FUNCTION_15_0();
        swift_beginAccess();
        *&v3[v34] = v33;
        v88 = 0;
        ioDataSize = 4;
        if (AudioFileGetProperty(v10, 0x70737A65u, &ioDataSize, &v88))
        {
          OUTLINED_FUNCTION_62_1();
          v100.mStartOffset = 0;
          *&v100.mVariableFramesInPacket = v35;
          sub_1B1C2D538();
          OUTLINED_FUNCTION_30_0();
          MEMORY[0x1B27381B0](v36 + 10, v37 | 0x8000000000000000);
          LODWORD(v98) = v34;
          v38 = sub_1B1C2D778();
          MEMORY[0x1B27381B0](v38);

          mStartOffset = v100.mStartOffset;
          v16 = *&v100.mVariableFramesInPacket;
          goto LABEL_9;
        }

        if ((v90 & 0x8000000000000000) == 0)
        {
          v39 = sub_1B1C2C268();
          v101 = v39;
          v102 = v40;
          v81 = v89;
          if (v89)
          {
            v41 = 0;
            v42 = MEMORY[0x1E69E7CC0];
            while (2)
            {
              v100.mStartOffset = 0;
              *&v100.mVariableFramesInPacket = 0;
              v43 = v88;
              if (v88)
              {
                if (v88 <= 0xE)
                {
                  v49 = 0;
                  v50 = v80 & 0xF00000000000000 | (v88 << 48);
                  v80 = v50;
                }

                else
                {
                  v44 = v41;
                  v45 = sub_1B1C2BF58();
                  v46 = *(v45 + 48);
                  v47 = *(v45 + 52);
                  swift_allocObject();
                  v48 = sub_1B1C2BF18();
                  if (v43 >= 0x7FFFFFFF)
                  {
                    sub_1B1C2C258();
                    v49 = swift_allocObject();
                    *(v49 + 16) = 0;
                    *(v49 + 24) = v43;
                    v50 = v48 | 0x8000000000000000;
                  }

                  else
                  {
                    v49 = v43 << 32;
                    v50 = v48 | 0x4000000000000000;
                  }

                  v41 = v44;
                }
              }

              else
              {
                v49 = 0;
                v50 = 0xC000000000000000;
              }

              v98 = v49;
              v99 = v50;
              ioNumPackets = 1;
              v87 = v88;
              if (sub_1B1B04D78(&v98, v10, &v87, &v100, v41, &ioNumPackets))
              {

                sub_1B1C2D538();

                OUTLINED_FUNCTION_47();
                v85 = v64;
                v65 = sub_1B1C2D778();
                MEMORY[0x1B27381B0](v65);

                sub_1B1A9EC9C();
                OUTLINED_FUNCTION_27();
                v66 = swift_allocError();
                OUTLINED_FUNCTION_59(v66, v67);
                *(v68 + 8) = 0xD00000000000002BLL;
                *(v68 + 16) = v85;
                swift_willThrow();
                sub_1B1A94524(v98, v99);
                sub_1B1A94524(v101, v102);
                goto LABEL_11;
              }

              ++v41;
              v51 = 0;
              v83 = v42;
              switch(v102 >> 62)
              {
                case 1uLL:
                  if (__OFSUB__(HIDWORD(v101), v101))
                  {
                    goto LABEL_48;
                  }

                  v51 = HIDWORD(v101) - v101;
LABEL_36:
                  v54 = sub_1B1C2C328();
                  v56 = v55;
                  sub_1B1C2C318();
                  sub_1B1A94524(v54, v56);
                  v57 = *&v100.mVariableFramesInPacket;
                  v42 = v83;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v42 = sub_1B1B043A0(0, *(v83 + 2) + 1, 1, v83);
                  }

                  v59 = *(v42 + 2);
                  v58 = *(v42 + 3);
                  if (v59 >= v58 >> 1)
                  {
                    v61 = OUTLINED_FUNCTION_63_0(v58);
                    v42 = sub_1B1B043A0(v61, v62, v63, v42);
                  }

                  *(v42 + 2) = v59 + 1;
                  v60 = &v42[16 * v59];
                  *(v60 + 4) = v51;
                  *(v60 + 5) = v57;
                  sub_1B1A94524(v98, v99);
                  if (v81 != v41)
                  {
                    continue;
                  }

                  v69 = v42;
                  v70 = v101;
                  v71 = v102;
                  break;
                case 2uLL:
                  v52 = *(v101 + 16);
                  v53 = *(v101 + 24);
                  v51 = v53 - v52;
                  if (!__OFSUB__(v53, v52))
                  {
                    goto LABEL_36;
                  }

                  goto LABEL_47;
                case 3uLL:
                  goto LABEL_36;
                default:
                  v51 = BYTE6(v102);
                  goto LABEL_36;
              }

              break;
            }
          }

          else
          {
            v70 = v39;
            v71 = v40;
            v69 = MEMORY[0x1E69E7CC0];
          }

          v72 = &v3[OBJC_IVAR___SiriTTSAudioData_audioData];
          OUTLINED_FUNCTION_15_0();
          swift_beginAccess();
          v82 = v72[1];
          v84 = *v72;
          *v72 = v70;
          v72[1] = v71;
          sub_1B1AA64DC(v70, v71);
          sub_1B1A94524(v84, v82);
          v73 = *(v69 + 2);
          if (!(v73 >> 59))
          {
            v74 = MEMORY[0x1B27377A0](v69 + 32, 16 * v73);
            v76 = v75;

            v77 = &v3[OBJC_IVAR___SiriTTSAudioData_packetDescriptions];
            OUTLINED_FUNCTION_15_0();
            swift_beginAccess();
            v78 = *v77;
            v79 = v77[1];
            *v77 = v74;
            v77[1] = v76;
            sub_1B1A94524(v78, v79);
            sub_1B1A94524(v101, v102);
            AudioFileClose(v10);
            goto LABEL_13;
          }

LABEL_50:
          __break(1u);
        }
      }

      __break(1u);
      goto LABEL_50;
    }
  }

  *&outPropertyData = 0;
  *(&outPropertyData + 1) = 0xE000000000000000;
  sub_1B1C2D538();
  OUTLINED_FUNCTION_75();
  MEMORY[0x1B27381B0](0xD00000000000002ALL);
  sub_1B1C2C1C8();
  sub_1B1AADDE4(&qword_1ED9A5260, MEMORY[0x1E6968FB0]);
  v6 = sub_1B1C2D778();
  MEMORY[0x1B27381B0](v6);

  MEMORY[0x1B27381B0](0x206F6E727265202CLL, 0xE800000000000000);
  LODWORD(v91) = v5;
  v7 = sub_1B1C2D778();
  MEMORY[0x1B27381B0](v7);

  v8 = outPropertyData;
  sub_1B1A9EC9C();
  OUTLINED_FUNCTION_27();
  swift_allocError();
  *v9 = 1;
  *(v9 + 8) = v8;
  swift_willThrow();
LABEL_12:

LABEL_13:
  v25 = sub_1B1C2C1C8();
  OUTLINED_FUNCTION_45(v25);
  (*(v26 + 8))(a1);
  v27 = *MEMORY[0x1E69E9840];
  return v3;
}

char *AudioData.__allocating_init(serverOpusBytes:asbd:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v79 = *MEMORY[0x1E69E9840];
  v68 = [objc_allocWithZone(v3) init];
  v7 = OUTLINED_FUNCTION_40();
  v8 = MEMORY[0x1B27377C0](v7);
  v77 = sub_1B1C2C268();
  v78 = v9;
  if (v8 < 1)
  {
    v10 = 0;
    v70 = MEMORY[0x1E69E7CC0];
LABEL_42:
    v31 = OBJC_IVAR___SiriTTSAudioData_packetCount;
    v32 = v68;
    OUTLINED_FUNCTION_15_0();
    swift_beginAccess();
    *&v68[v31] = v10;
    v12 = v70;
    v33 = *(v70 + 2);
    if (v33 >> 59)
    {
      goto LABEL_62;
    }

    v34 = 16 * v33;

    v35 = MEMORY[0x1B27377A0](v70 + 32, v34);
    v37 = v36;
    v38 = OUTLINED_FUNCTION_40();
    sub_1B1A94524(v38, v39);
    swift_bridgeObjectRelease_n();
    v40 = &v68[OBJC_IVAR___SiriTTSAudioData_packetDescriptions];
    OUTLINED_FUNCTION_15_0();
    swift_beginAccess();
    v41 = *v40;
    v42 = v40[1];
    *v40 = v35;
    v40[1] = v37;
    sub_1B1A94524(v41, v42);
    v43 = v77;
    v44 = v78;
    v45 = &v68[OBJC_IVAR___SiriTTSAudioData_audioData];
    OUTLINED_FUNCTION_15_0();
    swift_beginAccess();
    v46 = *v45;
    v47 = v45[1];
    *v45 = v43;
    v45[1] = v44;
    v48 = OUTLINED_FUNCTION_43_0();
    sub_1B1AA64DC(v48, v49);
    v50 = OUTLINED_FUNCTION_32_2();
    sub_1B1A94524(v50, v51);
    v52 = &v68[OBJC_IVAR___SiriTTSAudioData_asbd];
    OUTLINED_FUNCTION_15_0();
    swift_beginAccess();
    v53 = *(a3 + 16);
    *v52 = *a3;
    *(v52 + 1) = v53;
    *(v52 + 4) = *(a3 + 32);
    goto LABEL_48;
  }

  v10 = 0;
  v11 = 0;
  v70 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v69 = v10;
    v12 = 0;
    v4 = v11;
LABEL_4:
    if (v4 >= v8)
    {
LABEL_23:
      if (v12 >= 1)
      {
        if (__OFSUB__(v8, v4))
        {
          goto LABEL_55;
        }

        if (v8 - v4 >= v12)
        {
          v21 = 0;
          switch(v78 >> 62)
          {
            case 1uLL:
              if (__OFSUB__(HIDWORD(v77), v77))
              {
                goto LABEL_60;
              }

              v21 = HIDWORD(v77) - v77;
LABEL_31:
              if (v12 > 0xFFFFFFFFLL)
              {
                goto LABEL_56;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v70 = sub_1B1B043A0(0, *(v70 + 2) + 1, 1, v70);
              }

              v25 = *(v70 + 2);
              v24 = *(v70 + 3);
              if (v25 >= v24 >> 1)
              {
                v28 = OUTLINED_FUNCTION_63_0(v24);
                v70 = sub_1B1B043A0(v28, v29, v30, v70);
              }

              *(v70 + 2) = v25 + 1;
              v26 = &v70[16 * v25];
              *(v26 + 4) = v21;
              *(v26 + 10) = 0;
              *(v26 + 11) = v12;
              v11 = v4 + v12;
              if (__OFADD__(v4, v12))
              {
                goto LABEL_57;
              }

              if (v11 < v4)
              {
                goto LABEL_58;
              }

              v4 = sub_1B1C2C288();
              v12 = v27;
              sub_1B1C2C318();
              sub_1B1A94524(v4, v12);
              v10 = v69 + 1;
              if (__OFADD__(v69, 1))
              {
                goto LABEL_59;
              }

              if (v11 >= v8)
              {
                goto LABEL_42;
              }

              continue;
            case 2uLL:
              v22 = *(v77 + 16);
              v23 = *(v77 + 24);
              v21 = v23 - v22;
              if (!__OFSUB__(v23, v22))
              {
                goto LABEL_31;
              }

              goto LABEL_61;
            case 3uLL:
              goto LABEL_31;
            default:
              v21 = BYTE6(v78);
              goto LABEL_31;
          }
        }
      }

      if (qword_1ED9A9288 != -1)
      {
        goto LABEL_63;
      }

      goto LABEL_45;
    }

    break;
  }

  switch(a2 >> 62)
  {
    case 1uLL:
      if (v4 < a1 || v4 >= a1 >> 32)
      {
        goto LABEL_51;
      }

      v19 = sub_1B1C2BF08();
      if (!v19)
      {
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
      }

      v15 = v19;
      v20 = sub_1B1C2BF38();
      v17 = v4 - v20;
      if (!__OFSUB__(v4, v20))
      {
        goto LABEL_21;
      }

      goto LABEL_53;
    case 2uLL:
      if (v4 < *(a1 + 16))
      {
        goto LABEL_50;
      }

      if (v4 >= *(a1 + 24))
      {
        goto LABEL_52;
      }

      v14 = sub_1B1C2BF08();
      if (!v14)
      {
        goto LABEL_66;
      }

      v15 = v14;
      v16 = sub_1B1C2BF38();
      v17 = v4 - v16;
      if (__OFSUB__(v4, v16))
      {
        goto LABEL_54;
      }

LABEL_21:
      v13 = *(v15 + v17);
      goto LABEL_22;
    case 3uLL:
      __break(1u);
      goto LABEL_65;
    default:
      if (v4 < BYTE6(a2))
      {
        v71 = a1;
        v72 = a2;
        v73 = BYTE2(a2);
        v74 = BYTE3(a2);
        v75 = BYTE4(a2);
        v76 = BYTE5(a2);
        v13 = *(&v71 + v4);
LABEL_22:
        ++v4;
        v12 = v13 & 0x7F | (v12 << 7);
        if ((v13 & 0x80) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_4;
      }

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
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      OUTLINED_FUNCTION_0_0();
      swift_once();
LABEL_45:
      v54 = sub_1B1C2C8A8();
      __swift_project_value_buffer(v54, qword_1ED9A9120);
      v55 = sub_1B1C2C888();
      sub_1B1C2D0D8();
      v56 = OUTLINED_FUNCTION_37_0();
      if (os_log_type_enabled(v56, v57))
      {
        OUTLINED_FUNCTION_34_1();
        v58 = swift_slowAlloc();
        *v58 = 134218496;
        *(v58 + 4) = v12;
        *(v58 + 12) = 2048;
        *(v58 + 14) = v4;
        *(v58 + 22) = 2048;
        *(v58 + 24) = v8;
        OUTLINED_FUNCTION_69();
        _os_log_impl(v59, v60, v61, v62, v58, 0x20u);
        OUTLINED_FUNCTION_14();
        MEMORY[0x1B2739FD0]();
      }

      v63 = OUTLINED_FUNCTION_40();
      sub_1B1A94524(v63, v64);

      v32 = v68;
LABEL_48:
      sub_1B1A94524(v77, v78);
      v65 = *MEMORY[0x1E69E9840];
      return v32;
  }
}

void sub_1B1B02E5C()
{
  OUTLINED_FUNCTION_44();
  v2 = *(v1 + 112);
  v3 = *(v0 + v2);
  *(v0 + v2) = v4;
}

uint64_t sub_1B1B02EB4()
{
  OUTLINED_FUNCTION_17_3();
  v1 = *(v0 + 96);
  v3 = *(*(v2 + 88) + 16);
  OUTLINED_FUNCTION_31();
  return v5(*(v4 + 80)) & 1;
}

uint64_t BufferedAudioPlayback.__allocating_init(audioSessionId:asbd:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  v3 = OUTLINED_FUNCTION_73_0();
  BufferedAudioPlayback.init(audioSessionId:asbd:)(v3, v4);
  return v0;
}

char *BufferedAudioPlayback.init(audioSessionId:asbd:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = *v2;
  v8 = sub_1B1C2C9D8();
  v9 = OUTLINED_FUNCTION_7(v8);
  v29 = v10;
  v30 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_16();
  v15 = v14 - v13;
  v16 = v7[10];
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v29 - v20;
  *&v4[v7[14]] = 0;
  OUTLINED_FUNCTION_58_1();
  *&v4[*(v22 + 120)] = 0;
  (*(v7[11] + 24))(a1, a2, v16, v7[11]);
  OUTLINED_FUNCTION_58_1();
  if (v3)
  {

    type metadata accessor for BufferedAudioPlayback();
    v24 = *(*v4 + 48);
    v25 = *(*v4 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    (*(v17 + 32))(&v4[*(v23 + 96)], v21, v16);
    sub_1B1A8E474(0, &qword_1ED9A9940, 0x1E69E9610);
    sub_1B1C2C9B8();
    v31 = 0;
    v26 = static OS_dispatch_queue.synthesisQueue(label:qos:priority:)(0xD00000000000001CLL, 0x80000001B1C48640, v15, 46);
    (*(v29 + 8))(v15, v30);
    OUTLINED_FUNCTION_58_1();
    *&v4[*(v27 + 104)] = v26;
  }

  return v4;
}

uint64_t sub_1B1B03258@<X0>(uint64_t *a1@<X8>)
{
  result = BufferedAudioPlayback.__allocating_init(audioSessionId:asbd:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1B1B032A0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_1B1B032F8();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1B1B032F8()
{
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  return *(v0 + 16);
}

uint64_t sub_1B1B03328(char a1)
{
  OUTLINED_FUNCTION_15_0();
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

id sub_1B1B03364()
{
  result = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  qword_1ED9A5120 = result;
  return result;
}

uint64_t AudioQueueInterface.__allocating_init(audioSessionId:asbd:)()
{
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_73_0();
  AudioQueueInterface.init(audioSessionId:asbd:)(v1, v2);
  return v0;
}

uint64_t sub_1B1B0340C@<X0>(uint64_t *a1@<X8>)
{
  result = AudioQueueInterface.__allocating_init(audioSessionId:asbd:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

void AudioQueueInterface.audioPower.getter(int32x2_t *a1@<X8>)
{
  outData[2] = *MEMORY[0x1E69E9840];
  outData[0] = 0;
  ioDataSize = 8;
  v4 = *(v1 + 80);
  [v4 lock];
  Property = AudioQueueGetProperty(*(v1 + 72), 0x61716D64u, outData, &ioDataSize);
  [v4 unlock];
  if (Property == sub_1B1C2C958())
  {
    v6 = outData[0];
  }

  else
  {
    if (qword_1ED9A9288 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v7 = sub_1B1C2C8A8();
    v8 = OUTLINED_FUNCTION_56(v7, qword_1ED9A9120);
    sub_1B1C2D0B8();
    v9 = OUTLINED_FUNCTION_19();
    if (os_log_type_enabled(v9, v10))
    {
      OUTLINED_FUNCTION_23_6();
      swift_slowAlloc();
      OUTLINED_FUNCTION_18();
      v11 = swift_slowAlloc();
      outData[1] = v11;
      *v2 = 136315138;
      v12 = sub_1B1B269CC(Property);
      v16 = OUTLINED_FUNCTION_76_0(v12, v13, v14, v15);

      *(v2 + 4) = v16;
      OUTLINED_FUNCTION_12();
      _os_log_impl(v17, v18, v19, v20, v21, v22);
      __swift_destroy_boxed_opaque_existential_0(v11);
      OUTLINED_FUNCTION_14();
      MEMORY[0x1B2739FD0]();
      v23 = OUTLINED_FUNCTION_10_0();
      MEMORY[0x1B2739FD0](v23);
    }

    v6 = vdup_n_s32(0xC2F00000);
  }

  *a1 = v6;
  v24 = *MEMORY[0x1E69E9840];
}

void AudioQueueInterface.audioVolume.getter()
{
  v22 = *MEMORY[0x1E69E9840];
  outValue = 0.0;
  v1 = *(v0 + 80);
  [v1 lock];
  Parameter = AudioQueueGetParameter(*(v0 + 72), 1u, &outValue);
  [v1 unlock];
  if (Parameter != sub_1B1C2C958())
  {
    if (qword_1ED9A9288 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v3 = sub_1B1C2C8A8();
    v4 = OUTLINED_FUNCTION_56(v3, qword_1ED9A9120);
    sub_1B1C2D0B8();
    v5 = OUTLINED_FUNCTION_37_0();
    if (os_log_type_enabled(v5, v6))
    {
      OUTLINED_FUNCTION_23_6();
      v7 = swift_slowAlloc();
      OUTLINED_FUNCTION_34_1();
      v8 = swift_slowAlloc();
      v21 = v8;
      *v7 = 136315138;
      v9 = sub_1B1B269CC(Parameter);
      v13 = OUTLINED_FUNCTION_76_0(v9, v10, v11, v12);

      *(v7 + 4) = v13;
      OUTLINED_FUNCTION_69();
      _os_log_impl(v14, v15, v16, v17, v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      v18 = OUTLINED_FUNCTION_10_0();
      MEMORY[0x1B2739FD0](v18);
      OUTLINED_FUNCTION_14();
      MEMORY[0x1B2739FD0]();
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}