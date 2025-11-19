void RowTemplateFindFilterParameterState.containedVariables.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_43_0();
  a31 = v33;
  a32 = v34;
  v35 = *(v32 + 24);
  v37 = *(v35 + 64);
  v36 = v35 + 64;
  v38 = *(v35 + 32);
  OUTLINED_FUNCTION_5_5();
  v41 = v40 & v39;
  v73 = (v42 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v43 = 0;
  v44 = MEMORY[0x1E69E7CC0];
  v74 = v35 + 64;
  v71 = v35;
  while (v41)
  {
LABEL_7:
    v46 = *(*(v35 + 56) + ((v43 << 9) | (8 * __clz(__rbit64(v41)))));
    v47 = [swift_unknownObjectRetain_n() containedVariables];
    sub_1CA25B3D0(0, &qword_1EC441AC0, off_1E836F4B0);
    v48 = sub_1CA94C658();
    swift_unknownObjectRelease_n();

    if (v48 >> 62)
    {
      v49 = sub_1CA94D328();
    }

    else
    {
      v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v50 = v44 >> 62;
    if (v44 >> 62)
    {
      v51 = sub_1CA94D328();
    }

    else
    {
      v51 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v77 = v49;
    v52 = __OFADD__(v51, v49);
    v53 = v51 + v49;
    if (v52)
    {
      goto LABEL_41;
    }

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v50)
      {
LABEL_19:
        sub_1CA94D328();
      }

      else
      {
        v54 = v44 & 0xFFFFFFFFFFFFFF8;
LABEL_18:
        v55 = *(v54 + 16);
      }

      v76 = sub_1CA94D488();
      v54 = v76 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_21;
    }

    if (v50)
    {
      goto LABEL_19;
    }

    v54 = v44 & 0xFFFFFFFFFFFFFF8;
    if (v53 > *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_18;
    }

    v76 = v44;
LABEL_21:
    v41 &= v41 - 1;
    v56 = *(v54 + 16);
    v57 = (*(v54 + 24) >> 1) - v56;
    v58 = v54 + 8 * v56;
    v75 = v54;
    if (v48 >> 62)
    {
      v61 = sub_1CA94D328();
      if (v61)
      {
        v62 = v61;
        v63 = sub_1CA94D328();
        if (v57 < v63)
        {
          goto LABEL_45;
        }

        if (v62 < 1)
        {
          goto LABEL_46;
        }

        v72 = v63;
        v64 = v58 + 32;
        sub_1CA66AD28();
        for (i = 0; i != v62; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444470, &unk_1CA983510);
          v66 = sub_1CA276BDC(&a17, i, v48);
          v68 = *v67;
          v66(&a17, 0);
          *(v64 + 8 * i) = v68;
        }

        v35 = v71;
        v59 = v72;
        goto LABEL_31;
      }

LABEL_35:

      v44 = v76;
      v36 = v74;
      if (v77 > 0)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v59 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v59)
      {
        goto LABEL_35;
      }

      if (v57 < v59)
      {
        goto LABEL_44;
      }

      v60 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
      swift_arrayInitWithCopy();
LABEL_31:

      v44 = v76;
      v36 = v74;
      if (v59 < v77)
      {
        goto LABEL_42;
      }

      if (v59 > 0)
      {
        v69 = *(v75 + 16);
        v52 = __OFADD__(v69, v59);
        v70 = v69 + v59;
        if (v52)
        {
          goto LABEL_43;
        }

        *(v75 + 16) = v70;
      }
    }
  }

  while (1)
  {
    v45 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      break;
    }

    if (v45 >= v73)
    {

      OUTLINED_FUNCTION_42_0();
      return;
    }

    v41 = *(v36 + 8 * v45);
    ++v43;
    if (v41)
    {
      v43 = v45;
      goto LABEL_7;
    }
  }

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
}

uint64_t RowTemplateFindFilterParameterState.process(context:)(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = *v1;
  v3 = *(v1 + 24);
  *(v2 + 104) = *(v1 + 16);
  *(v2 + 112) = v3;
  *(v2 + 73) = *(v1 + 32);
  *(v2 + 74) = *(v1 + 33);
  v4 = OUTLINED_FUNCTION_85();
  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1CA663B2C()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  v5 = *(v4 + 136);
  *v3 = *v1;
  *(v2 + 144) = v6;
  *(v2 + 152) = v0;

  if (v0)
  {
    v7 = sub_1CA663EC0;
  }

  else
  {
    v7 = sub_1CA663C30;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1CA663EC0()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 128);
  swift_unknownObjectRelease();
  v2 = *(v0 + 152);
  v3 = *(v0 + 128);

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_5();

  return v4();
}

uint64_t sub_1CA663F2C()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  v4 = v2[23];
  v5 = *v1;
  OUTLINED_FUNCTION_13();
  *v6 = v5;
  v3[24] = v0;

  if (v0)
  {
    v7 = v3[20];
    v8 = v3[7];
    v9 = v3[8];

    v10 = sub_1CA6641E0;
  }

  else
  {
    v11 = v3[7];
    v12 = v3[8];

    v10 = sub_1CA664054;
  }

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

uint64_t sub_1CA664054()
{
  OUTLINED_FUNCTION_39_1();
  while (1)
  {
    result = OUTLINED_FUNCTION_55_8();
    if (v4)
    {
      v15 = v0[20];

      OUTLINED_FUNCTION_28_11();
      OUTLINED_FUNCTION_42_9();

      __asm { BRAA            X2, X16 }
    }

    v5 = v0[22] + 1;
    v0[22] = v5;
    v6 = v0[20];
    if (v5 >= *(v6 + 16))
    {
      break;
    }

    v7 = v0[13];
    sub_1CA2C9578(v6 + 40 * v5 + 32, (v0 + 2));
    v8 = OUTLINED_FUNCTION_19_25();
    if (v9(v8) == v7)
    {
      OUTLINED_FUNCTION_8_34();
      sub_1CA94C218();
      v10 = v2;
      v18 = v1 + *v1;
      v11 = v1[1];
      v12 = swift_task_alloc();
      v0[23] = v12;
      *v12 = v0;
      OUTLINED_FUNCTION_1_51();
      OUTLINED_FUNCTION_42_9();

      __asm { BRAA            X4, X16 }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CA6641E0()
{
  OUTLINED_FUNCTION_0();

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 192);
  OUTLINED_FUNCTION_5();

  return v2();
}

void static RowTemplateFindFilterParameterState.possibleOperators(contentItemClass:contentProperty:bounded:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, __int128 a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_43_0();
  a29 = v30;
  a30 = v31;
  v33 = v32;
  v36 = sub_1CA665C70(v34, v32, v35);
  v37 = sub_1CA66AC54(v33);
  if (v37)
  {
    v38 = v37;
    v39 = sub_1CA25B410();
    if (v39)
    {
      v40 = v39;
      v41 = 0;
      v42 = MEMORY[0x1E69E7CC0];
      while (v40 != v41)
      {
        if ((v38 & 0xC000000000000001) != 0)
        {
          v43 = MEMORY[0x1CCAA22D0](v41, v38);
        }

        else
        {
          if (v41 >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_32;
          }

          v43 = *(v38 + 8 * v41 + 32);
        }

        v44 = v43;
        if (__OFADD__(v41, 1))
        {
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
          return;
        }

        v45 = sub_1CA94C978();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v48 = v42[2];
          sub_1CA2E5734();
          v42 = v49;
        }

        v47 = v42[2];
        v46 = v42[3];
        if (v47 >= v46 >> 1)
        {
          OUTLINED_FUNCTION_64(v46);
          sub_1CA2E5734();
          v42 = v50;
        }

        v42[2] = v47 + 1;
        v42[v47 + 4] = v45;
        ++v41;
      }

      v51 = 0;
      v52 = v36[2];
      v53 = v36 + 4;
      v54 = MEMORY[0x1E69E7CC0];
      while (v51 != v52)
      {
        if (v51 >= v36[2])
        {
          goto LABEL_33;
        }

        v55 = v36;
        v56 = v51 + 1;
        sub_1CA2C9578(&v53[5 * v51], &a14);
        v58 = a16;
        v57 = a17;
        __swift_project_boxed_opaque_existential_1(&a14, a16);
        v59 = (*(*(v57 + 8) + 16))(v58);
        v60 = v42[2];
        v61 = v42 + 4;
        do
        {
          if (!v60)
          {
            __swift_destroy_boxed_opaque_existential_0(&a14);
            goto LABEL_27;
          }

          v62 = *v61++;
          --v60;
        }

        while (v62 != v59);
        sub_1CA27F268(&a14, &a10);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        a18 = v54;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1CA2B8EB4(0, *(v54 + 16) + 1, 1);
          v54 = a18;
        }

        v65 = *(v54 + 16);
        v64 = *(v54 + 24);
        if (v65 >= v64 >> 1)
        {
          v66 = OUTLINED_FUNCTION_64(v64);
          sub_1CA2B8EB4(v66, v65 + 1, 1);
          v54 = a18;
        }

        *(v54 + 16) = v65 + 1;
        sub_1CA27F268(&a10, v54 + 40 * v65 + 32);
LABEL_27:
        v51 = v56;
        v36 = v55;
      }
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_42_0();
}

uint64_t RowTemplateFindFilterParameterState.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = NSStringFromClass(ObjCClassFromMetadata);
  sub_1CA94C3A8();
  OUTLINED_FUNCTION_86_4();
  sub_1CA94C458();

  v7 = [v2 name];
  sub_1CA94C3A8();

  sub_1CA94C458();

  MEMORY[0x1CCAA2780](v4);
  v14 = sub_1CA42AD5C(v3);
  sub_1CA60317C(&v14);
  v8 = *(v14 + 16);
  if (v8)
  {
    v9 = (v14 + 48);
    do
    {
      v10 = *(v9 - 2);
      v11 = *(v9 - 1);
      v12 = *v9;
      v9 += 3;
      sub_1CA94C218();
      swift_unknownObjectRetain();
      sub_1CA94C458();

      MEMORY[0x1CCAA2780]([v12 hash]);
      swift_unknownObjectRelease();
      --v8;
    }

    while (v8);
  }
}

uint64_t static RowTemplateFindFilterParameterState.== infix(_:_:)(uint64_t a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v7 = a2[2];
  v6 = a2[3];
  v8 = a2[1];
  v9 = [*(a1 + 8) name];
  v10 = sub_1CA94C3A8();
  v12 = v11;

  v13 = [v8 name];
  v14 = sub_1CA94C3A8();
  v16 = v15;

  if (v10 == v14 && v12 == v16)
  {

    if (v5 != v7)
    {
      return 0;
    }
  }

  else
  {
    v18 = sub_1CA94D7F8();

    v2 = 0;
    if ((v18 & 1) == 0 || v5 != v7)
    {
      return v2;
    }
  }

  sub_1CA94C218();
  sub_1CA94C218();
  v19 = sub_1CA60C7CC(v4, v6);

  if ((v19 & 1) == 0)
  {
    return 0;
  }

  v21 = v4 + 64;
  v20 = *(v4 + 64);
  v22 = *(v4 + 32);
  OUTLINED_FUNCTION_5_5();
  v25 = v24 & v23;
  v27 = (v26 + 63) >> 6;
  result = sub_1CA94C218();
  v28 = 0;
  v29 = &selRef_initWithIntentDescriptor_isSyncedFromOtherDevice_;
  v44 = v4;
  while (v25)
  {
LABEL_19:
    v31 = __clz(__rbit64(v25)) | (v28 << 6);
    v32 = *(*(v4 + 56) + 8 * v31);
    if (*(v6 + 16))
    {
      v33 = v4;
      v34 = v29;
      v35 = (*(v33 + 48) + 16 * v31);
      v36 = *v35;
      v37 = v35[1];
      swift_unknownObjectRetain();
      sub_1CA94C218();
      v38 = sub_1CA271BF8();
      v40 = v39;

      if ((v40 & 1) == 0)
      {
        v41 = 0;
        v29 = v34;
        v4 = v44;
        goto LABEL_25;
      }

      v41 = *(*(v6 + 56) + 8 * v38);
      v29 = v34;
      v4 = v44;
    }

    else
    {
      v41 = 0;
      v42 = *(*(v4 + 56) + 8 * v31);
    }

    swift_unknownObjectRetain();
LABEL_25:
    v25 &= v25 - 1;
    v43 = [v32 v29[489]];
    swift_unknownObjectRelease();
    result = swift_unknownObjectRelease();
    if ((v43 & 1) == 0)
    {
      v2 = 0;
LABEL_28:

      return v2;
    }
  }

  while (1)
  {
    v30 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v30 >= v27)
    {
      v2 = 1;
      goto LABEL_28;
    }

    v25 = *(v21 + 8 * v30);
    ++v28;
    if (v25)
    {
      v28 = v30;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t RowTemplateFindFilterParameterState.isBoolean.getter()
{
  v1 = *(v0 + 8);
  result = sub_1CA94CD98();
  if (result)
  {
    return [swift_getObjCClassFromMetadata() tableTemplateSubjectType] == 1;
  }

  return result;
}

id static RowTemplateFindFilterParameterState.subjectType(contentProperty:)()
{
  result = sub_1CA94CD98();
  if (result)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

    return [ObjCClassFromMetadata tableTemplateSubjectType];
  }

  return result;
}

uint64_t RowTemplateFindFilterParameterState.propertyName.getter()
{
  v1 = [*(v0 + 8) localizedName];
  sub_1CA94C3A8();

  return OUTLINED_FUNCTION_52_0();
}

void __swiftcall RowTemplateFindFilterParameterState.makeSubjectParameter(key:)(WFParameter *__return_ptr retstr, Swift::String key)
{
  object = key._object;
  countAndFlagsBits = key._countAndFlagsBits;
  v52 = *v2;
  v53 = v2[1];
  v54 = v2[2];
  v55 = *(v2 + 6);
  sub_1CA664E78();
  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981350;
  v9 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"Key";
  *(inited + 40) = countAndFlagsBits;
  *(inited + 48) = object;
  *(inited + 64) = v9;
  *(inited + 72) = @"Items";
  v10 = *(v7 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  v49 = v7;
  v50 = inited;
  if (v10)
  {
    v51 = MEMORY[0x1E69E7CC0];
    v12 = @"Key";
    sub_1CA94C218();
    v13 = @"Items";
    sub_1CA271524();
    v14 = (v7 + 40);
    v15 = v51;
    v16 = v10;
    do
    {
      v17 = *(v14 - 1);
      if (*v14)
      {
        v18 = v17;
        v19 = [v18 name];
        sub_1CA94C3A8();
        OUTLINED_FUNCTION_86_4();
        MEMORY[0x1CCAA1300](v7, v3);

        v7 = 0xE90000000000002DLL;
        v20 = 0x657669746167656ELL;
      }

      else
      {
        v21 = v17;
        v22 = [v21 name];
        v20 = sub_1CA94C3A8();
        v7 = v23;
      }

      v24 = *(v51 + 16);
      v3 = v24 + 1;
      if (v24 >= *(v51 + 24) >> 1)
      {
        sub_1CA271524();
      }

      *(v51 + 16) = v3;
      v25 = v51 + 16 * v24;
      *(v25 + 32) = v20;
      *(v25 + 40) = v7;
      v14 += 16;
      --v16;
    }

    while (v16);
    v7 = v49;
    v26 = v50;
    v11 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v26 = inited;
    v27 = @"Key";
    sub_1CA94C218();
    v28 = @"Items";
    v15 = MEMORY[0x1E69E7CC0];
  }

  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  v26[10] = v15;
  v26[13] = v29;
  v26[14] = @"ItemDisplayNames";
  if (!v10)
  {
    v41 = @"ItemDisplayNames";

    v31 = MEMORY[0x1E69E7CC0];
    goto LABEL_24;
  }

  v30 = @"ItemDisplayNames";
  sub_1CA271524();
  v31 = v11;
  v32 = (v7 + 40);
  do
  {
    v33 = *v32;
    v34 = *(v32 - 1);
    v35 = v34;
    if (v33)
    {
      sub_1CA66ACC4(v34);
      if (v36)
      {
        OUTLINED_FUNCTION_86_4();
        goto LABEL_19;
      }

      v37 = [v35 localizedName];
    }

    else
    {
      v37 = [v34 localizedName];
    }

    v38 = v37;
    sub_1CA94C3A8();
    OUTLINED_FUNCTION_86_4();

LABEL_19:
    v39 = *(v31 + 16);
    if (v39 >= *(v31 + 24) >> 1)
    {
      sub_1CA271524();
    }

    *(v31 + 16) = v39 + 1;
    v40 = v31 + 16 * v39;
    *(v40 + 32) = v7;
    *(v40 + 40) = v26;
    v32 += 2;
    --v10;
  }

  while (v10);

  v26 = v50;
LABEL_24:
  sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v26[15] = v31;
  v26[18] = v29;
  v26[19] = @"DisallowedVariableTypes";
  sub_1CA25B3D0(0, &qword_1EC444F20, off_1E836E2F8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v43 = @"DisallowedVariableTypes";
  v44 = [ObjCClassFromMetadata allInsertableVariableTypes];
  type metadata accessor for WFVariableType(0);
  sub_1CA66C160(&qword_1EC441A60, type metadata accessor for WFVariableType);
  v45 = sub_1CA94C8F8();

  sub_1CA3E4650(v45);
  v47 = v46;

  v26[23] = v29;
  v26[20] = v47;
  _s3__C3KeyVMa_0(0);
  sub_1CA66C160(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v48 = sub_1CA2F864C();
  [objc_allocWithZone(WFEnumerationParameter) initWithDefinition_];
}

void sub_1CA664E78()
{
  v1 = *v0;
  v2 = [swift_getObjCClassFromMetadata() allProperties];
  sub_1CA25B3D0(0, &unk_1EC4419D0, 0x1E6996D88);
  v3 = sub_1CA94C658();

  v23 = MEMORY[0x1E69E7CC0];
  v4 = sub_1CA25B410();
  for (i = 0; ; ++i)
  {
    if (v4 == i)
    {

      v9 = sub_1CA25B410();
      if (v9)
      {
        v10 = v9;
        if (v9 < 1)
        {
          goto LABEL_32;
        }

        v11 = 0;
        v12 = MEMORY[0x1E69E7CC0];
        do
        {
          if ((v23 & 0xC000000000000001) != 0)
          {
            v13 = MEMORY[0x1CCAA22D0](v11, v23);
          }

          else
          {
            v13 = *(v23 + 8 * v11 + 32);
          }

          v14 = v13;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v19 = *(v12 + 16);
            sub_1CA2E7608();
            v12 = v20;
          }

          v15 = *(v12 + 16);
          if (v15 >= *(v12 + 24) >> 1)
          {
            sub_1CA2E7608();
            v12 = v21;
          }

          *(v12 + 16) = v15 + 1;
          v16 = v12 + 16 * v15;
          *(v16 + 32) = v14;
          *(v16 + 40) = 0;
          if (sub_1CA94CD98() && [swift_getObjCClassFromMetadata() tableTemplateSubjectType] == 1)
          {
            v17 = *(v12 + 16);
            if (v17 >= *(v12 + 24) >> 1)
            {
              sub_1CA2E7608();
              v12 = v22;
            }

            *(v12 + 16) = v17 + 1;
            v18 = v12 + 16 * v17;
            *(v18 + 32) = v14;
            *(v18 + 40) = 1;
          }

          else
          {
          }

          ++v11;
        }

        while (v10 != v11);
      }

      return;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1CCAA22D0](i, v3);
    }

    else
    {
      if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

      v6 = *(v3 + 8 * i + 32);
    }

    v7 = v6;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if ([v6 isFilterable])
    {
      sub_1CA94D4D8();
      v8 = *(v23 + 16);
      sub_1CA94D518();
      sub_1CA94D528();
      sub_1CA94D4E8();
    }

    else
    {
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

uint64_t sub_1CA665128(void *a1, char a2)
{
  if (a2)
  {
    v2 = [a1 name];
    v3 = sub_1CA94C3A8();
    v5 = v4;

    MEMORY[0x1CCAA1300](v3, v5);

    return 0x657669746167656ELL;
  }

  else
  {
    v7 = [a1 name];
    v6 = sub_1CA94C3A8();
  }

  return v6;
}

id RowTemplateFindFilterParameterState.subject.getter()
{
  OUTLINED_FUNCTION_9_37();
  v0 = sub_1CA6654A8();
  sub_1CA665128(v0, v1 & 1);

  OUTLINED_FUNCTION_52_0();
  v2 = sub_1CA94C368();

  v3 = [objc_allocWithZone(WFStringSubstitutableState) initWithValue_];

  return v3;
}

void RowTemplateFindFilterParameterState.subject.setter(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, __int128 a13, __int128 a14, __int128 a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  OUTLINED_FUNCTION_43_0();
  if (v32)
  {
    v51 = v32;
    v33 = [v32 value];
    if (v33)
    {
      v34 = v33;
      v52 = *v29;
      v53 = *(v29 + 16);
      v54 = *(v29 + 32);
      v55 = *(v29 + 48);
      sub_1CA664E78();
      v36 = v35;
      v37 = 0;
      v38 = *(v35 + 16);
      for (i = (v35 + 40); ; i += 16)
      {
        if (v38 == v37)
        {

          goto LABEL_16;
        }

        if (v37 >= *(v36 + 16))
        {
          break;
        }

        v40 = *(i - 1);
        if (*i)
        {
          v41 = [v40 name];
          sub_1CA94C3A8();
          OUTLINED_FUNCTION_165();

          MEMORY[0x1CCAA1300](v30, v31);

          v43 = 0x657669746167656ELL;
          v42 = 0xE90000000000002DLL;
        }

        else
        {
          v44 = [v40 name];
          v43 = sub_1CA94C3A8();
          v42 = v45;
        }

        v46 = sub_1CA94C3A8();
        v31 = v47;
        if (v43 == v46 && v42 == v47)
        {

LABEL_18:

          sub_1CA6655C0(v40);

          goto LABEL_19;
        }

        v30 = sub_1CA94D7F8();

        if (v30)
        {
          goto LABEL_18;
        }

        ++v37;
      }

      __break(1u);
    }

    else
    {
LABEL_19:
      OUTLINED_FUNCTION_42_0();
    }
  }

  else
  {
LABEL_16:
    OUTLINED_FUNCTION_42_0();
  }
}

void *sub_1CA6654A8()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 24);
  if (sub_1CA94CD98() && [swift_getObjCClassFromMetadata() tableTemplateSubjectType] == 1 && sub_1CA323E28(1819242306, 0xE400000000000000, v2))
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3 && (v4 = [v3 numberSubstitutableState], v5 = objc_msgSend(v4, sel_number), v4, v5))
    {
      v8 = 2;
      MEMORY[0x1CCAA1610](v5, &v8);

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v6 = v1;
  return v1;
}

void *RowTemplateFindFilterParameterState.subject.modify(void *a1)
{
  a1[1] = v1;
  OUTLINED_FUNCTION_9_37();
  v3 = sub_1CA6654A8();
  sub_1CA665128(v3, v4 & 1);

  v5 = sub_1CA94C368();

  v6 = [objc_allocWithZone(WFStringSubstitutableState) initWithValue_];

  *a1 = v6;
  return &sub_1CA665868;
}

uint64_t RowTemplateFindFilterParameterState.parameterState(key:)()
{
  v1 = *(v0 + 24);
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

uint64_t RowTemplateFindFilterParameterState.setParameterState(_:key:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    swift_getObjectType();
    v7 = swift_unknownObjectRetain();

    return sub_1CA43FF40(v7, a2, a3, (v3 + 24));
  }

  else
  {
    v9 = *(v3 + 24);
    result = sub_1CA271BF8();
    if (v10)
    {
      v11 = result;
      v12 = *(v4 + 24);
      swift_isUniquelyReferenced_nonNull_native();
      v16 = *(v4 + 24);
      v13 = v16[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4457E0, &qword_1CA990910);
      sub_1CA94D588();
      v14 = *(v16[6] + 16 * v11 + 8);

      v15 = *(v16[7] + 8 * v11);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446010, &unk_1CA987B90);
      sub_1CA94D5A8();
      result = swift_unknownObjectRelease();
      *(v4 + 24) = v16;
    }
  }

  return result;
}

uint64_t RowTemplateFindFilterParameterState.hashValue.getter()
{
  sub_1CA94D918();
  RowTemplateFindFilterParameterState.hash(into:)();
  return sub_1CA94D968();
}

uint64_t sub_1CA665A9C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1CA32C284;

  return RowTemplateFindFilterParameterState.process(context:)(a1);
}

void *sub_1CA665B5C(id *a1)
{
  a1[1] = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = *(v1 + 6);
  *a1 = RowTemplateFindFilterParameterState.subject.getter();
  return &sub_1CA665868;
}

uint64_t sub_1CA665BC8@<X0>(uint64_t *a1@<X8>)
{
  result = RowTemplateFindFilterParameterState.selectedOperator.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1CA665C30()
{
  sub_1CA94D918();
  RowTemplateFindFilterParameterState.hash(into:)();
  return sub_1CA94D968();
}

void *sub_1CA665C70(int a1, id a2, char a3)
{
  if ([a2 hasPossibleValues])
  {

    return sub_1CA666738(a2, a3 & 1);
  }

  else
  {
    if (!sub_1CA94CD98())
    {
      return MEMORY[0x1E69E7CC0];
    }

    switch([swift_getObjCClassFromMetadata() tableTemplateSubjectType])
    {
      case 2uLL:
        sub_1CA94CD98();
        v6 = sub_1CA511FA8();
        if (v6 == 1)
        {
          v7 = 0x656E6F6850;
          v8 = a3 & 1;
          v9 = 0xE500000000000000;
          v10 = 1;
        }

        else if (v6 == 2)
        {
          v7 = 0x6C69616D45;
          v8 = a3 & 1;
          v9 = 0xE500000000000000;
          v10 = 2;
        }

        else
        {
          v10 = v6;
          v7 = 0x676E69727453;
          v8 = a3 & 1;
          v9 = 0xE600000000000000;
        }

        return sub_1CA66A7AC(v7, v9, v10, a2, v8);
      case 3uLL:

        return sub_1CA6698A8(0x7265626D754ELL, 0xE600000000000000, 1, a2, a3 & 1);
      case 4uLL:
        *&v56 = 1702125892;
        *(&v56 + 1) = 0xE400000000000000;
        *&v57 = [a2 timeUnits];
        *(&v57 + 1) = [a2 comparableUnits];
        v58 = 0u;
        v59 = 0u;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443940, &unk_1CA982570);
        v13 = swift_allocObject();
        *(v13 + 16) = xmmword_1CA981310;
        *(v13 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447C20, &unk_1CA991670);
        *(v13 + 64) = sub_1CA66C8A8();
        v14 = swift_allocObject();
        *(v13 + 32) = v14;
        v15 = v57;
        v14[1] = v56;
        v14[2] = v15;
        v16 = v59;
        v14[3] = v58;
        v14[4] = v16;
        v55 = v13;
        if ((a3 & 1) == 0)
        {
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1CA9813C0;
          *(inited + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447C30, &unk_1CA98F860);
          *(inited + 64) = sub_1CA66C924();
          v18 = swift_allocObject();
          *(inited + 32) = v18;
          v19 = v57;
          v20 = v56;
          v18[1] = v56;
          v18[2] = v19;
          v21 = v59;
          v22 = v58;
          v18[3] = v58;
          v18[4] = v21;
          *&__src[7] = v20;
          *&__src[23] = v19;
          *&__src[39] = v22;
          *&__src[55] = v21;
          *(inited + 96) = &type metadata for DateFilterOperator;
          v23 = sub_1CA66C9E8();
          *(inited + 104) = v23;
          v24 = swift_allocObject();
          *(inited + 72) = v24;
          *(v24 + 16) = 1;
          memcpy((v24 + 17), __src, 0x47uLL);
          *&v54[7] = v56;
          *&v54[23] = v57;
          *&v54[39] = v58;
          *&v54[55] = v59;
          *(inited + 136) = &type metadata for DateFilterOperator;
          *(inited + 144) = v23;
          v25 = swift_allocObject();
          *(inited + 112) = v25;
          *(v25 + 16) = 0;
          memcpy((v25 + 17), v54, 0x47uLL);
          sub_1CA5C3564(&v56, v52);
          sub_1CA5C3564(&v56, v52);
          sub_1CA5C3564(&v56, v52);
          sub_1CA2B7CAC();
        }

        v26 = swift_allocObject();
        *(v26 + 16) = xmmword_1CA97EDF0;
        *(v26 + 56) = &type metadata for DateIsTodayOperator;
        *(v26 + 64) = sub_1CA66CA3C();
        v27 = [a2 timeUnits];
        v28 = [a2 comparableUnits];
        v29 = [a2 timeUnits];
        v30 = [a2 comparableUnits];
        *(v26 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447C50, &qword_1CA991680);
        *(v26 + 104) = sub_1CA66CA90();
        v31 = swift_allocObject();
        *(v26 + 72) = v31;
        *(v31 + 16) = 1702125892;
        *(v31 + 24) = 0xE400000000000000;
        *(v31 + 32) = v27;
        *(v31 + 40) = v28;
        *(v31 + 48) = xmmword_1CA9908F0;
        *(v31 + 64) = 0;
        *(v31 + 72) = 0;
        *(v31 + 80) = 0x44726568746F6E41;
        *(v31 + 88) = 0xEB00000000657461;
        *(v31 + 96) = v29;
        *(v31 + 104) = v30;
        *(v31 + 112) = 0;
        *(v31 + 120) = 0;
        *(v31 + 128) = xmmword_1CA990900;
        sub_1CA2B7CAC();
        WFContentProperty.displayableTimeUnits.getter();
        v33 = v32;
        if (([a2 tense] & 2) != 0)
        {
          v34 = v55;
          sub_1CA94C218();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v46 = v34[2];
            sub_1CA2E5678();
            v34 = v47;
          }

          v35 = v34[2];
          if (v35 >= v34[3] >> 1)
          {
            sub_1CA2E5678();
            v34 = v48;
          }

          *&v54[24] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447C70, &unk_1CA991690);
          *&v54[32] = sub_1CA66CB88();
          v36 = swift_allocObject();
          *(v36 + 16) = 0x7265626D754ELL;
          *(v36 + 24) = 0xE600000000000000;
          *(v36 + 32) = 1;
          *(v36 + 40) = 1953066581;
          *(v36 + 48) = 0xE400000000000000;
          *v54 = v36;
          *(v36 + 56) = v33;
          v34[2] = v35 + 1;
          sub_1CA27F268(v54, &v34[5 * v35 + 4]);
          v55 = v34;
        }

        if ([a2 tense])
        {
          v11 = v55;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v49 = v11[2];
            sub_1CA2E5678();
            v11 = v50;
          }

          v41 = v11[2];
          if (v41 >= v11[3] >> 1)
          {
            sub_1CA2E5678();
            v11 = v51;
          }

          *&v54[24] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447C60, &qword_1CA991688);
          *&v54[32] = sub_1CA66CB0C();
          v42 = swift_allocObject();
          *(v42 + 16) = 0x7265626D754ELL;
          *(v42 + 24) = 0xE600000000000000;
          *(v42 + 32) = 1;
          *(v42 + 40) = 1953066581;
          *(v42 + 48) = 0xE400000000000000;
          *v54 = v42;
          *(v42 + 56) = v33;
          v11[2] = v41 + 1;
          sub_1CA27F268(v54, &v11[5 * v41 + 4]);
        }

        else
        {

          return v55;
        }

        return v11;
      case 5uLL:
        v37 = [a2 measurementUnitType];
        if (!v37)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v38 = v37;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443940, &unk_1CA982570);
        if (a3)
        {
          v11 = swift_allocObject();
          *(v11 + 1) = xmmword_1CA981310;
          v11[7] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447C00, &qword_1CA991660);
          v11[8] = sub_1CA66C770();
          v39 = swift_allocObject();
          v11[4] = v39;
          *(v39 + 16) = 0x7265626D754ELL;
          *(v39 + 24) = 0xE600000000000000;
          *(v39 + 32) = 1;
          *(v39 + 40) = 0x6D6572757361654DLL;
          *(v39 + 48) = 0xEF74696E55746E65;
          goto LABEL_32;
        }

        v11 = swift_allocObject();
        *(v11 + 1) = xmmword_1CA97EDF0;
        v11[7] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447C00, &qword_1CA991660);
        v11[8] = sub_1CA66C770();
        v43 = swift_allocObject();
        v11[4] = v43;
        *(v43 + 16) = 0x7265626D754ELL;
        *(v43 + 24) = 0xE600000000000000;
        *(v43 + 32) = 1;
        *(v43 + 40) = 0x6D6572757361654DLL;
        *(v43 + 48) = 0xEF74696E55746E65;
        *(v43 + 56) = v38;
        v11[12] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447C10, &qword_1CA991668);
        v11[13] = sub_1CA66C7EC();
        v44 = swift_allocObject();
        v11[9] = v44;
        *(v44 + 16) = 0x7265626D754ELL;
        *(v44 + 24) = 0xE600000000000000;
        *(v44 + 32) = 1;
        *(v44 + 40) = 0x6D6572757361654DLL;
        *(v44 + 48) = 0xEF74696E55746E65;
        *(v44 + 56) = v38;
        v45 = v38;
        break;
      case 6uLL:
        *v54 = 0x7265626D754ELL;
        *&v54[8] = 0xE600000000000000;
        v54[16] = 0;
        strcpy(&v54[24], "ByteCountUnit");
        *&v54[38] = -4864;
        if ((a3 & 1) == 0)
        {
          return sub_1CA669C90(v54, a2, 0);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443940, &unk_1CA982570);
        v11 = swift_allocObject();
        *(v11 + 1) = xmmword_1CA981310;
        v11[7] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447BF0, &qword_1CA991658);
        v11[8] = sub_1CA66C6F4();
        v12 = swift_allocObject();
        v11[4] = v12;
        *(v12 + 16) = 0x7265626D754ELL;
        *(v12 + 24) = 0xE600000000000000;
        *(v12 + 32) = 0;
        strcpy((v12 + 40), "ByteCountUnit");
        *(v12 + 54) = -4864;
        return v11;
      case 7uLL:
        WFContentProperty.displayableTimeUnits.getter();
        v38 = v40;
        *v54 = 0x7265626D754ELL;
        *&v54[8] = 0xE600000000000000;
        v54[16] = 0;
        *&v54[24] = 1953066581;
        *&v54[32] = 0xE400000000000000;
        *&v54[40] = v40;
        if (a3)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443940, &unk_1CA982570);
          v11 = swift_allocObject();
          *(v11 + 1) = xmmword_1CA981310;
          v11[7] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447BE0, &qword_1CA991650);
          v11[8] = sub_1CA66C678();
          v39 = swift_allocObject();
          v11[4] = v39;
          *(v39 + 16) = 0x7265626D754ELL;
          *(v39 + 24) = 0xE600000000000000;
          *(v39 + 32) = 0;
          *(v39 + 40) = 1953066581;
          *(v39 + 48) = 0xE400000000000000;
LABEL_32:
          *(v39 + 56) = v38;
        }

        else
        {
          v11 = sub_1CA66A180(v54, a2, 0);
        }

        break;
      case 8uLL:
        result = sub_1CA94D5F8();
        __break(1u);
        return result;
      default:
        return MEMORY[0x1E69E7CC0];
    }

    return v11;
  }
}

uint64_t sub_1CA666738(void *a1, int a2)
{
  v84 = a2;
  v79 = sub_1CA949F78();
  v3 = *(v79 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v6 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = MEMORY[0x1E69E7CC0];
  v7 = [a1 propertyClasses];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444880, &qword_1CA984340);
  v8 = sub_1CA94C658();

  v9 = *(v8 + 16);
  if (v9)
  {
    v78 = v6;
    v85 = sub_1CA25B3D0(0, &qword_1EDB9F5E0, 0x1E696AD98);
    v86 = 0;
    v77 = (v3 + 8);
    v76 = *MEMORY[0x1E69E1078];
    v10 = 32;
    v81 = xmmword_1CA981310;
    *(&v11 + 1) = 4;
    v80 = xmmword_1CA97EDF0;
    *&v11 = 136315138;
    v75 = v11;
    v12 = &selRef_isInputParameter;
    v82 = v8;
    v83 = a1;
    while (1)
    {
      v13 = *(v8 + v10);
      if (v13 == v85)
      {
        sub_1CA94C438();
        if (qword_1EDB9F5F0 != -1)
        {
          swift_once();
        }

        v26 = qword_1EDB9F690;
        v27 = sub_1CA94C368();
        v28 = sub_1CA94C368();

        v29 = [v26 localizedStringForKey:v27 value:v28 table:0];

        v30 = sub_1CA94C3A8();
        v32 = v31;

        v33 = swift_allocObject();
        *(v33 + 16) = a1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443940, &unk_1CA982570);
        if ((v84 & 1) == 0)
        {
          v25 = swift_allocObject();
          *(v25 + 16) = v80;
          *(v25 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447CD8, &qword_1CA991740);
          *(v25 + 64) = sub_1CA66D194();
          v44 = swift_allocObject();
          *(v25 + 32) = v44;
          v44[2] = &type metadata for RowTemplateFindFilterParameterState.EnumerationNumberValueKey;
          v44[3] = v30;
          v44[4] = v32;
          v44[5] = &unk_1CA991730;
          v44[6] = v33;
          v44[7] = sub_1CA6678DC;
          v44[8] = 0;
          v44[9] = &unk_1CA991738;
          v44[10] = 0;
          *(v25 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447CE8, &unk_1CA991748);
          *(v25 + 104) = sub_1CA66D210();
          v45 = swift_allocObject();
          *(v25 + 72) = v45;
          v45[2] = &type metadata for RowTemplateFindFilterParameterState.EnumerationNumberValueKey;
          v45[3] = v30;
          v45[4] = v32;
          v45[5] = &unk_1CA991730;
          v45[6] = v33;
          v45[7] = sub_1CA6678DC;
          v45[8] = 0;
          v45[9] = &unk_1CA991738;
          goto LABEL_36;
        }

        v25 = swift_allocObject();
        *(v25 + 16) = v81;
        *(v25 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447CD8, &qword_1CA991740);
        *(v25 + 64) = sub_1CA66D194();
        v34 = swift_allocObject();
        *(v25 + 32) = v34;
        v34[2] = &type metadata for RowTemplateFindFilterParameterState.EnumerationNumberValueKey;
        v34[3] = v30;
        v34[4] = v32;
        v34[5] = &unk_1CA991730;
        v34[6] = v33;
        v34[7] = sub_1CA6678DC;
        v34[8] = 0;
        v35 = &unk_1CA991738;
      }

      else if (v13 == sub_1CA25B3D0(0, &qword_1EDB9F758, 0x1E696EA50))
      {
        sub_1CA94C438();
        if (qword_1EDB9F5F0 != -1)
        {
          swift_once();
        }

        v36 = qword_1EDB9F690;
        v37 = sub_1CA94C368();
        v38 = sub_1CA94C368();

        v39 = [v36 localizedStringForKey:v37 value:v38 table:0];

        v40 = sub_1CA94C3A8();
        v42 = v41;

        v43 = swift_allocObject();
        *(v43 + 16) = a1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443940, &unk_1CA982570);
        if ((v84 & 1) == 0)
        {
          v25 = swift_allocObject();
          *(v25 + 16) = v80;
          *(v25 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447CB8, &qword_1CA991718);
          *(v25 + 64) = sub_1CA66D014();
          v56 = swift_allocObject();
          *(v25 + 32) = v56;
          v57 = &type metadata for RowTemplateFindFilterParameterState.EnumerationSpeakableStringValueKey;
          v56[2] = &type metadata for RowTemplateFindFilterParameterState.EnumerationSpeakableStringValueKey;
          v56[3] = v40;
          v58 = &unk_1CA991708;
          v56[4] = v42;
          v56[5] = &unk_1CA991708;
          v59 = sub_1CA667DC0;
          v56[6] = v43;
          v56[7] = sub_1CA667DC0;
          v60 = &unk_1CA991710;
          v56[8] = 0;
          v56[9] = &unk_1CA991710;
          v56[10] = 0;
          *(v25 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447CC8, &qword_1CA991720);
          *(v25 + 104) = sub_1CA66D090();
          goto LABEL_35;
        }

        v25 = swift_allocObject();
        *(v25 + 16) = v81;
        *(v25 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447CB8, &qword_1CA991718);
        *(v25 + 64) = sub_1CA66D014();
        v34 = swift_allocObject();
        *(v25 + 32) = v34;
        v34[2] = &type metadata for RowTemplateFindFilterParameterState.EnumerationSpeakableStringValueKey;
        v34[3] = v40;
        v34[4] = v42;
        v34[5] = &unk_1CA991708;
        v34[6] = v43;
        v34[7] = sub_1CA667DC0;
        v34[8] = 0;
        v35 = &unk_1CA991710;
      }

      else if (v13 == sub_1CA25B3D0(0, &qword_1EDB9FAC0, 0x1E696AEC0))
      {
        sub_1CA94C438();
        if (qword_1EDB9F5F0 != -1)
        {
          swift_once();
        }

        v46 = qword_1EDB9F690;
        v47 = sub_1CA94C368();
        v48 = sub_1CA94C368();

        v49 = [v46 localizedStringForKey:v47 value:v48 table:0];

        v40 = sub_1CA94C3A8();
        v42 = v50;

        v43 = swift_allocObject();
        *(v43 + 16) = a1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443940, &unk_1CA982570);
        if ((v84 & 1) == 0)
        {
          v25 = swift_allocObject();
          *(v25 + 16) = v80;
          *(v25 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447C98, &qword_1CA9916F0);
          *(v25 + 64) = sub_1CA66CE94();
          v61 = swift_allocObject();
          *(v25 + 32) = v61;
          v57 = &type metadata for RowTemplateFindFilterParameterState.EnumerationStringValueKey;
          v61[2] = &type metadata for RowTemplateFindFilterParameterState.EnumerationStringValueKey;
          v61[3] = v40;
          v58 = &unk_1CA9916E0;
          v61[4] = v42;
          v61[5] = &unk_1CA9916E0;
          v59 = sub_1CA668280;
          v61[6] = v43;
          v61[7] = sub_1CA668280;
          v60 = &unk_1CA9916E8;
          v61[8] = 0;
          v61[9] = &unk_1CA9916E8;
          v61[10] = 0;
          *(v25 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447CA8, &qword_1CA9916F8);
          *(v25 + 104) = sub_1CA66CF10();
          goto LABEL_35;
        }

        v25 = swift_allocObject();
        *(v25 + 16) = v81;
        *(v25 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447C98, &qword_1CA9916F0);
        *(v25 + 64) = sub_1CA66CE94();
        v34 = swift_allocObject();
        *(v25 + 32) = v34;
        v34[2] = &type metadata for RowTemplateFindFilterParameterState.EnumerationStringValueKey;
        v34[3] = v40;
        v34[4] = v42;
        v34[5] = &unk_1CA9916E0;
        v34[6] = v43;
        v34[7] = sub_1CA668280;
        v34[8] = 0;
        v35 = &unk_1CA9916E8;
      }

      else
      {
        sub_1CA25B3D0(0, &unk_1EC441810, off_1E836E808);
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v15 = swift_getObjCClassFromMetadata();
        if ([v15 v12[68]])
        {
          sub_1CA94C438();
          if (qword_1EDB9F5F0 != -1)
          {
            swift_once();
          }

          v16 = qword_1EDB9F690;
          v17 = sub_1CA94C368();
          v18 = sub_1CA94C368();

          v19 = [v16 localizedStringForKey:v17 value:v18 table:0];

          v20 = sub_1CA94C3A8();
          v22 = v21;

          v23 = swift_allocObject();
          a1 = v83;
          *(v23 + 16) = v83;
          *(v23 + 24) = v13;
          __src[0] = &type metadata for RowTemplateFindFilterParameterState.EnumerationLinkValueKey;
          __src[1] = v20;
          __src[2] = v22;
          __src[3] = &unk_1CA9916D0;
          __src[4] = v23;
          __src[5] = sub_1CA66E3D4;
          __src[6] = 0;
          __src[7] = &unk_1CA9916B0;
          __src[8] = 0;
          v24 = a1;
          v25 = sub_1CA6687E0(__src);

          goto LABEL_38;
        }

        sub_1CA25B3D0(0, &unk_1EC4417A0, off_1E836E818);
        if (![v15 v12[68]])
        {
          v62 = v78;
          sub_1CA949C58();
          v63 = sub_1CA949F68();
          v64 = sub_1CA94CC18();
          if (os_log_type_enabled(v63, v64))
          {
            v65 = swift_slowAlloc();
            v66 = swift_slowAlloc();
            v87 = v66;
            *v65 = v75;
            v67 = sub_1CA94DA18();
            v69 = sub_1CA26B54C(v67, v68, &v87);

            *(v65 + 4) = v69;
            v12 = &selRef_isInputParameter;
            _os_log_impl(&dword_1CA256000, v63, v64, "Unexpected property class %s in Find/Filter parameter state.", v65, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v66);
            v70 = v66;
            a1 = v83;
            MEMORY[0x1CCAA4BF0](v70, -1, -1);
            MEMORY[0x1CCAA4BF0](v65, -1, -1);
          }

          (*v77)(v62, v79);
          v8 = v82;
          goto LABEL_39;
        }

        sub_1CA94C438();
        if (qword_1EDB9F5F0 != -1)
        {
          swift_once();
        }

        v51 = qword_1EDB9F690;
        v52 = sub_1CA94C368();
        v53 = sub_1CA94C368();

        v54 = [v51 localizedStringForKey:v52 value:v53 table:0];

        v40 = sub_1CA94C3A8();
        v42 = v55;

        v43 = swift_allocObject();
        *(v43 + 16) = a1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443940, &unk_1CA982570);
        if ((v84 & 1) == 0)
        {
          v25 = swift_allocObject();
          *(v25 + 16) = v80;
          *(v25 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447C78, &qword_1CA9916B8);
          *(v25 + 64) = sub_1CA66CC8C();
          v71 = swift_allocObject();
          *(v25 + 32) = v71;
          v57 = &type metadata for RowTemplateFindFilterParameterState.EnumerationLinkValueKey;
          v71[2] = &type metadata for RowTemplateFindFilterParameterState.EnumerationLinkValueKey;
          v71[3] = v40;
          v58 = &unk_1CA9916A8;
          v71[4] = v42;
          v71[5] = &unk_1CA9916A8;
          v59 = sub_1CA66E3D4;
          v71[6] = v43;
          v71[7] = sub_1CA66E3D4;
          v60 = &unk_1CA9916B0;
          v71[8] = 0;
          v71[9] = &unk_1CA9916B0;
          v71[10] = 0;
          *(v25 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447C88, &qword_1CA9916C0);
          *(v25 + 104) = sub_1CA66CD08();
LABEL_35:
          v45 = swift_allocObject();
          *(v25 + 72) = v45;
          v45[2] = v57;
          v45[3] = v40;
          v45[4] = v42;
          v45[5] = v58;
          v45[6] = v43;
          v45[7] = v59;
          v45[8] = 0;
          v45[9] = v60;
LABEL_36:
          v8 = v82;
          a1 = v83;
          v45[10] = 0;
          sub_1CA94C218();

          goto LABEL_37;
        }

        v25 = swift_allocObject();
        *(v25 + 16) = v81;
        *(v25 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447C78, &qword_1CA9916B8);
        *(v25 + 64) = sub_1CA66CC8C();
        v34 = swift_allocObject();
        *(v25 + 32) = v34;
        v34[2] = &type metadata for RowTemplateFindFilterParameterState.EnumerationLinkValueKey;
        v34[3] = v40;
        v34[4] = v42;
        v34[5] = &unk_1CA9916A8;
        v34[6] = v43;
        v34[7] = sub_1CA66E3D4;
        v34[8] = 0;
        v35 = &unk_1CA9916B0;
      }

      v34[9] = v35;
      v34[10] = 0;
LABEL_37:
      v72 = a1;
      v12 = &selRef_isInputParameter;
LABEL_38:
      v73 = v86;
      sub_1CA6603A4(v25, &v88);
      v86 = v73;
      sub_1CA2B7CAC();
LABEL_39:
      v10 += 8;
      if (!--v9)
      {

        return v88;
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1CA667650()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_87_5([*(v0 + 16) possibleValues]);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_70_12(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_6_1(v2);

  return WFContentPropertyPossibleValuesGetter.typedValues.getter();
}

uint64_t sub_1CA6676F4()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v2 = v1;
  v4 = *(v3 + 32);
  v5 = *(v3 + 24);
  v6 = *v0;
  OUTLINED_FUNCTION_13();
  *v7 = v6;
  OUTLINED_FUNCTION_85_7(v8);
  swift_unknownObjectRelease();
  v9 = OUTLINED_FUNCTION_85();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1CA6678DC(void *a1)
{
  v2 = sub_1CA949F78();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 value];
  if (v7 && (v8 = v7, v9 = [v7 number], v8, v9))
  {
    v10 = [v9 stringValue];
    v11 = sub_1CA94C3A8();
  }

  else
  {
    v12 = *MEMORY[0x1E69E10A0];
    sub_1CA949C58();
    v13 = a1;
    v14 = sub_1CA949F68();
    v15 = sub_1CA94CC08();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      *(v16 + 4) = v13;
      *v17 = v13;
      v18 = v13;
      _os_log_impl(&dword_1CA256000, v14, v15, "Unable to determine a display name for a number in %@.", v16, 0xCu);
      sub_1CA30F7DC(v17, &qword_1EC444AE0, &qword_1CA985B70);
      MEMORY[0x1CCAA4BF0](v17, -1, -1);
      MEMORY[0x1CCAA4BF0](v16, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    return 0x6E776F6E6B6E55;
  }

  return v11;
}

uint64_t sub_1CA667B30()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_87_5([*(v0 + 16) possibleValues]);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_70_12(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_6_1(v2);

  return WFContentPropertyPossibleValuesGetter.typedValues.getter();
}

uint64_t sub_1CA667BD4()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v2 = v1;
  v4 = *(v3 + 32);
  v5 = *(v3 + 24);
  v6 = *v0;
  OUTLINED_FUNCTION_13();
  *v7 = v6;
  OUTLINED_FUNCTION_85_7(v8);
  swift_unknownObjectRelease();
  v9 = OUTLINED_FUNCTION_85();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1CA667DC0(void *a1)
{
  v2 = sub_1CA949F78();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 value];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 spokenPhrase];
    v10 = sub_1CA94C3A8();
  }

  else
  {
    v11 = *MEMORY[0x1E69E10A0];
    sub_1CA949C58();
    v12 = a1;
    v13 = sub_1CA949F68();
    v14 = sub_1CA94CC08();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      *(v15 + 4) = v12;
      *v16 = v12;
      v17 = v12;
      _os_log_impl(&dword_1CA256000, v13, v14, "Unable to determine a display name for a speakable string in %@.", v15, 0xCu);
      sub_1CA30F7DC(v16, &qword_1EC444AE0, &qword_1CA985B70);
      MEMORY[0x1CCAA4BF0](v16, -1, -1);
      MEMORY[0x1CCAA4BF0](v15, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    return 0x6E776F6E6B6E55;
  }

  return v10;
}

uint64_t sub_1CA667FF0()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_87_5([*(v0 + 16) possibleValues]);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_70_12(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_6_1(v2);

  return WFContentPropertyPossibleValuesGetter.typedValues.getter();
}

uint64_t sub_1CA668094()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v2 = v1;
  v4 = *(v3 + 32);
  v5 = *(v3 + 24);
  v6 = *v0;
  OUTLINED_FUNCTION_13();
  *v7 = v6;
  OUTLINED_FUNCTION_85_7(v8);
  swift_unknownObjectRelease();
  v9 = OUTLINED_FUNCTION_85();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1CA668280(void *a1)
{
  v1 = [a1 value];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1CA94C3A8();
  v4 = v2;
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = [v5 localizedValue];
    if (v6)
    {
      v7 = v6;

      v3 = sub_1CA94C3A8();
    }
  }

  return v3;
}

uint64_t sub_1CA668344(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1CA668364, 0, 0);
}

uint64_t sub_1CA668364()
{
  OUTLINED_FUNCTION_0();
  *(v0 + 32) = [*(v0 + 16) possibleValues];
  swift_getObjectType();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_6_1(v1);

  return WFContentPropertyPossibleValuesGetter.typedValues.getter();
}

uint64_t sub_1CA668414()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v2 = v1;
  v4 = *(v3 + 40);
  v5 = *(v3 + 32);
  v6 = *v0;
  OUTLINED_FUNCTION_13();
  *v7 = v6;
  *(v9 + 48) = v8;

  swift_unknownObjectRelease();
  v10 = OUTLINED_FUNCTION_85();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

void sub_1CA668514()
{
  v1 = 0;
  v2 = v0[6];
  v25 = MEMORY[0x1E69E7CC0];
  v27 = MEMORY[0x1E69E7CC0];
  v3 = &unk_1EC441810;
  v4 = v2 + 40;
  v5 = off_1E836E808;
  v6 = *(v2 + 16);
LABEL_2:
  v7 = (v4 + 16 * v1);
  while (v6 != v1)
  {
    if (v1 >= *(v2 + 16))
    {
      __break(1u);
      return;
    }

    v8 = *(v7 - 1);
    v9 = *v7;
    if (v9 == 1)
    {
      v14 = v0[3];
      sub_1CA25B3D0(0, v3, v5);
      if (!swift_dynamicCastMetatype())
      {
        goto LABEL_17;
      }

      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v11 = v8;
      if (![ObjCClassFromMetadata isNotes])
      {
        goto LABEL_16;
      }

      v16 = v5;
      v17 = v3;
      v18 = [ObjCClassFromMetadata entityMetadata];
      v19 = [v18 identifier];

      if (!v19)
      {
        sub_1CA94C3A8();
        v19 = sub_1CA94C368();
      }

      v20 = [ObjCClassFromMetadata isNoteFolderEntityIdentifier_];

      v3 = v17;
      v5 = v16;
      v0 = v26;
      if (!v20)
      {
LABEL_16:

        goto LABEL_17;
      }

      v21 = WFNotesFolderLinkValueFromIntentsValue(v11);
      v12 = [objc_allocWithZone(MEMORY[0x1E69ACEC8]) initWithValue:v21 indentationLevel:0];
    }

    else
    {
      if (v9 != 3)
      {
        goto LABEL_17;
      }

      v10 = objc_allocWithZone(MEMORY[0x1E69ACEC8]);
      v11 = v8;
      v12 = [v10 initWithValue:v11 indentationLevel:0];
    }

    v13 = [objc_allocWithZone(WFLinkDynamicOptionSubstitutableState) initWithValue_];

    if (v13)
    {
      MEMORY[0x1CCAA1490]();
      v22 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v22 >> 1)
      {
        OUTLINED_FUNCTION_64(v22);
        sub_1CA94C698();
      }

      ++v1;
      sub_1CA94C6E8();
      v25 = v27;
      v4 = v2 + 40;
      goto LABEL_2;
    }

LABEL_17:
    v7 += 16;
    ++v1;
  }

  v23 = v0[6];

  v24 = v0[1];

  v24(v25);
}

uint64_t sub_1CA6687E0(char *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  v419 = v1;
  v4 = sub_1CA66AC54(v1);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = v4;
  v6 = sub_1CA25B410();
  v7 = 0;
  v8 = v5 & 0xC000000000000001;
  v439 = v5;
  v9 = v5 & 0xFFFFFFFFFFFFFF8;
  v10 = MEMORY[0x1E69E7CC0];
  while (v6 != v7)
  {
    if (v8)
    {
      v11 = MEMORY[0x1CCAA22D0](v7, v439);
    }

    else
    {
      if (v7 >= *(v9 + 16))
      {
        goto LABEL_102;
      }

      v11 = *(v439 + 8 * v7 + 32);
    }

    v12 = v11;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      v478[0] = 0;
      v478[1] = 0xE000000000000000;
      sub_1CA94D408();
      MEMORY[0x1CCAA1300](0xD00000000000005CLL, 0x80000001CA9DC020);
      v256 = WFDefaultLocalizedLabelForContentOperator();
      if (!v256)
      {
        __break(1u);
      }

      v257 = v256;
      v258 = sub_1CA94C3A8();
      v260 = v259;

      MEMORY[0x1CCAA1300](v258, v260);

      result = sub_1CA94D5F8();
      __break(1u);
      return result;
    }

    v13 = sub_1CA94C978();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = *(v10 + 16);
      sub_1CA2E5734();
      v10 = v17;
    }

    v15 = *(v10 + 16);
    v14 = *(v10 + 24);
    v2 = (v15 + 1);
    if (v15 >= v14 >> 1)
    {
      OUTLINED_FUNCTION_64(v14);
      sub_1CA2E5734();
      v10 = v18;
    }

    *(v10 + 16) = v2;
    *(v10 + 8 * v15 + 32) = v13;
    ++v7;
  }

  v19 = 0;
  v20 = *(v10 + 16);
  v21 = MEMORY[0x1E69E7CC0];
  *v340 = xmmword_1CA98EAF0;
  *v301 = xmmword_1CA98EB00;
  v399 = v20;
  while (v20 != v19)
  {
    if (v19 >= *(v10 + 16))
    {
      goto LABEL_103;
    }

    v22 = *(v10 + 8 * v19 + 32);
    switch(v22)
    {
      case 0:
        v485 = *(__src + 8);
        OUTLINED_FUNCTION_6_47();
        OUTLINED_FUNCTION_23_20(v23, v24, v25, v26, v27, v28, v29, v30, v261, v281, v301[0], v301[1], v340[0], v340[1], v379, v399, v419, v439, v459, *(&v459 + 1), v460, v461, v462, v463, v464, v465, v466, v467, *v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478[0], v478[1], v478[2], v478[3], v478[4], v478[5], v478[6], v478[7], v478[8], v479, __srca[0]);
        sub_1CA5A3E5C(&v485, v478);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_2_61();
          v21 = v236;
        }

        OUTLINED_FUNCTION_10_34();
        if (v31)
        {
          OUTLINED_FUNCTION_3_56();
          v21 = v237;
        }

        v468[0] = 0;
        OUTLINED_FUNCTION_36_14(v468, v262, v282, v302, v321, v341, v360, v380, v400, v420, v440, v459, *(&v459 + 1), v460, v461, v462, v463, v464, v465, v466, v467, *v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478[0], v478[1], v478[2], v478[3], v478[4], v478[5], v478[6], v478[7], v478[8], v479, __srca[0]);
        v2 = &qword_1CA991788;
        v461 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447D68, &qword_1CA991788);
        v462 = sub_1CA66D684();
        OUTLINED_FUNCTION_66_6();
        v32 = swift_allocObject();
        OUTLINED_FUNCTION_41_14(v32, v33, v34, v35, v36, v37, v38, v39, v263, v283, v303, v322, v342, v361, v381, v401, v421, v441, v459, *(&v459 + 1), v460, v461, v462, v463, v464, v465, v466, v467, v468[0]);
        OUTLINED_FUNCTION_27_22();
        sub_1CA27F268(&v459, v40 + 32);
        LOBYTE(v478[0]) = 0;
        goto LABEL_51;
      case 1:
        v486 = *(__src + 8);
        OUTLINED_FUNCTION_6_47();
        OUTLINED_FUNCTION_23_20(v155, v156, v157, v158, v159, v160, v161, v162, v261, v281, v301[0], v301[1], v340[0], v340[1], v379, v399, v419, v439, v459, *(&v459 + 1), v460, v461, v462, v463, v464, v465, v466, v467, *v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478[0], v478[1], v478[2], v478[3], v478[4], v478[5], v478[6], v478[7], v478[8], v479, __srca[0]);
        sub_1CA5A3E5C(&v486, v478);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_2_61();
          v21 = v238;
        }

        OUTLINED_FUNCTION_10_34();
        if (v31)
        {
          OUTLINED_FUNCTION_3_56();
          v21 = v239;
        }

        v468[0] = 1;
        OUTLINED_FUNCTION_36_14(v468, v275, v295, v315, v334, v354, v373, v393, v413, v433, v453, v459, *(&v459 + 1), v460, v461, v462, v463, v464, v465, v466, v467, *v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478[0], v478[1], v478[2], v478[3], v478[4], v478[5], v478[6], v478[7], v478[8], v479, __srca[0]);
        v2 = &qword_1EC447D68;
        v58 = &qword_1CA991788;
        v461 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447D68, &qword_1CA991788);
        v462 = sub_1CA66D684();
        OUTLINED_FUNCTION_66_6();
        v163 = swift_allocObject();
        OUTLINED_FUNCTION_41_14(v163, v164, v165, v166, v167, v168, v169, v170, v276, v296, v316, v335, v355, v374, v394, v414, v434, v454, v459, *(&v459 + 1), v460, v461, v462, v463, v464, v465, v466, v467, v468[0]);
        OUTLINED_FUNCTION_27_22();
        sub_1CA27F268(&v459, v171 + 32);
        LOBYTE(v478[0]) = 1;
        v172 = OUTLINED_FUNCTION_36_14(v478, v277, v297, v317, v336, v356, v375, v395, v415, v435, v455, v459, *(&v459 + 1), v460, v461, v462, v463, v464, v465, v466, v467, *v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478[0], v478[1], v478[2], v478[3], v478[4], v478[5], v478[6], v478[7], v478[8], v479, __srca[0]);
        v180 = OUTLINED_FUNCTION_63_11(v172, v173, v174, v175, v176, v177, v178, v179, v278, v298, v318, v337, v357, v376, v396, v416, v436, v456, v459, *(&v459 + 1), v460, v461, v462, v463, v464, v465, v466, v467, v468[0]);
        sub_1CA66DD4C(v180, v181, &qword_1EC447D68, &qword_1CA991788);
        v101 = &qword_1EC447D68;
        break;
      case 2:
        v483 = *(__src + 8);
        OUTLINED_FUNCTION_6_47();
        OUTLINED_FUNCTION_23_20(v127, v128, v129, v130, v131, v132, v133, v134, v261, v281, v301[0], v301[1], v340[0], v340[1], v379, v399, v419, v439, v459, *(&v459 + 1), v460, v461, v462, v463, v464, v465, v466, v467, *v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478[0], v478[1], v478[2], v478[3], v478[4], v478[5], v478[6], v478[7], v478[8], v479, __srca[0]);
        sub_1CA5A3E5C(&v483, v478);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_2_61();
          v21 = v234;
        }

        OUTLINED_FUNCTION_10_34();
        if (v31)
        {
          OUTLINED_FUNCTION_3_56();
          v21 = v235;
        }

        v110 = 2;
        goto LABEL_50;
      case 3:
        v484 = *(__src + 8);
        OUTLINED_FUNCTION_6_47();
        OUTLINED_FUNCTION_23_20(v102, v103, v104, v105, v106, v107, v108, v109, v261, v281, v301[0], v301[1], v340[0], v340[1], v379, v399, v419, v439, v459, *(&v459 + 1), v460, v461, v462, v463, v464, v465, v466, v467, *v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478[0], v478[1], v478[2], v478[3], v478[4], v478[5], v478[6], v478[7], v478[8], v479, __srca[0]);
        sub_1CA5A3E5C(&v484, v478);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_2_61();
          v21 = v231;
        }

        OUTLINED_FUNCTION_10_34();
        if (v31)
        {
          OUTLINED_FUNCTION_3_56();
          v21 = v232;
        }

        v110 = 3;
LABEL_50:
        v468[0] = v110;
        OUTLINED_FUNCTION_36_14(v468, v271, v291, v311, v330, v350, v369, v389, v409, v429, v449, v459, *(&v459 + 1), v460, v461, v462, v463, v464, v465, v466, v467, *v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478[0], v478[1], v478[2], v478[3], v478[4], v478[5], v478[6], v478[7], v478[8], v479, __srca[0]);
        v2 = &qword_1CA991788;
        v461 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447D68, &qword_1CA991788);
        v462 = sub_1CA66D684();
        OUTLINED_FUNCTION_66_6();
        v135 = swift_allocObject();
        OUTLINED_FUNCTION_41_14(v135, v136, v137, v138, v139, v140, v141, v142, v273, v293, v313, v332, v352, v371, v391, v411, v431, v451, v459, *(&v459 + 1), v460, v461, v462, v463, v464, v465, v466, v467, v468[0]);
        OUTLINED_FUNCTION_27_22();
        sub_1CA27F268(&v459, v143 + 32);
        LOBYTE(v478[0]) = v110;
LABEL_51:
        v144 = OUTLINED_FUNCTION_36_14(v478, v264, v284, v304, v323, v343, v362, v382, v402, v422, v442, v459, *(&v459 + 1), v460, v461, v462, v463, v464, v465, v466, v467, *v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478[0], v478[1], v478[2], v478[3], v478[4], v478[5], v478[6], v478[7], v478[8], v479, __srca[0]);
        v152 = OUTLINED_FUNCTION_63_11(v144, v145, v146, v147, v148, v149, v150, v151, v274, v294, v314, v333, v353, v372, v392, v412, v432, v452, v459, *(&v459 + 1), v460, v461, v462, v463, v464, v465, v466, v467, v468[0]);
        sub_1CA66DD4C(v152, v153, &qword_1EC447D68, &qword_1CA991788);
        v101 = &qword_1EC447D68;
        v154 = &qword_1CA991788;
        goto LABEL_74;
      case 4:
        v481 = *(__src + 8);
        OUTLINED_FUNCTION_6_47();
        sub_1CA5A3E5C(&v481, v478);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_2_61();
          v21 = v242;
        }

        OUTLINED_FUNCTION_13_36();
        if (v31)
        {
          OUTLINED_FUNCTION_3_56();
          v21 = v243;
        }

        v478[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447C78, &qword_1CA9916B8);
        v478[4] = sub_1CA66CC8C();
        goto LABEL_95;
      case 5:
        v482 = *(__src + 8);
        OUTLINED_FUNCTION_6_47();
        sub_1CA5A3E5C(&v482, v478);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_2_61();
          v21 = v240;
        }

        OUTLINED_FUNCTION_13_36();
        if (v31)
        {
          OUTLINED_FUNCTION_3_56();
          v21 = v241;
        }

        v478[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447C88, &qword_1CA9916C0);
        v478[4] = sub_1CA66CD08();
LABEL_95:
        v478[0] = swift_allocObject();
        v223 = memcpy((v478[0] + 16), __dst, 0x48uLL);
LABEL_96:
        OUTLINED_FUNCTION_57_11(v223, v224, v225, v226, v227, v228, v229, v230, v261, v281, v301[0], v301[1], v340[0], v340[1], v379, v399, v419, v439, v459, *(&v459 + 1), v460, v461, v462, v463, v464, v465, v466, v467, *v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, *v478);
        goto LABEL_97;
      case 6:
      case 7:
        goto LABEL_104;
      case 8:
        [v419 caseInsensitive];
        v489 = OUTLINED_FUNCTION_64_9();
        OUTLINED_FUNCTION_12_32(v182, v183, v184, v185, v186, v187, v188, v189, v261, v281, v301[0], v301[1], v340[0], v340[1], v379, v399, v419, v439, v459, *(&v459 + 1), v460, v461, v462, v463, v464, v465, v466, v467, *v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478[0], v478[1], v478[2], v478[3], v478[4], v478[5], v478[6], v478[7], v478[8], v479, __srca[0]);
        sub_1CA5A3E5C(&v489, v478);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_2_61();
          v21 = v244;
        }

        OUTLINED_FUNCTION_10_34();
        v20 = v417;
        if (v31)
        {
          OUTLINED_FUNCTION_3_56();
          v21 = v190;
        }

        OUTLINED_FUNCTION_46_12(v190, v191, v192, v193, v194, v195, v196, v197, v279, v299, v319, v338, v358, v377, v397, v417, v437, v457, v459, *(&v459 + 1), v460, v461, v462, v463, v464, v465, v466, v467, v468[0], v469, v470, v471, v472, v473, v474, v475, v476, v477, v478[0], v478[1], v478[2], v478[3], v478[4], v478[5], v478[6], v478[7], v478[8], v479, __srca[0]);
        LOBYTE(v477) = v2;
        v57 = &qword_1EC447D38;
        v58 = &qword_1CA991770;
        v478[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447D38, &qword_1CA991770);
        v478[4] = sub_1CA66D4B4();
        goto LABEL_72;
      case 9:
        [v419 caseInsensitive];
        v490 = OUTLINED_FUNCTION_64_9();
        OUTLINED_FUNCTION_12_32(v111, v112, v113, v114, v115, v116, v117, v118, v261, v281, v301[0], v301[1], v340[0], v340[1], v379, v399, v419, v439, v459, *(&v459 + 1), v460, v461, v462, v463, v464, v465, v466, v467, *v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478[0], v478[1], v478[2], v478[3], v478[4], v478[5], v478[6], v478[7], v478[8], v479, __srca[0]);
        sub_1CA5A3E5C(&v490, v478);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_2_61();
          v21 = v233;
        }

        OUTLINED_FUNCTION_10_34();
        v20 = v410;
        if (v31)
        {
          OUTLINED_FUNCTION_3_56();
          v21 = v119;
        }

        OUTLINED_FUNCTION_46_12(v119, v120, v121, v122, v123, v124, v125, v126, v272, v292, v312, v331, v351, v370, v390, v410, v430, v450, v459, *(&v459 + 1), v460, v461, v462, v463, v464, v465, v466, v467, v468[0], v469, v470, v471, v472, v473, v474, v475, v476, v477, v478[0], v478[1], v478[2], v478[3], v478[4], v478[5], v478[6], v478[7], v478[8], v479, __srca[0]);
        LOBYTE(v477) = v2;
        v57 = &qword_1EC447D28;
        v58 = &qword_1CA991768;
        v478[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447D28, &qword_1CA991768);
        v478[4] = sub_1CA66D438();
LABEL_72:
        v198 = swift_allocObject();
        OUTLINED_FUNCTION_79_6(v198, v199, v200, v201, v202, v203, v204, v205, v266, v286, v306, v325, v345, v364, v384, v404, v424, v444, v459, *(&v459 + 1), v460, v461, v462, v463, v464, v465, v466, v467, v468[0], v469, v470, v471, v472, v473, v474, v475, v476, v477, v478[0]);
        OUTLINED_FUNCTION_27_22();
        sub_1CA27F268(v478, v206 + 32);
        v207 = memcpy(v478, __srca, sizeof(v478));
        LOBYTE(v479) = v2;
        v215 = OUTLINED_FUNCTION_63_11(v207, v208, v209, v210, v211, v212, v213, v214, v280, v300, v320, v339, v359, v378, v398, v418, v438, v458, v459, *(&v459 + 1), v460, v461, v462, v463, v464, v465, v466, v467, v468[0]);
        sub_1CA66DD4C(v215, v216, v57, v58);
        v101 = v57;
        break;
      default:
        switch(v22)
        {
          case 999:
            [v419 caseInsensitive];
            v488 = OUTLINED_FUNCTION_64_9();
            OUTLINED_FUNCTION_12_32(v41, v42, v43, v44, v45, v46, v47, v48, v261, v281, v301[0], v301[1], v340[0], v340[1], v379, v399, v419, v439, v459, *(&v459 + 1), v460, v461, v462, v463, v464, v465, v466, v467, *v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478[0], v478[1], v478[2], v478[3], v478[4], v478[5], v478[6], v478[7], v478[8], v479, __srca[0]);
            sub_1CA5A3E5C(&v488, v478);

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_2_61();
              v21 = v251;
            }

            v20 = v403;
            OUTLINED_FUNCTION_10_34();
            if (v31)
            {
              OUTLINED_FUNCTION_3_56();
              v21 = v49;
            }

            OUTLINED_FUNCTION_46_12(v49, v50, v51, v52, v53, v54, v55, v56, v265, v285, v305, v324, v344, v363, v383, v403, v423, v443, v459, *(&v459 + 1), v460, v461, v462, v463, v464, v465, v466, v467, v468[0], v469, v470, v471, v472, v473, v474, v475, v476, v477, v478[0], v478[1], v478[2], v478[3], v478[4], v478[5], v478[6], v478[7], v478[8], v479, __srca[0]);
            LOBYTE(v477) = v2;
            v57 = &qword_1EC447D48;
            v58 = &qword_1CA991778;
            v478[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447D48, &qword_1CA991778);
            v478[4] = sub_1CA66D530();
            goto LABEL_72;
          case 1000:
            v491 = *(__src + 8);
            OUTLINED_FUNCTION_6_47();
            sub_1CA5A3E5C(&v491, v478);

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_2_61();
              v21 = v252;
            }

            OUTLINED_FUNCTION_13_36();
            if (v31)
            {
              OUTLINED_FUNCTION_3_56();
              v21 = v253;
            }

            v478[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447D18, &qword_1CA991760);
            v478[4] = sub_1CA66D3BC();
            goto LABEL_95;
          case 1001:
            v492 = *(__src + 8);
            OUTLINED_FUNCTION_6_47();
            sub_1CA5A3E5C(&v492, v478);

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_2_61();
              v21 = v247;
            }

            OUTLINED_FUNCTION_13_36();
            if (v31)
            {
              OUTLINED_FUNCTION_3_56();
              v21 = v248;
            }

            v478[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447D08, &qword_1CA991758);
            v478[4] = sub_1CA66D340();
            goto LABEL_95;
          case 1002:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_2_61();
              v21 = v249;
            }

            OUTLINED_FUNCTION_13_36();
            if (v31)
            {
              OUTLINED_FUNCTION_3_56();
              v21 = v250;
            }

            v478[3] = &type metadata for DateIsTodayOperator;
            v223 = sub_1CA66CA3C();
            v478[4] = v223;
            goto LABEL_96;
          case 1003:
            v2 = [v419 timeUnits];
            v217 = [v419 comparableUnits];
            v218 = [v419 timeUnits];
            v219 = [v419 comparableUnits];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_2_61();
              v21 = v245;
            }

            v221 = *(v21 + 16);
            v220 = *(v21 + 24);
            if (v221 >= v220 >> 1)
            {
              OUTLINED_FUNCTION_64(v220);
              sub_1CA2E5678();
              v21 = v246;
            }

            v478[3] = &type metadata for DateBetweenComparisonOperator;
            v478[4] = sub_1CA66D28C();
            v222 = swift_allocObject();
            v478[0] = v222;
            *(v222 + 16) = 0x657461444657;
            *(v222 + 24) = 0xE600000000000000;
            *(v222 + 32) = v2;
            *(v222 + 40) = v217;
            *(v222 + 48) = *v340;
            *(v222 + 64) = 0;
            *(v222 + 72) = 0;
            strcpy((v222 + 80), "WFAnotherDate");
            *(v222 + 94) = -4864;
            *(v222 + 96) = v218;
            *(v222 + 104) = v219;
            *(v222 + 112) = 0;
            *(v222 + 120) = 0;
            *(v222 + 128) = *v301;
            *(v21 + 16) = v221 + 1;
            sub_1CA27F268(v478, v21 + 40 * v221 + 32);
            v20 = v399;
            goto LABEL_97;
          default:
            if (v22 != 99)
            {
              goto LABEL_104;
            }

            [v419 caseInsensitive];
            v487 = OUTLINED_FUNCTION_64_9();
            OUTLINED_FUNCTION_12_32(v59, v60, v61, v62, v63, v64, v65, v66, v261, v281, v301[0], v301[1], v340[0], v340[1], v379, v399, v419, v439, v459, *(&v459 + 1), v460, v461, v462, v463, v464, v465, v466, v467, *v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478[0], v478[1], v478[2], v478[3], v478[4], v478[5], v478[6], v478[7], v478[8], v479, __srca[0]);
            sub_1CA5A3E5C(&v487, v478);

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_2_61();
              v21 = v254;
            }

            OUTLINED_FUNCTION_13_36();
            v20 = v405;
            if (v31)
            {
              OUTLINED_FUNCTION_3_56();
              v21 = v67;
            }

            OUTLINED_FUNCTION_46_12(v67, v68, v69, v70, v71, v72, v73, v74, v267, v287, v307, v326, v346, v365, v385, v405, v425, v445, v459, *(&v459 + 1), v460, v461, v462, v463, v464, v465, v466, v467, v468[0], v469, v470, v471, v472, v473, v474, v475, v476, v477, v478[0], v478[1], v478[2], v478[3], v478[4], v478[5], v478[6], v478[7], v478[8], v479, __srca[0]);
            LOBYTE(v477) = v2;
            v58 = &qword_1CA991780;
            v478[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447D58, &qword_1CA991780);
            v478[4] = sub_1CA66D5AC();
            v75 = swift_allocObject();
            v83 = OUTLINED_FUNCTION_79_6(v75, v76, v77, v78, v79, v80, v81, v82, v268, v288, v308, v327, v347, v366, v386, v406, v426, v446, v459, *(&v459 + 1), v460, v461, v462, v463, v464, v465, v466, v467, v468[0], v469, v470, v471, v472, v473, v474, v475, v476, v477, v478[0]);
            OUTLINED_FUNCTION_57_11(v83, v84, v85, v86, v87, v88, v89, v90, v269, v289, v309, v328, v348, v367, v387, v407, v427, v447, v459, *(&v459 + 1), v460, v461, v462, v463, v464, v465, v466, v467, *v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, *v478);
            v91 = memcpy(v478, __srca, sizeof(v478));
            LOBYTE(v479) = v2;
            v99 = OUTLINED_FUNCTION_63_11(v91, v92, v93, v94, v95, v96, v97, v98, v270, v290, v310, v329, v349, v368, v388, v408, v428, v448, v459, *(&v459 + 1), v460, v461, v462, v463, v464, v465, v466, v467, v468[0]);
            sub_1CA66DD4C(v99, v100, &qword_1EC447D58, &qword_1CA991780);
            v101 = &qword_1EC447D58;
            break;
        }

        break;
    }

    v154 = v58;
LABEL_74:
    sub_1CA30F7DC(v478, v101, v154);
LABEL_97:
    ++v19;
  }

  return v21;
}

uint64_t sub_1CA6694D4()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_87_5([*(v0 + 16) possibleValues]);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_70_12(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_6_1(v2);

  return WFContentPropertyPossibleValuesGetter.typedValues.getter();
}

uint64_t sub_1CA669578()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v2 = v1;
  v4 = *(v3 + 32);
  v5 = *(v3 + 24);
  v6 = *v0;
  OUTLINED_FUNCTION_13();
  *v7 = v6;
  OUTLINED_FUNCTION_85_7(v8);
  swift_unknownObjectRelease();
  v9 = OUTLINED_FUNCTION_85();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1CA669670()
{
  v1 = 0;
  v2 = *(v0 + 40);
  v15 = MEMORY[0x1E69E7CC0];
  v16 = MEMORY[0x1E69E7CC0];
  v3 = v2 + 40;
  v4 = *(v2 + 16);
LABEL_2:
  v5 = (v3 + 16 * v1);
  while (v4 != v1)
  {
    if (v1 >= *(v2 + 16))
    {
      __break(1u);
      return;
    }

    if (*v5 == 3)
    {
      v6 = *(v5 - 1);
      v7 = objc_allocWithZone(MEMORY[0x1E69ACEC8]);
      v8 = v6;
      v9 = [v7 initWithValue:v8 indentationLevel:0];
      v10 = [objc_allocWithZone(WFLinkDynamicOptionSubstitutableState) initWithValue_];

      if (v10)
      {
        MEMORY[0x1CCAA1490]();
        v11 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v11 >> 1)
        {
          OUTLINED_FUNCTION_64(v11);
          sub_1CA94C698();
        }

        ++v1;
        sub_1CA94C6E8();
        v15 = v16;
        v3 = v2 + 40;
        goto LABEL_2;
      }
    }

    v5 += 16;
    ++v1;
  }

  v12 = *(v14 + 40);

  v13 = *(v14 + 8);

  v13(v15);
}

uint64_t sub_1CA66980C(void *a1)
{
  v1 = [a1 value];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 title];
    v4 = [v3 wf_localizedString];

    sub_1CA94C3A8();
  }

  return OUTLINED_FUNCTION_52_0();
}

uint64_t sub_1CA6698A8(uint64_t a1, uint64_t a2, char a3, id a4, char a5)
{
  v9 = [a4 isIrrational];
  if (v9)
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    sub_1CA94C218();
    sub_1CA2E5678();
    v10 = v11;
    v12 = *(v11 + 16);
    v13 = v12 + 1;
    if (v12 >= *(v11 + 24) >> 1)
    {
      sub_1CA2E5678();
      v10 = v36;
    }

    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444E40, &qword_1CA98F950);
    v44 = sub_1CA66D9E8();
    *&v41 = a1;
    *(&v41 + 1) = a2;
    v42 = a3 & 1;
    *(v10 + 16) = v13;
    sub_1CA27F268(&v41, v10 + 40 * v12 + 32);
    if ((a5 & 1) == 0)
    {
      v14 = *(v10 + 24);
      sub_1CA94C218();
      if ((v12 + 2) > (v14 >> 1))
      {
        sub_1CA2E5678();
        v10 = v39;
      }

      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447530, &unk_1CA98F958);
      v44 = sub_1CA66DA64();
      *&v41 = a1;
      *(&v41 + 1) = a2;
      v42 = a3 & 1;
      *(v10 + 16) = v12 + 2;
      sub_1CA27F268(&v41, v10 + 40 * v13 + 32);
    }
  }

  sub_1CA94C218();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v32 = *(v10 + 16);
    sub_1CA2E5678();
    v10 = v33;
  }

  v15 = *(v10 + 16);
  v16 = v15 + 1;
  v17 = a3;
  if (v15 >= *(v10 + 24) >> 1)
  {
    sub_1CA2E5678();
    v10 = v34;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444E30, &unk_1CA985F40);
  v43 = v18;
  v19 = sub_1CA66DAE0();
  v44 = v19;
  v20 = swift_allocObject();
  *&v41 = v20;
  *(v20 + 16) = 2;
  v21 = a1;
  *(v20 + 24) = a1;
  *(v20 + 32) = a2;
  v22 = v17 & 1;
  *(v20 + 40) = v22;
  *(v10 + 16) = v16;
  sub_1CA27F268(&v41, v10 + 40 * v15 + 32);
  v40 = v9;
  if ((v9 & 1) == 0)
  {
    v23 = *(v10 + 24);
    sub_1CA94C218();
    if ((v15 + 2) > (v23 >> 1))
    {
      sub_1CA2E5678();
      v10 = v37;
    }

    v43 = v18;
    v44 = v19;
    v24 = swift_allocObject();
    *&v41 = v24;
    *(v24 + 16) = 3;
    *(v24 + 24) = a1;
    *(v24 + 32) = a2;
    *(v24 + 40) = v22;
    *(v10 + 16) = v15 + 2;
    sub_1CA27F268(&v41, v10 + 40 * v16 + 32);
  }

  v26 = *(v10 + 16);
  v25 = *(v10 + 24);
  v27 = v26 + 1;
  sub_1CA94C218();
  if (v26 >= v25 >> 1)
  {
    sub_1CA2E5678();
    v10 = v35;
  }

  v43 = v18;
  v44 = v19;
  v28 = swift_allocObject();
  *&v41 = v28;
  *(v28 + 16) = 0;
  *(v28 + 24) = v21;
  *(v28 + 32) = a2;
  *(v28 + 40) = v22;
  *(v10 + 16) = v27;
  sub_1CA27F268(&v41, v10 + 40 * v26 + 32);
  if ((v40 & 1) == 0)
  {
    v29 = *(v10 + 24);
    sub_1CA94C218();
    if ((v26 + 2) > (v29 >> 1))
    {
      sub_1CA2E5678();
      v10 = v38;
    }

    v43 = v18;
    v44 = v19;
    v30 = swift_allocObject();
    *&v41 = v30;
    *(v30 + 16) = 1;
    *(v30 + 24) = v21;
    *(v30 + 32) = a2;
    *(v30 + 40) = v22;
    *(v10 + 16) = v26 + 2;
    sub_1CA27F268(&v41, v10 + 40 * v27 + 32);
  }

  return v10;
}

uint64_t sub_1CA669C90(uint64_t *a1, id a2, char a3)
{
  v5 = *a1;
  v6 = a1[1];
  v38 = *(a1 + 16);
  v7 = (a1 + 3);
  v39 = a1[3];
  v8 = a1[4];
  v9 = [a2 isIrrational];
  if (v9)
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v47 = *a1;
    v48 = *(a1 + 16);
    v46 = *v7;
    sub_1CA66DB5C(&v47, &v40);
    sub_1CA66DBB8(&v46, &v40);
    sub_1CA2E5678();
    v10 = v11;
    v12 = *(v11 + 16);
    v37 = v12 + 1;
    if (v12 >= *(v11 + 24) >> 1)
    {
      sub_1CA2E5678();
      v10 = v33;
    }

    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447BF0, &qword_1CA991658);
    v42 = sub_1CA66C6F4();
    v13 = swift_allocObject();
    *&v40 = v13;
    *(v13 + 16) = v5;
    *(v13 + 24) = v6;
    *(v13 + 32) = v38 & 1;
    *(v13 + 40) = v39;
    *(v13 + 48) = v8;
    *(v10 + 16) = v37;
    sub_1CA27F268(&v40, v10 + 40 * v12 + 32);
    if ((a3 & 1) == 0)
    {
      sub_1CA66DB5C(&v47, &v40);
      sub_1CA66DBB8(&v46, &v40);
      if ((v12 + 2) > *(v10 + 24) >> 1)
      {
        sub_1CA2E5678();
        v10 = v36;
      }

      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447D98, &qword_1CA9917B8);
      v42 = sub_1CA66DC14();
      v14 = swift_allocObject();
      *&v40 = v14;
      *(v14 + 16) = v5;
      *(v14 + 24) = v6;
      *(v14 + 32) = v38 & 1;
      *(v14 + 40) = v39;
      *(v14 + 48) = v8;
      *(v10 + 16) = v12 + 2;
      sub_1CA27F268(&v40, v10 + 40 * v37 + 32);
    }
  }

  v15 = *a1;
  v45 = *(a1 + 16);
  v43 = *v7;
  v44 = v15;
  sub_1CA66DB5C(&v44, &v40);
  sub_1CA66DBB8(&v43, &v40);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v29 = *(v10 + 16);
    sub_1CA2E5678();
    v10 = v30;
  }

  v16 = *(v10 + 16);
  v17 = v16 + 1;
  if (v16 >= *(v10 + 24) >> 1)
  {
    sub_1CA2E5678();
    v10 = v31;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DA8, &qword_1CA9917C0);
  v41 = v18;
  v19 = sub_1CA66DCD0();
  v42 = v19;
  v20 = swift_allocObject();
  *&v40 = v20;
  *(v20 + 16) = 2;
  *(v20 + 24) = v5;
  *(v20 + 32) = v6;
  v21 = v38 & 1;
  *(v20 + 40) = v38 & 1;
  *(v20 + 48) = v39;
  *(v20 + 56) = v8;
  *(v10 + 16) = v17;
  sub_1CA27F268(&v40, v10 + 40 * v16 + 32);
  if ((v9 & 1) == 0)
  {
    sub_1CA66DB5C(&v44, &v40);
    sub_1CA66DBB8(&v43, &v40);
    v22 = v16 + 2;
    if (v22 > *(v10 + 24) >> 1)
    {
      sub_1CA2E5678();
      v10 = v34;
    }

    v41 = v18;
    v42 = v19;
    v23 = swift_allocObject();
    *&v40 = v23;
    *(v23 + 16) = 3;
    *(v23 + 24) = v5;
    *(v23 + 32) = v6;
    *(v23 + 40) = v21;
    *(v23 + 48) = v39;
    *(v23 + 56) = v8;
    *(v10 + 16) = v22;
    sub_1CA27F268(&v40, v10 + 40 * v17 + 32);
  }

  sub_1CA66DB5C(&v44, &v40);
  sub_1CA66DBB8(&v43, &v40);
  v24 = *(v10 + 16);
  v25 = v24 + 1;
  if (v24 >= *(v10 + 24) >> 1)
  {
    sub_1CA2E5678();
    v10 = v32;
  }

  v41 = v18;
  v42 = v19;
  v26 = swift_allocObject();
  *&v40 = v26;
  *(v26 + 16) = 0;
  *(v26 + 24) = v5;
  *(v26 + 32) = v6;
  *(v26 + 40) = v21;
  *(v26 + 48) = v39;
  *(v26 + 56) = v8;
  *(v10 + 16) = v25;
  sub_1CA27F268(&v40, v10 + 40 * v24 + 32);
  if ((v9 & 1) == 0)
  {
    sub_1CA66DB5C(&v44, &v40);
    sub_1CA66DBB8(&v43, &v40);
    if ((v24 + 2) > *(v10 + 24) >> 1)
    {
      sub_1CA2E5678();
      v10 = v35;
    }

    v41 = v18;
    v42 = v19;
    v27 = swift_allocObject();
    *&v40 = v27;
    *(v27 + 16) = 1;
    *(v27 + 24) = v5;
    *(v27 + 32) = v6;
    *(v27 + 40) = v21;
    *(v27 + 48) = v39;
    *(v27 + 56) = v8;
    *(v10 + 16) = v24 + 2;
    sub_1CA27F268(&v40, v10 + 40 * v25 + 32);
  }

  return v10;
}

uint64_t sub_1CA66A180(uint64_t *a1, id a2, char a3)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = *(a1 + 16);
  v8 = (a1 + 3);
  v59 = a1[3];
  v9 = a1[4];
  v10 = a1[5];
  v57 = [a2 isIrrational];
  if (v57)
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v12 = *a1;
    v72 = *(a1 + 16);
    v70 = *v8;
    v71 = v12;
    v69 = v10;
    sub_1CA66DB5C(&v71, &v62);
    sub_1CA5A3E5C(&v70, &v62);
    sub_1CA66DD4C(&v69, &v62, &qword_1EC447DB8, &qword_1CA9917C8);
    sub_1CA2E5678();
    v11 = v13;
    v14 = *(v13 + 16);
    v53 = v14 + 1;
    if (v14 >= *(v13 + 24) >> 1)
    {
      sub_1CA2E5678();
      v11 = v49;
    }

    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447BE0, &qword_1CA991650);
    v64 = sub_1CA66C678();
    v15 = swift_allocObject();
    *&v62 = v15;
    *(v15 + 16) = v6;
    *(v15 + 24) = v5;
    v16 = v7 & 1;
    *(v15 + 32) = v16;
    *(v15 + 40) = v59;
    *(v15 + 48) = v9;
    *(v15 + 56) = v10;
    *(v11 + 16) = v53;
    sub_1CA27F268(&v62, v11 + 40 * v14 + 32);
    if ((a3 & 1) == 0)
    {
      sub_1CA66DB5C(&v71, &v62);
      sub_1CA5A3E5C(&v70, &v62);
      sub_1CA66DD4C(&v69, &v62, &qword_1EC447DB8, &qword_1CA9917C8);
      if ((v14 + 2) > *(v11 + 24) >> 1)
      {
        sub_1CA2E5678();
        v11 = v52;
      }

      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DC0, &qword_1CA9917D0);
      v64 = sub_1CA66DDB4();
      v17 = swift_allocObject();
      *&v62 = v17;
      *(v17 + 16) = v6;
      *(v17 + 24) = v5;
      *(v17 + 32) = v16;
      *(v17 + 40) = v59;
      *(v17 + 48) = v9;
      *(v17 + 56) = v10;
      *(v11 + 16) = v14 + 2;
      sub_1CA27F268(&v62, v11 + 40 * v53 + 32);
    }
  }

  v18 = *a1;
  v68 = *(a1 + 16);
  v66 = *v8;
  v67 = v18;
  v20 = a1[4];
  v19 = a1[5];
  v65 = v19;
  v22 = *a1;
  v21 = a1[1];
  v61 = v68;
  v54 = a1[3];
  sub_1CA66DB5C(&v67, &v62);
  sub_1CA5A3E5C(&v66, &v62);
  sub_1CA66DD4C(&v65, &v62, &qword_1EC447DB8, &qword_1CA9917C8);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v45 = *(v11 + 16);
    sub_1CA2E5678();
    v11 = v46;
  }

  v23 = *(v11 + 16);
  if (v23 >= *(v11 + 24) >> 1)
  {
    sub_1CA2E5678();
    v11 = v47;
  }

  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447DD0, &qword_1CA9917D8);
  v63 = v24;
  v60 = sub_1CA66DE70();
  v64 = v60;
  v25 = swift_allocObject();
  *&v62 = v25;
  *(v25 + 16) = 2;
  *(v25 + 24) = v22;
  *(v25 + 32) = v21;
  *(v25 + 40) = v61;
  *(v25 + 48) = v54;
  *(v25 + 56) = v20;
  *(v25 + 64) = v19;
  *(v11 + 16) = v23 + 1;
  sub_1CA27F268(&v62, v11 + 40 * v23 + 32);
  if ((v57 & 1) == 0)
  {
    v26 = *a1;
    v27 = a1[1];
    v28 = *(a1 + 16);
    v29 = a1[3];
    v55 = *(a1 + 2);
    sub_1CA66DB5C(&v67, &v62);
    sub_1CA5A3E5C(&v66, &v62);
    sub_1CA66DD4C(&v65, &v62, &qword_1EC447DB8, &qword_1CA9917C8);
    v30 = *(v11 + 16);
    if (v30 >= *(v11 + 24) >> 1)
    {
      sub_1CA2E5678();
      v11 = v50;
    }

    v63 = v24;
    v64 = v60;
    v31 = swift_allocObject();
    *&v62 = v31;
    *(v31 + 16) = 3;
    *(v31 + 24) = v26;
    *(v31 + 32) = v27;
    *(v31 + 40) = v28 & 1;
    *(v31 + 48) = v29;
    *(v31 + 56) = v55;
    *(v11 + 16) = v30 + 1;
    sub_1CA27F268(&v62, v11 + 40 * v30 + 32);
  }

  v32 = *a1;
  v33 = a1[1];
  v34 = *(a1 + 16);
  v35 = a1[3];
  v56 = *(a1 + 2);
  sub_1CA66DB5C(&v67, &v62);
  sub_1CA5A3E5C(&v66, &v62);
  sub_1CA66DD4C(&v65, &v62, &qword_1EC447DB8, &qword_1CA9917C8);
  v36 = *(v11 + 16);
  if (v36 >= *(v11 + 24) >> 1)
  {
    sub_1CA2E5678();
    v11 = v48;
  }

  v63 = v24;
  v64 = v60;
  v37 = swift_allocObject();
  *&v62 = v37;
  *(v37 + 16) = 0;
  *(v37 + 24) = v32;
  *(v37 + 32) = v33;
  *(v37 + 40) = v34 & 1;
  *(v37 + 48) = v35;
  *(v37 + 56) = v56;
  *(v11 + 16) = v36 + 1;
  sub_1CA27F268(&v62, v11 + 40 * v36 + 32);
  if ((v57 & 1) == 0)
  {
    v38 = *a1;
    v39 = a1[1];
    v40 = *(a1 + 16);
    v41 = a1[3];
    v58 = *(a1 + 2);
    sub_1CA66DB5C(&v67, &v62);
    sub_1CA5A3E5C(&v66, &v62);
    sub_1CA66DD4C(&v65, &v62, &qword_1EC447DB8, &qword_1CA9917C8);
    v42 = *(v11 + 16);
    if (v42 >= *(v11 + 24) >> 1)
    {
      sub_1CA2E5678();
      v11 = v51;
    }

    v63 = v24;
    v64 = v60;
    v43 = swift_allocObject();
    *&v62 = v43;
    *(v43 + 16) = 1;
    *(v43 + 24) = v38;
    *(v43 + 32) = v39;
    *(v43 + 40) = v40 & 1;
    *(v43 + 48) = v41;
    *(v43 + 56) = v58;
    *(v11 + 16) = v42 + 1;
    sub_1CA27F268(&v62, v11 + 40 * v42 + 32);
  }

  return v11;
}

uint64_t sub_1CA66A7AC(uint64_t a1, uint64_t a2, char a3, id a4, char a5)
{
  if (![a4 userInfo])
  {
    goto LABEL_12;
  }

  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (!v10)
  {
    goto LABEL_10;
  }

  if ([v10 objectForKey_])
  {
    sub_1CA94D258();
    swift_unknownObjectRelease();
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
  }

  v23[0] = v21;
  v23[1] = v22;
  if (*(&v22 + 1))
  {
    sub_1CA25B3D0(0, &qword_1EDB9F5E0, 0x1E696AD98);
    if (swift_dynamicCast())
    {
      v11 = [v20 BOOLValue];

      if (v11)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443940, &unk_1CA982570);
        v12 = swift_allocObject();
        *(v12 + 16) = xmmword_1CA97EDF0;
        sub_1CA94C218();
        v13 = [a4 caseInsensitive];
        *(v12 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444E20, &unk_1CA9917A0);
        *(v12 + 64) = sub_1CA66D7F8();
        *(v12 + 32) = a1;
        *(v12 + 40) = a2;
        *(v12 + 48) = a3;
        *(v12 + 49) = v13;
        sub_1CA94C218();
        v14 = [a4 caseInsensitive];
        *(v12 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447420, &unk_1CA98F890);
        *(v12 + 104) = sub_1CA66D874();
        *(v12 + 72) = a1;
        *(v12 + 80) = a2;
        *(v12 + 88) = a3;
        *(v12 + 89) = v14;
        swift_unknownObjectRelease();
        return v12;
      }
    }

LABEL_10:
    swift_unknownObjectRelease();
    goto LABEL_12;
  }

  swift_unknownObjectRelease();
  sub_1CA30F7DC(v23, &unk_1EC444650, &unk_1CA981C70);
LABEL_12:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443940, &unk_1CA982570);
  if (a5)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1CA981310;
    *(v12 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4473F0, &unk_1CA991790);
    *(v12 + 64) = sub_1CA66D700();
    *(v12 + 32) = a1;
    *(v12 + 40) = a2;
    *(v12 + 48) = a3;
    sub_1CA94C218();
  }

  else
  {
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1CA981380;
    *(v12 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4473F0, &unk_1CA991790);
    *(v12 + 64) = sub_1CA66D700();
    *(v12 + 32) = a1;
    *(v12 + 40) = a2;
    *(v12 + 48) = a3;
    *(v12 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447400, &unk_1CA98F880);
    *(v12 + 104) = sub_1CA66D77C();
    *(v12 + 72) = a1;
    *(v12 + 80) = a2;
    *(v12 + 88) = a3;
    swift_bridgeObjectRetain_n();
    v15 = [a4 caseInsensitive];
    *(v12 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444E20, &unk_1CA9917A0);
    *(v12 + 144) = sub_1CA66D7F8();
    *(v12 + 112) = a1;
    *(v12 + 120) = a2;
    *(v12 + 128) = a3;
    *(v12 + 129) = v15;
    sub_1CA94C218();
    v16 = [a4 caseInsensitive];
    *(v12 + 176) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447420, &unk_1CA98F890);
    *(v12 + 184) = sub_1CA66D874();
    *(v12 + 152) = a1;
    *(v12 + 160) = a2;
    *(v12 + 168) = a3;
    *(v12 + 169) = v16;
    sub_1CA94C218();
    v17 = [a4 caseInsensitive];
    *(v12 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447430, &qword_1CA9917B0);
    *(v12 + 224) = sub_1CA66D8F0();
    *(v12 + 192) = a1;
    *(v12 + 200) = a2;
    *(v12 + 208) = a3;
    *(v12 + 209) = v17;
    sub_1CA94C218();
    v18 = [a4 caseInsensitive];
    *(v12 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447440, &qword_1CA98F8A0);
    *(v12 + 264) = sub_1CA66D96C();
    *(v12 + 232) = a1;
    *(v12 + 240) = a2;
    *(v12 + 248) = a3;
    *(v12 + 249) = v18;
  }

  return v12;
}

id sub_1CA66ABCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = sub_1CA94C368();

  v10 = [v5 initWithContentItemClass:ObjCClassFromMetadata contentPropertyName:v9 comparisonOperator:a4 removable:a5 & 1];

  return v10;
}

uint64_t sub_1CA66AC54(void *a1)
{
  v1 = [a1 allowedOperators];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1CA25B3D0(0, &qword_1EDB9F5E0, 0x1E696AD98);
  v3 = sub_1CA94C658();

  return v3;
}

uint64_t sub_1CA66ACC4(void *a1)
{
  v1 = [a1 localizedNegativeName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1CA94C3A8();

  return v3;
}

unint64_t sub_1CA66AD28()
{
  result = qword_1EC447B50;
  if (!qword_1EC447B50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC444470, &unk_1CA983510);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447B50);
  }

  return result;
}

unint64_t sub_1CA66AD90()
{
  result = qword_1EC447B60;
  if (!qword_1EC447B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447B60);
  }

  return result;
}

unint64_t sub_1CA66ADE8()
{
  result = qword_1EC447B68;
  if (!qword_1EC447B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447B68);
  }

  return result;
}

unint64_t sub_1CA66AE3C(uint64_t a1)
{
  result = sub_1CA66AE64();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA66AE64()
{
  result = qword_1EC447B70;
  if (!qword_1EC447B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447B70);
  }

  return result;
}

unint64_t sub_1CA66AEB8(uint64_t a1)
{
  result = sub_1CA66AEE0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA66AEE0()
{
  result = qword_1EC447B78;
  if (!qword_1EC447B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447B78);
  }

  return result;
}

unint64_t sub_1CA66AF38()
{
  result = qword_1EC447B80;
  if (!qword_1EC447B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447B80);
  }

  return result;
}

unint64_t sub_1CA66AF8C(uint64_t a1)
{
  result = sub_1CA66AFB4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA66AFB4()
{
  result = qword_1EC447B88;
  if (!qword_1EC447B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447B88);
  }

  return result;
}

unint64_t sub_1CA66B008(uint64_t a1)
{
  result = sub_1CA66B030();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA66B030()
{
  result = qword_1EC447B90;
  if (!qword_1EC447B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447B90);
  }

  return result;
}

unint64_t sub_1CA66B088()
{
  result = qword_1EC447B98;
  if (!qword_1EC447B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447B98);
  }

  return result;
}

unint64_t sub_1CA66B0DC(uint64_t a1)
{
  result = sub_1CA66B104();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA66B104()
{
  result = qword_1EC447BA0;
  if (!qword_1EC447BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447BA0);
  }

  return result;
}

unint64_t sub_1CA66B158(uint64_t a1)
{
  result = sub_1CA66B180();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA66B180()
{
  result = qword_1EC447BA8;
  if (!qword_1EC447BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447BA8);
  }

  return result;
}

unint64_t sub_1CA66B1D8()
{
  result = qword_1EC447BB0;
  if (!qword_1EC447BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447BB0);
  }

  return result;
}

unint64_t sub_1CA66B22C(uint64_t a1)
{
  result = sub_1CA66B254();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA66B254()
{
  result = qword_1EC447BB8;
  if (!qword_1EC447BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447BB8);
  }

  return result;
}

unint64_t sub_1CA66B2A8(uint64_t a1)
{
  result = sub_1CA66B2D0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA66B2D0()
{
  result = qword_1EC447BC0;
  if (!qword_1EC447BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447BC0);
  }

  return result;
}

unint64_t sub_1CA66B328()
{
  result = qword_1EC447BC8;
  if (!qword_1EC447BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447BC8);
  }

  return result;
}

unint64_t sub_1CA66B37C(uint64_t a1)
{
  result = sub_1CA66B3A4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA66B3A4()
{
  result = qword_1EC441F10;
  if (!qword_1EC441F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441F10);
  }

  return result;
}

unint64_t sub_1CA66B3F8(uint64_t a1)
{
  result = sub_1CA66B420();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA66B420()
{
  result = qword_1EC441F28;
  if (!qword_1EC441F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441F28);
  }

  return result;
}

unint64_t sub_1CA66B478()
{
  result = qword_1EC441F20;
  if (!qword_1EC441F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441F20);
  }

  return result;
}

unint64_t sub_1CA66B4CC(uint64_t a1)
{
  result = sub_1CA66B4F4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA66B4F4()
{
  result = qword_1EC441FC8;
  if (!qword_1EC441FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441FC8);
  }

  return result;
}

unint64_t sub_1CA66B548(uint64_t a1)
{
  result = sub_1CA66B570();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA66B570()
{
  result = qword_1EC441FE0;
  if (!qword_1EC441FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441FE0);
  }

  return result;
}

unint64_t sub_1CA66B5C8()
{
  result = qword_1EC441FD8;
  if (!qword_1EC441FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441FD8);
  }

  return result;
}

unint64_t sub_1CA66B61C(uint64_t a1)
{
  result = sub_1CA66B644();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA66B644()
{
  result = qword_1EC441F30;
  if (!qword_1EC441F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441F30);
  }

  return result;
}

unint64_t sub_1CA66B698(uint64_t a1)
{
  result = sub_1CA66B6C0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA66B6C0()
{
  result = qword_1EC441F48;
  if (!qword_1EC441F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441F48);
  }

  return result;
}

unint64_t sub_1CA66B718()
{
  result = qword_1EC441F40;
  if (!qword_1EC441F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441F40);
  }

  return result;
}

unint64_t sub_1CA66B76C(uint64_t a1)
{
  result = sub_1CA66B794();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA66B794()
{
  result = qword_1EC441F58;
  if (!qword_1EC441F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441F58);
  }

  return result;
}

unint64_t sub_1CA66B7E8(uint64_t a1)
{
  result = sub_1CA66B810();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA66B810()
{
  result = qword_1EC441F70;
  if (!qword_1EC441F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441F70);
  }

  return result;
}

unint64_t sub_1CA66B868()
{
  result = qword_1EC441F68;
  if (!qword_1EC441F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441F68);
  }

  return result;
}

unint64_t sub_1CA66B8BC(uint64_t a1)
{
  result = sub_1CA66B8E4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA66B8E4()
{
  result = qword_1EC441F80;
  if (!qword_1EC441F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441F80);
  }

  return result;
}

unint64_t sub_1CA66B938(uint64_t a1)
{
  result = sub_1CA66B960();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA66B960()
{
  result = qword_1EC441F98;
  if (!qword_1EC441F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441F98);
  }

  return result;
}

unint64_t sub_1CA66B9B8()
{
  result = qword_1EC441F90;
  if (!qword_1EC441F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441F90);
  }

  return result;
}

unint64_t sub_1CA66BA0C(uint64_t a1)
{
  result = sub_1CA66BA34();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA66BA34()
{
  result = qword_1EC441EB8;
  if (!qword_1EC441EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441EB8);
  }

  return result;
}

unint64_t sub_1CA66BA88(uint64_t a1)
{
  result = sub_1CA66BAB0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA66BAB0()
{
  result = qword_1EC441ED0;
  if (!qword_1EC441ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441ED0);
  }

  return result;
}

unint64_t sub_1CA66BB08()
{
  result = qword_1EC441EC8;
  if (!qword_1EC441EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441EC8);
  }

  return result;
}

unint64_t sub_1CA66BB5C(uint64_t a1)
{
  result = sub_1CA66BB84();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA66BB84()
{
  result = qword_1EC441E90;
  if (!qword_1EC441E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441E90);
  }

  return result;
}

unint64_t sub_1CA66BBD8(uint64_t a1)
{
  result = sub_1CA66BC00();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA66BC00()
{
  result = qword_1EC441EA8;
  if (!qword_1EC441EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441EA8);
  }

  return result;
}

unint64_t sub_1CA66BC58()
{
  result = qword_1EC441EA0;
  if (!qword_1EC441EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441EA0);
  }

  return result;
}

unint64_t sub_1CA66BCAC(uint64_t a1)
{
  result = sub_1CA66BCD4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA66BCD4()
{
  result = qword_1EC441E68;
  if (!qword_1EC441E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441E68);
  }

  return result;
}

unint64_t sub_1CA66BD28(uint64_t a1)
{
  result = sub_1CA66BD50();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA66BD50()
{
  result = qword_1EC441E80;
  if (!qword_1EC441E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441E80);
  }

  return result;
}

unint64_t sub_1CA66BDA8()
{
  result = qword_1EC441E78;
  if (!qword_1EC441E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441E78);
  }

  return result;
}

unint64_t sub_1CA66BDFC(uint64_t a1)
{
  result = sub_1CA66BE24();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA66BE24()
{
  result = qword_1EC441FA0;
  if (!qword_1EC441FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441FA0);
  }

  return result;
}

unint64_t sub_1CA66BE78(uint64_t a1)
{
  result = sub_1CA66BEA0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA66BEA0()
{
  result = qword_1EC441FB8;
  if (!qword_1EC441FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441FB8);
  }

  return result;
}

unint64_t sub_1CA66BEF8()
{
  result = qword_1EC441FB0;
  if (!qword_1EC441FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441FB0);
  }

  return result;
}

unint64_t sub_1CA66BF4C(uint64_t a1)
{
  result = sub_1CA66BF74();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA66BF74()
{
  result = qword_1EC441ED8;
  if (!qword_1EC441ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441ED8);
  }

  return result;
}

unint64_t sub_1CA66BFC8(uint64_t a1)
{
  result = sub_1CA66BFF0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA66BFF0()
{
  result = qword_1EC441F00;
  if (!qword_1EC441F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441F00);
  }

  return result;
}

unint64_t sub_1CA66C048()
{
  result = qword_1EC441EF8;
  if (!qword_1EC441EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441EF8);
  }

  return result;
}

unint64_t sub_1CA66C09C(uint64_t a1)
{
  result = sub_1CA66C0C4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA66C0C4()
{
  result = qword_1EC441E60;
  if (!qword_1EC441E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441E60);
  }

  return result;
}

uint64_t sub_1CA66C160(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_5_3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1CA66C1B0(uint64_t a1)
{
  result = sub_1CA66C1D8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA66C1D8()
{
  result = qword_1EC441E40;
  if (!qword_1EC441E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441E40);
  }

  return result;
}

unint64_t sub_1CA66C230()
{
  result = qword_1EC441E58;
  if (!qword_1EC441E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441E58);
  }

  return result;
}

_BYTE *_s21SerializationStrategyOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for RowTemplateFindFilterParameterState.SerializationKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for RowTemplateFindFilterParameterState.SerializationKey(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1CA66C5CC(_BYTE *result, int a2, int a3)
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

unint64_t sub_1CA66C678()
{
  result = qword_1EC442948;
  if (!qword_1EC442948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC447BE0, &qword_1CA991650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC442948);
  }

  return result;
}

unint64_t sub_1CA66C6F4()
{
  result = qword_1EC442938;
  if (!qword_1EC442938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC447BF0, &qword_1CA991658);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC442938);
  }

  return result;
}

unint64_t sub_1CA66C770()
{
  result = qword_1EC447C08;
  if (!qword_1EC447C08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447C00, &qword_1CA991660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447C08);
  }

  return result;
}

unint64_t sub_1CA66C7EC()
{
  result = qword_1EC447C18;
  if (!qword_1EC447C18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447C10, &qword_1CA991668);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447C18);
  }

  return result;
}

uint64_t objectdestroy_122Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  v3 = OUTLINED_FUNCTION_51_9();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

unint64_t sub_1CA66C8A8()
{
  result = qword_1EC442968[0];
  if (!qword_1EC442968[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC447C20, &unk_1CA991670);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC442968);
  }

  return result;
}

unint64_t sub_1CA66C924()
{
  result = qword_1EC442788[0];
  if (!qword_1EC442788[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC447C30, &unk_1CA98F860);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC442788);
  }

  return result;
}

uint64_t objectdestroy_129Tm()
{
  v1 = v0[3];

  v2 = v0[7];

  v3 = v0[9];

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

unint64_t sub_1CA66C9E8()
{
  result = qword_1EC447C40;
  if (!qword_1EC447C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447C40);
  }

  return result;
}

unint64_t sub_1CA66CA3C()
{
  result = qword_1EC447C48;
  if (!qword_1EC447C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447C48);
  }

  return result;
}

unint64_t sub_1CA66CA90()
{
  result = qword_1EC447C58;
  if (!qword_1EC447C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447C50, &qword_1CA991680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447C58);
  }

  return result;
}

unint64_t sub_1CA66CB0C()
{
  result = qword_1EC442648[0];
  if (!qword_1EC442648[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC447C60, &qword_1CA991688);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC442648);
  }

  return result;
}

unint64_t sub_1CA66CB88()
{
  result = qword_1EC4425B8[0];
  if (!qword_1EC4425B8[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447C70, &unk_1CA991690);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4425B8);
  }

  return result;
}

uint64_t sub_1CA66CC04()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_15_20(v3);

  return sub_1CA6694B4(v1);
}

unint64_t sub_1CA66CC8C()
{
  result = qword_1EC447C80;
  if (!qword_1EC447C80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447C78, &qword_1CA9916B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447C80);
  }

  return result;
}

unint64_t sub_1CA66CD08()
{
  result = qword_1EC447C90;
  if (!qword_1EC447C90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447C88, &qword_1CA9916C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447C90);
  }

  return result;
}

uint64_t sub_1CA66CD84()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_6_1(v4);

  return sub_1CA668344(v6, v2);
}

uint64_t sub_1CA66CE0C()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_15_20(v3);

  return sub_1CA667FD0(v1);
}

unint64_t sub_1CA66CE94()
{
  result = qword_1EC447CA0;
  if (!qword_1EC447CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447C98, &qword_1CA9916F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447CA0);
  }

  return result;
}

unint64_t sub_1CA66CF10()
{
  result = qword_1EC447CB0;
  if (!qword_1EC447CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447CA8, &qword_1CA9916F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447CB0);
  }

  return result;
}

uint64_t sub_1CA66CF8C()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_15_20(v3);

  return sub_1CA667B10(v1);
}

unint64_t sub_1CA66D014()
{
  result = qword_1EC447CC0;
  if (!qword_1EC447CC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447CB8, &qword_1CA991718);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447CC0);
  }

  return result;
}

unint64_t sub_1CA66D090()
{
  result = qword_1EC447CD0;
  if (!qword_1EC447CD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447CC8, &qword_1CA991720);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447CD0);
  }

  return result;
}

uint64_t sub_1CA66D10C()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_15_20(v3);

  return sub_1CA667630(v1);
}

unint64_t sub_1CA66D194()
{
  result = qword_1EC447CE0;
  if (!qword_1EC447CE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447CD8, &qword_1CA991740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447CE0);
  }

  return result;
}

unint64_t sub_1CA66D210()
{
  result = qword_1EC447CF0;
  if (!qword_1EC447CF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447CE8, &unk_1CA991748);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447CF0);
  }

  return result;
}

unint64_t sub_1CA66D28C()
{
  result = qword_1EC447D00;
  if (!qword_1EC447D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447D00);
  }

  return result;
}

uint64_t objectdestroy_139Tm()
{
  v1 = v0[3];

  v2 = v0[7];

  v3 = v0[9];

  v4 = v0[11];

  v5 = v0[15];

  v6 = v0[17];

  return MEMORY[0x1EEE6BDD0](v0, 144, 7);
}

unint64_t sub_1CA66D340()
{
  result = qword_1EC447D10;
  if (!qword_1EC447D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447D08, &qword_1CA991758);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447D10);
  }

  return result;
}

unint64_t sub_1CA66D3BC()
{
  result = qword_1EC447D20;
  if (!qword_1EC447D20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447D18, &qword_1CA991760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447D20);
  }

  return result;
}

unint64_t sub_1CA66D438()
{
  result = qword_1EC447D30;
  if (!qword_1EC447D30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447D28, &qword_1CA991768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447D30);
  }

  return result;
}

unint64_t sub_1CA66D4B4()
{
  result = qword_1EC447D40;
  if (!qword_1EC447D40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447D38, &qword_1CA991770);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447D40);
  }

  return result;
}

unint64_t sub_1CA66D530()
{
  result = qword_1EC447D50;
  if (!qword_1EC447D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447D48, &qword_1CA991778);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447D50);
  }

  return result;
}

unint64_t sub_1CA66D5AC()
{
  result = qword_1EC447D60;
  if (!qword_1EC447D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447D58, &qword_1CA991780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447D60);
  }

  return result;
}

uint64_t objectdestroy_152Tm(uint64_t a1)
{
  v3 = v1[4];

  v4 = v1[6];

  v5 = v1[8];

  v6 = v1[10];

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

unint64_t sub_1CA66D684()
{
  result = qword_1EC447D70;
  if (!qword_1EC447D70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447D68, &qword_1CA991788);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447D70);
  }

  return result;
}

unint64_t sub_1CA66D700()
{
  result = qword_1EC442950;
  if (!qword_1EC442950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4473F0, &unk_1CA991790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC442950);
  }

  return result;
}

unint64_t sub_1CA66D77C()
{
  result = qword_1EC442770;
  if (!qword_1EC442770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447400, &unk_1CA98F880);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC442770);
  }

  return result;
}

unint64_t sub_1CA66D7F8()
{
  result = qword_1EC447D80;
  if (!qword_1EC447D80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC444E20, &unk_1CA9917A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447D80);
  }

  return result;
}

unint64_t sub_1CA66D874()
{
  result = qword_1EC447D90;
  if (!qword_1EC447D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447420, &unk_1CA98F890);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447D90);
  }

  return result;
}

unint64_t sub_1CA66D8F0()
{
  result = qword_1EC442350[0];
  if (!qword_1EC442350[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447430, &qword_1CA9917B0);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC442350);
  }

  return result;
}

unint64_t sub_1CA66D96C()
{
  result = qword_1EC4424E0[0];
  if (!qword_1EC4424E0[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447440, &qword_1CA98F8A0);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4424E0);
  }

  return result;
}

unint64_t sub_1CA66D9E8()
{
  result = qword_1EC442960;
  if (!qword_1EC442960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC444E40, &qword_1CA98F950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC442960);
  }

  return result;
}

unint64_t sub_1CA66DA64()
{
  result = qword_1EC442780;
  if (!qword_1EC442780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447530, &unk_1CA98F958);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC442780);
  }

  return result;
}

unint64_t sub_1CA66DAE0()
{
  result = qword_1EC442230[0];
  if (!qword_1EC442230[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC444E30, &unk_1CA985F40);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC442230);
  }

  return result;
}

unint64_t sub_1CA66DC14()
{
  result = qword_1EC442760;
  if (!qword_1EC442760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC447D98, &qword_1CA9917B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC442760);
  }

  return result;
}

uint64_t objectdestroy_119Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

unint64_t sub_1CA66DCD0()
{
  result = qword_1EC442220;
  if (!qword_1EC442220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC447DA8, &qword_1CA9917C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC442220);
  }

  return result;
}

uint64_t sub_1CA66DD4C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_1CA66DDB4()
{
  result = qword_1EC442768;
  if (!qword_1EC442768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC447DC0, &qword_1CA9917D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC442768);
  }

  return result;
}

uint64_t objectdestroyTm_3()
{
  v1 = v0[3];

  v2 = v0[6];

  v3 = v0[7];

  v4 = OUTLINED_FUNCTION_51_9();

  return MEMORY[0x1EEE6BDD0](v4, v5, v6);
}

unint64_t sub_1CA66DE70()
{
  result = qword_1EC447DD8;
  if (!qword_1EC447DD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447DD0, &qword_1CA9917D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447DD8);
  }

  return result;
}

unint64_t sub_1CA66DEEC()
{
  result = qword_1EC447DF8;
  if (!qword_1EC447DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447DF8);
  }

  return result;
}

unint64_t sub_1CA66DF40()
{
  result = qword_1EC447E00;
  if (!qword_1EC447E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447E00);
  }

  return result;
}

unint64_t sub_1CA66DF94()
{
  result = qword_1EC447E08;
  if (!qword_1EC447E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447E08);
  }

  return result;
}

unint64_t sub_1CA66DFE8()
{
  result = qword_1EC447E10;
  if (!qword_1EC447E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447E10);
  }

  return result;
}

unint64_t sub_1CA66E03C()
{
  result = qword_1EC441F18;
  if (!qword_1EC441F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441F18);
  }

  return result;
}

unint64_t sub_1CA66E090()
{
  result = qword_1EC441FD0;
  if (!qword_1EC441FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441FD0);
  }

  return result;
}

unint64_t sub_1CA66E0E4()
{
  result = qword_1EC441F38;
  if (!qword_1EC441F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441F38);
  }

  return result;
}

unint64_t sub_1CA66E138()
{
  result = qword_1EC441F60;
  if (!qword_1EC441F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441F60);
  }

  return result;
}

unint64_t sub_1CA66E18C()
{
  result = qword_1EC441F88;
  if (!qword_1EC441F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441F88);
  }

  return result;
}

unint64_t sub_1CA66E1E0()
{
  result = qword_1EC441EC0;
  if (!qword_1EC441EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441EC0);
  }

  return result;
}

unint64_t sub_1CA66E234()
{
  result = qword_1EC441E98;
  if (!qword_1EC441E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441E98);
  }

  return result;
}

unint64_t sub_1CA66E288()
{
  result = qword_1EC441E70;
  if (!qword_1EC441E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441E70);
  }

  return result;
}

unint64_t sub_1CA66E2DC()
{
  result = qword_1EC441FA8;
  if (!qword_1EC441FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441FA8);
  }

  return result;
}

unint64_t sub_1CA66E330()
{
  result = qword_1EC441EE0[0];
  if (!qword_1EC441EE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC441EE0);
  }

  return result;
}

void *OUTLINED_FUNCTION_79_6(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char __src, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  a39 = a1;
  v40 = (a1 + 16);

  return memcpy(v40, &__src, 0x49uLL);
}

uint64_t OUTLINED_FUNCTION_82_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v20 = *(*(a18 + 48) + 16 * v18 + 8);
}

uint64_t OUTLINED_FUNCTION_85_7(uint64_t a1)
{
  *(v1 + 40) = a1;
}

uint64_t OUTLINED_FUNCTION_87_5(uint64_t a1)
{
  *(v1 + 24) = a1;

  return swift_getObjectType();
}

uint64_t OUTLINED_FUNCTION_88_4()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

id sub_1CA66E4F8()
{
  v56 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000019;
  *(inited + 48) = 0x80000001CA9DC0C0;
  *(inited + 64) = v1;
  *(inited + 72) = @"AppDefinition";
  v2 = @"ActionClass";
  v3 = @"AppDefinition";
  v4 = sub_1CA94C1E8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 80) = v4;
  *(inited + 104) = v5;
  *(inited + 112) = @"Description";
  v55 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_1CA981310;
  *(v6 + 32) = @"DescriptionNote";
  v7 = @"Description";
  v8 = @"DescriptionNote";
  v9 = sub_1CA94C438();
  v57 = v10;
  v58 = v9;
  v11 = sub_1CA94C438();
  v50 = v12;
  v51 = v11;
  v13 = sub_1CA948E58();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v54 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = &v50 - v54;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v53 = qword_1EDB9F690;
  v16 = [qword_1EDB9F690 bundleURL];
  v17 = sub_1CA948BA8();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v52 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  v19 = &v50 - v52;
  sub_1CA948B68();

  v20 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v21 = sub_1CA2F9F14(v58, v57, v51, v50, 0, 0, v15, v19);
  v58 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(v6 + 64) = v58;
  *(v6 + 40) = v21;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29EBDC(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v22 = v55;
  *(inited + 120) = sub_1CA6B3784();
  *(inited + 144) = v22;
  *(inited + 152) = @"IconName";
  *(inited + 160) = 0x68746C616548;
  *(inited + 168) = 0xE600000000000000;
  *(inited + 184) = MEMORY[0x1E69E6158];
  *(inited + 192) = @"LocallyProcessesData";
  v23 = MEMORY[0x1E69E6370];
  *(inited + 200) = 1;
  *(inited + 224) = v23;
  *(inited + 232) = @"Name";
  v24 = @"IconName";
  v25 = @"LocallyProcessesData";
  v26 = @"Name";
  v27 = sub_1CA94C438();
  v29 = v28;
  v30 = sub_1CA94C438();
  v32 = v31;
  v57 = &v50;
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v50 - v54;
  sub_1CA948D98();
  v34 = [v53 bundleURL];
  MEMORY[0x1EEE9AC00](v34);
  v35 = &v50 - v52;
  sub_1CA948B68();

  v36 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 240) = sub_1CA2F9F14(v27, v29, v30, v32, 0, 0, v33, v35);
  *(inited + 264) = v58;
  *(inited + 272) = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438F0, &unk_1CA9819E0);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1CA97EDF0;
  v38 = MEMORY[0x1E69E6158];
  *(v37 + 56) = MEMORY[0x1E69E6158];
  *(v37 + 32) = 0xD000000000000013;
  *(v37 + 40) = 0x80000001CA99A9A0;
  v59 = 2;
  v60 = 1;
  v39 = type metadata accessor for WFDeviceIdiomResource();
  v40 = objc_allocWithZone(v39);
  v41 = @"RequiredResources";
  WFDeviceIdiomResource.init(requirement:)(&v59);
  *(v37 + 88) = v39;
  *(v37 + 64) = v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443838, &qword_1CA981588);
  *(inited + 280) = v37;
  *(inited + 304) = v43;
  *(inited + 312) = @"RequiresUnlock";
  *(inited + 320) = 1;
  v44 = MEMORY[0x1E69E6370];
  *(inited + 344) = MEMORY[0x1E69E6370];
  *(inited + 352) = @"SuggestedAsInitialAction";
  *(inited + 384) = v44;
  *(inited + 360) = 0;
  v45 = @"RequiresUnlock";
  v46 = @"SuggestedAsInitialAction";
  v47 = sub_1CA94C368();
  *(inited + 424) = v38;
  *(inited + 392) = v47;
  *(inited + 400) = 0xD000000000000015;
  *(inited + 408) = 0x80000001CA9941B0;
  v48 = sub_1CA94C368();
  *(inited + 464) = v38;
  *(inited + 432) = v48;
  *(inited + 440) = 0x65756C6156;
  *(inited + 448) = 0xE500000000000000;
  type metadata accessor for Key(0);
  sub_1CA29EBDC(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA66EBFC()
{
  v206 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000016;
  *(inited + 48) = 0x80000001CA9DC1D0;
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
  v225 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v226 = v12;
  v13 = v201 - v225;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v222 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v224 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v223 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = v201 - v223;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v221 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Description";
  v219 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1CA97EDF0;
  *(v24 + 32) = @"DescriptionInput";
  v25 = @"Description";
  v26 = @"DescriptionInput";
  v27 = sub_1CA94C438();
  v216 = v28;
  v217 = v27;
  v215 = sub_1CA94C438();
  v30 = v29;
  v218 = v201;
  MEMORY[0x1EEE9AC00](v215);
  v220 = inited;
  v31 = v201 - v225;
  sub_1CA948D98();
  v32 = v222;
  v33 = [v222 bundleURL];
  MEMORY[0x1EEE9AC00](v33);
  v34 = v223;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v24 + 40) = sub_1CA2F9F14(v217, v216, v215, v30, 0, 0, v31, v201 - v34);
  v36 = v221;
  *(v24 + 64) = v221;
  *(v24 + 72) = @"DescriptionSummary";
  v37 = @"DescriptionSummary";
  v38 = sub_1CA94C438();
  v216 = v39;
  v217 = v38;
  v215 = sub_1CA94C438();
  v41 = v40;
  v218 = v201;
  MEMORY[0x1EEE9AC00](v215);
  v42 = v201 - v225;
  sub_1CA948D98();
  v43 = [v32 bundleURL];
  MEMORY[0x1EEE9AC00](v43);
  sub_1CA948B68();

  v44 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v45 = sub_1CA2F9F14(v217, v216, v215, v41, 0, 0, v42, v201 - v34);
  *(v24 + 104) = v36;
  *(v24 + 80) = v45;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v46 = v219;
  v47 = sub_1CA6B3784();
  v48 = v220;
  v220[20] = v47;
  v48[23] = v46;
  v48[24] = @"Input";
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v49 = swift_initStackObject();
  v213 = xmmword_1CA981350;
  *(v49 + 16) = xmmword_1CA981350;
  *(v49 + 32) = 0x656C7069746C754DLL;
  *(v49 + 40) = 0xE800000000000000;
  v50 = MEMORY[0x1E69E6370];
  *(v49 + 48) = 1;
  *(v49 + 72) = v50;
  strcpy((v49 + 80), "ParameterKey");
  *(v49 + 93) = 0;
  *(v49 + 94) = -5120;
  *(v49 + 96) = 0x696C79616C504657;
  *(v49 + 104) = 0xEF736D6574497473;
  *(v49 + 120) = MEMORY[0x1E69E6158];
  *(v49 + 128) = 0x6465726975716552;
  *(v49 + 136) = 0xE800000000000000;
  *(v49 + 144) = 0;
  *(v49 + 168) = v50;
  *(v49 + 176) = 0x7365707954;
  v51 = v50;
  *(v49 + 184) = 0xE500000000000000;
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v49 + 216) = v214;
  *(v49 + 192) = &unk_1F4A0B4B0;
  v52 = @"Input";
  v53 = sub_1CA94C1E8();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v219 = v54;
  v48[25] = v53;
  v48[28] = v54;
  v48[29] = @"InputPassthrough";
  *(v48 + 240) = 0;
  v48[33] = v51;
  v48[34] = @"Name";
  v55 = @"InputPassthrough";
  v56 = @"Name";
  v57 = sub_1CA94C438();
  v216 = v58;
  v59 = sub_1CA94C438();
  v61 = v60;
  v217 = v201;
  MEMORY[0x1EEE9AC00](v59);
  v62 = v225;
  sub_1CA948D98();
  v63 = v222;
  v64 = [v222 bundleURL];
  MEMORY[0x1EEE9AC00](v64);
  v65 = v201 - v223;
  sub_1CA948B68();

  v66 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v67 = sub_1CA2F9F14(v57, v216, v59, v61, 0, 0, v201 - v62, v65);
  v68 = v220;
  v69 = v221;
  v220[35] = v67;
  v68[38] = v69;
  v68[39] = @"Output";
  v70 = swift_allocObject();
  *(v70 + 16) = v213;
  *(v70 + 32) = 0x75736F6C63736944;
  *(v70 + 40) = 0xEF6C6576654C6572;
  *(v70 + 48) = 0x63696C627550;
  *(v70 + 56) = 0xE600000000000000;
  *(v70 + 72) = MEMORY[0x1E69E6158];
  *(v70 + 80) = 0x656C7069746C754DLL;
  *(v70 + 88) = 0xE800000000000000;
  *(v70 + 96) = 1;
  *(v70 + 120) = MEMORY[0x1E69E6370];
  *(v70 + 128) = 0x614E74757074754FLL;
  *(v70 + 136) = 0xEA0000000000656DLL;
  v71 = @"Output";
  v72 = sub_1CA94C438();
  v216 = v73;
  v217 = v72;
  v74 = sub_1CA94C438();
  v76 = v75;
  v218 = v201;
  MEMORY[0x1EEE9AC00](v74);
  sub_1CA948D98();
  v77 = [v63 bundleURL];
  MEMORY[0x1EEE9AC00](v77);
  v78 = v201 - v223;
  sub_1CA948B68();

  v79 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v70 + 144) = sub_1CA2F9F14(v217, v216, v74, v76, 0, 0, v201 - v62, v78);
  *(v70 + 168) = v69;
  *(v70 + 176) = 0x7365707954;
  *(v70 + 216) = v214;
  *(v70 + 184) = 0xE500000000000000;
  *(v70 + 192) = &unk_1F4A0B4F0;
  v80 = MEMORY[0x1E69E6158];
  v81 = sub_1CA94C1E8();
  v82 = v220;
  v220[40] = v81;
  v82[43] = v219;
  v82[44] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v219 = swift_allocObject();
  *(v219 + 16) = xmmword_1CA981570;
  v218 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v83 = swift_allocObject();
  v210 = xmmword_1CA981370;
  *(v83 + 16) = xmmword_1CA981370;
  v212 = 0x80000001CA99B500;
  *(v83 + 32) = @"Class";
  *(v83 + 40) = 0xD000000000000014;
  *(v83 + 48) = 0x80000001CA99B500;
  *(v83 + 64) = v80;
  *(v83 + 72) = @"Key";
  strcpy((v83 + 80), "WFPlaylistName");
  *(v83 + 95) = -18;
  *(v83 + 104) = v80;
  *(v83 + 112) = @"Label";
  v84 = @"Class";
  v85 = @"Key";
  v86 = @"Label";
  v87 = v84;
  v88 = v85;
  v89 = v86;
  v209 = v87;
  v207 = v88;
  v208 = v89;
  v90 = @"Parameters";
  v215 = sub_1CA94C438();
  v211 = v91;
  v92 = sub_1CA94C438();
  v205 = v93;
  v216 = v201;
  MEMORY[0x1EEE9AC00](v92);
  v94 = v201 - v225;
  sub_1CA948D98();
  v95 = [v222 bundleURL];
  MEMORY[0x1EEE9AC00](v95);
  v96 = v223;
  sub_1CA948B68();

  v97 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v83 + 120) = sub_1CA2F9F14(v215, v211, v92, v205, 0, 0, v94, v201 - v96);
  v98 = v221;
  *(v83 + 144) = v221;
  *(v83 + 152) = @"Placeholder";
  v205 = @"Placeholder";
  v215 = sub_1CA94C438();
  v211 = v99;
  v100 = sub_1CA94C438();
  v102 = v101;
  v216 = v201;
  MEMORY[0x1EEE9AC00](v100);
  v103 = v201 - v225;
  sub_1CA948D98();
  v104 = [v222 bundleURL];
  MEMORY[0x1EEE9AC00](v104);
  sub_1CA948B68();

  v105 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v83 + 160) = sub_1CA2F9F14(v215, v211, v100, v102, 0, 0, v103, v201 - v96);
  *(v83 + 184) = v98;
  *(v83 + 192) = @"TextAlignment";
  v106 = MEMORY[0x1E69E6158];
  *(v83 + 224) = MEMORY[0x1E69E6158];
  *(v83 + 200) = 0x7468676952;
  *(v83 + 208) = 0xE500000000000000;
  _s3__C3KeyVMa_0(0);
  v216 = v107;
  v215 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  v211 = @"TextAlignment";
  sub_1CA94C1E8();
  *(v219 + 32) = sub_1CA2F864C();
  v108 = swift_allocObject();
  *(v108 + 16) = v210;
  v110 = v208;
  v109 = v209;
  *(v108 + 32) = v209;
  *(v108 + 40) = 0xD000000000000014;
  *(v108 + 48) = v212;
  v111 = v207;
  *(v108 + 64) = v106;
  *(v108 + 72) = v111;
  *(v108 + 80) = 0xD000000000000010;
  *(v108 + 88) = 0x80000001CA9DC2E0;
  *(v108 + 104) = v106;
  *(v108 + 112) = v110;
  *&v210 = v109;
  v209 = v111;
  v208 = v110;
  v112 = sub_1CA94C438();
  v203 = v113;
  v204 = v112;
  v114 = sub_1CA94C438();
  v202 = v115;
  v207 = v201;
  MEMORY[0x1EEE9AC00](v114);
  v116 = v225;
  sub_1CA948D98();
  v117 = [v222 bundleURL];
  v201[1] = v201;
  MEMORY[0x1EEE9AC00](v117);
  v118 = v223;
  sub_1CA948B68();

  v119 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v108 + 120) = sub_1CA2F9F14(v204, v203, v114, v202, 0, 0, v201 - v116, v201 - v118);
  v120 = v205;
  *(v108 + 144) = v221;
  *(v108 + 152) = v120;
  v207 = v120;
  v121 = sub_1CA94C438();
  v203 = v122;
  v204 = v121;
  v123 = sub_1CA94C438();
  v202 = v124;
  v205 = v201;
  MEMORY[0x1EEE9AC00](v123);
  sub_1CA948D98();
  v125 = v222;
  v126 = [v222 bundleURL];
  MEMORY[0x1EEE9AC00](v126);
  sub_1CA948B68();

  v127 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v108 + 160) = sub_1CA2F9F14(v204, v203, v123, v202, 0, 0, v201 - v116, v201 - v118);
  v128 = v211;
  *(v108 + 184) = v221;
  *(v108 + 192) = v128;
  v129 = MEMORY[0x1E69E6158];
  *(v108 + 224) = MEMORY[0x1E69E6158];
  *(v108 + 200) = 0x7468676952;
  *(v108 + 208) = 0xE500000000000000;
  sub_1CA94C1E8();
  *(v219 + 40) = sub_1CA2F864C();
  v130 = swift_allocObject();
  *(v130 + 16) = xmmword_1CA981380;
  *(v130 + 32) = v210;
  *(v130 + 40) = 0xD000000000000014;
  *(v130 + 48) = v212;
  v131 = v209;
  *(v130 + 64) = v129;
  *(v130 + 72) = v131;
  *(v130 + 80) = 0xD000000000000015;
  *(v130 + 88) = 0x80000001CA9DC350;
  v132 = v208;
  *(v130 + 104) = v129;
  *(v130 + 112) = v132;
  v133 = sub_1CA94C438();
  v204 = v134;
  v205 = v133;
  v135 = sub_1CA94C438();
  v137 = v136;
  v212 = v201;
  MEMORY[0x1EEE9AC00](v135);
  v138 = v201 - v225;
  sub_1CA948D98();
  v139 = v125;
  v140 = [v125 bundleURL];
  MEMORY[0x1EEE9AC00](v140);
  v141 = v201 - v223;
  sub_1CA948B68();

  v142 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v130 + 120) = sub_1CA2F9F14(v205, v204, v135, v137, 0, 0, v138, v141);
  v143 = v221;
  *(v130 + 144) = v221;
  *(v130 + 152) = @"Multiline";
  *(v130 + 160) = 1;
  v144 = v207;
  *(v130 + 184) = MEMORY[0x1E69E6370];
  *(v130 + 192) = v144;
  v145 = @"Multiline";
  v146 = sub_1CA94C438();
  v204 = v147;
  v205 = v146;
  v148 = sub_1CA94C438();
  v203 = v149;
  v212 = v201;
  MEMORY[0x1EEE9AC00](v148);
  v150 = v201 - v225;
  sub_1CA948D98();
  v151 = [v125 bundleURL];
  MEMORY[0x1EEE9AC00](v151);
  v152 = v223;
  sub_1CA948B68();

  v153 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v130 + 200) = sub_1CA2F9F14(v205, v204, v148, v203, 0, 0, v150, v201 - v152);
  v154 = v211;
  *(v130 + 224) = v143;
  *(v130 + 232) = v154;
  v155 = MEMORY[0x1E69E6158];
  *(v130 + 264) = MEMORY[0x1E69E6158];
  *(v130 + 240) = 0x7468676952;
  *(v130 + 248) = 0xE500000000000000;
  sub_1CA94C1E8();
  *(v219 + 48) = sub_1CA2F864C();
  v156 = swift_allocObject();
  *(v156 + 16) = v213;
  *(v156 + 32) = v210;
  *(v156 + 40) = 0xD000000000000019;
  *(v156 + 48) = 0x80000001CA99B030;
  v157 = v209;
  *(v156 + 64) = v155;
  *(v156 + 72) = v157;
  *(v156 + 80) = 0x696C79616C504657;
  *(v156 + 88) = 0xEF736D6574497473;
  v158 = v208;
  *(v156 + 104) = v155;
  *(v156 + 112) = v158;
  v159 = sub_1CA94C438();
  v212 = v160;
  *&v213 = v159;
  v161 = sub_1CA94C438();
  v211 = v162;
  v217 = v201;
  MEMORY[0x1EEE9AC00](v161);
  v163 = v225;
  sub_1CA948D98();
  v164 = v139;
  v165 = [v139 bundleURL];
  *&v210 = v201;
  MEMORY[0x1EEE9AC00](v165);
  v166 = v152;
  sub_1CA948B68();

  v167 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v156 + 120) = sub_1CA2F9F14(v213, v212, v161, v211, 0, 0, v201 - v163, v201 - v152);
  v168 = v221;
  v169 = v207;
  *(v156 + 144) = v221;
  *(v156 + 152) = v169;
  v170 = sub_1CA94C438();
  v212 = v171;
  *&v213 = v170;
  v172 = sub_1CA94C438();
  v174 = v173;
  v217 = v201;
  MEMORY[0x1EEE9AC00](v172);
  v175 = v201 - v163;
  sub_1CA948D98();
  v176 = [v164 bundleURL];
  MEMORY[0x1EEE9AC00](v176);
  sub_1CA948B68();

  v177 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v178 = sub_1CA2F9F14(v213, v212, v172, v174, 0, 0, v175, v201 - v166);
  *(v156 + 184) = v168;
  *(v156 + 160) = v178;
  sub_1CA94C1E8();
  v179 = sub_1CA2F864C();
  v180 = v219;
  *(v219 + 56) = v179;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v182 = v220;
  v220[45] = v180;
  v182[48] = v181;
  v182[49] = @"ParameterSummary";
  v183 = @"ParameterSummary";
  v184 = sub_1CA94C438();
  v186 = v185;
  v187 = sub_1CA94C438();
  v189 = v188;
  MEMORY[0x1EEE9AC00](v187);
  v190 = v201 - v225;
  sub_1CA948D98();
  v191 = [v222 bundleURL];
  MEMORY[0x1EEE9AC00](v191);
  v192 = v201 - v223;
  sub_1CA948B68();

  v193 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v194 = sub_1CA2F9F14(v184, v186, v187, v189, 0, 0, v190, v192);
  v195 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v196 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v197 = v220;
  v220[50] = v195;
  v197[53] = v196;
  v197[54] = @"RequiredResources";
  v197[55] = &unk_1F4A0B520;
  v197[58] = v214;
  v197[59] = @"SuggestedAsInitialAction";
  v197[63] = MEMORY[0x1E69E6370];
  *(v197 + 480) = 0;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v198 = @"RequiredResources";
  v199 = @"SuggestedAsInitialAction";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA67052C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443880, &qword_1CA982FB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  v8 = sub_1CA94C858();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = &unk_1CA9919D0;
  v10[5] = v9;
  sub_1CA671AC8(0, 0, v7, &unk_1CA9919E0, v10);
}

uint64_t sub_1CA670644()
{
  v1 = *v0;
  sub_1CA94D918();
  sub_1CA2974D4(v3, v1);
  return sub_1CA94D968();
}

id sub_1CA6706DC(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = [a1 value];
  sub_1CA94D258();
  swift_unknownObjectRelease();
  sub_1CA25B3D0(0, &unk_1EDB9F6A0, 0x1E69AC7D0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v2 = [v6 placemark];

  if (!v2)
  {
    return 0;
  }

  v3 = [objc_allocWithZone(WFLocationValue) initWithPlacemark_];
  v4 = [objc_allocWithZone(WFLocationParameterState) initWithValue_];

  return v4;
}

id sub_1CA670850(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = v1;
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {
    return 0;
  }

  v4 = [v3 value];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = [v4 placemark];

  if (!v6)
  {
    return 0;
  }

  sub_1CA25B3D0(0, &unk_1EDB9F6B0, 0x1E69ACA90);
  v7 = sub_1CA94CF58();
  v8 = [v2 linkValueWithValue_];

  return v8;
}

uint64_t sub_1CA6709AC()
{
  OUTLINED_FUNCTION_0();
  v1[7] = v2;
  v1[8] = v0;
  v3 = sub_1CA949F78();
  v1[9] = v3;
  v4 = *(v3 - 8);
  v1[10] = v4;
  v5 = *(v4 + 64) + 15;
  v1[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CA670A68, 0, 0);
}

uint64_t sub_1CA670A68()
{
  v19 = v0;
  sub_1CA66DD4C(v0[7], (v0 + 2), &unk_1EC444650, &unk_1CA981C70);
  if (v0[5])
  {
    sub_1CA25B3D0(0, &qword_1EC441960, 0x1E6996D40);
    if (swift_dynamicCast())
    {
      v0[12] = v0[6];
      [objc_opt_self() wf_placeDescriptorObjectClass];
      swift_getObjCClassMetadata();
      v1 = *(MEMORY[0x1E6996C50] + 4);
      v2 = swift_task_alloc();
      v0[13] = v2;
      *v2 = v0;
      v2[1] = sub_1CA670D20;
      v3 = OUTLINED_FUNCTION_151();

      return MEMORY[0x1EEDF81A0](v3);
    }
  }

  else
  {
    sub_1CA30F7DC((v0 + 2), &unk_1EC444650, &unk_1CA981C70);
  }

  v4 = v0[11];
  v5 = *MEMORY[0x1E69E1080];
  sub_1CA949C58();
  v6 = sub_1CA949F68();
  v7 = sub_1CA94CC28();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[10];
  v9 = v0[11];
  v11 = v0[9];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_1CA26B54C(0x6C616E6F6974704FLL, 0xED00003E796E413CLL, &v18);
    _os_log_impl(&dword_1CA256000, v6, v7, "Action expected WFContentCollection as processed parameter type for placemark, but got %s instead", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x1CCAA4BF0](v13, -1, -1);
    MEMORY[0x1CCAA4BF0](v12, -1, -1);
  }

  (*(v10 + 8))(v9, v11);
  sub_1CA671358();
  swift_allocError();
  *v14 = 0;
  swift_willThrow();
  v15 = v0[11];

  OUTLINED_FUNCTION_5();

  return v16();
}

uint64_t sub_1CA670D20()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  v4 = *(v2 + 104);
  v8 = *v1;
  *(v3 + 112) = v5;
  *(v3 + 120) = v0;

  if (v0)
  {
    v6 = sub_1CA671284;
  }

  else
  {

    v6 = sub_1CA670E38;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1CA670E38()
{
  v16 = v0;
  if (v0[14] && (objc_opt_self(), (v1 = swift_dynamicCastObjCClass()) != 0))
  {
    v2 = v1;
    v3 = v0[12];
    v4 = v0[8];
    v15[3] = sub_1CA25B3D0(0, &unk_1EDB9F6A0, 0x1E69AC7D0);
    swift_unknownObjectRetain();
    v5 = [v4 valueType];
    v6 = objc_allocWithZone(MEMORY[0x1E69ACA90]);
    sub_1CA320AB4(v15, v5);
    swift_unknownObjectRelease();

    v7 = v0[11];

    v8 = OUTLINED_FUNCTION_1_3();

    return v9(v8);
  }

  else
  {
    sub_1CA25B3D0(0, &unk_1EC447E40, 0x1E695FC20);
    v11 = *(MEMORY[0x1E6996C50] + 4);
    v12 = swift_task_alloc();
    v0[16] = v12;
    *v12 = v0;
    v12[1] = sub_1CA670FD8;
    v13 = v0[12];
    v14 = OUTLINED_FUNCTION_151();

    return MEMORY[0x1EEDF81A0](v14);
  }
}

uint64_t sub_1CA670FD8()
{
  OUTLINED_FUNCTION_6();
  v3 = v2;
  OUTLINED_FUNCTION_3();
  v5 = v4;
  v6 = *(v4 + 128);
  v7 = *v1;
  OUTLINED_FUNCTION_13();
  *v8 = v7;
  *(v5 + 136) = v0;

  if (v0)
  {
    v9 = sub_1CA6712E8;
  }

  else
  {
    *(v5 + 144) = v3;

    v9 = sub_1CA671104;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1CA671104()
{
  OUTLINED_FUNCTION_6();
  if (v0[18])
  {
    v1 = v0[18];
    swift_unknownObjectRetain();
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_1CA25B3D0(0, &unk_1EDB9F6B0, 0x1E69ACA90);
      v2 = sub_1CA94CF58();
      swift_unknownObjectRelease();
      if (v2)
      {
        v3 = v0[14];
        v4 = v0[12];
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        v5 = v0[11];

        v6 = OUTLINED_FUNCTION_1_3();

        return v7(v6);
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v9 = v0[14];
  v10 = v0[12];
  sub_1CA671358();
  swift_allocError();
  *v11 = 1;
  swift_willThrow();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v12 = v0[11];

  OUTLINED_FUNCTION_5();

  return v13();
}

uint64_t sub_1CA671284()
{
  OUTLINED_FUNCTION_0();

  v1 = *(v0 + 120);
  v2 = *(v0 + 88);

  OUTLINED_FUNCTION_5();

  return v3();
}

uint64_t sub_1CA6712E8()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 112);

  swift_unknownObjectRelease();
  v2 = *(v0 + 136);
  v3 = *(v0 + 88);

  OUTLINED_FUNCTION_5();

  return v4();
}

unint64_t sub_1CA671358()
{
  result = qword_1EC447E30;
  if (!qword_1EC447E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447E30);
  }

  return result;
}

uint64_t sub_1CA671488(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5, void *a6, void *aBlock, void *a8)
{
  *(v8 + 96) = a5;
  *(v8 + 104) = a8;
  *(v8 + 80) = a2;
  *(v8 + 88) = a3;
  *(v8 + 112) = _Block_copy(aBlock);
  if (a1)
  {
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v13 = a5;
    v14 = a6;
    v15 = a8;
    swift_unknownObjectRetain();
    sub_1CA94D258();
    swift_unknownObjectRelease();
    sub_1CA2C0A20((v8 + 48), (v8 + 16));
  }

  else
  {
    *(v8 + 16) = 0u;
    *(v8 + 32) = 0u;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v16 = a5;
    v17 = a6;
    v18 = a8;
  }

  sub_1CA94C3A8();
  v20 = v19;

  *(v8 + 120) = v20;
  v21 = swift_task_alloc();
  *(v8 + 128) = v21;
  *v21 = v8;
  v21[1] = sub_1CA6715DC;

  return sub_1CA6709AC();
}

uint64_t sub_1CA6715DC(void *a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_13();
  *v6 = v5;
  v7 = v4[16];
  v8 = *v2;
  *v6 = *v2;

  v9 = v4[15];
  v10 = v4[14];
  v11 = v4[13];
  v12 = v4[12];
  v13 = v4[11];
  v14 = v4[10];
  sub_1CA30F7DC((v5 + 2), &unk_1EC444650, &unk_1CA981C70);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  if (v3)
  {
    v15 = sub_1CA948AC8();

    (v10)[2](v10, 0, v15);
    _Block_release(v10);
  }

  else
  {
    (v10)[2](v10, a1, 0);
    _Block_release(v10);
  }

  v16 = v8[1];

  return v16();
}

id WFLinkActionPlaceDescriptorParameterDefinition.__allocating_init(parameterMetadata:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithParameterMetadata_];

  return v3;
}

id WFLinkActionPlaceDescriptorParameterDefinition.init(parameterMetadata:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for WFLinkActionPlaceDescriptorParameterDefinition();
  v3 = objc_msgSendSuper2(&v5, sel_initWithParameterMetadata_, a1);

  return v3;
}

id WFLinkActionPlaceDescriptorParameterDefinition.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFLinkActionPlaceDescriptorParameterDefinition();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1CA6718F8(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1CA2E9390;

  return v7();
}

uint64_t sub_1CA6719E0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1CA2DF78C;

  return v8();
}

uint64_t sub_1CA671AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443880, &qword_1CA982FB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v25 - v11;
  sub_1CA66DD4C(a3, v25 - v11, &qword_1EC443880, &qword_1CA982FB0);
  v13 = sub_1CA94C858();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1CA30F7DC(v12, &qword_1EC443880, &qword_1CA982FB0);
  }

  else
  {
    sub_1CA94C848();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  if (*(a5 + 16))
  {
    v14 = *(a5 + 24);
    v15 = *(a5 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v16 = sub_1CA94C7C8();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1CA94C418() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1CA30F7DC(a3, &qword_1EC443880, &qword_1CA982FB0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1CA30F7DC(a3, &qword_1EC443880, &qword_1CA982FB0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

_BYTE *storeEnumTagSinglePayload for WFLinkActionPlaceDescriptorError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1CA671EA8()
{
  result = qword_1EC447E50;
  if (!qword_1EC447E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447E50);
  }

  return result;
}

uint64_t sub_1CA671EFC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v9 = *(v0 + 64);
  v8 = *(v0 + 72);
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_1CA2DF78C;
  v11 = OUTLINED_FUNCTION_151();

  return v12(v11, v3, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1CA671FE4()
{
  OUTLINED_FUNCTION_6();
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1CA2E9390;
  v7 = OUTLINED_FUNCTION_151();

  return v8(v7, v3, v5, v4);
}

uint64_t objectdestroy_10Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1CA6720DC()
{
  OUTLINED_FUNCTION_6();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_4_4(v7);
  *v8 = v9;
  v8[1] = sub_1CA2E9390;

  return sub_1CA6719E0(v2, v3, v4, v6);
}

uint64_t sub_1CA67219C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_4_4(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_0_2(v4);

  return v7(v6);
}

uint64_t sub_1CA672234()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_4_4(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_0_2(v4);

  return v7(v6);
}

id sub_1CA672300()
{
  v172 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000014;
  *(inited + 48) = 0x80000001CA9DC5A0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v176 = inited;
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v179 = v12;
  v182 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = &v159 - v182;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v14 = qword_1EDB9F690;
  v178 = qword_1EDB9F690;
  v15 = [qword_1EDB9F690 bundleURL];
  v16 = sub_1CA948BA8();
  v180 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v181 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = &v159 - v181;
  sub_1CA948B68();

  v19 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v20 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v18);
  v21 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v177 = v21;
  v22 = v176;
  v176[10] = v20;
  v22[13] = v21;
  v22[14] = @"Description";
  v175 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1CA981310;
  *(v23 + 32) = @"DescriptionSummary";
  v24 = @"Description";
  v25 = @"DescriptionSummary";
  v26 = sub_1CA94C438();
  *&v173 = v27;
  v28 = sub_1CA94C438();
  v30 = v29;
  v174 = &v159;
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v159 - v182;
  sub_1CA948D98();
  v32 = [v14 bundleURL];
  MEMORY[0x1EEE9AC00](v32);
  v33 = &v159 - v181;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v35 = sub_1CA2F9F14(v26, v173, v28, v30, 0, 0, v31, v33);
  *(v23 + 64) = v177;
  *(v23 + 40) = v35;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v36 = v175;
  v22[15] = sub_1CA6B3784();
  v22[18] = v36;
  v22[19] = @"IconColor";
  v22[20] = 1702194242;
  v22[21] = 0xE400000000000000;
  v37 = MEMORY[0x1E69E6158];
  v22[23] = MEMORY[0x1E69E6158];
  v22[24] = @"IconSymbol";
  v22[25] = 0x74656E7265687465;
  v22[26] = 0xE800000000000000;
  v22[28] = v37;
  v22[29] = @"Name";
  v38 = @"IconColor";
  v39 = @"IconSymbol";
  v40 = @"Name";
  v41 = sub_1CA94C438();
  v43 = v42;
  v44 = sub_1CA94C438();
  v46 = v45;
  v175 = &v159;
  MEMORY[0x1EEE9AC00](v44);
  v47 = &v159 - v182;
  sub_1CA948D98();
  v48 = [v178 bundleURL];
  MEMORY[0x1EEE9AC00](v48);
  v49 = &v159 - v181;
  sub_1CA948B68();

  v50 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v51 = sub_1CA2F9F14(v41, v43, v44, v46, 0, 0, v47, v49);
  v52 = v176;
  v176[30] = v51;
  v52[33] = v177;
  v52[34] = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v53 = swift_initStackObject();
  *(v53 + 16) = xmmword_1CA981350;
  *(v53 + 32) = 0x75736F6C63736944;
  *(v53 + 40) = 0xEF6C6576654C6572;
  *(v53 + 48) = 0x63696C627550;
  *(v53 + 56) = 0xE600000000000000;
  *(v53 + 72) = MEMORY[0x1E69E6158];
  *(v53 + 80) = 0x656C7069746C754DLL;
  *(v53 + 88) = 0xE800000000000000;
  v54 = MEMORY[0x1E69E6370];
  *(v53 + 96) = 0;
  *(v53 + 120) = v54;
  *(v53 + 128) = 0x614E74757074754FLL;
  *(v53 + 136) = 0xEA0000000000656DLL;
  v55 = @"Output";
  v56 = sub_1CA94C438();
  v174 = v57;
  v58 = sub_1CA94C438();
  v60 = v59;
  v175 = &v159;
  MEMORY[0x1EEE9AC00](v58);
  v61 = v182;
  sub_1CA948D98();
  v62 = [v178 bundleURL];
  MEMORY[0x1EEE9AC00](v62);
  v63 = &v159 - v181;
  sub_1CA948B68();

  v64 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v53 + 144) = sub_1CA2F9F14(v56, v174, v58, v60, 0, 0, &v159 - v61, v63);
  *(v53 + 168) = v177;
  *(v53 + 176) = 0x7365707954;
  *(v53 + 184) = 0xE500000000000000;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v53 + 216) = v171;
  *(v53 + 192) = &unk_1F4A0B550;
  v65 = MEMORY[0x1E69E6158];
  v66 = sub_1CA94C1E8();
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v68 = v176;
  v176[35] = v66;
  v68[38] = v67;
  v68[39] = @"Parameters";
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v175 = swift_allocObject();
  v173 = xmmword_1CA981360;
  *(v175 + 1) = xmmword_1CA981360;
  v174 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v69 = swift_initStackObject();
  v169 = xmmword_1CA981370;
  *(v69 + 16) = xmmword_1CA981370;
  v168 = 0x80000001CA99C4A0;
  *(v69 + 32) = @"Class";
  *(v69 + 40) = 0xD000000000000016;
  *(v69 + 48) = 0x80000001CA99C4A0;
  *(v69 + 64) = v65;
  *(v69 + 72) = @"DefaultValue";
  *(v69 + 80) = 0x6C616E7265747845;
  *(v69 + 88) = 0xE800000000000000;
  *(v69 + 104) = v65;
  *(v69 + 112) = @"Items";
  v162 = swift_allocObject();
  *&v162->data = v173;
  v70 = @"Class";
  v71 = @"DefaultValue";
  v72 = @"Items";
  v165 = v70;
  v164 = v71;
  v166 = v72;
  v73 = @"Parameters";
  v74 = sub_1CA94C438();
  v160 = v75;
  v161 = v74;
  v76 = sub_1CA94C438();
  v159 = v77;
  v163 = &v159;
  MEMORY[0x1EEE9AC00](v76);
  sub_1CA948D98();
  v78 = v178;
  v79 = [v178 bundleURL];
  MEMORY[0x1EEE9AC00](v79);
  v80 = &v159 - v181;
  sub_1CA948B68();

  v81 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v82 = sub_1CA2F9F14(v161, v160, v76, v159, 0, 0, &v159 - v61, v80);
  v83 = v162;
  v162[1].isa = v82;
  v84 = sub_1CA94C438();
  v160 = v85;
  v161 = v84;
  v159 = sub_1CA94C438();
  v87 = v86;
  v163 = &v159;
  MEMORY[0x1EEE9AC00](v159);
  v88 = &v159 - v182;
  sub_1CA948D98();
  v89 = [v78 bundleURL];
  MEMORY[0x1EEE9AC00](v89);
  v90 = v181;
  sub_1CA948B68();

  v91 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v83[1].info = sub_1CA2F9F14(v161, v160, v159, v87, 0, 0, v88, &v159 - v90);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  v163 = v92;
  *(v69 + 120) = v83;
  *(v69 + 144) = v92;
  *(v69 + 152) = @"Key";
  *(v69 + 160) = 0xD000000000000017;
  *(v69 + 168) = 0x80000001CA9DC730;
  *(v69 + 184) = MEMORY[0x1E69E6158];
  *(v69 + 192) = @"Label";
  v93 = @"Key";
  v94 = @"Label";
  v161 = v93;
  v162 = v94;
  v95 = sub_1CA94C438();
  v159 = v96;
  v97 = sub_1CA94C438();
  v99 = v98;
  v160 = &v159;
  MEMORY[0x1EEE9AC00](v97);
  v100 = &v159 - v182;
  sub_1CA948D98();
  v101 = [v178 bundleURL];
  MEMORY[0x1EEE9AC00](v101);
  sub_1CA948B68();

  v102 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v103 = sub_1CA2F9F14(v95, v159, v97, v99, 0, 0, v100, &v159 - v90);
  *(v69 + 224) = v177;
  *(v69 + 200) = v103;
  _s3__C3KeyVMa_0(0);
  v160 = v104;
  v159 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v175[4] = sub_1CA2F864C();
  v105 = swift_allocObject();
  *(v105 + 16) = v169;
  *(v105 + 32) = v165;
  *(v105 + 40) = 0xD000000000000016;
  *(v105 + 48) = v168;
  v106 = MEMORY[0x1E69E6158];
  v107 = v164;
  *(v105 + 64) = MEMORY[0x1E69E6158];
  *(v105 + 72) = v107;
  *(v105 + 80) = 880169033;
  *(v105 + 88) = 0xE400000000000000;
  v108 = v166;
  *(v105 + 104) = v106;
  *(v105 + 112) = v108;
  v170 = swift_allocObject();
  *(v170 + 16) = v173;
  v109 = sub_1CA94C438();
  v168 = v110;
  *&v169 = v109;
  v167 = sub_1CA94C438();
  v112 = v111;
  *&v173 = &v159;
  MEMORY[0x1EEE9AC00](v167);
  v113 = v182;
  sub_1CA948D98();
  v114 = v178;
  v115 = [v178 bundleURL];
  MEMORY[0x1EEE9AC00](v115);
  v116 = &v159 - v181;
  sub_1CA948B68();

  v117 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v118 = sub_1CA2F9F14(v169, v168, v167, v112, 0, 0, &v159 - v113, v116);
  v119 = v170;
  *(v170 + 32) = v118;
  v120 = sub_1CA94C438();
  v168 = v121;
  *&v169 = v120;
  v122 = sub_1CA94C438();
  v166 = v123;
  v167 = v122;
  *&v173 = &v159;
  MEMORY[0x1EEE9AC00](v122);
  sub_1CA948D98();
  v124 = [v114 bundleURL];
  MEMORY[0x1EEE9AC00](v124);
  v125 = v181;
  sub_1CA948B68();

  v126 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v119 + 40) = sub_1CA2F9F14(v169, v168, v167, v166, 0, 0, &v159 - v113, &v159 - v125);
  *(v105 + 120) = v119;
  v127 = v161;
  *(v105 + 144) = v163;
  *(v105 + 152) = v127;
  *(v105 + 160) = 0xD000000000000015;
  *(v105 + 168) = 0x80000001CA9DC7D0;
  v128 = v162;
  *(v105 + 184) = MEMORY[0x1E69E6158];
  *(v105 + 192) = v128;
  v129 = sub_1CA94C438();
  v170 = v130;
  v131 = sub_1CA94C438();
  v133 = v132;
  *&v173 = &v159;
  MEMORY[0x1EEE9AC00](v131);
  v134 = &v159 - v182;
  sub_1CA948D98();
  v135 = [v178 bundleURL];
  MEMORY[0x1EEE9AC00](v135);
  sub_1CA948B68();

  v136 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v137 = sub_1CA2F9F14(v129, v170, v131, v133, 0, 0, v134, &v159 - v125);
  *(v105 + 224) = v177;
  *(v105 + 200) = v137;
  sub_1CA94C1E8();
  v138 = sub_1CA2F864C();
  v139 = v175;
  v175[5] = v138;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v141 = v176;
  v176[40] = v139;
  v141[43] = v140;
  v141[44] = @"ParameterSummary";
  v142 = @"ParameterSummary";
  v143 = sub_1CA94C438();
  v145 = v144;
  v146 = sub_1CA94C438();
  v148 = v147;
  v177 = &v159;
  MEMORY[0x1EEE9AC00](v146);
  v149 = &v159 - v182;
  sub_1CA948D98();
  v150 = [v178 bundleURL];
  MEMORY[0x1EEE9AC00](v150);
  v151 = &v159 - v181;
  sub_1CA948B68();

  v152 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v153 = sub_1CA2F9F14(v143, v145, v146, v148, 0, 0, v149, v151);
  v154 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v155 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v141[45] = v154;
  v141[48] = v155;
  v141[49] = @"RequiredResources";
  v141[50] = &unk_1F4A0B580;
  v141[53] = v171;
  v141[54] = @"ResidentCompatible";
  v141[58] = MEMORY[0x1E69E6370];
  *(v141 + 440) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v156 = @"RequiredResources";
  v157 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA6736A4()
{
  v257 = type metadata accessor for DrawerAction(0);
  v4 = OUTLINED_FUNCTION_1_0(v257);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v256 = &v244 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CA949F78();
  v11 = OUTLINED_FUNCTION_1_0(v10);
  v255 = v12;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v11);
  v17 = &v244 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v244 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v244 - v21;
  v23 = *MEMORY[0x1E6996FB8];
  sub_1CA94C3A8();
  OUTLINED_FUNCTION_12_33();
  OUTLINED_FUNCTION_18_29();
  v25 = v25 && v2 == v24;
  if (v25)
  {

    goto LABEL_48;
  }

  OUTLINED_FUNCTION_5_50();
  OUTLINED_FUNCTION_212();

  if (v3)
  {
LABEL_48:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444098, &qword_1CA9826C0);
    v58 = OUTLINED_FUNCTION_33_16();
    strcpy((v58 + 32), "controls-empty");
    *(v58 + 47) = -18;
    v59 = OUTLINED_FUNCTION_15_26(v58);
    OUTLINED_FUNCTION_26_22(v59, &unk_1F49F9928, v60);
    OUTLINED_FUNCTION_10_35();
    sub_1CA94C438();
    OUTLINED_FUNCTION_70_0();
    if (qword_1EDB9F5F0 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    OUTLINED_FUNCTION_20_32();
    OUTLINED_FUNCTION_11_37();
    OUTLINED_FUNCTION_77_0();
    v61 = OUTLINED_FUNCTION_2_62();
    v64 = OUTLINED_FUNCTION_24_21(v61, v62, v63);

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_22_23();
    *(v58 + 72) = 0xD000000000000015;
    *(v58 + 80) = v10;
    OUTLINED_FUNCTION_21_25(&unk_1F49F99A8);
    OUTLINED_FUNCTION_14_32();
    sub_1CA94C438();
    OUTLINED_FUNCTION_59();
    sub_1CA94C368();
    OUTLINED_FUNCTION_6_48();
    OUTLINED_FUNCTION_16_32();
    v65 = OUTLINED_FUNCTION_1_52();

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_17_20();
    *(v58 + 112) = 0xD000000000000010;
    *(v58 + 120) = v1;
    *(v58 + 128) = v64;
    *(v58 + 136) = v22;
    *(v58 + 144) = &unk_1F49F9A38;
    OUTLINED_FUNCTION_14_32();
    sub_1CA94C438();
    OUTLINED_FUNCTION_59();
    sub_1CA94C368();
    OUTLINED_FUNCTION_6_48();
    OUTLINED_FUNCTION_16_32();
    v66 = OUTLINED_FUNCTION_1_52();

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_17_20();
    *(v58 + 152) = 0xD000000000000013;
    *(v58 + 160) = v1;
    OUTLINED_FUNCTION_29_17(&unk_1F49F9AD8);
    sub_1CA94C438();
    OUTLINED_FUNCTION_59();
    sub_1CA94C368();
    OUTLINED_FUNCTION_6_48();
    OUTLINED_FUNCTION_16_32();
    v67 = OUTLINED_FUNCTION_1_52();

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_59();

    *(v58 + 192) = 0xD000000000000010;
    *(v58 + 200) = 0x80000001CA9DCD50;
    *(v58 + 208) = v64;
    *(v58 + 216) = v66;
    v68 = &unk_1F49F9B28;
    goto LABEL_51;
  }

  v26 = *MEMORY[0x1E6996FC0];
  sub_1CA94C3A8();
  OUTLINED_FUNCTION_12_33();
  OUTLINED_FUNCTION_18_29();
  if (v25 && v2 == v27)
  {

    goto LABEL_54;
  }

  OUTLINED_FUNCTION_5_50();
  OUTLINED_FUNCTION_212();

  if (v3)
  {
LABEL_54:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444098, &qword_1CA9826C0);
    v58 = OUTLINED_FUNCTION_33_16();
    strcpy((v58 + 32), "device-empty");
    *(v58 + 45) = 0;
    *(v58 + 46) = -5120;
    v70 = OUTLINED_FUNCTION_15_26(v58);
    OUTLINED_FUNCTION_26_22(v70, &unk_1F49F9B88, v71);
    OUTLINED_FUNCTION_10_35();
    sub_1CA94C438();
    OUTLINED_FUNCTION_70_0();
    if (qword_1EDB9F5F0 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    OUTLINED_FUNCTION_20_32();
    OUTLINED_FUNCTION_11_37();
    OUTLINED_FUNCTION_77_0();
    v72 = OUTLINED_FUNCTION_2_62();
    v75 = OUTLINED_FUNCTION_24_21(v72, v73, v74);

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_22_23();
    *(v58 + 72) = 0xD000000000000010;
    *(v58 + 80) = v10;
    OUTLINED_FUNCTION_21_25(&unk_1F49F9C08);
    OUTLINED_FUNCTION_10_35();
    sub_1CA94C438();
    OUTLINED_FUNCTION_59();
    sub_1CA94C368();
    OUTLINED_FUNCTION_6_48();
    OUTLINED_FUNCTION_16_32();
    v76 = OUTLINED_FUNCTION_1_52();

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_17_20();
    *(v58 + 112) = 0xD000000000000013;
    *(v58 + 120) = v10;
    *(v58 + 128) = v75;
    *(v58 + 136) = v22;
    *(v58 + 144) = &unk_1F49F9C48;
    sub_1CA94C438();
    OUTLINED_FUNCTION_59();
    sub_1CA94C368();
    OUTLINED_FUNCTION_6_48();
    OUTLINED_FUNCTION_16_32();
    v77 = OUTLINED_FUNCTION_1_52();

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_17_20();
    strcpy((v58 + 152), "device-network");
    *(v58 + 167) = -18;
    OUTLINED_FUNCTION_29_17(&unk_1F49F9C98);
    OUTLINED_FUNCTION_10_35();
    sub_1CA94C438();
    OUTLINED_FUNCTION_59();
    sub_1CA94C368();
    OUTLINED_FUNCTION_6_48();
    OUTLINED_FUNCTION_16_32();
    v78 = OUTLINED_FUNCTION_1_52();

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_59();

    *(v58 + 192) = 0xD000000000000010;
    *(v58 + 200) = v10;
    *(v58 + 208) = v75;
    *(v58 + 216) = v77;
    v68 = &unk_1F49F9D08;
    goto LABEL_51;
  }

  v29 = *MEMORY[0x1E6996FC8];
  sub_1CA94C3A8();
  OUTLINED_FUNCTION_12_33();
  OUTLINED_FUNCTION_18_29();
  if (v25 && v2 == v30)
  {

    goto LABEL_58;
  }

  OUTLINED_FUNCTION_5_50();
  OUTLINED_FUNCTION_212();

  if (v3)
  {
LABEL_58:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444098, &qword_1CA9826C0);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_1CA981400;
    OUTLINED_FUNCTION_27_23();
    *(v80 + 32) = 0x746E656D75636F64;
    *(v80 + 40) = v79 + 12;
    *(OUTLINED_FUNCTION_15_26(v80) + 64) = &unk_1F49F9D58;
    sub_1CA94C438();
    OUTLINED_FUNCTION_70_0();
    if (qword_1EDB9F5F0 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    OUTLINED_FUNCTION_20_32();
    OUTLINED_FUNCTION_11_37();
    OUTLINED_FUNCTION_77_0();
    v81 = OUTLINED_FUNCTION_2_62();
    v84 = OUTLINED_FUNCTION_24_21(v81, v82, v83);

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_22_23();
    strcpy((v58 + 72), "documents-pdfs");
    *(v58 + 87) = -18;
    OUTLINED_FUNCTION_21_25(&unk_1F49F9D98);
    OUTLINED_FUNCTION_14_32();
    sub_1CA94C438();
    OUTLINED_FUNCTION_59();
    sub_1CA94C368();
    OUTLINED_FUNCTION_6_48();
    OUTLINED_FUNCTION_16_32();
    v85 = OUTLINED_FUNCTION_1_52();

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_17_20();
    *(v58 + 112) = 0xD000000000000015;
    *(v58 + 120) = v1;
    *(v58 + 128) = v84;
    *(v58 + 136) = v22;
    *(v58 + 144) = &unk_1F49F9E08;
    OUTLINED_FUNCTION_14_32();
    sub_1CA94C438();
    OUTLINED_FUNCTION_59();
    sub_1CA94C368();
    OUTLINED_FUNCTION_6_48();
    OUTLINED_FUNCTION_16_32();
    v86 = OUTLINED_FUNCTION_1_52();

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_17_20();
    *(v58 + 152) = 0xD000000000000012;
    *(v58 + 160) = v1;
    *(v58 + 168) = v84;
    *(v58 + 176) = v22;
    *(v58 + 184) = &unk_1F49F9ED8;
    sub_1CA94C438();
    OUTLINED_FUNCTION_59();
    sub_1CA94C368();
    OUTLINED_FUNCTION_6_48();
    OUTLINED_FUNCTION_16_32();
    v87 = OUTLINED_FUNCTION_1_52();

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_17_20();
    *(v58 + 192) = 0x746E656D75636F64;
    *(v58 + 200) = 0xEF73656C69662D73;
    *(v58 + 208) = v84;
    *(v58 + 216) = v22;
    *(v58 + 224) = &unk_1F49F9F18;
    OUTLINED_FUNCTION_14_32();
    sub_1CA94C438();
    OUTLINED_FUNCTION_59();
    sub_1CA94C368();
    OUTLINED_FUNCTION_6_48();
    OUTLINED_FUNCTION_16_32();
    v88 = OUTLINED_FUNCTION_1_52();

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_17_20();
    *(v58 + 232) = 0xD000000000000012;
    *(v58 + 240) = v1;
    *(v58 + 248) = v84;
    *(v58 + 256) = v22;
    *(v58 + 264) = &unk_1F49F9F68;
    sub_1CA94C438();
    OUTLINED_FUNCTION_59();
    sub_1CA94C368();
    OUTLINED_FUNCTION_6_48();
    OUTLINED_FUNCTION_16_32();
    v89 = OUTLINED_FUNCTION_1_52();

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_59();

    strcpy((v58 + 272), "documents-usdz");
    *(v58 + 287) = -18;
    *(v58 + 288) = v84;
    *(v58 + 296) = v88;
    v90 = &unk_1F49F9FC8;
LABEL_61:
    *(v58 + 304) = v90;
    return v58;
  }

  v32 = *MEMORY[0x1E6996FD0];
  sub_1CA94C3A8();
  OUTLINED_FUNCTION_12_33();
  OUTLINED_FUNCTION_18_29();
  if (v25 && v2 == v33)
  {

    goto LABEL_63;
  }

  OUTLINED_FUNCTION_5_50();
  OUTLINED_FUNCTION_212();

  if (v3)
  {
LABEL_63:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444098, &qword_1CA9826C0);
    v58 = OUTLINED_FUNCTION_33_16();
    strcpy((v58 + 32), "location-empty");
    *(v58 + 47) = -18;
    v91 = OUTLINED_FUNCTION_15_26(v58);
    OUTLINED_FUNCTION_26_22(v91, &unk_1F49F9FF8, v92);
    OUTLINED_FUNCTION_14_32();
    sub_1CA94C438();
    OUTLINED_FUNCTION_70_0();
    if (qword_1EDB9F5F0 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    OUTLINED_FUNCTION_20_32();
    OUTLINED_FUNCTION_11_37();
    OUTLINED_FUNCTION_77_0();
    v93 = OUTLINED_FUNCTION_2_62();
    v96 = OUTLINED_FUNCTION_24_21(v93, v94, v95);

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_22_23();
    *(v58 + 72) = 0xD000000000000011;
    *(v58 + 80) = v1;
    OUTLINED_FUNCTION_21_25(&unk_1F49FA078);
    OUTLINED_FUNCTION_14_32();
    sub_1CA94C438();
    OUTLINED_FUNCTION_59();
    sub_1CA94C368();
    OUTLINED_FUNCTION_6_48();
    OUTLINED_FUNCTION_16_32();
    v97 = OUTLINED_FUNCTION_1_52();

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_17_20();
    *(v58 + 112) = 0xD000000000000012;
    *(v58 + 120) = v1;
    *(v58 + 128) = v96;
    *(v58 + 136) = v22;
    *(v58 + 144) = &unk_1F49FA0C8;
    sub_1CA94C438();
    OUTLINED_FUNCTION_59();
    sub_1CA94C368();
    OUTLINED_FUNCTION_6_48();
    OUTLINED_FUNCTION_16_32();
    v98 = OUTLINED_FUNCTION_1_52();

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_17_20();
    *(v58 + 152) = 0x6E6F697461636F6CLL;
    *(v58 + 160) = 0xEF6C65766172742DLL;
    OUTLINED_FUNCTION_29_17(&unk_1F49FA108);
    sub_1CA94C438();
    OUTLINED_FUNCTION_59();
    sub_1CA94C368();
    OUTLINED_FUNCTION_6_48();
    OUTLINED_FUNCTION_16_32();
    v99 = OUTLINED_FUNCTION_1_52();

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_59();

    *(v58 + 192) = 0xD000000000000012;
    *(v58 + 200) = 0x80000001CA9DCBC0;
    *(v58 + 208) = v96;
    *(v58 + 216) = v98;
    v68 = &unk_1F49FA158;
    goto LABEL_51;
  }

  v35 = *MEMORY[0x1E6996FD8];
  sub_1CA94C3A8();
  OUTLINED_FUNCTION_12_33();
  OUTLINED_FUNCTION_18_29();
  if (v25 && v2 == v36)
  {

    goto LABEL_67;
  }

  OUTLINED_FUNCTION_5_50();
  OUTLINED_FUNCTION_212();

  if (v3)
  {
LABEL_67:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444098, &qword_1CA9826C0);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_1CA981420;
    sub_1CA94C438();
    OUTLINED_FUNCTION_70_0();
    if (qword_1EDB9F5F0 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    OUTLINED_FUNCTION_20_32();
    OUTLINED_FUNCTION_11_37();
    OUTLINED_FUNCTION_77_0();
    v100 = OUTLINED_FUNCTION_2_62();
    v103 = OUTLINED_FUNCTION_24_21(v100, v101, v102);

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_22_23();
    OUTLINED_FUNCTION_9_38();
    *(v58 + 32) = v104 & 0xFFFFFFFFFFFFLL | 0x6D69000000000000;
    *(v58 + 40) = 0xEC00000073656761;
    *(v58 + 48) = v20;
    *(v58 + 56) = v22;
    *(v58 + 64) = &unk_1F49FA1A8;
    OUTLINED_FUNCTION_10_35();
    sub_1CA94C438();
    OUTLINED_FUNCTION_59();
    sub_1CA94C368();
    OUTLINED_FUNCTION_6_48();
    OUTLINED_FUNCTION_16_32();
    v105 = OUTLINED_FUNCTION_1_52();

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_17_20();
    *(v58 + 72) = 0xD000000000000012;
    *(v58 + 80) = v10;
    *(v58 + 88) = v103;
    *(v58 + 96) = v22;
    *(v58 + 104) = &unk_1F49FA238;
    sub_1CA94C438();
    OUTLINED_FUNCTION_59();
    sub_1CA94C368();
    OUTLINED_FUNCTION_6_48();
    OUTLINED_FUNCTION_16_32();
    v106 = OUTLINED_FUNCTION_1_52();

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_17_20();
    OUTLINED_FUNCTION_9_38();
    *(v58 + 112) = v107 & 0xFFFFFFFFFFFFLL | 0x6967000000000000;
    *(v58 + 120) = 0xEA00000000007366;
    *(v58 + 128) = v103;
    *(v58 + 136) = v22;
    *(v58 + 144) = &unk_1F49FA2F8;
    sub_1CA94C438();
    OUTLINED_FUNCTION_59();
    sub_1CA94C368();
    OUTLINED_FUNCTION_6_48();
    OUTLINED_FUNCTION_16_32();
    v108 = OUTLINED_FUNCTION_1_52();

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_17_20();
    OUTLINED_FUNCTION_9_38();
    *(v58 + 152) = v109 & 0xFFFFFFFFFFFFLL | 0x6870000000000000;
    *(v58 + 160) = 0xEC000000736F746FLL;
    *(v58 + 168) = v103;
    *(v58 + 176) = v22;
    *(v58 + 184) = &unk_1F49FA358;
    sub_1CA94C438();
    OUTLINED_FUNCTION_59();
    sub_1CA94C368();
    OUTLINED_FUNCTION_6_48();
    OUTLINED_FUNCTION_16_32();
    v110 = OUTLINED_FUNCTION_1_52();

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_17_20();
    OUTLINED_FUNCTION_9_38();
    *(v58 + 192) = v111 & 0xFFFFFFFFFFFFLL | 0x6976000000000000;
    *(v58 + 200) = 0xEB000000006F6564;
    *(v58 + 208) = v103;
    *(v58 + 216) = v22;
    *(v58 + 224) = &unk_1F49FA428;
    sub_1CA94C438();
    OUTLINED_FUNCTION_59();
    sub_1CA94C368();
    OUTLINED_FUNCTION_6_48();
    OUTLINED_FUNCTION_16_32();
    v112 = OUTLINED_FUNCTION_1_52();

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_17_20();
    strcpy((v58 + 232), "media-playback");
    *(v58 + 247) = -18;
    *(v58 + 248) = v103;
    *(v58 + 256) = v22;
    *(v58 + 264) = &unk_1F49FA468;
    sub_1CA94C438();
    OUTLINED_FUNCTION_59();
    sub_1CA94C368();
    OUTLINED_FUNCTION_6_48();
    OUTLINED_FUNCTION_16_32();
    v113 = OUTLINED_FUNCTION_1_52();

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_17_20();
    OUTLINED_FUNCTION_9_38();
    *(v58 + 272) = v114 & 0xFFFFFFFFFFFFLL | 0x756D000000000000;
    *(v58 + 280) = 0xEB00000000636973;
    *(v58 + 288) = v103;
    *(v58 + 296) = v22;
    *(v58 + 304) = &unk_1F49FA508;
    OUTLINED_FUNCTION_14_32();
    sub_1CA94C438();
    OUTLINED_FUNCTION_59();
    sub_1CA94C368();
    OUTLINED_FUNCTION_6_48();
    OUTLINED_FUNCTION_16_32();
    v115 = OUTLINED_FUNCTION_1_52();

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_17_20();
    *(v58 + 312) = 0xD000000000000011;
    *(v58 + 320) = v1;
    *(v58 + 328) = v103;
    *(v58 + 336) = v22;
    *(v58 + 344) = &unk_1F49FA598;
    sub_1CA94C438();
    OUTLINED_FUNCTION_59();
    sub_1CA94C368();
    OUTLINED_FUNCTION_6_48();
    OUTLINED_FUNCTION_16_32();
    v116 = OUTLINED_FUNCTION_1_52();

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_17_20();
    *(v58 + 352) = 0x6C702D616964656DLL;
    *(v58 + 360) = 0xEF737473696C7961;
    *(v58 + 368) = v103;
    *(v58 + 376) = v22;
    *(v58 + 384) = &unk_1F49FA5D8;
    sub_1CA94C438();
    OUTLINED_FUNCTION_59();
    sub_1CA94C368();
    OUTLINED_FUNCTION_6_48();
    OUTLINED_FUNCTION_16_32();
    v117 = OUTLINED_FUNCTION_1_52();

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_59();

    OUTLINED_FUNCTION_9_38();
    *(v58 + 392) = v118 & 0xFFFFFFFFFFFFLL | 0x6F70000000000000;
    *(v58 + 400) = 0xEE00737473616364;
    *(v58 + 408) = v103;
    *(v58 + 416) = v116;
    *(v58 + 424) = &unk_1F49FA628;
    return v58;
  }

  v38 = *MEMORY[0x1E6996FE0];
  sub_1CA94C3A8();
  OUTLINED_FUNCTION_12_33();
  OUTLINED_FUNCTION_18_29();
  if (v25 && v2 == v39)
  {

    goto LABEL_71;
  }

  OUTLINED_FUNCTION_5_50();
  OUTLINED_FUNCTION_212();

  if (v3)
  {
LABEL_71:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444098, &qword_1CA9826C0);
    v58 = swift_allocObject();
    OUTLINED_FUNCTION_27_23();
    *(v119 + 32) = 0x6E69747069726373;
    *(v119 + 40) = v120;
    v121 = OUTLINED_FUNCTION_15_26(v119);
    OUTLINED_FUNCTION_26_22(v121, &unk_1F49FA6B8, v122);
    OUTLINED_FUNCTION_10_35();
    sub_1CA94C438();
    OUTLINED_FUNCTION_70_0();
    if (qword_1EDB9F5F0 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    OUTLINED_FUNCTION_20_32();
    OUTLINED_FUNCTION_11_37();
    v123 = OUTLINED_FUNCTION_77_0();
    v124 = OUTLINED_FUNCTION_7_42(v123, sel_localizedStringForKey_value_table_);

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_22_23();
    v256 = 0xD000000000000015;
    *(v58 + 72) = 0xD000000000000015;
    *(v58 + 80) = v10;
    OUTLINED_FUNCTION_21_25(&unk_1F49FA728);
    sub_1CA94C438();
    OUTLINED_FUNCTION_59();
    sub_1CA94C368();
    OUTLINED_FUNCTION_6_48();
    OUTLINED_FUNCTION_16_32();
    v125 = OUTLINED_FUNCTION_3_57();

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_17_20();
    v257 = 0xD000000000000013;
    *(v58 + 112) = 0xD000000000000013;
    *(v58 + 120) = 0x80000001CA9DC9C0;
    *(v58 + 128) = v124;
    *(v58 + 136) = v22;
    *(v58 + 144) = &unk_1F49FA798;
    sub_1CA94C438();
    OUTLINED_FUNCTION_59();
    sub_1CA94C368();
    OUTLINED_FUNCTION_6_48();
    OUTLINED_FUNCTION_16_32();
    v126 = OUTLINED_FUNCTION_3_57();

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_17_20();
    *(v58 + 152) = 0x6E69747069726373;
    *(v58 + 160) = 0xEF737473696C2D67;
    OUTLINED_FUNCTION_29_17(&unk_1F49FA7E8);
    OUTLINED_FUNCTION_10_35();
    sub_1CA94C438();
    OUTLINED_FUNCTION_59();
    sub_1CA94C368();
    OUTLINED_FUNCTION_6_48();
    OUTLINED_FUNCTION_16_32();
    v127 = OUTLINED_FUNCTION_3_57();

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_17_20();
    *(v58 + 192) = 0xD000000000000016;
    *(v58 + 200) = v10;
    *(v58 + 208) = v124;
    *(v58 + 216) = v22;
    *(v58 + 224) = &unk_1F49FA838;
    OUTLINED_FUNCTION_10_35();
    sub_1CA94C438();
    OUTLINED_FUNCTION_59();
    sub_1CA94C368();
    OUTLINED_FUNCTION_6_48();
    OUTLINED_FUNCTION_16_32();
    v128 = OUTLINED_FUNCTION_3_57();

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_17_20();
    *(v58 + 232) = 0xD000000000000011;
    *(v58 + 240) = v10;
    *(v58 + 248) = v124;
    *(v58 + 256) = v22;
    *(v58 + 264) = &unk_1F49FA898;
    sub_1CA94C438();
    OUTLINED_FUNCTION_59();
    sub_1CA94C368();
    OUTLINED_FUNCTION_6_48();
    OUTLINED_FUNCTION_16_32();
    v129 = OUTLINED_FUNCTION_3_57();

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_17_20();
    strcpy((v58 + 272), "scripting-math");
    *(v58 + 287) = -18;
    *(v58 + 288) = v124;
    *(v58 + 296) = v22;
    *(v58 + 304) = &unk_1F49FA908;
    OUTLINED_FUNCTION_10_35();
    sub_1CA94C438();
    OUTLINED_FUNCTION_59();
    sub_1CA94C368();
    OUTLINED_FUNCTION_6_48();
    OUTLINED_FUNCTION_16_32();
    v130 = OUTLINED_FUNCTION_3_57();

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_17_20();
    *(v58 + 312) = 0xD000000000000016;
    *(v58 + 320) = v10;
    *(v58 + 328) = v124;
    *(v58 + 336) = v22;
    *(v58 + 344) = &unk_1F49FA958;
    sub_1CA94C438();
    OUTLINED_FUNCTION_59();
    sub_1CA94C368();
    OUTLINED_FUNCTION_6_48();
    OUTLINED_FUNCTION_16_32();
    v131 = OUTLINED_FUNCTION_3_57();

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_17_20();
    *(v58 + 352) = 0x6E69747069726373;
    *(v58 + 360) = 0xEF73657461642D67;
    *(v58 + 368) = v124;
    *(v58 + 376) = v22;
    *(v58 + 384) = &unk_1F49FA998;
    sub_1CA94C438();
    OUTLINED_FUNCTION_59();
    sub_1CA94C368();
    OUTLINED_FUNCTION_6_48();
    OUTLINED_FUNCTION_16_32();
    v132 = OUTLINED_FUNCTION_3_57();

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_17_20();
    strcpy((v58 + 392), "scripting-text");
    *(v58 + 407) = -18;
    *(v58 + 408) = v124;
    *(v58 + 416) = v22;
    *(v58 + 424) = &unk_1F49FAA18;
    OUTLINED_FUNCTION_10_35();
    sub_1CA94C438();
    OUTLINED_FUNCTION_59();
    sub_1CA94C368();
    OUTLINED_FUNCTION_6_48();
    OUTLINED_FUNCTION_16_32();
    v133 = OUTLINED_FUNCTION_3_57();

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_17_20();
    v134 = v256;
    *(v58 + 432) = v256;
    *(v58 + 440) = v10;
    *(v58 + 448) = v124;
    *(v58 + 456) = v22;
    *(v58 + 464) = &unk_1F49FAA78;
    sub_1CA94C438();
    OUTLINED_FUNCTION_59();
    sub_1CA94C368();
    OUTLINED_FUNCTION_6_48();
    OUTLINED_FUNCTION_16_32();
    v135 = OUTLINED_FUNCTION_3_57();

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_17_20();
    *(v58 + 472) = 0x6E69747069726373;
    *(v58 + 480) = 0xEF6F696475612D67;
    *(v58 + 488) = v124;
    *(v58 + 496) = v22;
    *(v58 + 504) = &unk_1F49FAB18;
    OUTLINED_FUNCTION_10_35();
    sub_1CA94C438();
    OUTLINED_FUNCTION_59();
    sub_1CA94C368();
    OUTLINED_FUNCTION_6_48();
    OUTLINED_FUNCTION_16_32();
    v136 = OUTLINED_FUNCTION_3_57();

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_17_20();
    *(v58 + 512) = v134;
    *(v58 + 520) = v10;
    *(v58 + 528) = v124;
    *(v58 + 536) = v22;
    *(v58 + 544) = &unk_1F49FAB78;
    sub_1CA94C438();
    OUTLINED_FUNCTION_59();
    sub_1CA94C368();
    OUTLINED_FUNCTION_6_48();
    OUTLINED_FUNCTION_16_32();
    v137 = OUTLINED_FUNCTION_3_57();

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_17_20();
    *(v58 + 552) = 0x6E69747069726373;
    *(v58 + 560) = 0xEF736D6574692D67;
    *(v58 + 568) = v124;
    *(v58 + 576) = v22;
    *(v58 + 584) = &unk_1F49FABB8;
    OUTLINED_FUNCTION_10_35();
    sub_1CA94C438();
    OUTLINED_FUNCTION_59();
    sub_1CA94C368();
    OUTLINED_FUNCTION_6_48();
    OUTLINED_FUNCTION_16_32();
    v138 = OUTLINED_FUNCTION_3_57();

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_17_20();
    *(v58 + 592) = v257;
    *(v58 + 600) = v10;
    *(v58 + 608) = v124;
    *(v58 + 616) = v22;
    *(v58 + 624) = &unk_1F49FAC28;
    sub_1CA94C438();
    OUTLINED_FUNCTION_59();
    sub_1CA94C368();
    OUTLINED_FUNCTION_6_48();
    OUTLINED_FUNCTION_16_32();
    v139 = OUTLINED_FUNCTION_3_57();

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_59();

    *(v58 + 632) = 0x6E69747069726373;
    *(v58 + 640) = 0xEF726568746F2D67;
    *(v58 + 648) = v124;
    *(v58 + 656) = v138;
    *(v58 + 664) = &unk_1F49FAC68;
    return v58;
  }

  v41 = *MEMORY[0x1E6996FE8];
  sub_1CA94C3A8();
  OUTLINED_FUNCTION_12_33();
  OUTLINED_FUNCTION_18_29();
  if (v25 && v2 == v42)
  {

    goto LABEL_75;
  }

  OUTLINED_FUNCTION_5_50();
  OUTLINED_FUNCTION_212();

  if (v3)
  {
LABEL_75:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444098, &qword_1CA9826C0);
    v58 = OUTLINED_FUNCTION_33_16();
    *(v58 + 16) = xmmword_1CA981370;
    strcpy((v58 + 32), "sharing-empty");
    *(v58 + 46) = -4864;
    *(OUTLINED_FUNCTION_15_26(v58) + 64) = &unk_1F49FAD28;
    sub_1CA94C438();
    OUTLINED_FUNCTION_70_0();
    if (qword_1EDB9F5F0 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    OUTLINED_FUNCTION_20_32();
    OUTLINED_FUNCTION_11_37();
    v140 = OUTLINED_FUNCTION_77_0();
    v141 = OUTLINED_FUNCTION_7_42(v140, sel_localizedStringForKey_value_table_);

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_22_23();
    *(v58 + 72) = 0x2D676E6972616873;
    *(v58 + 80) = 0xEF706F7264726961;
    OUTLINED_FUNCTION_21_25(&unk_1F49FAD88);
    OUTLINED_FUNCTION_10_35();
    sub_1CA94C438();
    OUTLINED_FUNCTION_59();
    sub_1CA94C368();
    OUTLINED_FUNCTION_6_48();
    v142 = OUTLINED_FUNCTION_16_32();
    v143 = OUTLINED_FUNCTION_4_55(v142, sel_localizedStringForKey_value_table_);

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_17_20();
    *(v58 + 112) = 0xD000000000000011;
    *(v58 + 120) = v10;
    *(v58 + 128) = v141;
    *(v58 + 136) = v22;
    *(v58 + 144) = &unk_1F49FADB8;
    sub_1CA94C438();
    OUTLINED_FUNCTION_59();
    sub_1CA94C368();
    OUTLINED_FUNCTION_6_48();
    v144 = OUTLINED_FUNCTION_16_32();
    v145 = OUTLINED_FUNCTION_4_55(v144, sel_localizedStringForKey_value_table_);

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_17_20();
    strcpy((v58 + 152), "sharing-photos");
    *(v58 + 167) = -18;
    *(v58 + 168) = v141;
    *(v58 + 176) = v22;
    *(v58 + 184) = &unk_1F49FADF8;
    sub_1CA94C438();
    OUTLINED_FUNCTION_59();
    sub_1CA94C368();
    OUTLINED_FUNCTION_6_48();
    v146 = OUTLINED_FUNCTION_16_32();
    v147 = OUTLINED_FUNCTION_4_55(v146, sel_localizedStringForKey_value_table_);

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_59();

    strcpy((v58 + 192), "sharing-qrcode");
    *(v58 + 207) = -18;
    *(v58 + 208) = v141;
    *(v58 + 216) = v145;
    v68 = &unk_1F49FAE28;
LABEL_51:
    *(v58 + 224) = v68;
    return v58;
  }

  v252 = v20;
  v253 = v17;
  v254 = v10;
  v251 = v0;
  v247 = v6;
  v44 = *MEMORY[0x1E6996FF0];
  v45 = sub_1CA94C3A8();
  v47 = v46;
  if (v45 == sub_1CA94C3A8() && v47 == v48)
  {

    goto LABEL_79;
  }

  v50 = sub_1CA94D7F8();

  if (v50)
  {
LABEL_79:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444098, &qword_1CA9826C0);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_1CA981400;
    OUTLINED_FUNCTION_19_26();
    *(v149 + 32) = v148 | 0x74706D6500000000;
    *(v149 + 40) = 0xE900000000000079;
    *(OUTLINED_FUNCTION_15_26(v149) + 64) = &unk_1F49FAE68;
    sub_1CA94C438();
    OUTLINED_FUNCTION_70_0();
    if (qword_1EDB9F5F0 != -1)
    {
LABEL_139:
      OUTLINED_FUNCTION_0_3();
    }

    OUTLINED_FUNCTION_20_32();
    OUTLINED_FUNCTION_11_37();
    v150 = OUTLINED_FUNCTION_77_0();
    v151 = OUTLINED_FUNCTION_7_42(v150, sel_localizedStringForKey_value_table_);

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_22_23();
    OUTLINED_FUNCTION_19_26();
    *(v58 + 72) = v152 | 0x6166617300000000;
    *(v58 + 80) = 0xEA00000000006972;
    *(v58 + 88) = v20;
    *(v58 + 96) = v22;
    *(v58 + 104) = &unk_1F49FAEB8;
    sub_1CA94C438();
    OUTLINED_FUNCTION_59();
    sub_1CA94C368();
    OUTLINED_FUNCTION_6_48();
    v153 = OUTLINED_FUNCTION_16_32();
    v154 = OUTLINED_FUNCTION_4_55(v153, sel_localizedStringForKey_value_table_);

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_17_20();
    OUTLINED_FUNCTION_19_26();
    *(v58 + 112) = v155 | 0x73737200000000;
    *(v58 + 120) = 0xE700000000000000;
    *(v58 + 128) = v151;
    *(v58 + 136) = v22;
    *(v58 + 144) = &unk_1F49FAEF8;
    sub_1CA94C438();
    OUTLINED_FUNCTION_59();
    sub_1CA94C368();
    OUTLINED_FUNCTION_6_48();
    v156 = OUTLINED_FUNCTION_16_32();
    v157 = OUTLINED_FUNCTION_4_55(v156, sel_localizedStringForKey_value_table_);

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_17_20();
    OUTLINED_FUNCTION_19_26();
    *(v58 + 152) = v158 | 0x6974726100000000;
    *(v58 + 160) = 0xEC00000073656C63;
    *(v58 + 168) = v151;
    *(v58 + 176) = v22;
    *(v58 + 184) = &unk_1F49FAF38;
    sub_1CA94C438();
    OUTLINED_FUNCTION_59();
    sub_1CA94C368();
    OUTLINED_FUNCTION_6_48();
    v159 = OUTLINED_FUNCTION_16_32();
    v160 = OUTLINED_FUNCTION_4_55(v159, sel_localizedStringForKey_value_table_);

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_17_20();
    OUTLINED_FUNCTION_19_26();
    *(v58 + 192) = v161 | 0x736C727500000000;
    *(v58 + 200) = 0xE800000000000000;
    *(v58 + 208) = v151;
    *(v58 + 216) = v22;
    *(v58 + 224) = &unk_1F49FAF88;
    sub_1CA94C438();
    OUTLINED_FUNCTION_59();
    sub_1CA94C368();
    OUTLINED_FUNCTION_6_48();
    v162 = OUTLINED_FUNCTION_16_32();
    v163 = OUTLINED_FUNCTION_4_55(v162, sel_localizedStringForKey_value_table_);

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_17_20();
    OUTLINED_FUNCTION_19_26();
    *(v58 + 232) = v164 | 0x7262657700000000;
    *(v58 + 240) = 0xEF73747365757165;
    *(v58 + 248) = v151;
    *(v58 + 256) = v22;
    *(v58 + 264) = &unk_1F49FAFF8;
    sub_1CA94C438();
    OUTLINED_FUNCTION_59();
    sub_1CA94C368();
    OUTLINED_FUNCTION_6_48();
    v165 = OUTLINED_FUNCTION_16_32();
    v166 = OUTLINED_FUNCTION_4_55(v165, sel_localizedStringForKey_value_table_);

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_59();

    OUTLINED_FUNCTION_19_26();
    *(v58 + 272) = v167 | 0x7062657700000000;
    *(v58 + 280) = 0xEC00000073656761;
    *(v58 + 288) = v151;
    *(v58 + 296) = v163;
    v90 = &unk_1F49FB038;
    goto LABEL_61;
  }

  v51 = *MEMORY[0x1E6996FB0];
  v52 = sub_1CA94C3A8();
  v54 = v53;
  if (v52 == sub_1CA94C3A8() && v54 == v55)
  {
  }

  else
  {
    v57 = sub_1CA94D7F8();

    if ((v57 & 1) == 0)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  v168 = MEMORY[0x1E69E7CC0];
  v259 = MEMORY[0x1E69E7CC0];
  v169 = [objc_allocWithZone(type metadata accessor for WFVisualIntelligenceCameraAvailabilityResource()) init];
  v170 = [v169 isAvailable];

  if (v170)
  {
    sub_1CA26DADC();
    v168 = v171;
    v173 = *(v171 + 16);
    v172 = *(v171 + 24);
    if (v173 >= v172 >> 1)
    {
      OUTLINED_FUNCTION_64(v172);
      sub_1CA26DADC();
      v168 = v241;
    }

    *(v168 + 16) = v173 + 1;
    v174 = v168 + 16 * v173;
    *(v174 + 32) = 0xD00000000000002DLL;
    *(v174 + 40) = 0x80000001CA9B5950;
    v259 = v168;
  }

  v175 = [objc_allocWithZone(WFLLMActionAvailabilityResource) init];
  v176 = [v175 isAvailable];

  v177 = MEMORY[0x1E69E1078];
  if (v176)
  {
    v178 = *(v168 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v259 = v168;
    if (!isUniquelyReferenced_nonNull_native || v178 >= *(v168 + 24) >> 1)
    {
      if (*(v168 + 16) > v178 + 1)
      {
        v180 = *(v168 + 16);
      }

      sub_1CA26DADC();
      v168 = v181;
      v259 = v181;
    }

    sub_1CA6AFF14();
    v259 = v168;
  }

  else
  {
    v182 = *MEMORY[0x1E69E1078];
    sub_1CA949C58();
    v183 = sub_1CA949F68();
    v184 = sub_1CA94CC18();
    if (os_log_type_enabled(v183, v184))
    {
      v185 = swift_slowAlloc();
      *v185 = 0;
      _os_log_impl(&dword_1CA256000, v183, v184, "Not adding Use Model to drawer. Action is not available", v185, 2u);
      MEMORY[0x1CCAA4BF0](v185, -1, -1);
    }

    (*(v255 + 8))(v22, v254);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444098, &qword_1CA9826C0);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_1CA981310;
  *(v58 + 32) = 0xD000000000000018;
  *(v58 + 40) = 0x80000001CA9DC860;
  *(OUTLINED_FUNCTION_15_26(v58) + 64) = v168;
  v186 = [objc_allocWithZone(type metadata accessor for WFImagePlaygroundAvailabilityResource()) init];
  v187 = [v186 isAvailable];

  if (v187)
  {
    sub_1CA94C438();
    if (qword_1EDB9F5F0 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v188 = OUTLINED_FUNCTION_34_17();
    v189 = OUTLINED_FUNCTION_34_17();

    v191 = OUTLINED_FUNCTION_32_17(v190, sel_localizedStringForKey_value_table_);

    v192 = sub_1CA94C3A8();
    v194 = v193;

    v20 = *(v58 + 16);
    v195 = *(v58 + 24);
    if (v20 >= v195 >> 1)
    {
      OUTLINED_FUNCTION_64(v195);
      sub_1CA2E63A4();
      v58 = v242;
    }

    *(v58 + 16) = v20 + 1;
    OUTLINED_FUNCTION_28_12();
    v197[4] = v196 + 18;
    v197[5] = 0x80000001CA9DC900;
    v197[6] = v192;
    v197[7] = v194;
    v197[8] = &unk_1F49FB088;
  }

  else
  {
    v198 = *v177;
    sub_1CA949C58();
    v199 = sub_1CA949F68();
    v200 = sub_1CA94CC18();
    if (os_log_type_enabled(v199, v200))
    {
      v201 = swift_slowAlloc();
      *v201 = 0;
      _os_log_impl(&dword_1CA256000, v199, v200, "Not adding Image Playground section to drawer because isGenerativePlaygroundSupported is false", v201, 2u);
      MEMORY[0x1CCAA4BF0](v201, -1, -1);
    }

    (*(v255 + 8))(v252, v254);
  }

  v202 = [objc_allocWithZone(WFWritingToolsAvailabilityResource) init];
  v203 = [v202 isAvailable];

  if (v203)
  {
    sub_1CA94C438();
    if (qword_1EDB9F5F0 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v204 = OUTLINED_FUNCTION_34_17();
    v22 = OUTLINED_FUNCTION_34_17();

    v206 = OUTLINED_FUNCTION_32_17(v205, sel_localizedStringForKey_value_table_);

    v207 = sub_1CA94C3A8();
    v245 = v208;
    v246 = v207;

    ActionDrawerDataSource.actions(for:query:)();
    v209 = 0;
    v249 = *(v210 + 16);
    v250 = v210;
    v248 = v210 + 32;
    v211 = MEMORY[0x1E69E7CC0];
    while (v209 != v249)
    {
      if (v209 >= *(v250 + 16))
      {
        __break(1u);
LABEL_136:
        __break(1u);
LABEL_137:
        __break(1u);
LABEL_138:
        __break(1u);
        goto LABEL_139;
      }

      v212 = (v248 + 56 * v209);
      v213 = v212[6];
      v214 = *(v213 + 16);
      if (v214)
      {
        v254 = v209;
        v255 = v211;
        v215 = v212[1];
        v216 = v212[5];
        v217 = v212[3];
        v258 = MEMORY[0x1E69E7CC0];
        v253 = v215;
        sub_1CA94C218();
        v252 = v217;
        sub_1CA94C218();
        v251 = v216;
        sub_1CA94C218();
        swift_bridgeObjectRetain_n();
        sub_1CA271524();
        v218 = v258;
        v177 = (v213 + ((*(v247 + 80) + 32) & ~*(v247 + 80)));
        v219 = *(v247 + 72);
        do
        {
          v220 = v256;
          sub_1CA675D64(v177, v256);
          v221 = (v220 + *(v257 + 28));
          v222 = *v221;
          v223 = v221[1];
          sub_1CA94C218();
          sub_1CA675DC8(v220);
          v258 = v218;
          v225 = *(v218 + 16);
          v224 = *(v218 + 24);
          if (v225 >= v224 >> 1)
          {
            OUTLINED_FUNCTION_64(v224);
            sub_1CA271524();
            v218 = v258;
          }

          *(v218 + 16) = v225 + 1;
          v226 = v218 + 16 * v225;
          *(v226 + 32) = v222;
          *(v226 + 40) = v223;
          v177 = (v177 + v219);
          --v214;
        }

        while (v214);
        swift_bridgeObjectRelease_n();

        v209 = v254;
        v211 = v255;
      }

      else
      {
        v218 = MEMORY[0x1E69E7CC0];
      }

      v22 = *(v218 + 16);
      v227 = *(v211 + 16);
      v20 = &v22[v227];
      if (__OFADD__(v227, v22))
      {
        goto LABEL_136;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v20 > *(v211 + 24) >> 1)
      {
        sub_1CA26DADC();
        v211 = v228;
      }

      ++v209;
      if (*(v218 + 16))
      {
        if ((*(v211 + 24) >> 1) - *(v211 + 16) < v22)
        {
          goto LABEL_137;
        }

        swift_arrayInitWithCopy();

        if (v22)
        {
          v229 = *(v211 + 16);
          v230 = __OFADD__(v229, v22);
          v231 = &v22[v229];
          if (v230)
          {
            goto LABEL_138;
          }

          *(v211 + 16) = v231;
        }
      }

      else
      {

        if (v22)
        {
          __break(1u);
          goto LABEL_129;
        }
      }
    }

    v237 = *(v58 + 16);
    v236 = *(v58 + 24);
    if (v237 >= v236 >> 1)
    {
      OUTLINED_FUNCTION_64(v236);
      sub_1CA2E63A4();
      v58 = v243;
    }

    *(v58 + 16) = v237 + 1;
    OUTLINED_FUNCTION_28_12();
    v239[4] = v238 + 14;
    v239[5] = 0x80000001CA9DC8D0;
    v240 = v245;
    v239[6] = v246;
    v239[7] = v240;
    v239[8] = v211;
  }

  else
  {
LABEL_129:
    v232 = *v177;
    sub_1CA949C58();
    v233 = sub_1CA949F68();
    v234 = sub_1CA94CC18();
    if (os_log_type_enabled(v233, v234))
    {
      v235 = swift_slowAlloc();
      *v235 = 0;
      _os_log_impl(&dword_1CA256000, v233, v234, "Not adding Writing Tools section to drawer. WTWritingToolsController reports feature is not available", v235, 2u);
      MEMORY[0x1CCAA4BF0](v235, -1, -1);
    }

    (*(v255 + 8))(v253, v254);
  }

  return v58;
}

uint64_t sub_1CA675D64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DrawerAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CA675DC8(uint64_t a1)
{
  v2 = type metadata accessor for DrawerAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CA675E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_1CA675E4C()
{
  OUTLINED_FUNCTION_6();
  if (*(v0[2] + 16) && (v1 = v0[4], v2 = v0[5], v3 = sub_1CA271BF8(), (v4 & 1) != 0))
  {
    v0[6] = *(*(v0[2] + 56) + 8 * v3);
    swift_unknownObjectRetain();
    objc_opt_self();
    if (OUTLINED_FUNCTION_37())
    {
      OUTLINED_FUNCTION_7_39(&dword_1CA9838A8);
      v5 = swift_task_alloc();
      v0[7] = v5;
      *v5 = v0;
      v5[1] = sub_1CA675FC4;
      v6 = OUTLINED_FUNCTION_11_2(v0[3]);

      return v7(v6);
    }

    else
    {
      sub_1CA2A741C();
      v10 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_8_31(v10, v11);
      swift_unknownObjectRetain();
      v12 = v0[6];
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_5();

      return v13();
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_4();

    return v9(0);
  }
}

uint64_t sub_1CA675FC4()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  v5 = *(v4 + 56);
  *v3 = *v1;
  *(v2 + 64) = v6;
  *(v2 + 72) = v0;

  if (v0)
  {
    v7 = sub_1CA2A630C;
  }

  else
  {
    v7 = sub_1CA6760CC;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1CA6760CC()
{
  OUTLINED_FUNCTION_6();
  if (!*(v0 + 64))
  {
    v5 = *(v0 + 48);
    swift_unknownObjectRelease();
    v3 = 0;
    goto LABEL_5;
  }

  objc_opt_self();
  v1 = OUTLINED_FUNCTION_37();
  v2 = *(v0 + 48);
  if (v1)
  {
    v3 = v1;
    v4 = *(v0 + 48);
    swift_unknownObjectRelease();
LABEL_5:
    v6 = *(v0 + 48);
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_2_4();

    return v7(v3);
  }

  sub_1CA2A741C();
  OUTLINED_FUNCTION_127();
  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_12_34(ObjectType);
  swift_willThrow();
  swift_unknownObjectRelease();
  v10 = *(v0 + 48);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_5();

  return v11();
}

uint64_t sub_1CA6761F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a4;
  v35 = a2;
  v33[1] = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA97EDF0;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"Key";
  *(inited + 40) = v7;
  *(inited + 48) = v8;
  *(inited + 64) = v9;
  *(inited + 72) = @"Label";
  v10 = @"Key";
  sub_1CA94C218();
  v11 = @"Label";
  v12 = sub_1CA94C438();
  v14 = v13;
  v15 = sub_1CA94C438();
  v17 = v16;
  v18 = sub_1CA948E58();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v22 = [qword_1EDB9F690 bundleURL];
  v23 = sub_1CA948BA8();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = v33 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v27 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v28 = sub_1CA2F9F14(v12, v14, v15, v17, 0, 0, v21, v26);
  *(inited + 104) = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 80) = v28;
  _s3__C3KeyVMa_0(0);
  sub_1CA2A7470();
  sub_1CA94C1E8();
  v29 = sub_1CA2F864C();
  v30 = [objc_allocWithZone(WFDurationQuantityFieldParameter) initWithDefinition_];

  [v30 setPossibleCalendarUnits_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC446D90, &unk_1CA981540);
  v31 = swift_initStackObject();
  *(v31 + 16) = xmmword_1CA981310;
  *(v31 + 32) = v35;
  *(v31 + 40) = a3;
  *(v31 + 48) = v30;
  sub_1CA25B3D0(0, &qword_1EC441AA0, off_1E836EDB8);
  sub_1CA94C218();
  return sub_1CA94C1E8();
}

uint64_t sub_1CA67655C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1CA67662C;
  OUTLINED_FUNCTION_4_32();

  return sub_1CA67672C(v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1CA67662C()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v3 = *(v2 + 16);
  v4 = *v1;
  OUTLINED_FUNCTION_1();
  *v5 = v4;

  OUTLINED_FUNCTION_2_4();
  if (v0)
  {
    v6 = 0;
  }

  return v7(v6);
}

uint64_t sub_1CA67672C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_1CA67674C()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[2];
  sub_1CA94C218();
  v4 = sub_1CA323E28(v1, v2);
  v0[9] = v4;
  v5 = v0[6];
  if (v4)
  {
    v6 = v0[6];

    objc_opt_self();
    if (OUTLINED_FUNCTION_37())
    {
      OUTLINED_FUNCTION_7_39(&dword_1CA9838A8);
      v7 = swift_task_alloc();
      v0[10] = v7;
      *v7 = v0;
      v7[1] = sub_1CA6768C8;
      v8 = OUTLINED_FUNCTION_11_2(v0[4]);

      return v9(v8);
    }

    sub_1CA2A741C();
    v13 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_8_31(v13, v14);
    v15 = v0[9];
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = v0[5];
    sub_1CA2A741C();
    OUTLINED_FUNCTION_127();
    *v12 = v11;
    *(v12 + 8) = v5;
    *(v12 + 32) = 0;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_5();

  return v16();
}

uint64_t sub_1CA6768C8()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  v5 = *(v4 + 80);
  *v3 = *v1;
  *(v2 + 88) = v6;
  *(v2 + 96) = v0;

  if (v0)
  {
    v7 = sub_1CA676BB8;
  }

  else
  {
    v7 = sub_1CA6769D0;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1CA6769D0()
{
  if (!v0[11])
  {
    v10 = v0[9];
    swift_unknownObjectRelease_n();
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_4_32();

    __asm { BRAA            X2, X16 }
  }

  objc_opt_self();
  v1 = OUTLINED_FUNCTION_37();
  if (!v1)
  {
    v13 = v0[9];
    sub_1CA2A741C();
    OUTLINED_FUNCTION_127();
    ObjectType = swift_getObjectType();
    OUTLINED_FUNCTION_12_34(ObjectType);
    swift_willThrow();
    swift_unknownObjectRelease();
    v15 = v0[9];
LABEL_9:
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_4_32();

    __asm { BRAA            X1, X16 }
  }

  v2 = v1;
  v3 = v0[12];
  v5 = v0[8];
  v4 = v0[9];
  v7 = v0[6];
  v6 = v0[7];
  v8 = v0[5];
  swift_unknownObjectRelease();
  v0[13] = sub_1CA676F6C(v2);
  if (v3)
  {
    v9 = v0[9];
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  sub_1CA25B3D0(0, &qword_1EC447EB8, 0x1E6996F70);
  v18 = *(MEMORY[0x1E6996C50] + 4);
  v19 = swift_task_alloc();
  v0[14] = v19;
  *v19 = v0;
  v19[1] = sub_1CA676C1C;
  v20 = v0[3];
  OUTLINED_FUNCTION_4_32();

  return MEMORY[0x1EEDF81A0](v21);
}

uint64_t sub_1CA676BB8()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 72);
  swift_unknownObjectRelease();
  v2 = *(v0 + 96);
  v3 = *(v0 + 72);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_5();

  return v4();
}

uint64_t sub_1CA676C1C()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  v5 = *(v4 + 112);
  *v3 = *v1;
  *(v2 + 120) = v6;
  *(v2 + 128) = v0;

  if (v0)
  {
    v7 = sub_1CA676E34;
  }

  else
  {

    v7 = sub_1CA676D30;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1CA676D30()
{
  OUTLINED_FUNCTION_6();
  if (*(v0 + 120))
  {
    v1 = *(v0 + 120);
    swift_unknownObjectRetain();
    objc_opt_self();
    v2 = OUTLINED_FUNCTION_37();
    v3 = *(v0 + 104);
    v4 = *(v0 + 88);
    v5 = *(v0 + 72);
    if (v2)
    {
      v6 = [v2 compare_];

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v6 = -1;
    }
  }

  else
  {

    v7 = *(v0 + 88);
    v8 = *(v0 + 72);
    v6 = -1;
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_2_4();

  return v9(v6);
}

uint64_t sub_1CA676E34()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v3 = *(v0 + 128);
  OUTLINED_FUNCTION_5();

  return v4();
}

uint64_t sub_1CA676EA8(uint64_t a1, uint64_t *a2)
{
  v6 = *v2;
  v7 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1CA2A715C;

  return sub_1CA67655C(a1, a2);
}

_BYTE *sub_1CA676F6C(void *a1)
{
  sub_1CA677620(a1);
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = objc_opt_self();
  v5 = sub_1CA94C368();
  v6 = [v4 unitStringIsDurationUnit_];

  if (!v6)
  {

LABEL_7:
    sub_1CA2A741C();
    swift_allocError();
    v20 = v19;
    v19[3] = sub_1CA25B3D0(0, &qword_1EC443820, 0x1E6996F28);
    *v20 = a1;
    v20[32] = 2;
    swift_willThrow();
    v21 = a1;
    return v20;
  }

  v7 = sub_1CA94C368();
  v8 = [v4 calendarUnitFromUnitString_];

  v9 = sub_1CA9490C8();
  v47 = v40;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447EC0, &qword_1CA991A98);
  v15 = (*(*(v14 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = v40 - v16;
  sub_1CA25B3D0(0, &qword_1EC447EC8, off_1E836E2B0);
  sub_1CA4E35D0(v8, v17);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v17, 1, v9);
  v45 = v10;
  v46 = v9;
  v49 = v1;
  v50 = v13;
  if (EnumTagSinglePayload == 1)
  {
    (*(v10 + 104))(v13, *MEMORY[0x1E6969AA0], v9);
    if (__swift_getEnumTagSinglePayload(v17, 1, v9) != 1)
    {
      sub_1CA30F7DC(v17, &qword_1EC447EC0, &qword_1CA991A98);
    }
  }

  else
  {
    (*(v10 + 32))(v13, v17, v9);
  }

  v43 = sub_1CA9490D8();
  v44 = v40;
  v42 = *(v43 - 8);
  v22 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v24 = v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA9490B8();
  v25 = sub_1CA948CB8();
  v40[1] = v40;
  v48 = *(v25 - 8);
  v26 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v28 = v40 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948C88();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4466D0, &qword_1CA991AA0);
  v40[0] = v40;
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v31 = (v30 + 15) & 0xFFFFFFFFFFFFFFF0;
  v32 = v40 - v31;
  v33 = [a1 magnitude];
  [v33 integerValue];

  v41 = v24;
  v34 = sub_1CA9490A8();
  MEMORY[0x1EEE9AC00](v34);
  v35 = v40 - v31;
  sub_1CA677684(v40 - v31, v40 - v31);
  if (__swift_getEnumTagSinglePayload(v40 - v31, 1, v25) == 1)
  {
    sub_1CA30F7DC(v40 - v31, &qword_1EC4466D0, &qword_1CA991AA0);
    v36 = 0.0;
    v37 = v48;
  }

  else
  {
    sub_1CA948C48();
    v36 = v38;
    v37 = v48;
    (*(v48 + 8))(v35, v25);
  }

  result = [objc_allocWithZone(MEMORY[0x1E6996F70]) initWithTimeInterval_];
  if (result)
  {
    v20 = result;

    sub_1CA30F7DC(v32, &qword_1EC4466D0, &qword_1CA991AA0);
    (*(v37 + 8))(v28, v25);
    (*(v42 + 8))(v41, v43);
    (*(v45 + 8))(v50, v46);
    return v20;
  }

  __break(1u);
  return result;
}

uint64_t sub_1CA67754C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = v3[1];
  v11 = v3[2];
  v10 = v3[3];
  v12 = swift_task_alloc();
  *(v4 + 16) = v12;
  *v12 = v4;
  v12[1] = sub_1CA2A731C;

  return sub_1CA67672C(a1, a2, a3, v8, v9, v11, v10);
}

uint64_t sub_1CA677620(void *a1)
{
  v1 = [a1 unitString];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1CA94C3A8();

  return v3;
}

uint64_t sub_1CA677684(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4466D0, &qword_1CA991AA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1CA677738()
{
  v155 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981550;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000013;
  *(inited + 48) = 0x80000001CA9DCD80;
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
  v161 = v12;
  v165 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = v144 - v165;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v164 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v162 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v163 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = v144 - v163;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v160 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  v154 = v23;
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Description";
  v159 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1CA981310;
  *(v24 + 32) = @"DescriptionSummary";
  v25 = @"Description";
  v26 = @"DescriptionSummary";
  v27 = sub_1CA94C438();
  v157 = v28;
  v29 = sub_1CA94C438();
  v31 = v30;
  v158 = v144;
  MEMORY[0x1EEE9AC00](v29);
  v32 = v144 - v165;
  sub_1CA948D98();
  v33 = [v164 bundleURL];
  MEMORY[0x1EEE9AC00](v33);
  v34 = v144 - v163;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v36 = sub_1CA2F9F14(v27, v157, v29, v31, 0, 0, v32, v34);
  *(v24 + 64) = v160;
  *(v24 + 40) = v36;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v37 = v159;
  *(inited + 160) = sub_1CA6B3784();
  *(inited + 184) = v37;
  *(inited + 192) = @"DisabledOnPlatforms";
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  v159 = v38;
  *(inited + 200) = &unk_1F4A0B5F0;
  *(inited + 224) = v38;
  *(inited + 232) = @"IconColor";
  *(inited + 240) = 1953392980;
  *(inited + 248) = 0xE400000000000000;
  v39 = MEMORY[0x1E69E6158];
  *(inited + 264) = MEMORY[0x1E69E6158];
  *(inited + 272) = @"IconSymbol";
  *(inited + 280) = 0x6C6C69662E636F64;
  *(inited + 288) = 0xE800000000000000;
  *(inited + 304) = v39;
  *(inited + 312) = @"IconSymbolColor";
  *(inited + 320) = 1702194242;
  *(inited + 328) = 0xE400000000000000;
  *(inited + 344) = v39;
  *(inited + 352) = @"Name";
  v40 = @"DisabledOnPlatforms";
  v41 = @"IconColor";
  v42 = @"IconSymbol";
  v43 = @"IconSymbolColor";
  v44 = @"Name";
  v45 = sub_1CA94C438();
  v47 = v46;
  v48 = sub_1CA94C438();
  v50 = v49;
  v158 = v144;
  MEMORY[0x1EEE9AC00](v48);
  v51 = v144 - v165;
  sub_1CA948D98();
  v52 = [v164 bundleURL];
  MEMORY[0x1EEE9AC00](v52);
  v53 = v144 - v163;
  sub_1CA948B68();

  v54 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 360) = sub_1CA2F9F14(v45, v47, v48, v50, 0, 0, v51, v53);
  *(inited + 384) = v160;
  *(inited + 392) = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v55 = swift_initStackObject();
  v153 = xmmword_1CA981350;
  *(v55 + 16) = xmmword_1CA981350;
  *(v55 + 32) = 0x75736F6C63736944;
  *(v55 + 40) = 0xEF6C6576654C6572;
  *(v55 + 48) = 0x63696C627550;
  *(v55 + 56) = 0xE600000000000000;
  *(v55 + 72) = MEMORY[0x1E69E6158];
  *(v55 + 80) = 0x656C7069746C754DLL;
  *(v55 + 88) = 0xE800000000000000;
  v56 = MEMORY[0x1E69E6370];
  *(v55 + 96) = 1;
  *(v55 + 120) = v56;
  *(v55 + 128) = 0x614E74757074754FLL;
  *(v55 + 136) = 0xEA0000000000656DLL;
  v57 = @"Output";
  v58 = sub_1CA94C438();
  v157 = v59;
  v60 = sub_1CA94C438();
  v62 = v61;
  v158 = v144;
  MEMORY[0x1EEE9AC00](v60);
  v63 = v144 - v165;
  sub_1CA948D98();
  v64 = [v164 bundleURL];
  MEMORY[0x1EEE9AC00](v64);
  v65 = v144 - v163;
  sub_1CA948B68();

  v66 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v55 + 144) = sub_1CA2F9F14(v58, v157, v60, v62, 0, 0, v63, v65);
  *(v55 + 168) = v160;
  *(v55 + 176) = 0x7365707954;
  *(v55 + 216) = v159;
  *(v55 + 184) = 0xE500000000000000;
  *(v55 + 192) = &unk_1F4A0B620;
  v67 = MEMORY[0x1E69E6158];
  v68 = sub_1CA94C1E8();
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 400) = v68;
  *(inited + 424) = v69;
  *(inited + 432) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v158 = swift_allocObject();
  v151 = xmmword_1CA981360;
  *(v158 + 1) = xmmword_1CA981360;
  v157 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_1CA981370;
  *(v70 + 32) = @"Class";
  *(v70 + 40) = 0xD000000000000016;
  *(v70 + 48) = 0x80000001CA99C4A0;
  *(v70 + 64) = v67;
  *(v70 + 72) = @"DefaultValue";
  *(v70 + 80) = 0x73656C6946;
  *(v70 + 88) = 0xE500000000000000;
  *(v70 + 104) = v67;
  *(v70 + 112) = @"Items";
  v149 = swift_allocObject();
  *&v149->data = v151;
  v71 = @"Class";
  v72 = @"DefaultValue";
  *&v151 = v71;
  v150 = v72;
  v73 = @"Parameters";
  v74 = @"Items";
  v75 = sub_1CA94C438();
  v146 = v76;
  v147 = v75;
  v77 = sub_1CA94C438();
  v145 = v78;
  v148 = v144;
  MEMORY[0x1EEE9AC00](v77);
  v79 = v144 - v165;
  sub_1CA948D98();
  v80 = v164;
  v81 = [v164 bundleURL];
  v144[1] = v144;
  v156 = inited;
  MEMORY[0x1EEE9AC00](v81);
  v82 = v163;
  sub_1CA948B68();

  v83 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v84 = sub_1CA2F9F14(v147, v146, v77, v145, 0, 0, v79, v144 - v82);
  v85 = v149;
  v149[1].isa = v84;
  v86 = sub_1CA94C438();
  v146 = v87;
  v147 = v86;
  v88 = sub_1CA94C438();
  v145 = v89;
  v148 = v144;
  MEMORY[0x1EEE9AC00](v88);
  v90 = v144 - v165;
  sub_1CA948D98();
  v91 = [v80 bundleURL];
  MEMORY[0x1EEE9AC00](v91);
  sub_1CA948B68();

  v92 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v85[1].info = sub_1CA2F9F14(v147, v146, v88, v145, 0, 0, v90, v144 - v82);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  *(v70 + 120) = v85;
  *(v70 + 144) = v93;
  *(v70 + 152) = @"Key";
  strcpy((v70 + 160), "WFPickingMode");
  *(v70 + 174) = -4864;
  *(v70 + 184) = MEMORY[0x1E69E6158];
  *(v70 + 192) = @"Label";
  v94 = @"Key";
  v95 = @"Label";
  v148 = v94;
  v149 = v95;
  v96 = sub_1CA94C438();
  v146 = v97;
  v98 = sub_1CA94C438();
  v100 = v99;
  v147 = v144;
  MEMORY[0x1EEE9AC00](v98);
  v101 = v144 - v165;
  sub_1CA948D98();
  v102 = [v164 bundleURL];
  MEMORY[0x1EEE9AC00](v102);
  v103 = v144 - v163;
  sub_1CA948B68();

  v104 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v105 = sub_1CA2F9F14(v96, v146, v98, v100, 0, 0, v101, v103);
  *(v70 + 224) = v160;
  *(v70 + 200) = v105;
  _s3__C3KeyVMa_0(0);
  v147 = v106;
  v146 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v158[4] = sub_1CA2F864C();
  v107 = swift_allocObject();
  *(v107 + 16) = v153;
  *(v107 + 32) = v151;
  *(v107 + 40) = 0xD000000000000011;
  *(v107 + 48) = 0x80000001CA99E620;
  v108 = MEMORY[0x1E69E6158];
  v109 = v150;
  *(v107 + 64) = MEMORY[0x1E69E6158];
  *(v107 + 72) = v109;
  *(v107 + 80) = 0;
  v110 = v148;
  *(v107 + 104) = MEMORY[0x1E69E6370];
  *(v107 + 112) = v110;
  strcpy((v107 + 120), "SelectMultiple");
  *(v107 + 135) = -18;
  v111 = v149;
  *(v107 + 144) = v108;
  *(v107 + 152) = v111;
  v112 = sub_1CA94C438();
  v152 = v113;
  v114 = sub_1CA94C438();
  v116 = v115;
  *&v153 = v144;
  MEMORY[0x1EEE9AC00](v114);
  v117 = v165;
  sub_1CA948D98();
  v118 = [v164 bundleURL];
  MEMORY[0x1EEE9AC00](v118);
  v119 = v144 - v163;
  sub_1CA948B68();

  v120 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v121 = sub_1CA2F9F14(v112, v152, v114, v116, 0, 0, v144 - v117, v119);
  *(v107 + 184) = v160;
  *(v107 + 160) = v121;
  sub_1CA94C1E8();
  v122 = sub_1CA2F864C();
  v123 = v158;
  v158[5] = v122;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v125 = v156;
  v156[55] = v123;
  v125[58] = v124;
  v125[59] = @"ParameterSummary";
  v126 = @"ParameterSummary";
  v127 = sub_1CA94C438();
  v129 = v128;
  v130 = sub_1CA94C438();
  v132 = v131;
  v160 = v144;
  MEMORY[0x1EEE9AC00](v130);
  sub_1CA948D98();
  v133 = [v164 bundleURL];
  MEMORY[0x1EEE9AC00](v133);
  v134 = v144 - v163;
  sub_1CA948B68();

  v135 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v136 = sub_1CA2F9F14(v127, v129, v130, v132, 0, 0, v144 - v117, v134);
  v137 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v138 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v139 = v156;
  v156[60] = v137;
  v139[63] = v138;
  v139[64] = @"UserInterfaceClasses";
  v140 = @"UserInterfaceClasses";
  v141 = sub_1CA94C1E8();
  v139[68] = v154;
  v139[65] = v141;
  v139[69] = @"UserInterfaces";
  v139[73] = v159;
  v139[70] = &unk_1F4A0B6C0;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v142 = @"UserInterfaces";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA67898C()
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
  strcpy((inited + 120), "TVRemote_Skip");
  *(inited + 134) = -4864;
  v6 = @"IconName";
  *(inited + 152) = sub_1CA94C368();
  *(inited + 160) = 0xD000000000000011;
  *(inited + 168) = 0x80000001CA9DCF20;
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

id sub_1CA678BC0()
{
  v156 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000011;
  *(inited + 48) = 0x80000001CA9DCF50;
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
  v165 = v12;
  v166 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = v148 - v166;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v163 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v164 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v162 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = v148 - v162;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v161 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"Description";
  *&v160 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1CA981310;
  *(v21 + 32) = @"DescriptionSummary";
  v22 = @"Description";
  v23 = @"DescriptionSummary";
  v24 = sub_1CA94C438();
  v158 = v25;
  v26 = sub_1CA94C438();
  v28 = v27;
  v159 = v148;
  MEMORY[0x1EEE9AC00](v26);
  v29 = v148 - v166;
  sub_1CA948D98();
  v30 = [v163 bundleURL];
  MEMORY[0x1EEE9AC00](v30);
  v31 = v148 - v162;
  sub_1CA948B68();

  v32 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v33 = sub_1CA2F9F14(v24, v158, v26, v28, 0, 0, v29, v31);
  *(v21 + 64) = v161;
  *(v21 + 40) = v33;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v34 = v160;
  *(inited + 120) = sub_1CA6B3784();
  *(inited + 144) = v34;
  *(inited + 152) = @"IconColor";
  *(inited + 160) = 1953392980;
  *(inited + 168) = 0xE400000000000000;
  v35 = MEMORY[0x1E69E6158];
  *(inited + 184) = MEMORY[0x1E69E6158];
  *(inited + 192) = @"IconSymbol";
  *(inited + 200) = 1802398060;
  *(inited + 208) = 0xE400000000000000;
  *(inited + 224) = v35;
  *(inited + 232) = @"IconSymbolColor";
  *(inited + 240) = 1702194242;
  *(inited + 248) = 0xE400000000000000;
  *(inited + 264) = v35;
  *(inited + 272) = @"Input";
  v36 = v35;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v37 = swift_initStackObject();
  v160 = xmmword_1CA981350;
  *(v37 + 16) = xmmword_1CA981350;
  *(v37 + 32) = 0x656C7069746C754DLL;
  *(v37 + 40) = 0xE800000000000000;
  v38 = MEMORY[0x1E69E6370];
  *(v37 + 48) = 1;
  *(v37 + 72) = v38;
  strcpy((v37 + 80), "ParameterKey");
  *(v37 + 93) = 0;
  *(v37 + 94) = -5120;
  *(v37 + 96) = 0x7475706E494657;
  *(v37 + 104) = 0xE700000000000000;
  *(v37 + 120) = v36;
  *(v37 + 128) = 0x6465726975716552;
  *(v37 + 136) = 0xE800000000000000;
  *(v37 + 144) = 1;
  *(v37 + 168) = v38;
  *(v37 + 176) = 0x7365707954;
  *(v37 + 184) = 0xE500000000000000;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v37 + 216) = v159;
  *(v37 + 192) = &unk_1F4A0B780;
  v39 = @"IconColor";
  v40 = @"IconSymbol";
  v41 = @"IconSymbolColor";
  v42 = @"Input";
  v43 = sub_1CA94C1E8();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v158 = v44;
  *(inited + 280) = v43;
  *(inited + 304) = v44;
  *(inited + 312) = @"Name";
  v45 = @"Name";
  v46 = sub_1CA94C438();
  v48 = v47;
  v49 = sub_1CA94C438();
  v51 = v50;
  *&v155 = v148;
  MEMORY[0x1EEE9AC00](v49);
  v52 = v148 - v166;
  sub_1CA948D98();
  v53 = [v163 bundleURL];
  MEMORY[0x1EEE9AC00](v53);
  v54 = v148 - v162;
  sub_1CA948B68();

  v55 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 320) = sub_1CA2F9F14(v46, v48, v49, v51, 0, 0, v52, v54);
  v56 = v161;
  *(inited + 344) = v161;
  *(inited + 352) = @"Output";
  v57 = swift_allocObject();
  *(v57 + 16) = v160;
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
  v154 = v60;
  *&v155 = v59;
  v61 = sub_1CA94C438();
  v63 = v62;
  v157 = v148;
  MEMORY[0x1EEE9AC00](v61);
  v64 = v148 - v166;
  sub_1CA948D98();
  v65 = [v163 bundleURL];
  MEMORY[0x1EEE9AC00](v65);
  v66 = v148 - v162;
  sub_1CA948B68();

  v67 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v57 + 144) = sub_1CA2F9F14(v155, v154, v61, v63, 0, 0, v64, v66);
  *(v57 + 168) = v56;
  *(v57 + 176) = 0x7365707954;
  *(v57 + 216) = v159;
  *(v57 + 184) = 0xE500000000000000;
  *(v57 + 192) = &unk_1F4A0B7B0;
  v68 = MEMORY[0x1E69E6158];
  *(inited + 360) = sub_1CA94C1E8();
  *(inited + 384) = v158;
  *(inited + 392) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v159 = swift_allocObject();
  v155 = xmmword_1CA981360;
  *(v159 + 1) = xmmword_1CA981360;
  v158 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_1CA981370;
  *(v69 + 32) = @"Class";
  *(v69 + 40) = 0xD000000000000016;
  *(v69 + 48) = 0x80000001CA99C4A0;
  *(v69 + 64) = v68;
  *(v69 + 72) = @"DefaultValue";
  *(v69 + 80) = 0x65646F636E45;
  *(v69 + 88) = 0xE600000000000000;
  *(v69 + 104) = v68;
  *(v69 + 112) = @"Items";
  v157 = swift_allocObject();
  *(v157 + 1) = v155;
  v153 = @"Class";
  v70 = @"Parameters";
  v71 = @"DefaultValue";
  v72 = @"Items";
  v73 = sub_1CA94C438();
  v150 = v74;
  v151 = v73;
  v75 = sub_1CA94C438();
  v149 = v76;
  v152 = v148;
  MEMORY[0x1EEE9AC00](v75);
  *&v155 = inited;
  v77 = v166;
  sub_1CA948D98();
  v78 = v163;
  v79 = [v163 bundleURL];
  v148[1] = v148;
  MEMORY[0x1EEE9AC00](v79);
  v80 = v162;
  sub_1CA948B68();

  v81 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v82 = sub_1CA2F9F14(v151, v150, v75, v149, 0, 0, v148 - v77, v148 - v80);
  v157[4] = v82;
  v83 = sub_1CA94C438();
  v150 = v84;
  v151 = v83;
  v85 = sub_1CA94C438();
  v149 = v86;
  v152 = v148;
  MEMORY[0x1EEE9AC00](v85);
  sub_1CA948D98();
  v87 = [v78 bundleURL];
  MEMORY[0x1EEE9AC00](v87);
  sub_1CA948B68();

  v88 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v89 = sub_1CA2F9F14(v151, v150, v85, v149, 0, 0, v148 - v77, v148 - v80);
  v90 = v157;
  v157[5] = v89;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  *(v69 + 120) = v90;
  *(v69 + 144) = v91;
  *(v69 + 152) = @"Key";
  strcpy((v69 + 160), "WFEncodeMode");
  *(v69 + 173) = 0;
  *(v69 + 174) = -5120;
  *(v69 + 184) = MEMORY[0x1E69E6158];
  *(v69 + 192) = @"Label";
  v92 = @"Key";
  v93 = @"Label";
  v151 = v92;
  v150 = v93;
  v94 = sub_1CA94C438();
  v152 = v95;
  v96 = sub_1CA94C438();
  v98 = v97;
  v157 = v148;
  MEMORY[0x1EEE9AC00](v96);
  v99 = v148 - v166;
  sub_1CA948D98();
  v100 = [v163 bundleURL];
  MEMORY[0x1EEE9AC00](v100);
  v101 = v148 - v162;
  sub_1CA948B68();

  v102 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v103 = sub_1CA2F9F14(v94, v152, v96, v98, 0, 0, v99, v101);
  *(v69 + 224) = v161;
  *(v69 + 200) = v103;
  _s3__C3KeyVMa_0(0);
  v157 = v104;
  v152 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v159[4] = sub_1CA2F864C();
  v105 = swift_initStackObject();
  *(v105 + 16) = v160;
  *(v105 + 32) = v153;
  *(v105 + 40) = 0xD000000000000014;
  *(v105 + 48) = 0x80000001CA99B500;
  v106 = MEMORY[0x1E69E6158];
  v107 = v151;
  *(v105 + 64) = MEMORY[0x1E69E6158];
  *(v105 + 72) = v107;
  *(v105 + 80) = 0x7475706E494657;
  *(v105 + 88) = 0xE700000000000000;
  v108 = v150;
  *(v105 + 104) = v106;
  *(v105 + 112) = v108;
  v109 = sub_1CA94C438();
  v153 = v110;
  v154 = v109;
  v151 = sub_1CA94C438();
  v112 = v111;
  *&v160 = v148;
  MEMORY[0x1EEE9AC00](v151);
  v113 = v148 - v166;
  sub_1CA948D98();
  v114 = v163;
  v115 = [v163 bundleURL];
  v150 = v148;
  MEMORY[0x1EEE9AC00](v115);
  v116 = v162;
  sub_1CA948B68();

  v117 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v105 + 120) = sub_1CA2F9F14(v154, v153, v151, v112, 0, 0, v113, v148 - v116);
  v118 = v161;
  *(v105 + 144) = v161;
  *(v105 + 152) = @"Placeholder";
  v119 = @"Placeholder";
  v120 = sub_1CA94C438();
  v153 = v121;
  v154 = v120;
  v122 = sub_1CA94C438();
  v151 = v123;
  *&v160 = v148;
  MEMORY[0x1EEE9AC00](v122);
  v124 = v148 - v166;
  sub_1CA948D98();
  v125 = [v114 bundleURL];
  MEMORY[0x1EEE9AC00](v125);
  sub_1CA948B68();

  v126 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v127 = sub_1CA2F9F14(v154, v153, v122, v151, 0, 0, v124, v148 - v116);
  *(v105 + 184) = v118;
  *(v105 + 160) = v127;
  sub_1CA94C1E8();
  v128 = sub_1CA2F864C();
  v129 = v159;
  v159[5] = v128;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v131 = v155;
  *(v155 + 400) = v129;
  *(v131 + 424) = v130;
  *(v131 + 432) = @"ParameterSummary";
  v132 = @"ParameterSummary";
  v133 = sub_1CA94C438();
  v135 = v134;
  v136 = sub_1CA94C438();
  v138 = v137;
  v161 = v148;
  MEMORY[0x1EEE9AC00](v136);
  v139 = v148 - v166;
  sub_1CA948D98();
  v140 = [v163 bundleURL];
  MEMORY[0x1EEE9AC00](v140);
  v141 = v148 - v162;
  sub_1CA948B68();

  v142 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v143 = sub_1CA2F9F14(v133, v135, v136, v138, 0, 0, v139, v141);
  v144 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v145 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(v131 + 440) = v144;
  *(v131 + 464) = v145;
  *(v131 + 472) = @"ResidentCompatible";
  *(v131 + 504) = MEMORY[0x1E69E6370];
  *(v131 + 480) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v146 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}