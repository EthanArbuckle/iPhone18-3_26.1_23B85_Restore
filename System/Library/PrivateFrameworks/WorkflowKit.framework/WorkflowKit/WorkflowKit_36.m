unint64_t sub_1CA5F8C80(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t a6)
{
  v53 = a6;
  v54 = a5;
  v51 = a1;
  v52 = a2;
  v63 = sub_1CA25B410();
  v60 = a3 & 0xFFFFFFFFFFFFFF8;
  v61 = a3 & 0xC000000000000001;
  v50 = a3;
  v59 = a3 + 32;
  v62 = a4;
  v8 = 0;
  v55 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  v10 = &unk_1EC4445A0;
  v11 = &qword_1CA983900;
  while (v8 != v63)
  {
    if (v61)
    {
      v12 = MEMORY[0x1CCAA22D0](v8, v50);
    }

    else
    {
      if (v8 >= *(v60 + 16))
      {
        goto LABEL_55;
      }

      v12 = *(v59 + 8 * v8);
    }

    v13 = v12;
    v14 = __OFADD__(v8, 1);
    v15 = v8 + 1;
    if (v14)
    {
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      v38 = MEMORY[0x1CCAA22D0](0, v9);
      goto LABEL_43;
    }

    v16 = v10;
    v17 = sub_1CA275DA8(v12);

    if (v17 >> 62)
    {
      v18 = sub_1CA94D328();
    }

    else
    {
      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v19 = v9 >> 62;
    if (v9 >> 62)
    {
      v20 = sub_1CA94D328();
    }

    else
    {
      v20 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v21 = v20 + v18;
    if (__OFADD__(v20, v18))
    {
      goto LABEL_56;
    }

    v65 = v15;
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v19)
      {
LABEL_19:
        sub_1CA94D328();
      }

      else
      {
        v22 = v9 & 0xFFFFFFFFFFFFFF8;
LABEL_18:
        v23 = *(v22 + 16);
      }

      v9 = sub_1CA94D488();
      v22 = v9 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_21;
    }

    if (v19)
    {
      goto LABEL_19;
    }

    v22 = v9 & 0xFFFFFFFFFFFFFF8;
    if (v21 > *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_18;
    }

LABEL_21:
    v24 = *(v22 + 16);
    v25 = (*(v22 + 24) >> 1) - v24;
    v26 = v22 + 8 * v24;
    v64 = v22;
    if (v17 >> 62)
    {
      v28 = sub_1CA94D328();
      if (!v28)
      {
        goto LABEL_35;
      }

      v29 = v28;
      v30 = sub_1CA94D328();
      if (v25 < v30)
      {
        goto LABEL_60;
      }

      if (v29 < 1)
      {
        goto LABEL_61;
      }

      v56 = v30;
      v57 = v18;
      v58 = v9;
      v31 = v26 + 32;
      sub_1CA276B44(&qword_1EC4445A8, v10, &qword_1CA983900);
      for (i = 0; i != v29; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(v10, &qword_1CA983900);
        v33 = sub_1CA276BDC(&v66, i, v17);
        v35 = *v34;
        v33(&v66, 0);
        *(v31 + 8 * i) = v35;
        v10 = v16;
      }

      v18 = v57;
      v9 = v58;
      v27 = v56;
LABEL_31:

      v8 = v65;
      if (v27 < v18)
      {
        goto LABEL_57;
      }

      if (v27 > 0)
      {
        v36 = *(v64 + 16);
        v14 = __OFADD__(v36, v27);
        v37 = v36 + v27;
        if (v14)
        {
          goto LABEL_58;
        }

        *(v64 + 16) = v37;
      }
    }

    else
    {
      v27 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v27)
      {
        if (v25 < v27)
        {
          goto LABEL_59;
        }

        sub_1CA25B3D0(0, &qword_1EDB9F6F8, 0x1E69E0AE0);
        swift_arrayInitWithCopy();
        goto LABEL_31;
      }

LABEL_35:

      v8 = v65;
      if (v18 > 0)
      {
        goto LABEL_57;
      }
    }
  }

  if (sub_1CA25B410())
  {
    sub_1CA275D70(0, (v9 & 0xC000000000000001) == 0, v9);
    v11 = v54;
    if ((v9 & 0xC000000000000001) != 0)
    {
      goto LABEL_62;
    }

    v38 = *(v9 + 32);
LABEL_43:
    v39 = v38;
    v40 = [v38 bundleIdentifier];

    v41 = sub_1CA94C3A8();
    v43 = v42;

    if (!v11)
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

  v43 = v52;
  v44 = sub_1CA94C218();
  v11 = v54;
  v41 = v51;
  if (!v54)
  {
    goto LABEL_47;
  }

LABEL_46:
  v66 = v41;
  v67 = v43;
  MEMORY[0x1EEE9AC00](v44);
  v49 = &v66;
  v44 = sub_1CA2BFD14(sub_1CA36DB00, v48, v11);
  if ((v44 & 1) == 0)
  {

    goto LABEL_51;
  }

LABEL_47:
  if (!*(v53 + 16))
  {
    goto LABEL_52;
  }

  v66 = v41;
  v67 = v43;
  MEMORY[0x1EEE9AC00](v44);
  v49 = &v66;
  v46 = sub_1CA2BFD14(sub_1CA2E9370, v48, v45);

  if (v46)
  {
    return v9;
  }

LABEL_51:
  v9 = MEMORY[0x1E69E7CC0];
LABEL_52:

  return v9;
}

uint64_t sub_1CA5F928C()
{
  OUTLINED_FUNCTION_0();
  v1[19] = v2;
  v1[20] = v0;
  sub_1CA94C838();
  v1[21] = sub_1CA94C828();
  v4 = sub_1CA94C7C8();
  v1[22] = v4;
  v1[23] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1CA5F9320, v4, v3);
}

uint64_t sub_1CA5F9320()
{
  OUTLINED_FUNCTION_39_1();
  v1 = *(*(v0 + 160) + OBJC_IVAR___WFSwiftAppShortcutDataSource_appShortcutsProvider);
  v2 = [*(v0 + 152) underlyingAutoShortcut];
  v3 = [v2 bundleIdentifier];

  if (!v3)
  {
    sub_1CA94C3A8();
    v3 = sub_1CA94C368();
  }

  *(v0 + 192) = v3;
  v4 = [*(v0 + 152) phrase];
  v5 = [v4 basePhraseTemplate];

  if (!v5)
  {
    sub_1CA94C3A8();
    v5 = sub_1CA94C368();
  }

  *(v0 + 200) = v5;
  v6 = [*(v0 + 152) underlyingAutoShortcut];
  v7 = [v6 actionIdentifier];

  if (!v7)
  {
    sub_1CA94C3A8();
    v7 = sub_1CA94C368();
  }

  *(v0 + 208) = v7;
  v8 = [*(v0 + 152) phrase];
  v9 = [v8 parameterIdentifier];

  v10 = sub_1CA948D28();
  OUTLINED_FUNCTION_1_0(v10);
  v12 = v11;
  v14 = *(v13 + 64) + 15;
  v15 = swift_task_alloc();
  if (v9)
  {
    sub_1CA948CF8();

    v9 = sub_1CA948CD8();
    (*(v12 + 8))(v15, v10);
  }

  *(v0 + 216) = v9;

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_1CA5F9640;
  v16 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4454E0, &unk_1CA987600);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1CA3CD588;
  *(v0 + 104) = &block_descriptor_31;
  *(v0 + 112) = v16;
  [v1 retrieveActionForBundleIdentifier:v3 basePhraseTemplate:v5 actionIdentifier:v7 parameterIdentifier:v9 completion:v0 + 80];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1CA5F9640()
{
  OUTLINED_FUNCTION_0();
  v1 = *v0;
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  *v3 = *v0;
  v5 = v4[6];
  *(v2 + 224) = v5;
  v6 = v4[23];
  v7 = v4[22];
  if (v5)
  {
    v8 = sub_1CA5F97F4;
  }

  else
  {
    v8 = sub_1CA5F9764;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1CA5F9764()
{
  v2 = v0[26];
  v1 = v0[27];
  v4 = v0[24];
  v3 = v0[25];
  v5 = v0[21];

  v6 = v0[18];

  OUTLINED_FUNCTION_2_4();

  return v7(v6);
}

uint64_t sub_1CA5F97F4()
{
  v1 = v0[27];
  v2 = v0[28];
  v4 = v0[25];
  v3 = v0[26];
  v5 = v0[24];
  v6 = v0[21];

  swift_willThrow();

  OUTLINED_FUNCTION_5();
  v8 = v0[28];

  return v7();
}

void sub_1CA5F9884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443850, &qword_1CA9815F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981310;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  v9 = sub_1CA948E58();
  v10 = OUTLINED_FUNCTION_1_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1_4();
  sub_1CA94C218();
  sub_1CA948DE8();
  sub_1CA948D48();
  (*(v12 + 8))(a1, v9);
  v15 = sub_1CA5F8928(inited);
  if (v28)
  {

    swift_setDeallocating();
    sub_1CA32E2F8();
  }

  else
  {
    v16 = v15;

    swift_setDeallocating();
    sub_1CA32E2F8();
    v17 = sub_1CA323E30(a1, a2, v16);

    if (v17)
    {
      v18 = sub_1CA25B410();
      for (i = 0; ; ++i)
      {
        if (v18 == i)
        {
          goto LABEL_20;
        }

        if ((v17 & 0xC000000000000001) != 0)
        {
          v20 = MEMORY[0x1CCAA22D0](i, v17);
        }

        else
        {
          if (i >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_22;
          }

          v20 = *(v17 + 8 * i + 32);
        }

        v21 = v20;
        if (__OFADD__(i, 1))
        {
          break;
        }

        v22 = [v20 id];
        v23 = sub_1CA94C3A8();
        v25 = v24;

        if (v23 == a3 && v25 == a4)
        {

LABEL_20:

          return;
        }

        v27 = sub_1CA94D7F8();

        if (v27)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
    }
  }
}

uint64_t sub_1CA5F9B38(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  *(v1 + 160) = a1;
  v2 = swift_task_alloc();
  *(v1 + 168) = v2;
  *v2 = v1;
  v2[1] = sub_1CA5F9C04;
  v3 = *MEMORY[0x1E69E9840];

  return sub_1CA5F928C();
}

uint64_t sub_1CA5F9C04()
{
  OUTLINED_FUNCTION_0();
  v12 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  OUTLINED_FUNCTION_1_1();
  *v4 = v3;
  v6 = *(v5 + 168);
  *v4 = *v1;
  *(v3 + 176) = v7;

  if (v0)
  {
    OUTLINED_FUNCTION_5();
    v9 = *MEMORY[0x1E69E9840];

    return v8();
  }

  else
  {
    v11 = *MEMORY[0x1E69E9840];

    return MEMORY[0x1EEE6DFA0](sub_1CA5F9D6C, 0, 0);
  }
}

uint64_t sub_1CA5F9D6C()
{
  OUTLINED_FUNCTION_39_1();
  v38 = *MEMORY[0x1E69E9840];
  v1 = v0[20];
  v2 = [v1 underlyingAutoShortcut];
  v3 = [v2 actionIdentifier];

  sub_1CA94C3A8();
  v4 = [v1 underlyingAutoShortcut];
  v5 = [v4 bundleIdentifier];

  sub_1CA94C3A8();
  v6 = objc_allocWithZone(MEMORY[0x1E69AC860]);
  v7 = sub_1CA334F5C();
  v0[23] = v7;
  v8 = [objc_allocWithZone(MEMORY[0x1E69ACF58]) initWithOptions_];
  v0[24] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1CA9813B0;
  *(v9 + 32) = v7;
  sub_1CA25B3D0(0, &qword_1EC446320, 0x1E69AC860);
  v10 = v7;
  v11 = sub_1CA94C648();

  v0[18] = 0;
  v12 = [v8 actionsWithFullyQualifiedIdentifiers:v11 error:v0 + 18];

  v13 = v0[18];
  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446328, qword_1CA98C970);
    v14 = sub_1CA94C1C8();
    v15 = v13;

    v16 = [v10 bundleIdentifier];
    v17 = sub_1CA94C3A8();
    v19 = v18;

    v20 = sub_1CA323E30(v17, v19, v14);

    if (v20)
    {
      v21 = [v10 actionIdentifier];
      v22 = sub_1CA94C3A8();
      v24 = v23;

      v25 = sub_1CA323E2C(v22, v24, v20);
      v0[25] = v25;

      if (v25)
      {
        v26 = v0[22];
        sub_1CA25B3D0(0, &qword_1EC4454E8, 0x1E69E0B98);
        v27 = sub_1CA5BB768(v10, v26, v25);
        v0[26] = v27;
        v28 = [objc_opt_self() defaultDatabase];
        v0[27] = v28;
        v0[2] = v0;
        v0[7] = v0 + 19;
        v0[3] = sub_1CA5FA264;
        v29 = swift_continuation_init();
        v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4454F0, qword_1CA98AEC0);
        v0[10] = MEMORY[0x1E69E9820];
        v0[11] = 1107296256;
        v0[12] = sub_1CA320A2C;
        v0[13] = &block_descriptor_7_0;
        v0[14] = v29;
        [v27 createWorkflowWithEnvironment:0 database:v28 completionHandler:v0 + 10];
        v30 = *MEMORY[0x1E69E9840];

        return MEMORY[0x1EEE6DEC8](v0 + 2);
      }
    }

    v31 = v0[22];
    sub_1CA5FB304();
    swift_allocError();
    v32 = v8;
    v8 = v31;
  }

  else
  {
    v33 = v0[22];
    v34 = v13;
    sub_1CA948AD8();

    v32 = v10;
    v10 = v33;
  }

  swift_willThrow();

  OUTLINED_FUNCTION_5();
  v36 = *MEMORY[0x1E69E9840];

  return v35();
}

uint64_t sub_1CA5FA264()
{
  OUTLINED_FUNCTION_0();
  v9 = *MEMORY[0x1E69E9840];
  v1 = *v0;
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  *v3 = *v0;
  v5 = *(v4 + 48);
  *(v2 + 224) = v5;
  if (v5)
  {
    v6 = sub_1CA5BB6A4;
  }

  else
  {
    v6 = sub_1CA5FA394;
  }

  v7 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1CA5FA394()
{
  OUTLINED_FUNCTION_39_1();
  v20 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 152);

  v2 = [v1 actions];
  sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
  v3 = sub_1CA94C658();

  if (sub_1CA25B410())
  {
    sub_1CA275D70(0, (v3 & 0xC000000000000001) == 0, v3);
    if ((v3 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1CCAA22D0](0, v3);
    }

    else
    {
      v4 = *(v3 + 32);
    }

    v5 = v4;
    v7 = *(v0 + 200);
    v6 = *(v0 + 208);
    v9 = *(v0 + 184);
    v8 = *(v0 + 192);

    OUTLINED_FUNCTION_2_4();
    v11 = *MEMORY[0x1E69E9840];

    return v10(v5);
  }

  else
  {
    v14 = *(v0 + 200);
    v13 = *(v0 + 208);
    v16 = *(v0 + 184);
    v15 = *(v0 + 192);
    v17 = *(v0 + 176);

    sub_1CA5FB304();
    swift_allocError();
    swift_willThrow();

    OUTLINED_FUNCTION_5();
    v19 = *MEMORY[0x1E69E9840];

    return v18();
  }
}

uint64_t sub_1CA5FA5A4()
{
  v0 = sub_1CA949F78();
  v1 = OUTLINED_FUNCTION_1_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = *MEMORY[0x1E69E1088];
  sub_1CA949C58();
  v10 = sub_1CA949F68();
  v11 = sub_1CA94CBF8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1CA256000, v10, v11, "App Shortcuts changed notification received, triggering update", v12, 2u);
    OUTLINED_FUNCTION_154();
    MEMORY[0x1CCAA4BF0]();
  }

  (*(v3 + 8))(v8, v0);
  OUTLINED_FUNCTION_55();
  return sub_1CA273D40(0xD000000000000022, v13);
}

id sub_1CA5FA86C(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v4 = sub_1CA94C368();

    v5 = [v3 initWithSystemImageNamed_];

    if (v5)
    {
    }
  }

  else
  {

    return 0;
  }

  return v5;
}

id AppShortcutDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AppShortcutDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppShortcutDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1CA5FAA58()
{
  OUTLINED_FUNCTION_0();
  v2 = *v1;
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v4 = OUTLINED_FUNCTION_6_1(v3);

  return sub_1CA5F9B38(v4);
}

uint64_t sub_1CA5FAAE0()
{
  OUTLINED_FUNCTION_0();
  v3 = v2;
  v4 = *(*v1 + 16);
  v8 = *v1;

  OUTLINED_FUNCTION_2_4();
  if (!v0)
  {
    v5 = v3;
  }

  return v6(v5);
}

uint64_t sub_1CA5FABD8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AppShortcutDataSource();
  result = sub_1CA949FE8();
  *a1 = result;
  return result;
}

id sub_1CA5FAC18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_1CA94C368();

  if (a4)
  {
    v12 = sub_1CA94C368();
  }

  else
  {
    v12 = 0;
  }

  v13 = [v7 initWithName:v11 subtitle:v12 icon:a5 badge:a6];

  return v13;
}

uint64_t sub_1CA5FACCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1CA94D7F8() & 1;
  }
}

void sub_1CA5FAE3C(unint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  sub_1CA94C218();
  sub_1CA5F8044(v5, a2);
  if (v2)
  {

    return;
  }

  if (v7)
  {
    sub_1CA25B410();
LABEL_5:

    return;
  }

  v8 = v6;
  v26 = a1;
  v9 = v6 + 1;
  if (!__OFADD__(v6, 1))
  {
    while (1)
    {
      v10 = v5 >> 62 ? sub_1CA94D328() : *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9 == v10)
      {
        goto LABEL_5;
      }

      if ((v5 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1CCAA22D0](v9, v5);
      }

      else
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_40;
        }

        if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_41;
        }

        v11 = *(v5 + 8 * v9 + 32);
      }

      v12 = v11;
      v27 = v11;
      MEMORY[0x1EEE9AC00](v11);
      v25[2] = &v27;
      v13 = sub_1CA2BFDC4(sub_1CA5FBA68, v25, a2);

      if ((v13 & 1) == 0)
      {
        if (v8 != v9)
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v14 = MEMORY[0x1CCAA22D0](v8, v5);
            v15 = MEMORY[0x1CCAA22D0](v9, v5);
          }

          else
          {
            if ((v8 & 0x8000000000000000) != 0)
            {
              goto LABEL_45;
            }

            v16 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v8 >= v16)
            {
              goto LABEL_46;
            }

            if (v9 >= v16)
            {
              goto LABEL_47;
            }

            v17 = *(v5 + 32 + 8 * v9);
            v14 = *(v5 + 32 + 8 * v8);
            v15 = v17;
          }

          v18 = v15;
          if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
          {
            v5 = sub_1CA436664(v5);
            v19 = (v5 >> 62) & 1;
          }

          else
          {
            LODWORD(v19) = 0;
          }

          v20 = v5 & 0xFFFFFFFFFFFFFF8;
          v21 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20);
          *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v18;

          if ((v5 & 0x8000000000000000) != 0 || v19)
          {
            v5 = sub_1CA436664(v5);
            v20 = v5 & 0xFFFFFFFFFFFFFF8;
            if ((v9 & 0x8000000000000000) != 0)
            {
LABEL_39:
              __break(1u);
LABEL_40:
              __break(1u);
LABEL_41:
              __break(1u);
LABEL_42:
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
              break;
            }
          }

          else if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_39;
          }

          if (v9 >= *(v20 + 16))
          {
            goto LABEL_44;
          }

          v22 = v20 + 8 * v9;
          v23 = *(v22 + 32);
          *(v22 + 32) = v14;

          *v26 = v5;
        }

        v24 = __OFADD__(v8++, 1);
        if (v24)
        {
          goto LABEL_43;
        }
      }

      v24 = __OFADD__(v9++, 1);
      if (v24)
      {
        goto LABEL_42;
      }
    }
  }

  __break(1u);
}

uint64_t sub_1CA5FB0D4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1CA5FAD74() & 1;
}

uint64_t sub_1CA5FB0F8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1CA5FADD8() & 1;
}

id sub_1CA5FB11C(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446348, qword_1CA98AFE0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v19 - v10;
  v12 = OBJC_IVAR___WFSwiftAppShortcutDataSource__collections;
  v21 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC446350, &qword_1CA98C930);
  sub_1CA94A068();
  (*(v8 + 32))(&a4[v12], v11, v7);
  *&a4[OBJC_IVAR___WFSwiftAppShortcutDataSource_appShortcutsProvider] = a1;
  *&a4[OBJC_IVAR___WFSwiftAppShortcutDataSource_organizationStyle] = a3;
  v13 = type metadata accessor for AppShortcutDataSource();
  v20.receiver = a4;
  v20.super_class = v13;
  swift_unknownObjectRetain();
  v14 = objc_msgSendSuper2(&v20, sel_init);
  v15 = objc_opt_self();
  v16 = v14;
  v17 = [v15 defaultCenter];
  [v17 addObserver:v16 selector:sel_appShortcutsChanged name:*MEMORY[0x1E69ACB40] object:0];

  swift_unknownObjectRelease();
  return v16;
}

unint64_t sub_1CA5FB304()
{
  result = qword_1EC447160;
  if (!qword_1EC447160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447160);
  }

  return result;
}

unint64_t sub_1CA5FB35C()
{
  result = qword_1EC447168;
  if (!qword_1EC447168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447168);
  }

  return result;
}

unint64_t sub_1CA5FB3B4()
{
  result = qword_1EC447170;
  if (!qword_1EC447170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447170);
  }

  return result;
}

unint64_t sub_1CA5FB410()
{
  result = qword_1EC446B48;
  if (!qword_1EC446B48)
  {
    sub_1CA25B3D0(255, &qword_1EDB9F6F8, 0x1E69E0AE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446B48);
  }

  return result;
}

unint64_t sub_1CA5FB478(uint64_t a1)
{
  result = sub_1CA5FB4A0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA5FB4A0()
{
  result = qword_1EC4426D0[0];
  if (!qword_1EC4426D0[0])
  {
    type metadata accessor for AppShortcutDataSource();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4426D0);
  }

  return result;
}

uint64_t dispatch thunk of AppShortcutDataSource.reloadWithReason(_:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_7();
  return (*(v3 + 168))();
}

uint64_t dispatch thunk of AppShortcutDataSource.fetchAppShortcuts(for:localeIdentifier:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_7();
  return (*(v3 + 176))();
}

uint64_t dispatch thunk of AppShortcutDataSource.lnAction(for:)()
{
  v2 = *v0;
  v3 = *MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_7();
  v5 = *(v4 + 184);
  v10 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v8 = OUTLINED_FUNCTION_6_1(v7);

  return v10(v8);
}

uint64_t dispatch thunk of AppShortcutDataSource.appShortcut(for:signature:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_7();
  return (*(v3 + 192))();
}

uint64_t dispatch thunk of AppShortcutDataSource.action(for:)()
{
  v2 = *v0;
  v3 = *MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_7();
  v5 = *(v4 + 200);
  v10 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v8 = OUTLINED_FUNCTION_6_1(v7);

  return v10(v8);
}

uint64_t sub_1CA5FB8A8()
{
  OUTLINED_FUNCTION_0();
  v2 = v1;
  v3 = *(*v0 + 16);
  v6 = *v0;

  OUTLINED_FUNCTION_2_4();

  return v4(v2);
}

_BYTE *storeEnumTagSinglePayload for AppShortcutDataSource.Error(_BYTE *result, int a2, int a3)
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

id sub_1CA5FBAE4()
{
  sub_1CA2ECC0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981370;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001ALL;
  *(inited + 48) = 0x80000001CA99DB90;
  *(inited + 64) = v1;
  *(inited + 72) = @"AppDefinition";
  v2 = @"ActionClass";
  v3 = @"AppDefinition";
  v4 = sub_1CA94C1E8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 80) = v4;
  *(inited + 104) = v5;
  *(inited + 112) = @"IconName";
  *(inited + 144) = v1;
  *(inited + 120) = 0xD000000000000013;
  *(inited + 128) = 0x80000001CA9D4650;
  v6 = @"IconName";
  *(inited + 152) = sub_1CA94C368();
  *(inited + 160) = 0xD000000000000017;
  *(inited + 168) = 0x80000001CA9D4670;
  *(inited + 184) = v1;
  *(inited + 192) = @"Output";
  v7 = @"Output";
  v8 = sub_1CA94C1E8();
  *(inited + 224) = v5;
  *(inited + 200) = v8;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA5FBD0C()
{
  v109 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813A0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000016;
  *(inited + 48) = 0x80000001CA9B55E0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v114 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v115 = v12;
  v13 = &v102 - v114;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v112 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v113 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v111 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v102 - v111;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v110 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  v108 = v23;
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Description";
  v107 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1CA981310;
  *(v24 + 32) = @"DescriptionSummary";
  v25 = @"Description";
  v26 = @"DescriptionSummary";
  v27 = sub_1CA94C438();
  v105 = v28;
  v29 = sub_1CA94C438();
  v31 = v30;
  *&v106 = &v102;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v102 - v114;
  sub_1CA948D98();
  v33 = [v112 bundleURL];
  MEMORY[0x1EEE9AC00](v33);
  v34 = &v102 - v111;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v36 = sub_1CA2F9F14(v27, v105, v29, v31, 0, 0, v32, v34);
  *(v24 + 64) = v110;
  *(v24 + 40) = v36;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v37 = v107;
  *(inited + 160) = sub_1CA6B3784();
  *(inited + 184) = v37;
  *(inited + 192) = @"InputPassthrough";
  v38 = MEMORY[0x1E69E6370];
  *(inited + 200) = 0;
  *(inited + 224) = v38;
  *(inited + 232) = @"LocallyProcessesData";
  *(inited + 240) = 1;
  *(inited + 264) = v38;
  *(inited + 272) = @"Name";
  v39 = @"InputPassthrough";
  v40 = @"LocallyProcessesData";
  v41 = @"Name";
  v42 = sub_1CA94C438();
  v105 = v43;
  *&v106 = v42;
  v44 = sub_1CA94C438();
  v46 = v45;
  v107 = &v102;
  MEMORY[0x1EEE9AC00](v44);
  v47 = &v102 - v114;
  sub_1CA948D98();
  v48 = v112;
  v49 = [v112 bundleURL];
  MEMORY[0x1EEE9AC00](v49);
  v50 = v111;
  sub_1CA948B68();

  v51 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 280) = sub_1CA2F9F14(v106, v105, v44, v46, 0, 0, v47, &v102 - v50);
  v52 = v110;
  *(inited + 304) = v110;
  *(inited + 312) = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v53 = swift_initStackObject();
  v106 = xmmword_1CA9813C0;
  *(v53 + 16) = xmmword_1CA9813C0;
  *(v53 + 32) = 0x656C7069746C754DLL;
  *(v53 + 40) = 0xE800000000000000;
  *(v53 + 48) = 1;
  *(v53 + 72) = MEMORY[0x1E69E6370];
  *(v53 + 80) = 0x614E74757074754FLL;
  *(v53 + 88) = 0xEA0000000000656DLL;
  v54 = @"Output";
  v55 = sub_1CA94C438();
  v104 = v56;
  v105 = v55;
  v57 = sub_1CA94C438();
  v103 = v58;
  v107 = &v102;
  MEMORY[0x1EEE9AC00](v57);
  v59 = &v102 - v114;
  sub_1CA948D98();
  v60 = [v48 bundleURL];
  MEMORY[0x1EEE9AC00](v60);
  sub_1CA948B68();

  v61 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v53 + 96) = sub_1CA2F9F14(v105, v104, v57, v103, 0, 0, v59, &v102 - v50);
  *(v53 + 120) = v52;
  *(v53 + 128) = 0x7365707954;
  *(v53 + 136) = 0xE500000000000000;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v53 + 168) = v107;
  *(v53 + 144) = &unk_1F4A09058;
  v62 = MEMORY[0x1E69E6158];
  v63 = sub_1CA94C1E8();
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 320) = v63;
  *(inited + 344) = v64;
  *(inited + 352) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v105 = swift_allocObject();
  *(v105 + 16) = xmmword_1CA9813B0;
  v104 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v65 = swift_initStackObject();
  *(v65 + 16) = v106;
  *(v65 + 32) = @"Class";
  *(v65 + 40) = 0xD000000000000011;
  *(v65 + 48) = 0x80000001CA99E620;
  *(v65 + 64) = v62;
  *(v65 + 72) = @"Key";
  *(v65 + 80) = 0xD000000000000010;
  *(v65 + 88) = 0x80000001CA9D4760;
  *(v65 + 104) = v62;
  *(v65 + 112) = @"Label";
  v66 = @"Parameters";
  v67 = @"Class";
  v68 = @"Key";
  v69 = @"Label";
  v70 = sub_1CA94C438();
  v103 = v71;
  v72 = sub_1CA94C438();
  v74 = v73;
  *&v106 = &v102;
  MEMORY[0x1EEE9AC00](v72);
  v75 = &v102 - v114;
  sub_1CA948D98();
  v76 = [v112 bundleURL];
  MEMORY[0x1EEE9AC00](v76);
  v77 = &v102 - v111;
  sub_1CA948B68();

  v78 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v79 = sub_1CA2F9F14(v70, v103, v72, v74, 0, 0, v75, v77);
  *(v65 + 144) = v110;
  *(v65 + 120) = v79;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v80 = sub_1CA2F864C();
  v81 = v105;
  *(v105 + 32) = v80;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 360) = v81;
  *(inited + 384) = v82;
  *(inited + 392) = @"ParameterSummary";
  v83 = @"ParameterSummary";
  v84 = sub_1CA94C438();
  v86 = v85;
  v87 = sub_1CA94C438();
  v89 = v88;
  v110 = &v102;
  MEMORY[0x1EEE9AC00](v87);
  v90 = &v102 - v114;
  sub_1CA948D98();
  v91 = [v112 bundleURL];
  MEMORY[0x1EEE9AC00](v91);
  v92 = &v102 - v111;
  sub_1CA948B68();

  v93 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v94 = sub_1CA2F9F14(v84, v86, v87, v89, 0, 0, v90, v92);
  v95 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v96 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 400) = v95;
  *(inited + 424) = v96;
  *(inited + 432) = @"RequiredResources";
  *(inited + 440) = &unk_1F4A09088;
  v97 = v107;
  *(inited + 464) = v107;
  *(inited + 472) = @"UserInterfaceClasses";
  v98 = @"RequiredResources";
  v99 = @"UserInterfaceClasses";
  *(inited + 480) = sub_1CA94C1E8();
  *(inited + 504) = v108;
  *(inited + 512) = @"UserInterfaces";
  *(inited + 544) = v97;
  *(inited + 520) = &unk_1F4A09138;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v100 = @"UserInterfaces";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA5FCA2C()
{
  v151 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000016;
  *(inited + 48) = 0x80000001CA9D4800;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v163 = sub_1CA94C438();
  v5 = v4;
  v6 = sub_1CA94C438();
  v8 = v7;
  v9 = sub_1CA948E58();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v166 = v11;
  v167 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = v147 - v167;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v13 = qword_1EDB9F690;
  v164 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v165 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v162 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = v147 - v162;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v163, v5, v6, v8, 0, 0, v12, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v163 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"Description";
  v161 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1CA981310;
  *(v21 + 32) = @"DescriptionSummary";
  v22 = @"Description";
  v23 = @"DescriptionSummary";
  v24 = sub_1CA94C438();
  v159 = v25;
  v26 = sub_1CA94C438();
  v28 = v27;
  v160 = v147;
  MEMORY[0x1EEE9AC00](v26);
  v29 = v147 - v167;
  sub_1CA948D98();
  v30 = [v13 bundleURL];
  MEMORY[0x1EEE9AC00](v30);
  v31 = v147 - v162;
  sub_1CA948B68();

  v32 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v33 = sub_1CA2F9F14(v24, v159, v26, v28, 0, 0, v29, v31);
  *(v21 + 64) = v163;
  *(v21 + 40) = v33;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v34 = v161;
  *(inited + 120) = sub_1CA6B3784();
  *(inited + 144) = v34;
  *(inited + 152) = @"IconColor";
  *(inited + 160) = 0x6F6769646E49;
  *(inited + 168) = 0xE600000000000000;
  v35 = MEMORY[0x1E69E6158];
  *(inited + 184) = MEMORY[0x1E69E6158];
  *(inited + 192) = @"IconSymbol";
  *(inited + 200) = 0xD000000000000015;
  *(inited + 208) = 0x80000001CA9D4870;
  *(inited + 224) = v35;
  *(inited + 232) = @"InputPassthrough";
  v36 = MEMORY[0x1E69E6370];
  *(inited + 240) = 1;
  *(inited + 264) = v36;
  *(inited + 272) = @"Name";
  v37 = @"IconColor";
  v38 = @"IconSymbol";
  v39 = @"InputPassthrough";
  v40 = @"Name";
  v41 = sub_1CA94C438();
  v43 = v42;
  v44 = sub_1CA94C438();
  v46 = v45;
  v161 = v147;
  MEMORY[0x1EEE9AC00](v44);
  v47 = v147 - v167;
  sub_1CA948D98();
  v48 = [v164 bundleURL];
  MEMORY[0x1EEE9AC00](v48);
  v49 = v147 - v162;
  sub_1CA948B68();

  v50 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 280) = sub_1CA2F9F14(v41, v43, v44, v46, 0, 0, v47, v49);
  *(inited + 304) = v163;
  *(inited + 312) = @"Parameters";
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v161 = swift_allocObject();
  *(v161 + 1) = xmmword_1CA981470;
  v160 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v51 = swift_initStackObject();
  v154 = xmmword_1CA981370;
  *(v51 + 16) = xmmword_1CA981370;
  v52 = @"Parameters";
  *(v51 + 32) = sub_1CA94C368();
  *(v51 + 40) = 0x7070416E65704FLL;
  *(v51 + 48) = 0xE700000000000000;
  v53 = MEMORY[0x1E69E6158];
  *(v51 + 64) = MEMORY[0x1E69E6158];
  *(v51 + 72) = @"Class";
  v148 = 0x80000001CA99B070;
  *(v51 + 80) = 0xD000000000000014;
  *(v51 + 88) = 0x80000001CA99B070;
  *(v51 + 104) = v53;
  *(v51 + 112) = @"Key";
  v149 = 0xD000000000000016;
  *(v51 + 120) = 0xD000000000000016;
  *(v51 + 128) = 0x80000001CA9D48D0;
  *(v51 + 144) = v53;
  *(v51 + 152) = @"Label";
  v54 = @"Class";
  v55 = @"Key";
  v56 = @"Label";
  v57 = v54;
  v58 = v55;
  v59 = v56;
  v153 = v57;
  v158 = v58;
  v159 = v59;
  v60 = sub_1CA94C438();
  v156 = v61;
  v62 = sub_1CA94C438();
  v64 = v63;
  v157 = v147;
  MEMORY[0x1EEE9AC00](v62);
  v65 = v147 - v167;
  sub_1CA948D98();
  v66 = [v164 bundleURL];
  MEMORY[0x1EEE9AC00](v66);
  v67 = v147 - v162;
  sub_1CA948B68();

  v68 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v69 = sub_1CA2F9F14(v60, v156, v62, v64, 0, 0, v65, v67);
  *(v51 + 184) = v163;
  *(v51 + 160) = v69;
  v147[1] = "electedApp)";
  *(v51 + 192) = sub_1CA94C368();
  *(v51 + 224) = MEMORY[0x1E69E6370];
  *(v51 + 200) = 1;
  _s3__C3KeyVMa_0(0);
  v157 = v70;
  v156 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v161[4] = sub_1CA2F864C();
  v71 = swift_initStackObject();
  *(v71 + 16) = v154;
  *(v71 + 32) = sub_1CA94C368();
  *(v71 + 40) = 0x7070416E65704FLL;
  *(v71 + 48) = 0xE700000000000000;
  v72 = MEMORY[0x1E69E6158];
  v73 = v153;
  *(v71 + 64) = MEMORY[0x1E69E6158];
  *(v71 + 72) = v73;
  v74 = v148;
  *(v71 + 80) = 0xD000000000000014;
  *(v71 + 88) = v74;
  *(v71 + 104) = v72;
  v75 = v72;
  *(v71 + 112) = v158;
  *(v71 + 120) = 0xD000000000000018;
  *(v71 + 128) = 0x80000001CA9D4910;
  v76 = v159;
  *(v71 + 144) = v75;
  *(v71 + 152) = v76;
  v77 = sub_1CA94C438();
  v147[0] = v78;
  v79 = sub_1CA94C438();
  v81 = v80;
  v148 = v147;
  MEMORY[0x1EEE9AC00](v79);
  v82 = v147 - v167;
  sub_1CA948D98();
  v83 = [v164 bundleURL];
  MEMORY[0x1EEE9AC00](v83);
  v84 = v147 - v162;
  sub_1CA948B68();

  v85 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v86 = sub_1CA2F9F14(v77, v147[0], v79, v81, 0, 0, v82, v84);
  *(v71 + 184) = v163;
  *(v71 + 160) = v86;
  *(v71 + 192) = sub_1CA94C368();
  *(v71 + 224) = MEMORY[0x1E69E6370];
  *(v71 + 200) = 1;
  sub_1CA94C1E8();
  v161[5] = sub_1CA2F864C();
  v87 = swift_allocObject();
  *(v87 + 16) = v154;
  v88 = v149;
  *(v87 + 32) = v153;
  *(v87 + 40) = v88;
  *(v87 + 48) = 0x80000001CA99C4A0;
  v89 = MEMORY[0x1E69E6158];
  *(v87 + 64) = MEMORY[0x1E69E6158];
  *(v87 + 72) = @"DefaultValue";
  *(v87 + 80) = 0xBDC2202B20BDC2;
  *(v87 + 88) = 0xA700000000000000;
  *(v87 + 104) = v89;
  *(v87 + 112) = @"Items";
  v155 = swift_allocObject();
  *(v155 + 16) = xmmword_1CA981360;
  v90 = @"DefaultValue";
  v91 = @"Items";
  v153 = sub_1CA94C438();
  v150 = v92;
  v93 = sub_1CA94C438();
  v149 = v94;
  *&v154 = v147;
  MEMORY[0x1EEE9AC00](v93);
  v95 = v147 - v167;
  sub_1CA948D98();
  v96 = v164;
  v97 = [v164 bundleURL];
  MEMORY[0x1EEE9AC00](v97);
  v152 = inited;
  v98 = v162;
  sub_1CA948B68();

  v99 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v100 = sub_1CA2F9F14(v153, v150, v93, v149, 0, 0, v95, v147 - v98);
  *(v155 + 32) = v100;
  v153 = sub_1CA94C438();
  v150 = v101;
  v149 = sub_1CA94C438();
  v103 = v102;
  *&v154 = v147;
  MEMORY[0x1EEE9AC00](v149);
  v104 = v147 - v167;
  sub_1CA948D98();
  v105 = [v96 bundleURL];
  MEMORY[0x1EEE9AC00](v105);
  sub_1CA948B68();

  v106 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v107 = sub_1CA2F9F14(v153, v150, v149, v103, 0, 0, v104, v147 - v98);
  v108 = v155;
  *(v155 + 40) = v107;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  *(v87 + 120) = v108;
  v110 = v158;
  *(v87 + 144) = v109;
  *(v87 + 152) = v110;
  *(v87 + 160) = 0x7461527070414657;
  *(v87 + 168) = 0xEA00000000006F69;
  v111 = v159;
  *(v87 + 184) = MEMORY[0x1E69E6158];
  *(v87 + 192) = v111;
  v112 = sub_1CA94C438();
  v158 = v113;
  v114 = sub_1CA94C438();
  v116 = v115;
  v159 = v147;
  MEMORY[0x1EEE9AC00](v114);
  v117 = v147 - v167;
  sub_1CA948D98();
  v118 = [v164 bundleURL];
  MEMORY[0x1EEE9AC00](v118);
  sub_1CA948B68();

  v119 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v120 = sub_1CA2F9F14(v112, v158, v114, v116, 0, 0, v117, v147 - v98);
  *(v87 + 224) = v163;
  *(v87 + 200) = v120;
  sub_1CA94C1E8();
  v121 = sub_1CA2F864C();
  v122 = v161;
  v161[6] = v121;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v124 = v152;
  *(v152 + 320) = v122;
  *(v124 + 344) = v123;
  *(v124 + 352) = @"ParameterSummary";
  v125 = @"ParameterSummary";
  v126 = sub_1CA94C438();
  v128 = v127;
  v129 = sub_1CA94C438();
  v131 = v130;
  v163 = v147;
  MEMORY[0x1EEE9AC00](v129);
  v132 = v147 - v167;
  sub_1CA948D98();
  v133 = [v164 bundleURL];
  MEMORY[0x1EEE9AC00](v133);
  sub_1CA948B68();

  v134 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v135 = sub_1CA2F9F14(v126, v128, v129, v131, 0, 0, v132, v147 - v98);
  v136 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v137 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v138 = v152;
  *(v152 + 360) = v136;
  *(v138 + 384) = v137;
  *(v138 + 392) = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438F0, &unk_1CA9819E0);
  v139 = swift_allocObject();
  *(v139 + 16) = xmmword_1CA97EDF0;
  *(v139 + 56) = MEMORY[0x1E69E6158];
  *(v139 + 32) = 0xD000000000000011;
  *(v139 + 40) = 0x80000001CA993BE0;
  v168 = 0;
  v169 = 1;
  v140 = type metadata accessor for WFDeviceIdiomResource();
  v141 = objc_allocWithZone(v140);
  v142 = @"RequiredResources";
  WFDeviceIdiomResource.init(requirement:)(&v168);
  *(v139 + 88) = v140;
  *(v139 + 64) = v143;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443838, &qword_1CA981588);
  *(v138 + 400) = v139;
  *(v138 + 424) = v144;
  *(v138 + 432) = @"RequiresUnlock";
  *(v138 + 464) = MEMORY[0x1E69E6370];
  *(v138 + 440) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v145 = @"RequiresUnlock";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA5FDCB0()
{
  v119 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981550;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000010;
  *(inited + 48) = 0x80000001CA99BD90;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v124 = v12;
  v122 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = v113 - v122;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v123 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v125 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v126 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = v113 - v126;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v121 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = MEMORY[0x1E69E6158];
  v23 = sub_1CA94C1E8();
  *(inited + 144) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v23;
  *(inited + 152) = sub_1CA94C368();
  *(inited + 160) = 0xD000000000000018;
  *(inited + 168) = 0x80000001CA997190;
  *(inited + 184) = v22;
  *(inited + 192) = @"Description";
  *&v120 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1CA981310;
  *(v24 + 32) = @"DescriptionSummary";
  v25 = @"Description";
  v26 = @"DescriptionSummary";
  v27 = sub_1CA94C438();
  v117 = v28;
  v29 = sub_1CA94C438();
  v31 = v30;
  v118 = v113;
  MEMORY[0x1EEE9AC00](v29);
  v32 = v113 - v122;
  sub_1CA948D98();
  v33 = [v123 bundleURL];
  MEMORY[0x1EEE9AC00](v33);
  v34 = v113 - v126;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v36 = sub_1CA2F9F14(v27, v117, v29, v31, 0, 0, v32, v34);
  *(v24 + 64) = v121;
  *(v24 + 40) = v36;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v37 = v120;
  *(inited + 200) = sub_1CA6B3784();
  *(inited + 224) = v37;
  *(inited + 232) = @"IconColor";
  *(inited + 240) = 0x6E65657247;
  *(inited + 248) = 0xE500000000000000;
  v38 = MEMORY[0x1E69E6158];
  *(inited + 264) = MEMORY[0x1E69E6158];
  *(inited + 272) = @"IconSymbol";
  *(inited + 280) = 0xD000000000000011;
  *(inited + 288) = 0x80000001CA9D4B10;
  *(inited + 304) = v38;
  *(inited + 312) = @"Input";
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v39 = swift_initStackObject();
  v120 = xmmword_1CA981350;
  *(v39 + 16) = xmmword_1CA981350;
  *(v39 + 32) = 0x656C7069746C754DLL;
  *(v39 + 40) = 0xE800000000000000;
  v40 = MEMORY[0x1E69E6370];
  *(v39 + 48) = 1;
  *(v39 + 72) = v40;
  strcpy((v39 + 80), "ParameterKey");
  *(v39 + 93) = 0;
  *(v39 + 94) = -5120;
  *(v39 + 96) = 0x7475706E494657;
  *(v39 + 104) = 0xE700000000000000;
  *(v39 + 120) = v38;
  *(v39 + 128) = 0x6465726975716552;
  *(v39 + 136) = 0xE800000000000000;
  *(v39 + 144) = 1;
  *(v39 + 168) = v40;
  *(v39 + 176) = 0x7365707954;
  v41 = v40;
  *(v39 + 184) = 0xE500000000000000;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v39 + 216) = v118;
  *(v39 + 192) = &unk_1F4A091B8;
  v42 = @"IconColor";
  v43 = @"IconSymbol";
  v44 = @"Input";
  v45 = sub_1CA94C1E8();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v117 = v46;
  *(inited + 320) = v45;
  *(inited + 344) = v46;
  *(inited + 352) = @"LocallyProcessesData";
  *(inited + 360) = 1;
  *(inited + 384) = v41;
  *(inited + 392) = @"Name";
  v47 = @"LocallyProcessesData";
  v48 = @"Name";
  v49 = sub_1CA94C438();
  v114 = v50;
  v51 = sub_1CA94C438();
  v53 = v52;
  v115 = v113;
  MEMORY[0x1EEE9AC00](v51);
  v54 = v122;
  sub_1CA948D98();
  v55 = [v123 bundleURL];
  MEMORY[0x1EEE9AC00](v55);
  v56 = v113 - v126;
  sub_1CA948B68();

  v57 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 400) = sub_1CA2F9F14(v49, v114, v51, v53, 0, 0, v113 - v54, v56);
  v58 = v121;
  *(inited + 424) = v121;
  *(inited + 432) = @"Output";
  v59 = swift_allocObject();
  *(v59 + 16) = v120;
  *(v59 + 32) = 0x75736F6C63736944;
  *(v59 + 40) = 0xEF6C6576654C6572;
  *(v59 + 48) = 0x63696C627550;
  *(v59 + 56) = 0xE600000000000000;
  *(v59 + 72) = MEMORY[0x1E69E6158];
  *(v59 + 80) = 0x656C7069746C754DLL;
  *(v59 + 88) = 0xE800000000000000;
  *(v59 + 96) = 1;
  *(v59 + 120) = MEMORY[0x1E69E6370];
  *(v59 + 128) = 0x614E74757074754FLL;
  *(v59 + 136) = 0xEA0000000000656DLL;
  v60 = @"Output";
  v61 = sub_1CA94C438();
  v114 = v62;
  v115 = v61;
  v63 = sub_1CA94C438();
  v65 = v64;
  v116 = v113;
  MEMORY[0x1EEE9AC00](v63);
  sub_1CA948D98();
  v66 = [v123 bundleURL];
  MEMORY[0x1EEE9AC00](v66);
  v67 = v113 - v126;
  sub_1CA948B68();

  v68 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v59 + 144) = sub_1CA2F9F14(v115, v114, v63, v65, 0, 0, v113 - v54, v67);
  *(v59 + 168) = v58;
  *(v59 + 176) = 0x7365707954;
  *(v59 + 216) = v118;
  *(v59 + 184) = 0xE500000000000000;
  *(v59 + 192) = &unk_1F4A091E8;
  v69 = MEMORY[0x1E69E6158];
  *(inited + 440) = sub_1CA94C1E8();
  *(inited + 464) = v117;
  *(inited + 472) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v118 = swift_allocObject();
  *(v118 + 1) = xmmword_1CA9813B0;
  v117 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v70 = swift_allocObject();
  *(v70 + 16) = v120;
  *(v70 + 32) = @"Class";
  *(v70 + 40) = 0xD000000000000014;
  *(v70 + 48) = 0x80000001CA99B500;
  *(v70 + 64) = v69;
  *(v70 + 72) = @"Key";
  *(v70 + 80) = 0x7475706E494657;
  *(v70 + 88) = 0xE700000000000000;
  *(v70 + 104) = v69;
  *(v70 + 112) = @"Label";
  v71 = @"Parameters";
  v72 = @"Class";
  v73 = @"Key";
  v74 = @"Label";
  v75 = sub_1CA94C438();
  v115 = v76;
  v116 = v75;
  v77 = sub_1CA94C438();
  v114 = v78;
  *&v120 = v113;
  MEMORY[0x1EEE9AC00](v77);
  v79 = v122;
  sub_1CA948D98();
  v80 = v123;
  v81 = [v123 bundleURL];
  v113[1] = v113;
  MEMORY[0x1EEE9AC00](v81);
  v82 = v113 - v126;
  sub_1CA948B68();

  v83 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v70 + 120) = sub_1CA2F9F14(v116, v115, v77, v114, 0, 0, v113 - v79, v82);
  v84 = v121;
  *(v70 + 144) = v121;
  *(v70 + 152) = @"Placeholder";
  v85 = @"Placeholder";
  v86 = sub_1CA94C438();
  v115 = v87;
  v116 = v86;
  v114 = sub_1CA94C438();
  v89 = v88;
  *&v120 = v113;
  MEMORY[0x1EEE9AC00](v114);
  v90 = v113 - v79;
  sub_1CA948D98();
  v91 = [v80 bundleURL];
  MEMORY[0x1EEE9AC00](v91);
  v92 = v113 - v126;
  sub_1CA948B68();

  v93 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v94 = sub_1CA2F9F14(v116, v115, v114, v89, 0, 0, v90, v92);
  *(v70 + 184) = v84;
  *(v70 + 160) = v94;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v95 = sub_1CA2F864C();
  v96 = v118;
  v118[4] = v95;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 480) = v96;
  *(inited + 504) = v97;
  *(inited + 512) = @"ParameterSummary";
  v98 = @"ParameterSummary";
  v99 = sub_1CA94C438();
  v101 = v100;
  v102 = sub_1CA94C438();
  v104 = v103;
  v121 = v113;
  MEMORY[0x1EEE9AC00](v102);
  v105 = v113 - v122;
  sub_1CA948D98();
  v106 = [v123 bundleURL];
  MEMORY[0x1EEE9AC00](v106);
  v107 = v113 - v126;
  sub_1CA948B68();

  v108 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v109 = sub_1CA2F9F14(v99, v101, v102, v104, 0, 0, v105, v107);
  v110 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  *(inited + 544) = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 520) = v110;
  *(inited + 552) = @"ResidentCompatible";
  *(inited + 584) = MEMORY[0x1E69E6370];
  *(inited + 560) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v111 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA5FEC78()
{
  v119 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000017;
  *(inited + 48) = 0x80000001CA9A9740;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v125 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v126 = v12;
  v13 = &v115 - v125;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v123 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v124 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v122 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v115 - v122;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v121 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Description";
  v120 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1CA981310;
  *(v24 + 32) = @"DescriptionSummary";
  v25 = @"Description";
  v26 = @"DescriptionSummary";
  v27 = sub_1CA94C438();
  v117 = v28;
  v29 = sub_1CA94C438();
  v31 = v30;
  v118 = &v115;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v115 - v125;
  sub_1CA948D98();
  v33 = [v123 bundleURL];
  MEMORY[0x1EEE9AC00](v33);
  v34 = &v115 - v122;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v36 = sub_1CA2F9F14(v27, v117, v29, v31, 0, 0, v32, v34);
  *(v24 + 64) = v121;
  *(v24 + 40) = v36;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v37 = v120;
  *(inited + 160) = sub_1CA6B3784();
  *(inited + 184) = v37;
  *(inited + 192) = @"DisabledOnPlatforms";
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  v120 = v38;
  *(inited + 200) = &unk_1F4A09258;
  *(inited + 224) = v38;
  *(inited + 232) = @"LocallyProcessesData";
  v39 = MEMORY[0x1E69E6370];
  *(inited + 240) = 1;
  *(inited + 264) = v39;
  *(inited + 272) = @"Name";
  v40 = @"DisabledOnPlatforms";
  v41 = @"LocallyProcessesData";
  v42 = @"Name";
  v43 = sub_1CA94C438();
  v116 = v44;
  v117 = v43;
  v45 = sub_1CA94C438();
  v47 = v46;
  v118 = &v115;
  MEMORY[0x1EEE9AC00](v45);
  v48 = &v115 - v125;
  sub_1CA948D98();
  v49 = v123;
  v50 = [v123 bundleURL];
  MEMORY[0x1EEE9AC00](v50);
  v51 = v122;
  sub_1CA948B68();

  v52 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 280) = sub_1CA2F9F14(v117, v116, v45, v47, 0, 0, v48, &v115 - v51);
  v53 = v121;
  *(inited + 304) = v121;
  *(inited + 312) = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v54 = swift_initStackObject();
  *(v54 + 16) = xmmword_1CA9813C0;
  *(v54 + 32) = 0x656C7069746C754DLL;
  *(v54 + 40) = 0xE800000000000000;
  *(v54 + 48) = 1;
  *(v54 + 72) = MEMORY[0x1E69E6370];
  *(v54 + 80) = 0x614E74757074754FLL;
  *(v54 + 88) = 0xEA0000000000656DLL;
  v55 = @"Output";
  v56 = sub_1CA94C438();
  v116 = v57;
  v117 = v56;
  v58 = sub_1CA94C438();
  v115 = v59;
  v118 = &v115;
  MEMORY[0x1EEE9AC00](v58);
  v60 = &v115 - v125;
  sub_1CA948D98();
  v61 = [v49 bundleURL];
  MEMORY[0x1EEE9AC00](v61);
  sub_1CA948B68();

  v62 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v54 + 96) = sub_1CA2F9F14(v117, v116, v58, v115, 0, 0, v60, &v115 - v51);
  *(v54 + 120) = v53;
  *(v54 + 128) = 0x7365707954;
  *(v54 + 168) = v120;
  *(v54 + 136) = 0xE500000000000000;
  *(v54 + 144) = &unk_1F4A09288;
  v63 = MEMORY[0x1E69E6158];
  v64 = sub_1CA94C1E8();
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 320) = v64;
  *(inited + 344) = v65;
  *(inited + 352) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v118 = swift_allocObject();
  *(v118 + 1) = xmmword_1CA9813B0;
  v117 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_1CA981370;
  *(v66 + 32) = @"Class";
  *(v66 + 40) = 0xD000000000000012;
  *(v66 + 48) = 0x80000001CA99B980;
  *(v66 + 64) = v63;
  *(v66 + 72) = @"DefaultValue";
  v67 = MEMORY[0x1E69E6530];
  *(v66 + 80) = 1;
  *(v66 + 104) = v67;
  *(v66 + 112) = @"Key";
  *(v66 + 120) = 0xD000000000000015;
  *(v66 + 128) = 0x80000001CA9A9870;
  *(v66 + 144) = v63;
  *(v66 + 152) = @"StepperDescription";
  v68 = @"Parameters";
  v69 = @"Class";
  v70 = @"DefaultValue";
  v71 = @"Key";
  v72 = @"StepperDescription";
  v73 = sub_1CA94C438();
  v115 = v74;
  v75 = sub_1CA94C438();
  v77 = v76;
  v116 = &v115;
  MEMORY[0x1EEE9AC00](v75);
  v78 = &v115 - v125;
  sub_1CA948D98();
  v79 = [v123 bundleURL];
  MEMORY[0x1EEE9AC00](v79);
  v80 = &v115 - v122;
  sub_1CA948B68();

  v81 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v66 + 160) = sub_1CA2F9F14(v73, v115, v75, v77, 0, 0, v78, v80);
  *(v66 + 184) = v121;
  *(v66 + 192) = @"StepperNoun";
  v82 = @"StepperNoun";
  v83 = sub_1CA94C438();
  v115 = v84;
  v116 = v83;
  v85 = v84;
  v131 = 0;
  v132 = 0xE000000000000000;
  sub_1CA94D408();

  v131 = v83;
  v132 = v85;
  v129 = 10;
  v130 = 0xE100000000000000;
  v127 = 32;
  v128 = 0xE100000000000000;
  sub_1CA27BAF0();
  v131 = sub_1CA94D1B8();
  v132 = v86;
  v87 = MEMORY[0x1CCAA1300](0xD000000000000010, 0x80000001CA99BA10);
  v88 = v131;
  v89 = v132;
  MEMORY[0x1EEE9AC00](v87);
  v90 = &v115 - v125;
  sub_1CA948D98();
  v91 = [v123 bundleURL];
  MEMORY[0x1EEE9AC00](v91);
  v92 = &v115 - v122;
  sub_1CA948B68();

  v93 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v94 = sub_1CA2F9F14(v88, v89, v116, v115, 0, 0, v90, v92);
  *(v66 + 224) = v121;
  *(v66 + 200) = v94;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v95 = sub_1CA2F864C();
  v96 = v118;
  v118[4] = v95;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 360) = v96;
  *(inited + 384) = v97;
  *(inited + 392) = @"ParameterSummary";
  v98 = @"ParameterSummary";
  v99 = sub_1CA94C438();
  v101 = v100;
  v102 = sub_1CA94C438();
  v104 = v103;
  v121 = &v115;
  MEMORY[0x1EEE9AC00](v102);
  v105 = &v115 - v125;
  sub_1CA948D98();
  v106 = [v123 bundleURL];
  MEMORY[0x1EEE9AC00](v106);
  v107 = &v115 - v122;
  sub_1CA948B68();

  v108 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v109 = sub_1CA2F9F14(v99, v101, v102, v104, 0, 0, v105, v107);
  v110 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v111 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 400) = v110;
  *(inited + 424) = v111;
  *(inited + 432) = @"RequiredResources";
  *(inited + 464) = v120;
  *(inited + 440) = &unk_1F4A092B8;
  v112 = @"RequiredResources";
  v113 = sub_1CA94C368();
  *(inited + 504) = MEMORY[0x1E69E6158];
  *(inited + 472) = v113;
  *(inited + 480) = 0x68736E6565726353;
  *(inited + 488) = 0xEA0000000000746FLL;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA5FFB5C()
{
  v227 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  strcpy((inited + 40), "WFGiphyAction");
  *(inited + 54) = -4864;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v253 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v254 = v12;
  v13 = &v218 - v253;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v252 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v251 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v250 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v218 - v250;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v249 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"Description";
  v247 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v21 = swift_initStackObject();
  v239 = xmmword_1CA97EDF0;
  *(v21 + 16) = xmmword_1CA97EDF0;
  *(v21 + 32) = @"DescriptionNote";
  v22 = @"Description";
  v23 = @"DescriptionNote";
  v24 = sub_1CA94C438();
  v244 = v25;
  v245 = v24;
  v243 = sub_1CA94C438();
  v27 = v26;
  v246 = &v218;
  MEMORY[0x1EEE9AC00](v243);
  v28 = &v218 - v253;
  sub_1CA948D98();
  v29 = v252;
  v30 = [v252 bundleURL];
  v248 = inited;
  v31 = v30;
  MEMORY[0x1EEE9AC00](v30);
  v32 = v250;
  sub_1CA948B68();

  v33 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v21 + 40) = sub_1CA2F9F14(v245, v244, v243, v27, 0, 0, v28, &v218 - v32);
  v34 = v249;
  *(v21 + 64) = v249;
  *(v21 + 72) = @"DescriptionSummary";
  v35 = @"DescriptionSummary";
  v36 = sub_1CA94C438();
  v244 = v37;
  v245 = v36;
  v243 = sub_1CA94C438();
  v39 = v38;
  v246 = &v218;
  MEMORY[0x1EEE9AC00](v243);
  v40 = &v218 - v253;
  sub_1CA948D98();
  v41 = [v29 bundleURL];
  MEMORY[0x1EEE9AC00](v41);
  sub_1CA948B68();

  v42 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v43 = sub_1CA2F9F14(v245, v244, v243, v39, 0, 0, v40, &v218 - v32);
  *(v21 + 104) = v34;
  *(v21 + 80) = v43;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v44 = v247;
  v45 = sub_1CA6B3784();
  v46 = v248;
  v248[15] = v45;
  v46[18] = v44;
  v46[19] = @"IconName";
  v46[20] = 0x7968706947;
  v46[21] = 0xE500000000000000;
  v46[23] = MEMORY[0x1E69E6158];
  v46[24] = @"Name";
  v47 = @"IconName";
  v48 = @"Name";
  v49 = sub_1CA94C438();
  v51 = v50;
  v52 = sub_1CA94C438();
  v54 = v53;
  v247 = &v218;
  MEMORY[0x1EEE9AC00](v52);
  v55 = v253;
  sub_1CA948D98();
  v56 = [v252 bundleURL];
  MEMORY[0x1EEE9AC00](v56);
  v57 = &v218 - v250;
  sub_1CA948B68();

  v58 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v59 = sub_1CA2F9F14(v49, v51, v52, v54, 0, 0, &v218 - v55, v57);
  v60 = v248;
  v248[25] = v59;
  v61 = v249;
  v60[28] = v249;
  v60[29] = @"Output";
  v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v62 = swift_initStackObject();
  v238 = xmmword_1CA981350;
  *(v62 + 16) = xmmword_1CA981350;
  *(v62 + 32) = 0x75736F6C63736944;
  *(v62 + 40) = 0xEF6C6576654C6572;
  *(v62 + 48) = 0x63696C627550;
  *(v62 + 56) = 0xE600000000000000;
  *(v62 + 72) = MEMORY[0x1E69E6158];
  *(v62 + 80) = 0x656C7069746C754DLL;
  *(v62 + 88) = 0xE800000000000000;
  v63 = MEMORY[0x1E69E6370];
  *(v62 + 96) = 1;
  *(v62 + 120) = v63;
  *(v62 + 128) = 0x614E74757074754FLL;
  *(v62 + 136) = 0xEA0000000000656DLL;
  v64 = @"Output";
  v65 = sub_1CA94C438();
  v246 = v66;
  v67 = sub_1CA94C438();
  v69 = v68;
  v247 = &v218;
  MEMORY[0x1EEE9AC00](v67);
  sub_1CA948D98();
  v70 = [v252 bundleURL];
  MEMORY[0x1EEE9AC00](v70);
  v71 = &v218 - v250;
  sub_1CA948B68();

  v72 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v62 + 144) = sub_1CA2F9F14(v65, v246, v67, v69, 0, 0, &v218 - v55, v71);
  *(v62 + 168) = v61;
  *(v62 + 176) = 0x7365707954;
  *(v62 + 184) = 0xE500000000000000;
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v62 + 216) = v226;
  *(v62 + 192) = &unk_1F4A092E8;
  v73 = MEMORY[0x1E69E6158];
  v74 = sub_1CA94C1E8();
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v225 = v75;
  v76 = v248;
  v248[30] = v74;
  v76[33] = v75;
  v76[34] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v247 = swift_allocObject();
  *(v247 + 1) = xmmword_1CA981570;
  v246 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_1CA981380;
  *(v77 + 32) = @"AutocapitalizationType";
  *(v77 + 40) = 1701736270;
  *(v77 + 48) = 0xE400000000000000;
  *(v77 + 64) = v73;
  *(v77 + 72) = @"Class";
  *(v77 + 80) = 0xD000000000000014;
  *(v77 + 88) = 0x80000001CA99B500;
  *(v77 + 104) = v73;
  *(v77 + 112) = @"Key";
  strcpy((v77 + 120), "WFGiphyQuery");
  *(v77 + 133) = 0;
  *(v77 + 134) = -5120;
  *(v77 + 144) = v73;
  *(v77 + 152) = @"Label";
  v78 = @"Class";
  v79 = @"Key";
  v80 = @"Label";
  v81 = v78;
  v82 = v79;
  v83 = v80;
  v236 = v81;
  v240 = v82;
  v237 = v83;
  v84 = @"Parameters";
  v85 = @"AutocapitalizationType";
  v86 = sub_1CA94C438();
  v241 = v87;
  v242 = v86;
  v88 = sub_1CA94C438();
  *&v235 = v89;
  v244 = &v218;
  MEMORY[0x1EEE9AC00](v88);
  v90 = &v218 - v253;
  sub_1CA948D98();
  v91 = [v252 bundleURL];
  MEMORY[0x1EEE9AC00](v91);
  v92 = v250;
  sub_1CA948B68();

  v93 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v77 + 160) = sub_1CA2F9F14(v242, v241, v88, v235, 0, 0, v90, &v218 - v92);
  v94 = v249;
  *(v77 + 184) = v249;
  *(v77 + 192) = @"Placeholder";
  v95 = @"Placeholder";
  v96 = sub_1CA94C438();
  v241 = v97;
  v242 = v96;
  *&v235 = sub_1CA94C438();
  v99 = v98;
  v244 = &v218;
  MEMORY[0x1EEE9AC00](v235);
  v100 = &v218 - v253;
  sub_1CA948D98();
  v101 = [v252 bundleURL];
  MEMORY[0x1EEE9AC00](v101);
  sub_1CA948B68();

  v102 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v77 + 200) = sub_1CA2F9F14(v242, v241, v235, v99, 0, 0, v100, &v218 - v92);
  *(v77 + 224) = v94;
  *(v77 + 232) = @"TextAlignment";
  v103 = MEMORY[0x1E69E6158];
  *(v77 + 264) = MEMORY[0x1E69E6158];
  *(v77 + 240) = 0x7468676952;
  *(v77 + 248) = 0xE500000000000000;
  _s3__C3KeyVMa_0(0);
  v242 = v104;
  v241 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  v105 = @"TextAlignment";
  sub_1CA94C1E8();
  v247[4] = sub_1CA2F864C();
  v106 = swift_allocObject();
  *(v106 + 16) = v238;
  v224 = 0x80000001CA99E620;
  v107 = v236;
  *(v106 + 32) = v236;
  *(v106 + 40) = 0xD000000000000011;
  *(v106 + 48) = 0x80000001CA99E620;
  *(v106 + 64) = v103;
  *(v106 + 72) = @"DefaultValue";
  *(v106 + 80) = 1;
  v108 = v240;
  *(v106 + 104) = MEMORY[0x1E69E6370];
  *(v106 + 112) = v108;
  v244 = 0x80000001CA9D4EA0;
  *(v106 + 120) = 0xD000000000000011;
  *(v106 + 128) = 0x80000001CA9D4EA0;
  v109 = v237;
  *(v106 + 144) = v103;
  *(v106 + 152) = v109;
  v110 = @"DefaultValue";
  v229 = v107;
  v228 = v108;
  v240 = v110;
  v111 = sub_1CA94C438();
  v113 = v112;
  v114 = sub_1CA94C438();
  v116 = v115;
  v236 = &v218;
  MEMORY[0x1EEE9AC00](v114);
  v117 = &v218 - v253;
  sub_1CA948D98();
  v118 = [v252 bundleURL];
  MEMORY[0x1EEE9AC00](v118);
  v119 = &v218 - v250;
  sub_1CA948B68();

  v120 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v121 = sub_1CA2F9F14(v111, v113, v114, v116, 0, 0, v117, v119);
  *(v106 + 184) = v249;
  *(v106 + 160) = v121;
  sub_1CA94C1E8();
  v247[5] = sub_1CA2F864C();
  v122 = swift_allocObject();
  *(v122 + 16) = xmmword_1CA981400;
  *(v122 + 32) = v229;
  *(v122 + 40) = 0xD000000000000012;
  *(v122 + 48) = 0x80000001CA99B980;
  v123 = MEMORY[0x1E69E6158];
  v124 = v240;
  *(v122 + 64) = MEMORY[0x1E69E6158];
  *(v122 + 72) = v124;
  v125 = MEMORY[0x1E69E6530];
  *(v122 + 80) = 1;
  v126 = v228;
  *(v122 + 104) = v125;
  *(v122 + 112) = v126;
  strcpy((v122 + 120), "WFGiphyLimit");
  *(v122 + 133) = 0;
  *(v122 + 134) = -5120;
  *(v122 + 144) = v123;
  *(v122 + 152) = @"RequiredResources";
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v127 = swift_allocObject();
  v235 = xmmword_1CA981310;
  *(v127 + 16) = xmmword_1CA981310;
  v128 = swift_allocObject();
  v234 = xmmword_1CA9813C0;
  *(v128 + 16) = xmmword_1CA9813C0;
  strcpy((v128 + 32), "WFParameterKey");
  *(v128 + 47) = -18;
  v129 = v244;
  *(v128 + 48) = 0xD000000000000011;
  *(v128 + 56) = v129;
  v233 = 0x80000001CA993570;
  v240 = 0xD000000000000010;
  *(v128 + 72) = v123;
  *(v128 + 80) = 0xD000000000000010;
  *(v128 + 88) = 0x80000001CA993570;
  *(v128 + 96) = 0;
  *(v128 + 120) = MEMORY[0x1E69E6370];
  *(v128 + 128) = 0x72756F7365524657;
  *(v128 + 168) = v123;
  v231 = 0xD00000000000001BLL;
  v232 = 0x80000001CA993590;
  *(v128 + 136) = 0xEF7373616C436563;
  *(v128 + 144) = 0xD00000000000001BLL;
  *(v128 + 152) = 0x80000001CA993590;
  v223 = @"RequiredResources";
  *(v127 + 32) = sub_1CA94C1E8();
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  v230 = v130;
  *(v122 + 160) = v127;
  *(v122 + 184) = v130;
  *(v122 + 192) = @"StepperDescription";
  v131 = @"StepperDescription";
  v132 = sub_1CA94C438();
  v134 = v133;
  v135 = sub_1CA94C438();
  v137 = v136;
  v222 = &v218;
  MEMORY[0x1EEE9AC00](v135);
  v138 = &v218 - v253;
  sub_1CA948D98();
  v139 = [v252 bundleURL];
  MEMORY[0x1EEE9AC00](v139);
  v140 = &v218 - v250;
  sub_1CA948B68();

  v141 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v122 + 200) = sub_1CA2F9F14(v132, v134, v135, v137, 0, 0, v138, v140);
  *(v122 + 224) = v249;
  *(v122 + 232) = @"StepperNoun";
  v142 = @"StepperNoun";
  v143 = sub_1CA94C438();
  v221 = v144;
  v222 = v143;
  v145 = v144;
  v259 = 0;
  v260 = 0xE000000000000000;
  sub_1CA94D408();

  v259 = v143;
  v260 = v145;
  v257 = 10;
  v258 = 0xE100000000000000;
  v255 = 32;
  v256 = 0xE100000000000000;
  sub_1CA27BAF0();
  v259 = sub_1CA94D1B8();
  v260 = v146;
  v147 = MEMORY[0x1CCAA1300](v240, 0x80000001CA99BA10);
  v220 = &v218;
  v148 = v259;
  v219 = v260;
  MEMORY[0x1EEE9AC00](v147);
  v149 = v253;
  sub_1CA948D98();
  v150 = v252;
  v151 = [v252 bundleURL];
  MEMORY[0x1EEE9AC00](v151);
  v152 = &v218 - v250;
  sub_1CA948B68();

  v153 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v122 + 240) = sub_1CA2F9F14(v148, v219, v222, v221, 0, 0, &v218 - v149, v152);
  v154 = v249;
  *(v122 + 264) = v249;
  *(v122 + 272) = @"StepperPrefix";
  v155 = @"StepperPrefix";
  v156 = sub_1CA94C438();
  v220 = v157;
  v221 = v156;
  v158 = sub_1CA94C438();
  v219 = v159;
  v222 = &v218;
  MEMORY[0x1EEE9AC00](v158);
  v160 = &v218 - v149;
  sub_1CA948D98();
  v161 = [v150 bundleURL];
  MEMORY[0x1EEE9AC00](v161);
  v162 = v250;
  sub_1CA948B68();

  v163 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v164 = sub_1CA2F9F14(v221, v220, v158, v219, 0, 0, v160, &v218 - v162);
  *(v122 + 304) = v154;
  *(v122 + 280) = v164;
  sub_1CA94C1E8();
  v247[6] = sub_1CA2F864C();
  v165 = swift_allocObject();
  *(v165 + 16) = v238;
  *(v165 + 32) = v229;
  *(v165 + 40) = 0xD000000000000011;
  *(v165 + 48) = v224;
  v166 = MEMORY[0x1E69E6158];
  v167 = v228;
  *(v165 + 64) = MEMORY[0x1E69E6158];
  *(v165 + 72) = v167;
  *(v165 + 80) = 0xD000000000000015;
  *(v165 + 88) = 0x80000001CA9D4F60;
  v168 = v237;
  *(v165 + 104) = v166;
  *(v165 + 112) = v168;
  *&v238 = sub_1CA94C438();
  v170 = v169;
  v171 = sub_1CA94C438();
  v173 = v172;
  v243 = &v218;
  MEMORY[0x1EEE9AC00](v171);
  v174 = &v218 - v253;
  sub_1CA948D98();
  v175 = [v252 bundleURL];
  MEMORY[0x1EEE9AC00](v175);
  sub_1CA948B68();

  v176 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v165 + 120) = sub_1CA2F9F14(v238, v170, v171, v173, 0, 0, v174, &v218 - v162);
  v177 = v223;
  *(v165 + 144) = v249;
  *(v165 + 152) = v177;
  v178 = swift_allocObject();
  *(v178 + 16) = v235;
  v179 = swift_allocObject();
  *(v179 + 16) = v234;
  strcpy((v179 + 32), "WFParameterKey");
  *(v179 + 47) = -18;
  *(v179 + 48) = 0xD000000000000011;
  *(v179 + 56) = v244;
  v180 = MEMORY[0x1E69E6158];
  v181 = v240;
  *(v179 + 72) = MEMORY[0x1E69E6158];
  *(v179 + 80) = v181;
  *(v179 + 88) = v233;
  *(v179 + 96) = 1;
  *(v179 + 120) = MEMORY[0x1E69E6370];
  *(v179 + 128) = 0x72756F7365524657;
  *(v179 + 168) = v180;
  *(v179 + 136) = 0xEF7373616C436563;
  v182 = v232;
  *(v179 + 144) = v231;
  *(v179 + 152) = v182;
  *(v178 + 32) = sub_1CA94C1E8();
  *(v165 + 184) = v230;
  *(v165 + 160) = v178;
  sub_1CA94C1E8();
  v183 = sub_1CA2F864C();
  v184 = v247;
  v247[7] = v183;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v186 = v248;
  v248[35] = v184;
  v186[38] = v185;
  v186[39] = @"ParameterSummary";
  v187 = @"ParameterSummary";
  v188 = sub_1CA94C438();
  v190 = v189;
  v191 = sub_1CA94C438();
  v193 = v192;
  MEMORY[0x1EEE9AC00](v191);
  v194 = &v218 - v253;
  sub_1CA948D98();
  v195 = [v252 bundleURL];
  MEMORY[0x1EEE9AC00](v195);
  v196 = &v218 - v250;
  sub_1CA948B68();

  v197 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v198 = sub_1CA2F9F14(v188, v190, v191, v193, 0, 0, v194, v196);
  v199 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v200 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v201 = v248;
  v248[40] = v199;
  v201[43] = v200;
  v201[44] = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438F0, &unk_1CA9819E0);
  v202 = swift_allocObject();
  *(v202 + 16) = v239;
  v203 = swift_initStackObject();
  *(v203 + 16) = v239;
  *(v203 + 32) = 0xD000000000000011;
  *(v203 + 40) = 0x80000001CA99B240;
  v204 = swift_allocObject();
  *(v204 + 16) = v235;
  v205 = swift_allocObject();
  *(v205 + 16) = v234;
  strcpy((v205 + 32), "WFParameterKey");
  *(v205 + 47) = -18;
  *(v205 + 48) = 0xD000000000000011;
  *(v205 + 56) = v244;
  v206 = MEMORY[0x1E69E6158];
  v207 = v240;
  *(v205 + 72) = MEMORY[0x1E69E6158];
  *(v205 + 80) = v207;
  *(v205 + 88) = v233;
  *(v205 + 96) = 1;
  *(v205 + 120) = MEMORY[0x1E69E6370];
  *(v205 + 128) = 0x72756F7365524657;
  *(v205 + 168) = v206;
  v209 = v231;
  v208 = v232;
  *(v205 + 136) = 0xEF7373616C436563;
  *(v205 + 144) = v209;
  *(v205 + 152) = v208;
  v210 = @"RequiredResources";
  *(v204 + 32) = sub_1CA94C1E8();
  *(v203 + 48) = v204;
  *(v203 + 72) = v230;
  *(v203 + 80) = 0x72756F7365524657;
  *(v203 + 120) = v206;
  *(v203 + 88) = 0xEF7373616C436563;
  *(v203 + 96) = 0xD000000000000019;
  *(v203 + 104) = 0x80000001CA9932D0;
  *(v202 + 32) = sub_1CA94C1E8();
  *(v202 + 88) = v206;
  *(v202 + 56) = v225;
  *(v202 + 64) = 0xD00000000000001CLL;
  *(v202 + 72) = 0x80000001CA993620;
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443838, &qword_1CA981588);
  v212 = v248;
  v248[45] = v202;
  v212[48] = v211;
  v212[49] = @"UserInterfaceClasses";
  v213 = @"UserInterfaceClasses";
  v214 = sub_1CA94C1E8();
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  v212[50] = v214;
  v212[53] = v215;
  v212[54] = @"UserInterfaces";
  v212[58] = v226;
  v212[55] = &unk_1F4A09378;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v216 = @"UserInterfaces";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA601760()
{
  v221 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813A0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000017;
  *(inited + 48) = 0x80000001CA9D5040;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v230 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v231 = v12;
  v13 = &v212 - v230;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v228 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v227 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v229 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v212 - v229;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v225 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"Description";
  *&v224 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1CA97EDF0;
  *(v21 + 32) = @"DescriptionNote";
  v22 = @"Description";
  v23 = @"DescriptionNote";
  v222 = sub_1CA94C438();
  v220 = v24;
  v25 = sub_1CA94C438();
  v219 = v26;
  v223 = &v212;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v212 - v230;
  sub_1CA948D98();
  v28 = v228;
  v29 = [v228 bundleURL];
  v226 = inited;
  v30 = v29;
  MEMORY[0x1EEE9AC00](v29);
  v31 = v229;
  sub_1CA948B68();

  v32 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v21 + 40) = sub_1CA2F9F14(v222, v220, v25, v219, 0, 0, v27, &v212 - v31);
  v33 = v225;
  *(v21 + 64) = v225;
  *(v21 + 72) = @"DescriptionSummary";
  v34 = @"DescriptionSummary";
  v222 = sub_1CA94C438();
  v220 = v35;
  v219 = sub_1CA94C438();
  v37 = v36;
  v223 = &v212;
  MEMORY[0x1EEE9AC00](v219);
  v38 = &v212 - v230;
  sub_1CA948D98();
  v39 = [v28 bundleURL];
  MEMORY[0x1EEE9AC00](v39);
  sub_1CA948B68();

  v40 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v41 = sub_1CA2F9F14(v222, v220, v219, v37, 0, 0, v38, &v212 - v31);
  *(v21 + 104) = v33;
  *(v21 + 80) = v41;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v42 = v224;
  v43 = sub_1CA6B3784();
  v44 = v226;
  v226[15] = v43;
  v44[18] = v42;
  v44[19] = @"IconColor";
  v44[20] = 1953392980;
  v44[21] = 0xE400000000000000;
  v45 = MEMORY[0x1E69E6158];
  v44[23] = MEMORY[0x1E69E6158];
  v44[24] = @"IconSymbol";
  v44[25] = 1802398060;
  v44[26] = 0xE400000000000000;
  v44[28] = v45;
  v44[29] = @"IconSymbolColor";
  v44[30] = 1702194242;
  v44[31] = 0xE400000000000000;
  v44[33] = v45;
  v44[34] = @"Input";
  v46 = v44;
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v47 = swift_initStackObject();
  v224 = xmmword_1CA981350;
  *(v47 + 16) = xmmword_1CA981350;
  *(v47 + 32) = 0x656C7069746C754DLL;
  *(v47 + 40) = 0xE800000000000000;
  v48 = MEMORY[0x1E69E6370];
  *(v47 + 48) = 0;
  *(v47 + 72) = v48;
  strcpy((v47 + 80), "ParameterKey");
  *(v47 + 93) = 0;
  *(v47 + 94) = -5120;
  *(v47 + 96) = 0x4C52554657;
  *(v47 + 104) = 0xE500000000000000;
  *(v47 + 120) = v45;
  *(v47 + 128) = 0x6465726975716552;
  *(v47 + 136) = 0xE800000000000000;
  *(v47 + 144) = 1;
  *(v47 + 168) = v48;
  *(v47 + 176) = 0x7365707954;
  v49 = v48;
  *(v47 + 184) = 0xE500000000000000;
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v47 + 216) = v223;
  *(v47 + 192) = &unk_1F4A093A8;
  v50 = @"IconColor";
  v51 = @"IconSymbol";
  v52 = @"IconSymbolColor";
  v53 = @"Input";
  v54 = sub_1CA94C1E8();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v222 = v55;
  v46[35] = v54;
  v46[38] = v55;
  v46[39] = @"InputPassthrough";
  *(v46 + 320) = 0;
  v46[43] = v49;
  v46[44] = @"Name";
  v56 = @"InputPassthrough";
  v57 = @"Name";
  v58 = sub_1CA94C438();
  v60 = v59;
  v61 = sub_1CA94C438();
  v63 = v62;
  v219 = &v212;
  MEMORY[0x1EEE9AC00](v61);
  v64 = v230;
  sub_1CA948D98();
  v65 = [v228 bundleURL];
  MEMORY[0x1EEE9AC00](v65);
  v66 = &v212 - v229;
  sub_1CA948B68();

  v67 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v68 = sub_1CA2F9F14(v58, v60, v61, v63, 0, 0, &v212 - v64, v66);
  v70 = v225;
  v69 = v226;
  v226[45] = v68;
  v69[48] = v70;
  v69[49] = @"Output";
  v71 = swift_allocObject();
  *(v71 + 16) = v224;
  *(v71 + 32) = 0x75736F6C63736944;
  *(v71 + 40) = 0xEF6C6576654C6572;
  *(v71 + 48) = 0x63696C627550;
  *(v71 + 56) = 0xE600000000000000;
  *(v71 + 72) = MEMORY[0x1E69E6158];
  *(v71 + 80) = 0x656C7069746C754DLL;
  *(v71 + 88) = 0xE800000000000000;
  *(v71 + 96) = 0;
  *(v71 + 120) = MEMORY[0x1E69E6370];
  *(v71 + 128) = 0x614E74757074754FLL;
  *(v71 + 136) = 0xEA0000000000656DLL;
  v72 = @"Output";
  v73 = sub_1CA94C438();
  v219 = v74;
  v75 = sub_1CA94C438();
  v77 = v76;
  v220 = &v212;
  MEMORY[0x1EEE9AC00](v75);
  sub_1CA948D98();
  v78 = [v228 bundleURL];
  MEMORY[0x1EEE9AC00](v78);
  v79 = &v212 - v229;
  sub_1CA948B68();

  v80 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v71 + 144) = sub_1CA2F9F14(v73, v219, v75, v77, 0, 0, &v212 - v64, v79);
  *(v71 + 168) = v70;
  *(v71 + 176) = 0x7365707954;
  *(v71 + 216) = v223;
  *(v71 + 184) = 0xE500000000000000;
  *(v71 + 192) = &unk_1F4A093D8;
  v81 = MEMORY[0x1E69E6158];
  v82 = sub_1CA94C1E8();
  v83 = v226;
  v226[50] = v82;
  v83[53] = v222;
  v83[54] = @"Parameters";
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v223 = swift_allocObject();
  *(v223 + 1) = xmmword_1CA981360;
  v222 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v84 = swift_allocObject();
  *(v84 + 16) = v224;
  *(v84 + 32) = @"Class";
  *(v84 + 40) = 0xD000000000000014;
  *(v84 + 48) = 0x80000001CA99B500;
  *(v84 + 64) = v81;
  *(v84 + 72) = @"Key";
  *(v84 + 80) = 0x4C52554657;
  *(v84 + 88) = 0xE500000000000000;
  *(v84 + 104) = v81;
  *(v84 + 112) = @"KeyboardType";
  *(v84 + 120) = 5001813;
  *(v84 + 128) = 0xE300000000000000;
  *(v84 + 144) = v81;
  *(v84 + 152) = @"Label";
  v85 = @"Class";
  v86 = @"Key";
  v87 = @"Label";
  *&v224 = v85;
  v219 = v86;
  v220 = v87;
  v88 = @"Parameters";
  v89 = @"KeyboardType";
  v90 = sub_1CA94C438();
  v92 = v91;
  v93 = sub_1CA94C438();
  v95 = v94;
  v218 = &v212;
  MEMORY[0x1EEE9AC00](v93);
  v96 = &v212 - v230;
  sub_1CA948D98();
  v97 = [v228 bundleURL];
  MEMORY[0x1EEE9AC00](v97);
  v98 = &v212 - v229;
  sub_1CA948B68();

  v99 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v100 = sub_1CA2F9F14(v90, v92, v93, v95, 0, 0, v96, v98);
  *(v84 + 184) = v225;
  *(v84 + 160) = v100;
  _s3__C3KeyVMa_0(0);
  v218 = v101;
  v217 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v223[4] = sub_1CA2F864C();
  v102 = swift_allocObject();
  v216 = v102;
  *(v102 + 16) = xmmword_1CA981370;
  *(v102 + 32) = v224;
  *(v102 + 40) = 0xD000000000000016;
  *(v102 + 48) = 0x80000001CA99C4A0;
  v103 = MEMORY[0x1E69E6158];
  *(v102 + 64) = MEMORY[0x1E69E6158];
  *(v102 + 72) = @"DefaultValue";
  *(v102 + 80) = 0x656D65686353;
  *(v102 + 88) = 0xE600000000000000;
  *(v102 + 104) = v103;
  *(v102 + 112) = @"Items";
  *&v224 = swift_allocObject();
  *(v224 + 16) = xmmword_1CA985370;
  v104 = @"DefaultValue";
  v105 = @"Items";
  v106 = sub_1CA94C438();
  v213 = v107;
  v214 = v106;
  v108 = sub_1CA94C438();
  v212 = v109;
  v215 = &v212;
  MEMORY[0x1EEE9AC00](v108);
  v110 = v230;
  sub_1CA948D98();
  v111 = v228;
  v112 = [v228 bundleURL];
  MEMORY[0x1EEE9AC00](v112);
  v113 = &v212 - v229;
  sub_1CA948B68();

  v114 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v115 = sub_1CA2F9F14(v214, v213, v108, v212, 0, 0, &v212 - v110, v113);
  v116 = v224;
  *(v224 + 32) = v115;
  v117 = sub_1CA94C438();
  v213 = v118;
  v214 = v117;
  v212 = sub_1CA94C438();
  v120 = v119;
  v215 = &v212;
  MEMORY[0x1EEE9AC00](v212);
  sub_1CA948D98();
  v121 = [v111 bundleURL];
  MEMORY[0x1EEE9AC00](v121);
  v122 = v229;
  sub_1CA948B68();

  v123 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v116 + 40) = sub_1CA2F9F14(v214, v213, v212, v120, 0, 0, &v212 - v110, &v212 - v122);
  v124 = sub_1CA94C438();
  v213 = v125;
  v214 = v124;
  v126 = sub_1CA94C438();
  v212 = v127;
  v215 = &v212;
  MEMORY[0x1EEE9AC00](v126);
  v128 = v230;
  sub_1CA948D98();
  v129 = [v228 bundleURL];
  MEMORY[0x1EEE9AC00](v129);
  sub_1CA948B68();

  v130 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v131 = sub_1CA2F9F14(v214, v213, v126, v212, 0, 0, &v212 - v128, &v212 - v122);
  v132 = v224;
  *(v224 + 48) = v131;
  v133 = sub_1CA94C438();
  v213 = v134;
  v214 = v133;
  v135 = sub_1CA94C438();
  v212 = v136;
  v215 = &v212;
  MEMORY[0x1EEE9AC00](v135);
  sub_1CA948D98();
  v137 = v228;
  v138 = [v228 bundleURL];
  MEMORY[0x1EEE9AC00](v138);
  v139 = &v212 - v229;
  sub_1CA948B68();

  v140 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v132 + 56) = sub_1CA2F9F14(v214, v213, v135, v212, 0, 0, &v212 - v128, v139);
  v141 = sub_1CA94C438();
  v213 = v142;
  v214 = v141;
  v143 = sub_1CA94C438();
  v212 = v144;
  v215 = &v212;
  MEMORY[0x1EEE9AC00](v143);
  v145 = v230;
  sub_1CA948D98();
  v146 = [v137 bundleURL];
  MEMORY[0x1EEE9AC00](v146);
  v147 = v229;
  sub_1CA948B68();

  v148 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v149 = sub_1CA2F9F14(v214, v213, v143, v212, 0, 0, &v212 - v145, &v212 - v147);
  v150 = v224;
  *(v224 + 64) = v149;
  v151 = sub_1CA94C438();
  v213 = v152;
  v214 = v151;
  v153 = sub_1CA94C438();
  v212 = v154;
  v215 = &v212;
  MEMORY[0x1EEE9AC00](v153);
  sub_1CA948D98();
  v155 = v228;
  v156 = [v228 bundleURL];
  MEMORY[0x1EEE9AC00](v156);
  sub_1CA948B68();

  v157 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v150 + 72) = sub_1CA2F9F14(v214, v213, v153, v212, 0, 0, &v212 - v145, &v212 - v147);
  v158 = sub_1CA94C438();
  v213 = v159;
  v214 = v158;
  v160 = sub_1CA94C438();
  v212 = v161;
  v215 = &v212;
  MEMORY[0x1EEE9AC00](v160);
  v162 = v230;
  sub_1CA948D98();
  v163 = [v155 bundleURL];
  MEMORY[0x1EEE9AC00](v163);
  sub_1CA948B68();

  v164 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v165 = sub_1CA2F9F14(v214, v213, v160, v212, 0, 0, &v212 - v162, &v212 - v147);
  v166 = v224;
  *(v224 + 80) = v165;
  v167 = sub_1CA94C438();
  v213 = v168;
  v214 = v167;
  v169 = sub_1CA94C438();
  v212 = v170;
  v215 = &v212;
  MEMORY[0x1EEE9AC00](v169);
  v171 = &v212 - v162;
  sub_1CA948D98();
  v172 = v228;
  v173 = [v228 bundleURL];
  MEMORY[0x1EEE9AC00](v173);
  sub_1CA948B68();

  v174 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v175 = sub_1CA2F9F14(v214, v213, v169, v212, 0, 0, v171, &v212 - v147);
  v176 = v166;
  *(v166 + 88) = v175;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  v178 = v216;
  *(v216 + 120) = v176;
  v179 = v219;
  *(v178 + 144) = v177;
  *(v178 + 152) = v179;
  strcpy((v178 + 160), "WFURLComponent");
  *(v178 + 175) = -18;
  v180 = v220;
  *(v178 + 184) = MEMORY[0x1E69E6158];
  *(v178 + 192) = v180;
  v220 = sub_1CA94C438();
  v182 = v181;
  v183 = sub_1CA94C438();
  v185 = v184;
  *&v224 = &v212;
  MEMORY[0x1EEE9AC00](v183);
  v186 = &v212 - v230;
  sub_1CA948D98();
  v187 = [v172 bundleURL];
  MEMORY[0x1EEE9AC00](v187);
  v188 = &v212 - v229;
  sub_1CA948B68();

  v189 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v190 = sub_1CA2F9F14(v220, v182, v183, v185, 0, 0, v186, v188);
  *(v178 + 224) = v225;
  *(v178 + 200) = v190;
  sub_1CA94C1E8();
  v191 = sub_1CA2F864C();
  v192 = v223;
  v223[5] = v191;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v194 = v226;
  v226[55] = v192;
  v194[58] = v193;
  v194[59] = @"ParameterSummary";
  v195 = @"ParameterSummary";
  v196 = sub_1CA94C438();
  v198 = v197;
  v199 = sub_1CA94C438();
  v201 = v200;
  MEMORY[0x1EEE9AC00](v199);
  v202 = &v212 - v230;
  sub_1CA948D98();
  v203 = [v228 bundleURL];
  MEMORY[0x1EEE9AC00](v203);
  v204 = &v212 - v229;
  sub_1CA948B68();

  v205 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v206 = sub_1CA2F9F14(v196, v198, v199, v201, 0, 0, v202, v204);
  v207 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v208 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v209 = v226;
  v226[60] = v207;
  v209[63] = v208;
  v209[64] = @"ResidentCompatible";
  v209[68] = MEMORY[0x1E69E6370];
  *(v209 + 520) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v210 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

BOOL sub_1CA6030C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

BOOL sub_1CA6030F4(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != (a1 & 1));
  return v4 != 0;
}

void *RowTemplateConditionalParameterState.subject.getter()
{
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

uint64_t sub_1CA60317C(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1CA6277BC(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1CA60C8D8(v6);
  *a1 = v2;
  return result;
}

void RowTemplateConditionalParameterState.init(serializedRepresentation:variableProvider:parameter:)()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444490, &qword_1CA983530);
  if ((swift_dynamicCast() & 1) == 0)
  {
    swift_unknownObjectRelease();
LABEL_10:

    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  v6 = v49;
  v7 = sub_1CA323E28(0x7469646E6F434657, 0xEB000000006E6F69);
  if (!v7)
  {
    swift_unknownObjectRelease();

    goto LABEL_10;
  }

  v8 = v7;
  sub_1CA25B3D0(0, &qword_1EC446B00, off_1E836EC20);
  v9 = v1;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v10 = sub_1CA399E74(v8, v3, v1);
  if (!v10 || (v11 = v10, v12 = [v10 number], v11, !v12))
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

LABEL_11:
    *(v5 + 16) = 0u;
    *(v5 + 32) = 0u;
    *v5 = 0u;
    goto LABEL_12;
  }

  v45 = v12;
  v46 = sub_1CA94C978();
  v13 = sub_1CA323E28(0x7475706E494657, 0xE700000000000000);
  if (v13)
  {
    v14 = v13;
    v15 = sub_1CA25B3D0(0, &qword_1EC447190, off_1E836E020);
    swift_unknownObjectRetain();
    v16 = v9;
    v17 = v14;
    v11 = v15;
    v18 = sub_1CA399E74(v17, v3, v1);
  }

  else
  {
    v18 = 0;
  }

  v19 = sub_1CA948D28();
  v20 = OUTLINED_FUNCTION_1_0(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_1_37();
  v25 = sub_1CA948CC8();
  v43 = v26;
  v44 = v25;
  (*(v22 + 8))(v11, v19);
  if (!sub_1CA323E28(0xD000000000000025, 0x80000001CA9D53A0))
  {
    goto LABEL_18;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_186_0();
  v27 = swift_dynamicCastObjCClass();
  if (!v27)
  {
    swift_unknownObjectRelease();
LABEL_18:
    v28 = 0;
    goto LABEL_19;
  }

  v28 = [v27 BOOLValue];
  swift_unknownObjectRelease();
LABEL_19:
  v50 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446010, &unk_1CA987B90);
  v48 = sub_1CA94C1E8();
  v29 = sub_1CA604DA4();
  v30 = *(v29 + 16);
  if (v30)
  {
    v41 = v18;
    v47 = v9;
    v42 = v5;
    v40 = v29;
    v31 = v29 + 40;
    do
    {
      v32 = *(v31 - 8);
      v33 = *(*v31 + 8);
      v34 = *(v33 + 24);
      v34(v32, v33);
      if (*(v6 + 16))
      {
        v35 = sub_1CA271BF8();
        v37 = v36;

        if (v37)
        {
          v38 = *(*(v6 + 56) + 8 * v35);
          sub_1CA444B1C();
          v39 = objc_allocWithZone(swift_getObjCClassFromMetadata());
          swift_unknownObjectRetain();
          if ([v39 initWithSerializedRepresentation:v38 variableProvider:v3 parameter:{v47, v40}])
          {
            v34(v32, v33);
            swift_unknownObjectRetain();
            swift_isUniquelyReferenced_nonNull_native();
            OUTLINED_FUNCTION_134();
            sub_1CA60D430();
            swift_unknownObjectRelease();
          }

          swift_unknownObjectRelease();
          v6 = v49;
        }
      }

      else
      {
      }

      v31 += 16;
      --v30;
    }

    while (v30);

    v28 = v50;
    v5 = v42;
    v9 = v47;
    v18 = v41;
  }

  else
  {
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  *v5 = v46;
  *(v5 + 8) = v48;
  *(v5 + 16) = v28;
  *(v5 + 24) = v44;
  *(v5 + 32) = v43;
  *(v5 + 40) = v18;
LABEL_12:
  OUTLINED_FUNCTION_36();
}

uint64_t RowTemplateConditionalParameterState.serializedRepresentation.getter()
{
  v1 = *v0;
  v89 = v0[1];
  HIDWORD(v85) = *(v0 + 16);
  v2 = v0[5];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
  v4 = sub_1CA94C1E8();
  if ([v2 serializedRepresentation])
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v90 = v4;
    swift_getObjectType();
    v6 = OUTLINED_FUNCTION_71_6();
    sub_1CA32EB34(v6, v7, 0xE700000000000000, isUniquelyReferenced_nonNull_native, v8);
  }

  else
  {
    v9 = sub_1CA271BF8();
    if (v10)
    {
      v11 = v9;
      swift_isUniquelyReferenced_nonNull_native();
      v90 = v4;
      v12 = v4[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444FC0, &unk_1CA987A10);
      OUTLINED_FUNCTION_47_14();
      sub_1CA94D588();
      v13 = *(v4[6] + 16 * v11 + 8);

      v14 = *(v4[7] + 8 * v11);
      sub_1CA94D5A8();
      swift_unknownObjectRelease();
    }
  }

  v15 = sub_1CA94C988();
  v16 = [objc_allocWithZone(WFNumberSubstitutableState) initWithNumber_];

  v17 = [v16 serializedRepresentation];
  v86 = v3;
  if (v17)
  {
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v90 = v4;
    swift_getObjectType();
    v19 = OUTLINED_FUNCTION_71_6();
    sub_1CA32EB34(v19, v20, 0xEB000000006E6F69, v18, v21);
  }

  else
  {
    v22 = sub_1CA271BF8();
    if (v23)
    {
      v24 = v22;
      swift_isUniquelyReferenced_nonNull_native();
      v90 = v4;
      v25 = v4[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444FC0, &unk_1CA987A10);
      OUTLINED_FUNCTION_47_14();
      v26 = sub_1CA94D588();
      OUTLINED_FUNCTION_77_9(v26, v27, v28, v29, v30, v31, v32, v33, v84, v85, v3, v87, v89, v4);
      v34 = *(v4[7] + 8 * v24);
      sub_1CA94D5A8();
      swift_unknownObjectRelease();
    }
  }

  v36 = v89 + 64;
  v35 = *(v89 + 64);
  v37 = *(v89 + 32);
  OUTLINED_FUNCTION_5_5();
  v40 = v39 & v38;
  v42 = (v41 + 63) >> 6;
  sub_1CA94C218();
  v43 = 0;
  v88 = v89 + 64;
LABEL_10:
  v44 = v43;
  if (!v40)
  {
    goto LABEL_12;
  }

  do
  {
    v45 = v4;
    v43 = v44;
LABEL_16:
    v46 = __clz(__rbit64(v40));
    v40 &= v40 - 1;
    v47 = v46 | (v43 << 6);
    v48 = (*(v89 + 48) + 16 * v47);
    v49 = *v48;
    v50 = v48[1];
    v51 = *(*(v89 + 56) + 8 * v47);
    sub_1CA94C218();
    v52 = [swift_unknownObjectRetain() serializedRepresentation];
    if (v52)
    {
      v56 = v52;
      HIDWORD(v84) = swift_isUniquelyReferenced_nonNull_native();
      v90 = v45;
      v57 = sub_1CA271BF8();
      LODWORD(v85) = v58;
      if (__OFADD__(v45[2], (v58 & 1) == 0))
      {
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v59 = v57;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444FC0, &unk_1CA987A10);
      if (sub_1CA94D588())
      {
        v60 = sub_1CA271BF8();
        if ((v85 & 1) != (v61 & 1))
        {
LABEL_36:
          result = sub_1CA94D878();
          __break(1u);
          return result;
        }

        v59 = v60;
        if ((v85 & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      else if ((v85 & 1) == 0)
      {
LABEL_24:
        v62 = v90;
        v90[(v59 >> 6) + 8] |= 1 << v59;
        v63 = (*(v62 + 48) + 16 * v59);
        *v63 = v49;
        v63[1] = v50;
        *(*(v62 + 56) + 8 * v59) = v56;
        v4 = v62;
        swift_unknownObjectRelease();
        v64 = v4[2];
        v65 = __OFADD__(v64, 1);
        v66 = v64 + 1;
        if (!v65)
        {
          v4[2] = v66;
          v36 = v88;
          goto LABEL_10;
        }

        goto LABEL_35;
      }

      v77 = v90;
      v78 = v90[7];
      v79 = *(v78 + 8 * v59);
      *(v78 + 8 * v59) = v56;
      v4 = v77;
      swift_unknownObjectRelease();
      goto LABEL_29;
    }

    v4 = v45;
    v53 = sub_1CA271BF8();
    v55 = v54;

    if (v55)
    {
      swift_isUniquelyReferenced_nonNull_native();
      v90 = v45;
      v67 = v45[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444FC0, &unk_1CA987A10);
      OUTLINED_FUNCTION_47_14();
      v68 = sub_1CA94D588();
      OUTLINED_FUNCTION_77_9(v68, v69, v70, v71, v72, v73, v74, v75, v84, v85, v86, v88, v89, v45);
      v76 = *(v45[7] + 8 * v53);
      swift_unknownObjectRelease();
      sub_1CA94D5A8();
LABEL_29:
      swift_unknownObjectRelease();
      v36 = v88;
      goto LABEL_10;
    }

    swift_unknownObjectRelease();
    v44 = v43;
    v36 = v88;
  }

  while (v40);
  while (1)
  {
LABEL_12:
    v43 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v43 >= v42)
    {
      break;
    }

    v40 = *(v36 + 8 * v43);
    ++v44;
    if (v40)
    {
      v45 = v4;
      goto LABEL_16;
    }
  }

  if ((v85 & 0x100000000) != 0)
  {
    sub_1CA25B3D0(0, &qword_1EDB9F5E0, 0x1E696AD98);
    v80 = sub_1CA94CFA8();
    v81 = swift_isUniquelyReferenced_nonNull_native();
    v90 = v4;
    sub_1CA32EA0C(v80, 0xD000000000000025, 0x80000001CA9D53A0, v81, &v90);
  }

  v82 = sub_1CA94C1A8();

  return v82;
}

uint64_t RowTemplateConditionalParameterState.parameterState(key:)()
{
  v1 = *(v0 + 8);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = sub_1CA271BF8();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = *(*(v1 + 56) + 8 * v2);
  return swift_unknownObjectRetain();
}

uint64_t RowTemplateConditionalParameterState.init(subject:selectedOperator:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 40) = a1;
  *a3 = a2;
  v5 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446010, &unk_1CA987B90);
  *(a3 + 8) = sub_1CA94C1E8();
  v6 = sub_1CA948D28();
  v7 = OUTLINED_FUNCTION_1_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_37();
  v12 = sub_1CA948CC8();
  v14 = v13;

  result = (*(v9 + 8))(v3, v6);
  *(a3 + 24) = v12;
  *(a3 + 32) = v14;
  *(a3 + 16) = 0;
  return result;
}

void __swiftcall RowTemplateConditionalParameterState.makeSubjectParameter(key:)(WFParameter *__return_ptr retstr, Swift::String key)
{
  object = key._object;
  countAndFlagsBits = key._countAndFlagsBits;
  sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA97EDF0;
  v5 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"Key";
  *(inited + 40) = countAndFlagsBits;
  *(inited + 48) = object;
  *(inited + 64) = v5;
  *(inited + 72) = @"Label";
  v6 = @"Key";
  sub_1CA94C218();
  v7 = @"Label";
  sub_1CA94C438();
  OUTLINED_FUNCTION_70_0();
  if (qword_1EDB9F5F0 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v8 = qword_1EDB9F690;
  OUTLINED_FUNCTION_69();
  v9 = sub_1CA94C368();
  OUTLINED_FUNCTION_69();
  v10 = sub_1CA94C368();

  v11 = [v8 localizedStringForKey:v9 value:v10 table:0];

  v12 = sub_1CA94C3A8();
  v14 = v13;

  *(inited + 104) = v5;
  *(inited + 80) = v12;
  *(inited + 88) = v14;
  _s3__C3KeyVMa_0(0);
  sub_1CA60EA2C(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v15 = sub_1CA2F864C();
  [objc_allocWithZone(WFConditionalSubjectParameter) initWithDefinition_];
}

uint64_t RowTemplateConditionalParameterState.setParameterState(_:key:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    swift_getObjectType();
    v7 = swift_unknownObjectRetain();

    return sub_1CA43FF40(v7, a2, a3, (v3 + 8));
  }

  else
  {
    v9 = *(v3 + 8);
    result = sub_1CA271BF8();
    if (v10)
    {
      v11 = result;
      v12 = *(v4 + 8);
      swift_isUniquelyReferenced_nonNull_native();
      v16 = *(v4 + 8);
      v13 = v16[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4457E0, &qword_1CA990910);
      sub_1CA94D588();
      v14 = *(v16[6] + 16 * v11 + 8);

      v15 = *(v16[7] + 8 * v11);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446010, &unk_1CA987B90);
      OUTLINED_FUNCTION_134();
      sub_1CA94D5A8();
      result = swift_unknownObjectRelease();
      *(v4 + 8) = v16;
    }
  }

  return result;
}

void RowTemplateConditionalParameterState.subject.setter(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 40);
  if (v4)
  {
    v5 = v4;
    v6 = [v5 variable];
    if (v6)
    {
      v7 = v6;
      objc_opt_self();
      OUTLINED_FUNCTION_5_3();
      v8 = swift_dynamicCastObjCClass();
      if (v8)
      {
        v9 = [v8 outputUUID];

        v10 = sub_1CA94C3A8();
        v12 = v11;

        *(v2 + 40) = a1;
        v13 = a1;

        if (!a1)
        {

          goto LABEL_39;
        }

        goto LABEL_9;
      }
    }
  }

  *(v2 + 40) = a1;
  v13 = a1;

  if (!a1)
  {
    goto LABEL_38;
  }

  v10 = 0;
  v12 = 0;
LABEL_9:
  v14 = [v13 variable];
  if (!v14)
  {
LABEL_26:

    goto LABEL_27;
  }

  v15 = v14;
  v16 = [v13 variable];
  if (!v16)
  {
LABEL_25:

    goto LABEL_26;
  }

  v17 = v16;
  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  if (!v18)
  {

    goto LABEL_26;
  }

  v19 = [v18 outputUUID];

  v20 = sub_1CA94C3A8();
  v22 = v21;

  if (!v12)
  {

    goto LABEL_21;
  }

  if (v20 == v10 && v12 == v22)
  {

    goto LABEL_26;
  }

  v24 = sub_1CA94D7F8();

  if (v24)
  {
    goto LABEL_22;
  }

LABEL_21:
  if (!sub_1CA6048D4(v13))
  {
    sub_1CA3F132C(v15, &selRef_propertyName);
    if (!v25)
    {
      v34 = [v15 possibleContentClasses];
      v13 = 0;
      v35 = sub_1CA60C498(v34);

      if (*(v35 + 16))
      {
        v36 = *(v35 + 32);

        v13 = [swift_getObjCClassFromMetadata() allProperties];
        sub_1CA25B3D0(0, &unk_1EC4419D0, 0x1E6996D88);
        OUTLINED_FUNCTION_186_0();
        v37 = sub_1CA94C658();

        if (sub_1CA25B410())
        {
          OUTLINED_FUNCTION_39_11();
          if (v13)
          {
            MEMORY[0x1CCAA22D0](0, v37);
          }

          else
          {
            v38 = *(v37 + 32);
          }

          OUTLINED_FUNCTION_11();

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
          v39 = swift_allocObject();
          *(v39 + 16) = xmmword_1CA9813B0;
          v40 = [v13 name];
          sub_1CA94C3A8();

          v41 = objc_allocWithZone(WFPropertyVariableAggrandizement);
          v42 = OUTLINED_FUNCTION_162();
          *(v39 + 32) = sub_1CA60C764(v42, v43, 0);
          sub_1CA25B3D0(0, &unk_1EC444CA0, off_1E836F4B8);
          v44 = sub_1CA94C648();

          v45 = [v15 variableBySettingAggrandizements_];

          v26 = [objc_allocWithZone(WFConditionalSubjectParameterState) initWithVariable_];
          *(v2 + 40) = v26;
          if (v26)
          {
            goto LABEL_28;
          }

LABEL_38:
          goto LABEL_39;
        }
      }
    }

    goto LABEL_25;
  }

LABEL_22:

LABEL_27:
  v26 = a1;
LABEL_28:
  v27 = v26;
  v28 = OUTLINED_FUNCTION_11();
  v29 = sub_1CA6048D4(v28);
  sub_1CA607C68(v29, v13);
  sub_1CA2F154C(v30, v48);

  sub_1CA6102B4(v48, v46, &qword_1EC447198, &qword_1CA98EB10);
  v31 = v47;
  if (v47)
  {
    __swift_project_boxed_opaque_existential_1(v46, v47);
    OUTLINED_FUNCTION_4_50();
    v33 = v32(v31);

    sub_1CA30F7DC(v48, &qword_1EC447198, &qword_1CA98EB10);
    __swift_destroy_boxed_opaque_existential_0(v46);
  }

  else
  {
    sub_1CA30F7DC(v48, &qword_1EC447198, &qword_1CA98EB10);

    sub_1CA30F7DC(v46, &qword_1EC447198, &qword_1CA98EB10);
    v33 = 4;
  }

  *v2 = v33;
LABEL_39:
  *(v2 + 16) = 0;
}

void sub_1CA60465C()
{
  v1 = v0[5];
  if (v1)
  {
    v3 = *v0;
    v2 = v0[1];
    v4 = v1;
    if (sub_1CA6048D4(v1) == 1)
    {
    }

    else
    {
      v5 = sub_1CA6048D4(v1);
      sub_1CA607C68(v5, v4);
      v7 = v6;
      v8 = 0;
      v9 = *(v6 + 16);
      for (i = v6 + 32; ; i += 40)
      {
        if (v9 == v8)
        {

          return;
        }

        if (v8 >= *(v7 + 16))
        {
          __break(1u);
          return;
        }

        sub_1CA2C9578(i, &v17);
        v11 = v18;
        __swift_project_boxed_opaque_existential_1(&v17, v18);
        OUTLINED_FUNCTION_4_50();
        if (v12(v11) == v3)
        {
          break;
        }

        ++v8;
        __swift_destroy_boxed_opaque_existential_0(&v17);
      }

      sub_1CA27F268(&v17, v19);
      sub_1CA27F268(v19, v20);
      v13 = v21;
      __swift_project_boxed_opaque_existential_1(v20, v21);
      OUTLINED_FUNCTION_4_50();
      v15 = v14(v13);

      if ((v15 - 100) < 2 || v15 == 1002)
      {
        __swift_destroy_boxed_opaque_existential_0(v20);
      }

      else
      {
        v16 = *(v2 + 16) != 0;
        __swift_destroy_boxed_opaque_existential_0(v20);
      }
    }
  }
}

uint64_t RowTemplateConditionalParameterState.identity.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_1CA94C218();
  return OUTLINED_FUNCTION_23();
}

void *sub_1CA604850@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  v7 = *(a1 + 3);
  v8 = a1[5];
  result = RowTemplateConditionalParameterState.subject.getter();
  *a2 = result;
  return result;
}

void sub_1CA6048A4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  RowTemplateConditionalParameterState.subject.setter(v1);
}

id sub_1CA6048D4(id result)
{
  if (result)
  {
    result = [result contentType];
    if (result >= 0xA)
    {
      result = sub_1CA94D5F8();
      __break(1u);
    }
  }

  return result;
}

void static RowTemplateConditionalParameterState.possibleOperators(subject:)(void *a1)
{
  v2 = sub_1CA6048D4(a1);

  sub_1CA607C68(v2, a1);
}

void (*RowTemplateConditionalParameterState.subject.modify(void *a1))(uint64_t a1, char a2)
{
  v2 = *(v1 + 40);
  *a1 = v2;
  a1[1] = v1;
  v3 = v2;
  return sub_1CA6049D8;
}

void sub_1CA6049D8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (a2)
  {
    v4 = v2;
    RowTemplateConditionalParameterState.subject.setter(v2);
  }

  else
  {
    RowTemplateConditionalParameterState.subject.setter(*a1);
  }
}

uint64_t sub_1CA604DA4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447620, &qword_1CA98F9D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1CA981340;
  v1 = sub_1CA610508();
  *(v0 + 32) = &type metadata for RowTemplateConditionalParameterState.LinkEnumerationKey;
  *(v0 + 40) = v1;
  v2 = sub_1CA61055C();
  *(v0 + 48) = &type metadata for RowTemplateConditionalParameterState.NumericEnumerationKey;
  *(v0 + 56) = v2;
  v3 = sub_1CA6105B0();
  *(v0 + 64) = &type metadata for RowTemplateConditionalParameterState.EnumerationKey;
  *(v0 + 72) = v3;
  v4 = sub_1CA610604();
  *(v0 + 80) = &type metadata for RowTemplateConditionalParameterState.StringKey;
  *(v0 + 88) = v4;
  v5 = sub_1CA610658();
  *(v0 + 96) = &type metadata for RowTemplateConditionalParameterState.BoundedNumberKey;
  *(v0 + 104) = v5;
  v6 = sub_1CA6106AC();
  *(v0 + 112) = &type metadata for RowTemplateConditionalParameterState.AnotherBoundedNumberKey;
  *(v0 + 120) = v6;
  v7 = sub_1CA610700();
  *(v0 + 128) = &type metadata for RowTemplateConditionalParameterState.NumberKey;
  *(v0 + 136) = v7;
  v8 = sub_1CA610754();
  *(v0 + 144) = &type metadata for RowTemplateConditionalParameterState.AnotherNumberKey;
  *(v0 + 152) = v8;
  v9 = sub_1CA6107A8();
  *(v0 + 160) = &type metadata for RowTemplateConditionalParameterState.DateKey;
  *(v0 + 168) = v9;
  v10 = sub_1CA6107FC();
  *(v0 + 176) = &type metadata for RowTemplateConditionalParameterState.AnotherDateKey;
  *(v0 + 184) = v10;
  v11 = sub_1CA610850();
  *(v0 + 192) = &type metadata for RowTemplateConditionalParameterState.DurationKey;
  *(v0 + 200) = v11;
  v12 = sub_1CA6108A4();
  *(v0 + 208) = &type metadata for RowTemplateConditionalParameterState.AnotherDurationKey;
  *(v0 + 216) = v12;
  v13 = sub_1CA6108F8();
  *(v0 + 224) = &type metadata for RowTemplateConditionalParameterState.MeasurementKey;
  *(v0 + 232) = v13;
  v14 = sub_1CA61094C();
  *(v0 + 240) = &type metadata for RowTemplateConditionalParameterState.AnotherMeasurementKey;
  *(v0 + 248) = v14;
  v15 = sub_1CA6109A0();
  *(v0 + 256) = &type metadata for RowTemplateConditionalParameterState.AppKey;
  *(v0 + 264) = v15;
  return v0;
}

void RowTemplateConditionalParameterState.init(variable:)()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v38 = v2;
  v3 = [objc_allocWithZone(WFConditionalSubjectParameterState) initWithVariable_];
  v4 = v3;
  v5 = sub_1CA6048D4(v3);

  if (!v5)
  {
    sub_1CA3F132C(v1, &selRef_propertyName);
    if (v6)
    {
      goto LABEL_8;
    }

    v7 = [v1 possibleContentClasses];
    v8 = sub_1CA60C498(v7);

    if (!*(v8 + 16))
    {
      goto LABEL_8;
    }

    v9 = *(v8 + 32);

    v10 = [swift_getObjCClassFromMetadata() allProperties];
    sub_1CA25B3D0(0, &unk_1EC4419D0, 0x1E6996D88);
    OUTLINED_FUNCTION_186_0();
    v11 = sub_1CA94C658();

    if (sub_1CA25B410())
    {
      OUTLINED_FUNCTION_39_11();
      if (v10)
      {
        MEMORY[0x1CCAA22D0](0, v11);
      }

      else
      {
        v12 = *(v11 + 32);
      }

      OUTLINED_FUNCTION_11();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1CA9813B0;
      v14 = [v10 name];
      sub_1CA94C3A8();

      v15 = objc_allocWithZone(WFPropertyVariableAggrandizement);
      v16 = OUTLINED_FUNCTION_162();
      *(v13 + 32) = sub_1CA60C764(v16, v17, 0);
      sub_1CA25B3D0(0, &unk_1EC444CA0, off_1E836F4B8);
      sub_1CA94C648();
      OUTLINED_FUNCTION_139();

      v18 = [v1 variableBySettingAggrandizements_];

      v3 = [objc_allocWithZone(WFConditionalSubjectParameterState) initWithVariable_];
      v4 = v3;
    }

    else
    {
LABEL_8:
    }
  }

  v19 = v4;
  v20 = sub_1CA6048D4(v3);
  sub_1CA607C68(v20, v19);
  v22 = v21;
  sub_1CA2F154C(v21, v42);

  sub_1CA6102B4(v42, v39, &qword_1EC447198, &qword_1CA98EB10);
  v23 = v40;
  v24 = v1;
  if (v40)
  {
    v22 = v41;
    __swift_project_boxed_opaque_existential_1(v39, v40);
    OUTLINED_FUNCTION_4_50();
    v26 = v25(v23);
    __swift_destroy_boxed_opaque_existential_0(v39);
  }

  else
  {
    sub_1CA30F7DC(v39, &qword_1EC447198, &qword_1CA98EB10);
    v26 = 4;
  }

  v27 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446010, &unk_1CA987B90);
  v28 = sub_1CA94C1E8();
  v29 = sub_1CA948D28();
  v30 = OUTLINED_FUNCTION_1_0(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_1_37();
  v35 = sub_1CA948CC8();
  v37 = v36;

  (*(v32 + 8))(v22, v29);
  sub_1CA30F7DC(v42, &qword_1EC447198, &qword_1CA98EB10);
  *v38 = v26;
  *(v38 + 8) = v28;
  *(v38 + 16) = 0;
  *(v38 + 24) = v35;
  *(v38 + 32) = v37;
  *(v38 + 40) = v3;
  OUTLINED_FUNCTION_36();
}

Swift::Void __swiftcall RowTemplateConditionalParameterState.replace(variable:with:)(WFVariable_optional *variable, WFVariable_optional *with)
{
  v3 = v2;
  if (variable)
  {
    v6 = *(v2 + 40);
    if (v6)
    {
      v7 = v6;
      if ([v7 respondsToSelector_] && (v8 = objc_msgSend(v7, sel_variable)) != 0)
      {
        v9 = v8;
        sub_1CA25B3D0(0, &qword_1EC441AC0, off_1E836F4B0);
        v10 = variable;
        v11 = sub_1CA94CFD8();

        if (v11)
        {
          goto LABEL_6;
        }
      }

      else
      {
      }

      v17 = v7;
      v18 = [v17 variable];
      v19 = v17;
      if (v18)
      {
        v20 = v18;
        objc_opt_self();
        OUTLINED_FUNCTION_186_0();
        v21 = swift_dynamicCastObjCClass();
        if (v21)
        {
          v22 = [v21 outputUUID];

          goto LABEL_21;
        }

        v19 = v20;
      }
    }

LABEL_21:
    *(v3 + 40) = 0;
    *(v3 + 16) = 0;
    return;
  }

LABEL_6:
  if (!with)
  {
    return;
  }

  v12 = objc_allocWithZone(WFConditionalSubjectParameterState);
  v41 = with;
  RowTemplateConditionalParameterState.subject.setter([v12 initWithVariable_]);
  if (!variable)
  {
    goto LABEL_25;
  }

  v40 = variable;
  sub_1CA3F132C(v41, &selRef_UUID);
  OUTLINED_FUNCTION_70_0();
  v13 = sub_1CA3F132C(v40, &selRef_UUID);
  if (v14)
  {
    if (with == v13 && variable == v14)
    {

      v23 = v40;
      goto LABEL_26;
    }

    OUTLINED_FUNCTION_69();
    v16 = sub_1CA94D7F8();

    if (v16)
    {
LABEL_25:
      v23 = v41;
LABEL_26:

      return;
    }
  }

  else
  {
  }

  if (sub_1CA6048D4(*(v3 + 40)))
  {
    goto LABEL_25;
  }

  sub_1CA3F132C(v41, &selRef_propertyName);
  if (!v24)
  {
    v25 = [(WFVariable_optional *)v41 possibleContentClasses];
    v26 = sub_1CA60C498(v25);

    if (*(v26 + 16))
    {
      v27 = *(v26 + 32);

      v28 = [swift_getObjCClassFromMetadata() allProperties];
      sub_1CA25B3D0(0, &unk_1EC4419D0, 0x1E6996D88);
      OUTLINED_FUNCTION_186_0();
      v29 = sub_1CA94C658();

      if (sub_1CA25B410())
      {
        OUTLINED_FUNCTION_39_11();
        if (v28)
        {
          MEMORY[0x1CCAA22D0](0, v29);
        }

        else
        {
          v30 = *(v29 + 32);
        }

        OUTLINED_FUNCTION_11();

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
        v31 = swift_allocObject();
        *(v31 + 16) = xmmword_1CA9813B0;
        v32 = [v28 name];
        sub_1CA94C3A8();
        v34 = v33;

        v35 = objc_allocWithZone(WFPropertyVariableAggrandizement);
        v36 = OUTLINED_FUNCTION_139();
        *(v31 + 32) = sub_1CA60C764(v36, v34, 0);
        sub_1CA25B3D0(0, &unk_1EC444CA0, off_1E836F4B8);
        v37 = sub_1CA94C648();

        v38 = [(WFVariable_optional *)v41 variableBySettingAggrandizements:v37];

        v39 = [objc_allocWithZone(WFConditionalSubjectParameterState) initWithVariable_];
        RowTemplateConditionalParameterState.subject.setter(v39);

        goto LABEL_25;
      }
    }
  }
}

uint64_t RowTemplateConditionalParameterState.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 8);
  v6 = (*(*(a3 + 8) + 24))(a2, *(a3 + 8));
  sub_1CA323E28(v6, v7);
  OUTLINED_FUNCTION_139();

  if (!a1)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446010, &unk_1CA987B90);
  swift_getAssociatedTypeWitness();
  if (swift_dynamicCast())
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t RowTemplateConditionalParameterState.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(*(a4 + 8) + 24))(a3, *(a4 + 8));
  if (a1)
  {
    swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_87();
    swift_unknownObjectRetain();
    OUTLINED_FUNCTION_62_8();
    sub_1CA43FF40(v5, v6, v7, v8);
  }

  else
  {
    sub_1CA43F494();
  }

  return swift_unknownObjectRelease();
}

void (*RowTemplateConditionalParameterState.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  v9 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v9;
  v9[3] = a4;
  v9[4] = v4;
  v9[1] = a2;
  v9[2] = a3;
  OUTLINED_FUNCTION_63_10();
  v10 = OUTLINED_FUNCTION_69();
  *v9 = RowTemplateConditionalParameterState.subscript.getter(v10, v11, a4);
  return sub_1CA6059DC;
}

void sub_1CA6059DC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[3];
  v3 = (*a1)[4];
  v6 = (*a1)[1];
  v5 = (*a1)[2];
  v7 = **a1;
  if (a2)
  {
    v8 = swift_unknownObjectRetain();
    RowTemplateConditionalParameterState.subscript.setter(v8, v6, v5, v4);
    v9 = *v2;
    swift_unknownObjectRelease();
  }

  else
  {
    RowTemplateConditionalParameterState.subscript.setter(v7, v6, v5, v4);
  }

  free(v2);
}

uint64_t RowTemplateConditionalParameterState.containedVariables.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 40);
  v3 = &selRef_arrayWithObject_;
  if (v2)
  {
    v4 = [v2 containedVariables];
    sub_1CA25B3D0(0, &qword_1EC441AC0, off_1E836F4B0);
    OUTLINED_FUNCTION_5_3();
    v37 = sub_1CA94C658();
  }

  else
  {
    v37 = MEMORY[0x1E69E7CC0];
  }

  v5 = *(v1 + 64);
  v41 = v1 + 64;
  v6 = *(v1 + 32);
  OUTLINED_FUNCTION_5_5();
  v9 = v8 & v7;
  v40 = (v10 + 63) >> 6;
  result = sub_1CA94C218();
  v12 = 0;
  v13 = MEMORY[0x1E69E7CC0];
  v38 = v1;
  while (v9)
  {
LABEL_10:
    v15 = *(*(v1 + 56) + ((v12 << 9) | (8 * __clz(__rbit64(v9)))));
    v16 = [swift_unknownObjectRetain_n() v3[468]];
    sub_1CA25B3D0(0, &qword_1EC441AC0, off_1E836F4B0);
    v17 = sub_1CA94C658();
    swift_unknownObjectRelease_n();

    if (v17 >> 62)
    {
      v18 = sub_1CA94D328();
    }

    else
    {
      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v19 = v13 >> 62;
    if (v13 >> 62)
    {
      result = sub_1CA94D328();
    }

    else
    {
      result = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v44 = v18;
    v20 = __OFADD__(result, v18);
    v21 = result + v18;
    if (v20)
    {
      goto LABEL_44;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (!result)
    {
      if (v19)
      {
LABEL_22:
        sub_1CA94D328();
      }

      else
      {
        v22 = v13 & 0xFFFFFFFFFFFFFF8;
LABEL_21:
        v23 = *(v22 + 16);
      }

      result = sub_1CA94D488();
      v43 = result;
      v22 = result & 0xFFFFFFFFFFFFFF8;
      goto LABEL_24;
    }

    if (v19)
    {
      goto LABEL_22;
    }

    v22 = v13 & 0xFFFFFFFFFFFFFF8;
    if (v21 > *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_21;
    }

    v43 = v13;
LABEL_24:
    v9 &= v9 - 1;
    v24 = *(v22 + 16);
    v25 = (*(v22 + 24) >> 1) - v24;
    v26 = v22 + 8 * v24;
    v42 = v22;
    if (v17 >> 62)
    {
      v29 = sub_1CA94D328();
      if (v29)
      {
        v30 = v29;
        result = sub_1CA94D328();
        if (v25 < result)
        {
          goto LABEL_48;
        }

        if (v30 < 1)
        {
          goto LABEL_49;
        }

        v39 = result;
        sub_1CA276B98(&qword_1EC447B50, &unk_1EC444470, &unk_1CA983510);
        for (i = 0; i != v30; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444470, &unk_1CA983510);
          v32 = sub_1CA276BDC(v45, i, v17);
          v34 = *v33;
          v32(v45, 0);
          *(v26 + 32 + 8 * i) = v34;
        }

        v1 = v38;
        v27 = v39;
        v3 = &selRef_arrayWithObject_;
        goto LABEL_34;
      }

LABEL_38:

      v13 = v43;
      if (v44 > 0)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v27 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v27)
      {
        goto LABEL_38;
      }

      if (v25 < v27)
      {
        goto LABEL_47;
      }

      v28 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      swift_arrayInitWithCopy();
LABEL_34:

      v13 = v43;
      if (v27 < v44)
      {
        goto LABEL_45;
      }

      if (v27 > 0)
      {
        v35 = *(v42 + 16);
        v20 = __OFADD__(v35, v27);
        v36 = v35 + v27;
        if (v20)
        {
          goto LABEL_46;
        }

        *(v42 + 16) = v36;
      }
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v40)
    {

      v45[0] = v37;
      sub_1CA2B7C28(v13);
      return v45[0];
    }

    v9 = *(v41 + 8 * v14);
    ++v12;
    if (v9)
    {
      v12 = v14;
      goto LABEL_10;
    }
  }

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
  __break(1u);
LABEL_49:
  __break(1u);
  return result;
}

uint64_t RowTemplateConditionalParameterState.process(context:)(uint64_t a1)
{
  *(v2 + 296) = a1;
  *(v2 + 304) = *v1;
  *(v2 + 281) = *(v1 + 16);
  *(v2 + 320) = *(v1 + 40);
  OUTLINED_FUNCTION_90();
  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1CA605F28()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[40];
  if (v1)
  {
    v1;
    v2 = swift_task_alloc();
    v0[41] = v2;
    *v2 = v0;
    v2[1] = sub_1CA606040;
    v3 = v0[37];

    return sub_1CA32BED0(v3);
  }

  else
  {
    sub_1CA60D538();
    OUTLINED_FUNCTION_127();
    *v5 = 0;
    swift_willThrow();
    OUTLINED_FUNCTION_5();

    return v6();
  }
}

uint64_t sub_1CA606040()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_3();
  v5 = v4;
  v6 = *(v4 + 328);
  v7 = *v1;
  OUTLINED_FUNCTION_13();
  *v8 = v7;
  *(v5 + 336) = v0;

  if (!v0)
  {
    *(v5 + 344) = v3;
  }

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1CA606154()
{
  v76 = v0;
  v2 = *(v0 + 344);
  if (!v2 || (objc_opt_self(), (v3 = swift_dynamicCastObjCClass()) == 0))
  {
    v21 = *(v0 + 320);
    sub_1CA60D538();
    OUTLINED_FUNCTION_127();
    *v22 = 2;
    swift_willThrow();
    swift_unknownObjectRelease();

    goto LABEL_21;
  }

  v4 = v3;
  v5 = *(v0 + 281);
  v6 = *(v0 + 304);
  v7 = *(v0 + 312);
  v8 = [v3 content];
  *(v0 + 352) = v8;
  v9 = sub_1CA6030C8(v6, &unk_1F49F88C0);
  sub_1CA94C218();
  if (v5 != 1 || !v9)
  {
    v25 = sub_1CA607C00([v4 contentType]);
    if (v25 == 1)
    {
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 288;
      *(v0 + 24) = sub_1CA607638;
      v26 = swift_continuation_init();
      *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4471A8, &qword_1CA98EB20);
      *(v0 + 80) = MEMORY[0x1E69E9820];
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_1CA3CD588;
      *(v0 + 104) = &block_descriptor_32;
      *(v0 + 112) = v26;
      [v8 getBoolRepresentation_];
      OUTLINED_FUNCTION_68();

      goto _swift_continuation_await;
    }

    v28 = v25;
    v29 = *(v0 + 312);
    goto LABEL_57;
  }

  v5 = &selRef_isInputParameter;
  v10 = [v8 items];
  sub_1CA25B3D0(0, &qword_1EDB9F790, 0x1E6996D58);
  OUTLINED_FUNCTION_134();
  sub_1CA94C658();

  v11 = sub_1CA25B410();

  if (!v11)
  {
    v30 = *(v0 + 312);
    v31 = *(v0 + 320);
    sub_1CA25B3D0(0, &qword_1EDB9F5E0, 0x1E696AD98);
    sub_1CA94CFA8();

    swift_unknownObjectRelease();

    OUTLINED_FUNCTION_4_38();
    OUTLINED_FUNCTION_68();

    __asm { BRAA            X2, X16 }
  }

  v12 = *(v0 + 304);
  v1 = &off_1E836E000;
  if (!v12 || v12 == 2)
  {
    v34 = *(v0 + 312);
    v35 = sub_1CA323E28(0xD000000000000019, 0x80000001CA9B28F0);
    *(v0 + 392) = v35;
    if (v35)
    {
      swift_getObjectType();
      v36 = swift_task_alloc();
      *(v0 + 400) = v36;
      *v36 = v0;
      v37 = sub_1CA60713C;
LABEL_47:
      v36[1] = v37;
      v53 = *(v0 + 296);
      OUTLINED_FUNCTION_68();

      WFParameterState.process(context:)(v54, v55);
      return;
    }

LABEL_50:
    v29 = *(v0 + 312);
    v28 = 3;
    goto LABEL_51;
  }

  if (v12 != 99)
  {
    if (v12 != 4)
    {
      v75[0] = 0;
      v75[1] = 0xE000000000000000;
      sub_1CA94D408();
      MEMORY[0x1CCAA1300](0xD000000000000048, 0x80000001CA9D5490);
      v15 = WFDefaultLocalizedLabelForContentOperator();
      if (!v15)
      {
        goto LABEL_69;
      }

      v47 = v15;
      v48 = sub_1CA94C3A8();
      v50 = v49;

      MEMORY[0x1CCAA1300](v48, v50);

      OUTLINED_FUNCTION_76_7();
      OUTLINED_FUNCTION_68();
      return;
    }

    v13 = [v8 items];
    v14 = sub_1CA94C658();

    v15 = sub_1CA25B410();
    v16 = v15;
    v17 = 0;
    v5 = v14 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v16 == v17)
      {

        v29 = *(v0 + 312);
        v28 = 2;
        v1 = &off_1E836E000;
        goto LABEL_51;
      }

      if ((v14 & 0xC000000000000001) != 0)
      {
        v20 = OUTLINED_FUNCTION_134();
        v15 = MEMORY[0x1CCAA22D0](v20);
      }

      else
      {
        if (v17 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_68;
        }

        v15 = *(v14 + 8 * v17 + 32);
      }

      v18 = v15;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_67;
      }

      sub_1CA25B3D0(0, &qword_1EC4447F0, 0x1E6996EC0);
      if ([v18 isKindOfClass_])
      {
        break;
      }

      sub_1CA25B3D0(0, &qword_1EC446EF8, 0x1E6996DB8);
      v19 = [v18 isKindOfClass_];

      ++v17;
      if (v19)
      {
        goto LABEL_45;
      }
    }

LABEL_45:
    v51 = *(v0 + 312);

    v35 = OUTLINED_FUNCTION_58_7(v52, 0x80000001CA9B28F0);
    *(v0 + 360) = v35;
    v1 = &off_1E836E000;
    if (v35)
    {
      swift_getObjectType();
      v36 = swift_task_alloc();
      *(v0 + 368) = v36;
      *v36 = v0;
      v37 = sub_1CA606B5C;
      goto LABEL_47;
    }

    goto LABEL_50;
  }

  v38 = *(v0 + 312);
  v39 = OUTLINED_FUNCTION_14_29();
  v35 = sub_1CA323E28(v39, v40);
  if (!v35)
  {
    goto LABEL_41;
  }

  objc_opt_self();
  v41 = OUTLINED_FUNCTION_36_6();
  if (!v41 || (v42 = [v41 value]) == 0)
  {
    v35 = swift_unknownObjectRelease();
LABEL_41:
    v29 = *(v0 + 312);
    goto LABEL_42;
  }

  v43 = v42;
  v44 = *(v0 + 312);
  sub_1CA25B3D0(0, &qword_1EC441788, off_1E836F4E0);
  sub_1CA94C3A8();
  v5 = v45;
  sub_1CA25B3D0(0, &qword_1EC446960, off_1E836F4D8);
  v75[0] = sub_1CA538038();
  v46.variableString.super.isa = v75;
  WFVariableStringParameterState.init(variableString:)(v46);
  OUTLINED_FUNCTION_139();
  swift_isUniquelyReferenced_nonNull_native();
  v75[0] = v44;
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_43_11();

  v35 = swift_unknownObjectRelease();
  v29 = v75[0];
LABEL_42:
  v28 = 2;
LABEL_51:
  if (OUTLINED_FUNCTION_58_7(v35, 0x80000001CA9B28F0))
  {
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1CA25B3D0(0, &qword_1EC441788, off_1E836F4E0);
    sub_1CA25B3D0(0, &qword_1EC446960, off_1E836F4D8);
    v75[0] = OUTLINED_FUNCTION_57_10();
    v57.variableString.super.isa = v75;
    WFVariableStringParameterState.init(variableString:)(v57);
    OUTLINED_FUNCTION_87();
    swift_isUniquelyReferenced_nonNull_native();
    v75[0] = v29;
    OUTLINED_FUNCTION_0_4();
    OUTLINED_FUNCTION_43_11();
    v29 = v75[0];
  }

  v2 = 0xED000065756C6156;
  if (sub_1CA323E28(0x7265626D754E4657, 0xED000065756C6156))
  {
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1CA25B3D0(0, &qword_1EDB9FAC0, 0x1E696AEC0);
    v58 = sub_1CA94D008();
    v5 = [objc_allocWithZone(v1[387]) initWithValue_];

    swift_isUniquelyReferenced_nonNull_native();
    v75[0] = v29;
    OUTLINED_FUNCTION_0_4();
    sub_1CA60D32C();
    v29 = v75[0];
  }

LABEL_57:
  *(v0 + 432) = v29;
  sub_1CA607C68(v28, *(v0 + 320));
  v15 = OUTLINED_FUNCTION_64_8(v59);
  while (1)
  {
    if (v1 == v5)
    {
      v63 = *(v0 + 344);
      v64 = *(v0 + 352);
      v65 = *(v0 + 320);

      sub_1CA60D538();
      v66 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_54_7(v66, v67);

      swift_unknownObjectRelease();

LABEL_21:
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_68();

      __asm { BRAA            X1, X16 }
    }

    if (v5 >= *(v28 + 16))
    {
      break;
    }

    v60 = *(v0 + 304);
    sub_1CA2C9578(v2, v0 + 224);
    v61 = *(v0 + 248);
    __swift_project_boxed_opaque_existential_1((v0 + 224), v61);
    OUTLINED_FUNCTION_4_50();
    if (v62(v61) == v60)
    {
      v68 = *(v0 + 296);

      OUTLINED_FUNCTION_32_15();
      sub_1CA94C218();
      v69 = v68;
      v74 = v61 + *v61;
      v70 = v61[1];
      v71 = swift_task_alloc();
      *(v0 + 440) = v71;
      *v71 = v0;
      OUTLINED_FUNCTION_3_50(v71);
      OUTLINED_FUNCTION_68();

      __asm { BRAA            X4, X16 }
    }

    ++v5;
    v15 = __swift_destroy_boxed_opaque_existential_0((v0 + 224));
    v2 += 40;
  }

  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
_swift_continuation_await:
  MEMORY[0x1EEE6DEC8](v15);
}

uint64_t sub_1CA606B5C()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  v5 = *(v4 + 368);
  *v3 = *v1;
  *(v2 + 376) = v6;
  *(v2 + 384) = v0;

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1CA606C5C()
{
  v37 = v1;
  OUTLINED_FUNCTION_61_9();
  if (!*(v1 + 376))
  {
    v11 = *(v1 + 360);
    goto LABEL_8;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_5_3();
  v2 = swift_dynamicCastObjCClass();
  if (!v2 || (v3 = [objc_opt_self() resultsForString:v2 ofTypes:0x200000000 error:0], v4 = objc_msgSend(v3, sel_number), v3, !v4))
  {
    v10 = *(v1 + 360);
    swift_unknownObjectRelease();
LABEL_8:
    swift_unknownObjectRelease();
    v9 = *(v1 + 312);
    goto LABEL_9;
  }

  v5 = [v4 stringValue];
  if (!v5)
  {
LABEL_27:
    __break(1u);
    return;
  }

  v6 = v5;
  v7 = *(v1 + 360);
  v8 = *(v1 + 312);
  [objc_allocWithZone(WFNumberStringSubstitutableState) initWithValue_];
  v0 = &off_1E836E000;

  swift_isUniquelyReferenced_nonNull_native();
  v36 = v8;
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_61_9();
  sub_1CA60D32C();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v9 = v8;
LABEL_9:
  if (sub_1CA323E28(0xD000000000000019, 0x80000001CA9B28F0))
  {
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1CA25B3D0(0, &qword_1EC441788, off_1E836F4E0);
    sub_1CA25B3D0(0, &qword_1EC446960, off_1E836F4D8);
    v36 = OUTLINED_FUNCTION_57_10();
    v12.variableString.super.isa = &v36;
    WFVariableStringParameterState.init(variableString:)(v12);
    OUTLINED_FUNCTION_139();
    swift_isUniquelyReferenced_nonNull_native();
    v36 = v9;
    OUTLINED_FUNCTION_0_4();
    OUTLINED_FUNCTION_43_11();
    v9 = v36;
  }

  if (sub_1CA323E28(0x7265626D754E4657, v0))
  {
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1CA25B3D0(0, &qword_1EDB9FAC0, 0x1E696AEC0);
    v13 = sub_1CA94D008();
    [objc_allocWithZone(WFNumberStringSubstitutableState) initWithValue_];

    swift_isUniquelyReferenced_nonNull_native();
    v36 = v9;
    OUTLINED_FUNCTION_0_4();
    sub_1CA60D32C();
    v9 = v36;
  }

  *(v1 + 432) = v9;
  sub_1CA607C68(3, *(v1 + 320));
  v15 = v14;
  v16 = 0;
  v17 = *(v14 + 16);
  v18 = v14 + 32;
  while (v17 != v16)
  {
    if (v16 >= *(v15 + 16))
    {
      __break(1u);
      goto LABEL_27;
    }

    v19 = *(v1 + 304);
    sub_1CA2C9578(v18, v1 + 224);
    v20 = *(v1 + 248);
    __swift_project_boxed_opaque_existential_1((v1 + 224), v20);
    OUTLINED_FUNCTION_4_50();
    if (v21(v20) == v19)
    {
      v28 = *(v1 + 296);

      sub_1CA27F268((v1 + 224), v1 + 184);
      sub_1CA27F268((v1 + 184), v1 + 144);
      v29 = *(v1 + 176);
      __swift_project_boxed_opaque_existential_1((v1 + 144), *(v1 + 168));
      *(v1 + 264) = v9;
      *(v1 + 272) = v28;
      *(v1 + 280) = 0;
      v30 = *(v29 + 16);
      sub_1CA94C218();
      v31 = v28;
      v35 = (v30 + *v30);
      v32 = v30[1];
      v33 = swift_task_alloc();
      *(v1 + 440) = v33;
      *v33 = v1;
      v34 = OUTLINED_FUNCTION_3_50(v33);

      v35(v34);
      return;
    }

    ++v16;
    __swift_destroy_boxed_opaque_existential_0((v1 + 224));
    v18 += 40;
  }

  v22 = *(v1 + 344);
  v23 = *(v1 + 352);
  v24 = *(v1 + 320);

  sub_1CA60D538();
  v25 = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_54_7(v25, v26);

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_5();

  v27();
}

uint64_t sub_1CA60713C()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  v5 = *(v4 + 400);
  *v3 = *v1;
  *(v2 + 408) = v6;
  *(v2 + 416) = v0;

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1CA60723C()
{
  OUTLINED_FUNCTION_189();
  v29 = v0;
  v1 = 0x7265626D754E4657;
  if (!*(v0 + 408))
  {
    v7 = *(v0 + 392);
LABEL_6:
    v5 = swift_unknownObjectRelease();
    v6 = *(v0 + 312);
    goto LABEL_7;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_5_3();
  v2 = swift_dynamicCastObjCClass();
  v3 = *(v0 + 392);
  if (!v2)
  {
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  v4 = *(v0 + 312);
  [objc_allocWithZone(WFNumberStringSubstitutableState) initWithValue_];
  swift_isUniquelyReferenced_nonNull_native();
  v28 = v4;
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_62_8();
  sub_1CA60D32C();
  swift_unknownObjectRelease();
  v5 = swift_unknownObjectRelease();
  v6 = v4;
LABEL_7:
  v8 = "WorkflowKit.TableTemplateValue";
  if (OUTLINED_FUNCTION_58_7(v5, 0x80000001CA9B28F0))
  {
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1CA25B3D0(0, &qword_1EC441788, off_1E836F4E0);
    sub_1CA25B3D0(0, &qword_1EC446960, off_1E836F4D8);
    v28 = OUTLINED_FUNCTION_57_10();
    v9.variableString.super.isa = &v28;
    WFVariableStringParameterState.init(variableString:)(v9);
    OUTLINED_FUNCTION_87();
    swift_isUniquelyReferenced_nonNull_native();
    v28 = v6;
    OUTLINED_FUNCTION_0_4();
    OUTLINED_FUNCTION_43_11();
    v6 = v28;
  }

  if (sub_1CA323E28(0x7265626D754E4657, 0xED000065756C6156))
  {
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1CA25B3D0(0, &qword_1EDB9FAC0, 0x1E696AEC0);
    v10 = sub_1CA94D008();
    [objc_allocWithZone(WFNumberStringSubstitutableState) initWithValue_];

    swift_isUniquelyReferenced_nonNull_native();
    v28 = v6;
    OUTLINED_FUNCTION_0_4();
    OUTLINED_FUNCTION_62_8();
    sub_1CA60D32C();
    v6 = v28;
  }

  *(v0 + 432) = v6;
  sub_1CA607C68(3, *(v0 + 320));
  result = OUTLINED_FUNCTION_64_8(v11);
  while (&selRef_initWithIntentDescriptor_isSyncedFromOtherDevice_ != v8)
  {
    if (v8 >= MEMORY[0xED000065756C6166])
    {
      __break(1u);
      return result;
    }

    v13 = *(v0 + 304);
    sub_1CA2C9578(v1, v0 + 224);
    v14 = *(v0 + 248);
    __swift_project_boxed_opaque_existential_1((v0 + 224), v14);
    OUTLINED_FUNCTION_4_50();
    if (v15(v14) == v13)
    {
      v22 = *(v0 + 296);

      OUTLINED_FUNCTION_32_15();
      sub_1CA94C218();
      v23 = v22;
      v27 = (v14 + *v14);
      v24 = v14[1];
      v25 = swift_task_alloc();
      *(v0 + 440) = v25;
      *v25 = v0;
      v26 = OUTLINED_FUNCTION_3_50(v25);

      return v27(v26);
    }

    v8 = (v8 + 1);
    result = __swift_destroy_boxed_opaque_existential_0((v0 + 224));
    v1 += 40;
  }

  v16 = *(v0 + 344);
  v17 = *(v0 + 352);
  v18 = *(v0 + 320);

  sub_1CA60D538();
  v19 = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_54_7(v19, v20);

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_5();

  return v21();
}

uint64_t sub_1CA607638()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 424) = *(v3 + 48);
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1CA607734()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 344);
  v2 = *(v0 + 312);
  v3 = *(v0 + 320);

  swift_unknownObjectRelease();
  v4 = *(v0 + 288);

  v5 = OUTLINED_FUNCTION_4_38();

  return v6(v5);
}

uint64_t sub_1CA6077B4()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_3();
  v5 = v4;
  v6 = *(v4 + 440);
  v7 = *v1;
  OUTLINED_FUNCTION_13();
  *v8 = v7;
  *(v5 + 448) = v0;

  if (!v0)
  {
    *(v5 + 282) = v3 & 1;
  }

  v9 = *(v5 + 264);
  v10 = *(v5 + 272);

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1CA6078E0()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 282);
  v2 = *(v0 + 432);
  v3 = *(v0 + 344);
  v4 = *(v0 + 352);
  v5 = *(v0 + 320);
  v6 = sub_1CA94C7A8();

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 144));

  OUTLINED_FUNCTION_2_4();

  return v7(v6);
}

uint64_t sub_1CA607980()
{
  OUTLINED_FUNCTION_0();

  v1 = *(v0 + 336);
  OUTLINED_FUNCTION_5();

  return v2();
}

uint64_t sub_1CA6079DC()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 360);
  v2 = *(v0 + 344);
  v3 = *(v0 + 312);
  v4 = *(v0 + 320);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v5 = *(v0 + 384);
  OUTLINED_FUNCTION_5();

  return v6();
}

uint64_t sub_1CA607A64()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 392);
  v2 = *(v0 + 344);
  v3 = *(v0 + 312);
  v4 = *(v0 + 320);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v5 = *(v0 + 416);
  OUTLINED_FUNCTION_5();

  return v6();
}

uint64_t sub_1CA607AEC()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[53];
  v2 = v0[43];
  v3 = v0[44];
  v4 = v0[39];
  v5 = v0[40];
  swift_willThrow();

  swift_unknownObjectRelease();

  v6 = v0[53];
  OUTLINED_FUNCTION_5();

  return v7();
}

uint64_t sub_1CA607B78()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 432);
  v2 = *(v0 + 344);
  v3 = *(v0 + 320);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 144));

  v4 = *(v0 + 448);
  OUTLINED_FUNCTION_5();

  return v5();
}

unint64_t sub_1CA607C00(unint64_t result)
{
  if (result >= 0xA)
  {
    result = sub_1CA94D5F8();
    __break(1u);
  }

  return result;
}

void sub_1CA607C68(uint64_t a1, id a2)
{
  if ([a2 isEnumeration])
  {
    if (a1 == 3)
    {
      v12 = sub_1CA94C438();
      if (qword_1EDB9F5F0 != -1)
      {
        OUTLINED_FUNCTION_0_3();
      }

      v13 = qword_1EDB9F690;
      OUTLINED_FUNCTION_134();
      v14 = sub_1CA94C368();
      OUTLINED_FUNCTION_134();
      sub_1CA94C368();
      OUTLINED_FUNCTION_11();

      v16 = OUTLINED_FUNCTION_96(v15, sel_localizedStringForKey_value_table_);

      sub_1CA94C3A8();
      OUTLINED_FUNCTION_70_0();

      OUTLINED_FUNCTION_34_16();
      v17 = swift_allocObject();
      *(v17 + 16) = a2;
      OUTLINED_FUNCTION_34_16();
      v18 = swift_allocObject();
      *(v18 + 16) = a2;
      *v172 = &type metadata for RowTemplateConditionalParameterState.NumericEnumerationKey;
      *&v172[8] = v13;
      *&v172[16] = v12;
      *&v172[24] = &unk_1CA98F8C8;
      *&v172[32] = v17;
      *&v172[40] = sub_1CA60F6DC;
      *&v172[48] = v18;
      *&v172[56] = &unk_1CA98F8D0;
      *&v172[64] = 0;
      sub_1CA609258(v172);
    }

    else if (a1 == 8)
    {
      v4 = sub_1CA94C438();
      if (qword_1EDB9F5F0 != -1)
      {
        OUTLINED_FUNCTION_0_3();
      }

      v5 = qword_1EDB9F690;
      OUTLINED_FUNCTION_134();
      v6 = sub_1CA94C368();
      OUTLINED_FUNCTION_134();
      sub_1CA94C368();
      OUTLINED_FUNCTION_11();

      v8 = OUTLINED_FUNCTION_96(v7, sel_localizedStringForKey_value_table_);

      sub_1CA94C3A8();
      OUTLINED_FUNCTION_70_0();

      OUTLINED_FUNCTION_34_16();
      v9 = swift_allocObject();
      *(v9 + 16) = a2;
      OUTLINED_FUNCTION_34_16();
      v10 = swift_allocObject();
      *(v10 + 16) = a2;
      *v172 = &type metadata for RowTemplateConditionalParameterState.LinkEnumerationKey;
      *&v172[8] = v5;
      *&v172[16] = v4;
      *&v172[24] = &unk_1CA98F8E0;
      *&v172[32] = v9;
      *&v172[40] = sub_1CA610A54;
      *&v172[48] = v10;
      *&v172[56] = &unk_1CA98F8E8;
      *&v172[64] = 0;
      sub_1CA6090D8(v172);
    }

    else
    {
      v19 = sub_1CA94C438();
      if (qword_1EDB9F5F0 != -1)
      {
        OUTLINED_FUNCTION_0_3();
      }

      v20 = qword_1EDB9F690;
      OUTLINED_FUNCTION_134();
      v21 = sub_1CA94C368();
      OUTLINED_FUNCTION_134();
      sub_1CA94C368();
      OUTLINED_FUNCTION_11();

      v23 = OUTLINED_FUNCTION_96(v22, sel_localizedStringForKey_value_table_);

      sub_1CA94C3A8();
      OUTLINED_FUNCTION_70_0();

      OUTLINED_FUNCTION_34_16();
      v24 = swift_allocObject();
      *(v24 + 16) = a2;
      OUTLINED_FUNCTION_34_16();
      v25 = swift_allocObject();
      *(v25 + 16) = a2;
      *v172 = &type metadata for RowTemplateConditionalParameterState.EnumerationKey;
      *&v172[8] = v20;
      *&v172[16] = v19;
      *&v172[24] = &unk_1CA98F8B0;
      *&v172[32] = v24;
      *&v172[40] = sub_1CA610A54;
      *&v172[48] = v25;
      *&v172[56] = &unk_1CA98F8B8;
      *&v172[64] = 0;
      sub_1CA6093D8(v172);
    }

    v26 = a2;

LABEL_16:
    OUTLINED_FUNCTION_72_5();
  }

  else
  {
    switch(a1)
    {
      case 0:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447360, &unk_1CA9826A0);
        v11 = swift_allocObject();
        *(v11 + 16) = xmmword_1CA97EDF0;
        *(v11 + 56) = &type metadata for HasValueOperator;
        *(v11 + 64) = sub_1CA60F140();
        *(v11 + 96) = &type metadata for HasNoValueOperator;
        *(v11 + 104) = sub_1CA60F194();
        goto LABEL_16;
      case 2:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447360, &unk_1CA9826A0);
        v33 = swift_allocObject();
        *(v33 + 16) = xmmword_1CA981300;
        *(v33 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4473F0, &unk_1CA991790);
        *(v33 + 64) = sub_1CA60F2E4();
        *(v33 + 32) = 0xD000000000000019;
        *(v33 + 40) = 0x80000001CA9B28F0;
        *(v33 + 48) = 0;
        *(v33 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447400, &unk_1CA98F880);
        *(v33 + 104) = sub_1CA60F360();
        *(v33 + 72) = 0xD000000000000019;
        *(v33 + 80) = 0x80000001CA9B28F0;
        *(v33 + 88) = 0;
        *(v33 + 136) = &type metadata for HasValueOperator;
        *(v33 + 144) = sub_1CA60F140();
        *(v33 + 176) = &type metadata for HasNoValueOperator;
        *(v33 + 184) = sub_1CA60F194();
        v34 = OUTLINED_FUNCTION_79_5();
        *(v33 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444E20, &unk_1CA9917A0);
        *(v33 + 224) = sub_1CA60F3DC();
        *(v33 + 192) = 0xD000000000000019;
        *(v33 + 200) = 0x80000001CA9B28F0;
        *(v33 + 208) = 0;
        *(v33 + 209) = v34;
        v35 = OUTLINED_FUNCTION_79_5();
        *(v33 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447420, &unk_1CA98F890);
        *(v33 + 264) = sub_1CA60F458();
        *(v33 + 232) = 0xD000000000000019;
        *(v33 + 240) = 0x80000001CA9B28F0;
        *(v33 + 248) = 0;
        *(v33 + 249) = v35;
        v36 = OUTLINED_FUNCTION_79_5();
        *(v33 + 296) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447430, &qword_1CA9917B0);
        *(v33 + 304) = sub_1CA60F4D4();
        *(v33 + 272) = 0xD000000000000019;
        *(v33 + 280) = 0x80000001CA9B28F0;
        *(v33 + 288) = 0;
        *(v33 + 289) = v36;
        v37 = OUTLINED_FUNCTION_79_5();
        *(v33 + 336) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447440, &qword_1CA98F8A0);
        *(v33 + 344) = sub_1CA60F550();
        *(v33 + 312) = 0xD000000000000019;
        *(v33 + 320) = 0x80000001CA9B28F0;
        *(v33 + 328) = 0;
        *(v33 + 329) = v37;
        goto LABEL_16;
      case 3:
        v44 = [a2 minimumValue];
        if (!v44)
        {
          goto LABEL_50;
        }

        v45 = v44;
        v46 = [a2 maximumValue];
        if (v46)
        {
          v47 = v46;
          v48 = v45;
          v49 = v47;
          sub_1CA60A84C(0x65646E756F424657, 0xEF7265626D754E64, v48, v49, 0xD000000000000016, 0x80000001CA9D5410, v48, v49, a2);

LABEL_32:
          goto LABEL_16;
        }

LABEL_50:
        OUTLINED_FUNCTION_14_29();
        OUTLINED_FUNCTION_72_5();

        sub_1CA60AEFC(v134, v135, v136, v137, v138, v139, v140);
        break;
      case 4:
        v50 = [a2 displayableTimeUnits];
        v51 = [a2 comparableTimeUnits];
        *&v167 = 0x657461444657;
        *(&v167 + 1) = 0xE600000000000000;
        *&v168 = v50;
        *(&v168 + 1) = v51;
        v169 = 0u;
        v170 = 0u;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447360, &unk_1CA9826A0);
        v52 = swift_allocObject();
        *(v52 + 16) = xmmword_1CA981380;
        *(v52 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447C20, &unk_1CA991670);
        *(v52 + 64) = sub_1CA60F008();
        v53 = swift_allocObject();
        *(v52 + 32) = v53;
        OUTLINED_FUNCTION_40_8(v53, v54, v55, v56, v57, v58, v59, v60, v145, v150, v155, v160, *(&v160 + 1), v161, v162, v163, v164, v165, v166, v167, v168, v61, v169);
        *(v52 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447C30, &unk_1CA98F860);
        *(v52 + 104) = sub_1CA60F084();
        v62 = swift_allocObject();
        *(v52 + 72) = v62;
        OUTLINED_FUNCTION_40_8(v62, v63, v64, v65, v66, v67, v68, v69, v146, v151, v156, v160, *(&v160 + 1), v161, v162, v163, v164, v165, v166, v167, v168, v70, v169);
        *(v52 + 136) = &type metadata for HasValueOperator;
        *(v52 + 144) = sub_1CA60F140();
        *(v52 + 176) = &type metadata for HasNoValueOperator;
        *(v52 + 184) = sub_1CA60F194();
        *&__src[7] = v167;
        *&__src[23] = v168;
        *&__src[39] = v169;
        *&__src[55] = v170;
        *(v52 + 216) = &type metadata for DateOrderedComparisonOperator;
        v71 = sub_1CA60F1E8();
        *(v52 + 224) = v71;
        OUTLINED_FUNCTION_70_11();
        v72 = swift_allocObject();
        *(v52 + 192) = v72;
        *(v72 + 16) = 1;
        memcpy((v72 + 17), __src, 0x47uLL);
        *&v172[7] = v167;
        *&v172[23] = v168;
        *&v172[39] = v169;
        *&v172[55] = v170;
        *(v52 + 256) = &type metadata for DateOrderedComparisonOperator;
        *(v52 + 264) = v71;
        OUTLINED_FUNCTION_70_11();
        v73 = swift_allocObject();
        *(v52 + 232) = v73;
        *(v73 + 16) = 0;
        v74 = memcpy((v73 + 17), v172, 0x47uLL);
        v82 = OUTLINED_FUNCTION_65_6(v74, v75, v76, v77, v78, v79, v80, v81, v147, v152, v157, v160, *(&v160 + 1), v161, v162, v163, v164, v165, v166, v167);
        v84 = sub_1CA5C3564(v82, v83);
        v92 = OUTLINED_FUNCTION_65_6(v84, v85, v86, v87, v88, v89, v90, v91, v148, v153, v158, v160, *(&v160 + 1), v161, v162, v163, v164, v165, v166, v167);
        v94 = sub_1CA5C3564(v92, v93);
        v102 = OUTLINED_FUNCTION_65_6(v94, v95, v96, v97, v98, v99, v100, v101, v149, v154, v159, v160, *(&v160 + 1), v161, v162, v163, v164, v165, v166, v167);
        sub_1CA5C3564(v102, v103);
        if ((v50 & 0x1C) != 0)
        {
          OUTLINED_FUNCTION_78_9();
          v52 = v104;
          v162 = &type metadata for DateIsTodayOperator;
          v163 = sub_1CA60F23C();
          *(v52 + 16) = 7;
          sub_1CA27F268(&v160, v52 + 272);
        }

        v115 = *(v52 + 16);
        v114 = *(v52 + 24);
        if (v115 >= v114 >> 1)
        {
          OUTLINED_FUNCTION_64(v114);
          OUTLINED_FUNCTION_78_9();
          v52 = v142;
        }

        v162 = &type metadata for DateBetweenComparisonOperator;
        v163 = sub_1CA60F290();
        v116 = swift_allocObject();
        *&v160 = v116;
        *(v116 + 16) = 0x657461444657;
        *(v116 + 24) = 0xE600000000000000;
        *(v116 + 32) = v50;
        *(v116 + 40) = v51;
        *(v116 + 48) = xmmword_1CA98EAF0;
        *(v116 + 64) = 0;
        *(v116 + 72) = 0;
        strcpy((v116 + 80), "WFAnotherDate");
        *(v116 + 94) = -4864;
        *(v116 + 96) = v50;
        *(v116 + 104) = v51;
        *(v116 + 112) = 0;
        *(v116 + 120) = 0;
        *(v116 + 128) = xmmword_1CA98EB00;
        *(v52 + 16) = v115 + 1;
        sub_1CA27F268(&v160, v52 + 40 * v115 + 32);
        v117 = [a2 tense];
        if ((v117 & 2) != 0)
        {
          v118 = [a2 displayableTimeUnits];
          v119 = [a2 comparableTimeUnits];
          v121 = *(v52 + 16);
          v120 = *(v52 + 24);
          if (v121 >= v120 >> 1)
          {
            OUTLINED_FUNCTION_64(v120);
            OUTLINED_FUNCTION_78_9();
            v52 = v143;
          }

          v122 = OUTLINED_FUNCTION_162();
          v162 = __swift_instantiateConcreteTypeFromMangledNameV2(v122, v123);
          v163 = sub_1CA276B98(&qword_1EC4473E8, &qword_1EC4473E0, &unk_1CA98F870);
          v124 = swift_allocObject();
          v125 = OUTLINED_FUNCTION_24_18(v124);
          *(v125 + 32) = v118;
          *(v125 + 40) = v119;
          *(v52 + 16) = v121 + 1;
          sub_1CA27F268(&v160, v52 + v121 * v126 + 32);
        }

        if (v117)
        {
          v127 = [a2 displayableTimeUnits];
          v128 = [a2 comparableTimeUnits];
          v130 = *(v52 + 16);
          v129 = *(v52 + 24);
          if (v130 >= v129 >> 1)
          {
            OUTLINED_FUNCTION_64(v129);
            OUTLINED_FUNCTION_78_9();
            v52 = v144;
          }

          v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4473D0, &qword_1CA98CDD8);
          v163 = sub_1CA276B98(&qword_1EC4473D8, &qword_1EC4473D0, &qword_1CA98CDD8);
          v131 = swift_allocObject();
          v132 = OUTLINED_FUNCTION_24_18(v131);
          *(v132 + 32) = v127;
          *(v132 + 40) = v128;
          *(v52 + 16) = v130 + 1;
          sub_1CA27F268(&v160, v52 + v130 * v133 + 32);
        }

        goto LABEL_16;
      case 5:
        v105 = [a2 unitType];
        v48 = [a2 unitType];
        v106 = OUTLINED_FUNCTION_15_23();
        sub_1CA60B460(v106, v107, v105, v108, 0x80000001CA9D5450, v48, a2);

        goto LABEL_32;
      case 6:
        OUTLINED_FUNCTION_15_23();
        OUTLINED_FUNCTION_72_5();

        sub_1CA60BFE8(v27, v28, v29, v30, v31);
        return;
      case 7:
        sub_1CA60B9E4(0x6974617275444657, 0xEA00000000006E6FLL, [a2 displayableTimeUnits], objc_msgSend(a2, sel_comparableTimeUnits), 0xD000000000000011, 0x80000001CA9D5430, objc_msgSend(a2, sel_displayableTimeUnits), objc_msgSend(a2, sel_comparableTimeUnits), a2);
        goto LABEL_16;
      case 8:
        OUTLINED_FUNCTION_76_7();
        __break(1u);
        return;
      case 9:
        v38 = [a2 variable];
        if (v38)
        {
          v39 = v38;
          objc_opt_self();
          OUTLINED_FUNCTION_5_3();
          v40 = swift_dynamicCastObjCClass();
          if (v40 && (v41 = [v40 action]) != 0)
          {
            v42 = v41;
            v43 = [v41 outputsMultipleItems];
          }

          else
          {
            v43 = 0;
          }
        }

        else
        {
          v43 = 0;
        }

        v109 = [a2 variable];
        if (v109)
        {
          v110 = v109;
          objc_opt_self();
          v111 = OUTLINED_FUNCTION_36_6() != 0;

          v43 |= v111;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447360, &unk_1CA9826A0);
        v112 = swift_allocObject();
        *(v112 + 16) = xmmword_1CA97EDF0;
        *(v112 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447368, &qword_1CA98F848);
        *(v112 + 64) = sub_1CA60EF10();
        *(v112 + 32) = 0x7070414657;
        *(v112 + 40) = 0xE500000000000000;
        v113 = v43 & 1;
        *(v112 + 48) = v113;
        *(v112 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447378, &unk_1CA98F850);
        *(v112 + 104) = sub_1CA60EF8C();
        *(v112 + 72) = 0x7070414657;
        *(v112 + 80) = 0xE500000000000000;
        *(v112 + 88) = v113;
        goto LABEL_16;
      default:
        goto LABEL_16;
    }
  }
}

uint64_t RowTemplateConditionalParameterState.hash(into:)(void *a1)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[5];
  sub_1CA94D938();
  if (v5)
  {
    v6 = v5;
    OUTLINED_FUNCTION_87();
    sub_1CA94CFE8();
  }

  MEMORY[0x1CCAA2780](v4);
  v13 = sub_1CA42AD5C(v3);
  sub_1CA60317C(&v13);
  v7 = *(v13 + 16);
  if (v7)
  {
    v8 = (v13 + 48);
    do
    {
      v9 = *(v8 - 2);
      v10 = *(v8 - 1);
      v11 = *v8;
      v8 += 3;
      sub_1CA94C218();
      swift_unknownObjectRetain();
      OUTLINED_FUNCTION_23();
      sub_1CA94C458();

      MEMORY[0x1CCAA2780]([v11 hash]);
      swift_unknownObjectRelease();
      --v7;
    }

    while (v7);
  }
}

void static RowTemplateConditionalParameterState.== infix(_:_:)()
{
  OUTLINED_FUNCTION_37_0();
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[5];
  v6 = *v4;
  v5 = v4[1];
  v7 = v4[5];
  if (v3)
  {
    if (!v7)
    {
      goto LABEL_29;
    }

    sub_1CA25B3D0(0, &qword_1EC447190, off_1E836E020);
    v8 = v7;
    v9 = v3;
    v10 = sub_1CA94CFD8();

    if ((v10 & 1) == 0 || v2 != v6)
    {
      goto LABEL_29;
    }
  }

  else
  {
    if (v7)
    {
      v11 = 0;
    }

    else
    {
      v11 = v2 == v6;
    }

    if (!v11)
    {
      goto LABEL_29;
    }
  }

  swift_bridgeObjectRetain_n();
  sub_1CA94C218();
  v12 = sub_1CA60C7CC(v1, v5);

  if ((v12 & 1) == 0)
  {

LABEL_29:
    OUTLINED_FUNCTION_36();
    return;
  }

  v13 = 0;
  v14 = *(v1 + 64);
  v15 = *(v1 + 32);
  OUTLINED_FUNCTION_5_5();
  v18 = v17 & v16;
  v20 = (v19 + 63) >> 6;
  v21 = &selRef_initWithIntentDescriptor_isSyncedFromOtherDevice_;
  while (v18)
  {
LABEL_18:
    v23 = __clz(__rbit64(v18)) | (v13 << 6);
    v24 = *(*(v1 + 56) + 8 * v23);
    if (*(v5 + 16))
    {
      v25 = (*(v1 + 48) + 16 * v23);
      v26 = *v25;
      v27 = v25[1];
      swift_unknownObjectRetain();
      sub_1CA94C218();
      v28 = sub_1CA271BF8();
      v30 = v29;

      if ((v30 & 1) == 0)
      {
        v31 = 0;
        v21 = &selRef_initWithIntentDescriptor_isSyncedFromOtherDevice_;
        goto LABEL_24;
      }

      v31 = *(*(v5 + 56) + 8 * v28);
      v21 = &selRef_initWithIntentDescriptor_isSyncedFromOtherDevice_;
    }

    else
    {
      v31 = 0;
      v32 = *(*(v1 + 56) + 8 * v23);
    }

    swift_unknownObjectRetain();
LABEL_24:
    v18 &= v18 - 1;
    v33 = [v24 v21[489]];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if ((v33 & 1) == 0)
    {
LABEL_28:

      goto LABEL_29;
    }
  }

  while (1)
  {
    v22 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v22 >= v20)
    {
      goto LABEL_28;
    }

    v18 = *(v1 + 64 + 8 * v22);
    ++v13;
    if (v18)
    {
      v13 = v22;
      goto LABEL_18;
    }
  }

  __break(1u);
}

BOOL RowTemplateConditionalParameterState.isBoolean.getter()
{
  v1 = v0[5];
  v2 = OUTLINED_FUNCTION_87();
  v3 = sub_1CA6048D4(v2);

  return v3 == 1;
}

uint64_t RowTemplateConditionalParameterState.operators.getter()
{
  v1 = v0[5];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = v1;
  v3 = OUTLINED_FUNCTION_87();
  v4 = sub_1CA6048D4(v3);
  sub_1CA607C68(v4, v0);
  v6 = sub_1CA360EB0(v5);

  return v6;
}

uint64_t RowTemplateConditionalParameterState.hashValue.getter()
{
  v0 = OUTLINED_FUNCTION_63_10();
  v7 = v1;
  v8 = v2;
  v9 = v3;
  v10 = v0;
  v11 = v4;
  sub_1CA94D918();
  RowTemplateConditionalParameterState.hash(into:)(v6);
  return sub_1CA94D968();
}

uint64_t sub_1CA608F18(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1CA31555C;

  return RowTemplateConditionalParameterState.process(context:)(a1);
}

void (*sub_1CA608FDC(void *a1))(uint64_t a1, char a2)
{
  v2 = *(v1 + 40);
  *a1 = v2;
  a1[1] = v1;
  v3 = v2;
  return sub_1CA6049D8;
}

uint64_t sub_1CA609028@<X0>(uint64_t *a1@<X8>)
{
  result = RowTemplateConditionalParameterState.selectedOperator.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1CA609074()
{
  v1 = v0[1];
  v2 = *(v0 + 16);
  v3 = *(v0 + 3);
  v4 = v0[5];
  v7 = *v0;
  v8 = v1;
  v9 = v2;
  v10 = v3;
  v11 = v4;
  sub_1CA94D918();
  RowTemplateConditionalParameterState.hash(into:)(v6);
  return sub_1CA94D968();
}

uint64_t sub_1CA6090D8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447360, &unk_1CA9826A0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1CA981350;
  *(v2 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447450, &qword_1CA98F8F0);
  *(v2 + 64) = sub_1CA60F780();
  v3 = swift_allocObject();
  *(v2 + 32) = v3;
  v10 = *(a1 + 8);
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v6 = *(a1 + 64);
  memcpy((v3 + 16), a1, 0x48uLL);
  *(v2 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447460, &qword_1CA98F8F8);
  *(v2 + 104) = sub_1CA60F7FC();
  v7 = swift_allocObject();
  *(v2 + 72) = v7;
  memcpy((v7 + 16), a1, 0x48uLL);
  *(v2 + 136) = &type metadata for HasValueOperator;
  *(v2 + 144) = sub_1CA60F140();
  *(v2 + 176) = &type metadata for HasNoValueOperator;
  *(v2 + 184) = sub_1CA60F194();
  sub_1CA5A3E5C(&v10, v9);

  sub_1CA5A3E5C(&v10, v9);

  return v2;
}

uint64_t sub_1CA609258(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447360, &unk_1CA9826A0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1CA981350;
  *(v2 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447490, &qword_1CA98F910);
  *(v2 + 64) = sub_1CA60F878();
  v3 = swift_allocObject();
  *(v2 + 32) = v3;
  v10 = *(a1 + 8);
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v6 = *(a1 + 64);
  memcpy((v3 + 16), a1, 0x48uLL);
  *(v2 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4474A0, &qword_1CA98F918);
  *(v2 + 104) = sub_1CA60F8F4();
  v7 = swift_allocObject();
  *(v2 + 72) = v7;
  memcpy((v7 + 16), a1, 0x48uLL);
  *(v2 + 136) = &type metadata for HasValueOperator;
  *(v2 + 144) = sub_1CA60F140();
  *(v2 + 176) = &type metadata for HasNoValueOperator;
  *(v2 + 184) = sub_1CA60F194();
  sub_1CA5A3E5C(&v10, v9);

  sub_1CA5A3E5C(&v10, v9);

  return v2;
}

uint64_t sub_1CA6093D8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447360, &unk_1CA9826A0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1CA981350;
  *(v2 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4474B8, &qword_1CA98F920);
  *(v2 + 64) = sub_1CA60F970();
  v3 = swift_allocObject();
  *(v2 + 32) = v3;
  v10 = *(a1 + 8);
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v6 = *(a1 + 64);
  memcpy((v3 + 16), a1, 0x48uLL);
  *(v2 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4474C8, &qword_1CA98F928);
  *(v2 + 104) = sub_1CA60F9EC();
  v7 = swift_allocObject();
  *(v2 + 72) = v7;
  memcpy((v7 + 16), a1, 0x48uLL);
  *(v2 + 136) = &type metadata for HasValueOperator;
  *(v2 + 144) = sub_1CA60F140();
  *(v2 + 176) = &type metadata for HasNoValueOperator;
  *(v2 + 184) = sub_1CA60F194();
  sub_1CA5A3E5C(&v10, v9);

  sub_1CA5A3E5C(&v10, v9);

  return v2;
}

uint64_t sub_1CA609578()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_46_11();
  v3 = v0[19];
  v0[2] = v4;
  v0[7] = v0 + 18;
  OUTLINED_FUNCTION_53_13();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447478, &unk_1CA98F900);
  OUTLINED_FUNCTION_3_0(v5);
  v0[11] = 1107296256;
  OUTLINED_FUNCTION_5_43();
  [v3 getEnumerationPossibleStatesWithCompletionHandler_];

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1CA609654()
{
  OUTLINED_FUNCTION_0();
  v7 = *v0;
  v1 = *v0;
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1CA609888(uint64_t a1, uint64_t a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444F10, &qword_1CA98D960);
    v4 = sub_1CA94C658();
  }

  else
  {
    v4 = 0;
  }

  return sub_1CA5470D4(v3, v4);
}

uint64_t sub_1CA6098FC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = sub_1CA25B3D0(0, &qword_1EC447470, off_1E836E810);
  v3 = *(MEMORY[0x1E6996C50] + 4);
  v4 = swift_task_alloc();
  *(v1 + 24) = v4;
  *v4 = v1;
  v4[1] = sub_1CA6099B4;

  return MEMORY[0x1EEDF81A0](v2);
}

uint64_t sub_1CA6099B4()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  v5 = *(v4 + 24);
  *v3 = *v1;
  *(v2 + 32) = v6;

  if (v0)
  {
    OUTLINED_FUNCTION_2_4();

    return v7(0);
  }

  else
  {

    OUTLINED_FUNCTION_90();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }
}

uint64_t sub_1CA609AE0()
{
  OUTLINED_FUNCTION_6();
  if (*(v0 + 32))
  {
    v1 = *(v0 + 32);
    swift_unknownObjectRetain();
    objc_opt_self();
    OUTLINED_FUNCTION_5_3();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      v3 = *(v0 + 16);
      v4 = [v2 identifier];
      v5 = sub_1CA94C3A8();
      v7 = v6;

      if (v5 == sub_1CA94C3A8() && v7 == v8)
      {
        v10 = 1;
      }

      else
      {
        v10 = sub_1CA94D7F8();
      }
    }

    else
    {
      v10 = 0;
    }

    swift_unknownObjectRelease_n();
  }

  else
  {
    v10 = 0;
  }

  OUTLINED_FUNCTION_2_4();

  return v11(v10 & 1);
}

uint64_t sub_1CA609C24()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_46_11();
  v3 = v0[19];
  v0[2] = v4;
  v0[7] = v0 + 18;
  OUTLINED_FUNCTION_53_13();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447478, &unk_1CA98F900);
  OUTLINED_FUNCTION_3_0(v5);
  v0[11] = 1107296256;
  OUTLINED_FUNCTION_5_43();
  [v3 getEnumerationPossibleStatesWithCompletionHandler_];

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1CA609D00()
{
  OUTLINED_FUNCTION_0();
  v7 = *v0;
  v1 = *v0;
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1CA609F34(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = sub_1CA25B3D0(0, &qword_1EDB9F5E0, 0x1E696AD98);
  v3 = *(MEMORY[0x1E6996C50] + 4);
  v4 = swift_task_alloc();
  *(v1 + 24) = v4;
  *v4 = v1;
  v4[1] = sub_1CA609FEC;

  return MEMORY[0x1EEDF81A0](v2);
}

uint64_t sub_1CA609FEC()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  v5 = *(v4 + 24);
  *v3 = *v1;
  *(v2 + 32) = v6;

  if (v0)
  {
    OUTLINED_FUNCTION_2_4();

    return v7(0);
  }

  else
  {

    OUTLINED_FUNCTION_90();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }
}

uint64_t sub_1CA60A118()
{
  OUTLINED_FUNCTION_14();
  if (*(v0 + 32))
  {
    v1 = *(v0 + 32);
    swift_unknownObjectRetain();
    objc_opt_self();
    v2 = OUTLINED_FUNCTION_36_6();
    v3 = v2;
    if (v2)
    {
      v4 = *(v0 + 16);
      sub_1CA25B3D0(0, &qword_1EDB9F110, 0x1E69E58C0);
      OUTLINED_FUNCTION_134();
      v3 = sub_1CA94CFD8();
    }

    swift_unknownObjectRelease_n();
  }

  else
  {
    v3 = 0;
  }

  OUTLINED_FUNCTION_2_4();

  return v5(v3 & 1);
}

uint64_t sub_1CA60A204()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_46_11();
  v3 = v0[19];
  v0[2] = v4;
  v0[7] = v0 + 18;
  OUTLINED_FUNCTION_53_13();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447478, &unk_1CA98F900);
  OUTLINED_FUNCTION_3_0(v5);
  v0[11] = 1107296256;
  OUTLINED_FUNCTION_5_43();
  [v3 getEnumerationPossibleStatesWithCompletionHandler_];

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1CA60A2E0()
{
  OUTLINED_FUNCTION_0();
  v7 = *v0;
  v1 = *v0;
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1CA60A514(void *a1, void *a2)
{
  v3 = WFVariableSubstitutableParameterStateUpcast(a1);
  v4 = [a2 localizedLabelForEnumerationPossibleState_];

  if (!v4)
  {
    return 0;
  }

  v5 = sub_1CA94C3A8();

  return v5;
}

uint64_t sub_1CA60A59C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = sub_1CA25B3D0(0, &qword_1EDB9FAC0, 0x1E696AEC0);
  v3 = *(MEMORY[0x1E6996C50] + 4);
  v4 = swift_task_alloc();
  *(v1 + 24) = v4;
  *v4 = v1;
  v4[1] = sub_1CA60A654;

  return MEMORY[0x1EEDF81A0](v2);
}

uint64_t sub_1CA60A654()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  v5 = *(v4 + 24);
  *v3 = *v1;
  *(v2 + 32) = v6;

  if (v0)
  {
    OUTLINED_FUNCTION_2_4();

    return v7(0);
  }

  else
  {

    OUTLINED_FUNCTION_90();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }
}

uint64_t sub_1CA60A780()
{
  OUTLINED_FUNCTION_14();
  if (*(v0 + 32))
  {
    v1 = *(v0 + 32);
    swift_unknownObjectRetain();
    objc_opt_self();
    v2 = OUTLINED_FUNCTION_36_6();
    v3 = v2;
    if (v2)
    {
      v4 = *(v0 + 16);
      sub_1CA25B3D0(0, &qword_1EDB9F110, 0x1E69E58C0);
      OUTLINED_FUNCTION_134();
      v3 = sub_1CA94CFD8();
    }

    swift_unknownObjectRelease_n();
  }

  else
  {
    v3 = 0;
  }

  OUTLINED_FUNCTION_2_4();

  return v5(v3 & 1);
}

uint64_t sub_1CA60A84C(uint64_t a1, uint64_t a2, void *a3, void *a4, unint64_t a5, uint64_t a6, void *a7, void *a8, id a9)
{
  v77 = [a9 isIrrational];
  if (v77)
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    sub_1CA94C218();
    v14 = a3;
    v15 = a4;
    sub_1CA2E55BC();
    v13 = v16;
    v17 = *(v16 + 16);
    v18 = v17 + 1;
    if (v17 >= *(v16 + 24) >> 1)
    {
      sub_1CA2E55BC();
      v13 = v68;
    }

    v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4474E0, &qword_1CA98F930);
    v89 = sub_1CA60FAB4();
    v19 = swift_allocObject();
    *&v86 = v19;
    v19[2] = a1;
    v19[3] = a2;
    v19[4] = v14;
    v19[5] = v15;
    *(v13 + 16) = v18;
    sub_1CA27F268(&v86, v13 + 40 * v17 + 32);
    v20 = *(v13 + 24);
    sub_1CA94C218();
    v21 = v14;
    v22 = v15;
    if ((v17 + 2) > (v20 >> 1))
    {
      sub_1CA2E55BC();
      v13 = v69;
    }

    v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4474F0, &qword_1CA98F938);
    v89 = sub_1CA60FB30();
    v23 = swift_allocObject();
    *&v86 = v23;
    v23[2] = a1;
    v23[3] = a2;
    v23[4] = v21;
    v23[5] = v22;
    *(v13 + 16) = v17 + 2;
    sub_1CA27F268(&v86, v13 + 40 * v18 + 32);
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v61 = *(v13 + 16);
    sub_1CA2E55BC();
    v13 = v62;
  }

  v24 = *(v13 + 16);
  v25 = v24 + 1;
  if (v24 >= *(v13 + 24) >> 1)
  {
    sub_1CA2E55BC();
    v13 = v63;
  }

  v88 = &type metadata for HasValueOperator;
  v89 = sub_1CA60F140();
  *(v13 + 16) = v25;
  sub_1CA27F268(&v86, v13 + 40 * v24 + 32);
  v26 = v24 + 2;
  if ((v24 + 2) > *(v13 + 24) >> 1)
  {
    sub_1CA2E55BC();
    v13 = v64;
  }

  v88 = &type metadata for HasNoValueOperator;
  v89 = sub_1CA60F194();
  *(v13 + 16) = v26;
  sub_1CA27F268(&v86, v13 + 40 * v25 + 32);
  v27 = *(v13 + 24);
  v28 = v24 + 3;
  sub_1CA94C218();
  v29 = a3;
  v30 = a4;
  if ((v24 + 3) > (v27 >> 1))
  {
    sub_1CA2E55BC();
    v13 = v65;
  }

  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447500, &qword_1CA98F940);
  v88 = v76;
  v31 = sub_1CA60FBEC();
  v89 = v31;
  v32 = swift_allocObject();
  *&v86 = v32;
  *(v32 + 16) = 2;
  v33 = a1;
  *(v32 + 24) = a1;
  *(v32 + 32) = a2;
  *(v32 + 40) = v29;
  *(v32 + 48) = v30;
  *(v13 + 16) = v28;
  sub_1CA27F268(&v86, v13 + 40 * v26 + 32);
  if ((v77 & 1) == 0)
  {
    v34 = *(v13 + 24);
    v35 = v24 + 4;
    sub_1CA94C218();
    v72 = v29;
    v36 = v30;
    if (v35 > (v34 >> 1))
    {
      sub_1CA2E55BC();
      v13 = v70;
    }

    v88 = v76;
    v89 = v31;
    v37 = swift_allocObject();
    *&v86 = v37;
    *(v37 + 16) = 3;
    *(v37 + 24) = a1;
    *(v37 + 32) = a2;
    *(v37 + 40) = v72;
    *(v37 + 48) = v36;
    *(v13 + 16) = v35;
    sub_1CA27F268(&v86, v13 + 40 * v28 + 32);
  }

  v38 = *(v13 + 16);
  v39 = *(v13 + 24);
  v40 = v38 + 1;
  sub_1CA94C218();
  v41 = v29;
  v42 = v30;
  if (v38 >= v39 >> 1)
  {
    sub_1CA2E55BC();
    v13 = v66;
  }

  v88 = v76;
  v89 = v31;
  v43 = swift_allocObject();
  *&v86 = v43;
  *(v43 + 16) = 0;
  v44 = a2;
  *(v43 + 24) = a1;
  *(v43 + 32) = a2;
  *(v43 + 40) = v41;
  *(v43 + 48) = v42;
  *(v13 + 16) = v40;
  sub_1CA27F268(&v86, v13 + 40 * v38 + 32);
  if (v77)
  {
    v45 = a1;
  }

  else
  {
    v46 = *(v13 + 24);
    v47 = v38 + 2;
    sub_1CA94C218();
    v78 = v41;
    v48 = v42;
    v49 = v40;
    if (v47 > (v46 >> 1))
    {
      sub_1CA2E55BC();
      v13 = v71;
    }

    v88 = v76;
    v89 = v31;
    v50 = swift_allocObject();
    *&v86 = v50;
    *(v50 + 16) = 1;
    v45 = v33;
    *(v50 + 24) = v33;
    *(v50 + 32) = a2;
    *(v50 + 40) = v78;
    *(v50 + 48) = v48;
    *(v13 + 16) = v47;
    v44 = a2;
    sub_1CA27F268(&v86, v13 + 40 * v49 + 32);
  }

  v51 = *(v13 + 16);
  v52 = *(v13 + 24);
  sub_1CA94C218();
  v53 = v41;
  v54 = v42;
  sub_1CA94C218();
  v55 = a7;
  v56 = a8;
  if (v51 >= v52 >> 1)
  {
    sub_1CA2E55BC();
    v13 = v67;
  }

  *&v82 = v45;
  *(&v82 + 1) = v44;
  *&v83 = v53;
  *(&v83 + 1) = v54;
  *&v84 = a5;
  *(&v84 + 1) = a6;
  *&v85 = v55;
  *(&v85 + 1) = v56;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447510, &qword_1CA98F948);
  v89 = sub_1CA60FC68();
  v57 = swift_allocObject();
  *&v86 = v57;
  v58 = v83;
  v57[1] = v82;
  v57[2] = v58;
  v59 = v85;
  v57[3] = v84;
  v57[4] = v59;
  *(v13 + 16) = v51 + 1;
  sub_1CA27F268(&v86, v13 + 40 * v51 + 32);
  *&v86 = v45;
  *(&v86 + 1) = v44;
  v87 = v53;
  v88 = v54;
  v89 = a5;
  v90 = a6;
  v91 = v55;
  v92 = v56;
  sub_1CA6102B4(&v82, v81, &qword_1EC447510, &qword_1CA98F948);
  sub_1CA30F7DC(&v86, &qword_1EC447510, &qword_1CA98F948);
  return v13;
}

uint64_t sub_1CA60AEFC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6, id a7)
{
  v54 = [a7 isIrrational];
  if (v54)
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    sub_1CA94C218();
    sub_1CA2E55BC();
    v11 = v12;
    v13 = *(v12 + 16);
    v14 = v13 + 1;
    if (v13 >= *(v12 + 24) >> 1)
    {
      sub_1CA2E55BC();
      v11 = v47;
    }

    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444E40, &qword_1CA98F950);
    v58 = sub_1CA60FCE4();
    *&v55 = a1;
    *(&v55 + 1) = a2;
    v56 = a3 & 1;
    *(v11 + 16) = v14;
    sub_1CA27F268(&v55, v11 + 40 * v13 + 32);
    v15 = *(v11 + 24);
    v16 = v13 + 2;
    sub_1CA94C218();
    if (v16 > (v15 >> 1))
    {
      sub_1CA2E55BC();
      v11 = v48;
    }

    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447530, &unk_1CA98F958);
    v58 = sub_1CA60FD60();
    *&v55 = a1;
    *(&v55 + 1) = a2;
    v56 = a3 & 1;
    *(v11 + 16) = v16;
    sub_1CA27F268(&v55, v11 + 40 * v14 + 32);
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v40 = *(v11 + 16);
    sub_1CA2E55BC();
    v11 = v41;
  }

  v17 = *(v11 + 16);
  v18 = v17 + 1;
  if (v17 >= *(v11 + 24) >> 1)
  {
    sub_1CA2E55BC();
    v11 = v42;
  }

  v57 = &type metadata for HasValueOperator;
  v58 = sub_1CA60F140();
  *(v11 + 16) = v18;
  sub_1CA27F268(&v55, v11 + 40 * v17 + 32);
  v19 = v17 + 2;
  if ((v17 + 2) > *(v11 + 24) >> 1)
  {
    sub_1CA2E55BC();
    v11 = v43;
  }

  v57 = &type metadata for HasNoValueOperator;
  v58 = sub_1CA60F194();
  *(v11 + 16) = v19;
  sub_1CA27F268(&v55, v11 + 40 * v18 + 32);
  v20 = *(v11 + 24);
  v21 = v17 + 3;
  sub_1CA94C218();
  if ((v17 + 3) > (v20 >> 1))
  {
    sub_1CA2E55BC();
    v11 = v44;
  }

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444E30, &unk_1CA985F40);
  v57 = v22;
  v23 = sub_1CA60FDDC();
  v58 = v23;
  v24 = swift_allocObject();
  *&v55 = v24;
  *(v24 + 16) = 2;
  *(v24 + 24) = a1;
  *(v24 + 32) = a2;
  v25 = a3 & 1;
  *(v24 + 40) = v25;
  *(v11 + 16) = v21;
  sub_1CA27F268(&v55, v11 + 40 * v19 + 32);
  v51 = a1;
  if ((v54 & 1) == 0)
  {
    v26 = a5;
    v27 = *(v11 + 24);
    sub_1CA94C218();
    if ((v17 + 4) > (v27 >> 1))
    {
      sub_1CA2E55BC();
      v11 = v49;
    }

    a5 = v26;
    v57 = v22;
    v58 = v23;
    v28 = swift_allocObject();
    *&v55 = v28;
    *(v28 + 16) = 3;
    a1 = v51;
    *(v28 + 24) = v51;
    *(v28 + 32) = a2;
    *(v28 + 40) = v25;
    *(v11 + 16) = v17 + 4;
    sub_1CA27F268(&v55, v11 + 40 * v21 + 32);
  }

  v29 = *(v11 + 16);
  v30 = *(v11 + 24);
  v31 = v29 + 1;
  sub_1CA94C218();
  if (v29 >= v30 >> 1)
  {
    sub_1CA2E55BC();
    v11 = v45;
  }

  v57 = v22;
  v58 = v23;
  v32 = swift_allocObject();
  *&v55 = v32;
  *(v32 + 16) = 0;
  *(v32 + 24) = a1;
  *(v32 + 32) = a2;
  *(v32 + 40) = v25;
  *(v11 + 16) = v31;
  sub_1CA27F268(&v55, v11 + 40 * v29 + 32);
  if ((v54 & 1) == 0)
  {
    v33 = a5;
    v34 = *(v11 + 24);
    sub_1CA94C218();
    if ((v29 + 2) > (v34 >> 1))
    {
      sub_1CA2E55BC();
      v11 = v50;
    }

    a5 = v33;
    v57 = v22;
    v58 = v23;
    v35 = swift_allocObject();
    *&v55 = v35;
    *(v35 + 16) = 1;
    a1 = v51;
    *(v35 + 24) = v51;
    *(v35 + 32) = a2;
    *(v35 + 40) = v25;
    *(v11 + 16) = v29 + 2;
    sub_1CA27F268(&v55, v11 + 40 * v31 + 32);
  }

  v36 = *(v11 + 16);
  v37 = *(v11 + 24);
  sub_1CA94C218();
  sub_1CA94C218();
  if (v36 >= v37 >> 1)
  {
    sub_1CA2E55BC();
    v11 = v46;
  }

  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447550, &qword_1CA98F968);
  v58 = sub_1CA60FE58();
  v38 = swift_allocObject();
  *&v55 = v38;
  *(v38 + 16) = a1;
  *(v38 + 24) = a2;
  *(v38 + 32) = v25;
  *(v38 + 40) = a4;
  *(v38 + 48) = a5;
  *(v38 + 56) = a6 & 1;
  *(v11 + 16) = v36 + 1;
  sub_1CA27F268(&v55, v11 + 40 * v36 + 32);
  return v11;
}

uint64_t sub_1CA60B460(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, id a7)
{
  v59 = [a7 isIrrational];
  if (v59)
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v11 = a3;
    sub_1CA94C218();
    sub_1CA2E55BC();
    v10 = v12;
    v13 = *(v12 + 16);
    v14 = v13 + 1;
    if (v13 >= *(v12 + 24) >> 1)
    {
      sub_1CA2E55BC();
      v10 = v52;
    }

    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447560, &qword_1CA98F970);
    *&v61 = a1;
    *(&v61 + 1) = a2;
    v64 = sub_1CA60FED4();
    v62 = a3;
    *(v10 + 16) = v14;
    sub_1CA27F268(&v61, v10 + 40 * v13 + 32);
    v15 = *(v10 + 24);
    v16 = v13 + 2;
    sub_1CA94C218();
    v17 = v11;
    if (v16 > (v15 >> 1))
    {
      sub_1CA2E55BC();
      v10 = v53;
    }

    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447570, &qword_1CA98F978);
    v18 = sub_1CA60FF50();
    *&v61 = a1;
    *(&v61 + 1) = a2;
    v64 = v18;
    v62 = a3;
    *(v10 + 16) = v16;
    sub_1CA27F268(&v61, v10 + 40 * v14 + 32);
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v45 = *(v10 + 16);
    sub_1CA2E55BC();
    v10 = v46;
  }

  v19 = *(v10 + 16);
  v20 = v19 + 1;
  if (v19 >= *(v10 + 24) >> 1)
  {
    sub_1CA2E55BC();
    v10 = v47;
  }

  v63 = &type metadata for HasValueOperator;
  v64 = sub_1CA60F140();
  *(v10 + 16) = v20;
  sub_1CA27F268(&v61, v10 + 40 * v19 + 32);
  v21 = v19 + 2;
  v58 = a6;
  if ((v19 + 2) > *(v10 + 24) >> 1)
  {
    sub_1CA2E55BC();
    v10 = v48;
  }

  v63 = &type metadata for HasNoValueOperator;
  v64 = sub_1CA60F194();
  *(v10 + 16) = v21;
  sub_1CA27F268(&v61, v10 + 40 * v20 + 32);
  v22 = *(v10 + 24);
  v23 = v19 + 3;
  sub_1CA94C218();
  v24 = a3;
  if ((v19 + 3) > (v22 >> 1))
  {
    sub_1CA2E55BC();
    v10 = v49;
  }

  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447580, &qword_1CA98F980);
  v63 = v25;
  v26 = sub_1CA60FFCC();
  v64 = v26;
  v27 = swift_allocObject();
  *&v61 = v27;
  *(v27 + 16) = 2;
  *(v27 + 24) = a1;
  *(v27 + 32) = a2;
  *(v27 + 40) = a3;
  *(v10 + 16) = v23;
  sub_1CA27F268(&v61, v10 + 40 * v21 + 32);
  if ((v59 & 1) == 0)
  {
    v28 = *(v10 + 24);
    sub_1CA94C218();
    v29 = v24;
    if ((v19 + 4) > (v28 >> 1))
    {
      sub_1CA2E55BC();
      v10 = v54;
    }

    v63 = v25;
    v64 = v26;
    v30 = swift_allocObject();
    *&v61 = v30;
    *(v30 + 16) = 3;
    *(v30 + 24) = a1;
    *(v30 + 32) = a2;
    *(v30 + 40) = a3;
    *(v10 + 16) = v19 + 4;
    sub_1CA27F268(&v61, v10 + 40 * v23 + 32);
  }

  v32 = *(v10 + 16);
  v31 = *(v10 + 24);
  v33 = v32 + 1;
  sub_1CA94C218();
  v34 = v24;
  if (v32 >= v31 >> 1)
  {
    sub_1CA2E55BC();
    v10 = v50;
  }

  v63 = v25;
  v64 = v26;
  v35 = swift_allocObject();
  *&v61 = v35;
  *(v35 + 16) = 0;
  *(v35 + 24) = a1;
  *(v35 + 32) = a2;
  *(v35 + 40) = a3;
  *(v10 + 16) = v33;
  sub_1CA27F268(&v61, v10 + 40 * v32 + 32);
  if ((v59 & 1) == 0)
  {
    v36 = *(v10 + 24);
    sub_1CA94C218();
    v37 = v34;
    if ((v32 + 2) > (v36 >> 1))
    {
      sub_1CA2E55BC();
      v10 = v55;
    }

    v63 = v25;
    v64 = v26;
    v38 = swift_allocObject();
    *&v61 = v38;
    *(v38 + 16) = 1;
    *(v38 + 24) = a1;
    *(v38 + 32) = a2;
    *(v38 + 40) = a3;
    *(v10 + 16) = v32 + 2;
    sub_1CA27F268(&v61, v10 + 40 * v33 + 32);
  }

  v39 = *(v10 + 16);
  v40 = *(v10 + 24);
  sub_1CA94C218();
  v41 = v34;
  sub_1CA94C218();
  v42 = v58;
  if (v39 >= v40 >> 1)
  {
    sub_1CA2E55BC();
    v10 = v51;
  }

  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447590, &qword_1CA98F988);
  v64 = sub_1CA610048();
  v43 = swift_allocObject();
  *&v61 = v43;
  v43[2] = a1;
  v43[3] = a2;
  v43[4] = a3;
  v43[5] = a4;
  v43[6] = a5;
  v43[7] = v58;
  *(v10 + 16) = v39 + 1;
  sub_1CA27F268(&v61, v10 + 40 * v39 + 32);
  return v10;
}

uint64_t sub_1CA60B9E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  *&v57 = a7;
  *(&v57 + 1) = a8;
  *&v59 = a3;
  *(&v59 + 1) = a4;
  v11 = [a9 isIrrational];
  if (v11)
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    sub_1CA94C218();
    sub_1CA2E55BC();
    v12 = v13;
    v14 = *(v13 + 16);
    v15 = v14 + 1;
    if (v14 >= *(v13 + 24) >> 1)
    {
      sub_1CA2E55BC();
      v12 = v52;
    }

    *(&v65 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4475A0, &qword_1CA98F990);
    v66 = sub_1CA6100C4();
    v16 = swift_allocObject();
    *&v64 = v16;
    *(v16 + 16) = a1;
    *(v16 + 24) = a2;
    *(v16 + 32) = v59;
    *(v12 + 16) = v15;
    sub_1CA27F268(&v64, v12 + 40 * v14 + 32);
    v17 = *(v12 + 24);
    v18 = v14 + 2;
    sub_1CA94C218();
    if (v18 > (v17 >> 1))
    {
      sub_1CA2E55BC();
      v12 = v53;
    }

    *(&v65 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4475B0, &qword_1CA98F998);
    v66 = sub_1CA610140();
    v19 = swift_allocObject();
    *&v64 = v19;
    *(v19 + 16) = a1;
    *(v19 + 24) = a2;
    *(v19 + 32) = v59;
    *(v12 + 16) = v18;
    sub_1CA27F268(&v64, v12 + 40 * v15 + 32);
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v45 = *(v12 + 16);
    sub_1CA2E55BC();
    v12 = v46;
  }

  v20 = *(v12 + 16);
  v21 = v20 + 1;
  if (v20 >= *(v12 + 24) >> 1)
  {
    sub_1CA2E55BC();
    v12 = v47;
  }

  *(&v65 + 1) = &type metadata for HasValueOperator;
  v66 = sub_1CA60F140();
  *(v12 + 16) = v21;
  sub_1CA27F268(&v64, v12 + 40 * v20 + 32);
  v22 = v20 + 2;
  if ((v20 + 2) > *(v12 + 24) >> 1)
  {
    sub_1CA2E55BC();
    v12 = v48;
  }

  *(&v65 + 1) = &type metadata for HasNoValueOperator;
  v66 = sub_1CA60F194();
  *(v12 + 16) = v22;
  sub_1CA27F268(&v64, v12 + 40 * v21 + 32);
  v23 = *(v12 + 24);
  v24 = v20 + 3;
  sub_1CA94C218();
  if ((v20 + 3) > (v23 >> 1))
  {
    sub_1CA2E55BC();
    v12 = v49;
  }

  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4475C0, &qword_1CA98F9A0);
  *(&v65 + 1) = v25;
  v26 = sub_1CA6101BC();
  v66 = v26;
  v27 = swift_allocObject();
  *&v64 = v27;
  *(v27 + 16) = 2;
  *(v27 + 24) = a1;
  *(v27 + 32) = a2;
  *(v27 + 40) = v59;
  *(v12 + 16) = v24;
  sub_1CA27F268(&v64, v12 + 40 * v22 + 32);
  if (v11)
  {
    v28 = a2;
  }

  else
  {
    v29 = a1;
    v30 = *(v12 + 24);
    v31 = v20 + 4;
    sub_1CA94C218();
    v28 = a2;
    if (v31 > (v30 >> 1))
    {
      sub_1CA2E55BC();
      v12 = v54;
    }

    *(&v65 + 1) = v25;
    v66 = v26;
    v32 = swift_allocObject();
    *&v64 = v32;
    *(v32 + 16) = 3;
    a1 = v29;
    *(v32 + 24) = v29;
    *(v32 + 32) = a2;
    *(v32 + 40) = v59;
    *(v12 + 16) = v31;
    sub_1CA27F268(&v64, v12 + 40 * v24 + 32);
  }

  v33 = *(v12 + 16);
  v34 = *(v12 + 24);
  v35 = v33 + 1;
  sub_1CA94C218();
  if (v33 >= v34 >> 1)
  {
    sub_1CA2E55BC();
    v12 = v50;
  }

  *(&v65 + 1) = v25;
  v66 = v26;
  v36 = swift_allocObject();
  *&v64 = v36;
  *(v36 + 16) = 0;
  *(v36 + 24) = a1;
  *(v36 + 32) = v28;
  *(v36 + 40) = v59;
  *(v12 + 16) = v35;
  sub_1CA27F268(&v64, v12 + 40 * v33 + 32);
  if ((v11 & 1) == 0)
  {
    v37 = *(v12 + 24);
    v38 = v33 + 2;
    sub_1CA94C218();
    if (v38 > (v37 >> 1))
    {
      sub_1CA2E55BC();
      v12 = v55;
    }

    *(&v65 + 1) = v25;
    v66 = v26;
    v39 = swift_allocObject();
    *&v64 = v39;
    *(v39 + 16) = 1;
    *(v39 + 24) = a1;
    *(v39 + 32) = v28;
    *(v39 + 40) = v59;
    *(v12 + 16) = v38;
    sub_1CA27F268(&v64, v12 + 40 * v35 + 32);
  }

  v41 = *(v12 + 16);
  v40 = *(v12 + 24);
  sub_1CA94C218();
  sub_1CA94C218();
  if (v41 >= v40 >> 1)
  {
    sub_1CA2E55BC();
    v12 = v51;
  }

  *&v61[0] = a1;
  *(&v61[0] + 1) = v28;
  v61[1] = v59;
  *&v62 = a5;
  *(&v62 + 1) = a6;
  v63 = v57;
  *(&v65 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4475D0, &qword_1CA98F9A8);
  v66 = sub_1CA610238();
  v42 = swift_allocObject();
  *&v64 = v42;
  v42[1] = v61[0];
  v42[2] = v59;
  v43 = v63;
  v42[3] = v62;
  v42[4] = v43;
  *(v12 + 16) = v41 + 1;
  sub_1CA27F268(&v64, v12 + 40 * v41 + 32);
  *&v64 = a1;
  *(&v64 + 1) = v28;
  v65 = v59;
  v66 = a5;
  v67 = a6;
  v68 = v57;
  sub_1CA6102B4(v61, v60, &qword_1EC4475D0, &qword_1CA98F9A8);
  sub_1CA30F7DC(&v64, &qword_1EC4475D0, &qword_1CA98F9A8);
  return v12;
}

uint64_t sub_1CA60BFE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, id a5)
{
  v8 = [a5 isIrrational];
  if (v8)
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    sub_1CA94C218();
    sub_1CA2E55BC();
    v9 = v10;
    v11 = *(v10 + 16);
    v12 = v11 + 1;
    if (v11 >= *(v10 + 24) >> 1)
    {
      sub_1CA2E55BC();
      v9 = v37;
    }

    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4475E0, &qword_1CA98F9B0);
    v46 = sub_1CA610318();
    *&v43 = a1;
    *(&v43 + 1) = a2;
    *(v9 + 16) = v12;
    sub_1CA27F268(&v43, v9 + 40 * v11 + 32);
    v13 = *(v9 + 24);
    sub_1CA94C218();
    if ((v11 + 2) > (v13 >> 1))
    {
      sub_1CA2E55BC();
      v9 = v38;
    }

    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4475F0, &qword_1CA98F9B8);
    v46 = sub_1CA610394();
    *&v43 = a1;
    *(&v43 + 1) = a2;
    *(v9 + 16) = v11 + 2;
    sub_1CA27F268(&v43, v9 + 40 * v12 + 32);
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v30 = *(v9 + 16);
    sub_1CA2E55BC();
    v9 = v31;
  }

  v14 = *(v9 + 16);
  v15 = v14 + 1;
  v42 = a4;
  if (v14 >= *(v9 + 24) >> 1)
  {
    sub_1CA2E55BC();
    v9 = v32;
  }

  v45 = &type metadata for HasValueOperator;
  v46 = sub_1CA60F140();
  *(v9 + 16) = v15;
  sub_1CA27F268(&v43, v9 + 40 * v14 + 32);
  v16 = v14 + 2;
  if ((v14 + 2) > *(v9 + 24) >> 1)
  {
    sub_1CA2E55BC();
    v9 = v33;
  }

  v45 = &type metadata for HasNoValueOperator;
  v46 = sub_1CA60F194();
  *(v9 + 16) = v16;
  sub_1CA27F268(&v43, v9 + 40 * v15 + 32);
  v17 = *(v9 + 24);
  v18 = v14 + 3;
  sub_1CA94C218();
  if ((v14 + 3) > (v17 >> 1))
  {
    sub_1CA2E55BC();
    v9 = v34;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447600, &qword_1CA98F9C0);
  v45 = v19;
  v20 = sub_1CA610410();
  v46 = v20;
  LOBYTE(v43) = 2;
  *(&v43 + 1) = a1;
  v44 = a2;
  *(v9 + 16) = v18;
  sub_1CA27F268(&v43, v9 + 40 * v16 + 32);
  if ((v8 & 1) == 0)
  {
    v21 = *(v9 + 24);
    sub_1CA94C218();
    if ((v14 + 4) > (v21 >> 1))
    {
      sub_1CA2E55BC();
      v9 = v39;
    }

    v45 = v19;
    v46 = v20;
    LOBYTE(v43) = 3;
    *(&v43 + 1) = a1;
    v44 = a2;
    *(v9 + 16) = v14 + 4;
    sub_1CA27F268(&v43, v9 + 40 * v18 + 32);
  }

  v23 = *(v9 + 16);
  v22 = *(v9 + 24);
  v24 = v23 + 1;
  sub_1CA94C218();
  if (v23 >= v22 >> 1)
  {
    sub_1CA2E55BC();
    v9 = v35;
  }

  v45 = v19;
  v46 = v20;
  LOBYTE(v43) = 0;
  *(&v43 + 1) = a1;
  v44 = a2;
  *(v9 + 16) = v24;
  sub_1CA27F268(&v43, v9 + 40 * v23 + 32);
  if ((v8 & 1) == 0)
  {
    v25 = *(v9 + 24);
    sub_1CA94C218();
    if ((v23 + 2) > (v25 >> 1))
    {
      sub_1CA2E55BC();
      v9 = v40;
    }

    v45 = v19;
    v46 = v20;
    LOBYTE(v43) = 1;
    *(&v43 + 1) = a1;
    v44 = a2;
    *(v9 + 16) = v23 + 2;
    sub_1CA27F268(&v43, v9 + 40 * v24 + 32);
  }

  v26 = *(v9 + 16);
  v27 = *(v9 + 24);
  sub_1CA94C218();
  sub_1CA94C218();
  if (v26 >= v27 >> 1)
  {
    sub_1CA2E55BC();
    v9 = v36;
  }

  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447610, &qword_1CA98F9C8);
  v46 = sub_1CA61048C();
  v28 = swift_allocObject();
  *&v43 = v28;
  v28[2] = a1;
  v28[3] = a2;
  v28[4] = a3;
  v28[5] = v42;
  *(v9 + 16) = v26 + 1;
  sub_1CA27F268(&v43, v9 + 40 * v26 + 32);
  return v9;
}

uint64_t sub_1CA60C498(void *a1)
{
  v1 = [a1 count];
  v26 = MEMORY[0x1E69E7CC0];
  sub_1CA2B8DF8(0, v1 & ~(v1 >> 63), 0);
  v2 = v26;
  v3 = sub_1CA948AF8();
  v4 = OUTLINED_FUNCTION_1_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1CA94CBC8();
  if (v1 < 0)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  v20[0] = v6;
  v20[1] = v20;
  if (v1)
  {
    sub_1CA60EEC4();
    do
    {
      result = sub_1CA94D148();
      if (!v24)
      {
        goto LABEL_15;
      }

      sub_1CA25B374(v23, &v21);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443A70, &unk_1CA9843A0);
      swift_dynamicCast();
      __swift_destroy_boxed_opaque_existential_0(v23);
      v12 = v25;
      v26 = v2;
      v14 = *(v2 + 16);
      v13 = *(v2 + 24);
      if (v14 >= v13 >> 1)
      {
        v15 = OUTLINED_FUNCTION_64(v13);
        sub_1CA2B8DF8(v15, v14 + 1, 1);
        v2 = v26;
      }

      *(v2 + 16) = v14 + 1;
      *(v2 + 8 * v14 + 32) = v12;
    }

    while (--v1);
  }

  sub_1CA60EEC4();
  while (1)
  {
    sub_1CA94D148();
    if (!v22)
    {
      break;
    }

    sub_1CA2C0A20(&v21, v23);
    sub_1CA25B374(v23, &v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443A70, &unk_1CA9843A0);
    swift_dynamicCast();
    __swift_destroy_boxed_opaque_existential_0(v23);
    v16 = v25;
    v26 = v2;
    v18 = *(v2 + 16);
    v17 = *(v2 + 24);
    if (v18 >= v17 >> 1)
    {
      v19 = OUTLINED_FUNCTION_64(v17);
      sub_1CA2B8DF8(v19, v18 + 1, 1);
      v2 = v26;
    }

    *(v2 + 16) = v18 + 1;
    *(v2 + 8 * v18 + 32) = v16;
  }

  (*(v20[0] + 8))(v10, v3);
  sub_1CA30F7DC(&v21, &unk_1EC444650, &unk_1CA981C70);
  return v2;
}

id sub_1CA60C764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1CA94C368();

  v6 = [v3 initWithPropertyName:v5 propertyUserInfo:a3];

  swift_unknownObjectRelease();
  return v6;
}

uint64_t sub_1CA60C7CC(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = *(a1 + 64);
  v5 = *(a1 + 32);
  OUTLINED_FUNCTION_5_5();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;
  result = sub_1CA94C218();
  v12 = 0;
  while (v8)
  {
LABEL_9:
    if (*(a2 + 16))
    {
      v14 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v15 = (*(a1 + 48) + ((v12 << 10) | (16 * v14)));
      v17 = *v15;
      v16 = v15[1];
      sub_1CA94C218();
      OUTLINED_FUNCTION_69();
      sub_1CA271BF8();
      LOBYTE(v17) = v18;

      if (v17)
      {
        continue;
      }
    }

    return 0;
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return 1;
    }

    v8 = *(a1 + 64 + 8 * v13);
    ++v12;
    if (v8)
    {
      v12 = v13;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CA60C8D8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1CA94D778();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447350, &unk_1CA981A30);
        v6 = sub_1CA94C6C8();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1CA60CAB8(v7, v8, a1, v4);
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
    return sub_1CA60C9DC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1CA60C9DC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 24 * a3 - 24;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 24 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *v12 && v10 == *(v12 + 8))
        {
          break;
        }

        result = sub_1CA94D7F8();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        v14 = *(v12 + 32);
        v15 = *(v12 + 16);
        result = *(v12 + 24);
        *(v12 + 24) = *v12;
        *(v12 + 40) = v15;
        *v12 = result;
        *(v12 + 8) = v14;
        v10 = v14;
        v12 -= 24;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 24;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1CA60CAB8(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v97 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = v7++;
      if (v7 < v6)
      {
        v10 = *a3;
        v11 = (*a3 + 24 * v7);
        v12 = *v11;
        v13 = v11[1];
        v14 = (*a3 + 24 * v9);
        if (v12 == *v14 && v13 == v14[1])
        {
          v16 = 0;
        }

        else
        {
          v16 = sub_1CA94D7F8();
        }

        v7 = v9 + 2;
        v17 = v10 + 24 * v9;
        v18 = 24 * v9;
        v19 = (v17 + 56);
        while (v7 < v6)
        {
          if (*(v19 - 1) == *(v19 - 4) && *v19 == *(v19 - 3))
          {
            if (v16)
            {
              goto LABEL_21;
            }
          }

          else if ((v16 ^ sub_1CA94D7F8()))
          {
            break;
          }

          ++v7;
          v19 += 3;
        }

        if ((v16 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v7 < v9)
        {
          goto LABEL_122;
        }

        if (v9 < v7)
        {
          v21 = 24 * v7;
          v22 = v7;
          v23 = v9;
          do
          {
            if (v23 != --v22)
            {
              v24 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v25 = (v24 + v18);
              v26 = v24 + v21;
              v27 = *v25;
              v28 = *(v25 + 1);
              v29 = *(v26 - 24);
              v25[2] = *(v26 - 8);
              *v25 = v29;
              *(v26 - 24) = v27;
              *(v26 - 16) = v28;
            }

            ++v23;
            v21 -= 24;
            v18 += 24;
          }

          while (v23 < v22);
        }
      }

LABEL_28:
      v30 = a3[1];
      if (v7 < v30)
      {
        if (__OFSUB__(v7, v9))
        {
          goto LABEL_121;
        }

        if (v7 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_123;
          }

          if (v9 + a4 >= v30)
          {
            v31 = a3[1];
          }

          else
          {
            v31 = v9 + a4;
          }

          if (v31 < v9)
          {
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
            return;
          }

          if (v7 != v31)
          {
            v32 = *a3;
            v33 = *a3 + 24 * v7 - 24;
            v94 = v9;
            v34 = v9 - v7;
            do
            {
              v35 = (v32 + 24 * v7);
              v36 = *v35;
              v37 = v35[1];
              v38 = v34;
              v39 = v33;
              do
              {
                v40 = v36 == *v39 && v37 == *(v39 + 8);
                if (v40 || (sub_1CA94D7F8() & 1) == 0)
                {
                  break;
                }

                if (!v32)
                {
                  goto LABEL_125;
                }

                v41 = *(v39 + 32);
                v42 = *(v39 + 16);
                v36 = *(v39 + 24);
                *(v39 + 24) = *v39;
                *(v39 + 40) = v42;
                *v39 = v36;
                *(v39 + 8) = v41;
                v37 = v41;
                v39 -= 24;
              }

              while (!__CFADD__(v38++, 1));
              ++v7;
              v33 += 24;
              --v34;
            }

            while (v7 != v31);
            v7 = v31;
            v9 = v94;
          }
        }
      }

      if (v7 < v9)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v88 = v8[2];
        sub_1CA2E49C0();
        v8 = v89;
      }

      v44 = v8[2];
      v45 = v44 + 1;
      if (v44 >= v8[3] >> 1)
      {
        sub_1CA2E49C0();
        v8 = v90;
      }

      v8[2] = v45;
      v46 = v8 + 4;
      v47 = &v8[2 * v44 + 4];
      *v47 = v9;
      v47[1] = v7;
      v95 = *a1;
      if (!*a1)
      {
        goto LABEL_128;
      }

      if (v44)
      {
        v93 = v8 + 4;
        while (1)
        {
          v48 = v45 - 1;
          v49 = &v46[2 * v45 - 2];
          v50 = &v8[2 * v45];
          if (v45 >= 4)
          {
            break;
          }

          if (v45 == 3)
          {
            v51 = v8[4];
            v52 = v8[5];
            v61 = __OFSUB__(v52, v51);
            v53 = v52 - v51;
            v54 = v61;
LABEL_70:
            if (v54)
            {
              goto LABEL_110;
            }

            v66 = *v50;
            v65 = v50[1];
            v67 = __OFSUB__(v65, v66);
            v68 = v65 - v66;
            v69 = v67;
            if (v67)
            {
              goto LABEL_113;
            }

            v70 = v49[1];
            v71 = v70 - *v49;
            if (__OFSUB__(v70, *v49))
            {
              goto LABEL_116;
            }

            if (__OFADD__(v68, v71))
            {
              goto LABEL_118;
            }

            if (v68 + v71 >= v53)
            {
              if (v53 < v71)
              {
                v48 = v45 - 2;
              }

              goto LABEL_92;
            }

            goto LABEL_85;
          }

          if (v45 < 2)
          {
            goto LABEL_112;
          }

          v73 = *v50;
          v72 = v50[1];
          v61 = __OFSUB__(v72, v73);
          v68 = v72 - v73;
          v69 = v61;
LABEL_85:
          if (v69)
          {
            goto LABEL_115;
          }

          v75 = *v49;
          v74 = v49[1];
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_117;
          }

          if (v76 < v68)
          {
            goto LABEL_99;
          }

LABEL_92:
          if (v48 - 1 >= v45)
          {
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
            goto LABEL_124;
          }

          if (!*a3)
          {
            goto LABEL_126;
          }

          v80 = &v46[2 * v48 - 2];
          v81 = *v80;
          v82 = v48;
          v83 = &v46[2 * v48];
          v84 = v83[1];
          sub_1CA60D140((*a3 + 24 * *v80), (*a3 + 24 * *v83), *a3 + 24 * v84, v95);
          if (v5)
          {
            goto LABEL_103;
          }

          if (v84 < v81)
          {
            goto LABEL_105;
          }

          v85 = v8;
          v86 = v8[2];
          if (v82 > v86)
          {
            goto LABEL_106;
          }

          *v80 = v81;
          v80[1] = v84;
          if (v82 >= v86)
          {
            goto LABEL_107;
          }

          v45 = v86 - 1;
          memmove(v83, v83 + 2, 16 * (v86 - 1 - v82));
          v85[2] = v86 - 1;
          v87 = v86 > 2;
          v8 = v85;
          v5 = 0;
          v46 = v93;
          if (!v87)
          {
            goto LABEL_99;
          }
        }

        v55 = &v46[2 * v45];
        v56 = *(v55 - 8);
        v57 = *(v55 - 7);
        v61 = __OFSUB__(v57, v56);
        v58 = v57 - v56;
        if (v61)
        {
          goto LABEL_108;
        }

        v60 = *(v55 - 6);
        v59 = *(v55 - 5);
        v61 = __OFSUB__(v59, v60);
        v53 = v59 - v60;
        v54 = v61;
        if (v61)
        {
          goto LABEL_109;
        }

        v62 = v50[1];
        v63 = v62 - *v50;
        if (__OFSUB__(v62, *v50))
        {
          goto LABEL_111;
        }

        v61 = __OFADD__(v53, v63);
        v64 = v53 + v63;
        if (v61)
        {
          goto LABEL_114;
        }

        if (v64 >= v58)
        {
          v78 = *v49;
          v77 = v49[1];
          v61 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v61)
          {
            goto LABEL_119;
          }

          if (v53 < v79)
          {
            v48 = v45 - 2;
          }

          goto LABEL_92;
        }

        goto LABEL_70;
      }

LABEL_99:
      v6 = a3[1];
      if (v7 >= v6)
      {
        v97 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_129;
  }

  sub_1CA60D008(&v97, *a1, a3);
LABEL_103:
}

uint64_t sub_1CA60D008(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1CA627610(v15);
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_1CA60D140((*a3 + 24 * *v4), (*a3 + 24 * *v9), *a3 + 24 * v10, a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_1CA60D140(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 24;
  v9 = (a3 - a2) / 24;
  if (v8 < v9)
  {
    sub_1CA43F004(a1, (a2 - a1) / 24, a4);
    v10 = &v4[24 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_1CA94D7F8() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 24;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 24;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 24;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    v14 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v14;
    goto LABEL_17;
  }

  sub_1CA43F004(a2, (a3 - a2) / 24, a4);
  v10 = &v4[24 * v9];
LABEL_19:
  v15 = v6 - 24;
  for (v5 -= 24; v10 > v4 && v6 > v7; v5 -= 24)
  {
    v17 = *(v10 - 3) == *(v6 - 3) && *(v10 - 2) == *(v6 - 2);
    if (!v17 && (sub_1CA94D7F8() & 1) != 0)
    {
      v12 = v5 + 24 == v6;
      v6 -= 24;
      if (!v12)
      {
        v19 = *v15;
        *(v5 + 16) = *(v15 + 2);
        *v5 = v19;
        v6 = v15;
      }

      goto LABEL_19;
    }

    if (v10 != (v5 + 24))
    {
      v18 = *(v10 - 24);
      *(v5 + 16) = *(v10 - 1);
      *v5 = v18;
    }

    v10 -= 24;
  }

LABEL_36:
  v20 = (v10 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v20])
  {
    memmove(v6, v4, 24 * v20);
  }

  return 1;
}

uint64_t sub_1CA60D32C()
{
  OUTLINED_FUNCTION_37_0();
  v2 = v1;
  v4 = v3;
  v9 = OUTLINED_FUNCTION_29_6(v5, v6, v7, v8, v3);
  OUTLINED_FUNCTION_7_0(v9, v10);
  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = v11;
  v15 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4457E0, &qword_1CA990910);
  if ((OUTLINED_FUNCTION_39_0() & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = *v4;
  v17 = sub_1CA271BF8();
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_13:
    result = sub_1CA94D878();
    __break(1u);
    return result;
  }

  v14 = v17;
LABEL_5:
  if (v15)
  {
    v19 = *(*v4 + 56);
    v20 = *(v19 + 8 * v14);
    *(v19 + 8 * v14) = v0;
    OUTLINED_FUNCTION_36();

    return swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_62_8();
    v2();
    OUTLINED_FUNCTION_36();

    return sub_1CA94C218();
  }
}

uint64_t sub_1CA60D430()
{
  OUTLINED_FUNCTION_37_0();
  v3 = v2;
  v5 = v4;
  v9 = OUTLINED_FUNCTION_29_6(v6, v7, v4, v8, v2);
  OUTLINED_FUNCTION_7_0(v9, v10);
  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = v11;
  v15 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4457E0, &qword_1CA990910);
  if ((OUTLINED_FUNCTION_39_0() & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = *v3;
  v17 = sub_1CA271BF8();
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_13:
    result = sub_1CA94D878();
    __break(1u);
    return result;
  }

  v14 = v17;
LABEL_5:
  v19 = *v3;
  if (v15)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v14);
    *(v20 + 8 * v14) = v0;
    OUTLINED_FUNCTION_36();

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_1CA32F5C0(v14, v1, v5, v0, v19);
    OUTLINED_FUNCTION_36();

    return sub_1CA94C218();
  }
}

unint64_t sub_1CA60D538()
{
  result = qword_1EC4471A0;
  if (!qword_1EC4471A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4471A0);
  }

  return result;
}

unint64_t sub_1CA60D5B8(uint64_t a1)
{
  result = sub_1CA60D5E0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA60D5E0()
{
  result = qword_1EC4471B0;
  if (!qword_1EC4471B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4471B0);
  }

  return result;
}

unint64_t sub_1CA60D634(uint64_t a1)
{
  result = sub_1CA60D65C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA60D65C()
{
  result = qword_1EC4471B8;
  if (!qword_1EC4471B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4471B8);
  }

  return result;
}

unint64_t sub_1CA60D6B4()
{
  result = qword_1EC4471C0;
  if (!qword_1EC4471C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4471C0);
  }

  return result;
}

unint64_t sub_1CA60D708(uint64_t a1)
{
  result = sub_1CA60D730();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA60D730()
{
  result = qword_1EC4471C8;
  if (!qword_1EC4471C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4471C8);
  }

  return result;
}

unint64_t sub_1CA60D784(uint64_t a1)
{
  result = sub_1CA60D7AC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA60D7AC()
{
  result = qword_1EC4471D0;
  if (!qword_1EC4471D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4471D0);
  }

  return result;
}

unint64_t sub_1CA60D804()
{
  result = qword_1EC4471D8;
  if (!qword_1EC4471D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4471D8);
  }

  return result;
}

unint64_t sub_1CA60D858(uint64_t a1)
{
  result = sub_1CA60D880();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA60D880()
{
  result = qword_1EC4471E0;
  if (!qword_1EC4471E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4471E0);
  }

  return result;
}

unint64_t sub_1CA60D8D4(uint64_t a1)
{
  result = sub_1CA60D8FC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA60D8FC()
{
  result = qword_1EC4471E8;
  if (!qword_1EC4471E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4471E8);
  }

  return result;
}

unint64_t sub_1CA60D954()
{
  result = qword_1EC4471F0;
  if (!qword_1EC4471F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4471F0);
  }

  return result;
}

unint64_t sub_1CA60D9A8(uint64_t a1)
{
  result = sub_1CA60D9D0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA60D9D0()
{
  result = qword_1EC4471F8;
  if (!qword_1EC4471F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4471F8);
  }

  return result;
}

unint64_t sub_1CA60DA24(uint64_t a1)
{
  result = sub_1CA60DA4C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA60DA4C()
{
  result = qword_1EC447200;
  if (!qword_1EC447200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447200);
  }

  return result;
}

unint64_t sub_1CA60DAA4()
{
  result = qword_1EC447208;
  if (!qword_1EC447208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447208);
  }

  return result;
}

unint64_t sub_1CA60DAF8(uint64_t a1)
{
  result = sub_1CA60DB20();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA60DB20()
{
  result = qword_1EC447210;
  if (!qword_1EC447210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447210);
  }

  return result;
}

unint64_t sub_1CA60DB74(uint64_t a1)
{
  result = sub_1CA60DB9C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA60DB9C()
{
  result = qword_1EC447218;
  if (!qword_1EC447218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447218);
  }

  return result;
}

unint64_t sub_1CA60DBF4()
{
  result = qword_1EC447220;
  if (!qword_1EC447220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447220);
  }

  return result;
}

unint64_t sub_1CA60DC48(uint64_t a1)
{
  result = sub_1CA60DC70();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA60DC70()
{
  result = qword_1EC447228;
  if (!qword_1EC447228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447228);
  }

  return result;
}

unint64_t sub_1CA60DCC4(uint64_t a1)
{
  result = sub_1CA60DCEC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA60DCEC()
{
  result = qword_1EC447230;
  if (!qword_1EC447230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447230);
  }

  return result;
}

unint64_t sub_1CA60DD44()
{
  result = qword_1EC447238;
  if (!qword_1EC447238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447238);
  }

  return result;
}

unint64_t sub_1CA60DD98(uint64_t a1)
{
  result = sub_1CA60DDC0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA60DDC0()
{
  result = qword_1EC447240;
  if (!qword_1EC447240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447240);
  }

  return result;
}

unint64_t sub_1CA60DE14(uint64_t a1)
{
  result = sub_1CA60DE3C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA60DE3C()
{
  result = qword_1EC447248;
  if (!qword_1EC447248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447248);
  }

  return result;
}

unint64_t sub_1CA60DE94()
{
  result = qword_1EC447250;
  if (!qword_1EC447250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447250);
  }

  return result;
}

unint64_t sub_1CA60DEE8(uint64_t a1)
{
  result = sub_1CA60DF10();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA60DF10()
{
  result = qword_1EC447258;
  if (!qword_1EC447258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447258);
  }

  return result;
}

unint64_t sub_1CA60DF64(uint64_t a1)
{
  result = sub_1CA60DF8C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA60DF8C()
{
  result = qword_1EC447260;
  if (!qword_1EC447260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447260);
  }

  return result;
}

unint64_t sub_1CA60DFE4()
{
  result = qword_1EC447268;
  if (!qword_1EC447268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447268);
  }

  return result;
}

unint64_t sub_1CA60E038(uint64_t a1)
{
  result = sub_1CA60E060();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA60E060()
{
  result = qword_1EC447270;
  if (!qword_1EC447270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447270);
  }

  return result;
}

unint64_t sub_1CA60E0B4(uint64_t a1)
{
  result = sub_1CA60E0DC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA60E0DC()
{
  result = qword_1EC447278;
  if (!qword_1EC447278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447278);
  }

  return result;
}

unint64_t sub_1CA60E134()
{
  result = qword_1EC447280;
  if (!qword_1EC447280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447280);
  }

  return result;
}

unint64_t sub_1CA60E188(uint64_t a1)
{
  result = sub_1CA60E1B0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA60E1B0()
{
  result = qword_1EC447288;
  if (!qword_1EC447288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447288);
  }

  return result;
}

unint64_t sub_1CA60E204(uint64_t a1)
{
  result = sub_1CA60E22C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA60E22C()
{
  result = qword_1EC447290;
  if (!qword_1EC447290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447290);
  }

  return result;
}

unint64_t sub_1CA60E284()
{
  result = qword_1EC447298;
  if (!qword_1EC447298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447298);
  }

  return result;
}

unint64_t sub_1CA60E2D8(uint64_t a1)
{
  result = sub_1CA60E300();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA60E300()
{
  result = qword_1EC4472A0;
  if (!qword_1EC4472A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4472A0);
  }

  return result;
}

unint64_t sub_1CA60E354(uint64_t a1)
{
  result = sub_1CA60E37C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA60E37C()
{
  result = qword_1EC4472A8;
  if (!qword_1EC4472A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4472A8);
  }

  return result;
}

unint64_t sub_1CA60E3D4()
{
  result = qword_1EC4472B0;
  if (!qword_1EC4472B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4472B0);
  }

  return result;
}

unint64_t sub_1CA60E428(uint64_t a1)
{
  result = sub_1CA60E450();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA60E450()
{
  result = qword_1EC4472B8;
  if (!qword_1EC4472B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4472B8);
  }

  return result;
}

unint64_t sub_1CA60E4A4(uint64_t a1)
{
  result = sub_1CA60E4CC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA60E4CC()
{
  result = qword_1EC4472C0;
  if (!qword_1EC4472C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4472C0);
  }

  return result;
}

unint64_t sub_1CA60E524()
{
  result = qword_1EC4472C8;
  if (!qword_1EC4472C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4472C8);
  }

  return result;
}

unint64_t sub_1CA60E578(uint64_t a1)
{
  result = sub_1CA60E5A0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA60E5A0()
{
  result = qword_1EC4472D0;
  if (!qword_1EC4472D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4472D0);
  }

  return result;
}

unint64_t sub_1CA60E5F4(uint64_t a1)
{
  result = sub_1CA60E61C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA60E61C()
{
  result = qword_1EC4472D8;
  if (!qword_1EC4472D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4472D8);
  }

  return result;
}

unint64_t sub_1CA60E674()
{
  result = qword_1EC4472E0;
  if (!qword_1EC4472E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4472E0);
  }

  return result;
}

unint64_t sub_1CA60E6C8(uint64_t a1)
{
  result = sub_1CA60E6F0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA60E6F0()
{
  result = qword_1EC4472E8;
  if (!qword_1EC4472E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4472E8);
  }

  return result;
}

unint64_t sub_1CA60E744(uint64_t a1)
{
  result = sub_1CA60E76C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA60E76C()
{
  result = qword_1EC4472F0;
  if (!qword_1EC4472F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4472F0);
  }

  return result;
}

unint64_t sub_1CA60E7C4()
{
  result = qword_1EC4472F8;
  if (!qword_1EC4472F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4472F8);
  }

  return result;
}

unint64_t sub_1CA60E818(uint64_t a1)
{
  result = sub_1CA60E840();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA60E840()
{
  result = qword_1EC447300;
  if (!qword_1EC447300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447300);
  }

  return result;
}

unint64_t sub_1CA60E894(uint64_t a1)
{
  result = sub_1CA60E8BC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA60E8BC()
{
  result = qword_1EC447308;
  if (!qword_1EC447308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447308);
  }

  return result;
}

unint64_t sub_1CA60E914()
{
  result = qword_1EC447310;
  if (!qword_1EC447310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447310);
  }

  return result;
}