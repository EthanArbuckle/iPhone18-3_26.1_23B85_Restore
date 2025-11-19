void sub_1CA4F444C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v28 = MEMORY[0x1E69E7CC0];
    sub_1CA271524();
    v5 = sub_1CA4FCA34(a1);
    v6 = 0;
    v7 = a1 + 64;
    v24 = v1;
    if ((v5 & 0x8000000000000000) == 0)
    {
      while (v5 < 1 << *(a1 + 32))
      {
        v8 = v5 >> 6;
        if ((*(v7 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
        {
          goto LABEL_23;
        }

        if (*(a1 + 36) != v3)
        {
          goto LABEL_24;
        }

        v25 = v4;
        v26 = v6;
        v27 = v3;
        v9 = *(*(a1 + 56) + 8 * v5);
        v10 = [v9 identifier];
        v11 = sub_1CA94C3A8();
        v13 = v12;

        v14 = *(v28 + 16);
        if (v14 >= *(v28 + 24) >> 1)
        {
          sub_1CA271524();
        }

        *(v28 + 16) = v14 + 1;
        v15 = v28 + 16 * v14;
        *(v15 + 32) = v11;
        *(v15 + 40) = v13;
        v16 = 1 << *(a1 + 32);
        if (v5 >= v16)
        {
          goto LABEL_25;
        }

        v7 = a1 + 64;
        v17 = *(a1 + 64 + 8 * v8);
        if ((v17 & (1 << v5)) == 0)
        {
          goto LABEL_26;
        }

        if (*(a1 + 36) != v27)
        {
          goto LABEL_27;
        }

        v18 = v17 & (-2 << (v5 & 0x3F));
        if (v18)
        {
          v16 = __clz(__rbit64(v18)) | v5 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v19 = v8 << 6;
          v20 = v8 + 1;
          v21 = (a1 + 72 + 8 * v8);
          while (v20 < (v16 + 63) >> 6)
          {
            v23 = *v21++;
            v22 = v23;
            v19 += 64;
            ++v20;
            if (v23)
            {
              sub_1CA2974B8(v5, v27, v25 & 1);
              v16 = __clz(__rbit64(v22)) + v19;
              goto LABEL_18;
            }
          }

          sub_1CA2974B8(v5, v27, v25 & 1);
        }

LABEL_18:
        v6 = v26 + 1;
        if (v26 + 1 == v24)
        {
          return;
        }

        v4 = 0;
        v3 = *(a1 + 36);
        v5 = v16;
        if (v16 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }
}

uint64_t sub_1CA4F46A4(uint64_t a1, void *a2)
{
  v3 = 0;
  v4 = *(a1 + 16);
  v5 = (a1 + 40);
  while (v4 != v3)
  {
    v6 = *(v5 - 1) == 0x797469746E65 && *v5 == 0xE600000000000000;
    if (v6 || (sub_1CA94D7F8() & 1) != 0)
    {
      v7 = v3;
      goto LABEL_11;
    }

    ++v3;
    v5 += 2;
  }

  v7 = 0;
LABEL_11:

  return v7;
}

uint64_t WFEntityUpdatingAction.loadDynamicResult(forEnumeration:searchTerm:)()
{
  OUTLINED_FUNCTION_14();
  v9 = *MEMORY[0x1E69E9840];
  v1[41] = v2;
  v1[42] = v0;
  v1[39] = v3;
  v1[40] = v4;
  sub_1CA94C838();
  v1[43] = sub_1CA94C828();
  OUTLINED_FUNCTION_87();
  v5 = sub_1CA94C7C8();
  v1[44] = v5;
  v1[45] = v6;
  v7 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1CA4F484C, v5, v6);
}

uint64_t sub_1CA4F484C()
{
  v63 = *MEMORY[0x1E69E9840];
  v1 = [v0[21].receiver parameters];
  sub_1CA25B3D0(0, &qword_1EC441AA0, off_1E836EDB8);
  v2 = sub_1CA94C658();

  v3 = sub_1CA25B410();
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {

      v8 = 0;
      goto LABEL_29;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1CCAA22D0](i, v2);
    }

    else
    {
      if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_48;
      }

      v5 = *(v2 + 8 * i + 32);
    }

    v6 = v5;
    v0[23].receiver = v5;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
    }

    type metadata accessor for WFUpdatableParameter();
    v7 = swift_dynamicCastClass();
    if (v7)
    {
      if (*(v7 + OBJC_IVAR___WFUpdatableParameter_underlyingParameter) == v0[19].super_class)
      {
        break;
      }
    }
  }

  receiver = v0[21].receiver;

  v10 = *&receiver[OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction_metadataForParameterIdentifier];
  v8 = v6;
  v11 = [v8 key];
  sub_1CA94C3A8();
  OUTLINED_FUNCTION_115();

  v12 = sub_1CA323E2C(v6, v2 & 0xC000000000000001, v10);
  v0[23].super_class = v12;

  if (!v12)
  {
LABEL_28:

LABEL_29:
    v0[28].receiver = v8;
    if (v0[20].super_class)
    {
      v23 = v0[20].receiver;
      v24 = sub_1CA94C368();
    }

    else
    {
      v24 = 0;
    }

    v0[28].super_class = v24;
    v25 = v0[21].receiver;
    super_class = v0[19].super_class;
    v0[1].receiver = v0;
    v0[3].super_class = &v0[18];
    v0[1].super_class = sub_1CA4F521C;
    v27 = swift_continuation_init();
    v0[12].super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445EA8, &unk_1CA989B88);
    v0[9].receiver = MEMORY[0x1E69E9820];
    v0[9].super_class = 1107296256;
    v0[10].receiver = sub_1CA4F4758;
    v0[10].super_class = &block_descriptor_17;
    v0[11].receiver = v27;
    v28 = type metadata accessor for WFEntityUpdatingAction();
    v0[17].receiver = v25;
    v0[17].super_class = v28;
    objc_msgSendSuper2(v0 + 17, sel_loadDynamicResultForEnumeration_searchTerm_completionHandler_, super_class, v24, &v0[9]);
    v29 = *MEMORY[0x1E69E9840];
    v30 = v0 + 1;
LABEL_33:

    return MEMORY[0x1EEE6DEC8](v30);
  }

  v59 = v8;
  v61 = v12;
  v13 = [(objc_class *)v12 parameters];
  sub_1CA25B3D0(0, &unk_1EC445EB0, 0x1E69AC680);
  v14 = sub_1CA94C658();

  v15 = sub_1CA25B410();
  for (j = 0; ; ++j)
  {
    if (v15 == j)
    {

      v8 = v59;
      goto LABEL_28;
    }

    if ((v14 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x1CCAA22D0](j, v14);
    }

    else
    {
      if (j >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_50;
      }

      v17 = *(v14 + 8 * j + 32);
    }

    v18 = v17;
    v0[24].receiver = v17;
    if (__OFADD__(j, 1))
    {
      goto LABEL_49;
    }

    v19 = sub_1CA3F132C(v17, &selRef_name);
    if (v20)
    {
      break;
    }

LABEL_25:
  }

  if (v19 != 0x79747265706F7270 || v20 != 0xE800000000000000)
  {
    v22 = sub_1CA94D7F8();

    if (v22)
    {
      goto LABEL_37;
    }

    goto LABEL_25;
  }

LABEL_37:

  v31 = v0[21].receiver;
  v32 = [objc_allocWithZone(MEMORY[0x1E69ACE78]) init];
  v0[24].super_class = v32;
  v33 = sub_1CA3F132C(v31, &selRef_preferredExtensionBundleIdentifier);
  if (v34)
  {
    sub_1CA4FC878(v33, v34, v32);
  }

  v35 = [objc_opt_self() policyWithActionMetadata:v12 signals:v32];
  v0[25].receiver = v35;
  v0[19].receiver = 0;
  v36 = [v35 connectionWithError_];
  v0[25].super_class = v36;
  v37 = v0[19].receiver;
  if (v36)
  {
    v38 = v36;
    v39 = v0[20].super_class;
    sub_1CA25B3D0(0, &qword_1EDB9FB20, 0x1E69AC950);
    v40 = v37;
    v41 = sub_1CA94C648();
    v62 = [v35 actionWithParameters_];
    v0[26].receiver = v62;

    if (v39)
    {
      v42 = v0[20].receiver;
      v43 = v0[20].super_class;
      v44 = sub_1CA94C368();
    }

    else
    {
      v44 = 0;
    }

    v60 = v44;
    v0[26].super_class = v44;
    v49 = sub_1CA948E58();
    OUTLINED_FUNCTION_1_0(v49);
    v51 = v50;
    v53 = *(v52 + 64);
    v54 = OUTLINED_FUNCTION_45();
    sub_1CA948DE8();
    sub_1CA948D48();
    (*(v51 + 8))(v54, v49);
    v55 = sub_1CA94C368();
    v0[27].receiver = v55;

    v0[5].receiver = v0;
    v0[7].super_class = &v0[18].super_class;
    v0[5].super_class = sub_1CA4F4FE4;
    v56 = swift_continuation_init();
    v0[16].super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445EA8, &unk_1CA989B88);
    v0[13].receiver = MEMORY[0x1E69E9820];
    v0[13].super_class = 1107296256;
    v0[14].receiver = sub_1CA4F4758;
    v0[14].super_class = &block_descriptor_4;
    v0[15].receiver = v56;
    [(objc_class *)v38 fetchOptionsForAction:v62 actionMetadata:v61 parameterMetadata:v18 optionsProviderReference:0 searchTerm:v60 localeIdentifier:v55 completionHandler:&v0[13]];
    v57 = *MEMORY[0x1E69E9840];
    v30 = v0 + 5;
    goto LABEL_33;
  }

  v45 = v0[21].super_class;
  v46 = v37;

  sub_1CA948AD8();

  swift_willThrow();
  OUTLINED_FUNCTION_5();
  v48 = *MEMORY[0x1E69E9840];

  return v47();
}

uint64_t sub_1CA4F4FE4()
{
  OUTLINED_FUNCTION_0();
  v13 = *MEMORY[0x1E69E9840];
  v1 = *v0;
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  *v3 = *v0;
  *(v2 + 440) = *(v4 + 112);
  OUTLINED_FUNCTION_21_1();
  v6 = *(v5 + 360);
  v8 = *(v7 + 352);
  if (v9)
  {
    v10 = sub_1CA4F54B4;
  }

  else
  {
    v10 = sub_1CA4F5130;
  }

  v11 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v10, v8, v6);
}

uint64_t sub_1CA4F5130()
{
  OUTLINED_FUNCTION_39_1();
  v14 = *MEMORY[0x1E69E9840];
  v2 = *(v0 + 424);
  v1 = *(v0 + 432);
  v4 = *(v0 + 408);
  v3 = *(v0 + 416);
  v6 = *(v0 + 392);
  v5 = *(v0 + 400);
  v8 = *(v0 + 376);
  v7 = *(v0 + 384);
  v9 = *(v0 + 344);

  v10 = *(v0 + 296);

  OUTLINED_FUNCTION_2_4();
  v12 = *MEMORY[0x1E69E9840];

  return v11(v10);
}

uint64_t sub_1CA4F521C()
{
  OUTLINED_FUNCTION_0();
  v13 = *MEMORY[0x1E69E9840];
  v1 = *v0;
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  *v3 = *v0;
  *(v2 + 464) = *(v4 + 48);
  OUTLINED_FUNCTION_21_1();
  v6 = *(v5 + 360);
  v8 = *(v7 + 352);
  if (v9)
  {
    v10 = sub_1CA4F5410;
  }

  else
  {
    v10 = sub_1CA4F5368;
  }

  v11 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v10, v8, v6);
}

uint64_t sub_1CA4F5368()
{
  OUTLINED_FUNCTION_14();
  v7 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 456);
  v2 = *(v0 + 344);

  v3 = *(v0 + 288);

  OUTLINED_FUNCTION_2_4();
  v5 = *MEMORY[0x1E69E9840];

  return v4(v3);
}

uint64_t sub_1CA4F5410()
{
  OUTLINED_FUNCTION_6();
  v9 = *MEMORY[0x1E69E9840];
  v1 = v0[57];
  v2 = v0[58];
  v3 = v0[56];
  v4 = v0[43];

  swift_willThrow();

  v5 = v0[58];
  OUTLINED_FUNCTION_5();
  v7 = *MEMORY[0x1E69E9840];

  return v6();
}

uint64_t sub_1CA4F54B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_157();
  OUTLINED_FUNCTION_189();
  v37 = *MEMORY[0x1E69E9840];
  v15 = v14[54];
  v16 = v14[55];
  v17 = v14[53];
  v36 = v14[52];
  v19 = v14[50];
  v18 = v14[51];
  v21 = v14[48];
  v20 = v14[49];
  v22 = v14[46];
  v23 = v14[47];
  v24 = v14[43];

  swift_willThrow();

  v25 = v14[55];
  OUTLINED_FUNCTION_5();
  v26 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_24();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, v36, a10, v37, a12, a13, a14);
}

uint64_t *sub_1CA4F5588(uint64_t a1, void *a2, void *a3, uint64_t (*a4)(uint64_t, id), uint64_t (*a5)(uint64_t, id))
{
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v8 = *result;
  if (a3)
  {
    v9 = a3;
    v10 = v8;
    v11 = a4;

    return v11(v10, v9);
  }

  if (a2)
  {
    v9 = a2;
    v10 = v8;
    v11 = a5;

    return v11(v10, v9);
  }

  __break(1u);
  return result;
}

uint64_t sub_1CA4F56D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  sub_1CA94C838();
  v4[6] = sub_1CA94C828();
  v6 = sub_1CA94C7C8();

  return MEMORY[0x1EEE6DFA0](sub_1CA4F576C, v6, v5);
}

uint64_t sub_1CA4F576C()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);

  *(v0 + 56) = _Block_copy(v3);
  if (v2)
  {
    v4 = *(v0 + 24);
    sub_1CA94C3A8();
    v2 = v5;
  }

  *(v0 + 64) = v2;
  v6 = *(v0 + 40);
  v7 = *(v0 + 16);
  v8 = v6;
  v9 = swift_task_alloc();
  *(v0 + 72) = v9;
  *v9 = v0;
  v9[1] = sub_1CA4F585C;
  v10 = *(v0 + 40);
  v11 = *(v0 + 16);

  return WFEntityUpdatingAction.loadDynamicResult(forEnumeration:searchTerm:)();
}

uint64_t sub_1CA4F585C()
{
  OUTLINED_FUNCTION_6();
  v2 = v0;
  v4 = v3;
  v5 = *v1;
  v6 = *(*v1 + 72);
  v7 = *(*v1 + 40);
  v8 = *(*v1 + 16);
  v9 = *v1;
  OUTLINED_FUNCTION_13();
  *v10 = v9;

  v11 = *(v5 + 64);
  v12 = *(v5 + 56);

  if (v2)
  {
    sub_1CA948AC8();

    v13 = OUTLINED_FUNCTION_33();
    v14(v13, 0, v4);

    _Block_release(v12);
  }

  else
  {
    v15 = OUTLINED_FUNCTION_33();
    v16(v15, v4, 0);
    _Block_release(v12);
  }

  v17 = *(v9 + 8);

  return v17();
}

void sub_1CA4F5A0C(void *a1, void *a2, char a3, void *a4, void (**a5)(void, void, void))
{
  v10 = swift_allocObject();
  *(v10 + 16) = a5;
  _Block_copy(a5);
  sub_1CA3F132C(a1, &selRef_name);
  if (v11)
  {
    if (a2)
    {
      sub_1CA311C0C(a2, v19);
    }

    else
    {

      memset(v19, 0, sizeof(v19));
    }

    sub_1CA4FCCB0(v19, v17, &unk_1EC444650, &unk_1CA981C70);
    if (v18)
    {
      sub_1CA4FCCB0(v17, aBlock, &unk_1EC444650, &unk_1CA981C70);
      sub_1CA25B3D0(0, &unk_1EDB9F6B0, 0x1E69ACA90);
      if (swift_dynamicCast())
      {
        (a5)[2](a5, v14, 0);

        sub_1CA27080C(v19, &unk_1EC444650, &unk_1CA981C70);
        __swift_destroy_boxed_opaque_existential_0(aBlock);
LABEL_18:
        sub_1CA27080C(v17, &unk_1EC444650, &unk_1CA981C70);

        _Block_release(a5);
        return;
      }

      sub_1CA25B3D0(0, &qword_1EC445EC0, 0x1E69AC8E0);
      if ((swift_dynamicCast() & 1) != 0 || (sub_1CA25B3D0(0, &qword_1EDB9FB20, 0x1E69AC950), swift_dynamicCast()))
      {
        v12 = [v14 value];
        (a5)[2](a5, v12, 0);

        sub_1CA27080C(v19, &unk_1EC444650, &unk_1CA981C70);
        __swift_destroy_boxed_opaque_existential_0(aBlock);
        goto LABEL_18;
      }

      __swift_destroy_boxed_opaque_existential_0(aBlock);
    }

    if (a2)
    {
      a2 = sub_1CA94C1A8();
    }

    aBlock[4] = sub_1CA3D7FF4;
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CA4F60DC;
    aBlock[3] = &block_descriptor_92;
    v13 = _Block_copy(aBlock);

    v15.receiver = a4;
    v15.super_class = type metadata accessor for WFEntityUpdatingAction();
    objc_msgSendSuper2(&v15, sel_getValueForParameterData_ofProcessedParameters_fallingBackToDefaultValue_completionHandler_, a1, a2, a3 & 1, v13);
    _Block_release(v13);

    sub_1CA27080C(v19, &unk_1EC444650, &unk_1CA981C70);
    goto LABEL_18;
  }

  a5[2](a5, 0, 0);

  _Block_release(a5);
}

uint64_t WFEntityUpdatingAction.getValueForParameterData(_:ofProcessedParameters:fallingBackToDefaultValue:completionHandler:)(void *a1, void *a2, char a3, void (*a4)(void), uint64_t a5)
{
  sub_1CA3F132C(a1, &selRef_name);
  if (!v11)
  {
    return (a4)(0);
  }

  if (a2)
  {
    sub_1CA311C0C(a2, v21);
  }

  else
  {

    memset(v21, 0, sizeof(v21));
  }

  sub_1CA4FCCB0(v21, v19, &unk_1EC444650, &unk_1CA981C70);
  if (!v20)
  {
    goto LABEL_14;
  }

  sub_1CA4FCCB0(v19, aBlock, &unk_1EC444650, &unk_1CA981C70);
  sub_1CA25B3D0(0, &unk_1EDB9F6B0, 0x1E69ACA90);
  if (!OUTLINED_FUNCTION_24_15())
  {
    sub_1CA25B3D0(0, &qword_1EC445EC0, 0x1E69AC8E0);
    if (OUTLINED_FUNCTION_24_15() || (sub_1CA25B3D0(0, &qword_1EDB9FB20, 0x1E69AC950), OUTLINED_FUNCTION_24_15()))
    {
      v14 = [v16 value];
      a4();

      goto LABEL_12;
    }

    __swift_destroy_boxed_opaque_existential_0(aBlock);
LABEL_14:
    if (a2)
    {
      a2 = sub_1CA94C1A8();
    }

    aBlock[4] = a4;
    aBlock[5] = a5;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CA4F60DC;
    aBlock[3] = &block_descriptor_7;
    v15 = _Block_copy(aBlock);

    v17.receiver = v5;
    v17.super_class = type metadata accessor for WFEntityUpdatingAction();
    objc_msgSendSuper2(&v17, sel_getValueForParameterData_ofProcessedParameters_fallingBackToDefaultValue_completionHandler_, a1, a2, a3 & 1, v15);
    _Block_release(v15);

    sub_1CA27080C(v21, &unk_1EC444650, &unk_1CA981C70);
    return sub_1CA27080C(v19, &unk_1EC444650, &unk_1CA981C70);
  }

  v13 = v16;
  (a4)(v16, 0);

LABEL_12:
  sub_1CA27080C(v21, &unk_1EC444650, &unk_1CA981C70);
  __swift_destroy_boxed_opaque_existential_0(aBlock);
  return sub_1CA27080C(v19, &unk_1EC444650, &unk_1CA981C70);
}

void sub_1CA4F60DC(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_1CA4F6260(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction_metadataForParameterIdentifier);
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v6 = 1 << *(*(v1 + OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction_metadataForParameterIdentifier) + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v3;
  v9 = (v6 + 63) >> 6;
  v29 = *(v1 + OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction_metadataForParameterIdentifier);
  result = sub_1CA94C218();
  v11 = 0;
  if (v8)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = __clz(__rbit64(v8)) | (v12 << 6);
      v14 = (*(v29 + 48) + 16 * v13);
      v27 = *v14;
      v15 = *(*(v29 + 56) + 8 * v13);
      v30 = v14[1];
      sub_1CA94C218();
      v16 = v15;
      v17 = [v16 identifier];
      v18 = sub_1CA94C3A8();
      v20 = v19;

      v21 = [a1 identifier];
      v22 = sub_1CA94C3A8();
      v24 = v23;

      if (v18 == v22 && v20 == v24)
      {

        return v27;
      }

      v26 = sub_1CA94D7F8();

      if (v26)
      {
        break;
      }

      v8 &= v8 - 1;

      v11 = v12;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

    return v27;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v9)
      {

        return 0;
      }

      v8 = *(v4 + 8 * v12);
      ++v11;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1CA4F659C(void *a1, id a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  v11 = 0x797469746E65;
  v12 = [a2 parameterName];
  v13 = sub_1CA94C3A8();
  v15 = v14;

  if (v13 == 0x797469746E65 && v15 == 0xE600000000000000)
  {

    v17 = 0xE600000000000000;
  }

  else
  {
    v17 = 0xE600000000000000;
    v18 = sub_1CA94D7F8();

    if ((v18 & 1) == 0)
    {
      v19 = [a1 action];
      v11 = sub_1CA4F6260(v19);
      v17 = v20;
    }
  }

  v21 = [a2 dialog];
  if (v21)
  {
    v22 = v21;
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v24 = swift_allocObject();
    v24[2] = v23;
    v24[3] = v11;
    v24[4] = v17;
    v24[5] = a2;
    v34 = a4;
    v35 = v24;
    OUTLINED_FUNCTION_16_19();
    v31 = 1107296256;
    v32 = sub_1CA32E0FC;
    v33 = a5;
    v25 = _Block_copy(aBlock);
    v26 = a2;

    [v22 getResultWithCompletionHandler_];
    _Block_release(v25);
  }

  else
  {
    if (v17)
    {
      v27 = sub_1CA94C368();
    }

    else
    {
      v27 = 0;
    }

    [v6 *a6];
  }
}

void sub_1CA4F67D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, SEL *a7)
{
  OUTLINED_FUNCTION_27_2();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    if (a5)
    {
      a5 = sub_1CA94C368();
    }

    if (a1)
    {
      v13 = [a1 captionPrint];
      v14 = sub_1CA94C658();

      if (v14[2])
      {
        v15 = v14[4];
        v16 = v14[5];
        sub_1CA94C218();

        a1 = sub_1CA94C368();
      }

      else
      {

        a1 = 0;
      }
    }

    [v12 *a7];
  }
}

uint64_t WFEntityUpdatingAction.backingActionIdentifiers()()
{
  v1 = *(v0 + OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction_metadataForParameterIdentifier);
  v2 = sub_1CA94C218();
  sub_1CA4F444C(v2);
  OUTLINED_FUNCTION_87();

  return v0;
}

uint64_t WFEntityUpdatingAction.run(with:)()
{
  OUTLINED_FUNCTION_14();
  v18 = *MEMORY[0x1E69E9840];
  v1[48] = v0;
  v1[49] = swift_getObjectType();
  v2 = sub_1CA949F78();
  v1[50] = v2;
  OUTLINED_FUNCTION_12(v2);
  v1[51] = v3;
  v5 = *(v4 + 64) + 15;
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v6 = sub_1CA94CEF8();
  v1[54] = v6;
  OUTLINED_FUNCTION_12(v6);
  v1[55] = v7;
  v9 = *(v8 + 64);
  v1[56] = OUTLINED_FUNCTION_45();
  v10 = sub_1CA94CF08();
  v1[57] = v10;
  OUTLINED_FUNCTION_12(v10);
  v1[58] = v11;
  v13 = *(v12 + 64);
  v1[59] = OUTLINED_FUNCTION_45();
  v1[60] = sub_1CA94C838();
  v1[61] = sub_1CA94C828();
  OUTLINED_FUNCTION_87();
  v14 = sub_1CA94C7C8();
  v1[62] = v14;
  v1[63] = v15;
  v16 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1CA4F6BF8, v14, v15);
}

uint64_t sub_1CA4F6BF8()
{
  v120 = *MEMORY[0x1E69E9840];
  v1 = [v0[48] connection];
  v0[64] = v1;
  v112 = v0;
  if (!v1)
  {
    goto LABEL_25;
  }

  v109 = v1;
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0[48]) + 0xC0))();
  v0[65] = v2;
  if (!v2)
  {

LABEL_25:
    v29 = v0[61];
    v30 = v0[52];

    v31 = *MEMORY[0x1E69E1078];
    sub_1CA949C58();
    v32 = sub_1CA949F68();
    v33 = sub_1CA94CC18();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1CA256000, v32, v33, "Missing connection or entity metadata.", v34, 2u);
      MEMORY[0x1CCAA4BF0](v34, -1, -1);
    }

    v36 = v0[51];
    v35 = v0[52];
    v37 = v0[49];
    v38 = v0[50];

    v39 = *(v36 + 8);
    v40 = OUTLINED_FUNCTION_20_0();
    v41(v40);
    sub_1CA4F85E4();
    swift_willThrow();
    OUTLINED_FUNCTION_44_6();

    OUTLINED_FUNCTION_5();
    v43 = *MEMORY[0x1E69E9840];

    return v42();
  }

  v3 = sub_1CA4FC9B8(v0[48]);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v5 = v3;
    v6 = *(v3 + 16);
    if (v6)
    {
      v119 = MEMORY[0x1E69E7CC0];
      sub_1CA271524();
      v7 = v119;
      v10 = sub_1CA4FCA38(v5);
      v11 = 0;
      v12 = v5 + 64;
      v110 = v8;
      v111 = v6;
      while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(v5 + 32))
      {
        v13 = v10 >> 6;
        if ((*(v12 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
        {
          goto LABEL_83;
        }

        if (*(v5 + 36) != v8)
        {
          goto LABEL_84;
        }

        v114 = v11;
        v116 = v8;
        v113 = v9;
        v14 = (*(v5 + 48) + 16 * v10);
        v15 = *v14;
        v16 = v14[1];
        v18 = *(v119 + 16);
        v17 = *(v119 + 24);
        sub_1CA94C218();
        if (v18 >= v17 >> 1)
        {
          sub_1CA271524();
        }

        *(v119 + 16) = v18 + 1;
        v19 = v119 + 16 * v18;
        *(v19 + 32) = v15;
        *(v19 + 40) = v16;
        v20 = 1 << *(v5 + 32);
        if (v10 >= v20)
        {
          goto LABEL_85;
        }

        v12 = v5 + 64;
        v21 = *(v5 + 64 + 8 * v13);
        if ((v21 & (1 << v10)) == 0)
        {
          goto LABEL_86;
        }

        if (*(v5 + 36) != v116)
        {
          goto LABEL_87;
        }

        v22 = v21 & (-2 << (v10 & 0x3F));
        if (v22)
        {
          v20 = __clz(__rbit64(v22)) | v10 & 0x7FFFFFFFFFFFFFC0;
          v23 = v111;
        }

        else
        {
          v24 = v13 << 6;
          v25 = (v5 + 72 + 8 * v13);
          v26 = v13 + 1;
          v23 = v111;
          while (v26 < (v20 + 63) >> 6)
          {
            v28 = *v25++;
            v27 = v28;
            v24 += 64;
            ++v26;
            if (v28)
            {
              sub_1CA2974B8(v10, v116, v113 & 1);
              v20 = __clz(__rbit64(v27)) + v24;
              goto LABEL_22;
            }
          }

          sub_1CA2974B8(v10, v116, v113 & 1);
        }

LABEL_22:
        v9 = 0;
        v11 = v114 + 1;
        v10 = v20;
        v8 = v110;
        if (v114 + 1 == v23)
        {

          v0 = v112;
          v4 = MEMORY[0x1E69E7CC0];
          goto LABEL_32;
        }
      }

LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
      goto LABEL_91;
    }

    v7 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

LABEL_32:
  v45 = v0 + 43;
  v46 = v0[48];
  v0[43] = v7;
  v47 = [v46 parameterIdentifiersNeedingValues];
  v48 = [v47 allKeys];

  v49 = sub_1CA94C658();
  v50 = sub_1CA4F87A0(v49);

  if (v50)
  {
    v51 = v50;
  }

  else
  {
    v51 = v4;
  }

  sub_1CA2B7FF4(v51);
  v52 = v0[43];
  v53 = v46;
  v54 = OUTLINED_FUNCTION_5_3();
  v56 = sub_1CA4F46A4(v54, v55);
  if (v57)
  {
    v58 = *(v52 + 16);
  }

  else
  {
    v58 = v56;
    v117 = v0 + 43;
    v59 = v56 + 1;
    if (__OFADD__(v56, 1))
    {
      goto LABEL_92;
    }

    for (i = 16 * v56; ; i += 16)
    {
      v61 = *(v52 + 16);
      if (v59 == v61)
      {
        break;
      }

      if (v59 >= v61)
      {
        __break(1u);
        goto LABEL_82;
      }

      v62 = *(v52 + i + 48);
      v63 = *(v52 + i + 56);
      if (v62 != 0x797469746E65 || v63 != 0xE600000000000000)
      {
        v65 = *(v52 + i + 48);
        v66 = *(v52 + i + 56);
        if ((sub_1CA94D7F8() & 1) == 0)
        {
          if (v59 != v58)
          {
            if (v58 >= v61)
            {
              goto LABEL_89;
            }

            v67 = (v52 + 32 + 16 * v58);
            v69 = *v67;
            v68 = v67[1];
            sub_1CA94C218();
            sub_1CA94C218();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1CA42B234(v52);
              v52 = v74;
            }

            v70 = v52 + 16 * v58;
            v71 = *(v70 + 40);
            *(v70 + 32) = v62;
            *(v70 + 40) = v63;

            if (v59 >= *(v52 + 16))
            {
              goto LABEL_90;
            }

            v72 = v52 + i;
            v73 = *(v52 + i + 56);
            *(v72 + 48) = v69;
            *(v72 + 56) = v68;

            *v117 = v52;
          }

          ++v58;
        }
      }

      ++v59;
    }

    v0 = v112;
    v45 = v117;
  }

  v75 = *(v52 + 16);
  if (v75 < v58)
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
  }

  sub_1CA274E6C(v58, v75);
  v76 = *v45;
  if (!*(*v45 + 16))
  {
    v118 = v45;
    v77 = v0[48] + OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction_tableTemplateState;
    OUTLINED_FUNCTION_27_2();
    v78 = *(v77 + 8);
    v79 = *(v78 + 16);
    sub_1CA94C218();
    v80 = 0;
    v115 = MEMORY[0x1E69E7CC0];
    v81 = 0;
    while (v79 != v80)
    {
      if (v80 >= *(v78 + 16))
      {
        goto LABEL_88;
      }

      v82 = (v78 + v81);
      v83 = *(v78 + v81 + 56);
      if (*(v78 + v81 + 64) <= 1u && v83 != 0)
      {
        v85 = v82[10];
        v86 = v82[6];
        v87 = v82[4];
        swift_unknownObjectRetain();
        v88 = v83;
        sub_1CA94C218();
        swift_unknownObjectRetain();
        v89 = [v88 value];
        if (v89)
        {
          v90 = v89;
          sub_1CA94C398();
        }

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      v81 += 64;
      ++v80;
    }

    v91 = *(v115 + 16);
    if (v91)
    {
      v92 = (v115 + 40);
      do
      {
        v94 = *(v92 - 1);
        v93 = *v92;
        swift_bridgeObjectRetain_n();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v100 = *(v76 + 16);
          sub_1CA26DADC();
          v76 = v101;
        }

        v95 = *(v76 + 16);
        if (v95 >= *(v76 + 24) >> 1)
        {
          sub_1CA26DADC();
          v76 = v102;
        }

        v96 = v112[48];
        *(v76 + 16) = v95 + 1;
        v97 = v76 + 16 * v95;
        *(v97 + 32) = v94;
        *(v97 + 40) = v93;
        v98 = [v96 parameterIdentifiersNeedingValues];
        v99 = sub_1CA94C7A8();
        v112[41] = v94;
        v112[42] = v93;
        [v98 __swift_setObject_forKeyedSubscript_];
        swift_unknownObjectRelease();

        v92 += 2;
        --v91;
      }

      while (v91);

      v45 = v118;
      *v118 = v76;
      v0 = v112;
    }

    else
    {

      v0 = v112;
      v45 = v118;
    }
  }

  v103 = v0[60];
  v104 = v0[48];
  v0[66] = sub_1CA94C828();
  v105 = swift_task_alloc();
  v0[67] = v105;
  v105[2] = v104;
  v105[3] = v45;
  v105[4] = v109;
  v106 = *(MEMORY[0x1E69E8920] + 4);
  v107 = swift_task_alloc();
  v0[68] = v107;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445EC8, &qword_1CA989BA0);
  *v107 = v0;
  v107[1] = sub_1CA4F75D0;
  v108 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DE38](v0 + 44);
}

uint64_t sub_1CA4F75D0()
{
  OUTLINED_FUNCTION_14();
  v15 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  OUTLINED_FUNCTION_2_2();
  *v3 = v2;
  v5 = *(v4 + 544);
  v6 = *v1;
  OUTLINED_FUNCTION_13();
  *v7 = v6;
  v2[69] = v0;

  if (v0)
  {
    v8 = v2[62];
    v9 = v2[63];
    v10 = sub_1CA4F82F8;
  }

  else
  {
    v11 = v2[67];
    v12 = v2[66];

    v8 = v2[62];
    v9 = v2[63];
    v10 = sub_1CA4F7718;
  }

  v13 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v10, v8, v9);
}

uint64_t sub_1CA4F7718()
{
  v69 = *MEMORY[0x1E69E9840];
  v1 = v0[44];
  v0[70] = v1;
  v68 = v1;
  if (!v1)
  {
    v15 = v0[61];
LABEL_25:

    v38 = v0[53];
    v39 = *MEMORY[0x1E69E1078];
    sub_1CA949C58();
    v40 = sub_1CA949F68();
    v41 = sub_1CA94CC18();
    v42 = os_log_type_enabled(v40, v41);
    v43 = v0[65];
    v44 = v0[64];
    v45 = v0[53];
    v46 = v0[50];
    v47 = v0[51];
    if (v42)
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_1CA256000, v40, v41, "Ran successfully but missing entity result.", v48, 2u);
      MEMORY[0x1CCAA4BF0](v48, -1, -1);
    }

    v49 = *(v47 + 8);
    v50 = OUTLINED_FUNCTION_20_0();
    v51(v50);
    OUTLINED_FUNCTION_77_7();

    OUTLINED_FUNCTION_5();
    v53 = *MEMORY[0x1E69E9840];
    goto LABEL_28;
  }

  v67 = v1;
  v2 = [v67 action];
  v3 = [v2 parameters];

  sub_1CA25B3D0(0, &qword_1EDB9FB20, 0x1E69AC950);
  v4 = sub_1CA94C658();

  v5 = sub_1CA25B410();
  for (i = 0; ; ++i)
  {
    if (v5 == i)
    {
      v16 = v0[61];

      goto LABEL_25;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1CCAA22D0](i, v4);
    }

    else
    {
      if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_33;
      }

      v7 = *(v4 + 8 * i + 32);
    }

    v8 = v7;
    v0[71] = v7;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_33:
      __break(1u);
    }

    v9 = [v7 identifier];
    v10 = sub_1CA94C3A8();
    v12 = v11;

    if (v10 == 0x797469746E65 && v12 == 0xE600000000000000)
    {
      break;
    }

    v14 = sub_1CA94D7F8();

    if (v14)
    {
      goto LABEL_18;
    }
  }

LABEL_18:

  v17 = [v8 value];
  if (!v17 || (v18 = v17, v19 = [v17 value], v18, sub_1CA94D258(), swift_unknownObjectRelease(), sub_1CA25B3D0(0, &unk_1EDB9F6A0, 0x1E69AC7D0), (swift_dynamicCast() & 1) == 0))
  {
    v37 = v0[61];

    goto LABEL_25;
  }

  v20 = v0[65];

  v21 = v0[45];
  v0[72] = v21;
  v22 = [objc_opt_self() policyWithEntityMetadata_];
  v0[47] = 0;
  v23 = [v22 connectionWithError_];
  v0[73] = v23;

  v24 = v0[47];
  if (v23)
  {
    v25 = v0[65];
    v27 = v0[58];
    v26 = v0[59];
    v28 = v0[56];
    v29 = v0[55];
    v65 = v0[57];
    v66 = v0[54];
    sub_1CA25B3D0(0, &unk_1EC445BB0, 0x1E69ACE00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1CA9813B0;
    v31 = v24;
    *(v30 + 32) = [v21 identifier];
    *v26 = v30;
    (*(v27 + 104))(v26, *MEMORY[0x1E69ACAC8], v65);
    *v28 = v25;
    (*(v29 + 104))(v28, *MEMORY[0x1E69ACB00], v66);
    v32 = objc_allocWithZone(MEMORY[0x1E69ACFD8]);
    v33 = v25;
    [v32 init];
    v34 = sub_1CA94CF18();
    v0[74] = v34;
    v0[2] = v0;
    v0[7] = v0 + 46;
    v0[3] = sub_1CA4F7E04;
    v35 = swift_continuation_init();
    v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4477D0, &qword_1CA988F20);
    v0[18] = MEMORY[0x1E69E9820];
    v0[19] = 1107296256;
    v0[20] = sub_1CA4F4758;
    v0[21] = &block_descriptor_32;
    v0[22] = v35;
    [v23 performConfigurableQuery:v34 completionHandler:?];
    v36 = *MEMORY[0x1E69E9840];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  v54 = v0[65];
  v55 = v0[64];
  v56 = v0[61];
  v57 = v24;

  sub_1CA948AD8();

  swift_willThrow();
  v58 = v0[43];

  v59 = v0[59];
  v60 = v0[56];
  v62 = v0[52];
  v61 = v0[53];

  OUTLINED_FUNCTION_5();
  v63 = *MEMORY[0x1E69E9840];
LABEL_28:

  return v52();
}

uint64_t sub_1CA4F7E04()
{
  OUTLINED_FUNCTION_0();
  v13 = *MEMORY[0x1E69E9840];
  v1 = *v0;
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  *v3 = *v0;
  *(v2 + 600) = *(v4 + 48);
  OUTLINED_FUNCTION_21_1();
  v6 = *(v5 + 504);
  v8 = *(v7 + 496);
  if (v9)
  {
    v10 = sub_1CA4F83DC;
  }

  else
  {
    v10 = sub_1CA4F7F50;
  }

  v11 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v10, v8, v6);
}

uint64_t sub_1CA4F7F50()
{
  OUTLINED_FUNCTION_6();
  v8 = *MEMORY[0x1E69E9840];
  v1 = v0[74];
  v2 = v0[73];
  v3 = v0[48];
  v4 = v0[46];
  v0[76] = v4;

  v0[10] = v0;
  v0[11] = sub_1CA4F80B0;
  v5 = swift_continuation_init();
  v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445ED0, &qword_1CA989BA8);
  v0[26] = MEMORY[0x1E69E9820];
  v0[27] = 1107296256;
  v0[28] = sub_1CA4F8934;
  v0[29] = &block_descriptor_35;
  v0[30] = v5;
  [v3 finishRunningWith:v4 completionHandler:v0 + 26];
  v6 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DEC8](v0 + 10);
}

uint64_t sub_1CA4F80B0()
{
  OUTLINED_FUNCTION_0();
  v13 = *MEMORY[0x1E69E9840];
  v1 = *v0;
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  *v3 = *v0;
  *(v2 + 616) = *(v4 + 112);
  OUTLINED_FUNCTION_21_1();
  v6 = *(v5 + 504);
  v8 = *(v7 + 496);
  if (v9)
  {
    v10 = sub_1CA4F84E8;
  }

  else
  {
    v10 = sub_1CA4F81FC;
  }

  v11 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v10, v8, v6);
}

uint64_t sub_1CA4F81FC()
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 608);
  v2 = *(v0 + 576);
  v3 = *(v0 + 568);
  v4 = *(v0 + 560);
  v5 = *(v0 + 520);
  v6 = *(v0 + 488);

  OUTLINED_FUNCTION_77_7();

  OUTLINED_FUNCTION_5();
  v8 = *MEMORY[0x1E69E9840];

  return v7();
}

uint64_t sub_1CA4F82F8()
{
  OUTLINED_FUNCTION_6();
  v11 = *MEMORY[0x1E69E9840];
  v1 = v0[67];
  v2 = v0[66];
  v3 = v0[65];
  v4 = v0[64];
  v5 = v0[61];

  v6 = v0[43];

  v7 = v0[69];
  OUTLINED_FUNCTION_44_6();

  OUTLINED_FUNCTION_5();
  v9 = *MEMORY[0x1E69E9840];

  return v8();
}

uint64_t sub_1CA4F83DC()
{
  OUTLINED_FUNCTION_39_1();
  v15 = *MEMORY[0x1E69E9840];
  v1 = v0[75];
  v2 = v0[74];
  v3 = v0[73];
  v4 = v0[72];
  v5 = v0[71];
  v6 = v0[70];
  v7 = v0[65];
  v8 = v0[64];
  v9 = v0[61];

  swift_willThrow();

  v10 = v0[43];

  v11 = v0[75];
  OUTLINED_FUNCTION_44_6();

  OUTLINED_FUNCTION_5();
  v13 = *MEMORY[0x1E69E9840];

  return v12();
}

uint64_t sub_1CA4F84E8()
{
  OUTLINED_FUNCTION_39_1();
  v14 = *MEMORY[0x1E69E9840];
  v1 = v0[77];
  v2 = v0[76];
  v3 = v0[72];
  v4 = v0[71];
  v5 = v0[70];
  v6 = v0[65];
  v7 = v0[64];
  v8 = v0[61];

  swift_willThrow();

  v9 = v0[43];

  v10 = v0[77];
  OUTLINED_FUNCTION_44_6();

  OUTLINED_FUNCTION_5();
  v12 = *MEMORY[0x1E69E9840];

  return v11();
}

id sub_1CA4F85E4()
{
  v0 = sub_1CA94C3A8();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981310;
  v4 = *MEMORY[0x1E696A578];
  *(inited + 32) = sub_1CA94C3A8();
  *(inited + 40) = v5;
  sub_1CA94C438();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v6 = qword_1EDB9F690;
  v7 = sub_1CA94C368();
  v8 = sub_1CA94C368();

  v9 = [v6 localizedStringForKey:v7 value:v8 table:0];

  v10 = sub_1CA94C3A8();
  v12 = v11;

  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v10;
  *(inited + 56) = v12;
  v13 = sub_1CA94C1E8();
  v14 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  return sub_1CA298568(v0, v2, 16, v13);
}

uint64_t sub_1CA4F87A0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  sub_1CA271524();
  v3 = v11;
  v4 = a1 + 32;
  if (v2)
  {
    while (1)
    {
      sub_1CA25B374(v4, v10);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v11 = v3;
      v5 = *(v3 + 16);
      if (v5 >= *(v3 + 24) >> 1)
      {
        sub_1CA271524();
        v3 = v11;
      }

      *(v3 + 16) = v5 + 1;
      v6 = v3 + 16 * v5;
      *(v6 + 32) = v8;
      *(v6 + 40) = v9;
      v4 += 32;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_1CA4F88C8(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v7 = sub_1CA697B04();
  v8 = *a3;
  v9 = sub_1CA94C218();
  sub_1CA4FAF40(v9, a4, a1);
}

uint64_t sub_1CA4F8934(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    v5 = a2;

    return sub_1CA35FF80(v4, v5);
  }

  else
  {
    v7 = *v3;

    return j__swift_continuation_throwingResume();
  }
}

uint64_t sub_1CA4F89C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_1CA94C838();
  v3[5] = sub_1CA94C828();
  v5 = sub_1CA94C7C8();

  return MEMORY[0x1EEE6DFA0](sub_1CA4F8A60, v5, v4);
}

uint64_t sub_1CA4F8A60()
{
  OUTLINED_FUNCTION_14();
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];

  v0[6] = _Block_copy(v3);
  v5 = v4;
  v6 = v2;
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_1CA4FD3C0;
  v8 = v0[4];

  return WFEntityUpdatingAction.run(with:)();
}

uint64_t sub_1CA4F8B18()
{
  OUTLINED_FUNCTION_0();
  v1[26] = v2;
  v1[27] = v0;
  sub_1CA94C838();
  v1[28] = sub_1CA94C828();
  OUTLINED_FUNCTION_87();
  v4 = sub_1CA94C7C8();
  v1[29] = v4;
  v1[30] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1CA4F8BA8, v4, v3);
}

uint64_t sub_1CA4F8BA8()
{
  OUTLINED_FUNCTION_39_1();
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = [v1 value];
  v4 = [v3 valueType];

  v5 = [v1 value];
  v6 = [v2 fullyQualifiedLinkActionIdentifier];
  v7 = [v6 bundleIdentifier];

  if (!v7)
  {
    sub_1CA94C3A8();
    v7 = sub_1CA94C368();
  }

  sub_1CA3F132C(*(v0 + 216), &selRef_displayableAppBundleIdentifier);
  if (v8)
  {
    v9 = sub_1CA94C368();
  }

  else
  {
    v9 = 0;
  }

  v10 = *(v0 + 216);
  [v10 outputDisclosureLevel];
  v11 = OUTLINED_FUNCTION_136();
  v13 = [v11 v12];

  [v10 setOutput_];
  sub_1CA697814(v0 + 144);
  if (*(v0 + 192))
  {
    v14 = *(v0 + 168);
    if (v14)
    {
      v15 = [v14 value];
      if (v15)
      {
        v16 = v15;
        sub_1CA94C398();
      }
    }

    v17 = *(v0 + 224);

    sub_1CA27080C(v0 + 144, &qword_1EC445FA0, &unk_1CA98B5A0);
  }

  else
  {
    v18 = *(v0 + 224);
  }

  OUTLINED_FUNCTION_5();

  return v19();
}

uint64_t sub_1CA4F8F14()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 256) = *(v3 + 48);
  OUTLINED_FUNCTION_21_1();
  v5 = *(v4 + 240);
  v7 = *(v6 + 232);
  if (v8)
  {
    v9 = sub_1CA4F90B0;
  }

  else
  {
    v9 = sub_1CA4F9030;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v5);
}

uint64_t sub_1CA4F9030()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 248);
  v2 = *(v0 + 224);
  sub_1CA27080C(v0 + 144, &qword_1EC445FA0, &unk_1CA98B5A0);

  OUTLINED_FUNCTION_5();

  return v3();
}

uint64_t sub_1CA4F90B0()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[31];
  v2 = v0[32];
  v3 = v0[28];

  swift_willThrow();
  sub_1CA27080C((v0 + 18), &qword_1EC445FA0, &unk_1CA98B5A0);

  OUTLINED_FUNCTION_5();
  v5 = v0[32];

  return v4();
}

uint64_t sub_1CA4F9158(void *a1, int a2, void *a3, void *aBlock)
{
  v6 = _Block_copy(aBlock);
  OUTLINED_FUNCTION_50_5();
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = a1;
  v8 = a3;
  v9 = a1;
  v10 = OUTLINED_FUNCTION_23();

  return sub_1CA67052C(v10, v11);
}

uint64_t sub_1CA4F91D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_1CA94C838();
  v3[5] = sub_1CA94C828();
  v5 = sub_1CA94C7C8();

  return MEMORY[0x1EEE6DFA0](sub_1CA4F926C, v5, v4);
}

uint64_t sub_1CA4F926C()
{
  OUTLINED_FUNCTION_14();
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];

  v0[6] = _Block_copy(v3);
  v5 = v4;
  v6 = v2;
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_1CA4F932C;
  v8 = v0[4];
  v9 = v0[2];

  return sub_1CA4F8B18();
}

uint64_t sub_1CA4F932C()
{
  OUTLINED_FUNCTION_6();
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  OUTLINED_FUNCTION_13();
  *v5 = v4;
  v6 = v3[7];
  v7 = v3[4];
  v8 = v3[2];
  v9 = *v1;
  *v5 = *v1;

  v10 = v3[6];
  if (v2)
  {
    v11 = sub_1CA948AC8();

    v12 = OUTLINED_FUNCTION_33();
    v13(v12, v11);
  }

  else
  {
    v14 = OUTLINED_FUNCTION_33();
    v15(v14, 0);
  }

  _Block_release(v4[6]);
  v16 = v9[1];

  return v16();
}

void WFEntityUpdatingAction.finishRunningWithError(_:)(void *a1)
{
  v3 = *&v1[OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction_preprocessedEntity];
  *&v1[OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction_preprocessedEntity] = 0;

  if (a1)
  {
    a1 = sub_1CA948AC8();
  }

  v4.receiver = v1;
  v4.super_class = type metadata accessor for WFEntityUpdatingAction();
  objc_msgSendSuper2(&v4, sel_finishRunningWithError_, a1);
}

uint64_t sub_1CA4F9578()
{
  OUTLINED_FUNCTION_0();
  v1[19] = v2;
  v1[20] = v0;
  v1[18] = v3;
  v4 = sub_1CA949F78();
  v1[21] = v4;
  OUTLINED_FUNCTION_12(v4);
  v1[22] = v5;
  v7 = *(v6 + 64) + 15;
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  sub_1CA94C838();
  v1[25] = sub_1CA94C828();
  OUTLINED_FUNCTION_87();
  v9 = sub_1CA94C7C8();
  v1[26] = v9;
  v1[27] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1CA4F966C, v9, v8);
}

uint64_t sub_1CA4F9CC4()
{
  OUTLINED_FUNCTION_14();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_13();
  *v4 = v3;
  v5 = v2[31];
  v6 = *v1;
  OUTLINED_FUNCTION_2_2();
  *v7 = v6;
  v3[32] = v8;

  v9 = v2[30];
  if (v0)
  {

    v10 = v3[26];
    v11 = v3[27];
    v12 = sub_1CA4FA7B8;
  }

  else
  {

    v10 = v3[26];
    v11 = v3[27];
    v12 = sub_1CA4F9E00;
  }

  return MEMORY[0x1EEE6DFA0](v12, v10, v11);
}

uint64_t sub_1CA4FA314()
{
  OUTLINED_FUNCTION_14();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_13();
  *v4 = v3;
  v5 = v2[36];
  v6 = *v1;
  OUTLINED_FUNCTION_2_2();
  *v7 = v6;
  v3[37] = v8;

  v9 = v2[35];
  if (v0)
  {

    v10 = v3[26];
    v11 = v3[27];
    v12 = sub_1CA4FAC9C;
  }

  else
  {

    v10 = v3[26];
    v11 = v3[27];
    v12 = sub_1CA4FA450;
  }

  return MEMORY[0x1EEE6DFA0](v12, v10, v11);
}

uint64_t sub_1CA4FADB8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CA4FAE5C;

  return sub_1CA4F9578();
}

uint64_t sub_1CA4FAE5C()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_13();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4_38();

  return v6(v5);
}

uint64_t sub_1CA4FAF40(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443880, &qword_1CA982FB0);
  OUTLINED_FUNCTION_18_0(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445F90, &qword_1CA989C88);
  OUTLINED_FUNCTION_18_0(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v16);
  v18 = v35 - v17;
  v19 = *(a1 + 16);
  if (v19)
  {
    v20 = *&v3[OBJC_IVAR____TtC11WorkflowKit19BatchActionExecutor_connection];
    *&v3[OBJC_IVAR____TtC11WorkflowKit19BatchActionExecutor_connection] = a2;
    v21 = a2;

    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447FB0, &unk_1CA989C78);
    OUTLINED_FUNCTION_52(v22);
    (*(v23 + 16))(v18, a3, v22);
    __swift_storeEnumTagSinglePayload(v18, 0, 1, v22);
    v24 = OBJC_IVAR____TtC11WorkflowKit19BatchActionExecutor_continuation;
    swift_beginAccess();
    sub_1CA4FCD60(v18, &v3[v24]);
    swift_endAccess();
    v25 = sub_1CA94C218();
    v26 = sub_1CA4FB1B4(v25);
    v27 = OBJC_IVAR____TtC11WorkflowKit19BatchActionExecutor_queuedActionIdentifiers;
    swift_beginAccess();
    v28 = *&v3[v27];
    *&v3[v27] = v26;

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v30 = Strong;
      [Strong setTotalUnitCount_];
    }

    v31 = sub_1CA94C858();
    __swift_storeEnumTagSinglePayload(v12, 1, 1, v31);
    v32 = swift_allocObject();
    v32[2] = 0;
    v32[3] = 0;
    v32[4] = v3;
    v33 = v3;
    sub_1CA30C978();
  }

  else
  {
    v35[1] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447FB0, &unk_1CA989C78);
    return sub_1CA94C7E8();
  }
}

uint64_t sub_1CA4FB1B4(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = 0;
  v4 = 0;
  v5 = v2 >> 1;
  v6 = v2 - 1;
  for (i = 16 * v2 + 24; ; i -= 16)
  {
    if (v4 == v6)
    {
      goto LABEL_11;
    }

    v8 = *(v1 + 16);
    if (v4 >= v8)
    {
      break;
    }

    if (v6 >= v8)
    {
      goto LABEL_14;
    }

    v10 = *(v1 + v3 + 32);
    v9 = *(v1 + v3 + 40);
    v12 = *(v1 + i - 8);
    v11 = *(v1 + i);
    sub_1CA94C218();
    sub_1CA94C218();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1CA42B234(v1);
      v1 = v17;
    }

    v13 = v1 + v3;
    v14 = *(v1 + v3 + 40);
    *(v13 + 32) = v12;
    *(v13 + 40) = v11;

    if (v6 >= *(v1 + 16))
    {
      goto LABEL_15;
    }

    v15 = (v1 + i);
    v16 = *(v1 + i);
    *(v15 - 1) = v10;
    *v15 = v9;

LABEL_11:
    ++v4;
    --v6;
    v3 += 16;
    if (v5 == v4)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1CA4FB2C8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1CA4FB35C;

  return sub_1CA4FB488();
}

uint64_t sub_1CA4FB35C()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v2 = v1;
  v4 = *(v3 + 24);
  *v2 = *v0;
  *(v1 + 32) = v5;

  v6 = OUTLINED_FUNCTION_85();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1CA4FB444()
{
  **(v0 + 16) = *(v0 + 32);
  OUTLINED_FUNCTION_5();
  return v1();
}

uint64_t sub_1CA4FB488()
{
  OUTLINED_FUNCTION_0();
  v1[9] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447FB0, &unk_1CA989C78);
  v1[10] = v2;
  OUTLINED_FUNCTION_12(v2);
  v1[11] = v3;
  v5 = *(v4 + 64);
  v1[12] = OUTLINED_FUNCTION_45();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445F90, &qword_1CA989C88);
  OUTLINED_FUNCTION_18_0(v6);
  v8 = *(v7 + 64);
  v1[13] = OUTLINED_FUNCTION_45();
  v9 = OUTLINED_FUNCTION_85();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1CA4FB564()
{
  v1 = v0[9];
  v2 = OBJC_IVAR____TtC11WorkflowKit19BatchActionExecutor_queuedActionIdentifiers;
  swift_beginAccess();
  if (*(*(v1 + v2) + 16))
  {
    sub_1CA43FC10();
    if (!v3)
    {
      sub_1CA6A6BB0(*(*(v1 + v2) + 16) - 1);
    }

    v0[14] = v3;
    v4 = v0[9];
    swift_endAccess();
    v5 = v4 + OBJC_IVAR____TtC11WorkflowKit19BatchActionExecutor_provider;
    Strong = swift_unknownObjectWeakLoadStrong();
    v0[15] = Strong;
    if (Strong)
    {
      v7 = *(v5 + 8);
      swift_getObjectType();
      OUTLINED_FUNCTION_70_9(v7);
      v32 = (v8 + *v8);
      v10 = *(v9 + 4);
      v11 = swift_task_alloc();
      v0[16] = v11;
      *v11 = v0;
      v11[1] = sub_1CA4FB828;
      v12 = OUTLINED_FUNCTION_23();

      return v32(v12);
    }

    v14 = v0[13];
    v16 = v0[9];
    v15 = v0[10];
    v17 = OBJC_IVAR____TtC11WorkflowKit19BatchActionExecutor_continuation;
    OUTLINED_FUNCTION_27_2();
    sub_1CA4FCCB0(v16 + v17, v14, &qword_1EC445F90, &qword_1CA989C88);
    v18 = OUTLINED_FUNCTION_60_6();
    v19 = v0[13];
    if (v18)
    {
      sub_1CA27080C(v0[13], &qword_1EC445F90, &qword_1CA989C88);
    }

    else
    {
      v21 = v0[11];
      v20 = v0[12];
      v22 = v0[10];
      v23 = OUTLINED_FUNCTION_8_21();
      v24(v23);
      sub_1CA27080C(v19, &qword_1EC445F90, &qword_1CA989C88);
      sub_1CA4FCD0C();
      v25 = swift_allocError();
      OUTLINED_FUNCTION_78_6(v25);
      v26 = *(v21 + 8);
      v27 = OUTLINED_FUNCTION_20_0();
      v28(v27);
    }
  }

  else
  {
    swift_endAccess();
  }

  v30 = v0[12];
  v29 = v0[13];

  OUTLINED_FUNCTION_2_4();

  return v31(0);
}

uint64_t sub_1CA4FB828()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v2 = v1;
  v4 = v3[16];
  v5 = v3[15];
  v6 = v3[14];
  v7 = *v0;
  OUTLINED_FUNCTION_13();
  *v8 = v7;
  *(v10 + 136) = v9;

  v11 = OUTLINED_FUNCTION_85();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1CA4FB940()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[17];
  if (!v1)
  {
LABEL_7:
    v11 = v0[13];
    v13 = v0[9];
    v12 = v0[10];
    v14 = OBJC_IVAR____TtC11WorkflowKit19BatchActionExecutor_continuation;
    OUTLINED_FUNCTION_27_2();
    sub_1CA4FCCB0(v13 + v14, v11, &qword_1EC445F90, &qword_1CA989C88);
    v15 = OUTLINED_FUNCTION_60_6();
    v16 = v0[13];
    if (v15)
    {
      sub_1CA27080C(v0[13], &qword_1EC445F90, &qword_1CA989C88);
    }

    else
    {
      v18 = v0[11];
      v17 = v0[12];
      v19 = v0[10];
      v20 = OUTLINED_FUNCTION_8_21();
      v21(v20);
      sub_1CA27080C(v16, &qword_1EC445F90, &qword_1CA989C88);
      sub_1CA4FCD0C();
      v22 = swift_allocError();
      OUTLINED_FUNCTION_78_6(v22);
      v23 = *(v18 + 8);
      v24 = OUTLINED_FUNCTION_20_0();
      v25(v24);
    }

    v10 = 0;
    goto LABEL_11;
  }

  v2 = v0[9];
  v3 = *(v2 + OBJC_IVAR____TtC11WorkflowKit19BatchActionExecutor_connection);
  if (!v3)
  {

    goto LABEL_7;
  }

  v4 = *(v2 + OBJC_IVAR____TtC11WorkflowKit19BatchActionExecutor_options);
  v5 = v3;
  v6 = [v5 executorForAction:v1 options:v4 delegate:v2];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = [v6 progress];
    [v8 addChild:v9 withPendingUnitCount:1];
  }

  [v6 perform];

  v10 = 1;
LABEL_11:
  v27 = v0[12];
  v26 = v0[13];

  OUTLINED_FUNCTION_2_4();

  return v28(v10);
}

void sub_1CA4FBC68(uint64_t a1, uint64_t a2, SEL *a3)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    [Strong *a3];
  }
}

uint64_t sub_1CA4FBD6C(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443880, &qword_1CA982FB0);
  OUTLINED_FUNCTION_18_0(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447FB0, &unk_1CA989C78);
  OUTLINED_FUNCTION_1_0(v13);
  v15 = v14;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v18);
  v20 = v36 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445F90, &qword_1CA989C88);
  OUTLINED_FUNCTION_18_0(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v24);
  v26 = v36 - v25;
  if (a3)
  {
    v27 = OBJC_IVAR____TtC11WorkflowKit19BatchActionExecutor_continuation;
    OUTLINED_FUNCTION_27_2();
    sub_1CA4FCCB0(&v4[v27], v26, &qword_1EC445F90, &qword_1CA989C88);
    if (__swift_getEnumTagSinglePayload(v26, 1, v13))
    {
      sub_1CA27080C(v26, &qword_1EC445F90, &qword_1CA989C88);
    }

    else
    {
      (*(v15 + 16))(v20, v26, v13);
      v33 = a3;
      sub_1CA27080C(v26, &qword_1EC445F90, &qword_1CA989C88);
      v36[0] = a3;
      sub_1CA94C7D8();
      (*(v15 + 8))(v20, v13);
    }

    v34 = OBJC_IVAR____TtC11WorkflowKit19BatchActionExecutor_queuedActionIdentifiers;
    swift_beginAccess();
    v35 = *&v4[v34];
    *&v4[v34] = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v28 = sub_1CA94C858();
    __swift_storeEnumTagSinglePayload(v12, 1, 1, v28);
    v29 = swift_allocObject();
    v29[2] = 0;
    v29[3] = 0;
    v29[4] = v4;
    v29[5] = a2;
    v30 = a2;
    v31 = v4;
    sub_1CA30C708();
  }
}

uint64_t sub_1CA4FC020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447FB0, &unk_1CA989C78);
  v5[8] = v6;
  v7 = *(v6 - 8);
  v5[9] = v7;
  v8 = *(v7 + 64) + 15;
  v5[10] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445F90, &qword_1CA989C88) - 8) + 64) + 15;
  v5[11] = swift_task_alloc();
  v10 = swift_task_alloc();
  v5[12] = v10;
  *v10 = v5;
  v10[1] = sub_1CA4FC154;

  return sub_1CA4FB488();
}

uint64_t sub_1CA4FC154()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v2 = v1;
  v4 = *(v3 + 96);
  *v2 = *v0;
  *(v1 + 104) = v5;

  v6 = OUTLINED_FUNCTION_85();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1CA4FC23C()
{
  OUTLINED_FUNCTION_6();
  if ((*(v0 + 104) & 1) == 0)
  {
    v1 = *(v0 + 88);
    v2 = *(v0 + 64);
    v3 = *(v0 + 48);
    v4 = OBJC_IVAR____TtC11WorkflowKit19BatchActionExecutor_continuation;
    OUTLINED_FUNCTION_27_2();
    sub_1CA4FCCB0(v3 + v4, v1, &qword_1EC445F90, &qword_1CA989C88);
    v5 = OUTLINED_FUNCTION_60_6();
    v6 = *(v0 + 88);
    if (v5)
    {
      sub_1CA27080C(*(v0 + 88), &qword_1EC445F90, &qword_1CA989C88);
    }

    else
    {
      v8 = *(v0 + 72);
      v7 = *(v0 + 80);
      v10 = *(v0 + 56);
      v9 = *(v0 + 64);
      v11 = OUTLINED_FUNCTION_8_21();
      v12(v11);
      sub_1CA27080C(v6, &qword_1EC445F90, &qword_1CA989C88);
      *(v0 + 40) = v10;
      v13 = v10;
      sub_1CA94C7E8();
      v14 = *(v8 + 8);
      v15 = OUTLINED_FUNCTION_20_0();
      v16(v15);
    }
  }

  v18 = *(v0 + 80);
  v17 = *(v0 + 88);

  OUTLINED_FUNCTION_5();

  return v19();
}

void sub_1CA4FC404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if ([Strong respondsToSelector_])
    {
      v13 = a2;
      v14 = a3;
      OUTLINED_FUNCTION_16_19();
      v10 = 1107296256;
      v11 = sub_1CA4FC510;
      v12 = &block_descriptor_58;
      v7 = _Block_copy(aBlock);

      [v8 executor:a1 needsAppProtectionUnlockWithCompletionHandler:v7];

      _Block_release(v7);
    }

    else
    {
    }
  }
}

uint64_t sub_1CA4FC510(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

id sub_1CA4FC644()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BatchActionExecutor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1CA4FC70C(void *a1)
{
  v3 = sub_1CA94C368();

  sub_1CA25B3D0(0, &qword_1EDB9FB20, 0x1E69AC950);
  v4 = sub_1CA94C648();

  v5 = [v1 initWithMetadata:a1 bundleIdentifier:v3 parameters:v4];

  return v5;
}

uint64_t block_destroy_helper_17(uint64_t a1)
{
  return __swift_destroy_boxed_opaque_existential_0((a1 + 32));
}

{
  v1 = *(a1 + 40);
}

void sub_1CA4FC7D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = *(*v3 + 16);
  if (v4 < a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = *(a3 + 16);
  v7 = __OFSUB__(v6, v5);
  v8 = v6 - v5;
  if (v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (__OFADD__(v4, v8))
  {
LABEL_13:
    __break(1u);
    return;
  }

  sub_1CA32E594(v4 + v8, 1);

  sub_1CA6B0018();
}

void sub_1CA4FC878(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1CA94C368();

  [a3 setPreferredBundleIdentifier_];
}

uint64_t objectdestroy_9Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = OUTLINED_FUNCTION_49_5();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_1CA4FC9B8(void *a1)
{
  v1 = [a1 processedParameters];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444280, &qword_1CA983550);
  v3 = sub_1CA94C1C8();

  return v3;
}

uint64_t sub_1CA4FCA38(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_1CA94D2B8();
  v4 = *(a1 + 36);
  return result;
}

uint64_t type metadata accessor for BatchActionExecutor()
{
  result = qword_1EC445F70;
  if (!qword_1EC445F70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CA4FCAD8()
{
  sub_1CA4FCBA4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1CA4FCBA4()
{
  if (!qword_1EC445F80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447FB0, &unk_1CA989C78);
    v0 = sub_1CA94D098();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC445F80);
    }
  }
}

uint64_t sub_1CA4FCC08()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_20(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_53_9(v6);

  return sub_1CA4FC020(v8, v9, v10, v4, v3);
}

uint64_t sub_1CA4FCCB0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_52(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_23();
  v9(v8);
  return a2;
}

unint64_t sub_1CA4FCD0C()
{
  result = qword_1EC445F98;
  if (!qword_1EC445F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC445F98);
  }

  return result;
}

uint64_t sub_1CA4FCD60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445F90, &qword_1CA989C88);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CA4FCDD0()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_20(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_53_9(v5);

  return sub_1CA4FB2C8(v7);
}

uint64_t sub_1CA4FCE84()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_20(v4);
  *v5 = v6;
  v5[1] = sub_1CA2E9390;
  v7 = OUTLINED_FUNCTION_20_0();

  return v8(v7);
}

uint64_t objectdestroy_74Tm()
{
  _Block_release(*(v0 + 24));

  v1 = OUTLINED_FUNCTION_50_5();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1CA4FCF6C()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_20(v4);
  *v5 = v6;
  v5[1] = sub_1CA2E9390;
  v7 = OUTLINED_FUNCTION_20_0();

  return v8(v7);
}

uint64_t sub_1CA4FD014()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_20(v5);
  *v6 = v7;
  v6[1] = sub_1CA2E9390;
  v8 = OUTLINED_FUNCTION_20_0();

  return v9(v8);
}

void sub_1CA4FD0C8(unint64_t a1, int a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      OUTLINED_FUNCTION_20_0();
      sub_1CA94D5E8();
      sub_1CA25B3D0(0, &unk_1EDB9F6B0, 0x1E69ACA90);
      OUTLINED_FUNCTION_23_7();
      return;
    }

    goto LABEL_19;
  }

  if ((a3 & 1) == 0)
  {
LABEL_8:
    if ((a1 & 0x8000000000000000) == 0 && 1 << *(a4 + 32) > a1)
    {
      if ((*(a4 + 8 * (a1 >> 6) + 64) >> a1))
      {
        if (*(a4 + 36) == a2)
        {
          goto LABEL_12;
        }

LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
        return;
      }

LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_20_0();
  if (sub_1CA94D5C8() != *(a4 + 36))
  {
    __break(1u);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_20_0();
  sub_1CA94D5D8();
  sub_1CA25B3D0(0, &qword_1EC445B70, 0x1E69AC7D8);
  OUTLINED_FUNCTION_23_7();
  a2 = v11;
  a1 = sub_1CA320E58();
  v8 = v7;

  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_12:
  v9 = *(*(a4 + 56) + 8 * a1);

  v10 = v9;
}

uint64_t sub_1CA4FD234(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 56) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

_BYTE *storeEnumTagSinglePayload for BatchActionExecutor.BatchActionExecutorError(_BYTE *result, int a2, int a3)
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

unint64_t sub_1CA4FD338()
{
  result = qword_1EC445FC0;
  if (!qword_1EC445FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC445FC0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_44_6()
{
  v2 = v0[59];
  v3 = v0[56];
  v5 = v0[52];
  v4 = v0[53];
}

uint64_t OUTLINED_FUNCTION_60_6()
{

  return __swift_getEnumTagSinglePayload(v1, 1, v0);
}

uint64_t OUTLINED_FUNCTION_62_5(uint64_t a1)
{
  v4 = *(v1 + 144);
  v5 = *(v1 + 152);

  return sub_1CA323E28(v4, v5, a1);
}

uint64_t OUTLINED_FUNCTION_82_3()
{
}

id sub_1CA4FD488()
{
  v334 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981300;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000012;
  *(inited + 48) = 0x80000001CA9C5860;
  *(inited + 64) = v1;
  *(inited + 72) = @"AppDefinition";
  v2 = @"ActionClass";
  v3 = @"AppDefinition";
  v4 = sub_1CA94C1E8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 80) = v4;
  *(inited + 104) = v5;
  *(inited + 112) = @"Description";
  v342 = inited;
  v347 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_1CA97EDF0;
  *(v6 + 32) = @"DescriptionInput";
  v7 = @"Description";
  v8 = @"DescriptionInput";
  v9 = sub_1CA94C438();
  v11 = v10;
  v12 = sub_1CA94C438();
  v14 = v13;
  v15 = sub_1CA948E58();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v349 = v17;
  v351 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = &v323 - v351;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v352 = qword_1EDB9F690;
  v19 = [qword_1EDB9F690 bundleURL];
  v20 = sub_1CA948BA8();
  v350 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v353 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  v22 = &v323 - v353;
  sub_1CA948B68();

  v23 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v24 = sub_1CA2F9F14(v9, v11, v12, v14, 0, 0, v18, v22);
  v25 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(v6 + 40) = v24;
  *(v6 + 64) = v25;
  *(v6 + 72) = @"DescriptionSummary";
  v348 = v25;
  v26 = @"DescriptionSummary";
  v27 = sub_1CA94C438();
  v345 = v28;
  v29 = sub_1CA94C438();
  v31 = v30;
  v346 = &v323;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v323 - v351;
  sub_1CA948D98();
  v33 = [v352 bundleURL];
  MEMORY[0x1EEE9AC00](v33);
  v34 = &v323 - v353;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v36 = sub_1CA2F9F14(v27, v345, v29, v31, 0, 0, v32, v34);
  *(v6 + 104) = v25;
  *(v6 + 80) = v36;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v37 = v347;
  v38 = sub_1CA6B3784();
  v39 = v342;
  v342[15] = v38;
  v39[18] = v37;
  v39[19] = @"Input";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v40 = swift_initStackObject();
  v340 = xmmword_1CA981350;
  *(v40 + 16) = xmmword_1CA981350;
  *(v40 + 32) = 0x656C7069746C754DLL;
  *(v40 + 40) = 0xE800000000000000;
  v41 = MEMORY[0x1E69E6370];
  *(v40 + 48) = 1;
  *(v40 + 72) = v41;
  strcpy((v40 + 80), "ParameterKey");
  *(v40 + 93) = 0;
  *(v40 + 94) = -5120;
  *(v40 + 96) = 0x776F646E69574657;
  *(v40 + 104) = 0xE800000000000000;
  *(v40 + 120) = MEMORY[0x1E69E6158];
  *(v40 + 128) = 0x6465726975716552;
  *(v40 + 136) = 0xE800000000000000;
  *(v40 + 144) = 1;
  *(v40 + 168) = v41;
  *(v40 + 176) = 0x7365707954;
  *(v40 + 184) = 0xE500000000000000;
  v333 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v40 + 216) = v333;
  *(v40 + 192) = &unk_1F4A02368;
  v42 = @"Input";
  v43 = sub_1CA94C1E8();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v39[20] = v43;
  v39[23] = v44;
  v39[24] = @"Name";
  v45 = @"Name";
  v46 = sub_1CA94C438();
  v48 = v47;
  v49 = sub_1CA94C438();
  v51 = v50;
  v347 = &v323;
  MEMORY[0x1EEE9AC00](v49);
  v52 = &v323 - v351;
  sub_1CA948D98();
  v53 = [v352 bundleURL];
  MEMORY[0x1EEE9AC00](v53);
  v54 = &v323 - v353;
  sub_1CA948B68();

  v55 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v39[25] = sub_1CA2F9F14(v46, v48, v49, v51, 0, 0, v52, v54);
  v39[28] = v348;
  v39[29] = @"Parameters";
  v341 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v344 = swift_allocObject();
  *(v344 + 16) = xmmword_1CA981410;
  v347 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v345 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v56 = swift_initStackObject();
  *&v339 = v56;
  *(v56 + 16) = xmmword_1CA981370;
  *(v56 + 32) = @"Class";
  *(v56 + 40) = 0xD000000000000016;
  *(v56 + 48) = 0x80000001CA99C4A0;
  v57 = MEMORY[0x1E69E6158];
  *(v56 + 64) = MEMORY[0x1E69E6158];
  *(v56 + 72) = @"DefaultValue";
  *(v56 + 80) = 0x7265746E6543;
  *(v56 + 88) = 0xE600000000000000;
  *(v56 + 104) = v57;
  *(v56 + 112) = @"Items";
  v346 = swift_allocObject();
  *(v346 + 16) = xmmword_1CA983CF0;
  v58 = @"Class";
  v59 = @"DefaultValue";
  v338 = v58;
  v332 = v59;
  v60 = @"Parameters";
  v61 = @"Items";
  v62 = sub_1CA94C438();
  v336 = v63;
  v337 = v62;
  v64 = sub_1CA94C438();
  v335 = v65;
  v343 = &v323;
  MEMORY[0x1EEE9AC00](v64);
  v66 = v351;
  sub_1CA948D98();
  v67 = v352;
  v68 = [v352 bundleURL];
  MEMORY[0x1EEE9AC00](v68);
  v69 = &v323 - v353;
  sub_1CA948B68();

  v70 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v71 = sub_1CA2F9F14(v337, v336, v64, v335, 0, 0, &v323 - v66, v69);
  *(v346 + 32) = v71;
  v72 = sub_1CA94C438();
  v336 = v73;
  v337 = v72;
  v74 = sub_1CA94C438();
  v335 = v75;
  v343 = &v323;
  MEMORY[0x1EEE9AC00](v74);
  sub_1CA948D98();
  v76 = [v67 bundleURL];
  MEMORY[0x1EEE9AC00](v76);
  v77 = v353;
  sub_1CA948B68();

  v78 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v79 = sub_1CA2F9F14(v337, v336, v74, v335, 0, 0, &v323 - v66, &v323 - v77);
  v80 = v346;
  *(v346 + 40) = v79;
  v81 = sub_1CA94C438();
  v336 = v82;
  v337 = v81;
  v83 = sub_1CA94C438();
  v335 = v84;
  v343 = &v323;
  MEMORY[0x1EEE9AC00](v83);
  v85 = v351;
  sub_1CA948D98();
  v86 = [v352 bundleURL];
  MEMORY[0x1EEE9AC00](v86);
  sub_1CA948B68();

  v87 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v80 + 48) = sub_1CA2F9F14(v337, v336, v83, v335, 0, 0, &v323 - v85, &v323 - v77);
  v88 = sub_1CA94C438();
  v336 = v89;
  v337 = v88;
  v335 = sub_1CA94C438();
  v91 = v90;
  v343 = &v323;
  MEMORY[0x1EEE9AC00](v335);
  v92 = &v323 - v85;
  sub_1CA948D98();
  v93 = v352;
  v94 = [v352 bundleURL];
  MEMORY[0x1EEE9AC00](v94);
  v95 = &v323 - v353;
  sub_1CA948B68();

  v96 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v80 + 56) = sub_1CA2F9F14(v337, v336, v335, v91, 0, 0, v92, v95);
  v97 = sub_1CA94C438();
  v336 = v98;
  v337 = v97;
  v335 = sub_1CA94C438();
  v100 = v99;
  v343 = &v323;
  MEMORY[0x1EEE9AC00](v335);
  v101 = v351;
  sub_1CA948D98();
  v102 = v93;
  v103 = [v93 bundleURL];
  MEMORY[0x1EEE9AC00](v103);
  v104 = v353;
  sub_1CA948B68();

  v105 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v106 = sub_1CA2F9F14(v337, v336, v335, v100, 0, 0, &v323 - v101, &v323 - v104);
  v107 = v346;
  *(v346 + 64) = v106;
  v108 = sub_1CA94C438();
  v336 = v109;
  v337 = v108;
  v110 = sub_1CA94C438();
  v335 = v111;
  v343 = &v323;
  MEMORY[0x1EEE9AC00](v110);
  sub_1CA948D98();
  v112 = [v102 bundleURL];
  MEMORY[0x1EEE9AC00](v112);
  sub_1CA948B68();

  v113 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v107 + 72) = sub_1CA2F9F14(v337, v336, v110, v335, 0, 0, &v323 - v101, &v323 - v104);
  v114 = sub_1CA94C438();
  v336 = v115;
  v337 = v114;
  v116 = sub_1CA94C438();
  v118 = v117;
  v343 = &v323;
  MEMORY[0x1EEE9AC00](v116);
  v119 = v351;
  sub_1CA948D98();
  v120 = [v352 bundleURL];
  MEMORY[0x1EEE9AC00](v120);
  sub_1CA948B68();

  v121 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v122 = sub_1CA2F9F14(v337, v336, v116, v118, 0, 0, &v323 - v119, &v323 - v104);
  v123 = v346;
  *(v346 + 80) = v122;
  v124 = sub_1CA94C438();
  v336 = v125;
  v337 = v124;
  v126 = sub_1CA94C438();
  v335 = v127;
  v343 = &v323;
  MEMORY[0x1EEE9AC00](v126);
  v128 = &v323 - v119;
  sub_1CA948D98();
  v129 = v352;
  v130 = [v352 bundleURL];
  MEMORY[0x1EEE9AC00](v130);
  sub_1CA948B68();

  v131 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v123 + 88) = sub_1CA2F9F14(v337, v336, v126, v335, 0, 0, v128, &v323 - v104);
  v132 = sub_1CA94C438();
  v336 = v133;
  v337 = v132;
  v134 = sub_1CA94C438();
  v335 = v135;
  v343 = &v323;
  MEMORY[0x1EEE9AC00](v134);
  v136 = v351;
  sub_1CA948D98();
  v137 = [v129 bundleURL];
  MEMORY[0x1EEE9AC00](v137);
  v138 = v353;
  sub_1CA948B68();

  v139 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v140 = sub_1CA2F9F14(v337, v336, v134, v335, 0, 0, &v323 - v136, &v323 - v138);
  *(v346 + 96) = v140;
  v141 = sub_1CA94C438();
  v336 = v142;
  v337 = v141;
  v143 = sub_1CA94C438();
  v335 = v144;
  v343 = &v323;
  MEMORY[0x1EEE9AC00](v143);
  sub_1CA948D98();
  v145 = [v352 bundleURL];
  MEMORY[0x1EEE9AC00](v145);
  sub_1CA948B68();

  v146 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v147 = sub_1CA2F9F14(v337, v336, v143, v335, 0, 0, &v323 - v136, &v323 - v138);
  v148 = v346;
  *(v346 + 104) = v147;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  v150 = v339;
  *(v339 + 120) = v148;
  v150[18] = v149;
  v150[19] = @"Key";
  v150[20] = 0x697469736F504657;
  v150[21] = 0xEA00000000006E6FLL;
  v150[23] = MEMORY[0x1E69E6158];
  v150[24] = @"Label";
  v151 = @"Key";
  v152 = @"Label";
  v153 = v151;
  v154 = v152;
  v335 = v153;
  v331 = v154;
  v155 = sub_1CA94C438();
  v157 = v156;
  v158 = sub_1CA94C438();
  v160 = v159;
  v346 = &v323;
  MEMORY[0x1EEE9AC00](v158);
  v161 = &v323 - v351;
  sub_1CA948D98();
  v162 = [v352 bundleURL];
  MEMORY[0x1EEE9AC00](v162);
  v163 = &v323 - v353;
  sub_1CA948B68();

  v164 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v165 = sub_1CA2F9F14(v155, v157, v158, v160, 0, 0, v161, v163);
  v150[28] = v348;
  v150[25] = v165;
  _s3__C3KeyVMa_0(0);
  v346 = v166;
  v343 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  *(v344 + 32) = sub_1CA2F864C();
  v167 = swift_allocObject();
  v339 = xmmword_1CA981380;
  *(v167 + 16) = xmmword_1CA981380;
  *(v167 + 32) = @"AllowsDecimalNumbers";
  *(v167 + 40) = 0;
  v168 = v338;
  *(v167 + 64) = MEMORY[0x1E69E6370];
  *(v167 + 72) = v168;
  v337 = 0x80000001CA99C180;
  *(v167 + 80) = 0xD000000000000016;
  *(v167 + 88) = 0x80000001CA99C180;
  v169 = MEMORY[0x1E69E6158];
  v170 = v335;
  *(v167 + 104) = MEMORY[0x1E69E6158];
  *(v167 + 112) = v170;
  strcpy((v167 + 120), "WFXCoordinate");
  *(v167 + 134) = -4864;
  v171 = v331;
  *(v167 + 144) = v169;
  *(v167 + 152) = v171;
  v172 = @"AllowsDecimalNumbers";
  v336 = v168;
  v335 = v170;
  v338 = v171;
  v328 = v172;
  v330 = sub_1CA94C438();
  *&v329 = v173;
  v174 = sub_1CA94C438();
  v176 = v175;
  v331 = &v323;
  MEMORY[0x1EEE9AC00](v174);
  v177 = v351;
  sub_1CA948D98();
  v178 = v352;
  v179 = [v352 bundleURL];
  MEMORY[0x1EEE9AC00](v179);
  v180 = &v323 - v353;
  sub_1CA948B68();

  v181 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v167 + 160) = sub_1CA2F9F14(v330, v329, v174, v176, 0, 0, &v323 - v177, v180);
  v182 = v348;
  *(v167 + 184) = v348;
  *(v167 + 192) = @"Placeholder";
  v331 = @"Placeholder";
  v183 = sub_1CA94C438();
  *&v329 = v184;
  v185 = sub_1CA94C438();
  v187 = v186;
  v330 = &v323;
  MEMORY[0x1EEE9AC00](v185);
  sub_1CA948D98();
  v188 = [v178 bundleURL];
  MEMORY[0x1EEE9AC00](v188);
  v189 = &v323 - v353;
  sub_1CA948B68();

  v190 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v167 + 200) = sub_1CA2F9F14(v183, v329, v185, v187, 0, 0, &v323 - v177, v189);
  *(v167 + 224) = v182;
  *(v167 + 232) = @"RequiredResources";
  v330 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F0, &qword_1CA981430);
  v191 = swift_allocObject();
  v329 = xmmword_1CA981310;
  *(v191 + 16) = xmmword_1CA981310;
  v327 = @"RequiredResources";
  v192 = MEMORY[0x1E69E6158];
  *(v191 + 32) = sub_1CA94C1E8();
  v326 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F8, &qword_1CA981438);
  *(v167 + 264) = v326;
  *(v167 + 240) = v191;
  sub_1CA94C1E8();
  *(v344 + 40) = sub_1CA2F864C();
  v193 = swift_allocObject();
  *(v193 + 16) = v339;
  *(v193 + 32) = v328;
  *(v193 + 40) = 0;
  v195 = v335;
  v194 = v336;
  *(v193 + 64) = MEMORY[0x1E69E6370];
  *(v193 + 72) = v194;
  *(v193 + 80) = 0xD000000000000016;
  *(v193 + 88) = v337;
  *(v193 + 104) = v192;
  *(v193 + 112) = v195;
  strcpy((v193 + 120), "WFYCoordinate");
  *(v193 + 134) = -4864;
  *(v193 + 144) = v192;
  v196 = v338;
  *(v193 + 152) = v338;
  v336 = v194;
  v328 = v195;
  v337 = v196;
  v335 = sub_1CA94C438();
  v325 = v197;
  v198 = sub_1CA94C438();
  v324 = v199;
  v338 = &v323;
  MEMORY[0x1EEE9AC00](v198);
  v200 = &v323 - v351;
  sub_1CA948D98();
  v201 = [v352 bundleURL];
  MEMORY[0x1EEE9AC00](v201);
  v202 = v353;
  sub_1CA948B68();

  v203 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v193 + 160) = sub_1CA2F9F14(v335, v325, v198, v324, 0, 0, v200, &v323 - v202);
  v204 = v348;
  v205 = v331;
  *(v193 + 184) = v348;
  *(v193 + 192) = v205;
  v338 = v205;
  v331 = sub_1CA94C438();
  v325 = v206;
  v207 = sub_1CA94C438();
  v324 = v208;
  v335 = &v323;
  MEMORY[0x1EEE9AC00](v207);
  v209 = &v323 - v351;
  sub_1CA948D98();
  v210 = [v352 bundleURL];
  MEMORY[0x1EEE9AC00](v210);
  sub_1CA948B68();

  v211 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v193 + 200) = sub_1CA2F9F14(v331, v325, v207, v324, 0, 0, v209, &v323 - v202);
  v212 = v327;
  *(v193 + 224) = v204;
  *(v193 + 232) = v212;
  v213 = swift_allocObject();
  *(v213 + 16) = v329;
  v214 = MEMORY[0x1E69E6158];
  *(v213 + 32) = sub_1CA94C1E8();
  *(v193 + 264) = v326;
  *(v193 + 240) = v213;
  sub_1CA94C1E8();
  *(v344 + 48) = sub_1CA2F864C();
  v215 = swift_allocObject();
  *(v215 + 16) = v340;
  v216 = v336;
  *(v215 + 32) = v336;
  *(v215 + 40) = 0xD000000000000019;
  *(v215 + 48) = 0x80000001CA99B030;
  v217 = v328;
  *(v215 + 64) = v214;
  *(v215 + 72) = v217;
  *(v215 + 80) = 0x776F646E69574657;
  *(v215 + 88) = 0xE800000000000000;
  *(v215 + 104) = v214;
  v218 = v337;
  *(v215 + 112) = v337;
  v335 = v216;
  v336 = v217;
  v337 = v218;
  v330 = sub_1CA94C438();
  *&v329 = v219;
  v328 = sub_1CA94C438();
  v221 = v220;
  v331 = &v323;
  MEMORY[0x1EEE9AC00](v328);
  v222 = v351;
  sub_1CA948D98();
  v223 = v352;
  v224 = [v352 bundleURL];
  v327 = &v323;
  MEMORY[0x1EEE9AC00](v224);
  v225 = &v323 - v353;
  sub_1CA948B68();

  v226 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v215 + 120) = sub_1CA2F9F14(v330, v329, v328, v221, 0, 0, &v323 - v222, v225);
  v227 = v348;
  v228 = v338;
  *(v215 + 144) = v348;
  *(v215 + 152) = v228;
  v330 = sub_1CA94C438();
  *&v329 = v229;
  v230 = sub_1CA94C438();
  v232 = v231;
  v331 = &v323;
  MEMORY[0x1EEE9AC00](v230);
  v233 = &v323 - v222;
  sub_1CA948D98();
  v234 = [v223 bundleURL];
  MEMORY[0x1EEE9AC00](v234);
  v235 = &v323 - v353;
  sub_1CA948B68();

  v236 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v237 = sub_1CA2F9F14(v330, v329, v230, v232, 0, 0, v233, v235);
  *(v215 + 184) = v227;
  *(v215 + 160) = v237;
  sub_1CA94C1E8();
  v238 = sub_1CA2F864C();
  v239 = v344;
  *(v344 + 56) = v238;
  v240 = swift_allocObject();
  *(v240 + 16) = v340;
  *(v240 + 32) = v335;
  *(v240 + 40) = 0xD000000000000011;
  *(v240 + 48) = 0x80000001CA99E620;
  v241 = MEMORY[0x1E69E6158];
  v242 = v332;
  *(v240 + 64) = MEMORY[0x1E69E6158];
  *(v240 + 72) = v242;
  *(v240 + 80) = 1;
  v243 = v336;
  *(v240 + 104) = MEMORY[0x1E69E6370];
  *(v240 + 112) = v243;
  strcpy((v240 + 120), "WFBringToFront");
  *(v240 + 135) = -18;
  v244 = v337;
  *(v240 + 144) = v241;
  *(v240 + 152) = v244;
  v245 = sub_1CA94C438();
  v332 = v246;
  v247 = sub_1CA94C438();
  v249 = v248;
  *&v340 = &v323;
  MEMORY[0x1EEE9AC00](v247);
  v250 = &v323 - v351;
  sub_1CA948D98();
  v251 = [v352 bundleURL];
  MEMORY[0x1EEE9AC00](v251);
  v252 = &v323 - v353;
  sub_1CA948B68();

  v253 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v254 = sub_1CA2F9F14(v245, v332, v247, v249, 0, 0, v250, v252);
  *(v240 + 184) = v348;
  *(v240 + 160) = v254;
  sub_1CA94C1E8();
  *(v239 + 64) = sub_1CA2F864C();
  v255 = swift_allocObject();
  *(v255 + 16) = v339;
  *(v255 + 32) = v335;
  *(v255 + 40) = 0xD000000000000018;
  *(v255 + 48) = 0x80000001CA9C5B20;
  *(v255 + 64) = MEMORY[0x1E69E6158];
  *(v255 + 72) = @"Description";
  v256 = @"Description";
  *&v340 = sub_1CA94C438();
  *&v339 = v257;
  v258 = sub_1CA94C438();
  v260 = v259;
  v345 = &v323;
  MEMORY[0x1EEE9AC00](v258);
  v261 = v351;
  sub_1CA948D98();
  v262 = [v352 bundleURL];
  MEMORY[0x1EEE9AC00](v262);
  v263 = &v323 - v353;
  sub_1CA948B68();

  v264 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v255 + 80) = sub_1CA2F9F14(v340, v339, v258, v260, 0, 0, &v323 - v261, v263);
  *(v255 + 104) = v348;
  *(v255 + 112) = @"DisallowedVariableTypes";
  *(v255 + 120) = &unk_1F4A024A8;
  v265 = v336;
  *(v255 + 144) = v333;
  *(v255 + 152) = v265;
  *(v255 + 160) = 0x79616C70736944;
  *(v255 + 168) = 0xE700000000000000;
  v266 = v337;
  *(v255 + 184) = MEMORY[0x1E69E6158];
  *(v255 + 192) = v266;
  v267 = @"DisallowedVariableTypes";
  *&v340 = sub_1CA94C438();
  *&v339 = v268;
  v269 = sub_1CA94C438();
  v337 = v270;
  v345 = &v323;
  MEMORY[0x1EEE9AC00](v269);
  v271 = &v323 - v261;
  sub_1CA948D98();
  v272 = v352;
  v273 = [v352 bundleURL];
  MEMORY[0x1EEE9AC00](v273);
  v274 = v353;
  sub_1CA948B68();

  v275 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v255 + 200) = sub_1CA2F9F14(v340, v339, v269, v337, 0, 0, v271, &v323 - v274);
  v276 = v338;
  *(v255 + 224) = v348;
  *(v255 + 232) = v276;
  *&v340 = sub_1CA94C438();
  *&v339 = v277;
  v278 = sub_1CA94C438();
  v338 = v279;
  v345 = &v323;
  MEMORY[0x1EEE9AC00](v278);
  v280 = &v323 - v351;
  sub_1CA948D98();
  v281 = [v272 bundleURL];
  MEMORY[0x1EEE9AC00](v281);
  sub_1CA948B68();

  v282 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v283 = sub_1CA2F9F14(v340, v339, v278, v338, 0, 0, v280, &v323 - v274);
  *(v255 + 264) = v348;
  *(v255 + 240) = v283;
  sub_1CA94C1E8();
  v284 = sub_1CA2F864C();
  v285 = v344;
  *(v344 + 72) = v284;
  v286 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v287 = v342;
  v342[30] = v285;
  v287[33] = v286;
  v287[34] = @"ParameterSummary";
  v347 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v348 = swift_allocObject();
  *(v348 + 16) = xmmword_1CA981360;
  v346 = "(Display)";
  v288 = @"ParameterSummary";
  v289 = sub_1CA94C438();
  v291 = v290;
  v292 = sub_1CA94C438();
  v294 = v293;
  v345 = &v323;
  MEMORY[0x1EEE9AC00](v292);
  v295 = &v323 - v351;
  sub_1CA948D98();
  v296 = [v352 bundleURL];
  MEMORY[0x1EEE9AC00](v296);
  v297 = &v323 - v353;
  sub_1CA948B68();

  v298 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v299 = sub_1CA2F9F14(v289, v291, v292, v294, 0, 0, v295, v297);
  v300 = objc_allocWithZone(WFActionParameterSummaryValue);
  v301 = sub_1CA65DD78(0xD000000000000022, v346 | 0x8000000000000000, v299);
  *(v348 + 32) = v301;
  v346 = " to ${WFPosition}";
  v302 = sub_1CA94C438();
  v304 = v303;
  v305 = sub_1CA94C438();
  v307 = v306;
  v345 = &v323;
  MEMORY[0x1EEE9AC00](v305);
  v308 = &v323 - v351;
  sub_1CA948D98();
  v309 = [v352 bundleURL];
  MEMORY[0x1EEE9AC00](v309);
  v310 = &v323 - v353;
  sub_1CA948B68();

  v311 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v312 = sub_1CA2F9F14(v302, v304, v305, v307, 0, 0, v308, v310);
  v313 = objc_allocWithZone(WFActionParameterSummaryValue);
  v314 = sub_1CA65DD78(0xD00000000000004BLL, v346 | 0x8000000000000000, v312);
  v315 = v347;
  *(v348 + 40) = v314;
  v316 = sub_1CA65AF90();
  v317 = v342;
  v342[35] = v316;
  v317[38] = v315;
  v317[39] = @"RequiredResources";
  v318 = swift_allocObject();
  *(v318 + 16) = xmmword_1CA9813B0;
  v354 = 2;
  v355 = 0;
  v319 = objc_allocWithZone(type metadata accessor for WFDeviceIdiomResource());
  v320 = @"RequiredResources";
  WFDeviceIdiomResource.init(requirement:)(&v354);
  *(v318 + 32) = v321;
  v317[43] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438B0, &qword_1CA981658);
  v317[40] = v318;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA4FFC80()
{
  v81 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981300;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000010;
  *(inited + 48) = 0x80000001CA9C5D00;
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
  v86 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v87 = v12;
  v13 = &v75 - v86;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v83 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v85 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v82 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v75 - v82;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v84 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Description";
  v80 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1CA97EDF0;
  *(v24 + 32) = @"DescriptionNote";
  v25 = @"Description";
  v26 = @"DescriptionNote";
  v27 = sub_1CA94C438();
  v77 = v28;
  v78 = v27;
  v29 = sub_1CA94C438();
  v76 = v30;
  v79 = &v75;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v75 - v86;
  sub_1CA948D98();
  v32 = v83;
  v33 = [v83 bundleURL];
  MEMORY[0x1EEE9AC00](v33);
  v34 = v82;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v24 + 40) = sub_1CA2F9F14(v78, v77, v29, v76, 0, 0, v31, &v75 - v34);
  *(v24 + 64) = v84;
  *(v24 + 72) = @"DescriptionSummary";
  v36 = @"DescriptionSummary";
  v37 = sub_1CA94C438();
  v77 = v38;
  v78 = v37;
  v39 = sub_1CA94C438();
  v41 = v40;
  v79 = &v75;
  MEMORY[0x1EEE9AC00](v39);
  v42 = &v75 - v86;
  sub_1CA948D98();
  v43 = [v32 bundleURL];
  MEMORY[0x1EEE9AC00](v43);
  sub_1CA948B68();

  v44 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v45 = sub_1CA2F9F14(v78, v77, v39, v41, 0, 0, v42, &v75 - v34);
  *(v24 + 104) = v84;
  *(v24 + 80) = v45;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29EBDC(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v46 = v80;
  *(inited + 160) = sub_1CA6B3784();
  *(inited + 184) = v46;
  *(inited + 192) = @"IconColor";
  *(inited + 200) = 0x6F6769646E49;
  *(inited + 208) = 0xE600000000000000;
  v47 = MEMORY[0x1E69E6158];
  *(inited + 224) = MEMORY[0x1E69E6158];
  *(inited + 232) = @"IconSymbol";
  *(inited + 240) = 0x6C69662E6E6F6F6DLL;
  *(inited + 248) = 0xE90000000000006CLL;
  *(inited + 264) = v47;
  *(inited + 272) = @"Name";
  v48 = @"IconColor";
  v49 = @"IconSymbol";
  v50 = @"Name";
  v51 = sub_1CA94C438();
  v53 = v52;
  v54 = sub_1CA94C438();
  v56 = v55;
  v80 = &v75;
  MEMORY[0x1EEE9AC00](v54);
  v57 = &v75 - v86;
  sub_1CA948D98();
  v58 = [v83 bundleURL];
  MEMORY[0x1EEE9AC00](v58);
  v59 = &v75 - v82;
  sub_1CA948B68();

  v60 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 280) = sub_1CA2F9F14(v51, v53, v54, v56, 0, 0, v57, v59);
  *(inited + 304) = v84;
  *(inited + 312) = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v61 = swift_initStackObject();
  *(v61 + 16) = xmmword_1CA981350;
  *(v61 + 32) = 0x75736F6C63736944;
  *(v61 + 40) = 0xEF6C6576654C6572;
  *(v61 + 48) = 0x65746176697250;
  *(v61 + 56) = 0xE700000000000000;
  *(v61 + 72) = MEMORY[0x1E69E6158];
  *(v61 + 80) = 0x656C7069746C754DLL;
  *(v61 + 88) = 0xE800000000000000;
  v62 = MEMORY[0x1E69E6370];
  *(v61 + 96) = 0;
  *(v61 + 120) = v62;
  *(v61 + 128) = 0x614E74757074754FLL;
  *(v61 + 136) = 0xEA0000000000656DLL;
  v63 = @"Output";
  v64 = sub_1CA94C438();
  v79 = v65;
  v66 = sub_1CA94C438();
  v68 = v67;
  v80 = &v75;
  MEMORY[0x1EEE9AC00](v66);
  v69 = &v75 - v86;
  sub_1CA948D98();
  v70 = [v83 bundleURL];
  MEMORY[0x1EEE9AC00](v70);
  v71 = &v75 - v82;
  sub_1CA948B68();

  v72 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v61 + 144) = sub_1CA2F9F14(v64, v79, v66, v68, 0, 0, v69, v71);
  *(v61 + 168) = v84;
  *(v61 + 176) = 0x7365707954;
  *(v61 + 184) = 0xE500000000000000;
  *(v61 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v61 + 192) = &unk_1F4A02528;
  v73 = sub_1CA94C1E8();
  *(inited + 344) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 320) = v73;
  type metadata accessor for Key(0);
  sub_1CA29EBDC(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t static ToolKitContentItemUsage.== infix(_:_:)(uint64_t a1, id *a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *a2;
  v4 = a2[1];
  if (!*a1)
  {
    if (!v5)
    {
      v3 = 0;
      v6 = 1;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (!v5)
  {
LABEL_6:
    sub_1CA500750(*a2, a2[1]);
    sub_1CA500750(v3, v2);
    goto LABEL_7;
  }

  sub_1CA25B3D0(0, &qword_1EDB9F110, 0x1E69E58C0);
  sub_1CA500750(v5, v4);
  sub_1CA500750(v3, v2);
  if ((sub_1CA94CFD8() & 1) == 0)
  {
LABEL_7:
    v6 = 0;
    goto LABEL_8;
  }

  v6 = sub_1CA94CFD8();
LABEL_8:
  sub_1CA500790(v3, v2);
  sub_1CA500790(v5, v4);
  return v6 & 1;
}

id sub_1CA500750(id result, void *a2)
{
  if (result)
  {
    v2 = result;

    return a2;
  }

  return result;
}

void sub_1CA500790(void *a1, void *a2)
{
  if (a1)
  {
  }
}

uint64_t sub_1CA5007D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_1CA94AFB8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = (&v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v43 - v14);
  v16 = *a1;
  if (*a1)
  {
    v17 = *(a1 + 8);
    objc_opt_self();
    v18 = swift_dynamicCastObjCClass();
    if (!v18)
    {
      *v15 = a2;
      v15[1] = a3;
      (*(v9 + 104))(v15, *MEMORY[0x1E69DB178], v8);
      v32 = *(v9 + 32);
      sub_1CA94C218();
      return v32(a4, v15, v8);
    }

    v19 = v18;
    v46 = a4;
    v45 = v17;
    v20 = [v16 key];
    if (!v20)
    {
      sub_1CA94C3A8();
      v20 = sub_1CA94C368();
    }

    v21 = [v19 parameterMetadataForIdentifier_];

    if (v21)
    {
      if (([v21 capabilities] & 8) != 0)
      {
        v33 = v45;

        v34 = [v33 identifier];
        v35 = sub_1CA94C3A8();
        v44 = v36;

        v37 = [v16 key];
        v38 = sub_1CA94C3A8();
        v40 = v39;

        v41 = v44;
        *v13 = v35;
        v13[1] = v41;
        v13[2] = v38;
        v13[3] = v40;
        (*(v9 + 104))(v13, *MEMORY[0x1E69DB158], v8);
LABEL_14:
        v42 = *(v9 + 32);
        v42(v15, v13, v8);
        return (v42)(v46, v15, v8);
      }
    }

    v22 = sub_1CA500B70();
    v43 = v23;
    v44 = v22;
    v24 = v45;

    v25 = [v16 key];
    v26 = sub_1CA94C3A8();
    v27 = a2;
    v29 = v28;

    v30 = v43;
    *v13 = v44;
    v13[1] = v30;
    v13[2] = v26;
    v13[3] = v29;
    v13[4] = v27;
    v13[5] = a3;
    (*(v9 + 104))(v13, *MEMORY[0x1E69DB160], v8);
    sub_1CA94C218();
    goto LABEL_14;
  }

  *a4 = a2;
  a4[1] = a3;
  (*(v9 + 104))(a4, *MEMORY[0x1E69DB178], v8);

  return sub_1CA94C218();
}

uint64_t sub_1CA500B70()
{
  v1 = [v0 fullyQualifiedLinkActionIdentifier];
  v2 = [v1 actionIdentifier];

  v3 = sub_1CA94C3A8();
  return v3;
}

void sub_1CA500BE8(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, char *a9@<X8>)
{
  LODWORD(v136) = a8;
  v130 = a7;
  v131 = a4;
  v132 = a5;
  v138 = a2;
  v139 = a3;
  v134 = a9;
  v122 = sub_1CA94AD08();
  v121 = *(v122 - 8);
  v11 = *(v121 + 64);
  MEMORY[0x1EEE9AC00](v122);
  v135 = &v118 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FE0, &qword_1CA989EB8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v118 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FE8, &unk_1CA989EC0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v118 - v19;
  v137 = sub_1CA94AE88();
  v21 = *(v137 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v137);
  v124 = &v118 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v133 = &v118 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v125 = &v118 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v128 = &v118 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v129 = &v118 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v126 = &v118 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v37 = &v118 - v36;
  v38 = MEMORY[0x1EEE9AC00](v35);
  v140 = &v118 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v141 = &v118 - v41;
  MEMORY[0x1EEE9AC00](v40);
  v123 = &v118 - v42;
  v44 = *a6;
  v43 = *(a6 + 8);
  v45 = &selRef_arrayWithObject_;
  v127 = v43;
  if (v44)
  {
    objc_opt_self();
    v46 = swift_dynamicCastObjCClass();
    if (v46)
    {
      v47 = v46;
      sub_1CA500750(v44, v43);
      v119 = v43;
      v120 = v44;
      v48 = [v44 key];
      if (!v48)
      {
        sub_1CA94C3A8();
        v48 = sub_1CA94C368();
        v45 = &selRef_arrayWithObject_;
      }

      v49 = [v47 parameterMetadataForIdentifier_];

      if (v49)
      {
        v50 = v49;
        if (([v49 v45[235]] & 8) != 0)
        {
          v90 = sub_1CA94B2B8();
          v118 = v20;
          __swift_storeEnumTagSinglePayload(v20, 1, 1, v90);
          v143 = sub_1CA94CC98();
          v144 = v91;
          sub_1CA94C218();
          MEMORY[0x1CCAA1300](46, 0xE100000000000000);

          v93 = v143;
          v92 = v144;
          v94 = v119;
          v95 = [v119 identifier];

          v96 = v21;
          v97 = sub_1CA94C3A8();
          v99 = v98;

          v143 = v93;
          v144 = v92;
          sub_1CA94C218();
          MEMORY[0x1CCAA1300](v97, v99);

          sub_1CA94C218();
          MEMORY[0x1CCAA1300](46, 0xE100000000000000);

          v101 = v143;
          v100 = v144;
          v102 = [v120 key];
          v103 = sub_1CA94C3A8();
          v105 = v104;

          v143 = v101;
          v144 = v100;
          sub_1CA94C218();
          MEMORY[0x1CCAA1300](v103, v105);

          sub_1CA94C218();
          sub_1CA94ADD8();
          v106 = sub_1CA94ADE8();
          __swift_storeEnumTagSinglePayload(v16, 0, 1, v106);
          v107 = v123;
          sub_1CA94ADF8();
          v108 = v140;
          sub_1CA94AE68();
          v109 = v141;
          sub_1CA94AE58();
          v110 = *(v96 + 8);
          v111 = v50;
          v112 = v137;
          v110(v108, v137);
          v110(v107, v112);
          v113 = *(v96 + 32);
          v113(v107, v109, v112);
          if ([v111 dynamicOptionsSupport] == 2)
          {
            sub_1CA94AE18();
            v114 = v141;
            sub_1CA94AE58();
            v107 = v123;

            v112 = v137;
            v110(v108, v112);
            v110(v107, v112);
            v113(v107, v114, v112);
          }

          else
          {
          }

          v113(v134, v107, v112);
          return;
        }

        v44 = v120;

        v51 = v119;
        v52 = v119;
      }

      else
      {
        v44 = v120;
        v52 = v120;
        v51 = v119;
        v50 = v119;
      }
    }
  }

  v53 = sub_1CA94B2B8();
  __swift_storeEnumTagSinglePayload(v20, 1, 1, v53);
  sub_1CA94CC98();
  sub_1CA94C218();
  sub_1CA94ADD8();
  v54 = sub_1CA94ADE8();
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v54);
  sub_1CA94ADF8();
  if (v136 & 1) != 0 && ([a1 v45[235]])
  {
    v123 = (([a1 v45[235]] >> 1) & 1);
  }

  else
  {
    v123 = 0;
  }

  v55 = [a1 v45[235]];
  v136 = a1;
  v56 = v137;
  v142 = v21;
  if ((v55 & 8) != 0)
  {
    v57 = v140;
    sub_1CA94AE68();
    v58 = v141;
    sub_1CA94AE58();
    v59 = v44;
    v60 = *(v21 + 8);
    v60(v57, v56);
    v60(v37, v56);
    v120 = *(v21 + 32);
    (v120)(v37, v58, v56);
    v61 = v129;
    (*(v21 + 16))(v129, v37, v56);
    v62 = v128;
    v143 = v59;
    v144 = v127;
    v63 = v145;
    (*(v132 + 24))(&v143, v130);
    v145 = v63;
    if (v63)
    {
      v60(v61, v56);
      v60(v37, v56);
      return;
    }

    sub_1CA94AE58();
    v60(v62, v56);
    v60(v61, v56);
    v60(v37, v56);
    (v120)(v37, v126, v56);
    v21 = v142;
    a1 = v136;
    v45 = &selRef_arrayWithObject_;
  }

  if (([a1 v45[235]] & 4) != 0)
  {
    v64 = v140;
    sub_1CA94AE68();
    v65 = v141;
    sub_1CA94AE58();
    v66 = *(v21 + 8);
    v66(v64, v56);
    v66(v37, v56);
    v67 = *(v142 + 32);
    v67(v37, v65, v56);
    sub_1CA94AE18();
    sub_1CA94AE58();
    v68 = v64;
    a1 = v136;
    v66(v68, v56);
    v66(v37, v56);
    v45 = &selRef_arrayWithObject_;
    v67(v37, v65, v56);
    v21 = v142;
  }

  if (([a1 v45[235]] & 0x10) != 0)
  {
    v69 = v140;
    sub_1CA94AE68();
    v70 = v141;
    sub_1CA94AE58();
    v71 = *(v21 + 8);
    v71(v69, v56);
    v71(v37, v56);
    v72 = *(v142 + 32);
    v72(v37, v70, v56);
    sub_1CA94AE28();
    sub_1CA94AE58();
    v71(v69, v56);
    v71(v37, v56);
    v45 = &selRef_arrayWithObject_;
    v73 = v70;
    a1 = v136;
    v72(v37, v73, v56);
    v21 = v142;
  }

  if ([a1 v45[235]])
  {
    v74 = v140;
    sub_1CA94AE68();
    v75 = v141;
    sub_1CA94AE58();
    v76 = *(v21 + 8);
    v76(v74, v56);
    v76(v37, v56);
    v77 = *(v142 + 32);
    v77(v37, v75, v56);
    sub_1CA94AE38();
    sub_1CA94AE58();
    v76(v74, v56);
    v76(v37, v56);
    v45 = &selRef_arrayWithObject_;
    v78 = v75;
    a1 = v136;
    v77(v37, v78, v56);
    v21 = v142;
  }

  v79 = [a1 v45[235]];
  v80 = v135;
  if ((v79 & 2) != 0)
  {
    v81 = v140;
    sub_1CA94AE68();
    v82 = v141;
    sub_1CA94AE58();
    v83 = *(v21 + 8);
    v83(v81, v56);
    v83(v37, v56);
    v136 = *(v21 + 32);
    v136(v37, v82, v56);
    (*(v21 + 16))(v133, v37, v56);
    v84 = v124;
    if (v123)
    {
      sub_1CA94AE48();
    }

    else
    {
      sub_1CA94AE78();
    }

    v85 = v125;
    v86 = v133;
    sub_1CA94AE58();
    v83(v84, v56);
    v83(v86, v56);
    v83(v37, v56);
    v136(v37, v85, v56);
    v21 = v142;
    v80 = v135;
    v45 = &selRef_arrayWithObject_;
  }

  if (([a1 v45[235]] & 0x20) != 0)
  {
    v87 = [a1 inputValueType];
    if (v87)
    {
      v88 = v87;
      v89 = v145;
      sub_1CA94CB68();
      v145 = v89;
      if (v89)
      {
        (*(v21 + 8))(v37, v56);

        return;
      }

      v115 = v140;
      sub_1CA94AE08();
      v116 = v141;
      sub_1CA94AE58();

      v117 = *(v21 + 8);
      v117(v115, v56);
      (*(v121 + 8))(v80, v122);
      v117(v37, v56);
      (*(v21 + 32))(v37, v116, v56);
    }
  }

  (*(v21 + 32))(v134, v37, v56);
}

void static WFToolKitContentItem.toolkitTypeInstance(for:seen:)(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = sub_1CA94B008();
  v84 = OUTLINED_FUNCTION_1_0(v9);
  v85 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v84);
  OUTLINED_FUNCTION_6_0();
  v90 = v14 - v13;
  v15 = type metadata accessor for WFContentItem.ToolKitTypeResolutionContext(0);
  v16 = (v15 - 8);
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_6_0();
  v20 = v19 - v18;
  v21 = sub_1CA94ADC8();
  v22 = OUTLINED_FUNCTION_1_0(v21);
  v80 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_6_0();
  v28 = v27 - v26;
  v86 = a1[1];
  v87 = *a1;
  *(v20 + 32) = 0;
  *v20 = 0u;
  *(v20 + 16) = 0u;
  v29 = v16[7];
  v30 = *MEMORY[0x1E69DB488];
  v31 = sub_1CA94B668();
  OUTLINED_FUNCTION_0_1(v31);
  v33 = v30;
  v34 = v5;
  (*(v32 + 104))(v20 + v29, v33);
  v35 = v20 + v16[8];
  _sSo13WFContentItemC11WorkflowKitE04ToolD21TypeResolutionContextV015measurementUnitF8Provider011outputValueF027displayRepresentationConfig012localizationH0AE0eD0011MeasurementjfK0_pSg_So07LNValueF0CSgAJ07DisplayO13ConfigurationVSo014WFLocalizationH0CtcfcfA1__0();
  *(v20 + v16[9]) = [objc_opt_self() defaultContext];
  (*(a4 + 8))(v20, a3, a4);
  sub_1CA502C48(v20);
  if (v88)
  {
    return;
  }

  v89 = a4;
  sub_1CA25B3D0(0, &unk_1EC441810, off_1E836E808);
  v36 = dynamic_cast_existential_1_superclass_conditional(v5);
  v38 = a5;
  if (!v36)
  {
    goto LABEL_15;
  }

  v39 = (a2 + 32);
  v40 = *(a2 + 16) + 1;
  while (--v40)
  {
    v41 = *v39;
    v39 += 2;
    if (v41 == a3)
    {
      goto LABEL_15;
    }
  }

  v77 = v37;
  v42 = v36;
  if (sub_1CA502134())
  {
    goto LABEL_15;
  }

  v92[0] = v87;
  v92[1] = v86;
  v43 = sub_1CA50220C(v92);
  v79 = sub_1CA25B410(v43);
  if (v79 < 1)
  {

LABEL_15:
    v56 = swift_allocBox();
    (*(v80 + 32))(v57, v28, v21);
    v58 = MEMORY[0x1E69DAF30];
LABEL_16:
    *v38 = v56;
    v59 = *v58;
    v60 = sub_1CA94AD08();
    OUTLINED_FUNCTION_0_1(v60);
    (*(v61 + 104))(v38, v59);
    return;
  }

  v82 = v43;
  v73 = v28;
  v76 = v42;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v45 = [ObjCClassFromMetadata appBundleIdentifier];
  v75 = sub_1CA94C3A8();
  v78 = v46;

  v47 = [ObjCClassFromMetadata displayedAppBundleIdentifier];
  v48 = sub_1CA94C3A8();
  v50 = v49;

  v51 = *MEMORY[0x1E69E0F00];
  v53 = v48 == sub_1CA94C3A8() && v50 == v52;
  v54 = v34;
  if (v53)
  {
    v55 = 1;
  }

  else
  {
    v55 = sub_1CA94D7F8();
  }

  v92[0] = MEMORY[0x1E69E7CC0];
  v62 = v79;
  sub_1CA2B8C94();
  v63 = 0;
  v64 = v92[0];
  v74 = v55 & 1;
  while (v63 < v62)
  {
    v65 = v63 + 1;
    if (__OFADD__(v63, 1))
    {
      goto LABEL_32;
    }

    if ((v82 & 0xC000000000000001) != 0)
    {
      v66 = MEMORY[0x1CCAA22D0](v63, v82);
      v67 = v89;
    }

    else
    {
      v67 = v89;
      if (v63 >= *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_33;
      }

      v66 = *(v82 + 8 * v63 + 32);
    }

    v93 = v66;
    sub_1CA502478(&v93, v54, v75, v78, v76, v77, v87, v86, v90, v74, a3, v67, &v91);

    v92[0] = v64;
    v68 = *(v64 + 16);
    if (v68 >= *(v64 + 24) >> 1)
    {
      sub_1CA2B8C94();
      v64 = v92[0];
    }

    *(v64 + 16) = v68 + 1;
    (*(v85 + 32))(v64 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v68, v90, v84);
    ++v63;
    v53 = v65 == v79;
    v62 = v79;
    if (v53)
    {

      v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445FD0, &qword_1CA989E10);
      v56 = swift_allocBox();
      v71 = v70;
      v72 = *(v69 + 48);
      (*(v80 + 32))(v70, v73, v21);
      *(v71 + v72) = v64;
      v58 = MEMORY[0x1E69DAF20];
      v38 = a5;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
}

BOOL sub_1CA502134()
{
  v0 = [swift_getObjCClassFromMetadata() entityMetadata];
  v1 = [v0 systemProtocolMetadata];
  type metadata accessor for LNSystemEntityProtocolIdentifier(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447100, &unk_1CA989ED0);
  sub_1CA502E00();
  v2 = sub_1CA94C1C8();

  v3 = sub_1CA311800(*MEMORY[0x1E69AC2D8], v2);

  if (v3)
  {
    swift_unknownObjectRelease();
  }

  return v3 != 0;
}

uint64_t sub_1CA50220C(uint64_t a1)
{
  v2 = *a1;
  v1 = *(a1 + 8);
  v17 = MEMORY[0x1E69E7CC0];
  if (!*a1 || (objc_opt_self(), (v3 = swift_dynamicCastObjCClass()) == 0))
  {
LABEL_14:
    v12 = sub_1CA5027A8();
    if (!v12)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  v4 = v3;
  v5 = v1;
  v6 = [v2 key];
  if (!v6)
  {
    sub_1CA94C3A8();
    v6 = sub_1CA94C368();
  }

  v7 = [v4 parameterMetadataForIdentifier_];

  if (!v7)
  {
    v7 = v5;
LABEL_13:

    goto LABEL_14;
  }

  sub_1CA502BE4(v7);
  if (!v8)
  {

    goto LABEL_13;
  }

  v9 = [objc_opt_self() sharedProvider];
  v10 = sub_1CA94C368();

  v11 = [swift_getObjCClassFromMetadata() appBundleIdentifier];
  if (!v11)
  {
    sub_1CA94C3A8();
    v11 = sub_1CA94C368();
  }

  v12 = [v9 queryWithQueryIdentifier:v10 fromBundleIdentifier:v11];

  if (v12)
  {

    goto LABEL_15;
  }

  v12 = sub_1CA5027A8();

  if (!v12)
  {
LABEL_18:
    sub_1CA5028BC();
    sub_1CA2B7BD0(v15);
    goto LABEL_19;
  }

LABEL_15:
  v13 = v12;
  MEMORY[0x1CCAA1490]();
  if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1CA94C698();
  }

  sub_1CA94C6E8();
  v14 = [v12 capabilities];

  if ((v14 & 0x20) == 0)
  {
    goto LABEL_18;
  }

LABEL_19:

  return v17;
}

uint64_t sub_1CA502478@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unsigned __int8 a10, uint64_t a11, uint64_t a12, void *a13)
{
  v53 = a2;
  v54 = a6;
  v52 = a5;
  v50 = a9;
  v51 = a10;
  v18 = sub_1CA94AFB8();
  v46 = *(v18 - 8);
  v47 = v18;
  v19 = *(v46 + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v44 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v38 = (&v38 - v22);
  v45 = sub_1CA94AE88();
  v43 = *(v45 - 8);
  v23 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v25 = &v38 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *a1;
  v39 = a7;
  v40 = a8;
  v55 = a7;
  v56 = a8;
  v42 = a12;
  v41 = a11;
  v48 = a3;
  v49 = a4;
  v27 = v57;
  sub_1CA500BE8(v26, a3, a4, v52, v54, &v55, MEMORY[0x1E69E7CC0], v51, v25);

  if (v27)
  {
    *a13 = v27;
  }

  else
  {
    v55 = v39;
    v56 = v40;
    v29 = sub_1CA94CC98();
    v30 = v38;
    sub_1CA5007D4(&v55, v29, v31, v38);

    v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4462F0, &qword_1CA989EB0) + 48);
    v34 = v46;
    v33 = v47;
    (*(v46 + 16))(v44, v30, v47);
    sub_1CA94C218();
    v35 = v50;
    sub_1CA94AFC8();
    (*(v34 + 8))(v30, v33);
    (*(v43 + 32))(v35 + v32, v25, v45);
    v36 = *MEMORY[0x1E69DB1C0];
    v37 = sub_1CA94B008();
    return (*(*(v37 - 8) + 104))(v35, v36, v37);
  }

  return result;
}

id sub_1CA5027A8()
{
  v0 = [objc_opt_self() sharedProvider];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [ObjCClassFromMetadata entityMetadata];
  v3 = [v2 identifier];

  if (!v3)
  {
    sub_1CA94C3A8();
    v3 = sub_1CA94C368();
  }

  v4 = [ObjCClassFromMetadata appBundleIdentifier];
  if (!v4)
  {
    sub_1CA94C3A8();
    v4 = sub_1CA94C368();
  }

  v5 = [v0 defaultQueryForEntityIdentifier:v3 fromBundleIdentifier:v4];

  return v5;
}

void sub_1CA5028BC()
{
  v0 = [objc_opt_self() sharedProvider];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [ObjCClassFromMetadata appBundleIdentifier];
  if (!v1)
  {
    sub_1CA94C3A8();
    v1 = sub_1CA94C368();
  }

  v2 = [v0 queriesForBundleIdentifier_];

  sub_1CA25B3D0(0, &qword_1EC4445B0, 0x1E69AC980);
  v3 = sub_1CA94C658();

  v28 = MEMORY[0x1E69E7CC0];
  v4 = sub_1CA25B410(v3);
  v5 = 0;
  v6 = v3 & 0xC000000000000001;
  v7 = v3 & 0xFFFFFFFFFFFFFF8;
  v8 = &selRef_arrayWithObject_;
  v9 = &selRef_groupedIntermediaryActions;
  while (1)
  {
    if (v4 == v5)
    {

      return;
    }

    if (v6)
    {
      v10 = MEMORY[0x1CCAA22D0](v5, v3);
    }

    else
    {
      if (v5 >= *(v7 + 16))
      {
        goto LABEL_29;
      }

      v10 = *(v3 + 8 * v5 + 32);
    }

    v11 = v10;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (([v10 v8[235]] & 0x20) == 0)
    {

      goto LABEL_25;
    }

    v12 = [v11 resultValueType];
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (v13)
    {
      v14 = [v13 v9[137]];

      v15 = sub_1CA94C3A8();
      v17 = v16;
    }

    else
    {

      v15 = 0;
      v17 = 0;
    }

    v18 = [ObjCClassFromMetadata entityMetadata];
    v19 = v9;
    v20 = [v18 v9[137]];

    v21 = sub_1CA94C3A8();
    v23 = v22;

    if (!v17)
    {

      v8 = &selRef_arrayWithObject_;
      v9 = v19;
      v7 = v3 & 0xFFFFFFFFFFFFFF8;
      v6 = v3 & 0xC000000000000001;
      goto LABEL_25;
    }

    if (v15 == v21 && v17 == v23)
    {

      v6 = v3 & 0xC000000000000001;
      v8 = &selRef_arrayWithObject_;
      v9 = v19;
LABEL_23:
      sub_1CA94D4D8();
      v26 = *(v28 + 16);
      sub_1CA94D518();
      sub_1CA94D528();
      sub_1CA94D4E8();
      goto LABEL_24;
    }

    v25 = sub_1CA94D7F8();

    v6 = v3 & 0xC000000000000001;
    v8 = &selRef_arrayWithObject_;
    v9 = v19;
    if (v25)
    {
      goto LABEL_23;
    }

LABEL_24:
    v7 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_25:
    ++v5;
  }

  __break(1u);
LABEL_29:
  __break(1u);
}

uint64_t sub_1CA502BE4(void *a1)
{
  v1 = [a1 queryIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1CA94C3A8();

  return v3;
}

uint64_t sub_1CA502C48(uint64_t a1)
{
  v2 = type metadata accessor for WFContentItem.ToolKitTypeResolutionContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t dynamic_cast_existential_1_superclass_conditional(uint64_t a1)
{
  result = swift_dynamicCastMetatype();
  if (result)
  {
    if (swift_conformsToProtocol2())
    {
      return a1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11WorkflowKit04ToolB16ContentItemUsageO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1CA502D2C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_1CA502D7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *sub_1CA502DD0(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

unint64_t sub_1CA502E00()
{
  result = qword_1EC4436B0;
  if (!qword_1EC4436B0)
  {
    type metadata accessor for LNSystemEntityProtocolIdentifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4436B0);
  }

  return result;
}

id sub_1CA502E8C()
{
  v456 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981550;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000014;
  *(inited + 48) = 0x80000001CA9C5E40;
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
  v491 = v12;
  v488 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = &v452 - v488;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v490 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v489 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v492 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v452 - v492;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v487 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"Description";
  v485 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v21 = swift_initStackObject();
  v486 = xmmword_1CA9813C0;
  *(v21 + 16) = xmmword_1CA9813C0;
  *(v21 + 32) = @"DescriptionInput";
  v22 = @"Description";
  v23 = @"DescriptionInput";
  v24 = sub_1CA94C438();
  v483 = v25;
  v26 = sub_1CA94C438();
  v28 = v27;
  v484 = &v452;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v452 - v488;
  sub_1CA948D98();
  v30 = v490;
  v31 = [v490 bundleURL];
  v470 = inited;
  v32 = v31;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v452 - v492;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v21 + 40) = sub_1CA2F9F14(v24, v483, v26, v28, 0, 0, v29, v33);
  *(v21 + 64) = v487;
  *(v21 + 72) = @"DescriptionResult";
  v35 = @"DescriptionResult";
  v36 = sub_1CA94C438();
  v482 = v37;
  v483 = v36;
  v481 = sub_1CA94C438();
  v39 = v38;
  v484 = &v452;
  MEMORY[0x1EEE9AC00](v481);
  v40 = v488;
  sub_1CA948D98();
  v41 = [v30 bundleURL];
  MEMORY[0x1EEE9AC00](v41);
  v42 = v492;
  sub_1CA948B68();

  v43 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v21 + 80) = sub_1CA2F9F14(v483, v482, v481, v39, 0, 0, &v452 - v40, &v452 - v42);
  *(v21 + 104) = v487;
  *(v21 + 112) = @"DescriptionSummary";
  v44 = @"DescriptionSummary";
  v45 = sub_1CA94C438();
  v482 = v46;
  v483 = v45;
  v47 = sub_1CA94C438();
  v49 = v48;
  v484 = &v452;
  MEMORY[0x1EEE9AC00](v47);
  sub_1CA948D98();
  v50 = [v490 bundleURL];
  MEMORY[0x1EEE9AC00](v50);
  sub_1CA948B68();

  v51 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v52 = sub_1CA2F9F14(v483, v482, v47, v49, 0, 0, &v452 - v40, &v452 - v42);
  *(v21 + 144) = v487;
  *(v21 + 120) = v52;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v53 = v485;
  v54 = sub_1CA6B3784();
  v55 = v470;
  v470[15] = v54;
  v55[18] = v53;
  v55[19] = @"IconColor";
  v55[20] = 1702194242;
  v55[21] = 0xE400000000000000;
  v56 = MEMORY[0x1E69E6158];
  v55[23] = MEMORY[0x1E69E6158];
  v55[24] = @"IconSymbol";
  v55[25] = 0xD00000000000001CLL;
  v55[26] = 0x80000001CA9C5EF0;
  v55[28] = v56;
  v55[29] = @"Input";
  v57 = v55;
  v480 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v58 = swift_initStackObject();
  v479 = xmmword_1CA981350;
  *(v58 + 16) = xmmword_1CA981350;
  *(v58 + 32) = 0x656C7069746C754DLL;
  *(v58 + 40) = 0xE800000000000000;
  v59 = MEMORY[0x1E69E6370];
  *(v58 + 48) = 1;
  *(v58 + 72) = v59;
  strcpy((v58 + 80), "ParameterKey");
  *(v58 + 93) = 0;
  *(v58 + 94) = -5120;
  *(v58 + 96) = 0x7475706E494657;
  *(v58 + 104) = 0xE700000000000000;
  *(v58 + 120) = v56;
  *(v58 + 128) = 0x6465726975716552;
  *(v58 + 136) = 0xE800000000000000;
  *(v58 + 144) = 1;
  *(v58 + 168) = v59;
  *(v58 + 176) = 0x7365707954;
  v60 = v59;
  *(v58 + 184) = 0xE500000000000000;
  v468 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v58 + 216) = v468;
  *(v58 + 192) = &unk_1F4A02558;
  v61 = @"IconColor";
  v62 = @"IconSymbol";
  v63 = @"Input";
  v64 = sub_1CA94C1E8();
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v485 = v65;
  v57[30] = v64;
  v57[33] = v65;
  v57[34] = @"InputPassthrough";
  *(v57 + 280) = 0;
  v57[38] = v60;
  v57[39] = @"Name";
  v66 = @"InputPassthrough";
  v67 = @"Name";
  v68 = sub_1CA94C438();
  v70 = v69;
  v71 = sub_1CA94C438();
  v73 = v72;
  v484 = &v452;
  MEMORY[0x1EEE9AC00](v71);
  v74 = &v452 - v488;
  sub_1CA948D98();
  v75 = [v490 bundleURL];
  MEMORY[0x1EEE9AC00](v75);
  v76 = &v452 - v492;
  sub_1CA948B68();

  v77 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v78 = sub_1CA2F9F14(v68, v70, v71, v73, 0, 0, v74, v76);
  v79 = v470;
  v470[40] = v78;
  v80 = v487;
  v79[43] = v487;
  v79[44] = @"Output";
  v81 = swift_allocObject();
  *(v81 + 16) = v479;
  *(v81 + 32) = 0x75736F6C63736944;
  *(v81 + 40) = 0xEF6C6576654C6572;
  *(v81 + 48) = 0x63696C627550;
  *(v81 + 56) = 0xE600000000000000;
  *(v81 + 72) = MEMORY[0x1E69E6158];
  *(v81 + 80) = 0x656C7069746C754DLL;
  *(v81 + 88) = 0xE800000000000000;
  *(v81 + 96) = 1;
  *(v81 + 120) = MEMORY[0x1E69E6370];
  *(v81 + 128) = 0x614E74757074754FLL;
  *(v81 + 136) = 0xEA0000000000656DLL;
  v82 = @"Output";
  v83 = sub_1CA94C438();
  v483 = v84;
  v85 = sub_1CA94C438();
  v87 = v86;
  v484 = &v452;
  MEMORY[0x1EEE9AC00](v85);
  v88 = &v452 - v488;
  sub_1CA948D98();
  v89 = [v490 bundleURL];
  MEMORY[0x1EEE9AC00](v89);
  v90 = &v452 - v492;
  sub_1CA948B68();

  v91 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v81 + 144) = sub_1CA2F9F14(v83, v483, v85, v87, 0, 0, v88, v90);
  *(v81 + 168) = v80;
  *(v81 + 176) = 0x7365707954;
  *(v81 + 216) = v468;
  *(v81 + 184) = 0xE500000000000000;
  *(v81 + 192) = &unk_1F4A02588;
  v92 = MEMORY[0x1E69E6158];
  v93 = sub_1CA94C1E8();
  v94 = v470;
  v470[45] = v93;
  v94[48] = v485;
  v94[49] = @"Parameters";
  v477 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v485 = swift_allocObject();
  *(v485 + 16) = xmmword_1CA983CF0;
  v484 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v483 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v95 = swift_allocObject();
  *(v95 + 16) = v479;
  v478 = 0x80000001CA99B030;
  v467 = 0xD000000000000019;
  *(v95 + 32) = @"Class";
  *(v95 + 40) = 0xD000000000000019;
  *(v95 + 48) = 0x80000001CA99B030;
  *(v95 + 64) = v92;
  *(v95 + 72) = @"Key";
  *(v95 + 80) = 0x6567616D494657;
  *(v95 + 88) = 0xE700000000000000;
  *(v95 + 104) = v92;
  *(v95 + 112) = @"Label";
  v96 = @"Class";
  v97 = @"Key";
  v98 = @"Label";
  v99 = v96;
  v100 = v97;
  v101 = v98;
  v475 = v99;
  v474 = v100;
  v476 = v101;
  v102 = @"Parameters";
  v481 = sub_1CA94C438();
  v473 = v103;
  v104 = sub_1CA94C438();
  v472 = v105;
  v482 = &v452;
  MEMORY[0x1EEE9AC00](v104);
  v106 = v488;
  sub_1CA948D98();
  v107 = v490;
  v108 = [v490 bundleURL];
  MEMORY[0x1EEE9AC00](v108);
  v109 = &v452 - v492;
  sub_1CA948B68();

  v110 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v95 + 120) = sub_1CA2F9F14(v481, v473, v104, v472, 0, 0, &v452 - v106, v109);
  v111 = v487;
  *(v95 + 144) = v487;
  *(v95 + 152) = @"Placeholder";
  v473 = @"Placeholder";
  v481 = sub_1CA94C438();
  v472 = v112;
  v113 = sub_1CA94C438();
  *&v471 = v114;
  v482 = &v452;
  MEMORY[0x1EEE9AC00](v113);
  v115 = &v452 - v106;
  sub_1CA948D98();
  v116 = [v107 bundleURL];
  MEMORY[0x1EEE9AC00](v116);
  v117 = v492;
  sub_1CA948B68();

  v118 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v119 = sub_1CA2F9F14(v481, v472, v113, v471, 0, 0, v115, &v452 - v117);
  *(v95 + 184) = v111;
  *(v95 + 160) = v119;
  _s3__C3KeyVMa_0(0);
  v482 = v120;
  v481 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  *(v485 + 32) = sub_1CA2F864C();
  v121 = swift_allocObject();
  *(v121 + 16) = v479;
  v123 = v474;
  v122 = v475;
  v124 = v467;
  *(v121 + 32) = v475;
  *(v121 + 40) = v124;
  *(v121 + 48) = v478;
  v125 = MEMORY[0x1E69E6158];
  *(v121 + 64) = MEMORY[0x1E69E6158];
  *(v121 + 72) = v123;
  *(v121 + 80) = 0x7475706E494657;
  *(v121 + 88) = 0xE700000000000000;
  v126 = v476;
  *(v121 + 104) = v125;
  *(v121 + 112) = v126;
  v472 = v122;
  v475 = v123;
  v476 = v126;
  v474 = sub_1CA94C438();
  *&v471 = v127;
  v128 = sub_1CA94C438();
  v469 = v129;
  v478 = &v452;
  MEMORY[0x1EEE9AC00](v128);
  v130 = &v452 - v488;
  sub_1CA948D98();
  v131 = v490;
  v132 = [v490 bundleURL];
  MEMORY[0x1EEE9AC00](v132);
  sub_1CA948B68();

  v133 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v121 + 120) = sub_1CA2F9F14(v474, v471, v128, v469, 0, 0, v130, &v452 - v117);
  v134 = v487;
  v135 = v473;
  *(v121 + 144) = v487;
  *(v121 + 152) = v135;
  *&v464 = v135;
  v136 = sub_1CA94C438();
  v473 = v137;
  v474 = v136;
  v138 = sub_1CA94C438();
  *&v471 = v139;
  v478 = &v452;
  MEMORY[0x1EEE9AC00](v138);
  v140 = v488;
  sub_1CA948D98();
  v141 = [v131 bundleURL];
  MEMORY[0x1EEE9AC00](v141);
  sub_1CA948B68();

  v142 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v143 = sub_1CA2F9F14(v474, v473, v138, v471, 0, 0, &v452 - v140, &v452 - v117);
  *(v121 + 184) = v134;
  *(v121 + 160) = v143;
  sub_1CA94C1E8();
  *(v485 + 40) = sub_1CA2F864C();
  v144 = swift_allocObject();
  *(v144 + 16) = v479;
  v455 = 0xD000000000000011;
  v145 = v472;
  *(v144 + 32) = v472;
  *(v144 + 40) = 0xD000000000000011;
  *(v144 + 48) = 0x80000001CA99E620;
  v146 = MEMORY[0x1E69E6158];
  *(v144 + 64) = MEMORY[0x1E69E6158];
  *(v144 + 72) = @"DefaultValue";
  *(v144 + 80) = 1;
  v147 = v475;
  v148 = v476;
  *(v144 + 104) = MEMORY[0x1E69E6370];
  *(v144 + 112) = v147;
  v478 = 0xD000000000000017;
  *&v479 = 0x80000001CA9C5F90;
  *(v144 + 120) = 0xD000000000000017;
  *(v144 + 128) = 0x80000001CA9C5F90;
  *(v144 + 144) = v146;
  *(v144 + 152) = v148;
  v149 = @"DefaultValue";
  v474 = v145;
  v475 = v147;
  v476 = v148;
  v473 = v149;
  v150 = sub_1CA94C438();
  v152 = v151;
  v153 = sub_1CA94C438();
  v155 = v154;
  v472 = &v452;
  MEMORY[0x1EEE9AC00](v153);
  v156 = &v452 - v140;
  sub_1CA948D98();
  v157 = [v490 bundleURL];
  MEMORY[0x1EEE9AC00](v157);
  v158 = &v452 - v492;
  sub_1CA948B68();

  v159 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v160 = sub_1CA2F9F14(v150, v152, v153, v155, 0, 0, v156, v158);
  *(v144 + 184) = v487;
  *(v144 + 160) = v160;
  sub_1CA94C1E8();
  *(v485 + 48) = sub_1CA2F864C();
  v161 = swift_allocObject();
  v469 = v161;
  v465 = xmmword_1CA981380;
  *(v161 + 16) = xmmword_1CA981380;
  v472 = 0xD000000000000016;
  v163 = v473;
  v162 = v474;
  *(v161 + 32) = v474;
  *(v161 + 40) = 0xD000000000000016;
  *(v161 + 48) = 0x80000001CA99C4A0;
  v164 = MEMORY[0x1E69E6158];
  *(v161 + 64) = MEMORY[0x1E69E6158];
  *(v161 + 72) = v163;
  *(v161 + 80) = 0x7265746E6543;
  *(v161 + 88) = 0xE600000000000000;
  *(v161 + 104) = v164;
  *(v161 + 112) = @"Items";
  v477 = swift_allocObject();
  *(v477 + 1) = xmmword_1CA981410;
  v463 = v162;
  v466 = v163;
  v165 = @"Items";
  v473 = sub_1CA94C438();
  *&v471 = v166;
  v167 = sub_1CA94C438();
  v462 = v168;
  v474 = &v452;
  MEMORY[0x1EEE9AC00](v167);
  v169 = v488;
  sub_1CA948D98();
  v170 = [v490 bundleURL];
  MEMORY[0x1EEE9AC00](v170);
  v171 = v492;
  sub_1CA948B68();

  v172 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v173 = sub_1CA2F9F14(v473, v471, v167, v462, 0, 0, &v452 - v169, &v452 - v171);
  v477[4] = v173;
  v473 = sub_1CA94C438();
  *&v471 = v174;
  v175 = sub_1CA94C438();
  v462 = v176;
  v474 = &v452;
  MEMORY[0x1EEE9AC00](v175);
  v177 = &v452 - v169;
  sub_1CA948D98();
  v178 = v490;
  v179 = [v490 bundleURL];
  MEMORY[0x1EEE9AC00](v179);
  sub_1CA948B68();

  v180 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v181 = sub_1CA2F9F14(v473, v471, v175, v462, 0, 0, v177, &v452 - v171);
  v182 = v477;
  v477[5] = v181;
  v473 = sub_1CA94C438();
  *&v471 = v183;
  v184 = sub_1CA94C438();
  v462 = v185;
  v474 = &v452;
  MEMORY[0x1EEE9AC00](v184);
  v186 = v488;
  sub_1CA948D98();
  v187 = [v178 bundleURL];
  MEMORY[0x1EEE9AC00](v187);
  v188 = v492;
  sub_1CA948B68();

  v189 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v182[6] = sub_1CA2F9F14(v473, v471, v184, v462, 0, 0, &v452 - v186, &v452 - v188);
  v473 = sub_1CA94C438();
  *&v471 = v190;
  v462 = sub_1CA94C438();
  v192 = v191;
  v474 = &v452;
  MEMORY[0x1EEE9AC00](v462);
  v193 = &v452 - v186;
  sub_1CA948D98();
  v194 = v490;
  v195 = [v490 bundleURL];
  MEMORY[0x1EEE9AC00](v195);
  sub_1CA948B68();

  v196 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v182[7] = sub_1CA2F9F14(v473, v471, v462, v192, 0, 0, v193, &v452 - v188);
  v473 = sub_1CA94C438();
  *&v471 = v197;
  v198 = sub_1CA94C438();
  v462 = v199;
  v474 = &v452;
  MEMORY[0x1EEE9AC00](v198);
  v200 = v488;
  sub_1CA948D98();
  v201 = [v194 bundleURL];
  MEMORY[0x1EEE9AC00](v201);
  v202 = v492;
  sub_1CA948B68();

  v203 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v204 = sub_1CA2F9F14(v473, v471, v198, v462, 0, 0, &v452 - v200, &v452 - v202);
  v477[8] = v204;
  v473 = sub_1CA94C438();
  *&v471 = v205;
  v206 = sub_1CA94C438();
  v462 = v207;
  v474 = &v452;
  MEMORY[0x1EEE9AC00](v206);
  sub_1CA948D98();
  v208 = [v194 bundleURL];
  MEMORY[0x1EEE9AC00](v208);
  sub_1CA948B68();

  v209 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v210 = sub_1CA2F9F14(v473, v471, v206, v462, 0, 0, &v452 - v200, &v452 - v202);
  v211 = v477;
  v477[9] = v210;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  v213 = v469;
  v469[15] = v211;
  v214 = v475;
  v215 = v476;
  v213[18] = v212;
  v213[19] = v214;
  v213[20] = 0x506567616D494657;
  v213[21] = 0xEF6E6F697469736FLL;
  v213[23] = MEMORY[0x1E69E6158];
  v213[24] = v215;
  v461 = v214;
  v459 = v215;
  v216 = sub_1CA94C438();
  v218 = v217;
  v219 = sub_1CA94C438();
  v221 = v220;
  v477 = &v452;
  MEMORY[0x1EEE9AC00](v219);
  v222 = &v452 - v488;
  sub_1CA948D98();
  v223 = [v490 bundleURL];
  MEMORY[0x1EEE9AC00](v223);
  v224 = &v452 - v492;
  sub_1CA948B68();

  v225 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v213[25] = sub_1CA2F9F14(v216, v218, v219, v221, 0, 0, v222, v224);
  v213[28] = v487;
  v213[29] = @"RequiredResources";
  v477 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v226 = swift_allocObject();
  v471 = xmmword_1CA981310;
  *(v226 + 16) = xmmword_1CA981310;
  v227 = swift_allocObject();
  *(v227 + 16) = v486;
  strcpy((v227 + 32), "WFParameterKey");
  *(v227 + 47) = -18;
  v228 = v479;
  *(v227 + 48) = v478;
  *(v227 + 56) = v228;
  v475 = 0x80000001CA993570;
  v229 = MEMORY[0x1E69E6158];
  *(v227 + 72) = MEMORY[0x1E69E6158];
  *(v227 + 80) = 0xD000000000000010;
  *(v227 + 88) = 0x80000001CA993570;
  *(v227 + 96) = 0;
  *(v227 + 120) = MEMORY[0x1E69E6370];
  *(v227 + 128) = 0x72756F7365524657;
  *(v227 + 168) = v229;
  v473 = 0xD00000000000001BLL;
  v474 = 0x80000001CA993590;
  *(v227 + 136) = 0xEF7373616C436563;
  *(v227 + 144) = 0xD00000000000001BLL;
  *(v227 + 152) = 0x80000001CA993590;
  v460 = @"RequiredResources";
  *(v226 + 32) = sub_1CA94C1E8();
  v476 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  v213[33] = v476;
  v213[30] = v226;
  sub_1CA94C1E8();
  *(v485 + 56) = sub_1CA2F864C();
  v230 = swift_allocObject();
  *(v230 + 16) = v465;
  v469 = 0x80000001CA99C180;
  v231 = v463;
  v232 = v472;
  *(v230 + 32) = v463;
  *(v230 + 40) = v232;
  *(v230 + 48) = 0x80000001CA99C180;
  v233 = v461;
  *(v230 + 64) = v229;
  *(v230 + 72) = v233;
  strcpy((v230 + 80), "WFImageWidth");
  *(v230 + 93) = 0;
  *(v230 + 94) = -5120;
  *(v230 + 104) = v229;
  v234 = v459;
  *(v230 + 112) = v459;
  v462 = v231;
  v461 = v233;
  v463 = v234;
  v235 = sub_1CA94C438();
  v457 = v236;
  v458 = v235;
  v454 = sub_1CA94C438();
  v238 = v237;
  v459 = &v452;
  MEMORY[0x1EEE9AC00](v454);
  v239 = v488;
  sub_1CA948D98();
  v240 = [v490 bundleURL];
  MEMORY[0x1EEE9AC00](v240);
  v241 = &v452 - v492;
  sub_1CA948B68();

  v242 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v230 + 120) = sub_1CA2F9F14(v458, v457, v454, v238, 0, 0, &v452 - v239, v241);
  v243 = v487;
  v244 = v464;
  *(v230 + 144) = v487;
  *(v230 + 152) = v244;
  *&v464 = v244;
  v245 = sub_1CA94C438();
  v457 = v246;
  v458 = v245;
  v247 = sub_1CA94C438();
  v249 = v248;
  v459 = &v452;
  MEMORY[0x1EEE9AC00](v247);
  sub_1CA948D98();
  v250 = [v490 bundleURL];
  MEMORY[0x1EEE9AC00](v250);
  v251 = &v452 - v492;
  sub_1CA948B68();

  v252 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v253 = sub_1CA2F9F14(v458, v457, v247, v249, 0, 0, &v452 - v239, v251);
  v254 = v460;
  *(v230 + 160) = v253;
  *(v230 + 184) = v243;
  *(v230 + 192) = v254;
  v255 = swift_allocObject();
  *(v255 + 16) = v471;
  v256 = swift_allocObject();
  *(v256 + 16) = v486;
  strcpy((v256 + 32), "WFParameterKey");
  *(v256 + 47) = -18;
  v257 = v479;
  *(v256 + 48) = v478;
  *(v256 + 56) = v257;
  v258 = MEMORY[0x1E69E6158];
  *(v256 + 72) = MEMORY[0x1E69E6158];
  *(v256 + 80) = 0xD000000000000010;
  *(v256 + 88) = v475;
  *(v256 + 96) = 0;
  *(v256 + 120) = MEMORY[0x1E69E6370];
  *(v256 + 128) = 0x72756F7365524657;
  *(v256 + 168) = v258;
  *(v256 + 136) = 0xEF7373616C436563;
  v259 = v474;
  *(v256 + 144) = v473;
  *(v256 + 152) = v259;
  v457 = v254;
  *(v255 + 32) = sub_1CA94C1E8();
  *(v230 + 200) = v255;
  *(v230 + 224) = v476;
  *(v230 + 232) = @"TextAlignment";
  *(v230 + 264) = v258;
  *(v230 + 240) = 0x7468676952;
  *(v230 + 248) = 0xE500000000000000;
  v459 = @"TextAlignment";
  sub_1CA94C1E8();
  *(v485 + 64) = sub_1CA2F864C();
  v260 = swift_allocObject();
  *(v260 + 16) = v465;
  v262 = v461;
  v261 = v462;
  v263 = v472;
  *(v260 + 32) = v462;
  *(v260 + 40) = v263;
  *(v260 + 48) = v469;
  *(v260 + 64) = v258;
  *(v260 + 72) = v262;
  strcpy((v260 + 80), "WFImageHeight");
  *(v260 + 94) = -4864;
  v264 = v463;
  *(v260 + 104) = v258;
  *(v260 + 112) = v264;
  v460 = v261;
  v458 = v262;
  v463 = v264;
  v265 = sub_1CA94C438();
  v461 = v266;
  v462 = v265;
  v267 = sub_1CA94C438();
  v454 = v268;
  *&v465 = &v452;
  MEMORY[0x1EEE9AC00](v267);
  v269 = v488;
  sub_1CA948D98();
  v270 = v490;
  v271 = [v490 bundleURL];
  v453 = &v452;
  MEMORY[0x1EEE9AC00](v271);
  v272 = v492;
  sub_1CA948B68();

  v273 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v260 + 120) = sub_1CA2F9F14(v462, v461, v267, v454, 0, 0, &v452 - v269, &v452 - v272);
  v274 = v487;
  v275 = v464;
  *(v260 + 144) = v487;
  *(v260 + 152) = v275;
  *&v465 = v275;
  v276 = sub_1CA94C438();
  v461 = v277;
  v462 = v276;
  v454 = sub_1CA94C438();
  v279 = v278;
  *&v464 = &v452;
  MEMORY[0x1EEE9AC00](v454);
  sub_1CA948D98();
  v280 = [v270 bundleURL];
  MEMORY[0x1EEE9AC00](v280);
  sub_1CA948B68();

  v281 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v260 + 160) = sub_1CA2F9F14(v462, v461, v454, v279, 0, 0, &v452 - v269, &v452 - v272);
  v282 = v457;
  *(v260 + 184) = v274;
  *(v260 + 192) = v282;
  v283 = swift_allocObject();
  *(v283 + 16) = v471;
  v284 = swift_allocObject();
  *(v284 + 16) = v486;
  strcpy((v284 + 32), "WFParameterKey");
  *(v284 + 47) = -18;
  v285 = v479;
  *(v284 + 48) = v478;
  *(v284 + 56) = v285;
  v286 = MEMORY[0x1E69E6158];
  *(v284 + 72) = MEMORY[0x1E69E6158];
  *(v284 + 80) = 0xD000000000000010;
  *(v284 + 88) = v475;
  *(v284 + 96) = 0;
  v287 = MEMORY[0x1E69E6370];
  *(v284 + 120) = MEMORY[0x1E69E6370];
  *(v284 + 128) = 0x72756F7365524657;
  *(v284 + 168) = v286;
  *(v284 + 136) = 0xEF7373616C436563;
  v288 = v474;
  *(v284 + 144) = v473;
  *(v284 + 152) = v288;
  v462 = v282;
  *(v283 + 32) = sub_1CA94C1E8();
  *(v260 + 200) = v283;
  v289 = v459;
  *(v260 + 224) = v476;
  *(v260 + 232) = v289;
  *(v260 + 264) = v286;
  *(v260 + 240) = 0x7468676952;
  *(v260 + 248) = 0xE500000000000000;
  v461 = v289;
  sub_1CA94C1E8();
  *(v485 + 72) = sub_1CA2F864C();
  v290 = swift_allocObject();
  v464 = xmmword_1CA981400;
  *(v290 + 16) = xmmword_1CA981400;
  *(v290 + 32) = @"AllowsDecimalNumbers";
  *(v290 + 40) = 1;
  *(v290 + 64) = v287;
  v291 = v460;
  v292 = v472;
  *(v290 + 72) = v460;
  *(v290 + 80) = v292;
  *(v290 + 88) = v469;
  v293 = v458;
  *(v290 + 104) = v286;
  *(v290 + 112) = v293;
  *(v290 + 120) = 0x586567616D494657;
  *(v290 + 128) = 0xE800000000000000;
  *(v290 + 144) = v286;
  v294 = v463;
  *(v290 + 152) = v463;
  v295 = @"AllowsDecimalNumbers";
  v459 = v291;
  v457 = v293;
  v458 = v294;
  v463 = v295;
  v296 = sub_1CA94C438();
  v453 = v297;
  v454 = v296;
  v298 = sub_1CA94C438();
  v452 = v299;
  v460 = &v452;
  MEMORY[0x1EEE9AC00](v298);
  v300 = v488;
  sub_1CA948D98();
  v301 = v490;
  v302 = [v490 bundleURL];
  MEMORY[0x1EEE9AC00](v302);
  v303 = &v452 - v492;
  sub_1CA948B68();

  v304 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v290 + 160) = sub_1CA2F9F14(v454, v453, v298, v452, 0, 0, &v452 - v300, v303);
  v305 = v487;
  v306 = v465;
  *(v290 + 184) = v487;
  *(v290 + 192) = v306;
  v460 = v306;
  v307 = sub_1CA94C438();
  v453 = v308;
  v454 = v307;
  v309 = sub_1CA94C438();
  v311 = v310;
  *&v465 = &v452;
  MEMORY[0x1EEE9AC00](v309);
  v312 = &v452 - v300;
  sub_1CA948D98();
  v313 = [v301 bundleURL];
  MEMORY[0x1EEE9AC00](v313);
  v314 = &v452 - v492;
  sub_1CA948B68();

  v315 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v290 + 200) = sub_1CA2F9F14(v454, v453, v309, v311, 0, 0, v312, v314);
  v316 = v462;
  *(v290 + 224) = v305;
  *(v290 + 232) = v316;
  v317 = swift_allocObject();
  v465 = xmmword_1CA97EDF0;
  *(v317 + 16) = xmmword_1CA97EDF0;
  v318 = swift_allocObject();
  *(v318 + 16) = v486;
  strcpy((v318 + 32), "WFParameterKey");
  *(v318 + 47) = -18;
  v319 = v479;
  *(v318 + 48) = v478;
  *(v318 + 56) = v319;
  v320 = MEMORY[0x1E69E6158];
  *(v318 + 72) = MEMORY[0x1E69E6158];
  *(v318 + 80) = 0xD000000000000010;
  v321 = v474;
  v322 = v475;
  *(v318 + 88) = v475;
  *(v318 + 96) = 0;
  *(v318 + 120) = MEMORY[0x1E69E6370];
  *(v318 + 128) = 0x72756F7365524657;
  *(v318 + 168) = v320;
  v323 = v473;
  *(v318 + 136) = 0xEF7373616C436563;
  *(v318 + 144) = v323;
  *(v318 + 152) = v321;
  v453 = v462;
  *(v317 + 32) = sub_1CA94C1E8();
  v324 = swift_allocObject();
  *(v324 + 16) = v486;
  strcpy((v324 + 32), "WFParameterKey");
  *(v324 + 47) = -18;
  *(v324 + 48) = 0x506567616D494657;
  *(v324 + 56) = 0xEF6E6F697469736FLL;
  *(v324 + 72) = v320;
  *(v324 + 80) = 0xD000000000000010;
  *(v324 + 88) = v322;
  *(v324 + 96) = 0x6D6F74737543;
  *(v324 + 104) = 0xE600000000000000;
  *(v324 + 120) = v320;
  *(v324 + 128) = 0x72756F7365524657;
  *(v324 + 168) = v320;
  *(v324 + 136) = 0xEF7373616C436563;
  *(v324 + 144) = v323;
  *(v324 + 152) = v321;
  *(v317 + 40) = sub_1CA94C1E8();
  *(v290 + 240) = v317;
  v325 = v461;
  *(v290 + 264) = v476;
  *(v290 + 272) = v325;
  *(v290 + 304) = v320;
  *(v290 + 280) = 0x7468676952;
  *(v290 + 288) = 0xE500000000000000;
  v454 = v325;
  sub_1CA94C1E8();
  *(v485 + 80) = sub_1CA2F864C();
  v326 = swift_allocObject();
  *(v326 + 16) = v464;
  *(v326 + 32) = v463;
  *(v326 + 40) = 1;
  v328 = v458;
  v327 = v459;
  *(v326 + 64) = MEMORY[0x1E69E6370];
  *(v326 + 72) = v327;
  v329 = v469;
  *(v326 + 80) = v472;
  *(v326 + 88) = v329;
  v330 = v457;
  *(v326 + 104) = v320;
  *(v326 + 112) = v330;
  *(v326 + 120) = 0x596567616D494657;
  *(v326 + 128) = 0xE800000000000000;
  *(v326 + 144) = v320;
  *(v326 + 152) = v328;
  v459 = v327;
  v461 = v330;
  v462 = v328;
  v457 = sub_1CA94C438();
  v452 = v331;
  v332 = sub_1CA94C438();
  v334 = v333;
  v458 = &v452;
  MEMORY[0x1EEE9AC00](v332);
  v335 = &v452 - v488;
  sub_1CA948D98();
  v336 = [v490 bundleURL];
  MEMORY[0x1EEE9AC00](v336);
  v337 = &v452 - v492;
  sub_1CA948B68();

  v338 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v326 + 160) = sub_1CA2F9F14(v457, v452, v332, v334, 0, 0, v335, v337);
  v339 = v487;
  v340 = v460;
  *(v326 + 184) = v487;
  *(v326 + 192) = v340;
  v460 = v340;
  v457 = sub_1CA94C438();
  v452 = v341;
  v342 = sub_1CA94C438();
  v344 = v343;
  v458 = &v452;
  MEMORY[0x1EEE9AC00](v342);
  v345 = &v452 - v488;
  sub_1CA948D98();
  v346 = [v490 bundleURL];
  MEMORY[0x1EEE9AC00](v346);
  v347 = &v452 - v492;
  sub_1CA948B68();

  v348 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v326 + 200) = sub_1CA2F9F14(v457, v452, v342, v344, 0, 0, v345, v347);
  *(v326 + 224) = v339;
  v349 = v453;
  *(v326 + 232) = v453;
  v350 = swift_allocObject();
  *(v350 + 16) = v465;
  v351 = swift_allocObject();
  *(v351 + 16) = v486;
  strcpy((v351 + 32), "WFParameterKey");
  *(v351 + 47) = -18;
  v352 = v479;
  *(v351 + 48) = v478;
  *(v351 + 56) = v352;
  v353 = MEMORY[0x1E69E6158];
  *(v351 + 72) = MEMORY[0x1E69E6158];
  *(v351 + 80) = 0xD000000000000010;
  v354 = v474;
  v355 = v475;
  *(v351 + 88) = v475;
  *(v351 + 96) = 0;
  *(v351 + 120) = MEMORY[0x1E69E6370];
  *(v351 + 128) = 0x72756F7365524657;
  *(v351 + 168) = v353;
  v356 = v473;
  *(v351 + 136) = 0xEF7373616C436563;
  *(v351 + 144) = v356;
  *(v351 + 152) = v354;
  v458 = v349;
  *(v350 + 32) = sub_1CA94C1E8();
  v357 = swift_allocObject();
  *(v357 + 16) = v486;
  strcpy((v357 + 32), "WFParameterKey");
  *(v357 + 47) = -18;
  *(v357 + 48) = 0x506567616D494657;
  *(v357 + 56) = 0xEF6E6F697469736FLL;
  *(v357 + 72) = v353;
  *(v357 + 80) = 0xD000000000000010;
  *(v357 + 88) = v355;
  *(v357 + 96) = 0x6D6F74737543;
  *(v357 + 104) = 0xE600000000000000;
  *(v357 + 120) = v353;
  *(v357 + 128) = 0x72756F7365524657;
  *(v357 + 168) = v353;
  *(v357 + 136) = 0xEF7373616C436563;
  *(v357 + 144) = v356;
  *(v357 + 152) = v354;
  *(v350 + 40) = sub_1CA94C1E8();
  *(v326 + 240) = v350;
  v358 = v454;
  *(v326 + 264) = v476;
  *(v326 + 272) = v358;
  *(v326 + 304) = v353;
  *(v326 + 280) = 0x7468676952;
  *(v326 + 288) = 0xE500000000000000;
  v457 = v358;
  sub_1CA94C1E8();
  *(v485 + 88) = sub_1CA2F864C();
  v359 = swift_allocObject();
  *(v359 + 16) = xmmword_1CA981300;
  *(v359 + 32) = v463;
  *(v359 + 40) = 1;
  v360 = v459;
  *(v359 + 64) = MEMORY[0x1E69E6370];
  *(v359 + 72) = v360;
  v361 = v469;
  *(v359 + 80) = v472;
  *(v359 + 88) = v361;
  v362 = v466;
  *(v359 + 104) = v353;
  *(v359 + 112) = v362;
  v363 = MEMORY[0x1E69E6530];
  *(v359 + 120) = 0;
  v364 = v461;
  *(v359 + 144) = v363;
  *(v359 + 152) = v364;
  *(v359 + 160) = 0x697461746F524657;
  *(v359 + 168) = 0xEA00000000006E6FLL;
  v365 = v462;
  *(v359 + 184) = v353;
  *(v359 + 192) = v365;
  v366 = sub_1CA94C438();
  v453 = v367;
  v454 = v366;
  v368 = sub_1CA94C438();
  v452 = v369;
  v463 = &v452;
  MEMORY[0x1EEE9AC00](v368);
  v370 = &v452 - v488;
  sub_1CA948D98();
  v371 = v490;
  v372 = [v490 bundleURL];
  MEMORY[0x1EEE9AC00](v372);
  v373 = v492;
  sub_1CA948B68();

  v374 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v359 + 200) = sub_1CA2F9F14(v454, v453, v368, v452, 0, 0, v370, &v452 - v373);
  v375 = v487;
  v376 = v460;
  *(v359 + 224) = v487;
  *(v359 + 232) = v376;
  v377 = sub_1CA94C438();
  v453 = v378;
  v454 = v377;
  v452 = sub_1CA94C438();
  v380 = v379;
  v463 = &v452;
  MEMORY[0x1EEE9AC00](v452);
  v381 = &v452 - v488;
  sub_1CA948D98();
  v382 = [v371 bundleURL];
  MEMORY[0x1EEE9AC00](v382);
  sub_1CA948B68();

  v383 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v359 + 240) = sub_1CA2F9F14(v454, v453, v452, v380, 0, 0, v381, &v452 - v373);
  v384 = v458;
  *(v359 + 264) = v375;
  *(v359 + 272) = v384;
  v385 = swift_allocObject();
  *(v385 + 16) = v471;
  v386 = swift_allocObject();
  *(v386 + 16) = v486;
  strcpy((v386 + 32), "WFParameterKey");
  *(v386 + 47) = -18;
  v387 = v479;
  *(v386 + 48) = v478;
  *(v386 + 56) = v387;
  v388 = MEMORY[0x1E69E6158];
  *(v386 + 72) = MEMORY[0x1E69E6158];
  *(v386 + 80) = 0xD000000000000010;
  *(v386 + 88) = v475;
  *(v386 + 96) = 0;
  *(v386 + 120) = MEMORY[0x1E69E6370];
  *(v386 + 128) = 0x72756F7365524657;
  *(v386 + 168) = v388;
  *(v386 + 136) = 0xEF7373616C436563;
  v389 = v474;
  *(v386 + 144) = v473;
  *(v386 + 152) = v389;
  v390 = v388;
  *(v385 + 32) = sub_1CA94C1E8();
  *(v359 + 280) = v385;
  v391 = v457;
  *(v359 + 304) = v476;
  *(v359 + 312) = v391;
  *(v359 + 344) = v390;
  *(v359 + 320) = 0x7468676952;
  *(v359 + 328) = 0xE500000000000000;
  sub_1CA94C1E8();
  *(v485 + 96) = sub_1CA2F864C();
  v392 = swift_allocObject();
  *(v392 + 16) = v464;
  v393 = v472;
  *(v392 + 32) = v459;
  *(v392 + 40) = v393;
  *(v392 + 48) = v469;
  v394 = v466;
  *(v392 + 64) = v390;
  *(v392 + 72) = v394;
  *(v392 + 80) = 100;
  v395 = v461;
  *(v392 + 104) = MEMORY[0x1E69E6530];
  *(v392 + 112) = v395;
  *(v392 + 120) = 0xD000000000000015;
  *(v392 + 128) = 0x80000001CA9C6240;
  v396 = v462;
  *(v392 + 144) = v390;
  *(v392 + 152) = v396;
  v472 = sub_1CA94C438();
  v469 = v397;
  v398 = sub_1CA94C438();
  v466 = v399;
  v483 = &v452;
  MEMORY[0x1EEE9AC00](v398);
  v400 = v488;
  sub_1CA948D98();
  v401 = v490;
  v402 = [v490 bundleURL];
  *&v464 = &v452;
  MEMORY[0x1EEE9AC00](v402);
  v403 = v492;
  sub_1CA948B68();

  v404 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v392 + 160) = sub_1CA2F9F14(v472, v469, v398, v466, 0, 0, &v452 - v400, &v452 - v403);
  v405 = v460;
  *(v392 + 184) = v487;
  *(v392 + 192) = v405;
  v472 = sub_1CA94C438();
  v469 = v406;
  v407 = sub_1CA94C438();
  v466 = v408;
  v483 = &v452;
  MEMORY[0x1EEE9AC00](v407);
  sub_1CA948D98();
  v409 = [v401 bundleURL];
  MEMORY[0x1EEE9AC00](v409);
  sub_1CA948B68();

  v410 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v392 + 200) = sub_1CA2F9F14(v472, v469, v407, v466, 0, 0, &v452 - v400, &v452 - v403);
  v411 = v458;
  *(v392 + 224) = v487;
  *(v392 + 232) = v411;
  v412 = swift_allocObject();
  *(v412 + 16) = v471;
  v413 = swift_allocObject();
  *(v413 + 16) = v486;
  strcpy((v413 + 32), "WFParameterKey");
  *(v413 + 47) = -18;
  v414 = v479;
  *(v413 + 48) = v478;
  *(v413 + 56) = v414;
  v415 = MEMORY[0x1E69E6158];
  *(v413 + 72) = MEMORY[0x1E69E6158];
  *(v413 + 80) = 0xD000000000000010;
  *(v413 + 88) = v475;
  *(v413 + 96) = 0;
  *(v413 + 120) = MEMORY[0x1E69E6370];
  *(v413 + 128) = 0x72756F7365524657;
  *(v413 + 168) = v415;
  *(v413 + 136) = 0xEF7373616C436563;
  v416 = v474;
  *(v413 + 144) = v473;
  *(v413 + 152) = v416;
  v417 = v415;
  *(v412 + 32) = sub_1CA94C1E8();
  *(v392 + 240) = v412;
  v418 = v457;
  *(v392 + 264) = v476;
  *(v392 + 272) = v418;
  *(v392 + 304) = v417;
  *(v392 + 280) = 0x7468676952;
  *(v392 + 288) = 0xE500000000000000;
  sub_1CA94C1E8();
  v419 = sub_1CA2F864C();
  v420 = v485;
  *(v485 + 104) = v419;
  v421 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v422 = v470;
  v470[50] = v420;
  v422[53] = v421;
  v422[54] = @"ParameterSummary";
  v423 = @"ParameterSummary";
  v424 = sub_1CA94C438();
  v426 = v425;
  v427 = sub_1CA94C438();
  v429 = v428;
  MEMORY[0x1EEE9AC00](v427);
  sub_1CA948D98();
  v430 = [v490 bundleURL];
  MEMORY[0x1EEE9AC00](v430);
  v431 = &v452 - v492;
  sub_1CA948B68();

  v432 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v433 = sub_1CA2F9F14(v424, v426, v427, v429, 0, 0, &v452 - v400, v431);
  v434 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v435 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v436 = v470;
  v470[55] = v434;
  v436[58] = v435;
  v436[59] = @"RequiredResources";
  v437 = swift_allocObject();
  *(v437 + 16) = v471;
  v438 = swift_allocObject();
  *(v438 + 16) = v465;
  *(v438 + 32) = v455;
  *(v438 + 40) = 0x80000001CA99B240;
  v439 = swift_allocObject();
  *(v439 + 16) = v471;
  v440 = swift_allocObject();
  *(v440 + 16) = v486;
  strcpy((v440 + 32), "WFParameterKey");
  *(v440 + 47) = -18;
  v441 = v479;
  *(v440 + 48) = v478;
  *(v440 + 56) = v441;
  v442 = MEMORY[0x1E69E6158];
  *(v440 + 72) = MEMORY[0x1E69E6158];
  *(v440 + 80) = 0xD000000000000010;
  *(v440 + 88) = v475;
  *(v440 + 96) = 1;
  *(v440 + 120) = MEMORY[0x1E69E6370];
  *(v440 + 128) = 0x72756F7365524657;
  *(v440 + 168) = v442;
  v444 = v473;
  v443 = v474;
  *(v440 + 136) = 0xEF7373616C436563;
  *(v440 + 144) = v444;
  *(v440 + 152) = v443;
  v445 = @"RequiredResources";
  *(v439 + 32) = sub_1CA94C1E8();
  *(v438 + 48) = v439;
  v446 = v476;
  *(v438 + 72) = v476;
  *(v438 + 80) = 0x72756F7365524657;
  *(v438 + 120) = v442;
  v447 = v467;
  *(v438 + 88) = 0xEF7373616C436563;
  *(v438 + 96) = v447;
  *(v438 + 104) = 0x80000001CA9932D0;
  *(v437 + 32) = sub_1CA94C1E8();
  v436[60] = v437;
  v436[63] = v446;
  v436[64] = @"UserInterfaceClasses";
  v448 = @"UserInterfaceClasses";
  v449 = sub_1CA94C1E8();
  v436[68] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  v436[65] = v449;
  v436[69] = @"UserInterfaces";
  v436[73] = v468;
  v436[70] = &unk_1F4A02618;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v450 = @"UserInterfaces";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA506974()
{
  v170 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000015;
  *(inited + 48) = 0x80000001CA9C6340;
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
  v180 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v181 = v12;
  v13 = &v161 - v180;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v179 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v178 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v177 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v161 - v177;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v176 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Description";
  v174 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1CA9813C0;
  *(v24 + 32) = @"DescriptionInput";
  v25 = @"Description";
  v26 = @"DescriptionInput";
  v27 = sub_1CA94C438();
  v172 = v28;
  v29 = sub_1CA94C438();
  v31 = v30;
  *&v173 = &v161;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v161 - v180;
  sub_1CA948D98();
  v33 = v179;
  v34 = [v179 bundleURL];
  v175 = inited;
  MEMORY[0x1EEE9AC00](v34);
  v35 = &v161 - v177;
  sub_1CA948B68();

  v36 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v24 + 40) = sub_1CA2F9F14(v27, v172, v29, v31, 0, 0, v32, v35);
  *(v24 + 64) = v176;
  *(v24 + 72) = @"DescriptionResult";
  v37 = @"DescriptionResult";
  v38 = sub_1CA94C438();
  v171 = v39;
  v172 = v38;
  v169 = sub_1CA94C438();
  v41 = v40;
  *&v173 = &v161;
  MEMORY[0x1EEE9AC00](v169);
  v42 = v180;
  sub_1CA948D98();
  v43 = [v33 bundleURL];
  MEMORY[0x1EEE9AC00](v43);
  v44 = v177;
  sub_1CA948B68();

  v45 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v24 + 80) = sub_1CA2F9F14(v172, v171, v169, v41, 0, 0, &v161 - v42, &v161 - v44);
  *(v24 + 104) = v176;
  *(v24 + 112) = @"DescriptionSummary";
  v46 = @"DescriptionSummary";
  v47 = sub_1CA94C438();
  v171 = v48;
  v172 = v47;
  v49 = sub_1CA94C438();
  v51 = v50;
  *&v173 = &v161;
  MEMORY[0x1EEE9AC00](v49);
  sub_1CA948D98();
  v52 = [v179 bundleURL];
  MEMORY[0x1EEE9AC00](v52);
  sub_1CA948B68();

  v53 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v54 = sub_1CA2F9F14(v172, v171, v49, v51, 0, 0, &v161 - v42, &v161 - v44);
  *(v24 + 144) = v176;
  *(v24 + 120) = v54;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v55 = v174;
  v56 = sub_1CA6B3784();
  v57 = v175;
  v175[20] = v56;
  v57[23] = v55;
  v57[24] = @"Input";
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v58 = swift_initStackObject();
  v173 = xmmword_1CA981350;
  *(v58 + 16) = xmmword_1CA981350;
  *(v58 + 32) = 0x656C7069746C754DLL;
  *(v58 + 40) = 0xE800000000000000;
  v59 = MEMORY[0x1E69E6370];
  *(v58 + 48) = 1;
  *(v58 + 72) = v59;
  strcpy((v58 + 80), "ParameterKey");
  *(v58 + 93) = 0;
  *(v58 + 94) = -5120;
  *(v58 + 96) = 0x7475706E494657;
  *(v58 + 104) = 0xE700000000000000;
  *(v58 + 120) = MEMORY[0x1E69E6158];
  *(v58 + 128) = 0x6465726975716552;
  *(v58 + 136) = 0xE800000000000000;
  *(v58 + 144) = 1;
  *(v58 + 168) = v59;
  *(v58 + 176) = 0x7365707954;
  v60 = v59;
  *(v58 + 184) = 0xE500000000000000;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v58 + 216) = v174;
  *(v58 + 192) = &unk_1F4A02688;
  v61 = @"Input";
  v62 = sub_1CA94C1E8();
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v172 = v63;
  v57[25] = v62;
  v57[28] = v63;
  v57[29] = @"InputPassthrough";
  *(v57 + 240) = 0;
  v57[33] = v60;
  v57[34] = @"Name";
  v64 = @"InputPassthrough";
  v65 = @"Name";
  v66 = sub_1CA94C438();
  v68 = v67;
  v69 = sub_1CA94C438();
  v71 = v70;
  v169 = &v161;
  MEMORY[0x1EEE9AC00](v69);
  v72 = v180;
  sub_1CA948D98();
  v73 = [v179 bundleURL];
  MEMORY[0x1EEE9AC00](v73);
  v74 = &v161 - v177;
  sub_1CA948B68();

  v75 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v76 = sub_1CA2F9F14(v66, v68, v69, v71, 0, 0, &v161 - v72, v74);
  v77 = v175;
  v78 = v176;
  v175[35] = v76;
  v77[38] = v78;
  v77[39] = @"Output";
  v79 = swift_allocObject();
  *(v79 + 16) = v173;
  *(v79 + 32) = 0x75736F6C63736944;
  *(v79 + 40) = 0xEF6C6576654C6572;
  *(v79 + 48) = 0x63696C627550;
  *(v79 + 56) = 0xE600000000000000;
  *(v79 + 72) = MEMORY[0x1E69E6158];
  *(v79 + 80) = 0x656C7069746C754DLL;
  *(v79 + 88) = 0xE800000000000000;
  *(v79 + 96) = 1;
  *(v79 + 120) = MEMORY[0x1E69E6370];
  *(v79 + 128) = 0x614E74757074754FLL;
  *(v79 + 136) = 0xEA0000000000656DLL;
  v80 = @"Output";
  v81 = sub_1CA94C438();
  v168 = v82;
  v169 = v81;
  v83 = sub_1CA94C438();
  v85 = v84;
  v171 = &v161;
  MEMORY[0x1EEE9AC00](v83);
  sub_1CA948D98();
  v86 = [v179 bundleURL];
  MEMORY[0x1EEE9AC00](v86);
  v87 = &v161 - v177;
  sub_1CA948B68();

  v88 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v79 + 144) = sub_1CA2F9F14(v169, v168, v83, v85, 0, 0, &v161 - v72, v87);
  *(v79 + 168) = v78;
  *(v79 + 176) = 0x7365707954;
  *(v79 + 216) = v174;
  *(v79 + 184) = 0xE500000000000000;
  *(v79 + 192) = &unk_1F4A026C8;
  v89 = MEMORY[0x1E69E6158];
  v90 = sub_1CA94C1E8();
  v91 = v175;
  v175[40] = v90;
  v91[43] = v172;
  v91[44] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v172 = swift_allocObject();
  *(v172 + 16) = xmmword_1CA981360;
  v171 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v92 = swift_allocObject();
  *(v92 + 16) = xmmword_1CA981370;
  *(v92 + 32) = @"Class";
  *(v92 + 40) = 0xD000000000000019;
  *(v92 + 48) = 0x80000001CA9C6480;
  *(v92 + 64) = v89;
  *(v92 + 72) = @"Key";
  strcpy((v92 + 80), "WFPlaylistName");
  *(v92 + 95) = -18;
  *(v92 + 104) = v89;
  *(v92 + 112) = @"Label";
  v93 = @"Class";
  v94 = @"Key";
  v95 = @"Label";
  v168 = v93;
  v167 = v94;
  v166 = v95;
  v96 = @"Parameters";
  v97 = sub_1CA94C438();
  v163 = v98;
  v164 = v97;
  v99 = sub_1CA94C438();
  v101 = v100;
  v165 = &v161;
  MEMORY[0x1EEE9AC00](v99);
  v102 = &v161 - v180;
  sub_1CA948D98();
  v103 = [v179 bundleURL];
  MEMORY[0x1EEE9AC00](v103);
  v104 = v177;
  sub_1CA948B68();

  v105 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v92 + 120) = sub_1CA2F9F14(v164, v163, v99, v101, 0, 0, v102, &v161 - v104);
  v106 = v176;
  *(v92 + 144) = v176;
  *(v92 + 152) = @"Placeholder";
  v165 = @"Placeholder";
  v107 = sub_1CA94C438();
  v162 = v108;
  v163 = v107;
  v109 = sub_1CA94C438();
  v111 = v110;
  v164 = &v161;
  MEMORY[0x1EEE9AC00](v109);
  v112 = &v161 - v180;
  sub_1CA948D98();
  v113 = [v179 bundleURL];
  MEMORY[0x1EEE9AC00](v113);
  sub_1CA948B68();

  v114 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v115 = sub_1CA2F9F14(v163, v162, v109, v111, 0, 0, v112, &v161 - v104);
  *(v92 + 184) = v106;
  *(v92 + 160) = v115;
  *(v92 + 192) = sub_1CA94C368();
  *(v92 + 224) = MEMORY[0x1E69E6370];
  *(v92 + 200) = 1;
  _s3__C3KeyVMa_0(0);
  v164 = v116;
  v163 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  *(v172 + 32) = sub_1CA2F864C();
  v117 = swift_allocObject();
  *(v117 + 16) = v173;
  *(v117 + 32) = v168;
  *(v117 + 40) = 0xD000000000000019;
  *(v117 + 48) = 0x80000001CA99B030;
  v118 = MEMORY[0x1E69E6158];
  v119 = v167;
  *(v117 + 64) = MEMORY[0x1E69E6158];
  *(v117 + 72) = v119;
  *(v117 + 80) = 0x7475706E494657;
  *(v117 + 88) = 0xE700000000000000;
  v120 = v166;
  *(v117 + 104) = v118;
  *(v117 + 112) = v120;
  v121 = sub_1CA94C438();
  v168 = v122;
  v169 = v121;
  v167 = sub_1CA94C438();
  v124 = v123;
  *&v173 = &v161;
  MEMORY[0x1EEE9AC00](v167);
  v125 = &v161 - v180;
  sub_1CA948D98();
  v126 = v179;
  v127 = [v179 bundleURL];
  v166 = &v161;
  MEMORY[0x1EEE9AC00](v127);
  v128 = v177;
  sub_1CA948B68();

  v129 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v117 + 120) = sub_1CA2F9F14(v169, v168, v167, v124, 0, 0, v125, &v161 - v128);
  v130 = v176;
  v131 = v165;
  *(v117 + 144) = v176;
  *(v117 + 152) = v131;
  v132 = sub_1CA94C438();
  v168 = v133;
  v169 = v132;
  v167 = sub_1CA94C438();
  v135 = v134;
  *&v173 = &v161;
  MEMORY[0x1EEE9AC00](v167);
  v136 = &v161 - v180;
  sub_1CA948D98();
  v137 = [v126 bundleURL];
  MEMORY[0x1EEE9AC00](v137);
  sub_1CA948B68();

  v138 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v139 = sub_1CA2F9F14(v169, v168, v167, v135, 0, 0, v136, &v161 - v128);
  *(v117 + 184) = v130;
  *(v117 + 160) = v139;
  sub_1CA94C1E8();
  v140 = sub_1CA2F864C();
  v141 = v172;
  *(v172 + 40) = v140;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v143 = v175;
  v175[45] = v141;
  v143[48] = v142;
  v143[49] = @"ParameterSummary";
  v144 = @"ParameterSummary";
  v145 = sub_1CA94C438();
  v147 = v146;
  v148 = sub_1CA94C438();
  v150 = v149;
  MEMORY[0x1EEE9AC00](v148);
  v151 = &v161 - v180;
  sub_1CA948D98();
  v152 = [v179 bundleURL];
  MEMORY[0x1EEE9AC00](v152);
  v153 = &v161 - v177;
  sub_1CA948B68();

  v154 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v155 = sub_1CA2F9F14(v145, v147, v148, v150, 0, 0, v151, v153);
  v156 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v157 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v158 = v175;
  v175[50] = v156;
  v158[53] = v157;
  v158[54] = @"RequiredResources";
  v158[58] = v174;
  v158[55] = &unk_1F4A026F8;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v159 = @"RequiredResources";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA507DD4()
{
  v38 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813E0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000019;
  *(inited + 48) = 0x80000001CA9A2900;
  *(inited + 64) = v1;
  *(inited + 72) = @"IconColor";
  *(inited + 80) = 1702194242;
  *(inited + 88) = 0xE400000000000000;
  *(inited + 104) = v1;
  *(inited + 112) = @"IconSymbol";
  *(inited + 120) = 0x2E79616C70736964;
  *(inited + 128) = 0xE900000000000032;
  *(inited + 144) = v1;
  *(inited + 152) = @"Input";
  v2 = @"ActionClass";
  v3 = @"IconColor";
  v4 = @"IconSymbol";
  v5 = @"Input";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  v6 = sub_1CA94C1E8();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4442F0, &qword_1CA982FA8);
  *(inited + 160) = v6;
  *(inited + 184) = v7;
  *(inited + 192) = @"LocallyProcessesData";
  v8 = MEMORY[0x1E69E6370];
  *(inited + 200) = 1;
  *(inited + 224) = v8;
  *(inited + 232) = @"Name";
  v9 = @"LocallyProcessesData";
  v10 = @"Name";
  v11 = sub_1CA94C438();
  v13 = v12;
  v14 = sub_1CA94C438();
  v16 = v15;
  v17 = sub_1CA948E58();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v21 = [qword_1EDB9F690 bundleURL];
  v22 = sub_1CA948BA8();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v37 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v26 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v27 = sub_1CA2F9F14(v11, v13, v14, v16, 0, 0, v20, v25);
  v28 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 240) = v27;
  *(inited + 264) = v28;
  *(inited + 272) = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1CA9813B0;
  v39 = 2;
  v40 = 0;
  v30 = objc_allocWithZone(type metadata accessor for WFDeviceIdiomResource());
  v31 = @"RequiredResources";
  WFDeviceIdiomResource.init(requirement:)(&v39);
  *(v29 + 32) = v32;
  *(inited + 304) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438B0, &qword_1CA981658);
  *(inited + 280) = v29;
  v33 = sub_1CA94C368();
  v34 = MEMORY[0x1E69E6158];
  *(inited + 344) = MEMORY[0x1E69E6158];
  *(inited + 312) = v33;
  *(inited + 320) = 0xD000000000000014;
  *(inited + 328) = v37;
  v35 = sub_1CA94C368();
  *(inited + 384) = v34;
  *(inited + 352) = v35;
  strcpy((inited + 360), "Display Name");
  *(inited + 373) = 0;
  *(inited + 374) = -5120;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA5082B8()
{
  v172 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001CLL;
  *(inited + 48) = 0x80000001CA9C65A0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = inited;
  v3 = @"ActionClass";
  v4 = @"ActionKeywords";
  v5 = sub_1CA94C438();
  v7 = v6;
  v8 = sub_1CA94C438();
  v10 = v9;
  v11 = sub_1CA948E58();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v181 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v182 = v13;
  v14 = &v161 - v181;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v177 = qword_1EDB9F690;
  v15 = [qword_1EDB9F690 bundleURL];
  v16 = sub_1CA948BA8();
  v179 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v180 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = &v161 - v180;
  sub_1CA948B68();

  v19 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v20 = sub_1CA2F9F14(v5, v7, v8, v10, 0, 0, v14, v18);
  v21 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v178 = v21;
  v2[10] = v20;
  v2[13] = v21;
  v2[14] = @"AppDefinition";
  v22 = @"AppDefinition";
  v23 = sub_1CA94C1E8();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  v176 = v2;
  v2[15] = v23;
  v2[18] = v24;
  v2[19] = @"Description";
  v175 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v25 = swift_initStackObject();
  v174 = xmmword_1CA9813C0;
  *(v25 + 16) = xmmword_1CA9813C0;
  *(v25 + 32) = @"DescriptionInput";
  v26 = @"Description";
  v27 = @"DescriptionInput";
  v28 = sub_1CA94C438();
  *&v171 = v29;
  v30 = sub_1CA94C438();
  v32 = v31;
  v173 = &v161;
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v161 - v181;
  sub_1CA948D98();
  v34 = v177;
  v35 = [v177 bundleURL];
  MEMORY[0x1EEE9AC00](v35);
  v36 = &v161 - v180;
  sub_1CA948B68();

  v37 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v25 + 40) = sub_1CA2F9F14(v28, v171, v30, v32, 0, 0, v33, v36);
  *(v25 + 64) = v178;
  *(v25 + 72) = @"DescriptionResult";
  v38 = @"DescriptionResult";
  v39 = sub_1CA94C438();
  v170 = v40;
  *&v171 = v39;
  v169 = sub_1CA94C438();
  v42 = v41;
  v173 = &v161;
  MEMORY[0x1EEE9AC00](v169);
  v43 = v181;
  sub_1CA948D98();
  v44 = [v34 bundleURL];
  MEMORY[0x1EEE9AC00](v44);
  v45 = v180;
  sub_1CA948B68();

  v46 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v25 + 80) = sub_1CA2F9F14(v171, v170, v169, v42, 0, 0, &v161 - v43, &v161 - v45);
  *(v25 + 104) = v178;
  *(v25 + 112) = @"DescriptionSummary";
  v47 = @"DescriptionSummary";
  v48 = sub_1CA94C438();
  v170 = v49;
  *&v171 = v48;
  v50 = sub_1CA94C438();
  v52 = v51;
  v173 = &v161;
  MEMORY[0x1EEE9AC00](v50);
  sub_1CA948D98();
  v53 = [v177 bundleURL];
  MEMORY[0x1EEE9AC00](v53);
  sub_1CA948B68();

  v54 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v55 = sub_1CA2F9F14(v171, v170, v50, v52, 0, 0, &v161 - v43, &v161 - v45);
  *(v25 + 144) = v178;
  *(v25 + 120) = v55;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v56 = v175;
  v57 = sub_1CA6B3784();
  v58 = v176;
  v176[20] = v57;
  v58[23] = v56;
  v58[24] = @"DisabledOnPlatforms";
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  v58[25] = &unk_1F4A027D0;
  v58[28] = v59;
  v58[29] = @"Input";
  v60 = v59;
  v175 = v59;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v61 = swift_initStackObject();
  v171 = xmmword_1CA981350;
  *(v61 + 16) = xmmword_1CA981350;
  *(v61 + 32) = 0x656C7069746C754DLL;
  *(v61 + 40) = 0xE800000000000000;
  v62 = MEMORY[0x1E69E6370];
  *(v61 + 48) = 1;
  *(v61 + 72) = v62;
  strcpy((v61 + 80), "ParameterKey");
  *(v61 + 93) = 0;
  *(v61 + 94) = -5120;
  *(v61 + 96) = 0x7475706E494657;
  *(v61 + 104) = 0xE700000000000000;
  *(v61 + 120) = MEMORY[0x1E69E6158];
  *(v61 + 128) = 0x6465726975716552;
  *(v61 + 136) = 0xE800000000000000;
  *(v61 + 144) = 1;
  *(v61 + 168) = v62;
  *(v61 + 176) = 0x7365707954;
  v63 = v62;
  *(v61 + 216) = v60;
  *(v61 + 184) = 0xE500000000000000;
  *(v61 + 192) = &unk_1F4A02800;
  v64 = @"DisabledOnPlatforms";
  v65 = @"Input";
  v66 = sub_1CA94C1E8();
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v173 = v67;
  v58[30] = v66;
  v58[33] = v67;
  v58[34] = @"InputPassthrough";
  *(v58 + 280) = 0;
  v58[38] = v63;
  v58[39] = @"Name";
  v68 = @"InputPassthrough";
  v69 = @"Name";
  v70 = sub_1CA94C438();
  v167 = v71;
  v168 = v70;
  v72 = sub_1CA94C438();
  v74 = v73;
  v169 = &v161;
  MEMORY[0x1EEE9AC00](v72);
  v75 = &v161 - v181;
  sub_1CA948D98();
  v76 = v177;
  v77 = [v177 bundleURL];
  MEMORY[0x1EEE9AC00](v77);
  v78 = &v161 - v180;
  sub_1CA948B68();

  v79 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v80 = sub_1CA2F9F14(v168, v167, v72, v74, 0, 0, v75, v78);
  v81 = v176;
  v176[40] = v80;
  v82 = v178;
  v81[43] = v178;
  v81[44] = @"Output";
  v83 = swift_allocObject();
  *(v83 + 16) = v174;
  *(v83 + 32) = 0x656C7069746C754DLL;
  *(v83 + 40) = 0xE800000000000000;
  *(v83 + 48) = 1;
  *(v83 + 72) = MEMORY[0x1E69E6370];
  *(v83 + 80) = 0x614E74757074754FLL;
  *(v83 + 88) = 0xEA0000000000656DLL;
  v84 = @"Output";
  v85 = sub_1CA94C438();
  v169 = v86;
  v170 = v85;
  v168 = sub_1CA94C438();
  v88 = v87;
  *&v174 = &v161;
  MEMORY[0x1EEE9AC00](v168);
  v89 = v181;
  sub_1CA948D98();
  v90 = [v76 bundleURL];
  MEMORY[0x1EEE9AC00](v90);
  v91 = &v161 - v180;
  sub_1CA948B68();

  v92 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v83 + 96) = sub_1CA2F9F14(v170, v169, v168, v88, 0, 0, &v161 - v89, v91);
  *(v83 + 120) = v82;
  *(v83 + 128) = 0x7365707954;
  *(v83 + 168) = v175;
  *(v83 + 136) = 0xE500000000000000;
  *(v83 + 144) = &unk_1F4A02830;
  v93 = MEMORY[0x1E69E6158];
  v94 = sub_1CA94C1E8();
  v95 = v176;
  v176[45] = v94;
  v95[48] = v173;
  v95[49] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  *&v174 = swift_allocObject();
  *(v174 + 16) = xmmword_1CA981360;
  v173 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v96 = swift_allocObject();
  *(v96 + 16) = xmmword_1CA981380;
  *(v96 + 32) = @"AlwaysShowsButton";
  *(v96 + 40) = 1;
  v97 = MEMORY[0x1E69E6370];
  *(v96 + 64) = MEMORY[0x1E69E6370];
  *(v96 + 72) = @"Class";
  *(v96 + 104) = v93;
  *(v96 + 80) = 0xD00000000000001BLL;
  *(v96 + 88) = 0x80000001CA9C1C80;
  v169 = @"Class";
  v98 = @"Parameters";
  v99 = @"AlwaysShowsButton";
  *(v96 + 112) = sub_1CA94C368();
  *(v96 + 120) = 0;
  *(v96 + 144) = v97;
  *(v96 + 152) = @"Key";
  *(v96 + 160) = 0xD00000000000001ALL;
  *(v96 + 168) = 0x80000001CA9C6740;
  *(v96 + 184) = v93;
  *(v96 + 192) = @"Label";
  v100 = @"Key";
  v101 = @"Label";
  v168 = v100;
  v167 = v101;
  v102 = sub_1CA94C438();
  v164 = v103;
  v165 = v102;
  v104 = sub_1CA94C438();
  v163 = v105;
  v166 = &v161;
  MEMORY[0x1EEE9AC00](v104);
  v106 = &v161 - v89;
  sub_1CA948D98();
  v107 = v177;
  v108 = [v177 bundleURL];
  MEMORY[0x1EEE9AC00](v108);
  v109 = v180;
  sub_1CA948B68();

  v110 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v96 + 200) = sub_1CA2F9F14(v165, v164, v104, v163, 0, 0, v106, &v161 - v109);
  v111 = v178;
  *(v96 + 224) = v178;
  *(v96 + 232) = @"Placeholder";
  v166 = @"Placeholder";
  v112 = sub_1CA94C438();
  v163 = v113;
  v164 = v112;
  v114 = sub_1CA94C438();
  v162 = v115;
  v165 = &v161;
  MEMORY[0x1EEE9AC00](v114);
  v116 = &v161 - v181;
  sub_1CA948D98();
  v117 = [v107 bundleURL];
  MEMORY[0x1EEE9AC00](v117);
  sub_1CA948B68();

  v118 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v119 = sub_1CA2F9F14(v164, v163, v114, v162, 0, 0, v116, &v161 - v109);
  *(v96 + 264) = v111;
  *(v96 + 240) = v119;
  _s3__C3KeyVMa_0(0);
  v165 = v120;
  v164 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  *(v174 + 32) = sub_1CA2F864C();
  v121 = swift_allocObject();
  *(v121 + 16) = v171;
  *(v121 + 32) = v169;
  *(v121 + 40) = 0xD000000000000019;
  *(v121 + 48) = 0x80000001CA99B030;
  v122 = MEMORY[0x1E69E6158];
  v123 = v168;
  *(v121 + 64) = MEMORY[0x1E69E6158];
  *(v121 + 72) = v123;
  *(v121 + 80) = 0x7475706E494657;
  *(v121 + 88) = 0xE700000000000000;
  v124 = v167;
  *(v121 + 104) = v122;
  *(v121 + 112) = v124;
  v125 = sub_1CA94C438();
  v169 = v126;
  v170 = v125;
  v168 = sub_1CA94C438();
  v128 = v127;
  *&v171 = &v161;
  MEMORY[0x1EEE9AC00](v168);
  v129 = v181;
  sub_1CA948D98();
  v130 = [v107 bundleURL];
  v167 = &v161;
  MEMORY[0x1EEE9AC00](v130);
  v131 = v180;
  sub_1CA948B68();

  v132 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v121 + 120) = sub_1CA2F9F14(v170, v169, v168, v128, 0, 0, &v161 - v129, &v161 - v131);
  v133 = v166;
  *(v121 + 144) = v178;
  *(v121 + 152) = v133;
  v134 = sub_1CA94C438();
  v169 = v135;
  v170 = v134;
  v136 = sub_1CA94C438();
  v168 = v137;
  *&v171 = &v161;
  MEMORY[0x1EEE9AC00](v136);
  sub_1CA948D98();
  v138 = [v107 bundleURL];
  MEMORY[0x1EEE9AC00](v138);
  sub_1CA948B68();

  v139 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v140 = sub_1CA2F9F14(v170, v169, v136, v168, 0, 0, &v161 - v129, &v161 - v131);
  *(v121 + 184) = v178;
  *(v121 + 160) = v140;
  sub_1CA94C1E8();
  v141 = sub_1CA2F864C();
  v142 = v174;
  *(v174 + 40) = v141;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v144 = v176;
  v176[50] = v142;
  v144[53] = v143;
  v144[54] = @"ParameterSummary";
  v145 = @"ParameterSummary";
  v146 = sub_1CA94C438();
  v148 = v147;
  v149 = sub_1CA94C438();
  v151 = v150;
  v178 = &v161;
  MEMORY[0x1EEE9AC00](v149);
  v152 = &v161 - v181;
  sub_1CA948D98();
  v153 = [v177 bundleURL];
  MEMORY[0x1EEE9AC00](v153);
  v154 = &v161 - v180;
  sub_1CA948B68();

  v155 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v156 = sub_1CA2F9F14(v146, v148, v149, v151, 0, 0, v152, v154);
  v157 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v158 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v144[55] = v157;
  v144[58] = v158;
  v144[59] = @"RequiredResources";
  v144[63] = v175;
  v144[60] = &unk_1F4A02860;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v159 = @"RequiredResources";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA509718()
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
  *(inited + 120) = 0xD000000000000012;
  *(inited + 128) = 0x80000001CA9C6890;
  v6 = @"IconName";
  *(inited + 152) = sub_1CA94C368();
  *(inited + 160) = 0xD000000000000012;
  *(inited + 168) = 0x80000001CA9C68B0;
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

id sub_1CA50993C()
{
  v109 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000016;
  *(inited + 48) = 0x80000001CA9C68E0;
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
  v116 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v117 = v12;
  v13 = &v104 - v116;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v113 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v114 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v115 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v104 - v115;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v112 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Description";
  v111 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1CA981310;
  *(v24 + 32) = @"DescriptionSummary";
  v25 = @"Description";
  v26 = @"DescriptionSummary";
  v27 = sub_1CA94C438();
  v108 = v28;
  v29 = sub_1CA94C438();
  v31 = v30;
  *&v110 = &v104;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v104 - v116;
  sub_1CA948D98();
  v33 = [v113 bundleURL];
  MEMORY[0x1EEE9AC00](v33);
  v34 = &v104 - v115;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v36 = sub_1CA2F9F14(v27, v108, v29, v31, 0, 0, v32, v34);
  *(v24 + 64) = v112;
  *(v24 + 40) = v36;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v37 = v111;
  *(inited + 160) = sub_1CA6B3784();
  *(inited + 184) = v37;
  *(inited + 192) = @"IconName";
  strcpy((inited + 200), "TranslateIcon");
  *(inited + 214) = -4864;
  v38 = MEMORY[0x1E69E6158];
  *(inited + 224) = MEMORY[0x1E69E6158];
  *(inited + 232) = @"Input";
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v39 = swift_initStackObject();
  v110 = xmmword_1CA981350;
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
  *(v39 + 184) = 0xE500000000000000;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v39 + 216) = v111;
  *(v39 + 192) = &unk_1F4A02950;
  v41 = @"IconName";
  v42 = @"Input";
  v43 = sub_1CA94C1E8();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v108 = v44;
  *(inited + 240) = v43;
  *(inited + 264) = v44;
  *(inited + 272) = @"Name";
  v45 = @"Name";
  v46 = sub_1CA94C438();
  v105 = v47;
  v48 = sub_1CA94C438();
  v50 = v49;
  v106 = &v104;
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v104 - v116;
  sub_1CA948D98();
  v52 = v113;
  v53 = [v113 bundleURL];
  MEMORY[0x1EEE9AC00](v53);
  v54 = &v104 - v115;
  sub_1CA948B68();

  v55 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 280) = sub_1CA2F9F14(v46, v105, v48, v50, 0, 0, v51, v54);
  v56 = v112;
  *(inited + 304) = v112;
  *(inited + 312) = @"Output";
  v57 = swift_allocObject();
  *(v57 + 16) = v110;
  *(v57 + 32) = 0x75736F6C63736944;
  *(v57 + 40) = 0xEF6C6576654C6572;
  *(v57 + 48) = 0x63696C627550;
  *(v57 + 56) = 0xE600000000000000;
  *(v57 + 72) = MEMORY[0x1E69E6158];
  *(v57 + 80) = 0x656C7069746C754DLL;
  *(v57 + 88) = 0xE800000000000000;
  *(v57 + 96) = 1;
  *(v57 + 120) = MEMORY[0x1E69E6370];
  *(v57 + 128) = 0x614E74757074754FLL;
  *(v57 + 136) = 0xEA0000000000656DLL;
  v58 = @"Output";
  v59 = sub_1CA94C438();
  v105 = v60;
  v106 = v59;
  v61 = sub_1CA94C438();
  v63 = v62;
  v107 = &v104;
  MEMORY[0x1EEE9AC00](v61);
  v64 = &v104 - v116;
  sub_1CA948D98();
  v65 = [v52 bundleURL];
  MEMORY[0x1EEE9AC00](v65);
  v66 = &v104 - v115;
  sub_1CA948B68();

  v67 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v57 + 144) = sub_1CA2F9F14(v106, v105, v61, v63, 0, 0, v64, v66);
  *(v57 + 168) = v56;
  *(v57 + 176) = 0x7365707954;
  *(v57 + 216) = v111;
  *(v57 + 184) = 0xE500000000000000;
  *(v57 + 192) = &unk_1F4A02980;
  v68 = MEMORY[0x1E69E6158];
  *(inited + 320) = sub_1CA94C1E8();
  *(inited + 344) = v108;
  *(inited + 352) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v108 = swift_allocObject();
  *(v108 + 16) = xmmword_1CA9813B0;
  v107 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v69 = swift_initStackObject();
  *(v69 + 16) = v110;
  *(v69 + 32) = @"Class";
  *(v69 + 40) = 0xD000000000000014;
  *(v69 + 48) = 0x80000001CA99B500;
  *(v69 + 64) = v68;
  *(v69 + 72) = @"Key";
  *(v69 + 80) = 0x7475706E494657;
  *(v69 + 88) = 0xE700000000000000;
  *(v69 + 104) = v68;
  *(v69 + 112) = @"Label";
  v70 = @"Parameters";
  v71 = @"Class";
  v72 = @"Key";
  v73 = @"Label";
  v74 = sub_1CA94C438();
  v106 = v75;
  v76 = sub_1CA94C438();
  v78 = v77;
  *&v110 = &v104;
  MEMORY[0x1EEE9AC00](v76);
  v79 = &v104 - v116;
  sub_1CA948D98();
  v80 = [v113 bundleURL];
  MEMORY[0x1EEE9AC00](v80);
  v81 = &v104 - v115;
  sub_1CA948B68();

  v82 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v69 + 120) = sub_1CA2F9F14(v74, v106, v76, v78, 0, 0, v79, v81);
  *(v69 + 144) = v112;
  *(v69 + 152) = @"Multiline";
  *(v69 + 184) = MEMORY[0x1E69E6370];
  *(v69 + 160) = 1;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  v83 = @"Multiline";
  sub_1CA94C1E8();
  v84 = sub_1CA2F864C();
  v85 = v108;
  *(v108 + 32) = v84;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 360) = v85;
  *(inited + 384) = v86;
  *(inited + 392) = @"ParameterSummary";
  v87 = @"ParameterSummary";
  v88 = sub_1CA94C438();
  v90 = v89;
  v91 = sub_1CA94C438();
  v93 = v92;
  v112 = &v104;
  MEMORY[0x1EEE9AC00](v91);
  v94 = &v104 - v116;
  sub_1CA948D98();
  v95 = [v113 bundleURL];
  MEMORY[0x1EEE9AC00](v95);
  v96 = &v104 - v115;
  sub_1CA948B68();

  v97 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v98 = sub_1CA2F9F14(v88, v90, v91, v93, 0, 0, v94, v96);
  v99 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v100 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 400) = v99;
  *(inited + 424) = v100;
  *(inited + 432) = @"RequiredResources";
  *(inited + 440) = &unk_1F4A029B0;
  *(inited + 464) = v111;
  *(inited + 472) = @"ResidentCompatible";
  *(inited + 504) = MEMORY[0x1E69E6370];
  *(inited + 480) = 0;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v101 = @"RequiredResources";
  v102 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA50A7A8()
{
  v365 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  strcpy((inited + 40), "WFInputAction");
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
  v385 = v12;
  v387 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = &v355 - v387;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v383 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v386 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v384 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v355 - v384;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v382 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AdditionalParameterSummaries";
  v375 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v380 = swift_allocObject();
  *(v380 + 1) = xmmword_1CA9813B0;
  v381 = swift_allocObject();
  v369 = xmmword_1CA981570;
  *(v381 + 1) = xmmword_1CA981570;
  v379 = "is.workflow.actions.input";
  v21 = @"AdditionalParameterSummaries";
  v22 = sub_1CA94C438();
  v376 = v23;
  v24 = sub_1CA94C438();
  v26 = v25;
  v377 = &v355;
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v355 - v387;
  sub_1CA948D98();
  v28 = v383;
  v29 = [v383 bundleURL];
  MEMORY[0x1EEE9AC00](v29);
  v378 = inited;
  v30 = &v355 - v384;
  sub_1CA948B68();

  v31 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v32 = sub_1CA2F9F14(v22, v376, v24, v26, 0, 0, v27, v30);
  v33 = objc_allocWithZone(WFActionParameterSummaryValue);
  v34 = sub_1CA65DD78(0xD000000000000042, v379 | 0x8000000000000000, v32);
  v381[4] = v34;
  v379 = "ior} ${WFAskForType}";
  v376 = sub_1CA94C438();
  v374 = v35;
  v36 = sub_1CA94C438();
  v38 = v37;
  v377 = &v355;
  MEMORY[0x1EEE9AC00](v36);
  v39 = v387;
  sub_1CA948D98();
  v40 = [v28 bundleURL];
  MEMORY[0x1EEE9AC00](v40);
  v41 = v384;
  sub_1CA948B68();

  v42 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v43 = sub_1CA2F9F14(v376, v374, v36, v38, 0, 0, &v355 - v39, &v355 - v41);
  v44 = objc_allocWithZone(WFActionParameterSummaryValue);
  v45 = sub_1CA65DD78(0xD000000000000036, v379 | 0x8000000000000000, v43);
  v46 = v381;
  v381[5] = v45;
  v379 = "${WFNoInputBehavior}";
  v376 = sub_1CA94C438();
  v374 = v47;
  v48 = sub_1CA94C438();
  v50 = v49;
  v377 = &v355;
  MEMORY[0x1EEE9AC00](v48);
  sub_1CA948D98();
  v51 = v383;
  v52 = [v383 bundleURL];
  MEMORY[0x1EEE9AC00](v52);
  sub_1CA948B68();

  v53 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v54 = sub_1CA2F9F14(v376, v374, v48, v50, 0, 0, &v355 - v39, &v355 - v41);
  v55 = objc_allocWithZone(WFActionParameterSummaryValue);
  v46[6] = sub_1CA65DD78(0xD00000000000003BLL, v379 | 0x8000000000000000, v54);
  v379 = "nputBehavior(Get Clipboard)";
  v376 = sub_1CA94C438();
  v374 = v56;
  v57 = sub_1CA94C438();
  v59 = v58;
  v377 = &v355;
  MEMORY[0x1EEE9AC00](v57);
  v60 = &v355 - v387;
  sub_1CA948D98();
  v61 = [v51 bundleURL];
  MEMORY[0x1EEE9AC00](v61);
  v62 = v384;
  sub_1CA948B68();

  v63 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v64 = sub_1CA2F9F14(v376, v374, v57, v59, 0, 0, v60, &v355 - v62);
  v65 = objc_allocWithZone(WFActionParameterSummaryValue);
  v66 = sub_1CA65DD78(0xD000000000000057, v379 | 0x8000000000000000, v64);
  v67 = v381;
  v381[7] = v66;
  v68 = sub_1CA94C438();
  v376 = v69;
  v377 = v68;
  v70 = sub_1CA94C438();
  v72 = v71;
  v379 = &v355;
  MEMORY[0x1EEE9AC00](v70);
  v73 = &v355 - v387;
  sub_1CA948D98();
  v74 = [v383 bundleURL];
  MEMORY[0x1EEE9AC00](v74);
  sub_1CA948B68();

  v75 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v76 = sub_1CA2F9F14(v377, v376, v70, v72, 0, 0, v73, &v355 - v62);
  v77 = objc_allocWithZone(WFActionParameterSummary);
  v78 = sub_1CA50D4C4(v67, v76);
  v79 = v380;
  v380[4] = v78;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445888, &unk_1CA988350);
  v81 = v378;
  v378[15] = v79;
  v81[18] = v80;
  v81[19] = @"Appearance";
  v81[20] = 0x7475706E49;
  v81[21] = 0xE500000000000000;
  v81[23] = MEMORY[0x1E69E6158];
  v81[24] = @"Description";
  v381 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v82 = swift_initStackObject();
  v372 = xmmword_1CA981310;
  *(v82 + 16) = xmmword_1CA981310;
  *(v82 + 32) = @"DescriptionSummary";
  v83 = @"Appearance";
  v84 = @"Description";
  v85 = @"DescriptionSummary";
  v86 = sub_1CA94C438();
  v88 = v87;
  v89 = sub_1CA94C438();
  v91 = v90;
  v380 = &v355;
  MEMORY[0x1EEE9AC00](v89);
  v92 = &v355 - v387;
  sub_1CA948D98();
  v93 = [v383 bundleURL];
  MEMORY[0x1EEE9AC00](v93);
  v94 = &v355 - v384;
  sub_1CA948B68();

  v95 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v96 = sub_1CA2F9F14(v86, v88, v89, v91, 0, 0, v92, v94);
  *(v82 + 64) = v382;
  *(v82 + 40) = v96;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v97 = v381;
  v98 = sub_1CA6B3784();
  v99 = v378;
  v378[25] = v98;
  v99[28] = v97;
  v99[29] = @"Discoverable";
  v100 = MEMORY[0x1E69E6370];
  *(v99 + 240) = 0;
  v99[33] = v100;
  v99[34] = @"IconName";
  v99[35] = 0x6E69747069726353;
  v99[36] = 0xE900000000000067;
  v101 = MEMORY[0x1E69E6158];
  v99[38] = MEMORY[0x1E69E6158];
  v99[39] = @"Input";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v102 = swift_initStackObject();
  *(v102 + 16) = xmmword_1CA981350;
  *(v102 + 32) = 0x656C7069746C754DLL;
  *(v102 + 40) = 0xE800000000000000;
  *(v102 + 48) = 1;
  *(v102 + 72) = v100;
  strcpy((v102 + 80), "ParameterKey");
  *(v102 + 93) = 0;
  *(v102 + 94) = -5120;
  *(v102 + 96) = 0x74757074754F4657;
  *(v102 + 104) = 0xE800000000000000;
  *(v102 + 120) = v101;
  *(v102 + 128) = 0x6465726975716552;
  *(v102 + 136) = 0xE800000000000000;
  *(v102 + 144) = 0;
  *(v102 + 168) = v100;
  *(v102 + 176) = 0x7365707954;
  *(v102 + 184) = 0xE500000000000000;
  v374 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v102 + 216) = v374;
  *(v102 + 192) = &unk_1F4A029E0;
  v103 = @"Discoverable";
  v104 = @"IconName";
  v105 = @"Input";
  v106 = sub_1CA94C1E8();
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v99[40] = v106;
  v99[43] = v107;
  v99[44] = @"Name";
  v108 = @"Name";
  v109 = sub_1CA94C438();
  v111 = v110;
  v112 = sub_1CA94C438();
  v114 = v113;
  v381 = &v355;
  MEMORY[0x1EEE9AC00](v112);
  v115 = &v355 - v387;
  sub_1CA948D98();
  v116 = [v383 bundleURL];
  MEMORY[0x1EEE9AC00](v116);
  v117 = &v355 - v384;
  sub_1CA948B68();

  v118 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v99[45] = sub_1CA2F9F14(v109, v111, v112, v114, 0, 0, v115, v117);
  v99[48] = v382;
  v99[49] = @"Parameters";
  v380 = swift_allocObject();
  *(v380 + 1) = xmmword_1CA981560;
  v379 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v381 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v119 = swift_allocObject();
  v371 = xmmword_1CA981400;
  *(v119 + 16) = xmmword_1CA981400;
  *(v119 + 32) = @"Class";
  *(v119 + 40) = 0xD000000000000014;
  *(v119 + 48) = 0x80000001CA9C6C40;
  v120 = MEMORY[0x1E69E6158];
  *(v119 + 64) = MEMORY[0x1E69E6158];
  *(v119 + 72) = @"Key";
  *(v119 + 80) = 0x547475706E494657;
  *(v119 + 88) = 0xEB00000000657079;
  *(v119 + 104) = v120;
  *(v119 + 112) = @"Label";
  v121 = @"Class";
  v122 = @"Key";
  v123 = @"Label";
  v124 = v121;
  v125 = v122;
  v126 = v123;
  v367 = v124;
  v368 = v125;
  v373 = v126;
  v127 = @"Parameters";
  v376 = sub_1CA94C438();
  v370 = v128;
  v129 = sub_1CA94C438();
  v131 = v130;
  v377 = &v355;
  MEMORY[0x1EEE9AC00](v129);
  v132 = &v355 - v387;
  sub_1CA948D98();
  v133 = [v383 bundleURL];
  MEMORY[0x1EEE9AC00](v133);
  v134 = &v355 - v384;
  sub_1CA948B68();

  v135 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v119 + 120) = sub_1CA2F9F14(v376, v370, v129, v131, 0, 0, v132, v134);
  *(v119 + 144) = v382;
  *(v119 + 152) = @"Placeholder";
  v370 = @"Placeholder";
  v376 = sub_1CA94C438();
  v366 = v136;
  v364 = sub_1CA94C438();
  v138 = v137;
  v377 = &v355;
  MEMORY[0x1EEE9AC00](v364);
  v139 = v387;
  sub_1CA948D98();
  v140 = v383;
  v141 = [v383 bundleURL];
  MEMORY[0x1EEE9AC00](v141);
  v142 = &v355 - v384;
  sub_1CA948B68();

  v143 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v119 + 160) = sub_1CA2F9F14(v376, v366, v364, v138, 0, 0, &v355 - v139, v142);
  v144 = v382;
  *(v119 + 184) = v382;
  *(v119 + 192) = @"Prompt";
  v145 = @"Prompt";
  v376 = sub_1CA94C438();
  v366 = v146;
  v147 = sub_1CA94C438();
  v364 = v148;
  v377 = &v355;
  MEMORY[0x1EEE9AC00](v147);
  sub_1CA948D98();
  v149 = [v140 bundleURL];
  MEMORY[0x1EEE9AC00](v149);
  v150 = &v355 - v384;
  sub_1CA948B68();

  v151 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v119 + 200) = sub_1CA2F9F14(v376, v366, v147, v364, 0, 0, &v355 - v139, v150);
  *(v119 + 224) = v144;
  *(v119 + 232) = @"SelectionType";
  *(v119 + 240) = 0x656C67676F54;
  *(v119 + 248) = 0xE600000000000000;
  v152 = MEMORY[0x1E69E6158];
  *(v119 + 264) = MEMORY[0x1E69E6158];
  *(v119 + 272) = @"TableViewStyle";
  *(v119 + 304) = v152;
  v153 = v152;
  strcpy((v119 + 280), "InsetGrouped");
  *(v119 + 293) = 0;
  *(v119 + 294) = -5120;
  _s3__C3KeyVMa_0(0);
  v377 = v154;
  v376 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  v155 = @"SelectionType";
  v156 = @"TableViewStyle";
  sub_1CA94C1E8();
  v380[4] = sub_1CA2F864C();
  v157 = swift_allocObject();
  *(v157 + 16) = xmmword_1CA981370;
  v158 = v367;
  v159 = v368;
  *(v157 + 32) = v367;
  *(v157 + 40) = 0xD000000000000017;
  *(v157 + 48) = 0x80000001CA9C6CD0;
  *(v157 + 64) = v153;
  *(v157 + 72) = @"DefaultValue";
  *(v157 + 80) = 0;
  *(v157 + 88) = 0xE000000000000000;
  *(v157 + 104) = v153;
  *(v157 + 112) = v159;
  strcpy((v157 + 120), "WFInputSurface");
  *(v157 + 135) = -18;
  v160 = v373;
  *(v157 + 144) = v153;
  *(v157 + 152) = v160;
  v161 = @"DefaultValue";
  v367 = v158;
  v362 = v159;
  v363 = v160;
  v368 = v161;
  v366 = sub_1CA94C438();
  v364 = v162;
  v163 = sub_1CA94C438();
  v361 = v164;
  v373 = &v355;
  MEMORY[0x1EEE9AC00](v163);
  v165 = &v355 - v387;
  sub_1CA948D98();
  v166 = [v383 bundleURL];
  MEMORY[0x1EEE9AC00](v166);
  v167 = v384;
  sub_1CA948B68();

  v168 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v157 + 160) = sub_1CA2F9F14(v366, v364, v163, v361, 0, 0, v165, &v355 - v167);
  v169 = v382;
  v170 = v370;
  *(v157 + 184) = v382;
  *(v157 + 192) = v170;
  v366 = sub_1CA94C438();
  v364 = v171;
  v172 = sub_1CA94C438();
  v361 = v173;
  v373 = &v355;
  MEMORY[0x1EEE9AC00](v172);
  v174 = &v355 - v387;
  sub_1CA948D98();
  v175 = [v383 bundleURL];
  MEMORY[0x1EEE9AC00](v175);
  sub_1CA948B68();

  v176 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v177 = sub_1CA2F9F14(v366, v364, v172, v361, 0, 0, v174, &v355 - v167);
  *(v157 + 224) = v169;
  *(v157 + 200) = v177;
  sub_1CA94C1E8();
  v380[5] = sub_1CA2F864C();
  v178 = swift_allocObject();
  *(v178 + 16) = xmmword_1CA981380;
  v360 = 0xD000000000000016;
  v361 = 0x80000001CA99C4A0;
  v179 = v367;
  *(v178 + 32) = v367;
  *(v178 + 40) = 0xD000000000000016;
  *(v178 + 48) = 0x80000001CA99C4A0;
  v180 = MEMORY[0x1E69E6158];
  v181 = v368;
  *(v178 + 64) = MEMORY[0x1E69E6158];
  *(v178 + 72) = v181;
  *(v178 + 80) = 0xD000000000000010;
  *(v178 + 88) = 0x80000001CA997F80;
  *(v178 + 104) = v180;
  *(v178 + 112) = @"DisallowedVariableTypes";
  *(v178 + 120) = &unk_1F4A02A10;
  *(v178 + 144) = v374;
  *(v178 + 152) = @"Items";
  v373 = swift_allocObject();
  *&v373->data = v369;
  v182 = @"DisallowedVariableTypes";
  v183 = @"Items";
  v366 = v179;
  v367 = v182;
  v359 = v183;
  v364 = sub_1CA94C438();
  v358 = v184;
  v185 = sub_1CA94C438();
  v357 = v186;
  *&v369 = &v355;
  MEMORY[0x1EEE9AC00](v185);
  v187 = v387;
  sub_1CA948D98();
  v188 = v383;
  v189 = [v383 bundleURL];
  v356 = &v355;
  MEMORY[0x1EEE9AC00](v189);
  v190 = v384;
  sub_1CA948B68();

  v191 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v192 = sub_1CA2F9F14(v364, v358, v185, v357, 0, 0, &v355 - v187, &v355 - v190);
  v193 = v373;
  v373[1].isa = v192;
  v364 = sub_1CA94C438();
  v358 = v194;
  v195 = sub_1CA94C438();
  v357 = v196;
  *&v369 = &v355;
  MEMORY[0x1EEE9AC00](v195);
  sub_1CA948D98();
  v197 = [v188 bundleURL];
  MEMORY[0x1EEE9AC00](v197);
  sub_1CA948B68();

  v198 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v193[1].info = sub_1CA2F9F14(v364, v358, v195, v357, 0, 0, &v355 - v187, &v355 - v190);
  v364 = sub_1CA94C438();
  v358 = v199;
  v200 = sub_1CA94C438();
  v357 = v201;
  *&v369 = &v355;
  MEMORY[0x1EEE9AC00](v200);
  v202 = v387;
  sub_1CA948D98();
  v203 = v383;
  v204 = [v383 bundleURL];
  v356 = &v355;
  MEMORY[0x1EEE9AC00](v204);
  v205 = v384;
  sub_1CA948B68();

  v206 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v207 = sub_1CA2F9F14(v364, v358, v200, v357, 0, 0, &v355 - v202, &v355 - v205);
  v373[1].data = v207;
  v364 = sub_1CA94C438();
  v358 = v208;
  v209 = sub_1CA94C438();
  v357 = v210;
  *&v369 = &v355;
  MEMORY[0x1EEE9AC00](v209);
  sub_1CA948D98();
  v211 = [v203 bundleURL];
  MEMORY[0x1EEE9AC00](v211);
  sub_1CA948B68();

  v212 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v213 = sub_1CA2F9F14(v364, v358, v209, v357, 0, 0, &v355 - v202, &v355 - v205);
  v214 = v373;
  v373[1].length = v213;
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  v364 = v215;
  *(v178 + 160) = v214;
  v216 = v362;
  v217 = v363;
  *(v178 + 184) = v215;
  *(v178 + 192) = v216;
  *(v178 + 200) = 0xD000000000000011;
  *(v178 + 208) = 0x80000001CA997F60;
  *(v178 + 224) = MEMORY[0x1E69E6158];
  *(v178 + 232) = v217;
  *&v369 = v216;
  v373 = v217;
  v218 = sub_1CA94C438();
  v362 = v219;
  v220 = sub_1CA94C438();
  v222 = v221;
  v363 = &v355;
  MEMORY[0x1EEE9AC00](v220);
  v223 = &v355 - v387;
  sub_1CA948D98();
  v224 = [v383 bundleURL];
  MEMORY[0x1EEE9AC00](v224);
  v225 = &v355 - v384;
  sub_1CA948B68();

  v226 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v227 = sub_1CA2F9F14(v218, v362, v220, v222, 0, 0, v223, v225);
  *(v178 + 264) = v382;
  *(v178 + 240) = v227;
  sub_1CA94C1E8();
  v380[6] = sub_1CA2F864C();
  v228 = swift_allocObject();
  *(v228 + 16) = v371;
  *(v228 + 32) = v366;
  *(v228 + 40) = 0xD000000000000014;
  *(v228 + 48) = 0x80000001CA99B500;
  v229 = MEMORY[0x1E69E6158];
  v230 = v367;
  *(v228 + 64) = MEMORY[0x1E69E6158];
  *(v228 + 72) = v230;
  *(v228 + 80) = &unk_1F4A02A50;
  v231 = v369;
  *(v228 + 104) = v374;
  *(v228 + 112) = v231;
  *(v228 + 120) = 0xD000000000000018;
  *(v228 + 128) = 0x80000001CA9C6E60;
  v232 = v373;
  *(v228 + 144) = v229;
  *(v228 + 152) = v232;
  v362 = sub_1CA94C438();
  v358 = v233;
  v234 = sub_1CA94C438();
  v357 = v235;
  v363 = &v355;
  MEMORY[0x1EEE9AC00](v234);
  v236 = v387;
  sub_1CA948D98();
  v237 = v383;
  v238 = [v383 bundleURL];
  v356 = &v355;
  MEMORY[0x1EEE9AC00](v238);
  v239 = v384;
  sub_1CA948B68();

  v240 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v228 + 160) = sub_1CA2F9F14(v362, v358, v234, v357, 0, 0, &v355 - v236, &v355 - v239);
  v241 = v382;
  *(v228 + 184) = v382;
  *(v228 + 192) = @"Multiline";
  *(v228 + 200) = 1;
  v242 = v370;
  *(v228 + 224) = MEMORY[0x1E69E6370];
  *(v228 + 232) = v242;
  v243 = @"Multiline";
  v244 = sub_1CA94C438();
  v362 = v245;
  v363 = v244;
  v246 = sub_1CA94C438();
  v358 = v247;
  v370 = &v355;
  MEMORY[0x1EEE9AC00](v246);
  sub_1CA948D98();
  v248 = [v237 bundleURL];
  MEMORY[0x1EEE9AC00](v248);
  sub_1CA948B68();

  v249 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v228 + 240) = sub_1CA2F9F14(v363, v362, v246, v358, 0, 0, &v355 - v236, &v355 - v239);
  *(v228 + 264) = v241;
  *(v228 + 272) = @"RequiredResources";
  v370 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F0, &qword_1CA981430);
  v250 = swift_allocObject();
  *(v250 + 16) = v372;
  v363 = @"RequiredResources";
  v251 = MEMORY[0x1E69E6158];
  *(v250 + 32) = sub_1CA94C1E8();
  v362 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F8, &qword_1CA981438);
  *(v228 + 304) = v362;
  *(v228 + 280) = v250;
  sub_1CA94C1E8();
  v380[7] = sub_1CA2F864C();
  v252 = swift_allocObject();
  *(v252 + 16) = v371;
  v254 = v360;
  v253 = v361;
  *(v252 + 32) = v366;
  *(v252 + 40) = v254;
  *(v252 + 48) = v253;
  v255 = v368;
  *(v252 + 64) = v251;
  *(v252 + 72) = v255;
  *(v252 + 80) = 0x736F746F6850;
  *(v252 + 88) = 0xE600000000000000;
  v256 = v367;
  *(v252 + 104) = v251;
  *(v252 + 112) = v256;
  *(v252 + 120) = &unk_1F4A02B10;
  v257 = v359;
  *(v252 + 144) = v374;
  *(v252 + 152) = v257;
  v381 = swift_allocObject();
  *(v381 + 1) = xmmword_1CA985370;
  v374 = sub_1CA94C438();
  *&v371 = v258;
  v259 = sub_1CA94C438();
  v368 = v260;
  v375 = &v355;
  MEMORY[0x1EEE9AC00](v259);
  v261 = v387;
  sub_1CA948D98();
  v262 = v383;
  v263 = [v383 bundleURL];
  MEMORY[0x1EEE9AC00](v263);
  v264 = &v355 - v384;
  sub_1CA948B68();

  v265 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v266 = sub_1CA2F9F14(v374, v371, v259, v368, 0, 0, &v355 - v261, v264);
  v381[4] = v266;
  v374 = sub_1CA94C438();
  *&v371 = v267;
  v268 = sub_1CA94C438();
  v368 = v269;
  v375 = &v355;
  MEMORY[0x1EEE9AC00](v268);
  sub_1CA948D98();
  v270 = [v262 bundleURL];
  MEMORY[0x1EEE9AC00](v270);
  v271 = v384;
  sub_1CA948B68();

  v272 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v273 = sub_1CA2F9F14(v374, v371, v268, v368, 0, 0, &v355 - v261, &v355 - v271);
  v274 = v381;
  v381[5] = v273;
  v374 = sub_1CA94C438();
  *&v371 = v275;
  v276 = sub_1CA94C438();
  v278 = v277;
  v375 = &v355;
  MEMORY[0x1EEE9AC00](v276);
  v279 = &v355 - v387;
  sub_1CA948D98();
  v280 = [v383 bundleURL];
  MEMORY[0x1EEE9AC00](v280);
  sub_1CA948B68();

  v281 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v274[6] = sub_1CA2F9F14(v374, v371, v276, v278, 0, 0, v279, &v355 - v271);
  v374 = sub_1CA94C438();
  *&v371 = v282;
  v283 = sub_1CA94C438();
  v368 = v284;
  v375 = &v355;
  MEMORY[0x1EEE9AC00](v283);
  v285 = v387;
  sub_1CA948D98();
  v286 = v383;
  v287 = [v383 bundleURL];
  v367 = &v355;
  MEMORY[0x1EEE9AC00](v287);
  v288 = &v355 - v384;
  sub_1CA948B68();

  v289 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v290 = sub_1CA2F9F14(v374, v371, v283, v368, 0, 0, &v355 - v285, v288);
  v381[7] = v290;
  v374 = sub_1CA94C438();
  *&v371 = v291;
  v292 = sub_1CA94C438();
  v368 = v293;
  v375 = &v355;
  MEMORY[0x1EEE9AC00](v292);
  sub_1CA948D98();
  v294 = [v286 bundleURL];
  MEMORY[0x1EEE9AC00](v294);
  v295 = v384;
  sub_1CA948B68();

  v296 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v297 = sub_1CA2F9F14(v374, v371, v292, v368, 0, 0, &v355 - v285, &v355 - v295);
  v298 = v381;
  v381[8] = v297;
  v374 = sub_1CA94C438();
  *&v371 = v299;
  v300 = sub_1CA94C438();
  v368 = v301;
  v375 = &v355;
  MEMORY[0x1EEE9AC00](v300);
  v302 = &v355 - v387;
  sub_1CA948D98();
  v303 = v383;
  v304 = [v383 bundleURL];
  v367 = &v355;
  MEMORY[0x1EEE9AC00](v304);
  sub_1CA948B68();

  v305 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v298[9] = sub_1CA2F9F14(v374, v371, v300, v368, 0, 0, v302, &v355 - v295);
  v374 = sub_1CA94C438();
  *&v371 = v306;
  v307 = sub_1CA94C438();
  v368 = v308;
  v375 = &v355;
  MEMORY[0x1EEE9AC00](v307);
  v309 = v387;
  sub_1CA948D98();
  v310 = [v303 bundleURL];
  MEMORY[0x1EEE9AC00](v310);
  sub_1CA948B68();

  v311 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v312 = sub_1CA2F9F14(v374, v371, v307, v368, 0, 0, &v355 - v309, &v355 - v295);
  v381[10] = v312;
  v374 = sub_1CA94C438();
  *&v371 = v313;
  v314 = sub_1CA94C438();
  v368 = v315;
  v375 = &v355;
  MEMORY[0x1EEE9AC00](v314);
  v316 = &v355 - v309;
  sub_1CA948D98();
  v317 = v383;
  v318 = [v383 bundleURL];
  v367 = &v355;
  MEMORY[0x1EEE9AC00](v318);
  sub_1CA948B68();

  v319 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v320 = sub_1CA2F9F14(v374, v371, v314, v368, 0, 0, v316, &v355 - v295);
  v321 = v381;
  v381[11] = v320;
  *(v252 + 160) = v321;
  v322 = v369;
  *(v252 + 184) = v364;
  *(v252 + 192) = v322;
  strcpy((v252 + 200), "WFAskForType");
  *(v252 + 213) = 0;
  *(v252 + 214) = -5120;
  v323 = v373;
  *(v252 + 224) = MEMORY[0x1E69E6158];
  *(v252 + 232) = v323;
  v324 = sub_1CA94C438();
  v375 = v325;
  v326 = sub_1CA94C438();
  v328 = v327;
  v381 = &v355;
  MEMORY[0x1EEE9AC00](v326);
  v329 = v387;
  sub_1CA948D98();
  v330 = [v317 bundleURL];
  MEMORY[0x1EEE9AC00](v330);
  v331 = &v355 - v384;
  sub_1CA948B68();

  v332 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v252 + 240) = sub_1CA2F9F14(v324, v375, v326, v328, 0, 0, &v355 - v329, v331);
  v333 = v363;
  *(v252 + 264) = v382;
  *(v252 + 272) = v333;
  v334 = swift_allocObject();
  *(v334 + 16) = v372;
  *(v334 + 32) = sub_1CA94C1E8();
  *(v252 + 304) = v362;
  *(v252 + 280) = v334;
  sub_1CA94C1E8();
  v335 = sub_1CA2F864C();
  v336 = v380;
  v380[8] = v335;
  v337 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v338 = v378;
  v378[50] = v336;
  v338[53] = v337;
  v338[54] = @"ParameterSummary";
  v339 = @"ParameterSummary";
  v340 = sub_1CA94C438();
  v342 = v341;
  v343 = sub_1CA94C438();
  v345 = v344;
  MEMORY[0x1EEE9AC00](v343);
  sub_1CA948D98();
  v346 = [v383 bundleURL];
  MEMORY[0x1EEE9AC00](v346);
  v347 = &v355 - v384;
  sub_1CA948B68();

  v348 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v349 = sub_1CA2F9F14(v340, v342, v343, v345, 0, 0, &v355 - v329, v347);
  v350 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v351 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v352 = v378;
  v378[55] = v350;
  v352[58] = v351;
  v352[59] = @"ResidentCompatible";
  v352[63] = MEMORY[0x1E69E6370];
  *(v352 + 480) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v353 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA50D4C4(uint64_t a1, void *a2)
{
  sub_1CA25B3D0(0, &qword_1EC445FF0, off_1E836DD68);
  v4 = sub_1CA94C648();

  v5 = [v2 initWithValues:v4 title:a2];

  return v5;
}

void sub_1CA50D548(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC446000, &qword_1CA989F00);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v9 - v5;
  if (*(*v1 + 16))
  {
    sub_1CA43FC6C(&v9 - v5);
    v7 = _s10ScopeStackV5EntryOMa(0);
    if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
    {
      sub_1CA27080C(v6, &unk_1EC446000, &qword_1CA989F00);
      v8 = *(*v1 + 16) - 1;
      sub_1CA6A6C38();
    }

    else
    {
      sub_1CA288180(v6, a1, _s10ScopeStackV5EntryOMa);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1CA50D648(uint64_t a1)
{
  v3 = _s10ScopeStackV5EntryOMa(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA50DCDC(a1, v7, _s10ScopeStackV23PendingControlFlowGroupVMa);
  swift_storeEnumTagMultiPayload();
  sub_1CA69AE40();
  v8 = *(*v1 + 16);
  sub_1CA69B054(v8);
  v9 = *v1;
  *(v9 + 16) = v8 + 1;
  result = sub_1CA288180(v7, v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v8, _s10ScopeStackV5EntryOMa);
  *v1 = v9;
  return result;
}

uint64_t sub_1CA50D794(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1CA949F78();
  v40 = *(v4 - 8);
  v41 = v4;
  v5 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s10ScopeStackV23PendingControlFlowGroupVMa(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _s10ScopeStackV5EntryOMa(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = (&v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v39 - v18;
  sub_1CA50D548(&v39 - v18);
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    sub_1CA288180(v19, v11, _s10ScopeStackV23PendingControlFlowGroupVMa);
    v21 = &v11[*(v8 + 28)];
    if (v21[8])
    {
      v22 = *MEMORY[0x1E69E10A0];
      sub_1CA949C58();
      v23 = sub_1CA949F68();
      v24 = sub_1CA94CC38();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_1CA256000, v23, v24, "Skipping adding group because the branch is locked", v25, 2u);
        MEMORY[0x1CCAA4BF0](v25, -1, -1);
      }

      (*(v40 + 8))(v7, v41);
LABEL_16:
      sub_1CA50D648(v11);
      return sub_1CA50DC84(v11, _s10ScopeStackV23PendingControlFlowGroupVMa);
    }

    result = _s17ControlFlowBranchVMa(0);
    v33 = *(result + 28);
    v34 = *&v21[v33];
    v35 = *(v34 + 16);
    v36 = *(a1 + 16);
    if (!__OFADD__(v35, v36))
    {
      sub_1CA94C218();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v21[v33] = v34;
      if (!isUniquelyReferenced_nonNull_native || v35 + v36 > *(v34 + 24) >> 1)
      {
        sub_1CA2E6A4C();
        v34 = v38;
        *&v21[v33] = v38;
      }

      sub_1CA6B0018();
      *&v21[v33] = v34;
      goto LABEL_16;
    }

LABEL_19:
    __break(1u);
    return result;
  }

  v26 = *v19;
  v27 = *(*v19 + 16);
  v28 = *(a1 + 16);
  if (__OFADD__(v27, v28))
  {
    __break(1u);
    goto LABEL_19;
  }

  sub_1CA94C218();
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v42 = v26;
  if (!v29 || v27 + v28 > *(v26 + 24) >> 1)
  {
    sub_1CA2E6A4C();
    v26 = v30;
    v42 = v30;
  }

  sub_1CA6B0018();
  *v17 = v26;
  swift_storeEnumTagMultiPayload();
  sub_1CA69AE40();
  v31 = *(*v1 + 16);
  sub_1CA69B054(v31);
  v32 = *v1;
  *(v32 + 16) = v31 + 1;
  result = sub_1CA288180(v17, v32 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v31, _s10ScopeStackV5EntryOMa);
  *v2 = v32;
  return result;
}

uint64_t sub_1CA50DBB0(void *a1)
{
  v2 = [a1 groupingIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1CA94C3A8();

  return v3;
}

void sub_1CA50DC20(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1CA94C368();

  [a3 setGroupingIdentifier_];
}

uint64_t sub_1CA50DC84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_52(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1CA50DCDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_52(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

id sub_1CA50DDA8()
{
  v34 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981380;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001DLL;
  *(inited + 48) = 0x80000001CA9A1270;
  *(inited + 64) = v1;
  *(inited + 72) = @"AppDefinition";
  v2 = @"ActionClass";
  v3 = @"AppDefinition";
  v4 = sub_1CA94C1E8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 80) = v4;
  v33 = v5;
  *(inited + 104) = v5;
  *(inited + 112) = @"LocallyProcessesData";
  v6 = MEMORY[0x1E69E6370];
  *(inited + 120) = 1;
  *(inited + 144) = v6;
  *(inited + 152) = @"Name";
  v7 = @"LocallyProcessesData";
  v8 = @"Name";
  v9 = sub_1CA94C438();
  v11 = v10;
  v12 = sub_1CA94C438();
  v14 = v13;
  v15 = sub_1CA948E58();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v19 = [qword_1EDB9F690 bundleURL];
  v20 = sub_1CA948BA8();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v24 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v25 = sub_1CA2F9F14(v9, v11, v12, v14, 0, 0, v18, v23);
  v26 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 160) = v25;
  *(inited + 184) = v26;
  *(inited + 192) = @"Output";
  v27 = @"Output";
  v28 = MEMORY[0x1E69E6158];
  v29 = sub_1CA94C1E8();
  *(inited + 224) = v33;
  *(inited + 200) = v29;
  v30 = sub_1CA94C368();
  *(inited + 264) = v28;
  *(inited + 232) = v30;
  *(inited + 240) = 0xD000000000000018;
  *(inited + 248) = 0x80000001CA993BA0;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id WFTableTemplateParameter.__allocating_init(definition:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithDefinition_];

  return v3;
}

unint64_t sub_1CA50E1E0()
{
  result = qword_1EC441A60;
  if (!qword_1EC441A60)
  {
    type metadata accessor for WFVariableType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441A60);
  }

  return result;
}

uint64_t sub_1CA50E27C()
{
  v1 = OUTLINED_FUNCTION_5_30();
  sub_1CA438380(v1, v2);
  OUTLINED_FUNCTION_14_2();
  return v0;
}

uint64_t sub_1CA50E2D8@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446010, &unk_1CA987B90);
  v3 = sub_1CA94C1E8();
  v4 = sub_1CA948D28();
  v5 = OUTLINED_FUNCTION_1_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_37();
  v10 = sub_1CA948CC8();
  v12 = v11;
  result = (*(v7 + 8))(v1, v4);
  *a1 = 4;
  a1[1] = v3;
  a1[2] = 0;
  a1[3] = v10;
  a1[4] = v12;
  a1[5] = 0;
  return result;
}

id WFTableTemplateParameter.init(definition:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for WFTableTemplateParameter();
  v3 = objc_msgSendSuper2(&v5, sel_initWithDefinition_, a1);

  return v3;
}

uint64_t sub_1CA50E54C()
{
  v1 = OBJC_IVAR___WFTableTemplateContentItemFilterParameter_linkValueTypes;
  swift_beginAccess();
  v2 = *(v0 + v1);
  return sub_1CA94C218();
}

uint64_t sub_1CA50E624(uint64_t a1)
{
  v3 = OBJC_IVAR___WFTableTemplateContentItemFilterParameter_linkValueTypes;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1CA50E67C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_1CA94C218();
  return sub_1CA50E624(v4);
}

uint64_t WFTableTemplateContentItemFilterParameter.init(definition:)(void *a1)
{
  v3 = OBJC_IVAR___WFTableTemplateContentItemFilterParameter_linkValueTypes;
  sub_1CA25B3D0(0, &unk_1EC441AB0, 0x1E69ACAA0);
  *&v1[v3] = sub_1CA94C1E8();
  if ([a1 objectForKey_])
  {
    sub_1CA94D258();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v20[0] = v18;
  v20[1] = v19;
  if (*(&v19 + 1))
  {
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_21;
    }

    v4 = sub_1CA94C368();

    v5 = NSClassFromString(v4);

    if (!v5)
    {
      goto LABEL_21;
    }

    swift_getObjCClassMetadata();
    sub_1CA25B3D0(0, &qword_1EDB9F790, 0x1E6996D58);
    v6 = swift_dynamicCastMetatype();
    if (!v6)
    {
      goto LABEL_21;
    }

    *&v1[OBJC_IVAR___WFTableTemplateContentItemFilterParameter_contentItemClass] = v6;
    v7 = [swift_getObjCClassFromMetadata() allProperties];
    sub_1CA25B3D0(0, &unk_1EC4419D0, 0x1E6996D88);
    v8 = sub_1CA94C658();

    v9 = sub_1CA25B410();
    v10 = 0;
    while (1)
    {
      v11 = v10;
      if (v9 == v10)
      {
LABEL_17:

        v1[OBJC_IVAR___WFTableTemplateContentItemFilterParameter_isFilterable] = v9 != v11;
        v17.receiver = v1;
        v17.super_class = type metadata accessor for WFTableTemplateContentItemFilterParameter();
        v15 = objc_msgSendSuper2(&v17, sel_initWithDefinition_, a1);

        return v15;
      }

      if ((v8 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x1CCAA22D0](v10, v8);
      }

      else
      {
        if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v12 = *(v8 + 8 * v10 + 32);
      }

      v13 = v12;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v14 = [v12 isFilterable];

      v10 = v11 + 1;
      if (v14)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  sub_1CA30F7DC(v20, &unk_1EC444650, &unk_1CA981C70);
LABEL_21:
  result = sub_1CA94D5F8();
  __break(1u);
  return result;
}

id sub_1CA50EA5C(void *a1)
{
  v1 = a1;
  v2 = sub_1CA50FAD8();

  if (v2)
  {
    type metadata accessor for WFVariableType(0);
    v4 = v3;
    sub_1CA50E1E0();
    sub_1CA94C8E8();
    OUTLINED_FUNCTION_14_2();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t *sub_1CA50EB14()
{
  v6 = MEMORY[0x1E69E7CC0];
  if (dynamic_cast_existential_1_conditional(*(v0 + OBJC_IVAR___WFTableTemplateContentItemFilterParameter_contentItemClass)))
  {
    v2 = (*(v1 + 8))();
    v0 = &v6;
    sub_1CA2B8514(v2);
  }

  v3 = OUTLINED_FUNCTION_5_30();
  sub_1CA438638(v3, v4);
  OUTLINED_FUNCTION_14_2();
  return v0;
}

double sub_1CA50EBF8@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR___WFTableTemplateContentItemFilterParameter_contentItemClass);
  if (dynamic_cast_existential_1_conditional(v3) && ((*(v4 + 16))(v62), *v62))
  {
    *a1 = *v62;
    v5 = *&v62[24];
    *(a1 + 8) = *&v62[8];
    *(a1 + 24) = v5;
    result = *&v62[40];
    *(a1 + 40) = *&v62[40];
  }

  else
  {
    v7 = [swift_getObjCClassFromMetadata() allProperties];
    sub_1CA25B3D0(0, &unk_1EC4419D0, 0x1E6996D88);
    v8 = sub_1CA94C658();

    *v62 = MEMORY[0x1E69E7CC0];
    v9 = sub_1CA25B410();
    for (i = 0; v9 != i; ++i)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1CCAA22D0](i, v8);
      }

      else
      {
        if (i >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        v11 = *(v8 + 8 * i + 32);
      }

      v12 = v11;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      if ([v11 isFilterable])
      {
        v7 = v62;
        sub_1CA94D4D8();
        v13 = *(*v62 + 16);
        sub_1CA94D518();
        sub_1CA94D528();
        sub_1CA94D4E8();
      }

      else
      {
      }
    }

    v7 = *v62;
    if (!sub_1CA25B410())
    {

      *(a1 + 48) = 0;
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      return result;
    }

    sub_1CA275D70(0, (v7 & 0xC000000000000001) == 0, v7);
    if ((v7 & 0xC000000000000001) == 0)
    {
      v14 = *(v7 + 32);
      goto LABEL_18;
    }

LABEL_31:
    v14 = MEMORY[0x1CCAA22D0](0, v7);
LABEL_18:
    v15 = v14;

    *v62 = v3;
    *&v62[8] = v15;
    *&v62[16] = 4;
    v16 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446010, &unk_1CA987B90);
    *&v62[24] = sub_1CA94C1E8();
    *&v62[32] = 256;
    v62[34] = 0;
    v17 = sub_1CA948D28();
    v18 = OUTLINED_FUNCTION_1_0(v17);
    v20 = v19;
    v22 = *(v21 + 64);
    MEMORY[0x1EEE9AC00](v18);
    OUTLINED_FUNCTION_1_37();
    v23 = sub_1CA948CC8();
    v25 = v24;
    (*(v20 + 8))(v7, v17);
    *&v62[40] = v23;
    *&v62[48] = v25;
    static RowTemplateFindFilterParameterState.possibleOperators(contentItemClass:contentProperty:bounded:)(v3, v16, 0, v26, v27, v28, v29, v30, a1, v48, v49, v50, v51, v52, v53, *(&v53 + 1), v54, *(&v54 + 1), v55, *(&v55 + 1), v56, v57, v58, *(&v58 + 1), v59, *(&v59 + 1), v60, *(&v60 + 1), v61, *v62);
    v32 = sub_1CA360E9C(v31);

    sub_1CA2F154C(v32, &v53);

    if (*(&v54 + 1))
    {
      sub_1CA27F268(&v53, &v58);
      v33 = *(&v59 + 1);
      v34 = v60;
      __swift_project_boxed_opaque_existential_1(&v58, *(&v59 + 1));
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v36 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
      (*(v34 + 24))(v33, v34);
      type metadata accessor for WFContentOperator(0);
      if (swift_dynamicCast())
      {
        *&v62[16] = v53;
      }

      __swift_destroy_boxed_opaque_existential_0(&v58);
    }

    else
    {
      sub_1CA30F7DC(&v53, &unk_1EC4456B0, &unk_1CA985F30);
    }

    WFContentProperty.displayableTimeUnits.getter();
    v38 = v37;

    if (*(v38 + 16))
    {
      v39 = *(v38 + 32);

      v40 = sub_1CA94D168();
      [objc_allocWithZone(WFCalendarUnitSubstitutableState) initWithNumber_];

      OUTLINED_FUNCTION_3_35();
      OUTLINED_FUNCTION_10_20(v41, v42, v43, v44);
    }

    else
    {
    }

    v53 = *v62;
    v54 = *&v62[16];
    v55 = *&v62[32];
    v56 = *&v62[48];
    v58 = *v62;
    v59 = *&v62[16];
    v60 = *&v62[32];
    v61 = *&v62[48];
    sub_1CA2DBD00(&v53, &v48);
    sub_1CA50FF28(&v58);
    v45 = v56;
    v46 = v54;
    *v47 = v53;
    *(v47 + 16) = v46;
    result = *&v55;
    *(v47 + 32) = v55;
    *(v47 + 48) = v45;
  }

  return result;
}

void sub_1CA50F12C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(id, uint64_t, uint64_t, uint64_t, void **))
{
  v7 = v4;
  if (a1)
  {
    v9 = a1;
    v10 = *(v7 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(v7 + 24);
    a4(v9, a2, a3, isUniquelyReferenced_nonNull_native, &v20);

    *(v7 + 24) = v20;
  }

  else
  {
    v12 = *(v4 + 24);
    v13 = sub_1CA271BF8();
    if (v14)
    {
      v15 = v13;
      v16 = *(v7 + 24);
      swift_isUniquelyReferenced_nonNull_native();
      v20 = *(v7 + 24);
      v17 = v20[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4457E0, &qword_1CA990910);
      sub_1CA94D588();
      v18 = *(v20[6] + 16 * v15 + 8);

      v19 = *(v20[7] + 8 * v15);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446010, &unk_1CA987B90);
      sub_1CA94D5A8();
      swift_unknownObjectRelease();
      *(v7 + 24) = v20;
    }
  }
}

double static TableTemplateDefaultFindFilterRowContentItem.defaultRowForAdding.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t static WFCalendarEventContentItem.defaultFindFilterRows.getter()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = sub_1CA94C368();
  v5 = [ObjCClassFromMetadata propertyForName_];

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  *&v24 = v0;
  *(&v24 + 1) = v5;
  *&v25 = 1000;
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446010, &unk_1CA987B90);
  *(&v25 + 1) = sub_1CA94C1E8();
  LOWORD(v26) = 1;
  BYTE2(v26) = 0;
  v7 = sub_1CA948D28();
  v8 = OUTLINED_FUNCTION_1_0(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1_37();
  sub_1CA948CC8();
  v11 = OUTLINED_FUNCTION_6_31();
  v12(v11);
  *(&v26 + 1) = v1;
  sub_1CA25B3D0(0, &qword_1EDB9FAC0, 0x1E696AEC0);
  v13 = sub_1CA94D008();
  v14 = [objc_allocWithZone(WFNumberStringSubstitutableState) initWithValue_];

  OUTLINED_FUNCTION_2_41();
  sub_1CA50F12C(v14, v15, 0xE600000000000000, v16);
  v17 = sub_1CA94D168();
  [objc_allocWithZone(WFCalendarUnitSubstitutableState) initWithNumber_];

  OUTLINED_FUNCTION_3_35();
  OUTLINED_FUNCTION_10_20(v18, v19, v20, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443FF0, &unk_1CA989F90);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1CA981310;
  *(v22 + 32) = v24;
  *(v22 + 48) = v25;
  *(v22 + 64) = v26;
  *(v22 + 80) = v2;

  return v22;
}

void static WFImageContentItem.defaultRowForAdding.getter(uint64_t a1@<X8>)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = sub_1CA94C368();
  v6 = [ObjCClassFromMetadata propertyForName_];

  if (v6)
  {
    *&v19 = v1;
    *(&v19 + 1) = v6;
    *&v20 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446010, &unk_1CA987B90);
    *(&v20 + 1) = sub_1CA94C1E8();
    LOWORD(v21) = 256;
    BYTE2(v21) = 0;
    v7 = sub_1CA948D28();
    v8 = OUTLINED_FUNCTION_1_0(v7);
    v10 = *(v9 + 64);
    MEMORY[0x1EEE9AC00](v8);
    OUTLINED_FUNCTION_1_37();
    sub_1CA948CC8();
    v11 = OUTLINED_FUNCTION_6_31();
    v12(v11);
    *(&v21 + 1) = v5;
    sub_1CA25B3D0(0, &qword_1EDB9FAC0, 0x1E696AEC0);
    v13 = sub_1CA94D008();
    v14 = [objc_allocWithZone(WFNumberStringSubstitutableState) initWithValue_];

    OUTLINED_FUNCTION_2_41();
    sub_1CA50F12C(v14, v15, 0xE600000000000000, v16);
    v17 = v21;
    v18 = v2;
    *a1 = v19;
    *(a1 + 16) = v20;
  }

  else
  {
    v18 = 0;
    v17 = 0uLL;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  *(a1 + 32) = v17;
  *(a1 + 48) = v18;
}

void sub_1CA50F7A4(void *a1@<X8>)
{
  v2 = v1;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = sub_1CA94C368();
  v6 = [ObjCClassFromMetadata propertyForName_];

  if (v6)
  {
    v22 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446010, &unk_1CA987B90);
    v7 = sub_1CA94C1E8();
    v8 = sub_1CA948D28();
    v9 = OUTLINED_FUNCTION_1_0(v8);
    v11 = v10;
    v13 = *(v12 + 64);
    MEMORY[0x1EEE9AC00](v9);
    v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1CA948D18();
    v16 = sub_1CA948CC8();
    v18 = v17;

    (*(v11 + 8))(v15, v8);
    *a1 = v2;
    a1[1] = v6;
    v19 = 256;
    v20 = 4;
  }

  else
  {
    v20 = 0;
    v7 = 0;
    v19 = 0;
    v16 = 0;
    v18 = 0;
    *a1 = 0;
    a1[1] = 0;
  }

  a1[2] = v20;
  a1[3] = v7;
  a1[4] = v19;
  a1[5] = v16;
  a1[6] = v18;
}

uint64_t sub_1CA50F960(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = swift_unknownObjectRetain();
  return sub_1CA50F9D8(v5, v3);
}

uint64_t sub_1CA50F99C()
{
  OUTLINED_FUNCTION_7_28();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_1CA50F9D8(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC11WorkflowKit37WFTableTemplateEntityUpdaterParameter_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1CA50FA44(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC11WorkflowKit37WFTableTemplateEntityUpdaterParameter_delegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return sub_1CA2DA264;
}

uint64_t sub_1CA50FAD8()
{
  swift_getObjectType();
  v0 = [swift_getObjCClassFromMetadata() allInsertableVariableTypes];
  type metadata accessor for WFVariableType(0);
  sub_1CA50E1E0();
  v1 = sub_1CA94C8F8();

  return v1;
}

uint64_t sub_1CA50FB88()
{
  v1 = OUTLINED_FUNCTION_5_30();
  sub_1CA4388E8(v1, v2);
  OUTLINED_FUNCTION_14_2();
  return v0;
}

uint64_t sub_1CA50FBBC()
{
  OUTLINED_FUNCTION_7_28();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v1 = *(v0 + 8);
    ObjectType = swift_getObjectType();
    v3 = (*(v1 + 8))(ObjectType, v1);
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_1CA50FC44()
{
  v0 = sub_1CA94C438();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDB9F690;
  v2 = sub_1CA94C368();
  sub_1CA94C368();
  OUTLINED_FUNCTION_14_2();
  v3 = [v1 localizedStringForKey:v2 value:v0 table:0];

  v4 = sub_1CA94C3A8();
  return v4;
}

id WFTableTemplateEntityUpdaterParameter.init(definition:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC11WorkflowKit37WFTableTemplateEntityUpdaterParameter_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v5.receiver = v1;
  v5.super_class = type metadata accessor for WFTableTemplateEntityUpdaterParameter();
  v3 = objc_msgSendSuper2(&v5, sel_initWithDefinition_, a1);

  return v3;
}

double sub_1CA50FDE4@<D0>(_OWORD *a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC11WorkflowKit37WFTableTemplateEntityUpdaterParameter_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v4 + 16))(ObjectType, v4);
    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *(a1 + 44) = 0u;
    a1[1] = 0u;
    a1[2] = 0u;
    *a1 = 0u;
  }

  return result;
}

id sub_1CA50FE9C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_1CA50FFA8()
{
  result = qword_1EC441E48;
  if (!qword_1EC441E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441E48);
  }

  return result;
}

unint64_t sub_1CA510000()
{
  result = qword_1EC446060;
  if (!qword_1EC446060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446060);
  }

  return result;
}

id sub_1CA510484()
{
  v222 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813A0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000014;
  *(inited + 48) = 0x80000001CA9C72D0;
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
  v239 = v12;
  v241 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = &v215 - v241;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v238 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v236 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v240 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v215 - v240;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v237 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Description";
  v234 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  v232 = xmmword_1CA97EDF0;
  *(v24 + 16) = xmmword_1CA97EDF0;
  *(v24 + 32) = @"DescriptionResult";
  v25 = @"Description";
  v26 = @"DescriptionResult";
  v27 = sub_1CA94C438();
  v230 = v28;
  v231 = v27;
  v229 = sub_1CA94C438();
  v30 = v29;
  v233 = &v215;
  MEMORY[0x1EEE9AC00](v229);
  v31 = &v215 - v241;
  sub_1CA948D98();
  v32 = v238;
  v33 = [v238 bundleURL];
  v235 = inited;
  v34 = v33;
  MEMORY[0x1EEE9AC00](v33);
  v35 = v240;
  sub_1CA948B68();

  v36 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v24 + 40) = sub_1CA2F9F14(v231, v230, v229, v30, 0, 0, v31, &v215 - v35);
  v37 = v237;
  *(v24 + 64) = v237;
  *(v24 + 72) = @"DescriptionSummary";
  v38 = @"DescriptionSummary";
  v39 = sub_1CA94C438();
  v230 = v40;
  v231 = v39;
  v41 = sub_1CA94C438();
  v43 = v42;
  v233 = &v215;
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v215 - v241;
  sub_1CA948D98();
  v45 = [v32 bundleURL];
  MEMORY[0x1EEE9AC00](v45);
  sub_1CA948B68();

  v46 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v47 = sub_1CA2F9F14(v231, v230, v41, v43, 0, 0, v44, &v215 - v35);
  *(v24 + 104) = v37;
  *(v24 + 80) = v47;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v48 = v234;
  v49 = sub_1CA6B3784();
  v50 = v235;
  v235[20] = v49;
  v50[23] = v48;
  v50[24] = @"IconColor";
  v50[25] = 1953392980;
  v50[26] = 0xE400000000000000;
  v51 = MEMORY[0x1E69E6158];
  v50[28] = MEMORY[0x1E69E6158];
  v50[29] = @"IconSymbol";
  v50[30] = 0x6C6C69662E726163;
  v50[31] = 0xE800000000000000;
  v50[33] = v51;
  v50[34] = @"IconSymbolColor";
  v50[35] = 0x6E65657247;
  v50[36] = 0xE500000000000000;
  v50[38] = v51;
  v50[39] = @"Input";
  v52 = v51;
  v53 = v50;
  v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v54 = swift_initStackObject();
  *(v54 + 16) = xmmword_1CA981350;
  *(v54 + 32) = 0x656C7069746C754DLL;
  *(v54 + 40) = 0xE800000000000000;
  v55 = MEMORY[0x1E69E6370];
  *(v54 + 48) = 0;
  *(v54 + 72) = v55;
  strcpy((v54 + 80), "ParameterKey");
  *(v54 + 93) = 0;
  *(v54 + 94) = -5120;
  *(v54 + 96) = 0x697461636F4C4657;
  *(v54 + 104) = 0xEA00000000006E6FLL;
  *(v54 + 120) = v52;
  *(v54 + 128) = 0x6465726975716552;
  *(v54 + 136) = 0xE800000000000000;
  *(v54 + 144) = 1;
  *(v54 + 168) = v55;
  *(v54 + 176) = 0x7365707954;
  *(v54 + 184) = 0xE500000000000000;
  v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v54 + 216) = v234;
  *(v54 + 192) = &unk_1F4A02C90;
  v56 = @"IconColor";
  v57 = @"IconSymbol";
  v58 = @"IconSymbolColor";
  v59 = @"Input";
  v60 = sub_1CA94C1E8();
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v231 = v61;
  v53[40] = v60;
  v53[43] = v61;
  v53[44] = @"Name";
  v62 = @"Name";
  v63 = sub_1CA94C438();
  v228 = v64;
  v229 = v63;
  v65 = sub_1CA94C438();
  v67 = v66;
  v233 = &v215;
  MEMORY[0x1EEE9AC00](v65);
  v68 = &v215 - v241;
  sub_1CA948D98();
  v69 = v238;
  v70 = [v238 bundleURL];
  MEMORY[0x1EEE9AC00](v70);
  v71 = &v215 - v240;
  sub_1CA948B68();

  v72 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v73 = sub_1CA2F9F14(v229, v228, v65, v67, 0, 0, v68, v71);
  v74 = v235;
  v235[45] = v73;
  v75 = v237;
  v74[48] = v237;
  v74[49] = @"Output";
  v76 = swift_allocObject();
  v221 = xmmword_1CA9813C0;
  *(v76 + 16) = xmmword_1CA9813C0;
  *(v76 + 32) = 0x656C7069746C754DLL;
  *(v76 + 40) = 0xE800000000000000;
  *(v76 + 48) = 0;
  *(v76 + 72) = MEMORY[0x1E69E6370];
  *(v76 + 80) = 0x614E74757074754FLL;
  *(v76 + 88) = 0xEA0000000000656DLL;
  v77 = @"Output";
  v78 = sub_1CA94C438();
  v228 = v79;
  v229 = v78;
  v80 = sub_1CA94C438();
  v227 = v81;
  v233 = &v215;
  MEMORY[0x1EEE9AC00](v80);
  v82 = &v215 - v241;
  sub_1CA948D98();
  v83 = [v69 bundleURL];
  MEMORY[0x1EEE9AC00](v83);
  v84 = &v215 - v240;
  sub_1CA948B68();

  v85 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v76 + 96) = sub_1CA2F9F14(v229, v228, v80, v227, 0, 0, v82, v84);
  *(v76 + 120) = v75;
  *(v76 + 128) = 0x7365707954;
  *(v76 + 168) = v234;
  *(v76 + 136) = 0xE500000000000000;
  *(v76 + 144) = &unk_1F4A02CD0;
  v86 = MEMORY[0x1E69E6158];
  v87 = sub_1CA94C1E8();
  v88 = v235;
  v235[50] = v87;
  v88[53] = v231;
  v88[54] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v234 = swift_allocObject();
  *(v234 + 16) = xmmword_1CA981470;
  v233 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v89 = swift_allocObject();
  *(v89 + 16) = xmmword_1CA981400;
  v90 = @"Parameters";
  *(v89 + 32) = sub_1CA94C368();
  *(v89 + 40) = 1;
  v91 = MEMORY[0x1E69E6370];
  *(v89 + 64) = MEMORY[0x1E69E6370];
  *(v89 + 72) = @"Class";
  *(v89 + 104) = v86;
  v219 = 0xD000000000000013;
  *(v89 + 80) = 0xD000000000000013;
  *(v89 + 88) = 0x80000001CA99B730;
  v228 = @"Class";
  v220 = 0xD000000000000018;
  *(v89 + 112) = sub_1CA94C368();
  *(v89 + 120) = 1;
  *(v89 + 144) = v91;
  *(v89 + 152) = @"Description";
  v227 = @"Description";
  v92 = sub_1CA94C438();
  v225 = v93;
  v94 = sub_1CA94C438();
  v96 = v95;
  v226 = &v215;
  MEMORY[0x1EEE9AC00](v94);
  v97 = v241;
  sub_1CA948D98();
  v98 = [v238 bundleURL];
  MEMORY[0x1EEE9AC00](v98);
  v99 = &v215 - v240;
  sub_1CA948B68();

  v100 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v89 + 160) = sub_1CA2F9F14(v92, v225, v94, v96, 0, 0, &v215 - v97, v99);
  *(v89 + 184) = v237;
  *(v89 + 192) = @"Key";
  *(v89 + 200) = 0x697461636F4C4657;
  *(v89 + 208) = 0xEA00000000006E6FLL;
  *(v89 + 224) = MEMORY[0x1E69E6158];
  *(v89 + 232) = @"Label";
  v101 = @"Key";
  v102 = @"Label";
  v103 = v101;
  v104 = v102;
  v225 = v103;
  v226 = v104;
  v223 = sub_1CA94C438();
  v218 = v105;
  v217 = sub_1CA94C438();
  v107 = v106;
  v224 = &v215;
  MEMORY[0x1EEE9AC00](v217);
  v108 = &v215 - v97;
  sub_1CA948D98();
  v109 = v238;
  v110 = [v238 bundleURL];
  MEMORY[0x1EEE9AC00](v110);
  v111 = v240;
  sub_1CA948B68();

  v112 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v89 + 240) = sub_1CA2F9F14(v223, v218, v217, v107, 0, 0, v108, &v215 - v111);
  v113 = v237;
  *(v89 + 264) = v237;
  *(v89 + 272) = @"Prompt";
  v114 = @"Prompt";
  v223 = sub_1CA94C438();
  v218 = v115;
  v116 = sub_1CA94C438();
  v217 = v117;
  v224 = &v215;
  MEMORY[0x1EEE9AC00](v116);
  v118 = &v215 - v241;
  sub_1CA948D98();
  v119 = [v109 bundleURL];
  MEMORY[0x1EEE9AC00](v119);
  sub_1CA948B68();

  v120 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v121 = sub_1CA2F9F14(v223, v218, v116, v217, 0, 0, v118, &v215 - v111);
  *(v89 + 304) = v113;
  *(v89 + 280) = v121;
  _s3__C3KeyVMa_0(0);
  v224 = v122;
  v223 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  *(v234 + 32) = sub_1CA2F864C();
  v123 = swift_allocObject();
  *(v123 + 16) = xmmword_1CA981380;
  *(v123 + 32) = v228;
  *(v123 + 40) = 0xD000000000000014;
  *(v123 + 48) = 0x80000001CA99B500;
  v124 = v227;
  *(v123 + 64) = MEMORY[0x1E69E6158];
  *(v123 + 72) = v124;
  v125 = sub_1CA94C438();
  v216 = v126;
  v217 = v125;
  v127 = sub_1CA94C438();
  v215 = v128;
  v218 = &v215;
  MEMORY[0x1EEE9AC00](v127);
  v129 = v241;
  sub_1CA948D98();
  v130 = [v238 bundleURL];
  MEMORY[0x1EEE9AC00](v130);
  v131 = &v215 - v240;
  sub_1CA948B68();

  v132 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v133 = sub_1CA2F9F14(v217, v216, v127, v215, 0, 0, &v215 - v129, v131);
  v134 = v219;
  *(v123 + 80) = v133;
  v135 = v225;
  *(v123 + 104) = v237;
  *(v123 + 112) = v135;
  *(v123 + 120) = v134;
  *(v123 + 128) = 0x80000001CA9C7530;
  v136 = v226;
  *(v123 + 144) = MEMORY[0x1E69E6158];
  *(v123 + 152) = v136;
  v137 = sub_1CA94C438();
  v217 = v138;
  v218 = v137;
  v139 = sub_1CA94C438();
  v216 = v140;
  v219 = &v215;
  MEMORY[0x1EEE9AC00](v139);
  sub_1CA948D98();
  v141 = [v238 bundleURL];
  MEMORY[0x1EEE9AC00](v141);
  v142 = &v215 - v240;
  sub_1CA948B68();

  v143 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v123 + 160) = sub_1CA2F9F14(v218, v217, v139, v216, 0, 0, &v215 - v129, v142);
  *(v123 + 184) = v237;
  *(v123 + 192) = @"Multiline";
  *(v123 + 200) = 1;
  *(v123 + 224) = MEMORY[0x1E69E6370];
  *(v123 + 232) = @"TextAlignment";
  v144 = MEMORY[0x1E69E6158];
  *(v123 + 264) = MEMORY[0x1E69E6158];
  *(v123 + 240) = 0x7468676952;
  *(v123 + 248) = 0xE500000000000000;
  v145 = @"Multiline";
  v146 = @"TextAlignment";
  sub_1CA94C1E8();
  *(v234 + 40) = sub_1CA2F864C();
  v147 = swift_allocObject();
  *(v147 + 16) = xmmword_1CA981370;
  *(v147 + 32) = v228;
  *(v147 + 40) = 0xD000000000000019;
  *(v147 + 48) = 0x80000001CA99B030;
  v148 = v227;
  *(v147 + 64) = v144;
  *(v147 + 72) = v148;
  v149 = sub_1CA94C438();
  v228 = v150;
  v151 = sub_1CA94C438();
  v153 = v152;
  v229 = &v215;
  MEMORY[0x1EEE9AC00](v151);
  v154 = &v215 - v241;
  sub_1CA948D98();
  v155 = v238;
  v156 = [v238 bundleURL];
  MEMORY[0x1EEE9AC00](v156);
  v157 = &v215 - v240;
  sub_1CA948B68();

  v158 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v147 + 80) = sub_1CA2F9F14(v149, v228, v151, v153, 0, 0, v154, v157);
  v159 = v225;
  *(v147 + 104) = v237;
  *(v147 + 112) = v159;
  *(v147 + 120) = 0x6567616D494657;
  *(v147 + 128) = 0xE700000000000000;
  v160 = v226;
  *(v147 + 144) = MEMORY[0x1E69E6158];
  *(v147 + 152) = v160;
  v161 = sub_1CA94C438();
  v227 = v162;
  v228 = v161;
  v163 = sub_1CA94C438();
  v226 = v164;
  v229 = &v215;
  MEMORY[0x1EEE9AC00](v163);
  v165 = v241;
  sub_1CA948D98();
  v166 = [v155 bundleURL];
  v225 = &v215;
  MEMORY[0x1EEE9AC00](v166);
  v167 = v240;
  sub_1CA948B68();

  v168 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v147 + 160) = sub_1CA2F9F14(v228, v227, v163, v226, 0, 0, &v215 - v165, &v215 - v167);
  v169 = v237;
  *(v147 + 184) = v237;
  *(v147 + 192) = @"Placeholder";
  v170 = @"Placeholder";
  v171 = sub_1CA94C438();
  v227 = v172;
  v228 = v171;
  v173 = sub_1CA94C438();
  v226 = v174;
  v229 = &v215;
  MEMORY[0x1EEE9AC00](v173);
  sub_1CA948D98();
  v175 = [v238 bundleURL];
  MEMORY[0x1EEE9AC00](v175);
  sub_1CA948B68();

  v176 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v177 = sub_1CA2F9F14(v228, v227, v173, v226, 0, 0, &v215 - v165, &v215 - v167);
  *(v147 + 224) = v169;
  *(v147 + 200) = v177;
  sub_1CA94C1E8();
  v178 = sub_1CA2F864C();
  v179 = v234;
  *(v234 + 48) = v178;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v181 = v235;
  v235[55] = v179;
  v181[58] = v180;
  v181[59] = @"ParameterSummary";
  v182 = @"ParameterSummary";
  v183 = sub_1CA94C438();
  v185 = v184;
  v186 = sub_1CA94C438();
  v188 = v187;
  MEMORY[0x1EEE9AC00](v186);
  v189 = &v215 - v241;
  sub_1CA948D98();
  v190 = [v238 bundleURL];
  MEMORY[0x1EEE9AC00](v190);
  v191 = &v215 - v240;
  sub_1CA948B68();

  v192 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v193 = sub_1CA2F9F14(v183, v185, v186, v188, 0, 0, v189, v191);
  v194 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v195 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v196 = v235;
  v235[60] = v194;
  v196[63] = v195;
  v196[64] = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438F0, &unk_1CA9819E0);
  v197 = swift_allocObject();
  *(v197 + 16) = v232;
  v242 = 0;
  v243 = 0;
  v198 = type metadata accessor for WFDeviceIdiomResource();
  v199 = objc_allocWithZone(v198);
  v200 = @"RequiredResources";
  WFDeviceIdiomResource.init(requirement:)(&v242);
  *(v197 + 56) = v198;
  *(v197 + 32) = v201;
  v202 = swift_initStackObject();
  *(v202 + 16) = v232;
  *(v202 + 32) = 0xD000000000000011;
  *(v202 + 40) = 0x80000001CA99B240;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v203 = swift_allocObject();
  *(v203 + 16) = xmmword_1CA981310;
  v204 = swift_allocObject();
  *(v204 + 16) = v221;
  strcpy((v204 + 32), "WFParameterKey");
  *(v204 + 47) = -18;
  *(v204 + 48) = 0x697461636F4C4657;
  *(v204 + 56) = 0xEA00000000006E6FLL;
  v205 = MEMORY[0x1E69E6158];
  *(v204 + 72) = MEMORY[0x1E69E6158];
  *(v204 + 80) = 0xD000000000000010;
  *(v204 + 88) = 0x80000001CA993570;
  v206 = v205;
  v207 = sub_1CA94C1E8();
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443800, &unk_1CA981440);
  *(v204 + 96) = v207;
  *(v204 + 120) = v208;
  *(v204 + 128) = 0x72756F7365524657;
  *(v204 + 168) = v206;
  *(v204 + 136) = 0xEF7373616C436563;
  *(v204 + 144) = 0xD00000000000001BLL;
  *(v204 + 152) = 0x80000001CA993590;
  *(v203 + 32) = sub_1CA94C1E8();
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  *(v202 + 48) = v203;
  *(v202 + 72) = v209;
  *(v202 + 80) = 0x72756F7365524657;
  *(v202 + 120) = v206;
  v210 = v220;
  *(v202 + 88) = 0xEF7373616C436563;
  *(v202 + 96) = v210;
  *(v202 + 104) = 0x80000001CA994040;
  v211 = sub_1CA94C1E8();
  *(v197 + 88) = v231;
  *(v197 + 64) = v211;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443838, &qword_1CA981588);
  v213 = v235;
  v235[68] = v212;
  v213[65] = v197;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}