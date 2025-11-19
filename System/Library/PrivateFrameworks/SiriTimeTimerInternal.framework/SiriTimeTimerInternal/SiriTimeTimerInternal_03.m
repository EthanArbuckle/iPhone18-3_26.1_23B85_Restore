uint64_t sub_26938A3AC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_269344B10;

  return sub_2693882EC(v2, v3, v4);
}

uint64_t sub_26938A460()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_269344F9C;

  return sub_269387604(v2, v3, v4);
}

unint64_t sub_26938A514(unint64_t result)
{
  if (result != 10)
  {
    return sub_26934ADAC(result);
  }

  return result;
}

uint64_t sub_26938A524()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_269344F9C;

  return sub_2693870D0(v2, v3, v4);
}

uint64_t sub_26938A5F8()
{
  v20 = v0;
  if (qword_280E262C8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = sub_2693B3620();
  __swift_project_value_buffer(v2, qword_280E262D0);
  v3 = v1;
  v4 = sub_2693B3610();
  v5 = sub_2693B39B0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 40);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315138;
    v9 = v6;
    v10 = [v9 description];
    v11 = sub_2693B3750();
    v13 = v12;

    v14 = sub_26934CA40(v11, v13, &v19);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_26933F000, v4, v5, "confirm(intent:) %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x26D63A640](v8, -1, -1);
    MEMORY[0x26D63A640](v7, -1, -1);
  }

  v15 = [objc_allocWithZone(type metadata accessor for CreateTimerIntentResponse()) init];
  v16 = OBJC_IVAR___CreateTimerIntentResponse_code;
  swift_beginAccess();
  *&v15[v16] = 4;
  [v15 setUserActivity_];
  v17 = *(v0 + 8);

  return v17(v15);
}

char *sub_26938A81C(void *a1, unint64_t *a2)
{
  v2 = *a2;
  if (!a1)
  {
    if (*a2 > 8)
    {
      if (v2 != 9)
      {
        if (v2 == 10)
        {
          v10 = [objc_allocWithZone(type metadata accessor for CreateTimerIntentResponse()) init];
          v22 = OBJC_IVAR___CreateTimerIntentResponse_code;
          swift_beginAccess();
          *&v10[v22] = 5;
          [v10 setUserActivity_];
          if (qword_280E262C8 != -1)
          {
            swift_once();
          }

          v23 = sub_2693B3620();
          __swift_project_value_buffer(v23, qword_280E262D0);
          v24 = sub_2693B3610();
          v25 = sub_2693B39A0();
          if (!os_log_type_enabled(v24, v25))
          {
            goto LABEL_25;
          }

          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          *v26 = 136315138;
          v40 = v27;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D3F8, &qword_2693B6820);
          v28 = sub_2693B3760();
          v30 = sub_26934CA40(v28, v29, &v40);

          *(v26 + 4) = v30;
          _os_log_impl(&dword_26933F000, v24, v25, "Failed to handle create timer intent with unknown error: %s", v26, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v27);
          MEMORY[0x26D63A640](v27, -1, -1);
          v31 = v26;
          goto LABEL_24;
        }

        goto LABEL_18;
      }

LABEL_19:
      v10 = [objc_allocWithZone(type metadata accessor for CreateTimerIntentResponse()) init];
      v20 = OBJC_IVAR___CreateTimerIntentResponse_code;
      swift_beginAccess();
      v21 = 101;
      goto LABEL_20;
    }

LABEL_10:
    if (v2 == 3)
    {
      v10 = [objc_allocWithZone(type metadata accessor for CreateTimerIntentResponse()) init];
      v20 = OBJC_IVAR___CreateTimerIntentResponse_code;
      swift_beginAccess();
      v21 = 100;
LABEL_20:
      *&v10[v20] = v21;
      [v10 setUserActivity_];
      if (qword_280E262C8 != -1)
      {
        swift_once();
      }

      v32 = sub_2693B3620();
      __swift_project_value_buffer(v32, qword_280E262D0);
      sub_26934AD9C(v2);
      v24 = sub_2693B3610();
      v33 = sub_2693B39A0();
      sub_26938A514(v2);
      if (!os_log_type_enabled(v24, v33))
      {
        goto LABEL_25;
      }

      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v40 = v35;
      *v34 = 136315138;
      sub_26934AD9C(v2);
      v36 = sub_2693B3760();
      v38 = sub_26934CA40(v36, v37, &v40);

      *(v34 + 4) = v38;
      _os_log_impl(&dword_26933F000, v24, v33, "Failed to handle create timer intent with error response: %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x26D63A640](v35, -1, -1);
      v31 = v34;
LABEL_24:
      MEMORY[0x26D63A640](v31, -1, -1);
LABEL_25:

      return v10;
    }

LABEL_18:
    v10 = [objc_allocWithZone(type metadata accessor for CreateTimerIntentResponse()) init];
    v20 = OBJC_IVAR___CreateTimerIntentResponse_code;
    swift_beginAccess();
    v21 = 5;
    goto LABEL_20;
  }

  if (*a2 <= 8)
  {
    goto LABEL_10;
  }

  if (v2 == 9)
  {
    goto LABEL_19;
  }

  if (v2 != 10)
  {
    goto LABEL_18;
  }

  v4 = objc_allocWithZone(type metadata accessor for CreateTimerIntentResponse());
  v5 = a1;
  v6 = [v4 init];
  v7 = OBJC_IVAR___CreateTimerIntentResponse_code;
  swift_beginAccess();
  *&v6[v7] = 4;
  [v6 setUserActivity_];
  v8 = v6;
  [v8 setCreatedTimer_];
  if (qword_280E262C8 != -1)
  {
    swift_once();
  }

  v9 = sub_2693B3620();
  __swift_project_value_buffer(v9, qword_280E262D0);
  v10 = v8;
  v11 = sub_2693B3610();
  v12 = sub_2693B39B0();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v40 = v14;
    *v13 = 136315138;
    v15 = [v10 description];
    v16 = sub_2693B3750();
    v18 = v17;

    v19 = sub_26934CA40(v16, v18, &v40);

    *(v13 + 4) = v19;
    _os_log_impl(&dword_26933F000, v11, v12, "Successfully handled create timer intent with response %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x26D63A640](v14, -1, -1);
    MEMORY[0x26D63A640](v13, -1, -1);
  }

  else
  {
  }

  return v10;
}

BOOL sub_26938AE08(void *a1, unint64_t a2)
{
  v4 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_15:
    v5 = sub_2693B3C70();
  }

  else
  {
    v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  do
  {
    v7 = v6;
    if (v5 == v6)
    {
      break;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x26D639EB0](v6, a2);
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        goto LABEL_14;
      }

      v8 = *(a2 + 8 * v6 + 32);
    }

    v9 = v8;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v10 = sub_269388940(a1);

    v6 = v7 + 1;
  }

  while ((v10 & 1) == 0);
  return v5 != v7;
}

uint64_t sub_26938AEE0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_269344F9C;

  return sub_269385F24(v2, v3, v4);
}

_OWORD *sub_26938AF94(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_26938AFAC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_26938B010(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_26938B020()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_269344F9C;

  return sub_269383264(v2, v3, v4);
}

uint64_t sub_26938B0D4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_26938B148()
{
  sub_2693B3DB0();
  sub_2693B31E0();
  return sub_2693B3DD0();
}

uint64_t sub_26938B1E4()
{
  sub_2693B3DB0();
  v1 = *v0;
  sub_26938B140();
  return sub_2693B3DD0();
}

uint64_t sub_26938B268(void *a1, void *a2)
{
  v4 = sub_2693B3170();
  v68 = *(v4 - 8);
  v69 = v4;
  v5 = *(v68 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v64 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v63 = &v62 - v8;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D490, &unk_2693B6970);
  v9 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66);
  v67 = &v62 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D498, &unk_2693B7D80);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v65 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v62 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v62 - v18;
  v20 = [a1 state];
  if (v20 == 3)
  {
    v21 = 2;
  }

  else
  {
    v21 = 1;
  }

  v22 = 3;
  if (v20 == 1)
  {
    v23 = 3;
  }

  else
  {
    v23 = v21;
  }

  v24 = [a2 state];
  if (v24 == 3)
  {
    v25 = 2;
  }

  else
  {
    v25 = 1;
  }

  if (v24 != 1)
  {
    v22 = v25;
  }

  if ([a2 type] == 2 || (v26 = objc_msgSend(a2, sel_sound), v27 = objc_msgSend(v26, sel_isSilent), v26, (v27 & 1) == 0))
  {
    if ([a2 type] != 2)
    {
      if (v22 < v23)
      {
        return -1;
      }

      goto LABEL_22;
    }
  }

  if ([a1 type] != 2)
  {
    v28 = [a1 sound];
    v29 = [v28 isSilent];

    if (v29)
    {
      v30 = -1;
      goto LABEL_19;
    }
  }

  v30 = -1;
  if ([a1 type] == 2)
  {
LABEL_19:
    if (v22 < v23)
    {
      return v30;
    }

LABEL_22:
    if (v23 < v22)
    {
      return 1;
    }

    if ([a1 state] != 3)
    {
      v35 = [a1 lastModifiedDate];
      if (v35)
      {
        v36 = v35;
        sub_2693B3150();

        v37 = v68;
        v38 = *(v68 + 56);
        v39 = v19;
        v40 = 0;
      }

      else
      {
        v37 = v68;
        v38 = *(v68 + 56);
        v39 = v19;
        v40 = 1;
      }

      v50 = v69;
      v38(v39, v40, 1, v69);
      v51 = [a2 lastModifiedDate];
      if (v51)
      {
        v52 = v51;
        sub_2693B3150();

        v53 = 0;
      }

      else
      {
        v53 = 1;
      }

      v38(v17, v53, 1, v50);
      v54 = v67;
      v55 = *(v66 + 48);
      sub_26938B8B8(v19, v67);
      sub_26938B8B8(v17, v54 + v55);
      v56 = *(v37 + 48);
      if (v56(v54, 1, v50) == 1)
      {
        if (v56(v54 + v55, 1, v50) != 1)
        {
          sub_26934B4F0(v54 + v55, &qword_28030D498, &unk_2693B7D80);
          sub_26934B4F0(v54, &qword_28030D498, &unk_2693B7D80);
          return 1;
        }

        sub_26934B4F0(v54, &qword_28030D490, &unk_2693B6970);
      }

      else
      {
        v57 = v65;
        sub_26938B928(v54, v65);
        if (v56(v54 + v55, 1, v50) == 1)
        {
          (*(v37 + 8))(v57, v50);
          sub_26934B4F0(v54, &qword_28030D498, &unk_2693B7D80);
          return -1;
        }

        v58 = *(v37 + 32);
        v59 = v63;
        v58(v63, v57, v50);
        v60 = v64;
        v58(v64, v54 + v55, v50);
        v30 = sub_2693B3160();
        v61 = *(v37 + 8);
        v61(v60, v50);
        v61(v59, v50);
        sub_26934B4F0(v54, &qword_28030D498, &unk_2693B7D80);
        if (v30)
        {
          return v30;
        }
      }
    }

    [a1 remainingTime];
    v32 = v31;
    [a2 remainingTime];
    if (v32 >= v33)
    {
      [a1 remainingTime];
      v42 = v41;
      [a2 remainingTime];
      if (v43 < v42)
      {
        return 1;
      }

      [a1 duration];
      v45 = v44;
      [a2 duration];
      if (v45 >= v46)
      {
        [a1 duration];
        v48 = v47;
        [a2 duration];
        return v49 < v48;
      }
    }

    return -1;
  }

  return v30;
}

uint64_t sub_26938B8B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D498, &unk_2693B7D80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26938B928(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D498, &unk_2693B7D80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26938B998(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v36 = v1;
  v37 = result;
  v39 = v5;
  while (1)
  {
    v9 = v8;
    if (!v4)
    {
      break;
    }

LABEL_10:
    v11 = (v7 << 9) | (8 * __clz(__rbit64(v4)));
    v12 = result;
    v13 = *(*(result + 56) + v11);
    v14 = *(*(result + 48) + v11);

    v15 = sub_26939939C(v14);

    v16 = v15 >> 62;
    v44 = v15;
    if (v15 >> 62)
    {
      v17 = sub_2693B3C70();
    }

    else
    {
      v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v18 = v9 >> 62;
    if (v9 >> 62)
    {
      result = sub_2693B3C70();
    }

    else
    {
      result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v42 = v17;
    v19 = __OFADD__(result, v17);
    v20 = result + v17;
    if (v19)
    {
      goto LABEL_41;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (v18)
      {
        goto LABEL_22;
      }

      v21 = v9;
      v22 = v9 & 0xFFFFFFFFFFFFFF8;
      if (v20 <= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_24;
      }
    }

    else
    {
      if (v18)
      {
LABEL_22:
        sub_2693B3C70();
        goto LABEL_23;
      }

      v22 = v9 & 0xFFFFFFFFFFFFFF8;
    }

    v23 = *(v22 + 16);
LABEL_23:
    result = sub_2693B3BE0();
    v21 = result;
    v22 = result & 0xFFFFFFFFFFFFFF8;
LABEL_24:
    v24 = *(v22 + 16);
    v25 = *(v22 + 24);
    v41 = v21;
    if (v16)
    {
      v27 = v22;
      result = sub_2693B3C70();
      v22 = v27;
      v26 = result;
    }

    else
    {
      v26 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v4 &= v4 - 1;
    if (v26)
    {
      if (((v25 >> 1) - v24) < v42)
      {
        goto LABEL_43;
      }

      v28 = v22 + 8 * v24 + 32;
      v40 = v4;
      v38 = v22;
      if (v16)
      {
        if (v26 < 1)
        {
          goto LABEL_45;
        }

        sub_269353B24(&qword_28030D4F0, &qword_28030D4E8, &qword_2693B6A88);
        v29 = 0;
        v30 = v44;
        do
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D4E8, &qword_2693B6A88);
          v31 = sub_26936F748(v43, v29, v30);
          v33 = *v32;
          (v31)(v43, 0);
          *(v28 + 8 * v29++) = v33;
        }

        while (v26 != v29);
      }

      else
      {
        type metadata accessor for SiriTimer();
        swift_arrayInitWithCopy();
      }

      v8 = v41;
      v1 = v36;
      result = v37;
      v5 = v39;
      v4 = v40;
      if (v42 >= 1)
      {
        v34 = *(v38 + 16);
        v19 = __OFADD__(v34, v42);
        v35 = v34 + v42;
        if (v19)
        {
          goto LABEL_44;
        }

        *(v38 + 16) = v35;
      }
    }

    else
    {

      v8 = v41;
      v5 = v39;
      result = v12;
      if (v42 > 0)
      {
        goto LABEL_42;
      }
    }
  }

  while (1)
  {
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v10 >= v5)
    {

      return v8;
    }

    v4 = *(v1 + 8 * v10);
    ++v7;
    if (v4)
    {
      v7 = v10;
      goto LABEL_10;
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
  return result;
}

uint64_t sub_26938BD44(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 152) = a2;
  *(v4 + 160) = v3;
  *(v4 + 240) = a3;
  *(v4 + 144) = a1;
  v5 = sub_2693B3420();
  *(v4 + 168) = v5;
  v6 = *(v5 - 8);
  *(v4 + 176) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 184) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26938BE0C, 0, 0);
}

uint64_t sub_26938BE0C()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  sub_2693B3410();
  v4 = sub_2693B3400();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v5 = swift_task_alloc();
    v0[24] = v5;
    *v5 = v0;
    v5[1] = sub_26938BFCC;
    v6 = v0[20];

    return sub_269394214();
  }

  else
  {
    v8 = v0[20];
    v9 = qword_28030D540;
    v0[25] = qword_28030D540;
    swift_beginAccess();
    sub_26934489C(v8 + v9, (v0 + 7));
    v10 = __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
    v11 = sub_26939F3A4(&unk_2879EC558, &qword_28030D4F8, &qword_2693B6A90);
    v0[26] = v11;
    v12 = *v10;
    v13 = swift_task_alloc();
    v0[27] = v13;
    *v13 = v0;
    v13[1] = sub_26938C1D0;

    return sub_269366980(v11);
  }
}

uint64_t sub_26938BFCC()
{
  v1 = *(*v0 + 192);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_26938C0D4, 0, 0);
}

uint64_t sub_26938C0D4()
{
  v1 = v0[20];
  v2 = qword_28030D540;
  v0[25] = qword_28030D540;
  swift_beginAccess();
  sub_26934489C(v1 + v2, (v0 + 7));
  v3 = __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  v4 = sub_26939F3A4(&unk_2879EC558, &qword_28030D4F8, &qword_2693B6A90);
  v0[26] = v4;
  v5 = *v3;
  v6 = swift_task_alloc();
  v0[27] = v6;
  *v6 = v0;
  v6[1] = sub_26938C1D0;

  return sub_269366980(v4);
}

uint64_t sub_26938C1D0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 216);
  v6 = *v2;
  *(v4 + 224) = a1;
  *(v4 + 232) = v1;

  v7 = *(v3 + 208);

  if (v1)
  {
    v8 = sub_2693A0920;
  }

  else
  {
    v8 = sub_2693A08F4;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_26938C30C(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 152) = a2;
  *(v4 + 160) = v3;
  *(v4 + 240) = a3;
  *(v4 + 144) = a1;
  v5 = sub_2693B3420();
  *(v4 + 168) = v5;
  v6 = *(v5 - 8);
  *(v4 + 176) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 184) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26938C3D4, 0, 0);
}

uint64_t sub_26938C3D4()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  sub_2693B3410();
  v4 = sub_2693B3400();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v5 = swift_task_alloc();
    v0[24] = v5;
    *v5 = v0;
    v5[1] = sub_26938C594;
    v6 = v0[20];

    return sub_269394540();
  }

  else
  {
    v8 = v0[20];
    v9 = qword_28030D540;
    v0[25] = qword_28030D540;
    swift_beginAccess();
    sub_26934489C(v8 + v9, (v0 + 7));
    v10 = __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
    v11 = sub_26939F3A4(&unk_2879EC5C8, &qword_28030D4F8, &qword_2693B6A90);
    v0[26] = v11;
    v12 = *v10;
    v13 = swift_task_alloc();
    v0[27] = v13;
    *v13 = v0;
    v13[1] = sub_26938C1D0;

    return sub_269366980(v11);
  }
}

uint64_t sub_26938C594()
{
  v1 = *(*v0 + 192);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_26938C69C, 0, 0);
}

uint64_t sub_26938C69C()
{
  v1 = v0[20];
  v2 = qword_28030D540;
  v0[25] = qword_28030D540;
  swift_beginAccess();
  sub_26934489C(v1 + v2, (v0 + 7));
  v3 = __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  v4 = sub_26939F3A4(&unk_2879EC5C8, &qword_28030D4F8, &qword_2693B6A90);
  v0[26] = v4;
  v5 = *v3;
  v6 = swift_task_alloc();
  v0[27] = v6;
  *v6 = v0;
  v6[1] = sub_26938C1D0;

  return sub_269366980(v4);
}

uint64_t sub_26938C798(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 152) = a2;
  *(v4 + 160) = v3;
  *(v4 + 240) = a3;
  *(v4 + 144) = a1;
  v5 = sub_2693B3420();
  *(v4 + 168) = v5;
  v6 = *(v5 - 8);
  *(v4 + 176) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 184) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26938C860, 0, 0);
}

uint64_t sub_26938C860()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  sub_2693B3410();
  v4 = sub_2693B3400();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v5 = swift_task_alloc();
    v0[24] = v5;
    *v5 = v0;
    v5[1] = sub_26938CA20;
    v6 = v0[20];

    return sub_26939476C();
  }

  else
  {
    v8 = v0[20];
    v9 = qword_28030D540;
    v0[25] = qword_28030D540;
    swift_beginAccess();
    sub_26934489C(v8 + v9, (v0 + 7));
    v10 = __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
    v11 = sub_26939F3A4(&unk_2879EC608, &qword_28030D4F8, &qword_2693B6A90);
    v0[26] = v11;
    v12 = *v10;
    v13 = swift_task_alloc();
    v0[27] = v13;
    *v13 = v0;
    v13[1] = sub_26938C1D0;

    return sub_269366980(v11);
  }
}

uint64_t sub_26938CA20()
{
  v1 = *(*v0 + 192);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_26938CB28, 0, 0);
}

uint64_t sub_26938CB28()
{
  v1 = v0[20];
  v2 = qword_28030D540;
  v0[25] = qword_28030D540;
  swift_beginAccess();
  sub_26934489C(v1 + v2, (v0 + 7));
  v3 = __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  v4 = sub_26939F3A4(&unk_2879EC608, &qword_28030D4F8, &qword_2693B6A90);
  v0[26] = v4;
  v5 = *v3;
  v6 = swift_task_alloc();
  v0[27] = v6;
  *v6 = v0;
  v6[1] = sub_26938C1D0;

  return sub_269366980(v4);
}

uint64_t sub_26938CC24(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 152) = a2;
  *(v4 + 160) = v3;
  *(v4 + 240) = a3;
  *(v4 + 144) = a1;
  v5 = sub_2693B3420();
  *(v4 + 168) = v5;
  v6 = *(v5 - 8);
  *(v4 + 176) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 184) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26938CCEC, 0, 0);
}

uint64_t sub_26938CCEC()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  sub_2693B3410();
  v4 = sub_2693B3400();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v5 = swift_task_alloc();
    v0[24] = v5;
    *v5 = v0;
    v5[1] = sub_26938CEAC;
    v6 = v0[20];

    return sub_269394998();
  }

  else
  {
    v8 = v0[20];
    v9 = qword_28030D540;
    v0[25] = qword_28030D540;
    swift_beginAccess();
    sub_26934489C(v8 + v9, (v0 + 7));
    v10 = __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
    v11 = sub_26939F3A4(&unk_2879EC648, &qword_28030D4F8, &qword_2693B6A90);
    v0[26] = v11;
    v12 = *v10;
    v13 = swift_task_alloc();
    v0[27] = v13;
    *v13 = v0;
    v13[1] = sub_26938C1D0;

    return sub_269366980(v11);
  }
}

uint64_t sub_26938CEAC()
{
  v1 = *(*v0 + 192);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_26938CFB4, 0, 0);
}

uint64_t sub_26938CFB4()
{
  v1 = v0[20];
  v2 = qword_28030D540;
  v0[25] = qword_28030D540;
  swift_beginAccess();
  sub_26934489C(v1 + v2, (v0 + 7));
  v3 = __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  v4 = sub_26939F3A4(&unk_2879EC648, &qword_28030D4F8, &qword_2693B6A90);
  v0[26] = v4;
  v5 = *v3;
  v6 = swift_task_alloc();
  v0[27] = v6;
  *v6 = v0;
  v6[1] = sub_26938C1D0;

  return sub_269366980(v4);
}

uint64_t sub_26938D0B0(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 152) = a2;
  *(v4 + 160) = v3;
  *(v4 + 240) = a3;
  *(v4 + 144) = a1;
  v5 = sub_2693B3420();
  *(v4 + 168) = v5;
  v6 = *(v5 - 8);
  *(v4 + 176) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 184) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26938D178, 0, 0);
}

uint64_t sub_26938D178()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  sub_2693B3410();
  v4 = sub_2693B3400();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v5 = swift_task_alloc();
    v0[24] = v5;
    *v5 = v0;
    v5[1] = sub_26938D338;
    v6 = v0[20];

    return sub_269394BC4();
  }

  else
  {
    v8 = v0[20];
    v9 = qword_28030D540;
    v0[25] = qword_28030D540;
    swift_beginAccess();
    sub_26934489C(v8 + v9, (v0 + 7));
    v10 = __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
    v11 = sub_26939F3A4(&unk_2879EC688, &qword_28030D4F8, &qword_2693B6A90);
    v0[26] = v11;
    v12 = *v10;
    v13 = swift_task_alloc();
    v0[27] = v13;
    *v13 = v0;
    v13[1] = sub_26938C1D0;

    return sub_269366980(v11);
  }
}

uint64_t sub_26938D338()
{
  v1 = *(*v0 + 192);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_26938D440, 0, 0);
}

uint64_t sub_26938D440()
{
  v1 = v0[20];
  v2 = qword_28030D540;
  v0[25] = qword_28030D540;
  swift_beginAccess();
  sub_26934489C(v1 + v2, (v0 + 7));
  v3 = __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  v4 = sub_26939F3A4(&unk_2879EC688, &qword_28030D4F8, &qword_2693B6A90);
  v0[26] = v4;
  v5 = *v3;
  v6 = swift_task_alloc();
  v0[27] = v6;
  *v6 = v0;
  v6[1] = sub_26938C1D0;

  return sub_269366980(v4);
}

uint64_t sub_26938D53C(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 152) = a2;
  *(v4 + 160) = v3;
  *(v4 + 240) = a3;
  *(v4 + 144) = a1;
  v5 = sub_2693B3420();
  *(v4 + 168) = v5;
  v6 = *(v5 - 8);
  *(v4 + 176) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 184) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26938D604, 0, 0);
}

uint64_t sub_26938D604()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  sub_2693B3410();
  v4 = sub_2693B3400();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v5 = swift_task_alloc();
    v0[24] = v5;
    *v5 = v0;
    v5[1] = sub_26938D7C4;
    v6 = v0[20];

    return sub_269394DF0();
  }

  else
  {
    v8 = v0[20];
    v9 = qword_28030D540;
    v0[25] = qword_28030D540;
    swift_beginAccess();
    sub_26934489C(v8 + v9, (v0 + 7));
    v10 = __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
    v11 = sub_26939F3A4(&unk_2879EC6C8, &qword_28030D4F8, &qword_2693B6A90);
    v0[26] = v11;
    v12 = *v10;
    v13 = swift_task_alloc();
    v0[27] = v13;
    *v13 = v0;
    v13[1] = sub_26938C1D0;

    return sub_269366980(v11);
  }
}

uint64_t sub_26938D7C4()
{
  v1 = *(*v0 + 192);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_26938D8CC, 0, 0);
}

uint64_t sub_26938D8CC()
{
  v1 = v0[20];
  v2 = qword_28030D540;
  v0[25] = qword_28030D540;
  swift_beginAccess();
  sub_26934489C(v1 + v2, (v0 + 7));
  v3 = __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  v4 = sub_26939F3A4(&unk_2879EC6C8, &qword_28030D4F8, &qword_2693B6A90);
  v0[26] = v4;
  v5 = *v3;
  v6 = swift_task_alloc();
  v0[27] = v6;
  *v6 = v0;
  v6[1] = sub_26938C1D0;

  return sub_269366980(v4);
}

uint64_t sub_26938D9C8(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 152) = a2;
  *(v4 + 160) = v3;
  *(v4 + 240) = a3;
  *(v4 + 144) = a1;
  v5 = sub_2693B3420();
  *(v4 + 168) = v5;
  v6 = *(v5 - 8);
  *(v4 + 176) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 184) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26938DA90, 0, 0);
}

uint64_t sub_26938DA90()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  sub_2693B3410();
  v4 = sub_2693B3400();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v5 = swift_task_alloc();
    v0[24] = v5;
    *v5 = v0;
    v5[1] = sub_26938DC50;
    v6 = v0[20];

    return sub_26939501C();
  }

  else
  {
    v8 = v0[20];
    v9 = qword_28030D540;
    v0[25] = qword_28030D540;
    swift_beginAccess();
    sub_26934489C(v8 + v9, (v0 + 7));
    v10 = __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
    v11 = sub_26939F3A4(&unk_2879EC708, &qword_28030D4F8, &qword_2693B6A90);
    v0[26] = v11;
    v12 = *v10;
    v13 = swift_task_alloc();
    v0[27] = v13;
    *v13 = v0;
    v13[1] = sub_26938DE54;

    return sub_269366980(v11);
  }
}

uint64_t sub_26938DC50()
{
  v1 = *(*v0 + 192);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_26938DD58, 0, 0);
}

uint64_t sub_26938DD58()
{
  v1 = v0[20];
  v2 = qword_28030D540;
  v0[25] = qword_28030D540;
  swift_beginAccess();
  sub_26934489C(v1 + v2, (v0 + 7));
  v3 = __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  v4 = sub_26939F3A4(&unk_2879EC708, &qword_28030D4F8, &qword_2693B6A90);
  v0[26] = v4;
  v5 = *v3;
  v6 = swift_task_alloc();
  v0[27] = v6;
  *v6 = v0;
  v6[1] = sub_26938DE54;

  return sub_269366980(v4);
}

uint64_t sub_26938DE54(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 216);
  v6 = *v2;
  *(v4 + 224) = a1;
  *(v4 + 232) = v1;

  v7 = *(v3 + 208);

  if (v1)
  {
    v8 = sub_26938E508;
  }

  else
  {
    v8 = sub_26938DF90;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_26938DF90()
{
  v49 = v0;
  v1 = *(v0 + 152);
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  v2 = [v1 device];
  if (!v2)
  {
    v3 = (*(v0 + 160) + *(v0 + 200));
    v2 = *(*__swift_project_boxed_opaque_existential_1(v3, v3[3]) + 24);
    v4 = v2;
  }

  v5 = *(v0 + 232);
  sub_2693967D4(*(v0 + 152), v2, *(v0 + 240), *(v0 + 224), (v0 + 16));
  v6 = *(v0 + 224);
  if (!v5)
  {
    v24 = *(v0 + 184);
    v25 = *(v0 + 144);

    v26 = *(v0 + 16);
    v27 = *(v0 + 32);
    *(v25 + 32) = *(v0 + 48);
    *v25 = v26;
    *(v25 + 16) = v27;

    v28 = *(v0 + 8);
    goto LABEL_23;
  }

  v7 = v5;

  v8 = sub_2693B30D0();
  sub_2693A7BF4(v8, v48);

  v9 = v48[0];
  if (v48[0] != 10)
  {
    if (qword_280E262E8 != -1)
    {
      swift_once();
    }

    v29 = sub_2693B3620();
    __swift_project_value_buffer(v29, qword_280E262F0);
    sub_26934AD9C(v9);
    v30 = sub_2693B3610();
    v31 = sub_2693B39A0();
    sub_26938A514(v9);
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v48[0] = v33;
      *v32 = 136315138;
      *(v0 + 136) = v9;
      sub_26934AD9C(v9);
      v34 = sub_2693B3760();
      v36 = sub_26934CA40(v34, v35, v48);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_26933F000, v30, v31, "MTTimerIntentHandler: timersFuture error converted MTError: %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x26D63A640](v33, -1, -1);
      MEMORY[0x26D63A640](v32, -1, -1);
    }

    sub_26934B0F0();
    swift_allocError();
    *v37 = v9;
    swift_willThrow();

    goto LABEL_22;
  }

  *(v0 + 120) = v7;
  v10 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF30, &qword_2693B5A10);
  if (swift_dynamicCast())
  {
    sub_26934ADAC(*(v0 + 128));
    if (qword_280E262E8 != -1)
    {
      swift_once();
    }

    v11 = sub_2693B3620();
    __swift_project_value_buffer(v11, qword_280E262F0);
    v12 = v7;
    v13 = sub_2693B3610();
    v14 = sub_2693B39A0();

    if (!os_log_type_enabled(v13, v14))
    {
      goto LABEL_21;
    }

    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v48[0] = v16;
    *v15 = 136315138;
    v17 = sub_2693B30D0();
    v18 = [v17 description];
    v19 = sub_2693B3750();
    v21 = v20;

    v22 = sub_26934CA40(v19, v21, v48);

    *(v15 + 4) = v22;
    v23 = "MTTimerIntentHandler: Rethrowing known timersFuture error: %s";
  }

  else
  {
    if (qword_280E262E8 != -1)
    {
      swift_once();
    }

    v38 = sub_2693B3620();
    __swift_project_value_buffer(v38, qword_280E262F0);
    v39 = v7;
    v13 = sub_2693B3610();
    v14 = sub_2693B39A0();

    if (!os_log_type_enabled(v13, v14))
    {
      goto LABEL_21;
    }

    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v48[0] = v16;
    *v15 = 136315138;
    v40 = sub_2693B30D0();
    v41 = [v40 description];
    v42 = sub_2693B3750();
    v44 = v43;

    v45 = sub_26934CA40(v42, v44, v48);

    *(v15 + 4) = v45;
    v23 = "MTTimerIntentHandler: unknown timersFuture error: %s";
  }

  _os_log_impl(&dword_26933F000, v13, v14, v23, v15, 0xCu);
  __swift_destroy_boxed_opaque_existential_1(v16);
  MEMORY[0x26D63A640](v16, -1, -1);
  MEMORY[0x26D63A640](v15, -1, -1);
LABEL_21:

  swift_willThrow();
LABEL_22:
  v46 = *(v0 + 184);

  v28 = *(v0 + 8);
LABEL_23:

  return v28();
}

uint64_t sub_26938E508()
{
  v39 = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v1 = v0[29];
  v2 = sub_2693B30D0();
  sub_2693A7BF4(v2, v38);

  v3 = v38[0];
  if (v38[0] == 10)
  {
    v0[15] = v1;
    v4 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF30, &qword_2693B5A10);
    if (swift_dynamicCast())
    {
      sub_26934ADAC(v0[16]);
      if (qword_280E262E8 != -1)
      {
        swift_once();
      }

      v5 = sub_2693B3620();
      __swift_project_value_buffer(v5, qword_280E262F0);
      v6 = v1;
      v7 = sub_2693B3610();
      v8 = sub_2693B39A0();

      if (!os_log_type_enabled(v7, v8))
      {
        goto LABEL_17;
      }

      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v38[0] = v10;
      *v9 = 136315138;
      v11 = sub_2693B30D0();
      v12 = [v11 description];
      v13 = sub_2693B3750();
      v15 = v14;

      v16 = sub_26934CA40(v13, v15, v38);

      *(v9 + 4) = v16;
      v17 = "MTTimerIntentHandler: Rethrowing known timersFuture error: %s";
    }

    else
    {
      if (qword_280E262E8 != -1)
      {
        swift_once();
      }

      v27 = sub_2693B3620();
      __swift_project_value_buffer(v27, qword_280E262F0);
      v28 = v1;
      v7 = sub_2693B3610();
      v8 = sub_2693B39A0();

      if (!os_log_type_enabled(v7, v8))
      {
        goto LABEL_17;
      }

      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v38[0] = v10;
      *v9 = 136315138;
      v29 = sub_2693B30D0();
      v30 = [v29 description];
      v31 = sub_2693B3750();
      v33 = v32;

      v34 = sub_26934CA40(v31, v33, v38);

      *(v9 + 4) = v34;
      v17 = "MTTimerIntentHandler: unknown timersFuture error: %s";
    }

    _os_log_impl(&dword_26933F000, v7, v8, v17, v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x26D63A640](v10, -1, -1);
    MEMORY[0x26D63A640](v9, -1, -1);
LABEL_17:

    swift_willThrow();
    goto LABEL_18;
  }

  if (qword_280E262E8 != -1)
  {
    swift_once();
  }

  v18 = sub_2693B3620();
  __swift_project_value_buffer(v18, qword_280E262F0);
  sub_26934AD9C(v3);
  v19 = sub_2693B3610();
  v20 = sub_2693B39A0();
  sub_26938A514(v3);
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v38[0] = v22;
    *v21 = 136315138;
    v0[17] = v3;
    sub_26934AD9C(v3);
    v23 = sub_2693B3760();
    v25 = sub_26934CA40(v23, v24, v38);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_26933F000, v19, v20, "MTTimerIntentHandler: timersFuture error converted MTError: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x26D63A640](v22, -1, -1);
    MEMORY[0x26D63A640](v21, -1, -1);
  }

  sub_26934B0F0();
  swift_allocError();
  *v26 = v3;
  swift_willThrow();

LABEL_18:
  v35 = v0[23];

  v36 = v0[1];

  return v36();
}

uint64_t sub_26938E9DC(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 416) = a4;
  *(v5 + 424) = v4;
  *(v5 + 512) = a3;
  *(v5 + 400) = a1;
  *(v5 + 408) = a2;
  v6 = sub_2693B3420();
  *(v5 + 432) = v6;
  v7 = *(v6 - 8);
  *(v5 + 440) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 448) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26938EAA4, 0, 0);
}

uint64_t sub_26938EAA4()
{
  v26 = v0;
  *(v0 + 513) = sub_269396708(1, *(v0 + 416));
  if (qword_280E262E8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 400);
  v2 = sub_2693B3620();
  *(v0 + 456) = __swift_project_value_buffer(v2, qword_280E262F0);
  v3 = v1;
  v4 = sub_2693B3610();
  v5 = sub_2693B39B0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 400);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v25 = v8;
    *v7 = 136315138;
    v9 = v6;
    v10 = [v9 description];
    v11 = sub_2693B3750();
    v13 = v12;

    v14 = sub_26934CA40(v11, v13, &v25);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_26933F000, v4, v5, "Generically resolving target timer from intent timer: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x26D63A640](v8, -1, -1);
    MEMORY[0x26D63A640](v7, -1, -1);
  }

  sub_2693634A4(*(v0 + 408), v0 + 64);
  if (*(v0 + 88))
  {
    sub_2693436F0((v0 + 64), v0 + 104);
    v16 = *(v0 + 128);
    v15 = *(v0 + 136);
    v17 = __swift_project_boxed_opaque_existential_1((v0 + 104), v16);
    v18 = swift_task_alloc();
    *(v0 + 464) = v18;
    *v18 = v0;
    v18[1] = sub_26938EDCC;
    v19 = *(v0 + 424);

    return sub_2693A26F4(v17, v19, v16, v15);
  }

  else
  {
    sub_26934B4F0(v0 + 64, &qword_28030CF78, &qword_2693B5880);
    v21 = *(v0 + 513);
    v22 = swift_task_alloc();
    *(v0 + 472) = v22;
    *v22 = v0;
    v22[1] = sub_26938EF98;
    v23 = *(v0 + 424);
    v24 = *(v0 + 400);

    return sub_26938BD44(v0 + 144, v24, (v21 & 1) == 0);
  }
}

uint64_t sub_26938EDCC(void *a1)
{
  v3 = *(*v1 + 464);
  v5 = *v1;

  return MEMORY[0x2822009F8](sub_26938EED0, 0, 0);
}

uint64_t sub_26938EED0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 104));
  v1 = *(v0 + 513);
  v2 = swift_task_alloc();
  *(v0 + 472) = v2;
  *v2 = v0;
  v2[1] = sub_26938EF98;
  v3 = *(v0 + 424);
  v4 = *(v0 + 400);

  return sub_26938BD44(v0 + 144, v4, (v1 & 1) == 0);
}

uint64_t sub_26938EF98()
{
  v2 = *(*v1 + 472);
  v5 = *v1;
  *(*v1 + 480) = v0;

  if (v0)
  {
    v3 = sub_2693908F4;
  }

  else
  {
    v3 = sub_26938F0AC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26938F0AC()
{
  v216 = v0;
  v3 = *(v0 + 152);
  v2 = *(v0 + 160);

  v208 = v2;

  v4 = sub_2693995BC(v3);
  v5 = *(v0 + 480);
  v206 = v4;
  if (v4 < 2)
  {
    v8 = v3;
  }

  else
  {
    v6 = *(v0 + 416);

    sub_26937343C(v3, v6);
    v8 = v7;

    v10 = sub_2693995BC(v9);

    if (v10 && (v11 = sub_2693995BC(v8), v11 < sub_2693995BC(v3)))
    {
      v12 = *(v0 + 456);
      v13 = *(v0 + 416);

      swift_bridgeObjectRetain_n();

      v14 = sub_2693B3610();
      v15 = sub_2693B39B0();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = *(v0 + 416);
        v17 = swift_slowAlloc();
        v1 = swift_slowAlloc();
        v215[0] = v1;
        *v17 = 134218242;
        *(v17 + 4) = sub_2693995BC(v8);

        *(v17 + 12) = 2080;
        type metadata accessor for MTTimerState(0);
        sub_2693A06FC();
        v18 = sub_2693B3960();
        v20 = sub_26934CA40(v18, v19, v215);

        *(v17 + 14) = v20;
        _os_log_impl(&dword_26933F000, v14, v15, "Filtering %ld matched timers for allowedTimerStatesForFollowup:%s", v17, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v1);
        MEMORY[0x26D63A640](v1, -1, -1);
        MEMORY[0x26D63A640](v17, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      v8 = v3;
    }
  }

  v21 = sub_26939ECF4(v8, *(v0 + 400), *(v0 + 512));
  if (v21)
  {
    v23 = v21;
    v24 = v22;
    v25 = *(v0 + 456);

    v26 = v23;
    v27 = v24;
    v28 = sub_2693B3610();
    v29 = sub_2693B39B0();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v215[0] = v31;
      *v30 = 136315138;
      *(v0 + 208) = v26;
      *(v0 + 216) = v27;
      v32 = v26;
      v33 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D4D0, &qword_2693B6A78);
      v34 = sub_2693B3760();
      v36 = sub_26934CA40(v34, v35, v215);

      *(v30 + 4) = v36;
      _os_log_impl(&dword_26933F000, v28, v29, "Filtering resolved timer matches to single unnamed timer: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      v37 = v208;
      MEMORY[0x26D63A640](v31, -1, -1);
      MEMORY[0x26D63A640](v30, -1, -1);
    }

    else
    {

      v37 = v208;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF50, &unk_2693B57E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2693B5770;
    *(inited + 32) = v26;
    v1 = inited + 32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE70, "W");
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_2693B54B0;
    *(v39 + 32) = v27;
    *(inited + 40) = v39;
    v8 = sub_2693A83E8(inited);
    swift_setDeallocating();
    sub_26934B4F0(inited + 32, &qword_28030CF58, &unk_2693B57F0);
  }

  else
  {
    v37 = v208;
  }

  v40 = *(v0 + 512);
  v41 = sub_26938B998(*(v0 + 168));
  v42 = v41;
  if (v40 == 1)
  {
    if (v41 >> 62)
    {
      v43 = sub_2693B3C70();
    }

    else
    {
      v43 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v44 = sub_2693995BC(v8);
    if (__OFADD__(v43, v44))
    {
      __break(1u);
      goto LABEL_37;
    }

    if (v43 + v44 >= 2)
    {
      v45 = *(v0 + 456);

      v46 = sub_2693B3610();
      v47 = sub_2693B39B0();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 134217984;
        v49 = sub_2693995BC(v8);

        *(v48 + 4) = v49;

        _os_log_impl(&dword_26933F000, v46, v47, "Found %ld matching timers for multi target timer", v48, 0xCu);
        MEMORY[0x26D63A640](v48, -1, -1);
      }

      else
      {
        swift_bridgeObjectRelease_n();
      }

      v69 = *(v0 + 400);
      type metadata accessor for SiriTimerResolutionResult();
      v68 = sub_2693B13DC(v69);
      *(v0 + 304) = *(v0 + 144);
      sub_26934B4F0(v0 + 304, &qword_28030CF40, &unk_2693B57D0);

      *(v0 + 312) = *(v0 + 176);
      sub_26934B4F0(v0 + 312, &qword_28030CF48, &qword_2693B6A70);
      if (v206 < 2)
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }
  }

  v51 = *(v0 + 440);
  v50 = *(v0 + 448);
  v52 = *(v0 + 432);
  sub_2693B3410();
  v1 = sub_2693B3400();
  (*(v51 + 8))(v50, v52);
  if ((v1 & 1) == 0 || sub_2693995BC(v8))
  {
    goto LABEL_39;
  }

  if (!(v42 >> 62))
  {
    if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_25;
    }

    goto LABEL_39;
  }

LABEL_37:
  if (sub_2693B3C70() == 1 && sub_2693B3C70())
  {
LABEL_25:

    if ((v42 & 0xC000000000000001) == 0)
    {
      if (!*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v54 = *(v42 + 32);
      goto LABEL_28;
    }

LABEL_161:
    v54 = MEMORY[0x26D639EB0](0, v42);
LABEL_28:
    v55 = v54;
    v56 = *(v0 + 456);

    v57 = v55;
    v58 = sub_2693B3610();
    v59 = sub_2693B39B0();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v211 = swift_slowAlloc();
      v215[0] = v211;
      *v60 = 136315138;
      v61 = v57;
      v62 = [v61 description];
      v63 = sub_2693B3750();
      v65 = v64;

      v66 = sub_26934CA40(v63, v65, v215);

      *(v60 + 4) = v66;
      _os_log_impl(&dword_26933F000, v58, v59, "Confirming single matched remote timer: %s", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v211);
      MEMORY[0x26D63A640](v211, -1, -1);
      MEMORY[0x26D63A640](v60, -1, -1);
    }

    type metadata accessor for SiriTimerResolutionResult();
    v67 = v57;
    v68 = sub_2693B13DC(v57);
    *(v0 + 392) = *(v0 + 144);
    sub_26934B4F0(v0 + 392, &qword_28030CF40, &unk_2693B57D0);

    *(v0 + 384) = *(v0 + 176);
    sub_26934B4F0(v0 + 384, &qword_28030CF48, &qword_2693B6A70);

    goto LABEL_61;
  }

LABEL_39:

  if (sub_2693995BC(v8) >= 2)
  {
    v70 = *(v0 + 456);

    v71 = sub_26938B998(v8);

    v72 = sub_2693B3610();
    LOBYTE(v73) = sub_2693B39B0();
    if (!os_log_type_enabled(v72, v73))
    {

      goto LABEL_60;
    }

    v74 = swift_slowAlloc();
    *v74 = 134217984;
    if (!(v71 >> 62))
    {
      v75 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_43:
      *(v74 + 4) = v75;

      _os_log_impl(&dword_26933F000, v72, v73, "Disambiguating %ld matching timers for single target timer", v74, 0xCu);
      MEMORY[0x26D63A640](v74, -1, -1);
LABEL_60:

      type metadata accessor for SiriTimerResolutionResult();
      v68 = sub_2693B122C(v71);
      *(v0 + 288) = *(v0 + 144);
      sub_26934B4F0(v0 + 288, &qword_28030CF40, &unk_2693B57D0);

      *(v0 + 256) = *(v0 + 176);
      sub_26934B4F0(v0 + 256, &qword_28030CF48, &qword_2693B6A70);

      goto LABEL_61;
    }

LABEL_133:
    v75 = sub_2693B3C70();
    goto LABEL_43;
  }

  v76 = sub_269378A8C(v8);
  v42 = v77;

  if (!v76)
  {
LABEL_77:
    v128 = *(v0 + 416);
    v129 = *(v0 + 400);
    v209 = v128;
    v210 = [v129 state];
    v207 = [v129 type];
    v130 = v37 + 64;
    v131 = -1 << *(v37 + 32);
    if (-v131 < 64)
    {
      v132 = ~(-1 << -v131);
    }

    else
    {
      v132 = -1;
    }

    v74 = v132 & *(v37 + 64);
    v72 = ((63 - v131) >> 6);
    v73 = v128 + 56;

    v71 = 0;
    v1 = MEMORY[0x277D84F98];
    v201 = v0;
    v202 = v72;
    v200 = v37 + 64;
    while (v74)
    {
      v205 = v1;
LABEL_89:
      v137 = (v71 << 9) | (8 * __clz(__rbit64(v74)));
      v138 = *(*(v37 + 48) + v137);
      v139 = *(*(v37 + 56) + v137);
      v214 = MEMORY[0x277D84F90];
      v140 = v0;
      if (v139 >> 62)
      {
        v0 = sub_2693B3C70();
      }

      else
      {
        v0 = *((v139 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v204 = v138;

      if (v0)
      {
        v142 = 0;
        v212 = v141 & 0xC000000000000001;
        v143 = v141 & 0xFFFFFFFFFFFFFF8;
        v203 = v141;
        v144 = v141 + 32;
        v72 = v209;
        v145 = v210;
        while (1)
        {
          if (v212)
          {
            v146 = MEMORY[0x26D639EB0](v142, v203);
          }

          else
          {
            if (v142 >= *(v143 + 16))
            {
              goto LABEL_131;
            }

            v146 = *(v144 + 8 * v142);
          }

          v147 = v146;
          if (__OFADD__(v142++, 1))
          {
            break;
          }

          if (v145 && ((v149 = [v146 state], v149 >= 5) ? (v150 = 0) : (v150 = qword_2693B6BB8[v149]), v150 != v145))
          {
          }

          else
          {
            v151 = [v147 state];
            if (!v72[2].isa)
            {
              goto LABEL_93;
            }

            v152 = v151;
            isa = v72[5].isa;
            sub_2693B3DB0();
            MEMORY[0x26D63A0A0](v152);
            v154 = sub_2693B3DD0();
            v72 = v209;
            v155 = -1 << *(v209 + 32);
            v156 = v154 & ~v155;
            if (((*(v73 + ((v156 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v156) & 1) == 0)
            {
              goto LABEL_93;
            }

            v157 = ~v155;
            while (*(*(v209 + 48) + 8 * v156) != v152)
            {
              v156 = (v156 + 1) & v157;
              if (((*(v73 + ((v156 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v156) & 1) == 0)
              {
                goto LABEL_93;
              }
            }

            v158 = [v147 type];
            v159 = v158 == 1;
            if (v158 == 2)
            {
              v159 = 2;
            }

            if ((v207 & ~v159) == 0)
            {
              sub_2693B3C00();
              v160 = *(v214 + 16);
              sub_2693B3C30();
              sub_2693B3C40();
              sub_2693B3C10();
              v72 = v209;
              v145 = v210;
            }

            else
            {
LABEL_93:

              v145 = v210;
            }
          }

          if (v142 == v0)
          {
            v133 = v214;
            v130 = v200;
            v0 = v201;
            v37 = v208;
            v134 = v205;
            goto LABEL_82;
          }
        }

        __break(1u);
LABEL_131:
        __break(1u);
        goto LABEL_132;
      }

      v133 = MEMORY[0x277D84F90];
      v0 = v140;
      v134 = v205;
LABEL_82:
      v74 &= v74 - 1;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v215[0] = v134;
      sub_26939D1C8(v133, v204, isUniquelyReferenced_nonNull_native);

      v1 = v215[0];
      v72 = v202;
    }

    while (1)
    {
      v136 = v71 + 1;
      if (__OFADD__(v71, 1))
      {
        break;
      }

      if (v136 >= v72)
      {

        v161 = sub_269378A8C(v1);
        if (!v161)
        {
          goto LABEL_138;
        }

        v8 = v161;
        v76 = v162;
        v42 = v162 & 0xFFFFFFFFFFFFFF8;
        if (v162 >> 62)
        {
          goto LABEL_136;
        }

        if (!*((v162 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_137;
        }

        goto LABEL_121;
      }

      v74 = *(v130 + 8 * v136);
      ++v71;
      if (v74)
      {
        v205 = v1;
        v71 = v136;
        goto LABEL_89;
      }
    }

LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

  if (!(v42 >> 62))
  {
    if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_47;
    }

    goto LABEL_76;
  }

  if (!sub_2693B3C70())
  {
LABEL_76:

    goto LABEL_77;
  }

LABEL_47:

  if ((v42 & 0xC000000000000001) != 0)
  {
    v78 = MEMORY[0x26D639EB0](0, v42);
LABEL_50:
    v79 = v78;
    v80 = *(v0 + 456);
    swift_bridgeObjectRelease_n();
    type metadata accessor for SiriTimer();
    v81 = v76;
    v82 = v79;
    v83 = sub_26935CB88(v82, v76);
    v84 = v81;
    v85 = v82;
    v86 = sub_2693B3610();
    v87 = sub_2693B39B0();

    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v215[0] = v89;
      *v88 = 136315138;
      *(v0 + 224) = v84;
      *(v0 + 232) = v85;
      v90 = v84;
      v91 = v85;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D4D0, &qword_2693B6A78);
      v92 = sub_2693B3760();
      v94 = v85;
      v95 = v84;
      v96 = v83;
      v97 = sub_26934CA40(v92, v93, v215);

      *(v88 + 4) = v97;
      v83 = v96;
      v84 = v95;
      v85 = v94;
      _os_log_impl(&dword_26933F000, v86, v87, "Found matching timer: %s for target timer", v88, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v89);
      MEMORY[0x26D63A640](v89, -1, -1);
      MEMORY[0x26D63A640](v88, -1, -1);
    }

    v98 = [v85 timerIDString];
    v99 = sub_2693B3750();
    v101 = v100;

    v102 = HIBYTE(v101) & 0xF;
    if ((v101 & 0x2000000000000000) == 0)
    {
      v102 = v99 & 0xFFFFFFFFFFFFLL;
    }

    if (v102)
    {
      goto LABEL_55;
    }

    v111 = *(v0 + 400);
    v112 = [v85 timerIDString];
    v113 = sub_2693B3750();
    v115 = v114;

    v116 = [v111 identifier];
    if (v116)
    {
      v117 = v116;
      v118 = sub_2693B3750();
      v120 = v119;

      if (v113 == v118 && v115 == v120)
      {

LABEL_72:
        v122 = *(v0 + 456);
        v123 = sub_2693B3610();
        v124 = sub_2693B39B0();
        if (os_log_type_enabled(v123, v124))
        {
          v125 = swift_slowAlloc();
          *v125 = 0;
          _os_log_impl(&dword_26933F000, v123, v124, "Matching timer was matched by ID – use original targetTimer", v125, 2u);
          MEMORY[0x26D63A640](v125, -1, -1);
        }

        v126 = *(v0 + 400);

        type metadata accessor for SiriTimerResolutionResult();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v108 = v126;
        v68 = [ObjCClassFromMetadata resolutionResultSuccessWithResolvedValue_];
        *(v0 + 360) = *(v0 + 144);
        sub_26934B4F0(v0 + 360, &qword_28030CF40, &unk_2693B57D0);

        *(v0 + 336) = *(v0 + 176);
        sub_26934B4F0(v0 + 336, &qword_28030CF48, &qword_2693B6A70);

        goto LABEL_58;
      }

      v121 = sub_2693B3CE0();

      if (v121)
      {
        goto LABEL_72;
      }
    }

    else
    {
    }

LABEL_55:
    v103 = *(v0 + 456);
    v104 = sub_2693B3610();
    v105 = sub_2693B39B0();
    if (os_log_type_enabled(v104, v105))
    {
      v106 = swift_slowAlloc();
      *v106 = 0;
      _os_log_impl(&dword_26933F000, v104, v105, "Matching timer was matched generically – use convertedTimer", v106, 2u);
      MEMORY[0x26D63A640](v106, -1, -1);
    }

    type metadata accessor for SiriTimerResolutionResult();
    v107 = swift_getObjCClassFromMetadata();
    v108 = v83;
    v68 = [v107 resolutionResultSuccessWithResolvedValue_];
    *(v0 + 376) = *(v0 + 144);
    sub_26934B4F0(v0 + 376, &qword_28030CF40, &unk_2693B57D0);

    *(v0 + 368) = *(v0 + 176);
    sub_26934B4F0(v0 + 368, &qword_28030CF48, &qword_2693B6A70);

LABEL_58:
    goto LABEL_61;
  }

  if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v78 = *(v42 + 32);
    goto LABEL_50;
  }

  __break(1u);
LABEL_136:
  if (sub_2693B3C70())
  {
LABEL_121:
    if ((v76 & 0xC000000000000001) != 0)
    {

      v163 = MEMORY[0x26D639EB0](0, v76);
    }

    else
    {
      if (!*(v42 + 16))
      {
        __break(1u);
        goto LABEL_161;
      }

      v163 = *(v76 + 32);
    }

    v164 = sub_2693995BC(v1);

    if (v164 == 1)
    {
      v165 = *(v0 + 456);

      v166 = v8;
      v167 = v163;
      v168 = sub_2693B3610();
      v169 = sub_2693B39B0();

      if (os_log_type_enabled(v168, v169))
      {
        v170 = swift_slowAlloc();
        v213 = swift_slowAlloc();
        v215[0] = v213;
        *v170 = 136315138;
        *(v0 + 240) = v166;
        *(v0 + 248) = v167;
        v171 = v166;
        v172 = v167;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D4D0, &qword_2693B6A78);
        v173 = sub_2693B3760();
        v175 = sub_26934CA40(v173, v174, v215);

        *(v170 + 4) = v175;
        _os_log_impl(&dword_26933F000, v168, v169, "Found no matching timers but 1 alternate timer: %s for target timer", v170, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v213);
        MEMORY[0x26D63A640](v213, -1, -1);
        MEMORY[0x26D63A640](v170, -1, -1);
      }

      type metadata accessor for SiriTimerResolutionResult();
      type metadata accessor for SiriTimer();
      v176 = v166;
      v177 = v167;
      v178 = sub_26935CB88(v177, v8);
      v68 = sub_2693B13DC(v178);
      *(v0 + 328) = *(v0 + 144);
      sub_26934B4F0(v0 + 328, &qword_28030CF40, &unk_2693B57D0);

      *(v0 + 320) = *(v0 + 176);
      sub_26934B4F0(v0 + 320, &qword_28030CF48, &qword_2693B6A70);

LABEL_61:
      if (v206 <= 1)
      {
LABEL_63:
        v109 = *(v0 + 448);

        v110 = *(v0 + 8);

        return v110(v68);
      }

LABEL_62:

      goto LABEL_63;
    }
  }

  else
  {
LABEL_137:

LABEL_138:
  }

  v179 = *(v0 + 456);
  v180 = sub_2693B3610();
  v181 = sub_2693B39B0();
  if (os_log_type_enabled(v180, v181))
  {
    v182 = swift_slowAlloc();
    *v182 = 0;
    _os_log_impl(&dword_26933F000, v180, v181, "Found no matching timers for target timer", v182, 2u);
    MEMORY[0x26D63A640](v182, -1, -1);
  }

  v183 = sub_2693995BC(v37);

  sub_26934B0F0();
  v185 = swift_allocError();
  if (v183)
  {
    *v184 = 5;
    swift_willThrow();
    *(v0 + 296) = *(v0 + 144);
    sub_26934B4F0(v0 + 296, &qword_28030CF40, &unk_2693B57D0);

    *(v0 + 264) = *(v0 + 176);
    sub_26934B4F0(v0 + 264, &qword_28030CF48, &qword_2693B6A70);
    if (v206 < 2)
    {
      goto LABEL_144;
    }

    goto LABEL_143;
  }

  *v184 = 6;
  swift_willThrow();
  *(v0 + 272) = *(v0 + 144);
  sub_26934B4F0(v0 + 272, &qword_28030CF40, &unk_2693B57D0);

  *(v0 + 280) = *(v0 + 176);
  sub_26934B4F0(v0 + 280, &qword_28030CF48, &qword_2693B6A70);
  if (v206 > 1)
  {
LABEL_143:
  }

LABEL_144:
  *(v0 + 344) = v185;
  v186 = v185;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF30, &qword_2693B5A10);
  if (swift_dynamicCast())
  {

    v187 = *(v0 + 352);
    if (v187 == 6)
    {
      v189 = *(v0 + 440);
      v188 = *(v0 + 448);
      v190 = *(v0 + 432);
      sub_2693B3410();
      v191 = sub_2693B3400();
      (*(v189 + 8))(v188, v190);
      if (v191)
      {
        v192 = *(v0 + 416);
        v193 = (*(v0 + 424) + qword_28030D540);
        swift_beginAccess();
        v194 = *__swift_project_boxed_opaque_existential_1(v193, v193[3]);
        v195 = swift_task_alloc();
        *(v0 + 488) = v195;
        *v195 = v0;
        v195[1] = sub_269390B0C;

        return sub_269366980(v192);
      }

      swift_allocError();
      *v197 = 6;
    }

    else
    {
      swift_allocError();
      *v196 = v187;
    }

    swift_willThrow();
  }

  else
  {

    swift_willThrow();
  }

  v198 = *(v0 + 448);

  v199 = *(v0 + 8);

  return v199();
}

uint64_t sub_2693908F4()
{
  v1 = *(v0 + 480);
  *(v0 + 344) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF30, &qword_2693B5A10);
  if (swift_dynamicCast())
  {

    v3 = *(v0 + 352);
    if (v3 == 6)
    {
      v5 = *(v0 + 440);
      v4 = *(v0 + 448);
      v6 = *(v0 + 432);
      sub_2693B3410();
      v7 = sub_2693B3400();
      (*(v5 + 8))(v4, v6);
      if (v7)
      {
        v8 = *(v0 + 416);
        v9 = (*(v0 + 424) + qword_28030D540);
        swift_beginAccess();
        v10 = *__swift_project_boxed_opaque_existential_1(v9, v9[3]);
        v11 = swift_task_alloc();
        *(v0 + 488) = v11;
        *v11 = v0;
        v11[1] = sub_269390B0C;

        return sub_269366980(v8);
      }

      sub_26934B0F0();
      swift_allocError();
      *v14 = 6;
    }

    else
    {
      sub_26934B0F0();
      swift_allocError();
      *v13 = v3;
    }

    swift_willThrow();
  }

  else
  {

    swift_willThrow();
  }

  v15 = *(v0 + 448);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_269390B0C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 488);
  v6 = *v2;
  *(*v2 + 496) = v1;

  if (v1)
  {
    v7 = sub_2693A08E8;
  }

  else
  {
    *(v4 + 504) = a1;
    v7 = sub_2693A08F0;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_269390C34(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 416) = a4;
  *(v5 + 424) = v4;
  *(v5 + 512) = a3;
  *(v5 + 400) = a1;
  *(v5 + 408) = a2;
  v6 = sub_2693B3420();
  *(v5 + 432) = v6;
  v7 = *(v6 - 8);
  *(v5 + 440) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 448) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_269390CFC, 0, 0);
}

uint64_t sub_269390CFC()
{
  v26 = v0;
  *(v0 + 513) = sub_269396708(1, *(v0 + 416));
  if (qword_280E262E8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 400);
  v2 = sub_2693B3620();
  *(v0 + 456) = __swift_project_value_buffer(v2, qword_280E262F0);
  v3 = v1;
  v4 = sub_2693B3610();
  v5 = sub_2693B39B0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 400);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v25 = v8;
    *v7 = 136315138;
    v9 = v6;
    v10 = [v9 description];
    v11 = sub_2693B3750();
    v13 = v12;

    v14 = sub_26934CA40(v11, v13, &v25);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_26933F000, v4, v5, "Generically resolving target timer from intent timer: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x26D63A640](v8, -1, -1);
    MEMORY[0x26D63A640](v7, -1, -1);
  }

  sub_2693634A4(*(v0 + 408), v0 + 64);
  if (*(v0 + 88))
  {
    sub_2693436F0((v0 + 64), v0 + 104);
    v16 = *(v0 + 128);
    v15 = *(v0 + 136);
    v17 = __swift_project_boxed_opaque_existential_1((v0 + 104), v16);
    v18 = swift_task_alloc();
    *(v0 + 464) = v18;
    *v18 = v0;
    v18[1] = sub_269391024;
    v19 = *(v0 + 424);

    return sub_2693A2BE8(v17, v19, v16, v15);
  }

  else
  {
    sub_26934B4F0(v0 + 64, &qword_28030CF78, &qword_2693B5880);
    v21 = *(v0 + 513);
    v22 = swift_task_alloc();
    *(v0 + 472) = v22;
    *v22 = v0;
    v22[1] = sub_26938EF98;
    v23 = *(v0 + 424);
    v24 = *(v0 + 400);

    return sub_26938C30C(v0 + 144, v24, (v21 & 1) == 0);
  }
}

uint64_t sub_269391024(void *a1)
{
  v3 = *(*v1 + 464);
  v5 = *v1;

  return MEMORY[0x2822009F8](sub_269391128, 0, 0);
}

uint64_t sub_269391128()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 104));
  v1 = *(v0 + 513);
  v2 = swift_task_alloc();
  *(v0 + 472) = v2;
  *v2 = v0;
  v2[1] = sub_26938EF98;
  v3 = *(v0 + 424);
  v4 = *(v0 + 400);

  return sub_26938C30C(v0 + 144, v4, (v1 & 1) == 0);
}

uint64_t sub_2693911F0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 416) = a4;
  *(v5 + 424) = v4;
  *(v5 + 512) = a3;
  *(v5 + 400) = a1;
  *(v5 + 408) = a2;
  v6 = sub_2693B3420();
  *(v5 + 432) = v6;
  v7 = *(v6 - 8);
  *(v5 + 440) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 448) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2693912B8, 0, 0);
}

uint64_t sub_2693912B8()
{
  v26 = v0;
  *(v0 + 513) = sub_269396708(1, *(v0 + 416));
  if (qword_280E262E8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 400);
  v2 = sub_2693B3620();
  *(v0 + 456) = __swift_project_value_buffer(v2, qword_280E262F0);
  v3 = v1;
  v4 = sub_2693B3610();
  v5 = sub_2693B39B0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 400);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v25 = v8;
    *v7 = 136315138;
    v9 = v6;
    v10 = [v9 description];
    v11 = sub_2693B3750();
    v13 = v12;

    v14 = sub_26934CA40(v11, v13, &v25);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_26933F000, v4, v5, "Generically resolving target timer from intent timer: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x26D63A640](v8, -1, -1);
    MEMORY[0x26D63A640](v7, -1, -1);
  }

  sub_2693634A4(*(v0 + 408), v0 + 64);
  if (*(v0 + 88))
  {
    sub_2693436F0((v0 + 64), v0 + 104);
    v16 = *(v0 + 128);
    v15 = *(v0 + 136);
    v17 = __swift_project_boxed_opaque_existential_1((v0 + 104), v16);
    v18 = swift_task_alloc();
    *(v0 + 464) = v18;
    *v18 = v0;
    v18[1] = sub_2693915E0;
    v19 = *(v0 + 424);

    return sub_2693A2FDC(v17, v19, v16, v15);
  }

  else
  {
    sub_26934B4F0(v0 + 64, &qword_28030CF78, &qword_2693B5880);
    v21 = *(v0 + 513);
    v22 = swift_task_alloc();
    *(v0 + 472) = v22;
    *v22 = v0;
    v22[1] = sub_26938EF98;
    v23 = *(v0 + 424);
    v24 = *(v0 + 400);

    return sub_26938C798(v0 + 144, v24, (v21 & 1) == 0);
  }
}

uint64_t sub_2693915E0(void *a1)
{
  v3 = *(*v1 + 464);
  v5 = *v1;

  return MEMORY[0x2822009F8](sub_2693916E4, 0, 0);
}

uint64_t sub_2693916E4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 104));
  v1 = *(v0 + 513);
  v2 = swift_task_alloc();
  *(v0 + 472) = v2;
  *v2 = v0;
  v2[1] = sub_26938EF98;
  v3 = *(v0 + 424);
  v4 = *(v0 + 400);

  return sub_26938C798(v0 + 144, v4, (v1 & 1) == 0);
}

uint64_t sub_2693917AC(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 416) = a4;
  *(v5 + 424) = v4;
  *(v5 + 512) = a3;
  *(v5 + 400) = a1;
  *(v5 + 408) = a2;
  v6 = sub_2693B3420();
  *(v5 + 432) = v6;
  v7 = *(v6 - 8);
  *(v5 + 440) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 448) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_269391874, 0, 0);
}

uint64_t sub_269391874()
{
  v26 = v0;
  *(v0 + 513) = sub_269396708(1, *(v0 + 416));
  if (qword_280E262E8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 400);
  v2 = sub_2693B3620();
  *(v0 + 456) = __swift_project_value_buffer(v2, qword_280E262F0);
  v3 = v1;
  v4 = sub_2693B3610();
  v5 = sub_2693B39B0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 400);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v25 = v8;
    *v7 = 136315138;
    v9 = v6;
    v10 = [v9 description];
    v11 = sub_2693B3750();
    v13 = v12;

    v14 = sub_26934CA40(v11, v13, &v25);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_26933F000, v4, v5, "Generically resolving target timer from intent timer: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x26D63A640](v8, -1, -1);
    MEMORY[0x26D63A640](v7, -1, -1);
  }

  sub_2693634A4(*(v0 + 408), v0 + 64);
  if (*(v0 + 88))
  {
    sub_2693436F0((v0 + 64), v0 + 104);
    v16 = *(v0 + 128);
    v15 = *(v0 + 136);
    v17 = __swift_project_boxed_opaque_existential_1((v0 + 104), v16);
    v18 = swift_task_alloc();
    *(v0 + 464) = v18;
    *v18 = v0;
    v18[1] = sub_269391B9C;
    v19 = *(v0 + 424);

    return sub_2693A33D0(v17, v19, v16, v15);
  }

  else
  {
    sub_26934B4F0(v0 + 64, &qword_28030CF78, &qword_2693B5880);
    v21 = *(v0 + 513);
    v22 = swift_task_alloc();
    *(v0 + 472) = v22;
    *v22 = v0;
    v22[1] = sub_26938EF98;
    v23 = *(v0 + 424);
    v24 = *(v0 + 400);

    return sub_26938CC24(v0 + 144, v24, (v21 & 1) == 0);
  }
}

uint64_t sub_269391B9C(void *a1)
{
  v3 = *(*v1 + 464);
  v5 = *v1;

  return MEMORY[0x2822009F8](sub_269391CA0, 0, 0);
}

uint64_t sub_269391CA0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 104));
  v1 = *(v0 + 513);
  v2 = swift_task_alloc();
  *(v0 + 472) = v2;
  *v2 = v0;
  v2[1] = sub_26938EF98;
  v3 = *(v0 + 424);
  v4 = *(v0 + 400);

  return sub_26938CC24(v0 + 144, v4, (v1 & 1) == 0);
}

uint64_t sub_269391D68(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 416) = a4;
  *(v5 + 424) = v4;
  *(v5 + 512) = a3;
  *(v5 + 400) = a1;
  *(v5 + 408) = a2;
  v6 = sub_2693B3420();
  *(v5 + 432) = v6;
  v7 = *(v6 - 8);
  *(v5 + 440) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 448) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_269391E30, 0, 0);
}

uint64_t sub_269391E30()
{
  v26 = v0;
  *(v0 + 513) = sub_269396708(1, *(v0 + 416));
  if (qword_280E262E8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 400);
  v2 = sub_2693B3620();
  *(v0 + 456) = __swift_project_value_buffer(v2, qword_280E262F0);
  v3 = v1;
  v4 = sub_2693B3610();
  v5 = sub_2693B39B0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 400);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v25 = v8;
    *v7 = 136315138;
    v9 = v6;
    v10 = [v9 description];
    v11 = sub_2693B3750();
    v13 = v12;

    v14 = sub_26934CA40(v11, v13, &v25);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_26933F000, v4, v5, "Generically resolving target timer from intent timer: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x26D63A640](v8, -1, -1);
    MEMORY[0x26D63A640](v7, -1, -1);
  }

  sub_2693634A4(*(v0 + 408), v0 + 64);
  if (*(v0 + 88))
  {
    sub_2693436F0((v0 + 64), v0 + 104);
    v16 = *(v0 + 128);
    v15 = *(v0 + 136);
    v17 = __swift_project_boxed_opaque_existential_1((v0 + 104), v16);
    v18 = swift_task_alloc();
    *(v0 + 464) = v18;
    *v18 = v0;
    v18[1] = sub_269392158;
    v19 = *(v0 + 424);

    return sub_2693A37C4(v17, v19, v16, v15);
  }

  else
  {
    sub_26934B4F0(v0 + 64, &qword_28030CF78, &qword_2693B5880);
    v21 = *(v0 + 513);
    v22 = swift_task_alloc();
    *(v0 + 472) = v22;
    *v22 = v0;
    v22[1] = sub_269392324;
    v23 = *(v0 + 424);
    v24 = *(v0 + 400);

    return sub_26938D9C8(v0 + 144, v24, (v21 & 1) == 0);
  }
}

uint64_t sub_269392158(void *a1)
{
  v3 = *(*v1 + 464);
  v5 = *v1;

  return MEMORY[0x2822009F8](sub_26939225C, 0, 0);
}

uint64_t sub_26939225C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 104));
  v1 = *(v0 + 513);
  v2 = swift_task_alloc();
  *(v0 + 472) = v2;
  *v2 = v0;
  v2[1] = sub_269392324;
  v3 = *(v0 + 424);
  v4 = *(v0 + 400);

  return sub_26938D9C8(v0 + 144, v4, (v1 & 1) == 0);
}

uint64_t sub_269392324()
{
  v2 = *(*v1 + 472);
  v5 = *v1;
  *(*v1 + 480) = v0;

  if (v0)
  {
    v3 = sub_269393C80;
  }

  else
  {
    v3 = sub_269392438;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_269392438()
{
  v216 = v0;
  v3 = *(v0 + 152);
  v2 = *(v0 + 160);

  v208 = v2;

  v4 = sub_2693995BC(v3);
  v5 = *(v0 + 480);
  v206 = v4;
  if (v4 < 2)
  {
    v8 = v3;
  }

  else
  {
    v6 = *(v0 + 416);

    sub_26937343C(v3, v6);
    v8 = v7;

    v10 = sub_2693995BC(v9);

    if (v10 && (v11 = sub_2693995BC(v8), v11 < sub_2693995BC(v3)))
    {
      v12 = *(v0 + 456);
      v13 = *(v0 + 416);

      swift_bridgeObjectRetain_n();

      v14 = sub_2693B3610();
      v15 = sub_2693B39B0();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = *(v0 + 416);
        v17 = swift_slowAlloc();
        v1 = swift_slowAlloc();
        v215[0] = v1;
        *v17 = 134218242;
        *(v17 + 4) = sub_2693995BC(v8);

        *(v17 + 12) = 2080;
        type metadata accessor for MTTimerState(0);
        sub_2693A06FC();
        v18 = sub_2693B3960();
        v20 = sub_26934CA40(v18, v19, v215);

        *(v17 + 14) = v20;
        _os_log_impl(&dword_26933F000, v14, v15, "Filtering %ld matched timers for allowedTimerStatesForFollowup:%s", v17, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v1);
        MEMORY[0x26D63A640](v1, -1, -1);
        MEMORY[0x26D63A640](v17, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      v8 = v3;
    }
  }

  v21 = sub_26939ECF4(v8, *(v0 + 400), *(v0 + 512));
  if (v21)
  {
    v23 = v21;
    v24 = v22;
    v25 = *(v0 + 456);

    v26 = v23;
    v27 = v24;
    v28 = sub_2693B3610();
    v29 = sub_2693B39B0();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v215[0] = v31;
      *v30 = 136315138;
      *(v0 + 208) = v26;
      *(v0 + 216) = v27;
      v32 = v26;
      v33 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D4D0, &qword_2693B6A78);
      v34 = sub_2693B3760();
      v36 = sub_26934CA40(v34, v35, v215);

      *(v30 + 4) = v36;
      _os_log_impl(&dword_26933F000, v28, v29, "Filtering resolved timer matches to single unnamed timer: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      v37 = v208;
      MEMORY[0x26D63A640](v31, -1, -1);
      MEMORY[0x26D63A640](v30, -1, -1);
    }

    else
    {

      v37 = v208;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF50, &unk_2693B57E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2693B5770;
    *(inited + 32) = v26;
    v1 = inited + 32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE70, "W");
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_2693B54B0;
    *(v39 + 32) = v27;
    *(inited + 40) = v39;
    v8 = sub_2693A83E8(inited);
    swift_setDeallocating();
    sub_26934B4F0(inited + 32, &qword_28030CF58, &unk_2693B57F0);
  }

  else
  {
    v37 = v208;
  }

  v40 = *(v0 + 512);
  v41 = sub_26938B998(*(v0 + 168));
  v42 = v41;
  if (v40 == 1)
  {
    if (v41 >> 62)
    {
      v43 = sub_2693B3C70();
    }

    else
    {
      v43 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v44 = sub_2693995BC(v8);
    if (__OFADD__(v43, v44))
    {
      __break(1u);
      goto LABEL_37;
    }

    if (v43 + v44 >= 2)
    {
      v45 = *(v0 + 456);

      v46 = sub_2693B3610();
      v47 = sub_2693B39B0();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 134217984;
        v49 = sub_2693995BC(v8);

        *(v48 + 4) = v49;

        _os_log_impl(&dword_26933F000, v46, v47, "Found %ld matching timers for multi target timer", v48, 0xCu);
        MEMORY[0x26D63A640](v48, -1, -1);
      }

      else
      {
        swift_bridgeObjectRelease_n();
      }

      v69 = *(v0 + 400);
      type metadata accessor for SiriTimerResolutionResult();
      v68 = sub_2693B13DC(v69);
      *(v0 + 304) = *(v0 + 144);
      sub_26934B4F0(v0 + 304, &qword_28030CF40, &unk_2693B57D0);

      *(v0 + 312) = *(v0 + 176);
      sub_26934B4F0(v0 + 312, &qword_28030CF48, &qword_2693B6A70);
      if (v206 < 2)
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }
  }

  v51 = *(v0 + 440);
  v50 = *(v0 + 448);
  v52 = *(v0 + 432);
  sub_2693B3410();
  v1 = sub_2693B3400();
  (*(v51 + 8))(v50, v52);
  if ((v1 & 1) == 0 || sub_2693995BC(v8))
  {
    goto LABEL_39;
  }

  if (!(v42 >> 62))
  {
    if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_25;
    }

    goto LABEL_39;
  }

LABEL_37:
  if (sub_2693B3C70() == 1 && sub_2693B3C70())
  {
LABEL_25:

    if ((v42 & 0xC000000000000001) == 0)
    {
      if (!*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v54 = *(v42 + 32);
      goto LABEL_28;
    }

LABEL_161:
    v54 = MEMORY[0x26D639EB0](0, v42);
LABEL_28:
    v55 = v54;
    v56 = *(v0 + 456);

    v57 = v55;
    v58 = sub_2693B3610();
    v59 = sub_2693B39B0();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v211 = swift_slowAlloc();
      v215[0] = v211;
      *v60 = 136315138;
      v61 = v57;
      v62 = [v61 description];
      v63 = sub_2693B3750();
      v65 = v64;

      v66 = sub_26934CA40(v63, v65, v215);

      *(v60 + 4) = v66;
      _os_log_impl(&dword_26933F000, v58, v59, "Confirming single matched remote timer: %s", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v211);
      MEMORY[0x26D63A640](v211, -1, -1);
      MEMORY[0x26D63A640](v60, -1, -1);
    }

    type metadata accessor for SiriTimerResolutionResult();
    v67 = v57;
    v68 = sub_2693B13DC(v57);
    *(v0 + 392) = *(v0 + 144);
    sub_26934B4F0(v0 + 392, &qword_28030CF40, &unk_2693B57D0);

    *(v0 + 384) = *(v0 + 176);
    sub_26934B4F0(v0 + 384, &qword_28030CF48, &qword_2693B6A70);

    goto LABEL_61;
  }

LABEL_39:

  if (sub_2693995BC(v8) >= 2)
  {
    v70 = *(v0 + 456);

    v71 = sub_26938B998(v8);

    v72 = sub_2693B3610();
    LOBYTE(v73) = sub_2693B39B0();
    if (!os_log_type_enabled(v72, v73))
    {

      goto LABEL_60;
    }

    v74 = swift_slowAlloc();
    *v74 = 134217984;
    if (!(v71 >> 62))
    {
      v75 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_43:
      *(v74 + 4) = v75;

      _os_log_impl(&dword_26933F000, v72, v73, "Disambiguating %ld matching timers for single target timer", v74, 0xCu);
      MEMORY[0x26D63A640](v74, -1, -1);
LABEL_60:

      type metadata accessor for SiriTimerResolutionResult();
      v68 = sub_2693B122C(v71);
      *(v0 + 288) = *(v0 + 144);
      sub_26934B4F0(v0 + 288, &qword_28030CF40, &unk_2693B57D0);

      *(v0 + 256) = *(v0 + 176);
      sub_26934B4F0(v0 + 256, &qword_28030CF48, &qword_2693B6A70);

      goto LABEL_61;
    }

LABEL_133:
    v75 = sub_2693B3C70();
    goto LABEL_43;
  }

  v76 = sub_269378A8C(v8);
  v42 = v77;

  if (!v76)
  {
LABEL_77:
    v128 = *(v0 + 416);
    v129 = *(v0 + 400);
    v209 = v128;
    v210 = [v129 state];
    v207 = [v129 type];
    v130 = v37 + 64;
    v131 = -1 << *(v37 + 32);
    if (-v131 < 64)
    {
      v132 = ~(-1 << -v131);
    }

    else
    {
      v132 = -1;
    }

    v74 = v132 & *(v37 + 64);
    v72 = ((63 - v131) >> 6);
    v73 = v128 + 56;

    v71 = 0;
    v1 = MEMORY[0x277D84F98];
    v201 = v0;
    v202 = v72;
    v200 = v37 + 64;
    while (v74)
    {
      v205 = v1;
LABEL_89:
      v137 = (v71 << 9) | (8 * __clz(__rbit64(v74)));
      v138 = *(*(v37 + 48) + v137);
      v139 = *(*(v37 + 56) + v137);
      v214 = MEMORY[0x277D84F90];
      v140 = v0;
      if (v139 >> 62)
      {
        v0 = sub_2693B3C70();
      }

      else
      {
        v0 = *((v139 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v204 = v138;

      if (v0)
      {
        v142 = 0;
        v212 = v141 & 0xC000000000000001;
        v143 = v141 & 0xFFFFFFFFFFFFFF8;
        v203 = v141;
        v144 = v141 + 32;
        v72 = v209;
        v145 = v210;
        while (1)
        {
          if (v212)
          {
            v146 = MEMORY[0x26D639EB0](v142, v203);
          }

          else
          {
            if (v142 >= *(v143 + 16))
            {
              goto LABEL_131;
            }

            v146 = *(v144 + 8 * v142);
          }

          v147 = v146;
          if (__OFADD__(v142++, 1))
          {
            break;
          }

          if (v145 && ((v149 = [v146 state], v149 >= 5) ? (v150 = 0) : (v150 = qword_2693B6BB8[v149]), v150 != v145))
          {
          }

          else
          {
            v151 = [v147 state];
            if (!v72[2].isa)
            {
              goto LABEL_93;
            }

            v152 = v151;
            isa = v72[5].isa;
            sub_2693B3DB0();
            MEMORY[0x26D63A0A0](v152);
            v154 = sub_2693B3DD0();
            v72 = v209;
            v155 = -1 << *(v209 + 32);
            v156 = v154 & ~v155;
            if (((*(v73 + ((v156 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v156) & 1) == 0)
            {
              goto LABEL_93;
            }

            v157 = ~v155;
            while (*(*(v209 + 48) + 8 * v156) != v152)
            {
              v156 = (v156 + 1) & v157;
              if (((*(v73 + ((v156 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v156) & 1) == 0)
              {
                goto LABEL_93;
              }
            }

            v158 = [v147 type];
            v159 = v158 == 1;
            if (v158 == 2)
            {
              v159 = 2;
            }

            if ((v207 & ~v159) == 0)
            {
              sub_2693B3C00();
              v160 = *(v214 + 16);
              sub_2693B3C30();
              sub_2693B3C40();
              sub_2693B3C10();
              v72 = v209;
              v145 = v210;
            }

            else
            {
LABEL_93:

              v145 = v210;
            }
          }

          if (v142 == v0)
          {
            v133 = v214;
            v130 = v200;
            v0 = v201;
            v37 = v208;
            v134 = v205;
            goto LABEL_82;
          }
        }

        __break(1u);
LABEL_131:
        __break(1u);
        goto LABEL_132;
      }

      v133 = MEMORY[0x277D84F90];
      v0 = v140;
      v134 = v205;
LABEL_82:
      v74 &= v74 - 1;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v215[0] = v134;
      sub_26939D1C8(v133, v204, isUniquelyReferenced_nonNull_native);

      v1 = v215[0];
      v72 = v202;
    }

    while (1)
    {
      v136 = v71 + 1;
      if (__OFADD__(v71, 1))
      {
        break;
      }

      if (v136 >= v72)
      {

        v161 = sub_269378A8C(v1);
        if (!v161)
        {
          goto LABEL_138;
        }

        v8 = v161;
        v76 = v162;
        v42 = v162 & 0xFFFFFFFFFFFFFF8;
        if (v162 >> 62)
        {
          goto LABEL_136;
        }

        if (!*((v162 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_137;
        }

        goto LABEL_121;
      }

      v74 = *(v130 + 8 * v136);
      ++v71;
      if (v74)
      {
        v205 = v1;
        v71 = v136;
        goto LABEL_89;
      }
    }

LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

  if (!(v42 >> 62))
  {
    if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_47;
    }

    goto LABEL_76;
  }

  if (!sub_2693B3C70())
  {
LABEL_76:

    goto LABEL_77;
  }

LABEL_47:

  if ((v42 & 0xC000000000000001) != 0)
  {
    v78 = MEMORY[0x26D639EB0](0, v42);
LABEL_50:
    v79 = v78;
    v80 = *(v0 + 456);
    swift_bridgeObjectRelease_n();
    type metadata accessor for SiriTimer();
    v81 = v76;
    v82 = v79;
    v83 = sub_26935CB88(v82, v76);
    v84 = v81;
    v85 = v82;
    v86 = sub_2693B3610();
    v87 = sub_2693B39B0();

    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v215[0] = v89;
      *v88 = 136315138;
      *(v0 + 224) = v84;
      *(v0 + 232) = v85;
      v90 = v84;
      v91 = v85;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D4D0, &qword_2693B6A78);
      v92 = sub_2693B3760();
      v94 = v85;
      v95 = v84;
      v96 = v83;
      v97 = sub_26934CA40(v92, v93, v215);

      *(v88 + 4) = v97;
      v83 = v96;
      v84 = v95;
      v85 = v94;
      _os_log_impl(&dword_26933F000, v86, v87, "Found matching timer: %s for target timer", v88, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v89);
      MEMORY[0x26D63A640](v89, -1, -1);
      MEMORY[0x26D63A640](v88, -1, -1);
    }

    v98 = [v85 timerIDString];
    v99 = sub_2693B3750();
    v101 = v100;

    v102 = HIBYTE(v101) & 0xF;
    if ((v101 & 0x2000000000000000) == 0)
    {
      v102 = v99 & 0xFFFFFFFFFFFFLL;
    }

    if (v102)
    {
      goto LABEL_55;
    }

    v111 = *(v0 + 400);
    v112 = [v85 timerIDString];
    v113 = sub_2693B3750();
    v115 = v114;

    v116 = [v111 identifier];
    if (v116)
    {
      v117 = v116;
      v118 = sub_2693B3750();
      v120 = v119;

      if (v113 == v118 && v115 == v120)
      {

LABEL_72:
        v122 = *(v0 + 456);
        v123 = sub_2693B3610();
        v124 = sub_2693B39B0();
        if (os_log_type_enabled(v123, v124))
        {
          v125 = swift_slowAlloc();
          *v125 = 0;
          _os_log_impl(&dword_26933F000, v123, v124, "Matching timer was matched by ID – use original targetTimer", v125, 2u);
          MEMORY[0x26D63A640](v125, -1, -1);
        }

        v126 = *(v0 + 400);

        type metadata accessor for SiriTimerResolutionResult();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v108 = v126;
        v68 = [ObjCClassFromMetadata resolutionResultSuccessWithResolvedValue_];
        *(v0 + 360) = *(v0 + 144);
        sub_26934B4F0(v0 + 360, &qword_28030CF40, &unk_2693B57D0);

        *(v0 + 336) = *(v0 + 176);
        sub_26934B4F0(v0 + 336, &qword_28030CF48, &qword_2693B6A70);

        goto LABEL_58;
      }

      v121 = sub_2693B3CE0();

      if (v121)
      {
        goto LABEL_72;
      }
    }

    else
    {
    }

LABEL_55:
    v103 = *(v0 + 456);
    v104 = sub_2693B3610();
    v105 = sub_2693B39B0();
    if (os_log_type_enabled(v104, v105))
    {
      v106 = swift_slowAlloc();
      *v106 = 0;
      _os_log_impl(&dword_26933F000, v104, v105, "Matching timer was matched generically – use convertedTimer", v106, 2u);
      MEMORY[0x26D63A640](v106, -1, -1);
    }

    type metadata accessor for SiriTimerResolutionResult();
    v107 = swift_getObjCClassFromMetadata();
    v108 = v83;
    v68 = [v107 resolutionResultSuccessWithResolvedValue_];
    *(v0 + 376) = *(v0 + 144);
    sub_26934B4F0(v0 + 376, &qword_28030CF40, &unk_2693B57D0);

    *(v0 + 368) = *(v0 + 176);
    sub_26934B4F0(v0 + 368, &qword_28030CF48, &qword_2693B6A70);

LABEL_58:
    goto LABEL_61;
  }

  if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v78 = *(v42 + 32);
    goto LABEL_50;
  }

  __break(1u);
LABEL_136:
  if (sub_2693B3C70())
  {
LABEL_121:
    if ((v76 & 0xC000000000000001) != 0)
    {

      v163 = MEMORY[0x26D639EB0](0, v76);
    }

    else
    {
      if (!*(v42 + 16))
      {
        __break(1u);
        goto LABEL_161;
      }

      v163 = *(v76 + 32);
    }

    v164 = sub_2693995BC(v1);

    if (v164 == 1)
    {
      v165 = *(v0 + 456);

      v166 = v8;
      v167 = v163;
      v168 = sub_2693B3610();
      v169 = sub_2693B39B0();

      if (os_log_type_enabled(v168, v169))
      {
        v170 = swift_slowAlloc();
        v213 = swift_slowAlloc();
        v215[0] = v213;
        *v170 = 136315138;
        *(v0 + 240) = v166;
        *(v0 + 248) = v167;
        v171 = v166;
        v172 = v167;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D4D0, &qword_2693B6A78);
        v173 = sub_2693B3760();
        v175 = sub_26934CA40(v173, v174, v215);

        *(v170 + 4) = v175;
        _os_log_impl(&dword_26933F000, v168, v169, "Found no matching timers but 1 alternate timer: %s for target timer", v170, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v213);
        MEMORY[0x26D63A640](v213, -1, -1);
        MEMORY[0x26D63A640](v170, -1, -1);
      }

      type metadata accessor for SiriTimerResolutionResult();
      type metadata accessor for SiriTimer();
      v176 = v166;
      v177 = v167;
      v178 = sub_26935CB88(v177, v8);
      v68 = sub_2693B13DC(v178);
      *(v0 + 328) = *(v0 + 144);
      sub_26934B4F0(v0 + 328, &qword_28030CF40, &unk_2693B57D0);

      *(v0 + 320) = *(v0 + 176);
      sub_26934B4F0(v0 + 320, &qword_28030CF48, &qword_2693B6A70);

LABEL_61:
      if (v206 <= 1)
      {
LABEL_63:
        v109 = *(v0 + 448);

        v110 = *(v0 + 8);

        return v110(v68);
      }

LABEL_62:

      goto LABEL_63;
    }
  }

  else
  {
LABEL_137:

LABEL_138:
  }

  v179 = *(v0 + 456);
  v180 = sub_2693B3610();
  v181 = sub_2693B39B0();
  if (os_log_type_enabled(v180, v181))
  {
    v182 = swift_slowAlloc();
    *v182 = 0;
    _os_log_impl(&dword_26933F000, v180, v181, "Found no matching timers for target timer", v182, 2u);
    MEMORY[0x26D63A640](v182, -1, -1);
  }

  v183 = sub_2693995BC(v37);

  sub_26934B0F0();
  v185 = swift_allocError();
  if (v183)
  {
    *v184 = 5;
    swift_willThrow();
    *(v0 + 296) = *(v0 + 144);
    sub_26934B4F0(v0 + 296, &qword_28030CF40, &unk_2693B57D0);

    *(v0 + 264) = *(v0 + 176);
    sub_26934B4F0(v0 + 264, &qword_28030CF48, &qword_2693B6A70);
    if (v206 < 2)
    {
      goto LABEL_144;
    }

    goto LABEL_143;
  }

  *v184 = 6;
  swift_willThrow();
  *(v0 + 272) = *(v0 + 144);
  sub_26934B4F0(v0 + 272, &qword_28030CF40, &unk_2693B57D0);

  *(v0 + 280) = *(v0 + 176);
  sub_26934B4F0(v0 + 280, &qword_28030CF48, &qword_2693B6A70);
  if (v206 > 1)
  {
LABEL_143:
  }

LABEL_144:
  *(v0 + 344) = v185;
  v186 = v185;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF30, &qword_2693B5A10);
  if (swift_dynamicCast())
  {

    v187 = *(v0 + 352);
    if (v187 == 6)
    {
      v189 = *(v0 + 440);
      v188 = *(v0 + 448);
      v190 = *(v0 + 432);
      sub_2693B3410();
      v191 = sub_2693B3400();
      (*(v189 + 8))(v188, v190);
      if (v191)
      {
        v192 = *(v0 + 416);
        v193 = (*(v0 + 424) + qword_28030D540);
        swift_beginAccess();
        v194 = *__swift_project_boxed_opaque_existential_1(v193, v193[3]);
        v195 = swift_task_alloc();
        *(v0 + 488) = v195;
        *v195 = v0;
        v195[1] = sub_269393E98;

        return sub_269366980(v192);
      }

      swift_allocError();
      *v197 = 6;
    }

    else
    {
      swift_allocError();
      *v196 = v187;
    }

    swift_willThrow();
  }

  else
  {

    swift_willThrow();
  }

  v198 = *(v0 + 448);

  v199 = *(v0 + 8);

  return v199();
}

uint64_t sub_269393C80()
{
  v1 = *(v0 + 480);
  *(v0 + 344) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF30, &qword_2693B5A10);
  if (swift_dynamicCast())
  {

    v3 = *(v0 + 352);
    if (v3 == 6)
    {
      v5 = *(v0 + 440);
      v4 = *(v0 + 448);
      v6 = *(v0 + 432);
      sub_2693B3410();
      v7 = sub_2693B3400();
      (*(v5 + 8))(v4, v6);
      if (v7)
      {
        v8 = *(v0 + 416);
        v9 = (*(v0 + 424) + qword_28030D540);
        swift_beginAccess();
        v10 = *__swift_project_boxed_opaque_existential_1(v9, v9[3]);
        v11 = swift_task_alloc();
        *(v0 + 488) = v11;
        *v11 = v0;
        v11[1] = sub_269393E98;

        return sub_269366980(v8);
      }

      sub_26934B0F0();
      swift_allocError();
      *v14 = 6;
    }

    else
    {
      sub_26934B0F0();
      swift_allocError();
      *v13 = v3;
    }

    swift_willThrow();
  }

  else
  {

    swift_willThrow();
  }

  v15 = *(v0 + 448);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_269393E98(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 488);
  v6 = *v2;
  *(*v2 + 496) = v1;

  if (v1)
  {
    v7 = sub_2693941A8;
  }

  else
  {
    *(v4 + 504) = a1;
    v7 = sub_269393FC0;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_269393FC0()
{
  v1 = *(v0 + 496);
  v2 = sub_26938B998(*(v0 + 504));

  if (v2 >> 62)
  {
    result = sub_2693B3C70();
    if (result)
    {
LABEL_3:
      if ((v2 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x26D639EB0](0, v2);
      }

      else
      {
        if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        v4 = *(v2 + 32);
      }

      v5 = v4;
      if (v2 >> 62)
      {
        if (sub_2693B3C70() != 1)
        {
          goto LABEL_8;
        }
      }

      else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
      {
LABEL_8:

        type metadata accessor for SiriTimerResolutionResult();
        v6 = sub_2693B122C(v2);

LABEL_11:

        v8 = *(v0 + 448);

        v9 = *(v0 + 8);

        return v9(v6);
      }

      type metadata accessor for SiriTimerResolutionResult();
      v7 = v5;
      v6 = sub_2693B13DC(v5);

      goto LABEL_11;
    }
  }

  else
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }
  }

  sub_26934B0F0();
  swift_allocError();
  *v10 = 6;
  swift_willThrow();

  v11 = *(v0 + 448);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_2693941A8()
{
  v1 = *(v0 + 496);
  v2 = *(v0 + 448);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_269394234()
{
  v1 = v0[8];
  v2 = qword_280E266A0;
  v0[9] = qword_280E266A0;
  if (*(v1 + v2) == 1 && (v3 = qword_280E266B0, v0[10] = qword_280E266B0, (*(v1 + v3) & 1) == 0))
  {
    v12 = swift_task_alloc();
    v0[11] = v12;
    *v12 = v0;
    v12[1] = sub_269394440;
    v13 = v0[8];

    return sub_269395544();
  }

  else
  {
    if (qword_280E262E8 != -1)
    {
      swift_once();
    }

    v4 = sub_2693B3620();
    __swift_project_value_buffer(v4, qword_280E262F0);
    v5 = sub_2693B3610();
    v6 = sub_2693B39B0();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_26933F000, v5, v6, "allDevices does not need to be updated", v7, 2u);
      MEMORY[0x26D63A640](v7, -1, -1);
    }

    v8 = (v0[8] + qword_28030D540);
    swift_beginAccess();
    v9 = *(*__swift_project_boxed_opaque_existential_1(v8, v8[3]) + 16);
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
    }

    v14 = v0[1];

    return v14(v10);
  }
}

uint64_t sub_269394440(uint64_t a1)
{
  v2 = *(*v1 + 88);
  v4 = *v1;
  *(*v1 + 96) = a1;

  return MEMORY[0x2822009F8](sub_2693A08EC, 0, 0);
}

uint64_t sub_269394560()
{
  v1 = v0[8];
  v2 = qword_280E266A0;
  v0[9] = qword_280E266A0;
  if (*(v1 + v2) == 1 && (v3 = qword_280E266B0, v0[10] = qword_280E266B0, (*(v1 + v3) & 1) == 0))
  {
    v12 = swift_task_alloc();
    v0[11] = v12;
    *v12 = v0;
    v12[1] = sub_269394440;
    v13 = v0[8];

    return sub_269395544();
  }

  else
  {
    if (qword_280E262E8 != -1)
    {
      swift_once();
    }

    v4 = sub_2693B3620();
    __swift_project_value_buffer(v4, qword_280E262F0);
    v5 = sub_2693B3610();
    v6 = sub_2693B39B0();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_26933F000, v5, v6, "allDevices does not need to be updated", v7, 2u);
      MEMORY[0x26D63A640](v7, -1, -1);
    }

    v8 = (v0[8] + qword_28030D540);
    swift_beginAccess();
    v9 = *(*__swift_project_boxed_opaque_existential_1(v8, v8[3]) + 16);
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
    }

    v14 = v0[1];

    return v14(v10);
  }
}

uint64_t sub_26939478C()
{
  v1 = v0[8];
  v2 = qword_280E266A0;
  v0[9] = qword_280E266A0;
  if (*(v1 + v2) == 1 && (v3 = qword_280E266B0, v0[10] = qword_280E266B0, (*(v1 + v3) & 1) == 0))
  {
    v12 = swift_task_alloc();
    v0[11] = v12;
    *v12 = v0;
    v12[1] = sub_269394440;
    v13 = v0[8];

    return sub_269395544();
  }

  else
  {
    if (qword_280E262E8 != -1)
    {
      swift_once();
    }

    v4 = sub_2693B3620();
    __swift_project_value_buffer(v4, qword_280E262F0);
    v5 = sub_2693B3610();
    v6 = sub_2693B39B0();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_26933F000, v5, v6, "allDevices does not need to be updated", v7, 2u);
      MEMORY[0x26D63A640](v7, -1, -1);
    }

    v8 = (v0[8] + qword_28030D540);
    swift_beginAccess();
    v9 = *(*__swift_project_boxed_opaque_existential_1(v8, v8[3]) + 16);
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
    }

    v14 = v0[1];

    return v14(v10);
  }
}

uint64_t sub_2693949B8()
{
  v1 = v0[8];
  v2 = qword_280E266A0;
  v0[9] = qword_280E266A0;
  if (*(v1 + v2) == 1 && (v3 = qword_280E266B0, v0[10] = qword_280E266B0, (*(v1 + v3) & 1) == 0))
  {
    v12 = swift_task_alloc();
    v0[11] = v12;
    *v12 = v0;
    v12[1] = sub_269394440;
    v13 = v0[8];

    return sub_269395544();
  }

  else
  {
    if (qword_280E262E8 != -1)
    {
      swift_once();
    }

    v4 = sub_2693B3620();
    __swift_project_value_buffer(v4, qword_280E262F0);
    v5 = sub_2693B3610();
    v6 = sub_2693B39B0();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_26933F000, v5, v6, "allDevices does not need to be updated", v7, 2u);
      MEMORY[0x26D63A640](v7, -1, -1);
    }

    v8 = (v0[8] + qword_28030D540);
    swift_beginAccess();
    v9 = *(*__swift_project_boxed_opaque_existential_1(v8, v8[3]) + 16);
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
    }

    v14 = v0[1];

    return v14(v10);
  }
}

uint64_t sub_269394BE4()
{
  v1 = v0[8];
  v2 = qword_280E266A0;
  v0[9] = qword_280E266A0;
  if (*(v1 + v2) == 1 && (v3 = qword_280E266B0, v0[10] = qword_280E266B0, (*(v1 + v3) & 1) == 0))
  {
    v12 = swift_task_alloc();
    v0[11] = v12;
    *v12 = v0;
    v12[1] = sub_269394440;
    v13 = v0[8];

    return sub_269395544();
  }

  else
  {
    if (qword_280E262E8 != -1)
    {
      swift_once();
    }

    v4 = sub_2693B3620();
    __swift_project_value_buffer(v4, qword_280E262F0);
    v5 = sub_2693B3610();
    v6 = sub_2693B39B0();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_26933F000, v5, v6, "allDevices does not need to be updated", v7, 2u);
      MEMORY[0x26D63A640](v7, -1, -1);
    }

    v8 = (v0[8] + qword_28030D540);
    swift_beginAccess();
    v9 = *(*__swift_project_boxed_opaque_existential_1(v8, v8[3]) + 16);
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
    }

    v14 = v0[1];

    return v14(v10);
  }
}

uint64_t sub_269394E10()
{
  v1 = v0[8];
  v2 = qword_280E266A0;
  v0[9] = qword_280E266A0;
  if (*(v1 + v2) == 1 && (v3 = qword_280E266B0, v0[10] = qword_280E266B0, (*(v1 + v3) & 1) == 0))
  {
    v12 = swift_task_alloc();
    v0[11] = v12;
    *v12 = v0;
    v12[1] = sub_269394440;
    v13 = v0[8];

    return sub_269395544();
  }

  else
  {
    if (qword_280E262E8 != -1)
    {
      swift_once();
    }

    v4 = sub_2693B3620();
    __swift_project_value_buffer(v4, qword_280E262F0);
    v5 = sub_2693B3610();
    v6 = sub_2693B39B0();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_26933F000, v5, v6, "allDevices does not need to be updated", v7, 2u);
      MEMORY[0x26D63A640](v7, -1, -1);
    }

    v8 = (v0[8] + qword_28030D540);
    swift_beginAccess();
    v9 = *(*__swift_project_boxed_opaque_existential_1(v8, v8[3]) + 16);
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
    }

    v14 = v0[1];

    return v14(v10);
  }
}

uint64_t sub_26939503C()
{
  v1 = v0[8];
  v2 = qword_280E266A0;
  v0[9] = qword_280E266A0;
  if (*(v1 + v2) == 1 && (v3 = qword_280E266B0, v0[10] = qword_280E266B0, (*(v1 + v3) & 1) == 0))
  {
    v12 = swift_task_alloc();
    v0[11] = v12;
    *v12 = v0;
    v12[1] = sub_269395248;
    v13 = v0[8];

    return sub_269395B2C();
  }

  else
  {
    if (qword_280E262E8 != -1)
    {
      swift_once();
    }

    v4 = sub_2693B3620();
    __swift_project_value_buffer(v4, qword_280E262F0);
    v5 = sub_2693B3610();
    v6 = sub_2693B39B0();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_26933F000, v5, v6, "allDevices does not need to be updated", v7, 2u);
      MEMORY[0x26D63A640](v7, -1, -1);
    }

    v8 = (v0[8] + qword_28030D540);
    swift_beginAccess();
    v9 = *(*__swift_project_boxed_opaque_existential_1(v8, v8[3]) + 16);
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
    }

    v14 = v0[1];

    return v14(v10);
  }
}

uint64_t sub_269395248(uint64_t a1)
{
  v2 = *(*v1 + 88);
  v4 = *v1;
  *(*v1 + 96) = a1;

  return MEMORY[0x2822009F8](sub_269395348, 0, 0);
}

uint64_t sub_269395348()
{
  v1 = v0[12];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];
  v5 = v4 + qword_28030D540;
  swift_beginAccess();
  v6 = *(v5 + 24);
  v7 = *(v5 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v5, v6);
  (*(v7 + 16))(v1, v6, v7);
  swift_endAccess();
  *(v4 + v2) = 1;
  *(v4 + v3) = 0;
  if (qword_280E262E8 != -1)
  {
    swift_once();
  }

  v8 = sub_2693B3620();
  __swift_project_value_buffer(v8, qword_280E262F0);
  v9 = sub_2693B3610();
  v10 = sub_2693B39B0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_26933F000, v9, v10, "allDevices updating list of available device targets", v11, 2u);
    MEMORY[0x26D63A640](v11, -1, -1);
  }

  v12 = (v0[8] + qword_28030D540);
  swift_beginAccess();
  v13 = *(*__swift_project_boxed_opaque_existential_1(v12, v12[3]) + 16);
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  v16 = v0[1];

  return v16(v14);
}

uint64_t sub_269395544()
{
  v1[7] = v0;
  v2 = sub_2693B31C0();
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v4 = *(v3 + 64) + 15;
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_269395604, 0, 0);
}

uint64_t sub_269395604()
{
  if (*(v0[7] + qword_280E266A0) == 1)
  {
    if (qword_280E262E8 != -1)
    {
      swift_once();
    }

    v1 = sub_2693B3620();
    v0[11] = __swift_project_value_buffer(v1, qword_280E262F0);
    v2 = sub_2693B3610();
    v3 = sub_2693B39B0();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_26933F000, v2, v3, "allTargetableDevices() fetching from #hal", v4, 2u);
      MEMORY[0x26D63A640](v4, -1, -1);
    }

    v5 = v0[7];

    v0[12] = qword_280E26A48;
    v6 = *(MEMORY[0x277D61828] + 4);
    v7 = swift_task_alloc();
    v0[13] = v7;
    *v7 = v0;
    v7[1] = sub_2693958C4;

    return MEMORY[0x2821C82B8]();
  }

  else
  {
    if (qword_280E262E8 != -1)
    {
      swift_once();
    }

    v8 = sub_2693B3620();
    __swift_project_value_buffer(v8, qword_280E262F0);
    v9 = sub_2693B3610();
    v10 = sub_2693B39B0();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_26933F000, v9, v10, "allTargetableDevices() using previously fetched devices", v11, 2u);
      MEMORY[0x26D63A640](v11, -1, -1);
    }

    v12 = v0[7];

    v13 = (v12 + qword_28030D540);
    swift_beginAccess();
    v14 = __swift_project_boxed_opaque_existential_1(v13, v13[3]);
    v15 = *(*v14 + 16);
    if (v15)
    {
      v16 = *(*v14 + 16);
    }

    else
    {
      v15 = MEMORY[0x277D84F90];
    }

    v17 = v0[10];

    v18 = v0[1];

    return v18(v15);
  }
}

uint64_t sub_2693958C4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 56);
  v9 = *v1;
  *(v2 + 112) = a1;

  v6 = *(MEMORY[0x277D61830] + 4);
  v7 = swift_task_alloc();
  *(v2 + 120) = v7;
  *v7 = v9;
  v7[1] = sub_269395A2C;

  return MEMORY[0x2821C82C0]();
}

uint64_t sub_269395A2C(uint64_t a1)
{
  v2 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 128) = a1;

  return MEMORY[0x2822009F8](sub_2693A08F8, 0, 0);
}

uint64_t sub_269395B2C()
{
  v1[7] = v0;
  v2 = sub_2693B31C0();
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v4 = *(v3 + 64) + 15;
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_269395BEC, 0, 0);
}

uint64_t sub_269395BEC()
{
  if (*(v0[7] + qword_280E266A0) == 1)
  {
    if (qword_280E262E8 != -1)
    {
      swift_once();
    }

    v1 = sub_2693B3620();
    v0[11] = __swift_project_value_buffer(v1, qword_280E262F0);
    v2 = sub_2693B3610();
    v3 = sub_2693B39B0();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_26933F000, v2, v3, "allTargetableDevices() fetching from #hal", v4, 2u);
      MEMORY[0x26D63A640](v4, -1, -1);
    }

    v5 = v0[7];

    v0[12] = qword_280E26A48;
    v6 = *(MEMORY[0x277D61828] + 4);
    v7 = swift_task_alloc();
    v0[13] = v7;
    *v7 = v0;
    v7[1] = sub_269395EAC;

    return MEMORY[0x2821C82B8]();
  }

  else
  {
    if (qword_280E262E8 != -1)
    {
      swift_once();
    }

    v8 = sub_2693B3620();
    __swift_project_value_buffer(v8, qword_280E262F0);
    v9 = sub_2693B3610();
    v10 = sub_2693B39B0();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_26933F000, v9, v10, "allTargetableDevices() using previously fetched devices", v11, 2u);
      MEMORY[0x26D63A640](v11, -1, -1);
    }

    v12 = v0[7];

    v13 = (v12 + qword_28030D540);
    swift_beginAccess();
    v14 = __swift_project_boxed_opaque_existential_1(v13, v13[3]);
    v15 = *(*v14 + 16);
    if (v15)
    {
      v16 = *(*v14 + 16);
    }

    else
    {
      v15 = MEMORY[0x277D84F90];
    }

    v17 = v0[10];

    v18 = v0[1];

    return v18(v15);
  }
}

uint64_t sub_269395EAC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 56);
  v9 = *v1;
  *(v2 + 112) = a1;

  v6 = *(MEMORY[0x277D61830] + 4);
  v7 = swift_task_alloc();
  *(v2 + 120) = v7;
  *v7 = v9;
  v7[1] = sub_269396014;

  return MEMORY[0x2821C82C0]();
}

uint64_t sub_269396014(uint64_t a1)
{
  v2 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 128) = a1;

  return MEMORY[0x2822009F8](sub_269396114, 0, 0);
}

uint64_t sub_269396114()
{
  v58 = v0;
  v1 = v0[16];
  v2 = (v1 >> 62);
  if (v1 >> 62)
  {
LABEL_22:
    v3 = sub_2693B3C70();
    v54 = v0;
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v46 = v2;
      v47 = v1;
      v4 = 0;
      v50 = v1 & 0xC000000000000001;
      v52 = v0[14];
      v48 = v0[16] + 32;
      v49 = v1 & 0xFFFFFFFFFFFFFF8;
      v2 = (v0[9] + 8);
      while (1)
      {
        if (v50)
        {
          v5 = MEMORY[0x26D639EB0](v4, v0[16]);
          v1 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_17:
            __break(1u);
LABEL_18:
            v3 = 0;
            v2 = v46;
            v1 = v47;
            goto LABEL_24;
          }
        }

        else
        {
          if (v4 >= *(v49 + 16))
          {
            __break(1u);
            goto LABEL_22;
          }

          v5 = *(v48 + 8 * v4);
          v1 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_17;
          }
        }

        v6 = v0[10];
        v7 = v0[8];
        v8 = v5;
        v9 = [v5 uniqueIdentifier];
        sub_2693B31A0();

        v10 = sub_2693B3180();
        v12 = v11;
        (*v2)(v6, v7);
        if (v52 && (v13 = sub_2693B3600(), v14))
        {
          if (v10 == v13 && v14 == v12)
          {

LABEL_20:
            v2 = v46;
            v1 = v47;
            v0 = v54;
            v3 = v8;
            goto LABEL_24;
          }

          v15 = sub_2693B3CE0();

          if (v15)
          {
            goto LABEL_20;
          }
        }

        else
        {
        }

        ++v4;
        v0 = v54;
        if (v1 == v3)
        {
          goto LABEL_18;
        }
      }
    }
  }

  v52 = v0[14];
LABEL_24:
  v16 = v0[11];
  v17 = v52;
  v18 = sub_2693B3610();
  v19 = sub_2693B39B0();

  v51 = v17;
  if (os_log_type_enabled(v18, v19))
  {
    v20 = v0[14];
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v57[0] = v22;
    *v21 = 136315138;
    if (v20)
    {
      v23 = sub_2693B35F0();
    }

    else
    {
      v23 = 0;
      v24 = 0;
    }

    v54[5] = v23;
    v54[6] = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CFC8, &qword_2693B59A0);
    v40 = sub_2693B3760();
    v42 = sub_26934CA40(v40, v41, v57);

    *(v21 + 4) = v42;
    _os_log_impl(&dword_26933F000, v18, v19, "Found local device with identifier: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x26D63A640](v22, -1, -1);
    MEMORY[0x26D63A640](v21, -1, -1);

    v17 = v51;
    if (!v2)
    {
LABEL_42:
      v28 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v25 = v54;
      if (!v28)
      {
        goto LABEL_43;
      }

      goto LABEL_31;
    }
  }

  else
  {

    if (!v2)
    {
      goto LABEL_42;
    }
  }

  v25 = v54;
  v26 = v54[16];
  if (v1 < 0)
  {
    v27 = v54[16];
  }

  v28 = sub_2693B3C70();
  if (!v28)
  {
LABEL_43:
    v43 = v25[16];

    v39 = MEMORY[0x277D84F90];
LABEL_44:
    v44 = v25[10];

    v45 = v25[1];

    return v45(v39);
  }

LABEL_31:
  v55 = MEMORY[0x277D84F90];
  result = sub_2693B3C20();
  if ((v28 & 0x8000000000000000) == 0)
  {
    v30 = 0;
    v31 = v1 & 0xC000000000000001;
    v53 = v1 & 0xFFFFFFFFFFFFFF8;
    v32 = v25[16] + 32;
    while (1)
    {
      v33 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v31)
      {
        v34 = MEMORY[0x26D639EB0](v30, v25[16]);
      }

      else
      {
        if (v30 >= *(v53 + 16))
        {
          goto LABEL_48;
        }

        v34 = *(v32 + 8 * v30);
      }

      v35 = v34;
      v36 = v25[14];
      v57[0] = v34;
      sub_2693A20B4(v57, v36, v3, &v56);

      sub_2693B3C00();
      v37 = *(v55 + 16);
      sub_2693B3C30();
      v25 = v54;
      sub_2693B3C40();
      result = sub_2693B3C10();
      ++v30;
      if (v33 == v28)
      {
        v38 = v54[16];

        v39 = v55;
        goto LABEL_44;
      }
    }

    __break(1u);
LABEL_48:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_2693965F4(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2693B3C70())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x26D639EB0](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

BOOL sub_269396708(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = *(a2 + 40);
  sub_2693B3DB0();
  MEMORY[0x26D63A0A0](a1);
  v5 = sub_2693B3DD0();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = *(*(a2 + 48) + 8 * v7);
    result = v9 == a1;
    if (v9 == a1)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

void sub_2693967D4(void *a1@<X0>, void *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  if (qword_280E26288 != -1)
  {
LABEL_170:
    swift_once();
  }

  v7 = sub_2693B3620();
  __swift_project_value_buffer(v7, qword_280E26290);
  v8 = a1;
  v9 = sub_2693B3610();
  v10 = sub_2693B39B0();

  v200 = a4;
  v192 = v8;
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v202 = v12;
    *v11 = 136315138;
    v13 = v8;
    v14 = [v13 description];
    v15 = sub_2693B3750();
    v17 = v16;

    a4 = v200;
    v18 = sub_26934CA40(v15, v17, &v202);

    *(v11 + 4) = v18;
    _os_log_impl(&dword_26933F000, v9, v10, "Matching timers against target: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x26D63A640](v12, -1, -1);
    MEMORY[0x26D63A640](v11, -1, -1);
  }

  v19 = MEMORY[0x277D84F90];
  v188 = sub_2693A83E8(MEMORY[0x277D84F90]);
  v187 = sub_2693A83E8(v19);
  v186 = sub_2693A83E8(v19);
  v185 = sub_2693A83E8(v19);
  a1 = (a4 + 64);
  v20 = 1 << *(a4 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(a4 + 64);
  v23 = (v20 + 63) >> 6;

  v24 = 0;
  for (i = (a4 + 64); ; a1 = i)
  {
    if (!v22)
    {
      while (1)
      {
        v25 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_169;
        }

        if (v25 >= v23)
        {

          v199 = 0;
          goto LABEL_18;
        }

        v22 = *(a1 + v25);
        ++v24;
        if (v22)
        {
          v24 = v25;
          break;
        }
      }
    }

    v199 = *(*(a4 + 48) + ((v24 << 9) | (8 * __clz(__rbit64(v22)))));
    v26 = [v199 isRespondingDevice];
    sub_2693608D8(0, &qword_280E261B8, 0x277CCABB0);
    v27 = sub_2693B3A30();
    v28 = v27;
    if (!v26)
    {

      goto LABEL_8;
    }

    v29 = sub_2693B3A50();

    if (v29)
    {
      break;
    }

LABEL_8:
    v22 &= v22 - 1;

    a4 = v200;
  }

  a4 = v200;

  a1 = i;
LABEL_18:
  v30 = 1 << *(a4 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & *(a4 + 64);
  v33 = (v30 + 63) >> 6;

  v34 = 0;
  v35 = v197;
  v191 = v33;
  while (v32)
  {
    while (1)
    {
LABEL_25:
      v37 = (v34 << 9) | (8 * __clz(__rbit64(v32)));
      v38 = *(*(a4 + 56) + v37);
      v39 = *(*(a4 + 48) + v37);

      v40 = sub_2693B3610();
      v41 = sub_2693B39B0();

      v201 = v39;
      if (os_log_type_enabled(v40, v41))
      {
        v197 = v35;
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v206 = v43;
        *v42 = 134218242;
        v44 = v38 >> 62 ? sub_2693B3C70() : *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v194 = v32;
        *(v42 + 4) = v44;
        *(v42 + 12) = 2080;
        v45 = [v39 accessoryId];
        if (v45)
        {
          v46 = v45;
          v47 = sub_2693B3750();
          v49 = v48;
        }

        else
        {
          v47 = 0;
          v49 = 0;
        }

        v202 = v47;
        v203 = v49;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CFC8, &qword_2693B59A0);
        v50 = sub_2693B3760();
        v52 = sub_26934CA40(v50, v51, &v206);

        *(v42 + 14) = v52;
        _os_log_impl(&dword_26933F000, v40, v41, "Matching %ld for device %s", v42, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v43);
        MEMORY[0x26D63A640](v43, -1, -1);
        MEMORY[0x26D63A640](v42, -1, -1);

        a4 = v200;
        v32 = v194;
        v35 = v197;
      }

      else
      {
      }

      v32 &= v32 - 1;
      v53 = sub_269397D48(v192, a3 & 1, v38);
      if (!v35)
      {
        break;
      }

      v206 = v35;
      v55 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF30, &qword_2693B5A10);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_45;
      }

      if (v205 != 6)
      {
        sub_26934ADAC(v205);
LABEL_45:

        v72 = v35;
        v73 = sub_2693B3610();
        v74 = sub_2693B39A0();

        if (os_log_type_enabled(v73, v74))
        {
          v75 = swift_slowAlloc();
          v76 = v32;
          v77 = swift_slowAlloc();
          v202 = v77;
          *v75 = 136315138;
          v206 = v35;
          v78 = v35;
          v79 = sub_2693B3760();
          v81 = sub_26934CA40(v79, v80, &v202);

          *(v75 + 4) = v81;
          a4 = v200;
          _os_log_impl(&dword_26933F000, v73, v74, "Error matching timers: %s", v75, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v77);
          v82 = v77;
          v32 = v76;
          MEMORY[0x26D63A640](v82, -1, -1);
          MEMORY[0x26D63A640](v75, -1, -1);
        }

        else
        {
        }

        v35 = 0;
        goto LABEL_151;
      }

      v56 = v201;
      v57 = sub_2693B3610();
      v58 = sub_2693B39B0();

      if (os_log_type_enabled(v57, v58))
      {
        v195 = v32;
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v204 = v60;
        *v59 = 136315138;
        v61 = [v56 accessoryId];
        if (v61)
        {
          v62 = v61;
          v63 = sub_2693B3750();
          v65 = v64;
        }

        else
        {
          v63 = 0;
          v65 = 0;
        }

        v202 = v63;
        v203 = v65;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CFC8, &qword_2693B59A0);
        v88 = sub_2693B3760();
        v90 = sub_26934CA40(v88, v89, &v204);

        *(v59 + 4) = v90;
        _os_log_impl(&dword_26933F000, v57, v58, "No timers on device %s", v59, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v60);
        MEMORY[0x26D63A640](v60, -1, -1);
        MEMORY[0x26D63A640](v59, -1, -1);

        a4 = v200;
        v32 = v195;
      }

      else
      {
      }

      a1 = i;
      if (!a2)
      {
        v91 = [v56 isRespondingDevice];
        sub_2693608D8(0, &qword_280E261B8, 0x277CCABB0);
        v92 = sub_2693B3A30();
        if (v91)
        {
          sub_2693B3A50();

          v92 = v91;
        }

        a1 = i;
      }

      v35 = 0;
      v33 = v191;
      if (!v32)
      {
        goto LABEL_21;
      }
    }

    v66 = v53;
    v67 = v54;
    v196 = v32;
    v197 = 0;

    if (v66 >> 62)
    {
      v189 = sub_2693B3C70();
      if (v189)
      {
LABEL_41:

        v68 = sub_2693B3610();
        v69 = sub_2693B39B0();
        if (!os_log_type_enabled(v68, v69))
        {

          goto LABEL_67;
        }

        v70 = swift_slowAlloc();
        *v70 = 134217984;
        if (v66 >> 62)
        {
          v71 = sub_2693B3C70();
        }

        else
        {
          v71 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v70 + 4) = v71;

        v83 = v69;
        v84 = v68;
        v85 = "Found %ld matching timers";
        v86 = v70;
        v87 = 12;
        goto LABEL_65;
      }
    }

    else
    {
      v189 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v189)
      {
        goto LABEL_41;
      }
    }

    v68 = sub_2693B3610();
    v93 = sub_2693B39B0();
    if (os_log_type_enabled(v68, v93))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      v83 = v93;
      v84 = v68;
      v85 = "No matching timers found";
      v86 = v70;
      v87 = 2;
LABEL_65:
      _os_log_impl(&dword_26933F000, v84, v83, v85, v86, v87);
      MEMORY[0x26D63A640](v70, -1, -1);
    }

LABEL_67:
    if (!a2)
    {
      v107 = [v201 isRespondingDevice];
      sub_2693608D8(0, &qword_280E261B8, 0x277CCABB0);
      v108 = sub_2693B3A30();
      v109 = v108;
      if (v107)
      {
        v110 = sub_2693B3A50();

        if (v110)
        {
          v111 = sub_2693B3610();
          v112 = sub_2693B39B0();
          if (os_log_type_enabled(v111, v112))
          {
            v113 = swift_slowAlloc();
            *v113 = 0;
            _os_log_impl(&dword_26933F000, v111, v112, "Assigning matched to local device", v113, 2u);
            MEMORY[0x26D63A640](v113, -1, -1);
          }

          v32 = v196;
          if (v189)
          {
            goto LABEL_77;
          }

LABEL_88:

          goto LABEL_89;
        }
      }

      else
      {
      }

      v122 = [v201 isInRespondingRoom];
      v123 = sub_2693B3A30();
      v124 = v123;
      if (!v122)
      {

        v32 = v196;
LABEL_93:
        v131 = sub_2693B3610();
        v132 = sub_2693B39B0();
        if (os_log_type_enabled(v131, v132))
        {
          v133 = swift_slowAlloc();
          *v133 = 0;
          _os_log_impl(&dword_26933F000, v131, v132, "Assigning matched to remote device for untargeted matching", v133, 2u);
          MEMORY[0x26D63A640](v133, -1, -1);
        }

        if (v189)
        {
          v134 = v201;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v202 = v186;
          sub_26939D1C8(v66, v134, isUniquelyReferenced_nonNull_native);

          v186 = v202;
        }

        else
        {
        }

        v35 = 0;
        if (v67 >> 62)
        {
          if (!sub_2693B3C70())
          {
LABEL_149:

            goto LABEL_150;
          }
        }

        else if (!*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_149;
        }

        v136 = swift_isUniquelyReferenced_nonNull_native();
        v202 = v185;
        v137 = v201;
        sub_26939D1C8(v67, v201, v136);
        goto LABEL_129;
      }

      v125 = sub_2693B3A50();

      v32 = v196;
      if ((v125 & 1) == 0)
      {
        goto LABEL_93;
      }

      v126 = sub_2693B3610();
      v127 = sub_2693B39B0();
      if (os_log_type_enabled(v126, v127))
      {
        v128 = swift_slowAlloc();
        *v128 = 0;
        _os_log_impl(&dword_26933F000, v126, v127, "Assigning matched (in same room) to local device", v128, 2u);
        MEMORY[0x26D63A640](v128, -1, -1);
      }

      if (!v189)
      {
        goto LABEL_88;
      }

LABEL_77:
      v114 = v201;
      v115 = swift_isUniquelyReferenced_nonNull_native();
      v202 = v188;
      sub_26939D1C8(v66, v114, v115);

      v188 = v202;
LABEL_89:
      v35 = 0;
      if (v67 >> 62)
      {
        if (!sub_2693B3C70())
        {
          goto LABEL_149;
        }
      }

      else if (!*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_149;
      }

      v129 = swift_isUniquelyReferenced_nonNull_native();
      v202 = v187;
      v130 = v201;
      sub_26939D1C8(v67, v201, v129);
      goto LABEL_109;
    }

    v94 = a2;
    if ((_s21SiriTimeTimerInternal0A6DeviceC2eeoiySbAC_ACtFZ_0(v201, v94) & 1) == 0)
    {
      v116 = v94;
      v183 = v67 >> 62;
      if ([v94 targetMatchType] != 1)
      {
        goto LABEL_121;
      }

      v117 = [v201 roomID];
      if (v117)
      {
        v118 = v117;
        v119 = sub_2693B3750();
        v121 = v120;
      }

      else
      {
        v119 = 0;
        v121 = 0;
      }

      v144 = [v116 roomID];
      if (v144)
      {
        v145 = v144;
        v146 = sub_2693B3750();
        v148 = v147;

        if (v121)
        {
          v32 = v196;
          if (!v148)
          {
            goto LABEL_120;
          }

          if (v119 == v146 && v121 == v148)
          {
          }

          else
          {
            v155 = sub_2693B3CE0();

            if ((v155 & 1) == 0)
            {
              goto LABEL_121;
            }
          }
        }

        else
        {
          v32 = v196;
          if (v148)
          {
LABEL_120:

LABEL_121:
            v149 = sub_2693B3610();
            v150 = sub_2693B39B0();
            if (os_log_type_enabled(v149, v150))
            {
              v151 = swift_slowAlloc();
              *v151 = 0;
              _os_log_impl(&dword_26933F000, v149, v150, "Assigning matched to remote device for targeted matching", v151, 2u);
              MEMORY[0x26D63A640](v151, -1, -1);
            }

            a4 = v200;
            if (v189)
            {
              v152 = v201;
              v153 = swift_isUniquelyReferenced_nonNull_native();
              v202 = v186;
              sub_26939D1C8(v66, v152, v153);

              v186 = v202;
            }

            else
            {
            }

            v35 = 0;
            v94 = v116;
            if (v183)
            {
              if (!sub_2693B3C70())
              {
                goto LABEL_141;
              }
            }

            else if (!*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_141;
            }

            v154 = swift_isUniquelyReferenced_nonNull_native();
            v202 = v185;
            v137 = v201;
            sub_26939D1C8(v67, v201, v154);

LABEL_129:
            v185 = v202;
            goto LABEL_151;
          }
        }
      }

      else if (v121)
      {
        goto LABEL_120;
      }

      v156 = v201;
      v157 = sub_2693B3610();
      v158 = sub_2693B39B0();

      v201 = v156;
      if (os_log_type_enabled(v157, v158))
      {
        v181 = v67;
        v159 = swift_slowAlloc();
        v179 = swift_slowAlloc();
        v206 = v179;
        *v159 = 136315138;
        v160 = [v156 roomName];
        if (v160)
        {
          v161 = v160;
          v162 = sub_2693B3750();
          v164 = v163;
        }

        else
        {
          v162 = 0;
          v164 = 0;
        }

        v202 = v162;
        v203 = v164;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CFC8, &qword_2693B59A0);
        v167 = sub_2693B3760();
        v169 = sub_26934CA40(v167, v168, &v206);

        *(v159 + 4) = v169;
        _os_log_impl(&dword_26933F000, v157, v158, "Assigning matched to target room %s", v159, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v179);
        MEMORY[0x26D63A640](v179, -1, -1);
        MEMORY[0x26D63A640](v159, -1, -1);

        a4 = v200;
        v32 = v196;
        v67 = v181;
        if (!v189)
        {
LABEL_138:

LABEL_139:
          v94 = v116;
          v35 = 0;
          if (v183)
          {
            if (!sub_2693B3C70())
            {
LABEL_141:

LABEL_150:
              goto LABEL_151;
            }
          }

          else if (!*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_141;
          }

          goto LABEL_108;
        }
      }

      else
      {

        a4 = v200;
        if (!v189)
        {
          goto LABEL_138;
        }
      }

      v165 = v201;
      v166 = swift_isUniquelyReferenced_nonNull_native();
      v202 = v188;
      sub_26939D1C8(v66, v165, v166);

      v188 = v202;
      goto LABEL_139;
    }

    v95 = v201;
    v96 = sub_2693B3610();
    v97 = sub_2693B39B0();

    v201 = v95;
    if (os_log_type_enabled(v96, v97))
    {
      v180 = v67;
      v182 = v94;
      v98 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v100 = v95;
      v101 = v99;
      v206 = v99;
      *v98 = 136315138;
      v102 = [v100 accessoryId];
      if (v102)
      {
        v103 = v102;
        v104 = sub_2693B3750();
        v106 = v105;
      }

      else
      {
        v104 = 0;
        v106 = 0;
      }

      v202 = v104;
      v203 = v106;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CFC8, &qword_2693B59A0);
      v138 = sub_2693B3760();
      v140 = sub_26934CA40(v138, v139, &v206);

      *(v98 + 4) = v140;
      _os_log_impl(&dword_26933F000, v96, v97, "Assigning matched to target device %s", v98, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v101);
      MEMORY[0x26D63A640](v101, -1, -1);
      MEMORY[0x26D63A640](v98, -1, -1);

      v32 = v196;
      v67 = v180;
      v94 = v182;
      v95 = v201;
    }

    else
    {
    }

    a4 = v200;
    if (v189)
    {
      v141 = v95;
      v142 = swift_isUniquelyReferenced_nonNull_native();
      v202 = v188;
      sub_26939D1C8(v66, v141, v142);

      v188 = v202;
    }

    else
    {
    }

    v35 = 0;
    if (v67 >> 62)
    {
      if (!sub_2693B3C70())
      {
        goto LABEL_141;
      }
    }

    else if (!*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_141;
    }

LABEL_108:
    v143 = swift_isUniquelyReferenced_nonNull_native();
    v202 = v187;
    v130 = v201;
    sub_26939D1C8(v67, v201, v143);

LABEL_109:
    v187 = v202;
LABEL_151:
    a1 = i;
    v33 = v191;
  }

LABEL_21:
  while (2)
  {
    v36 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
LABEL_169:
      __break(1u);
      goto LABEL_170;
    }

    if (v36 < v33)
    {
      v32 = *(a1 + v36);
      ++v34;
      if (v32)
      {
        v34 = v36;
        goto LABEL_25;
      }

      continue;
    }

    break;
  }

  v170 = a2;
  v171 = a2;
  if (!a2)
  {
    if (v199)
    {
      v172 = v199;
      v170 = 0;
      v171 = v199;
    }

    else
    {
      v171 = 0;
    }
  }

  v173 = v170;

  v174 = sub_2693995BC(v188);

  if (v174)
  {

    goto LABEL_162;
  }

  v175 = sub_2693995BC(v187);

  if (v175)
  {
LABEL_162:

    goto LABEL_163;
  }

  v176 = sub_2693995BC(v186);

  if (v176)
  {
LABEL_163:

LABEL_164:

    *a5 = v171;
    a5[1] = v188;
    a5[2] = v187;
    a5[3] = v186;
    a5[4] = v185;
    return;
  }

  v177 = sub_2693995BC(v185);

  if (v177)
  {
    goto LABEL_164;
  }

  sub_26934B0F0();
  swift_allocError();
  *v178 = 6;
  swift_willThrow();
}

uint64_t sub_269397D48(void *a1, int a2, unint64_t a3)
{
  v70 = a2;
  v69 = a1;
  v71 = sub_2693B35B0();
  v4 = *(v71 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v71);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = MEMORY[0x277D84F90];
  v80 = MEMORY[0x277D84F90];
  v81 = MEMORY[0x277D84F90];
  v77 = a3;
  if (a3 >> 62)
  {
LABEL_49:
    v9 = sub_2693B3C70();
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_50:
    v59 = MEMORY[0x277D84F90];
    v64 = MEMORY[0x277D84F90];
    v58 = MEMORY[0x277D84F90];
LABEL_51:
    v48 = v58;
    if (v58 >> 62)
    {
      v49 = sub_2693B3C70();
    }

    else
    {
      v49 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v50 = v64;
    v51 = v59;
    if (!v49)
    {
      if (v59 >> 62)
      {
        if (sub_2693B3C70())
        {
          goto LABEL_58;
        }
      }

      else if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_58;
      }

      if (!(v50 >> 62))
      {
        if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_58;
        }

LABEL_68:

        sub_26934B0F0();
        swift_allocError();
        *v53 = 6;
        swift_willThrow();
        return v51;
      }

      if (!sub_2693B3C70())
      {
        goto LABEL_68;
      }
    }

LABEL_58:
    if (v48 >> 62)
    {
      if (sub_2693B3C70())
      {
        goto LABEL_60;
      }
    }

    else if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_60:
      v79 = v51;
      sub_26939C244(v50);
      return v48;
    }

    return v51;
  }

  v9 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
    goto LABEL_50;
  }

LABEL_3:
  v10 = 0;
  v75 = *MEMORY[0x277D29768];
  v76 = v77 & 0xC000000000000001;
  v65 = v77 & 0xFFFFFFFFFFFFFF8;
  v68 = (v4 + 11);
  v67 = *MEMORY[0x277D618C8];
  v63 = *MEMORY[0x277D61898];
  v62 = (v4 + 12);
  v61 = *MEMORY[0x277D618A8];
  v60 = *MEMORY[0x277D618B8];
  v57 = *MEMORY[0x277D618C0];
  v56 = *MEMORY[0x277D618A0];
  v55 = *MEMORY[0x277D618B0];
  *&v6 = 136315138;
  v66 = v6;
  v59 = MEMORY[0x277D84F90];
  v64 = MEMORY[0x277D84F90];
  v58 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v76)
    {
      v11 = MEMORY[0x26D639EB0](v10, v77);
    }

    else
    {
      if (v10 >= *(v65 + 16))
      {
        goto LABEL_48;
      }

      v11 = *(v77 + 8 * v10 + 32);
    }

    v4 = v11;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v78 = v10 + 1;
    if (qword_280E26288 != -1)
    {
      swift_once();
    }

    v12 = sub_2693B3620();
    __swift_project_value_buffer(v12, qword_280E26290);
    v13 = v4;
    v14 = sub_2693B3610();
    v15 = sub_2693B39B0();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v72 = v16;
      v73 = swift_slowAlloc();
      v79 = v73;
      *v16 = v66;
      v17 = v13;
      v18 = v8;
      v19 = [v17 description];
      v20 = v9;
      v21 = sub_2693B3750();
      v74 = v10;
      v23 = v22;

      v8 = v18;
      v24 = v21;
      v9 = v20;
      v25 = sub_26934CA40(v24, v23, &v79);
      v10 = v74;

      v26 = v72;
      *(v72 + 1) = v25;
      v27 = v26;
      _os_log_impl(&dword_26933F000, v14, v15, "Testing timer match %s", v26, 0xCu);
      v28 = v73;
      __swift_destroy_boxed_opaque_existential_1(v73);
      MEMORY[0x26D63A640](v28, -1, -1);
      MEMORY[0x26D63A640](v27, -1, -1);
    }

    v29 = [v13 title];
    if (!v29)
    {
      sub_2693B3750();
      v4 = v36;
LABEL_21:

      goto LABEL_22;
    }

    v30 = v29;
    v31 = sub_2693B3750();
    v33 = v32;

    v34 = sub_2693B3750();
    v4 = v35;
    if (!v33)
    {
      goto LABEL_21;
    }

    if (v31 == v34 && v33 == v35)
    {

      goto LABEL_5;
    }

    v43 = sub_2693B3CE0();

    if (v43)
    {
LABEL_4:

      goto LABEL_5;
    }

LABEL_22:
    if ((v70 & 1) != 0 && [v13 state] == 1)
    {
      if (![v13 isFiring])
      {
        goto LABEL_4;
      }

      if ([v13 type] != 2 && (v37 = objc_msgSend(v13, sel_sound), v4 = objc_msgSend(v37, sel_isSilent), v37, (v4 & 1) != 0) || objc_msgSend(v13, sel_type) == 2)
      {
        if ([v13 isFiring])
        {
          goto LABEL_4;
        }
      }
    }

    sub_26935D424(v69, 1, v8);
    v38 = (*v68)(v8, v71);
    if (v38 == v67)
    {
      break;
    }

    if (v38 != v63)
    {
      goto LABEL_69;
    }

    v42 = v13;
    v4 = &v80;
    MEMORY[0x26D639AD0]();
    if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v45 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_2693B3850();
    }

    sub_2693B3870();

    v64 = v80;
LABEL_5:
    ++v10;
    if (v78 == v9)
    {
      goto LABEL_51;
    }
  }

  (*v62)(v8, v71);
  v39 = sub_2693B3590();
  v40 = (*(*(v39 - 8) + 88))(v8, v39);
  if (v40 == v61 || v40 == v60)
  {
    v44 = v13;
    v4 = &v82;
    MEMORY[0x26D639AD0]();
    if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v82 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v46 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_2693B3850();
    }

    sub_2693B3870();

    v58 = v82;
    goto LABEL_5;
  }

  if (v40 == v57 || v40 == v56 || v40 == v55)
  {
    v41 = v13;
    v4 = &v81;
    MEMORY[0x26D639AD0]();
    if (*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v47 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_2693B3850();
    }

    sub_2693B3870();

    v59 = v81;
    goto LABEL_5;
  }

LABEL_69:
  result = sub_2693B3CD0();
  __break(1u);
  return result;
}

uint64_t sub_2693985E0(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v160 = a4;
  if (qword_28030CE10 != -1)
  {
    swift_once();
  }

  v11 = sub_2693B3620();
  __swift_project_value_buffer(v11, qword_28030D260);
  v12 = a1;
  v13 = sub_2693B3610();
  v14 = sub_2693B39B0();

  v149 = a5;
  v150 = a3;
  v148 = a6;
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v151 = swift_slowAlloc();
    v156 = v151;
    *v15 = 136315138;
    v16 = v12;
    v17 = [v16 description];
    v18 = sub_2693B3750();
    v19 = a2;
    v21 = v20;

    v22 = sub_26934CA40(v18, v21, &v156);
    a2 = v19;

    *(v15 + 4) = v22;
    _os_log_impl(&dword_26933F000, v13, v14, "Testing device match %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v151);
    MEMORY[0x26D63A640](v151, -1, -1);
    MEMORY[0x26D63A640](v15, -1, -1);
  }

  v152 = a2;
  if (a2)
  {
    v23 = *(a2 + 16);
    if (v23)
    {
      v24 = (a2 + 40);
      do
      {
        v26 = *(v24 - 1);
        v25 = *v24;

        v27 = [v12 roomName];
        if (v27)
        {
          v28 = v27;
          sub_2693B3750();

          v29 = sub_2693B3770();
          v31 = v30;

          if (v29 == v26 && v31 == v25)
          {

LABEL_72:
            *v150 = 1;
            v88 = v12;
            v89 = sub_2693B3610();
            v90 = sub_2693B39B0();

            if (os_log_type_enabled(v89, v90))
            {
              v91 = swift_slowAlloc();
              v92 = swift_slowAlloc();
              v155[0] = v92;
              *v91 = 136315138;
              v93 = [v88 roomName];
              if (v93)
              {
                v94 = v93;
                v95 = sub_2693B3750();
                v97 = v96;
              }

              else
              {
                v95 = 0;
                v97 = 0;
              }

              v156 = v95;
              v157 = v97;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CFC8, &qword_2693B59A0);
              v126 = sub_2693B3760();
              v128 = sub_26934CA40(v126, v127, v155);

              *(v91 + 4) = v128;
              _os_log_impl(&dword_26933F000, v89, v90, "Found match on room name: %s", v91, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v92);
              MEMORY[0x26D63A640](v92, -1, -1);
              MEMORY[0x26D63A640](v91, -1, -1);

              return 1;
            }

            else
            {

              return 1;
            }
          }

          v33 = sub_2693B3CE0();

          if (v33)
          {
            goto LABEL_72;
          }
        }

        else
        {
        }

        v24 += 2;
        --v23;
      }

      while (v23);
    }
  }

  if (v160)
  {
    v34 = *(v160 + 16);
    if (v34)
    {
      v35 = (v160 + 40);
      do
      {
        v37 = *(v35 - 1);
        v36 = *v35;

        v38 = [v12 roomName];
        if (v38)
        {
          v39 = v38;
          sub_2693B3750();

          v40 = sub_2693B3770();
          v42 = v41;

          if (v40 == v37 && v42 == v36)
          {

LABEL_77:
            v98 = v12;
            v99 = sub_2693B3610();
            v100 = sub_2693B39B0();

            if (os_log_type_enabled(v99, v100))
            {
              v101 = swift_slowAlloc();
              v102 = swift_slowAlloc();
              v155[0] = v102;
              *v101 = 136315138;
              v103 = [v98 roomName];
              if (v103)
              {
                v104 = v103;
                v105 = sub_2693B3750();
                v107 = v106;
              }

              else
              {
                v105 = 0;
                v107 = 0;
              }

              v108 = v150;
              v156 = v105;
              v157 = v107;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CFC8, &qword_2693B59A0);
              v129 = sub_2693B3760();
              v131 = sub_26934CA40(v129, v130, v155);

              *(v101 + 4) = v131;
              _os_log_impl(&dword_26933F000, v99, v100, "Found match on room name (using deviceName): %s", v101, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v102);
              MEMORY[0x26D63A640](v102, -1, -1);
              MEMORY[0x26D63A640](v101, -1, -1);
            }

            else
            {

              v108 = v150;
            }

            result = 1;
            *v108 = 1;
            return result;
          }

          v44 = sub_2693B3CE0();

          if (v44)
          {
            goto LABEL_77;
          }
        }

        else
        {
        }

        v35 += 2;
        --v34;
      }

      while (v34);
    }
  }

  if (v152)
  {
    v45 = *(v152 + 16);
    if (v45)
    {
      v46 = (v152 + 40);
      do
      {
        v48 = *(v46 - 1);
        v47 = *v46;

        v49 = [v12 deviceName];
        if (v49)
        {
          v50 = v49;
          sub_2693B3750();

          v51 = sub_2693B3770();
          v53 = v52;

          if (v51 == v48 && v53 == v47)
          {

LABEL_82:
            v109 = v12;
            v110 = sub_2693B3610();
            v111 = sub_2693B39B0();

            if (os_log_type_enabled(v110, v111))
            {
              v112 = swift_slowAlloc();
              v113 = swift_slowAlloc();
              v155[0] = v113;
              *v112 = 136315138;
              v114 = [v109 deviceName];
              if (v114)
              {
                v115 = v114;
                v116 = sub_2693B3750();
                v118 = v117;
              }

              else
              {
                v116 = 0;
                v118 = 0;
              }

              v125 = v150;
              v156 = v116;
              v157 = v118;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CFC8, &qword_2693B59A0);
              v132 = sub_2693B3760();
              v134 = sub_26934CA40(v132, v133, v155);

              *(v112 + 4) = v134;
              v135 = "Found match on device name (using roomName): %s";
              goto LABEL_99;
            }

LABEL_89:

            v125 = v150;
            goto LABEL_100;
          }

          v55 = sub_2693B3CE0();

          if (v55)
          {
            goto LABEL_82;
          }
        }

        else
        {
        }

        v46 += 2;
        --v45;
      }

      while (v45);
    }
  }

  if (!v160 || (v56 = *(v160 + 16)) == 0)
  {
LABEL_53:
    sub_26934489C(v149, v155);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF70, &qword_2693B5850);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D3F0, &unk_2693B6A00);
    if (swift_dynamicCast())
    {
      sub_2693436F0(v153, &v156);
      v67 = v158;
      v68 = v159;
      __swift_project_boxed_opaque_existential_1(&v156, v158);
      v69 = (*(v68 + 8))(v67, v68);
      if (v69)
      {
        v70 = v69;
        v71 = [v69 label];

        if (v71)
        {
          v72 = sub_2693B3750();
          v74 = v73;

          v75 = HIBYTE(v74) & 0xF;
          if ((v74 & 0x2000000000000000) == 0)
          {
            v75 = v72 & 0xFFFFFFFFFFFFLL;
          }

          if (v75)
          {

            v76 = sub_2693B3610();
            v77 = sub_2693B39B0();

            if (os_log_type_enabled(v76, v77))
            {
              v78 = swift_slowAlloc();
              v79 = swift_slowAlloc();
              v155[0] = v79;
              *v78 = 136315138;

              v80 = sub_26934CA40(v72, v74, v155);

              *(v78 + 4) = v80;
              _os_log_impl(&dword_26933F000, v76, v77, "Attempting to match target device based on targetTimer.label %s", v78, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v79);
              MEMORY[0x26D63A640](v79, -1, -1);
              MEMORY[0x26D63A640](v78, -1, -1);
            }

            v81 = [v148 roomNames];
            if (v81)
            {
              v82 = v81;
              v83 = sub_2693B3820();

              v84 = (v83 + 40);
              v85 = *(v83 + 16) + 1;
              while (--v85)
              {
                if (v72 != *(v84 - 1) || v74 != *v84)
                {
                  v84 += 2;
                  if ((sub_2693B3CE0() & 1) == 0)
                  {
                    continue;
                  }
                }

                *v150 = 1;
                __swift_destroy_boxed_opaque_existential_1(&v156);
                return 1;
              }
            }

            v139 = [v148 deviceNames];
            if (v139)
            {
              v140 = v139;
              v141 = sub_2693B3820();

              v142 = (v141 + 40);
              v143 = *(v141 + 16) + 1;
              while (--v143)
              {
                if (v72 != *(v142 - 1) || v74 != *v142)
                {
                  v142 += 2;
                  if ((sub_2693B3CE0() & 1) == 0)
                  {
                    continue;
                  }
                }

                *v150 = 2;
                __swift_destroy_boxed_opaque_existential_1(&v156);
                return 1;
              }
            }
          }
        }
      }

      __swift_destroy_boxed_opaque_existential_1(&v156);
    }

    else
    {
      v154 = 0;
      memset(v153, 0, sizeof(v153));
      sub_26934B4F0(v153, &qword_28030D3E8, &unk_2693B67E0);
    }

    v145 = sub_2693B3610();
    v146 = sub_2693B39B0();
    if (os_log_type_enabled(v145, v146))
    {
      v147 = swift_slowAlloc();
      *v147 = 0;
      _os_log_impl(&dword_26933F000, v145, v146, "Found no other matches against ", v147, 2u);
      MEMORY[0x26D63A640](v147, -1, -1);
    }

    return 0;
  }

  v57 = (v160 + 40);
  while (1)
  {
    v59 = *(v57 - 1);
    v58 = *v57;

    v60 = [v12 deviceName];
    if (!v60)
    {

      goto LABEL_45;
    }

    v61 = v60;
    sub_2693B3750();

    v62 = sub_2693B3770();
    v64 = v63;

    if (v62 == v59 && v64 == v58)
    {
      break;
    }

    v66 = sub_2693B3CE0();

    if (v66)
    {
      goto LABEL_86;
    }

LABEL_45:
    v57 += 2;
    if (!--v56)
    {
      goto LABEL_53;
    }
  }

LABEL_86:
  v119 = v12;
  v110 = sub_2693B3610();
  v111 = sub_2693B39B0();

  if (!os_log_type_enabled(v110, v111))
  {
    goto LABEL_89;
  }

  v112 = swift_slowAlloc();
  v113 = swift_slowAlloc();
  v155[0] = v113;
  *v112 = 136315138;
  v120 = [v119 deviceName];
  if (v120)
  {
    v121 = v120;
    v122 = sub_2693B3750();
    v124 = v123;
  }

  else
  {
    v122 = 0;
    v124 = 0;
  }

  v125 = v150;
  v156 = v122;
  v157 = v124;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CFC8, &qword_2693B59A0);
  v136 = sub_2693B3760();
  v138 = sub_26934CA40(v136, v137, v155);

  *(v112 + 4) = v138;
  v135 = "Found match on device name: %s";
LABEL_99:
  _os_log_impl(&dword_26933F000, v110, v111, v135, v112, 0xCu);
  __swift_destroy_boxed_opaque_existential_1(v113);
  MEMORY[0x26D63A640](v113, -1, -1);
  MEMORY[0x26D63A640](v112, -1, -1);

LABEL_100:
  *v125 = 2;
  return 1;
}

uint64_t sub_26939939C(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF60, &qword_2693B61C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D230, &qword_2693B61D0);
  sub_269353B24(&qword_28030D238, &qword_28030CF60, &qword_2693B61C0);
  sub_269353B24(&qword_28030D240, &qword_28030D230, &qword_2693B61D0);
  v2 = sub_2693B37E0();
  v3 = v2;
  if (v2 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2693B3C70())
  {
    v11 = MEMORY[0x277D84F90];
    result = sub_2693B3C20();
    if (i < 0)
    {
      __break(1u);
      return result;
    }

    type metadata accessor for SiriTimer();
    v6 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x26D639EB0](v6, v3);
        goto LABEL_6;
      }

      if ((v6 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v7 = *(v3 + 8 * v6 + 32);
LABEL_6:
      v8 = v7;
      ++v6;
      v9 = a1;
      sub_26935CB88(v8, a1);
      sub_2693B3C00();
      v10 = *(v11 + 16);
      sub_2693B3C30();
      sub_2693B3C40();
      sub_2693B3C10();
      if (i == v6)
      {

        return v11;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2693995BC(uint64_t result)
{
  v1 = 0;
  v2 = 0;
  v3 = result + 64;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  while (v6)
  {
LABEL_9:
    v9 = *(*(result + 56) + ((v1 << 9) | (8 * __clz(__rbit64(v6)))));
    if (v9 >> 62)
    {
      v12 = result;
      v13 = v2;
      v10 = sub_2693B3C70();
      v2 = v13;
      result = v12;
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v6 &= v6 - 1;
    v11 = __OFADD__(v2, v10);
    v2 += v10;
    if (v11)
    {
      goto LABEL_17;
    }
  }

  while (1)
  {
    v8 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v8 >= v7)
    {
      return v2;
    }

    v6 = *(v3 + 8 * v8);
    ++v1;
    if (v6)
    {
      v1 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_2693996B8()
{
  v0 = sub_2693B3620();
  __swift_allocate_value_buffer(v0, qword_28030D4A0);
  v1 = __swift_project_value_buffer(v0, qword_28030D4A0);
  if (qword_280E26360 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280E26A30);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_269399780(void *a1, uint64_t a2, void *a3, const void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE78, "\nY");
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = a1;
  v13 = sub_2693B3920();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2693B6AC8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2693B6AD0;
  v15[5] = v14;
  v16 = a3;
  v17 = a1;
  sub_2693A6BC4(0, 0, v10, &unk_2693B6AD8, v15);
}

uint64_t sub_269399908(int a1, void *aBlock)
{
  *(v2 + 40) = _Block_copy(aBlock);

  return MEMORY[0x2822009F8](sub_269399974, 0, 0);
}

uint64_t sub_269399974()
{
  v1 = *(v0 + 40);
  v2 = [objc_allocWithZone(type metadata accessor for SetTimerAttributeIntentResponse()) init];
  v3 = OBJC_IVAR___SetTimerAttributeIntentResponse_code;
  swift_beginAccess();
  *&v2[v3] = 4;
  [v2 setUserActivity_];
  (v1)[2](v1, v2);
  _Block_release(v1);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_269399A50(uint64_t a1)
{
  *(v2 + 168) = a1;
  *(v2 + 176) = v1;
  return MEMORY[0x2822009F8](sub_269399A70, 0, 0);
}

uint64_t sub_269399A70()
{
  v37 = v0;
  v1 = [*(v0 + 168) targetTimer];
  *(v0 + 184) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = [*(v0 + 168) toDuration];
    v4 = v3;
    if (v3)
    {
      [v3 doubleValue];
      v6 = v5;

      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v31 = [*(v0 + 168) toLabel];
    *(v0 + 192) = v31;
    v32 = v31;
    v33 = swift_task_alloc();
    *(v0 + 200) = v33;
    *v33 = v0;
    v33[1] = sub_269399EB8;
    v34 = *(v0 + 176);
    v35 = MEMORY[0x277D84FA0];

    return sub_26938102C(v2, 0, 1, v35, v34, v31, v7, v4 == 0);
  }

  else
  {
    if (qword_28030CE48 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 168);
    v9 = sub_2693B3620();
    __swift_project_value_buffer(v9, qword_28030D4A0);
    v10 = v8;
    v11 = sub_2693B3610();
    v12 = sub_2693B39A0();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = *(v0 + 168);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v36 = v15;
      *v14 = 136315138;
      v16 = v13;
      v17 = [v16 description];
      v18 = sub_2693B3750();
      v20 = v19;

      v21 = sub_26934CA40(v18, v20, &v36);

      *(v14 + 4) = v21;
      _os_log_impl(&dword_26933F000, v11, v12, "No targetTimer found in SetTimerAttributeIntent in intent handling! %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x26D63A640](v15, -1, -1);
      MEMORY[0x26D63A640](v14, -1, -1);
    }

    v22 = sub_2693B35D0();
    v23 = MEMORY[0x277D61908];
    *(v0 + 40) = v22;
    *(v0 + 48) = v23;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
    *boxed_opaque_existential_1 = 0xD000000000000018;
    boxed_opaque_existential_1[1] = 0x80000002693B9180;
    v25 = *MEMORY[0x277D61878];
    v26 = sub_2693B3560();
    (*(*(v26 - 8) + 104))(boxed_opaque_existential_1, v25, v26);
    (*(*(v22 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618D8], v22);
    sub_2693B34C0();
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v27 = [objc_allocWithZone(type metadata accessor for SetTimerAttributeIntentResponse()) init];
    v28 = OBJC_IVAR___SetTimerAttributeIntentResponse_code;
    swift_beginAccess();
    *&v27[v28] = 5;
    [v27 setUserActivity_];
    v29 = *(v0 + 8);

    return v29(v27);
  }
}

uint64_t sub_269399EB8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 200);
  v6 = *v2;
  *(v4 + 208) = a1;
  *(v4 + 216) = v1;

  if (v1)
  {
    v7 = sub_26939A41C;
  }

  else
  {
    v7 = sub_269399FF4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_269399FF4()
{
  v35 = v1;
  v2 = *(v1 + 208);
  if (v2 >> 62)
  {
    if (v2 < 0)
    {
      v7 = *(v1 + 208);
    }

    if (sub_2693B3C70())
    {
      goto LABEL_3;
    }
  }

  else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    if ((v2 & 0xC000000000000001) != 0)
    {
      v3 = MEMORY[0x26D639EB0](0, *(v1 + 208));
      v33 = *(v1 + 208);
      goto LABEL_6;
    }

    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v3 = *(*(v1 + 208) + 32);
LABEL_6:
      v4 = *(v1 + 184);
      v5 = *(v1 + 176);

      v6 = sub_26939A78C(v3, v4);

      goto LABEL_16;
    }

    __break(1u);
LABEL_21:
    swift_once();
    goto LABEL_13;
  }

  v8 = *(v1 + 208);
  v9 = *(v1 + 192);

  sub_26934B0F0();
  v0 = swift_allocError();
  *v10 = 0;
  swift_willThrow();

  *(v1 + 144) = v0;
  v11 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF30, &qword_2693B5A10);
  if (swift_dynamicCast())
  {
    v12 = *(v1 + 184);

    v34[0] = *(v1 + 152);
    v13 = v34[0];
    v6 = sub_26939F4D8(v34);

    sub_26934ADAC(v13);
    goto LABEL_16;
  }

  if (qword_28030CE48 != -1)
  {
    goto LABEL_21;
  }

LABEL_13:
  v14 = sub_2693B3620();
  __swift_project_value_buffer(v14, qword_28030D4A0);
  v15 = v0;
  v16 = sub_2693B3610();
  v17 = sub_2693B39A0();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v34[0] = v19;
    *v18 = 136315138;
    *(v1 + 160) = v0;
    v20 = v0;
    v21 = sub_2693B3760();
    v23 = sub_26934CA40(v21, v22, v34);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_26933F000, v16, v17, "SetTimerAttributeIntentHandler received unhandled error handling intent: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x26D63A640](v19, -1, -1);
    MEMORY[0x26D63A640](v18, -1, -1);
  }

  v24 = *(v1 + 184);
  v25 = sub_2693B35D0();
  v26 = MEMORY[0x277D61908];
  *(v1 + 80) = v25;
  *(v1 + 88) = v26;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v1 + 56));
  *boxed_opaque_existential_1 = sub_2693B30D0();
  v28 = *MEMORY[0x277D61838];
  v29 = sub_2693B34B0();
  (*(*(v29 - 8) + 104))(boxed_opaque_existential_1, v28, v29);
  (*(*(v25 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618F8], v25);
  sub_2693B34C0();
  __swift_destroy_boxed_opaque_existential_1((v1 + 56));
  v6 = [objc_allocWithZone(type metadata accessor for SetTimerAttributeIntentResponse()) init];
  v30 = OBJC_IVAR___SetTimerAttributeIntentResponse_code;
  swift_beginAccess();
  *&v6[v30] = 5;
  [v6 setUserActivity_];

LABEL_16:
  v31 = *(v1 + 8);

  return v31(v6);
}

uint64_t sub_26939A41C()
{
  v27 = v0;

  v1 = *(v0 + 216);
  *(v0 + 144) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF30, &qword_2693B5A10);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 184);

    v26 = *(v0 + 152);
    v4 = v26;
    v5 = sub_26939F4D8(&v26);

    sub_26934ADAC(v4);
  }

  else
  {
    v6 = (v0 + 56);

    if (qword_28030CE48 != -1)
    {
      swift_once();
    }

    v7 = sub_2693B3620();
    __swift_project_value_buffer(v7, qword_28030D4A0);
    v8 = v1;
    v9 = sub_2693B3610();
    v10 = sub_2693B39A0();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v26 = v12;
      *v11 = 136315138;
      *(v0 + 160) = v1;
      v13 = v1;
      v14 = sub_2693B3760();
      v16 = sub_26934CA40(v14, v15, &v26);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_26933F000, v9, v10, "SetTimerAttributeIntentHandler received unhandled error handling intent: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x26D63A640](v12, -1, -1);
      MEMORY[0x26D63A640](v11, -1, -1);
    }

    v17 = *(v0 + 184);
    v18 = sub_2693B35D0();
    v19 = MEMORY[0x277D61908];
    *(v0 + 80) = v18;
    *(v0 + 88) = v19;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v6);
    *boxed_opaque_existential_1 = sub_2693B30D0();
    v21 = *MEMORY[0x277D61838];
    v22 = sub_2693B34B0();
    (*(*(v22 - 8) + 104))(boxed_opaque_existential_1, v21, v22);
    (*(*(v18 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618F8], v18);
    sub_2693B34C0();
    __swift_destroy_boxed_opaque_existential_1(v6);
    v5 = [objc_allocWithZone(type metadata accessor for SetTimerAttributeIntentResponse()) init];
    v23 = OBJC_IVAR___SetTimerAttributeIntentResponse_code;
    swift_beginAccess();
    *&v5[v23] = 5;
    [v5 setUserActivity_];
  }

  v24 = *(v0 + 8);

  return v24(v5);
}

char *sub_26939A78C(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(type metadata accessor for SetTimerAttributeIntentResponse()) init];
  v6 = OBJC_IVAR___SetTimerAttributeIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = 4;
  [v5 setUserActivity_];
  v7 = [a2 device];
  if (!v7)
  {
    v8 = (v2 + qword_28030D540);
    swift_beginAccess();
    v7 = *(*__swift_project_boxed_opaque_existential_1(v8, v8[3]) + 24);
    v9 = v7;
  }

  type metadata accessor for SiriTimer();
  v10 = sub_26935CB88(a1, v7);
  [v5 setUpdatedTimer_];

  return v5;
}

uint64_t sub_26939A8B4(void *a1, uint64_t a2, void *a3, const void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE78, "\nY");
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = a1;
  v13 = sub_2693B3920();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2693B6AA0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2693B6AA8;
  v15[5] = v14;
  v16 = a3;
  v17 = a1;
  sub_2693A6BC4(0, 0, v10, &unk_2693B6AB0, v15);
}

uint64_t sub_26939AA3C(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_26934B604;

  return sub_269399A50(v6);
}

uint64_t sub_26939AB00(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return MEMORY[0x2822009F8](sub_26939AB20, 0, 0);
}

uint64_t sub_26939AB20()
{
  v38 = v0;
  if (qword_28030CE48 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 80);
  v2 = sub_2693B3620();
  *(v0 + 96) = __swift_project_value_buffer(v2, qword_28030D4A0);
  v3 = v1;
  v4 = sub_2693B3610();
  v5 = sub_2693B39B0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 80);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v37 = v8;
    *v7 = 136315138;
    v9 = v6;
    v10 = [v9 description];
    v11 = sub_2693B3750();
    v13 = v12;

    v14 = sub_26934CA40(v11, v13, &v37);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_26933F000, v4, v5, "SetTimerAttributeIntentHandler.resolveTargetTimer(for:) %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x26D63A640](v8, -1, -1);
    MEMORY[0x26D63A640](v7, -1, -1);
  }

  v15 = [*(v0 + 80) targetTimer];
  *(v0 + 104) = v15;
  if (v15)
  {
    v16 = v15;
    v17 = *(v0 + 80);
    *(v0 + 40) = type metadata accessor for SetTimerAttributeIntent();
    *(v0 + 48) = &protocol witness table for SetTimerAttributeIntent;
    *(v0 + 16) = v17;
    v18 = sub_26939F3A4(&unk_2879EC9B8, &qword_28030D4F8, &qword_2693B6A90);
    *(v0 + 112) = v18;
    v19 = v17;
    v20 = swift_task_alloc();
    *(v0 + 120) = v20;
    *v20 = v0;
    v20[1] = sub_26939AF20;
    v21 = *(v0 + 88);

    return sub_269391D68(v16, v0 + 16, 0, v18);
  }

  else
  {
    v23 = *(v0 + 80);
    v24 = sub_2693B3610();
    v25 = sub_2693B39A0();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = *(v0 + 80);
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v37 = v28;
      *v27 = 136315138;
      v29 = v26;
      v30 = [v29 description];
      v31 = sub_2693B3750();
      v33 = v32;

      v34 = sub_26934CA40(v31, v33, &v37);

      *(v27 + 4) = v34;
      _os_log_impl(&dword_26933F000, v24, v25, "No target timer when resolving target timer for intent: %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x26D63A640](v28, -1, -1);
      MEMORY[0x26D63A640](v27, -1, -1);
    }

    type metadata accessor for SiriTimerResolutionResult();
    v35 = [swift_getObjCClassFromMetadata() needsValue];
    v36 = *(v0 + 8);

    return v36(v35);
  }
}

uint64_t sub_26939AF20(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 120);
  v6 = *(*v2 + 112);
  v7 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v8 = sub_26939B0E8;
  }

  else
  {
    *(v4 + 136) = a1;
    sub_26934B4F0(v4 + 16, &qword_28030CF78, &qword_2693B5880);
    v8 = sub_26939B084;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_26939B084()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_26939B0E8()
{
  v24 = v0;
  v1 = *(v0 + 128);
  sub_26934B4F0(v0 + 16, &qword_28030CF78, &qword_2693B5880);
  *(v0 + 56) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF30, &qword_2693B5A10);
  v3 = swift_dynamicCast();
  v4 = *(v0 + 128);
  if (v3)
  {
    v5 = *(v0 + 104);

    v6 = *(v0 + 64);
    v7 = sub_26939F14C(v6, v5);

    sub_26934ADAC(v6);
  }

  else
  {
    v8 = *(v0 + 96);

    v9 = v4;
    v10 = sub_2693B3610();
    v11 = sub_2693B39A0();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = *(v0 + 128);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v23 = v14;
      *v13 = 136315138;
      *(v0 + 72) = v12;
      v15 = v12;
      v16 = sub_2693B3760();
      v18 = sub_26934CA40(v16, v17, &v23);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_26933F000, v10, v11, "Unknown error resolving targetTimer for SetTimerIntent: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x26D63A640](v14, -1, -1);
      MEMORY[0x26D63A640](v13, -1, -1);
    }

    v19 = *(v0 + 128);
    v20 = *(v0 + 104);
    type metadata accessor for SiriTimerResolutionResult();
    v7 = [swift_getObjCClassFromMetadata() unsupported];
  }

  v21 = *(v0 + 8);

  return v21(v7);
}

uint64_t sub_26939B328(void *a1, uint64_t a2, void *a3, const void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE78, "\nY");
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = a1;
  v13 = sub_2693B3920();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2693B6A40;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2693B6A48;
  v15[5] = v14;
  v16 = a3;
  v17 = a1;
  sub_2693A6BC4(0, 0, v10, &unk_2693B6A50, v15);
}

uint64_t sub_26939B4B0(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_26934743C;

  return sub_26939AB00(v6);
}

uint64_t sub_26939B574(void *a1, uint64_t a2, void *a3, const void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE78, "\nY");
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = a1;
  v13 = sub_2693B3920();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2693B6A18;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2693B6A20;
  v15[5] = v14;
  v16 = a3;
  v17 = a1;
  sub_2693A6BC4(0, 0, v10, &unk_2693B5840, v15);
}

uint64_t sub_26939B6FC(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_26934B604;

  return sub_26939F8A0(v6);
}

uint64_t sub_26939B7D0(void *a1, uint64_t a2, void *a3, const void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE78, "\nY");
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = a1;
  v13 = sub_2693B3920();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2693B69E8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2693B5810;
  v15[5] = v14;
  v16 = a3;
  v17 = a1;
  sub_2693A6BC4(0, 0, v10, &unk_2693B5818, v15);
}

uint64_t sub_26939B958(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;

  return MEMORY[0x2822009F8](sub_26939B9E4, 0, 0);
}

uint64_t sub_26939B9E4()
{
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_26937AD7C;
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);

  return sub_26939FBC4(v4, v3);
}

uint64_t sub_26939BA98(void *a1, uint64_t a2, void *a3, const void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE78, "\nY");
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = a1;
  v13 = sub_2693B3920();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2693B69B0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2693B5700;
  v15[5] = v14;
  v16 = a3;
  v17 = a1;
  sub_2693A6BC4(0, 0, v10, &unk_2693B5530, v15);
}

uint64_t sub_26939BC20(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;

  return MEMORY[0x2822009F8](sub_26939BCAC, 0, 0);
}

uint64_t sub_26939BCAC()
{
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_269347CE0;
  v3 = *(v0 + 24);

  return sub_26939E93C(v3);
}

id sub_26939BD60(void *a1, void *a2, uint64_t a3, char a4)
{
  v8 = [a1 state];
  [a1 setState_];
  v9 = [a1 title];
  if (v9)
  {
    v10 = v9;
    sub_2693B3750();

    v11 = sub_2693B3770();
    v13 = v12;

    if (a2)
    {
LABEL_3:
      v14 = [a2 spokenPhrase];
      sub_2693B3750();

      v15 = sub_2693B3770();
      v17 = v16;

      goto LABEL_6;
    }
  }

  else
  {
    v11 = 0;
    v13 = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
  v17 = 0xE000000000000000;
LABEL_6:
  if ((v17 & 0x2000000000000000) != 0)
  {
    v18 = HIBYTE(v17) & 0xF;
  }

  else
  {
    v18 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13)
  {

    if (!v18)
    {
      goto LABEL_22;
    }

LABEL_17:
    if (qword_28030CE48 != -1)
    {
      swift_once();
    }

    v20 = sub_2693B3620();
    __swift_project_value_buffer(v20, qword_28030D4A0);
    v21 = sub_2693B3610();
    v22 = sub_2693B39A0();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_26933F000, v21, v22, "Tried to rename a timer, which is unsupported", v23, 2u);
      MEMORY[0x26D63A640](v23, -1, -1);
    }

    v24 = 7;
    goto LABEL_29;
  }

  if (v11 != v15 || v13 != v17)
  {
    v19 = sub_2693B3CE0();

    if (!v18 || (v19 & 1) != 0)
    {
      goto LABEL_22;
    }

    goto LABEL_17;
  }

LABEL_22:
  if (a4)
  {
    return [a1 setState_];
  }

  v26 = *&a3;
  v27 = objc_opt_self();
  [v27 minimumDuration];
  if (v28 >= v26)
  {
    v24 = 2;
  }

  else
  {
    [v27 maximumDuration];
    if (v29 > v26)
    {
      [a1 setDuration_];
      return [a1 setState_];
    }

    v24 = 3;
  }

LABEL_29:
  sub_26934B0F0();
  swift_allocError();
  *v30 = v24;
  return swift_willThrow();
}

uint64_t type metadata accessor for SetTimerAttributeIntentHandler()
{
  result = qword_28030D4B8;
  if (!qword_28030D4B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26939C0D4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_269344F9C;

  return sub_26939BC20(v2, v3, v4);
}

unint64_t sub_26939C188(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_2693B3A40();

  return sub_26939C3D4(a1, v5);
}

unint64_t sub_26939C1CC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2693B3DB0();
  sub_2693B37B0();
  v6 = sub_2693B3DD0();

  return sub_26939C498(a1, a2, v6);
}

uint64_t sub_26939C244(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_2693B3C70();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_2693B3C70();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_26939C334(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_26939D714(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_26939C334(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_2693B3C70();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_2693B3BE0();
  *v1 = result;
  return result;
}

unint64_t sub_26939C3D4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for SiriDevice();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_2693B3A50();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_26939C498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_2693B3CE0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_26939C550(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D4E0, &qword_2693B6A80);
  result = sub_2693B3C90();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
      }

      v24 = *(v8 + 40);
      result = sub_2693B3A40();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_35;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_26939C7C0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D510, &qword_2693B6B80);
  v40 = a2;
  result = sub_2693B3C90();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_2693B3DB0();
      sub_2693B37B0();
      result = sub_2693B3DD0();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_26939CA80(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D500, &qword_2693B6FA0);
  v36 = a2;
  result = sub_2693B3C90();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 48 * v21);
      if (v36)
      {
        sub_26938AF94(v25, v37);
      }

      else
      {
        sub_26938AFAC(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_2693B3DB0();
      sub_2693B37B0();
      result = sub_2693B3DD0();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_26938AF94(v37, (*(v8 + 56) + 48 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

void *sub_26939CD44()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D4E0, &qword_2693B6A80);
  v2 = *v0;
  v3 = sub_2693B3C80();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_26939CEA8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D510, &qword_2693B6B80);
  v2 = *v0;
  v3 = sub_2693B3C80();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_26939D020()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D500, &qword_2693B6FA0);
  v2 = *v0;
  v3 = sub_2693B3C80();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 48 * v17;
        sub_26938AFAC(*(v2 + 56) + 48 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_26938AF94(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

id sub_26939D1C8(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_26939C188(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_26939C550(v13, a3 & 1);
      v17 = *v4;
      v8 = sub_26939C188(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        type metadata accessor for SiriDevice();
        result = sub_2693B3D40();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v8;
      sub_26939CD44();
      v8 = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;
  }

  v19[(v8 >> 6) + 8] |= 1 << v8;
  *(v19[6] + 8 * v8) = a2;
  *(v19[7] + 8 * v8) = a1;
  v23 = v19[2];
  v12 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v24;

  return a2;
}

uint64_t sub_26939D334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_26939C1CC(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_26939C7C0(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_26939C1CC(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_2693B3D40();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_26939CEA8();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;
}

char *sub_26939D4BC(char *a1, int64_t a2, char a3)
{
  result = sub_26939D4FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26939D4DC(char *a1, int64_t a2, char a3)
{
  result = sub_26939D608(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26939D4FC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D4C8, &qword_2693B69F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26939D608(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D518, &unk_2693B6BA8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_26939D714(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2693B3C70();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2693B3C70();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_269353B24(&qword_28030CF68, &qword_28030CF60, &qword_2693B61C0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF60, &qword_2693B61C0);
            v9 = sub_26936F610(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_2693608D8(0, &qword_280E261C0, 0x277D29730);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_26939D950(void *a1, void *a2, unint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t (*a6)(id *))
{
  v85 = a6;
  v89[3] = a4(0);
  v89[4] = a5;
  v88 = 0;
  v89[0] = a2;
  v10 = a2;
  v11 = [a1 roomNames];
  if (v11)
  {
    v12 = v11;
    v13 = sub_2693B3820();

    v14 = *(v13 + 16);
    if (v14)
    {
      v87 = MEMORY[0x277D84F90];
      sub_26939D4BC(0, v14, 0);
      v15 = v87;
      v16 = (v13 + 40);
      do
      {
        v17 = *(v16 - 1);
        v18 = *v16;
        v19 = sub_2693B3770();
        v87 = v15;
        v22 = *(v15 + 16);
        v21 = *(v15 + 24);
        if (v22 >= v21 >> 1)
        {
          v24 = v19;
          v25 = v20;
          sub_26939D4BC((v21 > 1), v22 + 1, 1);
          v20 = v25;
          v19 = v24;
          v15 = v87;
        }

        *(v15 + 16) = v22 + 1;
        v23 = v15 + 16 * v22;
        *(v23 + 32) = v19;
        *(v23 + 40) = v20;
        v16 += 2;
        --v14;
      }

      while (v14);
    }

    else
    {

      v15 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v15 = 0;
  }

  v26 = [a1 deviceNames];
  if (v26)
  {
    v27 = v26;
    v28 = sub_2693B3820();

    v29 = *(v28 + 16);
    if (v29)
    {
      v84 = 0;
      v87 = MEMORY[0x277D84F90];
      sub_26939D4BC(0, v29, 0);
      v30 = v87;
      v31 = (v28 + 40);
      do
      {
        v32 = *(v31 - 1);
        v33 = *v31;
        v34 = sub_2693B3770();
        v87 = v30;
        v37 = *(v30 + 16);
        v36 = *(v30 + 24);
        if (v37 >= v36 >> 1)
        {
          v83 = v34;
          v39 = a3;
          v40 = v35;
          sub_26939D4BC((v36 > 1), v37 + 1, 1);
          v35 = v40;
          a3 = v39;
          v34 = v83;
          v30 = v87;
        }

        *(v30 + 16) = v37 + 1;
        v38 = v30 + 16 * v37;
        *(v38 + 32) = v34;
        *(v38 + 40) = v35;
        v31 += 2;
        --v29;
      }

      while (v29);

      if (!v15)
      {
        goto LABEL_22;
      }
    }

    else
    {

      v30 = MEMORY[0x277D84F90];
      if (!v15)
      {
        goto LABEL_22;
      }
    }
  }

  else
  {
    v30 = 0;
    if (!v15)
    {
      goto LABEL_22;
    }
  }

  if (*(v15 + 16))
  {
    goto LABEL_24;
  }

LABEL_22:
  if (v30)
  {
    if (*(v30 + 16))
    {
LABEL_24:
      if (qword_28030CE10 == -1)
      {
        goto LABEL_25;
      }

      goto LABEL_47;
    }
  }

  if (a3 >> 62)
  {
    v15 = sub_2693B3C70();
    if (v15)
    {
LABEL_34:
      v66 = 0;
      v67 = a3 & 0xC000000000000001;
      v30 = a3;
      a3 &= 0xFFFFFFFFFFFFFF8uLL;
      while (1)
      {
        if (v67)
        {
          v68 = MEMORY[0x26D639EB0](v66, v30);
        }

        else
        {
          if (v66 >= *(a3 + 16))
          {
            goto LABEL_46;
          }

          v68 = *(v30 + 8 * v66 + 32);
        }

        v55 = v68;
        a1 = (v66 + 1);
        if (__OFADD__(v66, 1))
        {
          break;
        }

        v69 = [v68 isRespondingDevice];
        sub_2693608D8(0, &qword_280E261B8, 0x277CCABB0);
        v70 = sub_2693B3A30();
        v71 = v70;
        if (v69)
        {
          v72 = sub_2693B3A50();

          if (v72)
          {
            [v55 setTargetMatchType_];
            goto LABEL_50;
          }
        }

        else
        {
        }

        ++v66;
        if (a1 == v15)
        {
          goto LABEL_49;
        }
      }

      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      swift_once();
LABEL_25:
      v41 = sub_2693B3620();
      v42 = __swift_project_value_buffer(v41, qword_28030D260);
      v43 = a1;
      v44 = sub_2693B3610();
      v45 = sub_2693B39B0();

      if (os_log_type_enabled(v44, v45))
      {
        v84 = a3;
        v46 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        v87 = v82;
        *v46 = 136315138;
        v47 = v43;
        v48 = [v47 description];
        v81 = v45;
        v49 = sub_2693B3750();
        v83 = v42;
        v51 = v50;

        v52 = sub_26934CA40(v49, v51, &v87);

        *(v46 + 4) = v52;
        _os_log_impl(&dword_26933F000, v44, v81, "Matching against targetingInfo: %s", v46, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v82);
        MEMORY[0x26D63A640](v82, -1, -1);
        v53 = v46;
        a3 = v84;
        MEMORY[0x26D63A640](v53, -1, -1);
      }

      MEMORY[0x28223BE20](v54);
      v80[2] = v15;
      v80[3] = &v88;
      v80[4] = v30;
      v80[5] = v89;
      v80[6] = v43;
      v55 = sub_2693965F4(v85, v80, a3);

      if (v55)
      {
        [v55 setTargetMatchType_];
      }

      v56 = v55;
      v57 = sub_2693B3610();
      v58 = sub_2693B39B0();

      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v86 = v55;
        v87 = v60;
        *v59 = 136315138;
        v61 = v56;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF40, &unk_2693B57D0);
        v62 = sub_2693B3760();
        v64 = sub_26934CA40(v62, v63, &v87);

        *(v59 + 4) = v64;
        v65 = "Matched device: %s";
LABEL_54:
        _os_log_impl(&dword_26933F000, v57, v58, v65, v59, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v60);
        MEMORY[0x26D63A640](v60, -1, -1);
        MEMORY[0x26D63A640](v59, -1, -1);
        goto LABEL_55;
      }

      goto LABEL_55;
    }
  }

  else
  {
    v15 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_34;
    }
  }

LABEL_49:
  v55 = 0;
LABEL_50:
  if (qword_28030CE10 != -1)
  {
    swift_once();
  }

  v73 = sub_2693B3620();
  __swift_project_value_buffer(v73, qword_28030D260);
  v74 = v55;
  v57 = sub_2693B3610();
  v58 = sub_2693B39B0();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v86 = v55;
    v87 = v60;
    *v59 = 136315138;
    v75 = v74;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF40, &unk_2693B57D0);
    v76 = sub_2693B3760();
    v78 = sub_26934CA40(v76, v77, &v87);

    *(v59 + 4) = v78;
    v65 = "No targeting info – using local device as target: %s";
    goto LABEL_54;
  }

LABEL_55:

  __swift_destroy_boxed_opaque_existential_1(v89);
  return v55;
}