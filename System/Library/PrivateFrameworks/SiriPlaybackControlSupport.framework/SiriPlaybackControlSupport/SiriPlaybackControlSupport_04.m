uint64_t sub_268BFEA30(char a1, const char *a2)
{
  v6 = sub_268C15A1C();
  v7 = OUTLINED_FUNCTION_2_2(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_3();
  v20[3] = &type metadata for Features;
  v20[4] = sub_268BFF138();
  LOBYTE(v20[0]) = a1;
  v12 = sub_268C153AC();
  __swift_destroy_boxed_opaque_existential_0(v20);
  if (qword_2802CDBE0 != -1)
  {
    OUTLINED_FUNCTION_18();
  }

  __swift_project_value_buffer(v2, qword_2802D2F10);
  v13 = *(v9 + 16);
  v14 = OUTLINED_FUNCTION_11_7();
  v15(v14);
  v16 = sub_268C159FC();
  v17 = sub_268C15DDC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = OUTLINED_FUNCTION_14_6();
    *v18 = 67109120;
    *(v18 + 4) = v12 & 1;
    _os_log_impl(&dword_268BAD000, v16, v17, a2, v18, 8u);
    OUTLINED_FUNCTION_30();
  }

  (*(v9 + 8))(v3, v2);
  return v12 & 1;
}

Swift::Bool __swiftcall PlaybackControlsFeatureFlagProvider.isCoordinatedVolumeEnabled()()
{
  v0 = sub_268C15A1C();
  v1 = OUTLINED_FUNCTION_2_2(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_5_9();
  v9 = sub_268BFD940(0xD000000000000012, v6, v7, v8);
  v10 = v9;
  if (qword_2802CDBE0 != -1)
  {
    v9 = OUTLINED_FUNCTION_18();
  }

  OUTLINED_FUNCTION_4_10(v9, qword_2802D2F10);
  v11 = OUTLINED_FUNCTION_11_7();
  v12(v11);
  v13 = sub_268C159FC();
  v14 = sub_268C15DDC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = OUTLINED_FUNCTION_14_6();
    *v15 = 67109120;
    v15[1] = v10 & 1;
    OUTLINED_FUNCTION_12_7(&dword_268BAD000, v16, v17, "FeatureFlagProvider#isCoordinatedVolumeEnabled Feature flag: %{BOOL}d");
    OUTLINED_FUNCTION_37_0();
  }

  (*(v3 + 8))();
  return v10 & 1;
}

Swift::Bool __swiftcall PlaybackControlsFeatureFlagProvider.isUnifySiriLocalVolumeEnabled()()
{
  v0 = sub_268C15A1C();
  v1 = OUTLINED_FUNCTION_2_2(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_5_9();
  v9 = sub_268BFD940(0xD000000000000017, v6, v7, v8);
  v10 = v9;
  if (qword_2802CDBE0 != -1)
  {
    v9 = OUTLINED_FUNCTION_18();
  }

  OUTLINED_FUNCTION_4_10(v9, qword_2802D2F10);
  v11 = OUTLINED_FUNCTION_11_7();
  v12(v11);
  v13 = sub_268C159FC();
  v14 = sub_268C15DDC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = OUTLINED_FUNCTION_14_6();
    *v15 = 67109120;
    v15[1] = v10 & 1;
    OUTLINED_FUNCTION_12_7(&dword_268BAD000, v16, v17, "FeatureFlagProvider#isUnifySiriLocalVolumeEnabled Feature flag: %{BOOL}d");
    OUTLINED_FUNCTION_37_0();
  }

  (*(v3 + 8))();
  return v10 & 1;
}

const char *sub_268BFEF90(char a1)
{
  result = "media_controls_on_sirix";
  switch(a1)
  {
    case 1:
      result = "media_controls_on_sirix_v2";
      break;
    case 2:
      result = "response_framework";
      break;
    case 3:
      result = "controls_enabled_on_watch";
      break;
    case 4:
      result = "quick_stop_call_bell";
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_268BFF01C(unsigned __int8 a1)
{
  sub_268C1624C();
  MEMORY[0x26D627820](a1);
  return sub_268C1626C();
}

void *sub_268BFF090(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_268BFF108@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_268BFF138()
{
  result = qword_2802CE7C0;
  if (!qword_2802CE7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE7C0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PlaybackControlsFeatureFlagProvider(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x268BFF2DCLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Features(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
        JUMPOUT(0x268BFF3E0);
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_268BFF41C()
{
  result = qword_2802CE7C8;
  if (!qword_2802CE7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE7C8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a4 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;

  return MEMORY[0x2821FD720](a1, a2, a3, v7, a5, a6, 68, 2);
}

uint64_t OUTLINED_FUNCTION_4_10(uint64_t a1, uint64_t a2)
{
  result = __swift_project_value_buffer(v2, a2);
  v5 = *(v3 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_6_12(uint64_t a1)
{
  *(v1 + 4) = a1;
  *(v1 + 12) = 2082;
  return 0x6F7247616964654DLL;
}

uint64_t OUTLINED_FUNCTION_8_11(float a1)
{
  *v1 = a1;

  return sub_268BB3D28(v2, 0xEF7370756F724774, (v3 - 88));
}

void OUTLINED_FUNCTION_12_7(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 8u);
}

uint64_t OUTLINED_FUNCTION_14_6()
{

  return swift_slowAlloc();
}

SiriPlaybackControlSupport::HomeAutomationEntityType_optional __swiftcall HomeAutomationEntityType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 8;
  if (rawValue < 8)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_268BFF58C()
{
  result = qword_2802CE7D0[0];
  if (!qword_2802CE7D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2802CE7D0);
  }

  return result;
}

uint64_t sub_268BFF5F8@<X0>(uint64_t *a1@<X8>)
{
  result = HomeAutomationEntityType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for HomeAutomationEntityType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for HomeAutomationEntityType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
        JUMPOUT(0x268BFF774);
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_268BFF7AC()
{
  v0 = sub_268C15A1C();
  __swift_allocate_value_buffer(v0, qword_2802D2F10);
  __swift_project_value_buffer(v0, qword_2802D2F10);
  if (qword_2802CDB60 != -1)
  {
    swift_once();
  }

  v1 = qword_2802D2EB8;
  return sub_268C15A2C();
}

uint64_t ListPosition.description.getter()
{
  if (v0[1])
  {
    v1 = 0x657372657665722ELL;
  }

  else
  {
    v1 = 0x6465726564726F2ELL;
  }

  v5 = v1;
  v4 = *v0;
  v2 = sub_268C1616C();
  MEMORY[0x26D627230](v2);

  MEMORY[0x26D627230](41, 0xE100000000000000);
  return v5;
}

Swift::Int __swiftcall ListPosition.toIndex()()
{
  v1 = *v0;
  if (v0[1])
  {
    result = -v1;
    if (!__OFSUB__(0, v1))
    {
      return result;
    }

    __break(1u);
  }

  result = v1 - 1;
  if (__OFSUB__(v1, 1))
  {
    __break(1u);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ListPosition(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ListPosition(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

void __swiftcall HomeAutomationEntityQuery.init(roomName:zoneName:homeName:accessoryName:serviceName:serviceGroup:isFromEntity:deviceQuantifier:deviceType:placeHint:reference:)(SiriPlaybackControlSupport::HomeAutomationEntityQuery *__return_ptr retstr, Swift::String_optional roomName, Swift::String_optional zoneName, Swift::String_optional homeName, Swift::String_optional accessoryName, Swift::String_optional serviceName, Swift::String_optional serviceGroup, Swift::Bool isFromEntity, SiriPlaybackControlSupport::DeviceQuantifier_optional deviceQuantifier, SiriPlaybackControlSupport::DeviceType_optional deviceType, SiriPlaybackControlSupport::PlaceHint_optional placeHint, SiriPlaybackControlSupport::Reference_optional reference)
{
  v12 = *v16;
  v13 = *v17;
  v14 = *v18;
  v15 = *v19;
  retstr->roomName = roomName;
  retstr->zoneName = zoneName;
  retstr->homeName = homeName;
  retstr->accessoryName = accessoryName;
  retstr->serviceName = serviceName;
  retstr->serviceGroup = serviceGroup;
  retstr->isFromEntity = isFromEntity;
  retstr->deviceQuantifier.value = v12;
  retstr->deviceType.value = v13;
  retstr->placeHint.value = v14;
  retstr->reference.value = v15;
}

uint64_t sub_268BFFA1C(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, char *a8, char *a9)
{
  v46 = a7;
  v47 = a8;
  v44 = a5;
  v45 = a6;
  v42 = a3;
  v43 = a4;
  v41 = a2;
  v40 = a9;
  v10 = sub_268C15A1C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_268BC4EF4(a1);
  v16 = result;
  v17 = 0;
  v50 = a1 & 0xFFFFFFFFFFFFFF8;
  v51 = a1 & 0xC000000000000001;
  v48 = (v11 + 8);
  v49 = (v11 + 16);
  while (v16 != v17)
  {
    if (v51)
    {
      MEMORY[0x26D627640](v17, a1);
    }

    else
    {
      if (v17 >= *(v50 + 16))
      {
        goto LABEL_39;
      }

      v18 = *(a1 + 8 * v17 + 32);
    }

    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_39:
      __break(1u);
      JUMPOUT(0x268BFFE2CLL);
    }

    v19 = sub_268C0258C();
    v20 = sub_268C00328(v19);

    if (v20)
    {
      switch(*(v20 + 32))
      {
        case 1:
          v28 = *(v20 + 40);
          v27 = *(v20 + 48);

          v29 = v41;
          goto LABEL_24;
        case 2:
          v28 = *(v20 + 40);
          v27 = *(v20 + 48);

          v29 = v42;
          goto LABEL_24;
        case 3:
          v28 = *(v20 + 40);
          v27 = *(v20 + 48);

          v29 = v43;
          goto LABEL_24;
        case 4:
          v28 = *(v20 + 40);
          v27 = *(v20 + 48);

          v29 = v44;
          goto LABEL_24;
        case 5:
          v28 = *(v20 + 40);
          v27 = *(v20 + 48);

          v29 = v45;
          goto LABEL_24;
        case 6:
          v28 = *(v20 + 40);
          v27 = *(v20 + 48);

          v29 = v46;
LABEL_24:
          v32 = v29[1];
          *v29 = v28;
          v29[1] = v27;

          goto LABEL_35;
        case 7:
          if (*(v20 + 48))
          {
            v30 = *(v20 + 40);
            v31 = *(v20 + 48);
          }

          else
          {
            v30 = 0;
            v31 = 0xE000000000000000;
          }

          v33._countAndFlagsBits = v30;
          v33._object = v31;
          PlaceHint.init(rawValue:)(v33);

          v34 = v52;
          v35 = v47;
          goto LABEL_33;
        case 8:

          break;
        default:
          if (*(v20 + 48))
          {
            v21 = *(v20 + 40);
            v22 = *(v20 + 48);
          }

          else
          {
            v21 = 0;
            v22 = 0xE000000000000000;
          }

          v36._countAndFlagsBits = v21;
          v36._object = v22;
          DeviceType.init(rawValue:)(v36);
          v37 = v53;
          v38 = sub_268BB1A6C(v53, 11);

          if (v38)
          {
            v34 = 12;
          }

          else
          {
            v34 = v37;
          }

          v35 = v40;
LABEL_33:
          *v35 = v34;
          break;
      }
    }

    else
    {
      if (qword_2802CDBE0 != -1)
      {
        swift_once();
      }

      v23 = __swift_project_value_buffer(v10, qword_2802D2F10);
      (*v49)(v14, v23, v10);
      v24 = sub_268C159FC();
      v25 = sub_268C15DEC();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_268BAD000, v24, v25, "Could not find the highest scoring interpretation group from the parse", v26, 2u);
        MEMORY[0x26D628010](v26, -1, -1);
      }

      (*v48)(v14, v10);
    }

LABEL_35:
    ++v17;
  }

  return result;
}

uint64_t HomeAutomationEntityQuery.roomName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_2_5();
}

uint64_t HomeAutomationEntityQuery.roomName.setter()
{
  OUTLINED_FUNCTION_8_6();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t HomeAutomationEntityQuery.zoneName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_2_5();
}

uint64_t HomeAutomationEntityQuery.zoneName.setter()
{
  OUTLINED_FUNCTION_8_6();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t HomeAutomationEntityQuery.homeName.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_2_5();
}

uint64_t HomeAutomationEntityQuery.homeName.setter()
{
  OUTLINED_FUNCTION_8_6();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t HomeAutomationEntityQuery.accessoryName.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_2_5();
}

uint64_t HomeAutomationEntityQuery.accessoryName.setter()
{
  OUTLINED_FUNCTION_8_6();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t HomeAutomationEntityQuery.serviceName.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return OUTLINED_FUNCTION_2_5();
}

uint64_t HomeAutomationEntityQuery.serviceName.setter()
{
  OUTLINED_FUNCTION_8_6();
  v3 = *(v1 + 72);

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t HomeAutomationEntityQuery.serviceGroup.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return OUTLINED_FUNCTION_2_5();
}

uint64_t HomeAutomationEntityQuery.serviceGroup.setter()
{
  OUTLINED_FUNCTION_8_6();
  v3 = *(v1 + 88);

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

__n128 sub_268C00250@<Q0>(uint64_t a1@<X8>)
{
  v17 = 0uLL;
  v16 = 0uLL;
  v15 = 0uLL;
  v14 = 0uLL;
  v13 = 0uLL;
  v12 = 0uLL;
  v11 = 12;
  v10 = 20;
  v2 = sub_268C07A74();
  sub_268BFFA1C(v2, &v17, &v16, &v15, &v14, &v13, &v12, &v10, &v11);

  v3 = v11;
  v4 = v10;
  result = v12;
  v6 = v13;
  v7 = v14;
  v8 = v15;
  v9 = v17;
  *a1 = v16;
  *(a1 + 16) = v9;
  *(a1 + 32) = v7;
  *(a1 + 48) = v8;
  *(a1 + 64) = v6;
  *(a1 + 80) = result;
  *(a1 + 96) = 1280;
  *(a1 + 98) = v3;
  *(a1 + 99) = v4;
  *(a1 + 100) = 5;
  return result;
}

uint64_t sub_268C00328(unint64_t a1)
{
  v1 = a1;
  v2 = sub_268BC4EF4(a1);
  v3 = 0;
  v4 = v1 & 0xC000000000000001;
  v5 = v1 & 0xFFFFFFFFFFFFFF8;
  v6 = MEMORY[0x277D84F90];
  while (v2 != v3)
  {
    if (v4)
    {
      v7 = MEMORY[0x26D627640](v3, v1);
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_77;
      }

      v7 = *(v1 + 8 * v3 + 32);
    }

    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      v27 = sub_268C1613C();
      if (!v27)
      {
        return 0;
      }

LABEL_54:
      sub_268BC4F00(0, v4 == 0, v1);
      if (v4)
      {
        v21 = MEMORY[0x26D627640](0, v1);
      }

      else
      {
        v21 = *(v1 + 32);
      }

      for (i = 1; ; ++i)
      {
        while (2)
        {
          if (v27 == i)
          {
            return v21;
          }

          if (v4)
          {
            v29 = MEMORY[0x26D627640](i, v1);
          }

          else
          {
            if ((i & 0x8000000000000000) != 0)
            {
              goto LABEL_82;
            }

            if (i >= *(v5 + 16))
            {
              goto LABEL_83;
            }

            v29 = *(v1 + 8 * i + 32);
          }

          if (__OFADD__(i, 1))
          {
            goto LABEL_80;
          }

          v30 = *(v29 + 32);
          v31 = *(v21 + 32);
          if (v31 == 8)
          {
            if (v30 != 8)
            {
              goto LABEL_66;
            }
          }

          else if (v30 != 8 && v30 < v31)
          {
LABEL_66:

            ++i;
            v21 = v29;
            continue;
          }

          break;
        }
      }
    }

    swift_beginAccess();
    v9 = *(v7 + 56);

    ++v3;
    if (v9 != 4)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = *(v6 + 16);
        sub_268BB37F4();
        v6 = v13;
      }

      v10 = *(v6 + 16);
      if (v10 >= *(v6 + 24) >> 1)
      {
        sub_268BB37F4();
        v6 = v14;
      }

      *(v6 + 16) = v10 + 1;
      v11 = v6 + 8 * v10;
      *(v11 + 32) = v9;
      *(v11 + 36) = HIDWORD(v9);
      v3 = v8;
    }
  }

  sub_268C00DCC(v6, v34);

  v15 = v34[0];
  v16 = MEMORY[0x277D84F90];
  if (LOBYTE(v34[0]) != 4)
  {
    v17 = 0;
    v35 = MEMORY[0x277D84F90];
    while (v2 != v17)
    {
      if (v4)
      {
        v18 = MEMORY[0x26D627640](v17, v1);
      }

      else
      {
        if (v17 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_79;
        }

        v18 = *(v1 + 8 * v17 + 32);
      }

      if (__OFADD__(v17, 1))
      {
        goto LABEL_78;
      }

      swift_beginAccess();
      v19 = *(v18 + 56);
      if (v19 == 4 || v15 != v19 || *(&v19 + 1) != *(&v15 + 1))
      {
      }

      else
      {
        sub_268C160AC();
        v20 = *(v35 + 16);
        sub_268C160DC();
        sub_268C160EC();
        sub_268C160BC();
      }

      ++v17;
    }

    v16 = v35;
  }

  if (sub_268BC4EF4(v16))
  {
    if (sub_268BC4EF4(v16) > 1)
    {
      if (v16 >> 62)
      {
        v1 = sub_268C1613C();
        if (v1)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v1 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v1)
        {
LABEL_33:
          sub_268BC4F00(0, (v16 & 0xC000000000000001) == 0, v16);
          if ((v16 & 0xC000000000000001) != 0)
          {
            v21 = MEMORY[0x26D627640](0, v16);
          }

          else
          {
            v21 = *(v16 + 32);
          }

          v4 = v16 & 0xFFFFFFFFFFFFFF8;
          v22 = 1;
          while (1)
          {
            if (v1 == v22)
            {
              goto LABEL_75;
            }

            if ((v16 & 0xC000000000000001) != 0)
            {
              v23 = MEMORY[0x26D627640](v22, v16);
            }

            else
            {
              if ((v22 & 0x8000000000000000) != 0)
              {
                goto LABEL_84;
              }

              if (v22 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_85;
              }

              v23 = *(v16 + 8 * v22 + 32);
            }

            v5 = v22 + 1;
            if (__OFADD__(v22, 1))
            {
              goto LABEL_81;
            }

            v24 = *(v23 + 32);
            v25 = *(v21 + 32);
            if (v25 == 8)
            {
              if (v24 != 8)
              {
                goto LABEL_45;
              }

LABEL_51:

              ++v22;
            }

            else
            {
              if (v24 == 8 || v24 >= v25)
              {
                goto LABEL_51;
              }

LABEL_45:

              ++v22;
              v21 = v23;
            }
          }
        }
      }

      return 0;
    }

    sub_268BC4F00(0, (v16 & 0xC000000000000001) == 0, v16);
    if ((v16 & 0xC000000000000001) != 0)
    {
      v21 = MEMORY[0x26D627640](0, v16);
    }

    else
    {
      v21 = *(v16 + 32);
    }

LABEL_75:
  }

  else
  {

    if (v1 >> 62)
    {
      goto LABEL_86;
    }

    v27 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v27)
    {
      goto LABEL_54;
    }

    return 0;
  }

  return v21;
}

uint64_t HomeAutomationEntityQuery.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[7];
  v8 = v0[9];
  v18 = v0[6];
  v19 = v0[8];
  v9 = v0[11];
  v20 = v0[10];
  v21 = *(v0 + 98);
  v22 = *(v0 + 99);
  v23 = *(v0 + 97);
  v24 = *(v0 + 100);
  v25 = *(v0 + 96);

  sub_268C1606C();
  OUTLINED_FUNCTION_3_11();
  MEMORY[0x26D627230]();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE098, &qword_268C177C0);
  v10 = OUTLINED_FUNCTION_4_11();
  MEMORY[0x26D627230](v10);

  MEMORY[0x26D627230](0x614E656E6F7A202CLL, 0xEC000000203A656DLL);
  v11 = OUTLINED_FUNCTION_4_11();
  MEMORY[0x26D627230](v11);

  MEMORY[0x26D627230](0x614E656D6F68202CLL, 0xEC000000203A656DLL);
  v12 = OUTLINED_FUNCTION_4_11();
  MEMORY[0x26D627230](v12);

  OUTLINED_FUNCTION_3_11();
  MEMORY[0x26D627230]();
  v13 = OUTLINED_FUNCTION_4_11();
  MEMORY[0x26D627230](v13);

  MEMORY[0x26D627230](0x636976726573202CLL, 0xEF203A656D614E65);
  v14 = OUTLINED_FUNCTION_4_11();
  MEMORY[0x26D627230](v14);

  OUTLINED_FUNCTION_3_11();
  MEMORY[0x26D627230](0xD000000000000010);
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_5_10();

  MEMORY[0x26D627230](0x656369766564202CLL, 0xEE00203A65707954);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE608, &qword_268C187A8);
  OUTLINED_FUNCTION_6_13();
  OUTLINED_FUNCTION_5_10();

  MEMORY[0x26D627230](0x486563616C70202CLL, 0xED0000203A746E69);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE610, &qword_268C187B0);
  OUTLINED_FUNCTION_6_13();
  OUTLINED_FUNCTION_5_10();

  OUTLINED_FUNCTION_3_11();
  MEMORY[0x26D627230]();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE618, &qword_268C187B8);
  OUTLINED_FUNCTION_6_13();
  OUTLINED_FUNCTION_5_10();

  MEMORY[0x26D627230](0x657265666572202CLL, 0xED0000203A65636ELL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE620, &unk_268C187C0);
  OUTLINED_FUNCTION_6_13();
  OUTLINED_FUNCTION_5_10();

  OUTLINED_FUNCTION_3_11();
  MEMORY[0x26D627230](0xD000000000000010);
  if (v25)
  {
    v15 = 1702195828;
  }

  else
  {
    v15 = 0x65736C6166;
  }

  if (v25)
  {
    v16 = 0xE400000000000000;
  }

  else
  {
    v16 = 0xE500000000000000;
  }

  MEMORY[0x26D627230](v15, v16);

  MEMORY[0x26D627230](32032, 0xE200000000000000);
  return 0;
}

uint64_t sub_268C00CF4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 101))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t sub_268C00D48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 100) = 0;
    *(result + 96) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 101) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 101) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_268C00DCC@<X0>(uint64_t result@<X0>, unint64_t *a2@<X8>)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = *(result + 32);
    v4 = *(result + 36);
    v5 = v2 - 1;
    if (v5)
    {
      v6 = (result + 44);
      do
      {
        v7 = *(v6 - 4);
        v8 = *v6;
        v6 += 2;
        v9 = v8;
        v10 = 4 - v3 < 4 - v7;
        v11 = v4 < v8;
        if (v7 == v3)
        {
          v10 = v11;
        }

        if (v10)
        {
          v3 = v7;
          v4 = v9;
        }

        --v5;
      }

      while (v5);
    }

    v12 = v3 | (LODWORD(v4) << 32);
  }

  else
  {
    v12 = 4;
  }

  *a2 = v12;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_11()
{

  return sub_268C15C0C();
}

void OUTLINED_FUNCTION_5_10()
{

  JUMPOUT(0x26D627230);
}

uint64_t OUTLINED_FUNCTION_6_13()
{

  return sub_268C15C0C();
}

uint64_t sub_268C00EB4()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t AtomicArray.__allocating_init(name:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  AtomicArray.init(name:)(a1, a2);
  return v4;
}

void *AtomicArray.init(name:)(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 80);
  v2[2] = sub_268C15D3C();
  v2[4] = a1;
  v2[5] = a2;
  v6 = objc_allocWithZone(MEMORY[0x277CCAAF8]);

  v7 = [v6 init];
  v2[3] = v7;
  v8 = v7;
  v9 = sub_268C15BEC();

  [v8 setName_];

  return v2;
}

uint64_t sub_268C00FF8(uint64_t a1)
{
  v2 = v1;
  v44 = a1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v38 - v9;
  v11 = sub_268C15A1C();
  v12 = OUTLINED_FUNCTION_3_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_15_0();
  v19 = v18 - v17;
  if (qword_2802CDBE0 != -1)
  {
    OUTLINED_FUNCTION_18();
  }

  v20 = __swift_project_value_buffer(v11, qword_2802D2F10);
  (*(v14 + 16))(v19, v20, v11);
  v43 = *(v4 + 16);
  v43(v10, v44, v3);

  v21 = v19;
  v22 = v14;
  v42 = v21;
  v23 = v3;
  v24 = sub_268C159FC();
  v25 = sub_268C15DFC();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v40 = v11;
    v27 = v26;
    v39 = swift_slowAlloc();
    v45[0] = v39;
    *v27 = 136446466;
    *(v27 + 4) = sub_268BB3D28(*(v2 + 32), *(v2 + 40), v45);
    *(v27 + 12) = 2082;
    v43(v7, v10, v23);
    v28 = sub_268C15C0C();
    v41 = v7;
    v29 = v28;
    v30 = v23;
    v31 = v25;
    v33 = v32;
    v34 = v10;
    v35 = v30;
    (*(v4 + 8))(v34, v30);
    v36 = sub_268BB3D28(v29, v33, v45);

    *(v27 + 14) = v36;
    v7 = v41;
    _os_log_impl(&dword_268BAD000, v24, v31, "AtomicArray#append [%{public}s] element: %{public}s. acquiring global lock...", v27, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_30();

    (*(v22 + 8))(v42, v40);
    v23 = v35;
  }

  else
  {

    (*(v4 + 8))(v10, v23);
    (*(v22 + 8))(v42, v11);
  }

  [*(v2 + 24) lock];
  v43(v7, v44, v23);
  swift_beginAccess();
  sub_268C15D7C();
  sub_268C15D6C();
  swift_endAccess();
  return sub_268C015C8(v2, "AtomicArray#append [%{public}s] released global lock");
}

uint64_t sub_268C013DC()
{
  v1 = v0;
  v2 = sub_268C15A1C();
  v3 = OUTLINED_FUNCTION_3_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_15_0();
  v10 = v9 - v8;
  if (qword_2802CDBE0 != -1)
  {
    OUTLINED_FUNCTION_18();
  }

  v11 = __swift_project_value_buffer(v2, qword_2802D2F10);
  (*(v5 + 16))(v10, v11, v2);

  v12 = sub_268C159FC();
  v13 = sub_268C15DFC();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v18 = v15;
    *v14 = 136446210;
    *(v14 + 4) = sub_268BB3D28(*(v1 + 32), *(v1 + 40), &v18);
    _os_log_impl(&dword_268BAD000, v12, v13, "AtomicArray#getAll [%{public}s]. acquiring global lock...", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_30();
  }

  (*(v5 + 8))(v10, v2);
  [*(v1 + 24) lock];
  v16 = sub_268C00EB4();
  sub_268C015C8(v1, "AtomicArray#getAll [%{public}s] released global lock");
  return v16;
}

uint64_t sub_268C015C8(uint64_t a1, const char *a2)
{
  v4 = sub_268C15A1C();
  v5 = OUTLINED_FUNCTION_3_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_15_0();
  v12 = v11 - v10;
  [*(a1 + 24) unlock];
  if (qword_2802CDBE0 != -1)
  {
    OUTLINED_FUNCTION_18();
  }

  v13 = __swift_project_value_buffer(v4, qword_2802D2F10);
  (*(v7 + 16))(v12, v13, v4);

  v14 = sub_268C159FC();
  v15 = sub_268C15DFC();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v19 = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_268BB3D28(*(a1 + 32), *(a1 + 40), &v19);
    _os_log_impl(&dword_268BAD000, v14, v15, a2, v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_30();
  }

  return (*(v7 + 8))(v12, v4);
}

uint64_t AtomicArray.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t AtomicArray.__deallocating_deinit()
{
  AtomicArray.deinit();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

void sub_268C018F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_268C01EAC();
    if (v3 <= 0x3F)
    {
      sub_268C01F04();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_268C01990(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_268C1533C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  if (v11 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = v11;
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  v13 = *(v9 + 80);
  v14 = *(*(v8 - 8) + 64);
  if (!v10)
  {
    ++v14;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = v8;
  v16 = *(v6 + 64) + v13;
  v17 = v14 + 7;
  if (v12 < a2)
  {
    v18 = ((v17 + (v16 & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 40;
    v19 = v18 & 0xFFFFFFF8;
    if ((v18 & 0xFFFFFFF8) != 0)
    {
      v20 = 2;
    }

    else
    {
      v20 = a2 - v12 + 1;
    }

    if (v20 >= 0x10000)
    {
      LODWORD(v21) = 4;
    }

    else
    {
      LODWORD(v21) = 2;
    }

    if (v20 < 0x100)
    {
      LODWORD(v21) = 1;
    }

    if (v20 >= 2)
    {
      v21 = v21;
    }

    else
    {
      v21 = 0;
    }

    switch(v21)
    {
      case 1:
        v22 = *(a1 + v18);
        if (!v22)
        {
          break;
        }

        goto LABEL_28;
      case 2:
        v22 = *(a1 + v18);
        if (v22)
        {
          goto LABEL_28;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x268C01BD0);
      case 4:
        v22 = *(a1 + v18);
        if (!v22)
        {
          break;
        }

LABEL_28:
        v23 = v22 - 1;
        if (v19)
        {
          v23 = 0;
          v24 = *a1;
        }

        else
        {
          v24 = 0;
        }

        return v12 + (v24 | v23) + 1;
      default:
        break;
    }
  }

  if (v7 == v12)
  {

    return __swift_getEnumTagSinglePayload(a1, v7, v5);
  }

  v26 = (a1 + v16) & ~v13;
  if (v11 == v12)
  {
    if (v10 >= 2)
    {
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v26, v10, v15);
      if (EnumTagSinglePayload >= 2)
      {
        return EnumTagSinglePayload - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v27 = *(((v17 + v26) & 0xFFFFFFFFFFFFFFF8) + 24);
  if (v27 >= 0xFFFFFFFF)
  {
    LODWORD(v27) = -1;
  }

  return (v27 + 1);
}

double sub_268C01BE4(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = sub_268C1533C();
  v12 = *(v10 - 8);
  v13 = *(v12 + 84);
  if (v13)
  {
    v14 = v13 - 1;
  }

  else
  {
    v14 = 0;
  }

  if (v14 <= v9)
  {
    v15 = v9;
  }

  else
  {
    v15 = v14;
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  v16 = *(v12 + 80);
  v17 = *(v8 + 64) + v16;
  v18 = *(*(v10 - 8) + 64);
  if (!v13)
  {
    ++v18;
  }

  v19 = v18 + 7;
  v20 = ((v19 + (v17 & ~v16)) & 0xFFFFFFFFFFFFFFF8) + 40;
  if (((v19 + (v17 & ~v16)) & 0xFFFFFFF8) == 0xFFFFFFD8)
  {
    v21 = a3 - v15 + 1;
  }

  else
  {
    v21 = 2;
  }

  if (v21 >= 0x10000)
  {
    v22 = 4;
  }

  else
  {
    v22 = 2;
  }

  if (v21 < 0x100)
  {
    v22 = 1;
  }

  if (v21 >= 2)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  if (v15 < a3)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  if (a2 > v15)
  {
    if (((v19 + (v17 & ~v16)) & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v25 = a2 - v15;
    }

    else
    {
      v25 = 1;
    }

    if (((v19 + (v17 & ~v16)) & 0xFFFFFFF8) != 0xFFFFFFD8)
    {
      v26 = ~v15 + a2;
      bzero(a1, v20);
      *a1 = v26;
    }

    switch(v24)
    {
      case 1:
        *(a1 + v20) = v25;
        return result;
      case 2:
        *(a1 + v20) = v25;
        return result;
      case 3:
        goto LABEL_53;
      case 4:
        *(a1 + v20) = v25;
        return result;
      default:
        return result;
    }
  }

  v27 = ~v16;
  v28 = v10;
  switch(v24)
  {
    case 1:
      *(a1 + v20) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_40;
    case 2:
      *(a1 + v20) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_40;
    case 3:
LABEL_53:
      __break(1u);
      JUMPOUT(0x268C01E6CLL);
    case 4:
      *(a1 + v20) = 0;
      goto LABEL_39;
    default:
LABEL_39:
      if (!a2)
      {
        return result;
      }

LABEL_40:
      if (v9 == v15)
      {
        v29 = a1;
        v30 = a2;
        v13 = v9;
        v28 = v7;
      }

      else
      {
        v29 = (a1 + v17) & v27;
        if (v14 != v15)
        {
          v31 = (v19 + v29) & 0xFFFFFFFFFFFFFFF8;
          if ((a2 & 0x80000000) != 0)
          {
            result = 0.0;
            *(v31 + 8) = 0u;
            *(v31 + 24) = 0u;
            *v31 = a2 & 0x7FFFFFFF;
          }

          else
          {
            *(v31 + 24) = (a2 - 1);
          }

          return result;
        }

        v30 = (a2 + 1);
      }

      __swift_storeEnumTagSinglePayload(v29, v30, v13, v28);
      return result;
  }
}

void sub_268C01EAC()
{
  if (!qword_2802CE8D8)
  {
    sub_268C1533C();
    v0 = sub_268C15F1C();
    if (!v1)
    {
      atomic_store(v0, &qword_2802CE8D8);
    }
  }
}

unint64_t sub_268C01F04()
{
  result = qword_2802CE8E0;
  if (!qword_2802CE8E0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2802CE8E0);
  }

  return result;
}

BOOL sub_268C01F60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_268C1624C();
  sub_268C15C3C();
  v7 = sub_268C1626C();
  v8 = ~(-1 << *(a3 + 32));
  do
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(a3 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    v11 = v10 != 0;
    if (!v10)
    {
      break;
    }

    v12 = (*(a3 + 48) + 16 * v9);
    if (*v12 == a1 && v12[1] == a2)
    {
      break;
    }

    v14 = sub_268C1618C();
    v7 = v9 + 1;
  }

  while ((v14 & 1) == 0);
  return v11;
}

uint64_t sub_268C0204C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v61 = a3;
  v5 = type metadata accessor for Device();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_11();
  v59 = v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v56 - v9;
  v11 = sub_268C15A1C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_11();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v56 - v17;
  v19 = a1[1];
  if (v19)
  {
    v60 = v5;
    v20 = *a1;
    v21 = *a2;

    v22 = sub_268C01F60(v20, v19, v21);

    if (v22)
    {
      if (qword_2802CDB68 != -1)
      {
        OUTLINED_FUNCTION_3_2();
      }

      v23 = v11;
      v24 = __swift_project_value_buffer(v11, qword_2802D2EC0);
      v25 = v12;
      v26 = *(v12 + 16);
      v58 = v23;
      v26(v15, v24, v23);
      v27 = a1;
      v28 = v59;
      sub_268BE5088(v27, v59);

      v29 = sub_268C159FC();
      v30 = sub_268C15DEC();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v62 = v57;
        *v31 = 136315394;
        v32 = sub_268BB3D28(v20, v19, &v62);

        *(v31 + 4) = v32;
        *(v31 + 12) = 2080;
        v33 = Device.description.getter();
        v35 = v34;
        sub_268BE50EC(v28);
        v36 = sub_268BB3D28(v33, v35, &v62);

        *(v31 + 14) = v36;
        _os_log_impl(&dword_268BAD000, v29, v30, "Found duplicate device for id: %s. Device: %s. Dropping...", v31, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_30();
        OUTLINED_FUNCTION_30();
      }

      else
      {

        sub_268BE50EC(v28);
      }

      (*(v25 + 8))(v15, v58);
      v51 = v61;
      v52 = 1;
    }

    else
    {
      sub_268BDA100(&v62, v20, v19);

      v50 = v61;
      sub_268BE5088(a1, v61);
      v51 = v50;
      v52 = 0;
    }

    v54 = v60;
  }

  else
  {
    if (qword_2802CDB68 != -1)
    {
      OUTLINED_FUNCTION_3_2();
    }

    v37 = __swift_project_value_buffer(v11, qword_2802D2EC0);
    v38 = v12;
    (*(v12 + 16))(v18, v37, v11);
    v39 = a1;
    sub_268BE5088(a1, v10);
    v40 = sub_268C159FC();
    v41 = sub_268C15DEC();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v60 = v5;
      v43 = v42;
      v44 = swift_slowAlloc();
      v58 = v11;
      v59 = v38;
      v45 = v44;
      v62 = v44;
      *v43 = 136315138;
      v46 = Device.description.getter();
      v48 = v47;
      sub_268BE50EC(v10);
      v49 = sub_268BB3D28(v46, v48, &v62);

      *(v43 + 4) = v49;
      _os_log_impl(&dword_268BAD000, v40, v41, "Unable to get device identifier for device: %s. Keeping the device anyway...", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v45);
      OUTLINED_FUNCTION_30();
      v5 = v60;
      OUTLINED_FUNCTION_30();

      (*(v59 + 8))(v18, v58);
    }

    else
    {

      sub_268BE50EC(v10);
      (*(v38 + 8))(v18, v11);
    }

    v53 = v61;
    sub_268BE5088(v39, v61);
    v51 = v53;
    v52 = 0;
    v54 = v5;
  }

  return __swift_storeEnumTagSinglePayload(v51, v52, 1, v54);
}

uint64_t sub_268C0258C()
{
  v0 = sub_268C15A1C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_268C1586C();
  v6 = sub_268C1584C();
  if (*(v5 + 16))
  {

    v7 = sub_268C028D8();
LABEL_5:

    return v7;
  }

  if (*(v6 + 16))
  {
    v7 = sub_268C02AA4(v6);
    goto LABEL_5;
  }

  if (qword_2802CDBE0 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v0, qword_2802D2F10);
  (*(v1 + 16))(v4, v9, v0);
  v10 = sub_268C159FC();
  v11 = sub_268C15DFC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_268BAD000, v10, v11, "UsoValue#getInterpretationGroups No entitySpands or usoIdentifiers found", v12, 2u);
    MEMORY[0x26D628010](v12, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  return MEMORY[0x277D84F90];
}

uint64_t sub_268C0278C()
{
  v0 = sub_268C1570C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDCC8, &qword_268C17090);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_268C172C0;
  *(v5 + 32) = 0xD000000000000013;
  *(v5 + 40) = 0x8000000268C1D120;
  (*(v1 + 104))(v4, *MEMORY[0x277D5E6E8], v0);
  v6 = sub_268C156FC();
  v8 = v7;
  result = (*(v1 + 8))(v4, v0);
  *(v5 + 48) = v6;
  *(v5 + 56) = v8;
  qword_2802D2F28 = v5;
  return result;
}

uint64_t sub_268C028D8()
{
  v1 = *v0;
  v2 = sub_268C1551C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[1] = -1;
  v7 = sub_268C1586C();
  v8 = 0;
  v13[0] = MEMORY[0x277D84F90];
  v9 = *(v7 + 16);
  for (i = (v3 + 8); ; (*i)(v6, v2))
  {
    if (v9 == v8)
    {

      return v13[0];
    }

    if (v8 >= *(v7 + 16))
    {
      break;
    }

    (*(v3 + 16))(v6, v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v8, v2);
    sub_268C02DA0(v13, v6);
    ++v8;
  }

  __break(1u);

  (*i)(v6, v2);

  __break(1u);
  return result;
}

uint64_t sub_268C02AA4(uint64_t a1)
{
  v3 = 0;
  v4 = *v1;
  v29 = MEMORY[0x277D84F98];
  v5 = *(a1 + 16);
  while (v5 != v3)
  {
    v6 = *(sub_268C155DC() - 8);
    sub_268C043B0(&v29, a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v3++);
  }

  v7 = v29;
  v8 = *(v29 + 16);
  if (v8)
  {
    v29 = MEMORY[0x277D84F90];
    v28 = v7;
    sub_268C160CC();
    v10 = sub_268BC4E10(v28);
    result = v28;
    v13 = v12;
    v14 = 0;
    v15 = v28 + 64;
    if ((v10 & 0x8000000000000000) == 0)
    {
      while (v10 < 1 << *(result + 32))
      {
        v16 = v10 >> 6;
        if ((*(v15 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
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
          return result;
        }

        if (*(result + 36) != v13)
        {
          goto LABEL_26;
        }

        v27 = v9;
        v17 = *(*(result + 56) + 8 * v10);

        sub_268C160AC();
        v18 = *(v29 + 16);
        sub_268C160DC();
        sub_268C160EC();
        sub_268C160BC();
        result = v28;
        v19 = 1 << *(v28 + 32);
        if (v10 >= v19)
        {
          goto LABEL_27;
        }

        v20 = *(v15 + 8 * v16);
        if ((v20 & (1 << v10)) == 0)
        {
          goto LABEL_28;
        }

        if (*(v28 + 36) != v13)
        {
          goto LABEL_29;
        }

        v21 = v20 & (-2 << (v10 & 0x3F));
        if (v21)
        {
          v19 = __clz(__rbit64(v21)) | v10 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v22 = v16 << 6;
          v23 = v16 + 1;
          v24 = (v28 + 72 + 8 * v16);
          while (v23 < (v19 + 63) >> 6)
          {
            v26 = *v24++;
            v25 = v26;
            v22 += 64;
            ++v23;
            if (v26)
            {
              sub_268C05180(v10, v13, v27 & 1);
              result = v28;
              v19 = __clz(__rbit64(v25)) + v22;
              goto LABEL_19;
            }
          }

          sub_268C05180(v10, v13, v27 & 1);
          result = v28;
        }

LABEL_19:
        if (++v14 == v8)
        {
          goto LABEL_22;
        }

        v9 = 0;
        v13 = *(result + 36);
        v10 = v19;
        if (v19 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_22:

    return v29;
  }

  else
  {

    return MEMORY[0x277D84F90];
  }
}

uint64_t sub_268C02DA0(void *a1, uint64_t a2)
{
  v199 = a2;
  v167 = a1;
  v174 = sub_268C1572C();
  v202 = *(v174 - 8);
  v2 = *(v202 + 64);
  MEMORY[0x28223BE20](v174);
  v165 = &v160 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE908, &qword_268C1A088);
  v4 = *(*(v176 - 8) + 64);
  MEMORY[0x28223BE20](v176);
  v179 = &v160 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE240, &qword_268C17D78);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v175 = &v160 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE910, &qword_268C1A090);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v169 = &v160 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v181 = &v160 - v14;
  MEMORY[0x28223BE20](v13);
  v173 = &v160 - v15;
  v192 = sub_268C156EC();
  v213 = *(v192 - 8);
  v16 = *(v213 + 64);
  v17 = MEMORY[0x28223BE20](v192);
  v191 = &v160 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v190 = &v160 - v19;
  v215 = sub_268C1570C();
  v207 = *(v215 - 8);
  v20 = *(v207 + 64);
  MEMORY[0x28223BE20](v215);
  v180 = &v160 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE8E8, &qword_268C1A078);
  v22 = *(*(v204 - 8) + 64);
  MEMORY[0x28223BE20](v204);
  v24 = &v160 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE8F0, &qword_268C1A080);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v195 = &v160 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v201 = &v160 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v194 = &v160 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v160 - v34;
  MEMORY[0x28223BE20](v33);
  v212 = &v160 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE918, &qword_268C1A098);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37 - 8);
  v198 = &v160 - v39;
  v197 = sub_268C1561C();
  v40 = *(v197 - 8);
  v41 = *(v40 + 64);
  v42 = MEMORY[0x28223BE20](v197);
  v186 = &v160 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v185 = &v160 - v44;
  v45 = sub_268C1548C();
  v210 = *(v45 - 8);
  v46 = *(v210 + 64);
  MEMORY[0x28223BE20](v45);
  v217 = &v160 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE238, &qword_268C17D70);
  v49 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48 - 8);
  v51 = &v160 - v50;
  v52 = sub_268C158DC();
  v53 = *(v52 - 8);
  v54 = *(v53 + 64);
  result = MEMORY[0x28223BE20](v52);
  v58 = &v160 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = *v56 + 1;
  if (__OFADD__(*v56, 1))
  {
    __break(1u);
  }

  else
  {
    v211 = v35;
    *v56 = v59;
    type metadata accessor for InterpretationGroup();
    swift_allocObject();
    v60 = sub_268BF6D2C(v59);
    sub_268C1550C();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v51, 1, v52);
    v206 = v60;
    if (EnumTagSinglePayload == 1)
    {
      sub_268BC4CFC(v51, &qword_2802CE238, &qword_268C17D70);
    }

    else
    {
      (*(v53 + 32))(v58, v51, v52);
      sub_268BBB3F8(v216);
      (*(v53 + 8))(v58, v52);
      v62 = LOBYTE(v216[0]) | (HIDWORD(v216[0]) << 32);
      swift_beginAccess();
      *(v60 + 56) = v62;
    }

    v63 = v45;
    v64 = sub_268C154CC();
    v65 = *(v64 + 16);
    if (v65)
    {
      v209 = *(v210 + 16);
      v66 = (*(v210 + 80) + 32) & ~*(v210 + 80);
      v163 = v64;
      v67 = v64 + v66;
      v208 = (v210 + 8);
      v184 = (v40 + 32);
      v183 = (v40 + 88);
      v160 = (v40 + 8);
      v203 = (v207 + 104);
      v177 = (v207 + 32);
      v205 = (v207 + 8);
      v189 = (v213 + 104);
      v210 += 16;
      v207 = *(v210 + 56);
      v182 = *MEMORY[0x277D5E558];
      v188 = (v213 + 8);
      v170 = *MEMORY[0x277D5E528];
      v166 = *MEMORY[0x277D5E550];
      v193 = 0x8000000268C1BA60;
      v178 = 0x8000000268C1BA80;
      v162 = *MEMORY[0x277D5E548];
      v172 = (v202 + 104);
      v164 = (v202 + 32);
      v161 = *MEMORY[0x277D5E530];
      v168 = (v202 + 8);
      LODWORD(v202) = *MEMORY[0x277D5E6E0];
      v187 = *MEMORY[0x277D5E6B0];
      v171 = *MEMORY[0x277D5E738];
      v68 = &qword_2802CE8F0;
      v196 = v24;
      v200 = v45;
      do
      {
        v209(v217, v67, v63);
        if (qword_2802CDBE8 != -1)
        {
          swift_once();
        }

        v69 = qword_2802D2F28;
        v216[0] = sub_268C1547C();
        v216[1] = v70;
        MEMORY[0x28223BE20](v216[0]);
        *(&v160 - 2) = v216;
        v71 = v214;
        LOBYTE(v69) = sub_268BC48EC(sub_268BFB5B0, (&v160 - 4), v69);
        v214 = v71;

        v72 = v212;
        if (v69)
        {
          v73 = v198;
          sub_268C1544C();
          v74 = v197;
          if (__swift_getEnumTagSinglePayload(v73, 1, v197) != 1)
          {
            v213 = v65;
            (*v208)(v217, v63);
            v81 = v73;
            v82 = *v184;
            v83 = v185;
            (*v184)(v185, v81, v74);
            v84 = v186;
            v82(v186, v83, v74);
            v85 = (*v183)(v84, v74);
            if (v85 == v182)
            {
              v86 = 3;
              v63 = v200;
              v87 = v206;
              v65 = v213;
              v68 = &qword_2802CE8F0;
            }

            else
            {
              v63 = v200;
              v87 = v206;
              v68 = &qword_2802CE8F0;
              if (v85 == v170)
              {
                v86 = 2;
              }

              else if (v85 == v166)
              {
                v86 = 6;
              }

              else
              {
                if (v85 != v162)
                {
                  v65 = v213;
                  if (v85 == v161)
                  {
                    v86 = 1;
                  }

                  else
                  {
                    v157 = v206;
                    (*v160)(v186, v74);
                    v87 = v157;
                    v86 = 8;
                  }

                  goto LABEL_63;
                }

                v86 = 5;
              }

              v65 = v213;
            }

LABEL_63:
            *(v87 + 32) = v86;
            goto LABEL_64;
          }

          sub_268BC4CFC(v73, &qword_2802CE918, &qword_268C1A098);
        }

        v213 = v67;
        v75 = v63;
        sub_268C1545C();
        v76 = v211;
        v77 = v68;
        v78 = v215;
        (*v203)(v211, v202, v215);
        __swift_storeEnumTagSinglePayload(v76, 0, 1, v78);
        v79 = *(v204 + 48);
        sub_268C051D0(v72, v24, v77, &qword_268C1A080);
        sub_268C051D0(v76, &v24[v79], v77, &qword_268C1A080);
        if (__swift_getEnumTagSinglePayload(v24, 1, v78) == 1)
        {
          sub_268BC4CFC(v76, v77, &qword_268C1A080);
          sub_268BC4CFC(v72, v77, &qword_268C1A080);
          v68 = v77;
          if (__swift_getEnumTagSinglePayload(&v24[v79], 1, v215) != 1)
          {
            goto LABEL_17;
          }

          sub_268BC4CFC(v24, v77, &qword_268C1A080);
          v63 = v75;
        }

        else
        {
          v80 = v194;
          sub_268C051D0(v24, v194, v77, &qword_268C1A080);
          if (__swift_getEnumTagSinglePayload(&v24[v79], 1, v215) == 1)
          {
            v68 = v77;
            sub_268BC4CFC(v211, v77, &qword_268C1A080);
            sub_268BC4CFC(v72, v77, &qword_268C1A080);
            (*v205)(v80, v215);
LABEL_17:
            sub_268BC4CFC(v24, &qword_2802CE8E8, &qword_268C1A078);
            v63 = v75;
            goto LABEL_23;
          }

          v88 = &v24[v79];
          v89 = v65;
          v90 = v180;
          v91 = v215;
          (*v177)(v180, v88, v215);
          sub_268C05238(&qword_2802CE900, MEMORY[0x277D5E708]);
          v92 = v80;
          v93 = sub_268C15BDC();
          v94 = *v205;
          v95 = v90;
          v65 = v89;
          (*v205)(v95, v91);
          sub_268BC4CFC(v211, &qword_2802CE8F0, &qword_268C1A080);
          sub_268BC4CFC(v212, &qword_2802CE8F0, &qword_268C1A080);
          v96 = v92;
          v63 = v200;
          v94(v96, v91);
          v68 = &qword_2802CE8F0;
          sub_268BC4CFC(v24, &qword_2802CE8F0, &qword_268C1A080);
          if ((v93 & 1) == 0)
          {
            goto LABEL_23;
          }
        }

        v97 = v190;
        sub_268C154EC();
        v98 = v191;
        v99 = v63;
        v100 = v192;
        (*v189)(v191, v187, v192);
        v101 = MEMORY[0x26D626C90](v97, v98);
        v102 = *v188;
        (*v188)(v98, v100);
        v103 = v97;
        v24 = v196;
        v104 = v100;
        v63 = v99;
        v102(v103, v104);
        v68 = &qword_2802CE8F0;
        if (v101)
        {
          v105 = v65;
          v106 = v217;
          v107 = sub_268C1543C();
          v109 = v108;
          v110 = v106;
          v65 = v105;
          (*v208)(v110, v99);
          v111 = v206;
          v112 = *(v206 + 48);
          *(v206 + 40) = v107;
          *(v111 + 48) = v109;

          v67 = v213;
          goto LABEL_64;
        }

LABEL_23:
        v113 = v201;
        sub_268C1545C();
        if (__swift_getEnumTagSinglePayload(v113, 1, v215) == 1)
        {
          sub_268BC4CFC(v113, v68, &qword_268C1A080);
          v67 = v213;
LABEL_25:
          v114 = v195;
          sub_268C1545C();
          if (__swift_getEnumTagSinglePayload(v114, 1, v215) == 1)
          {
            sub_268BC4CFC(v114, v68, &qword_268C1A080);
LABEL_59:
            (*v208)(v217, v63);
            goto LABEL_64;
          }

          v122 = sub_268C156FC();
          v123 = v114;
          v124 = v122;
          v126 = v125;
          (*v205)(v123, v215);
          if (v124 == 0xD00000000000001CLL && v178 == v126)
          {
          }

          else
          {
            v128 = sub_268C1618C();

            if ((v128 & 1) == 0)
            {
              goto LABEL_59;
            }
          }

          v137 = v206;
          *(v206 + 32) = 0;
          v138 = sub_268C1543C();
          v139 = *(v137 + 48);
          *(v137 + 40) = v138;
          *(v137 + 48) = v140;

          v141 = v175;
          sub_268C154FC();
          v142 = v141;
          v143 = sub_268C1574C();
          if (__swift_getEnumTagSinglePayload(v142, 1, v143) == 1)
          {
            sub_268BC4CFC(v142, &qword_2802CE240, &qword_268C17D78);
            v144 = v173;
            v145 = v174;
            __swift_storeEnumTagSinglePayload(v173, 1, 1, v174);
          }

          else
          {
            v144 = v173;
            sub_268C1573C();
            (*(*(v143 - 8) + 8))(v142, v143);
            v145 = v174;
          }

          v146 = v179;
          v147 = v181;
          (*v172)(v181, v171, v145);
          __swift_storeEnumTagSinglePayload(v147, 0, 1, v145);
          v148 = *(v176 + 48);
          sub_268C051D0(v144, v146, &qword_2802CE910, &qword_268C1A090);
          v149 = v145;
          sub_268C051D0(v147, v146 + v148, &qword_2802CE910, &qword_268C1A090);
          if (__swift_getEnumTagSinglePayload(v146, 1, v145) == 1)
          {
            sub_268BC4CFC(v147, &qword_2802CE910, &qword_268C1A090);
            sub_268BC4CFC(v144, &qword_2802CE910, &qword_268C1A090);
            v150 = __swift_getEnumTagSinglePayload(v146 + v148, 1, v145);
            v63 = v200;
            v68 = &qword_2802CE8F0;
            if (v150 == 1)
            {
              sub_268BC4CFC(v146, &qword_2802CE910, &qword_268C1A090);
              v24 = v196;
              goto LABEL_56;
            }
          }

          else
          {
            v151 = v169;
            sub_268C051D0(v146, v169, &qword_2802CE910, &qword_268C1A090);
            if (__swift_getEnumTagSinglePayload(v146 + v148, 1, v149) != 1)
            {
              v152 = v146 + v148;
              v153 = v165;
              (*v164)(v165, v152, v149);
              sub_268C05238(&qword_2802CE920, MEMORY[0x277D5E748]);
              LODWORD(v213) = sub_268C15BDC();
              v154 = *v168;
              (*v168)(v153, v149);
              sub_268BC4CFC(v181, &qword_2802CE910, &qword_268C1A090);
              sub_268BC4CFC(v144, &qword_2802CE910, &qword_268C1A090);
              v154(v151, v149);
              sub_268BC4CFC(v179, &qword_2802CE910, &qword_268C1A090);
              v24 = v196;
              v63 = v200;
              v68 = &qword_2802CE8F0;
              if ((v213 & 1) == 0)
              {
                goto LABEL_59;
              }

LABEL_56:
              v156 = sub_268BF6CD8();
              if (*v155 != 4)
              {
                *(v155 + 4) = 1065353216;
              }

              (v156)(v216, 0);
              goto LABEL_59;
            }

            sub_268BC4CFC(v181, &qword_2802CE910, &qword_268C1A090);
            sub_268BC4CFC(v144, &qword_2802CE910, &qword_268C1A090);
            (*v168)(v151, v149);
            v63 = v200;
            v68 = &qword_2802CE8F0;
          }

          sub_268BC4CFC(v146, &qword_2802CE908, &qword_268C1A088);
          v24 = v196;
          goto LABEL_59;
        }

        v115 = sub_268C156FC();
        v116 = v113;
        v117 = v115;
        v119 = v118;
        (*v205)(v116, v215);
        if (v117 == 0xD000000000000017 && v193 == v119)
        {

          v67 = v213;
        }

        else
        {
          v121 = sub_268C1618C();

          v67 = v213;
          if ((v121 & 1) == 0)
          {
            goto LABEL_25;
          }
        }

        v129 = v206;
        *(v206 + 32) = 7;
        v130 = v65;
        v131 = v217;
        v132 = sub_268C1543C();
        v134 = v133;
        v135 = v131;
        v65 = v130;
        (*v208)(v135, v63);
        v136 = *(v129 + 48);
        *(v129 + 40) = v132;
        *(v129 + 48) = v134;

LABEL_64:
        v67 += v207;
        --v65;
      }

      while (v65);
    }

    v159 = v167;
    MEMORY[0x26D6272B0](v158);
    sub_268BBAF50(*((*v159 & 0xFFFFFFFFFFFFFF8) + 0x10));
    return sub_268C15D5C();
  }

  return result;
}

uint64_t sub_268C043B0(uint64_t *a1, uint64_t a2)
{
  v117 = sub_268C156EC();
  v115 = *(v117 - 8);
  v4 = *(v115 + 64);
  v5 = MEMORY[0x28223BE20](v117);
  v114 = &v111 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v116 = &v111 - v7;
  v8 = sub_268C1570C();
  v124 = *(v8 - 8);
  v125 = v8;
  v9 = *(v124 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v123 = &v111 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v113 = &v111 - v12;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE8E8, &qword_268C1A078);
  v13 = *(*(v121 - 1) + 64);
  MEMORY[0x28223BE20](v121);
  v122 = &v111 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE8F0, &qword_268C1A080);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v111 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v111 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v111 - v23;
  v25 = sub_268C1561C();
  v119 = *(v25 - 8);
  v120 = v25;
  v26 = *(v119 + 8);
  MEMORY[0x28223BE20](v25);
  v118 = &v111 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_268C15A1C();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &v111 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = a2;
  v33 = sub_268C1558C();
  if ((v33 & 0x100000000) != 0)
  {
    v34 = -1;
  }

  else
  {
    v34 = v33;
  }

  v35 = *a1;
  if (sub_268C0F5D8(v34, *a1))
  {
  }

  else
  {
    type metadata accessor for InterpretationGroup();
    swift_allocObject();
    v36 = sub_268BF6D2C(v34);
    v112 = v32;
    v37 = v28;
    v38 = v29;
    v39 = v22;
    v40 = v19;
    v41 = v36;
    v42 = *a1;
    swift_isUniquelyReferenced_nonNull_native();
    v128[0] = *a1;
    v43 = v41;
    v19 = v40;
    v22 = v39;
    v29 = v38;
    v28 = v37;
    v32 = v112;
    sub_268BEF50C(v43, v34);
    v35 = v128[0];
    *a1 = v128[0];
  }

  v44 = sub_268C0F5D8(v34, v35);
  if (v44)
  {
    v45 = v44;
    swift_beginAccess();
    sub_268BBADBC();
    v46 = *(*(v45 + 16) + 16);
    sub_268BBAE48(v46);
    v47 = *(v45 + 16);
    *(v47 + 16) = v46 + 1;
    v48 = sub_268C155DC();
    (*(*(v48 - 8) + 16))(v47 + ((*(*(v48 - 8) + 80) + 32) & ~*(*(v48 - 8) + 80)) + *(*(v48 - 8) + 72) * v46, v126, v48);
    *(v45 + 16) = v47;
    swift_endAccess();
    if (qword_2802CDBE8 != -1)
    {
      swift_once();
    }

    v49 = qword_2802D2F28;
    v50 = sub_268C155CC();
    if (v51)
    {
      v52 = v50;
    }

    else
    {
      v52 = 0;
    }

    if (v51)
    {
      v53 = v51;
    }

    else
    {
      v53 = 0xE000000000000000;
    }

    v128[0] = v52;
    v128[1] = v53;
    MEMORY[0x28223BE20](v50);
    *(&v111 - 2) = v128;
    v54 = v127;
    v55 = sub_268BC48EC(sub_268BC4C7C, (&v111 - 4), v49);
    v127 = v54;

    if (v55)
    {
      v56 = v118;
      sub_268C1554C();
      v58 = v119;
      v57 = v120;
      v59 = (*(v119 + 11))(v56, v120);
      v61 = v124;
      v60 = v125;
      if (v59 == *MEMORY[0x277D5E558])
      {
        v62 = 3;
      }

      else if (v59 == *MEMORY[0x277D5E528])
      {
        v62 = 2;
      }

      else if (v59 == *MEMORY[0x277D5E550])
      {
        v62 = 6;
      }

      else if (v59 == *MEMORY[0x277D5E548])
      {
        v62 = 5;
      }

      else if (v59 == *MEMORY[0x277D5E530])
      {
        v62 = 1;
      }

      else
      {
        (*(v58 + 8))(v56, v57);
        v62 = 8;
      }

      *(v45 + 32) = v62;
LABEL_60:
      v94 = sub_268C155CC();
      v96 = v95;
      v97 = v123;
      (*(v61 + 104))(v123, *MEMORY[0x277D5E6C0], v60);
      v98 = sub_268C156FC();
      v100 = v99;
      (*(v61 + 8))(v97, v60);
      if (v96)
      {
        if (v94 == v98 && v96 == v100)
        {
        }

        else
        {
          v102 = sub_268C1618C();

          if ((v102 & 1) == 0)
          {
          }
        }

        sub_268C0518C();
        sub_268C155BC();
        v103 = v127;
        v104 = sub_268C050A8();
        v127 = v103;
        if (v103)
        {

          v127 = 0;
          return result;
        }

        v105 = v104;
        if (v104)
        {
          [v104 matchScore];
          v107 = v106;
          if ([v105 isPartialMatch] & 1) != 0 || (objc_msgSend(v105, sel_isApproximateMatch))
          {

            v108 = 1;
          }

          else
          {
            v109 = [v105 isAliasMatch];

            v108 = 3;
            if (!v109)
            {
              v108 = 0;
            }
          }

          v110 = v108 | (v107 << 32);
          swift_beginAccess();
          *(v45 + 56) = v110;
        }
      }
    }

    v120 = v19;
    sub_268C1557C();
    v61 = v124;
    v60 = v125;
    (*(v124 + 104))(v22, *MEMORY[0x277D5E6E0], v125);
    __swift_storeEnumTagSinglePayload(v22, 0, 1, v60);
    v68 = v122;
    v69 = *(v121 + 12);
    sub_268C051D0(v24, v122, &qword_2802CE8F0, &qword_268C1A080);
    sub_268C051D0(v22, v68 + v69, &qword_2802CE8F0, &qword_268C1A080);
    if (__swift_getEnumTagSinglePayload(v68, 1, v60) == 1)
    {
      sub_268BC4CFC(v22, &qword_2802CE8F0, &qword_268C1A080);
      v70 = v122;
      sub_268BC4CFC(v24, &qword_2802CE8F0, &qword_268C1A080);
      if (__swift_getEnumTagSinglePayload(v70 + v69, 1, v60) == 1)
      {
        sub_268BC4CFC(v70, &qword_2802CE8F0, &qword_268C1A080);
LABEL_35:
        v76 = v116;
        sub_268C1556C();
        v77 = v114;
        v78 = v115;
        v79 = v117;
        (*(v115 + 104))(v114, *MEMORY[0x277D5E6B0], v117);
        v80 = MEMORY[0x26D626C90](v76, v77);
        v81 = v77;
        LOBYTE(v77) = v80;
        v82 = *(v78 + 8);
        v82(v81, v79);
        v82(v76, v79);
        if (v77)
        {
          goto LABEL_53;
        }

LABEL_36:
        v83 = sub_268C155CC();
        if (v84)
        {
          if (v83 == 0xD000000000000017 && v84 == 0x8000000268C1BA60)
          {
          }

          else
          {
            v86 = sub_268C1618C();

            if ((v86 & 1) == 0)
            {
              goto LABEL_42;
            }
          }

          *(v45 + 32) = 7;
          goto LABEL_53;
        }

LABEL_42:
        v87 = sub_268C155CC();
        if (!v88)
        {
          goto LABEL_60;
        }

        if (v87 == 0xD00000000000001CLL && v88 == 0x8000000268C1BA80)
        {
        }

        else
        {
          v90 = sub_268C1618C();

          if ((v90 & 1) == 0)
          {
            goto LABEL_60;
          }
        }

        *(v45 + 32) = 0;
LABEL_53:
        v91 = sub_268C155BC();
        v92 = *(v45 + 48);
        *(v45 + 40) = v91;
        *(v45 + 48) = v93;

        goto LABEL_60;
      }
    }

    else
    {
      v119 = v22;
      v121 = v24;
      v71 = v120;
      sub_268C051D0(v68, v120, &qword_2802CE8F0, &qword_268C1A080);
      if (__swift_getEnumTagSinglePayload(v68 + v69, 1, v60) != 1)
      {
        v72 = v113;
        (*(v61 + 32))(v113, v68 + v69, v60);
        sub_268C05238(&qword_2802CE900, MEMORY[0x277D5E708]);
        v73 = v68;
        v74 = sub_268C15BDC();
        v75 = *(v61 + 8);
        v75(v72, v125);
        sub_268BC4CFC(v119, &qword_2802CE8F0, &qword_268C1A080);
        sub_268BC4CFC(v121, &qword_2802CE8F0, &qword_268C1A080);
        v75(v71, v125);
        v61 = v124;
        v60 = v125;
        sub_268BC4CFC(v73, &qword_2802CE8F0, &qword_268C1A080);
        if ((v74 & 1) == 0)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }

      sub_268BC4CFC(v119, &qword_2802CE8F0, &qword_268C1A080);
      v70 = v122;
      sub_268BC4CFC(v121, &qword_2802CE8F0, &qword_268C1A080);
      (*(v61 + 8))(v71, v60);
    }

    sub_268BC4CFC(v70, &qword_2802CE8E8, &qword_268C1A078);
    goto LABEL_36;
  }

  if (qword_2802CDBE0 != -1)
  {
    swift_once();
  }

  v63 = __swift_project_value_buffer(v28, qword_2802D2F10);
  (*(v29 + 16))(v32, v63, v28);
  v64 = sub_268C159FC();
  v65 = sub_268C15DEC();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    *v66 = 0;
    _os_log_impl(&dword_268BAD000, v64, v65, "Fatal: Expected an interpretation group to be initialized", v66, 2u);
    MEMORY[0x26D628010](v66, -1, -1);
  }

  return (*(v29 + 8))(v32, v28);
}

id sub_268C050A8()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v0 = sub_268C15BEC();

  v6[0] = 0;
  v1 = [swift_getObjCClassFromMetadata() spanInfoFromEncodedString:v0 error:v6];

  if (v1)
  {
    v2 = v6[0];
  }

  else
  {
    v3 = v6[0];
    sub_268C1524C();

    swift_willThrow();
  }

  v4 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t sub_268C05180(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_268C0518C()
{
  result = qword_2802CE8F8;
  if (!qword_2802CE8F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2802CE8F8);
  }

  return result;
}

uint64_t sub_268C051D0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_268C05238(unint64_t *a1, void (*a2)(uint64_t))
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

SiriPlaybackControlSupport::DeviceSelectionControlType_optional __swiftcall DeviceSelectionControlType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_268C1615C();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t DeviceSelectionControlType.rawValue.getter()
{
  result = 0x656C626173756170;
  switch(*v0)
  {
    case 1:
      result = 0x6C62616D75736572;
      break;
    case 2:
      result = 0x6E6F436F65646976;
      break;
    case 3:
      result = 0x6F43656D756C6F76;
      break;
    case 4:
      result = 7958113;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_268C053DC()
{
  result = qword_2802CE928;
  if (!qword_2802CE928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE928);
  }

  return result;
}

uint64_t sub_268C05454@<X0>(uint64_t *a1@<X8>)
{
  result = DeviceSelectionControlType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for DeviceSelectionConstants(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x268C05518);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DeviceSelectionControlType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
        JUMPOUT(0x268C0561CLL);
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t static LocalizationProvider.shared.getter()
{
  type metadata accessor for LocalizationProvider();

  return swift_initStaticObject();
}

unint64_t LocalizationKey.rawValue.getter()
{
  result = 0x4D414E5F4D4F4F52;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0xD000000000000020;
      break;
    case 3:
      result = 0xD00000000000001FLL;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
      return result;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0x4E414C5F4F545541;
      break;
    case 9:
      result = 0x5254535F4D4F4F52;
      break;
    case 0xA:
      result = 0x504F54535F414857;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_268C061B4()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v3 = v0;
    LOBYTE(v17[0]) = 10;
    v4 = sub_268C056A8(v17);
    v1 = MEMORY[0x277D84F90];
    if (v5)
    {
      v17[0] = v4;
      v17[1] = v5;
      sub_268BB9A64();
      OUTLINED_FUNCTION_5_11();
      v7 = v6;

      if (v7[2])
      {
        OUTLINED_FUNCTION_6_14();
        v1 = v17[0];
        do
        {
          v8 = v7[4];
          v9 = v7[5];
          v10 = v7[6];
          v11 = v7[7];

          OUTLINED_FUNCTION_10_11();

          OUTLINED_FUNCTION_9_8();
          if (v13)
          {
            OUTLINED_FUNCTION_7_10(v12);
            v1 = v17[0];
          }

          OUTLINED_FUNCTION_4_12();
        }

        while (!v14);
      }
    }

    v15 = *(v3 + 16);
    *(v3 + 16) = v1;
  }

  return v1;
}

uint64_t sub_268C062D4()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = v0;
    LOBYTE(v17[0]) = 9;
    v4 = sub_268C056A8(v17);
    v1 = MEMORY[0x277D84F90];
    if (v5)
    {
      v17[0] = v4;
      v17[1] = v5;
      sub_268BB9A64();
      OUTLINED_FUNCTION_5_11();
      v7 = v6;

      if (v7[2])
      {
        OUTLINED_FUNCTION_6_14();
        v1 = v17[0];
        do
        {
          v8 = v7[4];
          v9 = v7[5];
          v10 = v7[6];
          v11 = v7[7];

          OUTLINED_FUNCTION_10_11();

          OUTLINED_FUNCTION_9_8();
          if (v13)
          {
            OUTLINED_FUNCTION_7_10(v12);
            v1 = v17[0];
          }

          OUTLINED_FUNCTION_4_12();
        }

        while (!v14);
      }
    }

    v15 = *(v3 + 24);
    *(v3 + 24) = v1;
  }

  return v1;
}

uint64_t LocalizationProvider.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t LocalizationProvider.__deallocating_deinit()
{
  LocalizationProvider.deinit();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t LocalizationTable.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_268C1615C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_268C06520@<X0>(BOOL *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return LocalizationTable.init(rawValue:)(a1);
}

SiriPlaybackControlSupport::LocalizationKey_optional __swiftcall LocalizationKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_268C1615C();

  v5 = 11;
  if (v3 < 0xB)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_268C065D0@<X0>(unint64_t *a1@<X8>)
{
  result = LocalizationKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_268C065F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v10 = sub_268C15BEC();

  v11 = sub_268C15BEC();

  v12 = sub_268C15BEC();
  v13 = [a8 localizedStringForKey:v10 table:v11 bundle:a5 languageCode:v12];

  if (!v13)
  {
    return 0;
  }

  v14 = sub_268C15BFC();

  return v14;
}

unint64_t sub_268C066E8()
{
  result = qword_2802CE930;
  if (!qword_2802CE930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE930);
  }

  return result;
}

unint64_t sub_268C06740()
{
  result = qword_2802CE938;
  if (!qword_2802CE938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE938);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LocalizationTable(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x268C068F0);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LocalizationKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
    if (a2 + 10 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 10) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 11;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v5 = v6 - 11;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for LocalizationKey(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
        JUMPOUT(0x268C06A7CLL);
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

void OUTLINED_FUNCTION_4_12()
{
  *(v0 + 16) = v3;
  v5 = v0 + 16 * v4;
  *(v5 + 32) = v1;
  *(v5 + 40) = v2;
}

void OUTLINED_FUNCTION_5_11()
{

  JUMPOUT(0x26D627550);
}

char *OUTLINED_FUNCTION_6_14()
{

  return sub_268BB4AB8(0, v0, 0);
}

char *OUTLINED_FUNCTION_7_10@<X0>(unint64_t a1@<X8>)
{

  return sub_268BB4AB8((a1 > 1), v1, 1);
}

void OUTLINED_FUNCTION_10_11()
{

  JUMPOUT(0x26D6271F0);
}

uint64_t EncryptionProvider.encodeRouteIds(_:completion:)(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_11(a1);
  v6 = OUTLINED_FUNCTION_2_2(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_19_4();
  MEMORY[0x28223BE20](v11);
  v13 = v25 - v12;
  OUTLINED_FUNCTION_22_0();
  v14 = swift_allocObject();
  *(v14 + 16) = v4;
  *(v14 + 24) = v3;
  v15 = qword_2802CDB60;

  if (v15 != -1)
  {
    OUTLINED_FUNCTION_12_2();
  }

  v16 = qword_2802D2EB8;
  sub_268C159DC();
  v17 = OUTLINED_FUNCTION_32_2();
  v18(v17);
  OUTLINED_FUNCTION_23_3();
  v19 = swift_allocObject();
  v20 = OUTLINED_FUNCTION_0_12(v19);
  v21(v20);
  *(v19 + v2) = 0;
  v22 = v19 + v1;
  *(v22 + 8) = sub_268C06E20;
  *(v22 + 16) = v14;

  sub_268C15EAC();
  sub_268C159CC();
  OUTLINED_FUNCTION_22_0();
  v23 = swift_allocObject();
  *(v23 + 16) = sub_268C077E0;
  *(v23 + 24) = v19;

  sub_268C06E4C(sub_268C07800, v23, v25[1]);

  return (*(v8 + 8))(v13, v15);
}

uint64_t sub_268C06DEC()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_268C06E20(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

void sub_268C06E4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_268C15A1C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = qword_2802CDBE0;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v6, qword_2802D2F10);
  (*(v7 + 16))(v10, v13, v6);

  v14 = sub_268C159FC();
  v15 = sub_268C15DCC();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    aBlock[0] = v17;
    *v16 = 136315138;
    v18 = MEMORY[0x26D6272E0](a3, MEMORY[0x277D837D0]);
    v25 = v6;
    v20 = sub_268BB3D28(v18, v19, aBlock);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_268BAD000, v14, v15, "Encoding routeIds: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x26D628010](v17, -1, -1);
    MEMORY[0x26D628010](v16, -1, -1);

    (*(v7 + 8))(v10, v25);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  v21 = [objc_allocWithZone(MEMORY[0x277D27840]) init];
  v22 = sub_268C15CFC();
  aBlock[4] = sub_268C07A08;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_268C07178;
  aBlock[3] = &block_descriptor_28;
  v23 = _Block_copy(aBlock);

  [v21 encodeHashedRouteUIDs:v22 completion:v23];
  _Block_release(v23);
}

uint64_t sub_268C07178(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = sub_268C15D0C();

  v2(v3);
}

uint64_t EncryptionProvider.decodeRouteIds(_:completion:)(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_11(a1);
  v6 = OUTLINED_FUNCTION_2_2(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_19_4();
  MEMORY[0x28223BE20](v11);
  v13 = v25 - v12;
  OUTLINED_FUNCTION_22_0();
  v14 = swift_allocObject();
  *(v14 + 16) = v4;
  *(v14 + 24) = v3;
  v15 = qword_2802CDB60;

  if (v15 != -1)
  {
    OUTLINED_FUNCTION_12_2();
  }

  v16 = qword_2802D2EB8;
  sub_268C159DC();
  v17 = OUTLINED_FUNCTION_32_2();
  v18(v17);
  OUTLINED_FUNCTION_23_3();
  v19 = swift_allocObject();
  v20 = OUTLINED_FUNCTION_0_12(v19);
  v21(v20);
  *(v19 + v2) = 0;
  v22 = v19 + v1;
  *(v22 + 8) = sub_268C07808;
  *(v22 + 16) = v14;

  sub_268C15EAC();
  sub_268C159CC();
  OUTLINED_FUNCTION_22_0();
  v23 = swift_allocObject();
  *(v23 + 16) = sub_268C077E0;
  *(v23 + 24) = v19;

  sub_268C07404(sub_268C07800, v23, v25[1]);

  return (*(v8 + 8))(v13, v15);
}

void sub_268C07404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_268C15A1C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = qword_2802CDBE0;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v6, qword_2802D2F10);
  (*(v7 + 16))(v10, v13, v6);

  v14 = sub_268C159FC();
  v15 = sub_268C15DCC();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    aBlock[0] = v17;
    *v16 = 136315138;
    v18 = MEMORY[0x26D6272E0](a3, MEMORY[0x277D837D0]);
    v25 = v6;
    v20 = sub_268BB3D28(v18, v19, aBlock);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_268BAD000, v14, v15, "Decoding routeIds: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x26D628010](v17, -1, -1);
    MEMORY[0x26D628010](v16, -1, -1);

    (*(v7 + 8))(v10, v25);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  v21 = [objc_allocWithZone(MEMORY[0x277D27840]) init];
  v22 = sub_268C15CFC();
  aBlock[4] = sub_268BD7F98;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_268C07730;
  aBlock[3] = &block_descriptor_3;
  v23 = _Block_copy(aBlock);

  [v21 decodeHashedRouteUIDs:v22 completion:v23];
  _Block_release(v23);
}

uint64_t sub_268C07730(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = sub_268C15B5C();

  v2(v3);
}

uint64_t sub_268C07808(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_268C07838(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, unint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(sub_268C159EC() - 8);
  v5 = (*(v4 + 80) + 33) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = *(v2 + v6);
  v10 = v2 + (v6 & 0xFFFFFFFFFFFFFFF8);
  v11 = *(v10 + 8);
  v12 = *(v10 + 16);
  v13 = *(v2 + 32);

  return a2(a1, v7, v8, v13, v2 + v5, v9, v11, v12);
}

_BYTE *storeEnumTagSinglePayload for EncryptionProvider(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x268C079B8);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t OUTLINED_FUNCTION_0_12(uint64_t a1)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = 14;
  *(a1 + 32) = 2;
  v4 = *(v2 + 32);
  return a1 + v3;
}

uint64_t OUTLINED_FUNCTION_7_11(uint64_t a1)
{
  *(v1 - 88) = a1;

  return sub_268C159EC();
}

uint64_t sub_268C07A74()
{
  sub_268C1542C();
  v0 = sub_268C158EC();
  v1 = sub_268C0F218(0x73656D616ELL, 0xE500000000000000, v0);

  if (v1)
  {
    return v1;
  }

  else
  {
    return MEMORY[0x277D84F90];
  }
}

void sub_268C07AE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(MEMORY[0x277D27878]) init];
  v8[4] = a2;
  v8[5] = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_268C07BC4;
  v8[3] = &block_descriptor_4;
  v7 = _Block_copy(v8);

  sub_268C07C74(a1, v7, v6);
  _Block_release(v7);
}

void sub_268C07BC4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_268C07C74(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_268C15CFC();
  [a3 resolveWithRouteIdentifiers:v5 completion:a2];
}

uint64_t sub_268C07D50()
{
  v9[0] = sub_268C15E4C();
  v0 = *(v9[0] - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v9[0]);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_268C15E1C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_268C15AAC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  sub_268C089BC();
  sub_268C15A7C();
  v9[1] = MEMORY[0x277D84F90];
  sub_268BC1148(&qword_2802CE070, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE078, &unk_268C177B0);
  sub_268BC1190(&unk_2802CE080, &qword_2802CE078, &unk_268C177B0);
  sub_268C15FCC();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v9[0]);
  result = sub_268C15E8C();
  qword_2802D2F30 = result;
  return result;
}

uint64_t static OS_dispatch_semaphore.wrap<A>(timeoutSeconds:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v77 = a2;
  v87 = a4;
  v8 = sub_268C15ADC();
  v9 = OUTLINED_FUNCTION_3_0(v8);
  v85 = v10;
  v86 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  v83 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v84 = &v70 - v15;
  v16 = sub_268C15A5C();
  v17 = OUTLINED_FUNCTION_3_0(v16);
  v81 = v18;
  v82 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  v22 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_268C15AAC();
  v24 = OUTLINED_FUNCTION_3_0(v23);
  v79 = v25;
  v80 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v24);
  v29 = &v70 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_268C15A1C();
  v31 = OUTLINED_FUNCTION_3_0(v30);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v31);
  v37 = &v70 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v40 = &v70 - v39;
  if (qword_2802CDBE0 != -1)
  {
    swift_once();
  }

  v73 = v37;
  v41 = __swift_project_value_buffer(v30, qword_2802D2F10);
  v42 = *(v33 + 16);
  v72 = v41;
  v71 = v42;
  (v42)(v40);
  v43 = sub_268C159FC();
  v44 = sub_268C15DFC();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v78 = v29;
    v46 = a3;
    v47 = a1;
    v48 = v45;
    *v45 = 134217984;
    *(v45 + 4) = a5;
    _os_log_impl(&dword_268BAD000, v43, v44, "DispatchSemaphore#wrap: Running asynchronous block synchronously with timeout: %f seconds", v45, 0xCu);
    v49 = v48;
    a1 = v47;
    a3 = v46;
    v29 = v78;
    MEMORY[0x26D628010](v49, -1, -1);
  }

  v50 = *(v33 + 8);
  v75 = v30;
  v74 = v33 + 8;
  v70 = v50;
  v50(v40, v30);
  v51 = dispatch_semaphore_create(0);
  v78 = sub_268C15F1C();
  v52 = swift_allocBox();
  v76 = v53;
  __swift_storeEnumTagSinglePayload(v53, 1, 1, a3);
  if (qword_2802CDBF0 != -1)
  {
    swift_once();
  }

  v54 = swift_allocObject();
  v54[2] = a3;
  v54[3] = a1;
  v54[4] = v77;
  v54[5] = v52;
  v54[6] = v51;
  aBlock[4] = sub_268C087FC;
  aBlock[5] = v54;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_268BC5554;
  aBlock[3] = &block_descriptor_5;
  v55 = _Block_copy(aBlock);

  v77 = v52;

  v56 = v51;
  sub_268C15A6C();
  v88 = MEMORY[0x277D84F90];
  sub_268BC1148(&qword_2802CE048, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE050, &qword_268C1A4F0);
  sub_268BC1190(&qword_2802CE058, &qword_2802CE050, &qword_268C1A4F0);
  v57 = v82;
  sub_268C15FCC();
  MEMORY[0x26D627440](0, v29, v22, v55);
  _Block_release(v55);
  (*(v81 + 8))(v22, v57);
  (*(v79 + 8))(v29, v80);

  v58 = v83;
  sub_268C15ABC();
  v59 = v84;
  sub_268C15B3C();
  v60 = v86;
  v61 = *(v85 + 8);
  v61(v58, v86);
  sub_268C15EBC();
  v61(v59, v60);
  if (sub_268C15A4C())
  {
    v62 = v73;
    v63 = v75;
    v71(v73, v72, v75);
    v64 = sub_268C159FC();
    v65 = sub_268C15DEC();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 134217984;
      *(v66 + 4) = a5;
      _os_log_impl(&dword_268BAD000, v64, v65, "Semaphore wait timed out after: %f seconds", v66, 0xCu);
      MEMORY[0x26D628010](v66, -1, -1);
      v67 = v56;
    }

    else
    {
      v67 = v64;
      v64 = v56;
    }

    v70(v62, v63);
  }

  else
  {
  }

  v68 = v76;
  swift_beginAccess();
  (*(*(v78 - 8) + 16))(v87, v68);
}

uint64_t sub_268C08710(void (*a1)(uint64_t (*)(uint64_t a1), void *), uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = swift_allocObject();
  v9[2] = a5;
  v9[3] = a3;
  v9[4] = a4;

  v10 = a4;
  a1(sub_268C089B0, v9);
}

uint64_t sub_268C087B4()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_268C08824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_268C15F1C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  v11 = swift_projectBox();
  (*(*(a4 - 8) + 16))(v10, a1, a4);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, a4);
  swift_beginAccess();
  (*(v7 + 40))(v11, v10, v6);
  return sub_268C15EDC();
}

uint64_t sub_268C08970()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

unint64_t sub_268C089BC()
{
  result = qword_2802CE068;
  if (!qword_2802CE068)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2802CE068);
  }

  return result;
}

void sub_268C08A48()
{
  OUTLINED_FUNCTION_31_0();
  v1 = OUTLINED_FUNCTION_15_8();
  v2 = OUTLINED_FUNCTION_3_13(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_4_3();
  if (qword_2802CDBE0 != -1)
  {
    v7 = OUTLINED_FUNCTION_18();
  }

  OUTLINED_FUNCTION_8_13(v7, qword_2802D2F10);
  v8 = OUTLINED_FUNCTION_5_12(v4);
  v9(v8);
  v10 = sub_268C159FC();
  v11 = sub_268C15DEC();
  if (OUTLINED_FUNCTION_16_7(v11))
  {
    v12 = OUTLINED_FUNCTION_23_0();
    OUTLINED_FUNCTION_21_5(v12);
    OUTLINED_FUNCTION_10_12(&dword_268BAD000);
    OUTLINED_FUNCTION_17_8();
  }

  v13 = OUTLINED_FUNCTION_11_8();
  v14(v13);
  v15 = OUTLINED_FUNCTION_7_12();
  v0(v15);
  OUTLINED_FUNCTION_32_0();
}

void PlaybackControlling.seek(devices:to:shouldStartPlaybackAfterCommand:with:)()
{
  OUTLINED_FUNCTION_25_4();
  v1 = OUTLINED_FUNCTION_15_8();
  v2 = OUTLINED_FUNCTION_3_13(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_4_3();
  if (qword_2802CDBE0 != -1)
  {
    v5 = OUTLINED_FUNCTION_18();
  }

  v6 = OUTLINED_FUNCTION_1_13(v5, qword_2802D2F10);
  v7(v6);
  v8 = sub_268C159FC();
  v9 = sub_268C15DEC();
  if (OUTLINED_FUNCTION_13_7(v9))
  {
    v10 = OUTLINED_FUNCTION_23_0();
    OUTLINED_FUNCTION_14_7(v10);
    OUTLINED_FUNCTION_9_9(&dword_268BAD000, v11, v12, "PlaybackControlling#seek default implementation should not be used");
    OUTLINED_FUNCTION_16_2();
  }

  v13 = OUTLINED_FUNCTION_6_15();
  v14(v13);
  v15 = OUTLINED_FUNCTION_4_13();
  v0(v15);
  OUTLINED_FUNCTION_14_3();
}

void PlaybackControlling.setShuffleMode(to:on:with:)()
{
  OUTLINED_FUNCTION_25_4();
  v1 = OUTLINED_FUNCTION_15_8();
  v2 = OUTLINED_FUNCTION_3_13(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_4_3();
  if (qword_2802CDBE0 != -1)
  {
    v5 = OUTLINED_FUNCTION_18();
  }

  v6 = OUTLINED_FUNCTION_1_13(v5, qword_2802D2F10);
  v7(v6);
  v8 = sub_268C159FC();
  v9 = sub_268C15DEC();
  if (OUTLINED_FUNCTION_13_7(v9))
  {
    v10 = OUTLINED_FUNCTION_23_0();
    OUTLINED_FUNCTION_14_7(v10);
    OUTLINED_FUNCTION_9_9(&dword_268BAD000, v11, v12, "PlaybackControlling#setShuffleMode default implementation should not be used");
    OUTLINED_FUNCTION_16_2();
  }

  v13 = OUTLINED_FUNCTION_6_15();
  v14(v13);
  v15 = OUTLINED_FUNCTION_4_13();
  v0(v15);
  OUTLINED_FUNCTION_14_3();
}

void PlaybackControlling.setRepeatMode(to:on:shouldStartPlaybackAfterCommand:with:)()
{
  OUTLINED_FUNCTION_25_4();
  v1 = OUTLINED_FUNCTION_18_7();
  v2 = OUTLINED_FUNCTION_3_13(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_4_3();
  if (qword_2802CDBE0 != -1)
  {
    v5 = OUTLINED_FUNCTION_18();
  }

  v6 = OUTLINED_FUNCTION_1_13(v5, qword_2802D2F10);
  v7(v6);
  v8 = sub_268C159FC();
  v9 = sub_268C15DEC();
  if (OUTLINED_FUNCTION_13_7(v9))
  {
    v10 = OUTLINED_FUNCTION_23_0();
    OUTLINED_FUNCTION_14_7(v10);
    OUTLINED_FUNCTION_9_9(&dword_268BAD000, v11, v12, "PlaybackControlling#setRepeatMode default implementation should not be used");
    OUTLINED_FUNCTION_16_2();
  }

  v13 = OUTLINED_FUNCTION_6_15();
  v14(v13);
  v15 = OUTLINED_FUNCTION_4_13();
  v0(v15);
  OUTLINED_FUNCTION_14_3();
}

void PlaybackControlling.setLanguageOption(languageIdentifier:type:device:with:)()
{
  OUTLINED_FUNCTION_25_4();
  v1 = v0;
  v2 = sub_268C15A1C();
  v3 = OUTLINED_FUNCTION_3_13(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_3();
  if (qword_2802CDBE0 != -1)
  {
    v6 = OUTLINED_FUNCTION_18();
  }

  v7 = OUTLINED_FUNCTION_1_13(v6, qword_2802D2F10);
  v8(v7);
  v9 = sub_268C159FC();
  v10 = sub_268C15DEC();
  if (OUTLINED_FUNCTION_13_7(v10))
  {
    v11 = OUTLINED_FUNCTION_23_0();
    OUTLINED_FUNCTION_14_7(v11);
    OUTLINED_FUNCTION_9_9(&dword_268BAD000, v12, v13, "PlaybackControlling#setLanguageOption default implementation should not be used");
    OUTLINED_FUNCTION_16_2();
  }

  v14 = OUTLINED_FUNCTION_6_15();
  v15(v14);
  v16 = OUTLINED_FUNCTION_4_13();
  v1(v16);
  OUTLINED_FUNCTION_14_3();
}

void PlaybackControlling.getLanguageOptions(for:device:with:)()
{
  OUTLINED_FUNCTION_25_4();
  v1 = OUTLINED_FUNCTION_18_7();
  v2 = OUTLINED_FUNCTION_3_13(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_4_3();
  if (qword_2802CDBE0 != -1)
  {
    v5 = OUTLINED_FUNCTION_18();
  }

  v6 = OUTLINED_FUNCTION_1_13(v5, qword_2802D2F10);
  v7(v6);
  v8 = sub_268C159FC();
  v9 = sub_268C15DEC();
  if (OUTLINED_FUNCTION_13_7(v9))
  {
    v10 = OUTLINED_FUNCTION_23_0();
    OUTLINED_FUNCTION_14_7(v10);
    OUTLINED_FUNCTION_9_9(&dword_268BAD000, v11, v12, "PlaybackControlling#getLanguageOptions default implementation should not be used");
    OUTLINED_FUNCTION_16_2();
  }

  v13 = OUTLINED_FUNCTION_6_15();
  v14(v13);
  sub_268BD8218();
  v15 = swift_allocError();
  *v16 = 0x8000000000000060;
  v17 = v15;
  v18 = 1;
  v0(&v17);
  sub_268BD818C(v17, v18);
  OUTLINED_FUNCTION_14_3();
}

void PlaybackControlling.getDurationInfo(device:with:)()
{
  OUTLINED_FUNCTION_25_4();
  v1 = OUTLINED_FUNCTION_15_8();
  v2 = OUTLINED_FUNCTION_3_13(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_4_3();
  if (qword_2802CDBE0 != -1)
  {
    v5 = OUTLINED_FUNCTION_18();
  }

  v6 = OUTLINED_FUNCTION_1_13(v5, qword_2802D2F10);
  v7(v6);
  v8 = sub_268C159FC();
  v9 = sub_268C15DEC();
  if (OUTLINED_FUNCTION_13_7(v9))
  {
    v10 = OUTLINED_FUNCTION_23_0();
    OUTLINED_FUNCTION_14_7(v10);
    OUTLINED_FUNCTION_9_9(&dword_268BAD000, v11, v12, "PlaybackControlling#getDurationInfo default implementation should not be used");
    OUTLINED_FUNCTION_16_2();
  }

  v13 = OUTLINED_FUNCTION_6_15();
  v14(v13);
  v15[0] = 0;
  v15[1] = 0;
  v16 = 1;
  v0(v15);
  OUTLINED_FUNCTION_14_3();
}

void PlaybackControlling.getLocalPlayState(with:)()
{
  OUTLINED_FUNCTION_25_4();
  v1 = OUTLINED_FUNCTION_20_5();
  v2 = OUTLINED_FUNCTION_3_13(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_4_3();
  if (qword_2802CDBE0 != -1)
  {
    v5 = OUTLINED_FUNCTION_18();
  }

  v6 = OUTLINED_FUNCTION_1_13(v5, qword_2802D2F10);
  v7(v6);
  v8 = sub_268C159FC();
  v9 = sub_268C15DEC();
  if (OUTLINED_FUNCTION_13_7(v9))
  {
    v10 = OUTLINED_FUNCTION_23_0();
    OUTLINED_FUNCTION_14_7(v10);
    OUTLINED_FUNCTION_9_9(&dword_268BAD000, v11, v12, "PlaybackControlling#getLocalPlayState default implementation should not be used");
    OUTLINED_FUNCTION_16_2();
  }

  v13 = OUTLINED_FUNCTION_6_15();
  v14(v13);
  v15 = 0;
  v0(&v15);
  OUTLINED_FUNCTION_14_3();
}

void PlaybackControlling.getLocalPlaybackRate(with:)()
{
  OUTLINED_FUNCTION_25_4();
  v1 = OUTLINED_FUNCTION_20_5();
  v2 = OUTLINED_FUNCTION_3_13(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_4_3();
  if (qword_2802CDBE0 != -1)
  {
    v5 = OUTLINED_FUNCTION_18();
  }

  v6 = OUTLINED_FUNCTION_1_13(v5, qword_2802D2F10);
  v7(v6);
  v8 = sub_268C159FC();
  v9 = sub_268C15DEC();
  if (OUTLINED_FUNCTION_13_7(v9))
  {
    v10 = OUTLINED_FUNCTION_23_0();
    OUTLINED_FUNCTION_14_7(v10);
    OUTLINED_FUNCTION_9_9(&dword_268BAD000, v11, v12, "PlaybackControlling#getLocalPlaybackRate default implementation should not be used");
    OUTLINED_FUNCTION_16_2();
  }

  v13 = OUTLINED_FUNCTION_6_15();
  v14(v13);
  v0(0x100000000);
  OUTLINED_FUNCTION_14_3();
}

void sub_268C094C0()
{
  OUTLINED_FUNCTION_31_0();
  v1 = OUTLINED_FUNCTION_20_5();
  v2 = OUTLINED_FUNCTION_3_13(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_4_3();
  if (qword_2802CDBE0 != -1)
  {
    v7 = OUTLINED_FUNCTION_18();
  }

  OUTLINED_FUNCTION_8_13(v7, qword_2802D2F10);
  v8 = OUTLINED_FUNCTION_5_12(v4);
  v9(v8);
  v10 = sub_268C159FC();
  v11 = sub_268C15DEC();
  if (OUTLINED_FUNCTION_16_7(v11))
  {
    v12 = OUTLINED_FUNCTION_23_0();
    OUTLINED_FUNCTION_21_5(v12);
    OUTLINED_FUNCTION_10_12(&dword_268BAD000);
    OUTLINED_FUNCTION_17_8();
  }

  v13 = OUTLINED_FUNCTION_11_8();
  v14(v13);
  v0(0, 0);
  OUTLINED_FUNCTION_32_0();
}

void PlaybackControlling.setVolumeLevelRelative(routeIds:delta:isIncrease:isLocal:completion:)()
{
  OUTLINED_FUNCTION_25_4();
  v1 = OUTLINED_FUNCTION_18_7();
  v2 = OUTLINED_FUNCTION_3_13(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_4_3();
  if (qword_2802CDBE0 != -1)
  {
    v5 = OUTLINED_FUNCTION_18();
  }

  v6 = OUTLINED_FUNCTION_1_13(v5, qword_2802D2F10);
  v7(v6);
  v8 = sub_268C159FC();
  v9 = sub_268C15DEC();
  if (OUTLINED_FUNCTION_13_7(v9))
  {
    v10 = OUTLINED_FUNCTION_23_0();
    OUTLINED_FUNCTION_14_7(v10);
    OUTLINED_FUNCTION_9_9(&dword_268BAD000, v11, v12, "PlaybackControlling#setVolumeLevelRelative default implementation should not be used");
    OUTLINED_FUNCTION_16_2();
  }

  v13 = OUTLINED_FUNCTION_6_15();
  v14(v13);
  v15 = OUTLINED_FUNCTION_4_13();
  v0(v15);
  OUTLINED_FUNCTION_14_3();
}

void PlaybackControlling.setVolumeLevelAbsolute(routeIds:volumeLevel:isLocal:completion:)()
{
  OUTLINED_FUNCTION_25_4();
  v1 = OUTLINED_FUNCTION_15_8();
  v2 = OUTLINED_FUNCTION_3_13(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_4_3();
  if (qword_2802CDBE0 != -1)
  {
    v5 = OUTLINED_FUNCTION_18();
  }

  v6 = OUTLINED_FUNCTION_1_13(v5, qword_2802D2F10);
  v7(v6);
  v8 = sub_268C159FC();
  v9 = sub_268C15DEC();
  if (OUTLINED_FUNCTION_13_7(v9))
  {
    v10 = OUTLINED_FUNCTION_23_0();
    OUTLINED_FUNCTION_14_7(v10);
    OUTLINED_FUNCTION_9_9(&dword_268BAD000, v11, v12, "PlaybackControlling#setVolumeLevelAbsolute default implementation should not be used");
    OUTLINED_FUNCTION_16_2();
  }

  v13 = OUTLINED_FUNCTION_6_15();
  v14(v13);
  v15 = OUTLINED_FUNCTION_4_13();
  v0(v15);
  OUTLINED_FUNCTION_14_3();
}

void PlaybackControlling.setVolumeLevelLocal(device:volumeLevel:completion:)()
{
  OUTLINED_FUNCTION_25_4();
  v1 = OUTLINED_FUNCTION_15_8();
  v2 = OUTLINED_FUNCTION_3_13(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_4_3();
  if (qword_2802CDBE0 != -1)
  {
    v5 = OUTLINED_FUNCTION_18();
  }

  v6 = OUTLINED_FUNCTION_1_13(v5, qword_2802D2F10);
  v7(v6);
  v8 = sub_268C159FC();
  v9 = sub_268C15DEC();
  if (OUTLINED_FUNCTION_13_7(v9))
  {
    v10 = OUTLINED_FUNCTION_23_0();
    OUTLINED_FUNCTION_14_7(v10);
    OUTLINED_FUNCTION_9_9(&dword_268BAD000, v11, v12, "PlaybackControlling#setVolumeLevelLocal default implementation should not be used");
    OUTLINED_FUNCTION_16_2();
  }

  v13 = OUTLINED_FUNCTION_6_15();
  v14(v13);
  v15 = OUTLINED_FUNCTION_4_13();
  v0(v15);
  OUTLINED_FUNCTION_14_3();
}

void PlaybackControlling.addOutputDevicesToGroup(groupId:outputDeviceUIDs:with:)()
{
  OUTLINED_FUNCTION_25_4();
  v1 = OUTLINED_FUNCTION_18_7();
  v2 = OUTLINED_FUNCTION_3_13(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_4_3();
  if (qword_2802CDBE0 != -1)
  {
    v5 = OUTLINED_FUNCTION_18();
  }

  v6 = OUTLINED_FUNCTION_1_13(v5, qword_2802D2F10);
  v7(v6);
  v8 = sub_268C159FC();
  v9 = sub_268C15DEC();
  if (OUTLINED_FUNCTION_13_7(v9))
  {
    v10 = OUTLINED_FUNCTION_23_0();
    OUTLINED_FUNCTION_14_7(v10);
    OUTLINED_FUNCTION_9_9(&dword_268BAD000, v11, v12, "PlaybackControlling#addOutputDevicesToGroup default implementation should not be used");
    OUTLINED_FUNCTION_16_2();
  }

  v13 = OUTLINED_FUNCTION_6_15();
  v14(v13);
  v15 = OUTLINED_FUNCTION_4_13();
  v0(v15);
  OUTLINED_FUNCTION_14_3();
}

void PlaybackControlling.moveOutputDevicesToGroup(groupId:outputDeviceUIDs:with:)()
{
  OUTLINED_FUNCTION_25_4();
  v1 = OUTLINED_FUNCTION_18_7();
  v2 = OUTLINED_FUNCTION_3_13(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_4_3();
  if (qword_2802CDBE0 != -1)
  {
    v5 = OUTLINED_FUNCTION_18();
  }

  v6 = OUTLINED_FUNCTION_1_13(v5, qword_2802D2F10);
  v7(v6);
  v8 = sub_268C159FC();
  v9 = sub_268C15DEC();
  if (OUTLINED_FUNCTION_13_7(v9))
  {
    v10 = OUTLINED_FUNCTION_23_0();
    OUTLINED_FUNCTION_14_7(v10);
    OUTLINED_FUNCTION_9_9(&dword_268BAD000, v11, v12, "PlaybackControlling#moveOutputDevicesToGroup default implementation should not be used");
    OUTLINED_FUNCTION_16_2();
  }

  v13 = OUTLINED_FUNCTION_6_15();
  v14(v13);
  v15 = OUTLINED_FUNCTION_4_13();
  v0(v15);
  OUTLINED_FUNCTION_14_3();
}

void sub_268C09B64()
{
  OUTLINED_FUNCTION_31_0();
  v1 = OUTLINED_FUNCTION_26_3();
  v2 = OUTLINED_FUNCTION_3_13(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_4_3();
  if (qword_2802CDBE0 != -1)
  {
    v7 = OUTLINED_FUNCTION_18();
  }

  OUTLINED_FUNCTION_8_13(v7, qword_2802D2F10);
  v8 = OUTLINED_FUNCTION_5_12(v4);
  v9(v8);
  v10 = sub_268C159FC();
  v11 = sub_268C15DEC();
  if (OUTLINED_FUNCTION_16_7(v11))
  {
    v12 = OUTLINED_FUNCTION_23_0();
    OUTLINED_FUNCTION_21_5(v12);
    OUTLINED_FUNCTION_10_12(&dword_268BAD000);
    OUTLINED_FUNCTION_17_8();
  }

  v13 = OUTLINED_FUNCTION_11_8();
  v14(v13);
  v15 = OUTLINED_FUNCTION_7_12();
  v0(v15);
  OUTLINED_FUNCTION_32_0();
}

void PlaybackControlling.isChangePlaybackRateSupported(for:with:)()
{
  OUTLINED_FUNCTION_25_4();
  v1 = OUTLINED_FUNCTION_15_8();
  v2 = OUTLINED_FUNCTION_3_13(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_4_3();
  if (qword_2802CDBE0 != -1)
  {
    v5 = OUTLINED_FUNCTION_18();
  }

  v6 = OUTLINED_FUNCTION_1_13(v5, qword_2802D2F10);
  v7(v6);
  v8 = sub_268C159FC();
  v9 = sub_268C15DEC();
  if (OUTLINED_FUNCTION_13_7(v9))
  {
    v10 = OUTLINED_FUNCTION_23_0();
    OUTLINED_FUNCTION_14_7(v10);
    OUTLINED_FUNCTION_9_9(&dword_268BAD000, v11, v12, "PlaybackControlling#isChangePlaybackRateSupported default implementation should not be used");
    OUTLINED_FUNCTION_16_2();
  }

  v13 = OUTLINED_FUNCTION_6_15();
  v14(v13);
  v0(0, MEMORY[0x277D84F90]);
  OUTLINED_FUNCTION_14_3();
}

void sub_268C09DB8()
{
  OUTLINED_FUNCTION_31_0();
  v1 = OUTLINED_FUNCTION_15_8();
  v2 = OUTLINED_FUNCTION_3_13(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_4_3();
  if (qword_2802CDBE0 != -1)
  {
    v7 = OUTLINED_FUNCTION_18();
  }

  OUTLINED_FUNCTION_8_13(v7, qword_2802D2F10);
  v8 = OUTLINED_FUNCTION_5_12(v4);
  v9(v8);
  v10 = sub_268C159FC();
  v11 = sub_268C15DEC();
  if (OUTLINED_FUNCTION_16_7(v11))
  {
    v12 = OUTLINED_FUNCTION_23_0();
    OUTLINED_FUNCTION_21_5(v12);
    OUTLINED_FUNCTION_10_12(&dword_268BAD000);
    OUTLINED_FUNCTION_17_8();
  }

  v13 = OUTLINED_FUNCTION_11_8();
  v14(v13);
  v0(0);
  OUTLINED_FUNCTION_32_0();
}

Swift::String_optional __swiftcall PlaybackControlling.acquireAndReleaseSnippetAssertionWithFixedTime()()
{
  v1 = sub_268C15A1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_4_3();
  if (qword_2802CDBE0 != -1)
  {
    OUTLINED_FUNCTION_18();
  }

  v4 = __swift_project_value_buffer(v1, qword_2802D2F10);
  (*(v2 + 16))(v0, v4, v1);
  v5 = sub_268C159FC();
  v6 = sub_268C15DEC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_23_0();
    *v7 = 0;
    _os_log_impl(&dword_268BAD000, v5, v6, "PlaybackControlling#acquireAndReleaseSnippetAssertionWithFixedTime default implementation should not be used", v7, 2u);
    MEMORY[0x26D628010](v7, -1, -1);
  }

  (*(v2 + 8))(v0, v1);
  v8 = 0;
  v9 = 0;
  result.value._object = v9;
  result.value._countAndFlagsBits = v8;
  return result;
}

void PlaybackControlling.hasResumableContent(completion:)()
{
  OUTLINED_FUNCTION_25_4();
  v1 = OUTLINED_FUNCTION_20_5();
  v2 = OUTLINED_FUNCTION_3_13(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_4_3();
  if (qword_2802CDBE0 != -1)
  {
    v5 = OUTLINED_FUNCTION_18();
  }

  v6 = OUTLINED_FUNCTION_1_13(v5, qword_2802D2F10);
  v7(v6);
  v8 = sub_268C159FC();
  v9 = sub_268C15DEC();
  if (OUTLINED_FUNCTION_13_7(v9))
  {
    v10 = OUTLINED_FUNCTION_23_0();
    OUTLINED_FUNCTION_14_7(v10);
    OUTLINED_FUNCTION_9_9(&dword_268BAD000, v11, v12, "PlaybackControlling#hasResumableContent default implementation should not be used");
    OUTLINED_FUNCTION_16_2();
  }

  v13 = OUTLINED_FUNCTION_6_15();
  v14(v13);
  v0(0);
  OUTLINED_FUNCTION_14_3();
}

uint64_t OUTLINED_FUNCTION_1_13(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(v3, a2);
  v5 = *(v4 + 16);
  return v2;
}

uint64_t OUTLINED_FUNCTION_4_13()
{
  *(v0 - 80) = 0x8000000000000060;
  *(v0 - 72) = 1;
  return v0 - 80;
}

uint64_t OUTLINED_FUNCTION_7_12()
{
  *(v0 - 96) = 0x8000000000000060;
  *(v0 - 88) = 1;
  return v0 - 96;
}

void OUTLINED_FUNCTION_9_9(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_10_12(void *a1)
{

  _os_log_impl(a1, v2, v3, v1, v4, 2u);
}

BOOL OUTLINED_FUNCTION_13_7(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_15_8()
{

  return sub_268C15A1C();
}

BOOL OUTLINED_FUNCTION_16_7(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_17_8()
{

  JUMPOUT(0x26D628010);
}

uint64_t OUTLINED_FUNCTION_18_7()
{

  return sub_268C15A1C();
}

uint64_t OUTLINED_FUNCTION_20_5()
{

  return sub_268C15A1C();
}

uint64_t OUTLINED_FUNCTION_26_3()
{

  return sub_268C15A1C();
}

dispatch_semaphore_t sub_268C0A370()
{
  result = dispatch_semaphore_create(0);
  qword_2802CE948 = result;
  return result;
}

uint64_t *sub_268C0A394()
{
  if (qword_2802CDBF8 != -1)
  {
    OUTLINED_FUNCTION_7_13();
  }

  return &qword_2802CE948;
}

id static TailspinHelper.tailspinSem.getter()
{
  if (qword_2802CDBF8 != -1)
  {
    OUTLINED_FUNCTION_7_13();
  }

  v1 = qword_2802CE948;

  return v1;
}

id sub_268C0A420@<X0>(void *a1@<X8>)
{
  sub_268C0A394();
  v2 = qword_2802CE948;
  *a1 = qword_2802CE948;

  return v2;
}

void sub_268C0A460(id *a1)
{
  v1 = *a1;
  sub_268C0A394();
  v2 = qword_2802CE948;
  qword_2802CE948 = v1;
}

uint64_t sub_268C0A4A8()
{
  v10 = sub_268C15E4C();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_268C15E1C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_268C15AAC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9[1] = sub_268C089BC();
  sub_268C15A9C();
  v11 = MEMORY[0x277D84F90];
  sub_268BC1148(&qword_2802CE070, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE078, &unk_268C177B0);
  sub_268BC1190(&unk_2802CE080, &qword_2802CE078, &unk_268C177B0);
  sub_268C15FCC();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v10);
  result = sub_268C15E8C();
  qword_2802CE960 = result;
  return result;
}

void static TailspinHelper.setTrialPolicy(data:)()
{
  OUTLINED_FUNCTION_31_0();
  v3 = v2;
  v5 = v4;
  v6 = sub_268C15A5C();
  v7 = OUTLINED_FUNCTION_3_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_15_0();
  v26 = OUTLINED_FUNCTION_12_8();
  v12 = OUTLINED_FUNCTION_3_0(v26);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_15_0();
  v19 = v18 - v17;
  if (qword_2802CDC00 != -1)
  {
    OUTLINED_FUNCTION_1_14();
  }

  v20 = swift_allocObject();
  v20[2] = v5;
  v20[3] = v3;
  v20[4] = v0;
  OUTLINED_FUNCTION_2_11(v20);
  OUTLINED_FUNCTION_6_2(COERCE_DOUBLE(1107296256));
  v27[2] = v21;
  v27[3] = &block_descriptor_6;
  v22 = _Block_copy(v27);
  sub_268C0AA4C(v5, v3);
  sub_268C15A6C();
  OUTLINED_FUNCTION_2_1();
  sub_268BC1148(v23, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE050, &qword_268C1A4F0);
  sub_268BC1190(&qword_2802CE058, &qword_2802CE050, &qword_268C1A4F0);
  OUTLINED_FUNCTION_8_14();
  v25 = OUTLINED_FUNCTION_10_13();
  MEMORY[0x26D627440](v25);
  _Block_release(v22);
  (*(v9 + 8))(v1, v6);
  (*(v14 + 8))(v19, v26);

  OUTLINED_FUNCTION_32_0();
}

uint64_t sub_268C0A940(uint64_t a1, unint64_t a2)
{
  v2 = qword_2802CE950;
  v3 = qword_2802CE958;
  qword_2802CE950 = a1;
  qword_2802CE958 = a2;
  sub_268C0AA4C(a1, a2);

  return sub_268C0D51C(v2, v3);
}

uint64_t sub_268C0A988()
{
  v1 = *(v0 + 24);
  if (v1 >> 60 != 15)
  {
    sub_268C0A9D0(*(v0 + 16), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_268C0A9D0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_268C0AA4C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_268C0AA60(a1, a2);
  }

  return a1;
}

uint64_t sub_268C0AA60(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t static TailspinHelper.doesCurrentDevicePolicyAllowTimeoutErrorsForTailspin(tailspinList:)(uint64_t a1)
{
  if (qword_2802CDC00 != -1)
  {
    a1 = OUTLINED_FUNCTION_1_14();
  }

  MEMORY[0x28223BE20](a1);
  sub_268C15E6C();
  return v2;
}

uint64_t sub_268C0AB6C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v82 = a2;
  v80 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE978, &qword_268C1A548);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v70 - v4;
  v6 = sub_268C159AC();
  v81 = *(v6 - 8);
  v7 = *(v81 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v79 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v70 - v10;
  v12 = sub_268C15A1C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v70 - v20;
  MEMORY[0x28223BE20](v19);
  v24 = &v70 - v23;
  v25 = qword_2802CE958;
  if (qword_2802CE958 >> 60 == 15)
  {
    if (qword_2802CDBE0 != -1)
    {
      swift_once();
    }

    v26 = v12;
    v27 = __swift_project_value_buffer(v12, qword_2802D2F10);
    v28 = v13;
    (*(v13 + 16))(v24, v27, v26);
    v29 = sub_268C159FC();
    v30 = sub_268C15DDC();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_268BAD000, v29, v30, "TailspinHelper#doesCurrentDevicePolicyAllowTimeoutErrorsForTailspin no policy, returning false", v31, 2u);
      MEMORY[0x26D628010](v31, -1, -1);
    }

    result = (*(v28 + 8))(v24, v26);
LABEL_23:
    v67 = 0;
    goto LABEL_24;
  }

  v75 = v11;
  v76 = v22;
  v33 = qword_2802CE950;
  sub_268C1598C();
  sub_268C0AA60(v33, v25);
  v77 = v33;
  v78 = v25;
  sub_268C1597C();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_268BC4CFC(v5, &qword_2802CE978, &qword_268C1A548);
    if (qword_2802CDBE0 != -1)
    {
      swift_once();
    }

    v34 = __swift_project_value_buffer(v12, qword_2802D2F10);
    v35 = v13;
    (*(v13 + 16))(v21, v34, v12);
    v36 = sub_268C159FC();
    v37 = sub_268C15DDC();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_268BAD000, v36, v37, "TailspinHelper#doesCurrentDevicePolicyAllowTimeoutErrorsForTailspin no parseable policy, returning false", v38, 2u);
      MEMORY[0x26D628010](v38, -1, -1);
    }

    sub_268C0D51C(v77, v78);

    result = (*(v35 + 8))(v21, v12);
    goto LABEL_23;
  }

  v39 = v81;
  v40 = v75;
  (*(v81 + 32))(v75, v5, v6);
  v41 = *(sub_268C1599C() + 16);

  v42 = v6;
  v43 = v12;
  if (!v41)
  {
    v61 = v13;
    if (qword_2802CDBE0 != -1)
    {
      swift_once();
    }

    v62 = __swift_project_value_buffer(v12, qword_2802D2F10);
    (*(v13 + 16))(v17, v62, v12);
    v63 = sub_268C159FC();
    v64 = sub_268C15DDC();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&dword_268BAD000, v63, v64, "TailspinHelper#doesCurrentDevicePolicyAllowTimeoutErrorsForTailspin tailspin list is empty", v65, 2u);
      v66 = v65;
      v40 = v75;
      MEMORY[0x26D628010](v66, -1, -1);
    }

    sub_268C0D51C(v77, v78);

    (*(v61 + 8))(v17, v12);
    result = (*(v39 + 8))(v40, v42);
    goto LABEL_23;
  }

  v44 = v13;
  if (qword_2802CDBE0 != -1)
  {
    swift_once();
  }

  v45 = __swift_project_value_buffer(v43, qword_2802D2F10);
  (*(v13 + 16))(v76, v45, v43);
  v46 = v79;
  (*(v39 + 16))(v79, v40, v42);
  v47 = v39;
  v48 = sub_268C159FC();
  v49 = sub_268C15DDC();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v71 = v50;
    v73 = swift_slowAlloc();
    v83 = v73;
    *v50 = 136315138;
    v72 = v49;
    sub_268C1599C();
    v70 = MEMORY[0x26D6272E0]();
    v74 = v43;
    v51 = v46;
    v52 = v42;
    v54 = v53;

    v55 = *(v47 + 8);
    v55(v51, v52);
    v56 = v55;
    v57 = sub_268BB3D28(v70, v54, &v83);
    v42 = v52;

    v58 = v71;
    *(v71 + 1) = v57;
    _os_log_impl(&dword_268BAD000, v48, v72, "TailspinHelper#doesCurrentDevicePolicyAllowTimeoutErrorsForTailspin tailspins supported: %s", v58, 0xCu);
    v59 = v73;
    __swift_destroy_boxed_opaque_existential_0(v73);
    MEMORY[0x26D628010](v59, -1, -1);
    MEMORY[0x26D628010](v58, -1, -1);

    v60 = v56;
    (*(v44 + 8))(v76, v74);
  }

  else
  {

    v60 = *(v47 + 8);
    v60(v46, v42);
    (*(v44 + 8))(v76, v43);
  }

  v68 = sub_268C1599C();
  sub_268C0D51C(v77, v78);
  v60(v40, v42);
  v69 = *v80;
  *v80 = v68;

  v67 = 1;
LABEL_24:
  *v82 = v67;
  return result;
}

void static TailspinHelper.collectAnyExtraFiles(filePathsAndExtensions:)()
{
  OUTLINED_FUNCTION_31_0();
  v1 = v0;
  v134[1] = *MEMORY[0x277D85DE8];
  v2 = sub_268C15A1C();
  v3 = OUTLINED_FUNCTION_3_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_11();
  v109 = v8;
  OUTLINED_FUNCTION_14_8();
  MEMORY[0x28223BE20](v9);
  v111 = &v105 - v10;
  OUTLINED_FUNCTION_14_8();
  MEMORY[0x28223BE20](v11);
  v13 = &v105 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE968, qword_268C1A4F8);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v105 - v16;
  v18 = sub_268C1528C();
  v19 = OUTLINED_FUNCTION_3_0(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1_11();
  v123 = v22;
  OUTLINED_FUNCTION_14_8();
  MEMORY[0x28223BE20](v23);
  v132 = &v105 - v24;
  OUTLINED_FUNCTION_14_8();
  MEMORY[0x28223BE20](v25);
  v121 = &v105 - v27;
  v29 = v1 + 64;
  v28 = *(v1 + 64);
  v30 = 1 << *(v1 + 32);
  v31 = -1;
  v133 = MEMORY[0x277D84F90];
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v127 = v31 & v28;
  v126 = (v26 + 32);
  v129 = v26 + 16;
  v130 = v26;
  v128 = (v26 + 8);
  v116 = v5 + 16;
  v117 = (v5 + 8);
  v32 = (v30 + 63) >> 6;

  v33 = 0;
  v108 = 0;
  *&v34 = 136315138;
  v110 = v34;
  *&v34 = 136315650;
  v107 = v34;
  v131 = v18;
  v119 = v32;
  v120 = v1 + 64;
  v113 = v2;
  v115 = v1;
  v112 = v13;
  v114 = v17;
LABEL_4:
  while (2)
  {
    v35 = v127;
    if (v127)
    {
LABEL_9:
      v127 = (v35 - 1) & v35;
      v37 = (v33 << 10) | (16 * __clz(__rbit64(v35)));
      v38 = (*(v1 + 48) + v37);
      v40 = *v38;
      v39 = v38[1];
      v41 = (*(v1 + 56) + v37);
      v42 = *v41;
      v43 = v41[1];

      v122 = v40;
      sub_268C1527C();
      if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
      {

        sub_268BC4CFC(v17, &qword_2802CE968, qword_268C1A4F8);
LABEL_39:
        v32 = v119;
        v29 = v120;
        continue;
      }

      v118 = v39;
      v124 = *v126;
      (v124)(v121, v17, v18);
      v44 = [objc_opt_self() defaultManager];
      v45 = v18;
      v46 = sub_268C1526C();
      v134[0] = 0;
      v47 = [v44 contentsOfDirectoryAtURL:v46 includingPropertiesForKeys:0 options:0 error:v134];

      v48 = v134[0];
      if (!v47)
      {
        v80 = v134[0];

        v81 = sub_268C1524C();

        swift_willThrow();
        if (qword_2802CDBE0 != -1)
        {
          OUTLINED_FUNCTION_5_13();
          swift_once();
        }

        __swift_project_value_buffer(v2, qword_2802D2F10);
        OUTLINED_FUNCTION_9_10();
        v82 = v109;
        v83(v109);
        v84 = v118;

        v85 = sub_268C159FC();
        v86 = sub_268C15DEC();

        if (os_log_type_enabled(v85, v86))
        {
          v87 = swift_slowAlloc();
          v88 = swift_slowAlloc();
          v134[0] = v88;
          *v87 = v110;
          v89 = v2;
          v90 = sub_268BB3D28(v122, v84, v134);

          *(v87 + 4) = v90;
          v2 = v89;
          v91 = v117;
          _os_log_impl(&dword_268BAD000, v85, v86, "TailspinHelper#collectAnyExtraFiles error fetching attachment(s) for directory: %s", v87, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v88);
          OUTLINED_FUNCTION_30();
          OUTLINED_FUNCTION_30();

          (*v91)(v82, v89);
        }

        else
        {

          OUTLINED_FUNCTION_11_9();
          v92(v82, v2);
        }

        v18 = v131;
        (*v128)(v121, v131);
        v108 = 0;
        v1 = v115;
        v17 = v114;
        goto LABEL_39;
      }

      v2 = sub_268C15D0C();
      v49 = v48;

      v50 = 0;
      v51 = *(v2 + 16);
      v125 = MEMORY[0x277D84F90];
      v18 = v45;
      while (1)
      {
        while (1)
        {
          if (v51 == v50)
          {

            if (qword_2802CDBE0 != -1)
            {
              OUTLINED_FUNCTION_5_13();
              swift_once();
            }

            v2 = v113;
            __swift_project_value_buffer(v113, qword_2802D2F10);
            OUTLINED_FUNCTION_9_10();
            v63 = v112;
            v64(v112);
            v65 = v125;
            swift_retain_n();
            v66 = v118;

            v67 = sub_268C159FC();
            v68 = sub_268C15DDC();

            v124 = v67;
            v69 = os_log_type_enabled(v67, v68);
            v17 = v114;
            if (v69)
            {
              v70 = swift_slowAlloc();
              v106 = swift_slowAlloc();
              v134[0] = v106;
              *v70 = v107;
              v71 = sub_268BB3D28(v122, v66, v134);
              LODWORD(v122) = v68;
              v72 = v2;
              v73 = v71;

              *(v70 + 4) = v73;
              v2 = v72;
              *(v70 + 12) = 2080;
              v74 = sub_268BB3D28(v42, v43, v134);

              *(v70 + 14) = v74;
              *(v70 + 22) = 2048;
              v75 = *(v65 + 16);

              *(v70 + 24) = v75;

              v76 = v124;
              _os_log_impl(&dword_268BAD000, v124, v122, "TailspinHelper#collectAnyExtraFiles looking in %s, for %s extensions, found %ld", v70, 0x20u);
              swift_arrayDestroy();
              OUTLINED_FUNCTION_30();
              v18 = v131;
              OUTLINED_FUNCTION_30();

              OUTLINED_FUNCTION_11_9();
              v78 = v63;
              v79 = v72;
            }

            else
            {

              OUTLINED_FUNCTION_11_9();
              v78 = v63;
              v79 = v2;
            }

            v77(v78, v79);
            v32 = v119;
            sub_268BB0664(v65);
            (*v128)(v121, v18);
            v1 = v115;
            v29 = v120;
            goto LABEL_4;
          }

          if (v50 >= *(v2 + 16))
          {
            __break(1u);
            goto LABEL_45;
          }

          v52 = (*(v130 + 80) + 32) & ~*(v130 + 80);
          v53 = *(v130 + 72);
          (*(v130 + 16))(v132, v2 + v52 + v53 * v50, v18);
          if (sub_268C1525C() != v42 || v54 != v43)
          {
            break;
          }

LABEL_22:
          (v124)(v123, v132, v131);
          v57 = v125;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v134[0] = v57;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_268BB4AF8(0, v57[2] + 1, 1);
            v57 = v134[0];
          }

          v60 = v57[2];
          v59 = v57[3];
          v61 = (v60 + 1);
          if (v60 >= v59 >> 1)
          {
            v125 = (v60 + 1);
            sub_268BB4AF8(v59 > 1, v60 + 1, 1);
            v61 = v125;
            v57 = v134[0];
          }

          ++v50;
          v57[2] = v61;
          v125 = v57;
          v62 = v57 + v52 + v60 * v53;
          v18 = v131;
          (v124)(v62, v123, v131);
        }

        v56 = sub_268C1618C();

        if (v56)
        {
          goto LABEL_22;
        }

        v18 = v131;
        (*v128)(v132, v131);
        ++v50;
      }
    }

    break;
  }

  while (1)
  {
    v36 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    if (v36 >= v32)
    {
      break;
    }

    v35 = *(v29 + 8 * v36);
    ++v33;
    if (v35)
    {
      v33 = v36;
      goto LABEL_9;
    }
  }

  if (qword_2802CDBE0 == -1)
  {
    goto LABEL_41;
  }

LABEL_46:
  OUTLINED_FUNCTION_5_13();
  swift_once();
LABEL_41:
  __swift_project_value_buffer(v2, qword_2802D2F10);
  OUTLINED_FUNCTION_9_10();
  v93 = v111;
  v94(v111);
  v95 = v133;

  v96 = sub_268C159FC();
  v97 = sub_268C15DCC();

  if (os_log_type_enabled(v96, v97))
  {
    v98 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    v134[0] = v99;
    *v98 = v110;
    v100 = MEMORY[0x26D6272E0](v95, v18);
    v102 = sub_268BB3D28(v100, v101, v134);

    *(v98 + 4) = v102;
    _os_log_impl(&dword_268BAD000, v96, v97, "TailspinHelper#collectAnyExtraFiles: %s", v98, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v99);
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_30();
  }

  OUTLINED_FUNCTION_11_9();
  v103(v93, v2);
  v104 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_32_0();
}

void static TailspinHelper.generateTailSpinIfPolicyAndErrorAllow(tailspinList:errorDescription:suiteName:)()
{
  OUTLINED_FUNCTION_31_0();
  v32 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = sub_268C15A5C();
  v13 = OUTLINED_FUNCTION_3_0(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_15_0();
  v33 = OUTLINED_FUNCTION_12_8();
  v18 = OUTLINED_FUNCTION_3_0(v33);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_15_0();
  v25 = v24 - v23;
  if (qword_2802CDC00 != -1)
  {
    OUTLINED_FUNCTION_1_14();
  }

  v26 = swift_allocObject();
  v26[2] = v11;
  v26[3] = v9;
  v26[4] = v7;
  v26[5] = v32;
  v26[6] = v5;
  v26[7] = v3;
  OUTLINED_FUNCTION_2_11(v26);
  OUTLINED_FUNCTION_6_2(COERCE_DOUBLE(1107296256));
  v34[2] = v27;
  v34[3] = &block_descriptor_6;
  v28 = _Block_copy(v34);

  sub_268C15A6C();
  OUTLINED_FUNCTION_2_1();
  sub_268BC1148(v29, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE050, &qword_268C1A4F0);
  sub_268BC1190(&qword_2802CE058, &qword_2802CE050, &qword_268C1A4F0);
  sub_268C15FCC();
  v31 = OUTLINED_FUNCTION_10_13();
  MEMORY[0x26D627440](v31);
  _Block_release(v28);
  (*(v15 + 8))(v1, v12);
  (*(v20 + 8))(v25, v33);

  OUTLINED_FUNCTION_32_0();
}

uint64_t sub_268C0C16C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v55 = a5;
  v56 = a6;
  v54 = a4;
  v62 = a2;
  v63 = a3;
  v7 = sub_268C15A1C();
  v59 = *(v7 - 8);
  v60 = v7;
  v8 = v59[8];
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v53 = &v53 - v12;
  v13 = 0;
  v14 = *(a1 + 16);
  v58 = a1;
  v15 = a1 + 40;
  v61 = MEMORY[0x277D84F90];
  v57 = a1 + 40;
LABEL_2:
  v16 = (v15 + 16 * v13);
  while (v14 != v13)
  {
    if (v13 >= v14)
    {
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      swift_once();
LABEL_15:
      v26 = v14 - 32;
      v27 = v60;
      v28 = __swift_project_value_buffer(v60, qword_2802D2F10);
      v29 = v53;
      (v16[2])(v53, v28, v27);

      v30 = v63;

      v31 = sub_268C159FC();
      v32 = sub_268C15DDC();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v61 = v26;
        v34 = v33;
        v35 = swift_slowAlloc();
        v66[0] = v35;
        *v34 = 136315394;
        v36 = MEMORY[0x26D6272E0](v13, MEMORY[0x277D837D0]);
        v38 = sub_268BB3D28(v36, v37, v66);

        *(v34 + 4) = v38;
        *(v34 + 12) = 2080;
        *(v34 + 14) = sub_268BB3D28(v62, v30, v66);
        _os_log_impl(&dword_268BAD000, v31, v32, "TailspinHelper#generateTailSpinIfPolicyAndErrorAllow collecting tailspin for list: %s and errorDescription: %s", v34, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x26D628010](v35, -1, -1);
        MEMORY[0x26D628010](v34, -1, -1);
      }

      (v16[1])(v29, v27);
      v39 = v54;
      *(swift_allocObject() + 16) = v39;
      sub_268C158FC();
    }

    if (__OFADD__(v13, 1))
    {
      goto LABEL_24;
    }

    v17 = v11;
    v19 = *(v16 - 1);
    v18 = *v16;
    v66[0] = v62;
    v66[1] = v63;
    v64 = v19;
    v65 = v18;
    sub_268BB9A64();

    if (sub_268C15F7C())
    {
      v20 = v61;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v67 = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_268BB4AB8(0, *(v20 + 2) + 1, 1);
        v20 = v67;
      }

      v23 = *(v20 + 2);
      v22 = *(v20 + 3);
      if (v23 >= v22 >> 1)
      {
        sub_268BB4AB8((v22 > 1), v23 + 1, 1);
        v20 = v67;
      }

      *(v20 + 2) = v23 + 1;
      v61 = v20;
      v24 = &v20[16 * v23];
      *(v24 + 4) = v19;
      *(v24 + 5) = v18;
      ++v13;
      v11 = v17;
      v15 = v57;
      goto LABEL_2;
    }

    ++v13;
    v16 += 2;
    v11 = v17;
  }

  v25 = *(v61 + 2);

  if (v25)
  {
    byte_2802CE940 = 1;
    v14 = "Music-Timeout-Error-V5";
    v13 = v58;
    v16 = v59;
    if (qword_2802CDBE0 != -1)
    {
      goto LABEL_25;
    }

    goto LABEL_15;
  }

  v42 = v58;
  v41 = v59;
  if (qword_2802CDBE0 != -1)
  {
    swift_once();
  }

  v43 = v60;
  v44 = __swift_project_value_buffer(v60, qword_2802D2F10);
  (v41[2])(v11, v44, v43);

  v45 = v63;

  v46 = sub_268C159FC();
  v47 = sub_268C15DDC();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v66[0] = v49;
    *v48 = 136315394;
    v50 = MEMORY[0x26D6272E0](v42, MEMORY[0x277D837D0]);
    v52 = sub_268BB3D28(v50, v51, v66);

    *(v48 + 4) = v52;
    *(v48 + 12) = 2080;
    *(v48 + 14) = sub_268BB3D28(v62, v45, v66);
    _os_log_impl(&dword_268BAD000, v46, v47, "TailspinHelper#generateTailSpinIfPolicyAndErrorAllow no op, with tailspinList: %s and errorDescription: '%s'", v48, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D628010](v49, -1, -1);
    MEMORY[0x26D628010](v48, -1, -1);
  }

  result = (v41[1])(v11, v43);
  byte_2802CE940 = 0;
  return result;
}

void sub_268C0C760(char a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_268C15A1C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v24 - v12;
  if ((a1 & 1) != 0 && a3)
  {
    if (qword_2802CDBE0 != -1)
    {
      swift_once();
    }

    v14 = __swift_project_value_buffer(v6, qword_2802D2F10);
    (*(v7 + 16))(v13, v14, v6);

    v15 = sub_268C159FC();
    v16 = sub_268C15DFC();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v25 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_268BB3D28(a2, a3, &v25);
      _os_log_impl(&dword_268BAD000, v15, v16, "TailspinHelper#generateTailSpinIfPolicyAndErrorAllow createTailSpinFile generated: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x26D628010](v18, -1, -1);
      MEMORY[0x26D628010](v17, -1, -1);
    }

    (*(v7 + 8))(v13, v6);
  }

  else
  {
    if (qword_2802CDBE0 != -1)
    {
      swift_once();
    }

    v19 = __swift_project_value_buffer(v6, qword_2802D2F10);
    (*(v7 + 16))(v11, v19, v6);
    v20 = sub_268C159FC();
    v21 = sub_268C15DEC();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_268BAD000, v20, v21, "TailspinHelper#generateTailSpinIfPolicyAndErrorAllow failed to create tailspin file", v22, 2u);
      MEMORY[0x26D628010](v22, -1, -1);
    }

    (*(v7 + 8))(v11, v6);
  }

  if (qword_2802CDBF8 != -1)
  {
    swift_once();
  }

  v23 = qword_2802CE948;
  sub_268C15EDC();
}

void static TailspinHelper.getAllTailspins(suiteName:completion:)()
{
  OUTLINED_FUNCTION_31_0();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_268C15A5C();
  v11 = OUTLINED_FUNCTION_3_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_15_0();
  v30 = OUTLINED_FUNCTION_12_8();
  v16 = OUTLINED_FUNCTION_3_0(v30);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_15_0();
  v23 = v22 - v21;
  if (qword_2802CDC00 != -1)
  {
    OUTLINED_FUNCTION_1_14();
  }

  v24 = swift_allocObject();
  v24[2] = v9;
  v24[3] = v7;
  v24[4] = v0;
  v24[5] = v5;
  v24[6] = v3;
  OUTLINED_FUNCTION_2_11(v24);
  OUTLINED_FUNCTION_6_2(COERCE_DOUBLE(1107296256));
  v31[2] = v25;
  v31[3] = &block_descriptor_12;
  v26 = _Block_copy(v31);

  sub_268C15A6C();
  OUTLINED_FUNCTION_2_1();
  sub_268BC1148(v27, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE050, &qword_268C1A4F0);
  sub_268BC1190(&qword_2802CE058, &qword_2802CE050, &qword_268C1A4F0);
  OUTLINED_FUNCTION_8_14();
  v29 = OUTLINED_FUNCTION_10_13();
  MEMORY[0x26D627440](v29);
  _Block_release(v26);
  (*(v13 + 8))(v1, v10);
  (*(v18 + 8))(v23, v30);

  OUTLINED_FUNCTION_32_0();
}

uint64_t sub_268C0CD08(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v62 = a5;
  v63 = a4;
  v59 = sub_268C15A3C();
  v57 = *(v59 - 8);
  v7 = *(v57 + 64);
  MEMORY[0x28223BE20](v59);
  v55 = (&v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v58 = sub_268C15ADC();
  v56 = *(v58 - 8);
  v9 = *(v56 + 64);
  MEMORY[0x28223BE20](v58);
  v53 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v54 = &v51 - v12;
  v13 = sub_268C15A1C();
  v14 = *(v13 - 8);
  v15 = v14[8];
  MEMORY[0x28223BE20](v13);
  v60 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v51 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v51 - v21;
  type metadata accessor for TailspinHelper();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE970, &qword_268C1A540);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_268C172B0;
  v64 = sub_268C1590C();
  v65 = v24;

  MEMORY[0x26D627230](a1, a2);

  v25 = v65;
  *(inited + 32) = v64;
  *(inited + 40) = v25;
  *(inited + 48) = 0x6E6970736C696174;
  *(inited + 56) = 0xE800000000000000;
  sub_268C15B7C();
  static TailspinHelper.collectAnyExtraFiles(filePathsAndExtensions:)();
  v27 = v26;

  if (qword_2802CDBE0 != -1)
  {
    swift_once();
  }

  v28 = __swift_project_value_buffer(v13, qword_2802D2F10);
  v61 = v14[2];
  v61(v22, v28, v13);

  v29 = sub_268C159FC();
  v30 = sub_268C15DFC();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 134217984;
    *(v31 + 4) = *(v27 + 16);

    _os_log_impl(&dword_268BAD000, v29, v30, "TailspinHelper#getAllTailspins count: %ld", v31, 0xCu);
    MEMORY[0x26D628010](v31, -1, -1);
  }

  else
  {
  }

  v32 = v14[1];
  v32(v22, v13);
  if (byte_2802CE940 == 1)
  {
    v61(v19, v28, v13);
    v33 = sub_268C159FC();
    v34 = sub_268C15DFC();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 134217984;
      *(v35 + 4) = 20;
      _os_log_impl(&dword_268BAD000, v33, v34, "TailspinHelper#getAllTailspins waiting up to %ld seconds for tailspin file creation to complete", v35, 0xCu);
      MEMORY[0x26D628010](v35, -1, -1);
    }

    v52 = v28;

    v51 = v32;
    v32(v19, v13);
    if (qword_2802CDBF8 != -1)
    {
      swift_once();
    }

    v36 = qword_2802CE948;
    v37 = v53;
    sub_268C15ABC();
    v38 = v55;
    *v55 = 20;
    v39 = v57;
    v40 = v59;
    (*(v57 + 104))(v38, *MEMORY[0x277D85188], v59);
    v41 = v54;
    MEMORY[0x26D6270F0](v37, v38);
    (*(v39 + 8))(v38, v40);
    v42 = *(v56 + 8);
    v43 = v37;
    v44 = v58;
    v42(v43, v58);
    sub_268C15EBC();

    v42(v41, v44);
    v45 = sub_268C15A4C();
    v46 = v60;
    v61(v60, v52, v13);
    v47 = sub_268C159FC();
    v48 = sub_268C15DFC();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 67109120;
      *(v49 + 4) = v45 & 1;
      _os_log_impl(&dword_268BAD000, v47, v48, "TailspinHelper#getAllTailspins notification received: %{BOOL}d", v49, 8u);
      MEMORY[0x26D628010](v49, -1, -1);
    }

    v51(v46, v13);
  }

  v63(v27);
}

uint64_t sub_268C0D3C8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_268C0D3F8()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_268C0D450()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_268C0D51C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_268C0A9D0(a1, a2);
  }

  return a1;
}

uint64_t OUTLINED_FUNCTION_1_14()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_11(uint64_t result)
{
  *(v2 - 96) = v1;
  *(v2 - 88) = result;
  *(v2 - 128) = MEMORY[0x277D85DD0];
  return result;
}

uint64_t OUTLINED_FUNCTION_7_13()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_8_14()
{

  return sub_268C15FCC();
}

uint64_t OUTLINED_FUNCTION_12_8()
{

  return sub_268C15AAC();
}

uint64_t sub_268C0D638@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE980, &qword_268C1A560);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v12 - v4;
  v6 = sub_268C157DC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_268C157CC();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    result = sub_268C0D808(v5);
    *a1 = 0;
    *(a1 + 8) = -1;
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    if (qword_2802CDC08 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    sub_268C0F3A0(qword_2802D2F38, a1);
    swift_endAccess();
    return (*(v7 + 8))(v10, v6);
  }

  return result;
}

uint64_t sub_268C0D808(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE980, &qword_268C1A560);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_268C0D870()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE988, &qword_268C1A568);
  v0 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE990, qword_268C1A570) - 8);
  v1 = *(*v0 + 72);
  v2 = (*(*v0 + 80) + 32) & ~*(*v0 + 80);
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_268C1A550;
  v3 = v68 + v2 + v0[14];
  v4 = *MEMORY[0x277D5EC48];
  v5 = sub_268C157DC();
  v6 = *(*(v5 - 8) + 104);
  (v6)(v68 + v2, v4, v5);
  *v3 = 1;
  *(v3 + 8) = 0;
  v7 = v68 + v2 + v1 + v0[14];
  v8 = *MEMORY[0x277D5EB60];
  v6();
  *v7 = 1;
  *(v7 + 8) = 0;
  v9 = v68 + v2 + 2 * v1 + v0[14];
  v10 = *MEMORY[0x277D5EC00];
  v6();
  *v9 = 1;
  *(v9 + 8) = 0;
  v11 = v68 + v2 + 3 * v1 + v0[14];
  v12 = *MEMORY[0x277D5EC40];
  v6();
  *v11 = 2;
  *(v11 + 8) = 0;
  v13 = v68 + v2 + 4 * v1 + v0[14];
  v14 = *MEMORY[0x277D5EC20];
  v6();
  *v13 = 3;
  *(v13 + 8) = 0;
  v15 = v68 + v2 + 5 * v1 + v0[14];
  v16 = *MEMORY[0x277D5EC30];
  v6();
  *v15 = 4;
  *(v15 + 8) = 0;
  v17 = v68 + v2 + 6 * v1 + v0[14];
  v18 = *MEMORY[0x277D5EBF8];
  v6();
  *v17 = 5;
  *(v17 + 8) = 0;
  v19 = v68 + v2 + 7 * v1 + v0[14];
  v20 = *MEMORY[0x277D5EC10];
  v6();
  *v19 = 6;
  *(v19 + 8) = 0;
  v21 = v68 + v2 + 8 * v1 + v0[14];
  v22 = *MEMORY[0x277D5EC50];
  v6();
  *v21 = 7;
  *(v21 + 8) = 0;
  v23 = v68 + v2 + 9 * v1 + v0[14];
  v24 = *MEMORY[0x277D5EC28];
  v6();
  *v23 = 8;
  *(v23 + 8) = 0;
  v25 = v68 + v2 + 10 * v1 + v0[14];
  v26 = *MEMORY[0x277D5EC08];
  v6();
  *v25 = 9;
  *(v25 + 8) = 0;
  v27 = v68 + v2 + 11 * v1 + v0[14];
  v28 = *MEMORY[0x277D5EC18];
  v6();
  *v27 = 10;
  *(v27 + 8) = 0;
  v29 = v68 + v2 + 12 * v1 + v0[14];
  v30 = *MEMORY[0x277D5EC60];
  v6();
  *v29 = 11;
  *(v29 + 8) = 0;
  v31 = v68 + v2 + 13 * v1 + v0[14];
  v32 = *MEMORY[0x277D5EC58];
  v6();
  *v31 = 12;
  *(v31 + 8) = 0;
  v33 = v68 + v2 + 14 * v1 + v0[14];
  v34 = *MEMORY[0x277D5EB98];
  v6();
  *v33 = 13;
  *(v33 + 8) = 0;
  v35 = v68 + v2 + 15 * v1 + v0[14];
  v36 = *MEMORY[0x277D5EB88];
  v6();
  *v35 = 14;
  *(v35 + 8) = 0;
  v37 = v68 + v2 + 16 * v1 + v0[14];
  v38 = *MEMORY[0x277D5EB68];
  v6();
  *v37 = 15;
  *(v37 + 8) = 0;
  v39 = v68 + v2 + 17 * v1 + v0[14];
  v40 = *MEMORY[0x277D5EB70];
  v6();
  *v39 = 16;
  *(v39 + 8) = 0;
  v41 = v68 + v2 + 18 * v1 + v0[14];
  v42 = *MEMORY[0x277D5EBA0];
  v6();
  *v41 = 17;
  *(v41 + 8) = 0;
  v43 = v68 + v2 + 19 * v1 + v0[14];
  v44 = *MEMORY[0x277D5EB80];
  v6();
  *v43 = 18;
  *(v43 + 8) = 0;
  v45 = v68 + v2 + 20 * v1 + v0[14];
  v46 = *MEMORY[0x277D5EB90];
  v6();
  *v45 = 19;
  *(v45 + 8) = 0;
  v47 = v68 + v2 + 21 * v1 + v0[14];
  v48 = *MEMORY[0x277D5EB78];
  v6();
  *v47 = 20;
  *(v47 + 8) = 0;
  v49 = v68 + v2 + 22 * v1 + v0[14];
  v50 = *MEMORY[0x277D5EBB8];
  v6();
  *v49 = 21;
  *(v49 + 8) = 0;
  v51 = v68 + v2 + 23 * v1 + v0[14];
  v52 = *MEMORY[0x277D5EBD8];
  v6();
  *v51 = 22;
  *(v51 + 8) = 0;
  v53 = v68 + v2 + 24 * v1 + v0[14];
  v54 = *MEMORY[0x277D5EBC0];
  v6();
  *v53 = 23;
  *(v53 + 8) = 0;
  v55 = v68 + v2 + 25 * v1 + v0[14];
  v56 = *MEMORY[0x277D5EBD0];
  v6();
  *v55 = 24;
  *(v55 + 8) = 0;
  v57 = v68 + v2 + 26 * v1 + v0[14];
  v58 = *MEMORY[0x277D5EBB0];
  v6();
  *v57 = 25;
  *(v57 + 8) = 0;
  v59 = v68 + v2 + 27 * v1 + v0[14];
  v60 = *MEMORY[0x277D5EBA8];
  v6();
  *v59 = 3;
  *(v59 + 8) = 1;
  v61 = v68 + v2 + 28 * v1 + v0[14];
  v62 = *MEMORY[0x277D5EBC8];
  v6();
  *v61 = 2;
  *(v61 + 8) = 1;
  v63 = v68 + v2 + 29 * v1 + v0[14];
  v64 = *MEMORY[0x277D5EBE8];
  v6();
  *v63 = 1;
  *(v63 + 8) = 1;
  v65 = v68 + v2 + 30 * v1 + v0[14];
  v66 = *MEMORY[0x277D5EBE0];
  v6();
  *v65 = 1;
  *(v65 + 8) = 1;
  sub_268C0E018();
  result = sub_268C15B7C();
  qword_2802D2F38 = result;
  return result;
}

unint64_t sub_268C0E018()
{
  result = qword_2802CE228;
  if (!qword_2802CE228)
  {
    sub_268C157DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE228);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ControlsError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0x3A)
  {
    if (a2 + 198 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 198) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 199;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC7;
  v5 = v6 - 199;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ControlsError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 198 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 198) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x3A)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x39)
  {
    v6 = ((a2 - 58) >> 8) + 1;
    *result = a2 - 58;
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
        JUMPOUT(0x268C0E1C4);
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
          *result = a2 - 58;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_268C0E200()
{
  result = qword_2802CE998;
  if (!qword_2802CE998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE998);
  }

  return result;
}

uint64_t sub_268C0E254(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_268C15A1C();
  v12 = OUTLINED_FUNCTION_3_0(v11);
  v85 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  v17 = (&v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v89 = a5;
  v90 = a4;
  if (a3)
  {
    v18 = MEMORY[0x277CC8838];
    v19 = sub_268C0E9D4(a4, a5, MEMORY[0x277CC8838]);
    v20 = MEMORY[0x277CC8830];
    sub_268C0E9D4(v19, v21, MEMORY[0x277CC8830]);
    v5 = v22;

    v23 = sub_268C15C1C();
    a5 = v24;

    v25 = sub_268C0E9D4(a1, a2, v18);
    sub_268C0E9D4(v25, v26, v20);
    a4 = v27;
    v28 = v23;

    a1 = sub_268C15C1C();
  }

  else
  {

    v28 = a4;
  }

  v29 = sub_268C15C4C();
  v30 = sub_268C15C4C();
  v31 = v30;
  if (v29 < 1 || v30 <= 0)
  {

    if (v31 <= v29)
    {
      return v29;
    }

    else
    {
      return v31;
    }
  }

  if (__OFADD__(v30, 1))
  {
    goto LABEL_83;
  }

  v34 = sub_268C0EB14(0, v30 + 1);
  if (__OFADD__(v29, 1))
  {
    goto LABEL_84;
  }

  v88 = v31;
  a4 = sub_268C0EBB8(v34, v29 + 1);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_85;
  }

  while (1)
  {
    if (*(a4 + 16) < 2uLL)
    {
      __break(1u);
    }

    else
    {
      v31 = *(a4 + 40);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a4 + 40) = v31;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_17;
      }
    }

    OUTLINED_FUNCTION_1_15();
    *(a4 + 40) = v81;
LABEL_17:
    if (v31[2])
    {
      v87 = v28;
      v28 = a5;
      v91 = a4;
      v31[4] = 1;
      a4 = v29 - 1;
      if (v29 != 1)
      {
        a5 = v91 + 48;
        v5 = 2;
        while (v5 < *(v91 + 16))
        {
          v31 = *a5;
          v76 = swift_isUniquelyReferenced_nonNull_native();
          *a5 = v31;
          if ((v76 & 1) == 0)
          {
            OUTLINED_FUNCTION_1_15();
            *a5 = v77;
          }

          if (!v31[2])
          {
            goto LABEL_80;
          }

          v31[4] = v5++;
          a5 += 8;
          if (!--a4)
          {
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_80:
        __break(1u);
        goto LABEL_81;
      }

LABEL_19:
      v5 = v91;
      if (*(v91 + 16))
      {
        v84 = v17;
        v17 = (v91 + 32);
        v31 = *(v91 + 32);
        v36 = swift_isUniquelyReferenced_nonNull_native();
        *(v5 + 32) = v31;
        if (v36)
        {
          goto LABEL_21;
        }

        goto LABEL_90;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_90:
    OUTLINED_FUNCTION_1_15();
LABEL_21:
    v37 = v88;
    if (v31[2] < 2uLL)
    {
      __break(1u);
LABEL_92:
      swift_once();
      goto LABEL_52;
    }

    v31[5] = 1;
    *v17 = v31;
    a4 = v37 - 1;
    if (v37 == 1)
    {
      break;
    }

    a5 = 6;
    while (*(v5 + 16))
    {
      v31 = *v17;
      v78 = swift_isUniquelyReferenced_nonNull_native();
      *v17 = v31;
      if ((v78 & 1) == 0)
      {
        OUTLINED_FUNCTION_1_15();
        *v17 = v79;
      }

      if ((a5 - 4) >= v31[2])
      {
        goto LABEL_82;
      }

      v31[a5] = a5 - 4;
      ++a5;
      if (!--a4)
      {
        goto LABEL_23;
      }
    }

LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    sub_268C0EC64(a4);
    a4 = v80;
  }

LABEL_23:
  v83 = v11;
  v38 = 1;
  v86 = v29;
  while (2)
  {
    v39 = 0;
    v40 = v38 - 1;
    do
    {
      sub_268C15C5C();
      v41 = sub_268C15C8C();
      v43 = v42;
      sub_268C15C5C();
      v45 = v41 == sub_268C15C8C() && v43 == v44;
      if (v45)
      {

        v47 = 0;
      }

      else
      {
        v46 = sub_268C1618C();

        v47 = (v46 & 1) == 0;
      }

      v48 = *(v91 + 16);
      if (v38 > v48)
      {
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
        goto LABEL_76;
      }

      v49 = v17[v40];
      if (v39 + 1 >= *(v49 + 2))
      {
        goto LABEL_69;
      }

      v50 = v49 + 8 * v39;
      v51 = *(v50 + 40);
      v52 = __OFADD__(v51, 1);
      v53 = v51 + 1;
      if (v52)
      {
        goto LABEL_70;
      }

      if (v38 >= v48)
      {
        goto LABEL_71;
      }

      v54 = v17[v38];
      if (v39 >= *(v54 + 16))
      {
        goto LABEL_72;
      }

      v55 = *(v54 + 8 * v39 + 32);
      v52 = __OFADD__(v55, 1);
      v56 = v55 + 1;
      if (v52)
      {
        goto LABEL_73;
      }

      v57 = *(v50 + 32);
      v52 = __OFADD__(v57, v47);
      v58 = v57 + v47;
      if (v52)
      {
        goto LABEL_74;
      }

      if (v56 < v53)
      {
        v53 = v56;
      }

      if (v58 >= v53)
      {
        v59 = v53;
      }

      else
      {
        v59 = v58;
      }

      v60 = v17[v38];
      v61 = swift_isUniquelyReferenced_nonNull_native();
      v17[v38] = v54;
      if ((v61 & 1) == 0)
      {
        sub_268C0EC50(v54);
        v54 = v62;
        v17[v38] = v62;
      }

      if (v39 + 1 >= *(v54 + 16))
      {
        goto LABEL_75;
      }

      *(v54 + 8 * v39++ + 40) = v59;
    }

    while (v88 != v39);
    v45 = v38++ == v86;
    if (!v45)
    {
      continue;
    }

    break;
  }

  v63 = sub_268BF9D94(v91);
  if (v63)
  {
    v64 = sub_268BF9DC8(v63);
    v66 = v65;

    if ((v66 & 1) == 0)
    {
      goto LABEL_77;
    }
  }

  if (qword_2802CDBE0 != -1)
  {
    goto LABEL_92;
  }

LABEL_52:
  a1 = v83;
  v67 = __swift_project_value_buffer(v83, qword_2802D2F10);
  v38 = v84;
  v17 = v85;
  (v85[2])(v84, v67, a1);
  v40 = sub_268C159FC();
  v68 = sub_268C15DFC();
  v69 = os_log_type_enabled(v40, v68);
  v70 = v91;
  if (!v69)
  {
LABEL_76:

    v17[1](v38, a1);

    return 99;
  }

  v71 = swift_slowAlloc();
  v72 = swift_slowAlloc();
  v93 = v72;
  *v71 = 136315394;
  v92 = sub_268BF9D94(v70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE9A0, &qword_268C1A658);
  v73 = sub_268C15C0C();
  v75 = sub_268BB3D28(v73, v74, &v93);

  *(v71 + 4) = v75;
  *(v71 + 12) = 2048;
  v64 = 99;
  *(v71 + 14) = 99;
  _os_log_impl(&dword_268BAD000, v40, v68, "    Got nil value from %s.\n    Returning a big editDistanceValue: %ld", v71, 0x16u);
  __swift_destroy_boxed_opaque_existential_0(v72);
  MEMORY[0x26D628010](v72, -1, -1);
  MEMORY[0x26D628010](v71, -1, -1);

  v17[1](v38, a1);
LABEL_77:

  return v64;
}

uint64_t sub_268C0E9D4(uint64_t a1, uint64_t a2, void (*a3)(__n128))
{
  v6 = sub_268C1522C();
  v7 = OUTLINED_FUNCTION_3_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v7);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[0] = a1;
  v18[1] = a2;
  a3(v12);
  sub_268BB9A64();
  v15 = sub_268C15F2C();
  (*(v9 + 8))(v14, v6);
  v18[0] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802CE5B0, &qword_268C18770);
  sub_268BDCF60();
  v16 = sub_268C15B9C();

  return v16;
}

uint64_t sub_268C0EB14(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = result;
    result = sub_268C15D4C();
    v4 = 0;
    *(result + 16) = a2;
    v5 = vdupq_n_s64(a2 - 1);
    do
    {
      v6 = vmovn_s64(vcgeq_u64(v5, vorrq_s8(vdupq_n_s64(v4), xmmword_268C16D40)));
      v7 = result + 8 * v4;
      if (v6.i8[0])
      {
        *(v7 + 32) = v3;
      }

      if (v6.i8[4])
      {
        *(v7 + 40) = v3;
      }

      v4 += 2;
    }

    while (((a2 + 1) & 0xFFFFFFFFFFFFFFFELL) != v4);
  }

  else
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_268C0EBB8(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDD10, &qword_268C170D8);
      v4 = sub_268C15D4C();
      *(v4 + 16) = a2;
      v5 = a2 - 1;
      for (i = 32; ; i += 8)
      {
        *(v4 + i) = v3;
        if (!v5)
        {
          break;
        }

        --v5;
      }
    }

    else
    {

      return MEMORY[0x277D84F90];
    }

    return v4;
  }

  return result;
}

uint64_t static MRCommandIDHelper.ensureMRCommandIDInOptions(options:)(uint64_t a1)
{
  v2 = sub_268C1531C();
  v3 = OUTLINED_FUNCTION_3_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_268C15A1C();
  v11 = OUTLINED_FUNCTION_3_0(v10);
  v52 = v12;
  v53 = v11;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v11);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v50 - v18;
  *&v55 = *MEMORY[0x277D27CE8];
  v20 = v55;
  v21 = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE0F0, qword_268C1A660);
  sub_268BD6B58();
  sub_268C1601C();
  sub_268C0F2AC(v57, a1, &v55);
  sub_268BDAE1C(v57);
  if (v56)
  {
    sub_268BD8290(&v55, v58);
    if (qword_2802CDBE0 != -1)
    {
      OUTLINED_FUNCTION_18();
    }

    v22 = v53;
    v23 = __swift_project_value_buffer(v53, qword_2802D2F10);
    v24 = v52;
    (*(v52 + 16))(v19, v23, v22);
    sub_268BB5B20(v58, v57);
    v25 = sub_268C159FC();
    v26 = sub_268C15DDC();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v54 = v28;
      *v27 = 136315138;
      sub_268BB5B20(v57, &v55);
      v29 = sub_268C15C0C();
      v31 = v30;
      __swift_destroy_boxed_opaque_existential_0(v57);
      v32 = sub_268BB3D28(v29, v31, &v54);

      *(v27 + 4) = v32;
      _os_log_impl(&dword_268BAD000, v25, v26, "MRCommandIDHelper#ensureMRCommandID already have MR command ID: %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_30();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(v57);
    }

    (*(v24 + 8))(v19, v22);
    __swift_destroy_boxed_opaque_existential_0(v58);
  }

  else
  {
    v51 = v17;
    sub_268BE07E8(&v55);
    sub_268C1530C();
    v33 = sub_268C152EC();
    v35 = v34;
    v36 = v9;
    v37 = v33;
    (*(v5 + 8))(v36, v2);
    v54 = a1;

    v38 = sub_268C15BEC();
    v56 = sub_268C0F310();
    *&v55 = v38;
    *&v58[0] = v20;
    v39 = v21;
    sub_268C1601C();
    sub_268C0F744(&v55, v57, v58);
    sub_268BDAE1C(v57);
    sub_268BE07E8(v58);
    if (qword_2802CDBE0 != -1)
    {
      OUTLINED_FUNCTION_18();
    }

    v40 = v53;
    v41 = __swift_project_value_buffer(v53, qword_2802D2F10);
    v43 = v51;
    v42 = v52;
    (*(v52 + 16))(v51, v41, v40);

    v44 = sub_268C159FC();
    v45 = sub_268C15DDC();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v57[0] = v47;
      *v46 = 136315138;
      v48 = sub_268BB3D28(v37, v35, v57);

      *(v46 + 4) = v48;
      _os_log_impl(&dword_268BAD000, v44, v45, "MRCommandIDHelper#ensureMRCommandID generated MR command ID: %s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v47);
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_30();
    }

    else
    {
    }

    (*(v42 + 8))(v43, v40);
    return v54;
  }

  return a1;
}

unint64_t sub_268C0F1C0()
{
  result = qword_2802CDC80;
  if (!qword_2802CDC80)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CDC80);
  }

  return result;
}

uint64_t sub_268C0F218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = sub_268BD99A0(a1, a2);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_3_14(v3);
}

void sub_268C0F264(uint64_t a1@<X1>, char *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_268BD9A18(), (v5 & 1) != 0))
  {
    v6 = *(*(a1 + 56) + v4);
  }

  else
  {
    v6 = 5;
  }

  *a2 = v6;
}

double sub_268C0F2AC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_268BD9AE0(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_268BB5B20(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

unint64_t sub_268C0F310()
{
  result = qword_2802CE9A8;
  if (!qword_2802CE9A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2802CE9A8);
  }

  return result;
}

uint64_t sub_268C0F354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = sub_268BD99A0(a1, a2);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_3_14(v3);
  return swift_unknownObjectRetain();
}

void sub_268C0F3A0(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_268BD9B24(), (v5 & 1) != 0))
  {
    v6 = *(a1 + 56) + 16 * v4;
    v7 = *v6;
    v8 = *(v6 + 8);
    *a2 = v7;
  }

  else
  {
    *a2 = 0;
    v8 = -1;
  }

  *(a2 + 8) = v8;
}

double sub_268C0F3F8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_268BD99A0(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_268BB5B20(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_268C0F48C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = a3();
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_2_12(v4);

  return v3;
}

uint64_t sub_268C0F4DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_268BD99A0(a1, a2), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(a3 + 56);
    v10 = type metadata accessor for MediaGroup();
    sub_268BF24DC(v9 + *(*(v10 - 8) + 72) * v8, a4);
    v11 = a4;
    v12 = 0;
    v13 = v10;
  }

  else
  {
    v13 = type metadata accessor for MediaGroup();
    v11 = a4;
    v12 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v11, v12, 1, v13);
}

uint64_t sub_268C0F58C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = sub_268BD9C8C();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_3_14(v2);
}

uint64_t sub_268C0F5D8(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = sub_268BD9BEC(a1);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_3_14(v2);
}

uint64_t sub_268C0F624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_268BD99A0(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_2_12(v4);

  return v3;
}

uint64_t static MRCommandIDHelper.getMRCommandIDFromOptions(options:)(uint64_t a1)
{
  *&v6 = *MEMORY[0x277D27CE8];
  v2 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE0F0, qword_268C1A660);
  sub_268BD6B58();
  sub_268C1601C();
  sub_268C0F2AC(v5, a1, &v6);
  sub_268BDAE1C(v5);
  if (v7)
  {
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_268BE07E8(&v6);
    return 0;
  }
}

uint64_t sub_268C0F744@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v8 = *v3;
  swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;
  v9 = sub_268BD9AE0(a2);
  if (__OFADD__(v18[2], (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE9B0, qword_268C1A6A8);
  if (sub_268C1610C())
  {
    v13 = sub_268BD9AE0(a2);
    if ((v12 & 1) == (v14 & 1))
    {
      v11 = v13;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_268C161CC();
    __break(1u);
    return result;
  }

LABEL_5:
  v15 = v18;
  if (v12)
  {
    sub_268BD8290((v18[7] + 32 * v11), a3);
    result = sub_268BD8290(a1, (v18[7] + 32 * v11));
  }

  else
  {
    sub_268BDADC0(a2, v17);
    result = sub_268BEF158(v11, v17, a1, v15);
    *a3 = 0u;
    a3[1] = 0u;
  }

  *v4 = v15;
  return result;
}

_BYTE *storeEnumTagSinglePayload for MRCommandIDHelper(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x268C0F924);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_12(uint64_t a1)
{
  v2 = (*(v1 + 56) + 16 * a1);
  v3 = *v2;
  return v2[1];
}

unint64_t sub_268C0F9A4(char a1)
{
  result = 0xD000000000000013;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001CLL;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0xD000000000000017;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t UsoIdentifier.AppIdentifier.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_268C1615C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_268C0FAC8@<X0>(BOOL *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return UsoIdentifier.AppIdentifier.init(rawValue:)(a1);
}

unint64_t sub_268C0FAD4@<X0>(void *a1@<X8>)
{
  result = UsoIdentifier.AppIdentifier.rawValue.getter();
  *a1 = 0xD000000000000014;
  a1[1] = v3;
  return result;
}

uint64_t sub_268C0FB34(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v8 = sub_268C156EC();
  v9 = OUTLINED_FUNCTION_3_13(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5_14();
  (*(v11 + 104))(v5);
  v14 = sub_268C156DC();
  v16 = v15;
  result = (*(v11 + 8))(v5, v4);
  *a3 = v14;
  *a4 = v16;
  return result;
}

uint64_t sub_268C0FC1C()
{
  v0 = sub_268C1570C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v5, *MEMORY[0x277D5E6E0], v0, v3);
  v6 = sub_268C156FC();
  v8 = v7;
  result = (*(v1 + 8))(v5, v0);
  qword_2802CE9B8 = v6;
  unk_2802CE9C0 = v8;
  return result;
}

uint64_t static UsoIdentifier.getRoomPlaceHintIdentifier()()
{
  if (qword_2802CDC18 != -1)
  {
    OUTLINED_FUNCTION_0_13();
  }

  return sub_268C155AC();
}

uint64_t sub_268C0FDEC()
{
  v2 = sub_268C1561C();
  v3 = OUTLINED_FUNCTION_3_13(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5_14();
  (*(v5 + 104))(v1);
  sub_268C1560C();
  (*(v5 + 8))(v1, v0);
  if (qword_2802CDC10 != -1)
  {
    OUTLINED_FUNCTION_4_14();
  }

  OUTLINED_FUNCTION_1_16();
  return sub_268C155AC();
}

uint64_t _s12SiriOntology13UsoIdentifierV0A22PlaybackControlSupportE015getRoomSemanticD08roomNameACSS_tFZ_0()
{
  v0 = qword_2802CDC10;

  if (v0 != -1)
  {
    OUTLINED_FUNCTION_4_14();
  }

  v1 = qword_2802CDC20;

  if (v1 != -1)
  {
    swift_once();
  }

  return sub_268C155AC();
}

uint64_t static UsoIdentifier.getTVHomeAutomationServiceIdentifier()()
{
  if (qword_2802CDBA0 != -1)
  {
    OUTLINED_FUNCTION_1_5();
  }

  sub_268C0F474(8, off_2802CE390);
  if (qword_2802CDC18 != -1)
  {
    OUTLINED_FUNCTION_0_13();
  }

  OUTLINED_FUNCTION_1_16();

  return sub_268C155AC();
}

uint64_t static UsoIdentifier.getHomePodHomeAutomationServiceIdentifier()()
{
  if (qword_2802CDBA0 != -1)
  {
    OUTLINED_FUNCTION_1_5();
  }

  sub_268C0F474(2, off_2802CE390);
  if (qword_2802CDC18 != -1)
  {
    OUTLINED_FUNCTION_0_13();
  }

  OUTLINED_FUNCTION_1_16();

  return sub_268C155AC();
}

unint64_t sub_268C10248()
{
  result = qword_2802CE9C8;
  if (!qword_2802CE9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE9C8);
  }

  return result;
}

_BYTE *_s13AppIdentifierOwst(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x268C10338);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_13()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_14()
{

  return swift_once();
}

uint64_t sub_268C10428()
{
  if (qword_2802CDC28 != -1)
  {
    OUTLINED_FUNCTION_4_15();
  }

  sub_268C15ECC();
  v0 = qword_2802CE9D0;
  if (qword_2802CE9D0)
  {
  }

  else
  {
    type metadata accessor for LifeCycleManager();
    OUTLINED_FUNCTION_5_15();
    swift_allocObject();
    v0 = sub_268C104F0();
    qword_2802CE9D0 = v0;
  }

  sub_268C15EDC();
  return v0;
}

dispatch_semaphore_t sub_268C104CC()
{
  result = dispatch_semaphore_create(1);
  qword_2802D2F60 = result;
  return result;
}

uint64_t sub_268C104F0()
{
  v12 = sub_268C15E4C();
  v1 = *(v12 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v12);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_268C15E1C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = sub_268C15AAC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_268C089BC();
  v11[0] = "numberOfWorkItems";
  v11[1] = v9;
  sub_268C15A6C();
  v13 = MEMORY[0x277D84F90];
  sub_268BC1148(&qword_2802CE070, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE078, &unk_268C177B0);
  sub_268BC1190(&unk_2802CE080, &qword_2802CE078, &unk_268C177B0);
  sub_268C15FCC();
  (*(v1 + 104))(v4, *MEMORY[0x277D85260], v12);
  *(v0 + 16) = sub_268C15E8C();
  *(v0 + 24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE9D8, qword_268C1A848);
  *(v0 + 32) = sub_268C15B7C();
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  return v0;
}

uint64_t sub_268C10784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = sub_268C15A5C();
  v13 = OUTLINED_FUNCTION_3_0(v12);
  v35 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_15_0();
  v19 = v18 - v17;
  v34 = sub_268C15AAC();
  v20 = OUTLINED_FUNCTION_3_0(v34);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_15_0();
  v27 = v26 - v25;
  v33 = *(v6 + 16);
  OUTLINED_FUNCTION_5_15();
  v28 = swift_allocObject();
  v28[2] = v6;
  v28[3] = a5;
  v28[4] = a1;
  v28[5] = a2;
  v28[6] = a3;
  v28[7] = a4;
  aBlock[4] = sub_268C1222C;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_268BC5554;
  aBlock[3] = &block_descriptor_31;
  v29 = _Block_copy(aBlock);

  sub_268C15A6C();
  OUTLINED_FUNCTION_2_1();
  sub_268BC1148(v30, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE050, &qword_268C1A4F0);
  sub_268BC1190(&qword_2802CE058, &qword_2802CE050, &qword_268C1A4F0);
  sub_268C15FCC();
  MEMORY[0x26D627440](0, v27, v19, v29);
  _Block_release(v29);
  (*(v35 + 8))(v19, v12);
  (*(v22 + 8))(v27, v34);
}

uint64_t sub_268C10A34(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_268C15A1C();
  v30 = *(v12 - 8);
  v13 = *(v30 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 48) < a2)
  {
    *(a1 + 48) = a2;
  }

  swift_beginAccess();
  v16 = *(a1 + 32);

  v17 = sub_268C0F624(a3, a4, v16);

  if (v17)
  {
    result = sub_268C1229C(v17);
    *(a1 + 40) = 1;
  }

  else
  {
    v19 = swift_allocObject();
    *(v19 + 16) = a5;
    *(v19 + 24) = a6;
    swift_beginAccess();

    v20 = *(a1 + 32);
    swift_isUniquelyReferenced_nonNull_native();
    v31 = *(a1 + 32);
    sub_268BEF61C(sub_268C12274, v19, a3, a4);
    *(a1 + 32) = v31;
    swift_endAccess();
    v29 = sub_268C11F5C(*(a1 + 48));
    if (qword_2802CDBE0 != -1)
    {
      swift_once();
    }

    v21 = __swift_project_value_buffer(v12, qword_2802D2F10);
    v22 = v30;
    (*(v30 + 16))(v15, v21, v12);

    v23 = sub_268C159FC();
    v24 = sub_268C15DFC();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v32 = v26;
      *v25 = 136315394;
      *(v25 + 4) = sub_268BB3D28(a3, a4, &v32);
      *(v25 + 12) = 2048;
      v27 = v29;
      *(v25 + 14) = v29;
      _os_log_impl(&dword_268BAD000, v23, v24, "LifeCycleManager#register Registering %s for %ld seconds", v25, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x26D628010](v26, -1, -1);
      MEMORY[0x26D628010](v25, -1, -1);

      (*(v22 + 8))(v15, v12);
    }

    else
    {

      (*(v22 + 8))(v15, v12);
      v27 = v29;
    }

    return sub_268C10D88(v27);
  }

  return result;
}

uint64_t sub_268C10D88(uint64_t a1)
{
  v2 = v1;
  v56 = a1;
  v60 = sub_268C15A3C();
  v3 = OUTLINED_FUNCTION_3_0(v60);
  v58 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_15_0();
  v55 = (v8 - v7);
  v59 = sub_268C15ADC();
  v9 = OUTLINED_FUNCTION_3_0(v59);
  v57 = v10;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v9);
  v53 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v54 = &v53 - v15;
  v16 = sub_268C15AAC();
  v17 = OUTLINED_FUNCTION_3_0(v16);
  v63 = v18;
  v64 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_15_0();
  v62 = v22 - v21;
  v23 = sub_268C15A5C();
  v24 = OUTLINED_FUNCTION_3_0(v23);
  v61 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_15_0();
  v30 = v29 - v28;
  if (v1[3])
  {

    sub_268C15AFC();
  }

  v31 = swift_allocObject();
  swift_weakInit();
  v70 = sub_268C121B8;
  v71 = v31;
  aBlock = MEMORY[0x277D85DD0];
  v67 = 1107296256;
  v68 = sub_268BC5554;
  v69 = &block_descriptor_7;
  _Block_copy(&aBlock);
  v65 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_2_1();
  sub_268BC1148(v32, v33);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE050, &qword_268C1A4F0);
  sub_268BC1190(&qword_2802CE058, &qword_2802CE050, &qword_268C1A4F0);
  OUTLINED_FUNCTION_6_16();
  v34 = sub_268C15B1C();
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  v37 = sub_268C15AEC();

  v38 = v1[3];
  v2[3] = v37;

  v39 = v2[2];
  v70 = sub_268C121D8;
  v71 = v2;
  aBlock = MEMORY[0x277D85DD0];
  v67 = 1107296256;
  v68 = sub_268BC5554;
  v69 = &block_descriptor_22;
  v40 = _Block_copy(&aBlock);

  v41 = v62;
  sub_268C15A6C();
  v65 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_6_16();
  sub_268C15B0C();
  _Block_release(v40);

  (*(v61 + 8))(v30, v23);
  (*(v63 + 8))(v41, v64);

  if (v2[3])
  {
    v43 = v2[7];
    v44 = __OFADD__(v43, 1);
    v45 = v43 + 1;
    if (v44)
    {
      __break(1u);
    }

    else
    {
      v2[7] = v45;

      v46 = v53;
      sub_268C15ABC();
      v47 = v55;
      *v55 = v56;
      v48 = v58;
      v49 = v60;
      (*(v58 + 104))(v47, *MEMORY[0x277D85188], v60);
      v50 = v54;
      sub_268C15ACC();
      (*(v48 + 8))(v47, v49);
      v51 = *(v57 + 8);
      v52 = v59;
      v51(v46, v59);
      sub_268C15E3C();

      return (v51)(v50, v52);
    }
  }

  return result;
}

uint64_t sub_268C112EC()
{
  v0 = sub_268C15A5C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_268C15AAC();
  v23 = *(v5 - 8);
  v6 = *(v23 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_268C15A1C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong && (v15 = *(Strong + 40), , v15 == 1))
  {
    if (qword_2802CDBE0 != -1)
    {
      swift_once();
    }

    v16 = __swift_project_value_buffer(v9, qword_2802D2F10);
    (*(v10 + 16))(v13, v16, v9);
    v17 = sub_268C159FC();
    v18 = sub_268C15DFC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_268BAD000, v17, v18, "LifeCycleManager#restart Need to restart, won't shut down.", v19, 2u);
      MEMORY[0x26D628010](v19, -1, -1);
    }

    return (*(v10 + 8))(v13, v9);
  }

  else
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v22[1] = *(result + 16);
      aBlock[4] = sub_268C121E0;
      aBlock[5] = result;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_268BC5554;
      aBlock[3] = &block_descriptor_25;
      v21 = _Block_copy(aBlock);

      sub_268C15A6C();
      v24 = MEMORY[0x277D84F90];
      sub_268BC1148(&qword_2802CE048, MEMORY[0x277D85198]);
      v22[0] = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE050, &qword_268C1A4F0);
      sub_268BC1190(&qword_2802CE058, &qword_2802CE050, &qword_268C1A4F0);
      sub_268C15FCC();
      MEMORY[0x26D627440](0, v8, v4, v21);
      _Block_release(v21);
      (*(v1 + 8))(v4, v0);
      (*(v23 + 8))(v8, v22[0]);
    }
  }

  return result;
}

uint64_t sub_268C11754(uint64_t a1)
{
  v2 = sub_268C15A1C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v7 = *(a1 + 32);
  v8 = v7 + 64;
  v9 = 1 << *(v7 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v7 + 64);
  v12 = (v9 + 63) >> 6;
  v41 = (v3 + 8);
  v42 = (v3 + 16);
  v13 = v7;

  v15 = 0;
  *&v16 = 136315138;
  v38 = v16;
  v39 = v13;
  v40 = v2;
  v37 = v6;
  if (v11)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= v12)
    {
    }

    v11 = *(v8 + 8 * v17);
    ++v15;
    if (v11)
    {
      v15 = v17;
      do
      {
LABEL_8:
        v18 = (v15 << 10) | (16 * __clz(__rbit64(v11)));
        v19 = (*(v13 + 48) + v18);
        v20 = *v19;
        v21 = v19[1];
        v22 = (*(v13 + 56) + v18);
        v23 = *v22;
        v24 = v22[1];
        v43 = v20;
        v44 = v23;
        v25 = qword_2802CDBE0;

        v45 = v24;

        if (v25 != -1)
        {
          swift_once();
        }

        v26 = __swift_project_value_buffer(v2, qword_2802D2F10);
        (*v42)(v6, v26, v2);

        v27 = sub_268C159FC();
        v28 = v6;
        v29 = sub_268C15DFC();

        if (os_log_type_enabled(v27, v29))
        {
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          v46 = v31;
          *v30 = v38;
          v32 = sub_268BB3D28(v43, v21, &v46);

          *(v30 + 4) = v32;
          _os_log_impl(&dword_268BAD000, v27, v29, "LifeCycleManager#restart Shutting down %s...", v30, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v31);
          v33 = v31;
          v13 = v39;
          MEMORY[0x26D628010](v33, -1, -1);
          v34 = v30;
          v2 = v40;
          MEMORY[0x26D628010](v34, -1, -1);

          v6 = v37;
          v35 = (*v41)(v37, v2);
        }

        else
        {

          v35 = (*v41)(v28, v2);
          v6 = v28;
        }

        v11 &= v11 - 1;
        v44(v35);
      }

      while (v11);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_268C11AA8(uint64_t a1)
{
  v2 = sub_268C15A1C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v5);
  v10 = &v23 - v9;
  v11 = *(a1 + 56);
  v12 = __OFSUB__(v11, 1);
  v13 = v11 - 1;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  *(a1 + 56) = v13;
  if (v13)
  {
    return result;
  }

  if (*(a1 + 40))
  {
    if (qword_2802CDBE0 == -1)
    {
LABEL_5:
      v14 = __swift_project_value_buffer(v2, qword_2802D2F10);
      (*(v3 + 16))(v7, v14, v2);

      v15 = sub_268C159FC();
      v16 = sub_268C15DFC();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 134217984;
        *(v17 + 4) = *(a1 + 48);

        _os_log_impl(&dword_268BAD000, v15, v16, "LifeCycleManager#restart Will restart with interval %ld", v17, 0xCu);
        MEMORY[0x26D628010](v17, -1, -1);
      }

      else
      {
      }

      (*(v3 + 8))(v7, v2);
      v22 = *(a1 + 24);
      *(a1 + 24) = 0;

      result = sub_268C10D88(*(a1 + 48));
      *(a1 + 40) = 0;
      return result;
    }

LABEL_16:
    swift_once();
    goto LABEL_5;
  }

  if (qword_2802CDBE0 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v2, qword_2802D2F10);
  (*(v3 + 16))(v10, v18, v2);
  v19 = sub_268C159FC();
  v20 = sub_268C15DFC();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_268BAD000, v19, v20, "LifeCycleManager#restart WorkItem finished and didn't need to restart", v21, 2u);
    MEMORY[0x26D628010](v21, -1, -1);
  }

  (*(v3 + 8))(v10, v2);
  type metadata accessor for LifeCycleManager();
  return sub_268C11DB4();
}

uint64_t sub_268C11DB4()
{
  v0 = sub_268C15A1C();
  v1 = OUTLINED_FUNCTION_3_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_15_0();
  v8 = v7 - v6;
  if (qword_2802CDBE0 != -1)
  {
    OUTLINED_FUNCTION_18();
  }

  v9 = __swift_project_value_buffer(v0, qword_2802D2F10);
  (*(v3 + 16))(v8, v9, v0);
  v10 = sub_268C159FC();
  v11 = sub_268C15DFC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_268BAD000, v10, v11, "LifeCycleManager##clear Clearing LifeCycleManager", v12, 2u);
    MEMORY[0x26D628010](v12, -1, -1);
  }

  (*(v3 + 8))(v8, v0);
  if (qword_2802CDC28 != -1)
  {
    OUTLINED_FUNCTION_4_15();
  }

  sub_268C15ECC();
  qword_2802CE9D0 = 0;

  return sub_268C15EDC();
}

uint64_t sub_268C11F5C(uint64_t a1)
{
  v2 = sub_268C15A1C();
  v3 = OUTLINED_FUNCTION_3_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_15_0();
  v10 = v9 - v8;
  if (a1 >= 301)
  {
    if (qword_2802CDBE0 != -1)
    {
      OUTLINED_FUNCTION_18();
    }

    v11 = __swift_project_value_buffer(v2, qword_2802D2F10);
    (*(v5 + 16))(v10, v11, v2);
    v12 = sub_268C159FC();
    v13 = sub_268C15DEC();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 134218240;
      *(v14 + 4) = a1;
      *(v14 + 12) = 2048;
      *(v14 + 14) = 15;
      _os_log_impl(&dword_268BAD000, v12, v13, "LifeCycleManager#validateIntervalInSec Received a very big interval in the LifeCycle. Please review this value is correct: %ld. Returning default value as fallback %ld", v14, 0x16u);
      MEMORY[0x26D628010](v14, -1, -1);
    }

    (*(v5 + 8))(v10, v2);
    return 15;
  }

  return a1;
}

uint64_t sub_268C120FC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t sub_268C1212C()
{
  sub_268C120FC();
  OUTLINED_FUNCTION_5_15();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_268C12180()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_268C121E8()
{
  v1 = v0[2];

  v2 = v0[5];

  v3 = v0[7];

  OUTLINED_FUNCTION_5_15();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

uint64_t sub_268C1223C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_268C12274()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_268C1229C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_15()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_16()
{

  return sub_268C15FCC();
}

void sub_268C12504(uint64_t a1, uint64_t a2, int a3, void (*a4)(id, unint64_t), uint64_t a5)
{
  v38 = a5;
  v39 = a4;
  v37 = sub_268C15A1C();
  v7 = OUTLINED_FUNCTION_3_0(v37);
  v9 = v8;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v7);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v36 = &v36 - v15;
  if (a1)
  {
    v16 = sub_268BC4EF4(a1);
    for (i = 0; v16 != i; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x26D627640](i, a1);
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v18 = *(a1 + 8 * i + 32);
      }

      v19 = v18;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if ([v18 command] == a3)
      {
        if (qword_2802CDB70 != -1)
        {
          OUTLINED_FUNCTION_1_0();
        }

        v26 = v37;
        v27 = __swift_project_value_buffer(v37, qword_2802D2ED8);
        v28 = v36;
        (*(v9 + 16))(v36, v27, v26);
        v29 = v19;
        v30 = sub_268C159FC();
        v31 = sub_268C15DFC();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          *v32 = 67109376;
          *(v32 + 4) = a3;
          *(v32 + 8) = 1024;
          *(v32 + 10) = [v29 isEnabled];

          _os_log_impl(&dword_268BAD000, v30, v31, "Is %u enabled for now playing app: %{BOOL}d", v32, 0xEu);
          OUTLINED_FUNCTION_30();
        }

        else
        {

          v30 = v29;
        }

        (*(v9 + 8))(v28, v26);
        v33 = [v29 isEnabled];
        v34 = sub_268C1304C(v29);
        if (!v34 || (v35 = sub_268C12934(v34), , !v35))
        {
          v35 = sub_268C15B7C();
        }

        v39(v33, v35);

        return;
      }
    }
  }

  if (qword_2802CDB70 != -1)
  {
LABEL_26:
    OUTLINED_FUNCTION_1_0();
  }

  v20 = v37;
  v21 = __swift_project_value_buffer(v37, qword_2802D2ED8);
  (*(v9 + 16))(v14, v21, v20);
  v22 = sub_268C159FC();
  v23 = sub_268C15DFC();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 67109120;
    *(v24 + 4) = a3;
    _os_log_impl(&dword_268BAD000, v22, v23, "%u not present in supported commands for now playing app.", v24, 8u);
    OUTLINED_FUNCTION_30();
  }

  (*(v9 + 8))(v14, v20);
  v25 = sub_268C15B7C();
  v39(0, v25);
}

unint64_t sub_268C12934(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE9E0, &qword_268C1A898);
    v2 = sub_268C1614C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (1)
  {
    if (!v5)
    {
      while (1)
      {
        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v9 >= v6)
        {

          return v2;
        }

        v5 = *(a1 + 64 + 8 * v9);
        ++v8;
        if (v5)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return result;
    }

    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5)) | (v9 << 6);
    sub_268BDADC0(*(a1 + 48) + 40 * v10, __src);
    sub_268BB5B20(*(a1 + 56) + 32 * v10, &__src[40]);
    memcpy(__dst, __src, sizeof(__dst));
    sub_268BDADC0(__dst, v21);
    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    sub_268BB5B20(&__dst[40], v22);
    sub_268C130B8(__dst);
    v23 = v20;
    sub_268BD8290(v22, v24);
    v11 = v23;
    sub_268BD8290(v24, v25);
    sub_268BD8290(v25, &v23);
    result = sub_268BD99A0(v11, *(&v11 + 1));
    v12 = result;
    if (v13)
    {
      v14 = v2[6] + 16 * result;
      v15 = *(v14 + 8);
      *v14 = v11;

      v16 = (v2[7] + 32 * v12);
      __swift_destroy_boxed_opaque_existential_0(v16);
      result = sub_268BD8290(&v23, v16);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v2[6] + 16 * result) = v11;
      result = sub_268BD8290(&v23, (v2[7] + 32 * result));
      v17 = v2[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_23;
      }

      v2[2] = v19;
      v8 = v9;
    }
  }

  sub_268C130B8(__dst);

  return 0;
}

void sub_268C12BCC(void *a1, void *a2, uint64_t a3, unint64_t a4, void (*a5)(void), void *a6)
{
  v12 = sub_268C15A1C();
  v13 = OUTLINED_FUNCTION_3_0(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v13);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  if (a2)
  {
    v42 = a3;
    v43 = a6;
    v23 = a2;
    if (qword_2802CDB70 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v24 = __swift_project_value_buffer(v12, qword_2802D2ED8);
    (*(v15 + 16))(v22, v24, v12);
    v25 = a2;

    v26 = sub_268C159FC();
    v27 = sub_268C15DEC();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v41 = a5;
      v44 = v29;
      *v28 = 136315394;
      *(v28 + 4) = sub_268BB3D28(v42, a4, &v44);
      *(v28 + 12) = 2082;
      swift_getErrorValue();
      v30 = sub_268C161DC();
      v32 = sub_268BB3D28(v30, v31, &v44);

      *(v28 + 14) = v32;
      _os_log_impl(&dword_268BAD000, v26, v27, "Error getting playing item for device: %s from MediaRemote error: %{public}s", v28, 0x16u);
      swift_arrayDestroy();
      a5 = v41;
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_30();
    }

    (*(v15 + 8))(v22, v12);
    a5(0);
  }

  else if (a1)
  {
    v33 = a1;
    v34 = [v33 tracklist];
    v43 = [v34 playingItem];

    a5(v43);
    v35 = v43;
  }

  else
  {
    v41 = a5;
    if (qword_2802CDB70 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v36 = __swift_project_value_buffer(v12, qword_2802D2ED8);
    (*(v15 + 16))(v20, v36, v12);

    v37 = sub_268C159FC();
    v38 = sub_268C15DEC();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v44 = v40;
      *v39 = 136315138;
      *(v39 + 4) = sub_268BB3D28(a3, a4, &v44);
      _os_log_impl(&dword_268BAD000, v37, v38, "Unexpected nil response getting playing item for device %s without error", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v40);
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_30();
    }

    (*(v15 + 8))(v20, v12);
    v41(0);
  }
}

uint64_t sub_268C1304C(void *a1)
{
  v1 = [a1 options];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_268C15B5C();

  return v3;
}

uint64_t sub_268C130B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE9E8, &qword_268C1A8A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_268C13120()
{
  v113 = sub_268C1553C();
  v1 = OUTLINED_FUNCTION_3_0(v113);
  v103 = v2;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  v99 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE9F0, qword_268C1A8A8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v95 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDF58, &qword_268C17338);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  OUTLINED_FUNCTION_1_11();
  v105 = v12;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v95 - v15;
  MEMORY[0x28223BE20](v14);
  v112 = &v95 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDF50, &qword_268C172D0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  OUTLINED_FUNCTION_1_11();
  v104 = v20;
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v95 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v95 - v25;
  v27 = sub_268C155DC();
  v116 = OUTLINED_FUNCTION_3_0(v27);
  v117 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v116);
  OUTLINED_FUNCTION_1_11();
  v115 = v31;
  v33 = MEMORY[0x28223BE20](v32);
  v35 = &v95 - v34;
  v36 = MEMORY[0x28223BE20](v33);
  v38 = &v95 - v37;
  MEMORY[0x28223BE20](v36);
  v98 = &v95 - v39;
  OUTLINED_FUNCTION_3_15();
  v111 = v0;
  v40 = sub_268C156BC();
  v114 = v16;
  v102 = v26;
  v100 = v24;
  if (!v40)
  {
LABEL_14:
    v51 = v116;
    __swift_storeEnumTagSinglePayload(v24, 1, 1, v116);
    OUTLINED_FUNCTION_3_15();
    v52 = sub_268C156BC();
    v53 = v51;
    v54 = v104;
    if (v52)
    {
      v55 = v52;
      v109 = v9;
      v110 = v6;
      v56 = *(v52 + 16);
      if (v56)
      {
        v57 = 0;
        v26 = 0x64695F6D657469;
        OUTLINED_FUNCTION_2_14();
        v59 = (v58 + 8);
        while (v57 < *(v55 + 16))
        {
          OUTLINED_FUNCTION_5_16();
          v60(v35);
          v61 = sub_268C155CC();
          if (v62)
          {
            if (v61 == 0x64695F6D657469 && v62 == 0xE700000000000000)
            {

LABEL_46:

              v88 = v116;
              v89 = *(v117 + 32);
              v90 = v104;
              v89(v104, v35, v116);
              OUTLINED_FUNCTION_1_17(v90);
              v91 = OUTLINED_FUNCTION_6_17();
              (v89)(v91);
              v67 = v88;
              OUTLINED_FUNCTION_1_17(0x64695F6D657469);
              v92 = v100;
              goto LABEL_51;
            }

            v64 = sub_268C1618C();

            if (v64)
            {
              goto LABEL_46;
            }
          }

          ++v57;
          v53 = v116;
          (*v59)(v35, v116);
          if (v56 == v57)
          {
            goto LABEL_25;
          }
        }

        goto LABEL_57;
      }

LABEL_25:

      v26 = v102;
      v54 = v104;
      v9 = v109;
      v6 = v110;
      v16 = v114;
    }

    v65 = 1;
    __swift_storeEnumTagSinglePayload(v54, 1, 1, v53);
    OUTLINED_FUNCTION_3_15();
    v66 = sub_268C156BC();
    if (v66)
    {
      v67 = v116;
      v68 = v105;
      v111 = *(v66 + 16);
      if (v111)
      {
        v69 = 0;
        OUTLINED_FUNCTION_2_14();
        v110 = v70 + v71;
        v109 = (v72 + 16);
        v108 = *MEMORY[0x277D5E4B8];
        v106 = v70;
        v107 = (v103 + 13);
        v97 = (v103 + 4);
        ++v103;
        v73 = (v72 + 8);
        v96 = (v72 + 8);
        while (1)
        {
          if (v69 >= *(v70 + 16))
          {
            goto LABEL_58;
          }

          (*(v117 + 16))(v115, v110 + *(v117 + 72) * v69, v67);
          v74 = v112;
          sub_268C1555C();
          v75 = v113;
          (*v107)(v16, v108, v113);
          __swift_storeEnumTagSinglePayload(v16, 0, 1, v75);
          v76 = *(v6 + 48);
          sub_268C13B30(v74, v9);
          sub_268C13B30(v16, &v9[v76]);
          OUTLINED_FUNCTION_7_15(v9);
          if (v50)
          {
            break;
          }

          sub_268C13B30(v9, v68);
          OUTLINED_FUNCTION_7_15(&v9[v76]);
          if (v77)
          {
            sub_268BC4CFC(v16, &qword_2802CDF58, &qword_268C17338);
            sub_268BC4CFC(v74, &qword_2802CDF58, &qword_268C17338);
            (*v103)(v68, v75);
LABEL_38:
            sub_268BC4CFC(v9, &qword_2802CE9F0, qword_268C1A8A8);
            goto LABEL_40;
          }

          v78 = &v9[v76];
          v79 = v9;
          v80 = v6;
          v81 = v99;
          (*v97)(v99, v78, v75);
          sub_268C13BA0();
          v101 = sub_268C15BDC();
          v82 = *v103;
          v83 = v81;
          v6 = v80;
          v9 = v79;
          v68 = v105;
          (*v103)(v83, v75);
          sub_268BC4CFC(v16, &qword_2802CDF58, &qword_268C17338);
          sub_268BC4CFC(v74, &qword_2802CDF58, &qword_268C17338);
          v82(v68, v75);
          v73 = v96;
          sub_268BC4CFC(v9, &qword_2802CDF58, &qword_268C17338);
          if (v101)
          {
            goto LABEL_47;
          }

LABEL_40:
          ++v69;
          v67 = v116;
          (*v73)(v115, v116);
          v16 = v114;
          v70 = v106;
          if (v111 == v69)
          {
            goto LABEL_41;
          }
        }

        sub_268BC4CFC(v16, &qword_2802CDF58, &qword_268C17338);
        sub_268BC4CFC(v74, &qword_2802CDF58, &qword_268C17338);
        OUTLINED_FUNCTION_7_15(&v9[v76]);
        if (v50)
        {
          sub_268BC4CFC(v9, &qword_2802CDF58, &qword_268C17338);
LABEL_47:

          v67 = v116;
          v26 = v102;
          (*(v117 + 32))(v102, v115, v116);
          v65 = 0;
          goto LABEL_48;
        }

        goto LABEL_38;
      }

LABEL_41:

      v65 = 1;
      v26 = v102;
LABEL_48:
      v54 = v104;
    }

    else
    {
      v67 = v116;
    }

    __swift_storeEnumTagSinglePayload(v26, v65, 1, v67);
    OUTLINED_FUNCTION_8_15(v54);
    v92 = v100;
    if (!v50)
    {
      sub_268BC4CFC(v54, &qword_2802CDF50, &qword_268C172D0);
    }

LABEL_51:
    OUTLINED_FUNCTION_8_15(v92);
    if (!v50)
    {
      sub_268BC4CFC(v92, &qword_2802CDF50, &qword_268C172D0);
    }

    goto LABEL_53;
  }

  v41 = v40;
  v42 = v24;
  v43 = *(v40 + 16);
  if (!v43)
  {

    v24 = v42;
    goto LABEL_14;
  }

  v109 = v9;
  v110 = v6;
  v44 = 0;
  OUTLINED_FUNCTION_2_14();
  v46 = (v45 + 8);
  while (1)
  {
    if (v44 >= *(v41 + 16))
    {
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_5_16();
    v47(v38);
    v48 = sub_268C155CC();
    if (!v49)
    {
      goto LABEL_11;
    }

    v50 = v48 == 0x6C646E7542707061 && v49 == 0xEB00000000644965;
    if (v50)
    {
      break;
    }

    v26 = sub_268C1618C();

    if (v26)
    {
      goto LABEL_44;
    }

LABEL_11:
    ++v44;
    (*v46)(v38, v116);
    if (v43 == v44)
    {

      v26 = v102;
      v24 = v100;
      v9 = v109;
      v6 = v110;
      v16 = v114;
      goto LABEL_14;
    }
  }

LABEL_44:

  v84 = v116;
  v85 = *(v117 + 32);
  v86 = v100;
  v85(v100, v38, v116);
  OUTLINED_FUNCTION_1_17(v86);
  v87 = OUTLINED_FUNCTION_6_17();
  (v85)(v87);
  v67 = v84;
  OUTLINED_FUNCTION_1_17(v26);
LABEL_53:
  OUTLINED_FUNCTION_8_15(v26);
  if (v50)
  {
    sub_268BC4CFC(v26, &qword_2802CDF50, &qword_268C172D0);
  }

  else
  {
    v93 = v117;
    v94 = v98;
    (*(v117 + 32))(v98, v26, v67);
    sub_268C155BC();
    (*(v93 + 8))(v94, v67);
  }
}

uint64_t sub_268C13B30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDF58, &qword_268C17338);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_268C13BA0()
{
  result = qword_2802CE9F8;
  if (!qword_2802CE9F8)
  {
    sub_268C1553C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE9F8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_17(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v1);
}

void OUTLINED_FUNCTION_5_16()
{
  v3 = *(v2 - 96);
  v4 = v1 + *(v3 + 72) * v0;
  v5 = *(v3 + 16);
}

uint64_t Device.init<A>(from:isRequestingDevice:predicate:mediaGroup:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, const void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v55 = a4;
  v54 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = sub_268C15F1C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v51 - v16;
  memcpy(__dst, a3, sizeof(__dst));
  *(a7 + 88) = xmmword_268C16D40;
  v51 = (a7 + 88);
  *(a7 + 64) = 0;
  *(a7 + 72) = 0;
  v18 = type metadata accessor for Device();
  *(a7 + 104) = 0u;
  *(a7 + 120) = 0u;
  *(a7 + 136) = 0u;
  *(a7 + 152) = 0u;
  *(a7 + 168) = 0u;
  *(a7 + 184) = 0u;
  *(a7 + 200) = 0;
  v19 = *(v18 + 44);
  v20 = type metadata accessor for MediaGroup();
  v53 = v19;
  __swift_storeEnumTagSinglePayload(a7 + v19, 1, 1, v20);
  v52 = v18;
  v21 = *(v18 + 48);
  *(a7 + v21) = 0;
  v22 = *(a6 + 56);
  v23 = OUTLINED_FUNCTION_0_14();
  *(a7 + 32) = v24(v23);
  *(a7 + 40) = v25;
  *a7 = (*(a6 + 88))(a5, a6);
  *(a7 + 8) = v26;
  *(a7 + 16) = (*(a6 + 104))(a5, a6);
  *(a7 + 24) = v27;
  (*(a6 + 72))(a5, a6);
  if (__swift_getEnumTagSinglePayload(v17, 1, AssociatedTypeWitness) == 1)
  {
    (*(v14 + 8))(v17, v13);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v28 = (*(AssociatedConformanceWitness + 40))(AssociatedTypeWitness, AssociatedConformanceWitness);
    v29 = v31;
    OUTLINED_FUNCTION_4_16(AssociatedTypeWitness);
    (*(v32 + 8))(v17, AssociatedTypeWitness);
  }

  *(a7 + 48) = v28;
  *(a7 + 56) = v29;
  v33 = *(a6 + 80);
  v34 = OUTLINED_FUNCTION_0_14();
  v36._countAndFlagsBits = v35(v34);
  DeviceCategory.init(homekitType:)(v36);
  if ((v56[1] & 1) == 0)
  {
    v37 = v56[0];
    if (v56[0] == 16 && (v38 = *(a6 + 120), v39 = OUTLINED_FUNCTION_0_14(), (v40(v39) & 1) != 0))
    {
      if (qword_2802CDB88 != -1)
      {
        swift_once();
      }

      *(a7 + 64) = sub_268C0F474(1, off_2802CE1D8);
      *(a7 + 72) = v41;
      *(a7 + v21) = 1;
    }

    else
    {
      if (qword_2802CDBA0 != -1)
      {
        OUTLINED_FUNCTION_1_5();
      }

      *(a7 + 64) = sub_268C0F474(v37, off_2802CE390);
      *(a7 + 72) = v42;
    }
  }

  v43 = *(v52 + 52);
  v44 = *(a6 + 96);
  v45 = OUTLINED_FUNCTION_0_14();
  v47 = v46(v45);
  OUTLINED_FUNCTION_4_16(a5);
  (*(v48 + 8))(a1, a5);
  *(a7 + v43) = v47 & 1;
  *(a7 + 80) = v54 & 1;
  v49 = v51;
  memcpy(v56, v51, sizeof(v56));
  sub_268C14C98(v56, &qword_2802CE578, &qword_268C18750);
  memcpy(v49, __dst, 0x78uLL);
  return sub_268C1414C(v55, a7 + v53);
}

uint64_t type metadata accessor for Device()
{
  result = qword_2802CEA00;
  if (!qword_2802CEA00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_268C1414C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE568, &unk_268C18740);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Device.init(from:isRequestingDevice:predicate:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, const void *a3@<X2>, uint64_t a4@<X8>)
{
  Device.init()(a4);
  v9 = *(a1 + 8);
  v8 = *(a1 + 16);
  v10 = *(a4 + 40);

  *(a4 + 32) = v9;
  *(a4 + 40) = v8;
  v11 = type metadata accessor for MediaGroup();
  v12 = a1 + *(v11 + 24);
  v13 = sub_268C152EC();
  v15 = v14;
  v16 = *(a4 + 8);

  *a4 = v13;
  *(a4 + 8) = v15;
  if (qword_2802CDBA0 != -1)
  {
    OUTLINED_FUNCTION_1_5();
  }

  v17 = sub_268C0F474(4, off_2802CE390);
  v19 = v18;
  v20 = *(a4 + 72);

  *(a4 + 64) = v17;
  *(a4 + 72) = v19;
  *(a4 + 80) = a2 & 1;
  memcpy(__dst, (a4 + 88), sizeof(__dst));
  sub_268C14C98(__dst, &qword_2802CE578, &qword_268C18750);
  memcpy((a4 + 88), a3, 0x78uLL);
  v21 = *(type metadata accessor for Device() + 44);
  sub_268C14C98(a4 + v21, &qword_2802CE568, &unk_268C18740);
  sub_268C14CF4(a1, a4 + v21);
  return __swift_storeEnumTagSinglePayload(a4 + v21, 0, 1, v11);
}

uint64_t Device.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_2_5();
}

uint64_t Device.identifier.setter()
{
  OUTLINED_FUNCTION_8_6();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Device.mediaSystemId.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_2_5();
}

uint64_t Device.mediaSystemId.setter()
{
  OUTLINED_FUNCTION_8_6();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Device.name.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_2_5();
}

uint64_t Device.name.setter()
{
  OUTLINED_FUNCTION_8_6();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Device.roomName.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_2_5();
}

uint64_t Device.roomName.setter()
{
  OUTLINED_FUNCTION_8_6();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t Device.type.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return OUTLINED_FUNCTION_2_5();
}

uint64_t Device.type.setter()
{
  OUTLINED_FUNCTION_8_6();
  v3 = *(v1 + 72);

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t Device.predicate.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 88), 0x78uLL);
  memcpy(a1, (v1 + 88), 0x78uLL);
  return sub_268C14D58(__dst, v4, &qword_2802CE578, &qword_268C18750);
}

void *Device.predicate.setter(const void *a1)
{
  memcpy(__dst, (v1 + 88), sizeof(__dst));
  sub_268C14C98(__dst, &qword_2802CE578, &qword_268C18750);
  return memcpy((v1 + 88), a1, 0x78uLL);
}

uint64_t Device.mediaGroup.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_5_17() + 44);

  return sub_268C1414C(v0, v2);
}

uint64_t Device.supportsNativeMatter.setter(char a1)
{
  result = type metadata accessor for Device();
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t Device.isSideKick.setter(char a1)
{
  result = type metadata accessor for Device();
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t Device.description.getter()
{
  v1 = 7104878;
  sub_268C1606C();
  v21 = 0;
  v22 = 0xE000000000000000;
  MEMORY[0x26D627230](0xD000000000000015, 0x8000000268C1D420);
  if (*(v0 + 8))
  {
    v2 = *v0;
    v3 = *(v0 + 8);
  }

  else
  {
    v3 = 0xE300000000000000;
    v2 = 7104878;
  }

  MEMORY[0x26D627230](v2, v3);

  MEMORY[0x26D627230](0x203A656D616E202CLL, 0xE800000000000000);
  if (*(v0 + 40))
  {
    v4 = *(v0 + 32);
    v5 = *(v0 + 40);
  }

  else
  {
    v5 = 0xE300000000000000;
    v4 = 7104878;
  }

  MEMORY[0x26D627230](v4, v5);

  MEMORY[0x26D627230](0x656469537369202CLL, 0xEE00203A6B63694BLL);
  v6 = type metadata accessor for Device();
  if (*(v0 + *(v6 + 52)))
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (*(v0 + *(v6 + 52)))
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x26D627230](v7, v8);

  MEMORY[0x26D627230](0xD000000000000016, 0x8000000268C1D440);
  if (*(v0 + 80))
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (*(v0 + 80))
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  MEMORY[0x26D627230](v9, v10);

  MEMORY[0x26D627230](0x614E6D6F6F72202CLL, 0xEC000000203A656DLL);
  if (*(v0 + 56))
  {
    v11 = *(v0 + 48);
    v12 = *(v0 + 56);
  }

  else
  {
    v12 = 0xE300000000000000;
    v11 = 7104878;
  }

  MEMORY[0x26D627230](v11, v12);

  MEMORY[0x26D627230](0x203A65707974202CLL, 0xE800000000000000);
  if (*(v0 + 72))
  {
    v13 = *(v0 + 64);
    v14 = *(v0 + 72);
  }

  else
  {
    v14 = 0xE300000000000000;
    v13 = 7104878;
  }

  MEMORY[0x26D627230](v13, v14);

  MEMORY[0x26D627230](0x636964657270202CLL, 0xED0000203A657461);
  if (*(v0 + 96) == 1)
  {
    v15 = 0xE300000000000000;
  }

  else
  {
    v19 = *(v0 + 88);
    memcpy(v20, (v0 + 104), sizeof(v20));
    v1 = FilteringPredicate.description.getter();
    v15 = v16;
  }

  MEMORY[0x26D627230](v1, v15);

  MEMORY[0x26D627230](0x47616964656D202CLL, 0xEE00203A70756F72);
  v17 = *(v6 + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE568, &unk_268C18740);
  sub_268C160FC();
  MEMORY[0x26D627230](125, 0xE100000000000000);
  return v21;
}

uint64_t Device.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 80) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 88) = xmmword_268C16D40;
  v2 = type metadata accessor for Device();
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0;
  v3 = v2[11];
  v4 = type metadata accessor for MediaGroup();
  result = __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v4);
  *(a1 + v2[12]) = 0;
  *(a1 + v2[13]) = 0;
  return result;
}

uint64_t sub_268C14C98(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_4_16(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_268C14CF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaGroup();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_268C14D58(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_4_16(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_2_5();
  v9(v8);
  return a2;
}

void *Device.init(identifier:mediaSystemId:name:isRequestingDevice:roomName:type:predicate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, const void *a12)
{
  *(a9 + 88) = xmmword_268C16D40;
  v18 = type metadata accessor for Device();
  *(a9 + 104) = 0u;
  *(a9 + 120) = 0u;
  *(a9 + 136) = 0u;
  *(a9 + 152) = 0u;
  *(a9 + 168) = 0u;
  *(a9 + 184) = 0u;
  *(a9 + 200) = 0;
  v19 = v18[11];
  v20 = type metadata accessor for MediaGroup();
  __swift_storeEnumTagSinglePayload(a9 + v19, 1, 1, v20);
  *(a9 + v18[12]) = 0;
  *(a9 + v18[13]) = 0;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 80) = a7;
  *(a9 + 48) = a8;
  *(a9 + 56) = a10;
  *(a9 + 72) = a11;
  memcpy(__dst, (a9 + 88), 0x78uLL);
  sub_268C14C98(__dst, &qword_2802CE578, &qword_268C18750);
  return memcpy((a9 + 88), a12, 0x78uLL);
}

uint64_t sub_268C14F1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE568, &unk_268C18740);
    v10 = a1 + *(a3 + 44);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_268C14FD0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE568, &unk_268C18740);
    v8 = v5 + *(a4 + 44);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

void sub_268C1505C()
{
  sub_268C15134(319, &qword_2802CE0C8);
  if (v0 <= 0x3F)
  {
    sub_268C15134(319, &qword_2802CEA10);
    if (v1 <= 0x3F)
    {
      sub_268C15180();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_268C15134(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_268C15F1C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_268C15180()
{
  if (!qword_2802CEA18)
  {
    type metadata accessor for MediaGroup();
    v0 = sub_268C15F1C();
    if (!v1)
    {
      atomic_store(v0, &qword_2802CEA18);
    }
  }
}

uint64_t OUTLINED_FUNCTION_5_17()
{

  return type metadata accessor for Device();
}