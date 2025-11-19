char *assignWithCopy for AppShortcutInvocation(char *a1, void **a2)
{
  if (a1 != a2)
  {
    sub_1DCC4155C(a1, type metadata accessor for AppShortcutInvocation);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v4 = *a2;
      *a1 = *a2;
      *(a1 + 1) = a2[1];
      *(a1 + 2) = a2[2];
      *(a1 + 3) = a2[3];
      *(a1 + 4) = a2[4];
      *(a1 + 5) = a2[5];
      *(a1 + 6) = a2[6];
      v5 = a2[10];
      *(a1 + 10) = v5;
      *(a1 + 11) = a2[11];
      v6 = **(v5 - 1);
      v7 = v4;

      v6(a1 + 56, a2 + 7, v5);
    }

    else
    {
      *a1 = *a2;
      *(a1 + 1) = a2[1];
      *(a1 + 2) = a2[2];
      *(a1 + 3) = a2[3];
      *(a1 + 4) = a2[4];
      *(a1 + 5) = a2[5];
      v8 = type metadata accessor for AppShortcutExactInvocation(0);
      v9 = v8[7];
      v10 = sub_1DD0DB04C();

      if (__swift_getEnumTagSinglePayload(a2 + v9, 1, v10))
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
        memcpy(&a1[v9], a2 + v9, *(*(v11 - 8) + 64));
      }

      else
      {
        (*(*(v10 - 8) + 16))(&a1[v9], a2 + v9, v10);
        __swift_storeEnumTagSinglePayload(&a1[v9], 0, 1, v10);
      }

      v12 = v8[8];
      v13 = &a1[v12];
      v14 = *(a2 + v12 + 24);
      *(v13 + 3) = v14;
      *(v13 + 4) = *(a2 + v12 + 32);
      (**(v14 - 8))();
      v15 = v8[9];
      v16 = *(a2 + v15);
      *&a1[v15] = v16;
      v17 = v16;
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

_OWORD *initializeWithTake for AppShortcutInvocation(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload())
  {
    v6 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v6);
  }

  else
  {
    v8 = a2[1];
    *a1 = *a2;
    a1[1] = v8;
    a1[2] = a2[2];
    v9 = type metadata accessor for AppShortcutExactInvocation(0);
    v10 = v9[7];
    v11 = sub_1DD0DB04C();
    if (__swift_getEnumTagSinglePayload(a2 + v10, 1, v11))
    {
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
      memcpy(a1 + v10, a2 + v10, *(*(v12 - 8) + 64));
    }

    else
    {
      (*(*(v11 - 8) + 32))(a1 + v10, a2 + v10, v11);
      __swift_storeEnumTagSinglePayload(a1 + v10, 0, 1, v11);
    }

    v13 = v9[8];
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v15 + 1);
    *v14 = *v15;
    *(v14 + 1) = v16;
    *(v14 + 4) = *(v15 + 4);
    *(a1 + v9[9]) = *(a2 + v9[9]);
    swift_storeEnumTagMultiPayload();
    return a1;
  }
}

char *assignWithTake for AppShortcutInvocation(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_1DCC4155C(a1, type metadata accessor for AppShortcutInvocation);
  if (!swift_getEnumCaseMultiPayload())
  {
    v8 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v8;
    *(a1 + 2) = *(a2 + 2);
    v9 = type metadata accessor for AppShortcutExactInvocation(0);
    v10 = v9[7];
    v11 = sub_1DD0DB04C();
    if (__swift_getEnumTagSinglePayload(&a2[v10], 1, v11))
    {
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
      memcpy(&a1[v10], &a2[v10], *(*(v12 - 8) + 64));
    }

    else
    {
      (*(*(v11 - 8) + 32))(&a1[v10], &a2[v10], v11);
      __swift_storeEnumTagSinglePayload(&a1[v10], 0, 1, v11);
    }

    v13 = v9[8];
    v14 = &a1[v13];
    v15 = &a2[v13];
    v16 = *(v15 + 1);
    *v14 = *v15;
    *(v14 + 1) = v16;
    *(v14 + 4) = *(v15 + 4);
    *&a1[v9[9]] = *&a2[v9[9]];
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v6 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v6);
}

uint64_t sub_1DCC42FC4()
{
  result = type metadata accessor for AppShortcutExactInvocation(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

id AppShortcutProvider.init()@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(MEMORY[0x1E69ACDC8]) init];
  *a1 = result;
  return result;
}

uint64_t sub_1DCC430CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DCC453AC;

  return AppShortcutProviding.areAppShortcutsEnabled(bundleId:)(a1, a2, a3, a4);
}

uint64_t AppShortcutProviding.areAppShortcutsEnabled(bundleId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCC431A4()
{
  OUTLINED_FUNCTION_33();
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6EC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DCAFC000, v2, v3, "NOT fully implemented: AppShortcutProviding.areAppShortcutsEnabled(bundleId:)", v4, 2u);
    MEMORY[0x1E12A8390](v4, -1, -1);
  }

  v15 = v0[5];

  v5 = *(v15 + 40);
  v14 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_1DCC43364;
  v8 = v0[5];
  v9 = v0[6];
  v10 = v0[3];
  v11 = v0[4];
  v12 = v0[2];

  return v14(v12, v10, v11, v8);
}

uint64_t sub_1DCC43364()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_27();
  v3 = *(v2 + 56);
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  OUTLINED_FUNCTION_69();

  return v6(v0 & 1);
}

uint64_t AppShortcutProvider.appShortcuts(forBundleIdentifier:localeIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[21] = a3;
  v5[22] = a4;
  v5[19] = a1;
  v5[20] = a2;
  v5[23] = *v4;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCC43468()
{
  OUTLINED_FUNCTION_41();
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[20];
  v4 = v0[21];
  v5 = v0[19];
  v6 = sub_1DD0DDF8C();
  v0[24] = v6;
  v7 = sub_1DD0DDF8C();
  v0[25] = v7;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1DCC435A8;
  v8 = swift_continuation_init();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2668, &qword_1DD0E5F70);
  OUTLINED_FUNCTION_5_18(v9);
  v0[11] = 1107296256;
  v0[12] = sub_1DCC43788;
  v0[13] = &block_descriptor_0;
  v0[14] = v8;
  [v1 autoShortcutsForBundleIdentifier:v6 localeIdentifier:v7 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1DCC435A8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 208) = v4;
  if (v4)
  {
    v5 = sub_1DCC43714;
  }

  else
  {
    v5 = sub_1DCC436AC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DCC436AC()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 192);
  v2 = *(v0 + 144);

  OUTLINED_FUNCTION_69();

  return v3(v2);
}

uint64_t sub_1DCC43714()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[24];
  swift_willThrow();

  v4 = v0[1];
  v5 = v0[26];

  return v4();
}

uint64_t sub_1DCC43788(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;

    return sub_1DCEA2438(v4, v5);
  }

  else
  {
    sub_1DCC45350();
    v7 = sub_1DD0DE2EC();

    return sub_1DCEA243C(v4, v7);
  }
}

uint64_t AppShortcutProvider.retrieveAction(for:)(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 152) = a1;
  *(v2 + 160) = v3;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCC43838()
{
  OUTLINED_FUNCTION_33();
  v2 = v0[19];
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1DCC43944;
  v3 = swift_continuation_init();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2670, &qword_1DD0E5F80);
  OUTLINED_FUNCTION_5_18(v4);
  v0[11] = 1107296256;
  v0[12] = sub_1DCC43AD8;
  v0[13] = &block_descriptor_5;
  v0[14] = v3;
  [v1 retrieveActionForLocalizedPhrase:v2 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1DCC43944()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 168) = v4;
  if (v4)
  {
    v5 = sub_1DCC43A70;
  }

  else
  {
    v5 = sub_1DCC43A48;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DCC43A48()
{
  v1 = *(v0 + 144);
  OUTLINED_FUNCTION_69();
  return v2();
}

uint64_t sub_1DCC43A70()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 168);
  swift_willThrow();
  v2 = *(v0 + 8);
  v3 = *(v0 + 168);

  return v2();
}

uint64_t *sub_1DCC43AD8(uint64_t a1, void *a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    v7 = a3;

    return sub_1DCEA2438(v6, v7);
  }

  else if (a2)
  {
    v8 = a2;

    return sub_1DCEA243C(v6, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t AppShortcutProvider.retrieveAction(bundleIdentifier:appShortcutIdentifier:parameterIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[23] = a5;
  v7[24] = a6;
  v7[21] = a3;
  v7[22] = a4;
  v7[19] = a1;
  v7[20] = a2;
  v7[25] = *v6;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCC43B8C()
{
  OUTLINED_FUNCTION_41();
  v1 = v0[24];
  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[19];
  v5 = v0[20];
  v6 = sub_1DD0DDF8C();
  v0[26] = v6;
  v7 = sub_1DD0DDF8C();
  v0[27] = v7;
  if (v1)
  {
    v8 = v0[23];
    v9 = v0[24];
    v10 = sub_1DD0DDF8C();
  }

  else
  {
    v10 = 0;
  }

  v0[28] = v10;
  v11 = v0[25];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1DCC43D04;
  v12 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2670, &qword_1DD0E5F80);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1DCC43AD8;
  v0[13] = &block_descriptor_9;
  v0[14] = v12;
  [v11 retrieveActionForBundleIdentifier:v6 appShortcutIdentifier:v7 parameterIdentifier:v10 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1DCC43D04()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 232) = v4;
  if (v4)
  {
    v5 = sub_1DCC43E80;
  }

  else
  {
    v5 = sub_1DCC43E08;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DCC43E08()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 216);
  v2 = *(v0 + 208);
  v3 = *(v0 + 144);

  OUTLINED_FUNCTION_69();

  return v4(v3);
}

uint64_t sub_1DCC43E80()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[28];
  v2 = v0[29];
  v4 = v0[26];
  v3 = v0[27];
  swift_willThrow();

  v5 = v0[1];
  v6 = v0[29];

  return v5();
}

uint64_t AppShortcutProvider.areAppShortcutsEnabled(for:)()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v5 = v4;
  *(v1 + 16) = *v0;
  v6 = swift_task_alloc();
  *(v1 + 24) = v6;
  *v6 = v1;
  OUTLINED_FUNCTION_31_0(v6);

  return AppShortcutProvider.areAppShortcutsEnabled(bundleId:)(v5, v3);
}

uint64_t sub_1DCC43FA4()
{
  OUTLINED_FUNCTION_42();
  v1 = *(*v0 + 24);
  v2 = *v0;
  OUTLINED_FUNCTION_27();
  *v3 = v2;

  OUTLINED_FUNCTION_69();

  return v4(v5 & 1);
}

uint64_t AppShortcutProvider.areAppShortcutsEnabled(bundleId:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCC440B4()
{
  OUTLINED_FUNCTION_39();
  v2 = v0[6];
  v1 = v0[7];
  v3 = swift_task_alloc();
  v0[8] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = *(MEMORY[0x1E69E8920] + 4);
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_1DCC441A8;

  return MEMORY[0x1EEE6DE38](v0 + 11);
}

uint64_t sub_1DCC441A8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 80) = v0;

  if (v0)
  {
    v9 = sub_1DCC442D4;
  }

  else
  {
    v10 = *(v3 + 64);

    v9 = sub_1DCC442B0;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1DCC442B0()
{
  v1 = *(v0 + 88);
  OUTLINED_FUNCTION_69();
  return v2();
}

uint64_t sub_1DCC442D4()
{
  OUTLINED_FUNCTION_41();
  v23 = v0;
  v1 = v0[8];

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v2 = v0[10];
  v3 = v0[7];
  v4 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v4, qword_1EDE57E00);

  v5 = v2;
  v6 = sub_1DD0DD8EC();
  v7 = sub_1DD0DE6EC();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[10];
  if (v8)
  {
    v11 = v0[6];
    v10 = v0[7];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 136315394;
    *(v12 + 4) = sub_1DCB10E9C(v11, v10, &v22);
    *(v12 + 12) = 2080;
    swift_getErrorValue();
    v15 = v0[2];
    v14 = v0[3];
    v16 = v0[4];
    v17 = sub_1DD0DF18C();
    v19 = sub_1DCB10E9C(v17, v18, &v22);

    *(v12 + 14) = v19;
    _os_log_impl(&dword_1DCAFC000, v6, v7, "Could not determine if App Shortcuts for %s are enabled %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A8390](v13, -1, -1);
    MEMORY[0x1E12A8390](v12, -1, -1);
  }

  else
  {
  }

  OUTLINED_FUNCTION_69();

  return v20(2);
}

void sub_1DCC444CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2678, &qword_1DD0E6048);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = aBlock - v6;
  v8 = [objc_opt_self() standardClient];
  v9 = sub_1DD0DDF8C();
  (*(v3 + 16))(v7, a1, v2);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  (*(v3 + 32))(v11 + v10, v7, v2);
  aBlock[4] = sub_1DCC452AC;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DCC44744;
  aBlock[3] = &block_descriptor_29;
  v12 = _Block_copy(aBlock);

  [v8 getSiriAutoShortcutsEnablementForBundleIdentifier:v9 completion:v12];
  _Block_release(v12);
}

uint64_t sub_1DCC446C0(int a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2678, &qword_1DD0E6048);
    return sub_1DD0DE45C();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2678, &qword_1DD0E6048);
    return sub_1DD0DE46C();
  }
}

void sub_1DCC44744(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCC447C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DCC3C670;

  return AppShortcutProvider.appShortcuts(forBundleIdentifier:localeIdentifier:)(a1, a2, a3, a4);
}

uint64_t sub_1DCC4487C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCC453B0;

  return AppShortcutProvider.retrieveAction(for:)(a1);
}

uint64_t sub_1DCC44910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1DCC453B0;

  return AppShortcutProvider.retrieveAction(bundleIdentifier:appShortcutIdentifier:parameterIdentifier:)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1DCC449E4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCC44A88;

  return AppShortcutProvider.areAppShortcutsEnabled(for:)();
}

uint64_t sub_1DCC44A88()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_27();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_129();

  return v6(v5);
}

uint64_t sub_1DCC44B68(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCC44A88;

  return AppShortcutProvider.areAppShortcutsEnabled(bundleId:)(a1, a2);
}

void sub_1DCC44C04(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1DCC444CC(a1);
}

uint64_t dispatch thunk of AppShortcutProviding.appShortcuts(forBundleIdentifier:localeIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a6 + 16);
  OUTLINED_FUNCTION_8();
  v20 = (v13 + *v13);
  v15 = *(v14 + 4);
  v16 = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_30_1(v16);
  *v17 = v18;
  OUTLINED_FUNCTION_31_0(v17);

  return v20(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of AppShortcutProviding.retrieveAction(for:)()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = *(v0 + 24);
  v12 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_30_1(v8);
  *v9 = v10;
  OUTLINED_FUNCTION_31_0(v9);

  return v12(v5, v3, v1);
}

uint64_t dispatch thunk of AppShortcutProviding.retrieveAction(bundleIdentifier:appShortcutIdentifier:parameterIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *(a8 + 32);
  OUTLINED_FUNCTION_8();
  v24 = (v17 + *v17);
  v19 = *(v18 + 4);
  v20 = swift_task_alloc();
  v21 = OUTLINED_FUNCTION_30_1(v20);
  *v21 = v22;
  OUTLINED_FUNCTION_31_0(v21);

  return v24(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t dispatch thunk of AppShortcutProviding.areAppShortcutsEnabled(for:)()
{
  OUTLINED_FUNCTION_41();
  v4 = *(OUTLINED_FUNCTION_56_0(v0, v1, v2, v3) + 40);
  OUTLINED_FUNCTION_8();
  v14 = v5 + *v5;
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_30_1(v8);
  *v9 = v10;
  v11 = OUTLINED_FUNCTION_10_6(v9);

  return v12(v11);
}

uint64_t dispatch thunk of AppShortcutProviding.areAppShortcutsEnabled(bundleId:)()
{
  OUTLINED_FUNCTION_41();
  v4 = *(OUTLINED_FUNCTION_56_0(v0, v1, v2, v3) + 48);
  OUTLINED_FUNCTION_8();
  v14 = v5 + *v5;
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_30_1(v8);
  *v9 = v10;
  v11 = OUTLINED_FUNCTION_10_6(v9);

  return v12(v11);
}

void **assignWithCopy for AppShortcutProvider(void **a1, void **a2)
{
  v3 = *a2;
  v4 = *a1;
  *a1 = *a2;
  v5 = v3;

  return a1;
}

void **assignWithTake for AppShortcutProvider(void **a1, void **a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for AppShortcutProvider(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for AppShortcutProvider(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DCC452AC(int a1, void *a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2678, &qword_1DD0E6048) - 8) + 80);

  return sub_1DCC446C0(a1, a2);
}

void block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  sub_1DD0DCF8C();
}

unint64_t sub_1DCC45350()
{
  result = qword_1ECCA2680;
  if (!qword_1ECCA2680)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECCA2680);
  }

  return result;
}

void sub_1DCC453D0()
{
  if (qword_1EDE48CE8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDE57D40;
  v2 = type metadata accessor for CATTemplateExecutor();
  v0[5] = v2;
  v0[6] = &off_1F58563F0;
  v0[2] = v1;
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCC4551C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 64);
  v8 = *(*v3 + 56);
  v9 = *v3;
  *(*v3 + 72) = v2;

  if (v2)
  {
    v10 = sub_1DCC1F690;
  }

  else
  {
    *(v6 + 80) = a2;
    *(v6 + 88) = a1;
    v10 = sub_1DCC4566C;
  }

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

uint64_t sub_1DCC4566C()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[1];
  v3 = v0[10];
  v2 = v0[11];

  return v1(v2, v3);
}

void sub_1DCC456D4()
{
  v1 = *v0;
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v2 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v2, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

void sub_1DCC458F4(__int128 *a1)
{
  swift_beginAccess();
  sub_1DCC46E98(a1, v1 + 16);
  swift_endAccess();
  sub_1DCC456D4();
}

double AsyncConstructingFlow.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 56) = a1;
  *(v4 + 64) = a2;
  result = 0.0;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0;
  return result;
}

uint64_t AsyncConstructingFlow.init(_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  return v2;
}

uint64_t sub_1DCC459B4()
{
  v1 = *v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v2 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v2, qword_1EDE57E00);
  v3 = sub_1DD0DD8EC();
  v4 = sub_1DD0DE6EC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_151();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    v7 = sub_1DD0DF2AC();
    v9 = sub_1DCB10E9C(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1DCAFC000, v3, v4, "%s - the synchronous version of on was called. Unexpected since we implement onAsync.", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  return 0;
}

uint64_t sub_1DCC45AFC(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v2[14] = *v1;
  return OUTLINED_FUNCTION_0_12(sub_1DCC45B3C);
}

uint64_t sub_1DCC45B3C()
{
  v16 = v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = sub_1DD0DD8FC();
  v0[15] = __swift_project_value_buffer(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[14];
    v5 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v5 = 136315394;
    v6 = sub_1DD0DF2AC();
    v8 = sub_1DCB10E9C(v6, v7, &v15);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_1DCB10E9C(0x28636E7973416E6FLL, 0xEF293A7475706E69, &v15);
    _os_log_impl(&dword_1DCAFC000, v2, v3, "%s.%s", v5, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  v9 = v0[13];
  v10 = *(v9 + 64);
  v14 = (*(v9 + 56) + **(v9 + 56));
  v11 = *(*(v9 + 56) + 4);
  v12 = swift_task_alloc();
  v0[16] = v12;
  *v12 = v0;
  v12[1] = sub_1DCC45D84;

  return v14(v0 + 2);
}

uint64_t sub_1DCC45D84()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 128);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  return MEMORY[0x1EEE6DFA0](sub_1DCC45E70, 0, 0);
}

void sub_1DCC45E70()
{
  v1 = *(v0 + 104);
  sub_1DCB17CA0(v0 + 16, v0 + 56);
  sub_1DCC458F4((v0 + 56));
}

uint64_t sub_1DCC45FB4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = v1;
  v3 = *(v1 + 136);
  v6 = *v0;
  *(v2 + 144) = v4;

  return MEMORY[0x1EEE6DFA0](sub_1DCC460AC, 0, 0);
}

uint64_t sub_1DCC460AC()
{
  v16 = v1;
  if ((*(v1 + 144) & 1) == 0)
  {
    v2 = *(v1 + 120);
    v3 = sub_1DD0DD8EC();
    v4 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_23(v4))
    {
      v5 = *(v1 + 112);
      OUTLINED_FUNCTION_151();
      v6 = OUTLINED_FUNCTION_10_0();
      v15 = v6;
      v7 = OUTLINED_FUNCTION_8_17(4.8149e-34);
      v9 = sub_1DCB10E9C(v7, v8, &v15);

      *(v0 + 4) = v9;
      OUTLINED_FUNCTION_4_15(&dword_1DCAFC000, v10, v11, "%s - Flow rejected initial input. Since this is the first Flow in the response this should not happen.");
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_62();
    }
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 16));
  v12 = *(v1 + 8);
  v13 = *(v1 + 144);

  return v12(v13);
}

uint64_t sub_1DCC461B4(uint64_t a1)
{
  v2[15] = a1;
  v2[16] = v1;
  v2[17] = *v1;
  return OUTLINED_FUNCTION_0_12(sub_1DCC461F4);
}

uint64_t sub_1DCC461F4()
{
  v38 = v1;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v2 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v2, qword_1EDE57E00);
  v3 = sub_1DD0DD8EC();
  v4 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v1[17];
    v0 = swift_slowAlloc();
    *&v35 = swift_slowAlloc();
    *v0 = 136315394;
    v6 = sub_1DD0DF2AC();
    v8 = sub_1DCB10E9C(v6, v7, &v35);

    *(v0 + 4) = v8;
    *(v0 + 12) = 2080;
    *(v0 + 14) = sub_1DCB10E9C(0x2865747563657865, 0xE900000000000029, &v35);
    _os_log_impl(&dword_1DCAFC000, v3, v4, "%s.%s", v0, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_62();
  }

  v9 = v1[16];
  swift_beginAccess();
  sub_1DCC46884(v9 + 16, (v1 + 7));
  v10 = (v1 + 7);
  if (v1[10] >= 2uLL)
  {
    sub_1DCB18FF0(v10, (v1 + 2));
    v22 = sub_1DD0DD8EC();
    v23 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_23(v23))
    {
      v24 = v1[17];
      OUTLINED_FUNCTION_151();
      v25 = OUTLINED_FUNCTION_10_0();
      *&v35 = v25;
      v26 = OUTLINED_FUNCTION_8_17(4.8149e-34);
      v28 = sub_1DCB10E9C(v26, v27, &v35);

      *(v0 + 4) = v28;
      OUTLINED_FUNCTION_4_15(&dword_1DCAFC000, v29, v30, "%s completing and pushing constructed flow");
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_62();
    }

    v31 = v1[15];
    v32 = v1[16];
    v35 = 0uLL;
    v36 = 0;
    v37 = xmmword_1DD0E5100;
    sub_1DCC458F4(&v35);
  }

  sub_1DCC468BC(v10);
  v11 = sub_1DD0DD8EC();
  v12 = sub_1DD0DE6EC();
  if (OUTLINED_FUNCTION_23(v12))
  {
    v13 = v1[17];
    OUTLINED_FUNCTION_151();
    v14 = OUTLINED_FUNCTION_10_0();
    *&v35 = v14;
    v15 = OUTLINED_FUNCTION_8_17(4.8149e-34);
    v17 = sub_1DCB10E9C(v15, v16, &v35);

    *(v0 + 4) = v17;
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_62();
  }

  v20 = v1[15];
  v21.n128_f64[0] = static ExecuteResponse.complete()();
  v33 = v1[1];

  return v33(v21);
}

uint64_t sub_1DCC4651C()
{
  sub_1DCC46884(v0, v2);
  if (!v3)
  {
    return 0x6E6974696177612ELL;
  }

  if (v3 == 1)
  {
    return 0x74656C706D6F632ELL;
  }

  sub_1DCC468BC(v2);
  return 0x657243776F6C662ELL;
}

uint64_t AsyncConstructingFlow.deinit()
{
  sub_1DCC468BC((v0 + 16));
  v1 = *(v0 + 64);

  return v0;
}

uint64_t AsyncConstructingFlow.__deallocating_deinit()
{
  sub_1DCC468BC((v0 + 16));
  v1 = *(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t sub_1DCC46624()
{
  v1 = *v0;
  sub_1DCC459B4();
  return 0;
}

uint64_t sub_1DCC4664C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCBCF434;

  return sub_1DCC45AFC(a1);
}

uint64_t sub_1DCC46708()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  v4 = *v0;
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1DCC467A0;

  return sub_1DCC461B4(v3);
}

uint64_t sub_1DCC467A0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5();
}

uint64_t dispatch thunk of AsyncConstructingFlow.onAsync(input:)(uint64_t a1)
{
  v4 = *(*v1 + 136);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DCBCF434;

  return v8(a1);
}

uint64_t dispatch thunk of AsyncConstructingFlow.execute()(uint64_t a1)
{
  v4 = *(*v1 + 152);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DCC467A0;

  return v8(a1);
}

uint64_t *destroy for AsyncConstructingFlow.State(uint64_t *result)
{
  if (result[3] >= 0xFFFFFFFF)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(result);
  }

  return result;
}

uint64_t initializeWithCopy for AsyncConstructingFlow.State(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3 < 0xFFFFFFFF)
  {
    v5 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v5;
    *(a1 + 32) = *(a2 + 32);
  }

  else
  {
    v4 = *(a2 + 32);
    *(a1 + 24) = v3;
    *(a1 + 32) = v4;
    (**(v3 - 8))(a1);
  }

  return a1;
}

uint64_t assignWithCopy for AsyncConstructingFlow.State(uint64_t a1, __int128 *a2)
{
  v4 = *(a2 + 3);
  if (*(a1 + 24) < 0xFFFFFFFFuLL)
  {
    if (v4 >= 0xFFFFFFFF)
    {
      *(a1 + 24) = v4;
      *(a1 + 32) = *(a2 + 4);
      (**(v4 - 8))(a1, a2);
      return a1;
    }

LABEL_7:
    v5 = *a2;
    v6 = a2[1];
    *(a1 + 32) = *(a2 + 4);
    *a1 = v5;
    *(a1 + 16) = v6;
    return a1;
  }

  if (v4 < 0xFFFFFFFF)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    goto LABEL_7;
  }

  __swift_assign_boxed_opaque_existential_1(a1, a2);
  return a1;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t assignWithTake for AsyncConstructingFlow.State(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) >= 0xFFFFFFFFuLL)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t getEnumTagSinglePayload for AsyncConstructingFlow.State(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 40))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AsyncConstructingFlow.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1DCC46E44(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

double sub_1DCC46E5C(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

uint64_t Result<>.init(catching:)(uint64_t a1, int *a2)
{
  v2[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v4 = sub_1DD0DF22C();
  v2[3] = v4;
  v5 = *(v4 - 8);
  v2[4] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v2[5] = v7;
  v11 = (a2 + *a2);
  v8 = a2[1];
  v9 = swift_task_alloc();
  v2[6] = v9;
  *v9 = v2;
  v9[1] = sub_1DCC47058;

  return v11(v7);
}

uint64_t sub_1DCC47058()
{
  OUTLINED_FUNCTION_42();
  v2 = *(*v1 + 48);
  v3 = *v1;
  OUTLINED_FUNCTION_27();
  *v4 = v3;
  *(v5 + 56) = v0;

  if (v0)
  {
    v6 = sub_1DCC471F8;
  }

  else
  {
    v6 = sub_1DCC47160;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1DCC47160()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  swift_storeEnumTagMultiPayload();
  (*(v2 + 32))(v4, v1, v3);
  v5 = v0[5];

  OUTLINED_FUNCTION_29();

  return v6();
}

uint64_t sub_1DCC471F8()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 24);
  **(v0 + 16) = *(v0 + 56);
  swift_storeEnumTagMultiPayload();
  v2 = *(v0 + 40);

  OUTLINED_FUNCTION_29();

  return v3();
}

void sub_1DCC47264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v14 = &v17 - v13;
  v15 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = a5;
  v16[5] = a1;
  v16[6] = a2;
  v16[7] = a3;
  v16[8] = a4;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCC4737C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6, uint64_t a7, uint64_t a8)
{
  v8[3] = a5;
  v8[4] = a8;
  v8[2] = a4;
  v10 = *(a8 - 8);
  v8[5] = v10;
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  v8[6] = v12;
  v16 = (a6 + *a6);
  v13 = a6[1];
  v14 = swift_task_alloc();
  v8[7] = v14;
  *v14 = v8;
  v14[1] = sub_1DCC474D4;

  return v16(v12);
}

uint64_t sub_1DCC474D4()
{
  OUTLINED_FUNCTION_42();
  v1 = *(*v0 + 56);
  v2 = *v0;
  OUTLINED_FUNCTION_27();
  *v3 = v2;

  return MEMORY[0x1EEE6DFA0](sub_1DCC475C4, 0, 0);
}

uint64_t sub_1DCC475C4()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  (*(v0 + 16))(v1);
  (*(v2 + 8))(v1, v4);

  OUTLINED_FUNCTION_29();

  return v5();
}

uint64_t sub_1DCC47658(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1DCB22EC8;

  return sub_1DCC4737C(a1, v4, v5, v7, v8, v9, v10, v6);
}

void sub_1DCC47734()
{
  if (qword_1EDE4A110 != -1)
  {
    swift_once();
  }

  sub_1DCB4BA5C();
}

uint64_t static AudioOutputContext.current.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECCA1228 != -1)
  {
    swift_once();
  }

  return sub_1DCB17CA0(&qword_1ECCD2588, a1);
}

uint64_t AudioOutputContextRouteFailure.hashValue.getter()
{
  v1 = *v0;
  sub_1DD0DF1DC();
  MEMORY[0x1E12A7840](v1);
  return sub_1DD0DF20C();
}

unint64_t sub_1DCC4791C()
{
  result = qword_1ECCA2688;
  if (!qword_1ECCA2688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA2688);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AudioOutputContext(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for AudioOutputContextRouteFailure(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1DCC47B0C(void (*a1)(void *), uint64_t a2)
{
  v3 = v2;
  v6 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
  v7 = *(v6 + 112);
  v8 = OUTLINED_FUNCTION_2_28();
  v9(v8);
  v10 = v33;
  __swift_project_boxed_opaque_existential_1(v31, v32);
  v11 = *(v10 + 8);
  v12 = OUTLINED_FUNCTION_2_28();
  v13(v12);
  if (v14)
  {

    v15 = v33;
    __swift_project_boxed_opaque_existential_1(v31, v32);
    v16 = *(v15 + 16);
    v17 = OUTLINED_FUNCTION_2_28();
    v19 = v18(v17);
    if (v20)
    {
      v21 = v19;
      v22 = v20;
      v23 = swift_allocObject();
      v23[2] = a1;
      v23[3] = a2;
      v23[4] = v3;
      v23[5] = v21;
      v23[6] = v22;
      sub_1DD0DCF8C();
    }
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v24 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v24, qword_1EDE57E00);
  v25 = sub_1DD0DD8EC();
  v26 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_1DCAFC000, v25, v26, "Device does not have an endpoint identifier and therefore not SE, hence returning nil", v27, 2u);
    OUTLINED_FUNCTION_80();
  }

  v29[0] = 0;
  v29[1] = 0;
  v30 = 0;
  a1(v29);
  return __swift_destroy_boxed_opaque_existential_1Tm(v31);
}

uint64_t sub_1DCC47CFC(uint64_t a1, uint64_t (*a2)(__int128 *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v83 = a3;
  v84 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2690, &qword_1DD0E6288);
  v10 = *(*(v9 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v14 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v18 = &v80 - v17;
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = &v80 - v20;
  v22 = type metadata accessor for AudioOutputContextHelper.DeviceInfo();
  v23 = *(*(v22 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v22, v24);
  v27 = MEMORY[0x1EEE9AC00](v25, v26);
  v29 = MEMORY[0x1EEE9AC00](v27, v28);
  v82 = (&v80 - v30);
  v32 = MEMORY[0x1EEE9AC00](v29, v31);
  v34 = (&v80 - v33);
  v36 = MEMORY[0x1EEE9AC00](v32, v35);
  v38 = &v80 - v37;
  MEMORY[0x1EEE9AC00](v36, v39);
  v43 = (&v80 - v42);
  if (!a1)
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v48 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v48, qword_1EDE57E00);
    v49 = sub_1DD0DD8EC();
    v50 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_1DCAFC000, v49, v50, "The device info list returned is nil indicating some failure in shared context retrieval, returning failure", v51, 2u);
      MEMORY[0x1E12A8390](v51, -1, -1);
    }

    v86 = 0uLL;
    goto LABEL_15;
  }

  v80 = v40;
  v81 = v41;
  sub_1DCC48A5C(a1, a5, a6, v21);
  if (__swift_getEnumTagSinglePayload(v21, 1, v22) == 1)
  {
    sub_1DCB16D50(v21, &qword_1ECCA2690, &qword_1DD0E6288);
    sub_1DCC48BC0(a1, v18);
    if (__swift_getEnumTagSinglePayload(v18, 1, v22) == 1)
    {
      sub_1DCB16D50(v18, &qword_1ECCA2690, &qword_1DD0E6288);
      sub_1DCC48F44(a1, v14);
      if (__swift_getEnumTagSinglePayload(v14, 1, v22) == 1)
      {
        sub_1DCB16D50(v14, &qword_1ECCA2690, &qword_1DD0E6288);
        if (qword_1EDE4F900 != -1)
        {
          swift_once();
        }

        v44 = sub_1DD0DD8FC();
        __swift_project_value_buffer(v44, qword_1EDE57E00);
        v45 = sub_1DD0DD8EC();
        v46 = sub_1DD0DE6DC();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          *v47 = 0;
          _os_log_impl(&dword_1DCAFC000, v45, v46, "No suitable device for playback found, returning failure for no applicable device", v47, 2u);
          MEMORY[0x1E12A8390](v47, -1, -1);
        }

        v86 = xmmword_1DD0E5100;
LABEL_15:
        v87 = 1;
        return v84(&v86);
      }

      v43 = v82;
      sub_1DCC4983C(v14, v82);
      if (qword_1EDE4F900 != -1)
      {
        swift_once();
      }

      v73 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v73, qword_1EDE57E00);
      v66 = v80;
      sub_1DCC4977C(v43, v80);
      v54 = sub_1DD0DD8EC();
      v55 = sub_1DD0DE6DC();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v85 = v57;
        *v56 = 136315138;
        v74 = v66[1];
        *&v86 = *v66;
        *(&v86 + 1) = v74;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2900, &qword_1DD0E7ED0);
        v75 = sub_1DD0DE02C();
        v77 = v76;
        sub_1DCC497E0(v66);
        v78 = sub_1DCB10E9C(v75, v77, &v85);

        *(v56 + 4) = v78;
        v63 = "Found most recently playing device, returning following identifier: %s";
        goto LABEL_29;
      }

      goto LABEL_30;
    }

    v43 = v38;
    sub_1DCC4983C(v18, v38);
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v64 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v64, qword_1EDE57E00);
    v65 = v38;
    v66 = v81;
    sub_1DCC4977C(v65, v81);
    v54 = sub_1DD0DD8EC();
    v55 = sub_1DD0DE6DC();
    if (!os_log_type_enabled(v54, v55))
    {
LABEL_30:

      v72 = v66;
      goto LABEL_31;
    }

    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v85 = v57;
    *v56 = 136315138;
    v67 = v66[1];
    *&v86 = *v66;
    *(&v86 + 1) = v67;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2900, &qword_1DD0E7ED0);
    v68 = sub_1DD0DE02C();
    v70 = v69;
    sub_1DCC497E0(v66);
    v71 = sub_1DCB10E9C(v68, v70, &v85);

    *(v56 + 4) = v71;
    v63 = "Device found in immediate vicinity playing content, returning following identifier: %s";
  }

  else
  {
    sub_1DCC4983C(v21, v43);
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v53 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v53, qword_1EDE57E00);
    sub_1DCC4977C(v43, v34);
    v54 = sub_1DD0DD8EC();
    v55 = sub_1DD0DE6DC();
    if (!os_log_type_enabled(v54, v55))
    {

      v72 = v34;
LABEL_31:
      sub_1DCC497E0(v72);
      goto LABEL_32;
    }

    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v85 = v57;
    *v56 = 136315138;
    v58 = v34[1];
    *&v86 = *v34;
    *(&v86 + 1) = v58;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2900, &qword_1DD0E7ED0);
    v59 = sub_1DD0DE02C();
    v61 = v60;
    sub_1DCC497E0(v34);
    v62 = sub_1DCB10E9C(v59, v61, &v85);

    *(v56 + 4) = v62;
    v63 = "Primary device playing content, returning following identifier: %s";
  }

LABEL_29:
  _os_log_impl(&dword_1DCAFC000, v54, v55, v63, v56, 0xCu);
  __swift_destroy_boxed_opaque_existential_1Tm(v57);
  MEMORY[0x1E12A8390](v57, -1, -1);
  MEMORY[0x1E12A8390](v56, -1, -1);

LABEL_32:
  v79 = v43[1];
  *&v86 = *v43;
  *(&v86 + 1) = v79;
  v87 = 0;

  v84(&v86);
  sub_1DCC4998C(v86, *(&v86 + 1), v87);
  return sub_1DCC497E0(v43);
}

void sub_1DCC4852C(uint64_t a1, uint64_t a2)
{
  v5 = v2[11];
  __swift_project_boxed_opaque_existential_1(v2 + 7, v2[10]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28D0, &unk_1DD0E40C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD0E07C0;
  v7 = *MEMORY[0x1E698D068];
  *(inited + 32) = sub_1DD0DDFBC();
  *(inited + 40) = v8;
  sub_1DCB18D80(inited);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_1DD0DCF8C();
}

void sub_1DCC48630(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BA0, &qword_1DD0E6280);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = &v49 - v9;
  v11 = type metadata accessor for AudioOutputContextHelper.DeviceInfo();
  v12 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v56 = (&v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!a1)
  {
    a2(0);
    return;
  }

  v52 = v15;
  v53 = v14;
  v51 = v10;
  v54 = a3;
  v55 = a2;
  v17 = sub_1DCB08B14(a1);
  v18 = 0;
  v59 = a1 & 0xC000000000000001;
  v57 = MEMORY[0x1E69E7CC0];
  v58 = a1 & 0xFFFFFFFFFFFFFF8;
  v19 = *MEMORY[0x1E698D068];
  while (1)
  {
    if (v17 == v18)
    {
      v55(v57);

      return;
    }

    if (v59)
    {
      v20 = MEMORY[0x1E12A72C0](v18, a1);
    }

    else
    {
      if (v18 >= *(v58 + 16))
      {
        goto LABEL_29;
      }

      v20 = *(a1 + 8 * v18 + 32);
    }

    v21 = v20;
    v22 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    v23 = sub_1DCB1C328(v20);
    if (!v23)
    {
      goto LABEL_30;
    }

    v24 = v23;
    v25 = sub_1DD0DDFBC();
    if (!*(v24 + 16))
    {

      goto LABEL_13;
    }

    v27 = sub_1DCB21038(v25, v26);
    v29 = v28;

    if (v29)
    {
      sub_1DCB0DF6C(*(v24 + 56) + 32 * v27, v60);

      sub_1DCB20B30(v60, v61);
      sub_1DCB0DF6C(v61, v60);
      v30 = objc_allocWithZone(MEMORY[0x1E698D190]);
      v31 = sub_1DCB1C2BC(v60);
      if ([v21 proximity] == 4000 || objc_msgSend(v21, sel_proximity) == 3000)
      {
        v32 = sub_1DCC498A8(v21);
        v50 = v33;
        v49 = [v21 proximity];
        v34 = [v31 playbackState];
        v35 = [v31 nowPlayingTimestamp];
        if (v35)
        {
          v36 = v35;
          v37 = v51;
          sub_1DD0DAFAC();

          v38 = 0;
        }

        else
        {
          v38 = 1;
          v37 = v51;
        }

        v39 = sub_1DD0DAFDC();
        __swift_storeEnumTagSinglePayload(v37, v38, 1, v39);
        v40 = v56;
        v41 = v49;
        v42 = v50;
        *v56 = v32;
        v40[1] = v42;
        v40[2] = v41;
        *(v40 + 24) = 0;
        v40[4] = v34;
        *(v40 + 40) = 0;
        sub_1DCC4990C(v37, v40 + *(v53 + 28));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v46 = *(v57 + 16);
          sub_1DCE193F4();
          v57 = v47;
        }

        v43 = *(v57 + 16);
        if (v43 >= *(v57 + 24) >> 1)
        {
          sub_1DCE193F4();
          v57 = v48;
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v61);
        v44 = v56;
        v45 = v57;
        *(v57 + 16) = v43 + 1;
        sub_1DCC4983C(v44, v45 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v43);
        v18 = v22;
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v61);

        ++v18;
      }
    }

    else
    {
LABEL_13:

      ++v18;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
}

uint64_t sub_1DCC48A5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for AudioOutputContextHelper.DeviceInfo();
  v9 = OUTLINED_FUNCTION_4_16(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + 16);
  if (v16)
  {
    v17 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v18 = *(v13 + 72);
    while (1)
    {
      sub_1DCC4977C(v17, v15);
      if ((v15[24] & 1) == 0 && *(v15 + 2) == 4000)
      {
        v19 = *(v15 + 1);
        if (v19)
        {
          v20 = *v15 == a2 && v19 == a3;
          if (v20 || (sub_1DD0DF0AC()) && (v15[40] & 1) == 0 && *(v15 + 4) == 1)
          {
            break;
          }
        }
      }

      sub_1DCC497E0(v15);
      v17 += v18;
      if (!--v16)
      {
        goto LABEL_14;
      }
    }

    sub_1DCC4983C(v15, a4);
    v21 = 0;
  }

  else
  {
LABEL_14:
    v21 = 1;
  }

  return OUTLINED_FUNCTION_7_18(a4, v21);
}

uint64_t sub_1DCC48BC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AudioOutputContextHelper.DeviceInfo();
  v5 = OUTLINED_FUNCTION_4_16(v4);
  v7 = *(v6 + 64);
  v9 = MEMORY[0x1EEE9AC00](v5, v8);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v9, v12);
  v15 = &v52 - v14;
  v17 = MEMORY[0x1EEE9AC00](v13, v16);
  v19 = &v52 - v18;
  MEMORY[0x1EEE9AC00](v17, v20);
  v24 = *(a1 + 16);
  if (!v24)
  {
    v30 = 1;
    return __swift_storeEnumTagSinglePayload(a2, v30, 1, v21);
  }

  v52 = &v52 - v23;
  v53 = v21;
  v54 = a2;
  v25 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v26 = a1 + v25;
  v27 = *(v22 + 72);
  v28 = a1 + v25;
  v29 = v24;
  while (1)
  {
    sub_1DCC4977C(v28, v19);
    if ((v19[40] & 1) == 0 && *(v19 + 4) == 1)
    {
      break;
    }

    sub_1DCC497E0(v19);
    v28 += v27;
    if (!--v29)
    {
      v30 = 1;
      a2 = v54;
      goto LABEL_26;
    }
  }

  sub_1DCC4983C(v19, v52);
  v31 = 0;
  while (1)
  {
    sub_1DCC4977C(v26, v15);
    v32 = *(v15 + 4);
    v33 = v15[40];
    sub_1DCC497E0(v15);
    v34 = v33 | (v32 != 1);
    if ((v34 & 1) == 0)
    {
      break;
    }

    ++v31;
    v26 += v27;
    if (v24 == v31)
    {
      v31 = 0;
      break;
    }
  }

  v35 = v31 - v24;
  v36 = v24 - 1;
  v37 = a1 + v25 + v27 * (v24 - 1);
  v38 = -v27;
  do
  {
    if (v36 >= v24)
    {
      __break(1u);
      goto LABEL_29;
    }

    sub_1DCC4977C(v37, v11);
    v39 = *(v11 + 4);
    v40 = v11[40];
    sub_1DCC497E0(v11);
    LOBYTE(v26) = v40 | (v39 != 1);
    ++v35;
    if (v36-- == 0)
    {
      break;
    }

    v37 += v38;
  }

  while ((v26 & 1) != 0);
  if (qword_1EDE4F900 == -1)
  {
    goto LABEL_18;
  }

LABEL_29:
  OUTLINED_FUNCTION_0_0();
LABEL_18:
  v42 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v42, qword_1EDE57E00);
  v43 = sub_1DD0DD8EC();
  v44 = sub_1DD0DE6DC();
  v45 = os_log_type_enabled(v43, v44);
  a2 = v54;
  if (v45)
  {
    v46 = 0xD00000000000001DLL;
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v55 = v48;
    *v47 = 136315138;
    if (v34)
    {
      if ((v26 & 1) == 0)
      {
LABEL_21:
        v49 = "sharedContextService";
        v46 = 0xD000000000000020;
LABEL_24:
        v50 = sub_1DCB10E9C(v46, v49 | 0x8000000000000000, &v55);

        *(v47 + 4) = v50;
        _os_log_impl(&dword_1DCAFC000, v43, v44, "%s", v47, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v48);
        OUTLINED_FUNCTION_80();
        OUTLINED_FUNCTION_80();
        goto LABEL_25;
      }
    }

    else if ((v35 != 0) | v26 & 1)
    {
      goto LABEL_21;
    }

    v49 = " devices playing";
    goto LABEL_24;
  }

LABEL_25:

  sub_1DCC4983C(v52, a2);
  v30 = 0;
LABEL_26:
  v21 = v53;
  return __swift_storeEnumTagSinglePayload(a2, v30, 1, v21);
}

uint64_t sub_1DCC48F44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v92 = a2;
  v3 = sub_1DD0DAFDC();
  v4 = OUTLINED_FUNCTION_9(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4, v9);
  OUTLINED_FUNCTION_44_0();
  v90 = v10;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v11, v12);
  v101 = &v90 - v13;
  v14 = type metadata accessor for AudioOutputContextHelper.DeviceInfo();
  v15 = OUTLINED_FUNCTION_9(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15, v20);
  v22 = &v90 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BA0, &qword_1DD0E6280);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8, v25);
  OUTLINED_FUNCTION_44_0();
  v94 = v26;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v27, v28);
  v96 = &v90 - v29;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v30, v31);
  v99 = &v90 - v32;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v90 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2690, &qword_1DD0E6288);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37 - 8, v39);
  OUTLINED_FUNCTION_44_0();
  v91 = v40;
  OUTLINED_FUNCTION_29_0();
  v43 = MEMORY[0x1EEE9AC00](v41, v42);
  v45 = &v90 - v44;
  MEMORY[0x1EEE9AC00](v43, v46);
  v104 = &v90 - v47;
  OUTLINED_FUNCTION_7_18(&v90 - v47, 1);
  v105 = v36;
  v100 = v3;
  __swift_storeEnumTagSinglePayload(v36, 1, 1, v3);
  v48 = *(a1 + 16);
  if (v48)
  {
    v49 = a1 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v50 = *(v17 + 72);
    v93 = (v6 + 8);
    v51 = &qword_1ECCA9BA0;
    v102 = v14;
    v103 = v45;
    v97 = (v6 + 32);
    v98 = v50;
    while (1)
    {
      sub_1DCC4977C(v49, v22);
      if (*(v22 + 1))
      {
        break;
      }

      sub_1DCC497E0(v22);
LABEL_11:
      v49 += v50;
      if (!--v48)
      {
        goto LABEL_21;
      }
    }

    v52 = v51;
    sub_1DCB28B08(v104, v45, &qword_1ECCA2690, &qword_1DD0E6288);
    if (__swift_getEnumTagSinglePayload(v45, 1, v14) == 1)
    {
      v53 = v51;
      sub_1DCB16D50(v105, v51, &qword_1DD0E6280);
      OUTLINED_FUNCTION_6_13();
      sub_1DCB16D50(v54, v55, v56);
    }

    else
    {
      v57 = v97;
      OUTLINED_FUNCTION_6_13();
      sub_1DCB16D50(v58, v59, v60);
      v61 = v99;
      sub_1DCB28B08(v105, v99, v51, &qword_1DD0E6280);
      v62 = v100;
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v61, 1, v100);
      v64 = v101;
      if (EnumTagSinglePayload != 1)
      {
        OUTLINED_FUNCTION_8_18(v61);
        v95 = *(v102 + 28);
        v69 = v96;
        OUTLINED_FUNCTION_6_13();
        sub_1DCB28B08(v70, v71, v72, &qword_1DD0E6280);
        if (__swift_getEnumTagSinglePayload(v69, 1, v62) == 1)
        {
          sub_1DCC497E0(v22);
          v73 = v69;
        }

        else
        {
          v74 = v69;
          v75 = *v57;
          (*v57)(v64, v74, v62);
          v76 = v94;
          sub_1DCB28B08(v105, v94, v52, &qword_1DD0E6280);
          if (__swift_getEnumTagSinglePayload(v76, 1, v62) != 1)
          {
            v77 = v90;
            v75(v90, v76, v62);
            v78 = sub_1DD0DAF7C();
            v79 = *v93;
            (*v93)(v77, v62);
            v79(v101, v62);
            v14 = v102;
            if (v78)
            {
              v80 = v105;
              sub_1DCB16D50(v105, v52, &qword_1DD0E6280);
              v81 = v104;
              sub_1DCB16D50(v104, &qword_1ECCA2690, &qword_1DD0E6288);
              sub_1DCC4977C(v22, v81);
              OUTLINED_FUNCTION_7_18(v81, 0);
              sub_1DCB28B08(&v22[v95], v80, v52, &qword_1DD0E6280);
            }

            sub_1DCC497E0(v22);
            v50 = v98;
            v51 = v52;
            goto LABEL_10;
          }

          (*v93)(v64, v62);
          sub_1DCC497E0(v22);
          v73 = v76;
          v51 = &qword_1ECCA9BA0;
        }

        OUTLINED_FUNCTION_8_18(v73);
        v14 = v102;
        v50 = v98;
LABEL_10:
        v45 = v103;
        goto LABEL_11;
      }

      OUTLINED_FUNCTION_8_18(v105);
      OUTLINED_FUNCTION_8_18(v61);
      v14 = v102;
      v50 = v98;
      v53 = v51;
    }

    v65 = v104;
    OUTLINED_FUNCTION_6_13();
    sub_1DCB16D50(v66, v67, v68);
    sub_1DCC4977C(v22, v65);
    OUTLINED_FUNCTION_7_18(v65, 0);
    sub_1DCB28B08(&v22[*(v14 + 28)], v105, v53, &qword_1DD0E6280);
    sub_1DCC497E0(v22);
    v51 = v53;
    goto LABEL_10;
  }

LABEL_21:
  v82 = v104;
  v83 = v91;
  sub_1DCB28B08(v104, v91, &qword_1ECCA2690, &qword_1DD0E6288);
  v84 = __swift_getEnumTagSinglePayload(v83, 1, v14);
  sub_1DCB16D50(v83, &qword_1ECCA2690, &qword_1DD0E6288);
  if (v84 != 1 && !__swift_getEnumTagSinglePayload(v82, 1, v14) && (*(v82 + 24) & 1) == 0 && *(v82 + 16) == 4000)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v85 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v85, qword_1EDE57E00);
    v86 = sub_1DD0DD8EC();
    v87 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      *v88 = 0;
      _os_log_impl(&dword_1DCAFC000, v86, v87, "Primary requesting device was most recently playing", v88, 2u);
      OUTLINED_FUNCTION_80();
    }
  }

  sub_1DCB16D50(v105, &qword_1ECCA9BA0, &qword_1DD0E6280);
  sub_1DCB28B08(v82, v92, &qword_1ECCA2690, &qword_1DD0E6288);
  return sub_1DCB16D50(v82, &qword_1ECCA2690, &qword_1DD0E6288);
}

uint64_t sub_1DCC496A8()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AudioOutputContextHelper.DeviceInfo()
{
  result = qword_1ECCA2698;
  if (!qword_1ECCA2698)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DCC4977C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioOutputContextHelper.DeviceInfo();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DCC497E0(uint64_t a1)
{
  v2 = type metadata accessor for AudioOutputContextHelper.DeviceInfo();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DCC4983C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioOutputContextHelper.DeviceInfo();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DCC498A8(void *a1)
{
  v1 = [a1 mediaRouteIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DD0DDFBC();

  return v3;
}

uint64_t sub_1DCC4990C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BA0, &qword_1DD0E6280);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DCC4998C(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1DCC4999C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(*(a3 - 8) + 80) & 0x20000) != 0)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  v5 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v5;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v6 = *(a3 + 28);
  v7 = sub_1DD0DAFDC();

  if (__swift_getEnumTagSinglePayload(a2 + v6, 1, v7))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BA0, &qword_1DD0E6280);
    memcpy((a1 + v6), (a2 + v6), *(*(v8 - 8) + 64));
  }

  else
  {
    (*(*(v7 - 8) + 16))(a1 + v6, a2 + v6, v7);
    __swift_storeEnumTagSinglePayload(a1 + v6, 0, 1, v7);
  }

  return a1;
}

uint64_t sub_1DCC49AF4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);

  v5 = *(a2 + 28);
  v6 = sub_1DD0DAFDC();
  result = __swift_getEnumTagSinglePayload(a1 + v5, 1, v6);
  if (!result)
  {
    v8 = *(*(v6 - 8) + 8);

    return v8(a1 + v5, v6);
  }

  return result;
}

uint64_t sub_1DCC49B98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v5;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v6 = *(a3 + 28);
  v7 = sub_1DD0DAFDC();

  if (__swift_getEnumTagSinglePayload(a2 + v6, 1, v7))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BA0, &qword_1DD0E6280);
    memcpy((a1 + v6), (a2 + v6), *(*(v8 - 8) + 64));
  }

  else
  {
    (*(*(v7 - 8) + 16))(a1 + v6, a2 + v6, v7);
    __swift_storeEnumTagSinglePayload(a1 + v6, 0, 1, v7);
  }

  return a1;
}

uint64_t sub_1DCC49CA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  v7 = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = v7;
  v8 = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 32) = v8;
  v9 = *(a3 + 28);
  v10 = sub_1DD0DAFDC();
  LODWORD(v6) = __swift_getEnumTagSinglePayload(a1 + v9, 1, v10);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a2 + v9, 1, v10);
  if (!v6)
  {
    v12 = *(v10 - 8);
    if (!EnumTagSinglePayload)
    {
      (*(v12 + 24))(a1 + v9, a2 + v9, v10);
      return a1;
    }

    (*(v12 + 8))(a1 + v9, v10);
    goto LABEL_6;
  }

  if (EnumTagSinglePayload)
  {
LABEL_6:
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BA0, &qword_1DD0E6280);
    memcpy((a1 + v9), (a2 + v9), *(*(v13 - 8) + 64));
    return a1;
  }

  (*(*(v10 - 8) + 16))(a1 + v9, a2 + v9, v10);
  __swift_storeEnumTagSinglePayload(a1 + v9, 0, 1, v10);
  return a1;
}

uint64_t sub_1DCC49E40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v5 = *(a3 + 28);
  v6 = sub_1DD0DAFDC();
  if (__swift_getEnumTagSinglePayload(a2 + v5, 1, v6))
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BA0, &qword_1DD0E6280);
    memcpy((a1 + v5), (a2 + v5), *(*(v7 - 8) + 64));
  }

  else
  {
    (*(*(v6 - 8) + 32))(a1 + v5, a2 + v5, v6);
    __swift_storeEnumTagSinglePayload(a1 + v5, 0, 1, v6);
  }

  return a1;
}

uint64_t sub_1DCC49F3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  v7 = *(a1 + 8);
  *a1 = *a2;
  *(a1 + 8) = v6;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v8 = *(a3 + 28);
  v9 = sub_1DD0DAFDC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1 + v8, 1, v9);
  v11 = __swift_getEnumTagSinglePayload(a2 + v8, 1, v9);
  if (!EnumTagSinglePayload)
  {
    v12 = *(v9 - 8);
    if (!v11)
    {
      (*(v12 + 40))(a1 + v8, a2 + v8, v9);
      return a1;
    }

    (*(v12 + 8))(a1 + v8, v9);
    goto LABEL_6;
  }

  if (v11)
  {
LABEL_6:
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BA0, &qword_1DD0E6280);
    memcpy((a1 + v8), (a2 + v8), *(*(v13 - 8) + 64));
    return a1;
  }

  (*(*(v9 - 8) + 32))(a1 + v8, a2 + v8, v9);
  __swift_storeEnumTagSinglePayload(a1 + v8, 0, 1, v9);
  return a1;
}

void sub_1DCC4A0F0()
{
  sub_1DCC4A194();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initStructMetadata();
  }
}

void sub_1DCC4A194()
{
  if (!qword_1EDE4D678)
  {
    sub_1DD0DAFDC();
    v0 = sub_1DD0DE97C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE4D678);
    }
  }
}

uint64_t static AuthenticationRequirements.== infix(_:_:)(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = *a1 >> 62;
  if (v3)
  {
    if (v3 == 1)
    {
      if (v2 >> 62 == 1)
      {
        return 1;
      }
    }

    else if (v2 == 0x8000000000000000)
    {
      return 1;
    }
  }

  else if (!(v2 >> 62))
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1DCC4A238(unint64_t a1, unint64_t a2)
{
  if (a1 >> 62)
  {
    if (a1 >> 62 == 1)
    {
      if (a2 >> 62 == 1)
      {
        return 1;
      }
    }

    else if (a2 == 0x8000000000000000)
    {
      return 1;
    }
  }

  else if (!(a2 >> 62))
  {
    return 1;
  }

  return 0;
}

uint64_t AuthenticationRequirements.description.getter()
{
  v1 = *v0 >> 62;
  OUTLINED_FUNCTION_8_19();
  if (v2 != 1)
  {
    v4 |= 9uLL;
  }

  if (v2)
  {
    return v4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1DCC4A2FC()
{
  OUTLINED_FUNCTION_8_19();
  if (v0 != 1)
  {
    v2 |= 9uLL;
  }

  if (v0)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

unint64_t static CommonAuthenticationRequirementHelper.authenticateOrHandoff(deviceState:outputPublisher:_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, void *a4@<X8>)
{
  if (a3())
  {
    v7 = a1[3];
    v8 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v7);
    if ((*(v8 + 8))(v7, v8) & 1) != 0 || (v9 = a1[3], v10 = a1[4], __swift_project_boxed_opaque_existential_1(a1, v9), ((*(v10 + 16))(v9, v10)))
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v11 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v11, qword_1EDE57E00);
      v12 = sub_1DD0DD8EC();
      v13 = sub_1DD0DE6DC();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_1DCAFC000, v12, v13, "CommonAuthenticationRequirementHelper cannot request device unlock. Initiating Handoff", v14, 2u);
        OUTLINED_FUNCTION_80();
      }

      type metadata accessor for SimpleHandoffSessionToCompanionFlowHelper.SimpleHandoffSessionToCompanionFlowStrategyAsync();
      v15 = swift_allocObject();
      sub_1DCB17CA0(a1, &v28);
      sub_1DCB17CA0(a2, v27);
      type metadata accessor for HandoffSessionToCompanionFlowAsync();
      swift_allocObject();
      sub_1DCC4AF54(v15, &v28, v27, &unk_1DD0E6460);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA26B0, &qword_1DD0FF8A0);
      swift_allocObject();
      sub_1DCB80900();
    }

    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v22 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v22, qword_1EDE57E00);
    v23 = sub_1DD0DD8EC();
    v24 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v23, v24))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_7_0(&dword_1DCAFC000, v25, v26, "CommonAuthenticationRequirementHelper requires that the device is authenticated. Building guard flow with .ensuringDeviceIsAuthenticated guard.");
      OUTLINED_FUNCTION_80();
    }

    type metadata accessor for GuardFlow();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA26A8, &unk_1DD0E62D0);
    *(swift_initStackObject() + 16) = xmmword_1DD0E07C0;
    v28 = 6;
    v30 = &type metadata for FeatureFlagDefinitions.Core;
    v31 = &off_1F585CB38;
    v29 = 0;
    static CommonFlowGuard.ensuringDeviceIsAuthenticated(using:)(&v28);
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v16 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v16, qword_1EDE57E00);
  v17 = sub_1DD0DD8EC();
  v18 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v17, v18))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_7_0(&dword_1DCAFC000, v19, v20, "CommonAuthenticationRequirementHelper no authentication required based on provided decision maker.");
    OUTLINED_FUNCTION_80();
  }

  result = 0x8000000000000000;
  *a4 = 0x8000000000000000;
  return result;
}

uint64_t sub_1DCC4A744@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  result = sub_1DCC4B830(v1 + 24, &v7);
  if (v10 != 1)
  {
    sub_1DCC4B8A0(&v7);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v6 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v6, qword_1EDE57E00);
    sub_1DD0DCF8C();
  }

  v4 = v8;
  v5 = v9;
  *a1 = v7;
  *(a1 + 8) = v4;
  *(a1 + 9) = v5;
  return result;
}

uint64_t sub_1DCC4ACE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = v2;
  v3 = *(a1 + 24);
  *(a2 + 8) = v3;
  v4 = *(a1 + 25);
  *(a2 + 9) = v4;
  return sub_1DCBF9BE8(v2, v3, v4);
}

unint64_t sub_1DCC4AD58@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  *a2 = v3;
  a2[1] = v2;
  return sub_1DCBF4C98(v3);
}

void *sub_1DCC4AD68(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  sub_1DCB8D4CC(v2, *(a1 + 24));
  return v2;
}

uint64_t sub_1DCC4AE60()
{
  sub_1DCFE7148(v2);
  v0 = v2[0];

  return v0;
}

void *sub_1DCC4AEA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  sub_1DCB8D4CC(v1, *(a1 + 24));
  return v1;
}

uint64_t sub_1DCC4AF54(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  type metadata accessor for AnyHandoffSessionToCompanionFlowStrategyAsync();
  v9 = swift_allocObject();
  *(v9 + 16) = a4;
  *(v9 + 24) = a1;
  *(v4 + 32) = v9;
  sub_1DCB17CA0(a2, v4 + 40);
  sub_1DCB17CA0(a3, v4 + 80);
  sub_1DCC4B974();
  v10 = swift_allocError();
  *v11 = 1;
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  *(v4 + 16) = v10;
  *(v4 + 24) = 1;
  return v4;
}

uint64_t sub_1DCC4B008(uint64_t a1)
{
  *(v1 + 16) = &unk_1DD0E6440;
  *(v1 + 24) = a1;
  return v1;
}

uint64_t sub_1DCC4B024(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4A548;

  return sub_1DCD80FD8(a1);
}

uint64_t sub_1DCC4B0D0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4A548;

  return sub_1DCD854B8(a1);
}

uint64_t sub_1DCC4B16C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4A548;

  return SimpleHandoffSessionToCompanionFlowHelper.PeerToPeerHandoffToCompanionFlowStrategyAsync.makeHandoffResponse()(a1);
}

_BYTE *storeEnumTagSinglePayload for CommonAuthenticationRequirementHelper(_BYTE *result, int a2, int a3)
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

void sub_1DCC4B314(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  *a1 = *a2;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCC4B354(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 8))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7D)
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

uint64_t sub_1DCC4B3A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t *sub_1DCC4B3F8(unint64_t *result, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    v2 = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  *result = v2;
  return result;
}

uint64_t sub_1DCC4B42C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DCC4AD04(*a1);
  *a2 = result & 1;
  return result;
}

void *sub_1DCC4B45C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = sub_1DCC4AD30();
  *a2 = result;
  *(a2 + 8) = v5 & 1;
  return result;
}

uint64_t sub_1DCC4B4B4(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4A548;

  return sub_1DCC4B024(a1);
}

void *sub_1DCC4B554@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1DCC4AD68(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

BOOL sub_1DCC4B588@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_1DCC4ADC0();
  *a2 = result;
  return result;
}

BOOL sub_1DCC4B5B8@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_1DCC4ADE8();
  *a2 = result;
  return result;
}

BOOL sub_1DCC4B5E8@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_1DCC4AE10();
  *a2 = result;
  return result;
}

BOOL sub_1DCC4B618@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_1DCC4AE38();
  *a2 = result;
  return result;
}

uint64_t sub_1DCC4B648@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_1DCC4AE60();
  *a2 = result & 1;
  return result;
}

void *sub_1DCC4B678@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1DCC4AEA0(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1DCC4B6E0(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4A548;

  return sub_1DCC4B0D0(a1);
}

uint64_t sub_1DCC4B780(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB193FC;

  return sub_1DCC4B16C(a1);
}

uint64_t sub_1DCC4B830(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1F60, &unk_1DD0E5250);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DCC4B8A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1F60, &unk_1DD0E5250);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DCC4B908()
{
  result = qword_1ECCA26C0;
  if (!qword_1ECCA26C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA26B8, &unk_1DD0E6410);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA26C0);
  }

  return result;
}

unint64_t sub_1DCC4B974()
{
  result = qword_1ECCA26C8;
  if (!qword_1ECCA26C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA26C8);
  }

  return result;
}

uint64_t sub_1DCC4B9C8()
{
  OUTLINED_FUNCTION_25_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_34_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_7_2(v1);

  return v4(v3);
}

uint64_t sub_1DCC4BA5C()
{
  OUTLINED_FUNCTION_25_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_34_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_7_2(v1);

  return v4(v3);
}

uint64_t sub_1DCC4BC34()
{
  OUTLINED_FUNCTION_25_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_34_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_7_2(v1);

  return v4(v3);
}

uint64_t sub_1DCC4BCF4(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCC4BD18, 0, 0);
}

uint64_t sub_1DCC4BD18()
{
  v43 = v0;
  v1 = v0[21];
  type metadata accessor for ParameterWrapper();
  inited = swift_initStackObject();
  v0[23] = inited;
  *(inited + 16) = v1;

  v3 = sub_1DCD149A8();
  v0[24] = v4;
  v5 = v3;
  v6 = v4;
  v7 = sub_1DCD14BB4(*(v0[22] + 88));
  v0[25] = v7;
  v8 = v7;
  v9 = sub_1DCC69D70();
  if (v10)
  {
    v11 = v9;
    v12 = v10;
  }

  else
  {
    v13 = v0[22];
    v11 = *(v13 + 96);
    v12 = *(v13 + 104);
  }

  v0[26] = v12;
  v14 = qword_1EDE4F900;

  v15 = v8;
  if (v14 != -1)
  {
    swift_once();
  }

  v16 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v16, qword_1EDE57E00);

  v17 = v15;
  v18 = sub_1DD0DD8EC();
  v19 = sub_1DD0DE6CC();

  if (os_log_type_enabled(v18, v19))
  {
    v39 = v19;
    v40 = v11;
    v20 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v42[0] = v38;
    *v20 = 136315394;
    v21 = sub_1DCD43E34(v17);
    if (v22)
    {
      v23 = v21;
      v24 = v22;
    }

    else
    {
      v25 = [v17 bundlePath];
      v23 = sub_1DD0DDFBC();
      v24 = v26;
    }

    v27 = sub_1DCB10E9C(v23, v24, v42);

    *(v20 + 4) = v27;
    *(v20 + 12) = 2080;
    v28 = sub_1DCB10E9C(v5, v6, v42);

    *(v20 + 14) = v28;
    _os_log_impl(&dword_1DCAFC000, v18, v39, "Pushing child authored flow for bundle: %s flowId: %s", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A8390](v38, -1, -1);
    MEMORY[0x1E12A8390](v20, -1, -1);

    v11 = v40;
  }

  else
  {
  }

  v29 = v0[22];
  if (v12)
  {
    v30 = v11;
  }

  else
  {
    v30 = 0;
  }

  v31 = v29[7];
  v32 = v29[8];
  __swift_project_boxed_opaque_existential_1(v29 + 4, v31);
  v0[7] = v5;
  v0[8] = v6;
  v0[9] = v17;
  v0[10] = v30;
  v0[11] = v12;
  v33 = *(v32 + 40);
  v41 = (v33 + *v33);
  v34 = v33[1];
  v35 = swift_task_alloc();
  v0[27] = v35;
  *v35 = v0;
  v35[1] = sub_1DCC4C15C;
  v36 = v0[22];

  return (v41)(v0 + 2, v0 + 7, &unk_1DD0E64E0, v36, v31, v32);
}

uint64_t sub_1DCC4C15C()
{
  OUTLINED_FUNCTION_42();
  v1 = *(*v0 + 216);
  v2 = *v0;
  OUTLINED_FUNCTION_27();
  *v3 = v2;

  return MEMORY[0x1EEE6DFA0](sub_1DCC4C24C, 0, 0);
}

uint64_t sub_1DCC4C24C()
{
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v4 = *(v0 + 184);
  v3 = *(v0 + 192);
  v5 = *(v0 + 160);
  v12 = *(v0 + 40);
  v6 = *(v0 + 40);
  v7 = __swift_project_boxed_opaque_existential_1((v0 + 16), v6);
  *(v0 + 120) = v12;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 96));
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_1Tm, v7, v6);

  swift_setDeallocating();
  v9 = *(v4 + 16);

  sub_1DCB17CA0(v0 + 96, v5);
  *(v5 + 40) = 1;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_29();

  return v10();
}

uint64_t sub_1DCC4C370(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCC4C390, 0, 0);
}

uint64_t sub_1DCC4C390()
{
  OUTLINED_FUNCTION_42();
  sub_1DCC4C5E4(*(v0 + 24) + 112, *(v0 + 16));
  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCC4C3EC()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  v2 = *(v0 + 80);
  v3 = *(v0 + 104);

  sub_1DCC4C654(v0 + 112);
  return v0;
}

uint64_t sub_1DCC4C448()
{
  sub_1DCC4C3EC();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCC4C4A0(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB22EC8;

  return sub_1DCC4BCF4(a1, a2);
}

uint64_t sub_1DCC4C54C()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1DCB22EC8;

  return sub_1DCC4C370(v3, v0);
}

uint64_t sub_1DCC4C5E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA26D0, &qword_1DD0E6540);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DCC4C654(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA26D0, &qword_1DD0E6540);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void AuthoredFlowDescriptor.init(flowId:bundle:_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void (*a4)(void *)@<X3>, void *a5@<X8>)
{
  a5[3] = 0;
  a5[4] = 0;
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  v7 = a3;
  a4(a5);
}

uint64_t AuthoredFlowExtensions.userInputParsers.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t AuthoredFlowExtensions.nlRepresentationProducers.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t AuthoredFlowExtensions.behaviorResponseHandlers.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t AuthoredFlowExtensions.init(_:)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x1E69E7CC0];
  *a2 = MEMORY[0x1E69E7CC0];
  *(a2 + 8) = v4;
  *(a2 + 16) = v4;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 88) = 0u;
  return a1();
}

uint64_t AuthoredFlowDescriptor.flowId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_33_1();
}

uint64_t AuthoredFlowDescriptor.templateDir.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return OUTLINED_FUNCTION_33_1();
}

uint64_t AuthoredFlowDescriptor.templateDir.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

unint64_t AuthoredFlowDescriptor.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[4];
  if (v4)
  {
    v5 = v0[3];
    v11 = 0;
    sub_1DD0DEC1C();
    MEMORY[0x1E12A6780](0xD000000000000018, 0x80000001DD115610);
    MEMORY[0x1E12A6780](v1, v2);
    MEMORY[0x1E12A6780](0x616C706D65742027, 0xEF273D7269446574);
    MEMORY[0x1E12A6780](v5, v4);
  }

  else
  {
    sub_1DD0DEC1C();

    v11 = 0xD000000000000018;
    MEMORY[0x1E12A6780](v1, v2);
  }

  OUTLINED_FUNCTION_57_3();
  v6 = [v3 description];
  v7 = sub_1DD0DDFBC();
  v9 = v8;

  MEMORY[0x1E12A6780](v7, v9);

  MEMORY[0x1E12A6780](39, 0xE100000000000000);
  return v11;
}

BOOL sub_1DCC4CBC8(SiriKitFlow::AuthoredFlowDescriptor *a1)
{
  v1 = AuthoredFlowFactory.authoredFlowPath(flowDescriptor:)(a1);
  if (!v1.value._object)
  {
    return 0;
  }

  v2 = (v1.value._object >> 56) & 0xF;
  if ((v1.value._object & 0x2000000000000000) == 0)
  {
    v2 = v1.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  return v2 != 0;
}

Swift::Bool __swiftcall AuthoredFlowProviding.authoredFlowIsPresent(flowDescriptor:)(SiriKitFlow::AuthoredFlowDescriptor *flowDescriptor)
{
  countAndFlagsBits = flowDescriptor->flowId._countAndFlagsBits;
  templateDir = flowDescriptor->templateDir;
  v10 = *&flowDescriptor->flowId._object;
  v11 = templateDir;
  v3 = (*(v1 + 8))(&countAndFlagsBits);
  if (!v4)
  {
    return 0;
  }

  v5 = v3;
  v6 = v4;

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v5 & 0xFFFFFFFFFFFFLL;
  }

  return v7 != 0;
}

uint64_t sub_1DCC4CCA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DCB4AE1C;

  return AuthoredFlowProviding.makeAuthoredFlow(flowDescriptor:)(a1, a2, a3, a4);
}

uint64_t sub_1DCC4CD60(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCC4CD84, 0, 0);
}

uint64_t sub_1DCC4CD84()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_38_8();
  v0[10] = sub_1DD0DDE9C();
  OUTLINED_FUNCTION_54_2(&unk_1DD0E6710);
  OUTLINED_FUNCTION_45();
  v0[11] = v1;
  *v1 = v2;
  v1[1] = sub_1DCC4CE48;
  v3 = v0[9];
  v4 = OUTLINED_FUNCTION_45_5();

  return v6(v4);
}

uint64_t sub_1DCC4CE48()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 88);
  v3 = *(v1 + 80);
  v4 = *v0;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  OUTLINED_FUNCTION_29();

  return v6();
}

uint64_t AuthoredFlowProviding.makeAuthoredFlow(flowDescriptor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 72) = a4;
  *(v5 + 80) = v4;
  *(v5 + 56) = a1;
  *(v5 + 64) = a3;
  *(v5 + 88) = *a2;
  v6 = *(a2 + 24);
  *(v5 + 96) = *(a2 + 8);
  *(v5 + 112) = v6;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCC4CF70()
{
  v15 = *(v0 + 72);
  *(v0 + 16) = *(v0 + 88);
  v1 = *(v0 + 112);
  *(v0 + 24) = *(v0 + 96);
  *(v0 + 40) = v1;
  v2 = sub_1DD0DDE9C();
  *(v0 + 128) = v2;
  v3 = *(v15 + 48);
  OUTLINED_FUNCTION_24_0();
  v14 = (v4 + *v4);
  v6 = *(v5 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 136) = v7;
  *v7 = v8;
  v7[1] = sub_1DCC4D0EC;
  v9 = *(v0 + 72);
  v10 = *(v0 + 80);
  v11 = *(v0 + 56);
  v12 = *(v0 + 64);

  return (v14)(v11, v0 + 16, v2, &unk_1DD0E6508, 0, v12, v9);
}

uint64_t sub_1DCC4D0EC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 136);
  v3 = *(v1 + 128);
  v4 = *v0;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  OUTLINED_FUNCTION_29();

  return v6();
}

uint64_t sub_1DCC4D1E8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return AuthoredFlowProviding.makeAuthoredFlow(flowDescriptor:initialState:)();
}

uint64_t sub_1DCC4D2B0(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v7 = *a2;
  v8 = a2[1];
  *(v4 + 48) = *(a2 + 4);
  *(v4 + 16) = v7;
  *(v4 + 32) = v8;
  v9 = swift_task_alloc();
  *(v4 + 56) = v9;
  *v9 = v4;
  v9[1] = sub_1DCC516C0;

  return sub_1DCC4F85C(a1, v4 + 16, a3, v3);
}

uint64_t AuthoredFlowProviding.makeAuthoredFlow(flowDescriptor:initialState:)()
{
  OUTLINED_FUNCTION_41();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  *(v0 + 16) = *v9;
  *(v0 + 24) = *(v9 + 8);
  *(v0 + 40) = *(v9 + 24);
  v10 = *(v1 + 48);
  OUTLINED_FUNCTION_24_0();
  v17 = (v11 + *v11);
  v13 = *(v12 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 56) = v14;
  *v14 = v15;
  v14[1] = sub_1DCC516C0;

  return (v17)(v8, v0 + 16, v6, &unk_1DD0E6518, 0, v4, v2);
}

uint64_t sub_1DCC4D4EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1DCB4AE1C;

  return AuthoredFlowProviding.makeAuthoredFlow(flowDescriptor:extensions:)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1DCC4D5C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCC4D5EC, 0, 0);
}

uint64_t sub_1DCC4D5EC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_38_8();
  v0[12] = sub_1DD0DDE9C();
  OUTLINED_FUNCTION_54_2(&unk_1DD0E66F0);
  OUTLINED_FUNCTION_45();
  v0[13] = v1;
  *v1 = v2;
  v1[1] = sub_1DCC4D6B4;
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[9];
  v6 = OUTLINED_FUNCTION_45_5();

  return v8(v6);
}

uint64_t sub_1DCC4D6B4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 104);
  v3 = *(v1 + 96);
  v4 = *v0;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  OUTLINED_FUNCTION_29();

  return v6();
}

uint64_t AuthoredFlowProviding.makeAuthoredFlow(flowDescriptor:extensions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 88) = a6;
  *(v7 + 96) = v6;
  *(v7 + 72) = a4;
  *(v7 + 80) = a5;
  *(v7 + 56) = a1;
  *(v7 + 64) = a3;
  *(v7 + 104) = *a2;
  v8 = *(a2 + 24);
  *(v7 + 112) = *(a2 + 8);
  *(v7 + 128) = v8;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCC4D7E0()
{
  OUTLINED_FUNCTION_41();
  *(v0 + 16) = *(v0 + 104);
  v17 = *(v0 + 88);
  v1 = *(v0 + 128);
  *(v0 + 24) = *(v0 + 112);
  *(v0 + 40) = v1;
  v15 = *(v0 + 64);
  v2 = sub_1DD0DDE9C();
  *(v0 + 144) = v2;
  v3 = swift_task_alloc();
  *(v0 + 152) = v3;
  *(v3 + 16) = v15;
  v4 = *(v17 + 48);
  OUTLINED_FUNCTION_24_0();
  v16 = (v5 + *v5);
  v7 = *(v6 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 160) = v8;
  *v8 = v9;
  v8[1] = sub_1DCC4D984;
  v10 = *(v0 + 88);
  v11 = *(v0 + 96);
  v12 = *(v0 + 80);
  v13 = *(v0 + 56);

  return v16(v13, v0 + 16, v2, &unk_1DD0E6530, v3, v12, v10);
}

uint64_t sub_1DCC4D984()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = v1[20];
  v3 = v1[19];
  v4 = v1[18];
  v5 = *v0;
  OUTLINED_FUNCTION_27();
  *v6 = v5;

  OUTLINED_FUNCTION_29();

  return v7();
}

uint64_t sub_1DCC4DADC()
{
  v1 = *(v0 + 16);
  *(v1 + 96) = 0;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  OUTLINED_FUNCTION_29();
  return v2();
}

uint64_t sub_1DCC4DB14(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return v7(a1);
}

uint64_t sub_1DCC4DC0C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_11_0(v5);
  *v6 = v7;
  v6[1] = sub_1DCB4AE1C;

  return sub_1DCC4DB14(a1, v4);
}

uint64_t sub_1DCC4DCB0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2700, &unk_1DD0E6730);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1DD0E32B0;
  v1 = type metadata accessor for AppIntentBehaviorResponseHandler();
  v2 = swift_allocObject();
  *(v2 + 16) = 0x6E65746E49707061;
  *(v2 + 24) = 0xE900000000000074;
  *(v0 + 56) = v1;
  *(v0 + 64) = &off_1F5853B88;
  *(v0 + 32) = v2;
  v3 = type metadata accessor for DirectInvocationBehaviorResponseHandler();
  result = swift_allocObject();
  *(result + 16) = 0xD000000000000010;
  *(result + 24) = 0x80000001DD110040;
  *(v0 + 96) = v3;
  *(v0 + 104) = &off_1F585B750;
  *(v0 + 72) = result;
  qword_1ECCD25B0 = v0;
  return result;
}

void *sub_1DCC4DD8C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA26F8, &qword_1DD0E6728);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1DD0E4000;
  v1 = type metadata accessor for CATIUserInputParser();
  v2 = swift_allocObject();
  *(v2 + 16) = 1769234787;
  *(v2 + 24) = 0xE400000000000000;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v0 + 56) = v1;
  *(v0 + 64) = &off_1F58561F0;
  *(v0 + 32) = v2;
  v3 = type metadata accessor for DirectInvocationUserInputParser();
  v4 = swift_allocObject();
  *(v4 + 16) = 0xD000000000000010;
  *(v4 + 24) = 0x80000001DD110040;
  *(v0 + 96) = v3;
  *(v0 + 104) = &off_1F585B808;
  *(v0 + 72) = v4;
  v5 = type metadata accessor for UsoLiteralUserInputParser();
  v6 = swift_allocObject();
  *(v6 + 16) = 0x726574694C6F7375;
  *(v6 + 24) = 0xEA00000000006C61;
  *(v0 + 136) = v5;
  *(v0 + 144) = &off_1F587BA78;
  *(v0 + 112) = v6;
  sub_1DCC516B8(v10);
  v7 = type metadata accessor for UsoMatchingUserInputParser();
  v8 = swift_allocObject();
  v8[2] = 0x686374614D6F7375;
  v8[3] = 0xEA00000000007265;
  result = memcpy(v8 + 4, v10, 0xB0uLL);
  *(v0 + 176) = v7;
  *(v0 + 184) = &off_1F587BAD0;
  *(v0 + 152) = v8;
  qword_1ECCD25B8 = v0;
  return result;
}

double sub_1DCC4DF1C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA26F0, &qword_1DD0E6720);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1DD0E07C0;
  v1 = type metadata accessor for CATINLRepresentationProducer();
  v2 = swift_allocObject();
  *(v2 + 16) = 1769234787;
  *(v2 + 24) = 0xE400000000000000;
  result = 0.0;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v0 + 56) = v1;
  *(v0 + 64) = &off_1F5856130;
  *(v0 + 32) = v2;
  qword_1ECCD25C0 = v0;
  return result;
}

uint64_t AuthoredFlowFactory.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 40) = &type metadata for AuthoredFlowFactory.DefaultDependencies;
  *(result + 48) = &off_1F58551B8;
  return result;
}

uint64_t AuthoredFlowFactory.init()()
{
  result = v0;
  *(v0 + 40) = &type metadata for AuthoredFlowFactory.DefaultDependencies;
  *(v0 + 48) = &off_1F58551B8;
  return result;
}

Swift::String_optional __swiftcall AuthoredFlowFactory.authoredFlowPath(flowDescriptor:)(SiriKitFlow::AuthoredFlowDescriptor *flowDescriptor)
{
  countAndFlagsBits = flowDescriptor->flowId._countAndFlagsBits;
  object = flowDescriptor->flowId._object;
  if (flowDescriptor->templateDir.value._object)
  {
    v3 = flowDescriptor->templateDir.value._countAndFlagsBits;
    v4 = [objc_allocWithZone(MEMORY[0x1E69A8DE8]) init];
    v5 = sub_1DD0DDF8C();
    OUTLINED_FUNCTION_33_1();
    v6 = sub_1DD0DDF8C();
    v7 = [v4 findInTemplateDir:v5 withId:v6];

    v8 = sub_1DD0DDFBC();
    v10 = v9;

    if ((v10 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    isa = flowDescriptor->bundle.super.isa;
    v12 = [objc_allocWithZone(MEMORY[0x1E69A8DE8]) init];
    OUTLINED_FUNCTION_33_1();
    v13 = sub_1DD0DDF8C();
    v14 = [v12 find:isa withId:v13];

    v8 = sub_1DD0DDFBC();
    v10 = v15;

    if ((v10 & 0x2000000000000000) == 0)
    {
LABEL_3:
      if ((v8 & 0xFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_8;
    }
  }

  if ((v10 & 0xF00000000000000) == 0)
  {
LABEL_7:

    v8 = 0;
    v10 = 0;
  }

LABEL_8:
  v16 = v8;
  v17 = v10;
  result.value._object = v17;
  result.value._countAndFlagsBits = v16;
  return result;
}

uint64_t sub_1DCC4E230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  *(v5 + 1256) = a4;
  *(v5 + 1248) = a3;
  *(v5 + 1240) = a1;
  *(v5 + 1264) = *a2;
  v6 = *(a2 + 24);
  *(v5 + 1272) = *(a2 + 8);
  *(v5 + 1288) = v6;
  v10 = (a5 + *a5);
  v7 = a5[1];
  v8 = swift_task_alloc();
  *(v5 + 1304) = v8;
  *v8 = v5;
  v8[1] = sub_1DCC4E344;

  return v10(v5 + 16);
}

uint64_t sub_1DCC4E344()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 1304);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  return MEMORY[0x1EEE6DFA0](sub_1DCC4E430, 0, 0);
}

uint64_t sub_1DCC4ED58(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *(v4 + 1248) = a3;
  *(v4 + 1256) = a4;
  *(v4 + 1240) = a1;
  *(v4 + 1264) = *a4;
  *(v4 + 1272) = *a2;
  *(v4 + 1280) = *(a2 + 8);
  *(v4 + 1296) = *(a2 + 24);
  return MEMORY[0x1EEE6DFA0](sub_1DCC4EDC0, 0, 0);
}

uint64_t sub_1DCC4F85C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *(v4 + 1248) = a3;
  *(v4 + 1256) = a4;
  *(v4 + 1240) = a1;
  *(v4 + 1264) = *a4;
  *(v4 + 1272) = *a2;
  *(v4 + 1280) = *(a2 + 8);
  *(v4 + 1296) = *(a2 + 24);
  return MEMORY[0x1EEE6DFA0](sub_1DCC516C8, 0, 0);
}

uint64_t AuthoredFlowFactory.makeAuthoredFlow(flowDescriptor:initialState:extensions:)()
{
  OUTLINED_FUNCTION_42();
  *(v1 + 1248) = v2;
  *(v1 + 1256) = v0;
  *(v1 + 1240) = v3;
  *(v1 + 1264) = *v0;
  *(v1 + 1272) = *v4;
  *(v1 + 1280) = *(v4 + 8);
  *(v1 + 1296) = *(v4 + 24);
  v10 = (v5 + *v5);
  v6 = v5[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v1 + 1312) = v7;
  *v7 = v8;
  v7[1] = sub_1DCC4F9F8;

  return v10(v1 + 16);
}

uint64_t sub_1DCC4F9F8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 1312);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  return MEMORY[0x1EEE6DFA0](sub_1DCC4FAE4, 0, 0);
}

uint64_t AuthoredFlowFactory.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocClassInstance();
}

BOOL sub_1DCC504A8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v5.flowId = *a1;
  *&v5.bundle.super.isa = v2;
  v5.templateDir.value._object = *(a1 + 32);
  v3 = *v1;
  return sub_1DCC4CBC8(&v5);
}

uint64_t sub_1DCC504EC(uint64_t a1, __int128 *a2)
{
  v5 = *a2;
  v6 = a2[1];
  *(v3 + 48) = *(a2 + 4);
  *(v3 + 16) = v5;
  *(v3 + 32) = v6;
  v7 = *v2;
  v8 = swift_task_alloc();
  *(v3 + 56) = v8;
  *v8 = v3;
  v8[1] = sub_1DCC516C0;

  return sub_1DCC4CD60(a1, v3 + 16);
}

uint64_t sub_1DCC505B4(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v7 = *a2;
  v8 = a2[1];
  *(v4 + 48) = *(a2 + 4);
  *(v4 + 16) = v7;
  *(v4 + 32) = v8;
  v9 = *v3;
  v10 = swift_task_alloc();
  *(v4 + 56) = v10;
  *v10 = v4;
  v10[1] = sub_1DCC516C0;

  return sub_1DCC4D2B0(a1, (v4 + 16), a3);
}

uint64_t sub_1DCC50688(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v9 = *a2;
  v10 = a2[1];
  *(v5 + 48) = *(a2 + 4);
  *(v5 + 16) = v9;
  *(v5 + 32) = v10;
  v11 = *v4;
  v12 = swift_task_alloc();
  *(v5 + 56) = v12;
  *v12 = v5;
  v12[1] = sub_1DCC50768;

  return sub_1DCC4D5C4(a1, v5 + 16, a3, a4);
}

uint64_t sub_1DCC50768()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 56);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  OUTLINED_FUNCTION_29();

  return v5();
}

uint64_t sub_1DCC50848()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AD3C;

  return AuthoredFlowFactory.makeAuthoredFlow(flowDescriptor:initialState:extensions:)();
}

uint64_t sub_1DCC5094C(uint64_t a1)
{
  v17[3] = type metadata accessor for ResponseFactory();
  v17[4] = &protocol witness table for ResponseFactory;
  v17[0] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA26E8, &qword_1DD0E6718);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1DD0E4000;
  v3 = type metadata accessor for NLOnlyOutputElementConverter();
  v4 = swift_allocObject();
  *(v2 + 56) = v3;
  *(v2 + 64) = &off_1F5865C50;
  *(v2 + 32) = v4;
  sub_1DCB17CA0(v17, v16);
  v5 = type metadata accessor for ResponseFrameworkOutputElementConverter();
  v6 = swift_allocObject();
  sub_1DCAFF9E8(v16, v6 + 16);
  *(v2 + 96) = v5;
  *(v2 + 104) = &off_1F5871E40;
  *(v2 + 72) = v6;
  sub_1DCB17CA0(v17, v16);
  v7 = type metadata accessor for PatternOutputElementConverter();
  v8 = swift_allocObject();
  sub_1DCAFF9E8(v16, v8 + 16);
  *(v2 + 136) = v7;
  *(v2 + 144) = &off_1F5867910;
  *(v2 + 112) = v8;
  v9 = type metadata accessor for LegacyOutputElementConverter();
  v10 = swift_allocObject();
  *(v2 + 176) = v9;
  *(v2 + 184) = &off_1F5862C08;
  *(v2 + 152) = v10;
  v11 = type metadata accessor for AccumulatingOutputProducer();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = sub_1DCBB1358(v2);
  __swift_destroy_boxed_opaque_existential_1Tm(v17);
  return v14;
}

uint64_t destroy for AuthoredFlowExtensions(uint64_t *a1)
{
  v2 = *a1;

  v3 = a1[1];

  v4 = a1[2];

  if (a1[6])
  {
    result = __swift_destroy_boxed_opaque_existential_1Tm(a1 + 3);
  }

  if (a1[11])
  {

    return __swift_destroy_boxed_opaque_existential_1Tm(a1 + 8);
  }

  return result;
}

uint64_t initializeWithCopy for AuthoredFlowExtensions(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  v5 = *(a2 + 48);

  if (v5)
  {
    v6 = *(a2 + 56);
    *(a1 + 48) = v5;
    *(a1 + 56) = v6;
    (**(v5 - 8))(a1 + 24, a2 + 24, v5);
  }

  else
  {
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
  }

  v7 = *(a2 + 88);
  if (v7)
  {
    v8 = *(a2 + 96);
    *(a1 + 88) = v7;
    *(a1 + 96) = v8;
    (**(v7 - 8))(a1 + 64, a2 + 64);
  }

  else
  {
    v9 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v9;
    *(a1 + 96) = *(a2 + 96);
  }

  return a1;
}

uint64_t *assignWithCopy for AuthoredFlowExtensions(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = a1[1];
  a1[1] = a2[1];

  v6 = a1[2];
  a1[2] = a2[2];

  v7 = a2[6];
  if (a1[6])
  {
    v8 = a1 + 3;
    if (v7)
    {
      __swift_assign_boxed_opaque_existential_1(v8, a2 + 3);
      goto LABEL_8;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v8);
  }

  else if (v7)
  {
    a1[6] = v7;
    a1[7] = a2[7];
    (**(v7 - 8))((a1 + 3), (a2 + 3));
    goto LABEL_8;
  }

  v9 = *(a2 + 3);
  v10 = *(a2 + 5);
  a1[7] = a2[7];
  *(a1 + 5) = v10;
  *(a1 + 3) = v9;
LABEL_8:
  v11 = a2[11];
  if (!a1[11])
  {
    if (v11)
    {
      a1[11] = v11;
      a1[12] = a2[12];
      (**(v11 - 8))((a1 + 8), (a2 + 8));
      return a1;
    }

LABEL_14:
    v13 = *(a2 + 4);
    v14 = *(a2 + 5);
    a1[12] = a2[12];
    *(a1 + 4) = v13;
    *(a1 + 5) = v14;
    return a1;
  }

  v12 = a1 + 8;
  if (!v11)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    goto LABEL_14;
  }

  __swift_assign_boxed_opaque_existential_1(v12, a2 + 8);
  return a1;
}

uint64_t *assignWithTake for AuthoredFlowExtensions(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = a1[1];
  a1[1] = a2[1];

  v6 = a1[2];
  a1[2] = a2[2];

  if (a1[6])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1 + 3);
  }

  *(a1 + 3) = *(a2 + 3);
  *(a1 + 5) = *(a2 + 5);
  a1[7] = a2[7];
  if (a1[11])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1 + 8);
  }

  v7 = *(a2 + 5);
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 5) = v7;
  a1[12] = a2[12];
  return a1;
}

uint64_t getEnumTagSinglePayload for AuthoredFlowExtensions(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
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

uint64_t storeEnumTagSinglePayload for AuthoredFlowExtensions(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for AuthoredFlowDescriptor(uint64_t a1)
{
  v2 = *(a1 + 8);

  v3 = *(a1 + 32);
}

void *initializeWithCopy for AuthoredFlowDescriptor(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v5 = a2[2];
  v4 = a2[3];
  a1[2] = v5;
  a1[3] = v4;
  a1[4] = a2[4];

  v6 = v5;

  return a1;
}

void *assignWithCopy for AuthoredFlowDescriptor(void *a1, void *a2)
{
  *a1 = *a2;
  v4 = a1[1];
  a1[1] = a2[1];

  v5 = a2[2];
  v6 = a1[2];
  a1[2] = v5;
  v7 = v5;

  a1[3] = a2[3];
  v8 = a2[4];
  v9 = a1[4];
  a1[4] = v8;

  return a1;
}

void *assignWithTake for AuthoredFlowDescriptor(void *a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = a1[1];

  v5 = a1[2];
  *(a1 + 1) = *(a2 + 8);

  v6 = *(a2 + 32);
  v7 = a1[4];
  a1[3] = *(a2 + 24);
  a1[4] = v6;

  return a1;
}

uint64_t getEnumTagSinglePayload for AuthoredFlowDescriptor(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for AuthoredFlowDescriptor(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t dispatch thunk of AuthoredFlowProviding.makeAuthoredFlow(flowDescriptor:)()
{
  OUTLINED_FUNCTION_41();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = *(v0 + 24);
  OUTLINED_FUNCTION_24_0();
  v16 = (v9 + *v9);
  v11 = *(v10 + 4);
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_11_0(v12);
  *v13 = v14;
  v13[1] = sub_1DCB4AE1C;

  return v16(v7, v5, v3, v1);
}

uint64_t dispatch thunk of AuthoredFlowProviding.makeAuthoredFlow(flowDescriptor:initialState:)()
{
  OUTLINED_FUNCTION_41();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *(v0 + 32);
  OUTLINED_FUNCTION_24_0();
  v18 = (v11 + *v11);
  v13 = *(v12 + 4);
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_11_0(v14);
  *v15 = v16;
  v15[1] = sub_1DCB4AE1C;

  return v18(v9, v7, v5, v3, v1);
}

uint64_t dispatch thunk of AuthoredFlowProviding.makeAuthoredFlow(flowDescriptor:extensions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a6 + 40);
  OUTLINED_FUNCTION_24_0();
  v20 = (v13 + *v13);
  v15 = *(v14 + 4);
  v16 = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_11_0(v16);
  *v17 = v18;
  v17[1] = sub_1DCB4AD3C;

  return v20(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of AuthoredFlowProviding.makeAuthoredFlow(flowDescriptor:initialState:extensions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *(a7 + 48);
  OUTLINED_FUNCTION_24_0();
  v22 = (v15 + *v15);
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_11_0(v18);
  *v19 = v20;
  v19[1] = sub_1DCB4AE1C;

  return v22(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_1DCC516CC(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    goto LABEL_4;
  }

  sub_1DCE19FF0(*(a1 + 16), 0);
  OUTLINED_FUNCTION_98_3();
  sub_1DCC5CF70(v3, v4, v5, a1);
  OUTLINED_FUNCTION_55_8();
  if (!v6)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v1;
}

size_t sub_1DCC5173C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = *(a1 + 16);
  v4 = sub_1DCE1A06C();
  v5 = *(sub_1DD0DB3AC() - 8);
  sub_1DCC5D100(v8, (v4 + ((*(v5 + 80) + 32) & ~*(v5 + 80))), v2, a1);
  OUTLINED_FUNCTION_55_8();
  if (!v6)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v4;
}

uint64_t sub_1DCC517F0(uint64_t a1, void (*a2)(void, void), void (*a3)(void))
{
  if (!*(a1 + 16))
  {
    goto LABEL_4;
  }

  a2(*(a1 + 16), 0);
  OUTLINED_FUNCTION_98_3();
  a3();
  OUTLINED_FUNCTION_55_8();
  if (!v5)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

id sub_1DCC51870(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = sub_1DCB08B14(a1);
  v15 = result;
  for (i = 0; ; ++i)
  {
    if (v15 == i)
    {
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1E12A72C0](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      result = *(a1 + 8 * i + 32);
    }

    v7 = result;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v8 = [result eventId];
    v9 = sub_1DD0DDFBC();
    v11 = v10;

    v12 = [v7 parsers];
    sub_1DCB10E5C(0, &qword_1ECCA2768, 0x1E69A8DF8);
    v13 = sub_1DD0DE2EC();

    sub_1DCC51CC8(v13, a2, a3, v9, v11);
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1DCC519FC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = v3;
  v5 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1DD0DEAFC();
    sub_1DCB10E5C(0, &qword_1ECCA2710, 0x1E69A8DE0);
    sub_1DCC5CE28();
    result = sub_1DD0DE5AC();
    v5 = v35;
    v7 = v36;
    v8 = v37;
    v9 = v38;
    v10 = v39;
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v7 = a1 + 56;
    v12 = ~v11;
    v13 = -v11;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v10 = v14 & *(a1 + 56);

    v8 = v12;
    v9 = 0;
  }

  v15 = (v8 + 64) >> 6;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v16 = v9;
    v17 = v10;
    v18 = v9;
    if (!v10)
    {
      break;
    }

LABEL_12:
    v19 = (v17 - 1) & v17;
    v20 = *(*(v5 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));
    if (!v20)
    {
LABEL_18:
      sub_1DCB2BCE4();
    }

    while (1)
    {
      v21 = [v20 eventId];
      v33 = sub_1DD0DDFBC();
      v23 = v22;

      v34 = v19;
      v24 = v15;
      v25 = v7;
      v26 = v5;
      v27 = v4;
      v28 = [v20 parsers];
      sub_1DCB10E5C(0, &qword_1ECCA2768, 0x1E69A8DF8);
      v29 = sub_1DD0DE2EC();

      v30 = v27;
      v5 = v26;
      v7 = v25;
      v15 = v24;
      sub_1DCC51CC8(v29, a2, a3, v33, v23);
      v4 = v30;

      v9 = v18;
      v10 = v34;
      if ((v5 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_1DD0DEB6C())
      {
        sub_1DCB10E5C(0, &qword_1ECCA2710, 0x1E69A8DE0);
        swift_dynamicCast();
        v20 = v40;
        v18 = v9;
        v19 = v10;
        if (v40)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v15)
    {
      goto LABEL_18;
    }

    v17 = *(v7 + 8 * v18);
    ++v16;
    if (v17)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void sub_1DCC51CC8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = sub_1DCB08B14(a1);
  for (i = 0; ; ++i)
  {
    if (v9 == i)
    {

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1E12A72C0](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v11 = *(a1 + 8 * i + 32);
    }

    v12 = v11;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v15 = v11;
    sub_1DCE3631C(&v15, a2, a3, a4, a5);
    if (v5)
    {

      return;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

uint64_t sub_1DCC51DD8()
{
  sub_1DCC5BEEC(v0, v2);
  result = 0x656C6C65636E6163;
  switch(v4)
  {
    case 1:
      sub_1DCB16D50(v2, &qword_1ECCA1810, &dword_1DD0E0F78);
      result = 0x49726F4674696177;
      break;
    case 2:
      sub_1DCB16D50(v2, &qword_1ECCA1810, &dword_1DD0E0F78);
      result = 0x6574656C706D6F63;
      break;
    case 3:
      sub_1DCC5BF24(v2);
      result = 0x726F727265;
      break;
    case 4:
      return result;
    default:

      __swift_destroy_boxed_opaque_existential_1Tm(v3);
      sub_1DCB16D50(v2, &qword_1ECCA1810, &dword_1DD0E0F78);
      result = 0x4665747563657865;
      break;
  }

  return result;
}

uint64_t sub_1DCC51F14(uint64_t *a1, uint64_t *a2, void *a3, uint64_t a4, const void *a5, const void *a6, uint64_t a7, char a8)
{
  v14 = a1;
  v15 = *a1;
  v17 = a1[3];
  v16 = a1[4];
  *(v8 + 16) = a3;
  sub_1DCB17CA0(a2, v8 + 24);
  *(v8 + 64) = v15;
  *(v8 + 72) = *(v14 + 8);
  *(v8 + 88) = v17;
  *(v8 + 96) = v16;
  *(v8 + 104) = a4;
  sub_1DCB28B08(a5, __dst, &qword_1ECCA26D0, &qword_1DD0E6540);
  if (__dst[0])
  {
    a4 = __dst[2];
    v18 = a3;

    sub_1DCC50ACC(__dst);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2790, &qword_1DD0E68B8);
    OUTLINED_FUNCTION_1_8();
    v20 = sub_1DCC5DEBC(v19, &qword_1ECCA2790, &qword_1DD0E68B8);
  }

  else
  {
    v21 = a3;
    sub_1DCB16D50(__dst, &qword_1ECCA26D0, &qword_1DD0E6540);
    v20 = OUTLINED_FUNCTION_43_8();
    *(&v53 + 1) = 0;
    *&v54 = 0;
  }

  *&v53 = a4;
  *(&v54 + 1) = v14;
  v55 = v20;
  sub_1DCB28B08(a6, __dst, &qword_1ECCA26D0, &qword_1DD0E6540);
  if (__dst[0])
  {
    a4 = __dst[2];

    sub_1DCC50ACC(__dst);
    v14 = OUTLINED_FUNCTION_90_2();
    OUTLINED_FUNCTION_1_8();
    v23 = OUTLINED_FUNCTION_85_3(v22);
  }

  else
  {
    sub_1DCB16D50(__dst, &qword_1ECCA26D0, &qword_1DD0E6540);
    v23 = OUTLINED_FUNCTION_43_8();
    __dst[1] = 0;
    __dst[2] = 0;
  }

  __dst[0] = a4;
  __dst[3] = v14;
  __dst[4] = v23;
  v24 = OUTLINED_FUNCTION_42_7();
  v26 = sub_1DCC52564(v24, v25);
  if (__dst[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(__dst);
  }

  if (*(&v54 + 1))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&v53);
  }

  *(v8 + 112) = v26;
  sub_1DCB28B08(a5, __dst, &qword_1ECCA26D0, &qword_1DD0E6540);
  v27 = __dst[0];
  if (__dst[0])
  {

    sub_1DCC50ACC(__dst);
    v28 = OUTLINED_FUNCTION_90_2();
    OUTLINED_FUNCTION_1_8();
    v30 = OUTLINED_FUNCTION_85_3(v29);
  }

  else
  {
    sub_1DCB16D50(__dst, &qword_1ECCA26D0, &qword_1DD0E6540);
    v28 = 0;
    v30 = 0;
    *(&v53 + 1) = 0;
    *&v54 = 0;
  }

  *&v53 = v27;
  *(&v54 + 1) = v28;
  v55 = v30;
  sub_1DCB28B08(a6, __dst, &qword_1ECCA26D0, &qword_1DD0E6540);
  v31 = __dst[0];
  if (__dst[0])
  {

    sub_1DCC50ACC(__dst);
    v32 = OUTLINED_FUNCTION_90_2();
    OUTLINED_FUNCTION_1_8();
    v34 = OUTLINED_FUNCTION_85_3(v33);
  }

  else
  {
    sub_1DCB16D50(__dst, &qword_1ECCA26D0, &qword_1DD0E6540);
    v32 = 0;
    v34 = 0;
    __dst[1] = 0;
    __dst[2] = 0;
  }

  __dst[0] = v31;
  __dst[3] = v32;
  __dst[4] = v34;
  v35 = OUTLINED_FUNCTION_42_7();
  v37 = sub_1DCC528F8(v35, v36);
  if (__dst[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(__dst);
  }

  if (*(&v54 + 1))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&v53);
  }

  *(v8 + 128) = v37;
  sub_1DCB28B08(a5, __dst, &qword_1ECCA26D0, &qword_1DD0E6540);
  if (__dst[0])
  {
    v37 = __dst[1];

    sub_1DCC50ACC(__dst);
    v32 = OUTLINED_FUNCTION_90_2();
    OUTLINED_FUNCTION_1_8();
    v39 = OUTLINED_FUNCTION_85_3(v38);
  }

  else
  {
    sub_1DCB16D50(__dst, &qword_1ECCA26D0, &qword_1DD0E6540);
    v39 = OUTLINED_FUNCTION_43_8();
    *(&v53 + 1) = 0;
    *&v54 = 0;
  }

  *&v53 = v37;
  *(&v54 + 1) = v32;
  v55 = v39;
  sub_1DCB28B08(a6, __dst, &qword_1ECCA26D0, &qword_1DD0E6540);
  if (__dst[0])
  {
    v37 = __dst[1];

    sub_1DCC50ACC(__dst);
    v32 = OUTLINED_FUNCTION_90_2();
    OUTLINED_FUNCTION_1_8();
    v41 = OUTLINED_FUNCTION_85_3(v40);
  }

  else
  {
    sub_1DCB16D50(__dst, &qword_1ECCA26D0, &qword_1DD0E6540);
    v41 = OUTLINED_FUNCTION_43_8();
    __dst[1] = 0;
    __dst[2] = 0;
  }

  __dst[0] = v37;
  __dst[3] = v32;
  __dst[4] = v41;
  v42 = OUTLINED_FUNCTION_42_7();
  v44 = sub_1DCC52C8C(v42, v43);

  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  if (__dst[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(__dst);
  }

  if (*(&v54 + 1))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&v53);
  }

  *(v8 + 120) = v44;
  memcpy(__dst, a6, sizeof(__dst));
  if (__dst[0])
  {
    sub_1DCB28B08(&__dst[8], &v49, &qword_1ECCA26E0, &qword_1DD0E64F8);
    sub_1DCC50ACC(__dst);
    if (*(&v50 + 1))
    {
      sub_1DCB16D50(a5, &qword_1ECCA26D0, &qword_1DD0E6540);
      sub_1DCAFF9E8(&v49, &v53);
      goto LABEL_40;
    }
  }

  else
  {
    sub_1DCB16D50(__dst, &qword_1ECCA26D0, &qword_1DD0E6540);
    v49 = 0u;
    v50 = 0u;
    v51 = 0;
  }

  memcpy(__dst, a5, sizeof(__dst));
  if (__dst[0])
  {
    sub_1DCB28B08(&__dst[8], &v53, &qword_1ECCA26E0, &qword_1DD0E64F8);
    sub_1DCC50ACC(__dst);
  }

  else
  {
    sub_1DCB16D50(__dst, &qword_1ECCA26D0, &qword_1DD0E6540);
    v53 = 0u;
    v54 = 0u;
    v55 = 0;
  }

  if (*(&v50 + 1))
  {
    sub_1DCB16D50(&v49, &qword_1ECCA26E0, &qword_1DD0E64F8);
  }

LABEL_40:
  v45 = v54;
  *(v8 + 136) = v53;
  *(v8 + 152) = v45;
  *(v8 + 168) = v55;
  *(v8 + 176) = a7;
  *(v8 + 184) = a8 & 1;
  return v8;
}

uint64_t sub_1DCC52514(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t sub_1DCC52564(uint64_t a1, uint64_t a2)
{
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v4 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v4, qword_1EDE57E00);
  v5 = sub_1DD0DD8EC();
  v6 = sub_1DD0DE6DC();
  v7 = &off_1DD0E0000;
  if (os_log_type_enabled(v5, v6))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *&v25 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1DCB10E9C(0xD000000000000017, 0x80000001DD115A10, &v25);
    _os_log_impl(&dword_1DCAFC000, v5, v6, "Mapping standard extensions of type %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    v7 = &off_1DD0E0000;
    MEMORY[0x1E12A8390](v9, -1, -1);
    MEMORY[0x1E12A8390](v8, -1, -1);
  }

  v28 = MEMORY[0x1E69E7CC8];
  if (*(a1 + 24))
  {
    sub_1DCB17CA0(a1, &v25);
  }

  else
  {
    v10 = *(a1 + 16);
    v25 = *a1;
    v26 = v10;
    v27 = *(a1 + 32);
  }

  if (*(&v26 + 1))
  {
    v11 = v27;
    v12 = __swift_project_boxed_opaque_existential_1(&v25, *(&v26 + 1));
    MEMORY[0x1EEE9AC00](v12, v13);
    v14 = *(v11 + 8);
    sub_1DD0DE24C();
    __swift_destroy_boxed_opaque_existential_1Tm(&v25);
  }

  v15 = sub_1DD0DD8EC();
  v16 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *&v25 = v18;
    *v17 = *(v7 + 246);
    *(v17 + 4) = sub_1DCB10E9C(0xD000000000000017, 0x80000001DD115A10, &v25);
    _os_log_impl(&dword_1DCAFC000, v15, v16, "Adding custom extensions of type %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x1E12A8390](v18, -1, -1);
    MEMORY[0x1E12A8390](v17, -1, -1);
  }

  if (*(a2 + 24))
  {
    sub_1DCB17CA0(a2, &v25);
  }

  else
  {
    v19 = *(a2 + 16);
    v25 = *a2;
    v26 = v19;
    v27 = *(a2 + 32);
  }

  if (*(&v26 + 1))
  {
    v20 = v27;
    v21 = __swift_project_boxed_opaque_existential_1(&v25, *(&v26 + 1));
    MEMORY[0x1EEE9AC00](v21, v22);
    v23 = *(v20 + 8);
    sub_1DD0DE24C();
    __swift_destroy_boxed_opaque_existential_1Tm(&v25);
  }

  return v28;
}

uint64_t sub_1DCC528F8(uint64_t a1, uint64_t a2)
{
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v4 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v4, qword_1EDE57E00);
  v5 = sub_1DD0DD8EC();
  v6 = sub_1DD0DE6DC();
  v7 = &off_1DD0E0000;
  if (os_log_type_enabled(v5, v6))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *&v25 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1DCB10E9C(0xD000000000000010, 0x80000001DD1159F0, &v25);
    _os_log_impl(&dword_1DCAFC000, v5, v6, "Mapping standard extensions of type %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    v7 = &off_1DD0E0000;
    MEMORY[0x1E12A8390](v9, -1, -1);
    MEMORY[0x1E12A8390](v8, -1, -1);
  }

  v28 = MEMORY[0x1E69E7CC8];
  if (*(a1 + 24))
  {
    sub_1DCB17CA0(a1, &v25);
  }

  else
  {
    v10 = *(a1 + 16);
    v25 = *a1;
    v26 = v10;
    v27 = *(a1 + 32);
  }

  if (*(&v26 + 1))
  {
    v11 = v27;
    v12 = __swift_project_boxed_opaque_existential_1(&v25, *(&v26 + 1));
    MEMORY[0x1EEE9AC00](v12, v13);
    v14 = *(v11 + 8);
    sub_1DD0DE24C();
    __swift_destroy_boxed_opaque_existential_1Tm(&v25);
  }

  v15 = sub_1DD0DD8EC();
  v16 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *&v25 = v18;
    *v17 = *(v7 + 246);
    *(v17 + 4) = sub_1DCB10E9C(0xD000000000000010, 0x80000001DD1159F0, &v25);
    _os_log_impl(&dword_1DCAFC000, v15, v16, "Adding custom extensions of type %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x1E12A8390](v18, -1, -1);
    MEMORY[0x1E12A8390](v17, -1, -1);
  }

  if (*(a2 + 24))
  {
    sub_1DCB17CA0(a2, &v25);
  }

  else
  {
    v19 = *(a2 + 16);
    v25 = *a2;
    v26 = v19;
    v27 = *(a2 + 32);
  }

  if (*(&v26 + 1))
  {
    v20 = v27;
    v21 = __swift_project_boxed_opaque_existential_1(&v25, *(&v26 + 1));
    MEMORY[0x1EEE9AC00](v21, v22);
    v23 = *(v20 + 8);
    sub_1DD0DE24C();
    __swift_destroy_boxed_opaque_existential_1Tm(&v25);
  }

  return v28;
}

uint64_t sub_1DCC52C8C(uint64_t a1, uint64_t a2)
{
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v4 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v4, qword_1EDE57E00);
  v5 = sub_1DD0DD8EC();
  v6 = sub_1DD0DE6DC();
  v7 = &off_1DD0E0000;
  if (os_log_type_enabled(v5, v6))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *&v25 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1DCB10E9C(0xD000000000000019, 0x80000001DD1159D0, &v25);
    _os_log_impl(&dword_1DCAFC000, v5, v6, "Mapping standard extensions of type %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    v7 = &off_1DD0E0000;
    MEMORY[0x1E12A8390](v9, -1, -1);
    MEMORY[0x1E12A8390](v8, -1, -1);
  }

  v28 = MEMORY[0x1E69E7CC8];
  if (*(a1 + 24))
  {
    sub_1DCB17CA0(a1, &v25);
  }

  else
  {
    v10 = *(a1 + 16);
    v25 = *a1;
    v26 = v10;
    v27 = *(a1 + 32);
  }

  if (*(&v26 + 1))
  {
    v11 = v27;
    v12 = __swift_project_boxed_opaque_existential_1(&v25, *(&v26 + 1));
    MEMORY[0x1EEE9AC00](v12, v13);
    v14 = *(v11 + 8);
    sub_1DD0DE24C();
    __swift_destroy_boxed_opaque_existential_1Tm(&v25);
  }

  v15 = sub_1DD0DD8EC();
  v16 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *&v25 = v18;
    *v17 = *(v7 + 246);
    *(v17 + 4) = sub_1DCB10E9C(0xD000000000000019, 0x80000001DD1159D0, &v25);
    _os_log_impl(&dword_1DCAFC000, v15, v16, "Adding custom extensions of type %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x1E12A8390](v18, -1, -1);
    MEMORY[0x1E12A8390](v17, -1, -1);
  }

  if (*(a2 + 24))
  {
    sub_1DCB17CA0(a2, &v25);
  }

  else
  {
    v19 = *(a2 + 16);
    v25 = *a2;
    v26 = v19;
    v27 = *(a2 + 32);
  }

  if (*(&v26 + 1))
  {
    v20 = v27;
    v21 = __swift_project_boxed_opaque_existential_1(&v25, *(&v26 + 1));
    MEMORY[0x1EEE9AC00](v21, v22);
    v23 = *(v20 + 8);
    sub_1DD0DE24C();
    __swift_destroy_boxed_opaque_existential_1Tm(&v25);
  }

  return v28;
}

uint64_t sub_1DCC53020(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t sub_1DCC53070(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t sub_1DCC530C0()
{
  OUTLINED_FUNCTION_42();
  v1[2] = v2;
  v1[3] = v0;
  v1[4] = *v0;
  v3 = sub_1DD0DD85C();
  v1[5] = v3;
  v4 = *(v3 - 8);
  OUTLINED_FUNCTION_24_0();
  v1[6] = v5;
  v7 = *(v6 + 64);
  v1[7] = OUTLINED_FUNCTION_38();
  v8 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DCC53190()
{
  OUTLINED_FUNCTION_51_4();
  v28 = v0;
  if (qword_1EDE4EC80 != -1)
  {
    OUTLINED_FUNCTION_14_5();
  }

  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  v5 = sub_1DD0DD88C();
  OUTLINED_FUNCTION_92(v5, qword_1EDE57DD0);
  sub_1DD0DD84C();
  OUTLINED_FUNCTION_104_2("AuthoredFlowRunner_start", 24);
  v0[8] = v6;
  v7 = OUTLINED_FUNCTION_38_1();
  v8(v7);
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v9 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v9, qword_1EDE57E00);
  v10 = sub_1DD0DD8EC();
  sub_1DD0DE6DC();
  v11 = OUTLINED_FUNCTION_19_2();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = v0[4];
    OUTLINED_FUNCTION_42_3();
    v14 = swift_slowAlloc();
    OUTLINED_FUNCTION_35_9();
    swift_slowAlloc();
    OUTLINED_FUNCTION_93();
    *v14 = 136315394;
    v15 = OUTLINED_FUNCTION_105_4();
    sub_1DCB10E9C(v15, v16, &v27);
    OUTLINED_FUNCTION_92_1();
    *(v14 + 4) = v1;
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_1DCB10E9C(0x29287472617473, 0xE700000000000000, &v27);
    OUTLINED_FUNCTION_68_5();
    _os_log_impl(v17, v18, v19, v20, v21, 0x16u);
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
  }

  v22 = v0[3];
  if ((sub_1DCC56E98() & 1) == 0)
  {
    v26 = v0[3];
    sub_1DD0DCF8C();
  }

  v23 = swift_task_alloc();
  v0[9] = v23;
  *v23 = v0;
  v23[1] = sub_1DCC53570;
  v24 = v0[3];

  return sub_1DCC558C0();
}

uint64_t sub_1DCC53570()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 72);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCC53654()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[3];
  v2 = *(v1 + 16);
  sub_1DCDA0B44(*(v1 + 104));
  v3 = [v2 startConversation];
  sub_1DCB10E5C(0, &qword_1ECCA2740, 0x1E69A8E00);
  OUTLINED_FUNCTION_75_0();
  v0[10] = sub_1DD0DE2EC();

  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[11] = v4;
  *v4 = v5;
  v4[1] = sub_1DCC53738;
  v6 = v0[2];
  v7 = v0[3];
  OUTLINED_FUNCTION_62_1();

  return sub_1DCC56F3C();
}

uint64_t sub_1DCC53738()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 88);
  v3 = *(v1 + 80);
  v4 = *v0;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DCC53838()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  sub_1DCC55678();

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCC538AC()
{
  OUTLINED_FUNCTION_42();
  v1[5] = v2;
  v1[6] = v0;
  v1[7] = *v0;
  v3 = sub_1DD0DD85C();
  v1[8] = v3;
  v4 = *(v3 - 8);
  OUTLINED_FUNCTION_24_0();
  v1[9] = v5;
  v7 = *(v6 + 64);
  v1[10] = OUTLINED_FUNCTION_38();
  v8 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DCC5397C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_145();
  a17 = v19;
  a18 = v20;
  OUTLINED_FUNCTION_41();
  a16 = v18;
  if (qword_1EDE4EC80 != -1)
  {
    OUTLINED_FUNCTION_14_5();
  }

  v22 = v18[9];
  v21 = v18[10];
  v23 = v18[8];
  v24 = sub_1DD0DD88C();
  OUTLINED_FUNCTION_92(v24, qword_1EDE57DD0);
  sub_1DD0DD84C();
  OUTLINED_FUNCTION_104_2("AuthoredFlowRunner_makeParsingFunctionForInput", 46);
  v18[11] = v25;
  v26 = OUTLINED_FUNCTION_38_1();
  v27(v26);
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v28 = sub_1DD0DD8FC();
  v18[12] = __swift_project_value_buffer(v28, qword_1EDE57E00);
  v29 = sub_1DD0DD8EC();
  sub_1DD0DE6DC();
  v30 = OUTLINED_FUNCTION_19_2();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = v18[7];
    OUTLINED_FUNCTION_42_3();
    v33 = swift_slowAlloc();
    OUTLINED_FUNCTION_35_9();
    a10 = swift_slowAlloc();
    v34 = OUTLINED_FUNCTION_80_0(4.8151e-34);
    sub_1DCB10E9C(v34, v35, &a10);
    OUTLINED_FUNCTION_96_1();

    OUTLINED_FUNCTION_37_10();
    OUTLINED_FUNCTION_57_0();
    *(v33 + 14) = sub_1DCB10E9C(0xD000000000000023, v36, &a10);
    OUTLINED_FUNCTION_13_12();
    _os_log_impl(v37, v38, v39, v40, v41, 0x16u);
    OUTLINED_FUNCTION_60_1();
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
  }

  v42 = v18[6];
  v43 = *(v42 + 16);
  v18[13] = v43;
  v44 = [v43 activeEvents];
  sub_1DCB10E5C(0, &qword_1ECCA2710, 0x1E69A8DE0);
  sub_1DCC5CE28();
  v18[14] = sub_1DD0DE57C();

  v18[15] = *(v42 + 128);
  v45 = swift_task_alloc();
  v18[16] = v45;
  *v45 = v18;
  v45[1] = sub_1DCC53C04;
  v46 = v18[5];
  OUTLINED_FUNCTION_48();

  return v50(v47, v48, v49, v50, v51, v52, v53, v54, sub_1DCC5D64C, a10);
}

uint64_t sub_1DCC53C04()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;
  v1[2] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v6 = *(v5 + 128);
  v7 = *(v5 + 112);
  v8 = *v0;
  OUTLINED_FUNCTION_27();
  *v9 = v8;
  *(v11 + 136) = v10;

  v12 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1DCC53D10()
{
  OUTLINED_FUNCTION_145();
  v24 = v1;
  OUTLINED_FUNCTION_41();
  v2 = *(v0 + 96);
  if (*(v0 + 136))
  {
    v3 = *(v0 + 32);
    v4 = sub_1DD0DD8EC();
    v5 = sub_1DD0DE6DC();
    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 136);
    if (!v6)
    {
      goto LABEL_13;
    }

    v8 = "Successfully produced a parsing function for input";
    goto LABEL_12;
  }

  v9 = [*(v0 + 104) hasActiveFallback];
  v4 = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6DC();
  v10 = os_log_type_enabled(v4, v5);
  if (!v9)
  {
    if (!v10)
    {
LABEL_13:
      v21 = *(v0 + 80);
      v20 = *(v0 + 88);

      sub_1DCC55678();

      OUTLINED_FUNCTION_70_2();
      OUTLINED_FUNCTION_48();

      __asm { BRAA            X3, X16 }
    }

    v8 = "Received input that we cannot process and there is no active fallback. Ignoring...";
LABEL_12:
    v19 = OUTLINED_FUNCTION_50_0();
    *v19 = 0;
    _os_log_impl(&dword_1DCAFC000, v4, v5, v8, v19, 2u);
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
    goto LABEL_13;
  }

  if (v10)
  {
    v11 = OUTLINED_FUNCTION_50_0();
    *v11 = 0;
    _os_log_impl(&dword_1DCAFC000, v4, v5, "Engine indicates that there is an active fallback. Attempting to match...", v11, 2u);
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
  }

  v12 = *(v0 + 104);

  sub_1DCDA0C98();
  v14 = v13;
  *(v0 + 144) = v13;
  v15 = swift_task_alloc();
  *(v0 + 152) = v15;
  *v15 = v0;
  v15[1] = sub_1DCC53F40;
  v16 = *(v0 + 120);
  v17 = *(v0 + 40);

  return sub_1DCC5D8C0(v17, v14, v16);
}

uint64_t sub_1DCC53F40()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;
  v4 = *(v3 + 152);
  v5 = *(v3 + 144);
  v6 = *v0;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v10 + 160) = v8;
  *(v10 + 168) = v9;

  v11 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

void sub_1DCC54044()
{
  OUTLINED_FUNCTION_41();
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[12];
  v4 = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6DC();
  v6 = OUTLINED_FUNCTION_19_2();
  if (os_log_type_enabled(v6, v7))
  {
    if (v2)
    {
      v8 = "Parser indicates that it will produce a fallback event for the current input. Will process input.";
    }

    else
    {
      v8 = "Unable to match input to fallback events. Input is not for us, ignoring...";
    }

    v9 = v0[20];
    v10 = OUTLINED_FUNCTION_50_0();
    *v10 = 0;
    _os_log_impl(&dword_1DCAFC000, v4, v5, v8, v10, 2u);
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
  }

  else
  {
    v11 = v0[20];
  }

  v13 = v0[10];
  v12 = v0[11];

  sub_1DCC55678();

  v14 = v0[1];
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_121();

  __asm { BRAA            X3, X16 }
}

uint64_t sub_1DCC5415C()
{
  OUTLINED_FUNCTION_42();
  v1[8] = v2;
  v1[9] = v0;
  v1[6] = v3;
  v1[7] = v4;
  v1[10] = *v0;
  v5 = sub_1DD0DD85C();
  v1[11] = v5;
  v6 = *(v5 - 8);
  OUTLINED_FUNCTION_24_0();
  v1[12] = v7;
  v9 = *(v8 + 64);
  v1[13] = OUTLINED_FUNCTION_38();
  v10 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DCC54230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_145();
  a17 = v19;
  a18 = v20;
  OUTLINED_FUNCTION_41();
  a16 = v18;
  if (qword_1EDE4EC80 != -1)
  {
    OUTLINED_FUNCTION_14_5();
  }

  v22 = v18[12];
  v21 = v18[13];
  v23 = v18[11];
  v24 = sub_1DD0DD88C();
  OUTLINED_FUNCTION_92(v24, qword_1EDE57DD0);
  sub_1DD0DD84C();
  OUTLINED_FUNCTION_104_2("AuthoredFlowRunner_handleInput", 30);
  v18[14] = v25;
  v26 = OUTLINED_FUNCTION_38_1();
  v27(v26);
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v28 = sub_1DD0DD8FC();
  v18[15] = __swift_project_value_buffer(v28, qword_1EDE57E00);
  v29 = sub_1DD0DD8EC();
  sub_1DD0DE6DC();
  v30 = OUTLINED_FUNCTION_19_2();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = v18[10];
    OUTLINED_FUNCTION_42_3();
    v33 = swift_slowAlloc();
    OUTLINED_FUNCTION_35_9();
    a10 = swift_slowAlloc();
    v34 = OUTLINED_FUNCTION_80_0(4.8151e-34);
    sub_1DCB10E9C(v34, v35, &a10);
    OUTLINED_FUNCTION_96_1();

    OUTLINED_FUNCTION_37_10();
    OUTLINED_FUNCTION_57_0();
    *(v33 + 14) = sub_1DCB10E9C(0xD000000000000021, v36, &a10);
    OUTLINED_FUNCTION_13_12();
    _os_log_impl(v37, v38, v39, v40, v41, 0x16u);
    OUTLINED_FUNCTION_60_1();
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
  }

  v55 = v18[7] + *v18[7];
  v42 = *(v18[7] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v18[16] = v43;
  *v43 = v44;
  v43[1] = sub_1DCC54490;
  v45 = v18[8];
  OUTLINED_FUNCTION_48();

  return v47(v46, v47, v48, v49, v50, v51, v52, v53, v55, a10);
}

uint64_t sub_1DCC54490()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 128);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCC54574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_79();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_90();
  a20 = v22;
  v25 = *(v22 + 16);
  v26 = *(v22 + 24);
  v27 = *(v22 + 32);
  if (*(v22 + 40))
  {
    if (*(v22 + 40) == 1)
    {
      v28 = *(v22 + 120);
      v29 = sub_1DD0DD8EC();
      sub_1DD0DE6EC();
      v30 = OUTLINED_FUNCTION_19_2();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_167(v32);
        OUTLINED_FUNCTION_15_8();
        _os_log_impl(v33, v34, v35, v36, v37, 2u);
        OUTLINED_FUNCTION_18();
        MEMORY[0x1E12A8390]();
      }

      v38 = *(v22 + 48);

      *v38 = v25;
      *(v38 + 8) = 0;
      *(v38 + 88) = 3;
    }

    else
    {
      if (v27 | v26 | v25)
      {
        v71 = *(v22 + 120);
        if (v25 == 1 && (v27 | v26) == 0)
        {
          v90 = sub_1DD0DD8EC();
          sub_1DD0DE6DC();
          v91 = OUTLINED_FUNCTION_19_2();
          if (os_log_type_enabled(v91, v92))
          {
            v93 = OUTLINED_FUNCTION_50_0();
            OUTLINED_FUNCTION_46(v93);
            OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v94, v95, "UserInputParser indicated that the Parse is not understood.");
            OUTLINED_FUNCTION_18();
            MEMORY[0x1E12A8390]();
          }

          v79 = *(v22 + 48);

          sub_1DCC5CD04();
          v80 = OUTLINED_FUNCTION_34();
          *v81 = 0xD000000000000013;
          v81[1] = 0x80000001DD115900;
        }

        else
        {
          v73 = sub_1DD0DD8EC();
          sub_1DD0DE6DC();
          v74 = OUTLINED_FUNCTION_19_2();
          if (os_log_type_enabled(v74, v75))
          {
            v76 = OUTLINED_FUNCTION_50_0();
            OUTLINED_FUNCTION_46(v76);
            OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v77, v78, "UserInputParser indicated that the Parse is empty.");
            OUTLINED_FUNCTION_18();
            MEMORY[0x1E12A8390]();
          }

          v79 = *(v22 + 48);

          sub_1DCC5CD04();
          v80 = OUTLINED_FUNCTION_34();
          *v81 = xmmword_1DD0E6740;
        }

        OUTLINED_FUNCTION_91_1(v80, v81);
        *v79 = v96;
        *(v79 + 8) = 0;
        v89 = 3;
      }

      else
      {
        v82 = *(v22 + 120);
        v83 = sub_1DD0DD8EC();
        sub_1DD0DE6DC();
        v84 = OUTLINED_FUNCTION_19_2();
        if (os_log_type_enabled(v84, v85))
        {
          v86 = OUTLINED_FUNCTION_50_0();
          OUTLINED_FUNCTION_46(v86);
          OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v87, v88, "User cancelled the conversation.");
          OUTLINED_FUNCTION_18();
          MEMORY[0x1E12A8390]();
        }

        v79 = *(v22 + 48);

        *(v79 + 80) = 0;
        *(v79 + 48) = 0u;
        *(v79 + 64) = 0u;
        *(v79 + 16) = 0u;
        *(v79 + 32) = 0u;
        *v79 = 0u;
        v89 = 4;
      }

      *(v79 + 88) = v89;
    }

    v97 = *(v22 + 104);
    v98 = *(v22 + 112);
    sub_1DCC55678();

    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_76();

    return v100(v99, v100, v101, v102, v103, v104, v105, v106, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    v39 = *(v22 + 120);
    v40 = [objc_allocWithZone(MEMORY[0x1E69A8DE0]) init];
    *(v22 + 136) = v40;
    OUTLINED_FUNCTION_20();
    v41 = sub_1DD0DDF8C();
    [v40 setEventId_];

    v42 = sub_1DD0DDE4C();
    v43 = OUTLINED_FUNCTION_20();
    sub_1DCC5DE5C(v43, v44, v27, 0);
    [v40 setSlots_];

    v45 = v40;
    v46 = sub_1DD0DD8EC();
    v47 = sub_1DD0DE6DC();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = OUTLINED_FUNCTION_83();
      a11 = swift_slowAlloc();
      *v48 = 136315650;
      v49 = [v45 eventId];
      sub_1DD0DDFBC();
      OUTLINED_FUNCTION_64_2();

      OUTLINED_FUNCTION_83_3(v50, v51);
      OUTLINED_FUNCTION_88_4();
      *(v48 + 4) = v49;
      *(v48 + 12) = 2080;
      v52 = [v45 name];
      sub_1DD0DDFBC();
      OUTLINED_FUNCTION_64_2();

      OUTLINED_FUNCTION_83_3(v53, v54);
      OUTLINED_FUNCTION_88_4();
      *(v48 + 14) = v52;
      *(v48 + 22) = 2080;
      v55 = [v45 slots];
      sub_1DD0DDE6C();

      sub_1DD0DDE7C();
      OUTLINED_FUNCTION_61_4();

      v58 = OUTLINED_FUNCTION_87_3(v56, v57, &a11);

      *(v48 + 24) = v58;
      OUTLINED_FUNCTION_68_5();
      _os_log_impl(v59, v60, v61, v62, v63, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_18();
      MEMORY[0x1E12A8390]();
      OUTLINED_FUNCTION_18();
      MEMORY[0x1E12A8390]();
    }

    v64 = [*(*(v22 + 72) + 16) processEvent_];
    sub_1DCB10E5C(0, &qword_1ECCA2740, 0x1E69A8E00);
    OUTLINED_FUNCTION_75_0();
    *(v22 + 144) = sub_1DD0DE2EC();

    swift_task_alloc();
    OUTLINED_FUNCTION_45();
    *(v22 + 152) = v65;
    *v65 = v66;
    v65[1] = sub_1DCC54AE8;
    v67 = *(v22 + 72);
    v68 = *(v22 + 48);
    OUTLINED_FUNCTION_62_1();
    OUTLINED_FUNCTION_76();

    return sub_1DCC56F3C();
  }
}

uint64_t sub_1DCC54AE8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 152);
  v3 = *(v1 + 144);
  v4 = *v0;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DCC54BE8()
{
  OUTLINED_FUNCTION_42();

  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  sub_1DCC55678();

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCC54C64()
{
  OUTLINED_FUNCTION_42();
  v1[32] = v2;
  v1[33] = v0;
  v1[30] = v3;
  v1[31] = v4;
  v1[34] = *v0;
  v5 = sub_1DD0DD85C();
  v1[35] = v5;
  v6 = *(v5 - 8);
  OUTLINED_FUNCTION_24_0();
  v1[36] = v7;
  v9 = *(v8 + 64);
  v1[37] = OUTLINED_FUNCTION_38();
  v10 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DCC54D38()
{
  v93 = v0;
  if (qword_1EDE4EC80 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    OUTLINED_FUNCTION_14_5();
LABEL_2:
    v2 = *(v0 + 288);
    v1 = *(v0 + 296);
    v3 = *(v0 + 280);
    v4 = sub_1DD0DD88C();
    OUTLINED_FUNCTION_92(v4, qword_1EDE57DD0);
    sub_1DD0DD84C();
    OUTLINED_FUNCTION_104_2("AuthoredFlowRunner_processVariables", 35);
    *(v0 + 304) = v5;
    v6 = OUTLINED_FUNCTION_38_1();
    v7(v6);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v8 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v8, qword_1EDE57E00);
    v9 = sub_1DD0DD8EC();
    sub_1DD0DE6DC();
    v10 = OUTLINED_FUNCTION_19_2();
    v90 = v0;
    if (os_log_type_enabled(v10, v11))
    {
      v12 = *(v0 + 272);
      OUTLINED_FUNCTION_42_3();
      v13 = swift_slowAlloc();
      OUTLINED_FUNCTION_35_9();
      v92 = swift_slowAlloc();
      v14 = OUTLINED_FUNCTION_80_0(4.8151e-34);
      sub_1DCB10E9C(v14, v15, &v92);
      OUTLINED_FUNCTION_96_1();

      OUTLINED_FUNCTION_37_10();
      OUTLINED_FUNCTION_57_0();
      *(v13 + 14) = sub_1DCB10E9C(0xD000000000000038, v16, &v92);
      OUTLINED_FUNCTION_13_12();
      _os_log_impl(v17, v18, v19, v20, v21, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_18();
      MEMORY[0x1E12A8390]();
      OUTLINED_FUNCTION_18();
      MEMORY[0x1E12A8390]();
    }

    v22 = *(v0 + 248);
    v91 = *(v0 + 256);
    v23 = sub_1DD0DDE9C();
    v25 = v22 + 64;
    v24 = *(v22 + 64);
    v26 = *(v22 + 32);
    OUTLINED_FUNCTION_5_20();
    v29 = v28 & v27;
    OUTLINED_FUNCTION_74_4();
    v31 = v30 >> 6;
    v89 = v22;

    v32 = 0;
    v87 = v31;
    v88 = v22 + 64;
    if (v29)
    {
      break;
    }

LABEL_8:
    while (1)
    {
      v33 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v33 >= v31)
      {
        v60 = *(v0 + 264);
        v61 = *(v0 + 248);

        v62 = *(v60 + 16);
        sub_1DCDA0B44(v23);

        v63 = [v62 getRemainingResponses];
        sub_1DCB10E5C(0, &qword_1ECCA2740, 0x1E69A8E00);
        OUTLINED_FUNCTION_75_0();
        v64 = sub_1DD0DE2EC();
        *(v0 + 312) = v64;

        if (sub_1DCB08B14(v64))
        {

          v65 = sub_1DD0DD8EC();
          sub_1DD0DE6DC();
          v66 = OUTLINED_FUNCTION_19_2();
          if (os_log_type_enabled(v66, v67))
          {
            v68 = OUTLINED_FUNCTION_151();
            *v68 = 134217984;
            *(v68 + 4) = sub_1DCB08B14(v64);

            OUTLINED_FUNCTION_15_8();
            _os_log_impl(v69, v70, v71, v72, v73, 0xCu);
            OUTLINED_FUNCTION_18();
            MEMORY[0x1E12A8390]();
          }

          else
          {
          }

          swift_task_alloc();
          OUTLINED_FUNCTION_45();
          *(v0 + 328) = v81;
          *v81 = v82;
          v81[1] = sub_1DCC55578;
          v83 = *(v0 + 264);
          v84 = *(v0 + 240);
          OUTLINED_FUNCTION_62_1();
          OUTLINED_FUNCTION_33_5();

          return sub_1DCC56F3C();
        }

        else
        {

          swift_task_alloc();
          OUTLINED_FUNCTION_45();
          *(v0 + 320) = v74;
          *v74 = v75;
          v74[1] = sub_1DCC55420;
          v76 = *(v0 + 264);
          v77 = *(v0 + 240);
          OUTLINED_FUNCTION_33_5();

          return sub_1DCC5B740(v78);
        }
      }

      v29 = *(v25 + 8 * v33);
      ++v32;
      if (v29)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
  }

  while (1)
  {
    v33 = v32;
LABEL_11:
    v34 = __clz(__rbit64(v29)) | (v33 << 6);
    v35 = (*(v89 + 48) + 16 * v34);
    v36 = *v35;
    v37 = v35[1];
    sub_1DCB0DF6C(*(v89 + 56) + 32 * v34, v0 + 32);
    *(v0 + 16) = v36;
    *(v0 + 24) = v37;
    sub_1DCB28B08(v0 + 16, v0 + 64, &qword_1ECCA2760, &unk_1DD0E6A30);
    v38 = *(v0 + 72);
    if (*(v91 + 16))
    {
      v39 = *(v0 + 256);
      v40 = *(v0 + 64);

      v41 = sub_1DCB21038(v40, v38);
      v43 = v42;

      if (v43)
      {
        v44 = (*(v91 + 56) + 16 * v41);
        v45 = *v44;
        v46 = v44[1];

        goto LABEL_16;
      }
    }

    else
    {
    }

    sub_1DCB28B08(v0 + 16, v0 + 112, &qword_1ECCA2760, &unk_1DD0E6A30);
    v45 = *(v0 + 112);
    v46 = *(v0 + 120);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 128));
LABEL_16:
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));
    sub_1DCB28B08(v0 + 16, v0 + 160, &qword_1ECCA2760, &unk_1DD0E6A30);
    v47 = *(v0 + 168);

    sub_1DCB20B30((v0 + 176), (v0 + 208));
    swift_isUniquelyReferenced_nonNull_native();
    v92 = v23;
    v48 = sub_1DCB21038(v45, v46);
    if (__OFADD__(v23[2], (v49 & 1) == 0))
    {
      goto LABEL_41;
    }

    v50 = v48;
    v51 = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2750, &qword_1DD0E6878);
    if (sub_1DD0DEDCC())
    {
      break;
    }

    v52 = v46;
LABEL_21:
    v29 &= v29 - 1;
    v0 = v90;
    if (v51)
    {

      v23 = v92;
      v55 = (v92[7] + 32 * v50);
      __swift_destroy_boxed_opaque_existential_1Tm(v55);
      sub_1DCB20B30((v90 + 208), v55);
      sub_1DCB16D50(v90 + 16, &qword_1ECCA2760, &unk_1DD0E6A30);
    }

    else
    {
      v23 = v92;
      v92[(v50 >> 6) + 8] |= 1 << v50;
      v56 = (v23[6] + 16 * v50);
      *v56 = v45;
      v56[1] = v52;
      sub_1DCB20B30((v90 + 208), (v23[7] + 32 * v50));
      sub_1DCB16D50(v90 + 16, &qword_1ECCA2760, &unk_1DD0E6A30);
      v57 = v23[2];
      v58 = __OFADD__(v57, 1);
      v59 = v57 + 1;
      if (v58)
      {
        goto LABEL_42;
      }

      v23[2] = v59;
    }

    v32 = v33;
    v31 = v87;
    v25 = v88;
    if (!v29)
    {
      goto LABEL_8;
    }
  }

  v52 = v46;
  v53 = sub_1DCB21038(v45, v46);
  if ((v51 & 1) == (v54 & 1))
  {
    v50 = v53;
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_33_5();

  return sub_1DD0DF12C();
}

uint64_t sub_1DCC55420()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 320);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCC55504()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 296);
  v2 = *(v0 + 304);
  sub_1DCC55678();

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCC55578()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 328);
  v3 = *(v1 + 312);
  v4 = *v0;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DCC55678()
{
  v0 = sub_1DD0DD89C();
  v1 = OUTLINED_FUNCTION_9(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1, v4);
  OUTLINED_FUNCTION_16();
  v5 = sub_1DD0DD85C();
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6, v11);
  OUTLINED_FUNCTION_16();
  v14 = v13 - v12;
  if (qword_1EDE4EC80 != -1)
  {
    OUTLINED_FUNCTION_14_5();
  }

  v15 = sub_1DD0DD88C();
  OUTLINED_FUNCTION_92(v15, qword_1EDE57DD0);
  v16 = sub_1DD0DD87C();
  sub_1DD0DD8AC();
  sub_1DD0DE7EC();
  if (sub_1DD0DE92C())
  {
    sub_1DD0DCF8C();
  }

  return (*(v8 + 8))(v14, v5);
}

uint64_t sub_1DCC558D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_100();
  a23 = v27;
  a24 = v28;
  OUTLINED_FUNCTION_51_4();
  a22 = v24;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v29 = sub_1DD0DD8FC();
  v30 = __swift_project_value_buffer(v29, qword_1EDE57E00);
  *(v24 + 304) = v30;
  v31 = sub_1DD0DD8EC();
  v32 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_167(v33);
    OUTLINED_FUNCTION_22_1();
    _os_log_impl(v34, v35, v36, v37, v38, 2u);
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
  }

  v39 = *(v24 + 296);

  sub_1DCB28B08(v39 + 136, v24 + 152, &qword_1ECCA26E0, &qword_1DD0E64F8);
  if (*(v24 + 176))
  {
    a11 = v30;
    v40 = *(v24 + 296);
    sub_1DCAFF9E8((v24 + 152), v24 + 112);
    v41 = *(v40 + 16);
    *(v24 + 312) = v41;
    v42 = [v41 getVariables];
    sub_1DCB10E5C(0, &qword_1ECCA2748, 0x1E69A8E08);
    v43 = sub_1DD0DDE6C();

    v44 = sub_1DCC517F0(v43, sub_1DCE1A29C, sub_1DCC5D398);
    result = sub_1DCB08B14(v44);
    a12 = v24;
    if (result)
    {
      v46 = result;
      if (result < 1)
      {
        __break(1u);
        return result;
      }

      v47 = 0;
      v48 = MEMORY[0x1E69E7CC0];
      v49 = &_OBJC_LABEL_PROTOCOL___SIRINLUSystemDialogAct;
      do
      {
        if ((v44 & 0xC000000000000001) != 0)
        {
          v50 = MEMORY[0x1E12A72C0](v47, v44);
        }

        else
        {
          v50 = *(v44 + 8 * v47 + 32);
        }

        v51 = v50;
        if ([v50 v49[148]])
        {
          v52 = [v51 name];
          sub_1DD0DDFBC();
          OUTLINED_FUNCTION_64_2();

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v55 = *(v48 + 16);
            sub_1DCB34108();
            v48 = v56;
          }

          v53 = *(v48 + 16);
          if (v53 >= *(v48 + 24) >> 1)
          {
            sub_1DCB34108();
            v48 = v57;
          }

          *(v48 + 16) = v53 + 1;
          v54 = v48 + 16 * v53;
          *(v54 + 32) = v25;
          *(v54 + 40) = v26;
          v49 = &_OBJC_LABEL_PROTOCOL___SIRINLUSystemDialogAct;
        }

        else
        {
        }

        ++v47;
      }

      while (v46 != v47);
    }

    else
    {
      v48 = MEMORY[0x1E69E7CC0];
    }

    a12[40] = v48;

    v58 = *(v48 + 16);
    v59 = sub_1DD0DD8EC();
    sub_1DD0DE6DC();
    v60 = OUTLINED_FUNCTION_19_2();
    v62 = os_log_type_enabled(v60, v61);
    if (v58)
    {
      if (v62)
      {
        OUTLINED_FUNCTION_151();
        v63 = OUTLINED_FUNCTION_52_0();
        a13 = v63;
        *v58 = 136315138;

        MEMORY[0x1E12A6960](v64, MEMORY[0x1E69E6158]);
        OUTLINED_FUNCTION_61_4();

        v67 = OUTLINED_FUNCTION_87_3(v65, v66, &a13);

        *(v58 + 4) = v67;
        OUTLINED_FUNCTION_15_8();
        _os_log_impl(v68, v69, v70, v71, v72, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v63);
        OUTLINED_FUNCTION_18();
        MEMORY[0x1E12A8390]();
        OUTLINED_FUNCTION_18();
        MEMORY[0x1E12A8390]();
      }

      v73 = a12[37];
      v74 = a12[18];
      __swift_project_boxed_opaque_existential_1(a12 + 14, a12[17]);
      v75 = v73[8];
      v76 = v73[9];
      v78 = v73[10];
      v77 = v73[11];
      v79 = v73[12];
      a12[24] = v75;
      a12[25] = v76;
      a12[26] = v78;
      a12[27] = v77;
      a12[28] = v79;
      v80 = *(v74 + 16);

      v81 = v78;

      v106 = v80 + *v80;
      v82 = v80[1];
      v83 = swift_task_alloc();
      a12[41] = v83;
      *v83 = a12;
      v83[1] = sub_1DCC55E1C;
      OUTLINED_FUNCTION_73();

      return v88(v84, v85, v86, v87, v88, v89, v90, v91, a9, v106, v74 + 16, a12, a13, a14, a15, a16);
    }

    if (v62)
    {
      v92 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_167(v92);
      OUTLINED_FUNCTION_15_8();
      _os_log_impl(v93, v94, v95, v96, v97, 2u);
      OUTLINED_FUNCTION_18();
      MEMORY[0x1E12A8390]();
    }

    __swift_destroy_boxed_opaque_existential_1Tm(a12 + 14);
  }

  else
  {
    sub_1DCB16D50(v24 + 152, &qword_1ECCA26E0, &qword_1DD0E64F8);
  }

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_73();

  return v99(v98, v99, v100, v101, v102, v103, v104, v105, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1DCC55E1C()
{
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  v4 = v1[41];
  v5 = v1[40];
  v6 = *v0;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v9 + 336) = v8;

  v10 = v1[25];
  v11 = v1[26];
  v12 = v1[28];

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

void sub_1DCC55F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_100();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_51_4();
  a22 = v24;
  v27 = 0;
  v28 = *(v24 + 336);
  v30 = *(v28 + 64);
  v29 = v28 + 64;
  v66 = *(v24 + 336);
  v31 = *(v66 + 32);
  OUTLINED_FUNCTION_5_20();
  v34 = v33 & v32;
  OUTLINED_FUNCTION_74_4();
  v36 = v35 >> 6;
  *&v37 = 136315138;
  v64 = v37;
  v38 = &_OBJC_LABEL_PROTOCOL___SIRINLUSystemDialogAct;
  v65 = v29;
  if (!v34)
  {
    goto LABEL_3;
  }

  do
  {
    v39 = v27;
LABEL_7:
    v40 = __clz(__rbit64(v34));
    v34 &= v34 - 1;
    v41 = v40 | (v39 << 6);
    v42 = (*(v66 + 48) + 16 * v41);
    v44 = *v42;
    v43 = v42[1];
    sub_1DCB0DF6C(*(v66 + 56) + 32 * v41, v24 + 232);
    *(v24 + 64) = v44;
    *(v24 + 72) = v43;
    sub_1DCB20B30((v24 + 232), (v24 + 80));

LABEL_8:
    v45 = *(v24 + 80);
    *(v24 + 16) = *(v24 + 64);
    *(v24 + 32) = v45;
    *(v24 + 48) = *(v24 + 96);
    v46 = *(v24 + 24);
    if (!v46)
    {
      v54 = *(v24 + 336);
      v55 = *(v24 + 320);

      __swift_destroy_boxed_opaque_existential_1Tm((v24 + 112));
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_73();

      v57(v56, v57, v58, v59, v60, v61, v62, v63, v64, *(&v64 + 1), v65, v66, a13, a14, a15, a16);
      return;
    }

    v47 = *(v24 + 304);
    v48 = *(v24 + 16);
    sub_1DCB20B30((v24 + 32), (v24 + 264));

    v49 = sub_1DD0DD8EC();
    v50 = sub_1DD0DE6DC();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = OUTLINED_FUNCTION_151();
      v52 = OUTLINED_FUNCTION_83();
      a13 = v52;
      *v51 = v64;
      *(v51 + 4) = sub_1DCB10E9C(v48, v46, &a13);
      _os_log_impl(&dword_1DCAFC000, v49, v50, "Restoring value for variable %s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v52);
      v38 = &_OBJC_LABEL_PROTOCOL___SIRINLUSystemDialogAct;
      OUTLINED_FUNCTION_18();
      MEMORY[0x1E12A8390]();
      v29 = v65;
      OUTLINED_FUNCTION_18();
      MEMORY[0x1E12A8390]();
    }

    v53 = *(v24 + 312);
    sub_1DD0DDF8C();
    OUTLINED_FUNCTION_94_2();

    __swift_project_boxed_opaque_existential_1((v24 + 264), *(v24 + 288));
    [v53 v38[149]];
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1Tm((v24 + 264));
  }

  while (v34);
LABEL_3:
  while (1)
  {
    v39 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v39 >= v36)
    {
      v34 = 0;
      *(v24 + 80) = 0u;
      *(v24 + 96) = 0u;
      *(v24 + 64) = 0u;
      goto LABEL_8;
    }

    v34 = *(v29 + 8 * v39);
    ++v27;
    if (v34)
    {
      v27 = v39;
      goto LABEL_7;
    }
  }

  __break(1u);
}

void sub_1DCC56214()
{
  v84 = v0;
  v1 = v0;
  if (qword_1EDE4F900 != -1)
  {
    goto LABEL_42;
  }

  while (1)
  {
    v2 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v2, qword_1EDE57E00);
    v3 = sub_1DD0DD8EC();
    v4 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v5);
      OUTLINED_FUNCTION_20_2(&dword_1DCAFC000, v6, v7, "Checking if we need to save persistent variable values");
      OUTLINED_FUNCTION_18();
      MEMORY[0x1E12A8390]();
    }

    v8 = *(v1 + 240);

    sub_1DCB28B08(v8 + 136, v1 + 56, &qword_1ECCA26E0, &qword_1DD0E64F8);
    if (!*(v1 + 80))
    {
      sub_1DCB16D50(v1 + 56, &qword_1ECCA26E0, &qword_1DD0E64F8);
      goto LABEL_31;
    }

    v9 = *(v1 + 240);
    sub_1DCAFF9E8((v1 + 56), v1 + 16);
    v10 = [*(v9 + 16) getChangedPersistentVariables];
    sub_1DCB10E5C(0, &qword_1ECCA2748, 0x1E69A8E08);
    v11 = sub_1DD0DDE6C();

    if (!*(v11 + 16))
    {

      v55 = sub_1DD0DD8EC();
      sub_1DD0DE6DC();
      v56 = OUTLINED_FUNCTION_19_2();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v58);
        OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v59, v60, "No persistent variable values changed during this turn");
        OUTLINED_FUNCTION_18();
        MEMORY[0x1E12A8390]();
      }

      __swift_destroy_boxed_opaque_existential_1Tm((v1 + 16));
LABEL_31:
      v61 = *(v1 + 8);
      OUTLINED_FUNCTION_33_5();

      __asm { BRAA            X1, X16 }
    }

    v12 = sub_1DD0DDE9C();
    v13 = 0;
    v15 = v11 + 64;
    v14 = *(v11 + 64);
    v16 = *(v11 + 32);
    OUTLINED_FUNCTION_5_20();
    v19 = v18 & v17;
    OUTLINED_FUNCTION_74_4();
    v21 = v20 >> 6;
    v79 = v1;
    v80 = v20 >> 6;
LABEL_7:
    *(v1 + 248) = v12;
    if (v19)
    {
      goto LABEL_12;
    }

LABEL_8:
    v22 = v13 + 1;
    if (!__OFADD__(v13, 1))
    {
      break;
    }

    __break(1u);
LABEL_42:
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  if (v22 >= v21)
  {

    *(v1 + 232) = sub_1DCC517F0(v46, sub_1DCE19F88, sub_1DCC5D4F0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2758, &unk_1DD0E6880);
    sub_1DCC5DEBC(&qword_1EDE46280, &qword_1ECCA2758, &unk_1DD0E6880);
    v47 = sub_1DD0DDF6C();
    v49 = v48;

    v50 = sub_1DD0DD8EC();
    v51 = sub_1DD0DE6DC();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = OUTLINED_FUNCTION_151();
      v53 = OUTLINED_FUNCTION_83();
      v83 = v53;
      *v52 = 136315138;
      sub_1DCB10E9C(v47, v49, &v83);
      OUTLINED_FUNCTION_94_2();

      *(v52 + 4) = v47;
      OUTLINED_FUNCTION_103_3(&dword_1DCAFC000, v50, v51, "Calling handler to save persistent values for variables %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v53);
      OUTLINED_FUNCTION_18();
      MEMORY[0x1E12A8390]();
      v54 = OUTLINED_FUNCTION_11_3();
      MEMORY[0x1E12A8390](v54);
    }

    else
    {
    }

    v64 = *(v1 + 240);
    v65 = *(v1 + 48);
    __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
    v67 = v64[8];
    v66 = v64[9];
    v68 = v1;
    v70 = v64[10];
    v69 = v64[11];
    v71 = v64[12];
    v68[12] = v67;
    v68[13] = v66;
    v68[14] = v70;
    v68[15] = v69;
    v68[16] = v71;
    v72 = *(v65 + 8);

    v73 = v70;

    v81 = v72 + *v72;
    v74 = v72[1];
    v75 = swift_task_alloc();
    v68[32] = v75;
    *v75 = v68;
    v75[1] = sub_1DCC56A10;
    OUTLINED_FUNCTION_33_5();

    __asm { BRAA            X4, X16 }
  }

  v19 = *(v15 + 8 * v22);
  ++v13;
  if (!v19)
  {
    goto LABEL_8;
  }

  v13 = v22;
LABEL_12:
  v23 = __clz(__rbit64(v19));
  v19 &= v19 - 1;
  v24 = v23 | (v13 << 6);
  v25 = (*(v11 + 48) + 16 * v24);
  v26 = *v25;
  v27 = v25[1];
  v28 = *(*(v11 + 56) + 8 * v24);

  v82 = v28;
  if (![v82 value])
  {
    v37 = sub_1DCB21038(v26, v27);
    v39 = v38;

    if (v39)
    {
      swift_isUniquelyReferenced_nonNull_native();
      v83 = v12;
      v40 = v12[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2750, &qword_1DD0E6878);
      v21 = v80;
      sub_1DD0DEDCC();
      v12 = v83;
      v41 = *(v83[6] + 16 * v37 + 8);

      sub_1DCB20B30((v83[7] + 32 * v37), (v1 + 168));
      sub_1DD0DEDEC();
    }

    else
    {

      *(v1 + 184) = 0u;
      *(v1 + 168) = 0u;
    }

    sub_1DCB16D50(v1 + 168, &dword_1ECCA3CE0, &unk_1DD0E4F80);
    goto LABEL_7;
  }

  sub_1DD0DEA6C();
  swift_unknownObjectRelease();
  sub_1DCB20B30((v1 + 136), (v1 + 200));
  swift_isUniquelyReferenced_nonNull_native();
  v83 = v12;
  v29 = v26;
  v30 = sub_1DCB21038(v26, v27);
  if (__OFADD__(v12[2], (v31 & 1) == 0))
  {
    __break(1u);
    goto LABEL_44;
  }

  v32 = v30;
  v33 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2750, &qword_1DD0E6878);
  if ((sub_1DD0DEDCC() & 1) == 0)
  {
    goto LABEL_17;
  }

  v34 = sub_1DCB21038(v29, v27);
  if ((v33 & 1) == (v35 & 1))
  {
    v32 = v34;
LABEL_17:
    v21 = v80;
    if (v33)
    {

      v12 = v83;
      v36 = (v83[7] + 32 * v32);
      __swift_destroy_boxed_opaque_existential_1Tm(v36);
      v1 = v79;
      sub_1DCB20B30((v79 + 200), v36);

      v15 = v11 + 64;
      goto LABEL_7;
    }

    v12 = v83;
    v83[(v32 >> 6) + 8] |= 1 << v32;
    v42 = (v12[6] + 16 * v32);
    *v42 = v29;
    v42[1] = v27;
    v1 = v79;
    sub_1DCB20B30((v79 + 200), (v12[7] + 32 * v32));

    v43 = v12[2];
    v44 = __OFADD__(v43, 1);
    v45 = v43 + 1;
    if (!v44)
    {
      v12[2] = v45;
      v15 = v11 + 64;
      goto LABEL_7;
    }

LABEL_44:
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_33_5();

    sub_1DD0DF12C();
  }
}

uint64_t sub_1DCC56A10()
{
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  v2 = *(*v0 + 256);
  v3 = *(*v0 + 248);
  v4 = *v0;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  v6 = v1[13];
  v7 = v1[14];
  v8 = v1[16];

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1DCC56B70()
{
  v1 = *v0;
  v2 = sub_1DD0DD85C();
  v3 = OUTLINED_FUNCTION_9(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  OUTLINED_FUNCTION_16();
  if (qword_1EDE4EC80 != -1)
  {
    OUTLINED_FUNCTION_14_5();
  }

  v7 = sub_1DD0DD88C();
  __swift_project_value_buffer(v7, qword_1EDE57DD0);
  sub_1DD0DCF8C();
}

void sub_1DCC56CC0(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  if ([v3 isActive])
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v4 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v4, qword_1EDE57E00);
    v5 = sub_1DD0DD8EC();
    v6 = sub_1DD0DE6EC();
    v7 = OUTLINED_FUNCTION_19_2();
    if (os_log_type_enabled(v7, v8))
    {
      OUTLINED_FUNCTION_42_3();
      v9 = swift_slowAlloc();
      OUTLINED_FUNCTION_35_9();
      v16 = swift_slowAlloc();
      *v9 = 136315394;
      v10 = sub_1DD0DF2AC();
      v12 = sub_1DCB10E9C(v10, v11, &v16);

      *(v9 + 4) = v12;
      *(v9 + 12) = 2080;
      *(v9 + 14) = sub_1DCB10E9C(0x756C615674697865, 0xEB00000000292865, &v16);
      _os_log_impl(&dword_1DCAFC000, v5, v6, "%s.%s called while engine is still active.", v9, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_18();
      MEMORY[0x1E12A8390]();
      v13 = OUTLINED_FUNCTION_11_3();
      MEMORY[0x1E12A8390](v13);
    }
  }

  v14 = [v3 getExitValue];
  v15 = sub_1DD0DDE6C();

  *a2 = v15;
}

id sub_1DCC56E98()
{
  if (v0[12])
  {
    v1 = v0[11];
    v2 = v0[2];
    v3 = sub_1DD0DDF8C();
    v4 = v0[8];
    v5 = v0[9];
    v6 = sub_1DD0DDF8C();
    v7 = [v2 load:v3 withFlowId:v6];
  }

  else
  {
    v8 = v0[2];
    v9 = v0[9];
    v10 = v0[10];
    v11 = v0[8];
    v6 = sub_1DD0DDF8C();
    v7 = [v8 load:v10 withId:v6];
  }

  return v7;
}

uint64_t sub_1DCC56F3C()
{
  OUTLINED_FUNCTION_39();
  *(v0 + 48) = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 56) = v2;
  *v2 = v3;
  v2[1] = sub_1DCC56FDC;
  OUTLINED_FUNCTION_62_1();

  return sub_1DCC5725C(v4, v5);
}

uint64_t sub_1DCC56FDC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v5 = *(v4 + 56);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v12();
  }
}

uint64_t sub_1DCC570F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_145();
  a17 = v20;
  a18 = v21;
  OUTLINED_FUNCTION_41();
  a16 = v18;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v22 = v18[8];
  v23 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v23, qword_1EDE57E00);
  v24 = v22;
  v25 = sub_1DD0DD8EC();
  sub_1DD0DE6DC();

  if (OUTLINED_FUNCTION_86_4())
  {
    v26 = v18[8];
    OUTLINED_FUNCTION_151();
    OUTLINED_FUNCTION_52_0();
    OUTLINED_FUNCTION_93();
    *v22 = 136315138;
    swift_getErrorValue();
    v28 = v18[2];
    v27 = v18[3];
    v29 = v18[4];
    v30 = sub_1DD0DF18C();
    v32 = sub_1DCB10E9C(v30, v31, &a10);

    *(v22 + 1) = v32;
    OUTLINED_FUNCTION_22_1();
    _os_log_impl(v33, v34, v35, v36, v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
  }

  v38 = v18[6];
  *v38 = v18[8];
  *(v38 + 8) = 0;
  *(v38 + 88) = 3;
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_48();

  return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10);
}

uint64_t sub_1DCC5725C(uint64_t a1, uint64_t a2)
{
  v3[42] = a2;
  v3[43] = v2;
  v3[41] = a1;
  v3[44] = *v2;
  return OUTLINED_FUNCTION_0_12(sub_1DCC572A0);
}

uint64_t sub_1DCC5765C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 392);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 400) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCC57B74()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 408);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 416) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCC5808C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 432);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  v3[55] = v0;

  if (v0)
  {
    v9 = v3[53];

    v10 = OUTLINED_FUNCTION_15_0();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }

  else
  {
    v13 = swift_task_alloc();
    v3[56] = v13;
    *v13 = v7;
    v13[1] = sub_1DCC581E0;
    v14 = v3[43];

    return sub_1DCC561FC();
  }
}

uint64_t sub_1DCC581E0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 448);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCC582C4()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 424);
  v2 = *(v0 + 328);

  sub_1DCC5CE90((v0 + 16));
  v3 = *(v0 + 320);
  v4 = *(v0 + 304);
  *v2 = *(v0 + 288);
  *(v2 + 16) = v4;
  *(v2 + 32) = v3;
  sub_1DCAFF9E8((v0 + 248), v2 + 40);
  *(v2 + 80) = v1;
  *(v2 + 88) = 0;
  OUTLINED_FUNCTION_43();

  return v5();
}

uint64_t sub_1DCC58350()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 456);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  v3[58] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = swift_task_alloc();
    v3[59] = v12;
    *v12 = v7;
    v12[1] = sub_1DCC584A0;
    v13 = v3[43];

    return sub_1DCC561FC();
  }
}

uint64_t sub_1DCC584A0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 472);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCC58584()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 328);

  sub_1DCC5CE90((v0 + 16));
  v2 = *(v0 + 240);
  v3 = *(v0 + 224);
  *v1 = *(v0 + 208);
  *(v1 + 16) = v3;
  *(v1 + 32) = v2;
  *(v1 + 88) = 1;
  OUTLINED_FUNCTION_43();

  return v4();
}

uint64_t sub_1DCC58600()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 480);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCC586E4()
{
  OUTLINED_FUNCTION_41();
  v41 = v0;
  v2 = [*(v0[43] + 16) getRemainingResponses];
  sub_1DCB10E5C(0, &qword_1ECCA2740, 0x1E69A8E00);
  OUTLINED_FUNCTION_75_0();
  v3 = sub_1DD0DE2EC();
  v0[61] = v3;

  v4 = sub_1DCB08B14(v3);
  v5 = v0[45];
  if (v4)
  {
    swift_bridgeObjectRetain_n();
    v6 = sub_1DD0DD8EC();
    sub_1DD0DE6DC();
    v7 = OUTLINED_FUNCTION_19_2();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = v0[44];
      v10 = OUTLINED_FUNCTION_83();
      OUTLINED_FUNCTION_35_9();
      v40 = swift_slowAlloc();
      *v10 = 136315650;
      v11 = OUTLINED_FUNCTION_105_4();
      sub_1DCB10E9C(v11, v12, &v40);
      OUTLINED_FUNCTION_92_1();
      *(v10 + 4) = v1;
      *(v10 + 12) = 2080;
      OUTLINED_FUNCTION_57_0();
      *(v10 + 14) = sub_1DCB10E9C(0xD00000000000001DLL, v13, &v40);
      *(v10 + 22) = 2048;
      v14 = sub_1DCB08B14(v3);

      *(v10 + 24) = v14;

      OUTLINED_FUNCTION_68_5();
      _os_log_impl(v15, v16, v17, v18, v19, 0x20u);
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_18();
      MEMORY[0x1E12A8390](v20);
      OUTLINED_FUNCTION_18();
      MEMORY[0x1E12A8390](v21);
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_45();
    v0[63] = v35;
    *v35 = v36;
    v35[1] = sub_1DCC58A8C;
    v37 = v0[43];
    v38 = v0[41];
    OUTLINED_FUNCTION_62_1();
    OUTLINED_FUNCTION_121();

    return sub_1DCC5725C();
  }

  else
  {

    v22 = sub_1DD0DD8EC();
    sub_1DD0DE6DC();
    v23 = OUTLINED_FUNCTION_19_2();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v25);
      OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v26, v27, "Finished processing responses. Returning complete");
      OUTLINED_FUNCTION_18();
      MEMORY[0x1E12A8390]();
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_45();
    v0[62] = v28;
    *v28 = v29;
    v28[1] = sub_1DCC589AC;
    v30 = v0[43];
    v31 = v0[41];
    OUTLINED_FUNCTION_121();

    return sub_1DCC5B740(v32);
  }
}

uint64_t sub_1DCC589AC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 496);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  OUTLINED_FUNCTION_43();

  return v5();
}

uint64_t sub_1DCC58A8C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 504);
  v3 = *(v1 + 488);
  v4 = *v0;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  OUTLINED_FUNCTION_29();

  return v6();
}

uint64_t sub_1DCC58B88()
{
  OUTLINED_FUNCTION_42();

  v1 = *(v0 + 400);
  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1DCC58BE4()
{
  OUTLINED_FUNCTION_42();

  v1 = *(v0 + 416);
  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1DCC58C40()
{
  OUTLINED_FUNCTION_42();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 248));
  sub_1DCC5CE90((v0 + 16));
  v1 = *(v0 + 440);
  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1DCC58CAC()
{
  OUTLINED_FUNCTION_42();

  sub_1DCC5CE90((v0 + 16));
  v1 = *(v0 + 464);
  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1DCC58D10()
{
  OUTLINED_FUNCTION_42();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v1[5] = *v0;
  v4 = *(*(type metadata accessor for PresentationElements(0) - 8) + 64);
  v1[6] = OUTLINED_FUNCTION_38();
  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCC58DB8()
{
  v36 = v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v2 = *(v0 + 24);
  v3 = sub_1DD0DD8FC();
  *(v0 + 56) = OUTLINED_FUNCTION_92(v3, qword_1EDE57E00);
  v4 = v2;
  v5 = sub_1DD0DD8EC();
  v6 = sub_1DD0DE6DC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 40);
    v8 = *(v0 + 24);
    v9 = OUTLINED_FUNCTION_83();
    v34 = swift_slowAlloc();
    *v9 = 136315650;
    v10 = OUTLINED_FUNCTION_105_4();
    sub_1DCB10E9C(v10, v11, &v34);
    OUTLINED_FUNCTION_92_1();
    *(v9 + 4) = v1;
    *(v9 + 12) = 2080;
    OUTLINED_FUNCTION_57_0();
    *(v9 + 14) = sub_1DCB10E9C(0xD000000000000020, v12, &v34);
    *(v9 + 22) = 2080;
    v13 = [v8 patternId];
    sub_1DD0DDFBC();
    OUTLINED_FUNCTION_61_4();

    v16 = OUTLINED_FUNCTION_87_3(v14, v15, &v34);

    *(v9 + 24) = v16;
    OUTLINED_FUNCTION_13_12();
    _os_log_impl(v17, v18, v19, v20, v21, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
  }

  v22 = [*(v0 + 24) dialogPhase];
  sub_1DD0DDFBC();
  OUTLINED_FUNCTION_84_3();
  v23 = OUTLINED_FUNCTION_20();
  sub_1DCCE6DBC(v23, v24, v25);

  v26 = v35;
  if (v35)
  {
    v27 = v34;
  }

  else
  {
    if (qword_1EDE4EBA8 != -1)
    {
      swift_once();
    }

    v27 = qword_1EDE4EBB0;
  }

  *(v0 + 64) = v27;
  *(v0 + 72) = v26;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 80) = v28;
  *v28 = v29;
  v28[1] = sub_1DCC59060;
  v30 = *(v0 + 48);
  v31 = *(v0 + 24);
  v32 = *(v0 + 32);

  return sub_1DCC5A924(v30, v31);
}

uint64_t sub_1DCC59060()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 88) = v0;

  if (v0)
  {
    v9 = *(v3 + 72);
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DCC59160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_100();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_51_4();
  a22 = v24;
  v27 = *(*(v24 + 32) + 16);
  v28 = [*(v24 + 24) inputGroupId];
  if (!v28)
  {
    sub_1DD0DDFBC();
    v28 = sub_1DD0DDF8C();
  }

  v29 = [v27 getInputGroup_];

  if (v29)
  {
    v30 = *(v24 + 88);
    v31 = *(v24 + 72);
    v32 = *(v24 + 48);
    v34 = *(v24 + 24);
    v33 = *(v24 + 32);
    v35 = *(v33 + 176);
    a11 = *(v24 + 64);
    a12 = v31;
    [v29 listenAfterSpeaking];
    [v34 sensitiveData];
    [v29 immersiveExperience];
    OUTLINED_FUNCTION_92_2();
    v36 = swift_allocObject();
    v36[2] = v34;
    v36[3] = v29;
    v36[4] = v33;
    v37 = v34;
    v38 = v29;
    sub_1DD0DCF8C();
  }

  v39 = *(v24 + 56);
  v40 = sub_1DD0DD8EC();
  sub_1DD0DE6DC();
  v41 = OUTLINED_FUNCTION_19_2();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v43);
    OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v44, v45, "No input group found for DialogResponse. Will continue processing.");
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
  }

  v46 = *(v24 + 88);
  v48 = *(v24 + 64);
  v47 = *(v24 + 72);
  v49 = *(v24 + 48);
  v50 = *(v24 + 24);
  v51 = *(v24 + 32);

  v52 = *(v51 + 176);
  a11 = v48;
  a12 = v47;
  sub_1DCBB1498(&a11, v49, 0, [v50 sensitiveData], 0, 0, 0);
  sub_1DCC5DD68(v49);

  if (v46)
  {
    v53 = *(v24 + 48);

    OUTLINED_FUNCTION_29();
  }

  else
  {
    v54 = *(v24 + 16);
    *v54 = 0;
    v54[1] = 0;
    v54[2] = 0;
    v54[3] = 1;
    v54[4] = 0;
    v54[5] = 0;
    v55 = *(v24 + 48);

    OUTLINED_FUNCTION_43();
  }

  OUTLINED_FUNCTION_73();

  return v57(v56, v57, v58, v59, v60, v61, v62, v63, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1DCC59424()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 88);
  v2 = *(v0 + 48);

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCC59480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a3;
  v4[14] = a4;
  v4[11] = a1;
  v4[12] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCC594A4, 0, 0);
}

uint64_t sub_1DCC594A4()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 112);
  v2 = [*(v0 + 96) response_id];
  sub_1DD0DDFBC();
  v4 = v3;

  *(v0 + 120) = v4;
  v5 = *(v1 + 120);
  v6 = [*(v1 + 16) getEvents];
  sub_1DCB10E5C(0, &qword_1ECCA2710, 0x1E69A8DE0);
  sub_1DCC5CE28();
  OUTLINED_FUNCTION_124();
  v7 = sub_1DD0DE57C();

  *(v0 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2720, &qword_1DD0E6858);
  *(v0 + 48) = OUTLINED_FUNCTION_34_9(&qword_1ECCA2728);
  *(v0 + 16) = v7;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 128) = v8;
  *v8 = v9;
  OUTLINED_FUNCTION_49_5(v8);

  return sub_1DCE06FC8();
}

uint64_t sub_1DCC595F8()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 128);
  v7 = *(v5 + 120);
  v8 = *v1;
  OUTLINED_FUNCTION_27();
  *v9 = v8;
  *(v3 + 136) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));
    OUTLINED_FUNCTION_29();

    return v13();
  }
}

void sub_1DCC5973C()
{
  OUTLINED_FUNCTION_41();
  v23 = v0;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v1 = v0[17];
  v2 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v2, qword_1EDE57E00);
  v3 = v1;
  v4 = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6EC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[17];
  if (v6)
  {
    v8 = OUTLINED_FUNCTION_151();
    v9 = OUTLINED_FUNCTION_83();
    v22 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v11 = v0[7];
    v10 = v0[8];
    v12 = v0[9];
    v13 = sub_1DD0DF18C();
    v15 = sub_1DCB10E9C(v13, v14, &v22);

    *(v8 + 4) = v15;
    _os_log_impl(&dword_1DCAFC000, v4, v5, "Unable to make SystemDialogAct: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    v16 = OUTLINED_FUNCTION_11_3();
    MEMORY[0x1E12A8390](v16);
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390](v17);
  }

  else
  {
  }

  v18 = v0[11];
  v19 = sub_1DD0DB6EC();
  __swift_storeEnumTagSinglePayload(v18, 1, 1, v19);
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_121();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1DCC598E8(uint64_t a1, uint64_t a2)
{
  v3[48] = a2;
  v3[49] = v2;
  v3[47] = a1;
  v3[50] = *v2;
  return OUTLINED_FUNCTION_0_12(sub_1DCC5992C);
}

uint64_t sub_1DCC5992C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_79();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_90();
  a20 = v22;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v25 = *(v22 + 384);
  v26 = sub_1DD0DD8FC();
  *(v22 + 408) = OUTLINED_FUNCTION_92(v26, qword_1EDE57E00);
  v27 = v25;
  v28 = sub_1DD0DD8EC();
  sub_1DD0DE6DC();

  v29 = &_OBJC_LABEL_PROTOCOL___SIRINLUSystemDialogAct;
  if (OUTLINED_FUNCTION_86_4())
  {
    v30 = *(v22 + 400);
    v31 = *(v22 + 384);
    v32 = OUTLINED_FUNCTION_83();
    a11 = swift_slowAlloc();
    *v32 = 136315650;
    v33 = sub_1DD0DF2AC();
    v35 = sub_1DCB10E9C(v33, v34, &a11);

    *(v32 + 4) = v35;
    *(v32 + 12) = 2080;
    *(v32 + 14) = sub_1DCB10E9C(0xD000000000000022, 0x80000001DD1157D0, &a11);
    *(v32 + 22) = 2080;
    v36 = [v31 name];
    sub_1DD0DDFBC();
    OUTLINED_FUNCTION_64_2();

    v29 = &_OBJC_LABEL_PROTOCOL___SIRINLUSystemDialogAct;
    sub_1DCB10E9C(2080, v35, &a11);
    OUTLINED_FUNCTION_88_4();
    *(v32 + 24) = v36;
    OUTLINED_FUNCTION_22_1();
    _os_log_impl(v37, v38, v39, v40, v41, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
  }

  v42 = *(*(v22 + 392) + 112);
  v43 = [*(v22 + 384) v29[83]];
  sub_1DD0DDFBC();

  v44 = OUTLINED_FUNCTION_124();
  sub_1DCC18004(v46, v44, v45, v42);

  if (*(v22 + 320))
  {
    v47 = *(v22 + 384);
    sub_1DCAFF9E8((v22 + 296), v22 + 256);
    *(v22 + 416) = sub_1DCC6A4A0(0xD000000000000015, 0x80000001DD1157B0, MEMORY[0x1E69E7CC8]);
    v48 = *(v22 + 288);
    __swift_project_boxed_opaque_existential_1((v22 + 256), *(v22 + 280));
    v49 = [v47 parameters];
    *(v22 + 424) = sub_1DD0DDE6C();

    v50 = *(v48 + 16);
    OUTLINED_FUNCTION_25_1();
    v94 = v51 + *v51;
    v53 = *(v52 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_45();
    *(v22 + 432) = v54;
    *v54 = v55;
    v54[1] = sub_1DCC59E2C;
    OUTLINED_FUNCTION_76();

    return v60(v56, v57, v58, v59, v60, v61, v62, v63, a9, v94, a11, a12, a13, a14);
  }

  else
  {
    v65 = *(v22 + 384);
    sub_1DCB16D50(v22 + 296, &qword_1ECCA2730, &qword_1DD0E6860);
    v66 = v65;
    v67 = sub_1DD0DD8EC();
    v68 = sub_1DD0DE6DC();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = *(v22 + 384);
      OUTLINED_FUNCTION_42_3();
      v70 = swift_slowAlloc();
      OUTLINED_FUNCTION_35_9();
      a11 = swift_slowAlloc();
      *v70 = 136315394;
      v71 = [v69 response_id];
      sub_1DD0DDFBC();
      OUTLINED_FUNCTION_64_2();

      OUTLINED_FUNCTION_83_3(v72, v73);
      OUTLINED_FUNCTION_88_4();
      OUTLINED_FUNCTION_37_10();
      v74 = [v69 v29[83]];
      sub_1DD0DDFBC();
      OUTLINED_FUNCTION_61_4();

      v77 = OUTLINED_FUNCTION_87_3(v75, v76, &a11);

      *(v70 + 14) = v77;
      OUTLINED_FUNCTION_13_12();
      _os_log_impl(v78, v79, v80, v81, v82, 0x16u);
      OUTLINED_FUNCTION_60_1();
      OUTLINED_FUNCTION_18();
      MEMORY[0x1E12A8390]();
      OUTLINED_FUNCTION_18();
      MEMORY[0x1E12A8390]();
    }

    v83 = *(v22 + 384);
    v84 = *(v22 + 392);
    v85 = *(v22 + 376);
    *(v22 + 24) = 0;
    *(v22 + 32) = 0;
    *(v22 + 16) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 40) = 1;
    sub_1DCC5A3E4(v83, v22 + 16, v85);
    sub_1DCC5CE90((v22 + 16));
    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_76();

    return v87(v86, v87, v88, v89, v90, v91, v92, v93, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_1DCC59E2C()
{
  OUTLINED_FUNCTION_39();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_27();
  *v4 = v3;
  v5 = *(v2 + 432);
  *v4 = *v1;
  *(v3 + 440) = v0;

  v6 = *(v2 + 424);
  if (v0)
  {
    v7 = *(v3 + 416);
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DCC59F60()
{
  OUTLINED_FUNCTION_33();
  sub_1DCC5CEC0(v0 + 160, v0 + 208);
  switch(*(v0 + 248))
  {
    case 1:
      v59 = *(v0 + 408);
      sub_1DCAFF9E8((v0 + 208), v0 + 336);
      v60 = sub_1DD0DD8EC();
      sub_1DD0DE6DC();
      v61 = OUTLINED_FUNCTION_19_2();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v63);
        OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v64, v65, "BehaviorResponsHandler elected to execute a flow. Pushing and waiting for response.");
        OUTLINED_FUNCTION_18();
        MEMORY[0x1E12A8390]();
      }

      v66 = *(v0 + 384);

      v67 = [v66 inputGroupId];
      sub_1DD0DDFBC();
      OUTLINED_FUNCTION_84_3();

      OUTLINED_FUNCTION_24_10();
      if (v68)
      {
        v69 = *(v0 + 408);
        v70 = sub_1DD0DD8EC();
        sub_1DD0DE6EC();
        v71 = OUTLINED_FUNCTION_19_2();
        if (os_log_type_enabled(v71, v72))
        {
          v73 = OUTLINED_FUNCTION_50_0();
          OUTLINED_FUNCTION_46(v73);
          OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v74, v75, "BehaviorResponse defined an input group but is attempting to execute a Flow. InputGroup ignored.");
          OUTLINED_FUNCTION_18();
          MEMORY[0x1E12A8390]();
        }
      }

      v76 = *(v0 + 416);
      v78 = *(v0 + 368);
      v77 = *(v0 + 376);
      v79 = *(v0 + 360);
      __swift_project_boxed_opaque_existential_1((v0 + 336), v79);
      sub_1DCC05848(v79, v78, v77);
      sub_1DCC5CF1C(v0 + 160);
      v77[5] = v76;
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 336));
      break;
    case 2:
      v33 = *(v0 + 408);
      v32 = *(v0 + 416);

      v34 = *(v0 + 208);
      v35 = sub_1DD0DD8EC();
      sub_1DD0DE6DC();
      v36 = OUTLINED_FUNCTION_19_2();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_167(v38);
        OUTLINED_FUNCTION_15_8();
        _os_log_impl(v39, v40, v41, v42, v43, 2u);
        OUTLINED_FUNCTION_18();
        MEMORY[0x1E12A8390]();
      }

      v45 = *(v0 + 384);
      v44 = *(v0 + 392);
      v46 = *(v0 + 376);

      v47 = *(v44 + 16);
      sub_1DCDA0B44(v34);

      *(v0 + 64) = 0;
      *(v0 + 72) = 0;
      *(v0 + 80) = 0;
      *(v0 + 88) = 1;
      *(v0 + 96) = 0;
      *(v0 + 104) = 0;
      sub_1DCC5A3E4(v45, v0 + 64, v46);
      v48 = (v0 + 64);
      goto LABEL_17;
    case 3:
      v50 = *(v0 + 408);
      v49 = *(v0 + 416);

      v51 = sub_1DD0DD8EC();
      v52 = sub_1DD0DE6DC();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v53);
        OUTLINED_FUNCTION_20_2(&dword_1DCAFC000, v54, v55, "BehaviorResponsHandler is complete.");
        OUTLINED_FUNCTION_18();
        MEMORY[0x1E12A8390]();
      }

      v56 = *(v0 + 384);
      v57 = *(v0 + 392);
      v58 = *(v0 + 376);

      *(v0 + 112) = 0;
      *(v0 + 120) = 0;
      *(v0 + 128) = 0;
      *(v0 + 136) = 1;
      *(v0 + 144) = 0;
      *(v0 + 152) = 0;
      sub_1DCC5A3E4(v56, v0 + 112, v58);
      v48 = (v0 + 112);
LABEL_17:
      sub_1DCC5CE90(v48);
      sub_1DCC5CF1C(v0 + 160);
      break;
    default:
      v1 = *(v0 + 408);
      v2 = *(v0 + 208);
      v3 = *(v0 + 216);
      v4 = *(v0 + 224);
      v5 = sub_1DD0DD8EC();
      sub_1DD0DE6DC();
      v6 = OUTLINED_FUNCTION_19_2();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_97_0(v8);
        OUTLINED_FUNCTION_36_1(&dword_1DCAFC000, v9, v10, "BehaviorResponsHandler elected to execute a flow with DirectInvocation. Pushing and waiting for response.");
        v11 = OUTLINED_FUNCTION_11_3();
        MEMORY[0x1E12A8390](v11);
      }

      v12 = *(v0 + 384);

      v13 = [v12 inputGroupId];
      v14 = sub_1DD0DDFBC();
      v16 = v15;

      v17 = HIBYTE(v16) & 0xF;
      if ((v16 & 0x2000000000000000) == 0)
      {
        v17 = v14 & 0xFFFFFFFFFFFFLL;
      }

      if (v17)
      {
        v18 = *(v0 + 408);
        v19 = sub_1DD0DD8EC();
        sub_1DD0DE6EC();
        v20 = OUTLINED_FUNCTION_19_2();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = OUTLINED_FUNCTION_50_0();
          OUTLINED_FUNCTION_97_0(v22);
          OUTLINED_FUNCTION_36_1(&dword_1DCAFC000, v23, v24, "BehaviorResponse defined an input group but is attempting to execute a DirectAction. InputGroup ignored.");
          v25 = OUTLINED_FUNCTION_11_3();
          MEMORY[0x1E12A8390](v25);
        }
      }

      v26 = *(v0 + 416);
      v27 = *(v0 + 376);
      type metadata accessor for FlowLocatorWrapper();
      swift_allocObject();
      v28 = OUTLINED_FUNCTION_20();
      v31 = sub_1DCC5DBE0(v28, v29, v4, v30);
      v27[3] = type metadata accessor for DirectInvocationExecutingFlow();
      v27[4] = &off_1EECFCB70;
      *v27 = v31;
      sub_1DCC5CF1C(v0 + 160);
      v27[5] = v26;
      break;
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 256));
  OUTLINED_FUNCTION_43();

  return v80();
}

uint64_t sub_1DCC5A388()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 256));
  OUTLINED_FUNCTION_29();
  v2 = *(v0 + 440);

  return v1();
}

uint64_t sub_1DCC5A3E4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v9 = *(v3 + 16);
  v10 = [a1 inputGroupId];
  if (!v10)
  {
    sub_1DD0DDFBC();
    v10 = sub_1DD0DDF8C();
  }

  v11 = [v9 getInputGroup_];

  if (v11)
  {
    v12 = *(v3 + 176);
    [v11 listenAfterSpeaking];
    OUTLINED_FUNCTION_92_2();
    v13 = swift_allocObject();
    v13[2] = a1;
    v13[3] = v11;
    v13[4] = v3;
    v14 = a1;
    v15 = v11;
    sub_1DD0DCF8C();
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v16 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v16, qword_1EDE57E00);
  v17 = a1;
  v18 = sub_1DD0DD8EC();
  v19 = sub_1DD0DE6DC();

  if (os_log_type_enabled(v18, v19))
  {
    OUTLINED_FUNCTION_151();
    OUTLINED_FUNCTION_52_0();
    OUTLINED_FUNCTION_93();
    MEMORY[0] = 136315138;
    v20 = [v17 response_id];
    sub_1DD0DDFBC();
    OUTLINED_FUNCTION_64_2();

    sub_1DCB10E9C(v4, v5, &v22);
    OUTLINED_FUNCTION_88_4();
    MEMORY[4] = v20;
    _os_log_impl(&dword_1DCAFC000, v18, v19, "No input group found for behaviorResponse %s", 0, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
  }

  return sub_1DCC5CD58(a2, a3);
}

uint64_t sub_1DCC5A668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a3;
  v4[14] = a4;
  v4[11] = a1;
  v4[12] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCC5A68C, 0, 0);
}

uint64_t sub_1DCC5A68C()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 112);
  v2 = [*(v0 + 96) response_id];
  sub_1DD0DDFBC();
  v4 = v3;

  *(v0 + 120) = v4;
  v5 = *(v1 + 120);
  v6 = [*(v1 + 16) getEvents];
  sub_1DCB10E5C(0, &qword_1ECCA2710, 0x1E69A8DE0);
  sub_1DCC5CE28();
  OUTLINED_FUNCTION_124();
  v7 = sub_1DD0DE57C();

  *(v0 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2720, &qword_1DD0E6858);
  *(v0 + 48) = OUTLINED_FUNCTION_34_9(&qword_1ECCA2728);
  *(v0 + 16) = v7;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 128) = v8;
  *v8 = v9;
  OUTLINED_FUNCTION_49_5(v8);

  return sub_1DCE06FC8();
}

uint64_t sub_1DCC5A7E0()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 128);
  v7 = *(v5 + 120);
  v8 = *v1;
  OUTLINED_FUNCTION_27();
  *v9 = v8;
  *(v3 + 136) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));
    OUTLINED_FUNCTION_29();

    return v13();
  }
}

uint64_t sub_1DCC5A924(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_12(sub_1DCC5A940);
}

uint64_t sub_1DCC5A940()
{
  v3 = [*(v2 + 24) catId];
  sub_1DD0DDFBC();
  OUTLINED_FUNCTION_84_3();

  OUTLINED_FUNCTION_24_10();
  if (v4)
  {
    goto LABEL_3;
  }

  v5 = [*(v2 + 24) patternId];
  sub_1DD0DDFBC();
  OUTLINED_FUNCTION_84_3();

  OUTLINED_FUNCTION_24_10();
  if (v6 || (v60 = [*(v2 + 24) text], sub_1DD0DDFBC(), OUTLINED_FUNCTION_84_3(), , OUTLINED_FUNCTION_24_10(), !v61))
  {
LABEL_3:
    v7 = [*(v2 + 24) patternId];
    sub_1DD0DDFBC();
    OUTLINED_FUNCTION_84_3();

    v8 = v0 & 0xFFFFFFFFFFFFLL;
    if ((v1 & 0x2000000000000000) != 0)
    {
      v8 = HIBYTE(v1) & 0xF;
    }

    if (!v8)
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v35 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v35, qword_1EDE57E00);
      v36 = sub_1DD0DD8EC();
      sub_1DD0DE6DC();
      v37 = OUTLINED_FUNCTION_19_2();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v39);
        OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v40, v41, "Building PresentationElements from CAT");
        OUTLINED_FUNCTION_18();
        MEMORY[0x1E12A8390]();
      }

      v43 = *(v2 + 24);
      v42 = *(v2 + 32);

      v44 = v42[7];
      __swift_project_boxed_opaque_existential_1(v42 + 3, v42[6]);
      v45 = [v43 response_id];
      sub_1DD0DDFBC();
      v47 = v46;

      *(v2 + 40) = v47;
      v48 = [v43 catId];
      sub_1DD0DDFBC();
      v50 = v49;

      *(v2 + 48) = v50;
      v51 = [v43 catParameters];
      *(v2 + 56) = sub_1DD0DDE6C();

      v52 = [v43 visualParameters];
      *(v2 + 64) = sub_1DD0DDE6C();

      v53 = *(v44 + 8);
      OUTLINED_FUNCTION_24_0();
      v95 = v54 + *v54;
      v56 = *(v55 + 4);
      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      *(v2 + 72) = v57;
      *v57 = v58;
      v57[1] = sub_1DCC5B3DC;
      v59 = *(v2 + 16);

      __asm { BRAA            X8, X16 }
    }

    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v9 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v9, qword_1EDE57E00);
    v10 = sub_1DD0DD8EC();
    sub_1DD0DE6DC();
    v11 = OUTLINED_FUNCTION_19_2();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v13);
      OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v14, v15, "Building PresentationElements from Pattern");
      OUTLINED_FUNCTION_18();
      MEMORY[0x1E12A8390]();
    }

    v17 = *(v2 + 24);
    v16 = *(v2 + 32);

    v18 = v16[6];
    v19 = v16[7];
    __swift_project_boxed_opaque_existential_1(v16 + 3, v18);
    v20 = [v17 response_id];
    v21 = sub_1DD0DDFBC();
    v23 = v22;

    *(v2 + 88) = v23;
    v24 = [v17 patternId];
    sub_1DD0DDFBC();
    OUTLINED_FUNCTION_61_4();

    *(v2 + 96) = &_OBJC_LABEL_PROTOCOL___SIRINLUSystemDialogAct;
    v25 = [v17 patternParameters];
    v26 = sub_1DD0DDE6C();
    *(v2 + 104) = v26;

    v27 = *(v19 + 16);
    OUTLINED_FUNCTION_24_0();
    v96 = (v28 + *v28);
    v30 = *(v29 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_45();
    *(v2 + 112) = v31;
    *v31 = v32;
    v31[1] = sub_1DCC5B520;
    v33 = *(v2 + 16);

    return v96(v33, v21, v23, v20, &_OBJC_LABEL_PROTOCOL___SIRINLUSystemDialogAct, v26, v18, v19);
  }

  else
  {
    if (*(*(v2 + 32) + 184) != 1)
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
        v94 = *(v2 + 32);
      }

      v91 = *(v2 + 24);
      v92 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v92, qword_1EDE57E00);
      v93 = v91;
      OUTLINED_FUNCTION_94_2();
      sub_1DD0DCF8C();
    }

    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v62 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v62, qword_1EDE57E00);
    v63 = sub_1DD0DD8EC();
    sub_1DD0DE6DC();
    v64 = OUTLINED_FUNCTION_19_2();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v66);
      OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v67, v68, "DialogResponse does not have a configured pattern Id");
      OUTLINED_FUNCTION_18();
      MEMORY[0x1E12A8390]();
    }

    v69 = *(v2 + 24);

    v70 = [objc_allocWithZone(MEMORY[0x1E699A0C0]) init];
    v71 = [v69 text];
    if (!v71)
    {
      sub_1DD0DDFBC();
      v71 = sub_1DD0DDF8C();
    }

    v72 = *(v2 + 24);
    v73 = OUTLINED_FUNCTION_76_0();
    [v73 v74];

    v75 = [v72 text];
    if (!v75)
    {
      sub_1DD0DDFBC();
      v75 = sub_1DD0DDF8C();
    }

    v76 = *(v2 + 16);
    v77 = *(v2 + 24);
    v78 = OUTLINED_FUNCTION_76_0();
    [v78 v79];

    sub_1DD0DEC1C();

    v80 = [v77 text];
    sub_1DD0DDFBC();

    v81 = OUTLINED_FUNCTION_124();
    MEMORY[0x1E12A6780](v81);

    v82 = sub_1DD0DDF8C();
    [v70 setFullPrint_];

    v83 = sub_1DD0DDF8C();

    v84 = OUTLINED_FUNCTION_76_0();
    [v84 v85];

    v86 = [objc_allocWithZone(MEMORY[0x1E699A0C8]) init];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
    OUTLINED_FUNCTION_92_2();
    v87 = swift_allocObject();
    *(v87 + 16) = xmmword_1DD0E15D0;
    *(v87 + 32) = v70;
    v88 = sub_1DCB10E5C(0, &qword_1EDE46168, 0x1E699A0C0);
    v89 = v70;
    OUTLINED_FUNCTION_124();
    sub_1DD0DE2DC();
    OUTLINED_FUNCTION_94_2();

    [v86 setDialog_];

    *v76 = v86;
    type metadata accessor for PresentationElements.PresentationElementsBase(0);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_43();

    return v90();
  }
}

uint64_t sub_1DCC5B3DC()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  v3[10] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v13 = v3[7];
    v12 = v3[8];
    v16 = v3 + 5;
    v14 = v3[5];
    v15 = v16[1];

    OUTLINED_FUNCTION_43();

    return v17();
  }
}

uint64_t sub_1DCC5B520()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 112);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  v3[15] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v13 = v3[12];
    v12 = v3[13];
    v14 = v3[11];

    OUTLINED_FUNCTION_43();

    return v15();
  }
}

uint64_t sub_1DCC5B650()
{
  OUTLINED_FUNCTION_42();
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];

  v4 = v0[15];
  OUTLINED_FUNCTION_29();

  return v5();
}

uint64_t sub_1DCC5B6C0()
{
  OUTLINED_FUNCTION_39();
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];

  v5 = v0[10];
  OUTLINED_FUNCTION_29();

  return v6();
}

uint64_t sub_1DCC5B740(uint64_t a1)
{
  *(v2 + 128) = a1;
  *(v2 + 136) = v1;
  return OUTLINED_FUNCTION_0_12(sub_1DCC5B758);
}

uint64_t sub_1DCC5B758()
{
  v17 = v0;
  v1 = *(v0[17] + 16);
  v0[18] = v1;
  v2 = [v1 getUndo];
  if (v2)
  {
    v3 = v2;
    v4 = v0[17];
    v5 = [v2 identifier];
    v6 = sub_1DD0DDFBC();
    v8 = v7;

    v9 = [v3 userData];
    v10 = sub_1DD0DDE6C();

    v11 = *(v4 + 176);
    v16[0] = v6;
    v16[1] = v8;
    v16[2] = v10;
    sub_1DCBB20BC(v16);
  }

  v12 = *(v0[17] + 176);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[19] = v13;
  *v13 = v14;
  v13[1] = sub_1DCC5B8C8;

  return sub_1DCBB2154();
}

uint64_t sub_1DCC5B8C8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v5 = *(v4 + 152);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 160) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCC5B9C4()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 144);
  v2 = *(v0 + 72);
  *(v0 + 16) = *(v0 + 56);
  *(v0 + 32) = v2;
  *(v0 + 48) = *(v0 + 88);
  if ([v1 isActive])
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v3 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v3, qword_1EDE57E00);
    v4 = sub_1DD0DD8EC();
    sub_1DD0DE6DC();
    v5 = OUTLINED_FUNCTION_19_2();
    if (os_log_type_enabled(v5, v6))
    {
      *OUTLINED_FUNCTION_50_0() = 0;
      OUTLINED_FUNCTION_13_12();
      _os_log_impl(v7, v8, v9, v10, v11, 2u);
      v12 = 1;
LABEL_10:
      OUTLINED_FUNCTION_18();
      MEMORY[0x1E12A8390]();
      goto LABEL_12;
    }

    v12 = 1;
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v13 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v13, qword_1EDE57E00);
    v4 = sub_1DD0DD8EC();
    sub_1DD0DE6DC();
    v14 = OUTLINED_FUNCTION_19_2();
    v12 = 2;
    if (os_log_type_enabled(v14, v15))
    {
      *OUTLINED_FUNCTION_50_0() = 0;
      OUTLINED_FUNCTION_13_12();
      _os_log_impl(v16, v17, v18, v19, v20, 2u);
      goto LABEL_10;
    }
  }

LABEL_12:
  v21 = *(v0 + 128);

  v22 = *(v0 + 16);
  v23 = *(v0 + 32);
  *(v21 + 32) = *(v0 + 48);
  *v21 = v22;
  *(v21 + 16) = v23;
  *(*(v0 + 128) + 88) = v12;
  OUTLINED_FUNCTION_29();

  return v24();
}

uint64_t sub_1DCC5BB70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_145();
  a17 = v20;
  a18 = v21;
  OUTLINED_FUNCTION_41();
  a16 = v18;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v22 = v18[20];
  v23 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v23, qword_1EDE57E00);
  v24 = v22;
  v25 = sub_1DD0DD8EC();
  sub_1DD0DE6EC();

  if (OUTLINED_FUNCTION_86_4())
  {
    v26 = v18[20];
    OUTLINED_FUNCTION_151();
    OUTLINED_FUNCTION_52_0();
    OUTLINED_FUNCTION_93();
    *v22 = 136315138;
    swift_getErrorValue();
    v28 = v18[12];
    v27 = v18[13];
    v29 = v18[14];
    v30 = sub_1DD0DF18C();
    v32 = sub_1DCB10E9C(v30, v31, &a10);

    *(v22 + 1) = v32;
    OUTLINED_FUNCTION_22_1();
    _os_log_impl(v33, v34, v35, v36, v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
  }

  v38 = v18[16];
  *v38 = v18[20];
  *(v38 + 8) = 0;
  *(v18[16] + 88) = 3;
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_48();

  return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10);
}

unint64_t sub_1DCC5BCDC()
{
  v2 = *v0;
  v1 = v0[1];
  if (v0[5])
  {
    sub_1DD0DEC1C();

    strcpy(v7, ".unsupported(");
    HIWORD(v7[1]) = -4864;
    MEMORY[0x1E12A6780](v2, v1);
    MEMORY[0x1E12A6780](41, 0xE100000000000000);
    return v7[0];
  }

  else
  {
    v4 = v0[4];
    v6 = *(v0 + 1);
    sub_1DD0DEC1C();

    v5 = AuthoredFlowDescriptor.description.getter();
    MEMORY[0x1E12A6780](v5);

    MEMORY[0x1E12A6780](41, 0xE100000000000000);
    return 0xD000000000000012;
  }
}

uint64_t sub_1DCC5BE00()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));
  v1 = *(v0 + 72);
  v2 = *(v0 + 96);

  v3 = *(v0 + 104);

  v4 = *(v0 + 112);

  v5 = *(v0 + 120);

  v6 = *(v0 + 128);

  sub_1DCB16D50(v0 + 136, &qword_1ECCA26E0, &qword_1DD0E64F8);
  v7 = *(v0 + 176);

  return v0;
}

uint64_t sub_1DCC5BE94()
{
  sub_1DCC5BE00();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCC5BF54(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t (*a8)(uint64_t *, uint64_t, unint64_t))
{
  v24 = a2();
  v13 = v12;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v14 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v14, qword_1EDE57E00);
  sub_1DCB17CA0(a1, v27);

  v15 = sub_1DD0DD8EC();
  v16 = sub_1DD0DE6DC();

  if (os_log_type_enabled(v15, v16))
  {
    OUTLINED_FUNCTION_42_3();
    v17 = swift_slowAlloc();
    OUTLINED_FUNCTION_35_9();
    v28 = swift_slowAlloc();
    *v17 = 136315394;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v25[0] = swift_allocObject();
    sub_1DCB17CA0(v27, v25[0] + 16);
    __swift_project_boxed_opaque_existential_1(v25, v26);
    swift_getDynamicType();
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    v18 = sub_1DD0DF2AC();
    v20 = v19;
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    v21 = sub_1DCB10E9C(v18, v20, &v28);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2080;
    v22 = v24;
    *(v17 + 14) = sub_1DCB10E9C(v24, v13, &v28);
    _os_log_impl(&dword_1DCAFC000, v15, v16, "Mapping standard type %s to '%s'", v17, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    v22 = v24;
  }

  sub_1DCB17CA0(a1, v27);
  return a8(v27, v22, v13);
}