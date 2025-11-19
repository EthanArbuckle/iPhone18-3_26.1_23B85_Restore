uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1C9557508(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_1C9557548(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1C95575BC()
{
  v1 = [v0 domain];
  v2 = sub_1C96A7024();
  v4 = v3;

  if (v2 == sub_1C96A7024() && v4 == v5)
  {
  }

  else
  {
    v7 = sub_1C96A7DE4();

    if ((v7 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  if ([v0 code] == 20)
  {
    return;
  }

LABEL_9:
  v8 = [v0 domain];
  v9 = sub_1C96A7024();
  v11 = v10;

  if (v9 == sub_1C96A7024() && v11 == v12)
  {

LABEL_16:
    if ([v0 code] == -999)
    {
      return;
    }

    goto LABEL_18;
  }

  v14 = sub_1C96A7DE4();

  if (v14)
  {
    goto LABEL_16;
  }

LABEL_18:

  sub_1C955775C(v0);
}

void sub_1C955775C(void *a1)
{
  v2 = [a1 userInfo];
  v3 = sub_1C96A6ED4();

  v4 = sub_1C96A7024();
  sub_1C94FA584(v4, v5, v3);

  if (!v17)
  {
    sub_1C9557AB8(v16, &qword_1EC3A4A90);
LABEL_14:
    v11 = [a1 userInfo];
    v12 = sub_1C96A6ED4();

    v13 = sub_1C96A7024();
    sub_1C94FA584(v13, v14, v12);

    if (v17)
    {
      sub_1C946B5D0(0, &qword_1EC3A5838);
      if (swift_dynamicCast())
      {
        sub_1C95575BC();
      }
    }

    else
    {
      sub_1C9557AB8(v16, &qword_1EC3A4A90);
    }

    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5840);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_14;
  }

  v6 = sub_1C946D04C();
  for (i = 0; ; ++i)
  {
    if (v6 == i)
    {

      goto LABEL_14;
    }

    if ((v15 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1CCA8D440](i);
    }

    else
    {
      if (i >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v8 = *(v15 + 8 * i + 32);
    }

    v9 = v8;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v10 = sub_1C95575BC();

    if (v10)
    {

      return;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

unint64_t sub_1C9557A00()
{
  result = qword_1EC3A5818;
  if (!qword_1EC3A5818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A5818);
  }

  return result;
}

uint64_t sub_1C9557A5C(uint64_t a1)
{
  v2 = sub_1C96A5D14();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C9557AB8(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  OUTLINED_FUNCTION_0_36();
  (*(v3 + 8))(a1);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for WeatherConfigurationManager.ServiceError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C9557BEC()
{
  result = qword_1EC3A5848;
  if (!qword_1EC3A5848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A5848);
  }

  return result;
}

uint64_t NotificationAuthorizationManager.requestAuthorization(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1C96A6564();
  OUTLINED_FUNCTION_1();
  v26 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14();
  v11 = v10 - v9;
  v25 = sub_1C96A65E4();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_14();
  v17 = v16 - v15;
  if (qword_1EDB7AC88 != -1)
  {
    swift_once();
  }

  v18 = sub_1C96A6154();
  __swift_project_value_buffer(v18, qword_1EDB7AC90);
  v19 = sub_1C96A6134();
  v20 = sub_1C96A76A4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_1C945E000, v19, v20, "Requesting notification permissions", v21, 2u);
    MEMORY[0x1CCA8E3D0](v21, -1, -1);
  }

  v22 = swift_allocObject();
  v22[2] = v3;
  v22[3] = a1;
  v22[4] = a2;
  aBlock[4] = sub_1C9558C1C;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C946FCF8;
  aBlock[3] = &block_descriptor_6;
  v23 = _Block_copy(aBlock);
  sub_1C96A3D04();
  sub_1C96A3D04();
  sub_1C96A6594();
  sub_1C9469BD0(&qword_1EDB7CF40, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5370);
  sub_1C9469C60(&qword_1EDB7CE80, &unk_1EC3A5370);
  sub_1C96A79E4();
  MEMORY[0x1CCA8D100](0, v17, v11, v23);
  _Block_release(v23);
  (*(v26 + 8))(v11, v6);
  (*(v13 + 8))(v17, v25);
}

void sub_1C9557FC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 16);
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = a2;
  v7[4] = a3;
  v9[4] = sub_1C9558E04;
  v9[5] = v7;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1C9558A00;
  v9[3] = &block_descriptor_33;
  v8 = _Block_copy(v9);
  sub_1C96A3D04();

  [v5 requestAuthorizationWithOptions:54 completionHandler:v8];
  _Block_release(v8);
}

void sub_1C95580DC(char a1, void *a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v7 = sub_1C9558234(a2, a1);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = *(Strong + 16);
    v11 = swift_allocObject();
    *(v11 + 16) = a4;
    *(v11 + 24) = a5;
    *(v11 + 32) = v9;
    *(v11 + 40) = v7;
    aBlock[4] = sub_1C9558E10;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C94C20E0;
    aBlock[3] = &block_descriptor_39;
    v12 = _Block_copy(aBlock);
    v13 = v10;
    sub_1C96A3D04();
    sub_1C96A3D04();

    [v13 getNotificationSettingsWithCompletionHandler_];
    _Block_release(v12);
  }

  else
  {
    a4();
  }
}

uint64_t sub_1C9558234(void *a1, char a2)
{
  if (a1)
  {
    v3 = a1;
    if (qword_1EDB7AC88 != -1)
    {
      swift_once();
    }

    v4 = sub_1C96A6154();
    __swift_project_value_buffer(v4, qword_1EDB7AC90);
    v5 = a1;
    v6 = sub_1C96A6134();
    v7 = sub_1C96A76A4();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v15 = v9;
      *v8 = 136446210;
      v10 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5380);
      v11 = sub_1C96A70A4();
      v13 = sub_1C9484164(v11, v12, &v15);

      *(v8 + 4) = v13;
      _os_log_impl(&dword_1C945E000, v6, v7, "Received error requesting notification permissions. %{public}s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x1CCA8E3D0](v9, -1, -1);
      MEMORY[0x1CCA8E3D0](v8, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  else if (a2)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_1C95583E8(void *a1, uint64_t (*a2)(BOOL), uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v8 = [a1 authorizationStatus];
  if (v8)
  {
    v9 = a5;
    v10 = *(a4 + 24);
    if (v10 == 3 || v10 != a5)
    {
      *(a4 + 24) = a5;
      v12 = swift_allocObject();
      *(v12 + 16) = a4;
      *(v12 + 24) = v9;
      sub_1C96A3D04();
      sub_1C9558628(sub_1C9558E20, v12);
    }
  }

  else
  {
    if (qword_1EDB7AC88 != -1)
    {
      swift_once();
    }

    v13 = sub_1C96A6154();
    __swift_project_value_buffer(v13, qword_1EDB7AC90);
    v14 = sub_1C96A6134();
    v15 = sub_1C96A76A4();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1C945E000, v14, v15, "[TCC] Did not select valid authorization", v16, 2u);
      MEMORY[0x1CCA8E3D0](v16, -1, -1);
    }
  }

  return a2(v8 != 0);
}

uint64_t sub_1C9558568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v13[3] = type metadata accessor for NotificationAuthorizationManager();
  v13[4] = &protocol witness table for NotificationAuthorizationManager;
  v13[0] = a3;
  v8 = sub_1C94C3018(a4);
  v10 = v9;
  v11 = *(a2 + 8);
  sub_1C96A3D04();
  v11(v13, v8, v10 & 1, ObjectType, a2);
  sub_1C94C30F8(v8, v10 & 1);
  return __swift_destroy_boxed_opaque_existential_1Tm(v13);
}

uint64_t sub_1C9558628(uint64_t a1, uint64_t a2)
{
  v23 = a1;
  v24 = a2;
  v18 = sub_1C96A6564();
  v3 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1C96A65E4();
  v6 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C96A50E4();
  swift_beginAccess();
  v25 = v2;
  v9 = *(v2 + 32);
  sub_1C96A53C4();
  sub_1C96A50F4();
  result = sub_1C946D04C();
  v28 = v9;
  v29 = result;
  v11 = 0;
  v26 = v9 & 0xFFFFFFFFFFFFFF8;
  v27 = v9 & 0xC000000000000001;
  v21 = v32;
  v20 = (v3 + 8);
  v19 = (v6 + 8);
  while (1)
  {
    if (v29 == v11)
    {
    }

    if (v27)
    {
      result = MEMORY[0x1CCA8D440](v11, v28);
      v12 = result;
    }

    else
    {
      if (v11 >= *(v26 + 16))
      {
        goto LABEL_11;
      }

      v12 = *(v28 + 8 * v11 + 32);
      result = sub_1C96A3D04();
    }

    if (__OFADD__(v11, 1))
    {
      break;
    }

    v13 = swift_allocObject();
    v14 = v24;
    v13[2] = v23;
    v13[3] = v14;
    v13[4] = v12;
    v32[2] = sub_1C9558E78;
    v32[3] = v13;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    v32[0] = sub_1C946FCF8;
    v32[1] = &block_descriptor_48;
    v15 = _Block_copy(aBlock);
    sub_1C96A3D04();
    sub_1C96A3D04();
    sub_1C96A6594();
    v30 = MEMORY[0x1E69E7CC0];
    sub_1C9469BD0(&qword_1EDB7CF40, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5370);
    sub_1C9469C60(&qword_1EDB7CE80, &unk_1EC3A5370);
    v16 = v18;
    sub_1C96A79E4();
    MEMORY[0x1CCA8D100](0, v8, v5, v15);
    _Block_release(v15);

    (*v20)(v5, v16);
    (*v19)(v8, v22);

    ++v11;
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

void sub_1C9558A00(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  sub_1C96A3D04();
  v6 = a3;
  v5(a2, a3);
}

uint64_t NotificationAuthorizationManager.removeObserver(_:)(uint64_t a1)
{
  sub_1C96A50E4();
  swift_beginAccess();
  swift_unknownObjectRetain();
  v3 = sub_1C953A244((v1 + 32), a1);
  v4 = sub_1C946D04C();
  if (v4 < v3)
  {
    __break(1u);
    result = swift_endAccess();
    __break(1u);
  }

  else
  {
    sub_1C953A850(v3, v4);
    swift_endAccess();
    return sub_1C96A50F4();
  }

  return result;
}

id *NotificationAuthorizationManager.deinit()
{

  return v0;
}

uint64_t NotificationAuthorizationManager.__deallocating_deinit()
{
  NotificationAuthorizationManager.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 64, 7);
}

_BYTE *storeEnumTagSinglePayload for AuthorizationState(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C9558D5C()
{
  result = qword_1EC3A5850;
  if (!qword_1EC3A5850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A5850);
  }

  return result;
}

unint64_t sub_1C9558DB0()
{
  result = qword_1EDB78FD0;
  if (!qword_1EDB78FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB78FD0);
  }

  return result;
}

uint64_t objectdestroy_35Tm(uint64_t a1)
{

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

_BYTE *storeEnumTagSinglePayload for UserNotificationHandlerError(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C9558F60()
{
  result = qword_1EC3A5858;
  if (!qword_1EC3A5858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A5858);
  }

  return result;
}

uint64_t _s11WeatherCore42PrecipitationNotificationLocalizationTokenV11descriptionSSvg_0()
{
  v1 = OUTLINED_FUNCTION_3_19();
  sub_1C96A5CB4();
  OUTLINED_FUNCTION_2_28();
  MEMORY[0x1CCA8CB00](45, 0xE100000000000000);
  sub_1C96A5DD4();
  OUTLINED_FUNCTION_2_28();
  MEMORY[0x1CCA8CB00](45, 0xE100000000000000);
  v2 = *(v0 + *(v1 + 28));
  v3 = 0xE800000000000000;
  v4 = 0x676E697472617473;
  switch(v2)
  {
    case 1:
      v4 = OUTLINED_FUNCTION_1_26();
      break;
    case 2:
      v4 = OUTLINED_FUNCTION_0_37();
      v5 = "starting-stopping";
      goto LABEL_5;
    case 3:
      v4 = OUTLINED_FUNCTION_0_37();
      v5 = "stopping-starting";
LABEL_5:
      v3 = (v5 - 32) | 0x8000000000000000;
      break;
    default:
      break;
  }

  MEMORY[0x1CCA8CB00](v4, v3);

  return v7;
}

uint64_t sub_1C95590E0()
{
  v2 = *(OUTLINED_FUNCTION_3_19() + 28);
  v3 = 0xE800000000000000;
  v4 = 0x676E697472617473;
  switch(*(v1 + v2))
  {
    case 1:
      v4 = OUTLINED_FUNCTION_1_26();
      break;
    case 2:
      v5 = "starting-stopping";
      goto LABEL_5;
    case 3:
      v5 = "stopping-starting";
LABEL_5:
      v3 = (v5 - 32) | 0x8000000000000000;
      v4 = OUTLINED_FUNCTION_0_37();
      break;
    default:
      break;
  }

  MEMORY[0x1CCA8CB00](v4, v3);

  v6 = v10;
  if (*v0 == 1)
  {

LABEL_9:
    v8 = OUTLINED_FUNCTION_0_37();
    MEMORY[0x1CCA8CB00](v8);
    return v10;
  }

  v7 = sub_1C96A7DE4();

  if (v7)
  {
    goto LABEL_9;
  }

  return v6;
}

uint64_t type metadata accessor for PrecipitationNotificationLocalizationToken()
{
  result = qword_1EC3A5860;
  if (!qword_1EC3A5860)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C9559288()
{
  result = sub_1C96A5DD4();
  if (v1 <= 0x3F)
  {
    result = sub_1C96A5CB4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t WidgetConfiguration.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5878);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v12[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C948C52C();
  sub_1C96A7F54();
  memcpy(__dst, v3, sizeof(__dst));
  v12[15] = 0;
  sub_1C95594F4();
  sub_1C96A7D74();
  if (!v2)
  {
    __dst[0] = 1;
    sub_1C96A7D34();
    __dst[0] = 2;
    sub_1C96A7D44();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_1C95594F4()
{
  result = qword_1EDB7D930;
  if (!qword_1EDB7D930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7D930);
  }

  return result;
}

uint64_t sub_1C955956C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C94E0F00();
  *a1 = result;
  return result;
}

uint64_t sub_1C955959C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C94822F0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C95595C8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C94E0F00();
  *a1 = result;
  return result;
}

uint64_t sub_1C95595F0(uint64_t a1)
{
  v2 = sub_1C948C52C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C955962C(uint64_t a1)
{
  v2 = sub_1C948C52C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

BOOL static WidgetConfiguration.== infix(_:_:)(double *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  v4 = *(__src + 80);
  v5 = __src[11];
  memcpy(v10, a2, sizeof(v10));
  v6 = *(a2 + 80);
  v7 = *(a2 + 88);
  v8 = static WidgetRefreshConfiguration.== infix(_:_:)(__dst, v10);
  result = 0;
  if (v8 && ((v4 ^ v6) & 1) == 0)
  {
    return v5 == v7;
  }

  return result;
}

uint64_t sub_1C9559720(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 96))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 80);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
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

unint64_t sub_1C9559770()
{
  result = qword_1EC3A5880;
  if (!qword_1EC3A5880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A5880);
  }

  return result;
}

uint64_t sub_1C95597E0(uint64_t a1, uint64_t a2, char a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    (*(v8 + 8))(a1, a2, a3 & 1, ObjectType, v8);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t SevereNotificationStringBuilder.title(for:)()
{
  sub_1C96A58E4();
  v0 = sub_1C96A7154();

  if (v0 <= 25)
  {
    return sub_1C96A58E4();
  }

  if (qword_1EDB7AB08 != -1)
  {
    OUTLINED_FUNCTION_0_2();
  }

  v1 = qword_1EDB94A58;
  OUTLINED_FUNCTION_1_27();
  v2 = sub_1C96A4534();

  return v2;
}

uint64_t SevereNotificationStringBuilder.subtitle(for:)(void *a1)
{
  v1 = *a1 == 0x746E6572727563 && a1[1] == 0xE700000000000000;
  if (!v1 && (sub_1C96A7DE4() & 1) == 0)
  {
    return Location.inlineName.getter();
  }

  if (qword_1EDB7AB08 != -1)
  {
    OUTLINED_FUNCTION_0_2();
  }

  v2 = qword_1EDB94A58;
  OUTLINED_FUNCTION_1_27();
  v3 = sub_1C96A4534();

  return v3;
}

uint64_t SevereNotificationStringBuilder.body(for:at:timestamp:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C9559B44(a2, a1, a3, v3);
  sub_1C946DFF0();
  v4 = sub_1C96A7984();

  return v4;
}

uint64_t sub_1C9559B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v93 = a4;
  v97 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v90 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v94 = &v88 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v88 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v88 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v88 - v16;
  v18 = sub_1C96A4A54();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v88 = &v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v91 = &v88 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v89 = &v88 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v88 - v26;
  v28 = sub_1C96A4D14();
  v98 = *(v28 - 8);
  v99 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v88 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Location();
  v92 = a1;
  v31 = v30;
  sub_1C96A4C24();
  sub_1C96A58E4();
  v96 = sub_1C96A7154();

  sub_1C96A5904();
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
  {
    sub_1C96A4954();
    if (__swift_getEnumTagSinglePayload(v17, 1, v18) != 1)
    {
      sub_1C9505BC8(v17);
    }
  }

  else
  {
    (*(v19 + 32))(v27, v17, v18);
  }

  v32 = v97;
  v33 = sub_1C96A49A4();
  v95 = v19;
  v34 = v27;
  v35 = *(v19 + 8);
  v35(v34, v18);
  if (v33)
  {
    sub_1C96A58F4();
    if (__swift_getEnumTagSinglePayload(v14, 1, v18) == 1)
    {
      sub_1C9505BC8(v14);
    }

    else
    {
      v46 = v89;
      (*(v95 + 32))(v89, v14, v18);
      if (sub_1C96A4CD4() & 1) != 0 || (sub_1C96A4994())
      {
        if (v96 < 26)
        {
          v68 = sub_1C96A5924();
          v45 = sub_1C955A684(v92, v46, v68, v69);
        }

        else
        {
          v47 = sub_1C96A58E4();
          v49 = v48;
          v50 = sub_1C96A5924();
          v45 = sub_1C955A4D8(v92, v46, v47, v49, v50, v51);
        }

        v35(v46, v18);
        v31 = v30;
        goto LABEL_38;
      }

      v35(v46, v18);
    }
  }

  sub_1C96A5904();
  if (__swift_getEnumTagSinglePayload(v11, 1, v18) == 1)
  {
    v36 = v30;
    sub_1C9505BC8(v11);
    goto LABEL_18;
  }

  v37 = v91;
  (*(v95 + 32))(v91, v11, v18);
  if ((sub_1C96A4994() & 1) == 0)
  {
    v36 = v30;
    v35(v37, v18);
LABEL_18:
    v52 = v94;
    sub_1C96A58F4();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v52, 1, v18);
    sub_1C9505BC8(v52);
    if (EnumTagSinglePayload == 1)
    {
      v54 = v90;
      sub_1C96A5904();
      if (__swift_getEnumTagSinglePayload(v54, 1, v18) == 1)
      {
        sub_1C9505BC8(v54);
      }

      else
      {
        v55 = v54;
        v56 = v88;
        (*(v95 + 32))(v88, v55, v18);
        if (sub_1C96A49A4())
        {
          if (v96 < 26)
          {
            v85 = sub_1C96A5924();
            v86 = v88;
            v45 = sub_1C955B1AC(v92, v88, v85, v87, v32);

            v65 = v86;
          }

          else
          {
            v57 = sub_1C96A58E4();
            v59 = v58;
            v60 = sub_1C96A5924();
            v62 = v61;
            v63 = v57;
            v64 = v88;
            v45 = sub_1C955AE78(v92, v63, v59, v88, v60, v62, v32);

            v65 = v64;
          }

          v35(v65, v18);
LABEL_37:
          v31 = v36;
          goto LABEL_38;
        }

        v35(v56, v18);
      }
    }

    if (v96 < 26)
    {
      if (qword_1EDB7AB08 != -1)
      {
        swift_once();
      }

      v79 = qword_1EDB94A58;
      sub_1C96A4534();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4C50);
      v80 = swift_allocObject();
      *(v80 + 16) = xmmword_1C96AA1C0;
      v81 = sub_1C96A5924();
      v83 = v82;
      *(v80 + 56) = MEMORY[0x1E69E6158];
      *(v80 + 64) = sub_1C94CF210();
      *(v80 + 32) = v81;
      *(v80 + 40) = v83;
      v45 = sub_1C96A7014();
    }

    else
    {
      if (qword_1EDB7AB08 != -1)
      {
        swift_once();
      }

      v70 = qword_1EDB94A58;
      sub_1C96A4534();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4C50);
      v71 = swift_allocObject();
      *(v71 + 16) = xmmword_1C96AEF50;
      v72 = sub_1C96A58E4();
      v74 = v73;
      v75 = MEMORY[0x1E69E6158];
      *(v71 + 56) = MEMORY[0x1E69E6158];
      v76 = sub_1C94CF210();
      *(v71 + 64) = v76;
      *(v71 + 32) = v72;
      *(v71 + 40) = v74;
      v77 = sub_1C96A5924();
      *(v71 + 96) = v75;
      *(v71 + 104) = v76;
      *(v71 + 72) = v77;
      *(v71 + 80) = v78;
      v45 = sub_1C96A7014();
    }

    goto LABEL_37;
  }

  if (v96 < 26)
  {
    v66 = sub_1C96A5924();
    v45 = sub_1C955AB4C(v92, v37, v66, v67, v32);
  }

  else
  {
    v38 = v32;
    v39 = sub_1C96A58E4();
    v41 = v40;
    v42 = sub_1C96A5924();
    v43 = v38;
    v31 = v30;
    v45 = sub_1C955A818(v92, v39, v41, v37, v42, v44, v43);
  }

  v35(v37, v18);
LABEL_38:
  (*(v98 + 8))(v31, v99);
  return v45;
}

uint64_t sub_1C955A4D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_1EDB7AB08 != -1)
  {
    swift_once();
  }

  v11 = qword_1EDB94A58;
  sub_1C96A4534();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4C50);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1C96AB910;
  v13 = MEMORY[0x1E69E6158];
  *(v12 + 56) = MEMORY[0x1E69E6158];
  v14 = sub_1C94CF210();
  *(v12 + 64) = v14;
  *(v12 + 32) = a3;
  *(v12 + 40) = a4;
  sub_1C96A53C4();
  v15 = sub_1C955B4D8(a2, a1);
  *(v12 + 96) = v13;
  *(v12 + 104) = v14;
  *(v12 + 72) = v15;
  *(v12 + 80) = v16;
  *(v12 + 136) = v13;
  *(v12 + 144) = v14;
  *(v12 + 112) = a5;
  *(v12 + 120) = a6;
  sub_1C96A53C4();
  v17 = sub_1C96A7014();

  return v17;
}

uint64_t sub_1C955A684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1EDB7AB08 != -1)
  {
    swift_once();
  }

  v8 = qword_1EDB94A58;
  sub_1C96A4534();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4C50);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C96AEF50;
  v10 = sub_1C955B4D8(a2, a1);
  v12 = v11;
  v13 = MEMORY[0x1E69E6158];
  *(v9 + 56) = MEMORY[0x1E69E6158];
  v14 = sub_1C94CF210();
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  *(v9 + 96) = v13;
  *(v9 + 104) = v14;
  *(v9 + 64) = v14;
  *(v9 + 72) = a3;
  *(v9 + 80) = a4;
  sub_1C96A53C4();
  v15 = sub_1C96A7014();

  return v15;
}

uint64_t sub_1C955A818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v34 = a7;
  v35 = a5;
  v36 = a6;
  v32 = a2;
  v33 = a3;
  v9 = type metadata accessor for Date.FormatStyle.HourFormatStyle();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C96A4D14();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(type metadata accessor for Location() + 20);
  sub_1C96A4C24();
  (*(v13 + 16))(v11, v15, v12);
  v17 = *(v9 + 20);
  v18 = sub_1C96A4DF4();
  (*(*(v18 - 8) + 16))(&v11[v17], a1 + v16, v18);
  sub_1C955BD74();
  sub_1C96A4A34();
  sub_1C9505D40(v11);
  v19 = v37;
  if (qword_1EDB7AB08 != -1)
  {
    swift_once();
  }

  v20 = qword_1EDB94A58;
  sub_1C96A4534();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4C50);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1C96AC330;
  v22 = MEMORY[0x1E69E65A8];
  *(v21 + 56) = MEMORY[0x1E69E6530];
  *(v21 + 64) = v22;
  *(v21 + 32) = v19;
  v23 = MEMORY[0x1E69E6158];
  *(v21 + 96) = MEMORY[0x1E69E6158];
  v24 = sub_1C94CF210();
  *(v21 + 104) = v24;
  v25 = v33;
  *(v21 + 72) = v32;
  *(v21 + 80) = v25;
  sub_1C96A53C4();
  v26 = sub_1C955B4D8(a4, a1);
  *(v21 + 136) = v23;
  *(v21 + 144) = v24;
  *(v21 + 112) = v26;
  *(v21 + 120) = v27;
  *(v21 + 176) = v23;
  *(v21 + 184) = v24;
  v28 = v36;
  *(v21 + 152) = v35;
  *(v21 + 160) = v28;
  sub_1C96A53C4();
  v29 = sub_1C96A7014();

  (*(v13 + 8))(v15, v12);
  return v29;
}

uint64_t sub_1C955AB4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = a5;
  v32 = a3;
  v8 = type metadata accessor for Date.FormatStyle.HourFormatStyle();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C96A4D14();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(type metadata accessor for Location() + 20);
  sub_1C96A4C24();
  (*(v12 + 16))(v10, v14, v11);
  v16 = *(v8 + 20);
  v17 = sub_1C96A4DF4();
  (*(*(v17 - 8) + 16))(&v10[v16], a1 + v15, v17);
  sub_1C955BD74();
  sub_1C96A4A34();
  sub_1C9505D40(v10);
  v18 = v33;
  if (qword_1EDB7AB08 != -1)
  {
    swift_once();
  }

  v19 = qword_1EDB94A58;
  sub_1C96A4534();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4C50);
  v20 = swift_allocObject();
  v21 = MEMORY[0x1E69E6530];
  *(v20 + 16) = xmmword_1C96AB910;
  v22 = MEMORY[0x1E69E65A8];
  *(v20 + 56) = v21;
  *(v20 + 64) = v22;
  *(v20 + 32) = v18;
  v23 = sub_1C955B4D8(a2, a1);
  v25 = v24;
  v26 = MEMORY[0x1E69E6158];
  *(v20 + 96) = MEMORY[0x1E69E6158];
  v27 = sub_1C94CF210();
  *(v20 + 72) = v23;
  *(v20 + 80) = v25;
  *(v20 + 136) = v26;
  *(v20 + 144) = v27;
  v28 = v32;
  *(v20 + 104) = v27;
  *(v20 + 112) = v28;
  *(v20 + 120) = a4;
  sub_1C96A53C4();
  v29 = sub_1C96A7014();

  (*(v12 + 8))(v14, v11);
  return v29;
}

uint64_t sub_1C955AE78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v34 = a7;
  v35 = a5;
  v36 = a6;
  v32 = a2;
  v33 = a3;
  v9 = type metadata accessor for Date.FormatStyle.HourFormatStyle();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C96A4D14();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(type metadata accessor for Location() + 20);
  sub_1C96A4C24();
  (*(v13 + 16))(v11, v15, v12);
  v17 = *(v9 + 20);
  v18 = sub_1C96A4DF4();
  (*(*(v18 - 8) + 16))(&v11[v17], a1 + v16, v18);
  sub_1C955BD74();
  sub_1C96A4A34();
  sub_1C9505D40(v11);
  v19 = v37;
  if (qword_1EDB7AB08 != -1)
  {
    swift_once();
  }

  v20 = qword_1EDB94A58;
  sub_1C96A4534();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4C50);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1C96AC330;
  v22 = MEMORY[0x1E69E65A8];
  *(v21 + 56) = MEMORY[0x1E69E6530];
  *(v21 + 64) = v22;
  *(v21 + 32) = v19;
  v23 = MEMORY[0x1E69E6158];
  *(v21 + 96) = MEMORY[0x1E69E6158];
  v24 = sub_1C94CF210();
  *(v21 + 104) = v24;
  v25 = v33;
  *(v21 + 72) = v32;
  *(v21 + 80) = v25;
  sub_1C96A53C4();
  v26 = sub_1C955B4D8(a4, a1);
  *(v21 + 136) = v23;
  *(v21 + 144) = v24;
  *(v21 + 112) = v26;
  *(v21 + 120) = v27;
  *(v21 + 176) = v23;
  *(v21 + 184) = v24;
  v28 = v36;
  *(v21 + 152) = v35;
  *(v21 + 160) = v28;
  sub_1C96A53C4();
  v29 = sub_1C96A7014();

  (*(v13 + 8))(v15, v12);
  return v29;
}

uint64_t sub_1C955B1AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = a5;
  v32 = a3;
  v8 = type metadata accessor for Date.FormatStyle.HourFormatStyle();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C96A4D14();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(type metadata accessor for Location() + 20);
  sub_1C96A4C24();
  (*(v12 + 16))(v10, v14, v11);
  v16 = *(v8 + 20);
  v17 = sub_1C96A4DF4();
  (*(*(v17 - 8) + 16))(&v10[v16], a1 + v15, v17);
  sub_1C955BD74();
  sub_1C96A4A34();
  sub_1C9505D40(v10);
  v18 = v33;
  if (qword_1EDB7AB08 != -1)
  {
    swift_once();
  }

  v19 = qword_1EDB94A58;
  sub_1C96A4534();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4C50);
  v20 = swift_allocObject();
  v21 = MEMORY[0x1E69E6530];
  *(v20 + 16) = xmmword_1C96AB910;
  v22 = MEMORY[0x1E69E65A8];
  *(v20 + 56) = v21;
  *(v20 + 64) = v22;
  *(v20 + 32) = v18;
  v23 = sub_1C955B4D8(a2, a1);
  v25 = v24;
  v26 = MEMORY[0x1E69E6158];
  *(v20 + 96) = MEMORY[0x1E69E6158];
  v27 = sub_1C94CF210();
  *(v20 + 72) = v23;
  *(v20 + 80) = v25;
  *(v20 + 136) = v26;
  *(v20 + 144) = v27;
  v28 = v32;
  *(v20 + 104) = v27;
  *(v20 + 112) = v28;
  *(v20 + 120) = a4;
  sub_1C96A53C4();
  v29 = sub_1C96A7014();

  (*(v12 + 8))(v14, v11);
  return v29;
}

uint64_t sub_1C955B4D8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C96A4D14();
  v55 = *(v3 - 8);
  v56 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C96A4DF4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(type metadata accessor for Location() + 20);
  v52 = v7;
  v53 = v6;
  (*(v7 + 16))(v9, a2 + v10, v6);
  sub_1C96A4C24();
  v11 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v12 = sub_1C96A4DA4();
  [v11 setTimeZone_];

  [v11 setTimeStyle_];
  [v11 setDateStyle_];
  v13 = sub_1C96A4984();
  v14 = [v11 stringFromDate_];

  v51 = sub_1C96A7024();
  v16 = v15;

  v17 = sub_1C96A4D84();
  if (v18)
  {
    v19 = v17;
  }

  else
  {
    v19 = 0;
  }

  v50 = v19;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = 0xE000000000000000;
  }

  v54 = v5;
  if ((sub_1C96A4CD4() & 1) == 0)
  {
    v49 = v20;
    v21 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    v22 = sub_1C96A4DA4();
    [v21 setTimeZone_];

    v23 = sub_1C96A7004();
    [v21 setLocalizedDateFormatFromTemplate_];

    v24 = sub_1C96A4984();
    v25 = [v21 stringFromDate_];

    v26 = sub_1C96A7024();
    v48 = v27;

    if (*(a2 + 48) == 1)
    {
    }

    else
    {
      v30 = sub_1C96A7DE4();

      if ((v30 & 1) == 0)
      {
        if (qword_1EDB7AB08 != -1)
        {
          swift_once();
        }

        v40 = qword_1EDB94A58;
        sub_1C96A4534();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4C50);
        v41 = swift_allocObject();
        *(v41 + 16) = xmmword_1C96AB910;
        v42 = MEMORY[0x1E69E6158];
        *(v41 + 56) = MEMORY[0x1E69E6158];
        v43 = sub_1C94CF210();
        v44 = v50;
        *(v41 + 32) = v51;
        *(v41 + 40) = v16;
        *(v41 + 96) = v42;
        *(v41 + 104) = v43;
        *(v41 + 64) = v43;
        *(v41 + 72) = v44;
        v45 = v48;
        *(v41 + 80) = v49;
        *(v41 + 136) = v42;
        *(v41 + 144) = v43;
        *(v41 + 112) = v26;
        *(v41 + 120) = v45;
        v29 = sub_1C96A7014();

        goto LABEL_25;
      }
    }

    if (qword_1EDB7AB08 != -1)
    {
      swift_once();
    }

    v31 = qword_1EDB94A58;
    sub_1C96A4534();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4C50);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1C96AEF50;
    v33 = MEMORY[0x1E69E6158];
    *(v32 + 56) = MEMORY[0x1E69E6158];
    v34 = sub_1C94CF210();
    *(v32 + 32) = v51;
    *(v32 + 40) = v16;
    *(v32 + 96) = v33;
    *(v32 + 104) = v34;
    *(v32 + 64) = v34;
    *(v32 + 72) = v26;
    *(v32 + 80) = v48;
    v29 = sub_1C96A7014();

    goto LABEL_25;
  }

  if (*(a2 + 48) == 1)
  {

LABEL_14:

    v29 = v51;
    goto LABEL_25;
  }

  v28 = sub_1C96A7DE4();

  if (v28)
  {

    goto LABEL_14;
  }

  if (qword_1EDB7AB08 != -1)
  {
    swift_once();
  }

  v35 = qword_1EDB94A58;
  sub_1C96A4534();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4C50);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1C96AEF50;
  v37 = MEMORY[0x1E69E6158];
  *(v36 + 56) = MEMORY[0x1E69E6158];
  v38 = sub_1C94CF210();
  v39 = v50;
  *(v36 + 32) = v51;
  *(v36 + 40) = v16;
  *(v36 + 96) = v37;
  *(v36 + 104) = v38;
  *(v36 + 64) = v38;
  *(v36 + 72) = v39;
  *(v36 + 80) = v20;
  v29 = sub_1C96A7014();

LABEL_25:
  (*(v55 + 8))(v54, v56);
  (*(v52 + 8))(v9, v53);
  return v29;
}

unint64_t sub_1C955BD74()
{
  result = qword_1EC3A5888;
  if (!qword_1EC3A5888)
  {
    type metadata accessor for Date.FormatStyle.HourFormatStyle();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A5888);
  }

  return result;
}

uint64_t PredictedLocationsFeatureState.description.getter()
{
  v1 = 0x6576697463616E49;
  if (*v0 != 1)
  {
    v1 = 0x657669746341;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x726F707075736E55;
  }
}

uint64_t PredictedLocationsFeatureState.hashValue.getter()
{
  v1 = *v0;
  sub_1C96A7EE4();
  MEMORY[0x1CCA8D880](v1);
  return sub_1C96A7F24();
}

unint64_t sub_1C955BEC4()
{
  result = qword_1EC3A5890;
  if (!qword_1EC3A5890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A5890);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PredictedLocationsFeatureState(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t CoherenceContainerName.hashValue.getter()
{
  v1 = *v0;
  sub_1C96A7EE4();
  MEMORY[0x1CCA8D880](v1);
  return sub_1C96A7F24();
}

unint64_t sub_1C955C090()
{
  result = qword_1EC3A5898;
  if (!qword_1EC3A5898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A5898);
  }

  return result;
}

uint64_t StubGeocodeManager.reverseGeocode(clLocation:qos:ignoreTimeZoneExpiration:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60);
  OUTLINED_FUNCTION_7(v1);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_4_20();
  v4 = OUTLINED_FUNCTION_7(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1_28();
  OUTLINED_FUNCTION_2_29();
  v5 = sub_1C96A4DF4();
  result = OUTLINED_FUNCTION_0_1(v5);
  if (v7)
  {
    __break(1u);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_39();
    sub_1C95447DC(v8, v9, v0, v10, v11, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5758);
    OUTLINED_FUNCTION_23();
    return OUTLINED_FUNCTION_8_16();
  }

  return result;
}

uint64_t StubGeocodeManager.reverseGeocode(placeholder:ignoreTimeZoneExpiration:qos:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60);
  OUTLINED_FUNCTION_7(v1);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_4_20();
  v4 = OUTLINED_FUNCTION_7(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1_28();
  OUTLINED_FUNCTION_2_29();
  v5 = sub_1C96A4DF4();
  result = OUTLINED_FUNCTION_0_1(v5);
  if (v7)
  {
    __break(1u);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_39();
    sub_1C95447DC(v8, v9, v0, v10, v11, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5758);
    OUTLINED_FUNCTION_23();
    return OUTLINED_FUNCTION_8_16();
  }

  return result;
}

uint64_t StubGeocodeManager.reverseGeocode(coordinate:qos:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60);
  OUTLINED_FUNCTION_7(v1);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_4_20();
  v4 = OUTLINED_FUNCTION_7(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1_28();
  OUTLINED_FUNCTION_2_29();
  v5 = sub_1C96A4DF4();
  result = OUTLINED_FUNCTION_0_1(v5);
  if (v7)
  {
    __break(1u);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_39();
    sub_1C95447DC(v8, v9, v0, v10, v11, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5758);
    OUTLINED_FUNCTION_23();
    return OUTLINED_FUNCTION_8_16();
  }

  return result;
}

uint64_t StubLocationManager.currentCLLocation.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60);
  OUTLINED_FUNCTION_7(v2);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_4_20();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1_28();
  OUTLINED_FUNCTION_2_29();
  v5 = sub_1C96A4DF4();
  result = OUTLINED_FUNCTION_0_1(v5);
  if (v7)
  {
    __break(1u);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_39();
    sub_1C95447DC(v8, v9, v1, v10, v11, v12);
    v13 = *(v0 + *(v4 + 44));
    v14 = v13;
    if (!v13)
    {
      v14 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:*(v0 + 32) longitude:*(v0 + 40)];
    }

    v15 = v13;
    sub_1C94DBDDC(v0);
    return v14;
  }

  return result;
}

uint64_t Beaufort.Category.Range.lowerBound.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A58A0);
  OUTLINED_FUNCTION_7(v5);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A58A8);
  OUTLINED_FUNCTION_7(v9);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_20_10();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_14();
  v14 = v13 - v12;
  sub_1C955C7C4(v3, v13 - v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A58B0);
      OUTLINED_FUNCTION_18_11(v16);
      return sub_1C955C828(v14);
    }

    sub_1C955D0D8(v14, v8, &qword_1EC3A58A0);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A58B0);
    OUTLINED_FUNCTION_6();
    v25 = OUTLINED_FUNCTION_11();
    v26(v25);
    v20 = OUTLINED_FUNCTION_1_7();
    v23 = v24;
  }

  else
  {
    sub_1C955D0D8(v14, v2, &qword_1EC3A58A8);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A58B0);
    OUTLINED_FUNCTION_6();
    (*(v19 + 16))(a1, v2, v18);
    sub_1C9470AFC(v2, &qword_1EC3A58A8);
    v20 = OUTLINED_FUNCTION_1_7();
    v23 = v18;
  }

  return __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
}

uint64_t sub_1C955C7C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Beaufort.Category.Range(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C955C828(uint64_t a1)
{
  v2 = type metadata accessor for Beaufort.Category.Range(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Beaufort.Category.Range.upperBound.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A58B8);
  OUTLINED_FUNCTION_7(v5);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A58A8);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_20_10();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_14();
  v14 = v13 - v12;
  sub_1C955C7C4(v3, v13 - v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1C955D0D8(v14, v2, &qword_1EC3A58A8);
    v23 = *(v9 + 36);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A58B0);
    OUTLINED_FUNCTION_6();
    (*(v25 + 16))(a1, v2 + v23, v24);
    sub_1C9470AFC(v2, &qword_1EC3A58A8);
    v19 = OUTLINED_FUNCTION_1_7();
    v22 = v24;
    return __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1C955D0D8(v14, v8, &qword_1EC3A58B8);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A58B0);
    OUTLINED_FUNCTION_6();
    v17 = OUTLINED_FUNCTION_11();
    v18(v17);
    v19 = OUTLINED_FUNCTION_1_7();
    v22 = v16;
    return __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  }

  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A58B0);
  OUTLINED_FUNCTION_18_11(v27);
  return sub_1C955C828(v14);
}

uint64_t Beaufort.Category.range.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Beaufort.Category(0) + 24);

  return sub_1C955C7C4(v3, a1);
}

uint64_t Beaufort.Category.range(in:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v50 = a1;
  v48 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A58B8);
  OUTLINED_FUNCTION_7(v2);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v3);
  v46 = &v45 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A58A0);
  OUTLINED_FUNCTION_7(v5);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v6);
  v45 = &v45 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A58C0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v45 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A58B0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v45 - v20;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A58A8);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v22);
  v24 = (&v45 - v23);
  v25 = type metadata accessor for Beaufort.Category.Range(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_14();
  v29 = v28 - v27;
  v30 = type metadata accessor for Beaufort.Category(0);
  sub_1C955C7C4(v49 + *(v30 + 24), v29);
  v49 = v25;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v32 = EnumCaseMultiPayload;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v42 = v29;
      v43 = v45;
      sub_1C955D0D8(v42, v45, &qword_1EC3A58A0);
      OUTLINED_FUNCTION_16_14();
      OUTLINED_FUNCTION_4_1(&qword_1EC3A58C8);
      v44 = OUTLINED_FUNCTION_15_11();
      result = sub_1C9470AFC(v43, &qword_1EC3A58A0);
      if (v44)
      {
        return swift_storeEnumTagMultiPayload();
      }

      goto LABEL_10;
    }

    v24 = &qword_1EC3A58B8;
    v14 = &unk_1C96B12F8;
    v33 = v29;
    v29 = v46;
    sub_1C955D0D8(v33, v46, &qword_1EC3A58B8);
    OUTLINED_FUNCTION_16_14();
    OUTLINED_FUNCTION_4_1(&qword_1EC3A58C8);
    v8 = OUTLINED_FUNCTION_15_11();
    sub_1C9470AFC(v29, &qword_1EC3A58B8);
    if (v8)
    {
      return swift_storeEnumTagMultiPayload();
    }

    __break(1u);
  }

  v45 = v11;
  LODWORD(v46) = v32;
  v34 = v8;
  sub_1C955D0D8(v29, v24, &qword_1EC3A58A8);
  sub_1C96A4264();
  sub_1C96A4264();
  OUTLINED_FUNCTION_6_19(&unk_1EDB7AAF8);
  v35 = sub_1C96A6F84();
  result = sub_1C9470AFC(v24, &qword_1EC3A58A8);
  if (v35)
  {
    v37 = *(v16 + 32);
    v37(v14, v21, v15);
    v37(&v14[*(v34 + 48)], v18, v15);
    v38 = v45;
    sub_1C955D068(v14, v45);
    v39 = *(v34 + 48);
    v40 = v48;
    v37(v48, v38, v15);
    v41 = *(v16 + 8);
    v41(v38 + v39, v15);
    sub_1C955D0D8(v14, v38, &qword_1EC3A58C0);
    v37(&v40[*(v47 + 36)], (v38 + *(v34 + 48)), v15);
    v41(v38, v15);
    return swift_storeEnumTagMultiPayload();
  }

  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1C955D018(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3A58B0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C955D068(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A58C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C955D0D8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_6();
  v4 = OUTLINED_FUNCTION_11();
  v5(v4);
  return a2;
}

uint64_t static Beaufort.localizedSymbol.getter()
{
  if (qword_1EDB7AB08 != -1)
  {
    OUTLINED_FUNCTION_0_2();
  }

  v0 = qword_1EDB94A58;
  v1 = sub_1C96A4534();

  return v1;
}

uint64_t static Beaufort.symbol(level:)()
{
  if (qword_1EDB7AB08 != -1)
  {
    OUTLINED_FUNCTION_0_2();
  }

  OUTLINED_FUNCTION_21_11(qword_1EDB94A58);
  OUTLINED_FUNCTION_3_20();
  sub_1C96A4534();
  OUTLINED_FUNCTION_10_14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4C50);
  v0 = swift_allocObject();
  v1 = MEMORY[0x1E69E6530];
  *(v0 + 16) = xmmword_1C96AA1C0;
  OUTLINED_FUNCTION_19_10(v0, v1);

  sub_1C946DFF0();
  sub_1C96A7964();

  return OUTLINED_FUNCTION_11();
}

uint64_t static Beaufort.name(level:)()
{
  if (qword_1EDB7AB08 != -1)
  {
    OUTLINED_FUNCTION_0_2();
  }

  OUTLINED_FUNCTION_21_11(qword_1EDB94A58);
  OUTLINED_FUNCTION_3_20();
  sub_1C96A4534();
  OUTLINED_FUNCTION_10_14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4C50);
  v0 = swift_allocObject();
  v1 = MEMORY[0x1E69E6530];
  *(v0 + 16) = xmmword_1C96AA1C0;
  OUTLINED_FUNCTION_19_10(v0, v1);

  return OUTLINED_FUNCTION_11();
}

uint64_t static Beaufort.categoryName(level:)(unint64_t a1)
{
  v2 = *(sub_1C955D4B8() + 16);

  result = sub_1C955D4B8();
  v4 = result;
  if (v2 > a1)
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      if (*(result + 16) > a1)
      {
        v5 = (result + 16 * a1 + 32);
LABEL_8:
        v7 = *v5;
        sub_1C96A53C4();

        return v7;
      }

      goto LABEL_11;
    }

    __break(1u);
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = *(sub_1C955D4B8() + 16);

  if (!v6)
  {
    goto LABEL_10;
  }

  if (v6 <= *(v4 + 16))
  {
    v5 = (v4 + 16 + 16 * v6);
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1C955D4B8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4BA0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1C96B12D0;
  if (qword_1EDB7AB08 != -1)
  {
    OUTLINED_FUNCTION_0_2();
  }

  OUTLINED_FUNCTION_14_14(qword_1EDB94A58);
  OUTLINED_FUNCTION_0_40();
  sub_1C96A4534();
  OUTLINED_FUNCTION_10_14();
  *(v1 + 32) = "the full style";
  *(v1 + 40) = v0;
  OUTLINED_FUNCTION_9_17();
  OUTLINED_FUNCTION_14_14(v2);
  OUTLINED_FUNCTION_0_40();
  sub_1C96A4534();
  OUTLINED_FUNCTION_10_14();
  *(v1 + 48) = "the full style";
  *(v1 + 56) = v0;
  OUTLINED_FUNCTION_17_15();
  v4 = v3;
  OUTLINED_FUNCTION_0_40();
  v5 = sub_1C96A4534();
  v7 = v6;

  *(v1 + 64) = v5;
  *(v1 + 72) = v7;
  v8 = OUTLINED_FUNCTION_21_11(qword_1EDB94A58);
  OUTLINED_FUNCTION_0_40();
  v9 = sub_1C96A4534();
  v11 = v10;

  *(v1 + 80) = v9;
  *(v1 + 88) = v11;
  v12 = qword_1EDB94A58;
  OUTLINED_FUNCTION_0_40();
  v13 = sub_1C96A4534();
  v15 = v14;

  *(v1 + 96) = v13;
  *(v1 + 104) = v15;
  v16 = qword_1EDB94A58;
  OUTLINED_FUNCTION_0_40();
  v17 = sub_1C96A4534();
  v19 = v18;

  *(v1 + 112) = v17;
  *(v1 + 120) = v19;
  OUTLINED_FUNCTION_17_15();
  v21 = v20;
  OUTLINED_FUNCTION_0_40();
  sub_1C96A4534();
  OUTLINED_FUNCTION_10_14();
  *(v1 + 128) = 0xED0000657A656572;
  *(v1 + 136) = v16;
  OUTLINED_FUNCTION_9_17();
  OUTLINED_FUNCTION_14_14(v22);
  OUTLINED_FUNCTION_13_12();
  OUTLINED_FUNCTION_0_40();
  sub_1C96A4534();
  OUTLINED_FUNCTION_10_14();
  *(v1 + 144) = 0xED0000657A656572;
  *(v1 + 152) = v16;
  OUTLINED_FUNCTION_9_17();
  OUTLINED_FUNCTION_14_14(v23);
  OUTLINED_FUNCTION_13_12();
  OUTLINED_FUNCTION_0_40();
  sub_1C96A4534();
  OUTLINED_FUNCTION_10_14();
  *(v1 + 160) = 0xED0000657A656572;
  *(v1 + 168) = v16;
  OUTLINED_FUNCTION_9_17();
  OUTLINED_FUNCTION_14_14(v24);
  OUTLINED_FUNCTION_13_12();
  OUTLINED_FUNCTION_0_40();
  sub_1C96A4534();
  OUTLINED_FUNCTION_10_14();
  *(v1 + 176) = 0xED0000657A656572;
  *(v1 + 184) = v16;
  OUTLINED_FUNCTION_9_17();
  OUTLINED_FUNCTION_14_14(v25);
  OUTLINED_FUNCTION_13_12();
  OUTLINED_FUNCTION_3_20();
  sub_1C96A4534();
  OUTLINED_FUNCTION_10_14();
  *(v1 + 192) = 0xED0000657A656572;
  *(v1 + 200) = v16;
  OUTLINED_FUNCTION_9_17();
  OUTLINED_FUNCTION_14_14(v26);
  OUTLINED_FUNCTION_13_12();
  OUTLINED_FUNCTION_3_20();
  sub_1C96A4534();
  OUTLINED_FUNCTION_10_14();
  *(v1 + 208) = 0xED0000657A656572;
  *(v1 + 216) = v16;
  OUTLINED_FUNCTION_17_15();
  v28 = OUTLINED_FUNCTION_21_11(v27);
  OUTLINED_FUNCTION_3_20();
  v29 = sub_1C96A4534();
  v31 = v30;

  *(v1 + 224) = v29;
  *(v1 + 232) = v31;
  OUTLINED_FUNCTION_17_15();
  v33 = v32;
  OUTLINED_FUNCTION_3_20();
  sub_1C96A4534();
  OUTLINED_FUNCTION_10_14();
  *(v1 + 240) = 0x6E61636972727548;
  *(v1 + 248) = v29;
  return v1;
}

_BYTE *storeEnumTagSinglePayload for Beaufort(_BYTE *result, int a2, int a3)
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

uint64_t sub_1C955DB48()
{
  result = type metadata accessor for Beaufort.Category.Range(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1C955DBCC()
{
  sub_1C955DCA8(319, &qword_1EDB77D28, MEMORY[0x1E69E66A8]);
  if (v0 <= 0x3F)
  {
    sub_1C955DCA8(319, &qword_1EDB77CC8, MEMORY[0x1E69E6D20]);
    if (v1 <= 0x3F)
    {
      sub_1C955DCA8(319, &qword_1EDB77CD0, MEMORY[0x1E69E6D08]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1C955DCA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3A58B0);
    v7 = OUTLINED_FUNCTION_6_19(&unk_1EDB7AAF8);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1C955DD2C()
{
  v0 = sub_1C96A4F24();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14();
  v6 = v5 - v4;
  v7 = sub_1C96A4F34();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14();
  if (qword_1EDB80020 != -1)
  {
    OUTLINED_FUNCTION_2_0();
  }

  __swift_project_value_buffer(v7, qword_1EDB80028);
  v9 = OUTLINED_FUNCTION_5_1();
  v10(v9);
  (*(v2 + 104))(v6, *MEMORY[0x1E69D6E88], v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4BD0);
  swift_allocObject();
  result = sub_1C96A4F74();
  qword_1EDB7AA58 = result;
  return result;
}

uint64_t sub_1C955DF14()
{
  v0 = sub_1C96A4F24();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14();
  v6 = v5 - v4;
  v7 = sub_1C96A4F34();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14();
  if (qword_1EDB80020 != -1)
  {
    OUTLINED_FUNCTION_2_0();
  }

  __swift_project_value_buffer(v7, qword_1EDB80028);
  v9 = OUTLINED_FUNCTION_5_1();
  v10(v9);
  (*(v2 + 104))(v6, *MEMORY[0x1E69D6E88], v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4BD0);
  swift_allocObject();
  result = sub_1C96A4F74();
  qword_1EDB7AA40 = result;
  return result;
}

_BYTE *_s14SavedLocationsVwst(_BYTE *result, int a2, int a3)
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

uint64_t NotificationEnablementTracker.__allocating_init(subscriptionManager:)(__int128 *a1)
{
  v2 = swift_allocObject();
  NotificationEnablementTracker.init(subscriptionManager:)(a1);
  return v2;
}

uint64_t NotificationEnablementTracker.init(subscriptionManager:)(__int128 *a1)
{
  v21 = a1;
  v2 = sub_1C96A4F24();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C96A4F34();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDB80020 != -1)
  {
    swift_once();
  }

  v18 = "e.force_migrate_3";
  v14 = __swift_project_value_buffer(v8, qword_1EDB80028);
  v19 = *(v10 + 16);
  v20 = v14;
  v19(v13, v14, v8);
  v15 = *MEMORY[0x1E69D6E88];
  v17 = *(v4 + 104);
  v17(v7, v15, v2);
  v23 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4BD0);
  swift_allocObject();
  *(v1 + 56) = sub_1C96A4F74();
  v18 = "weatherd.precipitation-enabled";
  v19(v13, v20, v8);
  v17(v7, v15, v2);
  v22 = 0;
  swift_allocObject();
  *(v1 + 64) = sub_1C96A4F74();
  sub_1C94924FC(v21, v1 + 16);
  return v1;
}

Swift::Void __swiftcall NotificationEnablementTracker.trackEnablement()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5090);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v8 - v1;
  v3 = sub_1C96A7414();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  v4 = swift_allocObject();
  swift_weakInit();
  sub_1C96A3D04();
  v5 = sub_1C96A5E34();
  v6 = sub_1C955F370(&qword_1EDB7ACD0, 255, MEMORY[0x1E69E1940]);
  v7 = swift_allocObject();
  v7[2] = v5;
  v7[3] = v6;
  v7[4] = v4;

  sub_1C951C258();
}

uint64_t sub_1C955E5E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  v4[8] = sub_1C96A5E34();
  sub_1C96A5E24();
  sub_1C955F370(&qword_1EDB7ACD0, 255, MEMORY[0x1E69E1940]);
  v6 = sub_1C96A7374();
  v4[9] = v6;
  v4[10] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1C955E6B0, v6, v5);
}

uint64_t sub_1C955E6B0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    v2 = Strong[5];
    v3 = Strong[6];
    __swift_project_boxed_opaque_existential_1(Strong + 2, v2);
    v0[5] = 3;
    v7 = (*(v3 + 56) + **(v3 + 56));
    v4 = swift_task_alloc();
    v0[12] = v4;
    *v4 = v0;
    v4[1] = sub_1C955E850;

    return v7(v0 + 5, v2, v3);
  }

  else
  {

    OUTLINED_FUNCTION_17();

    return v6();
  }
}

uint64_t sub_1C955E850(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v5 = v4[9];
    v6 = v4[10];
    v7 = sub_1C955E9F4;
  }

  else
  {
    v4[14] = a1;
    v5 = v4[9];
    v6 = v4[10];
    v7 = sub_1C955E978;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1C955E978()
{
  v1 = *(v0 + 112);

  sub_1C955EBE4(v1);

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_1C955E9F4()
{
  v17 = v0;

  if (qword_1EDB7AC88 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 104);
  v2 = sub_1C96A6154();
  __swift_project_value_buffer(v2, qword_1EDB7AC90);
  v3 = v1;
  v4 = sub_1C96A6134();
  v5 = sub_1C96A7684();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 104);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    *(v0 + 48) = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5380);
    v11 = sub_1C96A70A4();
    v13 = sub_1C9484164(v11, v12, &v16);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1C945E000, v4, v5, "Failed to report notification enablement to PowerLog: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1CCA8E3D0](v9, -1, -1);
    MEMORY[0x1CCA8E3D0](v8, -1, -1);
  }

  else
  {
  }

  OUTLINED_FUNCTION_17();

  return v14();
}

void sub_1C955EBE4(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = type metadata accessor for NotificationSubscription(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v35 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A58D0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v35 - v16;
  v18 = *(a1 + 16);
  if (v18)
  {
    v35[1] = v2;
    v35[2] = v4;
    v19 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v20 = *(v6 + 72);
    v21 = v19;
    v22 = v18;
    while (1)
    {
      sub_1C9524958(v21, v11);
      v23 = v11[*(v5 + 24)];
      if (v23 != 2 && (v23 & 1) != 0)
      {
        break;
      }

      sub_1C95249BC(v11);
      v21 += v20;
      if (!--v22)
      {
        v24 = 0;
        v25 = 1;
        goto LABEL_9;
      }
    }

    sub_1C9524A18(v11, v17);
    v25 = 0;
    v24 = 1;
LABEL_9:
    __swift_storeEnumTagSinglePayload(v17, v25, 1, v5);
    sub_1C955F308(v17);
    while (1)
    {
      sub_1C9524958(v19, v8);
      v28 = v8[*(v5 + 28)];
      if (v28 != 2 && (v28 & 1) != 0)
      {
        break;
      }

      sub_1C95249BC(v8);
      v19 += v20;
      if (!--v18)
      {
        v27 = 0;
        v26 = 1;
        goto LABEL_15;
      }
    }

    sub_1C9524A18(v8, v14);
    v26 = 0;
    v27 = 1;
  }

  else
  {
    v26 = 1;
    __swift_storeEnumTagSinglePayload(v35 - v16, 1, 1, v5);
    sub_1C955F308(v17);
    v24 = 0;
    v27 = 0;
  }

LABEL_15:
  __swift_storeEnumTagSinglePayload(v14, v26, 1, v5);
  sub_1C955F308(v14);
  sub_1C955F370(qword_1EDB78F28, v29, type metadata accessor for NotificationEnablementTracker);
  sub_1C96A4E44();
  if (v24 != v39 || (sub_1C96A4E44(), v27 != v36))
  {
    if (qword_1EDB7AC88 != -1)
    {
      swift_once();
    }

    v30 = sub_1C96A6154();
    __swift_project_value_buffer(v30, qword_1EDB7AC90);
    v31 = sub_1C96A6134();
    v32 = sub_1C96A76A4();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 67240448;
      *(v33 + 4) = v24;
      *(v33 + 8) = 1026;
      *(v33 + 10) = v27;
      _os_log_impl(&dword_1C945E000, v31, v32, "Reporting change in notification feature enablement to PowerLog: %{BOOL,public}d-%{BOOL,public}d", v33, 0xEu);
      MEMORY[0x1CCA8E3D0](v33, -1, -1);
    }

    v38 = v24;
    sub_1C955F370(&qword_1EC3A58D8, v34, type metadata accessor for NotificationEnablementTracker);
    sub_1C96A4FE4();
    v37 = v27;
    sub_1C96A4FE4();
    WCPowerLogNotificationEnablement(v24, v27);
  }
}

uint64_t NotificationEnablementTracker.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return v0;
}

uint64_t NotificationEnablementTracker.__deallocating_deinit()
{
  NotificationEnablementTracker.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 72, 7);
}

uint64_t sub_1C955F0CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C955F180;

  return sub_1C955E5E8(a1, v4, v5, v6);
}

uint64_t sub_1C955F180()
{

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_1C955F308(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A58D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C955F370(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C955F3C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A58E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t WeatherCoalescedLocationResult.locationsOfInterest.getter()
{
  type metadata accessor for WeatherCoalescedLocationResult();

  return sub_1C96A53C4();
}

uint64_t sub_1C955F490(void (*a1)(uint64_t *__return_ptr, char *), uint64_t a2)
{
  v37 = a1;
  v38 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A58F0);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v33 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A58F8);
  OUTLINED_FUNCTION_7(v6);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5900);
  OUTLINED_FUNCTION_1();
  v12 = v11;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v33 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5908);
  OUTLINED_FUNCTION_1();
  v35 = v16;
  OUTLINED_FUNCTION_71();
  v18 = MEMORY[0x1EEE9AC00](v17);
  (*(v12 + 16))(v15, v36, v10, v18);
  sub_1C9469CB4(&qword_1EC3A5910, &qword_1EC3A5900);
  sub_1C96A71F4();
  sub_1C9469CB4(&qword_1EC3A5918, &qword_1EC3A5908);
  v36 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_1C96A7944();
    if (__swift_getEnumTagSinglePayload(v9, 1, v41) == 1)
    {
      v27 = OUTLINED_FUNCTION_18_12();
      v28(v27);
      return v36;
    }

    sub_1C949E15C();
    v37(&v39, v5);
    if (v2)
    {
      break;
    }

    sub_1C9470AFC(v5, &qword_1EC3A58F0);
    v19 = v40;
    if (v40)
    {
      v20 = v39;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C94FB3F4();
        v36 = v25;
      }

      v21 = *(v36 + 16);
      v22 = v21 + 1;
      if (v21 >= *(v36 + 24) >> 1)
      {
        v33 = *(v36 + 16);
        v34 = v21 + 1;
        sub_1C94FB3F4();
        v21 = v33;
        v22 = v34;
        v36 = v26;
      }

      v23 = v36;
      *(v36 + 16) = v22;
      v24 = v23 + 16 * v21;
      *(v24 + 32) = v20;
      *(v24 + 40) = v19;
    }
  }

  sub_1C9470AFC(v5, &qword_1EC3A58F0);
  v30 = OUTLINED_FUNCTION_18_12();
  v31(v30);
  v29 = v36;

  return v29;
}

uint64_t sub_1C955F848(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1C9522B70();
    v2 = v14;
    v4 = (a1 + 40);
    v5 = MEMORY[0x1E69D62D8];
    do
    {
      v7 = *(v4 - 1);
      v6 = *v4;
      v14 = v2;
      v9 = *(v2 + 16);
      v8 = *(v2 + 24);
      sub_1C96A53C4();
      if (v9 >= v8 >> 1)
      {
        sub_1C9522B70();
        v2 = v14;
      }

      v12 = MEMORY[0x1E69E6158];
      v13 = v5;
      *&v11 = v7;
      *(&v11 + 1) = v6;
      *(v2 + 16) = v9 + 1;
      sub_1C94670AC(&v11, v2 + 40 * v9 + 32);
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t WeatherLocationCoalescenceManager.matchLocationsOfInterest(for:locationsOfInterest:)(uint64_t a1, uint64_t a2)
{
  v4 = v2[5];
  v5 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v4);
  v7[3] = type metadata accessor for Location();
  v7[4] = &protocol witness table for Location;
  __swift_allocate_boxed_opaque_existential_1(v7);
  sub_1C9489990();
  (*(v5 + 16))(v7, a2, v4, v5);
  return __swift_destroy_boxed_opaque_existential_1Tm(v7);
}

uint64_t WeatherLocationCoalescenceManager.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

uint64_t CurrentLocation.locationSecondaryName.getter()
{
  OUTLINED_FUNCTION_13_13();
  type metadata accessor for CurrentLocation();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_2_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5450);
  OUTLINED_FUNCTION_7(v2);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_6_20();
  if (OUTLINED_FUNCTION_17_16() <= 2)
  {
    OUTLINED_FUNCTION_0_41();
  }

  v4 = type metadata accessor for Location();
  OUTLINED_FUNCTION_5_20(v4);
  if (v5)
  {
    sub_1C9470AFC(v0, &qword_1EC3A5450);
    OUTLINED_FUNCTION_15_12();
  }

  else
  {
    OUTLINED_FUNCTION_14_15();
    OUTLINED_FUNCTION_1_29();
  }

  return OUTLINED_FUNCTION_8_17();
}

uint64_t CurrentLocation.locationPreciseName.getter()
{
  OUTLINED_FUNCTION_13_13();
  type metadata accessor for CurrentLocation();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_2_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5450);
  OUTLINED_FUNCTION_7(v2);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_6_20();
  if (OUTLINED_FUNCTION_17_16() <= 2)
  {
    OUTLINED_FUNCTION_0_41();
  }

  v4 = type metadata accessor for Location();
  OUTLINED_FUNCTION_5_20(v4);
  if (v5)
  {
    sub_1C9470AFC(v0, &qword_1EC3A5450);
    OUTLINED_FUNCTION_15_12();
  }

  else
  {
    OUTLINED_FUNCTION_14_15();
    OUTLINED_FUNCTION_1_29();
  }

  return OUTLINED_FUNCTION_8_17();
}

uint64_t CurrentLocation.locationID.getter()
{
  OUTLINED_FUNCTION_13_13();
  type metadata accessor for CurrentLocation();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_2_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5450);
  OUTLINED_FUNCTION_7(v2);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_6_20();
  if (OUTLINED_FUNCTION_17_16() <= 2)
  {
    OUTLINED_FUNCTION_0_41();
  }

  v4 = type metadata accessor for Location();
  OUTLINED_FUNCTION_16_15(v4);
  if (v5)
  {
    sub_1C9470AFC(v0, &qword_1EC3A5450);
    OUTLINED_FUNCTION_15_12();
  }

  else
  {
    sub_1C96A53C4();
    OUTLINED_FUNCTION_1_29();
  }

  return OUTLINED_FUNCTION_8_17();
}

uint64_t Location.locationSecondaryName.getter()
{
  type metadata accessor for Location();
  sub_1C96A53C4();
  return OUTLINED_FUNCTION_11();
}

uint64_t Location.locationPreciseName.getter()
{
  type metadata accessor for Location();
  sub_1C96A53C4();
  return OUTLINED_FUNCTION_11();
}

uint64_t sub_1C955FEC0()
{
  OUTLINED_FUNCTION_40_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  OUTLINED_FUNCTION_6();
  v2 = OUTLINED_FUNCTION_11();
  v3(v2);
  return v0;
}

uint64_t sub_1C955FF18(uint64_t a1)
{
  result = MEMORY[0x1CCA8CF20](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;
    sub_1C96A53C4();
    sub_1C9562C44(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C955FFD8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1C94948B8();
  result = MEMORY[0x1CCA8CF20](v2, &type metadata for SyncedLocationKey, v3);
  v5 = 0;
  v10 = result;
  v6 = *(a1 + 16);
  for (i = 32; ; i += 56)
  {
    if (v6 == v5)
    {

      return v10;
    }

    if (v5 >= *(a1 + 16))
    {
      break;
    }

    v8 = *(a1 + i + 16);
    v11[0] = *(a1 + i);
    v11[1] = v8;
    v11[2] = *(a1 + i + 32);
    v12 = *(a1 + i + 48);
    ++v5;
    sub_1C9563008(v11, &v9);
    sub_1C9562D90(&v9, v11);
  }

  __break(1u);
  return result;
}

uint64_t LocationEntityQuery.init()@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5748);
  sub_1C96A3A74();
  sub_1C96A3A64();
  result = sub_1C96A3A24();
  *a1 = result;
  return result;
}

uint64_t static LocationEntityQuery.findIntentDescription.getter@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5708);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v31 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v28 - v4;
  v6 = sub_1C96A4C14();
  MEMORY[0x1EEE9AC00](v6 - 8);
  OUTLINED_FUNCTION_14();
  v7 = sub_1C96A45A4();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14();
  v11 = sub_1C96A6FF4();
  MEMORY[0x1EEE9AC00](v11 - 8);
  OUTLINED_FUNCTION_14();
  v12 = sub_1C96A45C4();
  OUTLINED_FUNCTION_1();
  v29 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_14();
  v17 = v16 - v15;
  sub_1C96A6FA4();
  if (qword_1EDB7AAF0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v7, qword_1EDB94A40);
  v18 = *(v9 + 16);
  v19 = OUTLINED_FUNCTION_6_21();
  v18(v19);
  sub_1C96A4BC4();
  v30 = v17;
  OUTLINED_FUNCTION_3_22();
  sub_1C96A6FA4();
  v20 = OUTLINED_FUNCTION_6_21();
  v18(v20);
  sub_1C96A4BC4();
  OUTLINED_FUNCTION_3_22();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5998);
  v28 = v12;
  v29 = v5;
  *(swift_allocObject() + 16) = xmmword_1C96AEF50;
  sub_1C96A6FA4();
  v21 = OUTLINED_FUNCTION_6_21();
  v18(v21);
  sub_1C96A4BC4();
  OUTLINED_FUNCTION_3_22();
  sub_1C96A6FA4();
  v22 = OUTLINED_FUNCTION_6_21();
  v18(v22);
  sub_1C96A4BC4();
  OUTLINED_FUNCTION_3_22();
  sub_1C96A6FA4();
  v23 = OUTLINED_FUNCTION_6_21();
  v18(v23);
  sub_1C96A4BC4();
  v24 = v31;
  OUTLINED_FUNCTION_3_22();
  __swift_storeEnumTagSinglePayload(v24, 0, 1, v28);
  v25 = v32;
  sub_1C96A3E44();
  v26 = sub_1C96A3E34();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v26);
}

uint64_t LocationEntityQuery.entities(for:)(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 56) = a1;
  *(v2 + 64) = v3;
  return OUTLINED_FUNCTION_0_42();
}

uint64_t sub_1C9560584()
{
  OUTLINED_FUNCTION_39();
  v1 = sub_1C96A53C4();
  *(v0 + 72) = sub_1C955FF18(v1);
  sub_1C96A3A14();
  OUTLINED_FUNCTION_4_21();
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  *v2 = v0;
  v3 = OUTLINED_FUNCTION_5_0(v2);

  return v4(v3);
}

uint64_t sub_1C9560688()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_11();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 88) = v3;

  v4 = OUTLINED_FUNCTION_98();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

void sub_1C9560774()
{
  v1 = 0;
  v2 = *(v0 + 88);
  v3 = *(v0 + 72);
  v26 = *(v2 + 16);
  v24 = v2 + 32;
  v4 = MEMORY[0x1E69E7CC0];
  v25 = v2;
LABEL_2:
  while (v1 != v26)
  {
    v5 = v1;
    if (v1 >= *(v2 + 16))
    {
      __break(1u);
      return;
    }

    ++v1;
    if (*(v3 + 16))
    {
      v30 = v5 + 1;
      v6 = (v24 + 56 * v5);
      v8 = *v6;
      v7 = v6[1];
      v10 = v6[2];
      v9 = v6[3];
      v12 = v6[4];
      v11 = v6[5];
      v13 = v6[6];
      sub_1C96A7EE4();
      swift_bridgeObjectRetain_n();
      sub_1C96A3D04();
      sub_1C96A3D04();
      v27 = v12;
      sub_1C96A3D04();
      v28 = v11;
      sub_1C96A3D04();
      v29 = v13;
      sub_1C96A3D04();
      sub_1C96A7144();
      v14 = sub_1C96A7F24();
      v15 = ~(-1 << *(v3 + 32));
      do
      {
        v16 = v14 & v15;
        if (((*(v3 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          swift_bridgeObjectRelease_n();

          v1 = v30;
          v2 = v25;
          goto LABEL_2;
        }

        v17 = (*(v3 + 48) + 16 * v16);
        if (*v17 == v8 && v17[1] == v7)
        {
          break;
        }

        v19 = sub_1C96A7DE4();
        v14 = v16 + 1;
      }

      while ((v19 & 1) == 0);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C9522D48(0, *(v4 + 16) + 1, 1);
      }

      v21 = *(v4 + 16);
      v20 = *(v4 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1C9522D48((v20 > 1), v21 + 1, 1);
      }

      *(v4 + 16) = v21 + 1;
      v22 = (v4 + 56 * v21);
      v22[4] = v8;
      v22[5] = v7;
      v22[6] = v10;
      v22[7] = v9;
      v22[8] = v27;
      v22[9] = v28;
      v1 = v30;
      v22[10] = v29;
      v2 = v25;
    }
  }

  OUTLINED_FUNCTION_11_15();

  v23(v4);
}

uint64_t sub_1C9560A2C()
{
  OUTLINED_FUNCTION_39();
  sub_1C96A3A14();
  OUTLINED_FUNCTION_4_21();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_5_0(v1);

  return v3(v2);
}

uint64_t sub_1C9560B24()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_11();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 72) = v3;

  v4 = OUTLINED_FUNCTION_98();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C9560C10()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_11_15();
  v2 = *(v0 + 72);

  return v1(v2);
}

uint64_t LocationEntityQuery.entities(matching:)(uint64_t a1, uint64_t a2)
{
  v3[9] = a1;
  v3[10] = a2;
  v3[11] = *v2;
  return OUTLINED_FUNCTION_0_42();
}

uint64_t sub_1C9560C84()
{
  OUTLINED_FUNCTION_39();
  sub_1C96A3A14();
  OUTLINED_FUNCTION_4_21();
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_5_0(v1);

  return v3(v2);
}

uint64_t sub_1C9560D7C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_11();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 104) = v3;

  v4 = OUTLINED_FUNCTION_98();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

void sub_1C9560E68()
{
  v1 = 0;
  v2 = v0[13];
  v24 = *(v2 + 16);
  v22 = v2;
  v3 = v2 + 40;
  v20 = v3;
  v21 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v4 = (v3 + 56 * v1);
  while (v24 != v1)
  {
    if (v1 >= *(v22 + 16))
    {
      __break(1u);
      return;
    }

    v5 = v0[9];
    v25 = v0[10];
    v26 = v1;
    v6 = *v4;
    v23 = *(v4 - 1);
    v8 = v4[1];
    v7 = v4[2];
    v10 = v4[3];
    v9 = v4[4];
    v11 = v4[5];
    sub_1C96A53C4();
    sub_1C96A3D04();
    sub_1C96A3D04();
    sub_1C96A3D04();
    sub_1C96A3D04();
    sub_1C96A3D04();
    sub_1C96A3BF4();
    if (v0[7] == v5 && v0[8] == v25)
    {

LABEL_12:
      v14 = v21;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C9522D48(0, *(v21 + 16) + 1, 1);
        v14 = v21;
      }

      v15 = v26;
      v17 = *(v14 + 16);
      v16 = *(v14 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1C9522D48((v16 > 1), v17 + 1, 1);
        v15 = v26;
        v14 = v21;
      }

      v1 = v15 + 1;
      *(v14 + 16) = v17 + 1;
      v21 = v14;
      v18 = (v14 + 56 * v17);
      v18[4] = v23;
      v18[5] = v6;
      v18[6] = v8;
      v18[7] = v7;
      v18[8] = v10;
      v18[9] = v9;
      v18[10] = v11;
      v3 = v20;
      goto LABEL_2;
    }

    v13 = sub_1C96A7DE4();

    if (v13)
    {
      goto LABEL_12;
    }

    v4 += 7;
    v1 = v26 + 1;
  }

  OUTLINED_FUNCTION_11_15();

  v19(v21);
}

uint64_t sub_1C95610A0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A59A0);
  __swift_allocate_value_buffer(v0, qword_1EC3A5968);
  __swift_project_value_buffer(v0, qword_1EC3A5968);
  sub_1C9551824();
  return sub_1C96A3EC4();
}

uint64_t sub_1C956112C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5A18);
  swift_getKeyPath();
  sub_1C96A3E74();
  sub_1C9551824();
  v0 = sub_1C96A3D04();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5390);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1C96ACFF0;
  *(v1 + 32) = v0;
  sub_1C96A3D04();
  v2 = sub_1C96A4004();

  return v2;
}

uint64_t sub_1C9561224@<X0>(uint64_t *a1@<X8>)
{
  result = LocationEntity.$name.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C9561274()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5A20);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5A28);
  swift_allocObject();
  sub_1C96A3E64();
  sub_1C9551824();
  sub_1C96A4074();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5A30);
  v4 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C96AA1C0;
  (*(v1 + 16))(v5 + v4, v3, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A56E0);
  sub_1C95648CC();
  v6 = sub_1C96A4064();

  (*(v1 + 8))(v3, v0);
  return v6;
}

uint64_t sub_1C956148C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  return sub_1C96A53C4();
}

uint64_t sub_1C9561498()
{
  if (qword_1EC3A4660 != -1)
  {
    OUTLINED_FUNCTION_2_30();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A59A0);

  return __swift_project_value_buffer(v0, qword_1EC3A5968);
}

uint64_t static LocationEntityQuery.properties.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC3A4660 != -1)
  {
    OUTLINED_FUNCTION_2_30();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A59A0);
  v3 = __swift_project_value_buffer(v2, qword_1EC3A5968);
  OUTLINED_FUNCTION_13_14();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static LocationEntityQuery.properties.setter(uint64_t a1)
{
  if (qword_1EC3A4660 != -1)
  {
    OUTLINED_FUNCTION_2_30();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A59A0);
  __swift_project_value_buffer(v2, qword_1EC3A5968);
  OUTLINED_FUNCTION_12_18();
  v3 = *(v2 - 8);
  v4 = OUTLINED_FUNCTION_16_16();
  v5(v4);
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*static LocationEntityQuery.properties.modify())()
{
  if (qword_1EC3A4660 != -1)
  {
    OUTLINED_FUNCTION_2_30();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A59A0);
  __swift_project_value_buffer(v0, qword_1EC3A5968);
  OUTLINED_FUNCTION_19_1();
  return j__swift_endAccess;
}

uint64_t sub_1C9561700()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A59A8);
  __swift_allocate_value_buffer(v0, qword_1EC3A5980);
  __swift_project_value_buffer(v0, qword_1EC3A5980);
  sub_1C9551824();
  return sub_1C96A3FB4();
}

uint64_t sub_1C9561784()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5A00);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12 - v5;
  swift_getKeyPath();
  sub_1C9551824();
  sub_1C9564868();
  sub_1C96A4084();
  sub_1C96A40C4();
  v7 = *(v1 + 8);
  v7(v3, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5A10);
  v8 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C96AA1C0;
  (*(v1 + 16))(v9 + v8, v6, v0);
  v10 = sub_1C96A40B4();

  v7(v6, v0);
  return v10;
}

uint64_t sub_1C9561970()
{
  if (qword_1EC3A4668 != -1)
  {
    OUTLINED_FUNCTION_1_30();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A59A8);

  return __swift_project_value_buffer(v0, qword_1EC3A5980);
}

uint64_t static LocationEntityQuery.sortingOptions.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC3A4668 != -1)
  {
    OUTLINED_FUNCTION_1_30();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A59A8);
  v3 = __swift_project_value_buffer(v2, qword_1EC3A5980);
  OUTLINED_FUNCTION_13_14();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static LocationEntityQuery.sortingOptions.setter(uint64_t a1)
{
  if (qword_1EC3A4668 != -1)
  {
    OUTLINED_FUNCTION_1_30();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A59A8);
  __swift_project_value_buffer(v2, qword_1EC3A5980);
  OUTLINED_FUNCTION_12_18();
  v3 = *(v2 - 8);
  v4 = OUTLINED_FUNCTION_16_16();
  v5(v4);
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*static LocationEntityQuery.sortingOptions.modify())()
{
  if (qword_1EC3A4668 != -1)
  {
    OUTLINED_FUNCTION_1_30();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A59A8);
  __swift_project_value_buffer(v0, qword_1EC3A5980);
  OUTLINED_FUNCTION_19_1();
  return j_j__swift_endAccess;
}

uint64_t sub_1C9561BD8@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t *a2@<X4>, uint64_t a3@<X8>)
{
  v5 = a1();
  OUTLINED_FUNCTION_13_14();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  OUTLINED_FUNCTION_6_3();
  return (*(v6 + 16))(a3, v5);
}

uint64_t sub_1C9561C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t *a6)
{
  v8 = a5();
  OUTLINED_FUNCTION_12_18();
  __swift_instantiateConcreteTypeFromMangledNameV2(a6);
  OUTLINED_FUNCTION_6_3();
  (*(v9 + 24))(v8, a1);
  return swift_endAccess();
}

uint64_t LocationEntityQuery.entities(matching:mode:sortedBy:limit:)(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 104) = a1;
  *(v2 + 112) = v3;
  return OUTLINED_FUNCTION_0_42();
}

uint64_t sub_1C9561CF0()
{
  OUTLINED_FUNCTION_39();
  sub_1C96A3A14();
  OUTLINED_FUNCTION_4_21();
  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_5_0(v1);

  return v3(v2);
}

uint64_t sub_1C9561DE8()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_11();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 128) = v3;

  v4 = OUTLINED_FUNCTION_98();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

void sub_1C9561ED4()
{
  v1 = 0;
  v2 = v0[16];
  v24 = v2;
  v25 = *(v2 + 16);
  v22 = v2 + 32;
  v23 = v0[13];
  v3 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v27 = v3;
LABEL_3:
    if (v1 == v25)
    {
      break;
    }

    if (v1 >= *(v24 + 16))
    {
      __break(1u);
      return;
    }

    v4 = (v22 + 56 * v1);
    v26 = *v4;
    v6 = v4[2];
    v5 = v4[3];
    v8 = v4[4];
    v7 = v4[5];
    v9 = v4[6];
    ++v1;
    v10 = *(v23 + 16);
    v28 = v4[1];
    sub_1C96A53C4();
    sub_1C96A3D04();
    v29 = v5;
    sub_1C96A3D04();
    v30 = v8;
    sub_1C96A3D04();
    v31 = v7;
    sub_1C96A3D04();
    v32 = v9;
    sub_1C96A3D04();
    v11 = v10 + 1;
    v12 = (v23 + 40);
    while (--v11)
    {
      v13 = v12 + 2;
      v15 = *(v12 - 1);
      v14 = *v12;
      sub_1C96A53C4();
      sub_1C96A3BF4();
      v16 = v0[8];
      v0[9] = v0[7];
      v0[10] = v16;
      v0[11] = v15;
      v0[12] = v14;
      sub_1C946DFF0();
      v17 = sub_1C96A79A4();

      v12 = v13;
      if ((v17 & 1) == 0)
      {

        v3 = v27;
        goto LABEL_3;
      }
    }

    v3 = v27;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C9522D48(0, *(v27 + 16) + 1, 1);
      v3 = v27;
    }

    v19 = *(v3 + 16);
    v18 = *(v3 + 24);
    if (v19 >= v18 >> 1)
    {
      sub_1C9522D48((v18 > 1), v19 + 1, 1);
      v3 = v27;
    }

    *(v3 + 16) = v19 + 1;
    v20 = (v3 + 56 * v19);
    v20[4] = v26;
    v20[5] = v28;
    v20[6] = v6;
    v20[7] = v29;
    v20[8] = v30;
    v20[9] = v31;
    v20[10] = v32;
  }

  OUTLINED_FUNCTION_11_15();

  v21(v3);
}

uint64_t sub_1C956215C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1C95621EC;

  return LocationEntityQuery.allEntities()();
}

uint64_t sub_1C95621EC(uint64_t a1)
{
  OUTLINED_FUNCTION_27();
  v5 = v4;
  OUTLINED_FUNCTION_7_11();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_7_11();
  *v8 = v7;

  if (!v1)
  {
    **(v5 + 16) = a1;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_1C95622F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1C9564928;

  return LocationEntityQuery.entities(matching:)(a2, a3);
}

uint64_t sub_1C95623A0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1C9564928;

  return LocationEntityQuery.entities(matching:mode:sortedBy:limit:)(a2);
}

uint64_t sub_1C956243C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C9564930;

  return LocationEntityQuery.entities(for:)(a1);
}

uint64_t sub_1C95624D0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1C9562BF0();
  *v5 = v2;
  v5[1] = sub_1C9562584;

  return MEMORY[0x1EEDB3AE8](a1, a2, v6);
}

uint64_t sub_1C9562584()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_7_11();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1C956266C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1C956272C;

  return MEMORY[0x1EEDB2EC0](a1, a2, a3, a4);
}

uint64_t sub_1C956272C()
{
  OUTLINED_FUNCTION_18();
  v3 = v2;
  OUTLINED_FUNCTION_27();
  v4 = *v1;
  OUTLINED_FUNCTION_7_11();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_1C9562820(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1C95517C0();
  *v5 = v2;
  v5[1] = sub_1C9564920;

  return MEMORY[0x1EEDB2ED8](a1, a2, v6);
}

uint64_t sub_1C95628D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C9562584;

  return MEMORY[0x1EEDB3B80](a1, a2, a3);
}

unint64_t sub_1C9562994()
{
  result = qword_1EC3A59B0;
  if (!qword_1EC3A59B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A59B0);
  }

  return result;
}

unint64_t sub_1C95629EC()
{
  result = qword_1EC3A59B8;
  if (!qword_1EC3A59B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A59B8);
  }

  return result;
}

unint64_t sub_1C9562A48()
{
  result = qword_1EC3A59C0;
  if (!qword_1EC3A59C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A59C0);
  }

  return result;
}

unint64_t sub_1C9562AA4()
{
  result = qword_1EC3A59C8;
  if (!qword_1EC3A59C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3A59D0);
    sub_1C9551924();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A59C8);
  }

  return result;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;
  sub_1C96A3D04();
  return a1;
}

void *__swift_assignWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;
  sub_1C96A3D04();

  return a1;
}

void *__swift_assignWithTake_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

unint64_t sub_1C9562BF0()
{
  result = qword_1EC3A59D8;
  if (!qword_1EC3A59D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A59D8);
  }

  return result;
}

BOOL sub_1C9562C44(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1C96A7EE4();
  sub_1C96A7144();
  v8 = sub_1C96A7F24();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    v12 = (*(v7 + 48) + 16 * v10);
    v13 = *v12 == a2 && v12[1] == a3;
    if (v13 || (sub_1C96A7DE4() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v10);
      v15 = v14[1];
      *a1 = *v14;
      a1[1] = v15;
      sub_1C96A53C4();
      return v11 == 0;
    }

    v8 = v10 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;
  sub_1C96A53C4();
  sub_1C9563A20(a2, a3, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v18;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

uint64_t sub_1C9562D90(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(a2 + 16);
  v42 = *a2;
  v43 = v5;
  v44 = *(a2 + 32);
  v45 = *(a2 + 48);
  sub_1C96A7EE4();
  SyncedLocationKey.hash(into:)(v41);
  v6 = sub_1C96A7F24();
  v39 = v4 + 56;
  v40 = v4;
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  v36 = a2;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    v10 = *(a2 + 32);
    v11 = *(a2 + 40);
    v12 = *a2;
    v13 = *(a2 + 8);
    v14 = *(a2 + 16);
    v15 = *(a2 + 24);
    v38 = *(a2 + 48);
    while (1)
    {
      v16 = *(v40 + 48) + 56 * v8;
      v18 = *(v16 + 16);
      v17 = *(v16 + 24);
      v20 = *(v16 + 32);
      v19 = *(v16 + 40);
      v21 = *v16 == v12 && *(v16 + 8) == v13;
      if (v21 || (sub_1C96A7DE4() & 1) != 0)
      {
        v22 = v18 == v14 && v17 == v15;
        if (v22 || (sub_1C96A7DE4()) && v20 == v10 && v19 == v11)
        {
          sub_1C96A53C4();
          sub_1C96A53C4();
          v24 = sub_1C96A53C4();
          sub_1C94D6458(v24, v38);
          v26 = v25;

          if (v26)
          {
            break;
          }
        }
      }

      v8 = (v8 + 1) & v9;
      if (((*(v39 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    sub_1C9563DEC(a2);
    v30 = *(v40 + 48) + 56 * v8;
    v31 = *(v30 + 8);
    v32 = *(v30 + 16);
    v33 = *(v30 + 24);
    v34 = *(v30 + 48);
    *a1 = *v30;
    *(a1 + 8) = v31;
    *(a1 + 16) = v32;
    *(a1 + 24) = v33;
    *(a1 + 32) = *(v30 + 32);
    *(a1 + 48) = v34;
    sub_1C96A53C4();
    sub_1C96A53C4();
    sub_1C96A53C4();
    return 0;
  }

  else
  {
LABEL_20:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v42 = *v35;
    sub_1C9563008(v36, v41);
    sub_1C9563B88(v36, v8, isUniquelyReferenced_nonNull_native);
    *v35 = v42;
    v28 = *(v36 + 16);
    *a1 = *v36;
    *(a1 + 16) = v28;
    *(a1 + 32) = *(v36 + 32);
    *(a1 + 48) = *(v36 + 48);
    return 1;
  }
}

uint64_t sub_1C9563064()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5A40);
  result = sub_1C96A7A64();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return result;
  }

  v5 = 0;
  v6 = (v2 + 56);
  v7 = 1 << *(v2 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = result + 56;
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      sub_1C94C18E0(0, (v27 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = (*(v2 + 48) + 16 * (v12 | (v5 << 6)));
    v16 = *v15;
    v17 = v15[1];
    sub_1C96A7EE4();
    sub_1C96A7144();
    result = sub_1C96A7F24();
    v18 = -1 << *(v4 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
    {
      break;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    v26 = (*(v4 + 48) + 16 * v21);
    *v26 = v16;
    v26[1] = v17;
    ++*(v4 + 16);
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  v22 = 0;
  v23 = (63 - v18) >> 6;
  while (++v20 != v23 || (v22 & 1) == 0)
  {
    v24 = v20 == v23;
    if (v20 == v23)
    {
      v20 = 0;
    }

    v22 |= v24;
    v25 = *(v11 + 8 * v20);
    if (v25 != -1)
    {
      v21 = __clz(__rbit64(~v25)) + (v20 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1C95632C0()
{
  v87 = sub_1C96A66B4();
  v1 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v86 = &v65 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A59E0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v83 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v65 - v6);
  v68 = v0;
  v8 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A59E8);
  result = sub_1C96A7A64();
  v10 = result;
  if (*(v8 + 16))
  {
    v11 = 0;
    v12 = *(v8 + 56);
    v67 = (v8 + 56);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & v12;
    v66 = (v13 + 63) >> 6;
    v78 = v1 + 16;
    v85 = (v1 + 32);
    v82 = (v1 + 8);
    v80 = v1;
    v79 = v7;
    v71 = v8;
    v70 = result;
    v69 = result + 56;
    if (v15)
    {
      while (2)
      {
        v16 = __clz(__rbit64(v15));
        v76 = (v15 - 1) & v15;
LABEL_12:
        v77 = v11;
        v19 = *(v8 + 48) + 56 * (v16 | (v11 << 6));
        v20 = *v19;
        v21 = *(v19 + 8);
        v22 = *(v19 + 16);
        v23 = *(v19 + 24);
        v24 = *(v19 + 32);
        v25 = *(v19 + 40);
        v26 = *(v19 + 48);
        sub_1C96A7EE4();
        v75 = v20;
        v74 = v21;
        sub_1C96A7144();
        v73 = v22;
        v72 = v23;
        sub_1C96A7144();
        if (v24 == 0.0)
        {
          v27 = 0.0;
        }

        else
        {
          v27 = v24;
        }

        MEMORY[0x1CCA8D8A0](*&v27);
        if (v25 == 0.0)
        {
          v28 = 0.0;
        }

        else
        {
          v28 = v25;
        }

        MEMORY[0x1CCA8D8A0](*&v28);
        v29 = v26 + 64;
        v30 = 1 << *(v26 + 32);
        if (v30 < 64)
        {
          v31 = ~(-1 << v30);
        }

        else
        {
          v31 = -1;
        }

        v32 = v31 & *(v26 + 64);
        v33 = (v30 + 63) >> 6;
        v81 = v26;
        result = sub_1C96A53C4();
        v34 = 0;
        v35 = 0;
        while (1)
        {
          if (!v32)
          {
            v37 = v83;
            while (1)
            {
              v36 = v35 + 1;
              if (__OFADD__(v35, 1))
              {
                break;
              }

              if (v36 >= v33)
              {
                v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A59F0);
                __swift_storeEnumTagSinglePayload(v37, 1, 1, v51);
                v32 = 0;
                goto LABEL_30;
              }

              v32 = *(v29 + 8 * v36);
              ++v35;
              if (v32)
              {
                v84 = v34;
                v35 = v36;
                goto LABEL_29;
              }
            }

            __break(1u);
            goto LABEL_51;
          }

          v84 = v34;
          v36 = v35;
LABEL_29:
          v38 = __clz(__rbit64(v32));
          v32 &= v32 - 1;
          v39 = v38 | (v36 << 6);
          v40 = *(*(v81 + 48) + 8 * v39);
          v41 = v80;
          v42 = v86;
          v43 = v87;
          (*(v80 + 16))(v86, *(v81 + 56) + *(v80 + 72) * v39, v87);
          v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A59F0);
          v45 = *(v44 + 48);
          v46 = v83;
          *v83 = v40;
          v37 = v46;
          (*(v41 + 32))(&v46[v45], v42, v43);
          __swift_storeEnumTagSinglePayload(v37, 0, 1, v44);
          v7 = v79;
          v34 = v84;
LABEL_30:
          sub_1C95647A0(v37, v7);
          v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A59F0);
          if (__swift_getEnumTagSinglePayload(v7, 1, v47) == 1)
          {
            break;
          }

          v48 = *v7;
          v49 = v86;
          v50 = v87;
          (*v85)(v86, v7 + *(v47 + 48), v87);
          memcpy(__dst, __src, sizeof(__dst));
          MEMORY[0x1CCA8D880](v48);
          sub_1C9564810();
          sub_1C96A6F34();
          (*v82)(v49, v50);
          result = sub_1C96A7F24();
          v34 ^= result;
        }

        MEMORY[0x1CCA8D880](v34);
        result = sub_1C96A7F24();
        v10 = v70;
        v52 = -1 << *(v70 + 32);
        v53 = result & ~v52;
        v54 = v53 >> 6;
        if (((-1 << v53) & ~*(v69 + 8 * (v53 >> 6))) == 0)
        {
          v56 = 0;
          v57 = (63 - v52) >> 6;
          v8 = v71;
          while (++v54 != v57 || (v56 & 1) == 0)
          {
            v58 = v54 == v57;
            if (v54 == v57)
            {
              v54 = 0;
            }

            v56 |= v58;
            v59 = *(v69 + 8 * v54);
            if (v59 != -1)
            {
              v55 = __clz(__rbit64(~v59)) + (v54 << 6);
              goto LABEL_42;
            }
          }

          goto LABEL_52;
        }

        v55 = __clz(__rbit64((-1 << v53) & ~*(v69 + 8 * (v53 >> 6)))) | v53 & 0x7FFFFFFFFFFFFFC0;
        v8 = v71;
LABEL_42:
        *(v69 + ((v55 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v55;
        v60 = *(v10 + 48) + 56 * v55;
        v61 = v74;
        *v60 = v75;
        *(v60 + 8) = v61;
        v62 = v72;
        *(v60 + 16) = v73;
        *(v60 + 24) = v62;
        *(v60 + 32) = v24;
        *(v60 + 40) = v25;
        *(v60 + 48) = v81;
        ++*(v10 + 16);
        v11 = v77;
        v15 = v76;
        if (v76)
        {
          continue;
        }

        break;
      }
    }

    v17 = v11;
    while (1)
    {
      v11 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v11 >= v66)
      {
        v63 = 1 << *(v8 + 32);
        if (v63 >= 64)
        {
          sub_1C94C18E0(0, (v63 + 63) >> 6, v67);
        }

        else
        {
          *v67 = -1 << v63;
        }

        v64 = v68;
        *(v8 + 16) = 0;

        goto LABEL_49;
      }

      v18 = v67[v11];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v76 = (v18 - 1) & v18;
        goto LABEL_12;
      }
    }

LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
  }

  else
  {

    v64 = v68;
LABEL_49:
    *v64 = v10;
  }

  return result;
}

void sub_1C9563A20(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1C9563064();
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_1C9563E40();
LABEL_10:
      v15 = *v4;
      sub_1C96A7EE4();
      sub_1C96A7144();
      v16 = sub_1C96A7F24();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = v16 & v17;
        if (((*(v15 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == a1 && v18[1] == a2;
        if (v19 || (sub_1C96A7DE4() & 1) != 0)
        {
          goto LABEL_19;
        }

        v16 = a3 + 1;
      }
    }

    sub_1C95C8D8C();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = a1;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    sub_1C96A7E34();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }
}

void sub_1C9563B88(__int128 *a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_27;
  }

  if (a3)
  {
    sub_1C95632C0();
  }

  else
  {
    if (v7 > v6)
    {
      sub_1C95C8EA0();
      goto LABEL_27;
    }

    sub_1C9564074();
  }

  v8 = *v3;
  v9 = a1[1];
  v42 = *a1;
  v43 = v9;
  v44 = a1[2];
  v45 = *(a1 + 6);
  sub_1C96A7EE4();
  SyncedLocationKey.hash(into:)(v41);
  v10 = sub_1C96A7F24();
  v39 = v8 + 56;
  v40 = v8;
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    v13 = *(a1 + 4);
    v14 = *(a1 + 5);
    v15 = *a1;
    v16 = *(a1 + 1);
    v17 = *(a1 + 2);
    v18 = *(a1 + 3);
    v38 = *(a1 + 6);
    do
    {
      v19 = *(v40 + 48) + 56 * a2;
      v20 = *(v19 + 16);
      v21 = *(v19 + 24);
      v23 = *(v19 + 32);
      v22 = *(v19 + 40);
      v24 = *v19 == v15 && *(v19 + 8) == v16;
      if (v24 || (sub_1C96A7DE4() & 1) != 0)
      {
        v25 = v20 == v17 && v21 == v18;
        if (v25 || (sub_1C96A7DE4()) && v23 == v13 && v22 == v14)
        {
          sub_1C96A53C4();
          sub_1C96A53C4();
          v27 = sub_1C96A53C4();
          sub_1C94D6458(v27, v38);
          v29 = v28;

          if (v29)
          {
            goto LABEL_30;
          }
        }
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v39 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_27:
  v30 = *v36;
  *(*v36 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v31 = *(v30 + 48) + 56 * a2;
  v32 = a1[1];
  *v31 = *a1;
  *(v31 + 16) = v32;
  *(v31 + 32) = a1[2];
  *(v31 + 48) = *(a1 + 6);
  v33 = *(v30 + 16);
  v34 = __OFADD__(v33, 1);
  v35 = v33 + 1;
  if (!v34)
  {
    *(v30 + 16) = v35;
    return;
  }

  __break(1u);
LABEL_30:
  sub_1C96A7E34();
  __break(1u);
}

uint64_t sub_1C9563E40()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5A40);
  result = sub_1C96A7A64();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        v14 = (*(v2 + 48) + 16 * (v11 | (v5 << 6)));
        v15 = *v14;
        v16 = v14[1];
        sub_1C96A7EE4();
        sub_1C96A53C4();
        sub_1C96A7144();
        result = sub_1C96A7F24();
        v17 = -1 << *(v4 + 32);
        v18 = result & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v10 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        v20 = __clz(__rbit64((-1 << v18) & ~*(v10 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v10 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        v25 = (*(v4 + 48) + 16 * v20);
        *v25 = v15;
        v25[1] = v16;
        ++*(v4 + 16);
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v10 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v12 = v5;
      while (1)
      {
        v5 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v5 >= v9)
        {

          v1 = v0;
          goto LABEL_25;
        }

        v13 = *(v2 + 56 + 8 * v5);
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v8 = (v13 - 1) & v13;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1C9564074()
{
  v86 = sub_1C96A66B4();
  v1 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v85 = &v64 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A59E0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v64 - v7);
  v67 = v0;
  v9 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A59E8);
  result = sub_1C96A7A64();
  v11 = result;
  if (*(v9 + 16))
  {
    v12 = 0;
    v13 = *(v9 + 56);
    v66 = v9 + 56;
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & v13;
    v65 = (v14 + 63) >> 6;
    v77 = v1 + 16;
    v84 = (v1 + 32);
    v81 = (v1 + 8);
    v79 = v1;
    v82 = v5;
    v78 = v8;
    v70 = v9;
    v69 = result;
    v68 = result + 56;
    if (v16)
    {
      while (2)
      {
        v17 = __clz(__rbit64(v16));
        v75 = (v16 - 1) & v16;
LABEL_12:
        v76 = v12;
        v20 = *(v9 + 48) + 56 * (v17 | (v12 << 6));
        v21 = *v20;
        v22 = *(v20 + 8);
        v23 = *(v20 + 16);
        v24 = *(v20 + 24);
        v25 = *(v20 + 32);
        v26 = *(v20 + 40);
        v27 = *(v20 + 48);
        sub_1C96A7EE4();
        sub_1C96A53C4();
        sub_1C96A53C4();
        sub_1C96A53C4();
        v74 = v21;
        v73 = v22;
        sub_1C96A7144();
        v72 = v23;
        v71 = v24;
        sub_1C96A7144();
        if (v25 == 0.0)
        {
          v28 = 0.0;
        }

        else
        {
          v28 = v25;
        }

        MEMORY[0x1CCA8D8A0](*&v28);
        if (v26 == 0.0)
        {
          v29 = 0.0;
        }

        else
        {
          v29 = v26;
        }

        MEMORY[0x1CCA8D8A0](*&v29);
        v30 = v27 + 64;
        v31 = 1 << *(v27 + 32);
        if (v31 < 64)
        {
          v32 = ~(-1 << v31);
        }

        else
        {
          v32 = -1;
        }

        v33 = v32 & *(v27 + 64);
        v34 = (v31 + 63) >> 6;
        v80 = v27;
        result = sub_1C96A53C4();
        v35 = 0;
        v36 = 0;
        while (1)
        {
          if (!v33)
          {
            v38 = v82;
            while (1)
            {
              v37 = v36 + 1;
              if (__OFADD__(v36, 1))
              {
                break;
              }

              if (v37 >= v34)
              {
                v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A59F0);
                __swift_storeEnumTagSinglePayload(v38, 1, 1, v52);
                v33 = 0;
                goto LABEL_30;
              }

              v33 = *(v30 + 8 * v37);
              ++v36;
              if (v33)
              {
                v83 = v35;
                v36 = v37;
                goto LABEL_29;
              }
            }

            __break(1u);
            goto LABEL_46;
          }

          v83 = v35;
          v37 = v36;
LABEL_29:
          v39 = __clz(__rbit64(v33));
          v33 &= v33 - 1;
          v40 = v39 | (v37 << 6);
          v41 = *(*(v80 + 48) + 8 * v40);
          v42 = v79;
          v43 = v85;
          v44 = v86;
          (*(v79 + 16))(v85, *(v80 + 56) + *(v79 + 72) * v40, v86);
          v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A59F0);
          v46 = *(v45 + 48);
          v47 = v82;
          *v82 = v41;
          v38 = v47;
          (*(v42 + 32))(&v47[v46], v43, v44);
          __swift_storeEnumTagSinglePayload(v38, 0, 1, v45);
          v8 = v78;
          v35 = v83;
LABEL_30:
          sub_1C95647A0(v38, v8);
          v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A59F0);
          if (__swift_getEnumTagSinglePayload(v8, 1, v48) == 1)
          {
            break;
          }

          v49 = *v8;
          v50 = v85;
          v51 = v86;
          (*v84)(v85, v8 + *(v48 + 48), v86);
          memcpy(__dst, __src, sizeof(__dst));
          MEMORY[0x1CCA8D880](v49);
          sub_1C9564810();
          sub_1C96A6F34();
          (*v81)(v50, v51);
          result = sub_1C96A7F24();
          v35 ^= result;
        }

        MEMORY[0x1CCA8D880](v35);
        result = sub_1C96A7F24();
        v11 = v69;
        v53 = -1 << *(v69 + 32);
        v54 = result & ~v53;
        v55 = v54 >> 6;
        if (((-1 << v54) & ~*(v68 + 8 * (v54 >> 6))) == 0)
        {
          v57 = 0;
          v58 = (63 - v53) >> 6;
          v9 = v70;
          while (++v55 != v58 || (v57 & 1) == 0)
          {
            v59 = v55 == v58;
            if (v55 == v58)
            {
              v55 = 0;
            }

            v57 |= v59;
            v60 = *(v68 + 8 * v55);
            if (v60 != -1)
            {
              v56 = __clz(__rbit64(~v60)) + (v55 << 6);
              goto LABEL_42;
            }
          }

          goto LABEL_47;
        }

        v56 = __clz(__rbit64((-1 << v54) & ~*(v68 + 8 * (v54 >> 6)))) | v54 & 0x7FFFFFFFFFFFFFC0;
        v9 = v70;
LABEL_42:
        *(v68 + ((v56 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v56;
        v61 = *(v11 + 48) + 56 * v56;
        v62 = v73;
        *v61 = v74;
        *(v61 + 8) = v62;
        v63 = v71;
        *(v61 + 16) = v72;
        *(v61 + 24) = v63;
        *(v61 + 32) = v25;
        *(v61 + 40) = v26;
        *(v61 + 48) = v80;
        ++*(v11 + 16);
        v12 = v76;
        v16 = v75;
        if (v75)
        {
          continue;
        }

        break;
      }
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v65)
      {
        goto LABEL_44;
      }

      v19 = *(v66 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v75 = (v19 - 1) & v19;
        goto LABEL_12;
      }
    }

LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
  }

  else
  {
LABEL_44:

    *v67 = v11;
  }

  return result;
}

uint64_t sub_1C95647A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A59E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C9564810()
{
  result = qword_1EC3A59F8;
  if (!qword_1EC3A59F8)
  {
    sub_1C96A66B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A59F8);
  }

  return result;
}

unint64_t sub_1C9564868()
{
  result = qword_1EC3A5A08;
  if (!qword_1EC3A5A08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3A56E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A5A08);
  }

  return result;
}

unint64_t sub_1C95648CC()
{
  result = qword_1EC3A5A38;
  if (!qword_1EC3A5A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A5A38);
  }

  return result;
}

uint64_t LocationModelData.init(locationOfInterest:isPredictedLocation:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_1C94A7894(a1, a3);
  result = OUTLINED_FUNCTION_48_2();
  *(a3 + v6) = a2;
  return result;
}

double LocationModel.coordinate.getter()
{
  LocationModel.identifier.getter();
  sub_1C953AEDC(v1);
  return v2;
}

void LocationModel.timeZone.getter()
{
  OUTLINED_FUNCTION_103();
  OUTLINED_FUNCTION_40_0();
  v2 = type metadata accessor for Location();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_35_4();
  type metadata accessor for SavedLocation();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14();
  v7 = v6 - v5;
  v8 = type metadata accessor for CurrentLocation();
  v9 = OUTLINED_FUNCTION_7(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14();
  v12 = v11 - v10;
  type metadata accessor for LocationModel(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_2_31();
  sub_1C949E000();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_6_22();
    sub_1C94A8124();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_1_31();
      sub_1C949A950(v7, v14);
      sub_1C96A4DF4();
      v15 = OUTLINED_FUNCTION_43_4();
      v17 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_4_22();
      sub_1C94A8124();
      v19 = *(v2 + 20);
      v20 = sub_1C96A4DF4();
      OUTLINED_FUNCTION_6();
      (*(v21 + 16))(v0, v1 + v19, v20);
      OUTLINED_FUNCTION_25_10();
      v15 = v0;
      v17 = 0;
      v16 = v20;
    }

    __swift_storeEnumTagSinglePayload(v15, v17, 1, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5948);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5940);
    OUTLINED_FUNCTION_5_21();
    sub_1C94A8124();
    CurrentLocation.timeZone.getter(v0);
    OUTLINED_FUNCTION_3_23();
    sub_1C949A950(v12, v18);
  }

  OUTLINED_FUNCTION_0_43();
  sub_1C949A950(v22, v23);
  OUTLINED_FUNCTION_101();
}

uint64_t LocationModel.init(location:locationOfInterest:isPredictedLocation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  if (*(a1 + 48) == 1)
  {
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5940) + 48);
    OUTLINED_FUNCTION_4_22();
    sub_1C94A8124();
    type metadata accessor for CurrentLocation();
  }

  else
  {
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5948) + 48);
    OUTLINED_FUNCTION_4_22();
    sub_1C94A8124();
    type metadata accessor for SavedLocation();
  }

  v8 = a4 + v7;
  swift_storeEnumTagMultiPayload();
  sub_1C94A7894(a2, v8);
  OUTLINED_FUNCTION_48_2();
  *(v8 + v9) = a3 & 1;
  type metadata accessor for LocationModel(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1C9564D10(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E6572727563 && a2 == 0xE700000000000000;
  if (v4 || (sub_1C96A7DE4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6465766173 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C96A7DE4();

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

uint64_t sub_1C9564DD4(char a1)
{
  if (a1)
  {
    return 0x6465766173;
  }

  else
  {
    return 0x746E6572727563;
  }
}

uint64_t sub_1C9564E08(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000;
  if (v3 || (sub_1C96A7DE4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xEC00000061746144)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C96A7DE4();

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

uint64_t sub_1C9564EDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C9564D10(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C9564F04(uint64_t a1)
{
  v2 = sub_1C9566700();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9564F40(uint64_t a1)
{
  v2 = sub_1C9566700();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9564F7C(uint64_t a1)
{
  v2 = sub_1C95667F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9564FB8(uint64_t a1)
{
  v2 = sub_1C95667F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9564FF4(uint64_t a1)
{
  v2 = sub_1C9566754();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9565030(uint64_t a1)
{
  v2 = sub_1C9566754();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9565094(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x80000001C96D0B20 == a2;
  if (v3 || (sub_1C96A7DE4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001C96D0B40 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C96A7DE4();

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

unint64_t sub_1C9565168(char a1)
{
  if (a1)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_1C95651A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C9565094(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C95651CC(uint64_t a1)
{
  v2 = sub_1C9566844();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9565208(uint64_t a1)
{
  v2 = sub_1C9566844();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LocationModel.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5A48);
  OUTLINED_FUNCTION_1();
  v58 = v4;
  v59 = v3;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_90();
  v56 = v6;
  OUTLINED_FUNCTION_15_4();
  v50[1] = type metadata accessor for SavedLocation();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14();
  v57 = v9 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5A50);
  OUTLINED_FUNCTION_1();
  v54 = v11;
  v55 = v10;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_90();
  v53 = v13;
  v14 = OUTLINED_FUNCTION_15_4();
  v50[0] = type metadata accessor for LocationModelData(v14);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2();
  v51 = v16 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v52 = v50 - v19;
  OUTLINED_FUNCTION_15_4();
  type metadata accessor for CurrentLocation();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_14();
  v23 = v22 - v21;
  type metadata accessor for LocationModel(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_14();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5A58);
  OUTLINED_FUNCTION_1();
  v61 = v26;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_28_2();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C9566700();
  sub_1C96A7F54();
  OUTLINED_FUNCTION_2_31();
  sub_1C949E000();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5948);
    OUTLINED_FUNCTION_6_22();
    v28 = v57;
    sub_1C94A8124();
    OUTLINED_FUNCTION_7_17();
    v29 = v51;
    sub_1C94A8124();
    v67 = 1;
    sub_1C9566754();
    v30 = v56;
    sub_1C96A7CD4();
    v66 = 0;
    OUTLINED_FUNCTION_22_10();
    sub_1C95667A8(v31, v32);
    v33 = v59;
    v34 = v60;
    sub_1C96A7D74();
    if (!v34)
    {
      v65 = 1;
      OUTLINED_FUNCTION_8_18();
      sub_1C95667A8(v35, v36);
      sub_1C96A7D74();
    }

    (*(v58 + 8))(v30, v33);
    OUTLINED_FUNCTION_0_43();
    sub_1C949A950(v29, v37);
    OUTLINED_FUNCTION_1_31();
    v39 = v28;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5940);
    OUTLINED_FUNCTION_5_21();
    sub_1C94A8124();
    OUTLINED_FUNCTION_7_17();
    v40 = v52;
    sub_1C94A8124();
    v64 = 0;
    sub_1C95667F0();
    v41 = v53;
    sub_1C96A7CD4();
    v63 = 0;
    OUTLINED_FUNCTION_20_11();
    sub_1C95667A8(v42, v43);
    v44 = v55;
    v45 = v60;
    sub_1C96A7D74();
    if (!v45)
    {
      v62 = 1;
      OUTLINED_FUNCTION_8_18();
      sub_1C95667A8(v46, v47);
      sub_1C96A7D74();
    }

    (*(v54 + 8))(v41, v44);
    OUTLINED_FUNCTION_0_43();
    sub_1C949A950(v40, v48);
    OUTLINED_FUNCTION_3_23();
    v39 = v23;
  }

  sub_1C949A950(v39, v38);
  return (*(v61 + 8))(v1, v25);
}

void LocationModel.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v62[4] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5A60);
  OUTLINED_FUNCTION_1();
  v62[7] = v4;
  v62[8] = v3;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_90();
  v62[11] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5A68);
  OUTLINED_FUNCTION_1();
  v62[5] = v8;
  v62[6] = v7;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_90();
  v62[10] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5A70);
  OUTLINED_FUNCTION_1();
  v62[9] = v12;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v13);
  v14 = OUTLINED_FUNCTION_27_7();
  v15 = type metadata accessor for LocationModel(v14);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_2();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v62 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = v62 - v24;
  v26 = a1[3];
  v63 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_1C9566700();
  v27 = v64;
  sub_1C96A7F44();
  if (v27)
  {
    goto LABEL_11;
  }

  v62[1] = v19;
  v62[2] = v22;
  v62[3] = v25;
  v64 = v15;
  v28 = sub_1C96A7CC4();
  sub_1C948DD90(v28, 0);
  if (v31 == v32 >> 1)
  {
    v33 = v11;
    v34 = v64;
LABEL_9:
    v43 = sub_1C96A7AE4();
    swift_allocError();
    v45 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5A78);
    *v45 = v34;
    sub_1C96A7C14();
    sub_1C96A7AD4();
    (*(*(v43 - 8) + 104))(v45, *MEMORY[0x1E69E6AF8], v43);
    swift_willThrow();
    swift_unknownObjectRelease();
    v46 = OUTLINED_FUNCTION_15_13();
    v47(v46, v33);
LABEL_11:
    __swift_destroy_boxed_opaque_existential_1Tm(v63);
    return;
  }

  if (v31 >= (v32 >> 1))
  {
    __break(1u);
  }

  else
  {
    v35 = *(v30 + v31);
    v36 = sub_1C9566F30(v31 + 1, v32 >> 1, v29, v30, v31, v32);
    v38 = v37;
    v40 = v39;
    swift_unknownObjectRelease();
    v62[0] = v36;
    if (v38 != v40 >> 1)
    {
      v33 = v11;
      v34 = v64;
      goto LABEL_9;
    }

    if (v35)
    {
      v70 = 1;
      sub_1C9566754();
      OUTLINED_FUNCTION_45_4();
      type metadata accessor for SavedLocation();
      v69 = 0;
      OUTLINED_FUNCTION_22_10();
      sub_1C95667A8(v41, v42);
      OUTLINED_FUNCTION_34_5();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5948);
      type metadata accessor for LocationModelData(0);
      v68 = 1;
      OUTLINED_FUNCTION_8_18();
      sub_1C95667A8(v50, v51);
      OUTLINED_FUNCTION_34_5();
      swift_unknownObjectRelease();
      v54 = OUTLINED_FUNCTION_26_5();
      v55(v54);
      v56 = OUTLINED_FUNCTION_33_4();
      v57(v56);
    }

    else
    {
      v67 = 0;
      sub_1C95667F0();
      OUTLINED_FUNCTION_45_4();
      type metadata accessor for CurrentLocation();
      v66 = 0;
      OUTLINED_FUNCTION_20_11();
      sub_1C95667A8(v48, v49);
      OUTLINED_FUNCTION_34_5();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5940);
      type metadata accessor for LocationModelData(0);
      v65 = 1;
      OUTLINED_FUNCTION_8_18();
      sub_1C95667A8(v52, v53);
      OUTLINED_FUNCTION_34_5();
      swift_unknownObjectRelease();
      v58 = OUTLINED_FUNCTION_41_0();
      v59(v58);
      v60 = OUTLINED_FUNCTION_15_13();
      v61(v60, v11);
    }

    swift_storeEnumTagMultiPayload();
    sub_1C94A8124();
    sub_1C94A8124();
    __swift_destroy_boxed_opaque_existential_1Tm(v63);
  }
}

uint64_t LocationModelData.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5A98);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_28_2();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C9566844();
  sub_1C96A7F54();
  type metadata accessor for LocationOfInterest();
  OUTLINED_FUNCTION_19_11();
  sub_1C95667A8(v8, v9);
  sub_1C96A7D14();
  if (!v1)
  {
    type metadata accessor for LocationModelData(0);
    sub_1C96A7D34();
  }

  return (*(v6 + 8))(v2, v4);
}

uint64_t LocationModelData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23[1] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5930);
  OUTLINED_FUNCTION_7(v5);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_90();
  v25 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5AA0);
  OUTLINED_FUNCTION_1();
  v24 = v9;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v23 - v11;
  v13 = type metadata accessor for LocationModelData(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_44_2();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C9566844();
  sub_1C96A7F44();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v15 = v3;
  v16 = v24;
  type metadata accessor for LocationOfInterest();
  v27 = 0;
  OUTLINED_FUNCTION_19_11();
  sub_1C95667A8(v17, v18);
  v19 = v25;
  sub_1C96A7C74();
  sub_1C94A7894(v19, v15);
  v26 = 1;
  v20 = sub_1C96A7C94();
  (*(v16 + 8))(v12, v8);
  *(v15 + *(v13 + 20)) = v20 & 1;
  sub_1C949E000();
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  OUTLINED_FUNCTION_0_43();
  return sub_1C949A950(v15, v21);
}

uint64_t static LocationModelData.== infix(_:_:)()
{
  OUTLINED_FUNCTION_36_2();
  type metadata accessor for LocationOfInterest();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_21_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5930);
  OUTLINED_FUNCTION_7(v5);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_28_2();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5AB0);
  OUTLINED_FUNCTION_7(v7);
  OUTLINED_FUNCTION_71();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - v10;
  v12 = *(v9 + 56);
  sub_1C94C29E4(v1, &v19 - v10);
  sub_1C94C29E4(v0, &v11[v12]);
  OUTLINED_FUNCTION_14_16(v11);
  if (v13)
  {
    OUTLINED_FUNCTION_14_16(&v11[v12]);
    if (v13)
    {
      sub_1C9470AFC(v11, &qword_1EC3A5930);
LABEL_12:
      OUTLINED_FUNCTION_48_2();
      v15 = *(v1 + v17) ^ *(v0 + v17) ^ 1;
      return v15 & 1;
    }

    goto LABEL_9;
  }

  sub_1C94C29E4(v11, v3);
  OUTLINED_FUNCTION_14_16(&v11[v12]);
  if (v13)
  {
    OUTLINED_FUNCTION_12_19();
    sub_1C949A950(v3, v14);
LABEL_9:
    sub_1C9470AFC(v11, &qword_1EC3A5AB0);
    goto LABEL_10;
  }

  sub_1C94A8124();
  v16 = static LocationOfInterest.== infix(_:_:)(v3, v2);
  sub_1C949A950(v2, type metadata accessor for LocationOfInterest);
  sub_1C949A950(v3, type metadata accessor for LocationOfInterest);
  sub_1C9470AFC(v11, &qword_1EC3A5930);
  if (v16)
  {
    goto LABEL_12;
  }

LABEL_10:
  v15 = 0;
  return v15 & 1;
}

uint64_t sub_1C95666D8@<X0>(uint64_t *a1@<X8>)
{
  result = LocationModel.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1C9566700()
{
  result = qword_1EDB7A3A0[0];
  if (!qword_1EDB7A3A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDB7A3A0);
  }

  return result;
}

unint64_t sub_1C9566754()
{
  result = qword_1EDB7A388;
  if (!qword_1EDB7A388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7A388);
  }

  return result;
}

uint64_t sub_1C95667A8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C95667F0()
{
  result = qword_1EDB7A370;
  if (!qword_1EDB7A370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7A370);
  }

  return result;
}

unint64_t sub_1C9566844()
{
  result = qword_1EDB79AA0;
  if (!qword_1EDB79AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB79AA0);
  }

  return result;
}

void sub_1C9566898(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    type metadata accessor for LocationModelData(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1C9566938()
{
  sub_1C95669AC();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1C95669AC()
{
  if (!qword_1EDB79938)
  {
    type metadata accessor for LocationOfInterest();
    v0 = sub_1C96A7934();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDB79938);
    }
  }
}

_BYTE *sub_1C9566A34(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C9566B14()
{
  result = qword_1EC3A5AB8;
  if (!qword_1EC3A5AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A5AB8);
  }

  return result;
}

unint64_t sub_1C9566B6C()
{
  result = qword_1EC3A5AC0;
  if (!qword_1EC3A5AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A5AC0);
  }

  return result;
}

unint64_t sub_1C9566BC4()
{
  result = qword_1EC3A5AC8;
  if (!qword_1EC3A5AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A5AC8);
  }

  return result;
}

unint64_t sub_1C9566C1C()
{
  result = qword_1EC3A5AD0;
  if (!qword_1EC3A5AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A5AD0);
  }

  return result;
}

unint64_t sub_1C9566C74()
{
  result = qword_1EDB79A90;
  if (!qword_1EDB79A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB79A90);
  }

  return result;
}

unint64_t sub_1C9566CCC()
{
  result = qword_1EDB79A98;
  if (!qword_1EDB79A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB79A98);
  }

  return result;
}

unint64_t sub_1C9566D24()
{
  result = qword_1EDB7A360;
  if (!qword_1EDB7A360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7A360);
  }

  return result;
}

unint64_t sub_1C9566D7C()
{
  result = qword_1EDB7A368;
  if (!qword_1EDB7A368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7A368);
  }

  return result;
}

unint64_t sub_1C9566DD4()
{
  result = qword_1EDB7A378;
  if (!qword_1EDB7A378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7A378);
  }

  return result;
}

unint64_t sub_1C9566E2C()
{
  result = qword_1EDB7A380;
  if (!qword_1EDB7A380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7A380);
  }

  return result;
}

unint64_t sub_1C9566E84()
{
  result = qword_1EDB7A390;
  if (!qword_1EDB7A390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7A390);
  }

  return result;
}

unint64_t sub_1C9566EDC()
{
  result = qword_1EDB7A398;
  if (!qword_1EDB7A398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7A398);
  }

  return result;
}

uint64_t sub_1C9566F30(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t NotificationSubscriptionError.hashValue.getter()
{
  v1 = *v0;
  sub_1C96A7EE4();
  MEMORY[0x1CCA8D880](v1);
  return sub_1C96A7F24();
}

unint64_t sub_1C9567064()
{
  result = qword_1EC3A5AD8;
  if (!qword_1EC3A5AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A5AD8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NotificationSubscriptionError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C9567194()
{
  v0 = sub_1C96A4C14();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1C96A45A4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C96A6FF4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1C96A45C4();
  __swift_allocate_value_buffer(v6, qword_1EC3A5AE0);
  __swift_project_value_buffer(v6, qword_1EC3A5AE0);
  sub_1C96A6FA4();
  if (qword_1EDB7AAF0 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EDB94A40);
  (*(v2 + 16))(v4, v7, v1);
  sub_1C96A4BC4();
  return sub_1C96A45D4();
}

uint64_t sub_1C95673E4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5708);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v14 - v1;
  v3 = sub_1C96A4C14();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = sub_1C96A45A4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C96A6FF4();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1C96A45C4();
  MEMORY[0x1EEE9AC00](v9);
  v10 = sub_1C96A3E34();
  __swift_allocate_value_buffer(v10, qword_1EC3A5AF8);
  v14[0] = __swift_project_value_buffer(v10, qword_1EC3A5AF8);
  sub_1C96A6FA4();
  if (qword_1EDB7AAF0 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v4, qword_1EDB94A40);
  v12 = *(v5 + 16);
  v12(v7, v11, v4);
  sub_1C96A4BC4();
  sub_1C96A45D4();
  sub_1C96A6FA4();
  v12(v7, v11, v4);
  sub_1C96A4BC4();
  sub_1C96A45D4();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v9);
  return sub_1C96A3E54();
}

uint64_t sub_1C9567778@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v7 = a2(0);
  v8 = __swift_project_value_buffer(v7, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_1C9567818()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5C00);
  sub_1C96A3B84();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C96AA1C0;
  result = sub_1C96A3B74();
  qword_1EC3A5B10 = v0;
  return result;
}

uint64_t static AddSavedLocationIntent.supportedModes.getter()
{
  if (qword_1EC3A4680 != -1)
  {
    swift_once();
  }

  return sub_1C96A53C4();
}

uint64_t static AddSavedLocationIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5B18);
  OUTLINED_FUNCTION_7(v0);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5B20);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C9567ABC();
  sub_1C96A3F44();
  sub_1C96A3F34();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5B30);
  sub_1C96A3F24();

  sub_1C96A3F34();
  sub_1C96A3F54();
  OUTLINED_FUNCTION_8_2();
  return sub_1C96A3F14();
}

unint64_t sub_1C9567ABC()
{
  result = qword_1EC3A5B28;
  if (!qword_1EC3A5B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A5B28);
  }

  return result;
}

uint64_t sub_1C9567B80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t, uint64_t)@<X3>, uint64_t *a5@<X8>)
{
  result = a4(a1, a2, a3);
  *a5 = result;
  return result;
}

uint64_t sub_1C9567BC8(id *a1)
{
  v1 = *a1;
  sub_1C96A3D04();
  sub_1C96A3D04();
  sub_1C96A3D04();
  AddSavedLocationIntent.placemark.setter(v1);
}

void AddSavedLocationIntent.placemark.setter(void *a1)
{
  v1 = a1;
  sub_1C96A3C74();
}

void (*AddSavedLocationIntent.placemark.modify(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1C96A3C54();
  return sub_1C954EF48;
}

uint64_t AddSavedLocationIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  sub_1C96A3F64();
  OUTLINED_FUNCTION_1();
  v43 = v3;
  v44 = v2;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_14();
  v45 = v5 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5B38);
  OUTLINED_FUNCTION_1();
  v39 = v7;
  v40 = v6;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v8);
  v42 = v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5B40);
  OUTLINED_FUNCTION_7(v10);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v11);
  v41 = v38 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5708);
  OUTLINED_FUNCTION_7(v13);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v14);
  v38[1] = v38 - v15;
  v16 = sub_1C96A4C14();
  v17 = OUTLINED_FUNCTION_7(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_14();
  v18 = sub_1C96A45A4();
  OUTLINED_FUNCTION_1();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_14();
  v24 = v23 - v22;
  v25 = sub_1C96A6FF4();
  v26 = OUTLINED_FUNCTION_7(v25);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_14();
  v38[0] = sub_1C96A45C4();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5748);
  sub_1C96A3A74();
  v46 = 0u;
  v47 = 0u;
  v48 = 0;
  sub_1C96A3A64();
  *a1 = sub_1C96A3A24();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5B48);
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  sub_1C96A3A64();
  a1[1] = sub_1C96A3A24();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5B50);
  sub_1C96A6FA4();
  if (qword_1EDB7AAF0 != -1)
  {
    swift_once();
  }

  v28 = __swift_project_value_buffer(v18, qword_1EDB94A40);
  (*(v20 + 16))(v24, v28, v18);
  sub_1C96A4BC4();
  OUTLINED_FUNCTION_8_2();
  sub_1C96A45D4();
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
  sub_1C96A3B94();
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
  (*(v39 + 104))(v42, *MEMORY[0x1E695A188], v40);
  (*(v43 + 104))(v45, *MEMORY[0x1E695A500], v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5B58);
  sub_1C956ADE8(&qword_1EC3A5B60, &qword_1EC3A5B58);
  result = sub_1C96A3CB4();
  a1[2] = result;
  return result;
}

uint64_t AddSavedLocationIntent.perform()()
{
  OUTLINED_FUNCTION_18();
  *(v1 + 616) = v2;
  v3 = sub_1C96A3BC4();
  *(v1 + 624) = v3;
  OUTLINED_FUNCTION_9(v3);
  *(v1 + 632) = v4;
  *(v1 + 640) = OUTLINED_FUNCTION_12_4();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A70);
  OUTLINED_FUNCTION_7(v5);
  *(v1 + 648) = OUTLINED_FUNCTION_12_4();
  v6 = sub_1C96A4764();
  *(v1 + 656) = v6;
  OUTLINED_FUNCTION_9(v6);
  *(v1 + 664) = v7;
  *(v1 + 672) = OUTLINED_FUNCTION_19_12();
  *(v1 + 680) = swift_task_alloc();
  v8 = sub_1C96A4304();
  *(v1 + 688) = v8;
  OUTLINED_FUNCTION_9(v8);
  *(v1 + 696) = v9;
  *(v1 + 704) = OUTLINED_FUNCTION_12_4();
  v10 = sub_1C96A43B4();
  *(v1 + 712) = v10;
  OUTLINED_FUNCTION_9(v10);
  *(v1 + 720) = v11;
  *(v1 + 728) = OUTLINED_FUNCTION_12_4();
  v12 = sub_1C96A4DF4();
  *(v1 + 736) = v12;
  OUTLINED_FUNCTION_9(v12);
  *(v1 + 744) = v13;
  *(v1 + 752) = OUTLINED_FUNCTION_12_4();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  OUTLINED_FUNCTION_7(v14);
  *(v1 + 760) = OUTLINED_FUNCTION_19_12();
  *(v1 + 768) = swift_task_alloc();
  *(v1 + 776) = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60);
  OUTLINED_FUNCTION_7(v15);
  *(v1 + 784) = OUTLINED_FUNCTION_19_12();
  *(v1 + 792) = swift_task_alloc();
  v16 = type metadata accessor for Location();
  *(v1 + 800) = v16;
  OUTLINED_FUNCTION_7(v16);
  *(v1 + 808) = OUTLINED_FUNCTION_19_12();
  *(v1 + 816) = swift_task_alloc();
  *(v1 + 824) = swift_task_alloc();
  v17 = sub_1C96A6504();
  *(v1 + 832) = v17;
  OUTLINED_FUNCTION_9(v17);
  *(v1 + 840) = v18;
  *(v1 + 848) = OUTLINED_FUNCTION_12_4();
  *(v1 + 856) = *v0;
  *(v1 + 872) = *(v0 + 16);
  OUTLINED_FUNCTION_8_2();

  return MEMORY[0x1EEE6DFA0](v19, v20, v21);
}

uint64_t sub_1C9568538()
{
  sub_1C96A3C64();
  v1 = *(v0 + 592);
  v2 = [v1 location];
  *(v0 + 880) = v2;

  if (v2)
  {
    (*(*(v0 + 840) + 104))(*(v0 + 848), *MEMORY[0x1E69D62C0], *(v0 + 832));
    sub_1C96A6524();
    swift_allocObject();
    OUTLINED_FUNCTION_26_1();
    *(v0 + 888) = sub_1C96A6514();
    v12 = *(v0 + 872);
    v13 = swift_task_alloc();
    *(v0 + 896) = v13;
    *(v13 + 16) = *(v0 + 856);
    *(v13 + 32) = v12;
    *(v13 + 40) = v2;
    v14 = swift_task_alloc();
    *(v0 + 904) = v14;
    *v14 = v0;
    v14[1] = sub_1C956889C;
    OUTLINED_FUNCTION_8_2();

    return MEMORY[0x1EEE6DE38](v15, v16, v17, v18, 0xE900000000000029, v19, v13, v20);
  }

  else
  {
    if (qword_1EDB77DC8 != -1)
    {
      OUTLINED_FUNCTION_7_18();
    }

    v3 = sub_1C96A6154();
    __swift_project_value_buffer(v3, qword_1EDB77DD0);
    v4 = sub_1C96A6134();
    v5 = sub_1C96A7684();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      OUTLINED_FUNCTION_16_2(&dword_1C945E000, v7, v8, "Placemark has no location");
      MEMORY[0x1CCA8E3D0](v6, -1, -1);
    }

    sub_1C956AC08();
    swift_allocError();
    *v9 = 2;
    swift_willThrow();
    OUTLINED_FUNCTION_0_44();

    OUTLINED_FUNCTION_17();

    return v10();
  }
}

uint64_t sub_1C956889C()
{
  OUTLINED_FUNCTION_18();
  v7 = *v1;
  OUTLINED_FUNCTION_15();
  *v2 = v7;
  *(v7 + 912) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_8_2();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C95689A8()
{
  v72 = v0;
  sub_1C96A3C64();
  v1 = sub_1C956AC68(*(v0 + 600));
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    v5 = *(v0 + 824);
  }

  else
  {
    v5 = *(v0 + 824);
    v3 = v5[2];
    v4 = v5[3];
    sub_1C96A53C4();
  }

  v6 = *(v0 + 800);
  v7 = *(v0 + 736);
  memcpy((v0 + 160), v5, 0x48uLL);
  memcpy(__dst, v5, sizeof(__dst));
  sub_1C95087DC(v0 + 160, v0 + 232);
  Location.Identifier.with(id:name:coordinate:)(0.0, 0, v3, v4, 0.0, 0.0, 1, __src);

  memcpy((v0 + 88), __dst, 0x48uLL);
  sub_1C953AEDC(v0 + 88);
  memcpy((v0 + 16), __src, 0x48uLL);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v7);
  v11 = sub_1C96A4A54();
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v11);
  v67 = v6;
  v15 = *(v5 + *(v6 + 44));
  v16 = v15;
  if (!v15)
  {
    v16 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:*(v0 + 192) longitude:*(v0 + 200)];
  }

  v66 = v16;
  v17 = *(v0 + 736);
  sub_1C9470A40(*(v0 + 792), *(v0 + 784), &unk_1EC3A5F60);
  v18 = OUTLINED_FUNCTION_94();
  if (__swift_getEnumTagSinglePayload(v18, v19, v17) != 1)
  {
    (*(*(v0 + 744) + 32))(*(v0 + 752), *(v0 + 784), *(v0 + 736));
    v27 = v15;
    v25 = v0 + 16;
    v26 = v0 + 448;
    goto LABEL_10;
  }

  v20 = *(v0 + 736);
  (*(*(v0 + 744) + 16))(*(v0 + 752), *(v0 + 824) + *(*(v0 + 800) + 20), v20);
  v21 = OUTLINED_FUNCTION_94();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v21, v22, v20);
  v24 = v15;
  if (EnumTagSinglePayload == 1)
  {
    v25 = v0 + 16;
    v26 = v0 + 376;
LABEL_10:
    sub_1C95087DC(v25, v26);
    goto LABEL_12;
  }

  v28 = *(v0 + 784);
  sub_1C95087DC(v0 + 16, v0 + 304);
  sub_1C9470AFC(v28, &unk_1EC3A5F60);
LABEL_12:
  sub_1C9470A40(*(v0 + 776), *(v0 + 760), &unk_1EC3A5430);
  v29 = OUTLINED_FUNCTION_94();
  if (__swift_getEnumTagSinglePayload(v29, v30, v11) == 1)
  {
    sub_1C9470A40(*(v0 + 824) + *(*(v0 + 800) + 24), *(v0 + 768), &unk_1EC3A5430);
    v31 = OUTLINED_FUNCTION_94();
    if (__swift_getEnumTagSinglePayload(v31, v32, v11) != 1)
    {
      sub_1C9470AFC(*(v0 + 760), &unk_1EC3A5430);
    }
  }

  else
  {
    v33 = *(v0 + 768);
    (*(*(v11 - 8) + 32))(v33, *(v0 + 760), v11);
    __swift_storeEnumTagSinglePayload(v33, 0, 1, v11);
  }

  v34 = *(v0 + 824);
  v65 = *(v0 + 816);
  v35 = *(v0 + 808);
  v36 = *(v0 + 800);
  v63 = *(v0 + 776);
  v64 = *(v0 + 792);
  v58 = *(v0 + 768);
  v37 = *(v0 + 752);
  v38 = *(v0 + 744);
  v39 = *(v0 + 736);
  v40 = (v34 + v36[7]);
  v41 = *v40;
  v42 = v40[1];
  v43 = (v34 + v36[8]);
  v44 = v43[1];
  v61 = v41;
  v62 = *v43;
  v45 = (v34 + v36[9]);
  v46 = v45[1];
  v47 = (v34 + v36[10]);
  v48 = v47[1];
  v59 = *v45;
  v60 = *v47;
  v68 = *(v67 + 44);
  *&v35[v68] = 0;
  memcpy(v35, (v0 + 16), 0x48uLL);
  (*(v38 + 32))(&v35[v36[5]], v37, v39);
  sub_1C948E818(v58, &v35[v36[6]]);
  sub_1C96A53C4();
  sub_1C96A53C4();
  sub_1C96A53C4();
  sub_1C96A53C4();
  sub_1C953AEDC(v0 + 16);
  v49 = &v35[v36[7]];
  *v49 = v61;
  *(v49 + 1) = v42;
  v50 = &v35[v36[8]];
  *v50 = v62;
  *(v50 + 1) = v44;
  v51 = &v35[v36[9]];
  *v51 = v59;
  *(v51 + 1) = v46;
  v52 = &v35[v36[10]];
  *v52 = v60;
  *(v52 + 1) = v48;
  sub_1C9470AFC(v63, &unk_1EC3A5430);
  sub_1C9470AFC(v64, &unk_1EC3A5F60);
  *&v35[v68] = v66;
  sub_1C94898C4(v35, v65);
  sub_1C96A3A14();
  v53 = *(v0 + 544);
  v54 = *(v0 + 552);
  __swift_project_boxed_opaque_existential_1((v0 + 520), v53);
  v69 = (*(v54 + 32) + **(v54 + 32));
  v55 = swift_task_alloc();
  *(v0 + 920) = v55;
  *v55 = v0;
  v55[1] = sub_1C9568F60;
  v56 = *(v0 + 816);

  return v69(v56, v53, v54);
}

uint64_t sub_1C9568F60()
{
  OUTLINED_FUNCTION_18();
  v2 = *v1;
  OUTLINED_FUNCTION_15();
  *v3 = v2;
  *(v4 + 928) = v0;

  OUTLINED_FUNCTION_8_2();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C9569064()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 65));
  static OpenIntentHelpers.makeUrlComponents()();
  sub_1C96A3C64();
  v1 = v0[76];
  static OpenIntentHelpers.parseLocation(_:into:)(v1);

  v3 = sub_1C96A4314();
  if (*v2)
  {
    v4 = v2;
    v5 = v0[88];
    v6 = v0[87];
    v7 = v0[86];
    sub_1C96A42F4();
    sub_1C9522924();
    v8 = *(*v4 + 16);
    sub_1C9522954(v8);
    v9 = *v4;
    *(v9 + 16) = v8 + 1;
    (*(v6 + 32))(v9 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v8, v5, v7);
  }

  v3(v0 + 70, 0);
  v10 = v0[82];
  v11 = v0[81];
  sub_1C96A4344();
  if (__swift_getEnumTagSinglePayload(v11, 1, v10) == 1)
  {
    sub_1C9470AFC(v0[81], &qword_1EC3A4A70);
    if (qword_1EDB77DC8 != -1)
    {
      OUTLINED_FUNCTION_7_18();
    }

    v12 = sub_1C96A6154();
    __swift_project_value_buffer(v12, qword_1EDB77DD0);
    v13 = sub_1C96A6134();
    v14 = sub_1C96A7684();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      OUTLINED_FUNCTION_16_2(&dword_1C945E000, v16, v17, "Invalid URL!");
      MEMORY[0x1CCA8E3D0](v15, -1, -1);
    }

    v18 = v0[110];
    v19 = v0[103];
    v20 = v0[102];
    v21 = v0[91];
    v22 = v0[90];
    v23 = v0[89];

    sub_1C96A3A44();
    sub_1C956AE3C(&qword_1EC3A5B70, MEMORY[0x1E6959D40]);
    OUTLINED_FUNCTION_26_1();
    swift_allocError();
    sub_1C96A3A34();
    swift_willThrow();

    (*(v22 + 8))(v21, v23);
    sub_1C94DBDDC(v20);
    sub_1C94DBDDC(v19);
    OUTLINED_FUNCTION_0_44();

    OUTLINED_FUNCTION_17();
  }

  else
  {
    v34 = v0[110];
    v38 = v0[103];
    v36 = v0[91];
    v37 = v0[102];
    v25 = v0[90];
    v35 = v0[89];
    v26 = v0[85];
    v27 = v0[84];
    v28 = v0[83];
    v29 = v0[82];
    v30 = v0[80];
    v31 = v0[79];
    v32 = v0[78];
    (*(v28 + 32))(v26);
    (*(v28 + 16))(v27, v26, v29);
    sub_1C96A3BD4();
    sub_1C956AE3C(&qword_1EC3A5B78, MEMORY[0x1E695A070]);
    sub_1C96A3BA4();

    (*(v31 + 8))(v30, v32);
    (*(v28 + 8))(v26, v29);
    (*(v25 + 8))(v36, v35);
    sub_1C94DBDDC(v37);
    sub_1C94DBDDC(v38);

    OUTLINED_FUNCTION_17();
  }

  return v24();
}

uint64_t sub_1C9569618()
{
  v1 = *(v0 + 880);

  OUTLINED_FUNCTION_0_44();
  OUTLINED_FUNCTION_6_23();

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_1C9569734()
{
  v1 = *(v0 + 824);
  v2 = *(v0 + 816);

  sub_1C94DBDDC(v2);
  sub_1C94DBDDC(v1);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 520);
  OUTLINED_FUNCTION_0_44();
  OUTLINED_FUNCTION_6_23();

  OUTLINED_FUNCTION_17();

  return v3();
}

uint64_t sub_1C9569868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v22 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5BF0);
  v8 = *(v7 - 8);
  v23 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  sub_1C96A3A14();
  v11 = v25;
  v12 = v26;
  __swift_project_boxed_opaque_existential_1(v24, v25);
  [a5 coordinate];
  (*(v12 + 24))(v11, v12);
  v21 = *(v8 + 16);
  v21(v10, a1, v7);
  v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v14 = swift_allocObject();
  v20 = *(v8 + 32);
  v20(v14 + v13, v10, v7);
  v15 = sub_1C96A55A4();
  sub_1C96A5644();

  __swift_destroy_boxed_opaque_existential_1Tm(v24);
  v21(v10, v22, v7);
  v16 = swift_allocObject();
  v20(v16 + v13, v10, v7);
  v17 = sub_1C96A55A4();
  sub_1C96A5674();
}

uint64_t sub_1C9569AE0(uint64_t a1)
{
  v2 = type metadata accessor for Location();
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1C9489760(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5BF0);
  return sub_1C96A7394();
}

uint64_t sub_1C9569B88(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5BF0);
  return sub_1C96A7384();
}

uint64_t sub_1C9569BF0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C950AEFC;

  return AddSavedLocationIntent.perform()();
}

uint64_t sub_1C9569C8C(uint64_t a1)
{
  v2 = sub_1C9567ABC();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t sub_1C9569CC8()
{
  sub_1C96A3E14();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_14();
  AddSavedLocationIntent.init()(&v7);
  sub_1C9567ABC();
  sub_1C96A3E24();
  sub_1C96A3E04();
  v2 = OUTLINED_FUNCTION_17_2();
  v3(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5BC0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C96AA1C0;
  *(v4 + 32) = v0;
  v5 = sub_1C96A3DF4();

  return v5;
}

uint64_t sub_1C9569E1C(uint64_t a1)
{
  v33 = a1;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5BD8);
  v44 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v41 = &v27 - v1;
  v2 = sub_1C96A3D14();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5BE0);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C9567ABC();
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  swift_getKeyPath();
  v37 = sub_1C956AE3C(&qword_1EC3A5BC8, sub_1C956AE80);
  sub_1C96A3D04();

  sub_1C96A3DB4();

  sub_1C96A3DC4();
  v7 = *MEMORY[0x1E695A1E0];
  v43 = *(v3 + 104);
  v28 = v5;
  v34 = v7;
  v35 = v2;
  v43(v5, v7, v2);
  v40 = v3 + 104;
  sub_1C96A3DA4();
  v8 = *(v3 + 8);
  v8(v5, v2);
  v38 = v8;
  v39 = v3 + 8;
  sub_1C96A3DC4();
  v9 = v41;
  sub_1C96A3DE4();
  v32 = sub_1C96A3D34();
  v36 = *(v44 + 8);
  v44 += 8;
  v10 = v42;
  v36(v9, v42);
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  v11 = v28;
  v12 = v7;
  v13 = v35;
  v43(v28, v12, v35);
  sub_1C96A3DA4();
  v8(v11, v13);
  sub_1C96A3DC4();
  swift_getKeyPath();
  sub_1C96A3D04();

  sub_1C96A3DB4();

  sub_1C96A3DC4();
  v14 = v41;
  sub_1C96A3DE4();
  v31 = sub_1C96A3D34();
  v15 = v36;
  v36(v14, v10);
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  v16 = v35;
  v43(v11, v34, v35);
  sub_1C96A3DA4();
  v38(v11, v16);
  sub_1C96A3DC4();
  swift_getKeyPath();
  sub_1C96A3D04();

  sub_1C96A3DB4();

  sub_1C96A3DC4();
  v17 = v41;
  sub_1C96A3DE4();
  v30 = sub_1C96A3D34();
  v15(v17, v42);
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  swift_getKeyPath();
  sub_1C96A3D04();

  sub_1C96A3DB4();

  sub_1C96A3DC4();
  v18 = v34;
  v19 = v35;
  v43(v11, v34, v35);
  sub_1C96A3DA4();
  v38(v11, v19);
  sub_1C96A3DC4();
  v20 = v41;
  sub_1C96A3DE4();
  v29 = sub_1C96A3D34();
  v36(v20, v42);
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  swift_getKeyPath();
  sub_1C96A3D04();

  sub_1C96A3DB4();

  sub_1C96A3DC4();
  v43(v11, v18, v19);
  sub_1C96A3DA4();
  v38(v11, v19);
  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v21 = sub_1C96A3D34();
  v36(v20, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5BE8);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1C96B20F0;
  v23 = v31;
  *(v22 + 32) = v32;
  *(v22 + 40) = v23;
  v24 = v29;
  *(v22 + 48) = v30;
  *(v22 + 56) = v24;
  *(v22 + 64) = v21;
  v25 = sub_1C96A3D24();

  return v25;
}

uint64_t sub_1C956A6E4()
{
  v0 = sub_1C96A3D94();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_1C956AE3C(&qword_1EC3A5BC8, sub_1C956AE80);
  sub_1C96A3D04();

  sub_1C9567ABC();
  sub_1C96A3D84();
  v4 = sub_1C96A3D74();
  (*(v1 + 8))(v3, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5BD0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C96AA1C0;
  *(v5 + 32) = v4;
  v6 = sub_1C96A3D64();

  return v6;
}

uint64_t sub_1C956A884()
{
  v0 = sub_1C96A3D54();
  v1 = sub_1C96A3D54();
  v2 = sub_1C96A3D54();
  v3 = sub_1C96A3D54();
  v4 = sub_1C96A3D54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5BB8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C96B20F0;
  *(v5 + 32) = v0;
  *(v5 + 40) = v1;
  *(v5 + 48) = v2;
  *(v5 + 56) = v3;
  *(v5 + 64) = v4;
  v6 = sub_1C96A3D44();

  return v6;
}

uint64_t sub_1C956A9A4()
{
  sub_1C96A3CF4();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_14();
  sub_1C9567ABC();
  sub_1C96A3CE4();
  sub_1C96A3CD4();
  v2 = OUTLINED_FUNCTION_17_2();
  v3(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5BB0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C96AA1C0;
  *(v4 + 32) = v0;
  v5 = sub_1C96A3CC4();

  return v5;
}

uint64_t sub_1C956AAC4()
{
  v0 = sub_1C96A3D54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5BB8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1C96AA1C0;
  *(v1 + 32) = v0;
  v2 = sub_1C96A3D44();

  return v2;
}

uint64_t sub_1C956AB5C()
{
  v0 = sub_1C956AE80();
  v1 = sub_1C956AFC0();
  MEMORY[0x1CCA899D0](v1, v0, &type metadata for CLPlacemarkFromStringResolver, v1);
  v2 = sub_1C956AE3C(&qword_1EC3A5BC8, sub_1C956AE80);

  return MEMORY[0x1EEDB3F88](v2, v0, &type metadata for CLPlacemarkFromStringResolver, v2, v1);
}

unint64_t sub_1C956AC08()
{
  result = qword_1EC3A5B68;
  if (!qword_1EC3A5B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A5B68);
  }

  return result;
}

uint64_t sub_1C956AC68(void *a1)
{
  v2 = [a1 name];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1C96A7024();

  return v3;
}

unint64_t sub_1C956ACDC()
{
  result = qword_1EC3A5B80;
  if (!qword_1EC3A5B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A5B80);
  }

  return result;
}

unint64_t sub_1C956AD34()
{
  result = qword_1EC3A5B88;
  if (!qword_1EC3A5B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A5B88);
  }

  return result;
}

uint64_t sub_1C956ADE8(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    OUTLINED_FUNCTION_26_1();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C956AE3C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_26_1();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C956AE80()
{
  result = qword_1EDB77D20;
  if (!qword_1EDB77D20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDB77D20);
  }

  return result;
}

uint64_t sub_1C956AEC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5BF0);
  OUTLINED_FUNCTION_7(v2);
  return sub_1C9569AE0(a1);
}

uint64_t sub_1C956AF48(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5BF0);
  OUTLINED_FUNCTION_7(v2);

  return sub_1C9569B88(a1);
}

unint64_t sub_1C956AFC0()
{
  result = qword_1EC3A5BF8;
  if (!qword_1EC3A5BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A5BF8);
  }

  return result;
}

uint64_t PrecipitationNotificationDeliverySchedule.init(subscription:date:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1C9524A18(a1, a3);
  v5 = a3 + *(type metadata accessor for PrecipitationNotificationDeliverySchedule() + 20);

  return sub_1C948E818(a2, v5);
}

uint64_t type metadata accessor for PrecipitationNotificationDeliverySchedule()
{
  result = qword_1EC3A5C08;
  if (!qword_1EC3A5C08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PrecipitationNotificationDeliverySchedule.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PrecipitationNotificationDeliverySchedule() + 20);

  return sub_1C94D63E8(v3, a1);
}

void sub_1C956B128()
{
  type metadata accessor for NotificationSubscription(319);
  if (v0 <= 0x3F)
  {
    sub_1C94612C0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

_BYTE *_s8IdentityVwst(_BYTE *result, int a2, int a3)
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

void __swiftcall WidgetPrivacyConfiguration.init(defaultSamplingRate:widgetRefreshSamplingRate:currentLocationUpdateSamplingRate:locationGeocodingSamplingRate:networkTelemetrySamplingRate:)(WeatherCore::WidgetPrivacyConfiguration *__return_ptr retstr, Swift::Double_optional defaultSamplingRate, Swift::Double_optional widgetRefreshSamplingRate, Swift::Double_optional currentLocationUpdateSamplingRate, Swift::Double_optional locationGeocodingSamplingRate, Swift::Double_optional networkTelemetrySamplingRate)
{
  v8 = v7;
  v9 = v6;
  is_nil = locationGeocodingSamplingRate.is_nil;
  if (widgetRefreshSamplingRate.is_nil)
  {
    v12 = 0.2;
  }

  else
  {
    OUTLINED_FUNCTION_1_32();
    sub_1C96A7534();
    v12 = v13;
  }

  v14 = v12;
  if (!is_nil)
  {
    OUTLINED_FUNCTION_1_32();
    sub_1C96A7534();
    v14 = v15;
  }

  v16 = v12;
  if ((v9 & 1) == 0)
  {
    OUTLINED_FUNCTION_1_32();
    sub_1C96A7534();
    v16 = v17;
  }

  v18 = v12;
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_1_32();
    sub_1C96A7534();
    v18 = v19;
  }

  v20 = v12;
  if ((v21 & 1) == 0)
  {
    OUTLINED_FUNCTION_1_32();
    sub_1C96A7534();
  }

  retstr->defaultSamplingRate = v12;
  retstr->widgetRefreshSamplingRate = v14;
  retstr->currentLocationUpdateSamplingRate = v16;
  retstr->locationGeocodingSamplingRate = v18;
  retstr->networkTelemetrySamplingRate = v20;
}

uint64_t WidgetPrivacyConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5C20);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C948172C();
  sub_1C96A7F54();
  v15 = 0;
  OUTLINED_FUNCTION_1_20();
  if (!v1)
  {
    v14 = 1;
    OUTLINED_FUNCTION_1_20();
    v13 = 2;
    OUTLINED_FUNCTION_1_20();
    v12 = 3;
    OUTLINED_FUNCTION_1_20();
    v11 = 4;
    OUTLINED_FUNCTION_1_20();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_1C956B5D4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C94E1834();
  *a1 = result;
  return result;
}

unint64_t sub_1C956B604@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1C947B330(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C956B630@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C94E1834();
  *a1 = result;
  return result;
}

uint64_t sub_1C956B658(uint64_t a1)
{
  v2 = sub_1C948172C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C956B694(uint64_t a1)
{
  v2 = sub_1C948172C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1C956B6F0()
{
  result = qword_1EC3A5C28;
  if (!qword_1EC3A5C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A5C28);
  }

  return result;
}

uint64_t PredictedLocationsConfiguration.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5C38);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v16 - v8;
  v10 = v1[1];
  v11 = v1[3];
  v16[7] = v1[2];
  v16[8] = v10;
  v12 = v1[5];
  v16[5] = v1[4];
  v16[6] = v11;
  v13 = v1[7];
  v16[3] = v1[6];
  v16[4] = v12;
  v14 = v1[9];
  v16[1] = v1[8];
  v16[2] = v13;
  v16[0] = v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C9481524();
  sub_1C96A7F54();
  v17 = 0;
  OUTLINED_FUNCTION_1_33();
  if (!v2)
  {
    OUTLINED_FUNCTION_2_33(1);
    OUTLINED_FUNCTION_1_33();
    OUTLINED_FUNCTION_2_33(2);
    OUTLINED_FUNCTION_1_33();
    OUTLINED_FUNCTION_2_33(3);
    OUTLINED_FUNCTION_1_33();
    OUTLINED_FUNCTION_2_33(4);
    OUTLINED_FUNCTION_1_33();
    OUTLINED_FUNCTION_2_33(5);
    OUTLINED_FUNCTION_1_33();
    OUTLINED_FUNCTION_2_33(6);
    OUTLINED_FUNCTION_1_33();
    OUTLINED_FUNCTION_2_33(7);
    OUTLINED_FUNCTION_1_33();
    OUTLINED_FUNCTION_2_33(8);
    OUTLINED_FUNCTION_1_33();
    OUTLINED_FUNCTION_2_33(9);
    OUTLINED_FUNCTION_1_33();
    OUTLINED_FUNCTION_2_33(10);
    OUTLINED_FUNCTION_1_33();
    OUTLINED_FUNCTION_2_33(11);
    OUTLINED_FUNCTION_1_33();
    OUTLINED_FUNCTION_2_33(12);
    OUTLINED_FUNCTION_1_33();
    OUTLINED_FUNCTION_2_33(13);
    OUTLINED_FUNCTION_1_33();
    OUTLINED_FUNCTION_2_33(14);
    OUTLINED_FUNCTION_1_33();
    OUTLINED_FUNCTION_2_33(15);
    OUTLINED_FUNCTION_1_33();
    OUTLINED_FUNCTION_2_33(16);
    OUTLINED_FUNCTION_1_33();
  }

  return (*(v6 + 8))(v9, v4);
}

uint64_t sub_1C956BAC8()
{
  v0 = sub_1C96A7E04();

  if (v0 >= 0x11)
  {
    return 17;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1C956BB4C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C956BAC8();
  *a1 = result;
  return result;
}

unint64_t sub_1C956BB7C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1C947A5BC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C956BBA8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C956BB1C();
  *a1 = result;
  return result;
}

uint64_t sub_1C956BBD0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C956BB20();
  *a1 = result;
  return result;
}

uint64_t sub_1C956BBF8(uint64_t a1)
{
  v2 = sub_1C9481524();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C956BC34(uint64_t a1)
{
  v2 = sub_1C9481524();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C956BC94(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 136))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1C956BCB8()
{
  result = qword_1EC3A5C40;
  if (!qword_1EC3A5C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A5C40);
  }

  return result;
}

uint64_t UserIdentity.identifierLastResetDate.getter()
{
  OUTLINED_FUNCTION_7_19();
  sub_1C96A4A54();
  OUTLINED_FUNCTION_6();
  v0 = OUTLINED_FUNCTION_3_24();

  return v1(v0);
}

uint64_t UserIdentity.privateIdentifierLastResetDate.getter()
{
  OUTLINED_FUNCTION_7_19();
  sub_1C96A4A54();
  OUTLINED_FUNCTION_6();
  v0 = OUTLINED_FUNCTION_3_24();

  return v1(v0);
}

uint64_t UserIdentity.reportWeatherIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for UserIdentity() + 32));
  sub_1C96A53C4();
  return v1;
}

uint64_t UserIdentity.reportWeatherIdentifierLastResetDate.getter()
{
  OUTLINED_FUNCTION_7_19();
  sub_1C96A4A54();
  OUTLINED_FUNCTION_6();
  v0 = OUTLINED_FUNCTION_3_24();

  return v1(v0);
}

uint64_t sub_1C956BE78@<X0>(void *a1@<X8>)
{
  v74 = a1;
  v73 = sub_1C96A4A94();
  OUTLINED_FUNCTION_1();
  v71 = v1;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_24();
  v72 = v3;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v69 = v64 - v6;
  MEMORY[0x1EEE9AC00](v5);
  v68 = v64 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v78 = v64 - v9;
  sub_1C96A4A54();
  OUTLINED_FUNCTION_1();
  v76 = v11;
  v77 = v10;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_24();
  v70 = v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v64 - v14;
  v75 = sub_1C96A4D14();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C96A4454();
  OUTLINED_FUNCTION_1();
  v66 = v22;
  v67 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v24 = v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C96A4CE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4F38);
  v25 = sub_1C96A4CF4();
  OUTLINED_FUNCTION_1();
  v27 = v26;
  v29 = *(v28 + 72);
  v30 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1C96AEF50;
  v32 = v31 + v30;
  v33 = *(v27 + 104);
  v33(v32, *MEMORY[0x1E6969A68], v25);
  v33(v32 + v29, *MEMORY[0x1E6969A78], v25);
  sub_1C94B440C();
  sub_1C96A5954();
  sub_1C96A5944();
  sub_1C96A4C54();

  v34 = v76;
  v35 = v15;
  v36 = v77;
  (*(v76 + 8))(v35, v77);
  v37 = *(v17 + 8);
  v38 = v75;
  v37(v20, v75);
  sub_1C96A4CE4();
  v39 = v78;
  v65 = v24;
  sub_1C96A4CB4();
  v37(v20, v38);
  result = __swift_getEnumTagSinglePayload(v39, 1, v36);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v41 = v34;
    v42 = *(v34 + 32);
    v64[1] = v34 + 32;
    v75 = v42;
    (v42)(v70, v39, v36);
    v43 = v68;
    sub_1C96A4A84();
    v78 = sub_1C96A4A64();
    v64[0] = v44;
    v45 = *(v71 + 8);
    v46 = v73;
    v45(v43, v73);
    v47 = type metadata accessor for UserIdentity();
    v48 = *(v41 + 16);
    v49 = v74;
    v50 = OUTLINED_FUNCTION_2_34(v47[5]);
    v48(v50);
    v51 = v69;
    sub_1C96A4A84();
    v76 = sub_1C96A4A64();
    v71 = v52;
    v45(v51, v46);
    v53 = OUTLINED_FUNCTION_2_34(v47[7]);
    v48(v53);
    v54 = v72;
    sub_1C96A4A84();
    v55 = sub_1C96A4A64();
    v68 = v56;
    v69 = v55;
    v45(v54, v46);
    (*(v66 + 8))(v65, v67);
    v57 = OUTLINED_FUNCTION_2_34(v47[9]);
    v48(v57);
    v58 = v64[0];
    *v49 = v78;
    v49[1] = v58;
    v59 = (v49 + v47[6]);
    v60 = v71;
    *v59 = v76;
    v59[1] = v60;
    v61 = (v49 + v47[8]);
    v62 = v68;
    *v61 = v69;
    v61[1] = v62;
    v63 = OUTLINED_FUNCTION_2_34(v47[10]);
    return v75(v63);
  }

  return result;
}

WeatherCore::UserIdentityKeys_optional __swiftcall UserIdentityKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C96A7BE4();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t UserIdentityKeys.rawValue.getter()
{
  result = 0x7261745372657375;
  switch(*v0)
  {
    case 1:
      result = 0x6E65644972657375;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0xD000000000000017;
      break;
    case 4:
      result = 0xD00000000000001BLL;
      break;
    case 5:
      result = 0xD000000000000022;
      break;
    case 6:
      result = 0xD000000000000024;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1C956C5A8()
{
  result = qword_1EC3A5C48;
  if (!qword_1EC3A5C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A5C48);
  }

  return result;
}

unint64_t sub_1C956C620@<X0>(unint64_t *a1@<X8>)
{
  result = UserIdentityKeys.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1C956C64C()
{
  result = qword_1EC3A5C50;
  if (!qword_1EC3A5C50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3A5C58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A5C50);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for UserIdentityKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

void sub_1C956C79C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UserIdentity();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6 - 8);
  (*(a3 + 40))(v20, a2, a3, v9);
  v10 = v21;
  v11 = v22;
  __swift_project_boxed_opaque_existential_1(v20, v21);
  v12 = (*(v11 + 8))(v10, v11);
  __swift_destroy_boxed_opaque_existential_1Tm(v20);
  if (v12)
  {
    sub_1C956CA40(a1, &v20[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v14 = swift_allocObject();
    sub_1C956CAA4(&v20[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
    (*(a3 + 8))(sub_1C956CB08, v14, a2, a3);
  }

  else
  {
    if (qword_1EDB7CF60 != -1)
    {
      swift_once();
    }

    v15 = sub_1C96A6154();
    __swift_project_value_buffer(v15, qword_1EDB7CF68);
    v16 = sub_1C96A6134();
    v17 = sub_1C96A76A4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1C945E000, v16, v17, "Note: could not set the user identity since this account is either not signed in to iCloud.", v18, 2u);
      MEMORY[0x1CCA8E3D0](v18, -1, -1);
    }
  }
}

uint64_t sub_1C956C9F4(void *a1, uint64_t *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  return sub_1C959DD5C(a2, v3, v4);
}

uint64_t sub_1C956CA40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserIdentity();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C956CAA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserIdentity();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C956CB08(void *a1)
{
  v3 = *(type metadata accessor for UserIdentity() - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_1C956C9F4(a1, v4);
}

uint64_t DynamicLazy.value(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = *(a2 + 16);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DynamicLazy.State();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v23 - v15;
  v17 = *(a2 + 40);
  (*(v13 + 16))(&v23 - v15, v4 + v17, v12, v14);
  if (__swift_getEnumTagSinglePayload(v16, 1, v8) == 1)
  {
    (*v4)(a1);
    (*(v13 + 8))(v4 + v17, v12);
    (*(v9 + 16))(v4 + v17, a3, v8);
  }

  else
  {
    v26 = a3;
    v24 = v9;
    v18 = *(v9 + 32);
    v18(v11, v16, v8);
    v19 = *(v4 + 16);
    v25 = a1;
    if (v19(v11, a1))
    {
      return (v18)(v26, v11, v8);
    }

    v21 = v26;
    (*v4)(v25);
    v22 = v24;
    (*(v24 + 8))(v11, v8);
    (*(v13 + 8))(v4 + v17, v12);
    (*(v22 + 16))(v4 + v17, v21, v8);
  }

  return __swift_storeEnumTagSinglePayload(v4 + v17, 0, 1, v8);
}

uint64_t sub_1C956CE24(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v5 + 80);
  v10 = *(*(v4 - 8) + 64);
  if (!v6)
  {
    ++v10;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_28;
  }

  v12 = v10 + ((v9 + 32) & ~v9);
  v13 = 8 * v12;
  if (v12 <= 3)
  {
    v16 = ((v11 + ~(-1 << v13)) >> v13) + 1;
    if (HIWORD(v16))
    {
      v14 = *(a1 + v12);
      if (!v14)
      {
        goto LABEL_28;
      }

      goto LABEL_20;
    }

    if (v16 > 0xFF)
    {
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_28;
      }

      goto LABEL_20;
    }

    if (v16 < 2)
    {
LABEL_28:
      if ((v7 & 0x80000000) != 0)
      {
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v9 + 16) & ~v9, v6, v4);
        if (EnumTagSinglePayload >= 2)
        {
          return EnumTagSinglePayload - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v18 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v18) = -1;
        }

        return (v18 + 1);
      }
    }
  }

  v14 = *(a1 + v12);
  if (!*(a1 + v12))
  {
    goto LABEL_28;
  }

LABEL_20:
  v17 = (v14 - 1) << v13;
  if (v12 > 3)
  {
    v17 = 0;
  }

  if (v12)
  {
    if (v12 > 3)
    {
      LODWORD(v12) = 4;
    }

    switch(v12)
    {
      case 2:
        LODWORD(v12) = *a1;
        break;
      case 3:
        LODWORD(v12) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v12) = *a1;
        break;
      default:
        LODWORD(v12) = *a1;
        break;
    }
  }

  return v8 + (v12 | v17) + 1;
}

void sub_1C956CFE0(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = v9 - 1;
  if (!v9)
  {
    v10 = 0;
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v8 + 80);
  v13 = (v12 + 32) & ~v12;
  v14 = *(*(v7 - 8) + 64);
  if (!v9)
  {
    ++v14;
  }

  v15 = v13 + v14;
  v16 = 8 * (v13 + v14);
  v17 = a3 >= v11;
  v18 = a3 - v11;
  if (v18 != 0 && v17)
  {
    if (v15 <= 3)
    {
      v19 = ((v18 + ~(-1 << v16)) >> v16) + 1;
      if (HIWORD(v19))
      {
        v6 = 4;
      }

      else
      {
        if (v19 < 0x100)
        {
          v20 = 1;
        }

        else
        {
          v20 = 2;
        }

        if (v19 >= 2)
        {
          v6 = v20;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      v6 = 1;
    }
  }

  if (v11 >= a2)
  {
    switch(v6)
    {
      case 1:
        a1[v15] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v15] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_62:
        __break(1u);
        break;
      case 4:
        *&a1[v15] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if ((v10 & 0x80000000) != 0)
          {
            v25 = ((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v12 + 16) & ~v12);
            if (v10 >= a2)
            {
              v29 = a2 + 1;
              v30 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v12 + 16) & ~v12;

              __swift_storeEnumTagSinglePayload(v30, v29, v9, v7);
            }

            else
            {
              if (v14 <= 3)
              {
                v26 = ~(-1 << (8 * v14));
              }

              else
              {
                v26 = -1;
              }

              if (v14)
              {
                v27 = v26 & (~v10 + a2);
                if (v14 <= 3)
                {
                  v28 = v14;
                }

                else
                {
                  v28 = 4;
                }

                bzero(v25, v14);
                switch(v28)
                {
                  case 2:
                    *v25 = v27;
                    break;
                  case 3:
                    *v25 = v27;
                    v25[2] = BYTE2(v27);
                    break;
                  case 4:
                    *v25 = v27;
                    break;
                  default:
                    *v25 = v27;
                    break;
                }
              }
            }
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v24 = a2 & 0x7FFFFFFF;
              *(a1 + 1) = 0;
            }

            else
            {
              v24 = a2 - 1;
            }

            *a1 = v24;
          }
        }

        break;
    }
  }

  else
  {
    v21 = ~v11 + a2;
    if (v15 < 4)
    {
      v22 = (v21 >> v16) + 1;
      if (v15)
      {
        v23 = v21 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *a1 = v23;
          a1[2] = BYTE2(v23);
        }

        else if (v15 == 2)
        {
          *a1 = v23;
        }

        else
        {
          *a1 = v21;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v21;
      v22 = 1;
    }

    switch(v6)
    {
      case 1:
        a1[v15] = v22;
        break;
      case 2:
        *&a1[v15] = v22;
        break;
      case 3:
        goto LABEL_62;
      case 4:
        *&a1[v15] = v22;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C956D2D8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(v4 - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_23;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_23;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 > 3)
          {
            LODWORD(v7) = 4;
          }

          switch(v7)
          {
            case 2:
              LODWORD(v7) = *a1;
              break;
            case 3:
              LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
              break;
            case 4:
              LODWORD(v7) = *a1;
              break;
            default:
              LODWORD(v7) = *a1;
              break;
          }
        }

        return v6 + (v7 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_23:
  if (v5 < 2)
  {
    return 0;
  }

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, v5, v4);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

void sub_1C956D450(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v11 = *(v8 + 64);
  }

  else
  {
    v11 = *(v8 + 64) + 1;
  }

  v12 = 8 * v11;
  v13 = a3 >= v10;
  v14 = a3 - v10;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v15 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v15))
      {
        v6 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v6 = v16;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      v6 = 1;
    }
  }

  if (v10 >= a2)
  {
    switch(v6)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v9 >= 2)
          {
            v20 = a2 + 1;

            __swift_storeEnumTagSinglePayload(a1, v20, v9, v7);
          }
        }

        break;
    }
  }

  else
  {
    v17 = ~v10 + a2;
    if (v11 < 4)
    {
      v18 = (v17 >> v12) + 1;
      if (v11)
      {
        v19 = v17 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v19;
          a1[2] = BYTE2(v19);
        }

        else if (v11 == 2)
        {
          *a1 = v19;
        }

        else
        {
          *a1 = v17;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v17;
      v18 = 1;
    }

    switch(v6)
    {
      case 1:
        a1[v11] = v18;
        break;
      case 2:
        *&a1[v11] = v18;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v18;
        break;
      default:
        return;
    }
  }
}

uint64_t MemoryKeyValueStore.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = sub_1C96A6F04();
  return v0;
}

uint64_t MemoryKeyValueStore.get<A>(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  swift_beginAccess();
  v9 = *(v4 + 16);
  if (*(v9 + 16) && (v10 = sub_1C9476F90(a1, a2), (v11 & 1) != 0))
  {
    sub_1C9484328(*(v9 + 56) + 32 * v10, v14);
  }

  else
  {
    memset(v14, 0, sizeof(v14));
  }

  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A90);
  v12 = swift_dynamicCast();
  return __swift_storeEnumTagSinglePayload(a4, v12 ^ 1u, 1, a3);
}

uint64_t MemoryKeyValueStore.set<A>(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[3] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a1, a4);
  OUTLINED_FUNCTION_0_47();
  sub_1C96A53C4();
  sub_1C953B254(v10, a2, a3);
  return swift_endAccess();
}

Swift::Void __swiftcall MemoryKeyValueStore.remove(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  memset(v3, 0, sizeof(v3));
  OUTLINED_FUNCTION_0_47();
  sub_1C96A53C4();
  sub_1C953B254(v3, countAndFlagsBits, object);
  swift_endAccess();
}

uint64_t MemoryKeyValueStore.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1C956DA10()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5C60);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1C96B2AB0;
  OUTLINED_FUNCTION_8_3();
  *(v2 + 32) = 0xD00000000000001BLL;
  *(v2 + 40) = v3;
  if (qword_1EDB7AB08 != -1)
  {
    OUTLINED_FUNCTION_0_2();
  }

  v4 = qword_1EDB94A58;
  OUTLINED_FUNCTION_0_48();
  OUTLINED_FUNCTION_10_14();
  *(v1 + 48) = "title-light-precip-starting";
  *(v1 + 56) = v0;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 64) = 0xD00000000000001CLL;
  *(v1 + 72) = v5;
  v6 = qword_1EDB94A58;
  OUTLINED_FUNCTION_0_48();
  OUTLINED_FUNCTION_10_14();
  *(v1 + 80) = "title-light-precip-starting";
  *(v1 + 88) = v0;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 96) = 0xD00000000000001BLL;
  *(v1 + 104) = v7;
  v8 = qword_1EDB94A58;
  OUTLINED_FUNCTION_0_48();
  OUTLINED_FUNCTION_10_14();
  *(v1 + 112) = "title-light-precip-starting";
  *(v1 + 120) = v0;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 128) = 0xD000000000000019;
  *(v1 + 136) = v9;
  v10 = qword_1EDB94A58;
  OUTLINED_FUNCTION_22_11();
  v11 = OUTLINED_FUNCTION_5_22();
  v13 = v12;

  *(v1 + 144) = v11;
  *(v1 + 152) = v13;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 160) = 0xD00000000000001ALL;
  *(v1 + 168) = v14;
  v15 = qword_1EDB94A58;
  OUTLINED_FUNCTION_3_25();
  v16 = OUTLINED_FUNCTION_10_15();
  v18 = v17;

  *(v1 + 176) = v16;
  *(v1 + 184) = v18;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 192) = 0xD000000000000019;
  *(v1 + 200) = v19;
  v20 = qword_1EDB94A58;
  OUTLINED_FUNCTION_17_18();
  v21 = OUTLINED_FUNCTION_5_22();
  v23 = v22;

  *(v1 + 208) = v21;
  *(v1 + 216) = v23;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 224) = 0xD000000000000019;
  *(v1 + 232) = v24;
  v25 = qword_1EDB94A58;
  OUTLINED_FUNCTION_3_25();
  v26 = OUTLINED_FUNCTION_11_16();
  v28 = v27;

  *(v1 + 240) = v26;
  *(v1 + 248) = v28;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 256) = 0xD00000000000001ALL;
  *(v1 + 264) = v29;
  v30 = qword_1EDB94A58;
  OUTLINED_FUNCTION_3_25();
  v31 = OUTLINED_FUNCTION_11_16();
  v33 = v32;

  *(v1 + 272) = v31;
  *(v1 + 280) = v33;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 288) = 0xD000000000000019;
  *(v1 + 296) = v34;
  v35 = qword_1EDB94A58;
  OUTLINED_FUNCTION_3_25();
  v36 = OUTLINED_FUNCTION_11_16();
  v38 = v37;

  *(v1 + 304) = v36;
  *(v1 + 312) = v38;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 320) = 0xD00000000000001ALL;
  *(v1 + 328) = v39;
  v40 = qword_1EDB94A58;
  OUTLINED_FUNCTION_23_10();
  OUTLINED_FUNCTION_6_26();
  OUTLINED_FUNCTION_11_16();
  OUTLINED_FUNCTION_14_17();

  *(v1 + 336) = v38;
  *(v1 + 344) = 0xD000000000000019;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 352) = 0xD00000000000001BLL;
  *(v1 + 360) = v41;
  v42 = qword_1EDB94A58;
  OUTLINED_FUNCTION_23_10();
  OUTLINED_FUNCTION_6_26();
  OUTLINED_FUNCTION_11_16();
  OUTLINED_FUNCTION_14_17();

  *(v1 + 368) = v38;
  *(v1 + 376) = 0xD000000000000019;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 384) = 0xD00000000000001ALL;
  *(v1 + 392) = v43;
  v44 = qword_1EDB94A58;
  OUTLINED_FUNCTION_23_10();
  OUTLINED_FUNCTION_6_26();
  OUTLINED_FUNCTION_11_16();
  OUTLINED_FUNCTION_14_17();

  *(v1 + 400) = v38;
  *(v1 + 408) = 0xD000000000000019;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 416) = 0xD000000000000019;
  *(v1 + 424) = v45;
  v46 = qword_1EDB94A58;
  OUTLINED_FUNCTION_23_10();
  v47 = OUTLINED_FUNCTION_11_16();
  v49 = v48;

  *(v1 + 432) = v47;
  *(v1 + 440) = v49;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 448) = 0xD00000000000001ALL;
  *(v1 + 456) = v50;
  v51 = qword_1EDB94A58;
  OUTLINED_FUNCTION_3_25();
  OUTLINED_FUNCTION_11_16();
  OUTLINED_FUNCTION_15_14();

  *(v1 + 464) = v49;
  *(v1 + 472) = v38;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 480) = 0xD000000000000019;
  *(v1 + 488) = v52;
  v53 = qword_1EDB94A58;
  OUTLINED_FUNCTION_17_18();
  OUTLINED_FUNCTION_20_12();
  OUTLINED_FUNCTION_4_25();
  OUTLINED_FUNCTION_14_17();

  *(v1 + 496) = v38;
  *(v1 + 504) = 0xD000000000000019;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 512) = 0xD00000000000001BLL;
  *(v1 + 520) = v54;
  OUTLINED_FUNCTION_25_11();
  OUTLINED_FUNCTION_8_19();
  OUTLINED_FUNCTION_4_25();
  OUTLINED_FUNCTION_14_17();

  *(v1 + 528) = v38;
  *(v1 + 536) = 0xD000000000000019;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 544) = 0xD00000000000001CLL;
  *(v1 + 552) = v55;
  v56 = qword_1EDB94A58;
  OUTLINED_FUNCTION_8_19();
  OUTLINED_FUNCTION_4_25();
  OUTLINED_FUNCTION_14_17();

  *(v1 + 560) = v38;
  *(v1 + 568) = 0xD000000000000019;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 576) = 0xD00000000000001BLL;
  *(v1 + 584) = v57;
  v58 = qword_1EDB94A58;
  OUTLINED_FUNCTION_8_19();
  OUTLINED_FUNCTION_4_25();
  OUTLINED_FUNCTION_14_17();

  *(v1 + 592) = v38;
  *(v1 + 600) = 0xD000000000000019;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 608) = 0xD000000000000019;
  *(v1 + 616) = v59;
  OUTLINED_FUNCTION_25_11();
  OUTLINED_FUNCTION_8_19();
  OUTLINED_FUNCTION_1_34();
  OUTLINED_FUNCTION_9_19();
  OUTLINED_FUNCTION_14_17();

  *(v1 + 624) = v38;
  *(v1 + 632) = 0xD000000000000019;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 640) = 0xD00000000000001ALL;
  *(v1 + 648) = v60;
  v61 = qword_1EDB94A58;
  OUTLINED_FUNCTION_8_19();
  OUTLINED_FUNCTION_1_34();
  OUTLINED_FUNCTION_9_19();
  OUTLINED_FUNCTION_14_17();

  *(v1 + 656) = v38;
  *(v1 + 664) = 0xD000000000000019;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 672) = 0xD000000000000019;
  *(v1 + 680) = v62;
  v63 = qword_1EDB94A58;
  OUTLINED_FUNCTION_8_19();
  OUTLINED_FUNCTION_1_34();
  OUTLINED_FUNCTION_9_19();
  OUTLINED_FUNCTION_14_17();

  *(v1 + 688) = v38;
  *(v1 + 696) = 0xD000000000000019;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 704) = 0xD000000000000019;
  *(v1 + 712) = v64;
  OUTLINED_FUNCTION_25_11();
  OUTLINED_FUNCTION_8_19();
  OUTLINED_FUNCTION_1_34();
  OUTLINED_FUNCTION_9_19();
  OUTLINED_FUNCTION_14_17();

  *(v1 + 720) = v38;
  *(v1 + 728) = 0xD000000000000019;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 736) = 0xD00000000000001ALL;
  *(v1 + 744) = v65;
  v66 = qword_1EDB94A58;
  OUTLINED_FUNCTION_8_19();
  OUTLINED_FUNCTION_1_34();
  OUTLINED_FUNCTION_9_19();
  OUTLINED_FUNCTION_14_17();

  *(v1 + 752) = v38;
  *(v1 + 760) = 0xD000000000000019;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 768) = 0xD000000000000019;
  *(v1 + 776) = v67;
  v68 = qword_1EDB94A58;
  OUTLINED_FUNCTION_8_19();
  OUTLINED_FUNCTION_1_34();
  OUTLINED_FUNCTION_9_19();
  OUTLINED_FUNCTION_14_17();

  *(v1 + 784) = v38;
  *(v1 + 792) = 0xD000000000000019;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 800) = 0xD00000000000001ALL;
  *(v1 + 808) = v69;
  v70 = OUTLINED_FUNCTION_25_11();
  OUTLINED_FUNCTION_4_25();
  OUTLINED_FUNCTION_14_17();

  *(v1 + 816) = v38;
  *(v1 + 824) = 0xD000000000000019;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 832) = 0xD00000000000001BLL;
  *(v1 + 840) = v71;
  v72 = qword_1EDB94A58;
  OUTLINED_FUNCTION_2_35();
  OUTLINED_FUNCTION_15_14();

  *(v1 + 848) = v70;
  *(v1 + 856) = v38;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 864) = 0xD00000000000001ALL;
  *(v1 + 872) = v73;
  v74 = qword_1EDB94A58;
  OUTLINED_FUNCTION_16_17();
  OUTLINED_FUNCTION_2_35();
  OUTLINED_FUNCTION_15_14();

  *(v1 + 880) = v70;
  *(v1 + 888) = v38;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 896) = 0xD000000000000019;
  *(v1 + 904) = v75;
  v76 = qword_1EDB94A58;
  OUTLINED_FUNCTION_16_17();
  OUTLINED_FUNCTION_1_34();
  OUTLINED_FUNCTION_7_20();
  OUTLINED_FUNCTION_15_14();

  *(v1 + 912) = v70;
  *(v1 + 920) = v38;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 928) = 0xD00000000000001ALL;
  *(v1 + 936) = v77;
  v78 = qword_1EDB94A58;
  OUTLINED_FUNCTION_16_17();
  OUTLINED_FUNCTION_1_34();
  OUTLINED_FUNCTION_7_20();
  OUTLINED_FUNCTION_15_14();

  *(v1 + 944) = v70;
  *(v1 + 952) = v38;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 960) = 0xD000000000000019;
  *(v1 + 968) = v79;
  v80 = qword_1EDB94A58;
  OUTLINED_FUNCTION_16_17();
  OUTLINED_FUNCTION_1_34();
  OUTLINED_FUNCTION_7_20();
  OUTLINED_FUNCTION_15_14();

  *(v1 + 976) = v70;
  *(v1 + 984) = v38;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 992) = 0xD000000000000024;
  *(v1 + 1000) = v81;
  v82 = qword_1EDB94A58;
  OUTLINED_FUNCTION_16_17();
  OUTLINED_FUNCTION_1_34();
  OUTLINED_FUNCTION_7_20();
  OUTLINED_FUNCTION_15_14();

  *(v1 + 1008) = v70;
  *(v1 + 1016) = v38;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 1024) = 0xD000000000000025;
  *(v1 + 1032) = v83;
  v84 = qword_1EDB94A58;
  OUTLINED_FUNCTION_16_17();
  OUTLINED_FUNCTION_1_34();
  OUTLINED_FUNCTION_7_20();
  OUTLINED_FUNCTION_15_14();

  *(v1 + 1040) = v70;
  *(v1 + 1048) = v38;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 1056) = 0xD000000000000024;
  *(v1 + 1064) = v85;
  v86 = qword_1EDB94A58;
  OUTLINED_FUNCTION_16_17();
  OUTLINED_FUNCTION_1_34();
  OUTLINED_FUNCTION_7_20();
  OUTLINED_FUNCTION_15_14();

  *(v1 + 1072) = v70;
  *(v1 + 1080) = v38;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 1088) = 0xD000000000000022;
  *(v1 + 1096) = v87;
  v88 = qword_1EDB94A58;
  OUTLINED_FUNCTION_16_17();
  OUTLINED_FUNCTION_22_11();
  OUTLINED_FUNCTION_2_35();
  OUTLINED_FUNCTION_15_14();

  *(v1 + 1104) = v70;
  *(v1 + 1112) = v38;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 1120) = 0xD000000000000023;
  *(v1 + 1128) = v89;
  v90 = qword_1EDB94A58;
  OUTLINED_FUNCTION_16_17();
  OUTLINED_FUNCTION_2_35();
  OUTLINED_FUNCTION_15_14();

  *(v1 + 1136) = v70;
  *(v1 + 1144) = v38;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 1152) = 0xD000000000000022;
  *(v1 + 1160) = v91;
  v92 = qword_1EDB94A58;
  OUTLINED_FUNCTION_16_17();
  OUTLINED_FUNCTION_17_18();
  OUTLINED_FUNCTION_2_35();
  OUTLINED_FUNCTION_15_14();

  *(v1 + 1168) = v70;
  *(v1 + 1176) = v38;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 1184) = 0xD000000000000022;
  *(v1 + 1192) = v93;
  v94 = qword_1EDB94A58;
  OUTLINED_FUNCTION_16_17();
  OUTLINED_FUNCTION_2_35();
  OUTLINED_FUNCTION_15_14();

  *(v1 + 1200) = v70;
  *(v1 + 1208) = v38;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 1216) = 0xD000000000000023;
  *(v1 + 1224) = v95;
  v96 = qword_1EDB94A58;
  OUTLINED_FUNCTION_16_17();
  OUTLINED_FUNCTION_2_35();
  OUTLINED_FUNCTION_15_14();

  *(v1 + 1232) = v70;
  *(v1 + 1240) = v38;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 1248) = 0xD000000000000022;
  *(v1 + 1256) = v97;
  v98 = qword_1EDB94A58;
  v99 = OUTLINED_FUNCTION_2_35();
  v101 = v100;

  *(v1 + 1264) = v99;
  *(v1 + 1272) = v101;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 1280) = 0xD000000000000023;
  *(v1 + 1288) = v102;
  v103 = qword_1EDB94A58;
  v104 = OUTLINED_FUNCTION_5_22();
  v106 = v105;

  *(v1 + 1296) = v104;
  *(v1 + 1304) = v106;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 1312) = 0xD000000000000024;
  *(v1 + 1320) = v107;
  v108 = qword_1EDB94A58;
  v109 = OUTLINED_FUNCTION_5_22();
  v111 = v110;

  *(v1 + 1328) = v109;
  *(v1 + 1336) = v111;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 1344) = 0xD000000000000023;
  *(v1 + 1352) = v112;
  v113 = qword_1EDB94A58;
  v114 = OUTLINED_FUNCTION_5_22();
  v116 = v115;

  *(v1 + 1360) = v114;
  *(v1 + 1368) = v116;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 1376) = 0xD000000000000022;
  *(v1 + 1384) = v117;
  v118 = qword_1EDB94A58;
  v119 = OUTLINED_FUNCTION_5_22();
  v121 = v120;

  *(v1 + 1392) = v119;
  *(v1 + 1400) = v121;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 1408) = 0xD000000000000023;
  *(v1 + 1416) = v122;
  v123 = qword_1EDB94A58;
  OUTLINED_FUNCTION_3_25();
  v124 = OUTLINED_FUNCTION_10_15();
  v126 = v125;

  *(v1 + 1424) = v124;
  *(v1 + 1432) = v126;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 1440) = 0xD000000000000022;
  *(v1 + 1448) = v127;
  v128 = qword_1EDB94A58;
  OUTLINED_FUNCTION_20_12();
  OUTLINED_FUNCTION_17_18();
  v129 = OUTLINED_FUNCTION_5_22();
  v131 = v130;

  *(v1 + 1456) = v129;
  *(v1 + 1464) = v131;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 1472) = 0xD000000000000024;
  *(v1 + 1480) = v132;
  OUTLINED_FUNCTION_24_8();
  OUTLINED_FUNCTION_13_15();
  OUTLINED_FUNCTION_0_48();
  OUTLINED_FUNCTION_10_14();
  *(v1 + 1488) = v128;
  *(v1 + 1496) = v131;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 1504) = 0xD000000000000025;
  *(v1 + 1512) = v133;
  v134 = qword_1EDB94A58;
  OUTLINED_FUNCTION_0_48();
  OUTLINED_FUNCTION_10_14();
  *(v1 + 1520) = v128;
  *(v1 + 1528) = v131;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 1536) = 0xD000000000000024;
  *(v1 + 1544) = v135;
  v136 = qword_1EDB94A58;
  OUTLINED_FUNCTION_0_48();
  OUTLINED_FUNCTION_10_14();
  *(v1 + 1552) = v128;
  *(v1 + 1560) = v131;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 1568) = 0xD000000000000022;
  *(v1 + 1576) = v137;
  OUTLINED_FUNCTION_24_8();
  OUTLINED_FUNCTION_13_15();
  OUTLINED_FUNCTION_0_48();
  OUTLINED_FUNCTION_10_14();
  *(v1 + 1584) = v128;
  *(v1 + 1592) = v131;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 1600) = 0xD000000000000023;
  *(v1 + 1608) = v138;
  v139 = qword_1EDB94A58;
  OUTLINED_FUNCTION_13_15();
  OUTLINED_FUNCTION_0_48();
  OUTLINED_FUNCTION_10_14();
  *(v1 + 1616) = v128;
  *(v1 + 1624) = v131;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 1632) = 0xD000000000000022;
  *(v1 + 1640) = v140;
  v141 = qword_1EDB94A58;
  OUTLINED_FUNCTION_13_15();
  OUTLINED_FUNCTION_0_48();
  OUTLINED_FUNCTION_10_14();
  *(v1 + 1648) = v128;
  *(v1 + 1656) = v131;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 1664) = 0xD000000000000022;
  *(v1 + 1672) = v142;
  OUTLINED_FUNCTION_24_8();
  OUTLINED_FUNCTION_13_15();
  OUTLINED_FUNCTION_0_48();
  OUTLINED_FUNCTION_10_14();
  *(v1 + 1680) = v128;
  *(v1 + 1688) = v131;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 1696) = 0xD000000000000023;
  *(v1 + 1704) = v143;
  v144 = qword_1EDB94A58;
  OUTLINED_FUNCTION_13_15();
  OUTLINED_FUNCTION_0_48();
  OUTLINED_FUNCTION_10_14();
  *(v1 + 1712) = v128;
  *(v1 + 1720) = v131;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 1728) = 0xD000000000000022;
  *(v1 + 1736) = v145;
  v146 = qword_1EDB94A58;
  OUTLINED_FUNCTION_13_15();
  OUTLINED_FUNCTION_0_48();
  OUTLINED_FUNCTION_10_14();
  *(v1 + 1744) = v128;
  *(v1 + 1752) = v131;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 1760) = 0xD000000000000023;
  *(v1 + 1768) = v147;
  OUTLINED_FUNCTION_24_8();
  OUTLINED_FUNCTION_13_15();
  OUTLINED_FUNCTION_0_48();
  OUTLINED_FUNCTION_10_14();
  *(v1 + 1776) = v128;
  *(v1 + 1784) = v131;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 1792) = 0xD000000000000024;
  *(v1 + 1800) = v148;
  v149 = qword_1EDB94A58;
  OUTLINED_FUNCTION_13_15();
  OUTLINED_FUNCTION_0_48();
  OUTLINED_FUNCTION_10_14();
  *(v1 + 1808) = v128;
  *(v1 + 1816) = v131;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 1824) = 0xD000000000000023;
  *(v1 + 1832) = v150;
  v151 = qword_1EDB94A58;
  OUTLINED_FUNCTION_13_15();
  OUTLINED_FUNCTION_0_48();
  OUTLINED_FUNCTION_10_14();
  *(v1 + 1840) = v128;
  *(v1 + 1848) = v131;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 1856) = 0xD000000000000022;
  *(v1 + 1864) = v152;
  v153 = qword_1EDB94A58;
  OUTLINED_FUNCTION_13_15();
  OUTLINED_FUNCTION_0_48();
  OUTLINED_FUNCTION_10_14();
  *(v1 + 1872) = v128;
  *(v1 + 1880) = v131;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 1888) = 0xD000000000000023;
  *(v1 + 1896) = v154;
  v155 = qword_1EDB94A58;
  OUTLINED_FUNCTION_13_15();
  OUTLINED_FUNCTION_0_48();
  OUTLINED_FUNCTION_10_14();
  *(v1 + 1904) = v128;
  *(v1 + 1912) = v131;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 1920) = 0xD000000000000022;
  *(v1 + 1928) = v156;
  v157 = qword_1EDB94A58;
  OUTLINED_FUNCTION_13_15();
  OUTLINED_FUNCTION_0_48();
  OUTLINED_FUNCTION_10_14();
  *(v1 + 1936) = v128;
  *(v1 + 1944) = v131;
  result = sub_1C96A6F04();
  qword_1EC3C3D30 = result;
  return result;
}