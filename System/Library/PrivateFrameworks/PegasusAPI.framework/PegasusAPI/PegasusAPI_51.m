uint64_t sub_1B91B01C0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC7140);
  __swift_project_value_buffer(v0, qword_1EBAC7140);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B96511C0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "DEVICE_TYPE_UNKNOWN";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "DEVICE_TYPE_BLUETOOTH_SPEAKER";
  *(v10 + 8) = 29;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "DEVICE_TYPE_AIRPLAY_SPEAKER";
  *(v12 + 1) = 27;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "DEVICE_TYPE_APPLE_TV";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "DEVICE_TYPE_AIRPORT_EXPRESS";
  *(v16 + 1) = 27;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "DEVICE_TYPE_HOMEPOD";
  *(v18 + 1) = 19;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "DEVICE_TYPE_HOMEPOD_MINI";
  *(v20 + 1) = 24;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "DEVICE_TYPE_IPAD";
  *(v22 + 1) = 16;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 8;
  *v24 = "DEVICE_TYPE_IPHONE";
  *(v24 + 1) = 18;
  v24[16] = 2;
  v9();
  v25 = (v5 + 9 * v2);
  v26 = v25 + v1[14];
  *v25 = 9;
  *v26 = "DEVICE_TYPE_SPEAKER";
  *(v26 + 1) = 19;
  v26[16] = 2;
  v9();
  v27 = (v5 + 10 * v2);
  v28 = v27 + v1[14];
  *v27 = 10;
  *v28 = "DEVICE_TYPE_TELEVISION";
  *(v28 + 1) = 22;
  v28[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B91B05D8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC7158);
  __swift_project_value_buffer(v0, qword_1EBAC7158);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "PLACE_HINT_UNKNOWN";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "PLACE_HINT_HOUSE_HINT";
  *(v10 + 8) = 21;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "PLACE_HINT_ROOM_HINT";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "PLACE_HINT_IN_HERE";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "PLACE_HINT_THIS";
  *(v16 + 1) = 15;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B91B0898()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC7170);
  __swift_project_value_buffer(v0, qword_1EBAC7170);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "value";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "type";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_HomeAutomationFromEntity.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_9();
      sub_1B91B0AEC();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_HomeAutomationFromEntity.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v5 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v1))
  {
    if (!*(v2 + 16) || (v7 = *(v2 + 24), OUTLINED_FUNCTION_94_4(), sub_1B91B1330(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v1))
    {
      v8 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_HomeAutomationFromEntity(0) + 24);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_HomeAutomationFromEntity.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_17_1(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v7 = *(v3 + 16);
  v8 = *(v2 + 16);
  if (*(v2 + 24) == 1)
  {
    switch(v8)
    {
      case 1:
        if (v7 == 1)
        {
          goto LABEL_11;
        }

        return 0;
      case 2:
        if (v7 == 2)
        {
          goto LABEL_11;
        }

        return 0;
      case 3:
        if (v7 == 3)
        {
          goto LABEL_11;
        }

        return 0;
      default:
        if (v7)
        {
          return 0;
        }

        goto LABEL_11;
    }
  }

  if (v7 != v8)
  {
    return 0;
  }

LABEL_11:
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_HomeAutomationFromEntity(0);
  OUTLINED_FUNCTION_188_1(v10);
  OUTLINED_FUNCTION_0_67();
  sub_1B8CD2AC8(v11, v12);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B91B0D2C(void (*a1)(void))
{
  sub_1B964CA70();
  a1(0);
  v2 = OUTLINED_FUNCTION_461();
  sub_1B8CD2AC8(v2, v3);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B91B0E0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2AC8(&qword_1EBAC7778, type metadata accessor for Apple_Parsec_Siri_V2alpha_HomeAutomationFromEntity);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B91B0E8C(uint64_t a1)
{
  v2 = sub_1B8CD2AC8(&qword_1EBAC7298, type metadata accessor for Apple_Parsec_Siri_V2alpha_HomeAutomationFromEntity);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91B0EFC()
{
  sub_1B8CD2AC8(&qword_1EBAC7298, type metadata accessor for Apple_Parsec_Siri_V2alpha_HomeAutomationFromEntity);

  return sub_1B964C5D0();
}

uint64_t sub_1B91B0F7C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC7188);
  __swift_project_value_buffer(v0, qword_1EBAC7188);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "UNKNOWN_HAENTITY_TYPE";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ACCESSORY";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "ROOM";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "ZONE";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

unint64_t sub_1B91B11E0()
{
  result = qword_1EBAC7288;
  if (!qword_1EBAC7288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7288);
  }

  return result;
}

unint64_t sub_1B91B1234()
{
  result = qword_1EBAC72A0;
  if (!qword_1EBAC72A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC72A0);
  }

  return result;
}

unint64_t sub_1B91B1288()
{
  result = qword_1EBAC72A8;
  if (!qword_1EBAC72A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC72A8);
  }

  return result;
}

unint64_t sub_1B91B12DC()
{
  result = qword_1EBAC72B0;
  if (!qword_1EBAC72B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC72B0);
  }

  return result;
}

unint64_t sub_1B91B1330()
{
  result = qword_1EBAC72C0;
  if (!qword_1EBAC72C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC72C0);
  }

  return result;
}

unint64_t sub_1B91B1388()
{
  result = qword_1EBAC72D0;
  if (!qword_1EBAC72D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC72D0);
  }

  return result;
}

unint64_t sub_1B91B13E0()
{
  result = qword_1EBAC72D8;
  if (!qword_1EBAC72D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC72D8);
  }

  return result;
}

unint64_t sub_1B91B1438()
{
  result = qword_1EBAC72E0;
  if (!qword_1EBAC72E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC72E0);
  }

  return result;
}

unint64_t sub_1B91B14C0()
{
  result = qword_1EBAC72F8;
  if (!qword_1EBAC72F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC72F8);
  }

  return result;
}

unint64_t sub_1B91B1518()
{
  result = qword_1EBAC7300;
  if (!qword_1EBAC7300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7300);
  }

  return result;
}

unint64_t sub_1B91B1570()
{
  result = qword_1EBAC7308;
  if (!qword_1EBAC7308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7308);
  }

  return result;
}

unint64_t sub_1B91B15F8()
{
  result = qword_1EBAC7320;
  if (!qword_1EBAC7320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7320);
  }

  return result;
}

unint64_t sub_1B91B1650()
{
  result = qword_1EBAC7328;
  if (!qword_1EBAC7328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7328);
  }

  return result;
}

unint64_t sub_1B91B16A8()
{
  result = qword_1EBAC7330;
  if (!qword_1EBAC7330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7330);
  }

  return result;
}

unint64_t sub_1B91B1730()
{
  result = qword_1EBAC7348;
  if (!qword_1EBAC7348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7348);
  }

  return result;
}

unint64_t sub_1B91B1788()
{
  result = qword_1EBAC7350;
  if (!qword_1EBAC7350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7350);
  }

  return result;
}

unint64_t sub_1B91B17E0()
{
  result = qword_1EBAC7358;
  if (!qword_1EBAC7358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7358);
  }

  return result;
}

unint64_t sub_1B91B1868()
{
  result = qword_1EBAC7370;
  if (!qword_1EBAC7370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7370);
  }

  return result;
}

unint64_t sub_1B91B18C0()
{
  result = qword_1EBAC7378;
  if (!qword_1EBAC7378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7378);
  }

  return result;
}

unint64_t sub_1B91B1918()
{
  result = qword_1EBAC7380;
  if (!qword_1EBAC7380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7380);
  }

  return result;
}

unint64_t sub_1B91B19A0()
{
  result = qword_1EBAC7398;
  if (!qword_1EBAC7398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7398);
  }

  return result;
}

unint64_t sub_1B91B19F8()
{
  result = qword_1EBAC73A0;
  if (!qword_1EBAC73A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC73A0);
  }

  return result;
}

unint64_t sub_1B91B1A50()
{
  result = qword_1EBAC73A8;
  if (!qword_1EBAC73A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC73A8);
  }

  return result;
}

unint64_t sub_1B91B1AD8()
{
  result = qword_1EBAC73C0;
  if (!qword_1EBAC73C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC73C0);
  }

  return result;
}

unint64_t sub_1B91B1B30()
{
  result = qword_1EBAC73C8;
  if (!qword_1EBAC73C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC73C8);
  }

  return result;
}

unint64_t sub_1B91B1B88()
{
  result = qword_1EBAC73D0;
  if (!qword_1EBAC73D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC73D0);
  }

  return result;
}

unint64_t sub_1B91B1C10()
{
  result = qword_1EBAC73E8;
  if (!qword_1EBAC73E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC73E8);
  }

  return result;
}

unint64_t sub_1B91B1C68()
{
  result = qword_1EBAC73F0;
  if (!qword_1EBAC73F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC73F0);
  }

  return result;
}

unint64_t sub_1B91B1CC0()
{
  result = qword_1EBAC73F8;
  if (!qword_1EBAC73F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC73F8);
  }

  return result;
}

unint64_t sub_1B91B1D48()
{
  result = qword_1EBAC7410;
  if (!qword_1EBAC7410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7410);
  }

  return result;
}

unint64_t sub_1B91B1DA0()
{
  result = qword_1EBAC7418;
  if (!qword_1EBAC7418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7418);
  }

  return result;
}

unint64_t sub_1B91B1DF8()
{
  result = qword_1EBAC7420;
  if (!qword_1EBAC7420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7420);
  }

  return result;
}

unint64_t sub_1B91B1E80()
{
  result = qword_1EBAC7438;
  if (!qword_1EBAC7438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7438);
  }

  return result;
}

unint64_t sub_1B91B1ED8()
{
  result = qword_1EBAC7440;
  if (!qword_1EBAC7440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7440);
  }

  return result;
}

unint64_t sub_1B91B1F30()
{
  result = qword_1EBAC7448;
  if (!qword_1EBAC7448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7448);
  }

  return result;
}

unint64_t sub_1B91B1FB8()
{
  result = qword_1EBAC7460;
  if (!qword_1EBAC7460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7460);
  }

  return result;
}

unint64_t sub_1B91B2010()
{
  result = qword_1EBAC7468;
  if (!qword_1EBAC7468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7468);
  }

  return result;
}

unint64_t sub_1B91B2068()
{
  result = qword_1EBAC7470;
  if (!qword_1EBAC7470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7470);
  }

  return result;
}

unint64_t sub_1B91B20F0()
{
  result = qword_1EBAC7488;
  if (!qword_1EBAC7488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7488);
  }

  return result;
}

unint64_t sub_1B91B2148()
{
  result = qword_1EBAC7490;
  if (!qword_1EBAC7490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7490);
  }

  return result;
}

unint64_t sub_1B91B21A0()
{
  result = qword_1EBAC7498;
  if (!qword_1EBAC7498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7498);
  }

  return result;
}

unint64_t sub_1B91B2228()
{
  result = qword_1EBAC74B0;
  if (!qword_1EBAC74B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC74B0);
  }

  return result;
}

unint64_t sub_1B91B2280()
{
  result = qword_1EBAC74B8;
  if (!qword_1EBAC74B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC74B8);
  }

  return result;
}

unint64_t sub_1B91B22D8()
{
  result = qword_1EBAC74C0;
  if (!qword_1EBAC74C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC74C0);
  }

  return result;
}

unint64_t sub_1B91B2360()
{
  result = qword_1EBAC74D8;
  if (!qword_1EBAC74D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC74D8);
  }

  return result;
}

unint64_t sub_1B91B23B8()
{
  result = qword_1EBAC74E0;
  if (!qword_1EBAC74E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC74E0);
  }

  return result;
}

unint64_t sub_1B91B2410()
{
  result = qword_1EBAC74E8;
  if (!qword_1EBAC74E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC74E8);
  }

  return result;
}

unint64_t sub_1B91B2498()
{
  result = qword_1EBAC7500;
  if (!qword_1EBAC7500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7500);
  }

  return result;
}

unint64_t sub_1B91B24F0()
{
  result = qword_1EBAC7508;
  if (!qword_1EBAC7508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7508);
  }

  return result;
}

unint64_t sub_1B91B2548()
{
  result = qword_1EBAC7510;
  if (!qword_1EBAC7510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7510);
  }

  return result;
}

unint64_t sub_1B91B25D0()
{
  result = qword_1EBAC7528;
  if (!qword_1EBAC7528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7528);
  }

  return result;
}

unint64_t sub_1B91B2628()
{
  result = qword_1EBAC7530;
  if (!qword_1EBAC7530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7530);
  }

  return result;
}

unint64_t sub_1B91B2680()
{
  result = qword_1EBAC7538;
  if (!qword_1EBAC7538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7538);
  }

  return result;
}

unint64_t sub_1B91B2708()
{
  result = qword_1EBAC7550;
  if (!qword_1EBAC7550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7550);
  }

  return result;
}

unint64_t sub_1B91B2760()
{
  result = qword_1EBAC7558;
  if (!qword_1EBAC7558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7558);
  }

  return result;
}

unint64_t sub_1B91B27B8()
{
  result = qword_1EBAC7560;
  if (!qword_1EBAC7560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7560);
  }

  return result;
}

unint64_t sub_1B91B2840()
{
  result = qword_1EBAC7578;
  if (!qword_1EBAC7578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7578);
  }

  return result;
}

unint64_t sub_1B91B2898()
{
  result = qword_1EBAC7580;
  if (!qword_1EBAC7580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7580);
  }

  return result;
}

unint64_t sub_1B91B28F0()
{
  result = qword_1EBAC7588;
  if (!qword_1EBAC7588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7588);
  }

  return result;
}

unint64_t sub_1B91B2948()
{
  result = qword_1EBAC7590;
  if (!qword_1EBAC7590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7590);
  }

  return result;
}

unint64_t sub_1B91B29A0()
{
  result = qword_1EBAC7598;
  if (!qword_1EBAC7598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7598);
  }

  return result;
}

unint64_t sub_1B91B29F8()
{
  result = qword_1EBAC75A0;
  if (!qword_1EBAC75A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC75A0);
  }

  return result;
}

unint64_t sub_1B91B2A50()
{
  result = qword_1EBAC75A8;
  if (!qword_1EBAC75A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC75A8);
  }

  return result;
}

unint64_t sub_1B91B2AA8()
{
  result = qword_1EBAC75B0;
  if (!qword_1EBAC75B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC75B0);
  }

  return result;
}

unint64_t sub_1B91B2B00()
{
  result = qword_1EBAC75B8;
  if (!qword_1EBAC75B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC75B8);
  }

  return result;
}

unint64_t sub_1B91B2BE8()
{
  result = qword_1EBAC75F0;
  if (!qword_1EBAC75F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC75F0);
  }

  return result;
}

unint64_t sub_1B91B2C40()
{
  result = qword_1EBAC75F8;
  if (!qword_1EBAC75F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC75F8);
  }

  return result;
}

unint64_t sub_1B91B2C98()
{
  result = qword_1EBAC7600;
  if (!qword_1EBAC7600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7600);
  }

  return result;
}

uint64_t sub_1B91B3F74()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B91B4080()
{
  sub_1B8CD1878();
  if (v0 <= 0x3F)
  {
    sub_1B91B41EC(319, &qword_1ED9CF5F0, type metadata accessor for Apple_Parsec_Siri_V2alpha_LibrarySearchTerm, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1B964C2B0();
      if (v2 <= 0x3F)
      {
        sub_1B91B41EC(319, &qword_1ED9EB808, type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientRankingOverrides, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1B91B41EC(319, &qword_1ED9CF7E0, type metadata accessor for Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1B91B41EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1B91B4278()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B91B4334()
{
  sub_1B91B41EC(319, &qword_1ED9CF538, type metadata accessor for Apple_Parsec_Siri_V2alpha_LibraryResultTypedScoreMultiplier, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B91B445C()
{
  sub_1B91B41EC(319, &qword_1ED9CF560, type metadata accessor for Apple_Parsec_Siri_V2alpha_DynamiteClientStateErrors, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B91B4554()
{
  sub_1B8CD1878();
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B91B4630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_1B964C2B0();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B91B475C()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B91B4814()
{
  sub_1B8CD1878();
  if (v0 <= 0x3F)
  {
    sub_1B91B41EC(319, &qword_1ED9CF568, type metadata accessor for Apple_Parsec_Siri_V2alpha_HomeAutomationFromEntity, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1B964C2B0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1B91B497C()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B91B4A08()
{
  sub_1B91B41EC(319, &qword_1ED9EBDA8, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_1B91B41EC(319, &qword_1ED9EC550, type metadata accessor for Apple_Parsec_Siri_V2alpha_PlaybackSignals, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_1B91B41EC(319, &qword_1ED9EC7C8, type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientSignals, MEMORY[0x1E69E6720]);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_1B91B41EC(319, qword_1ED9D10E0, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioIntentDetails, MEMORY[0x1E69E6720]);
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1B91B4C38()
{
  sub_1B91B41EC(319, &qword_1ED9EB7F0, type metadata accessor for Apple_Parsec_Siri_V2alpha_HomeAutomationEntities, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1B91B4D78()
{
  sub_1B91B41EC(319, &qword_1EBAB4558, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemDetails, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1B91B4E8C()
{
  result = qword_1EBAC77F0;
  if (!qword_1EBAC77F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC77F0);
  }

  return result;
}

unint64_t sub_1B91B4EE0()
{
  result = qword_1EBAC77F8;
  if (!qword_1EBAC77F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC77F8);
  }

  return result;
}

unint64_t sub_1B91B4F34()
{
  result = qword_1EBAC7800;
  if (!qword_1EBAC7800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7800);
  }

  return result;
}

unint64_t sub_1B91B4F88()
{
  result = qword_1EBAC7808;
  if (!qword_1EBAC7808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7808);
  }

  return result;
}

unint64_t sub_1B91B4FDC()
{
  result = qword_1EBAC7810;
  if (!qword_1EBAC7810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7810);
  }

  return result;
}

unint64_t sub_1B91B5030()
{
  result = qword_1EBAC7818;
  if (!qword_1EBAC7818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7818);
  }

  return result;
}

unint64_t sub_1B91B5084()
{
  result = qword_1EBAC7820;
  if (!qword_1EBAC7820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7820);
  }

  return result;
}

unint64_t sub_1B91B50D8()
{
  result = qword_1EBAC7828;
  if (!qword_1EBAC7828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7828);
  }

  return result;
}

unint64_t sub_1B91B512C()
{
  result = qword_1EBAC7830;
  if (!qword_1EBAC7830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7830);
  }

  return result;
}

unint64_t sub_1B91B5180()
{
  result = qword_1EBAC7838;
  if (!qword_1EBAC7838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7838);
  }

  return result;
}

unint64_t sub_1B91B51D4()
{
  result = qword_1EBAC7840;
  if (!qword_1EBAC7840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7840);
  }

  return result;
}

unint64_t sub_1B91B5228()
{
  result = qword_1EBAC7848;
  if (!qword_1EBAC7848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7848);
  }

  return result;
}

unint64_t sub_1B91B527C()
{
  result = qword_1EBAC7850;
  if (!qword_1EBAC7850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7850);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_57(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 64) = v2;
  result = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem(0);
  v5 = *(result + 20);
  *(a1 + 72) = v5;
  v6 = *(v2 + v5);
  return result;
}

uint64_t OUTLINED_FUNCTION_2_39(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 64) = v2;
  result = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding(0);
  v5 = *(result + 20);
  *(a1 + 72) = v5;
  v6 = *(v2 + v5);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_39(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 64) = v2;
  result = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding(0);
  *(a1 + 72) = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_12_25(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 88) = v2;
  result = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding(0);
  *(a1 + 84) = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_13_24(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 56) = v2;
  result = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding(0);
  v5 = *(result + 20);
  *(a1 + 64) = v5;
  v6 = *(v2 + v5);
  return result;
}

uint64_t OUTLINED_FUNCTION_29_22()
{
  result = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding(0);
  v1 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_32_17()
{
  result = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem(0);
  v1 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_41_15()
{
  v0 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_45_8()
{
  v0 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_53_12()
{
  result = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent(0);
  v1 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_115_6(uint64_t a1)
{
  v2 = *(v1 + *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding(a1) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_141_9()
{

  return swift_once();
}

void OUTLINED_FUNCTION_172_3(uint64_t a1@<X8>)
{
  *v1 = a1;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0xE000000000000000;
}

uint64_t OUTLINED_FUNCTION_200_4()
{

  return sub_1B91A7968();
}

uint64_t sub_1B91B593C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7888, &qword_1B96A1710);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent.resultsV0Alpha.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7888, &qword_1B96A1710);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - v8;
  sub_1B8DD9078(v2, &v13 - v8, &qword_1EBAC7888, &qword_1B96A1710);
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent.OneOf_Results(0);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_1B8D9207C(v9, &qword_1EBAC7888, &qword_1B96A1710);
    *a1 = MEMORY[0x1E69E7CC0];
    v11 = a1 + *(type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResults(0) + 20);
    return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  }

  else
  {
    OUTLINED_FUNCTION_0_68();
    return sub_1B91B70E4();
  }
}

uint64_t sub_1B91B5AF0()
{
  v0 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResults(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1B91B621C();
  return Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent.resultsV0Alpha.setter();
}

uint64_t Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent.resultsV0Alpha.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAC7888, &qword_1B96A1710);
  OUTLINED_FUNCTION_0_68();
  OUTLINED_FUNCTION_432();
  sub_1B91B70E4();
  v1 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent.OneOf_Results(0);

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

void (*Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent.resultsV0Alpha.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v4;
  *v4 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7888, &qword_1B96A1710);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v4[1] = v7;
  v8 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResults(0);
  OUTLINED_FUNCTION_59_1(v8);
  v10 = *(v9 + 64);
  v4[2] = __swift_coroFrameAllocStub(v10);
  v11 = __swift_coroFrameAllocStub(v10);
  v4[3] = v11;
  sub_1B8DD9078(v2, v7, &qword_1EBAC7888, &qword_1B96A1710);
  v12 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent.OneOf_Results(0);
  v4[4] = v12;
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    sub_1B8D9207C(v7, &qword_1EBAC7888, &qword_1B96A1710);
    *v11 = MEMORY[0x1E69E7CC0];
    v13 = v11 + *(v8 + 20);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  }

  else
  {
    OUTLINED_FUNCTION_0_68();
    sub_1B91B70E4();
  }

  return sub_1B91B5D60;
}

void sub_1B91B5D60(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  v5 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = **a1;
  if (a2)
  {
    v8 = (*a1)[3];
    sub_1B91B621C();
    sub_1B8D9207C(v7, &qword_1EBAC7888, &qword_1B96A1710);
    sub_1B91B70E4();
    OUTLINED_FUNCTION_255_1();
    OUTLINED_FUNCTION_3_40();
    sub_1B91B5E60(v3, v9);
  }

  else
  {
    sub_1B8D9207C(**a1, &qword_1EBAC7888, &qword_1B96A1710);
    OUTLINED_FUNCTION_0_68();
    sub_1B91B70E4();
    OUTLINED_FUNCTION_255_1();
  }

  free(v3);
  free(v6);
  free(v5);

  free(v2);
}

uint64_t sub_1B91B5E60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_59_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent(0) + 20);
  v4 = sub_1B964C2B0();
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent(0) + 20);
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, a1);
}

uint64_t static Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent.OneOf_Results.== infix(_:_:)()
{
  v0 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResults(0);
  v1 = OUTLINED_FUNCTION_59_1(v0);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = (&v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v24 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7890, &qword_1B96A1718);
  OUTLINED_FUNCTION_183(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  v13 = *(MEMORY[0x1EEE9AC00](v12) + 56);
  sub_1B91B621C();
  sub_1B91B621C();
  sub_1B91B70E4();
  sub_1B91B70E4();
  v14 = *v8;
  v15 = *v6;
  sub_1B8D60FB8();
  if (v16)
  {
    v17 = *(v0 + 20);
    sub_1B964C2B0();
    OUTLINED_FUNCTION_2_40();
    sub_1B8CD2B10(v18, v19);
    v20 = sub_1B964C850();
    sub_1B91B5E60(v6, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResults);
    sub_1B91B5E60(v8, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResults);
    if (v20)
    {
      return 1;
    }
  }

  else
  {
    sub_1B91B5E60(v6, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResults);
    v22 = OUTLINED_FUNCTION_432();
    sub_1B91B5E60(v22, v23);
  }

  return 0;
}

uint64_t sub_1B91B621C()
{
  v1 = OUTLINED_FUNCTION_280();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_432();
  v7(v6);
  return v0;
}

uint64_t Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent.OneOf_Results(0);
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
  v3 = a1 + *(type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent(0) + 20);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B91B62E0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB3C70);
  __swift_project_value_buffer(v0, qword_1EBAB3C70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D050;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "results_v0alpha";
  *(v5 + 8) = 15;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADE8];
  v7 = sub_1B964C750();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_1B964C760();
}

uint64_t static Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB3C68 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBAB3C70);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v3 || (v7 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v8 = OUTLINED_FUNCTION_432();
      sub_1B91B6558(v8, v9, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1B91B6558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResults(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v30 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7888, &qword_1B96A1710);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent.OneOf_Results(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC78B8, &qword_1B96A1918);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B8DD9078(a1, v12, &qword_1EBAC7888, &qword_1B96A1710);
  v28 = v13;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAC7888, &qword_1B96A1710);
  }

  else
  {
    sub_1B91B70E4();
    sub_1B91B70E4();
    sub_1B8D9207C(v22, &qword_1EBAC78B8, &qword_1B96A1918);
    sub_1B91B70E4();
    sub_1B91B70E4();
    __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
  }

  sub_1B8CD2B10(&qword_1ED9CDB10, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResults);
  v24 = v31;
  sub_1B964C580();
  if (v24)
  {
    v25 = v22;
    return sub_1B8D9207C(v25, &qword_1EBAC78B8, &qword_1B96A1918);
  }

  sub_1B8DD9078(v22, v20, &qword_1EBAC78B8, &qword_1B96A1918);
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAC78B8, &qword_1B96A1918);
    v25 = v20;
    return sub_1B8D9207C(v25, &qword_1EBAC78B8, &qword_1B96A1918);
  }

  sub_1B91B70E4();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  sub_1B8D9207C(v22, &qword_1EBAC78B8, &qword_1B96A1918);
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAC7888, &qword_1B96A1710);
  sub_1B91B70E4();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v28);
}

uint64_t Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7888, &qword_1B96A1710);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  v11 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResults(0);
  v12 = OUTLINED_FUNCTION_59_1(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v3;
  sub_1B8DD9078(v3, v10, &qword_1EBAC7888, &qword_1B96A1710);
  v17 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent.OneOf_Results(0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v17) == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAC7888, &qword_1B96A1710);
  }

  else
  {
    OUTLINED_FUNCTION_0_68();
    sub_1B91B70E4();
    sub_1B8CD2B10(&qword_1ED9CDB10, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResults);
    sub_1B964C740();
    OUTLINED_FUNCTION_3_40();
    result = sub_1B91B5E60(v16, v18);
    if (v4)
    {
      return result;
    }
  }

  v20 = v22 + *(type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent(0) + 20);
  return sub_1B964C290();
}

uint64_t static Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent.== infix(_:_:)()
{
  v2 = OUTLINED_FUNCTION_280();
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent.OneOf_Results(v2);
  v4 = OUTLINED_FUNCTION_59_1(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7888, &qword_1B96A1710);
  OUTLINED_FUNCTION_183(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v30 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7898, &qword_1B96A1720);
  OUTLINED_FUNCTION_183(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_176();
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v30 - v20;
  v22 = *(v19 + 56);
  sub_1B8DD9078(v1, &v30 - v20, &qword_1EBAC7888, &qword_1B96A1710);
  sub_1B8DD9078(v0, &v21[v22], &qword_1EBAC7888, &qword_1B96A1710);
  OUTLINED_FUNCTION_50(v21);
  if (v23)
  {
    OUTLINED_FUNCTION_50(&v21[v22]);
    if (v23)
    {
      sub_1B8D9207C(v21, &qword_1EBAC7888, &qword_1B96A1710);
LABEL_12:
      v26 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent(0) + 20);
      sub_1B964C2B0();
      OUTLINED_FUNCTION_2_40();
      sub_1B8CD2B10(v27, v28);
      v24 = sub_1B964C850();
      return v24 & 1;
    }

    goto LABEL_9;
  }

  sub_1B8DD9078(v21, v14, &qword_1EBAC7888, &qword_1B96A1710);
  OUTLINED_FUNCTION_50(&v21[v22]);
  if (v23)
  {
    sub_1B91B5E60(v14, type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent.OneOf_Results);
LABEL_9:
    sub_1B8D9207C(v21, &qword_1EBAC7898, &qword_1B96A1720);
    goto LABEL_10;
  }

  sub_1B91B70E4();
  v25 = static Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent.OneOf_Results.== infix(_:_:)();
  sub_1B91B5E60(v8, type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent.OneOf_Results);
  sub_1B91B5E60(v14, type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent.OneOf_Results);
  sub_1B8D9207C(v21, &qword_1EBAC7888, &qword_1B96A1710);
  if (v25)
  {
    goto LABEL_12;
  }

LABEL_10:
  v24 = 0;
  return v24 & 1;
}

uint64_t Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent(0);
  sub_1B8CD2B10(&qword_1EBAC78A0, type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B91B6F74(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2B10(&qword_1EBAC78B0, type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B91B6FF4(uint64_t a1)
{
  v2 = sub_1B8CD2B10(&qword_1EBAB3C60, type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91B7064()
{
  sub_1B8CD2B10(&qword_1EBAB3C60, type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent);

  return sub_1B964C5D0();
}

uint64_t sub_1B91B70E4()
{
  v1 = OUTLINED_FUNCTION_280();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_432();
  v7(v6);
  return v0;
}

void sub_1B91B7280()
{
  sub_1B91B7304();
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B91B7304()
{
  if (!qword_1ED9CF960)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent.OneOf_Results(255);
    v0 = sub_1B964C930();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9CF960);
    }
  }
}

uint64_t sub_1B91B735C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResults(0);

  return MEMORY[0x1EEE6BEB8](a1, a2, v4, sub_1B8D11E90);
}

uint64_t sub_1B91B73B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResults(0);

  return MEMORY[0x1EEE6C118](a1, a2, a3, v6, sub_1B8D11F14);
}

uint64_t sub_1B91B741C(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResults(319);
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v2 - 8) + 84);
    return 0;
  }

  return v2;
}

uint64_t sub_1B91B753C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B91BBF38();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B91B761C@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_LocationSearchVerb.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B91B7650(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B91BBF8C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B91B7730@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_LocationSearchNoun.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B91B7764(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B91BBFE0();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B91B7844@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_LocationSearchConfirmation.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B91B7894(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B91BC034();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B91B7974@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_LocationSearchIncidentType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B91B79B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B91BC088();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B91B7A98@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_ParkingLocationActionType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_GeoExperienceType.rawValue.getter()
{
  v1 = *v0 == 0;
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

uint64_t sub_1B91B7B08(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B91BA744();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B91B7BE8@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_GeoExperienceType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_GeoClientComponent.locationSearchNode.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC79C8, &qword_1B96A1920);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent(v7);
  OUTLINED_FUNCTION_115(*(v8 + 24));
  sub_1B8D92024();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchNode(0);
  OUTLINED_FUNCTION_9_2();
  if (v9)
  {
    Apple_Parsec_Siri_V2alpha_LocationSearchNode.init()(a1);
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC79C8, &qword_1B96A1920);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_41();
    OUTLINED_FUNCTION_182();
    return sub_1B91B8360();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_GeoClientComponent.locationSearchNode.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent(v1);
  sub_1B8D9207C(v0 + *(v2 + 24), &qword_1EBAC79C8, &qword_1B96A1920);
  OUTLINED_FUNCTION_2_41();
  sub_1B91B8360();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchNode(0);
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Apple_Parsec_Siri_V2alpha_LocationSearchNode.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_197_1(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = v2;
  *(v1 + 32) = 0;
  *(v1 + 40) = v2;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0xE000000000000000;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0xE000000000000000;
  *(v1 + 80) = 0;
  *(v1 + 88) = 0xE000000000000000;
  *(v1 + 96) = 0;
  *(v1 + 104) = v2;
  v3 = v1 + *(type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchNode(0) + 44);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void (*Apple_Parsec_Siri_V2alpha_GeoClientComponent.locationSearchNode.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC79C8, &qword_1B96A1920);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchNode(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  *(v3 + 10) = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent(0) + 24);
  sub_1B8D92024();
  OUTLINED_FUNCTION_178(v6, 1, v7);
  if (v11)
  {
    *v10 = 0;
    v10[8] = 1;
    *(v10 + 2) = 0;
    v10[24] = 1;
    *(v10 + 4) = 0;
    v10[40] = 1;
    *(v10 + 6) = 0;
    *(v10 + 7) = 0xE000000000000000;
    *(v10 + 8) = 0;
    *(v10 + 9) = 0xE000000000000000;
    *(v10 + 10) = 0;
    *(v10 + 11) = 0xE000000000000000;
    *(v10 + 12) = 0;
    v10[104] = 1;
    v12 = &v10[*(v7 + 44)];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_178(v6, 1, v7);
    if (!v11)
    {
      sub_1B8D9207C(v6, &qword_1EBAC79C8, &qword_1B96A1920);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_41();
    sub_1B91B8360();
  }

  return sub_1B91B7FA8;
}

uint64_t Apple_Parsec_Siri_V2alpha_GeoClientComponent.hasLocationSearchNode.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC79C8, &qword_1B96A1920);
  OUTLINED_FUNCTION_183(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent(v4);
  OUTLINED_FUNCTION_115(*(v5 + 24));
  sub_1B8D92024();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchNode(0);
  v6 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v6, v7, v8);
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = OUTLINED_FUNCTION_182();
  sub_1B8D9207C(v11, v12, &qword_1B96A1920);
  return v10;
}

Swift::Void __swiftcall Apple_Parsec_Siri_V2alpha_GeoClientComponent.clearLocationSearchNode()()
{
  v1 = type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent(0);
  sub_1B8D9207C(v0 + *(v1 + 24), &qword_1EBAC79C8, &qword_1B96A1920);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchNode(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Apple_Parsec_Siri_V2alpha_GeoClientComponent.parkingLocationAction.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC79D0, &qword_1B96A1928);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent(v7);
  OUTLINED_FUNCTION_115(*(v8 + 28));
  sub_1B8D92024();
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ParkingLocationAction(0);
  OUTLINED_FUNCTION_9_2();
  if (v10)
  {
    *a1 = 0;
    *(a1 + 8) = 1;
    *(a1 + 16) = xmmword_1B9652FE0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0xE000000000000000;
    v11 = a1 + *(v9 + 28);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v10)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC79D0, &qword_1B96A1928);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_41();
    OUTLINED_FUNCTION_182();
    return sub_1B91B8360();
  }

  return result;
}

uint64_t sub_1B91B81E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = a5(0);
  OUTLINED_FUNCTION_183(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v15 - v12;
  sub_1B91B8670();
  return a7(v13);
}

uint64_t Apple_Parsec_Siri_V2alpha_GeoClientComponent.parkingLocationAction.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent(v1);
  sub_1B8D9207C(v0 + *(v2 + 28), &qword_1EBAC79D0, &qword_1B96A1928);
  OUTLINED_FUNCTION_3_41();
  sub_1B91B8360();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ParkingLocationAction(0);
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Apple_Parsec_Siri_V2alpha_ParkingLocationAction.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_197_1(a1);
  *(v1 + 16) = xmmword_1B9652FE0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  v2 = v1 + *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ParkingLocationAction(0) + 28);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B91B8360()
{
  OUTLINED_FUNCTION_468();
  v2 = v1(0);
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_432();
  v6(v5);
  return v0;
}

void (*Apple_Parsec_Siri_V2alpha_GeoClientComponent.parkingLocationAction.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC79D0, &qword_1B96A1928);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ParkingLocationAction(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent(0) + 28);
  *(v3 + 10) = v11;
  OUTLINED_FUNCTION_115(v11);
  sub_1B8D92024();
  v12 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v12, v13, v7);
  if (v14)
  {
    *v10 = 0;
    v10[8] = 1;
    *(v10 + 1) = xmmword_1B9652FE0;
    *(v10 + 4) = 0;
    *(v10 + 5) = 0xE000000000000000;
    v15 = &v10[*(v7 + 28)];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v16 = OUTLINED_FUNCTION_493();
    OUTLINED_FUNCTION_178(v16, v17, v7);
    if (!v14)
    {
      sub_1B8D9207C(v6, &qword_1EBAC79D0, &qword_1B96A1928);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_41();
    sub_1B91B8360();
  }

  return sub_1B91B853C;
}

void sub_1B91B8564(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v6 = *a1;
  v7 = *(*a1 + 10);
  v8 = (*a1)[3];
  v9 = (*a1)[4];
  v10 = (*a1)[1];
  v11 = (*a1)[2];
  v12 = **a1;
  if (a2)
  {
    v13 = (*a1)[4];
    sub_1B91B8670();
    sub_1B8D9207C(v12 + v7, a3, a4);
    sub_1B91B8360();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v11);
    sub_1B91B86C8();
  }

  else
  {
    sub_1B8D9207C(v12 + v7, a3, a4);
    sub_1B91B8360();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v11);
  }

  free(v9);
  free(v8);
  free(v10);

  free(v6);
}

uint64_t sub_1B91B8670()
{
  OUTLINED_FUNCTION_468();
  v2 = v1(0);
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_432();
  v6(v5);
  return v0;
}

uint64_t sub_1B91B86C8()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t Apple_Parsec_Siri_V2alpha_GeoClientComponent.hasParkingLocationAction.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC79D0, &qword_1B96A1928);
  OUTLINED_FUNCTION_183(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent(v4);
  OUTLINED_FUNCTION_115(*(v5 + 28));
  sub_1B8D92024();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ParkingLocationAction(0);
  v6 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v6, v7, v8);
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = OUTLINED_FUNCTION_182();
  sub_1B8D9207C(v11, v12, &qword_1B96A1928);
  return v10;
}

Swift::Void __swiftcall Apple_Parsec_Siri_V2alpha_GeoClientComponent.clearParkingLocationAction()()
{
  v1 = type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent(0);
  sub_1B8D9207C(v0 + *(v1 + 28), &qword_1EBAC79D0, &qword_1B96A1928);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ParkingLocationAction(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

void Apple_Parsec_Siri_V2alpha_GeoClientComponent.experienceType.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  OUTLINED_FUNCTION_4(a1);
}

uint64_t Apple_Parsec_Siri_V2alpha_GeoClientComponent.experienceType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_GeoClientComponent.unknownFields.getter()
{
  v0 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent(0) + 20);
  v1 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_18_1();

  return v5(v4);
}

uint64_t Apple_Parsec_Siri_V2alpha_GeoClientComponent.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent(v2) + 20);
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*Apple_Parsec_Siri_V2alpha_GeoClientComponent.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent(v0) + 20);
  return nullsub_1;
}

uint64_t Apple_Parsec_Siri_V2alpha_GeoClientComponent.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_197_1(a1);
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent(0);
  v3 = v1 + v2[5];
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v4 = v2[6];
  type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchNode(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  v9 = v2[7];
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ParkingLocationAction(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

void Apple_Parsec_Siri_V2alpha_LocationSearchNode.locationSearchNoun.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  OUTLINED_FUNCTION_4(a1);
}

uint64_t Apple_Parsec_Siri_V2alpha_LocationSearchNode.locationSearchNoun.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

void Apple_Parsec_Siri_V2alpha_LocationSearchNode.locationSearchConfirmation.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  OUTLINED_FUNCTION_4(a1);
}

uint64_t Apple_Parsec_Siri_V2alpha_LocationSearchNode.locationSearchConfirmation.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 32) = *result;
  *(v1 + 40) = v2;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_LocationSearchNode.occupantFullName.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_LocationSearchNode.occupantFullName.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_LocationSearchNode.personPlaceID.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_LocationSearchNode.personPlaceID.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 72);

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_LocationSearchNode.personRelationship.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_LocationSearchNode.personRelationship.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 88);

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

void Apple_Parsec_Siri_V2alpha_LocationSearchNode.locationSearchIncidentType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 96);
  v3 = *(v1 + 104);
  OUTLINED_FUNCTION_4(a1);
}

uint64_t Apple_Parsec_Siri_V2alpha_LocationSearchNode.locationSearchIncidentType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 96) = *result;
  *(v1 + 104) = v2;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_LocationSearchNode.unknownFields.getter()
{
  v0 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchNode(0) + 44);
  v1 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_18_1();

  return v5(v4);
}

uint64_t Apple_Parsec_Siri_V2alpha_LocationSearchNode.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchNode(v2) + 44);
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*Apple_Parsec_Siri_V2alpha_LocationSearchNode.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchNode(v0) + 44);
  return nullsub_1;
}

uint64_t Apple_Parsec_Siri_V2alpha_ParkingLocationAction.placeData.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v3, v4);
  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_ParkingLocationAction.placeData.setter()
{
  OUTLINED_FUNCTION_16();
  result = sub_1B8D538A0(*(v1 + 16), *(v1 + 24));
  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_ParkingLocationAction.note.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_ParkingLocationAction.note.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_ParkingLocationAction.unknownFields.getter()
{
  v0 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ParkingLocationAction(0) + 28);
  v1 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_18_1();

  return v5(v4);
}

uint64_t Apple_Parsec_Siri_V2alpha_ParkingLocationAction.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ParkingLocationAction(v2) + 28);
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*Apple_Parsec_Siri_V2alpha_ParkingLocationAction.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ParkingLocationAction(v0) + 28);
  return nullsub_1;
}

uint64_t sub_1B91B8FB0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC78F0);
  __swift_project_value_buffer(v0, qword_1EBAC78F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "LOCATION_SEARCH_VERB_UNKNOWN";
  *(v6 + 8) = 28;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "LOCATION_SEARCH_VERB_SHARE";
  *(v10 + 8) = 26;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "LOCATION_SEARCH_VERB_STOP_SHARE";
  *(v12 + 1) = 31;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "LOCATION_SEARCH_VERB_REPORT";
  *(v14 + 1) = 27;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "LOCATION_SEARCH_VERB_CONFIRM_REPORT";
  *(v16 + 1) = 35;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "LOCATION_SEARCH_VERB_CLEAR_REPORT";
  *(v18 + 1) = 33;
  v18[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B91B9298()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC7908);
  __swift_project_value_buffer(v0, qword_1EBAC7908);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "LOCATION_SEARCH_NOUN_UNKNOWN";
  *(v6 + 8) = 28;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "LOCATION_SEARCH_NOUN_ETA";
  *(v10 + 1) = 24;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B91B9488()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC7920);
  __swift_project_value_buffer(v0, qword_1EBAC7920);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "LOCATION_SEARCH_CONFIRMATION_UNKNOWN";
  *(v6 + 8) = 36;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "LOCATION_SEARCH_CONFIRMATION_YES";
  *(v10 + 8) = 32;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "LOCATION_SEARCH_CONFIRMATION_NO";
  *(v12 + 1) = 31;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "LOCATION_SEARCH_CONFIRMATION_CANCEL";
  *(v14 + 1) = 35;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B91B96F0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC7938);
  __swift_project_value_buffer(v0, qword_1EBAC7938);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B9656CE0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "LOCATION_SEARCH_INCIDENT_TYPE_UNKNOWN";
  *(v6 + 8) = 37;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "LOCATION_SEARCH_INCIDENT_TYPE_ACCIDENT";
  *(v10 + 8) = 38;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "LOCATION_SEARCH_INCIDENT_TYPE_INCIDENT";
  *(v12 + 1) = 38;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "LOCATION_SEARCH_INCIDENT_TYPE_PROBLEM";
  *(v14 + 1) = 37;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "LOCATION_SEARCH_INCIDENT_TYPE_HAZARD";
  *(v16 + 1) = 36;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "LOCATION_SEARCH_INCIDENT_TYPE_SPEED_CHECK";
  *(v18 + 1) = 41;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "LOCATION_SEARCH_INCIDENT_TYPE_ROADWORK";
  *(v20 + 1) = 38;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "LOCATION_SEARCH_INCIDENT_TYPE_LANE_CLOSED";
  *(v22 + 1) = 41;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 8;
  *v24 = "LOCATION_SEARCH_INCIDENT_TYPE_ROAD_CLOSED";
  *(v24 + 1) = 41;
  v24[16] = 2;
  v9();
  v25 = (v5 + 9 * v2);
  v26 = v25 + v1[14];
  *v25 = 9;
  *v26 = "LOCATION_SEARCH_INCIDENT_TYPE_RED_LIGHT_CAMERA";
  *(v26 + 1) = 46;
  v26[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B91B9ACC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC7950);
  __swift_project_value_buffer(v0, qword_1EBAC7950);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "PARKING_LOCATION_ACTION_TYPE_UNKNOWN";
  *(v6 + 8) = 36;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "PARKING_LOCATION_ACTION_TYPE_SAVE";
  *(v10 + 8) = 33;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "PARKING_LOCATION_ACTION_TYPE_RETRIEVE";
  *(v12 + 1) = 37;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "PARKING_LOCATION_ACTION_TYPE_DELETE";
  *(v14 + 1) = 35;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B91B9D34()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC7968);
  __swift_project_value_buffer(v0, qword_1EBAC7968);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "GEO_EXPERIENCE_UNKNOWN";
  *(v6 + 8) = 22;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "GEO_EXPERIENCE_WHERE_AM_I";
  *(v10 + 1) = 25;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B91B9F30()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC7980);
  __swift_project_value_buffer(v0, qword_1EBAC7980);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "location_search_node";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "parking_location_action";
  *(v10 + 1) = 23;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "experience_type";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_GeoClientComponent.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B91BA344();
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B91BA290();
        break;
      case 1:
        OUTLINED_FUNCTION_9();
        sub_1B91BA1DC();
        break;
    }
  }

  return result;
}

uint64_t sub_1B91BA1DC()
{
  v0 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent(0) + 24);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchNode(0);
  sub_1B91BA798(&qword_1EBAC79E8, type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchNode);
  return sub_1B964C580();
}

uint64_t sub_1B91BA290()
{
  v0 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent(0) + 28);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ParkingLocationAction(0);
  sub_1B91BA798(&qword_1EBAC79E0, type metadata accessor for Apple_Parsec_Siri_V2alpha_ParkingLocationAction);
  return sub_1B964C580();
}

uint64_t Apple_Parsec_Siri_V2alpha_GeoClientComponent.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  v41 = a3;
  v37 = a1;
  v38 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC79D0, &qword_1B96A1928);
  OUTLINED_FUNCTION_183(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_22_3();
  v35 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ParkingLocationAction(v11);
  v12 = OUTLINED_FUNCTION_59_1(v35);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_62();
  v34[1] = v16 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC79C8, &qword_1B96A1920);
  OUTLINED_FUNCTION_183(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v20);
  v22 = v34 - v21;
  v23 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchNode(0);
  v24 = OUTLINED_FUNCTION_59_1(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_62();
  v36 = type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent(0);
  v27 = v36[6];
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v22, 1, v23) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAC79C8, &qword_1B96A1920);
  }

  else
  {
    sub_1B91B8360();
    sub_1B91BA798(&qword_1EBAC79E8, type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchNode);
    OUTLINED_FUNCTION_31_19();
    sub_1B964C740();
    result = sub_1B91B86C8();
    if (v4)
    {
      return result;
    }
  }

  v29 = v36[7];
  sub_1B8D92024();
  v30 = OUTLINED_FUNCTION_493();
  if (__swift_getEnumTagSinglePayload(v30, v31, v35) == 1)
  {
    sub_1B8D9207C(v5, &qword_1EBAC79D0, &qword_1B96A1928);
  }

  else
  {
    sub_1B91B8360();
    sub_1B91BA798(&qword_1EBAC79E0, type metadata accessor for Apple_Parsec_Siri_V2alpha_ParkingLocationAction);
    OUTLINED_FUNCTION_31_19();
    sub_1B964C740();
    result = sub_1B91B86C8();
    if (v4)
    {
      return result;
    }
  }

  if (!*v6 || (v32 = *(v6 + 8), v39 = *v6, v40 = v32, sub_1B91BA744(), OUTLINED_FUNCTION_31_19(), result = sub_1B964C680(), !v4))
  {
    v33 = v6 + v36[5];
    return sub_1B964C290();
  }

  return result;
}

unint64_t sub_1B91BA744()
{
  result = qword_1EBAC79D8;
  if (!qword_1EBAC79D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC79D8);
  }

  return result;
}

uint64_t sub_1B91BA798(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static Apple_Parsec_Siri_V2alpha_GeoClientComponent.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v55 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ParkingLocationAction(0);
  v4 = OUTLINED_FUNCTION_59_1(v55);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_62();
  v52[1] = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC79D0, &qword_1B96A1928);
  OUTLINED_FUNCTION_183(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  v52[2] = v52 - v13;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC79F0, &qword_1B96A1930);
  OUTLINED_FUNCTION_59_1(v53);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v16);
  v56 = v52 - v17;
  v18 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchNode(0);
  v19 = OUTLINED_FUNCTION_59_1(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_62();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC79C8, &qword_1B96A1920);
  OUTLINED_FUNCTION_183(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v25);
  v26 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC79F8, &qword_1B96A1938) - 8);
  v27 = *(*v26 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v28);
  v30 = v52 - v29;
  v54 = type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent(0);
  v31 = *(v54 + 24);
  v32 = v26[14];
  v57 = a1;
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_48(v30);
  if (v33)
  {
    OUTLINED_FUNCTION_48(&v30[v32]);
    if (v33)
    {
      sub_1B8D9207C(v30, &qword_1EBAC79C8, &qword_1B96A1920);
      goto LABEL_11;
    }

LABEL_9:
    v34 = &qword_1EBAC79F8;
    v35 = &qword_1B96A1938;
    v36 = v30;
LABEL_20:
    sub_1B8D9207C(v36, v34, v35);
    goto LABEL_21;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_48(&v30[v32]);
  if (v33)
  {
    sub_1B91B86C8();
    goto LABEL_9;
  }

  sub_1B91B8360();
  v37 = static Apple_Parsec_Siri_V2alpha_LocationSearchNode.== infix(_:_:)();
  sub_1B91B86C8();
  sub_1B91B86C8();
  sub_1B8D9207C(v30, &qword_1EBAC79C8, &qword_1B96A1920);
  if ((v37 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  v38 = v54;
  v39 = *(v54 + 28);
  v40 = *(v53 + 48);
  v42 = v56;
  v41 = v57;
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_178(v42, 1, v55);
  if (!v33)
  {
    sub_1B8D92024();
    OUTLINED_FUNCTION_48(v42 + v40);
    if (!v43)
    {
      sub_1B91B8360();
      v46 = static Apple_Parsec_Siri_V2alpha_ParkingLocationAction.== infix(_:_:)();
      sub_1B91B86C8();
      sub_1B91B86C8();
      sub_1B8D9207C(v42, &qword_1EBAC79D0, &qword_1B96A1928);
      if ((v46 & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_24;
    }

    sub_1B91B86C8();
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_48(v42 + v40);
  if (!v33)
  {
LABEL_19:
    v34 = &qword_1EBAC79F0;
    v35 = &qword_1B96A1930;
    v36 = v42;
    goto LABEL_20;
  }

  sub_1B8D9207C(v42, &qword_1EBAC79D0, &qword_1B96A1928);
LABEL_24:
  v47 = *v41;
  v48 = *a2;
  if (*(v41 + 8))
  {
    v47 = *v41 != 0;
  }

  if (*(a2 + 8) == 1)
  {
    if (v48)
    {
      if (v47 == 1)
      {
        goto LABEL_33;
      }
    }

    else if (!v47)
    {
LABEL_33:
      v49 = *(v38 + 20);
      sub_1B964C2B0();
      OUTLINED_FUNCTION_4_33();
      sub_1B91BA798(v50, v51);
      v44 = sub_1B964C850();
      return v44 & 1;
    }
  }

  else if (v47 == v48)
  {
    goto LABEL_33;
  }

LABEL_21:
  v44 = 0;
  return v44 & 1;
}

uint64_t sub_1B91BADA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B91BA798(&qword_1EBAC7B78, type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B91BAE20(uint64_t a1)
{
  v2 = sub_1B91BA798(&qword_1EBAC7B38, type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91BAE90()
{
  sub_1B91BA798(&qword_1EBAC7B38, type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent);

  return sub_1B964C5D0();
}

uint64_t sub_1B91BAF1C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC7998);
  __swift_project_value_buffer(v0, qword_1EBAC7998);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1B9650810;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "location_search_verb";
  *(v4 + 8) = 20;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADE8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "location_search_noun";
  *(v8 + 8) = 20;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "location_search_confirmation";
  *(v10 + 1) = 28;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "occupant_full_name";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "person_place_id";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "person_relationship";
  *(v16 + 1) = 19;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "location_search_incident_type";
  *(v18 + 1) = 29;
  v18[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_LocationSearchNode.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_9();
        sub_1B91BB300();
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B91BB368();
        break;
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B91BB3D0();
        break;
      case 4:
      case 5:
      case 6:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 7:
        OUTLINED_FUNCTION_9();
        sub_1B91BB438();
        break;
      default:
        continue;
    }
  }
}

uint64_t Apple_Parsec_Siri_V2alpha_LocationSearchNode.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_29_23();
  if (!v2 || (v3 = *(v1 + 8), OUTLINED_FUNCTION_94_4(), sub_1B91BBF38(), result = OUTLINED_FUNCTION_3_31(), !v0))
  {
    if (!*(v1 + 16) || (v5 = *(v1 + 24), OUTLINED_FUNCTION_94_4(), sub_1B91BBF8C(), result = OUTLINED_FUNCTION_3_31(), !v0))
    {
      if (!*(v1 + 32) || (v6 = *(v1 + 40), OUTLINED_FUNCTION_94_4(), sub_1B91BBFE0(), result = OUTLINED_FUNCTION_3_31(), !v0))
      {
        v7 = *(v1 + 48);
        v8 = *(v1 + 56);
        OUTLINED_FUNCTION_1();
        if (!v9 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
        {
          v10 = *(v1 + 64);
          v11 = *(v1 + 72);
          OUTLINED_FUNCTION_1();
          if (!v12 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
          {
            v13 = *(v1 + 80);
            v14 = *(v1 + 88);
            OUTLINED_FUNCTION_1();
            if (!v15 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
            {
              if (!*(v1 + 96) || (v16 = *(v1 + 104), OUTLINED_FUNCTION_94_4(), sub_1B91BC034(), result = OUTLINED_FUNCTION_3_31(), !v0))
              {
                v17 = v1 + *(type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchNode(0) + 44);
                OUTLINED_FUNCTION_12();
                return sub_1B964C290();
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_LocationSearchNode.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  v3 = *v2;
  v5 = *v4;
  if (*(v4 + 8) == 1)
  {
    switch(v5)
    {
      case 1:
        if (v3 != 1)
        {
          return 0;
        }

        goto LABEL_6;
      case 2:
        if (v3 != 2)
        {
          return 0;
        }

        goto LABEL_6;
      case 3:
        if (v3 != 3)
        {
          return 0;
        }

        goto LABEL_6;
      case 4:
        if (v3 != 4)
        {
          return 0;
        }

        goto LABEL_6;
      case 5:
        if (v3 != 5)
        {
          return 0;
        }

        goto LABEL_6;
      default:
        if (!v3)
        {
          goto LABEL_6;
        }

        return 0;
    }
  }

  if (v3 != v5)
  {
    return 0;
  }

LABEL_6:
  v6 = *(v1 + 16);
  v7 = *(v0 + 16);
  if (*(v1 + 24))
  {
    v6 = v6 != 0;
  }

  if (*(v0 + 24) == 1)
  {
    if (v7)
    {
      if (v6 != 1)
      {
        return 0;
      }
    }

    else if (v6)
    {
      return 0;
    }
  }

  else if (v6 != v7)
  {
    return 0;
  }

  v8 = *(v0 + 40);
  if (sub_1B8D92198(*(v1 + 32), *(v1 + 40), *(v0 + 32)))
  {
    v9 = *(v1 + 48) == *(v0 + 48) && *(v1 + 56) == *(v0 + 56);
    if (v9 || (sub_1B964C9F0() & 1) != 0)
    {
      v10 = *(v1 + 64) == *(v0 + 64) && *(v1 + 72) == *(v0 + 72);
      if (v10 || (sub_1B964C9F0() & 1) != 0)
      {
        v11 = *(v1 + 80) == *(v0 + 80) && *(v1 + 88) == *(v0 + 88);
        if (v11 || (sub_1B964C9F0() & 1) != 0)
        {
          v12 = *(v0 + 104);
          if (sub_1B8D92198(*(v1 + 96), *(v1 + 104), *(v0 + 96)))
          {
            v13 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchNode(0) + 44);
            sub_1B964C2B0();
            OUTLINED_FUNCTION_4_33();
            sub_1B91BA798(v14, v15);
            return OUTLINED_FUNCTION_634() & 1;
          }
        }
      }
    }
  }

  return 0;
}

uint64_t sub_1B91BB898(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B91BA798(&qword_1EBAC7B70, type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchNode);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B91BB918(uint64_t a1)
{
  v2 = sub_1B91BA798(&qword_1EBAC79E8, type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchNode);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91BB988()
{
  sub_1B91BA798(&qword_1EBAC79E8, type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchNode);

  return sub_1B964C5D0();
}

uint64_t sub_1B91BBA24()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC79B0);
  __swift_project_value_buffer(v0, qword_1EBAC79B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "parking_location_action_type";
  *(v6 + 8) = 28;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "place_data";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "note";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v13 = *MEMORY[0x1E69AADC8];
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_ParkingLocationAction.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 2:
        OUTLINED_FUNCTION_12();
        sub_1B964C470();
        break;
      case 1:
        OUTLINED_FUNCTION_9();
        sub_1B91BBCE0();
        break;
    }
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_ParkingLocationAction.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_29_23();
  if (!v2 || (v3 = *(v1 + 8), OUTLINED_FUNCTION_94_4(), sub_1B91BC088(), result = OUTLINED_FUNCTION_3_31(), !v0))
  {
    if (sub_1B8D99EA8(*(v1 + 16), *(v1 + 24)) || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C6A0(), !v0))
    {
      v5 = *(v1 + 32);
      v6 = *(v1 + 40);
      OUTLINED_FUNCTION_1();
      if (!v7 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
      {
        v8 = v1 + *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ParkingLocationAction(0) + 28);
        OUTLINED_FUNCTION_12();
        return sub_1B964C290();
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_ParkingLocationAction.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  v3 = *v2;
  v5 = *v4;
  if (*(v4 + 8) == 1)
  {
    switch(v5)
    {
      case 1:
        if (v3 != 1)
        {
          return 0;
        }

        goto LABEL_6;
      case 2:
        if (v3 != 2)
        {
          return 0;
        }

        goto LABEL_6;
      case 3:
        if (v3 != 3)
        {
          return 0;
        }

        goto LABEL_6;
      default:
        if (!v3)
        {
          goto LABEL_6;
        }

        return 0;
    }
  }

  if (v3 == v5)
  {
LABEL_6:
    if (MEMORY[0x1BFADC060](v1[2], v1[3], v0[2], v0[3]))
    {
      v6 = v1[4] == v0[4] && v1[5] == v0[5];
      if (v6 || (sub_1B964C9F0() & 1) != 0)
      {
        v7 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ParkingLocationAction(0) + 28);
        sub_1B964C2B0();
        OUTLINED_FUNCTION_4_33();
        sub_1B91BA798(v8, v9);
        return OUTLINED_FUNCTION_634() & 1;
      }
    }
  }

  return 0;
}

unint64_t sub_1B91BBF38()
{
  result = qword_1EBAC7A08;
  if (!qword_1EBAC7A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7A08);
  }

  return result;
}

unint64_t sub_1B91BBF8C()
{
  result = qword_1EBAC7A10;
  if (!qword_1EBAC7A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7A10);
  }

  return result;
}

unint64_t sub_1B91BBFE0()
{
  result = qword_1EBAC7A18;
  if (!qword_1EBAC7A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7A18);
  }

  return result;
}

unint64_t sub_1B91BC034()
{
  result = qword_1EBAC7A20;
  if (!qword_1EBAC7A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7A20);
  }

  return result;
}

unint64_t sub_1B91BC088()
{
  result = qword_1EBAC7A30;
  if (!qword_1EBAC7A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7A30);
  }

  return result;
}

uint64_t sub_1B91BC124(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1B964CA70();
  a1(0);
  sub_1B91BA798(a2, a3);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B91BC208(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B91BA798(&qword_1EBAC7B68, type metadata accessor for Apple_Parsec_Siri_V2alpha_ParkingLocationAction);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B91BC288(uint64_t a1)
{
  v2 = sub_1B91BA798(&qword_1EBAC79E0, type metadata accessor for Apple_Parsec_Siri_V2alpha_ParkingLocationAction);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91BC2F8()
{
  sub_1B91BA798(&qword_1EBAC79E0, type metadata accessor for Apple_Parsec_Siri_V2alpha_ParkingLocationAction);

  return sub_1B964C5D0();
}

unint64_t sub_1B91BC378()
{
  result = qword_1EBAC7A40;
  if (!qword_1EBAC7A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7A40);
  }

  return result;
}

unint64_t sub_1B91BC3D0()
{
  result = qword_1EBAC7A48;
  if (!qword_1EBAC7A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7A48);
  }

  return result;
}

unint64_t sub_1B91BC428()
{
  result = qword_1EBAC7A50;
  if (!qword_1EBAC7A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7A50);
  }

  return result;
}

unint64_t sub_1B91BC4B0()
{
  result = qword_1EBAC7A68;
  if (!qword_1EBAC7A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7A68);
  }

  return result;
}

unint64_t sub_1B91BC508()
{
  result = qword_1EBAC7A70;
  if (!qword_1EBAC7A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7A70);
  }

  return result;
}

unint64_t sub_1B91BC560()
{
  result = qword_1EBAC7A78;
  if (!qword_1EBAC7A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7A78);
  }

  return result;
}

unint64_t sub_1B91BC5E8()
{
  result = qword_1EBAC7A90;
  if (!qword_1EBAC7A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7A90);
  }

  return result;
}

unint64_t sub_1B91BC640()
{
  result = qword_1EBAC7A98;
  if (!qword_1EBAC7A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7A98);
  }

  return result;
}

unint64_t sub_1B91BC698()
{
  result = qword_1EBAC7AA0;
  if (!qword_1EBAC7AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7AA0);
  }

  return result;
}

unint64_t sub_1B91BC720()
{
  result = qword_1EBAC7AB8;
  if (!qword_1EBAC7AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7AB8);
  }

  return result;
}

unint64_t sub_1B91BC778()
{
  result = qword_1EBAC7AC0;
  if (!qword_1EBAC7AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7AC0);
  }

  return result;
}

unint64_t sub_1B91BC7D0()
{
  result = qword_1EBAC7AC8;
  if (!qword_1EBAC7AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7AC8);
  }

  return result;
}

unint64_t sub_1B91BC858()
{
  result = qword_1EBAC7AE0;
  if (!qword_1EBAC7AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7AE0);
  }

  return result;
}

unint64_t sub_1B91BC8B0()
{
  result = qword_1EBAC7AE8;
  if (!qword_1EBAC7AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7AE8);
  }

  return result;
}

unint64_t sub_1B91BC908()
{
  result = qword_1EBAC7AF0;
  if (!qword_1EBAC7AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7AF0);
  }

  return result;
}

unint64_t sub_1B91BC990()
{
  result = qword_1EBAC7B08;
  if (!qword_1EBAC7B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7B08);
  }

  return result;
}

unint64_t sub_1B91BC9E8()
{
  result = qword_1EBAC7B10;
  if (!qword_1EBAC7B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7B10);
  }

  return result;
}

unint64_t sub_1B91BCA40()
{
  result = qword_1EBAC7B18;
  if (!qword_1EBAC7B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7B18);
  }

  return result;
}

void sub_1B91BCEB0()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B91BCF94(319, &qword_1ED9D0FA8, type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchNode);
    if (v1 <= 0x3F)
    {
      sub_1B91BCF94(319, &qword_1ED9D0598, type metadata accessor for Apple_Parsec_Siri_V2alpha_ParkingLocationAction);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B91BCF94(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B964C930();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1B91BD010()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B91BD0E8()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B91BD2C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B91D54AC();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Apple_Parsec_Siri_V2alpha_VideoVerb.allCases.modify()
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t sub_1B91BD3A8@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_VideoVerb.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B91BD3EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B91D5500();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Apple_Parsec_Siri_V2alpha_VideoConfirmationValue.allCases.modify()
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t sub_1B91BD4D4@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_VideoConfirmationValue.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B91BD508(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B91D5554();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Apple_Parsec_Siri_V2alpha_VideoPaginationValue.allCases.modify()
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t sub_1B91BD5F0@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_VideoPaginationValue.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoClientComponent.understanding.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoClientComponent(v9);
  OUTLINED_FUNCTION_77_0(v10);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_343_0();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoUnderstanding(0);
  OUTLINED_FUNCTION_9_2();
  if (v11)
  {
    Apple_Parsec_Siri_V2alpha_VideoUnderstanding.init()(a1);
    result = OUTLINED_FUNCTION_9_2();
    if (!v11)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC7D88, &qword_1B96A2810);
    }
  }

  else
  {
    OUTLINED_FUNCTION_20_8();
    OUTLINED_FUNCTION_182();
    return sub_1B91C6E08();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoClientComponent.understanding.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7D88, &qword_1B96A2810);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoClientComponent(v6);
  v8 = OUTLINED_FUNCTION_47(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoClientComponent._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = sub_1B91C6920(v11);
    OUTLINED_FUNCTION_135(v12);
  }

  OUTLINED_FUNCTION_20_8();
  OUTLINED_FUNCTION_177_6();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoUnderstanding(0);
  v13 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  return swift_endAccess();
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoUnderstanding.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  *(a1 + 80) = MEMORY[0x1E69E7CC0];
  *(a1 + 88) = 0;
  *(a1 + 96) = 1;
  v1 = a1 + *(type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoUnderstanding(0) + 44);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Apple_Parsec_Siri_V2alpha_VideoClientComponent.understanding.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoUnderstanding(v7);
  OUTLINED_FUNCTION_59_1(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_51_12();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_150_2();
  OUTLINED_FUNCTION_17_2();
  if (v13)
  {
    *v12 = 0;
    v12[8] = 1;
    *(v12 + 2) = 0;
    *(v12 + 3) = 0xE000000000000000;
    *(v12 + 4) = 0;
    *(v12 + 5) = 0xE000000000000000;
    *(v12 + 6) = 0;
    *(v12 + 7) = 0xE000000000000000;
    *(v12 + 8) = 0;
    v12[72] = 1;
    *(v12 + 10) = MEMORY[0x1E69E7CC0];
    *(v12 + 11) = 0;
    v12[96] = 1;
    v14 = &v12[*(v8 + 44)];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v13)
    {
      sub_1B8D9207C(v0, &qword_1EBAC7D88, &qword_1B96A2810);
    }
  }

  else
  {
    OUTLINED_FUNCTION_20_8();
    OUTLINED_FUNCTION_246();
    sub_1B91C6E08();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

void sub_1B91BDAA4(uint64_t *a1)
{
  v1 = *a1;

  Apple_Parsec_Siri_V2alpha_VideoClientComponent.results.setter();
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoClientComponent.results.modify()
{
  v2 = __swift_coroFrameAllocStub(0x48uLL);
  *(OUTLINED_FUNCTION_99(v2) + 56) = v0;
  OUTLINED_FUNCTION_62_4();
  *(v1 + 64) = v3;
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__results;
  OUTLINED_FUNCTION_62_0();
  *(v1 + 48) = *(v4 + v5);

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoClientComponent.targetDevice.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoClientComponent(v9);
  OUTLINED_FUNCTION_77_0(v10);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_343_0();
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoHomeAutomationDevice(0);
  OUTLINED_FUNCTION_9_2();
  if (v12)
  {
    OUTLINED_FUNCTION_92_0();
    *(a1 + 32) = 0;
    *(a1 + 40) = 1;
    v13 = a1 + *(v11 + 28);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v12)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC7D90, &qword_1B96A2818);
    }
  }

  else
  {
    OUTLINED_FUNCTION_19_18();
    OUTLINED_FUNCTION_182();
    return sub_1B91C6E08();
  }

  return result;
}

uint64_t sub_1B91BDC6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = a5(0);
  OUTLINED_FUNCTION_183(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_177_1();
  sub_1B91C6E5C();
  return a7(v7);
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoClientComponent.targetDevice.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7D90, &qword_1B96A2818);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoClientComponent(v6);
  v8 = OUTLINED_FUNCTION_47(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoClientComponent._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = sub_1B91C6920(v11);
    OUTLINED_FUNCTION_135(v12);
  }

  OUTLINED_FUNCTION_19_18();
  OUTLINED_FUNCTION_177_6();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoHomeAutomationDevice(0);
  v13 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  return swift_endAccess();
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoHomeAutomationDevice.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = v2;
  *(v1 + 32) = 0;
  *(v1 + 40) = 1;
  v3 = v1 + *(type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoHomeAutomationDevice(0) + 28);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Apple_Parsec_Siri_V2alpha_VideoClientComponent.targetDevice.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoHomeAutomationDevice(v7);
  OUTLINED_FUNCTION_59_1(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_51_12();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_150_2();
  OUTLINED_FUNCTION_17_2();
  if (v13)
  {
    OUTLINED_FUNCTION_114_0();
    v12[4] = 0;
    *(v12 + 40) = 1;
    v14 = v12 + *(v8 + 28);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v13)
    {
      sub_1B8D9207C(v0, &qword_1EBAC7D90, &qword_1B96A2818);
    }
  }

  else
  {
    OUTLINED_FUNCTION_19_18();
    OUTLINED_FUNCTION_246();
    sub_1B91C6E08();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

void sub_1B91BDF98()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 24);
  v6 = *(*v0 + 32);
  if (v7)
  {
    OUTLINED_FUNCTION_186();
    sub_1B91C6E5C();
    v2(v3);
    sub_1B91C6EB0();
  }

  else
  {
    v1(*(*v0 + 48));
  }

  free(v4);
  free(v3);
  free(v6);
  OUTLINED_FUNCTION_242();

  free(v8);
}

uint64_t sub_1B91BE06C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_16();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_183(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v18 - v13;
  OUTLINED_FUNCTION_51_12();
  v15 = *a3;
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_179_3();
  sub_1B8F1B8B8();
  v16 = a4(0);
  OUTLINED_FUNCTION_178(v14, 1, v16);
  OUTLINED_FUNCTION_181_6();
  return v4;
}

void sub_1B91BE158()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_16();
  v5 = v0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_183(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_79();
  v12 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoClientComponent(0) + 20);
  v13 = *(v0 + v12);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v0 + v12);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoClientComponent._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v16);
    swift_allocObject();
    v17 = OUTLINED_FUNCTION_40_0();
    *(v5 + v12) = sub_1B91C6920(v17);
  }

  v4(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  v22 = *v2;
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_179_3();
  sub_1B8F188B0();
  swift_endAccess();
  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B91BE258(uint64_t *a1)
{
  OUTLINED_FUNCTION_51_12();
  v3 = *a1;
  OUTLINED_FUNCTION_10_4();
  v4 = *(v1 + v3);
}

void sub_1B91BE298(uint64_t *a1)
{
  v1 = *a1;

  Apple_Parsec_Siri_V2alpha_VideoClientComponent.utsSearchParams.setter();
}

void sub_1B91BE2D0()
{
  OUTLINED_FUNCTION_193_0();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_313();
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoClientComponent(v5);
  v7 = OUTLINED_FUNCTION_47(v6);
  v8 = *(v1 + v2);
  if ((v7 & 1) == 0)
  {
    v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoClientComponent._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v9);
    swift_allocObject();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B91C6920(v10);
    OUTLINED_FUNCTION_135(v11);
  }

  v12 = *v4;
  OUTLINED_FUNCTION_9_3();
  v13 = *(v8 + v12);
  *(v8 + v12) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoClientComponent.utsSearchParams.modify()
{
  v2 = __swift_coroFrameAllocStub(0x48uLL);
  *(OUTLINED_FUNCTION_99(v2) + 56) = v0;
  OUTLINED_FUNCTION_62_4();
  *(v1 + 64) = v3;
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__utsSearchParams;
  OUTLINED_FUNCTION_62_0();
  *(v1 + 48) = *(v4 + v5);

  return OUTLINED_FUNCTION_514();
}

void sub_1B91BE3EC(uint64_t *a1, char a2, uint64_t *a3, void (*a4)(uint64_t))
{
  v4 = *a1;
  v5 = *(*a1 + 48);
  if (a2)
  {
    v7 = *(v4 + 56);
    v8 = *(*a1 + 48);

    a4(v9);
    v10 = *(v4 + 48);
  }

  else
  {
    v12 = *(v4 + 64);
    v13 = *(v4 + 56);
    v14 = *(v13 + v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v13 + v12);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = *(v4 + 64);
      v18 = *(v4 + 56);
      v19 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoClientComponent._StorageClass(0);
      OUTLINED_FUNCTION_57_0(v19);
      swift_allocObject();
      v20 = OUTLINED_FUNCTION_40_0();
      v21 = sub_1B91C6920(v20);
      OUTLINED_FUNCTION_168(v21);
    }

    v22 = *a3;
    OUTLINED_FUNCTION_59_3();
    v23 = *(v16 + v22);
    *(v16 + v22) = v5;
  }

  free(v4);
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoClientComponent.blockUgcNoResultsFallback.modify()
{
  v2 = __swift_coroFrameAllocStub(0x58uLL);
  *(OUTLINED_FUNCTION_99(v2) + 72) = v0;
  OUTLINED_FUNCTION_62_4();
  *(v1 + 80) = v3;
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__blockUgcNoResultsFallback;
  OUTLINED_FUNCTION_62_0();
  *(v1 + 84) = *(v4 + v5);
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoClientComponent.videoDialogComponent.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoClientComponent(v9);
  OUTLINED_FUNCTION_77_0(v10);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_343_0();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoDialogComponent(0);
  OUTLINED_FUNCTION_9_2();
  if (v11)
  {
    Apple_Parsec_Siri_V2alpha_VideoDialogComponent.init()(a1);
    result = OUTLINED_FUNCTION_9_2();
    if (!v11)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC7D98, &qword_1B96A2820);
    }
  }

  else
  {
    OUTLINED_FUNCTION_21_15();
    OUTLINED_FUNCTION_182();
    return sub_1B91C6E08();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoClientComponent.videoDialogComponent.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7D98, &qword_1B96A2820);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoClientComponent(v6);
  v8 = OUTLINED_FUNCTION_47(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoClientComponent._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = sub_1B91C6920(v11);
    OUTLINED_FUNCTION_135(v12);
  }

  OUTLINED_FUNCTION_21_15();
  OUTLINED_FUNCTION_177_6();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoDialogComponent(0);
  v13 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  return swift_endAccess();
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoDialogComponent.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = v2;
  *(v1 + 32) = 0;
  *(v1 + 40) = v2;
  *(v1 + 48) = 0;
  *(v1 + 56) = v2;
  *(v1 + 64) = 0;
  *(v1 + 72) = v2;
  *(v1 + 80) = 0;
  *(v1 + 88) = v2;
  *(v1 + 96) = 0;
  *(v1 + 104) = v2;
  *(v1 + 112) = 0;
  *(v1 + 120) = v2;
  *(v1 + 128) = 0;
  *(v1 + 136) = v2;
  *(v1 + 144) = 0;
  v3 = v1 + *(type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoDialogComponent(0) + 60);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Apple_Parsec_Siri_V2alpha_VideoClientComponent.videoDialogComponent.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoDialogComponent(v7);
  OUTLINED_FUNCTION_59_1(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_51_12();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_150_2();
  OUTLINED_FUNCTION_17_2();
  if (v13)
  {
    OUTLINED_FUNCTION_114_0();
    v12[4] = 0;
    v12[5] = v14;
    v12[6] = 0;
    v12[7] = v14;
    v12[8] = 0;
    v12[9] = v14;
    v12[10] = 0;
    v12[11] = v14;
    v12[12] = 0;
    v12[13] = v14;
    v12[14] = 0;
    v12[15] = v14;
    v12[16] = 0;
    v12[17] = v14;
    *(v12 + 72) = 0;
    v15 = v12 + *(v8 + 60);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v13)
    {
      sub_1B8D9207C(v0, &qword_1EBAC7D98, &qword_1B96A2820);
    }
  }

  else
  {
    OUTLINED_FUNCTION_21_15();
    OUTLINED_FUNCTION_246();
    sub_1B91C6E08();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B91BE970(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Apple_Parsec_Siri_V2alpha_VideoClientComponent.summarizedKeywordSearch.setter(v1, v2);
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoClientComponent.summarizedKeywordSearch.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_11_10(v1);
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoClientComponent(v2);
  OUTLINED_FUNCTION_254_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1B91BEAB8(uint64_t *a1)
{
  OUTLINED_FUNCTION_51_12();
  v3 = *a1;
  OUTLINED_FUNCTION_10_4();
  return *(v1 + v3);
}

void sub_1B91BEB00()
{
  OUTLINED_FUNCTION_193_0();
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoClientComponent(0);
  v7 = OUTLINED_FUNCTION_47(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoClientComponent._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v9);
    swift_allocObject();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B91C6920(v10);
    OUTLINED_FUNCTION_135(v11);
  }

  v12 = *v3;
  OUTLINED_FUNCTION_9_3();
  *(v8 + v12) = v5 & 1;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoClientComponent.shouldSwitchProfile.modify()
{
  v2 = __swift_coroFrameAllocStub(0x58uLL);
  *(OUTLINED_FUNCTION_99(v2) + 72) = v0;
  OUTLINED_FUNCTION_62_4();
  *(v1 + 80) = v3;
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__shouldSwitchProfile;
  OUTLINED_FUNCTION_62_0();
  *(v1 + 84) = *(v4 + v5);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B91BEC00()
{
  OUTLINED_FUNCTION_243();
  v1 = v0;
  v3 = *v2;
  v4 = *(*v2 + 80);
  v5 = *(*v2 + 72);
  v6 = *(*v2 + 84);
  v7 = *(v5 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = *(v3 + 80);
    v11 = *(v3 + 72);
    v12 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoClientComponent._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v12);
    swift_allocObject();
    v13 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B91C6920(v13);
    *(v11 + v10) = v9;
  }

  v14 = *v1;
  OUTLINED_FUNCTION_18();
  *(v9 + v14) = v6;
  OUTLINED_FUNCTION_242();

  free(v15);
}

void Apple_Parsec_Siri_V2alpha_VideoUnderstanding.verb.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  OUTLINED_FUNCTION_4(a1);
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoUnderstanding.verb.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

void Apple_Parsec_Siri_V2alpha_VideoUnderstanding.confirmationValue.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  OUTLINED_FUNCTION_4(a1);
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoUnderstanding.confirmationValue.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 64) = *result;
  *(v1 + 72) = v2;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoUnderstanding.requestedProviderIds.setter(uint64_t a1)
{
  v3 = *(v1 + 80);

  *(v1 + 80) = a1;
  return result;
}

void Apple_Parsec_Siri_V2alpha_VideoUnderstanding.paginationValue.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v3 = *(v1 + 96);
  OUTLINED_FUNCTION_4(a1);
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoUnderstanding.paginationValue.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 88) = *result;
  *(v1 + 96) = v2;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoUnderstanding.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoUnderstanding(v0) + 44);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoUnderstanding.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoUnderstanding(v0) + 44);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_21_7(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_209();

  return v6(v5);
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoUnderstanding.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoUnderstanding(v0) + 44);
  return OUTLINED_FUNCTION_25();
}

void Apple_Parsec_Siri_V2alpha_VideoHomeAutomationDevice.type.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  OUTLINED_FUNCTION_4(a1);
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoHomeAutomationDevice.type.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 32) = *result;
  *(v1 + 40) = v2;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoHomeAutomationDevice.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoHomeAutomationDevice(v0) + 28);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B91BF04C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B91D55A8();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Apple_Parsec_Siri_V2alpha_VideoHomeAutomationDevice.VideoHomeAutomationDeviceType.allCases.modify()
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t sub_1B91BF134@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_VideoHomeAutomationDevice.VideoHomeAutomationDeviceType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoUtsSearchParam.values.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoUtsSearchParam.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoUtsSearchParam(v0) + 24);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoUtsSearchParam.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoUtsSearchParam(v0) + 24);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_21_7(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_209();

  return v6(v5);
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoUtsSearchParam.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoUtsSearchParam(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoUtsSearchParam.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  v2 = v1 + *(type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoUtsSearchParam(0) + 24);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoResult.object.getter()
{
  OUTLINED_FUNCTION_31_20();
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_209();
  return sub_1B8F1B8B8();
}

uint64_t sub_1B91BF374()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7DA0, &qword_1B96A2828);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1B8F1B8B8();
  return Apple_Parsec_Siri_V2alpha_VideoResult.object.setter();
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoResult.object.setter()
{
  v1 = v0;
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult(v2) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v7);
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_40_0();
    *(v1 + v3) = sub_1B91CAA80(v8);
  }

  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  return swift_endAccess();
}

void Apple_Parsec_Siri_V2alpha_VideoResult.object.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 48) = v0;
  v4 = OUTLINED_FUNCTION_177_1();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = *(v7 + 64);
  *(v1 + 56) = __swift_coroFrameAllocStub(v8);
  *(v1 + 64) = __swift_coroFrameAllocStub(v8);
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult(0);
  OUTLINED_FUNCTION_66_1(v9);
  OUTLINED_FUNCTION_62_0();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_242();
}

void sub_1B91BF598(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = *(v2 + 56);
    v3 = *(v2 + 64);
    v5 = *(v2 + 48);
    OUTLINED_FUNCTION_303();
    sub_1B8F1B8B8();
    Apple_Parsec_Siri_V2alpha_VideoResult.object.setter();
    v6 = OUTLINED_FUNCTION_236();
    sub_1B8D9207C(v6, v7, &qword_1B96A2828);
  }

  else
  {
    v8 = *(v2 + 72);
    v9 = *(v2 + 48);
    v10 = *(v9 + v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v9 + v8);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = *(v2 + 72);
      v14 = *(v2 + 48);
      v15 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult._StorageClass(0);
      OUTLINED_FUNCTION_57_0(v15);
      swift_allocObject();
      v16 = OUTLINED_FUNCTION_40_0();
      *(v14 + v13) = sub_1B91CAA80(v16);
    }

    v4 = *(v2 + 56);
    v3 = *(v2 + 64);
    OUTLINED_FUNCTION_131();
    swift_beginAccess();
    sub_1B8F188B0();
    swift_endAccess();
  }

  free(v3);
  free(v4);

  free(v2);
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoResult.movie.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_59_11(v9);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_343_0();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult.OneOf_Object(0);
  OUTLINED_FUNCTION_9_2();
  if (v10)
  {
    sub_1B8D9207C(v1, &qword_1EBAC7DA0, &qword_1B96A2828);
    return Apple_Parsec_Siri_V2alpha_MovieResult.init()(a1);
  }

  OUTLINED_FUNCTION_461();
  if (swift_getEnumCaseMultiPayload())
  {
    OUTLINED_FUNCTION_0_69();
    sub_1B91C6EB0();
    return Apple_Parsec_Siri_V2alpha_MovieResult.init()(a1);
  }

  OUTLINED_FUNCTION_48_9();
  OUTLINED_FUNCTION_182();
  return sub_1B91C6E08();
}

uint64_t Apple_Parsec_Siri_V2alpha_MovieResult.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  v2 = MEMORY[0x1E69E7CC0];
  *(v1 + 16) = 0;
  *(v1 + 24) = v3;
  *(v1 + 32) = v2;
  *(v1 + 40) = 0;
  *(v1 + 48) = v2;
  *(v1 + 56) = 0;
  *(v1 + 64) = v3;
  *(v1 + 72) = 0;
  *(v1 + 80) = v3;
  *(v1 + 88) = 0;
  *(v1 + 96) = v3;
  *(v1 + 104) = 0;
  *(v1 + 108) = 0;
  v4 = v1 + *(type metadata accessor for Apple_Parsec_Siri_V2alpha_MovieResult(0) + 56);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Apple_Parsec_Siri_V2alpha_VideoResult.movie.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_26_3(v6);
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MovieResult(v7);
  OUTLINED_FUNCTION_59_1(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_47_1(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_31_20();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_71_8();
  OUTLINED_FUNCTION_14_22();
  if (v13)
  {
    sub_1B8D9207C(v0, &qword_1EBAC7DA0, &qword_1B96A2828);
  }

  else
  {
    OUTLINED_FUNCTION_128();
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_48_9();
      OUTLINED_FUNCTION_177_1();
      sub_1B91C6E08();
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_0_69();
    sub_1B91C6EB0();
  }

  OUTLINED_FUNCTION_77_2();
  v15 = MEMORY[0x1E69E7CC0];
  v12[4] = MEMORY[0x1E69E7CC0];
  v12[5] = 0;
  v12[6] = v15;
  v12[7] = 0;
  v12[8] = v16;
  v12[9] = 0;
  v12[10] = v16;
  v12[11] = 0;
  v12[12] = v16;
  *(v12 + 26) = 0;
  *(v12 + 108) = 0;
  v17 = v12 + *(v8 + 56);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
LABEL_7:
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoResult.tvShow.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_59_11(v9);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_343_0();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult.OneOf_Object(0);
  OUTLINED_FUNCTION_9_2();
  if (v10)
  {
    sub_1B8D9207C(v1, &qword_1EBAC7DA0, &qword_1B96A2828);
  }

  else
  {
    OUTLINED_FUNCTION_461();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_2_42();
      OUTLINED_FUNCTION_182();
      return sub_1B91C6E08();
    }

    OUTLINED_FUNCTION_0_69();
    sub_1B91C6EB0();
  }

  return Apple_Parsec_Siri_V2alpha_TvShowResult.init()(a1);
}

uint64_t Apple_Parsec_Siri_V2alpha_TvShowResult.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  v2 = MEMORY[0x1E69E7CC0];
  *(v1 + 16) = 0;
  *(v1 + 24) = v3;
  *(v1 + 32) = v2;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 56) = v2;
  *(v1 + 64) = 0;
  *(v1 + 72) = v3;
  *(v1 + 80) = 0;
  *(v1 + 88) = 0;
  *(v1 + 96) = v3;
  *(v1 + 104) = 0;
  *(v1 + 112) = v3;
  v4 = v1 + *(type metadata accessor for Apple_Parsec_Siri_V2alpha_TvShowResult(0) + 56);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Apple_Parsec_Siri_V2alpha_VideoResult.tvShow.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_26_3(v6);
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvShowResult(v7);
  OUTLINED_FUNCTION_59_1(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_47_1(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_31_20();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_71_8();
  OUTLINED_FUNCTION_14_22();
  if (v13)
  {
    sub_1B8D9207C(v0, &qword_1EBAC7DA0, &qword_1B96A2828);
LABEL_7:
    OUTLINED_FUNCTION_77_2();
    v15 = MEMORY[0x1E69E7CC0];
    v12[4] = MEMORY[0x1E69E7CC0];
    v12[5] = 0;
    v12[6] = 0;
    v12[7] = v15;
    v12[8] = 0;
    v12[9] = v16;
    *(v12 + 20) = 0;
    v12[11] = 0;
    v12[12] = v16;
    v12[13] = 0;
    v12[14] = v16;
    v17 = v12 + *(v8 + 56);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_128();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    OUTLINED_FUNCTION_0_69();
    sub_1B91C6EB0();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_2_42();
  OUTLINED_FUNCTION_177_1();
  sub_1B91C6E08();
LABEL_8:
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoResult.tvSeason.getter()
{
  v2 = OUTLINED_FUNCTION_236();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_59_11(v8);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_343_0();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult.OneOf_Object(0);
  OUTLINED_FUNCTION_9_2();
  if (v9)
  {
    sub_1B8D9207C(v1, &qword_1EBAC7DA0, &qword_1B96A2828);
  }

  else
  {
    OUTLINED_FUNCTION_461();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      OUTLINED_FUNCTION_6_26();
      OUTLINED_FUNCTION_182();
      return sub_1B91C6E08();
    }

    OUTLINED_FUNCTION_0_69();
    sub_1B91C6EB0();
  }

  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_171_3(v12);
  v13 = *(v0 + 44);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_TvShowResult(0);
  v14 = OUTLINED_FUNCTION_40_3();
  return __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
}

uint64_t Apple_Parsec_Siri_V2alpha_TvSeasonResult.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = v3;
  OUTLINED_FUNCTION_171_3(v3);
  v4 = *(v2 + 44);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_TvShowResult(0);
  v5 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

void Apple_Parsec_Siri_V2alpha_VideoResult.tvSeason.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_26_3(v6);
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvSeasonResult(v7);
  OUTLINED_FUNCTION_59_1(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_47_1(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_31_20();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_71_8();
  OUTLINED_FUNCTION_14_22();
  if (v13)
  {
    sub_1B8D9207C(v0, &qword_1EBAC7DA0, &qword_1B96A2828);
LABEL_7:
    OUTLINED_FUNCTION_77_2();
    v15 = MEMORY[0x1E69E7CC0];
    v12[4] = 0;
    v12[5] = v15;
    v12[6] = 0;
    v12[7] = v16;
    v12[8] = 0;
    v12[9] = v16;
    v17 = v12 + *(v8 + 40);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v18 = *(v8 + 44);
    OUTLINED_FUNCTION_111_5();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_128();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    OUTLINED_FUNCTION_0_69();
    sub_1B91C6EB0();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_26();
  OUTLINED_FUNCTION_177_1();
  sub_1B91C6E08();
LABEL_8:
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoResult.tvEpisode.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_59_11(v9);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_343_0();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult.OneOf_Object(0);
  OUTLINED_FUNCTION_9_2();
  if (v10)
  {
    sub_1B8D9207C(v1, &qword_1EBAC7DA0, &qword_1B96A2828);
  }

  else
  {
    OUTLINED_FUNCTION_461();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 3)
    {
      OUTLINED_FUNCTION_47_10();
      OUTLINED_FUNCTION_182();
      return sub_1B91C6E08();
    }

    OUTLINED_FUNCTION_0_69();
    sub_1B91C6EB0();
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v13 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_TvEpisodeResult(0) + 20);
  if (qword_1EBAB78C8 != -1)
  {
    OUTLINED_FUNCTION_133_6();
  }

  *(a1 + v13) = qword_1EBAC7CD8;
}

uint64_t sub_1B91C0128@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v8 = *(a1(0) + 20);
  if (*a2 != -1)
  {
    OUTLINED_FUNCTION_461();
    swift_once();
  }

  *(a4 + v8) = *a3;
}

void Apple_Parsec_Siri_V2alpha_VideoResult.tvEpisode.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_26_3(v6);
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvEpisodeResult(v7);
  OUTLINED_FUNCTION_59_1(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_47_1(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_31_20();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_71_8();
  OUTLINED_FUNCTION_14_22();
  if (v13)
  {
    sub_1B8D9207C(v0, &qword_1EBAC7DA0, &qword_1B96A2828);
  }

  else
  {
    OUTLINED_FUNCTION_128();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 3)
    {
      OUTLINED_FUNCTION_47_10();
      OUTLINED_FUNCTION_177_1();
      sub_1B91C6E08();
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_0_69();
    sub_1B91C6EB0();
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v15 = *(v8 + 20);
  if (qword_1EBAB78C8 != -1)
  {
    OUTLINED_FUNCTION_133_6();
  }

  *&v12[v15] = qword_1EBAC7CD8;

LABEL_10:
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoResult.liveService.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_59_11(v9);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_343_0();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult.OneOf_Object(0);
  OUTLINED_FUNCTION_9_2();
  if (v10)
  {
    sub_1B8D9207C(v1, &qword_1EBAC7DA0, &qword_1B96A2828);
  }

  else
  {
    OUTLINED_FUNCTION_461();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 4)
    {
      OUTLINED_FUNCTION_45_9();
      OUTLINED_FUNCTION_182();
      return sub_1B91C6E08();
    }

    OUTLINED_FUNCTION_0_69();
    sub_1B91C6EB0();
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  v13 = a1 + *(type metadata accessor for Apple_Parsec_Siri_V2alpha_LiveServiceResult(0) + 20);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Apple_Parsec_Siri_V2alpha_VideoResult.liveService.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_26_3(v6);
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LiveServiceResult(v7);
  OUTLINED_FUNCTION_59_1(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_47_1(v10);
  *(v1 + 48) = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_31_20();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_71_8();
  OUTLINED_FUNCTION_14_22();
  if (v12)
  {
    sub_1B8D9207C(v0, &qword_1EBAC7DA0, &qword_1B96A2828);
LABEL_7:
    OUTLINED_FUNCTION_180_5();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_128();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 4)
  {
    OUTLINED_FUNCTION_0_69();
    sub_1B91C6EB0();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_45_9();
  OUTLINED_FUNCTION_177_1();
  sub_1B91C6E08();
LABEL_8:
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoResult.sportsEvent.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_59_11(v9);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_343_0();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult.OneOf_Object(0);
  OUTLINED_FUNCTION_9_2();
  if (v10)
  {
    sub_1B8D9207C(v1, &qword_1EBAC7DA0, &qword_1B96A2828);
  }

  else
  {
    OUTLINED_FUNCTION_461();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 5)
    {
      OUTLINED_FUNCTION_44_9();
      OUTLINED_FUNCTION_182();
      return sub_1B91C6E08();
    }

    OUTLINED_FUNCTION_0_69();
    sub_1B91C6EB0();
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  v13 = a1 + *(type metadata accessor for Apple_Parsec_Siri_V2alpha_SportsEventResult(0) + 20);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B91C071C@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  v3 = v1 + *(v2(0) + 20);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Apple_Parsec_Siri_V2alpha_VideoResult.sportsEvent.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_26_3(v6);
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SportsEventResult(v7);
  OUTLINED_FUNCTION_59_1(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_47_1(v10);
  *(v1 + 48) = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_31_20();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_71_8();
  OUTLINED_FUNCTION_14_22();
  if (v12)
  {
    sub_1B8D9207C(v0, &qword_1EBAC7DA0, &qword_1B96A2828);
LABEL_7:
    OUTLINED_FUNCTION_180_5();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_128();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 5)
  {
    OUTLINED_FUNCTION_0_69();
    sub_1B91C6EB0();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_44_9();
  OUTLINED_FUNCTION_177_1();
  sub_1B91C6E08();
LABEL_8:
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoResult.person.getter()
{
  v2 = OUTLINED_FUNCTION_236();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_59_11(v8);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_343_0();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult.OneOf_Object(0);
  OUTLINED_FUNCTION_9_2();
  if (v9)
  {
    sub_1B8D9207C(v1, &qword_1EBAC7DA0, &qword_1B96A2828);
  }

  else
  {
    OUTLINED_FUNCTION_461();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 6)
    {
      OUTLINED_FUNCTION_43_11();
      OUTLINED_FUNCTION_182();
      return sub_1B91C6E08();
    }

    OUTLINED_FUNCTION_0_69();
    sub_1B91C6EB0();
  }

  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_184_4(v12);
  v13 = *(v0 + 32);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoImage(0);
  v14 = OUTLINED_FUNCTION_40_3();
  return __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
}

void sub_1B91C09DC()
{
  OUTLINED_FUNCTION_243();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7DA0, &qword_1B96A2828);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult(v6) + 20);
  v8 = *(v0 + v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v0 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v11);
    swift_allocObject();
    v12 = OUTLINED_FUNCTION_40_0();
    *(v1 + v7) = sub_1B91CAA80(v12);
  }

  sub_1B91C6E08();
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult.OneOf_Object(0);
  swift_storeEnumTagMultiPayload();
  v14 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v13);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  swift_endAccess();
  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Siri_V2alpha_PersonResult.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = v3;
  OUTLINED_FUNCTION_184_4(v3);
  v4 = *(v2 + 32);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoImage(0);
  v5 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

void Apple_Parsec_Siri_V2alpha_VideoResult.person.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_26_3(v6);
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PersonResult(v7);
  OUTLINED_FUNCTION_59_1(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_47_1(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_31_20();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_71_8();
  OUTLINED_FUNCTION_14_22();
  if (v13)
  {
    sub_1B8D9207C(v0, &qword_1EBAC7DA0, &qword_1B96A2828);
LABEL_7:
    OUTLINED_FUNCTION_77_2();
    v12[4] = 0;
    v12[5] = v15;
    v16 = v12 + *(v8 + 28);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v17 = *(v8 + 32);
    type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoImage(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_128();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 6)
  {
    OUTLINED_FUNCTION_0_69();
    sub_1B91C6EB0();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_43_11();
  OUTLINED_FUNCTION_177_1();
  sub_1B91C6E08();
LABEL_8:
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoResult.uiMetadata.getter()
{
  v1 = (*(v0 + *(type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult(0) + 20)) + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__uiMetadata);
  OUTLINED_FUNCTION_6_2();
  v3 = *v1;
  v2 = v1[1];
  v4 = OUTLINED_FUNCTION_288();
  sub_1B8D91FCC(v4, v5);
  return OUTLINED_FUNCTION_288();
}

void Apple_Parsec_Siri_V2alpha_VideoResult.uiMetadata.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult(v4);
  v6 = OUTLINED_FUNCTION_47(v5);
  v7 = *(v1 + v3);
  if ((v6 & 1) == 0)
  {
    v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v8);
    swift_allocObject();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B91CAA80(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  v11 = (v7 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__uiMetadata);
  OUTLINED_FUNCTION_18();
  v12 = *v11;
  v13 = v11[1];
  *v11 = v2;
  v11[1] = v0;
  sub_1B8D538A0(v12, v13);
  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoResult.uiMetadata.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult(v4);
  OUTLINED_FUNCTION_254_1(v5);
  OUTLINED_FUNCTION_41();
  v6 = *v0;
  v7 = v0[1];
  *(v1 + 48) = *v0;
  *(v1 + 56) = v7;
  sub_1B8D91FCC(v6, v7);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B91C0E60(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    v7 = *(v1 + 64);
    v8 = OUTLINED_FUNCTION_461();
    sub_1B8D91FCC(v8, v9);
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Siri_V2alpha_VideoResult.uiMetadata.setter();
    v10 = *(v1 + 48);
    v11 = *(v1 + 56);
  }

  else
  {
    v12 = OUTLINED_FUNCTION_163_1();
    v13 = *(v5 + v2);
    if ((v12 & 1) == 0)
    {
      v14 = *(v1 + 72);
      v15 = *(v1 + 64);
      v16 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult._StorageClass(0);
      OUTLINED_FUNCTION_57_0(v16);
      swift_allocObject();
      v17 = OUTLINED_FUNCTION_40_0();
      v18 = sub_1B91CAA80(v17);
      OUTLINED_FUNCTION_168(v18);
    }

    v19 = (v13 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__uiMetadata);
    OUTLINED_FUNCTION_18();
    v10 = *v19;
    v11 = v19[1];
    *v19 = v4;
    v19[1] = v3;
  }

  sub_1B8D538A0(v10, v11);

  free(v1);
}

uint64_t sub_1B91C0F38(uint64_t (*a1)(void), void *a2)
{
  v3 = (*(v2 + *(a1(0) + 20)) + *a2);
  OUTLINED_FUNCTION_6_2();
  v5 = *v3;
  v4 = v3[1];

  return OUTLINED_FUNCTION_288();
}

uint64_t sub_1B91C0F94(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Apple_Parsec_Siri_V2alpha_VideoResult.entityExperienceURL.setter();
}

uint64_t sub_1B91C101C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(uint64_t), void *a6)
{
  v12 = v7;
  OUTLINED_FUNCTION_16();
  v14 = *(v13(0) + 20);
  v15 = *(v7 + v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v7 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = a4(0);
    OUTLINED_FUNCTION_57_0(v18);
    swift_allocObject();
    v19 = OUTLINED_FUNCTION_40_0();
    v17 = a5(v19);
    *(v12 + v14) = v17;
  }

  v20 = (v17 + *a6);
  OUTLINED_FUNCTION_18();
  v21 = v20[1];
  *v20 = v8;
  v20[1] = v6;
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoResult.entityExperienceURL.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_11_10(v1);
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult(v2);
  OUTLINED_FUNCTION_254_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1B91C11A8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Apple_Parsec_Siri_V2alpha_VideoResult.description_p.setter();
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoResult.description_p.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_11_10(v1);
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult(v2);
  OUTLINED_FUNCTION_254_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1B91C1304(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Apple_Parsec_Siri_V2alpha_VideoResult.machineGeneratedUtterance.setter();
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoResult.machineGeneratedUtterance.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_11_10(v1);
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult(v2);
  OUTLINED_FUNCTION_254_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B91C1440()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_58_0(v3);
  if (v8)
  {
    v9 = v7;
    OUTLINED_FUNCTION_191();
    v10 = OUTLINED_FUNCTION_461();
    v9(v10);
    v11 = *(v0 + 56);
  }

  else
  {
    v12 = v6;
    v13 = v5;
    v14 = v4;
    v15 = *(v0 + 72);
    v16 = *(v0 + 64);
    v17 = *(v16 + v15);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v16 + v15);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v20 = *(v0 + 72);
      v21 = *(v0 + 64);
      v22 = v14(0);
      OUTLINED_FUNCTION_57_0(v22);
      swift_allocObject();
      v23 = OUTLINED_FUNCTION_40_0();
      v19 = v13(v23);
      *(v21 + v20) = v19;
    }

    v24 = (v19 + *v12);
    OUTLINED_FUNCTION_18();
    v25 = v24[1];
    *v24 = v2;
    v24[1] = v1;
  }

  OUTLINED_FUNCTION_283();

  free(v26);
}

void static Apple_Parsec_Siri_V2alpha_VideoResult.OneOf_Object.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v101 = v0;
  v102 = v1;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PersonResult(0);
  v3 = OUTLINED_FUNCTION_183(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_21();
  v95 = v6;
  v7 = OUTLINED_FUNCTION_201();
  v91 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SportsEventResult(v7);
  v8 = OUTLINED_FUNCTION_59_1(v91);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_21();
  v98 = v11;
  v12 = OUTLINED_FUNCTION_201();
  v90 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LiveServiceResult(v12);
  v13 = OUTLINED_FUNCTION_59_1(v90);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_21();
  v97 = v16;
  v17 = OUTLINED_FUNCTION_201();
  v94 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvEpisodeResult(v17);
  v18 = OUTLINED_FUNCTION_59_1(v94);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_21();
  v96 = v21;
  v22 = OUTLINED_FUNCTION_201();
  v23 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvSeasonResult(v22);
  v24 = OUTLINED_FUNCTION_183(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_21();
  v93 = v27;
  v28 = OUTLINED_FUNCTION_201();
  v29 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvShowResult(v28);
  v30 = OUTLINED_FUNCTION_183(v29);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_21();
  v92 = v33;
  v34 = OUTLINED_FUNCTION_201();
  v35 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MovieResult(v34);
  v36 = OUTLINED_FUNCTION_183(v35);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_62();
  v41 = (v40 - v39);
  v42 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult.OneOf_Object(0);
  v43 = OUTLINED_FUNCTION_59_1(v42);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_66();
  MEMORY[0x1EEE9AC00](v46);
  v100 = &v89 - v47;
  OUTLINED_FUNCTION_230();
  v49 = MEMORY[0x1EEE9AC00](v48);
  v51 = (&v89 - v50);
  MEMORY[0x1EEE9AC00](v49);
  v99 = &v89 - v52;
  OUTLINED_FUNCTION_230();
  v54 = MEMORY[0x1EEE9AC00](v53);
  v55 = MEMORY[0x1EEE9AC00](v54);
  v57 = (&v89 - v56);
  MEMORY[0x1EEE9AC00](v55);
  v59 = (&v89 - v58);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7DC0, &qword_1B96A2830);
  OUTLINED_FUNCTION_183(v60);
  v62 = *(v61 + 64);
  OUTLINED_FUNCTION_176();
  v64 = MEMORY[0x1EEE9AC00](v63);
  v66 = &v89 - v65;
  v67 = *(v64 + 56);
  sub_1B91C6E5C();
  sub_1B91C6E5C();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_3_42();
      sub_1B91C6E5C();
      if (OUTLINED_FUNCTION_167_6() == 1)
      {
        OUTLINED_FUNCTION_2_42();
        v82 = v92;
        sub_1B91C6E08();
        static Apple_Parsec_Siri_V2alpha_TvShowResult.== infix(_:_:)(v57, v82);
        sub_1B91C6EB0();
        goto LABEL_37;
      }

      OUTLINED_FUNCTION_23_13();
      goto LABEL_33;
    case 2u:
      OUTLINED_FUNCTION_3_42();
      sub_1B91C6E5C();
      if (OUTLINED_FUNCTION_167_6() != 2)
      {
        goto LABEL_33;
      }

      OUTLINED_FUNCTION_6_26();
      sub_1B91C6E08();
      static Apple_Parsec_Siri_V2alpha_TvSeasonResult.== infix(_:_:)();
      sub_1B91C6EB0();
      goto LABEL_37;
    case 3u:
      OUTLINED_FUNCTION_3_42();
      v73 = v99;
      sub_1B91C6E5C();
      if (OUTLINED_FUNCTION_167_6() != 3)
      {
        goto LABEL_33;
      }

      OUTLINED_FUNCTION_47_10();
      v74 = v96;
      sub_1B91C6E08();
      v75 = *(v94 + 20);
      if (*&v73[v75] == *(v74 + v75) || (v76 = *&v73[v75], , , v77 = OUTLINED_FUNCTION_543(), v79 = sub_1B91D1D70(v77, v78), , , v79))
      {
        sub_1B964C2B0();
        OUTLINED_FUNCTION_1_58();
        sub_1B8CD2B58(v80, v81);
        sub_1B964C850();
      }

      goto LABEL_17;
    case 4u:
      OUTLINED_FUNCTION_3_42();
      sub_1B91C6E5C();
      if (OUTLINED_FUNCTION_167_6() != 4)
      {
        goto LABEL_33;
      }

      OUTLINED_FUNCTION_45_9();
      v68 = v97;
      sub_1B91C6E08();
      v69 = *v51 == *v68 && v51[1] == v68[1];
      if (v69 || (sub_1B964C9F0() & 1) != 0)
      {
        v70 = *(v90 + 20);
        sub_1B964C2B0();
        OUTLINED_FUNCTION_1_58();
        sub_1B8CD2B58(v71, v72);
        sub_1B964C850();
      }

LABEL_17:
      sub_1B91C6EB0();
      goto LABEL_37;
    case 5u:
      OUTLINED_FUNCTION_3_42();
      v83 = v100;
      sub_1B91C6E5C();
      if (OUTLINED_FUNCTION_167_6() != 5)
      {
        goto LABEL_33;
      }

      OUTLINED_FUNCTION_44_9();
      v84 = v98;
      sub_1B91C6E08();
      v85 = *v83 == *v84 && v83[1] == v84[1];
      if (v85 || (sub_1B964C9F0() & 1) != 0)
      {
        v86 = *(v91 + 20);
        sub_1B964C2B0();
        OUTLINED_FUNCTION_1_58();
        sub_1B8CD2B58(v87, v88);
        sub_1B964C850();
      }

      OUTLINED_FUNCTION_123_6();
      sub_1B91C6EB0();
      goto LABEL_37;
    case 6u:
      OUTLINED_FUNCTION_3_42();
      sub_1B91C6E5C();
      if (OUTLINED_FUNCTION_167_6() != 6)
      {
        goto LABEL_33;
      }

      OUTLINED_FUNCTION_43_11();
      sub_1B91C6E08();
      static Apple_Parsec_Siri_V2alpha_PersonResult.== infix(_:_:)();
      sub_1B91C6EB0();
      goto LABEL_37;
    default:
      OUTLINED_FUNCTION_3_42();
      sub_1B91C6E5C();
      if (OUTLINED_FUNCTION_167_6())
      {
LABEL_33:
        sub_1B91C6EB0();
        sub_1B8D9207C(v66, &qword_1EBAC7DC0, &qword_1B96A2830);
      }

      else
      {
        OUTLINED_FUNCTION_48_9();
        sub_1B91C6E08();
        static Apple_Parsec_Siri_V2alpha_MovieResult.== infix(_:_:)(v59, v41);
        sub_1B91C6EB0();
LABEL_37:
        sub_1B91C6EB0();
        OUTLINED_FUNCTION_0_69();
        sub_1B91C6EB0();
      }

      OUTLINED_FUNCTION_283();
      return;
  }
}

uint64_t static Apple_Parsec_Siri_V2alpha_MovieResult.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_17_1(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v9 = v6 && v7 == v8;
  if (!v9 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  if ((sub_1B8D6123C(*(v3 + 32), *(v2 + 32)) & 1) == 0)
  {
    return 0;
  }

  if (*(v3 + 40) != *(v2 + 40))
  {
    return 0;
  }

  v10 = *(v3 + 48);
  v11 = *(v2 + 48);
  sub_1B8D6C98C();
  if ((v12 & 1) == 0)
  {
    return 0;
  }

  v13 = *(v3 + 56) == *(v2 + 56) && *(v3 + 64) == *(v2 + 64);
  if (!v13 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v14 = *(v3 + 72) == *(v2 + 72) && *(v3 + 80) == *(v2 + 80);
  if (!v14 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v15 = *(v3 + 88) == *(v2 + 88) && *(v3 + 96) == *(v2 + 96);
  if (!v15 && (sub_1B964C9F0() & 1) == 0 || *(v3 + 104) != *(v2 + 104) || *(v3 + 108) != *(v2 + 108))
  {
    return 0;
  }

  v17 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_MovieResult(0) + 56);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_58();
  sub_1B8CD2B58(v18, v19);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t static Apple_Parsec_Siri_V2alpha_TvShowResult.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_17_1(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v9 = v6 && v7 == v8;
  if (!v9 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  if ((sub_1B8D6123C(*(v3 + 32), *(v2 + 32)) & 1) == 0)
  {
    return 0;
  }

  if (*(v3 + 40) != *(v2 + 40))
  {
    return 0;
  }

  if (*(v3 + 48) != *(v2 + 48))
  {
    return 0;
  }

  v10 = *(v3 + 56);
  v11 = *(v2 + 56);
  sub_1B8D6C98C();
  if ((v12 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_157_8();
  v15 = v6 && v13 == v14;
  if (!v15 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  if (*(v3 + 80) != *(v2 + 80))
  {
    return 0;
  }

  v16 = *(v3 + 88) == *(v2 + 88) && *(v3 + 96) == *(v2 + 96);
  if (!v16 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v17 = *(v3 + 104) == *(v2 + 104) && *(v3 + 112) == *(v2 + 112);
  if (!v17 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v18 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_TvShowResult(0) + 56);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_58();
  sub_1B8CD2B58(v19, v20);
  return OUTLINED_FUNCTION_634() & 1;
}

void static Apple_Parsec_Siri_V2alpha_TvSeasonResult.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_468();
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvShowResult(0);
  v4 = OUTLINED_FUNCTION_59_1(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_62();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7DC8, &qword_1B96A2838);
  OUTLINED_FUNCTION_183(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_79();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7DD0, &qword_1B96A2840);
  OUTLINED_FUNCTION_59_1(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_153_5();
  v17 = v17 && v15 == v16;
  if (!v17 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_84_1();
  v20 = v17 && v18 == v19;
  if (!v20 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_32;
  }

  if (*(v1 + 32) != *(v0 + 32))
  {
    goto LABEL_32;
  }

  v21 = *(v1 + 40);
  v22 = *(v0 + 40);
  sub_1B8D6C98C();
  if ((v23 & 1) == 0)
  {
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_167_4();
  v26 = v17 && v24 == v25;
  if (!v26 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_157_8();
  v29 = v17 && v27 == v28;
  if (!v29 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_32;
  }

  v41 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvSeasonResult(0);
  v30 = *(v41 + 44);
  v31 = *(v11 + 48);
  sub_1B8F1B8B8();
  sub_1B8F1B8B8();
  v32 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v32, v33, v3);
  if (v17)
  {
    OUTLINED_FUNCTION_178(v2 + v31, 1, v3);
    if (v17)
    {
      sub_1B8D9207C(v2, &qword_1EBAC7DC8, &qword_1B96A2838);
LABEL_34:
      v38 = *(v41 + 40);
      sub_1B964C2B0();
      OUTLINED_FUNCTION_1_58();
      sub_1B8CD2B58(v39, v40);
      OUTLINED_FUNCTION_634();
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  OUTLINED_FUNCTION_177_1();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_178(v2 + v31, 1, v3);
  if (v34)
  {
    OUTLINED_FUNCTION_23_13();
    sub_1B91C6EB0();
LABEL_31:
    sub_1B8D9207C(v2, &qword_1EBAC7DD0, &qword_1B96A2840);
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_2_42();
  sub_1B91C6E08();
  v35 = OUTLINED_FUNCTION_246();
  v37 = static Apple_Parsec_Siri_V2alpha_TvShowResult.== infix(_:_:)(v35, v36);
  sub_1B91C6EB0();
  sub_1B91C6EB0();
  sub_1B8D9207C(v2, &qword_1EBAC7DC8, &qword_1B96A2838);
  if (v37)
  {
    goto LABEL_34;
  }

LABEL_32:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B91C23B8(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  OUTLINED_FUNCTION_17_1(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3(0) + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_58();
  sub_1B8CD2B58(v8, v9);
  return OUTLINED_FUNCTION_634() & 1;
}

void static Apple_Parsec_Siri_V2alpha_PersonResult.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_468();
  v1 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoImage(0);
  v2 = OUTLINED_FUNCTION_59_1(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_62();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7DD8, &qword_1B96A2848);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_79();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7DE0, &qword_1B96A2850);
  OUTLINED_FUNCTION_59_1(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_153_5();
  v15 = v15 && v13 == v14;
  if (v15 || (sub_1B964C9F0() & 1) != 0)
  {
    OUTLINED_FUNCTION_84_1();
    v18 = v15 && v16 == v17;
    if (v18 || (sub_1B964C9F0() & 1) != 0)
    {
      v33 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PersonResult(0);
      v19 = *(v33 + 32);
      v20 = *(v9 + 48);
      sub_1B8F1B8B8();
      sub_1B8F1B8B8();
      v21 = OUTLINED_FUNCTION_493();
      OUTLINED_FUNCTION_178(v21, v22, v1);
      if (v15)
      {
        OUTLINED_FUNCTION_178(v0 + v20, 1, v1);
        if (v15)
        {
          sub_1B8D9207C(v0, &qword_1EBAC7DD8, &qword_1B96A2848);
LABEL_22:
          OUTLINED_FUNCTION_40_5();
          v29 = v15 && v27 == v28;
          if (v29 || (sub_1B964C9F0() & 1) != 0)
          {
            v30 = *(v33 + 28);
            sub_1B964C2B0();
            OUTLINED_FUNCTION_1_58();
            sub_1B8CD2B58(v31, v32);
            OUTLINED_FUNCTION_634();
          }

          goto LABEL_20;
        }
      }

      else
      {
        OUTLINED_FUNCTION_177_1();
        sub_1B8F1B8B8();
        OUTLINED_FUNCTION_178(v0 + v20, 1, v1);
        if (!v23)
        {
          OUTLINED_FUNCTION_4_34();
          sub_1B91C6E08();
          v24 = OUTLINED_FUNCTION_246();
          v26 = static Apple_Parsec_Siri_V2alpha_VideoImage.== infix(_:_:)(v24, v25);
          sub_1B91C6EB0();
          sub_1B91C6EB0();
          sub_1B8D9207C(v0, &qword_1EBAC7DD8, &qword_1B96A2848);
          if ((v26 & 1) == 0)
          {
            goto LABEL_20;
          }

          goto LABEL_22;
        }

        OUTLINED_FUNCTION_42_9();
        sub_1B91C6EB0();
      }

      sub_1B8D9207C(v0, &qword_1EBAC7DE0, &qword_1B96A2850);
    }
  }

LABEL_20:
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_V2alpha_TvShowResult.images.setter(uint64_t a1)
{
  v3 = *(v1 + 56);

  *(v1 + 56) = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_TvShowResult.tvAppCanonicalURL.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_TvShowResult.tvAppCanonicalURL.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 72);

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_TvShowResult.contentRatingSystem.getter()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_TvShowResult.contentRatingSystem.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 112);

  *(v1 + 104) = v2;
  *(v1 + 112) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_TvShowResult.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_TvShowResult(v0) + 56);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_V2alpha_TvSeasonResult.images.setter(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_TvSeasonResult.tvAppCanonicalURL.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_TvSeasonResult.tvAppCanonicalURL.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_TvSeasonResult.show.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvSeasonResult(v9);
  OUTLINED_FUNCTION_115(*(v10 + 44));
  sub_1B8F1B8B8();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_TvShowResult(0);
  OUTLINED_FUNCTION_9_2();
  if (v11)
  {
    Apple_Parsec_Siri_V2alpha_TvShowResult.init()(a1);
    result = OUTLINED_FUNCTION_9_2();
    if (!v11)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC7DC8, &qword_1B96A2838);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_42();
    OUTLINED_FUNCTION_182();
    return sub_1B91C6E08();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_TvSeasonResult.show.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvSeasonResult(v1);
  sub_1B8D9207C(v0 + *(v2 + 44), &qword_1EBAC7DC8, &qword_1B96A2838);
  OUTLINED_FUNCTION_2_42();
  OUTLINED_FUNCTION_122_0();
  sub_1B91C6E08();
  OUTLINED_FUNCTION_111_5();
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Siri_V2alpha_TvSeasonResult.show.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *v2 = v3;
  *v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7DC8, &qword_1B96A2838);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvShowResult(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v3[4] = __swift_coroFrameAllocStub(v9);
  *(v3 + 10) = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_TvSeasonResult(0) + 44);
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_17_2();
  if (v10)
  {
    OUTLINED_FUNCTION_114_0();
    OUTLINED_FUNCTION_149_5(v11);
    OUTLINED_FUNCTION_17_2();
    if (!v10)
    {
      sub_1B8D9207C(v6, &qword_1EBAC7DC8, &qword_1B96A2838);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_42();
    OUTLINED_FUNCTION_246();
    sub_1B91C6E08();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B91C2D8C()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67(v6);
  if (v7)
  {
    OUTLINED_FUNCTION_128();
    sub_1B91C6E5C();
    sub_1B8D9207C(v5 + v4, &qword_1EBAC7DC8, &qword_1B96A2838);
    OUTLINED_FUNCTION_2_42();
    sub_1B91C6E08();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v3);
    OUTLINED_FUNCTION_23_13();
    sub_1B91C6EB0();
  }

  else
  {
    sub_1B8D9207C(v5 + v4, &qword_1EBAC7DC8, &qword_1B96A2838);
    OUTLINED_FUNCTION_2_42();
    sub_1B91C6E08();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v3);
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v14);
}

uint64_t Apple_Parsec_Siri_V2alpha_TvSeasonResult.hasShow.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvSeasonResult(v6);
  OUTLINED_FUNCTION_115(*(v7 + 44));
  sub_1B8F1B8B8();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_TvShowResult(0);
  v8 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v8, v9, v10);
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = OUTLINED_FUNCTION_182();
  sub_1B8D9207C(v13, v14, &qword_1B96A2838);
  return v12;
}

Swift::Void __swiftcall Apple_Parsec_Siri_V2alpha_TvSeasonResult.clearShow()()
{
  v1 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvSeasonResult(0);
  sub_1B8D9207C(v0 + *(v1 + 44), &qword_1EBAC7DC8, &qword_1B96A2838);
  OUTLINED_FUNCTION_111_5();
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Apple_Parsec_Siri_V2alpha_TvSeasonResult.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_TvSeasonResult(v0) + 40);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t Apple_Parsec_Siri_V2alpha_TvSeasonResult.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_TvSeasonResult(v0) + 40);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_21_7(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_209();

  return v6(v5);
}

uint64_t Apple_Parsec_Siri_V2alpha_TvSeasonResult.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_TvSeasonResult(v0) + 40);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_V2alpha_TvEpisodeResult.canonicalID.getter()
{
  OUTLINED_FUNCTION_41_16();
  OUTLINED_FUNCTION_10_4();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_432();
}

void sub_1B91C30DC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Siri_V2alpha_TvEpisodeResult.canonicalID.setter();
}

void Apple_Parsec_Siri_V2alpha_TvEpisodeResult.canonicalID.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_146_4(v4);
  v6 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_56_6();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B91D0C74(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3();
  v9 = *(v6 + 24);
  *(v6 + 16) = v2;
  *(v6 + 24) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Siri_V2alpha_TvEpisodeResult.canonicalID.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvEpisodeResult(v4);
  OUTLINED_FUNCTION_66_1(v5);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v0 + 24);
  *(v1 + 48) = *(v0 + 16);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B91C31E8(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Siri_V2alpha_TvEpisodeResult.canonicalID.setter();
    v7 = *(v1 + 56);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      v10 = *(v1 + 72);
      v11 = *(v1 + 64);
      OUTLINED_FUNCTION_56_6();
      v12 = OUTLINED_FUNCTION_40_0();
      v13 = sub_1B91D0C74(v12);
      OUTLINED_FUNCTION_168(v13);
    }

    OUTLINED_FUNCTION_59_3();
    v14 = *(v9 + 24);
    *(v9 + 16) = v4;
    *(v9 + 24) = v3;
  }

  free(v1);
}

uint64_t Apple_Parsec_Siri_V2alpha_TvEpisodeResult.title.getter()
{
  OUTLINED_FUNCTION_41_16();
  OUTLINED_FUNCTION_10_4();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_432();
}

void sub_1B91C32BC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Siri_V2alpha_TvEpisodeResult.title.setter();
}

void Apple_Parsec_Siri_V2alpha_TvEpisodeResult.title.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_146_4(v4);
  v6 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_56_6();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B91D0C74(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3();
  v9 = *(v6 + 40);
  *(v6 + 32) = v2;
  *(v6 + 40) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Siri_V2alpha_TvEpisodeResult.title.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvEpisodeResult(v4);
  OUTLINED_FUNCTION_66_1(v5);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v0 + 40);
  *(v1 + 48) = *(v0 + 32);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B91C33C8(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Siri_V2alpha_TvEpisodeResult.title.setter();
    v7 = *(v1 + 56);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      v10 = *(v1 + 72);
      v11 = *(v1 + 64);
      OUTLINED_FUNCTION_56_6();
      v12 = OUTLINED_FUNCTION_40_0();
      v13 = sub_1B91D0C74(v12);
      OUTLINED_FUNCTION_168(v13);
    }

    OUTLINED_FUNCTION_59_3();
    v14 = *(v9 + 40);
    *(v9 + 32) = v4;
    *(v9 + 40) = v3;
  }

  free(v1);
}

uint64_t Apple_Parsec_Siri_V2alpha_TvEpisodeResult.premiereDateSeconds.getter()
{
  OUTLINED_FUNCTION_49_13();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  return *(v2 + 48);
}

uint64_t Apple_Parsec_Siri_V2alpha_TvEpisodeResult.premiereDateSeconds.setter()
{
  v2 = v1;
  v3 = OUTLINED_FUNCTION_313();
  v4 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_TvEpisodeResult(v3) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_56_6();
    v8 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B91D0C74(v8);
    *(v2 + v4) = v7;
  }

  result = OUTLINED_FUNCTION_9_3();
  v7[6] = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_TvEpisodeResult.premiereDateSeconds.modify()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_99(v2) + 80) = v0;
  OUTLINED_FUNCTION_49_13();
  *(v1 + 88) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 72) = *(v4 + 48);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B91C3570(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 88);
  v4 = *(*a1 + 80);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 88);
    v9 = *(v1 + 80);
    OUTLINED_FUNCTION_56_6();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B91D0C74(v10);
    OUTLINED_FUNCTION_168(v11);
  }

  OUTLINED_FUNCTION_18();
  *(v7 + 48) = v2;

  free(v1);
}

uint64_t Apple_Parsec_Siri_V2alpha_TvEpisodeResult.images.getter()
{
  OUTLINED_FUNCTION_49_13();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 56);
}

uint64_t sub_1B91C364C(uint64_t *a1)
{
  v1 = *a1;

  return Apple_Parsec_Siri_V2alpha_TvEpisodeResult.images.setter();
}

uint64_t Apple_Parsec_Siri_V2alpha_TvEpisodeResult.images.setter()
{
  v2 = v1;
  v3 = OUTLINED_FUNCTION_313();
  v4 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_TvEpisodeResult(v3) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_56_6();
    v8 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B91D0C74(v8);
    *(v2 + v4) = v7;
  }

  OUTLINED_FUNCTION_9_3();
  v9 = v7[7];
  v7[7] = v0;
}

uint64_t Apple_Parsec_Siri_V2alpha_TvEpisodeResult.images.modify()
{
  v2 = __swift_coroFrameAllocStub(0x48uLL);
  *(OUTLINED_FUNCTION_99(v2) + 56) = v0;
  OUTLINED_FUNCTION_49_13();
  *(v1 + 64) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 48) = *(v4 + 56);

  return OUTLINED_FUNCTION_514();
}

void sub_1B91C3764(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  if (a2)
  {
    v4 = *(v2 + 56);
    v5 = *(*a1 + 48);

    Apple_Parsec_Siri_V2alpha_TvEpisodeResult.images.setter();
    v6 = *(v2 + 48);
  }

  else
  {
    v7 = *(v2 + 64);
    v8 = *(v2 + 56);
    v9 = *(v8 + v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v8 + v7);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = *(v2 + 64);
      v13 = *(v2 + 56);
      OUTLINED_FUNCTION_56_6();
      v14 = OUTLINED_FUNCTION_40_0();
      v11 = sub_1B91D0C74(v14);
      *(v13 + v12) = v11;
    }

    OUTLINED_FUNCTION_59_3();
    v15 = v11[7];
    v11[7] = v3;
  }

  free(v2);
}

uint64_t Apple_Parsec_Siri_V2alpha_TvEpisodeResult.tvAppCanonicalURL.getter()
{
  OUTLINED_FUNCTION_41_16();
  OUTLINED_FUNCTION_10_4();
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return OUTLINED_FUNCTION_432();
}

void sub_1B91C3854(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Siri_V2alpha_TvEpisodeResult.tvAppCanonicalURL.setter();
}

void Apple_Parsec_Siri_V2alpha_TvEpisodeResult.tvAppCanonicalURL.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_146_4(v4);
  v6 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_56_6();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B91D0C74(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3();
  v9 = *(v6 + 72);
  *(v6 + 64) = v2;
  *(v6 + 72) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Siri_V2alpha_TvEpisodeResult.tvAppCanonicalURL.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvEpisodeResult(v4);
  OUTLINED_FUNCTION_66_1(v5);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v0 + 72);
  *(v1 + 48) = *(v0 + 64);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B91C3960(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Siri_V2alpha_TvEpisodeResult.tvAppCanonicalURL.setter();
    v7 = *(v1 + 56);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      v10 = *(v1 + 72);
      v11 = *(v1 + 64);
      OUTLINED_FUNCTION_56_6();
      v12 = OUTLINED_FUNCTION_40_0();
      v13 = sub_1B91D0C74(v12);
      OUTLINED_FUNCTION_168(v13);
    }

    OUTLINED_FUNCTION_59_3();
    v14 = *(v9 + 72);
    *(v9 + 64) = v4;
    *(v9 + 72) = v3;
  }

  free(v1);
}

uint64_t Apple_Parsec_Siri_V2alpha_TvEpisodeResult.seasonNumber.getter()
{
  OUTLINED_FUNCTION_41_16();
  OUTLINED_FUNCTION_10_4();
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return OUTLINED_FUNCTION_432();
}

void sub_1B91C3A34(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Siri_V2alpha_TvEpisodeResult.seasonNumber.setter();
}

void Apple_Parsec_Siri_V2alpha_TvEpisodeResult.seasonNumber.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_146_4(v4);
  v6 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_56_6();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B91D0C74(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3();
  v9 = *(v6 + 88);
  *(v6 + 80) = v2;
  *(v6 + 88) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Siri_V2alpha_TvEpisodeResult.seasonNumber.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvEpisodeResult(v4);
  OUTLINED_FUNCTION_66_1(v5);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v0 + 88);
  *(v1 + 48) = *(v0 + 80);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B91C3B40(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Siri_V2alpha_TvEpisodeResult.seasonNumber.setter();
    v7 = *(v1 + 56);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      v10 = *(v1 + 72);
      v11 = *(v1 + 64);
      OUTLINED_FUNCTION_56_6();
      v12 = OUTLINED_FUNCTION_40_0();
      v13 = sub_1B91D0C74(v12);
      OUTLINED_FUNCTION_168(v13);
    }

    OUTLINED_FUNCTION_59_3();
    v14 = *(v9 + 88);
    *(v9 + 80) = v4;
    *(v9 + 88) = v3;
  }

  free(v1);
}

uint64_t Apple_Parsec_Siri_V2alpha_TvEpisodeResult.episodeNumber.getter()
{
  OUTLINED_FUNCTION_41_16();
  OUTLINED_FUNCTION_10_4();
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return OUTLINED_FUNCTION_432();
}

void sub_1B91C3C14(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Siri_V2alpha_TvEpisodeResult.episodeNumber.setter();
}

void Apple_Parsec_Siri_V2alpha_TvEpisodeResult.episodeNumber.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_146_4(v4);
  v6 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_56_6();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B91D0C74(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3();
  v9 = *(v6 + 104);
  *(v6 + 96) = v2;
  *(v6 + 104) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Siri_V2alpha_TvEpisodeResult.episodeNumber.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvEpisodeResult(v4);
  OUTLINED_FUNCTION_66_1(v5);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v0 + 104);
  *(v1 + 48) = *(v0 + 96);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B91C3D20(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Siri_V2alpha_TvEpisodeResult.episodeNumber.setter();
    v7 = *(v1 + 56);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      v10 = *(v1 + 72);
      v11 = *(v1 + 64);
      OUTLINED_FUNCTION_56_6();
      v12 = OUTLINED_FUNCTION_40_0();
      v13 = sub_1B91D0C74(v12);
      OUTLINED_FUNCTION_168(v13);
    }

    OUTLINED_FUNCTION_59_3();
    v14 = *(v9 + 104);
    *(v9 + 96) = v4;
    *(v9 + 104) = v3;
  }

  free(v1);
}

uint64_t Apple_Parsec_Siri_V2alpha_TvEpisodeResult.show.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvEpisodeResult(v9);
  OUTLINED_FUNCTION_77_0(v10);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_343_0();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_TvShowResult(0);
  OUTLINED_FUNCTION_9_2();
  if (v11)
  {
    Apple_Parsec_Siri_V2alpha_TvShowResult.init()(a1);
    result = OUTLINED_FUNCTION_9_2();
    if (!v11)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC7DC8, &qword_1B96A2838);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_42();
    OUTLINED_FUNCTION_182();
    return sub_1B91C6E08();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_TvEpisodeResult.show.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7DC8, &qword_1B96A2838);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_146_4(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_56_6();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B91D0C74(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_2_42();
  OUTLINED_FUNCTION_177_6();
  OUTLINED_FUNCTION_111_5();
  v11 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  return swift_endAccess();
}

void Apple_Parsec_Siri_V2alpha_TvEpisodeResult.show.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvShowResult(v7);
  OUTLINED_FUNCTION_59_1(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  *(v1 + 48) = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_41_16();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_150_2();
  OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    OUTLINED_FUNCTION_114_0();
    OUTLINED_FUNCTION_149_5(v13);
    OUTLINED_FUNCTION_17_2();
    if (!v12)
    {
      sub_1B8D9207C(v0, &qword_1EBAC7DC8, &qword_1B96A2838);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_42();
    OUTLINED_FUNCTION_246();
    sub_1B91C6E08();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_V2alpha_TvEpisodeResult.season.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_31_2();
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvEpisodeResult(v9);
  OUTLINED_FUNCTION_77_0(v10);
  OUTLINED_FUNCTION_101_0();
  sub_1B8F1B8B8();
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvSeasonResult(0);
  OUTLINED_FUNCTION_57(v1);
  if (v12)
  {
    *a1 = 0;
    a1[1] = 0xE000000000000000;
    a1[2] = 0;
    a1[3] = 0xE000000000000000;
    v13 = MEMORY[0x1E69E7CC0];
    a1[4] = 0;
    a1[5] = v13;
    a1[6] = 0;
    a1[7] = 0xE000000000000000;
    a1[8] = 0;
    a1[9] = 0xE000000000000000;
    v14 = a1 + *(v11 + 40);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v15 = *(v11 + 44);
    OUTLINED_FUNCTION_111_5();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    result = OUTLINED_FUNCTION_57(v1);
    if (!v12)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC7DE8, &qword_1B96A2858);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_26();
    return sub_1B91C6E08();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_TvEpisodeResult.season.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7DE8, &qword_1B96A2858);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_146_4(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_56_6();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B91D0C74(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_6_26();
  OUTLINED_FUNCTION_177_6();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_TvSeasonResult(0);
  v11 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  return swift_endAccess();
}

void Apple_Parsec_Siri_V2alpha_TvEpisodeResult.season.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvSeasonResult(v7);
  OUTLINED_FUNCTION_59_1(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_41_16();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_150_2();
  OUTLINED_FUNCTION_17_2();
  if (v13)
  {
    OUTLINED_FUNCTION_114_0();
    v14 = MEMORY[0x1E69E7CC0];
    v12[4] = 0;
    v12[5] = v14;
    v12[6] = 0;
    v12[7] = v15;
    v12[8] = 0;
    v12[9] = v15;
    v16 = v12 + *(v8 + 40);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v17 = *(v8 + 44);
    OUTLINED_FUNCTION_111_5();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    OUTLINED_FUNCTION_17_2();
    if (!v13)
    {
      sub_1B8D9207C(v0, &qword_1EBAC7DE8, &qword_1B96A2858);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_26();
    OUTLINED_FUNCTION_246();
    sub_1B91C6E08();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B91C44E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_16();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_183(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v18 - v13;
  OUTLINED_FUNCTION_41_16();
  v15 = *a3;
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_179_3();
  sub_1B8F1B8B8();
  v16 = a4(0);
  OUTLINED_FUNCTION_178(v14, 1, v16);
  OUTLINED_FUNCTION_181_6();
  return v4;
}

void sub_1B91C45D4()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_16();
  v5 = v0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_183(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_79();
  v12 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_TvEpisodeResult(0) + 20);
  v13 = *(v0 + v12);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v0 + v12);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_56_6();
    v16 = OUTLINED_FUNCTION_40_0();
    *(v5 + v12) = sub_1B91D0C74(v16);
  }

  v4(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  v21 = *v2;
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_179_3();
  sub_1B8F188B0();
  swift_endAccess();
  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Siri_V2alpha_MovieResult.title.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_MovieResult.title.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_MovieResult.genres.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_MovieResult.images.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_MovieResult.tvAppCanonicalURL.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_MovieResult.tvAppCanonicalURL.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 64);

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_MovieResult.contentRatingValue.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_MovieResult.contentRatingValue.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 80);

  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_MovieResult.contentRatingSystem.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_MovieResult.contentRatingSystem.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 96);

  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
  return result;
}

uint64_t sub_1B91C4A14()
{
  v0 = OUTLINED_FUNCTION_27();
  v2 = *(v1(v0) + 56);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_18_1();

  return v7(v6);
}

uint64_t sub_1B91C4A9C()
{
  v0 = OUTLINED_FUNCTION_313();
  v2 = *(v1(v0) + 56);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_21_7(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_209();

  return v7(v6);
}

uint64_t Apple_Parsec_Siri_V2alpha_MovieResult.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_MovieResult(v0) + 56);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_V2alpha_LiveServiceResult.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_LiveServiceResult(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoImage.url.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoImage.url.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

void Apple_Parsec_Siri_V2alpha_VideoImage.type.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  OUTLINED_FUNCTION_4(a1);
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoImage.type.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 24) = *result;
  *(v1 + 32) = v2;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoImage.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoImage(v0) + 32);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoImage.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoImage(v0) + 32);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_21_7(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_209();

  return v6(v5);
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoImage.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoImage(v0) + 32);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B91C4E1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B91D55FC();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoImage.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 1;
  v2 = v1 + *(type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoImage(0) + 32);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t static Apple_Parsec_Siri_V2alpha_VideoImage.VideoImageType.allCases.modify()
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t sub_1B91C4F44@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_VideoImage.VideoImageType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B91C4FA4()
{
  v0 = OUTLINED_FUNCTION_27();
  v2 = *(v1(v0) + 20);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_18_1();

  return v7(v6);
}

uint64_t sub_1B91C502C()
{
  v0 = OUTLINED_FUNCTION_313();
  v2 = *(v1(v0) + 20);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_21_7(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_209();

  return v7(v6);
}

uint64_t Apple_Parsec_Siri_V2alpha_SportsEventResult.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_SportsEventResult(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_V2alpha_PersonResult.image.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PersonResult(v9);
  OUTLINED_FUNCTION_115(*(v10 + 32));
  sub_1B8F1B8B8();
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoImage(0);
  OUTLINED_FUNCTION_9_2();
  if (v12)
  {
    *a1 = 0;
    *(a1 + 8) = 0xE000000000000000;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 1;
    v13 = a1 + *(v11 + 32);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v12)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC7DD8, &qword_1B96A2848);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_34();
    OUTLINED_FUNCTION_182();
    return sub_1B91C6E08();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_PersonResult.image.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PersonResult(v1);
  sub_1B8D9207C(v0 + *(v2 + 32), &qword_1EBAC7DD8, &qword_1B96A2848);
  OUTLINED_FUNCTION_4_34();
  OUTLINED_FUNCTION_122_0();
  sub_1B91C6E08();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoImage(0);
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Siri_V2alpha_PersonResult.image.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *v2 = v3;
  *v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7DD8, &qword_1B96A2848);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoImage(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_PersonResult(0) + 32);
  *(v3 + 10) = v11;
  OUTLINED_FUNCTION_115(v11);
  sub_1B8F1B8B8();
  v12 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v12, v13, v7);
  if (v14)
  {
    *v10 = 0;
    v10[1] = 0xE000000000000000;
    v10[2] = 0;
    v10[3] = 0;
    *(v10 + 32) = 1;
    v15 = v10 + *(v7 + 32);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v16 = OUTLINED_FUNCTION_493();
    OUTLINED_FUNCTION_178(v16, v17, v7);
    if (!v14)
    {
      sub_1B8D9207C(v6, &qword_1EBAC7DD8, &qword_1B96A2848);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_34();
    OUTLINED_FUNCTION_461();
    sub_1B91C6E08();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B91C53E0()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67(v6);
  if (v7)
  {
    OUTLINED_FUNCTION_128();
    sub_1B91C6E5C();
    sub_1B8D9207C(v5 + v4, &qword_1EBAC7DD8, &qword_1B96A2848);
    OUTLINED_FUNCTION_4_34();
    sub_1B91C6E08();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v3);
    OUTLINED_FUNCTION_42_9();
    sub_1B91C6EB0();
  }

  else
  {
    sub_1B8D9207C(v5 + v4, &qword_1EBAC7DD8, &qword_1B96A2848);
    OUTLINED_FUNCTION_4_34();
    sub_1B91C6E08();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v3);
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v14);
}

uint64_t Apple_Parsec_Siri_V2alpha_PersonResult.hasImage.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PersonResult(v6);
  OUTLINED_FUNCTION_115(*(v7 + 32));
  sub_1B8F1B8B8();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoImage(0);
  v8 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v8, v9, v10);
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = OUTLINED_FUNCTION_182();
  sub_1B8D9207C(v13, v14, &qword_1B96A2848);
  return v12;
}

Swift::Void __swiftcall Apple_Parsec_Siri_V2alpha_PersonResult.clearImage()()
{
  v1 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PersonResult(0);
  sub_1B8D9207C(v0 + *(v1 + 32), &qword_1EBAC7DD8, &qword_1B96A2848);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoImage(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Apple_Parsec_Siri_V2alpha_PersonResult.tvAppCanonicalURL.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_PersonResult.tvAppCanonicalURL.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t sub_1B91C5678()
{
  v0 = OUTLINED_FUNCTION_27();
  v2 = *(v1(v0) + 28);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_18_1();

  return v7(v6);
}

uint64_t sub_1B91C5700()
{
  v0 = OUTLINED_FUNCTION_313();
  v2 = *(v1(v0) + 28);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_21_7(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_209();

  return v7(v6);
}

uint64_t Apple_Parsec_Siri_V2alpha_PersonResult.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_PersonResult(v0) + 28);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoDialogComponent.redactedFullPrint.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoDialogComponent.redactedFullPrint.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 88);

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoDialogComponent.redactedFullSpeak.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoDialogComponent.redactedFullSpeak.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 104);

  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoDialogComponent.redactedSupportingPrint.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoDialogComponent.redactedSupportingPrint.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 120);

  *(v1 + 112) = v2;
  *(v1 + 120) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoDialogComponent.redactedSupportingSpeak.getter()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoDialogComponent.redactedSupportingSpeak.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 136);

  *(v1 + 128) = v2;
  *(v1 + 136) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoDialogComponent.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoDialogComponent(v0) + 60);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoDialogComponent.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoDialogComponent(v0) + 60);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_21_7(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_209();

  return v6(v5);
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoDialogComponent.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoDialogComponent(v0) + 60);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B91C5B94()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC7BA8);
  __swift_project_value_buffer(v0, qword_1EBAC7BA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D040;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "VIDEO_VERB_UNKNOWN";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "VIDEO_VERB_PLAY";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "VIDEO_VERB_SEARCH";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "VIDEO_VERB_PLAY_LIVE_SERVICE";
  *(v14 + 1) = 28;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "VIDEO_VERB_PLAY_SPORTS_EVENT";
  *(v16 + 1) = 28;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "VIDEO_VERB_PLAY_THIRD_PARTY";
  *(v18 + 1) = 27;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "VIDEO_VERB_SEARCH_THIRD_PARTY";
  *(v20 + 1) = 29;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "VIDEO_VERB_ADD_WATCHLIST";
  *(v22 + 1) = 24;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 8;
  *v24 = "VIDEO_VERB_REMOVE_WATCHLIST";
  *(v24 + 1) = 27;
  v24[16] = 2;
  v9();
  v25 = (v5 + 9 * v2);
  v26 = v25 + v1[14];
  *v25 = 9;
  *v26 = "VIDEO_VERB_LIST_WATCHLIST";
  *(v26 + 1) = 25;
  v26[16] = 2;
  v9();
  v27 = (v5 + 10 * v2);
  v28 = v27 + v1[14];
  *v27 = 10;
  *v28 = "VIDEO_VERB_SERVER_DISAMBIGUATION";
  *(v28 + 1) = 32;
  v28[16] = 2;
  v9();
  v29 = (v5 + 11 * v2);
  v30 = v29 + v1[14];
  *v29 = 11;
  *v30 = "VIDEO_VERB_SHOWTIMES";
  *(v30 + 1) = 20;
  v30[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B91C5FE8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC7BC0);
  __swift_project_value_buffer(v0, qword_1EBAC7BC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "VIDEO_CONFIRMATION_VALUE_UNKNOWN";
  *(v6 + 8) = 32;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "VIDEO_CONFIRMATION_VALUE_YES";
  *(v10 + 8) = 28;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "VIDEO_CONFIRMATION_VALUE_NO";
  *(v12 + 1) = 27;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "VIDEO_CONFIRMATION_VALUE_CANCEL";
  *(v14 + 1) = 31;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B91C6250()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC7BD8);
  __swift_project_value_buffer(v0, qword_1EBAC7BD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "VIDEO_PAGINATION_VALUE_UNKNOWN";
  *(v6 + 8) = 30;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "VIDEO_PAGINATION_VALUE_NEXT_PAGE";
  *(v10 + 1) = 32;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "VIDEO_PAGINATION_VALUE_PREVIOUS_PAGE";
  *(v12 + 1) = 36;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B91C6494()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC7BF0);
  __swift_project_value_buffer(v0, qword_1EBAC7BF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B96511B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "understanding";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "results";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "target_device";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v13 = *MEMORY[0x1E69AADE8];
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "uts_search_params";
  *(v15 + 1) = 17;
  v15[16] = 2;
  v9();
  v16 = (v5 + 4 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "block_ugc_no_results_fallback";
  *(v17 + 1) = 29;
  v17[16] = 2;
  v9();
  v18 = (v5 + 5 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "video_dialog_component";
  *(v19 + 1) = 22;
  v19[16] = 2;
  v9();
  v20 = (v5 + 6 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "summarized_keyword_search";
  *(v21 + 1) = 25;
  v21[16] = 2;
  v9();
  v22 = (v5 + 7 * v2);
  v23 = v22 + v1[14];
  *v22 = 8;
  *v23 = "should_switch_profile";
  *(v23 + 1) = 21;
  v23[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B91C6840()
{
  v1 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__understanding;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoUnderstanding(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__results) = MEMORY[0x1E69E7CC0];
  v4 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__targetDevice;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoHomeAutomationDevice(0);
  __swift_storeEnumTagSinglePayload(v0 + v4, 1, 1, v5);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__utsSearchParams) = v3;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__blockUgcNoResultsFallback) = 0;
  v6 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__videoDialogComponent;
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoDialogComponent(0);
  __swift_storeEnumTagSinglePayload(v0 + v6, 1, 1, v7);
  v8 = (v0 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__summarizedKeywordSearch);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__shouldSwitchProfile) = 0;
  return v0;
}

uint64_t sub_1B91C6920(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7D98, &qword_1B96A2820);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v40 = v36 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7D90, &qword_1B96A2818);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v36[1] = v36 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7D88, &qword_1B96A2810);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__understanding;
  v12 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoUnderstanding(0);
  __swift_storeEnumTagSinglePayload(v1 + v11, 1, 1, v12);
  v13 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__results;
  v14 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__results) = MEMORY[0x1E69E7CC0];
  v15 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__targetDevice;
  v36[0] = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__targetDevice;
  v16 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoHomeAutomationDevice(0);
  __swift_storeEnumTagSinglePayload(v1 + v15, 1, 1, v16);
  v17 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__utsSearchParams;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__utsSearchParams) = v14;
  v37 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__blockUgcNoResultsFallback;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__blockUgcNoResultsFallback) = 0;
  v18 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__videoDialogComponent;
  v38 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__videoDialogComponent;
  v19 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoDialogComponent(0);
  __swift_storeEnumTagSinglePayload(v1 + v18, 1, 1, v19);
  v20 = (v1 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__summarizedKeywordSearch);
  *v20 = 0;
  v20[1] = 0xE000000000000000;
  v39 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__shouldSwitchProfile;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__shouldSwitchProfile) = 0;
  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  v21 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__results;
  swift_beginAccess();
  v22 = *(a1 + v21);
  swift_beginAccess();
  v23 = *(v1 + v13);
  *(v1 + v13) = v22;

  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  v24 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__utsSearchParams;
  swift_beginAccess();
  v25 = *(a1 + v24);
  swift_beginAccess();
  v26 = *(v1 + v17);
  *(v1 + v17) = v25;

  v27 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__blockUgcNoResultsFallback;
  swift_beginAccess();
  LOBYTE(v27) = *(a1 + v27);
  v28 = v37;
  swift_beginAccess();
  *(v1 + v28) = v27;
  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  v29 = (a1 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__summarizedKeywordSearch);
  swift_beginAccess();
  v31 = *v29;
  v30 = v29[1];
  swift_beginAccess();
  v32 = v20[1];
  *v20 = v31;
  v20[1] = v30;

  v33 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__shouldSwitchProfile;
  swift_beginAccess();
  LOBYTE(v33) = *(a1 + v33);

  v34 = v39;
  swift_beginAccess();
  *(v1 + v34) = v33;
  return v1;
}

uint64_t sub_1B91C6E08()
{
  OUTLINED_FUNCTION_468();
  v2 = v1(0);
  OUTLINED_FUNCTION_21_7(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_432();
  v6(v5);
  return v0;
}

uint64_t sub_1B91C6E5C()
{
  OUTLINED_FUNCTION_468();
  v2 = v1(0);
  OUTLINED_FUNCTION_21_7(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_432();
  v6(v5);
  return v0;
}

uint64_t sub_1B91C6EB0()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1B91C6F84()
{
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__understanding, &qword_1EBAC7D88, &qword_1B96A2810);
  v1 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__results);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__targetDevice, &qword_1EBAC7D90, &qword_1B96A2818);
  v2 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__utsSearchParams);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__videoDialogComponent, &qword_1EBAC7D98, &qword_1B96A2820);
  v3 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__summarizedKeywordSearch + 8);

  return v0;
}

uint64_t sub_1B91C70A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1B91C7230();
        break;
      case 2:
        sub_1B91C730C();
        break;
      case 3:
        sub_1B91C73E8();
        break;
      case 4:
        sub_1B91C74C4();
        break;
      case 5:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__blockUgcNoResultsFallback;
        goto LABEL_9;
      case 6:
        sub_1B91C75A0();
        break;
      case 7:
        sub_1B91CD7A8(a2, a1, a3, a4, &OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__summarizedKeywordSearch, MEMORY[0x1E69AACE0]);
        break;
      case 8:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__shouldSwitchProfile;
LABEL_9:
        sub_1B908EA40(v11, v12, v13, v14, v15);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B91C7230()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoUnderstanding(0);
  sub_1B8CD2B58(&qword_1EBAC7F80, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoUnderstanding);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B91C730C()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult(0);
  sub_1B8CD2B58(&qword_1EBAC7FC8, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B91C73E8()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoHomeAutomationDevice(0);
  sub_1B8CD2B58(&qword_1EBAC7F98, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoHomeAutomationDevice);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B91C74C4()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoUtsSearchParam(0);
  sub_1B8CD2B58(&qword_1EBAC7FB0, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoUtsSearchParam);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B91C75A0()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoDialogComponent(0);
  sub_1B8CD2B58(&qword_1EBAC8090, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoDialogComponent);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B91C76AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = a4;
  v42 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7D98, &qword_1B96A2820);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v36 = v35 - v7;
  v37 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoDialogComponent(0);
  v8 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37);
  v35[1] = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7D90, &qword_1B96A2818);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v39 = v35 - v12;
  v40 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoHomeAutomationDevice(0);
  v13 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40);
  v38 = v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7D88, &qword_1B96A2810);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = v35 - v17;
  v19 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoUnderstanding(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  swift_beginAccess();
  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v18, 1, v19) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBAC7D88, &qword_1B96A2810);
    v21 = v41;
  }

  else
  {
    sub_1B91C6E08();
    sub_1B8CD2B58(&qword_1EBAC7F80, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoUnderstanding);
    v22 = v41;
    sub_1B964C740();
    v21 = v22;
    result = sub_1B91C6EB0();
    if (v22)
    {
      return result;
    }
  }

  v24 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__results;
  swift_beginAccess();
  if (!*(*(a1 + v24) + 16) || (type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult(0), sub_1B8CD2B58(&qword_1EBAC7FC8, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult), , sub_1B964C730(), result = , !v21))
  {
    swift_beginAccess();
    v25 = v39;
    sub_1B8F1B8B8();
    if (__swift_getEnumTagSinglePayload(v25, 1, v40) == 1)
    {
      sub_1B8D9207C(v25, &qword_1EBAC7D90, &qword_1B96A2818);
    }

    else
    {
      sub_1B91C6E08();
      sub_1B8CD2B58(&qword_1EBAC7F98, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoHomeAutomationDevice);
      sub_1B964C740();
      result = sub_1B91C6EB0();
      if (v21)
      {
        return result;
      }
    }

    v26 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__utsSearchParams;
    swift_beginAccess();
    if (!*(*(a1 + v26) + 16) || (type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoUtsSearchParam(0), sub_1B8CD2B58(&qword_1EBAC7FB0, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoUtsSearchParam), , sub_1B964C730(), result = , !v21))
    {
      v27 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__blockUgcNoResultsFallback;
      swift_beginAccess();
      v28 = v37;
      if (*(a1 + v27) != 1 || (result = sub_1B964C670(), !v21))
      {
        swift_beginAccess();
        v29 = v36;
        sub_1B8F1B8B8();
        if (__swift_getEnumTagSinglePayload(v29, 1, v28) == 1)
        {
          sub_1B8D9207C(v29, &qword_1EBAC7D98, &qword_1B96A2820);
        }

        else
        {
          sub_1B91C6E08();
          sub_1B8CD2B58(&qword_1EBAC8090, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoDialogComponent);
          sub_1B964C740();
          result = sub_1B91C6EB0();
          if (v21)
          {
            return result;
          }
        }

        v30 = (a1 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__summarizedKeywordSearch);
        swift_beginAccess();
        v31 = *v30;
        v32 = v30[1];
        v33 = HIBYTE(v32) & 0xF;
        if ((v32 & 0x2000000000000000) == 0)
        {
          v33 = v31 & 0xFFFFFFFFFFFFLL;
        }

        if (!v33 || (, sub_1B964C700(), result = , !v21))
        {
          v34 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__shouldSwitchProfile;
          result = swift_beginAccess();
          if (*(a1 + v34) == 1)
          {
            return sub_1B964C670();
          }
        }
      }
    }
  }

  return result;
}

void sub_1B91C7ECC()
{
  OUTLINED_FUNCTION_284();
  v123 = v1;
  v3 = v2;
  v112 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoDialogComponent(0);
  v4 = OUTLINED_FUNCTION_59_1(v112);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_21();
  v109 = v7;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC8190, &qword_1B96A4910);
  OUTLINED_FUNCTION_59_1(v111);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  v113 = &v109 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7D98, &qword_1B96A2820);
  v13 = OUTLINED_FUNCTION_183(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_66();
  v110 = (v16 - v17);
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v18);
  v119 = &v109 - v19;
  v20 = OUTLINED_FUNCTION_201();
  v117 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoHomeAutomationDevice(v20);
  v21 = OUTLINED_FUNCTION_59_1(v117);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_21();
  v114 = v24;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC8198, &qword_1B96A4918);
  OUTLINED_FUNCTION_59_1(v116);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v27);
  v118 = &v109 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7D90, &qword_1B96A2818);
  v30 = OUTLINED_FUNCTION_183(v29);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_66();
  v115 = v33 - v34;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v35);
  v120 = &v109 - v36;
  v37 = OUTLINED_FUNCTION_201();
  v38 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoUnderstanding(v37);
  v39 = OUTLINED_FUNCTION_59_1(v38);
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_21();
  v121 = v42;
  v43 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC81A0, &qword_1B96A4920) - 8);
  v44 = *(*v43 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_159();
  v46 = OUTLINED_FUNCTION_303();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(v46, v47);
  v49 = OUTLINED_FUNCTION_183(v48);
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_66();
  v122 = v52 - v53;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v109 - v55;
  OUTLINED_FUNCTION_521();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_521();
  v57 = v43[14];
  sub_1B8F1B8B8();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_178(v0, 1, v38);
  if (v59)
  {

    sub_1B8D9207C(v56, &qword_1EBAC7D88, &qword_1B96A2810);
    OUTLINED_FUNCTION_178(v0 + v57, 1, v38);
    v58 = v3;
    if (v59)
    {
      sub_1B8D9207C(v0, &qword_1EBAC7D88, &qword_1B96A2810);
      goto LABEL_12;
    }

LABEL_9:
    v60 = &qword_1EBAC81A0;
    v61 = &qword_1B96A4920;
    v62 = v0;
LABEL_10:
    sub_1B8D9207C(v62, v60, v61);
LABEL_55:

    goto LABEL_56;
  }

  v58 = v3;
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_178(v0 + v57, 1, v38);
  if (v59)
  {

    sub_1B8D9207C(v56, &qword_1EBAC7D88, &qword_1B96A2810);
    sub_1B91C6EB0();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_20_8();
  sub_1B91C6E08();

  v63 = static Apple_Parsec_Siri_V2alpha_VideoUnderstanding.== infix(_:_:)();
  sub_1B91C6EB0();
  sub_1B8D9207C(v56, &qword_1EBAC7D88, &qword_1B96A2810);
  OUTLINED_FUNCTION_303();
  sub_1B91C6EB0();
  sub_1B8D9207C(v0, &qword_1EBAC7D88, &qword_1B96A2810);
  if ((v63 & 1) == 0)
  {
    goto LABEL_55;
  }

LABEL_12:
  v64 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__results;
  OUTLINED_FUNCTION_521();
  v65 = *(v58 + v64);
  v66 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__results;
  v67 = v123;
  OUTLINED_FUNCTION_521();
  v68 = *(v67 + v66);

  OUTLINED_FUNCTION_543();
  sub_1B8D8E0D8();
  LOBYTE(v67) = v69;

  if ((v67 & 1) == 0)
  {
    goto LABEL_55;
  }

  OUTLINED_FUNCTION_521();
  v70 = v120;
  OUTLINED_FUNCTION_668_0();
  OUTLINED_FUNCTION_521();
  v71 = *(v116 + 48);
  v72 = v118;
  OUTLINED_FUNCTION_668_0();
  OUTLINED_FUNCTION_668_0();
  v73 = v117;
  OUTLINED_FUNCTION_178(v72, 1, v117);
  if (v59)
  {
    sub_1B8D9207C(v70, &qword_1EBAC7D90, &qword_1B96A2818);
    OUTLINED_FUNCTION_178(v72 + v71, 1, v73);
    v74 = v119;
    if (v59)
    {
      sub_1B8D9207C(v72, &qword_1EBAC7D90, &qword_1B96A2818);
      goto LABEL_18;
    }

LABEL_28:
    v60 = &qword_1EBAC8198;
    v61 = &qword_1B96A4918;
LABEL_29:
    v62 = v72;
    goto LABEL_10;
  }

  v85 = v115;
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_178(v72 + v71, 1, v73);
  v74 = v119;
  if (v86)
  {
    sub_1B8D9207C(v70, &qword_1EBAC7D90, &qword_1B96A2818);
    sub_1B91C6EB0();
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_19_18();
  v87 = v114;
  sub_1B91C6E08();
  v88 = *v85 == *v87 && *(v85 + 8) == *(v87 + 8);
  if (!v88 && (sub_1B964C9F0() & 1) == 0 || (*(v85 + 16) == *(v87 + 16) ? (v89 = *(v85 + 24) == *(v87 + 24)) : (v89 = 0), !v89 && (sub_1B964C9F0() & 1) == 0 || (v90 = *(v87 + 40), !sub_1B8D92198(*(v85 + 32), *(v85 + 40), *(v87 + 32)))))
  {
    sub_1B8D9207C(v120, &qword_1EBAC7D90, &qword_1B96A2818);
    sub_1B91C6EB0();
    OUTLINED_FUNCTION_186();
    sub_1B91C6EB0();
    v62 = v72;
    v60 = &qword_1EBAC7D90;
    v61 = &qword_1B96A2818;
    goto LABEL_10;
  }

  v91 = *(v73 + 28);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_58();
  sub_1B8CD2B58(v92, v93);
  v94 = sub_1B964C850();
  sub_1B8D9207C(v120, &qword_1EBAC7D90, &qword_1B96A2818);
  sub_1B91C6EB0();
  OUTLINED_FUNCTION_236();
  sub_1B91C6EB0();
  sub_1B8D9207C(v72, &qword_1EBAC7D90, &qword_1B96A2818);
  if ((v94 & 1) == 0)
  {
    goto LABEL_55;
  }

LABEL_18:
  v75 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__utsSearchParams;
  OUTLINED_FUNCTION_521();
  v76 = *(v58 + v75);
  v77 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__utsSearchParams;
  v78 = v123;
  OUTLINED_FUNCTION_521();
  v79 = *(v78 + v77);

  OUTLINED_FUNCTION_543();
  sub_1B8D8E12C();
  LOBYTE(v78) = v80;

  if ((v78 & 1) == 0)
  {
    goto LABEL_55;
  }

  v81 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__blockUgcNoResultsFallback;
  OUTLINED_FUNCTION_521();
  LODWORD(v81) = *(v58 + v81);
  v82 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__blockUgcNoResultsFallback;
  v83 = v123;
  OUTLINED_FUNCTION_521();
  if (v81 != *(v83 + v82))
  {
    goto LABEL_55;
  }

  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_668_0();
  OUTLINED_FUNCTION_521();
  v84 = *(v111 + 48);
  v72 = v113;
  OUTLINED_FUNCTION_668_0();
  OUTLINED_FUNCTION_668_0();
  OUTLINED_FUNCTION_178(v72, 1, v112);
  if (v59)
  {
    sub_1B8D9207C(v74, &qword_1EBAC7D98, &qword_1B96A2820);
    OUTLINED_FUNCTION_57(v72 + v84);
    if (v59)
    {
      sub_1B8D9207C(v72, &qword_1EBAC7D98, &qword_1B96A2820);
      goto LABEL_49;
    }

    goto LABEL_47;
  }

  v95 = v110;
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_57(v72 + v84);
  if (v96)
  {
    sub_1B8D9207C(v74, &qword_1EBAC7D98, &qword_1B96A2820);
    sub_1B91C6EB0();
LABEL_47:
    v60 = &qword_1EBAC8190;
    v61 = &qword_1B96A4910;
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_21_15();
  v97 = v109;
  sub_1B91C6E08();
  v98 = static Apple_Parsec_Siri_V2alpha_VideoDialogComponent.== infix(_:_:)(v95, v97);
  sub_1B91C6EB0();
  sub_1B8D9207C(v74, &qword_1EBAC7D98, &qword_1B96A2820);
  sub_1B91C6EB0();
  sub_1B8D9207C(v72, &qword_1EBAC7D98, &qword_1B96A2820);
  if ((v98 & 1) == 0)
  {
    goto LABEL_55;
  }

LABEL_49:
  v99 = (v58 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__summarizedKeywordSearch);
  OUTLINED_FUNCTION_521();
  v100 = *v99;
  v101 = v99[1];
  v102 = (v123 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__summarizedKeywordSearch);
  OUTLINED_FUNCTION_521();
  if (v100 != *v102 || v101 != v102[1])
  {
    OUTLINED_FUNCTION_543();
    if ((sub_1B964C9F0() & 1) == 0)
    {
      goto LABEL_55;
    }
  }

  v104 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__shouldSwitchProfile;
  OUTLINED_FUNCTION_521();
  v105 = *(v58 + v104);

  v106 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__shouldSwitchProfile;
  v107 = v123;
  OUTLINED_FUNCTION_521();
  v108 = *(v107 + v106);

LABEL_56:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B91C8A94(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2B58(&qword_1EBAC8158, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoClientComponent);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B91C8B14(uint64_t a1)
{
  v2 = sub_1B8CD2B58(&qword_1EBAC7F68, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoClientComponent);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91C8B84()
{
  sub_1B8CD2B58(&qword_1EBAC7F68, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoClientComponent);

  return sub_1B964C5D0();
}

uint64_t sub_1B91C8C1C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC7C10);
  __swift_project_value_buffer(v0, qword_1EBAC7C10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B9650810;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "verb";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "title";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "selected_item_identifier";
  *(v12 + 1) = 24;
  v12[16] = 2;
  v13 = *MEMORY[0x1E69AADE8];
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "app_bundle_identifier";
  *(v15 + 1) = 21;
  v15[16] = 2;
  v9();
  v16 = (v5 + 4 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "confirmation_value";
  *(v17 + 1) = 18;
  v17[16] = 2;
  v9();
  v18 = (v5 + 5 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "requested_provider_ids";
  *(v19 + 1) = 22;
  v19[16] = 2;
  v9();
  v20 = (v5 + 6 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "pagination_value";
  *(v21 + 1) = 16;
  v21[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoUnderstanding.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_9();
        sub_1B91C9014();
        break;
      case 2:
      case 3:
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 5:
        OUTLINED_FUNCTION_9();
        sub_1B91C907C();
        break;
      case 6:
        OUTLINED_FUNCTION_12();
        sub_1B964C4D0();
        break;
      case 7:
        OUTLINED_FUNCTION_9();
        sub_1B91C90E4();
        break;
      default:
        continue;
    }
  }
}