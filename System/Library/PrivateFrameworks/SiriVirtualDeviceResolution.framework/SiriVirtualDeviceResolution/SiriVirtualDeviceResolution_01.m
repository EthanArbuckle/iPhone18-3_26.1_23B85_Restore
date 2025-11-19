id CapabilityDescription.copy(with:)@<X0>(void *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  v4 = ObjectType;
  if (*(v1 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_valueSet))
  {
    v5 = v1 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_key;
    v6 = *(v1 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_key);
    v7 = *(v5 + 8);
    objc_allocWithZone(ObjectType);
  }

  else
  {
    OUTLINED_FUNCTION_3_3(OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_valueRange);
    if ((v9 & 1) == 0)
    {
      v16 = *v8;
      v15 = v8[1];
      v17 = v1 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_key;
      v18 = *(v1 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_key);
      v19 = *(v17 + 8);
      objc_allocWithZone(v4);

      result = CapabilityDescription.init(key:valueRange:)();
      goto LABEL_6;
    }

    v10 = v1 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_key;
    v11 = *(v1 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_key);
    v12 = *(v10 + 8);

    sub_2698E4D94(MEMORY[0x277D84F90]);
    v13 = objc_allocWithZone(v4);
  }

  result = CapabilityDescription.init(key:valueSet:)();
LABEL_6:
  a1[3] = v4;
  *a1 = result;
  return result;
}

void sub_2698E4D94(uint64_t a1)
{
  v2 = sub_2698CEAE8();
  v3 = sub_2698D23FC(0, &qword_28131C3F0, 0x277D82BB8);
  v4 = sub_2698E47B8();
  v8[1] = MEMORY[0x26D648020](v2, v3, v4);
  v5 = sub_2698D2A38(a1);
  for (i = 0; ; ++i)
  {
    if (v5 == i)
    {

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x26D6482B0](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v7 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_2698FEC8C(v8, v7);
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

uint64_t CapabilityDescription.description.getter()
{
  if (*(v0 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_valueSet))
  {
    sub_2698D23FC(0, &qword_28131C3F0, 0x277D82BB8);
    sub_2698E47B8();
    v1 = sub_269903ABC();
LABEL_6:
    v6 = v1;
    v5 = v2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_3_3(OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_valueRange);
  if ((v4 & 1) == 0)
  {
    v7 = *v3;
    v8 = v3[1];
    v1 = sub_2698E513C();
    goto LABEL_6;
  }

  v5 = 0xE500000000000000;
  v6 = 0x3E6C696E3CLL;
LABEL_7:
  v10 = *(v0 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_key);
  v11 = *(v0 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_key + 8);

  MEMORY[0x26D647ED0](58, 0xE100000000000000);
  MEMORY[0x26D647ED0](v6, v5);

  return v10;
}

id CapabilityDescription.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CapabilityDescription.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2698E513C()
{
  sub_269903DDC();
  MEMORY[0x26D647ED0](3026478, 0xE300000000000000);
  sub_269903DDC();
  return 0;
}

uint64_t OUTLINED_FUNCTION_4_3()
{

  return sub_269903BCC();
}

uint64_t OUTLINED_FUNCTION_7_2()
{

  return sub_2699038FC();
}

unint64_t CapabilityKey.rawValue.getter()
{
  result = 0x626170614358554DLL;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000017;
      break;
    case 2:
      OUTLINED_FUNCTION_3_4();
      result = v3 - 4;
      break;
    case 3:
      OUTLINED_FUNCTION_3_4();
      result = v4 + 1;
      break;
    case 4:
      OUTLINED_FUNCTION_3_4();
      result = v2 - 6;
      break;
    case 5:
      OUTLINED_FUNCTION_3_4();
      result = v6 - 1;
      break;
    case 6:
      OUTLINED_FUNCTION_3_4();
      result = v7 + 12;
      break;
    case 7:
    case 9:
      OUTLINED_FUNCTION_3_4();
      result = v5 + 3;
      break;
    case 8:
      return result;
    case 0xA:
      OUTLINED_FUNCTION_3_4();
      result = v8 + 2;
      break;
    case 0xB:
      result = 0x6669636570736E55;
      break;
    default:
      result = 0xD000000000000017;
      break;
  }

  return result;
}

SiriVirtualDeviceResolution::CapabilityKey_optional __swiftcall CapabilityKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_269903F0C();

  v5 = 12;
  if (v3 < 0xC)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2698E54F4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_2698FE070();
}

unint64_t sub_2698E5524@<X0>(unint64_t *a1@<X8>)
{
  result = CapabilityKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2698E560C()
{
  v1 = *(v0 + 16);
  if (*(v1 + 16))
  {

    v2 = sub_2698D2184(4);
    if (v3)
    {
      v4 = *(*(v1 + 56) + 8 * v2);
      swift_unknownObjectRetain();

      type metadata accessor for SpeakerCapability();
      result = swift_dynamicCastClass();
      if (result)
      {
        return result;
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return 0;
}

void (*sub_2698E57B0(char a1, void (*a2)(void), void (*a3)(void)))(void)
{
  v4 = *(v3 + 16);
  if (*(v4 + 16))
  {

    v8 = sub_2698D2184(a1);
    if (v9)
    {
      v10 = *(*(v4 + 56) + 8 * v8);
      swift_unknownObjectRetain();

      a2(0);
      if (swift_dynamicCastClass())
      {
        a3();
        OUTLINED_FUNCTION_1_9();
        swift_unknownObjectRelease();
        return a3;
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return 0;
}

uint64_t Capabilities.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t Capabilities.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t CapabilitiesBuilder.audioPlaybackSupportStatus.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t CapabilitiesBuilder.audioPlaybackSupportStatus.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t CapabilitiesBuilder.videoPlaybackSupportStatus.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t CapabilitiesBuilder.videoPlaybackSupportStatus.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t CapabilitiesBuilder.appLaunchSupportStatus.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t CapabilitiesBuilder.appLaunchSupportStatus.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t CapabilitiesBuilder.seymourRoutingSupportStatus.getter()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

uint64_t CapabilitiesBuilder.seymourRoutingSupportStatus.setter(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

uint64_t CapabilitiesBuilder.speakerSupportStatusAndQuality.getter()
{
  result = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  return result;
}

uint64_t CapabilitiesBuilder.speakerSupportStatusAndQuality.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 64) = result;
  *(v3 + 72) = a2;
  *(v3 + 80) = a3 & 1;
  return result;
}

uint64_t CapabilitiesBuilder.voiceTriggerSupportStatus.getter()
{
  result = *(v0 + 88);
  v2 = *(v0 + 96);
  return result;
}

uint64_t CapabilitiesBuilder.voiceTriggerSupportStatus.setter(uint64_t result, char a2)
{
  *(v2 + 88) = result;
  *(v2 + 96) = a2 & 1;
  return result;
}

uint64_t CapabilitiesBuilder.profileSwitchingSupportStatus.getter()
{
  result = *(v0 + 104);
  v2 = *(v0 + 112);
  return result;
}

uint64_t CapabilitiesBuilder.profileSwitchingSupportStatus.setter(uint64_t result, char a2)
{
  *(v2 + 104) = result;
  *(v2 + 112) = a2 & 1;
  return result;
}

uint64_t CapabilitiesBuilder.muxSupportStatus.getter()
{
  result = *(v0 + 120);
  v2 = *(v0 + 128);
  return result;
}

uint64_t CapabilitiesBuilder.muxSupportStatus.setter(uint64_t result, char a2)
{
  *(v2 + 120) = result;
  *(v2 + 128) = a2 & 1;
  return result;
}

uint64_t CapabilitiesBuilder.customTimerIntentHandlingStatus.getter()
{
  result = *(v0 + 136);
  v2 = *(v0 + 144);
  return result;
}

uint64_t CapabilitiesBuilder.customTimerIntentHandlingStatus.setter(uint64_t result, char a2)
{
  *(v2 + 136) = result;
  *(v2 + 144) = a2 & 1;
  return result;
}

uint64_t CapabilitiesBuilder.assistantEnabledSupportStatus.getter()
{
  result = *(v0 + 152);
  v2 = *(v0 + 160);
  return result;
}

uint64_t CapabilitiesBuilder.assistantEnabledSupportStatus.setter(uint64_t result, char a2)
{
  *(v2 + 152) = result;
  *(v2 + 160) = a2 & 1;
  return result;
}

void CapabilitiesBuilder.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 1;
  *(a1 + 88) = 0;
  *(a1 + 96) = 1;
  *(a1 + 104) = 0;
  *(a1 + 112) = 1;
  *(a1 + 120) = 0;
  *(a1 + 128) = 1;
  *(a1 + 136) = 0;
  *(a1 + 144) = 1;
  *(a1 + 152) = 0;
  *(a1 + 160) = 1;
}

uint64_t CapabilitiesBuilder.build()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v52 = *(v0 + 72);
  v53 = *(v0 + 64);
  v7 = *(v0 + 80);
  v8 = *(v0 + 96);
  v54 = *(v0 + 88);
  v55 = *(v0 + 104);
  v59 = *(v0 + 112);
  v60 = *(v0 + 128);
  v56 = *(v0 + 120);
  v57 = *(v0 + 136);
  v58 = *(v0 + 152);
  v61 = *(v0 + 144);
  v62 = *(v0 + 160);
  v9 = MEMORY[0x277D84F98];
  if (*(v0 + 8))
  {
    if (*(v0 + 24))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v31 = *v0;
    v32 = objc_allocWithZone(type metadata accessor for AudioPlaybackCapability());
    AudioPlaybackCapability.init(status:)(v31);
    swift_isUniquelyReferenced_nonNull_native();
    v33 = OUTLINED_FUNCTION_2_5();
    sub_2698E5ECC(v33, 0, v34, v35);
    v9 = v63;
    if (v2)
    {
LABEL_3:
      if (v4)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  v36 = objc_allocWithZone(type metadata accessor for VideoPlaybackCapability());
  VideoPlaybackCapability.init(status:)(v1);
  swift_isUniquelyReferenced_nonNull_native();
  v37 = OUTLINED_FUNCTION_2_5();
  sub_2698E5ECC(v37, 1, v38, v39);
  v9 = v63;
  if (v4)
  {
LABEL_4:
    if (v6)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  v40 = objc_allocWithZone(type metadata accessor for AppLaunchCapability());
  AppLaunchCapability.init(status:)(v3);
  OUTLINED_FUNCTION_1_9();
  swift_isUniquelyReferenced_nonNull_native();
  v41 = OUTLINED_FUNCTION_0_9();
  sub_2698E5ECC(v41, 2, v42, v43);
  v9 = v63;
  if (v6)
  {
LABEL_5:
    if (v7)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  v44 = objc_allocWithZone(type metadata accessor for SeymourRoutingCapability());
  SeymourRoutingCapability.init(status:)(v5);
  OUTLINED_FUNCTION_1_9();
  swift_isUniquelyReferenced_nonNull_native();
  v45 = OUTLINED_FUNCTION_0_9();
  sub_2698E5ECC(v45, 3, v46, v47);
  v9 = v63;
  if (v7)
  {
LABEL_6:
    if (v8)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_21:
  v48 = objc_allocWithZone(type metadata accessor for SpeakerCapability());
  SpeakerCapability.init(status:qualityScore:)(v53, v52);
  OUTLINED_FUNCTION_1_9();
  swift_isUniquelyReferenced_nonNull_native();
  v49 = OUTLINED_FUNCTION_0_9();
  sub_2698E5ECC(v49, 4, v50, v51);
  v9 = v63;
  if ((v8 & 1) == 0)
  {
LABEL_7:
    v10 = objc_allocWithZone(type metadata accessor for VoiceTriggerCapability());
    VoiceTriggerCapability.init(status:)(v54);
    OUTLINED_FUNCTION_1_9();
    swift_isUniquelyReferenced_nonNull_native();
    v11 = OUTLINED_FUNCTION_0_9();
    sub_2698E5ECC(v11, 5, v12, v13);
    v9 = v63;
  }

LABEL_8:
  if ((v59 & 1) == 0)
  {
    v14 = objc_allocWithZone(type metadata accessor for ProfileSwitchingCapability());
    ProfileSwitchingCapability.init(status:)(v55);
    OUTLINED_FUNCTION_1_9();
    swift_isUniquelyReferenced_nonNull_native();
    v15 = OUTLINED_FUNCTION_0_9();
    sub_2698E5ECC(v15, 7, v16, v17);
    v9 = v63;
  }

  if ((v60 & 1) == 0)
  {
    v18 = objc_allocWithZone(type metadata accessor for MUXCapability());
    MUXCapability.init(status:)(v56);
    OUTLINED_FUNCTION_1_9();
    swift_isUniquelyReferenced_nonNull_native();
    v19 = OUTLINED_FUNCTION_0_9();
    sub_2698E5ECC(v19, 8, v20, v21);
    v9 = v63;
  }

  if ((v61 & 1) == 0)
  {
    v22 = objc_allocWithZone(type metadata accessor for CustomTimerIntentHandlingCapability());
    CustomTimerIntentHandlingCapability.init(status:)(v57);
    OUTLINED_FUNCTION_1_9();
    swift_isUniquelyReferenced_nonNull_native();
    v23 = OUTLINED_FUNCTION_0_9();
    sub_2698E5ECC(v23, 10, v24, v25);
    v9 = v63;
  }

  if ((v62 & 1) == 0)
  {
    v26 = objc_allocWithZone(type metadata accessor for AssistantEnabledCapability());
    AssistantEnabledCapability.init(status:)(v58);
    OUTLINED_FUNCTION_1_9();
    swift_isUniquelyReferenced_nonNull_native();
    v27 = OUTLINED_FUNCTION_0_9();
    sub_2698E5ECC(v27, 9, v28, v29);
    v9 = v63;
  }

  type metadata accessor for Capabilities();
  result = swift_allocObject();
  *(result + 16) = v9;
  return result;
}

unint64_t sub_2698E5ECC(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v7 = *a4;
  v8 = sub_2698D2184(a2);
  if (__OFADD__(v7[2], (v9 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = v8;
  v11 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E768, &qword_2699072C8);
  if ((sub_269903DEC() & 1) == 0)
  {
    goto LABEL_5;
  }

  v12 = *a4;
  v13 = sub_2698D2184(a2);
  if ((v11 & 1) != (v14 & 1))
  {
LABEL_11:
    result = sub_269903FEC();
    __break(1u);
    return result;
  }

  v10 = v13;
LABEL_5:
  v15 = *a4;
  if ((v11 & 1) == 0)
  {
    return sub_2698E63D4(v10, a2, a1, v15);
  }

  v16 = v15[7];
  v17 = *(v16 + 8 * v10);
  *(v16 + 8 * v10) = a1;

  return swift_unknownObjectRelease();
}

unint64_t sub_2698E5FE8()
{
  result = qword_28033E760;
  if (!qword_28033E760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033E760);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CapabilityKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF5)
  {
    if (a2 + 11 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 11) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 12;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v5 = v6 - 12;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CapabilityKey(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_2698E634C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 161))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2698E636C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 160) = 0;
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

  *(result + 161) = v3;
  return result;
}

unint64_t sub_2698E63D4(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_2698E64A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

__n128 DeviceUnitDescription.room.setter(__n128 *a1)
{
  OUTLINED_FUNCTION_1_10(a1);
  sub_2698E64F8(v2[1], v2[2], v2[3]);
  result = v4;
  *(v2 + 1) = v4;
  v2[3] = v1;
  return result;
}

uint64_t sub_2698E64F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

__n128 DeviceUnitDescription.zone.setter(__n128 *a1)
{
  OUTLINED_FUNCTION_1_10(a1);
  sub_2698E64F8(v2[4], v2[5], v2[6]);
  result = v4;
  *(v2 + 2) = v4;
  v2[6] = v1;
  return result;
}

__n128 DeviceUnitDescription.home.setter(__n128 *a1)
{
  OUTLINED_FUNCTION_1_10(a1);
  sub_2698E64F8(v2[7], v2[8], v2[9]);
  result = v4;
  *(v2 + 7) = v4;
  v2[9] = v1;
  return result;
}

void DeviceUnitDescription.init()(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 1;
  a1[4] = 0;
  a1[5] = 0;
  a1[6] = 1;
  a1[7] = 0;
  a1[8] = 0;
  a1[9] = 1;
}

uint64_t LocationDescription.name.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t LocationDescription.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

SiriVirtualDeviceResolution::LocationDescription __swiftcall LocationDescription.init()()
{
  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 16) = 0;
  return result;
}

uint64_t get_enum_tag_for_layout_string_27SiriVirtualDeviceResolution19LocationDescriptionVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2698E6700(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFD && *(a1 + 80))
    {
      v2 = *a1 + 2147483645;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v4 = v3 - 1;
      if (v4 < 0)
      {
        v5 = -1;
      }

      else
      {
        v5 = v4;
      }

      v6 = v5 - 1;
      if (v4 < 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v6;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2698E6760(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2698E67E8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2698E683C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
  return sub_2698E64A4(a1, a2, a3);
}

__n128 OUTLINED_FUNCTION_1_10(__n128 *a1)
{
  result = *a1;
  v2 = a1[1].n128_u64[0];
  return result;
}

unint64_t CapabilitySupportStatus.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t sub_2698E68E0()
{
  result = qword_28033E770;
  if (!qword_28033E770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033E770);
  }

  return result;
}

unint64_t sub_2698E6934@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = CapabilitySupportStatus.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void sub_2698E6978(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

id sub_2698E69E0()
{
  result = [objc_allocWithZone(type metadata accessor for DeviceResolutionService()) init];
  qword_28131C610 = result;
  return result;
}

id static DeviceResolutionService.sharedService.getter()
{
  if (qword_28131C600 != -1)
  {
    swift_once();
  }

  v1 = qword_28131C610;

  return v1;
}

void sub_2698E6A70()
{
  type metadata accessor for DeviceResolutionAnalyticsImpl();
  swift_allocObject();
  sub_2698D99E8();
  qword_28131C5D8 = v0;
}

uint64_t static DeviceResolutionService.sharedAnalytics.getter()
{
  if (qword_28131C5C8 != -1)
  {
    swift_once();
  }
}

id sub_2698E6B0C()
{
  v1 = *&v0[OBJC_IVAR____TtC27SiriVirtualDeviceResolution23DeviceResolutionService__xpcConnection];
  v2 = v1;
  if (!v1)
  {
    v3 = [objc_opt_self() currentContext];
    v4 = objc_opt_self();
    v5 = [v4 serviceName];
    if (!v5)
    {
      sub_26990390C();
      v5 = sub_2699038FC();
    }

    v2 = [v3 createXPCConnectionWithMachServiceName:v5 options:0];

    if (v2)
    {
      v6 = v2;
      v7 = [v4 xpcInterface];
      [v6 setRemoteObjectInterface_];

      OUTLINED_FUNCTION_49();
      v8 = swift_allocObject();
      *(v8 + 16) = v0;
      v22 = sub_2698F8BF4;
      v23 = v8;
      v18 = MEMORY[0x277D85DD0];
      v19 = 1107296256;
      v20 = sub_2698D670C;
      v21 = &block_descriptor_84;
      v9 = _Block_copy(&v18);
      v10 = v6;
      v11 = v0;

      [v10 setInvalidationHandler_];
      _Block_release(v9);

      OUTLINED_FUNCTION_49();
      v12 = swift_allocObject();
      *(v12 + 16) = v11;
      v22 = sub_2698F8C3C;
      v23 = v12;
      v18 = MEMORY[0x277D85DD0];
      v19 = 1107296256;
      v20 = sub_2698D670C;
      v21 = &block_descriptor_90;
      v13 = _Block_copy(&v18);
      v14 = v10;
      v15 = v11;

      [v14 setInterruptionHandler_];
      _Block_release(v13);

      [v14 resume];
    }
  }

  v16 = v1;
  return v2;
}

void sub_2698E6DB0()
{
  OUTLINED_FUNCTION_15();
  v3 = v2;
  v40 = v4;
  v39 = v5;
  v7 = v6;
  v8 = sub_26990382C();
  v9 = OUTLINED_FUNCTION_4_4(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_8_2();
  v12 = sub_26990384C();
  v13 = OUTLINED_FUNCTION_3_0(v12);
  v41 = v14;
  v42 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_9_2();
  v17 = sub_2699037FC();
  v18 = OUTLINED_FUNCTION_3_0(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_22();
  if (qword_28131C480 != -1)
  {
    OUTLINED_FUNCTION_0_11();
    swift_once();
  }

  v23 = __swift_project_value_buffer(v17, qword_28131C988);
  (*(v20 + 16))(v0, v23, v17);
  v24 = sub_2699037EC();
  v25 = sub_269903B0C();
  if (os_log_type_enabled(v24, v25))
  {
    OUTLINED_FUNCTION_36_0();
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_2698CD000, v24, v25, v39, v26, 2u);
    OUTLINED_FUNCTION_27_0();
    MEMORY[0x26D648C80]();
  }

  (*(v20 + 8))(v0, v17);
  v27 = *&v7[OBJC_IVAR____TtC27SiriVirtualDeviceResolution23DeviceResolutionService_queue];
  OUTLINED_FUNCTION_49();
  v28 = swift_allocObject();
  *(v28 + 16) = v7;
  v43[4] = v40;
  v43[5] = v28;
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_3(COERCE_DOUBLE(1107296256));
  v43[2] = v29;
  v43[3] = v3;
  v30 = _Block_copy(v43);
  v31 = v7;
  sub_26990383C();
  OUTLINED_FUNCTION_5_4();
  sub_2698F8B5C(v32, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E410, &qword_2699074C0);
  OUTLINED_FUNCTION_1_11();
  sub_2698F94F0(v34, v35);
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_34_0();
  sub_269903C5C();
  v36 = OUTLINED_FUNCTION_11();
  MEMORY[0x26D6480A0](v36);
  _Block_release(v30);
  v37 = OUTLINED_FUNCTION_12();
  v38(v37);
  (*(v41 + 8))(v1, v42);

  OUTLINED_FUNCTION_17();
}

void sub_2698E710C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC27SiriVirtualDeviceResolution23DeviceResolutionService__xpcConnection;
  [*(a1 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution23DeviceResolutionService__xpcConnection) invalidate];
  v3 = *(a1 + v2);
  *(a1 + v2) = 0;
}

uint64_t DeviceResolutionService.XPCError.hashValue.getter()
{
  sub_26990404C();
  MEMORY[0x26D6485B0](0);
  return sub_26990408C();
}

uint64_t sub_2698E71FC()
{
  sub_26990404C();
  MEMORY[0x26D6485B0](0);
  return sub_26990408C();
}

id sub_2698E724C()
{
  v1 = v0;
  v18 = sub_269903B3C();
  v2 = *(v18 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v18);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_269903B2C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v8 = sub_26990384C();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = OBJC_IVAR____TtC27SiriVirtualDeviceResolution23DeviceResolutionService_homeManagerReadyGroup;
  *&v0[v10] = dispatch_group_create();
  v17 = OBJC_IVAR____TtC27SiriVirtualDeviceResolution23DeviceResolutionService_queue;
  v11 = sub_2698D23FC(0, &qword_28131C430, 0x277D85C78);
  v16[1] = &unk_269907670;
  v16[2] = v11;
  sub_26990383C();
  v20 = MEMORY[0x277D84F90];
  sub_2698F8B5C(&qword_28131C438, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E500, &qword_269906818);
  sub_2698F94F0(&unk_28131C458, &unk_28033E500);
  sub_269903C5C();
  (*(v2 + 104))(v5, *MEMORY[0x277D85260], v18);
  *&v0[v17] = sub_269903B5C();
  *&v0[OBJC_IVAR____TtC27SiriVirtualDeviceResolution23DeviceResolutionService_homeManager] = 0;
  v0[OBJC_IVAR____TtC27SiriVirtualDeviceResolution23DeviceResolutionService_initialLoadDone] = 0;
  v12 = OBJC_IVAR____TtC27SiriVirtualDeviceResolution23DeviceResolutionService_endpointUUID;
  v13 = sub_2699037DC();
  __swift_storeEnumTagSinglePayload(&v1[v12], 1, 1, v13);
  v1[OBJC_IVAR____TtC27SiriVirtualDeviceResolution23DeviceResolutionService_waitingOnHomeManagerDataSync] = 0;
  *&v1[OBJC_IVAR____TtC27SiriVirtualDeviceResolution23DeviceResolutionService__xpcConnection] = 0;
  v14 = type metadata accessor for DeviceResolutionService();
  v19.receiver = v1;
  v19.super_class = v14;
  return objc_msgSendSuper2(&v19, sel_init);
}

void sub_2698E7574()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_55();
  v5 = sub_26990382C();
  v6 = OUTLINED_FUNCTION_4_4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_8_2();
  v27 = sub_26990384C();
  v11 = OUTLINED_FUNCTION_3_0(v27);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_9_2();
  v26 = *&v1[OBJC_IVAR____TtC27SiriVirtualDeviceResolution23DeviceResolutionService_queue];
  v16 = swift_allocObject();
  *(v16 + 16) = v1;
  *(v16 + 24) = v4;
  v28[4] = sub_2698E77E4;
  v28[5] = v16;
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_3(COERCE_DOUBLE(1107296256));
  v28[2] = v17;
  v28[3] = &block_descriptor_0;
  v18 = _Block_copy(v28);
  v19 = v1;
  v20 = v4;
  sub_26990383C();
  OUTLINED_FUNCTION_5_4();
  sub_2698F8B5C(v21, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E410, &qword_2699074C0);
  OUTLINED_FUNCTION_1_11();
  sub_2698F94F0(v23, v24);
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_34_0();
  sub_269903C5C();
  v25 = OUTLINED_FUNCTION_11();
  MEMORY[0x26D6480A0](v25);
  _Block_release(v18);
  (*(v8 + 8))(v2, v0);
  (*(v13 + 8))(v3, v27);

  OUTLINED_FUNCTION_17();
}

void sub_2698E779C(uint64_t a1, void *a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution23DeviceResolutionService_homeManager);
  *(a1 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution23DeviceResolutionService_homeManager) = a2;
  v2 = a2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_2698E7804()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_55();
  v3 = sub_26990382C();
  v4 = OUTLINED_FUNCTION_4_4(v3);
  v34 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_8_2();
  v8 = sub_26990384C();
  v9 = OUTLINED_FUNCTION_3_0(v8);
  v32 = v10;
  v33 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_9_2();
  v13 = sub_2699037DC();
  v14 = OUTLINED_FUNCTION_3_0(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  v31[1] = *&v0[OBJC_IVAR____TtC27SiriVirtualDeviceResolution23DeviceResolutionService_queue];
  (*(v16 + 16))(v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v2, v13);
  v19 = (*(v16 + 80) + 24) & ~*(v16 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v0;
  (*(v16 + 32))(v20 + v19, v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
  v36[4] = sub_2698E7BD8;
  v36[5] = v20;
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_3(COERCE_DOUBLE(1107296256));
  v36[2] = v21;
  v36[3] = &block_descriptor_6_0;
  v22 = _Block_copy(v36);
  v23 = v0;
  sub_26990383C();
  v35 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_5_4();
  sub_2698F8B5C(v24, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E410, &qword_2699074C0);
  OUTLINED_FUNCTION_1_11();
  sub_2698F94F0(v26, v27);
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_34_0();
  sub_269903C5C();
  v28 = OUTLINED_FUNCTION_11();
  MEMORY[0x26D6480A0](v28);
  _Block_release(v22);
  v29 = OUTLINED_FUNCTION_12();
  v30(v29);
  (*(v32 + 8))(v1, v33);

  OUTLINED_FUNCTION_17();
}

uint64_t sub_2698E7AD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E8B0, &qword_2699077A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  v8 = sub_2699037DC();
  (*(*(v8 - 8) + 16))(v7, a2, v8);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
  v9 = OBJC_IVAR____TtC27SiriVirtualDeviceResolution23DeviceResolutionService_endpointUUID;
  swift_beginAccess();
  sub_2698F9B04(v7, a1 + v9);
  return swift_endAccess();
}

uint64_t sub_2698E7BD8()
{
  v0 = sub_2699037DC();
  OUTLINED_FUNCTION_25_1(v0);
  v2 = *(v1 + 80);
  v3 = OUTLINED_FUNCTION_54();

  return sub_2698E7AD4(v3, v4);
}

uint64_t sub_2698E7C2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E790, &qword_2699074C8);
  v8 = OUTLINED_FUNCTION_25_1(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v17 - v11;
  v13 = sub_269903A8C();
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v3;
  v14[5] = a1;
  v14[6] = a2;
  v14[7] = a3;
  v15 = v3;

  sub_2698E81EC(0, 0, v12, &unk_2699074D8, v14);
}

uint64_t sub_2698E7D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  v8 = swift_task_alloc();
  v7[4] = v8;
  *v8 = v7;
  v8[1] = sub_2698E7DD0;

  return sub_2698E968C();
}

uint64_t sub_2698E7DD0()
{
  OUTLINED_FUNCTION_6_1();
  v3 = v2;
  OUTLINED_FUNCTION_23_1();
  v5 = v4;
  OUTLINED_FUNCTION_13_1();
  *v6 = v5;
  v8 = *(v7 + 32);
  v9 = *v1;
  OUTLINED_FUNCTION_11_1();
  *v10 = v9;
  *(v5 + 40) = v0;

  if (!v0)
  {
    *(v5 + 48) = v3;
  }

  OUTLINED_FUNCTION_14_1();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2698E7ED8()
{
  OUTLINED_FUNCTION_22_1();
  v1 = *(v0 + 24);
  (*(v0 + 16))(*(v0 + 48));

  OUTLINED_FUNCTION_26_0();

  return v2();
}

uint64_t sub_2698E7F44()
{
  OUTLINED_FUNCTION_9_1();
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  type metadata accessor for DeviceUnit();
  sub_2698D23FC(0, &qword_28033E890, 0x277CD1650);
  sub_2698F8B5C(&qword_28131C750, type metadata accessor for DeviceUnit);
  sub_2699038BC();
  v3();

  OUTLINED_FUNCTION_26_0();

  return v4();
}

uint64_t sub_2698E803C(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v8 = v1[6];
  v7 = v1[7];
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_7_1(v9);
  *v10 = v11;
  v10[1] = sub_2698E810C;

  return sub_2698E7D30(a1, v3, v4, v5, v6, v8, v7);
}

uint64_t sub_2698E810C()
{
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_23_1();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_11_1();
  *v4 = v3;

  OUTLINED_FUNCTION_26_0();

  return v5();
}

uint64_t sub_2698E81EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E790, &qword_2699074C8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v26 - v11;
  sub_2698F9914(a3, v26 - v11);
  v13 = sub_269903A8C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);

  if (EnumTagSinglePayload == 1)
  {
    sub_2698F9984(v12, &qword_28033E790);
  }

  else
  {
    sub_269903A7C();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_269903A4C();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_26990392C() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_2698F9984(a3, &qword_28033E790);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2698F9984(a3, &qword_28033E790);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_2698E84D4()
{
  OUTLINED_FUNCTION_6_1();
  v1 = *(v0 + 24);
  v2 = OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_40_0(v2);
  v3 = *(MEMORY[0x277D85A40] + 4);
  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E798, &qword_2699074E8);
  OUTLINED_FUNCTION_16_1();
  *v4 = v5;
  v4[1] = sub_2698E85AC;
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x2822008A0]();
}

uint64_t sub_2698E85AC()
{
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_23_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_1();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_11_1();
  *v8 = v7;
  *(v3 + 48) = v0;

  if (!v0)
  {
    v9 = *(v3 + 32);
  }

  OUTLINED_FUNCTION_47_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2698E86C8()
{
  OUTLINED_FUNCTION_22_1();
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_26_0();
  v3 = *(v0 + 48);

  return v2();
}

uint64_t sub_2698E8764(uint64_t a1, uint64_t a2)
{
  v3 = sub_2699037FC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E9F8, &qword_269907850);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - v11;
  v13 = sub_2698E6B0C();
  if (v13)
  {
    v14 = v13;
    v29 = v7;
    v30 = v4;
    v31 = v3;
    v28 = *(v9 + 16);
    v28(v12, a2, v8);
    v32 = a2;
    v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v16 = swift_allocObject();
    v27 = *(v9 + 32);
    v27(v16 + v15, v12, v8);
    v37 = sub_2698F9888;
    v38 = v16;
    aBlock = MEMORY[0x277D85DD0];
    v34 = 1107296256;
    v35 = sub_2698E6978;
    v36 = &block_descriptor_285;
    v17 = _Block_copy(&aBlock);

    v18 = [v14 remoteObjectProxyWithErrorHandler_];
    _Block_release(v17);

    sub_269903C3C();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E520, &unk_269907790);
    if (swift_dynamicCast())
    {
      v19 = aBlock;
      v28(v12, v32, v8);
      v20 = swift_allocObject();
      v27(v20 + v15, v12, v8);
      v37 = sub_2698F9910;
      v38 = v20;
      aBlock = MEMORY[0x277D85DD0];
      v34 = 1107296256;
      v35 = sub_2698E8C2C;
      v36 = &block_descriptor_291;
      v21 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();

      [v19 pairedCompanionDeviceWithCompletion_];
      _Block_release(v21);
      return swift_unknownObjectRelease_n();
    }

    v3 = v31;
    v7 = v29;
    v4 = v30;
  }

  if (qword_28131C480 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v3, qword_28131C988);
  (*(v4 + 16))(v7, v23, v3);
  v24 = sub_2699037EC();
  v25 = sub_269903B0C();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_2698CD000, v24, v25, "Failed to get remote object", v26, 2u);
    MEMORY[0x26D648C80](v26, -1, -1);
  }

  (*(v4 + 8))(v7, v3);
  sub_2698F8BA0();
  aBlock = swift_allocError();
  return sub_269903A5C();
}

uint64_t sub_2698E8C48()
{
  OUTLINED_FUNCTION_22_1();
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_40_0(v2);
  v3 = *(MEMORY[0x277D85A40] + 4);
  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E798, &qword_2699074E8);
  OUTLINED_FUNCTION_16_1();
  *v4 = v5;
  v4[1] = sub_2698E8D2C;
  OUTLINED_FUNCTION_14_1();

  return MEMORY[0x2822008A0]();
}

uint64_t sub_2698E8D2C()
{
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_23_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_1();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_11_1();
  *v8 = v7;
  *(v3 + 48) = v0;

  if (!v0)
  {
    v9 = *(v3 + 32);
  }

  OUTLINED_FUNCTION_47_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

void sub_2698E8E2C()
{
  OUTLINED_FUNCTION_15();
  v41 = v1;
  v38[1] = v2;
  v39 = v3;
  v5 = v4;
  v7 = v6;
  v8 = sub_26990382C();
  v9 = OUTLINED_FUNCTION_4_4(v8);
  v43 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_8_2();
  v42 = sub_26990384C();
  v13 = OUTLINED_FUNCTION_3_0(v42);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_9_2();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E9F8, &qword_269907850);
  v19 = OUTLINED_FUNCTION_3_0(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  v25 = v38 - v24;
  v40 = *&v5[OBJC_IVAR____TtC27SiriVirtualDeviceResolution23DeviceResolutionService_queue];
  (*(v21 + 16))(v38 - v24, v7, v18);
  v26 = (*(v21 + 80) + 24) & ~*(v21 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = v5;
  (*(v21 + 32))(v27 + v26, v25, v18);
  v45[4] = v39;
  v45[5] = v27;
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_3(COERCE_DOUBLE(1107296256));
  v45[2] = v28;
  v45[3] = v41;
  v29 = _Block_copy(v45);
  v30 = v5;
  sub_26990383C();
  v44 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_5_4();
  sub_2698F8B5C(v31, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E410, &qword_2699074C0);
  OUTLINED_FUNCTION_1_11();
  sub_2698F94F0(v33, v34);
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_34_0();
  sub_269903C5C();
  v35 = OUTLINED_FUNCTION_11();
  MEMORY[0x26D6480A0](v35);
  _Block_release(v29);
  v36 = OUTLINED_FUNCTION_12();
  v37(v36);
  (*(v15 + 8))(v0, v42);

  OUTLINED_FUNCTION_17();
}

uint64_t sub_2698E9148(uint64_t a1, uint64_t a2)
{
  v3 = sub_2699037FC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E9F8, &qword_269907850);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - v11;
  v13 = sub_2698E6B0C();
  if (v13)
  {
    v14 = v13;
    v29 = v7;
    v30 = v4;
    v31 = v3;
    v28 = *(v9 + 16);
    v28(v12, a2, v8);
    v32 = a2;
    v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v16 = swift_allocObject();
    v27 = *(v9 + 32);
    v27(v16 + v15, v12, v8);
    v37 = sub_2698F9CC8;
    v38 = v16;
    aBlock = MEMORY[0x277D85DD0];
    v34 = 1107296256;
    v35 = sub_2698E6978;
    v36 = &block_descriptor_267;
    v17 = _Block_copy(&aBlock);

    v18 = [v14 remoteObjectProxyWithErrorHandler_];
    _Block_release(v17);

    sub_269903C3C();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E520, &unk_269907790);
    if (swift_dynamicCast())
    {
      v19 = aBlock;
      v28(v12, v32, v8);
      v20 = swift_allocObject();
      v27(v20 + v15, v12, v8);
      v37 = sub_2698F9CCC;
      v38 = v20;
      aBlock = MEMORY[0x277D85DD0];
      v34 = 1107296256;
      v35 = sub_2698E8C2C;
      v36 = &block_descriptor_273;
      v21 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();

      [v19 meDeviceWithCompletion_];
      _Block_release(v21);
      return swift_unknownObjectRelease_n();
    }

    v3 = v31;
    v7 = v29;
    v4 = v30;
  }

  if (qword_28131C480 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v3, qword_28131C988);
  (*(v4 + 16))(v7, v23, v3);
  v24 = sub_2699037EC();
  v25 = sub_269903B0C();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_2698CD000, v24, v25, "Failed to get remote object", v26, 2u);
    MEMORY[0x26D648C80](v26, -1, -1);
  }

  (*(v4 + 8))(v7, v3);
  sub_2698F8BA0();
  aBlock = swift_allocError();
  return sub_269903A5C();
}

uint64_t sub_2698E9610(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_48_0();
    type metadata accessor for DeviceUnit();
    DeviceUnit.__allocating_init(deviceUnitObjC:)(v1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E9F8, &qword_269907850);
  return sub_269903A6C();
}

uint64_t sub_2698E968C()
{
  OUTLINED_FUNCTION_22_1();
  v1[3] = v2;
  v1[4] = v0;
  v3 = swift_task_alloc();
  v1[5] = v3;
  *v3 = v1;
  OUTLINED_FUNCTION_5_2(v3);

  return sub_2698F226C();
}

uint64_t sub_2698E9714()
{
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_23_1();
  v3 = v2;
  v4 = *(v2 + 40);
  v11 = *v1;
  *(v3 + 48) = v5;

  if (v0)
  {
    OUTLINED_FUNCTION_26_0();

    return v6();
  }

  else
  {
    OUTLINED_FUNCTION_47_0();

    return MEMORY[0x2822009F8](v8, v9, v10);
  }
}

uint64_t sub_2698E9838()
{
  OUTLINED_FUNCTION_6_1();
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_35_0(v2);
  v3 = *(MEMORY[0x277D85A40] + 4);
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E7A0, &qword_269907508);
  OUTLINED_FUNCTION_16_1();
  *v4 = v5;
  v4[1] = sub_2698E9918;
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x2822008A0]();
}

uint64_t sub_2698E9918()
{
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_23_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_1();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_11_1();
  *v8 = v7;
  *(v3 + 72) = v0;

  if (!v0)
  {
    v9 = *(v3 + 56);
  }

  OUTLINED_FUNCTION_47_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2698E9A18(uint64_t a1, char *a2, uint64_t a3, void *a4)
{
  v28 = a4;
  v30 = sub_26990382C();
  v33 = *(v30 - 8);
  v7 = *(v33 + 64);
  MEMORY[0x28223BE20](v30);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26990384C();
  v31 = *(v10 - 8);
  v32 = v10;
  v11 = *(v31 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E940, &qword_269907818);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v27 - v17;
  v29 = *&a2[OBJC_IVAR____TtC27SiriVirtualDeviceResolution23DeviceResolutionService_queue];
  (*(v15 + 16))(&v27 - v17, a1, v14);
  v19 = (*(v15 + 80) + 40) & ~*(v15 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = a3;
  *(v20 + 3) = a2;
  v21 = v28;
  *(v20 + 4) = v28;
  (*(v15 + 32))(&v20[v19], v18, v14);
  aBlock[4] = sub_2698F92C4;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2698D670C;
  aBlock[3] = &block_descriptor_214;
  v22 = _Block_copy(aBlock);

  v23 = a2;
  v24 = v21;
  sub_26990383C();
  v34 = MEMORY[0x277D84F90];
  sub_2698F8B5C(&qword_28131C478, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E410, &qword_2699074C0);
  sub_2698F94F0(&qword_28131C468, &unk_28033E410);
  v25 = v30;
  sub_269903C5C();
  MEMORY[0x26D6480A0](0, v13, v9, v22);
  _Block_release(v22);
  (*(v33 + 8))(v9, v25);
  (*(v31 + 8))(v13, v32);
}

uint64_t sub_2698E9DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v65 = a4;
  v71 = a3;
  v74 = a2;
  v63 = sub_2699037FC();
  v62 = *(v63 - 8);
  v5 = *(v62 + 64);
  MEMORY[0x28223BE20](v63);
  v61 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E940, &qword_269907818);
  v60 = *(v64 - 8);
  v7 = *(v60 + 64);
  MEMORY[0x28223BE20](v64);
  v9 = &v59 - v8;
  v10 = 0;
  v70 = a1 + 32;
  v11 = MEMORY[0x277D84F90];
  v73 = *(a1 + 16);
  v12 = &qword_28033E7A8;
  v66 = &v59 - v8;
  v72 = v7;
  while (v10 != v73)
  {
    v13 = v12;
    memcpy(__dst, (v70 + 80 * v10), sizeof(__dst));
    memcpy(v79, (v70 + 80 * v10), sizeof(v79));
    sub_2698F911C(__dst, v78);
    sub_2698F42C4();
    v15 = v14;
    v16 = v14 >> 62;
    if (v14 >> 62)
    {
      v17 = sub_269903CAC();
    }

    else
    {
      v17 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v18 = v11 >> 62;
    if (v11 >> 62)
    {
      v19 = sub_269903CAC();
    }

    else
    {
      v19 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v20 = v19 + v17;
    if (__OFADD__(v19, v17))
    {
      __break(1u);
LABEL_43:
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
      swift_once();
      goto LABEL_39;
    }

    v76 = v17;

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (v18)
    {
      v22 = 0;
    }

    else
    {
      v22 = isUniquelyReferenced_nonNull_bridgeObject;
    }

    if (v22 != 1 || (v23 = v11 & 0xFFFFFFFFFFFFFF8, v24 = v11, v20 > *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1))
    {
      if (v18)
      {
        sub_269903CAC();
      }

      else
      {
        v25 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v24 = sub_269903D6C();
      v23 = v24 & 0xFFFFFFFFFFFFFF8;
    }

    v77 = v10;
    v26 = *(v23 + 16);
    v10 = (*(v23 + 24) >> 1) - v26;
    v27 = v23 + 8 * v26;
    v75 = v23;
    if (v16)
    {
      v29 = sub_269903CAC();
      if (v29)
      {
        v30 = v29;
        v31 = sub_269903CAC();
        if (v10 < v31)
        {
          goto LABEL_46;
        }

        if (v30 < 1)
        {
          goto LABEL_47;
        }

        v67 = v31;
        v68 = v24;
        v69 = v11;
        v32 = v27 + 32;
        v12 = v13;
        sub_2698F94F0(&qword_28033E898, v13);
        for (i = 0; i != v30; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(v12, &qword_269907518);
          v34 = sub_2698F8A1C(v79, i, v15);
          v36 = *v35;
          (v34)(v79, 0);
          v12 = v13;
          *(v32 + 8 * i) = v36;
        }

        v9 = v66;
        v11 = v69;
        v24 = v68;
        v28 = v67;
        goto LABEL_26;
      }
    }

    else
    {
      v28 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v28)
      {
        if (v10 < v28)
        {
          goto LABEL_45;
        }

        sub_2698D23FC(0, &qword_28033E890, 0x277CD1650);
        swift_arrayInitWithCopy();
        v12 = v13;
LABEL_26:

        v10 = v77;
        if (v28 < v76)
        {
          goto LABEL_43;
        }

        if (v28 > 0)
        {
          v37 = *(v75 + 16);
          v38 = __OFADD__(v37, v28);
          v39 = v37 + v28;
          if (v38)
          {
            goto LABEL_44;
          }

          *(v75 + 16) = v39;
        }

        goto LABEL_31;
      }
    }

    v10 = v77;
    v12 = v13;
    if (v76 > 0)
    {
      goto LABEL_43;
    }

LABEL_31:
    ++v10;
    sub_2698F9178(__dst);

    v11 = v24;
  }

  v40 = sub_2698E6B0C();
  if (v40)
  {
    v41 = v40;
    v42 = v60;
    v43 = v9;
    v44 = v65;
    v45 = v9;
    v46 = v64;
    v77 = *(v60 + 16);
    v77(v43, v65, v64);
    v47 = *(v42 + 80);
    v48 = swift_allocObject();
    v76 = *(v42 + 32);
    v76(v48 + ((v47 + 16) & ~v47), v45, v46);
    __dst[4] = sub_2698F9360;
    __dst[5] = v48;
    __dst[0] = MEMORY[0x277D85DD0];
    __dst[1] = 1107296256;
    __dst[2] = sub_2698E6978;
    __dst[3] = &block_descriptor_220;
    v49 = _Block_copy(__dst);

    v50 = [v41 remoteObjectProxyWithErrorHandler_];
    _Block_release(v49);

    sub_269903C3C();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E520, &unk_269907790);
    if (swift_dynamicCast())
    {
      v51 = __dst[0];
      v77(v45, v44, v46);
      v52 = swift_allocObject();
      *(v52 + 16) = v11;
      v76(v52 + ((v47 + 24) & ~v47), v45, v46);
      __dst[4] = sub_2698F9414;
      __dst[5] = v52;
      __dst[0] = MEMORY[0x277D85DD0];
      __dst[1] = 1107296256;
      __dst[2] = sub_2698EAD7C;
      __dst[3] = &block_descriptor_226;
      v53 = _Block_copy(__dst);
      swift_unknownObjectRetain();

      [v51 getAllReachableDevicesWithCompletion_];
      _Block_release(v53);
      return swift_unknownObjectRelease_n();
    }
  }

  v15 = v63;
  v10 = v62;
  v11 = v61;
  if (qword_28131C480 != -1)
  {
    goto LABEL_48;
  }

LABEL_39:
  v55 = __swift_project_value_buffer(v15, qword_28131C988);
  (*(v10 + 16))(v11, v55, v15);
  v56 = sub_2699037EC();
  v57 = sub_269903B0C();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    *v58 = 0;
    _os_log_impl(&dword_2698CD000, v56, v57, "Failed to get remote object", v58, 2u);
    MEMORY[0x26D648C80](v58, -1, -1);
  }

  (*(v10 + 8))(v11, v15);
  sub_2698F8BA0();
  __dst[0] = swift_allocError();
  return sub_269903A5C();
}

uint64_t sub_2698EA6C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v69 = a3;
  v75 = a2;
  v74 = sub_2699037DC();
  v70 = *(v74 - 8);
  v4 = *(v70 + 8);
  MEMORY[0x28223BE20](v74);
  v6 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D84F90];
  v76 = MEMORY[0x277D84F90];
  v8 = sub_2698D2A38(a1);
  v9 = 0;
  while (v8 != v9)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x26D6482B0](v9, a1);
    }

    else
    {
      if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_62;
      }

      v10 = *(a1 + 8 * v9 + 32);
    }

    v11 = v10;
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    type metadata accessor for DeviceUnit();
    ++v9;
    if (DeviceUnit.__allocating_init(deviceUnitObjC:)(v11))
    {
      MEMORY[0x26D647F40]();
      if (*((v76 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v76 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_269903A2C();
      }

      sub_269903A3C();
      v7 = v76;
      v9 = v12;
    }
  }

  v68 = type metadata accessor for DeviceUnit();
  v13 = sub_2699038BC();
  v14 = sub_2698D2A38(v7);
  v15 = 0;
  while (v14 != v15)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x26D6482B0](v15, v7);
    }

    else
    {
      if (v15 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_64;
      }

      v16 = *(v7 + 8 * v15 + 32);
    }

    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      goto LABEL_63;
    }

    v18 = *&v16[OBJC_IVAR___SVDDeviceUnitSwift_homeKitAccessoryIdentifier + 8];
    if (v18)
    {
      v19 = *&v16[OBJC_IVAR___SVDDeviceUnitSwift_homeKitAccessoryIdentifier];
      v73 = v16;
      LODWORD(v71) = swift_isUniquelyReferenced_nonNull_native();
      v76 = v13;
      v72 = v19;
      v20 = sub_2698D1D34(v19, v18);
      if (__OFADD__(v13[2], (v21 & 1) == 0))
      {
        goto LABEL_67;
      }

      v22 = v20;
      HIDWORD(v67) = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E948, &qword_269907820);
      if (sub_269903DEC())
      {
        v23 = sub_2698D1D34(v72, v18);
        v25 = BYTE4(v67);
        if ((BYTE4(v67) & 1) != (v24 & 1))
        {
          goto LABEL_72;
        }

        v22 = v23;
      }

      else
      {
        v25 = BYTE4(v67);
      }

      v13 = v76;
      if (v25)
      {
        v26 = *(v76 + 56);
        v27 = *(v26 + 8 * v22);
        v28 = v73;
        *(v26 + 8 * v22) = v73;
      }

      else
      {
        *(v76 + 8 * (v22 >> 6) + 64) |= 1 << v22;
        v29 = (v13[6] + 16 * v22);
        v27 = v73;
        *v29 = v72;
        v29[1] = v18;
        *(v13[7] + 8 * v22) = v27;
        v30 = v13[2];
        v31 = __OFADD__(v30, 1);
        v32 = v30 + 1;
        if (v31)
        {
          goto LABEL_69;
        }

        v13[2] = v32;
      }

      v15 = v17;
    }

    else
    {

      ++v15;
    }
  }

  sub_2698D23FC(0, &qword_28033E890, 0x277CD1650);
  sub_2698F8B5C(&qword_28131C750, type metadata accessor for DeviceUnit);
  v71 = sub_2699038BC();
  v33 = v75;
  v34 = sub_2698D2A38(v75);
  v35 = 0;
  v72 = v33 & 0xFFFFFFFFFFFFFF8;
  v73 = (v33 & 0xC000000000000001);
  v36 = (v70 + 8);
  while (2)
  {
    while (2)
    {
      for (i = v35; ; ++i)
      {
        if (v34 == i)
        {

          v76 = v71;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E940, &qword_269907818);
          return sub_269903A6C();
        }

        if (v73)
        {
          v38 = MEMORY[0x26D6482B0](i, v75);
        }

        else
        {
          if (i >= *(v72 + 16))
          {
            goto LABEL_66;
          }

          v38 = *(v75 + 8 * i + 32);
        }

        v39 = v38;
        v35 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_65;
        }

        v40 = [v38 uniqueIdentifier];
        sub_2699037BC();

        v41 = sub_2699037AC();
        v43 = v42;
        (*v36)(v6, v74);
        if (v13[2])
        {
          break;
        }

LABEL_42:
      }

      v44 = sub_2698D1D34(v41, v43);
      v46 = v45;

      if ((v46 & 1) == 0)
      {
        goto LABEL_42;
      }

      v47 = *(v13[7] + 8 * v44);
      v48 = v71;
      if ((v71 & 0xC000000000000001) == 0)
      {
        v53 = v47;
        v54 = v39;
        goto LABEL_51;
      }

      if (v71 < 0)
      {
        v49 = v71;
      }

      else
      {
        v49 = v71 & 0xFFFFFFFFFFFFFF8;
      }

      v50 = v47;
      v51 = v39;
      v52 = sub_269903CAC();
      if (__OFADD__(v52, 1))
      {
        goto LABEL_70;
      }

      v48 = sub_2698F7554(v49, v52 + 1);
LABEL_51:
      swift_isUniquelyReferenced_nonNull_native();
      v76 = v48;
      v70 = v47;
      v55 = sub_2698D21C8();
      if (__OFADD__(*(v48 + 16), (v56 & 1) == 0))
      {
        goto LABEL_68;
      }

      v57 = v55;
      LODWORD(v71) = v56;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E950, &qword_269907828);
      if (sub_269903DEC())
      {
        v58 = sub_2698D21C8();
        v60 = v71;
        if ((v71 & 1) != (v59 & 1))
        {
          goto LABEL_72;
        }

        v57 = v58;
      }

      else
      {
        v60 = v71;
      }

      v61 = v76;
      v71 = v76;
      if (v60)
      {
        v62 = *(v76 + 56);
        v63 = *(v62 + 8 * v57);
        *(v62 + 8 * v57) = v39;

        continue;
      }

      break;
    }

    *(v76 + 8 * (v57 >> 6) + 64) |= 1 << v57;
    *(v61[6] + 8 * v57) = v70;
    *(v61[7] + 8 * v57) = v39;

    v64 = v61[2];
    v31 = __OFADD__(v64, 1);
    v65 = v64 + 1;
    if (!v31)
    {
      v61[2] = v65;
      continue;
    }

    break;
  }

LABEL_71:
  __break(1u);
LABEL_72:
  result = sub_269903FEC();
  __break(1u);
  return result;
}

uint64_t sub_2698EAD7C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_2698D23FC(0, &qword_28131C450, off_279C71310);
  v3 = sub_269903A0C();

  v2(v3);
}

uint64_t sub_2698EAE00()
{
  OUTLINED_FUNCTION_22_1();
  *(v1 + 80) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = v0;
  v4 = swift_task_alloc();
  *(v1 + 40) = v4;
  *v4 = v1;
  OUTLINED_FUNCTION_5_2(v4);

  return sub_2698F226C();
}

uint64_t sub_2698EAE8C()
{
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_23_1();
  v3 = v2;
  v4 = *(v2 + 40);
  v11 = *v1;
  *(v3 + 48) = v5;

  if (v0)
  {
    OUTLINED_FUNCTION_26_0();

    return v6();
  }

  else
  {
    OUTLINED_FUNCTION_47_0();

    return MEMORY[0x2822009F8](v8, v9, v10);
  }
}

uint64_t sub_2698EAFB0()
{
  OUTLINED_FUNCTION_6_1();
  v1 = *(v0 + 48);
  v2 = *(v0 + 80);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_35_0(v3);
  *(v4 + 40) = v2;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E7A8, &qword_269907518);
  OUTLINED_FUNCTION_16_1();
  *v6 = v7;
  v6[1] = sub_2698EB0A0;
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x2822008A0]();
}

uint64_t sub_2698EB0A0()
{
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_23_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_1();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_11_1();
  *v8 = v7;
  *(v3 + 72) = v0;

  if (!v0)
  {
    v9 = *(v3 + 56);
  }

  OUTLINED_FUNCTION_47_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2698EB1A0()
{
  OUTLINED_FUNCTION_22_1();

  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2698EB204()
{
  OUTLINED_FUNCTION_22_1();
  v1 = *(v0 + 56);

  v2 = *(v0 + 72);
  OUTLINED_FUNCTION_26_0();

  return v3();
}

uint64_t sub_2698EB268(uint64_t a1, char *a2, uint64_t a3, void *a4, int a5)
{
  v29 = a5;
  v28 = a4;
  v31 = sub_26990382C();
  v34 = *(v31 - 8);
  v8 = *(v34 + 64);
  MEMORY[0x28223BE20](v31);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26990384C();
  v32 = *(v11 - 8);
  v33 = v11;
  v12 = *(v32 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E930, &unk_269907808);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v28 - v18;
  v30 = *&a2[OBJC_IVAR____TtC27SiriVirtualDeviceResolution23DeviceResolutionService_queue];
  (*(v16 + 16))(&v28 - v18, a1, v15);
  v20 = (*(v16 + 80) + 41) & ~*(v16 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = a3;
  *(v21 + 24) = a2;
  v22 = v28;
  *(v21 + 32) = v28;
  *(v21 + 40) = v29;
  (*(v16 + 32))(v21 + v20, v19, v15);
  aBlock[4] = sub_2698F90A8;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2698D670C;
  aBlock[3] = &block_descriptor_196;
  v23 = _Block_copy(aBlock);

  v24 = a2;
  v25 = v22;
  sub_26990383C();
  v35 = MEMORY[0x277D84F90];
  sub_2698F8B5C(&qword_28131C478, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E410, &qword_2699074C0);
  sub_2698F94F0(&qword_28131C468, &unk_28033E410);
  v26 = v31;
  sub_269903C5C();
  MEMORY[0x26D6480A0](0, v14, v10, v23);
  _Block_release(v23);
  (*(v34 + 8))(v10, v26);
  (*(v32 + 8))(v14, v33);
}

uint64_t sub_2698EB63C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v71 = a5;
  v70 = a4;
  v79 = a3;
  v80 = a2;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E930, &unk_269907808);
  v6 = *(v69 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v69);
  v9 = &v67 - v8;
  v72 = sub_2699037FC();
  v73 = *(v72 - 8);
  v10 = v73[8];
  v11 = MEMORY[0x28223BE20](v72);
  v67 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v68 = &v67 - v13;
  v14 = 0;
  v78 = a1 + 32;
  v15 = MEMORY[0x277D84F90];
  v81 = *(a1 + 16);
  v75 = v6;
  v74 = v9;
  v76 = v7;
  while (1)
  {
    v85 = v15;
    if (v14 == v81)
    {
      break;
    }

    v83 = v14;
    memcpy(__dst, (v78 + 80 * v14), sizeof(__dst));
    memcpy(v87, (v78 + 80 * v14), sizeof(v87));
    sub_2698F911C(__dst, v86);
    sub_2698F42C4();
    v17 = v16;
    v18 = v16 >> 62;
    if (v16 >> 62)
    {
      v19 = sub_269903CAC();
    }

    else
    {
      v19 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v20 = v15 >> 62;
    if (v15 >> 62)
    {
      v21 = sub_269903CAC();
    }

    else
    {
      v21 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v22 = v21 + v19;
    if (__OFADD__(v21, v19))
    {
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
      swift_once();
      goto LABEL_37;
    }

    v84 = v19;

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (v20)
    {
      v24 = 0;
    }

    else
    {
      v24 = isUniquelyReferenced_nonNull_bridgeObject;
    }

    if (v24 != 1 || (v15 = v85, v25 = v85 & 0xFFFFFFFFFFFFFF8, v22 > *((v85 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1))
    {
      if (v20)
      {
        sub_269903CAC();
      }

      else
      {
        v26 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v15 = sub_269903D6C();
      v25 = v15 & 0xFFFFFFFFFFFFFF8;
    }

    v27 = *(v25 + 16);
    v28 = (*(v25 + 24) >> 1) - v27;
    v29 = v25 + 8 * v27;
    v82 = v25;
    if (v18)
    {
      v31 = sub_269903CAC();
      if (v31)
      {
        v32 = v31;
        v33 = sub_269903CAC();
        if (v28 < v33)
        {
          goto LABEL_53;
        }

        if (v32 < 1)
        {
          goto LABEL_54;
        }

        v30 = v33;
        v77 = v15;
        v34 = v29 + 32;
        sub_2698F94F0(&qword_28033E898, &qword_28033E7A8);
        for (i = 0; i != v32; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E7A8, &qword_269907518);
          v36 = sub_2698F8A1C(v87, i, v17);
          v38 = *v37;
          (v36)(v87, 0);
          *(v34 + 8 * i) = v38;
        }

        v6 = v75;
        v9 = v74;
        v15 = v77;
        goto LABEL_26;
      }
    }

    else
    {
      v30 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v30)
      {
        if (v28 < v30)
        {
          goto LABEL_52;
        }

        sub_2698D23FC(0, &qword_28033E890, 0x277CD1650);
        swift_arrayInitWithCopy();
LABEL_26:

        if (v30 < v84)
        {
          goto LABEL_50;
        }

        if (v30 > 0)
        {
          v39 = *(v82 + 2);
          v40 = __OFADD__(v39, v30);
          v41 = v39 + v30;
          if (v40)
          {
            goto LABEL_51;
          }

          *(v82 + 2) = v41;
        }

        goto LABEL_31;
      }
    }

    if (v84 > 0)
    {
      goto LABEL_50;
    }

LABEL_31:
    v14 = v83 + 1;
    sub_2698F9178(__dst);
  }

  if ((v70 & 1) == 0)
  {
    __dst[0] = v15;
    return sub_269903A6C();
  }

  if (qword_28131C480 != -1)
  {
    goto LABEL_55;
  }

LABEL_37:
  v42 = v72;
  v43 = __swift_project_value_buffer(v72, qword_28131C988);
  v84 = v73[2];
  v84(v68, v43, v42);

  v44 = sub_2699037EC();
  v45 = sub_269903AFC();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 134217984;
    *(v46 + 4) = sub_2698D1C94(v15);

    _os_log_impl(&dword_2698CD000, v44, v45, "accessories matching description: %ld", v46, 0xCu);
    MEMORY[0x26D648C80](v46, -1, -1);
  }

  else
  {
  }

  v48 = v69;
  v49 = v71;
  v50 = v73[1];
  ++v73;
  v50(v68, v72);
  v51 = sub_2698E6B0C();
  if (v51)
  {
    v52 = v51;
    v82 = v50;
    v83 = v43;
    v81 = *(v6 + 16);
    v81(v9, v49, v48);
    v53 = *(v6 + 80);
    v54 = swift_allocObject();
    v55 = *(v6 + 32);
    v55(v54 + ((v53 + 16) & ~v53), v9, v48);
    __dst[4] = sub_2698F91CC;
    __dst[5] = v54;
    __dst[0] = MEMORY[0x277D85DD0];
    __dst[1] = 1107296256;
    __dst[2] = sub_2698E6978;
    __dst[3] = &block_descriptor_202;
    v56 = _Block_copy(__dst);

    v57 = [v52 remoteObjectProxyWithErrorHandler_];
    _Block_release(v56);

    sub_269903C3C();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E520, &unk_269907790);
    if (swift_dynamicCast())
    {
      v58 = v55;
      v59 = __dst[0];
      v81(v9, v71, v48);
      v60 = swift_allocObject();
      *(v60 + 16) = v85;
      v58(v60 + ((v53 + 24) & ~v53), v9, v48);
      __dst[4] = sub_2698F9250;
      __dst[5] = v60;
      __dst[0] = MEMORY[0x277D85DD0];
      __dst[1] = 1107296256;
      __dst[2] = sub_2698EAD7C;
      __dst[3] = &block_descriptor_208;
      v61 = _Block_copy(__dst);
      swift_unknownObjectRetain();

      [v59 getAllReachableDevicesWithCompletion_];
      _Block_release(v61);
      return swift_unknownObjectRelease_n();
    }

    v43 = v83;
    v50 = v82;
  }

  else
  {
  }

  v84(v67, v43, v72);
  v62 = sub_2699037EC();
  v63 = sub_269903B0C();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = v50;
    v65 = swift_slowAlloc();
    *v65 = 0;
    _os_log_impl(&dword_2698CD000, v62, v63, "Failed to get remote object", v65, 2u);
    v66 = v65;
    v50 = v64;
    MEMORY[0x26D648C80](v66, -1, -1);
  }

  v50(v67, v72);
  sub_2698F8BA0();
  __dst[0] = swift_allocError();
  return sub_269903A5C();
}

void sub_2698EC0A8()
{
  OUTLINED_FUNCTION_15();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_55();
  v5 = sub_2699037FC();
  v6 = OUTLINED_FUNCTION_3_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5_0();
  v13 = v12 - v11;
  if (qword_28131C480 != -1)
  {
    OUTLINED_FUNCTION_0_11();
    swift_once();
  }

  v14 = __swift_project_value_buffer(v5, qword_28131C988);
  (*(v8 + 16))(v13, v14, v5);
  v15 = v0;
  v16 = sub_2699037EC();
  v17 = sub_269903B0C();

  if (os_log_type_enabled(v16, v17))
  {
    v23 = v4;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v24 = v19;
    *v18 = 136315138;
    swift_getErrorValue();
    v20 = sub_269903FFC();
    v22 = sub_2698D9D70(v20, v21, &v24);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_2698CD000, v16, v17, "Error reaching remote: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    OUTLINED_FUNCTION_27_0();
    MEMORY[0x26D648C80]();
    v4 = v23;
    OUTLINED_FUNCTION_27_0();
    MEMORY[0x26D648C80]();
  }

  (*(v8 + 8))(v13, v5);
  sub_2698F8BA0();
  v24 = swift_allocError();
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v2);
  sub_269903A5C();
  OUTLINED_FUNCTION_17();
}

uint64_t sub_2698EC2F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2698D2A38(a1);
  v5 = 0;
  v20 = MEMORY[0x277D84F90];
  while (v4 != v5)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x26D6482B0](v5, a1);
    }

    else
    {
      if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_27;
      }

      v6 = *(a1 + 8 * v5 + 32);
    }

    v7 = v6;
    v8 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);

      __break(1u);
      return result;
    }

    v2 = sub_2698F8820(v6);
    v10 = v9;

    ++v5;
    if (v10)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_2698F7120(0, *(v20 + 2) + 1, 1, v20);
      }

      v12 = *(v20 + 2);
      v11 = *(v20 + 3);
      if (v12 >= v11 >> 1)
      {
        v20 = sub_2698F7120((v11 > 1), v12 + 1, 1, v20);
      }

      *(v20 + 2) = v12 + 1;
      v13 = &v20[16 * v12];
      *(v13 + 4) = v2;
      *(v13 + 5) = v10;
      v5 = v8;
    }
  }

  v23 = MEMORY[0x277D84F90];
  v14 = a2;
  v15 = sub_2698D2A38(a2);
  for (i = 0; v15 != i; ++i)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x26D6482B0](i, v14);
    }

    else
    {
      if (i >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v17 = *(v14 + 8 * i + 32);
    }

    v2 = v17;
    if (__OFADD__(i, 1))
    {
      goto LABEL_28;
    }

    v22 = v17;
    if (sub_2698EC560(&v22, v20))
    {
      sub_269903D8C();
      v18 = *(v23 + 16);
      sub_269903DBC();
      sub_269903DCC();
      sub_269903D9C();
      v14 = a2;
    }

    else
    {
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E930, &unk_269907808);
  return sub_269903A6C();
}

BOOL sub_2698EC560(id *a1, uint64_t a2)
{
  v56 = sub_2699037FC();
  v53 = *(v56 - 8);
  v4 = *(v53 + 64);
  MEMORY[0x28223BE20](v56);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_2699037DC();
  v7 = *(v54 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v54);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = [*a1 category];
  v13 = [v12 categoryType];

  v14 = sub_26990390C();
  v16 = v15;

  if (qword_28033E180 != -1)
  {
    swift_once();
  }

  v17 = off_28033EB20;
  if (*(off_28033EB20 + 2))
  {
    v18 = sub_2698D1D34(v14, v16);
    v20 = v19;

    if (v20)
    {
      v52 = *(v17[7] + 8 * v18) == 8;
      goto LABEL_8;
    }
  }

  else
  {
  }

  v52 = 0;
LABEL_8:
  v21 = [v11 uniqueIdentifier];
  sub_2699037BC();

  v22 = sub_2699037AC();
  v24 = v23;
  v25 = v7 + 8;
  v26 = *(v7 + 8);
  v49 = v25;
  v27 = v26(v10, v54);
  v55[0] = v22;
  v55[1] = v24;
  MEMORY[0x28223BE20](v27);
  *(&v47 - 2) = v55;
  v28 = v51;
  v50 = sub_2698F8770(sub_2698F92A4, (&v47 - 4), a2);
  v51 = v28;

  if (qword_28131C480 != -1)
  {
    swift_once();
  }

  v29 = v56;
  v30 = __swift_project_value_buffer(v56, qword_28131C988);
  v31 = v53;
  (*(v53 + 16))(v6, v30, v29);
  v32 = v11;
  v33 = sub_2699037EC();
  v34 = sub_269903AFC();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v48 = v6;
    v36 = v31;
    v37 = v35;
    v38 = swift_slowAlloc();
    v55[0] = v38;
    *v37 = 136315650;
    v39 = [v32 uniqueIdentifier];
    sub_2699037BC();

    v40 = sub_2699037AC();
    v42 = v41;
    v26(v10, v54);
    v43 = sub_2698D9D70(v40, v42, v55);

    *(v37 + 4) = v43;
    *(v37 + 12) = 1024;
    v44 = v52;
    *(v37 + 14) = v52;
    *(v37 + 18) = 1024;
    v45 = v50;
    *(v37 + 20) = v50;
    _os_log_impl(&dword_2698CD000, v33, v34, "accessory %s: isMatchpointTV=%{BOOL}d, isReachable=%{BOOL}d", v37, 0x18u);
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x26D648C80](v38, -1, -1);
    MEMORY[0x26D648C80](v37, -1, -1);

    (*(v36 + 8))(v48, v56);
  }

  else
  {

    (*(v31 + 8))(v6, v29);
    v44 = v52;
    v45 = v50;
  }

  return v44 || v45;
}

uint64_t sub_2698ECA2C(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return OUTLINED_FUNCTION_0_7();
}

uint64_t sub_2698ECA40()
{
  OUTLINED_FUNCTION_6_1();
  v1 = OUTLINED_FUNCTION_60();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = *(MEMORY[0x277D85A40] + 4);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E7B0, &qword_269907528);
  OUTLINED_FUNCTION_16_1();
  *v3 = v4;
  v3[1] = sub_2698ECB20;
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x2822008A0]();
}

uint64_t sub_2698ECB20()
{
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_23_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_1();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_11_1();
  *v8 = v7;
  *(v3 + 56) = v0;

  if (!v0)
  {
    v9 = *(v3 + 40);
  }

  OUTLINED_FUNCTION_47_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2698ECC20(uint64_t a1, uint64_t a2, char *a3)
{
  v34 = a1;
  v35 = a3;
  v4 = sub_26990382C();
  v40 = *(v4 - 8);
  v41 = v4;
  v5 = *(v40 + 64);
  MEMORY[0x28223BE20](v4);
  v39 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26990384C();
  v37 = *(v7 - 8);
  v38 = v7;
  v8 = *(v37 + 64);
  MEMORY[0x28223BE20](v7);
  v36 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E920, &unk_2699077F8);
  v32 = *(v10 - 8);
  v33 = v10;
  v30 = *(v32 + 64);
  MEMORY[0x28223BE20](v10);
  v31 = &v30 - v11;
  v12 = MEMORY[0x277D84F90];
  v44 = MEMORY[0x277D84F90];
  result = sub_2698D2A38(a2);
  v14 = result;
  v15 = 0;
  v42 = v12;
  while (1)
  {
    if (v14 == v15)
    {
      v17 = v35;
      v18 = *&v35[OBJC_IVAR____TtC27SiriVirtualDeviceResolution23DeviceResolutionService_queue];
      v20 = v31;
      v19 = v32;
      v21 = v33;
      (*(v32 + 16))(v31, v34, v33);
      v22 = (*(v19 + 80) + 32) & ~*(v19 + 80);
      v23 = swift_allocObject();
      v24 = v42;
      *(v23 + 16) = v17;
      *(v23 + 24) = v24;
      (*(v19 + 32))(v23 + v22, v20, v21);
      aBlock[4] = sub_2698F8F6C;
      aBlock[5] = v23;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2698D670C;
      aBlock[3] = &block_descriptor_182;
      v25 = _Block_copy(aBlock);
      v26 = v17;
      v27 = v36;
      sub_26990383C();
      v44 = MEMORY[0x277D84F90];
      sub_2698F8B5C(&qword_28131C478, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E410, &qword_2699074C0);
      sub_2698F94F0(&qword_28131C468, &unk_28033E410);
      v28 = v39;
      v29 = v41;
      sub_269903C5C();
      MEMORY[0x26D6480A0](0, v27, v28, v25);
      _Block_release(v25);
      (*(v40 + 8))(v28, v29);
      (*(v37 + 8))(v27, v38);
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x26D6482B0](v15, a2);
    }

    else
    {
      if (v15 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      result = *(a2 + 8 * v15 + 32);
    }

    v16 = result;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    [result copy];
    sub_269903C3C();
    swift_unknownObjectRelease();

    type metadata accessor for CapabilityDescription();
    result = swift_dynamicCast();
    if ((result & 1) != 0 && aBlock[6])
    {
      MEMORY[0x26D647F40]();
      if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_269903A2C();
      }

      result = sub_269903A3C();
      v42 = v44;
      ++v15;
    }

    else
    {
      ++v15;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

void sub_2698ED108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v82 = a2;
  v83 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E920, &unk_2699077F8);
  v81 = *(v3 - 8);
  v4 = *(v81 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v74 - v5;
  v7 = sub_2699037FC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v10);
  v12 = &v74 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = MEMORY[0x277D84F98];
  v14 = sub_2698EFE84();
  v84 = v13;
  v85 = v3;
  v79 = v12;
  v75 = v4;
  v76 = v6;
  v77 = v14;
  v78 = v8;
  v80 = v7;
  v24 = MEMORY[0x277D84F90];
  aBlock[0] = MEMORY[0x277D84F90];
  v25 = v82;
  v26 = sub_2698D2A38(v82);
  v27 = 0;
  v28 = v25 & 0xC000000000000001;
  v86 = v26;
  v87 = (v25 & 0xFFFFFFFFFFFFFF8);
  while (v26 != v27)
  {
    if (v28)
    {
      v29 = MEMORY[0x26D6482B0](v27, v25);
    }

    else
    {
      if (v27 >= v87[2])
      {
        goto LABEL_28;
      }

      v29 = *(v25 + 8 * v27 + 32);
    }

    v30 = v29;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
      swift_once();
      v15 = __swift_project_value_buffer(v28, qword_28131C988);
      v16 = v27;
      (*(v27 + 16))(v26, v15, v28);
      v17 = v24;
      v18 = sub_2699037EC();
      v19 = sub_269903B0C();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        *v20 = 138412290;
        v22 = v24;
        v23 = _swift_stdlib_bridgeErrorToNSError();
        *(v20 + 4) = v23;
        *v21 = v23;
        _os_log_impl(&dword_2698CD000, v18, v19, "#hal Error getting devices matching descriptions: %@", v20, 0xCu);
        sub_2698F9984(v21, &qword_28033E530);
        MEMORY[0x26D648C80](v21, -1, -1);
        MEMORY[0x26D648C80](v20, -1, -1);
      }

      (*(v16 + 8))(v26, v28);
      aBlock[0] = v24;
      sub_269903A5C();

      return;
    }

    v32 = *&v29[OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_key];
    v31 = *&v29[OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_key + 8];
    v33 = *&v29[OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_valueSet];
    if (v33)
    {
      v34 = *&v29[OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_key + 8];

      sub_2698ED964(v33);
      v35 = objc_allocWithZone(SVDCapabilityDescription);
      v36 = sub_2698F604C();
    }

    else
    {
      v37 = &v29[OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_valueRange];
      if (v29[OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_valueRange + 16])
      {

        goto LABEL_16;
      }

      v39 = *v37;
      v38 = v37[1];
      v40 = objc_allocWithZone(SVDCapabilityDescription);

      v41 = v28;
      v42 = v25;
      v43 = v24;
      v44 = sub_2699038FC();

      v36 = [v40 initWithKey:v44 valueRangeWithLowerBound:v39 upperBound:v38];

      v30 = v44;
      v24 = v43;
      v25 = v42;
      v28 = v41;
      v26 = v86;
    }

    if (v36)
    {
      MEMORY[0x26D647F40]();
      if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_269903A2C();
      }

      sub_269903A3C();
      v24 = aBlock[0];
      ++v27;
    }

    else
    {
LABEL_16:
      ++v27;
    }
  }

  if (qword_28131C480 != -1)
  {
    swift_once();
  }

  v45 = v80;
  v46 = __swift_project_value_buffer(v80, qword_28131C988);
  v47 = v78;
  v48 = v79;
  (*(v78 + 16))(v79, v46, v45);

  v49 = sub_2699037EC();
  v50 = sub_269903AFC();

  v51 = os_log_type_enabled(v49, v50);
  v53 = v84;
  v52 = v85;
  v54 = v83;
  if (v51)
  {
    v55 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    aBlock[0] = v87;
    *v55 = 136315138;
    v56 = sub_2698D23FC(0, &qword_28131C428, off_279C71300);
    v57 = MEMORY[0x26D647F70](v24, v56);
    v59 = sub_2698D9D70(v57, v58, aBlock);

    *(v55 + 4) = v59;
    _os_log_impl(&dword_2698CD000, v49, v50, "#hal Calling devicesMatching(:) with descriptions: %s", v55, 0xCu);
    v60 = v87;
    __swift_destroy_boxed_opaque_existential_0(v87);
    MEMORY[0x26D648C80](v60, -1, -1);
    MEMORY[0x26D648C80](v55, -1, -1);

    (*(v47 + 8))(v79, v80);
  }

  else
  {

    (*(v47 + 8))(v48, v45);
  }

  v61 = v81;
  v62 = v76;
  v63 = v75;
  v64 = MEMORY[0x277D84F98];
  v65 = swift_allocObject();
  *(v65 + 16) = v64;
  sub_2698D23FC(0, &qword_28131C428, off_279C71300);
  v66 = sub_2699039FC();

  (*(v61 + 16))(v62, v54, v52);
  v67 = v52;
  v68 = (*(v61 + 80) + 16) & ~*(v61 + 80);
  v69 = (v63 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
  v70 = swift_allocObject();
  v71 = v62;
  v72 = v70;
  (*(v61 + 32))(v70 + v68, v71, v67);
  *(v72 + v69) = v53;
  *(v72 + ((v69 + 15) & 0xFFFFFFFFFFFFFFF8)) = v65;
  aBlock[4] = sub_2698F9004;
  aBlock[5] = v72;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2698EE5E8;
  aBlock[3] = &block_descriptor_190;
  v73 = _Block_copy(aBlock);

  [v77 getDevicesMatchingCapabilityDescriptions:v66 completion:v73];
  _Block_release(v73);

  swift_unknownObjectRelease();
}

uint64_t sub_2698ED964(uint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (sub_269903CAC())
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = MEMORY[0x277D84FA0];
    if (v2)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E8F0, &qword_2699077D0);
  v3 = sub_269903D2C();
  if (v2)
  {
LABEL_4:

    sub_269903C9C();
    sub_2698D23FC(0, &qword_28131C3F0, 0x277D82BB8);
    sub_2698F8CAC(&qword_28131C400, &qword_28131C3F0, 0x277D82BB8);
    result = sub_269903ADC();
    v1 = v31;
    v5 = v32;
    v6 = v33;
    v7 = v34;
    v8 = v35;
    goto LABEL_11;
  }

LABEL_7:
  v9 = -1 << *(v1 + 32);
  v5 = v1 + 56;
  v6 = ~v9;
  v10 = -v9;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v8 = v11 & *(v1 + 56);

  v7 = 0;
LABEL_11:
  v12 = v3 + 56;
  if (v1 < 0)
  {
    goto LABEL_14;
  }

LABEL_12:
  if (v8)
  {
    v13 = v7;
LABEL_21:
    v16 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v17 = *(*(v1 + 48) + ((v13 << 9) | (8 * v16)));
    while (1)
    {
      sub_2698D23FC(0, &qword_28131C3F0, 0x277D82BB8);
      swift_dynamicCast();
      v18 = *(v3 + 40);
      result = sub_269903CEC();
      v19 = -1 << *(v3 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        break;
      }

      v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_31:
      *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v27 = *(v3 + 48) + 40 * v22;
      *(v27 + 32) = v30;
      *v27 = v28;
      *(v27 + 16) = v29;
      ++*(v3 + 16);
      if ((v1 & 0x8000000000000000) == 0)
      {
        goto LABEL_12;
      }

LABEL_14:
      v14 = sub_269903CCC();
      if (!v14)
      {
        goto LABEL_33;
      }

      *&v28 = v14;
      sub_2698D23FC(0, &qword_28131C3F0, 0x277D82BB8);
      swift_dynamicCast();
    }

    v23 = 0;
    v24 = (63 - v19) >> 6;
    while (++v21 != v24 || (v23 & 1) == 0)
    {
      v25 = v21 == v24;
      if (v21 == v24)
      {
        v21 = 0;
      }

      v23 |= v25;
      v26 = *(v12 + 8 * v21);
      if (v26 != -1)
      {
        v22 = __clz(__rbit64(~v26)) + (v21 << 6);
        goto LABEL_31;
      }
    }

    __break(1u);
  }

  else
  {
    v15 = v7;
    while (1)
    {
      v13 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v13 >= ((v6 + 64) >> 6))
      {
LABEL_33:
        sub_2698D2A2C();

        return v3;
      }

      v8 = *(v5 + 8 * v13);
      ++v15;
      if (v8)
      {
        v7 = v13;
        goto LABEL_21;
      }
    }
  }

  __break(1u);
  return result;
}

id sub_2698EDCF4(double a1, double a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_2699038FC();

  v6 = [v4 initWithKey:v5 valueRangeWithLowerBound:a1 upperBound:a2];

  return v6;
}

uint64_t sub_2698EDD80(uint64_t a1, id isUniquelyReferenced_nonNull_native, uint64_t a3, uint64_t a4)
{
  v8 = sub_2699037FC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v70 = v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = v66 - v13;
  swift_beginAccess();
  v15 = *(a4 + 16);
  *(a4 + 16) = a1;

  if (qword_28131C480 != -1)
  {
LABEL_41:
    swift_once();
  }

  v16 = __swift_project_value_buffer(v8, qword_28131C988);
  v17 = *(v9 + 16);
  v68 = v16;
  v69 = (v9 + 16);
  v67 = v17;
  (v17)(v14);

  v18 = sub_2699037EC();
  v19 = sub_269903AFC();

  v20 = os_log_type_enabled(v18, v19);
  v66[1] = isUniquelyReferenced_nonNull_native;
  v72 = v8;
  v71 = v9;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v80 = v22;
    *v21 = 136315138;
    swift_beginAccess();
    v23 = *(a4 + 16);
    sub_2698D23FC(0, &qword_28131C450, off_279C71310);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E8C8, &qword_2699077B8);
    sub_2698F8CAC(&unk_28131C440, &qword_28131C450, off_279C71310);
    isUniquelyReferenced_nonNull_native = sub_2699038AC();
    v8 = v24;

    v25 = sub_2698D9D70(isUniquelyReferenced_nonNull_native, v8, &v80);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_2698CD000, v18, v19, "#hal Retrieved matching devices: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x26D648C80](v22, -1, -1);
    MEMORY[0x26D648C80](v21, -1, -1);

    v66[0] = v71[1];
    (v66[0])(v14, v72);
  }

  else
  {

    v66[0] = *(v9 + 8);
    (v66[0])(v14, v8);
  }

  swift_beginAccess();
  v26 = *(a4 + 16);
  a4 = v26 + 64;
  v27 = 1 << *(v26 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & *(v26 + 64);
  v30 = (v27 + 63) >> 6;

  v9 = 0;
  v73 = v26;
  v74 = a3;
  if (!v29)
  {
    while (1)
    {
LABEL_8:
      v31 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v31 >= v30)
      {
        break;
      }

      v29 = *(a4 + 8 * v31);
      ++v9;
      if (v29)
      {
        v9 = v31;
        goto LABEL_12;
      }
    }

    v51 = v70;
    v52 = v72;
    v67(v70, v68, v72);

    v53 = sub_2699037EC();
    v54 = sub_269903AFC();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = a3;
      v57 = swift_slowAlloc();
      v79 = v57;
      *v55 = 136315138;
      swift_beginAccess();
      v58 = *(v56 + 16);
      type metadata accessor for DeviceUnit();
      type metadata accessor for Capabilities();
      sub_2698F8B5C(&qword_28131C750, type metadata accessor for DeviceUnit);

      v59 = sub_2699038AC();
      v61 = v60;

      v62 = sub_2698D9D70(v59, v61, &v79);

      *(v55 + 4) = v62;
      _os_log_impl(&dword_2698CD000, v53, v54, "#hal Returning transformed results: %s", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v57);
      v63 = v57;
      a3 = v56;
      MEMORY[0x26D648C80](v63, -1, -1);
      MEMORY[0x26D648C80](v55, -1, -1);

      v64 = v70;
    }

    else
    {

      v64 = v51;
    }

    (v66[0])(v64, v52);
    swift_beginAccess();
    v78[3] = *(a3 + 16);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E920, &unk_2699077F8);
    return sub_269903A6C();
  }

LABEL_12:
  while (1)
  {
    v32 = (v9 << 9) | (8 * __clz(__rbit64(v29)));
    v33 = *(*(v26 + 48) + v32);
    v8 = *(*(v26 + 56) + v32);
    v34 = type metadata accessor for DeviceUnit();
    isUniquelyReferenced_nonNull_native = v33;

    v77 = v34;
    v14 = v34;
    v35 = DeviceUnit.__allocating_init(deviceUnitObjC:)(isUniquelyReferenced_nonNull_native);
    if (v35)
    {
      break;
    }

LABEL_32:
    v29 &= v29 - 1;

    if (!v29)
    {
      goto LABEL_8;
    }
  }

  v36 = v35;
  v8 = static ObjCCompatibility.capabilities(from:)(v8);

  if (!v8)
  {

    goto LABEL_32;
  }

  swift_beginAccess();
  v14 = *(a3 + 16);
  v75 = v8;
  v76 = isUniquelyReferenced_nonNull_native;
  if ((v14 & 0xC000000000000001) != 0)
  {
    if (v14 >= 0)
    {
      v14 &= 0xFFFFFFFFFFFFFF8uLL;
    }

    v37 = v36;
    v38 = sub_269903CAC();
    if (__OFADD__(v38, 1))
    {
      goto LABEL_40;
    }

    *(a3 + 16) = sub_2698F777C(v14, v38 + 1);
  }

  else
  {

    v39 = v36;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v78[0] = *(a3 + 16);
  v14 = v78[0];
  *(a3 + 16) = 0x8000000000000000;
  v40 = sub_2698D21C8();
  if (__OFADD__(*(v14 + 16), (v41 & 1) == 0))
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v42 = v40;
  v43 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E8D8, &qword_2699077C0);
  v14 = v78;
  if (sub_269903DEC())
  {
    v14 = v78[0];
    v44 = sub_2698D21C8();
    isUniquelyReferenced_nonNull_native = v76;
    if ((v43 & 1) != (v45 & 1))
    {
      goto LABEL_43;
    }

    v42 = v44;
  }

  else
  {
    isUniquelyReferenced_nonNull_native = v76;
  }

  v46 = v78[0];
  if (v43)
  {
    v47 = *(v78[0] + 56);
    v14 = *(v47 + 8 * v42);
    v8 = v75;
    *(v47 + 8 * v42) = v75;

LABEL_31:
    a3 = v74;
    *(v74 + 16) = v46;
    swift_endAccess();

    v26 = v73;
    goto LABEL_32;
  }

  *(v78[0] + 8 * (v42 >> 6) + 64) |= 1 << v42;
  *(v46[6] + 8 * v42) = v36;
  v8 = v75;
  *(v46[7] + 8 * v42) = v75;
  v48 = v46[2];
  v49 = __OFADD__(v48, 1);
  v50 = v48 + 1;
  if (!v49)
  {
    v46[2] = v50;
    goto LABEL_31;
  }

  __break(1u);
LABEL_43:
  result = sub_269903FEC();
  __break(1u);
  return result;
}

uint64_t sub_2698EE5E8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_2698D23FC(0, &qword_28131C450, off_279C71310);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E8C8, &qword_2699077B8);
  sub_2698F8CAC(&unk_28131C440, &qword_28131C450, off_279C71310);
  v3 = sub_26990389C();

  v2(v3);
}

uint64_t sub_2698EE6BC(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return OUTLINED_FUNCTION_0_7();
}

uint64_t sub_2698EE6D4()
{
  OUTLINED_FUNCTION_9_1();
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = swift_task_alloc();
  v0[6] = v4;
  v4[2] = v1;
  v4[3] = v2;
  v4[4] = v3;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  v0[7] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E7B8, &qword_269907538);
  OUTLINED_FUNCTION_16_1();
  *v6 = v7;
  v6[1] = sub_2698EE7D4;
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x2822008A0]();
}

uint64_t sub_2698EE7D4()
{
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_23_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_1();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  OUTLINED_FUNCTION_11_1();
  *v8 = v7;
  *(v3 + 64) = v0;

  if (!v0)
  {
    v9 = *(v3 + 48);
  }

  OUTLINED_FUNCTION_47_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2698EE8D4()
{
  OUTLINED_FUNCTION_22_1();
  v1 = *(v0 + 48);

  OUTLINED_FUNCTION_26_0();
  v3 = *(v0 + 64);

  return v2();
}

uint64_t sub_2698EE930(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v26 = a3;
  v27 = a4;
  v6 = sub_26990382C();
  v30 = *(v6 - 8);
  v7 = *(v30 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_26990384C();
  v10 = *(v29 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v29);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E918, &qword_2699077F0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v26 - v17;
  v28 = *&a2[OBJC_IVAR____TtC27SiriVirtualDeviceResolution23DeviceResolutionService_queue];
  (*(v15 + 16))(&v26 - v17, a1, v14);
  v19 = (*(v15 + 80) + 40) & ~*(v15 + 80);
  v20 = swift_allocObject();
  v22 = v26;
  v21 = v27;
  *(v20 + 2) = a2;
  *(v20 + 3) = v22;
  *(v20 + 4) = v21;
  (*(v15 + 32))(&v20[v19], v18, v14);
  aBlock[4] = sub_2698F8E20;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2698D670C;
  aBlock[3] = &block_descriptor_170;
  v23 = _Block_copy(aBlock);
  v24 = a2;
  sub_26990383C();
  v31 = MEMORY[0x277D84F90];
  sub_2698F8B5C(&qword_28131C478, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E410, &qword_2699074C0);
  sub_2698F94F0(&qword_28131C468, &unk_28033E410);
  sub_269903C5C();
  MEMORY[0x26D6480A0](0, v13, v9, v23);
  _Block_release(v23);
  (*(v30 + 8))(v9, v6);
  (*(v10 + 8))(v13, v29);
}

uint64_t sub_2698EECE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E918, &qword_2699077F0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &aBlock[-1] - v10;
  v12 = sub_2698EFE84();
  (*(v8 + 16))(v11, a4, v7);
  v13 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  (*(v8 + 32))(v14 + v13, v11, v7);
  aBlock[4] = sub_2698F8E48;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2698EAD7C;
  aBlock[3] = &block_descriptor_176;
  v15 = _Block_copy(aBlock);

  [v12 getAllReachableDevicesWithCompletion_];
  _Block_release(v15);
  return swift_unknownObjectRelease();
}

void sub_2698EEEDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = MEMORY[0x277D84F90];
  v17 = MEMORY[0x277D84F90];
  v6 = sub_2698D2A38(a1);
  v7 = 0;
  while (v6 != v7)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x26D6482B0](v7, a1);
    }

    else
    {
      if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_26;
      }

      v8 = *(a1 + 8 * v7 + 32);
    }

    v9 = v8;
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      return;
    }

    type metadata accessor for DeviceUnit();
    ++v7;
    if (DeviceUnit.__allocating_init(deviceUnitObjC:)(v9))
    {
      MEMORY[0x26D647F40]();
      if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_269903A2C();
      }

      sub_269903A3C();
      v5 = v17;
      v7 = v10;
    }
  }

  v18 = MEMORY[0x277D84F90];
  v11 = sub_2698D2A38(v5);
  for (i = 0; v11 != i; ++i)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x26D6482B0](i, v5);
    }

    else
    {
      if (i >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v13 = *(v5 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      goto LABEL_27;
    }

    v14 = *&v13[OBJC_IVAR___SVDDeviceUnitSwift_proximity];
    if (v14 >= a2 && v14 <= a3)
    {
      sub_269903D8C();
      v15 = *(v18 + 16);
      sub_269903DBC();
      sub_269903DCC();
      sub_269903D9C();
    }

    else
    {
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E918, &qword_2699077F0);
  sub_269903A6C();
}

uint64_t sub_2698EF114(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return OUTLINED_FUNCTION_0_7();
}

uint64_t sub_2698EF128()
{
  OUTLINED_FUNCTION_6_1();
  v1 = OUTLINED_FUNCTION_60();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = *(MEMORY[0x277D85A40] + 4);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E7C0, &qword_269907548);
  OUTLINED_FUNCTION_16_1();
  *v3 = v4;
  v3[1] = sub_2698EF20C;
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x2822008A0]();
}

uint64_t sub_2698EF20C()
{
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_23_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_1();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_11_1();
  *v8 = v7;
  *(v3 + 56) = v0;

  if (!v0)
  {
    v9 = *(v3 + 40);
  }

  OUTLINED_FUNCTION_47_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2698EF30C()
{
  OUTLINED_FUNCTION_22_1();
  v1 = *(v0 + 40);

  OUTLINED_FUNCTION_26_0();
  v3 = *(v0 + 56);

  return v2();
}

uint64_t sub_2698EF368(uint64_t a1, char *a2, uint64_t a3)
{
  v24[0] = a3;
  v5 = sub_26990382C();
  v27 = *(v5 - 8);
  v6 = *(v27 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26990384C();
  v25 = *(v9 - 8);
  v26 = v9;
  v10 = *(v25 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E910, &qword_2699077E8);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v24 - v16;
  v24[1] = *&a2[OBJC_IVAR____TtC27SiriVirtualDeviceResolution23DeviceResolutionService_queue];
  (*(v14 + 16))(v24 - v16, a1, v13);
  v18 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v19 = swift_allocObject();
  v20 = v24[0];
  *(v19 + 16) = a2;
  *(v19 + 24) = v20;
  (*(v14 + 32))(v19 + v18, v17, v13);
  aBlock[4] = sub_2698F8D88;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2698D670C;
  aBlock[3] = &block_descriptor_158;
  v21 = _Block_copy(aBlock);
  v22 = a2;

  sub_26990383C();
  v28 = MEMORY[0x277D84F90];
  sub_2698F8B5C(&qword_28131C478, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E410, &qword_2699074C0);
  sub_2698F94F0(&qword_28131C468, &unk_28033E410);
  sub_269903C5C();
  MEMORY[0x26D6480A0](0, v12, v8, v21);
  _Block_release(v21);
  (*(v27 + 8))(v8, v5);
  (*(v25 + 8))(v12, v26);
}

void sub_2698EF720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E910, &qword_2699077E8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &aBlock[-1] - v7;
  v9 = sub_2698EFE84();
  sub_2699037DC();
  sub_2698F8B5C(&qword_28131C768, MEMORY[0x277CC95F0]);
  v10 = sub_269903A9C();
  (*(v5 + 16))(v8, a3, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v8, v4);
  aBlock[4] = sub_2698F8DB0;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2698EFDAC;
  aBlock[3] = &block_descriptor_164;
  v13 = _Block_copy(aBlock);

  [v9 getSourceDeviceForContextWithIdentifiers:v10 completion:v13];
  _Block_release(v13);
  swift_unknownObjectRelease();
}

uint64_t sub_2698EF968(uint64_t a1)
{
  sub_2698EF9C4(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E910, &qword_2699077E8);
  return sub_269903A6C();
}

void sub_2698EF9C4(uint64_t a1)
{
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E900, &qword_2699077D8);
  v2 = *(*(v63 - 8) + 64);
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_43_0();
  v57 = v3 - v4;
  v6 = MEMORY[0x28223BE20](v5);
  v62 = &v54 - v7;
  MEMORY[0x28223BE20](v6);
  v61 = &v54 - v8;
  v58 = MEMORY[0x277D84F98];
  v65 = MEMORY[0x277D84F98];
  v10 = a1 + 64;
  v9 = *(a1 + 64);
  v11 = *(a1 + 32);
  OUTLINED_FUNCTION_37_0();
  v14 = v13 & v12;
  v16 = (v15 + 63) >> 6;
  v64 = a1;

  v17 = 0;
  v59 = v16;
  for (i = a1 + 64; ; v10 = i)
  {
    v18 = v17;
    if (!v14)
    {
      goto LABEL_4;
    }

    while (1)
    {
      v17 = v18;
LABEL_7:
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v20 = v19 | (v17 << 6);
      v21 = v64;
      v22 = *(v64 + 48);
      v23 = sub_2699037DC();
      OUTLINED_FUNCTION_3_0(v23);
      v25 = v24;
      v27 = *(v26 + 72);
      v28 = v61;
      (*(v26 + 16))(v61, v22 + v27 * v20, v23);
      v29 = *(*(v21 + 56) + 8 * v20);
      v30 = v63;
      *&v28[*(v63 + 48)] = v29;
      v31 = v28;
      v32 = v62;
      sub_2698F8D04(v31, v62);
      v33 = *(v32 + *(v30 + 48));
      type metadata accessor for DeviceUnit();
      v34 = v29;
      v35 = DeviceUnit.__allocating_init(deviceUnitObjC:)(v33);
      if (v35)
      {
        break;
      }

      sub_2698F9984(v32, &qword_28033E900);
      v18 = v17;
      v16 = v59;
      v10 = i;
      if (!v14)
      {
LABEL_4:
        while (1)
        {
          v17 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            break;
          }

          if (v17 >= v16)
          {

            return;
          }

          v14 = *(v10 + 8 * v17);
          ++v18;
          if (v14)
          {
            goto LABEL_7;
          }
        }

        __break(1u);
        goto LABEL_24;
      }
    }

    v36 = v35;
    v55 = v27;
    v56 = v25;
    sub_2698F8D04(v32, v57);
    v37 = v58[2];
    if (v58[3] <= v37)
    {
      sub_2698F7E24(v37 + 1, 1);
    }

    v38 = v65;
    v39 = *(v65 + 40);
    sub_2698F8B5C(&qword_28131C768, MEMORY[0x277CC95F0]);
    v40 = sub_2699038DC();
    v41 = v38 + 64;
    v58 = v38;
    v42 = v40 & ~(-1 << *(v38 + 32));
    if (((-1 << v42) & ~*(v38 + 64 + 8 * (v42 >> 6))) == 0)
    {
      break;
    }

    v43 = __clz(__rbit64((-1 << v42) & ~*(v38 + 64 + 8 * (v42 >> 6)))) | v42 & 0x7FFFFFFFFFFFFFC0;
    v45 = v55;
    v44 = v56;
LABEL_21:
    v51 = *(v63 + 48);
    *(v41 + ((v43 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v43;
    v52 = v58;
    v53 = v57;
    (*(v44 + 32))(v58[6] + v43 * v45, v57, v23);
    *(v52[7] + 8 * v43) = v36;
    ++v52[2];

    v16 = v59;
  }

  OUTLINED_FUNCTION_52();
  v45 = v55;
  v44 = v56;
  while (++v46 != v48 || (v47 & 1) == 0)
  {
    v49 = v46 == v48;
    if (v46 == v48)
    {
      v46 = 0;
    }

    v47 |= v49;
    v50 = *(v41 + 8 * v46);
    if (v50 != -1)
    {
      v43 = __clz(__rbit64(~v50)) + (v46 << 6);
      goto LABEL_21;
    }
  }

LABEL_24:
  __break(1u);
}

uint64_t sub_2698EFDAC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_2699037DC();
  sub_2698D23FC(0, &qword_28131C450, off_279C71310);
  sub_2698F8B5C(&qword_28131C768, MEMORY[0x277CC95F0]);
  v3 = sub_26990389C();

  v2(v3);
}

uint64_t sub_2698EFE84()
{
  v2 = sub_2699037FC();
  v3 = OUTLINED_FUNCTION_4_4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_8_2();
  v8 = sub_2698E6B0C();
  if (v8)
  {
    v9 = v8;
    aBlock[4] = sub_2698F9C18;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2698E6978;
    aBlock[3] = &block_descriptor_78;
    v10 = _Block_copy(aBlock);
    v11 = [v9 remoteObjectProxyWithErrorHandler_];
    _Block_release(v10);

    sub_269903C3C();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E520, &unk_269907790);
    if (swift_dynamicCast())
    {
      return aBlock[0];
    }
  }

  if (qword_28131C480 != -1)
  {
    OUTLINED_FUNCTION_0_11();
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_28131C988);
  OUTLINED_FUNCTION_42_0();
  v13(v1);
  v14 = sub_2699037EC();
  v15 = sub_269903B0C();
  if (os_log_type_enabled(v14, v15))
  {
    OUTLINED_FUNCTION_36_0();
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_2698CD000, v14, v15, "Failed to get remote object", v16, 2u);
    OUTLINED_FUNCTION_27_0();
    MEMORY[0x26D648C80]();
  }

  (*(v5 + 8))(v1, v0);
  sub_2698F8BA0();
  swift_allocError();
  return swift_willThrow();
}

void sub_2698F0104()
{
  OUTLINED_FUNCTION_15();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = sub_26990382C();
  v13 = OUTLINED_FUNCTION_4_4(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_8_2();
  v33 = sub_26990384C();
  v18 = OUTLINED_FUNCTION_3_0(v33);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_9_2();
  v32 = *&v1[OBJC_IVAR____TtC27SiriVirtualDeviceResolution23DeviceResolutionService_queue];
  v23 = swift_allocObject();
  v23[2] = v1;
  v23[3] = v7;
  v23[4] = v5;
  v23[5] = v9;
  v23[6] = v11;
  v34[4] = sub_2698F2394;
  v34[5] = v23;
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_3(COERCE_DOUBLE(1107296256));
  v34[2] = v24;
  v34[3] = &block_descriptor_32;
  v25 = _Block_copy(v34);
  v26 = v1;

  sub_26990383C();
  OUTLINED_FUNCTION_5_4();
  sub_2698F8B5C(v27, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E410, &qword_2699074C0);
  OUTLINED_FUNCTION_1_11();
  sub_2698F94F0(v29, v30);
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_34_0();
  sub_269903C5C();
  v31 = OUTLINED_FUNCTION_11();
  MEMORY[0x26D6480A0](v31);
  _Block_release(v25);
  (*(v15 + 8))(v2, v0);
  (*(v20 + 8))(v3, v33);

  OUTLINED_FUNCTION_17();
}

void sub_2698F0348(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_2699037FC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2698E6B0C();
  if (!v14)
  {
    goto LABEL_4;
  }

  v15 = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  v30 = sub_2698F8D74;
  v31 = v16;
  aBlock = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = sub_2698E6978;
  v29 = &block_descriptor_146;
  v17 = _Block_copy(&aBlock);

  v18 = [v15 remoteObjectProxyWithErrorHandler_];
  _Block_release(v17);

  sub_269903C3C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E520, &unk_269907790);
  if (swift_dynamicCast())
  {
    v19 = aBlock;
    v20 = swift_allocObject();
    v20[2] = a2;
    v20[3] = a3;
    v20[4] = a4;
    v20[5] = a5;
    v30 = sub_2698F8D7C;
    v31 = v20;
    aBlock = MEMORY[0x277D85DD0];
    v27 = 1107296256;
    v28 = sub_2698EAD7C;
    v29 = &block_descriptor_152;
    v21 = _Block_copy(&aBlock);

    swift_unknownObjectRetain();

    [v19 getAllReachableDevicesWithCompletion_];
    swift_unknownObjectRelease_n();
    _Block_release(v21);
  }

  else
  {
LABEL_4:
    if (qword_28131C480 != -1)
    {
      swift_once();
    }

    v22 = __swift_project_value_buffer(v9, qword_28131C988);
    (*(v10 + 16))(v13, v22, v9);
    v23 = sub_2699037EC();
    v24 = sub_269903B0C();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_2698CD000, v23, v24, "Failed to get remote object", v25, 2u);
      MEMORY[0x26D648C80](v25, -1, -1);
    }

    (*(v10 + 8))(v13, v9);
    a2(MEMORY[0x277D84F90]);
  }
}

uint64_t sub_2698F06F4(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  v6 = sub_2699037FC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28131C480 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v6, qword_28131C988);
  (*(v7 + 16))(v10, v11, v6);
  v12 = a1;
  v13 = sub_2699037EC();
  v14 = sub_269903B0C();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v24 = a3;
    v16 = a2;
    v17 = v15;
    v18 = swift_slowAlloc();
    v25 = v18;
    *v17 = 136315138;
    swift_getErrorValue();
    v19 = sub_269903FFC();
    v21 = sub_2698D9D70(v19, v20, &v25);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_2698CD000, v13, v14, "Error reaching remote: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x26D648C80](v18, -1, -1);
    v22 = v17;
    a2 = v16;
    MEMORY[0x26D648C80](v22, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  return a2(MEMORY[0x277D84F90]);
}

void sub_2698F0944(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = MEMORY[0x277D84F90];
  v20 = MEMORY[0x277D84F90];
  v8 = sub_2698D2A38(a1);
  v9 = 0;
  while (v8 != v9)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x26D6482B0](v9, a1);
    }

    else
    {
      if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v10 = *(a1 + 8 * v9 + 32);
    }

    v11 = v10;
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      return;
    }

    type metadata accessor for DeviceUnit();
    ++v9;
    if (DeviceUnit.__allocating_init(deviceUnitObjC:)(v11))
    {
      MEMORY[0x26D647F40]();
      if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_269903A2C();
      }

      sub_269903A3C();
      v7 = v20;
      v9 = v12;
    }
  }

  v21 = MEMORY[0x277D84F90];
  v13 = sub_2698D2A38(v7);
  for (i = 0; v13 != i; ++i)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x26D6482B0](i, v7);
    }

    else
    {
      if (i >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_30;
      }

      v15 = *(v7 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      goto LABEL_29;
    }

    v16 = *&v15[OBJC_IVAR___SVDDeviceUnitSwift_proximity];
    if (v16 >= a4 && v16 <= a5)
    {
      sub_269903D8C();
      v17 = *(v21 + 16);
      sub_269903DBC();
      sub_269903DCC();
      sub_269903D9C();
    }

    else
    {
    }
  }

  a2(v21);
}

void sub_2698F0BA4(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v5 = sub_2699037FC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2698E6B0C();
  if (!v10)
  {
    goto LABEL_4;
  }

  v11 = v10;
  v26 = sub_2698F9C18;
  v27 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_2698E6978;
  v25 = &block_descriptor_134;
  v12 = _Block_copy(&aBlock);
  v13 = [v11 remoteObjectProxyWithErrorHandler_];
  _Block_release(v12);

  sub_269903C3C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E520, &unk_269907790);
  if (swift_dynamicCast())
  {
    v14 = aBlock;
    sub_2699037DC();
    sub_2698F8B5C(&qword_28131C768, MEMORY[0x277CC95F0]);
    swift_unknownObjectRetain();
    v15 = sub_269903A9C();
    v16 = swift_allocObject();
    *(v16 + 16) = a2;
    *(v16 + 24) = a3;
    v26 = sub_2698F8CFC;
    v27 = v16;
    aBlock = MEMORY[0x277D85DD0];
    v23 = 1107296256;
    v24 = sub_2698EFDAC;
    v25 = &block_descriptor_140;
    v17 = _Block_copy(&aBlock);

    [v14 getSourceDeviceForContextWithIdentifiers:v15 completion:v17];
    _Block_release(v17);
    swift_unknownObjectRelease_n();
  }

  else
  {
LABEL_4:
    if (qword_28131C480 != -1)
    {
      swift_once();
    }

    v18 = __swift_project_value_buffer(v5, qword_28131C988);
    (*(v6 + 16))(v9, v18, v5);
    v19 = sub_2699037EC();
    v20 = sub_269903B0C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2698CD000, v19, v20, "Failed to get remote object", v21, 2u);
      MEMORY[0x26D648C80](v21, -1, -1);
    }

    (*(v6 + 8))(v9, v5);
    sub_2699037DC();
    type metadata accessor for DeviceUnit();
    sub_2698F8B5C(&qword_28131C768, MEMORY[0x277CC95F0]);
    sub_2699038BC();
    a2();
  }
}

uint64_t sub_2698F0FE4(uint64_t a1, void (*a2)(void))
{
  sub_2698EF9C4(a1);
  a2();
}

void sub_2698F1068()
{
  OUTLINED_FUNCTION_15();
  v31 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_26990382C();
  v12 = OUTLINED_FUNCTION_4_4(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_8_2();
  v33 = sub_26990384C();
  v15 = OUTLINED_FUNCTION_3_0(v33);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_9_2();
  v32 = *&v0[OBJC_IVAR____TtC27SiriVirtualDeviceResolution23DeviceResolutionService_queue];
  v20 = swift_allocObject();
  v20[2] = v0;
  v20[3] = v8;
  v20[4] = v6;
  v20[5] = v10;
  v34[4] = v4;
  v34[5] = v20;
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_3(COERCE_DOUBLE(1107296256));
  v34[2] = v21;
  v34[3] = v31;
  v22 = _Block_copy(v34);
  v23 = v0;

  sub_26990383C();
  OUTLINED_FUNCTION_5_4();
  sub_2698F8B5C(v24, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E410, &qword_2699074C0);
  OUTLINED_FUNCTION_1_11();
  sub_2698F94F0(v26, v27);
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_34_0();
  sub_269903C5C();
  v28 = OUTLINED_FUNCTION_11();
  MEMORY[0x26D6480A0](v28);
  _Block_release(v22);
  v29 = OUTLINED_FUNCTION_12();
  v30(v29);
  (*(v17 + 8))(v1, v33);

  OUTLINED_FUNCTION_17();
}

void sub_2698F1298(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  v7 = sub_2699037FC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = MEMORY[0x277D84F98];
  v13 = sub_2698E6B0C();
  if (!v13)
  {
    goto LABEL_20;
  }

  v14 = v13;
  v50 = sub_2698F9C18;
  v51 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v47 = 1107296256;
  v48 = sub_2698E6978;
  v49 = &block_descriptor_122;
  v15 = _Block_copy(&aBlock);
  v16 = [v14 remoteObjectProxyWithErrorHandler_];
  _Block_release(v15);

  sub_269903C3C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E520, &unk_269907790);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:
    if (qword_28131C480 != -1)
    {
      goto LABEL_27;
    }

    goto LABEL_21;
  }

  v42 = a2;
  v43 = v12;
  v44 = a3;
  v17 = aBlock;
  v45 = MEMORY[0x277D84F90];
  aBlock = MEMORY[0x277D84F90];
  v8 = sub_2698D2A38(a4);
  a2 = (a4 & 0xC000000000000001);
  v11 = (a4 & 0xFFFFFFFFFFFFFF8);
  v41 = v17;
  swift_unknownObjectRetain();
  v7 = 0;
  while (1)
  {
    if (v8 == v7)
    {
      v35 = swift_allocObject();
      *(v35 + 16) = MEMORY[0x277D84F98];
      sub_2698D23FC(0, &qword_28131C428, off_279C71300);
      v36 = sub_2699039FC();

      v37 = swift_allocObject();
      v38 = v43;
      v39 = v44;
      v37[2] = v42;
      v37[3] = v39;
      v37[4] = v38;
      v37[5] = v35;
      v50 = sub_2698F8CA0;
      v51 = v37;
      aBlock = MEMORY[0x277D85DD0];
      v47 = 1107296256;
      v48 = sub_2698EE5E8;
      v49 = &block_descriptor_131;
      v40 = _Block_copy(&aBlock);

      [v41 getDevicesMatchingCapabilityDescriptions:v36 completion:v40];
      _Block_release(v40);

      swift_unknownObjectRelease_n();

      return;
    }

    if (a2)
    {
      v18 = MEMORY[0x26D6482B0](v7, a4);
    }

    else
    {
      if (v7 >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_26;
      }

      v18 = *(a4 + 8 * v7 + 32);
    }

    v19 = v18;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    v21 = *&v18[OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_key];
    v20 = *&v18[OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_key + 8];
    v12 = *&v18[OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_valueSet];
    if (v12)
    {
      v22 = *&v18[OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_key + 8];

      v12 = sub_2698ED964(v12);
      v23 = objc_allocWithZone(SVDCapabilityDescription);
      v24 = sub_2698F604C();
    }

    else
    {
      v25 = &v18[OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_valueRange];
      if (v18[OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_valueRange + 16])
      {

        goto LABEL_15;
      }

      v27 = *v25;
      v26 = v25[1];
      v12 = sub_2698D23FC(0, &qword_28131C428, off_279C71300);

      v24 = sub_2698EDCF4(v27, v26);
    }

    v28 = v24;

    if (v28)
    {
      MEMORY[0x26D647F40]();
      if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_269903A2C();
      }

      sub_269903A3C();
      v45 = aBlock;
      ++v7;
    }

    else
    {
LABEL_15:
      ++v7;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  swift_once();
LABEL_21:
  v29 = __swift_project_value_buffer(v7, qword_28131C988);
  (*(v8 + 16))(v11, v29, v7);
  v30 = sub_2699037EC();
  v31 = sub_269903B0C();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_2698CD000, v30, v31, "Failed to get remote object", v32, 2u);
    MEMORY[0x26D648C80](v32, -1, -1);
  }

  (*(v8 + 8))(v11, v7);
  v33 = *(v12 + 16);

  a2(v34);
}

void sub_2698F1880()
{
  OUTLINED_FUNCTION_15();
  v2 = v1;
  v3 = sub_2699037FC();
  v4 = OUTLINED_FUNCTION_4_4(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5_0();
  v11 = v10 - v9;
  if (qword_28131C480 != -1)
  {
    OUTLINED_FUNCTION_0_11();
    swift_once();
  }

  v12 = __swift_project_value_buffer(v0, qword_28131C988);
  (*(v6 + 16))(v11, v12, v0);
  v13 = v2;
  v14 = sub_2699037EC();
  v15 = sub_269903B0C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v21 = v17;
    *v16 = 136315138;
    swift_getErrorValue();
    v18 = sub_269903FFC();
    v20 = sub_2698D9D70(v18, v19, &v21);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_2698CD000, v14, v15, "Error reaching remote: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    OUTLINED_FUNCTION_27_0();
    MEMORY[0x26D648C80]();
    OUTLINED_FUNCTION_27_0();
    MEMORY[0x26D648C80]();
  }

  (*(v6 + 8))(v11, v0);
  OUTLINED_FUNCTION_17();
}

uint64_t sub_2698F1A68(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, int64_t a5)
{
  v9 = sub_2699037FC();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](v9);
  v77 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v70 - v14;
  if (qword_28131C480 != -1)
  {
LABEL_41:
    swift_once();
  }

  v16 = __swift_project_value_buffer(v9, qword_28131C988);
  v17 = v10[2];
  v75 = v16;
  v76 = v10 + 2;
  v74 = v17;
  (v17)(v15);

  v18 = sub_2699037EC();
  v19 = sub_269903AFC();

  v20 = os_log_type_enabled(v18, v19);
  v73 = a2;
  v72 = a3;
  v78 = v10;
  v79 = v9;
  if (v20)
  {
    v21 = swift_slowAlloc();
    a3 = swift_slowAlloc();
    v87 = a3;
    *v21 = 136315138;
    swift_beginAccess();
    v22 = *(a5 + 16);
    sub_2698D23FC(0, &qword_28131C450, off_279C71310);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E8C8, &qword_2699077B8);
    sub_2698F8CAC(&unk_28131C440, &qword_28131C450, off_279C71310);
    v23 = sub_2699038AC();
    v9 = v24;

    v25 = sub_2698D9D70(v23, v9, &v87);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_2698CD000, v18, v19, "#hal Retrieved matching devices: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(a3);
    MEMORY[0x26D648C80](a3, -1, -1);
    MEMORY[0x26D648C80](v21, -1, -1);

    v71 = v78[1];
    v71(v15, v79);
  }

  else
  {

    v71 = v10[1];
    v71(v15, v9);
  }

  swift_beginAccess();
  v26 = *(a5 + 16);
  v10 = (v26 + 64);
  v27 = 1 << *(v26 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & *(v26 + 64);
  v30 = (v27 + 63) >> 6;
  v31 = *(a5 + 16);

  a5 = 0;
  a2 = &qword_269906000;
  v80 = a4;
  v81 = v26;
  if (!v29)
  {
    while (1)
    {
LABEL_8:
      v32 = a5 + 1;
      if (__OFADD__(a5, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v32 >= v30)
      {
        break;
      }

      v29 = v10[v32];
      ++a5;
      if (v29)
      {
        a5 = v32;
        goto LABEL_12;
      }
    }

    v54 = v77;
    v55 = v79;
    v74(v77, v75, v79);

    v56 = sub_2699037EC();
    v57 = sub_269903AFC();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v86 = v59;
      *v58 = a2[92];
      swift_beginAccess();
      v60 = *(a4 + 16);
      type metadata accessor for DeviceUnit();
      type metadata accessor for Capabilities();
      sub_2698F8B5C(&qword_28131C750, type metadata accessor for DeviceUnit);

      v61 = sub_2699038AC();
      v63 = v62;

      v64 = sub_2698D9D70(v61, v63, &v86);

      *(v58 + 4) = v64;
      _os_log_impl(&dword_2698CD000, v56, v57, "#hal Returning transformed results: %s", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v59);
      MEMORY[0x26D648C80](v59, -1, -1);
      MEMORY[0x26D648C80](v58, -1, -1);

      v65 = v77;
    }

    else
    {

      v65 = v54;
    }

    v71(v65, v55);
    v66 = v73;
    swift_beginAccess();
    v67 = *(a4 + 16);

    (v66)(v68);
  }

LABEL_12:
  while (1)
  {
    v33 = (a5 << 9) | (8 * __clz(__rbit64(v29)));
    v34 = *(*(v26 + 48) + v33);
    v9 = *(*(v26 + 56) + v33);
    a3 = type metadata accessor for DeviceUnit();
    v35 = v34;

    v83 = a3;
    v84 = v35;
    v36 = v35;
    v15 = a3;
    v37 = DeviceUnit.__allocating_init(deviceUnitObjC:)(v36);
    if (v37)
    {
      break;
    }

LABEL_32:
    v29 &= v29 - 1;

    if (!v29)
    {
      goto LABEL_8;
    }
  }

  a3 = v37;
  v9 = static ObjCCompatibility.capabilities(from:)(v9);

  if (!v9)
  {

    goto LABEL_32;
  }

  swift_beginAccess();
  v15 = *(a4 + 16);
  v82 = v9;
  if ((v15 & 0xC000000000000001) != 0)
  {
    if (v15 >= 0)
    {
      v15 &= 0xFFFFFFFFFFFFFF8uLL;
    }

    v38 = a3;
    v39 = sub_269903CAC();
    if (__OFADD__(v39, 1))
    {
      goto LABEL_40;
    }

    *(a4 + 16) = sub_2698F777C(v15, v39 + 1);
  }

  else
  {

    v40 = a3;
  }

  swift_isUniquelyReferenced_nonNull_native();
  v85 = *(a4 + 16);
  v15 = v85;
  *(a4 + 16) = 0x8000000000000000;
  v41 = sub_2698D21C8();
  v43 = *(v15 + 16);
  v44 = (v42 & 1) == 0;
  a2 = (v43 + v44);
  if (__OFADD__(v43, v44))
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v45 = v41;
  v46 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E8D8, &qword_2699077C0);
  v15 = &v85;
  if (sub_269903DEC())
  {
    v15 = v85;
    v47 = sub_2698D21C8();
    v26 = v81;
    if ((v46 & 1) != (v48 & 1))
    {
      goto LABEL_43;
    }

    v45 = v47;
  }

  else
  {
    v26 = v81;
  }

  v49 = v85;
  if (v46)
  {
    v50 = v85[7];
    v15 = *(v50 + 8 * v45);
    v9 = v82;
    *(v50 + 8 * v45) = v82;

LABEL_31:
    a4 = v80;
    *(v80 + 16) = v49;
    swift_endAccess();

    a2 = &qword_269906000;
    goto LABEL_32;
  }

  v85[(v45 >> 6) + 8] |= 1 << v45;
  *(v49[6] + 8 * v45) = a3;
  v9 = v82;
  *(v49[7] + 8 * v45) = v82;
  v51 = v49[2];
  v52 = __OFADD__(v51, 1);
  v53 = v51 + 1;
  if (!v52)
  {
    v49[2] = v53;
    goto LABEL_31;
  }

  __break(1u);
LABEL_43:
  result = sub_269903FEC();
  __break(1u);
  return result;
}

uint64_t sub_2698F2280()
{
  OUTLINED_FUNCTION_6_1();
  v1 = *(v0 + 24);
  v2 = OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_40_0(v2);
  v3 = *(MEMORY[0x277D85A40] + 4);
  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  sub_2698D23FC(0, &qword_28033E960, 0x277CD1A90);
  OUTLINED_FUNCTION_16_1();
  *v4 = v5;
  v4[1] = sub_2698E8D2C;
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x2822008A0]();
}

uint64_t objectdestroy_34Tm()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_2698F23FC(uint64_t a1, char *a2)
{
  v4 = sub_26990382C();
  v25 = *(v4 - 8);
  v5 = *(v25 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26990384C();
  v23 = *(v8 - 8);
  v24 = v8;
  v9 = *(v23 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E968, &qword_269907838);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v22 - v15;
  v22[1] = *&a2[OBJC_IVAR____TtC27SiriVirtualDeviceResolution23DeviceResolutionService_queue];
  (*(v13 + 16))(v22 - v15, a1, v12);
  v17 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  (*(v13 + 32))(v18 + v17, v16, v12);
  aBlock[4] = sub_2698F94C8;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2698D670C;
  aBlock[3] = &block_descriptor_234;
  v19 = _Block_copy(aBlock);
  v20 = a2;
  sub_26990383C();
  v26 = MEMORY[0x277D84F90];
  sub_2698F8B5C(&qword_28131C478, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E410, &qword_2699074C0);
  sub_2698F94F0(&qword_28131C468, &unk_28033E410);
  sub_269903C5C();
  MEMORY[0x26D6480A0](0, v11, v7, v19);
  _Block_release(v19);
  (*(v25 + 8))(v7, v4);
  (*(v23 + 8))(v11, v24);
}

void sub_2698F27A4(_BYTE *a1, uint64_t a2)
{
  v4 = sub_26990381C();
  v107 = *(v4 - 8);
  v108 = v4;
  v5 = *(v107 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v106 = (&v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v105 = (&v94 - v8);
  v104 = sub_26990386C();
  v103 = *(v104 - 8);
  v9 = *(v103 + 64);
  v10 = MEMORY[0x28223BE20](v104);
  v101 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v102 = &v94 - v12;
  v113 = sub_26990382C();
  v115 = *(v113 - 8);
  v13 = *(v115 + 64);
  MEMORY[0x28223BE20](v113);
  v112 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_26990384C();
  v114 = *(v111 - 8);
  v15 = *(v114 + 64);
  MEMORY[0x28223BE20](v111);
  v110 = &v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E968, &qword_269907838);
  v17 = *(v100 - 1);
  v98 = *(v17 + 64);
  MEMORY[0x28223BE20](v100);
  v99 = &v94 - v18;
  v97 = sub_269903B6C();
  v96 = *(v97 - 1);
  v19 = *(v96 + 8);
  MEMORY[0x28223BE20](v97);
  v95 = &v94 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2699037FC();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v94 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v94 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v94 - v30;
  v32 = OBJC_IVAR____TtC27SiriVirtualDeviceResolution23DeviceResolutionService_homeManager;
  v33 = *&a1[OBJC_IVAR____TtC27SiriVirtualDeviceResolution23DeviceResolutionService_homeManager];
  if (v33)
  {
    goto LABEL_8;
  }

  v109 = v29;
  if (qword_28131C480 != -1)
  {
    swift_once();
  }

  v94 = a2;
  v34 = __swift_project_value_buffer(v21, qword_28131C988);
  (*(v22 + 16))(v31, v34, v21);
  v35 = sub_2699037EC();
  v36 = sub_269903AFC();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_2698CD000, v35, v36, "Initializing home manager", v37, 2u);
    MEMORY[0x26D648C80](v37, -1, -1);
  }

  (*(v22 + 8))(v31, v21);
  dispatch_group_enter(*&a1[OBJC_IVAR____TtC27SiriVirtualDeviceResolution23DeviceResolutionService_homeManagerReadyGroup]);
  v38 = [objc_allocWithZone(MEMORY[0x277CD1A98]) initWithOptions:1348 cachePolicy:2];
  v39 = [objc_allocWithZone(MEMORY[0x277CD1A90]) initWithHomeMangerConfiguration_];
  v40 = *&a1[v32];
  *&a1[v32] = v39;
  v41 = v39;

  v29 = v109;
  if (v41)
  {
    [v41 setDelegate_];

    v33 = *&a1[v32];
    a2 = v94;
    if (!v33)
    {
      v43 = OBJC_IVAR____TtC27SiriVirtualDeviceResolution23DeviceResolutionService_waitingOnHomeManagerDataSync;
      goto LABEL_16;
    }

LABEL_8:
    v42 = [v33 isDataSyncInProgress];
    v43 = OBJC_IVAR____TtC27SiriVirtualDeviceResolution23DeviceResolutionService_waitingOnHomeManagerDataSync;
    if (v42 && (a1[OBJC_IVAR____TtC27SiriVirtualDeviceResolution23DeviceResolutionService_waitingOnHomeManagerDataSync] & 1) == 0)
    {
      if (qword_28131C480 != -1)
      {
        swift_once();
      }

      v44 = __swift_project_value_buffer(v21, qword_28131C988);
      (*(v22 + 16))(v29, v44, v21);
      v45 = sub_2699037EC();
      v46 = sub_269903AFC();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = v29;
        v48 = a2;
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&dword_2698CD000, v45, v46, "Waiting on home manager to finish data sync", v49, 2u);
        v50 = v49;
        a2 = v48;
        v29 = v47;
        MEMORY[0x26D648C80](v50, -1, -1);
      }

      (*(v22 + 8))(v29, v21);
      dispatch_group_enter(*&a1[OBJC_IVAR____TtC27SiriVirtualDeviceResolution23DeviceResolutionService_homeManagerReadyGroup]);
      a1[v43] = 1;
LABEL_22:
      sub_2698D23FC(0, &qword_28033E970, 0x277D85CA0);
      v57 = MEMORY[0x277D84F90];
      aBlock = MEMORY[0x277D84F90];
      sub_2698F8B5C(&qword_28033E978, MEMORY[0x277D85278]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E980, &unk_269907840);
      v94 = MEMORY[0x277D83970];
      sub_2698F94F0(&qword_28033E988, &qword_28033E980);
      v58 = v95;
      v59 = v97;
      sub_269903C5C();
      v60 = sub_269903B7C();
      (*(v96 + 1))(v58, v59);
      v61 = v99;
      v62 = a2;
      v63 = v100;
      (*(v17 + 16))(v99, v62, v100);
      v64 = (*(v17 + 80) + 24) & ~*(v17 + 80);
      v65 = (v98 + v64 + 7) & 0xFFFFFFFFFFFFFFF8;
      v66 = swift_allocObject();
      *(v66 + 16) = v60;
      (*(v17 + 32))(v66 + v64, v61, v63);
      *(v66 + v65) = a1;
      type metadata accessor for SafetyBlock();
      swift_allocObject();
      v67 = sub_2698D2D5C(sub_2698F9530, v66);
      v68 = *&a1[OBJC_IVAR____TtC27SiriVirtualDeviceResolution23DeviceResolutionService_homeManagerReadyGroup];
      v69 = *&a1[OBJC_IVAR____TtC27SiriVirtualDeviceResolution23DeviceResolutionService_queue];
      v121 = sub_2698F95CC;
      v122 = v67;
      v98 = v67;
      aBlock = MEMORY[0x277D85DD0];
      v118 = 1107296256;
      v100 = &v119;
      v119 = sub_2698D670C;
      v120 = &block_descriptor_240;
      v70 = _Block_copy(&aBlock);
      v109 = v60;
      swift_unknownObjectRetain();
      v99 = a1;

      v71 = v110;
      sub_26990383C();
      v116 = v57;
      sub_2698F8B5C(&qword_28131C478, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E410, &qword_2699074C0);
      sub_2698F94F0(&qword_28131C468, &unk_28033E410);
      v73 = v112;
      v72 = v113;
      sub_269903C5C();
      sub_269903B1C();
      _Block_release(v70);
      v74 = *(v115 + 8);
      v115 += 8;
      v97 = v74;
      (v74)(v73, v72);
      v75 = *(v114 + 8);
      v114 += 8;
      v96 = v75;
      v75(v71, v111);

      ObjectType = swift_getObjectType();
      v77 = v101;
      sub_26990385C();
      v78 = v105;
      *v105 = 2;
      v80 = v107;
      v79 = v108;
      (*(v107 + 104))(v78, *MEMORY[0x277D85188], v108);
      v81 = v102;
      MEMORY[0x26D647DD0](v77, v78);
      v82 = *(v80 + 8);
      v82(v78, v79);
      v83 = *(v103 + 8);
      v84 = v104;
      v83(v77, v104);
      v85 = ObjectType;
      v95 = ObjectType;
      sub_2698F3E00(v78);
      v86 = v106;
      sub_2698F3E74(v106);
      MEMORY[0x26D648110](v81, v78, v86, v85);
      v82(v86, v79);
      v82(v78, v79);
      v83(v81, v84);
      v87 = swift_allocObject();
      v88 = v99;
      v89 = v98;
      *(v87 + 16) = v99;
      *(v87 + 24) = v89;
      v121 = sub_2698F95D4;
      v122 = v87;
      aBlock = MEMORY[0x277D85DD0];
      v118 = 1107296256;
      v119 = sub_2698D670C;
      v120 = &block_descriptor_246;
      v90 = _Block_copy(&aBlock);
      v91 = v88;

      v92 = v110;
      sub_26990383C();
      v93 = v112;
      sub_2698F41D8();
      sub_269903B8C();
      _Block_release(v90);
      (v97)(v93, v113);
      v96(v92, v111);

      sub_269903BAC();
      swift_unknownObjectRelease();

      return;
    }

LABEL_16:
    if (a1[v43] == 1)
    {
      if (qword_28131C480 != -1)
      {
        swift_once();
      }

      v51 = __swift_project_value_buffer(v21, qword_28131C988);
      (*(v22 + 16))(v26, v51, v21);
      v52 = sub_2699037EC();
      v53 = sub_269903AFC();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = a2;
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&dword_2698CD000, v52, v53, "Still waiting on home manager data sync", v55, 2u);
        v56 = v55;
        a2 = v54;
        MEMORY[0x26D648C80](v56, -1, -1);
      }

      (*(v22 + 8))(v26, v21);
    }

    goto LABEL_22;
  }

  __break(1u);
}

void sub_2698F35E4(unsigned __int8 a1, uint64_t a2, uint64_t a3, char *a4)
{
  v43 = a4;
  v45 = a3;
  v4 = a1;
  v5 = sub_2699037FC();
  v41 = *(v5 - 8);
  v42 = v5;
  v6 = *(v41 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E968, &qword_269907838);
  v9 = *(v44 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v44);
  v12 = &v40 - v11;
  v13 = sub_26990379C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v40 - v19;
  swift_getObjectType();
  sub_269903B9C();
  if (v4 == 2)
  {
    if (qword_28131C480 != -1)
    {
      swift_once();
    }

    v21 = v42;
    v22 = __swift_project_value_buffer(v42, qword_28131C988);
    v23 = v41;
    (*(v41 + 16))(v8, v22, v21);
    v24 = sub_2699037EC();
    v25 = sub_269903B0C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_2698CD000, v24, v25, "Timed out waiting for HMHomeManager to be ready", v26, 2u);
      MEMORY[0x26D648C80](v26, -1, -1);
    }

    (*(v23 + 8))(v8, v21);
    sub_2698F967C();
    v27 = swift_allocError();
    *v28 = 0;
    aBlock[0] = v27;
    sub_269903A5C();
  }

  else
  {
    v29 = *&v43[OBJC_IVAR____TtC27SiriVirtualDeviceResolution23DeviceResolutionService_homeManager];
    if (v29)
    {
      v30 = v29;
      sub_26990378C();
      sub_26990377C();
      v31 = *(v14 + 8);
      v31(v18, v13);
      v32 = sub_26990376C();
      v31(v20, v13);
      v33 = v44;
      (*(v9 + 16))(v12, v45, v44);
      v34 = (*(v9 + 80) + 16) & ~*(v9 + 80);
      v35 = swift_allocObject();
      (*(v9 + 32))(v35 + v34, v12, v33);
      v36 = v43;
      *(v35 + ((v10 + v34 + 7) & 0xFFFFFFFFFFFFFFF8)) = v43;
      aBlock[4] = sub_2698F95E4;
      aBlock[5] = v35;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2698F3D60;
      aBlock[3] = &block_descriptor_255;
      v37 = _Block_copy(aBlock);
      v38 = v36;

      v39 = [v30 _refreshBeforeDate_completionHandler_];
      _Block_release(v37);
      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_2698F3A94(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2699037FC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  result = MEMORY[0x28223BE20](v6);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v12 = a1;
    if (qword_28131C480 != -1)
    {
      swift_once();
    }

    v13 = __swift_project_value_buffer(v6, qword_28131C988);
    (*(v7 + 16))(v11, v13, v6);
    v14 = a1;
    v15 = sub_2699037EC();
    v16 = sub_269903B0C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v27 = a2;
      v18 = v17;
      v19 = swift_slowAlloc();
      v28 = v19;
      *v18 = 136315138;
      swift_getErrorValue();
      v20 = sub_269903FFC();
      v22 = sub_2698D9D70(v20, v21, &v28);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_2698CD000, v15, v16, "Failed to refresh HMHomeManager: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x26D648C80](v19, -1, -1);
      MEMORY[0x26D648C80](v18, -1, -1);
    }

    (*(v7 + 8))(v11, v6);
    sub_2698F967C();
    v23 = swift_allocError();
    *v24 = a1;
    v28 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E968, &qword_269907838);
    return sub_269903A5C();
  }

  else
  {
    v25 = *(a3 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution23DeviceResolutionService_homeManager);
    if (v25)
    {
      v28 = *(a3 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution23DeviceResolutionService_homeManager);
      v26 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E968, &qword_269907838);
      return sub_269903A6C();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_2698F3D68(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_2698F3E00@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D85180];
  v3 = sub_26990381C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_2698F3E74@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v2 = *MEMORY[0x277D85168];
  v3 = sub_26990381C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_2698F3EEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26990382C();
  v17 = *(v4 - 8);
  v5 = *(v17 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_26990384C();
  v8 = *(v16 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v16);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution23DeviceResolutionService_queue);
  aBlock[4] = sub_2698F95DC;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2698D670C;
  aBlock[3] = &block_descriptor_249;
  v13 = _Block_copy(aBlock);

  sub_26990383C();
  v18 = MEMORY[0x277D84F90];
  sub_2698F8B5C(&qword_28131C478, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E410, &qword_2699074C0);
  sub_2698F94F0(&qword_28131C468, &unk_28033E410);
  sub_269903C5C();
  MEMORY[0x26D6480A0](0, v11, v7, v13);
  _Block_release(v13);
  (*(v17 + 8))(v7, v4);
  (*(v8 + 8))(v11, v16);
}

uint64_t sub_2698F41D8()
{
  sub_26990382C();
  sub_2698F8B5C(&qword_28131C478, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E410, &qword_2699074C0);
  sub_2698F94F0(&qword_28131C468, &unk_28033E410);
  return sub_269903C5C();
}

void sub_2698F42C4()
{
  OUTLINED_FUNCTION_15();
  v2 = v1;
  OUTLINED_FUNCTION_55();
  v68 = sub_2699037FC();
  v3 = OUTLINED_FUNCTION_3_0(v68);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_43_0();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v58 - v12;
  v14 = *v0;
  v15 = v0[3];
  v16 = v0[6];
  v77 = MEMORY[0x277D84F90];
  v69 = v14;
  v17 = sub_2698FE21C();
  if (v15 == 1 && v16 == 1)
  {
    v22 = [v2 currentHome];
    if (!v22)
    {

      v53 = v68;
      if (qword_28131C480 != -1)
      {
        OUTLINED_FUNCTION_0_11();
        swift_once();
      }

      __swift_project_value_buffer(v53, qword_28131C988);
      OUTLINED_FUNCTION_42_0();
      v54(v13);
      v55 = sub_2699037EC();
      v56 = sub_269903B0C();
      if (os_log_type_enabled(v55, v56))
      {
        OUTLINED_FUNCTION_36_0();
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&dword_2698CD000, v55, v56, "No current home available", v57, 2u);
        OUTLINED_FUNCTION_27_0();
        MEMORY[0x26D648C80]();
      }

      (*(v5 + 8))(v13, v53);
      goto LABEL_46;
    }

    v23 = v22;
    v24 = [v22 rooms];
    sub_2698D23FC(0, &qword_28033E868, 0x277CD1D88);
    v20 = sub_269903A0C();

    v21 = v68;
  }

  else
  {
    v69 = v14;
    v70 = *(v0 + 1);
    v71 = v15;
    v72 = *(v0 + 2);
    v73 = v16;
    v74 = *(v0 + 7);
    v75 = v0[9];
    sub_2698F49B4();
    v20 = v19;
    v21 = v68;
  }

  if (qword_28131C480 != -1)
  {
    goto LABEL_50;
  }

  while (1)
  {
    __swift_project_value_buffer(v21, qword_28131C988);
    OUTLINED_FUNCTION_42_0();
    v25(v10);

    v26 = sub_2699037EC();
    v27 = sub_269903AFC();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 134217984;
      *(v28 + 4) = sub_2698D1C94(v20);

      _os_log_impl(&dword_2698CD000, v26, v27, "No. of rooms matching description: %ld", v28, 0xCu);
      OUTLINED_FUNCTION_27_0();
      MEMORY[0x26D648C80]();
    }

    else
    {
    }

    v29 = *(v5 + 8);
    v5 += 8;
    v29(v10, v21);
    v62 = sub_2698D2A38(v20);
    if (!v62)
    {
      break;
    }

    v30 = 0;
    v61 = v20 & 0xC000000000000001;
    v59 = v20 + 32;
    v10 = v17 + 56;
    v60 = v20;
    while (2)
    {
      v31 = v61;
      sub_2698F7300(v30, v61 == 0, v20);
      if (v31)
      {
        v32 = MEMORY[0x26D6482B0](v30, v20);
      }

      else
      {
        v32 = *(v59 + 8 * v30);
      }

      v33 = __OFADD__(v30, 1);
      v34 = (v30 + 1);
      if (!v33)
      {
        v63 = v32;
        v64 = v34;
        v35 = [v32 accessories];
        v36 = OUTLINED_FUNCTION_48_0();
        sub_2698D23FC(v36, &qword_28033E890, 0x277CD1650);
        OUTLINED_FUNCTION_4();
        v37 = sub_269903A0C();

        v38 = MEMORY[0x277D84F90];
        v76 = MEMORY[0x277D84F90];
        v39 = sub_2698D2A38(v37);
        v40 = 0;
        v67 = v37 & 0xFFFFFFFFFFFFFF8;
        v68 = v37 & 0xC000000000000001;
        v65 = v37;
        v66 = v38;
        v21 = v37 + 32;
        while (v40 != v39)
        {
          if (v68)
          {
            v41 = MEMORY[0x26D6482B0](v40, v65);
          }

          else
          {
            if (v40 >= *(v67 + 16))
            {
              goto LABEL_48;
            }

            v41 = *(v21 + 8 * v40);
          }

          v20 = v41;
          v33 = __OFADD__(v40++, 1);
          if (v33)
          {
            __break(1u);
LABEL_48:
            __break(1u);
            goto LABEL_49;
          }

          if (*(v17 + 16))
          {
            v42 = [v41 category];
            v43 = [v42 categoryType];

            v5 = sub_26990390C();
            v45 = v44;

            if (*(v17 + 16))
            {
              v46 = *(v17 + 40);
              sub_26990404C();
              sub_26990394C();
              v47 = sub_26990408C();
              v48 = ~(-1 << *(v17 + 32));
              while (1)
              {
                v49 = v47 & v48;
                if (((*(v10 + (((v47 & v48) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v47 & v48)) & 1) == 0)
                {
                  break;
                }

                v50 = (*(v17 + 48) + 16 * v49);
                if (*v50 != v5 || v50[1] != v45)
                {
                  v52 = sub_269903FAC();
                  v47 = v49 + 1;
                  if ((v52 & 1) == 0)
                  {
                    continue;
                  }
                }

                goto LABEL_34;
              }
            }
          }

          else
          {
LABEL_34:
            MEMORY[0x26D647F40]();
            if (*((v76 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v76 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_269903A2C();
            }

            sub_269903A3C();
            v66 = v76;
          }
        }

        sub_2698F4908(v66);

        v30 = v64;
        v20 = v60;
        if (v64 != v62)
        {
          continue;
        }

        goto LABEL_40;
      }

      break;
    }

LABEL_49:
    __break(1u);
LABEL_50:
    OUTLINED_FUNCTION_0_11();
    swift_once();
  }

LABEL_40:

LABEL_46:
  OUTLINED_FUNCTION_17();
}

uint64_t sub_2698F4908(unint64_t a1)
{
  v3 = sub_2698D1C94(a1);
  v4 = sub_2698D1C94(*v1);
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_2698F8520(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_2698F8884(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 1)
  {
LABEL_6:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_2698F49B4()
{
  OUTLINED_FUNCTION_15();
  v3 = v2;
  v5 = v4;
  v6 = sub_2699037FC();
  v7 = OUTLINED_FUNCTION_4_4(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_22();
  v119 = sub_2699037DC();
  v12 = OUTLINED_FUNCTION_3_0(v119);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_43_0();
  v19 = v17 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v103 - v21;
  v23 = v5[2];
  v104 = v5[1];
  v24 = v5[3];
  v25 = v5[4];
  v108 = v23;
  v109 = v24;
  v26 = v5[6];
  v118 = v5[5];
  v27 = [v3 currentHome];
  if (!v27)
  {
    if (qword_28131C480 != -1)
    {
      goto LABEL_122;
    }

    goto LABEL_5;
  }

  i = v27;
  v28 = [v3 currentAccessory];
  v107 = [v28 room];

  v105 = i;
  v29 = [i zones];
  sub_2698D23FC(0, &qword_28033E860, 0x277CD1F50);
  v111 = sub_269903A0C();

  v9 = 0x279C71000uLL;
  if (v26 == 1)
  {
    goto LABEL_3;
  }

  if ((v25 & 1) != 0 && v107)
  {
    v34 = v111;
    v35 = sub_2698D2A38(v111);
    v114 = v34 & 0xC000000000000001;
    v115 = v35;
    v112 = (v14 + 8);
    v113 = (v34 + 32);
    v116 = v107;
    v36 = 0;
    v37 = 0;
    v106 = v22;
    while (1)
    {
      v110 = v37;
      if (v36 == v115)
      {

        goto LABEL_44;
      }

      v0 = v114;
      sub_2698F7300(v36, v114 == 0, v111);
      if (v0)
      {
        v38 = MEMORY[0x26D6482B0](v36, v111);
      }

      else
      {
        v38 = v113[v36];
      }

      v39 = __OFADD__(v36, 1);
      v40 = v36 + 1;
      if (v39)
      {
        goto LABEL_120;
      }

      v41 = *(v9 + 2784);
      v118 = v38;
      v42 = [v38 v41];
      v43 = OUTLINED_FUNCTION_48_0();
      sub_2698D23FC(v43, &qword_28033E868, 0x277CD1D88);
      OUTLINED_FUNCTION_4();
      v44 = sub_269903A0C();

      v45 = sub_2698D1C94(v44);
      v117 = v40;
      if (v45)
      {
        v46 = v45;
        v123 = MEMORY[0x277D84F90];
        i = &v123;
        sub_2698F821C(0, v45 & ~(v45 >> 63), 0);
        if (v46 < 0)
        {
          goto LABEL_121;
        }

        v47 = 0;
        v48 = v123;
        do
        {
          if ((v44 & 0xC000000000000001) != 0)
          {
            v49 = MEMORY[0x26D6482B0](v47, v44);
          }

          else
          {
            v49 = *(v44 + 8 * v47 + 32);
          }

          v50 = v49;
          v51 = [v49 uniqueIdentifier];
          sub_2699037BC();

          v123 = v48;
          v53 = *(v48 + 16);
          v52 = *(v48 + 24);
          if (v53 >= v52 >> 1)
          {
            sub_2698F821C(v52 > 1, v53 + 1, 1);
            v48 = v123;
          }

          ++v47;
          *(v48 + 16) = v53 + 1;
          (*(v14 + 32))(v48 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v53, v19, v119);
        }

        while (v46 != v47);

        v9 = 0x279C71000;
        v22 = v106;
      }

      else
      {

        v48 = MEMORY[0x277D84F90];
      }

      v54 = [v116 uniqueIdentifier];
      sub_2699037BC();

      MEMORY[0x28223BE20](v55);
      *(&v103 - 2) = v22;
      v37 = v110;
      v56 = sub_2698F869C(sub_2698F8B3C, (&v103 - 4), v48);

      (*v112)(v22, v119);
      i = v118;
      if (v56)
      {
        break;
      }

      v36 = v117;
    }

    v110 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E558, &qword_2699068F8);
    v65 = swift_allocObject();
    *(v65 + 16) = xmmword_269906860;
    i = i;

    *(v65 + 32) = i;

    v111 = v65;
    goto LABEL_44;
  }

  if (!v26)
  {
LABEL_3:
    v110 = 0;
  }

  else
  {
    v122 = MEMORY[0x277D84F90];
    i = v111;
    v0 = sub_2698D2A38(v111);
    v57 = 0;
    v58 = i & 0xC000000000000001;
    v59 = i & 0xFFFFFFFFFFFFFF8;
    while (v0 != v57)
    {
      if (v58)
      {
        v60 = MEMORY[0x26D6482B0](v57, v111);
      }

      else
      {
        if (v57 >= *(v59 + 16))
        {
          goto LABEL_117;
        }

        v60 = *(v111 + 8 * v57 + 32);
      }

      v61 = v60;
      if (__OFADD__(v57, 1))
      {
        goto LABEL_116;
      }

      v62 = [v60 name];
      v9 = sub_26990390C();
      v64 = v63;

      v123 = v9;
      v124 = v64;
      v120 = v118;
      v121 = v26;
      sub_2698E42D4();
      i = OUTLINED_FUNCTION_46_0();

      if (i)
      {
      }

      else
      {
        i = &v122;
        sub_269903D8C();
        v9 = *(v122 + 16);
        sub_269903DBC();
        sub_269903DCC();
        sub_269903D9C();
      }

      ++v57;
    }

    v110 = 0;
    v111 = v122;
    v9 = 0x279C71000;
  }

LABEL_44:
  v0 = v111;
  v66 = sub_2698D2A38(v111);
  v67 = 0;
  v117 = v0 & 0xC000000000000001;
  v118 = v66;
  v115 = v0 + 32;
  v116 = (v0 & 0xFFFFFFFFFFFFFF8);
  v68 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v67 == v118)
    {

      if (!sub_2698D2A38(v68))
      {

        v91 = [v105 *(v9 + 2784)];
        sub_2698D23FC(0, &qword_28033E868, 0x277CD1D88);
        v68 = sub_269903A0C();
      }

      if (v109 != 1)
      {
        if ((v104 & 1) != 0 && v107)
        {

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E558, &qword_2699068F8);
          v93 = swift_allocObject();
          *(v93 + 16) = xmmword_269906860;
          *(v93 + 32) = v107;
          v92 = v105;
          goto LABEL_93;
        }

        if (v109)
        {
          v122 = MEMORY[0x277D84F90];
          v0 = sub_2698D2A38(v68);
          v94 = 0;
          v95 = v68 & 0xC000000000000001;
          v96 = v68;
          v97 = v68 & 0xFFFFFFFFFFFFFF8;
          while (v0 != v94)
          {
            if (v95)
            {
              v98 = MEMORY[0x26D6482B0](v94, v96);
            }

            else
            {
              if (v94 >= *(v97 + 16))
              {
                goto LABEL_119;
              }

              v98 = *(v96 + 8 * v94 + 32);
            }

            v99 = v98;
            if (__OFADD__(v94, 1))
            {
              goto LABEL_118;
            }

            v100 = [v98 name];
            v9 = sub_26990390C();
            v102 = v101;

            v123 = v9;
            v124 = v102;
            v120 = v108;
            v121 = v109;
            sub_2698E42D4();
            i = OUTLINED_FUNCTION_46_0();

            if (i)
            {
            }

            else
            {
              i = &v122;
              sub_269903D8C();
              v9 = *(v122 + 16);
              sub_269903DBC();
              sub_269903DCC();
              sub_269903D9C();
            }

            ++v94;
          }

          goto LABEL_94;
        }
      }

      v92 = v107;
LABEL_93:

      goto LABEL_94;
    }

    if (v117)
    {
      v69 = MEMORY[0x26D6482B0](v67, v111);
    }

    else
    {
      if (v67 >= *(v116 + 2))
      {
        goto LABEL_109;
      }

      v69 = *(v115 + 8 * v67);
    }

    v70 = v69;
    v39 = __OFADD__(v67++, 1);
    if (v39)
    {
      break;
    }

    v71 = [v69 *(v9 + 2784)];
    v72 = OUTLINED_FUNCTION_48_0();
    sub_2698D23FC(v72, &qword_28033E868, 0x277CD1D88);
    v73 = sub_269903A0C();

    i = v73 >> 62;
    if (v73 >> 62)
    {
      v74 = sub_269903CAC();
    }

    else
    {
      v74 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v75 = v68 >> 62;
    if (v68 >> 62)
    {
      v76 = sub_269903CAC();
    }

    else
    {
      v76 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v0 = v76 + v74;
    if (__OFADD__(v76, v74))
    {
      goto LABEL_110;
    }

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v75)
      {
LABEL_62:
        sub_269903CAC();
      }

      else
      {
        v77 = v68 & 0xFFFFFFFFFFFFFF8;
LABEL_61:
        v78 = *(v77 + 16);
      }

      v68 = sub_269903D6C();
      v77 = v68 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_64;
    }

    if (v75)
    {
      goto LABEL_62;
    }

    v77 = v68 & 0xFFFFFFFFFFFFFF8;
    if (v0 > *((v68 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_61;
    }

LABEL_64:
    v79 = *(v77 + 16);
    v80 = (*(v77 + 24) >> 1) - v79;
    v0 = v77 + 8 * v79;
    v119 = v77;
    if (i)
    {
      if (v73 < 0)
      {
        i = v73;
      }

      else
      {
        i = v73 & 0xFFFFFFFFFFFFFF8;
      }

      v83 = sub_269903CAC();
      if (!v83)
      {
        goto LABEL_81;
      }

      v84 = v83;
      v85 = sub_269903CAC();
      if (v80 < v85)
      {
        goto LABEL_114;
      }

      if (v84 < 1)
      {
        goto LABEL_115;
      }

      v81 = v85;
      v112 = v74;
      v113 = v67;
      v114 = v68;
      v0 += 32;
      sub_2698F94F0(&qword_28033E878, &qword_28033E870);
      for (i = 0; i != v84; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E870, &unk_269907770);
        v86 = sub_2698F8AB0(&v123, i, v73);
        v88 = *v87;
        (v86)(&v123, 0);
        *(v0 + 8 * i) = v88;
      }

      v9 = 0x279C71000;
      v67 = v113;
      v68 = v114;
      v74 = v112;
LABEL_77:

      if (v81 < v74)
      {
        goto LABEL_111;
      }

      if (v81 > 0)
      {
        v89 = *(v119 + 16);
        v39 = __OFADD__(v89, v81);
        v90 = v89 + v81;
        if (v39)
        {
          goto LABEL_112;
        }

        *(v119 + 16) = v90;
      }
    }

    else
    {
      v81 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v81)
      {
        if (v80 < v81)
        {
          goto LABEL_113;
        }

        v82 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
        swift_arrayInitWithCopy();
        goto LABEL_77;
      }

LABEL_81:

      if (v74 > 0)
      {
        goto LABEL_111;
      }
    }
  }

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
  OUTLINED_FUNCTION_0_11();
  swift_once();
LABEL_5:
  v30 = __swift_project_value_buffer(v0, qword_28131C988);
  (*(v9 + 16))(i, v30, v0);
  v31 = sub_2699037EC();
  v32 = sub_269903B0C();
  if (os_log_type_enabled(v31, v32))
  {
    OUTLINED_FUNCTION_36_0();
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_2698CD000, v31, v32, "No current home available", v33, 2u);
    OUTLINED_FUNCTION_27_0();
    MEMORY[0x26D648C80]();
  }

  (*(v9 + 8))(i, v0);
LABEL_94:
  OUTLINED_FUNCTION_17();
}

void sub_2698F55EC()
{
  v1 = sub_2699037FC();
  v2 = OUTLINED_FUNCTION_3_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_22();
  v7 = OBJC_IVAR____TtC27SiriVirtualDeviceResolution23DeviceResolutionService_initialLoadDone;
  if ((*(v0 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution23DeviceResolutionService_initialLoadDone) & 1) == 0)
  {
    if (qword_28131C480 != -1)
    {
      OUTLINED_FUNCTION_0_11();
      swift_once();
    }

    __swift_project_value_buffer(v1, qword_28131C988);
    v8 = OUTLINED_FUNCTION_50();
    v9(v8);
    v10 = sub_2699037EC();
    v11 = sub_269903AFC();
    if (os_log_type_enabled(v10, v11))
    {
      OUTLINED_FUNCTION_36_0();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_59(&dword_2698CD000, v12, v13, "Home manager updated homes");
      OUTLINED_FUNCTION_27_0();
      MEMORY[0x26D648C80]();
    }

    (*(v4 + 8))(v0, v1);
    *(v0 + v7) = 1;
    dispatch_group_leave(*(v0 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution23DeviceResolutionService_homeManagerReadyGroup));
  }
}

void sub_2698F57C0()
{
  v1 = sub_2699037FC();
  v2 = OUTLINED_FUNCTION_3_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_22();
  v7 = *(v0 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution23DeviceResolutionService_homeManager);
  if (v7)
  {
    if (([v7 isDataSyncInProgress] & 1) == 0)
    {
      if (qword_28131C480 != -1)
      {
        OUTLINED_FUNCTION_0_11();
        swift_once();
      }

      __swift_project_value_buffer(v1, qword_28131C988);
      v8 = OUTLINED_FUNCTION_50();
      v9(v8);
      v10 = sub_2699037EC();
      v11 = sub_269903AFC();
      if (os_log_type_enabled(v10, v11))
      {
        OUTLINED_FUNCTION_36_0();
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_59(&dword_2698CD000, v12, v13, "Home manager data sync finished");
        OUTLINED_FUNCTION_27_0();
        MEMORY[0x26D648C80]();
      }

      (*(v4 + 8))(v0, v1);
      dispatch_group_leave(*(v0 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution23DeviceResolutionService_homeManagerReadyGroup));
      *(v0 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution23DeviceResolutionService_waitingOnHomeManagerDataSync) = 0;
    }
  }

  else
  {
    __break(1u);
  }
}

id DeviceResolutionService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeviceResolutionService();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2698F5AB8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2698F5B48;

  return sub_2698E84C0();
}

uint64_t sub_2698F5B48()
{
  OUTLINED_FUNCTION_22_1();
  v3 = v2;
  OUTLINED_FUNCTION_23_1();
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_11_1();
  *v7 = v6;

  v9 = *(v6 + 8);
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_2698F5C38()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2698F9CD0;

  return sub_2698E8C34();
}

uint64_t sub_2698F5CC8(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2698F9CD0;

  return sub_2698ECA2C(a1);
}

uint64_t sub_2698F5D60()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2698F9CD0;

  return sub_2698E968C();
}

uint64_t sub_2698F5DF8(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2698F9CD0;

  return sub_2698EE6BC(a1, a2);
}

uint64_t sub_2698F5EA0(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2698F9CD0;

  return sub_2698EF114(a1);
}

uint64_t sub_2698F5FA4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2698F9CD0;

  return sub_2698EAE00();
}

id sub_2698F604C()
{
  v1 = sub_2699038FC();

  v2 = sub_269903A9C();

  v3 = [v0 initWithKey:v1 valueSet:v2];

  return v3;
}

uint64_t type metadata accessor for DeviceResolutionService()
{
  result = qword_28131C5A8;
  if (!qword_28131C5A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2698F6124()
{
  result = qword_28033E7E8;
  if (!qword_28033E7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033E7E8);
  }

  return result;
}

void sub_2698F6180()
{
  sub_2698F6D48();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of DeviceResolutionService.pairedCompanionDevice()()
{
  OUTLINED_FUNCTION_6_1();
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x128);
  v7 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_7_1(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_5_2(v4);

  return v7();
}

uint64_t sub_2698F6428()
{
  OUTLINED_FUNCTION_22_1();
  v2 = v1;
  OUTLINED_FUNCTION_23_1();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_11_1();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

uint64_t dispatch thunk of DeviceResolutionService.meDevice()()
{
  OUTLINED_FUNCTION_6_1();
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x130);
  v7 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_7_1(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_5_2(v4);

  return v7();
}

uint64_t dispatch thunk of DeviceResolutionService.devices(matchingAny:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = v1;
  v3 = *((*MEMORY[0x277D85000] & *v0) + 0x138);
  v9 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_7_1(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_5_2(v6);

  return v9(v2);
}

uint64_t dispatch thunk of DeviceResolutionService.homeAutomationAccessories(matchingAny:checkForReachability:)()
{
  OUTLINED_FUNCTION_9_1();
  v2 = v1;
  v4 = v3;
  v5 = *((*MEMORY[0x277D85000] & *v0) + 0x140);
  v11 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_7_1(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_5_2(v8);

  return v11(v4, v2);
}

uint64_t dispatch thunk of DeviceResolutionService.devicesMatching(capabilityDescriptions:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = v1;
  v3 = *((*MEMORY[0x277D85000] & *v0) + 0x148);
  v9 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_7_1(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_5_2(v6);

  return v9(v2);
}

uint64_t dispatch thunk of DeviceResolutionService.devicesWithProximity(closerBound:fartherBound:)()
{
  OUTLINED_FUNCTION_9_1();
  v2 = v1;
  v4 = v3;
  v5 = *((*MEMORY[0x277D85000] & *v0) + 0x150);
  v11 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_7_1(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_5_2(v8);

  return v11(v4, v2);
}

uint64_t dispatch thunk of DeviceResolutionService.sourceDevices(for:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = v1;
  v3 = *((*MEMORY[0x277D85000] & *v0) + 0x158);
  v9 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_7_1(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_5_2(v6);

  return v9(v2);
}

void sub_2698F6D48()
{
  if (!qword_28131C758)
  {
    sub_2699037DC();
    v0 = sub_269903C0C();
    if (!v1)
    {
      atomic_store(v0, &qword_28131C758);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for DeviceResolutionService.XPCError(_BYTE *result, int a2, int a3)
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

uint64_t sub_2698F6E58(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2698F6EA8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_2698F6EFC(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_2698F6F14(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_2698F6F44(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2698F703C;

  return v7(a1);
}

uint64_t sub_2698F703C()
{
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_23_1();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_11_1();
  *v4 = v3;

  OUTLINED_FUNCTION_26_0();

  return v5();
}

char *sub_2698F7120(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E258, &unk_269905FE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2698F7228(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_2699037DC(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    v7 = sub_2699037DC();

    return MEMORY[0x2821FE828](a3, a1, a2, v7);
  }

  else if (a3 != a1)
  {

    return MEMORY[0x2821FE820](a3, a1, a2, result);
  }

  return result;
}

unint64_t sub_2698F7300(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

void sub_2698F7324(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033EA00, qword_269907870);
    v2 = sub_269903EEC();
    v17 = v2;
    sub_269903E1C();
    while (1)
    {
      v3 = sub_269903E9C();
      if (!v3)
      {

        return;
      }

      v15 = v3;
      sub_2698D23FC(0, &qword_28033E220, 0x277CEF240);
      swift_dynamicCast();
      sub_2698D23FC(0, &qword_28131C410, 0x277CCABB0);
      swift_dynamicCast();
      v4 = *(v2 + 16);
      if (*(v2 + 24) <= v4)
      {
        sub_2698F7970(v4 + 1, 1, &unk_28033EA00, qword_269907870);
      }

      v2 = v17;
      v5 = *(v17 + 40);
      v6 = sub_269903BDC();
      v7 = v17 + 64;
      v8 = v6 & ~(-1 << *(v17 + 32));
      if (((-1 << v8) & ~*(v17 + 64 + 8 * (v8 >> 6))) == 0)
      {
        break;
      }

      v9 = __clz(__rbit64((-1 << v8) & ~*(v17 + 64 + 8 * (v8 >> 6)))) | v8 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
      *(*(v17 + 48) + 8 * v9) = v16;
      *(*(v17 + 56) + 8 * v9) = v15;
      ++*(v17 + 16);
    }

    OUTLINED_FUNCTION_52();
    while (++v10 != v12 || (v11 & 1) == 0)
    {
      v13 = v10 == v12;
      if (v10 == v12)
      {
        v10 = 0;
      }

      v11 |= v13;
      v14 = *(v7 + 8 * v10);
      if (v14 != -1)
      {
        v9 = __clz(__rbit64(~v14)) + (v10 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

uint64_t sub_2698F7554(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E958, &qword_269907830);
    v2 = sub_269903EEC();
    v18 = v2;
    sub_269903E1C();
    while (1)
    {
      v3 = sub_269903E9C();
      if (!v3)
      {

        return v2;
      }

      v16 = v3;
      type metadata accessor for DeviceUnit();
      swift_dynamicCast();
      sub_2698D23FC(0, &qword_28033E890, 0x277CD1650);
      swift_dynamicCast();
      v4 = *(v2 + 16);
      if (*(v2 + 24) <= v4)
      {
        sub_2698F7970(v4 + 1, 1, &qword_28033E958, &qword_269907830);
      }

      v2 = v18;
      v5 = *(v18 + 40);
      result = sub_269903BDC();
      v7 = v18 + 64;
      v8 = -1 << *(v18 + 32);
      v9 = result & ~v8;
      v10 = v9 >> 6;
      if (((-1 << v9) & ~*(v18 + 64 + 8 * (v9 >> 6))) == 0)
      {
        break;
      }

      v11 = __clz(__rbit64((-1 << v9) & ~*(v18 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v18 + 48) + 8 * v11) = v17;
      *(*(v18 + 56) + 8 * v11) = v16;
      ++*(v18 + 16);
    }

    v12 = 0;
    v13 = (63 - v8) >> 6;
    while (++v10 != v13 || (v12 & 1) == 0)
    {
      v14 = v10 == v13;
      if (v10 == v13)
      {
        v10 = 0;
      }

      v12 |= v14;
      v15 = *(v7 + 8 * v10);
      if (v15 != -1)
      {
        v11 = __clz(__rbit64(~v15)) + (v10 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_2698F777C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E8E8, &qword_2699077C8);
    v2 = sub_269903EEC();
    v18 = v2;
    sub_269903E1C();
    while (1)
    {
      v3 = sub_269903E9C();
      if (!v3)
      {

        return v2;
      }

      v16 = v3;
      type metadata accessor for DeviceUnit();
      swift_dynamicCast();
      type metadata accessor for Capabilities();
      swift_dynamicCast();
      v4 = *(v2 + 16);
      if (*(v2 + 24) <= v4)
      {
        sub_2698F7BB8(v4 + 1, 1);
      }

      v2 = v18;
      v5 = *(v18 + 40);
      result = sub_269903BDC();
      v7 = v18 + 64;
      v8 = -1 << *(v18 + 32);
      v9 = result & ~v8;
      v10 = v9 >> 6;
      if (((-1 << v9) & ~*(v18 + 64 + 8 * (v9 >> 6))) == 0)
      {
        break;
      }

      v11 = __clz(__rbit64((-1 << v9) & ~*(v18 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v18 + 48) + 8 * v11) = v17;
      *(*(v18 + 56) + 8 * v11) = v16;
      ++*(v18 + 16);
    }

    v12 = 0;
    v13 = (63 - v8) >> 6;
    while (++v10 != v13 || (v12 & 1) == 0)
    {
      v14 = v10 == v13;
      if (v10 == v13)
      {
        v10 = 0;
      }

      v12 |= v14;
      v15 = *(v7 + 8 * v10);
      if (v15 != -1)
      {
        v11 = __clz(__rbit64(~v15)) + (v10 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_2698F7970(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v9 = sub_269903EDC();
  if (!*(v7 + 16))
  {

LABEL_31:
    *v5 = v9;
    return;
  }

  v39 = v5;
  v10 = 0;
  v12 = (v7 + 64);
  v11 = *(v7 + 64);
  v13 = *(v7 + 32);
  OUTLINED_FUNCTION_37_0();
  v16 = v15 & v14;
  v18 = (v17 + 63) >> 6;
  v19 = v9 + 64;
  if ((v15 & v14) == 0)
  {
LABEL_6:
    v21 = v10;
    while (1)
    {
      v10 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v10 >= v18)
      {
        break;
      }

      v22 = v12[v10];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_11;
      }
    }

    if (a2)
    {
      v38 = 1 << *(v7 + 32);
      if (v38 >= 64)
      {
        sub_2698FE8C4(0, (v38 + 63) >> 6, v7 + 64);
      }

      else
      {
        *v12 = -1 << v38;
      }

      *(v7 + 16) = 0;
    }

    v5 = v39;
    goto LABEL_31;
  }

  while (1)
  {
    v20 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
LABEL_11:
    v23 = v20 | (v10 << 6);
    v24 = *(*(v7 + 48) + 8 * v23);
    v25 = *(*(v7 + 56) + 8 * v23);
    if ((a2 & 1) == 0)
    {
      v26 = v24;
      v27 = v25;
    }

    v28 = *(v9 + 40);
    v29 = sub_269903BDC();
    v30 = -1 << *(v9 + 32);
    v31 = v29 & ~v30;
    v32 = v31 >> 6;
    if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
    {
      break;
    }

    v33 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_22:
    *(v19 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
    *(*(v9 + 48) + 8 * v33) = v24;
    *(*(v9 + 56) + 8 * v33) = v25;
    ++*(v9 + 16);
    if (!v16)
    {
      goto LABEL_6;
    }
  }

  v34 = 0;
  v35 = (63 - v30) >> 6;
  while (++v32 != v35 || (v34 & 1) == 0)
  {
    v36 = v32 == v35;
    if (v32 == v35)
    {
      v32 = 0;
    }

    v34 |= v36;
    v37 = *(v19 + 8 * v32);
    if (v37 != -1)
    {
      v33 = __clz(__rbit64(~v37)) + (v32 << 6);
      goto LABEL_22;
    }
  }

LABEL_33:
  __break(1u);
}

uint64_t sub_2698F7BB8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E8E8, &qword_2699077C8);
  result = sub_269903EDC();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_33:

LABEL_34:
    *v3 = v8;
    return result;
  }

  v33 = v3;
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

    if ((a2 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      sub_2698FE8C4(0, (v32 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v10 = -1 << v32;
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
    if ((a2 & 1) == 0)
    {
      v22 = v20;
    }

    v23 = *(v8 + 40);
    result = sub_269903BDC();
    v24 = -1 << *(v8 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
    {
      break;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v15 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    *(*(v8 + 48) + 8 * v27) = v20;
    *(*(v8 + 56) + 8 * v27) = v21;
    ++*(v8 + 16);
    if (!v13)
    {
      goto LABEL_9;
    }
  }

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
    v31 = *(v15 + 8 * v26);
    if (v31 != -1)
    {
      v27 = __clz(__rbit64(~v31)) + (v26 << 6);
      goto LABEL_25;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_2698F7E24(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_2699037DC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E908, &qword_2699077E0);
  v43 = a2;
  result = sub_269903EDC();
  v14 = result;
  if (!*(v11 + 16))
  {
LABEL_34:

LABEL_35:
    *v3 = v14;
    return result;
  }

  v47 = v10;
  v39 = v3;
  v15 = 0;
  v16 = (v11 + 64);
  v17 = 1 << *(v11 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & *(v11 + 64);
  v20 = (v17 + 63) >> 6;
  v40 = (v7 + 16);
  v41 = v11;
  v42 = v7;
  v44 = (v7 + 32);
  v21 = result + 64;
  if (!v19)
  {
LABEL_9:
    v23 = v15;
    while (1)
    {
      v15 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v15 >= v20)
      {
        break;
      }

      v24 = v16[v15];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v19 = (v24 - 1) & v24;
        goto LABEL_14;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_35;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      sub_2698FE8C4(0, (v37 + 63) >> 6, v16);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
    goto LABEL_34;
  }

  while (1)
  {
    v22 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
LABEL_14:
    v25 = v22 | (v15 << 6);
    v26 = *(v11 + 48);
    v46 = *(v42 + 72);
    v27 = v26 + v46 * v25;
    if (v43)
    {
      (*v44)(v47, v27, v6);
      v45 = *(*(v11 + 56) + 8 * v25);
    }

    else
    {
      (*v40)(v47, v27, v6);
      v45 = *(*(v11 + 56) + 8 * v25);
    }

    v28 = *(v14 + 40);
    sub_2698F8B5C(&qword_28131C768, MEMORY[0x277CC95F0]);
    result = sub_2699038DC();
    v29 = -1 << *(v14 + 32);
    v30 = result & ~v29;
    v31 = v30 >> 6;
    if (((-1 << v30) & ~*(v21 + 8 * (v30 >> 6))) == 0)
    {
      break;
    }

    v32 = __clz(__rbit64((-1 << v30) & ~*(v21 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v21 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
    result = (*v44)(*(v14 + 48) + v46 * v32, v47, v6);
    *(*(v14 + 56) + 8 * v32) = v45;
    ++*(v14 + 16);
    v11 = v41;
    if (!v19)
    {
      goto LABEL_9;
    }
  }

  v33 = 0;
  v34 = (63 - v29) >> 6;
  while (++v31 != v34 || (v33 & 1) == 0)
  {
    v35 = v31 == v34;
    if (v31 == v34)
    {
      v31 = 0;
    }

    v33 |= v35;
    v36 = *(v21 + 8 * v31);
    if (v36 != -1)
    {
      v32 = __clz(__rbit64(~v36)) + (v31 << 6);
      goto LABEL_26;
    }
  }

LABEL_37:
  __break(1u);
  return result;
}

void *sub_2698F81FC(void *a1, int64_t a2, char a3)
{
  result = sub_2698F823C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2698F821C(size_t a1, int64_t a2, char a3)
{
  result = sub_2698F836C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2698F823C(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E8B8, &qword_2699077A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[2 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E8C0, &qword_2699077B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_2698F836C(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E888, &unk_269907780);
  v10 = *(sub_2699037DC() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_2699037DC() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_2698F7228(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_2698F8520(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if ((result & 1) == 0 || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0 || a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v3 >> 62)
    {
      sub_269903CAC();
    }

    else
    {
      v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    result = sub_269903D6C();
    *v1 = result;
  }

  return result;
}

uint64_t sub_2698F85C8()
{
  sub_2699037DC();
  sub_2698F8B5C(&qword_28033E880, MEMORY[0x277CC95F0]);
  return sub_2699038EC() & 1;
}

uint64_t sub_2698F8658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_269903FAC() & 1;
  }
}

BOOL sub_2698F869C(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    v8 = v6;
    if (v7 == v6)
    {
      break;
    }

    v9 = *(sub_2699037DC() - 8);
    v10 = a1(a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v8);
    if (v3)
    {
      break;
    }

    v6 = v8 + 1;
  }

  while ((v10 & 1) == 0);
  return v7 != v8;
}

BOOL sub_2698F8770(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

uint64_t sub_2698F8820(void *a1)
{
  v1 = [a1 homeKitAccessoryIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_26990390C();

  return v3;
}

uint64_t sub_2698F8884(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_269903CAC();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_2698D1C94(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_2698D23FC(0, &qword_28033E890, 0x277CD1650);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_2698F94F0(&qword_28033E898, &qword_28033E7A8);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E7A8, &qword_269907518);
          v9 = sub_2698F8A1C(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_2698F8A1C(void *a1, unint64_t a2, uint64_t a3))(id *a1)
{
  v6 = sub_2698CF608(a3);
  sub_2698F7300(a2, v6, a3);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v7 = MEMORY[0x26D6482B0](a2, a3);
  }

  *a1 = v7;
  return sub_2698F8AA8;
}

void (*sub_2698F8AB0(void *a1, unint64_t a2, uint64_t a3))(id *)
{
  v6 = sub_2698CF608(a3);
  sub_2698F7300(a2, v6, a3);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v7 = MEMORY[0x26D6482B0](a2, a3);
  }

  *a1 = v7;
  return sub_2698F9C24;
}

uint64_t sub_2698F8B5C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2698F8BA0()
{
  result = qword_28033E8A0;
  if (!qword_28033E8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033E8A0);
  }

  return result;
}

uint64_t sub_2698F8CAC(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_2698D23FC(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2698F8D04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E900, &qword_2699077D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2698F8DB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E910, &qword_2699077E8);
  OUTLINED_FUNCTION_25_1(v2);
  v4 = *(v3 + 80);
  OUTLINED_FUNCTION_41_0();

  return sub_2698EF968(a1);
}

void sub_2698F8E48(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E918, &qword_2699077F0);
  OUTLINED_FUNCTION_25_1(v3);
  v5 = *(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);

  sub_2698EEEDC(a1, v6, v7);
}

uint64_t objectdestroy_154Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_4_4(v3);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = *(v6 + 64);

  v8 = *(v2 + 24);

  v9 = OUTLINED_FUNCTION_15_1();
  v10(v9);
  v11 = OUTLINED_FUNCTION_18_1();

  return MEMORY[0x2821FE8E8](v11, v12, v13);
}

uint64_t sub_2698F8F94(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_25_1(v4);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = v3 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return a3(v6, v7, v8);
}

uint64_t sub_2698F9004(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E920, &unk_2699077F8);
  OUTLINED_FUNCTION_39_0(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = *(v7 + 64);
  OUTLINED_FUNCTION_38_0();
  v12 = *(v1 + v11);
  v13 = *(v1 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_2698EDD80(a1, (v1 + v10), v12, v13);
}

uint64_t sub_2698F90A8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E930, &unk_269907808);
  OUTLINED_FUNCTION_25_1(v1);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = v0 + ((*(v2 + 80) + 41) & ~*(v2 + 80));

  return sub_2698EB63C(v3, v4, v5, v6, v7);
}

void sub_2698F91E0(uint64_t a1, uint64_t a2)
{
  v2 = OUTLINED_FUNCTION_51(a1, a2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_25_1(v4);
  v6 = *(v5 + 80);
  OUTLINED_FUNCTION_41_0();
  sub_2698EC0A8();
}

uint64_t sub_2698F92EC(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_25_1(v4);
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3 + ((*(v5 + 80) + 40) & ~*(v5 + 80));

  return a3(v6, v7, v8, v9);
}

uint64_t objectdestroy_204Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_4_4(v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v7 = *(v6 + 64);
  v8 = *(v2 + 16);

  v9 = OUTLINED_FUNCTION_15_1();
  v10(v9);
  v11 = OUTLINED_FUNCTION_18_1();

  return MEMORY[0x2821FE8E8](v11, v12, v13);
}

uint64_t sub_2698F943C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = OUTLINED_FUNCTION_51(a1, a2);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_25_1(v8);
  v10 = *(v4 + 16);
  v11 = v4 + ((*(v9 + 80) + 24) & ~*(v9 + 80));

  return a4(a1, v10, v11);
}

uint64_t sub_2698F94F0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_51(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    OUTLINED_FUNCTION_4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2698F9530(unsigned __int8 a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E968, &qword_269907838);
  OUTLINED_FUNCTION_39_0(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v9 = *(v7 + 64);
  OUTLINED_FUNCTION_38_0();
  v11 = *(v1 + 16);
  v13 = *(v1 + v12);

  sub_2698F35E4(a1, v11, v1 + v10, v13);
}

uint64_t sub_2698F95E4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E968, &qword_269907838);
  OUTLINED_FUNCTION_39_0(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = *(v7 + 64);
  OUTLINED_FUNCTION_38_0();
  v12 = *(v1 + v11);

  return sub_2698F3A94(a1, v1 + v10, v12);
}

unint64_t sub_2698F967C()
{
  result = qword_28033E9F0;
  if (!qword_28033E9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033E9F0);
  }

  return result;
}

uint64_t sub_2698F96F8(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_25_1(v3);
  v5 = *(v4 + 80);
  v6 = OUTLINED_FUNCTION_54();

  return a3(v6);
}

uint64_t sub_2698F975C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E9F8, &qword_269907850);
  OUTLINED_FUNCTION_25_1(v2);
  v4 = *(v3 + 80);
  OUTLINED_FUNCTION_41_0();
  return sub_2698E9610(a1);
}

uint64_t objectdestroy_230Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_4_4(v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v7 = *(v6 + 64);

  v8 = OUTLINED_FUNCTION_15_1();
  v9(v8);
  v10 = OUTLINED_FUNCTION_18_1();

  return MEMORY[0x2821FE8E8](v10, v11, v12);
}

uint64_t objectdestroy_160Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_17_1(v3);
  v5 = *(v4 + 64);
  (*(v4 + 8))(v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80)));
  v6 = OUTLINED_FUNCTION_53();

  return MEMORY[0x2821FE8E8](v6, v7, v8);
}

uint64_t sub_2698F9914(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E790, &qword_2699074C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2698F9984(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_51(a1, a2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_17_1(v5);
  (*(v6 + 8))(a1);
  return a1;
}

uint64_t sub_2698F99D4()
{
  OUTLINED_FUNCTION_6_1();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_7_1(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_31_0(v4);

  return v7(v6);
}

uint64_t sub_2698F9A6C()
{
  OUTLINED_FUNCTION_6_1();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_7_1(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_31_0(v4);

  return v7(v6);
}

uint64_t sub_2698F9B04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E8B0, &qword_2699077A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_26_0()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_31_0(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

int8x16_t OUTLINED_FUNCTION_35_0(int8x16_t *a1)
{
  *(v2 + 56) = a1;
  result = vextq_s8(*(v2 + 24), *(v2 + 24), 8uLL);
  a1[1] = result;
  a1[2].i64[0] = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_40_0(uint64_t result)
{
  *(v2 + 32) = result;
  *(result + 16) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_46_0()
{

  return MEMORY[0x28211F310](v1 - 144, v0, v0);
}

void OUTLINED_FUNCTION_59(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_60()
{

  return swift_task_alloc();
}

uint64_t sub_2698FA024()
{
  sub_2698FA18C();
  result = sub_269903BFC();
  qword_28131C9A0 = result;
  return result;
}

uint64_t sub_2698FA090()
{
  sub_2698FA18C();
  result = sub_269903BFC();
  qword_280340D90 = result;
  return result;
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

unint64_t sub_2698FA18C()
{
  result = qword_28131C3E8;
  if (!qword_28131C3E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28131C3E8);
  }

  return result;
}

uint64_t sub_2698FA1FC(uint64_t a1, uint64_t *a2, void *a3, id *a4)
{
  v7 = sub_2699037FC();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v8 = *a4;
  return sub_26990380C();
}

uint64_t sub_2698FA308()
{
  v1 = (v0 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution26AssistantEnabledCapability_key);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_2698FA3D0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution26AssistantEnabledCapability_key);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_2698FA430(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_2698FA3D0(v2, v3);
}

id AssistantEnabledCapability.init(status:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC27SiriVirtualDeviceResolution26AssistantEnabledCapability_primitivesMap;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E1A0, &qword_269906120);
  *&v1[v3] = sub_2699038BC();
  v10.receiver = v1;
  v10.super_class = OUTLINED_FUNCTION_0_12(OBJC_IVAR____TtC27SiriVirtualDeviceResolution26AssistantEnabledCapability_key);
  v4 = objc_msgSendSuper2(&v10, sel_init);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E1A8, qword_269905F60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269905F20;
  *(inited + 32) = 0xD000000000000029;
  *(inited + 40) = 0x8000000269908EF0;
  objc_allocWithZone(type metadata accessor for BooleanCapabilityPrimitive());
  v6 = v4;
  *(inited + 48) = sub_2698DBE0C(a1);
  v7 = sub_2699038BC();
  v8 = sub_2698D0418(v7);

  sub_2698D0AE0(9, v8);

  return v6;
}

uint64_t sub_2698FA6B8()
{
  v1 = *(v0 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution26AssistantEnabledCapability_primitivesMap);

  v2 = sub_2698D0C90(0xD000000000000029, 0x8000000269908EF0, v1);

  if (!v2)
  {
    return 0;
  }

  type metadata accessor for BooleanCapabilityPrimitive();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = *(v3 + OBJC_IVAR___SVDBooleanCapabilityPrimitive_supportStatus);
  }

  else
  {
    v4 = 0;
  }

  swift_unknownObjectRelease();
  return v4;
}

char *sub_2698FA7D4(uint64_t a1)
{
  result = sub_2698D2A38(a1);
  v3 = 0;
  v17 = OBJC_IVAR____TtC27SiriVirtualDeviceResolution26AssistantEnabledCapability_primitivesMap;
  v19 = result;
  while (1)
  {
    v4 = v3;
    if (v19 == v3)
    {
      return (v19 == v4);
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x26D6482B0](v3, a1);
    }

    else
    {
      if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      result = *(a1 + 8 * v3 + 32);
    }

    v5 = result;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    v7 = *&result[OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_key];
    v6 = *&result[OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_key + 8];
    OUTLINED_FUNCTION_1_1();
    if ((sub_26990399C() & 1) == 0)
    {
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_1_1();
    if ((sub_26990399C() & 1) == 0)
    {
LABEL_17:

      return (v19 == v4);
    }

    OUTLINED_FUNCTION_1_1();
    v8 = sub_26990395C();
    v9 = sub_2698D0124(v8, v7, v6);
    MEMORY[0x26D647E90](v9);

    v10 = sub_269903F0C();

    if (v10 || (v11 = *(v18 + v17), !*(v11 + 16)))
    {
LABEL_16:

      return (v19 == v4);
    }

    v12 = *(v18 + v17);

    v13 = sub_2698D1D34(v7, v6);
    if ((v14 & 1) == 0)
    {
      goto LABEL_17;
    }

    v15 = *(*(v11 + 56) + 16 * v13);
    swift_unknownObjectRetain();

    type metadata accessor for BooleanCapabilityPrimitive();
    if (!swift_dynamicCastClass())
    {

      swift_unknownObjectRelease();
      return (v19 == v4);
    }

    swift_unknownObjectRetain();
    v16 = sub_2698DBF48(v5);

    result = swift_unknownObjectRelease_n();
    v3 = v4 + 1;
    if ((v16 & 1) == 0)
    {
      return (v19 == v4);
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}