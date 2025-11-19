uint64_t VCLocalizedString(_:_:)(uint64_t a1)
{
  v2 = *(*(sub_2723FE344() - 8) + 64);
  MEMORY[0x28223BE20]();
  v3 = *(*(sub_2723FE564() - 8) + 64);
  MEMORY[0x28223BE20]();
  (*(v5 + 16))(&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  type metadata accessor for VCSettings();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass_];
  sub_2723FE324();
  sub_2723FE5F4();
  v8 = sub_2723FE584();

  return v8;
}

uint64_t String.voiceControlLocaleIdentifier.getter()
{
  v0 = sub_2723FE2D4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x277CC9668], v0);
  v5 = sub_2723FE2C4();
  v7 = v6;
  (*(v1 + 8))(v4, v0);
  v10[4] = v5;
  v10[5] = v7;
  v10[2] = 45;
  v10[3] = 0xE100000000000000;
  v10[0] = 95;
  v10[1] = 0xE100000000000000;
  sub_2723CD24C();
  v8 = sub_2723FE984();

  return v8;
}

unint64_t sub_2723CD24C()
{
  result = qword_280893E30;
  if (!qword_280893E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280893E30);
  }

  return result;
}

uint64_t sub_2723CD2A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2723FE574();
  v7 = SecTaskCopyValueForEntitlement(v3, v6, 0);

  if (v7 && (v12[0] = v7, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893E70, &unk_2723FFA30), v8 = swift_dynamicCast(), (v8 & 1) != 0))
  {
    v12[0] = a1;
    v12[1] = a2;
    MEMORY[0x28223BE20](v8);
    v11[2] = v12;
    v9 = sub_2723E718C(sub_2723CE180, v11, v12[2]);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_2723CD3C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2723FE574();
  v7 = SecTaskCopyValueForEntitlement(v3, v6, 0);

  if (v7 && (v12[0] = v7, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893E70, &unk_2723FFA30), v8 = swift_dynamicCast(), (v8 & 1) != 0))
  {
    v12[0] = a1;
    v12[1] = a2;
    MEMORY[0x28223BE20](v8);
    v11[2] = v12;
    v9 = sub_2723E718C(sub_2723CE15C, v11, v12[2]);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

Swift::Bool __swiftcall NSProcessInfo.hasEntitlement(_:)(Swift::String a1)
{
  v1 = SecTaskCreateFromSelf(*MEMORY[0x277CBECE8]);
  if (v1)
  {
    v2 = v1;
    v3 = sub_2723FE574();
    v4 = SecTaskCopyValueForEntitlement(v2, v3, 0);

    if (v4)
    {
      objc_opt_self();
      v5 = swift_dynamicCastObjCClass();
      if (v5)
      {
        v6 = [v5 BOOLValue];
        swift_unknownObjectRelease();

        LOBYTE(v1) = v6;
        return v1;
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }

    LOBYTE(v1) = 0;
  }

  return v1;
}

unint64_t sub_2723CD5C0()
{
  result = sub_2723CD5E0();
  qword_280893D68 = result;
  return result;
}

unint64_t sub_2723CD5E0()
{
  v17[5] = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() defaultManager];
  v1 = sub_2723FE574();
  v2 = [v0 contentsAtPath_];

  if (v2)
  {
    v3 = sub_2723FE224();
    v5 = v4;

    v6 = objc_opt_self();
    sub_2723CE06C(v3, v5);
    v7 = sub_2723FE214();
    v17[0] = 0;
    v8 = [v6 propertyListWithData:v7 options:2 format:0 error:v17];

    v9 = v17[0];
    if (v8)
    {
      sub_2723FE994();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893E68, &qword_2723FFA28);
      if (swift_dynamicCast())
      {
        sub_2723CE0C0(v3, v5);
        sub_2723CE0C0(v3, v5);
        v10 = v17[0];
LABEL_10:
        v16 = *MEMORY[0x277D85DE8];
        return v10;
      }
    }

    else
    {
      v14 = v9;
      v15 = sub_2723FE164();

      swift_willThrow();
    }

    v10 = sub_2723D7BC0(MEMORY[0x277D84F90]);
    sub_2723CE0C0(v3, v5);
    sub_2723CE0C0(v3, v5);
    goto LABEL_10;
  }

  v11 = *MEMORY[0x277D85DE8];
  v12 = MEMORY[0x277D84F90];

  return sub_2723D7BC0(v12);
}

uint64_t static VCUtilities.SystemVersion.getter()
{
  if (qword_280893D60 != -1)
  {
    swift_once();
  }
}

uint64_t sub_2723CD888(uint64_t a1, id *a2)
{
  result = sub_2723FE594();
  *a2 = 0;
  return result;
}

uint64_t sub_2723CD900(uint64_t a1, id *a2)
{
  v3 = sub_2723FE5A4();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2723CD980@<X0>(uint64_t *a1@<X8>)
{
  sub_2723FE5B4();
  v2 = sub_2723FE574();

  *a1 = v2;
  return result;
}

uint64_t sub_2723CD9C4()
{
  v1 = *v0;
  v2 = sub_2723FE5B4();
  v3 = MEMORY[0x2743C7300](v2);

  return v3;
}

uint64_t sub_2723CDA00()
{
  v1 = *v0;
  sub_2723FE5B4();
  sub_2723FE634();
}

uint64_t sub_2723CDA54()
{
  v1 = *v0;
  sub_2723FE5B4();
  sub_2723FEC94();
  sub_2723FE634();
  v2 = sub_2723FECB4();

  return v2;
}

uint64_t sub_2723CDAC8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_2723FE5B4();
  v6 = v5;
  if (v4 == sub_2723FE5B4() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2723FEC44();
  }

  return v9 & 1;
}

uint64_t sub_2723CDB50@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2723FE574();

  *a2 = v5;
  return result;
}

uint64_t sub_2723CDB98@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_2723FE5B4();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_2723CDBC4(uint64_t a1)
{
  v2 = sub_2723CE028(&qword_280893E58);
  v3 = sub_2723CE028(&qword_280893E60);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t _sSo13NSProcessInfoC12VoiceControlE23canReadPreferenceDomainySbSSF_0(uint64_t a1, uint64_t a2)
{
  result = SecTaskCreateFromSelf(*MEMORY[0x277CBECE8]);
  if (result)
  {
    v5 = result;
    v6 = sub_2723FE574();
    v7 = SecTaskCopyValueForEntitlement(v5, v6, 0);

    if (!v7)
    {
LABEL_6:

      return 1;
    }

    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      v9 = [v8 BOOLValue];
      swift_unknownObjectRelease();
      if (v9 & 1) == 0 || (sub_2723CD3C8(a1, a2))
      {
        goto LABEL_6;
      }

      v10 = sub_2723CD2A0(a1, a2);

      return v10 & 1;
    }

    else
    {

      swift_unknownObjectRelease();
      return 1;
    }
  }

  return result;
}

uint64_t _sSo13NSProcessInfoC12VoiceControlE24canWritePreferenceDomainySbSSF_0(uint64_t a1, uint64_t a2)
{
  result = SecTaskCreateFromSelf(*MEMORY[0x277CBECE8]);
  if (result)
  {
    v5 = result;
    v6 = sub_2723FE574();
    v7 = SecTaskCopyValueForEntitlement(v5, v6, 0);

    if (v7)
    {
      objc_opt_self();
      v8 = swift_dynamicCastObjCClass();
      if (!v8)
      {

        swift_unknownObjectRelease();
        return 1;
      }

      v9 = [v8 BOOLValue];
      swift_unknownObjectRelease();
      if (v9)
      {
        v10 = sub_2723CD3C8(a1, a2);

        return v10 & 1;
      }
    }

    return 1;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VCUtilities(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for VCUtilities(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

void type metadata accessor for URLResourceKey()
{
  if (!qword_280893E38)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_280893E38);
    }
  }
}

uint64_t sub_2723CE028(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for URLResourceKey();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2723CE06C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2723CE0C0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
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

uint64_t sub_2723CE1B0()
{
  v1 = *v0;
  sub_2723FEC94();
  MEMORY[0x2743C78D0](v1);
  return sub_2723FECB4();
}

uint64_t sub_2723CE224()
{
  v1 = *v0;
  sub_2723FEC94();
  MEMORY[0x2743C78D0](v1);
  return sub_2723FECB4();
}

const char *sub_2723CE27C()
{
  v1 = *v0;
  v2 = "use_speech_detector";
  v3 = "glass_overlays";
  if (v1 != 6)
  {
    v3 = "use_whats_new_settings_segmented_control";
  }

  v4 = "swift_coding_mode";
  if (v1 != 4)
  {
    v4 = "input_audio_coexistence_support";
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = "llm_command_handling";
  if (v1 != 2)
  {
    v5 = "vocabulary_sync";
  }

  if (*v0)
  {
    v2 = "use_streaming_dictation";
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *sub_2723CE368()
{
  if (*v0)
  {
    return "SolariumTV";
  }

  else
  {
    return "Solarium";
  }
}

uint64_t sub_2723CE3A0()
{
  sub_2723FEC94();
  MEMORY[0x2743C78D0](0);
  return sub_2723FECB4();
}

uint64_t sub_2723CE40C()
{
  sub_2723FEC94();
  MEMORY[0x2743C78D0](0);
  return sub_2723FECB4();
}

unint64_t sub_2723CE498()
{
  result = qword_280893E78;
  if (!qword_280893E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280893E78);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t static VCFeatureFlags.inputAudioCoexistenceSupportEnabled()()
{
  v4 = &_s9VCFeatureON;
  v5 = sub_2723CE498();
  LOBYTE(v3[0]) = 5;
  v0 = sub_2723FE354();
  __swift_destroy_boxed_opaque_existential_1(v3);
  if (v0 & 1) != 0 && (v4 = &_s11VCMXFeatureON, v5 = sub_2723CE764(), v1 = sub_2723FE354(), __swift_destroy_boxed_opaque_existential_1(v3), (v1))
  {
    return [swift_getObjCClassFromMetadata() isVirtualMachine] ^ 1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2723CE764()
{
  result = qword_280893E80;
  if (!qword_280893E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280893E80);
  }

  return result;
}

unint64_t sub_2723CE808()
{
  result = qword_280893E88;
  if (!qword_280893E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280893E88);
  }

  return result;
}

uint64_t sub_2723CE8EC(uint64_t a1, uint64_t (*a2)(void), char a3)
{
  v6[3] = a1;
  v6[4] = a2();
  LOBYTE(v6[0]) = a3;
  v4 = sub_2723FE354();
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v4 & 1;
}

uint64_t sub_2723CE964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), char a5)
{
  v8[3] = a3;
  v8[4] = a4();
  LOBYTE(v8[0]) = a5;
  v6 = sub_2723FE354();
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v6 & 1;
}

VCFeatureFlags __swiftcall VCFeatureFlags.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for VCFeatureFlags()
{
  result = qword_280893E90;
  if (!qword_280893E90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280893E90);
  }

  return result;
}

uint64_t _s17VCSolariumFeatureOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s17VCSolariumFeatureOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s9VCFeatureOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s9VCFeatureOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2723CED94()
{
  result = qword_280893E98;
  if (!qword_280893E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280893E98);
  }

  return result;
}

unint64_t sub_2723CEDEC()
{
  result = qword_280893EA0;
  if (!qword_280893EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280893EA0);
  }

  return result;
}

unint64_t sub_2723CEE44()
{
  result = qword_280893EA8;
  if (!qword_280893EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280893EA8);
  }

  return result;
}

uint64_t VCVocabularyEntry.creationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2723FE294();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t VCVocabularyEntry.creationDate.setter(uint64_t a1)
{
  v3 = sub_2723FE294();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t VCVocabularyEntry.text.getter()
{
  v1 = (v0 + *(type metadata accessor for VCVocabularyEntry() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t type metadata accessor for VCVocabularyEntry()
{
  result = qword_280893F80;
  if (!qword_280893F80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t VCVocabularyEntry.text.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for VCVocabularyEntry() + 20));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t VCVocabularyEntry.pronunciations.getter()
{
  v1 = *(v0 + *(type metadata accessor for VCVocabularyEntry() + 24));
}

uint64_t VCVocabularyEntry.pronunciations.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for VCVocabularyEntry() + 24);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t VCVocabularyEntry.modificationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893EB0, &unk_2723FFC80) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v5 = &v11 - v4;
  v6 = type metadata accessor for VCVocabularyEntry();
  sub_2723D9360(v1 + *(v6 + 28), v5, &qword_280893EB0, &unk_2723FFC80);
  v7 = sub_2723FE294();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (v9(v5, 1, v7) != 1)
  {
    return (*(v8 + 32))(a1, v5, v7);
  }

  (*(v8 + 16))(a1, v1, v7);
  result = (v9)(v5, 1, v7);
  if (result != 1)
  {
    return sub_2723D9188(v5, &qword_280893EB0, &unk_2723FFC80);
  }

  return result;
}

BOOL VCVocabularyEntry.isMissingModificationDate.getter()
{
  v1 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893EB0, &unk_2723FFC80) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v3 = &v8 - v2;
  v4 = type metadata accessor for VCVocabularyEntry();
  sub_2723D9360(v0 + *(v4 + 28), v3, &qword_280893EB0, &unk_2723FFC80);
  v5 = sub_2723FE294();
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) == 1;
  sub_2723D9188(v3, &qword_280893EB0, &unk_2723FFC80);
  return v6;
}

uint64_t VCVocabularyEntry.locale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2723FE2D4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (v1 + *(type metadata accessor for VCVocabularyEntry() + 32));
  if (v8[1])
  {
    v9 = *v8;
    (*(v4 + 104))(v7, *MEMORY[0x277CC9668], v3);
    v10 = sub_2723FE2C4();
    v12 = v11;
    (*(v4 + 8))(v7, v3);
    v23[4] = v10;
    v23[5] = v12;
    v23[2] = 45;
    v23[3] = 0xE100000000000000;
    v23[0] = 95;
    v23[1] = 0xE100000000000000;
    sub_2723CD24C();
    sub_2723FE984();

    return sub_2723FE2A4();
  }

  else
  {
    if (qword_280893DC8 != -1)
    {
      swift_once();
    }

    v14 = sub_2723EC124();
    v16 = v15;
    if (qword_280893E00 != -1)
    {
      swift_once();
    }

    v17 = qword_280894088;
    v18 = [objc_opt_self() sharedPreferences];
    v19 = [v18 languageCode];

    if (v19)
    {
      v20 = sub_2723FE5B4();
      v22 = v21;
    }

    else
    {
      v20 = 0;
      v22 = 0;
    }

    sub_2723FE2F4();
    sub_2723EB6EC(v17, v14, v16, v20, v22, a1);
  }
}

uint64_t VCVocabularyEntry.additionalInfo.getter()
{
  v1 = v0 + *(type metadata accessor for VCVocabularyEntry() + 40);
  v2 = *v1;
  sub_2723D5A4C(*v1, *(v1 + 8));
  return v2;
}

uint64_t VCVocabularyEntry.additionalInfo.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for VCVocabularyEntry() + 40);
  result = sub_2723D5A60(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t VCVocabularyEntry.asDictionary.getter()
{
  v19 = *MEMORY[0x277D85DE8];
  v0 = sub_2723FE084();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_2723FE074();
  type metadata accessor for VCVocabularyEntry();
  sub_2723D91E8(&qword_280893EB8, type metadata accessor for VCVocabularyEntry);
  v4 = sub_2723FE064();
  v6 = v5;

  v7 = objc_opt_self();
  v8 = sub_2723FE214();
  *&v17 = 0;
  v9 = [v7 JSONObjectWithData:v8 options:0 error:&v17];

  v10 = v17;
  if (v9)
  {
    sub_2723FE994();
    sub_2723CE0C0(v4, v6);
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = v10;
    v12 = sub_2723FE164();

    swift_willThrow();
    sub_2723CE0C0(v4, v6);

    v17 = 0u;
    v18 = 0u;
  }

  v15[0] = v17;
  v15[1] = v18;
  if (*(&v18 + 1))
  {
    sub_2723D5A74(v15, &v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893E68, &qword_2723FFA28);
    if (swift_dynamicCast())
    {
      result = v16;
    }

    else
    {
      result = 0;
    }
  }

  else
  {
    result = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

VoiceControl::VCVocabularyEntry::CodingKeys_optional __swiftcall VCVocabularyEntry.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2723FEB64();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

VoiceControl::VCVocabularyEntry::CodingKeys_optional __swiftcall VCVocabularyEntry.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  result.value = VCVocabularyEntry.CodingKeys.init(rawValue:)(stringValue).value;
  *v2 = v4;
  return result;
}

unint64_t sub_2723CFAD8()
{
  v1 = *v0;
  v2 = 0x6E6F697461657243;
  v3 = 0x6574656C65447349;
  if (v1 != 5)
  {
    v3 = 0x6E6F697469646441;
  }

  v4 = 1954047316;
  if (v1 != 3)
  {
    v4 = 0x7341504974786554;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2723CFBE4()
{
  *v0;
  *v0;
  *v0;
  sub_2723FE634();
}

uint64_t sub_2723CFD14()
{
  sub_2723FEC94();
  sub_2723FE634();

  return sub_2723FECB4();
}

void sub_2723CFE5C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000065746144;
  v4 = 0x6E6F697461657243;
  v5 = 0xE900000000000064;
  v6 = 0x6574656C65447349;
  if (v2 != 5)
  {
    v6 = 0x6E6F697469646441;
    v5 = 0xEE006F666E496C61;
  }

  v7 = 0xE400000000000000;
  v8 = 1954047316;
  if (v2 != 3)
  {
    v8 = 0x7341504974786554;
    v7 = 0xE800000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x8000000272400A30;
  if (v2 != 1)
  {
    v9 = 0x8000000272400A50;
  }

  if (*v1)
  {
    v4 = 0xD000000000000010;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_2723CFFA4(uint64_t a1)
{
  v2 = sub_2723D5AC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2723CFFE0(uint64_t a1)
{
  v2 = sub_2723D5AC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VCVocabularyEntry.id.getter()
{
  v1 = v0;
  v2 = sub_2723FE2D4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2723FE344();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = 0;
  v39 = 0xE000000000000000;
  v12 = type metadata accessor for VCVocabularyEntry();
  v13 = (v1 + *(v12 + 32));
  if (v13[1])
  {
    v14 = *v13;
    (*(v3 + 104))(v6, *MEMORY[0x277CC9668], v2);
    v15 = sub_2723FE2C4();
    v17 = v16;
    (*(v3 + 8))(v6, v2);
    v36 = v15;
    v37 = v17;
    v34 = 45;
    v35 = 0xE100000000000000;
    v32 = 95;
    v33 = 0xE100000000000000;
    sub_2723CD24C();
    sub_2723FE984();

    sub_2723FE2A4();
  }

  else
  {
    if (qword_280893DC8 != -1)
    {
      swift_once();
    }

    v30 = sub_2723EC124();
    v19 = v18;
    if (qword_280893E00 != -1)
    {
      swift_once();
    }

    v31 = v1;
    v20 = qword_280894088;
    v21 = [objc_opt_self() sharedPreferences];
    v22 = [v21 languageCode];

    if (v22)
    {
      v23 = sub_2723FE5B4();
      v25 = v24;
    }

    else
    {
      v23 = 0;
      v25 = 0;
    }

    sub_2723FE2F4();
    sub_2723EB6EC(v20, v30, v19, v23, v25, v11);

    v1 = v31;
  }

  v26 = sub_2723FE2B4();
  v28 = v27;
  (*(v8 + 8))(v11, v7);
  MEMORY[0x2743C7290](v26, v28);

  MEMORY[0x2743C7290](8250, 0xE200000000000000);
  MEMORY[0x2743C7290](*(v1 + *(v12 + 20)), *(v1 + *(v12 + 20) + 8));
  return v38;
}

uint64_t VCVocabularyEntry.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893EC0, &unk_2723FFC90);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2723D5AC8();
  sub_2723FED04();
  LOBYTE(v23) = 0;
  sub_2723FE294();
  sub_2723D91E8(&qword_280893ED0, MEMORY[0x277CC9578]);
  sub_2723FEC04();
  if (!v2)
  {
    v11 = type metadata accessor for VCVocabularyEntry();
    v12 = v11[7];
    LOBYTE(v23) = 1;
    sub_2723FEBE4();
    v13 = (v3 + v11[8]);
    v14 = *v13;
    v15 = v13[1];
    LOBYTE(v23) = 2;
    sub_2723FEBC4();
    v16 = (v3 + v11[5]);
    v17 = *v16;
    v18 = v16[1];
    LOBYTE(v23) = 3;
    sub_2723FEBF4();
    v23 = *(v3 + v11[6]);
    v25 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893E70, &unk_2723FFA30);
    sub_2723D5BB8(&qword_280893ED8);
    sub_2723FEBE4();
    v19 = *(v3 + v11[9]);
    LOBYTE(v23) = 5;
    sub_2723FEBD4();
    v20 = (v3 + v11[10]);
    v21 = v20[1];
    v23 = *v20;
    v24 = v21;
    v25 = 6;
    sub_2723D5A4C(v23, v21);
    sub_2723D5B64();
    sub_2723FEBE4();
    sub_2723D5A60(v23, v24);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t VCVocabularyEntry.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893EB0, &unk_2723FFC80);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v39 - v5;
  v7 = sub_2723FE294();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893EE8, &qword_2723FFCA0);
  v41 = *(v12 - 8);
  v42 = v12;
  v13 = *(v41 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v39 - v14;
  v16 = type metadata accessor for VCVocabularyEntry();
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v8 + 56);
  v48 = *(v18 + 28);
  v21(&v20[v48], 1, 1, v7);
  v22 = *(v16 + 40);
  v45 = v20;
  v46 = &v20[v22];
  v47 = a1;
  *v46 = xmmword_2723FFC50;
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2723D5AC8();
  v43 = v15;
  v24 = v44;
  sub_2723FECF4();
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_1(v47);
    v26 = v45;

    sub_2723D9188(&v26[v48], &qword_280893EB0, &unk_2723FFC80);

    return sub_2723D5A60(*v46, *(v46 + 1));
  }

  else
  {
    v25 = v41;
    v39 = v16;
    v44 = v8;
    LOBYTE(v49) = 0;
    sub_2723D91E8(&qword_280893EF0, MEMORY[0x277CC9578]);
    sub_2723FEBB4();
    v27 = v45;
    (*(v44 + 32))(v45, v11, v7);
    LOBYTE(v49) = 1;
    sub_2723FEB94();
    sub_2723D928C(v6, v27 + v48, &qword_280893EB0, &unk_2723FFC80);
    LOBYTE(v49) = 2;
    v28 = sub_2723FEB74();
    v29 = v39;
    v30 = (v27 + v39[8]);
    *v30 = v28;
    v30[1] = v31;
    LOBYTE(v49) = 3;
    v32 = sub_2723FEBA4();
    v33 = (v27 + v29[5]);
    *v33 = v32;
    v33[1] = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893E70, &unk_2723FFA30);
    v51 = 4;
    sub_2723D5BB8(&qword_280893EF8);
    sub_2723FEB94();
    *(v27 + v29[6]) = v49;
    LOBYTE(v49) = 5;
    *(v27 + v29[9]) = sub_2723FEB84();
    v51 = 6;
    sub_2723D5C24();
    sub_2723FEB94();
    (*(v25 + 8))(v43, v42);
    v36 = v49;
    v35 = v50;
    v37 = v46;
    sub_2723D5A60(*v46, *(v46 + 1));
    *v37 = v36;
    *(v37 + 1) = v35;
    sub_2723D5C78(v27, v40);
    __swift_destroy_boxed_opaque_existential_1(v47);
    return sub_2723D88A0(v27, type metadata accessor for VCVocabularyEntry);
  }
}

uint64_t sub_2723D0D70@<X0>(uint64_t *a1@<X8>)
{
  result = VCVocabularyEntry.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static UTType.voiceControlVocabulary.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2723FE3B4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F08, &qword_2723FFCA8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v10 - v7;
  sub_2723FE364();
  sub_2723FE374();
  result = (*(v3 + 48))(v8, 1, v2);
  if (result != 1)
  {
    return (*(v3 + 32))(a1, v8, v2);
  }

  __break(1u);
  return result;
}

uint64_t static VCVocabularyImportExport.import(from:)(unint64_t a1)
{
  v221 = a1;
  v1 = sub_2723FE344();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v204 = v195 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v202 = sub_2723FE564();
  v207 = *(v202 - 8);
  v4 = *(v207 + 64);
  v5 = MEMORY[0x28223BE20](v202);
  v206 = v195 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v205 = v195 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F10, &qword_2723FFCB0);
  v213 = *(v8 - 8);
  v214 = v8;
  v9 = *(v213 + 64);
  MEMORY[0x28223BE20](v8);
  v215 = v195 - v10;
  v11 = sub_2723FE0C4();
  v12 = *(v11 - 1);
  v217 = v11;
  v218 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v216 = v195 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2723FE5E4();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v203 = v195 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2723FE3B4();
  v19 = *(v18 - 8);
  v211 = v18;
  v212 = v19;
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v200 = v195 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v209 = v195 - v24;
  MEMORY[0x28223BE20](v23);
  v210 = v195 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F08, &qword_2723FFCA8);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v30 = (v195 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = MEMORY[0x28223BE20](v28);
  v33 = v195 - v32;
  MEMORY[0x28223BE20](v31);
  v35 = v195 - v34;
  v36 = sub_2723FE154();
  v220 = *(v36 - 8);
  v37 = *(v220 + 64);
  MEMORY[0x28223BE20](v36);
  v39 = v195 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F18, &qword_2723FFCB8);
  inited = swift_initStackObject();
  v208 = xmmword_2723FFC60;
  *(inited + 16) = xmmword_2723FFC60;
  v41 = *MEMORY[0x277CBE7B8];
  *(inited + 32) = *MEMORY[0x277CBE7B8];
  v42 = v41;
  sub_2723D86AC(inited);
  swift_setDeallocating();
  sub_2723D88A0(inited + 32, type metadata accessor for URLResourceKey);
  v43 = v221;
  v44 = v219;
  sub_2723FE194();

  if (v44)
  {
    return v43;
  }

  v219 = v30;
  v198 = v36;
  v199 = 0;
  sub_2723FE144();
  sub_2723D9360(v35, v33, &qword_280893F08, &qword_2723FFCA8);
  v46 = v211;
  v45 = v212;
  v47 = *(v212 + 48);
  v48 = v47(v33, 1, v211);
  v49 = v35;
  v197 = v39;
  if (v48 == 1)
  {
    v203 = v35;
    sub_2723D9188(v33, &qword_280893F08, &qword_2723FFCA8);
    v43 = 0;
    v50 = v198;
    v51 = v220;
    goto LABEL_4;
  }

  v196 = v47;
  v43 = v210;
  v195[0] = *(v45 + 32);
  v195[1] = v45 + 32;
  (v195[0])();
  v53 = v209;
  sub_2723FE3A4();
  v50 = sub_2723FE394();
  v56 = *(v45 + 8);
  v54 = v45 + 8;
  v55 = v56;
  v56(v53, v46);
  v201 = v56;
  if ((v50 & 1) == 0)
  {
    v203 = v49;
    sub_2723FE364();
    v61 = sub_2723FE394();
    v212 = v54;
    v55(v53, v46);
    v63 = v206;
    v62 = v207;
    if ((v61 & 1) == 0)
    {
      v64 = sub_2723FE184();
      v66 = v65;
      sub_2723FE364();
      v67 = v219;
      sub_2723FE374();
      v68 = v211;
      if (v196(v67, 1, v211) == 1)
      {
        __break(1u);
        goto LABEL_90;
      }

      v69 = v200;
      (v195[0])(v200, v67, v68);
      v70 = sub_2723FE384();
      v72 = v71;
      v55(v69, v68);
      if (v72)
      {
        v62 = v207;
        if (v64 == v70 && v72 == v66)
        {

          goto LABEL_24;
        }

        v89 = sub_2723FEC44();

        if (v89)
        {
          goto LABEL_24;
        }
      }

      else
      {

        v62 = v207;
      }

      v111 = v63;
      v112 = v205;
      sub_2723FE554();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F20, &qword_2723FFCC0);
      v113 = swift_allocObject();
      *(v113 + 16) = v208;
      v114 = sub_2723FE1A4();
      v116 = v115;
      *(v113 + 56) = MEMORY[0x277D837D0];
      *(v113 + 64) = sub_2723D8900();
      *(v113 + 32) = v114;
      *(v113 + 40) = v116;
      v117 = v202;
      (*(v62 + 16))(v111, v112, v202);
      type metadata accessor for VCSettings();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v119 = [objc_opt_self() bundleForClass_];
      sub_2723FE324();
      sub_2723FE5F4();
      v120 = sub_2723FE584();
      v122 = v121;

      (*(v62 + 8))(v112, v117);
      v123 = *MEMORY[0x277CCA738];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F30, &qword_2723FFCC8);
      v124 = swift_initStackObject();
      *(v124 + 16) = v208;
      v125 = *MEMORY[0x277CCA450];
      *(v124 + 32) = sub_2723FE5B4();
      *(v124 + 72) = MEMORY[0x277D837D0];
      *(v124 + 40) = v126;
      *(v124 + 48) = v120;
      *(v124 + 56) = v122;
      v127 = v123;
      sub_2723D7BC0(v124);
      swift_setDeallocating();
      sub_2723D9188(v124 + 32, &qword_280893F38, &unk_2723FFCD0);
      v128 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      v43 = sub_2723FE494();

      [v128 initWithDomain:v127 code:262 userInfo:v43];

      swift_willThrow();
      v55(v210, v211);
      goto LABEL_29;
    }

LABEL_24:
    v90 = objc_allocWithZone(MEMORY[0x277CBEAC0]);
    v91 = sub_2723FE1B4();
    v92 = [v90 initWithContentsOfURL_];

    if (v92)
    {
      *&v225 = 0xD000000000000014;
      *(&v225 + 1) = 0x8000000272400B80;
      v93 = [v92 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (v93)
      {
        sub_2723FE994();
        swift_unknownObjectRelease();
      }

      else
      {
        v225 = 0u;
        v226 = 0u;
      }

      v50 = v198;
      v129 = v205;
      v222 = v225;
      v223 = v226;
      if (*(&v226 + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F48, &qword_2723FFCE0);
        v130 = swift_dynamicCast();
        if (v130)
        {
          v43 = v224;
          *&v222 = MEMORY[0x277D84F90];
          MEMORY[0x28223BE20](v130);
          v195[-2] = v221;
          v195[-1] = &v222;
          v131 = v199;
          sub_2723D3524(sub_2723D8954, &v195[-4], v43);
          v51 = v220;
          if (v131)
          {

            v201(v210, v211);
            sub_2723D9188(v203, &qword_280893F08, &qword_2723FFCA8);
            (*(v51 + 8))(v197, v50);

            return v43;
          }

          if (qword_280893DC8 != -1)
          {
            swift_once();
          }

          v43 = VCSettings.addVocabularyEntries(entries:)(v222);

          v201(v210, v211);

          goto LABEL_4;
        }

        v219 = v92;
      }

      else
      {
        v219 = v92;
        sub_2723D9188(&v222, &qword_280893F40, &unk_272400070);
      }

      sub_2723FE554();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F20, &qword_2723FFCC0);
      v132 = swift_allocObject();
      *(v132 + 16) = v208;
      v133 = sub_2723FE1A4();
      v135 = v134;
      *(v132 + 56) = MEMORY[0x277D837D0];
      *(v132 + 64) = sub_2723D8900();
      *(v132 + 32) = v133;
      *(v132 + 40) = v135;
      v136 = v202;
      (*(v62 + 16))(v206, v129, v202);
      type metadata accessor for VCSettings();
      v137 = swift_getObjCClassFromMetadata();
      v138 = [objc_opt_self() bundleForClass_];
      sub_2723FE324();
      sub_2723FE5F4();
      v139 = sub_2723FE584();
      v141 = v140;

      (*(v62 + 8))(v129, v136);
      v142 = *MEMORY[0x277CCA738];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F30, &qword_2723FFCC8);
      v143 = swift_initStackObject();
      *(v143 + 16) = v208;
      v144 = *MEMORY[0x277CCA450];
      *(v143 + 32) = sub_2723FE5B4();
      *(v143 + 72) = MEMORY[0x277D837D0];
      *(v143 + 40) = v145;
      *(v143 + 48) = v139;
      *(v143 + 56) = v141;
      v43 = v142;
      sub_2723D7BC0(v143);
      swift_setDeallocating();
      sub_2723D9188(v143 + 32, &qword_280893F38, &unk_2723FFCD0);
      v146 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      v147 = sub_2723FE494();

      [v146 initWithDomain:v43 code:3840 userInfo:v147];

      swift_willThrow();
      v201(v210, v211);
      sub_2723D9188(v203, &qword_280893F08, &qword_2723FFCA8);
      (*(v220 + 8))(v197, v50);
      return v43;
    }

    v94 = v205;
    sub_2723FE554();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F20, &qword_2723FFCC0);
    v95 = swift_allocObject();
    *(v95 + 16) = v208;
    v96 = sub_2723FE1A4();
    v98 = v97;
    *(v95 + 56) = MEMORY[0x277D837D0];
    *(v95 + 64) = sub_2723D8900();
    *(v95 + 32) = v96;
    *(v95 + 40) = v98;
    v99 = v202;
    (*(v62 + 16))(v63, v94, v202);
    type metadata accessor for VCSettings();
    v100 = swift_getObjCClassFromMetadata();
    v101 = [objc_opt_self() bundleForClass_];
    sub_2723FE324();
    sub_2723FE5F4();
    v102 = sub_2723FE584();
    v104 = v103;

    (*(v62 + 8))(v94, v99);
    v105 = *MEMORY[0x277CCA738];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F30, &qword_2723FFCC8);
    v106 = swift_initStackObject();
    *(v106 + 16) = v208;
    v107 = *MEMORY[0x277CCA450];
    *(v106 + 32) = sub_2723FE5B4();
    *(v106 + 72) = MEMORY[0x277D837D0];
    *(v106 + 40) = v108;
    *(v106 + 48) = v102;
    *(v106 + 56) = v104;
    v109 = v105;
    sub_2723D7BC0(v106);
    swift_setDeallocating();
    sub_2723D9188(v106 + 32, &qword_280893F38, &unk_2723FFCD0);
    v110 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v43 = sub_2723FE494();

    [v110 initWithDomain:v109 code:3840 userInfo:v43];

    swift_willThrow();
    v201(v210, v211);
LABEL_29:
    v60 = v203;
    goto LABEL_30;
  }

  sub_2723FE5D4();
  v57 = v199;
  v58 = sub_2723FE544();
  if (v57)
  {
    v201(v43, v211);
    v60 = v49;
LABEL_30:
    sub_2723D9188(v60, &qword_280893F08, &qword_2723FFCA8);
    (*(v220 + 8))(v197, v198);
    return v43;
  }

  v199 = 0;
  v212 = v54;
  v203 = v49;
  *&v222 = v58;
  *(&v222 + 1) = v59;
  v73 = v216;
  sub_2723FE0B4();
  v221 = sub_2723CD24C();
  v74 = sub_2723FE964();
  v75 = v218 + 8;
  v76 = v73;
  v51 = v217;
  v219 = *(v218 + 8);
  (v219)(v76, v217);

  v77 = *(v74 + 16);
  if (v77)
  {
    v218 = v75;
    *&v225 = MEMORY[0x277D84F90];
    sub_2723D6BE8(0, v77, 0);
    v78 = v225;
    v209 = v74;
    v79 = (v74 + 40);
    do
    {
      v80 = *v79;
      *&v222 = *(v79 - 1);
      *(&v222 + 1) = v80;

      v50 = v78;
      v81 = v216;
      sub_2723FE094();
      v82 = sub_2723FE974();
      v84 = v83;
      v85 = v81;
      v78 = v50;
      (v219)(v85, v51);

      *&v225 = v50;
      v87 = *(v50 + 16);
      v86 = *(v50 + 24);
      if (v87 >= v86 >> 1)
      {
        sub_2723D6BE8((v86 > 1), v87 + 1, 1);
        v78 = v225;
      }

      *(v78 + 16) = v87 + 1;
      v88 = v78 + 16 * v87;
      *(v88 + 32) = v82;
      *(v88 + 40) = v84;
      v79 += 2;
      --v77;
      v51 = v217;
    }

    while (v77);
  }

  else
  {

    v78 = MEMORY[0x277D84F90];
  }

  v148 = 0;
  v149 = *(v78 + 16);
  v150 = v78 + 40;
  v43 = MEMORY[0x277D84F90];
  v151 = v201;
LABEL_41:
  v152 = (v150 + 16 * v148);
  while (1)
  {
    if (v149 == v148)
    {

      v158 = sub_2723D8614(v43);

      v159 = *(v158 + 16);
      v50 = v198;
      if (v159)
      {
        v160 = sub_2723D612C(*(v158 + 16), 0);
        v161 = sub_2723D7A68(&v222, v160 + 4, v159, v158);
        sub_2723D8970();
        v162 = v161 == v159;
        v51 = v220;
        if (v162)
        {
          goto LABEL_56;
        }

        __break(1u);
      }

      v160 = MEMORY[0x277D84F90];
      v51 = v220;
LABEL_56:
      *&v222 = v160;

      v163 = v199;
      sub_2723D61B0(&v222);
      v199 = v163;
      if (!v163)
      {

        v164 = v222;
        if (qword_280893DC8 != -1)
        {
          v194 = v222;
          swift_once();
          v164 = v194;
        }

        v165 = qword_280894080;
        v166 = *(v164 + 16);
        if (v166)
        {
          v224 = MEMORY[0x277D84F90];
          v167 = v164;
          sub_2723D6C48(0, v166, 0);
          v168 = v224;
          v169 = objc_opt_self();
          v216 = OBJC_IVAR____TtC12VoiceControl10VCSettings_defaultsMain;
          v217 = v169;
          v209 = "CACAlwaysShowOverlay";
          *&v208 = v167;
          v170 = (v167 + 40);
          v171 = v215;
          while (1)
          {
            v172 = *v170;
            *v171 = *(v170 - 1);
            v171[1] = v172;
            v171[2] = 0;
            v173 = *&v216[v165];
            v221 = v166;
            if (v173)
            {

              v174 = v173;
              v175 = sub_2723FE574();
              v176 = [v174 objectForKey_];

              v177 = v214;
              if (v176)
              {
                sub_2723FE994();
                swift_unknownObjectRelease();
              }

              else
              {

                v225 = 0u;
                v226 = 0u;
              }

              v222 = v225;
              v223 = v226;
              if (*(&v226 + 1))
              {
                v178 = swift_dynamicCast();
                v179 = v225;
                if (!v178)
                {
                  v179 = 0;
                }

                v218 = v179;
                if (v178)
                {
                  v180 = *(&v225 + 1);
                }

                else
                {
                  v180 = 0;
                }

                goto LABEL_73;
              }
            }

            else
            {
              v222 = 0u;
              v223 = 0u;

              v177 = v214;
            }

            sub_2723D9188(&v222, &qword_280893F40, &unk_272400070);
            v218 = 0;
            v180 = 0;
LABEL_73:
            v181 = v165;
            if (qword_280893E00 != -1)
            {
              swift_once();
            }

            v219 = v168;
            v182 = qword_280894088;
            v183 = [v217 sharedPreferences];
            v184 = [v183 languageCode];

            if (v184)
            {
              v185 = sub_2723FE5B4();
              v187 = v186;
            }

            else
            {
              v185 = 0;
              v187 = 0;
            }

            v188 = *(v177 + 64);
            sub_2723FE2F4();
            v189 = &v215[v188];
            v190 = v215;
            v191 = v182;
            v165 = v181;
            sub_2723EB6EC(v191, v218, v180, v185, v187, v189);

            v168 = v219;
            v224 = v219;
            v193 = v219[2];
            v192 = v219[3];
            if (v193 >= v192 >> 1)
            {
              sub_2723D6C48(v192 > 1, v193 + 1, 1);
              v168 = v224;
            }

            v168[2] = v193 + 1;
            sub_2723D92F4(v190, v168 + ((*(v213 + 80) + 32) & ~*(v213 + 80)) + *(v213 + 72) * v193, &qword_280893F10, &qword_2723FFCB0);
            v170 += 2;
            v51 = v220;
            v166 = v221 - 1;
            v171 = v190;
            v151 = v201;
            if (v221 == 1)
            {

              v50 = v198;
              goto LABEL_83;
            }
          }
        }

        v168 = MEMORY[0x277D84F90];
LABEL_83:
        v43 = VCSettings.addVocabularyEntries(entries:)(v168);

        v151(v210, v211);
LABEL_4:
        if (qword_280893DC8 != -1)
        {
          goto LABEL_88;
        }

        goto LABEL_5;
      }

LABEL_90:

      __break(1u);
      return result;
    }

    if (v148 >= *(v78 + 16))
    {
      break;
    }

    ++v148;
    v50 = *(v152 - 1);
    v51 = *v152;
    v152 += 2;
    v153 = HIBYTE(v51) & 0xF;
    if ((v51 & 0x2000000000000000) == 0)
    {
      v153 = v50 & 0xFFFFFFFFFFFFLL;
    }

    if (v153)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v221 = v150;
      *&v222 = v43;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2723D6BE8(0, v43[2] + 1, 1);
        v43 = v222;
      }

      v156 = v43[2];
      v155 = v43[3];
      if (v156 >= v155 >> 1)
      {
        sub_2723D6BE8((v155 > 1), v156 + 1, 1);
        v43 = v222;
      }

      v43[2] = v156 + 1;
      v157 = &v43[2 * v156];
      v157[4] = v50;
      v157[5] = v51;
      v151 = v201;
      v150 = v221;
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_88:
  swift_once();
LABEL_5:
  _s12VoiceControl10VCSettingsC32triggerVocabularySyncIfNecessaryyyF_0();
  sub_2723D9188(v203, &qword_280893F08, &qword_2723FFCA8);
  (*(v51 + 8))(v197, v50);
  return v43;
}

uint64_t sub_2723D277C(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for VCVocabularyEntry();
  v26 = *(v7 - 8);
  v8 = *(v26 + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v25 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v13 = v22 - v12;
  v24 = *(a3 + 16);
  if (v24)
  {
    v14 = 0;
    v15 = MEMORY[0x277D84F90];
    v22[1] = a2;
    v23 = a3;
    v22[0] = a1;
    while (v14 < *(a3 + 16))
    {
      v16 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v17 = *(v26 + 72);
      sub_2723D5C78(a3 + v16 + v17 * v14, v13);
      v18 = a1(v13);
      if (v3)
      {
        sub_2723D88A0(v13, type metadata accessor for VCVocabularyEntry);

        goto LABEL_15;
      }

      if (v18)
      {
        sub_2723D8978(v13, v25);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2723D6C28(0, *(v15 + 16) + 1, 1);
          v15 = v27;
        }

        v21 = *(v15 + 16);
        v20 = *(v15 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_2723D6C28(v20 > 1, v21 + 1, 1);
          v15 = v27;
        }

        *(v15 + 16) = v21 + 1;
        result = sub_2723D8978(v25, v15 + v16 + v21 * v17);
        a3 = v23;
        a1 = v22[0];
      }

      else
      {
        result = sub_2723D88A0(v13, type metadata accessor for VCVocabularyEntry);
      }

      if (v24 == ++v14)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
LABEL_15:

    return v15;
  }

  return result;
}

uint64_t sub_2723D29CC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v17 = *(a3 + 16);
  if (v17)
  {
    v5 = result;
    v6 = 0;
    v7 = (a3 + 40);
    v8 = MEMORY[0x277D84F90];
    v15 = result;
    while (v6 < *(v4 + 16))
    {
      v10 = *(v7 - 1);
      v9 = *v7;
      v18[0] = v10;
      v18[1] = v9;

      v11 = v5(v18);
      if (v3)
      {

        goto LABEL_16;
      }

      if (v11)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v19 = v8;
        if ((result & 1) == 0)
        {
          result = sub_2723D6BE8(0, *(v8 + 16) + 1, 1);
          v8 = v19;
        }

        v13 = *(v8 + 16);
        v12 = *(v8 + 24);
        if (v13 >= v12 >> 1)
        {
          result = sub_2723D6BE8((v12 > 1), v13 + 1, 1);
          v8 = v19;
        }

        *(v8 + 16) = v13 + 1;
        v14 = v8 + 16 * v13;
        *(v14 + 32) = v10;
        *(v14 + 40) = v9;
        v4 = a3;
        v5 = v15;
      }

      else
      {
      }

      ++v6;
      v7 += 2;
      if (v17 == v6)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
LABEL_16:

    return v8;
  }

  return result;
}

uint64_t sub_2723D2B44(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v4 = a3;
  v23 = MEMORY[0x277D84F90];
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2723FEB04())
  {
    v8 = 0;
    v20 = v4 & 0xFFFFFFFFFFFFFF8;
    v21 = v4 & 0xC000000000000001;
    v19 = v4;
    while (1)
    {
      if (v21)
      {
        v9 = MEMORY[0x2743C76B0](v8, v4);
      }

      else
      {
        if (v8 >= *(v20 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v22 = v9;
      v12 = a2;
      v13 = a1(&v22);
      if (v3)
      {

        return v12;
      }

      if (v13)
      {
        sub_2723FEAA4();
        v14 = i;
        v15 = a1;
        v16 = a2;
        v17 = *(v23 + 16);
        sub_2723FEAC4();
        a2 = v16;
        a1 = v15;
        i = v14;
        v4 = v19;
        sub_2723FEAD4();
        sub_2723FEAB4();
      }

      else
      {
      }

      ++v8;
      if (v11 == i)
      {
        v12 = v23;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v12 = MEMORY[0x277D84F90];
LABEL_20:

  return v12;
}

uint64_t sub_2723D2CF0(uint64_t *a1, uint64_t a2, size_t *a3)
{
  v75 = a3;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F10, &qword_2723FFCB0);
  v74 = *(v71 - 8);
  v4 = *(v74 + 64);
  MEMORY[0x28223BE20](v71);
  v73 = &v66 - v5;
  v6 = sub_2723FE344();
  v72 = *(v6 - 8);
  v7 = *(v72 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  *&v76 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = sub_2723FE564();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v66 - v16;
  v18 = *a1;
  if (*(v18 + 16) && (v19 = sub_2723E4F34(1954047316, 0xE400000000000000), (v20 & 1) != 0) && (sub_2723D9230(*(v18 + 56) + 32 * v19, v79), (swift_dynamicCast() & 1) != 0))
  {
    v70 = v77;
    v69 = v78;
    if (*(v18 + 16))
    {
      v21 = sub_2723E4F34(0x7341504974786554, 0xE800000000000000);
      v22 = v6;
      if (v23)
      {
        sub_2723D9230(*(v18 + 56) + 32 * v21, v79);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893E70, &unk_2723FFA30);
        v24 = swift_dynamicCast();
        v25 = v77;
        if (!v24)
        {
          v25 = 0;
        }

        v68 = v25;
      }

      else
      {
        v68 = 0;
      }
    }

    else
    {
      v68 = 0;
      v22 = v6;
    }

    v44 = v73;
    if (*(v18 + 16) && (v45 = sub_2723E4F34(0xD000000000000010, 0x8000000272400A50), (v46 & 1) != 0))
    {
      sub_2723D9230(*(v18 + 56) + 32 * v45, v79);
      v47 = swift_dynamicCast();
      v48 = v77;
      if (!v47)
      {
        v48 = 0;
      }

      v73 = v48;
      if (v47)
      {
        v49 = v78;
      }

      else
      {
        v49 = 0;
      }

      v67 = v49;
    }

    else
    {
      v73 = 0;
      v67 = 0;
    }

    if (qword_280893DC8 != -1)
    {
      swift_once();
    }

    if (qword_280893E00 != -1)
    {
      swift_once();
    }

    v50 = qword_280894088;
    v51 = [objc_opt_self() sharedPreferences];
    v52 = [v51 languageCode];

    if (v52)
    {
      v53 = sub_2723FE5B4();
      v55 = v54;
    }

    else
    {
      v53 = 0;
      v55 = 0;
    }

    sub_2723FE2F4();
    v56 = v76;
    sub_2723EB6EC(v50, v73, v67, v53, v55, v76);

    v57 = *(v71 + 64);
    v58 = v69;
    *v44 = v70;
    *(v44 + 1) = v58;
    *(v44 + 2) = v68;
    v59 = v72;
    (*(v72 + 16))(&v44[v57], v56, v22);
    v60 = v75;
    v61 = *v75;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v60 = v61;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v61 = sub_2723E46DC(0, v61[2] + 1, 1, v61);
      *v60 = v61;
    }

    v64 = v61[2];
    v63 = v61[3];
    if (v64 >= v63 >> 1)
    {
      *v60 = sub_2723E46DC(v63 > 1, v64 + 1, 1, v61);
    }

    (*(v59 + 8))(v76, v22);
    v65 = *v60;
    *(v65 + 16) = v64 + 1;
    return sub_2723D92F4(v44, v65 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v64, &qword_280893F10, &qword_2723FFCB0);
  }

  else
  {
    v26 = MEMORY[0x277D837D0];
    sub_2723FE554();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F20, &qword_2723FFCC0);
    v27 = swift_allocObject();
    v76 = xmmword_2723FFC60;
    *(v27 + 16) = xmmword_2723FFC60;
    v28 = sub_2723FE1A4();
    v30 = v29;
    *(v27 + 56) = v26;
    *(v27 + 64) = sub_2723D8900();
    *(v27 + 32) = v28;
    *(v27 + 40) = v30;
    (*(v11 + 16))(v15, v17, v10);
    type metadata accessor for VCSettings();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v32 = [objc_opt_self() bundleForClass_];
    sub_2723FE324();
    sub_2723FE5F4();
    v33 = sub_2723FE584();
    v35 = v34;

    (*(v11 + 8))(v17, v10);
    v36 = *MEMORY[0x277CCA738];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F30, &qword_2723FFCC8);
    inited = swift_initStackObject();
    *(inited + 16) = v76;
    v38 = *MEMORY[0x277CCA450];
    *(inited + 32) = sub_2723FE5B4();
    *(inited + 72) = v26;
    *(inited + 40) = v39;
    *(inited + 48) = v33;
    *(inited + 56) = v35;
    v40 = v36;
    sub_2723D7BC0(inited);
    swift_setDeallocating();
    sub_2723D9188(inited + 32, &qword_280893F38, &unk_2723FFCD0);
    v41 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v42 = sub_2723FE494();

    [v41 initWithDomain:v40 code:3840 userInfo:v42];

    return swift_willThrow();
  }
}

uint64_t sub_2723D3524(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    for (i = (a3 + 32); ; ++i)
    {
      v7 = *i;

      v5(&v7);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t static VCVocabularyImportExport.export(to:localeIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v168 = a1;
  v196 = *MEMORY[0x277D85DE8];
  v167 = sub_2723FE564();
  v166 = *(v167 - 8);
  v5 = *(v166 + 64);
  v6 = MEMORY[0x28223BE20](v167);
  v165 = &v160 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v177 = &v160 - v8;
  v181 = sub_2723FE344();
  v162 = *(v181 - 8);
  v9 = *(v162 + 64);
  v10 = MEMORY[0x28223BE20](v181);
  v164 = &v160 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v179 = &v160 - v12;
  v183 = type metadata accessor for VCVocabularyEntry();
  v182 = *(v183 - 8);
  v13 = *(v182 + 64);
  v14 = MEMORY[0x28223BE20](v183);
  v16 = &v160 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v184 = &v160 - v18;
  MEMORY[0x28223BE20](v17);
  v185 = &v160 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F08, &qword_2723FFCA8);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v175 = &v160 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v160 - v24;
  v26 = sub_2723FE3B4();
  v27 = *(v26 - 8);
  v28 = v27[8];
  v29 = MEMORY[0x28223BE20](v26);
  v169 = &v160 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v186 = &v160 - v32;
  MEMORY[0x28223BE20](v31);
  v34 = &v160 - v33;
  v35 = sub_2723FE2D4();
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x28223BE20](v35);
  v40 = &v160 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = v37;
  v173 = v40;
  v178 = v26;
  v161 = v38;
  if (a3)
  {
    v41 = v38;
    (*(v38 + 104))(v40, *MEMORY[0x277CC9668], v35);
    v42 = sub_2723FE2C4();
    v187 = v27;
    v44 = v43;
    (*(v41 + 8))(v40, v35);
    *&v194 = v42;
    *(&v194 + 1) = v44;
    *&v192 = 45;
    *(&v192 + 1) = 0xE100000000000000;
    *&v190 = 95;
    *(&v190 + 1) = 0xE100000000000000;
    sub_2723CD24C();
    v180 = sub_2723FE984();
    v188 = v45;
    v26 = v178;
    v46 = v187;
  }

  else
  {
    v180 = a2;
    v188 = 0;
    v46 = v27;
  }

  v189 = v16;
  v176 = sub_2723D7BC0(MEMORY[0x277D84F90]);
  v47 = sub_2723FE184();
  v49 = v48;
  sub_2723FE364();
  v171 = "ariumTV";
  sub_2723FE374();
  v170 = v46[6];
  if (v170(v25, 1, v26) == 1)
  {
    __break(1u);
  }

  v163 = v46[4];
  v163(v34, v25, v26);
  v50 = sub_2723FE384();
  v52 = v51;
  v53 = v26;
  v54 = v46[1];
  v187 = (v46 + 1);
  v54(v34, v53);
  if (v52)
  {
    if (v47 == v50 && v52 == v49)
    {

      v55 = v172;
      goto LABEL_11;
    }

    v56 = sub_2723FEC44();

    v55 = v172;
    if (v56)
    {
LABEL_11:
      if (qword_280893D60 != -1)
      {
        goto LABEL_84;
      }

      while (1)
      {
        v57 = qword_280893D68;
        v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893E68, &qword_2723FFA28);
        *(&v195 + 1) = v167;
        *&v194 = v57;
        sub_2723D5A74(&v194, &v192);

        v58 = v176;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v190 = v58;
        sub_2723D7404(&v192, 0x65566D6574737953, 0xED00006E6F697372, isUniquelyReferenced_nonNull_native);
        v164 = v190;
        v60 = v183;
        v61 = v189;
        if (qword_280893DC8 != -1)
        {
          swift_once();
        }

        v175 = qword_280894080;
        v62 = VCSettings.vocabularyEntriesForAllLocales(includingDeletedEntries:)(0);
        if (!v188)
        {
LABEL_57:
          v125 = *(v62 + 16);
          if (v125)
          {
            v126 = (*(v182 + 80) + 32) & ~*(v182 + 80);
            v178 = v62;
            v127 = v62 + v126;
            v188 = MEMORY[0x277D84F90];
            v128 = *(v182 + 72);
            do
            {
              sub_2723D5C78(v127, v61);
              v129 = sub_2723FE084();
              v130 = *(v129 + 48);
              v131 = *(v129 + 52);
              swift_allocObject();
              sub_2723FE074();
              sub_2723D91E8(&qword_280893EB8, type metadata accessor for VCVocabularyEntry);
              v132 = sub_2723FE064();
              if (v55)
              {

                sub_2723D88A0(v61, type metadata accessor for VCVocabularyEntry);
                v55 = 0;
              }

              else
              {
                v134 = v132;
                v135 = v133;

                v136 = objc_opt_self();
                v137 = sub_2723FE214();
                *&v192 = 0;
                v55 = [v136 JSONObjectWithData:v137 options:0 error:&v192];

                v138 = v192;
                if (v55)
                {
                  sub_2723FE994();
                  sub_2723CE0C0(v134, v135);
                  swift_unknownObjectRelease();
                  v55 = 0;
                }

                else
                {
                  v139 = v138;
                  v140 = sub_2723FE164();

                  swift_willThrow();
                  sub_2723CE0C0(v134, v135);

                  v194 = 0u;
                  v195 = 0u;
                }

                v192 = v194;
                v193 = v195;
                if (*(&v195 + 1) && (sub_2723D5A74(&v192, &v190), (swift_dynamicCast() & 1) != 0) && (v141 = v191) != 0)
                {
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v188 = sub_2723E48CC(0, v188[2] + 1, 1, v188);
                  }

                  v143 = v188[2];
                  v142 = v188[3];
                  if (v143 >= v142 >> 1)
                  {
                    v188 = sub_2723E48CC((v142 > 1), v143 + 1, 1, v188);
                  }

                  v144 = v189;
                  sub_2723D88A0(v189, type metadata accessor for VCVocabularyEntry);
                  v145 = v188;
                  v188[2] = v143 + 1;
                  v145[v143 + 4] = v141;
                  v61 = v144;
                }

                else
                {
                  v61 = v189;
                  sub_2723D88A0(v189, type metadata accessor for VCVocabularyEntry);
                }
              }

              v127 += v128;
              --v125;
            }

            while (v125);

            v146 = v188;
          }

          else
          {

            v146 = MEMORY[0x277D84F90];
          }

          *(&v195 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F48, &qword_2723FFCE0);
          *&v194 = v146;
          sub_2723D5A74(&v194, &v192);

          v147 = v164;
          v148 = swift_isUniquelyReferenced_nonNull_native();
          *&v190 = v147;
          sub_2723D7404(&v192, 0xD000000000000014, 0x8000000272400B80, v148);
          v149 = v190;
          sub_2723FE244();
          *(&v195 + 1) = MEMORY[0x277D839F8];
          *&v194 = v150;
          sub_2723D5A74(&v194, &v192);
          v151 = swift_isUniquelyReferenced_nonNull_native();
          *&v190 = v149;
          sub_2723D7404(&v192, 0x614474726F707845, 0xEA00000000006574, v151);
          v152 = objc_opt_self();
          v153 = sub_2723FE494();

          *&v194 = 0;
          v154 = [v152 dataWithPropertyList:v153 format:100 options:0 error:&v194];

          v155 = v194;
          if (v154)
          {
            v156 = sub_2723FE224();
            v158 = v157;

            sub_2723FE234();
            if (v55)
            {
              sub_2723CE0C0(v156, v158);
              goto LABEL_80;
            }

            sub_2723CE0C0(v156, v158);
            v61 = v146[2];
          }

          else
          {
            v61 = v155;
            sub_2723FE164();

            swift_willThrow();
LABEL_80:
          }

LABEL_82:
          v159 = *MEMORY[0x277D85DE8];
          return v61;
        }

        v177 = *(v62 + 16);
        if (!v177)
        {
          v64 = MEMORY[0x277D84F90];
LABEL_56:

          v62 = v64;
          goto LABEL_57;
        }

        v63 = 0;
        v171 = (v161 + 104);
        v166 = OBJC_IVAR____TtC12VoiceControl10VCSettings_defaultsMain;
        v170 = (v161 + 8);
        LODWORD(v169) = *MEMORY[0x277CC9668];
        v165 = "CACAlwaysShowOverlay";
        v176 = (v162 + 8);
        v64 = MEMORY[0x277D84F90];
        v65 = v185;
        v178 = v62;
        while (v63 < *(v62 + 16))
        {
          v187 = (*(v182 + 80) + 32) & ~*(v182 + 80);
          v186 = *(v182 + 72);
          sub_2723D5C78(v62 + v187 + v186 * v63, v65);
          v66 = (v65 + *(v60 + 32));
          if (v66[1])
          {
            v67 = *v66;
            v68 = v55;
            v69 = v173;
            v70 = v174;
            (*v171)(v173, v169, v174);
            v71 = sub_2723FE2C4();
            v73 = v72;
            v74 = v69;
            v55 = v68;
            (*v170)(v74, v70);
            *&v194 = v71;
            *(&v194 + 1) = v73;
            *&v192 = 45;
            *(&v192 + 1) = 0xE100000000000000;
            *&v190 = 95;
            *(&v190 + 1) = 0xE100000000000000;
            sub_2723CD24C();
            sub_2723FE984();
            v75 = v179;

            sub_2723FE2A4();
            goto LABEL_41;
          }

          v76 = *&v175[v166];
          if (v76)
          {
            v77 = v76;
            v78 = sub_2723FE574();
            v79 = [v77 objectForKey_];

            if (v79)
            {
              sub_2723FE994();
              swift_unknownObjectRelease();
            }

            else
            {

              v192 = 0u;
              v193 = 0u;
            }

            v194 = v192;
            v195 = v193;
            if (*(&v193 + 1))
            {
              v80 = swift_dynamicCast();
              if (v80)
              {
                v81 = v192;
              }

              else
              {
                v81 = 0;
              }

              if (v80)
              {
                v82 = *(&v192 + 1);
              }

              else
              {
                v82 = 0;
              }

              goto LABEL_35;
            }
          }

          else
          {
            v194 = 0u;
            v195 = 0u;
          }

          sub_2723D9188(&v194, &qword_280893F40, &unk_272400070);
          v81 = 0;
          v82 = 0;
LABEL_35:
          if (qword_280893E00 != -1)
          {
            swift_once();
          }

          v83 = qword_280894088;
          v84 = [objc_opt_self() sharedPreferences];
          v85 = [v84 languageCode];

          if (v85)
          {
            v86 = sub_2723FE5B4();
            v88 = v87;
          }

          else
          {
            v86 = 0;
            v88 = 0;
          }

          sub_2723FE2F4();
          v75 = v179;
          sub_2723EB6EC(v83, v81, v82, v86, v88, v179);

          v55 = v172;
          v60 = v183;
LABEL_41:
          v89 = sub_2723FE2B4();
          v91 = v90;
          (*v176)(v75, v181);
          if (v89 == v180 && v188 == v91)
          {

            v65 = v185;
          }

          else
          {
            v92 = sub_2723FEC44();

            v65 = v185;
            if ((v92 & 1) == 0)
            {
              goto LABEL_17;
            }
          }

          v93 = *(v65 + *(v60 + 36));
          if (v93 == 2 || (v93 & 1) == 0)
          {
            sub_2723D8978(v65, v184);
            v94 = swift_isUniquelyReferenced_nonNull_native();
            v191 = v64;
            if ((v94 & 1) == 0)
            {
              sub_2723D6C28(0, *(v64 + 16) + 1, 1);
              v65 = v185;
              v64 = v191;
            }

            v96 = *(v64 + 16);
            v95 = *(v64 + 24);
            if (v96 >= v95 >> 1)
            {
              sub_2723D6C28(v95 > 1, v96 + 1, 1);
              v65 = v185;
              v64 = v191;
            }

            *(v64 + 16) = v96 + 1;
            sub_2723D8978(v184, v64 + v187 + v96 * v186);
            goto LABEL_18;
          }

LABEL_17:
          sub_2723D88A0(v65, type metadata accessor for VCVocabularyEntry);
LABEL_18:
          ++v63;
          v61 = v189;
          v62 = v178;
          if (v177 == v63)
          {
            goto LABEL_56;
          }
        }

        __break(1u);
LABEL_84:
        swift_once();
      }
    }
  }

  else
  {
  }

  sub_2723FE554();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F20, &qword_2723FFCC0);
  v97 = swift_allocObject();
  *(v97 + 16) = xmmword_2723FFC70;
  v98 = sub_2723FE1A4();
  v100 = v99;
  *(v97 + 56) = MEMORY[0x277D837D0];
  v101 = sub_2723D8900();
  *(v97 + 64) = v101;
  *(v97 + 32) = v98;
  *(v97 + 40) = v100;
  sub_2723FE364();
  v102 = v175;
  sub_2723FE374();
  v103 = v178;
  result = (v170)(v102, 1, v178);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v105 = v169;
    v163(v169, v102, v103);
    v106 = sub_2723FE384();
    v108 = v107;
    result = (v54)(v105, v103);
    if (v108)
    {

      v109 = MEMORY[0x277D837D0];
      *(v97 + 96) = MEMORY[0x277D837D0];
      *(v97 + 104) = v101;
      *(v97 + 72) = v106;
      *(v97 + 80) = v108;
      v110 = v166;
      v111 = v177;
      v112 = v167;
      (*(v166 + 16))(v165, v177, v167);
      type metadata accessor for VCSettings();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v114 = [objc_opt_self() bundleForClass_];
      sub_2723FE324();
      sub_2723FE5F4();
      v115 = sub_2723FE584();
      v117 = v116;

      (*(v110 + 8))(v111, v112);
      v118 = *MEMORY[0x277CCA738];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F30, &qword_2723FFCC8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2723FFC60;
      v120 = *MEMORY[0x277CCA450];
      *(inited + 32) = sub_2723FE5B4();
      *(inited + 72) = v109;
      *(inited + 40) = v121;
      *(inited + 48) = v115;
      *(inited + 56) = v117;
      v122 = v118;
      v61 = sub_2723D7BC0(inited);
      swift_setDeallocating();
      sub_2723D9188(inited + 32, &qword_280893F38, &unk_2723FFCD0);
      v123 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      v124 = sub_2723FE494();

      [v123 initWithDomain:v122 code:3840 userInfo:v124];

      swift_willThrow();
      goto LABEL_82;
    }
  }

  __break(1u);
  return result;
}

uint64_t VCVocabularyEntry.shouldBeTrimmed(cutoffDate:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893EB0, &unk_2723FFC80);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v15 - v3;
  v5 = sub_2723FE294();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for VCVocabularyEntry();
  v11 = *(v0 + *(v10 + 36));
  if (v11 == 2 || (v11 & 1) == 0)
  {
    v13 = 0;
  }

  else
  {
    sub_2723D9360(v0 + *(v10 + 28), v4, &qword_280893EB0, &unk_2723FFC80);
    v12 = *(v6 + 48);
    if (v12(v4, 1, v5) == 1)
    {
      (*(v6 + 16))(v9, v0, v5);
      if (v12(v4, 1, v5) != 1)
      {
        sub_2723D9188(v4, &qword_280893EB0, &unk_2723FFC80);
      }
    }

    else
    {
      (*(v6 + 32))(v9, v4, v5);
    }

    v13 = sub_2723FE264();
    (*(v6 + 8))(v9, v5);
  }

  return v13 & 1;
}

uint64_t VCVocabularyEntry.merge(with:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v114 = a2;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F50, &qword_2723FFCE8);
  v102 = *(v104 - 8);
  v5 = *(v102 + 64);
  MEMORY[0x28223BE20](v104);
  v103 = (&v98 - v6);
  v7 = sub_2723FE434();
  v107 = *(v7 - 8);
  v8 = *(v107 + 64);
  MEMORY[0x28223BE20](v7);
  v105 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2723FE5E4();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v106 = &v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893EB0, &unk_2723FFC80);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v109 = &v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v111 = &v98 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v110 = &v98 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v98 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v98 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v98 - v27;
  v29 = sub_2723FE294();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v98 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v36 = &v98 - v35;
  v113 = a1;
  result = _s12VoiceControl17VCVocabularyEntryV2eeoiySbAC_ACtFZ_0(v3, a1);
  if (result)
  {
    v38 = 0;
LABEL_3:
    v39 = v114;
LABEL_4:
    *v39 = v38;
    return result;
  }

  v98 = v7;
  v99 = v23;
  v40 = type metadata accessor for VCVocabularyEntry();
  v41 = *(v40 + 28);
  v112 = v3;
  v108 = v41;
  sub_2723D9360(v3 + v41, v28, &qword_280893EB0, &unk_2723FFC80);
  v42 = *(v30 + 48);
  v43 = v42(v28, 1, v29);
  v100 = v42;
  v101 = v40;
  if (v43 == 1)
  {
    v26 = v28;
    v39 = v114;
LABEL_9:
    sub_2723D9188(v26, &qword_280893EB0, &unk_2723FFC80);
    v46 = v112;
    v47 = v100;
    v48 = v101;
    goto LABEL_10;
  }

  v44 = v28;
  v45 = *(v30 + 32);
  v45(v36, v44, v29);
  sub_2723D9360(v113 + *(v40 + 28), v26, &qword_280893EB0, &unk_2723FFC80);
  if (v42(v26, 1, v29) == 1)
  {
    (*(v30 + 8))(v36, v29);
    v39 = v114;
    goto LABEL_9;
  }

  v45(v34, v26, v29);
  if (sub_2723FE254())
  {
    v68 = *(v30 + 8);
    v68(v34, v29);
    result = (v68)(v36, v29);
    v38 = 1;
    goto LABEL_3;
  }

  v69 = sub_2723FE264();
  v70 = *(v30 + 8);
  v70(v34, v29);
  result = (v70)(v36, v29);
  v39 = v114;
  v46 = v112;
  v47 = v100;
  v48 = v101;
  if (v69)
  {
    goto LABEL_26;
  }

LABEL_10:
  v49 = v99;
  sub_2723D9360(v46 + v108, v99, &qword_280893EB0, &unk_2723FFC80);
  v50 = v47(v49, 1, v29);
  sub_2723D9188(v49, &qword_280893EB0, &unk_2723FFC80);
  v51 = v50 == 1;
  v52 = v113;
  if (!v51)
  {
    v53 = v113 + *(v48 + 28);
    v54 = v47;
    v55 = v113;
    v56 = v48;
    v57 = v110;
    sub_2723D9360(v53, v110, &qword_280893EB0, &unk_2723FFC80);
    v38 = 1;
    v58 = v54(v57, 1, v29);
    v59 = v57;
    v48 = v56;
    v52 = v55;
    v47 = v54;
    result = sub_2723D9188(v59, &qword_280893EB0, &unk_2723FFC80);
    if (v58 == 1)
    {
      goto LABEL_4;
    }
  }

  v60 = v39;
  v61 = v111;
  sub_2723D9360(v52 + *(v48 + 28), v111, &qword_280893EB0, &unk_2723FFC80);
  v62 = v47(v61, 1, v29);
  result = sub_2723D9188(v61, &qword_280893EB0, &unk_2723FFC80);
  if (v62 != 1)
  {
    v63 = v109;
    sub_2723D9360(v112 + v108, v109, &qword_280893EB0, &unk_2723FFC80);
    v64 = v47(v63, 1, v29);
    result = sub_2723D9188(v63, &qword_280893EB0, &unk_2723FFC80);
    if (v64 == 1)
    {
      v38 = 2;
      goto LABEL_4;
    }
  }

  v65 = *(v48 + 24);
  v66 = *(v112 + v65);
  v67 = *(v52 + v65);
  if (v66)
  {
    if (!v67)
    {
      goto LABEL_22;
    }
  }

  else if (v67)
  {
    goto LABEL_26;
  }

  result = sub_2723FE254();
  if (result)
  {
LABEL_22:
    v38 = 1;
    goto LABEL_4;
  }

  result = sub_2723FE264();
  if (result)
  {
LABEL_26:
    v38 = 2;
    goto LABEL_4;
  }

  v71 = sub_2723FE084();
  v72 = *(v71 + 48);
  v73 = *(v71 + 52);
  swift_allocObject();
  sub_2723FE074();
  sub_2723D91E8(&qword_280893EB8, type metadata accessor for VCVocabularyEntry);
  v74 = sub_2723FE064();
  v76 = v75;

  sub_2723FE5D4();
  v77 = sub_2723FE5C4();
  v79 = v78;
  sub_2723CE0C0(v74, v76);
  if (!v79)
  {

    v77 = 0;
    v79 = 0xE000000000000000;
  }

  v80 = *(v71 + 48);
  v81 = *(v71 + 52);
  swift_allocObject();
  sub_2723FE074();
  v82 = sub_2723FE064();
  v84 = v83;

  sub_2723FE5D4();
  v85 = sub_2723FE5C4();
  v87 = v86;
  sub_2723CE0C0(v82, v84);
  if (!v87)
  {

    v85 = 0;
    v87 = 0xE000000000000000;
  }

  v39 = v60;
  if (v85 == v77 && v87 == v79)
  {
  }

  else
  {
    if (sub_2723FEC44())
    {

      v38 = 1;
      goto LABEL_4;
    }

    v97 = sub_2723FEC44();

    if (v97)
    {
      goto LABEL_26;
    }
  }

  if (qword_280893E18 != -1)
  {
    result = swift_once();
  }

  v88 = off_280894260;
  v89 = v98;
  v90 = v105;
  if (*(off_280894260 + 2))
  {
    result = sub_2723E4FAC(8);
    if (v91)
    {
      v92 = v103;
      sub_2723D9360(v88[7] + *(v102 + 72) * result, v103, &qword_280893F50, &qword_2723FFCE8);

      (*(v107 + 32))(v90, v92 + *(v104 + 48), v89);
      v93 = sub_2723FE424();
      v94 = sub_2723FE894();
      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        *v95 = 0;
        _os_log_impl(&dword_2723CB000, v93, v94, "VCVocabularyEntry.merge() unableToMerge", v95, 2u);
        v96 = v95;
        v89 = v98;
        MEMORY[0x2743C8040](v96, -1, -1);
      }

      result = (*(v107 + 8))(v90, v89);
      v38 = 3;
      goto LABEL_4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2723D58CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893EB0, &unk_2723FFC80);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v13 - v7;
  sub_2723D9360(v2 + *(a1 + 28), &v13 - v7, &qword_280893EB0, &unk_2723FFC80);
  v9 = sub_2723FE294();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v8, 1, v9) != 1)
  {
    return (*(v10 + 32))(a2, v8, v9);
  }

  (*(v10 + 16))(a2, v2, v9);
  result = (v11)(v8, 1, v9);
  if (result != 1)
  {
    return sub_2723D9188(v8, &qword_280893EB0, &unk_2723FFC80);
  }

  return result;
}

uint64_t sub_2723D5A4C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2723CE06C(a1, a2);
  }

  return a1;
}

uint64_t sub_2723D5A60(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2723CE0C0(a1, a2);
  }

  return a1;
}

_OWORD *sub_2723D5A74(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_2723D5AC8()
{
  result = qword_280893EC8;
  if (!qword_280893EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280893EC8);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_2723D5B64()
{
  result = qword_280893EE0;
  if (!qword_280893EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280893EE0);
  }

  return result;
}

uint64_t sub_2723D5BB8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280893E70, &unk_2723FFA30);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2723D5C24()
{
  result = qword_280893F00;
  if (!qword_280893F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280893F00);
  }

  return result;
}

uint64_t sub_2723D5C78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VCVocabularyEntry();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2723D5CDC@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_2723FE114();
    if (v10)
    {
      v11 = sub_2723FE134();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_2723FE124();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x277D85DE8];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_2723FE114();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_2723FE134();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_2723FE124();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_2723D5F0C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_2723D7EE4(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_2723CE0C0(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_2723D5CDC(v14, a3, a4, &v13);
  v10 = v4;
  sub_2723CE0C0(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

uint64_t sub_2723D609C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_2723FEC44() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

void *sub_2723D612C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893FE0, "z.");
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t sub_2723D61B0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2723FD158(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_2723D621C(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_2723D621C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2723FEC14();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_2723FE794();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_2723D63E4(v7, v8, a1, v4);
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
    return sub_2723D6314(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2723D6314(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_2723FEC44(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2723D63E4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_2723FCB38(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_2723D69C0((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_2723FEC44();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_2723FEC44();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2723E42F4(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_2723E42F4((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_2723D69C0((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_2723FCB38(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_2723FCAAC(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_2723FEC44(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

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
  return result;
}

uint64_t sub_2723D69C0(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_2723FEC44() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_2723FEC44() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

char *sub_2723D6BE8(char *a1, int64_t a2, char a3)
{
  result = sub_2723FCC30(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2723D6C08(size_t a1, int64_t a2, char a3)
{
  result = sub_2723FCD3C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2723D6C28(size_t a1, int64_t a2, char a3)
{
  result = sub_2723FCD64(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2723D6C48(size_t a1, int64_t a2, char a3)
{
  result = sub_2723FCF68(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2723D6C68(uint64_t a1, int a2)
{
  v3 = v2;
  v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F50, &qword_2723FFCE8) - 8);
  v6 = (*(v37 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v39 = &v36 - v7;
  v8 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v9 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893FD0, "2.");
  v38 = a2;
  result = sub_2723FEB24();
  v11 = result;
  if (*(v8 + 16))
  {
    v36 = v3;
    v12 = 0;
    v13 = (v8 + 64);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = v20 | (v12 << 6);
      v24 = *(*(v8 + 48) + v23);
      v25 = *(v37 + 72);
      v26 = *(v8 + 56) + v25 * v23;
      if (v38)
      {
        sub_2723D92F4(v26, v39, &qword_280893F50, &qword_2723FFCE8);
      }

      else
      {
        sub_2723D9360(v26, v39, &qword_280893F50, &qword_2723FFCE8);
      }

      v27 = *(v11 + 40);
      sub_2723FEC94();
      v40 = v24;
      VCLogging.Category.rawValue.getter();
      sub_2723FE634();

      result = sub_2723FECB4();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v19 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v11 + 48) + v19) = v24;
      result = sub_2723D92F4(v39, *(v11 + 56) + v25 * v19, &qword_280893F50, &qword_2723FFCE8);
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_36;
    }

    v35 = 1 << *(v8 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero((v8 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    *(v8 + 16) = 0;
  }

LABEL_36:
  *v3 = v11;
  return result;
}

uint64_t sub_2723D6FF0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893FC8, "..");
  v36 = a2;
  result = sub_2723FEB24();
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
        sub_2723D5A74(v25, v37);
      }

      else
      {
        sub_2723D9230(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_2723FEC94();
      sub_2723FE634();
      result = sub_2723FECB4();
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
      result = sub_2723D5A74(v37, (*(v8 + 56) + 32 * v16));
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

uint64_t sub_2723D72A8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_2723E4FAC(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      v17 = v16[7];
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F50, &qword_2723FFCE8);
      return sub_2723D928C(a1, v17 + *(*(v18 - 8) + 72) * v10, &qword_280893F50, &qword_2723FFCE8);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_2723D7678();
    goto LABEL_7;
  }

  sub_2723D6C68(v13, a3 & 1);
  v20 = *v4;
  v21 = sub_2723E4FAC(a2);
  if ((v14 & 1) != (v22 & 1))
  {
LABEL_15:
    result = sub_2723FEC84();
    __break(1u);
    return result;
  }

  v10 = v21;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:

  return sub_2723D7554(v10, a2, a1, v16);
}

_OWORD *sub_2723D7404(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2723E4F34(a2, a3);
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
      sub_2723D78C4();
      v11 = v19;
      goto LABEL_8;
    }

    sub_2723D6FF0(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_2723E4F34(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_2723FEC84();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v23);

    return sub_2723D5A74(a1, v23);
  }

  else
  {
    sub_2723D760C(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_2723D7554(unint64_t a1, char a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  v7 = a4[7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F50, &qword_2723FFCE8);
  result = sub_2723D92F4(a3, v7 + *(*(v8 - 8) + 72) * a1, &qword_280893F50, &qword_2723FFCE8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

_OWORD *sub_2723D760C(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_2723D5A74(a4, (a5[7] + 32 * a1));
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

void *sub_2723D7678()
{
  v1 = v0;
  v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F50, &qword_2723FFCE8) - 8);
  v2 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v27 = &v24 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893FD0, "2.");
  v4 = *v0;
  v5 = sub_2723FEB14();
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

    v26 = v4 + 64;
    v9 = 0;
    v10 = *(v4 + 16);
    v29 = v6;
    *(v6 + 16) = v10;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    v13 = *(v4 + 64);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v14 = v12 & v13;
    v15 = (v11 + 63) >> 6;
    if ((v12 & v13) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_14:
        v19 = v16 | (v9 << 6);
        v20 = *(*(v4 + 48) + v19);
        v21 = v27;
        v22 = *(v28 + 72) * v19;
        sub_2723D9360(*(v4 + 56) + v22, v27, &qword_280893F50, &qword_2723FFCE8);
        v23 = v29;
        *(*(v29 + 48) + v19) = v20;
        result = sub_2723D92F4(v21, *(v23 + 56) + v22, &qword_280893F50, &qword_2723FFCE8);
      }

      while (v14);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v15)
      {

        v1 = v25;
        v6 = v29;
        goto LABEL_18;
      }

      v18 = *(v26 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
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

void *sub_2723D78C4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893FC8, "..");
  v2 = *v0;
  v3 = sub_2723FEB14();
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
        sub_2723D9230(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_2723D5A74(v25, (*(v4 + 56) + v22));
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

void *sub_2723D7A68(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_2723D7BC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893FC8, "..");
    v3 = sub_2723FEB34();
    v4 = a1 + 32;

    while (1)
    {
      sub_2723D9360(v4, &v13, &qword_280893F38, &unk_2723FFCD0);
      v5 = v13;
      v6 = v14;
      result = sub_2723E4F34(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2723D5A74(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_2723D7CF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893FD8, "X.");
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v19 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893FD0, "2.");
    v8 = sub_2723FEB34();
    v20 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_2723D9360(v9, v6, &qword_280893FD8, "X.");
      result = sub_2723E4FAC(*v6);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = *v6;
      v14 = v8[7];
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F50, &qword_2723FFCE8);
      result = sub_2723D92F4(&v6[v20], v14 + *(*(v15 - 8) + 72) * v13, &qword_280893F50, &qword_2723FFCE8);
      v16 = v8[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v8[2] = v18;
      v9 += v10;
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

uint64_t sub_2723D7EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_2723FE114();
  v11 = result;
  if (result)
  {
    result = sub_2723FE134();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_2723FE124();
  sub_2723D5CDC(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_2723D7F9C(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_2723CE06C(a3, a4);
          return sub_2723D5F0C(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

BOOL _s12VoiceControl17VCVocabularyEntryV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2723FE294();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893EB0, &unk_2723FFC80);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v48 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893FB8, "*.");
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v48 - v15;
  if ((sub_2723FE274() & 1) == 0)
  {
    return 0;
  }

  v17 = type metadata accessor for VCVocabularyEntry();
  v18 = v17[5];
  v19 = *(a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = v19 == *v21 && v20 == v21[1];
  if (!v22 && (sub_2723FEC44() & 1) == 0)
  {
    return 0;
  }

  v23 = v17[6];
  v24 = *(a1 + v23);
  v25 = *(a2 + v23);
  if (v24)
  {
    if (!v25 || (sub_2723D609C(v24, v25) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v25)
  {
    return 0;
  }

  v26 = v17[7];
  v27 = *(v13 + 48);
  sub_2723D9360(a1 + v26, v16, &qword_280893EB0, &unk_2723FFC80);
  v49 = v27;
  sub_2723D9360(a2 + v26, &v16[v27], &qword_280893EB0, &unk_2723FFC80);
  v28 = *(v5 + 48);
  if (v28(v16, 1, v4) == 1)
  {
    if (v28(&v16[v49], 1, v4) == 1)
    {
      sub_2723D9188(v16, &qword_280893EB0, &unk_2723FFC80);
      goto LABEL_21;
    }

LABEL_17:
    sub_2723D9188(v16, &qword_280893FB8, "*.");
    return 0;
  }

  sub_2723D9360(v16, v12, &qword_280893EB0, &unk_2723FFC80);
  if (v28(&v16[v49], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
    goto LABEL_17;
  }

  (*(v5 + 32))(v8, &v16[v49], v4);
  sub_2723D91E8(&qword_280893FC0, MEMORY[0x277CC9578]);
  v30 = sub_2723FE534();
  v31 = *(v5 + 8);
  v31(v8, v4);
  v31(v12, v4);
  sub_2723D9188(v16, &qword_280893EB0, &unk_2723FFC80);
  if ((v30 & 1) == 0)
  {
    return 0;
  }

LABEL_21:
  v32 = v17[8];
  v33 = (a1 + v32);
  v34 = *(a1 + v32 + 8);
  v35 = (a2 + v32);
  v36 = v35[1];
  if (v34)
  {
    if (!v36 || (*v33 != *v35 || v34 != v36) && (sub_2723FEC44() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v36)
  {
    return 0;
  }

  v37 = v17[9];
  v38 = *(a1 + v37);
  v39 = *(a2 + v37);
  if (v38 == 2)
  {
    if (v39 != 2)
    {
      return 0;
    }

    goto LABEL_33;
  }

  result = 0;
  if (v39 != 2 && ((v39 ^ v38) & 1) == 0)
  {
LABEL_33:
    v40 = v17[10];
    v41 = a1 + v40;
    v43 = *(a1 + v40);
    v42 = *(v41 + 8);
    v44 = (a2 + v40);
    v46 = *v44;
    v45 = v44[1];
    if (v42 >> 60 == 15)
    {
      if (v45 >> 60 == 15)
      {
        sub_2723D5A4C(v43, *(v41 + 8));
        sub_2723D5A4C(v46, v45);
        sub_2723D5A60(v43, v42);
        return 1;
      }
    }

    else if (v45 >> 60 != 15)
    {
      sub_2723D5A4C(v43, *(v41 + 8));
      sub_2723D5A4C(v46, v45);
      v47 = sub_2723D7F9C(v43, v42, v46, v45);
      sub_2723D5A60(v46, v45);
      sub_2723D5A60(v43, v42);
      return (v47 & 1) != 0;
    }

    sub_2723D5A4C(v43, *(v41 + 8));
    sub_2723D5A4C(v46, v45);
    sub_2723D5A60(v43, v42);
    sub_2723D5A60(v46, v45);
    return 0;
  }

  return result;
}

uint64_t sub_2723D8614(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x2743C7440](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_2723ED554(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_2723D86AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893FE8, "|.");
    v3 = sub_2723FEA24();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v28 + 8 * v4);
      v8 = *(v3 + 40);
      sub_2723FE5B4();
      sub_2723FEC94();
      v29 = v7;
      sub_2723FE634();
      v9 = sub_2723FECB4();

      v11 = -1 << *(v3 + 32);
      v12 = v9 & ~v11;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) == 0)
      {
        goto LABEL_15;
      }

      v16 = ~v11;
      do
      {
        v17 = *(*(v3 + 48) + 8 * v12);
        v18 = sub_2723FE5B4();
        v20 = v19;
        if (v18 == sub_2723FE5B4() && v20 == v21)
        {

LABEL_4:
          v6 = v27;
          goto LABEL_5;
        }

        v23 = sub_2723FEC44();

        if (v23)
        {

          goto LABEL_4;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v5 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v6 = v27;
LABEL_15:
      *(v5 + 8 * v13) = v15 | v14;
      *(*(v3 + 48) + 8 * v12) = v29;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v26;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_2723D88A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2723D8900()
{
  result = qword_280893F28;
  if (!qword_280893F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280893F28);
  }

  return result;
}

uint64_t sub_2723D8978(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VCVocabularyEntry();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2723D89E0()
{
  result = qword_280893F58;
  if (!qword_280893F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280893F58);
  }

  return result;
}

unint64_t sub_2723D8A38()
{
  result = qword_280893F60;
  if (!qword_280893F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280893F60);
  }

  return result;
}

unint64_t sub_2723D8A90()
{
  result = qword_280893F68;
  if (!qword_280893F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280893F68);
  }

  return result;
}

uint64_t sub_2723D8AF0(uint64_t a1)
{
  *(a1 + 8) = sub_2723D91E8(&qword_280893F70, type metadata accessor for VCVocabularyEntry);
  result = sub_2723D91E8(&qword_280893F78, type metadata accessor for VCVocabularyEntry);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2723D8B88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2723FE294();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893EB0, &unk_2723FFC80);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_2723D8CD0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2723FE294();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893EB0, &unk_2723FFC80);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_2723D8E04()
{
  sub_2723FE294();
  if (v0 <= 0x3F)
  {
    sub_2723D8F20();
    if (v1 <= 0x3F)
    {
      sub_2723D8F84();
      if (v2 <= 0x3F)
      {
        sub_2723D8FDC(319, &qword_280893FA0);
        if (v3 <= 0x3F)
        {
          sub_2723D8FDC(319, &qword_280893FA8);
          if (v4 <= 0x3F)
          {
            sub_2723D8FDC(319, &qword_280893FB0);
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

void sub_2723D8F20()
{
  if (!qword_280893F90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280893E70, &unk_2723FFA30);
    v0 = sub_2723FE934();
    if (!v1)
    {
      atomic_store(v0, &qword_280893F90);
    }
  }
}

void sub_2723D8F84()
{
  if (!qword_280893F98)
  {
    sub_2723FE294();
    v0 = sub_2723FE934();
    if (!v1)
    {
      atomic_store(v0, &qword_280893F98);
    }
  }
}

void sub_2723D8FDC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_2723FE934();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for VCVocabularyEntry.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VCVocabularyEntry.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2723D9188(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2723D91E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2723D9230(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2723D928C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_2723D92F4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_2723D9360(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2723D940C()
{
  result = sub_2723FE574();
  qword_280893FF0 = result;
  return result;
}

uint64_t sub_2723D9468()
{
  result = sub_2723FE574();
  qword_280893FF8 = result;
  return result;
}

uint64_t sub_2723D94C4()
{
  result = sub_2723FE574();
  qword_280894000 = result;
  return result;
}

uint64_t sub_2723D9520()
{
  result = sub_2723FE574();
  qword_280894008 = result;
  return result;
}

uint64_t sub_2723D957C()
{
  result = sub_2723FE574();
  qword_280894010 = result;
  return result;
}

uint64_t sub_2723D95D8()
{
  result = sub_2723FE574();
  qword_280894018 = result;
  return result;
}

uint64_t sub_2723D9634()
{
  result = sub_2723FE574();
  qword_280894020 = result;
  return result;
}

uint64_t sub_2723D9690()
{
  result = sub_2723FE574();
  qword_280894028 = result;
  return result;
}

uint64_t sub_2723D96EC()
{
  result = sub_2723FE574();
  qword_280894030 = result;
  return result;
}

uint64_t sub_2723D9748()
{
  result = sub_2723FE574();
  qword_280894038 = result;
  return result;
}

void sub_2723D97A4()
{
  if (*MEMORY[0x277D81C90])
  {
    qword_280894040 = *MEMORY[0x277D81C90];
  }

  else
  {
    __break(1u);
  }
}

id sub_2723D97E8(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

id VCNotification.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VCNotification();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void static VCNotificationCenter.add(observer:forName:queue:using:)(const void *a1, const __CFString *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v10, a1, sub_2723D9C80, a2, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  v11 = [objc_opt_self() defaultCenter];
  v14[4] = a4;
  v14[5] = a5;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_2723D99F8;
  v14[3] = &block_descriptor;
  v12 = _Block_copy(v14);

  v13 = [v11 addObserverForName:a2 object:a1 queue:a3 usingBlock:v12];
  _Block_release(v12);
  swift_unknownObjectRelease();
}

uint64_t sub_2723D99F8(uint64_t a1)
{
  v2 = sub_2723FE104();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_2723FE0E4();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

void static VCNotificationCenter.remove(observer:name:)(const void *a1, const __CFString *a2)
{
  v4 = [objc_opt_self() defaultCenter];
  [v4 removeObserver:a1 name:a2 object:0];

  v5 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v5, a1, a2, 0);
}

void static VCNotificationCenter.remove(observer:)(const void *a1)
{
  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver_];

  v3 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(v3, a1);
}

void static VCNotificationCenter.post(name:)(const __CFString *a1)
{
  v2 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(v2, a1, 0, 0, 0);
}

void sub_2723D9C80(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a1;
  v9 = a3;
  v10 = a5;
  sub_2723D9D28(a2, a3);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2723D9D28(uint64_t a1, void *a2)
{
  v4 = sub_2723FE104();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (a2)
    {
      swift_unknownObjectRetain();
      v13[3] = swift_getObjectType();
      v13[0] = a1;
      v10 = a2;
      sub_2723FE0F4();
      v11 = [objc_opt_self() defaultCenter];
      v12 = sub_2723FE0D4();
      [v11 postNotification_];

      return (*(v5 + 8))(v9, v4);
    }
  }

  return result;
}

Swift::Int __swiftcall VCSettings.addVocabularyEntries(entries:)(Swift::OpaquePointer entries)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893EB0, &unk_2723FFC80);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v198 = &v171 - v4;
  v197 = sub_2723FE294();
  v230 = *(v197 - 8);
  v5 = *(v230 + 64);
  v6 = MEMORY[0x28223BE20](v197);
  v196 = &v171 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v195 = &v171 - v8;
  v222 = sub_2723FE2D4();
  v9 = *(v222 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v222);
  v221 = &v171 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v217 = type metadata accessor for VCVocabularyEntry();
  v227 = *(v217 - 1);
  v12 = *(v227 + 64);
  v13 = MEMORY[0x28223BE20](v217);
  v194 = &v171 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v193 = &v171 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v192 = &v171 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v171 - v19;
  v228 = sub_2723FE344();
  v226 = *(v228 - 8);
  v21 = *(v226 + 64);
  v22 = MEMORY[0x28223BE20](v228);
  v191 = &v171 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v224 = &v171 - v25;
  MEMORY[0x28223BE20](v24);
  v215 = (&v171 - v26);
  v208 = sub_2723FE0C4();
  v231 = *(v208 - 8);
  v27 = *(v231 + 64);
  MEMORY[0x28223BE20](v208);
  v207 = &v171 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F10, &qword_2723FFCB0);
  v225 = *(v29 - 8);
  v30 = *(v225 + 8);
  v31 = MEMORY[0x28223BE20](v29);
  v190 = &v171 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v206 = &v171 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v210 = &v171 - v36;
  MEMORY[0x28223BE20](v35);
  v205 = (&v171 - v37);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F50, &qword_2723FFCE8);
  v39 = *(v38 - 1);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  v180 = (&v171 - v41);
  v42 = sub_2723FE434();
  v43 = *(v42 - 8);
  v44 = *(v43 + 64);
  v45 = MEMORY[0x28223BE20](v42);
  v178 = &v171 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v48 = &v171 - v47;
  if (qword_280893E18 != -1)
  {
LABEL_71:
    swift_once();
  }

  v49 = off_280894260;
  if (!*(off_280894260 + 2))
  {
    __break(1u);
    goto LABEL_73;
  }

  v181 = v43;
  v50 = sub_2723E4FAC(8);
  if ((v51 & 1) == 0)
  {
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v212 = v29;
  v214 = v20;
  v177 = v49;
  v52 = v49[7];
  v172 = *(v39 + 72);
  v53 = v180;
  sub_2723D9360(v52 + v172 * v50, v180, &qword_280893F50, &qword_2723FFCE8);

  v176 = v38;
  v54 = v181;
  v55 = *(v181 + 32);
  v56 = v53 + v38[12];
  v174 = v181 + 32;
  v173 = v55;
  v55(v48, v56, v42);

  v57 = sub_2723FE424();
  v58 = sub_2723FE8A4();
  v59 = os_log_type_enabled(v57, v58);
  v179 = v42;
  if (v59)
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    *&v236 = v61;
    *v60 = 134349315;
    *(v60 + 4) = *(entries._rawValue + 2);

    *(v60 + 12) = 2085;
    v62 = MEMORY[0x2743C73A0](entries._rawValue, v212);
    v42 = v63;
    rawValue = entries._rawValue;
    v65 = v9;
    v66 = sub_2723E4A00(v62, v63, &v236);

    *(v60 + 14) = v66;
    v9 = v65;
    entries._rawValue = rawValue;
    _os_log_impl(&dword_2723CB000, v57, v58, "VCSettings.addVocabularyEntries inputEntriesCount: %{public}ld, inputEntries: %{sensitive}s", v60, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v61);
    MEMORY[0x2743C8040](v61, -1, -1);
    MEMORY[0x2743C8040](v60, -1, -1);

    v175 = *(v181 + 8);
    v175(v48, v179);
  }

  else
  {

    v175 = *(v54 + 8);
    v175(v48, v42);
  }

  v39 = v228;
  v186 = sub_2723E6C70();
  v67 = *(entries._rawValue + 2);
  v68 = MEMORY[0x277D84F90];
  v229 = sub_2723E4504(0, v67, 0, MEMORY[0x277D84F90]);
  v238 = v68;
  v38 = v215;
  v204 = v67;
  if (v67)
  {
    v69 = 0;
    v189 = 0;
    v70 = (v225[80] + 32) & ~v225[80];
    v203 = *(v212 + 64);
    v202 = entries._rawValue + v70;
    v201 = (v226 + 32);
    v200 = (v231 + 8);
    v199 = *(v225 + 9);
    v220 = (v9 + 104);
    v219 = *MEMORY[0x277CC9668];
    v71 = (v9 + 8);
    v72 = v212;
    v218 = v71;
    v211 = "CACAlwaysShowOverlay";
    v231 = v226 + 8;
    v185 = (v230 + 16);
    v184 = (v230 + 56);
    v183 = (v226 + 16);
    v188 = (v230 + 8);
    v182 = xmmword_2723FFC50;
    v20 = v210;
    do
    {
      v213 = v69;
      v75 = v205;
      sub_2723D9360(&v202[v199 * v69], v205, &qword_280893F10, &qword_2723FFCB0);
      v76 = *v75;
      v77 = v75[1];
      v78 = v75[2];
      v79 = *(v72 + 64);
      *v20 = *v75;
      *(v20 + 1) = v77;
      *(v20 + 2) = v78;
      v230 = *v201;
      (v230)(&v20[v79], v75 + v203, v39);
      *&v236 = v76;
      *(&v236 + 1) = v77;
      v80 = v207;
      sub_2723FE0A4();
      v223 = sub_2723CD24C();
      v43 = sub_2723FE974();
      v82 = v81;
      (*v200)(v80, v208);
      v83 = v206;
      v72 = v212;
      v42 = v82;
      sub_2723D9360(v20, v206, &qword_280893F10, &qword_2723FFCB0);
      v84 = *(v83 + 8);

      v85 = *(v83 + 16);

      entries._rawValue = v38;
      v86 = (v230)(v38, v83 + *(v72 + 64), v39);
      v87 = HIBYTE(v42) & 0xF;
      v230 = v43;
      if ((v42 & 0x2000000000000000) == 0)
      {
        v87 = v43 & 0xFFFFFFFFFFFFLL;
      }

      if (v87)
      {
        v88 = v229;
        v89 = v229[2];
        v209 = v231 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v216 = v42;
        v226 = v89;
        if (v89)
        {
          v29 = 0;
          v9 = v214;
          v48 = &v214[v217[8]];
          v225 = v229 + ((*(v227 + 80) + 32) & ~*(v227 + 80));
          v74 = v38;
          do
          {
            if (v29 >= v88[2])
            {
              __break(1u);
              goto LABEL_71;
            }

            sub_2723D5C78(&v225[*(v227 + 72) * v29], v9);
            if (*(v48 + 1))
            {
              v38 = v74;
              v90 = *v48;
              v91 = v221;
              v92 = v222;
              (*v220)(v221, v219, v222);
              v93 = sub_2723FE2C4();
              v95 = v94;
              (*v218)(v91, v92);
              *&v236 = v93;
              *(&v236 + 1) = v95;
              *&v234 = 45;
              *(&v234 + 1) = 0xE100000000000000;
              v232 = 95;
              v233 = 0xE100000000000000;
              v169 = v223;
              v170 = v223;
              v168 = v223;
              v167 = MEMORY[0x277D837D0];
              sub_2723FE984();

              entries._rawValue = v224;
              v74 = v38;
              sub_2723FE2A4();
              goto LABEL_42;
            }

            if (qword_280893DC8 != -1)
            {
              swift_once();
            }

            v96 = *(qword_280894080 + OBJC_IVAR____TtC12VoiceControl10VCSettings_defaultsMain);
            if (v96)
            {
              v97 = v96;
              v98 = sub_2723FE574();
              v99 = [v97 objectForKey_];

              if (v99)
              {
                sub_2723FE994();
                swift_unknownObjectRelease();
              }

              else
              {

                v234 = 0u;
                v235 = 0u;
              }

              v236 = v234;
              v237 = v235;
              if (*(&v235 + 1))
              {
                v100 = swift_dynamicCast();
                if (v100)
                {
                  v38 = v234;
                }

                else
                {
                  v38 = 0;
                }

                if (v100)
                {
                  v101 = *(&v234 + 1);
                }

                else
                {
                  v101 = 0;
                }

                goto LABEL_36;
              }
            }

            else
            {
              v236 = 0u;
              v237 = 0u;
            }

            sub_2723D9188(&v236, &qword_280893F40, &unk_272400070);
            v38 = 0;
            v101 = 0;
LABEL_36:
            if (qword_280893E00 != -1)
            {
              swift_once();
            }

            v102 = qword_280894088;
            v103 = [objc_opt_self() sharedPreferences];
            v104 = [v103 languageCode];

            if (v104)
            {
              v105 = sub_2723FE5B4();
              v107 = v106;
            }

            else
            {
              v105 = 0;
              v107 = 0;
            }

            sub_2723FE2F4();
            v108 = v224;
            sub_2723EB6EC(v102, v38, v101, v105, v107, v224);

            entries._rawValue = v108;

            v9 = v214;
            v74 = v215;
            v42 = v216;
LABEL_42:
            v43 = MEMORY[0x2743C6F40](entries._rawValue, v74);
            v20 = *v231;
            v39 = v228;
            (*v231)(entries._rawValue, v228);
            if (v43)
            {
              v109 = (v9 + v217[5]);
              if (*v109 == v230 && v109[1] == v42)
              {
                sub_2723E5038(v9);
LABEL_59:

                v72 = v212;
                v73 = v213;
                goto LABEL_10;
              }

              v43 = sub_2723FEC44();
              v86 = sub_2723E5038(v9);
              if (v43)
              {
                goto LABEL_59;
              }
            }

            else
            {
              v86 = sub_2723E5038(v9);
            }

            ++v29;
            v88 = v229;
          }

          while (v226 != v29);
        }

        MEMORY[0x28223BE20](v86);
        v111 = v110;
        v167 = v110;
        v168 = v230;
        v169 = v42;
        v112 = v186;

        v113 = v112;
        v114 = v189;
        v115 = sub_2723D277C(sub_2723E5094, (&v171 - 6), v113);
        v116 = *(v115 + 16);
        v189 = v114;
        if (v116)
        {
          sub_2723DD1E8(v115);
        }

        else
        {
        }

        v117 = v195;
        sub_2723FE284();
        v118 = *v185;
        v119 = v196;
        v120 = v197;
        (*v185)(v196, v117, v197);
        v121 = v198;
        v118(v198, v117, v120);
        v122 = *v184;
        (*v184)(v121, 0, 1, v120);
        (*v183)(v191, v111, v39);
        v123 = v190;
        sub_2723D9360(v210, v190, &qword_280893F10, &qword_2723FFCB0);
        v124 = *(v123 + 8);

        v225 = *(v123 + 16);
        v125 = v217;
        v126 = v217[7];
        v226 = v217[6];
        v127 = v193;
        v122(&v193[v126], 1, 1, v120);
        v128 = v125[9];
        v187 = &v127[v125[8]];
        v127[v128] = 2;
        *&v127[v125[10]] = v182;
        v118(v127, v119, v120);
        v129 = v198;
        sub_2723E50B8(v198, &v127[v126]);
        v130 = v191;
        sub_2723FE2B4();
        v131 = v221;
        v132 = v222;
        (*v220)(v221, v219, v222);
        v133 = sub_2723FE2C4();
        v135 = v134;

        (*v218)(v131, v132);
        *&v236 = v133;
        *(&v236 + 1) = v135;
        *&v234 = 45;
        *(&v234 + 1) = 0xE100000000000000;
        v232 = 95;
        v233 = 0xE100000000000000;
        v169 = v223;
        v170 = v223;
        v168 = v223;
        v167 = MEMORY[0x277D837D0];
        v136 = sub_2723FE984();
        v138 = v137;

        v20 = *v231;
        (*v231)(v130, v228);
        sub_2723D9188(v129, &qword_280893EB0, &unk_2723FFC80);
        v139 = *v188;
        (*v188)(v196, v120);
        v140 = v187;
        *v187 = v136;
        v140[1] = v138;
        v141 = &v127[v125[5]];
        v142 = v216;
        *v141 = v230;
        v141[1] = v142;
        v143 = v225;
        if (v225)
        {
          v72 = v212;
          v73 = v213;
          if (!*(v225 + 2))
          {

            v143 = 0;
          }

          v39 = v228;
        }

        else
        {
          v39 = v228;
          v72 = v212;
          v73 = v213;
        }

        v144 = v193;
        *&v193[v226] = v143;
        v145 = *(v72 + 64);
        v146 = v192;
        sub_2723D8978(v144, v192);
        (v20)(v190 + v145, v39);
        sub_2723D5C78(v146, v194);
        v148 = v229[2];
        v147 = v229[3];
        if (v148 >= v147 >> 1)
        {
          v229 = sub_2723E4504(v147 > 1, v148 + 1, 1, v229);
        }

        sub_2723E5038(v192);
        v139(v195, v197);
        v149 = v229;
        v229[2] = v148 + 1;
        sub_2723D8978(v194, v149 + ((*(v227 + 80) + 32) & ~*(v227 + 80)) + *(v227 + 72) * v148);
        v74 = v215;
      }

      else
      {

        v20 = *v231;
        v73 = v213;
        v74 = v38;
      }

LABEL_10:
      v69 = v73 + 1;
      (v20)(v74, v39);
      v20 = v210;
      v38 = v74;
      v42 = &qword_2723FFCB0;
      sub_2723D9188(v210, &qword_280893F10, &qword_2723FFCB0);
    }

    while (v69 != v204);
  }

  v150 = v177;
  if (!v177[2])
  {
    goto LABEL_74;
  }

  v151 = sub_2723E4FAC(8);
  if ((v152 & 1) == 0)
  {
LABEL_75:
    __break(1u);
LABEL_76:
    swift_once();
    goto LABEL_67;
  }

  v153 = v180;
  sub_2723D9360(v150[7] + v151 * v172, v180, &qword_280893F50, &qword_2723FFCE8);

  v154 = v178;
  v155 = v179;
  v173(v178, v153 + v176[12], v179);
  v156 = v229;

  v157 = sub_2723FE424();
  v158 = sub_2723FE8A4();
  if (os_log_type_enabled(v157, v158))
  {
    v159 = swift_slowAlloc();
    v160 = swift_slowAlloc();
    *&v234 = v160;
    *v159 = 134349571;
    *(v159 + 4) = v156[2];

    *(v159 + 12) = 2050;
    swift_beginAccess();
    *(v159 + 14) = *(v238 + 16);
    *(v159 + 22) = 2085;
    v161 = MEMORY[0x2743C73A0](v156, v217);
    v163 = sub_2723E4A00(v161, v162, &v234);

    *(v159 + 24) = v163;
    _os_log_impl(&dword_2723CB000, v157, v158, "VCSettings.addVocabularyEntries newVocabularyEntriesCount: %{public}ld, entriesToRemoveCount: %{public}ld newVocabularyEntries: %{sensitive}s", v159, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v160);
    MEMORY[0x2743C8040](v160, -1, -1);
    MEMORY[0x2743C8040](v159, -1, -1);
  }

  else
  {
  }

  v164 = (v175)(v154, v155);
  v42 = v156;
  if (!v156[2])
  {
    v165 = 0;
    goto LABEL_69;
  }

  MEMORY[0x28223BE20](v164);
  v169 = &v238;
  VCSettings._purgeVocabularyEntries(shouldPurge:)(sub_2723E5128, &v167);

  *&v234 = sub_2723E6C70();
  sub_2723DD1E8(v156);
  sub_2723E7238(v234);
  if (qword_280893DC8 != -1)
  {
    goto LABEL_76;
  }

LABEL_67:
  _s12VoiceControl10VCSettingsC32triggerVocabularySyncIfNecessaryyyF_0();
  v165 = *(v42 + 16);
LABEL_69:

  return v165;
}

unint64_t VCSettings.vocabularyEntriesForAllLocales(includingDeletedEntries:)(int a1)
{
  v44 = a1;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F50, &qword_2723FFCE8);
  v38 = *(v40 - 8);
  v1 = *(v38 + 64);
  MEMORY[0x28223BE20](v40);
  v39 = (&v37 - v2);
  v3 = sub_2723FE434();
  v42 = *(v3 - 8);
  v43 = v3;
  v4 = *(v42 + 64);
  MEMORY[0x28223BE20](v3);
  v41 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for VCVocabularyEntry();
  v6 = *(v45 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v45);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v37 - v11;
  v13 = sub_2723E6C70();
  v47 = *(v13 + 16);
  if (v47)
  {
    v14 = 0;
    v15 = MEMORY[0x277D84F90];
    v16 = v44;
    v46 = v10;
    while (v14 < *(v13 + 16))
    {
      v17 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v18 = *(v6 + 72);
      sub_2723D5C78(v13 + v17 + v18 * v14, v12);
      if ((v16 & 1) != 0 || (v19 = v12[*(v45 + 36)], v19 == 2) || (v19 & 1) == 0)
      {
        sub_2723D8978(v12, v10);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v48 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2723D6C28(0, *(v15 + 16) + 1, 1);
          v16 = v44;
          v15 = v48;
        }

        v22 = *(v15 + 16);
        v21 = *(v15 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_2723D6C28(v21 > 1, v22 + 1, 1);
          v16 = v44;
          v15 = v48;
        }

        *(v15 + 16) = v22 + 1;
        v10 = v46;
        sub_2723D8978(v46, v15 + v17 + v22 * v18);
      }

      else
      {
        sub_2723E5038(v12);
      }

      if (v47 == ++v14)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_23:
    result = swift_once();
    goto LABEL_16;
  }

  v15 = MEMORY[0x277D84F90];
LABEL_15:

  if (qword_280893E18 != -1)
  {
    goto LABEL_23;
  }

LABEL_16:
  v24 = off_280894260;
  v26 = v42;
  v25 = v43;
  v27 = v41;
  if (!*(off_280894260 + 2))
  {
    __break(1u);
    goto LABEL_25;
  }

  result = sub_2723E4FAC(8);
  if ((v28 & 1) == 0)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  v29 = v39;
  sub_2723D9360(v24[7] + *(v38 + 72) * result, v39, &qword_280893F50, &qword_2723FFCE8);

  (*(v26 + 32))(v27, v29 + *(v40 + 48), v25);

  v30 = sub_2723FE424();
  v31 = sub_2723FE884();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v48 = v33;
    *v32 = 67240707;
    *(v32 + 4) = v44 & 1;
    *(v32 + 8) = 2050;
    *(v32 + 10) = *(v15 + 16);

    *(v32 + 18) = 2085;
    v34 = MEMORY[0x2743C7380](v15, v45);
    v36 = sub_2723E4A00(v34, v35, &v48);

    *(v32 + 20) = v36;
    _os_log_impl(&dword_2723CB000, v30, v31, "VCSettings.vocabularyEntriesForAllLocales includingDeletedEntries: %{BOOL,public}d, visibleEntriesCount: %{public}ld, visibleEntries: %{sensitive}s", v32, 0x1Cu);
    __swift_destroy_boxed_opaque_existential_1(v33);
    MEMORY[0x2743C8040](v33, -1, -1);
    MEMORY[0x2743C8040](v32, -1, -1);
  }

  else
  {
  }

  (*(v26 + 8))(v27, v25);
  return v15;
}

unint64_t VCSettings.visibleVocabularyEntriesForActiveLocale.getter()
{
  v0 = sub_2723FE344();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280893DC8 != -1)
  {
    swift_once();
  }

  v5 = sub_2723EC124();
  v7 = v6;
  if (qword_280893E00 != -1)
  {
    swift_once();
  }

  v8 = qword_280894088;
  v9 = [objc_opt_self() sharedPreferences];
  v10 = [v9 languageCode];

  if (v10)
  {
    v11 = sub_2723FE5B4();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  sub_2723FE2F4();
  sub_2723EB6EC(v8, v5, v7, v11, v13, v4);

  v14 = VCSettings.vocabularyEntries(for:includingDeletedEntries:)(v4, 0);
  (*(v1 + 8))(v4, v0);
  return v14;
}

unint64_t VCSettings.vocabularyEntries(for:includingDeletedEntries:)(uint64_t a1, int a2)
{
  v41 = sub_2723FE344();
  v4 = *(v41 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v41);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F50, &qword_2723FFCE8);
  v40 = *(v8 - 8);
  v9 = *(v40 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v39 - v10);
  v12 = sub_2723FE434();
  v42 = *(v12 - 8);
  v13 = *(v42 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = VCSettings.vocabularyEntriesForAllLocales(includingDeletedEntries:)(a2);
  v44 = a1;
  result = sub_2723D277C(sub_2723E57C4, v43, v16);
  v18 = result;
  if (qword_280893E18 != -1)
  {
    result = swift_once();
  }

  v19 = off_280894260;
  if (!*(off_280894260 + 2))
  {
    __break(1u);
    goto LABEL_10;
  }

  result = sub_2723E4FAC(8);
  if ((v20 & 1) == 0)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  sub_2723D9360(v19[7] + *(v40 + 72) * result, v11, &qword_280893F50, &qword_2723FFCE8);

  v21 = *(v8 + 48);
  v22 = v42;
  (*(v42 + 32))(v15, v11 + v21, v12);
  v23 = a1;
  v24 = v15;
  v25 = v41;
  (*(v4 + 16))(v7, v23, v41);
  swift_bridgeObjectRetain_n();
  v26 = sub_2723FE424();
  v27 = sub_2723FE884();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v45[0] = v39;
    *v28 = 136446723;
    v29 = MEMORY[0x2743C6F10]();
    v40 = v12;
    v31 = v30;
    (*(v4 + 8))(v7, v25);
    v32 = sub_2723E4A00(v29, v31, v45);

    *(v28 + 4) = v32;
    *(v28 + 12) = 2050;
    v33 = *(v18 + 16);

    *(v28 + 14) = v33;

    *(v28 + 22) = 2085;
    v34 = type metadata accessor for VCVocabularyEntry();
    v35 = MEMORY[0x2743C7380](v18, v34);
    v37 = sub_2723E4A00(v35, v36, v45);

    *(v28 + 24) = v37;
    _os_log_impl(&dword_2723CB000, v26, v27, "VCSettings.vocabularyEntries locale: %{public}s, filteredEntriesCount: %{public}ld, filteredEntries: %{sensitive}s", v28, 0x20u);
    v38 = v39;
    swift_arrayDestroy();
    MEMORY[0x2743C8040](v38, -1, -1);
    MEMORY[0x2743C8040](v28, -1, -1);

    (*(v42 + 8))(v24, v40);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    (*(v4 + 8))(v7, v25);
    (*(v22 + 8))(v24, v12);
  }

  return v18;
}

uint64_t sub_2723DC22C(uint64_t a1, uint64_t a2)
{
  v29 = a2;
  v3 = sub_2723FE2D4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2723FE344();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (a1 + *(type metadata accessor for VCVocabularyEntry() + 32));
  if (v13[1])
  {
    v14 = *v13;
    (*(v4 + 104))(v7, *MEMORY[0x277CC9668], v3);
    v15 = sub_2723FE2C4();
    v17 = v16;
    (*(v4 + 8))(v7, v3);
    v34 = v15;
    v35 = v17;
    v32 = 45;
    v33 = 0xE100000000000000;
    v30 = 95;
    v31 = 0xE100000000000000;
    sub_2723CD24C();
    sub_2723FE984();

    sub_2723FE2A4();
  }

  else
  {
    if (qword_280893DC8 != -1)
    {
      swift_once();
    }

    v28 = sub_2723EC124();
    v19 = v18;
    if (qword_280893E00 != -1)
    {
      swift_once();
    }

    v20 = qword_280894088;
    v21 = [objc_opt_self() sharedPreferences];
    v22 = [v21 languageCode];

    if (v22)
    {
      v23 = sub_2723FE5B4();
      v25 = v24;
    }

    else
    {
      v23 = 0;
      v25 = 0;
    }

    sub_2723FE2F4();
    sub_2723EB6EC(v20, v28, v19, v23, v25, v12);
  }

  v26 = MEMORY[0x2743C6F40](v12, v29);
  (*(v9 + 8))(v12, v8);
  return v26 & 1;
}

BOOL VCSettings.addVocabularyEntry(text:pronunciations:locale:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v65 = a4;
  v62 = a2;
  v63 = a1;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280894048, &qword_272400048);
  v7 = *(*(v60 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v60);
  v64 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v58 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F50, &qword_2723FFCE8);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = (&v58 - v15);
  v17 = sub_2723FE434();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280893E18 != -1)
  {
    swift_once();
  }

  v22 = off_280894260;
  if (!*(off_280894260 + 2))
  {
    __break(1u);
    goto LABEL_20;
  }

  v23 = sub_2723E4FAC(8);
  if ((v24 & 1) == 0)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    swift_once();
    goto LABEL_10;
  }

  v61 = v5;
  sub_2723D9360(v22[7] + *(v13 + 72) * v23, v16, &qword_280893F50, &qword_2723FFCE8);

  v25 = v16 + *(v12 + 48);
  v26 = v17;
  (*(v18 + 32))(v21, v25, v17);
  sub_2723D9360(v65, v11, &qword_280894048, &qword_272400048);

  v27 = v62;

  v28 = sub_2723FE424();
  v29 = sub_2723FE8A4();

  v30 = a3;
  if (os_log_type_enabled(v28, v29))
  {
    v31 = swift_slowAlloc();
    v59 = v26;
    v32 = v31;
    v58 = swift_slowAlloc();
    v67 = v58;
    *v32 = 141559043;
    *(v32 + 4) = 1752392040;
    *(v32 + 12) = 2085;
    *(v32 + 14) = sub_2723E4A00(v63, v27, &v67);
    *(v32 + 22) = 2160;
    *(v32 + 24) = 1752392040;
    *(v32 + 32) = 2085;
    v66 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280894058, &qword_272400050);
    v33 = sub_2723FE924();
    v35 = sub_2723E4A00(v33, v34, &v67);

    *(v32 + 34) = v35;
    *(v32 + 42) = 2082;
    v36 = sub_2723FE924();
    v38 = v37;
    sub_2723D9188(v11, &qword_280894048, &qword_272400048);
    v39 = sub_2723E4A00(v36, v38, &v67);
    v30 = a3;

    *(v32 + 44) = v39;
    _os_log_impl(&dword_2723CB000, v28, v29, "VCSettings.addVocabularyEntry text: %{sensitive,mask.hash}s, pronunciations: %{sensitive,mask.hash}s, locale: %{public}s", v32, 0x34u);
    v40 = v58;
    swift_arrayDestroy();
    MEMORY[0x2743C8040](v40, -1, -1);
    MEMORY[0x2743C8040](v32, -1, -1);

    (*(v18 + 8))(v21, v59);
  }

  else
  {

    sub_2723D9188(v11, &qword_280894048, &qword_272400048);
    (*(v18 + 8))(v21, v26);
  }

  v41 = v63;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280894050, &unk_2724009D0);
  v42 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F10, &qword_2723FFCB0) - 8);
  v43 = *(*v42 + 72);
  v44 = (*(*v42 + 80) + 32) & ~*(*v42 + 80);
  v11 = swift_allocObject();
  *(v11 + 1) = xmmword_2723FFC60;
  a3 = &v11[v44];
  v21 = v42[18];
  *a3 = v41;
  a3[1] = v27;
  a3[2] = v30;
  v45 = v64;
  sub_2723D9360(v65, v64, &qword_280894048, &qword_272400048);
  v16 = sub_2723FE344();
  v46 = *(v16 - 1);
  v18 = *(v46 + 48);
  if ((v18)(v45, 1, v16) != 1)
  {
    (*(v46 + 32))(a3 + v21, v45, v16);

    goto LABEL_18;
  }

  v47 = qword_280893DC8;

  if (v47 != -1)
  {
    goto LABEL_21;
  }

LABEL_10:
  v65 = v21;
  v63 = sub_2723EC124();
  v49 = v48;
  if (qword_280893E00 != -1)
  {
    swift_once();
  }

  v62 = qword_280894088;
  v50 = [objc_opt_self() sharedPreferences];
  v51 = [v50 languageCode];

  if (v51)
  {
    v52 = sub_2723FE5B4();
    v54 = v53;
  }

  else
  {
    v52 = 0;
    v54 = 0;
  }

  sub_2723FE2F4();
  sub_2723EB6EC(v62, v63, v49, v52, v54, a3 + v65);

  v55 = v64;
  if ((v18)(v64, 1, v16) != 1)
  {
    sub_2723D9188(v55, &qword_280894048, &qword_272400048);
  }

LABEL_18:
  v56 = VCSettings.addVocabularyEntries(entries:)(v11);

  return v56 != 0;
}

uint64_t sub_2723DCD24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v44 = a2;
  v6 = sub_2723FE2D4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2723FE344();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for VCVocabularyEntry();
  v35 = a1;
  v16 = (a1 + *(v34 + 32));
  if (v16[1])
  {
    v17 = *v16;
    (*(v7 + 104))(v10, *MEMORY[0x277CC9668], v6);
    v18 = sub_2723FE2C4();
    v20 = v19;
    (*(v7 + 8))(v10, v6);
    v42 = v18;
    v43 = v20;
    v40 = 45;
    v41 = 0xE100000000000000;
    v38 = 95;
    v39 = 0xE100000000000000;
    sub_2723CD24C();
    sub_2723FE984();

    sub_2723FE2A4();
  }

  else
  {
    if (qword_280893DC8 != -1)
    {
      swift_once();
    }

    v33[0] = sub_2723EC124();
    v22 = v21;
    if (qword_280893E00 != -1)
    {
      swift_once();
    }

    v33[1] = v4;
    v23 = qword_280894088;
    v24 = [objc_opt_self() sharedPreferences];
    v25 = [v24 languageCode];

    if (v25)
    {
      v26 = sub_2723FE5B4();
      v28 = v27;
    }

    else
    {
      v26 = 0;
      v28 = 0;
    }

    sub_2723FE2F4();
    sub_2723EB6EC(v23, v33[0], v22, v26, v28, v15);
  }

  v29 = MEMORY[0x2743C6F40](v15, v44);
  (*(v12 + 8))(v15, v11);
  if (v29)
  {
    v30 = (v35 + *(v34 + 20));
    if (*v30 == v36 && v30[1] == v37)
    {
      v31 = 1;
    }

    else
    {
      v31 = sub_2723FEC44();
    }
  }

  else
  {
    v31 = 0;
  }

  return v31 & 1;
}

uint64_t sub_2723DD0F4(uint64_t result)
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
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_2723E43F8(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2723DD1E8(uint64_t result)
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
  v7 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_2723E4504(isUniquelyReferenced_nonNull_native, v16, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v9 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for VCVocabularyEntry();
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2723DD314(uint64_t a1, uint64_t *a2)
{
  v88 = a1;
  v96 = sub_2723FE2D4();
  v3 = *(v96 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v96);
  v95 = v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for VCVocabularyEntry();
  v6 = *(v91 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v91);
  v9 = v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_2723FE344();
  v10 = *(v101 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v101);
  v14 = v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v86 = v84 - v15;
  swift_beginAccess();
  v16 = *a2;
  v17 = MEMORY[0x277D84F90];
  v18 = MEMORY[0x277CC9668];
  v19 = *(*a2 + 16);
  v87 = v10;
  if (v19)
  {
    v100 = v14;
    v110 = MEMORY[0x277D84F90];
    v20 = MEMORY[0x277CC9668];
    v21 = v16;

    sub_2723D6BE8(0, v19, 0);
    v22 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v84[1] = v21;
    v23 = v21 + v22;
    v94 = (v3 + 104);
    v17 = v110;
    v99 = *(v6 + 72);
    v93 = *v20;
    v85 = v3;
    v92 = (v3 + 8);
    v89 = "CACAlwaysShowOverlay";
    v98 = (v10 + 8);
    v24 = v91;
    v90 = v9;
    while (1)
    {
      sub_2723D5C78(v23, v9);
      v108 = 0;
      v109 = 0xE000000000000000;
      v25 = &v9[*(v24 + 32)];
      if (!*(v25 + 1))
      {
        break;
      }

      v26 = *v25;
      v27 = v95;
      v28 = v96;
      (*v94)(v95, v93, v96);
      v29 = sub_2723FE2C4();
      v31 = v30;
      (*v92)(v27, v28);
      *&v106 = v29;
      *(&v106 + 1) = v31;
      *&v104 = 45;
      *(&v104 + 1) = 0xE100000000000000;
      v102 = 95;
      v103 = 0xE100000000000000;
      v82 = sub_2723CD24C();
      v83 = v82;
      v81 = v82;
      v80 = MEMORY[0x277D837D0];
      sub_2723FE984();

      v32 = v100;
      sub_2723FE2A4();
LABEL_26:
      v46 = sub_2723FE2B4();
      v48 = v47;
      (*v98)(v32, v101);
      MEMORY[0x2743C7290](v46, v48);

      MEMORY[0x2743C7290](8250, 0xE200000000000000);
      MEMORY[0x2743C7290](*&v9[*(v24 + 20)], *&v9[*(v24 + 20) + 8]);
      v49 = v108;
      v50 = v109;
      sub_2723E5038(v9);
      v110 = v17;
      v52 = *(v17 + 16);
      v51 = *(v17 + 24);
      if (v52 >= v51 >> 1)
      {
        sub_2723D6BE8((v51 > 1), v52 + 1, 1);
        v17 = v110;
      }

      *(v17 + 16) = v52 + 1;
      v53 = v17 + 16 * v52;
      *(v53 + 32) = v49;
      *(v53 + 40) = v50;
      v23 += v99;
      if (!--v19)
      {

        v3 = v85;
        v18 = MEMORY[0x277CC9668];
        goto LABEL_31;
      }
    }

    if (qword_280893DC8 != -1)
    {
      swift_once();
    }

    v97 = qword_280894080;
    v33 = *(qword_280894080 + OBJC_IVAR____TtC12VoiceControl10VCSettings_defaultsMain);
    if (v33)
    {
      v34 = v33;
      v35 = sub_2723FE574();
      v36 = [v34 objectForKey_];

      if (v36)
      {
        sub_2723FE994();
        swift_unknownObjectRelease();
      }

      else
      {

        v104 = 0u;
        v105 = 0u;
      }

      v106 = v104;
      v107 = v105;
      if (*(&v105 + 1))
      {
        v37 = swift_dynamicCast();
        if (v37)
        {
          v38 = v104;
        }

        else
        {
          v38 = 0;
        }

        if (v37)
        {
          v39 = *(&v104 + 1);
        }

        else
        {
          v39 = 0;
        }

        goto LABEL_20;
      }
    }

    else
    {
      v106 = 0u;
      v107 = 0u;
    }

    sub_2723D9188(&v106, &qword_280893F40, &unk_272400070);
    v38 = 0;
    v39 = 0;
LABEL_20:
    if (qword_280893E00 != -1)
    {
      swift_once();
    }

    v40 = qword_280894088;
    v41 = [objc_opt_self() sharedPreferences];
    v42 = [v41 languageCode];

    if (v42)
    {
      v43 = sub_2723FE5B4();
      v45 = v44;
    }

    else
    {
      v43 = 0;
      v45 = 0;
    }

    sub_2723FE2F4();
    v32 = v100;
    sub_2723EB6EC(v40, v38, v39, v43, v45, v100);

    v24 = v91;
    v9 = v90;
    goto LABEL_26;
  }

  v24 = v91;
LABEL_31:
  *&v106 = 0;
  *(&v106 + 1) = 0xE000000000000000;
  v54 = *(v24 + 32);
  v55 = v88;
  v56 = (v88 + v54);
  v57 = v86;
  if (v56[1])
  {
    v58 = *v56;
    v59 = v95;
    v60 = v3;
    v61 = v96;
    (*(v3 + 104))(v95, *v18, v96);
    v62 = sub_2723FE2C4();
    v64 = v63;
    (*(v60 + 8))(v59, v61);
    *&v104 = v62;
    *(&v104 + 1) = v64;
    v108 = 45;
    v109 = 0xE100000000000000;
    v102 = 95;
    v103 = 0xE100000000000000;
    v82 = sub_2723CD24C();
    v83 = v82;
    v81 = v82;
    v80 = MEMORY[0x277D837D0];
    sub_2723FE984();

    sub_2723FE2A4();
  }

  else
  {
    if (qword_280893DC8 != -1)
    {
      swift_once();
    }

    v65 = sub_2723EC124();
    v67 = v66;
    if (qword_280893E00 != -1)
    {
      swift_once();
    }

    v68 = qword_280894088;
    v69 = [objc_opt_self() sharedPreferences];
    v70 = [v69 languageCode];

    if (v70)
    {
      v71 = sub_2723FE5B4();
      v73 = v72;
    }

    else
    {
      v71 = 0;
      v73 = 0;
    }

    sub_2723FE2F4();
    sub_2723EB6EC(v68, v65, v67, v71, v73, v57);
  }

  v74 = sub_2723FE2B4();
  v76 = v75;
  (*(v87 + 8))(v57, v101);
  MEMORY[0x2743C7290](v74, v76);

  MEMORY[0x2743C7290](8250, 0xE200000000000000);
  v77 = MEMORY[0x2743C7290](*(v55 + *(v91 + 20)), *(v55 + *(v91 + 20) + 8));
  MEMORY[0x28223BE20](v77);
  v78 = sub_2723E718C(sub_2723CE180, &v80, v17);

  return v78 & 1;
}

unint64_t VCSettings._purgeVocabularyEntries(shouldPurge:)(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F50, &qword_2723FFCE8);
  v44 = *(v46 - 8);
  v5 = *(v44 + 64);
  MEMORY[0x28223BE20](v46);
  v45 = (&v41 - v6);
  v7 = sub_2723FE434();
  v49 = *(v7 - 1);
  v8 = *(v49 + 64);
  MEMORY[0x28223BE20](v7);
  v48 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for VCVocabularyEntry();
  v52 = *(v10 - 8);
  v11 = *(v52 + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v50 = (&v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x28223BE20](v12);
  v51 = &v41 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v41 - v16;
  v43 = *(sub_2723E6C70() + 16);

  v47 = v2;
  v18 = sub_2723E6C70();
  v53 = a1;
  v54 = a2;
  result = sub_2723E5304(a1, a2, v18);
  if ((v20 & 1) == 0)
  {
    v22 = result;
    v21 = result + 1;
    if (__OFADD__(result, 1))
    {
LABEL_44:
      __break(1u);
      return result;
    }

    v42 = v7;
    while (1)
    {
      v7 = v18 + 2;
      v23 = v18[2];
      if (v21 == v23)
      {
        break;
      }

      if (v21 >= v23)
      {
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
        goto LABEL_39;
      }

      v24 = (*(v52 + 80) + 32) & ~*(v52 + 80);
      v25 = v18 + v24;
      a2 = *(v52 + 72);
      v26 = a2 * v21;
      sub_2723D5C78(v18 + v24 + a2 * v21, v17);
      v27 = v53(v17);
      sub_2723E5038(v17);
      if ((v27 & 1) == 0)
      {
        if (v21 != v22)
        {
          if (v22 < 0)
          {
            goto LABEL_34;
          }

          v7 = *v7;
          if (v22 >= v7)
          {
            goto LABEL_35;
          }

          v28 = a2 * v22;
          sub_2723D5C78(&v25[a2 * v22], v51);
          if (v21 >= v7)
          {
            goto LABEL_36;
          }

          v7 = v50;
          sub_2723D5C78(&v25[v26], v50);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v18 = sub_2723E53F0(v18);
          }

          a2 = v18 + v24;
          sub_2723E57E4(v7, v18 + v24 + v28);
          if (v21 >= v18[2])
          {
            goto LABEL_37;
          }

          sub_2723E57E4(v51, a2 + v26);
        }

        ++v22;
      }

      ++v21;
    }

    if (v21 < v22)
    {
      goto LABEL_38;
    }

    v7 = v42;
    if ((v22 & 0x8000000000000000) == 0)
    {
      goto LABEL_20;
    }

LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v21 = v18[2];
  v22 = v21;
LABEL_20:
  a2 = v22;
  if (__OFADD__(v21, v22 - v21))
  {
LABEL_40:
    __break(1u);
LABEL_41:
    result = swift_once();
    goto LABEL_28;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v55 = v18;
  if (!isUniquelyReferenced_nonNull_native || v22 > v18[3] >> 1)
  {
    if (v21 <= v22)
    {
      v30 = v22;
    }

    else
    {
      v30 = v21;
    }

    v18 = sub_2723E4504(isUniquelyReferenced_nonNull_native, v30, 1, v18);
    v55 = v18;
  }

  sub_2723E5404(v22, v21, 0);
  sub_2723E7238(v18);
  a2 = *(sub_2723E6C70() + 16);

  if (qword_280893E18 != -1)
  {
    goto LABEL_41;
  }

LABEL_28:
  v31 = off_280894260;
  v33 = v48;
  v32 = v49;
  if (!*(off_280894260 + 2))
  {
    __break(1u);
    goto LABEL_43;
  }

  result = sub_2723E4FAC(8);
  if ((v34 & 1) == 0)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v35 = v43 - a2;
  v36 = v31[7] + *(v44 + 72) * result;
  v37 = v45;
  sub_2723D9360(v36, v45, &qword_280893F50, &qword_2723FFCE8);

  (*(v32 + 32))(v33, v37 + *(v46 + 48), v7);
  v38 = sub_2723FE424();
  v39 = sub_2723FE8A4();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 134349056;
    *(v40 + 4) = v35;
    _os_log_impl(&dword_2723CB000, v38, v39, "VCSettings._purgeVocabularyEntries() numberOfEntriesPurged: %{public}ld", v40, 0xCu);
    MEMORY[0x2743C8040](v40, -1, -1);
  }

  (*(v32 + 8))(v33, v7);
  return v35;
}

Swift::Int __swiftcall VCSettings.removeVocabularyEntries(_:)(Swift::OpaquePointer a1)
{
  v76 = sub_2723FE2D4();
  v2 = *(v76 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v76);
  v75 = v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2723FE344();
  v78 = *(v5 - 8);
  v6 = *(v78 + 64);
  MEMORY[0x28223BE20](v5);
  v71 = v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for VCVocabularyEntry();
  v79 = *(v81 - 8);
  v8 = *(v79 + 64);
  MEMORY[0x28223BE20](v81);
  v80 = v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F50, &qword_2723FFCE8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = (v69 - v13);
  v15 = sub_2723FE434();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280893E18 != -1)
  {
    swift_once();
  }

  v20 = off_280894260;
  if (!*(off_280894260 + 2))
  {
    __break(1u);
    goto LABEL_39;
  }

  v21 = sub_2723E4FAC(8);
  if ((v22 & 1) == 0)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    swift_once();
    goto LABEL_37;
  }

  sub_2723D9360(v20[7] + *(v11 + 72) * v21, v14, &qword_280893F50, &qword_2723FFCE8);

  (*(v16 + 32))(v19, v14 + *(v10 + 48), v15);

  v23 = sub_2723FE424();
  v24 = sub_2723FE8A4();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v74 = v15;
    v26 = v25;
    v27 = swift_slowAlloc();
    v77 = v2;
    v28 = v27;
    *&v86 = v27;
    *v26 = 134349315;
    *(v26 + 4) = *(a1._rawValue + 2);

    *(v26 + 12) = 2085;
    v29 = MEMORY[0x2743C7380](a1._rawValue, v81);
    rawValue = a1._rawValue;
    v32 = sub_2723E4A00(v29, v30, &v86);

    *(v26 + 14) = v32;
    a1._rawValue = rawValue;
    _os_log_impl(&dword_2723CB000, v23, v24, "VCSettings.removeVocabularyEntries entriesToRemoveCount: %{public}ld, entriesToRemove: %{sensitive}s", v26, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v28);
    v33 = v28;
    v2 = v77;
    MEMORY[0x2743C8040](v33, -1, -1);
    MEMORY[0x2743C8040](v26, -1, -1);

    (*(v16 + 8))(v19, v74);
  }

  else
  {

    (*(v16 + 8))(v19, v15);
  }

  v34 = *(a1._rawValue + 2);
  v35._rawValue = MEMORY[0x277D84F90];
  v36 = v71;
  if (v34)
  {
    v90 = MEMORY[0x277D84F90];
    sub_2723D6BE8(0, v34, 0);
    v37 = a1._rawValue + ((*(v79 + 80) + 32) & ~*(v79 + 80));
    v74 = (v2 + 104);
    v35._rawValue = v90;
    v73 = (v2 + 8);
    v79 = *(v79 + 72);
    v69[1] = "CACAlwaysShowOverlay";
    v78 += 8;
    v72 = *MEMORY[0x277CC9668];
    v70 = v5;
    while (1)
    {
      v38 = v80;
      sub_2723D5C78(v37, v80);
      v88 = 0;
      v89 = 0xE000000000000000;
      v39 = (v38 + *(v81 + 32));
      if (!v39[1])
      {
        break;
      }

      v40 = *v39;
      v41 = v75;
      v42 = v76;
      (*v74)(v75, v72, v76);
      v43 = sub_2723FE2C4();
      v45 = v44;
      (*v73)(v41, v42);
      *&v86 = v43;
      *(&v86 + 1) = v45;
      *&v84 = 45;
      *(&v84 + 1) = 0xE100000000000000;
      v82 = 95;
      v83 = 0xE100000000000000;
      sub_2723CD24C();
      sub_2723FE984();

      sub_2723FE2A4();
LABEL_33:
      v59 = sub_2723FE2B4();
      v61 = v60;
      (*v78)(v36, v5);
      MEMORY[0x2743C7290](v59, v61);

      MEMORY[0x2743C7290](8250, 0xE200000000000000);
      v62 = v80;
      MEMORY[0x2743C7290](*(v80 + *(v81 + 20)), *(v80 + *(v81 + 20) + 8));
      v63 = v88;
      v64 = v89;
      sub_2723E5038(v62);
      v90 = v35._rawValue;
      v66 = *(v35._rawValue + 2);
      v65 = *(v35._rawValue + 3);
      if (v66 >= v65 >> 1)
      {
        sub_2723D6BE8((v65 > 1), v66 + 1, 1);
        v35._rawValue = v90;
      }

      *(v35._rawValue + 2) = v66 + 1;
      v67 = v35._rawValue + 16 * v66;
      *(v67 + 4) = v63;
      *(v67 + 5) = v64;
      v37 += v79;
      if (!--v34)
      {
        goto LABEL_36;
      }
    }

    if (qword_280893DC8 != -1)
    {
      swift_once();
    }

    v77 = qword_280894080;
    v46 = *(qword_280894080 + OBJC_IVAR____TtC12VoiceControl10VCSettings_defaultsMain);
    if (v46)
    {
      v47 = v46;
      v48 = sub_2723FE574();
      v49 = [v47 objectForKey_];

      if (v49)
      {
        sub_2723FE994();
        swift_unknownObjectRelease();
      }

      else
      {

        v84 = 0u;
        v85 = 0u;
      }

      v86 = v84;
      v87 = v85;
      if (*(&v85 + 1))
      {
        v50 = swift_dynamicCast();
        if (v50)
        {
          v51 = v84;
        }

        else
        {
          v51 = 0;
        }

        if (v50)
        {
          v52 = *(&v84 + 1);
        }

        else
        {
          v52 = 0;
        }

        goto LABEL_27;
      }
    }

    else
    {
      v86 = 0u;
      v87 = 0u;
    }

    sub_2723D9188(&v86, &qword_280893F40, &unk_272400070);
    v51 = 0;
    v52 = 0;
LABEL_27:
    if (qword_280893E00 != -1)
    {
      swift_once();
    }

    v53 = qword_280894088;
    v54 = [objc_opt_self() sharedPreferences];
    v55 = [v54 languageCode];

    if (v55)
    {
      v56 = sub_2723FE5B4();
      v58 = v57;
    }

    else
    {
      v56 = 0;
      v58 = 0;
    }

    sub_2723FE2F4();
    v36 = v71;
    sub_2723EB6EC(v53, v51, v52, v56, v58, v71);

    v5 = v70;
    goto LABEL_33;
  }

LABEL_36:
  v11 = VCSettings._removeVocabularyEntries(matchingIDs:)(v35);

  if (qword_280893DC8 != -1)
  {
    goto LABEL_40;
  }

LABEL_37:
  _s12VoiceControl10VCSettingsC32triggerVocabularySyncIfNecessaryyyF_0();
  return v11;
}

Swift::Int __swiftcall VCSettings._removeVocabularyEntries(matchingIDs:)(Swift::OpaquePointer matchingIDs)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F50, &qword_2723FFCE8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v26 - v7);
  v9 = sub_2723FE434();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  result = MEMORY[0x28223BE20](v9);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280893E18 != -1)
  {
    result = swift_once();
  }

  v15 = off_280894260;
  if (!*(off_280894260 + 2))
  {
    __break(1u);
    goto LABEL_10;
  }

  result = sub_2723E4FAC(8);
  if ((v16 & 1) == 0)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  sub_2723D9360(v15[7] + *(v5 + 72) * result, v8, &qword_280893F50, &qword_2723FFCE8);

  (*(v10 + 32))(v14, v8 + *(v4 + 48), v9);

  v17 = sub_2723FE424();
  v18 = sub_2723FE8A4();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v27 = v20;
    *v19 = 134349315;
    *(v19 + 4) = *(matchingIDs._rawValue + 2);

    *(v19 + 12) = 2085;
    v21 = MEMORY[0x2743C7380](matchingIDs._rawValue, MEMORY[0x277D837D0]);
    v26 = v9;
    v23 = sub_2723E4A00(v21, v22, &v27);

    *(v19 + 14) = v23;
    _os_log_impl(&dword_2723CB000, v17, v18, "VCSettings._removeVocabularyEntries matchingIDsCount: %{public}ld, matchingIDs: %{sensitive}s", v19, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x2743C8040](v20, -1, -1);
    MEMORY[0x2743C8040](v19, -1, -1);

    (*(v10 + 8))(v14, v26);
  }

  else
  {

    (*(v10 + 8))(v14, v9);
  }

  sub_2723E5848(v2, matchingIDs._rawValue);
  v25 = v24;

  return v25;
}

uint64_t VCSettings.removeAllVocabularyEntries(for:)(char *a1)
{
  v38 = sub_2723FE344();
  v2 = *(v38 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v38);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F50, &qword_2723FFCE8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = (&v35 - v9);
  v11 = sub_2723FE434();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280893E18 != -1)
  {
    swift_once();
  }

  v16 = off_280894260;
  if (!*(off_280894260 + 2))
  {
    __break(1u);
    goto LABEL_11;
  }

  v17 = sub_2723E4FAC(8);
  if ((v18 & 1) == 0)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    swift_once();
    goto LABEL_9;
  }

  sub_2723D9360(v16[7] + *(v7 + 72) * v17, v10, &qword_280893F50, &qword_2723FFCE8);

  (*(v12 + 32))(v15, v10 + *(v6 + 48), v11);
  v19 = *(v2 + 16);
  v37 = a1;
  v20 = a1;
  v21 = v15;
  v22 = v38;
  v19(v5, v20, v38);
  v23 = sub_2723FE424();
  v24 = sub_2723FE8A4();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v36 = v11;
    v26 = v25;
    v27 = swift_slowAlloc();
    v39 = v27;
    *v26 = 136446210;
    v28 = MEMORY[0x2743C6F10]();
    v35 = v21;
    v30 = v29;
    (*(v2 + 8))(v5, v22);
    v31 = sub_2723E4A00(v28, v30, &v39);

    *(v26 + 4) = v31;
    _os_log_impl(&dword_2723CB000, v23, v24, "VCSettings.removeAllVocabularyEntries locale: %{public}s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    MEMORY[0x2743C8040](v27, -1, -1);
    MEMORY[0x2743C8040](v26, -1, -1);

    v32 = (*(v12 + 8))(v35, v36);
  }

  else
  {

    (*(v2 + 8))(v5, v22);
    v32 = (*(v12 + 8))(v21, v11);
  }

  MEMORY[0x28223BE20](v32);
  *(&v35 - 2) = v37;
  VCSettings._removeVocabularyEntries(shouldRemove:)(sub_2723E6288, (&v35 - 4));
  v11 = v33;
  if (qword_280893DC8 != -1)
  {
    goto LABEL_12;
  }

LABEL_9:
  _s12VoiceControl10VCSettingsC32triggerVocabularySyncIfNecessaryyyF_0();
  return v11;
}

uint64_t sub_2723DF398(uint64_t a1, uint64_t a2)
{
  v4 = sub_2723FE2D4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2723FE344();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = (a1 + *(type metadata accessor for VCVocabularyEntry() + 32));
  if (v14[1])
  {
    v15 = *v14;
    (*(v5 + 104))(v8, *MEMORY[0x277CC9668], v4);
    v16 = sub_2723FE2C4();
    v18 = v17;
    (*(v5 + 8))(v8, v4);
    v36 = v16;
    v37 = v18;
    v34 = 45;
    v35 = 0xE100000000000000;
    v32 = 95;
    v33 = 0xE100000000000000;
    sub_2723CD24C();
    sub_2723FE984();

    sub_2723FE2A4();
  }

  else
  {
    if (qword_280893DC8 != -1)
    {
      swift_once();
    }

    v19 = sub_2723EC124();
    v21 = v20;
    if (qword_280893E00 != -1)
    {
      swift_once();
    }

    v31 = v9;
    v22 = qword_280894088;
    v23 = [objc_opt_self() sharedPreferences];
    v24 = [v23 languageCode];

    if (v24)
    {
      v25 = sub_2723FE5B4();
      v27 = v26;
    }

    else
    {
      v25 = 0;
      v27 = 0;
    }

    sub_2723FE2F4();
    sub_2723EB6EC(v22, v19, v21, v25, v27, v13);

    v9 = v31;
  }

  v28 = MEMORY[0x2743C6F40](v13, a2);
  (*(v10 + 8))(v13, v9);
  return v28 & 1;
}

void sub_2723DF718(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893EB0, &unk_2723FFC80);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v38 - v4;
  v6 = type metadata accessor for VCVocabularyEntry();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v38 - v12;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F50, &qword_2723FFCE8);
  v39 = *(v41 - 8);
  v14 = *(v39 + 64);
  MEMORY[0x28223BE20](v41);
  v40 = (v38 - v15);
  v16 = sub_2723FE434();
  v43 = *(v16 - 8);
  v44 = v16;
  v17 = *(v43 + 64);
  MEMORY[0x28223BE20](v16);
  v42 = v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2723E6C70();
  v20 = *(v19 + 16);
  v45 = v20;
  if (v20)
  {
    v38[0] = v19;
    v38[1] = a1;
    v46 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v21 = v19 + v46;
    v22 = *(v7 + 72);
    v23 = MEMORY[0x277D84F90];
    v24 = v20;
    do
    {
      sub_2723D5C78(v21, v13);
      v13[*(v6 + 36)] = 1;
      sub_2723FE284();
      v25 = sub_2723FE294();
      (*(*(v25 - 8) + 56))(v5, 0, 1, v25);
      sub_2723E6290(v5, &v13[*(v6 + 28)]);
      sub_2723D5C78(v13, v11);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_2723E4504(0, v23[2] + 1, 1, v23);
      }

      v27 = v23[2];
      v26 = v23[3];
      if (v27 >= v26 >> 1)
      {
        v23 = sub_2723E4504(v26 > 1, v27 + 1, 1, v23);
      }

      v23[2] = v27 + 1;
      sub_2723D8978(v11, v23 + v46 + v27 * v22);
      sub_2723E5038(v13);
      v21 += v22;
      --v24;
    }

    while (v24);
  }

  else
  {

    v23 = MEMORY[0x277D84F90];
  }

  sub_2723E7238(v23);
  v28 = v42;
  if (qword_280893E18 != -1)
  {
    swift_once();
  }

  v29 = off_280894260;
  v31 = v43;
  v30 = v44;
  if (!*(off_280894260 + 2))
  {
    __break(1u);
    goto LABEL_18;
  }

  v32 = sub_2723E4FAC(8);
  if ((v33 & 1) == 0)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v34 = v40;
  sub_2723D9360(v29[7] + *(v39 + 72) * v32, v40, &qword_280893F50, &qword_2723FFCE8);

  (*(v31 + 32))(v28, v34 + *(v41 + 48), v30);
  v35 = sub_2723FE424();
  v36 = sub_2723FE8A4();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 134349056;
    *(v37 + 4) = v45;
    _os_log_impl(&dword_2723CB000, v35, v36, "VCSettings._removeVocabularyEntries(shouldRemove:) removalCount: %{public}ld", v37, 0xCu);
    MEMORY[0x2743C8040](v37, -1, -1);
  }

  (*(v31 + 8))(v28, v30);
}

void VCSettings._removeVocabularyEntries(shouldRemove:)(uint64_t (*a1)(char *), uint64_t a2)
{
  v53 = a1;
  v54 = a2;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F50, &qword_2723FFCE8);
  v44 = *(v46 - 8);
  v3 = *(v44 + 64);
  MEMORY[0x28223BE20](v46);
  v45 = (v43 - v4);
  v5 = sub_2723FE434();
  v48 = *(v5 - 8);
  v49 = v5;
  v6 = *(v48 + 64);
  MEMORY[0x28223BE20](v5);
  v47 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893EB0, &unk_2723FFC80);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v51 = v43 - v10;
  v50 = type metadata accessor for VCVocabularyEntry();
  v11 = *(v50 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v50);
  v15 = v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v43 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = v43 - v19;
  v21 = sub_2723E6C70();
  v22 = *(v21 + 16);
  if (v22)
  {
    v43[1] = v21;
    v43[2] = v2;
    v23 = 0;
    v52 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v24 = v21 + v52;
    v25 = *(v11 + 72);
    v26 = MEMORY[0x277D84F90];
    while (1)
    {
      sub_2723D5C78(v24, v20);
      sub_2723D5C78(v20, v18);
      v27 = v53(v20);
      sub_2723E5038(v20);
      if (v27)
      {
        v29 = v50;
        v28 = v51;
        v18[*(v50 + 36)] = 1;
        sub_2723FE284();
        v30 = sub_2723FE294();
        (*(*(v30 - 8) + 56))(v28, 0, 1, v30);
        sub_2723E6290(v28, &v18[*(v29 + 7)]);
        if (__OFADD__(v23++, 1))
        {
          break;
        }
      }

      sub_2723D5C78(v18, v15);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_2723E4504(0, v26[2] + 1, 1, v26);
      }

      v33 = v26[2];
      v32 = v26[3];
      if (v33 >= v32 >> 1)
      {
        v26 = sub_2723E4504(v32 > 1, v33 + 1, 1, v26);
      }

      v26[2] = v33 + 1;
      sub_2723D8978(v15, v26 + v52 + v33 * v25);
      sub_2723E5038(v18);
      v24 += v25;
      if (!--v22)
      {

        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:
    swift_once();
    goto LABEL_13;
  }

  v23 = 0;
  v26 = MEMORY[0x277D84F90];
LABEL_12:
  sub_2723E7238(v26);
  v29 = v47;
  if (qword_280893E18 != -1)
  {
    goto LABEL_19;
  }

LABEL_13:
  v34 = off_280894260;
  v36 = v48;
  v35 = v49;
  if (!*(off_280894260 + 2))
  {
    __break(1u);
    goto LABEL_21;
  }

  v37 = sub_2723E4FAC(8);
  if ((v38 & 1) == 0)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v39 = v45;
  sub_2723D9360(v34[7] + *(v44 + 72) * v37, v45, &qword_280893F50, &qword_2723FFCE8);

  (*(v36 + 32))(v29, v39 + *(v46 + 48), v35);
  v40 = sub_2723FE424();
  v41 = sub_2723FE8A4();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 134349056;
    *(v42 + 4) = v23;
    _os_log_impl(&dword_2723CB000, v40, v41, "VCSettings._removeVocabularyEntries(shouldRemove:) removalCount: %{public}ld", v42, 0xCu);
    MEMORY[0x2743C8040](v42, -1, -1);
  }

  (*(v36 + 8))(v29, v35);
}

Swift::Int __swiftcall VCSettings.removeAllVocabularyEntriesForAllLocales()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F50, &qword_2723FFCE8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v20 - v5);
  v7 = sub_2723FE434();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280893E18 != -1)
  {
    swift_once();
  }

  v12 = off_280894260;
  if (!*(off_280894260 + 2))
  {
    __break(1u);
    goto LABEL_10;
  }

  v13 = sub_2723E4FAC(8);
  if ((v14 & 1) == 0)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_8;
  }

  sub_2723D9360(v12[7] + *(v3 + 72) * v13, v6, &qword_280893F50, &qword_2723FFCE8);

  (*(v8 + 32))(v11, v6 + *(v2 + 48), v7);
  v15 = sub_2723FE424();
  v16 = sub_2723FE8A4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_2723CB000, v15, v16, "VCSettings.removeAllVocabularyEntriesForAllLocales", v17, 2u);
    MEMORY[0x2743C8040](v17, -1, -1);
  }

  (*(v8 + 8))(v11, v7);
  sub_2723DF718(v1);
  v1 = v18;
  if (qword_280893DC8 != -1)
  {
    goto LABEL_11;
  }

LABEL_8:
  _s12VoiceControl10VCSettingsC32triggerVocabularySyncIfNecessaryyyF_0();
  return v1;
}

uint64_t VCSettings.setPronunciations(pronunciations:for:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v158 = a1;
  v159 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893EB0, &unk_2723FFC80);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v161 = &v136 - v6;
  v7 = sub_2723FE294();
  v155 = *(v7 - 8);
  v156 = v7;
  v8 = *(v155 + 64);
  MEMORY[0x28223BE20](v7);
  v160 = &v136 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2723FE2D4();
  v151 = *(v10 - 8);
  v152 = v10;
  v11 = *(v151 + 64);
  MEMORY[0x28223BE20](v10);
  v150 = (&v136 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_2723FE344();
  v148 = *(v13 - 8);
  v149 = v13;
  v14 = *(v148 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v136 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v142 = (&v136 - v18);
  v157 = type metadata accessor for VCVocabularyEntry();
  v145 = *(v157 - 1);
  v19 = *(v145 + 64);
  v20 = MEMORY[0x28223BE20](v157);
  v144 = &v136 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v154 = &v136 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v146 = &v136 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v136 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v136 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F50, &qword_2723FFCE8);
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  v35 = (&v136 - v34);
  v147 = sub_2723FE434();
  v36 = *(v147 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v147);
  v39 = &v136 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280893E18 != -1)
  {
    swift_once();
  }

  v40 = off_280894260;
  if (!*(off_280894260 + 2))
  {
    __break(1u);
    goto LABEL_38;
  }

  v41 = sub_2723E4FAC(8);
  if ((v42 & 1) == 0)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    v3 = sub_2723E4504(0, v3[2] + 1, 1, v3);
    goto LABEL_32;
  }

  sub_2723D9360(v40[7] + *(v32 + 72) * v41, v35, &qword_280893F50, &qword_2723FFCE8);

  v43 = v147;
  (*(v36 + 32))(v39, v35 + *(v31 + 48), v147);
  v44 = v159;
  sub_2723D5C78(v159, v30);
  sub_2723D5C78(v44, v28);

  v45 = sub_2723FE424();
  v46 = sub_2723FE8A4();

  v47 = os_log_type_enabled(v45, v46);
  v153 = v3;
  v143 = v17;
  if (v47)
  {
    LODWORD(v141) = v46;
    v48 = swift_slowAlloc();
    v140 = swift_slowAlloc();
    v162 = v140;
    *v48 = 141559043;
    *(v48 + 4) = 1752392040;
    *(v48 + 12) = 2085;
    v49 = v157;
    v50 = &v30[v157[5]];
    v51 = *v50;
    v52 = v50[1];

    sub_2723E5038(v30);
    v53 = sub_2723E4A00(v51, v52, &v162);

    *(v48 + 14) = v53;
    *(v48 + 22) = 2082;
    v54 = &v28[v49[8]];
    if (*(v54 + 1))
    {
      v55 = *v54;
      v56 = v150;
      v57 = v151;
      v58 = v152;
      (*(v151 + 104))(v150, *MEMORY[0x277CC9668], v152);
      v59 = sub_2723FE2C4();
      v61 = v60;
      v62 = v56;
      v63 = MEMORY[0x277D837D0];
      (*(v57 + 8))(v62, v58);
      v167 = v59;
      v168 = v61;
      v165 = 45;
      v166 = 0xE100000000000000;
      v163 = 95;
      v164 = 0xE100000000000000;
      v134 = sub_2723CD24C();
      v135 = v134;
      v132 = v63;
      v133 = v134;
      sub_2723FE984();

      v64 = v142;
      v65 = sub_2723FE2A4();
    }

    else
    {
      if (qword_280893DC8 != -1)
      {
        swift_once();
      }

      v139 = qword_280894080;
      v138 = sub_2723EC124();
      v68 = v67;
      if (qword_280893E00 != -1)
      {
        swift_once();
      }

      v137 = qword_280894088;
      v69 = [objc_opt_self() sharedPreferences];
      v70 = [v69 languageCode];

      if (v70)
      {
        v71 = sub_2723FE5B4();
        v73 = v72;
      }

      else
      {
        v71 = 0;
        v73 = 0;
      }

      sub_2723FE2F4();
      v64 = v142;
      sub_2723EB6EC(v137, v138, v68, v71, v73, v142);
    }

    v74 = MEMORY[0x2743C6F10](v65);
    v76 = v75;
    (*(v148 + 8))(v64, v149);
    sub_2723E5038(v28);
    v77 = sub_2723E4A00(v74, v76, &v162);

    *(v48 + 24) = v77;
    *(v48 + 32) = 2160;
    *(v48 + 34) = 1752392040;
    *(v48 + 42) = 2085;
    v78 = MEMORY[0x2743C7380](v158, MEMORY[0x277D837D0]);
    v80 = sub_2723E4A00(v78, v79, &v162);

    *(v48 + 44) = v80;
    _os_log_impl(&dword_2723CB000, v45, v141, "VCSettings.setPronunciations textOfEntry: %{sensitive,mask.hash}s, localeOfEntry: %{public}s, pronunciations: %{sensitive,mask.hash}s", v48, 0x34u);
    v81 = v140;
    swift_arrayDestroy();
    MEMORY[0x2743C8040](v81, -1, -1);
    MEMORY[0x2743C8040](v48, -1, -1);

    v66 = (*(v36 + 8))(v39, v147);
  }

  else
  {

    sub_2723E5038(v30);
    (*(v36 + 8))(v39, v43);
    v66 = sub_2723E5038(v28);
  }

  v82 = v156;
  MEMORY[0x28223BE20](v66);
  v83 = v159;
  v134 = v159;
  VCSettings._purgeVocabularyEntries(shouldPurge:)(sub_2723E6300, &v132);
  v84 = v155;
  v85 = v155 + 16;
  v142 = *(v155 + 16);
  (v142)(v160, v83, v82);
  v86 = v161;
  sub_2723FE284();
  v141 = *(v84 + 56);
  v141(v86, 0, 1, v82);
  v87 = (v83 + v157[8]);
  v88 = v87[1];
  v89 = v150;
  v90 = v151;
  v147 = v85;
  v140 = v84 + 56;
  if (v88)
  {
    v91 = *v87;
    v92 = v82;
    v93 = *MEMORY[0x277CC9668];
    v94 = v152;
    (*(v151 + 104))(v150, v93, v152);
    v95 = sub_2723FE2C4();
    v97 = v96;
    (*(v90 + 8))(v89, v94);
    v167 = v95;
    v168 = v97;
    v165 = 45;
    v166 = 0xE100000000000000;
    v163 = 95;
    v164 = 0xE100000000000000;
    v134 = sub_2723CD24C();
    v135 = v134;
    v133 = v134;
    v98 = MEMORY[0x277D837D0];
    v132 = MEMORY[0x277D837D0];
    sub_2723FE984();

    v99 = v143;
    sub_2723FE2A4();
  }

  else
  {
    if (qword_280893DC8 != -1)
    {
      swift_once();
    }

    v100 = sub_2723EC124();
    v102 = v101;
    if (qword_280893E00 != -1)
    {
      swift_once();
    }

    v103 = qword_280894088;
    v104 = [objc_opt_self() sharedPreferences];
    v105 = [v104 languageCode];

    if (v105)
    {
      v106 = sub_2723FE5B4();
      v108 = v107;
    }

    else
    {
      v106 = 0;
      v108 = 0;
    }

    sub_2723FE2F4();
    v99 = v143;
    sub_2723EB6EC(v103, v100, v102, v106, v108, v143);

    v93 = *MEMORY[0x277CC9668];
    v92 = v156;
    v89 = v150;
    v90 = v151;
    v98 = MEMORY[0x277D837D0];
  }

  v109 = v157;
  v110 = v157[5];
  v151 = v157[6];
  v111 = (v159 + v110);
  v112 = v111[1];
  v159 = *v111;
  v139 = v112;
  v113 = v157[7];
  v114 = v154;
  v141(&v154[v113], 1, 1, v92);
  v115 = v109[8];
  v114[v109[9]] = 2;
  v150 = &v114[v115];
  *&v114[v109[10]] = xmmword_2723FFC50;
  (v142)(v114, v160, v92);

  sub_2723E50B8(v161, &v114[v113]);
  sub_2723FE2B4();
  v116 = v152;
  (*(v90 + 104))(v89, v93, v152);
  v117 = sub_2723FE2C4();
  v119 = v118;

  (*(v90 + 8))(v89, v116);
  v167 = v117;
  v168 = v119;
  v165 = 45;
  v166 = 0xE100000000000000;
  v163 = 95;
  v164 = 0xE100000000000000;
  v134 = sub_2723CD24C();
  v135 = v134;
  v132 = v98;
  v133 = v134;
  v120 = sub_2723FE984();
  v122 = v121;

  (*(v148 + 8))(v99, v149);
  sub_2723D9188(v161, &qword_280893EB0, &unk_2723FFC80);
  (*(v155 + 8))(v160, v156);
  v123 = v150;
  *v150 = v120;
  v123[1] = v122;
  v124 = &v114[v109[5]];
  v125 = v158;
  v126 = v139;
  *v124 = v159;
  *(v124 + 1) = v126;
  if (*(v125 + 16))
  {
  }

  else
  {
    v127 = 0;
  }

  v17 = v146;
  v28 = v144;
  v128 = v154;
  *&v154[v151] = v127;
  sub_2723D8978(v128, v17);
  sub_2723D5C78(v17, v28);
  v3 = sub_2723E6C70();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_32:
  v130 = v3[2];
  v129 = v3[3];
  if (v130 >= v129 >> 1)
  {
    v3 = sub_2723E4504(v129 > 1, v130 + 1, 1, v3);
  }

  v3[2] = v130 + 1;
  sub_2723D8978(v28, v3 + ((*(v145 + 80) + 32) & ~*(v145 + 80)) + *(v145 + 72) * v130);
  sub_2723E7238(v3);
  if (qword_280893DC8 != -1)
  {
    swift_once();
  }

  _s12VoiceControl10VCSettingsC32triggerVocabularySyncIfNecessaryyyF_0();
  return sub_2723E5038(v17);
}