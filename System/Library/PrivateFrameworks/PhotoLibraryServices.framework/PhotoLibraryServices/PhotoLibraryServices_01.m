_BYTE *storeEnumTagSinglePayload for PLAssetResourceUploadWorkItem.CodingKeys(_BYTE *result, int a2, int a3)
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

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_19BF41A18(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_19BF41A58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_19BF41ABC()
{
  result = qword_1EAFF3ED8;
  if (!qword_1EAFF3ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFF3ED8);
  }

  return result;
}

unint64_t sub_19BF41B14()
{
  result = qword_1EAFF3EE0;
  if (!qword_1EAFF3EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFF3EE0);
  }

  return result;
}

unint64_t sub_19BF41B6C()
{
  result = qword_1EAFF3EE8;
  if (!qword_1EAFF3EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFF3EE8);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void sub_19BF41C04(id a1)
{
  if (a1 != 1)
  {
  }
}

unint64_t sub_19BF41C1C()
{
  result = qword_1EAFF3EF8;
  if (!qword_1EAFF3EF8)
  {
    sub_19BF3B340(255, &qword_1EAFF3EF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFF3EF8);
  }

  return result;
}

uint64_t sub_19BF41CB4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_19BF41D68(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_19BF41DDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFF3D90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_19BF41E4C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_19BF41E60(a1, a2);
  }

  return a1;
}

uint64_t sub_19BF41E60(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_19BF41EB8(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_19BF41F18(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_19BF41F88(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_19C5C48FC();
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
    result = sub_19BF3B5E0(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for PLAssetResourceUploadWorkItem();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_19BF4217C();
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFF3F18);
          v9 = sub_19BF420E8(v12, i, a3);
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

void (*sub_19BF420E8(void *a1, uint64_t a2, uint64_t a3))(id *a1)
{
  v6 = sub_19BF41F7C(a3);
  sub_19BF3B628(a2, v6, a3);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v7 = MEMORY[0x19EAEC6D0](a2, a3);
  }

  *a1 = v7;
  return sub_19BF42174;
}

unint64_t sub_19BF4217C()
{
  result = qword_1EAFF3F20;
  if (!qword_1EAFF3F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFF3F18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFF3F20);
  }

  return result;
}

uint64_t sub_19BF421E0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_19BF4222C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = sub_19C5C48FC();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < a1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_So034PLBackgroundJobAssetResourceUploadB6WorkerC20PhotoLibraryServicesE5State33_2DE4C2D424602B332AD1EC13D22223E8LLO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_19BF422B4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 2)
  {
    return (v3 - 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_19BF42310(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_19BF4236C(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    *result = a2;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_3_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_5_0()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_8_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_9_0()
{

  return swift_slowAlloc();
}

uint64_t sub_19BF424AC()
{
  v0 = sub_19C5C453C();
  __swift_allocate_value_buffer(v0, qword_1EAFF3F28);
  __swift_project_value_buffer(v0, qword_1EAFF3F28);
  sub_19BF3B340(0, &qword_1EAFF3D08);
  sub_19C5C479C();
  return sub_19C5C454C();
}

id sub_19BF42598(uint64_t a1)
{
  *(v1 + OBJC_IVAR___PLURLSessionLaunchEventListener_bundleController) = a1;
  v3.super_class = PLURLSessionLaunchEventListener;
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_19BF42604()
{
  v1 = sub_19C5C451C();
  v5[3] = v1;
  v5[4] = sub_19BF43C28();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v5);
  (*(*(v1 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69BDD30], v1);
  LOBYTE(v1) = sub_19C5C450C();
  __swift_destroy_boxed_opaque_existential_0(v5);
  if (v1)
  {
    [v0 registerForURLSessionLaunchEvents];
    v3 = &selRef_registerForSimulatedBackgroundResourceUploaderLaunchEvent;
  }

  else
  {
    v3 = &selRef_registerForNoOpURLSessionLaunchEvents;
  }

  return [v0 *v3];
}

void sub_19BF42710()
{
  ObjectType = swift_getObjectType();
  v1 = *MEMORY[0x1E695AEC0];
  v2 = swift_allocObject();
  *(v2 + 16) = ObjectType;
  v4[4] = sub_19BF43C20;
  v4[5] = v2;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 1107296256;
  v4[2] = sub_19BF429A0;
  v4[3] = &block_descriptor_11;
  v3 = _Block_copy(v4);

  xpc_set_event_stream_handler(v1, 0, v3);
  _Block_release(v3);
}

void sub_19BF427E8(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() sessionIdentifierFrom_];
  if (v1)
  {
    v2 = v1;
    v3 = sub_19C5C45DC();
    v5 = v4;
  }

  else
  {
    v5 = 0xE500000000000000;
    v3 = 0x3E6C696E3CLL;
  }

  if (qword_1EAFF3AB8 != -1)
  {
    swift_once();
  }

  v6 = sub_19C5C453C();
  __swift_project_value_buffer(v6, qword_1EAFF3F28);

  oslog = sub_19C5C452C();
  v7 = sub_19C5C471C();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136446210;
    v10 = sub_19BF40E88(v3, v5, &v12);

    *(v8 + 4) = v10;
    _os_log_impl(&dword_19BF1F000, oslog, v7, "Unexpectedly launched for kNSURLSessionLaunchOnDemandNotificationName with identifier: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x19EAF07E0](v9, -1, -1);
    MEMORY[0x19EAF07E0](v8, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_19BF429A0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

void sub_19BF42A48()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = sub_19C5C455C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  out_token = 0;
  sub_19BF3B340(0, &qword_1EAFF3D70);
  (*(v1 + 104))(v3, *MEMORY[0x1E69E7F98], v0);
  v4 = sub_19C5C476C();
  (*(v1 + 8))(v3, v0);
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_19BF43C18;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19BF42D5C;
  aBlock[3] = &block_descriptor_5;
  v6 = _Block_copy(aBlock);

  notify_register_dispatch("com.apple.photos.simulateBackgroundResourceUploaderLaunchEvent", &out_token, v4, v6);
  _Block_release(v6);
}

void sub_19BF42C44()
{
  if (qword_1EAFF3AB8 != -1)
  {
    swift_once();
  }

  v0 = sub_19C5C453C();
  __swift_project_value_buffer(v0, qword_1EAFF3F28);
  v1 = sub_19C5C452C();
  v2 = sub_19C5C472C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_19BF1F000, v1, v2, "Received simulated background resource uploader launch event", v3, 2u);
    MEMORY[0x19EAF07E0](v3, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    [Strong handleBackgroundResourceUploaderLaunchEvent];
  }
}

uint64_t sub_19BF42D5C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_19BF42DF8()
{
  v0 = *MEMORY[0x1E695AEC0];
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3[4] = sub_19BF43BF8;
  v3[5] = v1;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 1107296256;
  v3[2] = sub_19BF429A0;
  v3[3] = &block_descriptor_1;
  v2 = _Block_copy(v3);

  xpc_set_event_stream_handler(v0, 0, v2);
  _Block_release(v2);
}

void sub_19BF42ED8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong handleURLSessionLaunchEvent_];
  }
}

void sub_19BF42F84(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v22 = [objc_opt_self() transaction_];
  v4 = [swift_getObjCClassFromMetadata() sessionIdentifierFrom_];
  if (v4)
  {
    v5 = v4;
    v6 = sub_19C5C45DC();
    v8 = v7;

    sub_19C5C45DC();
    v9 = sub_19C5C463C();

    if (v9)
    {
      if (qword_1EAFF3AB8 != -1)
      {
        swift_once();
      }

      v10 = sub_19C5C453C();
      __swift_project_value_buffer(v10, qword_1EAFF3F28);

      v11 = sub_19C5C452C();
      v12 = sub_19C5C472C();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v23 = v14;
        *v13 = 136446210;
        v15 = sub_19BF40E88(v6, v8, &v23);

        *(v13 + 4) = v15;
        _os_log_impl(&dword_19BF1F000, v11, v12, "Got URLSession launch event for identifier: %{public}s", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v14);
        MEMORY[0x19EAF07E0](v14, -1, -1);
        MEMORY[0x19EAF07E0](v13, -1, -1);
      }

      else
      {
      }

      [v2 handleBackgroundResourceUploaderLaunchEvent];
    }

    else
    {
      if (qword_1EAFF3AB8 != -1)
      {
        swift_once();
      }

      v16 = sub_19C5C453C();
      __swift_project_value_buffer(v16, qword_1EAFF3F28);

      v17 = sub_19C5C452C();
      v18 = sub_19C5C471C();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v23 = v20;
        *v19 = 136446210;
        v21 = sub_19BF40E88(v6, v8, &v23);

        *(v19 + 4) = v21;
        _os_log_impl(&dword_19BF1F000, v17, v18, "Got URLSession launch event for unknown identifier: %{public}s", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v20);
        MEMORY[0x19EAF07E0](v20, -1, -1);
        MEMORY[0x19EAF07E0](v19, -1, -1);
      }

      else
      {
      }
    }
  }
}

uint64_t sub_19BF43334(void *a1)
{
  if (xpc_dictionary_get_string(a1, *MEMORY[0x1E695AEC8]))
  {
    return sub_19C5C461C();
  }

  if (qword_1EAFF3AB8 != -1)
  {
    swift_once();
  }

  v2 = sub_19C5C453C();
  __swift_project_value_buffer(v2, qword_1EAFF3F28);
  v3 = sub_19C5C452C();
  v4 = sub_19C5C471C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_19BF1F000, v3, v4, "Couldn't get URLSession identifier from XPC launch event dictionary", v5, 2u);
    MEMORY[0x19EAF07E0](v5, -1, -1);
  }

  return 0;
}

void sub_19BF434B4()
{
  v42[1] = *MEMORY[0x1E69E9840];
  v1 = sub_19C5C44DC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() systemLibraryURL];
  sub_19C5C44CC();

  v6 = [v0 bundleController];
  v7 = sub_19C5C44BC();
  v8 = [v6 openBundleAtLibraryURL_];

  v9 = [v8 libraryServicesManager];
  if (!v9)
  {
    if (qword_1EAFF3AB8 != -1)
    {
      swift_once();
    }

    v33 = sub_19C5C453C();
    __swift_project_value_buffer(v33, qword_1EAFF3F28);
    v34 = sub_19C5C452C();
    v35 = sub_19C5C471C();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_19BF1F000, v34, v35, "Couldn't get SPL library state machine after a URLSession launch", v36, 2u);
      MEMORY[0x19EAF07E0](v36, -1, -1);
    }

    goto LABEL_19;
  }

  v10 = v9;
  v11 = [objc_allocWithZone(PLPhotoLibraryOpener) initWithLibraryServicesManager:v9 reportInProgressUpgrades:0];
  v42[0] = 0;
  v12 = [v11 openPhotoLibraryDatabaseWithAutoUpgrade:0 autoCreate:0 error:v42];
  v13 = v42[0];
  if (v12)
  {
    v42[0] = 0;
    v14 = v13;
    v15 = [v10 awaitLibraryState:7 error:v42];
    v13 = v42[0];
    if (v15)
    {
      v16 = v42[0];
      v17 = [v10 backgroundAssetResourceUploader];
      if (v17)
      {
        v18 = v17;
        if (qword_1EAFF3AB8 != -1)
        {
          swift_once();
        }

        v19 = sub_19C5C453C();
        __swift_project_value_buffer(v19, qword_1EAFF3F28);
        v20 = sub_19C5C452C();
        v21 = sub_19C5C472C();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          *v22 = 0;
          _os_log_impl(&dword_19BF1F000, v20, v21, "Handling launch event for background resource uploader", v22, 2u);
          MEMORY[0x19EAF07E0](v22, -1, -1);
        }

        sub_19BF320F8();
      }

      else
      {
        if (qword_1EAFF3AB8 != -1)
        {
          swift_once();
        }

        v37 = sub_19C5C453C();
        __swift_project_value_buffer(v37, qword_1EAFF3F28);
        v38 = sub_19C5C452C();
        v39 = sub_19C5C471C();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          *v40 = 0;
          _os_log_impl(&dword_19BF1F000, v38, v39, "Upload manager not available after state machine after a URLSession launch", v40, 2u);
          MEMORY[0x19EAF07E0](v40, -1, -1);
        }

        else
        {
        }
      }

LABEL_19:
      (*(v2 + 8))(v4, v1);
      return;
    }
  }

  v23 = v13;
  v24 = sub_19C5C44AC();

  swift_willThrow();
  (*(v2 + 8))(v4, v1);
  if (qword_1EAFF3AB8 != -1)
  {
    swift_once();
  }

  v25 = sub_19C5C453C();
  __swift_project_value_buffer(v25, qword_1EAFF3F28);
  v26 = v24;
  v27 = sub_19C5C452C();
  v28 = sub_19C5C471C();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v29 = 138412290;
    v31 = v24;
    v32 = _swift_stdlib_bridgeErrorToNSError();
    *(v29 + 4) = v32;
    *v30 = v32;
    _os_log_impl(&dword_19BF1F000, v27, v28, "Failed to handle launch event for background resource uploader: %@", v29, 0xCu);
    sub_19BF43B90(v30);
    MEMORY[0x19EAF07E0](v30, -1, -1);
    MEMORY[0x19EAF07E0](v29, -1, -1);
  }

  else
  {
  }
}

PLURLSessionLaunchEventListener __swiftcall PLURLSessionLaunchEventListener.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  v1 = [v0 init];
  result.bundleController = v2;
  result.super.isa = v1;
  return result;
}

uint64_t sub_19BF43B90(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFF3D30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_19BF43C28()
{
  result = qword_1EAFF3A58;
  if (!qword_1EAFF3A58)
  {
    sub_19C5C451C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFF3A58);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

__CFString *PHAErrorDescriptionForCode(uint64_t a1)
{
  v3 = @"Graph is missing";
  v4 = @"No error";
  switch(a1)
  {
    case 0:
      goto LABEL_45;
    case 1:
      v4 = @"Unspecified error";
      goto LABEL_45;
    case 2:
      v4 = @"API Misuse";
      goto LABEL_45;
    case 3:
      v4 = @"Not implemented";
      goto LABEL_45;
    case 4:
      v4 = @"No mangager for library";
      goto LABEL_45;
    case 5:
      v4 = @"Object not found";
      goto LABEL_45;
    case 6:
      v4 = @"Graph rebuild in progress";
      goto LABEL_45;
    case 7:
      v4 = @"Graph rebuild failed";
      goto LABEL_45;
    case 8:
      v4 = @"Graph service permanently unavailable";
      goto LABEL_45;
    case 9:
      v4 = @"Resource not found";
      goto LABEL_45;
    case 10:
      v4 = @"Database operation failed";
      goto LABEL_45;
    case 11:
      v4 = @"Invalid predicate";
      goto LABEL_45;
    case 12:
      v4 = @"Vision service unavailable";
      goto LABEL_45;
    case 13:
      v4 = @"Library unavailable";
      goto LABEL_45;
    case 14:
      v4 = @"Invalid state";
      goto LABEL_45;
    case 15:
      v4 = @"Graph service temporarily unavailable";
      goto LABEL_45;
    case 16:
      v4 = @"Cancelled";
      goto LABEL_45;
    case 17:
      v4 = @"Operation not supported";
      goto LABEL_45;
    case 18:
      v4 = @"Operation not cancelled";
      goto LABEL_45;
    case 19:
      v4 = @"Operation not found";
      goto LABEL_45;
    case 20:
      v4 = @"Service permanently unavailable";
      goto LABEL_45;
    case 21:
      goto LABEL_6;
    case 22:
      v4 = @"Task failed because it hit an exception";
      goto LABEL_45;
    case 23:
      v4 = @"Task didn't report progress for more than 1 minute and timed out";
      goto LABEL_45;
    case 24:
      v4 = @"At least one operation in a poster description refresh session failed";
      goto LABEL_45;
    case 25:
      v4 = @"At least one operation in a poster configuration refresh session failed";
      goto LABEL_45;
    case 26:
      v4 = @"At least one operation in a wallpaper suggestion refresh session failed";
      goto LABEL_45;
    case 27:
      goto LABEL_42;
    case 28:
      v3 = @"Graph unusable: schema version out of date";
      goto LABEL_42;
    case 29:
      v3 = @"Graph unusable: curation version out of date";
      goto LABEL_42;
    case 30:
      v3 = @"Graph unusable: meaning version out of date";
      goto LABEL_42;
    case 31:
      v3 = @"Graph unusable: event labeling version out of date";
      goto LABEL_42;
    case 32:
      v3 = @"Graph unusable: has diverging locales";
      goto LABEL_42;
    case 33:
      v3 = @"Graph unusable: has diverging preferred languages";
      goto LABEL_42;
    case 34:
      v3 = @"Graph unusable: has diverging GeoService provider";
      goto LABEL_42;
    case 35:
      v3 = @"Graph unusable: has diverging Contacts access permission";
      goto LABEL_42;
    case 36:
      v3 = @"Graph unusable: personal traits entity names version out of date";
      goto LABEL_42;
    case 37:
      v4 = @"Graph unusable: public event version out of date";
      goto LABEL_45;
    default:
      if (a1 == 100)
      {
        v4 = @"MediaAnalysis services returned 'MediaAnalysisServiceInvalidRequestID' for the request made";
      }

      else if (a1 == 101)
      {
        v4 = @"MediaAnalysis services request cancelled due to timeout";
      }

      else
      {
LABEL_6:
        v3 = @"Unknown error code";
        v4 = @"Unknown error code";
        if ((a1 - 27) <= 9)
        {
LABEL_42:
          if (MEMORY[0x19EAEE240](v4))
            v4 = {;
          }

          else
          {
            v4 = v3;
          }
        }
      }

LABEL_45:

      return v4;
  }
}

void sub_19BF46AB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19BF4AF54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19BF4C8DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19BF4E468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__144(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19BF50200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19BF51690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19BF53B24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__179(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19BF56744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_19BF56A08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_19BF56CCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_19BF56F80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_19BF57220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_19BF57610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_19BF5856C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19BF5B91C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__311(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19BF5CACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_19BF604A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a53, 8);
  _Block_object_dispose(&a65, 8);
  _Unwind_Resume(a1);
}

void sub_19BF62018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19BF70FD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__709(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19BF71494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_19BF72B98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_19BF731EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 208), 8);
  _Unwind_Resume(a1);
}

void sub_19BF73C58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19BF74928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19BF758E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_19BF76E70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BF7771C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_19BF77F68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *PLStringFromDuplicateProcessingStatusInternal(unsigned int a1)
{
  if (a1 > 2)
  {
    return @"PLDuplicateProcessingStatusWaitingOnBackgroundMigration";
  }

  else
  {
    return off_1E7564930[a1];
  }
}

id PLStringFromDuplicateProcessingStatus(unsigned int a1)
{
  if (a1 > 2)
  {
    v1 = @"PLDuplicateProcessingStatusWaitingOnBackgroundMigration";
  }

  else
  {
    v1 = off_1E7564930[a1];
  }

  v2 = -[__CFString substringFromIndex:](v1, "substringFromIndex:", [@"PLDuplicateProcessingStatus" length]);
  v3 = [v2 lowercaseString];

  return v3;
}

void _photoLibraryForceClientExitNotification(uint64_t a1, void *a2)
{
  if (objc_opt_respondsToSelector())
  {
    v3 = objc_autoreleasePoolPush();
    [a2 performSelector:sel__photoLibraryForceClientExitNotification withObject:0];

    objc_autoreleasePoolPop(v3);
  }
}

void _photoLibraryCorruptNotification(uint64_t a1, void *a2)
{
  if (objc_opt_respondsToSelector())
  {
    v3 = objc_autoreleasePoolPush();
    [a2 performSelector:sel__photoLibraryCorruptNotification withObject:0];

    objc_autoreleasePoolPop(v3);
  }
}

void sub_19BF7A7B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1060(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19BF7B964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_19BF7C5D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_19BF7E0A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_19BF7F864(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a35, 8);
  _Unwind_Resume(a1);
}

void sub_19BF806F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a49, 8);
  _Unwind_Resume(a1);
}

void sub_19BF810D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a49, 8);
  _Unwind_Resume(a1);
}

void sub_19BF81F30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a51, 8);
  _Unwind_Resume(a1);
}

void sub_19BF82C1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a49, 8);
  _Unwind_Resume(a1);
}

void sub_19BF82F30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_19BF838E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a49, 8);
  _Unwind_Resume(a1);
}

void sub_19BF842AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a49, 8);
  _Unwind_Resume(a1);
}

void sub_19BF85E78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19BF893A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 176), 8);
  _Unwind_Resume(a1);
}

void PLModelMigrationActionRegistration_Background(void *a1)
{
  v1 = a1;
  v16 = [v1 migrationContext];
  v2 = [v16 libraryIdentifier];
  v3 = PLPlatformExtendedAttributesSupported();
  if (v2 == 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  [v1 registerBackgroundActionClass:objc_opt_class() onCondition:v4];
  [v1 registerBackgroundActionClass:objc_opt_class() onCondition:v4];
  [v1 registerBackgroundActionClass:objc_opt_class() onCondition:v4];
  [v1 registerBackgroundActionClass:objc_opt_class() onCondition:v4];
  [v1 registerBackgroundActionClass:objc_opt_class() onCondition:1];
  [v1 registerBackgroundActionClass:objc_opt_class() onCondition:1];
  [v1 registerBackgroundActionClass:objc_opt_class() onCondition:1];
  [v1 registerBackgroundActionClass:objc_opt_class() onCondition:1];
  [v1 registerBackgroundActionClass:objc_opt_class() onCondition:1];
  [v1 registerBackgroundActionClass:objc_opt_class() onCondition:v4];
  [v1 registerBackgroundActionClass:objc_opt_class() onCondition:v4];
  [v1 registerBackgroundActionClass:objc_opt_class() onCondition:v4];
  v5 = objc_opt_class();
  v6 = PLPlatformMomentsSupported();
  if (v2 == 3)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  [v1 registerBackgroundActionClass:v5 onCondition:v7];
  [v1 registerBackgroundActionClass:objc_opt_class() onCondition:v4];
  [v1 registerBackgroundActionClass:objc_opt_class() onCondition:1];
  [v1 registerBackgroundActionClass:objc_opt_class() onCondition:v2 == 1];
  [v1 registerBackgroundActionClass:objc_opt_class() onCondition:v2 == 1];
  [v1 registerBackgroundActionClass:objc_opt_class() onCondition:1];
  [v1 registerBackgroundActionClass:objc_opt_class() onCondition:1];
  [v1 registerBackgroundActionClass:objc_opt_class() onCondition:v2 == 1];
  [v1 registerBackgroundActionClass:objc_opt_class() onCondition:1];
  [v1 registerBackgroundActionClass:objc_opt_class() onCondition:1];
  [v1 registerBackgroundActionClass:objc_opt_class() onCondition:1];
  [v1 registerBackgroundActionClass:objc_opt_class() onCondition:1];
  [v1 registerBackgroundActionClass:objc_opt_class() onCondition:v2 == 1];
  v8 = objc_opt_class();
  v9 = PLPlatformMomentsSupported();
  if (v2 == 3)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  [v1 registerBackgroundActionClass:v8 onCondition:v10];
  [v1 registerBackgroundActionClass:objc_opt_class() onCondition:v2 == 1];
  v11 = objc_opt_class();
  v12 = PLPlatformMomentsSupported();
  v13 = v2 == 3;
  v14 = v2 != 3;
  if (v13)
  {
    v15 = 0;
  }

  else
  {
    v15 = v12;
  }

  [v1 registerBackgroundActionClass:v11 onCondition:v15];
  [v1 registerBackgroundActionClass:objc_opt_class() onCondition:1];
  [v1 registerBackgroundActionClass:objc_opt_class() onCondition:v14];
  [v1 registerBackgroundActionClass:objc_opt_class() onCondition:v14];
  [v1 registerBackgroundActionClass:objc_opt_class() onCondition:1];
}

__CFString *PLDebugStringForSearchSuggestionTemplateDateType(uint64_t a1)
{
  if ((a1 - 1) > 8)
  {
    return @"PLSearchSuggestionDateTemplateCategoryTypeNone";
  }

  else
  {
    return off_1E7564C90[a1 - 1];
  }
}

void sub_19BF8F3E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19BF936B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t PLMigrationContextWellKnownPhotoLibraryIdentifier(void *a1)
{
  v1 = a1;
  v2 = MEMORY[0x1E69BF2A0];
  v3 = [v1 libraryURL];
  v4 = [v2 wellKnownPhotoLibraryIdentifierForURL:v3];

  if (!v4)
  {
    v4 = [v1 isSystemPhotoLibraryPathManager];
  }

  return v4;
}

void sub_19BF93BB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id __copy_helper_block_e8_40n11_8_8_s0_t8w8(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  *(a1 + 48) = *(a2 + 48);
  return result;
}

void sub_19BF9981C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2226(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19BF9CB08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_19BF9CE4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19BF9F648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26)
{
  _Block_object_dispose((v26 - 144), 8);

  _Unwind_Resume(a1);
}

void sub_19BF9F954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id __copy_helper_block_e8_72n11_8_8_s0_t8w8(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 72);
  *(a1 + 72) = result;
  *(a1 + 80) = *(a2 + 80);
  return result;
}

void sub_19BF9FD58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BFA07A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2459(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *PLShortDescriptionForAnalysisState(int a1)
{
  if (a1 <= -11)
  {
    if (a1 == -40)
    {
      return @"failed";
    }

    if (a1 != -30)
    {
      if (a1 == -20)
      {
        return @"dirty-prev-proc";
      }

      return @"invalid-state";
    }

    return @"failed-no-resources";
  }

  else if (a1 > 9)
  {
    if (a1 != 10)
    {
      if (a1 == 20)
      {
        return @"processed";
      }

      return @"invalid-state";
    }

    return @"pending";
  }

  else
  {
    if (a1 != -10)
    {
      if (!a1)
      {
        return @"unknown";
      }

      return @"invalid-state";
    }

    return @"dirty-never-proc";
  }
}

__CFString *PLShortDescriptionForWorkerType(int a1)
{
  v1 = @"unknown";
  if (!a1)
  {
    v1 = @"graph";
  }

  if (a1 == 4)
  {
    return @"face";
  }

  else
  {
    return v1;
  }
}

void sub_19BFA1B54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2596(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t _sizeOfDirectories(void *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if ([v1 count])
  {
    v2 = [v1 count];
    if (v2)
    {
      v4 = v2;
      v5 = 0;
      *&v3 = 136315650;
      v17 = v3;
      while (1)
      {
        v6 = [v1 objectAtIndexedSubscript:{v5, v17}];
        v7 = [v6 fileSystemRepresentation];

        if (dirstat_np() == -1)
        {
          break;
        }

LABEL_12:
        if (v4 == ++v5)
        {
          goto LABEL_13;
        }
      }

      v8 = __error();
      v9 = *v8;
      if (*v8 == 2)
      {
        v10 = PLBackendGetLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          *__strerrbuf = 136315138;
          v25 = v7;
          v11 = __strerrbuf;
          v12 = v10;
          v13 = OS_LOG_TYPE_DEBUG;
          v14 = "Can't get size for %s, no such file or directory";
          v15 = 12;
LABEL_10:
          _os_log_impl(&dword_19BF1F000, v12, v13, v14, v11, v15);
        }
      }

      else
      {
        strerror_r(*v8, __strerrbuf, 0x100uLL);
        v10 = PLBackendGetLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = v17;
          v19 = v7;
          v20 = 1024;
          v21 = v9;
          v22 = 2082;
          v23 = __strerrbuf;
          v11 = buf;
          v12 = v10;
          v13 = OS_LOG_TYPE_ERROR;
          v14 = "Can't get size for %s (%d: %{public}s)";
          v15 = 28;
          goto LABEL_10;
        }
      }

      goto LABEL_12;
    }
  }

LABEL_13:

  return 0;
}

void sub_19BFA5B58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19BFA6224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2710(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19BFA6F30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19BFB0F68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19BFB1400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19BFB1C00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19BFB21D0(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    os_unfair_lock_unlock(v2 + 20);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_19BFB223C(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x19BFB2248);
}

void sub_19BFB4648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PrimaryURLSort(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 path];
  v6 = *MEMORY[0x1E69BFEF8];
  v7 = [v5 containsString:*MEMORY[0x1E69BFEF8]];

  v8 = [v4 path];
  v9 = [v8 containsString:v6];

  if ((v7 & 1) == 0 && v9)
  {
    goto LABEL_3;
  }

  if (!(v9 & 1 | ((v7 & 1) == 0)))
  {
LABEL_7:
    v10 = 1;
    goto LABEL_8;
  }

  v11 = [v3 pathExtension];
  v12 = [PLPhotoLibrary priorityForFileExtension:v11];

  v13 = [v4 pathExtension];
  v14 = [PLPhotoLibrary priorityForFileExtension:v13];

  if (v12 >= v14)
  {
    if (v12 <= v14)
    {
      v16 = [v3 path];
      v17 = [v4 path];
      v10 = [v16 compare:v17];

      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_3:
  v10 = -1;
LABEL_8:

  return v10;
}

uint64_t testIsRunningInsideOfProcess(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = getpid();
  if (proc_name(v2, buffer, 0x80u) < 0)
  {
    v8 = *__error();
    v3 = PLBackendGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109378;
      v15 = v2;
      v16 = 2080;
      v17 = strerror(v8);
      _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_ERROR, "Failed to get proc_name from pid %d: %s", buf, 0x12u);
    }

    v4 = 0;
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v10 objects:buf count:16];
    if (v4)
    {
      v5 = *v11;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v11 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v7 = *(*(&v10 + 1) + 8 * i);
          if (!strcmp(buffer, [v7 UTF8String]))
          {
            v4 = 1;
            goto LABEL_15;
          }
        }

        v4 = [v3 countByEnumeratingWithState:&v10 objects:buf count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_15:

  return v4;
}

void PLPopPhotoLibraryClient()
{
  if ([__clientStack count] >= 2)
  {
    [__clientStack removeObjectAtIndex:0];
    v0 = [__clientStack objectAtIndex:0];
    __photoLibraryClient = [v0 intValue];
  }
}

id PLCacheDeleteClientError(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v8 = *MEMORY[0x1E696A578];
    v9[0] = v3;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  }

  else
  {
    v5 = 0;
  }

  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PLCacheDeleteClientErrorDomain" code:a1 userInfo:v5];

  return v6;
}

void sub_19BFB865C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a51, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3284(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19BFB8AFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _libraryNotificationContainsAlbum(void *a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [a1 userInfo];
  [v7 objectForKey:v5];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v19 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = *v17;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = [*(*(&v16 + 1) + 8 * i) uuid];
        v13 = [v6 uuid];
        v14 = [v12 isEqualToString:v13];

        if (v14)
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v9;
}

uint64_t PLPhotoLibraryNotificationMentionsAlbum(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (_libraryNotificationContainsAlbum(v3, @"AddedItemsKey", v4) & 1) != 0 || (_libraryNotificationContainsAlbum(v3, @"ChangedItemsKey", v4))
  {
    v5 = 1;
  }

  else
  {
    v5 = _libraryNotificationContainsAlbum(v3, @"DeletedItemsKey", v4);
  }

  return v5;
}

BOOL PLPhotoLibraryNotificationAnyAlbumWasAdded(void *a1)
{
  v1 = a1;
  v2 = [v1 userInfo];
  v3 = [v2 objectForKey:@"AddedItemsKey"];
  v4 = [v3 count];

  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v6 = [v1 userInfo];
    v7 = [v6 objectForKey:@"AddedItemsIndexesKey"];
    v5 = [v7 count] != 0;
  }

  return v5;
}

BOOL PLPhotoLibraryNotificationAnyAlbumWasUpdated(void *a1)
{
  v1 = a1;
  v2 = [v1 userInfo];
  v3 = [v2 objectForKey:@"ChangedItemsKey"];
  v4 = [v3 count];

  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v6 = [v1 userInfo];
    v7 = [v6 objectForKey:@"ChangedItemsIndexesKey"];
    v5 = [v7 count] != 0;
  }

  return v5;
}

BOOL PLPhotoLibraryNotificationAnyAlbumWasDeleted(void *a1)
{
  v1 = a1;
  v2 = [v1 userInfo];
  v3 = [v2 objectForKey:@"DeletedItemsKey"];
  v4 = [v3 count];

  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v6 = [v1 userInfo];
    v7 = [v6 objectForKey:@"DeletedItemsIndexesKey"];
    v5 = [v7 count] != 0;
  }

  return v5;
}

BOOL PLPhotoLibraryPhotoNotificationAnyPhotoWasAdded(void *a1)
{
  v1 = a1;
  v2 = [v1 userInfo];
  v3 = [v2 objectForKey:@"AddedItemsKey"];
  v4 = [v3 count];

  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v6 = [v1 userInfo];
    v7 = [v6 objectForKey:@"AddedItemsIndexesKey"];
    v5 = [v7 count] != 0;
  }

  return v5;
}

BOOL PLPhotoLibraryPhotoNotificationAnyPhotoWasDeleted(void *a1)
{
  v1 = a1;
  v2 = [v1 userInfo];
  v3 = [v2 objectForKey:@"DeletedItemsKey"];
  v4 = [v3 count];

  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v6 = [v1 userInfo];
    v7 = [v6 objectForKey:@"DeletedItemsIndexesKey"];
    v5 = [v7 count] != 0;
  }

  return v5;
}

uint64_t _albumNotificationContainsAlbums(void *a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = [a3 uuid];
  v8 = [v5 userInfo];
  [v8 objectForKey:v6];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = v19 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = *v17;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = [*(*(&v16 + 1) + 8 * i) uuid];
        v14 = [v13 isEqualToString:v7];

        if (v14)
        {
          v10 = 1;
          goto LABEL_11;
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v10;
}

uint64_t PLAlbumNotificationMentionsPhoto(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (_albumNotificationContainsAlbums(v3, @"AddedItemsKey", v4) & 1) != 0 || (_albumNotificationContainsAlbums(v3, @"ChangedItemsKey", v4))
  {
    v5 = 1;
  }

  else
  {
    v5 = _albumNotificationContainsAlbums(v3, @"DeletedItemsKey", v4);
  }

  return v5;
}

BOOL PLAlbumNotificationAnyPhotoWasAdded(void *a1)
{
  v1 = a1;
  v2 = [v1 userInfo];
  v3 = [v2 objectForKey:@"AddedItemsKey"];
  v4 = [v3 count];

  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v6 = [v1 userInfo];
    v7 = [v6 objectForKey:@"AddedItemsIndexesKey"];
    v5 = [v7 count] != 0;
  }

  return v5;
}

BOOL PLAlbumNotificationAnyPhotoWasUpdated(void *a1)
{
  v1 = a1;
  v2 = [v1 userInfo];
  v3 = [v2 objectForKey:@"ChangedItemsKey"];
  v4 = [v3 count];

  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v6 = [v1 userInfo];
    v7 = [v6 objectForKey:@"ChangedItemsIndexesKey"];
    v5 = [v7 count] != 0;
  }

  return v5;
}

BOOL PLAlbumNotificationAnyPhotoWasDeleted(void *a1)
{
  v1 = a1;
  v2 = [v1 userInfo];
  v3 = [v2 objectForKey:@"DeletedItemsKey"];
  v4 = [v3 count];

  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v6 = [v1 userInfo];
    v7 = [v6 objectForKey:@"DeletedItemsIndexesKey"];
    v5 = [v7 count] != 0;
  }

  return v5;
}

void sub_19BFBA808(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id PLPhotoLibraryServicesBinaryImageUUID()
{
  v3[2] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  v3[1] = 0;
  image_uuid = _dyld_get_image_uuid();
  v1 = 0;
  if (image_uuid)
  {
    v1 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v3];
  }

  return v1;
}

uint64_t __Block_byref_object_copy__3531(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19BFBBAE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id PLStringFromPLDuplicateMergeCrashRecoveryActionShort(uint64_t a1)
{
  v1 = @"PLDuplicateMergeCrashRecoveryActionNone";
  if (a1 == 1)
  {
    v1 = @"PLDuplicateMergeCrashRecoveryActionMasterCleanup";
  }

  if (a1 == 2)
  {
    v1 = @"PLDuplicateMergeCrashRecoveryActionMasterResourceFingerprintCleanup";
  }

  v2 = v1;
  v3 = -[__CFString substringFromIndex:](v2, "substringFromIndex:", [@"PLDuplicateMergeCrashRecoveryAction" length]);

  return v3;
}

__CFString *PLStringFromPLDuplicateMergeCrashRecoveryAction(uint64_t a1)
{
  v1 = @"PLDuplicateMergeCrashRecoveryActionNone";
  if (a1 == 1)
  {
    v1 = @"PLDuplicateMergeCrashRecoveryActionMasterCleanup";
  }

  if (a1 == 2)
  {
    return @"PLDuplicateMergeCrashRecoveryActionMasterResourceFingerprintCleanup";
  }

  else
  {
    return v1;
  }
}

void sub_19BFC5068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19BFC55D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *PLDescriptionForPhotosHighlightType(unsigned int a1)
{
  if (a1 > 7)
  {
    return @"unknown";
  }

  else
  {
    return off_1E7565928[a1];
  }
}

__CFString *PLDebugDescriptionForAggregateProcessedLocationType(void *a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [MEMORY[0x1E695DFA8] set];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v27;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v27 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{objc_msgSend(*(*(&v26 + 1) + 8 * i), "processedLocation")}];
        [v2 addObject:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v26 objects:v32 count:16];
    }

    while (v5);
  }

  v9 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"self" ascending:1];
  v31 = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
  v11 = [v2 sortedArrayUsingDescriptors:v10];

  v12 = [MEMORY[0x1E695DF70] array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = v11;
  v14 = [v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v23;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = PLMomentDescriptionForProcessedLocationType([*(*(&v22 + 1) + 8 * j) unsignedIntegerValue]);
        [v12 addObject:v18];
      }

      v15 = [v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v15);
  }

  v19 = [v12 componentsJoinedByString:{@", "}];
  if (![(__CFString *)v19 length])
  {
    v20 = [v3 count];

    if (v20)
    {
      v19 = @"Error in moment location type description";
    }

    else
    {
      v19 = @"No moments";
    }
  }

  return v19;
}

__CFString *PLDescriptionForPhotosHighlightKind(unsigned int a1)
{
  if (a1 > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_1E75658F0[a1];
  }
}

__CFString *PLDescriptionForPhotosHighlightCurationType(unsigned int a1)
{
  if (a1 > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_1E7565910[a1];
  }
}

__CFString *PLDescriptionForPhotosHighlightEnrichmentState(unsigned int a1)
{
  if (a1 > 4)
  {
    return @"unknown";
  }

  else
  {
    return off_1E75659A8[a1];
  }
}

__CFString *PLDescriptionForPhotosHighlightCategory(int a1)
{
  v1 = @"unknown";
  if (a1 == 1)
  {
    v1 = @"PLPhotosHighlightCategoryRecent";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"PLPhotosHighlightCategoryDefault";
  }
}

__CFString *PLDescriptionForSharingComposition(unsigned int a1)
{
  if (a1 > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_1E7565968[a1];
  }
}

__CFString *PLDescriptionForPhotosHighlightVisibilityState(unsigned int a1)
{
  if (a1 > 4)
  {
    return @"unknown";
  }

  else
  {
    return off_1E7565980[a1];
  }
}

void sub_19BFCDF78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5028(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19BFD2E88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19BFD37EC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_19BFD3A30(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_19BFD3E08(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_19BFD4024(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id PLImageWriterSourcePathKeys()
{
  if (PLImageWriterSourcePathKeys_onceToken != -1)
  {
    dispatch_once(&PLImageWriterSourcePathKeys_onceToken, &__block_literal_global_616);
  }

  v1 = PLImageWriterSourcePathKeys_keys;

  return v1;
}

void __PLImageWriterSourcePathKeys_block_invoke()
{
  v5[6] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69C05A0];
  v5[0] = *MEMORY[0x1E69C0518];
  v5[1] = v0;
  v1 = *MEMORY[0x1E69C04D8];
  v5[2] = *MEMORY[0x1E69C03D8];
  v5[3] = v1;
  v2 = *MEMORY[0x1E69C04B8];
  v5[4] = *MEMORY[0x1E69C04C0];
  v5[5] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:6];
  v4 = PLImageWriterSourcePathKeys_keys;
  PLImageWriterSourcePathKeys_keys = v3;
}

void sub_19BFD6620(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 buf)
{
  if (a2 == 1)
  {
    v19 = objc_begin_catch(a1);
    v20 = PLAssetImportGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [v19 callStackSymbols];
      LODWORD(buf) = 138412546;
      *(&buf + 4) = v19;
      WORD6(buf) = 2112;
      *(&buf + 14) = v21;
      _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_ERROR, "%@: %@", &buf, 0x16u);
    }

    objc_exception_rethrow();
  }

  _Unwind_Resume(a1);
}

void SetErrorForJob(void *a1, unsigned int a2, void *a3)
{
  v5 = MEMORY[0x1E695DF20];
  v6 = a3;
  v7 = a1;
  v8 = [v5 alloc];
  v10 = [v8 initWithObjectsAndKeys:{v6, *MEMORY[0x1E696A578], 0}];

  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF48] code:a2 userInfo:v10];
  [v7 setObject:v9 forKey:@"Error"];
}

void sub_19BFD79C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a61, 8);
  _Block_object_dispose(&a67, 8);
  _Block_object_dispose((v67 - 224), 8);
  _Block_object_dispose(&STACK[0x200], 8);
  _Block_object_dispose(&STACK[0x228], 8);
  _Block_object_dispose(&STACK[0x248], 8);
  _Block_object_dispose((v67 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5211(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void PLPreviewImageAndDurationForVideoAtPathWithPreferredTime(CMTime *a1, void *a2, void *a3, void *a4, void *a5)
{
  v51 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a5;
  if (v9 && ([MEMORY[0x1E696AC08] defaultManager], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "fileExistsAtPath:", v9), v11, (v12 & 1) != 0))
  {
    v13 = MEMORY[0x1E6987E28];
    v14 = [MEMORY[0x1E695DFF8] fileURLWithPath:v9 isDirectory:0];
    v15 = [v13 assetWithURL:v14];

    buf = 0uLL;
    v50 = 0;
    if (v15)
    {
      [v15 duration];
    }

    memset(&v47, 0, sizeof(v47));
    if (a1)
    {
      v47 = *a1;
    }

    else
    {
      CMTimeMakeWithSeconds(&v47, 0.0, 1);
    }

    if (BYTE12(buf))
    {
      if (v10 && (v10[2](v10, v15), (v16 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v17 = v16;
        [v16 sizeValue];
        v19 = v18;
        v21 = v20;
      }

      else
      {
        PLPhysicalScreenSize();
        v23 = v22;
        v25 = v24;
        PLPhysicalScreenScale();
        *&v26 = v26;
        v27 = *&v26;
        v28 = v23 * v27;
        v29 = v25 * v27;
        [PLManagedAsset dimensionsForAVAsset:v15];
        if (v28 <= v29)
        {
          v32 = v29;
        }

        else
        {
          v32 = v28;
        }

        v33 = v32;
        v34 = v30 / v31;
        v19 = v33;
        v35 = v34;
        if (v30 <= v31)
        {
          v21 = v33;
          v19 = rint(v35 * v19);
        }

        else
        {
          v21 = rint(v19 / v35);
        }
      }

      v36 = [objc_alloc(MEMORY[0x1E6987E68]) initWithAsset:v15];
      [v36 setAppliesPreferredTrackTransform:1];
      if (a3)
      {
        [v36 setMaximumSize:{v19, v21}];
        v45 = 0;
        v48 = v47;
        v37 = [MEMORY[0x1E69C0708] copyCGImageFromImageGenerator:v36 atTime:&v48 actualTime:0 error:&v45];
        v38 = v45;
        cf = v37;
        PFCGImageApplyTemporaryAVAssetImageGeneratorColorSpaceWorkaround();
        if (v38 || !cf)
        {
          v39 = PLAssetImportGetLog();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            LODWORD(v48.value) = 138412546;
            *(&v48.value + 4) = v9;
            LOWORD(v48.flags) = 2112;
            *(&v48.flags + 2) = v38;
            _os_log_impl(&dword_19BF1F000, v39, OS_LOG_TYPE_ERROR, "Could not generate preview image for %@. Error: %@", &v48, 0x16u);
          }
        }

        else
        {
          *a3 = DCIM_newPLImageWithCGImage();
        }

        if (cf)
        {
          CFRelease(cf);
        }
      }

      if (a4)
      {
        v40 = [MEMORY[0x1E69BF260] formatWithID:3039];
        [v40 scaledSizeForSourceSize:{v19, v21}];
        [v36 setMaximumSize:?];
        v44 = 0;
        v48 = v47;
        v41 = [MEMORY[0x1E69C0708] copyCGImageFromImageGenerator:v36 atTime:&v48 actualTime:0 error:&v44];
        v42 = v44;
        cf = v41;
        PFCGImageApplyTemporaryAVAssetImageGeneratorColorSpaceWorkaround();
        if (v42 || !cf)
        {
          v43 = PLAssetImportGetLog();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            LODWORD(v48.value) = 138412546;
            *(&v48.value + 4) = v9;
            LOWORD(v48.flags) = 2112;
            *(&v48.flags + 2) = v42;
            _os_log_impl(&dword_19BF1F000, v43, OS_LOG_TYPE_ERROR, "Could not generate thumbnail image for %@. Error: %@", &v48, 0x16u);
          }
        }

        else
        {
          *a4 = DCIM_newPLImageWithCGImage();
        }

        if (cf)
        {
          CFRelease(cf);
        }
      }
    }
  }

  else
  {
    v15 = PLAssetImportGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v9;
      _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "video path %@ for PLPreviewImageAndDurationForVideoAtPath does not exist", &buf, 0xCu);
    }
  }
}

id _photoIrisIndicatorFilePathForPhoto(void *a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = a1;
    v6 = [v4 stringWithFormat:@"%@%@.%@", @"iris_pending_", a2, @"irs"];
    v2 = [v5 stringByAppendingPathComponent:v6];
  }

  return v2;
}

void sub_19BFDC05C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0x19BFDBFB0);
  }

  _Unwind_Resume(exception_object);
}

void _PLPhotoLibraryAggregateSyncedContent(void *a1, int a2, uint64_t a3)
{
  v15[2] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E695D5E0];
  v6 = a1;
  v7 = +[PLManagedAsset entityName];
  v8 = [v5 fetchRequestWithEntityName:v7];

  v9 = MEMORY[0x1E696AB28];
  v10 = [MEMORY[0x1E69BF328] predicateForIncludeMask:objc_msgSend(MEMORY[0x1E69BF328] useIndex:{"maskForFinderSyncedAsset"), 1}];
  v15[0] = v10;
  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d", @"kind", a2];
  v15[1] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  v13 = [v9 andPredicateWithSubpredicates:v12];

  [v8 setPredicate:v13];
  [v8 setIncludesPendingChanges:1];
  [v8 setIncludesPropertyValues:0];
  v14 = [v6 countForFetchRequest:v8 error:0];

  PLSAggregateDictionarySetValueForScalarKey(a3, v14);
}

void sub_19BFE7308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _uuidFromPhotoIrisIndicatorFilePath(void *a1)
{
  v1 = [a1 lastPathComponent];
  v2 = [v1 stringByDeletingPathExtension];
  v3 = [v2 stringByReplacingOccurrencesOfString:@"iris_pending_" withString:&stru_1F0F06D80];

  return v3;
}

void PLImageWriterRemovePrivateKeysFromJobDictionary(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 allKeys];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * i);
        if ([v7 hasPrefix:@"job.private."])
        {
          [v1 removeObjectForKey:v7];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

__CFString *PFSemanticEnhanceSceneDescription(uint64_t a1)
{
  if ((a1 + 1) > 4)
  {
    return @"unknown";
  }

  else
  {
    return off_1E7565D28[a1 + 1];
  }
}

void PLIssueSandboxExtensionsForJobDictionary(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = PLImageWriterSourcePathKeys();
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = [v1 objectForKeyedSubscript:{v7, v11}];
        if (v8)
        {
          v9 = [v7 stringByAppendingString:@"_sandboxExtension"];
          v10 = PLGetSandboxExtensionToken();
          if (v10)
          {
            [v1 setObject:v10 forKeyedSubscript:v9];
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }
}

void PLConsumeSandboxExtensionsForJobDictionary(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = PLImageWriterSourcePathKeys();
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v8 = [v1 objectForKeyedSubscript:{v7, v12}];
        if (v8)
        {
          v9 = [v7 stringByAppendingString:@"_sandboxExtension"];
          v10 = [v1 objectForKeyedSubscript:v9];
          if (v10)
          {
            v11 = [objc_alloc(MEMORY[0x1E69BF2E8]) initFileURLWithPath:v8 sandboxExtensionToken:v10 consume:1];
            if (v11)
            {
              [v1 setObject:v11 forKeyedSubscript:v9];
            }
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }
}

void sub_19BFEC4C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5896(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id __copy_helper_block_e8_48n11_8_8_s0_t8w8(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  *(a1 + 48) = result;
  *(a1 + 56) = *(a2 + 56);
  return result;
}

void sub_19BFF103C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6141(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19BFF1918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19BFF1EB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t PLOrientationFromClockwiseRotation(uint64_t a1)
{
  if (a1 / -90 >= 0)
  {
    v1 = -((a1 / -90) & 3);
  }

  else
  {
    v1 = (a1 / 90) & 3;
  }

  return qword_19C60B690[v1 + 3];
}

uint64_t PLOrientationFromCounterClockwiseRotation(uint64_t a1)
{
  v1 = a1 / -90 + 4;
  v2 = v1 & 3;
  v4 = -v1;
  v3 = v4 < 0;
  v5 = v4 & 3;
  if (v3)
  {
    v6 = v2;
  }

  else
  {
    v6 = -v5;
  }

  return qword_19C60B690[v6 + 3];
}

uint64_t PLOrientationFromClockwiseRotationAndFlip(uint64_t a1, int a2, int a3)
{
  if (a1 / -90 >= 0)
  {
    v3 = -((a1 / -90) & 3);
  }

  else
  {
    v3 = (a1 / 90) & 3;
  }

  v4 = qword_19C60B690[v3 + 3];
  v5 = 2;
  if ((a2 & a3) != 0)
  {
    v5 = 3;
  }

  v6 = 4;
  if (!a3)
  {
    v6 = 1;
  }

  if (a2)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  return PLOrientationConcat(v4, v7);
}

uint64_t PLOrientationConcat(uint64_t a1, uint64_t a2)
{
  if ((a1 - 9) <= 0xFFFFFFFFFFFFFFF7)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"PLOrientation PLOrientationConcat(PLOrientation, PLOrientation)"}];
    [v5 handleFailureInFunction:v6 file:@"PLImageOrientation.m" lineNumber:126 description:@"Invalid orientation"];
  }

  if ((a2 - 9) <= 0xFFFFFFFFFFFFFFF7)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"PLOrientation PLOrientationConcat(PLOrientation, PLOrientation)"}];
    [v7 handleFailureInFunction:v8 file:@"PLImageOrientation.m" lineNumber:127 description:@"Invalid orientation"];
  }

  return PLOrientationConcat_m[8 * a1 - 9 + a2];
}

uint64_t PLOrientationToClockwiseRotation(uint64_t a1)
{
  if ((a1 - 3) > 5)
  {
    return 0;
  }

  else
  {
    return dword_19C60B6C8[a1 - 3];
  }
}

uint64_t PLOrientationInverse(uint64_t a1)
{
  v1 = 6;
  if (a1 != 8)
  {
    v1 = a1;
  }

  if (a1 == 6)
  {
    return 8;
  }

  else
  {
    return v1;
  }
}

uint64_t PLOrientationBetweenOrientations(uint64_t a1, uint64_t a2)
{
  if ((a1 - 9) <= 0xFFFFFFFFFFFFFFF7)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"PLOrientation PLOrientationBetweenOrientations(PLOrientation, PLOrientation)"}];
    [v5 handleFailureInFunction:v6 file:@"PLImageOrientation.m" lineNumber:144 description:@"Invalid orientation"];
  }

  if ((a2 - 9) <= 0xFFFFFFFFFFFFFFF7)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"PLOrientation PLOrientationBetweenOrientations(PLOrientation, PLOrientation)"}];
    [v7 handleFailureInFunction:v8 file:@"PLImageOrientation.m" lineNumber:145 description:@"Invalid orientation"];
  }

  return PLOrientationBetweenOrientations_m[8 * a1 - 9 + a2];
}

double PLOrientationTransformImageSize(uint64_t a1, double a2, double a3)
{
  if ((a1 - 5) >= 4)
  {
    return a2;
  }

  return a3;
}

double PLOrientationTransformImagePoint(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v5 = a3 - a5;
  if (a1 == 8)
  {
    v6 = v5;
  }

  else
  {
    v6 = a4;
  }

  if (a1 == 7)
  {
    v6 = a5;
  }

  result = a2 - a4;
  if (a1 == 6)
  {
    v8 = a5;
  }

  else
  {
    v8 = a4;
  }

  if (a1 == 5)
  {
    v8 = v5;
  }

  if (a1 <= 6)
  {
    v6 = v8;
  }

  if (a1 == 3)
  {
    a4 = result;
  }

  if (a1 != 2)
  {
    result = a4;
  }

  if (a1 > 4)
  {
    return v6;
  }

  return result;
}

CGFloat PLOrientationTransformImageRect(uint64_t a1, double a2, double a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v10 = a4;
  if (a1 <= 4)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        v39.origin.x = a4;
        v39.origin.y = a5;
        v39.size.width = a6;
        v39.size.height = a7;
        MinX = a2 - CGRectGetMaxX(v39);
      }

      else
      {
        if (a1 != 4)
        {
          return v10;
        }

        v25.origin.x = a4;
        v25.origin.y = a5;
        v25.size.width = a6;
        v25.size.height = a7;
        MinX = CGRectGetMinX(v25);
      }

      v40.origin.x = v10;
      v40.origin.y = a5;
      v40.size.width = a6;
      v40.size.height = a7;
      CGRectGetMaxY(v40);
      v41.origin.x = v10;
      v41.origin.y = a5;
      v41.size.width = a6;
      v41.size.height = a7;
      CGRectGetWidth(v41);
      v42.origin.x = v10;
      v42.origin.y = a5;
      v42.size.width = a6;
      v42.size.height = a7;
      CGRectGetHeight(v42);
      return MinX;
    }

    v30.origin.x = a4;
    v30.origin.y = a5;
    v30.size.width = a6;
    v30.size.height = a7;
    v19 = a2 - CGRectGetMaxX(v30);
    v31.origin.x = v10;
    v31.origin.y = a5;
    v31.size.width = a6;
    v31.size.height = a7;
    CGRectGetMinY(v31);
    v32.origin.x = v10;
    v32.origin.y = a5;
    v32.size.width = a6;
    v32.size.height = a7;
    CGRectGetWidth(v32);
    v33.origin.x = v10;
    v33.origin.y = a5;
    v33.size.width = a6;
    v33.size.height = a7;
    CGRectGetHeight(v33);
    return v19;
  }

  if (a1 <= 6)
  {
    v13 = a4;
    if (a1 == 5)
    {
      MinY = CGRectGetMinY(*&v13);
      v34.origin.x = v10;
      v34.origin.y = a5;
      v34.size.width = a6;
      v34.size.height = a7;
      CGRectGetMinX(v34);
    }

    else
    {
      MinY = CGRectGetMinY(*&v13);
      v22.origin.x = v10;
      v22.origin.y = a5;
      v22.size.width = a6;
      v22.size.height = a7;
      CGRectGetMaxX(v22);
    }

    v23.origin.x = v10;
    v23.origin.y = a5;
    v23.size.width = a6;
    v23.size.height = a7;
    CGRectGetHeight(v23);
    v24.origin.x = v10;
    v24.origin.y = a5;
    v24.size.width = a6;
    v24.size.height = a7;
    CGRectGetWidth(v24);
    return MinY;
  }

  if (a1 == 7)
  {
    v35.origin.x = a4;
    v35.origin.y = a5;
    v35.size.width = a6;
    v35.size.height = a7;
    v20 = a3 - CGRectGetMaxY(v35);
    v36.origin.x = v10;
    v36.origin.y = a5;
    v36.size.width = a6;
    v36.size.height = a7;
    CGRectGetMaxX(v36);
    v37.origin.x = v10;
    v37.origin.y = a5;
    v37.size.width = a6;
    v37.size.height = a7;
    CGRectGetHeight(v37);
    v38.origin.x = v10;
    v38.origin.y = a5;
    v38.size.width = a6;
    v38.size.height = a7;
    CGRectGetWidth(v38);
    return v20;
  }

  if (a1 == 8)
  {
    v26.origin.x = a4;
    v26.origin.y = a5;
    v26.size.width = a6;
    v26.size.height = a7;
    v19 = a3 - CGRectGetMaxY(v26);
    v27.origin.x = v10;
    v27.origin.y = a5;
    v27.size.width = a6;
    v27.size.height = a7;
    CGRectGetMinX(v27);
    v28.origin.x = v10;
    v28.origin.y = a5;
    v28.size.width = a6;
    v28.size.height = a7;
    CGRectGetHeight(v28);
    v29.origin.x = v10;
    v29.origin.y = a5;
    v29.size.width = a6;
    v29.size.height = a7;
    CGRectGetWidth(v29);
    return v19;
  }

  return v10;
}

uint64_t PLOrientationMakeTransformWithSize@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  if (result <= 4)
  {
    if (result == 2)
    {
      *a2 = 0xBFF0000000000000;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0x3FF0000000000000;
      *(a2 + 32) = a3;
      goto LABEL_13;
    }

    if (result != 3)
    {
      if (result == 4)
      {
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
        *a2 = 0x3FF0000000000000;
        *(a2 + 24) = xmmword_19C60AF40;
        *(a2 + 40) = a4;
        return result;
      }

      goto LABEL_14;
    }

    *a2 = 0xBFF0000000000000;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0xBFF0000000000000;
    *(a2 + 32) = a3;
    *(a2 + 40) = a4;
  }

  else
  {
    if (result <= 6)
    {
      if (result != 5)
      {
        *a2 = xmmword_19C60AF30;
        *(a2 + 24) = 0;
        *(a2 + 32) = 0;
        *(a2 + 16) = 0x3FF0000000000000;
        *(a2 + 40) = a3;
        return result;
      }

      *a2 = xmmword_19C60AF50;
      *(a2 + 16) = 0x3FF0000000000000;
      *(a2 + 24) = 0;
      goto LABEL_16;
    }

    if (result != 7)
    {
      if (result == 8)
      {
        *a2 = xmmword_19C60AF50;
        *(a2 + 16) = xmmword_19C60AF40;
        *(a2 + 32) = a4;
LABEL_13:
        *(a2 + 40) = 0;
        return result;
      }

LABEL_14:
      *a2 = 0x3FF0000000000000;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0x3FF0000000000000;
LABEL_16:
      *(a2 + 32) = 0;
      *(a2 + 40) = 0;
      return result;
    }

    *a2 = xmmword_19C60AF30;
    *(a2 + 16) = xmmword_19C60AF40;
    *(a2 + 32) = a4;
    *(a2 + 40) = a3;
  }

  return result;
}

__CFString *PLOrientationName(unint64_t a1)
{
  if (a1 >= 9)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *PLOrientationName(PLOrientation)"];
    [v4 handleFailureInFunction:v5 file:@"PLImageOrientation.m" lineNumber:275 description:@"Invalid orientation"];
  }

  v2 = PLOrientationName_names[a1];

  return v2;
}

BOOL _PLGetOrientationAndUntransformedSizeFromImageSource(CGImageSource *a1, uint64_t *a2, double *a3, void *a4)
{
  v8 = PLImageSourceCopyPropertiesAtIndexDecodingRawIfNecessary(a1, 0, 0);
  if (v8)
  {
    v9 = CGImageSourceGetType(a1);
    v10 = [(__CFDictionary *)v8 objectForKeyedSubscript:*MEMORY[0x1E696DE78]];
    if (!v10)
    {
      v11 = [(__CFDictionary *)v8 objectForKeyedSubscript:*MEMORY[0x1E696DF28]];
      v12 = [v11 objectForKeyedSubscript:*MEMORY[0x1E696DF58]];

      if (v12)
      {
        v10 = v12;
      }

      else
      {
        v10 = &unk_1F0FBADC8;
      }
    }

    v13 = [(__CFDictionary *)v8 objectForKeyedSubscript:*MEMORY[0x1E696DED8]];
    v14 = [(__CFDictionary *)v8 objectForKeyedSubscript:*MEMORY[0x1E696DEC8]];
    v15 = [v10 integerValue];
    v16 = [v13 integerValue];
    v17 = [v14 integerValue];

    if (a2)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v9 = 0;
    v15 = 0;
    v16 = *MEMORY[0x1E695F060];
    v17 = *(MEMORY[0x1E695F060] + 8);
    if (a2)
    {
LABEL_7:
      *a2 = v15;
    }
  }

  if (a3)
  {
    *a3 = v16;
    a3[1] = v17;
  }

  if (a4)
  {
    v18 = v9;
    *a4 = v9;
  }

  return v8 != 0;
}

BOOL PLGetOrientationAndUntransformedSizeFromImageData(void *a1, uint64_t *a2, double *a3, void *a4)
{
  v7 = a1;
  v8 = v7;
  if (v7 && (v9 = CGImageSourceCreateWithData(v7, 0)) != 0)
  {
    v10 = v9;
    v11 = _PLGetOrientationAndUntransformedSizeFromImageSource(v9, a2, a3, a4);
    CFRelease(v10);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

BOOL PLGetOrientationAndUntransformedSizeFromImageURL(void *a1, uint64_t *a2, double *a3, void *a4)
{
  v7 = a1;
  v8 = v7;
  if (v7 && (v9 = CGImageSourceCreateWithURL(v7, 0)) != 0)
  {
    v10 = v9;
    v11 = _PLGetOrientationAndUntransformedSizeFromImageSource(v9, a2, a3, a4);
    CFRelease(v10);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

double PLRectGetCenter(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  MidX = CGRectGetMidX(*&a1);
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  CGRectGetMidY(v10);
  return MidX;
}

void PAConvertDGCropRectToCICropRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, CGFloat a6, CGFloat a7)
{
  v13 = a5 * 3.14159265 / 180.0;
  v20 = *(MEMORY[0x1E695EFD0] + 16);
  *&v21.a = *MEMORY[0x1E695EFD0];
  *&v21.c = v20;
  *&v21.tx = *(MEMORY[0x1E695EFD0] + 32);
  v24.origin.x = 0.0;
  v24.origin.y = 0.0;
  v24.size.width = a6;
  v24.size.height = a7;
  MidX = CGRectGetMidX(v24);
  v25.origin.x = 0.0;
  v25.origin.y = 0.0;
  v25.size.width = a6;
  v25.size.height = a7;
  MidY = CGRectGetMidY(v25);
  *&v23.a = *&v21.a;
  *&v23.c = v20;
  *&v23.tx = *&v21.tx;
  CGAffineTransformTranslate(&v21, &v23, MidX, MidY);
  v22 = v21;
  CGAffineTransformRotate(&v23, &v22, v13);
  v21 = v23;
  v26.origin.x = 0.0;
  v26.origin.y = 0.0;
  v26.size.width = a6;
  v26.size.height = a7;
  v16 = -CGRectGetMidX(v26);
  v27.origin.x = 0.0;
  v27.origin.y = 0.0;
  v27.size.width = a6;
  v27.size.height = a7;
  v17 = CGRectGetMidY(v27);
  v22 = v21;
  CGAffineTransformTranslate(&v23, &v22, v16, -v17);
  v21 = v23;
  v28.origin.x = 0.0;
  v28.origin.y = 0.0;
  v28.size.width = a6;
  v28.size.height = a7;
  v29 = CGRectApplyAffineTransform(v28, &v23);
  v30 = CGRectIntegral(v29);
  x = v30.origin.x;
  y = v30.origin.y;
  v30.origin.x = a1;
  v30.origin.y = a2;
  v30.size.width = a3;
  v30.size.height = a4;
  CGRectOffset(v30, x, y);
}

void sub_19BFF4068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6382(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19BFF4950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_19BFF4CFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void PLPrintSymbolicStackTrace()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x1E696AF00] callStackSymbols];
  if ([v1 count])
  {
    v2 = [v1 subarrayWithRange:{1, objc_msgSend(v1, "count") - 1}];

    v1 = v2;
  }

  v3 = [v1 componentsJoinedByString:@"\n"];
  NSLog(&stru_1F0F07100.isa, v3);

  objc_autoreleasePoolPop(v0);
}

id _prettyPrintDictionary(void *a1, int a2)
{
  v3 = a1;
  v4 = [MEMORY[0x1E696AD60] string];
  if (a2 >= 1)
  {
    v5 = a2;
    do
    {
      [v4 appendString:@"  "];
      --v5;
    }

    while (v5);
  }

  v6 = [MEMORY[0x1E696AD60] string];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = ___prettyPrintDictionary_block_invoke;
  v12[3] = &unk_1E7566098;
  v7 = v6;
  v13 = v7;
  v14 = v4;
  v15 = a2;
  v8 = v4;
  [v3 enumerateKeysAndObjectsUsingBlock:v12];
  v9 = v14;
  v10 = v7;

  return v7;
}

void ___prettyPrintDictionary_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = _prettyPrintDictionary(v5, (*(a1 + 48) + 1));
    [v6 appendFormat:@"%@%@ : {\n%@%@}", v7, v12, v8, *(a1 + 40)];
LABEL_5:

    goto LABEL_7;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  if (isKindOfClass)
  {
    v8 = _prettyPrintArray(v5, *(a1 + 48) + 1);
    [v10 appendFormat:@"%@%@ : [\n%@%@]", v11, v12, v8, *(a1 + 40)];
    goto LABEL_5;
  }

  [v10 appendFormat:@"%@%@ : %@", v11, v12, v5];
LABEL_7:
  [*(a1 + 32) appendString:@"\n"];
}

id _prettyPrintArray(void *a1, int a2)
{
  v3 = a1;
  v4 = [MEMORY[0x1E696AD60] string];
  if (a2 >= 1)
  {
    v5 = a2;
    do
    {
      [v4 appendString:@"  "];
      --v5;
    }

    while (v5);
  }

  v6 = [MEMORY[0x1E696AD60] string];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = ___prettyPrintArray_block_invoke;
  v12[3] = &unk_1E75660C0;
  v7 = v6;
  v13 = v7;
  v14 = v4;
  v15 = a2;
  v8 = v4;
  [v3 enumerateObjectsUsingBlock:v12];
  v9 = v14;
  v10 = v7;

  return v7;
}

void ___prettyPrintArray_block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = _prettyPrintDictionary(v9, (*(a1 + 48) + 1));
    [v3 appendFormat:@"%@ : {\n%@%@}", v4, v5, *(a1 + 40)];
LABEL_5:

    goto LABEL_7;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  if (isKindOfClass)
  {
    v5 = _prettyPrintArray(v9, (*(a1 + 48) + 1));
    [v7 appendFormat:@"%@ : [\n%@%@]", v8, v5, *(a1 + 40)];
    goto LABEL_5;
  }

  [v7 appendFormat:@"%@ : %@", *(a1 + 40), v9];
LABEL_7:
  [*(a1 + 32) appendString:@"\n"];
}

void sub_19BFFC138(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, void *a38, os_signpost_id_t a39, os_activity_scope_state_s a40, SEL sel, __int128 buf)
{
  if (a37 == 1)
  {
    os_activity_scope_leave(&a40);
  }

  if (a39)
  {
    v43 = PLRequestGetLog();
    v44 = v43;
    if (a39 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v43))
    {
      Name = sel_getName(sel);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v44, OS_SIGNPOST_INTERVAL_END, a39, "Received batchSaveAssets:reply: with %d jobs", "%{public}s", &buf, 0xCu);
    }
  }

  _Unwind_Resume(a1);
}

void sub_19BFFD0E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7403(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19BFFE704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _BOOLForKey(void *a1, uint64_t a2)
{
  v2 = [a1 objectForKeyedSubscript:a2];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id _dateForKey(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [a1 objectForKeyedSubscript:a2];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
LABEL_5:
    v8 = v7;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v5 dateFromString:v6];
    goto LABEL_5;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

id _stringForKey(void *a1, uint64_t a2)
{
  v2 = [a1 objectForKeyedSubscript:a2];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = [v2 description];
  }

  v4 = v3;

  return v4;
}

id _numberForKey(void *a1, uint64_t a2)
{
  v2 = [a1 objectForKeyedSubscript:a2];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = objc_alloc_init(MEMORY[0x1E696ADA0]);
      v5 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:@"en_US"];
      [v4 setLocale:v5];
      [v4 setNumberStyle:1];
      [v4 setUsesGroupingSeparator:0];
      v3 = [v4 numberFromString:v2];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

void sub_19C003DCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7937(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C00559C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 192), 8);
  _Unwind_Resume(a1);
}

void sub_19C0062F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

void sub_19C00945C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void PLLibraryScopeAssetSetAddToSharedZoneState(int a1, void *a2)
{
  v5 = a2;
  v3 = [v5 libraryScopeShareState] & 0xFFFFFFFFFF7FFFFFLL;
  v4 = 0x800000;
  if (!a1)
  {
    v4 = 0;
  }

  [v5 setLibraryScopeShareState:v3 | v4];
}

void sub_19C00AB14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, id location, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  objc_destroyWeak((v53 + 64));
  _Block_object_dispose(&a53, 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void PLLibraryScopeAssetSetSuggestedByClientType(int a1, void *a2)
{
  v3 = a2;
  [v3 setLibraryScopeShareState:{_PLLibraryScopeAssetSetSuggestedByClientType(a1, objc_msgSend(v3, "libraryScopeShareState"))}];
}

uint64_t _PLLibraryScopeAssetSetSuggestedByClientType(int a1, uint64_t a2)
{
  v2 = a2 | 4;
  v3 = a2 | 8;
  v4 = a2 | 0x10;
  if (a1 != 4)
  {
    v4 = a2;
  }

  if (a1 != 3)
  {
    v3 = v4;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  v5 = a2 | 1;
  v6 = a2 | 2;
  if (a1 != 1)
  {
    v6 = a2;
  }

  if (a1)
  {
    v5 = v6;
  }

  if (a1 <= 1)
  {
    return v5;
  }

  else
  {
    return v2;
  }
}

void sub_19C00E5B0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t PLLibraryScopeAssetGetSuggestedByClientTypeFromShareStateValue(char a1)
{
  v1 = (a1 & 1) - 1;
  if ((a1 & 2) != 0)
  {
    v1 = 1;
  }

  if ((a1 & 4) != 0)
  {
    v1 = 2;
  }

  if ((a1 & 8) != 0)
  {
    v1 = 3;
  }

  if ((a1 & 0x10) != 0)
  {
    return 4;
  }

  else
  {
    return v1;
  }
}

unint64_t _PLLibraryScopeAssetSetCameraRejectedState(int a1, uint64_t a2)
{
  v2 = 0x10000;
  if (!a1)
  {
    v2 = 0;
  }

  return a2 & 0xFFFFFFFFFFFEFFFFLL | v2;
}

void PLLibraryScopeAssetSetCameraRejectedState(int a1, void *a2)
{
  v5 = a2;
  v3 = [v5 libraryScopeShareState] & 0xFFFFFFFFFFFEFFFFLL;
  v4 = 0x10000;
  if (!a1)
  {
    v4 = 0;
  }

  [v5 setLibraryScopeShareState:v3 | v4];
}

unint64_t _PLLibraryScopeAssetSetPhotosSuggesterRejectedState(int a1, uint64_t a2)
{
  v2 = 0x20000;
  if (!a1)
  {
    v2 = 0;
  }

  return a2 & 0xFFFFFFFFFFFDFFFFLL | v2;
}

void PLLibraryScopeAssetSetPhotosSuggesterRejectedState(int a1, void *a2)
{
  v5 = a2;
  v3 = [v5 libraryScopeShareState] & 0xFFFFFFFFFFFDFFFFLL;
  v4 = 0x20000;
  if (!a1)
  {
    v4 = 0;
  }

  [v5 setLibraryScopeShareState:v3 | v4];
}

unint64_t _PLLibraryScopeAssetSetUserManuallyAddedState(int a1, uint64_t a2)
{
  v2 = 0x200000;
  if (!a1)
  {
    v2 = 0;
  }

  return a2 & 0xFFFFFFFFFFDFFFFFLL | v2;
}

void PLLibraryScopeAssetSetUserManuallyAddedState(int a1, void *a2)
{
  v5 = a2;
  v3 = [v5 libraryScopeShareState] & 0xFFFFFFFFFFDFFFFFLL;
  v4 = 0x200000;
  if (!a1)
  {
    v4 = 0;
  }

  [v5 setLibraryScopeShareState:v3 | v4];
}

unint64_t _PLLibraryScopeAssetSetUserManuallyRejectedState(int a1, uint64_t a2)
{
  v2 = 0x400000;
  if (!a1)
  {
    v2 = 0;
  }

  return a2 & 0xFFFFFFFFFFBFFFFFLL | v2;
}

void PLLibraryScopeAssetSetUserManuallyRejectedState(int a1, void *a2)
{
  v5 = a2;
  v3 = [v5 libraryScopeShareState] & 0xFFFFFFFFFFBFFFFFLL;
  v4 = 0x400000;
  if (!a1)
  {
    v4 = 0;
  }

  [v5 setLibraryScopeShareState:v3 | v4];
}

unint64_t _PLLibraryScopeAssetSetAddToSharedZoneState(int a1, uint64_t a2)
{
  v2 = 0x800000;
  if (!a1)
  {
    v2 = 0;
  }

  return a2 & 0xFFFFFFFFFF7FFFFFLL | v2;
}

uint64_t PLLibraryScopeAssetGetSyncableSharingStateValueFromLocalShareStateValue(int a1)
{
  if ((a1 & 0x800000) == 0)
  {
    return *&a1 & 0x400000;
  }

  v2 = (a1 & 1) - 1;
  if ((a1 & 2) != 0)
  {
    v2 = 1;
  }

  if ((a1 & 4) != 0)
  {
    v2 = 2;
  }

  if ((a1 & 8) != 0)
  {
    v2 = 3;
  }

  if ((a1 & 0x10) != 0)
  {
    v2 = 4;
  }

  if (v2 > 4)
  {
    v3 = 0;
  }

  else
  {
    v3 = qword_19C60B6E0[v2];
  }

  return v3 | *&a1 & 0x210000;
}

void PLLibraryScopeAssetSetLocalSharingStateValueFromSyncableShareStateValue(int a1, void *a2)
{
  v4 = a2;
  v3 = (a1 & 1) - 1;
  if ((a1 & 2) != 0)
  {
    v3 = 1;
  }

  if ((a1 & 4) != 0)
  {
    v3 = 2;
  }

  if ((a1 & 8) != 0)
  {
    v3 = 3;
  }

  if ((a1 & 0x10) != 0)
  {
    v3 = 4;
  }

  if (v3 <= 4)
  {
    PLLibraryScopeAssetSetSuggestedByClientType(v3, v4);
    if ((a1 & 0x10000) == 0)
    {
LABEL_11:
      if ((a1 & 0x200000) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_19;
    }
  }

  else if ((a1 & 0x10000) == 0)
  {
    goto LABEL_11;
  }

  PLLibraryScopeAssetSetCameraRejectedState(1, v4);
  if ((a1 & 0x200000) == 0)
  {
LABEL_12:
    if ((a1 & 0x400000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_19:
  PLLibraryScopeAssetSetUserManuallyAddedState(1, v4);
  if ((a1 & 0x400000) != 0)
  {
LABEL_13:
    PLLibraryScopeAssetSetUserManuallyRejectedState(1, v4);
  }

LABEL_14:
}

void PLLibraryScopeAssetRemoveSuggestedByClientType(void *a1)
{
  v1 = a1;
  [v1 setLibraryScopeShareState:{objc_msgSend(v1, "libraryScopeShareState") & 0xFFFFFFFFFFFFFFE0}];
}

id PLManagedAssetPredicateToFetchAllAssetsInLibraryScopePreviewState()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v1 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"libraryScopeShareState", 1];
  [v0 addObject:v1];

  v2 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"libraryScopeShareState", 2];
  [v0 addObject:v2];

  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"libraryScopeShareState", 4];
  [v0 addObject:v3];

  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"libraryScopeShareState", 8];
  [v0 addObject:v4];

  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"libraryScopeShareState", 16];
  [v0 addObject:v5];

  v6 = [objc_alloc(MEMORY[0x1E696AB28]) initWithType:2 subpredicates:v0];

  return v6;
}

id PLManagedAssetPredicateToFetchAssetsSuggestedForSharing()
{
  v8[4] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E696AB28];
  v1 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"libraryScopeShareState", 2];
  v8[0] = v1;
  v2 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"libraryScopeShareState", 16];
  v8[1] = v2;
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"libraryScopeShareState", 65538];
  v8[2] = v3;
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"libraryScopeShareState", 65552];
  v8[3] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:4];
  v6 = [v0 orPredicateWithSubpredicates:v5];

  return v6;
}

uint64_t PLManagedAssetInLibraryScopePreviewStateSuggestedForSharingFromShareStateValue(uint64_t a1)
{
  result = 1;
  if (a1 <= 65537)
  {
    if (a1 == 2 || a1 == 16)
    {
      return result;
    }

    return 0;
  }

  if (a1 != 65538 && a1 != 65552)
  {
    return 0;
  }

  return result;
}

void sub_19C00FD28(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 160), 8);
  _Block_object_dispose((v1 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8546(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t PSIRowIDCompare(unint64_t a1, unint64_t a2)
{
  if (a1 < a2)
  {
    return -1;
  }

  else
  {
    return a1 > a2;
  }
}

__int16 PLResourceReciprocalImageScale@<H0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  v4 = a4 * a3;
  if (a2 * a1 >= 1)
  {
    _VF = __OFSUB__(v4, 1);
    _NF = (v4 - 1) < 0;
  }

  else
  {
    _VF = 0;
    _NF = 1;
  }

  if (_NF != _VF)
  {
    result = 5120;
  }

  else
  {
    _S0 = 1.0 / (v4 / (a2 * a1));
    __asm { FCVT            H0, S0 }
  }

  if (fabsl(*&result) == COERCE_SHORT_FLOAT(31744))
  {
    *&result = COERCE_SHORT_FLOAT(31743);
  }

  return result;
}

uint64_t PLIsResourceMarkedFullSizeFromRecipeID(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  v1 = [PLResourceRecipe recipeFromID:a1];
  v2 = [v1 isMarkedFullSize];

  return v2;
}

uint64_t PLQualitySortValueFromResourceDimensions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v6 = a5 | 2;
  if (!a6)
  {
    v6 = a5;
  }

  return v6 | ((fmin(sqrt((a4 * a3)) / sqrt((a2 * a1)), 1.0) * 32767.0) << 16);
}

float PLResourceImageScaleFromReciprocolScale(uint64_t a1, uint64_t a2, double *a3, __n128 _Q0)
{
  __asm { FCVT            D0, H0 }

  v9 = sqrt(_D0);
  v10 = round(a1 / v9);
  v11 = round(a2 / v9);
  if (a3)
  {
    *a3 = v10;
    a3[1] = v11;
  }

  return v10 * v11 / (a2 * a1);
}

__CFString *PLVideoQualityLevelDescription(unsigned int a1)
{
  if (a1 > 3)
  {
    return @"large";
  }

  else
  {
    return off_1E7566390[a1];
  }
}

__CFString *PLResourceTypeName(unsigned int a1)
{
  if (a1 > 0x1F)
  {
    return @"invalid";
  }

  else
  {
    return off_1E75663B0[a1];
  }
}

__CFString *PLResourceVersionName(unsigned int a1)
{
  if (a1 > 2)
  {
    return @"cur";
  }

  else
  {
    return off_1E75664B0[a1];
  }
}

id PLResourceLocalAvailabilityName(int a1)
{
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = v2;
  if (a1 == 0x7FFF)
  {
    v4 = @"avail (req)";
  }

  else if (a1 == 0x8000)
  {
    v4 = @"not-possible";
  }

  else if (a1 == 0xFFFF)
  {
    v4 = @"none";
  }

  else
  {
    if ((a1 & 1) == 0)
    {
      goto LABEL_10;
    }

    v4 = @"local";
  }

  [v2 addObject:v4];
LABEL_10:
  v5 = [v3 componentsJoinedByString:@"|"];

  return v5;
}

id PLResourceLocalAvailabilityTargetName(unsigned __int16 a1)
{
  v1 = a1;
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = v2;
  if (v1 > 32766)
  {
    if (v1 == 0x7FFF)
    {
      v4 = @"avail (req)";
      goto LABEL_12;
    }

    if (v1 == 0xFFFF)
    {
      v4 = @"none";
      goto LABEL_12;
    }
  }

  else
  {
    if (!v1)
    {
      v4 = @"neutral";
      goto LABEL_12;
    }

    if (v1 == 1)
    {
      v4 = @"avail";
      goto LABEL_12;
    }
  }

  if ((v1 & 1) == 0)
  {
    goto LABEL_13;
  }

  v4 = @"local";
LABEL_12:
  [v2 addObject:v4];
LABEL_13:
  v5 = [v3 componentsJoinedByString:@"|"];

  return v5;
}

__CFString *PLResourcePTPTrashedStateName(char a1)
{
  if (a1)
  {
    return @"trashed";
  }

  else
  {
    return @"untrashed";
  }
}

__CFString *PLResourceRemoteAvailabilityName(int a1)
{
  v1 = @"missing";
  if (a1 == 1)
  {
    v1 = @"available";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"unavailable";
  }
}

uint64_t PLResourceIdentityIsEqual(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 == v4)
  {
LABEL_8:
    v6 = 1;
    goto LABEL_10;
  }

  v6 = 0;
  if (v3 && v4)
  {
    v7 = [v3 resourceType];
    if (v7 != [v5 resourceType] || (v8 = objc_msgSend(v3, "version"), v8 != objc_msgSend(v5, "version")) || (v9 = objc_msgSend(v3, "recipeID"), v9 != objc_msgSend(v5, "recipeID")) || (objc_msgSend(v3, "uniformTypeIdentifier"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "uniformTypeIdentifier"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v10, "isEqualToUniformTypeIdentifier:", v11), v11, v10, (v12 & 1) == 0))
    {
      v6 = 0;
      goto LABEL_10;
    }

    goto LABEL_8;
  }

LABEL_10:

  return v6;
}

uint64_t PLResourceDataStoreKeyIsEqual(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = 0;
  if (v3 && v4)
  {
    if (v3 == v4)
    {
      v6 = 1;
    }

    else
    {
      v7 = [v3 keyData];
      v8 = [v5 keyData];
      v6 = [v7 isEqualToData:v8];
    }
  }

  return v6;
}

id PLResourceIdentityShortDescription(void *a1)
{
  v1 = a1;
  v2 = +[PLResourceRecipe recipeFromID:](PLResourceRecipe, "recipeFromID:", [v1 recipeID]);
  v3 = MEMORY[0x1E696AEC0];
  v4 = [v1 resourceType];
  if (v4 > 0x1F)
  {
    v5 = @"invalid";
  }

  else
  {
    v5 = off_1E75663B0[v4];
  }

  v6 = v5;
  v7 = [v1 version];
  if (v7 > 2)
  {
    v8 = @"cur";
  }

  else
  {
    v8 = off_1E75664B0[v7];
  }

  v9 = [v1 uniformTypeIdentifier];

  v10 = [v9 identifier];
  v11 = [v3 stringWithFormat:@"type: %@, version: %@, uti: %@, recipe: %@", v6, v8, v10, v2];

  return v11;
}

uint64_t PLResourceIsDerivedFromDeferredProcessingPreviewImage(unsigned int a1, int a2)
{
  if (a2)
  {
    v2 = HIWORD(a1) - 3 >= 2u;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  if (a1 - 65941 > 0xA || ((1 << (a1 + 107)) & 0x405) == 0)
  {
    return v3;
  }

  else
  {
    return 1;
  }
}

uint64_t PLResourceOrientationFromResourceInfo(int a1, uint64_t a2, int a3, unsigned int a4, unsigned int a5, unsigned __int8 a6)
{
  if ((a1 & 0xFFFFFFFB) != 0)
  {
    return 1;
  }

  if (a2)
  {
    v7 = [PLResourceRecipe recipeFromID:a2];
    v8 = [v7 orientation];

    return v8;
  }

  else if (((a3 == 0) & a6) != 0)
  {
    return a5;
  }

  else
  {
    return a4;
  }
}

BOOL PLDataStoreHasClassID(_BOOL8 result, int a2)
{
  if (result)
  {
    return [objc_opt_class() storeClassID] == a2;
  }

  return result;
}

void PLUnregisterDataStoresForLibraryID(void *a1)
{
  if (a1)
  {
    v1 = a1;
    os_unfair_lock_lock(&s_lock);
    [s_dataStoresByClassIDByLibraryID removeObjectForKey:v1];

    os_unfair_lock_unlock(&s_lock);
  }
}

uint64_t __Block_byref_object_copy__9040(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t _gatingKeyForVariationType(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    v1 = 0;
  }

  else
  {
    v1 = off_1E7566560[a1 - 1];
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-gating", v1];
}

void sub_19C014EEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9129(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C0154E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL PLIsValidPhotoLibraryIdentifierContainerIdentifier(void *a1)
{
  v1 = [a1 componentsSeparatedByString:@"."];
  v2 = [v1 count] > 1;

  return v2;
}

__CFString *PLPhotoLibraryIdentifierEncodeArchivalStringRepresentationFromIdentifierProperties(void *a1, void *a2, uint64_t a3)
{
  v11[4] = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  if (PLIsValidUUIDString() && PLIsValidPhotoLibraryIdentifierContainerIdentifier(v6))
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", a3, @"PLI", v5, v6];
    v11[3] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:4];

    v9 = [v8 componentsJoinedByString:@"/"];
  }

  else
  {
    v9 = @"INVALID/PLI";
  }

  return v9;
}

uint64_t PLPhotoLibraryIdentifierDecodeIdentifierPropertiesFromArchivalStringRepresentation(void *a1, void *a2, void *a3, uint64_t *a4)
{
  v7 = [a1 componentsSeparatedByString:@"/"];
  v8 = [v7 firstObject];
  if ([v8 isEqualToString:@"PLI"] && objc_msgSend(v7, "count") >= 4)
  {
    v9 = [v7 objectAtIndexedSubscript:1];
    v10 = [v7 objectAtIndexedSubscript:2];
    v11 = [v7 objectAtIndexedSubscript:3];
    v12 = [v11 integerValue];
    if (PLIsValidUUIDString())
    {
      v13 = 0;
      if (PLIsValidPhotoLibraryIdentifierContainerIdentifier(v10) && (v12 - 1) <= 2)
      {
        if (a2)
        {
          v14 = v9;
          *a2 = v9;
        }

        if (a3)
        {
          v15 = v10;
          *a3 = v10;
        }

        if (a4)
        {
          *a4 = v12;
        }

        v13 = 1;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void fileTTRForUnimplementedSelector(const char *a1)
{
  v2 = MEMORY[0x1E696AEC0];
  v10 = NSStringFromSelector(a1);
  v3 = [v2 stringWithFormat:@"iCPL local mode has detected an unimplemented selector, please file a radar for the team to investigate: %@", v10];
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(a1);
  v6 = [v4 stringWithFormat:@"iCPL local mode unimplemented selector: %@", v5];
  v7 = MEMORY[0x1E696AEC0];
  v8 = [MEMORY[0x1E696AF00] callStackSymbols];
  v9 = [v7 stringWithFormat:@"Called by stack: %@", v8];
  [PLDiagnostics fileRadarUserNotificationWithHeader:@"iCPL local mode error" message:v3 radarTitle:v6 radarDescription:v9];
}

void sub_19C01CBA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9793(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C01D4D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C01E44C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

id _PLAllowedForCameraPreviewWellPredicate()
{
  if (_PLAllowedForCameraPreviewWellPredicate_s_onceToken != -1)
  {
    dispatch_once(&_PLAllowedForCameraPreviewWellPredicate_s_onceToken, &__block_literal_global_10027);
  }

  v1 = _PLAllowedForCameraPreviewWellPredicate_s_allowedPredicate;

  return v1;
}

id _PLCameraPreviewWellAssetFetchRequest()
{
  v5[11] = *MEMORY[0x1E69E9840];
  v0 = +[PLManagedAsset fetchRequest];
  v1 = _PLAllowedForCameraPreviewWellPredicate();
  [v0 setPredicate:v1];

  v2 = _PLAllowedForCameraPreviewSortDescriptors();
  [v0 setSortDescriptors:v2];

  v5[0] = @"uuid";
  v5[1] = @"sortToken";
  v5[2] = @"addedDate";
  v5[3] = @"directory";
  v5[4] = @"filename";
  v5[5] = @"hidden";
  v5[6] = @"avalanchePickType";
  v5[7] = @"visibilityState";
  v5[8] = @"savedAssetType";
  v5[9] = @"trashedState";
  v5[10] = @"bundleScope";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:11];
  [v0 setPropertiesToFetch:v3];

  [v0 setResultType:2];
  [v0 setReturnsObjectsAsFaults:0];
  [v0 setFetchLimit:1];

  return v0;
}

id _PLAllowedForCameraPreviewSortDescriptors()
{
  if (_PLAllowedForCameraPreviewSortDescriptors_s_onceToken != -1)
  {
    dispatch_once(&_PLAllowedForCameraPreviewSortDescriptors_s_onceToken, &__block_literal_global_47);
  }

  v1 = _PLAllowedForCameraPreviewSortDescriptors_s_descriptors;

  return v1;
}

uint64_t PLCameraPreviewWellSupportedOnCurrentDevice()
{
  v0 = [MEMORY[0x1E69BF200] defaultDeviceConfiguration];
  v1 = [v0 shouldUseNanoThumbnailFormats];

  return v1 ^ 1u;
}

uint64_t PLAssetIsAllowedForCameraPreviewWell(void *a1)
{
  v1 = a1;
  v2 = _PLAllowedForCameraPreviewWellPredicate();
  v3 = [v2 evaluateWithObject:v1];

  return v3;
}

id PLCameraPreviewWellAssetUUIDFromPersistedFile()
{
  v17 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E69BF170] cameraPreviewWellImageFileURL];
  v14 = 0;
  v1 = *MEMORY[0x1E695DB20];
  v13 = 0;
  v2 = [v0 getResourceValue:&v14 forKey:v1 error:&v13];
  v3 = v14;
  v4 = v13;
  v5 = v4;
  if (v2)
  {
    v6 = [MEMORY[0x1E69BF230] persistedAttributesForFileAtURL:v0];
    v7 = [v6 stringForKey:@"com.apple.assetsd.thumbnailCameraPreviewImageAssetID"];
    goto LABEL_11;
  }

  v8 = [v4 userInfo];
  v6 = [v8 objectForKey:*MEMORY[0x1E696AA08]];

  v9 = [v6 domain];
  if (![v9 isEqualToString:*MEMORY[0x1E696A798]])
  {

    goto LABEL_7;
  }

  v10 = [v6 code];

  if (v10 != 2)
  {
LABEL_7:
    v11 = PLThumbnailsGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = v5;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "couldn't open camera preview well image: %@", buf, 0xCu);
    }
  }

  v7 = 0;
LABEL_11:

  return v7;
}

void sub_19C020F94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10378(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C021ACC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose((v24 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_19C024F48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_19C025CBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t PLSearchIndexObjectIDRequiresRebuildPass(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 entity];
  v6 = [v5 name];
  v7 = PLSearchIndexingEntityForEntityName(v6);

  v8 = [v4 globalValues];
  v9 = [v8 rebuildWorkIsRequiredForEntity:v7];

  if (v9)
  {
    v10 = [v4 globalValues];
    v11 = [v10 searchIndexRebuildResumeObjectID];

    if (v11)
    {
      v9 = [v3 compare:v11] != 1;
    }

    else
    {
      v9 = 1;
    }
  }

  return v9;
}

void sub_19C02709C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C02719C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void PLGenericImageNameForExtension(void *a1, __CFString **a2, void *a3)
{
  v11 = a1;
  v5 = [PLPhotoLibrary isVideoFileExtension:v11];
  v6 = [PLPhotoLibrary isImageFileExtension:v11];
  v7 = [PLPhotoLibrary isRawImageFileExtension:v11];
  v8 = [PLPhotoLibrary isAudioFileExtension:v11];
  if (a2)
  {
    v9 = @"PLUnknownOther";
    if (v8)
    {
      v9 = @"PLUnknownAudio";
    }

    if (v5)
    {
      v9 = @"PLUnknownVideo";
    }

    if (v7 || v6)
    {
      v9 = @"PLUnknownImage";
    }

    *a2 = v9;
  }

  if (a3)
  {
    if (v7)
    {
      *a3 = @"RAW";
    }

    else
    {
      v10 = [v11 uppercaseString];
      *a3 = v10;
    }
  }
}

void sub_19C029E78(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    *(*(v2 + 32) + v3) = 0;
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_19C02A378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C02A6F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10704(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C02ABC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v11 = objc_begin_catch(exception_object);
      *(*(*(v10 + 56) + 8) + 24) = 1;
      v12 = objc_alloc(MEMORY[0x1E696ABC0]);
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:v11];
      v14 = [v12 initWithDomain:*MEMORY[0x1E69BFF48] code:-3002 userInfo:v13];
      v15 = *(*(v10 + 64) + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = v14;

      objc_end_catch();
      JUMPOUT(0x19C02AB68);
    }

    objc_begin_catch(exception_object);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_19C02BF1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C02D008(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void PLWriteImageWithEmbeddedThumbnailToPath(uint64_t a1, void *a2, void *a3)
{
  v12 = a3;
  v4 = a2;
  v5 = DCIM_CGImageRefFromPLImage();
  v6 = NewJPEGDataFromImageRef(v5);
  v7 = DCIM_CGImageRefFromPLImage();

  v8 = NewJPEGDataFromImageRef(v7);
  v9 = [v12 stringByDeletingLastPathComponent];
  v10 = [MEMORY[0x1E696AC08] defaultManager];
  if (([v10 fileExistsAtPath:v9] & 1) == 0)
  {
    [v10 createDirectoryAtPath:v9 withIntermediateDirectories:1 attributes:0 error:0];
  }

  if ([v6 length])
  {
    v11 = [MEMORY[0x1E695DF20] dictionary];
    CGImageWriteEXIFJPEGToPath();
  }

  else
  {
    NSLog(&cfstr_CouldNotWrite0.isa, v12);
  }
}

__CFData *NewJPEGDataFromImageRef(CGImage *a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF88]);
  v3 = [*MEMORY[0x1E6982E58] identifier];
  v4 = CGImageDestinationCreateWithData(v2, v3, 1uLL, 0);

  CGImageDestinationAddImage(v4, a1, 0);
  CGImageDestinationFinalize(v4);
  CFRelease(v4);

  return v2;
}

void PLWriteThumbnailDataToPath(const void *a1, int a2, uint64_t a3, void *a4)
{
  v7 = a4;
  if (a1 && a3)
  {
    v18 = v7;
    v8 = [MEMORY[0x1E69BF260] formatWithID:a3];
    [v8 size];
    v10 = v9;
    v12 = v11;
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v14 = CGDataProviderCreateWithData(0, a1, (v10 * v12 + v10 * v12), 0);
    v15 = CGImageCreate(v10, v12, 5uLL, 0x10uLL, (a2 / v12), DeviceRGB, 0x1006u, v14, 0, 0, kCGRenderingIntentDefault);
    if (v15)
    {
      v16 = v15;
      v17 = PLJPEGDataFromImage(v15, 1, 0, 0.899999976);
      if ([v17 length])
      {
        [v17 writeToFile:v18 options:1073741825 error:0];
      }

      CFRelease(v16);
    }

    else
    {
      NSLog(&cfstr_CouldNotCreate.isa, a3);
    }

    CGDataProviderRelease(v14);
    CGColorSpaceRelease(DeviceRGB);

    v7 = v18;
  }
}

void sub_19C02E510(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_19C02E9A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id __CPLSystemLibraryOSLogDomain()
{
  if (__CPLSystemLibraryOSLogDomain_onceToken != -1)
  {
    dispatch_once(&__CPLSystemLibraryOSLogDomain_onceToken, &__block_literal_global_1115);
  }

  v1 = __CPLSystemLibraryOSLogDomain_result;

  return v1;
}

id __CPLSyndicationOSLogDomain()
{
  if (__CPLSyndicationOSLogDomain_onceToken != -1)
  {
    dispatch_once(&__CPLSyndicationOSLogDomain_onceToken, &__block_literal_global_1118);
  }

  v1 = __CPLSyndicationOSLogDomain_result;

  return v1;
}

id __CPLAppLibraryOSLogDomain()
{
  if (__CPLAppLibraryOSLogDomain_onceToken != -1)
  {
    dispatch_once(&__CPLAppLibraryOSLogDomain_onceToken, &__block_literal_global_1121);
  }

  v1 = __CPLAppLibraryOSLogDomain_result;

  return v1;
}

void sub_19C03D168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_19C03D634(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C03D9E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C03DD38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C03E04C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C03E360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C045830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__11895(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C049F7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 176), 8);
  _Block_object_dispose((v31 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_19C04A1C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C04D540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_19C04E248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C050968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_19C055750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

void sub_19C055CB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C0569CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C056F6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a18, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_19C057D28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C059AEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C059C7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C05B710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _localModeEnabledChanged()
{
  v0 = PLCPLGetLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&dword_19BF1F000, v0, OS_LOG_TYPE_ERROR, "About to exit as CPLLocalMode was toggled", v1, 2u);
  }

  exit(0);
}

void sub_19C05F8C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _photosPreferencesChanged(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {

    return [a2 photosPreferencesChanged];
  }

  return result;
}

void sub_19C0600D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19C060458(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19C060868(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id __CPLAssetsdOSLogDomain()
{
  if (__CPLAssetsdOSLogDomain_onceToken != -1)
  {
    dispatch_once(&__CPLAssetsdOSLogDomain_onceToken, &__block_literal_global_12388);
  }

  v1 = __CPLAssetsdOSLogDomain_result;

  return v1;
}

void PLSendFRCCompletedAnalytics(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = MEMORY[0x1E695DF00];
  v8 = a4;
  v9 = a1;
  v10 = [v7 date];
  v11 = [v9 dateCreated];

  [v10 timeIntervalSinceDate:v11];
  v13 = v12;

  v27 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v14 = *MEMORY[0x1E69BFCD8];
  v15 = [MEMORY[0x1E696AD98] numberWithBool:a2];
  v16 = v15;
  if (v14)
  {
    v17 = v15 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (!v17)
  {
    [v27 setObject:v15 forKey:v14];
  }

  v18 = *MEMORY[0x1E69BFCC0];
  v19 = [MEMORY[0x1E696AD98] numberWithDouble:v13 * 1000.0];
  v20 = v19;
  if (v18)
  {
    v21 = v19 == 0;
  }

  else
  {
    v21 = 1;
  }

  if (!v21)
  {
    [v27 setObject:v19 forKey:v18];
  }

  v22 = *MEMORY[0x1E69BFCD0];
  v23 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  v24 = v23;
  if (v22 && v23)
  {
    [v27 setObject:v23 forKey:v22];
  }

  v25 = *MEMORY[0x1E69BFCC8];
  v26 = [v8 description];

  if (v25 && v26)
  {
    [v27 setObject:v26 forKey:v25];
  }

  PLSendCoreAnalyticEvent();
}

void PLSendFRCBailOutAnalytics(void *a1)
{
  v1 = [a1 dateCreated];
  [v1 timeIntervalSinceNow];
  v3 = fabs(v2);

  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v9 = v4;
  if (*MEMORY[0x1E69BFCB8])
  {
    [v4 setObject:MEMORY[0x1E695E118] forKey:?];
  }

  v5 = *MEMORY[0x1E69BFCC0];
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:v3 * 1000.0];
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    [v9 setObject:v6 forKey:v5];
  }

  PLSendCoreAnalyticEvent();
}

void PLSendDeferredProcessingAnalytics(void *a1, void *a2, void *a3, uint64_t a4)
{
  v38 = a1;
  v7 = a2;
  v8 = MEMORY[0x1E695DF90];
  v9 = a3;
  v10 = objc_alloc_init(v8);
  v11 = [v38 adjustmentTimestamp];
  v12 = [v38 dateCreated];
  [v11 timeIntervalSinceDate:v12];
  v14 = v13;

  v15 = *MEMORY[0x1E69BF5F0];
  v16 = [MEMORY[0x1E696AD98] numberWithDouble:v14];
  v17 = v16;
  if (v15)
  {
    v18 = v16 == 0;
  }

  else
  {
    v18 = 1;
  }

  if (!v18)
  {
    [v10 setObject:v16 forKey:v15];
  }

  v19 = *MEMORY[0x1E69BF5F8];
  v20 = MEMORY[0x1E696AD98];
  [v38 duration];
  v21 = [v20 numberWithDouble:?];
  v22 = v21;
  if (v19 && v21)
  {
    [v10 setObject:v21 forKey:v19];
  }

  v23 = [MEMORY[0x1E695DF00] date];
  [v23 timeIntervalSinceDate:v9];
  v25 = v24;

  v26 = *MEMORY[0x1E69BF600];
  v27 = [MEMORY[0x1E696AD98] numberWithDouble:v25];
  v28 = v27;
  if (v26 && v27)
  {
    [v10 setObject:v27 forKey:v26];
  }

  v29 = *MEMORY[0x1E69BF608];
  v30 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v7, "dataLength")}];
  v31 = v30;
  if (v29 && v30)
  {
    [v10 setObject:v30 forKey:v29];
  }

  v32 = *MEMORY[0x1E69BF610];
  v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v7, "resourceType")}];
  v34 = v33;
  if (v32 && v33)
  {
    [v10 setObject:v33 forKey:v32];
  }

  v35 = *MEMORY[0x1E69BF618];
  v36 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a4];
  v37 = v36;
  if (v35 && v36)
  {
    [v10 setObject:v36 forKey:v35];
  }

  PLSendCoreAnalyticEvent();
}

void PLBuildAndSendFinalizationAnalytics(void *a1, void *a2, uint64_t a3, void *a4, void *a5, void *a6, double a7, double a8)
{
  v49 = a1;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = MEMORY[0x1E695DF90];
  v19 = a2;
  v20 = objc_alloc_init(v18);
  v21 = *MEMORY[0x1E69BFB80];
  v22 = [MEMORY[0x1E696AD98] numberWithDouble:a7];
  v23 = v22;
  if (v21)
  {
    v24 = v22 == 0;
  }

  else
  {
    v24 = 1;
  }

  if (!v24)
  {
    [v20 setObject:v22 forKey:v21];
  }

  v25 = *MEMORY[0x1E69BF450];
  v26 = [MEMORY[0x1E696AD98] numberWithDouble:a8];
  v27 = v26;
  if (v25)
  {
    v28 = v26 == 0;
  }

  else
  {
    v28 = 1;
  }

  if (!v28)
  {
    [v20 setObject:v26 forKey:v25];
  }

  v29 = *MEMORY[0x1E69BF5C0];
  v30 = MEMORY[0x1E696AD98];
  v31 = [v19 code];

  v32 = [v30 numberWithInteger:v31];
  v33 = v32;
  if (v29 && v32)
  {
    [v20 setObject:v32 forKey:v29];
  }

  v34 = *MEMORY[0x1E69BF5D0];
  v35 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(v49, "kindSubtype")}];
  v36 = v35;
  if (v34 && v35)
  {
    [v20 setObject:v35 forKey:v34];
  }

  v37 = *MEMORY[0x1E69BF5A0];
  v38 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(v49, "kind")}];
  v39 = v38;
  if (v37 && v38)
  {
    [v20 setObject:v38 forKey:v37];
  }

  v40 = *MEMORY[0x1E69BF5B0];
  v41 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{objc_msgSend(v49, "deferredProcessingNeeded")}];
  v42 = v41;
  if (v40 && v41)
  {
    [v20 setObject:v41 forKey:v40];
  }

  v43 = *MEMORY[0x1E69BF5B8];
  v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%lld, %lld)", objc_msgSend(v49, "width"), objc_msgSend(v49, "height")];
  v45 = v44;
  if (v43 && v44)
  {
    [v20 setObject:v44 forKey:v43];
  }

  v46 = *MEMORY[0x1E69BF5C8];
  v47 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  v48 = v47;
  if (v46 && v47)
  {
    [v20 setObject:v47 forKey:v46];
  }

  if (v15 && *MEMORY[0x1E69BF5D8])
  {
    [v20 setObject:v15 forKey:?];
  }

  if (v16 && *MEMORY[0x1E69BF5E0])
  {
    [v20 setObject:v16 forKey:?];
  }

  if (v17 && *MEMORY[0x1E69BF5A8])
  {
    [v20 setObject:v17 forKey:?];
  }

  PLSendCoreAnalyticEvent();
}

void sub_19C067618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose((v45 - 176), 8);
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose((v45 - 240), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__13012(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C067F60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C069270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_19C069794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_19C069F54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C06A15C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C06AB10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__13120(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C06B4B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C06B704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C06D5DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v12 - 120), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__13329(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C071B4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void PLClusteringBenchmarkGetMemory(void *a1, void *a2)
{
  v13 = 0u;
  memset(v14, 0, sizeof(v14));
  v11 = 0u;
  *host_info_out = 0u;
  *v9 = 0u;
  v10 = 0u;
  host_info_outCnt = 15;
  v4 = MEMORY[0x19EAEF870]();
  v5 = host_statistics(v4, 2, host_info_out, &host_info_outCnt);
  if (v5)
  {
    mach_error("can't get host_vm_info???\n", v5);
  }

  host_info_outCnt = 12;
  v6 = MEMORY[0x19EAEF870]();
  v7 = host_info(v6, 1, v9, &host_info_outCnt);
  if (v7)
  {
    mach_error("can't get host_basic_info???\n", v7);
  }

  *a2 = *MEMORY[0x1E69E9AC8] * host_info_out[0];
  *a1 = *(&v11 + 1);
}

void writeCGImageToPath(CGImage *a1, const __CFString *a2, void *a3)
{
  v11 = a3;
  v5 = CFURLCreateWithFileSystemPath(0, a2, kCFURLPOSIXPathStyle, 0);
  if (v5)
  {
    v6 = v5;
    v7 = [*MEMORY[0x1E6982E58] identifier];
    v8 = CGImageDestinationCreateWithURL(v6, v7, 1uLL, 0);

    if (v8)
    {
      v9 = v11;
      if (!v9)
      {
        v10 = objc_alloc(MEMORY[0x1E695DF20]);
        v9 = [v10 initWithObjectsAndKeys:{&unk_1F0FC0870, *MEMORY[0x1E696D338], 0}];
      }

      CGImageDestinationAddImage(v8, a1, v9);
      CGImageDestinationFinalize(v8);
      CFRelease(v8);
    }

    CFRelease(v6);
  }
}

id imageDataFromImageRef(CGImage *a1, void *a2, uint64_t a3, int a4)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = v7;
  if (a1 && !v7)
  {
    v8 = [MEMORY[0x1E69C08F0] typeWithIdentifier:CGImageGetUTType(a1)];
  }

  if (!v8)
  {
    v8 = *MEMORY[0x1E6982E58];
  }

  v9 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
  if (a3)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithInt:a3];
    [v9 setValue:v10 forKey:*MEMORY[0x1E696DE78]];
  }

  if (a4)
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v11 setObject:@"Screenshot" forKeyedSubscript:*MEMORY[0x1E696DB40]];
    v12 = [MEMORY[0x1E695DF00] date];
    v13 = PLCreateEXIFDateString();
    [v11 setObject:v13 forKeyedSubscript:*MEMORY[0x1E696D998]];
    [v9 setValue:v11 forKey:*MEMORY[0x1E696D9B0]];
  }

  if ([v8 isEqual:*MEMORY[0x1E6982F28]])
  {
    v18 = *MEMORY[0x1E696DEA0];
    v14 = [MEMORY[0x1E696AD98] numberWithLong:8];
    v19[0] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];

    [v9 setValue:v15 forKey:*MEMORY[0x1E696DEB0]];
  }

  v16 = imageDataFromImageWithFormatAndProperties(a1, v8, v9);

  return v16;
}

__CFData *imageDataFromImageWithFormatAndProperties(CGImage *a1, void *a2, const __CFDictionary *a3)
{
  v5 = a2;
  if (a1)
  {
    v6 = [MEMORY[0x1E695DF88] data];
    v7 = [v5 identifier];
    v8 = CGImageDestinationCreateWithData(v6, v7, 1uLL, 0);

    if (v8)
    {
      CGImageDestinationAddImage(v8, a1, a3);
      if (!CGImageDestinationFinalize(v8))
      {

        v6 = 0;
      }

      CFRelease(v8);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t PLSetMaximumPixelDimensionForDisplayedImage(uint64_t result)
{
  v1 = result;
  if (result == -1)
  {
    DCIM_boundsFromMainScreen();
    v3 = v2;
    v5 = v4;
    PLPhysicalScreenScale();
    *&v6 = v6;
    v7 = *&v6;
    v8 = v3 * v7;
    v9 = v5 * v7;
    if (v8 <= v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = v8;
    }

    result = v10;
    if (v8 < v9)
    {
      v9 = v8;
    }

    v1 = v9;
  }

  __MaxScreenSize = result;
  __MinScreenSize = v1;
  __InitializedMinMaxScreenSize = 1;
  return result;
}

uint64_t PLGetMaximumPixelDimensionForDisplayedImage()
{
  if ((__InitializedMinMaxScreenSize & 1) == 0)
  {
    PLSetMaximumPixelDimensionForDisplayedImage(0xFFFFFFFFLL);
  }

  return __MaxScreenSize;
}

uint64_t PLGetMinimumPixelDimensionForDisplayedImage()
{
  if ((__InitializedMinMaxScreenSize & 1) == 0)
  {
    PLSetMaximumPixelDimensionForDisplayedImage(0xFFFFFFFFLL);
  }

  return __MinScreenSize;
}

uint64_t PLMaxIOSurfaceDimension()
{
  if (PLMaxIOSurfaceDimension_onceToken != -1)
  {
    dispatch_once(&PLMaxIOSurfaceDimension_onceToken, &__block_literal_global_13720);
  }

  return PLMaxIOSurfaceDimension_maxDimension;
}

unint64_t __PLMaxIOSurfaceDimension_block_invoke()
{
  v0 = MEMORY[0x19EAED990](*MEMORY[0x1E696D130]);
  result = MEMORY[0x19EAED990](*MEMORY[0x1E696CF58]);
  if (v0 >= result)
  {
    v2 = result;
  }

  else
  {
    v2 = v0;
  }

  PLMaxIOSurfaceDimension_maxDimension = v2;
  return result;
}

uint64_t PLMaxPixelSizeForFormatAndData(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = *MEMORY[0x1E695F060];
  v6 = *(MEMORY[0x1E695F060] + 8);
  v7 = [v3 formatID];
  if (v7 > 4034)
  {
    if ((v7 - 9997) < 4)
    {
      v8 = 0;
LABEL_33:
      v12 = v6;
      v10 = v5;
      goto LABEL_34;
    }

    if (v7 == 4035)
    {
      [v3 size];
      v26 = v25 + v25;
      [v3 size];
      v28 = v27 + v27;
      [v3 size];
      if (v26 <= v28)
      {
        v29 = v30;
      }

      v9 = v29 + v29;
      goto LABEL_32;
    }

    if (v7 != 4131)
    {
LABEL_21:
      [v3 size];
      v19 = v18;
      [v3 size];
      v21 = v20;
      [v3 size];
      if (v19 <= v21)
      {
        v22 = v23;
      }

      v24 = v22;
      if ((__InitializedMinMaxScreenSize & 1) == 0)
      {
        PLSetMaximumPixelDimensionForDisplayedImage(0xFFFFFFFFLL);
      }

      if (__MaxScreenSize + __MaxScreenSize <= v24)
      {
        v24 = __MaxScreenSize + __MaxScreenSize;
        if ((__InitializedMinMaxScreenSize & 1) == 0)
        {
          PLSetMaximumPixelDimensionForDisplayedImage(0xFFFFFFFFLL);
          v24 = __MaxScreenSize + __MaxScreenSize;
        }
      }

      v8 = v24;
      goto LABEL_33;
    }

LABEL_16:
    [v3 size];
LABEL_32:
    v8 = v9;
    goto LABEL_33;
  }

  if (v7 <= 4008)
  {
    if (v7 != 3039)
    {
      if (v7 == 4007)
      {
        if ((__InitializedMinMaxScreenSize & 1) == 0)
        {
          PLSetMaximumPixelDimensionForDisplayedImage(0xFFFFFFFFLL);
        }

        v8 = __MaxScreenSize;
        goto LABEL_33;
      }

      goto LABEL_21;
    }

    goto LABEL_16;
  }

  if (v7 == 4009)
  {
    v10 = calculateOrientedImageSize(v4);
    v12 = v15;
    if (__InitializedMinMaxScreenSize == 1)
    {
      v16 = __MinScreenSize;
      v17 = __MinScreenSize;
    }

    else
    {
      PLSetMaximumPixelDimensionForDisplayedImage(0xFFFFFFFFLL);
      v17 = __MinScreenSize;
      if ((__InitializedMinMaxScreenSize & 1) == 0)
      {
        PLSetMaximumPixelDimensionForDisplayedImage(0xFFFFFFFFLL);
      }

      v16 = __MinScreenSize;
    }

    v38 = v17;
    v39 = v16;
    if (PLMaxIOSurfaceDimension_onceToken == -1)
    {
      goto LABEL_60;
    }

    goto LABEL_63;
  }

  if (v7 != 4011)
  {
    if (v7 != 4031)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  v10 = calculateOrientedImageSize(v4);
  v12 = v11;
  if (__InitializedMinMaxScreenSize == 1)
  {
    v13 = __MinScreenSize;
    v14 = __MinScreenSize;
  }

  else
  {
    PLSetMaximumPixelDimensionForDisplayedImage(0xFFFFFFFFLL);
    v14 = __MinScreenSize;
    if ((__InitializedMinMaxScreenSize & 1) == 0)
    {
      PLSetMaximumPixelDimensionForDisplayedImage(0xFFFFFFFFLL);
    }

    v13 = __MinScreenSize;
  }

  v38 = (v14 + (v14 >> 31)) >> 1;
  v39 = (v13 + (v13 >> 31)) >> 1;
  if (PLMaxIOSurfaceDimension_onceToken != -1)
  {
LABEL_63:
    v42 = v38;
    v43 = v39;
    dispatch_once(&PLMaxIOSurfaceDimension_onceToken, &__block_literal_global_13720);
    v39 = v43;
    v38 = v42;
  }

LABEL_60:
  v40 = MEMORY[0x19EAEEA40](v38, v39, PLMaxIOSurfaceDimension_maxDimension, 2, v10, v12);
  if (v40 <= v41)
  {
    v40 = v41;
  }

  v8 = v40;
LABEL_34:
  if ([v3 isCropped])
  {
    if (v10 == v5 && v12 == v6)
    {
      v10 = calculateOrientedImageSize(v4);
      v12 = v32;
    }

    if (v10 > 0.0 && v12 > 0.0)
    {
      if (v12 <= v10)
      {
        v33 = v10;
      }

      else
      {
        v33 = v12;
      }

      v34 = v33;
      if (v12 >= v10)
      {
        v35 = v10;
      }

      else
      {
        v35 = v12;
      }

      v36 = v35;
      v8 = vcvtps_s32_f32((v34 / v36) * v8);
    }
  }

  return v8;
}

double calculateOrientedImageSize(const __CFData *a1)
{
  v1 = *MEMORY[0x1E695F060];
  v2 = CGImageSourceCreateWithData(a1, 0);
  if (v2)
  {
    v3 = v2;
    v4 = PLImageSourceCopyPropertiesAtIndexDecodingRawIfNecessary(v2, 0, 0);
    if (v4)
    {
      v5 = v4;
      PLImageSizeFromImageProperties(v4);
      v1 = v6;
      CFRelease(v5);
    }

    CFRelease(v3);
  }

  return v1;
}

CFDictionaryRef PLImageSourceCopyPropertiesAtIndexDecodingRawIfNecessary(CGImageSource *a1, size_t a2, const __CFDictionary *a3)
{
  result = CGImageSourceCopyPropertiesAtIndex(a1, a2, a3);
  if (!result)
  {
    if (a3)
    {
      v7 = [(__CFDictionary *)a3 mutableCopy];
    }

    else
    {
      v7 = objc_opt_new();
    }

    v8 = v7;
    [(__CFDictionary *)v7 setObject:&unk_1F0FBB068 forKeyedSubscript:@"kCGImageSourceShouldUseRawDataForFullSize"];
    v9 = CGImageSourceCopyPropertiesAtIndex(a1, a2, v8);

    return v9;
  }

  return result;
}

uint64_t PLImageSizeFromImageProperties(void *a1)
{
  v1 = *MEMORY[0x1E696DED8];
  v2 = a1;
  v3 = [v2 objectForKey:v1];
  [v3 intValue];

  v4 = [v2 objectForKey:*MEMORY[0x1E696DEC8]];
  [v4 intValue];

  PLImageOrientationFromImageProperties();
  return PLFlipDimensionsForImageOrientation();
}

CGImageRef _PLCreateCGImageFromDataUsingImageIOWithFormat(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, CFDictionaryRef *a7, void *a8)
{
  v39[1] = *MEMORY[0x1E69E9840];
  v13 = a5;
  v14 = a8;
  v15 = a3;
  v16 = a1;
  v17 = [v15 isThumbnail];
  v18 = [v15 formatID];

  v19 = CGDataProviderCreateWithCFData(v16);
  if (v19)
  {
    v20 = a6;
    v34 = v17;
    v38 = *MEMORY[0x1E696E118];
    v39[0] = v13;
    v36 = v13;
    v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:&v38 count:1];
    v21 = CGImageSourceCreateWithDataProvider(v19, v35);
    v22 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:10];
    v23 = *MEMORY[0x1E695E4D0];
    v33 = *MEMORY[0x1E696DFF0];
    [v22 setObject:*MEMORY[0x1E695E4D0] forKeyedSubscript:?];
    [v22 setObject:v23 forKeyedSubscript:*MEMORY[0x1E696E0A8]];
    v24 = v14;
    v25 = [v14 objectForKeyedSubscript:@"kPLCreateThumbnailFromImageAlways"];
    v26 = [v25 BOOLValue];

    v27 = MEMORY[0x1E696DFE8];
    if ((v26 & 1) != 0 || v18 == 4131 || v18 == 4031)
    {
      [v22 setObject:v23 forKeyedSubscript:*MEMORY[0x1E696DFE8]];
    }

    v28 = [MEMORY[0x1E696AD98] numberWithBool:v20];
    [v22 setObject:v28 forKeyedSubscript:*MEMORY[0x1E696E000]];

    if (a4)
    {
      v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
      [v22 setObject:v29 forKeyedSubscript:*MEMORY[0x1E696E100]];
    }

    if (a7)
    {
      v30 = PLImageSourceCopyPropertiesAtIndexDecodingRawIfNecessary(v21, 0, 0);
      *a7 = v30;
      if (v30)
      {
        CFAutorelease(v30);
      }
    }

    v14 = v24;
    if (v21)
    {
      if ((v34 & 1) == 0)
      {
        [v22 removeObjectForKey:v33];
        [v22 setObject:v23 forKey:*v27];
      }

      ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(v21, 0, v22);
      v13 = v36;
      if (!ThumbnailAtIndex)
      {
        if (PLIsForegroundApplication())
        {
          [v22 setObject:v23 forKey:*MEMORY[0x1E696E0E0]];
          ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(v21, 0, v22);
        }

        else
        {
          ThumbnailAtIndex = 0;
        }
      }

      CFRelease(v21);
    }

    else
    {
      ThumbnailAtIndex = 0;
      v13 = v36;
    }

    CGDataProviderRelease(v19);
  }

  else
  {
    ThumbnailAtIndex = 0;
  }

  return ThumbnailAtIndex;
}

uint64_t PLCreateImageFromDataWithFormat(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, CFDictionaryRef *a6, void *a7)
{
  v41 = *MEMORY[0x1E69E9840];
  v12 = a1;
  v13 = a4;
  v14 = a7;
  if (v12)
  {
    v15 = [MEMORY[0x1E69BF260] formatWithID:a3];
    if (a6)
    {
      *a6 = 0;
    }

    v35 = __logImageDecodeTime;
    if (!v13)
    {
      v13 = [*MEMORY[0x1E6982E58] identifier];
    }

    v16 = [v14 objectForKeyedSubscript:@"kPLOptimalSourcePixelSizeKey"];
    v17 = MEMORY[0x19EAED7D0]();
    v19 = v18;

    if (v17 == *MEMORY[0x1E695F060] && v19 == *(MEMORY[0x1E695F060] + 8))
    {
      if (v15)
      {
        v22 = PLMaxPixelSizeForFormatAndData(v15, v12);
      }

      else
      {
        v22 = 0;
      }
    }

    else
    {
      if (v17 <= v19)
      {
        v21 = v19;
      }

      else
      {
        v21 = v17;
      }

      v22 = v21;
    }

    Current = CFAbsoluteTimeGetCurrent();
    if (+[PLManagedAsset isPrimaryImageFormatForUTI:](PLManagedAsset, "isPrimaryImageFormatForUTI:", v13) && ([v15 isThumbnail] & 1) == 0)
    {
      v34 = a3;
      a3 = [MEMORY[0x1E695DF90] dictionary];
      if (v22)
      {
        v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v22];
        [a3 setObject:v25 forKeyedSubscript:*MEMORY[0x1E6991AE0]];
      }

      if (a5)
      {
        [a3 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E6991AC0]];
      }

      [a3 setObject:&unk_1F0FBB068 forKeyedSubscript:*MEMORY[0x1E6991B10]];
      CGImageFromImageData = PFFigCreateCGImageFromImageData();
      if (CGImageFromImageData)
      {
        v27 = CGImageFromImageData;
        v28 = PLImageManagerGetLog();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v38 = "PLImage *PLCreateImageFromDataWithFormat(NSData *__strong, BOOL, PLPhotoImageFormatID, NSString *__strong, BOOL, CFDictionaryRef *, NSDictionary *__strong)";
          v39 = 2048;
          v40 = v27;
          _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_ERROR, "PFFigCreateCGImageFromImageData %s returned %ld", buf, 0x16u);
        }
      }

      LODWORD(a3) = v34;
    }

    image = _PLCreateCGImageFromDataUsingImageIOWithFormat(v12, 0, v15, v22, v13, a5, a6, v14);
    if (image)
    {
      if ((a5 & 1) == 0)
      {
        PLImageOrientationFromImageData();
      }

      v23 = DCIM_newPLImageWithCGImage();
      CGImageRelease(image);
    }

    else
    {
      v23 = 0;
    }

    v29 = CFAbsoluteTimeGetCurrent();
    if (v35)
    {
      if (image)
      {
        v30 = v29 - Current;
        v31 = v30 + 0.0;
        if (a3 == 4007)
        {
          ++PLCreateImageFromDataWithFormat___count;
          *&PLCreateImageFromDataWithFormat___total = v31 + *&PLCreateImageFromDataWithFormat___total;
          DCIM_sizeFromPLImage();
          v32 = DCIM_NSStringFromCGSize();
          NSLog(&cfstr_DecodedImageVi.isa, @"ImageIO", *&v31, v32, *&PLCreateImageFromDataWithFormat___total / PLCreateImageFromDataWithFormat___count);
        }

        else
        {
          NSLog(&cfstr_DecodedImageIn.isa, v30, v30 + 0.0);
        }
      }

      else
      {
        NSLog(&cfstr_DecodeFailed.isa, v29);
      }
    }
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

uint64_t PLCreateImageFromFileWithFormat(void *a1, unsigned int a2, void *a3, uint64_t a4, unsigned int a5, CFTypeRef *a6, void *a7)
{
  v46 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = a3;
  v15 = a7;
  v16 = objc_autoreleasePoolPush();
  if (v13)
  {
    v39 = a2;
    v17 = [MEMORY[0x1E69BF260] formatWithID:a4];
    v18 = [v17 isThumbnail];
    v19 = [PLManagedAsset isPrimaryImageFormatForUTI:v14];
    v20 = objc_alloc(MEMORY[0x1E695DEF0]);
    if (!v19 || (v18 & 1) != 0)
    {
      v21 = [v20 initWithContentsOfFile:v13 options:1 error:0];
    }

    else
    {
      v21 = [v20 initWithContentsOfFile:v13];
    }

    v22 = v21;

    if (v22)
    {
      v35 = a4;
      v36 = v16;
      v37 = v15;
      v38 = a6;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v23 = *MEMORY[0x1E6982EE8];
      v44[0] = *MEMORY[0x1E6982E30];
      v44[1] = v23;
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:2];
      v25 = [v24 countByEnumeratingWithState:&v40 objects:v45 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v41;
LABEL_10:
        v28 = 0;
        while (1)
        {
          if (*v41 != v27)
          {
            objc_enumerationMutation(v24);
          }

          if (v14)
          {
            break;
          }

          v29 = *(*(&v40 + 1) + 8 * v28);
          v30 = MEMORY[0x1E6982C40];
          v31 = [v13 pathExtension];
          v32 = [v30 typeWithFilenameExtension:v31 conformingToType:v29];
          v14 = [v32 identifier];

          if (v26 == ++v28)
          {
            v26 = [v24 countByEnumeratingWithState:&v40 objects:v45 count:16];
            if (v26)
            {
              goto LABEL_10;
            }

            break;
          }
        }
      }

      v15 = v37;
      a6 = v38;
      v33 = PLCreateImageFromDataWithFormat(v22, v39, v35, v14, a5, v38, v37);
      v16 = v36;
      if (!v38)
      {
        goto LABEL_17;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v22 = 0;
  }

  v33 = 0;
  if (!a6)
  {
LABEL_17:

    objc_autoreleasePoolPop(v16);
    goto LABEL_23;
  }

LABEL_19:
  if (*a6)
  {
    CFRetain(*a6);
  }

  objc_autoreleasePoolPop(v16);
  if (*a6)
  {
    CFAutorelease(*a6);
  }

LABEL_23:

  return v33;
}

id PLGetSourceTypeHintFromFilename(void *a1)
{
  v1 = [a1 pathExtension];
  v2 = CGImageSourceGetTypeWithExtension();

  return v2;
}

double PLImageSizeFromImageData(const __CFData *a1)
{
  v1 = CGImageSourceCreateWithData(a1, 0);
  if (!v1)
  {
    return *MEMORY[0x1E695F060];
  }

  v2 = v1;
  v3 = PLImageSourceCopyPropertiesAtIndexDecodingRawIfNecessary(v1, 0, 0);
  PLImageSizeFromImageProperties(v3);
  v5 = v4;
  CFRelease(v2);

  return v5;
}

void PLTransformForImage(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v4 = MEMORY[0x19EAED900]();
  v5 = DCIM_CGImageRefFromPLImage();
  if (v5)
  {
    v6 = v5;
    Width = CGImageGetWidth(v5);
    Height = CGImageGetHeight(v6);
  }

  else
  {
    v9 = MEMORY[0x19EAED870](v3);
    if (!v9)
    {
      v11 = 0.0;
      Width = 0.0;
      goto LABEL_6;
    }

    v10 = v9;
    Width = IOSurfaceGetWidth(v9);
    Height = IOSurfaceGetHeight(v10);
  }

  v11 = Height;
LABEL_6:
  v12 = MEMORY[0x1E695EFD0];
  v13 = *MEMORY[0x1E695EFD0];
  v14 = *(MEMORY[0x1E695EFD0] + 16);
  *a2 = *MEMORY[0x1E695EFD0];
  *(a2 + 16) = v14;
  v15 = *(v12 + 32);
  *(a2 + 32) = v15;
  if (v4 && Width > 0.0 && v11 > 0.0)
  {
    *&v24.a = v13;
    *&v24.c = v14;
    *&v24.tx = v15;
    DCIM_sizeFromPLImage();
    v17 = v16;
    v19 = v18;
    memset(&v28, 0, sizeof(v28));
    PLTransformForImageOrientation();
    *a2 = *&v24.a;
    *(a2 + 16) = *&v24.c;
    *(a2 + 32) = *&v24.tx;
    CGAffineTransformMakeTranslation(&t2, Width * -0.5, v11 * -0.5);
    t1 = v24;
    CGAffineTransformConcat(a2, &t1, &t2);
    v20 = *(a2 + 16);
    *&t1.a = *a2;
    *&t1.c = v20;
    *&t1.tx = *(a2 + 32);
    v25 = v28;
    CGAffineTransformConcat(&t2, &t1, &v25);
    v21 = *&t2.c;
    *a2 = *&t2.a;
    *(a2 + 16) = v21;
    *(a2 + 32) = *&t2.tx;
    CGAffineTransformMakeTranslation(&t1, v17 * 0.5, v19 * 0.5);
    v22 = *(a2 + 16);
    *&v25.a = *a2;
    *&v25.c = v22;
    *&v25.tx = *(a2 + 32);
    CGAffineTransformConcat(&t2, &v25, &t1);
    v23 = *&t2.c;
    *a2 = *&t2.a;
    *(a2 + 16) = v23;
    *(a2 + 32) = *&t2.tx;
  }
}

CGImage *PLCreateSRGBImageIfNecessary(CGImage *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
    CGImageGetColorSpace(v1);
    if (CGColorSpaceEqualToColorSpace())
    {
      v1 = 0;
    }

    else
    {
      v1 = CGImageCreateByMatchingToColorSpace();
    }

    CGColorSpaceRelease(v2);
  }

  return v1;
}

CGImageRef PLCreateSquareCroppedImageRef(CGImageRef image)
{
  if (!image)
  {
    return image;
  }

  Width = CGImageGetWidth(image);
  if (Width == CGImageGetHeight(image))
  {
    CFRetain(image);
    return image;
  }

  PLSquareCropRectForSize();

  return CGImageCreateWithImageInRect(image, *&v4);
}

uint64_t PLCreateSquareCroppedImage(void *a1)
{
  v1 = a1;
  v2 = DCIM_CGImageRefFromPLImage();
  v3 = PLCreateSquareCroppedImageRef(v2);
  if (v3)
  {
    v4 = v3;
    MEMORY[0x19EAED900](v1);
    v5 = DCIM_newPLImageWithCGImage();
    CGImageRelease(v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

double PLScaledImageSizeForUIImage(void *a1)
{
  v1 = a1;
  DCIM_sizeFromPLImage();
  v3 = v2;
  DCIM_scaleFromPLImage();
  v5 = v4;

  return v3 * v5;
}

void PLCGApplyTransformForOrientation(CGContextRef c, uint64_t a2, double a3, double a4, double a5, double a6)
{
  if (a2 > 3)
  {
    if (a2 <= 5)
    {
      if (a2 != 4)
      {
        v16 = 0uLL;
        v14 = xmmword_19C60AF30;
        v9 = xmmword_19C60AF60;
LABEL_20:
        v13 = v9;
        goto LABEL_21;
      }

      v16 = 0uLL;
      v12 = xmmword_19C60AF50;
LABEL_15:
      v14 = v12;
      v9 = xmmword_19C60AF40;
      goto LABEL_20;
    }

    if (a2 != 6)
    {
      if (a2 == 7)
      {
        v16 = 0uLL;
        v11 = xmmword_19C60AF60;
LABEL_19:
        v14 = v11;
        v9 = xmmword_19C60AF50;
        goto LABEL_20;
      }

      goto LABEL_13;
    }

    v16 = 0uLL;
    v10 = xmmword_19C60AF40;
LABEL_17:
    v14 = v10;
    v9 = xmmword_19C60AF30;
    goto LABEL_20;
  }

  switch(a2)
  {
    case 1:
      v16 = 0uLL;
      v12 = xmmword_19C60AF30;
      goto LABEL_15;
    case 2:
      v16 = 0uLL;
      v11 = xmmword_19C60AF40;
      goto LABEL_19;
    case 3:
      v16 = 0uLL;
      v10 = xmmword_19C60AF60;
      goto LABEL_17;
  }

LABEL_13:
  v13 = *MEMORY[0x1E695EFD0];
  v14 = *(MEMORY[0x1E695EFD0] + 16);
  v16 = *(MEMORY[0x1E695EFD0] + 32);
LABEL_21:
  CGContextTranslateCTM(c, a5 * 0.5, a6 * 0.5);
  *&transform.a = v13;
  *&transform.c = v14;
  *&transform.tx = v16;
  CGContextConcatCTM(c, &transform);
  CGContextTranslateCTM(c, a5 * -0.5, a6 * -0.5);
}

void PLCGScaleContext(CGContext *a1, double a2, double a3, double a4, double a5, float a6, float a7)
{
  CGContextTranslateCTM(a1, a4 * 0.5, a5 * 0.5);
  CGContextScaleCTM(a1, a6, a7);

  CGContextTranslateCTM(a1, a4 * -0.5, a5 * -0.5);
}

float PLCGTranslateContextToPoint(CGContext *a1, double a2, double a3, double a4, double a5)
{
  v5 = a2 * 0.5 - a4;
  v6 = a5 - a3 * 0.5;
  CGContextTranslateCTM(a1, v5, v6);
  return result;
}

void PLCGDrawImage(CGContext *a1, CGImageRef image, double a3, double a4, double a5, double a6)
{
  Width = CGImageGetWidth(image);
  Height = CGImageGetHeight(image);
  v14 = Width;

  v12 = (a5 - Width) * 0.5;
  v13 = (a6 - Height) * 0.5;
  CGContextDrawImage(a1, *(&v14 - 2), image);
}

CGImageRef PLCreateCroppedImageRefFromImageRef()
{
  v0 = DCIM_newPLImageWithCGImage();
  v1 = PLCreateCroppedImageFromImage();
  v2 = DCIM_CGImageRefFromPLImage();
  v3 = CGImageRetain(v2);

  return v3;
}

double PLScaledSizeWithinSize(double a1, double a2, double a3, double a4)
{
  if (a3 <= a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = a3;
  }

  v6 = a1 / a2;
  result = v5;
  v8 = v6;
  if (a1 <= a2)
  {
    return rint(v8 * result);
  }

  return result;
}

double PLScaledSize(int a1, int a2, int a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  if (a5 > a6)
  {
    v8 = a1;
  }

  else
  {
    v8 = 0;
  }

  v9 = a7 < a8;
  if ((v8 & v9) != 0)
  {
    v10 = a8;
  }

  else
  {
    v10 = a7;
  }

  if ((v8 & v9) == 0)
  {
    a7 = a8;
  }

  v11 = rint(a5 * a7 / a6);
  v12 = rint(a6 * v10 / a5);
  if (a6 * v10 <= a5 * a7 == a3)
  {
    v10 = v11;
  }

  else
  {
    a7 = v12;
  }

  if (a2)
  {
    v13 = a7 > a6;
    if (v10 > a5)
    {
      v13 = 1;
    }

    if (v13)
    {
      a7 = a6;
      v10 = a5;
    }
  }

  if (a4 < 1)
  {
    return v10;
  }

  v14 = a4;
  if (a7 <= a4 && v10 <= v14)
  {
    return v10;
  }

  if (v10 <= a7)
  {
    return rint(a5 * v14 / a6);
  }

  return v14;
}

void sub_19C07C5BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__14273(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C07CAAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19C0804F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 128), 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_19C0820C4(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x210], 8);
  _Block_object_dispose((v1 - 240), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__14821(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C082EF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose((v69 - 256), 8);
  _Block_object_dispose(&a69, 8);
  _Block_object_dispose(&STACK[0x200], 8);
  _Block_object_dispose(&STACK[0x230], 8);
  _Block_object_dispose(&STACK[0x250], 8);
  _Unwind_Resume(a1);
}

__CFString *PLManagedAssetDeferredProcessingNeededDescription(unsigned int a1)
{
  if (a1 > 0xA)
  {
    return 0;
  }

  else
  {
    return off_1E7567B18[a1];
  }
}

void sub_19C08471C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 120), 8);
  _Unwind_Resume(a1);
}

void sub_19C08BD9C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 208));
  _Unwind_Resume(a1);
}

void sub_19C08E574(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id obj, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  _Block_object_dispose((v53 - 160), 8);

  _Block_object_dispose(&a53, 8);
  objc_sync_exit(obj);
  _Unwind_Resume(a1);
}

void sub_19C090338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id PLGetFaceRegionsFromImageMetadata(const CGImageMetadata *a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = CGImageMetadataCopyStringValueWithPath(a1, 0, @"tiff:Model");
  v4 = CGImageMetadataCopyStringValueWithPath(a1, 0, @"xmp:CreatorTool");
  v5 = CGImageMetadataCopyStringValueWithPath(a1, 0, @"tiff:Orientation");
  v6 = PLFaceRegionRequireFixup(v3, v4);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __PLGetFaceRegionsFromImageMetadata_block_invoke;
  v12[3] = &unk_1E75677E8;
  v15 = a1;
  v7 = v2;
  v13 = v7;
  v14 = v5;
  v16 = v6;
  v8 = v5;
  CGImageMetadataEnumerateTagsUsingBlock(a1, @"mwg-rs:Regions.RegionList", 0, v12);
  v9 = v14;
  v10 = v7;

  return v7;
}

id PLManagedAssetEncodeFaceRegions(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if ([v1 count])
  {
    v2 = [MEMORY[0x1E695DF88] dataWithLength:{32 * objc_msgSend(v1, "count")}];
    v3 = [v2 mutableBytes];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v4 = v1;
    v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v17;
      v9 = v3 + 16;
      do
      {
        v10 = 0;
        v11 = (v9 + 32 * v7);
        v7 += v6;
        do
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v4);
          }

          *(v11 - 2) = MEMORY[0x19EAED7C0](*(*(&v16 + 1) + 8 * v10));
          *(v11 - 1) = v12;
          *v11 = v13;
          *(v11 + 1) = v14;
          v11 += 4;
          ++v10;
        }

        while (v6 != v10);
        v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

BOOL PLFaceRegionRequireFixup(void *a1, void *a2)
{
  v3 = a2;
  if ([a1 isEqualToString:@"iPhone 4S"])
  {
    [v3 doubleValue];
    v5 = v4 < 5.1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __PLGetFaceRegionsFromImageMetadata_block_invoke(uint64_t a1, int a2, CGImageMetadataTagRef parent)
{
  v5 = CGImageMetadataCopyStringValueWithPath(*(a1 + 48), parent, @"Type");
  if ([(__CFString *)v5 isEqualToString:@"Face"])
  {
    v6 = CGImageMetadataCopyStringValueWithPath(*(a1 + 48), parent, @"Area.stArea:x");
    v7 = CGImageMetadataCopyStringValueWithPath(*(a1 + 48), parent, @"Area.stArea:y");
    v8 = CGImageMetadataCopyStringValueWithPath(*(a1 + 48), parent, @"Area.stArea:w");
    v9 = CGImageMetadataCopyStringValueWithPath(*(a1 + 48), parent, @"Area.stArea:h");
    PLUpdateFaceRegion(*(a1 + 32), v6, v7, v8, v9, *(a1 + 40), *(a1 + 56));
  }

  return 1;
}

void PLUpdateFaceRegion(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, char a7)
{
  v13 = a6;
  if (a2 && a3 && a4 && a5)
  {
    v14 = a5;
    v15 = a4;
    v16 = a3;
    v17 = a1;
    [a2 doubleValue];
    v19 = v18;
    [v16 doubleValue];
    v21 = v20;

    [v15 doubleValue];
    v23 = v22;

    [v14 doubleValue];
    v25 = v24;

    if (v13)
    {
      v26 = [v13 intValue] - 1;
    }

    else
    {
      v26 = 0;
    }

    v27 = *MEMORY[0x1E695EFD0];
    v28 = *(MEMORY[0x1E695EFD0] + 16);
    *&v36.a = *MEMORY[0x1E695EFD0];
    *&v36.c = v28;
    v29 = *(MEMORY[0x1E695EFD0] + 32);
    *&v36.tx = v29;
    v30 = v19 - v23 * 0.5;
    v31 = v21 - v25 * 0.5;
    if (a7)
    {
      goto LABEL_14;
    }

    if ((v26 & 4) != 0)
    {
      *&t2.tx = v29;
      *&v35.a = xmmword_19C60AF50;
      v35.c = 1.0;
      memset(&v35.d, 0, 24);
      *&t2.a = v27;
      *&t2.c = v28;
      CGAffineTransformConcat(&v36, &t2, &v35);
      if ((v26 & 2) == 0)
      {
LABEL_11:
        if ((v26 & 1) == 0)
        {
LABEL_13:
          v37.origin.x = v30 + -0.5;
          v37.origin.y = v31 + -0.5;
          v35 = v36;
          v37.size.width = v23;
          v37.size.height = v25;
          CGRectApplyAffineTransform(v37, &v35);
LABEL_14:
          v32 = DCIM_NSValueFromCGRect();
          [v17 addObject:v32];

          goto LABEL_15;
        }

LABEL_12:
        t2.a = -1.0;
        t2.b = 0.0;
        t2.c = 0.0;
        t2.d = 1.0;
        t2.tx = 0.0;
        t2.ty = 0.0;
        v33 = v36;
        CGAffineTransformConcat(&v35, &v33, &t2);
        v36 = v35;
        goto LABEL_13;
      }
    }

    else if ((v26 & 2) == 0)
    {
      goto LABEL_11;
    }

    t2.a = -1.0;
    t2.b = 0.0;
    t2.c = 0.0;
    t2.d = -1.0;
    t2.tx = 0.0;
    t2.ty = 0.0;
    v33 = v36;
    CGAffineTransformConcat(&v35, &v33, &t2);
    v36 = v35;
    if ((v26 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_15:
}

id PLGetFaceRegionsFromCGImageProperties(void *a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v2 = [v1 objectForKeyedSubscript:@"{TIFF}"];
  v3 = [v2 objectForKeyedSubscript:@"Model"];
  v4 = [v2 objectForKeyedSubscript:@"Software"];
  v23 = v2;
  v26 = [v2 objectForKeyedSubscript:@"Orientation"];
  v21 = v4;
  v22 = v3;
  v25 = PLFaceRegionRequireFixup(v3, v4);
  v24 = v1;
  v5 = [v1 objectForKeyedSubscript:@"{ExifAux}"];
  v6 = [v5 objectForKeyedSubscript:@"Regions"];
  v7 = [v6 objectForKeyedSubscript:@"RegionList"];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v29;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v28 + 1) + 8 * i);
        v14 = [v13 objectForKeyedSubscript:@"Type"];
        v15 = [v14 isEqual:@"Face"];

        if (v15)
        {
          v16 = [v13 objectForKeyedSubscript:@"X"];
          v17 = [v13 objectForKeyedSubscript:@"Y"];
          v18 = [v13 objectForKeyedSubscript:@"Width"];
          v19 = [v13 objectForKeyedSubscript:@"Height"];
          PLUpdateFaceRegion(v27, v16, v17, v18, v19, v26, v25);
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v10);
  }

  return v27;
}

id PLManagedAssetDecodeFaceRegions(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    v2 = [v1 bytes];
    v3 = [v1 length];
    v4 = v3 >> 5;
    v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:v3 >> 5];
    if (v3 >= 0x20)
    {
      v6 = v2 + 16;
      do
      {
        v6 += 32;
        v7 = DCIM_NSValueFromCGRect();
        [v5 addObject:v7];

        --v4;
      }

      while (v4);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_19C09DC0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C09DFCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19C09E150(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_19C09E4C4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_19C0AB2EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C0ABDCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C0B0A30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_19C0B0CA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (a2 == 1)
  {
    v23 = objc_begin_catch(exception_object);
    v24 = MEMORY[0x1E696ABC0];
    a21 = *MEMORY[0x1E696A278];
    v25 = [v23 description];
    a22 = v25;
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&a22 forKeys:&a21 count:1];
    v27 = [v24 errorWithDomain:*MEMORY[0x1E69BFF48] code:46301 userInfo:v26];
    v28 = *(*(v22 + 48) + 8);
    v29 = *(v28 + 40);
    *(v28 + 40) = v27;

    objc_end_catch();
    JUMPOUT(0x19C0B0C60);
  }

  _Unwind_Resume(exception_object);
}

void sub_19C0B1744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_19C0B23D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a39, 8);
  _Unwind_Resume(a1);
}

id MetadataForPreviewJPGFromOriginalMetadata(void *a1)
{
  v1 = a1;
  v2 = [v1 mutableCopy];
  [v2 removeObjectForKey:*MEMORY[0x1E696DE78]];
  v3 = *MEMORY[0x1E696DF28];
  v4 = [v1 objectForKey:*MEMORY[0x1E696DF28]];

  v5 = [v4 mutableCopy];
  if (v5)
  {
    [v5 removeObjectForKey:*MEMORY[0x1E696DF58]];
    [v2 setObject:v5 forKey:v3];
  }

  return v2;
}

__CFString *PLManagedAssetTypeDescription(unsigned int a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return off_1E7567AF8[a1];
  }
}

id MetadataForSmallPreviewJPGFromOriginalMetadata(void *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v2 = v1;
  v3 = [v2 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v21;
    v6 = *MEMORY[0x1E696DE30];
    v18 = *MEMORY[0x1E69867D8];
    v16 = *MEMORY[0x1E69867E0];
    v17 = v2;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v21 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        v9 = [v2 objectForKeyedSubscript:{v8, v16}];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([v8 isEqual:v6])
          {
            v10 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
            [v9 objectForKeyedSubscript:v18];
            v11 = v4;
            v13 = v12 = v6;
            [v10 setObject:v13 forKeyedSubscript:v18];

            v14 = [v9 objectForKeyedSubscript:v16];
            [v10 setObject:v14 forKeyedSubscript:v16];

            v6 = v12;
            v4 = v11;
            v2 = v17;
            [v19 setObject:v10 forKeyedSubscript:v8];
          }

          else
          {
            [v19 setObject:MEMORY[0x1E695E0F8] forKeyedSubscript:v8];
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v4);
  }

  return v19;
}

id ExifDateStringToDate(void *a1)
{
  v1 = a1;
  v2 = objc_autoreleasePoolPush();
  if ([v1 length] && (objc_msgSend(v1, "hasPrefix:", @"0000") & 1) == 0)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF10]);
    v10 = 0;
    v9 = 0;
    v8 = 0;
    v7 = 0;
    sscanf([v1 UTF8String], "%d%*c%d%*c%d%*c%d%*c%d%*c%d", &v10 + 4, &v10, &v9, &v8, &v7 + 4, &v7);
    [v4 setYear:SHIDWORD(v10)];
    [v4 setMonth:v10];
    [v4 setDay:v9];
    [v4 setHour:v8];
    [v4 setMinute:SHIDWORD(v7)];
    [v4 setSecond:v7];
    v5 = +[PLManagedAsset _ptpCalendar];
    objc_sync_enter(v5);
    v3 = [v5 dateFromComponents:v4];
    objc_sync_exit(v5);

    objc_autoreleasePoolPop(v2);
  }

  else
  {
    objc_autoreleasePoolPop(v2);
    v3 = 0;
  }

  return v3;
}

id DateCreatedFromExifDictionary(void *a1)
{
  v1 = a1;
  v2 = [v1 objectForKey:*MEMORY[0x1E696D998]];
  v3 = [v1 objectForKey:*MEMORY[0x1E696DB28]];
  if (!v2)
  {
    v2 = [v1 objectForKey:*MEMORY[0x1E696D990]];
    v4 = [v1 objectForKey:*MEMORY[0x1E696DB20]];

    v3 = v4;
  }

  v5 = ExifDateStringToDate(v2);
  if (v5 && [v3 length])
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"0.%@", v3];

    [v6 doubleValue];
    if (v7 > 0.0 && v7 < 1.0)
    {
      v9 = [v5 dateByAddingTimeInterval:?];

      v3 = v6;
      v5 = v9;
    }

    else
    {
      v3 = v6;
    }
  }

  return v5;
}

void sub_19C0B59A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a45, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__15714(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C0B6188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose((v32 - 184), 8);
  _Block_object_dispose((v32 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_19C0B6E68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&a47, 8);
  _Unwind_Resume(a1);
}

void sub_19C0B956C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

void sub_19C0B9B94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PLModelMigrationActionUtilityIncrementalUpdateLog(uint64_t result, uint64_t a2)
{
  if (__ROR8__(0x1CAC083126E978D5 * result, 3) <= 0x4189374BC6A7EFuLL && result != 0 && a2 != 0)
  {
    return (*(a2 + 16))(a2);
  }

  return result;
}

uint64_t __Block_byref_object_copy__16026(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t PLRecipeIDFromSharedStreamsType(unsigned int a1)
{
  if (a1 > 9)
  {
    return 65741;
  }

  else
  {
    return dword_19C60B898[a1];
  }
}

uint64_t PLResourceTypeForSharedStreamsType(unsigned int a1)
{
  if (a1 > 9)
  {
    return 3;
  }

  else
  {
    return dword_19C60B8D4[a1];
  }
}

void sub_19C0BEA08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C0C0040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a49, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__16168(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C0C1218(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19C0C2458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a25, 8);
  _Unwind_Resume(a1);
}

void sub_19C0C65E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C0C6B30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C0C8260(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_19C0C9510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C0CA548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C0CACD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a43, 8);
  _Unwind_Resume(a1);
}

void PLModelMigrationActionRegistration_19000(void *a1)
{
  v35 = a1;
  v1 = [v35 migrationContext];
  v2 = [v1 previousStoreVersion];

  v3 = [v35 migrationContext];
  v4 = [v3 libraryIdentifier];
  v5 = v4;
  v6 = v2 - 19000;
  v7 = v2 - 18002;
  v8 = v4 != 3 && v2 - 19000 < 0x14;
  v9 = v4 != 3 && v2 - 18002 < 0x421;
  LODWORD(v26) = v9;
  v10 = v4 != 3 && v2 - 18028 < 0x407;
  v11 = v4 == 1 && v2 < 0x4B02;
  v33 = v11;
  v34 = v10;
  v12 = v4 == 1 && v2 < 0x4AB1;
  v13 = v2 < 0x4AAF;
  if (v4 != 1)
  {
    v13 = 0;
  }

  v31 = v13;
  v32 = v12;
  v14 = v2 - 19047;
  v15 = v4 == 1 && v2 < 0x4A9E;
  v16 = v14 < 0x36;
  if (v4 != 1)
  {
    v16 = 0;
  }

  v29 = v16;
  v30 = v15;
  v17 = v4 == 1 && v2 < 0x4A9C;
  v19 = v2 - 19026 < 0x16 || v2 - 19059 < 0x28;
  if (v4 != 1)
  {
    v19 = 0;
  }

  v27 = v19;
  v28 = v17;
  v20 = v14 < 0x25;
  if (v4 != 1)
  {
    v20 = 0;
  }

  HIDWORD(v26) = v20;
  v21 = v4 == 1 && v14 < 9;
  v22 = v4 == 1 && v14 < 6;
  v23 = v4 == 1 && v2 < 0x4A67;

  [v35 registerActionClass:objc_opt_class() onCondition:v6 < 0x11];
  [v35 registerActionClass:objc_opt_class() onCondition:v6 < 0x12];
  [v35 registerActionClass:objc_opt_class() onCondition:v8];
  [v35 registerActionClass:objc_opt_class() onCondition:v2 < 0x4A53];
  [v35 registerActionClass:objc_opt_class() onCondition:v2 < 0x4A61];
  [v35 registerActionClass:objc_opt_class() onCondition:v2 < 0x4A62];
  [v35 registerActionClass:objc_opt_class() onCondition:v23];
  [v35 registerActionClass:objc_opt_class() onCondition:v2 < 0x4A69];
  [v35 registerActionClass:objc_opt_class() onCondition:v22];
  [v35 registerActionClass:objc_opt_class() onCondition:v21];
  [v35 registerActionClass:objc_opt_class() onCondition:v7 < 0x3F2];
  [v35 registerActionClass:objc_opt_class() onCondition:v7 < 0x416];
  [v35 registerActionClass:objc_opt_class() onCondition:v2 - 18003 < 0x420];
  [v35 registerActionClass:objc_opt_class() onCondition:v26];
  [v35 registerActionClass:objc_opt_class() onCondition:v2 - 18002 < 0x421];
  [v35 registerActionClass:objc_opt_class() onCondition:v2 < 0x4A75];
  [v35 registerActionClass:objc_opt_class() onCondition:v6 < 0x61];
  [v35 registerActionClass:objc_opt_class() onCondition:HIDWORD(v26)];
  [v35 registerActionClass:objc_opt_class() onCondition:v6 < 0x55];
  [v35 registerActionClass:objc_opt_class() onCondition:v27];
  [v35 registerActionClass:objc_opt_class() onCondition:v28];
  [v35 registerActionClass:objc_opt_class() onCondition:v29];
  [v35 registerActionClass:objc_opt_class() onCondition:v30];
  [v35 registerActionClass:objc_opt_class() onCondition:v2 < 0x4AAC];
  [v35 registerActionClass:objc_opt_class() onCondition:v2 < 0x4AAE];
  [v35 registerActionClass:objc_opt_class() onCondition:v31];
  [v35 registerActionClass:objc_opt_class() onCondition:v2 >> 4 < 0x4AB];
  [v35 registerActionClass:objc_opt_class() onCondition:v32];
  [v35 registerActionClass:objc_opt_class() onCondition:v2 < 0x4ABB];
  [v35 registerActionClass:objc_opt_class() onCondition:v33];
  [v35 registerActionClass:objc_opt_class() onCondition:v2 < 0x4B6A];
  [v35 registerActionClass:objc_opt_class() onCondition:v2 >> 3 < 0x96F];
  [v35 resetBackgroundActionClass:objc_opt_class() onCondition:v34];
  [v35 resetBackgroundActionClass:objc_opt_class() onCondition:v2 < 0x4A76];
  v24 = objc_opt_class();
  v25 = 0;
  if (v2 <= 0x4A89 && v5 != 3)
  {
    v25 = PLPlatformMomentsSupported();
  }

  [v35 resetBackgroundActionClass:v24 onCondition:{v25, v26}];
  [v35 resetBackgroundActionClass:objc_opt_class() onCondition:v2 < 0x4ABC];
}

BOOL PLDateIsApproximatelyEqual(void *a1, void *a2, double a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (v5 | v6)
  {
    v8 = 0;
    if (v5 && v6)
    {
      [v6 timeIntervalSinceDate:v5];
      v8 = fabs(v9) <= a3;
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

BOOL PLDateIsGreaterThanOrEqual(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 | v4)
  {
    v6 = 0;
    if (v3 && v4)
    {
      v6 = [v3 compare:v4] < 2;
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

id PLDateToISO8160StringWithLocalTimeZone(void *a1)
{
  v1 = MEMORY[0x1E695DFE8];
  v2 = a1;
  v3 = [v1 localTimeZone];
  v4 = [MEMORY[0x1E696AC80] stringFromDate:v2 timeZone:v3 formatOptions:4083];

  return v4;
}

id getGEOCountryConfigurationClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getGEOCountryConfigurationClass_softClass;
  v7 = getGEOCountryConfigurationClass_softClass;
  if (!getGEOCountryConfigurationClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getGEOCountryConfigurationClass_block_invoke;
    v3[3] = &unk_1E7577EA0;
    v3[4] = &v4;
    __getGEOCountryConfigurationClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_19C0CCD0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __SimulateGeoServiceAutoNaviProvider_block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  simulateGeoServiceAutoNaviProvider = [v0 BOOLForKey:@"CLSGeoServiceSimulateAutoNaviProvider"];
}

Class __getGEOCountryConfigurationClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!GeoServicesLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __GeoServicesLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7568238;
    v8 = 0;
    GeoServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!GeoServicesLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *GeoServicesLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"PLRevGeoLocationHelper.m" lineNumber:15 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("GEOCountryConfiguration");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getGEOCountryConfigurationClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"PLRevGeoLocationHelper.m" lineNumber:16 description:{@"Unable to find class %s", "GEOCountryConfiguration"}];

LABEL_10:
    __break(1u);
  }

  getGEOCountryConfigurationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __GeoServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  GeoServicesLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t SimulateGeoServiceAutoNaviProvider()
{
  if (SimulateGeoServiceAutoNaviProvider_onceToken != -1)
  {
    dispatch_once(&SimulateGeoServiceAutoNaviProvider_onceToken, &__block_literal_global_16819);
  }

  return simulateGeoServiceAutoNaviProvider;
}

void sub_19C0CD468(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19C0D16F0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_19C0D180C(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v10 = objc_begin_catch(exc_buf);
      v11 = [v10 name];
      v12 = [v11 isEqualToString:*MEMORY[0x1E695D930]];

      if (v12)
      {
        v13 = [v10 reason];
        if ([v13 hasPrefix:@"Unhandled error"])
        {
          v14 = [v10 reason];
          v15 = [v14 containsString:@"occurred during faulting and was thrown:"];

          if (v15)
          {
            v16 = [v10 userInfo];
            v17 = [v16 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

            v18 = PLBackendGetLog();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              LODWORD(a9) = 138412290;
              *(&a9 + 4) = v17;
              _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_ERROR, "pl_wrapperForPerformBlock exception: underlying error: %@", &a9, 0xCu);
            }

            [v9 _logDatabaseDirectoryDiagnosticInfo];
          }
        }

        else
        {
        }
      }

      if ([v9 pl_suppressUnhandledErrorDuringPerform])
      {

        objc_end_catch();
        JUMPOUT(0x19C0D17B0);
      }

      v19 = v10;
      objc_exception_throw(v10);
    }

    objc_begin_catch(exc_buf);
    JUMPOUT(0x19C0D17B4);
  }

  _Unwind_Resume(exc_buf);
}

void sub_19C0D1960(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x19C0D1974);
  }

  _Unwind_Resume(a1);
}

void sub_19C0D1988(_Unwind_Exception *a1)
{
  if (v1)
  {
    JUMPOUT(0x19C0D1990);
  }

  _Unwind_Resume(a1);
}

void sub_19C0D1998(uint64_t a1, int a2)
{
  if (!a2)
  {
    sub_19C0D199C();
  }

  objc_terminate();
}

void sub_19C0D36F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__17410(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C0D39E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C0D4080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_19C0D5394(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C0D5CEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C0D5E10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C0D5FE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C0D6670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C0D698C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C0D6CD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(&a26, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__17542(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C0D70B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C0D74B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(&a26, 8);
  _Unwind_Resume(a1);
}

void sub_19C0D9F00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__17653(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C0DB41C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__17777(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C0DB770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_19C0DBA04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_19C0DBC84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_19C0DBF0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_19C0DC1A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_19C0DC41C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_19C0DC650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_19C0DC884(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_19C0DD128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__17927(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C0DE030(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, void *a12, os_signpost_id_t a13, os_activity_scope_state_s a14, SEL sel)
{
  if (a11 == 1)
  {
    os_activity_scope_leave(&a14);
  }

  if (a13)
  {
    v17 = PLRequestGetLog();
    v18 = v17;
    if (a13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
    {
      Name = sel_getName(sel);
      *(v15 - 112) = 136446210;
      *(v15 - 108) = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v18, OS_SIGNPOST_INTERVAL_END, a13, "PLXPC Sync", "%{public}s", (v15 - 112), 0xCu);
    }
  }

  _Unwind_Resume(a1);
}

void sub_19C0DE3D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, void *a12, os_signpost_id_t a13, os_activity_scope_state_s a14, SEL sel, __int128 buf)
{
  if (a11 == 1)
  {
    os_activity_scope_leave(&a14);
  }

  if (a13)
  {
    v17 = PLRequestGetLog();
    v18 = v17;
    if (a13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
    {
      Name = sel_getName(sel);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v18, OS_SIGNPOST_INTERVAL_END, a13, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  _Unwind_Resume(a1);
}

void sub_19C0DEBB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, void *a14, os_signpost_id_t a15, os_activity_scope_state_s a16, SEL sel, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, __int128 buf)
{
  if (a13 == 1)
  {
    os_activity_scope_leave(&a16);
  }

  if (a15)
  {
    v23 = PLRequestGetLog();
    v24 = v23;
    if (a15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      Name = sel_getName(sel);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v24, OS_SIGNPOST_INTERVAL_END, a15, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  _Unwind_Resume(a1);
}

void sub_19C0DF0B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, void *a14, os_signpost_id_t a15, os_activity_scope_state_s a16, SEL sel, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, __int128 buf)
{
  if (a13 == 1)
  {
    os_activity_scope_leave(&a16);
  }

  if (a15)
  {
    v23 = PLRequestGetLog();
    v24 = v23;
    if (a15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      Name = sel_getName(sel);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v24, OS_SIGNPOST_INTERVAL_END, a15, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  _Unwind_Resume(a1);
}

void sub_19C0E1C10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, void *a20, os_signpost_id_t a21, os_activity_scope_state_s a22, SEL sel, int buf)
{
  if (a19 == 1)
  {
    os_activity_scope_leave(&a22);
  }

  if (a21)
  {
    v26 = PLRequestGetLog();
    v27 = v26;
    if (a21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
    {
      Name = sel_getName(sel);
      buf = 136446210;
      *(v24 + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v27, OS_SIGNPOST_INTERVAL_END, a21, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  _Unwind_Resume(a1);
}

void sub_19C0E555C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, void *a18, os_signpost_id_t a19, os_activity_scope_state_s a20, SEL sel)
{
  if (a17 == 1)
  {
    os_activity_scope_leave(&a20);
  }

  if (a19)
  {
    v23 = PLRequestGetLog();
    v24 = v23;
    if (a19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      Name = sel_getName(sel);
      *(v21 - 96) = 136446210;
      *(v21 - 92) = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v24, OS_SIGNPOST_INTERVAL_END, a19, "PLXPC Sync", "%{public}s", (v21 - 96), 0xCu);
    }
  }

  _Unwind_Resume(a1);
}

void sub_19C0E6A54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, void *a10, os_signpost_id_t a11, os_activity_scope_state_s a12, SEL sel, __int128 buf)
{
  if (a9 == 1)
  {
    os_activity_scope_leave(&a12);
  }

  if (a11)
  {
    v15 = PLRequestGetLog();
    v16 = v15;
    if (a11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      Name = sel_getName(sel);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v16, OS_SIGNPOST_INTERVAL_END, a11, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  _Unwind_Resume(a1);
}

void sub_19C0E77C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, void *a16, os_signpost_id_t a17, os_activity_scope_state_s a18, SEL sel)
{
  if (a15 == 1)
  {
    os_activity_scope_leave(&a18);
  }

  if (a17)
  {
    v21 = PLRequestGetLog();
    v22 = v21;
    if (a17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      Name = sel_getName(sel);
      *(v19 - 80) = 136446210;
      *(v19 - 76) = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v22, OS_SIGNPOST_INTERVAL_END, a17, "PLXPC Sync", "%{public}s", (v19 - 80), 0xCu);
    }
  }

  _Unwind_Resume(a1);
}

void sub_19C0E7B3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, void *a10, os_signpost_id_t a11, os_activity_scope_state_s a12, SEL sel, __int128 buf)
{
  if (a9 == 1)
  {
    os_activity_scope_leave(&a12);
  }

  if (a11)
  {
    v15 = PLRequestGetLog();
    v16 = v15;
    if (a11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      Name = sel_getName(sel);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v16, OS_SIGNPOST_INTERVAL_END, a11, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  _Unwind_Resume(a1);
}

void sub_19C0E7EB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, void *a16, os_signpost_id_t a17, os_activity_scope_state_s a18, SEL sel)
{
  if (a15 == 1)
  {
    os_activity_scope_leave(&a18);
  }

  if (a17)
  {
    v21 = PLRequestGetLog();
    v22 = v21;
    if (a17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      Name = sel_getName(sel);
      *(v19 - 64) = 136446210;
      *(v19 - 60) = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v22, OS_SIGNPOST_INTERVAL_END, a17, "PLXPC Sync", "%{public}s", (v19 - 64), 0xCu);
    }
  }

  _Unwind_Resume(a1);
}

void sub_19C0E82CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, void *a16, os_signpost_id_t a17, os_activity_scope_state_s a18, SEL sel)
{
  if (a15 == 1)
  {
    os_activity_scope_leave(&a18);
  }

  if (a17)
  {
    v21 = PLRequestGetLog();
    v22 = v21;
    if (a17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      Name = sel_getName(sel);
      *(v19 - 64) = 136446210;
      *(v19 - 60) = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v22, OS_SIGNPOST_INTERVAL_END, a17, "PLXPC Sync", "%{public}s", (v19 - 64), 0xCu);
    }
  }

  _Unwind_Resume(a1);
}

void sub_19C0E9588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, void *a10, os_signpost_id_t a11, os_activity_scope_state_s a12, SEL sel, __int128 buf)
{
  if (a9 == 1)
  {
    os_activity_scope_leave(&a12);
  }

  if (a11)
  {
    v15 = PLRequestGetLog();
    v16 = v15;
    if (a11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      Name = sel_getName(sel);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v16, OS_SIGNPOST_INTERVAL_END, a11, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  _Unwind_Resume(a1);
}