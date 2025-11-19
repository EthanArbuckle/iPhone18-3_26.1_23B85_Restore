void RTCommonCalculateDistanceRadius(int a1, double a2, double a3, double a4, double a5)
{
  v7 = (a2 + a4) * 0.0174532925;
  if (a3 < 0.0)
  {
    a3 = a3 + 360.0;
  }

  if (a5 < 0.0)
  {
    a5 = a5 + 360.0;
  }

  v8 = a5 - a3;
  if (v8 <= 180.0)
  {
    if (v8 < -180.0)
    {
      v8 = v8 + 360.0;
    }
  }

  else
  {
    v8 = v8 + -360.0;
  }

  v9 = v7 * 0.5;
  v10 = (a4 - a2) * 0.0174532925;
  v11 = v8;
  if (v8 < 0)
  {
    v11 = -v11;
  }

  v12 = a4 - a2;
  if (v12 < 0)
  {
    v12 = a2 - a4;
  }

  v13 = v8 * 0.0174532925;
  if (v12 > 2 || v11 > 2)
  {
    if (a1)
    {
      sin(v9);
    }

    v14 = sin(v10 * 0.5);
    v15 = v14 * v14;
    v16 = cos(a2 * 0.0174532925);
    v17 = v16 * cos(a4 * 0.0174532925);
    v18 = sin(v13 * 0.5);
    v19 = v15 + v17 * (v18 * v18);
    v20 = 1.0 - v19;
    if (v19 < 0.0)
    {
      v19 = 0.0;
    }

    if (v20 < 0.0)
    {
      v20 = 0.0;
    }

    atan2(sqrt(v19), sqrt(v20));
  }

  else
  {
    __sincos_stret(v9);
  }
}

id _rt_log_facility_get_os_log(dispatch_once_t *predicate)
{
  if (*predicate != -1)
  {
    dispatch_once_f(predicate, predicate, _rt_log_facility_prepare);
  }

  v2 = predicate[2];

  return v2;
}

void *sub_26455F670@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_26455F68C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

uint64_t sub_26455F704@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_26455F7CC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 80);

  v5 = *(v0 + 96);

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_26455F82C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26455F864()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26455F8A0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26455F8D8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  v2 = a2 + *(a1 + 20);
  return sub_2645D377C();
}

uint64_t sub_26455F944(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2645D378C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_26455F9F0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_2645D378C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26455FA94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2645D378C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72D30, &qword_2645D9C00);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_26455FB94(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2645D378C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72D30, &qword_2645D9C00);
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 24);

    return v15(v16, a2, a2, v14);
  }
}

uint64_t sub_26455FCA8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72F18, &qword_2645DA528);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26455FD3C()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_26455FD90()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26455FDC8()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

id sub_26455FE74()
{
  result = [objc_allocWithZone(type metadata accessor for SMActivityManager()) init];
  qword_280BCB658 = result;
  return result;
}

id static SMActivityManager.shared.getter()
{
  if (qword_280BCB650 != -1)
  {
    swift_once();
  }

  v1 = qword_280BCB658;

  return v1;
}

uint64_t sub_2645600B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 152) = a7;
  *(v7 + 24) = a5;
  *(v7 + 32) = a6;
  *(v7 + 16) = a4;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72830, &qword_2645D9648) - 8) + 64) + 15;
  *(v7 + 40) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72798, &qword_2645D9530);
  *(v7 + 48) = v9;
  v10 = *(v9 - 8);
  *(v7 + 56) = v10;
  v11 = *(v10 + 64) + 15;
  *(v7 + 64) = swift_task_alloc();
  v12 = *(*(sub_2645D355C() - 8) + 64) + 15;
  *(v7 + 72) = swift_task_alloc();
  *(v7 + 80) = swift_task_alloc();
  v13 = *(*(sub_2645D394C() - 8) + 64) + 15;
  *(v7 + 88) = swift_task_alloc();
  *(v7 + 96) = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72838, &qword_2645D9650) - 8) + 64) + 15;
  *(v7 + 104) = swift_task_alloc();
  v15 = sub_2645D36FC();
  *(v7 + 112) = v15;
  v16 = *(v15 - 8);
  *(v7 + 120) = v16;
  v17 = *(v16 + 64) + 15;
  *(v7 + 128) = swift_task_alloc();
  *(v7 + 136) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2645602D4, 0, 0);
}

uint64_t sub_2645602D4()
{
  v45 = v0;
  v1 = *(v0 + 136);
  v2 = *(v0 + 16);
  sub_2645D36EC();
  if (([v2 isPromptState] & 1) != 0 || objc_msgSend(*(v0 + 16), sel_isCacheReleasedState))
  {
    v3 = *(v0 + 128);
    v4 = *(v0 + 136);
    v5 = *(v0 + 112);
    v6 = *(v0 + 120);
    v7 = (*(v0 + 24) + OBJC_IVAR___SMActivityManagerInternal_silentAudioFileName);
    v8 = *v7;
    v9 = v7[1];
    sub_2645D36DC();
    (*(v6 + 8))(v4, v5);
    (*(v6 + 32))(v4, v3, v5);
    if (qword_280BCB618 != -1)
    {
      swift_once();
    }

    v10 = *(v0 + 32);
    v11 = sub_2645D38CC();
    __swift_project_value_buffer(v11, qword_280BCB620);

    v12 = sub_2645D38AC();
    v13 = sub_2645D3AEC();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = *(v0 + 32);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v44 = v16;
      *v15 = 136315138;
      v17 = sub_2645D362C();
      v19 = sub_264561058(v17, v18, &v44);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_26455D000, v12, v13, "Alerting with only haptics - (%s)", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x26673D4A0](v16, -1, -1);
      MEMORY[0x26673D4A0](v15, -1, -1);
    }
  }

  v20 = *(v0 + 152);
  v21 = *(v0 + 16);
  _s13SafetyMonitor25SMInitiatorAlertUtilitiesC10alertTitle4with11addTimeMode12shortStrings05watchM0SSSo21SMSessionManagerStateCSg_S3btFZ_0(v21, 0, 0, 0);
  _s13SafetyMonitor25SMInitiatorAlertUtilitiesC12alertMessage4with11addTimeMode19isWatchNotification12shortStrings05watchP0SSSo21SMSessionManagerStateCSg_S4btFZ_0(v21, 0, 1, 0, 0);
  if (v20 == 1)
  {
    v39 = *(v0 + 128);
    v22 = *(v0 + 120);
    v40 = *(v0 + 112);
    v41 = *(v0 + 136);
    v23 = *(v0 + 96);
    v42 = *(v0 + 104);
    v24 = *(v0 + 80);
    v25 = *(v0 + 88);
    v26 = *(v0 + 72);
    sub_2645D393C();
    sub_2645D392C();
    sub_2645D391C();

    sub_2645D392C();
    sub_2645D354C();
    sub_2645D393C();
    sub_2645D392C();
    sub_2645D391C();

    sub_2645D392C();
    sub_2645D354C();
    (*(v22 + 16))(v39, v41, v40);
    sub_2645D370C();
    v27 = 0;
  }

  else
  {

    v27 = 1;
  }

  v28 = *(v0 + 104);
  v29 = *(v0 + 64);
  v30 = *(v0 + 40);
  v31 = sub_2645D371C();
  (*(*(v31 - 8) + 56))(v28, v27, 1, v31);
  v32 = sub_2645D35EC();
  (*(*(v32 - 8) + 56))(v30, 1, 1, v32);
  sub_2645626C4();
  sub_264562718();
  sub_26456276C();
  sub_2645D36CC();
  v33 = *(MEMORY[0x277CB92A0] + 4);
  v43 = (*MEMORY[0x277CB92A0] + MEMORY[0x277CB92A0]);
  v34 = swift_task_alloc();
  *(v0 + 144) = v34;
  *v34 = v0;
  v34[1] = sub_264560764;
  v35 = *(v0 + 104);
  v36 = *(v0 + 64);
  v37 = *(v0 + 32);

  return v43(v36, v35);
}

uint64_t sub_264560764()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v4 = *(*v0 + 48);
  v6 = *v0;

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](sub_2645608BC, 0, 0);
}

uint64_t sub_2645608BC()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[14];
  v4 = v0[15];
  v5 = v0[12];
  v7 = v0[10];
  v6 = v0[11];
  v8 = v0[9];
  v11 = v0[8];
  v12 = v0[5];
  sub_2645627C0(v0[13], &qword_27FF72838, &qword_2645D9650);
  (*(v4 + 8))(v2, v3);

  v9 = v0[1];

  return v9();
}

uint64_t sub_264560A50()
{
  v1 = v0;
  v2 = sub_2645D367C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72780, &qword_2645D9520) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v32 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72788, &qword_2645D9528);
  v10 = sub_2645D361C();
  v11 = OBJC_IVAR___SMActivityManagerInternal_activities;
  swift_beginAccess();
  v12 = *(v1 + v11);
  *(v1 + v11) = v10;

  v14 = *(v1 + v11);
  if (v14 >> 62)
  {
    result = sub_2645D3BCC();
    v15 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      return result;
    }
  }

  if (v15 < 1)
  {
    __break(1u);
  }

  else
  {
    v36 = (v3 + 8);
    v37 = v14 & 0xC000000000000001;

    v16 = 0;
    *&v17 = 136315138;
    v32 = v17;
    v34 = v14;
    v35 = v9;
    v33 = v6;
    do
    {
      if (v37)
      {
        MEMORY[0x26673C9D0](v16, v14);
      }

      else
      {
        v19 = *(v14 + 8 * v16 + 32);
      }

      if (qword_280BCB618 != -1)
      {
        swift_once();
      }

      v20 = sub_2645D38CC();
      __swift_project_value_buffer(v20, qword_280BCB620);

      v21 = sub_2645D38AC();
      v22 = sub_2645D3AEC();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = v2;
        v25 = swift_slowAlloc();
        v38 = v25;
        *v23 = v32;
        v26 = sub_2645D362C();
        v28 = v15;
        v29 = sub_264561058(v26, v27, &v38);

        *(v23 + 4) = v29;
        v15 = v28;
        _os_log_impl(&dword_26455D000, v21, v22, "Ending activity -  (%s)", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v25);
        v30 = v25;
        v2 = v24;
        v6 = v33;
        v9 = v35;
        MEMORY[0x26673D4A0](v30, -1, -1);
        v31 = v23;
        v14 = v34;
        MEMORY[0x26673D4A0](v31, -1, -1);
      }

      ++v16;
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72798, &qword_2645D9530);
      (*(*(v18 - 8) + 56))(v9, 1, 1, v18);
      sub_2645D366C();
      sub_2645D363C();

      (*v36)(v6, v2);
      sub_2645627C0(v9, &qword_27FF72780, &qword_2645D9520);
    }

    while (v15 != v16);
  }

  return result;
}

BOOL sub_264560E74()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72788, &qword_2645D9528);
  v2 = sub_2645D361C();
  v3 = OBJC_IVAR___SMActivityManagerInternal_activities;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = v2;

  v5 = *(v1 + v3);
  if (v5 >> 62)
  {
    if (v5 < 0)
    {
      v8 = *(v1 + v3);
    }

    v6 = sub_2645D3BCC();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v6 != 0;
}

id SMActivityManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SMActivityManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_264561058(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_264561124(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_264562498(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_264561124(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_264561230(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_2645D3BAC();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_264561230(uint64_t a1, unint64_t a2)
{
  v4 = sub_26456127C(a1, a2);
  sub_2645613AC(&unk_287603B80);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_26456127C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_264561498(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_2645D3BAC();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_2645D39FC();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_264561498(v10, 0);
        result = sub_2645D3B6C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2645613AC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_26456150C(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_264561498(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72820, &qword_2645D9628);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_26456150C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72820, &qword_2645D9628);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void sub_264561600()
{
  v1 = v0;
  v2 = sub_2645D36BC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72830, &qword_2645D9648) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = v49 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72798, &qword_2645D9530);
  v11 = *(v10 - 8);
  v12 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v56 = v49 - v13;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72788, &qword_2645D9528);
  v14 = sub_2645D361C();
  v15 = OBJC_IVAR___SMActivityManagerInternal_activities;
  swift_beginAccess();
  v16 = *(v0 + v15);
  *(v0 + v15) = v14;

  v17 = *(v0 + v15);
  if (v17 >> 62)
  {
    if (v17 < 0)
    {
      v47 = *(v0 + v15);
    }

    v18 = sub_2645D3BCC();
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v18)
  {
    if (qword_280BCB618 != -1)
    {
      swift_once();
    }

    v19 = sub_2645D38CC();
    __swift_project_value_buffer(v19, qword_280BCB620);
    v20 = sub_2645D38AC();
    v21 = sub_2645D3B0C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_26455D000, v20, v21, "Unable to start live activity - another activity is already active", v22, 2u);
      MEMORY[0x26673D4A0](v22, -1, -1);
    }
  }

  else
  {
    if (qword_280BCB618 != -1)
    {
      swift_once();
    }

    v50 = v11;
    v51 = v10;
    v52 = v6;
    v53 = v3;
    v54 = v2;
    v23 = sub_2645D38CC();
    v49[0] = __swift_project_value_buffer(v23, qword_280BCB620);
    v24 = sub_2645D38AC();
    v25 = sub_2645D3AEC();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_26455D000, v24, v25, "Starting live activity", v26, 2u);
      MEMORY[0x26673D4A0](v26, -1, -1);
    }

    v27 = sub_2645D398C();
    v49[1] = v28;
    v49[2] = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72858, &qword_2645D9658);
    v29 = sub_2645D365C();
    v30 = *(v29 - 8);
    v31 = *(v30 + 72);
    v32 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_2645D9510;
    v34 = (v33 + v32);
    *v34 = sub_2645D398C();
    v34[1] = v35;
    v36 = *MEMORY[0x277CB9338];
    v37 = *(v30 + 104);
    v37(v34, v36, v29);
    v38 = (v34 + v31);
    *v38 = sub_2645D398C();
    v38[1] = v39;
    v37(v38, v36, v29);
    v40 = sub_2645D35EC();
    (*(*(v40 - 8) + 56))(v9, 1, 1, v40);
    sub_2645626C4();
    sub_264562718();
    sub_26456276C();
    v41 = v56;
    sub_2645D36CC();
    sub_2645D368C();
    v42 = v52;
    sub_2645D369C();
    sub_2645D36AC();
    sub_2645D364C();

    swift_beginAccess();

    MEMORY[0x26673C870](v43);
    v45 = v53;
    v44 = v54;
    v46 = v51;
    if (*((*(v1 + v15) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v15) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v48 = *((*(v1 + v15) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_2645D3A6C();
    }

    sub_2645D3A7C();
    swift_endAccess();

    (*(v45 + 8))(v42, v44);
    (*(v50 + 8))(v41, v46);
  }
}

void sub_264561DA0(void *a1, int a2)
{
  v3 = v2;
  LODWORD(v4) = a2;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72828, &qword_2645D9630) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = &v36 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72788, &qword_2645D9528);
  v9 = sub_2645D361C();
  v10 = OBJC_IVAR___SMActivityManagerInternal_activities;
  swift_beginAccess();
  v11 = *&v3[v10];
  *&v3[v10] = v9;

  v12 = *&v3[v10];
  if (v12 >> 62)
  {
    if (v12 < 0)
    {
      v31 = *&v3[v10];
    }

    if (sub_2645D3BCC())
    {
      goto LABEL_3;
    }
  }

  else if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    if ((v12 & 0xC000000000000001) != 0)
    {

      v13 = MEMORY[0x26673C9D0](0, v12);

LABEL_6:
      if ([a1 sessionState] == 1)
      {
        if (qword_280BCB618 != -1)
        {
          swift_once();
        }

        v14 = sub_2645D38CC();
        __swift_project_value_buffer(v14, qword_280BCB620);
        v15 = sub_2645D38AC();
        v16 = sub_2645D3B0C();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          *v17 = 0;
          _os_log_impl(&dword_26455D000, v15, v16, "Session is not active - end the activity instead of updating", v17, 2u);
          MEMORY[0x26673D4A0](v17, -1, -1);
        }

        sub_264560A50();
      }

      else
      {
        if (qword_280BCB618 != -1)
        {
          swift_once();
        }

        v18 = sub_2645D38CC();
        __swift_project_value_buffer(v18, qword_280BCB620);

        v19 = sub_2645D38AC();
        v20 = sub_2645D3AEC();

        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          v37 = v4;
          v4 = v21;
          v22 = swift_slowAlloc();
          v38 = v22;
          *v4 = 136315138;
          v23 = sub_2645D362C();
          v25 = sub_264561058(v23, v24, &v38);

          *(v4 + 4) = v25;
          _os_log_impl(&dword_26455D000, v19, v20, "Updating live activity - (%s)", v4, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v22);
          MEMORY[0x26673D4A0](v22, -1, -1);
          v26 = v4;
          LOBYTE(v4) = v37;
          MEMORY[0x26673D4A0](v26, -1, -1);
        }

        v27 = sub_2645D3ACC();
        (*(*(v27 - 8) + 56))(v8, 1, 1, v27);
        v28 = swift_allocObject();
        *(v28 + 16) = 0;
        *(v28 + 24) = 0;
        *(v28 + 32) = a1;
        *(v28 + 40) = v3;
        *(v28 + 48) = v13;
        *(v28 + 56) = v4 & 1;
        v29 = a1;
        v30 = v3;
        sub_26456FA4C(0, 0, v8, &unk_2645D9640, v28);
      }

      return;
    }

    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v13 = *(v12 + 32);

      goto LABEL_6;
    }

    __break(1u);
    goto LABEL_26;
  }

  if (qword_280BCB618 != -1)
  {
LABEL_26:
    swift_once();
  }

  v32 = sub_2645D38CC();
  __swift_project_value_buffer(v32, qword_280BCB620);
  v33 = sub_2645D38AC();
  v34 = sub_2645D3B0C();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_26455D000, v33, v34, "Unable to update live activity - no activities found", v35, 2u);
    MEMORY[0x26673D4A0](v35, -1, -1);
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void sub_26456244C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_264562498(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2645624F8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2645625D0;

  return sub_2645600B8(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_2645625D0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_2645626C4()
{
  result = qword_27FF72840;
  if (!qword_27FF72840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF72840);
  }

  return result;
}

unint64_t sub_264562718()
{
  result = qword_27FF72848;
  if (!qword_27FF72848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF72848);
  }

  return result;
}

unint64_t sub_26456276C()
{
  result = qword_27FF72850;
  if (!qword_27FF72850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF72850);
  }

  return result;
}

uint64_t sub_2645627C0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_26456295C@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF729E0, &qword_2645D9680);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v63 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v63 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v63 - v21;
  if (!a1)
  {
    goto LABEL_8;
  }

  v23 = a1[2];
  if (!(v23 | a3))
  {
    if (qword_27FF72658 != -1)
    {
      swift_once();
    }

    v24 = sub_2645D38CC();
    __swift_project_value_buffer(v24, qword_27FF72AD8);
    v25 = sub_2645D38AC();
    v26 = sub_2645D3B0C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_26455D000, v25, v26, "Live Activity, deepLinkURL, unable to resolve conversation", v27, 2u);
      MEMORY[0x26673D4A0](v27, -1, -1);
    }

    goto LABEL_8;
  }

  if (v23 < 2)
  {
    if (v23)
    {
      goto LABEL_15;
    }

LABEL_8:
    v28 = sub_2645D359C();
    v29 = *(*(v28 - 8) + 56);

    return v29(a5, 1, 1, v28);
  }

  if (!a3)
  {
LABEL_15:
    v32 = a1[4];
    v31 = a1[5];
    v68 = a2;
    v69 = v32;
    v70 = v31;

    v71 = 0;
    goto LABEL_16;
  }

  v71 = 1;
  v68 = a2;
  v69 = a2;
  v70 = a3;
LABEL_16:
  if (qword_27FF72658 != -1)
  {
    swift_once();
  }

  v33 = sub_2645D38CC();
  __swift_project_value_buffer(v33, qword_27FF72AD8);

  v34 = sub_2645D38AC();
  v35 = sub_2645D3AEC();

  v67 = v35;
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v66 = a5;
    v37 = v36;
    v65 = swift_slowAlloc();
    v74 = v65;
    *v37 = 136315650;
    v72 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF729E8, &qword_2645D9688);
    v64 = v34;
    v38 = sub_2645D3B3C();
    v40 = a4;
    v41 = sub_264561058(v38, v39, &v74);

    *(v37 + 4) = v41;
    a4 = v40;
    *(v37 + 12) = 2080;
    v72 = v68;
    v73 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF729F0, &unk_2645D9690);
    v42 = sub_2645D3B3C();
    v44 = sub_264561058(v42, v43, &v74);

    *(v37 + 14) = v44;
    *(v37 + 22) = 1024;
    *(v37 + 24) = v40 & 1;
    v34 = v64;
    _os_log_impl(&dword_26455D000, v64, v67, "Live Activity, deepLinkURL, receiverHandles, %s, groupID, %s, isSessionActive, %{BOOL}d", v37, 0x1Cu);
    v45 = v65;
    swift_arrayDestroy();
    MEMORY[0x26673D4A0](v45, -1, -1);
    v46 = v37;
    a5 = v66;
    MEMORY[0x26673D4A0](v46, -1, -1);
  }

  v47 = objc_opt_self();
  v48 = sub_2645D397C();

  if (a4)
  {
    if (v71)
    {
      v49 = sub_2645D3A3C();
      v50 = [v47 createURLToDetailViewForGroupID:v48 recipientHandles:v49];

      if (v50)
      {
        sub_2645D358C();

        v51 = 0;
      }

      else
      {
        v51 = 1;
      }

      v58 = sub_2645D359C();
      (*(*(v58 - 8) + 56))(v17, v51, 1, v58);
      v59 = v17;
    }

    else
    {
      v54 = [v47 createURLToDetailViewForRecipientHandle_];

      if (v54)
      {
        sub_2645D358C();

        v55 = 0;
      }

      else
      {
        v55 = 1;
      }

      v61 = sub_2645D359C();
      (*(*(v61 - 8) + 56))(v14, v55, 1, v61);
      v59 = v14;
    }
  }

  else if (v71)
  {
    v52 = [v47 createURLToConversationForGroupID_];

    if (v52)
    {
      sub_2645D358C();

      v53 = 0;
    }

    else
    {
      v53 = 1;
    }

    v60 = sub_2645D359C();
    (*(*(v60 - 8) + 56))(v22, v53, 1, v60);
    v59 = v22;
  }

  else
  {
    v56 = [v47 createURLToConversationForRecipientHandle_];

    if (v56)
    {
      sub_2645D358C();

      v57 = 0;
    }

    else
    {
      v57 = 1;
    }

    v62 = sub_2645D359C();
    (*(*(v62 - 8) + 56))(v20, v57, 1, v62);
    v59 = v20;
  }

  return sub_26456A020(v59, a5, &qword_27FF729E0, &qword_2645D9680);
}

id SMInitiatorAlertUtilities.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SMInitiatorAlertUtilities.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SMInitiatorAlertUtilities();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SMInitiatorAlertUtilities.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SMInitiatorAlertUtilities();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_26456314C(char *a1, int64_t a2, char a3)
{
  result = sub_26456316C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26456316C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF729F8, &unk_2645D96D0);
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

id _s13SafetyMonitor25SMInitiatorAlertUtilitiesC21recipientsDisplayNameySSSgSo14SMConversationCSgFZ_0(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  v2 = a1;
  v3 = [v2 receiverHandles];
  sub_264569FD8(0, &qword_27FF72D70, off_279B644D0);
  v4 = sub_2645D3A4C();

  if (v4 >> 62)
  {
LABEL_40:
    v5 = sub_2645D3BCC();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5 < 2)
  {
    if (qword_27FF72748 != -1)
    {
      swift_once();
    }

    v18 = v2;
    v19 = sub_26457325C(v1);
    v46 = v18;

    if (v19 >> 62)
    {
      v8 = sub_2645D3BCC();
      if (v8)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v8 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8)
      {
LABEL_14:
        v2 = v19;
        v50 = MEMORY[0x277D84F90];
        sub_26456314C(0, v8 & ~(v8 >> 63), 0);
        if (v8 < 0)
        {
          __break(1u);
          goto LABEL_46;
        }

        v20 = v50;
        v21 = objc_opt_self();
        v22 = 0;
        v23 = v2;
        v48 = v21;
        v49 = v2 & 0xC000000000000001;
        v47 = v2 & 0xFFFFFFFFFFFFFF8;
        v1 = v2;
        do
        {
          v4 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            __break(1u);
LABEL_39:
            __break(1u);
            goto LABEL_40;
          }

          if (v49)
          {
            v24 = MEMORY[0x26673C9D0](v22, v23);
          }

          else
          {
            if (v22 >= *(v47 + 16))
            {
              goto LABEL_39;
            }

            v24 = v23[v22 + 4];
          }

          v25 = v24;
          result = [v48 componentsForContact_];
          if (!result)
          {
            __break(1u);
            return result;
          }

          v27 = result;
          v28 = [objc_opt_self() localizedStringFromPersonNameComponents:result style:1 options:0];
          v29 = sub_2645D398C();
          v31 = v30;

          v50 = v20;
          v2 = v20[2];
          v32 = v20[3];
          if (v2 >= v32 >> 1)
          {
            sub_26456314C((v32 > 1), v2 + 1, 1);
            v20 = v50;
          }

          v20[2] = v2 + 1;
          v33 = &v20[2 * v2];
          v33[4] = v29;
          v33[5] = v31;
          ++v22;
          v23 = v1;
        }

        while (v4 != v8);

        if (!v20[2])
        {
          goto LABEL_43;
        }

        goto LABEL_26;
      }
    }

    v20 = MEMORY[0x277D84F90];
    if (!*(MEMORY[0x277D84F90] + 16))
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

LABEL_26:
    v8 = v20[4];
    v4 = v20[5];

    v34 = qword_27FF72658;

    if (v34 == -1)
    {
LABEL_27:
      v35 = sub_2645D38CC();
      __swift_project_value_buffer(v35, qword_27FF72AD8);

      v36 = sub_2645D38AC();
      v37 = sub_2645D3AEC();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v50 = v39;
        *v38 = 136315394;
        *(v38 + 4) = sub_264561058(0xD000000000000019, 0x80000002645DAC00, &v50);
        *(v38 + 12) = 2080;
        v40 = sub_264561058(v8, v4, &v50);

        *(v38 + 14) = v40;
        _os_log_impl(&dword_26455D000, v36, v37, "%s, got contact name %s", v38, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x26673D4A0](v39, -1, -1);
        MEMORY[0x26673D4A0](v38, -1, -1);

        return v8;
      }

LABEL_36:

      return v8;
    }

LABEL_44:
    swift_once();
    goto LABEL_27;
  }

  v6 = [v2 displayName];
  if (!v6)
  {
    if (qword_27FF72658 == -1)
    {
LABEL_31:
      v41 = sub_2645D38CC();
      __swift_project_value_buffer(v41, qword_27FF72AD8);
      v42 = sub_2645D38AC();
      v43 = sub_2645D3AEC();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v50 = v45;
        *v44 = 136315138;
        *(v44 + 4) = sub_264561058(0xD000000000000019, 0x80000002645DAC00, &v50);
        _os_log_impl(&dword_26455D000, v42, v43, "%s, no custom group chat display name found", v44, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v45);
        MEMORY[0x26673D4A0](v45, -1, -1);
        MEMORY[0x26673D4A0](v44, -1, -1);
      }

      return 0;
    }

LABEL_46:
    swift_once();
    goto LABEL_31;
  }

  v7 = v6;
  v8 = sub_2645D398C();
  v10 = v9;

  v11 = qword_27FF72658;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = sub_2645D38CC();
  __swift_project_value_buffer(v12, qword_27FF72AD8);

  v13 = sub_2645D38AC();
  v14 = sub_2645D3AEC();

  if (!os_log_type_enabled(v13, v14))
  {

    goto LABEL_36;
  }

  v15 = swift_slowAlloc();
  v16 = swift_slowAlloc();
  v50 = v16;
  *v15 = 136315394;
  *(v15 + 4) = sub_264561058(0xD000000000000019, 0x80000002645DAC00, &v50);
  *(v15 + 12) = 2080;
  v17 = sub_264561058(v8, v10, &v50);

  *(v15 + 14) = v17;
  _os_log_impl(&dword_26455D000, v13, v14, "%s, got group chat display name %s", v15, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x26673D4A0](v16, -1, -1);
  MEMORY[0x26673D4A0](v15, -1, -1);

  return v8;
}

uint64_t _s13SafetyMonitor25SMInitiatorAlertUtilitiesC10alertTitle4with11addTimeMode12shortStrings05watchM0SSSo21SMSessionManagerStateCSg_S3btFZ_0(void *a1, char a2, int a3, int a4)
{
  v108 = a4;
  v109 = a3;
  v6 = *(*(sub_2645D394C() - 8) + 64);
  v7 = (MEMORY[0x28223BE20])();
  v8 = MEMORY[0x28223BE20](v7);
  v9 = MEMORY[0x28223BE20](v8);
  v10 = MEMORY[0x28223BE20](v9);
  v11 = MEMORY[0x28223BE20](v10);
  v12 = MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v107 = &v99[-v13];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72830, &qword_2645D9648);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v104 = &v99[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x28223BE20](v16);
  v105 = &v99[-v19];
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v99[-v21];
  MEMORY[0x28223BE20](v20);
  v106 = &v99[-v23];
  v24 = sub_2645D360C();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v99[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = sub_2645D396C();
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v31 = &v99[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a2)
  {
    sub_2645D390C();
    sub_264569FD8(0, &qword_27FF72A00, off_279B64550);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v33 = [objc_opt_self() bundleForClass_];
    sub_2645D35FC();
    return sub_2645D399C();
  }

  v103 = v31;
  if (!a1)
  {
    goto LABEL_8;
  }

  v35 = a1;
  v36 = &off_279B66000;
  v110 = v35;
  v37 = [v35 configuration];
  if (!v37)
  {

LABEL_8:
    if (qword_27FF72658 != -1)
    {
      swift_once();
    }

    v41 = sub_2645D38CC();
    __swift_project_value_buffer(v41, qword_27FF72AD8);
    v42 = sub_2645D38AC();
    v43 = sub_2645D3B0C();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v111 = v45;
      *v44 = 136315138;
      *(v44 + 4) = sub_264561058(0xD000000000000037, 0x80000002645DD400, &v111);
      _os_log_impl(&dword_26455D000, v42, v43, "Invalid Session State in %s!", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v45);
      MEMORY[0x26673D4A0](v45, -1, -1);
      MEMORY[0x26673D4A0](v44, -1, -1);
    }

    sub_2645D390C();
    sub_264569FD8(0, &qword_27FF72A00, off_279B64550);
    v46 = swift_getObjCClassFromMetadata();
    v47 = [objc_opt_self() bundleForClass_];
    sub_2645D35FC();
    return sub_2645D39AC();
  }

  v101 = v27;
  v102 = v37;
  v38 = [v110 configuration];
  if (v38)
  {
    v39 = v38;
    v40 = [v38 conversation];

    v36 = &off_279B66000;
    v100 = [v40 isGroup];
  }

  else
  {
    v100 = 0;
  }

  v48 = [v110 v36[201]];
  if (v48)
  {
    v49 = v48;
    v50 = [v48 &selRef_appendFormat_ + 2];
  }

  else
  {
    v50 = 0;
  }

  _s13SafetyMonitor25SMInitiatorAlertUtilitiesC21recipientsDisplayNameySSSgSo14SMConversationCSgFZ_0(v50);
  v52 = v51;

  v53 = [v110 sessionState];
  if (v53 > 8)
  {
    switch(v53)
    {
      case 9:

        if ((v109 & 1) == 0 && (v108 & 1) == 0)
        {
          goto LABEL_52;
        }

        break;
      case 12:
        if (v109)
        {
          if ([v110 sessionEndReason] == 9)
          {
            goto LABEL_41;
          }

          if (!v100 || v52)
          {
            goto LABEL_61;
          }
        }

        else
        {
          if ((v108 & 1) == 0)
          {
            if ([v110 sessionEndReason] == 1)
            {
              if (!v100)
              {
                sub_2645D393C();
                sub_2645D392C();
                sub_2645D391C();

                sub_2645D392C();
                sub_2645D395C();
                sub_264569FD8(0, &qword_27FF72A00, off_279B64550);
                v85 = swift_getObjCClassFromMetadata();
                [objc_opt_self() bundleForClass_];
                sub_2645D35FC();
                goto LABEL_90;
              }

              if (!v52)
              {
                goto LABEL_52;
              }
            }

            else
            {
              if ([v110 sessionEndReason] == 9)
              {

                sub_2645D390C();
                sub_264569FD8(0, &qword_27FF72A00, off_279B64550);
                v70 = swift_getObjCClassFromMetadata();
                [objc_opt_self() bundleForClass_];
                sub_2645D35FC();
                goto LABEL_90;
              }

              if (v100)
              {
                if (v52)
                {
                  goto LABEL_37;
                }

                goto LABEL_96;
              }
            }

LABEL_61:
            sub_2645D393C();
            sub_2645D392C();
            sub_2645D391C();

            sub_2645D392C();
            sub_2645D395C();
            sub_264569FD8(0, &qword_27FF72A00, off_279B64550);
            v66 = swift_getObjCClassFromMetadata();
            v67 = [objc_opt_self() bundleForClass_];
            sub_2645D35FC();
            goto LABEL_62;
          }

          [v110 sessionEndReason];
        }

        break;
      case 14:

        if (v109 & 1) != 0 || (v108)
        {
          goto LABEL_52;
        }

        break;
      default:
LABEL_33:

        sub_2645D390C();
        sub_264569FD8(0, &qword_27FF72A00, off_279B64550);
        v54 = swift_getObjCClassFromMetadata();
        v55 = [objc_opt_self() bundleForClass_];
LABEL_89:
        v55;
        sub_2645D35FC();
        goto LABEL_90;
    }

LABEL_57:
    sub_2645D390C();
    sub_264569FD8(0, &qword_27FF72A00, off_279B64550);
    v64 = swift_getObjCClassFromMetadata();
    v65 = [objc_opt_self() bundleForClass_];
    sub_2645D35FC();
    goto LABEL_62;
  }

  if (v53 != 2)
  {
    if (v53 != 4)
    {
      if (v53 == 7)
      {

        if (v109 & 1) != 0 || (v108)
        {
LABEL_52:
          sub_2645D390C();
          sub_264569FD8(0, &qword_27FF72A00, off_279B64550);
          v63 = swift_getObjCClassFromMetadata();
          [objc_opt_self() bundleForClass_];
          sub_2645D35FC();
LABEL_90:
          v68 = sub_2645D39AC();
          goto LABEL_91;
        }

        goto LABEL_57;
      }

      goto LABEL_33;
    }

    if (v109)
    {
      if (v100)
      {
        if (v52)
        {
LABEL_37:
          sub_2645D393C();
          sub_2645D392C();
          sub_2645D391C();

          sub_2645D392C();
          sub_2645D395C();
LABEL_38:
          sub_264569FD8(0, &qword_27FF72A00, off_279B64550);
          v56 = swift_getObjCClassFromMetadata();
          v57 = [objc_opt_self() bundleForClass_];
          sub_2645D35FC();
LABEL_62:
          v68 = sub_2645D399C();
LABEL_91:
          v78 = v68;
LABEL_92:

LABEL_93:
          return v78;
        }

LABEL_96:
        sub_2645D390C();
        goto LABEL_38;
      }

      goto LABEL_61;
    }

    if (v108)
    {
LABEL_41:

      sub_2645D390C();
      sub_264569FD8(0, &qword_27FF72A00, off_279B64550);
      v58 = swift_getObjCClassFromMetadata();
      v59 = [objc_opt_self() bundleForClass_];
      sub_2645D35FC();
      goto LABEL_62;
    }

    v69 = v102;
    if ([v102 sessionType] == 1)
    {
      if (v100)
      {
        if (v52)
        {
          goto LABEL_61;
        }

LABEL_88:
        sub_2645D390C();
        sub_264569FD8(0, &qword_27FF72A00, off_279B64550);
        v77 = swift_getObjCClassFromMetadata();
        v55 = [objc_opt_self() bundleForClass_];
        goto LABEL_89;
      }
    }

    else if (v100)
    {
      if (v52)
      {
        goto LABEL_61;
      }

      goto LABEL_88;
    }

    sub_2645D393C();
    v86 = v69;
    sub_2645D392C();
    sub_2645D391C();

    sub_2645D392C();
    sub_2645D395C();
    sub_264569FD8(0, &qword_27FF72A00, off_279B64550);
    v87 = swift_getObjCClassFromMetadata();
    v88 = [objc_opt_self() bundleForClass_];
    sub_2645D35FC();
    v78 = sub_2645D39AC();

    goto LABEL_93;
  }

  if ([v110 estimatedEndDateStatus] == 2 && (v108 & 1) == 0)
  {
    goto LABEL_88;
  }

  if ([v110 estimatedEndDateStatus] != 3 || (v109 & 1) != 0 || (v108 & 1) != 0)
  {
LABEL_83:
    if ([v110 estimatedEndDateStatus] == 3)
    {
      v74 = [v110 configuration];
      if (v74)
      {
        v75 = v74;
        v76 = [v74 sessionType];

        if (v76 == 4 && (v108 & 1) == 0 && (v109 & 1) == 0)
        {
          goto LABEL_52;
        }
      }
    }

    goto LABEL_88;
  }

  v60 = [v110 estimatedEndDate];
  if (v60)
  {
    v61 = v60;
    sub_2645D35CC();

    v62 = sub_2645D35EC();
    (*(*(v62 - 8) + 56))(v22, 0, 1, v62);
  }

  else
  {
    v62 = sub_2645D35EC();
    (*(*(v62 - 8) + 56))(v22, 1, 1, v62);
  }

  v71 = v106;
  sub_26456A020(v22, v106, &qword_27FF72830, &qword_2645D9648);
  sub_2645D35EC();
  v72 = *(v62 - 8);
  v73 = *(v72 + 48);
  if (v73(v71, 1, v62) == 1)
  {
    sub_26456A088(v71);
    goto LABEL_83;
  }

  v79 = sub_2645D35AC();
  v80 = *(v72 + 8);
  v80(v71, v62);
  v81 = [v110 coarseEstimatedEndDate];
  if (v81)
  {
    v82 = v104;
    v83 = v81;
    sub_2645D35CC();

    v84 = 0;
  }

  else
  {
    v84 = 1;
    v82 = v104;
  }

  (*(v72 + 56))(v82, v84, 1, v62);
  v89 = v82;
  v90 = v105;
  sub_26456A020(v89, v105, &qword_27FF72830, &qword_2645D9648);
  if (v73(v90, 1, v62) == 1)
  {
    sub_26456A088(v90);
    sub_2645D393C();
    sub_2645D392C();
    v91 = [v79 absoluteTimeString:0 preposition:0 capitalized:0];
    sub_2645D398C();

    sub_2645D391C();

    sub_2645D392C();
    sub_2645D395C();
    sub_264569FD8(0, &qword_27FF72A00, off_279B64550);
    v92 = swift_getObjCClassFromMetadata();
    v93 = [objc_opt_self() bundleForClass_];
    sub_2645D35FC();
    v78 = sub_2645D39AC();

    goto LABEL_92;
  }

  v94 = sub_2645D35AC();
  v80(v90, v62);
  sub_2645D393C();
  sub_2645D392C();
  v95 = [v94 absoluteTimeString:0 preposition:0 capitalized:0];
  sub_2645D398C();

  sub_2645D391C();

  sub_2645D392C();
  sub_2645D395C();
  sub_264569FD8(0, &qword_27FF72A00, off_279B64550);
  v96 = swift_getObjCClassFromMetadata();
  v97 = [objc_opt_self() bundleForClass_];
  sub_2645D35FC();
  v98 = sub_2645D39AC();

  return v98;
}

id _s13SafetyMonitor25SMInitiatorAlertUtilitiesC12alertMessage4with11addTimeMode19isWatchNotification12shortStrings05watchP0SSSo21SMSessionManagerStateCSg_S4btFZ_0(void *a1, char a2, int a3, int a4, int a5)
{
  v224 = a5;
  LODWORD(v220) = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72830, &qword_2645D9648);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v213 = v200 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v214 = v200 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v217 = v200 - v15;
  MEMORY[0x28223BE20](v14);
  v218 = v200 - v16;
  v17 = sub_2645D394C();
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v20 = MEMORY[0x28223BE20](v19);
  v210 = v200 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v209 = v200 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v207 = v200 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v208 = v200 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v211 = v200 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v31 = MEMORY[0x28223BE20](v30);
  v32 = MEMORY[0x28223BE20](v31);
  v212 = v200 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v216 = v200 - v35;
  MEMORY[0x28223BE20](v34);
  v219 = v200 - v36;
  v37 = sub_2645D35EC();
  v222 = *(v37 - 8);
  v223 = v37;
  v38 = *(v222 + 64);
  v39 = MEMORY[0x28223BE20](v37);
  v41 = v200 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x28223BE20](v39);
  v215 = v200 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v46 = v200 - v45;
  MEMORY[0x28223BE20](v44);
  v48 = v200 - v47;
  v49 = sub_2645D360C();
  v50 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49 - 8);
  v52 = v200 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_2645D396C();
  v54 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53 - 8);
  v56 = v200 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
LABEL_2:
    sub_2645D390C();
    sub_264569FD8(0, &qword_27FF72A00, off_279B64550);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v68 = [objc_opt_self() bundleForClass_];
    sub_2645D35FC();
    return sub_2645D39AC();
  }

  v205 = a4;
  v206 = v56;
  v221 = v52;
  if (!a1)
  {
LABEL_8:
    if (qword_27FF72658 != -1)
    {
      swift_once();
    }

    v63 = sub_2645D38CC();
    __swift_project_value_buffer(v63, qword_27FF72AD8);
    v64 = sub_2645D38AC();
    v65 = sub_2645D3B0C();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v225 = v67;
      *v66 = 136315138;
      *(v66 + 4) = sub_264561058(0xD00000000000004DLL, 0x80000002645DAC70, &v225);
      _os_log_impl(&dword_26455D000, v64, v65, "Invalid Session State in %s!", v66, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v67);
      MEMORY[0x26673D4A0](v67, -1, -1);
      MEMORY[0x26673D4A0](v66, -1, -1);
    }

    goto LABEL_2;
  }

  v58 = a1;
  v59 = [v58 configuration];
  if (!v59)
  {

    goto LABEL_8;
  }

  v203 = v59;
  v60 = [v58 configuration];
  v204 = v58;
  if (v60)
  {
    v61 = v60;
    v62 = [v60 conversation];

    v201 = [v62 isGroup];
    v58 = v204;
  }

  else
  {
    v201 = 0;
  }

  v70 = [v58 configuration];
  if (v70)
  {
    v71 = v70;
    v72 = [v70 &selRef_appendFormat_ + 2];

    v58 = v204;
  }

  else
  {
    v72 = 0;
  }

  v200[1] = _s13SafetyMonitor25SMInitiatorAlertUtilitiesC21recipientsDisplayNameySSSgSo14SMConversationCSgFZ_0(v72);
  v202 = v73;

  v74 = [v58 sessionState];
  if (v74 > 8)
  {
    if (v74 == 9)
    {
      goto LABEL_25;
    }

    if (v74 != 12)
    {
      if (v74 != 14)
      {
        goto LABEL_43;
      }

      goto LABEL_25;
    }

    goto LABEL_52;
  }

  if (v74 == 2)
  {
    v87 = [v203 sessionType];
    if (v87 == 4)
    {
      if ((v224 & 1) == 0 && (v205 & 1) == 0)
      {
        v126 = v203;
        if (v201)
        {
          if (v202)
          {
            sub_2645D393C();
            sub_2645D392C();
            sub_2645D391C();

            sub_2645D392C();
            sub_2645D395C();
          }

          else
          {
            sub_2645D390C();
          }

          sub_264569FD8(0, &qword_27FF72A00, off_279B64550);
          v127 = swift_getObjCClassFromMetadata();
          v128 = [objc_opt_self() bundleForClass_];
          sub_2645D35FC();
        }

        else
        {
          sub_2645D393C();
          sub_2645D392C();
          sub_2645D391C();

          sub_2645D392C();
          sub_2645D395C();
          sub_264569FD8(0, &qword_27FF72A00, off_279B64550);
          v163 = swift_getObjCClassFromMetadata();
          v164 = [objc_opt_self() bundleForClass_];
          sub_2645D35FC();
        }

        v83 = sub_2645D399C();

        goto LABEL_114;
      }

      sub_2645D390C();
      sub_264569FD8(0, &qword_27FF72A00, off_279B64550);
      v141 = swift_getObjCClassFromMetadata();
      v142 = [objc_opt_self() bundleForClass_];
      sub_2645D35FC();
      v112 = sub_2645D399C();
      goto LABEL_62;
    }

    if (v87 != 2)
    {
      v88 = v223;
      if (v87 != 1)
      {

        if (qword_27FF72658 != -1)
        {
          swift_once();
        }

        v129 = sub_2645D38CC();
        __swift_project_value_buffer(v129, qword_27FF72AD8);
        v99 = v203;
        v100 = sub_2645D38AC();
        v130 = sub_2645D3B0C();
        if (os_log_type_enabled(v100, v130))
        {
          v131 = swift_slowAlloc();
          v132 = swift_slowAlloc();
          v225 = v132;
          *v131 = 136315394;
          *(v131 + 4) = sub_264561058(0xD00000000000004DLL, 0x80000002645DAC70, &v225);
          *(v131 + 12) = 2048;
          *(v131 + 14) = [v99 sessionType];

          _os_log_impl(&dword_26455D000, v100, v130, "Invalid session type in %s: %lu", v131, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v132);
          MEMORY[0x26673D4A0](v132, -1, -1);
          MEMORY[0x26673D4A0](v131, -1, -1);

          goto LABEL_92;
        }

LABEL_91:

        goto LABEL_92;
      }

      v84 = v203;
      v89 = [v203 time];
      if (v89)
      {
        v90 = v89;
        v91 = [v89 timeBound];

        sub_2645D35CC();
        v92 = v222;
        v93 = v215;
        (*(v222 + 32))(v215, v41, v88);
        v94 = sub_2645D35AC();
        v95 = [v94 absoluteTimeString:0 preposition:2 capitalized:0];

        sub_2645D398C();
        if (v205)
        {
          sub_2645D393C();
          sub_2645D392C();
          sub_2645D391C();

          sub_2645D392C();
          sub_2645D395C();
          sub_264569FD8(0, &qword_27FF72A00, off_279B64550);
          v96 = swift_getObjCClassFromMetadata();
          v97 = [objc_opt_self() bundleForClass_];
          sub_2645D35FC();
          v83 = sub_2645D39AC();

          (*(v92 + 8))(v93, v88);
        }

        else
        {
          if (v224)
          {

            v161 = sub_2645D35AC();
            v162 = [v161 absoluteTimeString:0 preposition:0 capitalized:0];

            sub_2645D398C();
            [v58 estimatedEndDateStatus];
          }

          sub_2645D393C();
          sub_2645D392C();
          sub_2645D391C();

          sub_2645D392C();
          sub_2645D395C();
          sub_264569FD8(0, &qword_27FF72A00, off_279B64550);
          v183 = swift_getObjCClassFromMetadata();
          [objc_opt_self() bundleForClass_];
          sub_2645D35FC();
          v83 = sub_2645D39AC();

          (*(v222 + 8))(v93, v88);
        }

        return v83;
      }

      sub_2645D390C();
      sub_264569FD8(0, &qword_27FF72A00, off_279B64550);
      v157 = swift_getObjCClassFromMetadata();
      v158 = [objc_opt_self() bundleForClass_];
      sub_2645D35FC();
      v115 = sub_2645D39AC();
      goto LABEL_65;
    }

    v120 = [v58 estimatedEndDate];
    v121 = v223;
    if (v120)
    {
      v122 = v217;
      v123 = v120;
      sub_2645D35CC();

      v124 = v222;
      v125 = *(v222 + 56);
      v125(v122, 0, 1, v121);
    }

    else
    {
      v124 = v222;
      v125 = *(v222 + 56);
      v122 = v217;
      v125(v217, 1, 1, v223);
    }

    v144 = v203;
    v145 = v205;
    v146 = v218;
    sub_26456A020(v122, v218, &qword_27FF72830, &qword_2645D9648);
    v147 = *(v124 + 48);
    if (v147(v146, 1, v121) == 1)
    {
      sub_26456A088(v146);
      if (v145)
      {
        v148 = v204;
        if (v201)
        {
          if (v202)
          {
LABEL_98:
            sub_2645D393C();
            sub_2645D392C();
            sub_2645D391C();

            sub_2645D392C();
            sub_2645D395C();
LABEL_99:
            sub_264569FD8(0, &qword_27FF72A00, off_279B64550);
            v149 = swift_getObjCClassFromMetadata();
            v150 = [objc_opt_self() bundleForClass_];
            sub_2645D35FC();
LABEL_133:
            v83 = sub_2645D399C();

            return v83;
          }

LABEL_147:
          sub_2645D390C();
          goto LABEL_99;
        }
      }

      else
      {
        v148 = v204;
        if (v201)
        {
          if (v202)
          {
            goto LABEL_98;
          }

          goto LABEL_147;
        }
      }

      sub_2645D393C();
      sub_2645D392C();
      sub_2645D391C();

      sub_2645D392C();
      sub_2645D395C();
      sub_264569FD8(0, &qword_27FF72A00, off_279B64550);
      v175 = swift_getObjCClassFromMetadata();
      v176 = [objc_opt_self() bundleForClass_];
      sub_2645D35FC();
      goto LABEL_133;
    }

    v151 = sub_2645D35AC();
    v152 = *(v222 + 8);
    v152(v146, v121);
    v220 = v151;
    v153 = [v204 coarseEstimatedEndDate];
    if (v153)
    {
      v154 = v213;
      v155 = v153;
      sub_2645D35CC();

      v156 = 0;
    }

    else
    {
      v156 = 1;
      v154 = v213;
    }

    v125(v154, v156, 1, v121);
    v165 = v214;
    sub_26456A020(v154, v214, &qword_27FF72830, &qword_2645D9648);
    if (v147(v165, 1, v121) == 1)
    {
      sub_26456A088(v165);
      v166 = 0;
      v167 = v220;
      v168 = v220;
    }

    else
    {
      v169 = sub_2645D35AC();
      v152(v165, v121);
      v168 = v169;
      v167 = v220;

      v166 = v168;
    }

    v109 = v203;
    v170 = [v168 absoluteTimeString:0 preposition:0 capitalized:0];
    sub_2645D398C();

    if (v145)
    {
      if (!v201)
      {
        sub_2645D393C();
        sub_2645D392C();
        sub_2645D391C();

        sub_2645D392C();
        sub_2645D391C();

        sub_2645D392C();
        sub_2645D395C();
        sub_264569FD8(0, &qword_27FF72A00, off_279B64550);
        v177 = swift_getObjCClassFromMetadata();
        v178 = [objc_opt_self() bundleForClass_];
        sub_2645D35FC();
        v83 = sub_2645D39AC();

        goto LABEL_129;
      }

      if (!v202)
      {
        sub_2645D393C();
        sub_2645D392C();
        sub_2645D391C();

        sub_2645D392C();
        sub_2645D395C();
        sub_264569FD8(0, &qword_27FF72A00, off_279B64550);
        v190 = swift_getObjCClassFromMetadata();
        v191 = [objc_opt_self() bundleForClass_];
        sub_2645D35FC();
        v173 = sub_2645D39AC();
        goto LABEL_150;
      }

      goto LABEL_122;
    }

    v174 = v204;
    if ([v204 estimatedEndDateStatus] == 1)
    {
      if ((v224 & 1) == 0)
      {

        v189 = [v168 absoluteTimeString:0 preposition:1 capitalized:0];
        sub_2645D398C();

        if (v201)
        {
          v109 = v203;
          if (!v202)
          {
            sub_2645D393C();
            sub_2645D392C();
            sub_2645D391C();

            sub_2645D392C();
            sub_2645D395C();
            sub_264569FD8(0, &qword_27FF72A00, off_279B64550);
            v198 = swift_getObjCClassFromMetadata();
            v199 = [objc_opt_self() bundleForClass_];
            sub_2645D35FC();
            goto LABEL_123;
          }

LABEL_122:
          sub_2645D393C();
          sub_2645D392C();
          sub_2645D391C();

          sub_2645D392C();
          sub_2645D391C();

          sub_2645D392C();
          sub_2645D395C();
          sub_264569FD8(0, &qword_27FF72A00, off_279B64550);
          v171 = swift_getObjCClassFromMetadata();
          v172 = [objc_opt_self() bundleForClass_];
          sub_2645D35FC();
LABEL_123:
          v173 = sub_2645D399C();
LABEL_150:
          v83 = v173;

          goto LABEL_129;
        }

        sub_2645D393C();
        sub_2645D392C();
        sub_2645D391C();

        sub_2645D392C();
        sub_2645D391C();

        sub_2645D392C();
        sub_2645D395C();
        sub_264569FD8(0, &qword_27FF72A00, off_279B64550);
        v194 = swift_getObjCClassFromMetadata();
        v195 = [objc_opt_self() bundleForClass_];
        sub_2645D35FC();
        v182 = sub_2645D399C();
LABEL_138:
        v83 = v182;

        goto LABEL_30;
      }
    }

    else
    {
      v179 = [v174 estimatedEndDateStatus];
      v180 = v224;
      if (v179 != 3 || (v224 & 1) == 0)
      {

        v184 = [v204 estimatedEndDateStatus];
        v185 = v203;
        if (v184 == 2 && (v180 & 1) != 0)
        {

          sub_2645D390C();
          sub_264569FD8(0, &qword_27FF72A00, off_279B64550);
          v186 = swift_getObjCClassFromMetadata();
          v187 = [objc_opt_self() bundleForClass_];
          sub_2645D35FC();
          v188 = sub_2645D39AC();
        }

        else
        {
          if (v201)
          {
            if (v202)
            {
              sub_2645D393C();
              sub_2645D392C();
              sub_2645D391C();

              sub_2645D392C();
              sub_2645D395C();
            }

            else
            {
              sub_2645D390C();
            }

            sub_264569FD8(0, &qword_27FF72A00, off_279B64550);
            v192 = swift_getObjCClassFromMetadata();
            v193 = [objc_opt_self() bundleForClass_];
            sub_2645D35FC();
          }

          else
          {
            sub_2645D393C();
            sub_2645D392C();
            sub_2645D391C();

            sub_2645D392C();
            sub_2645D395C();
            sub_264569FD8(0, &qword_27FF72A00, off_279B64550);
            v196 = swift_getObjCClassFromMetadata();
            v197 = [objc_opt_self() bundleForClass_];
            sub_2645D35FC();
          }

          v188 = sub_2645D399C();
        }

        v83 = v188;

        goto LABEL_130;
      }
    }

    sub_2645D393C();
    sub_2645D392C();
    sub_2645D391C();

    sub_2645D392C();
    sub_2645D395C();
    sub_264569FD8(0, &qword_27FF72A00, off_279B64550);
    v181 = swift_getObjCClassFromMetadata();
    [objc_opt_self() bundleForClass_];
    sub_2645D35FC();
    v182 = sub_2645D39AC();
    goto LABEL_138;
  }

  if (v74 == 4)
  {

    if ((v205 & 1) == 0 && (v224 & 1) == 0)
    {
      v104 = v203;
      if (v220)
      {
        sub_2645D390C();
        sub_264569FD8(0, &qword_27FF72A00, off_279B64550);
        v105 = swift_getObjCClassFromMetadata();
        v106 = [objc_opt_self() bundleForClass_];
        sub_2645D35FC();
        v107 = sub_2645D39AC();
      }

      else
      {
        sub_2645D390C();
        sub_264569FD8(0, &qword_27FF72A00, off_279B64550);
        v133 = swift_getObjCClassFromMetadata();
        v134 = [objc_opt_self() bundleForClass_];
        sub_2645D35FC();
        v107 = sub_2645D399C();
      }

      v83 = v107;

      goto LABEL_114;
    }

LABEL_52:
    sub_2645D390C();
    sub_264569FD8(0, &qword_27FF72A00, off_279B64550);
    v108 = swift_getObjCClassFromMetadata();
    [objc_opt_self() bundleForClass_];
    sub_2645D35FC();
    v112 = sub_2645D39AC();
LABEL_62:
    v83 = v112;

LABEL_114:
    return v83;
  }

  if (v74 != 7)
  {
LABEL_43:

    if (qword_27FF72658 != -1)
    {
      swift_once();
    }

    v98 = sub_2645D38CC();
    __swift_project_value_buffer(v98, qword_27FF72AD8);
    v99 = v203;
    v100 = sub_2645D38AC();
    v101 = sub_2645D3B0C();
    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      v225 = v103;
      *v102 = 136315394;
      *(v102 + 4) = sub_264561058(0xD00000000000004DLL, 0x80000002645DAC70, &v225);
      *(v102 + 12) = 2048;
      *(v102 + 14) = [v99 sessionType];

      _os_log_impl(&dword_26455D000, v100, v101, "Invalid state in %s: %lu", v102, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v103);
      MEMORY[0x26673D4A0](v103, -1, -1);
      MEMORY[0x26673D4A0](v102, -1, -1);

LABEL_92:
      sub_2645D390C();
      sub_264569FD8(0, &qword_27FF72A00, off_279B64550);
      v143 = swift_getObjCClassFromMetadata();
      v110 = [objc_opt_self() bundleForClass_];
      sub_2645D35FC();
      v111 = sub_2645D39AC();

      return v111;
    }

    goto LABEL_91;
  }

LABEL_25:
  v75 = [v58 cacheReleaseDate];
  sub_2645D35CC();

  sub_2645D35DC();
  LOBYTE(v75) = sub_2645D35BC();
  v76 = *(v222 + 8);
  v77 = v46;
  v78 = v223;
  v76(v77, v223);
  v76(v48, v78);
  if ((v75 & 1) == 0)
  {
    v84 = v203;
    if (v220)
    {
      if (v201)
      {
        if (v202)
        {
          sub_2645D393C();
          sub_2645D392C();
          sub_2645D391C();

          sub_2645D392C();
          sub_2645D395C();
        }

        else
        {
          sub_2645D390C();
        }

        sub_264569FD8(0, &qword_27FF72A00, off_279B64550);
        v85 = swift_getObjCClassFromMetadata();
        v86 = [objc_opt_self() bundleForClass_];
        sub_2645D35FC();
        goto LABEL_64;
      }
    }

    else if (v201 && !v202)
    {
      sub_2645D390C();
      sub_264569FD8(0, &qword_27FF72A00, off_279B64550);
      v139 = swift_getObjCClassFromMetadata();
      v140 = [objc_opt_self() bundleForClass_];
      sub_2645D35FC();
      goto LABEL_64;
    }

    sub_2645D393C();
    sub_2645D392C();
    sub_2645D391C();

    sub_2645D392C();
    sub_2645D395C();
    sub_264569FD8(0, &qword_27FF72A00, off_279B64550);
    v113 = swift_getObjCClassFromMetadata();
    v114 = [objc_opt_self() bundleForClass_];
    sub_2645D35FC();
LABEL_64:
    v115 = sub_2645D399C();
LABEL_65:
    v83 = v115;

    goto LABEL_114;
  }

  result = [v58 cacheReleaseDate];
  if (result)
  {
    v79 = result;
    v80 = [result relativeTimeString];
    sub_2645D398C();

    if (v205)
    {

      sub_2645D393C();
      sub_2645D392C();
      sub_2645D391C();

      sub_2645D392C();
      sub_2645D395C();
      sub_264569FD8(0, &qword_27FF72A00, off_279B64550);
      v81 = swift_getObjCClassFromMetadata();
      v82 = [objc_opt_self() bundleForClass_];
      sub_2645D35FC();
LABEL_29:
      v83 = sub_2645D399C();

LABEL_30:
LABEL_130:

      return v83;
    }

    if (v220)
    {
      if (v201)
      {
        v109 = v203;
        if (v202)
        {
          goto LABEL_86;
        }

        goto LABEL_128;
      }
    }

    else
    {
      if (v224)
      {

        v116 = v204;
        if ([v204 sessionState] == 14)
        {
          sub_2645D390C();
          sub_264569FD8(0, &qword_27FF72A00, off_279B64550);
          v117 = swift_getObjCClassFromMetadata();
          v118 = [objc_opt_self() bundleForClass_];
          sub_2645D35FC();
          v119 = sub_2645D39AC();
        }

        else
        {
          sub_2645D390C();
          sub_264569FD8(0, &qword_27FF72A00, off_279B64550);
          v159 = swift_getObjCClassFromMetadata();
          v160 = [objc_opt_self() bundleForClass_];
          sub_2645D35FC();
          v119 = sub_2645D399C();
        }

        v83 = v119;

        return v83;
      }

      if (v201)
      {
        v109 = v203;
        if (v202)
        {
LABEL_86:
          sub_2645D393C();
          sub_2645D392C();
          sub_2645D391C();

LABEL_87:
          sub_2645D392C();
          sub_2645D391C();

          sub_2645D392C();
          sub_2645D395C();
          sub_264569FD8(0, &qword_27FF72A00, off_279B64550);
          v137 = swift_getObjCClassFromMetadata();
          v138 = [objc_opt_self() bundleForClass_];
          sub_2645D35FC();
          v83 = sub_2645D399C();

LABEL_129:
          goto LABEL_130;
        }

LABEL_128:
        sub_2645D393C();
        goto LABEL_87;
      }
    }

    sub_2645D393C();
    sub_2645D392C();
    sub_2645D391C();

    sub_2645D392C();
    sub_2645D391C();

    sub_2645D392C();
    sub_2645D395C();
    sub_264569FD8(0, &qword_27FF72A00, off_279B64550);
    v135 = swift_getObjCClassFromMetadata();
    v136 = [objc_opt_self() bundleForClass_];
    sub_2645D35FC();
    goto LABEL_29;
  }

  __break(1u);
  return result;
}

uint64_t sub_264569FD8(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_26456A020(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_26456A088(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72830, &qword_2645D9648);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static Logger.subsystem.getter()
{
  swift_beginAccess();
  v0 = qword_27FF72A08;

  return v0;
}

uint64_t static Logger.subsystem.setter(uint64_t a1, void *a2)
{
  swift_beginAccess();
  qword_27FF72A08 = a1;
  off_27FF72A10 = a2;
}

uint64_t sub_26456A1FC()
{
  v0 = sub_2645D38CC();
  __swift_allocate_value_buffer(v0, qword_27FF72A18);
  __swift_project_value_buffer(v0, qword_27FF72A18);
  swift_beginAccess();

  return sub_2645D38BC();
}

uint64_t sub_26456A2C8()
{
  v0 = sub_2645D38CC();
  __swift_allocate_value_buffer(v0, qword_27FF72A30);
  __swift_project_value_buffer(v0, qword_27FF72A30);
  swift_beginAccess();

  return sub_2645D38BC();
}

uint64_t sub_26456A394()
{
  v0 = sub_2645D38CC();
  __swift_allocate_value_buffer(v0, qword_27FF72A48);
  __swift_project_value_buffer(v0, qword_27FF72A48);
  swift_beginAccess();

  return sub_2645D38BC();
}

uint64_t sub_26456A460()
{
  v0 = sub_2645D38CC();
  __swift_allocate_value_buffer(v0, qword_27FF72A60);
  __swift_project_value_buffer(v0, qword_27FF72A60);
  swift_beginAccess();

  return sub_2645D38BC();
}

uint64_t sub_26456A52C()
{
  v0 = sub_2645D38CC();
  __swift_allocate_value_buffer(v0, qword_27FF72A78);
  __swift_project_value_buffer(v0, qword_27FF72A78);
  swift_beginAccess();

  return sub_2645D38BC();
}

uint64_t sub_26456A5F8()
{
  v0 = sub_2645D38CC();
  __swift_allocate_value_buffer(v0, qword_280BCB620);
  __swift_project_value_buffer(v0, qword_280BCB620);
  swift_beginAccess();

  return sub_2645D38BC();
}

uint64_t sub_26456A6C4()
{
  v0 = sub_2645D38CC();
  __swift_allocate_value_buffer(v0, qword_27FF72A90);
  __swift_project_value_buffer(v0, qword_27FF72A90);
  swift_beginAccess();

  return sub_2645D38BC();
}

uint64_t sub_26456A790()
{
  v0 = sub_2645D38CC();
  __swift_allocate_value_buffer(v0, qword_27FF72AA8);
  __swift_project_value_buffer(v0, qword_27FF72AA8);
  swift_beginAccess();

  return sub_2645D38BC();
}

uint64_t sub_26456A85C()
{
  v0 = sub_2645D38CC();
  __swift_allocate_value_buffer(v0, qword_27FF72AC0);
  __swift_project_value_buffer(v0, qword_27FF72AC0);
  swift_beginAccess();

  return sub_2645D38BC();
}

uint64_t sub_26456A928()
{
  v0 = sub_2645D38CC();
  __swift_allocate_value_buffer(v0, qword_27FF72AD8);
  __swift_project_value_buffer(v0, qword_27FF72AD8);
  swift_beginAccess();

  return sub_2645D38BC();
}

uint64_t sub_26456A9F4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_2645D38CC();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_26456AB08(uint64_t a1)
{
  v2 = sub_26456B094();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26456AB44(uint64_t a1)
{
  v2 = sub_26456B094();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26456AC3C(uint64_t a1)
{
  v2 = sub_26456B040();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26456AC78(uint64_t a1)
{
  v2 = sub_26456B040();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26456ACF8(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v15 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a6();
  sub_2645D3C4C();
  return (*(v9 + 8))(v12, v8);
}

unint64_t sub_26456AEEC()
{
  result = qword_280BCB648;
  if (!qword_280BCB648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BCB648);
  }

  return result;
}

unint64_t sub_26456AF44()
{
  result = qword_280BCB638;
  if (!qword_280BCB638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BCB638);
  }

  return result;
}

unint64_t sub_26456AF9C()
{
  result = qword_280BCB640;
  if (!qword_280BCB640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BCB640);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_26456B040()
{
  result = qword_27FF72AF8;
  if (!qword_27FF72AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF72AF8);
  }

  return result;
}

unint64_t sub_26456B094()
{
  result = qword_27FF72B08;
  if (!qword_27FF72B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF72B08);
  }

  return result;
}

unint64_t sub_26456B0E8()
{
  result = qword_27FF72B10;
  if (!qword_27FF72B10)
  {
    type metadata accessor for SMSessionState(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF72B10);
  }

  return result;
}

unint64_t sub_26456B164()
{
  result = qword_27FF72B18;
  if (!qword_27FF72B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF72B18);
  }

  return result;
}

unint64_t sub_26456B1BC()
{
  result = qword_27FF72B20;
  if (!qword_27FF72B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF72B20);
  }

  return result;
}

unint64_t sub_26456B214()
{
  result = qword_27FF72B28;
  if (!qword_27FF72B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF72B28);
  }

  return result;
}

unint64_t sub_26456B26C()
{
  result = qword_27FF72B30;
  if (!qword_27FF72B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF72B30);
  }

  return result;
}

uint64_t sub_26456B358(void *a1, void *a2, void *a3)
{
  if (*a1 != -1)
  {
    v6 = a2;
    v7 = a3;
    swift_once();
    a2 = v6;
    a3 = v7;
  }

  v3 = *a2;
  v4 = *a3;

  return v3;
}

id sub_26456B3DC(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  if (*a3 != -1)
  {
    v9 = a5;
    v10 = a4;
    swift_once();
    a4 = v10;
    a5 = v9;
  }

  v5 = *a4;
  v6 = *a5;
  v7 = sub_2645D397C();

  return v7;
}

uint64_t static SendValidity.sendValidity(from:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = 1;
  v3 = 7;
  switch(result)
  {
    case 18:
    case 19:
      break;
    case 23:
      v3 = 6;
      break;
    case 25:
      v3 = 0;
      v2 = 0;
      break;
    case 26:
      v2 = 0;
      v3 = 2;
      break;
    case 27:
      v2 = 0;
      v3 = 3;
      break;
    case 28:
      v2 = 0;
      v3 = 4;
      break;
    case 29:
      v2 = 0;
      v3 = 5;
      break;
    case 30:
      v2 = 0;
      v3 = 6;
      break;
    case 31:
      v2 = 0;
      v3 = 7;
      break;
    case 32:
      v2 = 0;
      goto LABEL_15;
    case 33:
      v2 = 0;
      v3 = 9;
      break;
    case 34:
    case 35:
    case 36:
    case 37:
    case 38:
    case 39:
    case 40:
      v3 = 1;
      break;
    case 50:
      v2 = 0;
      v3 = 10;
      break;
    case 51:
      v2 = 0;
      v3 = 11;
      break;
    case 52:
      v2 = 0;
      v3 = 12;
      break;
    default:
      v2 = 1;
LABEL_15:
      v3 = 8;
      break;
  }

  *a2 = v3;
  *(a2 + 8) = v2;
  return result;
}

uint64_t SendValidity.alertErrorMessage.getter()
{
  v1 = *v0;
  if (*(v0 + 8) != 1)
  {
    if (v1 > 6)
    {
      if (v1 <= 9)
      {
        if (v1 == 7)
        {
          if (qword_27FF72720 != -1)
          {
            swift_once();
          }

          v2 = &qword_27FF72CB8;
          goto LABEL_41;
        }

        if (v1 == 8)
        {
          if (qword_27FF72728 != -1)
          {
            swift_once();
          }

          v2 = &qword_27FF72CC8;
          goto LABEL_41;
        }
      }

      else
      {
        switch(v1)
        {
          case 10:
            if (qword_27FF72730 != -1)
            {
              swift_once();
            }

            v2 = &qword_27FF72CD8;
            goto LABEL_41;
          case 11:
            if (qword_27FF72738 != -1)
            {
              swift_once();
            }

            v2 = &qword_27FF72CE8;
            goto LABEL_41;
          case 12:
            if (qword_27FF72740 != -1)
            {
              swift_once();
            }

            v2 = &qword_27FF72CF8;
            goto LABEL_41;
        }
      }

      goto LABEL_38;
    }

    if (v1 > 4)
    {
      if (v1 == 5)
      {
        if (qword_27FF72710 != -1)
        {
          swift_once();
        }

        v2 = &qword_27FF72C98;
      }

      else
      {
        if (qword_27FF72718 != -1)
        {
          swift_once();
        }

        v2 = &qword_27FF72CA8;
      }

      goto LABEL_41;
    }

    if (v1 != 1)
    {
      if (v1 == 4)
      {
        if (qword_27FF72708 != -1)
        {
          swift_once();
        }

        v2 = &qword_27FF72C88;
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    return 0;
  }

  if (v1 > 5)
  {
    if (v1 <= 7)
    {
      if (v1 == 6)
      {
        if (qword_27FF726D0 != -1)
        {
          swift_once();
        }

        v2 = &qword_27FF72C18;
      }

      else
      {
        if (qword_27FF726D8 != -1)
        {
          swift_once();
        }

        v2 = &qword_27FF72C28;
      }

      goto LABEL_41;
    }

    if (v1 == 8)
    {
      goto LABEL_38;
    }

    if (v1 == 9)
    {
      if (qword_27FF726C8 != -1)
      {
        swift_once();
      }

      v2 = &qword_27FF72C08;
      goto LABEL_41;
    }

    return 0;
  }

  if (v1 > 2)
  {
LABEL_38:
    if (qword_27FF726E0 != -1)
    {
      swift_once();
    }

    v2 = &qword_27FF72C38;
    goto LABEL_41;
  }

  if (v1)
  {
    if (v1 == 1)
    {
      if (qword_27FF726C0 != -1)
      {
        swift_once();
      }

      v2 = &qword_27FF72BF8;
    }

    else
    {
      if (qword_27FF72668 != -1)
      {
        swift_once();
      }

      v2 = &qword_27FF72B48;
    }
  }

  else
  {
    if (qword_27FF72660 != -1)
    {
      swift_once();
    }

    v2 = &qword_27FF72B38;
  }

LABEL_41:
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

id SendValidityUtilities.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SendValidityUtilities.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SendValidityUtilities();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SendValidityUtilities.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SendValidityUtilities();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t SendValidity.platterErrorMessage.getter()
{
  v1 = *v0;
  if (*(v0 + 8) != 1)
  {
    v6 = *v0;
    return sub_26456BD84(v1);
  }

  if (v1 <= 5)
  {
    if (v1 <= 2)
    {
      if (v1)
      {
        if (v1 == 1)
        {
          if (qword_27FF726C0 != -1)
          {
            swift_once();
          }

          v2 = &qword_27FF72BF8;
        }

        else
        {
          if (qword_27FF72668 != -1)
          {
            swift_once();
          }

          v2 = &qword_27FF72B48;
        }
      }

      else
      {
        if (qword_27FF72660 != -1)
        {
          swift_once();
        }

        v2 = &qword_27FF72B38;
      }

LABEL_19:
      v5 = *v2;
      v4 = v2[1];

      return v5;
    }

LABEL_16:
    if (qword_27FF726B8 != -1)
    {
      swift_once();
    }

    v2 = &qword_27FF72BE8;
    goto LABEL_19;
  }

  if (v1 <= 7)
  {
    if (v1 == 6)
    {
      if (qword_27FF726D0 != -1)
      {
        swift_once();
      }

      v2 = &qword_27FF72C18;
    }

    else
    {
      if (qword_27FF726D8 != -1)
      {
        swift_once();
      }

      v2 = &qword_27FF72C28;
    }

    goto LABEL_19;
  }

  if (v1 == 8)
  {
    goto LABEL_16;
  }

  if (v1 == 9)
  {
    if (qword_27FF726C8 != -1)
    {
      swift_once();
    }

    v2 = &qword_27FF72C08;
    goto LABEL_19;
  }

  return 0;
}

uint64_t sub_26456BD84(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  if (a1 > 6)
  {
    if (a1 <= 9)
    {
      if (a1 == 7)
      {
        if (qword_27FF72690 != -1)
        {
          swift_once();
        }

        v4 = &qword_27FF72B98;
        goto LABEL_49;
      }

      if (a1 == 8)
      {
        if (qword_27FF72698 != -1)
        {
          swift_once();
        }

        v4 = &qword_27FF72BA8;
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    switch(a1)
    {
      case 10:
        if (qword_27FF726A0 != -1)
        {
          swift_once();
        }

        v4 = &qword_27FF72BB8;
        goto LABEL_49;
      case 11:
        if (qword_27FF726A8 != -1)
        {
          swift_once();
        }

        v4 = &qword_27FF72BC8;
        goto LABEL_49;
      case 12:
        if (qword_27FF726B0 != -1)
        {
          swift_once();
        }

        v4 = &qword_27FF72BD8;
        goto LABEL_49;
    }

    goto LABEL_41;
  }

  if (a1 > 3)
  {
    if (a1 == 4)
    {
      if (qword_27FF72678 != -1)
      {
        swift_once();
      }

      v4 = &qword_27FF72B68;
    }

    else if (a1 == 5)
    {
      if (qword_27FF72680 != -1)
      {
        swift_once();
      }

      v4 = &qword_27FF72B78;
    }

    else
    {
      if (qword_27FF72688 != -1)
      {
        swift_once();
      }

      v4 = &qword_27FF72B88;
    }

    goto LABEL_49;
  }

  if (!a1)
  {
LABEL_46:
    if (qword_27FF726B8 != -1)
    {
      swift_once();
    }

    v4 = &qword_27FF72BE8;
LABEL_49:
    v5 = *v4;
    v15 = v4[1];

    return v5;
  }

  if (a1 != 1)
  {
    if (a1 != 2)
    {
LABEL_41:
      if (qword_27FF72610 != -1)
      {
        swift_once();
      }

      v7 = sub_2645D38CC();
      __swift_project_value_buffer(v7, qword_27FF72A18);
      v8 = sub_2645D38AC();
      v9 = sub_2645D3B0C();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v17 = v11;
        *v10 = 136315650;
        v12 = sub_2645D39BC();
        v14 = sub_264561058(v12, v13, &v17);

        *(v10 + 4) = v14;
        *(v10 + 12) = 2080;
        *(v10 + 14) = sub_264561058(0xD00000000000003CLL, 0x80000002645DF070, &v17);
        *(v10 + 22) = 2048;
        *(v10 + 24) = a1;
        _os_log_impl(&dword_26455D000, v8, v9, "%s, %s: Unknown eligibilityStatus, %ld", v10, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x26673D4A0](v11, -1, -1);
        MEMORY[0x26673D4A0](v10, -1, -1);
      }

      goto LABEL_46;
    }

    goto LABEL_46;
  }

  return 0;
}

uint64_t static SendValidity.initiatorEligibilityFailureReasonAlert(eligibilityStatus:onSend:)(uint64_t a1, char a2)
{
  if (a1 > 6)
  {
    if (a1 <= 9)
    {
      if (a1 == 7)
      {
        if (qword_27FF72720 != -1)
        {
          swift_once();
        }

        v2 = &qword_27FF72CB8;
        goto LABEL_44;
      }

      if (a1 == 8)
      {
        if (qword_27FF72728 != -1)
        {
          swift_once();
        }

        v2 = &qword_27FF72CC8;
        goto LABEL_44;
      }
    }

    else
    {
      switch(a1)
      {
        case 10:
          if (qword_27FF72730 != -1)
          {
            swift_once();
          }

          v2 = &qword_27FF72CD8;
          goto LABEL_44;
        case 11:
          if (qword_27FF72738 != -1)
          {
            swift_once();
          }

          v2 = &qword_27FF72CE8;
          goto LABEL_44;
        case 12:
          if (qword_27FF72740 != -1)
          {
            swift_once();
          }

          v2 = &qword_27FF72CF8;
LABEL_44:
          v3 = *v2;
          v4 = v2[1];

          return v3;
      }
    }

LABEL_37:
    if (a2)
    {
      if (qword_27FF726E0 != -1)
      {
        swift_once();
      }

      v2 = &qword_27FF72C38;
    }

    else
    {
      if (qword_27FF726E8 != -1)
      {
        swift_once();
      }

      v2 = &qword_27FF72C48;
    }

    goto LABEL_44;
  }

  if (a1 > 4)
  {
    if (a1 == 5)
    {
      if (qword_27FF72710 != -1)
      {
        swift_once();
      }

      v2 = &qword_27FF72C98;
    }

    else
    {
      if (qword_27FF72718 != -1)
      {
        swift_once();
      }

      v2 = &qword_27FF72CA8;
    }

    goto LABEL_44;
  }

  if (a1 != 1)
  {
    if (a1 == 4)
    {
      if (qword_27FF72708 != -1)
      {
        swift_once();
      }

      v2 = &qword_27FF72C88;
      goto LABEL_44;
    }

    goto LABEL_37;
  }

  return 0;
}

unint64_t SendValidity.settingsDeepLinkUrl.getter()
{
  if (*(v0 + 8))
  {
    return 0;
  }

  else
  {
    return sub_26456C524(*v0);
  }
}

unint64_t sub_26456C524(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  if (a1 <= 5)
  {
    if (a1 == 4)
    {
      return 0xD000000000000020;
    }

    if (a1 == 5)
    {
      return 0xD000000000000022;
    }
  }

  else
  {
    switch(a1)
    {
      case 6:
        return 0xD000000000000013;
      case 7:
        return 0xD000000000000030;
      case 8:
        return 0xD000000000000033;
    }
  }

  if (qword_27FF72610 != -1)
  {
    swift_once();
  }

  v6 = sub_2645D38CC();
  __swift_project_value_buffer(v6, qword_27FF72A18);
  v7 = sub_2645D38AC();
  v8 = sub_2645D3B0C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v9 = 136315650;
    v11 = sub_2645D39BC();
    v13 = sub_264561058(v11, v12, &v14);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_264561058(0xD000000000000036, 0x80000002645DEFF0, &v14);
    *(v9 + 22) = 2048;
    *(v9 + 24) = a1;
    _os_log_impl(&dword_26455D000, v7, v8, "%s, %s: Unknown eligibilityStatus, %ld", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x26673D4A0](v10, -1, -1);
    MEMORY[0x26673D4A0](v9, -1, -1);
  }

  return 0;
}

uint64_t sub_26456C7A8()
{
  v0 = sub_2645D360C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_2645D396C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2645D390C();
  sub_26456FA00();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_2645D35FC();
  result = sub_2645D39AC();
  qword_27FF72B38 = result;
  unk_27FF72B40 = v7;
  return result;
}

uint64_t sub_26456C914()
{
  v0 = sub_2645D360C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_2645D396C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2645D390C();
  sub_26456FA00();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_2645D35FC();
  result = sub_2645D39AC();
  qword_27FF72B48 = result;
  unk_27FF72B50 = v7;
  return result;
}

uint64_t sub_26456CA80()
{
  v0 = sub_2645D360C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_2645D396C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2645D390C();
  sub_26456FA00();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_2645D35FC();
  result = sub_2645D39AC();
  qword_27FF72B58 = result;
  unk_27FF72B60 = v7;
  return result;
}

uint64_t sub_26456CBEC()
{
  v0 = sub_2645D360C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_2645D396C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2645D390C();
  sub_26456FA00();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_2645D35FC();
  result = sub_2645D39AC();
  qword_27FF72B68 = result;
  unk_27FF72B70 = v7;
  return result;
}

uint64_t sub_26456CD5C()
{
  v0 = sub_2645D360C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_2645D396C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2645D390C();
  sub_26456FA00();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_2645D35FC();
  result = sub_2645D39AC();
  qword_27FF72B78 = result;
  unk_27FF72B80 = v7;
  return result;
}

uint64_t sub_26456CECC()
{
  v0 = sub_2645D360C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_2645D396C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2645D390C();
  sub_26456FA00();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_2645D35FC();
  result = sub_2645D39AC();
  qword_27FF72B88 = result;
  unk_27FF72B90 = v7;
  return result;
}

uint64_t sub_26456D03C()
{
  v0 = sub_2645D360C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_2645D396C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2645D390C();
  sub_26456FA00();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_2645D35FC();
  result = sub_2645D39AC();
  qword_27FF72B98 = result;
  unk_27FF72BA0 = v7;
  return result;
}

uint64_t sub_26456D1AC()
{
  v0 = sub_2645D360C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_2645D396C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2645D390C();
  sub_26456FA00();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_2645D35FC();
  result = sub_2645D39AC();
  qword_27FF72BA8 = result;
  unk_27FF72BB0 = v7;
  return result;
}

uint64_t sub_26456D31C()
{
  v0 = sub_2645D360C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_2645D396C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2645D390C();
  sub_26456FA00();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_2645D35FC();
  result = sub_2645D39AC();
  qword_27FF72BB8 = result;
  unk_27FF72BC0 = v7;
  return result;
}

uint64_t sub_26456D48C()
{
  v0 = sub_2645D360C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_2645D396C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2645D390C();
  sub_26456FA00();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_2645D35FC();
  result = sub_2645D39AC();
  qword_27FF72BC8 = result;
  unk_27FF72BD0 = v7;
  return result;
}

uint64_t sub_26456D5FC()
{
  v0 = sub_2645D360C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_2645D396C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2645D390C();
  sub_26456FA00();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_2645D35FC();
  result = sub_2645D39AC();
  qword_27FF72BD8 = result;
  unk_27FF72BE0 = v7;
  return result;
}

uint64_t sub_26456D76C()
{
  v0 = sub_2645D360C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_2645D396C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2645D390C();
  sub_26456FA00();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_2645D35FC();
  result = sub_2645D39AC();
  qword_27FF72BE8 = result;
  unk_27FF72BF0 = v7;
  return result;
}

uint64_t sub_26456D8E4()
{
  v0 = sub_2645D360C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_2645D396C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2645D390C();
  sub_26456FA00();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_2645D35FC();
  result = sub_2645D39AC();
  qword_27FF72BF8 = result;
  unk_27FF72C00 = v7;
  return result;
}

uint64_t sub_26456DA50()
{
  v0 = sub_2645D360C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_2645D396C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2645D390C();
  sub_26456FA00();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_2645D35FC();
  result = sub_2645D39AC();
  qword_27FF72C08 = result;
  unk_27FF72C10 = v7;
  return result;
}

uint64_t sub_26456DBBC()
{
  v0 = sub_2645D360C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_2645D396C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2645D390C();
  sub_26456FA00();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_2645D35FC();
  result = sub_2645D39AC();
  qword_27FF72C18 = result;
  unk_27FF72C20 = v7;
  return result;
}

uint64_t sub_26456DD28()
{
  v0 = sub_2645D360C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_2645D396C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2645D390C();
  sub_26456FA00();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_2645D35FC();
  result = sub_2645D39AC();
  qword_27FF72C28 = result;
  unk_27FF72C30 = v7;
  return result;
}

uint64_t sub_26456DE94()
{
  v0 = sub_2645D360C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_2645D396C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2645D390C();
  sub_26456FA00();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_2645D35FC();
  result = sub_2645D39AC();
  qword_27FF72C38 = result;
  unk_27FF72C40 = v7;
  return result;
}

uint64_t sub_26456E000()
{
  v0 = sub_2645D360C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_2645D396C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2645D390C();
  sub_26456FA00();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_2645D35FC();
  result = sub_2645D39AC();
  qword_27FF72C48 = result;
  unk_27FF72C50 = v7;
  return result;
}

uint64_t sub_26456E1F8()
{
  v0 = sub_2645D360C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_2645D396C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2645D390C();
  sub_26456FA00();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_2645D35FC();
  result = sub_2645D39AC();
  qword_27FF72C58 = result;
  unk_27FF72C60 = v7;
  return result;
}

uint64_t sub_26456E368()
{
  v0 = sub_2645D360C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_2645D396C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2645D390C();
  sub_26456FA00();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_2645D35FC();
  result = sub_2645D399C();
  qword_27FF72C68 = result;
  unk_27FF72C70 = v7;
  return result;
}

uint64_t sub_26456E4E8()
{
  v0 = sub_2645D360C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_2645D396C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2645D390C();
  sub_26456FA00();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_2645D35FC();
  result = sub_2645D39AC();
  qword_27FF72C78 = result;
  unk_27FF72C80 = v7;
  return result;
}

uint64_t sub_26456E658()
{
  v0 = sub_2645D360C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_2645D396C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2645D390C();
  sub_26456FA00();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_2645D35FC();
  result = sub_2645D39AC();
  qword_27FF72C88 = result;
  unk_27FF72C90 = v7;
  return result;
}

uint64_t sub_26456E7C8()
{
  v0 = sub_2645D360C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_2645D396C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2645D390C();
  sub_26456FA00();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_2645D35FC();
  result = sub_2645D39AC();
  qword_27FF72C98 = result;
  unk_27FF72CA0 = v7;
  return result;
}

uint64_t sub_26456E938()
{
  v0 = sub_2645D360C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_2645D396C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2645D390C();
  sub_26456FA00();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_2645D35FC();
  result = sub_2645D39AC();
  qword_27FF72CA8 = result;
  unk_27FF72CB0 = v7;
  return result;
}

uint64_t sub_26456EAA8()
{
  v0 = sub_2645D360C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_2645D396C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2645D390C();
  sub_26456FA00();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_2645D35FC();
  result = sub_2645D39AC();
  qword_27FF72CB8 = result;
  unk_27FF72CC0 = v7;
  return result;
}

uint64_t sub_26456EC18()
{
  v0 = sub_2645D360C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_2645D396C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2645D390C();
  sub_26456FA00();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_2645D35FC();
  result = sub_2645D39AC();
  qword_27FF72CC8 = result;
  unk_27FF72CD0 = v7;
  return result;
}

uint64_t sub_26456ED88()
{
  v0 = sub_2645D360C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_2645D396C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2645D390C();
  sub_26456FA00();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_2645D35FC();
  result = sub_2645D39AC();
  qword_27FF72CD8 = result;
  unk_27FF72CE0 = v7;
  return result;
}

uint64_t sub_26456EEF8()
{
  v0 = sub_2645D360C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_2645D396C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2645D390C();
  sub_26456FA00();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_2645D35FC();
  result = sub_2645D39AC();
  qword_27FF72CE8 = result;
  unk_27FF72CF0 = v7;
  return result;
}

uint64_t sub_26456F068()
{
  v0 = sub_2645D360C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_2645D396C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2645D390C();
  sub_26456FA00();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_2645D35FC();
  result = sub_2645D39AC();
  qword_27FF72CF8 = result;
  unk_27FF72D00 = v7;
  return result;
}

void SendValidity.type.getter(_BYTE *a1@<X8>)
{
  if (*(v1 + 8) == 1)
  {
    *a1 = byte_2645D9B7E[*v1];
  }

  else
  {
    *a1 = 0;
  }
}

SafetyMonitor::SendValidity::Case_optional __swiftcall SendValidity.Case.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2645D3BDC();

  v5 = 12;
  if (v3 < 0xC)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t SendValidity.Case.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 5)
  {
    v6 = 0x64696C6176;
    v7 = 0x456C6172656E6567;
    if (v1 != 10)
    {
      v7 = 0xD000000000000017;
    }

    if (v1 != 9)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000011;
    v9 = 0xD000000000000014;
    if (v1 != 7)
    {
      v9 = 0x4564696C61766E69;
    }

    if (v1 != 6)
    {
      v8 = v9;
    }

    if (*v0 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x7669656365526F6ELL;
    v3 = 0x61684370756F7267;
    v4 = 0x43676E697373696DLL;
    if (v1 != 4)
    {
      v4 = 0x7964616552746F6ELL;
    }

    if (v1 != 3)
    {
      v3 = v4;
    }

    if (v1 != 1)
    {
      v2 = 0xD000000000000012;
    }

    if (!*v0)
    {
      v2 = 0xD000000000000013;
    }

    if (*v0 <= 2u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_26456F42C(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = SendValidity.Case.rawValue.getter();
  v4 = v3;
  if (v2 == SendValidity.Case.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_2645D3BEC();
  }

  return v7 & 1;
}

uint64_t sub_26456F4C8()
{
  v1 = *v0;
  sub_2645D3C2C();
  SendValidity.Case.rawValue.getter();
  sub_2645D39DC();

  return sub_2645D3C3C();
}

uint64_t sub_26456F530()
{
  v2 = *v0;
  SendValidity.Case.rawValue.getter();
  sub_2645D39DC();
}

uint64_t sub_26456F594()
{
  v1 = *v0;
  sub_2645D3C2C();
  SendValidity.Case.rawValue.getter();
  sub_2645D39DC();

  return sub_2645D3C3C();
}

unint64_t sub_26456F604@<X0>(unint64_t *a1@<X8>)
{
  result = SendValidity.Case.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL _s13SafetyMonitor12SendValidityO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) != 1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return v2 == v3;
    }

    return 0;
  }

  if (v2 <= 4)
  {
    if (v2 <= 1)
    {
      if (v2)
      {
        if (v3 != 1)
        {
          v4 = 0;
        }

        if (v4)
        {
          return 1;
        }
      }

      else
      {
        if (v3)
        {
          v4 = 0;
        }

        if (v4)
        {
          return 1;
        }
      }
    }

    else if (v2 == 2)
    {
      if (v3 != 2)
      {
        v4 = 0;
      }

      if (v4)
      {
        return 1;
      }
    }

    else if (v2 == 3)
    {
      if (v3 != 3)
      {
        v4 = 0;
      }

      if (v4)
      {
        return 1;
      }
    }

    else
    {
      if (v3 != 4)
      {
        v4 = 0;
      }

      if (v4)
      {
        return 1;
      }
    }

    return 0;
  }

  if (v2 <= 7)
  {
    if (v2 == 5)
    {
      if (v3 != 5)
      {
        v4 = 0;
      }

      if (v4)
      {
        return 1;
      }
    }

    else
    {
      if (v2 == 6)
      {
        if (v3 != 6)
        {
          v4 = 0;
        }

        return (v4 & 1) != 0;
      }

      if (v3 != 7)
      {
        v4 = 0;
      }

      if (v4)
      {
        return 1;
      }
    }

    return 0;
  }

  if (v2 == 8)
  {
    if (v3 != 8)
    {
      v4 = 0;
    }

    return (v4 & 1) != 0;
  }

  if (v2 == 9)
  {
    if (v3 != 9)
    {
      v4 = 0;
    }

    return (v4 & 1) != 0;
  }

  if (v3 <= 9)
  {
    v4 = 0;
  }

  return (v4 & 1) != 0;
}

unint64_t sub_26456F78C()
{
  result = qword_27FF72D08;
  if (!qword_27FF72D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF72D08);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SendValidity(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SendValidity(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_26456F848(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26456F864(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SendValidity.Case(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SendValidity.Case(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_26456FA00()
{
  result = qword_27FF72A00;
  if (!qword_27FF72A00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FF72A00);
  }

  return result;
}

uint64_t sub_26456FA4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72828, &qword_2645D9630) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v26 - v10;
  sub_264571B8C(a3, v26 - v10, &qword_27FF72828, &qword_2645D9630);
  v12 = sub_2645D3ACC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2645627C0(v11, &qword_27FF72828, &qword_2645D9630);
  }

  else
  {
    sub_2645D3ABC();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_2645D3A8C();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_2645D39CC() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_2645627C0(a3, &qword_27FF72828, &qword_2645D9630);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2645627C0(a3, &qword_27FF72828, &qword_2645D9630);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

id SMCloudKitFunctionSwift.init(serviceName:)(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR____TtC13SafetyMonitor23SMCloudKitFunctionSwift_containerName];
  *v3 = 0xD000000000000023;
  *(v3 + 1) = 0x80000002645DFAF0;
  v4 = &v2[OBJC_IVAR____TtC13SafetyMonitor23SMCloudKitFunctionSwift_serviceName];
  *v4 = a1;
  *(v4 + 1) = a2;
  v5 = objc_allocWithZone(MEMORY[0x277CBC220]);
  v6 = sub_2645D397C();
  v7 = [v5 initWithContainerIdentifier:v6 environment:1];

  v8 = [objc_allocWithZone(MEMORY[0x277CBC218]) initWithContainerID_];
  *&v2[OBJC_IVAR____TtC13SafetyMonitor23SMCloudKitFunctionSwift_container] = v8;
  v9 = *v4;
  v10 = *(v4 + 1);
  v11 = v8;

  v12 = sub_2645D397C();

  v13 = [v11 codeServiceWithName:v12 databaseScope:3];

  *&v2[OBJC_IVAR____TtC13SafetyMonitor23SMCloudKitFunctionSwift_client] = v13;
  v36.receiver = v2;
  v36.super_class = type metadata accessor for SMCloudKitFunctionSwift();
  v14 = v13;
  v15 = objc_msgSendSuper2(&v36, sel_init);
  v16 = qword_27FF72640;
  v17 = v15;
  if (v16 != -1)
  {
    swift_once();
  }

  v18 = sub_2645D38CC();
  __swift_project_value_buffer(v18, qword_27FF72A90);
  v19 = v17;
  v20 = sub_2645D38AC();
  v21 = sub_2645D3B1C();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v35 = v23;
    *v22 = 136315650;
    v34 = v14;
    v24 = v19;
    v25 = [v24 description];
    v26 = sub_2645D398C();
    v28 = v27;

    v29 = sub_264561058(v26, v28, &v35);

    *(v22 + 4) = v29;
    *(v22 + 12) = 2080;
    *(v22 + 14) = sub_264561058(0xD000000000000012, 0x80000002645DFB20, &v35);
    *(v22 + 22) = 2080;
    v30 = *&v24[OBJC_IVAR____TtC13SafetyMonitor23SMCloudKitFunctionSwift_serviceName];
    v31 = *&v24[OBJC_IVAR____TtC13SafetyMonitor23SMCloudKitFunctionSwift_serviceName + 8];

    v32 = sub_264561058(v30, v31, &v35);

    *(v22 + 24) = v32;
    _os_log_impl(&dword_26455D000, v20, v21, "#SafetyCache,Receiver,%s,%s,initialized with serviceName %s", v22, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x26673D4A0](v23, -1, -1);
    MEMORY[0x26673D4A0](v22, -1, -1);
  }

  else
  {
  }

  return v19;
}

uint64_t sub_264570154(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v74 = a5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72828, &qword_2645D9630);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v66 - v14;
  v16 = v6;
  v17 = [v16 description];
  v18 = sub_2645D398C();
  v72 = v19;
  v73 = v18;

  if (!a4)
  {
    if (qword_27FF72640 != -1)
    {
      swift_once();
    }

    v41 = sub_2645D38CC();
    __swift_project_value_buffer(v41, qword_27FF72A90);
    v42 = v16;

    v22 = sub_2645D38AC();
    v43 = sub_2645D3B1C();

    if (os_log_type_enabled(v22, v43))
    {
      v44 = swift_slowAlloc();
      v69 = v15;
      v45 = v44;
      v68 = swift_slowAlloc();
      v75 = v68;
      *v45 = 136315906;
      v70 = a1;
      *(v45 + 4) = sub_264561058(a1, a2, &v75);
      v71 = a6;
      *(v45 + 12) = 2080;
      v46 = v42;
      v47 = [v46 description];
      v48 = a3;
      v49 = sub_2645D398C();
      LODWORD(v67) = v43;
      v51 = v50;

      v52 = v49;
      a3 = v48;
      v53 = sub_264561058(v52, v51, &v75);

      *(v45 + 14) = v53;
      *(v45 + 22) = 2080;
      *(v45 + 24) = sub_264561058(0xD000000000000034, 0x80000002645DFB40, &v75);
      *(v45 + 32) = 2080;
      a6 = v71;
      v54 = *&v46[OBJC_IVAR____TtC13SafetyMonitor23SMCloudKitFunctionSwift_serviceName];
      v55 = *&v46[OBJC_IVAR____TtC13SafetyMonitor23SMCloudKitFunctionSwift_serviceName + 8];

      v56 = sub_264561058(v54, v55, &v75);

      *(v45 + 34) = v56;
      a1 = v70;
      _os_log_impl(&dword_26455D000, v22, v67, "#SafetyCache,Receiver,sessionID:%s,%s,%s,requesting safety cache without token using serviceName %s", v45, 0x2Au);
      v57 = v68;
      swift_arrayDestroy();
      MEMORY[0x26673D4A0](v57, -1, -1);
      v58 = v45;
      v15 = v69;
      MEMORY[0x26673D4A0](v58, -1, -1);
    }

    goto LABEL_10;
  }

  if (qword_27FF72640 != -1)
  {
    swift_once();
  }

  v20 = sub_2645D38CC();
  __swift_project_value_buffer(v20, qword_27FF72A90);

  v21 = v16;

  v22 = sub_2645D38AC();
  v23 = sub_2645D3B1C();

  LODWORD(v68) = v23;
  if (!os_log_type_enabled(v22, v23))
  {
LABEL_10:

    goto LABEL_11;
  }

  v24 = swift_slowAlloc();
  v69 = a3;
  v25 = v24;
  v67 = swift_slowAlloc();
  v75 = v67;
  *v25 = 136316162;
  v70 = a1;
  *(v25 + 4) = sub_264561058(a1, a2, &v75);
  *(v25 + 12) = 2080;
  v26 = v21;
  v27 = [v26 description];
  v28 = sub_2645D398C();
  v71 = a6;
  v29 = v28;
  v66 = v22;
  v30 = v15;
  v32 = v31;

  v33 = sub_264561058(v29, v32, &v75);
  v15 = v30;

  *(v25 + 14) = v33;
  *(v25 + 22) = 2080;
  *(v25 + 24) = sub_264561058(0xD000000000000034, 0x80000002645DFB40, &v75);
  *(v25 + 32) = 2080;

  v34 = sub_264561058(v69, a4, &v75);

  *(v25 + 34) = v34;
  *(v25 + 42) = 2080;
  v35 = *&v26[OBJC_IVAR____TtC13SafetyMonitor23SMCloudKitFunctionSwift_serviceName];
  v36 = *&v26[OBJC_IVAR____TtC13SafetyMonitor23SMCloudKitFunctionSwift_serviceName + 8];

  v37 = sub_264561058(v35, v36, &v75);
  a6 = v71;

  *(v25 + 44) = v37;
  a1 = v70;
  v38 = v66;
  _os_log_impl(&dword_26455D000, v66, v68, "#SafetyCache,Receiver,sessionID:%s,%s,%s,requesting safety cache with token %s using serviceName %s", v25, 0x34u);
  v39 = v67;
  swift_arrayDestroy();
  MEMORY[0x26673D4A0](v39, -1, -1);
  v40 = v25;
  a3 = v69;
  MEMORY[0x26673D4A0](v40, -1, -1);

LABEL_11:
  v59 = sub_2645D3ACC();
  (*(*(v59 - 8) + 56))(v15, 1, 1, v59);
  v60 = swift_allocObject();
  v60[2] = 0;
  v60[3] = 0;
  v60[4] = a1;
  v60[5] = a2;
  v60[6] = a3;
  v60[7] = a4;
  v62 = v72;
  v61 = v73;
  v60[8] = v16;
  v60[9] = v61;
  v63 = v74;
  v60[10] = v62;
  v60[11] = v63;
  v60[12] = a6;

  v64 = v16;

  sub_26456FA4C(0, 0, v15, &unk_2645D9BB0, v60);
}

uint64_t sub_26457075C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 72) = v20;
  *(v8 + 80) = v21;
  *(v8 + 56) = v19;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 16) = a4;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72D30, &qword_2645D9C00) - 8) + 64) + 15;
  *(v8 + 88) = swift_task_alloc();
  v10 = sub_2645D375C();
  *(v8 + 96) = v10;
  v11 = *(v10 - 8);
  *(v8 + 104) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 112) = swift_task_alloc();
  SafetyCacheResponse = type metadata accessor for FetchSafetyCacheResponse(0);
  *(v8 + 120) = SafetyCacheResponse;
  v14 = *(*(SafetyCacheResponse - 8) + 64) + 15;
  *(v8 + 128) = swift_task_alloc();
  *(v8 + 136) = swift_task_alloc();
  SafetyCacheRequest = type metadata accessor for FetchSafetyCacheRequest(0);
  *(v8 + 144) = SafetyCacheRequest;
  v16 = *(*(SafetyCacheRequest - 8) + 64) + 15;
  *(v8 + 152) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2645708DC, 0, 0);
}

uint64_t sub_2645708DC()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 32);
  v12 = *(v0 + 16);
  v6 = swift_task_alloc();
  *(v6 + 16) = v12;
  *(v6 + 32) = v5;
  *(v6 + 40) = v3;
  sub_264571A70();
  sub_2645D383C();

  v7 = *(v4 + OBJC_IVAR____TtC13SafetyMonitor23SMCloudKitFunctionSwift_client);
  v8 = swift_task_alloc();
  *(v0 + 160) = v8;
  *v8 = v0;
  v8[1] = sub_264570A04;
  v9 = *(v0 + 152);
  v10 = *(v0 + 136);

  return sub_264577A78(v10, v9, v7);
}

uint64_t sub_264570A04()
{
  v2 = *(*v1 + 160);
  v5 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_264570F5C;
  }

  else
  {
    v3 = sub_264570B18;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_264570B18()
{
  v44 = v0;
  v1 = *(v0 + 136);
  v2 = *v1;
  if (*v1)
  {
    v3 = 0;
  }

  else
  {
    v5 = *(v0 + 96);
    v4 = *(v0 + 104);
    v6 = *(v0 + 88);
    sub_264571B8C(v1 + *(*(v0 + 120) + 24), v6, &qword_27FF72D30, &qword_2645D9C00);
    v7 = *(v4 + 48);
    if (v7(v6, 1, v5) == 1)
    {
      v9 = *(v0 + 88);
      v8 = *(v0 + 96);
      v10 = *(v0 + 112);
      sub_2645D374C();
      if (v7(v9, 1, v8) != 1)
      {
        sub_2645627C0(*(v0 + 88), &qword_27FF72D30, &qword_2645D9C00);
      }
    }

    else
    {
      (*(*(v0 + 104) + 32))(*(v0 + 112), *(v0 + 88), *(v0 + 96));
    }

    v11 = *(v0 + 112);
    sub_264571BF4();
    v3 = sub_2645D3B2C();
  }

  if (qword_27FF72640 != -1)
  {
    swift_once();
  }

  v13 = *(v0 + 128);
  v12 = *(v0 + 136);
  v14 = *(v0 + 64);
  v15 = *(v0 + 24);
  v16 = sub_2645D38CC();
  __swift_project_value_buffer(v16, qword_27FF72A90);
  sub_264571AC8(v12, v13);
  v17 = v3;

  v18 = sub_2645D38AC();
  v19 = sub_2645D3B1C();

  v20 = os_log_type_enabled(v18, v19);
  v21 = *(v0 + 128);
  if (v20)
  {
    v39 = *(v0 + 56);
    v40 = *(v0 + 64);
    v22 = v3;
    v24 = *(v0 + 16);
    v23 = *(v0 + 24);
    v25 = swift_slowAlloc();
    v42 = v2;
    v26 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v43 = v41;
    *v25 = 136316162;
    v27 = v24;
    v3 = v22;
    *(v25 + 4) = sub_264561058(v27, v23, &v43);
    *(v25 + 12) = 2080;
    *(v25 + 14) = sub_264561058(v39, v40, &v43);
    *(v25 + 22) = 2080;
    *(v25 + 24) = sub_264561058(0xD000000000000034, 0x80000002645DFB40, &v43);
    *(v25 + 32) = 2048;
    v28 = *v21;
    sub_264571B2C(*(v0 + 128), type metadata accessor for FetchSafetyCacheResponse);
    *(v25 + 34) = v28;
    *(v25 + 42) = 2112;
    *(v25 + 44) = v17;
    *v26 = v22;
    v29 = v17;
    _os_log_impl(&dword_26455D000, v18, v19, "#SafetyCache,Receiver,sessionID:%s,%s,%s,received response,responseCode,%ld,record,%@", v25, 0x34u);
    sub_2645627C0(v26, &qword_27FF72D40, &qword_2645D9C08);
    v30 = v26;
    v2 = v42;
    MEMORY[0x26673D4A0](v30, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x26673D4A0](v41, -1, -1);
    MEMORY[0x26673D4A0](v25, -1, -1);
  }

  else
  {
    sub_264571B2C(*(v0 + 128), type metadata accessor for FetchSafetyCacheResponse);
  }

  v31 = *(v0 + 136);
  v32 = *(v0 + 80);
  (*(v0 + 72))(v2, v3, 0);

  sub_264571B2C(v31, type metadata accessor for FetchSafetyCacheResponse);
  v34 = *(v0 + 128);
  v33 = *(v0 + 136);
  v35 = *(v0 + 112);
  v36 = *(v0 + 88);
  sub_264571B2C(*(v0 + 152), type metadata accessor for FetchSafetyCacheRequest);

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_264570F5C()
{
  v29 = v0;
  if (qword_27FF72640 != -1)
  {
    swift_once();
  }

  v1 = v0[21];
  v2 = v0[8];
  v3 = v0[3];
  v4 = sub_2645D38CC();
  __swift_project_value_buffer(v4, qword_27FF72A90);

  v5 = v1;
  v6 = sub_2645D38AC();
  v7 = sub_2645D3B0C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[21];
    v9 = v0[7];
    v27 = v0[8];
    v10 = v0[2];
    v11 = v0[3];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v28 = v14;
    *v12 = 136315906;
    *(v12 + 4) = sub_264561058(v10, v11, &v28);
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_264561058(v9, v27, &v28);
    *(v12 + 22) = 2080;
    *(v12 + 24) = sub_264561058(0xD000000000000034, 0x80000002645DFB40, &v28);
    *(v12 + 32) = 2112;
    v15 = v8;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 34) = v16;
    *v13 = v16;
    _os_log_impl(&dword_26455D000, v6, v7, "#SafetyCache,Receiver,sessionID:%s,%s,%s,returned error %@", v12, 0x2Au);
    sub_2645627C0(v13, &qword_27FF72D40, &qword_2645D9C08);
    MEMORY[0x26673D4A0](v13, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x26673D4A0](v14, -1, -1);
    MEMORY[0x26673D4A0](v12, -1, -1);
  }

  v17 = v0[21];
  v19 = v0[9];
  v18 = v0[10];
  v20 = v17;
  v19(1, 0, v17);

  v22 = v0[16];
  v21 = v0[17];
  v23 = v0[14];
  v24 = v0[11];
  sub_264571B2C(v0[19], type metadata accessor for FetchSafetyCacheRequest);

  v25 = v0[1];

  return v25();
}

uint64_t sub_264571250(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v10 = a1[1];

  *a1 = a2;
  a1[1] = a3;
  if (a5)
  {
    v11 = a5;
  }

  else
  {
    a4 = 0;
    v11 = 0xE000000000000000;
  }

  v12 = a1[3];

  a1[2] = a4;
  a1[3] = v11;
  return result;
}

void sub_2645713C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v7 = sub_2645D352C();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  (*(a4 + 16))(a4, a1, a2);
}

id SMCloudKitFunctionSwift.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SMCloudKitFunctionSwift.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SMCloudKitFunctionSwift();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_264571584(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26457167C;

  return v7(a1);
}

uint64_t sub_26457167C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_264571774(uint64_t a1)
{
  v4 = *(v1 + 24);
  v15 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v14 = *(v1 + 72);
  v11 = *(v1 + 88);
  v10 = *(v1 + 96);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_2645625D0;

  return sub_26457075C(a1, v15, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_2645718E0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_264571C40;

  return sub_264571584(a1, v5);
}

uint64_t sub_264571998(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2645625D0;

  return sub_264571584(a1, v5);
}

unint64_t sub_264571A70()
{
  result = qword_27FF72D38;
  if (!qword_27FF72D38)
  {
    type metadata accessor for FetchSafetyCacheRequest(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF72D38);
  }

  return result;
}

uint64_t sub_264571AC8(uint64_t a1, uint64_t a2)
{
  SafetyCacheResponse = type metadata accessor for FetchSafetyCacheResponse(0);
  (*(*(SafetyCacheResponse - 8) + 16))(a2, a1, SafetyCacheResponse);
  return a2;
}

uint64_t sub_264571B2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_264571B8C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_264571BF4()
{
  result = qword_27FF72D48;
  if (!qword_27FF72D48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FF72D48);
  }

  return result;
}

id sub_264571C44()
{
  v1 = OBJC_IVAR___SMContactsManagerInternal_store;
  *&v0[v1] = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  v2 = OBJC_IVAR___SMContactsManagerInternal_keystoFetch;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72D68, &unk_2645D9C48);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2645D9C10;
  v4 = *MEMORY[0x277CBCFC0];
  v5 = *MEMORY[0x277CBD098];
  *(v3 + 32) = *MEMORY[0x277CBCFC0];
  *(v3 + 40) = v5;
  v6 = *MEMORY[0x277CBD000];
  v7 = *MEMORY[0x277CBCFF8];
  *(v3 + 48) = *MEMORY[0x277CBD000];
  *(v3 + 56) = v7;
  *&v0[v2] = v3;
  v8 = &v0[OBJC_IVAR___SMContactsManagerInternal_cachedContact];
  *(v8 + 1) = 0;
  *(v8 + 2) = 0;
  *v8 = 0;
  v24.receiver = v0;
  v24.super_class = type metadata accessor for ContactsManager();
  v9 = v4;
  v10 = v5;
  v11 = v6;
  v12 = v7;
  v13 = objc_msgSendSuper2(&v24, sel_init);
  v14 = objc_opt_self();
  v15 = v13;
  v16 = [v14 defaultCenter];
  v17 = *MEMORY[0x277CBD140];
  v18 = swift_allocObject();
  *(v18 + 16) = v15;
  v23[4] = sub_2645747DC;
  v23[5] = v18;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 1107296256;
  v23[2] = sub_264572030;
  v23[3] = &block_descriptor;
  v19 = _Block_copy(v23);
  v20 = v15;

  v21 = [v16 addObserverForName:v17 object:0 queue:0 usingBlock:v19];
  _Block_release(v19);

  swift_unknownObjectRelease();
  return v20;
}

uint64_t sub_264571E6C(uint64_t a1, void *a2)
{
  if (qword_27FF72650 != -1)
  {
    swift_once();
  }

  v3 = sub_2645D38CC();
  __swift_project_value_buffer(v3, qword_27FF72AC0);
  v4 = a2;
  v5 = sub_2645D38AC();
  v6 = sub_2645D3B1C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315138;
    v9 = v4;
    v10 = [v9 description];
    v11 = sub_2645D398C();
    v13 = v12;

    v14 = sub_264561058(v11, v13, &v19);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_26455D000, v5, v6, "%s, CNContactStoreDidChange, clearing cached contact", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x26673D4A0](v8, -1, -1);
    MEMORY[0x26673D4A0](v7, -1, -1);
  }

  v15 = &v4[OBJC_IVAR___SMContactsManagerInternal_cachedContact];
  v16 = *&v4[OBJC_IVAR___SMContactsManagerInternal_cachedContact];
  v17 = *&v4[OBJC_IVAR___SMContactsManagerInternal_cachedContact + 16];
  *v15 = 0;
  *(v15 + 1) = 0;
  *(v15 + 2) = 0;
}

uint64_t sub_264572030(uint64_t a1)
{
  v2 = sub_2645D349C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_2645D348C();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

id ContactsManager.__deallocating_deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0 name:*MEMORY[0x277CBD140] object:0];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for ContactsManager();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_2645722F4()
{
  result = [objc_allocWithZone(type metadata accessor for ContactsManager()) init];
  qword_27FF72D50 = result;
  return result;
}

id static ContactsManager.shared.getter()
{
  if (qword_27FF72748 != -1)
  {
    swift_once();
  }

  v1 = qword_27FF72D50;

  return v1;
}

void *sub_2645723DC()
{
  v13[1] = *MEMORY[0x277D85DE8];
  v1 = objc_opt_self();
  v2 = sub_2645D397C();
  v3 = [v1 predicateForContactsMatchingEmailAddress_];

  v4 = *(v0 + OBJC_IVAR___SMContactsManagerInternal_store);
  v5 = *(v0 + OBJC_IVAR___SMContactsManagerInternal_keystoFetch);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF72D90, &qword_2645D9C58);
  v6 = sub_2645D3A3C();
  v13[0] = 0;
  v7 = [v4 unifiedContactsMatchingPredicate:v3 keysToFetch:v6 error:v13];

  v8 = v13[0];
  if (v7)
  {
    sub_264569FD8(0, &unk_27FF72DA0, 0x277CBDA58);
    v1 = sub_2645D3A4C();
    v9 = v8;
  }

  else
  {
    v10 = v13[0];
    sub_2645D353C();

    swift_willThrow();
  }

  v11 = *MEMORY[0x277D85DE8];
  return v1;
}

void *sub_264572564()
{
  v15[1] = *MEMORY[0x277D85DE8];
  v1 = objc_opt_self();
  v2 = objc_allocWithZone(MEMORY[0x277CBDB70]);
  v3 = sub_2645D397C();
  v4 = [v2 initWithStringValue_];

  v5 = [v1 predicateForContactsMatchingPhoneNumber_];
  v6 = *(v0 + OBJC_IVAR___SMContactsManagerInternal_store);
  v7 = *(v0 + OBJC_IVAR___SMContactsManagerInternal_keystoFetch);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF72D90, &qword_2645D9C58);
  v8 = sub_2645D3A3C();
  v15[0] = 0;
  v9 = [v6 unifiedContactsMatchingPredicate:v5 keysToFetch:v8 error:v15];

  v10 = v15[0];
  if (v9)
  {
    sub_264569FD8(0, &unk_27FF72DA0, 0x277CBDA58);
    v8 = sub_2645D3A4C();
    v11 = v10;
  }

  else
  {
    v12 = v15[0];
    sub_2645D353C();

    swift_willThrow();
  }

  v13 = *MEMORY[0x277D85DE8];
  return v8;
}

unint64_t sub_264572718(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [objc_allocWithZone(MEMORY[0x277CBDA58]) init];
  if (!a2)
  {
    goto LABEL_19;
  }

  v7 = &v2[OBJC_IVAR___SMContactsManagerInternal_cachedContact];
  v8 = *&v2[OBJC_IVAR___SMContactsManagerInternal_cachedContact];
  if (v8)
  {
    v9 = *(v7 + 2);
    if (v9)
    {
      v10 = *(v7 + 1) == a1 && v9 == a2;
      if (v10 || (sub_2645D3BEC() & 1) != 0)
      {
        v11 = qword_27FF72650;
        v12 = v8;
        if (v11 != -1)
        {
          swift_once();
        }

        v13 = sub_2645D38CC();
        __swift_project_value_buffer(v13, qword_27FF72AC0);
        v14 = v12;
        v15 = v3;
        v16 = sub_2645D38AC();
        v17 = sub_2645D3AFC();

        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          v19 = swift_slowAlloc();
          v82[0] = v19;
          *v18 = 136315650;
          v20 = v15;
          v21 = [v20 description];
          v22 = sub_2645D398C();
          v81 = v6;
          v24 = v23;

          v25 = sub_264561058(v22, v24, v82);

          *(v18 + 4) = v25;
          *(v18 + 12) = 2080;
          *(v18 + 14) = sub_264561058(0x28746361746E6F63, 0xEE00293A68746977, v82);
          *(v18 + 22) = 2080;
          v26 = [v14 givenName];
          v27 = sub_2645D398C();
          v29 = v28;

          v30 = sub_264561058(v27, v29, v82);

          *(v18 + 24) = v30;
          _os_log_impl(&dword_26455D000, v16, v17, "%s, %s: returning cached contact %s", v18, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x26673D4A0](v19, -1, -1);
          MEMORY[0x26673D4A0](v18, -1, -1);
        }

        else
        {
        }

        return v14;
      }
    }
  }

  v31 = sub_2645D397C();
  v32 = sub_2645D397C();
  [v6 setValue:v31 forKey:v32];

  v82[0] = a1;
  v82[1] = a2;
  sub_264574410();
  if (sub_2645D3B5C())
  {
    result = sub_2645723DC();
    if (result >> 62)
    {
      v58 = result;
      v59 = sub_2645D3BCC();
      result = v58;
      if (v59)
      {
LABEL_16:
        if ((result & 0xC000000000000001) == 0)
        {
          if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_19:
            if (qword_27FF72650 != -1)
            {
              swift_once();
            }

            v34 = sub_2645D38CC();
            __swift_project_value_buffer(v34, qword_27FF72AC0);
            v35 = v3;
            v36 = sub_2645D38AC();
            v37 = sub_2645D3B0C();

            if (os_log_type_enabled(v36, v37))
            {
              v38 = swift_slowAlloc();
              v39 = swift_slowAlloc();
              v82[0] = v39;
              *v38 = 136315394;
              v40 = v35;
              v41 = [v40 description];
              v42 = sub_2645D398C();
              v44 = v43;

              v45 = sub_264561058(v42, v44, v82);

              *(v38 + 4) = v45;
              *(v38 + 12) = 2080;
              *(v38 + 14) = sub_264561058(0x28746361746E6F63, 0xEE00293A68746977, v82);
              _os_log_impl(&dword_26455D000, v36, v37, "%s, %s: could not resolve contact due to no handle", v38, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x26673D4A0](v39, -1, -1);
              MEMORY[0x26673D4A0](v38, -1, -1);
            }

            return v6;
          }

          goto LABEL_30;
        }

LABEL_39:
        v46 = MEMORY[0x26673C9D0](0);
        goto LABEL_31;
      }
    }

    else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_16;
    }

LABEL_43:

LABEL_44:
    v62 = *v7;
    v63 = *(v7 + 2);
    *v7 = v6;
    *(v7 + 1) = a1;
    *(v7 + 2) = a2;
    v14 = v6;

    if (qword_27FF72650 != -1)
    {
      swift_once();
    }

    v64 = sub_2645D38CC();
    __swift_project_value_buffer(v64, qword_27FF72AC0);
    v65 = v3;
    v66 = sub_2645D38AC();
    v67 = sub_2645D3AEC();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v82[0] = v69;
      *v68 = 136315650;
      v70 = v65;
      v71 = [v70 description];
      v72 = sub_2645D398C();
      v74 = v73;

      v75 = sub_264561058(v72, v74, v82);

      *(v68 + 4) = v75;
      *(v68 + 12) = 2080;
      *(v68 + 14) = sub_264561058(0x28746361746E6F63, 0xEE00293A68746977, v82);
      *(v68 + 22) = 2080;
      v76 = [v14 givenName];
      v77 = sub_2645D398C();
      v79 = v78;

      v80 = sub_264561058(v77, v79, v82);

      *(v68 + 24) = v80;
      _os_log_impl(&dword_26455D000, v66, v67, "%s, %s: setting cached contact %s", v68, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x26673D4A0](v69, -1, -1);
      MEMORY[0x26673D4A0](v68, -1, -1);
    }

    return v14;
  }

  result = sub_264572564();
  if (result >> 62)
  {
    v60 = result;
    v61 = sub_2645D3BCC();
    result = v60;
    if (!v61)
    {
      goto LABEL_43;
    }
  }

  else if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_43;
  }

  if ((result & 0xC000000000000001) != 0)
  {
    goto LABEL_39;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_30:
    v46 = *(result + 32);
LABEL_31:
    v47 = v46;

    v48 = [v47 givenName];
    v49 = sub_2645D398C();
    v51 = v50;

    v52 = HIBYTE(v51) & 0xF;
    if ((v51 & 0x2000000000000000) == 0)
    {
      v52 = v49 & 0xFFFFFFFFFFFFLL;
    }

    if (v52)
    {
      goto LABEL_37;
    }

    v53 = [v47 familyName];
    v54 = sub_2645D398C();
    v56 = v55;

    v57 = HIBYTE(v56) & 0xF;
    if ((v56 & 0x2000000000000000) == 0)
    {
      v57 = v54 & 0xFFFFFFFFFFFFLL;
    }

    if (v57)
    {
LABEL_37:

      v6 = v47;
    }

    else
    {
    }

    goto LABEL_44;
  }

  __break(1u);
  return result;
}

uint64_t sub_26457325C(void *a1)
{
  v2 = v1;
  v4 = [objc_allocWithZone(MEMORY[0x277CBDA58]) init];
  if (a1)
  {
    v5 = a1;
    v6 = [v5 receiverHandles];
    sub_264569FD8(0, &qword_27FF72D70, off_279B644D0);
    v7 = sub_2645D3A4C();

    if (v7 >> 62)
    {
      v8 = sub_2645D3BCC();
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v8 < 1)
    {
      if (qword_27FF72650 == -1)
      {
        goto LABEL_22;
      }

      goto LABEL_31;
    }

    v51 = MEMORY[0x277D84F90];
    v9 = [v5 receiverHandles];
    v10 = sub_2645D3A4C();

    if (v10 >> 62)
    {
      v11 = sub_2645D3BCC();
      if (v11)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
LABEL_7:
        v50 = v5;
        if (v11 >= 1)
        {
          for (i = 0; i != v11; ++i)
          {
            if ((v10 & 0xC000000000000001) != 0)
            {
              v13 = MEMORY[0x26673C9D0](i, v10);
            }

            else
            {
              v13 = *(v10 + 8 * i + 32);
            }

            v14 = v13;
            v15 = [v13 primaryHandle];
            v16 = sub_2645D398C();
            v18 = v17;

            sub_264572718(v16, v18);

            MEMORY[0x26673C870](v19);
            if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v20 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_2645D3A6C();
            }

            sub_2645D3A7C();
          }

          v35 = v51;
          v5 = v50;
          goto LABEL_28;
        }

        __break(1u);
LABEL_31:
        swift_once();
LABEL_22:
        v36 = sub_2645D38CC();
        __swift_project_value_buffer(v36, qword_27FF72AC0);
        v37 = v2;
        v38 = sub_2645D38AC();
        v39 = sub_2645D3B0C();

        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          v51 = v41;
          *v40 = 136315394;
          v42 = v37;
          v43 = v5;
          v44 = [v42 description];
          v45 = sub_2645D398C();
          v47 = v46;

          v48 = sub_264561058(v45, v47, &v51);

          *(v40 + 4) = v48;
          *(v40 + 12) = 2080;
          *(v40 + 14) = sub_264561058(0xD000000000000024, 0x80000002645DFC20, &v51);
          _os_log_impl(&dword_26455D000, v38, v39, "%s, %s: could not resolve contact due to no handles", v40, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x26673D4A0](v41, -1, -1);
          MEMORY[0x26673D4A0](v40, -1, -1);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72D68, &unk_2645D9C48);
          v35 = swift_allocObject();
          *(v35 + 16) = xmmword_2645D9C20;
          *(v35 + 32) = v4;
        }

        else
        {

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72D68, &unk_2645D9C48);
          v35 = swift_allocObject();
          *(v35 + 16) = xmmword_2645D9C20;
          *(v35 + 32) = v4;
        }

        return v35;
      }
    }

    v35 = MEMORY[0x277D84F90];
LABEL_28:

    return v35;
  }

  if (qword_27FF72650 != -1)
  {
    swift_once();
  }

  v21 = sub_2645D38CC();
  __swift_project_value_buffer(v21, qword_27FF72AC0);
  v22 = v2;
  v23 = sub_2645D38AC();
  v24 = sub_2645D3B0C();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = v4;
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v51 = v27;
    *v26 = 136315394;
    v28 = v22;
    v29 = [v28 description];
    v30 = sub_2645D398C();
    v32 = v31;

    v33 = sub_264561058(v30, v32, &v51);

    *(v26 + 4) = v33;
    *(v26 + 12) = 2080;
    *(v26 + 14) = sub_264561058(0xD000000000000024, 0x80000002645DFC20, &v51);
    _os_log_impl(&dword_26455D000, v23, v24, "%s, %s: could not resolve contact due to no session state or configuration", v26, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26673D4A0](v27, -1, -1);
    v34 = v26;
    v4 = v25;
    MEMORY[0x26673D4A0](v34, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72D68, &unk_2645D9C48);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_2645D9C20;
  *(v35 + 32) = v4;
  return v35;
}

unint64_t sub_26457392C(unint64_t result, uint64_t a2)
{
  v62[1] = *MEMORY[0x277D85DE8];
  if (result)
  {
    if (a2)
    {
      v2 = result;
      v62[0] = *&v58[OBJC_IVAR___SMContactsManagerInternal_keystoFetch];

      sub_264574464(v3);
      v4 = v62[0];
      if (v2 >> 62)
      {
LABEL_42:
        v5 = sub_2645D3BCC();
      }

      else
      {
        v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v55 = OBJC_IVAR___SMContactsManagerInternal_store;

      if (!v5)
      {
        v54 = v2;
        goto LABEL_37;
      }

      v6 = 0;
      v54 = v2;
      v57 = v4;
LABEL_7:
      v7 = v6 + 4;
      while (1)
      {
        v8 = v7 - 4;
        if ((v2 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x26673C9D0](v7 - 4, v2);
        }

        else
        {
          if (v8 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_41;
          }

          v9 = *(v2 + 8 * v7);
        }

        v4 = v9;
        if (__OFADD__(v8, 1))
        {
          __break(1u);
LABEL_41:
          __break(1u);
          goto LABEL_42;
        }

        v60 = v7 - 3;
        v10 = objc_opt_self();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF729F8, &unk_2645D96D0);
        v11 = swift_allocObject();
        *(v11 + 16) = xmmword_2645D9C30;
        v12 = v4;
        v13 = [v4 identifier];
        v14 = sub_2645D398C();
        v16 = v15;

        *(v11 + 32) = v14;
        *(v11 + 40) = v16;
        v17 = sub_2645D3A3C();

        v18 = [v10 predicateForContactsWithIdentifiers_];

        v19 = *&v58[v55];
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF72D90, &qword_2645D9C58);
        v21 = sub_2645D3A3C();
        v62[0] = 0;
        v22 = [v19 unifiedContactsMatchingPredicate:v18 keysToFetch:v21 error:v62];

        v23 = v62[0];
        if (!v22)
        {
          break;
        }

        sub_264569FD8(0, &unk_27FF72DA0, 0x277CBDA58);
        v4 = sub_2645D3A4C();
        v24 = v23;

        if (v4 >> 62)
        {
          if (sub_2645D3BCC())
          {
LABEL_19:
            if ((v4 & 0xC000000000000001) != 0)
            {
              v25 = MEMORY[0x26673C9D0](0, v4);
              goto LABEL_22;
            }

            if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
LABEL_44:
              __break(1u);
            }

            v25 = *(v4 + 32);
LABEL_22:
            v26 = v25;

            v27 = v54;
            if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v54 & 0x8000000000000000) != 0 || (v54 & 0x4000000000000000) != 0)
            {
              v27 = sub_2645745BC(v54);
            }

            v54 = v27;
            v28 = v27 & 0xFFFFFFFFFFFFFF8;
            if ((v7 - 4) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_44;
            }

            v29 = *(v28 + 8 * v7);
            *(v28 + 8 * v7) = v26;

            v6 = v7 - 3;
            v4 = v57;
            if (v60 == v5)
            {
LABEL_37:

              result = v54;
              goto LABEL_38;
            }

            goto LABEL_7;
          }
        }

        else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        ++v7;
        if (v60 == v5)
        {
          goto LABEL_37;
        }
      }

      v30 = v62[0];

      v31 = sub_2645D353C();

      swift_willThrow();
      if (qword_27FF72650 != -1)
      {
        swift_once();
      }

      v32 = sub_2645D38CC();
      __swift_project_value_buffer(v32, qword_27FF72AC0);
      v33 = v58;
      v34 = v12;

      v35 = v31;
      v36 = sub_2645D38AC();
      v37 = sub_2645D3B0C();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v62[0] = v61;
        *v38 = 136316162;
        v59 = v37;
        v39 = v33;
        v40 = [v39 description];
        v41 = sub_2645D398C();
        v43 = v42;

        v44 = sub_264561058(v41, v43, v62);

        *(v38 + 4) = v44;
        *(v38 + 12) = 2080;
        *(v38 + 14) = sub_264561058(0xD000000000000025, 0x80000002645DFC50, v62);
        *(v38 + 22) = 2112;
        *(v38 + 24) = v34;
        *v56 = v34;
        *(v38 + 32) = 2080;
        v45 = v34;
        v46 = MEMORY[0x26673C8A0](v57, v20);
        v48 = v47;

        v49 = sub_264561058(v46, v48, v62);

        *(v38 + 34) = v49;
        *(v38 + 42) = 2080;
        swift_getErrorValue();
        v50 = sub_2645D3C1C();
        v52 = sub_264561058(v50, v51, v62);

        *(v38 + 44) = v52;
        _os_log_impl(&dword_26455D000, v36, v59, "%s, %s: Unable to fetch additional keys for contact - %@, keys - %s| Error: %s", v38, 0x34u);
        sub_264574554(v56);
        MEMORY[0x26673D4A0](v56, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x26673D4A0](v61, -1, -1);
        MEMORY[0x26673D4A0](v38, -1, -1);
      }

      else
      {
      }

      result = 0;
    }

    else
    {
      result = 0;
    }
  }

LABEL_38:
  v53 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_2645740DC()
{
  v26[1] = *MEMORY[0x277D85DE8];
  v1 = *&v0[OBJC_IVAR___SMContactsManagerInternal_store];
  v2 = *&v0[OBJC_IVAR___SMContactsManagerInternal_keystoFetch];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF72D90, &qword_2645D9C58);
  v3 = sub_2645D3A3C();
  v26[0] = 0;
  v4 = [v1 _crossPlatformUnifiedMeContactWithKeysToFetch_error_];

  v5 = v26[0];
  if (!v4)
  {
    v6 = v5;
    v7 = sub_2645D353C();

    swift_willThrow();
    if (qword_27FF72650 != -1)
    {
      swift_once();
    }

    v8 = sub_2645D38CC();
    __swift_project_value_buffer(v8, qword_27FF72AC0);
    v9 = v0;
    v10 = v7;
    v11 = sub_2645D38AC();
    v12 = sub_2645D3B0C();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v26[0] = v14;
      *v13 = 136315650;
      v15 = v9;
      v16 = [v15 description];
      v17 = sub_2645D398C();
      v19 = v18;

      v20 = sub_264561058(v17, v19, v26);

      *(v13 + 4) = v20;
      *(v13 + 12) = 2080;
      *(v13 + 14) = sub_264561058(0xD000000000000012, 0x80000002645DFC80, v26);
      *(v13 + 22) = 2080;
      swift_getErrorValue();
      v21 = sub_2645D3C1C();
      v23 = sub_264561058(v21, v22, v26);

      *(v13 + 24) = v23;
      _os_log_impl(&dword_26455D000, v11, v12, "%s, %s: Unable to fetch self contact, error: %s", v13, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x26673D4A0](v14, -1, -1);
      MEMORY[0x26673D4A0](v13, -1, -1);
    }

    else
    {
    }

    v4 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v4;
}

unint64_t sub_264574410()
{
  result = qword_27FF72D60;
  if (!qword_27FF72D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF72D60);
  }

  return result;
}

uint64_t sub_264574464(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_2645D3BCC();
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

  v15 = sub_2645D3BCC();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_2645747FC(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_26457489C(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
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

uint64_t sub_264574554(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72D40, &qword_2645D9C08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2645745BC(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_2645D3BCC();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_2645D3B9C();
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_26457471C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_264574778(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2645747FC(uint64_t a1)
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
    sub_2645D3BCC();
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
  result = sub_2645D3B9C();
  *v1 = result;
  return result;
}

uint64_t sub_26457489C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2645D3BCC();
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
      result = sub_2645D3BCC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_264574AB0();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72DB0, &qword_2645D9CC8);
            v9 = sub_264574A28(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF72D90, &qword_2645D9C58);
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

uint64_t (*sub_264574A28(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x26673C9D0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
    v5 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v5;
    return sub_264574AA8;
  }

  __break(1u);
  return result;
}

unint64_t sub_264574AB0()
{
  result = qword_27FF72DB8;
  if (!qword_27FF72DB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF72DB0, &qword_2645D9CC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF72DB8);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

id CNContact.localizedName.getter()
{
  result = [objc_opt_self() componentsForContact_];
  if (result)
  {
    v2 = result;
    v3 = [objc_opt_self() localizedStringFromPersonNameComponents:result style:1 options:0];
    v4 = sub_2645D398C();

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_264574C18(uint64_t a1@<X8>)
{
  sub_264577A14();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4 & 1;
}

void sub_264574C54(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_264577A14();
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 9) = v6 & 1;
}

uint64_t sub_264574C8C()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_2645D3C2C();
  sub_2645D38EC();
  return sub_2645D3C3C();
}

uint64_t sub_264574CF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_264577038();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_264574D44()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_2645D3C2C();
  sub_2645D38EC();
  return sub_2645D3C3C();
}

uint64_t sub_264574DD8()
{
  v0 = sub_2645D389C();
  __swift_allocate_value_buffer(v0, qword_27FF74F30);
  __swift_project_value_buffer(v0, qword_27FF74F30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72E50, &qword_2645DA2F8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72E58, &unk_2645DA300) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2645D9CE0;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 0;
  *v5 = "FETCH_SAFETY_CACHE_RESPONSE_CODE_SUCCESS";
  *(v5 + 8) = 40;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_2645D387C();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "FETCH_SAFETY_CACHE_RESPONSE_CODE_UNKNOWN_ERROR";
  *(v9 + 8) = 46;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "FETCH_SAFETY_CACHE_RESPONSE_CODE_DENIED";
  *(v11 + 1) = 39;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "FETCH_SAFETY_CACHE_RESPONSE_CODE_MISSING_ACCESS_DATA_RECORD";
  *(v13 + 1) = 59;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "FETCH_SAFETY_CACHE_RESPONSE_CODE_MISSING_SAFETY_CACHE_RECORD";
  *(v15 + 1) = 60;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "FETCH_SAFETY_CACHE_RESPONSE_CODE_MISSING_TOKEN";
  *(v17 + 1) = 46;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "FETCH_SAFETY_CACHE_RESPONSE_CODE_MISSING_RELEASE_TIME";
  *(v19 + 1) = 53;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "FETCH_SAFETY_CACHE_RESPONSE_CODE_ZONE_NOT_FOUND";
  *(v21 + 1) = 47;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "FETCH_SAFETY_CACHE_RESPONSE_CODE_RECORD_TRANSPORT_INIT_FAILURE";
  *(v22 + 8) = 62;
  *(v22 + 16) = 2;
  v8();
  return sub_2645D388C();
}

uint64_t (*sub_2645751B4(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_264575204(uint64_t a1, uint64_t a2)
{
  v4 = sub_264576B00(&qword_27FF72E60, type metadata accessor for HelloRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2645752A4(uint64_t a1)
{
  v2 = sub_264576B00(&qword_27FF72E28, type metadata accessor for HelloRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_264575310()
{
  sub_264576B00(&qword_27FF72E28, type metadata accessor for HelloRequest);

  return sub_2645D382C();
}

uint64_t sub_2645753A4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_2645D389C();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72E50, &qword_2645DA2F8);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72E58, &unk_2645DA300) - 8);
  v9 = *(*v8 + 72);
  v10 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2645D9C30;
  v12 = v11 + v10 + v8[14];
  *(v11 + v10) = 1;
  *v12 = a3;
  *(v12 + 8) = a4;
  *(v12 + 16) = 2;
  v13 = *MEMORY[0x277D21870];
  v14 = sub_2645D387C();
  (*(*(v14 - 8) + 104))(v12, v13, v14);
  return sub_2645D388C();
}

uint64_t sub_264575510()
{
  while (1)
  {
    result = sub_2645D37CC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_2645D37EC();
    }
  }

  return result;
}

uint64_t sub_264575580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = *v4;
  v8 = v4[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_2645D385C(), !v5))
  {
    v11 = v4 + *(a4(0) + 20);
    return sub_2645D376C();
  }

  return result;
}

uint64_t sub_264575674(uint64_t a1, uint64_t a2)
{
  v4 = sub_264576B00(&qword_27FF72E70, type metadata accessor for HelloResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_264575714(uint64_t a1)
{
  v2 = sub_264576B00(&qword_27FF72E08, type metadata accessor for HelloResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_264575780()
{
  sub_264576B00(&qword_27FF72E08, type metadata accessor for HelloResponse);

  return sub_2645D382C();
}

uint64_t sub_2645757FC(void *a1, void *a2, uint64_t a3)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_2645D3BEC() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a3 + 20);
  sub_2645D378C();
  sub_264576B00(&qword_27FF72E68, MEMORY[0x277D216C8]);
  return sub_2645D38FC() & 1;
}

uint64_t sub_2645758B8()
{
  v0 = sub_2645D389C();
  __swift_allocate_value_buffer(v0, qword_27FF74F78);
  __swift_project_value_buffer(v0, qword_27FF74F78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72E50, &qword_2645DA2F8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72E58, &unk_2645DA300) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2645D9510;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "zoneName";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2645D387C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "token";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_2645D388C();
}

uint64_t sub_264575A80()
{
  while (1)
  {
    result = sub_2645D37CC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 2)
    {
      sub_2645D37EC();
    }
  }

  return result;
}

uint64_t sub_264575B00()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_2645D385C(), !v1))
  {
    v6 = v0[3];
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v0[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v7 || (result = sub_2645D385C(), !v1))
    {
      v8 = v0 + *(type metadata accessor for FetchSafetyCacheRequest(0) + 24);
      return sub_2645D376C();
    }
  }

  return result;
}

uint64_t sub_264575BC4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  v2 = a2 + *(a1 + 24);
  return sub_2645D377C();
}

uint64_t sub_264575C0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_2645D378C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_264575C80(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_2645D378C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_264575CF4(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t sub_264575D48(uint64_t a1, uint64_t a2)
{
  v4 = sub_264576B00(&qword_27FF72E78, type metadata accessor for FetchSafetyCacheRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_264575DE8(uint64_t a1)
{
  v2 = sub_264576B00(&qword_27FF72D38, type metadata accessor for FetchSafetyCacheRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_264575E54()
{
  sub_264576B00(&qword_27FF72D38, type metadata accessor for FetchSafetyCacheRequest);

  return sub_2645D382C();
}

uint64_t sub_264575ED0(void *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_2645D3BEC() & 1) == 0)
  {
    return 0;
  }

  v7 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v7 && (sub_2645D3BEC() & 1) == 0)
  {
    return 0;
  }

  v8 = *(a3 + 24);
  sub_2645D378C();
  sub_264576B00(&qword_27FF72E68, MEMORY[0x277D216C8]);
  return sub_2645D38FC() & 1;
}

uint64_t sub_264575FAC()
{
  v0 = sub_2645D389C();
  __swift_allocate_value_buffer(v0, qword_27FF74F90);
  __swift_project_value_buffer(v0, qword_27FF74F90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72E50, &qword_2645DA2F8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72E58, &unk_2645DA300) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2645D9510;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "responseCode";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2645D387C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "safetyCacheRecord";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  return sub_2645D388C();
}

uint64_t sub_264576174()
{
  result = sub_2645D37CC();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        sub_264577038();
        sub_2645D37DC();
      }

      else if (result == 2)
      {
        sub_264576234();
      }

      result = sub_2645D37CC();
    }
  }

  return result;
}

uint64_t sub_264576234()
{
  v0 = *(type metadata accessor for FetchSafetyCacheResponse(0) + 24);
  sub_2645D375C();
  sub_264576B00(&qword_27FF72E90, MEMORY[0x277CFB080]);
  return sub_2645D37FC();
}

uint64_t sub_2645762E8()
{
  if (!*v0 || (v4 = *v0, v5 = *(v0 + 8), sub_264577038(), result = sub_2645D384C(), !v1))
  {
    result = sub_2645763B4(v0);
    if (!v1)
    {
      v3 = v0 + *(type metadata accessor for FetchSafetyCacheResponse(0) + 20);
      return sub_2645D376C();
    }
  }

  return result;
}

uint64_t sub_2645763B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72D30, &qword_2645D9C00);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v13 - v4;
  v6 = sub_2645D375C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  SafetyCacheResponse = type metadata accessor for FetchSafetyCacheResponse(0);
  sub_26457708C(a1 + *(SafetyCacheResponse + 24), v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_2645627C0(v5, &qword_27FF72D30, &qword_2645D9C00);
  }

  (*(v7 + 32))(v10, v5, v6);
  sub_264576B00(&qword_27FF72E90, MEMORY[0x277CFB080]);
  sub_2645D386C();
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_2645765BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  v4 = a2 + *(a1 + 20);
  sub_2645D377C();
  v5 = *(a1 + 24);
  v6 = sub_2645D375C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2 + v5, 1, 1, v6);
}

uint64_t sub_264576664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_2645D378C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2645766D8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_2645D378C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_26457677C(uint64_t a1, uint64_t a2)
{
  v4 = sub_264576B00(&qword_27FF72E80, type metadata accessor for FetchSafetyCacheResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26457681C@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_2645D389C();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_2645768B8(uint64_t a1)
{
  v2 = sub_264576B00(&qword_27FF72DD0, type metadata accessor for FetchSafetyCacheResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_264576924()
{
  sub_2645D3C2C();
  sub_2645D38EC();
  return sub_2645D3C3C();
}

uint64_t sub_26457697C()
{
  sub_264576B00(&qword_27FF72DD0, type metadata accessor for FetchSafetyCacheResponse);

  return sub_2645D382C();
}

uint64_t sub_2645769F8()
{
  sub_2645D3C2C();
  sub_2645D38EC();
  return sub_2645D3C3C();
}

uint64_t sub_264576B00(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_264576EC0(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_264576FD4()
{
  result = qword_27FF72E40;
  if (!qword_27FF72E40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF72E48, qword_2645DA2B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF72E40);
  }

  return result;
}

unint64_t sub_264577038()
{
  result = qword_27FF72E88;
  if (!qword_27FF72E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF72E88);
  }

  return result;
}

uint64_t sub_26457708C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72D30, &qword_2645D9C00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2645770FC(uint64_t *a1, uint64_t a2)
{
  v4 = sub_2645D375C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72D30, &qword_2645D9C00);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72E98, &unk_2645DA350);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v27 - v15;
  v17 = *a1;
  v18 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v18 <= 3)
    {
      if (v18 > 1)
      {
        if (v18 == 2)
        {
          if (v17 != 2)
          {
            goto LABEL_15;
          }
        }

        else if (v17 != 3)
        {
          goto LABEL_15;
        }
      }

      else if (v18)
      {
        if (v17 != 1)
        {
          goto LABEL_15;
        }
      }

      else if (v17)
      {
        goto LABEL_15;
      }
    }

    else if (v18 <= 5)
    {
      if (v18 == 4)
      {
        if (v17 != 4)
        {
          goto LABEL_15;
        }
      }

      else if (v17 != 5)
      {
        goto LABEL_15;
      }
    }

    else if (v18 == 6)
    {
      if (v17 != 6)
      {
        goto LABEL_15;
      }
    }

    else if (v18 == 7)
    {
      if (v17 != 7)
      {
        goto LABEL_15;
      }
    }

    else if (v17 != 8)
    {
      goto LABEL_15;
    }
  }

  else if (v17 != v18)
  {
    goto LABEL_15;
  }

  SafetyCacheResponse = type metadata accessor for FetchSafetyCacheResponse(0);
  v19 = *(SafetyCacheResponse + 24);
  v20 = *(v13 + 48);
  sub_26457708C(a1 + v19, v16);
  sub_26457708C(a2 + v19, &v16[v20]);
  v21 = *(v5 + 48);
  if (v21(v16, 1, v4) == 1)
  {
    if (v21(&v16[v20], 1, v4) == 1)
    {
      sub_2645627C0(v16, &qword_27FF72D30, &qword_2645D9C00);
LABEL_22:
      v26 = *(SafetyCacheResponse + 20);
      sub_2645D378C();
      sub_264576B00(&qword_27FF72E68, MEMORY[0x277D216C8]);
      v22 = sub_2645D38FC();
      return v22 & 1;
    }

    goto LABEL_14;
  }

  sub_26457708C(v16, v12);
  if (v21(&v16[v20], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_14:
    sub_2645627C0(v16, &qword_27FF72E98, &unk_2645DA350);
    goto LABEL_15;
  }

  (*(v5 + 32))(v8, &v16[v20], v4);
  sub_264576B00(&qword_27FF72EA0, MEMORY[0x277CFB080]);
  v24 = sub_2645D38FC();
  v25 = *(v5 + 8);
  v25(v8, v4);
  v25(v12, v4);
  sub_2645627C0(v16, &qword_27FF72D30, &qword_2645D9C00);
  if (v24)
  {
    goto LABEL_22;
  }

LABEL_15:
  v22 = 0;
  return v22 & 1;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2645D378C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_2645D378C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2645776D8()
{
  result = sub_2645D378C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26457777C()
{
  result = sub_2645D378C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_264577820()
{
  sub_2645D378C();
  if (v0 <= 0x3F)
  {
    sub_2645778B4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2645778B4()
{
  if (!qword_27FF72EE8)
  {
    sub_2645D375C();
    v0 = sub_2645D3B4C();
    if (!v1)
    {
      atomic_store(v0, &qword_27FF72EE8);
    }
  }
}

unint64_t sub_264577910()
{
  result = qword_27FF72EF0;
  if (!qword_27FF72EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF72EF0);
  }

  return result;
}

unint64_t sub_264577968()
{
  result = qword_27FF72EF8;
  if (!qword_27FF72EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF72EF8);
  }

  return result;
}

unint64_t sub_2645779C0()
{
  result = qword_27FF72F00;
  if (!qword_27FF72F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF72F00);
  }

  return result;
}

uint64_t sub_264577A78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72F08, &qword_2645DA508) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264577B18, 0, 0);
}

uint64_t sub_264577B18()
{
  v2 = v0[4];
  v1 = v0[5];
  sub_264577ED4(v0[3], v1);
  SafetyCacheRequest = type metadata accessor for FetchSafetyCacheRequest(0);
  (*(*(SafetyCacheRequest - 8) + 56))(v1, 0, 1, SafetyCacheRequest);
  v4 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72F10, &qword_2645DA510));
  v5 = sub_2645D373C();
  v0[6] = v5;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *(v6 + 16) = v5;
  *(v6 + 24) = v2;
  v7 = swift_task_alloc();
  v0[8] = v7;
  *(v7 + 16) = v5;
  v8 = *(MEMORY[0x277D85A10] + 4);
  v9 = swift_task_alloc();
  v0[9] = v9;
  SafetyCacheResponse = type metadata accessor for FetchSafetyCacheResponse(0);
  *v9 = v0;
  v9[1] = sub_264577CBC;
  v11 = v0[2];

  return MEMORY[0x282200830](v11, &unk_2645DA520, v6, sub_264578540, v7, 0, 0, SafetyCacheResponse);
}

uint64_t sub_264577CBC()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v8 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_264577E4C;
  }

  else
  {
    v6 = *(v2 + 56);
    v5 = *(v2 + 64);

    v4 = sub_264577DE0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_264577DE0()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_264577E4C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 40);

  v4 = *(v0 + 8);
  v5 = *(v0 + 80);

  return v4();
}

uint64_t sub_264577ED4(uint64_t a1, uint64_t a2)
{
  SafetyCacheRequest = type metadata accessor for FetchSafetyCacheRequest(0);
  (*(*(SafetyCacheRequest - 8) + 16))(a2, a1, SafetyCacheRequest);
  return a2;
}

uint64_t sub_264577F38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_264577F5C, 0, 0);
}

uint64_t sub_264577F5C()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = *(MEMORY[0x277D85A40] + 4);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  SafetyCacheResponse = type metadata accessor for FetchSafetyCacheResponse(0);
  *v3 = v0;
  v3[1] = sub_264578058;
  v5 = *(v0 + 16);

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD000000000000014, 0x80000002645DFFB0, sub_264578550, v1, SafetyCacheResponse);
}

uint64_t sub_264578058()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_264578194, 0, 0);
  }

  else
  {
    v4 = v3[5];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_264578194()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t sub_2645781F8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2645625D0;

  return sub_264577F38(a1, v5, v4);
}

uint64_t sub_2645782A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72F18, &qword_2645DA528);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  (*(v3 + 16))(&v10 - v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  sub_2645D372C();
  return sub_2645D3ADC();
}

uint64_t sub_2645783F4(uint64_t a1)
{
  SafetyCacheResponse = type metadata accessor for FetchSafetyCacheResponse(0);
  v3 = *(*(SafetyCacheResponse - 8) + 64);
  MEMORY[0x28223BE20](SafetyCacheResponse - 8);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72F20, &qword_2645DA530);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (v11 - v8);
  sub_2645785D4(a1, v11 - v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11[1] = *v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72F18, &qword_2645DA528);
    return sub_2645D3A9C();
  }

  else
  {
    sub_264578644(v9, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72F18, &qword_2645DA528);
    return sub_2645D3AAC();
  }
}

uint64_t sub_264578550(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_2645782A4(a1);
}

uint64_t sub_264578558(uint64_t a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72F18, &qword_2645DA528) - 8) + 80);

  return sub_2645783F4(a1);
}

uint64_t sub_2645785D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72F20, &qword_2645DA530);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264578644(uint64_t a1, uint64_t a2)
{
  SafetyCacheResponse = type metadata accessor for FetchSafetyCacheResponse(0);
  (*(*(SafetyCacheResponse - 8) + 32))(a2, a1, SafetyCacheResponse);
  return a2;
}

void sub_2645786A8()
{
  v0 = sub_2645D397C();
  v1 = MGGetBoolAnswer();

  byte_27FF74FA8 = v1;
}

uint64_t sub_264578700()
{
  v5 = *MEMORY[0x277D85DE8];
  v1[9] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF729E0, &qword_2645D9680) - 8) + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2645787D4, 0, 0);
}

uint64_t sub_2645787D4()
{
  v49 = v0;
  v48[1] = *MEMORY[0x277D85DE8];
  v1 = v0[11];
  v2 = v0[9];
  sub_2645D34DC();
  v3 = sub_2645D359C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 48);
  v6 = v5(v1, 1, v3);
  v7 = v0[11];
  if (v6 == 1)
  {
    sub_2645627C0(v0[11], &qword_27FF729E0, &qword_2645D9680);
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v8 = sub_2645D356C();
    v9 = v10;
    (*(v4 + 8))(v7, v3);
  }

  if (qword_27FF72778 != -1)
  {
    swift_once();
  }

  if (byte_27FF74FA8 != 1)
  {
    if (qword_27FF72648 != -1)
    {
      swift_once();
    }

    v25 = sub_2645D38CC();
    __swift_project_value_buffer(v25, qword_27FF72AA8);

    v26 = sub_2645D38AC();
    v27 = sub_2645D3AEC();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v48[0] = v29;
      *v28 = 67109378;
      *(v28 + 8) = 2080;
      if (v9)
      {
        v30 = v8;
      }

      else
      {
        v30 = 0;
      }

      if (v9)
      {
        v31 = v9;
      }

      else
      {
        v31 = 0xE000000000000000;
      }

      v32 = sub_264561058(v30, v31, v48);

      *(v28 + 10) = v32;
      _os_log_impl(&dword_26455D000, v26, v27, "TTR isInternal:%{BOOL}d, radar info:%s", v28, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x26673D4A0](v29, -1, -1);
      MEMORY[0x26673D4A0](v28, -1, -1);

      goto LABEL_37;
    }

    goto LABEL_29;
  }

  if (byte_27FF74FA9 == 1)
  {
LABEL_29:

    goto LABEL_37;
  }

  aBlock = v8;
  byte_27FF74FA9 = 1;
  v0[8] = 3;
  v11 = sub_2645D397C();
  v12 = sub_2645D397C();
  v13 = sub_2645D397C();
  v14 = sub_2645D397C();
  v46 = v12;
  v47 = v11;
  v15 = v12;
  v16 = v13;
  v17 = v14;
  CFUserNotificationDisplayAlert(0.0, 0, 0, 0, 0, v11, v15, v16, v14, 0, v0 + 8);
  if (v0[8])
  {
    if (qword_27FF72648 != -1)
    {
      swift_once();
    }

    v18 = sub_2645D38CC();
    __swift_project_value_buffer(v18, qword_27FF72AA8);

    v19 = sub_2645D38AC();
    v20 = sub_2645D3B0C();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v48[0] = v22;
      *v21 = 136315138;
      if (v9)
      {
        v23 = aBlock;
      }

      else
      {
        v23 = 0;
      }

      if (!v9)
      {
        v9 = 0xE000000000000000;
      }

      v24 = sub_264561058(v23, v9, v48);

      *(v21 + 4) = v24;
      _os_log_impl(&dword_26455D000, v19, v20, "TTR Dismissed, radar info: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x26673D4A0](v22, -1, -1);
      MEMORY[0x26673D4A0](v21, -1, -1);
    }

    else
    {
    }
  }

  else
  {

    v33 = [objc_opt_self() defaultWorkspace];
    if (v33)
    {
      v34 = v33;
      v35 = v0[10];
      sub_2645D34DC();
      if (v5(v35, 1, v3) == 1)
      {
        v36 = 0;
      }

      else
      {
        v37 = v0[10];
        v36 = sub_2645D357C();
        (*(v4 + 8))(v37, v3);
      }

      v38 = [objc_allocWithZone(MEMORY[0x277CC1F00]) init];
      v0[6] = sub_264578E6C;
      v0[7] = 0;
      v0[2] = MEMORY[0x277D85DD0];
      v0[3] = 1107296256;
      v0[4] = sub_264578FD0;
      v0[5] = &block_descriptor_0;
      v39 = _Block_copy(v0 + 2);
      [v34 openURL:v36 configuration:v38 completionHandler:v39];
      _Block_release(v39);
    }
  }

  byte_27FF74FA9 = 0;

LABEL_37:
  v41 = v0[10];
  v40 = v0[11];

  v42 = v0[1];
  v43 = *MEMORY[0x277D85DE8];

  return v42();
}

void sub_264578E6C(uint64_t a1, void *a2)
{
  if (a2)
  {
    if (qword_27FF72648 != -1)
    {
      swift_once();
    }

    v3 = sub_2645D38CC();
    __swift_project_value_buffer(v3, qword_27FF72AA8);
    v4 = a2;
    oslog = sub_2645D38AC();
    v5 = sub_2645D3B0C();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      v8 = a2;
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v9;
      *v7 = v9;
      _os_log_impl(&dword_26455D000, oslog, v5, "TTR Error filing radar: %@", v6, 0xCu);
      sub_2645627C0(v7, &qword_27FF72D40, &qword_2645D9C08);
      MEMORY[0x26673D4A0](v7, -1, -1);
      MEMORY[0x26673D4A0](v6, -1, -1);
    }
  }
}

uint64_t sub_264578FD0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = sub_2645D38DC();
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  v5(v6, a3);
}

uint64_t sub_26457907C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_264571C40;

  return sub_26457AB80(a1, a2, a3);
}

uint64_t sub_2645792C8(void *a1, uint64_t a2, void *aBlock)
{
  v3[2] = a1;
  v3[3] = _Block_copy(aBlock);
  if (a2)
  {
    a2 = sub_2645D398C();
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v3[4] = v7;
  v8 = a1;
  v9 = swift_task_alloc();
  v3[5] = v9;
  *v9 = v3;
  v9[1] = sub_2645793C4;

  return sub_26457AB80(v8, a2, v7);
}

uint64_t sub_2645793C4()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 16);
  v7 = *v0;

  v3[2](v3);
  _Block_release(v3);
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_264579520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 > 2)
  {
    if ((a1 - 3) < 7)
    {
LABEL_3:
      v4 = v3[1];

      return v4();
    }

LABEL_10:
    v6 = a3;
    v7 = a2;
    v8 = swift_task_alloc();
    v3[4] = v8;
    *v8 = v3;
    v9 = sub_26457982C;
    goto LABEL_11;
  }

  if (!a1)
  {
    v6 = a3;
    v7 = a2;
    v12 = swift_task_alloc();
    v3[2] = v12;
    *v12 = v3;
    v12[1] = sub_2645625D0;
    v11 = 0xD00000000000002DLL;
    v10 = 0x80000002645E0000;
    goto LABEL_13;
  }

  if (a1 == 1)
  {
    goto LABEL_3;
  }

  if (a1 != 2)
  {
    goto LABEL_10;
  }

  v6 = a3;
  v7 = a2;
  v8 = swift_task_alloc();
  v3[3] = v8;
  *v8 = v3;
  v9 = sub_264579738;
LABEL_11:
  v8[1] = v9;
  v10 = 0x80000002645DFFD0;
  v11 = 0xD000000000000029;
LABEL_13:

  return sub_26457A460(v11, v10, 0, 0, v7, v6);
}

uint64_t sub_264579738()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_26457982C()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_264579920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_264571C40;

  return sub_26457A460(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_264579BA4(uint64_t a1, uint64_t a2, uint64_t a3, void *aBlock)
{
  v4[2] = _Block_copy(aBlock);
  if (a1)
  {
    a1 = sub_2645D398C();
    v9 = v8;
    v4[3] = v8;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_6:
    v11 = 0;
    v4[4] = 0;
    if (a3)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v9 = 0;
  v4[3] = 0;
  if (!a2)
  {
    goto LABEL_6;
  }

LABEL_3:
  a2 = sub_2645D398C();
  v11 = v10;
  v4[4] = v10;
  if (a3)
  {
LABEL_4:
    a3 = sub_2645D398C();
    v13 = v12;
    goto LABEL_8;
  }

LABEL_7:
  v13 = 0;
LABEL_8:
  v4[5] = v13;
  v14 = swift_task_alloc();
  v4[6] = v14;
  *v14 = v4;
  v14[1] = sub_264579CF0;

  return sub_26457A460(a1, v9, a2, v11, a3, v13);
}

uint64_t sub_264579CF0()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 24);
  v5 = *(*v0 + 16);
  v8 = *v0;

  v5[2](v5);
  _Block_release(v5);
  v6 = *(v8 + 8);

  return v6();
}

id SMTapToRadarManagerInternal.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SMTapToRadarManagerInternal.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SMTapToRadarManagerInternal();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_264579FA4(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_264571C40;

  return v7();
}

uint64_t sub_26457A08C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_264571C40;

  return v8();
}

uint64_t sub_26457A174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72828, &qword_2645D9630);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  sub_26457B4FC(a3, v25 - v11);
  v13 = sub_2645D3ACC();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_2645627C0(v12, &qword_27FF72828, &qword_2645D9630);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_2645D3ABC();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_2645D3A8C();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_2645D39CC() + 32;
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

    sub_2645627C0(a3, &qword_27FF72828, &qword_2645D9630);

    return v23;
  }

LABEL_8:
  sub_2645627C0(a3, &qword_27FF72828, &qword_2645D9630);
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

uint64_t sub_26457A460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[6] = a3;
  v6[7] = a4;
  v6[4] = a1;
  v6[5] = a2;
  v7 = sub_2645D351C();
  v6[10] = v7;
  v8 = *(v7 - 8);
  v6[11] = v8;
  v9 = *(v8 + 64) + 15;
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26457A534, 0, 0);
}

uint64_t sub_26457A534()
{
  super_class = v0[6].super_class;
  receiver = v0[5].receiver;
  v19 = v0[6].receiver;
  v16 = v0[4].receiver;
  v17 = v0[5].super_class;
  v13 = v0[3].super_class;
  v14 = v0[3].receiver;
  v15 = v0[4].super_class;
  v2 = v0[2].receiver;
  v3 = v0[2].super_class;
  sub_2645D350C();
  sub_2645D34FC();
  MEMORY[0x26673C330](7824750, 0xE300000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72F38, &qword_2645DA640);
  v4 = *(sub_2645D34BC() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  *(swift_allocObject() + 16) = xmmword_2645D9CE0;
  sub_2645D34AC();
  sub_2645D34AC();
  sub_2645D34AC();
  sub_2645D34AC();
  sub_2645D34AC();
  sub_2645D34AC();

  sub_2645D34AC();

  sub_2645D34AC();

  sub_2645D34AC();

  sub_2645D34CC();
  v7 = *(v17 + 2);
  v7(v19, super_class, receiver);
  v8 = type metadata accessor for SMTapToRadarManagerInternal();
  v9 = objc_allocWithZone(v8);
  v7(&v9[OBJC_IVAR____TtC13SafetyMonitor27SMTapToRadarManagerInternal_urlComponents], v19, receiver);
  v0[1].receiver = v9;
  v0[1].super_class = v8;
  v0[7].receiver = objc_msgSendSuper2(v0 + 1, sel_init);
  v10 = *(v17 + 1);
  v0[7].super_class = v10;
  v0[8].receiver = ((v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
  (v10)(v19, receiver);
  v11 = swift_task_alloc();
  v0[8].super_class = v11;
  *v11 = v0;
  *(v11 + 1) = sub_26457A9EC;

  return sub_264578700();
}

uint64_t sub_26457A9EC()
{
  v1 = *(*v0 + 136);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_26457AAE8, 0, 0);
}

uint64_t sub_26457AAE8()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 104);
  v4 = *(v0 + 96);
  v5 = *(v0 + 80);

  v2(v3, v5);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_26457AB80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return MEMORY[0x2822009F8](sub_26457ABA4, 0, 0);
}

uint64_t sub_26457ABA4()
{
  v1 = v0[5];
  sub_2645D3B7C();
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  MEMORY[0x26673C830](0xD000000000000017, 0x80000002645E0260);
  v0[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72F40, &qword_2645DA648);
  sub_2645D3BBC();
  v2 = v0[2];
  v3 = v0[3];
  v0[8] = v3;
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_26457ACEC;
  v5 = v0[6];
  v6 = v0[7];

  return sub_26457A460(v2, v3, 0, 0, v5, v6);
}

uint64_t sub_26457ACEC()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t type metadata accessor for SMTapToRadarManagerInternal()
{
  result = qword_27FF72F28;
  if (!qword_27FF72F28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26457AE50()
{
  result = sub_2645D351C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of static SMTapToRadarManagerInternal.fileRadar(withError:conversationIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 104);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_264571C40;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of static SMTapToRadarManagerInternal.fileRadar(withValidity:conversationIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 112);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2645625D0;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of static SMTapToRadarManagerInternal.fileRadar(withTitle:description:conversationIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(v6 + 120);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_264571C40;

  return v18(a1, a2, a3, a4, a5, a6);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26457B2A8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_264571C40;

  return sub_264579BA4(v2, v3, v4, v5);
}

uint64_t sub_26457B370()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_264571C40;

  return sub_264579FA4(v2, v3, v5);
}

uint64_t sub_26457B430(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_264571C40;

  return sub_26457A08C(a1, v4, v5, v7);
}

uint64_t sub_26457B4FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72828, &qword_2645D9630);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26457B56C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_264571C40;

  return sub_264571584(a1, v5);
}

uint64_t sub_26457B624(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2645625D0;

  return sub_264571584(a1, v5);
}

uint64_t sub_26457B6DC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_264571C40;

  return sub_2645792C8(v2, v3, v5);
}

uint64_t objectdestroy_13Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2645818E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose((v39 - 192), 8);
  _Unwind_Resume(a1);
}

uint64_t IMSharedUtilitiesLibraryCore()
{
  v2 = *MEMORY[0x277D85DE8];
  if (!IMSharedUtilitiesLibraryCore_frameworkLibrary)
  {
    IMSharedUtilitiesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = IMSharedUtilitiesLibraryCore_frameworkLibrary;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t getIMChatCanonicalIDSIDsForAddressSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getIMChatCanonicalIDSIDsForAddressSymbolLoc_ptr;
  v6 = getIMChatCanonicalIDSIDsForAddressSymbolLoc_ptr;
  if (!getIMChatCanonicalIDSIDsForAddressSymbolLoc_ptr)
  {
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = __getIMChatCanonicalIDSIDsForAddressSymbolLoc_block_invoke;
    v2[3] = &unk_279B64B90;
    v2[4] = &v3;
    __getIMChatCanonicalIDSIDsForAddressSymbolLoc_block_invoke(v2);
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}