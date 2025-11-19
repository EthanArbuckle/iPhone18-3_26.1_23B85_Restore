BOOL OUTLINED_FUNCTION_80_7(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_85_8()
{
  v2 = *(v0 - 264);

  return __swift_mutable_project_boxed_opaque_existential_1(v0 - 288, v2);
}

uint64_t OUTLINED_FUNCTION_86_8()
{
  v2 = *(v0 + 72);

  return __swift_mutable_project_boxed_opaque_existential_1(v0 + 48, v2);
}

uint64_t OUTLINED_FUNCTION_87_7(uint64_t a1)
{
  *(v1 + 16) = a1;
  v4 = *(v2 - 104);

  return __swift_mutable_project_boxed_opaque_existential_1(v2 - 128, v4);
}

uint64_t OUTLINED_FUNCTION_88_7()
{
  v2 = *(v0 + 272);

  return __swift_mutable_project_boxed_opaque_existential_1(v0 + 248, v2);
}

void OUTLINED_FUNCTION_89_9(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_90_8()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

uint64_t OUTLINED_FUNCTION_91_6()
{

  return sub_268B349A4();
}

uint64_t OUTLINED_FUNCTION_92_8()
{

  return sub_268B36F44();
}

uint64_t OUTLINED_FUNCTION_93_9(unint64_t *a1)
{

  return sub_2688F4354(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_94_7()
{
  v2 = *v0;

  return type metadata accessor for AnalyticsServiceImpl();
}

uint64_t OUTLINED_FUNCTION_95_7(__int128 *a1)
{
  sub_2688E6514(a1, v2 + 16);
  __swift_destroy_boxed_opaque_existential_0Tm((v4 - 240));
  v5 = *(v3 + 8);
  return v1;
}

Swift::String_optional __swiftcall UsoTask_pause_common_MediaItem.verb()()
{
  v0 = 0x6573756170;
  v1 = 0xE500000000000000;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t UsoTask_pause_common_MediaItem.referencedSetting()()
{
  result = sub_268B36304();
  if (result)
  {
    v1 = result;
    if (sub_2688EFD0C(result))
    {
      sub_2688EFD10(0, (v1 & 0xC000000000000001) == 0, v1);
      if ((v1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D625BD0](0, v1);
      }

      else
      {
        v2 = *(v1 + 32);
      }

      sub_268B35B44();

      return v3;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_268B0A208(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4498](a1, WitnessTable);
}

uint64_t sub_268B0A25C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4478](a1, WitnessTable);
}

uint64_t sub_268B0A2B0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A0](a1, WitnessTable);
}

uint64_t sub_268B0A304(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D0](a1, WitnessTable);
}

uint64_t sub_268B0A358(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C0](a1, WitnessTable);
}

uint64_t sub_268B0A3AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C8](a1, WitnessTable);
}

uint64_t sub_268B0A400()
{
  swift_getWitnessTable();

  return sub_268B373B4();
}

uint64_t sub_268B0A454(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D8](a1, WitnessTable);
}

void sub_268B0A4B8()
{
  swift_getWitnessTable();

  JUMPOUT(0x26D624DF0);
}

uint64_t sub_268B0A50C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A8](a1, WitnessTable);
}

uint64_t sub_268B0A570(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4488](a1, WitnessTable);
}

uint64_t sub_268B0A5D4()
{
  swift_getWitnessTable();

  return sub_268B37364();
}

uint64_t sub_268B0A638(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44B0](a1, WitnessTable);
}

uint64_t sub_268B0A69C(uint64_t a1)
{
  result = sub_268B0A748(&qword_2802A8CD0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268B0A748(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_268B360D4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

Swift::String_optional __swiftcall UsoTask_noVerb_common_UserEntity.verb()()
{
  v0 = 0;
  v1 = 0;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t sub_268B0A7A4(uint64_t a1)
{
  result = sub_268B0A850(&qword_2802A8CE8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268B0A850(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_268B361A4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_268B0A894(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4498](a1, WitnessTable);
}

uint64_t sub_268B0A8E8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4478](a1, WitnessTable);
}

uint64_t sub_268B0A93C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A0](a1, WitnessTable);
}

uint64_t sub_268B0A990(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D0](a1, WitnessTable);
}

uint64_t sub_268B0A9E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C0](a1, WitnessTable);
}

uint64_t sub_268B0AA38(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C8](a1, WitnessTable);
}

uint64_t sub_268B0AA8C()
{
  swift_getWitnessTable();

  return sub_268B373B4();
}

uint64_t sub_268B0AAE0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D8](a1, WitnessTable);
}

void sub_268B0AB44()
{
  swift_getWitnessTable();

  JUMPOUT(0x26D624DF0);
}

uint64_t sub_268B0AB98(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A8](a1, WitnessTable);
}

uint64_t sub_268B0ABFC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4488](a1, WitnessTable);
}

uint64_t sub_268B0AC60()
{
  swift_getWitnessTable();

  return sub_268B37364();
}

uint64_t sub_268B0ACC4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44B0](a1, WitnessTable);
}

uint64_t sub_268B0AD2C@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5790, &unk_268B3E810);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_268B43BA0;
  *(inited + 32) = 0x6573616572636564;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = 0x6573616572636E69;
  *(inited + 56) = 0xE800000000000000;
  *(inited + 64) = 0xD000000000000017;
  *(inited + 72) = 0x8000000268B56230;
  v3 = UsoTask_setNumber_common_Setting.verb()();
  if (v3.value._object)
  {
    MEMORY[0x28223BE20](v3.value._countAndFlagsBits);
    v4 = sub_268ACD018();
    swift_setDeallocating();
    sub_268ACE684();

    if (v4 && sub_268B36524())
    {
      sub_2689BC4EC(a1);
    }
  }

  else
  {
    swift_setDeallocating();
    sub_268ACE684();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6000, &unk_268B41120);
  v6 = OUTLINED_FUNCTION_14_7();
  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

Swift::String_optional __swiftcall UsoTask_setNumber_common_Setting.verb()()
{
  if (sub_268B0AF38(v0) == 3)
  {
    sub_268B36534();
    if (v7 && (sub_268962A68(), v2 = v1, v3 = v1, , v3 != 24))
    {
      v4 = sub_26893E3F8(v2);
    }

    else
    {
      v4 = 0;
      v5 = 0;
    }
  }

  else
  {
    v5 = 0xE300000000000000;
    v4 = 7628147;
  }

  result.value._object = v5;
  result.value._countAndFlagsBits = v4;
  return result;
}

uint64_t sub_268B0AF38(uint64_t a1)
{
  v1 = sub_268A9EA48(a1);
  if (v1 == 6)
  {
    return 3;
  }

  return sub_2689ABD4C(v1);
}

uint64_t sub_268B0AFA0@<X0>(uint64_t a1@<X8>)
{
  if (sub_268B36524())
  {
    sub_2689BB2D8(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5D00, &unk_268B51080);
    v3 = OUTLINED_FUNCTION_14_7();

    return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }
}

uint64_t sub_268B0B01C()
{
  if (!sub_268B36524())
  {
    return 7;
  }

  v0 = sub_2689BC188();

  return v0;
}

uint64_t sub_268B0B068@<X0>(_BYTE *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5FB0, &unk_268B3DF00);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - v4;
  sub_268B0AD2C(&v9 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6000, &unk_268B41120);
  v7 = __swift_getEnumTagSinglePayload(v5, 1, v6) == 1;
  result = sub_268B0B7C8(v5);
  *a1 = 2 * v7;
  return result;
}

uint64_t sub_268B0B1D8(uint64_t a1)
{
  result = sub_268B0B2A8(&qword_2802A8D00);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268B0B2A8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_268B361D4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_268B0B334(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4498](a1, WitnessTable);
}

uint64_t sub_268B0B388(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4478](a1, WitnessTable);
}

uint64_t sub_268B0B3DC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A0](a1, WitnessTable);
}

uint64_t sub_268B0B430(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D0](a1, WitnessTable);
}

uint64_t sub_268B0B484(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C0](a1, WitnessTable);
}

uint64_t sub_268B0B4D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C8](a1, WitnessTable);
}

uint64_t sub_268B0B52C()
{
  swift_getWitnessTable();

  return sub_268B373B4();
}

uint64_t sub_268B0B580(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D8](a1, WitnessTable);
}

void sub_268B0B5E4()
{
  swift_getWitnessTable();

  JUMPOUT(0x26D624DF0);
}

uint64_t sub_268B0B638(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A8](a1, WitnessTable);
}

uint64_t sub_268B0B69C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4488](a1, WitnessTable);
}

uint64_t sub_268B0B700()
{
  swift_getWitnessTable();

  return sub_268B37364();
}

uint64_t sub_268B0B764(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44B0](a1, WitnessTable);
}

uint64_t sub_268B0B7C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5FB0, &unk_268B3DF00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_268B0B834(_BYTE *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_268B37A54();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v55 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v55 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5D28, &unk_268B3D420);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v55 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5FB0, &unk_268B3DF00);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v55 - v23;
  sub_268B0C0C8(a1);
  sub_268B0C404(a1);
  sub_268B0C7C8(a1);
  switch(*a1)
  {
    case 0x10:
      v58 = v11;
      v25 = type metadata accessor for MediaPlayerIntent();
      sub_26894D5AC(&a1[*(v25 + 52)], v24, &qword_2802A5FB0, &unk_268B3DF00);
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6000, &unk_268B41120);
      if (__swift_getEnumTagSinglePayload(v24, 1, v26) == 1)
      {
        sub_26894DD8C(v24, &qword_2802A5FB0, &unk_268B3DF00);
      }

      else
      {
        sub_268B36654();
        v34 = v64;
        v35 = v65;
        OUTLINED_FUNCTION_70(v26);
        (*(v36 + 8))(v24, v26);
        if ((v35 & 1) == 0)
        {
          [v3 setSpeedMagnitude_];
        }
      }

      [v3 setPlaybackSpeedType_];
      sub_26894D5AC(a2, v20, &qword_2802A5D28, &unk_268B3D420);
      v37 = sub_268B35494();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v20, 1, v37);
      v11 = v58;
      if (EnumTagSinglePayload == 1)
      {
        sub_26894DD8C(v20, &qword_2802A5D28, &unk_268B3D420);
        goto LABEL_7;
      }

      v39 = sub_268A40454();
      OUTLINED_FUNCTION_70(v37);
      (*(v40 + 8))(v20, v37);
      if (!v39)
      {
        goto LABEL_7;
      }

      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v41 = __swift_project_value_buffer(v6, qword_2802CDA10);
      v42 = v7[2];
      v57 = v41;
      v56 = v42;
      (v42)(v16);
      v43 = sub_268B37A34();
      v44 = sub_268B37ED4();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_2688BB000, v43, v44, "SetPlaybackSpeedIntent#amend Handling USO/Pommes parse in MediaPlayerIntent", v45, 2u);
        MEMORY[0x26D6266E0](v45, -1, -1);
      }

      v46 = v7[1];
      v46(v16, v6);

      sub_268B35DC4();

      sub_26894D5AC(v68, v59, &byte_2802A6450, &byte_268B3BE10);
      if (!v60)
      {
        sub_26894DD8C(v68, &byte_2802A6450, &byte_268B3BE10);

        sub_26894DD8C(v59, &byte_2802A6450, &byte_268B3BE10);
        v61 = 0u;
        v62 = 0u;
        v63 = 0;
LABEL_31:
        sub_26894DD8C(&v61, &qword_2802A6100, &qword_268B3E7F8);
        goto LABEL_32;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6108, &qword_268B3E800);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v63 = 0;
        v61 = 0u;
        v62 = 0u;
        goto LABEL_30;
      }

      if (!*(&v62 + 1))
      {
LABEL_30:
        sub_26894DD8C(v68, &byte_2802A6450, &byte_268B3BE10);

        goto LABEL_31;
      }

      sub_2688E6514(&v61, &v64);
      v47 = v66;
      v48 = v67;
      __swift_project_boxed_opaque_existential_1(&v64, v66);
      if (sub_268A5D7B0(v47, v48))
      {
        [v3 setRequestedPlaybackSpeedUnit_];
        v56(v14, v57, v6);
        v49 = v3;
        v50 = sub_268B37A34();
        v51 = sub_268B37ED4();
        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          v57 = v50;
          v53 = v49;
          v54 = v52;
          *v52 = 134217984;
          *(v52 + 4) = [v53 requestedPlaybackSpeedUnit];

          v50 = v57;
          _os_log_impl(&dword_2688BB000, v57, v51, "SetPlaybackSpeedIntent#amend Amended requestedPlaybackSpeedUnit as %ld", v54, 0xCu);
          MEMORY[0x26D6266E0](v54, -1, -1);
        }

        else
        {
        }

        v46(v14, v6);
        sub_26894DD8C(v68, &byte_2802A6450, &byte_268B3BE10);
      }

      else
      {
        sub_26894DD8C(v68, &byte_2802A6450, &byte_268B3BE10);
      }

      __swift_destroy_boxed_opaque_existential_0Tm(&v64);
LABEL_32:
      v11 = v58;
LABEL_7:
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v27 = __swift_project_value_buffer(v6, qword_2802CDA10);
      (v7[2])(v11, v27, v6);
      v28 = v3;
      v29 = sub_268B37A34();
      v30 = sub_268B37ED4();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 134218240;
        *(v31 + 4) = [v28 playbackSpeedType];

        *(v31 + 12) = 2048;
        [v28 speedMagnitude];
        *(v31 + 14) = v32;
        _os_log_impl(&dword_2688BB000, v29, v30, "Amending intent with playbackSpeed: %ld and magnitude: %f", v31, 0x16u);
        MEMORY[0x26D6266E0](v31, -1, -1);
      }

      else
      {

        v29 = v28;
      }

      return (v7[1])(v11, v6);
    case 0x13:
    case 0x15:
      [v3 setPlaybackSpeedType_];
      goto LABEL_7;
    case 0x14:
    case 0x16:
      [v3 setPlaybackSpeedType_];
      goto LABEL_7;
    default:
      [v3 setPlaybackSpeedType_];
      goto LABEL_7;
  }
}

uint64_t sub_268B0C0C8(uint64_t a1)
{
  v2 = sub_268B37A54();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for MediaPlayerIntent();
  v25 = sub_2689A9870(&qword_2802A56B0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);
  sub_268946C8C(a1, boxed_opaque_existential_1);
  sub_2689A9870(&qword_2802A58E0);
  if (sub_268B37834())
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v8 = __swift_project_value_buffer(v2, qword_2802CDA10);
    (*(v3 + 16))(v6, v8, v2);
    v9 = sub_268B37A34();
    v10 = sub_268B37F04();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2688BB000, v9, v10, "Found home automation nodes, attempting to map them to SiriKit intent", v11, 2u);
      MEMORY[0x26D6266E0](v11, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_268B3BBA0;
    v13 = v24;
    v14 = __swift_project_boxed_opaque_existential_1(v23, v24);
    v15 = *(*(v13 - 8) + 64);
    MEMORY[0x28223BE20](v14);
    v17 = &v23[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v18 + 16))(v17);
    *(v12 + 32) = sub_268A91478(v17);
    v19 = off_28795A0D8;
    v20 = type metadata accessor for SetPlaybackSpeedIntent();
    v19(v12, v20, &off_28795A0B8);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v23);
}

void sub_268B0C404(uint64_t a1)
{
  v2 = sub_268B37A54();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = var50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MediaPlayerIntent();
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v11 = var50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_268946C8C(a1, v11);
  v12 = &v11[*(v8 + 100)];
  v14 = *v12;
  v13 = v12[1];

  sub_2688C2F6C(v11);
  if (v13)
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v2, qword_2802CDA10);
    (*(v3 + 16))(v6, v15, v2);
    v16 = sub_268B37A34();
    v17 = sub_268B37F04();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2688BB000, v16, v17, "Found destination device id in the intent. parsing the routes and setting disambiguated to true", v18, 2u);
      MEMORY[0x26D6266E0](v18, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    v19 = sub_268B18100();
    if (v19)
    {
      v20 = v19;
      if (sub_2688EFD0C(v19))
      {
        sub_2688EFD10(0, (v20 & 0xC000000000000001) == 0, v20);
        if ((v20 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x26D625BD0](0, v20);
        }

        else
        {
          v21 = *(v20 + 32);
        }

        v22 = v21;

        v23 = sub_268B37BC4();

        [v22 setRouteId_];

        sub_2688C063C();
        v24 = sub_268B38054();
        [v22 setDisambiguated_];

        goto LABEL_13;
      }
    }

    type metadata accessor for Device();
    LOBYTE(v31) = 0;
    sub_268983F14(v14, v13, 0, 0, 0, 0, 0, 0, 0, v31, var50[0], var50[1], var50[2], var50[3], var50[4], var50[5], var50[6], var50[7], var50[8], var50[9], var50[10]);
    v26 = v25;
    sub_2688C063C();
    v27 = sub_268B38054();
    [v26 setDisambiguated_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_268B3BBA0;
    *(v28 + 32) = v26;
    v29 = off_28795A0D8;
    v30 = type metadata accessor for SetPlaybackSpeedIntent();
    v24 = v26;
    v29(v28, v30, &off_28795A0B8);
LABEL_13:
  }
}

void sub_268B0C7C8(uint64_t a1)
{
  v2 = sub_268B37A54();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MediaPlayerIntent();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v23[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_268946C8C(a1, v10);
  sub_2689A9870(&qword_2802A58E0);
  v11 = sub_268B37854();
  sub_2688C2F6C(v10);
  v12 = *(v11 + 16);
  if (v12)
  {
    v25 = MEMORY[0x277D84F90];
    sub_268B38234();
    type metadata accessor for DeviceQuery();
    v13 = v11 + 32;
    do
    {
      sub_26890C900(v13, v24);
      sub_26890C900(v24, v23);
      sub_268AC88F0(v23);
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
      sub_268B38214();
      v14 = *(v25 + 16);
      sub_268B38244();
      sub_268B38254();
      sub_268B38224();
      v13 += 40;
      --v12;
    }

    while (v12);

    v15 = v25;
    v16 = off_28795BC78;
    v17 = type metadata accessor for SetPlaybackSpeedIntent();
    v16(v15, v17, &off_28795BC68);
  }

  else
  {

    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v18 = __swift_project_value_buffer(v2, qword_2802CDA10);
    (*(v3 + 16))(v6, v18, v2);
    v19 = sub_268B37A34();
    v20 = sub_268B37ED4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2688BB000, v19, v20, "Home Automation entities are empty, skip adding to intent.", v21, 2u);
      MEMORY[0x26D6266E0](v21, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_268B0CAE0()
{
  if (qword_2802A5100 != -1)
  {
    swift_once();
  }
}

uint64_t sub_268B0CB3C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8D60, qword_268B510B0);
  OUTLINED_FUNCTION_245(v0);
  OUTLINED_FUNCTION_1_57();
  result = sub_268B35784();
  qword_2802A8D18 = result;
  return result;
}

uint64_t sub_268B0CB94()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8D50, &qword_268B510A0);
  OUTLINED_FUNCTION_245(v0);
  OUTLINED_FUNCTION_1_57();
  result = sub_268B35784();
  qword_2802A8D20 = result;
  return result;
}

uint64_t sub_268B0CBF4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6A88, &unk_268B414B0);
  OUTLINED_FUNCTION_245(v0);
  OUTLINED_FUNCTION_1_57();
  result = sub_268B35784();
  qword_2802A8D28 = result;
  return result;
}

uint64_t sub_268B0CC54()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8D58, &qword_268B510A8);
  OUTLINED_FUNCTION_245(v0);
  result = sub_268B35784();
  qword_2802A8D30 = result;
  return result;
}

uint64_t sub_268B0CCB4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6A88, &unk_268B414B0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_268B35784();
  qword_2802A8D38 = result;
  return result;
}

uint64_t sub_268B0CD1C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7170, &qword_268B442C0);
  OUTLINED_FUNCTION_245(v0);
  result = sub_268B35784();
  qword_2802A8D40 = result;
  return result;
}

uint64_t sub_268B0CD90(uint64_t a1, uint64_t a2)
{
  v4 = sub_268B366C4();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_268B0CDEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_268B366C4();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t type metadata accessor for MediaNLv3Intent()
{
  result = qword_2802A8D68;
  if (!qword_2802A8D68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_268B0CE84()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A71D8, &unk_268B48EF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_268B51090;
  if (qword_2802A50D0 != -1)
  {
    swift_once();
  }

  v1 = qword_2802A8D18;
  *(v0 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8D60, qword_268B510B0);
  *(v0 + 64) = sub_268A19C14(&qword_2802A8D98, &qword_2802A8D60, qword_268B510B0);
  *(v0 + 32) = v1;
  v2 = qword_2802A50D8;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = qword_2802A8D20;
  *(v0 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8D50, &qword_268B510A0);
  *(v0 + 104) = sub_268A19C14(&qword_2802A8DA0, &qword_2802A8D50, &qword_268B510A0);
  *(v0 + 72) = v3;
  v4 = qword_2802A50E0;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = qword_2802A8D28;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6A88, &unk_268B414B0);
  *(v0 + 136) = v6;
  v7 = sub_268A19C14(&qword_2802A71F0, &qword_2802A6A88, &unk_268B414B0);
  *(v0 + 144) = v7;
  *(v0 + 112) = v5;
  v8 = qword_2802A50E8;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = qword_2802A8D30;
  *(v0 + 176) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8D58, &qword_268B510A8);
  *(v0 + 184) = sub_268A19C14(&qword_2802A8DA8, &qword_2802A8D58, &qword_268B510A8);
  *(v0 + 152) = v9;
  v10 = qword_2802A50F8;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = qword_2802A8D40;
  *(v0 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7170, &qword_268B442C0);
  *(v0 + 224) = sub_268A19C14(&qword_2802A71E8, &qword_2802A7170, &qword_268B442C0);
  *(v0 + 192) = v11;
  v12 = qword_2802A50F0;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = qword_2802A8D38;
  *(v0 + 256) = v6;
  *(v0 + 264) = v7;
  *(v0 + 232) = v13;
  v14 = qword_2802A4D88;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = qword_2802A6990;
  *(v0 + 296) = v6;
  *(v0 + 304) = v7;
  *(v0 + 272) = v15;
  v16 = qword_2802A4D90;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = qword_2802A6998;
  *(v0 + 336) = v6;
  *(v0 + 344) = v7;
  *(v0 + 312) = v17;
  v18 = qword_2802A4D98;

  if (v18 != -1)
  {
    swift_once();
  }

  v19 = qword_2802A69A0;
  *(v0 + 376) = v6;
  *(v0 + 384) = v7;
  *(v0 + 352) = v19;
  v20 = qword_2802A4DA0;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = qword_2802A69A8;
  *(v0 + 416) = v6;
  *(v0 + 424) = v7;
  *(v0 + 392) = v21;
  v22 = qword_2802A4DA8;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = qword_2802A69B0;
  *(v0 + 456) = v6;
  *(v0 + 464) = v7;
  *(v0 + 432) = v23;
  v24 = qword_2802A4DD0;

  if (v24 != -1)
  {
    swift_once();
  }

  v25 = qword_2802A69D8;
  *(v0 + 496) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6A98, &unk_268B414C0);
  *(v0 + 504) = sub_268A19C14(&qword_2802A7200, &qword_2802A6A98, &unk_268B414C0);
  *(v0 + 472) = v25;
  v26 = qword_2802A4DD8;

  if (v26 != -1)
  {
    swift_once();
  }

  v27 = qword_2802A69E0;
  *(v0 + 536) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6A90, &qword_268B4B540);
  *(v0 + 544) = sub_268A19C14(&qword_2802A7208, &qword_2802A6A90, &qword_268B4B540);
  *(v0 + 512) = v27;
  v28 = sub_268B35774();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();

  result = sub_268B35764();
  qword_2802A8D48 = result;
  return result;
}

uint64_t sub_268B0D424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v3 = sub_268B37A54();
  v4 = OUTLINED_FUNCTION_1(v3);
  v68 = v5;
  v69 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_0();
  v71 = v9 - v8;
  v10 = sub_268B35494();
  v11 = OUTLINED_FUNCTION_1(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v11);
  v65 = &v61[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x28223BE20](v16);
  v67 = &v61[-v19];
  MEMORY[0x28223BE20](v18);
  v21 = &v61[-v20];
  v22 = sub_268B366C4();
  v23 = OUTLINED_FUNCTION_1(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_1_0();
  v30 = (v29 - v28);
  v70 = type metadata accessor for MediaNLv3Intent();
  v31 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_1_0();
  v34 = v33 - v32;
  v66 = *(v13 + 16);
  v66(v21, a1, v10);
  v35 = (*(v13 + 88))(v21, v10);
  v36 = *(v13 + 8);
  if (v35 == *MEMORY[0x277D5C128])
  {
    v36(a1, v10);
    (*(v13 + 96))(v21, v10);
    v37 = *(v25 + 32);
    v37(v30, v21, v22);
    v37(v34, v30, v22);
    v38 = v72;
    sub_268B0DC14(v34, v72);
    v39 = 0;
    v40 = v38;
  }

  else
  {
    v64 = *(v13 + 8);
    v36(v21, v10);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v41 = v69;
    v42 = __swift_project_value_buffer(v69, qword_2802CDA10);
    v43 = v68;
    (*(v68 + 16))(v71, v42, v41);
    v44 = v67;
    v45 = v66;
    v66(v67, a1, v10);
    v46 = sub_268B37A34();
    v47 = sub_268B37F04();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v63 = a1;
      v49 = v48;
      v50 = swift_slowAlloc();
      v73 = v50;
      *v49 = 136315138;
      v62 = v47;
      v45(v65, v44, v10);
      v51 = sub_268B37C24();
      v53 = v52;
      v54 = v44;
      v55 = v64;
      v64(v54, v10);
      v56 = sub_26892CDB8(v51, v53, &v73);
      v57 = v43;
      v58 = v56;

      *(v49 + 4) = v58;
      _os_log_impl(&dword_2688BB000, v46, v62, "Unsupported parse while creating MediaNLv3Intent: %s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v50);
      MEMORY[0x26D6266E0](v50, -1, -1);
      MEMORY[0x26D6266E0](v49, -1, -1);

      v55(v63, v10);
      (*(v57 + 8))(v71, v69);
    }

    else
    {

      v59 = v64;
      v64(a1, v10);
      v59(v44, v10);
      (*(v43 + 8))(v71, v41);
    }

    v39 = 1;
    v40 = v72;
  }

  return __swift_storeEnumTagSinglePayload(v40, v39, 1, v70);
}

uint64_t sub_268B0D970(uint64_t a1)
{
  v2 = sub_268B0DBD0(&qword_2802A8D80);

  return MEMORY[0x2821C0C78](a1, v2);
}

uint64_t sub_268B0D9D8(uint64_t a1)
{
  v2 = sub_268B0DBD0(&qword_2802A8D80);

  return MEMORY[0x2821C0C68](a1, v2);
}

uint64_t sub_268B0DA30(uint64_t a1)
{
  v2 = sub_268B0DBD0(&qword_2802A8D80);

  return MEMORY[0x2821C0C70](a1, v2);
}

uint64_t sub_268B0DABC(uint64_t a1)
{
  result = sub_268B0DBD0(&qword_2802A8D78);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268B0DB00(uint64_t a1)
{
  *(a1 + 8) = sub_268B0DBD0(&qword_2802A8D80);
  result = sub_268B0DBD0(&qword_2802A8D88);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_268B0DBD0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MediaNLv3Intent();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_268B0DC14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaNLv3Intent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_268B0DD60(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_268B0DDA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_268B0DEEC()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v102 = sub_2688EFD0C(v0);
  v2 = 0;
  v104 = v1 & 0xFFFFFFFFFFFFFF8;
  v106 = v1 & 0xC000000000000001;
  v100 = v1 + 32;
  v3 = MEMORY[0x277D84F90];
  v95 = v1;
  while (v2 != v102)
  {
    if (v106)
    {
      v4 = MEMORY[0x26D625BD0](v2, v1);
    }

    else
    {
      if (v2 >= *(v104 + 16))
      {
        goto LABEL_130;
      }

      v4 = *(v100 + 8 * v2);
    }

    v5 = v4;
    v6 = __OFADD__(v2++, 1);
    if (v6)
    {
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
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
      return;
    }

    sub_2689CBC4C();
    v8 = v7;

    if (v8 >> 62)
    {
      v9 = sub_268B382A4();
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 = v3 >> 62;
    if (v3 >> 62)
    {
      v11 = sub_268B382A4();
    }

    else
    {
      v11 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = v11 + v9;
    if (__OFADD__(v11, v9))
    {
      goto LABEL_131;
    }

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v10)
      {
LABEL_19:
        sub_268B382A4();
      }

      else
      {
        v13 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_18:
        v14 = *(v13 + 16);
      }

      v3 = sub_268B381F4();
      v13 = v3 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_21;
    }

    if (v10)
    {
      goto LABEL_19;
    }

    v13 = v3 & 0xFFFFFFFFFFFFFF8;
    if (v12 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_18;
    }

LABEL_21:
    v15 = *(v13 + 16);
    v16 = (*(v13 + 24) >> 1) - v15;
    v17 = v13 + 8 * v15;
    if (v8 >> 62)
    {
      v19 = OUTLINED_FUNCTION_14_25();
      if (!v19)
      {
        goto LABEL_35;
      }

      v20 = v19;
      v98 = sub_268B382A4();
      if (v16 < v98)
      {
        goto LABEL_145;
      }

      if (v20 < 1)
      {
        goto LABEL_146;
      }

      v109 = v3;
      sub_268AA8960();
      for (i = 0; i != v20; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5B38, &unk_268B51420);
        v22 = sub_26892D47C(v112, i, v8);
        v24 = *v23;
        v22(v112, 0);
        *(v17 + 32 + 8 * i) = v24;
      }

      v3 = v109;
      v1 = v95;
      v18 = v98;
LABEL_31:

      if (v18 < v9)
      {
        goto LABEL_132;
      }

      if (v18 > 0)
      {
        v25 = *(v13 + 16);
        v6 = __OFADD__(v25, v18);
        v26 = v25 + v18;
        if (v6)
        {
          goto LABEL_142;
        }

        *(v13 + 16) = v26;
      }
    }

    else
    {
      v18 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v18)
      {
        if (v16 < v18)
        {
          goto LABEL_144;
        }

        type metadata accessor for Device();
        OUTLINED_FUNCTION_87();
        goto LABEL_31;
      }

LABEL_35:

      if (v9 > 0)
      {
        goto LABEL_132;
      }
    }
  }

  v27 = 0;
  v112[0] = MEMORY[0x277D84F90];
  while (v102 != v27)
  {
    if (v106)
    {
      v28 = MEMORY[0x26D625BD0](v27, v1);
    }

    else
    {
      if (v27 >= *(v104 + 16))
      {
        goto LABEL_134;
      }

      v28 = *(v1 + 8 * v27 + 32);
    }

    v29 = v28;
    if (__OFADD__(v27, 1))
    {
      goto LABEL_133;
    }

    v30 = [v28 excludeGroup];
    sub_2688C063C();
    v31 = sub_268B38054();
    v32 = v31;
    if (v30)
    {
      v33 = sub_268B38074();

      if (v33)
      {
        sub_268B38214();
        v34 = *(v112[0] + 16);
        sub_268B38244();
        sub_268B38254();
        sub_268B38224();
        goto LABEL_51;
      }
    }

    else
    {
    }

LABEL_51:
    ++v27;
  }

  v35 = v112[0];
  v36 = 0;
  v101 = v112[0] & 0xC000000000000001;
  v103 = sub_2688EFD0C(v112[0]);
  v37 = MEMORY[0x277D84F90];
  v105 = v35;
  v99 = v35 + 32;
  v110 = v3;
  while (v36 != v103)
  {
    if (v101)
    {
      v38 = MEMORY[0x26D625BD0](v36, v105);
    }

    else
    {
      if (v36 >= *(v105 + 16))
      {
        goto LABEL_136;
      }

      v38 = *(v99 + 8 * v36);
    }

    v39 = v38;
    v6 = __OFADD__(v36++, 1);
    if (v6)
    {
      goto LABEL_135;
    }

    v40 = sub_2689CB550();

    if (v40 >> 62)
    {
      v41 = sub_268B382A4();
    }

    else
    {
      v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v42 = v37 >> 62;
    if (v37 >> 62)
    {
      v43 = sub_268B382A4();
    }

    else
    {
      v43 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v44 = v43 + v41;
    if (__OFADD__(v43, v41))
    {
      goto LABEL_137;
    }

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v42)
      {
LABEL_71:
        sub_268B382A4();
      }

      else
      {
        v45 = v37 & 0xFFFFFFFFFFFFFF8;
LABEL_70:
        v46 = *(v45 + 16);
      }

      v37 = sub_268B381F4();
      v45 = v37 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_73;
    }

    if (v42)
    {
      goto LABEL_71;
    }

    v45 = v37 & 0xFFFFFFFFFFFFFF8;
    if (v44 > *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_70;
    }

LABEL_73:
    v47 = *(v45 + 16);
    v48 = (*(v45 + 24) >> 1) - v47;
    v49 = v45 + 8 * v47;
    v107 = v45;
    if (v40 >> 62)
    {
      v51 = OUTLINED_FUNCTION_14_25();
      if (!v51)
      {
        goto LABEL_87;
      }

      v52 = v51;
      v97 = sub_268B382A4();
      if (v48 < v97)
      {
        goto LABEL_148;
      }

      if (v52 < 1)
      {
        goto LABEL_149;
      }

      v96 = v37;
      v53 = v49 + 32;
      sub_268AA8960();
      for (j = 0; j != v52; ++j)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5B38, &unk_268B51420);
        v55 = sub_26892D47C(v112, j, v40);
        v57 = *v56;
        v55(v112, 0);
        *(v53 + 8 * j) = v57;
      }

      v3 = v110;
      v37 = v96;
      v50 = v97;
LABEL_83:

      if (v50 < v41)
      {
        goto LABEL_138;
      }

      if (v50 > 0)
      {
        v58 = *(v107 + 16);
        v6 = __OFADD__(v58, v50);
        v59 = v58 + v50;
        if (v6)
        {
          goto LABEL_143;
        }

        *(v107 + 16) = v59;
      }
    }

    else
    {
      v50 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v50)
      {
        if (v48 < v50)
        {
          goto LABEL_147;
        }

        type metadata accessor for Device();
        OUTLINED_FUNCTION_87();
        goto LABEL_83;
      }

LABEL_87:

      if (v41 > 0)
      {
        goto LABEL_138;
      }
    }
  }

  v60 = sub_2688EFD0C(v37);
  v61 = 0;
  v62 = v37;
  v63 = v37 & 0xC000000000000001;
  v64 = v62;
  v65 = v62 & 0xFFFFFFFFFFFFFF8;
  v108 = MEMORY[0x277D84F90];
  while (v60 != v61)
  {
    if (v63)
    {
      v66 = MEMORY[0x26D625BD0](v61, v64);
    }

    else
    {
      if (v61 >= *(v65 + 16))
      {
        goto LABEL_140;
      }

      v66 = *(v64 + 8 * v61 + 32);
    }

    v67 = v66;
    v68 = v61 + 1;
    if (__OFADD__(v61, 1))
    {
      goto LABEL_139;
    }

    v69 = [v66 context];
    if (v69 && (v70 = sub_268B0F784(v69), v71))
    {
      v74 = v70;
      v76 = v71;
LABEL_104:

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v79 = *(v108 + 16);
        sub_2689876A4();
        v108 = v80;
      }

      v77 = *(v108 + 16);
      if (v77 >= *(v108 + 24) >> 1)
      {
        sub_2689876A4();
        v108 = v81;
      }

      *(v108 + 16) = v77 + 1;
      v78 = v108 + 16 * v77;
      *(v78 + 32) = v74;
      *(v78 + 40) = v76;
      v61 = v68;
      v3 = v110;
    }

    else
    {
      v72 = [v67 routeId];
      if (v72)
      {
        v73 = v72;
        v74 = sub_268B37BF4();
        v76 = v75;

        goto LABEL_104;
      }

      ++v61;
      v3 = v110;
    }
  }

  v111 = MEMORY[0x277D84F90];
  v82 = sub_2688EFD0C(v3);
  v83 = 0;
  v84 = v3 & 0xC000000000000001;
  while (v82 != v83)
  {
    sub_2688EFD10(v83, v84 == 0, v3);
    if (v84)
    {
      v85 = MEMORY[0x26D625BD0](v83, v3);
    }

    else
    {
      v85 = *(v3 + 8 * v83 + 32);
    }

    v86 = v85;
    if (__OFADD__(v83, 1))
    {
      goto LABEL_141;
    }

    v87 = [v85 context];
    if (v87 && (v88 = sub_268B0F784(v87), v89))
    {
      v90 = v89;
    }

    else
    {
      v91 = sub_26892D418(v86);
      v90 = v92;

      if (v90)
      {
        v88 = v91;
      }

      else
      {
        v88 = 0;
      }

      if (!v90)
      {
        v90 = 0xE000000000000000;
      }
    }

    v112[0] = v88;
    v112[1] = v90;
    MEMORY[0x28223BE20](v88);
    v93 = sub_268ACD018();

    if (v93)
    {
    }

    else
    {
      sub_268B38214();
      v94 = *(v111 + 16);
      sub_268B38244();
      sub_268B38254();
      sub_268B38224();
    }

    v3 = v110;
    ++v83;
  }

  OUTLINED_FUNCTION_23();
}

uint64_t sub_268B0E848()
{
  v0 = sub_268B37A54();
  v1 = OUTLINED_FUNCTION_1(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_0();
  v9 = v8 - v7;
  if (qword_2802A4F30 != -1)
  {
    v6 = OUTLINED_FUNCTION_0_0();
  }

  OUTLINED_FUNCTION_61(v6, qword_2802CDA10);
  v10 = OUTLINED_FUNCTION_6_44(v3);
  v11(v10);
  v12 = sub_268B37A34();
  v13 = sub_268B37ED4();
  if (os_log_type_enabled(v12, v13))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_89_9(&dword_2688BB000, v14, v15, "Default metricsIsWHAIntent: nil");
    OUTLINED_FUNCTION_12();
  }

  (*(v3 + 8))(v9, v0);
  return 0;
}

uint64_t sub_268B0E98C()
{
  v0 = sub_268B37A54();
  v1 = OUTLINED_FUNCTION_1(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_0();
  v9 = v8 - v7;
  if (qword_2802A4F30 != -1)
  {
    v6 = OUTLINED_FUNCTION_0_0();
  }

  OUTLINED_FUNCTION_61(v6, qword_2802CDA10);
  v10 = OUTLINED_FUNCTION_6_44(v3);
  v11(v10);
  v12 = sub_268B37A34();
  v13 = sub_268B37ED4();
  if (os_log_type_enabled(v12, v13))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_89_9(&dword_2688BB000, v14, v15, "Default metricsMediaType: .unknown");
    OUTLINED_FUNCTION_12();
  }

  (*(v3 + 8))(v9, v0);
  return 0;
}

uint64_t sub_268B0EAD0()
{
  v3 = OUTLINED_FUNCTION_9_30();
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_39();
  v9 = sub_268AA0C74(v2, v1);
  v10 = v9;
  if (qword_2802A4F30 != -1)
  {
    v9 = OUTLINED_FUNCTION_0_0();
  }

  OUTLINED_FUNCTION_61(v9, qword_2802CDA10);
  (*(v6 + 16))(v0);
  v11 = sub_268B37A34();
  v12 = sub_268B37ED4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67109120;
    *(v13 + 4) = v10 & 1;
    _os_log_impl(&dword_2688BB000, v11, v12, "DeviceQueryableIntent metricsIsWHAIntent: %{BOOL}d", v13, 8u);
    OUTLINED_FUNCTION_12();
  }

  (*(v6 + 8))(v0, v3);
  return v10 & 1;
}

void sub_268B0EC4C()
{
  OUTLINED_FUNCTION_26();
  v0 = OUTLINED_FUNCTION_9_30();
  v1 = OUTLINED_FUNCTION_1(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_39();
  v4 = OUTLINED_FUNCTION_13_25();
  v6 = v5(v4);
  if (v6)
  {
    sub_2688EFD0C(v6);
  }

  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  __swift_project_value_buffer(v0, qword_2802CDA10);
  v7 = OUTLINED_FUNCTION_8_34();
  v8(v7);
  v9 = sub_268B37A34();
  v10 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_160_0(v10))
  {
    OUTLINED_FUNCTION_20_23();
    v11 = OUTLINED_FUNCTION_19_21();
    v21 = v11;
    *v0 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5878, &unk_268B3BE90);
    v12 = sub_268B37C24();
    v14 = sub_26892CDB8(v12, v13, &v21);

    *(v0 + 4) = v14;
    OUTLINED_FUNCTION_309(&dword_2688BB000, v15, v16, "DeviceSelectableIntent metricsEligibleDeviceCount: %s");
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12_8();

    v17 = OUTLINED_FUNCTION_11_35();
    v19 = v20;
  }

  else
  {

    v17 = OUTLINED_FUNCTION_11_35();
    v19 = v0;
  }

  v18(v17, v19);
  OUTLINED_FUNCTION_12_29();
  OUTLINED_FUNCTION_23();
}

void sub_268B0EE14()
{
  OUTLINED_FUNCTION_26();
  v0 = sub_268B37A54();
  v1 = OUTLINED_FUNCTION_1(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_39();
  v4 = OUTLINED_FUNCTION_13_25();
  v6 = v5(v4);
  if (v6)
  {
  }

  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  __swift_project_value_buffer(v0, qword_2802CDA10);
  v7 = OUTLINED_FUNCTION_8_34();
  v8(v7);
  v9 = sub_268B37A34();
  v10 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_160_0(v10))
  {
    OUTLINED_FUNCTION_20_23();
    v11 = OUTLINED_FUNCTION_19_21();
    v21 = v11;
    *v0 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5878, &unk_268B3BE90);
    v12 = sub_268B37C24();
    v14 = sub_26892CDB8(v12, v13, &v21);

    *(v0 + 4) = v14;
    OUTLINED_FUNCTION_309(&dword_2688BB000, v15, v16, "SingleDeviceSelectableIntent metricsEligibleDeviceCount: %s");
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12_8();

    v17 = OUTLINED_FUNCTION_11_35();
    v19 = v20;
  }

  else
  {

    v17 = OUTLINED_FUNCTION_11_35();
    v19 = v0;
  }

  v18(v17, v19);
  OUTLINED_FUNCTION_12_29();
  OUTLINED_FUNCTION_23();
}

void sub_268B0EFDC()
{
  OUTLINED_FUNCTION_26();
  v4 = OUTLINED_FUNCTION_9_30();
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_39();
  v10 = (*(v1 + 8))(v2, v1);
  v11 = v10;
  if (qword_2802A4F30 != -1)
  {
    v10 = OUTLINED_FUNCTION_0_0();
  }

  OUTLINED_FUNCTION_61(v10, qword_2802CDA10);
  (*(v7 + 16))(v0);
  v12 = sub_268B37A34();
  v13 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_160_0(v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v19 = v15;
    *v14 = 136315138;
    v16 = NLMediaType.description.getter(v11);
    v18 = sub_26892CDB8(v16, v17, &v19);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_2688BB000, v12, v3, "MediaTypeProvidingIntent metricsMediaType: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
    OUTLINED_FUNCTION_12_8();
    OUTLINED_FUNCTION_12();
  }

  (*(v7 + 8))(v0, v4);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268B0F1E8(const char *a1)
{
  v3 = v1;
  v4 = sub_268B37A54();
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v12 = v11 - v10;
  v13 = sub_268B0F724(v3);
  v14 = v13;
  if (v13)
  {
    sub_268B0DEEC();
    v16 = v15;

    v14 = sub_2688EFD0C(v16);
  }

  if (qword_2802A4F30 != -1)
  {
    v13 = OUTLINED_FUNCTION_0_0();
  }

  OUTLINED_FUNCTION_61(v13, qword_2802CDA10);
  v17 = OUTLINED_FUNCTION_6_44(v7);
  v18(v17);
  v19 = sub_268B37A34();
  v20 = sub_268B37ED4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 134217984;
    *(v21 + 4) = v14;
    _os_log_impl(&dword_2688BB000, v19, v20, a1, v21, 0xCu);
    OUTLINED_FUNCTION_12_8();
  }

  (*(v7 + 8))(v12, v4);
  return v14;
}

uint64_t sub_268B0F724(void *a1)
{
  v1 = [a1 destinations];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for DeviceGroup();
  v3 = sub_268B37CF4();

  return v3;
}

uint64_t sub_268B0F784(void *a1)
{
  v2 = [a1 routeId];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_268B37BF4();

  return v3;
}

uint64_t OUTLINED_FUNCTION_9_30()
{

  return sub_268B37A54();
}

uint64_t OUTLINED_FUNCTION_14_25()
{

  return sub_268B382A4();
}

uint64_t OUTLINED_FUNCTION_19_21()
{
  *(v1 - 112) = v0;

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_20_23()
{

  return swift_slowAlloc();
}

Swift::String_optional __swiftcall UsoTask_request_common_MediaItem.verb()()
{
  v0 = 0x74736575716572;
  v1 = 0xE700000000000000;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t sub_268B0F940(uint64_t a1)
{
  result = sub_268B0FA04(&qword_2802A8DB0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268B0FA04(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_268B361B4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_268B0FA84(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4498](a1, WitnessTable);
}

uint64_t sub_268B0FAD8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4478](a1, WitnessTable);
}

uint64_t sub_268B0FB2C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A0](a1, WitnessTable);
}

uint64_t sub_268B0FB80(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D0](a1, WitnessTable);
}

uint64_t sub_268B0FBD4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C0](a1, WitnessTable);
}

uint64_t sub_268B0FC28(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C8](a1, WitnessTable);
}

uint64_t sub_268B0FC7C()
{
  swift_getWitnessTable();

  return sub_268B373B4();
}

uint64_t sub_268B0FCD0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D8](a1, WitnessTable);
}

void sub_268B0FD34()
{
  swift_getWitnessTable();

  JUMPOUT(0x26D624DF0);
}

uint64_t sub_268B0FD88(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A8](a1, WitnessTable);
}

uint64_t sub_268B0FDEC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4488](a1, WitnessTable);
}

uint64_t sub_268B0FE50()
{
  swift_getWitnessTable();

  return sub_268B37364();
}

uint64_t sub_268B0FEB4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44B0](a1, WitnessTable);
}

uint64_t MultiUserConnectionProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = [objc_allocWithZone(MEMORY[0x277CEF318]) init];
  return v0;
}

uint64_t sub_268B0FF9C(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = v2;

  sub_268B10844(sub_268B1047C, v5);
}

uint64_t sub_268B10028(uint64_t a1, unint64_t a2, void *a3, uint64_t (*a4)(void, void, void *), uint64_t a5, uint64_t a6)
{
  v12 = sub_268B37A54();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v39 - v18;
  if (a3 || !a2)
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v30 = __swift_project_value_buffer(v12, qword_2802CDA10);
    (*(v13 + 16))(v17, v30, v12);
    v31 = a3;
    v32 = sub_268B37A34();
    v33 = sub_268B37EE4();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138412290;
      if (a3)
      {
        v36 = a3;
        v37 = _swift_stdlib_bridgeErrorToNSError();
        v38 = v37;
      }

      else
      {
        v37 = 0;
        v38 = 0;
      }

      *(v34 + 4) = v37;
      *v35 = v38;
      _os_log_impl(&dword_2688BB000, v32, v33, "MultiUserConnectionProvider#getRecognizedSharedUserID Error retrieving homeUserID %@", v34, 0xCu);
      sub_26898BED0(v35);
      MEMORY[0x26D6266E0](v35, -1, -1);
      MEMORY[0x26D6266E0](v34, -1, -1);
    }

    (*(v13 + 8))(v17, v12);
    return a4(0, 0, a3);
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v40 = a4;
    v20 = __swift_project_value_buffer(v12, qword_2802CDA10);
    (*(v13 + 16))(v19, v20, v12);

    v21 = sub_268B37A34();
    v22 = sub_268B37ED4();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v39[1] = a6;
      v24 = a5;
      v25 = v23;
      v26 = swift_slowAlloc();
      v41 = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_26892CDB8(a1, a2, &v41);
      _os_log_impl(&dword_2688BB000, v21, v22, "MultiUserConnectionProvider#getRecognizedSharedUserID homeUserID: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v26);
      MEMORY[0x26D6266E0](v26, -1, -1);
      v27 = v25;
      a5 = v24;
      MEMORY[0x26D6266E0](v27, -1, -1);
    }

    (*(v13 + 8))(v19, v12);
    v28 = swift_allocObject();
    *(v28 + 16) = v40;
    *(v28 + 24) = a5;

    sub_268B109D4(a1, a2, sub_268B10BF0, v28);
  }
}

uint64_t sub_268B1043C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_268B10488(uint64_t a1, unint64_t a2, void *a3, uint64_t (*a4)(void, void, void), uint64_t a5)
{
  v10 = sub_268B37A54();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v39 - v16;
  if (a3 || !a2)
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v29 = __swift_project_value_buffer(v10, qword_2802CDA10);
    (*(v11 + 16))(v15, v29, v10);
    v30 = a3;
    v31 = sub_268B37A34();
    v32 = sub_268B37EE4();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138412290;
      if (a3)
      {
        v35 = a3;
        v36 = _swift_stdlib_bridgeErrorToNSError();
        v37 = v36;
      }

      else
      {
        v36 = 0;
        v37 = 0;
      }

      *(v33 + 4) = v36;
      *v34 = v37;
      _os_log_impl(&dword_2688BB000, v31, v32, "MultiUserConnectionProvider#getRecognizedSharedUserID Error retrieving sharedUserID %@", v33, 0xCu);
      sub_26898BED0(v34);
      MEMORY[0x26D6266E0](v34, -1, -1);
      MEMORY[0x26D6266E0](v33, -1, -1);
    }

    (*(v11 + 8))(v15, v10);
    v26 = 0;
    v27 = 0;
    v28 = a3;
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v18 = __swift_project_value_buffer(v10, qword_2802CDA10);
    (*(v11 + 16))(v17, v18, v10);

    v19 = sub_268B37A34();
    v20 = sub_268B37ED4();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v39 = a5;
      v40 = v22;
      v23 = a4;
      v24 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_26892CDB8(a1, a2, &v40);
      _os_log_impl(&dword_2688BB000, v19, v20, "MultiUserConnectionProvider#getRecognizedSharedUserID SharedUserID: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
      v25 = v24;
      a4 = v23;
      MEMORY[0x26D6266E0](v25, -1, -1);
      MEMORY[0x26D6266E0](v21, -1, -1);
    }

    (*(v11 + 8))(v17, v10);
    v26 = a1;
    v27 = a2;
    v28 = 0;
  }

  return a4(v26, v27, v28);
}

void sub_268B10844(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  OUTLINED_FUNCTION_0_54();
  OUTLINED_FUNCTION_1_58();
  v9[2] = v7;
  v9[3] = &block_descriptor_14;
  v8 = _Block_copy(v9);

  [v5 getHomeUserIdOfRecognizedUserWithCompletion_];
  _Block_release(v8);
}

uint64_t sub_268B108FC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_268B10924(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = sub_268B37BF4();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a3;
  v5(v6, v8, a3);
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_268B109D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = sub_268B37BC4();
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  OUTLINED_FUNCTION_0_54();
  OUTLINED_FUNCTION_1_58();
  v12[2] = v10;
  v12[3] = &block_descriptor_9;
  v11 = _Block_copy(v12);

  [v7 getSharedUserIdForHomeUserId:v8 completion:v11];
  _Block_release(v11);
}

uint64_t MultiUserConnectionProvider.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_268B10BB8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

Swift::String_optional __swiftcall UsoTask_seekTo_common_MediaItem.verb()()
{
  v0 = 1801807219;
  v1 = 0xE400000000000000;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t sub_268B10C5C()
{
  v0 = sub_268B35E04();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8E10, &qword_268B51748);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8E18, qword_268B51750);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v24 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v24 - v17;
  if (sub_268B365E4())
  {
    sub_268B35DF4();
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v18, 1, 1, v0);
  }

  (*(v1 + 104))(v16, *MEMORY[0x277D5E8E8], v0);
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v0);
  v19 = *(v5 + 48);
  sub_268B11664(v18, v8);
  sub_268B11664(v16, &v8[v19]);
  OUTLINED_FUNCTION_124(v8);
  if (v21)
  {
    OUTLINED_FUNCTION_0_55(v16);
    OUTLINED_FUNCTION_0_55(v18);
    OUTLINED_FUNCTION_124(&v8[v19]);
    if (v21)
    {
      sub_2688EF38C(v8, &qword_2802A8E18, qword_268B51750);
      return 1;
    }

    goto LABEL_12;
  }

  sub_268B11664(v8, v13);
  OUTLINED_FUNCTION_124(&v8[v19]);
  if (v21)
  {
    OUTLINED_FUNCTION_0_55(v16);
    OUTLINED_FUNCTION_0_55(v18);
    (*(v1 + 8))(v13, v0);
LABEL_12:
    sub_2688EF38C(v8, &qword_2802A8E10, &qword_268B51748);
    return 2;
  }

  (*(v1 + 32))(v4, &v8[v19], v0);
  sub_268B116D4(&qword_2802A8E20, MEMORY[0x277D5E8F0]);
  v22 = sub_268B37BB4();
  v23 = *(v1 + 8);
  v23(v4, v0);
  sub_2688EF38C(v16, &qword_2802A8E18, qword_268B51750);
  sub_2688EF38C(v18, &qword_2802A8E18, qword_268B51750);
  v23(v13, v0);
  sub_2688EF38C(v8, &qword_2802A8E18, qword_268B51750);
  if (v22)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_268B110B4(uint64_t a1)
{
  result = sub_268B116D4(&qword_2802A8DF8, MEMORY[0x277D5EFC8]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268B111D0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4498](a1, WitnessTable);
}

uint64_t sub_268B11224(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4478](a1, WitnessTable);
}

uint64_t sub_268B11278(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A0](a1, WitnessTable);
}

uint64_t sub_268B112CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D0](a1, WitnessTable);
}

uint64_t sub_268B11320(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C0](a1, WitnessTable);
}

uint64_t sub_268B11374(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C8](a1, WitnessTable);
}

uint64_t sub_268B113C8()
{
  swift_getWitnessTable();

  return sub_268B373B4();
}

uint64_t sub_268B1141C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D8](a1, WitnessTable);
}

void sub_268B11480()
{
  swift_getWitnessTable();

  JUMPOUT(0x26D624DF0);
}

uint64_t sub_268B114D4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A8](a1, WitnessTable);
}

uint64_t sub_268B11538(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4488](a1, WitnessTable);
}

uint64_t sub_268B1159C()
{
  swift_getWitnessTable();

  return sub_268B37364();
}

uint64_t sub_268B11600(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44B0](a1, WitnessTable);
}

uint64_t sub_268B11664(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8E18, qword_268B51750);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_268B116D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_0_55(uint64_t a1)
{

  return sub_2688EF38C(a1, v1, v2);
}

Swift::String_optional __swiftcall UsoTask_summarise_common_MediaItem.verb()()
{
  v0 = 0x736972616D6D7573;
  v1 = 0xE900000000000065;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t UsoTask_summarise_common_MediaItem.shouldHandle(requestContext:)@<X0>(_BYTE *a1@<X8>)
{
  v2 = sub_268B37A54();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_268B36314();
  if (v15[1])
  {

    sub_268B357C4();

    v7 = sub_268B366E4();

    if (*(v7 + 16))
    {
      sub_268A75754();
      v9 = v8;

      if (v9)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }
  }

  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v2, qword_2802CDA10);
  (*(v3 + 16))(v6, v11, v2);
  v12 = sub_268B37A34();
  v13 = sub_268B37ED4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_2688BB000, v12, v13, "UsoTask_summarise_common_MediaItem#shouldHandle not a lyrics request. Not handling in controls", v14, 2u);
    MEMORY[0x26D6266E0](v14, -1, -1);
  }

  result = (*(v3 + 8))(v6, v2);
LABEL_11:
  *a1 = 3;
  return result;
}

uint64_t sub_268B11A14(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4498](a1, WitnessTable);
}

uint64_t sub_268B11A68(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4478](a1, WitnessTable);
}

uint64_t sub_268B11ABC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A0](a1, WitnessTable);
}

uint64_t sub_268B11B10(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D0](a1, WitnessTable);
}

uint64_t sub_268B11B64(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C0](a1, WitnessTable);
}

uint64_t sub_268B11BB8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C8](a1, WitnessTable);
}

uint64_t sub_268B11C0C()
{
  swift_getWitnessTable();

  return sub_268B373B4();
}

uint64_t sub_268B11C60(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D8](a1, WitnessTable);
}

void sub_268B11CC4()
{
  swift_getWitnessTable();

  JUMPOUT(0x26D624DF0);
}

uint64_t sub_268B11D18(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A8](a1, WitnessTable);
}

uint64_t sub_268B11D7C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4488](a1, WitnessTable);
}

uint64_t sub_268B11DE0()
{
  swift_getWitnessTable();

  return sub_268B37364();
}

uint64_t sub_268B11E44(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44B0](a1, WitnessTable);
}

uint64_t sub_268B11EA8(uint64_t a1)
{
  result = sub_268B11F54(&qword_2802A8E28);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268B11F54(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_268B363C4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

Swift::String_optional __swiftcall UsoTask_stop_uso_NoEntity.verb()()
{
  v0 = 1886352499;
  v1 = 0xE400000000000000;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t UsoTask_stop_uso_NoEntity.referencedSetting()()
{
  result = sub_268B36304();
  if (result)
  {
    v1 = result;
    if (sub_2688EFD0C(result))
    {
      sub_2688EFD10(0, (v1 & 0xC000000000000001) == 0, v1);
      if ((v1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D625BD0](0, v1);
      }

      else
      {
        v2 = *(v1 + 32);
      }

      sub_268B35B44();

      return v3;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t UsoTask_stop_uso_NoEntity.shouldHandle(requestContext:)@<X0>(char *a1@<X8>)
{
  v2 = sub_268B37A54();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_268A4C8D4();
  if (result)
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v8 = __swift_project_value_buffer(v2, qword_2802CDA10);
    (*(v3 + 16))(v6, v8, v2);
    v9 = sub_268B37A34();
    v10 = sub_268B37EE4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2688BB000, v9, v10, "UsoTask_stop_uso_NoEntity#shouldHandle Sleep timers request. Not handling in controls", v11, 2u);
      MEMORY[0x26D6266E0](v11, -1, -1);
    }

    result = (*(v3 + 8))(v6, v2);
    v12 = 3;
  }

  else
  {
    v12 = 0;
  }

  *a1 = v12;
  return result;
}

uint64_t sub_268B12294(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4498](a1, WitnessTable);
}

uint64_t sub_268B122E8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4478](a1, WitnessTable);
}

uint64_t sub_268B1233C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A0](a1, WitnessTable);
}

uint64_t sub_268B12390(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D0](a1, WitnessTable);
}

uint64_t sub_268B123E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C0](a1, WitnessTable);
}

uint64_t sub_268B12438(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C8](a1, WitnessTable);
}

uint64_t sub_268B1248C()
{
  swift_getWitnessTable();

  return sub_268B373B4();
}

uint64_t sub_268B124E0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D8](a1, WitnessTable);
}

void sub_268B12544()
{
  swift_getWitnessTable();

  JUMPOUT(0x26D624DF0);
}

uint64_t sub_268B12598(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A8](a1, WitnessTable);
}

uint64_t sub_268B125FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4488](a1, WitnessTable);
}

uint64_t sub_268B12660()
{
  swift_getWitnessTable();

  return sub_268B37364();
}

uint64_t sub_268B126C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44B0](a1, WitnessTable);
}

uint64_t sub_268B12728(uint64_t a1)
{
  result = sub_268B127D4(&qword_2802A8E40);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268B127D4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_268B35E74();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id SeekTimeIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void SeekTimeIntentHandler.init()()
{
  OUTLINED_FUNCTION_26();
  v0 = sub_268B36C54();
  v33 = sub_268B36C44();
  sub_268B37204();
  v32 = sub_268B371F4();
  sub_268B354A4();
  sub_2689209D0(v40);
  sub_268AD33CC(v39);
  sub_268B36754();
  v31 = sub_268B36734();
  v1 = sub_268B36C44();
  v2 = type metadata accessor for MultiUserConnectionProvider();
  v3 = swift_allocObject();
  v4 = objc_allocWithZone(MEMORY[0x277CEF318]);

  *(v3 + 16) = [v4 init];
  __swift_mutable_project_boxed_opaque_existential_1(v40, v40[3]);
  OUTLINED_FUNCTION_3_8();
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  v10 = (v9 - v8);
  (*(v11 + 16))(v9 - v8);
  v12 = *v10;
  v37 = v0;
  v38 = MEMORY[0x277D5F680];
  *&v36 = v1;
  v13 = type metadata accessor for AnalyticsServiceLogger();
  v35[4] = &off_28795F5E0;
  v35[3] = v13;
  v35[0] = v12;
  v34[4] = &off_287960608;
  v34[3] = v2;
  v34[0] = v3;
  type metadata accessor for AnalyticsServiceImpl();
  v14 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v35, v13);
  OUTLINED_FUNCTION_3_8();
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_0();
  v20 = (v19 - v18);
  (*(v21 + 16))(v19 - v18);
  __swift_mutable_project_boxed_opaque_existential_1(v34, v2);
  OUTLINED_FUNCTION_3_8();
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_1_0();
  v27 = (v26 - v25);
  (*(v28 + 16))(v26 - v25);
  v29 = *v20;
  v30 = *v27;
  v14[5] = v13;
  v14[6] = &off_28795F5E0;
  v14[2] = v29;
  v14[21] = v2;
  v14[22] = &off_287960608;
  v14[18] = v30;
  sub_2688E6514(v39, (v14 + 7));
  v14[12] = v31;
  sub_2688E6514(&v36, (v14 + 13));
  __swift_destroy_boxed_opaque_existential_0Tm(v34);
  __swift_destroy_boxed_opaque_existential_0Tm(v35);

  __swift_destroy_boxed_opaque_existential_0Tm(v40);
  sub_268B34C64();
  sub_268B165D4(v33, v32, &v41, v14, v40);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  OUTLINED_FUNCTION_23();
}

void sub_268B12C2C()
{
  OUTLINED_FUNCTION_26();
  v24 = v1;
  v25 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_268B37A24();
  v7 = OUTLINED_FUNCTION_1(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v7);
  v13 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - v14;
  v16 = swift_allocObject();
  *(v16 + 16) = v5;
  *(v16 + 24) = v3;
  v17 = qword_2802A5028;

  if (v17 != -1)
  {
    swift_once();
  }

  qword_2802CDB28;
  sub_268B37A14();
  OUTLINED_FUNCTION_15_7();
  v18(v13, v15, v6);
  v19 = (*(v9 + 80) + 33) & ~*(v9 + 80);
  v20 = v19 + v11;
  v21 = (v19 + v11) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = "handleSeekTimeMedia";
  *(v22 + 24) = 19;
  *(v22 + 32) = 2;
  (*(v9 + 32))(v22 + v19, v13, v6);
  *(v22 + v20) = 1;
  v23 = v22 + v21;
  *(v23 + 8) = sub_268958724;
  *(v23 + 16) = v16;

  sub_268B38004();
  sub_268B37A04();

  sub_268B12E84(v24, v25, sub_268958A64, v22);

  (*(v9 + 8))(v15, v6);
  OUTLINED_FUNCTION_23();
}

void sub_268B12E84(char *a1, char *a2, void (*a3)(char **), uint64_t a4)
{
  v95 = a2;
  v7 = sub_268B37A54();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x28223BE20](v7);
  v94 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v92 = &v88 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v93 = &v88 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v88 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v96 = &v88 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v88 - v21;
  v23 = swift_allocObject();
  v97 = a3;
  *(v23 + 16) = a3;
  *(v23 + 24) = a4;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_268958D98;
  *(v24 + 24) = v23;
  v98 = v24;
  v25 = qword_2802A4F30;
  v100 = a4;

  v99 = v23;

  if (v25 != -1)
  {
    swift_once();
  }

  v26 = __swift_project_value_buffer(v7, qword_2802CDA10);
  v27 = v8[2];
  v27(v22, v26, v7);
  v28 = sub_268B37A34();
  v29 = sub_268B37F04();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v91 = v18;
    v31 = v7;
    v32 = a1;
    v33 = v26;
    v34 = v8;
    v35 = v27;
    v36 = v30;
    *v30 = 0;
    _os_log_impl(&dword_2688BB000, v28, v29, "Handling seek to time", v30, 2u);
    v37 = v36;
    v27 = v35;
    v8 = v34;
    v26 = v33;
    a1 = v32;
    v7 = v31;
    v18 = v91;
    MEMORY[0x26D6266E0](v37, -1, -1);
  }

  v38 = v8[1];
  v38(v22, v7);
  v39 = sub_268B18100();
  if (!v39)
  {
    goto LABEL_16;
  }

  v40 = v39;
  if (!sub_2688EFD0C(v39))
  {

LABEL_16:

    v48 = v96;
    v27(v96, v26, v7);
    v49 = sub_268B37A34();
    v52 = sub_268B37EE4();
    if (os_log_type_enabled(v49, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_2688BB000, v49, v52, "No devices found in SeekTimeIntent, returning failure", v53, 2u);
      MEMORY[0x26D6266E0](v53, -1, -1);
    }

    goto LABEL_18;
  }

  v41 = *&v95[OBJC_IVAR____TtC26SiriPlaybackControlIntents21SeekTimeIntentHandler_aceServiceHelper];
  sub_268921344();
  v43 = v42;
  if (!*(v42 + 2))
  {

    v27(v18, v26, v7);
    v54 = sub_268B37A34();
    v55 = sub_268B37EE4();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_2688BB000, v54, v55, "Missing routeId in intent, returning failure", v56, 2u);
      MEMORY[0x26D6266E0](v56, -1, -1);
    }

    v38(v18, v7);
    goto LABEL_22;
  }

  v44 = [a1 playheadPosition];
  if (!v44)
  {
    goto LABEL_12;
  }

  v45 = v44;
  v46 = COERCE_DOUBLE(sub_268B37DE4());
  if ((v47 & 1) != 0 || v46 < 0.0)
  {

LABEL_12:

    v48 = v94;
    v27(v94, v26, v7);
    v49 = sub_268B37A34();
    v50 = sub_268B37EE4();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_2688BB000, v49, v50, "Could not find time to seek in intent or it was invalid, returning failure", v51, 2u);
      MEMORY[0x26D6266E0](v51, -1, -1);
    }

LABEL_18:

    v38(v48, v7);
LABEL_22:

    v57 = objc_allocWithZone(type metadata accessor for SeekTimeIntentResponse());
    v58 = SeekTimeIntentResponse.init(code:userActivity:)(5, 0);
    v101 = v58;
    v97(&v101);

    return;
  }

  v96 = a1;
  v59 = [a1 shouldStartPlaybackAfterSeek];
  v91 = v43;
  if (v59 && (v60 = v59, LOBYTE(v101) = 2, MEMORY[0x26D625760](v59, &v101), v60, v101 != 2))
  {
    v61 = v96;
    if (v101)
    {
      sub_26895761C();
      v90 = v87;
    }

    else
    {
      v90 = 0;
    }
  }

  else
  {
    v90 = 0;
    v61 = v96;
  }

  v88 = v26;
  v89 = v27;
  v27(v93, v26, v7);
  v62 = v45;
  v63 = sub_268B37A34();
  v64 = sub_268B37EC4();
  v94 = v62;

  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v65 = 138412290;
    v67 = v94;
    *(v65 + 4) = v94;
    *v66 = v45;
    v68 = v67;
    _os_log_impl(&dword_2688BB000, v63, v64, "Seeking to: %@", v65, 0xCu);
    sub_2688C058C(v66, &qword_2802A6420, &unk_268B3C680);
    v69 = v66;
    v61 = v96;
    MEMORY[0x26D6266E0](v69, -1, -1);
    MEMORY[0x26D6266E0](v65, -1, -1);
  }

  v38(v93, v7);
  v70 = [v61 isSkipToEnd];
  sub_2688C063C();
  v71 = sub_268B38054();
  v72 = v71;
  if (v70)
  {
    v73 = sub_268B38074();

    if ((v73 & 1) != 0 && sub_2688EFD0C(v40) >= 2)
    {

      v74 = v92;
      v89(v92, v88, v7);
      v75 = sub_268B37A34();
      v76 = sub_268B37EE4();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        *v77 = 0;
        _os_log_impl(&dword_2688BB000, v75, v76, "Can't seek to end on multiple devices, returning failure", v77, 2u);
        MEMORY[0x26D6266E0](v77, -1, -1);
      }

      v38(v74, v7);
      v78 = objc_allocWithZone(type metadata accessor for SeekTimeIntentResponse());
      v79 = SeekTimeIntentResponse.init(code:userActivity:)(5, 0);
      v101 = v79;
      v97(&v101);

      goto LABEL_36;
    }
  }

  else
  {
  }

  v80 = v95;
  v81 = *__swift_project_boxed_opaque_existential_1(&v95[OBJC_IVAR____TtC26SiriPlaybackControlIntents21SeekTimeIntentHandler_analyticsService], *&v95[OBJC_IVAR____TtC26SiriPlaybackControlIntents21SeekTimeIntentHandler_analyticsService + 24]);
  sub_268920C54();
  sub_268949478(0x656D69546B656573, 0xE800000000000000, v82, v40);

  v83 = *&v80[OBJC_IVAR____TtC26SiriPlaybackControlIntents21SeekTimeIntentHandler_playbackController + 32];
  __swift_project_boxed_opaque_existential_1(&v80[OBJC_IVAR____TtC26SiriPlaybackControlIntents21SeekTimeIntentHandler_playbackController], *&v80[OBJC_IVAR____TtC26SiriPlaybackControlIntents21SeekTimeIntentHandler_playbackController + 24]);
  v84 = swift_allocObject();
  v85 = v98;
  v84[2] = sub_2688E19F8;
  v84[3] = v85;
  v84[4] = v80;
  v86 = v80;
  sub_268B36E24();

LABEL_36:
}

void sub_268B13914(uint64_t a1, void (*a2)(void))
{
  v3 = sub_268B36ED4();
  sub_268B161B0();
  v5 = v4;
  v6 = objc_allocWithZone(type metadata accessor for SeekTimeIntentResponse());
  v7 = v3;
  v8 = SeekTimeIntentResponse.init(code:userActivity:)(v5, v3);
  a2();
}

void sub_268B13A84(void *a1, uint64_t a2, void (**a3)(void, void))
{
  v6 = sub_268B36C04();
  v39 = *(v6 - 8);
  v40 = v6;
  v7 = *(v39 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_268B37A54();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x28223BE20](v10);
  v38 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - v15;
  v41 = a3;
  _Block_copy(a3);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v10, qword_2802CDA10);
  v36 = v11[2];
  v37 = v17;
  v36(v16);
  v18 = sub_268B37A34();
  v19 = sub_268B37F04();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = a1;
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_2688BB000, v18, v19, "Resolving devices for seek time", v21, 2u);
    v22 = v21;
    a1 = v20;
    MEMORY[0x26D6266E0](v22, -1, -1);
  }

  v23 = v11[1];
  v23(v16, v10);
  if ((sub_268921060() & 1) != 0 && (v24 = a1, v25 = *(a2 + OBJC_IVAR____TtC26SiriPlaybackControlIntents21SeekTimeIntentHandler_deviceState + 32), __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC26SiriPlaybackControlIntents21SeekTimeIntentHandler_deviceState), *(a2 + OBJC_IVAR____TtC26SiriPlaybackControlIntents21SeekTimeIntentHandler_deviceState + 24)), a1 = v24, (sub_2688C3240() & 1) == 0))
  {
    v30 = v38;
    (v36)(v38, v37, v10);
    v31 = sub_268B37A34();
    v32 = sub_268B37EE4();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_2688BB000, v31, v32, "Whole House Audio requests are unsupported on this platform", v33, 2u);
      MEMORY[0x26D6266E0](v33, -1, -1);
    }

    v23(v30, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_268B3BBA0;
    type metadata accessor for SeekTimeDevicesResolutionResult();
    *(v34 + 32) = sub_268B17B04(2);
    v35 = sub_268B37CE4();
    v29 = v41;
    (v41)[2](v41, v35);
  }

  else
  {
    v26 = *(a2 + OBJC_IVAR____TtC26SiriPlaybackControlIntents21SeekTimeIntentHandler_deviceSelector);
    v28 = v39;
    v27 = v40;
    (*(v39 + 104))(v9, *MEMORY[0x277D5F650], v40);
    [a1 mediaType];
    v29 = v41;
    _Block_copy(v41);
    sub_26890BEF0();
    (*(v28 + 8))(v9, v27);
  }

  _Block_release(v29);
  _Block_release(v29);
}

void sub_268B13EDC()
{
  OUTLINED_FUNCTION_26();
  v43 = v0;
  v44 = v1;
  v45 = v3;
  v46 = v2;
  v42 = sub_268B36C04();
  v4 = OUTLINED_FUNCTION_1(v42);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_0();
  v11 = v10 - v9;
  v12 = sub_268B37A54();
  v13 = OUTLINED_FUNCTION_1(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_20_0();
  v41 = (v18 - v19);
  MEMORY[0x28223BE20](v20);
  v22 = &v39 - v21;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v23 = __swift_project_value_buffer(v12, qword_2802CDA10);
  v40 = *(v15 + 16);
  v40(v22, v23, v12);
  v24 = sub_268B37A34();
  v25 = sub_268B37F04();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = OUTLINED_FUNCTION_14();
    *v26 = 0;
    _os_log_impl(&dword_2688BB000, v24, v25, "Resolving devices for seek time", v26, 2u);
    OUTLINED_FUNCTION_12();
  }

  v27 = *(v15 + 8);
  v28 = OUTLINED_FUNCTION_138();
  v27(v28);
  v29 = sub_268921060();
  v30 = v43;
  if ((v29 & 1) != 0 && (v31 = *(v43 + OBJC_IVAR____TtC26SiriPlaybackControlIntents21SeekTimeIntentHandler_deviceState + 32), __swift_project_boxed_opaque_existential_1((v43 + OBJC_IVAR____TtC26SiriPlaybackControlIntents21SeekTimeIntentHandler_deviceState), *(v43 + OBJC_IVAR____TtC26SiriPlaybackControlIntents21SeekTimeIntentHandler_deviceState + 24)), (sub_2688C3240() & 1) == 0))
  {
    v34 = v41;
    v40(v41, v23, v12);
    v35 = sub_268B37A34();
    v36 = sub_268B37EE4();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_81(v37);
      OUTLINED_FUNCTION_21_6(&dword_2688BB000, v35, v36, "Whole House Audio requests are unsupported on this platform");
      OUTLINED_FUNCTION_83_0();
    }

    (v27)(v34, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    OUTLINED_FUNCTION_220();
    v38 = swift_allocObject();
    OUTLINED_FUNCTION_15_27(v38, xmmword_268B3BBA0);
    v38[2].n128_u64[0] = sub_268B17B04(2);
    v44(v38);
  }

  else
  {
    v32 = *(v30 + OBJC_IVAR____TtC26SiriPlaybackControlIntents21SeekTimeIntentHandler_deviceSelector);
    v33 = v42;
    (*(v6 + 104))(v11, *MEMORY[0x277D5F650], v42);
    [v46 mediaType];

    sub_26890CC9C();
    (*(v6 + 8))(v11, v33);
  }

  OUTLINED_FUNCTION_23();
}

void sub_268B14274()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_268B37A54();
  v8 = OUTLINED_FUNCTION_1(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_20_0();
  v15 = (v13 - v14);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v64 - v18;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_141();
  MEMORY[0x28223BE20](v20);
  v22 = &v64 - v21;
  if (v4)
  {
    if (v4 == 1)
    {
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      OUTLINED_FUNCTION_82(v7, qword_2802CDA10);
      (*(v10 + 16))(v19);

      v23 = sub_268B37A34();
      v24 = sub_268B37F04();
      sub_268958D4C(v6, 1u);
      if (os_log_type_enabled(v23, v24))
      {
        OUTLINED_FUNCTION_172_0();
        v25 = OUTLINED_FUNCTION_20_6();
        v71 = v25;
        *v22 = 136315138;
        v26 = type metadata accessor for Device();
        v27 = MEMORY[0x26D6256F0](v6, v26);
        OUTLINED_FUNCTION_30_3(v27, v28);
        v69 = v2;
        OUTLINED_FUNCTION_16_7();
        *(v22 + 4) = v10;
        _os_log_impl(&dword_2688BB000, v23, v24, "SeekTimeIntentHandler#resolveDevices Disambiguating between devices: %s", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v25);
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_12();

        v29 = v2[1];
        v30 = OUTLINED_FUNCTION_138();
        v31(v30);
        v2 = v69;
      }

      else
      {

        v52 = *(v10 + 8);
        v53 = OUTLINED_FUNCTION_138();
        v54(v53);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      OUTLINED_FUNCTION_220();
      v50 = swift_allocObject();
      OUTLINED_FUNCTION_15_27(v50, xmmword_268B3BBA0);
      v51 = sub_268B2CCFC(v6);
    }

    else
    {
      v69 = v2;
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      OUTLINED_FUNCTION_82(v7, qword_2802CDA10);
      v67 = *(v10 + 16);
      v68 = v38;
      v67(v22);
      v39 = sub_268B37A34();
      v40 = sub_268B37EE4();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = OUTLINED_FUNCTION_172_0();
        v66 = v10;
        v42 = v41;
        v65 = swift_slowAlloc();
        v71 = v65;
        *v42 = 136315138;
        v70 = v6 & 1;
        sub_26890C84C();
        v43 = sub_268B384A4();
        v45 = sub_26892CDB8(v43, v44, &v71);

        *(v42 + 4) = v45;
        _os_log_impl(&dword_2688BB000, v39, v40, "SeekTimeIntentHandler#resolveDevices Error resolving devices: %s", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v65);
        OUTLINED_FUNCTION_12();
        v10 = v66;
        OUTLINED_FUNCTION_12();
      }

      v46 = *(v10 + 8);
      v46(v22, v7);
      v2 = v69;
      if ((v6 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
        OUTLINED_FUNCTION_220();
        v61 = swift_allocObject();
        OUTLINED_FUNCTION_15_27(v61, xmmword_268B3BBA0);
        v61[2].n128_u64[0] = [swift_getObjCClassFromMetadata() notRequired];
        goto LABEL_32;
      }

      (v67)(v15, v68, v7);
      v47 = sub_268B37A34();
      v48 = sub_268B37EE4();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_81(v49);
        OUTLINED_FUNCTION_21_6(&dword_2688BB000, v47, v48, "SeekTimeIntentHandler#resolveDevices .noMatchingDevicesFound");
        OUTLINED_FUNCTION_83_0();
      }

      v46(v15, v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      OUTLINED_FUNCTION_220();
      v50 = swift_allocObject();
      OUTLINED_FUNCTION_15_27(v50, xmmword_268B3BBA0);
      v51 = sub_268B17B04(1);
    }

    v50[2].n128_u64[0] = v51;
LABEL_32:
    v62 = sub_268B37CE4();
    OUTLINED_FUNCTION_15_7();
    v63(v2, v62);

    _Block_release(v2);
    OUTLINED_FUNCTION_23();
    return;
  }

  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  OUTLINED_FUNCTION_82(v7, qword_2802CDA10);
  (*(v10 + 16))(v0);

  v32 = sub_268B37A34();
  v33 = sub_268B37F04();
  sub_268958D4C(v6, 0);
  if (os_log_type_enabled(v32, v33))
  {
    OUTLINED_FUNCTION_172_0();
    v34 = OUTLINED_FUNCTION_20_6();
    v71 = v34;
    *v22 = 136315138;
    v35 = type metadata accessor for Device();
    v36 = MEMORY[0x26D6256F0](v6, v35);
    OUTLINED_FUNCTION_30_3(v36, v37);
    v69 = v2;
    OUTLINED_FUNCTION_16_7();
    *(v22 + 4) = v10;
    _os_log_impl(&dword_2688BB000, v32, v33, "SeekTimeIntentHandler#resolveDevices Success resolving devices: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v34);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();

    (v2[1])(v0, v7);
    v2 = v69;
  }

  else
  {

    (*(v10 + 8))(v0, v7);
  }

  v55 = sub_2688EFD0C(v6);
  if (!v55)
  {
LABEL_30:
    type metadata accessor for SeekTimeDevicesResolutionResult();
    goto LABEL_32;
  }

  v56 = v55;
  v71 = MEMORY[0x277D84F90];
  sub_268B38234();
  if ((v56 & 0x8000000000000000) == 0)
  {
    type metadata accessor for SeekTimeDevicesResolutionResult();
    v57 = 0;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v58 = MEMORY[0x26D625BD0](v57, v6);
      }

      else
      {
        v58 = *(v6 + 8 * v57 + 32);
      }

      v59 = v58;
      ++v57;
      sub_268B2CC98(v58);

      sub_268B38214();
      v60 = v71[2];
      sub_268B38244();
      sub_268B38254();
      sub_268B38224();
    }

    while (v56 != v57);
    goto LABEL_30;
  }

  __break(1u);
}

void sub_268B14970()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v64 = v3;
  v5 = v4;
  v7 = v6;
  v8 = sub_268B37A54();
  v9 = OUTLINED_FUNCTION_1(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_20_0();
  v16 = v14 - v15;
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v59 - v19;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_141();
  MEMORY[0x28223BE20](v21);
  v23 = &v59 - v22;
  if (v5)
  {
    if (v5 == 1)
    {
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      OUTLINED_FUNCTION_82(v8, qword_2802CDA10);
      OUTLINED_FUNCTION_15_7();
      v24(v16);

      v25 = sub_268B37A34();
      v26 = sub_268B37F04();
      sub_268958D4C(v7, 1u);
      if (os_log_type_enabled(v25, v26))
      {
        OUTLINED_FUNCTION_172_0();
        v27 = OUTLINED_FUNCTION_20_6();
        v66 = v27;
        *v20 = 136315138;
        v28 = type metadata accessor for Device();
        v29 = MEMORY[0x26D6256F0](v7, v28);
        OUTLINED_FUNCTION_30_3(v29, v30);
        v63 = v8;
        OUTLINED_FUNCTION_16_7();
        *(v20 + 4) = v2;
        _os_log_impl(&dword_2688BB000, v25, v26, "SeekTimeIntentHandler#resolveDevices Disambiguating between devices: %s", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v27);
        OUTLINED_FUNCTION_83_0();
        OUTLINED_FUNCTION_12();

        (*(v11 + 8))(v16, v63);
      }

      else
      {

        (*(v11 + 8))(v16, v8);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      OUTLINED_FUNCTION_220();
      v51 = swift_allocObject();
      OUTLINED_FUNCTION_15_27(v51, xmmword_268B3BBA0);
      v52 = sub_268B2CCFC(v7);
    }

    else
    {
      v63 = v2;
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      OUTLINED_FUNCTION_82(v8, qword_2802CDA10);
      v61 = *(v11 + 16);
      v62 = v39;
      v61(v23);
      v40 = sub_268B37A34();
      v41 = sub_268B37EE4();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = OUTLINED_FUNCTION_172_0();
        v60 = v11;
        v43 = v42;
        v59 = swift_slowAlloc();
        v66 = v59;
        *v43 = 136315138;
        v65 = v7 & 1;
        sub_26890C84C();
        v44 = sub_268B384A4();
        v46 = sub_26892CDB8(v44, v45, &v66);

        *(v43 + 4) = v46;
        _os_log_impl(&dword_2688BB000, v40, v41, "SeekTimeIntentHandler#resolveDevices Error resolving devices: %s", v43, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v59);
        OUTLINED_FUNCTION_12();
        v11 = v60;
        OUTLINED_FUNCTION_12();
      }

      v47 = *(v11 + 8);
      v47(v23, v8);
      if (v7)
      {
        (v61)(v0, v62, v8);
        v48 = sub_268B37A34();
        v49 = sub_268B37EE4();
        if (os_log_type_enabled(v48, v49))
        {
          v50 = OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_81(v50);
          OUTLINED_FUNCTION_21_6(&dword_2688BB000, v48, v49, "SeekTimeIntentHandler#resolveDevices .noMatchingDevicesFound");
          OUTLINED_FUNCTION_83_0();
        }

        v47(v0, v8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
        OUTLINED_FUNCTION_220();
        v51 = swift_allocObject();
        OUTLINED_FUNCTION_15_27(v51, xmmword_268B3BBA0);
        v52 = sub_268B17B04(1);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
        OUTLINED_FUNCTION_220();
        v51 = swift_allocObject();
        OUTLINED_FUNCTION_15_27(v51, xmmword_268B3BBA0);
        v52 = [swift_getObjCClassFromMetadata() notRequired];
      }
    }

    v51[2].n128_u64[0] = v52;
    goto LABEL_32;
  }

  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  OUTLINED_FUNCTION_82(v8, qword_2802CDA10);
  OUTLINED_FUNCTION_15_7();
  v31(v20);

  v32 = sub_268B37A34();
  v33 = sub_268B37F04();
  sub_268958D4C(v7, 0);
  if (os_log_type_enabled(v32, v33))
  {
    v34 = OUTLINED_FUNCTION_172_0();
    v35 = swift_slowAlloc();
    v66 = v35;
    *v34 = 136315138;
    v36 = type metadata accessor for Device();
    v37 = MEMORY[0x26D6256F0](v7, v36);
    OUTLINED_FUNCTION_30_3(v37, v38);
    v63 = v8;
    OUTLINED_FUNCTION_16_7();
    *(v34 + 4) = v2;
    _os_log_impl(&dword_2688BB000, v32, v33, "SeekTimeIntentHandler#resolveDevices Success resolving devices: %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v35);
    OUTLINED_FUNCTION_83_0();
    OUTLINED_FUNCTION_12();

    (*(v11 + 8))(v20, v63);
  }

  else
  {

    (*(v11 + 8))(v20, v8);
  }

  v53 = sub_2688EFD0C(v7);
  v51 = MEMORY[0x277D84F90];
  if (!v53)
  {
    goto LABEL_32;
  }

  v54 = v53;
  v66 = MEMORY[0x277D84F90];
  sub_268B38234();
  if ((v54 & 0x8000000000000000) == 0)
  {
    type metadata accessor for SeekTimeDevicesResolutionResult();
    v55 = 0;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v56 = MEMORY[0x26D625BD0](v55, v7);
      }

      else
      {
        v56 = *(v7 + 8 * v55 + 32);
      }

      v57 = v56;
      ++v55;
      sub_268B2CC98(v56);

      sub_268B38214();
      v58 = v66[2];
      sub_268B38244();
      sub_268B38254();
      sub_268B38224();
    }

    while (v54 != v55);
    v51 = v66;
LABEL_32:
    v64(v51);

    OUTLINED_FUNCTION_23();
    return;
  }

  __break(1u);
}

void sub_268B1505C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SeekTimeDevicesResolutionResult();
  v3 = sub_268B37CE4();
  (*(a2 + 16))(a2, v3);
}

void sub_268B150C8(void *a1, uint64_t a2, void (**a3)(void, id))
{
  v52 = a2;
  v5 = sub_268B37A54();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](v5);
  v53 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v54 = &v51 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v51 - v12;
  v55 = swift_allocObject();
  v56 = a3;
  *(v55 + 16) = a3;
  _Block_copy(a3);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v5, qword_2802CDA10);
  v15 = v6[2];
  v15(v13, v14, v5);
  v16 = sub_268B37A34();
  v17 = sub_268B37F04();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_2688BB000, v16, v17, "Resolving playHeadPosition for seek time", v18, 2u);
    MEMORY[0x26D6266E0](v18, -1, -1);
  }

  v19 = v6[1];
  v19(v13, v5);
  v20 = [a1 isSkipToEnd];
  sub_2688C063C();
  v21 = sub_268B38054();
  v22 = v21;
  if (!v20)
  {

    goto LABEL_15;
  }

  v23 = sub_268B38074();

  if ((v23 & 1) == 0)
  {
LABEL_15:
    v33 = [a1 playheadPosition];
    if (v33)
    {
      v34 = v33;
      type metadata accessor for SeekTimePlayheadPositionResolutionResult();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      sub_268B37DC4();
      v36 = [ObjCClassFromMetadata successWithResolvedTimeInterval_];
      v32 = v56;
      v56[2](v56, v36);

      goto LABEL_25;
    }

    v37 = v53;
    v15(v53, v14, v5);
    v38 = sub_268B37A34();
    v39 = sub_268B37EE4();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = v19;
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_2688BB000, v38, v39, "Playhead position doesn't exist in intent.", v41, 2u);
      v42 = v41;
      v19 = v40;
      MEMORY[0x26D6266E0](v42, -1, -1);
    }

    v19(v37, v5);
    type metadata accessor for SeekTimePlayheadPositionResolutionResult();
    v43 = 2;
LABEL_24:
    v50 = sub_268B1CD38(v43);
    v32 = v56;
    v56[2](v56, v50);

    goto LABEL_25;
  }

  v24 = sub_268B18100();
  if (!v24)
  {
    goto LABEL_21;
  }

  v25 = v24;
  if (sub_2688EFD0C(v24) != 1 || !sub_2688EFD0C(v25))
  {

    goto LABEL_21;
  }

  sub_2688EFD10(0, (v25 & 0xC000000000000001) == 0, v25);
  v26 = (v25 & 0xC000000000000001) != 0 ? MEMORY[0x26D625BD0](0, v25) : *(v25 + 32);
  v27 = v26;

  sub_268B0F784(v27);
  if (!v28)
  {
LABEL_21:
    v44 = v54;
    v15(v54, v14, v5);
    v45 = sub_268B37A34();
    v46 = sub_268B37EE4();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = v19;
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_2688BB000, v45, v46, "Multiple devices in intent, can't get duration info", v48, 2u);
      v49 = v48;
      v19 = v47;
      MEMORY[0x26D6266E0](v49, -1, -1);
    }

    v19(v44, v5);
    type metadata accessor for SeekTimePlayheadPositionResolutionResult();
    v43 = 3;
    goto LABEL_24;
  }

  v29 = *(v52 + OBJC_IVAR____TtC26SiriPlaybackControlIntents21SeekTimeIntentHandler_playbackController + 32);
  __swift_project_boxed_opaque_existential_1((v52 + OBJC_IVAR____TtC26SiriPlaybackControlIntents21SeekTimeIntentHandler_playbackController), *(v52 + OBJC_IVAR____TtC26SiriPlaybackControlIntents21SeekTimeIntentHandler_playbackController + 24));
  v30 = swift_allocObject();
  v31 = v55;
  *(v30 + 16) = sub_26892DC18;
  *(v30 + 24) = v31;

  sub_268B36D04();

  v32 = v56;
LABEL_25:
  _Block_release(v32);
}

void sub_268B15694()
{
  OUTLINED_FUNCTION_26();
  v50 = v0;
  v53 = v1;
  v54 = v2;
  v4 = v3;
  v5 = sub_268B37A54();
  v6 = OUTLINED_FUNCTION_1(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_20_0();
  v13 = v11 - v12;
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v49 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v49 - v18;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  OUTLINED_FUNCTION_82(v5, qword_2802CDA10);
  v20 = *(v8 + 16);
  v51 = v21;
  v52 = v20;
  (v20)(v19);
  v22 = sub_268B37A34();
  v23 = sub_268B37F04();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_81(v24);
    OUTLINED_FUNCTION_21_6(&dword_2688BB000, v22, v23, "Resolving playHeadPosition for seek time");
    OUTLINED_FUNCTION_83_0();
  }

  v25 = *(v8 + 8);
  v26 = OUTLINED_FUNCTION_138();
  v25(v26);
  v27 = [v4 isSkipToEnd];
  sub_2688C063C();
  v28 = sub_268B38054();
  v29 = v28;
  if (!v27)
  {

    goto LABEL_15;
  }

  v30 = sub_268B38074();

  if ((v30 & 1) == 0)
  {
LABEL_15:
    v38 = [v4 playheadPosition];
    if (v38)
    {
      v39 = v38;
      type metadata accessor for SeekTimePlayheadPositionResolutionResult();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      sub_268B37DC4();
      v41 = [ObjCClassFromMetadata successWithResolvedTimeInterval_];
      v53();

LABEL_25:
      goto LABEL_26;
    }

    v52(v13, v51, v5);
    v42 = sub_268B37A34();
    v43 = sub_268B37EE4();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_81(v44);
      OUTLINED_FUNCTION_21_6(&dword_2688BB000, v42, v43, "Playhead position doesn't exist in intent.");
      OUTLINED_FUNCTION_12();
    }

    (v25)(v13, v5);
    type metadata accessor for SeekTimePlayheadPositionResolutionResult();
    v45 = 2;
LABEL_24:
    v41 = sub_268B1CD38(v45);
    v53();
    goto LABEL_25;
  }

  v31 = sub_268B18100();
  if (!v31)
  {
    goto LABEL_21;
  }

  v32 = v31;
  if (sub_2688EFD0C(v31) != 1 || !sub_2688EFD0C(v32))
  {

    goto LABEL_21;
  }

  sub_2688EFD10(0, (v32 & 0xC000000000000001) == 0, v32);
  v33 = (v32 & 0xC000000000000001) != 0 ? MEMORY[0x26D625BD0](0, v32) : *(v32 + 32);
  v34 = v33;

  sub_268B0F784(v34);
  if (!v35)
  {
LABEL_21:
    v52(v17, v51, v5);
    v46 = sub_268B37A34();
    v47 = sub_268B37EE4();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_81(v48);
      OUTLINED_FUNCTION_21_6(&dword_2688BB000, v46, v47, "Multiple devices in intent, can't get duration info");
      OUTLINED_FUNCTION_12();
    }

    (v25)(v17, v5);
    type metadata accessor for SeekTimePlayheadPositionResolutionResult();
    v45 = 3;
    goto LABEL_24;
  }

  v36 = *(v50 + OBJC_IVAR____TtC26SiriPlaybackControlIntents21SeekTimeIntentHandler_playbackController + 32);
  __swift_project_boxed_opaque_existential_1((v50 + OBJC_IVAR____TtC26SiriPlaybackControlIntents21SeekTimeIntentHandler_playbackController), *(v50 + OBJC_IVAR____TtC26SiriPlaybackControlIntents21SeekTimeIntentHandler_playbackController + 24));
  v37 = swift_allocObject();
  *(v37 + 16) = v53;
  *(v37 + 24) = v54;

  sub_268B36D04();

LABEL_26:
  OUTLINED_FUNCTION_23();
}

void sub_268B15B4C(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v36 = a3;
  v37 = a2;
  v4 = sub_268B37A54();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8E78, &unk_268B51A70);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v36 - v17;
  sub_2688F1FA4(a1, &v36 - v17, &qword_2802A8E78, &unk_268B51A70);
  v19 = sub_268B370F4();
  if (__swift_getEnumTagSinglePayload(v18, 1, v19) != 1)
  {
    sub_268B370E4();
    v21 = v20;
    v22 = *(*(v19 - 8) + 8);
    v22(v18, v19);
    if (v21 <= 0.0)
    {
      goto LABEL_6;
    }

    sub_2688F1FA4(a1, v16, &qword_2802A8E78, &unk_268B51A70);
    if (__swift_getEnumTagSinglePayload(v16, 1, v19) == 1)
    {
      sub_2688C058C(v16, &qword_2802A8E78, &unk_268B51A70);
    }

    else
    {
      sub_268B370D4();
      v29 = v28;
      v22(v16, v19);
      if (v29 + 15.0 < v21)
      {
        type metadata accessor for SeekTimePlayheadPositionResolutionResult();
        v30 = [swift_getObjCClassFromMetadata() successWithResolvedTimeInterval_];
LABEL_18:
        v27 = v30;
        goto LABEL_19;
      }
    }

    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v31 = __swift_project_value_buffer(v4, qword_2802CDA10);
    (*(v5 + 16))(v11, v31, v4);
    v32 = sub_268B37A34();
    v33 = sub_268B37EC4();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_2688BB000, v32, v33, "Missing duration info or elapsed duration is within 15 seconds of the end. Seeking to end of duration", v34, 2u);
      MEMORY[0x26D6266E0](v34, -1, -1);
    }

    (*(v5 + 8))(v11, v4);
    type metadata accessor for SeekTimePlayheadPositionResolutionResult();
    v30 = [swift_getObjCClassFromMetadata() successWithResolvedTimeInterval_];
    goto LABEL_18;
  }

  sub_2688C058C(v18, &qword_2802A8E78, &unk_268B51A70);
LABEL_6:
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v4, qword_2802CDA10);
  (*(v5 + 16))(v9, v23, v4);
  v24 = sub_268B37A34();
  v25 = sub_268B37EE4();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_2688BB000, v24, v25, "Content has no duration, can't skip to end", v26, 2u);
    MEMORY[0x26D6266E0](v26, -1, -1);
  }

  (*(v5 + 8))(v9, v4);
  type metadata accessor for SeekTimePlayheadPositionResolutionResult();
  v27 = sub_268B1CD38(1);
LABEL_19:
  v35 = v27;
  v37();
}

void sub_268B1602C(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v4 = objc_allocWithZone(type metadata accessor for SeekTimeIntentResponse());
  v5 = SeekTimeIntentResponse.init(code:userActivity:)(1, 0);
  (a3)[2](a3, v5);

  _Block_release(a3);
}

void sub_268B16098(uint64_t a1, void (*a2)(void))
{
  v3 = objc_allocWithZone(type metadata accessor for SeekTimeIntentResponse());
  v4 = SeekTimeIntentResponse.init(code:userActivity:)(1, 0);
  a2();
}

void sub_268B16124(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
}

void sub_268B161B0()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v2 = sub_268B36F24();
  v3 = OUTLINED_FUNCTION_1(v2);
  v40 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_20_0();
  v41 = (v7 - v8);
  v10 = MEMORY[0x28223BE20](v9);
  v39 = &v38 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v38 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5DE8, &qword_268B3D790);
  v15 = OUTLINED_FUNCTION_4(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = sub_268B37A54();
  v21 = OUTLINED_FUNCTION_1(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1_0();
  v28 = v27 - v26;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  OUTLINED_FUNCTION_82(v20, qword_2802CDA10);
  (*(v23 + 16))(v28);
  v29 = sub_268B37A34();
  v30 = sub_268B37ED4();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = OUTLINED_FUNCTION_14();
    v38 = v14;
    OUTLINED_FUNCTION_81(v31);
    OUTLINED_FUNCTION_21_6(&dword_2688BB000, v29, v30, "responseCodeFromResult for SeekTimeIntentHandler");
    OUTLINED_FUNCTION_12();
  }

  (*(v23 + 8))(v28, v20);
  sub_2688F1FA4(v1, v19, &qword_2802A5DE8, &qword_268B3D790);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v32 = v40;
    v33 = *(v40 + 32);
    v33(v13, v19, v2);
    v34 = v39;
    sub_268B36EC4();
    v35 = *(v32 + 8);
    v35(v13, v2);
    v36 = v41;
    v33(v41, v34, v2);
    v37 = (*(v32 + 88))(v36, v2);
    if (v37 != *MEMORY[0x277D5F6B0] && v37 != *MEMORY[0x277D5F6C8])
    {
      v35(v36, v2);
    }
  }

  OUTLINED_FUNCTION_23();
}

id SeekTimeIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SeekTimeIntentHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_268B165D4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v30[3] = type metadata accessor for AnalyticsServiceImpl();
  v30[4] = &off_2879539D0;
  v30[0] = a4;
  sub_26890C900(a3, v29);
  sub_26890C900(v30, v27);
  sub_26890C900(a5, v26);
  sub_268B376A4();
  v10 = sub_268B37694();
  v11 = v28;
  v12 = __swift_mutable_project_boxed_opaque_existential_1(v27, v28);
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = sub_26892D53C(a2, v29, *v15, v26, v10);
  __swift_destroy_boxed_opaque_existential_0Tm(v27);
  sub_26890C900(a3, v29);
  sub_26890C900(v30, v27);
  sub_26890C900(a5, v26);
  v18 = v28;
  v19 = __swift_mutable_project_boxed_opaque_existential_1(v27, v28);
  v20 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = (v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v23 + 16))(v22);
  v24 = sub_268B16864(a1, v17, v29, *v22, v26);
  __swift_destroy_boxed_opaque_existential_0Tm(a5);
  __swift_destroy_boxed_opaque_existential_0Tm(a3);
  __swift_destroy_boxed_opaque_existential_0Tm(v30);
  __swift_destroy_boxed_opaque_existential_0Tm(v27);
  return v24;
}

uint64_t sub_268B1682C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id sub_268B16864(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v28[3] = sub_268B36C54();
  v28[4] = MEMORY[0x277D5F680];
  v28[0] = a1;
  v10 = type metadata accessor for AnalyticsServiceImpl();
  v27[3] = v10;
  v27[4] = &off_2879539D0;
  v27[0] = a4;
  v11 = type metadata accessor for SeekTimeIntentHandler();
  v12 = objc_allocWithZone(v11);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v27, v10);
  v14 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = (&v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = *v16;
  v26[3] = v10;
  v26[4] = &off_2879539D0;
  v26[0] = v18;
  sub_26890C900(v28, &v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents21SeekTimeIntentHandler_playbackController]);
  *&v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents21SeekTimeIntentHandler_deviceSelector] = a2;
  sub_26890C900(v26, &v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents21SeekTimeIntentHandler_analyticsService]);
  sub_26890C900(a3, &v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents21SeekTimeIntentHandler_deviceState]);
  sub_26890C900(a3, v25);
  sub_26890C900(a5, v24);
  type metadata accessor for AceServiceHelper();
  v19 = swift_allocObject();
  sub_2688E6514(v25, v19 + 16);
  sub_2688E6514(v24, v19 + 56);
  *&v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents21SeekTimeIntentHandler_aceServiceHelper] = v19;
  v23.receiver = v12;
  v23.super_class = v11;
  v20 = objc_msgSendSuper2(&v23, sel_init);
  __swift_destroy_boxed_opaque_existential_0Tm(a5);
  __swift_destroy_boxed_opaque_existential_0Tm(a3);
  __swift_destroy_boxed_opaque_existential_0Tm(v28);
  __swift_destroy_boxed_opaque_existential_0Tm(v26);
  __swift_destroy_boxed_opaque_existential_0Tm(v27);
  return v20;
}

uint64_t sub_268B16A8C()
{
  v1 = sub_268B37A24();
  OUTLINED_FUNCTION_4(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);
  v6 = *(v0 + v5 + 16);

  return MEMORY[0x2821FE8E8](v0, v5 + 24, v3 | 7);
}

uint64_t sub_268B16C34()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_268B16C6C()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_220();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

void sub_268B16CA8(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  sub_268B13914(a1, *(v1 + 16));
}

uint64_t OUTLINED_FUNCTION_15_27(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return type metadata accessor for SeekTimeDevicesResolutionResult();
}

id PauseMediaIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_268B16E08(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), SEL *a5)
{
  if (a1)
  {
    a4(0);
    v7 = sub_268B37CE4();
  }

  else
  {
    v7 = 0;
  }

  [v5 *a5];
}

id sub_268B16ED4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 isDirectInvocation];
  *a2 = result;
  return result;
}

void sub_268B16F10(id *a1@<X0>, SEL *a2@<X3>, void (*a3)(void)@<X4>, uint64_t *a4@<X8>)
{
  v6 = [*a1 *a2];
  if (v6)
  {
    v7 = v6;
    a3(0);
    v8 = sub_268B37CF4();
  }

  else
  {
    v8 = 0;
  }

  *a4 = v8;
}

void sub_268B16F84(void *a1, void **a2, uint64_t a3, uint64_t a4, void (*a5)(void), SEL *a6)
{
  v7 = *a2;
  if (*a1)
  {
    a5(0);
    v8 = sub_268B37CE4();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  [v7 *a6];
}

id PauseMediaIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PauseMediaIntent();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PauseMediaIntent.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id PauseMediaIntent.init(coder:)(void *a1)
{
  v13 = type metadata accessor for PauseMediaIntent();
  v9 = OUTLINED_FUNCTION_7_36(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id PauseMediaIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_268B37BC4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id PauseMediaIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_268B37BC4();
  }

  else
  {
    v5 = 0;
  }

  v16 = type metadata accessor for PauseMediaIntent();
  v12 = OUTLINED_FUNCTION_7_36(v16, sel_initWithIdentifier_backingStore_, v6, v7, v8, v9, v10, v11, v3);
  v14 = objc_msgSendSuper2(v12, v13);

  return v14;
}

id PauseMediaIntent.__allocating_init(domain:verb:parametersByName:)()
{
  v2 = OUTLINED_FUNCTION_8_35();

  v3 = sub_268B37BC4();

  if (v1)
  {
    v4 = sub_268B37B54();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(v0) initWithDomain:v2 verb:v3 parametersByName:v4];

  return v5;
}

id PauseMediaIntent.init(domain:verb:parametersByName:)()
{
  v2 = OUTLINED_FUNCTION_8_35();

  v3 = sub_268B37BC4();

  if (v1)
  {
    v4 = sub_268B37B54();
  }

  else
  {
    v4 = 0;
  }

  v7.receiver = v0;
  v7.super_class = type metadata accessor for PauseMediaIntent();
  v5 = objc_msgSendSuper2(&v7, sel_initWithDomain_verb_parametersByName_, v2, v3, v4);

  return v5;
}

unint64_t PauseMediaIntentResponseCode.init(rawValue:)(unint64_t result)
{
  if (result - 100 >= 3)
  {
    v1 = 0;
  }

  else
  {
    v1 = result;
  }

  if (result >= 7)
  {
    return v1;
  }

  return result;
}

unint64_t sub_268B1750C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = PauseMediaIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_268B17564()
{
  v1 = OBJC_IVAR___PauseMediaIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_268B175D0(uint64_t a1)
{
  v3 = OBJC_IVAR___PauseMediaIntentResponse_code;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

char *PauseMediaIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___PauseMediaIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id PauseMediaIntentResponse.init()()
{
  *&v0[OBJC_IVAR___PauseMediaIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PauseMediaIntentResponse();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PauseMediaIntentResponse.init(coder:)(void *a1)
{
  *(v1 + OBJC_IVAR___PauseMediaIntentResponse_code) = 0;
  v13 = type metadata accessor for PauseMediaIntentResponse();
  v9 = OUTLINED_FUNCTION_7_36(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id PauseMediaIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id PauseMediaIntentResponse.init(backingStore:)(void *a1)
{
  *(v1 + OBJC_IVAR___PauseMediaIntentResponse_code) = 0;
  v13 = type metadata accessor for PauseMediaIntentResponse();
  v9 = OUTLINED_FUNCTION_7_36(v13, sel_initWithBackingStore_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id PauseMediaIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_268B37B54();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id PauseMediaIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___PauseMediaIntentResponse_code] = 0;
  if (a1)
  {
    v2 = sub_268B37B54();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for PauseMediaIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

uint64_t PauseMediaDevicesUnsupportedReason.init(rawValue:)(uint64_t result)
{
  if ((result - 3) < 0xFFFFFFFFFFFFFFFELL)
  {
    return 0;
  }

  return result;
}

uint64_t sub_268B17AD0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = PauseMediaDevicesUnsupportedReason.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id sub_268B17B04(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() unsupportedWithReason_];

  return v1;
}

id PauseMediaDevicesResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_268B37B54();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id PauseMediaDevicesResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_268B37B54();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for PauseMediaDevicesResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_268B17D64(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_268B17DA0()
{
  result = qword_2802A8E88;
  if (!qword_2802A8E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8E88);
  }

  return result;
}

unint64_t sub_268B17DF8()
{
  result = qword_2802A8E90;
  if (!qword_2802A8E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8E90);
  }

  return result;
}

id sub_268B17F24@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 mediaType];
  *a2 = result;
  return result;
}

uint64_t sub_268B18014@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_268B17564();
  *a2 = result;
  return result;
}

uint64_t sub_268B18160(void *a1, SEL *a2, void (*a3)(void))
{
  v4 = [a1 *a2];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  a3(0);
  v6 = sub_268B37CF4();

  return v6;
}

uint64_t OUTLINED_FUNCTION_8_35()
{

  return sub_268B37BC4();
}

id ResumeMediaIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_268B18320(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 targetBundleIdentifier];
  if (v3)
  {
    v4 = v3;
    v5 = sub_268B37BF4();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_268B18388(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = *a1;
    v4 = sub_268B37BC4();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v2 setTargetBundleIdentifier_];
}

id ResumeMediaIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ResumeMediaIntent();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ResumeMediaIntent.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id ResumeMediaIntent.init(coder:)(void *a1)
{
  v13 = type metadata accessor for ResumeMediaIntent();
  v9 = OUTLINED_FUNCTION_7_36(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id ResumeMediaIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_268B37BC4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id ResumeMediaIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_268B37BC4();
  }

  else
  {
    v5 = 0;
  }

  v16 = type metadata accessor for ResumeMediaIntent();
  v12 = OUTLINED_FUNCTION_7_36(v16, sel_initWithIdentifier_backingStore_, v6, v7, v8, v9, v10, v11, v3);
  v14 = objc_msgSendSuper2(v12, v13);

  return v14;
}

id ResumeMediaIntent.__allocating_init(domain:verb:parametersByName:)()
{
  v2 = OUTLINED_FUNCTION_8_35();

  v3 = sub_268B37BC4();

  if (v1)
  {
    v4 = sub_268B37B54();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(v0) initWithDomain:v2 verb:v3 parametersByName:v4];

  return v5;
}

id ResumeMediaIntent.init(domain:verb:parametersByName:)()
{
  v2 = OUTLINED_FUNCTION_8_35();

  v3 = sub_268B37BC4();

  if (v1)
  {
    v4 = sub_268B37B54();
  }

  else
  {
    v4 = 0;
  }

  v7.receiver = v0;
  v7.super_class = type metadata accessor for ResumeMediaIntent();
  v5 = objc_msgSendSuper2(&v7, sel_initWithDomain_verb_parametersByName_, v2, v3, v4);

  return v5;
}

unint64_t ResumeMediaIntentResponseCode.init(rawValue:)(unint64_t result)
{
  if (result - 100 >= 3)
  {
    v1 = 0;
  }

  else
  {
    v1 = result;
  }

  if (result >= 7)
  {
    return v1;
  }

  return result;
}

unint64_t sub_268B188E4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = ResumeMediaIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_268B1893C()
{
  v1 = OBJC_IVAR___ResumeMediaIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_268B189A8(uint64_t a1)
{
  v3 = OBJC_IVAR___ResumeMediaIntentResponse_code;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

char *ResumeMediaIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___ResumeMediaIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id ResumeMediaIntentResponse.init()()
{
  *&v0[OBJC_IVAR___ResumeMediaIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ResumeMediaIntentResponse();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ResumeMediaIntentResponse.init(coder:)(void *a1)
{
  *(v1 + OBJC_IVAR___ResumeMediaIntentResponse_code) = 0;
  v13 = type metadata accessor for ResumeMediaIntentResponse();
  v9 = OUTLINED_FUNCTION_7_36(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id ResumeMediaIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id ResumeMediaIntentResponse.init(backingStore:)(void *a1)
{
  *(v1 + OBJC_IVAR___ResumeMediaIntentResponse_code) = 0;
  v13 = type metadata accessor for ResumeMediaIntentResponse();
  v9 = OUTLINED_FUNCTION_7_36(v13, sel_initWithBackingStore_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id ResumeMediaIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_268B37B54();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id ResumeMediaIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___ResumeMediaIntentResponse_code] = 0;
  if (a1)
  {
    v2 = sub_268B37B54();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for ResumeMediaIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

uint64_t ResumeMediaDevicesUnsupportedReason.init(rawValue:)(uint64_t result)
{
  if ((result - 3) < 0xFFFFFFFFFFFFFFFELL)
  {
    return 0;
  }

  return result;
}

uint64_t sub_268B18EA8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = ResumeMediaDevicesUnsupportedReason.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id ResumeMediaDevicesResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_268B37B54();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id ResumeMediaDevicesResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_268B37B54();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for ResumeMediaDevicesResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_268B190F0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_268B1912C()
{
  result = qword_2802A8EA0;
  if (!qword_2802A8EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8EA0);
  }

  return result;
}

unint64_t sub_268B19184()
{
  result = qword_2802A8EA8;
  if (!qword_2802A8EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8EA8);
  }

  return result;
}

id sub_268B19268@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 mediaType];
  *a2 = result;
  return result;
}

uint64_t sub_268B19354@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_268B1893C();
  *a2 = result;
  return result;
}

id SkipTimeIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_268B194C8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 duration];
  *a2 = result;
  return result;
}

void sub_268B19504(id *a1@<X0>, SEL *a2@<X3>, void (*a3)(void)@<X4>, uint64_t *a4@<X8>)
{
  v6 = [*a1 *a2];
  if (v6)
  {
    v7 = v6;
    a3(0);
    v8 = sub_268B37CF4();
  }

  else
  {
    v8 = 0;
  }

  *a4 = v8;
}

void sub_268B19578(void *a1, void **a2, uint64_t a3, uint64_t a4, void (*a5)(void), SEL *a6)
{
  v7 = *a2;
  if (*a1)
  {
    a5(0);
    v8 = sub_268B37CE4();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  [v7 *a6];
}

id SkipTimeIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SkipTimeIntent();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SkipTimeIntent.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SkipTimeIntent.init(coder:)(void *a1)
{
  v13 = type metadata accessor for SkipTimeIntent();
  v9 = OUTLINED_FUNCTION_7_36(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id SkipTimeIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_268B37BC4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id SkipTimeIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_268B37BC4();
  }

  else
  {
    v5 = 0;
  }

  v16 = type metadata accessor for SkipTimeIntent();
  v12 = OUTLINED_FUNCTION_7_36(v16, sel_initWithIdentifier_backingStore_, v6, v7, v8, v9, v10, v11, v3);
  v14 = objc_msgSendSuper2(v12, v13);

  return v14;
}

id SkipTimeIntent.__allocating_init(domain:verb:parametersByName:)()
{
  v2 = OUTLINED_FUNCTION_8_35();

  v3 = sub_268B37BC4();

  if (v1)
  {
    v4 = sub_268B37B54();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(v0) initWithDomain:v2 verb:v3 parametersByName:v4];

  return v5;
}

id SkipTimeIntent.init(domain:verb:parametersByName:)()
{
  v2 = OUTLINED_FUNCTION_8_35();

  v3 = sub_268B37BC4();

  if (v1)
  {
    v4 = sub_268B37B54();
  }

  else
  {
    v4 = 0;
  }

  v7.receiver = v0;
  v7.super_class = type metadata accessor for SkipTimeIntent();
  v5 = objc_msgSendSuper2(&v7, sel_initWithDomain_verb_parametersByName_, v2, v3, v4);

  return v5;
}

unint64_t SkipTimeIntentResponseCode.init(rawValue:)(unint64_t result)
{
  if (result == 100)
  {
    v1 = 100;
  }

  else
  {
    v1 = 0;
  }

  if (result >= 7)
  {
    return v1;
  }

  return result;
}

unint64_t sub_268B19AE4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = SkipTimeIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_268B19B3C()
{
  v1 = OBJC_IVAR___SkipTimeIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_268B19BA8(uint64_t a1)
{
  v3 = OBJC_IVAR___SkipTimeIntentResponse_code;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

char *SkipTimeIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___SkipTimeIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id SkipTimeIntentResponse.init()()
{
  *&v0[OBJC_IVAR___SkipTimeIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SkipTimeIntentResponse();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SkipTimeIntentResponse.init(coder:)(void *a1)
{
  *(v1 + OBJC_IVAR___SkipTimeIntentResponse_code) = 0;
  v13 = type metadata accessor for SkipTimeIntentResponse();
  v9 = OUTLINED_FUNCTION_7_36(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id SkipTimeIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id SkipTimeIntentResponse.init(backingStore:)(void *a1)
{
  *(v1 + OBJC_IVAR___SkipTimeIntentResponse_code) = 0;
  v13 = type metadata accessor for SkipTimeIntentResponse();
  v9 = OUTLINED_FUNCTION_7_36(v13, sel_initWithBackingStore_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id SkipTimeIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_268B37B54();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id SkipTimeIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___SkipTimeIntentResponse_code] = 0;
  if (a1)
  {
    v2 = sub_268B37B54();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for SkipTimeIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

uint64_t SkipTimeDevicesUnsupportedReason.init(rawValue:)(uint64_t result)
{
  if ((result - 3) < 0xFFFFFFFFFFFFFFFELL)
  {
    return 0;
  }

  return result;
}

uint64_t sub_268B1A0A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = SkipTimeDevicesUnsupportedReason.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id SkipTimeDevicesResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_268B37B54();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id SkipTimeDevicesResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_268B37B54();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for SkipTimeDevicesResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_268B1A2F0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_268B1A32C()
{
  result = qword_2802A8EB8;
  if (!qword_2802A8EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8EB8);
  }

  return result;
}

unint64_t sub_268B1A384()
{
  result = qword_2802A8EC0;
  if (!qword_2802A8EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8EC0);
  }

  return result;
}

id sub_268B1A48C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 mediaType];
  *a2 = result;
  return result;
}

uint64_t sub_268B1A51C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_268B19B3C();
  *a2 = result;
  return result;
}

id SkipContentIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SkipContentIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SkipContentIntent();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SkipContentIntent.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SkipContentIntent.init(coder:)(void *a1)
{
  v13 = type metadata accessor for SkipContentIntent();
  v9 = OUTLINED_FUNCTION_7_36(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id SkipContentIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_268B37BC4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id SkipContentIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_268B37BC4();
  }

  else
  {
    v5 = 0;
  }

  v16 = type metadata accessor for SkipContentIntent();
  v12 = OUTLINED_FUNCTION_7_36(v16, sel_initWithIdentifier_backingStore_, v6, v7, v8, v9, v10, v11, v3);
  v14 = objc_msgSendSuper2(v12, v13);

  return v14;
}

id SkipContentIntent.__allocating_init(domain:verb:parametersByName:)()
{
  v2 = OUTLINED_FUNCTION_8_35();

  v3 = sub_268B37BC4();

  if (v1)
  {
    v4 = sub_268B37B54();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(v0) initWithDomain:v2 verb:v3 parametersByName:v4];

  return v5;
}

id SkipContentIntent.init(domain:verb:parametersByName:)()
{
  v2 = OUTLINED_FUNCTION_8_35();

  v3 = sub_268B37BC4();

  if (v1)
  {
    v4 = sub_268B37B54();
  }

  else
  {
    v4 = 0;
  }

  v7.receiver = v0;
  v7.super_class = type metadata accessor for SkipContentIntent();
  v5 = objc_msgSendSuper2(&v7, sel_initWithDomain_verb_parametersByName_, v2, v3, v4);

  return v5;
}

unint64_t SkipContentIntentResponseCode.init(rawValue:)(unint64_t result)
{
  if (result - 100 >= 4)
  {
    v1 = 0;
  }

  else
  {
    v1 = result;
  }

  if (result >= 7)
  {
    return v1;
  }

  return result;
}

unint64_t sub_268B1ABC4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = SkipContentIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_268B1AC1C()
{
  v1 = OBJC_IVAR___SkipContentIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_268B1AC88(uint64_t a1)
{
  v3 = OBJC_IVAR___SkipContentIntentResponse_code;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

char *SkipContentIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___SkipContentIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id SkipContentIntentResponse.init()()
{
  *&v0[OBJC_IVAR___SkipContentIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SkipContentIntentResponse();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SkipContentIntentResponse.init(coder:)(void *a1)
{
  *(v1 + OBJC_IVAR___SkipContentIntentResponse_code) = 0;
  v13 = type metadata accessor for SkipContentIntentResponse();
  v9 = OUTLINED_FUNCTION_7_36(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id SkipContentIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id SkipContentIntentResponse.init(backingStore:)(void *a1)
{
  *(v1 + OBJC_IVAR___SkipContentIntentResponse_code) = 0;
  v13 = type metadata accessor for SkipContentIntentResponse();
  v9 = OUTLINED_FUNCTION_7_36(v13, sel_initWithBackingStore_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id SkipContentIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_268B37B54();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id SkipContentIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___SkipContentIntentResponse_code] = 0;
  if (a1)
  {
    v2 = sub_268B37B54();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for SkipContentIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

uint64_t SkipContentDevicesUnsupportedReason.init(rawValue:)(uint64_t result)
{
  if ((result - 3) < 0xFFFFFFFFFFFFFFFELL)
  {
    return 0;
  }

  return result;
}

uint64_t sub_268B1B188@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = SkipContentDevicesUnsupportedReason.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id SkipContentDevicesResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_268B37B54();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id SkipContentDevicesResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_268B37B54();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for SkipContentDevicesResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_268B1B3D0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_268B1B40C()
{
  result = qword_2802A8ED0;
  if (!qword_2802A8ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8ED0);
  }

  return result;
}

unint64_t sub_268B1B464()
{
  result = qword_2802A8ED8;
  if (!qword_2802A8ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8ED8);
  }

  return result;
}

id sub_268B1B50C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 direction];
  *a2 = result;
  return result;
}

id sub_268B1B59C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 mediaType];
  *a2 = result;
  return result;
}

uint64_t sub_268B1B62C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_268B1AC1C();
  *a2 = result;
  return result;
}

uint64_t SetSubtitleStateDeviceUnsupportedReason.init(rawValue:)(uint64_t result)
{
  if ((result - 5) < 0xFFFFFFFFFFFFFFFCLL)
  {
    return 0;
  }

  return result;
}

id sub_268B1B77C()
{
  v1 = [v0 language];

  return v1;
}

void sub_268B1B7B4(void *a1)
{
  [v1 setLanguage_];
}

id sub_268B1B800()
{
  v1 = [v0 device];

  return v1;
}

id SetSubtitleStateIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_268B1B8FC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), SEL *a5)
{
  if (a1)
  {
    a4(0);
    v7 = sub_268B37CE4();
  }

  else
  {
    v7 = 0;
  }

  [v5 *a5];
}

id sub_268B1B984@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 device];
  *a2 = result;
  return result;
}

id sub_268B1B9C0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 language];
  *a2 = result;
  return result;
}

void sub_268B1B9FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v7 = OUTLINED_FUNCTION_6_46(a1);
  v9 = [v7 *v8];
  if (v9)
  {
    v10 = v9;
    a5(0);
    v11 = sub_268B37CF4();
  }

  else
  {
    v11 = 0;
  }

  *v5 = v11;
}

void sub_268B1BA6C(void *a1, void **a2, uint64_t a3, uint64_t a4, void (*a5)(void), SEL *a6)
{
  v7 = *a2;
  if (*a1)
  {
    a5(0);
    v8 = sub_268B37CE4();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  [v7 *a6];
}

id SetSubtitleStateIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SetSubtitleStateIntent();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SetSubtitleStateIntent.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SetSubtitleStateIntent.init(coder:)(void *a1)
{
  v13 = type metadata accessor for SetSubtitleStateIntent();
  v9 = OUTLINED_FUNCTION_7_36(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id SetSubtitleStateIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_268B37BC4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id SetSubtitleStateIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_268B37BC4();
  }

  else
  {
    v5 = 0;
  }

  v16 = type metadata accessor for SetSubtitleStateIntent();
  v12 = OUTLINED_FUNCTION_7_36(v16, sel_initWithIdentifier_backingStore_, v6, v7, v8, v9, v10, v11, v3);
  v14 = objc_msgSendSuper2(v12, v13);

  return v14;
}

id SetSubtitleStateIntent.__allocating_init(domain:verb:parametersByName:)()
{
  v2 = OUTLINED_FUNCTION_8_35();

  v3 = sub_268B37BC4();

  if (v1)
  {
    v4 = sub_268B37B54();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(v0) initWithDomain:v2 verb:v3 parametersByName:v4];

  return v5;
}

id SetSubtitleStateIntent.init(domain:verb:parametersByName:)()
{
  v2 = OUTLINED_FUNCTION_8_35();

  v3 = sub_268B37BC4();

  if (v1)
  {
    v4 = sub_268B37B54();
  }

  else
  {
    v4 = 0;
  }

  v7.receiver = v0;
  v7.super_class = type metadata accessor for SetSubtitleStateIntent();
  v5 = objc_msgSendSuper2(&v7, sel_initWithDomain_verb_parametersByName_, v2, v3, v4);

  return v5;
}

unint64_t SetSubtitleStateIntentResponseCode.init(rawValue:)(unint64_t result)
{
  if (result - 100 >= 3)
  {
    v1 = 0;
  }

  else
  {
    v1 = result;
  }

  if (result >= 7)
  {
    return v1;
  }

  return result;
}

unint64_t sub_268B1BFDC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = SetSubtitleStateIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_268B1C034()
{
  v1 = OBJC_IVAR___SetSubtitleStateIntentResponse_code;
  swift_beginAccess();
  return *&v1[v0];
}

uint64_t sub_268B1C0A0(uint64_t a1)
{
  v3 = OBJC_IVAR___SetSubtitleStateIntentResponse_code;
  result = swift_beginAccess();
  *&v3[v1] = a1;
  return result;
}

id SetSubtitleStateIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___SetSubtitleStateIntentResponse_code;
  swift_beginAccess();
  *&v6[v5] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id SetSubtitleStateIntentResponse.init()()
{
  *(OBJC_IVAR___SetSubtitleStateIntentResponse_code + v0) = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SetSubtitleStateIntentResponse();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SetSubtitleStateIntentResponse.init(coder:)(void *a1)
{
  *(OBJC_IVAR___SetSubtitleStateIntentResponse_code + v1) = 0;
  v13 = type metadata accessor for SetSubtitleStateIntentResponse();
  v9 = OUTLINED_FUNCTION_7_36(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id SetSubtitleStateIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id SetSubtitleStateIntentResponse.init(backingStore:)(void *a1)
{
  *(OBJC_IVAR___SetSubtitleStateIntentResponse_code + v1) = 0;
  v13 = type metadata accessor for SetSubtitleStateIntentResponse();
  v9 = OUTLINED_FUNCTION_7_36(v13, sel_initWithBackingStore_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id SetSubtitleStateIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_268B37B54();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id SetSubtitleStateIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *(OBJC_IVAR___SetSubtitleStateIntentResponse_code + v1) = 0;
  if (a1)
  {
    v2 = sub_268B37B54();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for SetSubtitleStateIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

uint64_t sub_268B1C58C(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_6_46(a1);
  result = SetSubtitleStateDeviceUnsupportedReason.init(rawValue:)(v2);
  *v1 = result;
  *(v1 + 8) = v4 & 1;
  return result;
}

id _s26SiriPlaybackControlIntents38SetSubtitleStateDeviceResolutionResultC14JSONDictionary6intentACSgSDySSypG_So8INIntentCtcfC_0(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_268B37B54();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id sub_268B1C768(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t))
{
  v6 = sub_268B37B54();

  v10.receiver = v3;
  v10.super_class = a3(v7);
  v8 = objc_msgSendSuper2(&v10, sel_initWithJSONDictionary_forIntent_, v6, a2);

  if (v8)
  {
  }

  return v8;
}

id sub_268B1C8BC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_268B1C8F8()
{
  result = qword_2802A8EE8;
  if (!qword_2802A8EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8EE8);
  }

  return result;
}

unint64_t sub_268B1C950()
{
  result = qword_2802A8EF0;
  if (!qword_2802A8EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8EF0);
  }

  return result;
}

unint64_t sub_268B1C9A8()
{
  result = qword_2802A8EF8;
  if (!qword_2802A8EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8EF8);
  }

  return result;
}

id sub_268B1CA2C(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_6_46(a1) enable];
  *v1 = result;
  return result;
}

id sub_268B1CAE8(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_6_46(a1) type];
  *v1 = result;
  return result;
}

uint64_t sub_268B1CB74@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_268B1C034();
  *a2 = result;
  return result;
}

uint64_t sub_268B1CCD0(void *a1, SEL *a2, void (*a3)(void))
{
  v4 = [a1 *a2];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  a3(0);
  v6 = sub_268B37CF4();

  return v6;
}

uint64_t SetAudioLanguageLanguageUnsupportedReason.init(rawValue:)(uint64_t result)
{
  if ((result - 5) < 0xFFFFFFFFFFFFFFFCLL)
  {
    return 0;
  }

  return result;
}

id SetAudioLanguageIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_268B1CE54(id *a1@<X0>, SEL *a2@<X3>, void (*a3)(void)@<X4>, uint64_t *a4@<X8>)
{
  v6 = [*a1 *a2];
  if (v6)
  {
    v7 = v6;
    a3(0);
    v8 = sub_268B37CF4();
  }

  else
  {
    v8 = 0;
  }

  *a4 = v8;
}

id SetAudioLanguageIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SetAudioLanguageIntent();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SetAudioLanguageIntent.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SetAudioLanguageIntent.init(coder:)(void *a1)
{
  v13 = type metadata accessor for SetAudioLanguageIntent();
  v9 = OUTLINED_FUNCTION_7_36(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id SetAudioLanguageIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_268B37BC4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id SetAudioLanguageIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_268B37BC4();
  }

  else
  {
    v5 = 0;
  }

  v16 = type metadata accessor for SetAudioLanguageIntent();
  v12 = OUTLINED_FUNCTION_7_36(v16, sel_initWithIdentifier_backingStore_, v6, v7, v8, v9, v10, v11, v3);
  v14 = objc_msgSendSuper2(v12, v13);

  return v14;
}

id SetAudioLanguageIntent.__allocating_init(domain:verb:parametersByName:)()
{
  v2 = OUTLINED_FUNCTION_8_35();

  v3 = sub_268B37BC4();

  if (v1)
  {
    v4 = sub_268B37B54();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(v0) initWithDomain:v2 verb:v3 parametersByName:v4];

  return v5;
}

id SetAudioLanguageIntent.init(domain:verb:parametersByName:)()
{
  v2 = OUTLINED_FUNCTION_8_35();

  v3 = sub_268B37BC4();

  if (v1)
  {
    v4 = sub_268B37B54();
  }

  else
  {
    v4 = 0;
  }

  v7.receiver = v0;
  v7.super_class = type metadata accessor for SetAudioLanguageIntent();
  v5 = objc_msgSendSuper2(&v7, sel_initWithDomain_verb_parametersByName_, v2, v3, v4);

  return v5;
}

unint64_t SetAudioLanguageIntentResponseCode.init(rawValue:)(unint64_t result)
{
  if (result == 100)
  {
    v1 = 100;
  }

  else
  {
    v1 = 0;
  }

  if (result >= 7)
  {
    return v1;
  }

  return result;
}

unint64_t sub_268B1D3B0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = SetAudioLanguageIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_268B1D408()
{
  v1 = OBJC_IVAR___SetAudioLanguageIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_268B1D474(uint64_t a1)
{
  v3 = OBJC_IVAR___SetAudioLanguageIntentResponse_code;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

char *SetAudioLanguageIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___SetAudioLanguageIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id SetAudioLanguageIntentResponse.init()()
{
  *&v0[OBJC_IVAR___SetAudioLanguageIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SetAudioLanguageIntentResponse();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SetAudioLanguageIntentResponse.init(coder:)(void *a1)
{
  *(v1 + OBJC_IVAR___SetAudioLanguageIntentResponse_code) = 0;
  v13 = type metadata accessor for SetAudioLanguageIntentResponse();
  v9 = OUTLINED_FUNCTION_7_36(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id SetAudioLanguageIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id SetAudioLanguageIntentResponse.init(backingStore:)(void *a1)
{
  *(v1 + OBJC_IVAR___SetAudioLanguageIntentResponse_code) = 0;
  v13 = type metadata accessor for SetAudioLanguageIntentResponse();
  v9 = OUTLINED_FUNCTION_7_36(v13, sel_initWithBackingStore_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id SetAudioLanguageIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_268B37B54();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id SetAudioLanguageIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___SetAudioLanguageIntentResponse_code] = 0;
  if (a1)
  {
    v2 = sub_268B37B54();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for SetAudioLanguageIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

uint64_t sub_268B1DA20@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = SetAudioLanguageLanguageUnsupportedReason.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id sub_268B1DA70(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t))
{
  v6 = sub_268B37B54();

  v10.receiver = v3;
  v10.super_class = a3(v7);
  v8 = objc_msgSendSuper2(&v10, sel_initWithJSONDictionary_forIntent_, v6, a2);

  if (v8)
  {
  }

  return v8;
}

id sub_268B1DBC4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_268B1DC00()
{
  result = qword_2802A8F08;
  if (!qword_2802A8F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8F08);
  }

  return result;
}

unint64_t sub_268B1DC58()
{
  result = qword_2802A8F10;
  if (!qword_2802A8F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8F10);
  }

  return result;
}

unint64_t sub_268B1DCB0()
{
  result = qword_2802A8F18;
  if (!qword_2802A8F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8F18);
  }

  return result;
}

uint64_t sub_268B1DDC4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_268B1D408();
  *a2 = result;
  return result;
}

void sub_268B1DF04(uint64_t a1)
{
  if (a1)
  {
    type metadata accessor for DeviceContext();
    v2 = sub_268B37CE4();
  }

  else
  {
    v2 = 0;
  }

  [v1 setDeviceContext_];
}

id WhatDidTheySayIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t WhatDidTheySayDeviceUnsupportedReason.init(rawValue:)(uint64_t result)
{
  if ((result - 5) < 0xFFFFFFFFFFFFFFFCLL)
  {
    return 0;
  }

  return result;
}

void sub_268B1E014(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 deviceContext];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for DeviceContext();
    v5 = sub_268B37CF4();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void sub_268B1E084(void *a1, void **a2)
{
  v2 = *a2;
  if (*a1)
  {
    type metadata accessor for DeviceContext();
    v3 = sub_268B37CE4();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setDeviceContext_];
}

uint64_t sub_268B1E0FC@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 startTime];
  if (v3)
  {
    v4 = v3;
    sub_268B345D4();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_268B34614();

  return __swift_storeEnumTagSinglePayload(a2, v5, 1, v6);
}

void sub_268B1E17C(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A7350, qword_268B3FF10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  sub_2688F33D8(a1, &v11 - v6);
  v8 = *a2;
  v9 = sub_268B34614();
  v10 = 0;
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) != 1)
  {
    v10 = sub_268B34594();
    (*(*(v9 - 8) + 8))(v7, v9);
  }

  [v8 setStartTime_];
}

id WhatDidTheySayIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WhatDidTheySayIntent();
  return objc_msgSendSuper2(&v2, sel_init);
}

id WhatDidTheySayIntent.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id WhatDidTheySayIntent.init(coder:)(void *a1)
{
  v13 = type metadata accessor for WhatDidTheySayIntent();
  v9 = OUTLINED_FUNCTION_7_36(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id WhatDidTheySayIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_268B37BC4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id WhatDidTheySayIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_268B37BC4();
  }

  else
  {
    v5 = 0;
  }

  v16 = type metadata accessor for WhatDidTheySayIntent();
  v12 = OUTLINED_FUNCTION_7_36(v16, sel_initWithIdentifier_backingStore_, v6, v7, v8, v9, v10, v11, v3);
  v14 = objc_msgSendSuper2(v12, v13);

  return v14;
}

id WhatDidTheySayIntent.__allocating_init(domain:verb:parametersByName:)()
{
  v2 = OUTLINED_FUNCTION_8_35();

  v3 = sub_268B37BC4();

  if (v1)
  {
    v4 = sub_268B37B54();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(v0) initWithDomain:v2 verb:v3 parametersByName:v4];

  return v5;
}

id WhatDidTheySayIntent.init(domain:verb:parametersByName:)()
{
  v2 = OUTLINED_FUNCTION_8_35();

  v3 = sub_268B37BC4();

  if (v1)
  {
    v4 = sub_268B37B54();
  }

  else
  {
    v4 = 0;
  }

  v7.receiver = v0;
  v7.super_class = type metadata accessor for WhatDidTheySayIntent();
  v5 = objc_msgSendSuper2(&v7, sel_initWithDomain_verb_parametersByName_, v2, v3, v4);

  return v5;
}

unint64_t WhatDidTheySayIntentResponseCode.init(rawValue:)(unint64_t result)
{
  if (result - 100 >= 5)
  {
    v1 = 0;
  }

  else
  {
    v1 = result;
  }

  if (result >= 7)
  {
    return v1;
  }

  return result;
}

unint64_t sub_268B1E76C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = WhatDidTheySayIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_268B1E7C4()
{
  v1 = OBJC_IVAR___WhatDidTheySayIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_268B1E830(uint64_t a1)
{
  v3 = OBJC_IVAR___WhatDidTheySayIntentResponse_code;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

char *WhatDidTheySayIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___WhatDidTheySayIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id WhatDidTheySayIntentResponse.init()()
{
  *&v0[OBJC_IVAR___WhatDidTheySayIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WhatDidTheySayIntentResponse();
  return objc_msgSendSuper2(&v2, sel_init);
}

id WhatDidTheySayIntentResponse.init(coder:)(void *a1)
{
  *(v1 + OBJC_IVAR___WhatDidTheySayIntentResponse_code) = 0;
  v13 = type metadata accessor for WhatDidTheySayIntentResponse();
  v9 = OUTLINED_FUNCTION_7_36(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id WhatDidTheySayIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id WhatDidTheySayIntentResponse.init(backingStore:)(void *a1)
{
  *(v1 + OBJC_IVAR___WhatDidTheySayIntentResponse_code) = 0;
  v13 = type metadata accessor for WhatDidTheySayIntentResponse();
  v9 = OUTLINED_FUNCTION_7_36(v13, sel_initWithBackingStore_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id WhatDidTheySayIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_268B37B54();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id WhatDidTheySayIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___WhatDidTheySayIntentResponse_code] = 0;
  if (a1)
  {
    v2 = sub_268B37B54();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for WhatDidTheySayIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

uint64_t sub_268B1ED1C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = WhatDidTheySayDeviceUnsupportedReason.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id WhatDidTheySayDeviceResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_268B37B54();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id WhatDidTheySayDeviceResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_268B37B54();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for WhatDidTheySayDeviceResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_268B1EF64(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_268B1EFA0()
{
  result = qword_2802A8F28;
  if (!qword_2802A8F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8F28);
  }

  return result;
}

unint64_t sub_268B1EFF8()
{
  result = qword_2802A8F30;
  if (!qword_2802A8F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8F30);
  }

  return result;
}

uint64_t sub_268B1F080@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_268B1E7C4();
  *a2 = result;
  return result;
}

uint64_t sub_268B1F16C(void *a1)
{
  v1 = [a1 deviceContext];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for DeviceContext();
  v3 = sub_268B37CF4();

  return v3;
}

id SeekTimeIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t SeekTimePlayheadPositionUnsupportedReason.init(rawValue:)(uint64_t result)
{
  if ((result - 4) < 0xFFFFFFFFFFFFFFFDLL)
  {
    return 0;
  }

  return result;
}

id sub_268B1F268@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 playheadPosition];
  *a2 = result;
  return result;
}

id sub_268B1F2A4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 shouldStartPlaybackAfterSeek];
  *a2 = result;
  return result;
}

id sub_268B1F2E0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 isSkipToEnd];
  *a2 = result;
  return result;
}

id SeekTimeIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SeekTimeIntent();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SeekTimeIntent.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SeekTimeIntent.init(coder:)(void *a1)
{
  v13 = type metadata accessor for SeekTimeIntent();
  v9 = OUTLINED_FUNCTION_7_36(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id SeekTimeIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_268B37BC4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id SeekTimeIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_268B37BC4();
  }

  else
  {
    v5 = 0;
  }

  v16 = type metadata accessor for SeekTimeIntent();
  v12 = OUTLINED_FUNCTION_7_36(v16, sel_initWithIdentifier_backingStore_, v6, v7, v8, v9, v10, v11, v3);
  v14 = objc_msgSendSuper2(v12, v13);

  return v14;
}

id SeekTimeIntent.__allocating_init(domain:verb:parametersByName:)()
{
  v2 = OUTLINED_FUNCTION_8_35();

  v3 = sub_268B37BC4();

  if (v1)
  {
    v4 = sub_268B37B54();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(v0) initWithDomain:v2 verb:v3 parametersByName:v4];

  return v5;
}

id SeekTimeIntent.init(domain:verb:parametersByName:)()
{
  v2 = OUTLINED_FUNCTION_8_35();

  v3 = sub_268B37BC4();

  if (v1)
  {
    v4 = sub_268B37B54();
  }

  else
  {
    v4 = 0;
  }

  v7.receiver = v0;
  v7.super_class = type metadata accessor for SeekTimeIntent();
  v5 = objc_msgSendSuper2(&v7, sel_initWithDomain_verb_parametersByName_, v2, v3, v4);

  return v5;
}

unint64_t SeekTimeIntentResponseCode.init(rawValue:)(unint64_t result)
{
  if (result - 100 >= 2)
  {
    v1 = 0;
  }

  else
  {
    v1 = result;
  }

  if (result >= 7)
  {
    return v1;
  }

  return result;
}

unint64_t sub_268B1F808@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = SeekTimeIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_268B1F860()
{
  v1 = OBJC_IVAR___SeekTimeIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_268B1F8CC(uint64_t a1)
{
  v3 = OBJC_IVAR___SeekTimeIntentResponse_code;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

char *SeekTimeIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___SeekTimeIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id SeekTimeIntentResponse.init()()
{
  *&v0[OBJC_IVAR___SeekTimeIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SeekTimeIntentResponse();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SeekTimeIntentResponse.init(coder:)(void *a1)
{
  *(v1 + OBJC_IVAR___SeekTimeIntentResponse_code) = 0;
  v13 = type metadata accessor for SeekTimeIntentResponse();
  v9 = OUTLINED_FUNCTION_7_36(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id SeekTimeIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id SeekTimeIntentResponse.init(backingStore:)(void *a1)
{
  *(v1 + OBJC_IVAR___SeekTimeIntentResponse_code) = 0;
  v13 = type metadata accessor for SeekTimeIntentResponse();
  v9 = OUTLINED_FUNCTION_7_36(v13, sel_initWithBackingStore_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id SeekTimeIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_268B37B54();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id SeekTimeIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___SeekTimeIntentResponse_code] = 0;
  if (a1)
  {
    v2 = sub_268B37B54();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for SeekTimeIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

uint64_t SeekTimeDevicesUnsupportedReason.init(rawValue:)(uint64_t result)
{
  if ((result - 3) < 0xFFFFFFFFFFFFFFFELL)
  {
    return 0;
  }

  return result;
}

uint64_t sub_268B1FDCC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = SeekTimeDevicesUnsupportedReason.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_268B1FEC4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = SeekTimePlayheadPositionUnsupportedReason.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id sub_268B1FF10(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t))
{
  v6 = sub_268B37B54();

  v10.receiver = v3;
  v10.super_class = a3(v7);
  v8 = objc_msgSendSuper2(&v10, sel_initWithJSONDictionary_forIntent_, v6, a2);

  if (v8)
  {
  }

  return v8;
}

id sub_268B20064(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_268B200A0()
{
  result = qword_2802A8F40;
  if (!qword_2802A8F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8F40);
  }

  return result;
}

unint64_t sub_268B200F8()
{
  result = qword_2802A8F48;
  if (!qword_2802A8F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8F48);
  }

  return result;
}

unint64_t sub_268B20150()
{
  result = qword_2802A8F50;
  if (!qword_2802A8F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8F50);
  }

  return result;
}

id sub_268B202A0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 mediaType];
  *a2 = result;
  return result;
}

uint64_t sub_268B20330@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_268B1F860();
  *a2 = result;
  return result;
}

id SetShuffleStateIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SetShuffleStateIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SetShuffleStateIntent();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SetShuffleStateIntent.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SetShuffleStateIntent.init(coder:)(void *a1)
{
  v13 = type metadata accessor for SetShuffleStateIntent();
  v9 = OUTLINED_FUNCTION_7_36(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id SetShuffleStateIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_268B37BC4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id SetShuffleStateIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_268B37BC4();
  }

  else
  {
    v5 = 0;
  }

  v16 = type metadata accessor for SetShuffleStateIntent();
  v12 = OUTLINED_FUNCTION_7_36(v16, sel_initWithIdentifier_backingStore_, v6, v7, v8, v9, v10, v11, v3);
  v14 = objc_msgSendSuper2(v12, v13);

  return v14;
}

id SetShuffleStateIntent.__allocating_init(domain:verb:parametersByName:)()
{
  v2 = OUTLINED_FUNCTION_8_35();

  v3 = sub_268B37BC4();

  if (v1)
  {
    v4 = sub_268B37B54();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(v0) initWithDomain:v2 verb:v3 parametersByName:v4];

  return v5;
}

id SetShuffleStateIntent.init(domain:verb:parametersByName:)()
{
  v2 = OUTLINED_FUNCTION_8_35();

  v3 = sub_268B37BC4();

  if (v1)
  {
    v4 = sub_268B37B54();
  }

  else
  {
    v4 = 0;
  }

  v7.receiver = v0;
  v7.super_class = type metadata accessor for SetShuffleStateIntent();
  v5 = objc_msgSendSuper2(&v7, sel_initWithDomain_verb_parametersByName_, v2, v3, v4);

  return v5;
}

unint64_t SetShuffleStateIntentResponseCode.init(rawValue:)(unint64_t result)
{
  if (result == 100)
  {
    v1 = 100;
  }

  else
  {
    v1 = 0;
  }

  if (result >= 7)
  {
    return v1;
  }

  return result;
}

unint64_t sub_268B209C8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = SetShuffleStateIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_268B20A20()
{
  v1 = OBJC_IVAR___SetShuffleStateIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_268B20A8C(uint64_t a1)
{
  v3 = OBJC_IVAR___SetShuffleStateIntentResponse_code;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

char *SetShuffleStateIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___SetShuffleStateIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id SetShuffleStateIntentResponse.init()()
{
  *&v0[OBJC_IVAR___SetShuffleStateIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SetShuffleStateIntentResponse();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SetShuffleStateIntentResponse.init(coder:)(void *a1)
{
  *(v1 + OBJC_IVAR___SetShuffleStateIntentResponse_code) = 0;
  v13 = type metadata accessor for SetShuffleStateIntentResponse();
  v9 = OUTLINED_FUNCTION_7_36(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id SetShuffleStateIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id SetShuffleStateIntentResponse.init(backingStore:)(void *a1)
{
  *(v1 + OBJC_IVAR___SetShuffleStateIntentResponse_code) = 0;
  v13 = type metadata accessor for SetShuffleStateIntentResponse();
  v9 = OUTLINED_FUNCTION_7_36(v13, sel_initWithBackingStore_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id SetShuffleStateIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_268B37B54();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id SetShuffleStateIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___SetShuffleStateIntentResponse_code] = 0;
  if (a1)
  {
    v2 = sub_268B37B54();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for SetShuffleStateIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

uint64_t SetShuffleStateDevicesUnsupportedReason.init(rawValue:)(uint64_t result)
{
  if ((result - 3) < 0xFFFFFFFFFFFFFFFELL)
  {
    return 0;
  }

  return result;
}

uint64_t sub_268B20F8C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = SetShuffleStateDevicesUnsupportedReason.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id SetShuffleStateDevicesResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_268B37B54();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id SetShuffleStateDevicesResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_268B37B54();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for SetShuffleStateDevicesResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_268B211D4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_268B21210()
{
  result = qword_2802A8F60;
  if (!qword_2802A8F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8F60);
  }

  return result;
}

unint64_t sub_268B21268()
{
  result = qword_2802A8F68;
  if (!qword_2802A8F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8F68);
  }

  return result;
}

id sub_268B21310@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 shuffleState];
  *a2 = result;
  return result;
}

id sub_268B213A0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 mediaType];
  *a2 = result;
  return result;
}

uint64_t sub_268B21430@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_268B20A20();
  *a2 = result;
  return result;
}

id SetRepeatStateIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SetRepeatStateIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SetRepeatStateIntent();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SetRepeatStateIntent.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SetRepeatStateIntent.init(coder:)(void *a1)
{
  v13 = type metadata accessor for SetRepeatStateIntent();
  v9 = OUTLINED_FUNCTION_7_36(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id SetRepeatStateIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_268B37BC4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id SetRepeatStateIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_268B37BC4();
  }

  else
  {
    v5 = 0;
  }

  v16 = type metadata accessor for SetRepeatStateIntent();
  v12 = OUTLINED_FUNCTION_7_36(v16, sel_initWithIdentifier_backingStore_, v6, v7, v8, v9, v10, v11, v3);
  v14 = objc_msgSendSuper2(v12, v13);

  return v14;
}

id SetRepeatStateIntent.__allocating_init(domain:verb:parametersByName:)()
{
  v2 = OUTLINED_FUNCTION_8_35();

  v3 = sub_268B37BC4();

  if (v1)
  {
    v4 = sub_268B37B54();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(v0) initWithDomain:v2 verb:v3 parametersByName:v4];

  return v5;
}

id SetRepeatStateIntent.init(domain:verb:parametersByName:)()
{
  v2 = OUTLINED_FUNCTION_8_35();

  v3 = sub_268B37BC4();

  if (v1)
  {
    v4 = sub_268B37B54();
  }

  else
  {
    v4 = 0;
  }

  v7.receiver = v0;
  v7.super_class = type metadata accessor for SetRepeatStateIntent();
  v5 = objc_msgSendSuper2(&v7, sel_initWithDomain_verb_parametersByName_, v2, v3, v4);

  return v5;
}

unint64_t SetRepeatStateIntentResponseCode.init(rawValue:)(unint64_t result)
{
  if (result == 100)
  {
    v1 = 100;
  }

  else
  {
    v1 = 0;
  }

  if (result >= 7)
  {
    return v1;
  }

  return result;
}

unint64_t sub_268B21A8C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = SetRepeatStateIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_268B21AE4()
{
  v1 = OBJC_IVAR___SetRepeatStateIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_268B21B50(uint64_t a1)
{
  v3 = OBJC_IVAR___SetRepeatStateIntentResponse_code;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

char *SetRepeatStateIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___SetRepeatStateIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id SetRepeatStateIntentResponse.init()()
{
  *&v0[OBJC_IVAR___SetRepeatStateIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SetRepeatStateIntentResponse();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SetRepeatStateIntentResponse.init(coder:)(void *a1)
{
  *(v1 + OBJC_IVAR___SetRepeatStateIntentResponse_code) = 0;
  v13 = type metadata accessor for SetRepeatStateIntentResponse();
  v9 = OUTLINED_FUNCTION_7_36(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id SetRepeatStateIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id SetRepeatStateIntentResponse.init(backingStore:)(void *a1)
{
  *(v1 + OBJC_IVAR___SetRepeatStateIntentResponse_code) = 0;
  v13 = type metadata accessor for SetRepeatStateIntentResponse();
  v9 = OUTLINED_FUNCTION_7_36(v13, sel_initWithBackingStore_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id SetRepeatStateIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_268B37B54();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id SetRepeatStateIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___SetRepeatStateIntentResponse_code] = 0;
  if (a1)
  {
    v2 = sub_268B37B54();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for SetRepeatStateIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

uint64_t SetRepeatStateDevicesUnsupportedReason.init(rawValue:)(uint64_t result)
{
  if ((result - 3) < 0xFFFFFFFFFFFFFFFELL)
  {
    return 0;
  }

  return result;
}

uint64_t sub_268B22050@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = SetRepeatStateDevicesUnsupportedReason.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id SetRepeatStateDevicesResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_268B37B54();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id SetRepeatStateDevicesResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_268B37B54();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for SetRepeatStateDevicesResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_268B22298(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_268B222D4()
{
  result = qword_2802A8F78;
  if (!qword_2802A8F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8F78);
  }

  return result;
}

unint64_t sub_268B2232C()
{
  result = qword_2802A8F80;
  if (!qword_2802A8F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8F80);
  }

  return result;
}

id sub_268B223D4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 repeatState];
  *a2 = result;
  return result;
}

id sub_268B22464@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 mediaType];
  *a2 = result;
  return result;
}

uint64_t sub_268B224F4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_268B21AE4();
  *a2 = result;
  return result;
}

id GetVolumeLevelIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t GetVolumeLevelDeviceUnsupportedReason.init(rawValue:)(uint64_t result)
{
  if ((result - 7) < 0xFFFFFFFFFFFFFFFALL)
  {
    return 0;
  }

  return result;
}

id GetVolumeLevelIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GetVolumeLevelIntent();
  return objc_msgSendSuper2(&v2, sel_init);
}

id GetVolumeLevelIntent.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id GetVolumeLevelIntent.init(coder:)(void *a1)
{
  VolumeLevelIntent = type metadata accessor for GetVolumeLevelIntent();
  v9 = OUTLINED_FUNCTION_7_36(VolumeLevelIntent, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id GetVolumeLevelIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_268B37BC4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id GetVolumeLevelIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_268B37BC4();
  }

  else
  {
    v5 = 0;
  }

  VolumeLevelIntent = type metadata accessor for GetVolumeLevelIntent();
  v12 = OUTLINED_FUNCTION_7_36(VolumeLevelIntent, sel_initWithIdentifier_backingStore_, v6, v7, v8, v9, v10, v11, v3);
  v14 = objc_msgSendSuper2(v12, v13);

  return v14;
}

id GetVolumeLevelIntent.__allocating_init(domain:verb:parametersByName:)()
{
  v2 = OUTLINED_FUNCTION_8_35();

  v3 = sub_268B37BC4();

  if (v1)
  {
    v4 = sub_268B37B54();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(v0) initWithDomain:v2 verb:v3 parametersByName:v4];

  return v5;
}

id GetVolumeLevelIntent.init(domain:verb:parametersByName:)()
{
  v2 = OUTLINED_FUNCTION_8_35();

  v3 = sub_268B37BC4();

  if (v1)
  {
    v4 = sub_268B37B54();
  }

  else
  {
    v4 = 0;
  }

  v7.receiver = v0;
  v7.super_class = type metadata accessor for GetVolumeLevelIntent();
  v5 = objc_msgSendSuper2(&v7, sel_initWithDomain_verb_parametersByName_, v2, v3, v4);

  return v5;
}

unint64_t GetVolumeLevelIntentResponseCode.init(rawValue:)(unint64_t result)
{
  if (result == 100)
  {
    v1 = 100;
  }

  else
  {
    v1 = 0;
  }

  if (result >= 7)
  {
    return v1;
  }

  return result;
}

unint64_t sub_268B22B64@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = GetVolumeLevelIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id sub_268B22B98@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 currentVolumeLevel];
  *a2 = result;
  return result;
}

uint64_t sub_268B22BF8()
{
  v1 = OBJC_IVAR___GetVolumeLevelIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_268B22C64(uint64_t a1)
{
  v3 = OBJC_IVAR___GetVolumeLevelIntentResponse_code;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

char *GetVolumeLevelIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___GetVolumeLevelIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id GetVolumeLevelIntentResponse.init()()
{
  *&v0[OBJC_IVAR___GetVolumeLevelIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GetVolumeLevelIntentResponse();
  return objc_msgSendSuper2(&v2, sel_init);
}

id GetVolumeLevelIntentResponse.init(coder:)(void *a1)
{
  *(v1 + OBJC_IVAR___GetVolumeLevelIntentResponse_code) = 0;
  VolumeLevelIntentResponse = type metadata accessor for GetVolumeLevelIntentResponse();
  v9 = OUTLINED_FUNCTION_7_36(VolumeLevelIntentResponse, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id GetVolumeLevelIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id GetVolumeLevelIntentResponse.init(backingStore:)(void *a1)
{
  *(v1 + OBJC_IVAR___GetVolumeLevelIntentResponse_code) = 0;
  VolumeLevelIntentResponse = type metadata accessor for GetVolumeLevelIntentResponse();
  v9 = OUTLINED_FUNCTION_7_36(VolumeLevelIntentResponse, sel_initWithBackingStore_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id GetVolumeLevelIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_268B37B54();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id GetVolumeLevelIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___GetVolumeLevelIntentResponse_code] = 0;
  if (a1)
  {
    v2 = sub_268B37B54();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for GetVolumeLevelIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

uint64_t sub_268B23150@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = GetVolumeLevelDeviceUnsupportedReason.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id GetVolumeLevelDeviceResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_268B37B54();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id GetVolumeLevelDeviceResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_268B37B54();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for GetVolumeLevelDeviceResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_268B23398(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_268B233D4()
{
  result = qword_2802A8F90;
  if (!qword_2802A8F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8F90);
  }

  return result;
}

unint64_t sub_268B2342C()
{
  result = qword_2802A8F98;
  if (!qword_2802A8F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8F98);
  }

  return result;
}

uint64_t sub_268B2354C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_268B22BF8();
  *a2 = result;
  return result;
}

uint64_t SetVolumeLevelDevicesUnsupportedReason.init(rawValue:)(uint64_t result)
{
  if ((result - 6) < 0xFFFFFFFFFFFFFFFBLL)
  {
    return 0;
  }

  return result;
}

uint64_t SetVolumeLevelVolumeLevelUnsupportedReason.init(rawValue:)(uint64_t result)
{
  if ((result - 5) < 0xFFFFFFFFFFFFFFFCLL)
  {
    return 0;
  }

  return result;
}

id SetVolumeLevelIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_268B236E8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 volumeLevel];
  *a2 = result;
  return result;
}

id SetVolumeLevelIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SetVolumeLevelIntent();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SetVolumeLevelIntent.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SetVolumeLevelIntent.init(coder:)(void *a1)
{
  v13 = type metadata accessor for SetVolumeLevelIntent();
  v9 = OUTLINED_FUNCTION_7_36(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id SetVolumeLevelIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_268B37BC4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id SetVolumeLevelIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_268B37BC4();
  }

  else
  {
    v5 = 0;
  }

  v16 = type metadata accessor for SetVolumeLevelIntent();
  v12 = OUTLINED_FUNCTION_7_36(v16, sel_initWithIdentifier_backingStore_, v6, v7, v8, v9, v10, v11, v3);
  v14 = objc_msgSendSuper2(v12, v13);

  return v14;
}

id SetVolumeLevelIntent.__allocating_init(domain:verb:parametersByName:)()
{
  v2 = OUTLINED_FUNCTION_8_35();

  v3 = sub_268B37BC4();

  if (v1)
  {
    v4 = sub_268B37B54();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(v0) initWithDomain:v2 verb:v3 parametersByName:v4];

  return v5;
}

id SetVolumeLevelIntent.init(domain:verb:parametersByName:)()
{
  v2 = OUTLINED_FUNCTION_8_35();

  v3 = sub_268B37BC4();

  if (v1)
  {
    v4 = sub_268B37B54();
  }

  else
  {
    v4 = 0;
  }

  v7.receiver = v0;
  v7.super_class = type metadata accessor for SetVolumeLevelIntent();
  v5 = objc_msgSendSuper2(&v7, sel_initWithDomain_verb_parametersByName_, v2, v3, v4);

  return v5;
}

unint64_t SetVolumeLevelIntentResponseCode.init(rawValue:)(unint64_t result)
{
  if (result - 100 >= 3)
  {
    v1 = 0;
  }

  else
  {
    v1 = result;
  }

  if (result >= 7)
  {
    return v1;
  }

  return result;
}

unint64_t sub_268B23C10@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = SetVolumeLevelIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_268B23C68()
{
  v1 = OBJC_IVAR___SetVolumeLevelIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_268B23CD4(uint64_t a1)
{
  v3 = OBJC_IVAR___SetVolumeLevelIntentResponse_code;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

char *SetVolumeLevelIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___SetVolumeLevelIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id SetVolumeLevelIntentResponse.init()()
{
  *&v0[OBJC_IVAR___SetVolumeLevelIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SetVolumeLevelIntentResponse();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SetVolumeLevelIntentResponse.init(coder:)(void *a1)
{
  *(v1 + OBJC_IVAR___SetVolumeLevelIntentResponse_code) = 0;
  v13 = type metadata accessor for SetVolumeLevelIntentResponse();
  v9 = OUTLINED_FUNCTION_7_36(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id SetVolumeLevelIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id SetVolumeLevelIntentResponse.init(backingStore:)(void *a1)
{
  *(v1 + OBJC_IVAR___SetVolumeLevelIntentResponse_code) = 0;
  v13 = type metadata accessor for SetVolumeLevelIntentResponse();
  v9 = OUTLINED_FUNCTION_7_36(v13, sel_initWithBackingStore_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id SetVolumeLevelIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_268B37B54();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id SetVolumeLevelIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___SetVolumeLevelIntentResponse_code] = 0;
  if (a1)
  {
    v2 = sub_268B37B54();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for SetVolumeLevelIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

uint64_t sub_268B241C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = SetVolumeLevelDevicesUnsupportedReason.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_268B242B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = SetVolumeLevelVolumeLevelUnsupportedReason.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id sub_268B24304(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t))
{
  v6 = sub_268B37B54();

  v10.receiver = v3;
  v10.super_class = a3(v7);
  v8 = objc_msgSendSuper2(&v10, sel_initWithJSONDictionary_forIntent_, v6, a2);

  if (v8)
  {
  }

  return v8;
}

id sub_268B24458(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_268B24494()
{
  result = qword_2802A8FA8;
  if (!qword_2802A8FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8FA8);
  }

  return result;
}

unint64_t sub_268B244EC()
{
  result = qword_2802A8FB0;
  if (!qword_2802A8FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8FB0);
  }

  return result;
}

unint64_t sub_268B24544()
{
  result = qword_2802A8FB8;
  if (!qword_2802A8FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8FB8);
  }

  return result;
}

id sub_268B24644@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 settingAttribute];
  *a2 = result;
  return result;
}

uint64_t sub_268B246E8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_268B23C68();
  *a2 = result;
  return result;
}

id AddSpeakerIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t AddSpeakerSourceUnsupportedReason.init(rawValue:)(uint64_t result)
{
  if ((result - 5) < 0xFFFFFFFFFFFFFFFCLL)
  {
    return 0;
  }

  return result;
}

uint64_t AddSpeakerDestinationsUnsupportedReason.init(rawValue:)(uint64_t result)
{
  if ((result - 4) < 0xFFFFFFFFFFFFFFFDLL)
  {
    return 0;
  }

  return result;
}

id sub_268B248CC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 source];
  *a2 = result;
  return result;
}

void sub_268B24908(id *a1@<X0>, SEL *a2@<X3>, void (*a3)(void)@<X4>, uint64_t *a4@<X8>)
{
  v6 = [*a1 *a2];
  if (v6)
  {
    v7 = v6;
    a3(0);
    v8 = sub_268B37CF4();
  }

  else
  {
    v8 = 0;
  }

  *a4 = v8;
}

void sub_268B2497C(void *a1, void **a2, uint64_t a3, uint64_t a4, void (*a5)(void), SEL *a6)
{
  v7 = *a2;
  if (*a1)
  {
    a5(0);
    v8 = sub_268B37CE4();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  [v7 *a6];
}

id AddSpeakerIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AddSpeakerIntent();
  return objc_msgSendSuper2(&v2, sel_init);
}

id AddSpeakerIntent.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id AddSpeakerIntent.init(coder:)(void *a1)
{
  v13 = type metadata accessor for AddSpeakerIntent();
  v9 = OUTLINED_FUNCTION_7_36(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}