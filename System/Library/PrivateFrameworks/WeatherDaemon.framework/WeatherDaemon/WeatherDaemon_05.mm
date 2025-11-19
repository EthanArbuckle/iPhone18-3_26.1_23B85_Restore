void XPCActivityManager.registerActivity(_:handler:)(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *(a1 + 2);
  swift_beginAccess();
  swift_bridgeObjectRetain_n();
  swift_isUniquelyReferenced_nonNull_native();
  v20 = *(v2 + 16);
  v7 = OUTLINED_FUNCTION_36();
  sub_1B609DBBC(v7, v8, v9, v5, v4, v6);
  *(v2 + 16) = v20;
  swift_endAccess();
  sub_1B602D048(a2, v21);
  swift_beginAccess();
  sub_1B609A600(v21, v5, v4);
  swift_endAccess();
  if (qword_1EDAAEB48 != -1)
  {
    OUTLINED_FUNCTION_1_2();
  }

  v10 = sub_1B6220B34();
  __swift_project_value_buffer(v10, qword_1EDAC29D0);
  sub_1B6220784();
  v11 = sub_1B6220B14();
  v12 = sub_1B62217F4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = OUTLINED_FUNCTION_41();
    v14 = OUTLINED_FUNCTION_39();
    v21[0] = v14;
    *v13 = 136446210;
    v15 = OUTLINED_FUNCTION_36();
    *(v13 + 4) = sub_1B602EEB0(v15, v16, v17);
    OUTLINED_FUNCTION_47(&dword_1B6020000, v18, v19, "Adding activity: %{public}s");
    __swift_destroy_boxed_opaque_existential_1(v14);
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_30();
  }
}

uint64_t sub_1B609A600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1B60273A4(a1, v8);
    swift_isUniquelyReferenced_nonNull_native();
    v7 = *v3;
    sub_1B609DA70(v8, a2, a3);

    *v3 = v7;
  }

  else
  {
    sub_1B6037288(a1, &unk_1EB924A58);
    sub_1B609D690(a2, a3, v8);

    return sub_1B6037288(v8, &unk_1EB924A58);
  }

  return result;
}

uint64_t sub_1B609A6D4()
{
  OUTLINED_FUNCTION_37();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924960);
  v4 = OUTLINED_FUNCTION_0(v3);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - v5;
  type metadata accessor for WeatherDataObserver(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_45_0();
  if (__swift_getEnumTagSinglePayload(v1, 1, v8) == 1)
  {
    sub_1B6037288(v1, &qword_1EB924960);
    sub_1B609D78C(v0, v6);
    sub_1B609DFBC(v0);
    return sub_1B6037288(v6, &qword_1EB924960);
  }

  else
  {
    sub_1B60730D8();
    swift_isUniquelyReferenced_nonNull_native();
    v11 = *v1;
    sub_1B609DE54(v2, v0);
    *v1 = v11;
    return sub_1B609DFBC(v0);
  }
}

uint64_t XPCActivityManager.scheduleActivity(_:on:with:)(uint64_t a1, double a2)
{
  v3 = v2;
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 25);
  sub_1B621D874();
  v11 = v10;
  if (v10 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v10 >= 9.22337204e18)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_15;
  }

  if (a2 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (a2 < 9.22337204e18)
  {
    if (qword_1EDAAEB48 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  __break(1u);
LABEL_18:
  OUTLINED_FUNCTION_1_2();
LABEL_8:
  v12 = sub_1B6220B34();
  __swift_project_value_buffer(v12, qword_1EDAC29D0);
  sub_1B6220784();
  v13 = sub_1B6220B14();
  v14 = sub_1B62217F4();

  if (os_log_type_enabled(v13, v14))
  {
    v26 = v9;
    v15 = v8;
    v16 = v3;
    v17 = OUTLINED_FUNCTION_39();
    v18 = OUTLINED_FUNCTION_39();
    aBlock[0] = v18;
    *v17 = 136446722;
    *(v17 + 4) = sub_1B602EEB0(v5, v6, aBlock);
    *(v17 + 12) = 2050;
    *(v17 + 14) = v11;
    *(v17 + 22) = 2050;
    *(v17 + 24) = a2;
    _os_log_impl(&dword_1B6020000, v13, v14, "Update scheduling of activity: %{public}s with delay: %{public}lld and grace period: %{public}lld", v17, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v18);
    OUTLINED_FUNCTION_30();
    v3 = v16;
    v8 = v15;
    v9 = v26;
    OUTLINED_FUNCTION_30();
  }

  v19 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v19, *MEMORY[0x1E69E9C68], v11);
  xpc_dictionary_set_int64(v19, *MEMORY[0x1E69E9C98], a2);
  xpc_dictionary_set_BOOL(v19, *MEMORY[0x1E69E9D88], 1);
  wd_xpc_dictionary_set_requires_network_connectivity(v19, v9);
  v20 = MEMORY[0x1E69E9D78];
  if (v8)
  {
    v20 = MEMORY[0x1E69E9D70];
  }

  xpc_dictionary_set_string(v19, *MEMORY[0x1E69E9D68], *v20);
  v21 = sub_1B6221254();
  xpc_activity_unregister((v21 + 32));

  v22 = swift_allocObject();
  *(v22 + 16) = v3;
  *(v22 + 24) = v5;
  *(v22 + 32) = v6;
  *(v22 + 40) = v7;
  *(v22 + 48) = v8;
  *(v22 + 49) = v9;
  aBlock[4] = sub_1B609DD84;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B6098704;
  aBlock[3] = &block_descriptor_18;
  v23 = _Block_copy(aBlock);
  sub_1B6220784();

  v24 = sub_1B6221254();
  xpc_activity_register((v24 + 32), v19, v23);

  _Block_release(v23);
  return swift_unknownObjectRelease();
}

void sub_1B609ABD4(_xpc_activity_s *a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, double a6)
{
  v8[0] = a3;
  v8[1] = a4;
  *&v8[2] = a6;
  v9 = a5;
  v7 = MEMORY[0x1B8C91460](a1, a2, a3, a4);
  sub_1B6098EBC(v8, a1);

  objc_autoreleasePoolPop(v7);
}

Swift::Void __swiftcall XPCActivityManager.unscheduleActivity(_:)(WeatherDaemon::XPCActivity a1)
{
  if (qword_1EDAAEB48 != -1)
  {
    OUTLINED_FUNCTION_1_2();
  }

  v1 = sub_1B6220B34();
  __swift_project_value_buffer(v1, qword_1EDAC29D0);
  sub_1B6220784();
  v2 = sub_1B6220B14();
  v3 = sub_1B62217F4();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_41();
    v11 = OUTLINED_FUNCTION_39();
    *v4 = 136446210;
    v5 = OUTLINED_FUNCTION_36();
    *(v4 + 4) = sub_1B602EEB0(v5, v6, v7);
    OUTLINED_FUNCTION_47(&dword_1B6020000, v8, v9, "Unregistering activity: %{public}s");
    __swift_destroy_boxed_opaque_existential_1(v11);
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_30();
  }

  OUTLINED_FUNCTION_36();
  v10 = sub_1B6221254();
  xpc_activity_unregister((v10 + 32));
}

void sub_1B609AD64(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, unint64_t a6, int a7, _xpc_activity_s *a8, double a9)
{
  v45 = a3;
  v46 = a7;
  v49 = a4;
  v50 = a5;
  v44 = *&a2;
  v48 = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v42 - v13;
  v15 = sub_1B621D8F4();
  v43 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v42 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDAAEB48 != -1)
  {
    swift_once();
  }

  v17 = sub_1B6220B34();
  __swift_project_value_buffer(v17, qword_1EDAC29D0);
  sub_1B6220784();
  v18 = sub_1B6220B14();
  v19 = sub_1B62217F4();

  v20 = os_log_type_enabled(v18, v19);
  v47 = v15;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v51[0] = v22;
    *v21 = 136446210;
    *(v21 + 4) = sub_1B602EEB0(v50, a6, v51);
    _os_log_impl(&dword_1B6020000, v18, v19, "Activity completed running: %{public}s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x1B8C91C90](v22, -1, -1);
    MEMORY[0x1B8C91C90](v21, -1, -1);
  }

  if (!xpc_activity_set_state(a8, 5))
  {
    sub_1B6220784();
    v23 = sub_1B6220B14();
    v24 = sub_1B62217F4();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v51[0] = v26;
      *v25 = 136446210;
      *(v25 + 4) = sub_1B602EEB0(v50, a6, v51);
      _os_log_impl(&dword_1B6020000, v23, v24, "Activity failed to enter done state: %{public}s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x1B8C91C90](v26, -1, -1);
      MEMORY[0x1B8C91C90](v25, -1, -1);
    }
  }

  sub_1B6220784();
  v27 = sub_1B6220B14();
  v28 = sub_1B62217F4();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v51[0] = v30;
    *v29 = 136446210;
    *(v29 + 4) = sub_1B602EEB0(v50, a6, v51);
    _os_log_impl(&dword_1B6020000, v27, v28, "Activity entered done state: %{public}s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v30);
    MEMORY[0x1B8C91C90](v30, -1, -1);
    MEMORY[0x1B8C91C90](v29, -1, -1);
  }

  v31 = v47;
  sub_1B609E118();
  if (__swift_getEnumTagSinglePayload(v14, 1, v31) == 1)
  {
    sub_1B6037288(v14, &qword_1EB924600);
    sub_1B6220784();
    v32 = sub_1B6220B14();
    v33 = sub_1B62217F4();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v51[0] = v35;
      *v34 = 136446210;
      *(v34 + 4) = sub_1B602EEB0(v50, a6, v51);
      _os_log_impl(&dword_1B6020000, v32, v33, "Activity did not provide new schedule: %{public}s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x1B8C91C90](v35, -1, -1);
      MEMORY[0x1B8C91C90](v34, -1, -1);
    }

    v37 = v49;
  }

  else
  {
    v39 = v42;
    v38 = v43;
    (*(v43 + 32))(v42, v14, v31);
    v37 = v49;
    v51[0] = v50;
    v51[1] = a6;
    *&v51[2] = a9;
    v52 = v46 & 1;
    v40 = v44;
    if (v45)
    {
      v40 = a9;
    }

    v53 = BYTE1(v46) & 1;
    XPCActivityManager.scheduleActivity(_:on:with:)(v51, v40);
    v36 = (*(v38 + 8))(v39, v31);
  }

  v41 = *(v37 + 32);
  if (v41)
  {
    v41(v36);
  }
}

void sub_1B609B360()
{
  OUTLINED_FUNCTION_5_9();
  if (v4)
  {
    OUTLINED_FUNCTION_4_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_20_0();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_4();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_28(v2, v5, &qword_1EB9249F0, &unk_1B6224B00);
  OUTLINED_FUNCTION_17_0();
  type metadata accessor for InterpolationElement();
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_16_1();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_2_10(v8);
    sub_1B604CE7C(v9, v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_8_5();
  }
}

void sub_1B609B43C()
{
  OUTLINED_FUNCTION_22_0();
  if (v4)
  {
    OUTLINED_FUNCTION_7();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_21();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6();
    }
  }

  OUTLINED_FUNCTION_13_0();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924980);
    v7 = swift_allocObject();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_10_3();
    v7[2] = v3;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v9 = OUTLINED_FUNCTION_29_0();
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v3] <= v9)
    {
      memmove(v9, v10, 16 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v9, v10, 16 * v3);
  }
}

void sub_1B609B50C()
{
  OUTLINED_FUNCTION_22_0();
  if (v4)
  {
    OUTLINED_FUNCTION_7();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_21();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6();
    }
  }

  OUTLINED_FUNCTION_13_0();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924A10);
    v7 = OUTLINED_FUNCTION_31_0();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_12_2();
    v7[2] = v3;
    v7[3] = v8;
  }

  v9 = OUTLINED_FUNCTION_29_0();
  if (v1)
  {
    OUTLINED_FUNCTION_42_0();
    if (v15)
    {
      v16 = v14 > v11;
    }

    else
    {
      v16 = 0;
    }

    if (!v16)
    {
      memmove(v11, v12, v13);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    memcpy(v9, v10, 40 * v3);
  }
}

void sub_1B609B5D8()
{
  OUTLINED_FUNCTION_22_0();
  if (v4)
  {
    OUTLINED_FUNCTION_7();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_21();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6();
    }
  }

  OUTLINED_FUNCTION_9_4();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924AD8);
    v7 = OUTLINED_FUNCTION_32_0();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_10_3();
    v7[2] = v2;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v9 = OUTLINED_FUNCTION_38_1();
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v2] <= v9)
    {
      memmove(v9, v10, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1B609B6CC()
{
  OUTLINED_FUNCTION_22_0();
  if (v4)
  {
    OUTLINED_FUNCTION_7();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_21();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6();
    }
  }

  OUTLINED_FUNCTION_13_0();
  if (v2)
  {
    OUTLINED_FUNCTION_49(v7, v8, v9, v10, v11);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v12[2] = v3;
    v12[3] = 2 * ((v13 - 32) / 64);
  }

  v14 = OUTLINED_FUNCTION_29_0();
  if (v1)
  {
    OUTLINED_FUNCTION_42_0();
    if (v20)
    {
      v21 = v19 > v16;
    }

    else
    {
      v21 = 0;
    }

    if (!v21)
    {
      memmove(v16, v17, v18);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    memcpy(v14, v15, v3 << 6);
  }
}

void sub_1B609B790()
{
  OUTLINED_FUNCTION_22_0();
  if (v4)
  {
    OUTLINED_FUNCTION_7();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_21();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6();
    }
  }

  OUTLINED_FUNCTION_13_0();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9248C8);
    v7 = OUTLINED_FUNCTION_31_0();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_12_2();
    v7[2] = v3;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v9 = OUTLINED_FUNCTION_29_0();
  if (v1)
  {
    if (v7 != v0 || &v10[40 * v3] <= v9)
    {
      memmove(v9, v10, 40 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v9, v10, 40 * v3);
  }
}

void sub_1B609B86C()
{
  OUTLINED_FUNCTION_5_9();
  if (v4)
  {
    OUTLINED_FUNCTION_4_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_20_0();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_4();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_28(v2, v5, &qword_1EB9248D8, &unk_1B62249F8);
  OUTLINED_FUNCTION_17_0();
  type metadata accessor for ForecastSummary();
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_16_1();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_2_10(v8);
    sub_1B604CE7C(v9, v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_8_5();
  }
}

void sub_1B609B948()
{
  OUTLINED_FUNCTION_22_0();
  if (v4)
  {
    OUTLINED_FUNCTION_7();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_21();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6();
    }
  }

  OUTLINED_FUNCTION_9_4();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9248B8);
    v7 = OUTLINED_FUNCTION_32_0();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_10_3();
    v7[2] = v2;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v9 = OUTLINED_FUNCTION_38_1();
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v2] <= v9)
    {
      memmove(v9, v10, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1B609BA14()
{
  OUTLINED_FUNCTION_5_9();
  if (v4)
  {
    OUTLINED_FUNCTION_4_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_20_0();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_4();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_28(v2, v5, &qword_1EB9248B0, &unk_1B62249D0);
  OUTLINED_FUNCTION_17_0();
  type metadata accessor for MarineHourForecast();
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_16_1();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_2_10(v8);
    sub_1B604CE7C(v9, v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_8_5();
  }
}

void sub_1B609BAF0()
{
  OUTLINED_FUNCTION_22_0();
  if (v4)
  {
    OUTLINED_FUNCTION_7();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_21();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6();
    }
  }

  OUTLINED_FUNCTION_9_4();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924898);
    v7 = OUTLINED_FUNCTION_32_0();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_10_3();
    v7[2] = v2;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v9 = OUTLINED_FUNCTION_38_1();
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v2] <= v9)
    {
      memmove(v9, v10, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1B609BBBC()
{
  OUTLINED_FUNCTION_5_9();
  if (v4)
  {
    OUTLINED_FUNCTION_4_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_20_0();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_4();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_28(v2, v5, &qword_1EB924890, &unk_1B62249B0);
  OUTLINED_FUNCTION_17_0();
  type metadata accessor for TideEvent();
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_16_1();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_2_10(v8);
    sub_1B604CE7C(v9, v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_8_5();
  }
}

void sub_1B609BC98()
{
  OUTLINED_FUNCTION_5_9();
  if (v4)
  {
    OUTLINED_FUNCTION_4_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_20_0();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_4();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_28(v2, v5, &qword_1EB924888, &unk_1B6225E30);
  OUTLINED_FUNCTION_17_0();
  type metadata accessor for HourTide();
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_16_1();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_2_10(v8);
    sub_1B604CE7C(v9, v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_8_5();
  }
}

void sub_1B609BD74()
{
  OUTLINED_FUNCTION_5_9();
  if (v4)
  {
    OUTLINED_FUNCTION_4_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_20_0();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_4();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_28(v2, v5, &qword_1EB924878, &unk_1B6224998);
  OUTLINED_FUNCTION_17_0();
  type metadata accessor for WeatherAlert();
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_16_1();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_2_10(v8);
    sub_1B604CE7C(v9, v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_8_5();
  }
}

void sub_1B609BE50()
{
  OUTLINED_FUNCTION_5_9();
  if (v4)
  {
    OUTLINED_FUNCTION_4_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_20_0();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_4();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_28(v2, v5, &qword_1EB924870, &unk_1B6224990);
  OUTLINED_FUNCTION_17_0();
  type metadata accessor for TrendDeviation();
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_16_1();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_2_10(v8);
    sub_1B604CE7C(v9, v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_8_5();
  }
}

void sub_1B609BF2C()
{
  OUTLINED_FUNCTION_5_9();
  if (v4)
  {
    OUTLINED_FUNCTION_4_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_20_0();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_4();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_28(v2, v5, &qword_1EB924868, &unk_1B6224988);
  OUTLINED_FUNCTION_17_0();
  type metadata accessor for WeatherComparison();
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_16_1();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_2_10(v8);
    sub_1B604CE7C(v9, v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_8_5();
  }
}

void sub_1B609C008()
{
  OUTLINED_FUNCTION_5_9();
  if (v4)
  {
    OUTLINED_FUNCTION_4_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_20_0();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_4();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_28(v2, v5, &qword_1EB924930, &unk_1B6224A50);
  OUTLINED_FUNCTION_17_0();
  type metadata accessor for Weather();
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_16_1();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_2_10(v8);
    sub_1B604CE7C(v9, v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_8_5();
  }
}

void sub_1B609C0E4()
{
  OUTLINED_FUNCTION_22_0();
  if (v4)
  {
    OUTLINED_FUNCTION_7();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_21();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6();
    }
  }

  OUTLINED_FUNCTION_13_0();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924A18);
    v7 = OUTLINED_FUNCTION_31_0();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_12_2();
    v7[2] = v3;
    v7[3] = v8;
  }

  v9 = OUTLINED_FUNCTION_29_0();
  if (v1)
  {
    OUTLINED_FUNCTION_42_0();
    if (v15)
    {
      v16 = v14 > v11;
    }

    else
    {
      v16 = 0;
    }

    if (!v16)
    {
      memmove(v11, v12, v13);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    memcpy(v9, v10, 80 * v3);
  }
}

void sub_1B609C1B0()
{
  OUTLINED_FUNCTION_22_0();
  if (v6)
  {
    OUTLINED_FUNCTION_7();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_21();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6();
    }
  }

  OUTLINED_FUNCTION_9_4();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924940);
    v4 = 56;
    v9 = OUTLINED_FUNCTION_40_1();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_12_2();
    v9[2] = v2;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_46();
  if (v1)
  {
    if (v9 != v0 || v5 + 56 * v2 <= v4)
    {
      v12 = OUTLINED_FUNCTION_27();
      memmove(v12, v13, v14);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924948);
    OUTLINED_FUNCTION_26_0();
  }
}

void sub_1B609C2C4()
{
  OUTLINED_FUNCTION_22_0();
  if (v4)
  {
    OUTLINED_FUNCTION_7();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_21();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6();
    }
  }

  OUTLINED_FUNCTION_13_0();
  if (v2)
  {
    OUTLINED_FUNCTION_49(v7, v8, v9, v10, v11);
    v12 = swift_allocObject();
    _swift_stdlib_malloc_size(v12);
    OUTLINED_FUNCTION_43();
    v12[2] = v3;
    v12[3] = v13;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = OUTLINED_FUNCTION_29_0();
  if (v1)
  {
    if (v12 != v0 || &v15[8 * v3] <= v14)
    {
      memmove(v14, v15, 8 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v14, v15, 8 * v3);
  }
}

void sub_1B609C398()
{
  OUTLINED_FUNCTION_5_9();
  if (v4)
  {
    OUTLINED_FUNCTION_4_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_20_0();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_4();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_28(v2, v5, &qword_1EB9249B0, &unk_1B6224AC0);
  OUTLINED_FUNCTION_17_0();
  type metadata accessor for MarineForecast();
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_16_1();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_2_10(v8);
    sub_1B604CE7C(v9, v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_8_5();
  }
}

void sub_1B609C474()
{
  OUTLINED_FUNCTION_5_9();
  if (v4)
  {
    OUTLINED_FUNCTION_4_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_20_0();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_4();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_28(v2, v5, &qword_1EB9249B8, &unk_1B6225E20);
  OUTLINED_FUNCTION_17_0();
  type metadata accessor for TideEvents();
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_16_1();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_2_10(v8);
    sub_1B604CE7C(v9, v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_8_5();
  }
}

void sub_1B609C550()
{
  OUTLINED_FUNCTION_5_9();
  if (v4)
  {
    OUTLINED_FUNCTION_4_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_20_0();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_4();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_28(v2, v5, &qword_1EB924950, &unk_1B6224A70);
  OUTLINED_FUNCTION_17_0();
  type metadata accessor for CurrentWeather();
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_16_1();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_2_10(v8);
    sub_1B604CE7C(v9, v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_8_5();
  }
}

void sub_1B609C62C()
{
  OUTLINED_FUNCTION_5_9();
  if (v4)
  {
    OUTLINED_FUNCTION_4_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_20_0();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_4();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_28(v2, v5, &qword_1EB924A38, &unk_1B6224B48);
  OUTLINED_FUNCTION_17_0();
  type metadata accessor for WeatherRequest();
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_16_1();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_2_10(v8);
    sub_1B604CE7C(v9, v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_8_5();
  }
}

void sub_1B609C708()
{
  OUTLINED_FUNCTION_5_9();
  if (v4)
  {
    OUTLINED_FUNCTION_4_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_20_0();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_4();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_28(v2, v5, &qword_1EB9249D0, &unk_1B6224AE0);
  OUTLINED_FUNCTION_17_0();
  type metadata accessor for WeatherServiceRequestLocation();
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_16_1();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_2_10(v8);
    sub_1B604CE7C(v9, v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_8_5();
  }
}

void sub_1B609C7E4()
{
  OUTLINED_FUNCTION_22_0();
  if (v3)
  {
    OUTLINED_FUNCTION_7();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_21();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_1B609D284(*(v0 + 16), v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9249D8);
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_16_1();
  if (v1)
  {
    v8 = OUTLINED_FUNCTION_2_10(v7);
    sub_1B609D55C(v8, v9, v10);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_8_5();
  }
}

void sub_1B609C8CC()
{
  OUTLINED_FUNCTION_5_9();
  if (v4)
  {
    OUTLINED_FUNCTION_4_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_20_0();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_4();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_28(v2, v5, &qword_1EB924A28, &unk_1B6225E60);
  OUTLINED_FUNCTION_17_0();
  type metadata accessor for WeatherDataResponse();
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_16_1();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_2_10(v8);
    sub_1B604CE7C(v9, v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_8_5();
  }
}

void sub_1B609C9A8()
{
  OUTLINED_FUNCTION_5_9();
  if (v4)
  {
    OUTLINED_FUNCTION_4_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_20_0();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_4();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_28(v2, v5, &qword_1EB924988, &unk_1B6224AA0);
  OUTLINED_FUNCTION_17_0();
  type metadata accessor for WeatherModel();
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_16_1();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_2_10(v8);
    sub_1B604CE7C(v9, v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_8_5();
  }
}

void sub_1B609CAC0()
{
  OUTLINED_FUNCTION_22_0();
  if (v6)
  {
    OUTLINED_FUNCTION_7();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_21();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6();
    }
  }

  OUTLINED_FUNCTION_9_4();
  if (v3)
  {
    OUTLINED_FUNCTION_49(v9, v10, v11, v12, v13);
    v14 = OUTLINED_FUNCTION_32_0();
    _swift_stdlib_malloc_size(v14);
    OUTLINED_FUNCTION_10_3();
    v14[2] = v2;
    v14[3] = v15;
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_46();
  if (v1)
  {
    if (v14 != v0 || v5 + 16 * v2 <= v4)
    {
      v17 = OUTLINED_FUNCTION_27();
      memmove(v17, v18, v19);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924920);
    OUTLINED_FUNCTION_26_0();
  }
}

void sub_1B609CB90()
{
  OUTLINED_FUNCTION_22_0();
  if (v6)
  {
    OUTLINED_FUNCTION_7();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_21();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6();
    }
  }

  OUTLINED_FUNCTION_9_4();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924908);
    v9 = swift_allocObject();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_43();
    v9[2] = v2;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_46();
  if (v1)
  {
    if (v9 != v0 || v5 + 8 * v2 <= v4)
    {
      v12 = OUTLINED_FUNCTION_27();
      memmove(v12, v13, v14);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924910);
    OUTLINED_FUNCTION_26_0();
  }
}

void sub_1B609CC7C()
{
  OUTLINED_FUNCTION_22_0();
  if (v6)
  {
    OUTLINED_FUNCTION_7();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_21();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6();
    }
  }

  OUTLINED_FUNCTION_9_4();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB9249C0);
    v4 = 24;
    v9 = OUTLINED_FUNCTION_40_1();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_12_2();
    v9[2] = v2;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_46();
  if (v1)
  {
    if (v9 != v0 || v5 + 24 * v2 <= v4)
    {
      v12 = OUTLINED_FUNCTION_27();
      memmove(v12, v13, v14);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924648);
    OUTLINED_FUNCTION_26_0();
  }
}

void sub_1B609CD68()
{
  OUTLINED_FUNCTION_5_9();
  if (v4)
  {
    OUTLINED_FUNCTION_4_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_20_0();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_4();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_28(v2, v5, &qword_1EB9248C0, &unk_1B62249E0);
  OUTLINED_FUNCTION_17_0();
  type metadata accessor for DayPartForecast();
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_16_1();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_2_10(v8);
    sub_1B604CE7C(v9, v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_8_5();
  }
}

void sub_1B609CE58()
{
  OUTLINED_FUNCTION_22_0();
  if (v4)
  {
    OUTLINED_FUNCTION_7();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_21();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6();
    }
  }

  OUTLINED_FUNCTION_9_4();
  if (v3)
  {
    OUTLINED_FUNCTION_49(v7, v8, v9, v10, v11);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v12[2] = v2;
    v12[3] = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = OUTLINED_FUNCTION_38_1();
  if (v1)
  {
    if (v12 != v0 || &v15[v2] <= v14)
    {
      memmove(v14, v15, v2);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v14, v15, v2);
  }
}

void sub_1B609CF18()
{
  OUTLINED_FUNCTION_5_9();
  if (v4)
  {
    OUTLINED_FUNCTION_4_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_20_0();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_4();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_28(v2, v5, &qword_1EB9248E8, &unk_1B6224A08);
  OUTLINED_FUNCTION_17_0();
  type metadata accessor for PrecipitationConditionParameter();
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_16_1();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_2_10(v8);
    sub_1B604CE7C(v9, v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_8_5();
  }
}

void sub_1B609CFF4()
{
  OUTLINED_FUNCTION_22_0();
  if (v4)
  {
    OUTLINED_FUNCTION_7();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_21();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6();
    }
  }

  OUTLINED_FUNCTION_9_4();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9248A0);
    v7 = OUTLINED_FUNCTION_40_1();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_12_2();
    v7[2] = v2;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v9 = OUTLINED_FUNCTION_38_1();
  if (v1)
  {
    if (v7 != v0 || &v10[72 * v2] <= v9)
    {
      memmove(v9, v10, 72 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1B609D0D4()
{
  OUTLINED_FUNCTION_5_9();
  if (v4)
  {
    OUTLINED_FUNCTION_4_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_20_0();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_4();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_28(v2, v5, &qword_1EB9248A8, &unk_1B62249C8);
  OUTLINED_FUNCTION_17_0();
  sub_1B621D944();
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_16_1();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_2_10(v8);
    sub_1B604CE7C(v9, v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_8_5();
  }
}

void *sub_1B609D200(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9249A8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 40);
  return v4;
}

size_t sub_1B609D284(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9249E0);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9249D8) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_1B609D3A4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_10(a3, result);
  }

  return result;
}

char *sub_1B609D3C8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_10(a3, result);
  }

  return result;
}

char *sub_1B609D400(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[64 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_10(a3, result);
  }

  return result;
}

char *sub_1B609D498(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_10(a3, result);
  }

  return result;
}

char *sub_1B609D4C0(char *result, size_t a2, char *a3)
{
  if (a3 != result || &result[a2] <= a3)
  {
    return OUTLINED_FUNCTION_25(result, a3, a2);
  }

  return result;
}

char *sub_1B609D4DC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_10(a3, result);
  }

  return result;
}

uint64_t sub_1B609D55C(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9249D8), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9249D8);

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void sub_1B609D648(_xpc_activity_s *a1)
{
  if (*(v1 + 41))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  sub_1B6098454(a1, *(v1 + 16), *(v1 + 24), v2 | *(v1 + 40), *(v1 + 48));
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double sub_1B609D690@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_1B604EF94(a1, a2);
  if (v6)
  {
    v7 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924AC8);
    sub_1B6221C44();

    sub_1B60273A4((*(v9 + 56) + 40 * v7), a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924838);
    sub_1B6221C64();
    *v3 = v9;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1B609D78C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B60C8188(a1);
  if (v5)
  {
    v6 = v4;
    swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB924968);
    sub_1B6221C44();
    v7 = *(v14 + 48);
    v8 = type metadata accessor for CacheObservationToken();
    sub_1B609DFBC(v7 + *(*(v8 - 8) + 72) * v6);
    v9 = type metadata accessor for WeatherDataObserver(0);
    sub_1B60730D8();
    sub_1B609E174(&unk_1EDAB1400, type metadata accessor for CacheObservationToken);
    sub_1B6221C64();
    *v2 = v14;
    v10 = a2;
    v11 = 0;
    v12 = v9;
  }

  else
  {
    v12 = type metadata accessor for WeatherDataObserver(0);
    v10 = a2;
    v11 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, 1, v12);
}

uint64_t sub_1B609D928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_1B604EF94(a1, a2);
  if (v6)
  {
    v7 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924860);
    sub_1B6221C44();

    v8 = *(v14 + 56);
    v9 = sub_1B621D8F4();
    (*(*(v9 - 8) + 32))(a3, v8 + *(*(v9 - 8) + 72) * v7, v9);
    sub_1B6221C64();
    *v3 = v14;
    v10 = a3;
    v11 = 0;
    v12 = v9;
  }

  else
  {
    v12 = sub_1B621D8F4();
    v10 = a3;
    v11 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, 1, v12);
}

uint64_t sub_1B609DA70(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1B604EF94(a2, a3);
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924AC8);
  if ((sub_1B6221C44() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = sub_1B604EF94(a2, a3);
  if ((v12 & 1) != (v14 & 1))
  {
LABEL_13:
    result = sub_1B6221FD4();
    __break(1u);
    return result;
  }

  v11 = v13;
LABEL_5:
  v15 = *v4;
  if (v12)
  {
    v16 = *(v15 + 56) + 40 * v11;
    __swift_destroy_boxed_opaque_existential_1(v16);

    return sub_1B60273A4(a1, v16);
  }

  else
  {
    sub_1B60C843C(v11, a2, a3, a1, v15);

    return sub_1B6220784();
  }
}

uint64_t sub_1B609DBBC(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5, double a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_1B604EF94(a4, a5);
  if (__OFADD__(*(v14 + 16), (v16 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v17 = v15;
  v18 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924AD0);
  if ((sub_1B6221C44() & 1) == 0)
  {
    goto LABEL_5;
  }

  v19 = sub_1B604EF94(a4, a5);
  if ((v18 & 1) != (v20 & 1))
  {
LABEL_13:
    result = sub_1B6221FD4();
    __break(1u);
    return result;
  }

  v17 = v19;
LABEL_5:
  v21 = *v7;
  if (v18)
  {
    v22 = *(v21 + 56) + 32 * v17;
    *v22 = a1;
    *(v22 + 8) = a2;
    *(v22 + 16) = a6;
    *(v22 + 24) = a3 & 1;
    *(v22 + 25) = HIBYTE(a3) & 1;
  }

  else
  {
    sub_1B60C8498(v17, a4, a5, a1, a2, a3 & 0x101, v21);

    return sub_1B6220784();
  }
}

uint64_t objectdestroy_8Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 50, 7);
}

void sub_1B609DD88()
{
  v6 = OUTLINED_FUNCTION_35();
  if (v7)
  {
    v5 = 0;
  }

  sub_1B609ABD4(v0, v1, v2, v3, v5 | v4, v6);
}

void sub_1B609DE54(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CacheObservationToken();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_45_0();
  sub_1B60C8188(a2);
  OUTLINED_FUNCTION_18_2();
  if (v9)
  {
    __break(1u);
    goto LABEL_9;
  }

  v10 = v7;
  v11 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB924968);
  if ((sub_1B6221C44() & 1) == 0)
  {
    goto LABEL_5;
  }

  v12 = sub_1B60C8188(a2);
  if ((v11 & 1) != (v13 & 1))
  {
LABEL_9:
    sub_1B6221FD4();
    __break(1u);
    return;
  }

  v10 = v12;
LABEL_5:
  v14 = *v2;
  if (v11)
  {
    v15 = type metadata accessor for WeatherDataObserver(0);
    OUTLINED_FUNCTION_0(v15);
    sub_1B609E07C();
  }

  else
  {
    sub_1B609E018(a2, v3);
    sub_1B60C84F8(v10, v3, a1, v14);
  }
}

uint64_t sub_1B609DFBC(uint64_t a1)
{
  v2 = type metadata accessor for CacheObservationToken();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B609E018(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CacheObservationToken();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B609E07C()
{
  OUTLINED_FUNCTION_37();
  v2(0);
  OUTLINED_FUNCTION_9();
  (*(v3 + 40))(v0, v1);
  return v0;
}

void sub_1B609E0D8()
{
  v9 = OUTLINED_FUNCTION_35();
  if (v10)
  {
    v8 = 0;
  }

  sub_1B609AD64(v1, v2, v3 & 1, v4, v5, v6, v8 | v7, *(v0 + 56), v9);
}

uint64_t sub_1B609E118()
{
  OUTLINED_FUNCTION_37();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2);
  OUTLINED_FUNCTION_9();
  (*(v3 + 16))(v0, v1);
  return v0;
}

uint64_t sub_1B609E174(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t WeatherComparison.BaselineType.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1B6221CD4();

  *a1 = v2 != 0;
  return result;
}

WeatherDaemon::WeatherComparison::Condition_optional __swiftcall WeatherComparison.Condition.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B6221CD4();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t WeatherComparison.Condition.rawValue.getter()
{
  result = 0x54415245504D4554;
  switch(*v0)
  {
    case 2:
      result = 0x5449504943455250;
      break;
    case 3:
      result = 1464815187;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B609E43C@<X0>(uint64_t *a1@<X8>)
{
  result = WeatherComparison.Condition.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t WeatherComparison.baselineStartDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WeatherComparison() + 36);
  v4 = sub_1B621D8F4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1B609E5BC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x656E696C65736162 && a2 == 0xEC00000065707954;
  if (v3 || (sub_1B6221F24() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F697469646E6F63 && a2 == 0xE90000000000006ELL;
    if (v6 || (sub_1B6221F24() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x56746E6572727563 && a2 == 0xEC00000065756C61;
      if (v7 || (sub_1B6221F24() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656E696C65736162 && a2 == 0xED000065756C6156;
        if (v8 || (sub_1B6221F24() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6F69746169766564 && a2 == 0xE90000000000006ELL;
          if (v9 || (sub_1B6221F24() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000011 && 0x80000001B623BFF0 == a2)
          {

            return 5;
          }

          else
          {
            v11 = sub_1B6221F24();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1B609E7C4(char a1)
{
  result = 0x656E696C65736162;
  switch(a1)
  {
    case 1:
      v3 = 0x7469646E6F63;
      goto LABEL_4;
    case 2:
      result = 0x56746E6572727563;
      break;
    case 4:
      v3 = 0x746169766564;
LABEL_4:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6F69000000000000;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B609E88C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B609E5BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B609E8B4(uint64_t a1)
{
  v2 = sub_1B609EC98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B609E8F0(uint64_t a1)
{
  v2 = sub_1B609EC98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WeatherComparison.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v4 = sub_1B621D8F4();
  OUTLINED_FUNCTION_2();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924AE8);
  OUTLINED_FUNCTION_2();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v28[-v13];
  v15 = a1[3];
  v33 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1B609EC98();
  sub_1B62220D4();
  if (!v2)
  {
    v16 = v11;
    v17 = v9;
    v30 = v6;
    v18 = v31;
    v41 = 0;
    sub_1B609ECEC();
    OUTLINED_FUNCTION_2_11();
    sub_1B6221DD4();
    v39 = 1;
    sub_1B609ED40();
    OUTLINED_FUNCTION_2_11();
    sub_1B6221DD4();
    v20 = v40;
    v38 = 2;
    OUTLINED_FUNCTION_2_11();
    sub_1B6221DB4();
    v22 = v21;
    v37 = 3;
    OUTLINED_FUNCTION_2_11();
    sub_1B6221DB4();
    v24 = v23;
    v35 = 4;
    sub_1B609ED94();
    OUTLINED_FUNCTION_2_11();
    sub_1B6221DD4();
    v29 = v36;
    v34 = 5;
    sub_1B609F140(&qword_1EDAB20F0);
    v25 = v17;
    v26 = v32;
    OUTLINED_FUNCTION_2_11();
    sub_1B6221DD4();
    (*(v16 + 8))(v14, v26);
    *v18 = v20;
    *(v18 + 8) = v22;
    *(v18 + 16) = v24;
    *(v18 + 24) = v29;
    v27 = type metadata accessor for WeatherComparison();
    (*(v30 + 32))(v18 + *(v27 + 36), v25, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(v33);
}

unint64_t sub_1B609EC98()
{
  result = qword_1EDAAF480;
  if (!qword_1EDAAF480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAF480);
  }

  return result;
}

unint64_t sub_1B609ECEC()
{
  result = qword_1EDAAF458;
  if (!qword_1EDAAF458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAF458);
  }

  return result;
}

unint64_t sub_1B609ED40()
{
  result = qword_1EDAAF440;
  if (!qword_1EDAAF440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAF440);
  }

  return result;
}

unint64_t sub_1B609ED94()
{
  result = qword_1EDAAEB88;
  if (!qword_1EDAAEB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAEB88);
  }

  return result;
}

uint64_t WeatherComparison.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924AF0);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v12[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B609EC98();
  sub_1B62220F4();
  v12[15] = 0;
  sub_1B609F044();
  OUTLINED_FUNCTION_4();
  sub_1B6221EC4();
  if (!v2)
  {
    v12[14] = *v3;
    v12[13] = 1;
    sub_1B609F098();
    OUTLINED_FUNCTION_4();
    sub_1B6221EC4();
    v12[12] = 2;
    OUTLINED_FUNCTION_4();
    sub_1B6221EA4();
    v12[11] = 3;
    OUTLINED_FUNCTION_4();
    sub_1B6221EA4();
    v12[10] = v3[24];
    v12[9] = 4;
    sub_1B609F0EC();
    OUTLINED_FUNCTION_4();
    sub_1B6221EC4();
    type metadata accessor for WeatherComparison();
    v12[8] = 5;
    sub_1B621D8F4();
    sub_1B609F140(&unk_1EDAB20F8);
    OUTLINED_FUNCTION_4();
    sub_1B6221EC4();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_1B609F044()
{
  result = qword_1EDAAF468;
  if (!qword_1EDAAF468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAF468);
  }

  return result;
}

unint64_t sub_1B609F098()
{
  result = qword_1EDAAF450;
  if (!qword_1EDAAF450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAF450);
  }

  return result;
}

unint64_t sub_1B609F0EC()
{
  result = qword_1EDAAEB98;
  if (!qword_1EDAAEB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAEB98);
  }

  return result;
}

uint64_t sub_1B609F140(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1B621D8F4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B609F188()
{
  result = qword_1EB924AF8;
  if (!qword_1EB924AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB924AF8);
  }

  return result;
}

unint64_t sub_1B609F1E0()
{
  result = qword_1EB924B00;
  if (!qword_1EB924B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB924B00);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WeatherComparison.BaselineType(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for WeatherComparison.Condition(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for WeatherComparison.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1B609F584()
{
  result = qword_1EB924B08;
  if (!qword_1EB924B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB924B08);
  }

  return result;
}

unint64_t sub_1B609F5DC()
{
  result = qword_1EDAAF470;
  if (!qword_1EDAAF470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAF470);
  }

  return result;
}

unint64_t sub_1B609F634()
{
  result = qword_1EDAAF478;
  if (!qword_1EDAAF478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAF478);
  }

  return result;
}

unint64_t sub_1B609F688()
{
  result = qword_1EDAAF448;
  if (!qword_1EDAAF448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAF448);
  }

  return result;
}

unint64_t sub_1B609F6DC()
{
  result = qword_1EDAAF460;
  if (!qword_1EDAAF460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAF460);
  }

  return result;
}

uint64_t WDSAuthenticationContext.init(date:url:httpMethod:apiKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  *a7 = 0xD00000000000002CLL;
  *(a7 + 1) = 0x80000001B623C010;
  v14 = type metadata accessor for WDSAuthenticationContext();
  v15 = v14[5];
  sub_1B621D8F4();
  OUTLINED_FUNCTION_3_0();
  (*(v16 + 32))(&a7[v15], a1);
  v17 = v14[6];
  sub_1B621D634();
  OUTLINED_FUNCTION_3_0();
  result = (*(v18 + 32))(&a7[v17], a2);
  v20 = &a7[v14[7]];
  *v20 = a3;
  *(v20 + 1) = a4;
  v21 = &a7[v14[8]];
  *v21 = a5;
  *(v21 + 1) = a6;
  return result;
}

uint64_t type metadata accessor for WDSAuthenticationContext()
{
  result = qword_1EDAB05B0;
  if (!qword_1EDAB05B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B609F8A4()
{
  result = sub_1B621D8F4();
  if (v1 <= 0x3F)
  {
    result = sub_1B621D634();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t static MonthlyWeatherStatisticsDescriptor.name.getter()
{
  OUTLINED_FUNCTION_2_5();
  sub_1B6220784();
  return OUTLINED_FUNCTION_1_3();
}

uint64_t static MonthlyWeatherStatisticsDescriptor.name.setter(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_3_5();
  qword_1EB924B10 = a1;
  off_1EB924B18 = a2;
}

uint64_t (*static MonthlyWeatherStatisticsDescriptor.name.modify())()
{
  OUTLINED_FUNCTION_1_3();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1B609FA24@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = off_1EB924B18;
  *a1 = qword_1EB924B10;
  a1[1] = v2;
  return sub_1B6220784();
}

uint64_t sub_1B609FA74(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  qword_1EB924B10 = v2;
  off_1EB924B18 = v1;
  sub_1B6220784();
}

uint64_t sub_1B609FAD8()
{
  v0 = qword_1EB9243F0;
  v1 = off_1EB9243F8;
  sub_1B6220784();
  MEMORY[0x1B8C90530](v0, v1);

  qword_1EB924B20 = 0x2E322E312E30;
  qword_1EB924B28 = 0xE600000000000000;
  return result;
}

uint64_t *sub_1B609FB54()
{
  if (qword_1EB924408 != -1)
  {
    OUTLINED_FUNCTION_0_11();
  }

  return &qword_1EB924B20;
}

uint64_t static MonthlyWeatherStatisticsDescriptor.version.getter()
{
  if (qword_1EB924408 != -1)
  {
    OUTLINED_FUNCTION_0_11();
  }

  OUTLINED_FUNCTION_2_5();
  sub_1B6220784();
  return OUTLINED_FUNCTION_1_3();
}

uint64_t static MonthlyWeatherStatisticsDescriptor.version.setter(uint64_t a1, uint64_t a2)
{
  if (qword_1EB924408 != -1)
  {
    OUTLINED_FUNCTION_0_11();
  }

  OUTLINED_FUNCTION_3_5();
  qword_1EB924B20 = a1;
  qword_1EB924B28 = a2;
}

uint64_t (*static MonthlyWeatherStatisticsDescriptor.version.modify())()
{
  if (qword_1EB924408 != -1)
  {
    OUTLINED_FUNCTION_0_11();
  }

  OUTLINED_FUNCTION_1_3();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1B609FCD4@<X0>(void *a1@<X8>)
{
  sub_1B609FB54();
  swift_beginAccess();
  v2 = qword_1EB924B28;
  *a1 = qword_1EB924B20;
  a1[1] = v2;
  return sub_1B6220784();
}

uint64_t sub_1B609FD28(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  sub_1B6220784();
  sub_1B609FB54();
  swift_beginAccess();
  qword_1EB924B20 = v2;
  qword_1EB924B28 = v1;
}

_BYTE *storeEnumTagSinglePayload for MonthlyWeatherStatisticsDescriptor(_BYTE *result, int a2, int a3)
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

uint64_t static MarineForecastDescriptor.name.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_5();
  *aMarineforecast_11 = a1;
  *&aMarineforecast_11[8] = a2;
}

uint64_t (*static MarineForecastDescriptor.name.modify())()
{
  OUTLINED_FUNCTION_1_3();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1B609FEE4@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = *&aMarineforecast_11[8];
  *a1 = *aMarineforecast_11;
  a1[1] = v2;
  return sub_1B6220784();
}

uint64_t sub_1B609FF34(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  *aMarineforecast_11 = v2;
  *&aMarineforecast_11[8] = v1;
  sub_1B6220784();
}

uint64_t *sub_1B609FF98()
{
  if (qword_1EDAB1220 != -1)
  {
    OUTLINED_FUNCTION_0_12();
  }

  return &qword_1EDAB1228;
}

uint64_t static MarineForecastDescriptor.version.setter(uint64_t a1, uint64_t a2)
{
  if (qword_1EDAB1220 != -1)
  {
    OUTLINED_FUNCTION_0_12();
  }

  OUTLINED_FUNCTION_3_5();
  qword_1EDAB1228 = a1;
  qword_1EDAB1230 = a2;
}

uint64_t (*static MarineForecastDescriptor.version.modify())()
{
  if (qword_1EDAB1220 != -1)
  {
    OUTLINED_FUNCTION_0_12();
  }

  OUTLINED_FUNCTION_1_3();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1B60A00B8@<X0>(void *a1@<X8>)
{
  sub_1B609FF98();
  swift_beginAccess();
  v2 = qword_1EDAB1230;
  *a1 = qword_1EDAB1228;
  a1[1] = v2;
  return sub_1B6220784();
}

uint64_t sub_1B60A010C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  sub_1B6220784();
  sub_1B609FF98();
  swift_beginAccess();
  qword_1EDAB1228 = v2;
  qword_1EDAB1230 = v1;
}

uint64_t MarineForecast.firstHourDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (*(*v1 + 16))
  {
    v4 = *(type metadata accessor for MarineHourForecast() - 8);
    v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v6 = sub_1B621D8F4();
    (*(*(v6 - 8) + 16))(a1, v3 + v5, v6);
    v7 = a1;
    v8 = 0;
    v9 = 1;
    v10 = v6;
  }

  else
  {
    sub_1B621D8F4();
    v7 = OUTLINED_FUNCTION_1_4();
  }

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

uint64_t MarineForecast.lastHourDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v4 - 1;
    v6 = *(type metadata accessor for MarineHourForecast() - 8);
    v7 = v3 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5;
    v8 = sub_1B621D8F4();
    (*(*(v8 - 8) + 16))(a1, v7, v8);
    v9 = a1;
    v10 = 0;
    v11 = 1;
    v12 = v8;
  }

  else
  {
    sub_1B621D8F4();
    v9 = OUTLINED_FUNCTION_1_4();
  }

  return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
}

uint64_t MarineForecast.trimData(between:and:)()
{
  sub_1B6220784();
  sub_1B608E304();
  v2 = v1;

  *v0 = v2;
  return result;
}

uint64_t sub_1B60A03F8()
{
  sub_1B621D8F4();
  sub_1B60A0544();
  if (sub_1B6221184())
  {
    v0 = 0;
  }

  else
  {
    v0 = sub_1B6221184() ^ 1;
  }

  return v0 & 1;
}

_BYTE *storeEnumTagSinglePayload for MarineForecastDescriptor(_BYTE *result, int a2, int a3)
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

unint64_t sub_1B60A0544()
{
  result = qword_1EDAB0D78;
  if (!qword_1EDAB0D78)
  {
    sub_1B621D8F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB0D78);
  }

  return result;
}

uint64_t sub_1B60A05D0(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = (*a1 & 1) == 0;
  *(v3 + 24) = a3;
  *(v3 + 32) = a2;

  sub_1B60A0638();

  return v3;
}

uint64_t sub_1B60A0638()
{
  sub_1B621DC04();
  sub_1B621DBF4();
  if (qword_1EB924450 != -1)
  {
    swift_once();
  }

  sub_1B621DBE4();

  if (v1 == 1)
  {
    type metadata accessor for Settings.DaemonStore();
    swift_initStaticObject();
    sub_1B60A2A5C();
    sub_1B621DC84();
    return sub_1B60A2658();
  }

  return result;
}

uint64_t sub_1B60A0718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8)
{
  v9 = v8;
  v18 = *v9;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924B40);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v44 - v20;
  v22 = type metadata accessor for DailySummary();
  MEMORY[0x1EEE9AC00](v22);
  v48 = &v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v47 = &v44 - v25;
  v26 = *(a6 + 8);
  v46 = *a6;
  v53 = a3;
  v54 = v46;
  v45 = v26;
  v55 = v26;
  v51 = a1;
  v52 = a2;
  v49 = a4;
  v50 = a5;
  v27 = sub_1B60A0B98(a1, a2, a3, a4, a5, &v54);
  v29 = v28;
  if (qword_1EB9244E8 != -1)
  {
    swift_once();
  }

  v30 = sub_1B6220B34();
  __swift_project_value_buffer(v30, qword_1EB942B28);
  sub_1B6220784();
  v31 = sub_1B6220B14();
  v32 = sub_1B62217F4();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v44 = v18;
    v34 = v33;
    v35 = swift_slowAlloc();
    v54 = v35;
    *v34 = 141558275;
    *(v34 + 4) = 1752392040;
    *(v34 + 12) = 2081;
    *(v34 + 14) = sub_1B602EEB0(v27, v29, &v54);
    _os_log_impl(&dword_1B6020000, v31, v32, "Attempting to read daily summary from cache; key=%{private,mask.hash}s", v34, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x1B8C91C90](v35, -1, -1);
    MEMORY[0x1B8C91C90](v34, -1, -1);
  }

  sub_1B60A0D30(v27, v29, v21);
  if (__swift_getEnumTagSinglePayload(v21, 1, v22) == 1)
  {
    v36 = v27;
    sub_1B602724C(v21, &qword_1EB924B40);
    v54 = v46;
    v55 = v45;
    sub_1B618C5C0(v51, v52, v53, v49, v50, &v54, a7, a8);
    v37 = swift_allocObject();
    *(v37 + 16) = v27;
    *(v37 + 24) = v29;
    *(v37 + 32) = a7;
    *(v37 + 40) = a8;
    sub_1B6220784();
    v38 = sub_1B62208D4();
    sub_1B6220954();

    v39 = swift_allocObject();
    *(v39 + 16) = v36;
    *(v39 + 24) = v29;
    v40 = sub_1B62208D4();
    v41 = sub_1B6220974();
  }

  else
  {

    v42 = v47;
    sub_1B60A2938(v21, v47);
    sub_1B60A299C(v42, v48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924B48);
    swift_allocObject();
    v41 = sub_1B6220994();
    sub_1B60A2A00(v42);
  }

  return v41;
}

uint64_t sub_1B60A0B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a6 + 8);
  sub_1B6221B34();
  v12 = CLLocationCoordinate2D.cacheKey.getter();

  MEMORY[0x1B8C90530](44, 0xE100000000000000);
  MEMORY[0x1B8C90530](a2, a3);
  MEMORY[0x1B8C90530](44, 0xE100000000000000);
  MEMORY[0x1B8C90530](a4, a5);
  MEMORY[0x1B8C90530](44, 0xE100000000000000);
  v13 = sub_1B6195268(a1);
  MEMORY[0x1B8C90530](v13);

  MEMORY[0x1B8C90530](44, 0xE100000000000000);
  if (v11)
  {
    v14 = 0xE300000000000000;
    v15 = 7104878;
  }

  else
  {
    v15 = sub_1B6221F04();
    v14 = v16;
  }

  MEMORY[0x1B8C90530](v15, v14);

  MEMORY[0x1B8C90530](44, 0xE100000000000000);
  v17 = sub_1B60701A0();
  MEMORY[0x1B8C90530](v17);

  return v12;
}

uint64_t sub_1B60A0D30@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a3;
  v47 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924B50);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v44 - v5;
  v7 = sub_1B6220BD4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB9244E8 != -1)
  {
    swift_once();
  }

  v11 = sub_1B6220B34();
  __swift_project_value_buffer(v11, qword_1EB942B28);
  sub_1B6220784();
  v12 = sub_1B6220B14();
  v13 = sub_1B62217F4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v45 = v7;
    v46 = v8;
    v16 = v15;
    v54 = v15;
    *v14 = 141558275;
    *(v14 + 4) = 1752392040;
    *(v14 + 12) = 2081;
    *(v14 + 14) = sub_1B602EEB0(v47, a2, &v54);
    _os_log_impl(&dword_1B6020000, v12, v13, "Attempting to retrieve daily summary from cache; key=%{private,mask.hash}s", v14, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v16);
    v17 = v16;
    v7 = v45;
    v8 = v46;
    MEMORY[0x1B8C91C90](v17, -1, -1);
    MEMORY[0x1B8C91C90](v14, -1, -1);
  }

  if (*(v49 + 16) == 1)
  {
    if (sub_1B60A059C())
    {
      sub_1B6220D44();
      v57 = MEMORY[0x1E69E6158];
      v58 = MEMORY[0x1E69D62D8];
      v54 = v47;
      v55 = a2;
      sub_1B6220784();
      sub_1B6220CD4();
      __swift_destroy_boxed_opaque_existential_1(&v54);
      v18 = sub_1B6220DD4();
      __swift_storeEnumTagSinglePayload(v6, 1, 1, v18);
      sub_1B6220D14();

      sub_1B602724C(v6, &qword_1EB924B50);
      (*(v8 + 8))(v10, v7);
      v25 = v50[0];
      if (v50[0])
      {
        v26 = v51;
        v27 = v52;
        v54 = v50[0];
        v55 = v50[1];
        v56 = v50[2];
        v57 = v50[3];
        v58 = v51;
        v59 = v52;
        v49 = v53;
        v60 = v53;
        sub_1B6220784();
        v28 = sub_1B6220B14();
        v29 = sub_1B62217F4();

        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v46 = v26;
          v31 = v30;
          v32 = swift_slowAlloc();
          v45 = v27;
          v33 = v32;
          v50[0] = v32;
          *v31 = 141558275;
          *(v31 + 4) = 1752392040;
          *(v31 + 12) = 2081;
          *(v31 + 14) = sub_1B602EEB0(v47, a2, v50);
          _os_log_impl(&dword_1B6020000, v28, v29, "Successfully retrieved daily summary from cache; key=%{private,mask.hash}s", v31, 0x16u);
          __swift_destroy_boxed_opaque_existential_1(v33);
          MEMORY[0x1B8C91C90](v33, -1, -1);
          MEMORY[0x1B8C91C90](v31, -1, -1);
        }

        if (qword_1EDAAF1F0 != -1)
        {
          swift_once();
        }

        sub_1B61D94A0(xmmword_1EDAAF1F8, *(&xmmword_1EDAAF1F8 + 1), qword_1EDAAF208, dword_1EDAAF210 | ((word_1EDAAF214 | (byte_1EDAAF216 << 16)) << 32), v34, v35, v36, v37, v44, v45, v46, v47, v48, v49);

        return sub_1B60729F4(v25);
      }

      else
      {
        sub_1B6220784();
        v40 = sub_1B6220B14();
        v41 = sub_1B62217F4();

        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          v54 = v43;
          *v42 = 141558275;
          *(v42 + 4) = 1752392040;
          *(v42 + 12) = 2081;
          *(v42 + 14) = sub_1B602EEB0(v47, a2, &v54);
          _os_log_impl(&dword_1B6020000, v40, v41, "Could not find daily summary in cache; key=%{private,mask.hash}s", v42, 0x16u);
          __swift_destroy_boxed_opaque_existential_1(v43);
          MEMORY[0x1B8C91C90](v43, -1, -1);
          MEMORY[0x1B8C91C90](v42, -1, -1);
        }

        v38 = type metadata accessor for DailySummary();
        return __swift_storeEnumTagSinglePayload(v48, 1, 1, v38);
      }
    }

    v19 = sub_1B6220B14();
    v20 = sub_1B62217E4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      v22 = "Cannot retrieve cached daily summary due to missing store";
      goto LABEL_13;
    }
  }

  else
  {
    v19 = sub_1B6220B14();
    v20 = sub_1B62217E4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      v22 = "Daily summary cache is disabled - returning nil";
LABEL_13:
      _os_log_impl(&dword_1B6020000, v19, v20, v22, v21, 2u);
      MEMORY[0x1B8C91C90](v21, -1, -1);
    }
  }

  v23 = type metadata accessor for DailySummary();
  v24 = v48;

  return __swift_storeEnumTagSinglePayload(v24, 1, 1, v23);
}

uint64_t sub_1B60A1598(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for DailySummary();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB9244E8 != -1)
  {
    swift_once();
  }

  v11 = sub_1B6220B34();
  __swift_project_value_buffer(v11, qword_1EB942B28);
  sub_1B6220784();
  v12 = sub_1B6220B14();
  v13 = sub_1B62217F4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v18[1] = a2;
    v16 = v15;
    v19 = v15;
    *v14 = 141558275;
    *(v14 + 4) = 1752392040;
    *(v14 + 12) = 2081;
    *(v14 + 14) = sub_1B602EEB0(a3, a4, &v19);
    _os_log_impl(&dword_1B6020000, v12, v13, "Successfully fetched daily summary. key=%{private,mask.hash}s", v14, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x1B8C91C90](v16, -1, -1);
    MEMORY[0x1B8C91C90](v14, -1, -1);
  }

  sub_1B60A17CC(a1, a3, a4);
  sub_1B60A299C(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924B48);
  swift_allocObject();
  return sub_1B6220994();
}

void sub_1B60A17CC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v48 - v9;
  v11 = sub_1B621D8F4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DailySummary();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v3 + 16) != 1)
  {
    if (qword_1EB9244E8 != -1)
    {
      swift_once();
    }

    v27 = sub_1B6220B34();
    __swift_project_value_buffer(v27, qword_1EB942B28);
    v61 = sub_1B6220B14();
    v28 = sub_1B62217E4();
    if (!os_log_type_enabled(v61, v28))
    {
      goto LABEL_13;
    }

    v29 = swift_slowAlloc();
    *v29 = 0;
    v30 = "Daily summary cache is disabled - not caching";
    goto LABEL_12;
  }

  v18 = sub_1B60A059C();
  if (!v18)
  {
    if (qword_1EB9244E8 != -1)
    {
      swift_once();
    }

    v31 = sub_1B6220B34();
    __swift_project_value_buffer(v31, qword_1EB942B28);
    v61 = sub_1B6220B14();
    v28 = sub_1B62217E4();
    if (!os_log_type_enabled(v61, v28))
    {
      goto LABEL_13;
    }

    v29 = swift_slowAlloc();
    *v29 = 0;
    v30 = "Cannot cache daily summary due to missing store";
LABEL_12:
    _os_log_impl(&dword_1B6020000, v61, v28, v30, v29, 2u);
    MEMORY[0x1B8C91C90](v29, -1, -1);
LABEL_13:
    v32 = v61;

    return;
  }

  v19 = v18;
  sub_1B60A299C(a1, v17);
  v20 = type metadata accessor for Metadata();
  (*(v12 + 16))(v14, a1 + *(v20 + 20), v11);
  sub_1B6220784();
  sub_1B61CCC70();
  v61 = v19;
  v57 = a3;
  v58 = v4;
  v55 = v12;
  v56 = a2;
  v21 = v62;
  v59 = v63;
  v22 = v64;
  v23 = v65;
  v25 = v66;
  v24 = v67;
  v26 = v68;
  sub_1B6220D34();
  v60 = v21;
  v62 = v21;
  v63 = v59;
  v64 = v22;
  v65 = v23;
  v66 = v25;
  v67 = v24;
  v68 = v26;
  sub_1B6220D04();
  v54 = v26;
  v33 = v22;
  v34 = v23;
  v35 = v33;

  if (qword_1EB9244E8 != -1)
  {
    swift_once();
  }

  v36 = sub_1B6220B34();
  __swift_project_value_buffer(v36, qword_1EB942B28);
  v37 = v57;
  sub_1B6220784();

  v38 = sub_1B6220B14();
  v39 = sub_1B62217F4();

  v52 = v24;

  v53 = v25;

  v50 = v34;

  v51 = v35;

  if (!os_log_type_enabled(v38, v39))
  {

    goto LABEL_16;
  }

  v49 = v38;
  v40 = swift_slowAlloc();
  v41 = swift_slowAlloc();
  v62 = v41;
  *v40 = 141558531;
  *(v40 + 4) = 1752392040;
  *(v40 + 12) = 2081;
  *(v40 + 14) = sub_1B602EEB0(v56, v37, &v62);
  *(v40 + 22) = 2080;
  sub_1B6220D84();
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) != 1)
  {
    sub_1B60CDD24();
    v43 = v42;
    v45 = v44;
    (*(v55 + 8))(v10, v11);
    v46 = sub_1B602EEB0(v43, v45, &v62);

    *(v40 + 24) = v46;
    v47 = v49;
    _os_log_impl(&dword_1B6020000, v49, v39, "Just cached daily summary; key=%{private,mask.hash}s. It expires in %s", v40, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B8C91C90](v41, -1, -1);
    MEMORY[0x1B8C91C90](v40, -1, -1);

LABEL_16:
    sub_1B60A220C();

    return;
  }

  __break(1u);
}

void sub_1B60A20A0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (qword_1EB9244E8 != -1)
  {
    swift_once();
  }

  v5 = sub_1B6220B34();
  __swift_project_value_buffer(v5, qword_1EB942B28);
  sub_1B6220784();
  oslog = sub_1B6220B14();
  v6 = sub_1B62217E4();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 141558275;
    *(v7 + 4) = 1752392040;
    *(v7 + 12) = 2081;
    *(v7 + 14) = sub_1B602EEB0(a2, a3, &v10);
    _os_log_impl(&dword_1B6020000, oslog, v6, "Failed to fetch daily summary. key=%{private,mask.hash}s", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1B8C91C90](v8, -1, -1);
    MEMORY[0x1B8C91C90](v7, -1, -1);
  }
}

void sub_1B60A220C()
{
  v0 = sub_1B621D8F4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0) + 8;
  v4 = sub_1B6220BD4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 8;
  if (sub_1B60A059C())
  {
    sub_1B6220D64();
    v13[3] = v0;
    v13[4] = MEMORY[0x1E69D6130];
    __swift_allocate_boxed_opaque_existential_1(v13);
    type metadata accessor for WeatherClock();
    static WeatherClock.date.getter();
    sub_1B621D854();
    (*(v1 + 8))(v3, v0);
    sub_1B6220CF4();
    __swift_destroy_boxed_opaque_existential_1(v13);
    sub_1B6220DC4();

    (*(v5 + 8))(v7, v4);
    if (qword_1EB9244E8 != -1)
    {
      swift_once();
    }

    v8 = sub_1B6220B34();
    __swift_project_value_buffer(v8, qword_1EB942B28);
    v9 = sub_1B6220B14();
    v10 = sub_1B62217F4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1B6020000, v9, v10, "Purged expired daily weather summary", v11, 2u);
      MEMORY[0x1B8C91C90](v11, -1, -1);
    }
  }
}

uint64_t sub_1B60A2658()
{
  result = sub_1B60A059C();
  if (result)
  {
    sub_1B6220D64();
    sub_1B6220DB4();
  }

  return result;
}

uint64_t sub_1B60A2890()
{

  return v0;
}

uint64_t sub_1B60A28B8()
{
  sub_1B60A2890();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t sub_1B60A2938(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DailySummary();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B60A299C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DailySummary();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B60A2A00(uint64_t a1)
{
  v2 = type metadata accessor for DailySummary();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B60A2A5C()
{
  result = qword_1EB924B58;
  if (!qword_1EB924B58)
  {
    type metadata accessor for Settings.DaemonStore();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB924B58);
  }

  return result;
}

uint64_t static WeatherAlertsDescriptor.name.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_5();
  *aWeatheralerts_8 = a1;
  *&aWeatheralerts_8[8] = a2;
}

uint64_t (*static WeatherAlertsDescriptor.name.modify())()
{
  OUTLINED_FUNCTION_1_3();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1B60A2B54@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = *&aWeatheralerts_8[8];
  *a1 = *aWeatheralerts_8;
  a1[1] = v2;
  return sub_1B6220784();
}

uint64_t sub_1B60A2BA4(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  *aWeatheralerts_8 = v2;
  *&aWeatheralerts_8[8] = v1;
  sub_1B6220784();
}

uint64_t *sub_1B60A2C08()
{
  if (qword_1EDAB1ED8 != -1)
  {
    OUTLINED_FUNCTION_0_13();
  }

  return &qword_1EDAB1EE0;
}

uint64_t static WeatherAlertsDescriptor.version.setter(uint64_t a1, uint64_t a2)
{
  if (qword_1EDAB1ED8 != -1)
  {
    OUTLINED_FUNCTION_0_13();
  }

  OUTLINED_FUNCTION_3_5();
  qword_1EDAB1EE0 = a1;
  qword_1EDAB1EE8 = a2;
}

uint64_t (*static WeatherAlertsDescriptor.version.modify())()
{
  if (qword_1EDAB1ED8 != -1)
  {
    OUTLINED_FUNCTION_0_13();
  }

  OUTLINED_FUNCTION_1_3();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1B60A2D28@<X0>(void *a1@<X8>)
{
  sub_1B60A2C08();
  swift_beginAccess();
  v2 = qword_1EDAB1EE8;
  *a1 = qword_1EDAB1EE0;
  a1[1] = v2;
  return sub_1B6220784();
}

uint64_t sub_1B60A2D7C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  sub_1B6220784();
  sub_1B60A2C08();
  swift_beginAccess();
  qword_1EDAB1EE0 = v2;
  qword_1EDAB1EE8 = v1;
}

_BYTE *storeEnumTagSinglePayload for WeatherAlertsDescriptor(_BYTE *result, int a2, int a3)
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

uint64_t Error.logSafeDescription.getter(uint64_t a1)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v1, a1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924B70);
  if (swift_dynamicCast())
  {
    sub_1B60273A4(v10, v12);
    v6 = v13;
    v7 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    v8 = (*(v7 + 8))(v6, v7);
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_1B60A2FE8(v10);
    return Error.domainAndCode.getter(a1);
  }

  return v8;
}

uint64_t sub_1B60A2FE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924B78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B60A3050()
{
  v1 = *v0;
  switch(*(v0 + 24))
  {
    case 1:
      OUTLINED_FUNCTION_0_14();
      sub_1B6221B34();

      OUTLINED_FUNCTION_1_5();
      v9 = 0xD000000000000010;
      goto LABEL_11;
    case 2:
      OUTLINED_FUNCTION_0_14();
      sub_1B6221B34();

      OUTLINED_FUNCTION_1_5();
      v11[0] = 0xD00000000000001DLL;
      v11[1] = v5;
      if (v1)
      {
        swift_getErrorValue();
        v2 = sub_1B6222014();
        v7 = v6;
      }

      else
      {
        v7 = 0xE300000000000000;
        v2 = 7104878;
      }

      v3 = v7;
      goto LABEL_15;
    case 3:
      OUTLINED_FUNCTION_0_14();
      sub_1B6221B34();

      OUTLINED_FUNCTION_1_5();
      v9 = 0xD000000000000016;
LABEL_11:
      v11[0] = v9;
      v11[1] = v8;
      [v1 statusCode];
      v2 = sub_1B6221F04();
      goto LABEL_15;
    case 4:
      if (*(v0 + 8) | *(v0 + 16) | v1)
      {
        return 0x52676E697373696DLL;
      }

      else
      {
        return 0xD000000000000014;
      }

    default:
      OUTLINED_FUNCTION_0_14();
      sub_1B6221B34();

      strcpy(v11, "networkError: ");
      HIBYTE(v11[1]) = -18;
      swift_getErrorValue();
      v2 = Error.domainAndCode.getter(v10);
LABEL_15:
      MEMORY[0x1B8C90530](v2, v3);

      return v11[0];
  }
}

unint64_t sub_1B60A3264()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (!*(v0 + 16))
  {
    sub_1B6220784();
    sub_1B6221B34();

    OUTLINED_FUNCTION_1_5();
    v7 = 0xD000000000000019;
    if (!v2)
    {
      sub_1B60A364C(v1, 0, 0);
      v2 = 0xE300000000000000;
      v1 = 7104878;
    }

    MEMORY[0x1B8C90530](v1, v2);
    goto LABEL_14;
  }

  if (*(v0 + 16) == 1)
  {
    if (v1)
    {
      [*v0 statusCode];
      v3 = sub_1B6221F04();
      v5 = v4;
    }

    else
    {
      v3 = 7104878;
      v5 = 0xE300000000000000;
    }

    sub_1B6221B34();

    OUTLINED_FUNCTION_1_5();
    v7 = 0xD000000000000014;
    MEMORY[0x1B8C90530](v3, v5);
LABEL_14:

    return v7;
  }

  if (v1 | v2)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0xD000000000000022;
  }
}

void sub_1B60A33F8()
{
  switch(*v0)
  {
    case 1:
    case 2:
    case 3:
    case 8:
    case 9:
    case 0xA:
    case 0xB:
      return;
    case 4:
    case 5:
    case 6:
    case 7:
    case 0xD:
    case 0xE:
    case 0xF:
      OUTLINED_FUNCTION_3_6();
      break;
    default:
      OUTLINED_FUNCTION_2_12();
      break;
  }
}

void sub_1B60A35DC(char a1)
{
  if (!a1)
  {
    OUTLINED_FUNCTION_2_12();
  }
}

void sub_1B60A364C(void *a1, id a2, char a3)
{
  if (a3 == 1)
  {
  }

  else if (!a3)
  {
  }
}

uint64_t PollutantType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_0_9();
  sub_1B62220C4();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    OUTLINED_FUNCTION_0_9();
    v5 = sub_1B6221F44();
    v7 = v6;
    __swift_destroy_boxed_opaque_existential_1(v11);
    v8._countAndFlagsBits = v5;
    v8._object = v7;
    PollutantType.init(rawValue:)(v8);
    v9 = v11[0];
    if (LOBYTE(v11[0]) == 13)
    {
      v9 = 0;
    }

    *a2 = v9;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

WeatherDaemon::PollutantType_optional __swiftcall PollutantType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B6221CD4();

  v5 = 13;
  if (v3 < 0xD)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PollutantType.rawValue.getter()
{
  result = 0x494156415F544F4ELL;
  switch(*v0)
  {
    case 1:
      result = 910702147;
      break;
    case 2:
      result = 3360846;
      break;
    case 3:
      result = 1128811854;
      break;
    case 4:
      result = 20302;
      break;
    case 5:
      result = 3297102;
      break;
    case 6:
      result = 5787470;
      break;
    case 7:
      result = 0x454E4F5A4FLL;
      break;
    case 8:
      result = 0x355F324D50;
      break;
    case 9:
      result = 3297107;
      break;
    case 0xA:
      result = 808537424;
      break;
    case 0xB:
      result = 20291;
      break;
    case 0xC:
      result = 5460564;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1B60A38BC()
{
  result = qword_1EB924B80;
  if (!qword_1EB924B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB924B80);
  }

  return result;
}

uint64_t sub_1B60A3934@<X0>(uint64_t *a1@<X8>)
{
  result = PollutantType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1B60A39DC()
{
  result = qword_1EDAB0770;
  if (!qword_1EDAB0770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB0770);
  }

  return result;
}

uint64_t static WeatherAlertsUnavailableDescriptor.name.setter(uint64_t a1, char *a2)
{
  OUTLINED_FUNCTION_3_5();
  qword_1EB924B88 = a1;
  off_1EB924B90 = a2;
}

uint64_t (*static WeatherAlertsUnavailableDescriptor.name.modify())()
{
  OUTLINED_FUNCTION_1_3();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1B60A3AD0@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = off_1EB924B90;
  *a1 = qword_1EB924B88;
  a1[1] = v2;
  return sub_1B6220784();
}

uint64_t sub_1B60A3B20(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  qword_1EB924B88 = v2;
  off_1EB924B90 = v1;
  sub_1B6220784();
}

uint64_t *sub_1B60A3B84()
{
  if (qword_1EDAB1AC0 != -1)
  {
    OUTLINED_FUNCTION_0_15();
  }

  return &qword_1EDAB1AC8;
}

uint64_t static WeatherAlertsUnavailableDescriptor.version.setter(uint64_t a1, uint64_t a2)
{
  if (qword_1EDAB1AC0 != -1)
  {
    OUTLINED_FUNCTION_0_15();
  }

  OUTLINED_FUNCTION_3_5();
  qword_1EDAB1AC8 = a1;
  qword_1EDAB1AD0 = a2;
}

uint64_t (*static WeatherAlertsUnavailableDescriptor.version.modify())()
{
  if (qword_1EDAB1AC0 != -1)
  {
    OUTLINED_FUNCTION_0_15();
  }

  OUTLINED_FUNCTION_1_3();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1B60A3CA4@<X0>(void *a1@<X8>)
{
  sub_1B60A3B84();
  swift_beginAccess();
  v2 = qword_1EDAB1AD0;
  *a1 = qword_1EDAB1AC8;
  a1[1] = v2;
  return sub_1B6220784();
}

uint64_t sub_1B60A3CF8(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  sub_1B6220784();
  sub_1B60A3B84();
  swift_beginAccess();
  qword_1EDAB1AC8 = v2;
  qword_1EDAB1AD0 = v1;
}

_BYTE *storeEnumTagSinglePayload for WeatherAlertsUnavailableDescriptor(_BYTE *result, int a2, int a3)
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

uint64_t static DailyForecastDescriptor.name.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_5();
  *aDailyforecast_3 = a1;
  *&aDailyforecast_3[8] = a2;
}

uint64_t (*static DailyForecastDescriptor.name.modify())()
{
  OUTLINED_FUNCTION_1_3();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1B60A3E98@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = *&aDailyforecast_3[8];
  *a1 = *aDailyforecast_3;
  a1[1] = v2;
  return sub_1B6220784();
}

uint64_t sub_1B60A3EE8(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  *aDailyforecast_3 = v2;
  *&aDailyforecast_3[8] = v1;
  sub_1B6220784();
}

uint64_t *sub_1B60A3F4C()
{
  if (qword_1EDAB12F8 != -1)
  {
    OUTLINED_FUNCTION_0_16();
  }

  return &qword_1EDAB1300;
}

uint64_t static DailyForecastDescriptor.version.setter(uint64_t a1, uint64_t a2)
{
  if (qword_1EDAB12F8 != -1)
  {
    OUTLINED_FUNCTION_0_16();
  }

  OUTLINED_FUNCTION_3_5();
  qword_1EDAB1300 = a1;
  qword_1EDAB1308 = a2;
}

uint64_t (*static DailyForecastDescriptor.version.modify())()
{
  if (qword_1EDAB12F8 != -1)
  {
    OUTLINED_FUNCTION_0_16();
  }

  OUTLINED_FUNCTION_1_3();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1B60A406C@<X0>(void *a1@<X8>)
{
  sub_1B60A3F4C();
  swift_beginAccess();
  v2 = qword_1EDAB1308;
  *a1 = qword_1EDAB1300;
  a1[1] = v2;
  return sub_1B6220784();
}

uint64_t sub_1B60A40C0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  sub_1B6220784();
  sub_1B60A3F4C();
  swift_beginAccess();
  qword_1EDAB1300 = v2;
  qword_1EDAB1308 = v1;
}

_BYTE *storeEnumTagSinglePayload for DailyForecastDescriptor(_BYTE *result, int a2, int a3)
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

uint64_t sub_1B60A41C0(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x1B8C912B0](*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  return MEMORY[0x1B8C912B0](*&v3);
}

uint64_t sub_1B60A4224(double a1, double a2)
{
  sub_1B6222074();
  sub_1B60A41C0(a1, a2);
  return sub_1B62220A4();
}

uint64_t sub_1B60A42A4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B6222074();
  sub_1B60A41C0(v1, v2);
  return sub_1B62220A4();
}

uint64_t sub_1B60A4318()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CA8);
  MEMORY[0x1EEE9AC00](v0 - 8);
  MEMORY[0x1EEE9AC00](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CB0);
  OUTLINED_FUNCTION_2_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CB8);
  swift_allocObject();
  OUTLINED_FUNCTION_3_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB924CC0);
  swift_allocObject();
  v2 = sub_1B6220BE4();
  OUTLINED_FUNCTION_2_13();
  swift_allocObject();
  OUTLINED_FUNCTION_3_7();
  swift_allocObject();
  sub_1B6220BE4();
  OUTLINED_FUNCTION_2_13();
  swift_allocObject();
  OUTLINED_FUNCTION_3_7();
  swift_allocObject();
  sub_1B6220BE4();
  return v2;
}

uint64_t sub_1B60A4504()
{
  sub_1B6220C04();
  sub_1B6220C04();
  sub_1B6220C04();
  sub_1B6220C14();
  swift_allocObject();
  return sub_1B6220C24();
}

uint64_t sub_1B60A457C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B60A4318();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

uint64_t sub_1B60A45B4(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v16 - v9;
  v11 = sub_1B621D8F4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  cos(a4 * 3.14159265 / 180.0);
  v18 = 0;
  v19 = 0xE000000000000000;
  sub_1B6221B34();
  MEMORY[0x1B8C90530](0xD00000000000003BLL, 0x80000001B623C330);
  MEMORY[0x1B8C90530](a1, a2);
  MEMORY[0x1B8C90530](0xD000000000000018, 0x80000001B623C370);
  sub_1B6221704();
  MEMORY[0x1B8C90530](0x20444E4120, 0xE500000000000000);
  sub_1B6221704();
  MEMORY[0x1B8C90530](0xD000000000000019, 0x80000001B623C390);
  sub_1B6221704();
  MEMORY[0x1B8C90530](0x20444E4120, 0xE500000000000000);
  sub_1B6221704();
  sub_1B6058CE0(a3, v10);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_1B608CA50(v10);
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    v16 = 0;
    v17 = 0xE000000000000000;
    sub_1B6221B34();
    MEMORY[0x1B8C90530](0xD000000000000013, 0x80000001B623C3D0);
    sub_1B621D894();
    sub_1B6221704();
    MEMORY[0x1B8C90530](10, 0xE100000000000000);
    MEMORY[0x1B8C90530](v16, v17);

    (*(v12 + 8))(v14, v11);
  }

  MEMORY[0x1B8C90530](0xD00000000000001DLL, 0x80000001B623C3B0);
  return v18;
}

uint64_t sub_1B60A4938(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v136 - v9;
  v137 = *a1;
  v166 = *(a1 + 8);
  v138 = *(a1 + 16);
  v11 = *(a1 + 24);
  v165 = v11;
  v164 = *(a1 + 25);
  v163 = *(a1 + 26);
  v162 = *(a1 + 27);
  v161 = *(a1 + 28);
  v160 = *(a1 + 29);
  v159 = *(a1 + 30);
  v12 = *(a2 + 16);
  if (!v12)
  {
    if (qword_1EDAB3D80 == -1)
    {
      goto LABEL_13;
    }

    goto LABEL_105;
  }

  if ((v11 & 1) == 0)
  {
    v150 = 0;
    v13 = (a2 + 32);
    v14 = MEMORY[0x1E69E7CC0];
    do
    {
      v16 = *v13++;
      v15 = v16;
      if (sub_1B60A58FC(v16, &unk_1F2D911C0))
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v155 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1B6035220(0, v14[2] + 1, 1);
          v14 = v155;
        }

        v19 = v14[2];
        v18 = v14[3];
        v20 = v14;
        if (v19 >= v18 >> 1)
        {
          sub_1B6035220(v18 > 1, v19 + 1, 1);
          v20 = v155;
        }

        v20[2] = v19 + 1;
        *(v20 + v19 + 32) = v15;
        v14 = v20;
      }

      --v12;
    }

    while (v12);
    v147 = v14[2];
    if (v147)
    {
      v27 = v138;
      v146 = v14;
      if (v166)
      {
        v28 = sub_1B621D8F4();
        __swift_storeEnumTagSinglePayload(v10, 1, 1, v28);
        if (qword_1EDAB3D80 != -1)
        {
          OUTLINED_FUNCTION_0_0();
        }

        v29 = sub_1B6220B34();
        v30 = OUTLINED_FUNCTION_18_3(v29, qword_1EDAC2AB0);
        v31 = sub_1B62217F4();
        if (OUTLINED_FUNCTION_11_3(v31))
        {
          v32 = swift_slowAlloc();
          v153 = swift_slowAlloc();
          OUTLINED_FUNCTION_1_6(7.2227e-34);
          v33 = sub_1B6221234();
          OUTLINED_FUNCTION_17_1(v33, v34);
          OUTLINED_FUNCTION_13_1();

          *(v32 + 14) = v13;
          *(v32 + 22) = 2050;
          *(v32 + 24) = v138;
          *(v32 + 32) = 2082;
          LOBYTE(v155) = v160;
          v35 = sub_1B6221234();
          OUTLINED_FUNCTION_17_1(v35, v36);
          OUTLINED_FUNCTION_13_1();
          v14 = v146;

          *(v32 + 34) = v13;
          v37 = "Will perform dynamic lookup for location: %{private,mask.hash}s (distance=%{public}f, age=any, fitness=%{public}s)";
          v38 = v31;
          v39 = v30;
          v40 = v32;
          v41 = 42;
LABEL_34:
          _os_log_impl(&dword_1B6020000, v39, v38, v37, v40, v41);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_30();
          OUTLINED_FUNCTION_30();
        }
      }

      else
      {
        sub_1B621D864();
        v48 = sub_1B621D8F4();
        __swift_storeEnumTagSinglePayload(v10, 0, 1, v48);
        if (qword_1EDAB3D80 != -1)
        {
          OUTLINED_FUNCTION_0_0();
        }

        v49 = sub_1B6220B34();
        v30 = OUTLINED_FUNCTION_18_3(v49, qword_1EDAC2AB0);
        v50 = sub_1B62217F4();
        if (OUTLINED_FUNCTION_11_3(v50))
        {
          v51 = swift_slowAlloc();
          v153 = swift_slowAlloc();
          OUTLINED_FUNCTION_1_6(7.2228e-34);
          v52 = sub_1B6221234();
          OUTLINED_FUNCTION_17_1(v52, v53);
          OUTLINED_FUNCTION_13_1();

          *(v51 + 14) = v13;
          *(v51 + 22) = 2050;
          *(v51 + 24) = v138;
          *(v51 + 32) = 2050;
          *(v51 + 34) = v137;
          *(v51 + 42) = 2082;
          LOBYTE(v155) = v160;
          v54 = sub_1B6221234();
          OUTLINED_FUNCTION_17_1(v54, v55);
          OUTLINED_FUNCTION_13_1();
          v14 = v146;

          *(v51 + 44) = v13;
          v37 = "Will perform dynamic lookup for location: %{private,mask.hash}s (distance=%{public}f, age=%{public}f, fitness=%{public}s)";
          v38 = v50;
          v39 = v30;
          v40 = v51;
          v41 = 52;
          goto LABEL_34;
        }
      }

      v56 = 0;
      v143 = MEMORY[0x1E69E7CC8];
      v145 = v14 + 4;
      v144 = v10;
      while (v56 < v14[2])
      {
        v149 = v56;
        LOBYTE(v155) = *(v145 + v56);
        sub_1B60A5D28();
        v57 = sub_1B6220DE4();
        v58 = v148;
        v60 = sub_1B60A45B4(v57, v59, v10, a3);
        v62 = v61;
        v63 = v58[3];
        v64 = v58[4];
        __swift_project_boxed_opaque_existential_1(v58, v63);
        v65 = *(v64 + 8);
        v66 = sub_1B60A609C();
        v67 = v150;
        v68 = v65(&type metadata for WeatherDataStoreReader.CandidateEntity, v60, v62, &type metadata for WeatherDataStoreReader.CandidateEntity, v66, v63, v64);
        if (v67)
        {

          v150 = 0;
        }

        else
        {
          v69 = v68;
          *&v152 = *(v68 + 16);
          v150 = 0;
          if (v152)
          {
            v151 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:a3 longitude:a4];
            v10 = 0;
            v70 = (v69 + 48);
            v142 = (v69 + 48);
            while (1)
            {
              for (v70 += 3 * v10; ; v70 += 3)
              {
                if (v152 == v10)
                {

                  v10 = v144;
                  goto LABEL_68;
                }

                if (v10 >= *(v69 + 16))
                {
                  __break(1u);
                  goto LABEL_101;
                }

                sub_1B6220BF4();
                sub_1B6220D84();

                if (v156)
                {
                  goto LABEL_107;
                }

                v71 = v155;
                sub_1B6220BF4();
                sub_1B6220D84();

                if (v154)
                {
                  __break(1u);
LABEL_107:
                  __break(1u);
                  goto LABEL_108;
                }

                v72 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:*&v71 longitude:*&v153];
                [v151 distanceFromLocation_];
                if (v73 < v27)
                {
                  break;
                }

                ++v10;
              }

              v74 = v73;
              sub_1B6220BF4();
              sub_1B6220D84();

              if (v156)
              {
                break;
              }

              v75 = v155;
              sub_1B6220BF4();
              sub_1B6220D84();

              v70 = v143;
              if (v154)
              {
                __break(1u);
                break;
              }

              v76 = v153;
              if (v143[2] && (v77 = OUTLINED_FUNCTION_8_6(), v79 = sub_1B60C8100(v77, v78), (v80 & 1) != 0))
              {
                v81 = (v70[7] + 16 * v79);
                if (__OFADD__(*v81, 1))
                {
                  goto LABEL_104;
                }

                v141 = *v81 + 1;
              }

              else
              {
                v141 = 1;
              }

              sub_1B6220BF4();
              sub_1B6220D84();

              if (v156)
              {
                goto LABEL_111;
              }

              v140 = swift_isUniquelyReferenced_nonNull_native();
              v155 = v70;
              v82 = OUTLINED_FUNCTION_8_6();
              v84 = sub_1B60C8100(v82, v83);
              if (__OFADD__(v70[2], (v85 & 1) == 0))
              {
                goto LABEL_102;
              }

              LODWORD(v143) = v85;
              v139 = v84;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924BB0);
              if (sub_1B6221C44())
              {
                v86 = OUTLINED_FUNCTION_8_6();
                v88 = sub_1B60C8100(v86, v87);
                v90 = v143;
                v70 = v142;
                if ((v143 & 1) != (v89 & 1))
                {
                  goto LABEL_112;
                }
              }

              else
              {
                v70 = v142;
                v88 = v139;
                v90 = v143;
              }

              v91 = v155;
              v143 = v155;
              if (v90)
              {
                OUTLINED_FUNCTION_10_4(v88);
              }

              else
              {
                v155[(v88 >> 6) + 8] |= 1 << v88;
                v92 = (v91[6] + 24 * v88);
                *v92 = v75;
                *(v92 + 1) = v76;
                v92[2] = v74;
                OUTLINED_FUNCTION_10_4(v88);

                v93 = v91[2];
                v94 = __OFADD__(v93, 1);
                v95 = v93 + 1;
                if (v94)
                {
                  goto LABEL_103;
                }

                v91[2] = v95;
              }

              ++v10;
            }

            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            sub_1B6221FD4();
            __break(1u);
            goto LABEL_113;
          }
        }

LABEL_68:
        v14 = v146;
        v56 = v149 + 1;
        if (v149 + 1 == v147)
        {
          v96 = OUTLINED_FUNCTION_14_3();
          v70 = v150;
          v98 = sub_1B60A6D30(v96, v97);
          v155 = sub_1B608ECEC(v98);
          LOBYTE(v153) = v166;
          v158 = v165;
          v99 = 0x1000000000000;
          if (!v159)
          {
            v99 = 0;
          }

          v100 = 0x10000000000;
          if (!v160)
          {
            v100 = 0;
          }

          v101 = 0x100000000;
          if (!v161)
          {
            v101 = 0;
          }

          v102 = 0x1000000;
          if (!v162)
          {
            v102 = 0;
          }

          v103 = 0x10000;
          if (!v163)
          {
            v103 = 0;
          }

          v104 = 256;
          if (!v164)
          {
            v104 = 0;
          }

          sub_1B60A60F0(&v155, v137, v166, *&v138, v103 | v104 | v102 | v101 | v100 | v99 | v165);
          if (!v70)
          {

            v105 = v155;
            v106 = v155[2];
            if (v106)
            {
              if (qword_1EDAB3D80 != -1)
              {
                OUTLINED_FUNCTION_0_0();
              }

              v107 = sub_1B6220B34();
              v151 = v105;
              v108 = v105 + 64;
              *&v109 = 141558787;
              v152 = v109;
              do
              {
                v110 = *(v108 - 4);
                v111 = *(v108 - 3);
                v112 = *(v108 - 2);
                v113 = OUTLINED_FUNCTION_18_3(v107, qword_1EDAC2AB0);
                v114 = sub_1B62217D4();
                if (os_log_type_enabled(v113, v114))
                {
                  v115 = swift_slowAlloc();
                  v153 = swift_slowAlloc();
                  *v115 = v152;
                  *(v115 + 4) = 1752392040;
                  *(v115 + 12) = 2081;
                  v155 = v110;
                  v156 = v111;
                  v157 = v112;
                  v116 = sub_1B6221234();
                  v118 = sub_1B602EEB0(v116, v117, &v153);

                  *(v115 + 14) = v118;
                  *(v115 + 22) = 2160;
                  *(v115 + 24) = 1752392040;
                  *(v115 + 32) = 2081;
                  v119 = sub_1B62216F4();
                  v121 = sub_1B602EEB0(v119, v120, &v153);

                  *(v115 + 34) = v121;
                  _os_log_impl(&dword_1B6020000, v113, v114, "Dynamic lookup candidate location: %{private,mask.hash}s, modified: %{private,mask.hash}s", v115, 0x2Au);
                  swift_arrayDestroy();
                  v10 = v144;
                  OUTLINED_FUNCTION_30();
                  OUTLINED_FUNCTION_30();
                }

                v108 += 40;
                --v106;
              }

              while (v106);
              v122 = v151;
              v123 = v151[2];
              if (!v123)
              {

                sub_1B608CA50(v10);
                OUTLINED_FUNCTION_14_3();

                return MEMORY[0x1E69E7CC0];
              }

              v155 = MEMORY[0x1E69E7CC0];
              sub_1B60A9DE0(0, v123, 0);
              v26 = v155;
              v124 = v155[2];
              v125 = 4;
              do
              {
                v126 = *&v122[v125];
                v155 = v26;
                v127 = v26[3];
                if (v124 >= v127 >> 1)
                {
                  v152 = v126;
                  sub_1B60A9DE0(v127 > 1, v124 + 1, 1);
                  v126 = v152;
                  v26 = v155;
                }

                v26[2] = v124 + 1;
                *&v26[2 * v124 + 4] = v126;
                v125 += 5;
                ++v124;
                --v123;
              }

              while (v123);
              sub_1B608CA50(v10);
              OUTLINED_FUNCTION_14_3();
            }

            else
            {

              if (qword_1EDAB3D80 != -1)
              {
LABEL_108:
                OUTLINED_FUNCTION_0_0();
              }

              v128 = sub_1B6220B34();
              v129 = OUTLINED_FUNCTION_18_3(v128, qword_1EDAC2AB0);
              v130 = sub_1B62217F4();
              if (OUTLINED_FUNCTION_11_3(v130))
              {
                v131 = swift_slowAlloc();
                v132 = swift_slowAlloc();
                v153 = v132;
                OUTLINED_FUNCTION_1_6(7.2225e-34);
                v133 = sub_1B6221234();
                v135 = sub_1B602EEB0(v133, v134, &v153);

                *(v131 + 14) = v135;
                _os_log_impl(&dword_1B6020000, v129, v130, "Dynamic lookup didn't find any matching locations for %{private,mask.hash}s", v131, 0x16u);
                __swift_destroy_boxed_opaque_existential_1(v132);
                OUTLINED_FUNCTION_30();
                OUTLINED_FUNCTION_30();
              }

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924BA8);
              v26 = swift_allocObject();
              *(v26 + 1) = xmmword_1B6225510;
              *(v26 + 4) = a3;
              *(v26 + 5) = a4;
              sub_1B608CA50(v10);
              OUTLINED_FUNCTION_14_3();
            }

            return v26;
          }

LABEL_113:

          __break(1u);
          return result;
        }
      }

LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
LABEL_105:
      OUTLINED_FUNCTION_0_0();
LABEL_13:
      v21 = sub_1B6220B34();
      v22 = OUTLINED_FUNCTION_18_3(v21, qword_1EDAC2AB0);
      v23 = sub_1B62217E4();
      if (OUTLINED_FUNCTION_11_3(v23))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_16_2(&dword_1B6020000, v24, v25, "When filtering cache data by location, there should be at least one product");
        OUTLINED_FUNCTION_30();
      }

      return MEMORY[0x1E69E7CC0];
    }

    if (qword_1EDAB3D80 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v42 = sub_1B6220B34();
    v43 = OUTLINED_FUNCTION_18_3(v42, qword_1EDAC2AB0);
    v44 = sub_1B62217F4();
    if (OUTLINED_FUNCTION_11_3(v44))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_16_2(&dword_1B6020000, v45, v46, "Not using dynamic lookup because there are no filterable products");
      OUTLINED_FUNCTION_30();
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924BA8);
  v26 = swift_allocObject();
  *(v26 + 1) = xmmword_1B6225510;
  *(v26 + 4) = a3;
  *(v26 + 5) = a4;
  return v26;
}

BOOL sub_1B60A58FC(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  do
  {
    v5 = v3;
    if (v3-- == 0)
    {
      break;
    }

    v7 = 0xEA00000000007974;
    v8 = 0x696C617551726961;
    switch(*v4)
    {
      case 1:
        v8 = 0x57746E6572727563;
        v9 = 0x726568746165;
        goto LABEL_15;
      case 2:
        v8 = OUTLINED_FUNCTION_8_4();
        v10 = 0x796C696144;
        goto LABEL_20;
      case 3:
        v8 = OUTLINED_FUNCTION_8_4();
        v9 = 0x796C72756F48;
        goto LABEL_15;
      case 4:
        v8 = 0xD000000000000010;
        v7 = 0x80000001B623B110;
        break;
      case 5:
        v8 = 0xD000000000000010;
        v7 = 0x80000001B623B130;
        break;
      case 6:
        v8 = 0x6E6F697461636F6CLL;
        v7 = 0xEC0000006F666E49;
        break;
      case 7:
        v8 = 0x6F46656E6972616DLL;
        v9 = 0x747361636572;
        goto LABEL_15;
      case 8:
        v7 = 0xE400000000000000;
        v8 = 1937204590;
        break;
      case 9:
        v8 = 0x4172656874616577;
        v10 = 0x737472656CLL;
        goto LABEL_20;
      case 0xA:
        v8 = OUTLINED_FUNCTION_7_5();
        v10 = 0xEA00006500007974;
LABEL_20:
        v7 = v10 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
        break;
      case 0xB:
        v8 = OUTLINED_FUNCTION_7_5();
        v9 = 0xEA00736500007974;
LABEL_15:
        v7 = v9 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
        break;
      case 0xC:
        v8 = 0x6E65764565646974;
        v7 = 0xEA00000000007374;
        break;
      case 0xD:
        v8 = 0x6D6F43646E657274;
        v7 = 0xEF6E6F7369726170;
        break;
      case 0xE:
        v8 = 0xD000000000000015;
        v7 = 0x80000001B623B170;
        break;
      case 0xF:
        v8 = 0x6369726F74736968;
        v7 = 0xEF73746361466C61;
        break;
      default:
        break;
    }

    v11 = 0xEA00000000007974;
    v12 = 0x696C617551726961;
    switch(a1)
    {
      case 1:
        v12 = 0x57746E6572727563;
        v13 = 0x726568746165;
        goto LABEL_33;
      case 2:
        OUTLINED_FUNCTION_10_2();
        v14 = 0x796C696144;
        goto LABEL_38;
      case 3:
        OUTLINED_FUNCTION_10_2();
        v13 = 0x796C72756F48;
        goto LABEL_33;
      case 4:
        v12 = 0xD000000000000010;
        v11 = 0x80000001B623B110;
        break;
      case 5:
        v12 = 0xD000000000000010;
        v11 = 0x80000001B623B130;
        break;
      case 6:
        v12 = 0x6E6F697461636F6CLL;
        v11 = 0xEC0000006F666E49;
        break;
      case 7:
        v12 = 0x6F46656E6972616DLL;
        v13 = 0x747361636572;
        goto LABEL_33;
      case 8:
        v11 = 0xE400000000000000;
        v12 = 1937204590;
        break;
      case 9:
        v12 = 0x4172656874616577;
        v14 = 0x737472656CLL;
        goto LABEL_38;
      case 10:
        OUTLINED_FUNCTION_6_4();
        v14 = 0xEA00006500007974;
LABEL_38:
        v11 = v14 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
        break;
      case 11:
        OUTLINED_FUNCTION_6_4();
        v13 = 0xEA00736500007974;
LABEL_33:
        v11 = v13 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
        break;
      case 12:
        v12 = 0x6E65764565646974;
        v11 = 0xEA00000000007374;
        break;
      case 13:
        v12 = 0x6D6F43646E657274;
        v11 = 0xEF6E6F7369726170;
        break;
      case 14:
        v12 = 0xD000000000000015;
        v11 = 0x80000001B623B170;
        break;
      case 15:
        v12 = 0x6369726F74736968;
        v11 = 0xEF73746361466C61;
        break;
      default:
        break;
    }

    if (v8 == v12 && v7 == v11)
    {

      return v5 != 0;
    }

    v16 = sub_1B6221F24();

    ++v4;
  }

  while ((v16 & 1) == 0);
  return v5 != 0;
}

uint64_t sub_1B60A5D28()
{
  switch(*v0)
  {
    case 1:
      v1 = &unk_1EB924C90;
      v2 = OUTLINED_FUNCTION_5_10();
      v3 = &unk_1EDAAF018;
      break;
    case 2:
      sub_1B621DC04();
      sub_1B621DBF4();
      if (qword_1EDAB0960 != -1)
      {
        OUTLINED_FUNCTION_4_5();
      }

      sub_1B621DBE4();

      if (v5 == 1)
      {
        v1 = &qword_1EB924C88;
        v2 = OUTLINED_FUNCTION_5_10();
        v3 = &unk_1EDAAED38;
      }

      else
      {
        v1 = &unk_1EB924C78;
        v2 = OUTLINED_FUNCTION_5_10();
        v3 = &unk_1EB924C80;
      }

      break;
    case 3:
      sub_1B621DC04();
      sub_1B621DBF4();
      if (qword_1EDAB0960 != -1)
      {
        OUTLINED_FUNCTION_4_5();
      }

      sub_1B621DBE4();

      if (v6 == 1)
      {
        v1 = &qword_1EB924C70;
        v2 = OUTLINED_FUNCTION_5_10();
        v3 = &unk_1EDAAED30;
      }

      else
      {
        v1 = &unk_1EB924C60;
        v2 = OUTLINED_FUNCTION_5_10();
        v3 = &unk_1EB924C68;
      }

      break;
    case 4:
      v1 = &unk_1EB924C50;
      v2 = OUTLINED_FUNCTION_5_10();
      v3 = &unk_1EB924C58;
      break;
    case 5:
      v1 = &unk_1EB924C40;
      v2 = OUTLINED_FUNCTION_5_10();
      v3 = &unk_1EB924C48;
      break;
    case 6:
      v1 = &unk_1EB924C30;
      v2 = OUTLINED_FUNCTION_5_10();
      v3 = &unk_1EB924C38;
      break;
    case 7:
      v1 = &unk_1EB924C20;
      v2 = OUTLINED_FUNCTION_5_10();
      v3 = &unk_1EB924C28;
      break;
    case 8:
      v1 = &unk_1EB924C10;
      v2 = OUTLINED_FUNCTION_5_10();
      v3 = &unk_1EB924C18;
      break;
    case 9:
      v1 = &unk_1EB924BF0;
      v2 = OUTLINED_FUNCTION_5_10();
      v3 = &unk_1EB924BF8;
      break;
    case 0xA:
    case 0xB:
      v1 = &unk_1EB924BE0;
      v2 = OUTLINED_FUNCTION_5_10();
      v3 = &unk_1EB924BE8;
      break;
    case 0xC:
      v1 = &unk_1EB924C00;
      v2 = OUTLINED_FUNCTION_5_10();
      v3 = &unk_1EB924C08;
      break;
    case 0xD:
    case 0xE:
      v1 = &unk_1EB924BD0;
      v2 = OUTLINED_FUNCTION_5_10();
      v3 = &unk_1EB924BD8;
      break;
    case 0xF:
      v1 = &unk_1EB924BC0;
      v2 = OUTLINED_FUNCTION_5_10();
      v3 = &unk_1EB924BC8;
      break;
    default:
      v1 = &unk_1EB924C98;
      v2 = OUTLINED_FUNCTION_5_10();
      v3 = &unk_1EB924CA0;
      break;
  }

  sub_1B602CAF4(v3, v1);
  return v2;
}

unint64_t sub_1B60A609C()
{
  result = qword_1EDAAF360;
  if (!qword_1EDAAF360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAF360);
  }

  return result;
}

uint64_t sub_1B60A60F0(uint64_t *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v10 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1B61B18A8();
    v10 = v11;
  }

  v12 = *(v10 + 16);
  v14[0] = v10 + 32;
  v14[1] = v12;
  v15 = a3 & 1;
  result = sub_1B60A61A4(v14, a2, a3 & 1, a4, a5 & 0x1010101010101);
  *a1 = v10;
  return result;
}

uint64_t sub_1B60A61A4(uint64_t *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v10 = a1[1];
  result = sub_1B6221EF4();
  if (result < v10)
  {
    if (v10 >= -1)
    {
      v12 = result;
      v13 = v10 / 2;
      if (v10 <= 1)
      {
        v14 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924BB8);
        v14 = sub_1B6221534();
        *(v14 + 16) = v13;
      }

      v15[0] = (v14 + 32);
      v15[1] = v13;
      v16[0] = a3 & 1;
      sub_1B60A63D0(v15, v16, a1, v12, a2, a3 & 1, a4, a5 & 0x1010101010101);
      *(v14 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v10 < 0)
  {
    goto LABEL_12;
  }

  if (v10)
  {
    LOBYTE(v15[0]) = a3 & 1;
    v16[0] = a5 & 1;
    return sub_1B60A6320(0, v10, 1, a1, a2, a3 & 1, a4, a5 & 0x1010101010101);
  }

  return result;
}

uint64_t sub_1B60A6320(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 != a2)
  {
    v8 = *a4;
    v9 = *a4 + 40 * a3 - 8;
    v10 = result - a3;
    while (2)
    {
      v11 = v8 + 40 * a3;
      v12 = *(v11 + 16);
      v13 = *(v11 + 32);
      v14 = v10;
      v15 = v9;
      do
      {
        v16 = *v15 < v13;
        if ((a8 & 0x10000000000) == 0)
        {
          v16 = v12 < *(v15 - 16);
        }

        if (!v16)
        {
          break;
        }

        if (!v8)
        {
          __break(1u);
          return result;
        }

        v17 = *(v15 + 8);
        v18 = *(v15 - 16);
        *(v15 + 8) = *(v15 - 32);
        v19 = *(v15 + 32);
        *(v15 + 24) = v18;
        *(v15 + 40) = *v15;
        *(v15 - 32) = v17;
        *(v15 - 16) = v12;
        *(v15 - 8) = v19;
        *v15 = v13;
        v15 -= 40;
      }

      while (!__CFADD__(v14++, 1));
      ++a3;
      v9 += 40;
      --v10;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1B60A63D0(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v109 = MEMORY[0x1E69E7CC0];
  v11 = a3[1];
  if (v11 >= 1)
  {
    v12 = 0;
    v102 = a8 & 0x1010101010100;
    v13 = MEMORY[0x1E69E7CC0];
    v99 = a4;
    while (1)
    {
      v14 = v12 + 1;
      if (v12 + 1 < v11)
      {
        v15 = *a3 + 40 * v14;
        v16 = *(v15 + 16);
        v17 = *(v15 + 32);
        v18 = *a3 + 40 * v12;
        v19 = 40 * v12;
        v20 = *(v18 + 32) < v17;
        if ((a8 & 0x10000000000) == 0)
        {
          v20 = v16 < *(v18 + 16);
        }

        v21 = (v18 + 112);
        v22 = v12 + 2;
        while (1)
        {
          v23 = v22;
          if (++v14 >= v11)
          {
            break;
          }

          v24 = *(v21 - 2);
          v25 = *v21;
          v21 += 5;
          v26 = v25;
          v27 = v17 >= v25;
          v28 = v24 >= v16;
          if ((a8 & 0x10000000000) != 0)
          {
            v28 = v27;
          }

          v22 = v23 + 1;
          v17 = v26;
          v16 = v24;
          if (v20 == v28)
          {
            if (!v20)
            {
              goto LABEL_24;
            }

            goto LABEL_14;
          }
        }

        v14 = v11;
        if (!v20)
        {
          goto LABEL_24;
        }

LABEL_14:
        if (v14 < v12)
        {
          goto LABEL_116;
        }

        if (v12 < v14)
        {
          if (v11 >= v23)
          {
            v11 = v23;
          }

          v29 = 40 * v11 - 40;
          v30 = v14;
          v31 = v12;
          do
          {
            if (v31 != --v30)
            {
              v32 = *a3;
              if (!*a3)
              {
                goto LABEL_121;
              }

              v33 = (v32 + v19);
              v34 = *(v32 + v19 + 16);
              v35 = (v32 + v29);
              v36 = *(v33 + 3);
              v37 = *(v33 + 4);
              v38 = *v33;
              v39 = *(v35 + 4);
              v40 = v35[1];
              *v33 = *v35;
              v33[1] = v40;
              *(v33 + 4) = v39;
              *v35 = v38;
              *(v35 + 2) = v34;
              *(v35 + 3) = v36;
              *(v35 + 4) = v37;
            }

            ++v31;
            v29 -= 40;
            v19 += 40;
          }

          while (v31 < v30);
          v11 = a3[1];
        }
      }

LABEL_24:
      if (v14 < v11)
      {
        if (__OFSUB__(v14, v12))
        {
          goto LABEL_115;
        }

        if (v14 - v12 < a4)
        {
          if (__OFADD__(v12, a4))
          {
            goto LABEL_117;
          }

          if (v12 + a4 < v11)
          {
            v11 = v12 + a4;
          }

          if (v11 < v12)
          {
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
            return;
          }

          if (v14 != v11)
          {
            v41 = *a3;
            v42 = *a3 + 40 * v14 - 8;
            v43 = v12 - v14;
            do
            {
              v44 = v41 + 40 * v14;
              v45 = *(v44 + 16);
              v46 = *(v44 + 32);
              v47 = v43;
              v48 = v42;
              do
              {
                v49 = *v48 < v46;
                if ((a8 & 0x10000000000) == 0)
                {
                  v49 = v45 < *(v48 - 16);
                }

                if (!v49)
                {
                  break;
                }

                if (!v41)
                {
                  goto LABEL_119;
                }

                v50 = *(v48 + 8);
                v51 = *(v48 - 16);
                *(v48 + 8) = *(v48 - 32);
                v52 = *(v48 + 32);
                *(v48 + 24) = v51;
                *(v48 + 40) = *v48;
                *(v48 - 32) = v50;
                *(v48 - 16) = v45;
                *(v48 - 8) = v52;
                *v48 = v46;
                v48 -= 40;
              }

              while (!__CFADD__(v47++, 1));
              ++v14;
              v42 += 40;
              --v43;
            }

            while (v14 != v11);
            v14 = v11;
          }
        }
      }

      if (v14 < v12)
      {
        goto LABEL_114;
      }

      v101 = v14;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B609B43C();
        v13 = v97;
      }

      v54 = v13[2];
      v55 = v54 + 1;
      if (v54 >= v13[3] >> 1)
      {
        sub_1B609B43C();
        v13 = v98;
      }

      v13[2] = v55;
      v56 = v13 + 4;
      v57 = &v13[2 * v54 + 4];
      *v57 = v12;
      v57[1] = v101;
      v106 = *a1;
      if (!*a1)
      {
        goto LABEL_122;
      }

      if (v54)
      {
        v108 = v13;
        while (1)
        {
          v58 = v55 - 1;
          v59 = &v56[2 * v55 - 2];
          v60 = &v13[2 * v55];
          if (v55 >= 4)
          {
            break;
          }

          if (v55 == 3)
          {
            v61 = v13[4];
            v62 = v13[5];
            v71 = __OFSUB__(v62, v61);
            v63 = v62 - v61;
            v64 = v71;
LABEL_63:
            if (v64)
            {
              goto LABEL_104;
            }

            v76 = *v60;
            v75 = v60[1];
            v77 = __OFSUB__(v75, v76);
            v78 = v75 - v76;
            v79 = v77;
            if (v77)
            {
              goto LABEL_107;
            }

            v80 = v59[1];
            v81 = v80 - *v59;
            if (__OFSUB__(v80, *v59))
            {
              goto LABEL_110;
            }

            if (__OFADD__(v78, v81))
            {
              goto LABEL_112;
            }

            if (v78 + v81 >= v63)
            {
              if (v63 < v81)
              {
                v58 = v55 - 2;
              }

              goto LABEL_85;
            }

            goto LABEL_78;
          }

          if (v55 < 2)
          {
            goto LABEL_106;
          }

          v83 = *v60;
          v82 = v60[1];
          v71 = __OFSUB__(v82, v83);
          v78 = v82 - v83;
          v79 = v71;
LABEL_78:
          if (v79)
          {
            goto LABEL_109;
          }

          v85 = *v59;
          v84 = v59[1];
          v71 = __OFSUB__(v84, v85);
          v86 = v84 - v85;
          if (v71)
          {
            goto LABEL_111;
          }

          if (v86 < v78)
          {
            goto LABEL_92;
          }

LABEL_85:
          if (v58 - 1 >= v55)
          {
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
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
            goto LABEL_118;
          }

          if (!*a3)
          {
            goto LABEL_120;
          }

          v90 = &v56[2 * v58 - 2];
          v91 = *v90;
          v92 = v58;
          v93 = &v56[2 * v58];
          v94 = *(v93 + 1);
          sub_1B60A6B44((*a3 + 40 * *v90), (*a3 + 40 * *v93), *a3 + 40 * v94, v106, a5, a6 & 1, a7, v102 | a8 & 1);
          if (v9)
          {
            goto LABEL_97;
          }

          if (v94 < v91)
          {
            goto LABEL_99;
          }

          v95 = v108[2];
          if (v92 > v95)
          {
            goto LABEL_100;
          }

          *v90 = v91;
          v90[1] = v94;
          if (v92 >= v95)
          {
            goto LABEL_101;
          }

          v55 = v95 - 1;
          sub_1B61B174C(v93 + 16, v95 - 1 - v92, v93);
          v13 = v108;
          v108[2] = v95 - 1;
          v96 = v95 > 2;
          v9 = 0;
          if (!v96)
          {
            goto LABEL_92;
          }
        }

        v65 = &v56[2 * v55];
        v66 = *(v65 - 8);
        v67 = *(v65 - 7);
        v71 = __OFSUB__(v67, v66);
        v68 = v67 - v66;
        if (v71)
        {
          goto LABEL_102;
        }

        v70 = *(v65 - 6);
        v69 = *(v65 - 5);
        v71 = __OFSUB__(v69, v70);
        v63 = v69 - v70;
        v64 = v71;
        if (v71)
        {
          goto LABEL_103;
        }

        v72 = v60[1];
        v73 = v72 - *v60;
        if (__OFSUB__(v72, *v60))
        {
          goto LABEL_105;
        }

        v71 = __OFADD__(v63, v73);
        v74 = v63 + v73;
        if (v71)
        {
          goto LABEL_108;
        }

        if (v74 >= v68)
        {
          v88 = *v59;
          v87 = v59[1];
          v71 = __OFSUB__(v87, v88);
          v89 = v87 - v88;
          if (v71)
          {
            goto LABEL_113;
          }

          if (v63 < v89)
          {
            v58 = v55 - 2;
          }

          goto LABEL_85;
        }

        goto LABEL_63;
      }

LABEL_92:
      v11 = a3[1];
      v12 = v101;
      a4 = v99;
      if (v101 >= v11)
      {
        v109 = v13;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_123;
  }

  sub_1B60A69C8(&v109, *a1, a3, a5, a6 & 1, a7, a8 & 0x1010101010101);
LABEL_97:
}

uint64_t sub_1B60A69C8(uint64_t *a1, char *a2, void *a3, uint64_t a4, char a5, uint64_t a6, unint64_t a7)
{
  LOBYTE(v9) = a5;
  v10 = a1;
  v23 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1B61B1734();
    v23 = result;
  }

  *v10 = v23;
  v12 = (v23 + 16);
  v13 = *(v23 + 16);
  v17 = v10;
  v18 = a7 & 0x1010101010100;
  v9 &= 1u;
  v24 = a7 & 1;
  while (1)
  {
    if (v13 < 2)
    {
LABEL_10:
      *v17 = v23;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v10 = (v23 + 16 * v13);
    v14 = *v10;
    a7 = &v12[2 * v13];
    v15 = *(a7 + 8);
    sub_1B60A6B44((*a3 + 40 * *v10), (*a3 + 40 * *a7), *a3 + 40 * v15, a2, a4, v9, a6, v18 | v24);
    if (v7)
    {
      goto LABEL_10;
    }

    if (v15 < v14)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v13 - 2 >= *v12)
    {
      goto LABEL_12;
    }

    *v10 = v14;
    v10[1] = v15;
    v16 = *v12 - v13;
    if (*v12 < v13)
    {
      goto LABEL_13;
    }

    v13 = *v12 - 1;
    result = memmove(a7, (a7 + 16), 16 * v16);
    *v12 = v13;
  }

  *v17 = v23;
  __break(1u);
  return result;
}

uint64_t sub_1B60A6B44(char *a1, char *a2, unint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a4;
  v10 = a3;
  v11 = a2;
  v12 = a1;
  v13 = (a2 - a1) / 40;
  v14 = (a3 - a2) / 40;
  if (v13 < v14)
  {
    sub_1B609D498(a1, (a2 - a1) / 40, a4);
    v15 = &v9[5 * v13];
    while (1)
    {
      if (v9 >= v15 || v11 >= v10)
      {
        v11 = v12;
        goto LABEL_32;
      }

      v17 = v9[4] < v11[4];
      if ((a8 & 0x10000000000) == 0)
      {
        v17 = v11[2] < v9[2];
      }

      if (!v17)
      {
        break;
      }

      v18 = v11;
      v19 = v12 == v11;
      v11 += 5;
      if (!v19)
      {
        goto LABEL_14;
      }

LABEL_15:
      v12 += 5;
    }

    v18 = v9;
    v19 = v12 == v9;
    v9 += 5;
    if (v19)
    {
      goto LABEL_15;
    }

LABEL_14:
    v20 = *v18;
    v21 = *(v18 + 1);
    v12[4] = v18[4];
    *v12 = v20;
    *(v12 + 1) = v21;
    goto LABEL_15;
  }

  sub_1B609D498(a2, (a3 - a2) / 40, a4);
  v15 = &v9[5 * v14];
LABEL_17:
  for (v10 -= 40; v15 > v9 && v11 > v12; v10 -= 40)
  {
    v23 = *(v11 - 1) < *(v15 - 1);
    if ((a8 & 0x10000000000) == 0)
    {
      v23 = *(v15 - 3) < *(v11 - 3);
    }

    if (v23)
    {
      v26 = v11 - 5;
      v19 = v10 + 40 == v11;
      v11 -= 5;
      if (!v19)
      {
        v27 = *v26;
        v28 = *(v26 + 1);
        *(v10 + 32) = v26[4];
        *v10 = v27;
        *(v10 + 16) = v28;
        v11 = v26;
      }

      goto LABEL_17;
    }

    if (v15 != (v10 + 40))
    {
      v24 = *(v15 - 5);
      v25 = *(v15 - 3);
      *(v10 + 32) = *(v15 - 1);
      *v10 = v24;
      *(v10 + 16) = v25;
    }

    v15 -= 5;
  }

LABEL_32:
  v29 = (v15 - v9) / 40;
  if (v11 != v9 || v11 >= &v9[5 * v29])
  {
    memmove(v11, v9, 40 * v29);
  }

  return 1;
}

unint64_t *sub_1B60A6D30(uint64_t a1, unint64_t *a2)
{
  v4 = a1;
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v10 = swift_slowAlloc();
      a2 = sub_1B60A6F94(v10, v6, v4, a2);
      MEMORY[0x1B8C91C90](v10, -1, -1);
      return a2;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v7 = (v11 - ((8 * v6 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_1B60F0234(0, v6, v7);
  v8 = sub_1B60A6EA0(v7, v6, v4, a2);
  if (!v2)
  {
    return v8;
  }

  swift_willThrow();
  return a2;
}

unint64_t *sub_1B60A6EA0(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v12 = v11 | (v6 << 6);
LABEL_11:
    if (*(*(a3 + 56) + 16 * v12) == a4)
    {
      *(result + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      if (__OFADD__(v5++, 1))
      {
        __break(1u);
        return sub_1B6104634(result, a2, v5, a3);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v10)
    {
      return sub_1B6104634(result, a2, v5, a3);
    }

    v14 = *(a3 + 64 + 8 * v6);
    ++v13;
    if (v14)
    {
      v9 = (v14 - 1) & v14;
      v12 = __clz(__rbit64(v14)) | (v6 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1B60A6F94(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_1B60A6EA0(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WeatherDataStoreReader.CandidateLocation(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for WeatherDataStoreReader.CandidateLocation(uint64_t result, int a2, int a3)
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

uint64_t sub_1B60A7088(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1B60A70C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B60A7118(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_1B60A7158(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_1B60A71B4()
{
  result = qword_1EDAAF350;
  if (!qword_1EDAAF350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAF350);
  }

  return result;
}

unint64_t sub_1B60A720C()
{
  result = qword_1EDAAF358;
  if (!qword_1EDAAF358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAF358);
  }

  return result;
}

unint64_t sub_1B60A7264()
{
  result = qword_1EDAAF368[0];
  if (!qword_1EDAAF368[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDAAF368);
  }

  return result;
}

Swift::Bool __swiftcall GeoJSON.contains(_:)(__C::CLLocationCoordinate2D a1)
{
  OUTLINED_FUNCTION_4_6();
  type metadata accessor for GeoJSON.MultiPolygon();
  OUTLINED_FUNCTION_2();
  v44 = v4;
  v45 = v3;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v42 - v6;
  OUTLINED_FUNCTION_4_6();
  v8 = type metadata accessor for GeoJSON.Polygon();
  OUTLINED_FUNCTION_2();
  v43 = v9;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_4_6();
  v11 = type metadata accessor for GeoJSON.FeatureCollection();
  OUTLINED_FUNCTION_2();
  v13 = v12;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v42 - v15;
  OUTLINED_FUNCTION_4_6();
  v17 = type metadata accessor for GeoJSON.Feature();
  OUTLINED_FUNCTION_2();
  v19 = v18;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v42 - v21;
  switch(*v1 >> 62)
  {
    case 1:
      v36 = swift_projectBox();
      v38 = v44;
      v37 = v45;
      (*(v44 + 16))(v7, v36, v45);
      v39 = OUTLINED_FUNCTION_17_2();
      v26 = sub_1B60D3590(v39, v40);
      (*(v38 + 8))(v7, v37);
      break;
    case 2:
      v30 = swift_projectBox();
      (*(v19 + 16))(v22, v30, v17);
      v31 = OUTLINED_FUNCTION_17_2();
      v26 = GeoJSON.Feature.contains(_:)(__PAIR128__(v32, *&v31));
      v29 = *(v19 + 8);
      v27 = v22;
      v28 = v17;
      goto LABEL_4;
    case 3:
      v33 = swift_projectBox();
      (*(v13 + 16))(v16, v33, v11);
      v34 = OUTLINED_FUNCTION_17_2();
      v26 = GeoJSON.FeatureCollection.contains(_:)(__PAIR128__(v35, *&v34));
      (*(v13 + 8))(v16, v11);
      break;
    default:
      v23 = swift_projectBox();
      (*(v43 + 16))(v2, v23, v8);
      v24 = OUTLINED_FUNCTION_17_2();
      v26 = sub_1B6162938(v24, v25);
      v27 = OUTLINED_FUNCTION_10_0();
LABEL_4:
      v29(v27, v28);
      break;
  }

  return v26 & 1;
}

BOOL sub_1B60A7628()
{
  v0 = sub_1B6221CD4();

  return v0 != 0;
}

uint64_t sub_1B60A769C()
{
  v0 = sub_1B6221CD4();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1B60A76E8(char a1)
{
  result = 0x6E6F67796C6F50;
  switch(a1)
  {
    case 1:
      result = 0x6C6F5069746C754DLL;
      break;
    case 2:
      result = 0x65727574616546;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B60A7774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6180];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1B60A77E8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1B60A7854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1B60A78C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

BOOL sub_1B60A7934@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1B60A7628();
  *a1 = result;
  return result;
}

uint64_t sub_1B60A7970@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B60A768C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_1B60A79AC@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1B60A7670();
  *a1 = result;
  return result;
}

uint64_t sub_1B60A7A04@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_6_0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1B60A7A38(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1B60A7A8C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1B60A7AE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6180];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1B60A7B54(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1B60A7BC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1B60A7C30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1B60A7CA0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B60A769C();
  *a1 = result;
  return result;
}

unint64_t sub_1B60A7CD8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1B60A76E8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t GeoJSON.init(from:)@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  type metadata accessor for GeoJSON.FeatureCollection();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_5_11();
  type metadata accessor for GeoJSON.Feature();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_5_11();
  type metadata accessor for GeoJSON.MultiPolygon();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_5_11();
  type metadata accessor for GeoJSON.Polygon();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_9_0();
  type metadata accessor for GeoJSON.CodingKeys();
  swift_getWitnessTable();
  sub_1B6221E04();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_12_3();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B62220D4();
  if (!v32)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1B62220C4();
    OUTLINED_FUNCTION_5_11();
    type metadata accessor for GeoJSON.CodingType();
    swift_getWitnessTable();
    sub_1B6221DD4();
    v8 = v34;
    v9 = __swift_project_boxed_opaque_existential_1(v33, v33[3]);
    switch(v8)
    {
      case 1:
        swift_getWitnessTable();
        OUTLINED_FUNCTION_1_7();
        OUTLINED_FUNCTION_16_3();
        v26 = OUTLINED_FUNCTION_7_6();
        v27(v26);
        v28 = swift_allocBox();
        OUTLINED_FUNCTION_14_4(v28, v29);
        OUTLINED_FUNCTION_6_5();
        v30();
        v9 |= 0x4000000000000000uLL;
        break;
      case 2:
        swift_getWitnessTable();
        OUTLINED_FUNCTION_1_7();
        OUTLINED_FUNCTION_16_3();
        v15 = OUTLINED_FUNCTION_7_6();
        v16(v15);
        v17 = swift_allocBox();
        OUTLINED_FUNCTION_14_4(v17, v18);
        OUTLINED_FUNCTION_6_5();
        v19();
        v9 |= 0x8000000000000000;
        break;
      case 3:
        swift_getWitnessTable();
        sub_1B6221F64();
        OUTLINED_FUNCTION_16_3();
        v20 = OUTLINED_FUNCTION_7_6();
        v21(v20);
        v22 = swift_allocBox();
        OUTLINED_FUNCTION_14_4(v22, v23);
        OUTLINED_FUNCTION_6_5();
        v24();
        v9 |= 0xC000000000000000;
        break;
      default:
        swift_getWitnessTable();
        OUTLINED_FUNCTION_1_7();
        OUTLINED_FUNCTION_16_3();
        v10 = OUTLINED_FUNCTION_7_6();
        v11(v10);
        v12 = swift_allocBox();
        OUTLINED_FUNCTION_14_4(v12, v13);
        OUTLINED_FUNCTION_6_5();
        v14();
        break;
    }

    __swift_destroy_boxed_opaque_existential_1(v33);
    *a2 = v9;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t GeoJSON.encode(to:)(void *a1)
{
  OUTLINED_FUNCTION_3_8();
  type metadata accessor for GeoJSON.FeatureCollection();
  OUTLINED_FUNCTION_2();
  v39 = v5;
  v40 = v4;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_9_0();
  v38 = v7;
  OUTLINED_FUNCTION_3_8();
  type metadata accessor for GeoJSON.Feature();
  OUTLINED_FUNCTION_2();
  v36 = v9;
  v37 = v8;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_9_0();
  v35 = v11;
  OUTLINED_FUNCTION_3_8();
  v12 = type metadata accessor for GeoJSON.MultiPolygon();
  OUTLINED_FUNCTION_2();
  v34 = v13;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v32 - v15;
  OUTLINED_FUNCTION_3_8();
  v17 = type metadata accessor for GeoJSON.Polygon();
  OUTLINED_FUNCTION_2();
  v33 = v18;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_12_3();
  v20 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B62220E4();
  switch(v20 >> 62)
  {
    case 1uLL:
      v29 = swift_projectBox();
      v30 = v34;
      (*(v34 + 16))(v16, v29, v12);
      OUTLINED_FUNCTION_13_2();
      swift_getWitnessTable();
      sub_1B6221F74();
      (*(v30 + 8))(v16, v12);
      break;
    case 2uLL:
      v24 = swift_projectBox();
      v26 = v35;
      v25 = v36;
      v27 = v37;
      (*(v36 + 16))(v35, v24, v37);
      OUTLINED_FUNCTION_13_2();
      goto LABEL_5;
    case 3uLL:
      v28 = swift_projectBox();
      v26 = v38;
      v25 = v39;
      v27 = v40;
      (*(v39 + 16))(v38, v28, v40);
      OUTLINED_FUNCTION_13_2();
LABEL_5:
      swift_getWitnessTable();
      sub_1B6221F74();
      (*(v25 + 8))(v26, v27);
      break;
    default:
      v21 = swift_projectBox();
      (*(v33 + 16))(v2, v21, v17);
      __swift_mutable_project_boxed_opaque_existential_1(v41, v42);
      swift_getWitnessTable();
      OUTLINED_FUNCTION_10_0();
      sub_1B6221F74();
      v22 = OUTLINED_FUNCTION_10_0();
      v23(v22);
      break;
  }

  return __swift_destroy_boxed_opaque_existential_1(v41);
}

BOOL static GeoJSON.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v77 = a2;
  type metadata accessor for GeoJSON.FeatureCollection();
  OUTLINED_FUNCTION_2();
  v75 = v4;
  v76 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_10();
  v74 = v5 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v73 = v69 - v8;
  OUTLINED_FUNCTION_11_4();
  type metadata accessor for GeoJSON.Feature();
  OUTLINED_FUNCTION_2();
  v71 = v10;
  v72 = v9;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_10();
  v70 = v11 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v69[1] = v69 - v14;
  OUTLINED_FUNCTION_11_4();
  v15 = type metadata accessor for GeoJSON.MultiPolygon();
  OUTLINED_FUNCTION_2();
  v69[0] = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_10();
  v20 = (v18 - v19);
  MEMORY[0x1EEE9AC00](v21);
  v23 = v69 - v22;
  OUTLINED_FUNCTION_11_4();
  v24 = type metadata accessor for GeoJSON.Polygon();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_10();
  v28 = (v26 - v27);
  MEMORY[0x1EEE9AC00](v29);
  v32 = v69 - v31;
  v33 = *a1;
  v34 = *v77;
  switch(v33 >> 62)
  {
    case 1uLL:
      if (v34 >> 62 != 1)
      {
        return 0;
      }

      v76 = swift_projectBox();
      v77 = swift_projectBox();
      v61 = v69[0];
      v62 = *(v69[0] + 16);
      v62(v23, v76, v15);
      v62(v20, v77, v15);

      OUTLINED_FUNCTION_15_1();
      v41 = static GeoJSON.MultiPolygon.== infix(_:_:)(v63, v64, v65, v66);
      v67 = *(v61 + 8);
      v67(v20, v15);
      v67(v23, v15);
      goto LABEL_11;
    case 2uLL:
      if (v34 >> 62 != 2)
      {
        return 0;
      }

      swift_projectBox();
      v77 = swift_projectBox();
      v43 = v71;
      v44 = *(v71 + 16);
      v45 = OUTLINED_FUNCTION_10_0();
      v46 = v72;
      v44(v45);
      v47 = v70;
      (v44)(v70, v77, v46);

      OUTLINED_FUNCTION_15_1();
      v52 = static GeoJSON.Feature.== infix(_:_:)(v48, v49, v50, v51);
      goto LABEL_8;
    case 3uLL:
      if (v34 >> 62 != 3)
      {
        return 0;
      }

      swift_projectBox();
      v77 = swift_projectBox();
      v43 = v75;
      v53 = *(v75 + 16);
      v54 = OUTLINED_FUNCTION_10_0();
      v46 = v76;
      v53(v54);
      v47 = v74;
      (v53)(v74, v77, v46);

      OUTLINED_FUNCTION_15_1();
      v52 = static GeoJSON.FeatureCollection.== infix(_:_:)(v55, v56, v57, v58);
LABEL_8:
      v41 = v52;
      v59 = *(v43 + 8);
      v59(v47, v46);
      v60 = OUTLINED_FUNCTION_10_0();
      (v59)(v60);
      goto LABEL_11;
    default:
      if (v34 >> 62)
      {
        return 0;
      }

      else
      {
        v35 = v30;
        v76 = swift_projectBox();
        v77 = swift_projectBox();
        v36 = *(v35 + 16);
        v36(v32, v76, v24);
        v36(v28, v77, v24);

        OUTLINED_FUNCTION_15_1();
        v41 = static GeoJSON.Polygon.== infix(_:_:)(v37, v38, v39, v40);
        v42 = *(v35 + 8);
        v42(v28, v24);
        v42(v32, v24);
LABEL_11:
      }

      return v41;
  }
}

uint64_t sub_1B60A8DC4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7D && *(a1 + 8))
    {
      v2 = *a1 + 124;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7C)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

_BYTE *sub_1B60A8E3C(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1B60A8F08(_BYTE *result, int a2, int a3)
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

uint64_t DailyWeatherStatistics.days.getter()
{
  type metadata accessor for DailyWeatherStatistics();

  return sub_1B6220784();
}

uint64_t DailyWeatherStatistics.baselineStart.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DailyWeatherStatistics() + 24);
  sub_1B621D8F4();
  OUTLINED_FUNCTION_9();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t DailyWeatherStatistics.init(metadata:days:baselineStart:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1B603D8D8(a1, a4);
  v7 = type metadata accessor for DailyWeatherStatistics();
  *(a4 + *(v7 + 20)) = a2;
  v8 = *(v7 + 24);
  sub_1B621D8F4();
  OUTLINED_FUNCTION_9();
  v10 = *(v9 + 32);

  return v10(a4 + v8, a3);
}

uint64_t DailyWeatherStatistics.filteringOutLeapDay(_:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for Metadata();
  MEMORY[0x1EEE9AC00](v6 - 8);
  OUTLINED_FUNCTION_14();
  v9 = v8 - v7;
  if ((a1 & 1) == 0)
  {
    return sub_1B60A9368(v3, a2, type metadata accessor for DailyWeatherStatistics);
  }

  OUTLINED_FUNCTION_5_12();
  sub_1B60A9368(v3, v9, v10);
  v11 = type metadata accessor for DailyWeatherStatistics();
  v12 = *(v3 + *(v11 + 20));
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = (v12 + 40);
    v15 = MEMORY[0x1E69E7CC0];
    do
    {
      v16 = *(v14 - 1);
      v23 = *v14;
      v24 = v14[1];
      v25 = v14[2];
      v26 = *(v14 + 48);
      if (v16 != 366)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1B60A9E00(0, *(v15 + 16) + 1, 1);
        }

        v18 = *(v15 + 16);
        v17 = *(v15 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_1B60A9E00(v17 > 1, v18 + 1, 1);
        }

        *(v15 + 16) = v18 + 1;
        v19 = v15 + (v18 << 6);
        *(v19 + 32) = v16;
        *(v19 + 88) = v26;
        *(v19 + 72) = v25;
        *(v19 + 56) = v24;
        *(v19 + 40) = v23;
      }

      v14 += 4;
      --v13;
    }

    while (v13);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  v21 = *(v11 + 24);
  sub_1B621D8F4();
  OUTLINED_FUNCTION_9();
  (*(v22 + 16))(a2 + v21, v3 + v21);
  result = sub_1B603D8D8(v9, a2);
  *(a2 + *(v11 + 20)) = v15;
  return result;
}

uint64_t sub_1B60A9368(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_9();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t static DailyWeatherStatistics.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((static Metadata.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for DailyWeatherStatistics();
  if ((sub_1B6095FF8(*(a1 + *(v4 + 20)), *(a2 + *(v4 + 20))) & 1) == 0)
  {
    return 0;
  }

  return sub_1B621D8A4();
}

uint64_t sub_1B60A944C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
  if (v4 || (sub_1B6221F24() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1937334628 && a2 == 0xE400000000000000;
    if (v6 || (sub_1B6221F24() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x656E696C65736162 && a2 == 0xED00007472617453)
    {

      return 2;
    }

    else
    {
      v8 = sub_1B6221F24();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1B60A9564(char a1)
{
  if (!a1)
  {
    return 0x617461646174656DLL;
  }

  if (a1 == 1)
  {
    return 1937334628;
  }

  return 0x656E696C65736162;
}

uint64_t sub_1B60A95C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B60A944C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B60A95F0(uint64_t a1)
{
  v2 = sub_1B60A9E20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B60A962C(uint64_t a1)
{
  v2 = sub_1B60A9E20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DailyWeatherStatistics.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = sub_1B621D8F4();
  OUTLINED_FUNCTION_2();
  v32 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14();
  v8 = v7 - v6;
  type metadata accessor for Metadata();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14();
  v35 = v11 - v10;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924DC8);
  OUTLINED_FUNCTION_2();
  v34 = v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31 - v14;
  v16 = type metadata accessor for DailyWeatherStatistics();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_14();
  v20 = v19 - v18;
  v21 = a1[3];
  v39 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_1B60A9E20();
  v36 = v15;
  v22 = v38;
  sub_1B62220D4();
  if (v22)
  {
    return __swift_destroy_boxed_opaque_existential_1(v39);
  }

  v23 = v34;
  v38 = v8;
  v43 = 0;
  OUTLINED_FUNCTION_4_7();
  sub_1B60AA05C(v24, v25);
  v26 = v35;
  sub_1B6221DD4();
  sub_1B603D8D8(v26, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924DD8);
  v42 = 1;
  sub_1B60A9F20(&qword_1EB924DE0, sub_1B60A9E74);
  sub_1B6221DD4();
  *(v20 + *(v16 + 20)) = v40;
  v41 = 2;
  OUTLINED_FUNCTION_3_9();
  sub_1B60AA05C(v27, v28);
  v29 = v38;
  sub_1B6221DD4();
  (*(v23 + 8))(v36, v37);
  (*(v32 + 32))(v20 + *(v16 + 24), v29, v3);
  sub_1B60A9368(v20, v33, type metadata accessor for DailyWeatherStatistics);
  __swift_destroy_boxed_opaque_existential_1(v39);
  return sub_1B60A9EC8(v20, type metadata accessor for DailyWeatherStatistics);
}

uint64_t DailyWeatherStatistics.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924DF0);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B60A9E20();
  sub_1B62220F4();
  v18 = 0;
  type metadata accessor for Metadata();
  OUTLINED_FUNCTION_4_7();
  sub_1B60AA05C(v11, v12);
  OUTLINED_FUNCTION_10_5();
  if (!v2)
  {
    v17 = *(v3 + *(type metadata accessor for DailyWeatherStatistics() + 20));
    v16[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924DD8);
    sub_1B60A9F20(&qword_1EB924DF8, sub_1B60A9F98);
    OUTLINED_FUNCTION_10_5();
    v16[14] = 2;
    sub_1B621D8F4();
    OUTLINED_FUNCTION_3_9();
    sub_1B60AA05C(v13, v14);
    OUTLINED_FUNCTION_10_5();
  }

  return (*(v7 + 8))(v10, v5);
}

void sub_1B60A9D40()
{
  OUTLINED_FUNCTION_9_5();
  sub_1B604F62C(v1, v2, v3, v4, v5, v6, v7, sub_1B609D38C);
  *v0 = v8;
}

uint64_t sub_1B60A9DE0(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1B60AA64C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1B60A9E00(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1B60AA76C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_1B60A9E20()
{
  result = qword_1EB924DD0;
  if (!qword_1EB924DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB924DD0);
  }

  return result;
}

unint64_t sub_1B60A9E74()
{
  result = qword_1EB924DE8;
  if (!qword_1EB924DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB924DE8);
  }

  return result;
}

uint64_t sub_1B60A9EC8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1B60A9F20(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB924DD8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B60A9F98()
{
  result = qword_1EB924E00;
  if (!qword_1EB924E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB924E00);
  }

  return result;
}

uint64_t sub_1B60AA004(uint64_t a1)
{
  result = sub_1B60AA05C(&qword_1EB924E08, type metadata accessor for DailyWeatherStatistics);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B60AA05C(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for DailyWeatherStatistics.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B60AA1AC()
{
  result = qword_1EB924E10;
  if (!qword_1EB924E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB924E10);
  }

  return result;
}

unint64_t sub_1B60AA204()
{
  result = qword_1EB924E18;
  if (!qword_1EB924E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB924E18);
  }

  return result;
}

unint64_t sub_1B60AA25C()
{
  result = qword_1EB924E20;
  if (!qword_1EB924E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB924E20);
  }

  return result;
}

uint64_t sub_1B60AA2F4(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1B60AA864(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1B60AA474()
{
  OUTLINED_FUNCTION_8_7();
  sub_1B604F62C(v1, v2, v3, v4, v5, v6, v7, sub_1B609D438);
  *v0 = v8;
}

void *sub_1B60AA4BC(void *a1, int64_t a2, char a3)
{
  result = sub_1B60AAA48(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B60AA5D0(void *a1, int64_t a2, char a3)
{
  result = sub_1B60AAC50(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1B60AA5F0(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1B60AAD68(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1B60AA64C(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924BA8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_1B609D3C8((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v10 + 32), (a4 + 32), 16 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B60AA76C(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924A20);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 64);
      if (v5)
      {
LABEL_13:
        sub_1B609D400((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v10 + 32), (a4 + 32), v8 << 6);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B60AA864(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924E28);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1B609D4DC((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1B60AA964(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a3 & 1) == 0)
  {
    v6 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7();
  if (v7 == v8)
  {
LABEL_7:
    v9 = *(a4 + 16);
    if (v6 <= v9)
    {
      v10 = *(a4 + 16);
    }

    else
    {
      v10 = v6;
    }

    if (v10)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9249F8);
      v11 = swift_allocObject();
      v12 = _swift_stdlib_malloc_size(v11);
      *(v11 + 16) = v9;
      *(v11 + 24) = 2 * ((v12 - 32) / 8);
      if (a1)
      {
LABEL_12:
        sub_1B609D4DC((a4 + 32), v9, (v11 + 32));
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v11 = MEMORY[0x1E69E7CC0];
      if (a1)
      {
        goto LABEL_12;
      }
    }

    memcpy((v11 + 32), (a4 + 32), 8 * v9);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_21();
  if (!v7)
  {
    OUTLINED_FUNCTION_6();
    goto LABEL_7;
  }

  __break(1u);
}

void *sub_1B60AAA48(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924E48);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_1B609E1D4(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924E50);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1B60AAB60(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, void *))
{
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7();
  if (v11 == v12)
  {
LABEL_7:
    v13 = *(a4 + 16);
    if (v10 <= v13)
    {
      v14 = *(a4 + 16);
    }

    else
    {
      v14 = v10;
    }

    if (v14)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5);
      v15 = swift_allocObject();
      v16 = _swift_stdlib_malloc_size(v15);
      v15[2] = v13;
      v15[3] = 2 * ((v16 - 32) / 40);
      if (a1)
      {
LABEL_12:
        a7(a4 + 32, v13, v15 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v15 = MEMORY[0x1E69E7CC0];
      if (a1)
      {
        goto LABEL_12;
      }
    }

    memcpy(v15 + 4, (a4 + 32), 40 * v13);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_21();
  if (!v11)
  {
    OUTLINED_FUNCTION_6();
    goto LABEL_7;
  }

  __break(1u);
}

void *sub_1B60AAC50(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB9249C0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_1B609E1D4(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924648);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B60AAD68(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924E30);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_1B609D498((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924E38);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B60AAE80()
{
  v25[1] = *MEMORY[0x1E69E9840];
  v0 = sub_1B621D634();
  OUTLINED_FUNCTION_2_7();
  v2 = v1;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  sub_1B621DC04();
  sub_1B621DBF4();
  if (qword_1EDAB3FC0 != -1)
  {
    swift_once();
  }

  sub_1B621DBE4();

  if (LOBYTE(v25[0]) != 1)
  {
    if (qword_1EDAB3D80 != -1)
    {
      OUTLINED_FUNCTION_0_17();
      swift_once();
    }

    v15 = sub_1B6220B34();
    __swift_project_value_buffer(v15, qword_1EDAC2AB0);
    v16 = sub_1B6220B14();
    v17 = sub_1B62217F4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1B6020000, v16, v17, "Demo weather data mode disabled", v18, 2u);
      OUTLINED_FUNCTION_4_0();
      MEMORY[0x1B8C91C90]();
    }

    return 0;
  }

  if (qword_1EDAB3D80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  v7 = sub_1B6220B34();
  __swift_project_value_buffer(v7, qword_1EDAC2AB0);
  v8 = sub_1B6220B14();
  v9 = sub_1B62217F4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1B6020000, v8, v9, "Demo weather data mode enabled", v10, 2u);
    OUTLINED_FUNCTION_4_0();
    MEMORY[0x1B8C91C90]();
  }

  v11 = [objc_opt_self() defaultManager];
  v25[0] = 0;
  v12 = [v11 URLForDirectory:9 inDomain:1 appropriateForURL:0 create:1 error:v25];

  v13 = v25[0];
  if (v12)
  {
    sub_1B621D5E4();
    v14 = v13;

    sub_1B621D5C4();
    v19 = sub_1B621D674();
    v20 = *(v2 + 8);
    v20(v6, v0);
    v21 = OUTLINED_FUNCTION_6_6();
    (v20)(v21);
    return v19;
  }

  v23 = v25[0];
  sub_1B621D574();

  swift_willThrow();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1B60AB264(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B60AB288, 0, 0);
}

uint64_t sub_1B60AB288()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = sub_1B621D284();
  *v2 = v0;
  v2[1] = sub_1B60AB388;
  v4 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v4, 0, 0, 0xD000000000000019, 0x80000001B623C500, sub_1B60ACF98, v1, v3);
}

uint64_t sub_1B60AB388()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B60AB4C4, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1B60AB4C4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B60AB528(uint64_t a1, void *a2, _OWORD *a3, uint64_t a4, unint64_t a5)
{
  v9 = a3[1];
  v28[0] = *a3;
  v28[1] = v9;
  v10 = a3[3];
  v28[2] = a3[2];
  v28[3] = v10;
  sub_1B6222114();
  v11 = OUTLINED_FUNCTION_10_0();
  v14 = sub_1B6164E58(v11, v12, v13);
  if (qword_1EDAB3D80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  v15 = sub_1B6220B34();
  __swift_project_value_buffer(v15, qword_1EDAC2AB0);
  sub_1B6220784();
  v16 = a2;
  v17 = sub_1B6220B14();
  v18 = sub_1B62217F4();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_8();
    v20 = swift_slowAlloc();
    *&v28[0] = swift_slowAlloc();
    *v19 = 136446979;
    *(v19 + 4) = sub_1B602EEB0(a4, a5, v28);
    *(v19 + 12) = 2082;
    v21 = sub_1B6222104();
    v23 = v14;
    v24 = sub_1B602EEB0(v21, v22, v28);

    *(v19 + 14) = v24;
    v14 = v23;
    *(v19 + 22) = 2050;
    *(v19 + 24) = a1;
    *(v19 + 32) = 2113;
    v25 = a2;
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 34) = v26;
    *v20 = v26;
    _os_log_impl(&dword_1B6020000, v17, v18, "Delaying request %{public}s for %{public}s after iteration %{public}ld due to error: %{private}@", v19, 0x2Au);
    sub_1B60372E0(v20, &qword_1EB924E68);
    OUTLINED_FUNCTION_4_0();
    MEMORY[0x1B8C91C90]();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_4_0();
    MEMORY[0x1B8C91C90]();
    OUTLINED_FUNCTION_4_0();
    MEMORY[0x1B8C91C90]();
  }

  return v14;
}

uint64_t sub_1B60AB76C(void *a1, uint64_t a2, _OWORD *a3, uint64_t a4, unint64_t a5)
{
  v9 = a3[1];
  v30[0] = *a3;
  v30[1] = v9;
  v10 = a3[3];
  v30[2] = a3[2];
  v30[3] = v10;
  v11 = sub_1B6164FE0(a1, a2, a4, a5);
  if (qword_1EDAB3D80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  v12 = sub_1B6220B34();
  __swift_project_value_buffer(v12, qword_1EDAC2AB0);
  sub_1B6220784();
  v13 = a1;
  sub_1B6220784();
  v14 = sub_1B6220B14();
  v15 = sub_1B62217F4();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_8();
    v17 = swift_slowAlloc();
    *&v30[0] = swift_slowAlloc();
    *v16 = 67240963;
    *(v16 + 4) = v11 & 1;
    *(v16 + 8) = 2082;
    *(v16 + 10) = sub_1B602EEB0(a4, a5, v30);
    *(v16 + 18) = 2113;
    v18 = a1;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 20) = v19;
    *v17 = v19;
    *(v16 + 28) = 2081;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924910);
    v21 = MEMORY[0x1B8C906E0](a2, v20);
    v23 = sub_1B602EEB0(v21, v22, v30);

    *(v16 + 30) = v23;
    OUTLINED_FUNCTION_5_13();
    _os_log_impl(v24, v25, v26, v27, v28, 0x26u);
    sub_1B60372E0(v17, &qword_1EB924E68);
    OUTLINED_FUNCTION_4_0();
    MEMORY[0x1B8C91C90]();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_4_0();
    MEMORY[0x1B8C91C90]();
    OUTLINED_FUNCTION_4_0();
    MEMORY[0x1B8C91C90]();
  }

  return v11 & 1;
}

void sub_1B60AB9AC(void *a1)
{
  v57 = a1;
  v2 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924910);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924E58);
  if (swift_dynamicCast())
  {
    sub_1B60273A4(&v51, v54);
    v3 = v55;
    v4 = v56;
    __swift_project_boxed_opaque_existential_1(v54, v55);
    if ((*(v4 + 40))(v3, v4))
    {
      if (qword_1EDAB3D80 != -1)
      {
        OUTLINED_FUNCTION_0_17();
        swift_once();
      }

      v5 = sub_1B6220B34();
      __swift_project_value_buffer(v5, qword_1EDAC2AB0);
      sub_1B602D048(v54, &v51);
      sub_1B6220784();
      v6 = sub_1B6220B14();
      v7 = sub_1B62217F4();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        OUTLINED_FUNCTION_8_8();
        v9 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v57 = v50;
        *v8 = 136446467;
        v10 = OUTLINED_FUNCTION_10_0();
        *(v8 + 4) = sub_1B602EEB0(v10, v11, v12);
        *(v8 + 12) = 2113;
        v13 = *(&v52 + 1);
        __swift_project_boxed_opaque_existential_1(&v51, *(&v52 + 1));
        v49 = &v49;
        OUTLINED_FUNCTION_2_7();
        v15 = v14;
        MEMORY[0x1EEE9AC00](v16);
        OUTLINED_FUNCTION_14();
        v19 = v18 - v17;
        (*(v15 + 16))(v18 - v17);
        OUTLINED_FUNCTION_10_0();
        if (sub_1B6221F14())
        {
          v20 = OUTLINED_FUNCTION_10_0();
          v21(v20);
        }

        else
        {
          swift_allocError();
          (*(v15 + 32))(v39, v19, v13);
        }

        v40 = _swift_stdlib_bridgeErrorToNSError();
        __swift_destroy_boxed_opaque_existential_1(&v51);
        *(v8 + 14) = v40;
        *v9 = v40;
        _os_log_impl(&dword_1B6020000, v6, v7, "Short circuiting request race due to error. Request: %{public}s error: %{private}@", v8, 0x16u);
        sub_1B60372E0(v9, &qword_1EB924E68);
        OUTLINED_FUNCTION_4_0();
        MEMORY[0x1B8C91C90]();
        __swift_destroy_boxed_opaque_existential_1(v50);
        OUTLINED_FUNCTION_4_0();
        MEMORY[0x1B8C91C90]();
        OUTLINED_FUNCTION_4_0();
        MEMORY[0x1B8C91C90]();
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(&v51);
      }

      v41 = v55;
      __swift_project_boxed_opaque_existential_1(v54, v55);
      OUTLINED_FUNCTION_2_7();
      v43 = v42;
      MEMORY[0x1EEE9AC00](v44);
      OUTLINED_FUNCTION_14();
      v47 = v46 - v45;
      (*(v43 + 16))(v46 - v45);
      if (sub_1B6221F14())
      {
        (*(v43 + 8))(v47, v41);
      }

      else
      {
        swift_allocError();
        (*(v43 + 32))(v48, v47, v41);
      }

      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1(v54);
      return;
    }

    __swift_destroy_boxed_opaque_existential_1(v54);
  }

  else
  {
    v53 = 0;
    v51 = 0u;
    v52 = 0u;
    sub_1B60372E0(&v51, &qword_1EB924E60);
  }

  if (qword_1EDAB3D80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  v22 = sub_1B6220B34();
  __swift_project_value_buffer(v22, qword_1EDAC2AB0);
  v23 = a1;
  sub_1B6220784();
  v24 = sub_1B6220B14();
  v25 = sub_1B62217F4();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_8();
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v54[0] = v28;
    *v26 = 136446467;
    v29 = OUTLINED_FUNCTION_10_0();
    *(v26 + 4) = sub_1B602EEB0(v29, v30, v31);
    *(v26 + 12) = 2113;
    v32 = a1;
    v33 = _swift_stdlib_bridgeErrorToNSError();
    *(v26 + 14) = v33;
    *v27 = v33;
    OUTLINED_FUNCTION_5_13();
    _os_log_impl(v34, v35, v36, v37, v38, 0x16u);
    sub_1B60372E0(v27, &qword_1EB924E68);
    OUTLINED_FUNCTION_4_0();
    MEMORY[0x1B8C91C90]();
    __swift_destroy_boxed_opaque_existential_1(v28);
    OUTLINED_FUNCTION_4_0();
    MEMORY[0x1B8C91C90]();
    OUTLINED_FUNCTION_4_0();
    MEMORY[0x1B8C91C90]();
  }
}

void sub_1B60ABF8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924E70);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - v8;
  v19 = a2;
  v20 = a3;
  sub_1B621D284();
  sub_1B62209F4();
  v17 = *(v7 + 16);
  v17(v9, a1, v6);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  v16 = *(v7 + 32);
  v16(v11 + v10, v9, v6);
  v12 = sub_1B62208D4();
  v15 = sub_1B6220944();

  v17(v9, v18, v6);
  v13 = swift_allocObject();
  v16(v13 + v10, v9, v6);
  v14 = sub_1B62208D4();
  sub_1B62209C4();
}

uint64_t sub_1B60AC1D0(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + OBJC_IVAR____TtC13WeatherDaemon9WDSClient_authenticator);
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  v7 = *(a1 + OBJC_IVAR____TtC13WeatherDaemon9WDSClient_session);
  v12[3] = sub_1B602370C(0, &qword_1EDAB3D70);
  v12[4] = &protocol witness table for NSURLSession;
  v12[0] = v7;
  v8 = *(v6 + 8);
  v9 = v7;
  v10 = v8(a2, v12, v5, v6);
  __swift_destroy_boxed_opaque_existential_1(v12);
  return v10;
}

uint64_t sub_1B60AC2A8(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924E70);
  return sub_1B62215D4();
}

uint64_t sub_1B60AC300@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1B621D7F4();
  OUTLINED_FUNCTION_2_7();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v19[-1] - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_11_5();
  result = sub_1B62220C4();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v19, v19[3]);
    OUTLINED_FUNCTION_11_5();
    sub_1B6221F44();
    MEMORY[0x1B8C8C770]();
    sub_1B621D7E4();
    (*(v7 + 8))(v11, v5);

    v16 = sub_1B621D8F4();
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v16);
    OUTLINED_FUNCTION_10_6();
    (*(v17 + 32))(a2, v14, v16);
    return __swift_destroy_boxed_opaque_existential_1(v19);
  }

  return result;
}

void sub_1B60AC5D8(void *a1, void *a2, void *a3, void (*a4)(uint64_t *))
{
  v8 = sub_1B6220814();
  OUTLINED_FUNCTION_2_7();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_14();
  v14 = (v13 - v12);
  if (a3)
  {
    *v14 = a3;
    v15 = OUTLINED_FUNCTION_9_6();
    v16(v15);
    v17 = a3;
    a4(v14);
LABEL_3:
    v18 = OUTLINED_FUNCTION_6_6();
    v19(v18);
    return;
  }

  if (a1)
  {
    objc_opt_self();
    v20 = swift_dynamicCastObjCClass();
    if (v20)
    {
      v21 = v20;
      v22 = a1;
      if (!NSHTTPURLResponse.isSuccess.getter())
      {
        *v14 = v21;
        v25 = OUTLINED_FUNCTION_9_6();
        v26(v25);
        v27 = v22;
        a4(v14);

        goto LABEL_3;
      }

      v37 = v22;
      v36 = v21;
      if (a2)
      {
        v23 = [a2 transactionMetrics];
        sub_1B602370C(0, &qword_1EDAB0DC0);
        v24 = sub_1B62214A4();
      }

      else
      {
        v24 = MEMORY[0x1E69E7CC0];
      }

      v38 = sub_1B6058CBC(v24);
      v28 = 0;
      v35 = *MEMORY[0x1E69D6848];
      while (1)
      {
        if (v38 == v28)
        {
          goto LABEL_22;
        }

        if ((v24 & 0xC000000000000001) != 0)
        {
          v29 = MEMORY[0x1B8C90D80](v28, v24);
        }

        else
        {
          if (v28 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_24;
          }

          v29 = *(v24 + 8 * v28 + 32);
        }

        v30 = v29;
        if (__OFADD__(v28, 1))
        {
          break;
        }

        if ([v29 resourceFetchType] == 3)
        {

LABEL_22:

          return;
        }

        *v14 = v36;
        v14[1] = v30;
        (*(v10 + 104))(v14, v35, v8);
        v31 = v37;
        v32 = v30;
        a4(v14);

        v33 = OUTLINED_FUNCTION_6_6();
        v34(v33);
        ++v28;
      }

      __break(1u);
LABEL_24:
      __break(1u);
    }
  }
}