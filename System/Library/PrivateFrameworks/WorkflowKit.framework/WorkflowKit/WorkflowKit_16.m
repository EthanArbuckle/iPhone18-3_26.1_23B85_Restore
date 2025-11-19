unint64_t sub_1CA3FA1E8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445090, &unk_1CA9864F0);
    v2 = sub_1CA94D688();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  result = sub_1CA94C218();
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
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5)) | (v9 << 6);
    sub_1CA2F6AB4(*(a1 + 48) + 40 * v10, __src);
    sub_1CA25B374(*(a1 + 56) + 32 * v10, &__src[40]);
    memcpy(__dst, __src, sizeof(__dst));
    sub_1CA2F6AB4(__dst, v23);
    if (!swift_dynamicCast())
    {
      sub_1CA30F7DC(__dst, &qword_1EC445080, &qword_1CA9864E8);

      goto LABEL_22;
    }

    sub_1CA25B374(&__dst[40], v23);
    sub_1CA30F7DC(__dst, &qword_1EC445080, &qword_1CA9864E8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v5 &= v5 - 1;
    result = sub_1CA271BF8();
    v11 = result;
    if (v12)
    {
      v13 = (v2[6] + 16 * result);
      v14 = v13[1];
      *v13 = v21;
      v13[1] = v22;

      v15 = v2[7];
      v16 = *(v15 + 8 * v11);
      *(v15 + 8 * v11) = v21;

      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_25;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v2[6] + 16 * result);
      *v17 = v21;
      v17[1] = v22;
      *(v2[7] + 8 * result) = v21;
      v18 = v2[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_26;
      }

      v2[2] = v20;
      v8 = v9;
    }
  }

LABEL_22:

  return 0;
}

unint64_t sub_1CA3FA4B8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445078, &qword_1CA9864E0);
    v2 = sub_1CA94D688();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  result = sub_1CA94C218();
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
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5)) | (v9 << 6);
    sub_1CA2F6AB4(*(a1 + 48) + 40 * v10, __src);
    sub_1CA25B374(*(a1 + 56) + 32 * v10, &__src[40]);
    memcpy(__dst, __src, sizeof(__dst));
    sub_1CA2F6AB4(__dst, v23);
    if (!swift_dynamicCast())
    {
      sub_1CA30F7DC(__dst, &qword_1EC445080, &qword_1CA9864E8);

      goto LABEL_22;
    }

    sub_1CA25B374(&__dst[40], v23);
    sub_1CA30F7DC(__dst, &qword_1EC445080, &qword_1CA9864E8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v5 &= v5 - 1;
    result = sub_1CA271BF8();
    v11 = result;
    if (v12)
    {
      v13 = (v2[6] + 16 * result);
      v14 = v13[1];
      *v13 = v21;
      v13[1] = v22;

      v15 = v2[7];
      v16 = *(v15 + 8 * v11);
      *(v15 + 8 * v11) = v21;
      result = swift_unknownObjectRelease();
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_25;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v2[6] + 16 * result);
      *v17 = v21;
      v17[1] = v22;
      *(v2[7] + 8 * result) = v21;
      v18 = v2[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_26;
      }

      v2[2] = v20;
      v8 = v9;
    }
  }

LABEL_22:

  return 0;
}

uint64_t sub_1CA3FA7A4(uint64_t a1, unint64_t a2)
{
  sub_1CA94D408();

  if (a2)
  {
    v4 = a2;
  }

  else
  {

    v4 = 0xE300000000000000;
    a1 = 7104878;
  }

  sub_1CA94C218();
  MEMORY[0x1CCAA1300](a1, v4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981310;
  v6 = *MEMORY[0x1E696A578];
  *(inited + 32) = sub_1CA94C3A8();
  *(inited + 40) = v7;
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = 0xD000000000000027;
  *(inited + 56) = 0x80000001CA9B4F70;
  return sub_1CA94C1E8();
}

uint64_t WFContextualAction.actionRepresentation(takesInput:context:)(char a1)
{
  *(v2 + 64) = v1;
  *(v2 + 72) = a1;
  return OUTLINED_FUNCTION_0_0();
}

void sub_1CA3FA95C()
{
  v2 = sub_1CA3F132C(*(v0 + 64), &selRef_wfActionIdentifier);
  if (!v1)
  {
    sub_1CA3FEE70();
    OUTLINED_FUNCTION_127();
    *v35 = v2;
    v35[1] = 0;
    swift_willThrow();
    goto LABEL_31;
  }

  v3 = v1;
  v4 = sub_1CA3FEEC4(*(v0 + 64));
  v87 = v3;
  v88 = v0;
  v86 = v2;
  if (!v4)
  {
    v8 = 0;
LABEL_26:
    v36 = [objc_opt_self() sharedRegistry];
    v37 = sub_1CA94C368();
    if (v8)
    {
      sub_1CA2F5880(v8);

      v38 = sub_1CA94C1A8();
    }

    else
    {
      v38 = 0;
    }

    v39 = OUTLINED_FUNCTION_24_10();
    v41 = [v39 v40];

    sub_1CA25B3D0(0, &unk_1EC444FA8, off_1E836EBD0);
    if ([v41 isKindOfClass_])
    {
      sub_1CA3FEE70();
      v42 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_30_9(v42, v43, v44, v45, v46, v47, v48, v49, v85, v86, v87);

      goto LABEL_31;
    }

    if ((*(v88 + 72) & 1) != 0 || [*(v88 + 64) selfPopulatesInput])
    {
      v52 = [v41 definition];
      if (v52)
      {
        v53 = v52;
        if ([v52 objectForKey_])
        {
          sub_1CA94D258();
          swift_unknownObjectRelease();
        }

        else
        {
          v90 = 0u;
          v91 = 0u;
        }

        *(v88 + 16) = v90;
        *(v88 + 32) = v91;
        if (*(v88 + 40))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444FB8, &qword_1CA986308);
          if ((OUTLINED_FUNCTION_29_12() & 1) == 0)
          {
LABEL_45:

            goto LABEL_47;
          }

          sub_1CA311A58(*(v88 + 48), (v88 + 16));

          if (*(v88 + 40))
          {
            if (OUTLINED_FUNCTION_29_12())
            {
              v55 = *(v88 + 48);
              v54 = *(v88 + 56);
              v56 = [objc_allocWithZone(WFShortcutInputVariable) init];
              v57 = sub_1CA94C368();

              [v41 setParameterStateToVariable:v56 forKey:v57];
            }

            goto LABEL_45;
          }
        }

        sub_1CA30F7DC(v88 + 16, &unk_1EC444650, &unk_1CA981C70);
      }
    }

LABEL_47:
    v58 = sub_1CA3FEEC4(*(v88 + 64));
    if (v58)
    {
      v59 = v58;
      v89 = v41;
      v60 = sub_1CA25B410(v58);
      if (v60)
      {
        v61 = v60;
        v62 = 0;
        while (1)
        {
          if ((v59 & 0xC000000000000001) != 0)
          {
            v63 = MEMORY[0x1CCAA22D0](v62, v59);
          }

          else
          {
            if (v62 >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_76;
            }

            v63 = *(v59 + 8 * v62 + 32);
          }

          v64 = v63;
          v65 = v62 + 1;
          if (__OFADD__(v62, 1))
          {
            break;
          }

          v66 = [v63 wfParameterKey];
          v67 = v66;
          v68 = v66;
          if (!v66)
          {
            sub_1CA94C3A8();
            v68 = sub_1CA94C368();

            sub_1CA94C3A8();
            v67 = sub_1CA94C368();
          }

          v69 = v66;
          if ([v64 isAskEachTime])
          {

            v70 = [v64 askEachTimeCollectionFilter];
            v71 = [objc_allocWithZone(WFAskEachTimeVariable) initWithCollectionFilter_];

            LOBYTE(v70) = [v89 setParameterStateToVariable:v71 forKey:v68];
            if ((v70 & 1) == 0)
            {
              goto LABEL_69;
            }
          }

          else
          {

            if ([v64 isActionInput])
            {
              v72 = [objc_allocWithZone(WFShortcutInputVariable) init];
              v73 = [v89 setParameterStateToVariable:v72 forKey:v67];

              if ((v73 & 1) == 0)
              {
LABEL_69:

                sub_1CA3FEE70();
                v76 = OUTLINED_FUNCTION_127();
                OUTLINED_FUNCTION_30_9(v76, v77, v78, v79, v80, v81, v82, v83, v85, v86, v87);

LABEL_31:
                OUTLINED_FUNCTION_5();
                OUTLINED_FUNCTION_202();

                __asm { BRAA            X1, X16 }
              }
            }

            else
            {
            }
          }

          ++v62;
          if (v65 == v61)
          {
            goto LABEL_65;
          }
        }

        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
        return;
      }

LABEL_65:
    }

    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_202();

    __asm { BRAA            X2, X16 }
  }

  v5 = v4;
  v6 = sub_1CA25B410(v4);
  v7 = 0;
  v8 = MEMORY[0x1E69E7CC8];
LABEL_4:
  for (i = v7; ; ++i)
  {
    if (v6 == i)
    {

      goto LABEL_26;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1CCAA22D0](i, v5);
    }

    else
    {
      if (i >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_71;
      }

      v10 = *(v5 + 8 * i + 32);
    }

    v11 = v10;
    v7 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v12 = [v10 wfParameterKey];
    v13 = sub_1CA94C3A8();
    v15 = v14;

    v16 = [v11 wfSerializedRepresentation];
    if (v16)
    {
      v20 = v16;
      HIDWORD(v85) = swift_isUniquelyReferenced_nonNull_native();
      *&v90 = v8;
      v21 = sub_1CA271BF8();
      if (__OFADD__(v8[2], (v22 & 1) == 0))
      {
        goto LABEL_77;
      }

      v23 = v21;
      LODWORD(v85) = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444FC0, &unk_1CA987A10);
      if (sub_1CA94D588())
      {
        v24 = sub_1CA271BF8();
        if ((v85 & 1) != (v25 & 1))
        {
          goto LABEL_72;
        }

        v23 = v24;
        if (v85)
        {
          goto LABEL_22;
        }

LABEL_18:
        v8[(v23 >> 6) + 8] |= 1 << v23;
        v26 = (v8[6] + 16 * v23);
        *v26 = v13;
        v26[1] = v15;
        *(v8[7] + 8 * v23) = v20;

        v27 = v8[2];
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          goto LABEL_78;
        }

        v8[2] = v29;
      }

      else
      {
        if ((v85 & 1) == 0)
        {
          goto LABEL_18;
        }

LABEL_22:

        v33 = v8[7];
        v34 = *(v33 + 8 * v23);
        *(v33 + 8 * v23) = v20;
        swift_unknownObjectRelease();
      }

      goto LABEL_4;
    }

    v17 = sub_1CA271BF8();
    v19 = v18;

    if (v19)
    {
      swift_isUniquelyReferenced_nonNull_native();
      *&v90 = v8;
      v30 = v8[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444FC0, &unk_1CA987A10);
      sub_1CA94D588();
      v31 = *(v8[6] + 16 * v17 + 8);

      v32 = *(v8[7] + 8 * v17);
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
      OUTLINED_FUNCTION_23();
      sub_1CA94D5A8();

      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  OUTLINED_FUNCTION_202();

  sub_1CA94D878();
}

uint64_t sub_1CA3FB1DC(char a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v8 = a2;
  a4;
  v9 = swift_task_alloc();
  v4[5] = v9;
  *v9 = v4;
  v9[1] = sub_1CA3FB2A0;

  return WFContextualAction.actionRepresentation(takesInput:context:)(a1);
}

uint64_t sub_1CA3FB2A0()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_20_12();
  v3 = *v2;
  v4 = *(*v2 + 40);
  v5 = *(*v2 + 24);
  v6 = *(*v2 + 16);
  v7 = *v2;
  OUTLINED_FUNCTION_13();
  *v8 = v7;

  v9 = *(v3 + 32);
  if (v0)
  {
    sub_1CA948AC8();

    (v9)[2](v9, 0, v1);
    _Block_release(v9);
  }

  else
  {
    (v9)[2](*(v3 + 32), v1, 0);
    _Block_release(v9);
  }

  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_1CA3FB490(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1CA3FB524;

  return sub_1CA3FB448();
}

uint64_t sub_1CA3FB524()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_20_12();
  v3 = *v2;
  v4 = *(*v2 + 24);
  v5 = *v2;
  OUTLINED_FUNCTION_13();
  *v6 = v5;

  v7 = *(v3 + 16);
  if (v0)
  {
    sub_1CA948AC8();

    v8 = OUTLINED_FUNCTION_16_14();
    v9(v8, 0, v1);

    _Block_release(v7);
  }

  else
  {
    v10 = OUTLINED_FUNCTION_16_14();
    v11(v10, v1, 0);
    _Block_release(v7);
  }

  v12 = *(v5 + 8);

  return v12();
}

uint64_t sub_1CA3FB69C()
{
  v1 = v0[19];
  v2 = [objc_allocWithZone(WFiTunesSessionManager) init];
  v0[20] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443850, &qword_1CA9815F0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1CA981310;
  v4 = [v1 playbackStoreId];
  v5 = [v4 stringValue];

  v6 = sub_1CA94C3A8();
  v8 = v7;

  *(v3 + 32) = v6;
  *(v3 + 40) = v8;
  v9 = sub_1CA94C648();
  v0[21] = v9;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1CA3FB88C;
  OUTLINED_FUNCTION_26_10();
  v10 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445058, &qword_1CA9864B0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1CA3FBAC0;
  v0[13] = &block_descriptor_61;
  v0[14] = v10;
  [v2 lookupMediaWithIdentifiers:v9 countryCode:0 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1CA3FB88C()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 176) = v4;
  if (v4)
  {
    v5 = sub_1CA3FBA50;
  }

  else
  {
    v5 = sub_1CA3FB98C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1CA3FB98C()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 144);

  if (sub_1CA25B410(v1))
  {
    sub_1CA275D70(0, (v1 & 0xC000000000000001) == 0, v1);
    if ((v1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1CCAA22D0](0, v1);
    }

    else
    {
      v2 = *(v1 + 32);
    }
  }

  v3 = OUTLINED_FUNCTION_5_23();

  return v4(v3);
}

uint64_t sub_1CA3FBA50()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  swift_willThrow();

  OUTLINED_FUNCTION_5();
  v5 = v0[22];

  return v4();
}

uint64_t sub_1CA3FBAC0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;

    return sub_1CA35FF80(v4, v5);
  }

  else
  {
    sub_1CA25B3D0(0, &unk_1EC445060, off_1E836F608);
    v7 = sub_1CA94C658();

    return sub_1CA35FF84(v4, v7);
  }
}

uint64_t sub_1CA3FBB84()
{
  OUTLINED_FUNCTION_0();
  *(v0 + 24) = [*(v0 + 16) mediaItemDescriptor];
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1CA3FBC2C;

  return sub_1CA3FB67C();
}

uint64_t sub_1CA3FBC2C()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_2_2();
  *v4 = v3;
  v6 = *(v5 + 32);
  *v4 = *v1;
  *(v3 + 40) = v7;
  *(v3 + 48) = v0;

  if (v0)
  {
    v8 = sub_1CA3FBDC8;
  }

  else
  {

    v8 = sub_1CA3FBD38;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1CA3FBD38()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 40);
  if (v1)
  {
    [objc_msgSend(objc_allocWithZone(MEMORY[0x1E6996D40]) init)];
  }

  v2 = OUTLINED_FUNCTION_5_23();

  return v3(v2);
}

uint64_t sub_1CA3FBDC8()
{
  OUTLINED_FUNCTION_0();

  OUTLINED_FUNCTION_5();
  v2 = *(v0 + 48);

  return v1();
}

uint64_t sub_1CA3FBE44(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1CA3FF7B8;

  return sub_1CA3FBB70();
}

id sub_1CA3FBEEC()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E6966A18]) init];
  v2 = [v0 eventIdentifier];
  if (!v2)
  {
    sub_1CA94C3A8();
    v2 = sub_1CA94C368();
  }

  v3 = [v1 eventWithIdentifier_];

  return v3;
}

uint64_t sub_1CA3FBFAC()
{
  OUTLINED_FUNCTION_0();
  v1 = [*(v0 + 16) eventDescriptor];
  if (v1)
  {
    v2 = sub_1CA3FBEEC();

    if (v2)
    {
      [objc_msgSend(objc_allocWithZone(MEMORY[0x1E6996D40]) init)];
    }
  }

  v3 = OUTLINED_FUNCTION_5_23();

  return v4(v3);
}

uint64_t sub_1CA3FC088(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1CA3FF7B8;

  return sub_1CA3FBF98();
}

uint64_t sub_1CA3FC16C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1CA3FF7B8;

  return sub_1CA3FC138();
}

uint64_t sub_1CA3FC230()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 16);
  v2 = [objc_allocWithZone(MEMORY[0x1E6996D40]) init];
  v3 = [v1 destination];
  [v2 addObject_];

  v4 = OUTLINED_FUNCTION_5_23();

  return v5(v4);
}

uint64_t sub_1CA3FC2F4(void *a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = a1;
  v6 = a1;
  v7 = OUTLINED_FUNCTION_23();

  return sub_1CA67052C(v7, v8);
}

uint64_t sub_1CA3FC360(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1CA3FC408;

  return sub_1CA3FC21C();
}

uint64_t sub_1CA3FC408()
{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_20_12();
  v3 = *v2;
  v4 = *(*v2 + 32);
  v5 = *(*v2 + 16);
  v6 = *v2;
  OUTLINED_FUNCTION_13();
  *v7 = v6;

  v8 = *(v3 + 24);
  if (v0)
  {
    sub_1CA948AC8();

    v9 = OUTLINED_FUNCTION_16_14();
    v10(v9, 0, v1);

    _Block_release(v8);
  }

  else
  {
    v11 = OUTLINED_FUNCTION_16_14();
    v12(v11, v1, 0);
    _Block_release(v8);
  }

  v13 = *(v6 + 8);
  OUTLINED_FUNCTION_9_2();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21);
}

uint64_t WFPlayMusicContextualAction.actionRepresentation(takesInput:context:)(char a1, uint64_t a2)
{
  *(v3 + 176) = a2;
  *(v3 + 184) = v2;
  *(v3 + 200) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_1CA3FC590()
{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);
  v3 = *(v0 + 200);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 160;
  *(v0 + 24) = sub_1CA3FC688;
  OUTLINED_FUNCTION_26_10();
  v4 = swift_continuation_init();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444FD0, &qword_1CA98C320);
  OUTLINED_FUNCTION_9_18(v5);
  OUTLINED_FUNCTION_12_14(COERCE_DOUBLE(1107296256));
  *(v0 - 48) = v6;
  *(v0 - 40) = &block_descriptor_8;
  *(v0 - 32) = v4;
  *(v0 + 8) = MEMORY[0x1E69E0C40];
  objc_msgSendSuper2(v0, sel__getActionRepresentationTakingInput_context_completionHandler_, v3, v1);
  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DEC8](v7);
}

uint64_t sub_1CA3FC688()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 192) = v4;
  if (v4)
  {
    v5 = sub_1CA3FC900;
  }

  else
  {
    v5 = sub_1CA3FC788;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1CA3FC788()
{
  OUTLINED_FUNCTION_14();
  *(v0 + 168) = &unk_1F4B24F40;
  v1 = *(v0 + 160);
  OUTLINED_FUNCTION_26_10();
  if (swift_dynamicCastObjCProtocolConditional())
  {
    v2 = [*(v0 + 184) intent];
    v3 = OUTLINED_FUNCTION_24_10();
    v5 = [v3 v4];

    if (v5 && (v6 = sub_1CA94C1C8(), v5, v7 = sub_1CA3FA4B8(v6), , v7))
    {
      v8 = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
      v9 = sub_1CA94C1A8();
    }

    else
    {
      v10 = v1;
      v9 = 0;
    }

    v11 = OUTLINED_FUNCTION_24_10();
    v13 = [v11 v12];

    v1 = v13;
  }

  OUTLINED_FUNCTION_2_4();

  return v14(v1);
}

uint64_t sub_1CA3FC900()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 192);
  swift_willThrow();
  OUTLINED_FUNCTION_5();
  v3 = *(v0 + 192);

  return v2();
}

uint64_t sub_1CA3FC9B0(char a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v8 = a2;
  a4;
  v9 = swift_task_alloc();
  v4[5] = v9;
  *v9 = v4;
  v9[1] = sub_1CA3FF7B0;

  return WFPlayMusicContextualAction.actionRepresentation(takesInput:context:)(a1, a2);
}

uint64_t WFPlayPodcastEpisodeContextualAction.actionRepresentation(takesInput:context:)(char a1, uint64_t a2)
{
  *(v3 + 176) = a2;
  *(v3 + 184) = v2;
  *(v3 + 200) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_1CA3FCA90()
{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);
  v3 = *(v0 + 200);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 160;
  *(v0 + 24) = sub_1CA3FCB88;
  OUTLINED_FUNCTION_26_10();
  v4 = swift_continuation_init();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444FD0, &qword_1CA98C320);
  OUTLINED_FUNCTION_9_18(v5);
  OUTLINED_FUNCTION_12_14(COERCE_DOUBLE(1107296256));
  *(v0 - 48) = v6;
  *(v0 - 40) = &block_descriptor_5;
  *(v0 - 32) = v4;
  *(v0 + 8) = MEMORY[0x1E69E0C48];
  objc_msgSendSuper2(v0, sel__getActionRepresentationTakingInput_context_completionHandler_, v3, v1);
  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DEC8](v7);
}

uint64_t sub_1CA3FCB88()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 192) = v4;
  if (v4)
  {
    v5 = sub_1CA3FF7B4;
  }

  else
  {
    v5 = sub_1CA3FF7C0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1CA3FCCA8(char a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v8 = a2;
  a4;
  v9 = swift_task_alloc();
  v4[5] = v9;
  *v9 = v4;
  v9[1] = sub_1CA3FF7B0;

  return WFPlayPodcastEpisodeContextualAction.actionRepresentation(takesInput:context:)(a1, a2);
}

id sub_1CA3FCD70(void *a1)
{
  v2 = sub_1CA94C368();
  v3 = [a1 identifier];
  if (!v3)
  {
    sub_1CA94C3A8();
    v3 = sub_1CA94C368();
  }

  v4 = WFShortcutsActionIdentifierFromLinkAppAndActionIdentifier(v2, v3);

  if (!v4)
  {
    return 0;
  }

  v5 = sub_1CA94C3A8();
  v7 = v6;

  v8 = [objc_opt_self() sharedProvider];
  v9 = sub_1CA94C1E8();
  v10 = objc_allocWithZone(WFActionRequest);
  v11 = sub_1CA3FEDD0(v5, v7, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1CA9813B0;
  *(v12 + 32) = v11;
  sub_1CA25B3D0(0, &qword_1EC445070, off_1E836DD88);
  v13 = v11;
  v14 = sub_1CA94C648();

  [v8 createActionsForRequests_];

  v15 = [v13 result];
  if (!v15)
  {

    return 0;
  }

  v16 = v15;
  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (!v17)
  {

    return 0;
  }

  v18 = v17;
  v19 = v16;
  v20 = [v18 metadata];
  v21 = WFLinkActionSerializedParametersForWFAction(v18, a1, v20);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
  v22 = sub_1CA94C1C8();

  v23 = sub_1CA3FEF4C(v22, v18);
  return v23;
}

uint64_t WFLinkContextualAction.actionRepresentation(takesInput:context:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = v2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_1CA3FD034()
{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_6();
  v1 = v0[3];
  type metadata accessor for AutoShortcutsAppsDataSource();
  v0[4] = [v1 linkAction];
  v2 = [v1 appBundleIdentifier];
  sub_1CA94C3A8();
  v4 = v3;

  v0[5] = v4;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_1CA3FD134;
  OUTLINED_FUNCTION_9_2();

  return sub_1CA52F05C();
}

uint64_t sub_1CA3FD134()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_3();
  v5 = v4;
  OUTLINED_FUNCTION_2_2();
  *v6 = v5;
  v8 = *(v7 + 48);
  v9 = *v1;
  OUTLINED_FUNCTION_13();
  *v10 = v9;
  v5[7] = v0;

  if (v0)
  {
    v11 = sub_1CA3FD868;
  }

  else
  {
    v13 = v5[4];
    v12 = v5[5];
    v5[8] = v3;

    v11 = sub_1CA3FD24C;
  }

  return MEMORY[0x1EEE6DFA0](v11, 0, 0);
}

uint64_t sub_1CA3FD24C()
{
  v1 = *(v0 + 64);
  if (!v1)
  {
LABEL_11:
    v25 = sub_1CA3F132C(*(v0 + 24), &selRef_wfActionIdentifier);
    v27 = v26;
    sub_1CA3FEE70();
    OUTLINED_FUNCTION_127();
    *v28 = v25;
    v28[1] = v27;
    swift_willThrow();
LABEL_12:

    OUTLINED_FUNCTION_5();

    return v29();
  }

  v2 = v1;
  v3 = [v2 actions];
  sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
  v4 = sub_1CA94C658();

  v5 = sub_1CA25B410(v4);
  if (!v5)
  {

    goto LABEL_11;
  }

  sub_1CA275D70(0, (v4 & 0xC000000000000001) == 0, v4);
  if ((v4 & 0xC000000000000001) != 0)
  {
    goto LABEL_48;
  }

  for (i = *(v4 + 32); ; i = MEMORY[0x1CCAA22D0](0, v4))
  {
    v7 = i;

    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    v61 = v7;
    if (v8)
    {
      v9 = v8;
      v10 = *(v0 + 16);
      if (v10)
      {
        v11 = v2;
        v12 = v0;
        v13 = objc_allocWithZone(MEMORY[0x1E69AD048]);
        v14 = v7;
        v15 = v10;
        v16 = [v13 init];
        v17 = [v15 preciseTimestamp];
        v18 = sub_1CA948CB8();
        OUTLINED_FUNCTION_1_0(v18);
        v20 = v19;
        v22 = *(v21 + 64);
        v23 = OUTLINED_FUNCTION_45();
        if (v17)
        {
          sub_1CA948C78();

          v17 = sub_1CA948C58();
          (*(v20 + 8))(v23, v18);
        }

        [v16 setPreciseTimestamp_];

        v24 = sub_1CA3FD8C8([v15 staccatoInteractionType]);
        [v16 setStaccatoInteractionType_];

        [v9 setLinkSystemContext_];
        v0 = v12;
        v2 = v11;
        v7 = v61;
      }

      else
      {
        v31 = v7;
      }

      v32 = *(v0 + 24);
      v33 = v7;
      sub_1CA3F132C(v32, &selRef_extensionBundleIdentifier);
      if (v34)
      {
        v35 = sub_1CA94C368();
      }

      else
      {
        v35 = 0;
      }

      v36 = *(v0 + 24);
      [v9 setPreferredExtensionBundleIdentifier_];

      [v9 setUsesCompactUnlockService_];
      v37 = [v36 authenticationPolicy];
      if (v37 == 1)
      {
        v38 = 1;
      }

      else
      {
        v38 = 2 * (v37 == 2);
      }

      [v9 setAuthenticationPolicy_];

      v7 = v61;
    }

    v39 = sub_1CA3FEEC4(*(v0 + 24));
    if (!v39)
    {
      break;
    }

    v4 = v39;
    v59 = v2;
    v60 = v0;
    v40 = sub_1CA25B410(v39);
    if (!v40)
    {
LABEL_41:

      v2 = v59;
      v7 = v61;
      break;
    }

    v41 = v40;
    v42 = 0;
    v0 = v4 & 0xC000000000000001;
    while (1)
    {
      if (v0)
      {
        v43 = MEMORY[0x1CCAA22D0](v42, v4);
      }

      else
      {
        if (v42 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_47;
        }

        v43 = *(v4 + 8 * v42 + 32);
      }

      v1 = v43;
      v44 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        break;
      }

      v45 = [v43 wfParameterKey];
      v46 = v45;
      v47 = v45;
      if (!v45)
      {
        sub_1CA94C3A8();
        v47 = sub_1CA94C368();

        sub_1CA94C3A8();
        v2 = v48;
        v46 = sub_1CA94C368();
      }

      v49 = v45;
      if ([v1 isAskEachTime])
      {

        v50 = [v1 askEachTimeCollectionFilter];
        v51 = [objc_allocWithZone(WFAskEachTimeVariable) initWithCollectionFilter_];

        v2 = [v61 setParameterStateToVariable:v51 forKey:v47];
        if ((v2 & 1) == 0)
        {
          goto LABEL_45;
        }
      }

      else
      {

        if ([v1 isActionInput])
        {
          v2 = [objc_allocWithZone(WFShortcutInputVariable) init];
          v52 = [v61 setParameterStateToVariable:v2 forKey:v46];

          if ((v52 & 1) == 0)
          {
LABEL_45:
            v54 = *(v60 + 24);

            v55 = sub_1CA3F132C(v54, &selRef_wfActionIdentifier);
            v57 = v56;
            sub_1CA3FEE70();
            OUTLINED_FUNCTION_127();
            *v58 = v55;
            v58[1] = v57;
            swift_willThrow();

            goto LABEL_12;
          }
        }

        else
        {
        }
      }

      ++v42;
      if (v44 == v41)
      {
        goto LABEL_41;
      }
    }

    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    ;
  }

  OUTLINED_FUNCTION_2_4();

  return v53(v7);
}

uint64_t sub_1CA3FD868()
{
  OUTLINED_FUNCTION_0();
  v2 = v0[4];
  v1 = v0[5];

  v3 = v0[7];
  OUTLINED_FUNCTION_5();

  return v4();
}

id sub_1CA3FD8C8(void *a1)
{
  if (a1)
  {
    v2 = *MEMORY[0x1E69E1228];
    v3 = sub_1CA94C3A8();
    v5 = v4;
    if (v3 == sub_1CA94C3A8() && v5 == v6)
    {
      v26 = a1;
    }

    else
    {
      v8 = sub_1CA94D7F8();
      v9 = a1;

      if ((v8 & 1) == 0)
      {
        v10 = *MEMORY[0x1E69E1230];
        v11 = sub_1CA94C3A8();
        v13 = v12;
        if (v11 == sub_1CA94C3A8() && v13 == v14)
        {
        }

        else
        {
          v16 = sub_1CA94D7F8();

          if ((v16 & 1) == 0)
          {
            v17 = *MEMORY[0x1E69E1238];
            v18 = sub_1CA94C3A8();
            v20 = v19;
            if (v18 != sub_1CA94C3A8() || v20 != v21)
            {
              sub_1CA94D7F8();
            }

            v23 = MEMORY[0x1E69ACD08];
            goto LABEL_25;
          }
        }

        v23 = MEMORY[0x1E69ACCF8];
LABEL_25:
        v28 = *v23;

        return v28;
      }
    }

    v27 = *MEMORY[0x1E69ACCE8];

    return v27;
  }

  v24 = *MEMORY[0x1E69ACD08];

  return v24;
}

uint64_t sub_1CA3FDAE0(int a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v7 = a2;
  a4;
  v8 = swift_task_alloc();
  v4[5] = v8;
  *v8 = v4;
  v8[1] = sub_1CA3FF7B0;

  return WFLinkContextualAction.actionRepresentation(takesInput:context:)(0, a2);
}

uint64_t WFAppIntentBasedTopHitContextualAction.actionRepresentation(takesInput:context:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = v2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_1CA3FDBB8()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[3];
  v0[4] = sub_1CA25B3D0(0, &unk_1EC445040, off_1E836E670);
  v0[5] = [v1 linkAction];
  v2 = [v1 appBundleIdentifier];
  v3 = sub_1CA94C3A8();
  v5 = v4;

  v0[6] = v3;
  v0[7] = v5;
  sub_1CA94C838();
  v0[8] = sub_1CA94C828();
  OUTLINED_FUNCTION_87();
  v7 = sub_1CA94C7C8();

  return MEMORY[0x1EEE6DFA0](sub_1CA3FDCB8, v7, v6);
}

uint64_t sub_1CA3FDCB8()
{
  OUTLINED_FUNCTION_14();
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[4];

  v0[9] = sub_1CA3FCD70(v3);

  return MEMORY[0x1EEE6DFA0](sub_1CA3FDD4C, 0, 0);
}

uint64_t sub_1CA3FDD4C()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v2 = *(v0 + 16);
    if (v2)
    {
      v3 = objc_allocWithZone(MEMORY[0x1E69AD048]);
      v4 = v2;
      v5 = [v3 init];
      v6 = [v4 preciseTimestamp];
      v7 = sub_1CA948CB8();
      OUTLINED_FUNCTION_1_0(v7);
      v9 = v8;
      v11 = *(v10 + 64);
      v12 = OUTLINED_FUNCTION_45();
      if (v6)
      {
        sub_1CA948C78();

        v6 = sub_1CA948C58();
        (*(v9 + 8))(v12, v7);
      }

      [v5 setPreciseTimestamp_];

      v13 = sub_1CA3FD8C8([v4 staccatoInteractionType]);
      [v5 setStaccatoInteractionType_];

      v14 = OUTLINED_FUNCTION_24_10();
      [v14 v15];
    }

    v16 = *(v0 + 24);
    v17 = v1;
    sub_1CA3F132C(v16, &selRef_extensionBundleIdentifier);
    if (v18)
    {
      v19 = sub_1CA94C368();
    }

    else
    {
      v19 = 0;
    }

    v26 = *(v0 + 24);
    [v17 setPreferredExtensionBundleIdentifier_];

    v27 = [v26 authenticationPolicy];
    if (v27 == 1)
    {
      v28 = 1;
    }

    else
    {
      v28 = 2 * (v27 == 2);
    }

    [v17 setAuthenticationPolicy_];

    OUTLINED_FUNCTION_2_4();

    return v29(v17);
  }

  else
  {
    v20 = sub_1CA3F132C(*(v0 + 24), &selRef_wfActionIdentifier);
    v22 = v21;
    sub_1CA3FEE70();
    OUTLINED_FUNCTION_127();
    *v23 = v20;
    v23[1] = v22;
    swift_willThrow();
    OUTLINED_FUNCTION_5();

    return v24();
  }
}

uint64_t sub_1CA3FE030(int a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v7 = a2;
  a4;
  v8 = swift_task_alloc();
  v4[5] = v8;
  *v8 = v4;
  v8[1] = sub_1CA3FF7B0;

  return WFAppIntentBasedTopHitContextualAction.actionRepresentation(takesInput:context:)(0, a2);
}

uint64_t WFAutoShortcutContextualAction.actionRepresentation(takesInput:context:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 152) = a2;
  *(v3 + 160) = v2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_1CA3FE108()
{
  v1 = *(v0 + 160);
  v2 = [objc_allocWithZone(MEMORY[0x1E69ACDC0]) initWithOptions_];
  *(v0 + 168) = v2;
  v3 = [v1 bundleIdentifier];
  if (!v3)
  {
    sub_1CA94C3A8();
    v3 = sub_1CA94C368();
  }

  *(v0 + 176) = v3;
  v4 = [*(v0 + 160) phrase];
  v5 = [v4 basePhraseTemplate];

  if (!v5)
  {
    sub_1CA94C3A8();
    v5 = sub_1CA94C368();
  }

  *(v0 + 184) = v5;
  v6 = [*(v0 + 160) actionIdentifier];
  if (!v6)
  {
    sub_1CA94C3A8();
    v6 = sub_1CA94C368();
  }

  *(v0 + 192) = v6;
  v7 = [*(v0 + 160) phrase];
  v8 = [v7 parameterIdentifier];

  v9 = sub_1CA948D28();
  OUTLINED_FUNCTION_1_0(v9);
  v11 = v10;
  v13 = *(v12 + 64);
  v14 = OUTLINED_FUNCTION_45();
  if (v8)
  {
    sub_1CA948CF8();

    v8 = sub_1CA948CD8();
    (*(v11 + 8))(v14, v9);
  }

  *(v0 + 200) = v8;

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_1CA3FE404;
  v15 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4454E0, &unk_1CA987600);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1CA3FC964;
  *(v0 + 104) = &block_descriptor_12_0;
  *(v0 + 112) = v15;
  [v2 retrieveActionForBundleIdentifier:v3 basePhraseTemplate:v5 actionIdentifier:v6 parameterIdentifier:v8 completion:v0 + 80];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1CA3FE404()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 208) = v4;
  if (v4)
  {
    v5 = sub_1CA3FEABC;
  }

  else
  {
    v5 = sub_1CA3FE504;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1CA3FE504()
{
  OUTLINED_FUNCTION_6();
  v2 = v0[24];
  v1 = v0[25];
  v4 = v0[22];
  v3 = v0[23];
  v5 = v0[20];
  v0[27] = v0[18];

  type metadata accessor for AutoShortcutsAppsDataSource();
  v0[28] = [v5 phrase];
  v6 = [v5 bundleIdentifier];
  sub_1CA94C3A8();
  v8 = v7;

  v0[29] = v8;
  v9 = swift_task_alloc();
  v0[30] = v9;
  *v9 = v0;
  v9[1] = sub_1CA3FE630;

  return sub_1CA52F05C();
}

uint64_t sub_1CA3FE630()
{
  OUTLINED_FUNCTION_14();
  v2 = *v1;
  OUTLINED_FUNCTION_2_2();
  *v4 = v3;
  v5 = v2[30];
  v6 = *v1;
  OUTLINED_FUNCTION_1_1();
  *v7 = v6;
  *(v9 + 248) = v8;
  *(v9 + 256) = v0;

  v10 = v2[29];
  v11 = v2[28];

  if (v0)
  {
    v12 = sub_1CA3FEB50;
  }

  else
  {
    v12 = sub_1CA3FE770;
  }

  return MEMORY[0x1EEE6DFA0](v12, 0, 0);
}

uint64_t sub_1CA3FE770()
{
  v1 = *(v0 + 248);
  if (v1)
  {
    v2 = [*(v0 + 248) actions];
    sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
    v3 = sub_1CA94C658();

    if (sub_1CA25B410(v3))
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
      v6 = *(v0 + 152);

      if (v6)
      {
        v7 = *(v0 + 152);
        objc_opt_self();
        v8 = swift_dynamicCastObjCClass();
        if (v8)
        {
          v9 = v8;
          v10 = objc_allocWithZone(MEMORY[0x1E69AD048]);
          v11 = v7;
          v34 = v5;
          v12 = [v10 init];
          v13 = [v11 preciseTimestamp];
          v14 = sub_1CA948CB8();
          OUTLINED_FUNCTION_1_0(v14);
          v16 = v15;
          v18 = *(v17 + 64);
          v19 = OUTLINED_FUNCTION_45();
          if (v13)
          {
            sub_1CA948C78();

            v13 = sub_1CA948C58();
            (*(v16 + 8))(v19, v14);
          }

          [v12 setPreciseTimestamp_];

          v20 = sub_1CA3FD8C8([v11 staccatoInteractionType]);
          [v12 setStaccatoInteractionType_];

          v21 = v34;
          v22 = v12;
          [v9 setLinkSystemContext_];
        }
      }

      v23 = *(v0 + 216);
      v24 = *(v0 + 168);

      OUTLINED_FUNCTION_2_4();

      return v25(v5);
    }
  }

  v27 = *(v0 + 216);
  v28 = *(v0 + 168);
  v29 = sub_1CA3F132C(*(v0 + 160), &selRef_wfActionIdentifier);
  v31 = v30;
  sub_1CA3FEE70();
  OUTLINED_FUNCTION_127();
  *v32 = v29;
  v32[1] = v31;
  swift_willThrow();

  OUTLINED_FUNCTION_5();

  return v33();
}

uint64_t sub_1CA3FEABC()
{
  v1 = v0[25];
  v2 = v0[26];
  v4 = v0[23];
  v3 = v0[24];
  v6 = v0[21];
  v5 = v0[22];
  swift_willThrow();

  v7 = v0[26];
  OUTLINED_FUNCTION_5();

  return v8();
}

uint64_t sub_1CA3FEB50()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 168);

  v2 = *(v0 + 256);
  OUTLINED_FUNCTION_5();

  return v3();
}

uint64_t *sub_1CA3FEBB4(uint64_t a1, void *a2, void *a3, uint64_t (*a4)(uint64_t, id), uint64_t (*a5)(uint64_t, id))
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

uint64_t sub_1CA3FEC84(void *a1, int a2, char a3, void *a4, void *aBlock)
{
  v8 = _Block_copy(aBlock);
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  *(v9 + 32) = v8;
  *(v9 + 40) = a1;
  v10 = a4;
  v11 = a1;
  v12 = OUTLINED_FUNCTION_23();

  return sub_1CA67052C(v12, v13);
}

uint64_t sub_1CA3FED0C(int a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v7 = a2;
  a4;
  v8 = swift_task_alloc();
  v4[5] = v8;
  *v8 = v4;
  v8[1] = sub_1CA3FF7B0;

  return WFAutoShortcutContextualAction.actionRepresentation(takesInput:context:)(0, a2);
}

id sub_1CA3FEDD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1CA94C368();

  if (a3)
  {
    v6 = sub_1CA94C1A8();
  }

  else
  {
    v6 = 0;
  }

  v7 = [v3 initWithActionIdentifier:v5 serializedParameters:v6];

  return v7;
}

unint64_t sub_1CA3FEE70()
{
  result = qword_1EC444FA0;
  if (!qword_1EC444FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC444FA0);
  }

  return result;
}

uint64_t sub_1CA3FEEC4(void *a1)
{
  v1 = [a1 parameters];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1CA25B3D0(0, &qword_1EC445088, 0x1E69E0A48);
  v3 = sub_1CA94C658();

  return v3;
}

id sub_1CA3FEF4C(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
  v3 = sub_1CA94C1A8();

  v4 = [a2 copyWithSerializedParameters_];

  return v4;
}

uint64_t sub_1CA3FEFD4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_1CA3FF028(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
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
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1CA3FF08C()
{
  result = qword_1EC445050;
  if (!qword_1EC445050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC445050);
  }

  return result;
}

uint64_t sub_1CA3FF0E0()
{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_1_26(v1);
  OUTLINED_FUNCTION_9_2();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1CA3FF170()
{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_1_26(v1);
  OUTLINED_FUNCTION_9_2();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1CA3FF200()
{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_1_26(v1);
  OUTLINED_FUNCTION_9_2();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1CA3FF290()
{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_1_26(v1);
  OUTLINED_FUNCTION_9_2();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1CA3FF320()
{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_1_26(v1);
  OUTLINED_FUNCTION_9_2();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1CA3FF3B0()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_2_29(v4);

  return v7(v6);
}

uint64_t sub_1CA3FF440()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_2_29(v4);

  return v7(v6);
}

uint64_t sub_1CA3FF4D0()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_2_29(v4);

  return v7(v6);
}

uint64_t sub_1CA3FF560()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_2_29(v4);

  return v7(v6);
}

uint64_t objectdestroy_38Tm()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CA3FF630()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_2_29(v4);

  return v7(v6);
}

uint64_t objectdestroyTm_0()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1CA3FF708()
{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_1_26(v1);
  OUTLINED_FUNCTION_9_2();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

id sub_1CA3FF7C4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFRemoteAppEntityContentItem();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_1CA3FF81C(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for WFRemoteAppEntityContentItem();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1CA3FF8A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFRemoteAppEntityContentItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1CA3FF934()
{
  v143 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981300;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000015;
  *(inited + 48) = 0x80000001CA9B5030;
  *(inited + 64) = v1;
  *(inited + 72) = @"AppDefinition";
  v2 = @"ActionClass";
  v3 = @"AppDefinition";
  v4 = sub_1CA94C1E8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 80) = v4;
  *(inited + 104) = v5;
  *(inited + 112) = @"Description";
  v146 = inited;
  v145 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_1CA981310;
  *(v6 + 32) = @"DescriptionSummary";
  v7 = @"Description";
  v8 = @"DescriptionSummary";
  v9 = sub_1CA94C438();
  v147 = v10;
  v11 = sub_1CA94C438();
  v13 = v12;
  v14 = sub_1CA948E58();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v149 = v16;
  v152 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v134 - v152;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v150 = qword_1EDB9F690;
  v18 = [qword_1EDB9F690 bundleURL];
  v19 = sub_1CA948BA8();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v148 = v20;
  v151 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  v21 = &v134 - v151;
  sub_1CA948B68();

  v22 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v23 = sub_1CA2F9F14(v9, v147, v11, v13, 0, 0, v17, v21);
  v147 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(v6 + 64) = v147;
  *(v6 + 40) = v23;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v24 = v145;
  v25 = sub_1CA6B3784();
  v26 = v146;
  v146[15] = v25;
  v26[18] = v24;
  v26[19] = @"Name";
  v27 = @"Name";
  v28 = sub_1CA94C438();
  v30 = v29;
  v31 = sub_1CA94C438();
  v33 = v32;
  v145 = &v134;
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v134 - v152;
  sub_1CA948D98();
  v35 = [v150 bundleURL];
  MEMORY[0x1EEE9AC00](v35);
  v36 = &v134 - v151;
  sub_1CA948B68();

  v37 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v26[20] = sub_1CA2F9F14(v28, v30, v31, v33, 0, 0, v34, v36);
  v26[23] = v147;
  v26[24] = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v38 = swift_initStackObject();
  *(v38 + 16) = xmmword_1CA9813C0;
  *(v38 + 32) = 0x656C7069746C754DLL;
  *(v38 + 40) = 0xE800000000000000;
  v39 = MEMORY[0x1E69E6370];
  *(v38 + 48) = 1;
  *(v38 + 72) = v39;
  *(v38 + 80) = 0x614E74757074754FLL;
  *(v38 + 88) = 0xEA0000000000656DLL;
  v40 = @"Output";
  v41 = sub_1CA94C438();
  v144 = v42;
  v43 = sub_1CA94C438();
  v45 = v44;
  v145 = &v134;
  MEMORY[0x1EEE9AC00](v43);
  v46 = &v134 - v152;
  sub_1CA948D98();
  v47 = [v150 bundleURL];
  MEMORY[0x1EEE9AC00](v47);
  v48 = &v134 - v151;
  sub_1CA948B68();

  v49 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v38 + 96) = sub_1CA2F9F14(v41, v144, v43, v45, 0, 0, v46, v48);
  *(v38 + 120) = v147;
  *(v38 + 128) = 0x7365707954;
  *(v38 + 136) = 0xE500000000000000;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v38 + 168) = v142;
  *(v38 + 144) = &unk_1F49F9568;
  v50 = MEMORY[0x1E69E6158];
  v51 = sub_1CA94C1E8();
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v26[25] = v51;
  v26[28] = v52;
  v26[29] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v145 = swift_allocObject();
  *(v145 + 1) = xmmword_1CA981360;
  v144 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v53 = swift_initStackObject();
  v138 = xmmword_1CA981380;
  *(v53 + 16) = xmmword_1CA981380;
  *(v53 + 32) = @"AlwaysShowsButton";
  *(v53 + 40) = 1;
  *(v53 + 64) = MEMORY[0x1E69E6370];
  *(v53 + 72) = @"Class";
  *(v53 + 80) = 0xD00000000000001DLL;
  *(v53 + 88) = 0x80000001CA99FB10;
  *(v53 + 104) = v50;
  *(v53 + 112) = @"Description";
  v137 = @"Class";
  v54 = @"Parameters";
  v55 = @"AlwaysShowsButton";
  v56 = @"Description";
  v140 = sub_1CA94C438();
  v136 = v57;
  v58 = sub_1CA94C438();
  v135 = v59;
  v141 = &v134;
  MEMORY[0x1EEE9AC00](v58);
  v60 = v152;
  sub_1CA948D98();
  v61 = [v150 bundleURL];
  MEMORY[0x1EEE9AC00](v61);
  v62 = &v134 - v151;
  sub_1CA948B68();

  v63 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v53 + 120) = sub_1CA2F9F14(v140, v136, v58, v135, 0, 0, &v134 - v60, v62);
  v64 = v147;
  *(v53 + 144) = v147;
  *(v53 + 152) = @"Key";
  *(v53 + 160) = 0xD000000000000012;
  *(v53 + 168) = 0x80000001CA9B5230;
  *(v53 + 184) = MEMORY[0x1E69E6158];
  *(v53 + 192) = @"Label";
  v136 = @"Key";
  v65 = @"Label";
  v140 = sub_1CA94C438();
  v135 = v66;
  v67 = sub_1CA94C438();
  v134 = v68;
  v141 = &v134;
  MEMORY[0x1EEE9AC00](v67);
  sub_1CA948D98();
  v69 = [v150 bundleURL];
  MEMORY[0x1EEE9AC00](v69);
  v70 = &v134 - v151;
  sub_1CA948B68();

  v71 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v72 = sub_1CA2F9F14(v140, v135, v67, v134, 0, 0, &v134 - v60, v70);
  *(v53 + 224) = v64;
  *(v53 + 200) = v72;
  v73 = sub_1CA94C368();
  v74 = MEMORY[0x1E69E6158];
  *(v53 + 264) = MEMORY[0x1E69E6158];
  *(v53 + 232) = v73;
  *(v53 + 240) = 1701736270;
  *(v53 + 248) = 0xE400000000000000;
  _s3__C3KeyVMa_0(0);
  v141 = v75;
  v140 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v145[4] = sub_1CA2F864C();
  v76 = swift_allocObject();
  *(v76 + 16) = v138;
  *(v76 + 32) = v137;
  *(v76 + 40) = 0xD000000000000012;
  *(v76 + 48) = 0x80000001CA99B980;
  *(v76 + 80) = 5;
  v77 = MEMORY[0x1E69E6530];
  *(v76 + 64) = v74;
  *(v76 + 72) = @"DefaultValue";
  v78 = v136;
  *(v76 + 104) = v77;
  *(v76 + 112) = v78;
  *(v76 + 120) = 0x616D6B6F6F424657;
  *(v76 + 128) = 0xEF746E756F436B72;
  *(v76 + 144) = v74;
  *(v76 + 152) = @"StepperDescription";
  v79 = @"DefaultValue";
  v80 = @"StepperDescription";
  v81 = sub_1CA94C438();
  v83 = v82;
  v84 = sub_1CA94C438();
  v86 = v85;
  v139 = &v134;
  MEMORY[0x1EEE9AC00](v84);
  v87 = &v134 - v152;
  sub_1CA948D98();
  v88 = [v150 bundleURL];
  MEMORY[0x1EEE9AC00](v88);
  v89 = &v134 - v151;
  sub_1CA948B68();

  v90 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v76 + 160) = sub_1CA2F9F14(v81, v83, v84, v86, 0, 0, v87, v89);
  *(v76 + 184) = v147;
  *(v76 + 192) = @"StepperNoun";
  v91 = @"StepperNoun";
  v92 = sub_1CA94C438();
  v139 = v92;
  v94 = v93;
  *&v138 = v93;
  v157 = 0;
  v158 = 0xE000000000000000;
  sub_1CA94D408();

  v157 = v92;
  v158 = v94;
  v155 = 10;
  v156 = 0xE100000000000000;
  v153 = 32;
  v154 = 0xE100000000000000;
  sub_1CA27BAF0();
  v157 = sub_1CA94D1B8();
  v158 = v95;
  v96 = MEMORY[0x1CCAA1300](0xD000000000000010, 0x80000001CA99BA10);
  v137 = &v134;
  v97 = v157;
  v136 = v158;
  MEMORY[0x1EEE9AC00](v96);
  v98 = &v134 - v152;
  sub_1CA948D98();
  v99 = v150;
  v100 = [v150 bundleURL];
  MEMORY[0x1EEE9AC00](v100);
  v101 = v151;
  sub_1CA948B68();

  v102 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v76 + 200) = sub_1CA2F9F14(v97, v136, v139, v138, 0, 0, v98, &v134 - v101);
  *(v76 + 224) = v147;
  *(v76 + 232) = @"StepperPrefix";
  v103 = @"StepperPrefix";
  v104 = sub_1CA94C438();
  *&v138 = v105;
  v106 = sub_1CA94C438();
  v108 = v107;
  v139 = &v134;
  MEMORY[0x1EEE9AC00](v106);
  v109 = &v134 - v152;
  sub_1CA948D98();
  v110 = [v99 bundleURL];
  MEMORY[0x1EEE9AC00](v110);
  sub_1CA948B68();

  v111 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v112 = sub_1CA2F9F14(v104, v138, v106, v108, 0, 0, v109, &v134 - v101);
  *(v76 + 264) = v147;
  *(v76 + 240) = v112;
  sub_1CA94C1E8();
  v113 = sub_1CA2F864C();
  v114 = v145;
  v145[5] = v113;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v116 = v146;
  v146[30] = v114;
  v116[33] = v115;
  v116[34] = @"ParameterSummary";
  v117 = @"ParameterSummary";
  v118 = sub_1CA94C438();
  v120 = v119;
  v121 = sub_1CA94C438();
  v123 = v122;
  MEMORY[0x1EEE9AC00](v121);
  v124 = &v134 - v152;
  sub_1CA948D98();
  v125 = [v150 bundleURL];
  MEMORY[0x1EEE9AC00](v125);
  v126 = &v134 - v151;
  sub_1CA948B68();

  v127 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v128 = sub_1CA2F9F14(v118, v120, v121, v123, 0, 0, v124, v126);
  v129 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v130 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v131 = v146;
  v146[35] = v129;
  v131[38] = v130;
  v131[39] = @"RequiredResources";
  v131[43] = v142;
  v131[40] = &unk_1F49F9598;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v132 = @"RequiredResources";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id LibraryModel.FolderCollection.workflowCollection(id:)()
{
  sub_1CA94C218();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443C00, &unk_1CA983B30);
  sub_1CA94B858();
  v0 = *(type metadata accessor for LibraryModel.FolderCollection(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BF8, &qword_1CA9820A8);
  result = sub_1CA94B858();
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!(v5 >> 16))
  {
    v2 = objc_allocWithZone(MEMORY[0x1E69E0DD0]);
    v3 = OUTLINED_FUNCTION_116();
    return sub_1CA27E214(v3, v4, 1, v5, v6, v5, 0);
  }

  __break(1u);
  return result;
}

void LibraryModel.CategoryCollection.workflowCollection(id:)()
{
  OUTLINED_FUNCTION_37_0();
  v0 = sub_1CA949F78();
  v1 = OUTLINED_FUNCTION_1_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_69();
  v6 = sub_1CA94C368();
  v7 = WFWorkflowTypeForCollectionIdentifier(v6);

  if (!v7)
  {
    v15 = *MEMORY[0x1E69E1098];
    sub_1CA949C58();
    sub_1CA94C218();
    v16 = sub_1CA949F68();
    v17 = sub_1CA94CC28();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v18 = 136446210;
      v19 = OUTLINED_FUNCTION_69();
      *(v18 + 4) = sub_1CA26B54C(v19, v20, v21);
      _os_log_impl(&dword_1CA256000, v16, v17, "Can't map collection identifier to workflow type. Identifier: %{public}s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      OUTLINED_FUNCTION_154();
      MEMORY[0x1CCAA4BF0]();
      OUTLINED_FUNCTION_154();
      MEMORY[0x1CCAA4BF0]();
    }

    v22 = *(v3 + 8);
    v23 = OUTLINED_FUNCTION_3_3();
    v24(v23);
    goto LABEL_7;
  }

  v8 = WFHumanReadableNameForWorkflowType();
  if (v8)
  {
    v9 = v8;
    v10 = sub_1CA94C3A8();
    v12 = v11;

    objc_allocWithZone(MEMORY[0x1E69E0DD0]);
    sub_1CA94C218();
    v13 = OUTLINED_FUNCTION_69();
    sub_1CA27E214(v13, v14, 0, v10, v12, 0, 0);

LABEL_7:
    OUTLINED_FUNCTION_36();
    return;
  }

  __break(1u);
}

uint64_t static LibraryError.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = a2[1];
  v7 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (*(a2 + 16))
    {
      goto LABEL_10;
    }

    v36 = *a1;
    if (v3 != v6 || v2 != v5)
    {
      v9 = sub_1CA94D7F8();
      v38 = OUTLINED_FUNCTION_69();
      sub_1CA405144(v38, v39, 0);
      v40 = OUTLINED_FUNCTION_3_3();
      sub_1CA405144(v40, v41, 0);
      v42 = OUTLINED_FUNCTION_3_3();
      sub_1CA40515C(v42, v43, 0);
      v18 = OUTLINED_FUNCTION_69();
      v20 = 0;
      goto LABEL_24;
    }

    sub_1CA405144(v36, v2, 0);
    v56 = OUTLINED_FUNCTION_3_3();
    sub_1CA405144(v56, v57, 0);
    v58 = OUTLINED_FUNCTION_3_3();
    sub_1CA40515C(v58, v59, 0);
    v35 = OUTLINED_FUNCTION_3_3();
    v61 = 0;
LABEL_83:
    sub_1CA40515C(v35, v60, v61);
    return 1;
  }

  if (v4 != 1)
  {
    v31 = *a1;
    switch(v3)
    {
      case 1:
        if (v7 != 2 || v6 != 1 || v5 != 0)
        {
          goto LABEL_10;
        }

        v76 = OUTLINED_FUNCTION_3_3();
        sub_1CA40515C(v76, v77, 2u);
        v29 = 1;
        v53 = 1;
        v54 = 0;
        v55 = 2;
        goto LABEL_26;
      case 2:
        if (v7 != 2 || v6 != 2 || v5 != 0)
        {
          goto LABEL_10;
        }

        v68 = OUTLINED_FUNCTION_3_3();
        sub_1CA40515C(v68, v69, 2u);
        v35 = 2;
        break;
      case 3:
        if (v7 != 2 || v6 != 3 || v5 != 0)
        {
          goto LABEL_10;
        }

        v72 = OUTLINED_FUNCTION_3_3();
        sub_1CA40515C(v72, v73, 2u);
        v35 = 3;
        break;
      case 4:
        if (v7 != 2 || v6 != 4 || v5 != 0)
        {
          goto LABEL_10;
        }

        v64 = OUTLINED_FUNCTION_3_3();
        sub_1CA40515C(v64, v65, 2u);
        v35 = 4;
        break;
      case 5:
        if (v7 != 2 || v6 != 5 || v5 != 0)
        {
          goto LABEL_10;
        }

        v80 = OUTLINED_FUNCTION_3_3();
        sub_1CA40515C(v80, v81, 2u);
        v35 = 5;
        break;
      case 6:
        if (v7 != 2 || v6 != 6 || v5 != 0)
        {
          goto LABEL_10;
        }

        v84 = OUTLINED_FUNCTION_3_3();
        sub_1CA40515C(v84, v85, 2u);
        v35 = 6;
        break;
      default:
        if (v7 != 2 || (v5 | v6) != 0)
        {
          goto LABEL_10;
        }

        v33 = OUTLINED_FUNCTION_3_3();
        sub_1CA40515C(v33, v34, 2u);
        v35 = 0;
        break;
    }

    v60 = 0;
    v61 = 2;
    goto LABEL_83;
  }

  if (v7 != 1)
  {
LABEL_10:
    v21 = OUTLINED_FUNCTION_69();
    sub_1CA405144(v21, v22, v7);
    v23 = OUTLINED_FUNCTION_3_3();
    sub_1CA405144(v23, v24, v4);
    v25 = OUTLINED_FUNCTION_3_3();
    sub_1CA40515C(v25, v26, v4);
    v27 = OUTLINED_FUNCTION_69();
    sub_1CA40515C(v27, v28, v7);
    return 0;
  }

  if (v3 == v6 && v2 == v5)
  {
    v29 = 1;
    v44 = OUTLINED_FUNCTION_10_13();
    sub_1CA405144(v44, v45, v46);
    v47 = OUTLINED_FUNCTION_10_13();
    sub_1CA405144(v47, v48, v49);
    v50 = OUTLINED_FUNCTION_10_13();
    sub_1CA40515C(v50, v51, v52);
    v53 = OUTLINED_FUNCTION_10_13();
LABEL_26:
    sub_1CA40515C(v53, v54, v55);
    return v29;
  }

  OUTLINED_FUNCTION_3_3();
  v9 = sub_1CA94D7F8();
  v10 = OUTLINED_FUNCTION_69();
  sub_1CA405144(v10, v11, 1u);
  v12 = OUTLINED_FUNCTION_10_13();
  sub_1CA405144(v12, v13, v14);
  v15 = OUTLINED_FUNCTION_10_13();
  sub_1CA40515C(v15, v16, v17);
  v18 = OUTLINED_FUNCTION_69();
  v20 = 1;
LABEL_24:
  sub_1CA40515C(v18, v19, v20);
  return v9 & 1;
}

id sub_1CA4010FC(char a1, char a2)
{
  v2[OBJC_IVAR___WFLibraryMergeResult_hasDeltaFromOther] = a1;
  v2[OBJC_IVAR___WFLibraryMergeResult_hasDeltaFromOriginal] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for LibraryMergeResult();
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t Library.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___WFLibrary_identifier);
  v2 = *(v0 + OBJC_IVAR___WFLibrary_identifier + 8);
  sub_1CA94C218();
  return OUTLINED_FUNCTION_23();
}

uint64_t sub_1CA401224()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4450F8, &unk_1CA9867E0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1CA94B788();
  qword_1EC445098 = result;
  return result;
}

uint64_t static Library.setSharedContextURL(_:)()
{
  sub_1CA94C128();
  OUTLINED_FUNCTION_40();
  v0 = sub_1CA948BA8();
  v1 = OUTLINED_FUNCTION_1_0(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_6_0();
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_116();
  v7(v6);
  return sub_1CA94C0E8();
}

void Library.init(identifier:data:)()
{
  OUTLINED_FUNCTION_37_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v39 = v7;
  v8 = sub_1CA94C168();
  v9 = OUTLINED_FUNCTION_18_0(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_6_0();
  v36[7] = v13 - v12;
  v14 = type metadata accessor for LibraryModel(0);
  v15 = OUTLINED_FUNCTION_52(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_6_0();
  v18 = sub_1CA949F78();
  v19 = OUTLINED_FUNCTION_1_0(v18);
  v36[4] = v20;
  v36[5] = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_6_0();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B98, &qword_1CA986560);
  v24 = OUTLINED_FUNCTION_1_0(v23);
  v37 = v25;
  v38 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v28);
  v30 = v36 - v29;
  sub_1CA25CF98(v4, v2);
  OUTLINED_FUNCTION_1_27();
  sub_1CA25C5E8(v31, v32);
  OUTLINED_FUNCTION_14_17();
  v36[6] = v33;
  sub_1CA94BF58();
  (*(v37 + 32))(&v0[OBJC_IVAR___WFLibrary_capsule], v30, v38);
  v34 = &v0[OBJC_IVAR___WFLibrary_identifier];
  *v34 = v39;
  *(v34 + 1) = v6;
  v35 = type metadata accessor for Library(0);
  v40.receiver = v0;
  v40.super_class = v35;
  objc_msgSendSuper2(&v40, sel_init);
  sub_1CA266F2C(v4, v2);
  OUTLINED_FUNCTION_36();
}

void Library.__allocating_init(identifier:)()
{
  v1 = objc_allocWithZone(v0);
  OUTLINED_FUNCTION_116();
  Library.init(identifier:)();
}

void Library.init(identifier:)()
{
  OUTLINED_FUNCTION_37_0();
  v35 = v0;
  v36 = v1;
  v37 = v2;
  v3 = sub_1CA94C168();
  v4 = OUTLINED_FUNCTION_18_0(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6_0();
  v7 = type metadata accessor for LibraryModel(0);
  v8 = OUTLINED_FUNCTION_52(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_6_0();
  v13 = v12 - v11;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B98, &qword_1CA986560);
  OUTLINED_FUNCTION_1_0(v34);
  v15 = v14;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v34 - v19;
  v21 = OUTLINED_FUNCTION_177();
  __swift_instantiateConcreteTypeFromMangledNameV2(v21, v22);
  OUTLINED_FUNCTION_9_11();
  sub_1CA25C3BC(v23, &qword_1EC443BA0, &unk_1CA9844D0);
  OUTLINED_FUNCTION_8_7();
  sub_1CA25C3BC(v24, &qword_1EC443BA0, &unk_1CA9844D0);
  sub_1CA94BC78();
  v25 = *(v7 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443950, &unk_1CA982580);
  OUTLINED_FUNCTION_76();
  sub_1CA25C3BC(v26, &unk_1EC443950, &unk_1CA982580);
  OUTLINED_FUNCTION_75();
  sub_1CA25C3BC(v27, &unk_1EC443950, &unk_1CA982580);
  OUTLINED_FUNCTION_177();
  sub_1CA94BDC8();
  *(v13 + *(v7 + 24)) = MEMORY[0x1E69E7CC8];
  OUTLINED_FUNCTION_24_11();
  OUTLINED_FUNCTION_1_27();
  sub_1CA25C5E8(v28, v29);
  sub_1CA94C038();
  v30 = v35;
  (*(v15 + 32))(&v35[OBJC_IVAR___WFLibrary_capsule], v20, v34);
  v31 = &v30[OBJC_IVAR___WFLibrary_identifier];
  v32 = v37;
  *v31 = v36;
  *(v31 + 1) = v32;
  v33 = type metadata accessor for Library(0);
  v38.receiver = v30;
  v38.super_class = v33;
  objc_msgSendSuper2(&v38, sel_init);
  OUTLINED_FUNCTION_36();
}

id sub_1CA401C64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = &v3[OBJC_IVAR___WFLibrary_identifier];
  *v5 = a1;
  *(v5 + 1) = a2;
  v6 = OBJC_IVAR___WFLibrary_capsule;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B98, &qword_1CA986560);
  v8 = *(v7 - 8);
  (*(v8 + 16))(&v3[v6], a3, v7);
  v11.receiver = v3;
  v11.super_class = type metadata accessor for Library(0);
  v9 = objc_msgSendSuper2(&v11, sel_init);
  (*(v8 + 8))(a3, v7);
  return v9;
}

void sub_1CA401D50()
{
  OUTLINED_FUNCTION_37_0();
  v69 = v0;
  v3 = v2;
  v70 = v4;
  v74 = sub_1CA949F78();
  v5 = OUTLINED_FUNCTION_1_0(v74);
  v71 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_19();
  v73 = (v9 - v10);
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v11);
  v72 = &v68 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444100, &qword_1CA982730);
  v14 = OUTLINED_FUNCTION_1_0(v13);
  v82 = v15;
  v83 = v14;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v18);
  v19 = OUTLINED_FUNCTION_27_4();
  v20 = type metadata accessor for LibraryModel.FolderCollection(v19);
  v21 = OUTLINED_FUNCTION_18_0(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_6_0();
  v26 = v25 - v24;
  v27 = MEMORY[0x1E69E7CC0];
  v89 = MEMORY[0x1E69E7CC0];
  v90 = MEMORY[0x1E69E7CC0];
  v81 = sub_1CA25B410(v3);
  if (v81)
  {
    v28 = 0;
    v80 = v3 & 0xC000000000000001;
    v76 = v3 & 0xFFFFFFFFFFFFFF8;
    v75 = v3 + 32;
    v29 = v27;
    v78 = v1;
    v79 = v3;
    v77 = v26;
    while (1)
    {
      if (v80)
      {
        v30 = MEMORY[0x1CCAA22D0](v28, v3);
      }

      else
      {
        if (v28 >= *(v76 + 16))
        {
          goto LABEL_29;
        }

        v30 = *(v75 + 8 * v28);
      }

      v87 = v30;
      v31 = __OFADD__(v28, 1);
      v32 = v28 + 1;
      if (v31)
      {
        break;
      }

      v85 = v32;
      v33 = OBJC_IVAR___WFLibraryCollection_workflowCollection;
      v34 = v87;
      v35 = [*&v87[OBJC_IVAR___WFLibraryCollection_workflowCollection] name];
      sub_1CA94C3A8();

      [*&v34[v33] glyphCharacter];
      LibraryModel.FolderCollection.init(name:glyphCharacter:)();
      v86 = v33;
      v36 = [*&v34[v33] identifier];
      v37 = sub_1CA94C3A8();
      v39 = v38;

      v40 = *(v83 + 48);
      *v1 = v37;
      v1[1] = v39;
      sub_1CA406768(v26, v1 + v40);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v55 = *(v29 + 16);
        sub_1CA2E5840();
        v29 = v56;
      }

      v41 = *(v29 + 16);
      if (v41 >= *(v29 + 24) >> 1)
      {
        sub_1CA2E5840();
        v29 = v57;
      }

      *(v29 + 16) = v41 + 1;
      sub_1CA379A04(v1, v29 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v41, &qword_1EC444100, &qword_1CA982730);
      v42 = *&v87[OBJC_IVAR___WFLibraryCollection_shortcutIdentifiers];
      v43 = *(v42 + 16);
      if (v43)
      {
        v84 = v29;
        v88 = v27;
        sub_1CA2B8EF4(0, v43, 0);
        v27 = v88;
        v44 = (v42 + 40);
        do
        {
          v46 = *(v44 - 1);
          v45 = *v44;
          v47 = *&v87[v86];
          sub_1CA94C218();
          v48 = [v47 identifier];
          v49 = sub_1CA94C3A8();
          v51 = v50;

          v88 = v27;
          v53 = *(v27 + 16);
          v52 = *(v27 + 24);
          if (v53 >= v52 >> 1)
          {
            sub_1CA2B8EF4(v52 > 1, v53 + 1, 1);
            v27 = v88;
          }

          *(v27 + 16) = v53 + 1;
          v54 = (v27 + 32 * v53);
          v54[4] = v46;
          v54[5] = v45;
          v54[6] = v49;
          v54[7] = v51;
          v44 += 2;
          --v43;
        }

        while (v43);
        v1 = v78;
        v3 = v79;
        v29 = v84;
        v26 = v77;
      }

      sub_1CA2B7DD0(v27);

      sub_1CA4067C0(v26, type metadata accessor for LibraryModel.FolderCollection);
      v28 = v85;
      v27 = MEMORY[0x1E69E7CC0];
      if (v85 == v81)
      {
        v90 = v29;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
    v29 = v27;
LABEL_21:
    v58 = *MEMORY[0x1E69E1098];
    sub_1CA949C58();
    v59 = v70;
    sub_1CA94C218();
    v60 = sub_1CA949F68();
    v61 = sub_1CA94CC38();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 134349568;
      *(v62 + 4) = *(v29 + 16);
      *(v62 + 12) = 2050;
      *(v62 + 14) = *(v59 + 16);

      *(v62 + 22) = 2050;
      OUTLINED_FUNCTION_14_17();
      swift_beginAccess();
      *(v62 + 24) = *(v89 + 16);
      _os_log_impl(&dword_1CA256000, v60, v61, "About to overwrite library. This should happen once per device, the first time OS 26 or later runs on the device.\n %{public}ld library folders \n %{public}ld root shortcuts \n %{public}ld shortcuts in folders.", v62, 0x20u);
      OUTLINED_FUNCTION_154();
      MEMORY[0x1CCAA4BF0]();
    }

    else
    {
    }

    v63 = *(v71 + 8);
    v64 = v63(v72, v74);
    MEMORY[0x1EEE9AC00](v64);
    *(&v68 - 4) = v59;
    *(&v68 - 3) = &v90;
    *(&v68 - 2) = &v89;
    OUTLINED_FUNCTION_16_0();
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B98, &qword_1CA986560);
    sub_1CA94BFF8();
    swift_endAccess();
    sub_1CA949C58();
    sub_1CA94C218();
    sub_1CA94C218();
    v65 = sub_1CA949F68();
    v66 = sub_1CA94CC38();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 134349312;
      *(v67 + 4) = *(v59 + 16);

      *(v67 + 12) = 2050;
      *(v67 + 14) = sub_1CA25B410(v3);

      _os_log_impl(&dword_1CA256000, v65, v66, "Finished overwriting library with %{public}ld top-level shortcuts and %{public}ld folders.", v67, 0x16u);
      OUTLINED_FUNCTION_154();
      MEMORY[0x1CCAA4BF0]();
    }

    else
    {
    }

    v63(v73, v74);

    OUTLINED_FUNCTION_36();
  }
}

uint64_t sub_1CA4024A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  swift_beginAccess();
  v7 = *a3;
  swift_beginAccess();
  v8 = *a4;
  sub_1CA94C218();
  sub_1CA94C218();
  sub_1CA2CA42C(a2, v7, v8, v9, v10, v11, v12, v13, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26);
}

uint64_t sub_1CA4025E0()
{
  OUTLINED_FUNCTION_16_0();
  swift_beginAccess();
  Capsule<>.capsuleData(persistenceMode:)();
  swift_endAccess();
  return OUTLINED_FUNCTION_23();
}

id sub_1CA402728(char *a1)
{
  v109 = a1;
  v3 = sub_1CA94BC48();
  v4 = OUTLINED_FUNCTION_1_0(v3);
  v100 = v5;
  v101 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6_0();
  v99 = v9 - v8;
  v108 = sub_1CA949F78();
  v10 = OUTLINED_FUNCTION_1_0(v108);
  v98 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_19();
  v107 = (v14 - v15);
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v16);
  v106 = &v90[-v17];
  v18 = sub_1CA94C198();
  v19 = OUTLINED_FUNCTION_1_0(v18);
  v104 = v20;
  v105 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_19();
  v103 = v23 - v24;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_97();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B98, &qword_1CA986560);
  v27 = OUTLINED_FUNCTION_1_0(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_19();
  v34 = (v32 - v33);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v90[-v36];
  v38 = OBJC_IVAR___WFLibrary_capsule;
  OUTLINED_FUNCTION_14_17();
  swift_beginAccess();
  v39 = *(v29 + 16);
  v95 = v38;
  v102 = v1;
  v40 = &v1[v38];
  v41 = v26;
  v39(v37, v40, v26);
  sub_1CA94C008();
  v42 = *(v29 + 8);
  v96 = v37;
  (v42)(v37, v41);
  v43 = OBJC_IVAR___WFLibrary_capsule;
  v44 = v109;
  OUTLINED_FUNCTION_14_17();
  swift_beginAccess();
  v92 = v43;
  v94 = v29 + 16;
  v93 = v39;
  v39(v34, &v44[v43], v41);
  v45 = v103;
  sub_1CA94C008();
  v97 = v29 + 8;
  (v42)(v34, v41);
  LOBYTE(v43) = sub_1CA94C188();
  v46 = v104[1];
  v47 = v45;
  v48 = v105;
  v46(v47, v105);
  v46(v2, v48);
  if (v43)
  {
    sub_1CA2D9AF4();
    swift_allocError();
    *v49 = xmmword_1CA986550;
    *(v49 + 16) = 2;
    swift_willThrow();
  }

  else
  {
    v104 = v42;
    v103 = *MEMORY[0x1E69E1098];
    sub_1CA949C58();
    v50 = v102;
    v51 = v44;
    v105 = v50;
    v52 = v51;
    v53 = sub_1CA949F68();
    v54 = sub_1CA94CC38();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 134218752;
      v91 = v54;
      v56 = v105;
      v57 = [v105 folders];
      sub_1CA25B3D0(0, &qword_1EC441850, 0x1E69E0DD0);
      v58 = sub_1CA94C658();

      v59 = sub_1CA25B410(v58);

      *(v55 + 4) = v59;

      *(v55 + 12) = 2048;
      v60 = [v52 folders];
      v61 = sub_1CA94C658();

      v62 = sub_1CA25B410(v61);

      *(v55 + 14) = v62;

      *(v55 + 22) = 2048;
      v63 = [v56 shortcutIdentifiers];
      v64 = sub_1CA94C658();

      v65 = *(v64 + 16);

      *(v55 + 24) = v65;

      *(v55 + 32) = 2048;
      v66 = [v52 shortcutIdentifiers];
      v67 = sub_1CA94C658();

      v68 = *(v67 + 16);

      *(v55 + 34) = v68;

      _os_log_impl(&dword_1CA256000, v53, v91, "Merging libraries: %ld/%ld folders, %ld/%ld shortcuts", v55, 0x2Au);
      OUTLINED_FUNCTION_154();
      MEMORY[0x1CCAA4BF0]();
    }

    else
    {

      v69 = v105;
      v53 = v52;
    }

    v70 = v98;
    v71 = v99;

    v72 = *(v70 + 8);
    v72(v106, v108);
    v73 = v96;
    v93(v96, &v109[v92], v41);
    OUTLINED_FUNCTION_16_0();
    swift_beginAccess();
    type metadata accessor for LibraryModel(0);
    OUTLINED_FUNCTION_1_27();
    sub_1CA25C5E8(v74, v75);
    sub_1CA94BFE8();
    (v104)(v73, v41);
    swift_endAccess();
    sub_1CA949C58();
    v76 = v105;
    v77 = sub_1CA949F68();
    v78 = sub_1CA94CC38();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      *v79 = 134218240;
      v80 = [v76 folders];
      sub_1CA25B3D0(0, &qword_1EC441850, 0x1E69E0DD0);
      v81 = sub_1CA94C658();

      v82 = sub_1CA25B410(v81);

      *(v79 + 4) = v82;

      *(v79 + 12) = 2048;
      v83 = [v76 shortcutIdentifiers];
      v84 = sub_1CA94C658();

      v85 = *(v84 + 16);

      *(v79 + 14) = v85;

      _os_log_impl(&dword_1CA256000, v77, v78, "Merged libraries, now %ld folders, %ld shortcuts", v79, 0x16u);
      OUTLINED_FUNCTION_154();
      MEMORY[0x1CCAA4BF0]();
    }

    else
    {

      v77 = v76;
    }

    v72(v107, v108);
    v86 = sub_1CA94BC28();
    v87 = sub_1CA94BC38();
    v88 = objc_allocWithZone(type metadata accessor for LibraryMergeResult());
    v48 = sub_1CA4010FC(v86 & 1, v87 & 1);
    (*(v100 + 8))(v71, v101);
  }

  return v48;
}

void sub_1CA403074()
{
  OUTLINED_FUNCTION_37_0();
  v40 = v2;
  v3 = sub_1CA94C198();
  v4 = OUTLINED_FUNCTION_1_0(v3);
  v38 = v5;
  v39 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_19();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v33 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B98, &qword_1CA986560);
  v15 = OUTLINED_FUNCTION_1_0(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_19();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_97();
  v24 = OBJC_IVAR___WFLibrary_capsule;
  OUTLINED_FUNCTION_14_17();
  swift_beginAccess();
  v25 = *(v17 + 16);
  v36 = v24;
  v37 = v0;
  v25(v1, v0 + v24, v14);
  v26 = OBJC_IVAR___WFLibrary_capsule;
  v27 = v40;
  OUTLINED_FUNCTION_14_17();
  swift_beginAccess();
  v34 = v26;
  v35 = v25;
  v25(v22, v27 + v26, v14);
  sub_1CA94C008();
  sub_1CA94C008();
  LOBYTE(v26) = sub_1CA94C188();
  v28 = *(v38 + 8);
  v29 = v10;
  v30 = v39;
  v28(v29, v39);
  v28(v13, v30);
  v31 = *(v17 + 8);
  v31(v22, v14);
  v31(v1, v14);
  if ((v26 & 1) == 0)
  {
    v32 = v35;
    v35(v1, v37 + v36, v14);
    v32(v22, v40 + v34, v14);
    sub_1CA94C018();
    v31(v22, v14);
    v31(v1, v14);
  }

  OUTLINED_FUNCTION_36();
}

void sub_1CA403398()
{
  OUTLINED_FUNCTION_37_0();
  v33 = v1;
  v2 = sub_1CA94C198();
  v3 = OUTLINED_FUNCTION_1_0(v2);
  v35 = v4;
  v36 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_19();
  v34 = v7 - v8;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B98, &qword_1CA986560);
  v13 = OUTLINED_FUNCTION_1_0(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_19();
  v20 = (v18 - v19);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v33 - v22;
  v24 = OBJC_IVAR___WFLibrary_capsule;
  OUTLINED_FUNCTION_14_17();
  swift_beginAccess();
  v25 = *(v15 + 16);
  v25(v23, v0 + v24, v12);
  v26 = OBJC_IVAR___WFLibrary_capsule;
  v27 = v33;
  OUTLINED_FUNCTION_14_17();
  swift_beginAccess();
  v25(v20, v27 + v26, v12);
  sub_1CA94C008();
  v28 = v34;
  sub_1CA94C008();
  sub_1CA94C188();
  v29 = *(v35 + 8);
  v30 = v28;
  v31 = v36;
  v29(v30, v36);
  v29(v11, v31);
  v32 = *(v15 + 8);
  v32(v20, v12);
  v32(v23, v12);
  OUTLINED_FUNCTION_36();
}

uint64_t Library.Replica.id.getter()
{
  v0 = sub_1CA948D28();
  OUTLINED_FUNCTION_52(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_23();

  return v4(v3);
}

void sub_1CA4036DC()
{
  OUTLINED_FUNCTION_37_0();
  v121 = type metadata accessor for Library.Replica(0);
  v3 = OUTLINED_FUNCTION_1_0(v121);
  v120 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_6_0();
  v124 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B98, &qword_1CA986560);
  OUTLINED_FUNCTION_1_0(v9);
  v11 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_27_4();
  v130 = sub_1CA94D998();
  v15 = OUTLINED_FUNCTION_1_0(v130);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_19();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_97();
  v24 = OBJC_IVAR___WFLibrary_capsule;
  OUTLINED_FUNCTION_14_17();
  swift_beginAccess();
  (*(v11 + 16))(v1, v0 + v24, v9);
  *(&v141 + 1) = sub_1CA94C198();
  __swift_allocate_boxed_opaque_existential_1(&v140);
  sub_1CA94C008();
  v25 = *(v11 + 8);
  v26 = OUTLINED_FUNCTION_116();
  v27(v26);
  sub_1CA94D988();
  v28 = MEMORY[0x1E69E6158];
  v29 = MEMORY[0x1E69E61B0];
  *(&v141 + 1) = MEMORY[0x1E69E6158];
  v142 = MEMORY[0x1E69E61B0];
  *&v140 = 0x6C616E6966;
  *(&v140 + 1) = 0xE500000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4450C8, &unk_1CA986568);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1CA981310;
  *(v30 + 56) = v28;
  *(v30 + 64) = v29;
  *(v30 + 32) = 1852138867;
  *(v30 + 40) = 0xE400000000000000;
  sub_1CA94D978();

  __swift_destroy_boxed_opaque_existential_0(&v140);
  if (v137)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4450D0, &qword_1CA986578);
    if (swift_dynamicCast())
    {
      v118 = v2;
      v31 = *(v140 + 64);
      v123 = v140 + 64;
      v126 = v140;
      v32 = 1 << *(v140 + 32);
      v33 = -1;
      if (v32 < 64)
      {
        v33 = ~(-1 << v32);
      }

      v34 = v17;
      v35 = v33 & v31;
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4450D8, &qword_1CA986580);
      v117[1] = v117;
      v37 = OUTLINED_FUNCTION_18_0(v36);
      v129 = *(v38 + 64);
      v39 = MEMORY[0x1EEE9AC00](v37);
      v128 = v40;
      v41 = v117 - v40;
      v42 = 0;
      v122 = (v32 + 63) >> 6;
      v119 = v34;
      v127 = (v34 + 8);
      v125 = MEMORY[0x1E69E7CC0];
      v133 = v117 - v40;
      v132 = v22;
      while (1)
      {
        while (1)
        {
          MEMORY[0x1EEE9AC00](v39);
          v43 = v117 - v128;
          if (!v35)
          {
            while (1)
            {
              v44 = v42 + 1;
              if (__OFADD__(v42, 1))
              {
                break;
              }

              if (v44 >= v122)
              {
                v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4450E0, &unk_1CA986588);
                __swift_storeEnumTagSinglePayload(v43, 1, 1, v99);
                v35 = 0;
                goto LABEL_13;
              }

              v35 = *(v123 + 8 * v44);
              ++v42;
              if (v35)
              {
                v135 = v117;
                v42 = v44;
                goto LABEL_12;
              }
            }

            __break(1u);

            __break(1u);
            return;
          }

          v135 = v117;
          v44 = v42;
LABEL_12:
          v45 = __clz(__rbit64(v35));
          v35 &= v35 - 1;
          v46 = v45 | (v44 << 6);
          v47 = v126;
          sub_1CA2F6AB4(*(v126 + 48) + 40 * v46, &v140);
          v48 = sub_1CA9491F8();
          v49 = *(v48 - 8);
          v50 = *(v49 + 64);
          MEMORY[0x1EEE9AC00](v48);
          v52 = v117 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v49 + 16))(v52, *(v47 + 56) + *(v53 + 72) * v46, v48);
          v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4450E0, &unk_1CA986588);
          v55 = *(v54 + 48);
          v56 = v141;
          *v43 = v140;
          *(v43 + 1) = v56;
          *(v43 + 4) = v142;
          (*(v49 + 32))(&v43[v55], v52, v48);
          __swift_storeEnumTagSinglePayload(v43, 0, 1, v54);
          v41 = v133;
          v22 = v132;
LABEL_13:
          sub_1CA379A04(v43, v41, &qword_1EC4450D8, &qword_1CA986580);
          v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4450E0, &unk_1CA986588);
          if (__swift_getEnumTagSinglePayload(v41, 1, v57) == 1)
          {

            v17 = v119;
            v2 = v118;
            v116 = v125;
            goto LABEL_30;
          }

          v58 = sub_1CA9491F8();
          v135 = v117;
          v59 = OUTLINED_FUNCTION_1_0(v58);
          v29 = v60;
          v62 = *(v61 + 64);
          MEMORY[0x1EEE9AC00](v59);
          OUTLINED_FUNCTION_6_0();
          v65 = v64 - v63;
          v66 = *(v57 + 48);
          v67 = *(v41 + 1);
          v140 = *v41;
          v141 = v67;
          v142 = *(v41 + 4);
          (v29)[4](v65, &v41[v66], v58);
          sub_1CA94D398();
          sub_1CA94D988();
          v68 = v22;
          v69 = sub_1CA948D28();
          v134 = v117;
          v70 = OUTLINED_FUNCTION_1_0(v69);
          v131 = v71;
          v73 = *(v72 + 64);
          MEMORY[0x1EEE9AC00](v70);
          OUTLINED_FUNCTION_6_0();
          v22 = v75 - v74;
          v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BC8, &qword_1CA9834A0);
          OUTLINED_FUNCTION_18_0(v76);
          v78 = *(v77 + 64);
          OUTLINED_FUNCTION_29();
          MEMORY[0x1EEE9AC00](v79);
          v81 = v117 - v80;
          v137 = MEMORY[0x1E69E6158];
          v138 = MEMORY[0x1E69E61B0];
          v136[0] = 1684632949;
          v136[1] = 0xE400000000000000;
          sub_1CA94D978();
          __swift_destroy_boxed_opaque_existential_0(v136);
          if (v139[3])
          {
            break;
          }

          (*v127)(v68, v130);
          v87 = OUTLINED_FUNCTION_12_15();
          v88(v87);
          sub_1CA323ADC(&v140);
          sub_1CA27080C(v139, &unk_1EC444650, &unk_1CA981C70);
          __swift_storeEnumTagSinglePayload(v81, 1, 1, v69);
          v22 = v68;
LABEL_18:
          v39 = sub_1CA27080C(v81, &qword_1EC443BC8, &qword_1CA9834A0);
          v41 = v133;
        }

        v82 = swift_dynamicCast();
        __swift_storeEnumTagSinglePayload(v81, v82 ^ 1u, 1, v69);
        if (__swift_getEnumTagSinglePayload(v81, 1, v69) == 1)
        {
          v83 = OUTLINED_FUNCTION_9_19();
          v84(v83);
          v85 = OUTLINED_FUNCTION_12_15();
          v86(v85);
          sub_1CA323ADC(&v140);
          goto LABEL_18;
        }

        v89 = v131;
        (*(v131 + 32))(v22, v81, v69);
        v90 = sub_1CA404268();
        if (v91)
        {
          v92 = *(v89 + 8);
          v93 = OUTLINED_FUNCTION_177();
          v94(v93);
          v95 = OUTLINED_FUNCTION_9_19();
          v96(v95);
          v97 = OUTLINED_FUNCTION_12_15();
          v98(v97);
          v39 = sub_1CA323ADC(&v140);
          v41 = v133;
        }

        else
        {
          v100 = v90;
          v101 = v124;
          (*(v89 + 16))(v124, v22, v69);
          v102 = sub_1CA949138();
          v103 = v121;
          *(v101 + *(v121 + 20)) = v100;
          *(v101 + *(v103 + 24)) = v102;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v113 = *(v125 + 16);
            sub_1CA2E593C();
            v125 = v114;
          }

          v104 = *(v125 + 16);
          v41 = v133;
          if (v104 >= *(v125 + 24) >> 1)
          {
            sub_1CA2E593C();
            v125 = v115;
          }

          v105 = *(v131 + 8);
          v106 = OUTLINED_FUNCTION_177();
          v107(v106);
          v108 = OUTLINED_FUNCTION_9_19();
          v109(v108);
          v110 = OUTLINED_FUNCTION_12_15();
          v111(v110);
          sub_1CA323ADC(&v140);
          v112 = v125;
          *(v125 + 16) = v104 + 1;
          v39 = sub_1CA4051D8(v124, v112 + ((*(v120 + 80) + 32) & ~*(v120 + 80)) + *(v120 + 72) * v104);
        }
      }
    }
  }

  else
  {
    sub_1CA27080C(v136, &unk_1EC444650, &unk_1CA981C70);
  }

  v116 = MEMORY[0x1E69E7CC0];
LABEL_30:
  *&v140 = v116;
  sub_1CA94C218();
  sub_1CA40509C(&v140);
  (*(v17 + 8))(v2, v130);

  OUTLINED_FUNCTION_36();
}

uint64_t sub_1CA404268()
{
  v17 = *MEMORY[0x1E69E9840];
  v16[0] = sub_1CA948D08();
  v16[1] = v1;
  v2 = sub_1CA4066EC(v16, &v17);
  if (v2[2] < 7uLL)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    sub_1CA42B264(v0);
    v0 = v15;
    goto LABEL_4;
  }

  v0 = v2;
  if ((*(v2 + 38) & 0xF0) == 0x70)
  {
    goto LABEL_8;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_4:
  v3 = 0;
  v4 = *(v0 + 16);
  do
  {
    if (v3 >= v4)
    {
      __break(1u);
      goto LABEL_18;
    }

    *(v0 + v3 + 32) ^= byte_1F49F95D8[v3 + 32];
    ++v3;
  }

  while (v3 != 16);
  if ((*(v0 + 38) & 0xF0) != 0x70)
  {

    *&result = 0.0;
    goto LABEL_16;
  }

LABEL_8:
  sub_1CA6A6B30(0, 6, v0);
  v8 = (v7 >> 1) - v6;
  if (v7 >> 1 == v6)
  {

    swift_unknownObjectRelease();
    v9 = 0.0;
  }

  else
  {
    if ((v7 >> 1) <= v6)
    {
      __break(1u);
    }

    v10 = 0;
    v11 = (v5 + v6);
    do
    {
      v12 = *v11++;
      v10 = v12 | (v10 << 8);
      --v8;
    }

    while (v8);

    swift_unknownObjectRelease();
    v9 = v10;
  }

  *&result = v9 / 1000.0;
LABEL_16:
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1CA404404()
{
  OUTLINED_FUNCTION_37_0();
  v39 = v0;
  v41 = v1;
  v42 = v2;
  v44[1] = *MEMORY[0x1E69E9840];
  v40 = sub_1CA94CD38();
  v3 = OUTLINED_FUNCTION_1_0(v40);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_6_0();
  v10 = v9 - v8;
  v11 = sub_1CA94CD08();
  v12 = OUTLINED_FUNCTION_52(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_6_0();
  v15 = sub_1CA94B7D8();
  v16 = OUTLINED_FUNCTION_18_0(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_6_0();
  v19 = sub_1CA94B7B8();
  v20 = OUTLINED_FUNCTION_1_0(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_6_0();
  v27 = v26 - v25;
  sub_1CA25B3D0(0, &qword_1EDB9FAD0, 0x1E69E9610);
  (*(v22 + 104))(v27, *MEMORY[0x1E69E7F98], v19);
  sub_1CA94CD88();
  (*(v22 + 8))(v27, v19);
  sub_1CA94B7C8();
  v43[0] = MEMORY[0x1E69E7CC0];
  sub_1CA25C5E8(&qword_1EC441A08, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4461C0, qword_1CA98A910);
  sub_1CA25C3BC(&unk_1EC441AF0, &unk_1EC4461C0, qword_1CA98A910);
  sub_1CA94D2A8();
  (*(v5 + 104))(v10, *MEMORY[0x1E69E8090], v40);
  v28 = sub_1CA94CD78();
  v44[0] = 0;
  if (qword_1EC442D30 != -1)
  {
    swift_once();
  }

  sub_1CA94CD18();
  v29 = swift_allocObject();
  v29[2] = v41;
  v29[3] = v42;
  v29[4] = v44;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_1CA40561C;
  *(v30 + 24) = v29;
  v43[4] = sub_1CA40564C;
  v43[5] = v30;
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 1107296256;
  v43[2] = sub_1CA4048AC;
  v43[3] = &block_descriptor_9;
  v31 = _Block_copy(v43);

  v32 = OUTLINED_FUNCTION_3_3();
  dispatch_sync(v32, v33);
  _Block_release(v31);
  LOBYTE(v31) = swift_isEscapingClosureAtFileLocation();

  if (v31)
  {
    __break(1u);
  }

  v34 = v44[0];
  v35 = *v39;
  *v39 = v44[0];
  v36 = v34;

  v37 = v44[0];

  v38 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_36();
}

void sub_1CA404934()
{
  OUTLINED_FUNCTION_37_0();
  v1 = sub_1CA94C168();
  v2 = OUTLINED_FUNCTION_18_0(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6_0();
  v5 = type metadata accessor for LibraryModel(0);
  v6 = OUTLINED_FUNCTION_52(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6_0();
  v11 = v10 - v9;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B98, &qword_1CA986560);
  OUTLINED_FUNCTION_52(v28);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v27 - v15;
  v17 = sub_1CA94C3A8();
  v29 = v18;
  v30 = v17;
  v19 = v0 + OBJC_IVAR___WFLibrary_capsule;
  OUTLINED_FUNCTION_16_0();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BA0, &unk_1CA9844D0);
  OUTLINED_FUNCTION_9_11();
  sub_1CA25C3BC(v20, &qword_1EC443BA0, &unk_1CA9844D0);
  OUTLINED_FUNCTION_8_7();
  sub_1CA25C3BC(v21, &qword_1EC443BA0, &unk_1CA9844D0);
  sub_1CA94BC78();
  v22 = *(v5 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443950, &unk_1CA982580);
  OUTLINED_FUNCTION_76();
  sub_1CA25C3BC(v23, &unk_1EC443950, &unk_1CA982580);
  OUTLINED_FUNCTION_75();
  sub_1CA25C3BC(v24, &unk_1EC443950, &unk_1CA982580);
  sub_1CA94BDC8();
  *(v11 + *(v5 + 24)) = MEMORY[0x1E69E7CC8];
  OUTLINED_FUNCTION_24_11();
  OUTLINED_FUNCTION_1_27();
  sub_1CA25C5E8(v25, v26);
  sub_1CA94C038();
  v31 = v19;
  sub_1CA94BFF8();
  swift_endAccess();
  objc_allocWithZone(type metadata accessor for Library(0));
  sub_1CA401C64(v30, v29, v16);
  OUTLINED_FUNCTION_36();
}

id sub_1CA404C90(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_1CA404D64()
{
  sub_1CA94C3A8();
  v0 = objc_allocWithZone(MEMORY[0x1E69E0DD0]);
  v1 = OUTLINED_FUNCTION_23();
  result = sub_1CA27E214(v1, v2, 0, v3, v4, 0, 0);
  qword_1EC442C60 = result;
  return result;
}

id static LibraryModel.FolderCollection.rootWorkflowCollection.getter()
{
  if (qword_1EC442C58 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC442C60;

  return v1;
}

id LibraryCollection.__allocating_init(workflowCollection:shortcutIdentifiers:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = OUTLINED_FUNCTION_116();
  return LibraryCollection.init(workflowCollection:shortcutIdentifiers:)(v2, v3);
}

id LibraryCollection.init(workflowCollection:shortcutIdentifiers:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR___WFLibraryCollection_workflowCollection] = a1;
  *&v2[OBJC_IVAR___WFLibraryCollection_shortcutIdentifiers] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for LibraryCollection();
  return objc_msgSendSuper2(&v4, sel_init);
}

id LibraryCollection.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1CA40509C(uint64_t *a1)
{
  v2 = *(type metadata accessor for Library.Replica(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1CA6277EC(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_1CA40568C(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_1CA405144(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    return sub_1CA94C218();
  }

  return result;
}

uint64_t sub_1CA40515C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1CA4051D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Library.Replica(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_11WorkflowKit12LibraryErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

void sub_1CA4052AC()
{
  sub_1CA25C1DC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1CA405544()
{
  result = sub_1CA948D28();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1CA40564C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1CA40568C(uint64_t *a1)
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
        type metadata accessor for Library.Replica(0);
        v6 = sub_1CA94C6C8();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for Library.Replica(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1CA4059DC(v8, v9, a1, v4);
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
    return sub_1CA4057BC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1CA4057BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for Library.Replica(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v30 - v14;
  result = MEMORY[0x1EEE9AC00](v13);
  v19 = &v30 - v18;
  v32 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v21 = *(v17 + 72);
    v22 = *a4 + v21 * (a3 - 1);
    v23 = -v21;
    v24 = a1 - a3;
    v37 = v20;
    v31 = v21;
    v25 = v20 + v21 * a3;
    while (2)
    {
      v35 = v22;
      v36 = a3;
      v33 = v25;
      v34 = v24;
      do
      {
        sub_1CA406768(v25, v19);
        sub_1CA406768(v22, v15);
        v26 = *(v8 + 20);
        v27 = *&v19[v26];
        v28 = *&v15[v26];
        sub_1CA4067C0(v15, type metadata accessor for Library.Replica);
        result = sub_1CA4067C0(v19, type metadata accessor for Library.Replica);
        if (v27 >= v28)
        {
          break;
        }

        if (!v37)
        {
          __break(1u);
          return result;
        }

        sub_1CA4051D8(v25, v12);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_1CA4051D8(v12, v22);
        v22 += v23;
        v25 += v23;
      }

      while (!__CFADD__(v24++, 1));
      a3 = v36 + 1;
      v22 = v35 + v31;
      v24 = v34 - 1;
      v25 = v33 + v31;
      if (v36 + 1 != v32)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1CA4059DC(int64_t *a1, uint64_t a2, int64_t a3, uint64_t a4)
{
  v5 = v4;
  v111 = a1;
  v8 = type metadata accessor for Library.Replica(0);
  v118 = *(v8 - 8);
  v9 = *(v118 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v114 = &v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v123 = &v107 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v107 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v107 - v18;
  v120 = a3;
  v20 = *(a3 + 8);
  if (v20 < 1)
  {
    v22 = MEMORY[0x1E69E7CC0];
LABEL_100:
    a3 = *v111;
    if (!*v111)
    {
      goto LABEL_141;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_102:
      v102 = (v22 + 16);
      v101 = *(v22 + 16);
      for (i = v22; v101 >= 2; v22 = i)
      {
        if (!*v120)
        {
          goto LABEL_138;
        }

        v103 = (v22 + 16 * v101);
        v22 = *v103;
        v104 = &v102[2 * v101];
        v105 = *(v104 + 1);
        sub_1CA406288(*v120 + *(v118 + 72) * *v103, *v120 + *(v118 + 72) * *v104, *v120 + *(v118 + 72) * v105, a3);
        if (v5)
        {
          break;
        }

        if (v105 < v22)
        {
          goto LABEL_126;
        }

        if (v101 - 2 >= *v102)
        {
          goto LABEL_127;
        }

        *v103 = v22;
        v103[1] = v105;
        v106 = *v102 - v101;
        if (*v102 < v101)
        {
          goto LABEL_128;
        }

        v101 = *v102 - 1;
        sub_1CA627628(v104 + 16, v106, v104);
        *v102 = v101;
      }

LABEL_110:

      return;
    }

LABEL_135:
    v22 = sub_1CA627610(v22);
    goto LABEL_102;
  }

  v124 = v17;
  v109 = a4;
  v21 = 0;
  v22 = MEMORY[0x1E69E7CC0];
  v115 = &v107 - v18;
  while (1)
  {
    v23 = v21;
    v24 = v21 + 1;
    if (v21 + 1 < v20)
    {
      v25 = *v120;
      a3 = *(v118 + 72);
      i = v20;
      v122 = v21 + 1;
      v26 = v25 + a3 * v24;
      v27 = v25;
      sub_1CA406768(v26, v19);
      sub_1CA406768(v27 + a3 * v23, v16);
      v28 = *(v124 + 20);
      v29 = *&v19[v28];
      v30 = *&v16[v28];
      sub_1CA4067C0(v16, type metadata accessor for Library.Replica);
      sub_1CA4067C0(v19, type metadata accessor for Library.Replica);
      v31 = i;
      v110 = v23;
      v32 = v23 + 2;
      v119 = a3;
      v33 = v27 + a3 * (v23 + 2);
      while (1)
      {
        v34 = v32;
        if (++v122 >= v31)
        {
          break;
        }

        a3 = v29 < v30;
        sub_1CA406768(v33, v19);
        sub_1CA406768(v26, v16);
        v35 = *(v124 + 20);
        v36 = *&v19[v35];
        v37 = *&v16[v35];
        sub_1CA4067C0(v16, type metadata accessor for Library.Replica);
        sub_1CA4067C0(v19, type metadata accessor for Library.Replica);
        v31 = i;
        v33 += v119;
        v26 += v119;
        v32 = v34 + 1;
        if (v29 < v30 == v36 >= v37)
        {
          goto LABEL_9;
        }
      }

      v122 = v31;
LABEL_9:
      if (v29 < v30)
      {
        v24 = v122;
        if (v122 < v110)
        {
          goto LABEL_132;
        }

        if (v110 >= v122)
        {
          v23 = v110;
          goto LABEL_31;
        }

        i = v22;
        v108 = v5;
        if (v31 >= v34)
        {
          v38 = v34;
        }

        else
        {
          v38 = v31;
        }

        v39 = v119 * (v38 - 1);
        v40 = v119 * v38;
        v41 = v110 * v119;
        v42 = v110;
        do
        {
          if (v42 != --v24)
          {
            a3 = *v120;
            if (!*v120)
            {
              goto LABEL_139;
            }

            sub_1CA4051D8(a3 + v41, v114);
            v43 = v41 < v39 || a3 + v41 >= a3 + v40;
            if (v43)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v41 != v39)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1CA4051D8(v114, a3 + v39);
          }

          ++v42;
          v39 -= v119;
          v40 -= v119;
          v41 += v119;
        }

        while (v42 < v24);
        v5 = v108;
        v22 = i;
      }

      v24 = v122;
      v23 = v110;
    }

LABEL_31:
    v44 = v120[1];
    if (v24 < v44)
    {
      if (__OFSUB__(v24, v23))
      {
        goto LABEL_131;
      }

      if (v24 - v23 < v109)
      {
        break;
      }
    }

LABEL_47:
    if (v24 < v23)
    {
      goto LABEL_130;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v122 = v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v98 = *(v22 + 16);
      sub_1CA2E49C0();
      v22 = v99;
    }

    a3 = *(v22 + 16);
    v58 = a3 + 1;
    if (a3 >= *(v22 + 24) >> 1)
    {
      sub_1CA2E49C0();
      v22 = v100;
    }

    *(v22 + 16) = v58;
    v59 = v22 + 32;
    v60 = (v22 + 32 + 16 * a3);
    v61 = v122;
    *v60 = v23;
    v60[1] = v61;
    v119 = *v111;
    if (!v119)
    {
      goto LABEL_140;
    }

    if (a3)
    {
      i = v22;
      while (1)
      {
        v62 = v58 - 1;
        v63 = (v59 + 16 * (v58 - 1));
        v64 = (v22 + 16 * v58);
        if (v58 >= 4)
        {
          break;
        }

        if (v58 == 3)
        {
          v65 = *(v22 + 32);
          v66 = *(v22 + 40);
          v75 = __OFSUB__(v66, v65);
          v67 = v66 - v65;
          v68 = v75;
LABEL_68:
          if (v68)
          {
            goto LABEL_117;
          }

          v80 = *v64;
          v79 = v64[1];
          v81 = __OFSUB__(v79, v80);
          v82 = v79 - v80;
          v83 = v81;
          if (v81)
          {
            goto LABEL_120;
          }

          v84 = v63[1];
          v85 = v84 - *v63;
          if (__OFSUB__(v84, *v63))
          {
            goto LABEL_123;
          }

          if (__OFADD__(v82, v85))
          {
            goto LABEL_125;
          }

          if (v82 + v85 >= v67)
          {
            if (v67 < v85)
            {
              v62 = v58 - 2;
            }

            goto LABEL_90;
          }

          goto LABEL_83;
        }

        if (v58 < 2)
        {
          goto LABEL_119;
        }

        v87 = *v64;
        v86 = v64[1];
        v75 = __OFSUB__(v86, v87);
        v82 = v86 - v87;
        v83 = v75;
LABEL_83:
        if (v83)
        {
          goto LABEL_122;
        }

        v89 = *v63;
        v88 = v63[1];
        v75 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v75)
        {
          goto LABEL_124;
        }

        if (v90 < v82)
        {
          goto LABEL_97;
        }

LABEL_90:
        if (v62 - 1 >= v58)
        {
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
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        if (!*v120)
        {
          goto LABEL_137;
        }

        v94 = (v59 + 16 * (v62 - 1));
        v95 = *v94;
        a3 = v62;
        v96 = v59 + 16 * v62;
        v22 = *(v96 + 8);
        sub_1CA406288(*v120 + *(v118 + 72) * *v94, *v120 + *(v118 + 72) * *v96, *v120 + *(v118 + 72) * v22, v119);
        if (v5)
        {
          goto LABEL_110;
        }

        if (v22 < v95)
        {
          goto LABEL_112;
        }

        v5 = *(i + 16);
        if (a3 > v5)
        {
          goto LABEL_113;
        }

        *v94 = v95;
        v94[1] = v22;
        if (a3 >= v5)
        {
          goto LABEL_114;
        }

        v58 = v5 - 1;
        sub_1CA627628((v96 + 16), v5 - 1 - a3, v96);
        v22 = i;
        *(i + 16) = v5 - 1;
        v97 = v5 > 2;
        v5 = 0;
        v19 = v115;
        if (!v97)
        {
          goto LABEL_97;
        }
      }

      v69 = v59 + 16 * v58;
      v70 = *(v69 - 64);
      v71 = *(v69 - 56);
      v75 = __OFSUB__(v71, v70);
      v72 = v71 - v70;
      if (v75)
      {
        goto LABEL_115;
      }

      v74 = *(v69 - 48);
      v73 = *(v69 - 40);
      v75 = __OFSUB__(v73, v74);
      v67 = v73 - v74;
      v68 = v75;
      if (v75)
      {
        goto LABEL_116;
      }

      v76 = v64[1];
      v77 = v76 - *v64;
      if (__OFSUB__(v76, *v64))
      {
        goto LABEL_118;
      }

      v75 = __OFADD__(v67, v77);
      v78 = v67 + v77;
      if (v75)
      {
        goto LABEL_121;
      }

      if (v78 >= v72)
      {
        v92 = *v63;
        v91 = v63[1];
        v75 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v75)
        {
          goto LABEL_129;
        }

        if (v67 < v93)
        {
          v62 = v58 - 2;
        }

        goto LABEL_90;
      }

      goto LABEL_68;
    }

LABEL_97:
    v20 = v120[1];
    v21 = v122;
    if (v122 >= v20)
    {
      goto LABEL_100;
    }
  }

  v45 = v23 + v109;
  if (__OFADD__(v23, v109))
  {
    goto LABEL_133;
  }

  if (v45 >= v44)
  {
    v45 = v120[1];
  }

  if (v45 < v23)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v24 == v45)
  {
    goto LABEL_47;
  }

  i = v22;
  v108 = v5;
  a3 = *v120;
  v46 = *(v118 + 72);
  v47 = *v120 + v46 * (v24 - 1);
  v48 = -v46;
  v110 = v23;
  v49 = v23 - v24;
  v112 = v46;
  v113 = v45;
  v50 = a3 + v24 * v46;
LABEL_40:
  v122 = v24;
  v116 = v50;
  v117 = v49;
  v119 = v47;
  v51 = v47;
  v52 = v124;
  while (1)
  {
    sub_1CA406768(v50, v19);
    sub_1CA406768(v51, v16);
    v53 = *(v52 + 20);
    v54 = *&v19[v53];
    v55 = *&v16[v53];
    sub_1CA4067C0(v16, type metadata accessor for Library.Replica);
    sub_1CA4067C0(v19, type metadata accessor for Library.Replica);
    if (v54 >= v55)
    {
LABEL_45:
      v24 = v122 + 1;
      v47 = v119 + v112;
      v49 = v117 - 1;
      v50 = v116 + v112;
      if (v122 + 1 == v113)
      {
        v24 = v113;
        v5 = v108;
        v22 = i;
        v23 = v110;
        goto LABEL_47;
      }

      goto LABEL_40;
    }

    if (!a3)
    {
      break;
    }

    v56 = v123;
    sub_1CA4051D8(v50, v123);
    v52 = v124;
    swift_arrayInitWithTakeFrontToBack();
    sub_1CA4051D8(v56, v51);
    v51 += v48;
    v50 += v48;
    v43 = __CFADD__(v49++, 1);
    if (v43)
    {
      goto LABEL_45;
    }
  }

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
}

uint64_t sub_1CA406288(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v54 = type metadata accessor for Library.Replica(0);
  v9 = *(*(v54 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v54);
  v12 = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v10);
  v15 = v48 - v14;
  v17 = *(v16 + 72);
  if (!v17)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  v18 = a2 - a1 == 0x8000000000000000 && v17 == -1;
  if (v18)
  {
    goto LABEL_61;
  }

  v19 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_62;
  }

  v57 = a1;
  v56 = a4;
  v21 = v19 / v17;
  v48[1] = v4;
  if ((a2 - a1) / v17 >= v19 / v17)
  {
    v51 = v12;
    sub_1CA43F148(a2, v19 / v17, a4);
    v29 = a4 + v21 * v17;
    v30 = -v17;
    v31 = v29;
    v32 = a3;
    v52 = -v17;
    v50 = a1;
LABEL_37:
    v53 = a2 + v30;
    v33 = v32;
    v48[0] = v31;
    while (1)
    {
      if (v29 <= a4)
      {
        v57 = a2;
        v55 = v31;
        goto LABEL_59;
      }

      if (a2 <= a1)
      {
        break;
      }

      v49 = v31;
      v34 = a2;
      v35 = a4;
      v32 = v33 + v52;
      v36 = v29 + v52;
      v37 = v29;
      sub_1CA406768(v29 + v52, v15);
      v38 = v15;
      v39 = v51;
      sub_1CA406768(v53, v51);
      v40 = *(v54 + 20);
      v41 = *(v38 + v40);
      v42 = *(v39 + v40);
      v43 = v39;
      v15 = v38;
      sub_1CA4067C0(v43, type metadata accessor for Library.Replica);
      sub_1CA4067C0(v38, type metadata accessor for Library.Replica);
      if (v41 < v42)
      {
        v45 = v33 < v34 || v32 >= v34;
        a4 = v35;
        if (v45)
        {
          a2 = v53;
          swift_arrayInitWithTakeFrontToBack();
          v31 = v49;
          a1 = v50;
          v30 = v52;
          v29 = v37;
        }

        else
        {
          a1 = v50;
          v31 = v49;
          v18 = v33 == v34;
          v30 = v52;
          v46 = v53;
          a2 = v53;
          v29 = v37;
          if (!v18)
          {
            v47 = v49;
            swift_arrayInitWithTakeBackToFront();
            v29 = v37;
            a2 = v46;
            v31 = v47;
          }
        }

        goto LABEL_37;
      }

      v44 = v33 < v37 || v32 >= v37;
      a4 = v35;
      if (v44)
      {
        swift_arrayInitWithTakeFrontToBack();
        v33 = v32;
        v29 = v36;
        v31 = v36;
        a2 = v34;
        a1 = v50;
      }

      else
      {
        v31 = v36;
        v18 = v37 == v33;
        v33 = v32;
        v29 = v36;
        a2 = v34;
        a1 = v50;
        if (!v18)
        {
          swift_arrayInitWithTakeBackToFront();
          v33 = v32;
          v29 = v36;
          v31 = v36;
        }
      }
    }

    v57 = a2;
    v55 = v48[0];
  }

  else
  {
    sub_1CA43F148(a1, (a2 - a1) / v17, a4);
    v22 = a4 + (a2 - a1) / v17 * v17;
    v55 = v22;
    while (a4 < v22 && a2 < a3)
    {
      sub_1CA406768(a2, v15);
      sub_1CA406768(a4, v12);
      v24 = *(v54 + 20);
      v25 = *&v15[v24];
      v26 = *&v12[v24];
      sub_1CA4067C0(v12, type metadata accessor for Library.Replica);
      sub_1CA4067C0(v15, type metadata accessor for Library.Replica);
      if (v25 >= v26)
      {
        if (a1 < a4 || a1 >= a4 + v17)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v56 = a4 + v17;
        a4 += v17;
      }

      else
      {
        if (a1 < a2 || a1 >= a2 + v17)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v17;
      }

      a1 += v17;
      v57 = a1;
    }
  }

LABEL_59:
  sub_1CA434FDC(&v57, &v56, &v55);
  return 1;
}

void *sub_1CA4066EC(_BYTE *a1, _BYTE *a2)
{
  if (!a1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = a2 - a1;
  if (a2 == a1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  result = sub_1CA26B874(a2 - a1, 0);
  if (a2 > a1)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      v5 = result;
      memmove(result + 4, a1, v4);
      return v5;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1CA406768(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_40();
  v5 = v4(v3);
  OUTLINED_FUNCTION_52(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_23();
  v9(v8);
  return a2;
}

uint64_t sub_1CA4067C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_52(v3);
  (*(v4 + 8))(a1);
  return a1;
}

id sub_1CA406854()
{
  v82 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981340;
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
  v87 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v88 = v12;
  v13 = &v76 - v87;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v86 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v84 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v85 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v76 - v85;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v83 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 144) = v81;
  *(inited + 120) = v22;
  *(inited + 152) = sub_1CA94C368();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  v80 = v23;
  *(inited + 160) = &unk_1F49F9648;
  *(inited + 184) = v23;
  *(inited + 192) = @"Description";
  v79 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1CA981310;
  *(v24 + 32) = @"DescriptionSummary";
  v25 = @"Description";
  v26 = @"DescriptionSummary";
  v27 = sub_1CA94C438();
  v77 = v28;
  v29 = sub_1CA94C438();
  v31 = v30;
  v78 = &v76;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v76 - v87;
  sub_1CA948D98();
  v33 = [v86 bundleURL];
  MEMORY[0x1EEE9AC00](v33);
  v34 = &v76 - v85;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v36 = sub_1CA2F9F14(v27, v77, v29, v31, 0, 0, v32, v34);
  *(v24 + 64) = v83;
  *(v24 + 40) = v36;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29EBDC(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v37 = v79;
  *(inited + 200) = sub_1CA6B3784();
  *(inited + 224) = v37;
  *(inited + 232) = @"IconColor";
  *(inited + 240) = 1851881795;
  *(inited + 248) = 0xE400000000000000;
  v38 = MEMORY[0x1E69E6158];
  *(inited + 264) = MEMORY[0x1E69E6158];
  *(inited + 272) = @"IconSymbol";
  strcpy((inited + 280), "envelope.fill");
  *(inited + 294) = -4864;
  *(inited + 304) = v38;
  *(inited + 312) = @"InputPassthrough";
  v39 = MEMORY[0x1E69E6370];
  *(inited + 320) = 0;
  *(inited + 344) = v39;
  *(inited + 352) = @"LocallyProcessesData";
  *(inited + 360) = 1;
  *(inited + 384) = v39;
  *(inited + 392) = @"Name";
  v40 = @"IconColor";
  v41 = @"IconSymbol";
  v42 = @"InputPassthrough";
  v43 = @"LocallyProcessesData";
  v44 = @"Name";
  v45 = sub_1CA94C438();
  v47 = v46;
  v48 = sub_1CA94C438();
  v50 = v49;
  v79 = &v76;
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v76 - v87;
  sub_1CA948D98();
  v52 = [v86 bundleURL];
  MEMORY[0x1EEE9AC00](v52);
  v53 = &v76 - v85;
  sub_1CA948B68();

  v54 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 400) = sub_1CA2F9F14(v45, v47, v48, v50, 0, 0, v51, v53);
  *(inited + 424) = v83;
  *(inited + 432) = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v55 = swift_initStackObject();
  *(v55 + 16) = xmmword_1CA9813C0;
  *(v55 + 32) = 0x656C7069746C754DLL;
  *(v55 + 40) = 0xE800000000000000;
  *(v55 + 48) = 1;
  *(v55 + 72) = MEMORY[0x1E69E6370];
  *(v55 + 80) = 0x614E74757074754FLL;
  *(v55 + 88) = 0xEA0000000000656DLL;
  v56 = @"Output";
  v57 = sub_1CA94C438();
  v78 = v58;
  v59 = sub_1CA94C438();
  v61 = v60;
  v79 = &v76;
  MEMORY[0x1EEE9AC00](v59);
  v62 = &v76 - v87;
  sub_1CA948D98();
  v63 = [v86 bundleURL];
  MEMORY[0x1EEE9AC00](v63);
  v64 = &v76 - v85;
  sub_1CA948B68();

  v65 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v66 = sub_1CA2F9F14(v57, v78, v59, v61, 0, 0, v62, v64);
  v67 = v80;
  *(v55 + 96) = v66;
  *(v55 + 120) = v83;
  *(v55 + 128) = 0x7365707954;
  *(v55 + 168) = v67;
  *(v55 + 136) = 0xE500000000000000;
  *(v55 + 144) = &unk_1F49F9678;
  v68 = sub_1CA94C1E8();
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 440) = v68;
  *(inited + 464) = v69;
  *(inited + 472) = @"RequiredResources";
  *(inited + 480) = &unk_1F49F96A8;
  *(inited + 504) = v67;
  *(inited + 512) = @"SuggestedAsInitialAction";
  *(inited + 544) = MEMORY[0x1E69E6370];
  *(inited + 520) = 0;
  *(inited + 552) = @"UserInterfaceClasses";
  v70 = @"RequiredResources";
  v71 = @"SuggestedAsInitialAction";
  v72 = @"UserInterfaceClasses";
  v73 = sub_1CA94C1E8();
  *(inited + 584) = v81;
  *(inited + 560) = v73;
  *(inited + 592) = @"UserInterfaces";
  *(inited + 624) = v67;
  *(inited + 600) = &unk_1F49F9758;
  type metadata accessor for Key(0);
  sub_1CA29EBDC(&qword_1EDB9FB10, type metadata accessor for Key);
  v74 = @"UserInterfaces";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA407254()
{
  v74 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813E0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000018;
  *(inited + 48) = 0x80000001CA9B5760;
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
  v79 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v80 = v12;
  v13 = &v70 - v79;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v78 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v76 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v77 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v70 - v77;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v75 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"IconSymbol";
  *(inited + 120) = 0xD000000000000017;
  *(inited + 128) = 0x80000001CA9B57A0;
  v21 = MEMORY[0x1E69E6158];
  *(inited + 144) = MEMORY[0x1E69E6158];
  *(inited + 152) = @"IconColor";
  *(inited + 160) = 1851881795;
  *(inited + 168) = 0xE400000000000000;
  *(inited + 184) = v21;
  *(inited + 192) = @"Description";
  v73 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_1CA981310;
  *(v22 + 32) = @"DescriptionSummary";
  v23 = @"IconSymbol";
  v24 = @"IconColor";
  v25 = @"Description";
  v26 = @"DescriptionSummary";
  v27 = sub_1CA94C438();
  v71 = v28;
  v29 = sub_1CA94C438();
  v31 = v30;
  v72 = &v70;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v70 - v79;
  sub_1CA948D98();
  v33 = [v78 bundleURL];
  MEMORY[0x1EEE9AC00](v33);
  v34 = &v70 - v77;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v36 = sub_1CA2F9F14(v27, v71, v29, v31, 0, 0, v32, v34);
  *(v22 + 64) = v75;
  *(v22 + 40) = v36;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29EBDC(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v37 = v73;
  *(inited + 200) = sub_1CA6B3784();
  *(inited + 224) = v37;
  *(inited + 232) = @"Name";
  v38 = @"Name";
  v39 = sub_1CA94C438();
  v41 = v40;
  v42 = sub_1CA94C438();
  v44 = v43;
  v73 = &v70;
  MEMORY[0x1EEE9AC00](v42);
  v45 = &v70 - v79;
  sub_1CA948D98();
  v46 = [v78 bundleURL];
  MEMORY[0x1EEE9AC00](v46);
  v47 = &v70 - v77;
  sub_1CA948B68();

  v48 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 240) = sub_1CA2F9F14(v39, v41, v42, v44, 0, 0, v45, v47);
  *(inited + 264) = v75;
  *(inited + 272) = @"Parameters";
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443838, &qword_1CA981588);
  *(inited + 280) = MEMORY[0x1E69E7CC0];
  *(inited + 304) = v49;
  *(inited + 312) = @"ParameterSummary";
  v50 = @"Parameters";
  v51 = @"ParameterSummary";
  v52 = sub_1CA94C438();
  v54 = v53;
  v55 = sub_1CA94C438();
  v57 = v56;
  v75 = &v70;
  MEMORY[0x1EEE9AC00](v55);
  v58 = &v70 - v79;
  sub_1CA948D98();
  v59 = [v78 bundleURL];
  MEMORY[0x1EEE9AC00](v59);
  v60 = &v70 - v77;
  sub_1CA948B68();

  v61 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v62 = sub_1CA2F9F14(v52, v54, v55, v57, 0, 0, v58, v60);
  v63 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v64 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 320) = v63;
  *(inited + 344) = v64;
  *(inited + 352) = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_1CA9813B0;
  v81 = 2;
  v82 = 0;
  v66 = objc_allocWithZone(type metadata accessor for WFDeviceIdiomResource());
  v67 = @"RequiredResources";
  WFDeviceIdiomResource.init(requirement:)(&v81);
  *(v65 + 32) = v68;
  *(inited + 384) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438B0, &qword_1CA981658);
  *(inited + 360) = v65;
  type metadata accessor for Key(0);
  sub_1CA29EBDC(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t DrawerAction.associatedDonation.getter()
{
  v1 = *(v0 + *(type metadata accessor for DrawerAction(0) + 20));

  return swift_unknownObjectRetain();
}

uint64_t DrawerAction.attributionContainer.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_51_5();

  return sub_1CA407B48(v1 + v3, a1);
}

uint64_t sub_1CA407B48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4445D0, &qword_1CA983080);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1CA407BB8()
{
  v1 = v0;
  v2 = sub_1CA94A4E8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1CA94A288();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DrawerAction.DrawerActionStorage(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1CA408490(v1, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v8 + 32))(v11, v15, v7);
      v17 = [objc_opt_self() sharedRegistry];
      sub_1CA94A248();
      v18 = sub_1CA94C368();

      v19 = [v17 createActionWithIdentifier:v18 serializedParameters:0];

      (*(v8 + 8))(v11, v7);
    }

    else
    {
      (*(v3 + 32))(v6, v15, v2);
      v21 = [objc_opt_self() sharedRegistry];
      sub_1CA94A498();
      v22 = sub_1CA94C368();

      v19 = [v21 createActionWithIdentifier:v22 serializedParameters:0];

      (*(v3 + 8))(v6, v2);
    }
  }

  else
  {
    v20 = *v15;
    v19 = [*v15 copyForDuplicating];
  }

  return v19;
}

uint64_t static DrawerAction.debugActionIdentifiers.getter()
{
  if (qword_1EC442D40 != -1)
  {
    OUTLINED_FUNCTION_39_5();
  }

  return sub_1CA94C218();
}

void DrawerAction.init(wfAction:)(void *a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for DrawerAction(0);
  v5 = v4[6];
  v6 = sub_1CA94B1C8();
  OUTLINED_FUNCTION_46();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v6);
  *a2 = a1;
  type metadata accessor for DrawerAction.DrawerActionStorage(0);
  OUTLINED_FUNCTION_93();
  swift_storeEnumTagMultiPayload();
  v10 = a1;
  sub_1CA27080C(a2 + v5, &qword_1EC4445D0, &qword_1CA983080);
  OUTLINED_FUNCTION_46();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v6);
  *(a2 + v4[5]) = 0;
  v14 = [v10 identifier];
  v15 = sub_1CA94C3A8();
  v17 = v16;

  v18 = (a2 + v4[7]);
  *v18 = v15;
  v18[1] = v17;
}

void DrawerAction.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1CA408140(a1, MEMORY[0x1E69DA9F8], 1, MEMORY[0x1E69DA9E8], MEMORY[0x1E69DA9F0], a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

{
  sub_1CA408140(a1, MEMORY[0x1E69DAAD0], 2, MEMORY[0x1E69DAAC0], MEMORY[0x1E69DAAC8], a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_1CA40808C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4445D0, &qword_1CA983080);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1CA408140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_37_0();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4445D0, &qword_1CA983080);
  OUTLINED_FUNCTION_18_0(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &a9 - v34;
  v36 = OUTLINED_FUNCTION_53_6();
  v37 = type metadata accessor for DrawerAction(v36);
  v38 = v37[6];
  sub_1CA94B1C8();
  OUTLINED_FUNCTION_46();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v42);
  v43 = v27(0);
  OUTLINED_FUNCTION_27_1(v43);
  v45 = v44;
  v46 = *(v44 + 16);
  v47 = OUTLINED_FUNCTION_23();
  v48(v47);
  type metadata accessor for DrawerAction.DrawerActionStorage(0);
  OUTLINED_FUNCTION_93();
  v49 = swift_storeEnumTagMultiPayload();
  v25(v49);
  v50 = sub_1CA40808C(v35, v29 + v38);
  *(v29 + v37[5]) = 0;
  v23(v50);
  OUTLINED_FUNCTION_59();
  v51 = *(v45 + 8);
  v52 = OUTLINED_FUNCTION_35();
  v53(v52);
  v54 = (v29 + v37[7]);
  *v54 = v23;
  v54[1] = v25;
  OUTLINED_FUNCTION_36();
}

uint64_t DrawerAction.id.getter()
{
  OUTLINED_FUNCTION_20_13();
  v1 = *v0;
  v2 = v0[1];
  sub_1CA94C218();
  return OUTLINED_FUNCTION_23();
}

void DrawerAction.title.getter()
{
  OUTLINED_FUNCTION_37_0();
  v1 = OUTLINED_FUNCTION_80_2();
  v2 = OUTLINED_FUNCTION_1_0(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1_4();
  v5 = sub_1CA94A288();
  v6 = OUTLINED_FUNCTION_1_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6_0();
  v9 = OUTLINED_FUNCTION_18_1();
  v10 = type metadata accessor for DrawerAction.DrawerActionStorage(v9);
  v11 = OUTLINED_FUNCTION_52(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_3_25();
  v14 = OUTLINED_FUNCTION_29_7();
  sub_1CA408490(v14, v15);
  OUTLINED_FUNCTION_126();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v17 = OUTLINED_FUNCTION_15_10();
      v18(v17);
      sub_1CA94A268();
      v19 = OUTLINED_FUNCTION_27_14();
    }

    else
    {
      v23 = OUTLINED_FUNCTION_14_18();
      v24(v23);
      sub_1CA94A4B8();
      v19 = OUTLINED_FUNCTION_28_8();
    }

    v20(v19);
  }

  else
  {
    v21 = *v0;
    v22 = [*v0 localizedName];
    sub_1CA94C3A8();
  }

  OUTLINED_FUNCTION_29_7();
  OUTLINED_FUNCTION_36();
}

uint64_t sub_1CA408490(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DrawerAction.DrawerActionStorage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void DrawerAction.subtitle.getter()
{
  OUTLINED_FUNCTION_37_0();
  v1 = OUTLINED_FUNCTION_80_2();
  v2 = OUTLINED_FUNCTION_1_0(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1_4();
  v5 = sub_1CA94A288();
  v6 = OUTLINED_FUNCTION_1_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6_0();
  v9 = OUTLINED_FUNCTION_18_1();
  v10 = type metadata accessor for DrawerAction.DrawerActionStorage(v9);
  v11 = OUTLINED_FUNCTION_52(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_3_25();
  v14 = OUTLINED_FUNCTION_29_7();
  sub_1CA408490(v14, v15);
  OUTLINED_FUNCTION_126();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v17 = OUTLINED_FUNCTION_15_10();
      v18(v17);
      sub_1CA94A218();
      v19 = OUTLINED_FUNCTION_27_14();
    }

    else
    {
      v22 = OUTLINED_FUNCTION_14_18();
      v23(v22);
      sub_1CA94A478();
      v19 = OUTLINED_FUNCTION_28_8();
    }

    v20(v19);
  }

  else
  {
    v21 = *v0;
    objc_opt_self();
    OUTLINED_FUNCTION_93();
    if (swift_dynamicCastObjCClass() || (v24 = [v21 localizedDescriptionSummary]) == 0)
    {
    }

    else
    {
      v25 = v24;
      sub_1CA94C3A8();
    }
  }

  OUTLINED_FUNCTION_29_7();
  OUTLINED_FUNCTION_36();
}

void DrawerAction.description.getter()
{
  OUTLINED_FUNCTION_37_0();
  v1 = OUTLINED_FUNCTION_80_2();
  v2 = OUTLINED_FUNCTION_1_0(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1_4();
  v5 = sub_1CA94A288();
  v6 = OUTLINED_FUNCTION_1_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6_0();
  v9 = OUTLINED_FUNCTION_18_1();
  v10 = type metadata accessor for DrawerAction.DrawerActionStorage(v9);
  v11 = OUTLINED_FUNCTION_52(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_3_25();
  v14 = OUTLINED_FUNCTION_29_7();
  sub_1CA408490(v14, v15);
  OUTLINED_FUNCTION_126();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v17 = OUTLINED_FUNCTION_15_10();
      v18(v17);
      sub_1CA94A218();
      v19 = OUTLINED_FUNCTION_27_14();
    }

    else
    {
      v24 = OUTLINED_FUNCTION_14_18();
      v25(v24);
      sub_1CA94A478();
      v19 = OUTLINED_FUNCTION_28_8();
    }

    v20(v19);
  }

  else
  {
    v21 = *v0;
    v22 = [*v0 localizedDescriptionSummary];
    if (v22)
    {
      v23 = v22;
      sub_1CA94C3A8();
    }
  }

  OUTLINED_FUNCTION_29_7();
  OUTLINED_FUNCTION_36();
}

void DrawerAction.icon.getter()
{
  OUTLINED_FUNCTION_37_0();
  v2 = sub_1CA94A4E8();
  v3 = OUTLINED_FUNCTION_1_0(v2);
  v114 = v4;
  v115 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_6_0();
  v113 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4445D0, &qword_1CA983080);
  v10 = OUTLINED_FUNCTION_18_0(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_3_1();
  v108 = v13;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_48_0();
  v111 = v15;
  OUTLINED_FUNCTION_25_0();
  v116 = sub_1CA94B1C8();
  v16 = OUTLINED_FUNCTION_1_0(v116);
  v110 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_3_1();
  v107 = v20;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_48_0();
  v109 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445110, &dword_1CA9834B8);
  v24 = OUTLINED_FUNCTION_18_0(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_19();
  v29 = v27 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v107 - v31;
  v118 = sub_1CA94A648();
  v33 = OUTLINED_FUNCTION_1_0(v118);
  v112 = v34;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_19();
  v39 = v37 - v38;
  MEMORY[0x1EEE9AC00](v40);
  v41 = OUTLINED_FUNCTION_52_5();
  v42 = OUTLINED_FUNCTION_1_0(v41);
  v44 = v43;
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_6_0();
  v49 = v48 - v47;
  v50 = OUTLINED_FUNCTION_25_0();
  v51 = type metadata accessor for DrawerAction.DrawerActionStorage(v50);
  v52 = OUTLINED_FUNCTION_52(v51);
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_1_4();
  v117 = v0;
  sub_1CA408490(v0, v0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v56 = v44;
      v57 = *(v44 + 32);
      v58 = OUTLINED_FUNCTION_134();
      v59(v58);
      sub_1CA94A188();
      v60 = v118;
      OUTLINED_FUNCTION_49(v32, 1, v118);
      if (v61)
      {
        sub_1CA27080C(v32, &qword_1EC445110, &dword_1CA9834B8);
        v67 = v117;
      }

      else
      {
        v65 = v112;
        OUTLINED_FUNCTION_74();
        v66(v1, v32, v60);
        v67 = v117;
        sub_1CA408F70();
        if ((v68 & 1) == 0)
        {
          sub_1CA94A638();
          v93 = *(v65 + 8);
          v94 = OUTLINED_FUNCTION_130();
          v95(v94);
          goto LABEL_23;
        }

        v69 = *(v65 + 8);
        v70 = OUTLINED_FUNCTION_130();
        v71(v70);
      }

      OUTLINED_FUNCTION_51_5();
      v73 = v111;
      sub_1CA407B48(v67 + v72, v111);
      v74 = v116;
      OUTLINED_FUNCTION_49(v73, 1, v116);
      if (!v61)
      {
        v82 = v109;
        v81 = v110;
        v83 = *(v110 + 32);
        v84 = OUTLINED_FUNCTION_82();
        v85(v84);
        sub_1CA25B3D0(0, &qword_1EC445118, 0x1E69E0960);
        v86 = sub_1CA94B0F8();
        sub_1CA40B50C(v86, v87, &selRef_initWithBundleIdentifier_);
        (*(v81 + 8))(v82, v74);
LABEL_23:
        (*(v56 + 8))(v49, v41);
        goto LABEL_26;
      }

      (*(v56 + 8))(v49, v41);
      goto LABEL_21;
    }

    v63 = v114;
    (*(v114 + 32))(v113, v0, v115);
    sub_1CA94A428();
    v64 = v118;
    OUTLINED_FUNCTION_49(v29, 1, v118);
    if (v61)
    {
      sub_1CA27080C(v29, &qword_1EC445110, &dword_1CA9834B8);
      v76 = v117;
    }

    else
    {
      v75 = v112;
      (*(v112 + 32))(v39, v29, v64);
      v76 = v117;
      sub_1CA408F70();
      if ((v77 & 1) == 0)
      {
        sub_1CA94A638();
        v96 = *(v75 + 8);
        v97 = OUTLINED_FUNCTION_106();
        v98(v97);
        goto LABEL_25;
      }

      v78 = *(v75 + 8);
      v79 = OUTLINED_FUNCTION_106();
      v80(v79);
    }

    if (!sub_1CA409434())
    {
      v88 = type metadata accessor for DrawerAction(0);
      v73 = v108;
      sub_1CA407B48(v76 + *(v88 + 24), v108);
      v89 = v116;
      OUTLINED_FUNCTION_49(v73, 1, v116);
      if (v61)
      {
        v90 = *(v63 + 8);
        v91 = OUTLINED_FUNCTION_116_0();
        v92(v91);
LABEL_21:
        sub_1CA27080C(v73, &qword_1EC4445D0, &qword_1CA983080);
        goto LABEL_26;
      }

      v99 = v110;
      OUTLINED_FUNCTION_74();
      v100 = v107;
      v101(v107, v73, v89);
      sub_1CA25B3D0(0, &qword_1EC445118, 0x1E69E0960);
      v102 = sub_1CA94B0F8();
      sub_1CA40B50C(v102, v103, &selRef_initWithBundleIdentifier_);
      (*(v99 + 8))(v100, v89);
    }

LABEL_25:
    v104 = *(v63 + 8);
    v105 = OUTLINED_FUNCTION_116_0();
    v106(v105);
    goto LABEL_26;
  }

  v62 = *v0;
  [*v0 icon];

LABEL_26:
  OUTLINED_FUNCTION_36();
}

void sub_1CA408F70()
{
  OUTLINED_FUNCTION_37_0();
  v74 = sub_1CA94B1C8();
  v2 = OUTLINED_FUNCTION_1_0(v74);
  v76 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_3_1();
  v69 = v6;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_48_0();
  v75 = v8;
  OUTLINED_FUNCTION_25_0();
  v9 = sub_1CA94A4E8();
  v10 = OUTLINED_FUNCTION_1_0(v9);
  v71 = v11;
  v72 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_62_3();
  v14 = sub_1CA94A288();
  v15 = OUTLINED_FUNCTION_1_0(v14);
  v70 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_1_4();
  v19 = type metadata accessor for DrawerAction.DrawerActionStorage(0);
  v20 = OUTLINED_FUNCTION_52(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_6_0();
  v25 = v24 - v23;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4445D0, &qword_1CA983080);
  v27 = OUTLINED_FUNCTION_18_0(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_3_1();
  v73 = v30;
  OUTLINED_FUNCTION_31_2();
  v32 = MEMORY[0x1EEE9AC00](v31);
  v34 = &v69 - v33;
  v35 = MEMORY[0x1EEE9AC00](v32);
  v37 = &v69 - v36;
  MEMORY[0x1EEE9AC00](v35);
  v39 = &v69 - v38;
  sub_1CA408490(v0, v25);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v41 = v70;
      (*(v70 + 32))(v0, v25, v14);
      sub_1CA94A228();
      (*(v41 + 8))(v0, v14);
    }

    else
    {
      v49 = v71;
      (*(v71 + 32))(v1, v25, v72);
      sub_1CA94A488();
      v50 = *(v49 + 8);
      v51 = OUTLINED_FUNCTION_106();
      v52(v51);
    }

    v48 = v75;
    v47 = v76;
    v43 = v74;
  }

  else
  {
    OUTLINED_FUNCTION_12_16();
    sub_1CA40F000(v25, v42);
    OUTLINED_FUNCTION_46();
    v43 = v74;
    __swift_storeEnumTagSinglePayload(v44, v45, v46, v74);
    v48 = v75;
    v47 = v76;
  }

  sub_1CA40F450(v37, v39);
  OUTLINED_FUNCTION_51_5();
  sub_1CA407B48(v0 + v53, v34);
  OUTLINED_FUNCTION_49(v34, 1, v43);
  if (v59)
  {
    v54 = OUTLINED_FUNCTION_82();
    sub_1CA27080C(v54, v55, &qword_1CA983080);
    v56 = v34;
LABEL_13:
    sub_1CA27080C(v56, &qword_1EC4445D0, &qword_1CA983080);
    goto LABEL_14;
  }

  v57 = *(v47 + 32);
  v57(v48, v34, v43);
  v58 = v73;
  sub_1CA407B48(v39, v73);
  OUTLINED_FUNCTION_49(v58, 1, v43);
  if (v59)
  {
    v60 = *(v47 + 8);
    v61 = OUTLINED_FUNCTION_130();
    v62(v61);
    v63 = OUTLINED_FUNCTION_82();
    sub_1CA27080C(v63, v64, &qword_1CA983080);
    v56 = v58;
    goto LABEL_13;
  }

  v65 = v69;
  v66 = OUTLINED_FUNCTION_204();
  (v57)(v66);
  sub_1CA40EFB8(qword_1EC445170, MEMORY[0x1E69DB328]);
  sub_1CA94C358();
  v67 = *(v47 + 8);
  v67(v65, v43);
  v68 = OUTLINED_FUNCTION_130();
  (v67)(v68);
  sub_1CA27080C(v39, &qword_1EC4445D0, &qword_1CA983080);
LABEL_14:
  OUTLINED_FUNCTION_36();
}

id sub_1CA409434()
{
  v0 = sub_1CA94A498();
  v2 = v1;
  if (sub_1CA94C3A8() == v0 && v3 == v2)
  {

LABEL_8:

    v6 = objc_opt_self();
    goto LABEL_9;
  }

  v5 = sub_1CA94D7F8();

  if (v5)
  {
    goto LABEL_8;
  }

  if (v0 == 0xD00000000000002DLL && 0x80000001CA9B5950 == v2)
  {
  }

  else
  {
    v12 = sub_1CA94D7F8();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  v6 = objc_opt_self();
LABEL_9:
  v7 = sub_1CA94C368();
  v8 = [v6 workflowKitImageNamed_];

  v9 = [objc_allocWithZone(MEMORY[0x1E69E0B60]) initWithImage_];
  return v9;
}

void DrawerAction.needsInternalBadge.getter()
{
  OUTLINED_FUNCTION_37_0();
  v3 = sub_1CA94A4E8();
  v4 = OUTLINED_FUNCTION_1_0(v3);
  v55 = v5;
  v56 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_3_25();
  v8 = sub_1CA94A3B8();
  v9 = OUTLINED_FUNCTION_1_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_19();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v53 - v18;
  v20 = sub_1CA94A288();
  v21 = OUTLINED_FUNCTION_1_0(v20);
  v54 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_71();
  v25 = type metadata accessor for DrawerAction.DrawerActionStorage(0);
  v26 = OUTLINED_FUNCTION_52(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_6_0();
  v31 = v30 - v29;
  if (VCIsInternalBuild())
  {
    v53 = v8;
    v32 = v11;
    if (qword_1EC442D40 != -1)
    {
      OUTLINED_FUNCTION_39_5();
    }

    v33 = qword_1EC445100;
    OUTLINED_FUNCTION_20_13();
    if (!sub_1CA27AF18(*v34, v34[1], v33))
    {
      sub_1CA408490(v0, v31);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          v36 = v54;
          (*(v54 + 32))(v2, v31, v20);
          sub_1CA94A208();
          sub_1CA94A398();
          OUTLINED_FUNCTION_34_9();
          sub_1CA40EFB8(v37, v38);
          v39 = v53;
          sub_1CA94D268();
          v40 = *(v32 + 8);
          v40(v16, v39);
          v41 = OUTLINED_FUNCTION_29_7();
          (v40)(v41);
          v42 = *(v36 + 8);
          v43 = OUTLINED_FUNCTION_204();
        }

        else
        {
          v48 = v55;
          v47 = v56;
          (*(v55 + 32))(v1, v31, v56);
          sub_1CA94A468();
          sub_1CA94A398();
          OUTLINED_FUNCTION_34_9();
          sub_1CA40EFB8(v49, v50);
          v51 = v53;
          sub_1CA94D268();
          v52 = *(v32 + 8);
          v52(v16, v51);
          v52(v19, v51);
          v45 = *(v48 + 8);
          v43 = v1;
          v44 = v47;
        }

        v45(v43, v44);
      }

      else
      {
        OUTLINED_FUNCTION_12_16();
        sub_1CA40F000(v31, v46);
      }
    }
  }

  OUTLINED_FUNCTION_36();
}

void DrawerAction.debugVisibilityInfo.getter()
{
  OUTLINED_FUNCTION_37_0();
  v3 = sub_1CA94A4E8();
  v4 = OUTLINED_FUNCTION_1_0(v3);
  v34 = v5;
  v35 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_62_3();
  v8 = sub_1CA94A3B8();
  v9 = OUTLINED_FUNCTION_1_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_18_1();
  v14 = sub_1CA94A288();
  v15 = OUTLINED_FUNCTION_1_0(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_6_0();
  v20 = OUTLINED_FUNCTION_53_6();
  v21 = type metadata accessor for DrawerAction.DrawerActionStorage(v20);
  v22 = OUTLINED_FUNCTION_52(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_71();
  v25 = OUTLINED_FUNCTION_35();
  sub_1CA408490(v25, v26);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v28 = OUTLINED_FUNCTION_38_7(v17);
      v29(v28);
      sub_1CA94A208();
      sub_1CA94A388();
      OUTLINED_FUNCTION_58_2();
      (*(v11 + 8))(v1, v8);
      v30 = *(v17 + 8);
      v31 = OUTLINED_FUNCTION_194_0();
    }

    else
    {
      (*(v34 + 32))(v0, v2, v35);
      sub_1CA94A468();
      sub_1CA94A388();
      OUTLINED_FUNCTION_58_2();
      (*(v11 + 8))(v1, v8);
      v33 = *(v34 + 8);
      v31 = OUTLINED_FUNCTION_106();
    }

    v32(v31);
  }

  else
  {
    sub_1CA40F000(v2, type metadata accessor for DrawerAction.DrawerActionStorage);
  }

  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_36();
}

void DrawerAction.iconColor.getter()
{
  OUTLINED_FUNCTION_37_0();
  v2 = OUTLINED_FUNCTION_80_2();
  v3 = OUTLINED_FUNCTION_1_0(v2);
  v64 = v4;
  v65 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_6_0();
  v63 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445110, &dword_1CA9834B8);
  v10 = OUTLINED_FUNCTION_18_0(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_19();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v61 - v17;
  OUTLINED_FUNCTION_53_6();
  v66 = sub_1CA94A648();
  v19 = OUTLINED_FUNCTION_1_0(v66);
  v61 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_19();
  v25 = v23 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v61 - v27;
  v29 = sub_1CA94A288();
  v30 = OUTLINED_FUNCTION_1_0(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_6_0();
  v37 = v36 - v35;
  v38 = type metadata accessor for DrawerAction.DrawerActionStorage(0);
  v39 = OUTLINED_FUNCTION_52(v38);
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_1_4();
  v62 = v1;
  sub_1CA408490(v1, v0);
  OUTLINED_FUNCTION_52_0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v49 = *v0;
    [*v0 iconColor];

    goto LABEL_11;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v50 = v64;
    (*(v64 + 32))(v63, v0, v65);
    sub_1CA94A428();
    v51 = v66;
    OUTLINED_FUNCTION_49(v15, 1, v66);
    if (!v47)
    {
      v57 = v61;
      (*(v61 + 32))(v25, v15, v51);
      sub_1CA40A00C(v25);
      (*(v57 + 8))(v25, v51);
      v58 = *(v50 + 8);
      v59 = OUTLINED_FUNCTION_130();
      v60(v59);
      goto LABEL_11;
    }

    v52 = *(v50 + 8);
    v53 = OUTLINED_FUNCTION_130();
    v54(v53);
    v48 = v15;
LABEL_10:
    sub_1CA27080C(v48, &qword_1EC445110, &dword_1CA9834B8);
    goto LABEL_11;
  }

  v43 = *(v32 + 32);
  v44 = OUTLINED_FUNCTION_23();
  v45(v44);
  sub_1CA94A188();
  v46 = v66;
  OUTLINED_FUNCTION_49(v18, 1, v66);
  if (v47)
  {
    (*(v32 + 8))(v37, v29);
    v48 = v18;
    goto LABEL_10;
  }

  v55 = v61;
  OUTLINED_FUNCTION_74();
  v56(v28, v18, v46);
  sub_1CA40A00C(v28);
  (*(v55 + 8))(v28, v46);
  (*(v32 + 8))(v37, v29);
LABEL_11:
  OUTLINED_FUNCTION_36();
}

id sub_1CA40A00C(uint64_t a1)
{
  v2 = sub_1CA94A508();
  v30 = *(v2 - 8);
  v3 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1CA94A648();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1CA94A518();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v29 - v17;
  (*(v7 + 16))(v10, a1, v6);
  if ((*(v7 + 88))(v10, v6) != *MEMORY[0x1E69DABE0])
  {
    (*(v7 + 8))(v10, v6);
    return 0;
  }

  (*(v7 + 96))(v10, v6);
  v19 = *(v10 + 1);

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445158, &qword_1CA986AA8);
  (*(v12 + 32))(v18, &v10[*(v20 + 48)], v11);
  (*(v12 + 16))(v16, v18, v11);
  v21 = (*(v12 + 88))(v16, v11);
  if (v21 != *MEMORY[0x1E69DAAE8])
  {
    if (v21 == *MEMORY[0x1E69DAAF0])
    {
      (*(v12 + 96))(v16, v11);
      v27 = v30;
      (*(v30 + 32))(v5, v16, v2);
      sub_1CA25B3D0(0, &unk_1EC441710, 0x1E69E09E0);
      sub_1CA94A4F8();
      v24 = sub_1CA40A4AC();
      (*(v27 + 8))(v5, v2);
      (*(v12 + 8))(v18, v11);
      return v24;
    }

    v28 = *(v12 + 8);
    v28(v18, v11);
    v28(v16, v11);
    return 0;
  }

  (*(v12 + 96))(v16, v11);
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445168, &unk_1CA986AB0) + 48);
  v23 = v30;
  (*(v30 + 32))(v5, v16, v2);
  sub_1CA25B3D0(0, &unk_1EC441710, 0x1E69E09E0);
  sub_1CA94A4F8();
  v24 = sub_1CA40A4AC();
  v25 = *(v23 + 8);
  v25(v5, v2);
  (*(v12 + 8))(v18, v11);
  v25(&v16[v22], v2);
  return v24;
}

id sub_1CA40A4AC()
{
  v0 = sub_1CA94C368();

  v1 = [swift_getObjCClassFromMetadata() colorForName_];

  return v1;
}

void DrawerAction.searchKeywords.getter()
{
  OUTLINED_FUNCTION_37_0();
  v2 = OUTLINED_FUNCTION_80_2();
  v3 = OUTLINED_FUNCTION_1_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1_4();
  v8 = sub_1CA94A288();
  v9 = OUTLINED_FUNCTION_1_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_6_0();
  v14 = OUTLINED_FUNCTION_18_1();
  v15 = type metadata accessor for DrawerAction.DrawerActionStorage(v14);
  v16 = OUTLINED_FUNCTION_52(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_3_25();
  v19 = OUTLINED_FUNCTION_29_7();
  sub_1CA408490(v19, v20);
  OUTLINED_FUNCTION_126();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v22 = OUTLINED_FUNCTION_15_10();
      v23(v22);
      sub_1CA94A1D8();
      (*(v11 + 8))(v0, v8);
    }

    else
    {
      v26 = OUTLINED_FUNCTION_14_18();
      v27(v26);
      sub_1CA94A448();
      v28 = *(v5 + 8);
      v29 = OUTLINED_FUNCTION_3_3();
      v30(v29);
    }
  }

  else
  {
    v24 = *v1;
    v25 = [*v1 localizedKeywords];
    sub_1CA94C658();
  }

  OUTLINED_FUNCTION_36();
}

void DrawerAction.toolType.getter()
{
  OUTLINED_FUNCTION_37_0();
  v3 = v2;
  v4 = sub_1CA94A4E8();
  v5 = OUTLINED_FUNCTION_1_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_4();
  v10 = sub_1CA94A288();
  v11 = OUTLINED_FUNCTION_1_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_3_25();
  v16 = type metadata accessor for DrawerAction.DrawerActionStorage(0);
  v17 = OUTLINED_FUNCTION_52(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_6_0();
  v22 = v21 - v20;
  sub_1CA408490(v0, v21 - v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v24 = *(v13 + 32);
      v25 = OUTLINED_FUNCTION_126();
      v26(v25);
      sub_1CA94A278();
      (*(v13 + 8))(v1, v10);
    }

    else
    {
      (*(v7 + 32))(v0, v22, v4);
      sub_1CA94A4D8();
      v30 = *(v7 + 8);
      v31 = OUTLINED_FUNCTION_52_0();
      v32(v31);
    }
  }

  else
  {
    sub_1CA40F000(v22, type metadata accessor for DrawerAction.DrawerActionStorage);
    v27 = *MEMORY[0x1E69DAA48];
    v28 = sub_1CA94A378();
    OUTLINED_FUNCTION_52(v28);
    (*(v29 + 104))(v3, v27);
  }

  OUTLINED_FUNCTION_36();
}

void sub_1CA40A918()
{
  OUTLINED_FUNCTION_37_0();
  v2 = sub_1CA94A4E8();
  v3 = OUTLINED_FUNCTION_1_0(v2);
  v53 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_6_0();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445148, &qword_1CA986A98);
  v11 = OUTLINED_FUNCTION_18_0(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_19();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v18 = OUTLINED_FUNCTION_52_5();
  v19 = OUTLINED_FUNCTION_1_0(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_6_0();
  v24 = OUTLINED_FUNCTION_53_6();
  v25 = type metadata accessor for DrawerAction.DrawerActionStorage(v24);
  v26 = OUTLINED_FUNCTION_52(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_71();
  v29 = OUTLINED_FUNCTION_35();
  sub_1CA408490(v29, v30);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v32 = OUTLINED_FUNCTION_38_7(v21);
      v33(v32);
      v34 = sub_1CA94A178();
      sub_1CA2ECF84(v34, v0);

      v35 = sub_1CA94A668();
      OUTLINED_FUNCTION_49(v0, 1, v35);
      if (!v36)
      {
        sub_1CA94A658();
        OUTLINED_FUNCTION_58_2();
        v46 = *(v21 + 8);
        v47 = OUTLINED_FUNCTION_194_0();
        v48(v47);
        v49 = *(*(v35 - 8) + 8);
        v50 = OUTLINED_FUNCTION_130();
LABEL_13:
        v52(v50, v51);
        goto LABEL_15;
      }

      v37 = *(v21 + 8);
      v38 = OUTLINED_FUNCTION_194_0();
      v39(v38);
      v40 = v0;
    }

    else
    {
      (*(v53 + 32))(v9, v1, v2);
      v44 = sub_1CA94A418();
      sub_1CA2ECF84(v44, v16);

      v45 = sub_1CA94A668();
      OUTLINED_FUNCTION_49(v16, 1, v45);
      if (!v36)
      {
        sub_1CA94A658();
        OUTLINED_FUNCTION_58_2();
        (*(v53 + 8))(v9, v2);
        v52 = *(*(v45 - 8) + 8);
        v50 = v16;
        v51 = v45;
        goto LABEL_13;
      }

      (*(v53 + 8))(v9, v2);
      v40 = v16;
    }

    sub_1CA27080C(v40, &qword_1EC445148, &qword_1CA986A98);
  }

  else
  {
    v41 = *v1;
    v42 = [*v1 localizedCategory];
    if (v42)
    {
      v43 = v42;
      sub_1CA94C3A8();
      OUTLINED_FUNCTION_58_2();
    }
  }

LABEL_15:
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_36();
}

Swift::Void __swiftcall DrawerAction.setAttributionContainer(bundleID:)(Swift::String bundleID)
{
  OUTLINED_FUNCTION_37_0();
  v3 = v2;
  v5 = v4;
  v6 = sub_1CA94B1C8();
  v7 = OUTLINED_FUNCTION_1_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6_0();
  v14 = v13 - v12;
  sub_1CA40AE90();
  v16 = v15;
  v17 = 0;
  v27 = *(v15 + 16);
  while (1)
  {
    if (v27 == v17)
    {

      goto LABEL_13;
    }

    if (v17 >= *(v16 + 16))
    {
      break;
    }

    v18 = *(v9 + 80);
    OUTLINED_FUNCTION_68_0();
    (*(v9 + 16))(v14, v16 + v19 + *(v9 + 72) * v17, v6);
    if (sub_1CA94B0F8() == v5 && v20 == v3)
    {

LABEL_12:

      v26 = *(type metadata accessor for DrawerAction(0) + 24);
      sub_1CA27080C(v1 + v26, &qword_1EC4445D0, &qword_1CA983080);
      (*(v9 + 32))(v1 + v26, v14, v6);
      __swift_storeEnumTagSinglePayload(v1 + v26, 0, 1, v6);
LABEL_13:
      OUTLINED_FUNCTION_36();
      return;
    }

    v22 = sub_1CA94D7F8();

    if (v22)
    {
      goto LABEL_12;
    }

    v23 = *(v9 + 8);
    v24 = OUTLINED_FUNCTION_69();
    v25(v24);
    ++v17;
  }

  __break(1u);
}

void sub_1CA40AE90()
{
  OUTLINED_FUNCTION_37_0();
  v2 = v0;
  v3 = sub_1CA94A4E8();
  v4 = OUTLINED_FUNCTION_1_0(v3);
  v86 = v5;
  v87 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6_0();
  v90 = v9 - v8;
  OUTLINED_FUNCTION_25_0();
  v91 = sub_1CA94B1C8();
  v10 = OUTLINED_FUNCTION_1_0(v91);
  v89 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_3_1();
  v85 = v14;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_48_0();
  v84 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4445D0, &qword_1CA983080);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  OUTLINED_FUNCTION_19();
  v22 = v20 - v21;
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v83 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v83 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v30 = OUTLINED_FUNCTION_52_5();
  v31 = OUTLINED_FUNCTION_1_0(v30);
  v88 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_6_0();
  v37 = v36 - v35;
  v38 = type metadata accessor for DrawerAction.DrawerActionStorage(0);
  v39 = OUTLINED_FUNCTION_52(v38);
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_6_0();
  v44 = v43 - v42;
  v45 = OUTLINED_FUNCTION_126();
  sub_1CA408490(v45, v46);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v48 = v88;
      OUTLINED_FUNCTION_74();
      v49(v37, v44, v30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445150, &qword_1CA986AA0);
      v50 = OUTLINED_FUNCTION_63_4();
      *(v50 + 16) = xmmword_1CA981310;
      OUTLINED_FUNCTION_51_5();
      sub_1CA407B48(v2 + v51, v50 + v18);
      sub_1CA407B48(v50 + v18, v1);
      sub_1CA40F450(v1, v29);
      v52 = v91;
      OUTLINED_FUNCTION_49(v29, 1, v91);
      if (v53)
      {
        sub_1CA27080C(v29, &qword_1EC4445D0, &qword_1CA983080);
        v62 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v60 = v89;
        v61 = *(v89 + 32);
        v61(v84, v29, v52);
        v62 = MEMORY[0x1E69E7CC0];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v77 = *(v62 + 16);
          OUTLINED_FUNCTION_21();
          sub_1CA2E5A04();
          v62 = v78;
        }

        v65 = *(v62 + 16);
        v64 = *(v62 + 24);
        if (v65 >= v64 >> 1)
        {
          OUTLINED_FUNCTION_18(v64);
          sub_1CA2E5A04();
          v62 = v79;
        }

        *(v62 + 16) = v65 + 1;
        v66 = *(v60 + 80);
        OUTLINED_FUNCTION_68_0();
        v61(v62 + v67 + *(v60 + 72) * v65, v84, v52);
        v48 = v88;
      }

      swift_setDeallocating();
      sub_1CA32E278();
      sub_1CA94A258();
      v92 = v62;
      sub_1CA2B7E74();
      (*(v48 + 8))(v37, v30);
    }

    else
    {
      v56 = v86;
      v55 = v87;
      (*(v86 + 32))(v90, v44, v87);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445150, &qword_1CA986AA0);
      v57 = OUTLINED_FUNCTION_63_4();
      *(v57 + 16) = xmmword_1CA981310;
      OUTLINED_FUNCTION_51_5();
      sub_1CA407B48(v2 + v58, v57 + v18);
      sub_1CA407B48(v57 + v18, v26);
      sub_1CA40F450(v26, v22);
      v59 = v91;
      OUTLINED_FUNCTION_49(v22, 1, v91);
      if (v53)
      {
        sub_1CA27080C(v22, &qword_1EC4445D0, &qword_1CA983080);
        v69 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v68 = *(v89 + 32);
        v68(v85, v22, v59);
        v69 = MEMORY[0x1E69E7CC0];
        v70 = swift_isUniquelyReferenced_nonNull_native();
        if ((v70 & 1) == 0)
        {
          v80 = *(v69 + 16);
          OUTLINED_FUNCTION_21();
          sub_1CA2E5A04();
          v69 = v81;
        }

        v71 = *(v69 + 16);
        if (v71 >= *(v69 + 24) >> 1)
        {
          sub_1CA2E5A04();
          v69 = v82;
        }

        v72 = v89;
        *(v69 + 16) = v71 + 1;
        v73 = *(v72 + 80);
        OUTLINED_FUNCTION_68_0();
        v68(v69 + v74 + *(v75 + 72) * v71, v85, v59);
      }

      swift_setDeallocating();
      sub_1CA32E278();
      v76 = v90;
      sub_1CA94A4A8();
      v92 = v69;
      sub_1CA2B7E74();
      (*(v56 + 8))(v76, v55);
    }
  }

  else
  {
    OUTLINED_FUNCTION_12_16();
    sub_1CA40F000(v44, v54);
  }

  OUTLINED_FUNCTION_36();
}

uint64_t DrawerAction.DescriptionItem.title.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1CA94C218();
  return OUTLINED_FUNCTION_23();
}

WorkflowKit::DrawerAction::DescriptionItem __swiftcall DrawerAction.DescriptionItem.init(title:description:)(Swift::String_optional title, Swift::String description)
{
  v3 = v2;
  *v2 = title;
  sub_1CA25B3D0(0, &qword_1EC446AE0, 0x1E696AAB0);
  v4 = OUTLINED_FUNCTION_3_3();
  v7 = sub_1CA40B50C(v4, v5, v6);
  v3[1].value._countAndFlagsBits = v7;
  result.description.super.isa = v9;
  result.title.value._object = v8;
  result.title.value._countAndFlagsBits = v7;
  return result;
}

id sub_1CA40B50C(void *a1, uint64_t a2, SEL *a3)
{
  v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  OUTLINED_FUNCTION_69();
  sub_1CA94C368();
  OUTLINED_FUNCTION_77_0();
  v6 = [v5 *a3];

  return v6;
}

WorkflowKit::DrawerAction::DescriptionItem __swiftcall DrawerAction.DescriptionItem.init(title:description:)(Swift::String_optional title, NSAttributedString description)
{
  *v2 = title;
  *(v2 + 16) = description;
  result.title = title;
  result.description = description;
  return result;
}

void DrawerAction.descriptionItems.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_37_0();
  a19 = v22;
  a20 = v23;
  v575 = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4445D0, &qword_1CA983080);
  OUTLINED_FUNCTION_18_0(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_43();
  v29 = OUTLINED_FUNCTION_19_0(v28);
  v537 = type metadata accessor for DrawerAction(v29);
  v30 = OUTLINED_FUNCTION_52(v537);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_44_0(v34 - v33);
  v567 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444CC0, &unk_1CA9867F0);
  OUTLINED_FUNCTION_1_0(v567);
  v558 = v35;
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_19_0(v39);
  v572 = sub_1CA94A408();
  v40 = OUTLINED_FUNCTION_1_0(v572);
  v569 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_44_0(v45);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4454B0, &unk_1CA983070);
  OUTLINED_FUNCTION_18_0(v46);
  v48 = *(v47 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_19_0(v50);
  v576 = sub_1CA94A4E8();
  v51 = OUTLINED_FUNCTION_1_0(v576);
  v53 = v52;
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_44_0(v57 - v56);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445130, &unk_1CA986800);
  OUTLINED_FUNCTION_18_0(v58);
  v60 = *(v59 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_19_0(v62);
  v554 = sub_1CA94B4B8();
  v63 = OUTLINED_FUNCTION_1_0(v554);
  v543 = v64;
  v66 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_19_0(v68 - v67);
  v564 = sub_1CA94AEA8();
  v69 = OUTLINED_FUNCTION_1_0(v564);
  v542 = v70;
  v72 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_19_0(v74);
  v555 = sub_1CA94B6B8();
  v75 = OUTLINED_FUNCTION_1_0(v555);
  v541 = v76;
  v78 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_19_0(v80 - v79);
  v548 = sub_1CA94B018();
  v81 = OUTLINED_FUNCTION_1_0(v548);
  v540 = v82;
  v84 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v85);
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_19_0(v86);
  v565 = sub_1CA94B058();
  v87 = OUTLINED_FUNCTION_1_0(v565);
  v574 = v88;
  v90 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v87);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_19_0(v92 - v91);
  v559 = sub_1CA94B258();
  v93 = OUTLINED_FUNCTION_1_0(v559);
  v561 = v94;
  v96 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v93);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_44_0(v98 - v97);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444418, &qword_1CA9834B0);
  OUTLINED_FUNCTION_18_0(v99);
  v101 = *(v100 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v102);
  OUTLINED_FUNCTION_18_1();
  v552 = sub_1CA94A368();
  v103 = OUTLINED_FUNCTION_1_0(v552);
  v105 = v104;
  v107 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v103);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v108);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v109);
  OUTLINED_FUNCTION_9();
  v111 = MEMORY[0x1EEE9AC00](v110);
  v113 = &v533 - v112;
  MEMORY[0x1EEE9AC00](v111);
  v115 = &v533 - v114;
  OUTLINED_FUNCTION_53_6();
  v116 = sub_1CA94A288();
  v117 = OUTLINED_FUNCTION_1_0(v116);
  v550 = v118;
  v120 = *(v119 + 64);
  MEMORY[0x1EEE9AC00](v117);
  OUTLINED_FUNCTION_19();
  v123 = v121 - v122;
  MEMORY[0x1EEE9AC00](v124);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v125);
  OUTLINED_FUNCTION_48_0();
  v127 = OUTLINED_FUNCTION_19_0(v126);
  v128 = type metadata accessor for DrawerAction.DrawerActionStorage(v127);
  v129 = OUTLINED_FUNCTION_52(v128);
  v131 = *(v130 + 64);
  MEMORY[0x1EEE9AC00](v129);
  OUTLINED_FUNCTION_1_4();
  v553 = v20;
  v132 = OUTLINED_FUNCTION_134();
  sub_1CA408490(v132, v133);
  OUTLINED_FUNCTION_35();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v144 = *v20;
    v145 = sub_1CA40F058(*v20, &selRef_localizedDescriptionSummary);
    v147 = v145;
    if (v146)
    {
      v147 = String.ifNotEmpty.getter(v145, v146);
      v149 = v148;
    }

    else
    {
      v149 = 0;
    }

    v355 = sub_1CA40F058(v144, &selRef_localizedDiscontinuedDescription);
    v357 = v355;
    v566 = v144;
    if (v356)
    {
      v357 = String.ifNotEmpty.getter(v355, v356);
      v359 = v358;
    }

    else
    {
      v359 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443A50, &qword_1CA986840);
    inited = swift_initStackObject();
    v165 = 0;
    *(inited + 16) = xmmword_1CA97EDF0;
    *(inited + 32) = v147;
    *(inited + 40) = v149;
    v184 = inited + 40;
    *(inited + 48) = v357;
    *(inited + 56) = v359;
    v361 = MEMORY[0x1E69E7CC0];
LABEL_124:
    v362 = (v184 + 16 * v165);
    while (++v165 != 3)
    {
      v363 = v362 + 2;
      v364 = *v362;
      v362 += 2;
      if (v364)
      {
        v365 = *(v363 - 3);
        sub_1CA94C218();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v368 = *(v361 + 16);
          OUTLINED_FUNCTION_21();
          sub_1CA26DADC();
          v361 = v369;
        }

        v359 = *(v361 + 16);
        v366 = *(v361 + 24);
        if (v359 >= v366 >> 1)
        {
          OUTLINED_FUNCTION_93_3(v366);
          sub_1CA26DADC();
          v361 = v370;
        }

        *(v361 + 16) = v359 + 1;
        v367 = v361 + 16 * v359;
        *(v367 + 32) = v365;
        *(v367 + 40) = v364;
        goto LABEL_124;
      }
    }

    swift_setDeallocating();
    sub_1CA32E2E4();
    v580 = v361;
    v371 = &qword_1EC443E20;
    v372 = &qword_1CA986220;
    v373 = OUTLINED_FUNCTION_73_4();
    __swift_instantiateConcreteTypeFromMangledNameV2(v373, v374);
    OUTLINED_FUNCTION_35_7(&qword_1EC441B20);
    OUTLINED_FUNCTION_75_2();
    OUTLINED_FUNCTION_78_2();
    v375 = OUTLINED_FUNCTION_73_4();
    String.ifNotEmpty.getter(v375, v376);
    OUTLINED_FUNCTION_5_0();

    if (v361)
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_76_3();
      OUTLINED_FUNCTION_14_2();
      v377 = &qword_1EC443E20;
      sub_1CA2E5ACC();
      OUTLINED_FUNCTION_81_2(v378);
      v177 = v566;
      if (v182)
      {
        OUTLINED_FUNCTION_18(v379);
        sub_1CA2E5ACC();
        v359 = v516;
      }

      OUTLINED_FUNCTION_16_15();
    }

    else
    {
      v359 = MEMORY[0x1E69E7CC0];
      v177 = v566;
    }

    v380 = sub_1CA40F058(v177, &selRef_localizedDescriptionAttributionMarkdownString);
    if (v381)
    {
      v371 = v381;
      v372 = String.ifNotEmpty.getter(v380, v381);
      v383 = v382;

      if (v383)
      {
        OUTLINED_FUNCTION_106();
        OUTLINED_FUNCTION_76_3();
        OUTLINED_FUNCTION_14_2();
        v384 = v371;
        if ((OUTLINED_FUNCTION_97_3() & 1) == 0)
        {
          OUTLINED_FUNCTION_7_18();
          v359 = v525;
        }

        v386 = *(v359 + 16);
        v385 = *(v359 + 24);
        v371 = (v386 + 1);
        if (v386 >= v385 >> 1)
        {
          OUTLINED_FUNCTION_18(v385);
          sub_1CA2E5ACC();
          v359 = v526;
        }

        OUTLINED_FUNCTION_16_15();
      }
    }

    v187 = [v177 parameters];
    sub_1CA25B3D0(0, &qword_1EC441AA0, off_1E836EDB8);
    OUTLINED_FUNCTION_93();
    v387 = sub_1CA94C658();

    v388 = sub_1CA25B410(v387);
    if (!v388)
    {
LABEL_165:

      OUTLINED_FUNCTION_89_1();
      sub_1CA40F058(v165, v439);
      if (v440)
      {
      }

      else
      {
        v484 = sub_1CA40F058(v165, &selRef_localizedDescriptionInput);
        if (v485)
        {
          v387 = v485;
          String.ifNotEmpty.getter(v484, v485);
          OUTLINED_FUNCTION_69_1();

          if (v371)
          {
            v165 = v359;
            sub_1CA94C438();
            OUTLINED_FUNCTION_70_0();
            if (qword_1EDB9F5F0 != -1)
            {
              OUTLINED_FUNCTION_0_17();
              swift_once();
            }

            OUTLINED_FUNCTION_69();
            v359 = sub_1CA94C368();
            OUTLINED_FUNCTION_69();
            sub_1CA94C368();
            v486 = OUTLINED_FUNCTION_77_0();
            v487 = OUTLINED_FUNCTION_26_11(v486, sel_localizedStringForKey_value_table_);

            sub_1CA94C3A8();
            OUTLINED_FUNCTION_59();

            sub_1CA25B3D0(0, &qword_1EC446AE0, 0x1E696AAB0);
            v488 = OUTLINED_FUNCTION_23();
            v371 = v489;
            sub_1CA40B50C(v488, v490, v491);
            if ((OUTLINED_FUNCTION_46_6() & 1) == 0)
            {
              OUTLINED_FUNCTION_7_18();
              v359 = v531;
            }

            OUTLINED_FUNCTION_89_1();
            OUTLINED_FUNCTION_19_9();
            if (v182)
            {
              OUTLINED_FUNCTION_18(v492);
              sub_1CA2E5ACC();
              v359 = v532;
            }

            OUTLINED_FUNCTION_11_17();
          }
        }
      }

      v441 = sub_1CA40F058(v165, &selRef_localizedDescriptionResult);
      if (v442)
      {
        String.ifNotEmpty.getter(v441, v442);
        OUTLINED_FUNCTION_1_2();

        if (v387)
        {
          OUTLINED_FUNCTION_52_0();
          v443 = OUTLINED_FUNCTION_76_3();

          sub_1CA94C438();
          v371 = v444;
          if (qword_1EDB9F5F0 != -1)
          {
            OUTLINED_FUNCTION_0_17();
            swift_once();
          }

          OUTLINED_FUNCTION_134();
          v445 = sub_1CA94C368();
          OUTLINED_FUNCTION_134();
          v446 = sub_1CA94C368();

          v448 = OUTLINED_FUNCTION_96(v447, sel_localizedStringForKey_value_table_);

          sub_1CA94C3A8();
          OUTLINED_FUNCTION_1_2();

          v449 = v443;
          if ((OUTLINED_FUNCTION_97_3() & 1) == 0)
          {
            OUTLINED_FUNCTION_7_18();
            v359 = v527;
          }

          v451 = *(v359 + 16);
          v450 = *(v359 + 24);
          v372 = (v451 + 1);
          if (v451 >= v450 >> 1)
          {
            OUTLINED_FUNCTION_22_11(v450);
            sub_1CA2E5ACC();
            v359 = v528;
          }

          OUTLINED_FUNCTION_72_2();
        }
      }

      v452 = sub_1CA40F058(v165, &selRef_localizedDescriptionNote);
      if (v453)
      {
        String.ifNotEmpty.getter(v452, v453);
        OUTLINED_FUNCTION_69_1();

        if (v371)
        {
          v165 = v359;
          sub_1CA94C438();
          OUTLINED_FUNCTION_70_0();
          if (qword_1EDB9F5F0 != -1)
          {
            OUTLINED_FUNCTION_0_17();
            swift_once();
          }

          OUTLINED_FUNCTION_69();
          v359 = sub_1CA94C368();
          OUTLINED_FUNCTION_69();
          sub_1CA94C368();
          v454 = OUTLINED_FUNCTION_77_0();
          v455 = OUTLINED_FUNCTION_26_11(v454, sel_localizedStringForKey_value_table_);

          sub_1CA94C3A8();
          OUTLINED_FUNCTION_59();

          sub_1CA25B3D0(0, &qword_1EC446AE0, 0x1E696AAB0);
          v456 = OUTLINED_FUNCTION_23();
          v371 = v457;
          sub_1CA40B50C(v456, v458, v459);
          if ((OUTLINED_FUNCTION_46_6() & 1) == 0)
          {
            OUTLINED_FUNCTION_7_18();
            v359 = v529;
          }

          OUTLINED_FUNCTION_89_1();
          OUTLINED_FUNCTION_19_9();
          if (v182)
          {
            OUTLINED_FUNCTION_18(v460);
            sub_1CA2E5ACC();
            v359 = v530;
          }

          OUTLINED_FUNCTION_11_17();
        }
      }

      v461 = sub_1CA40F058(v165, &selRef_localizedDescriptionRequires);
      if (v462 && (String.ifNotEmpty.getter(v461, v462), OUTLINED_FUNCTION_69_1(), , v371))
      {
        v463 = v359;
        sub_1CA94C438();
        OUTLINED_FUNCTION_70_0();
        if (qword_1EDB9F5F0 != -1)
        {
          OUTLINED_FUNCTION_0_17();
          swift_once();
        }

        OUTLINED_FUNCTION_69();
        v464 = sub_1CA94C368();
        OUTLINED_FUNCTION_69();
        sub_1CA94C368();
        v465 = OUTLINED_FUNCTION_77_0();
        v466 = OUTLINED_FUNCTION_26_11(v465, sel_localizedStringForKey_value_table_);

        sub_1CA94C3A8();
        OUTLINED_FUNCTION_59();

        sub_1CA25B3D0(0, &qword_1EC446AE0, 0x1E696AAB0);
        v467 = OUTLINED_FUNCTION_23();
        sub_1CA40B50C(v467, v468, v469);
        if ((OUTLINED_FUNCTION_46_6() & 1) == 0)
        {
          OUTLINED_FUNCTION_7_18();
        }

        OUTLINED_FUNCTION_89_1();
        OUTLINED_FUNCTION_19_9();
        if (v182)
        {
          OUTLINED_FUNCTION_18(v470);
          sub_1CA2E5ACC();
        }

        OUTLINED_FUNCTION_11_17();
      }

      else
      {
      }

      goto LABEL_196;
    }

    v372 = v388;
    if (v388 < 1)
    {
      __break(1u);
LABEL_210:
      OUTLINED_FUNCTION_7_18();
      v160 = v517;
      goto LABEL_30;
    }

    v165 = 0;
    v389 = v387 & 0xC000000000000001;
    v390 = &selRef_possibleContentClassesForVariableNamed_;
    v391 = &selRef_possibleContentClassesForVariableNamed_;
    v569 = v387;
    v568 = v388;
    v567 = (v387 & 0xC000000000000001);
    while (1)
    {
      if (v389)
      {
        v392 = MEMORY[0x1CCAA22D0](v165, v387);
      }

      else
      {
        v392 = *(v387 + 8 * v165 + 32);
      }

      v393 = v392;
      v394 = [v392 v390[502]];
      v371 = [v394 v391[510]];

      if (v371)
      {
        v395 = sub_1CA40F058(v393, &selRef_localizedDescription);
        if (v396)
        {
          v397 = v395;
          v398 = v396;
          OUTLINED_FUNCTION_85_3();
          if (v399)
          {
            v576 = v359;
            v400 = sub_1CA948968();
            v573 = &v533;
            v401 = OUTLINED_FUNCTION_1_0(v400);
            v574 = v402;
            v404 = *(v403 + 64);
            MEMORY[0x1EEE9AC00](v401);
            v572 = (v404 + 15) & 0xFFFFFFFFFFFFFFF0;
            v405 = &v533 - v572;
            v406 = sub_1CA948948();
            v571 = &v533;
            v407 = OUTLINED_FUNCTION_1_0(v406);
            v409 = *(v408 + 64);
            MEMORY[0x1EEE9AC00](v407);
            OUTLINED_FUNCTION_6_0();
            (*(v410 + 104))(v412 - v411, *MEMORY[0x1E6968740]);
            v413 = sub_1CA948938();
            v414 = OUTLINED_FUNCTION_1_0(v413);
            v416 = *(v415 + 64);
            MEMORY[0x1EEE9AC00](v414);
            OUTLINED_FUNCTION_3_25();
            (*(v417 + 104))(v359, *MEMORY[0x1E6968738]);
            sub_1CA948958();
            v418 = OUTLINED_FUNCTION_25_0();
            v359 = sub_1CA25B3D0(v418, &qword_1EC446AE0, 0x1E696AAB0);
            v570 = &v533;
            MEMORY[0x1EEE9AC00](v359);
            v419 = v574[2];
            v420 = &v533 - v572;
            v571 = v405;
            v572 = v400;
            v419(v420, v405, v400);
            v421 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444A90, &qword_1CA9827C0);
            OUTLINED_FUNCTION_18_0(v421);
            v423 = *(v422 + 64);
            OUTLINED_FUNCTION_29();
            MEMORY[0x1EEE9AC00](v424);
            OUTLINED_FUNCTION_18_1();
            sub_1CA948BA8();
            OUTLINED_FUNCTION_46();
            __swift_storeEnumTagSinglePayload(v425, v426, v427, v428);
            sub_1CA94C218();
            v371 = v359;
            v429 = v575;
            v430 = sub_1CA94CDD8();
            if (v429)
            {

              OUTLINED_FUNCTION_100(&a15);
              sub_1CA94C218();
              v371 = v359;
              v431 = sub_1CA40B50C(v397, v398, &selRef_initWithString_);
              v575 = 0;
            }

            else
            {
              v431 = v430;
              v575 = 0;
              OUTLINED_FUNCTION_100(&a15);
            }

            (v574[1])(v571, v572);

            OUTLINED_FUNCTION_100(&a18);
            v432 = [v393 localizedLabel];
            sub_1CA94C3A8();
            OUTLINED_FUNCTION_69_1();

            v433 = v431;
            v390 = &selRef_possibleContentClassesForVariableNamed_;
            if ((OUTLINED_FUNCTION_98_3() & 1) == 0)
            {
              OUTLINED_FUNCTION_7_18();
              v359 = v437;
            }

            v391 = &selRef_possibleContentClassesForVariableNamed_;
            v435 = *(v359 + 16);
            v434 = *(v359 + 24);
            if (v435 >= v434 >> 1)
            {
              OUTLINED_FUNCTION_93_3(v434);
              sub_1CA2E5ACC();
              v359 = v438;
            }

            *(v359 + 16) = v435 + 1;
            v436 = (v359 + 24 * v435);
            v436[4] = v400;
            v436[5] = v371;
            v436[6] = v433;
            v387 = v569;
            v372 = v568;
            v389 = v567;
            goto LABEL_164;
          }
        }

        v390 = &selRef_possibleContentClassesForVariableNamed_;
        v391 = &selRef_possibleContentClassesForVariableNamed_;
      }

      else
      {
      }

LABEL_164:
      if (v372 == ++v165)
      {
        goto LABEL_165;
      }
    }
  }

  if (EnumCaseMultiPayload != 1)
  {
    OUTLINED_FUNCTION_74();
    v150 = v573;
    v151 = v576;
    v152(v573, v20, v576);
    sub_1CA94A828();
    v153 = v575;
    v154 = sub_1CA94A7D8();
    if (v153)
    {

      (*(v53 + 8))(v150, v151);
    }

    else
    {
      v574 = v53;
      v534 = v116;
      v471 = v539;
      v575 = v154;
      sub_1CA94A3E8();
      swift_getKeyPath();
      v472 = swift_allocObject();
      *(v472 + 16) = sub_1CA94A498();
      *(v472 + 24) = v473;
      v474 = v556;
      *v556 = v472;
      v475 = v558;
      v476 = v567;
      (v558)[13](v474, *MEMORY[0x1E69DA9C0], v567);
      sub_1CA40EFB8(&qword_1EC441D50, MEMORY[0x1E69DAAB8]);
      sub_1CA25C3BC(&qword_1EDB9F7C0, &unk_1EC444CC0, &unk_1CA9867F0);
      sub_1CA94A838();

      (v475[1])(v474, v476);
      v571 = *(v569 + 1);
      (v571)(v471, v572);
      v477 = sub_1CA948E58();
      v569 = &v533;
      v478 = OUTLINED_FUNCTION_1_0(v477);
      v480 = v479;
      v482 = *(v481 + 64);
      MEMORY[0x1EEE9AC00](v478);
      OUTLINED_FUNCTION_3_25();
      sub_1CA948D98();
      v483 = v568;
      sub_1CA94A6E8();
      (*(v480 + 8))(v475 + 1, v477);
      v493 = OUTLINED_FUNCTION_61_4();
      v494(v493);
      OUTLINED_FUNCTION_100(&a14);
      v495 = v534;
      OUTLINED_FUNCTION_49(v483, 1, v534);
      if (v304)
      {
        sub_1CA27080C(v483, &qword_1EC4454B0, &unk_1CA983070);

        v496 = OUTLINED_FUNCTION_68_4();
        v497(v496);
      }

      else
      {
        v498 = v550;
        v499 = v535;
        (*(v550 + 32))(v535, v483, v495);
        v500 = *(v498 + 16);
        v500(v123, v499, v495);
        v501 = v537;
        v502 = *(v537 + 24);
        sub_1CA94B1C8();
        v503 = v538;
        OUTLINED_FUNCTION_46();
        __swift_storeEnumTagSinglePayload(v504, v505, v506, v507);
        v500(v503, v123, v495);
        swift_storeEnumTagMultiPayload();
        v508 = v536;
        sub_1CA94A228();
        sub_1CA40808C(v508, v503 + v502);
        *(v503 + *(v501 + 20)) = 0;
        sub_1CA94A248();
        OUTLINED_FUNCTION_1_2();
        v509 = *(v498 + 8);
        v510 = v509(v123, v495);
        v511 = (v503 + *(v501 + 28));
        *v511 = v123;
        v511[1] = v508;
        DrawerAction.descriptionItems.getter(v510);

        v512 = OUTLINED_FUNCTION_106();
        (v509)(v512);
        v513 = OUTLINED_FUNCTION_68_4();
        v514(v513);
        sub_1CA40F000(v503, type metadata accessor for DrawerAction);
      }
    }

    goto LABEL_196;
  }

  v135 = *(v550 + 32);
  v136 = v560;
  v137 = OUTLINED_FUNCTION_23();
  v138(v137);
  sub_1CA94A1B8();
  sub_1CA94A348();
  OUTLINED_FUNCTION_69_1();
  v139 = *(v105 + 8);
  v538 = (v105 + 8);
  v539 = v139;
  v139(v115, v552);
  if (v115)
  {
    v140 = OUTLINED_FUNCTION_23();
    v136 = String.ifNotEmpty.getter(v140, v141);
    v143 = v142;
  }

  else
  {
    v143 = 0;
  }

  v534 = v116;
  OUTLINED_FUNCTION_67_3();
  sub_1CA94A168();
  v155 = sub_1CA94A5F8();
  OUTLINED_FUNCTION_49(v21, 1, v155);
  if (v304)
  {
    sub_1CA27080C(v21, &qword_1EC444418, &qword_1CA9834B0);
    v158 = 0;
    v160 = 0;
  }

  else
  {
    sub_1CA94A5E8();
    OUTLINED_FUNCTION_58_2();
    (*(*(v155 - 8) + 8))(v21, v155);
    v156 = OUTLINED_FUNCTION_35();
    v158 = String.ifNotEmpty.getter(v156, v157);
    v160 = v159;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443A50, &qword_1CA986840);
  v161 = swift_initStackObject();
  v162 = 0;
  *(v161 + 16) = xmmword_1CA97EDF0;
  *(v161 + 32) = v136;
  *(v161 + 40) = v143;
  v163 = v161 + 40;
  *(v161 + 48) = v158;
  *(v161 + 56) = v160;
  v164 = MEMORY[0x1E69E7CC0];
  v165 = v559;
LABEL_14:
  v166 = (v163 + 16 * v162);
  while (++v162 != 3)
  {
    v167 = v166 + 2;
    v168 = *v166;
    v166 += 2;
    if (v168)
    {
      v169 = *(v167 - 3);
      sub_1CA94C218();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v172 = v164[2];
        OUTLINED_FUNCTION_21();
        sub_1CA26DADC();
        v164 = v173;
      }

      v160 = v164[2];
      v170 = v164[3];
      if (v160 >= v170 >> 1)
      {
        OUTLINED_FUNCTION_22_11(v170);
        sub_1CA26DADC();
        v164 = v174;
      }

      v164[2] = v160 + 1;
      v171 = &v164[2 * v160];
      v171[4] = v169;
      v171[5] = v168;
      goto LABEL_14;
    }
  }

  swift_setDeallocating();
  sub_1CA32E2E4();
  v580 = v164;
  v175 = OUTLINED_FUNCTION_73_4();
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(v175, v176);
  OUTLINED_FUNCTION_35_7(&qword_1EC441B20);
  OUTLINED_FUNCTION_75_2();
  OUTLINED_FUNCTION_78_2();
  v178 = OUTLINED_FUNCTION_73_4();
  String.ifNotEmpty.getter(v178, v179);
  OUTLINED_FUNCTION_5_0();

  if (v164)
  {
    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_76_3();
    OUTLINED_FUNCTION_14_2();
    v164 = &qword_1EC443E20;
    sub_1CA2E5ACC();
    OUTLINED_FUNCTION_81_2(v180);
    v177 = v539;
    if (v182)
    {
      OUTLINED_FUNCTION_18(v181);
      sub_1CA2E5ACC();
      v160 = v515;
    }

    OUTLINED_FUNCTION_16_15();
  }

  else
  {
    v160 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_87_2();
  }

  OUTLINED_FUNCTION_67_3();
  sub_1CA94A1B8();
  sub_1CA94A308();
  OUTLINED_FUNCTION_5_0();
  v183 = v113;
  v184 = v552;
  v113 = v538;
  (v177)(v183, v552);
  if (!v164)
  {
    goto LABEL_33;
  }

  v185 = OUTLINED_FUNCTION_3_3();
  String.ifNotEmpty.getter(v185, v186);
  OUTLINED_FUNCTION_78_2();
  if (!&qword_1CA986220)
  {
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_73_4();
  v187 = OUTLINED_FUNCTION_76_3();

  v188 = v187;
  if ((OUTLINED_FUNCTION_97_3() & 1) == 0)
  {
    goto LABEL_210;
  }

LABEL_30:
  v189 = *(v160 + 24);
  if (*(v160 + 16) >= v189 >> 1)
  {
    OUTLINED_FUNCTION_18(v189);
    sub_1CA2E5ACC();
    v160 = v518;
  }

  OUTLINED_FUNCTION_16_15();
LABEL_33:
  v190 = *(sub_1CA94A1A8() + 16);
  v191 = v561;
  if (v190)
  {
    v191 = v561 + 2;
    v192 = v561[2];
    v193 = *(v561 + 80);
    OUTLINED_FUNCTION_68_0();
    v537 = v194;
    v196 = v194 + v195;
    v197 = v191[7];
    v572 = (v191 - 1);
    v198 = v571;
    v561 = v191;
    v558 = v192;
    v556 = v197;
    do
    {
      (v192)(v198, v196, v165);
      sub_1CA94B1F8();
      if (v199)
      {
        v177 = v199;
        OUTLINED_FUNCTION_85_3();
        if (v200)
        {
          v576 = v160;
          v201 = sub_1CA948968();
          v570 = &v533;
          v202 = OUTLINED_FUNCTION_1_0(v201);
          v573 = v203;
          v205 = *(v204 + 64);
          MEMORY[0x1EEE9AC00](v202);
          v569 = ((v205 + 15) & 0xFFFFFFFFFFFFFFF0);
          v206 = (&v533 - v569);
          OUTLINED_FUNCTION_53_6();
          v207 = sub_1CA948948();
          v568 = &v533;
          v208 = OUTLINED_FUNCTION_1_0(v207);
          v210 = *(v209 + 64);
          MEMORY[0x1EEE9AC00](v208);
          OUTLINED_FUNCTION_6_0();
          (*(v211 + 104))(v213 - v212, *MEMORY[0x1E6968740]);
          v214 = sub_1CA948938();
          v215 = OUTLINED_FUNCTION_1_0(v214);
          v217 = *(v216 + 64);
          MEMORY[0x1EEE9AC00](v215);
          OUTLINED_FUNCTION_3_25();
          (*(v218 + 104))(v160, *MEMORY[0x1E6968738]);
          sub_1CA948958();
          v219 = OUTLINED_FUNCTION_25_0();
          v160 = sub_1CA25B3D0(v219, &qword_1EC446AE0, 0x1E696AAB0);
          v567 = &v533;
          MEMORY[0x1EEE9AC00](v160);
          v220 = v573[2];
          v221 = (&v533 - v569);
          v568 = v206;
          v569 = v201;
          v220(v221, v206, v201);
          v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444A90, &qword_1CA9827C0);
          OUTLINED_FUNCTION_18_0(v222);
          v224 = *(v223 + 64);
          OUTLINED_FUNCTION_29();
          MEMORY[0x1EEE9AC00](v225);
          OUTLINED_FUNCTION_62_3();
          sub_1CA948BA8();
          OUTLINED_FUNCTION_46();
          __swift_storeEnumTagSinglePayload(v226, v227, v228, v229);
          sub_1CA94C218();
          OUTLINED_FUNCTION_116_0();
          v230 = v575;
          v231 = sub_1CA94CDD8();
          if (v230)
          {

            OUTLINED_FUNCTION_100(&a12);
            v232 = OUTLINED_FUNCTION_116_0();
            v234 = sub_1CA40B50C(v232, v233, &selRef_initWithString_);
            v235 = OUTLINED_FUNCTION_47_7();
            v236(v235);
            v575 = 0;
          }

          else
          {
            v234 = v231;
            v575 = 0;
            v240 = OUTLINED_FUNCTION_47_7();
            v241(v240);

            OUTLINED_FUNCTION_100(&a12);
          }

          OUTLINED_FUNCTION_100(&a15);
          v198 = v571;
          v242 = v571;
          sub_1CA94B238();
          OUTLINED_FUNCTION_69_1();
          v177 = v234;
          v243 = OUTLINED_FUNCTION_98_3();
          v165 = v559;
          if ((v243 & 1) == 0)
          {
            OUTLINED_FUNCTION_7_18();
            v160 = v249;
          }

          v245 = *(v160 + 16);
          v244 = *(v160 + 24);
          if (v245 >= v244 >> 1)
          {
            OUTLINED_FUNCTION_22_11(v244);
            sub_1CA2E5ACC();
            v160 = v250;
          }

          OUTLINED_FUNCTION_38_1(&a17);
          v246 = OUTLINED_FUNCTION_204();
          v247(v246);
          *(v160 + 16) = v245 + 1;
          v248 = (v160 + 24 * v245);
          v248[4] = v201;
          v248[5] = v242;
          v248[6] = v177;
          v191 = v561;
          v192 = v558;
          v197 = v556;
        }

        else
        {

          OUTLINED_FUNCTION_38_1(&a17);
          v198 = v571;
          v238 = OUTLINED_FUNCTION_204();
          v239(v238);
        }
      }

      else
      {
        OUTLINED_FUNCTION_38_1(&a17);
        v237(v198, v165);
      }

      v196 += v197;
      --v190;
    }

    while (v190);

    v184 = v552;
    v113 = v538;
    OUTLINED_FUNCTION_87_2();
  }

  else
  {
  }

  v251 = v544;
  OUTLINED_FUNCTION_67_3();
  sub_1CA94A1B8();
  sub_1CA94A328();
  OUTLINED_FUNCTION_5_0();
  (v177)(v251, v184);
  v252 = v565;
  if (v191)
  {
    v253 = OUTLINED_FUNCTION_3_3();
    String.ifNotEmpty.getter(v253, v254);
    OUTLINED_FUNCTION_1_2();

    if (v251)
    {
      OUTLINED_FUNCTION_52_0();
      v191 = OUTLINED_FUNCTION_76_3();

      sub_1CA94C438();
      if (qword_1EDB9F5F0 != -1)
      {
        OUTLINED_FUNCTION_0_17();
        swift_once();
      }

      OUTLINED_FUNCTION_134();
      v255 = sub_1CA94C368();
      OUTLINED_FUNCTION_134();
      v251 = sub_1CA94C368();

      v257 = OUTLINED_FUNCTION_96(v256, sel_localizedStringForKey_value_table_);

      sub_1CA94C3A8();
      OUTLINED_FUNCTION_1_2();

      v258 = v191;
      if ((OUTLINED_FUNCTION_97_3() & 1) == 0)
      {
        OUTLINED_FUNCTION_7_18();
        v160 = v519;
      }

      v177 = *(v160 + 16);
      v259 = *(v160 + 24);
      if (v177 >= v259 >> 1)
      {
        OUTLINED_FUNCTION_22_11(v259);
        sub_1CA2E5ACC();
        v160 = v520;
      }

      OUTLINED_FUNCTION_72_2();
      OUTLINED_FUNCTION_87_2();
    }
  }

  v260 = v545;
  OUTLINED_FUNCTION_67_3();
  sub_1CA94A1B8();
  sub_1CA94A318();
  v261 = OUTLINED_FUNCTION_92_2();
  (v177)(v261);
  if (v251)
  {
    String.ifNotEmpty.getter(v191, v251);
    OUTLINED_FUNCTION_69_1();

    if (v260)
    {
      sub_1CA94C438();
      OUTLINED_FUNCTION_70_0();
      if (qword_1EDB9F5F0 != -1)
      {
        OUTLINED_FUNCTION_0_17();
        swift_once();
      }

      OUTLINED_FUNCTION_69();
      v160 = sub_1CA94C368();
      OUTLINED_FUNCTION_69();
      sub_1CA94C368();
      v262 = OUTLINED_FUNCTION_77_0();
      v177 = OUTLINED_FUNCTION_26_11(v262, sel_localizedStringForKey_value_table_);

      sub_1CA94C3A8();
      OUTLINED_FUNCTION_59();

      sub_1CA25B3D0(0, &qword_1EC446AE0, 0x1E696AAB0);
      v263 = OUTLINED_FUNCTION_23();
      sub_1CA40B50C(v263, v264, v265);
      if ((OUTLINED_FUNCTION_46_6() & 1) == 0)
      {
        OUTLINED_FUNCTION_7_18();
        v160 = v521;
      }

      OUTLINED_FUNCTION_19_9();
      if (v182)
      {
        OUTLINED_FUNCTION_18(v266);
        sub_1CA2E5ACC();
        v160 = v522;
      }

      OUTLINED_FUNCTION_11_17();
      OUTLINED_FUNCTION_87_2();
    }
  }

  v267 = v546;
  OUTLINED_FUNCTION_67_3();
  sub_1CA94A1B8();
  sub_1CA94A358();
  v268 = OUTLINED_FUNCTION_92_2();
  (v177)(v268);
  if (v251)
  {
    String.ifNotEmpty.getter(v191, v251);
    OUTLINED_FUNCTION_69_1();

    OUTLINED_FUNCTION_91_3();
    if (v267)
    {
      sub_1CA94C438();
      OUTLINED_FUNCTION_70_0();
      if (qword_1EDB9F5F0 != -1)
      {
        OUTLINED_FUNCTION_0_17();
        swift_once();
      }

      OUTLINED_FUNCTION_69();
      v160 = sub_1CA94C368();
      OUTLINED_FUNCTION_69();
      sub_1CA94C368();
      v269 = OUTLINED_FUNCTION_77_0();
      v270 = OUTLINED_FUNCTION_26_11(v269, sel_localizedStringForKey_value_table_);

      sub_1CA94C3A8();
      OUTLINED_FUNCTION_59();

      sub_1CA25B3D0(0, &qword_1EC446AE0, 0x1E696AAB0);
      v271 = OUTLINED_FUNCTION_23();
      sub_1CA40B50C(v271, v272, v273);
      if ((OUTLINED_FUNCTION_46_6() & 1) == 0)
      {
        OUTLINED_FUNCTION_7_18();
        v160 = v523;
      }

      OUTLINED_FUNCTION_19_9();
      if (v182)
      {
        OUTLINED_FUNCTION_18(v274);
        sub_1CA2E5ACC();
        v160 = v524;
      }

      OUTLINED_FUNCTION_11_17();
    }
  }

  else
  {
    OUTLINED_FUNCTION_91_3();
  }

  v275 = *(sub_1CA94A1C8() + 16);
  v276 = v555;
  v277 = v566;
  if (v275)
  {
    v575 = v574[2];
    v278 = *(v574 + 80);
    OUTLINED_FUNCTION_68_0();
    v539 = v279;
    v281 = v279 + v280;
    v573 = v282 + 9;
    v556 = v282 - 1;
    v570 = v282 + 10;
    v546 = v540 + 4;
    v545 = v540 + 2;
    v544 = v540 + 11;
    ++v540;
    v569 = (v541 + 32);
    v574 = v282;
    v572 = v282[7];
    v568 = (v542 + 104);
    v567 = (v542 + 8);
    LODWORD(v571) = *MEMORY[0x1E69DB220];
    v561 = (v541 + 8);
    v542 = v543 + 32;
    LODWORD(v559) = *MEMORY[0x1E69DB218];
    v543 += 8;
    LODWORD(v553) = *MEMORY[0x1E69DB208];
    LODWORD(v552) = *MEMORY[0x1E69DB200];
    LODWORD(v541) = *MEMORY[0x1E69DB1F8];
    LODWORD(v558) = *MEMORY[0x1E69DB0E0];
    v283 = v557;
    while (1)
    {
      v575(v277, v281, v252);
      v284 = OUTLINED_FUNCTION_21_12(&a18);
      v285(v284);
      OUTLINED_FUNCTION_64_4(&a16);
      if (v304)
      {
        break;
      }

      OUTLINED_FUNCTION_64_4(&v582);
      if (!v304)
      {
        OUTLINED_FUNCTION_64_4(&v579);
        if (!v304)
        {
          OUTLINED_FUNCTION_64_4(&v578);
          if (v304)
          {
            v576 = v160;
            v305 = OUTLINED_FUNCTION_21_12(&a15);
            v306(v305);
            OUTLINED_FUNCTION_38_1(&v577);
            v307 = v547;
            v308 = OUTLINED_FUNCTION_82();
            v309 = v548;
            v310(v308);
            OUTLINED_FUNCTION_38_1(&v576);
            v311(v113, v307, v309);
            OUTLINED_FUNCTION_38_1(&v575);
            v312(v113, v309);
            OUTLINED_FUNCTION_64_4(&v572);
            if (v304)
            {
              sub_1CA94C438();
              OUTLINED_FUNCTION_5_0();
              if (qword_1EDB9F5F0 != -1)
              {
                OUTLINED_FUNCTION_0_17();
                swift_once();
              }

              OUTLINED_FUNCTION_3_3();
              v160 = sub_1CA94C368();
              OUTLINED_FUNCTION_3_3();
              sub_1CA94C368();
              v313 = OUTLINED_FUNCTION_14_2();
              v314 = OUTLINED_FUNCTION_95_3(v313, sel_localizedStringForKey_value_table_);

              v315 = sub_1CA94C3A8();
              v317 = v316;

              sub_1CA25B3D0(0, &qword_1EC446AE0, 0x1E696AAB0);
              v318 = OUTLINED_FUNCTION_84_0();
              v320 = sub_1CA40B50C(v318, v319, &selRef_initWithString_);
              if ((OUTLINED_FUNCTION_98_3() & 1) == 0)
              {
                OUTLINED_FUNCTION_7_18();
                v160 = v351;
              }

              OUTLINED_FUNCTION_19_9();
              if (v182)
              {
                OUTLINED_FUNCTION_18(v321);
                sub_1CA2E5ACC();
                v160 = v352;
              }

              OUTLINED_FUNCTION_38_1(&v571);
              v322();
              *(v160 + 16) = v315;
              v323 = (v160 + 24 * v317);
              v323[4] = 0;
              v323[5] = 0;
              v323[6] = v320;
              v283 = v557;
LABEL_114:
              v277 = v566;
              goto LABEL_115;
            }

            v350 = *v540;
            (*v540)(v307, v309);
            v350(v113, v309);
LABEL_104:
            v277 = v566;
            v160 = v576;
            goto LABEL_115;
          }
        }
      }

      v324 = OUTLINED_FUNCTION_21_12(&v581);
      v325(v324);
LABEL_115:
      v281 += v572;
      if (!--v275)
      {
        goto LABEL_118;
      }
    }

    v576 = v160;
    v286 = OUTLINED_FUNCTION_21_12(&a15);
    v287(v286);
    OUTLINED_FUNCTION_38_1(&a14);
    v288 = OUTLINED_FUNCTION_3_3();
    v289(v288);
    v290 = v562;
    v291 = v283;
    sub_1CA94B6A8();
    OUTLINED_FUNCTION_38_1(&a13);
    v292 = v276;
    v293 = v563;
    v294 = v564;
    v295(v563, v558, v564);
    v296 = sub_1CA94AE98();
    v113 = v567;
    v297 = *v567;
    (*v567)(v293, v294);
    v297(v290, v294);
    if (v296)
    {
      v298 = [objc_opt_self() currentDevice];
      v299 = [v298 hasPairedAndSetUpWatch];

      OUTLINED_FUNCTION_91_3();
      if (v299)
      {
        v300 = v551;
        v283 = v557;
        sub_1CA94B688();
        v301 = v554;
        OUTLINED_FUNCTION_49(v300, 1, v554);
        v276 = v555;
        v252 = v565;
        v160 = v576;
        if (v304)
        {
          OUTLINED_FUNCTION_38_1(v583);
          v302 = OUTLINED_FUNCTION_52_0();
          v303(v302);
          sub_1CA27080C(v300, &qword_1EC445130, &unk_1CA986800);
        }

        else
        {
          OUTLINED_FUNCTION_38_1(&v573);
          v328 = v549;
          v329(v549, v300, v301);
          v330 = sub_1CA94B4A8();
          if (v330)
          {
            sub_1CA94C438();
            OUTLINED_FUNCTION_5_0();
            if (qword_1EDB9F5F0 != -1)
            {
              OUTLINED_FUNCTION_0_17();
              swift_once();
            }

            OUTLINED_FUNCTION_3_3();
            v331 = sub_1CA94C368();
            OUTLINED_FUNCTION_3_3();
            sub_1CA94C368();
            v332 = OUTLINED_FUNCTION_14_2();
            v333 = OUTLINED_FUNCTION_95_3(v332, sel_localizedStringForKey_value_table_);

            v334 = sub_1CA94C3A8();
            v336 = v335;

            sub_1CA25B3D0(0, &qword_1EC446AE0, 0x1E696AAB0);
            v337 = OUTLINED_FUNCTION_84_0();
            v339 = sub_1CA40B50C(v337, v338, &selRef_initWithString_);
            if ((OUTLINED_FUNCTION_98_3() & 1) == 0)
            {
              OUTLINED_FUNCTION_7_18();
              v331 = v353;
            }

            OUTLINED_FUNCTION_19_9();
            if (v182)
            {
              OUTLINED_FUNCTION_18(v340);
              sub_1CA2E5ACC();
              v341 = v354;
            }

            else
            {
              v341 = v331;
            }

            OUTLINED_FUNCTION_38_1(&v574);
            v342();
            OUTLINED_FUNCTION_38_1(v583);
            v343 = v557;
            v344(v557, v276);
            v341[2] = v334;
            v283 = v343;
            v160 = v341;
            v345 = &v341[3 * v336];
            v345[4] = 0;
            v345[5] = 0;
            v345[6] = v339;
          }

          else
          {
            OUTLINED_FUNCTION_38_1(&v574);
            v346 = OUTLINED_FUNCTION_3_3();
            v347(v346);
            OUTLINED_FUNCTION_38_1(v583);
            v283 = v557;
            v348 = OUTLINED_FUNCTION_52_0();
            v349(v348);
          }
        }

        goto LABEL_114;
      }

      OUTLINED_FUNCTION_38_1(v583);
      v283 = v557;
      v276 = v555;
      v327(v557, v555);
    }

    else
    {
      OUTLINED_FUNCTION_38_1(v583);
      v326(v291, v292);
      v276 = v292;
      v283 = v291;
      OUTLINED_FUNCTION_91_3();
    }

    v252 = v565;
    goto LABEL_104;
  }

LABEL_118:

  (*(v550 + 8))(v560, v534);
LABEL_196:
  OUTLINED_FUNCTION_36();
}

uint64_t sub_1CA40E248()
{
  v0 = sub_1CA948968();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = sub_1CA948948();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  (*(v7 + 104))(&v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E6968740]);
  v8 = sub_1CA948938();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  (*(v11 + 104))(&v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E6968738]);
  sub_1CA948958();
  v12 = sub_1CA25B3D0(0, &qword_1EC446AE0, 0x1E696AAB0);
  MEMORY[0x1EEE9AC00](v12);
  (*(v1 + 16))(&v20[-v3], &v20[-v3], v0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444A90, &qword_1CA9827C0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v20[-v15];
  v17 = sub_1CA948BA8();
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v17);
  sub_1CA94C218();
  v18 = sub_1CA94CDD8();
  (*(v1 + 8))(&v20[-v3], v0);
  return v18;
}

void DrawerAction.itemForInserting(homeID:)()
{
  OUTLINED_FUNCTION_37_0();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4445D0, &qword_1CA983080);
  OUTLINED_FUNCTION_18_0(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_71();
  v10 = sub_1CA94B1C8();
  v11 = OUTLINED_FUNCTION_1_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_6_0();
  v16 = sub_1CA407BB8();
  if (v16)
  {
    OUTLINED_FUNCTION_51_5();
    sub_1CA407B48(v0 + v17, v1);
    OUTLINED_FUNCTION_49(v1, 1, v10);
    if (v18)
    {
      sub_1CA27080C(v1, &qword_1EC4445D0, &qword_1CA983080);
    }

    else
    {
      v19 = OUTLINED_FUNCTION_38_7(v13);
      v20(v19);
      sub_1CA94B0F8();
      v21 = sub_1CA94C368();

      v22 = [v16 actionForAppIdentifier_];

      v23 = *(v13 + 8);
      v24 = OUTLINED_FUNCTION_194_0();
      v25(v24);
      if (v22)
      {

        v16 = v22;
      }
    }

    if (v3)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()))
      {
        v26 = sub_1CA94C368();
        v27 = [objc_allocWithZone(WFStringSubstitutableState) initWithValue_];

        v28 = v27;
        v29 = sub_1CA94C368();
        [v16 setParameterState:v28 forKey:v29];
      }
    }
  }

  *v5 = v16;
  OUTLINED_FUNCTION_36();
}

uint64_t DrawerAction.isFavorite.getter()
{
  OUTLINED_FUNCTION_20_13();
  v1 = *v0;
  v2 = v0[1];
  v3 = sub_1CA94C368();
  IsFavorite = WFActionIsFavorite(v3);

  return IsFavorite;
}

void DrawerAction.isFavorite.setter(char a1)
{
  OUTLINED_FUNCTION_20_13();
  v3 = *v2;
  v4 = v2[1];
  v5 = sub_1CA94C368();
  WFActionSetFavorite(v5, a1 & 1);
}

void (*DrawerAction.isFavorite.modify(uint64_t a1))(uint64_t *a1)
{
  OUTLINED_FUNCTION_20_13();
  v3 = v2[1];
  *a1 = *v2;
  *(a1 + 8) = v3;
  v4 = sub_1CA94C368();
  IsFavorite = WFActionIsFavorite(v4);

  *(a1 + 16) = IsFavorite;
  return sub_1CA40E8D4;
}

void sub_1CA40E8D4(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(a1 + 16);
  v4 = sub_1CA94C368();
  WFActionSetFavorite(v4, v3);
}

uint64_t DrawerAction.hash(into:)()
{
  OUTLINED_FUNCTION_20_13();
  v1 = *v0;
  v2 = v0[1];

  return sub_1CA94C458();
}

uint64_t static DrawerAction.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for DrawerAction(0) + 28);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  if (v5 == *v7 && v6 == v7[1])
  {
    return 1;
  }

  return sub_1CA94D7F8();
}

uint64_t DrawerAction.hashValue.getter()
{
  sub_1CA94D918();
  OUTLINED_FUNCTION_20_13();
  v1 = *v0;
  v2 = v0[1];
  sub_1CA94C458();
  return sub_1CA94D968();
}

uint64_t sub_1CA40EA50(uint64_t a1, uint64_t a2)
{
  sub_1CA94D918();
  v4 = (v2 + *(a2 + 28));
  v5 = *v4;
  v6 = v4[1];
  sub_1CA94C458();
  return sub_1CA94D968();
}

uint64_t sub_1CA40EA9C@<X0>(uint64_t *a1@<X8>)
{
  result = DrawerAction.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t DrawerActionSection.id.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1CA94C218();
  return OUTLINED_FUNCTION_23();
}

uint64_t DrawerActionSection.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t DrawerActionSection.localizedTitle.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1CA94C218();
  return OUTLINED_FUNCTION_23();
}

uint64_t DrawerActionSection.localizedTitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t DrawerActionSection.bundleIdentifier.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_1CA94C218();
  return OUTLINED_FUNCTION_23();
}

uint64_t DrawerActionSection.bundleIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t DrawerActionSection.actions.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

void __swiftcall DrawerActionSection.init(id:localizedTitle:bundleIdentifier:actions:)(WorkflowKit::DrawerActionSection *__return_ptr retstr, Swift::String id, Swift::String_optional localizedTitle, Swift::String_optional bundleIdentifier, Swift::OpaquePointer actions)
{
  retstr->id = id;
  retstr->localizedTitle = localizedTitle;
  retstr->bundleIdentifier = bundleIdentifier;
  retstr->actions = actions;
}

void static DrawerActionSection.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_37_0();
  v43 = v21;
  v22 = v19[2];
  v24 = v19[3];
  v23 = v19[4];
  v26 = v19[5];
  v25 = v19[6];
  v28 = v20[2];
  v27 = v20[3];
  v30 = v20[4];
  v29 = v20[5];
  v31 = v20[6];
  v32 = *v19 == *v20 && v19[1] == v20[1];
  if (!v32 && (sub_1CA94D7F8() & 1) == 0)
  {
    goto LABEL_26;
  }

  if (v24)
  {
    if (!v27)
    {
      goto LABEL_26;
    }

    if (v22 != v28 || v24 != v27)
    {
      OUTLINED_FUNCTION_204();
      if ((sub_1CA94D7F8() & 1) == 0)
      {
        goto LABEL_26;
      }
    }
  }

  else if (v27)
  {
    goto LABEL_26;
  }

  if (v26)
  {
    if (v29)
    {
      if (v23 == v30 && v26 == v29)
      {
        goto LABEL_22;
      }

      OUTLINED_FUNCTION_69();
      if (sub_1CA94D7F8())
      {
        goto LABEL_22;
      }
    }

LABEL_26:
    OUTLINED_FUNCTION_36();
    return;
  }

  if (v29)
  {
    goto LABEL_26;
  }

LABEL_22:
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_36();

  sub_1CA2B652C(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, v18, v43);
}

void DrawerActionSection.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  sub_1CA94C458();
  if (v4)
  {
    sub_1CA94D938();
    sub_1CA94C458();
    if (v6)
    {
LABEL_3:
      sub_1CA94D938();
      sub_1CA94C458();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1CA94D938();
    if (v6)
    {
      goto LABEL_3;
    }
  }

  sub_1CA94D938();
LABEL_6:

  sub_1CA2BB848();
}

uint64_t DrawerActionSection.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  sub_1CA94D918();
  sub_1CA94C458();
  sub_1CA94D938();
  if (v4)
  {
    sub_1CA94C458();
  }

  sub_1CA94D938();
  if (v6)
  {
    sub_1CA94C458();
  }

  sub_1CA2BB848();
  return sub_1CA94D968();
}

uint64_t sub_1CA40EF58()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 1);
  v5 = *(v0 + 2);
  v6 = v0[6];
  sub_1CA94D918();
  DrawerActionSection.hash(into:)();
  return sub_1CA94D968();
}

uint64_t sub_1CA40EFB8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CA40F000(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_52(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1CA40F058(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_1CA94C3A8();
    OUTLINED_FUNCTION_69_1();
  }

  return OUTLINED_FUNCTION_23();
}

unint64_t sub_1CA40F0FC()
{
  result = qword_1EC445140;
  if (!qword_1EC445140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC445140);
  }

  return result;
}

void sub_1CA40F178()
{
  type metadata accessor for DrawerAction.DrawerActionStorage(319);
  if (v0 <= 0x3F)
  {
    sub_1CA40F21C();
    if (v1 <= 0x3F)
    {
      sub_1CA40F280();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1CA40F21C()
{
  if (!qword_1EC441A20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC445560, &qword_1CA9869A8);
    v0 = sub_1CA94D098();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC441A20);
    }
  }
}

void sub_1CA40F280()
{
  if (!qword_1EC441CF0)
  {
    sub_1CA94B1C8();
    v0 = sub_1CA94D098();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC441CF0);
    }
  }
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1CA40F314(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1CA40F354(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1CA40F3B8()
{
  result = sub_1CA25B3D0(319, &qword_1EDB9F5D0, off_1E836DCF8);
  if (v1 <= 0x3F)
  {
    result = sub_1CA94A288();
    if (v2 <= 0x3F)
    {
      result = sub_1CA94A4E8();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1CA40F450(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4445D0, &qword_1CA983080);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_47_7()
{
  v1 = *(*(v0 - 264) + 8);
  result = *(v0 - 304);
  v3 = *(v0 - 296);
  return result;
}

uint64_t OUTLINED_FUNCTION_76_3()
{
  v2 = *(v0 - 432);

  return sub_1CA40E248();
}

uint64_t sub_1CA40F53C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    type metadata accessor for DrawerSearchIndex.SearchResult.Match.FuzzyMatch();
    result = sub_1CA94D098();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1CA40F614(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  result = swift_getAssociatedTypeWitness();
  v9 = *(*(result - 8) + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(*(result - 8) + 84);
  }

  v11 = *(*(result - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v10 >= a2)
  {
LABEL_26:
    if (v9 < 0x7FFFFFFF)
    {
      v19 = *(((a1 + v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }

    else
    {

      return __swift_getEnumTagSinglePayload(a1, v9, result);
    }
  }

  else
  {
    v12 = ((((((((((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 24;
    v13 = v12 & 0xFFFFFFF8;
    if ((v12 & 0xFFFFFFF8) != 0)
    {
      v14 = 2;
    }

    else
    {
      v14 = a2 - v10 + 1;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    switch(v16)
    {
      case 1:
        v17 = *(a1 + v12);
        if (!v17)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v17 = *(a1 + v12);
        if (!v17)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v17 = *(a1 + v12);
        if (!v17)
        {
          goto LABEL_26;
        }

LABEL_22:
        v18 = v17 - 1;
        if (v13)
        {
          v18 = 0;
          LODWORD(v13) = *a1;
        }

        result = v10 + (v13 | v18) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1CA40F7C4(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(*(AssociatedTypeWitness - 8) + 84);
  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(*(AssociatedTypeWitness - 8) + 84);
  }

  v12 = *(*(AssociatedTypeWitness - 8) + 64);
  v13 = ((((((((((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v11 >= a3)
  {
    v16 = 0;
  }

  else
  {
    if (((((((((((v12 + 7) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFE8)
    {
      v14 = a3 - v11 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }
  }

  if (a2 <= v11)
  {
    switch(v16)
    {
      case 1:
        *(a1 + v13) = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *(a1 + v13) = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *(a1 + v13) = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v10 < 0x7FFFFFFF)
          {
            v19 = ((a1 + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v19[2] = 0;
              v19[3] = 0;
              *v19 = a2 & 0x7FFFFFFF;
              v19[1] = 0;
            }

            else
            {
              v19[3] = (a2 - 1);
            }
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v10, AssociatedTypeWitness);
          }
        }

        break;
    }
  }

  else
  {
    if (((((((((((v12 + 7) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFE8)
    {
      v17 = a2 - v11;
    }

    else
    {
      v17 = 1;
    }

    if (((((((((((v12 + 7) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFE8)
    {
      v18 = ~v11 + a2;
      bzero(a1, v13);
      *a1 = v18;
    }

    switch(v16)
    {
      case 1:
        *(a1 + v13) = v17;
        break;
      case 2:
        *(a1 + v13) = v17;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *(a1 + v13) = v17;
        break;
      default:
        return;
    }
  }
}