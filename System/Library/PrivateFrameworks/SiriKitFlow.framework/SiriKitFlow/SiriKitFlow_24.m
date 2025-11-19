_BYTE *storeEnumTagSinglePayload for SentinalFlow(_BYTE *result, int a2, int a3)
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

SiriKitFlow::FlowPluginBundleImpl __swiftcall FlowPluginBundleImpl.init(bundlePath:pluginCacheKeys:)(Swift::String bundlePath, Swift::OpaquePointer pluginCacheKeys)
{
  v16 = bundlePath;
  v4 = v2;
  v5 = 0;
  v6 = *(pluginCacheKeys._rawValue + 2);
  v7 = pluginCacheKeys._rawValue + 40;
  countAndFlagsBits = MEMORY[0x1E69E7CC0];
LABEL_2:
  for (i = &v7[16 * v5]; ; i += 2)
  {
    if (v6 == v5)
    {

      *v4 = v16;
      v4[1]._countAndFlagsBits = countAndFlagsBits;
      goto LABEL_14;
    }

    if (v5 >= *(pluginCacheKeys._rawValue + 2))
    {
      break;
    }

    v11 = *(i - 1);
    v10 = *i;

    sub_1DCDA5A0C(v11, v10, v21);
    if (v22 != 1)
    {
      OUTLINED_FUNCTION_0_52();
      bundlePath._countAndFlagsBits = swift_isUniquelyReferenced_nonNull_native();
      if ((bundlePath._countAndFlagsBits & 1) == 0)
      {
        v15 = *(countAndFlagsBits + 16);
        sub_1DCE18938();
        countAndFlagsBits = bundlePath._countAndFlagsBits;
      }

      v12 = *(countAndFlagsBits + 16);
      if (v12 >= *(countAndFlagsBits + 24) >> 1)
      {
        sub_1DCE18938();
        countAndFlagsBits = bundlePath._countAndFlagsBits;
      }

      ++v5;
      *v18 = v20[0];
      *&v18[9] = *(v20 + 9);
      v13 = v19[0];
      v17 = v19[1];
      *(countAndFlagsBits + 16) = v12 + 1;
      v14 = (countAndFlagsBits + (v12 << 6));
      *(v14 + 73) = *&v18[9];
      v14[3] = v17;
      v14[4] = *v18;
      v14[2] = v13;
      goto LABEL_2;
    }

    OUTLINED_FUNCTION_0_52();
    bundlePath._countAndFlagsBits = sub_1DCD4B8A8(v19);
    ++v5;
  }

  __break(1u);
LABEL_14:
  result.bundlePath = bundlePath;
  result.supportedTopics = pluginCacheKeys;
  return result;
}

SiriKitFlow::FlowPluginBundleImpl __swiftcall FlowPluginBundleImpl.init(bundlePath:supportedTopics:)(Swift::String bundlePath, Swift::OpaquePointer supportedTopics)
{
  *v2 = bundlePath;
  *(v2 + 16) = supportedTopics;
  result.bundlePath = bundlePath;
  result.supportedTopics = supportedTopics;
  return result;
}

uint64_t sub_1DCD4B84C(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_1DCD4B8A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4F40, &qword_1DD0F0410);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *assignWithCopy for FlowPluginBundleImpl(void *a1, void *a2)
{
  *a1 = *a2;
  v4 = a1[1];
  a1[1] = a2[1];

  v5 = a2[2];
  v6 = a1[2];
  a1[2] = v5;

  return a1;
}

void *assignWithTake for Parse.DirectInvocation(void *a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = a1[1];

  v5 = a1[2];
  *(a1 + 1) = *(a2 + 8);

  return a1;
}

uint64_t destroy for FlowPluginBundleCache(uint64_t *a1)
{
  v2 = *a1;

  v3 = a1[2];

  v4 = a1[3];

  v5 = a1[4];
}

void *initializeWithCopy for FlowPluginBundleCache(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  a1[4] = a2[4];

  return a1;
}

uint64_t *assignWithCopy for FlowPluginBundleCache(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  *a1 = *a2;

  a1[1] = a2[1];
  v5 = a1[2];
  a1[2] = a2[2];

  v6 = a1[3];
  a1[3] = a2[3];

  v7 = a1[4];
  a1[4] = a2[4];

  return a1;
}

void *assignWithTake for FlowPluginBundleCache(void *a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  a1[1] = *(a2 + 8);
  v5 = a1[2];

  v6 = a1[3];
  *(a1 + 1) = *(a2 + 16);

  v7 = a1[4];
  a1[4] = *(a2 + 32);

  return a1;
}

uint64_t getEnumTagSinglePayload for FlowPluginBundleCache(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for FlowPluginBundleCache(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1DCD4BC14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  v8 = *(a1 + 16);
  do
  {
    if (v8 == v7)
    {
      break;
    }

    v9 = *(sub_1DD0DAECC() - 8);
    sub_1DCD4DC04((a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v7++), a2, a3);
  }

  while (!v3);
}

uint64_t sub_1DCD4BCE4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v57[1] = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v55 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v9);
  v54 = &v54 - v10;
  v11 = sub_1DD0DD85C();
  v12 = OUTLINED_FUNCTION_9(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12, v17);
  OUTLINED_FUNCTION_16();
  v20 = v19 - v18;
  sub_1DD0DE7FC();
  if (qword_1EDE4F908 != -1)
  {
    OUTLINED_FUNCTION_1_5();
  }

  sub_1DD0DD84C();
  sub_1DD0DD81C();
  v21 = *(v14 + 8);
  v21(v20, v11);
  v22 = [objc_opt_self() defaultManager];
  v23 = sub_1DD0DAE6C();
  v57[0] = 0;
  v24 = [v22 contentsOfDirectoryAtURL:v23 includingPropertiesForKeys:0 options:0 error:v57];

  v25 = v57[0];
  if (!v24)
  {
    v39 = v57[0];
    v40 = sub_1DD0DAE0C();

    swift_willThrow();
    sub_1DD0DE7EC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1DD0E07C0;
    *(v41 + 56) = MEMORY[0x1E69E6158];
    *(v41 + 64) = sub_1DCB34060();
    *(v41 + 32) = 0x6572756C696146;
    *(v41 + 40) = 0xE700000000000000;
    sub_1DD0DD84C();
    sub_1DD0DD80C();

    v21(v20, v11);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v42 = sub_1DD0DD8FC();
    v43 = __swift_project_value_buffer(v42, qword_1EDE57E00);
    v44 = *(v42 - 8);
    v45 = v54;
    (*(v44 + 16))(v54, v43, v42);
    __swift_storeEnumTagSinglePayload(v45, 0, 1, v42);
    v46 = v45;
    v47 = v55;
    sub_1DCBCF6C8(v46, v55);
    if (__swift_getEnumTagSinglePayload(v47, 1, v42) == 1)
    {
      sub_1DCBCF738(v55);
    }

    else
    {
      v48 = sub_1DD0DD8EC();
      v49 = sub_1DD0DE6EC();
      if (OUTLINED_FUNCTION_75(v49))
      {
        v50 = swift_slowAlloc();
        v57[0] = swift_slowAlloc();
        *v50 = 136315650;
        v51 = sub_1DD0DEC3C();
        v53 = sub_1DCB10E9C(v51, v52, v57);

        *(v50 + 4) = v53;
        *(v50 + 12) = 2048;
        *(v50 + 14) = 94;
        *(v50 + 22) = 2080;
        *(v50 + 24) = sub_1DCB10E9C(0xD000000000000036, 0x80000001DD11AA50, v57);
        _os_log_impl(&dword_1DCAFC000, v48, v49, "FatalError at %s:%lu - %s", v50, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_80();
        OUTLINED_FUNCTION_52();
      }

      (*(v44 + 8))(v55, v42);
    }

    static SiriKitLifecycle._logCrashToEventBus(_:)(0xD000000000000036, 0x80000001DD11AA50);
  }

  v26 = sub_1DD0DAECC();
  v27 = sub_1DD0DE2EC();
  v28 = v25;

  v57[0] = MEMORY[0x1E69E7CC8];
  v56 = MEMORY[0x1E69E7CC8];
  sub_1DCD4BC14(v27, v57, &v56);

  v29 = v57[0];
  v30 = v56;
  v31 = objc_opt_self();

  v32 = [v31 processInfo];
  v33 = [v32 operatingSystemVersionString];

  v34 = sub_1DD0DDFBC();
  v36 = v35;

  sub_1DCD4DA4C();
  result = (*(*(v26 - 8) + 8))(a1, v26);
  *a2 = v29;
  a2[1] = v34;
  a2[2] = v36;
  a2[3] = 0;
  a2[4] = v30;
  v38 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1DCD4C370()
{
  if (v0[4])
  {
    v1 = v0[4];
  }

  else
  {
    v1 = sub_1DCD4D678(v0);
    v0[4] = v1;
  }

  return v1;
}

uint64_t sub_1DCD4C3BC()
{
  if (v0[3])
  {
    v1 = v0[3];
  }

  else
  {
    v1 = sub_1DCD4D400(*v0);
    v0[3] = v1;
  }

  return v1;
}

uint64_t sub_1DCD4C41C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1DD0DAECC();
  v4 = OUTLINED_FUNCTION_9(v3);
  v77 = v5;
  v7 = *(v6 + 64);
  v9 = MEMORY[0x1EEE9AC00](v4, v8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v11 = sub_1DD0DD85C();
  v12 = OUTLINED_FUNCTION_9(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12, v17);
  OUTLINED_FUNCTION_16();
  v20 = v19 - v18;
  v21 = objc_opt_self();
  v22 = [v21 processInfo];

  sub_1DD0DE7FC();
  if (qword_1EDE4F908 != -1)
  {
    OUTLINED_FUNCTION_1_5();
  }

  sub_1DD0DD84C();
  sub_1DD0DD81C();
  v75 = v11;
  v74 = *(v14 + 8);
  v74(v20, v11);
  v23 = [objc_opt_self() defaultManager];
  sub_1DD0DAEAC();
  v24 = sub_1DD0DDF8C();

  v25 = [v23 fileExistsAtPath_];

  v76 = v3;
  if (!v25)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v26 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v26, qword_1EDE57E00);
    v27 = sub_1DD0DD8EC();
    v28 = sub_1DD0DE70C();
    v29 = v77;
    if (OUTLINED_FUNCTION_75(v28))
    {
      *OUTLINED_FUNCTION_50_0() = 0;
      OUTLINED_FUNCTION_7_0(&dword_1DCAFC000, v30, v31, "Didn't find a bundle cache file, will compute a fresh cache file");
      OUTLINED_FUNCTION_52();
    }

    sub_1DD0DE7EC();
    OUTLINED_FUNCTION_11_35();
    OUTLINED_FUNCTION_3_58();
    OUTLINED_FUNCTION_4_53();
    v32 = OUTLINED_FUNCTION_13_33();
    v74(v32, v75);
    goto LABEL_19;
  }

  sub_1DD0DAEDC();
  v33 = sub_1DD0DAC9C();
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  swift_allocObject();
  sub_1DD0DAC8C();
  sub_1DCD4F198();
  sub_1DD0DAC7C();
  v72 = a1;

  v36 = v78;
  v37 = v79;
  v39 = v80;
  v38 = v81;
  v40 = v82;
  v41 = [v21 processInfo];
  v42 = [v41 operatingSystemVersionString];

  v43 = sub_1DD0DDFBC();
  v45 = v44;

  if (v79 == v43 && v80 == v45)
  {
  }

  else
  {
    OUTLINED_FUNCTION_21_17();
    v47 = sub_1DD0DF0AC();

    if ((v47 & 1) == 0)
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v48 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v48, qword_1EDE57E00);

      v49 = sub_1DD0DD8EC();
      v50 = sub_1DD0DE70C();

      v71 = v50;
      v51 = os_log_type_enabled(v49, v50);
      a1 = v72;
      if (v51)
      {
        v70 = v49;
        v52 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        *v52 = 136315394;

        v53 = OUTLINED_FUNCTION_21_17();
        v56 = sub_1DCB10E9C(v53, v54, v55);

        *(v52 + 4) = v56;
        *(v52 + 12) = 2080;
        v57 = [v21 processInfo];
        v58 = [v57 operatingSystemVersionString];

        v59 = sub_1DD0DDFBC();
        v61 = v60;

        v62 = sub_1DCB10E9C(v59, v61, &v78);

        *(v52 + 14) = v62;
        _os_log_impl(&dword_1DCAFC000, v70, v71, "Cached FlowDelegate os version %s does not match current os version %s", v52, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_52();
        OUTLINED_FUNCTION_80();
        OUTLINED_FUNCTION_10_35();
      }

      else
      {
        OUTLINED_FUNCTION_10_35();
      }

      v29 = v77;
      sub_1DD0DE7EC();
      OUTLINED_FUNCTION_11_35();
      OUTLINED_FUNCTION_3_58();
      OUTLINED_FUNCTION_4_53();
      v63 = OUTLINED_FUNCTION_13_33();
      v74(v63, v75);
LABEL_19:
      v36 = 0;
      v37 = 0;
      v39 = 0;
      v38 = 0;
      v40 = 0;
      goto LABEL_20;
    }
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v65 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v65, qword_1EDE57E00);
  v66 = sub_1DD0DD8EC();
  v67 = sub_1DD0DE70C();
  if (OUTLINED_FUNCTION_75(v67))
  {
    v68 = OUTLINED_FUNCTION_50_0();
    *v68 = 0;
    _os_log_impl(&dword_1DCAFC000, v66, v67, "Loaded bundle cache successfully", v68, 2u);
    OUTLINED_FUNCTION_80();
  }

  OUTLINED_FUNCTION_10_35();

  sub_1DD0DE7EC();
  OUTLINED_FUNCTION_11_35();
  OUTLINED_FUNCTION_3_58();
  OUTLINED_FUNCTION_4_53();
  v69 = OUTLINED_FUNCTION_13_33();
  v74(v69, v75);
  a1 = v72;
  v29 = v77;
LABEL_20:
  result = (*(v29 + 8))(a1, v76);
  *a2 = v36;
  a2[1] = v37;
  a2[2] = v39;
  a2[3] = v38;
  a2[4] = v40;
  return result;
}

uint64_t sub_1DCD4CF58()
{
  v1 = sub_1DD0DD85C();
  v2 = OUTLINED_FUNCTION_9(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2, v7);
  OUTLINED_FUNCTION_16();
  v10 = v9 - v8;
  sub_1DD0DE7FC();
  if (qword_1EDE4F908 != -1)
  {
    OUTLINED_FUNCTION_1_5();
  }

  sub_1DD0DD84C();
  OUTLINED_FUNCTION_5_45();
  sub_1DD0DD81C();
  v11 = *(v4 + 8);
  v11(v10, v1);
  v12 = sub_1DD0DACDC();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  sub_1DD0DACCC();
  v24 = *v0;
  v25 = v0[1];
  v26 = *(v0 + 4);
  sub_1DCD4F1EC();
  v15 = sub_1DD0DACBC();
  v17 = v16;
  sub_1DD0DAF4C();
  sub_1DD0DE7EC();
  sub_1DD0DD84C();
  OUTLINED_FUNCTION_3_58();
  OUTLINED_FUNCTION_5_45();
  sub_1DD0DD80C();
  v11(v10, v1);
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v18 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v18, qword_1EDE57E00);
  v19 = sub_1DD0DD8EC();
  v20 = sub_1DD0DE70C();
  if (OUTLINED_FUNCTION_75(v20))
  {
    *OUTLINED_FUNCTION_50_0() = 0;
    OUTLINED_FUNCTION_7_0(&dword_1DCAFC000, v21, v22, "Wrote bundle cache successfully");
    OUTLINED_FUNCTION_52();
  }

  sub_1DCB21A14(v15, v17);
}

uint64_t sub_1DCD4D2F0@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = 0;
  v4 = *result;
  v5 = MEMORY[0x1E69E7CC0];
  v11 = MEMORY[0x1E69E7CC0];
  v6 = *(*result + 16);
LABEL_2:
  v7 = (v4 + 40 + 16 * v3);
  while (1)
  {
    if (v6 == v3)
    {
      *a2 = v5;
      return result;
    }

    if (v3 >= *(v4 + 16))
    {
      break;
    }

    ++v3;
    v8 = v7 + 2;
    v10 = *(v7 - 1);
    v9 = *v7;
    sub_1DCD15A7C();

    result = sub_1DCD158F4();
    v7 = v8;
    if (result)
    {
      MEMORY[0x1E12A6920]();
      if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1DD0DE33C();
      }

      result = sub_1DD0DE3AC();
      v5 = v11;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DCD4D400(uint64_t a1)
{
  v2 = v1;
  v3 = MEMORY[0x1E69E7CC8];
  v32 = MEMORY[0x1E69E7CC8];
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  while (1)
  {
    if (!v7)
    {
      while (1)
      {
        v11 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v11 >= v8)
        {

          return v3;
        }

        v7 = *(v4 + 8 * v11);
        ++v10;
        if (v7)
        {
          v10 = v11;
          goto LABEL_10;
        }
      }

      __break(1u);
      goto LABEL_29;
    }

LABEL_10:
    v12 = __clz(__rbit64(v7)) | (v10 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v31 = *(*(a1 + 56) + 8 * v12);

    sub_1DCD4D2F0(&v31, v30);
    if (v2)
    {
      break;
    }

    v7 &= v7 - 1;

    v16 = v30[0];
    if (v30[0])
    {
      v17 = *(v3 + 16);
      if (*(v3 + 24) <= v17)
      {
        sub_1DCC72268(v17 + 1);
        v3 = v32;
      }

      v18 = *(v3 + 40);
      sub_1DD0DF1DC();
      sub_1DD0DDF2C();
      result = sub_1DD0DF20C();
      v19 = v3 + 64;
      v20 = -1 << *(v3 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v3 + 64 + 8 * (v21 >> 6))) == 0)
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
          v27 = *(v19 + 8 * v22);
          if (v27 != -1)
          {
            v23 = __clz(__rbit64(~v27)) + (v22 << 6);
            goto LABEL_24;
          }
        }

LABEL_29:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v21) & ~*(v3 + 64 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
      *(v19 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      v28 = (*(v3 + 48) + 16 * v23);
      *v28 = v15;
      v28[1] = v14;
      *(*(v3 + 56) + 8 * v23) = v16;
      ++*(v3 + 16);
      v2 = 0;
    }

    else
    {

      v2 = 0;
    }
  }

  return v3;
}

uint64_t sub_1DCD4D678(uint64_t *a1)
{
  v1 = *a1;
  v14 = MEMORY[0x1E69E7CC8];
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  for (i = 0; v4; i = v7)
  {
    v7 = i;
LABEL_8:
    v8 = __clz(__rbit64(v4)) | (v7 << 6);
    v9 = (*(v1 + 48) + 16 * v8);
    v10 = v9[1];
    v11 = *(*(v1 + 56) + 8 * v8);
    v13[0] = *v9;
    v13[1] = v10;
    v13[2] = v11;

    sub_1DCD4D7DC(&v14, v13);
    v4 &= v4 - 1;
  }

  while (1)
  {
    v7 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v7 >= v5)
    {

      return v14;
    }

    v4 = *(v1 + 64 + 8 * v7);
    ++i;
    if (v4)
    {
      goto LABEL_8;
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

void sub_1DCD4D7DC(void *a1, uint64_t *a2)
{
  v30 = a2[2];
  v29 = *(v30 + 16);
  if (v29)
  {
    v2 = 0;
    v3 = 0;
    v27 = a2[1];
    v28 = *a2;
    v4 = a2[2];
    v5 = (v30 + 40);
    while (v3 < *(v30 + 16))
    {
      v7 = *(v5 - 1);
      v6 = *v5;

      sub_1DCB370A4(v2);
      v8 = *a1;
      swift_isUniquelyReferenced_nonNull_native();
      v32 = *a1;
      v9 = sub_1DCB21038(v7, v6);
      if (__OFADD__(v32[2], (v10 & 1) == 0))
      {
        goto LABEL_19;
      }

      v11 = v9;
      v12 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4F68, &qword_1DD0F04F8);
      if (sub_1DD0DEDCC())
      {
        v13 = sub_1DCB21038(v7, v6);
        if ((v12 & 1) != (v14 & 1))
        {
          goto LABEL_21;
        }

        v11 = v13;
      }

      *a1 = v32;
      if (v12)
      {
      }

      else
      {
        v32[(v11 >> 6) + 8] |= 1 << v11;
        v15 = (v32[6] + 16 * v11);
        *v15 = v7;
        v15[1] = v6;
        *(v32[7] + 8 * v11) = MEMORY[0x1E69E7CC0];
        v16 = v32[2];
        v17 = __OFADD__(v16, 1);
        v18 = v16 + 1;
        if (v17)
        {
          goto LABEL_20;
        }

        v32[2] = v18;
      }

      v19 = v32[7];
      v20 = *(v19 + 8 * v11);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v19 + 8 * v11) = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v24 = *(v20 + 16);
        sub_1DCB34108();
        v20 = v25;
        *(v19 + 8 * v11) = v25;
      }

      v22 = *(v20 + 16);
      if (v22 >= *(v20 + 24) >> 1)
      {
        sub_1DCB34108();
        v20 = v26;
        *(v19 + 8 * v11) = v26;
      }

      ++v3;
      *(v20 + 16) = v22 + 1;
      v23 = v20 + 16 * v22;
      *(v23 + 32) = v28;
      *(v23 + 40) = v27;
      v5 += 2;
      v2 = sub_1DCD4DA3C;
      if (v29 == v3)
      {
        return;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    sub_1DD0DF12C();
    __break(1u);
  }
}

uint64_t sub_1DCD4DA4C()
{
  v0 = sub_1DD0DD85C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD0DE7EC();
  if (qword_1EDE4F908 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DD0E07C0;
  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 64) = sub_1DCB34060();
  *(v6 + 32) = 0x73736563637553;
  *(v6 + 40) = 0xE700000000000000;
  sub_1DD0DD84C();
  sub_1DD0DD80C();

  return (*(v1 + 8))(v5, v0);
}

void sub_1DCD4DC04(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v84 = a2;
  v85 = a3;
  v5 = sub_1DD0DAECC();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v9 = MEMORY[0x1EEE9AC00](v5, v8);
  v86 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = &v81 - v13;
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v83 = &v81 - v17;
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v81 - v19;
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v21 = sub_1DD0DD8FC();
  v22 = __swift_project_value_buffer(v21, qword_1EDE57E00);
  v23 = v6[2];
  v92 = a1;
  v87 = v23;
  v23(v20, a1, v5);
  v88 = v22;
  v24 = sub_1DD0DD8EC();
  v25 = sub_1DD0DE70C();
  v26 = os_log_type_enabled(v24, v25);
  v90 = v6;
  v82 = v14;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v81 = v3;
    v28 = v27;
    v29 = v5;
    v30 = swift_slowAlloc();
    v91[0] = v30;
    *v28 = 136315138;
    v31 = sub_1DD0DAEAC();
    v32 = v6;
    v34 = v33;
    v89 = v32[1];
    v89(v20, v29);
    v35 = sub_1DCB10E9C(v31, v34, v91);

    *(v28 + 4) = v35;
    _os_log_impl(&dword_1DCAFC000, v24, v25, "Loading bundle at path %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    v36 = v30;
    v5 = v29;
    MEMORY[0x1E12A8390](v36, -1, -1);
    MEMORY[0x1E12A8390](v28, -1, -1);
  }

  else
  {

    v89 = v6[1];
    v89(v20, v5);
  }

  sub_1DCD15A7C();
  v37 = v92;
  sub_1DD0DAEAC();
  v38 = sub_1DCD158F4();
  if (v38)
  {
    v39 = v38;
    v40 = sub_1DCD43E34(v38);
    if (v41)
    {
      v42 = v40;
      v43 = v41;
      if (qword_1EDE4AE78 != -1)
      {
        v40 = swift_once();
      }

      v44 = qword_1EDE4AE80;
      v91[0] = v42;
      v91[1] = v43;
      MEMORY[0x1EEE9AC00](v40, v41);
      *(&v81 - 2) = v91;

      v45 = sub_1DCC3EBE4(sub_1DCD00108, (&v81 - 4), v44);

      if (v45)
      {
        v46 = v83;
        v87(v83, v92, v5);

        v47 = sub_1DD0DD8EC();
        v48 = sub_1DD0DE6CC();

        if (os_log_type_enabled(v47, v48))
        {
          v49 = v5;
          v50 = swift_slowAlloc();
          v92 = swift_slowAlloc();
          v91[0] = v92;
          *v50 = 136315394;
          LODWORD(v88) = v48;
          v51 = sub_1DD0DAEAC();
          v52 = v46;
          v54 = v53;
          v89(v52, v49);
          v55 = sub_1DCB10E9C(v51, v54, v91);

          *(v50 + 4) = v55;
          *(v50 + 12) = 2080;
          v56 = sub_1DCB10E9C(v42, v43, v91);

          *(v50 + 14) = v56;
          _os_log_impl(&dword_1DCAFC000, v47, v88, "Skipping bundle at path %s with ID %s; it is in the exclude list", v50, 0x16u);
          v57 = v92;
          swift_arrayDestroy();
          MEMORY[0x1E12A8390](v57, -1, -1);
          MEMORY[0x1E12A8390](v50, -1, -1);

LABEL_23:
          return;
        }

        goto LABEL_26;
      }

      v37 = v92;
    }

    v66 = sub_1DCD159CC(v39);
    if (!v66)
    {
      v66 = sub_1DD0DDE9C();
    }

    static IntentTopic.makeFromBundleInfoPlist(dictionary:)(v66);
    v68 = v67;

    if (*(v68 + 16))
    {
      MEMORY[0x1EEE9AC00](v69, v70);
      v71 = v85;
      *(&v81 - 4) = v84;
      *(&v81 - 3) = v37;
      *(&v81 - 2) = v71;
      sub_1DCC34D60(sub_1DCD4F178, (&v81 - 6), v68);

      return;
    }

    v46 = v82;
    v87(v82, v37, v5);
    v73 = sub_1DD0DD8EC();
    v74 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v91[0] = v92;
      *v75 = 136315138;
      v76 = sub_1DD0DAEAC();
      v78 = v77;
      v89(v46, v5);
      v79 = sub_1DCB10E9C(v76, v78, v91);

      *(v75 + 4) = v79;
      _os_log_impl(&dword_1DCAFC000, v73, v74, "Bundle at path %s has malformed or no entries for SupportDomains, SupportedIntents, SupportedInvocations, or SupportedPegasusComponents keys", v75, 0xCu);
      v80 = v92;
      __swift_destroy_boxed_opaque_existential_1Tm(v92);
      MEMORY[0x1E12A8390](v80, -1, -1);
      MEMORY[0x1E12A8390](v75, -1, -1);

      goto LABEL_23;
    }

LABEL_26:
    v72 = v46;
    goto LABEL_27;
  }

  v58 = v86;
  v87(v86, v37, v5);
  v39 = sub_1DD0DD8EC();
  v59 = sub_1DD0DE6EC();
  if (os_log_type_enabled(v39, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v91[0] = v61;
    *v60 = 136315138;
    v62 = sub_1DD0DAEAC();
    v64 = v63;
    v89(v58, v5);
    v65 = sub_1DCB10E9C(v62, v64, v91);

    *(v60 + 4) = v65;
    _os_log_impl(&dword_1DCAFC000, v39, v59, "Could not initialize bundle for path %s", v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v61);
    MEMORY[0x1E12A8390](v61, -1, -1);
    MEMORY[0x1E12A8390](v60, -1, -1);
    goto LABEL_23;
  }

  v72 = v58;
LABEL_27:
  v89(v72, v5);
}

void sub_1DCD4E470(_OWORD *a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v6 = a1[1];
  v52[0] = *a1;
  v52[1] = v6;
  v53[0] = a1[2];
  *(v53 + 9) = *(a1 + 41);
  v7 = IntentTopic.cacheKey.getter();
  v9 = v8;
  v10 = sub_1DD0DAEAC();
  v50 = v11;
  v51 = v10;
  v12 = *a2;
  swift_isUniquelyReferenced_nonNull_native();
  *&v52[0] = *a2;
  v13 = *&v52[0];
  *a2 = 0x8000000000000000;
  v54 = v7;
  v14 = sub_1DCB21038(v7, v9);
  if (__OFADD__(*(v13 + 16), (v15 & 1) == 0))
  {
    __break(1u);
  }

  else
  {
    v16 = v14;
    v17 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4F68, &qword_1DD0F04F8);
    if (sub_1DD0DEDCC())
    {
      v18 = sub_1DCB21038(v54, v9);
      if ((v17 & 1) != (v19 & 1))
      {
        goto LABEL_22;
      }

      v16 = v18;
    }

    v20 = *a2;
    *a2 = *&v52[0];

    v21 = *a2;
    if ((v17 & 1) == 0)
    {
      sub_1DCC60DC8(v16, v54, v9, MEMORY[0x1E69E7CC0], v21);
    }

    v22 = *(v21 + 56) + 8 * v16;
    sub_1DCD4B7BC();
    v23 = *(*v22 + 16);
    sub_1DCBBF6CC(v23);
    v24 = *v22;
    *(v24 + 16) = v23 + 1;
    v25 = v24 + 16 * v23;
    *(v25 + 32) = v51;
    *(v25 + 40) = v50;
    v26 = sub_1DD0DAEAC();
    v28 = v27;
    v29 = *a4;
    swift_isUniquelyReferenced_nonNull_native();
    *&v52[0] = *a4;
    v30 = *&v52[0];
    *a4 = 0x8000000000000000;
    v31 = sub_1DCB21038(v26, v28);
    v33 = v32;
    if (!__OFADD__(*(v30 + 16), (v32 & 1) == 0))
    {
      v34 = v31;
      if ((sub_1DD0DEDCC() & 1) == 0)
      {
        goto LABEL_11;
      }

      v35 = sub_1DCB21038(v26, v28);
      if ((v33 & 1) == (v36 & 1))
      {
        v34 = v35;
LABEL_11:
        v37 = *a4;
        *a4 = *&v52[0];

        v38 = *a4;
        if (v33)
        {
        }

        else
        {
          sub_1DCC60DC8(v34, v26, v28, MEMORY[0x1E69E7CC0], *a4);
        }

        v39 = *(v38 + 56) + 8 * v34;
        sub_1DCD4B7BC();
        v40 = *(*v39 + 16);
        sub_1DCBBF6CC(v40);
        v41 = *v39;
        *(v41 + 16) = v40 + 1;
        v42 = v41 + 16 * v40;
        *(v42 + 32) = v54;
        *(v42 + 40) = v9;
        v43 = qword_1EDE4F900;

        if (v43 == -1)
        {
          goto LABEL_15;
        }

        goto LABEL_21;
      }

LABEL_22:
      sub_1DD0DF12C();
      __break(1u);
      return;
    }
  }

  __break(1u);
LABEL_21:
  swift_once();
LABEL_15:
  v44 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v44, qword_1EDE57E00);

  v45 = sub_1DD0DD8EC();
  v46 = sub_1DD0DE6DC();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *&v52[0] = v48;
    *v47 = 136315138;
    v49 = sub_1DCB10E9C(v54, v9, v52);

    *(v47 + 4) = v49;
    _os_log_impl(&dword_1DCAFC000, v45, v46, "Plugin Cache entry for '%s'", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v48);
    MEMORY[0x1E12A8390](v48, -1, -1);
    MEMORY[0x1E12A8390](v47, -1, -1);
  }

  else
  {
  }
}

void sub_1DCD4E858()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1DCD4F114(0xD000000000000017, 0x80000001DD11AB00);
  if (v1 && (v2 = v1, v3 = sub_1DD0DDF8C(), v4 = [v2 stringArrayForKey_], v2, v3, v4))
  {
    v5 = sub_1DD0DE2EC();
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  qword_1EDE4AE80 = v5;
}

uint64_t sub_1DCD4E92C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x80000001DD11AC20 == a2;
  if (v3 || (sub_1DD0DF0AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F6973726556736FLL && a2 == 0xE90000000000006ELL)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD0DF0AC();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1DCD4EA04(char a1)
{
  if (a1)
  {
    return 0x6F6973726556736FLL;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_1DCD4EA44(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4F60, &qword_1DD0F04F0);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6, v11);
  v13 = &v18[-v12];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DCD4EEFC();
  sub_1DD0DF24C();
  v19 = *v3;
  v18[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4F50, &unk_1DD0F04E0);
  sub_1DCD4EFFC();
  sub_1DD0DEFFC();
  if (!v2)
  {
    v15 = v3[1];
    v16 = v3[2];
    v18[6] = 1;
    sub_1DD0DEFBC();
  }

  return (*(v8 + 8))(v13, v5);
}

uint64_t sub_1DCD4EBC8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4F48, &qword_1DD0F04D8);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v10 = [objc_opt_self() processInfo];

  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DCD4EEFC();
  sub_1DD0DF23C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4F50, &unk_1DD0F04E0);
  sub_1DCD4EF50();
  sub_1DD0DEF4C();
  v12 = sub_1DD0DEF0C();
  v14 = v13;
  v15 = OUTLINED_FUNCTION_55_0();
  v16(v15);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *a2 = v18;
  a2[1] = v12;
  a2[3] = 0;
  a2[4] = 0;
  a2[2] = v14;
  return result;
}

uint64_t sub_1DCD4EDFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DCD4E92C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DCD4EE24(uint64_t a1)
{
  v2 = sub_1DCD4EEFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCD4EE60(uint64_t a1)
{
  v2 = sub_1DCD4EEFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1DCD4EE9C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DCD4EBC8(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

unint64_t sub_1DCD4EEFC()
{
  result = qword_1EDE4F568[0];
  if (!qword_1EDE4F568[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE4F568);
  }

  return result;
}

unint64_t sub_1DCD4EF50()
{
  result = qword_1ECCA4F58;
  if (!qword_1ECCA4F58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA4F50, &unk_1DD0F04E0);
    sub_1DCD4F0A8(&qword_1ECCA7D50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4F58);
  }

  return result;
}

unint64_t sub_1DCD4EFFC()
{
  result = qword_1EDE462C0;
  if (!qword_1EDE462C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA4F50, &unk_1DD0F04E0);
    sub_1DCD4F0A8(&qword_1EDE46290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE462C0);
  }

  return result;
}

uint64_t sub_1DCD4F0A8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA2758, &unk_1DD0E6880);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1DCD4F114(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1DD0DDF8C();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName_];

  return v4;
}

unint64_t sub_1DCD4F198()
{
  result = qword_1EDE4F550;
  if (!qword_1EDE4F550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE4F550);
  }

  return result;
}

unint64_t sub_1DCD4F1EC()
{
  result = qword_1EDE4AE68;
  if (!qword_1EDE4AE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE4AE68);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FlowPluginBundleCache.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
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
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
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

unint64_t sub_1DCD4F320()
{
  result = qword_1ECCA4F70;
  if (!qword_1ECCA4F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4F70);
  }

  return result;
}

unint64_t sub_1DCD4F378()
{
  result = qword_1EDE4F558;
  if (!qword_1EDE4F558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE4F558);
  }

  return result;
}

unint64_t sub_1DCD4F3D0()
{
  result = qword_1EDE4F560;
  if (!qword_1EDE4F560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE4F560);
  }

  return result;
}

uint64_t static FlowRedirectContext.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  v11 = *a1;
  v12 = v2;
  v13 = v5;
  v8 = v3;
  v9 = v4;
  v10 = v6;
  sub_1DCD1B9D0(v11, v2, v5);
  sub_1DCD1B9D0(v3, v4, v6);
  LOBYTE(v3) = static SiriXRedirectContext.RedirectReason.== infix(_:_:)(&v11, &v8);
  sub_1DCD1BB80(v8, v9, v10);
  sub_1DCD1BB80(v11, v12, v13);
  return v3 & 1;
}

uint64_t sub_1DCD4F4B8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000017 && 0x80000001DD11AC90 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DD0DF0AC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DCD4F558@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DCD4F4B8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DCD4F584(uint64_t a1)
{
  v2 = sub_1DCD4F87C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCD4F5C0(uint64_t a1)
{
  v2 = sub_1DCD4F87C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DCD4F5FC(uint64_t a1)
{
  v2 = sub_1DCD4F8D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCD4F638(uint64_t a1)
{
  v2 = sub_1DCD4F8D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FlowRedirectContext.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4F78, &qword_1DD0F0620);
  v27 = OUTLINED_FUNCTION_9(v3);
  v28 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v24[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4F80, &qword_1DD0F0628);
  OUTLINED_FUNCTION_9(v11);
  v13 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v24[-v18];
  v20 = *v1;
  v26 = v1[1];
  v25 = *(v1 + 16);
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DCD4F87C();
  sub_1DD0DF24C();
  sub_1DCD4F8D0();
  sub_1DD0DEF7C();
  v29 = v20;
  v30 = v26;
  v31 = v25;
  sub_1DCD4F924();
  v22 = v27;
  sub_1DD0DEFFC();
  (*(v28 + 8))(v10, v22);
  return (*(v13 + 8))(v19, v11);
}

unint64_t sub_1DCD4F87C()
{
  result = qword_1ECCA4F88;
  if (!qword_1ECCA4F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4F88);
  }

  return result;
}

unint64_t sub_1DCD4F8D0()
{
  result = qword_1ECCA4F90;
  if (!qword_1ECCA4F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4F90);
  }

  return result;
}

unint64_t sub_1DCD4F924()
{
  result = qword_1ECCA4F98;
  if (!qword_1ECCA4F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4F98);
  }

  return result;
}

uint64_t FlowRedirectContext.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4FA0, &qword_1DD0F0630);
  OUTLINED_FUNCTION_9(v4);
  v48 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v43 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4FA8, &qword_1DD0F0638);
  OUTLINED_FUNCTION_9(v12);
  v47 = v13;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v43 - v18;
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DCD4F87C();
  sub_1DD0DF23C();
  if (v2)
  {
    goto LABEL_8;
  }

  v45 = v11;
  v46 = a1;
  v21 = v48;
  v44 = v4;
  v22 = v51;
  v23 = sub_1DD0DEF5C();
  result = sub_1DCB547F8(v23, 0);
  v27 = v12;
  if (v25 == v26 >> 1)
  {
LABEL_7:
    v35 = sub_1DD0DECAC();
    swift_allocError();
    v37 = v36;
    v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA43D8, &qword_1DD0F0640) + 48);
    *v37 = &type metadata for FlowRedirectContext;
    sub_1DD0DEECC();
    sub_1DD0DEC8C();
    (*(*(v35 - 8) + 104))(v37, *MEMORY[0x1E69E6AF8], v35);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v47 + 8))(v19, v27);
    a1 = v46;
LABEL_8:
    v42 = a1;
    return __swift_destroy_boxed_opaque_existential_1Tm(v42);
  }

  if (v25 < (v26 >> 1))
  {
    v28 = v12;
    sub_1DCB54800(v25 + 1);
    v30 = v29;
    v32 = v31;
    swift_unknownObjectRelease();
    if (v30 == v32 >> 1)
    {
      sub_1DCD4F8D0();
      v33 = v45;
      v34 = v28;
      sub_1DD0DEEBC();
      sub_1DCD50348();
      v39 = v44;
      sub_1DD0DEF4C();
      v40 = v47;
      swift_unknownObjectRelease();
      (*(v21 + 8))(v33, v39);
      (*(v40 + 8))(v19, v34);
      v41 = v50;
      *v22 = v49;
      *(v22 + 16) = v41;
      v42 = v46;
      return __swift_destroy_boxed_opaque_existential_1Tm(v42);
    }

    v27 = v12;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

void sub_1DCD4FDD0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1DD0DCF8C();
}

void SiriEnvironment.flowRedirectContextProvider.modify(void *a1)
{
  a1[1] = v1;
  a1[2] = type metadata accessor for FlowRedirectContextProvider();
  a1[3] = OUTLINED_FUNCTION_0_53(&qword_1EDE4AE50);
  sub_1DD0DCA7C();
}

uint64_t FlowRedirectContextProvider.mock.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

void FlowRedirectContextProvider.__allocating_init(storage:)()
{
  OUTLINED_FUNCTION_5_2();
  swift_allocObject();
  FlowRedirectContextProvider.init(storage:)();
}

void FlowRedirectContextProvider.init(storage:)()
{
  OUTLINED_FUNCTION_5_46();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4FB8, &qword_1DD0F0648);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_1DD0DCE9C();
}

void FlowRedirectContextProvider.__allocating_init(flowRedirectContext:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_5_2();
  swift_allocObject();
  FlowRedirectContextProvider.init(flowRedirectContext:)(a1);
}

void sub_1DCD50038(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v4 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = v4;
  sub_1DCD507C8(v5[0], v2, v4);
  sub_1DCB709FC(v5);
}

void FlowRedirectContextProvider.$flowRedirectContext.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  sub_1DD0DCF8C();
}

void sub_1DCD500DC(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4FF0, &qword_1DD0F0A98);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11 - v7;
  (*(v9 + 16))(&v11 - v7, a1);
  v10 = *a2;
  sub_1DCD501B0(v8);
}

void sub_1DCD501B0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4FF0, &qword_1DD0F0A98);
  OUTLINED_FUNCTION_9(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v13 - v10;
  swift_beginAccess();
  v12 = *(v1 + 24);
  (*(v5 + 16))(v11, a1, v3);
  sub_1DD0DCF8C();
}

void sub_1DCD50308()
{
  v1 = *v0;
    ;
  }
}

unint64_t sub_1DCD50348()
{
  result = qword_1ECCA4FB0;
  if (!qword_1ECCA4FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4FB0);
  }

  return result;
}

uint64_t sub_1DCD503D0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_1DCD1B9D0(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for FlowRedirectContext(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_1DCD1B9D0(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  sub_1DCD1BB80(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for FlowRedirectContext(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  v6 = *(a1 + 16);
  *(a1 + 16) = v3;
  sub_1DCD1BB80(v4, v5, v6);
  return a1;
}

_BYTE *sub_1DCD5050C(_BYTE *result, int a2, int a3)
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

unint64_t sub_1DCD505BC()
{
  result = qword_1ECCA4FC0;
  if (!qword_1ECCA4FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4FC0);
  }

  return result;
}

unint64_t sub_1DCD50614()
{
  result = qword_1ECCA4FC8;
  if (!qword_1ECCA4FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4FC8);
  }

  return result;
}

unint64_t sub_1DCD5066C()
{
  result = qword_1ECCA4FD0;
  if (!qword_1ECCA4FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4FD0);
  }

  return result;
}

unint64_t sub_1DCD506C4()
{
  result = qword_1ECCA4FD8;
  if (!qword_1ECCA4FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4FD8);
  }

  return result;
}

unint64_t sub_1DCD5071C()
{
  result = qword_1ECCA4FE0;
  if (!qword_1ECCA4FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4FE0);
  }

  return result;
}

unint64_t sub_1DCD50774()
{
  result = qword_1ECCA4FE8;
  if (!qword_1ECCA4FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4FE8);
  }

  return result;
}

uint64_t sub_1DCD507C8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1DCD1B9D0(a1, a2, a3);
  }

  return a1;
}

void AnyFlow.toActingFlow()()
{
  v0 = type metadata accessor for FlowToActingFlowAdapter(0);
  OUTLINED_FUNCTION_73_1(v0);
  OUTLINED_FUNCTION_30();
  sub_1DD0DCF8C();
}

void Flow.toActingFlow()(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a1 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  OUTLINED_FUNCTION_16();
  (*(v7 + 16))(v6 - v5, v2, a1);
  type metadata accessor for AnyFlow();
  if (!swift_dynamicCast())
  {
    Flow.eraseToAnyFlow()();
  }

  v8 = type metadata accessor for FlowToActingFlowAdapter(0);
  OUTLINED_FUNCTION_73_1(v8);
  OUTLINED_FUNCTION_30();
  sub_1DCB4E3B8();
}

unint64_t sub_1DCD5094C()
{
  v2 = v1;
  v3 = type metadata accessor for FlowToActingFlowAdapter.State(0);
  v4 = OUTLINED_FUNCTION_20_0(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  OUTLINED_FUNCTION_9_35();
  sub_1DD0DEC1C();

  MEMORY[0x1E12A6780](*(*(v2 + 24) + 16), *(*(v2 + 24) + 24));
  MEMORY[0x1E12A6780](0x203A657461747320, 0xE800000000000000);
  v8 = OBJC_IVAR____TtC11SiriKitFlow23FlowToActingFlowAdapter_state;
  OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_0_54();
  sub_1DCD58BCC(v2 + v8, v0);
  v9 = sub_1DCD5308C();
  MEMORY[0x1E12A6780](v9);

  OUTLINED_FUNCTION_1_56();
  sub_1DCB4F3E0(v0, v10);
  return 0xD000000000000021;
}

BOOL sub_1DCD50A5C()
{
  v2 = type metadata accessor for FlowToActingFlowAdapter.State(0);
  v3 = OUTLINED_FUNCTION_2(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  OUTLINED_FUNCTION_9_35();
  v7 = OBJC_IVAR____TtC11SiriKitFlow23FlowToActingFlowAdapter_state;
  OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_0_54();
  sub_1DCD58BCC(v1 + v7, v0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_1_56();
    sub_1DCB4F3E0(v0, v9);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0);
  }

  return EnumCaseMultiPayload != 0;
}

void sub_1DCD50B5C()
{
  OUTLINED_FUNCTION_50();
  v2 = v1;
  v4 = v3;
  v32 = type metadata accessor for FlowToActingFlowAdapter.State(0);
  v5 = OUTLINED_FUNCTION_2(v32);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  OUTLINED_FUNCTION_16();
  v11 = v10 - v9;
  v12 = type metadata accessor for FlowTraceEvent();
  v13 = OUTLINED_FUNCTION_2(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13, v16);
  OUTLINED_FUNCTION_10_2();
  v19 = (v17 - v18);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = (v31 - v22);
  v24 = *(v0 + 24);
  v25 = *(v24 + 88);
  LOBYTE(v25) = (*(v24 + 80))(v2);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5040, &qword_1DD0F0CF8);
  v27 = *(v26 + 48);
  v28 = *(v26 + 64);
  if (v25)
  {
    v31[2] = v4;
    v31[3] = v11;
    *v23 = v24;
    OUTLINED_FUNCTION_13_34();
    sub_1DCD58BCC(v2, v23 + v29);
    *(v23 + v28) = 1;
    swift_storeEnumTagMultiPayload();
    sub_1DD0DCF8C();
  }

  *v19 = v24;
  OUTLINED_FUNCTION_13_34();
  sub_1DCD58BCC(v2, v19 + v30);
  *(v19 + v28) = 0;
  swift_storeEnumTagMultiPayload();
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD510AC()
{
  OUTLINED_FUNCTION_42();
  v1[20] = v0;
  v2 = type metadata accessor for ExecuteResponse(0);
  OUTLINED_FUNCTION_20_0(v2);
  v4 = *(v3 + 64) + 15;
  v1[21] = swift_task_alloc();
  v5 = type metadata accessor for FlowToActingFlowAdapter.Event(0);
  v1[22] = v5;
  OUTLINED_FUNCTION_20_0(v5);
  v7 = *(v6 + 64) + 15;
  v1[23] = swift_task_alloc();
  v8 = type metadata accessor for FlowTraceEvent();
  v1[24] = v8;
  OUTLINED_FUNCTION_20_0(v8);
  v10 = *(v9 + 64) + 15;
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v11 = type metadata accessor for FlowToActingFlowAdapter.State(0);
  v1[27] = v11;
  OUTLINED_FUNCTION_20_0(v11);
  v13 = *(v12 + 64) + 15;
  v1[28] = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1DCD511BC()
{
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[20];
  v4 = OBJC_IVAR____TtC11SiriKitFlow23FlowToActingFlowAdapter_state;
  OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_0_54();
  sub_1DCD58BCC(v3 + v4, v2);
  OUTLINED_FUNCTION_194();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 8)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v8 = v0[20];
    v9 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v9, qword_1EDE57E00);
    sub_1DD0DCF8C();
  }

  if (!EnumCaseMultiPayload)
  {
    sub_1DCAFF9E8(v0[28], (v0 + 2));
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v6 = v0[20];
    v7 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v7, qword_1EDE57E00);
    sub_1DD0DCF8C();
  }

  v10 = v0[28];
  OUTLINED_FUNCTION_1_56();
  sub_1DCB4F3E0(v11, v12);
  OUTLINED_FUNCTION_26_17();

  OUTLINED_FUNCTION_29();

  return v13();
}

uint64_t sub_1DCD51590()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 232);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

void sub_1DCD51674()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 192);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  v6 = *(v0 + 80);
  *v1 = *(*(v0 + 160) + 24);
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  *(v1 + 24) = v5;
  *(v1 + 32) = v6;
  swift_storeEnumTagMultiPayload();
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD51894()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 248);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

void sub_1DCD51978()
{
  v1 = v0[30];
  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[21];
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5030, &qword_1DD0F0CE0) + 48);
  *v2 = v1;
  OUTLINED_FUNCTION_17_21();
  sub_1DCD58BCC(v4, v2 + v6);
  swift_storeEnumTagMultiPayload();
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD51B64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = OUTLINED_FUNCTION_15_0();
  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCD51B90()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = *(v0 + 24);
  *(v2 + 32) = v1;
  v3 = *(MEMORY[0x1E69E88D0] + 4);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_1DCB410E0;
  v5 = *(v0 + 16);

  return MEMORY[0x1EEE6DDE0](v5, 0, 0, 0x2865726170657270, 0xE900000000000029, sub_1DCD58D84, v2, &type metadata for PrepareResponse);
}

void sub_1DCD51C84()
{
  OUTLINED_FUNCTION_50();
  v3 = v1;
  v4 = type metadata accessor for FlowTraceEvent();
  v5 = OUTLINED_FUNCTION_2(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  OUTLINED_FUNCTION_9_35();
  v9 = type metadata accessor for FlowToActingFlowAdapter.State(0);
  v10 = OUTLINED_FUNCTION_2(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  OUTLINED_FUNCTION_10_2();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  OUTLINED_FUNCTION_53_10();
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = (&v30 - v21);
  v23 = OBJC_IVAR____TtC11SiriKitFlow23FlowToActingFlowAdapter_state;
  OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_0_54();
  sub_1DCD58BCC(v3 + v23, v22);
  OUTLINED_FUNCTION_17_11();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 8)
  {
    if (EnumCaseMultiPayload)
    {
      OUTLINED_FUNCTION_1_56();
      sub_1DCB4F3E0(v22, v29);
LABEL_6:
      *v0 = *(v3 + 24);
      swift_storeEnumTagMultiPayload();
      sub_1DD0DCF8C();
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v22);
  }

  v31 = 0;
  v32 = 0xE000000000000000;
  sub_1DD0DEC1C();
  MEMORY[0x1E12A6780](0xD000000000000021, 0x80000001DD11AD00);
  MEMORY[0x1E12A6780](*(*(v3 + 24) + 16), *(*(v3 + 24) + 24));
  MEMORY[0x1E12A6780](0xD000000000000011, 0x80000001DD11ADF0);
  OUTLINED_FUNCTION_0_54();
  sub_1DCD58BCC(v3 + v23, v16);
  v25 = sub_1DCD5308C();
  MEMORY[0x1E12A6780](v25);

  OUTLINED_FUNCTION_1_56();
  sub_1DCB4F3E0(v16, v26);
  OUTLINED_FUNCTION_43_15();
  swift_getErrorValue();
  v27 = sub_1DD0DF18C();
  MEMORY[0x1E12A6780](v27);

  v28 = v32;
  *v2 = v31;
  v2[1] = v28;
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  sub_1DCD58C28(v2, v3 + v23);
  swift_endAccess();
  goto LABEL_6;
}

void sub_1DCD51F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_50();
  a19 = v20;
  a20 = v21;
  v22 = type metadata accessor for PluginAction();
  v23 = OUTLINED_FUNCTION_20_0(v22);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23, v26);
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_24_1();
  MEMORY[0x1EEE9AC00](v27, v28);
  v50[6] = v50 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5010, &qword_1DD0F0CB8);
  OUTLINED_FUNCTION_2(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = OUTLINED_FUNCTION_6_36(v50 - v35);
  v37 = type metadata accessor for FlowToActingFlowAdapter.State(v36);
  v38 = OUTLINED_FUNCTION_2(v37);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38, v41);
  OUTLINED_FUNCTION_10_2();
  v44 = MEMORY[0x1EEE9AC00](v42, v43);
  v46 = MEMORY[0x1EEE9AC00](v44, v45);
  MEMORY[0x1EEE9AC00](v46, v47);
  v50[9] = v50 - v48;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v49 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v49, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD52E00@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1DCC90B68();
  if (!v2)
  {
    v4 = type metadata accessor for FlowToActingFlowAdapter(0);
    *(a1 + 24) = v4;
    *(a1 + 32) = &off_1EECFDA20;
    OUTLINED_FUNCTION_73_1(v4);
    OUTLINED_FUNCTION_30();
    sub_1DD0DCF8C();
  }

  sub_1DCB17CA0(v2 + 16, a1);
}

void sub_1DCD52E8C(unint64_t *a1)
{
  v1 = *a1;
  sub_1DCDB1900();
  v2 = v1;
  sub_1DCDB21D4(&v2);
}

uint64_t sub_1DCD5308C()
{
  v2 = type metadata accessor for PluginAction();
  v3 = OUTLINED_FUNCTION_20_0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  OUTLINED_FUNCTION_9_35();
  v7 = type metadata accessor for FlowToActingFlowAdapter.State(0);
  v8 = OUTLINED_FUNCTION_2(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  OUTLINED_FUNCTION_16();
  v14 = v13 - v12;
  OUTLINED_FUNCTION_0_54();
  sub_1DCD58BCC(v1, v14);
  v15 = 0x65747563657865;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v19 = *(v14 + 40);
      v18 = *(v14 + 48);

      sub_1DCAFF9E8(v14, &v44);
      v42 = 0x6465726170657270;
      v43 = 0xE900000000000028;
      sub_1DCB17CA0(&v44, &v41);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2FC8, &qword_1DD0E8E10);
      v20 = OUTLINED_FUNCTION_61_12();
      MEMORY[0x1E12A6780](v20);

      MEMORY[0x1E12A6780](32, 0xE100000000000000);
      v21 = *(v19 + 16);
      v22 = *(v19 + 24);

      MEMORY[0x1E12A6780](v21, v22);

      OUTLINED_FUNCTION_35();

      goto LABEL_5;
    case 2u:
      v23 = *v14;
      v24 = *(v14 + 1);
      v26 = *(v14 + 8);
      v25 = *(v14 + 16);

      v44 = 0;
      v45 = 0xE000000000000000;
      sub_1DD0DEC1C();
      v27 = OUTLINED_FUNCTION_52_13();
      MEMORY[0x1E12A6780](v27, 0xEF203A6570797428);
      LOBYTE(v41) = v23;
      sub_1DD0DEDBC();
      MEMORY[0x1E12A6780](0x6572697571657220, 0xEF203A7475706E49);
      if (v24)
      {
        v28 = 1702195828;
      }

      else
      {
        v28 = 0x65736C6166;
      }

      if (v24)
      {
        v29 = 0xE400000000000000;
      }

      else
      {
        v29 = 0xE500000000000000;
      }

      MEMORY[0x1E12A6780](v28, v29);

      MEMORY[0x1E12A6780](32, 0xE100000000000000);
      v41 = v26;
      sub_1DD0DCF8C();
    case 3u:
      v17 = *v14;
      v44 = 0x6574656C706D6F63;
      v45 = 0xE900000000000028;
      v41 = v17;
      sub_1DD0DCF8C();
    case 4u:
      v31 = *v14;
      v32 = *(v14 + 8);
      v44 = 0x2874726F6261;
      v45 = 0xE600000000000000;
      MEMORY[0x1E12A6780](v31, v32);
      goto LABEL_17;
    case 5u:
      v33 = *v14;
      v34 = *(v14 + 8);
      v35 = *(v14 + 16);
      MEMORY[0x1E12A6780](0x656C646E61686E75, 0xEA00000000002864);
      v44 = v33;
      v45 = v34;
      v46 = v35;
      sub_1DD0DEDBC();
      sub_1DCD21390(v33, v34, v35);
      OUTLINED_FUNCTION_35();
      return 0;
    case 6u:
      sub_1DCD58C8C(v14, v0);
      PluginAction.description.getter();
      MEMORY[0x1E12A6780]();

      OUTLINED_FUNCTION_35();
      v15 = 0x7463657269646572;
      OUTLINED_FUNCTION_14_35();
      sub_1DCB4F3E0(v0, v30);
      return v15;
    case 7u:
      v36 = *v14;
      v37 = *(v14 + 8);
      v38 = *(v14 + 16);
      v39 = *(v14 + 24);
      v44 = 0x2865737261706572;
      v45 = 0xE800000000000000;
      MEMORY[0x1E12A6780](v36, v37);

      MEMORY[0x1E12A6780](8236, 0xE200000000000000);
      MEMORY[0x1E12A6780](v38, v39);
LABEL_17:

      OUTLINED_FUNCTION_35();
      v15 = v44;
      break;
    case 8u:
      return v15;
    default:
      sub_1DCAFF9E8(v14, &v44);
      v42 = 0x2865726170657270;
      v43 = 0xE800000000000000;
      sub_1DCB17CA0(&v44, &v41);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2FC8, &qword_1DD0E8E10);
      v16 = OUTLINED_FUNCTION_61_12();
      MEMORY[0x1E12A6780](v16);

      OUTLINED_FUNCTION_35();
LABEL_5:
      v15 = v42;
      __swift_destroy_boxed_opaque_existential_1Tm(&v44);
      break;
  }

  return v15;
}

uint64_t sub_1DCD53578()
{
  v2 = v1;
  v3 = type metadata accessor for ExecuteResponse(0);
  v4 = OUTLINED_FUNCTION_2(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  OUTLINED_FUNCTION_9_35();
  v8 = type metadata accessor for FlowToActingFlowAdapter.Event(0);
  v9 = OUTLINED_FUNCTION_2(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  OUTLINED_FUNCTION_16();
  v15 = v14 - v13;
  OUTLINED_FUNCTION_4_54();
  sub_1DCD58BCC(v2, v15);
  OUTLINED_FUNCTION_17_11();
  v16 = 0x6D6F43646C696863;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_16_25();
      v21 = OUTLINED_FUNCTION_194();
      sub_1DCD58C8C(v21, v22);
      v23 = OUTLINED_FUNCTION_52_13();
      MEMORY[0x1E12A6780](v23, 0xE900000000000028);
      sub_1DD0DEDBC();
      OUTLINED_FUNCTION_35();
      v16 = 0;
      OUTLINED_FUNCTION_2_54();
      sub_1DCB4F3E0(v0, v24);
      break;
    case 2u:
      sub_1DCB4F3E0(v15, type metadata accessor for FlowToActingFlowAdapter.Event);
      v16 = 0x6572756C696166;
      break;
    case 3u:
      return v16;
    default:
      v17 = *v15;
      v18 = *(v15 + 8);
      v19 = *(v15 + 16);
      v20 = *(v15 + 24);
      MEMORY[0x1E12A6780](0x6465726170657270, 0xE900000000000028);
      sub_1DD0DEDBC();
      OUTLINED_FUNCTION_35();

      v16 = 0;
      break;
  }

  return v16;
}

void sub_1DCD537A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_50();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4AD0, &qword_1DD0EDF38);
  OUTLINED_FUNCTION_20_0(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v27, v28);
  OUTLINED_FUNCTION_6_36(&v69[-v29]);
  v71 = type metadata accessor for PluginAction();
  v30 = OUTLINED_FUNCTION_2(v71);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30, v33);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_6_36(v35 - v34);
  v70 = type metadata accessor for FlowTraceEvent();
  v36 = OUTLINED_FUNCTION_2(v70);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36, v39);
  OUTLINED_FUNCTION_16();
  v72 = type metadata accessor for ExecuteResponse(0);
  v40 = OUTLINED_FUNCTION_2(v72);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40, v43);
  OUTLINED_FUNCTION_16();
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5000, &qword_1DD0F0CA0);
  OUTLINED_FUNCTION_2(v74);
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v46, v47);
  v48 = type metadata accessor for FlowToActingFlowAdapter.State(0);
  v49 = OUTLINED_FUNCTION_2(v48);
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v49, v52);
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_24_1();
  MEMORY[0x1EEE9AC00](v53, v54);
  v76 = &v69[-v55];
  v73 = type metadata accessor for FlowToActingFlowAdapter.Event(0);
  v56 = OUTLINED_FUNCTION_2(v73);
  v58 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v56, v59);
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_24_1();
  MEMORY[0x1EEE9AC00](v60, v61);
  OUTLINED_FUNCTION_53_10();
  MEMORY[0x1EEE9AC00](v62, v63);
  OUTLINED_FUNCTION_24_1();
  MEMORY[0x1EEE9AC00](v64, v65);
  v67 = &v69[-v66];
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v68 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v68, qword_1EDE57E00);
  OUTLINED_FUNCTION_4_54();
  v75 = v23;
  sub_1DCD58BCC(v23, v67);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD5466C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AD3C;

  return sub_1DCD510AC();
}

void sub_1DCD54768(uint64_t a1)
{
  v2 = *v1;
  *(a1 + 8) = *v1;
  v3 = *(v2 + 24);
  sub_1DCB4D2A4();
}

uint64_t sub_1DCD547B8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(a1[1] + 24);
  if (a2)
  {
    v4 = *a1;
    sub_1DD0DCF8C();
  }

  return sub_1DCB4D4A0(*a1);
}

uint64_t sub_1DCD54838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5038, &qword_1DD0F0CF0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v16 - v11;
  (*(v8 + 16))(&v16 - v11, a1, v7);
  v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v14 = swift_allocObject();
  (*(v8 + 32))(v14 + v13, v12, v7);
  (*(a4 + 8))(sub_1DCD58D90, v14, a3, a4);
}

void sub_1DCD549A8(char *a1)
{
  v1 = *a1;
  v2 = *(a1 + 1);
  v3 = a1[16];
  v4 = *(a1 + 3);
  sub_1DD0DCF8C();
}

void sub_1DCD54A1C()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1D18, &qword_1DD10E980);
  OUTLINED_FUNCTION_2(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v17[-v9];
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  if (v1)
  {
    v11 = *(v4 + 32);
    OUTLINED_FUNCTION_47_12(v17, &v10[v11]);
    v10[*(v4 + 36)] = 0;
    v12 = MEMORY[0x1E69E7CA8] + 8;
    *(v10 + 3) = MEMORY[0x1E69E7CA8] + 8;
    sub_1DCB0E9D8(v17, &qword_1ECCA1D20, &qword_1DD0F0330);
    OUTLINED_FUNCTION_47_12(&v10[v11], (v10 + 32));
    v10[72] = 0;
    type metadata accessor for FlowActionType(0);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_47_12(&v10[v11], v17);
    v3[3] = v4;
    v3[4] = &protocol witness table for Conclude<A>;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v3);
    v14 = *(v4 + 32);
    OUTLINED_FUNCTION_47_12(v17, boxed_opaque_existential_1Tm + v14);
    *(boxed_opaque_existential_1Tm + *(v4 + 36)) = 1;
    boxed_opaque_existential_1Tm[3] = v12;
    sub_1DCB0E9D8(v17, &qword_1ECCA1D20, &qword_1DD0F0330);
    OUTLINED_FUNCTION_47_12(boxed_opaque_existential_1Tm + v14, (boxed_opaque_existential_1Tm + 4));
    *(boxed_opaque_existential_1Tm + 72) = 1;
    swift_storeEnumTagMultiPayload();
    sub_1DCB0E9D8(v10, &qword_1ECCA1D18, &qword_1DD10E980);
  }

  else
  {
    v3[3] = v4;
    v3[4] = &protocol witness table for Conclude<A>;
    v15 = __swift_allocate_boxed_opaque_existential_1Tm(v3);
    v16 = *(v4 + 32);
    sub_1DCB09910(v17, v15 + v16, &qword_1ECCA1D20, &qword_1DD0F0330);
    *(v15 + *(v4 + 36)) = 0;
    v15[3] = MEMORY[0x1E69E7CA8] + 8;
    sub_1DCB0E9D8(v17, &qword_1ECCA1D20, &qword_1DD0F0330);
    sub_1DCB09910(v15 + v16, (v15 + 4), &qword_1ECCA1D20, &qword_1DD0F0330);
    *(v15 + 72) = 0;
    type metadata accessor for FlowActionType(0);
    swift_storeEnumTagMultiPayload();
  }

  OUTLINED_FUNCTION_49();
}

uint64_t ActingFlow.isNoop.getter(uint64_t a1, uint64_t a2)
{
  ActingFlow.unwrap.getter(a1, a2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4D90, &qword_1DD0F0AA0);
  return swift_dynamicCast();
}

uint64_t ActingFlow.isAdaptedFlow.getter(uint64_t a1, uint64_t a2)
{
  ActingFlow.unwrap.getter(a1, a2, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4D90, &qword_1DD0F0AA0);
  type metadata accessor for FlowToActingFlowAdapter(0);
  v2 = swift_dynamicCast();
  if (v2)
  {
  }

  return v2;
}

uint64_t sub_1DCD54D34()
{
  result = type metadata accessor for FlowToActingFlowAdapter.State(319);
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

void *sub_1DCD54DDC(char *a1, char *a2, uint64_t a3)
{
  if ((*(*(a3 - 8) + 80) & 0x20000) != 0)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  v5 = *(a3 - 8);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v6 = *(a2 + 24);
      *(a1 + 24) = v6;
      (**(v6 - 8))(a1, a2);
      goto LABEL_52;
    case 1u:
      v13 = *(a2 + 24);
      *(a1 + 24) = v13;
      (**(v13 - 8))(a1, a2);
      v14 = *(a2 + 5);
      v15 = *(a2 + 6);
      *(a1 + 5) = v14;
      *(a1 + 6) = v15;
      sub_1DD0DCF8C();
    case 2u:
      *a1 = *a2;
      v8 = *(a2 + 1);
      v9 = *(a2 + 2);
      *(a1 + 1) = v8;
      *(a1 + 2) = v9;
      sub_1DD0DCF8C();
    case 3u:
      *a1 = *a2;
      sub_1DD0DCF8C();
    case 4u:
      v7 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v7;

      goto LABEL_52;
    case 5u:
      v16 = *a2;
      v17 = *(a2 + 1);
      v18 = a2[16];
      sub_1DCD1B9B8(v16, v17, v18);
      *a1 = v16;
      *(a1 + 1) = v17;
      a1[16] = v18;
      goto LABEL_52;
    case 6u:
      v19 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v19;
      v20 = type metadata accessor for PluginAction();
      v21 = *(v20 + 20);
      v22 = &a1[v21];
      v23 = &a2[v21];
      v24 = sub_1DD0DB04C();
      v25 = *(*(v24 - 8) + 16);

      v138 = v25;
      v139 = v24;
      v25(v22, v23, v24);
      v26 = type metadata accessor for Input(0);
      v27 = v26[5];
      v28 = &v22[v27];
      v29 = &v23[v27];
      v30 = type metadata accessor for Parse(0);
      v140 = v20;
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v31 = sub_1DD0DC76C();
          (*(*(v31 - 8) + 16))(v28, v29, v31);
          goto LABEL_38;
        case 1u:
          v41 = sub_1DD0DC76C();
          (*(*(v41 - 8) + 16))(v28, v29, v41);
          v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *&v28[*(v42 + 48)] = *&v29[*(v42 + 48)];
          sub_1DD0DCF8C();
        case 2u:
          v36 = *(v29 + 1);
          *v28 = *v29;
          *(v28 + 1) = v36;
          *(v28 + 2) = *(v29 + 2);

          goto LABEL_38;
        case 3u:
          *v28 = *v29;
          swift_unknownObjectRetain();
          goto LABEL_38;
        case 4u:
          v34 = sub_1DD0DB1EC();
          (*(*(v34 - 8) + 16))(v28, v29, v34);
          goto LABEL_38;
        case 5u:
          v43 = *v29;
          *v28 = *v29;
          v44 = v43;
          goto LABEL_38;
        case 6u:
          v45 = sub_1DD0DB4BC();
          (*(*(v45 - 8) + 16))(v28, v29, v45);
          __dsta = type metadata accessor for USOParse();
          v46 = __dsta[5];
          v47 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v29[v46], 1, v47))
          {
            v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v28[v46], &v29[v46], *(*(v48 - 8) + 64));
          }

          else
          {
            (*(*(v47 - 8) + 16))(&v28[v46], &v29[v46], v47);
            __swift_storeEnumTagSinglePayload(&v28[v46], 0, 1, v47);
          }

          v78 = __dsta[6];
          v79 = &v28[v78];
          v80 = &v29[v78];
          v81 = *(v80 + 1);
          *v79 = *v80;
          *(v79 + 1) = v81;
          v82 = __dsta[7];
          v83 = &v28[v82];
          v84 = &v29[v82];
          v83[4] = v84[4];
          *v83 = *v84;

          goto LABEL_38;
        case 7u:
          v37 = sub_1DD0DB4BC();
          (*(*(v37 - 8) + 16))(v28, v29, v37);
          __dst = type metadata accessor for USOParse();
          v38 = __dst[5];
          v39 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v29[v38], 1, v39))
          {
            v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v28[v38], &v29[v38], *(*(v40 - 8) + 64));
          }

          else
          {
            (*(*(v39 - 8) + 16))(&v28[v38], &v29[v38], v39);
            __swift_storeEnumTagSinglePayload(&v28[v38], 0, 1, v39);
          }

          v59 = __dst[6];
          v60 = &v28[v59];
          v61 = &v29[v59];
          v62 = *(v61 + 1);
          *v60 = *v61;
          *(v60 + 1) = v62;
          v63 = __dst[7];
          v64 = &v28[v63];
          v65 = &v29[v63];
          v64[4] = v65[4];
          *v64 = *v65;
          v66 = type metadata accessor for LinkParse();
          v67 = v66[5];
          v68 = &v28[v67];
          v69 = &v29[v67];
          __dstc = *(v69 + 1);
          *v68 = *v69;
          *(v68 + 1) = __dstc;
          v70 = v66[6];
          v71 = &v28[v70];
          v72 = &v29[v70];
          v73 = *(v72 + 1);
          *v71 = *v72;
          *(v71 + 1) = v73;
          v74 = v66[7];
          v75 = &v28[v74];
          v76 = &v29[v74];
          v77 = *(v76 + 1);
          *v75 = *v76;
          *(v75 + 1) = v77;

          goto LABEL_38;
        case 8u:
          v49 = sub_1DD0DD12C();
          (*(*(v49 - 8) + 16))(v28, v29, v49);
          v50 = type metadata accessor for NLRouterParse();
          v51 = *(v50 + 20);
          v52 = &v28[v51];
          v53 = &v29[v51];
          v54 = *(v53 + 1);
          *v52 = *v53;
          *(v52 + 1) = v54;
          v129 = v50;
          v55 = *(v50 + 24);
          __dstb = &v28[v55];
          v56 = &v29[v55];
          v131 = type metadata accessor for USOParse();

          __src = v56;
          if (__swift_getEnumTagSinglePayload(v56, 1, v131))
          {
            v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(__dstb, v56, *(*(v57 - 8) + 64));
            v58 = v129;
          }

          else
          {
            v85 = sub_1DD0DB4BC();
            (*(*(v85 - 8) + 16))(__dstb, v56, v85);
            v86 = v131[5];
            v87 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&__src[v86], 1, v87))
            {
              v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&__dstb[v86], &__src[v86], *(*(v88 - 8) + 64));
            }

            else
            {
              (*(*(v87 - 8) + 16))(&__dstb[v86], &__src[v86], v87);
              __swift_storeEnumTagSinglePayload(&__dstb[v86], 0, 1, v87);
            }

            v58 = v129;
            v89 = v131[6];
            v90 = &__dstb[v89];
            v91 = &__src[v89];
            v92 = *(v91 + 1);
            *v90 = *v91;
            *(v90 + 1) = v92;
            v93 = v131[7];
            v94 = &__dstb[v93];
            v95 = &__src[v93];
            v94[4] = v95[4];
            *v94 = *v95;

            __swift_storeEnumTagSinglePayload(__dstb, 0, 1, v131);
          }

          v96 = *(v58 + 28);
          v97 = *&v29[v96];
          *&v28[v96] = v97;
          v98 = v97;
          goto LABEL_38;
        case 9u:
          v35 = sub_1DD0DD08C();
          (*(*(v35 - 8) + 16))(v28, v29, v35);
LABEL_38:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(v28, v29, *(*(v30 - 8) + 64));
          break;
      }

      *&v22[v26[6]] = *&v23[v26[6]];
      v99 = v26[7];
      v100 = &v22[v99];
      v101 = &v23[v99];
      v102 = *&v23[v99 + 24];

      if (v102)
      {
        v103 = *(v101 + 4);
        *(v100 + 3) = v102;
        *(v100 + 4) = v103;
        (**(v102 - 8))(v100, v101, v102);
      }

      else
      {
        v104 = *(v101 + 1);
        *v100 = *v101;
        *(v100 + 1) = v104;
        *(v100 + 4) = *(v101 + 4);
      }

      v22[v26[8]] = v23[v26[8]];
      v105 = v140;
      *&a1[v140[6]] = *&a2[v140[6]];
      v106 = v140[7];
      v107 = *&a2[v106];
      *&a1[v106] = v107;
      v108 = v140[8];
      v109 = &a1[v108];
      v110 = &a2[v108];
      v111 = *(v110 + 1);
      *v109 = *v110;
      *(v109 + 1) = v111;
      v112 = v140[9];
      v113 = &a1[v112];
      v114 = &a2[v112];
      v115 = type metadata accessor for ActionParaphrase(0);

      v116 = v107;

      if (__swift_getEnumTagSinglePayload(v114, 1, v115))
      {
        v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B28, &unk_1DD0EE960);
        memcpy(v113, v114, *(*(v117 - 8) + 64));
      }

      else
      {
        v118 = *(v114 + 1);
        *v113 = *v114;
        *(v113 + 1) = v118;
        v119 = *(v115 + 20);
        v120 = &v113[v119];
        v121 = &v114[v119];
        v122 = type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0);

        if (__swift_getEnumTagSinglePayload(v121, 1, v122))
        {
          v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B20, &qword_1DD0F0B00);
          memcpy(v120, v121, *(*(v123 - 8) + 64));
        }

        else
        {
          v124 = *(v121 + 1);
          *v120 = *v121;
          *(v120 + 1) = v124;
          v125 = *(v121 + 3);
          *(v120 + 2) = *(v121 + 2);
          *(v120 + 3) = v125;
          v137 = *(v122 + 24);
          v126 = sub_1DD0DB66C();
          v132 = *(*(v126 - 8) + 16);

          v132(&v120[v137], &v121[v137], v126);
          __swift_storeEnumTagSinglePayload(v120, 0, 1, v122);
        }

        __swift_storeEnumTagSinglePayload(v113, 0, 1, v115);
        v105 = v140;
      }

      v127 = v105[10];
      if (__swift_getEnumTagSinglePayload(&a2[v127], 1, v139))
      {
        v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
        memcpy(&a1[v127], &a2[v127], *(*(v128 - 8) + 64));
      }

      else
      {
        v138(&a1[v127], &a2[v127], v139);
        __swift_storeEnumTagSinglePayload(&a1[v127], 0, 1, v139);
      }

      a1[v105[11]] = a2[v105[11]];
      goto LABEL_52;
    case 7u:
      v10 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v10;
      v11 = *(a2 + 2);
      v12 = *(a2 + 3);
      *(a1 + 2) = v11;
      *(a1 + 3) = v12;

LABEL_52:
      swift_storeEnumTagMultiPayload();
      result = a1;
      break;
    default:
      v32 = *(v5 + 64);

      result = memcpy(a1, a2, v32);
      break;
  }

  return result;
}

void *sub_1DCD55B08(char *a1, char *a2, uint64_t a3)
{
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v6 = *(a2 + 24);
      *(a1 + 24) = v6;
      (**(v6 - 8))(a1, a2);
      goto LABEL_50;
    case 1u:
      v13 = *(a2 + 24);
      *(a1 + 24) = v13;
      (**(v13 - 8))(a1, a2);
      v14 = *(a2 + 5);
      v15 = *(a2 + 6);
      *(a1 + 5) = v14;
      *(a1 + 6) = v15;
      sub_1DD0DCF8C();
    case 2u:
      *a1 = *a2;
      v8 = *(a2 + 1);
      v9 = *(a2 + 2);
      *(a1 + 1) = v8;
      *(a1 + 2) = v9;
      sub_1DD0DCF8C();
    case 3u:
      *a1 = *a2;
      sub_1DD0DCF8C();
    case 4u:
      v7 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v7;

      goto LABEL_50;
    case 5u:
      v16 = *a2;
      v17 = *(a2 + 1);
      v18 = a2[16];
      sub_1DCD1B9B8(v16, v17, v18);
      *a1 = v16;
      *(a1 + 1) = v17;
      a1[16] = v18;
      goto LABEL_50;
    case 6u:
      v19 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v19;
      v20 = type metadata accessor for PluginAction();
      v21 = *(v20 + 20);
      v22 = &a1[v21];
      v23 = &a2[v21];
      v24 = sub_1DD0DB04C();
      v25 = *(*(v24 - 8) + 16);

      v138 = v25;
      v139 = v24;
      v25(v22, v23, v24);
      v26 = type metadata accessor for Input(0);
      v27 = v26[5];
      v28 = &v22[v27];
      v29 = &v23[v27];
      v30 = type metadata accessor for Parse(0);
      v140 = v20;
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v31 = sub_1DD0DC76C();
          (*(*(v31 - 8) + 16))(v28, v29, v31);
          goto LABEL_36;
        case 1u:
          v41 = sub_1DD0DC76C();
          (*(*(v41 - 8) + 16))(v28, v29, v41);
          v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *&v28[*(v42 + 48)] = *&v29[*(v42 + 48)];
          sub_1DD0DCF8C();
        case 2u:
          v36 = *(v29 + 1);
          *v28 = *v29;
          *(v28 + 1) = v36;
          *(v28 + 2) = *(v29 + 2);

          goto LABEL_36;
        case 3u:
          *v28 = *v29;
          swift_unknownObjectRetain();
          goto LABEL_36;
        case 4u:
          v34 = sub_1DD0DB1EC();
          (*(*(v34 - 8) + 16))(v28, v29, v34);
          goto LABEL_36;
        case 5u:
          v43 = *v29;
          *v28 = *v29;
          v44 = v43;
          goto LABEL_36;
        case 6u:
          v45 = sub_1DD0DB4BC();
          (*(*(v45 - 8) + 16))(v28, v29, v45);
          __dsta = type metadata accessor for USOParse();
          v46 = __dsta[5];
          v47 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v29[v46], 1, v47))
          {
            v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v28[v46], &v29[v46], *(*(v48 - 8) + 64));
          }

          else
          {
            (*(*(v47 - 8) + 16))(&v28[v46], &v29[v46], v47);
            __swift_storeEnumTagSinglePayload(&v28[v46], 0, 1, v47);
          }

          v78 = __dsta[6];
          v79 = &v28[v78];
          v80 = &v29[v78];
          v81 = *(v80 + 1);
          *v79 = *v80;
          *(v79 + 1) = v81;
          v82 = __dsta[7];
          v83 = &v28[v82];
          v84 = &v29[v82];
          v83[4] = v84[4];
          *v83 = *v84;

          goto LABEL_36;
        case 7u:
          v37 = sub_1DD0DB4BC();
          (*(*(v37 - 8) + 16))(v28, v29, v37);
          __dst = type metadata accessor for USOParse();
          v38 = __dst[5];
          v39 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v29[v38], 1, v39))
          {
            v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v28[v38], &v29[v38], *(*(v40 - 8) + 64));
          }

          else
          {
            (*(*(v39 - 8) + 16))(&v28[v38], &v29[v38], v39);
            __swift_storeEnumTagSinglePayload(&v28[v38], 0, 1, v39);
          }

          v59 = __dst[6];
          v60 = &v28[v59];
          v61 = &v29[v59];
          v62 = *(v61 + 1);
          *v60 = *v61;
          *(v60 + 1) = v62;
          v63 = __dst[7];
          v64 = &v28[v63];
          v65 = &v29[v63];
          v64[4] = v65[4];
          *v64 = *v65;
          v66 = type metadata accessor for LinkParse();
          v67 = v66[5];
          v68 = &v28[v67];
          v69 = &v29[v67];
          __dstc = *(v69 + 1);
          *v68 = *v69;
          *(v68 + 1) = __dstc;
          v70 = v66[6];
          v71 = &v28[v70];
          v72 = &v29[v70];
          v73 = *(v72 + 1);
          *v71 = *v72;
          *(v71 + 1) = v73;
          v74 = v66[7];
          v75 = &v28[v74];
          v76 = &v29[v74];
          v77 = *(v76 + 1);
          *v75 = *v76;
          *(v75 + 1) = v77;

          goto LABEL_36;
        case 8u:
          v49 = sub_1DD0DD12C();
          (*(*(v49 - 8) + 16))(v28, v29, v49);
          v50 = type metadata accessor for NLRouterParse();
          v51 = *(v50 + 20);
          v52 = &v28[v51];
          v53 = &v29[v51];
          v54 = *(v53 + 1);
          *v52 = *v53;
          *(v52 + 1) = v54;
          v129 = v50;
          v55 = *(v50 + 24);
          __dstb = &v28[v55];
          v56 = &v29[v55];
          v131 = type metadata accessor for USOParse();

          __src = v56;
          if (__swift_getEnumTagSinglePayload(v56, 1, v131))
          {
            v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(__dstb, v56, *(*(v57 - 8) + 64));
            v58 = v129;
          }

          else
          {
            v85 = sub_1DD0DB4BC();
            (*(*(v85 - 8) + 16))(__dstb, v56, v85);
            v86 = v131[5];
            v87 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&__src[v86], 1, v87))
            {
              v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&__dstb[v86], &__src[v86], *(*(v88 - 8) + 64));
            }

            else
            {
              (*(*(v87 - 8) + 16))(&__dstb[v86], &__src[v86], v87);
              __swift_storeEnumTagSinglePayload(&__dstb[v86], 0, 1, v87);
            }

            v58 = v129;
            v89 = v131[6];
            v90 = &__dstb[v89];
            v91 = &__src[v89];
            v92 = *(v91 + 1);
            *v90 = *v91;
            *(v90 + 1) = v92;
            v93 = v131[7];
            v94 = &__dstb[v93];
            v95 = &__src[v93];
            v94[4] = v95[4];
            *v94 = *v95;

            __swift_storeEnumTagSinglePayload(__dstb, 0, 1, v131);
          }

          v96 = *(v58 + 28);
          v97 = *&v29[v96];
          *&v28[v96] = v97;
          v98 = v97;
          goto LABEL_36;
        case 9u:
          v35 = sub_1DD0DD08C();
          (*(*(v35 - 8) + 16))(v28, v29, v35);
LABEL_36:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(v28, v29, *(*(v30 - 8) + 64));
          break;
      }

      *&v22[v26[6]] = *&v23[v26[6]];
      v99 = v26[7];
      v100 = &v22[v99];
      v101 = &v23[v99];
      v102 = *&v23[v99 + 24];

      if (v102)
      {
        v103 = *(v101 + 4);
        *(v100 + 3) = v102;
        *(v100 + 4) = v103;
        (**(v102 - 8))(v100, v101, v102);
      }

      else
      {
        v104 = *(v101 + 1);
        *v100 = *v101;
        *(v100 + 1) = v104;
        *(v100 + 4) = *(v101 + 4);
      }

      v22[v26[8]] = v23[v26[8]];
      v105 = v140;
      *&a1[v140[6]] = *&a2[v140[6]];
      v106 = v140[7];
      v107 = *&a2[v106];
      *&a1[v106] = v107;
      v108 = v140[8];
      v109 = &a1[v108];
      v110 = &a2[v108];
      v111 = *(v110 + 1);
      *v109 = *v110;
      *(v109 + 1) = v111;
      v112 = v140[9];
      v113 = &a1[v112];
      v114 = &a2[v112];
      v115 = type metadata accessor for ActionParaphrase(0);

      v116 = v107;

      if (__swift_getEnumTagSinglePayload(v114, 1, v115))
      {
        v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B28, &unk_1DD0EE960);
        memcpy(v113, v114, *(*(v117 - 8) + 64));
      }

      else
      {
        v118 = *(v114 + 1);
        *v113 = *v114;
        *(v113 + 1) = v118;
        v119 = *(v115 + 20);
        v120 = &v113[v119];
        v121 = &v114[v119];
        v122 = type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0);

        if (__swift_getEnumTagSinglePayload(v121, 1, v122))
        {
          v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B20, &qword_1DD0F0B00);
          memcpy(v120, v121, *(*(v123 - 8) + 64));
        }

        else
        {
          v124 = *(v121 + 1);
          *v120 = *v121;
          *(v120 + 1) = v124;
          v125 = *(v121 + 3);
          *(v120 + 2) = *(v121 + 2);
          *(v120 + 3) = v125;
          v137 = *(v122 + 24);
          v126 = sub_1DD0DB66C();
          v132 = *(*(v126 - 8) + 16);

          v132(&v120[v137], &v121[v137], v126);
          __swift_storeEnumTagSinglePayload(v120, 0, 1, v122);
        }

        __swift_storeEnumTagSinglePayload(v113, 0, 1, v115);
        v105 = v140;
      }

      v127 = v105[10];
      if (__swift_getEnumTagSinglePayload(&a2[v127], 1, v139))
      {
        v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
        memcpy(&a1[v127], &a2[v127], *(*(v128 - 8) + 64));
      }

      else
      {
        v138(&a1[v127], &a2[v127], v139);
        __swift_storeEnumTagSinglePayload(&a1[v127], 0, 1, v139);
      }

      a1[v105[11]] = a2[v105[11]];
      goto LABEL_50;
    case 7u:
      v10 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v10;
      v11 = *(a2 + 2);
      v12 = *(a2 + 3);
      *(a1 + 2) = v11;
      *(a1 + 3) = v12;

LABEL_50:
      swift_storeEnumTagMultiPayload();
      result = a1;
      break;
    default:
      v32 = *(*(a3 - 8) + 64);

      result = memcpy(a1, a2, v32);
      break;
  }

  return result;
}

uint64_t *sub_1DCD567F4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_1DCB4F3E0(a1, type metadata accessor for FlowToActingFlowAdapter.State);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v6 = a2[3];
        a1[3] = v6;
        a1[4] = a2[4];
        (**(v6 - 8))(a1, a2);
        goto LABEL_51;
      case 1u:
        v7 = a2[3];
        a1[3] = v7;
        a1[4] = a2[4];
        (**(v7 - 8))(a1, a2);
        a1[5] = a2[5];
        a1[6] = a2[6];
        sub_1DD0DCF8C();
      case 2u:
        *a1 = *a2;
        *(a1 + 1) = *(a2 + 1);
        a1[1] = a2[1];
        a1[2] = a2[2];
        sub_1DD0DCF8C();
      case 3u:
        *a1 = *a2;
        sub_1DD0DCF8C();
      case 4u:
        *a1 = *a2;
        a1[1] = a2[1];

        goto LABEL_51;
      case 5u:
        v8 = *a2;
        v9 = a2[1];
        v10 = *(a2 + 16);
        sub_1DCD1B9B8(v8, v9, v10);
        *a1 = v8;
        a1[1] = v9;
        *(a1 + 16) = v10;
        goto LABEL_51;
      case 6u:
        *a1 = *a2;
        a1[1] = a2[1];
        v11 = type metadata accessor for PluginAction();
        v12 = *(v11 + 20);
        v13 = a1 + v12;
        v14 = a2 + v12;
        v15 = sub_1DD0DB04C();
        v16 = *(*(v15 - 8) + 16);

        v121 = v15;
        v16(v13, v14, v15);
        v17 = type metadata accessor for Input(0);
        v18 = v17[5];
        v19 = &v13[v18];
        v20 = &v14[v18];
        v119 = type metadata accessor for Parse(0);
        v122 = v11;
        v118 = v16;
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:
            v21 = sub_1DD0DC76C();
            (*(*(v21 - 8) + 16))(v19, v20, v21);
            goto LABEL_37;
          case 1u:
            v30 = sub_1DD0DC76C();
            (*(*(v30 - 8) + 16))(v19, v20, v30);
            v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
            *&v19[*(v31 + 48)] = *&v20[*(v31 + 48)];
            sub_1DD0DCF8C();
          case 2u:
            *v19 = *v20;
            *(v19 + 1) = *(v20 + 1);
            *(v19 + 2) = *(v20 + 2);

            goto LABEL_37;
          case 3u:
            *v19 = *v20;
            swift_unknownObjectRetain();
            goto LABEL_37;
          case 4u:
            v24 = sub_1DD0DB1EC();
            (*(*(v24 - 8) + 16))(v19, v20, v24);
            goto LABEL_37;
          case 5u:
            v32 = *v20;
            *v19 = *v20;
            v33 = v32;
            goto LABEL_37;
          case 6u:
            v34 = sub_1DD0DB4BC();
            (*(*(v34 - 8) + 16))(v19, v20, v34);
            v116 = type metadata accessor for USOParse();
            v35 = v116[5];
            v36 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v20[v35], 1, v36))
            {
              v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v19[v35], &v20[v35], *(*(v37 - 8) + 64));
            }

            else
            {
              (*(*(v36 - 8) + 16))(&v19[v35], &v20[v35], v36);
              __swift_storeEnumTagSinglePayload(&v19[v35], 0, 1, v36);
            }

            v64 = v116[6];
            v65 = &v19[v64];
            v66 = &v20[v64];
            *v65 = *v66;
            *(v65 + 1) = *(v66 + 1);
            v67 = v116[7];
            v68 = &v19[v67];
            v69 = &v20[v67];
            v70 = *v69;
            v68[4] = v69[4];
            *v68 = v70;

            goto LABEL_37;
          case 7u:
            v26 = sub_1DD0DB4BC();
            (*(*(v26 - 8) + 16))(v19, v20, v26);
            v115 = type metadata accessor for USOParse();
            v27 = v115[5];
            v28 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v20[v27], 1, v28))
            {
              v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v19[v27], &v20[v27], *(*(v29 - 8) + 64));
            }

            else
            {
              (*(*(v28 - 8) + 16))(&v19[v27], &v20[v27], v28);
              __swift_storeEnumTagSinglePayload(&v19[v27], 0, 1, v28);
            }

            v47 = v115[6];
            v48 = &v19[v47];
            v49 = &v20[v47];
            *v48 = *v49;
            *(v48 + 1) = *(v49 + 1);
            v50 = v115[7];
            v51 = &v19[v50];
            v52 = &v20[v50];
            v53 = *v52;
            v51[4] = v52[4];
            *v51 = v53;
            v54 = type metadata accessor for LinkParse();
            v55 = v54[5];
            v56 = &v19[v55];
            v57 = &v20[v55];
            *v56 = *v57;
            *(v56 + 1) = *(v57 + 1);
            v58 = v54[6];
            v59 = &v19[v58];
            v60 = &v20[v58];
            *v59 = *v60;
            *(v59 + 1) = *(v60 + 1);
            v61 = v54[7];
            v62 = &v19[v61];
            v63 = &v20[v61];
            *v62 = *v63;
            *(v62 + 1) = *(v63 + 1);

            goto LABEL_37;
          case 8u:
            v38 = sub_1DD0DD12C();
            (*(*(v38 - 8) + 16))(v19, v20, v38);
            v39 = type metadata accessor for NLRouterParse();
            v40 = *(v39 + 20);
            v41 = &v19[v40];
            v42 = &v20[v40];
            *v41 = *v42;
            *(v41 + 1) = *(v42 + 1);
            v111 = v39;
            v43 = *(v39 + 24);
            v117 = &v19[v43];
            v44 = &v20[v43];
            v112 = type metadata accessor for USOParse();

            v113 = v44;
            if (__swift_getEnumTagSinglePayload(v44, 1, v112))
            {
              v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
              memcpy(v117, v44, *(*(v45 - 8) + 64));
              v46 = v111;
            }

            else
            {
              v71 = sub_1DD0DB4BC();
              (*(*(v71 - 8) + 16))(v117, v44, v71);
              v72 = v112[5];
              v73 = sub_1DD0DB3EC();
              if (__swift_getEnumTagSinglePayload(&v113[v72], 1, v73))
              {
                v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                memcpy(&v117[v72], &v113[v72], *(*(v74 - 8) + 64));
              }

              else
              {
                (*(*(v73 - 8) + 16))(&v117[v72], &v113[v72], v73);
                __swift_storeEnumTagSinglePayload(&v117[v72], 0, 1, v73);
              }

              v46 = v111;
              v75 = v112[6];
              v76 = &v117[v75];
              v77 = &v113[v75];
              *v76 = *v77;
              *(v76 + 1) = *(v77 + 1);
              v78 = v112[7];
              v79 = &v117[v78];
              v80 = &v113[v78];
              v81 = *v80;
              v79[4] = v80[4];
              *v79 = v81;

              __swift_storeEnumTagSinglePayload(v117, 0, 1, v112);
            }

            v82 = *(v46 + 28);
            v83 = *&v20[v82];
            *&v19[v82] = v83;
            v84 = v83;
            goto LABEL_37;
          case 9u:
            v25 = sub_1DD0DD08C();
            (*(*(v25 - 8) + 16))(v19, v20, v25);
LABEL_37:
            swift_storeEnumTagMultiPayload();
            break;
          default:
            memcpy(v19, v20, *(*(v119 - 8) + 64));
            break;
        }

        *&v13[v17[6]] = *&v14[v17[6]];
        v85 = v17[7];
        v86 = &v13[v85];
        v87 = &v14[v85];
        v88 = *&v14[v85 + 24];

        if (v88)
        {
          *(v86 + 3) = v88;
          *(v86 + 4) = *(v87 + 4);
          (**(v88 - 8))(v86, v87, v88);
        }

        else
        {
          v89 = *v87;
          v90 = *(v87 + 1);
          *(v86 + 4) = *(v87 + 4);
          *v86 = v89;
          *(v86 + 1) = v90;
        }

        v13[v17[8]] = v14[v17[8]];
        v91 = v122;
        *(a1 + v122[6]) = *(a2 + v122[6]);
        v92 = v122[7];
        v93 = *(a2 + v92);
        *(a1 + v92) = v93;
        v94 = v122[8];
        v95 = (a1 + v94);
        v96 = a2 + v94;
        *v95 = *v96;
        v95[1] = *(v96 + 1);
        v97 = v122[9];
        v98 = (a1 + v97);
        v99 = a2 + v97;
        v100 = type metadata accessor for ActionParaphrase(0);

        v101 = v93;

        if (__swift_getEnumTagSinglePayload(v99, 1, v100))
        {
          v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B28, &unk_1DD0EE960);
          memcpy(v98, v99, *(*(v102 - 8) + 64));
        }

        else
        {
          *v98 = *v99;
          v98[1] = *(v99 + 1);
          v103 = *(v100 + 20);
          v104 = (v98 + v103);
          v105 = &v99[v103];
          v106 = type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0);

          if (__swift_getEnumTagSinglePayload(v105, 1, v106))
          {
            v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B20, &qword_1DD0F0B00);
            memcpy(v104, v105, *(*(v107 - 8) + 64));
          }

          else
          {
            *v104 = *v105;
            v104[1] = *(v105 + 1);
            v104[2] = *(v105 + 2);
            v104[3] = *(v105 + 3);
            v120 = *(v106 + 24);
            v108 = sub_1DD0DB66C();
            v114 = *(*(v108 - 8) + 16);

            v114(v104 + v120, &v105[v120], v108);
            __swift_storeEnumTagSinglePayload(v104, 0, 1, v106);
          }

          __swift_storeEnumTagSinglePayload(v98, 0, 1, v100);
          v91 = v122;
        }

        v109 = v91[10];
        if (__swift_getEnumTagSinglePayload(a2 + v109, 1, v121))
        {
          v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
          memcpy(a1 + v109, a2 + v109, *(*(v110 - 8) + 64));
        }

        else
        {
          v118(a1 + v109, a2 + v109, v121);
          __swift_storeEnumTagSinglePayload(a1 + v109, 0, 1, v121);
        }

        *(a1 + v91[11]) = *(a2 + v91[11]);
        goto LABEL_51;
      case 7u:
        *a1 = *a2;
        a1[1] = a2[1];
        a1[2] = a2[2];
        a1[3] = a2[3];

LABEL_51:
        swift_storeEnumTagMultiPayload();
        return a1;
      default:
        v22 = *(*(a3 - 8) + 64);

        return memcpy(a1, a2, v22);
    }
  }

  return a1;
}

char *sub_1DCD57598(char *a1, char *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 6)
  {
    *a1 = *a2;
    v6 = type metadata accessor for PluginAction();
    v7 = v6[5];
    v8 = &a1[v7];
    v9 = &a2[v7];
    v10 = sub_1DD0DB04C();
    v83 = *(*(v10 - 8) + 32);
    v83(v8, v9, v10);
    v11 = type metadata accessor for Input(0);
    v12 = v11[5];
    v13 = &v8[v12];
    v14 = &v9[v12];
    v84 = type metadata accessor for Parse(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v15 = sub_1DD0DC76C();
        (*(*(v15 - 8) + 32))(v13, v14, v15);
        goto LABEL_27;
      case 1u:
        v26 = sub_1DD0DC76C();
        (*(*(v26 - 8) + 32))(v13, v14, v26);
        v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
        *&v13[*(v27 + 48)] = *&v14[*(v27 + 48)];
        goto LABEL_27;
      case 4u:
        v29 = sub_1DD0DB1EC();
        (*(*(v29 - 8) + 32))(v13, v14, v29);
        goto LABEL_27;
      case 6u:
        v80 = v10;
        v30 = sub_1DD0DB4BC();
        (*(*(v30 - 8) + 32))(v13, v14, v30);
        v78 = type metadata accessor for USOParse();
        v31 = v78[5];
        v75 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v14[v31], 1, v75))
        {
          v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v13[v31], &v14[v31], *(*(v32 - 8) + 64));
        }

        else
        {
          (*(*(v75 - 8) + 32))(&v13[v31], &v14[v31]);
          __swift_storeEnumTagSinglePayload(&v13[v31], 0, 1, v75);
        }

        *&v13[v78[6]] = *&v14[v78[6]];
        v40 = v78[7];
        v41 = &v13[v40];
        v42 = &v14[v40];
        v41[4] = v42[4];
        *v41 = *v42;
        goto LABEL_23;
      case 7u:
        v80 = v10;
        v33 = sub_1DD0DB4BC();
        (*(*(v33 - 8) + 32))(v13, v14, v33);
        v79 = type metadata accessor for USOParse();
        v34 = v79[5];
        v76 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v14[v34], 1, v76))
        {
          v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v13[v34], &v14[v34], *(*(v35 - 8) + 64));
        }

        else
        {
          (*(*(v76 - 8) + 32))(&v13[v34], &v14[v34]);
          __swift_storeEnumTagSinglePayload(&v13[v34], 0, 1, v76);
        }

        *&v13[v79[6]] = *&v14[v79[6]];
        v43 = v79[7];
        v44 = &v13[v43];
        v45 = &v14[v43];
        v44[4] = v45[4];
        *v44 = *v45;
        v46 = type metadata accessor for LinkParse();
        *&v13[v46[5]] = *&v14[v46[5]];
        *&v13[v46[6]] = *&v14[v46[6]];
        *&v13[v46[7]] = *&v14[v46[7]];
LABEL_23:
        swift_storeEnumTagMultiPayload();
        v10 = v80;
        break;
      case 8u:
        v72 = v11;
        v18 = sub_1DD0DD12C();
        (*(*(v18 - 8) + 32))(v13, v14, v18);
        v19 = type metadata accessor for NLRouterParse();
        *&v13[*(v19 + 20)] = *&v14[*(v19 + 20)];
        v73 = v19;
        v20 = *(v19 + 24);
        v77 = &v13[v20];
        v21 = &v14[v20];
        v22 = type metadata accessor for USOParse();
        v74 = v21;
        v23 = v21;
        v24 = v22;
        if (__swift_getEnumTagSinglePayload(v23, 1, v22))
        {
          v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
          memcpy(v77, v74, *(*(v25 - 8) + 64));
          v11 = v72;
        }

        else
        {
          v81 = v10;
          v36 = sub_1DD0DB4BC();
          (*(*(v36 - 8) + 32))(v77, v74, v36);
          v71 = v24;
          v37 = *(v24 + 20);
          v38 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v74[v37], 1, v38))
          {
            v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v77[v37], &v74[v37], *(*(v39 - 8) + 64));
          }

          else
          {
            (*(*(v38 - 8) + 32))(&v77[v37], &v74[v37], v38);
            __swift_storeEnumTagSinglePayload(&v77[v37], 0, 1, v38);
          }

          v11 = v72;
          *&v77[*(v71 + 24)] = *&v74[*(v71 + 24)];
          v47 = *(v71 + 28);
          v48 = &v77[v47];
          v49 = &v74[v47];
          v48[4] = v49[4];
          *v48 = *v49;
          __swift_storeEnumTagSinglePayload(v77, 0, 1, v71);
          v10 = v81;
        }

        *&v13[*(v73 + 28)] = *&v14[*(v73 + 28)];
        goto LABEL_27;
      case 9u:
        v28 = sub_1DD0DD08C();
        (*(*(v28 - 8) + 32))(v13, v14, v28);
LABEL_27:
        swift_storeEnumTagMultiPayload();
        break;
      default:
        memcpy(v13, v14, *(*(v84 - 8) + 64));
        break;
    }

    *&v8[v11[6]] = *&v9[v11[6]];
    v50 = v11[7];
    v51 = &v8[v50];
    v52 = &v9[v50];
    v53 = *(v52 + 1);
    *v51 = *v52;
    *(v51 + 1) = v53;
    *(v51 + 4) = *(v52 + 4);
    v8[v11[8]] = v9[v11[8]];
    *&a1[v6[6]] = *&a2[v6[6]];
    *&a1[v6[7]] = *&a2[v6[7]];
    *&a1[v6[8]] = *&a2[v6[8]];
    v54 = v6[9];
    v55 = &a1[v54];
    v56 = &a2[v54];
    v57 = type metadata accessor for ActionParaphrase(0);
    if (__swift_getEnumTagSinglePayload(v56, 1, v57))
    {
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B28, &unk_1DD0EE960);
      memcpy(v55, v56, *(*(v58 - 8) + 64));
    }

    else
    {
      *v55 = *v56;
      v59 = *(v57 + 20);
      v60 = &v55[v59];
      v61 = &v56[v59];
      v62 = type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0);
      if (__swift_getEnumTagSinglePayload(v61, 1, v62))
      {
        v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B20, &qword_1DD0F0B00);
        memcpy(v60, v61, *(*(v63 - 8) + 64));
      }

      else
      {
        v64 = *(v61 + 1);
        *v60 = *v61;
        *(v60 + 1) = v64;
        v82 = v10;
        v65 = *(v62 + 24);
        v66 = sub_1DD0DB66C();
        v67 = &v60[v65];
        v68 = &v61[v65];
        v10 = v82;
        (*(*(v66 - 8) + 32))(v67, v68, v66);
        __swift_storeEnumTagSinglePayload(v60, 0, 1, v62);
      }

      __swift_storeEnumTagSinglePayload(v55, 0, 1, v57);
    }

    v69 = v6[10];
    if (__swift_getEnumTagSinglePayload(&a2[v69], 1, v10))
    {
      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
      memcpy(&a1[v69], &a2[v69], *(*(v70 - 8) + 64));
    }

    else
    {
      v83(&a1[v69], &a2[v69], v10);
      __swift_storeEnumTagSinglePayload(&a1[v69], 0, 1, v10);
    }

    a1[v6[11]] = a2[v6[11]];
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  else
  {
    v16 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v16);
  }
}

char *sub_1DCD57F70(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_1DCB4F3E0(a1, type metadata accessor for FlowToActingFlowAdapter.State);
  if (swift_getEnumCaseMultiPayload() == 6)
  {
    *a1 = *a2;
    v6 = type metadata accessor for PluginAction();
    v7 = v6[5];
    v8 = &a1[v7];
    v9 = &a2[v7];
    v10 = sub_1DD0DB04C();
    v83 = *(*(v10 - 8) + 32);
    v83(v8, v9, v10);
    v11 = type metadata accessor for Input(0);
    v12 = v11[5];
    v13 = &v8[v12];
    v14 = &v9[v12];
    v84 = type metadata accessor for Parse(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v15 = sub_1DD0DC76C();
        (*(*(v15 - 8) + 32))(v13, v14, v15);
        goto LABEL_28;
      case 1u:
        v26 = sub_1DD0DC76C();
        (*(*(v26 - 8) + 32))(v13, v14, v26);
        v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
        *&v13[*(v27 + 48)] = *&v14[*(v27 + 48)];
        goto LABEL_28;
      case 4u:
        v29 = sub_1DD0DB1EC();
        (*(*(v29 - 8) + 32))(v13, v14, v29);
        goto LABEL_28;
      case 6u:
        v80 = v10;
        v30 = sub_1DD0DB4BC();
        (*(*(v30 - 8) + 32))(v13, v14, v30);
        v78 = type metadata accessor for USOParse();
        v31 = v78[5];
        v75 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v14[v31], 1, v75))
        {
          v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v13[v31], &v14[v31], *(*(v32 - 8) + 64));
        }

        else
        {
          (*(*(v75 - 8) + 32))(&v13[v31], &v14[v31]);
          __swift_storeEnumTagSinglePayload(&v13[v31], 0, 1, v75);
        }

        *&v13[v78[6]] = *&v14[v78[6]];
        v40 = v78[7];
        v41 = &v13[v40];
        v42 = &v14[v40];
        v41[4] = v42[4];
        *v41 = *v42;
        goto LABEL_24;
      case 7u:
        v80 = v10;
        v33 = sub_1DD0DB4BC();
        (*(*(v33 - 8) + 32))(v13, v14, v33);
        v79 = type metadata accessor for USOParse();
        v34 = v79[5];
        v76 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v14[v34], 1, v76))
        {
          v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v13[v34], &v14[v34], *(*(v35 - 8) + 64));
        }

        else
        {
          (*(*(v76 - 8) + 32))(&v13[v34], &v14[v34]);
          __swift_storeEnumTagSinglePayload(&v13[v34], 0, 1, v76);
        }

        *&v13[v79[6]] = *&v14[v79[6]];
        v43 = v79[7];
        v44 = &v13[v43];
        v45 = &v14[v43];
        v44[4] = v45[4];
        *v44 = *v45;
        v46 = type metadata accessor for LinkParse();
        *&v13[v46[5]] = *&v14[v46[5]];
        *&v13[v46[6]] = *&v14[v46[6]];
        *&v13[v46[7]] = *&v14[v46[7]];
LABEL_24:
        swift_storeEnumTagMultiPayload();
        v10 = v80;
        break;
      case 8u:
        v72 = v11;
        v18 = sub_1DD0DD12C();
        (*(*(v18 - 8) + 32))(v13, v14, v18);
        v19 = type metadata accessor for NLRouterParse();
        *&v13[*(v19 + 20)] = *&v14[*(v19 + 20)];
        v73 = v19;
        v20 = *(v19 + 24);
        v77 = &v13[v20];
        v21 = &v14[v20];
        v22 = type metadata accessor for USOParse();
        v74 = v21;
        v23 = v21;
        v24 = v22;
        if (__swift_getEnumTagSinglePayload(v23, 1, v22))
        {
          v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
          memcpy(v77, v74, *(*(v25 - 8) + 64));
          v11 = v72;
        }

        else
        {
          v81 = v10;
          v36 = sub_1DD0DB4BC();
          (*(*(v36 - 8) + 32))(v77, v74, v36);
          v71 = v24;
          v37 = *(v24 + 20);
          v38 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v74[v37], 1, v38))
          {
            v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v77[v37], &v74[v37], *(*(v39 - 8) + 64));
          }

          else
          {
            (*(*(v38 - 8) + 32))(&v77[v37], &v74[v37], v38);
            __swift_storeEnumTagSinglePayload(&v77[v37], 0, 1, v38);
          }

          v11 = v72;
          *&v77[*(v71 + 24)] = *&v74[*(v71 + 24)];
          v47 = *(v71 + 28);
          v48 = &v77[v47];
          v49 = &v74[v47];
          v48[4] = v49[4];
          *v48 = *v49;
          __swift_storeEnumTagSinglePayload(v77, 0, 1, v71);
          v10 = v81;
        }

        *&v13[*(v73 + 28)] = *&v14[*(v73 + 28)];
        goto LABEL_28;
      case 9u:
        v28 = sub_1DD0DD08C();
        (*(*(v28 - 8) + 32))(v13, v14, v28);
LABEL_28:
        swift_storeEnumTagMultiPayload();
        break;
      default:
        memcpy(v13, v14, *(*(v84 - 8) + 64));
        break;
    }

    *&v8[v11[6]] = *&v9[v11[6]];
    v50 = v11[7];
    v51 = &v8[v50];
    v52 = &v9[v50];
    v53 = *(v52 + 1);
    *v51 = *v52;
    *(v51 + 1) = v53;
    *(v51 + 4) = *(v52 + 4);
    v8[v11[8]] = v9[v11[8]];
    *&a1[v6[6]] = *&a2[v6[6]];
    *&a1[v6[7]] = *&a2[v6[7]];
    *&a1[v6[8]] = *&a2[v6[8]];
    v54 = v6[9];
    v55 = &a1[v54];
    v56 = &a2[v54];
    v57 = type metadata accessor for ActionParaphrase(0);
    if (__swift_getEnumTagSinglePayload(v56, 1, v57))
    {
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B28, &unk_1DD0EE960);
      memcpy(v55, v56, *(*(v58 - 8) + 64));
    }

    else
    {
      *v55 = *v56;
      v59 = *(v57 + 20);
      v60 = &v55[v59];
      v61 = &v56[v59];
      v62 = type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0);
      if (__swift_getEnumTagSinglePayload(v61, 1, v62))
      {
        v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B20, &qword_1DD0F0B00);
        memcpy(v60, v61, *(*(v63 - 8) + 64));
      }

      else
      {
        v64 = *(v61 + 1);
        *v60 = *v61;
        *(v60 + 1) = v64;
        v82 = v10;
        v65 = *(v62 + 24);
        v66 = sub_1DD0DB66C();
        v67 = &v60[v65];
        v68 = &v61[v65];
        v10 = v82;
        (*(*(v66 - 8) + 32))(v67, v68, v66);
        __swift_storeEnumTagSinglePayload(v60, 0, 1, v62);
      }

      __swift_storeEnumTagSinglePayload(v55, 0, 1, v57);
    }

    v69 = v6[10];
    if (__swift_getEnumTagSinglePayload(&a2[v69], 1, v10))
    {
      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
      memcpy(&a1[v69], &a2[v69], *(*(v70 - 8) + 64));
    }

    else
    {
      v83(&a1[v69], &a2[v69], v10);
      __swift_storeEnumTagSinglePayload(&a1[v69], 0, 1, v10);
    }

    a1[v6[11]] = a2[v6[11]];
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v16 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v16);
}

uint64_t sub_1DCD5896C()
{
  result = type metadata accessor for PluginAction();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NoopFlow(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
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

_BYTE *storeEnumTagSinglePayload for NoopFlow(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
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
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
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

uint64_t sub_1DCD58BCC(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_26_6();
  v6 = v5(v4);
  OUTLINED_FUNCTION_2(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

uint64_t sub_1DCD58C28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowToActingFlowAdapter.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DCD58C8C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_26_6();
  v6 = v5(v4);
  OUTLINED_FUNCTION_2(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

unint64_t sub_1DCD58CE8()
{
  result = qword_1ECCA5028;
  if (!qword_1ECCA5028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA5020, &unk_1DD0F0CD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA5028);
  }

  return result;
}

void sub_1DCD58D90(char *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5038, &qword_1DD0F0CF0);
  OUTLINED_FUNCTION_20_0(v2);
  v4 = *(v3 + 80);

  sub_1DCD549A8(a1);
}

void *sub_1DCD58E08(void *a1, void *a2, uint64_t a3)
{
  if ((*(*(a3 - 8) + 80) & 0x20000) != 0)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  v5 = *(a3 - 8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      v8 = *a2;
      v9 = v8;
      *a1 = v8;
      swift_storeEnumTagMultiPayload();
      return a1;
    case 1:
      *a1 = *a2;
      a1[1] = a2[1];
      *(a1 + 16) = *(a2 + 16);
      a1[3] = a2[3];
      v7 = *(a2 + 48);
      sub_1DD0DCF8C();
    case 0:
      *a1 = *a2;
      a1[1] = a2[1];
      *(a1 + 16) = *(a2 + 16);
      a1[3] = a2[3];
      sub_1DD0DCF8C();
    default:
      v10 = *(v5 + 64);

      return memcpy(a1, a2, v10);
  }
}

void sub_1DCD59B60(uint64_t a1)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      v18 = *a1;

      break;
    case 1:
      v5 = *(a1 + 8);

      v6 = *(a1 + 24);

      v7 = *(a1 + 48);
      if (v7 <= 0xFB)
      {
        sub_1DCD21390(*(a1 + 32), *(a1 + 40), v7);
      }

      v8 = type metadata accessor for ExecuteResponse(0);
      v9 = a1 + *(v8 + 36);
      v10 = type metadata accessor for PluginAction();
      if (!__swift_getEnumTagSinglePayload(v9, 1, v10))
      {
        v11 = *(v9 + 8);

        v12 = v9 + v10[5];
        v13 = sub_1DD0DB04C();
        v14 = *(*(v13 - 8) + 8);
        v14(v12, v13);
        v15 = type metadata accessor for Input(0);
        v16 = v12 + v15[5];
        type metadata accessor for Parse(0);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:
            v17 = sub_1DD0DC76C();
            goto LABEL_17;
          case 1u:
            v30 = sub_1DD0DC76C();
            (*(*(v30 - 8) + 8))(v16, v30);
            v31 = *(v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60) + 48));

            break;
          case 2u:
            v19 = *(v16 + 8);

            v20 = *(v16 + 16);

            break;
          case 3u:
            v21 = *v16;
            swift_unknownObjectRelease();
            break;
          case 4u:
            v17 = sub_1DD0DB1EC();
            goto LABEL_17;
          case 5u:

            break;
          case 6u:
            v63 = v14;
            v32 = sub_1DD0DB4BC();
            (*(*(v32 - 8) + 8))(v16, v32);
            v61 = type metadata accessor for USOParse();
            v33 = *(v61 + 20);
            v34 = sub_1DD0DB3EC();
            if (!__swift_getEnumTagSinglePayload(v16 + v33, 1, v34))
            {
              (*(*(v34 - 8) + 8))(v16 + v33, v34);
            }

            v29 = *(v61 + 24);
            goto LABEL_28;
          case 7u:
            v63 = v14;
            v22 = sub_1DD0DB4BC();
            (*(*(v22 - 8) + 8))(v16, v22);
            v60 = type metadata accessor for USOParse();
            v23 = *(v60 + 20);
            v24 = sub_1DD0DB3EC();
            if (!__swift_getEnumTagSinglePayload(v16 + v23, 1, v24))
            {
              (*(*(v24 - 8) + 8))(v16 + v23, v24);
            }

            v25 = *(v16 + *(v60 + 24) + 8);

            v26 = type metadata accessor for LinkParse();
            v27 = *(v16 + v26[5] + 8);

            v28 = *(v16 + v26[6] + 8);

            v29 = v26[7];
LABEL_28:
            v35 = *(v16 + v29 + 8);

            goto LABEL_34;
          case 8u:
            v63 = v14;
            v36 = sub_1DD0DD12C();
            (*(*(v36 - 8) + 8))(v16, v36);
            v37 = type metadata accessor for NLRouterParse();
            v38 = *(v16 + v37[5] + 8);

            v39 = v16 + v37[6];
            v62 = type metadata accessor for USOParse();
            if (!__swift_getEnumTagSinglePayload(v39, 1, v62))
            {
              v40 = sub_1DD0DB4BC();
              (*(*(v40 - 8) + 8))(v39, v40);
              v59 = *(v62 + 20);
              v58 = sub_1DD0DB3EC();
              if (!__swift_getEnumTagSinglePayload(v39 + v59, 1, v58))
              {
                (*(*(v58 - 8) + 8))(v39 + v59);
              }

              v41 = *(v39 + *(v62 + 24) + 8);
            }

LABEL_34:
            v14 = v63;
            break;
          case 9u:
            v17 = sub_1DD0DD08C();
LABEL_17:
            (*(*(v17 - 8) + 8))(v16, v17);
            break;
          default:
            break;
        }

        v42 = *(v12 + v15[6]);

        v43 = (v12 + v15[7]);
        if (v43[3])
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v43);
        }

        v44 = *(v9 + v10[6]);

        v45 = *(v9 + v10[8] + 8);

        v46 = v9 + v10[9];
        v47 = type metadata accessor for ActionParaphrase(0);
        if (!__swift_getEnumTagSinglePayload(v46, 1, v47))
        {
          v48 = *(v46 + 8);

          v49 = v46 + *(v47 + 20);
          v50 = type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0);
          if (!__swift_getEnumTagSinglePayload(v49, 1, v50))
          {
            v51 = *(v49 + 8);

            v52 = *(v49 + 24);

            v53 = *(v50 + 24);
            v54 = sub_1DD0DB66C();
            (*(*(v54 - 8) + 8))(v49 + v53, v54);
          }
        }

        v55 = v10[10];
        if (!__swift_getEnumTagSinglePayload(v9 + v55, 1, v13))
        {
          v14(v9 + v55, v13);
        }
      }

      v56 = a1 + *(v8 + 40);
      if (*(v56 + 8))
      {

        v57 = *(v56 + 24);
      }

      break;
    case 0:
      v3 = *(a1 + 8);

      v4 = *(a1 + 24);

      break;
  }
}

void *sub_1DCD5A248(void *a1, void *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      v8 = *a2;
      v9 = v8;
      *a1 = v8;
      swift_storeEnumTagMultiPayload();
      return a1;
    case 1:
      *a1 = *a2;
      a1[1] = a2[1];
      *(a1 + 16) = *(a2 + 16);
      a1[3] = a2[3];
      v7 = *(a2 + 48);
      sub_1DD0DCF8C();
    case 0:
      *a1 = *a2;
      a1[1] = a2[1];
      *(a1 + 16) = *(a2 + 16);
      a1[3] = a2[3];
      sub_1DD0DCF8C();
    default:
      v10 = *(*(a3 - 8) + 64);

      return memcpy(a1, a2, v10);
  }
}

void *sub_1DCD5AF78(void *a1, void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_1DCB4F3E0(a1, type metadata accessor for FlowToActingFlowAdapter.Event);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      v8 = *a2;
      v9 = v8;
      *a1 = v8;
      swift_storeEnumTagMultiPayload();
      return a1;
    case 1:
      *a1 = *a2;
      a1[1] = a2[1];
      *(a1 + 16) = *(a2 + 16);
      a1[3] = a2[3];
      v7 = *(a2 + 48);
      sub_1DD0DCF8C();
    case 0:
      *a1 = *a2;
      a1[1] = a2[1];
      *(a1 + 16) = *(a2 + 16);
      a1[3] = a2[3];
      sub_1DD0DCF8C();
  }

  v10 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v10);
}

void *sub_1DCD5BD30(void *a1, void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a1 = *a2;
    a1[1] = a2[1];
    *(a1 + 16) = *(a2 + 16);
    a1[3] = a2[3];
    *(a1 + 2) = *(a2 + 2);
    *(a1 + 48) = *(a2 + 48);
    v6 = type metadata accessor for ExecuteResponse(0);
    v7 = *(v6 + 36);
    v8 = (a1 + v7);
    v9 = (a2 + v7);
    v10 = type metadata accessor for PluginAction();
    if (__swift_getEnumTagSinglePayload(v9, 1, v10))
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4AD0, &qword_1DD0EDF38);
      memcpy(v8, v9, *(*(v11 - 8) + 64));
    }

    else
    {
      v96 = v6;
      *v8 = *v9;
      v14 = v10[5];
      v15 = v8 + v14;
      v16 = v9 + v14;
      v95 = sub_1DD0DB04C();
      v92 = *(*(v95 - 8) + 32);
      v92(v15, v16);
      v17 = type metadata accessor for Input(0);
      v18 = v17[5];
      v97 = &v15[v18];
      v19 = &v16[v18];
      v93 = type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v20 = sub_1DD0DC76C();
          (*(*(v20 - 8) + 32))(v97, v19, v20);
          goto LABEL_29;
        case 1u:
          v29 = sub_1DD0DC76C();
          (*(*(v29 - 8) + 32))(v97, v19, v29);
          v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *&v97[*(v30 + 48)] = *&v19[*(v30 + 48)];
          goto LABEL_29;
        case 4u:
          v32 = sub_1DD0DB1EC();
          (*(*(v32 - 8) + 32))(v97, v19, v32);
          goto LABEL_29;
        case 6u:
          v87 = v17;
          v33 = sub_1DD0DB4BC();
          (*(*(v33 - 8) + 32))(v97, v19, v33);
          v90 = type metadata accessor for USOParse();
          v34 = v90[5];
          v35 = sub_1DD0DB3EC();
          v85 = v34;
          v36 = &v19[v34];
          v37 = v35;
          if (__swift_getEnumTagSinglePayload(v36, 1, v35))
          {
            v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v97[v85], &v19[v85], *(*(v38 - 8) + 64));
          }

          else
          {
            (*(*(v37 - 8) + 32))(&v97[v85], &v19[v85], v37);
            __swift_storeEnumTagSinglePayload(&v97[v85], 0, 1, v37);
          }

          *&v97[v90[6]] = *&v19[v90[6]];
          v50 = v90[7];
          v51 = &v97[v50];
          v52 = &v19[v50];
          v51[4] = v52[4];
          *v51 = *v52;
          goto LABEL_25;
        case 7u:
          v87 = v17;
          v39 = sub_1DD0DB4BC();
          (*(*(v39 - 8) + 32))(v97, v19, v39);
          v91 = type metadata accessor for USOParse();
          v40 = v91[5];
          v41 = sub_1DD0DB3EC();
          v86 = v40;
          v42 = &v19[v40];
          v43 = v41;
          if (__swift_getEnumTagSinglePayload(v42, 1, v41))
          {
            v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            v45 = v97;
            memcpy(&v97[v86], &v19[v86], *(*(v44 - 8) + 64));
          }

          else
          {
            (*(*(v43 - 8) + 32))(&v97[v86], &v19[v86], v43);
            __swift_storeEnumTagSinglePayload(&v97[v86], 0, 1, v43);
            v45 = v97;
          }

          *&v45[v91[6]] = *&v19[v91[6]];
          v53 = v91[7];
          v54 = &v45[v53];
          v55 = &v19[v53];
          v54[4] = v55[4];
          *v54 = *v55;
          v56 = type metadata accessor for LinkParse();
          *&v45[v56[5]] = *&v19[v56[5]];
          *&v45[v56[6]] = *&v19[v56[6]];
          *&v45[v56[7]] = *&v19[v56[7]];
LABEL_25:
          swift_storeEnumTagMultiPayload();
          v17 = v87;
          break;
        case 8u:
          v89 = v15;
          v21 = sub_1DD0DD12C();
          (*(*(v21 - 8) + 32))(v97, v19, v21);
          v22 = type metadata accessor for NLRouterParse();
          *&v97[*(v22 + 20)] = *&v19[*(v22 + 20)];
          v82 = v22;
          v23 = *(v22 + 24);
          v84 = &v97[v23];
          v24 = &v19[v23];
          v25 = type metadata accessor for USOParse();
          v83 = v24;
          v26 = v24;
          v27 = v25;
          if (__swift_getEnumTagSinglePayload(v26, 1, v25))
          {
            v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(v84, v83, *(*(v28 - 8) + 64));
            v15 = v89;
          }

          else
          {
            v88 = v17;
            v46 = sub_1DD0DB4BC();
            (*(*(v46 - 8) + 32))(v84, v83, v46);
            v81 = v27;
            v47 = *(v27 + 20);
            v48 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v83[v47], 1, v48))
            {
              v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v84[v47], &v83[v47], *(*(v49 - 8) + 64));
            }

            else
            {
              (*(*(v48 - 8) + 32))(&v84[v47], &v83[v47], v48);
              __swift_storeEnumTagSinglePayload(&v84[v47], 0, 1, v48);
            }

            v15 = v89;
            *&v84[*(v81 + 24)] = *&v83[*(v81 + 24)];
            v57 = *(v81 + 28);
            v58 = &v84[v57];
            v59 = &v83[v57];
            v58[4] = v59[4];
            *v58 = *v59;
            __swift_storeEnumTagSinglePayload(v84, 0, 1, v81);
            v17 = v88;
          }

          *&v97[*(v82 + 28)] = *&v19[*(v82 + 28)];
          goto LABEL_29;
        case 9u:
          v31 = sub_1DD0DD08C();
          (*(*(v31 - 8) + 32))(v97, v19, v31);
LABEL_29:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(v97, v19, *(*(v93 - 8) + 64));
          break;
      }

      *&v15[v17[6]] = *&v16[v17[6]];
      v60 = v17[7];
      v61 = &v15[v60];
      v62 = &v16[v60];
      v63 = *(v62 + 1);
      *v61 = *v62;
      *(v61 + 1) = v63;
      *(v61 + 4) = *(v62 + 4);
      v15[v17[8]] = v16[v17[8]];
      *(v8 + v10[6]) = *(v9 + v10[6]);
      *(v8 + v10[7]) = *(v9 + v10[7]);
      *(v8 + v10[8]) = *(v9 + v10[8]);
      v64 = v10[9];
      v65 = (v8 + v64);
      v66 = (v9 + v64);
      v67 = type metadata accessor for ActionParaphrase(0);
      if (__swift_getEnumTagSinglePayload(v66, 1, v67))
      {
        v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B28, &unk_1DD0EE960);
        memcpy(v65, v66, *(*(v68 - 8) + 64));
      }

      else
      {
        *v65 = *v66;
        v69 = *(v67 + 20);
        v98 = (v65 + v69);
        v70 = (v66 + v69);
        v71 = type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0);
        if (__swift_getEnumTagSinglePayload(v70, 1, v71))
        {
          v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B20, &qword_1DD0F0B00);
          memcpy(v98, v70, *(*(v72 - 8) + 64));
        }

        else
        {
          v73 = v70[1];
          *v98 = *v70;
          v98[1] = v73;
          v94 = *(v71 + 24);
          v74 = sub_1DD0DB66C();
          (*(*(v74 - 8) + 32))(v98 + v94, v70 + v94, v74);
          __swift_storeEnumTagSinglePayload(v98, 0, 1, v71);
        }

        __swift_storeEnumTagSinglePayload(v65, 0, 1, v67);
      }

      v75 = v10[10];
      v6 = v96;
      if (__swift_getEnumTagSinglePayload(v9 + v75, 1, v95))
      {
        v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
        memcpy(v8 + v75, v9 + v75, *(*(v76 - 8) + 64));
      }

      else
      {
        (v92)(v8 + v75, v9 + v75, v95);
        __swift_storeEnumTagSinglePayload(v8 + v75, 0, 1, v95);
      }

      *(v8 + v10[11]) = *(v9 + v10[11]);
      __swift_storeEnumTagSinglePayload(v8, 0, 1, v10);
    }

    v77 = *(v6 + 40);
    v78 = (a1 + v77);
    v79 = (a2 + v77);
    v80 = v79[1];
    *v78 = *v79;
    v78[1] = v80;
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  else
  {
    v12 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v12);
  }
}

void *sub_1DCD5C854(void *a1, void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_1DCB4F3E0(a1, type metadata accessor for FlowToActingFlowAdapter.Event);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a1 = *a2;
    a1[1] = a2[1];
    *(a1 + 16) = *(a2 + 16);
    a1[3] = a2[3];
    *(a1 + 2) = *(a2 + 2);
    *(a1 + 48) = *(a2 + 48);
    v6 = type metadata accessor for ExecuteResponse(0);
    v7 = *(v6 + 36);
    v8 = (a1 + v7);
    v9 = (a2 + v7);
    v10 = type metadata accessor for PluginAction();
    if (__swift_getEnumTagSinglePayload(v9, 1, v10))
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4AD0, &qword_1DD0EDF38);
      memcpy(v8, v9, *(*(v11 - 8) + 64));
    }

    else
    {
      v96 = v6;
      *v8 = *v9;
      v14 = v10[5];
      v15 = v8 + v14;
      v16 = v9 + v14;
      v95 = sub_1DD0DB04C();
      v92 = *(*(v95 - 8) + 32);
      v92(v15, v16);
      v17 = type metadata accessor for Input(0);
      v18 = v17[5];
      v97 = &v15[v18];
      v19 = &v16[v18];
      v93 = type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v20 = sub_1DD0DC76C();
          (*(*(v20 - 8) + 32))(v97, v19, v20);
          goto LABEL_30;
        case 1u:
          v29 = sub_1DD0DC76C();
          (*(*(v29 - 8) + 32))(v97, v19, v29);
          v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *&v97[*(v30 + 48)] = *&v19[*(v30 + 48)];
          goto LABEL_30;
        case 4u:
          v32 = sub_1DD0DB1EC();
          (*(*(v32 - 8) + 32))(v97, v19, v32);
          goto LABEL_30;
        case 6u:
          v87 = v17;
          v33 = sub_1DD0DB4BC();
          (*(*(v33 - 8) + 32))(v97, v19, v33);
          v90 = type metadata accessor for USOParse();
          v34 = v90[5];
          v35 = sub_1DD0DB3EC();
          v85 = v34;
          v36 = &v19[v34];
          v37 = v35;
          if (__swift_getEnumTagSinglePayload(v36, 1, v35))
          {
            v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v97[v85], &v19[v85], *(*(v38 - 8) + 64));
          }

          else
          {
            (*(*(v37 - 8) + 32))(&v97[v85], &v19[v85], v37);
            __swift_storeEnumTagSinglePayload(&v97[v85], 0, 1, v37);
          }

          *&v97[v90[6]] = *&v19[v90[6]];
          v50 = v90[7];
          v51 = &v97[v50];
          v52 = &v19[v50];
          v51[4] = v52[4];
          *v51 = *v52;
          goto LABEL_26;
        case 7u:
          v87 = v17;
          v39 = sub_1DD0DB4BC();
          (*(*(v39 - 8) + 32))(v97, v19, v39);
          v91 = type metadata accessor for USOParse();
          v40 = v91[5];
          v41 = sub_1DD0DB3EC();
          v86 = v40;
          v42 = &v19[v40];
          v43 = v41;
          if (__swift_getEnumTagSinglePayload(v42, 1, v41))
          {
            v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            v45 = v97;
            memcpy(&v97[v86], &v19[v86], *(*(v44 - 8) + 64));
          }

          else
          {
            (*(*(v43 - 8) + 32))(&v97[v86], &v19[v86], v43);
            __swift_storeEnumTagSinglePayload(&v97[v86], 0, 1, v43);
            v45 = v97;
          }

          *&v45[v91[6]] = *&v19[v91[6]];
          v53 = v91[7];
          v54 = &v45[v53];
          v55 = &v19[v53];
          v54[4] = v55[4];
          *v54 = *v55;
          v56 = type metadata accessor for LinkParse();
          *&v45[v56[5]] = *&v19[v56[5]];
          *&v45[v56[6]] = *&v19[v56[6]];
          *&v45[v56[7]] = *&v19[v56[7]];
LABEL_26:
          swift_storeEnumTagMultiPayload();
          v17 = v87;
          break;
        case 8u:
          v89 = v15;
          v21 = sub_1DD0DD12C();
          (*(*(v21 - 8) + 32))(v97, v19, v21);
          v22 = type metadata accessor for NLRouterParse();
          *&v97[*(v22 + 20)] = *&v19[*(v22 + 20)];
          v82 = v22;
          v23 = *(v22 + 24);
          v84 = &v97[v23];
          v24 = &v19[v23];
          v25 = type metadata accessor for USOParse();
          v83 = v24;
          v26 = v24;
          v27 = v25;
          if (__swift_getEnumTagSinglePayload(v26, 1, v25))
          {
            v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(v84, v83, *(*(v28 - 8) + 64));
            v15 = v89;
          }

          else
          {
            v88 = v17;
            v46 = sub_1DD0DB4BC();
            (*(*(v46 - 8) + 32))(v84, v83, v46);
            v81 = v27;
            v47 = *(v27 + 20);
            v48 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v83[v47], 1, v48))
            {
              v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v84[v47], &v83[v47], *(*(v49 - 8) + 64));
            }

            else
            {
              (*(*(v48 - 8) + 32))(&v84[v47], &v83[v47], v48);
              __swift_storeEnumTagSinglePayload(&v84[v47], 0, 1, v48);
            }

            v15 = v89;
            *&v84[*(v81 + 24)] = *&v83[*(v81 + 24)];
            v57 = *(v81 + 28);
            v58 = &v84[v57];
            v59 = &v83[v57];
            v58[4] = v59[4];
            *v58 = *v59;
            __swift_storeEnumTagSinglePayload(v84, 0, 1, v81);
            v17 = v88;
          }

          *&v97[*(v82 + 28)] = *&v19[*(v82 + 28)];
          goto LABEL_30;
        case 9u:
          v31 = sub_1DD0DD08C();
          (*(*(v31 - 8) + 32))(v97, v19, v31);
LABEL_30:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(v97, v19, *(*(v93 - 8) + 64));
          break;
      }

      *&v15[v17[6]] = *&v16[v17[6]];
      v60 = v17[7];
      v61 = &v15[v60];
      v62 = &v16[v60];
      v63 = *(v62 + 1);
      *v61 = *v62;
      *(v61 + 1) = v63;
      *(v61 + 4) = *(v62 + 4);
      v15[v17[8]] = v16[v17[8]];
      *(v8 + v10[6]) = *(v9 + v10[6]);
      *(v8 + v10[7]) = *(v9 + v10[7]);
      *(v8 + v10[8]) = *(v9 + v10[8]);
      v64 = v10[9];
      v65 = (v8 + v64);
      v66 = (v9 + v64);
      v67 = type metadata accessor for ActionParaphrase(0);
      if (__swift_getEnumTagSinglePayload(v66, 1, v67))
      {
        v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B28, &unk_1DD0EE960);
        memcpy(v65, v66, *(*(v68 - 8) + 64));
      }

      else
      {
        *v65 = *v66;
        v69 = *(v67 + 20);
        v98 = (v65 + v69);
        v70 = (v66 + v69);
        v71 = type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0);
        if (__swift_getEnumTagSinglePayload(v70, 1, v71))
        {
          v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B20, &qword_1DD0F0B00);
          memcpy(v98, v70, *(*(v72 - 8) + 64));
        }

        else
        {
          v73 = v70[1];
          *v98 = *v70;
          v98[1] = v73;
          v94 = *(v71 + 24);
          v74 = sub_1DD0DB66C();
          (*(*(v74 - 8) + 32))(v98 + v94, v70 + v94, v74);
          __swift_storeEnumTagSinglePayload(v98, 0, 1, v71);
        }

        __swift_storeEnumTagSinglePayload(v65, 0, 1, v67);
      }

      v75 = v10[10];
      v6 = v96;
      if (__swift_getEnumTagSinglePayload(v9 + v75, 1, v95))
      {
        v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
        memcpy(v8 + v75, v9 + v75, *(*(v76 - 8) + 64));
      }

      else
      {
        (v92)(v8 + v75, v9 + v75, v95);
        __swift_storeEnumTagSinglePayload(v8 + v75, 0, 1, v95);
      }

      *(v8 + v10[11]) = *(v9 + v10[11]);
      __swift_storeEnumTagSinglePayload(v8, 0, 1, v10);
    }

    v77 = *(v6 + 40);
    v78 = (a1 + v77);
    v79 = (a2 + v77);
    v80 = v79[1];
    *v78 = *v79;
    v78[1] = v80;
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v12 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v12);
}

uint64_t sub_1DCD5D39C()
{
  result = type metadata accessor for ExecuteResponse(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t FlowToFlowFrameAdapter.namespace.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_33_1();
}

uint64_t FlowToFlowFrameAdapter.debugDescription.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_33_1();
}

uint64_t sub_1DCD5D500@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_15_36();
  swift_beginAccess();
  v4 = *(v2 + 80);
  v5 = type metadata accessor for FlowToFlowFrameAdapter.State();
  OUTLINED_FUNCTION_2(v5);
  return (*(v6 + 16))(a1, v1);
}

uint64_t sub_1DCD5D588(uint64_t a1)
{
  OUTLINED_FUNCTION_15_36();
  swift_beginAccess();
  v4 = *(v2 + 80);
  v5 = type metadata accessor for FlowToFlowFrameAdapter.State();
  OUTLINED_FUNCTION_2(v5);
  (*(v6 + 40))(v1, a1);
  return swift_endAccess();
}

void FlowToFlowFrameAdapter.init<A>(_:)()
{
  OUTLINED_FUNCTION_50();
  v2 = v1;
  v4 = v3;
  v5 = *(v1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3, v1);
  OUTLINED_FUNCTION_10_2();
  v9 = (v7 - v8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v0[2] = 6841202;
  v0[3] = 0xE300000000000000;
  v12 = *(v5 + 16);
  v12(&DynamicType - v13, v4, v2);
  type metadata accessor for AnyFlow();
  if (swift_dynamicCast())
  {
    v0[6] = v18;
    v18 = 0;
    v19 = 0xE000000000000000;
    sub_1DD0DCF8C();
  }

  v12(v9, v4, v2);
  v0[6] = sub_1DCB4BF14();
  v18 = 0;
  v19 = 0xE000000000000000;
  sub_1DD0DEC1C();

  v18 = 0xD000000000000017;
  v19 = 0x80000001DD11A870;
  DynamicType = swift_getDynamicType();
  swift_getMetatypeMetadata();
  v14 = sub_1DD0DE02C();
  MEMORY[0x1E12A6780](v14);

  MEMORY[0x1E12A6780](93, 0xE100000000000000);
  v15 = v19;
  v0[4] = v18;
  v0[5] = v15;
  v16 = v0[6];
  sub_1DD0DCF8C();
}

void sub_1DCD5D8CC()
{
  OUTLINED_FUNCTION_50();
  v2 = v1;
  v50 = v3;
  v51 = v4;
  v5 = *v0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v7 = OUTLINED_FUNCTION_20_0(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  OUTLINED_FUNCTION_10_2();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v49 - v16;
  v18 = type metadata accessor for SiriKitFlowFrameInput();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18 - 8, v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  v23 = OUTLINED_FUNCTION_20_0(v22);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23, v26);
  v28 = &v49 - v27;
  sub_1DCD5D500(v52);
  v29 = v52[3];
  v30 = *(v5 + 80);
  v31 = type metadata accessor for FlowToFlowFrameAdapter.State();
  OUTLINED_FUNCTION_13_1(v31);
  (*(v32 + 8))(v52);
  if (v29)
  {
    v33 = sub_1DD0DE4BC();
    __swift_storeEnumTagSinglePayload(v28, 1, 1, v33);
    sub_1DCD5FC20(v50, &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SiriKitFlowFrameInput);
    v34 = (*(v19 + 80) + 40) & ~*(v19 + 80);
    v35 = (v20 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
    v36 = swift_allocObject();
    v36[2] = 0;
    v36[3] = 0;
    v36[4] = v30;
    sub_1DCD5FB48(&v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v36 + v34, type metadata accessor for SiriKitFlowFrameInput);
    *(v36 + v35) = v0;
    v37 = (v36 + ((v35 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v37 = v51;
    v37[1] = v2;
    sub_1DD0DCF8C();
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v38 = sub_1DD0DD8FC();
  v39 = __swift_project_value_buffer(v38, qword_1EDE57E00);
  v40 = *(v38 - 8);
  (*(v40 + 16))(v17, v39, v38);
  OUTLINED_FUNCTION_40_1();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v38);
  sub_1DCBCF6C8(v17, v13);
  if (__swift_getEnumTagSinglePayload(v13, 1, v38) == 1)
  {
    sub_1DCB16DB0(v13, &unk_1ECCA7470, &qword_1DD0E16E0);
  }

  else
  {
    v44 = sub_1DD0DD8EC();
    v45 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_75(v45))
    {
      OUTLINED_FUNCTION_83();
      v52[0] = OUTLINED_FUNCTION_54();
      MEMORY[0] = 136315650;
      v46 = OUTLINED_FUNCTION_23_17();
      sub_1DCB10E9C(v46, v47, v52);
      OUTLINED_FUNCTION_96_1();

      MEMORY[4] = v28;
      MEMORY[0xC] = 2048;
      OUTLINED_FUNCTION_5_48(50);
      MEMORY[0x18] = sub_1DCB10E9C(0xD00000000000003FLL, 0x80000001DD11AE10, v52);
      OUTLINED_FUNCTION_12_34(&dword_1DCAFC000, v48, v45, "FatalError at %s:%lu - %s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();
    }

    (*(v40 + 8))(v13, v38);
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)(0xD00000000000003FLL, 0x80000001DD11AE10);
}

uint64_t sub_1DCD5DD70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[19] = a6;
  v7[20] = a7;
  v7[17] = a4;
  v7[18] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA9BE0, &qword_1DD0E9590);
  v7[21] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v7[22] = swift_task_alloc();
  v10 = sub_1DD0DB34C();
  v7[23] = v10;
  v11 = *(v10 - 8);
  v7[24] = v11;
  v12 = *(v11 + 64) + 15;
  v7[25] = swift_task_alloc();
  v13 = *(*(type metadata accessor for Parse(0) - 8) + 64) + 15;
  v7[26] = swift_task_alloc();
  v14 = type metadata accessor for Input(0);
  v7[27] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v7[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCD5DECC, 0, 0);
}

uint64_t sub_1DCD5DECC()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[26];
  v4 = v0[17];
  v5 = v0[18];
  sub_1DCD5FC20(v4, v3, type metadata accessor for Parse);
  v6 = v1 + v2[7];
  *(v6 + 32) = 0;
  *v6 = 0u;
  *(v6 + 16) = 0u;
  sub_1DCD5FC20(v3, v1 + v2[5], type metadata accessor for Parse);
  *(v1 + v2[6]) = MEMORY[0x1E69E7CC0];
  sub_1DD0DB03C();
  sub_1DCB2858C(v3, type metadata accessor for Parse);
  *(v1 + v2[8]) = 0;
  sub_1DCB16DB0(v6, &qword_1ECCA4988, &qword_1DD100F00);
  v7 = type metadata accessor for SiriKitFlowFrameInput();
  sub_1DCB17D04(v4 + *(v7 + 28), v6);
  v0[29] = *(v5 + 48);
  v8 = swift_task_alloc();
  v0[30] = v8;
  *v8 = v0;
  v8[1] = sub_1DCD5E044;
  v9 = v0[28];

  return sub_1DCB71FBC(v9);
}

uint64_t sub_1DCD5E044(char a1)
{
  v2 = *(*v1 + 240);
  v4 = *v1;
  *(*v1 + 248) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1DCD5E144, 0, 0);
}

uint64_t sub_1DCD5E144()
{
  v15 = v0;
  v1 = *(v0 + 232);
  if (*(v0 + 248))
  {
    v2 = MEMORY[0x1E699F740];
  }

  else
  {
    v2 = MEMORY[0x1E699F738];
  }

  (*(*(v0 + 192) + 104))(*(v0 + 200), *v2, *(v0 + 184));
  sub_1DCB4E598(v0 + 56);
  v3 = *(v0 + 144);
  if (*(v0 + 80))
  {
    sub_1DCB18FF0((v0 + 56), v0 + 16);
    sub_1DCB17D04(v0 + 16, v0 + 96);
    sub_1DCD5D588(v0 + 96);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  else
  {
    sub_1DCB16DB0(v0 + 56, &qword_1ECCA4DF0, &qword_1DD0F0CB0);
    memset(v13, 0, sizeof(v13));
    v14 = xmmword_1DD0E5100;
    sub_1DCD5D588(v13);
  }

  v4 = *(v0 + 224);
  v5 = *(v0 + 200);
  v6 = *(v0 + 184);
  v7 = *(v0 + 192);
  v8 = *(v0 + 176);
  v10 = *(v0 + 152);
  v9 = *(v0 + 160);
  (*(v7 + 16))(v8, v5, v6);
  swift_storeEnumTagMultiPayload();
  v10(v8);
  sub_1DCB16DB0(v8, &unk_1ECCA9BE0, &qword_1DD0E9590);
  (*(v7 + 8))(v5, v6);
  sub_1DCB2858C(v4, type metadata accessor for Input);

  v11 = *(v0 + 8);

  return v11();
}

void sub_1DCD5E32C()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v5 = OUTLINED_FUNCTION_20_0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  OUTLINED_FUNCTION_10_2();
  v11 = v9 - v10;
  v14 = MEMORY[0x1EEE9AC00](v12, v13);
  v16 = v51 - v15;
  v18 = MEMORY[0x1EEE9AC00](v14, v17);
  v20 = v51 - v19;
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = v51 - v22;
  sub_1DCD5D500(&v52);
  if (v53 == 1)
  {
    OUTLINED_FUNCTION_49();

    sub_1DCD5EDE0(v24, v25);
  }

  if (v53)
  {
    if (v53 != 2)
    {
      sub_1DCB18FF0(&v52, v51);
      sub_1DCD5E910(v51, v3, v1);
    }

    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v33 = sub_1DD0DD8FC();
    v34 = __swift_project_value_buffer(v33, qword_1EDE57E00);
    v35 = *(v33 - 8);
    (*(v35 + 16))(v16, v34, v33);
    OUTLINED_FUNCTION_40_1();
    __swift_storeEnumTagSinglePayload(v36, v37, v38, v33);
    sub_1DCBCF6C8(v16, v11);
    if (__swift_getEnumTagSinglePayload(v11, 1, v33) == 1)
    {
      sub_1DCB16DB0(v11, &unk_1ECCA7470, &qword_1DD0E16E0);
    }

    else
    {
      v45 = sub_1DD0DD8EC();
      v46 = sub_1DD0DE6EC();
      if (OUTLINED_FUNCTION_75(v46))
      {
        OUTLINED_FUNCTION_83();
        v51[0] = OUTLINED_FUNCTION_54();
        *v16 = 136315650;
        v47 = OUTLINED_FUNCTION_23_17();
        v49 = sub_1DCB10E9C(v47, v48, v51);

        *(v16 + 4) = v49;
        *(v16 + 6) = 2048;
        OUTLINED_FUNCTION_5_48(88);
        *(v16 + 3) = sub_1DCB10E9C(0xD00000000000003ALL, 0x80000001DD11AEC0, v51);
        OUTLINED_FUNCTION_12_34(&dword_1DCAFC000, v50, v46, "FatalError at %s:%lu - %s");
        swift_arrayDestroy();
        OUTLINED_FUNCTION_80();
        OUTLINED_FUNCTION_80();
      }

      (*(v35 + 8))(v11, v33);
    }

    static SiriKitLifecycle._logCrashToEventBus(_:)(0xD00000000000003ALL, 0x80000001DD11AEC0);
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v27 = sub_1DD0DD8FC();
  v28 = __swift_project_value_buffer(v27, qword_1EDE57E00);
  v29 = *(v27 - 8);
  (*(v29 + 16))(v23, v28, v27);
  OUTLINED_FUNCTION_40_1();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v27);
  sub_1DCBCF6C8(v23, v20);
  if (__swift_getEnumTagSinglePayload(v20, 1, v27) == 1)
  {
    sub_1DCB16DB0(v20, &unk_1ECCA7470, &qword_1DD0E16E0);
  }

  else
  {
    v39 = sub_1DD0DD8EC();
    v40 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_75(v40))
    {
      OUTLINED_FUNCTION_83();
      v51[0] = OUTLINED_FUNCTION_54();
      *v16 = 136315650;
      v41 = OUTLINED_FUNCTION_23_17();
      v43 = sub_1DCB10E9C(v41, v42, v51);

      *(v16 + 4) = v43;
      *(v16 + 6) = 2048;
      OUTLINED_FUNCTION_5_48(86);
      *(v16 + 3) = sub_1DCB10E9C(0xD000000000000040, 0x80000001DD11AF00, v51);
      OUTLINED_FUNCTION_12_34(&dword_1DCAFC000, v44, v40, "FatalError at %s:%lu - %s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();
    }

    (*(v29 + 8))(v20, v27);
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)(0xD000000000000040, 0x80000001DD11AF00);
}

uint64_t sub_1DCD5E894()
{
  v1 = *v0;
  v2 = v0[6];
  v3 = *(v2 + 120);
  (*(v2 + 112))(v6);
  v4 = *(v1 + 80);
  return swift_dynamicCast();
}

void sub_1DCD5E910(void *a1, uint64_t a2, uint64_t a3)
{
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  sub_1DCD5D588(v10);
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DCB17D04(a1, v10);
  v8 = swift_allocObject();
  v8[2] = v3;
  sub_1DCB18FF0(v10, (v8 + 3));
  v8[8] = a2;
  v8[9] = a3;
  v9 = *(v7 + 8);
  sub_1DD0DCF8C();
}

void sub_1DCD5EA08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26[1] = a5;
  v26[2] = a4;
  v26[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BF0, &qword_1DD0EA250);
  v7 = *(*(v26[0] - 8) + 64);
  MEMORY[0x1EEE9AC00](v26[0], v8);
  v9 = sub_1DD0DB2DC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x1EEE9AC00](v9, v12);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = v26 - v17;
  v19 = *(a1 + 8);
  v20 = *(a1 + 24);
  if (*a1)
  {
    (*(v10 + 104))(v26 - v17, *MEMORY[0x1E699F728], v9);
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v21 = xmmword_1DD0F0D60;
  }

  else
  {
    v22 = *(a1 + 16);
    (*(v10 + 104))(v26 - v17, *MEMORY[0x1E699F720], v9);
    if (v22 != 1)
    {
      sub_1DCB17D04(a3, &v27);
LABEL_7:
      sub_1DCD5D588(&v27);
      if (v19)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4DD8, &qword_1DD0EFED0);
        swift_allocObject();
        swift_retain_n();
        sub_1DCD3F130();
      }

      (*(v10 + 16))(v15, v18, v9);
      if (v20)
      {
        v23 = sub_1DD0DB35C();
        v24 = *(v23 + 48);
        v25 = *(v23 + 52);
        swift_allocObject();
        sub_1DD0DCF8C();
      }

      type metadata accessor for SiriKitFlowFrameInput();
      sub_1DD0DCF8C();
    }

    v27 = 0;
    v28 = 0;
    v29 = 0;
    v21 = xmmword_1DD0E5100;
  }

  v30 = v21;
  goto LABEL_7;
}

uint64_t sub_1DCD5ED84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DCB0DF6C(a2, v6);
  v4 = *(a3 + 24);
  (*(a3 + 16))(v6);
  return sub_1DCB16DB0(v6, &dword_1ECCA3CE0, &unk_1DD0E4F80);
}

void sub_1DCD5EDE0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD5EE64(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v31 = a3;
  v32 = a2;
  v4 = type metadata accessor for ExecuteResponse(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v7);
  v8 = sub_1DD0DB2DC();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BF0, &qword_1DD0EA250);
  v12 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v23 = &v31 - v22;
  if (*(a1 + 8))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4DD8, &qword_1DD0EFED0);
    swift_allocObject();
    swift_retain_n();
    sub_1DCD3F130();
  }

  HIBYTE(v34) = *a1;
  sub_1DCD5F17C(v14, v15, v16, v17, v18, v19, v20, v21, v31, v32, v33, v34);
  sub_1DCD5FC20(a1, &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ExecuteResponse);
  v24 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v25 = swift_allocObject();
  sub_1DCD5FB48(&v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24, type metadata accessor for ExecuteResponse);
  v26 = sub_1DD0DB35C();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  sub_1DD0DB36C();
  v29 = *(a1 + 16);
  type metadata accessor for SiriKitFlowFrameInput();
  sub_1DD0DB2EC();
  swift_storeEnumTagMultiPayload();
  v32(v23);

  return sub_1DCB16DB0(v23, &qword_1ECCA9BF0, &qword_1DD0EA250);
}

uint64_t sub_1DCD5F17C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_50();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v15 = OUTLINED_FUNCTION_20_0(v14);
  v17 = *(v16 + 64);
  v19 = MEMORY[0x1EEE9AC00](v15, v18);
  MEMORY[0x1EEE9AC00](v19, v20);
  v23 = &v50 - v22;
  v24 = MEMORY[0x1E699F720];
  switch(*v12)
  {
    case 1:
      v24 = MEMORY[0x1E699F728];
      break;
    case 2:
      v24 = MEMORY[0x1E699F718];
      break;
    case 3:
      v50 = v21;
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v38 = sub_1DD0DD8FC();
      v39 = __swift_project_value_buffer(v38, qword_1EDE57E00);
      v40 = *(v38 - 8);
      (*(v40 + 16))(v23, v39, v38);
      OUTLINED_FUNCTION_40_1();
      __swift_storeEnumTagSinglePayload(v41, v42, v43, v38);
      v44 = v50;
      sub_1DCBCF6C8(v23, v50);
      if (__swift_getEnumTagSinglePayload(v44, 1, v38) == 1)
      {
        sub_1DCB16DB0(v50, &unk_1ECCA7470, &qword_1DD0E16E0);
      }

      else
      {
        v45 = sub_1DD0DD8EC();
        v46 = sub_1DD0DE6EC();
        if (OUTLINED_FUNCTION_75(v46))
        {
          v47 = OUTLINED_FUNCTION_83();
          v51 = swift_slowAlloc();
          *v47 = 136315650;
          v48 = OUTLINED_FUNCTION_23_17();
          sub_1DCB10E9C(v48, v49, &v51);
          OUTLINED_FUNCTION_96_1();

          *(v47 + 4) = v13;
          *(v47 + 12) = 2048;
          *(v47 + 14) = 174;
          *(v47 + 22) = 2080;
          *(v47 + 24) = sub_1DCB10E9C(0xD000000000000057, 0x80000001DD11AF50, &v51);
          _os_log_impl(&dword_1DCAFC000, v45, v46, "FatalError at %s:%lu - %s", v47, 0x20u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_80();
          OUTLINED_FUNCTION_80();
        }

        (*(v40 + 8))(v50, v38);
      }

      static SiriKitLifecycle._logCrashToEventBus(_:)(0xD000000000000057, 0x80000001DD11AF50);
    default:
      break;
  }

  v25 = *v24;
  v26 = sub_1DD0DB2DC();
  OUTLINED_FUNCTION_2(v26);
  v28 = *(v27 + 104);
  OUTLINED_FUNCTION_49();

  return v32(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12);
}

uint64_t sub_1DCD5F4D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 24);
  if (v3)
  {
    sub_1DCB0DF6C(a2, v6);
    v4 = *(v3 + 24);
    (*(v3 + 16))(v6);
    return sub_1DCB16DB0(v6, &dword_1ECCA3CE0, &unk_1DD0E4F80);
  }

  return result;
}

uint64_t *FlowToFlowFrameAdapter.deinit()
{
  v1 = *v0;
  v2 = v0[3];

  v3 = v0[5];

  v4 = v0[6];

  v5 = *(v1 + 80);
  v6 = type metadata accessor for FlowToFlowFrameAdapter.State();
  OUTLINED_FUNCTION_13_1(v6);
  (*(v7 + 8))(v0 + 7);
  return v0;
}

uint64_t FlowToFlowFrameAdapter.__deallocating_deinit()
{
  FlowToFlowFrameAdapter.deinit();

  return swift_deallocClassInstance();
}

void sub_1DCD5F654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD5F73C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for SiriKitFlowFrameInput() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v7);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v8);
  v13 = *(v1 + v8 + 8);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1DCB193FC;

  return sub_1DCD5DD70(a1, v10, v11, v1 + v6, v9, v12, v13);
}

uint64_t sub_1DCD5F880(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t *sub_1DCD5F9EC(uint64_t *a1)
{
  if (a1[3] >= 0xFFFFFFFF)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return a1;
}

uint64_t sub_1DCD5FA04(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 40))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DCD5FA60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_1DCD5FADC()
{
  result = qword_1ECCA4DE0;
  if (!qword_1ECCA4DE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA4DD8, &qword_1DD0EFED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4DE0);
  }

  return result;
}

uint64_t sub_1DCD5FB48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_2(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_33_1();
  v8(v7);
  return a2;
}

uint64_t sub_1DCD5FBA4(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for ExecuteResponse(0);
  OUTLINED_FUNCTION_20_0(v5);
  v7 = v2 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return sub_1DCD5F4D8(a1, a2, v7);
}

uint64_t sub_1DCD5FC20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_2(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_33_1();
  v8(v7);
  return a2;
}

uint64_t static FlowTrace.trace(event:)(uint64_t a1)
{
  if (qword_1EDE4AD90 != -1)
  {
    OUTLINED_FUNCTION_6_41();
  }

  result = swift_beginAccess();
  v3 = qword_1EDE57D88;
  v4 = *(qword_1EDE57D88 + 16);
  if (v4)
  {

    v5 = (v3 + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;
      ObjectType = swift_getObjectType();
      v9 = *(v7 + 16);
      swift_unknownObjectRetain();
      v9(a1, ObjectType, v7);
      swift_unknownObjectRelease();
      v5 += 2;
      --v4;
    }

    while (v4);
  }

  return result;
}

Swift::Void __swiftcall FlowTracing.activate()()
{
  v3 = v1;
  v4 = v0;
  if (qword_1EDE4AD90 != -1)
  {
    OUTLINED_FUNCTION_6_41();
  }

  swift_beginAccess();
  swift_unknownObjectRetain();
  sub_1DCD4B804();
  v5 = *(qword_1EDE57D88 + 16);
  sub_1DCBBF714(v5);
  v6 = qword_1EDE57D88;
  *(qword_1EDE57D88 + 16) = v5 + 1;
  v7 = v6 + 16 * v5;
  *(v7 + 32) = v2;
  *(v7 + 40) = v3;
  swift_endAccess();
  (*(v3 + 8))(v4, v3);
}

Swift::Void __swiftcall FlowTracing.deactivate()()
{
  v3 = v1;
  v4 = v0;
  if (qword_1EDE4AD90 != -1)
  {
    v0 = OUTLINED_FUNCTION_6_41();
  }

  MEMORY[0x1EEE9AC00](v0, v1);
  v7[2] = v4;
  v7[3] = v3;
  v7[4] = v2;
  swift_beginAccess();
  v5 = sub_1DCD5FF88(sub_1DCD60404, v7);
  v6 = *(qword_1EDE57D88 + 16);
  if (v6 < v5)
  {
    __break(1u);
    swift_endAccess();
    __break(1u);
  }

  else
  {
    sub_1DCD601F4(v5, v6);
    swift_endAccess();
    (*(v3 + 24))(v4, v3);
  }
}

uint64_t sub_1DCD5FF88(uint64_t (*a1)(__int128 *), uint64_t a2)
{
  v6 = *v2;
  result = sub_1DCC3EE8C(a1, a2, *v2);
  if (v3)
  {
    return v4;
  }

  if (v8)
  {
    return *(v6 + 16);
  }

  v4 = result;
  v21 = v2;
  v9 = result + 1;
  if (!__OFADD__(result, 1))
  {
    for (i = 16 * result + 48; ; i += 16)
    {
      v11 = *(v6 + 16);
      if (v9 == v11)
      {
        break;
      }

      if (v9 >= v11)
      {
        __break(1u);
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

      v20 = *(v6 + i);
      swift_unknownObjectRetain();
      v12 = a1(&v20);
      result = swift_unknownObjectRelease();
      if ((v12 & 1) == 0)
      {
        if (v9 != v4)
        {
          if ((v4 & 0x8000000000000000) != 0)
          {
            goto LABEL_21;
          }

          v13 = *(v6 + 16);
          if (v4 >= v13)
          {
            goto LABEL_22;
          }

          if (v9 >= v13)
          {
            goto LABEL_23;
          }

          v18 = *(v6 + 32 + 16 * v4);
          v19 = *(v6 + i);
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1DCF34438(v6);
            v6 = v17;
          }

          v14 = v6 + 16 * v4;
          v15 = *(v14 + 32);
          *(v14 + 32) = v19;
          result = swift_unknownObjectRelease();
          if (v9 >= *(v6 + 16))
          {
            goto LABEL_24;
          }

          v16 = *(v6 + i);
          *(v6 + i) = v18;
          result = swift_unknownObjectRelease();
          *v21 = v6;
        }

        ++v4;
      }

      ++v9;
    }

    return v4;
  }

LABEL_25:
  __break(1u);
  return result;
}

void sub_1DCD60124(uint64_t a1)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_1_57();
  if (v5 != v6)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = v3;
  v8 = v1 - v3;
  if (__OFSUB__(v1, v3))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = v3 - v1;
  if (__OFSUB__(0, v8))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__OFADD__(v4, v9))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1DCD3F71C(v4 - v8, 1);
  v10 = *v2;
  v11 = *v2 + 32;
  v12 = (v11 + 16 * v7);
  swift_arrayDestroy();
  if (!v8)
  {
LABEL_10:
    *v2 = v10;
    return;
  }

  v13 = *(v10 + 16);
  if (__OFSUB__(v13, v1))
  {
    goto LABEL_16;
  }

  sub_1DCB341E4((v11 + 16 * v1), v13 - v1, v12);
  v14 = *(v10 + 16);
  v6 = __OFADD__(v14, v9);
  v15 = v14 - v8;
  if (!v6)
  {
    *(v10 + 16) = v15;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_1DCD601F4(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1DCD3F82C(result, 1);
  v8 = *v2;
  v9 = *v2 + 32;
  v10 = (v9 + 16 * v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5168, &qword_1DD0F0FD0);
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v11 = *(v8 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_16;
  }

  result = sub_1DCB341E4((v9 + 16 * a2), v11 - a2, v10);
  v12 = *(v8 + 16);
  v13 = __OFADD__(v12, v7);
  v14 = v12 - v6;
  if (!v13)
  {
    *(v8 + 16) = v14;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_1DCD602E0(uint64_t a1)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_1_57();
  if (v5 != v6)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = v3;
  v8 = v1 - v3;
  if (__OFSUB__(v1, v3))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = v3 - v1;
  if (__OFSUB__(0, v8))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__OFADD__(v4, v9))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1DCD3F844(v4 - v8, 1);
  v10 = *v2;
  v11 = *(type metadata accessor for SnippetManager.SnippetRecord(0) - 8);
  v12 = v10 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v13 = *(v11 + 72);
  v14 = v12 + v13 * v7;
  swift_arrayDestroy();
  if (!v8)
  {
LABEL_10:
    *v2 = v10;
    return;
  }

  v15 = *(v10 + 16);
  if (__OFSUB__(v15, v1))
  {
    goto LABEL_16;
  }

  sub_1DCD3F618(v12 + v13 * v1, v15 - v1, v14);
  v16 = *(v10 + 16);
  v6 = __OFADD__(v16, v9);
  v17 = v16 - v8;
  if (!v6)
  {
    *(v10 + 16) = v17;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
}

uint64_t initializeBufferWithCopyOfBuffer for FlowTraceEvent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(*(a3 - 8) + 80) & 0x20000) != 0)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      *a1 = *a2;
      sub_1DD0DCF8C();
    case 2u:
      *a1 = *a2;
      sub_1DD0DCF8C();
    case 3u:
      *a1 = *a2;
      sub_1DD0DCF8C();
    case 4u:
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 32) = *(a2 + 32);
      sub_1DD0DCF8C();
    case 5u:
      *a1 = *a2;
      v17 = *(a2 + 32);
      *(a1 + 32) = v17;
      v18 = **(v17 - 8);
      sub_1DD0DCF8C();
    case 6u:
    case 7u:
    case 0xBu:
    case 0xCu:
      v21 = *(a2 + 24);
      *(a1 + 24) = v21;
      (**(v21 - 8))(a1, a2);
      break;
    case 8u:
      v24 = *(a2 + 24);
      *(a1 + 24) = v24;
      (**(v24 - 8))(a1, a2);
      v25 = *(a2 + 64);
      *(a1 + 64) = v25;
      (**(v25 - 8))(a1 + 40, a2 + 40);
      break;
    case 9u:
      v5 = *(a2 + 24);
      *(a1 + 24) = v5;
      (**(v5 - 8))(a1, a2);
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5160, &qword_1DD0F0EE8);
      v7 = *(v6 + 48);
      v8 = a1 + v7;
      v9 = a2 + v7;
      v10 = sub_1DD0DB04C();
      (*(*(v10 - 8) + 16))(v8, v9, v10);
      v11 = type metadata accessor for Input(0);
      v12 = v11[5];
      v13 = (v8 + v12);
      v14 = (v9 + v12);
      v15 = type metadata accessor for Parse(0);
      v114 = v6;
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v16 = sub_1DD0DC76C();
          (*(*(v16 - 8) + 16))(v13, v14, v16);
          goto LABEL_38;
        case 1u:
          v33 = sub_1DD0DC76C();
          (*(*(v33 - 8) + 16))(v13, v14, v33);
          v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *&v13[*(v34 + 48)] = *&v14[*(v34 + 48)];
          sub_1DD0DCF8C();
        case 2u:
          v28 = *(v14 + 1);
          *v13 = *v14;
          *(v13 + 1) = v28;
          *(v13 + 2) = *(v14 + 2);

          goto LABEL_38;
        case 3u:
          *v13 = *v14;
          swift_unknownObjectRetain();
          goto LABEL_38;
        case 4u:
          v26 = sub_1DD0DB1EC();
          (*(*(v26 - 8) + 16))(v13, v14, v26);
          goto LABEL_38;
        case 5u:
          v35 = *v14;
          *v13 = *v14;
          v36 = v35;
          goto LABEL_38;
        case 6u:
          v37 = sub_1DD0DB4BC();
          (*(*(v37 - 8) + 16))(v13, v14, v37);
          v112 = type metadata accessor for USOParse();
          v38 = v112[5];
          v39 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v14[v38], 1, v39))
          {
            v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v13[v38], &v14[v38], *(*(v40 - 8) + 64));
          }

          else
          {
            (*(*(v39 - 8) + 16))(&v13[v38], &v14[v38], v39);
            __swift_storeEnumTagSinglePayload(&v13[v38], 0, 1, v39);
          }

          v71 = v112[6];
          v72 = &v13[v71];
          v73 = &v14[v71];
          v74 = *(v73 + 1);
          *v72 = *v73;
          *(v72 + 1) = v74;
          v75 = v112[7];
          v76 = &v13[v75];
          v77 = &v14[v75];
          v76[4] = v77[4];
          *v76 = *v77;

          goto LABEL_38;
        case 7u:
          v29 = sub_1DD0DB4BC();
          (*(*(v29 - 8) + 16))(v13, v14, v29);
          v111 = type metadata accessor for USOParse();
          v30 = v111[5];
          v31 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v14[v30], 1, v31))
          {
            v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v13[v30], &v14[v30], *(*(v32 - 8) + 64));
          }

          else
          {
            (*(*(v31 - 8) + 16))(&v13[v30], &v14[v30], v31);
            __swift_storeEnumTagSinglePayload(&v13[v30], 0, 1, v31);
          }

          v52 = v111[6];
          v53 = &v13[v52];
          v54 = &v14[v52];
          v110 = *(v54 + 1);
          *v53 = *v54;
          *(v53 + 1) = v110;
          v55 = v111[7];
          v56 = &v13[v55];
          v57 = &v14[v55];
          v56[4] = v57[4];
          *v56 = *v57;
          v58 = type metadata accessor for LinkParse();
          v59 = v58[5];
          v60 = &v13[v59];
          v61 = &v14[v59];
          v62 = *(v61 + 1);
          *v60 = *v61;
          *(v60 + 1) = v62;
          v63 = v58[6];
          v64 = &v13[v63];
          v65 = &v14[v63];
          v66 = *(v65 + 1);
          *v64 = *v65;
          *(v64 + 1) = v66;
          v67 = v58[7];
          v68 = &v13[v67];
          v69 = &v14[v67];
          v70 = *(v69 + 1);
          *v68 = *v69;
          *(v68 + 1) = v70;

          goto LABEL_38;
        case 8u:
          v107 = v11;
          v41 = sub_1DD0DD12C();
          (*(*(v41 - 8) + 16))(v13, v14, v41);
          v42 = type metadata accessor for NLRouterParse();
          v43 = *(v42 + 20);
          v44 = &v13[v43];
          v45 = &v14[v43];
          v46 = *(v45 + 1);
          *v44 = *v45;
          *(v44 + 1) = v46;
          v108 = v42;
          v47 = *(v42 + 24);
          v113 = &v13[v47];
          v48 = &v14[v47];
          v49 = type metadata accessor for USOParse();

          v109 = v48;
          if (__swift_getEnumTagSinglePayload(v48, 1, v49))
          {
            v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(v113, v48, *(*(v50 - 8) + 64));
            v11 = v107;
            v51 = v108;
          }

          else
          {
            v78 = sub_1DD0DB4BC();
            (*(*(v78 - 8) + 16))(v113, v48, v78);
            v106 = v49;
            v79 = *(v49 + 20);
            v80 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v48[v79], 1, v80))
            {
              v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v113[v79], &v48[v79], *(*(v81 - 8) + 64));
            }

            else
            {
              (*(*(v80 - 8) + 16))(&v113[v79], &v48[v79], v80);
              __swift_storeEnumTagSinglePayload(&v113[v79], 0, 1, v80);
            }

            v11 = v107;
            v51 = v108;
            v82 = *(v106 + 24);
            v83 = &v113[v82];
            v84 = &v109[v82];
            v85 = *(v84 + 1);
            *v83 = *v84;
            *(v83 + 1) = v85;
            v86 = *(v106 + 28);
            v87 = &v113[v86];
            v88 = &v109[v86];
            v87[4] = v88[4];
            *v87 = *v88;

            __swift_storeEnumTagSinglePayload(v113, 0, 1, v106);
          }

          v89 = *(v51 + 28);
          v90 = *&v14[v89];
          *&v13[v89] = v90;
          v91 = v90;
          goto LABEL_38;
        case 9u:
          v27 = sub_1DD0DD08C();
          (*(*(v27 - 8) + 16))(v13, v14, v27);
LABEL_38:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(v13, v14, *(*(v15 - 8) + 64));
          break;
      }

      *(v8 + v11[6]) = *(v9 + v11[6]);
      v92 = v11[7];
      v93 = v8 + v92;
      v94 = v9 + v92;
      v95 = *(v9 + v92 + 24);

      if (v95)
      {
        v96 = *(v94 + 32);
        *(v93 + 24) = v95;
        *(v93 + 32) = v96;
        (**(v95 - 8))(v93, v94, v95);
      }

      else
      {
        v97 = *(v94 + 16);
        *v93 = *v94;
        *(v93 + 16) = v97;
        *(v93 + 32) = *(v94 + 32);
      }

      *(v8 + v11[8]) = *(v9 + v11[8]);
      v98 = *(v114 + 64);
      v99 = a1 + v98;
      v100 = (a2 + v98);
      v101 = *(a2 + v98 + 40);
      if (v101 == 1)
      {
        v103 = *(v100 + 24);
        *(v99 + 24) = v103;
        (**(v103 - 8))(v99);
        *(v99 + 40) = 1;
      }

      else if (v101)
      {
        v104 = v100[1];
        *v99 = *v100;
        *(v99 + 16) = v104;
        *(v99 + 25) = *(v100 + 25);
      }

      else
      {
        v102 = *(v100 + 24);
        *(v99 + 24) = v102;
        (**(v102 - 8))(v99);
        *(v99 + 40) = 0;
      }

      break;
    case 0xAu:
      v22 = *(a2 + 24);
      *(a1 + 24) = v22;
      (**(v22 - 8))(a1, a2);
      v23 = *(a2 + 64);
      *(a1 + 64) = v23;
      (**(v23 - 8))(a1 + 40, a2 + 40);
      break;
    case 0xDu:
      v19 = *a2;
      *a1 = *a2;
      v20 = v19;
      break;
    default:
      *a1 = *a2;
      sub_1DD0DCF8C();
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t initializeWithCopy for FlowTraceEvent(uint64_t a1, uint64_t a2)
{
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      *a1 = *a2;
      sub_1DD0DCF8C();
    case 2u:
      *a1 = *a2;
      sub_1DD0DCF8C();
    case 3u:
      *a1 = *a2;
      sub_1DD0DCF8C();
    case 4u:
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 32) = *(a2 + 32);
      sub_1DD0DCF8C();
    case 5u:
      *a1 = *a2;
      v16 = *(a2 + 32);
      *(a1 + 32) = v16;
      v17 = **(v16 - 8);
      sub_1DD0DCF8C();
    case 6u:
    case 7u:
    case 0xBu:
    case 0xCu:
      v20 = *(a2 + 24);
      *(a1 + 24) = v20;
      (**(v20 - 8))(a1, a2);
      break;
    case 8u:
      v23 = *(a2 + 24);
      *(a1 + 24) = v23;
      (**(v23 - 8))(a1, a2);
      v24 = *(a2 + 64);
      *(a1 + 64) = v24;
      (**(v24 - 8))(a1 + 40, a2 + 40);
      break;
    case 9u:
      v4 = *(a2 + 24);
      *(a1 + 24) = v4;
      (**(v4 - 8))(a1, a2);
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5160, &qword_1DD0F0EE8);
      v6 = *(v5 + 48);
      v7 = a1 + v6;
      v8 = a2 + v6;
      v9 = sub_1DD0DB04C();
      (*(*(v9 - 8) + 16))(v7, v8, v9);
      v10 = type metadata accessor for Input(0);
      v11 = v10[5];
      v12 = (v7 + v11);
      v13 = (v8 + v11);
      v14 = type metadata accessor for Parse(0);
      v112 = v5;
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v15 = sub_1DD0DC76C();
          (*(*(v15 - 8) + 16))(v12, v13, v15);
          goto LABEL_36;
        case 1u:
          v32 = sub_1DD0DC76C();
          (*(*(v32 - 8) + 16))(v12, v13, v32);
          v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *&v12[*(v33 + 48)] = *&v13[*(v33 + 48)];
          sub_1DD0DCF8C();
        case 2u:
          v27 = *(v13 + 1);
          *v12 = *v13;
          *(v12 + 1) = v27;
          *(v12 + 2) = *(v13 + 2);

          goto LABEL_36;
        case 3u:
          *v12 = *v13;
          swift_unknownObjectRetain();
          goto LABEL_36;
        case 4u:
          v25 = sub_1DD0DB1EC();
          (*(*(v25 - 8) + 16))(v12, v13, v25);
          goto LABEL_36;
        case 5u:
          v34 = *v13;
          *v12 = *v13;
          v35 = v34;
          goto LABEL_36;
        case 6u:
          v36 = sub_1DD0DB4BC();
          (*(*(v36 - 8) + 16))(v12, v13, v36);
          v110 = type metadata accessor for USOParse();
          v37 = v110[5];
          v38 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v13[v37], 1, v38))
          {
            v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v12[v37], &v13[v37], *(*(v39 - 8) + 64));
          }

          else
          {
            (*(*(v38 - 8) + 16))(&v12[v37], &v13[v37], v38);
            __swift_storeEnumTagSinglePayload(&v12[v37], 0, 1, v38);
          }

          v69 = v110[6];
          v70 = &v12[v69];
          v71 = &v13[v69];
          v72 = *(v71 + 1);
          *v70 = *v71;
          *(v70 + 1) = v72;
          v73 = v110[7];
          v74 = &v12[v73];
          v75 = &v13[v73];
          v74[4] = v75[4];
          *v74 = *v75;

          goto LABEL_36;
        case 7u:
          v28 = sub_1DD0DB4BC();
          (*(*(v28 - 8) + 16))(v12, v13, v28);
          v109 = type metadata accessor for USOParse();
          v29 = v109[5];
          v30 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v13[v29], 1, v30))
          {
            v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v12[v29], &v13[v29], *(*(v31 - 8) + 64));
          }

          else
          {
            (*(*(v30 - 8) + 16))(&v12[v29], &v13[v29], v30);
            __swift_storeEnumTagSinglePayload(&v12[v29], 0, 1, v30);
          }

          v50 = v109[6];
          v51 = &v12[v50];
          v52 = &v13[v50];
          v108 = *(v52 + 1);
          *v51 = *v52;
          *(v51 + 1) = v108;
          v53 = v109[7];
          v54 = &v12[v53];
          v55 = &v13[v53];
          v54[4] = v55[4];
          *v54 = *v55;
          v56 = type metadata accessor for LinkParse();
          v57 = v56[5];
          v58 = &v12[v57];
          v59 = &v13[v57];
          v60 = *(v59 + 1);
          *v58 = *v59;
          *(v58 + 1) = v60;
          v61 = v56[6];
          v62 = &v12[v61];
          v63 = &v13[v61];
          v64 = *(v63 + 1);
          *v62 = *v63;
          *(v62 + 1) = v64;
          v65 = v56[7];
          v66 = &v12[v65];
          v67 = &v13[v65];
          v68 = *(v67 + 1);
          *v66 = *v67;
          *(v66 + 1) = v68;

          goto LABEL_36;
        case 8u:
          v105 = v10;
          v40 = sub_1DD0DD12C();
          (*(*(v40 - 8) + 16))(v12, v13, v40);
          v41 = type metadata accessor for NLRouterParse();
          v42 = *(v41 + 20);
          v43 = &v12[v42];
          v44 = &v13[v42];
          v45 = *(v44 + 1);
          *v43 = *v44;
          *(v43 + 1) = v45;
          v106 = v41;
          v46 = *(v41 + 24);
          v111 = &v12[v46];
          v47 = &v13[v46];
          v48 = type metadata accessor for USOParse();

          v107 = v47;
          if (__swift_getEnumTagSinglePayload(v47, 1, v48))
          {
            v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(v111, v47, *(*(v49 - 8) + 64));
            v10 = v105;
          }

          else
          {
            v76 = sub_1DD0DB4BC();
            (*(*(v76 - 8) + 16))(v111, v47, v76);
            v104 = v48;
            v77 = *(v48 + 20);
            v78 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v47[v77], 1, v78))
            {
              v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v111[v77], &v47[v77], *(*(v79 - 8) + 64));
            }

            else
            {
              (*(*(v78 - 8) + 16))(&v111[v77], &v47[v77], v78);
              __swift_storeEnumTagSinglePayload(&v111[v77], 0, 1, v78);
            }

            v10 = v105;
            v80 = *(v104 + 24);
            v81 = &v111[v80];
            v82 = &v107[v80];
            v83 = *(v82 + 1);
            *v81 = *v82;
            *(v81 + 1) = v83;
            v84 = *(v104 + 28);
            v85 = &v111[v84];
            v86 = &v107[v84];
            v85[4] = v86[4];
            *v85 = *v86;

            __swift_storeEnumTagSinglePayload(v111, 0, 1, v104);
          }

          v87 = *(v106 + 28);
          v88 = *&v13[v87];
          *&v12[v87] = v88;
          v89 = v88;
          goto LABEL_36;
        case 9u:
          v26 = sub_1DD0DD08C();
          (*(*(v26 - 8) + 16))(v12, v13, v26);
LABEL_36:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(v12, v13, *(*(v14 - 8) + 64));
          break;
      }

      *(v7 + v10[6]) = *(v8 + v10[6]);
      v90 = v10[7];
      v91 = v7 + v90;
      v92 = v8 + v90;
      v93 = *(v8 + v90 + 24);

      if (v93)
      {
        v94 = *(v92 + 32);
        *(v91 + 24) = v93;
        *(v91 + 32) = v94;
        (**(v93 - 8))(v91, v92, v93);
      }

      else
      {
        v95 = *(v92 + 16);
        *v91 = *v92;
        *(v91 + 16) = v95;
        *(v91 + 32) = *(v92 + 32);
      }

      *(v7 + v10[8]) = *(v8 + v10[8]);
      v96 = *(v112 + 64);
      v97 = a1 + v96;
      v98 = (a2 + v96);
      v99 = *(a2 + v96 + 40);
      if (v99 == 1)
      {
        v101 = *(v98 + 24);
        *(v97 + 24) = v101;
        (**(v101 - 8))(v97);
        *(v97 + 40) = 1;
      }

      else if (v99)
      {
        v102 = v98[1];
        *v97 = *v98;
        *(v97 + 16) = v102;
        *(v97 + 25) = *(v98 + 25);
      }

      else
      {
        v100 = *(v98 + 24);
        *(v97 + 24) = v100;
        (**(v100 - 8))(v97);
        *(v97 + 40) = 0;
      }

      break;
    case 0xAu:
      v21 = *(a2 + 24);
      *(a1 + 24) = v21;
      (**(v21 - 8))(a1, a2);
      v22 = *(a2 + 64);
      *(a1 + 64) = v22;
      (**(v22 - 8))(a1 + 40, a2 + 40);
      break;
    case 0xDu:
      v18 = *a2;
      *a1 = *a2;
      v19 = v18;
      break;
    default:
      *a1 = *a2;
      sub_1DD0DCF8C();
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t assignWithCopy for FlowTraceEvent(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_1DCD66A14(a1);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        *a1 = *a2;
        sub_1DD0DCF8C();
      case 2u:
        *a1 = *a2;
        sub_1DD0DCF8C();
      case 3u:
        *a1 = *a2;
        sub_1DD0DCF8C();
      case 4u:
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        *(a1 + 16) = *(a2 + 16);
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 32) = *(a2 + 32);
        sub_1DD0DCF8C();
      case 5u:
        *a1 = *a2;
        v16 = *(a2 + 32);
        *(a1 + 32) = v16;
        v17 = **(v16 - 8);
        sub_1DD0DCF8C();
      case 6u:
      case 7u:
      case 0xBu:
      case 0xCu:
        v20 = *(a2 + 24);
        *(a1 + 24) = v20;
        *(a1 + 32) = *(a2 + 32);
        (**(v20 - 8))(a1, a2);
        break;
      case 8u:
        v23 = *(a2 + 24);
        *(a1 + 24) = v23;
        *(a1 + 32) = *(a2 + 32);
        (**(v23 - 8))(a1, a2);
        v24 = *(a2 + 64);
        *(a1 + 64) = v24;
        (**(v24 - 8))(a1 + 40, a2 + 40);
        break;
      case 9u:
        v4 = *(a2 + 24);
        *(a1 + 24) = v4;
        *(a1 + 32) = *(a2 + 32);
        (**(v4 - 8))(a1, a2);
        v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5160, &qword_1DD0F0EE8);
        v6 = *(v5 + 48);
        v7 = a1 + v6;
        v8 = a2 + v6;
        v9 = sub_1DD0DB04C();
        (*(*(v9 - 8) + 16))(v7, v8, v9);
        v10 = type metadata accessor for Input(0);
        v11 = v10[5];
        v12 = (v7 + v11);
        v13 = (v8 + v11);
        v14 = type metadata accessor for Parse(0);
        v109 = v5;
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:
            v15 = sub_1DD0DC76C();
            (*(*(v15 - 8) + 16))(v12, v13, v15);
            goto LABEL_37;
          case 1u:
            v31 = sub_1DD0DC76C();
            (*(*(v31 - 8) + 16))(v12, v13, v31);
            v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
            *&v12[*(v32 + 48)] = *&v13[*(v32 + 48)];
            sub_1DD0DCF8C();
          case 2u:
            *v12 = *v13;
            *(v12 + 1) = *(v13 + 1);
            *(v12 + 2) = *(v13 + 2);

            goto LABEL_37;
          case 3u:
            *v12 = *v13;
            swift_unknownObjectRetain();
            goto LABEL_37;
          case 4u:
            v25 = sub_1DD0DB1EC();
            (*(*(v25 - 8) + 16))(v12, v13, v25);
            goto LABEL_37;
          case 5u:
            v33 = *v13;
            *v12 = *v13;
            v34 = v33;
            goto LABEL_37;
          case 6u:
            v35 = sub_1DD0DB4BC();
            (*(*(v35 - 8) + 16))(v12, v13, v35);
            v107 = type metadata accessor for USOParse();
            v36 = v107[5];
            v37 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v13[v36], 1, v37))
            {
              v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v12[v36], &v13[v36], *(*(v38 - 8) + 64));
            }

            else
            {
              (*(*(v37 - 8) + 16))(&v12[v36], &v13[v36], v37);
              __swift_storeEnumTagSinglePayload(&v12[v36], 0, 1, v37);
            }

            v66 = v107[6];
            v67 = &v12[v66];
            v68 = &v13[v66];
            *v67 = *v68;
            *(v67 + 1) = *(v68 + 1);
            v69 = v107[7];
            v70 = &v12[v69];
            v71 = &v13[v69];
            v72 = *v71;
            v70[4] = v71[4];
            *v70 = v72;

            goto LABEL_37;
          case 7u:
            v27 = sub_1DD0DB4BC();
            (*(*(v27 - 8) + 16))(v12, v13, v27);
            v106 = type metadata accessor for USOParse();
            v28 = v106[5];
            v29 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v13[v28], 1, v29))
            {
              v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v12[v28], &v13[v28], *(*(v30 - 8) + 64));
            }

            else
            {
              (*(*(v29 - 8) + 16))(&v12[v28], &v13[v28], v29);
              __swift_storeEnumTagSinglePayload(&v12[v28], 0, 1, v29);
            }

            v49 = v106[6];
            v50 = &v12[v49];
            v51 = &v13[v49];
            *v50 = *v51;
            *(v50 + 1) = *(v51 + 1);
            v52 = v106[7];
            v53 = &v12[v52];
            v54 = &v13[v52];
            v55 = *v54;
            v53[4] = v54[4];
            *v53 = v55;
            v56 = type metadata accessor for LinkParse();
            v57 = v56[5];
            v58 = &v12[v57];
            v59 = &v13[v57];
            *v58 = *v59;
            *(v58 + 1) = *(v59 + 1);
            v60 = v56[6];
            v61 = &v12[v60];
            v62 = &v13[v60];
            *v61 = *v62;
            *(v61 + 1) = *(v62 + 1);
            v63 = v56[7];
            v64 = &v12[v63];
            v65 = &v13[v63];
            *v64 = *v65;
            *(v64 + 1) = *(v65 + 1);

            goto LABEL_37;
          case 8u:
            v103 = v10;
            v39 = sub_1DD0DD12C();
            (*(*(v39 - 8) + 16))(v12, v13, v39);
            v40 = type metadata accessor for NLRouterParse();
            v41 = *(v40 + 20);
            v42 = &v12[v41];
            v43 = &v13[v41];
            *v42 = *v43;
            *(v42 + 1) = *(v43 + 1);
            v104 = v40;
            v44 = *(v40 + 24);
            v108 = &v12[v44];
            v45 = &v13[v44];
            v46 = type metadata accessor for USOParse();

            v105 = v45;
            if (__swift_getEnumTagSinglePayload(v45, 1, v46))
            {
              v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
              memcpy(v108, v45, *(*(v47 - 8) + 64));
              v10 = v103;
              v48 = v104;
            }

            else
            {
              v73 = sub_1DD0DB4BC();
              (*(*(v73 - 8) + 16))(v108, v45, v73);
              v102 = v46;
              v74 = *(v46 + 20);
              v75 = sub_1DD0DB3EC();
              if (__swift_getEnumTagSinglePayload(&v45[v74], 1, v75))
              {
                v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                memcpy(&v108[v74], &v45[v74], *(*(v76 - 8) + 64));
              }

              else
              {
                (*(*(v75 - 8) + 16))(&v108[v74], &v45[v74], v75);
                __swift_storeEnumTagSinglePayload(&v108[v74], 0, 1, v75);
              }

              v10 = v103;
              v48 = v104;
              v77 = *(v102 + 24);
              v78 = &v108[v77];
              v79 = &v105[v77];
              *v78 = *v79;
              *(v78 + 1) = *(v79 + 1);
              v80 = *(v102 + 28);
              v81 = &v108[v80];
              v82 = &v105[v80];
              v83 = *v82;
              v81[4] = v82[4];
              *v81 = v83;

              __swift_storeEnumTagSinglePayload(v108, 0, 1, v102);
            }

            v84 = *(v48 + 28);
            v85 = *&v13[v84];
            *&v12[v84] = v85;
            v86 = v85;
            goto LABEL_37;
          case 9u:
            v26 = sub_1DD0DD08C();
            (*(*(v26 - 8) + 16))(v12, v13, v26);
LABEL_37:
            swift_storeEnumTagMultiPayload();
            break;
          default:
            memcpy(v12, v13, *(*(v14 - 8) + 64));
            break;
        }

        *(v7 + v10[6]) = *(v8 + v10[6]);
        v87 = v10[7];
        v88 = v7 + v87;
        v89 = (v8 + v87);
        v90 = *(v8 + v87 + 24);

        if (v90)
        {
          *(v88 + 24) = v90;
          *(v88 + 32) = *(v89 + 4);
          (**(v90 - 8))(v88, v89, v90);
        }

        else
        {
          v91 = *v89;
          v92 = v89[1];
          *(v88 + 32) = *(v89 + 4);
          *v88 = v91;
          *(v88 + 16) = v92;
        }

        *(v7 + v10[8]) = *(v8 + v10[8]);
        v93 = *(v109 + 64);
        v94 = a1 + v93;
        v95 = (a2 + v93);
        v96 = *(a2 + v93 + 40);
        if (v96 == 1)
        {
          v98 = *(v95 + 3);
          *(v94 + 24) = v98;
          *(v94 + 32) = *(v95 + 4);
          (**(v98 - 8))(v94);
          *(v94 + 40) = 1;
        }

        else if (v96)
        {
          v99 = *v95;
          v100 = v95[1];
          *(v94 + 25) = *(v95 + 25);
          *v94 = v99;
          *(v94 + 16) = v100;
        }

        else
        {
          v97 = *(v95 + 3);
          *(v94 + 24) = v97;
          *(v94 + 32) = *(v95 + 4);
          (**(v97 - 8))(v94);
          *(v94 + 40) = 0;
        }

        break;
      case 0xAu:
        v21 = *(a2 + 24);
        *(a1 + 24) = v21;
        *(a1 + 32) = *(a2 + 32);
        (**(v21 - 8))(a1, a2);
        v22 = *(a2 + 64);
        *(a1 + 64) = v22;
        *(a1 + 72) = *(a2 + 72);
        (**(v22 - 8))(a1 + 40, a2 + 40);
        break;
      case 0xDu:
        v18 = *a2;
        *a1 = *a2;
        v19 = v18;
        break;
      default:
        *a1 = *a2;
        sub_1DD0DCF8C();
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_1DCD66A14(uint64_t a1)
{
  v2 = type metadata accessor for FlowTraceEvent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for FlowTraceEvent()
{
  result = qword_1EDE4B200;
  if (!qword_1EDE4B200)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_OWORD *initializeWithTake for FlowTraceEvent(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 9:
      v27 = a2[1];
      *a1 = *a2;
      a1[1] = v27;
      *(a1 + 4) = *(a2 + 4);
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5160, &qword_1DD0F0EE8);
      v29 = *(v28 + 48);
      v30 = a1 + v29;
      v31 = a2 + v29;
      v32 = sub_1DD0DB04C();
      (*(*(v32 - 8) + 32))(v30, v31, v32);
      v33 = type metadata accessor for Input(0);
      v34 = v33[5];
      v35 = &v30[v34];
      v36 = &v31[v34];
      v37 = type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v38 = sub_1DD0DC76C();
          (*(*(v38 - 8) + 32))(v35, v36, v38);
          goto LABEL_64;
        case 1u:
          v64 = sub_1DD0DC76C();
          (*(*(v64 - 8) + 32))(v35, v36, v64);
          v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *&v35[*(v65 + 48)] = *&v36[*(v65 + 48)];
          goto LABEL_64;
        case 4u:
          v70 = sub_1DD0DB1EC();
          (*(*(v70 - 8) + 32))(v35, v36, v70);
          goto LABEL_64;
        case 6u:
          v219 = v28;
          v72 = sub_1DD0DB4BC();
          (*(*(v72 - 8) + 32))(v35, v36, v72);
          v214 = type metadata accessor for USOParse();
          v73 = v214[5];
          v74 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v36[v73], 1, v74))
          {
            v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v35[v73], &v36[v73], *(*(v75 - 8) + 64));
          }

          else
          {
            (*(*(v74 - 8) + 32))(&v35[v73], &v36[v73], v74);
            __swift_storeEnumTagSinglePayload(&v35[v73], 0, 1, v74);
          }

          *&v35[v214[6]] = *&v36[v214[6]];
          v121 = v214[7];
          v122 = &v35[v121];
          v123 = &v36[v121];
          v122[4] = v123[4];
          *v122 = *v123;
          goto LABEL_53;
        case 7u:
          v219 = v28;
          v76 = sub_1DD0DB4BC();
          (*(*(v76 - 8) + 32))(v35, v36, v76);
          v215 = type metadata accessor for USOParse();
          v77 = v215[5];
          v78 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v36[v77], 1, v78))
          {
            v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v35[v77], &v36[v77], *(*(v79 - 8) + 64));
          }

          else
          {
            (*(*(v78 - 8) + 32))(&v35[v77], &v36[v77], v78);
            __swift_storeEnumTagSinglePayload(&v35[v77], 0, 1, v78);
          }

          *&v35[v215[6]] = *&v36[v215[6]];
          v124 = v215[7];
          v125 = &v35[v124];
          v126 = &v36[v124];
          v125[4] = v126[4];
          *v125 = *v126;
          v127 = type metadata accessor for LinkParse();
          *&v35[v127[5]] = *&v36[v127[5]];
          *&v35[v127[6]] = *&v36[v127[6]];
          *&v35[v127[7]] = *&v36[v127[7]];
LABEL_53:
          swift_storeEnumTagMultiPayload();
          v28 = v219;
          break;
        case 8u:
          v48 = sub_1DD0DD12C();
          (*(*(v48 - 8) + 32))(v35, v36, v48);
          v49 = type metadata accessor for NLRouterParse();
          *&v35[*(v49 + 20)] = *&v36[*(v49 + 20)];
          v204 = v49;
          v50 = *(v49 + 24);
          v212 = &v35[v50];
          v51 = &v36[v50];
          v52 = type metadata accessor for USOParse();
          __dsta = v51;
          v53 = v51;
          v54 = v52;
          if (__swift_getEnumTagSinglePayload(v53, 1, v52))
          {
            v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(v212, __dsta, *(*(v55 - 8) + 64));
          }

          else
          {
            v97 = sub_1DD0DB4BC();
            (*(*(v97 - 8) + 32))(v212, __dsta, v97);
            v201 = v54;
            v98 = *(v54 + 20);
            v99 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&__dsta[v98], 1, v99))
            {
              v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v212[v98], &__dsta[v98], *(*(v100 - 8) + 64));
            }

            else
            {
              (*(*(v99 - 8) + 32))(&v212[v98], &__dsta[v98], v99);
              __swift_storeEnumTagSinglePayload(&v212[v98], 0, 1, v99);
            }

            *&v212[*(v201 + 24)] = *&__dsta[*(v201 + 24)];
            v138 = *(v201 + 28);
            v139 = &v212[v138];
            v140 = &__dsta[v138];
            v139[4] = v140[4];
            *v139 = *v140;
            __swift_storeEnumTagSinglePayload(v212, 0, 1, v201);
          }

          *&v35[*(v204 + 28)] = *&v36[*(v204 + 28)];
          goto LABEL_64;
        case 9u:
          v68 = sub_1DD0DD08C();
          (*(*(v68 - 8) + 32))(v35, v36, v68);
LABEL_64:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(v35, v36, *(*(v37 - 8) + 64));
          break;
      }

      *&v30[v33[6]] = *&v31[v33[6]];
      v141 = v33[7];
      v142 = &v30[v141];
      v143 = &v31[v141];
      v144 = *(v143 + 1);
      *v142 = *v143;
      *(v142 + 1) = v144;
      *(v142 + 4) = *(v143 + 4);
      v30[v33[8]] = v31[v33[8]];
      v145 = *(v28 + 64);
      v146 = (a1 + v145);
      v147 = (a2 + v145);
      v148 = v147[1];
      *v146 = *v147;
      v146[1] = v148;
      *(v146 + 25) = *(v147 + 25);
      goto LABEL_90;
    case 3:
      *a1 = *a2;
      v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5030, &qword_1DD0F0CE0) + 48);
      v19 = a1 + v18;
      v20 = a2 + v18;
      *v19 = *(a2 + v18);
      *(v19 + 1) = *(a2 + v18 + 8);
      v19[16] = *(a2 + v18 + 16);
      *(v19 + 3) = *(a2 + v18 + 24);
      v19[48] = *(a2 + v18 + 48);
      *(v19 + 2) = *(a2 + v18 + 32);
      v21 = type metadata accessor for ExecuteResponse(0);
      v22 = *(v21 + 36);
      v23 = &v19[v22];
      v24 = &v20[v22];
      v25 = type metadata accessor for PluginAction();
      if (__swift_getEnumTagSinglePayload(v24, 1, v25))
      {
        v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4AD0, &qword_1DD0EDF38);
        memcpy(v23, v24, *(*(v26 - 8) + 64));
      }

      else
      {
        v218 = v21;
        *v23 = *v24;
        v221 = v25;
        v41 = *(v25 + 20);
        v42 = &v23[v41];
        v43 = &v24[v41];
        v211 = sub_1DD0DB04C();
        v200 = *(*(v211 - 8) + 32);
        v200(v42, v43);
        __dst = type metadata accessor for Input(0);
        v44 = __dst[5];
        v45 = &v42[v44];
        v46 = &v43[v44];
        v203 = type metadata accessor for Parse(0);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:
            v47 = sub_1DD0DC76C();
            (*(*(v47 - 8) + 32))(v45, v46, v47);
            goto LABEL_78;
          case 1u:
            v101 = sub_1DD0DC76C();
            (*(*(v101 - 8) + 32))(v45, v46, v101);
            v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
            *&v45[*(v102 + 48)] = *&v46[*(v102 + 48)];
            goto LABEL_78;
          case 4u:
            v108 = sub_1DD0DB1EC();
            (*(*(v108 - 8) + 32))(v45, v46, v108);
            goto LABEL_78;
          case 6u:
            v192 = v43;
            v109 = sub_1DD0DB4BC();
            (*(*(v109 - 8) + 32))(v45, v46, v109);
            v198 = type metadata accessor for USOParse();
            v110 = v198[5];
            v111 = sub_1DD0DB3EC();
            v195 = v110;
            v112 = &v46[v110];
            v113 = v111;
            if (__swift_getEnumTagSinglePayload(v112, 1, v111))
            {
              v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v45[v195], &v46[v195], *(*(v114 - 8) + 64));
            }

            else
            {
              (*(*(v113 - 8) + 32))(&v45[v195], &v46[v195], v113);
              __swift_storeEnumTagSinglePayload(&v45[v195], 0, 1, v113);
            }

            *&v45[v198[6]] = *&v46[v198[6]];
            v156 = v198[7];
            v157 = &v45[v156];
            v158 = &v46[v156];
            v157[4] = v158[4];
            *v157 = *v158;
            swift_storeEnumTagMultiPayload();
            v43 = v192;
            break;
          case 7u:
            v193 = v42;
            v115 = sub_1DD0DB4BC();
            (*(*(v115 - 8) + 32))(v45, v46, v115);
            v199 = type metadata accessor for USOParse();
            v116 = v199[5];
            v117 = sub_1DD0DB3EC();
            v196 = v116;
            v118 = &v46[v116];
            v119 = v117;
            if (__swift_getEnumTagSinglePayload(v118, 1, v117))
            {
              v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v45[v196], &v46[v196], *(*(v120 - 8) + 64));
            }

            else
            {
              (*(*(v119 - 8) + 32))(&v45[v196], &v46[v196], v119);
              __swift_storeEnumTagSinglePayload(&v45[v196], 0, 1, v119);
            }

            *&v45[v199[6]] = *&v46[v199[6]];
            v159 = v199[7];
            v160 = &v45[v159];
            v161 = &v46[v159];
            v160[4] = v161[4];
            *v160 = *v161;
            v162 = type metadata accessor for LinkParse();
            *&v45[v162[5]] = *&v46[v162[5]];
            *&v45[v162[6]] = *&v46[v162[6]];
            *&v45[v162[7]] = *&v46[v162[7]];
            swift_storeEnumTagMultiPayload();
            v42 = v193;
            break;
          case 8u:
            v88 = sub_1DD0DD12C();
            (*(*(v88 - 8) + 32))(v45, v46, v88);
            v89 = type metadata accessor for NLRouterParse();
            *&v45[*(v89 + 20)] = *&v46[*(v89 + 20)];
            v190 = v45;
            v191 = v89;
            v90 = *(v89 + 24);
            v194 = &v45[v90];
            v91 = &v46[v90];
            v92 = type metadata accessor for USOParse();
            v197 = v91;
            v93 = v91;
            v94 = v92;
            if (__swift_getEnumTagSinglePayload(v93, 1, v92))
            {
              v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
              memcpy(v194, v197, *(*(v95 - 8) + 64));
              v96 = v190;
            }

            else
            {
              v135 = sub_1DD0DB4BC();
              (*(*(v135 - 8) + 32))(v194, v197, v135);
              v189 = v94;
              v136 = *(v94 + 20);
              v188 = sub_1DD0DB3EC();
              if (__swift_getEnumTagSinglePayload(&v197[v136], 1, v188))
              {
                v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                memcpy(&v194[v136], &v197[v136], *(*(v137 - 8) + 64));
              }

              else
              {
                (*(*(v188 - 8) + 32))(&v194[v136], &v197[v136]);
                __swift_storeEnumTagSinglePayload(&v194[v136], 0, 1, v188);
              }

              v96 = v190;
              *&v194[*(v189 + 24)] = *&v197[*(v189 + 24)];
              v163 = *(v189 + 28);
              v164 = &v194[v163];
              v165 = &v197[v163];
              v164[4] = v165[4];
              *v164 = *v165;
              __swift_storeEnumTagSinglePayload(v194, 0, 1, v189);
            }

            *&v96[*(v191 + 28)] = *&v46[*(v191 + 28)];
            goto LABEL_78;
          case 9u:
            v107 = sub_1DD0DD08C();
            (*(*(v107 - 8) + 32))(v45, v46, v107);
LABEL_78:
            swift_storeEnumTagMultiPayload();
            break;
          default:
            memcpy(v45, v46, *(*(v203 - 8) + 64));
            break;
        }

        *&v42[__dst[6]] = *&v43[__dst[6]];
        v166 = __dst[7];
        v167 = &v42[v166];
        v168 = &v43[v166];
        v169 = *(v168 + 1);
        *v167 = *v168;
        *(v167 + 1) = v169;
        *(v167 + 4) = *(v168 + 4);
        v42[__dst[8]] = v43[__dst[8]];
        v170 = v221;
        *&v23[v221[6]] = *&v24[v221[6]];
        *&v23[v221[7]] = *&v24[v221[7]];
        *&v23[v221[8]] = *&v24[v221[8]];
        v171 = v221[9];
        v172 = &v23[v171];
        v173 = &v24[v171];
        v174 = type metadata accessor for ActionParaphrase(0);
        if (__swift_getEnumTagSinglePayload(v173, 1, v174))
        {
          v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B28, &unk_1DD0EE960);
          memcpy(v172, v173, *(*(v175 - 8) + 64));
        }

        else
        {
          *v172 = *v173;
          v176 = *(v174 + 20);
          __dstc = &v172[v176];
          v177 = &v173[v176];
          v178 = type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0);
          if (__swift_getEnumTagSinglePayload(v177, 1, v178))
          {
            v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B20, &qword_1DD0F0B00);
            memcpy(__dstc, v177, *(*(v179 - 8) + 64));
          }

          else
          {
            v180 = *(v177 + 1);
            *__dstc = *v177;
            *(__dstc + 1) = v180;
            v206 = *(v178 + 24);
            v181 = sub_1DD0DB66C();
            (*(*(v181 - 8) + 32))(&__dstc[v206], &v177[v206], v181);
            __swift_storeEnumTagSinglePayload(__dstc, 0, 1, v178);
          }

          __swift_storeEnumTagSinglePayload(v172, 0, 1, v174);
          v170 = v221;
        }

        v182 = *(v170 + 40);
        if (__swift_getEnumTagSinglePayload(&v24[v182], 1, v211))
        {
          v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
          memcpy(&v23[v182], &v24[v182], *(*(v183 - 8) + 64));
        }

        else
        {
          (v200)(&v23[v182], &v24[v182], v211);
          __swift_storeEnumTagSinglePayload(&v23[v182], 0, 1, v211);
        }

        v23[*(v170 + 44)] = v24[*(v170 + 44)];
        __swift_storeEnumTagSinglePayload(v23, 0, 1, v170);
        v21 = v218;
      }

      v184 = *(v21 + 40);
      v185 = &v19[v184];
      v186 = &v20[v184];
      v187 = *(v186 + 1);
      *v185 = *v186;
      *(v185 + 1) = v187;
      goto LABEL_90;
    case 2:
      *a1 = *a2;
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5040, &qword_1DD0F0CF8);
      v8 = *(v7 + 48);
      v9 = a1 + v8;
      v10 = a2 + v8;
      v11 = sub_1DD0DB04C();
      (*(*(v11 - 8) + 32))(v9, v10, v11);
      v12 = type metadata accessor for Input(0);
      v13 = v12[5];
      v14 = &v9[v13];
      v15 = &v10[v13];
      v16 = type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v17 = sub_1DD0DC76C();
          (*(*(v17 - 8) + 32))(v14, v15, v17);
          goto LABEL_69;
        case 1u:
          v66 = sub_1DD0DC76C();
          (*(*(v66 - 8) + 32))(v14, v15, v66);
          v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *&v14[*(v67 + 48)] = *&v15[*(v67 + 48)];
          goto LABEL_69;
        case 4u:
          v71 = sub_1DD0DB1EC();
          (*(*(v71 - 8) + 32))(v14, v15, v71);
          goto LABEL_69;
        case 6u:
          v220 = v7;
          v80 = sub_1DD0DB4BC();
          (*(*(v80 - 8) + 32))(v14, v15, v80);
          v216 = type metadata accessor for USOParse();
          v81 = v216[5];
          v82 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v15[v81], 1, v82))
          {
            v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v14[v81], &v15[v81], *(*(v83 - 8) + 64));
          }

          else
          {
            (*(*(v82 - 8) + 32))(&v14[v81], &v15[v81], v82);
            __swift_storeEnumTagSinglePayload(&v14[v81], 0, 1, v82);
          }

          *&v14[v216[6]] = *&v15[v216[6]];
          v128 = v216[7];
          v129 = &v14[v128];
          v130 = &v15[v128];
          v129[4] = v130[4];
          *v129 = *v130;
          goto LABEL_58;
        case 7u:
          v220 = v7;
          v84 = sub_1DD0DB4BC();
          (*(*(v84 - 8) + 32))(v14, v15, v84);
          v217 = type metadata accessor for USOParse();
          v85 = v217[5];
          v86 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v15[v85], 1, v86))
          {
            v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v14[v85], &v15[v85], *(*(v87 - 8) + 64));
          }

          else
          {
            (*(*(v86 - 8) + 32))(&v14[v85], &v15[v85], v86);
            __swift_storeEnumTagSinglePayload(&v14[v85], 0, 1, v86);
          }

          *&v14[v217[6]] = *&v15[v217[6]];
          v131 = v217[7];
          v132 = &v14[v131];
          v133 = &v15[v131];
          v132[4] = v133[4];
          *v132 = *v133;
          v134 = type metadata accessor for LinkParse();
          *&v14[v134[5]] = *&v15[v134[5]];
          *&v14[v134[6]] = *&v15[v134[6]];
          *&v14[v134[7]] = *&v15[v134[7]];
LABEL_58:
          swift_storeEnumTagMultiPayload();
          v7 = v220;
          break;
        case 8u:
          v56 = sub_1DD0DD12C();
          (*(*(v56 - 8) + 32))(v14, v15, v56);
          v57 = type metadata accessor for NLRouterParse();
          *&v14[*(v57 + 20)] = *&v15[*(v57 + 20)];
          v205 = v57;
          v58 = *(v57 + 24);
          v213 = &v14[v58];
          v59 = &v15[v58];
          v60 = type metadata accessor for USOParse();
          __dstb = v59;
          v61 = v59;
          v62 = v60;
          if (__swift_getEnumTagSinglePayload(v61, 1, v60))
          {
            v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(v213, __dstb, *(*(v63 - 8) + 64));
          }

          else
          {
            v103 = sub_1DD0DB4BC();
            (*(*(v103 - 8) + 32))(v213, __dstb, v103);
            v202 = v62;
            v104 = *(v62 + 20);
            v105 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&__dstb[v104], 1, v105))
            {
              v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v213[v104], &__dstb[v104], *(*(v106 - 8) + 64));
            }

            else
            {
              (*(*(v105 - 8) + 32))(&v213[v104], &__dstb[v104], v105);
              __swift_storeEnumTagSinglePayload(&v213[v104], 0, 1, v105);
            }

            *&v213[*(v202 + 24)] = *&__dstb[*(v202 + 24)];
            v149 = *(v202 + 28);
            v150 = &v213[v149];
            v151 = &__dstb[v149];
            v150[4] = v151[4];
            *v150 = *v151;
            __swift_storeEnumTagSinglePayload(v213, 0, 1, v202);
          }

          *&v14[*(v205 + 28)] = *&v15[*(v205 + 28)];
          goto LABEL_69;
        case 9u:
          v69 = sub_1DD0DD08C();
          (*(*(v69 - 8) + 32))(v14, v15, v69);
LABEL_69:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(v14, v15, *(*(v16 - 8) + 64));
          break;
      }

      *&v9[v12[6]] = *&v10[v12[6]];
      v152 = v12[7];
      v153 = &v9[v152];
      v154 = &v10[v152];
      v155 = *(v154 + 1);
      *v153 = *v154;
      *(v153 + 1) = v155;
      *(v153 + 4) = *(v154 + 4);
      v9[v12[8]] = v10[v12[8]];
      *(a1 + *(v7 + 64)) = *(a2 + *(v7 + 64));
LABEL_90:
      swift_storeEnumTagMultiPayload();
      return a1;
  }

  v39 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v39);
}

_OWORD *assignWithTake for FlowTraceEvent(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_1DCD66A14(a1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 9:
      v27 = a2[1];
      *a1 = *a2;
      a1[1] = v27;
      *(a1 + 4) = *(a2 + 4);
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5160, &qword_1DD0F0EE8);
      v29 = *(v28 + 48);
      v30 = a1 + v29;
      v31 = a2 + v29;
      v32 = sub_1DD0DB04C();
      (*(*(v32 - 8) + 32))(v30, v31, v32);
      v33 = type metadata accessor for Input(0);
      v34 = v33[5];
      v35 = &v30[v34];
      v36 = &v31[v34];
      v37 = type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v38 = sub_1DD0DC76C();
          (*(*(v38 - 8) + 32))(v35, v36, v38);
          goto LABEL_65;
        case 1u:
          v64 = sub_1DD0DC76C();
          (*(*(v64 - 8) + 32))(v35, v36, v64);
          v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *&v35[*(v65 + 48)] = *&v36[*(v65 + 48)];
          goto LABEL_65;
        case 4u:
          v70 = sub_1DD0DB1EC();
          (*(*(v70 - 8) + 32))(v35, v36, v70);
          goto LABEL_65;
        case 6u:
          v219 = v28;
          v72 = sub_1DD0DB4BC();
          (*(*(v72 - 8) + 32))(v35, v36, v72);
          v214 = type metadata accessor for USOParse();
          v73 = v214[5];
          v74 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v36[v73], 1, v74))
          {
            v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v35[v73], &v36[v73], *(*(v75 - 8) + 64));
          }

          else
          {
            (*(*(v74 - 8) + 32))(&v35[v73], &v36[v73], v74);
            __swift_storeEnumTagSinglePayload(&v35[v73], 0, 1, v74);
          }

          *&v35[v214[6]] = *&v36[v214[6]];
          v121 = v214[7];
          v122 = &v35[v121];
          v123 = &v36[v121];
          v122[4] = v123[4];
          *v122 = *v123;
          goto LABEL_54;
        case 7u:
          v219 = v28;
          v76 = sub_1DD0DB4BC();
          (*(*(v76 - 8) + 32))(v35, v36, v76);
          v215 = type metadata accessor for USOParse();
          v77 = v215[5];
          v78 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v36[v77], 1, v78))
          {
            v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v35[v77], &v36[v77], *(*(v79 - 8) + 64));
          }

          else
          {
            (*(*(v78 - 8) + 32))(&v35[v77], &v36[v77], v78);
            __swift_storeEnumTagSinglePayload(&v35[v77], 0, 1, v78);
          }

          *&v35[v215[6]] = *&v36[v215[6]];
          v124 = v215[7];
          v125 = &v35[v124];
          v126 = &v36[v124];
          v125[4] = v126[4];
          *v125 = *v126;
          v127 = type metadata accessor for LinkParse();
          *&v35[v127[5]] = *&v36[v127[5]];
          *&v35[v127[6]] = *&v36[v127[6]];
          *&v35[v127[7]] = *&v36[v127[7]];
LABEL_54:
          swift_storeEnumTagMultiPayload();
          v28 = v219;
          break;
        case 8u:
          v48 = sub_1DD0DD12C();
          (*(*(v48 - 8) + 32))(v35, v36, v48);
          v49 = type metadata accessor for NLRouterParse();
          *&v35[*(v49 + 20)] = *&v36[*(v49 + 20)];
          v204 = v49;
          v50 = *(v49 + 24);
          v212 = &v35[v50];
          v51 = &v36[v50];
          v52 = type metadata accessor for USOParse();
          __dsta = v51;
          v53 = v51;
          v54 = v52;
          if (__swift_getEnumTagSinglePayload(v53, 1, v52))
          {
            v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(v212, __dsta, *(*(v55 - 8) + 64));
          }

          else
          {
            v97 = sub_1DD0DB4BC();
            (*(*(v97 - 8) + 32))(v212, __dsta, v97);
            v201 = v54;
            v98 = *(v54 + 20);
            v99 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&__dsta[v98], 1, v99))
            {
              v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v212[v98], &__dsta[v98], *(*(v100 - 8) + 64));
            }

            else
            {
              (*(*(v99 - 8) + 32))(&v212[v98], &__dsta[v98], v99);
              __swift_storeEnumTagSinglePayload(&v212[v98], 0, 1, v99);
            }

            *&v212[*(v201 + 24)] = *&__dsta[*(v201 + 24)];
            v138 = *(v201 + 28);
            v139 = &v212[v138];
            v140 = &__dsta[v138];
            v139[4] = v140[4];
            *v139 = *v140;
            __swift_storeEnumTagSinglePayload(v212, 0, 1, v201);
          }

          *&v35[*(v204 + 28)] = *&v36[*(v204 + 28)];
          goto LABEL_65;
        case 9u:
          v68 = sub_1DD0DD08C();
          (*(*(v68 - 8) + 32))(v35, v36, v68);
LABEL_65:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(v35, v36, *(*(v37 - 8) + 64));
          break;
      }

      *&v30[v33[6]] = *&v31[v33[6]];
      v141 = v33[7];
      v142 = &v30[v141];
      v143 = &v31[v141];
      v144 = *(v143 + 1);
      *v142 = *v143;
      *(v142 + 1) = v144;
      *(v142 + 4) = *(v143 + 4);
      v30[v33[8]] = v31[v33[8]];
      v145 = *(v28 + 64);
      v146 = (a1 + v145);
      v147 = (a2 + v145);
      v148 = v147[1];
      *v146 = *v147;
      v146[1] = v148;
      *(v146 + 25) = *(v147 + 25);
      goto LABEL_91;
    case 3:
      *a1 = *a2;
      v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5030, &qword_1DD0F0CE0) + 48);
      v19 = a1 + v18;
      v20 = a2 + v18;
      *v19 = *(a2 + v18);
      *(v19 + 1) = *(a2 + v18 + 8);
      v19[16] = *(a2 + v18 + 16);
      *(v19 + 3) = *(a2 + v18 + 24);
      v19[48] = *(a2 + v18 + 48);
      *(v19 + 2) = *(a2 + v18 + 32);
      v21 = type metadata accessor for ExecuteResponse(0);
      v22 = *(v21 + 36);
      v23 = &v19[v22];
      v24 = &v20[v22];
      v25 = type metadata accessor for PluginAction();
      if (__swift_getEnumTagSinglePayload(v24, 1, v25))
      {
        v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4AD0, &qword_1DD0EDF38);
        memcpy(v23, v24, *(*(v26 - 8) + 64));
      }

      else
      {
        v218 = v21;
        *v23 = *v24;
        v221 = v25;
        v41 = *(v25 + 20);
        v42 = &v23[v41];
        v43 = &v24[v41];
        v211 = sub_1DD0DB04C();
        v200 = *(*(v211 - 8) + 32);
        v200(v42, v43);
        __dst = type metadata accessor for Input(0);
        v44 = __dst[5];
        v45 = &v42[v44];
        v46 = &v43[v44];
        v203 = type metadata accessor for Parse(0);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:
            v47 = sub_1DD0DC76C();
            (*(*(v47 - 8) + 32))(v45, v46, v47);
            goto LABEL_79;
          case 1u:
            v101 = sub_1DD0DC76C();
            (*(*(v101 - 8) + 32))(v45, v46, v101);
            v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
            *&v45[*(v102 + 48)] = *&v46[*(v102 + 48)];
            goto LABEL_79;
          case 4u:
            v108 = sub_1DD0DB1EC();
            (*(*(v108 - 8) + 32))(v45, v46, v108);
            goto LABEL_79;
          case 6u:
            v192 = v43;
            v109 = sub_1DD0DB4BC();
            (*(*(v109 - 8) + 32))(v45, v46, v109);
            v198 = type metadata accessor for USOParse();
            v110 = v198[5];
            v111 = sub_1DD0DB3EC();
            v195 = v110;
            v112 = &v46[v110];
            v113 = v111;
            if (__swift_getEnumTagSinglePayload(v112, 1, v111))
            {
              v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v45[v195], &v46[v195], *(*(v114 - 8) + 64));
            }

            else
            {
              (*(*(v113 - 8) + 32))(&v45[v195], &v46[v195], v113);
              __swift_storeEnumTagSinglePayload(&v45[v195], 0, 1, v113);
            }

            *&v45[v198[6]] = *&v46[v198[6]];
            v156 = v198[7];
            v157 = &v45[v156];
            v158 = &v46[v156];
            v157[4] = v158[4];
            *v157 = *v158;
            swift_storeEnumTagMultiPayload();
            v43 = v192;
            break;
          case 7u:
            v193 = v42;
            v115 = sub_1DD0DB4BC();
            (*(*(v115 - 8) + 32))(v45, v46, v115);
            v199 = type metadata accessor for USOParse();
            v116 = v199[5];
            v117 = sub_1DD0DB3EC();
            v196 = v116;
            v118 = &v46[v116];
            v119 = v117;
            if (__swift_getEnumTagSinglePayload(v118, 1, v117))
            {
              v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v45[v196], &v46[v196], *(*(v120 - 8) + 64));
            }

            else
            {
              (*(*(v119 - 8) + 32))(&v45[v196], &v46[v196], v119);
              __swift_storeEnumTagSinglePayload(&v45[v196], 0, 1, v119);
            }

            *&v45[v199[6]] = *&v46[v199[6]];
            v159 = v199[7];
            v160 = &v45[v159];
            v161 = &v46[v159];
            v160[4] = v161[4];
            *v160 = *v161;
            v162 = type metadata accessor for LinkParse();
            *&v45[v162[5]] = *&v46[v162[5]];
            *&v45[v162[6]] = *&v46[v162[6]];
            *&v45[v162[7]] = *&v46[v162[7]];
            swift_storeEnumTagMultiPayload();
            v42 = v193;
            break;
          case 8u:
            v88 = sub_1DD0DD12C();
            (*(*(v88 - 8) + 32))(v45, v46, v88);
            v89 = type metadata accessor for NLRouterParse();
            *&v45[*(v89 + 20)] = *&v46[*(v89 + 20)];
            v190 = v45;
            v191 = v89;
            v90 = *(v89 + 24);
            v194 = &v45[v90];
            v91 = &v46[v90];
            v92 = type metadata accessor for USOParse();
            v197 = v91;
            v93 = v91;
            v94 = v92;
            if (__swift_getEnumTagSinglePayload(v93, 1, v92))
            {
              v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
              memcpy(v194, v197, *(*(v95 - 8) + 64));
              v96 = v190;
            }

            else
            {
              v135 = sub_1DD0DB4BC();
              (*(*(v135 - 8) + 32))(v194, v197, v135);
              v189 = v94;
              v136 = *(v94 + 20);
              v188 = sub_1DD0DB3EC();
              if (__swift_getEnumTagSinglePayload(&v197[v136], 1, v188))
              {
                v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                memcpy(&v194[v136], &v197[v136], *(*(v137 - 8) + 64));
              }

              else
              {
                (*(*(v188 - 8) + 32))(&v194[v136], &v197[v136]);
                __swift_storeEnumTagSinglePayload(&v194[v136], 0, 1, v188);
              }

              v96 = v190;
              *&v194[*(v189 + 24)] = *&v197[*(v189 + 24)];
              v163 = *(v189 + 28);
              v164 = &v194[v163];
              v165 = &v197[v163];
              v164[4] = v165[4];
              *v164 = *v165;
              __swift_storeEnumTagSinglePayload(v194, 0, 1, v189);
            }

            *&v96[*(v191 + 28)] = *&v46[*(v191 + 28)];
            goto LABEL_79;
          case 9u:
            v107 = sub_1DD0DD08C();
            (*(*(v107 - 8) + 32))(v45, v46, v107);
LABEL_79:
            swift_storeEnumTagMultiPayload();
            break;
          default:
            memcpy(v45, v46, *(*(v203 - 8) + 64));
            break;
        }

        *&v42[__dst[6]] = *&v43[__dst[6]];
        v166 = __dst[7];
        v167 = &v42[v166];
        v168 = &v43[v166];
        v169 = *(v168 + 1);
        *v167 = *v168;
        *(v167 + 1) = v169;
        *(v167 + 4) = *(v168 + 4);
        v42[__dst[8]] = v43[__dst[8]];
        v170 = v221;
        *&v23[v221[6]] = *&v24[v221[6]];
        *&v23[v221[7]] = *&v24[v221[7]];
        *&v23[v221[8]] = *&v24[v221[8]];
        v171 = v221[9];
        v172 = &v23[v171];
        v173 = &v24[v171];
        v174 = type metadata accessor for ActionParaphrase(0);
        if (__swift_getEnumTagSinglePayload(v173, 1, v174))
        {
          v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B28, &unk_1DD0EE960);
          memcpy(v172, v173, *(*(v175 - 8) + 64));
        }

        else
        {
          *v172 = *v173;
          v176 = *(v174 + 20);
          __dstc = &v172[v176];
          v177 = &v173[v176];
          v178 = type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0);
          if (__swift_getEnumTagSinglePayload(v177, 1, v178))
          {
            v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B20, &qword_1DD0F0B00);
            memcpy(__dstc, v177, *(*(v179 - 8) + 64));
          }

          else
          {
            v180 = *(v177 + 1);
            *__dstc = *v177;
            *(__dstc + 1) = v180;
            v206 = *(v178 + 24);
            v181 = sub_1DD0DB66C();
            (*(*(v181 - 8) + 32))(&__dstc[v206], &v177[v206], v181);
            __swift_storeEnumTagSinglePayload(__dstc, 0, 1, v178);
          }

          __swift_storeEnumTagSinglePayload(v172, 0, 1, v174);
          v170 = v221;
        }

        v182 = *(v170 + 40);
        if (__swift_getEnumTagSinglePayload(&v24[v182], 1, v211))
        {
          v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
          memcpy(&v23[v182], &v24[v182], *(*(v183 - 8) + 64));
        }

        else
        {
          (v200)(&v23[v182], &v24[v182], v211);
          __swift_storeEnumTagSinglePayload(&v23[v182], 0, 1, v211);
        }

        v23[*(v170 + 44)] = v24[*(v170 + 44)];
        __swift_storeEnumTagSinglePayload(v23, 0, 1, v170);
        v21 = v218;
      }

      v184 = *(v21 + 40);
      v185 = &v19[v184];
      v186 = &v20[v184];
      v187 = *(v186 + 1);
      *v185 = *v186;
      *(v185 + 1) = v187;
      goto LABEL_91;
    case 2:
      *a1 = *a2;
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5040, &qword_1DD0F0CF8);
      v8 = *(v7 + 48);
      v9 = a1 + v8;
      v10 = a2 + v8;
      v11 = sub_1DD0DB04C();
      (*(*(v11 - 8) + 32))(v9, v10, v11);
      v12 = type metadata accessor for Input(0);
      v13 = v12[5];
      v14 = &v9[v13];
      v15 = &v10[v13];
      v16 = type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v17 = sub_1DD0DC76C();
          (*(*(v17 - 8) + 32))(v14, v15, v17);
          goto LABEL_70;
        case 1u:
          v66 = sub_1DD0DC76C();
          (*(*(v66 - 8) + 32))(v14, v15, v66);
          v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *&v14[*(v67 + 48)] = *&v15[*(v67 + 48)];
          goto LABEL_70;
        case 4u:
          v71 = sub_1DD0DB1EC();
          (*(*(v71 - 8) + 32))(v14, v15, v71);
          goto LABEL_70;
        case 6u:
          v220 = v7;
          v80 = sub_1DD0DB4BC();
          (*(*(v80 - 8) + 32))(v14, v15, v80);
          v216 = type metadata accessor for USOParse();
          v81 = v216[5];
          v82 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v15[v81], 1, v82))
          {
            v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v14[v81], &v15[v81], *(*(v83 - 8) + 64));
          }

          else
          {
            (*(*(v82 - 8) + 32))(&v14[v81], &v15[v81], v82);
            __swift_storeEnumTagSinglePayload(&v14[v81], 0, 1, v82);
          }

          *&v14[v216[6]] = *&v15[v216[6]];
          v128 = v216[7];
          v129 = &v14[v128];
          v130 = &v15[v128];
          v129[4] = v130[4];
          *v129 = *v130;
          goto LABEL_59;
        case 7u:
          v220 = v7;
          v84 = sub_1DD0DB4BC();
          (*(*(v84 - 8) + 32))(v14, v15, v84);
          v217 = type metadata accessor for USOParse();
          v85 = v217[5];
          v86 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v15[v85], 1, v86))
          {
            v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v14[v85], &v15[v85], *(*(v87 - 8) + 64));
          }

          else
          {
            (*(*(v86 - 8) + 32))(&v14[v85], &v15[v85], v86);
            __swift_storeEnumTagSinglePayload(&v14[v85], 0, 1, v86);
          }

          *&v14[v217[6]] = *&v15[v217[6]];
          v131 = v217[7];
          v132 = &v14[v131];
          v133 = &v15[v131];
          v132[4] = v133[4];
          *v132 = *v133;
          v134 = type metadata accessor for LinkParse();
          *&v14[v134[5]] = *&v15[v134[5]];
          *&v14[v134[6]] = *&v15[v134[6]];
          *&v14[v134[7]] = *&v15[v134[7]];
LABEL_59:
          swift_storeEnumTagMultiPayload();
          v7 = v220;
          break;
        case 8u:
          v56 = sub_1DD0DD12C();
          (*(*(v56 - 8) + 32))(v14, v15, v56);
          v57 = type metadata accessor for NLRouterParse();
          *&v14[*(v57 + 20)] = *&v15[*(v57 + 20)];
          v205 = v57;
          v58 = *(v57 + 24);
          v213 = &v14[v58];
          v59 = &v15[v58];
          v60 = type metadata accessor for USOParse();
          __dstb = v59;
          v61 = v59;
          v62 = v60;
          if (__swift_getEnumTagSinglePayload(v61, 1, v60))
          {
            v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(v213, __dstb, *(*(v63 - 8) + 64));
          }

          else
          {
            v103 = sub_1DD0DB4BC();
            (*(*(v103 - 8) + 32))(v213, __dstb, v103);
            v202 = v62;
            v104 = *(v62 + 20);
            v105 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&__dstb[v104], 1, v105))
            {
              v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v213[v104], &__dstb[v104], *(*(v106 - 8) + 64));
            }

            else
            {
              (*(*(v105 - 8) + 32))(&v213[v104], &__dstb[v104], v105);
              __swift_storeEnumTagSinglePayload(&v213[v104], 0, 1, v105);
            }

            *&v213[*(v202 + 24)] = *&__dstb[*(v202 + 24)];
            v149 = *(v202 + 28);
            v150 = &v213[v149];
            v151 = &__dstb[v149];
            v150[4] = v151[4];
            *v150 = *v151;
            __swift_storeEnumTagSinglePayload(v213, 0, 1, v202);
          }

          *&v14[*(v205 + 28)] = *&v15[*(v205 + 28)];
          goto LABEL_70;
        case 9u:
          v69 = sub_1DD0DD08C();
          (*(*(v69 - 8) + 32))(v14, v15, v69);
LABEL_70:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(v14, v15, *(*(v16 - 8) + 64));
          break;
      }

      *&v9[v12[6]] = *&v10[v12[6]];
      v152 = v12[7];
      v153 = &v9[v152];
      v154 = &v10[v152];
      v155 = *(v154 + 1);
      *v153 = *v154;
      *(v153 + 1) = v155;
      *(v153 + 4) = *(v154 + 4);
      v9[v12[8]] = v10[v12[8]];
      *(a1 + *(v7 + 64)) = *(a2 + *(v7 + 64));
LABEL_91:
      swift_storeEnumTagMultiPayload();
      return a1;
  }

  v39 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v39);
}

uint64_t sub_1DCD69E14()
{
  v8 = MEMORY[0x1E69E5D20] + 64;
  v9 = MEMORY[0x1E69E5D20] + 64;
  result = type metadata accessor for Input(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8);
    swift_getTupleTypeLayout3();
    v10 = &v7;
    result = type metadata accessor for ExecuteResponse(319);
    if (v3 <= 0x3F)
    {
      v4 = *(result - 8);
      swift_getTupleTypeLayout2();
      v11 = &v6;
      v12 = &unk_1DD0F0F20;
      v13 = &unk_1DD0F0F20;
      v14 = &unk_1DD0F0F20;
      v15 = &unk_1DD0F0F20;
      v16 = &unk_1DD0F0F38;
      swift_getTupleTypeLayout3();
      v17 = &v5;
      v18 = &unk_1DD0F0F68;
      v19 = &unk_1DD0F0F20;
      v20 = &unk_1DD0F0F20;
      v21 = MEMORY[0x1E69E5CE0] + 64;
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FlowTrace(_BYTE *result, int a2, int a3)
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

void sub_1DCD6A060()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5278, &qword_1DD0F10C0);
  swift_allocObject();
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD6A138@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 128);
  swift_beginAccess();
  v8 = *(v3 + 80);
  v9 = *(v3 + 96);
  v5 = type metadata accessor for ForEach.State();
  OUTLINED_FUNCTION_2(v5);
  return (*(v6 + 16))(a1, v1 + v4);
}

uint64_t sub_1DCD6A1FC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 128);
  swift_beginAccess();
  v8 = *(v3 + 80);
  v9 = *(v3 + 96);
  v5 = type metadata accessor for ForEach.State();
  OUTLINED_FUNCTION_2(v5);
  (*(v6 + 40))(v1 + v4, a1);
  return swift_endAccess();
}

void sub_1DCD6A2C8()
{
  OUTLINED_FUNCTION_66();
  v2 = (v0 + *(v1 + 136));
  v3 = *v2;
  v4 = v2[1];
  sub_1DD0DCF8C();
}

void ForEach.__allocating_init(_:body:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 80);
  OUTLINED_FUNCTION_0_1();
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_16();
  v13 = OUTLINED_FUNCTION_11_37(v12);
  v14(v13, a1, v7);
  v15 = swift_allocObject();
  OUTLINED_FUNCTION_14_36(v15);
  v16[5] = v17;
  v16[6] = a2;
  v16[7] = a3;
  ForEach.__allocating_init(_:body:stride:)();
}

void ForEach.__allocating_init(_:body:stride:)()
{
  OUTLINED_FUNCTION_50();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = *(v0 + 80);
  OUTLINED_FUNCTION_0_1();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_16();
  (*(v9 + 16))(v15 - v14, v6, v7);
  v16 = swift_allocObject();
  OUTLINED_FUNCTION_14_36(v16);
  v17[5] = v18;
  v17[6] = v4;
  v17[7] = v2;
  ForEach.__allocating_init(_:body:stride:)();
}

{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  ForEach.init(_:body:stride:)();
}

uint64_t sub_1DCD6A55C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v3 = a3(a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA5288, &qword_1DD0F10C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD0E07C0;
  *(inited + 32) = v3;
  v5 = static FlowsBuilder.buildBlock(_:)();
  swift_setDeallocating();
  sub_1DCC65794();
  return v5;
}

void ForEach.__allocating_init(_:body:)(uint64_t a1)
{
  v3 = *(v1 + 80);
  OUTLINED_FUNCTION_0_1();
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_16();
  v9 = OUTLINED_FUNCTION_11_37(v8);
  v10(v9, a1, v3);
  ForEach.__allocating_init(_:body:stride:)();
}

uint64_t sub_1DCD6A74C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  v7 = *(v2 + 56);
  return sub_1DCD6A55C(a1, a2, *(v2 + 48));
}

void ForEach.init(_:body:stride:)()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = *v1;
  v9 = *(*v1 + 80);
  v17 = *(*v1 + 88);
  v18 = *(*v1 + 104);
  v10 = type metadata accessor for ForEach.State();
  OUTLINED_FUNCTION_9(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v13, v14);
  (*(*(v9 - 8) + 16))(v1 + *(v8 + 112), v7, v9);
  OUTLINED_FUNCTION_55_1();
  v16 = (v1 + *(v15 + 120));
  *v16 = v5;
  v16[1] = v3;
  sub_1DD0DCF8C();
}

void sub_1DCD6AA08()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v57 = v2;
  v3 = *v0;
  v58 = *(v3 + 80);
  v4 = *(*(&v58 + 1) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = OUTLINED_FUNCTION_9(AssociatedTypeWitness);
  v52 = v7;
  v53 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v49 - v12;
  v56 = swift_getAssociatedTypeWitness();
  v14 = OUTLINED_FUNCTION_9(v56);
  v16 = v15;
  v18 = *(v17 + 64);
  v20 = MEMORY[0x1EEE9AC00](v14, v19);
  v54 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v49 - v22;
  v24 = *(v3 + 96);
  v60 = v58;
  v61 = v24;
  v55 = v24;
  v25 = type metadata accessor for ForEach.State();
  OUTLINED_FUNCTION_2(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v49 - v30;
  sub_1DCD6A138(&v49 - v30);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v50 = v16;
    v51 = *(v16 + 32);
    v51(v23, v31, v56);
    v35 = *v1;
    v36 = v1 + *(*v1 + 120);
    v37 = *(v36 + 1);
    v49 = *v36;
    v38 = v1 + *(v35 + 112);
    OUTLINED_FUNCTION_21_20();
    v39 = sub_1DD0DE66C();
    v40 = v52;
    v41 = v53;
    (*(v52 + 16))(v13);
    v39(&v60, 0);
    v42 = v49(v23, v13);
    (*(v40 + 8))(v13, v41);
    type metadata accessor for LoopBodyFlow();
    swift_allocObject();
    sub_1DCDCC65C(v42);
    v43 = v50;
    v44 = v54;
    v45 = v56;
    (*(v50 + 16))(v54, v23, v56);
    v46 = (*(v43 + 80) + 56) & ~*(v43 + 80);
    v47 = swift_allocObject();
    v48 = v55;
    *(v47 + 16) = v58;
    *(v47 + 32) = v48;
    *(v47 + 48) = v1;
    v51((v47 + v46), v44, v45);
    sub_1DD0DCF8C();
  }

  v59 = *v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA5170, &qword_1DD0F0FD8);
  v33 = v57;
  v57[3] = v32;
  v33[4] = &protocol witness table for Conclude<A>;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v33);
  v60 = v58;
  v61 = v55;
  type metadata accessor for ForEach();
  ActingFlow.conclude(with:)(&v59, boxed_opaque_existential_1Tm);
  OUTLINED_FUNCTION_49();
}

uint64_t sub_1DCD6AED8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v22[1] = a3;
  v5 = *a2;
  v6 = *(*a2 + 88);
  v7 = *(*a2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23 = *(AssociatedTypeWitness - 8);
  v9 = *(v23 + 64);
  v11 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v10);
  MEMORY[0x1EEE9AC00](v11, v12);
  v25[0] = v7;
  v25[1] = v6;
  v26 = *(v5 + 96);
  v13 = type metadata accessor for ForEach.State();
  v14 = *(*(v13 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = v22 - v18;
  sub_1DCB0DF6C(a1, v25);
  if (!swift_dynamicCast() || v24 != 1)
  {
    v22[0] = v13;
    v21 = *(*a2 + 112);
    sub_1DCD6A2C8();
  }

  *v19 = 1;
  swift_storeEnumTagMultiPayload();
  return sub_1DCD6A1FC(v19);
}

void sub_1DCD6B22C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_50();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9(AssociatedTypeWitness);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &a9 - v29;
  v32 = (v31 + 8);
  OUTLINED_FUNCTION_86();
  if ((v23 & 0x8000000000000000) == 0)
  {
    sub_1DD0DE61C();
    OUTLINED_FUNCTION_128();
    v33 = sub_1DD0DE60C();
    (*v32)(v30, AssociatedTypeWitness);
    if (v33 <= v23)
    {
      OUTLINED_FUNCTION_86();
      sub_1DD0DE61C();
    }

    else
    {
      OUTLINED_FUNCTION_128();
      sub_1DD0DE5EC();
    }

LABEL_8:
    OUTLINED_FUNCTION_49();
    return;
  }

  sub_1DD0DE5CC();
  OUTLINED_FUNCTION_128();
  v34 = sub_1DD0DE60C();
  v35 = *v32;
  (*v32)(v30, AssociatedTypeWitness);
  v36 = __OFADD__(v34, v23);
  v37 = v34 + v23;
  if (!v36)
  {
    OUTLINED_FUNCTION_86();
    sub_1DD0DE5CC();
    if (v37 > 0)
    {
      OUTLINED_FUNCTION_128();
      sub_1DD0DE5EC();
      v35(v30, AssociatedTypeWitness);
    }

    goto LABEL_8;
  }

  __break(1u);
}

unint64_t sub_1DCD6B3DC(uint64_t a1)
{
  v2 = v1;
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9(AssociatedTypeWitness);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v31 - v13;
  OUTLINED_FUNCTION_0_1();
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v17, v18);
  OUTLINED_FUNCTION_16();
  v21 = (v20 - v19);
  (*(v22 + 16))(v20 - v19, v2, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = *v21;
    v31 = 0;
    v32 = 0xE000000000000000;
    sub_1DD0DEC1C();

    v31 = 0xD000000000000017;
    v32 = 0x80000001DD11AFD0;
    if (v23)
    {
      v24 = 1702195828;
    }

    else
    {
      v24 = 0x65736C6166;
    }

    if (v23)
    {
      v25 = 0xE400000000000000;
    }

    else
    {
      v25 = 0xE500000000000000;
    }

    MEMORY[0x1E12A6780](v24, v25);

    MEMORY[0x1E12A6780](41, 0xE100000000000000);
    return v31;
  }

  else
  {
    (*(v8 + 32))(v14, v21, AssociatedTypeWitness);
    v31 = 0;
    v32 = 0xE000000000000000;
    MEMORY[0x1E12A6780](0x65646E69286E7572, 0xEB00000000203A78);
    OUTLINED_FUNCTION_86();
    sub_1DD0DF07C();
    MEMORY[0x1E12A6780](41, 0xE100000000000000);
    v26 = v31;
    v27 = *(v8 + 8);
    v28 = OUTLINED_FUNCTION_86();
    v29(v28);
  }

  return v26;
}

uint64_t sub_1DCD6B624(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7239026 && a2 == 0xE300000000000000;
  if (v3 || (sub_1DD0DF0AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701736292 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD0DF0AC();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1DCD6B6EC(char a1)
{
  if (a1)
  {
    return 1701736292;
  }

  else
  {
    return 7239026;
  }
}

uint64_t sub_1DCD6B714(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001DD11AFF0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DD0DF0AC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}