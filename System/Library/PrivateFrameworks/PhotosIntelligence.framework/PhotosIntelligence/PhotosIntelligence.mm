uint64_t sub_1C6F5F820(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6F5F858()
{
  sub_1C6F5FAF8(319, &qword_1EDD0CF70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_1C6F5FAF8(319, &qword_1EDD0D078, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      sub_1C6F5FAF8(319, &qword_1EDD0D070, &type metadata for QueryToken, MEMORY[0x1E69E62F8]);
      v1 = v5;
      if (v6 <= 0x3F)
      {
        sub_1C7225540(319, &qword_1EDD06BF0, &qword_1EC219068);
        v1 = v7;
        if (v8 <= 0x3F)
        {
          sub_1C6F5FAF8(319, &qword_1EDD0DDD0, &type metadata for TemplatedPromptMetadata, MEMORY[0x1E69E6720]);
          v1 = v9;
          if (v10 <= 0x3F)
          {
            sub_1C7225540(319, &qword_1EDD0CF38, &qword_1EC219500);
            v1 = v11;
            if (v12 <= 0x3F)
            {
              sub_1C6F5FB48();
              v1 = v13;
              if (v14 <= 0x3F)
              {
                sub_1C6F5FAF8(319, &qword_1EDD0B070, &type metadata for PromptSuggestion.MusicProperties, MEMORY[0x1E69E6720]);
                v1 = v15;
                if (v16 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return v1;
}

void sub_1C6F5FAF8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1C6F5FB48()
{
  if (!qword_1EDD0F9D0)
  {
    sub_1C754DF6C();
    v0 = sub_1C755149C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD0F9D0);
    }
  }
}

void sub_1C6F5FBC0()
{
  sub_1C6F5FB48();
  if (v0 <= 0x3F)
  {
    sub_1C6F5FAF8(319, &qword_1EDD0CED0, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C6F5FCB8()
{
  result = type metadata accessor for MemoryCreationAvailabilityMonitor.Configuration(319);
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C6F5FD7C()
{
  result = sub_1C754FFEC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t static MemoryCreationAvailabilityMonitor.defaultCheckingHardwareIsEligibleForGreymatter.getter()
{
  if (qword_1EDD07520 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EDD07528);
  v0 = byte_1EDD0752C;
  os_unfair_lock_unlock(&dword_1EDD07528);
  if (v0 == 2)
  {
    v1 = [objc_opt_self() standardUserDefaults];
    v2 = sub_1C755065C();
    v3 = [v1 stringForKey_];

    if (v3)
    {
      v4 = sub_1C755068C();
      v6 = v5;

      static MemoryCreationAvailabilityMonitor.availabilityState(from:)(v4, v6, &v27);
      v8 = v27;
      v7 = v28;
      v9 = v29;
      v25 = v30;
      v10 = v35;
      v11 = v33 | v31;
      if ((~v27 & 0xFE00FE00000000FELL) != 0 || ((v29 & 0xFFFFFFFFFFFFFFFELL) == 0xFFE ? (v12 = v11 > 1) : (v12 = 1), !v12 ? (v13 = v35 > 1u) : (v13 = 1), v13))
      {
        if (v35 < 0xC0u || v11 | v27 | v28 | v29 | v30 | v32 | v34 || v35 != 192)
        {
          v23 = v34;
          v24 = v32;
          if (qword_1EDD0FB68 != -1)
          {
            OUTLINED_FUNCTION_0_165();
            swift_once();
          }

          v15 = sub_1C754FF1C();
          __swift_project_value_buffer(v15, qword_1EDD0FB70);
          sub_1C75504FC();
          v16 = sub_1C754FEEC();
          v17 = sub_1C75511BC();

          log = v16;
          if (os_log_type_enabled(v16, v17))
          {
            OUTLINED_FUNCTION_13_3();
            v21 = v7;
            v18 = swift_slowAlloc();
            OUTLINED_FUNCTION_98();
            v19 = swift_slowAlloc();
            v26 = v19;
            *v18 = 136315138;
            v20 = sub_1C6F765A4(v4, v6, &v26);

            *(v18 + 4) = v20;
            __swift_destroy_boxed_opaque_existential_1(v19);
            OUTLINED_FUNCTION_235();
            MEMORY[0x1CCA5F8E0]();
            v7 = v21;
            OUTLINED_FUNCTION_235();
            MEMORY[0x1CCA5F8E0]();
          }

          else
          {
          }

          LOBYTE(v0) = v10 >= 0xC0 && (v11 | v8 | v7 | v9 | v25 | v24 | v23) != 0;
          goto LABEL_15;
        }
      }
    }

    LOBYTE(v0) = static MemoryCreationAvailabilityMonitor.hardwareIsEligibleForGreymatter()();
LABEL_15:
    os_unfair_lock_lock(&dword_1EDD07528);
    byte_1EDD0752C = v0 & 1;
    os_unfair_lock_unlock(&dword_1EDD07528);
  }

  return v0 & 1;
}

uint64_t static MemoryCreationAvailabilityMonitor.hardwareIsEligibleForGreymatter()()
{
  v0 = MobileGestalt_get_current_device();
  if (!v0)
  {
    __break(1u);
  }

  v1 = v0;
  deviceSupportsGenerativeModelSystems = MobileGestalt_get_deviceSupportsGenerativeModelSystems();

  if (deviceSupportsGenerativeModelSystems)
  {
    return 1;
  }

  os_eligibility_get_domain_answer();
  return 0;
}

size_t OUTLINED_FUNCTION_0_0(void *a1)
{
  result = _swift_stdlib_malloc_size(a1);
  a1[2] = v1;
  a1[3] = 2 * ((result - 32) / v2);
  return result;
}

void OUTLINED_FUNCTION_109()
{

  JUMPOUT(0x1CCA5F8E0);
}

uint64_t OUTLINED_FUNCTION_0_1()
{

  return sub_1C7551D2C();
}

uint64_t OUTLINED_FUNCTION_0_8()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_10()
{

  return sub_1C7551AAC();
}

void OUTLINED_FUNCTION_6(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_0_13()
{

  return sub_1C7551C1C();
}

uint64_t OUTLINED_FUNCTION_9(unint64_t *a1)
{

  return sub_1C6FF60E4(a1);
}

void OUTLINED_FUNCTION_0_25()
{

  sub_1C6FB1814();
}

uint64_t OUTLINED_FUNCTION_0_27()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_0_33()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_0_34()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_5()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_0_38()
{

  return sub_1C7551C1C();
}

uint64_t OUTLINED_FUNCTION_1()
{

  return sub_1C7551D2C();
}

uint64_t OUTLINED_FUNCTION_0_40()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_0_41()
{

  return sub_1C7551CEC();
}

uint64_t OUTLINED_FUNCTION_0_45()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_46()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_49()
{

  return sub_1C70D5D98(v0, type metadata accessor for MusicCurationDiagnostics);
}

uint64_t OUTLINED_FUNCTION_0_50()
{
}

void OUTLINED_FUNCTION_0_52()
{

  sub_1C6FB334C();
}

uint64_t OUTLINED_FUNCTION_0_55()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_58()
{

  return sub_1C755065C();
}

void OUTLINED_FUNCTION_0_60()
{

  JUMPOUT(0x1CCA5F8E0);
}

void OUTLINED_FUNCTION_0_65()
{

  JUMPOUT(0x1CCA5F8E0);
}

uint64_t OUTLINED_FUNCTION_62(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x1E69E9820];
  return result;
}

uint64_t OUTLINED_FUNCTION_0_68()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_74()
{
}

uint64_t OUTLINED_FUNCTION_0_77()
{

  return sub_1C75513EC();
}

uint64_t OUTLINED_FUNCTION_0_79()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_82()
{

  return sub_1C75505FC();
}

uint64_t OUTLINED_FUNCTION_0_87()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_90()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_100()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_104()
{

  return sub_1C755196C();
}

uint64_t OUTLINED_FUNCTION_0_105()
{

  return swift_once();
}

void OUTLINED_FUNCTION_0_108()
{
  *(v0 - 228) = 1;
  *(v0 - 224) = 1;
  *(v0 - 220) = 1;
  *(v0 - 216) = 1;
}

uint64_t OUTLINED_FUNCTION_0_109()
{

  return sub_1C7551AAC();
}

uint64_t OUTLINED_FUNCTION_0_110()
{

  return swift_once();
}

void OUTLINED_FUNCTION_0_111()
{

  sub_1C71C8A5C();
}

uint64_t OUTLINED_FUNCTION_0_112()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_115()
{

  return swift_once();
}

void OUTLINED_FUNCTION_0_116()
{

  sub_1C6FB1B5C();
}

__n128 OUTLINED_FUNCTION_0_119(__n128 *a1)
{
  result = *(v3 - 192);
  a1[1] = result;
  a1[3].n128_u64[1] = v1;
  a1[4].n128_u64[0] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_27()
{

  return sub_1C754F1AC();
}

uint64_t OUTLINED_FUNCTION_0_121()
{

  return swift_beginAccess();
}

unint64_t OUTLINED_FUNCTION_0_122()
{

  return sub_1C6FB5E8C();
}

uint64_t OUTLINED_FUNCTION_0_123()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_1()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_128()
{

  return swift_once();
}

void OUTLINED_FUNCTION_0_131()
{

  sub_1C6FB44D0();
}

uint64_t OUTLINED_FUNCTION_0_132()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_133()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_139()
{

  return sub_1C7551D2C();
}

uint64_t OUTLINED_FUNCTION_0_150()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_0_156()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_157()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_158()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_159()
{

  return swift_once();
}

void OUTLINED_FUNCTION_0_160(char a1@<W8>)
{
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 56) = a1;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0;
  *(v1 + 80) = v2;
  *(v1 + 88) = 0;
  *(v1 + 104) = 0;
  *(v1 + 112) = 0;
  *(v1 + 96) = 0;
}

uint64_t OUTLINED_FUNCTION_0_164()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_0_167()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_179(uint64_t a1)
{
  *(v2 + 152) = *(v1 + *(a1 + 24));

  return sub_1C75504FC();
}

uint64_t OUTLINED_FUNCTION_0_182()
{
  __swift_project_boxed_opaque_existential_1(*(v0 + 48), *(*(v0 + 48) + 24));

  return sub_1C754F1AC();
}

uint64_t OUTLINED_FUNCTION_0_183()
{

  return sub_1C743D9F8(v0, type metadata accessor for QueryTokenCategoryType);
}

uint64_t OUTLINED_FUNCTION_0_184()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_186()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_189()
{

  return sub_1C743D9F8(v0, type metadata accessor for QueryTokenCategoryType);
}

uint64_t OUTLINED_FUNCTION_0_192()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_196()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_205()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_208()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_0_213()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_214()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_216()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_217()
{

  return sub_1C755155C();
}

uint64_t OUTLINED_FUNCTION_0_219()
{

  return sub_1C755176C();
}

uint64_t sub_1C6F61E90(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    v2 = *(result + 16) & 1;
    v3 = *(result + 32) & 1;
    v4 = *(result + 48) & 1;
    v5 = *(result + 64) & 1 | (a2 << 6);
    *result &= 0x1FF01FFFFFFFF01uLL;
    *(result + 16) = v2;
    *(result + 32) = v3;
    *(result + 48) = v4;
    *(result + 64) = v5;
  }

  else
  {
    *result = (a2 - 3) & 1 | (((a2 - 3) >> 1) << 8);
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0;
    *(result + 64) = -64;
  }

  return result;
}

uint64_t sub_1C6F61F38()
{
  result = sub_1C754E39C();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t MemoryCreationAvailabilityMonitor.Configuration.init(stateUpdatePollingFrequencySeconds:enableProcessingChecks:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, _BYTE *a3@<X8>)
{
  v6 = sub_1C754FFEC();
  OUTLINED_FUNCTION_3_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00]();
  OUTLINED_FUNCTION_14_0();
  v11 = (v10 - v9);
  *a3 = a2;
  v12 = type metadata accessor for MemoryCreationAvailabilityMonitor.Configuration(0);
  v13 = *(v12 + 20);
  *&a3[v13] = a1;
  v14 = *MEMORY[0x1E69E7F48];
  v15 = *(v8 + 104);
  v15(&a3[v13], v14, v6);
  v16 = 10;
  if (a1 / 10 < 10)
  {
    v16 = a1 / 10;
  }

  *v11 = v16;
  v15(v11, v14, v6);
  return (*(v8 + 32))(&a3[*(v12 + 24)], v11, v6);
}

uint64_t OUTLINED_FUNCTION_2_1()
{

  return sub_1C7551DBC();
}

size_t OUTLINED_FUNCTION_2_2(void *a1)
{
  result = _swift_stdlib_malloc_size(a1);
  a1[2] = v1;
  a1[3] = 2 * ((result - 32) / 8);
  return result;
}

unint64_t OUTLINED_FUNCTION_2_3(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v5 = (*(a5 + 48) + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  return result;
}

BOOL OUTLINED_FUNCTION_32(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_2_12()
{

  return sub_1C7551D0C();
}

uint64_t OUTLINED_FUNCTION_6_2()
{

  return sub_1C7551DBC();
}

BOOL OUTLINED_FUNCTION_66(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_2_14()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_20_0()
{

  return swift_allocObject();
}

void *OUTLINED_FUNCTION_2_18(void *a1)
{

  return sub_1C7082A30(v2, v1, a1);
}

uint64_t OUTLINED_FUNCTION_2_21()
{

  return sub_1C7551B4C();
}

void OUTLINED_FUNCTION_2_26()
{

  JUMPOUT(0x1CCA5CD70);
}

void OUTLINED_FUNCTION_2_28()
{

  JUMPOUT(0x1CCA5CD70);
}

uint64_t OUTLINED_FUNCTION_2_36(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{
  *(v10 + 928) = a9;
  *(v10 + 944) = v14;
  *(v10 + 952) = v12;
  *(v10 + 960) = v11;
  *(v10 + 968) = 0;
  *(v10 + 976) = v13;
  *(v10 + 984) = 0;
  *(v10 + 1000) = 0;
  *(v10 + 992) = 0;
  *(v10 + 1008) = v9;

  return sub_1C70DE848(v10 + 928);
}

uint64_t OUTLINED_FUNCTION_2_38()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_2_42@<X0>(char a1@<W8>, uint64_t a2, uint64_t a3, char a4, int a5, int a6, __int16 a7, char a8, char a9)
{
  a4 = a1;
  a9 = v9;

  return sub_1C6F77548(&a4, &a9);
}

uint64_t OUTLINED_FUNCTION_6_3(unint64_t *a1)
{

  return sub_1C70FBAD0(a1);
}

void OUTLINED_FUNCTION_2_51()
{

  JUMPOUT(0x1CCA5CD70);
}

void OUTLINED_FUNCTION_2_54(uint64_t a1)
{
  *(v1 + 14) = a1;
  *v2 = a1;
  *(v1 + 22) = 2080;
}

uint64_t OUTLINED_FUNCTION_65()
{

  return sub_1C7551D2C();
}

void OUTLINED_FUNCTION_2_55(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_2_57()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_9_0()
{

  return sub_1C7551C6C();
}

uint64_t OUTLINED_FUNCTION_2_63()
{
  *(v1 + 576) = *(v2 + 16);
  *(v1 + 584) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  return v0;
}

__n128 OUTLINED_FUNCTION_2_64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, __n128 a19)
{
  v21 = (*(v20 + 56) + 48 * v19);
  *v21 = a17;
  v21[1] = a18;
  result = a19;
  v21[2] = a19;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_66(uint64_t result)
{
  *(v1 + 64) = result;
  strcpy((v1 + 32), "curationScore");
  *(v1 + 46) = -4864;
  return result;
}

uint64_t (*OUTLINED_FUNCTION_2_67())()
{
  *(v0 + 440) = 3000000000000000000;
  *(v0 + 448) = 0;
  *(v0 + 416) = 0;
  *(v0 + 424) = 0;
  *(v0 + 432) = 1;
  return sub_1C71D7578;
}

void OUTLINED_FUNCTION_19(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_52()
{

  return sub_1C7551C1C();
}

uint64_t OUTLINED_FUNCTION_2_76()
{

  return swift_arrayInitWithCopy();
}

void OUTLINED_FUNCTION_2_77()
{

  sub_1C716D568();
}

__n128 OUTLINED_FUNCTION_2_78(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __n128 a11)
{
  result = a11;
  a1[1] = a11;
  a1[3].n128_u64[1] = v12;
  a1[4].n128_u64[0] = v11;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_83()
{

  return swift_once();
}

_WORD *OUTLINED_FUNCTION_2_89(_WORD *result)
{
  *(v2 - 96) = v1;
  *result = 0;
  return result;
}

void OUTLINED_FUNCTION_2_91()
{

  sub_1C6FB44D0();
}

id OUTLINED_FUNCTION_2_92(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_2_99()
{

  return sub_1C7551A2C();
}

uint64_t OUTLINED_FUNCTION_2_104()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_107()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_108()
{
  __swift_project_boxed_opaque_existential_1(*(v0 + 456), *(*(v0 + 456) + 24));

  return sub_1C754F1AC();
}

uint64_t OUTLINED_FUNCTION_2_109()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_123()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_124()
{
  __swift_project_boxed_opaque_existential_1(*(v0 + 1232), *(*(v0 + 1232) + 24));

  return sub_1C754F1AC();
}

uint64_t OUTLINED_FUNCTION_2_125()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_2_129()
{
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);

  return sub_1C754F1AC();
}

void *OUTLINED_FUNCTION_2_138(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char __dst, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char __src)
{

  return memcpy(&__dst, &__src, 0xC0uLL);
}

uint64_t OUTLINED_FUNCTION_2_139(uint64_t result)
{
  *(result + 8) = sub_1C74D5B54;
  v3 = *(v1 + 944);
  *(v2 + 40) = *(v1 + 992);
  *(v2 + 48) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_145()
{

  return sub_1C7551D2C();
}

uint64_t OUTLINED_FUNCTION_2_147@<X0>(uint64_t a1@<X8>)
{

  return static MusicLocalizer.localizedString(forKey:)(v1 + 3, (a1 - 32) | 0x8000000000000000);
}

uint64_t OUTLINED_FUNCTION_2_148@<X0>(uint64_t a1@<X8>)
{

  return static MusicLocalizer.localizedString(forKey:)(0xD00000000000001BLL, (a1 - 32) | 0x8000000000000000);
}

uint64_t OUTLINED_FUNCTION_2_149()
{
}

uint64_t OUTLINED_FUNCTION_2_150()
{

  return swift_once();
}

void OUTLINED_FUNCTION_10_1()
{

  JUMPOUT(0x1CCA5F8E0);
}

uint64_t OUTLINED_FUNCTION_95()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_4_6()
{
}

uint64_t OUTLINED_FUNCTION_20_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_4_8()
{

  return sub_1C7551CDC();
}

void OUTLINED_FUNCTION_4_11()
{

  sub_1C716DD88();
}

__n128 OUTLINED_FUNCTION_4_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int128 a12, __int128 a13, __n128 a14, uint64_t a15)
{
  *a11 = a12;
  *(a11 + 16) = a13;
  result = a14;
  *(a11 + 32) = a14;
  *(a11 + 48) = a15;
  return result;
}

uint64_t OUTLINED_FUNCTION_17_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_164(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3);
}

void OUTLINED_FUNCTION_37()
{

  JUMPOUT(0x1CCA5F8E0);
}

void OUTLINED_FUNCTION_79()
{

  JUMPOUT(0x1CCA5F8E0);
}

uint64_t OUTLINED_FUNCTION_4_19(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = v3;
  a1[2].n128_u64[1] = v2;

  return sub_1C75504FC();
}

uint64_t OUTLINED_FUNCTION_4_23()
{

  return sub_1C7551C6C();
}

BOOL OUTLINED_FUNCTION_7_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_4_27@<X0>(uint64_t a1@<X8>)
{
  *v1 = v2;
  v1[1] = v4;
  v1[2] = ~v5;
  v1[3] = a1;
  v1[4] = v6;
  return v3;
}

void OUTLINED_FUNCTION_4_31()
{

  sub_1C6FB334C();
}

uint64_t OUTLINED_FUNCTION_4_32()
{

  return swift_once();
}

void OUTLINED_FUNCTION_4_33()
{
  *(v2 - 120) = v0;
  *(v2 - 112) = v0 + 56;
  *(v2 - 104) = v1 + 16;
  *(v2 - 128) = v1 + 8;
}

uint64_t OUTLINED_FUNCTION_4_36()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_4_38@<X0>(char a1@<W8>)
{
  *(v1 - 72) = a1;

  return sub_1C7551C7C();
}

uint64_t OUTLINED_FUNCTION_4_40()
{

  return sub_1C7551B4C();
}

uint64_t OUTLINED_FUNCTION_4_41()
{

  return sub_1C755112C();
}

uint64_t OUTLINED_FUNCTION_4_42()
{

  return sub_1C75504FC();
}

__n128 OUTLINED_FUNCTION_4_43(__n128 *a1)
{
  result = *(v1 - 480);
  a1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_44(uint64_t result)
{
  *(v1 + 14) = result;
  *v2 = result;
  *(v1 + 22) = 2080;
  return result;
}

void OUTLINED_FUNCTION_4_46(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, os_log_t log)
{

  _os_log_impl(a1, log, v12, a4, v11, 0xCu);
}

void OUTLINED_FUNCTION_4_47()
{

  JUMPOUT(0x1CCA5CD70);
}

uint64_t OUTLINED_FUNCTION_4_48()
{

  return sub_1C754FEEC();
}

uint64_t OUTLINED_FUNCTION_4_49()
{
  __swift_project_boxed_opaque_existential_1(*(v0 + 376), *(*(v0 + 376) + 24));

  return sub_1C754F1AC();
}

uint64_t OUTLINED_FUNCTION_4_53()
{

  return swift_getAssociatedTypeWitness();
}

void OUTLINED_FUNCTION_4_56()
{
  v1 = *(v0 + 1232) + *(v0 + 1440);
  *(v0 + 1368) = *(v1 + 8);
  *(v0 + 1376) = *(v1 + 16);
}

uint64_t OUTLINED_FUNCTION_4_59()
{

  return sub_1C7551C6C();
}

uint64_t OUTLINED_FUNCTION_4_60()
{

  return sub_1C75516BC();
}

void OUTLINED_FUNCTION_4_62()
{
  v2 = *(v0 + 232);
  *(v0 + 224) = *(v0 + 224);
  *(v0 + 232) = v2;

  JUMPOUT(0x1CCA5CD70);
}

void OUTLINED_FUNCTION_4_64()
{

  sub_1C6FB1B5C();
}

uint64_t OUTLINED_FUNCTION_4_65()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_70()
{

  return static StoryGenerationUtilities.arrayAsSentence(for:includeComma:emptyArrayResult:)(v0, 1, 0);
}

uint64_t OUTLINED_FUNCTION_4_75()
{

  return swift_dynamicCastObjCClass();
}

void OUTLINED_FUNCTION_4_79()
{

  JUMPOUT(0x1CCA5CD70);
}

uint64_t OUTLINED_FUNCTION_4_80()
{
  v2 = *(v0 + 3216);

  return sub_1C7337650(v2, type metadata accessor for TimeExtendedToken);
}

void OUTLINED_FUNCTION_4_84(char a1@<W8>)
{
  *v1 = 0;
  *(v1 + 8) = a1;
  *(v1 + 16) = 0;
  *(v1 + 24) = -1;
  *(v1 + 32) = 0;
  *(v1 + 40) = a1;
  *(v1 + 48) = 0;
  *(v1 + 56) = a1;
}

uint64_t OUTLINED_FUNCTION_4_85()
{
}

uint64_t OUTLINED_FUNCTION_4_87()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_88()
{

  return sub_1C755065C();
}

uint64_t OUTLINED_FUNCTION_4_90()
{

  return swift_once();
}

void OUTLINED_FUNCTION_4_93()
{

  JUMPOUT(0x1CCA5CD70);
}

__n128 OUTLINED_FUNCTION_4_94()
{
  v2 = *(v0 + 16);
  *(v1 - 224) = *v0;
  *(v1 - 208) = v2;
  result = *(v0 + 32);
  v4 = *(v0 + 48);
  *(v1 - 192) = result;
  *(v1 - 176) = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_102()
{

  return sub_1C7551D2C();
}

uint64_t OUTLINED_FUNCTION_4_104()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_4_105(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1C6F6E5B4(v11);
  sub_1C6F6E5B4(v10);
  sub_1C6F6E5B4(v9);
  sub_1C6F6E5B4(a9);
}

uint64_t OUTLINED_FUNCTION_4_107(uint64_t a1)
{

  return static StoryGenerationUtilities.arrayAsSentence(for:includeComma:emptyArrayResult:)(a1, 1, 0);
}

uint64_t OUTLINED_FUNCTION_4_113@<X0>(uint64_t a1@<X1>, char a2@<W8>)
{
  *(a1 + 8) = a2;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_4_115()
{

  return sub_1C7550B9C();
}

uint64_t OUTLINED_FUNCTION_4_118()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

void *MemoryCreationAvailabilityMonitorObservable.init(configuration:photoLibrary:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for MemoryCreationAvailabilityMonitor.Configuration(0);
  v7 = OUTLINED_FUNCTION_76(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14_0();
  v10 = v9 - v8;
  v3[12] = 0;
  sub_1C754E38C();
  sub_1C6F64A38(a1, v10);
  objc_allocWithZone(type metadata accessor for MemoryCreationAvailabilityMonitor(0));
  v11 = a2;
  v3[2] = MemoryCreationAvailabilityMonitor.init(configuration:photoLibrary:)(v10, v11);
  sub_1C755128C();
  memcpy(v3 + 3, __src, 0x41uLL);
  sub_1C6F66458(v3);

  sub_1C6F65CC4(a1);
  return v3;
}

uint64_t OUTLINED_FUNCTION_77()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_57_2()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_57_8@<X0>(uint64_t a1@<X8>)
{
  result = *(*(v1 + 56) + ((v3 << 9) | (8 * a1)));
  *v2 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_57_10()
{
  *v0 = *(v1 - 496);

  return sub_1C75504FC();
}

uint64_t OUTLINED_FUNCTION_57_11()
{

  return sub_1C71656D8();
}

void OUTLINED_FUNCTION_57_13()
{

  JUMPOUT(0x1CCA5E460);
}

uint64_t OUTLINED_FUNCTION_57_14()
{

  return sub_1C75505FC();
}

uint64_t OUTLINED_FUNCTION_57_17()
{
  v5 = (v2 + *(v3 + 52));
  *v5 = v1;
  v5[1] = v0;
}

uint64_t OUTLINED_FUNCTION_57_19()
{
}

__n128 OUTLINED_FUNCTION_57_20(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  result = a9;
  a1[1] = a9;
  a1[3].n128_u64[1] = v9;
  a1[4].n128_u64[0] = v10;
  return result;
}

uint64_t OUTLINED_FUNCTION_57_21()
{
  *(v0 + 288) = 0;
  *(v0 + 296) = 0xE000000000000000;

  return sub_1C755180C();
}

void OUTLINED_FUNCTION_57_22(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_57_31()
{
  *(v0 + 4) = v1;
  *(v0 + 12) = 2080;

  return type metadata accessor for MusicKeywordCompletion();
}

uint64_t OUTLINED_FUNCTION_57_32()
{
  v2 = *(v0 + 672);
  *(v0 + 1048) = v2;

  return sub_1C6FB6304(v2);
}

uint64_t sub_1C6F64A38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MemoryCreationAvailabilityMonitor.Configuration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id MemoryCreationAvailabilityMonitor.init(configuration:photoLibrary:)(uint64_t a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  sub_1C755124C();
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14_0();
  v5 = sub_1C755125C();
  OUTLINED_FUNCTION_3_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14_0();
  v11 = v10 - v9;
  v12 = sub_1C755006C();
  v13 = OUTLINED_FUNCTION_76(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_14_0();
  v14 = OBJC_IVAR____TtC18PhotosIntelligence33MemoryCreationAvailabilityMonitor__listeners;
  *&v2[v14] = [objc_opt_self() weakObjectsHashTable];
  v21 = OBJC_IVAR____TtC18PhotosIntelligence33MemoryCreationAvailabilityMonitor_workQueue;
  sub_1C6F65BE8(0, &unk_1EDD0FA90);
  sub_1C755002C();
  (*(v7 + 104))(v11, *MEMORY[0x1E69E8098], v5);
  v26 = MEMORY[0x1E69E7CC0];
  sub_1C6F65C28(&qword_1EDD0FAA0, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215B30);
  sub_1C6F65C70(&qword_1EDD0FAE0, &unk_1EC215B30);
  sub_1C75515FC();
  *&v2[v21] = sub_1C75512AC();
  *&v2[OBJC_IVAR____TtC18PhotosIntelligence33MemoryCreationAvailabilityMonitor_updateTimer] = 0;
  *&v2[OBJC_IVAR____TtC18PhotosIntelligence33MemoryCreationAvailabilityMonitor__gmsAvailabilityNotifications] = 0;
  *&v2[OBJC_IVAR____TtC18PhotosIntelligence33MemoryCreationAvailabilityMonitor__processingAvailability] = 0;
  sub_1C6F64A38(a1, &v2[OBJC_IVAR____TtC18PhotosIntelligence33MemoryCreationAvailabilityMonitor_configuration]);
  *&v2[OBJC_IVAR____TtC18PhotosIntelligence33MemoryCreationAvailabilityMonitor_photoLibrary] = a2;
  v15 = objc_allocWithZone(MEMORY[0x1E69789D0]);
  v16 = a2;
  v17 = [v15 initWithPhotoLibrary_];
  *&v3[OBJC_IVAR____TtC18PhotosIntelligence33MemoryCreationAvailabilityMonitor_processingAvailabilityReporter] = v17;
  v18 = &v3[OBJC_IVAR____TtC18PhotosIntelligence33MemoryCreationAvailabilityMonitor__state];
  *v18 = 0u;
  *(v18 + 1) = 0u;
  *(v18 + 2) = 0u;
  *(v18 + 3) = 0u;
  v18[64] = -64;
  v3[OBJC_IVAR____TtC18PhotosIntelligence33MemoryCreationAvailabilityMonitor__polling] = 0;
  v25.receiver = v3;
  v25.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v25, sel_init);

  sub_1C6F65CC4(a1);
  return v19;
}

uint64_t OUTLINED_FUNCTION_7_3()
{

  return sub_1C7551B4C();
}

uint64_t OUTLINED_FUNCTION_127()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_41_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_7_6()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_10_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_1_5()
{

  return sub_1C7551D2C();
}

uint64_t OUTLINED_FUNCTION_7_9()
{
  sub_1C6F9ED50(v4, v5, v0 & 1);

  return sub_1C6F9ED50(v1, v2, v3 & 1);
}

uint64_t OUTLINED_FUNCTION_7_11()
{

  return sub_1C7551DBC();
}

uint64_t OUTLINED_FUNCTION_7_13()
{
}

uint64_t OUTLINED_FUNCTION_1_6()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_13_1()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_7_15()
{

  return sub_1C754FEEC();
}

BOOL OUTLINED_FUNCTION_23_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_7_20()
{

  JUMPOUT(0x1CCA5CD70);
}

void OUTLINED_FUNCTION_7_24(uint64_t a1@<X8>)
{
  v5[41] = v1;
  v5[42] = v3;
  v5[43] = v2;
  v5[44] = 0;
  v5[45] = a1;
  v5[46] = 0;
  v5[47] = 0;
  v5[48] = 0;
  v5[49] = v4;
}

uint64_t OUTLINED_FUNCTION_7_27(uint64_t a1, _BYTE *a2)
{
  *a2 = 3;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_7_36()
{

  return sub_1C754FEEC();
}

uint64_t OUTLINED_FUNCTION_11_2()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_7_37(uint64_t a1, float a2)
{
  *a1 = a2;
  *(a1 + 4) = *(v2 + 16);
}

uint64_t OUTLINED_FUNCTION_7_43()
{

  return sub_1C7551DBC();
}

void OUTLINED_FUNCTION_7_48()
{
  *(v0 - 72) = 0;
  *(v0 - 200) = 0;
  *(v0 - 192) = 0;
}

uint64_t OUTLINED_FUNCTION_53_0()
{

  return sub_1C7551B4C();
}

uint64_t OUTLINED_FUNCTION_7_53()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_7_58()
{
}

id OUTLINED_FUNCTION_7_62()
{

  return sub_1C6F6AF98(1684632949, 0xE400000000000000, 1);
}

uint64_t OUTLINED_FUNCTION_7_63()
{

  return type metadata accessor for PhotosSearchBasedStoryAssetsFetcher();
}

uint64_t OUTLINED_FUNCTION_7_64()
{
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);

  return sub_1C754F1AC();
}

uint64_t OUTLINED_FUNCTION_7_67()
{
  v1 = *(v0 + 608);
  __swift_project_boxed_opaque_existential_1(*(v0 + 512), *(*(v0 + 512) + 24));
  return v1;
}

uint64_t OUTLINED_FUNCTION_7_70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 96) = a2;
  *(a1 + 104) = v2;
  *(a1 + 72) = 13;

  return sub_1C755112C();
}

uint64_t OUTLINED_FUNCTION_7_74()
{

  return sub_1C6FE3750(1349545844, 0xE400000000000000, v0);
}

uint64_t OUTLINED_FUNCTION_7_79()
{

  return sub_1C7551DBC();
}

uint64_t OUTLINED_FUNCTION_7_80()
{
}

uint64_t OUTLINED_FUNCTION_7_83()
{

  return type metadata accessor for AssetElector.Error();
}

uint64_t OUTLINED_FUNCTION_7_86@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 176) = a1;

  return sub_1C7551D8C();
}

uint64_t OUTLINED_FUNCTION_7_90()
{
  v2 = *(v0 - 352);

  return sub_1C6F6E5B4(v2);
}

uint64_t OUTLINED_FUNCTION_7_94()
{

  return sub_1C754DECC();
}

uint64_t OUTLINED_FUNCTION_7_95()
{
  sub_1C6F6E5B4(v1);

  return sub_1C6F6E5B4(v0);
}

uint64_t OUTLINED_FUNCTION_7_98()
{

  return sub_1C7469210();
}

uint64_t OUTLINED_FUNCTION_7_108()
{

  return sub_1C7551DBC();
}

uint64_t sub_1C6F65BE8(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1C6F65C28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C6F65C70(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C6F65CC4(uint64_t a1)
{
  v2 = type metadata accessor for MemoryCreationAvailabilityMonitor.Configuration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double storeEnumTagSinglePayload for MemoryCreationAvailabilityState(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 56) = 0;
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 64) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 65) = 1;
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
      v4 = -a2;
      *a1 = ((v4 << 34) | (2 * v4)) & 0xFE00000000FELL | ((v4 >> 14) << 57);
      *(a1 + 8) = 0;
      *(a1 + 16) = (v4 >> 20) & 0xFFE;
      result = 0.0;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0u;
      *(a1 + 49) = 0u;
      return result;
    }

    *(a1 + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void OUTLINED_FUNCTION_9_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_137()
{

  return swift_allocObject();
}

BOOL OUTLINED_FUNCTION_140_0()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_38_6(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_1C754F1AC();
}

void OUTLINED_FUNCTION_56_2()
{
  __swift_destroy_boxed_opaque_existential_1(v0);

  JUMPOUT(0x1CCA5F8E0);
}

_OWORD *OUTLINED_FUNCTION_38_8()
{
  v3 = (*(v0 + 56) + 32 * v1);
  __swift_destroy_boxed_opaque_existential_1(v3);

  return sub_1C6FCABEC((v2 - 112), v3);
}

void OUTLINED_FUNCTION_38_9()
{

  JUMPOUT(0x1CCA5CD70);
}

uint64_t OUTLINED_FUNCTION_58_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_1C6F765A4(v4, v5, va);
}

uint64_t OUTLINED_FUNCTION_38_13()
{

  return sub_1C7551D2C();
}

uint64_t OUTLINED_FUNCTION_24_3()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_38_15()
{

  return swift_once();
}

void OUTLINED_FUNCTION_38_16()
{

  JUMPOUT(0x1CCA5CD70);
}

void OUTLINED_FUNCTION_48_0()
{

  JUMPOUT(0x1CCA5CD70);
}

uint64_t OUTLINED_FUNCTION_38_20(uint64_t a1, uint64_t a2)
{
  *(v2 + 1184) = a1;
  *(v2 + 1192) = a2;

  return sub_1C75506FC();
}

uint64_t OUTLINED_FUNCTION_38_25()
{

  return sub_1C7551BBC();
}

__n128 OUTLINED_FUNCTION_38_28()
{
  v2 = *(v0 + 80);
  *(v1 - 320) = *(v0 + 64);
  *(v1 - 304) = v2;
  *(v1 - 287) = *(v0 + 16);
  *(v1 - 271) = *(v0 + 32);
  result = *(v0 + 47);
  *(v1 - 256) = result;
  return result;
}

void OUTLINED_FUNCTION_38_30(uint64_t a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, __n128 a4@<Q2>)
{
  *(a1 + 32) = a4;
  *(a1 + 48) = a3;
  *(a1 + 57) = a2;
  *(a1 + 73) = 1;
}

uint64_t OUTLINED_FUNCTION_38_31()
{

  return sub_1C7551AFC();
}

uint64_t OUTLINED_FUNCTION_38_34(uint64_t a1)
{

  return sub_1C73B04C4(a1, type metadata accessor for FreeformStoryGeneration.Chronological.Curated.Generator);
}

uint64_t OUTLINED_FUNCTION_38_41()
{
}

uint64_t getEnumTagSinglePayload for MemoryCreationAvailabilityState(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 65))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = (*a1 >> 34) & 0x3F80 | (*a1 >> 1) | (*a1 >> 43) & 0x1FC000 | ((*(a1 + 16) >> 1) << 21);
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1C6F66458(void *a1)
{
  v3 = *&v1[OBJC_IVAR____TtC18PhotosIntelligence33MemoryCreationAvailabilityMonitor_workQueue];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1C6F66A08;
  *(v5 + 24) = v4;
  v9[4] = sub_1C6F669DC;
  v9[5] = v5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1C6F66984;
  v9[3] = &block_descriptor_147;
  v6 = _Block_copy(v9);
  v7 = v1;

  dispatch_sync(v3, v6);
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  else
  {
    [a1 stateDidChangeWithMonitor_];
  }

  return result;
}

uint64_t sub_1C6F665F4()
{

  OUTLINED_FUNCTION_30();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

{
  return sub_1C6F774EC(a2 + 32, a1 + 32);
}

uint64_t block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_31(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_32(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_33(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_36(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_37(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_39(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_41(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_42(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_43(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_45(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_46(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t OUTLINED_FUNCTION_73_0()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_14_4()
{
}

uint64_t OUTLINED_FUNCTION_73_4()
{
  *(*(v1 - 184) + ((v0 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v0;

  return sub_1C7080C2C();
}

uint64_t OUTLINED_FUNCTION_73_12()
{

  return sub_1C7551FFC();
}

uint64_t OUTLINED_FUNCTION_73_14()
{
}

uint64_t OUTLINED_FUNCTION_73_17()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_73_20(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);

  return sub_1C7550D1C();
}

uint64_t OUTLINED_FUNCTION_73_21(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return sub_1C6F765A4(v3, v4, a3);
}

void *OUTLINED_FUNCTION_73_22(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char __src)
{

  return memcpy((v12 + 1608), &__src, 0x41uLL);
}

uint64_t OUTLINED_FUNCTION_73_23()
{

  return sub_1C6FB0BE4();
}

uint64_t OUTLINED_FUNCTION_73_24()
{
}

uint64_t sub_1C6F66FFC(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158F8);
  v5 = OUTLINED_FUNCTION_76(v4);
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_72_19();
  OUTLINED_FUNCTION_73_20(v6);

  v7 = a1;
  v8 = sub_1C7550D0C();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E85E0];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v2;
  v9[5] = v7;
  OUTLINED_FUNCTION_69_22(v9, v11, v12, v13, v9);
}

uint64_t sub_1C6F670D8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t OUTLINED_FUNCTION_72_0()
{

  return sub_1C754EEAC();
}

uint64_t OUTLINED_FUNCTION_23_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_86_0()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_72_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  *v20 = a18;
  *a10 = v21;
  *(a10 + 8) = v18;
  *(a10 + 16) = v19;
  return 1;
}

void OUTLINED_FUNCTION_72_12()
{

  sub_1C6F7ED9C();
}

uint64_t OUTLINED_FUNCTION_72_14(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_72_15()
{

  return sub_1C6FEBACC(0, 0, v1, v0, v2);
}

void OUTLINED_FUNCTION_72_16()
{
  *(v3 - 488) = v1;
  *(v3 - 504) = v2;
  *(v3 - 492) = v0;
}

uint64_t OUTLINED_FUNCTION_72_19()
{

  return sub_1C7550D5C();
}

uint64_t OUTLINED_FUNCTION_72_20(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, __int128 a20, __int128 a21, __int128 a22)
{
  *v23 = a1;
  v22[1] = a20;
  v22[2] = a21;
  v22[3] = a22;

  return FreeformStoryCompletionSync.generableDescription.getter();
}

uint64_t OUTLINED_FUNCTION_72_21()
{

  return sub_1C75504FC();
}

uint64_t OUTLINED_FUNCTION_72_23()
{
}

void *OUTLINED_FUNCTION_72_24()
{

  return memcpy((v0 + 16), v1, 0x78uLL);
}

uint64_t OUTLINED_FUNCTION_58_1()
{
}

uint64_t OUTLINED_FUNCTION_93()
{

  return sub_1C75503DC();
}

uint64_t OUTLINED_FUNCTION_58_3()
{

  return swift_once();
}

BOOL OUTLINED_FUNCTION_200()
{

  return os_log_type_enabled(v1, v0);
}

uint64_t OUTLINED_FUNCTION_58_10()
{
  *(v1 + 12) = 2048;
  *(v1 + 14) = *(v0 + 16);
}

void OUTLINED_FUNCTION_62_1(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = a2;
  *(a1 + 24) = 12;
}

uint64_t OUTLINED_FUNCTION_58_11()
{
  *(v0 + 4) = v1;
  *(v0 + 12) = 2081;

  return sub_1C75504FC();
}

uint64_t OUTLINED_FUNCTION_58_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  return sub_1C6F765A4(v6, v7, va);
}

uint64_t OUTLINED_FUNCTION_58_13()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_58_14()
{
}

uint64_t OUTLINED_FUNCTION_58_17(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  *v17 = a1;

  return sub_1C6F765A4(v16, v15, va);
}

uint64_t OUTLINED_FUNCTION_58_25(uint64_t a1, float a2)
{
  *a1 = a2;
  *(a1 + 4) = *(v2 + 16);
  return v2;
}

uint64_t OUTLINED_FUNCTION_58_32()
{

  return sub_1C754F2BC();
}

uint64_t sub_1C6F678CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1C6F67958@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_72();
  sub_1C6F65C28(v3, v4);
  sub_1C754E37C();

  return memcpy(a1, (v1 + 24), 0x41uLL);
}

uint64_t dispatch thunk of MemoryCreationAvailabilityMonitorObservable.startPolling()()
{
  OUTLINED_FUNCTION_49_0();
  v4 = (*(*v0 + 216) + **(*v0 + 216));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  OUTLINED_FUNCTION_52_3(v2);

  return v4();
}

uint64_t OUTLINED_FUNCTION_19_2()
{

  return swift_arrayInitWithCopy();
}

BOOL OUTLINED_FUNCTION_128(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_10_10(uint64_t a1)
{
  v4 = *(v2 + 56) + 32 * a1;

  return sub_1C6F774EC(v4, v1);
}

uint64_t OUTLINED_FUNCTION_8_0()
{

  return sub_1C7550E1C();
}

void OUTLINED_FUNCTION_23_3()
{

  JUMPOUT(0x1CCA5F8E0);
}

uint64_t OUTLINED_FUNCTION_10_15()
{
}

id OUTLINED_FUNCTION_10_19(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_10_26(uint64_t a1)
{

  return sub_1C70BFBC8(a1, _s9GeneratorVMa);
}

void OUTLINED_FUNCTION_10_29()
{

  JUMPOUT(0x1CCA5CD70);
}

void OUTLINED_FUNCTION_10_30(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v5, a3, a4, v4, 2u);
}

void OUTLINED_FUNCTION_10_31()
{

  JUMPOUT(0x1CCA5CD70);
}

uint64_t OUTLINED_FUNCTION_10_34()
{

  return sub_1C7551C1C();
}

uint64_t OUTLINED_FUNCTION_10_35()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 3432);
  __swift_destroy_boxed_opaque_existential_1(v0 + 3272);
  return v1;
}

void OUTLINED_FUNCTION_10_36()
{

  JUMPOUT(0x1CCA5CD70);
}

void *OUTLINED_FUNCTION_10_37@<X0>(uint64_t a1@<X8>)
{

  return memcpy((a1 + 120 * v2), (v1 + 16), 0x78uLL);
}

void OUTLINED_FUNCTION_10_38(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x20u);
}

int8x16_t OUTLINED_FUNCTION_10_39@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>, int8x16_t a3@<Q0>)
{
  v3[2].i64[0] = 0x55556E6F73726570;
  v3[2].i64[1] = 0xEA00000000004449;
  result = vextq_s8(a3, a3, 8uLL);
  v3[3] = result;
  v3[4].i64[0] = a2;
  v3[4].i64[1] = a1;
  return result;
}

void OUTLINED_FUNCTION_10_40()
{
  *(v0 + 16) = v3;
  v5 = v0 + 16 * v4;
  *(v5 + 32) = v1;
  *(v5 + 40) = v2;
}

uint64_t OUTLINED_FUNCTION_10_43()
{

  return sub_1C755152C();
}

unint64_t OUTLINED_FUNCTION_10_44(uint64_t a1)
{

  return sub_1C71B88B0(a1);
}

void OUTLINED_FUNCTION_77_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_10_48()
{

  return sub_1C755150C();
}

uint64_t OUTLINED_FUNCTION_10_55()
{

  return sub_1C75504FC();
}

uint64_t OUTLINED_FUNCTION_10_57()
{

  return swift_allocObject();
}

double OUTLINED_FUNCTION_10_67()
{
  v1 = *(v0 + 3328);
  v2 = *(v0 + 3080) + *(v0 + 3688);
  *(v0 + 3080) = v2;
  return v2 / v1;
}

uint64_t OUTLINED_FUNCTION_10_69()
{
}

uint64_t OUTLINED_FUNCTION_10_75()
{
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);

  return sub_1C754F1AC();
}

uint64_t OUTLINED_FUNCTION_10_79()
{
  __swift_project_boxed_opaque_existential_1(*(v0 + 96), *(*(v0 + 96) + 24));

  return sub_1C754F1AC();
}

uint64_t OUTLINED_FUNCTION_10_92()
{

  return sub_1C75504DC();
}

uint64_t OUTLINED_FUNCTION_36_1()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_5_3()
{

  return sub_1C7551B4C();
}

uint64_t OUTLINED_FUNCTION_36_6()
{
}

uint64_t OUTLINED_FUNCTION_132()
{

  return sub_1C754F1CC();
}

uint64_t OUTLINED_FUNCTION_36_8()
{

  return sub_1C755180C();
}

void OUTLINED_FUNCTION_36_9()
{

  JUMPOUT(0x1CCA5CD70);
}

uint64_t OUTLINED_FUNCTION_36_16()
{

  return sub_1C75504FC();
}

uint64_t OUTLINED_FUNCTION_36_17()
{
}

uint64_t OUTLINED_FUNCTION_36_33()
{
}

void OUTLINED_FUNCTION_36_34(uint64_t a1@<X8>)
{
  *(v1 + 16) = a1;
  v5 = v1 + 16 * v2;
  *(v5 + 32) = v3;
  *(v5 + 40) = v4;
}

void OUTLINED_FUNCTION_36_35()
{

  JUMPOUT(0x1CCA5CD70);
}

unint64_t OUTLINED_FUNCTION_36_36()
{

  return sub_1C6F78124(v0, v1);
}

uint64_t OUTLINED_FUNCTION_36_37()
{

  return sub_1C7551DBC();
}

uint64_t OUTLINED_FUNCTION_36_40@<X0>(__n128 *a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  a1[1] = a3;
  a1[2].n128_u64[0] = 0xD00000000000004DLL;
  a1[2].n128_u64[1] = (a2 - 32) | 0x8000000000000000;
  return a18;
}

uint64_t OUTLINED_FUNCTION_36_41()
{

  return type metadata accessor for MusicKeywordCompletion();
}

uint64_t sub_1C6F68A94()
{
  OUTLINED_FUNCTION_42();
  sub_1C7550D1C();
  *(v0 + 24) = sub_1C7550D0C();
  OUTLINED_FUNCTION_24_2();
  v2 = sub_1C7550C8C();

  return MEMORY[0x1EEE6DFA0](sub_1C6F7402C, v2, v1);
}

void OUTLINED_FUNCTION_48_9()
{

  JUMPOUT(0x1CCA5CD70);
}

uint64_t OUTLINED_FUNCTION_80()
{
}

id OUTLINED_FUNCTION_48_10()
{

  return v0;
}

uint64_t OUTLINED_FUNCTION_48_11()
{
}

void OUTLINED_FUNCTION_48_19()
{

  JUMPOUT(0x1CCA5CD70);
}

void OUTLINED_FUNCTION_48_20()
{

  sub_1C710A128(v1, v0, v3, v2);
}

void OUTLINED_FUNCTION_48_23()
{
  v2 = *(v0 + 3200);
  *(*(v0 + 3216) + *(v2 + 44)) = v1;
  *(v0 + 556) = *(v2 + 48);
}

uint64_t OUTLINED_FUNCTION_48_25()
{

  return sub_1C75504DC();
}

uint64_t OUTLINED_FUNCTION_48_26()
{

  return sub_1C6FD7FC8(v0, v1);
}

uint64_t OUTLINED_FUNCTION_48_30(uint64_t a1, void *a2)
{
  a2[2] = 0;
  a2[3] = 0;
  a2[4] = 0x4000000000000000;

  return swift_willThrow();
}

void *OUTLINED_FUNCTION_48_31(void *a1)
{

  return memcpy(a1, (v1 - 208), 0x78uLL);
}

void OUTLINED_FUNCTION_25_4()
{

  JUMPOUT(0x1CCA5DDD0);
}

BOOL OUTLINED_FUNCTION_21_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_25_5()
{

  return sub_1C7551C1C();
}

uint64_t OUTLINED_FUNCTION_25_12()
{
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);

  return sub_1C754F1AC();
}

void OUTLINED_FUNCTION_25_13(void *a1)
{

  sub_1C70DE300(a1, v1, (v2 + 1456));
}

void OUTLINED_FUNCTION_25_14()
{

  JUMPOUT(0x1CCA5D090);
}

uint64_t OUTLINED_FUNCTION_25_15()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_25_17@<X0>(void *a1@<X8>)
{
  *(v1 + 72) = *a1;
  *(v1 + 80) = a1[1];

  return sub_1C75504FC();
}

uint64_t OUTLINED_FUNCTION_25_22()
{

  return sub_1C7551F3C();
}

uint64_t OUTLINED_FUNCTION_25_23(uint64_t a1)
{
  *(v2 + *(a1 + 56)) = 4;
  v5 = (v2 + *(a1 + 48));
  *v5 = v3;
  v5[1] = v1;

  return sub_1C75504FC();
}

uint64_t OUTLINED_FUNCTION_25_29()
{

  return swift_once();
}

void OUTLINED_FUNCTION_25_33(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  __swift_destroy_boxed_opaque_existential_1(a15);

  JUMPOUT(0x1CCA5F8E0);
}

uint64_t OUTLINED_FUNCTION_25_36()
{
}

uint64_t *OUTLINED_FUNCTION_25_38()
{
  v1 = *(v0 - 184);
  v2 = *(v0 - 176);
  __swift_project_boxed_opaque_existential_1((v0 - 208), v1);
  *(v0 - 144) = v1;
  *(v0 - 136) = *(v2 + 16);

  return __swift_allocate_boxed_opaque_existential_0((v0 - 168));
}

uint64_t OUTLINED_FUNCTION_25_39()
{
}

void OUTLINED_FUNCTION_25_43(uint64_t a1)
{
  *(a1 + 16) = v1;

  StoryGenerationDiagnosticContext.addToGenerationSummary(block:)(sub_1C73FE56C);
}

void OUTLINED_FUNCTION_113(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_25_45()
{

  return sub_1C754D71C();
}

uint64_t OUTLINED_FUNCTION_25_46()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_25_47()
{
  v1 = v0[34];
  v0[42] = *v1;
  v0[43] = v1[1];
}

uint64_t OUTLINED_FUNCTION_159(uint64_t a1, float a2)
{
  *a1 = a2;
  *(a1 + 4) = *(v2 + 16);
}

uint64_t OUTLINED_FUNCTION_25_49@<X0>(uint64_t a1@<X8>)
{

  return static MusicLocalizer.localizedString(forKey:)(v1 + 1, a1 | 0x8000000000000000);
}

_OWORD *OUTLINED_FUNCTION_41_4()
{

  return sub_1C6FC7D4C();
}

uint64_t OUTLINED_FUNCTION_41_9()
{

  return sub_1C7551AAC();
}

uint64_t OUTLINED_FUNCTION_41_14()
{

  return sub_1C75515AC();
}

uint64_t OUTLINED_FUNCTION_41_16()
{

  return sub_1C7551C6C();
}

uint64_t OUTLINED_FUNCTION_41_19()
{

  return sub_1C755058C();
}

uint64_t OUTLINED_FUNCTION_41_20()
{

  return swift_slowAlloc();
}

__n128 OUTLINED_FUNCTION_41_24()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  *(v1 + 57) = *(v0 + 41);
  v1[2] = v3;
  v1[3] = v4;
  v1[1] = v2;
  return *v0;
}

void OUTLINED_FUNCTION_41_25()
{

  JUMPOUT(0x1CCA5CD70);
}

uint64_t OUTLINED_FUNCTION_41_28(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = v4;
  a1[2].n128_u64[1] = v2;
  a1[3].n128_u64[0] = v3;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_41_29()
{
}

uint64_t OUTLINED_FUNCTION_41_30()
{
  v2 = *(v0 - 96);
  *(v0 - 104) = *(v0 - 104);
  *(v0 - 96) = v2;

  return sub_1C75504FC();
}

uint64_t OUTLINED_FUNCTION_41_32()
{

  return sub_1C70F76E0(v0, type metadata accessor for Hastings.Feature);
}

uint64_t OUTLINED_FUNCTION_41_33()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_41_35(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14 = *(v10 + 64);
  v15 = *(v10 + 72);
  *v13 = 256;
  *(v13 + 8) = a10;
  *(v13 + 16) = v11;
  v16 = (v13 + *(v12 + 32));
  *v16 = v14;
  v16[1] = v15;
}

uint64_t OUTLINED_FUNCTION_41_37()
{
  sub_1C6F699F8((v0 + 416), v0 + 544);

  return sub_1C754F2AC();
}

void OUTLINED_FUNCTION_41_38()
{
  v3 = *(v0 + 16);
  *(v2 - 120) = v1;
  *(v2 - 88) = v3;
}

unint64_t OUTLINED_FUNCTION_41_39@<X0>(int a1@<W8>)
{
  if (a1 == 96)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t OUTLINED_FUNCTION_41_41(uint64_t a1)
{
  *(v4 - 272) = a1;
  *(v4 - 200) = a1;
  *v3 = *(v4 - 400);

  return sub_1C6F765A4(v1, v2, (v4 - 200));
}

uint64_t OUTLINED_FUNCTION_41_44()
{

  return sub_1C6FC7AB4();
}

uint64_t sub_1C6F699F8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1C6F69A10()
{
  if (!MEMORY[0x1E69E7D58])
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }

  type metadata accessor for ResilientAsyncSequence.State();
  return sub_1C754E5FC();
}

uint64_t CollectionFetcherOptions.init(photoLibrary:fetchOptions:fetchContext:sortAscending:)(void *a1, void *a2, char *a3, char a4)
{
  v7 = *a3;
  *(v4 + 16) = a1;
  v8 = a1;
  if (a2 && ([a2 copy], sub_1C75515CC(), swift_unknownObjectRelease(), sub_1C6F69B60(), (swift_dynamicCast() & 1) != 0))
  {

    v9 = v11;
  }

  else
  {
    v9 = [v8 librarySpecificFetchOptions];
  }

  *(v4 + 24) = v9;
  *(v4 + 32) = v7;
  *(v4 + 33) = a4 & 1;
  return v4;
}

unint64_t sub_1C6F69B60()
{
  result = qword_1EDD0FAC8;
  if (!qword_1EDD0FAC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDD0FAC8);
  }

  return result;
}

id static DailyMemoryFetcher.fetchCollections(using:)(uint64_t a1)
{
  v2 = *(a1 + 24);
  [v2 setIncludePendingMemories_];
  [v2 setIncludeStoryMemories_];
  sub_1C6F69BA4(a1);
  v3 = [objc_opt_self() fetchMemoriesWithOptions_];

  return v3;
}

uint64_t OUTLINED_FUNCTION_9_8()
{
}

uint64_t OUTLINED_FUNCTION_9_17()
{
}

uint64_t OUTLINED_FUNCTION_9_25@<X0>(uint64_t a1@<X8>)
{
  *v2 = v3;
  v2[1] = v5;
  v2[2] = ~v1;
  v2[3] = a1;
  v2[4] = v6;
  return v4;
}

void OUTLINED_FUNCTION_9_26()
{

  sub_1C6FB1814();
}

uint64_t OUTLINED_FUNCTION_9_27()
{

  return sub_1C6FC1640(v1, v0);
}

void OUTLINED_FUNCTION_9_28()
{

  JUMPOUT(0x1CCA5CD70);
}

void OUTLINED_FUNCTION_9_29()
{

  JUMPOUT(0x1CCA5CD70);
}

uint64_t OUTLINED_FUNCTION_9_30(unint64_t *a1)
{

  return sub_1C70FBAD0(a1);
}

uint64_t OUTLINED_FUNCTION_9_34()
{

  return sub_1C75506BC();
}

uint64_t OUTLINED_FUNCTION_9_36()
{
}

uint64_t OUTLINED_FUNCTION_9_40()
{

  return sub_1C6FB6330(v1, v2 == 0, v0);
}

unint64_t OUTLINED_FUNCTION_9_47(uint64_t a1)
{

  return sub_1C71B88B0(a1);
}

void OUTLINED_FUNCTION_9_51(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_9_56()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_9_58()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_9_59()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_9_60()
{
}

uint64_t OUTLINED_FUNCTION_9_67()
{
  *(v0 + 328) = v1;
  v3 = *(v0 + 224);

  return __swift_mutable_project_boxed_opaque_existential_0(v0 + 200, v3);
}

uint64_t OUTLINED_FUNCTION_9_71()
{
}

unint64_t OUTLINED_FUNCTION_9_72@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v2 + 80);
  *(v3 + 636) = v4;
  v5 = *(v2 + 72);
  *(v3 + 3704) = v5;
  return v1 + ((v4 + 32) & ~v4) + v5 * a1;
}

uint64_t OUTLINED_FUNCTION_9_73(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{

  return sub_1C733E86C(v4, a2, 0, a4, (v5 - 136));
}

uint64_t OUTLINED_FUNCTION_9_74()
{

  return sub_1C6FE3750(v1, 0xE800000000000000, v0);
}

uint64_t OUTLINED_FUNCTION_9_81()
{

  return swift_dynamicCastObjCClass();
}

uint64_t OUTLINED_FUNCTION_9_84()
{

  return sub_1C6FE3750(v2, v1, v0);
}

uint64_t OUTLINED_FUNCTION_9_85()
{

  return sub_1C7551FFC();
}

uint64_t OUTLINED_FUNCTION_9_86(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  return sub_1C754F1AC();
}

void OUTLINED_FUNCTION_9_87(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_9_95(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return MEMORY[0x1EEDC5F80](&a9, v12, v13, v9, v10, v11, a1);
}

uint64_t OUTLINED_FUNCTION_9_101@<X0>(uint64_t a1@<X8>)
{

  return static MusicLocalizer.localizedString(forKey:)(0xD000000000000017, a1 | 0x8000000000000000);
}

uint64_t OUTLINED_FUNCTION_23_7(unint64_t *a1)
{

  return sub_1C6FDE444(a1, v1);
}

uint64_t OUTLINED_FUNCTION_23_8()
{

  return sub_1C7551C6C();
}

uint64_t OUTLINED_FUNCTION_13_4()
{

  return sub_1C7551D2C();
}

uint64_t OUTLINED_FUNCTION_23_24()
{
}

void *OUTLINED_FUNCTION_23_27(void *a1)
{

  return memcpy(a1, (v1 + 32), 0x80uLL);
}

uint64_t OUTLINED_FUNCTION_23_34()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_23_38()
{

  return sub_1C75519EC();
}

double OUTLINED_FUNCTION_23_39()
{
  *(v0 - 96) = 0;
  result = 0.0;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;
  return result;
}

void OUTLINED_FUNCTION_23_44()
{
  *(v4 + 16) = v3;
  v5 = v4 + 16 * v2;
  *(v5 + 32) = v1;
  *(v5 + 40) = v0;
}

uint64_t OUTLINED_FUNCTION_23_46()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_23_47()
{

  return sub_1C7091CBC();
}

uint64_t OUTLINED_FUNCTION_23_49()
{
}

void OUTLINED_FUNCTION_52_2(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_23_58@<X0>(uint64_t a1@<X8>)
{

  return static MusicLocalizer.localizedString(forKey:)(v1 + 3, (a1 - 32) | 0x8000000000000000);
}

uint64_t static DailyMemoryFetcher.defaultSortDescriptors(ascending:)(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1C75650C0;
  v3 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  *(v2 + 32) = sub_1C6F6AF98(0x6E6F697461657263, 0xEC00000065746144, a1);
  v4 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  *(v2 + 40) = sub_1C6F6AF98(0x65726F6373, 0xE500000000000000, a1);
  v5 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  *(v2 + 48) = sub_1C6F6AF98(0x44497463656A626FLL, 0xE800000000000000, 1);
  return v2;
}

id sub_1C6F6AF98(uint64_t a1, uint64_t a2, char a3)
{
  if (a2)
  {
    v5 = sub_1C755065C();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithKey:v5 ascending:a3 & 1];

  return v6;
}

uint64_t OUTLINED_FUNCTION_19_8()
{
  __swift_project_boxed_opaque_existential_1(*(v0 + 728), *(*(v0 + 728) + 24));

  return sub_1C754F1AC();
}

uint64_t OUTLINED_FUNCTION_19_9()
{

  return sub_1C75504FC();
}

uint64_t OUTLINED_FUNCTION_19_11()
{
}

void OUTLINED_FUNCTION_104()
{

  JUMPOUT(0x1CCA5CD70);
}

uint64_t OUTLINED_FUNCTION_19_14()
{

  return sub_1C7550B3C();
}

void OUTLINED_FUNCTION_67(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_19_15()
{

  return sub_1C754DF5C();
}

uint64_t OUTLINED_FUNCTION_31_0()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_19_17()
{

  JUMPOUT(0x1CCA5CD70);
}

uint64_t OUTLINED_FUNCTION_19_20()
{

  return sub_1C70F76E0(v0, type metadata accessor for Hastings.Feature);
}

uint64_t OUTLINED_FUNCTION_19_24()
{

  return type metadata accessor for StoryMusicCurationDiagnostics();
}

uint64_t OUTLINED_FUNCTION_49_1()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_19_30(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x20u);
}

uint64_t OUTLINED_FUNCTION_19_33@<X0>(__int16 a1@<W8>)
{
  *(v1 + 72) = a1;

  return sub_1C755112C();
}

uint64_t OUTLINED_FUNCTION_19_39()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_19_43()
{

  return sub_1C754FEEC();
}

void OUTLINED_FUNCTION_19_46()
{
  v2 = *(v0 - 280);
}

void OUTLINED_FUNCTION_19_47()
{

  JUMPOUT(0x1CCA5CD70);
}

uint64_t OUTLINED_FUNCTION_19_49(uint64_t a1)
{
  *(v3 + 144) = a1;
  *(a1 + 16) = *(v3 + 88);
  *(a1 + 32) = v4;
  *(a1 + 40) = v1;
  *(a1 + 48) = v2;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_19_50()
{

  return sub_1C754F26C();
}

void OUTLINED_FUNCTION_19_54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *(a12 + 8 * (v12 >> 6) + 64) |= 1 << v12;
  v16 = (*(a12 + 48) + 16 * v12);
  *v16 = v15;
  v16[1] = v14;
  *(*(a12 + 56) + 8 * v12) = v13;
}

uint64_t OUTLINED_FUNCTION_19_58()
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 192);
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);

  return sub_1C754F1AC();
}

double OUTLINED_FUNCTION_19_59(double a1, double a2, double a3)
{
  v4 = a1 + *&a3;
  *(v3 + 3080) = v4;
  return v4 / a2;
}

void OUTLINED_FUNCTION_19_60(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, _DWORD *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);

  sub_1C71C7E5C(v14, v15, a6, a5, a3, va);
}

void OUTLINED_FUNCTION_19_61()
{

  sub_1C6FB1410();
}

__n128 OUTLINED_FUNCTION_19_67()
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 72);
  v4 = *(v1 + 24);
  v0[2] = *(v1 + 56);
  v0[3] = v3;
  *v0 = v4;
  v0[1] = v2;
  return *(v1 + 72);
}

id OUTLINED_FUNCTION_19_71(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30)
{

  return a30;
}

BOOL OUTLINED_FUNCTION_19_73()
{

  return sub_1C707351C();
}

uint64_t OUTLINED_FUNCTION_19_75()
{

  return sub_1C754F1CC();
}

void OUTLINED_FUNCTION_19_77(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

double OUTLINED_FUNCTION_19_82@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_30_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_8_7()
{

  return swift_arrayInitWithCopy();
}

void OUTLINED_FUNCTION_21_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_15_5()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_8_9(unint64_t *a1)
{

  return sub_1C6FF60E4(a1);
}

uint64_t OUTLINED_FUNCTION_166_0()
{

  return swift_allocError();
}

void OUTLINED_FUNCTION_252()
{

  sub_1C6FD1EE8();
}

uint64_t OUTLINED_FUNCTION_8_16()
{
  *(v0 - 65) = 0;

  return type metadata accessor for CollectionFetcherOptions();
}

uint64_t OUTLINED_FUNCTION_1_7()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_8_18()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_8_19()
{

  return sub_1C75506BC();
}

id OUTLINED_FUNCTION_8_24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{

  return sub_1C70ECD78(1, 1, v19, v18, a14, v15, v16, v17, v20, v14);
}

uint64_t OUTLINED_FUNCTION_6_6()
{

  return sub_1C7551F0C();
}

uint64_t OUTLINED_FUNCTION_22_2()
{

  return sub_1C75504FC();
}

uint64_t OUTLINED_FUNCTION_8_29()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_8_31()
{

  return sub_1C71656D8();
}

uint64_t OUTLINED_FUNCTION_8_32()
{

  return sub_1C755196C();
}

void OUTLINED_FUNCTION_8_33()
{

  JUMPOUT(0x1CCA5CD70);
}

void OUTLINED_FUNCTION_8_36()
{

  sub_1C6FB3924();
}

uint64_t OUTLINED_FUNCTION_8_38()
{
}

uint64_t OUTLINED_FUNCTION_8_50(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = 0;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_8_53()
{

  return swift_allocObject();
}

id OUTLINED_FUNCTION_8_63(uint64_t a1, const char *a2)
{

  return [v4 a2];
}

uint64_t OUTLINED_FUNCTION_8_65()
{
  v3 = *v0;
  *(*v0 + 8 * (v1 >> 6) + 56) |= 1 << v1;
  return *(v3 + 48) + *(v2 + 72) * v1;
}

uint64_t OUTLINED_FUNCTION_8_67()
{

  return sub_1C7551C6C();
}

uint64_t OUTLINED_FUNCTION_8_69()
{

  return swift_once();
}

void OUTLINED_FUNCTION_8_73()
{

  sub_1C6FB1814();
}

uint64_t OUTLINED_FUNCTION_8_74()
{
}

uint64_t OUTLINED_FUNCTION_8_78(uint64_t a1)
{

  return sub_1C6FE3750(a1, 0xE900000000000065, v1);
}

uint64_t OUTLINED_FUNCTION_8_81()
{
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);

  return sub_1C754F1AC();
}

uint64_t OUTLINED_FUNCTION_8_82(uint64_t result)
{
  *result = 0;
  *(result + 1) = v1;
  *(result + 2) = 2048;
  return result;
}

uint64_t OUTLINED_FUNCTION_8_84()
{
  v2 = *(v0 + 64);

  return sub_1C74049B4(v2, type metadata accessor for CuratedStory);
}

uint64_t OUTLINED_FUNCTION_8_89()
{
  v1 = *(v0 + 888);
  **(v0 + 880) = *(v0 + 864);
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);

  return sub_1C754F1AC();
}

uint64_t OUTLINED_FUNCTION_8_90()
{

  return sub_1C7469210();
}

uint64_t OUTLINED_FUNCTION_8_94()
{

  return sub_1C75515FC();
}

uint64_t OUTLINED_FUNCTION_8_95()
{
}

uint64_t OUTLINED_FUNCTION_8_97()
{
}

unint64_t OUTLINED_FUNCTION_8_99()
{

  return sub_1C6FB5E8C();
}

uint64_t OUTLINED_FUNCTION_18_3()
{

  return sub_1C7551C6C();
}

uint64_t OUTLINED_FUNCTION_18_4()
{
  __swift_project_boxed_opaque_existential_1(*(v0 + 728), *(*(v0 + 728) + 24));

  return sub_1C754F1AC();
}

void OUTLINED_FUNCTION_18_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_18_9()
{
}

void OUTLINED_FUNCTION_18_10(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

id OUTLINED_FUNCTION_18_11(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

void OUTLINED_FUNCTION_18_13()
{

  JUMPOUT(0x1CCA5CD70);
}

uint64_t OUTLINED_FUNCTION_18_14()
{

  return sub_1C7551B0C();
}

uint64_t OUTLINED_FUNCTION_18_17()
{

  return sub_1C70F76E0(v0, type metadata accessor for TimeExtendedToken);
}

uint64_t OUTLINED_FUNCTION_18_25()
{
  v6 = *(v0 + 736);
  v7 = (v6 + v3) * v4;
  v8 = v6 + v5;
  if (v7 >= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  *(v0 + 744) = v1;
  *(v0 + 736) = v9;
}

void OUTLINED_FUNCTION_18_30()
{
  v2 = *(v0 + 248);
  *(v0 + 240) = *(v0 + 240);
  *(v0 + 248) = v2;

  JUMPOUT(0x1CCA5CD70);
}

void OUTLINED_FUNCTION_18_32(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_18_35()
{

  return sub_1C754F1AC();
}

uint64_t OUTLINED_FUNCTION_18_36()
{
  v2 = *(v0 - 96);
  *(v0 - 104) = *(v0 - 104);
  *(v0 - 96) = v2;

  return sub_1C75504FC();
}

uint64_t OUTLINED_FUNCTION_18_38()
{

  return swift_task_create();
}

uint64_t OUTLINED_FUNCTION_18_43()
{
  sub_1C6FCABEC((v0 + 360), (v0 + 200));

  return swift_isUniquelyReferenced_nonNull_native();
}

void OUTLINED_FUNCTION_18_45(void *a1, uint64_t a2, uint64_t a3, os_signpost_id_t a4, const char *a5, const char *a6)
{

  _os_signpost_emit_with_name_impl(a1, v6, v7, a4, a5, a6, v8, 2u);
}

uint64_t OUTLINED_FUNCTION_18_49()
{
}

void OUTLINED_FUNCTION_18_50(uint64_t a1@<X8>)
{
  *(a1 - 32) = 1;
  v3 = *(v2 - 232);
  *(a1 - 24) = v1;
  *(a1 - 16) = v3;
  *(a1 - 8) = *(v2 - 248);
}

uint64_t OUTLINED_FUNCTION_18_51()
{

  return sub_1C7551DBC();
}

uint64_t OUTLINED_FUNCTION_18_55(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);

  return sub_1C754FEEC();
}

uint64_t OUTLINED_FUNCTION_18_56()
{

  return sub_1C75504FC();
}

uint64_t OUTLINED_FUNCTION_18_67(float a1)
{
  *v1 = a1;

  return swift_getErrorValue();
}

void OUTLINED_FUNCTION_18_69(void *a1, NSObject *a2, os_signpost_type_t a3, os_signpost_id_t a4, const char *a5)
{

  _os_signpost_emit_with_name_impl(a1, a2, a3, a4, a5, v5, v6, 2u);
}

id static DailyMemoryFetcher.basePredicate(using:)(uint64_t a1)
{
  sub_1C6F65BE8(0, &qword_1EDD0FAD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1C755BAA0;
  v3 = MEMORY[0x1E69E6158];
  *(v2 + 56) = MEMORY[0x1E69E6158];
  v4 = sub_1C6F6D524();
  *(v2 + 64) = v4;
  strcpy((v2 + 32), "pendingState");
  *(v2 + 45) = 0;
  *(v2 + 46) = -5120;
  v5 = MEMORY[0x1E69E75F8];
  v6 = MEMORY[0x1E69E7660];
  *(v2 + 96) = MEMORY[0x1E69E75F8];
  *(v2 + 104) = v6;
  *(v2 + 72) = 1;
  *(v2 + 136) = v5;
  *(v2 + 144) = v6;
  *(v2 + 112) = 0;
  v7 = sub_1C755112C();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C755BAB0;
  *(v8 + 56) = v3;
  *(v8 + 64) = v4;
  *(v8 + 32) = 0x64657463656A6572;
  *(v8 + 40) = 0xE800000000000000;
  v9 = sub_1C755112C();
  v10 = PNMemoryInternalPredicateExcludingTemporaryHiddenMemories();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C75650C0;
  *(v11 + 32) = v7;
  *(v11 + 40) = v9;
  *(v11 + 48) = v10;
  v28 = v11;
  if (a1)
  {
    OUTLINED_FUNCTION_2_52();
    switch(*(a1 + 32))
    {
      case 1:
        OUTLINED_FUNCTION_1_55();
        goto LABEL_7;
      case 2:
      case 4:
        goto LABEL_7;
      case 3:
        OUTLINED_FUNCTION_3_51();
LABEL_7:
        v18 = sub_1C7551DBC();
        v19 = v7;
        v20 = v9;
        v21 = v10;

        if ((v18 & 1) == 0)
        {
          v22 = swift_allocObject();
          *(v22 + 16) = xmmword_1C75604F0;
          *(v22 + 56) = MEMORY[0x1E69E6158];
          *(v22 + 64) = v4;
          strcpy((v22 + 32), "featuredState");
          *(v22 + 46) = -4864;
          v23 = MEMORY[0x1E69E65A8];
          *(v22 + 96) = MEMORY[0x1E69E6530];
          *(v22 + 104) = v23;
          *(v22 + 72) = -1;
          OUTLINED_FUNCTION_4_41();
          MEMORY[0x1CCA5D040]();
          if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1C7550B9C();
          }

          sub_1C7550BEC();
        }

        break;
      default:
        v12 = v7;
        v13 = v9;
        v14 = v10;

        break;
    }

    switch(*(a1 + 32))
    {
      case 1:
        OUTLINED_FUNCTION_1_55();
        goto LABEL_16;
      case 2:
        OUTLINED_FUNCTION_2_52();
        goto LABEL_16;
      case 3:
        OUTLINED_FUNCTION_3_51();
        goto LABEL_16;
      case 4:

        goto LABEL_17;
      default:
LABEL_16:
        v24 = sub_1C7551DBC();

        if (v24)
        {
LABEL_17:
          v25 = swift_allocObject();
          *(v25 + 16) = xmmword_1C75604F0;
          *(v25 + 56) = MEMORY[0x1E69E6158];
          *(v25 + 64) = v4;
          strcpy((v25 + 32), "creationType");
          *(v25 + 45) = 0;
          *(v25 + 46) = -5120;
          *(v25 + 96) = MEMORY[0x1E69E75F8];
          *(v25 + 104) = MEMORY[0x1E69E7660];
          *(v25 + 72) = 1;
          OUTLINED_FUNCTION_4_41();
          MEMORY[0x1CCA5D040]();
          if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1C7550B9C();
          }

          sub_1C7550BEC();
        }

        break;
    }
  }

  else
  {
    v15 = v7;
    v16 = v9;
    v17 = v10;
  }

  sub_1C6F65BE8(0, &qword_1EDD0FA80);
  v26 = sub_1C6F6E5C4();

  return v26;
}

id sub_1C6F6D460(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2();
  v4 = 1;
  switch(*(a1 + 32))
  {
    case 1:
      goto LABEL_4;
    case 2:
      v4 = 0;
LABEL_4:
      sub_1C70666F8(v4);
      sub_1C6F65BE8(0, &qword_1EDD0FA80);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
      v6 = OUTLINED_FUNCTION_13_1();
      result = OUTLINED_FUNCTION_21_15(v6, xmmword_1C7564A90);
      break;
    default:
      result = v3;
      break;
  }

  return result;
}

unint64_t sub_1C6F6D524()
{
  result = qword_1EDD0FB00;
  if (!qword_1EDD0FB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0FB00);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_6()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_17_2@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t OUTLINED_FUNCTION_3_10()
{

  return sub_1C75504FC();
}

uint64_t OUTLINED_FUNCTION_3_14(uint64_t a1, double a2)
{
  *(a1 + 56) = v2;
  *(a1 + 64) = v3;
  *(a1 + 32) = a2;

  return sub_1C75506BC();
}

uint64_t OUTLINED_FUNCTION_3_17()
{
}

uint64_t OUTLINED_FUNCTION_102()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_3_19()
{

  return swift_once();
}

id OUTLINED_FUNCTION_3_21(uint64_t a1, const char *a2)
{

  return [v4 a2];
}

uint64_t OUTLINED_FUNCTION_3_27()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_3_28()
{

  return swift_once();
}

void OUTLINED_FUNCTION_3_30()
{

  JUMPOUT(0x1CCA5CD70);
}

void OUTLINED_FUNCTION_3_35(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_3_37()
{

  sub_1C6FB334C();
}

uint64_t OUTLINED_FUNCTION_6_7@<X0>(uint64_t a1@<X8>, uint64_t a2, __int128 a3)
{

  return sub_1C6F699F8(&a3, a1 + 32);
}

uint64_t OUTLINED_FUNCTION_3_39()
{

  return sub_1C75519EC();
}

uint64_t OUTLINED_FUNCTION_3_40()
{

  return sub_1C7551D2C();
}

uint64_t OUTLINED_FUNCTION_3_41()
{

  return sub_1C7551C6C();
}

void OUTLINED_FUNCTION_3_44()
{

  JUMPOUT(0x1CCA5CD70);
}

_OWORD *OUTLINED_FUNCTION_3_45()
{

  return sub_1C6FC7D4C();
}

uint64_t OUTLINED_FUNCTION_3_47()
{
}

uint64_t OUTLINED_FUNCTION_3_52()
{
}

uint64_t OUTLINED_FUNCTION_3_53@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = result;
  *(v2 - 280) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_54()
{

  return FlexMusicLibraryManager.allSongs(includeHidden:)(0);
}

void OUTLINED_FUNCTION_3_55(float a1)
{
  *v1 = a1;
  *(v1 + 4) = 10;
  *(v1 + 12) = 2080;
}

int8x16_t OUTLINED_FUNCTION_3_56@<Q0>(uint64_t a1@<X8>, int8x16_t a2@<Q0>)
{
  v3[2].i64[0] = v4;
  v3[2].i64[1] = v5;
  result = vextq_s8(a2, a2, 8uLL);
  v3[3] = result;
  v3[4].i64[0] = v2;
  v3[4].i64[1] = a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_60()
{
  __swift_project_boxed_opaque_existential_1(v1, *(v0 + 24));

  return sub_1C754F1AC();
}

uint64_t OUTLINED_FUNCTION_6_8()
{

  return sub_1C7551D2C();
}

uint64_t OUTLINED_FUNCTION_3_67()
{

  return sub_1C755197C();
}

void OUTLINED_FUNCTION_37_2()
{

  sub_1C6FB1814();
}

uint64_t OUTLINED_FUNCTION_3_69()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_42_0()
{

  return sub_1C7551DBC();
}

uint64_t OUTLINED_FUNCTION_3_71()
{

  return sub_1C75518CC();
}

void OUTLINED_FUNCTION_3_72()
{

  sub_1C716D568();
}

__n128 OUTLINED_FUNCTION_3_75(__n128 *a1)
{
  result = *(v1 - 192);
  a1[1] = result;
  return result;
}

void OUTLINED_FUNCTION_90_2()
{

  JUMPOUT(0x1CCA5F8E0);
}

uint64_t OUTLINED_FUNCTION_3_77()
{

  return sub_1C75515AC();
}

uint64_t OUTLINED_FUNCTION_3_80(uint64_t result)
{
  v1[8] = result;
  v1[4] = v2;
  v1[5] = v3;
  return result;
}

void OUTLINED_FUNCTION_3_83(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_3_85()
{

  return sub_1C7551AAC();
}

uint64_t OUTLINED_FUNCTION_3_88()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_89()
{

  return sub_1C754F1AC();
}

uint64_t OUTLINED_FUNCTION_3_90(uint64_t a1, uint64_t a2)
{

  return sub_1C73375F0(a1, a2, type metadata accessor for PartOfWeekExtendedToken);
}

void OUTLINED_FUNCTION_3_91()
{
  *(v6 - 352) = v5;
  *(v6 - 336) = v4;
  *(v6 - 328) = v2;
  *(v6 - 360) = v0;
  *(v6 - 312) = v3;
  *(v6 - 368) = v1;
}

void OUTLINED_FUNCTION_3_94(unint64_t a1@<X8>)
{
  *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a1;
  v5 = (*(v1 + 48) + 16 * a1);
  *v5 = v2;
  v5[1] = v3;
}

uint64_t OUTLINED_FUNCTION_3_95()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_98(float a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *v4 = a1;

  return sub_1C6F765A4(v3, v2, va);
}

uint64_t OUTLINED_FUNCTION_3_99(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_101(uint64_t result)
{
  *(v1 + 264) = result;
  *(v1 + 208) = MEMORY[0x1E69E9820];
  return result;
}

void OUTLINED_FUNCTION_3_108()
{
  *(v3 - 104) = v2;
  *(v3 - 96) = v1;
  *(v3 - 88) = v0;
}

uint64_t OUTLINED_FUNCTION_3_109()
{
  v2 = *(v0 - 336);

  return sub_1C6F6E5B4(v2);
}

uint64_t OUTLINED_FUNCTION_3_110()
{
}

uint64_t OUTLINED_FUNCTION_3_119()
{
  __swift_project_boxed_opaque_existential_1(*(v0 + 24), *(*(v0 + 24) + 24));

  return sub_1C754F1AC();
}

uint64_t OUTLINED_FUNCTION_3_120()
{

  return swift_once();
}

__n128 OUTLINED_FUNCTION_3_125(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, __n128 a23, __n128 a24, __n128 a25)
{
  result = a23;
  v25[1] = a24;
  v25[2] = a25;
  *v25 = a23;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_126()
{
  v1 = *(v0 + 3224);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2360);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2680);
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);

  return sub_1C754F1AC();
}

uint64_t OUTLINED_FUNCTION_3_127()
{
  *(v0 + 88) = v2;
  *(v0 + 112) = 0;
  return v1 + 16;
}

uint64_t OUTLINED_FUNCTION_3_128()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_3_134()
{

  return swift_once();
}

uint64_t sub_1C6F6E5B4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

id sub_1C6F6E5C4()
{
  sub_1C6F65BE8(0, &qword_1EDD0FAD0);
  v0 = sub_1C7550B3C();

  v1 = [swift_getObjCClassFromMetadata() andPredicateWithSubpredicates_];

  return v1;
}

void *OUTLINED_FUNCTION_5_14()
{
  v0[769] = v0[681];

  return memcpy(v0 + 16, v0 + 320, 0xC0uLL);
}

void OUTLINED_FUNCTION_5_15()
{

  JUMPOUT(0x1CCA5CD70);
}

void OUTLINED_FUNCTION_5_17()
{

  JUMPOUT(0x1CCA5CD70);
}

uint64_t OUTLINED_FUNCTION_5_19()
{

  return swift_once();
}

void OUTLINED_FUNCTION_5_20()
{

  sub_1C6FB1814();
}

void OUTLINED_FUNCTION_12_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_89(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_5_36()
{

  return sub_1C755065C();
}

void *OUTLINED_FUNCTION_5_42()
{

  return memcpy((v0 + 16), (v0 + 320), 0xC0uLL);
}

void OUTLINED_FUNCTION_5_43(uint64_t a1@<X8>)
{
  __swift_destroy_boxed_opaque_existential_1(*(a1 - 256));

  JUMPOUT(0x1CCA5F8E0);
}

uint64_t OUTLINED_FUNCTION_5_45@<X0>(uint64_t a1@<X8>)
{
  v3[7] = v2;
  v3[4] = a1;
  v3[5] = v1;

  return sub_1C7551F0C();
}

uint64_t OUTLINED_FUNCTION_5_47()
{
}

uint64_t OUTLINED_FUNCTION_5_55(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 0;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_5_59()
{
  strcpy((v0 - 168), "max(montage: ");
  *(v0 - 154) = -4864;

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_5_60()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_62()
{

  return swift_getAssociatedTypeWitness();
}

void OUTLINED_FUNCTION_5_64(uint64_t a1@<X8>)
{
  *(*(*(v1 + a1) + 56) + 16) = 0;
  v3 = *(v1 + a1);
  v4 = *(v3 + 56);
  *(v4 + 24) = v2;
  *(v4 + 32) = 0;
  *(*(v3 + 56) + 17) = 1;
}

uint64_t OUTLINED_FUNCTION_5_74(uint64_t a1, uint64_t a2)
{

  return sub_1C73375F0(a1, a2, type metadata accessor for TimeExtendedToken);
}

uint64_t OUTLINED_FUNCTION_5_79()
{

  return sub_1C6FE3750(v1, 0xEA00000000006465, v0);
}

uint64_t OUTLINED_FUNCTION_5_81()
{

  return sub_1C75504DC();
}

uint64_t OUTLINED_FUNCTION_33_1(unint64_t *a1, uint64_t *a2)
{

  return sub_1C7099594(a1, a2);
}

void OUTLINED_FUNCTION_5_87()
{

  JUMPOUT(0x1CCA5CD70);
}

uint64_t OUTLINED_FUNCTION_5_93(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_1C754F1AC();
}

void OUTLINED_FUNCTION_5_96()
{

  sub_1C6FB1814();
}

uint64_t OUTLINED_FUNCTION_5_98@<X0>(int a1@<W8>)
{
  if (a1)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t OUTLINED_FUNCTION_5_101()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_108()
{
}

uint64_t OUTLINED_FUNCTION_5_109()
{

  return sub_1C754FD3C();
}

uint64_t OUTLINED_FUNCTION_5_114()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

id sub_1C6F6F294(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 24);
  v6 = [v5 predicate];
  if (v6)
  {

    v7 = [v5 internalPredicate];
    if (v7)
    {

      if (*a2 != -1)
      {
        swift_once();
      }

      v8 = sub_1C754FF1C();
      __swift_project_value_buffer(v8, a3);
      v9 = sub_1C754FEEC();
      v10 = sub_1C75511AC();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        MEMORY[0x1CCA5F8E0](v11, -1, -1);
      }
    }
  }

  v12 = &selRef_predicate;
  result = [v5 predicate];
  if (result || (v12 = &selRef_internalPredicate, (result = [v5 internalPredicate]) != 0))
  {

    return [v5 *v12];
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_61_2@<X0>(__n128 *a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  a1[1] = a3;
  a1[2].n128_u64[0] = 0xD00000000000004FLL;
  a1[2].n128_u64[1] = (a2 - 32) | 0x8000000000000000;
  return a13;
}

uint64_t OUTLINED_FUNCTION_17_6()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_17_13()
{
}

uint64_t OUTLINED_FUNCTION_17_14()
{
}

id OUTLINED_FUNCTION_17_15(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_17_16()
{
  __swift_project_boxed_opaque_existential_1(*(v0 + 96), *(*(v0 + 96) + 24));

  return sub_1C754F1AC();
}

uint64_t OUTLINED_FUNCTION_17_19(uint64_t a1, void *a2)
{
  *a2 = 0x74756F656D6954;
  a2[1] = 0xE700000000000000;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_17_21()
{

  JUMPOUT(0x1CCA5CD70);
}

uint64_t OUTLINED_FUNCTION_17_31()
{

  return sub_1C7551D2C();
}

uint64_t OUTLINED_FUNCTION_17_32()
{

  return swift_once();
}

id OUTLINED_FUNCTION_17_34(uint64_t a1)
{
  *(v2 + 4) = a1;
  *(v2 + 12) = 2112;

  return v1;
}

void OUTLINED_FUNCTION_17_35()
{

  sub_1C6FB2420();
}

void OUTLINED_FUNCTION_17_39()
{
  v1 = v0[90];
  v2 = v0[65];
  v3 = v0[61];
  v4 = v0[60];
  __swift_destroy_boxed_opaque_existential_1((v0 + 26));

  sub_1C71DFB44(v3, v1, v2, v4);
}

void OUTLINED_FUNCTION_17_43(int a1@<W8>)
{
  *(v1 - 212) = a1;
  *(v1 - 208) = a1;
  *(v1 - 72) = a1;
  *(v1 - 200) = a1;
  *(v1 - 192) = a1;
}

void OUTLINED_FUNCTION_17_44()
{

  JUMPOUT(0x1CCA5CD70);
}

void OUTLINED_FUNCTION_17_47()
{
  *(v3 - 168) = v0;
  *(v3 - 136) = v2;
  *(v3 - 104) = v1;

  sub_1C6F7ED9C();
}

uint64_t OUTLINED_FUNCTION_17_50()
{

  return sub_1C754F1AC();
}

void OUTLINED_FUNCTION_17_55()
{

  sub_1C6FB1814();
}

uint64_t OUTLINED_FUNCTION_51_1()
{

  return sub_1C754F60C();
}

__n128 OUTLINED_FUNCTION_17_60()
{
  v2 = *(v1 - 112);
  *(v1 - 320) = *(v1 - 128);
  *(v1 - 304) = v2;
  v3 = *(v1 - 192);
  *(v1 - 287) = *(v1 - 176);
  *(v1 - 271) = *(v1 - 160);
  result = *(v1 - 145);
  *(v1 - 256) = result;
  *(v1 - 288) = *(v1 - 492);
  *(v1 - 240) = v0;
  *(v1 - 232) = v3;
  return result;
}

void OUTLINED_FUNCTION_17_65()
{

  sub_1C6FB0EFC();
}

uint64_t OUTLINED_FUNCTION_17_75(uint64_t a1)
{
  *(v2 - 176) = v1;

  return sub_1C716C9F0(0, a1 & ~(a1 >> 63), 0);
}

uint64_t OUTLINED_FUNCTION_17_76@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a1 = a2;
  *(a1 + 8) = 1;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_17_80()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_14_7()
{

  return type metadata accessor for StoryMusicCuration();
}

uint64_t OUTLINED_FUNCTION_16_8()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_47_3()
{

  return sub_1C75504FC();
}

id OUTLINED_FUNCTION_16_12(int a1, const char *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{

  return [v10 a2];
}

void OUTLINED_FUNCTION_16_13()
{

  JUMPOUT(0x1CCA5CD70);
}

void OUTLINED_FUNCTION_16_14()
{

  JUMPOUT(0x1CCA5CC40);
}

void OUTLINED_FUNCTION_16_16(__n128 a1)
{
  *(v1 + 40) = a1;
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  *(v1 + 32) = 1;
}

uint64_t OUTLINED_FUNCTION_16_20()
{

  return sub_1C75504FC();
}

void OUTLINED_FUNCTION_16_25(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x20u);
}

uint64_t OUTLINED_FUNCTION_16_27()
{

  return sub_1C75504FC();
}

uint64_t OUTLINED_FUNCTION_16_28()
{

  return sub_1C7551B4C();
}

uint64_t OUTLINED_FUNCTION_16_39()
{
}

uint64_t OUTLINED_FUNCTION_42_1()
{

  return sub_1C7551C1C();
}

uint64_t OUTLINED_FUNCTION_16_42()
{

  return sub_1C7551DBC();
}

uint64_t OUTLINED_FUNCTION_16_43()
{

  return sub_1C726A368();
}

uint64_t OUTLINED_FUNCTION_16_44()
{

  return sub_1C755200C();
}

void OUTLINED_FUNCTION_16_47()
{

  sub_1C6FB1814();
}

uint64_t OUTLINED_FUNCTION_68()
{
}

uint64_t OUTLINED_FUNCTION_16_50()
{

  return sub_1C754F1AC();
}

uint64_t OUTLINED_FUNCTION_16_52()
{

  return sub_1C754FEEC();
}

void OUTLINED_FUNCTION_16_53()
{

  sub_1C6FB1814();
}

unint64_t OUTLINED_FUNCTION_16_55@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v2 + 3208);
  v4 = *(v3 + 80);
  *(v2 + 156) = v4;
  v5 = *(v3 + 72);
  *(v2 + 3608) = v5;
  return v1 + ((v4 + 32) & ~v4) + v5 * a1;
}

uint64_t OUTLINED_FUNCTION_16_56()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_16_57()
{
  *(v0 + 232) = v2;
  *(v0 + 720) = v1;

  sub_1C716D6A4();
}

uint64_t OUTLINED_FUNCTION_16_60()
{

  return sub_1C754F1AC();
}

uint64_t OUTLINED_FUNCTION_16_64()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_16_66()
{
  __swift_project_boxed_opaque_existential_1(*(v0 + 280), *(*(v0 + 280) + 24));

  return sub_1C754F1AC();
}

void OUTLINED_FUNCTION_16_68()
{
  v4 = *(v3 - 120);
  *(v3 - 168) = v4 + 16;
  *(v3 - 160) = v2;
  *(v3 - 112) = v4 + 32;
  *(v3 - 152) = v0;
  *(v3 - 176) = v1;
}

uint64_t OUTLINED_FUNCTION_16_70()
{

  return sub_1C755001C();
}

uint64_t OUTLINED_FUNCTION_16_71()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_16_76()
{

  return sub_1C75504DC();
}

void *OUTLINED_FUNCTION_22_4(void *a1)
{

  return memcpy(a1, (v1 + 16), 0x80uLL);
}

id OUTLINED_FUNCTION_22_7(uint64_t a1, void **a2)
{
  v3 = *a2;

  return v3;
}

void *OUTLINED_FUNCTION_21_3()
{
  v0[26] = v1;

  return memcpy(v0 + 27, v0 + 64, 0x68uLL);
}

uint64_t OUTLINED_FUNCTION_22_8(float a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *v4 = a1;

  return sub_1C6F765A4(v3, v2, va);
}

uint64_t OUTLINED_FUNCTION_22_9()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_22_17()
{
  *(v0 + 32) = v1;
  v3 = *(v0 + 64);

  return __swift_mutable_project_boxed_opaque_existential_0(v0 + 40, v3);
}

void OUTLINED_FUNCTION_22_20()
{
  __swift_destroy_boxed_opaque_existential_1(v0);

  JUMPOUT(0x1CCA5F8E0);
}

void OUTLINED_FUNCTION_22_23(uint64_t a1@<X8>)
{
  *(a1 + v2) |= v3;
  *(*(v4 + 48) + 8 * v1) = v5;
  ++*(v4 + 16);
}

uint64_t OUTLINED_FUNCTION_22_24()
{

  return sub_1C7551D2C();
}

uint64_t OUTLINED_FUNCTION_22_25()
{

  return sub_1C754F1AC();
}

uint64_t OUTLINED_FUNCTION_22_26()
{
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);

  return sub_1C754F1AC();
}

uint64_t OUTLINED_FUNCTION_22_29(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);

  return sub_1C6FB5E28(va1, va);
}

void *OUTLINED_FUNCTION_22_33(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  v4 = a1 + 2;

  return memcpy(v4, (v2 + 320), 0x78uLL);
}

uint64_t OUTLINED_FUNCTION_22_34()
{

  return sub_1C7550B9C();
}

uint64_t OUTLINED_FUNCTION_22_36()
{

  return sub_1C75509AC();
}

void OUTLINED_FUNCTION_22_38()
{

  JUMPOUT(0x1CCA5CD70);
}

uint64_t OUTLINED_FUNCTION_22_39()
{

  return sub_1C73E6820(v0);
}

uint64_t OUTLINED_FUNCTION_22_42()
{

  return sub_1C7551D2C();
}

uint64_t OUTLINED_FUNCTION_22_46(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *(v4 + 4) = a1;
  *(v4 + 12) = 2080;

  return sub_1C6F765A4(v2, v3, va);
}

uint64_t OUTLINED_FUNCTION_22_49()
{

  return sub_1C75504FC();
}

void OUTLINED_FUNCTION_22_53(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

__n128 OUTLINED_FUNCTION_22_54(__n128 *a1, __n128 a2, __n128 a3, __n128 a4)
{
  a1[3].n128_u64[0] = v5;
  a1[1] = a3;
  a1[2] = a4;
  *a1 = a2;
  return v4[4];
}

uint64_t OUTLINED_FUNCTION_22_59(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  a16 = v16;

  return sub_1C7241D3C(v17, sub_1C7241FE4, 0, a1, &a16);
}

uint64_t OUTLINED_FUNCTION_22_60()
{
  *(*(v0 + 56) + 8 * v1) = *(v2 - 320);
}

uint64_t OUTLINED_FUNCTION_22_63(float a1)
{
  *v1 = a1;
  v5 = *(v3 - 248);

  return sub_1C6F765A4(v5, v2, (v3 - 160));
}

uint64_t OUTLINED_FUNCTION_22_67()
{

  return sub_1C755196C();
}

uint64_t OUTLINED_FUNCTION_22_71@<X0>(uint64_t a1@<X8>)
{

  return static MusicLocalizer.localizedString(forKey:)(v1 + 7, (a1 - 32) | 0x8000000000000000);
}

uint64_t OUTLINED_FUNCTION_22_72()
{

  return sub_1C75504DC();
}

uint64_t CollectionFetcherOptions.__deallocating_deinit()
{
  CollectionFetcherOptions.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1C6F70E84()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_36_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_1_8(v1);

  return v4(v3);
}

uint64_t OUTLINED_FUNCTION_71_2()
{

  return sub_1C754F1CC();
}

uint64_t OUTLINED_FUNCTION_71_5()
{
  v2 = *(v0 + 4872);

  return sub_1C7129C34(v2);
}

void OUTLINED_FUNCTION_71_6(uint64_t a1@<X8>)
{

  os_unfair_lock_lock((v1 + a1));
}

void OUTLINED_FUNCTION_71_10()
{
  v2 = *(v0 - 552);
}

void OUTLINED_FUNCTION_71_11()
{
  *(v0 + 240) = 0xD000000000000013;
  *(v0 + 248) = v1;

  JUMPOUT(0x1CCA5CD70);
}

uint64_t OUTLINED_FUNCTION_71_17()
{

  return sub_1C75519EC();
}

uint64_t OUTLINED_FUNCTION_71_18()
{

  return swift_allocObject();
}

void *OUTLINED_FUNCTION_71_19@<X0>(uint64_t a1@<X8>)
{

  return memcpy((v2 + 168), (v1 + a1 * v3 + 32), 0x78uLL);
}

uint64_t OUTLINED_FUNCTION_14_11()
{

  return sub_1C7551C6C();
}

uint64_t OUTLINED_FUNCTION_14_12(uint64_t result)
{
  *(v1 + 328) = result;
  *(v1 + 272) = MEMORY[0x1E69E9820];
  return result;
}

uint64_t OUTLINED_FUNCTION_595()
{

  return sub_1C7551B4C();
}

unint64_t OUTLINED_FUNCTION_14_19()
{

  return sub_1C6F78124(v1, v0);
}

void OUTLINED_FUNCTION_14_20()
{
  v1 = *(v0 - 272);
  *(v0 - 280) = *(v0 - 280);
  *(v0 - 272) = v1;
}

void OUTLINED_FUNCTION_14_23()
{

  JUMPOUT(0x1CCA5CD70);
}

void OUTLINED_FUNCTION_12_6()
{
  __swift_destroy_boxed_opaque_existential_1(v0);

  JUMPOUT(0x1CCA5F8E0);
}

uint64_t OUTLINED_FUNCTION_14_31()
{

  return sub_1C754FEEC();
}

uint64_t OUTLINED_FUNCTION_14_32()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_14_33()
{

  return sub_1C75505AC();
}

double OUTLINED_FUNCTION_14_36(double a1, double a2, double a3, double a4)
{
  v9 = v8;
  v10 = v7;
  v11 = v6;
  v12 = v5;

  *&result = CGRectUnion(*&a1, *&v9);
  return result;
}

uint64_t OUTLINED_FUNCTION_14_37()
{

  return sub_1C6F6E5B4(v0);
}

uint64_t OUTLINED_FUNCTION_14_42()
{
  *(v0 + 224) = v1;

  return sub_1C75504FC();
}

uint64_t OUTLINED_FUNCTION_14_44()
{
  v2 = *(v0 - 160);
  *(v0 - 168) = *(v0 - 168);
  *(v0 - 160) = v2;

  return sub_1C75504FC();
}

void *OUTLINED_FUNCTION_14_47(void *result)
{
  *(v3 + 152) = result;
  result[2] = v1;
  result[3] = v2;
  result[4] = v4;
  result[5] = v6;
  result[6] = v5;
  return result;
}

void OUTLINED_FUNCTION_14_49()
{

  sub_1C710A128(v2, v1, v0, v3);
}

uint64_t OUTLINED_FUNCTION_14_50()
{

  return sub_1C7551DBC();
}

void *OUTLINED_FUNCTION_14_53(void *a1)
{

  return memcpy(a1, v1, 0x50uLL);
}

uint64_t OUTLINED_FUNCTION_14_56()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_14_59()
{
  v1 = *(v0 + 984);
  __swift_destroy_boxed_opaque_existential_1(v0 + 928);
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);

  return sub_1C754F1AC();
}

uint64_t OUTLINED_FUNCTION_14_60()
{
}

double OUTLINED_FUNCTION_14_61()
{
  *v0 = 1;
  result = 0.0;
  *(v0 + 8) = 0u;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0;
  return result;
}

void OUTLINED_FUNCTION_14_62()
{

  JUMPOUT(0x1CCA5CD70);
}

void *OUTLINED_FUNCTION_14_64()
{
  v2 = *(v0 + 2584);
  v3 = *(v0 + 2560);
  v4 = *(v0 + 2568);
  v5 = *(v0 + 2576);
  v6 = *(v0 + 2139);

  return sub_1C6FE0E14(v3, v4, v5, v2, v6);
}

uint64_t OUTLINED_FUNCTION_14_65(unint64_t *a1, uint64_t *a2)
{

  return sub_1C7099594(a1, a2);
}

void OUTLINED_FUNCTION_14_67()
{

  sub_1C716D7A4();
}

uint64_t OUTLINED_FUNCTION_14_73()
{

  return sub_1C754F1AC();
}

uint64_t sub_1C6F71A20()
{
  OUTLINED_FUNCTION_49_0();
  v1 = v0;
  v7 = (v2 + *v2);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_5_2(v3);
  *v4 = v5;
  v4[1] = sub_1C6F73F48;

  return v7(v1);
}

uint64_t sub_1C6F71B0C()
{
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_66_24();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_5_2(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_13_74(v4);

  return sub_1C6F72B78(v6, v7, v8, v2, v1);
}

uint64_t OUTLINED_FUNCTION_122_0()
{

  return sub_1C7551CDC();
}

void *OUTLINED_FUNCTION_122_2()
{

  return memmove(v2, (v2 + 16), 16 * (v1 - 1 - v0));
}

uint64_t *OUTLINED_FUNCTION_122_4(uint64_t a1)
{
  *(v1 - 96) = a1;

  return __swift_allocate_boxed_opaque_existential_0((v1 - 128));
}

uint64_t OUTLINED_FUNCTION_122_6@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 288) = 0;
  *(v1 + 296) = a1;

  return sub_1C755180C();
}

__n128 OUTLINED_FUNCTION_122_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v16 = v14[553];
  v17 = *(v15 + 16);
  *a14 = *v15;
  *(a14 + 16) = v17;
  result = *(v15 + 32);
  *(a14 + 32) = result;
  *(a14 + 46) = *(v15 + 46);
  v14[1198] = 1;
  v14[1199] = v16;
  return result;
}

void *OUTLINED_FUNCTION_122_10()
{
  v0[2137] = 96;

  return memcpy(v0 + 624, v0 + 16, 0x130uLL);
}

void OUTLINED_FUNCTION_122_11()
{
}

uint64_t OUTLINED_FUNCTION_122_12()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_67_0()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_67_2()
{
  result = sub_1C6F61E88();
  *v1 = v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_67_3(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_67_8()
{

  return sub_1C75504DC();
}

uint64_t OUTLINED_FUNCTION_67_9()
{
}

void OUTLINED_FUNCTION_67_13()
{
  v1 = *(v0 - 208);
  *(v0 - 216) = *(v0 - 216);
  *(v0 - 208) = v1;
}

uint64_t OUTLINED_FUNCTION_67_14()
{

  return sub_1C755184C();
}

uint64_t OUTLINED_FUNCTION_67_15()
{
  v2 = v0[63];
  v3 = v0[58] + *(v0[55] + 48);

  return sub_1C7285088(v3, v2);
}

uint64_t OUTLINED_FUNCTION_67_16()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_67_21()
{

  return sub_1C7551D2C();
}

uint64_t OUTLINED_FUNCTION_67_23()
{
}

uint64_t OUTLINED_FUNCTION_67_25()
{

  return sub_1C6FD2F68(v0);
}

uint64_t OUTLINED_FUNCTION_13_6()
{

  return sub_1C7551DBC();
}

uint64_t OUTLINED_FUNCTION_28()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_13_7()
{

  return sub_1C7551F3C();
}

uint64_t OUTLINED_FUNCTION_13_8()
{

  return sub_1C7551C6C();
}

void *OUTLINED_FUNCTION_13_9()
{

  return sub_1C6FE0E14(v4, v3, v2, v1, v0);
}

uint64_t OUTLINED_FUNCTION_13_11()
{

  return sub_1C7551C9C();
}

void OUTLINED_FUNCTION_13_12()
{
  v1[36] = sub_1C70C20C8;
  v1[37] = v0;
  v1[38] = v2;
}

uint64_t OUTLINED_FUNCTION_13_14()
{
}

uint64_t OUTLINED_FUNCTION_13_18()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_13_20()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_13_21()
{

  return sub_1C7551A2C();
}

uint64_t OUTLINED_FUNCTION_13_22()
{
  __swift_project_boxed_opaque_existential_1(*(v0 + 3672), *(*(v0 + 3672) + 24));

  return sub_1C754F1AC();
}

uint64_t OUTLINED_FUNCTION_13_23(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

uint64_t OUTLINED_FUNCTION_13_25()
{

  return sub_1C755180C();
}

void OUTLINED_FUNCTION_13_30(void *a1@<X8>)
{
}

uint64_t OUTLINED_FUNCTION_13_32()
{

  return sub_1C7551BAC();
}

__n128 OUTLINED_FUNCTION_13_33()
{
  v2 = *(v1 - 224);
  *(v1 - 320) = *(v1 - 240);
  *(v1 - 304) = v2;
  result = *(v0 + 32);
  v4 = *(v0 + 48);
  *(v1 - 288) = result;
  *(v1 - 272) = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_13_35()
{

  return sub_1C6FC78A4();
}

uint64_t OUTLINED_FUNCTION_40_5()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_13_36()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_13_40()
{

  return sub_1C75505FC();
}

uint64_t OUTLINED_FUNCTION_13_44()
{
}

void OUTLINED_FUNCTION_13_45()
{
  *(v2 - 128) = v1 + 32;
  *(v2 - 120) = v1 + 16;
  *(v2 - 136) = v0;
}

void OUTLINED_FUNCTION_13_47()
{

  sub_1C6FB2608();
}

uint64_t OUTLINED_FUNCTION_13_52()
{

  return sub_1C755060C();
}

uint64_t OUTLINED_FUNCTION_13_57()
{

  return sub_1C7550A1C();
}

uint64_t OUTLINED_FUNCTION_13_62()
{

  return sub_1C754F1AC();
}

uint64_t OUTLINED_FUNCTION_13_63()
{

  return sub_1C755200C();
}

uint64_t OUTLINED_FUNCTION_13_65@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 80);
  v3 = *(a1 + 64);
  v4 = *(a1 + 72);
  v5 = *(a1 + 56);
  result = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 32);
  *(v1 + 1920) = 0;
  *(v1 + 1928) = v8;
  *(v1 + 1936) = result;
  *(v1 + 1944) = v7;
  *(v1 + 1952) = v5;
  *(v1 + 1960) = v3;
  *(v1 + 1968) = v4;
  *(v1 + 1976) = v2;
  return result;
}

void OUTLINED_FUNCTION_13_69()
{

  sub_1C710A128(v2, v0, v3, v1);
}

uint64_t OUTLINED_FUNCTION_13_70()
{

  return sub_1C6FE3750(v2, v1, v0);
}

uint64_t OUTLINED_FUNCTION_13_71()
{

  return sub_1C75508EC();
}

uint64_t OUTLINED_FUNCTION_13_76()
{

  return sub_1C75505FC();
}

uint64_t OUTLINED_FUNCTION_13_77()
{

  return sub_1C754F1AC();
}

void OUTLINED_FUNCTION_13_78()
{
  *(v3 - 160) = v1;
  *(v3 - 152) = v2;
  *(v3 - 144) = v0;
}

void *OUTLINED_FUNCTION_13_79(void *result)
{
  *(v3 + 96) = result;
  result[2] = v4;
  result[3] = v5;
  result[4] = v1;
  result[5] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_13_80()
{

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_13_83()
{

  return sub_1C75504FC();
}

uint64_t OUTLINED_FUNCTION_13_84()
{
  __swift_project_boxed_opaque_existential_1(*(v0 + 1232), *(*(v0 + 1232) + 24));

  return sub_1C754F1AC();
}

id OUTLINED_FUNCTION_13_85(id a1, SEL a2, uint64_t a3)
{

  return [a1 a2];
}

uint64_t OUTLINED_FUNCTION_13_91()
{

  return type metadata accessor for MusicKeywordCompletion();
}

uint64_t OUTLINED_FUNCTION_13_96()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2360);

  return __swift_destroy_boxed_opaque_existential_1(v0 + 2680);
}

uint64_t OUTLINED_FUNCTION_13_97()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_13_99()
{

  return sub_1C75504DC();
}

uint64_t sub_1C6F72B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  sub_1C7550D1C();
  v5[13] = sub_1C7550D0C();
  v7 = sub_1C7550C8C();

  return MEMORY[0x1EEE6DFA0](sub_1C6F72C10, v7, v6);
}

uint64_t sub_1C6F72C10()
{
  v6 = v0;
  v1 = *(v0 + 96);

  *(swift_task_alloc() + 16) = v1;
  sub_1C755128C();

  memcpy(__dst, (v0 + 16), 0x41uLL);
  sub_1C6F72D14(__dst);
  v2 = MemoryCreationAvailabilityMonitor.processingAvailability.getter();
  sub_1C6F73150(v2);
  OUTLINED_FUNCTION_43();

  return v3();
}

void *sub_1C6F72D14(void *__src)
{
  memcpy(__dst, __src, 0x41uLL);
  memcpy(v6, (v1 + 24), 0x41uLL);
  if ((sub_1C6F72DE8(v6, __dst, v2) & 1) == 0)
  {
    return memcpy((v1 + 24), __dst, 0x41uLL);
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1C73B55D8();
}

uint64_t sub_1C6F72DE8(uint64_t a1, int8x16_t *a2, uint8x8_t a3)
{
  a3.i32[0] = *a1;
  v3 = vmovl_u8(a3).u64[0];
  v4 = *(a1 + 4);
  v5 = *(a1 + 5);
  v6 = *(a1 + 6);
  v7 = *(a1 + 7);
  v8 = *(a1 + 8);
  v10 = *(a1 + 16);
  v9 = *(a1 + 32);
  v11 = *(a1 + 48);
  v12 = *(a1 + 64);
  v13 = v3.u8[0] | (v3.u8[2] << 8) | (v3.u8[4] << 16) & 0xFFFFFFFF00FFFFFFLL | (v3.u8[6] << 24) | (v4 << 32) | (v5 << 40) | (v6 << 48) | (v7 << 56);
  switch(v12 >> 6)
  {
    case 1u:
      if ((a2[4].i8[0] & 0xC0) != 0x40)
      {
        goto LABEL_21;
      }

      v23 = a2->i8[4];
      v24 = a2->i8[5];
      v25 = a2->i8[6];
      v26 = vuzp1_s8((*&v3 & 0xFF01FF01FF01FF01), (*&v3 & 0xFF01FF01FF01FF01));
      LODWORD(v34) = v26.i32[0];
      BYTE4(v34) = v4 & 1;
      BYTE5(v34) = v5 & 1;
      BYTE6(v34) = v6;
      v26.i32[0] = a2->i32[0];
      v27 = vmovl_u8(v26).u64[0] & 0xFF01FF01FF01FF01;
      LODWORD(v32[0]) = vuzp1_s8(v27, v27).u32[0];
      BYTE4(v32[0]) = v23 & 1;
      BYTE5(v32[0]) = v24 & 1;
      BYTE6(v32[0]) = v25;
      v16 = static MemoryCreationAvailabilityState.UnavailabilityReasons.== infix(_:_:)(&v34, v32);
      goto LABEL_13;
    case 2u:
      v17 = a2[4].i8[0];
      if ((v17 & 0xC0) != 0x80)
      {
        goto LABEL_21;
      }

      LODWORD(v34) = vuzp1_s8(v3, v3).u32[0];
      BYTE4(v34) = v4;
      BYTE5(v34) = v5;
      BYTE6(v34) = v6;
      HIBYTE(v34) = v7;
      v35 = v8;
      v36 = v10;
      v37 = v9;
      v38 = v11;
      v39 = v12 & 0x3F;
      v18 = a2[1];
      v32[0] = *a2;
      v32[1] = v18;
      v19 = a2[3];
      v32[2] = a2[2];
      v32[3] = v19;
      v33 = v17 & 0x3F;
      v16 = static MemoryCreationAvailabilityState.ProcessingIncompleteReasons.== infix(_:_:)(&v34, v32);
      goto LABEL_13;
    case 3u:
      if (v12 != 192 || (v20 = vorrq_s8(v11, v9), v13 | *&vorr_s8(*v20.i8, *&vextq_s8(v20, v20, 8uLL)) | v10 | v8 | *(&v10 + 1)))
      {
        v28 = a2[4].u8[0];
        if (v28 <= 0xBF)
        {
          goto LABEL_21;
        }

        if (v28 != 192 || a2->i64[0] != 1)
        {
          goto LABEL_21;
        }

        v30 = vorrq_s8(a2[2], a2[3]);
        v22 = *&vorr_s8(*v30.i8, *&vextq_s8(v30, v30, 8uLL)) | a2[1].i64[1] | a2[1].i64[0] | a2->i64[1];
        if (v22)
        {
          goto LABEL_21;
        }
      }

      else if (a2[4].u8[0] != 192 || (v21 = vorrq_s8(vorrq_s8(*a2, a2[2]), vorrq_s8(a2[1], a2[3])), *v21.i8 = vorr_s8(*v21.i8, *&vextq_s8(v21, v21, 8uLL)), LOBYTE(v22) = v21.i8[0], v21.i64[0]))
      {
LABEL_21:
        LOBYTE(v22) = 1;
      }

      return v22 & 1;
    default:
      if (a2[4].u8[0] >= 0x40u)
      {
        goto LABEL_21;
      }

      v14 = a2->i32[2];
      v15 = a2->i64[0];
      LOBYTE(v34) = v3.i8[0];
      BYTE1(v34) = v3.i8[2];
      BYTE2(v34) = v3.i8[4];
      BYTE3(v34) = v3.i8[6];
      BYTE4(v34) = v4;
      BYTE5(v34) = v5;
      BYTE6(v34) = v6;
      HIBYTE(v34) = v7;
      BYTE2(v35) = BYTE2(v8);
      LOWORD(v35) = v8;
      *&v32[0] = v15;
      BYTE10(v32[0]) = BYTE2(v14);
      WORD4(v32[0]) = v14;
      v16 = static MemoryCreationAvailabilityState.IneligibilityReasons.== infix(_:_:)(&v34, v32);
LABEL_13:
      LOBYTE(v22) = v16 ^ 1;
      return v22 & 1;
  }
}

uint64_t MemoryCreationAvailabilityMonitor.processingAvailability.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B198);
  sub_1C755128C();
  return v1;
}

id sub_1C6F73114@<X0>(void *a1@<X8>)
{
  v2 = *(*(v1 + 16) + OBJC_IVAR____TtC18PhotosIntelligence33MemoryCreationAvailabilityMonitor__processingAvailability);
  *a1 = v2;
  return v2;
}

void sub_1C6F73150(void *a1)
{
  v3 = *(v1 + 96);
  v4 = v3;
  LOBYTE(v3) = sub_1C6F73270(v3, a1);

  if (v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C73B55D8();
  }

  else
  {
    v6 = *(v1 + 96);
    *(v1 + 96) = a1;
  }
}

void *sub_1C6F73240@<X0>(void *a1@<X8>)
{
  result = sub_1C73B4A08();
  *a1 = result;
  return result;
}

BOOL sub_1C6F73270(unint64_t a1, unint64_t a2)
{
  v2 = (a1 | a2) == 0;
  if (a1 && a2)
  {
    sub_1C6F65BE8(0, &qword_1EDD06968);
    v5 = a1;
    v6 = a2;
    v2 = sub_1C75513EC();
  }

  return (v2 & 1) == 0;
}

uint64_t OUTLINED_FUNCTION_26_1()
{

  return swift_arrayInitWithCopy();
}

void OUTLINED_FUNCTION_26_5()
{

  JUMPOUT(0x1CCA5CD70);
}

void OUTLINED_FUNCTION_26_6(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
}

void *OUTLINED_FUNCTION_26_9(void *a1)
{

  return memcpy(a1, (v1 + 16), 0xD8uLL);
}

uint64_t OUTLINED_FUNCTION_26_10()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_26_12(uint64_t a1, uint64_t a2, double a3)
{

  return sub_1C708B8D8(a1, a2, v5, v4, v3, a3);
}

uint64_t OUTLINED_FUNCTION_106()
{

  return sub_1C7551F3C();
}

void OUTLINED_FUNCTION_26_15()
{

  JUMPOUT(0x1CCA5CD70);
}

uint64_t OUTLINED_FUNCTION_26_16()
{
}

uint64_t OUTLINED_FUNCTION_26_18()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_26_20()
{
}

uint64_t OUTLINED_FUNCTION_26_22()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_26_30()
{
}

uint64_t OUTLINED_FUNCTION_26_33()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_26_34()
{

  return sub_1C7551FFC();
}

uint64_t OUTLINED_FUNCTION_26_35()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  return v1;
}

void OUTLINED_FUNCTION_26_40()
{

  JUMPOUT(0x1CCA5CD70);
}

uint64_t OUTLINED_FUNCTION_26_41(uint64_t result, __n128 a2)
{
  *(result + 25) = a2;
  *(v2 + 2305) = 1;
  *(v2 + 2306) = *(v2 + 150);
  *(v2 + 2310) = *(v2 + 154);
  return result;
}

uint64_t OUTLINED_FUNCTION_26_45()
{

  return sub_1C7551FFC();
}

void OUTLINED_FUNCTION_26_47(float a1)
{
  *v1 = a1;

  JUMPOUT(0x1CCA5D090);
}

void OUTLINED_FUNCTION_26_48(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_26_49(uint64_t a1@<X8>)
{
  v4 = (*(v1 + 48) + 16 * a1);
  *v4 = v2;
  v4[1] = v3;
}

uint64_t OUTLINED_FUNCTION_26_54@<X0>(uint64_t a1@<X8>)
{

  return static MusicLocalizer.localizedString(forKey:)(0xD000000000000020, (a1 - 32) | 0x8000000000000000);
}

uint64_t sub_1C6F738F4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t OUTLINED_FUNCTION_34_5()
{
  sub_1C6F6E5B4(v1);
  sub_1C6F6E5B4(v0);
}

uint64_t OUTLINED_FUNCTION_34_6()
{

  return sub_1C7551D2C();
}

void OUTLINED_FUNCTION_34_8()
{

  JUMPOUT(0x1CCA5CD70);
}

uint64_t OUTLINED_FUNCTION_34_9()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_34_13()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_34_14()
{

  return sub_1C6F765A4(v0, v1, (v2 - 280));
}

void OUTLINED_FUNCTION_34_16()
{
  *(v0 + 16) = v3;
  v5 = v0 + 16 * v4;
  *(v5 + 32) = v1;
  *(v5 + 40) = v2;
}

uint64_t OUTLINED_FUNCTION_34_18()
{

  return sub_1C75517AC();
}

uint64_t OUTLINED_FUNCTION_34_23()
{

  return sub_1C6F61E88();
}

void OUTLINED_FUNCTION_34_24()
{

  JUMPOUT(0x1CCA5CD70);
}

uint64_t OUTLINED_FUNCTION_34_26(uint64_t result)
{
  *(v2 + 32) = result;
  *(result + 16) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_34_29()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 200);
}

uint64_t OUTLINED_FUNCTION_109_1()
{

  return swift_getWitnessTable();
}

void OUTLINED_FUNCTION_34_34(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_34_36()
{
}

__n128 OUTLINED_FUNCTION_34_38()
{
  result = *(v1 + 24);
  v3 = *(v1 + 40);
  v4 = *(v1 + 72);
  *(v0 + 2280) = *(v1 + 56);
  *(v0 + 2296) = v4;
  *(v0 + 2248) = result;
  *(v0 + 2264) = v3;
  return result;
}

void OUTLINED_FUNCTION_34_42()
{

  sub_1C6FB1428();
}

uint64_t OUTLINED_FUNCTION_34_43(float a1)
{
  *v2 = a1;
  *(v2 + 4) = *(v1 + 16);
  *(v2 + 12) = 2085;

  return sub_1C75504FC();
}

uint64_t OUTLINED_FUNCTION_34_44()
{
}

uint64_t OUTLINED_FUNCTION_34_45@<X0>(void *a1@<X0>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  a1[9] = v16;
  a1[10] = a2;
  a1[6] = a12;
  v15[7] = a13;
  v15[11] = 0x6D6F725072657375;
  v15[12] = 0xEA00000000007470;
  v15[16] = v16;
  v15[17] = a2;
  v15[13] = a14;
  v15[14] = a15;

  return sub_1C75504FC();
}

void *OUTLINED_FUNCTION_34_47()
{

  return memcpy((v0 + 120), (v0 + 16), 0x68uLL);
}

uint64_t OUTLINED_FUNCTION_34_49()
{

  return sub_1C754F1CC();
}

uint64_t sub_1C6F73F48()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t sub_1C6F7402C()
{
  OUTLINED_FUNCTION_42();

  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_52_3(v1);

  return MemoryCreationAvailabilityMonitor.startPolling()();
}

uint64_t MemoryCreationAvailabilityMonitor.startPolling()()
{
  OUTLINED_FUNCTION_42();
  *(v1 + 64) = v0;
  *(v1 + 72) = swift_getObjectType();

  return MEMORY[0x1EEE6DFA0](sub_1C6F74128, 0, 0);
}

uint64_t sub_1C6F74128()
{
  *(v0 + 104) = 1;
  v1 = *(v0 + 64);
  v2 = *&v1[OBJC_IVAR____TtC18PhotosIntelligence33MemoryCreationAvailabilityMonitor_workQueue];
  OUTLINED_FUNCTION_30();
  v3 = swift_allocObject();
  *(v0 + 80) = v3;
  *(v3 + 16) = v0 + 104;
  *(v3 + 24) = v1;
  OUTLINED_FUNCTION_30();
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1C6F743F0;
  *(v4 + 24) = v3;
  *(v0 + 48) = sub_1C6F669DC;
  *(v0 + 56) = v4;
  *(v0 + 16) = MEMORY[0x1E69E9820];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1C6F66984;
  *(v0 + 40) = &block_descriptor_20_0;
  v5 = _Block_copy((v0 + 16));
  v6 = v1;

  dispatch_sync(v2, v5);
  _Block_release(v5);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  else if (*(v0 + 104))
  {

    OUTLINED_FUNCTION_43();

    return v8();
  }

  else
  {
    *(swift_task_alloc() + 16) = *(v0 + 64);
    sub_1C755128C();

    v9 = swift_task_alloc();
    *(v0 + 88) = v9;
    *v9 = v0;
    v9[1] = sub_1C73B4D20;

    return MemoryCreationAvailabilityMonitor.updateMemoryCreationAvailability()();
  }

  return result;
}

uint64_t sub_1C6F743A8()
{
  OUTLINED_FUNCTION_30();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

void sub_1C6F743F0()
{
  v1 = *(v0 + 24);
  v2 = OBJC_IVAR____TtC18PhotosIntelligence33MemoryCreationAvailabilityMonitor__polling;
  **(v0 + 16) = *(v1 + OBJC_IVAR____TtC18PhotosIntelligence33MemoryCreationAvailabilityMonitor__polling);
  *(v1 + v2) = 1;
}

void sub_1C6F7442C(uint64_t a1, uint64_t a2)
{
  v5 = sub_1C754EA7C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static MemoryCreationAvailabilityMonitor.gmAvailability()(v8);
  if (!v2)
  {
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    *(v10 + 24) = a2;

    v11 = sub_1C754EA6C();

    (*(v6 + 8))(v8, v5);

    *(a1 + OBJC_IVAR____TtC18PhotosIntelligence33MemoryCreationAvailabilityMonitor__gmsAvailabilityNotifications) = v11;
  }
}

uint64_t sub_1C6F745A8()
{
  MEMORY[0x1CCA5F9F0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C6F745E0()
{

  OUTLINED_FUNCTION_30();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

void static MemoryCreationAvailabilityMonitor.gmAvailability()(uint64_t a1@<X8>)
{
  v62 = a1;
  sub_1C754EA7C();
  OUTLINED_FUNCTION_3_0();
  v66 = v2;
  v67 = v1;
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_14_0();
  v65 = v4 - v3;
  OUTLINED_FUNCTION_37_3();
  sub_1C754E13C();
  OUTLINED_FUNCTION_3_0();
  v63 = v6;
  v64 = v5;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14_0();
  v61 = v8 - v7;
  OUTLINED_FUNCTION_37_3();
  sub_1C754E15C();
  OUTLINED_FUNCTION_3_0();
  v59 = v10;
  v60 = v9;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_78();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v57 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2177A8);
  v18 = OUTLINED_FUNCTION_76(v17);
  MEMORY[0x1EEE9AC00](v18);
  v58 = &v57 - v19;
  OUTLINED_FUNCTION_37_3();
  v20 = sub_1C754EA2C();
  OUTLINED_FUNCTION_3_0();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_14_0();
  v26 = v25 - v24;
  v27 = sub_1C754E9FC();
  OUTLINED_FUNCTION_3_0();
  v29 = v28;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_14_0();
  v33 = v32 - v31;
  static LLMWrapper.availabilityMonitorUseCasesIdentifiers()();
  (*(v22 + 104))(v26, *MEMORY[0x1E69A12A0], v20);
  v34 = v62;
  sub_1C754E9EC();
  sub_1C754EA5C();
  (*(v29 + 8))(v33, v27);
  sub_1C754E0AC();
  sub_1C754E04C();
  v35 = v60;
  v36 = *(v59 + 8);
  v36(v13, v60);
  sub_1C754E03C();
  v37 = v61;
  sub_1C754E14C();
  v36(v16, v35);
  v38 = v58;
  sub_1C754E12C();
  v39 = v38;
  (*(v63 + 8))(v37, v64);
  v40 = sub_1C754E07C();
  if (__swift_getEnumTagSinglePayload(v38, 1, v40) == 1)
  {
    sub_1C6FD7FC8(v38, &qword_1EC2177A8);
    v41 = 0xE700000000000000;
    v42 = 0x6E776F6E6B6E75;
  }

  else
  {
    v42 = sub_1C754E05C();
    v41 = v43;
    (*(*(v40 - 8) + 8))(v39, v40);
  }

  v45 = v66;
  v44 = v67;
  v46 = v65;
  if (qword_1EDD0FB68 != -1)
  {
    OUTLINED_FUNCTION_0_165();
    swift_once();
  }

  v47 = sub_1C754FF1C();
  OUTLINED_FUNCTION_23_2(v47, qword_1EDD0FB70);
  (*(v45 + 16))(v46, v34, v44);
  sub_1C75504FC();
  v48 = sub_1C754FEEC();
  v49 = sub_1C75511BC();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = v46;
    v51 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v68 = v64;
    *v51 = 136315394;
    v52 = sub_1C6F765A4(v42, v41, &v68);

    *(v51 + 4) = v52;
    *(v51 + 12) = 2080;
    sub_1C6F65C28(&qword_1EDD0F9A0, MEMORY[0x1E69A12E0]);
    v53 = sub_1C7551D8C();
    v55 = v54;
    (*(v45 + 8))(v50, v44);
    v56 = sub_1C6F765A4(v53, v55, &v68);

    *(v51 + 14) = v56;
    _os_log_impl(&dword_1C6F5C000, v48, v49, "Apple Intelligence availability for device language code %s is %s", v51, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {

    (*(v45 + 8))(v46, v44);
  }
}

uint64_t OUTLINED_FUNCTION_104_0()
{
}

id OUTLINED_FUNCTION_104_3(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

id OUTLINED_FUNCTION_104_9()
{

  return sub_1C71C8D18(v1, v0);
}

uint64_t OUTLINED_FUNCTION_104_10()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_104_11()
{

  JUMPOUT(0x1CCA5CD70);
}

void OUTLINED_FUNCTION_104_13()
{
  *(v3 - 120) = v0[4];
  *(v3 - 112) = v1;
  *(v3 - 104) = v2;
  v4 = v0[7];
  *(v3 - 136) = v0[8];
  *(v3 - 128) = v4;
}

uint64_t static LLMWrapper.availabilityMonitorUseCasesIdentifiers()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E98);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C755F060;
  *(inited + 32) = 67305985;
  v1 = objc_opt_self();
  if ([v1 generateOnDeviceTitle])
  {
    sub_1C6F7D3FC();
    inited = v2;
    *(v2 + 16) = 5;
    *(v2 + 36) = 5;
  }

  v3 = [v1 useOnDeviceAssetCurationOutlier];
  v4 = *(inited + 16);
  if (v3)
  {
    v5 = v4 + 1;
    if (v4 >= *(inited + 24) >> 1)
    {
      sub_1C6F7D3FC();
      inited = v20;
    }

    *(inited + 16) = v5;
    *(inited + v4 + 32) = 6;
  }

  else
  {
    if (!v4)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v5 = *(inited + 16);
  }

  v28 = MEMORY[0x1E69E7CC0];
  sub_1C6F7ED9C();
  v6 = v28;
  v7 = 0x80000001C75969D0;
  v8 = 0x80000001C75969B0;
  v9 = 0x80000001C7596990;
  v10 = 0x80000001C7596970;
  v11 = 0x80000001C7596950;
  v12 = 0x80000001C7596920;
  v13 = 0x80000001C75968F0;
  v14 = 32;
  do
  {
    v15 = 0xE500000000000000;
    v16 = 0x726568746FLL;
    switch(*(inited + v14))
    {
      case 1:
        v16 = 0xD000000000000021;
        v15 = v12;
        break;
      case 2:
        v16 = 0xD00000000000001BLL;
        v15 = v11;
        break;
      case 3:
        v16 = 0xD00000000000001ALL;
        v15 = v10;
        break;
      case 4:
        v16 = 0xD00000000000001CLL;
        v15 = v9;
        break;
      case 5:
        v16 = 0xD000000000000014;
        v15 = v8;
        break;
      case 6:
        v16 = 0xD000000000000023;
        v15 = v7;
        break;
      case 7:
        break;
      default:
        v16 = 0xD000000000000020;
        v15 = v13;
        break;
    }

    v17 = *(v28 + 16);
    if (v17 >= *(v28 + 24) >> 1)
    {
      v26 = v8;
      v27 = v7;
      v24 = v10;
      v25 = v9;
      v22 = v12;
      v23 = v11;
      v21 = v13;
      sub_1C6F7ED9C();
      v13 = v21;
      v12 = v22;
      v11 = v23;
      v10 = v24;
      v9 = v25;
      v8 = v26;
      v7 = v27;
    }

    *(v28 + 16) = v17 + 1;
    v18 = v28 + 16 * v17;
    *(v18 + 32) = v16;
    *(v18 + 40) = v15;
    ++v14;
    --v5;
  }

  while (v5);

  return v6;
}

void OUTLINED_FUNCTION_52_6(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);
  *(v1 - 328) = v2 + 32;
  *(v1 - 320) = *(v2 + 16);
}

uint64_t OUTLINED_FUNCTION_52_11()
{

  return sub_1C754DE1C();
}

uint64_t OUTLINED_FUNCTION_52_16()
{

  return swift_once();
}

void OUTLINED_FUNCTION_52_20()
{

  JUMPOUT(0x1CCA5CD70);
}

BOOL OUTLINED_FUNCTION_52_21(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_52_22()
{
  *(v1 + 24) = v0;

  return swift_continuation_init();
}

void OUTLINED_FUNCTION_52_23(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v15 = *(a12 + 56);
  v16 = *(v15 + 8 * v12);
  *(v15 + 8 * v12) = v13;
}

id OUTLINED_FUNCTION_52_26(id a1, SEL a2)
{

  return [a1 a2];
}

void OUTLINED_FUNCTION_52_28()
{

  sub_1C6FC7E40();
}

uint64_t OUTLINED_FUNCTION_52_29@<X0>(uint64_t a1@<X8>)
{
  result = v1;
  *(v2 - 128) = *(a1 + 8);
  return result;
}

void OUTLINED_FUNCTION_52_30(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 2u);
}

uint64_t OUTLINED_FUNCTION_52_31()
{

  return sub_1C7551F3C();
}

uint64_t OUTLINED_FUNCTION_52_32()
{

  return sub_1C754F1CC();
}

void sub_1C6F76024(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1C755065C();

  [a4 removeObjectForKey:a1 inDomain:v6];
}

void static LLMDefaults.backendType.getter(char *a1@<X8>)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = OUTLINED_FUNCTION_0_58();
  v4 = [v2 stringForKey_];

  v5 = 2;
  if (v4)
  {
    sub_1C755068C();

    v6 = sub_1C7551B2C();

    if (v6 >= 4)
    {
      v5 = 2;
    }

    else
    {
      v5 = v6;
    }
  }

  *a1 = v5;
}

void static LLMDefaults.backendEnvironment.getter(BOOL *a1@<X8>)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = OUTLINED_FUNCTION_5_36();
  v4 = [v2 stringForKey_];

  v6 = 0;
  if (v4)
  {
    sub_1C755068C();

    v5 = sub_1C7551B2C();

    if (v5 == 1)
    {
      v6 = 1;
    }
  }

  *a1 = v6;
}

void sub_1C6F76244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_48_2();
  a24 = v25;
  a25 = v26;
  v28 = v27;
  v30 = *v29;
  v32 = *v31;
  if (qword_1EDD10088 != -1)
  {
    swift_once();
  }

  v33 = sub_1C754FF1C();
  __swift_project_value_buffer(v33, qword_1EDD28E28);
  v34 = sub_1C754FEEC();
  v35 = sub_1C75511BC();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    a9 = v37;
    *v36 = 136315394;
    v38 = 0xE800000000000000;
    v39 = OUTLINED_FUNCTION_11_27();
    switch(v30)
    {
      case 1:
        v38 = 0xE600000000000000;
        v39 = 0x736750736D67;
        break;
      case 2:
        v38 = 0xE600000000000000;
        v39 = 0x6C6254736D67;
        break;
      case 3:
        v38 = 0xE600000000000000;
        v39 = 0x446E4F736D67;
        break;
      default:
        break;
    }

    v40 = sub_1C6F765A4(v39, v38, &a9);

    *(v36 + 4) = v40;
    *(v36 + 12) = 2080;
    if (v32)
    {
      v41 = 0x676E6967617473;
    }

    else
    {
      v41 = 0x7972726163;
    }

    if (v32)
    {
      v42 = 0xE700000000000000;
    }

    else
    {
      v42 = 0xE500000000000000;
    }

    v43 = sub_1C6F765A4(v41, v42, &a9);

    *(v36 + 14) = v43;
    _os_log_impl(&dword_1C6F5C000, v34, v35, "Setting defaults for %s %s", v36, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1CCA5F8E0](v37, -1, -1);
    MEMORY[0x1CCA5F8E0](v36, -1, -1);
  }

  a13 = v32;
  sub_1C6F77200();
  if (v30 == 1)
  {
    a12 = v32;
    sub_1C70F8750(&a12, v28 & 1);
  }

  OUTLINED_FUNCTION_52_1();
}

uint64_t sub_1C6F76488()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EDD28E28);
  __swift_project_value_buffer(v0, qword_1EDD28E28);
  return sub_1C754FEFC();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1C6F765A4(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  sub_1C75504FC();
  OUTLINED_FUNCTION_41();
  v9 = sub_1C6F770FC(v6, v7, v8, 1, a1, a2);
  v10 = v14[0];
  if (v9)
  {
    v11 = v9;

    ObjectType = swift_getObjectType();
    v14[0] = v11;
  }

  else
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v14[0] = a1;
    v14[1] = a2;
  }

  v12 = *a3;
  if (*a3)
  {
    sub_1C6F774EC(v14, *a3);
    *a3 = v12 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v14);
  return v10;
}

void OUTLINED_FUNCTION_11_9()
{
  v1 = *(v0 - 216);
  *(v0 - 156) = *(v0 - 224);
  *(v0 - 155) = v1;
  *(v0 - 154) = *(v0 - 208);
  *(v0 - 153) = *(v0 - 236);
}

void OUTLINED_FUNCTION_11_14()
{
  *(v3 + 16) = v0;
  v5 = v3 + 16 * v2;
  *(v5 + 32) = v1;
  *(v5 + 40) = v4;
}

uint64_t OUTLINED_FUNCTION_11_15()
{

  return swift_once();
}

void OUTLINED_FUNCTION_11_17()
{

  JUMPOUT(0x1CCA5CD70);
}

uint64_t OUTLINED_FUNCTION_11_24(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(*(v1 - 112), 1, 1, a1);

  return sub_1C754E35C();
}

uint64_t OUTLINED_FUNCTION_11_29()
{
}

void OUTLINED_FUNCTION_11_30()
{

  JUMPOUT(0x1CCA5CD70);
}

id OUTLINED_FUNCTION_11_31(uint64_t a1)
{
  *(v2 + 4) = a1;
  *(v2 + 12) = 2112;

  return v1;
}

void OUTLINED_FUNCTION_11_34()
{

  sub_1C6F7ED9C();
}

uint64_t OUTLINED_FUNCTION_11_36()
{

  return sub_1C71615C8(v0, type metadata accessor for QueryTokenCategoryType);
}

void OUTLINED_FUNCTION_11_43()
{

  JUMPOUT(0x1CCA5CD70);
}

uint64_t OUTLINED_FUNCTION_11_46()
{

  return sub_1C75504FC();
}

uint64_t OUTLINED_FUNCTION_11_50(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_1C754F1AC();
}

uint64_t OUTLINED_FUNCTION_11_52(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);

  return __swift_mutable_project_boxed_opaque_existential_0(a2, v4);
}

uint64_t OUTLINED_FUNCTION_11_57()
{
  v3 = *(v0 + 400);
  *(v1 - 96) = *(v0 + 408);
  *(v1 - 88) = v3;
}

void OUTLINED_FUNCTION_11_70()
{
  *(v2 + 16) = v6;
  v7 = (v2 + 40 * v0);
  v7[4] = v5;
  v7[5] = v1;
  v7[6] = v3;
  v7[7] = v4;
}

uint64_t OUTLINED_FUNCTION_11_77()
{

  return MusicKeywordCompletion.init(keyword:score:)(0x656874207265766FLL, 0xEE00737261657920, v1);
}

void *OUTLINED_FUNCTION_11_82(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t __src)
{

  return memcpy(&STACK[0x248], &__src, 0xC0uLL);
}

uint64_t OUTLINED_FUNCTION_11_83()
{

  return sub_1C755155C();
}

uint64_t OUTLINED_FUNCTION_11_85@<X0>(uint64_t a1@<X8>)
{

  return static MusicLocalizer.localizedString(forKey:)(v1 | 1, a1 | 0x8000000000000000);
}

void OUTLINED_FUNCTION_11_87()
{

  sub_1C6FC7E40();
}

void *sub_1C6F76F28(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214EA0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

uint64_t sub_1C6F76F98(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_1C755089C())
  {
    result = sub_1C6F76F28(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1C75517BC();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_1C75518FC();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1C6F770B0(uint64_t a1, unint64_t a2)
{
  v3 = sub_1C6F76F98(a1, a2);
  sub_1C6F77328(&unk_1F469D4D8);
  return v3;
}

unint64_t sub_1C6F770FC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1C6F770B0(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_1C75518FC();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void sub_1C6F77200()
{
  OUTLINED_FUNCTION_48_2();
  v1 = sub_1C6F7740C();
  v2 = 0;
  OUTLINED_FUNCTION_4_34();
  v4 = v3 >> 6;
  if (v0)
  {
    while (1)
    {
LABEL_5:
      OUTLINED_FUNCTION_32_0();
      v8 = (*(v1 + 48) + ((v6 << 10) | (16 * v7)));
      v9 = *v8;
      v10 = v8[1];
      v11 = objc_opt_self();
      sub_1C75504FC();
      v12 = [v11 standardUserDefaults];
      v13 = sub_1C755065C();
      sub_1C6F7D018(v9, v10, v13, v12);
    }
  }

  while (1)
  {
    v5 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return;
    }

    if (v5 >= v4)
    {
      break;
    }

    ++v2;
    if (*(v1 + 64 + 8 * v5))
    {
      goto LABEL_5;
    }
  }

  OUTLINED_FUNCTION_52_1();
}

uint64_t sub_1C6F77328(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_1C749192C(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1C6F7740C()
{
  v0 = OUTLINED_FUNCTION_2_42(6, v28, v35, v42, SHIDWORD(v42), v43, v44, v45, v46);
  v1 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v42 = v1;
  sub_1C6F77D5C(v0, sub_1C6F78094, 0, isUniquelyReferenced_nonNull_native, &v42);
  OUTLINED_FUNCTION_2_42(8, v29, v36, v42, SHIDWORD(v42), v43, v44, v45, v46);
  v3 = swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_1_47(v3, v4, v5, v6, v7, v8, v9, v10, v30, v37, v42);
  OUTLINED_FUNCTION_2_42(9, v31, v38, v42, SHIDWORD(v42), v43, v44, v45, v46);
  v11 = swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_1_47(v11, v12, v13, v14, v15, v16, v17, v18, v32, v39, v42);
  OUTLINED_FUNCTION_2_42(7, v33, v40, v42, SHIDWORD(v42), v43, v44, v45, v46);
  v19 = swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_1_47(v19, v20, v21, v22, v23, v24, v25, v26, v34, v41, v42);
  return v42;
}

uint64_t sub_1C6F774EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1C6F77548(char *a1, _BYTE *a2)
{
  v3 = *a1;
  if (*a2)
  {
    switch(*a1)
    {
      case 5:
        OUTLINED_FUNCTION_13_28();
        v5 = v18 + 14;
        break;
      case 6:
      case 8:
      case 9:
        OUTLINED_FUNCTION_13_28();
        v5 = v4 + 51;
        break;
      case 7:
        OUTLINED_FUNCTION_13_28();
        v5 = v17 + 40;
        break;
      default:
        v5 = 0;
        v2 = 0xE000000000000000;
        break;
    }
  }

  else
  {
    OUTLINED_FUNCTION_13_28();
    v5 = v6 + 17;
  }

  LOBYTE(v19) = v3;
  v7 = static LLMConfiguration.modelCatalogResourceID(for:)(&v19);
  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216550);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C755BAA0;
  v19 = v7;
  v20 = v9;
  sub_1C75504FC();
  MEMORY[0x1CCA5CD70](0x614278616A615F5FLL, 0xED00004C52556573);
  v11 = v20;
  *(inited + 32) = v19;
  *(inited + 40) = v11;
  *(inited + 48) = v5;
  *(inited + 56) = v2;
  v19 = 0;
  v20 = 0xE000000000000000;
  sub_1C755180C();
  sub_1C75504FC();

  v19 = v7;
  v20 = v9;
  MEMORY[0x1CCA5CD70](0x6F4D78616A615F5FLL, 0xEF656D614E6C6564);
  v12 = v20;
  *(inited + 64) = v19;
  *(inited + 72) = v12;
  LOBYTE(v19) = v3;
  LLMModelType.modelName.getter();
  *(inited + 80) = v13;
  *(inited + 88) = v14;
  v19 = 0;
  v20 = 0xE000000000000000;
  sub_1C755180C();

  v19 = v7;
  v20 = v9;
  MEMORY[0x1CCA5CD70](0xD000000000000014, 0x80000001C759E7C0);
  v15 = v20;
  *(inited + 96) = v19;
  *(inited + 104) = v15;
  *(inited + 112) = 0;
  *(inited + 120) = 0xE000000000000000;
  return sub_1C75504DC();
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t static LLMConfiguration.modelCatalogResourceID(for:)(_BYTE *a1)
{
  switch(*a1)
  {
    case 5:
    case 7:
    case 8:
      return OUTLINED_FUNCTION_90();
    case 0xA:
      sub_1C754E42C();
      goto LABEL_16;
    case 0xB:
      sub_1C754E45C();
      goto LABEL_16;
    case 0xC:
      sub_1C754E4BC();
      goto LABEL_16;
    case 0xD:
      sub_1C754E49C();
      goto LABEL_16;
    case 0xE:
      if ([objc_opt_self() useGlobalTraitsV3])
      {
        sub_1C754E48C();
      }

      else
      {
        sub_1C754E47C();
      }

      goto LABEL_16;
    case 0xF:
      sub_1C754E44C();
      goto LABEL_16;
    case 0x10:
      sub_1C754E4AC();
      goto LABEL_16;
    case 0x11:
      sub_1C754E46C();
      goto LABEL_16;
    case 0x12:
      sub_1C754E43C();
      goto LABEL_16;
    case 0x13:
      sub_1C754E4CC();
LABEL_16:
      __swift_project_boxed_opaque_existential_1(v2, v2[3]);
      sub_1C754E4DC();
      __swift_destroy_boxed_opaque_existential_1(v2);
      break;
    default:
      OUTLINED_FUNCTION_6_89();
      break;
  }

  return OUTLINED_FUNCTION_90();
}

uint64_t OUTLINED_FUNCTION_98_2(uint64_t a1)
{

  return sub_1C6FD7FC8(a1, v1);
}

uint64_t OUTLINED_FUNCTION_98_7()
{

  return sub_1C71656D8();
}

uint64_t OUTLINED_FUNCTION_98_8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(result + 16) = v12;
  *(result + 24) = v10;
  *(result + 32) = a10;
  *(result + 40) = v11;
  return result;
}

void OUTLINED_FUNCTION_98_10()
{
  v2 = *(v0 - 424);
}

uint64_t OUTLINED_FUNCTION_98_11(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
  return result;
}

uint64_t OUTLINED_FUNCTION_98_16()
{
}

void LLMModelType.modelName.getter()
{
  switch(*v0)
  {
    case 6:
      v4 = objc_opt_self();
      sub_1C6F77CA0(v4, &selRef_fallbackStorytelling30bModelName);
      OUTLINED_FUNCTION_8_70();
      break;
    case 8:
      v3 = objc_opt_self();
      sub_1C6F77CA0(v3, &selRef_fallbackAssetCuration30bModelName);
      OUTLINED_FUNCTION_8_70();
      break;
    case 9:
      v1 = objc_opt_self();
      sub_1C6F77CA0(v1, &selRef_fallbackGlobalTraits30bModelName);
      if (!v2)
      {
        [v1 useGlobalTraitsV3];
        OUTLINED_FUNCTION_8_70();
      }

      break;
    default:
      return;
  }
}

uint64_t sub_1C6F77CA0(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_1C755068C();

  return v4;
}

uint64_t sub_1C6F77D5C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v53 = a5;
  sub_1C6F78034(v52);
  v6 = v52[1];
  v7 = v52[3];
  v8 = v52[4];
  v44 = v52[5];
  v45 = v52[0];
  v9 = (v52[2] + 64) >> 6;
  sub_1C75504FC();

  v42 = v9;
  v43 = v6;
  if (v8)
  {
    while (1)
    {
      v46 = a4;
      v10 = v7;
LABEL_8:
      v12 = (v10 << 10) | (16 * __clz(__rbit64(v8)));
      v13 = (*(v45 + 48) + v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = (*(v45 + 56) + v12);
      v17 = *v16;
      v18 = v16[1];
      v51[0] = v14;
      v51[1] = v15;
      v51[2] = v17;
      v51[3] = v18;
      sub_1C75504FC();
      sub_1C75504FC();
      v44(&v47, v51);

      v20 = v47;
      v19 = v48;
      v21 = v49;
      v22 = v50;
      v23 = *v53;
      v25 = sub_1C6F78124(v47, v48);
      v26 = v23[2];
      v27 = (v24 & 1) == 0;
      if (__OFADD__(v26, v27))
      {
        break;
      }

      v28 = v24;
      if (v23[3] >= v26 + v27)
      {
        if ((v46 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215328);
          sub_1C7551A3C();
        }
      }

      else
      {
        sub_1C6F78194();
        v29 = sub_1C6F78124(v20, v19);
        if ((v28 & 1) != (v30 & 1))
        {
          goto LABEL_24;
        }

        v25 = v29;
      }

      v8 &= v8 - 1;
      v31 = *v53;
      if (v28)
      {
        v32 = (v31[7] + 16 * v25);
        v34 = *v32;
        v33 = v32[1];
        sub_1C75504FC();

        v35 = (v31[7] + 16 * v25);
        *v35 = v34;
        v35[1] = v33;
      }

      else
      {
        v31[(v25 >> 6) + 8] |= 1 << v25;
        v36 = (v31[6] + 16 * v25);
        *v36 = v20;
        v36[1] = v19;
        v37 = (v31[7] + 16 * v25);
        *v37 = v21;
        v37[1] = v22;
        v38 = v31[2];
        v39 = __OFADD__(v38, 1);
        v40 = v38 + 1;
        if (v39)
        {
          goto LABEL_23;
        }

        v31[2] = v40;
      }

      a4 = 1;
      v7 = v10;
      v9 = v42;
      v6 = v43;
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v11 = v7;
    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        sub_1C6F61E88();
      }

      v8 = *(v6 + 8 * v10);
      ++v11;
      if (v8)
      {
        v46 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

uint64_t sub_1C6F78058@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t sub_1C6F78094@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C6F780D8(v7, *a1, a1[1], a1[2], a1[3]);
  v4 = v7[0];
  v5 = v7[1];
  *a2 = result;
  a2[1] = v6;
  a2[2] = v4;
  a2[3] = v5;
  return result;
}

uint64_t sub_1C6F780D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = a4;
  a1[1] = a5;
  sub_1C75504FC();
  sub_1C75504FC();
  return a2;
}

unint64_t sub_1C6F78124(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_42_4();
  sub_1C75505AC();
  v4 = sub_1C7551FAC();

  return sub_1C6F78354(a1, a2, v4);
}

void sub_1C6F78194()
{
  OUTLINED_FUNCTION_54_26();
  OUTLINED_FUNCTION_25_41();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AD88);
  OUTLINED_FUNCTION_39_35();
  v25 = v1;
  v3 = sub_1C7551AFC();
  if (!*(v2 + 16))
  {
LABEL_27:

    *v0 = v3;
    OUTLINED_FUNCTION_53_30();
    return;
  }

  v24 = v2;
  v4 = 0;
  v5 = v2;
  OUTLINED_FUNCTION_1_109();
  OUTLINED_FUNCTION_33_34();
  if (!v1)
  {
LABEL_4:
    v6 = v4;
    while (1)
    {
      v4 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v4 >= v0)
      {
        break;
      }

      ++v6;
      if (*(v5 + 8 * v4))
      {
        OUTLINED_FUNCTION_78_0();
        v1 = v8 & v7;
        goto LABEL_9;
      }
    }

    if (v25)
    {
      OUTLINED_FUNCTION_17_69();
      if (v20 != v21)
      {
        OUTLINED_FUNCTION_20_54(v19);
      }

      else
      {
        v22 = OUTLINED_FUNCTION_66_1();
        sub_1C71FAC38(v22, v23, v5);
      }

      *(v2 + 16) = 0;
    }

    goto LABEL_27;
  }

  while (1)
  {
    OUTLINED_FUNCTION_99_6();
LABEL_9:
    OUTLINED_FUNCTION_31_39();
    v11 = (v10 + 16 * v9);
    v12 = v11[1];
    v26 = *v11;
    if ((v25 & 1) == 0)
    {
      sub_1C75504FC();
      sub_1C75504FC();
    }

    sub_1C7551F3C();
    sub_1C75505AC();
    sub_1C7551FAC();
    OUTLINED_FUNCTION_6_85();
    OUTLINED_FUNCTION_20_6();
    if (v13)
    {
      break;
    }

    OUTLINED_FUNCTION_16();
LABEL_19:
    OUTLINED_FUNCTION_98_0();
    OUTLINED_FUNCTION_28_32(v15);
    v18 = (v17 + 16 * v16);
    *v18 = v26;
    v18[1] = v12;
    OUTLINED_FUNCTION_47_1();
    v2 = v24;
    if (!v1)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_15_0();
  while (1)
  {
    OUTLINED_FUNCTION_95_2();
    if (v13)
    {
      if (v14)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_34_33();
    if (!v13)
    {
      OUTLINED_FUNCTION_14_1();
      goto LABEL_19;
    }
  }

LABEL_29:
  __break(1u);
}

unint64_t sub_1C6F78354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_1C7551DBC() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t OUTLINED_FUNCTION_230()
{

  return sub_1C755200C();
}

unint64_t OUTLINED_FUNCTION_28_11(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);

  return sub_1C6F85170();
}

uint64_t OUTLINED_FUNCTION_28_14()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_28_17(uint64_t result, float a2)
{
  *result = a2;
  *(result + 4) = v4;
  *(result + 12) = 2048;
  *(result + 14) = v3;
  *(result + 22) = 2048;
  *(result + 24) = v5;
  *(result + 32) = 2048;
  *(result + 34) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_28_18()
{
}

uint64_t OUTLINED_FUNCTION_28_21(uint64_t a1, uint64_t a2)
{
  *v2 = a1;
  v2[1] = a2;
}

void OUTLINED_FUNCTION_28_24()
{
  *(v0 + 16) = v1;
  v5 = v0 + 16 * v4;
  *(v5 + 32) = v2;
  *(v5 + 40) = v3;
}

uint64_t OUTLINED_FUNCTION_28_28()
{

  return sub_1C754FEBC();
}

void OUTLINED_FUNCTION_28_29()
{

  sub_1C6FB1C14();
}

uint64_t OUTLINED_FUNCTION_28_31()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_28_32(uint64_t a1@<X8>)
{
  *(v4 + v1) = v2;
  v7 = (*(v3 + 48) + 16 * a1);
  *v7 = v5;
  v7[1] = v6;
}

uint64_t OUTLINED_FUNCTION_28_34()
{

  return swift_allocObject();
}

void *OUTLINED_FUNCTION_28_35()
{
  v2 = *(v0 + 2584);
  v3 = *(v0 + 2576);
  v4 = *(v0 + 2568);
  v5 = *(v0 + 2560);
  v6 = *(v0 + 2139);

  return sub_1C6FE0E14(v5, v4, v3, v2, v6);
}

__n128 OUTLINED_FUNCTION_28_38@<Q0>(uint64_t a1@<X0>, __int16 a2@<W8>)
{
  *(v4 + 688) = a2;
  *(v4 + 696) = v2;
  *(v4 + 704) = a1;
  v6 = *(v3 + 16);
  *v5 = *v3;
  *(v5 + 16) = v6;
  result = *(v3 + 32);
  v8 = *(v3 + 48);
  *(v5 + 32) = result;
  *(v5 + 48) = v8;
  return result;
}

uint64_t OUTLINED_FUNCTION_28_39()
{
  __swift_project_boxed_opaque_existential_1(*(v0 + 48), *(*(v0 + 48) + 24));

  return sub_1C754F1AC();
}

uint64_t OUTLINED_FUNCTION_28_41()
{

  return sub_1C70DF138(v0 + 16);
}

uint64_t OUTLINED_FUNCTION_28_42()
{
}

uint64_t OUTLINED_FUNCTION_28_46()
{

  return sub_1C75515AC();
}

uint64_t OUTLINED_FUNCTION_46_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 + 56);
  result = *(v7 + 8 * v6);
  *(v7 + 8 * v6) = v5;
  return result;
}

void OUTLINED_FUNCTION_46_9()
{

  JUMPOUT(0x1CCA5CD70);
}

uint64_t OUTLINED_FUNCTION_46_10(uint64_t result)
{
  v2 = *(v1 - 96);
  *(v1 - 152) = v2 + 32;
  *(v1 - 144) = v2 + 16;
  *(v1 - 136) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_46_11()
{

  return sub_1C75513DC();
}

void OUTLINED_FUNCTION_46_12()
{

  JUMPOUT(0x1CCA5CD70);
}

uint64_t OUTLINED_FUNCTION_46_15@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = result;
  *(v2 - 144) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_46_17()
{

  return sub_1C75504FC();
}

uint64_t OUTLINED_FUNCTION_46_19()
{

  return sub_1C7551F3C();
}

void OUTLINED_FUNCTION_46_21()
{

  JUMPOUT(0x1CCA5CD70);
}

uint64_t OUTLINED_FUNCTION_46_22()
{
}

uint64_t OUTLINED_FUNCTION_46_27()
{

  return sub_1C7551DBC();
}

uint64_t OUTLINED_FUNCTION_46_28()
{
  *(v1 + 3080) = *(v1 + 3080) + v0;

  return swift_bridgeObjectRetain_n();
}

void OUTLINED_FUNCTION_46_32()
{
  *v1 = v4;
  v1[1] = v0;
  v1[2] = *(v5 - 88);
  v1[3] = v3;
  v1[4] = v2;
}

uint64_t OUTLINED_FUNCTION_46_33()
{
}

void OUTLINED_FUNCTION_46_34()
{

  sub_1C6FB0EFC();
}

void OUTLINED_FUNCTION_46_37(__n128 a1)
{
  v4[49] = a1;
  v4[50].n128_u8[0] = v5;
  v4[50].n128_u8[1] = v3;
  v4[50].n128_u64[1] = v1;
  v4[51].n128_u16[0] = v2;
}

void OUTLINED_FUNCTION_46_39()
{
  *(v0 + 16) = v1;
  v5 = v0 + v3;
  *(v5 + 32) = v4;
  *(v5 + 40) = v2;
}

void *OUTLINED_FUNCTION_46_40()
{
  v2 = *(v0 + 272);
  v3 = v2[3];

  return __swift_project_boxed_opaque_existential_1(v2, v3);
}

uint64_t OUTLINED_FUNCTION_29_1(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_29_4()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 528);
}

uint64_t OUTLINED_FUNCTION_163_0()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_29_11(uint64_t a1)
{
  *(a1 + 16) = v1;

  os_unfair_lock_lock(v2 + 7);
}

uint64_t OUTLINED_FUNCTION_81_0()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_29_15()
{

  return sub_1C755059C();
}

uint64_t OUTLINED_FUNCTION_29_17()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_29_19@<X0>(uint64_t a1@<X8>)
{
  *(a1 - 256) = v2;
  *(v4 - 256) = v3;
  *(v4 - 272) = v1;

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_29_27()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_29_28()
{

  return sub_1C754F1CC();
}

void OUTLINED_FUNCTION_29_33(unint64_t a1@<X8>)
{

  sub_1C716D6F4(a1 > 1, v1, 1);
}

uint64_t OUTLINED_FUNCTION_29_34(uint64_t a1, float a2)
{
  *a1 = a2;
  *(a1 + 4) = *(v2 + 16);
}

unint64_t OUTLINED_FUNCTION_29_35()
{

  return sub_1C6FC31EC(v1, v0);
}

void OUTLINED_FUNCTION_29_38()
{

  sub_1C6F7ED9C();
}

uint64_t OUTLINED_FUNCTION_29_39()
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, v0);
}

uint64_t OUTLINED_FUNCTION_29_42(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);

  return sub_1C74691A8(va1, va);
}

void OUTLINED_FUNCTION_29_43()
{
  v5 = *(*(v2 + 232) + 56) + 16 * v4;
  v6 = *v5;
  v7 = *(v5 + 8);
  *v5 = v1;
  *(v5 + 8) = v3;
  sub_1C6FDE438(v6, v7);
}

uint64_t OUTLINED_FUNCTION_29_44()
{
}

void OUTLINED_FUNCTION_29_46()
{

  JUMPOUT(0x1CCA5CD70);
}

void OUTLINED_FUNCTION_33_10()
{

  sub_1C6FB0EFC();
}

uint64_t OUTLINED_FUNCTION_33_12()
{

  return sub_1C755104C();
}

void OUTLINED_FUNCTION_33_15()
{

  JUMPOUT(0x1CCA5CD70);
}

uint64_t OUTLINED_FUNCTION_33_17()
{

  return swift_slowAlloc();
}

__n128 *OUTLINED_FUNCTION_33_19()
{
  *(v0 + 16) = v1;

  return sub_1C6F79794(v4 - 128, (v0 + v3 * v2 + 32));
}

void *OUTLINED_FUNCTION_33_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  *(v17 + *(a1 + 56)) = v15;

  return static MusicMood.musicMoodFromPHMemoryMood(_:)(v16, va);
}

void OUTLINED_FUNCTION_33_23()
{

  sub_1C6F7ED9C();
}

uint64_t OUTLINED_FUNCTION_33_24()
{
}

uint64_t OUTLINED_FUNCTION_33_25()
{
}

uint64_t OUTLINED_FUNCTION_33_27()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_33_28(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x1E69E9820];
  return result;
}

uint64_t OUTLINED_FUNCTION_33_29(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  return sub_1C6F765A4(v3, v4, va);
}

uint64_t OUTLINED_FUNCTION_33_31()
{
  *(v1 + 16) = v0;

  return sub_1C6FD80E4((v3 - 168), v1 + 40 * v2 + 32);
}

uint64_t OUTLINED_FUNCTION_33_32()
{
  v2 = *(v0 + 584);

  return sub_1C6FF7688(v2);
}

uint64_t OUTLINED_FUNCTION_33_35(uint64_t a1)
{
  *a1 = *(v1 + 160);
  *(a1 + 4) = *(v2 + 16);
}

uint64_t OUTLINED_FUNCTION_33_37()
{
}

uint64_t OUTLINED_FUNCTION_33_39()
{

  return sub_1C7551BBC();
}

uint64_t OUTLINED_FUNCTION_33_40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{
  *(a1 + 16) = a9;
  *(a1 + 32) = *(v10 + 352);
  *(a1 + 48) = v9;

  return sub_1C75504FC();
}

uint64_t OUTLINED_FUNCTION_33_42()
{

  return sub_1C7551A2C();
}

uint64_t OUTLINED_FUNCTION_33_44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *(a1 + 16) = a9;
  *(a1 + 32) = 0xD00000000000004FLL;
  *(a1 + 40) = (a2 - 32) | 0x8000000000000000;
  return a14;
}

uint64_t OUTLINED_FUNCTION_33_45()
{
  v4 = *(v0 + 304);
  v5 = *(v0 + 312) + 1;
  *(v0 + 320) = v2;
  *(v0 + 328) = v1;
  *(v0 + 312) = v5;
  v6 = *(v0 + 216) + ((*(v0 + 400) + 32) & ~*(v0 + 400)) + v4 * v5;
  v7 = *(v0 + 272);

  return sub_1C721AB4C(v6, v7);
}

uint64_t OUTLINED_FUNCTION_33_46()
{
}

__n128 *sub_1C6F79794(uint64_t a1, __n128 *a2)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  a2[2].n128_u64[0] = *(a1 + 32);
  return OUTLINED_FUNCTION_115_7(v2, v3, a1, a2);
}

void *OUTLINED_FUNCTION_12_10()
{

  return sub_1C6FE0E14(v3, v2, v0, v1, v4);
}

uint64_t OUTLINED_FUNCTION_12_12()
{
}

uint64_t OUTLINED_FUNCTION_12_14()
{

  return sub_1C7551ADC();
}

uint64_t OUTLINED_FUNCTION_12_19()
{

  return sub_1C716C9F0(0, v0 & ~(v0 >> 63), 0);
}

void OUTLINED_FUNCTION_12_20(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_12_21()
{
  *(v1 + 192) = *(v2 + 8);
  *(v1 + 200) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  return v0;
}

uint64_t OUTLINED_FUNCTION_12_22()
{
}

uint64_t OUTLINED_FUNCTION_12_23(uint64_t a1)
{

  return sub_1C70BFBC8(a1, _s9GeneratorVMa_0);
}

uint64_t OUTLINED_FUNCTION_12_24@<X0>(uint64_t a1@<X8>)
{
  v4 = (v1 + ((v3 << 10) | (16 * a1)));
  result = v4[1];
  *v2 = *v4;
  v2[1] = result;
  return result;
}

void OUTLINED_FUNCTION_24_7(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_12_32()
{

  return sub_1C7551D2C();
}

void OUTLINED_FUNCTION_12_33()
{

  JUMPOUT(0x1CCA5CD70);
}

void OUTLINED_FUNCTION_12_35(uint64_t a1@<X8>)
{
  v3 = v1 + a1;
  *v3 = 0;
  *(v3 + 8) = v2;
}

void OUTLINED_FUNCTION_12_36()
{

  sub_1C6F7ED9C();
}

uint64_t OUTLINED_FUNCTION_12_40()
{

  return sub_1C7551C1C();
}

uint64_t OUTLINED_FUNCTION_12_41()
{
}

uint64_t OUTLINED_FUNCTION_12_49()
{
  *(v1 + 736) = v0;

  return sub_1C754DF3C();
}

uint64_t OUTLINED_FUNCTION_12_55(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  return sub_1C754F1AC();
}

uint64_t OUTLINED_FUNCTION_12_56()
{

  return sub_1C7551D8C();
}

uint64_t OUTLINED_FUNCTION_12_57@<X0>(void *a1@<X8>)
{
  v4 = v1[6];
  v3 = v1[7];
  v6 = v1[8];
  v5 = v1[9];
  v7 = v1[10];
  *a1 = v4;
  a1[1] = v3;
  a1[2] = v6;
  a1[3] = v5;
  a1[4] = v7;

  return sub_1C75504FC();
}

uint64_t OUTLINED_FUNCTION_12_61(uint64_t a1)
{

  return sub_1C7337650(a1, type metadata accessor for PartOfWeekExtendedToken);
}

uint64_t OUTLINED_FUNCTION_12_65()
{

  return sub_1C755139C();
}

uint64_t OUTLINED_FUNCTION_12_69()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_12_70@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 256) = a1;

  return __swift_mutable_project_boxed_opaque_existential_0(v3, v2);
}

uint64_t OUTLINED_FUNCTION_12_73()
{
}

uint64_t OUTLINED_FUNCTION_12_75()
{

  return swift_once();
}

void OUTLINED_FUNCTION_12_80()
{

  JUMPOUT(0x1CCA5CD70);
}

uint64_t OUTLINED_FUNCTION_12_81(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{

  return sub_1C74691A8(&a45, &a37);
}

uint64_t OUTLINED_FUNCTION_12_83()
{

  return MusicKeywordCompletion.init(keyword:score:)(v0, v1, v3);
}

uint64_t OUTLINED_FUNCTION_12_88()
{

  return sub_1C754FD3C();
}

uint64_t OUTLINED_FUNCTION_12_91()
{

  return swift_once();
}

size_t OUTLINED_FUNCTION_15_9(void *a1)
{
  result = _swift_stdlib_malloc_size(a1);
  a1[2] = v1;
  a1[3] = 2 * ((result - 32) / v2);
  return result;
}

uint64_t OUTLINED_FUNCTION_59_0()
{
}

double OUTLINED_FUNCTION_15_12()
{
  result = 0.0;
  *v0 = 0u;
  v0[1] = 0u;
  return result;
}

void OUTLINED_FUNCTION_15_13()
{
  v2 = v0[1];
  *(v1 - 104) = v0[2];
  *(v1 - 100) = v2;
  v3 = v0[3];
  *(v1 - 112) = v0[4];
  *(v1 - 108) = v3;
}

uint64_t OUTLINED_FUNCTION_15_14()
{
  *(v0 + 120) = v1;
  *(v0 + 88) = sub_1C6FEF5A4;

  return swift_continuation_init();
}

uint64_t OUTLINED_FUNCTION_15_16()
{
  v3 = *(v1 + 232);
  v4 = *(v1 + 240);
  v5 = *(v1 + 248);
  *(v0 + 3320) = v3;
  *(v0 + 3328) = v4;
  *(v0 + 3336) = v5;

  return type metadata accessor for PersonalTraitEntityNetDataSource();
}

uint64_t OUTLINED_FUNCTION_15_23()
{

  return sub_1C755155C();
}

void OUTLINED_FUNCTION_15_25()
{

  JUMPOUT(0x1CCA5CD70);
}

uint64_t OUTLINED_FUNCTION_15_33(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  *v9 = a1;

  return sub_1C6F765A4(v8, v7, va);
}

void OUTLINED_FUNCTION_15_34()
{

  JUMPOUT(0x1CCA5CD70);
}

uint64_t OUTLINED_FUNCTION_15_36()
{

  return sub_1C7551B4C();
}

id OUTLINED_FUNCTION_15_38(id a1, SEL a2, double a3, double a4, double a5)
{

  return [a1 a2];
}

BOOL OUTLINED_FUNCTION_15_44()
{

  return StoryPromptAttributes.hasMusicCurationIngredients()();
}

unint64_t OUTLINED_FUNCTION_15_46(uint64_t a1)
{

  return sub_1C718DE9C(a1);
}

void OUTLINED_FUNCTION_15_50()
{

  sub_1C7069CE4(0x64644D4D5959, 0xE600000000000000, v0);
}

void OUTLINED_FUNCTION_15_51()
{
  v1 = *(v0 - 160);
  *(v0 - 168) = *(v0 - 168);
  *(v0 - 160) = v1;
}

uint64_t OUTLINED_FUNCTION_15_52()
{
}

uint64_t OUTLINED_FUNCTION_15_53(uint64_t a1)
{

  return static StoryGenerationUtilities.arrayAsSentence(for:includeComma:emptyArrayResult:)(a1, 0, 0);
}

uint64_t OUTLINED_FUNCTION_15_55()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_15_56()
{
  __swift_project_boxed_opaque_existential_1(*(v0 + 1416), *(*(v0 + 1416) + 24));

  return sub_1C754F1AC();
}

uint64_t OUTLINED_FUNCTION_15_58()
{

  return sub_1C754F16C();
}

uint64_t OUTLINED_FUNCTION_15_64()
{

  return sub_1C754FEEC();
}

void OUTLINED_FUNCTION_15_65(uint64_t a1)
{
  *(v1 + 16) = v2;
  *(v1 + 24) = 2 * ((a1 - 32) / 16);

  sub_1C70D065C();
}

uint64_t OUTLINED_FUNCTION_15_68()
{
  v1 = *(v0 + 200);
  __swift_destroy_boxed_opaque_existential_1(v0 + 112);
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);

  return sub_1C754F1AC();
}

void OUTLINED_FUNCTION_15_72()
{
}

id OUTLINED_FUNCTION_15_74(id a1, SEL a2)
{

  return [a1 a2];
}

BOOL OUTLINED_FUNCTION_15_75(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_15_78()
{

  return sub_1C6FC2A70();
}

uint64_t OUTLINED_FUNCTION_15_81()
{
  v2 = *(v0 + 112);

  return sub_1C6FD2F68(v2);
}

uint64_t OUTLINED_FUNCTION_15_88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  *(v36 - 104) = a1;
  *(v36 - 96) = a2;

  return sub_1C709D4BC(&a36, &a20);
}

uint64_t OUTLINED_FUNCTION_15_89@<X0>(uint64_t a1@<X8>)
{

  return static MusicLocalizer.localizedString(forKey:)(v1 + 1, (a1 - 32) | 0x8000000000000000);
}

uint64_t OUTLINED_FUNCTION_31_4()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_31_8()
{

  return sub_1C7551AAC();
}

uint64_t OUTLINED_FUNCTION_31_9()
{

  return sub_1C7551A2C();
}

uint64_t OUTLINED_FUNCTION_31_13(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3);
}

uint64_t OUTLINED_FUNCTION_31_14()
{
  *(v1 - 96) = v0;

  return sub_1C755058C();
}

void OUTLINED_FUNCTION_31_20()
{
  *(v0 + 16) = v2;
  v5 = v0 + 16 * v4;
  *(v5 + 32) = v3;
  *(v5 + 40) = v1;
}

uint64_t OUTLINED_FUNCTION_31_21()
{
  v1 = *(v0 + 1776);
  __swift_destroy_boxed_opaque_existential_1(v0 + 1592);
  return v1;
}

uint64_t OUTLINED_FUNCTION_31_22()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_31_29()
{
}

uint64_t OUTLINED_FUNCTION_31_32()
{
  *(v2 - 72) = v1;
  v4 = *(v0 + 352);

  return __swift_mutable_project_boxed_opaque_existential_0(v0 + 328, v4);
}

void OUTLINED_FUNCTION_31_35()
{

  sub_1C6FB1C14();
}

uint64_t OUTLINED_FUNCTION_31_37()
{
}

uint64_t OUTLINED_FUNCTION_31_41(uint64_t a1, void *a2)
{
  a2[2] = 0;
  a2[3] = 0;
  a2[4] = 0x8000000000000000;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_31_42()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_31_44()
{
}

void OUTLINED_FUNCTION_45_9()
{

  JUMPOUT(0x1CCA5CD70);
}