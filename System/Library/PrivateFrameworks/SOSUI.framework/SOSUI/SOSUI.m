id _PositionAnimation(void *a1, double a2, float a3)
{
  v5 = MEMORY[0x277CD9EC8];
  v6 = a1;
  v7 = [v5 animation];
  [v7 setValues:v6];

  [v7 setKeyPath:@"position"];
  [v7 setCalculationMode:*MEMORY[0x277CDA068]];
  [v7 setDuration:a2];
  *&v8 = a3;
  [v7 setRepeatCount:v8];

  return v7;
}

uint64_t sub_264384558()
{
  v0 = sub_2643B04B8();
  __swift_allocate_value_buffer(v0, qword_27FF6B1A0);
  __swift_project_value_buffer(v0, qword_27FF6B1A0);
  return sub_2643B04A8();
}

uint64_t sub_2643845D8()
{
  if (qword_27FF67280 != -1)
  {
    swift_once();
  }

  v0 = sub_2643B04B8();

  return __swift_project_value_buffer(v0, qword_27FF6B1A0);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
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

uint64_t sub_2643846F8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v30 = a3;
  v7 = sub_2643B04B8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20]();
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_opt_self() standardUserDefaults];
  v13 = sub_2643B04E8();
  v31 = [v12 BOOLForKey_];

  v14 = sub_2643845D8();
  (*(v8 + 16))(v11, v14, v7);

  v15 = sub_2643B0498();
  v16 = sub_2643B0608();

  if (os_log_type_enabled(v15, v16))
  {
    v29 = a1;
    v17 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v32 = v28;
    *v17 = 136315906;
    *(v17 + 4) = sub_26439AA1C(v30, a4, &v32);
    *(v17 + 12) = 2080;
    v18 = [objc_opt_self() mainBundle];
    v19 = [v18 bundleIdentifier];

    if (v19)
    {
      v20 = sub_2643B04F8();
      v22 = v21;
    }

    else
    {
      v22 = 0x80000002643B3DF0;
      v20 = 0xD000000000000011;
    }

    v24 = sub_26439AA1C(v20, v22, &v32);

    *(v17 + 14) = v24;
    *(v17 + 22) = 2080;
    *(v17 + 24) = sub_26439AA1C(v29, a2, &v32);
    *(v17 + 32) = 1024;
    v23 = v31;
    *(v17 + 34) = v31;
    _os_log_impl(&dword_264382000, v15, v16, "using %s default from %s.%s: %{BOOL}d", v17, 0x26u);
    v25 = v28;
    swift_arrayDestroy();
    MEMORY[0x266736CC0](v25, -1, -1);
    MEMORY[0x266736CC0](v17, -1, -1);

    (*(v8 + 8))(v11, v7);
  }

  else
  {

    (*(v8 + 8))(v11, v7);
    return v31;
  }

  return v23;
}

uint64_t sub_264384A30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66CD0, &qword_2643B1920);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - v8;
  sub_2643B0478();
  v10 = sub_2643B0488();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    return (*(v11 + 32))(a3, v9, v10);
  }

  sub_26439E21C(v9, &qword_27FF66CD0, &qword_2643B1920);
  v16 = 0;
  v17 = 0xE000000000000000;
  sub_2643B06A8();

  v16 = 0xD000000000000019;
  v17 = 0x80000002643B3E10;
  MEMORY[0x266736370](a1, a2);
  v12 = v16;
  v13 = v17;
  sub_26439B00C();
  swift_allocError();
  *v14 = v12;
  v14[1] = v13;
  return swift_willThrow();
}

id sub_264384C30()
{
  v1 = OBJC_IVAR____TtC5SOSUI15SOSUIWebRTCView_state;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_264384CE4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC5SOSUI15SOSUIWebRTCView_state;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_264384D3C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xA0))();
  *a2 = result;
  return result;
}

void sub_264384D98(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC5SOSUI15SOSUIWebRTCView_state;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *sub_264384E44()
{
  v1 = OBJC_IVAR____TtC5SOSUI15SOSUIWebRTCView_webView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_264384EF0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC5SOSUI15SOSUIWebRTCView_webView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_264384F48@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xB8))();
  *a2 = result;
  return result;
}

void sub_264384FA4(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC5SOSUI15SOSUIWebRTCView_webView;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

uint64_t sub_264385104()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t sub_264385164@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xD0))();
  *a2 = result;
  return result;
}

uint64_t sub_2643851C0(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0xD8);
  v4 = swift_unknownObjectRetain();
  return v3(v4);
}

void (*sub_264385224(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC5SOSUI15SOSUIWebRTCView_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_2643852BC;
}

void sub_2643852BC(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32) + *(*a1 + 40);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v6 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

id SOSUIWebRTCView.init(frame:delegate:)(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC5SOSUI15SOSUIWebRTCView_webView] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC5SOSUI15SOSUIWebRTCView_rtcRPC] = 0;
  v9 = &v4[OBJC_IVAR____TtC5SOSUI15SOSUIWebRTCView_enableTrickleWhipKey];
  *v9 = 0xD000000000000016;
  *(v9 + 1) = 0x80000002643B3E30;
  v10 = &v4[OBJC_IVAR____TtC5SOSUI15SOSUIWebRTCView_webViewIsInspectableKey];
  *v10 = 0xD00000000000001FLL;
  *(v10 + 1) = 0x80000002643B3E50;
  v11 = &v4[OBJC_IVAR____TtC5SOSUI15SOSUIWebRTCView_enableDebugDataChannel];
  *v11 = 0xD00000000000001BLL;
  *(v11 + 1) = 0x80000002643B3E70;
  v12 = &v4[OBJC_IVAR____TtC5SOSUI15SOSUIWebRTCView_originUrlString];
  *v12 = 0xD000000000000017;
  *(v12 + 1) = 0x80000002643B3E90;
  v13 = &v4[OBJC_IVAR____TtC5SOSUI15SOSUIWebRTCView_blankUrlString];
  *v13 = 0x6C623A74756F6261;
  *(v13 + 1) = 0xEB000000006B6E61;
  v14 = &v4[OBJC_IVAR____TtC5SOSUI15SOSUIWebRTCView_onNavigationFinished];
  *v14 = 0;
  *(v14 + 1) = 0;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  type metadata accessor for SOSUIWebRTCState();
  *&v4[OBJC_IVAR____TtC5SOSUI15SOSUIWebRTCView_state] = SOSUIWebRTCState.__allocating_init()();
  v17.receiver = v4;
  v17.super_class = type metadata accessor for SOSUIWebRTCView();
  v15 = objc_msgSendSuper2(&v17, sel_initWithFrame_, a1, a2, a3, a4);
  sub_264385A84();

  swift_unknownObjectRelease();
  return v15;
}

id SOSUIWebRTCView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SOSUIWebRTCView.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC5SOSUI15SOSUIWebRTCView_webView] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC5SOSUI15SOSUIWebRTCView_rtcRPC] = 0;
  v3 = &v1[OBJC_IVAR____TtC5SOSUI15SOSUIWebRTCView_enableTrickleWhipKey];
  *v3 = 0xD000000000000016;
  *(v3 + 1) = 0x80000002643B3E30;
  v4 = &v1[OBJC_IVAR____TtC5SOSUI15SOSUIWebRTCView_webViewIsInspectableKey];
  *v4 = 0xD00000000000001FLL;
  *(v4 + 1) = 0x80000002643B3E50;
  v5 = &v1[OBJC_IVAR____TtC5SOSUI15SOSUIWebRTCView_enableDebugDataChannel];
  *v5 = 0xD00000000000001BLL;
  *(v5 + 1) = 0x80000002643B3E70;
  v6 = &v1[OBJC_IVAR____TtC5SOSUI15SOSUIWebRTCView_originUrlString];
  *v6 = 0xD000000000000017;
  *(v6 + 1) = 0x80000002643B3E90;
  v7 = &v1[OBJC_IVAR____TtC5SOSUI15SOSUIWebRTCView_blankUrlString];
  *v7 = 0x6C623A74756F6261;
  *(v7 + 1) = 0xEB000000006B6E61;
  v8 = &v1[OBJC_IVAR____TtC5SOSUI15SOSUIWebRTCView_onNavigationFinished];
  *v8 = 0;
  *(v8 + 1) = 0;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  type metadata accessor for SOSUIWebRTCState();
  *&v1[OBJC_IVAR____TtC5SOSUI15SOSUIWebRTCView_state] = SOSUIWebRTCState.__allocating_init()();
  v13.receiver = v1;
  v13.super_class = type metadata accessor for SOSUIWebRTCView();
  v9 = objc_msgSendSuper2(&v13, sel_initWithCoder_, a1);
  v10 = v9;
  if (v9)
  {
    v11 = v9;
    sub_264385A84();
  }

  return v10;
}

id SOSUIWebRTCView.__deallocating_deinit()
{
  v1 = v0;
  v2 = sub_2643B04B8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2643845D8();
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_2643B0498();
  v9 = sub_2643B0618();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_264382000, v8, v9, "SOSUIWebRTCView.deinit", v10, 2u);
    MEMORY[0x266736CC0](v10, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v11 = OBJC_IVAR____TtC5SOSUI15SOSUIWebRTCView_webView;
  swift_beginAccess();
  result = *&v1[v11];
  if (result)
  {
    v13 = [result configuration];
    v14 = [v13 userContentController];

    [v14 removeAllScriptMessageHandlers];
    v15 = type metadata accessor for SOSUIWebRTCView();
    v17.receiver = v1;
    v17.super_class = v15;
    return objc_msgSendSuper2(&v17, sel_dealloc);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_264385A84()
{
  v1 = v0;
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v4 = &v29 - v3;
  v5 = sub_2643B04B8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = (MEMORY[0x28223BE20])();
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v29 - v11;
  v13 = sub_264387E60();
  v14 = OBJC_IVAR____TtC5SOSUI15SOSUIWebRTCView_webView;
  swift_beginAccess();
  v15 = *&v1[v14];
  *&v1[v14] = v13;

  v16 = [objc_opt_self() authorizationStatusForMediaType_];
  v17 = sub_2643845D8();
  v18 = *(v6 + 16);
  if (v16 == 3)
  {
    v18(v12, v17, v5);
    v19 = sub_2643B0498();
    v20 = sub_2643B0648();
    if (!os_log_type_enabled(v19, v20))
    {
      v10 = v12;
      goto LABEL_8;
    }

    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_264382000, v19, v20, "SOSUIWebRTCView: has camera permission", v21, 2u);
    v10 = v12;
    goto LABEL_6;
  }

  v18(v10, v17, v5);
  v19 = sub_2643B0498();
  v22 = sub_2643B0648();
  if (os_log_type_enabled(v19, v22))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_264382000, v19, v22, "SOSUIWebRTCView: denied camera permission", v21, 2u);
LABEL_6:
    MEMORY[0x266736CC0](v21, -1, -1);
  }

LABEL_8:

  (*(v6 + 8))(v10, v5);
  v23 = sub_2643B05F8();
  (*(*(v23 - 8) + 56))(v4, 1, 1, v23);
  sub_2643B05D8();
  v24 = v1;
  v25 = sub_2643B05C8();
  v26 = swift_allocObject();
  v27 = MEMORY[0x277D85700];
  v26[2] = v25;
  v26[3] = v27;
  v26[4] = v24;
  sub_264385FE8(0, 0, v4, &unk_2643B2000, v26);
}

uint64_t sub_264385DE0()
{
  v0[2] = sub_2643B05D8();
  v0[3] = sub_2643B05C8();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_264385E8C;

  return sub_264386294();
}

uint64_t sub_264385E8C()
{
  v2 = v0;
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v10 = *v1;
  *(*v1 + 40) = v2;

  v7 = sub_2643B05A8();
  if (v2)
  {
    v8 = sub_2643A0178;
  }

  else
  {
    v8 = sub_2643A0184;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_264385FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = v23 - v9;
  sub_26439FC68(a3, v23 - v9, &qword_27FF66D30, &qword_2643B1928);
  v11 = sub_2643B05F8();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_26439E21C(v10, &qword_27FF66D30, &qword_2643B1928);
  }

  else
  {
    sub_2643B05E8();
    (*(v12 + 8))(v10, v11);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2643B05A8();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2643B0558() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_26439E21C(a3, &qword_27FF66D30, &qword_2643B1928);

      return v21;
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

  sub_26439E21C(a3, &qword_27FF66D30, &qword_2643B1928);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_264386294()
{
  v1[6] = v0;
  sub_2643B05D8();
  v1[7] = sub_2643B05C8();
  v3 = sub_2643B05A8();
  v1[8] = v3;
  v1[9] = v2;

  return MEMORY[0x2822009F8](sub_26438632C, v3, v2);
}

uint64_t sub_26438632C()
{
  v1 = *(v0 + 48);
  sub_264388340();
  v2 = *(v0 + 48);
  result = (*((*MEMORY[0x277D85000] & *v2) + 0xB8))();
  if (result)
  {
    v4 = result;
    v5 = *(v0 + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66E20, &qword_2643B1C00);
    v6 = v5;
    v7 = swift_task_alloc();
    *(v0 + 80) = v7;
    *v7 = v0;
    v7[1] = sub_26438649C;

    return sub_2643AC3D0(v4, v2, &type metadata for SOSUIWebRTCMessage);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26438649C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;
  *(v4 + 88) = a1;
  *(v4 + 96) = v1;

  v7 = *(v3 + 72);
  v8 = *(v3 + 64);
  if (v1)
  {
    v9 = sub_264386C2C;
  }

  else
  {
    v9 = sub_2643865E0;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_2643865E0()
{
  v1 = v0[11];
  v2 = v0[6];
  v3 = *(v2 + OBJC_IVAR____TtC5SOSUI15SOSUIWebRTCView_rtcRPC);
  *(v2 + OBJC_IVAR____TtC5SOSUI15SOSUIWebRTCView_rtcRPC) = v1;
  v4 = v1;

  type metadata accessor for SOSUIWebRTCView();
  sub_26439DF88();
  v5 = sub_2643AD934();
  v0[13] = v5;
  v6 = sub_2643AD940();
  v0[14] = v6;
  v7 = *((*MEMORY[0x277D85000] & *v4) + 0xF8);
  v12 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[15] = v9;
  *v9 = v0;
  v9[1] = sub_2643867C0;
  v10 = v0[11];

  return (v12)(v0 + 2, 0x74617453636E7973, 0xE900000000000065, v5, v6);
}

uint64_t sub_2643867C0()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v10 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = v2[8];
    v5 = v2[9];
    v6 = sub_264386C90;
  }

  else
  {
    v8 = v2[13];
    v7 = v2[14];
    sub_26439E21C((v2 + 2), &qword_27FF66D38, &unk_2643B3C80);

    v4 = v2[8];
    v5 = v2[9];
    v6 = sub_264386908;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_264386908()
{
  v1 = *(v0 + 48);
  v2 = sub_2643846F8(*(v1 + OBJC_IVAR____TtC5SOSUI15SOSUIWebRTCView_enableDebugDataChannel), *(v1 + OBJC_IVAR____TtC5SOSUI15SOSUIWebRTCView_enableDebugDataChannel + 8), 0xD000000000000012, 0x80000002643B4330);
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x250);
  v8 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  *(v0 + 136) = v5;
  *v5 = v0;
  v5[1] = sub_264386A84;
  v6 = *(v0 + 48);

  return v8(v2 & 1);
}

uint64_t sub_264386A84()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 144) = v0;

  v5 = *(v2 + 72);
  v6 = *(v2 + 64);
  if (v0)
  {
    v7 = sub_264386D1C;
  }

  else
  {
    v7 = sub_264386BC0;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_264386BC0()
{
  v1 = v0[11];
  v2 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t sub_264386C2C()
{
  v1 = v0[7];

  v2 = v0[12];
  v3 = v0[1];

  return v3();
}

uint64_t sub_264386C90()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 56);

  v4 = *(v0 + 128);
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_264386D1C()
{
  v1 = v0[11];
  v2 = v0[7];

  v3 = v0[18];
  v4 = v0[1];

  return v4();
}

void *sub_264386D88()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v58 = &v51 - v4;
  v5 = sub_2643B03C8();
  v54 = *(v5 - 8);
  v55 = v5;
  v6 = *(v54 + 64);
  MEMORY[0x28223BE20](v5);
  v53 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2643B0488();
  v56 = *(v8 - 8);
  v57 = v8;
  v9 = *(v56 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v52 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v62 = &v51 - v12;
  v13 = sub_2643B04B8();
  v14 = *(v13 - 8);
  v15 = v14[8];
  v16 = MEMORY[0x28223BE20](v13);
  v63 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v51 - v18;
  v20 = sub_2643845D8();
  v60 = v14[2];
  v60(v19, v20, v13);
  v21 = sub_2643B0498();
  v22 = sub_2643B0608();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_264382000, v21, v22, "SOSUIWebRTCView.reset: resetting view", v23, 2u);
    MEMORY[0x266736CC0](v23, -1, -1);
  }

  v24 = v14[1];
  v24(v19, v13);
  type metadata accessor for SOSUIWebRTCState();
  v25 = SOSUIWebRTCState.__allocating_init()();
  v26 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v1) + 0x278))();

  v27 = *(v1 + OBJC_IVAR____TtC5SOSUI15SOSUIWebRTCView_rtcRPC);
  *(v1 + OBJC_IVAR____TtC5SOSUI15SOSUIWebRTCView_rtcRPC) = 0;

  v59 = *((*v26 & *v1) + 0xB8);
  result = v59();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v29 = result;
  v30 = [result configuration];

  v31 = [v30 userContentController];
  [v31 removeAllScriptMessageHandlers];

  v60(v63, v20, v13);
  v32 = sub_2643B0498();
  v33 = sub_2643B0608();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_264382000, v32, v33, "SOSUIWebRTCView.reset: unloading page", v34, 2u);
    MEMORY[0x266736CC0](v34, -1, -1);
  }

  v24(v63, v13);
  v36 = v61;
  v35 = v62;
  result = sub_264384A30(*(v1 + OBJC_IVAR____TtC5SOSUI15SOSUIWebRTCView_blankUrlString), *(v1 + OBJC_IVAR____TtC5SOSUI15SOSUIWebRTCView_blankUrlString + 8), v62);
  if (!v36)
  {
    result = (v59)(result);
    if (result)
    {
      v37 = result;
      v39 = v56;
      v38 = v57;
      (*(v56 + 16))(v52, v35, v57);
      v40 = v53;
      sub_2643B03A8();
      v41 = sub_2643B0388();
      (*(v54 + 8))(v40, v55);
      v42 = v35;
      v43 = [v37 loadRequest_];

      v44 = sub_2643B05F8();
      v45 = v58;
      (*(*(v44 - 8) + 56))(v58, 1, 1, v44);
      sub_2643B05D8();
      v46 = v1;
      v47 = v43;
      v48 = sub_2643B05C8();
      v49 = swift_allocObject();
      v50 = MEMORY[0x277D85700];
      v49[2] = v48;
      v49[3] = v50;
      v49[4] = v46;
      v49[5] = v43;
      sub_264385FE8(0, 0, v45, &unk_2643B1938, v49);

      return (*(v39 + 8))(v42, v38);
    }

LABEL_11:
    __break(1u);
  }

  return result;
}

uint64_t sub_2643873E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_2643B04B8();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();
  v5[9] = sub_2643B05D8();
  v5[10] = sub_2643B05C8();
  v10 = sub_2643B05A8();
  v5[11] = v10;
  v5[12] = v9;

  return MEMORY[0x2822009F8](sub_2643874F0, v10, v9);
}

uint64_t sub_2643874F0()
{
  v1 = v0[8];
  v2 = v0[4];
  v3 = v0[5];
  v4 = sub_2643845D8();
  v0[13] = v4;
  v5 = *(v3 + 16);
  v0[14] = v5;
  v0[15] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_2643B0498();
  v7 = sub_2643B0608();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_264382000, v6, v7, "SOSUIWebRTCView.reset: waiting for unload", v8, 2u);
    MEMORY[0x266736CC0](v8, -1, -1);
  }

  v9 = v0[8];
  v10 = v0[9];
  v11 = v0[4];
  v12 = v0[5];
  v14 = v0[2];
  v13 = v0[3];

  v15 = *(v12 + 8);
  v0[16] = v15;
  v15(v9, v11);
  v0[17] = sub_2643B05C8();
  v16 = swift_task_alloc();
  v0[18] = v16;
  *(v16 + 16) = v14;
  *(v16 + 24) = v13;
  v17 = *(MEMORY[0x277D859E0] + 4);
  v18 = swift_task_alloc();
  v0[19] = v18;
  *v18 = v0;
  v18[1] = sub_2643876C8;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_2643876C8()
{
  v1 = *v0;
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 144);
  v4 = *(*v0 + 136);
  v8 = *v0;

  v5 = *(v1 + 96);
  v6 = *(v1 + 88);

  return MEMORY[0x2822009F8](sub_264387828, v6, v5);
}

uint64_t sub_264387828()
{
  v1 = *(v0 + 120);
  (*(v0 + 112))(*(v0 + 56), *(v0 + 104), *(v0 + 32));
  v2 = sub_2643B0498();
  v3 = sub_2643B0608();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_264382000, v2, v3, "SOSUIWebRTCView.reset: sharedsetup", v4, 2u);
    MEMORY[0x266736CC0](v4, -1, -1);
  }

  v5 = *(v0 + 128);
  v6 = *(v0 + 56);
  v7 = *(v0 + 32);
  v8 = *(v0 + 40);

  v5(v6, v7);
  v9 = swift_task_alloc();
  *(v0 + 160) = v9;
  *v9 = v0;
  v9[1] = sub_264387970;
  v10 = *(v0 + 16);

  return sub_264386294();
}

uint64_t sub_264387970()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *v1;
  *(*v1 + 168) = v0;

  v5 = *(v2 + 96);
  v6 = *(v2 + 88);
  if (v0)
  {
    v7 = sub_264387BF8;
  }

  else
  {
    v7 = sub_264387AAC;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_264387AAC()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = v0[10];
  v5 = v0[6];
  v6 = v0[4];

  v2(v5, v3, v6);
  v7 = sub_2643B0498();
  v8 = sub_2643B0608();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_264382000, v7, v8, "SOSUIWebRTCView.reset: after sharedsetup", v9, 2u);
    MEMORY[0x266736CC0](v9, -1, -1);
  }

  v10 = v0[16];
  v12 = v0[7];
  v11 = v0[8];
  v14 = v0[5];
  v13 = v0[6];
  v15 = v0[4];

  v10(v13, v15);

  v16 = v0[1];

  return v16();
}

uint64_t sub_264387BF8()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[6];

  v5 = v0[1];
  v6 = v0[21];

  return v5();
}

uint64_t sub_264387C84(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF67260, &unk_2643B3DC0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  (*(v7 + 16))(&v18 - v9, a1, v6);
  v11 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  (*(v7 + 32))(v12 + v11, v10, v6);
  v13 = (a2 + OBJC_IVAR____TtC5SOSUI15SOSUIWebRTCView_onNavigationFinished);
  v14 = *(a2 + OBJC_IVAR____TtC5SOSUI15SOSUIWebRTCView_onNavigationFinished);
  v15 = v13[1];
  *v13 = sub_26439FDA8;
  v13[1] = v12;
  v16 = a3;
  return sub_26439B0AC(v14);
}

id sub_264387E60()
{
  v1 = v0;
  v2 = sub_2643B04B8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2643845D8();
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_2643B0498();
  v9 = sub_2643B0648();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_264382000, v8, v9, "SOSUIWebRTCView.createWebView: creating web view", v10, 2u);
    MEMORY[0x266736CC0](v10, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v11 = [objc_allocWithZone(MEMORY[0x277CE3858]) init];
  [v11 setAllowsInlineMediaPlayback_];
  [v11 setMediaTypesRequiringUserActionForPlayback_];
  v12 = [v11 preferences];
  [v12 _setEnumeratingAllNetworkInterfacesEnabled_];

  [v11 _setCanShowWhileLocked_];
  result = [v11 defaultWebpagePreferences];
  if (result)
  {
    v14 = result;
    [result setLockdownModeEnabled_];

    v15 = [objc_allocWithZone(MEMORY[0x277CE3850]) initWithFrame:v11 configuration:{0.0, 0.0, 0.0, 0.0}];
    [v15 setUIDelegate_];
    [v15 setNavigationDelegate_];
    [v15 setInspectable_];
    v16 = v15;
    [v1 addSubview_];
    [v16 setTranslatesAutoresizingMaskIntoConstraints_];
    v17 = [v16 leadingAnchor];
    v18 = [v1 leadingAnchor];
    v19 = [v17 constraintEqualToAnchor_];

    [v19 setActive_];
    v20 = [v16 trailingAnchor];

    v21 = [v1 trailingAnchor];
    v22 = [v20 constraintEqualToAnchor_];

    [v22 setActive_];
    v23 = [v16 topAnchor];

    v24 = [v1 topAnchor];
    v25 = [v23 constraintEqualToAnchor_];

    [v25 setActive_];
    v26 = [v16 bottomAnchor];

    v27 = [v1 bottomAnchor];
    v28 = [v26 constraintEqualToAnchor_];

    [v28 setActive_];
    v29 = [v16 scrollView];
    [v29 setContentInsetAdjustmentBehavior_];

    return v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_264388340()
{
  v0 = sub_2643B0538();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v30[0] = v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2643B0488();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v30 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = v30 - v12;
  type metadata accessor for SOSUIWebRTCView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass_];
  v16 = sub_2643B04E8();
  v17 = sub_2643B04E8();
  v18 = [v15 URLForResource:v16 withExtension:v17];

  if (v18)
  {
    sub_2643B0468();

    (*(v4 + 32))(v13, v11, v3);
    v19 = v4;
    v20 = v31;
    v21 = v30[1];
    v22 = sub_264384A30(*(v31 + OBJC_IVAR____TtC5SOSUI15SOSUIWebRTCView_originUrlString), *(v31 + OBJC_IVAR____TtC5SOSUI15SOSUIWebRTCView_originUrlString + 8), v8);
    if (v21)
    {
      (*(v19 + 8))(v13, v3);

      return;
    }

    v23 = (*((*MEMORY[0x277D85000] & *v20) + 0xB8))(v22);
    if (v23)
    {
      v24 = v23;
      sub_2643B0528();
      sub_2643B04D8();
      v25 = sub_2643B04E8();
      v31 = v13;
      v26 = v25;

      v27 = sub_2643B0458();
      v28 = [v24 loadHTMLString:v26 baseURL:v27];

      v29 = *(v19 + 8);
      v29(v8, v3);
      v29(v31, v3);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_26438872C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC5SOSUI15SOSUIWebRTCView_onNavigationFinished);
  if (v3)
  {
    if (a2)
    {
      v5 = *(v2 + OBJC_IVAR____TtC5SOSUI15SOSUIWebRTCView_onNavigationFinished + 8);

      v3(a2);

      sub_26439B0AC(v3);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_264388860(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, void))
{
  v6 = (*((*MEMORY[0x277D85000] & *v3) + 0xD0))();
  if (v6)
  {
    v7 = [v6 serverAuthenticationChallengeWithChallenge_];
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 1;
  }

  return a3(v7, 0);
}

uint64_t sub_2643889F0(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v5 = v4;
  v30[1] = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66CD0, &qword_2643B1920);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v30 - v10;
  v12 = sub_2643B03C8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2643B0488();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = [a2 request];
  sub_2643B0398();

  sub_2643B03B8();
  (*(v13 + 8))(v16, v12);
  if ((*(v18 + 48))(v11, 1, v17) == 1)
  {
    sub_26439E21C(v11, &qword_27FF66CD0, &qword_2643B1920);
    return a3(0);
  }

  (*(v18 + 32))(v21, v11, v17);
  if (sub_2643B0448() == *(v5 + OBJC_IVAR____TtC5SOSUI15SOSUIWebRTCView_originUrlString) && v24 == *(v5 + OBJC_IVAR____TtC5SOSUI15SOSUIWebRTCView_originUrlString + 8))
  {
    goto LABEL_10;
  }

  v26 = sub_2643B0888();

  if ((v26 & 1) == 0)
  {
    if (sub_2643B0448() == *(v5 + OBJC_IVAR____TtC5SOSUI15SOSUIWebRTCView_blankUrlString) && v27 == *(v5 + OBJC_IVAR____TtC5SOSUI15SOSUIWebRTCView_blankUrlString + 8))
    {
LABEL_10:

      goto LABEL_11;
    }

    v29 = sub_2643B0888();

    if ((v29 & 1) == 0)
    {
      v28 = 0;
      goto LABEL_12;
    }
  }

LABEL_11:
  v28 = 1;
LABEL_12:
  a3(v28);
  return (*(v18 + 8))(v21, v17);
}

void sub_264388D9C()
{
  v1 = v0;
  v2 = sub_2643B04B8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 window];
  if (v7)
  {
  }

  else
  {
    v8 = sub_2643845D8();
    (*(v3 + 16))(v6, v8, v2);
    v9 = sub_2643B0498();
    v10 = sub_2643B0628();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_264382000, v9, v10, "SOSUIWebRTCView.verifyAttachment: WKWebView must be attached to a window to function properly", v11, 2u);
      MEMORY[0x266736CC0](v11, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_264388F34()
{
  v1[6] = v0;
  v2 = sub_2643B04B8();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = sub_2643B05D8();
  v1[11] = sub_2643B05C8();
  v6 = sub_2643B05A8();
  v1[12] = v6;
  v1[13] = v5;

  return MEMORY[0x2822009F8](sub_26438902C, v6, v5);
}

uint64_t sub_26438902C()
{
  v1 = v0[10];
  v0[14] = sub_26439B2CC(MEMORY[0x277D84F90]);
  v0[15] = sub_2643B05C8();
  v3 = sub_2643B05A8();
  v0[16] = v3;
  v0[17] = v2;

  return MEMORY[0x2822009F8](sub_2643890C8, v3, v2);
}

uint64_t sub_2643890C8()
{
  v26 = v0;
  v1 = *(*(v0 + 48) + OBJC_IVAR____TtC5SOSUI15SOSUIWebRTCView_rtcRPC);
  *(v0 + 144) = v1;
  if (v1)
  {
    v2 = *((*MEMORY[0x277D85000] & *v1) + 0xF8);
    v1;
    v24 = (v2 + *v2);
    v3 = v2[1];
    v4 = swift_task_alloc();
    *(v0 + 152) = v4;
    *v4 = v0;
    v4[1] = sub_2643893CC;
    v5 = *(v0 + 112);
    v6 = MEMORY[0x277D84F90];

    return v24(v0 + 16, 0x6469566573756170, 0xEA00000000006F65, v6, v5);
  }

  else
  {
    v8 = *(v0 + 120);
    v10 = *(v0 + 64);
    v9 = *(v0 + 72);
    v11 = *(v0 + 56);

    v12 = sub_2643845D8();
    (*(v10 + 16))(v9, v12, v11);
    v13 = sub_2643B0498();
    v14 = sub_2643B0628();
    v15 = os_log_type_enabled(v13, v14);
    v17 = *(v0 + 64);
    v16 = *(v0 + 72);
    v18 = *(v0 + 56);
    if (v15)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v25 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_26439AA1C(0x6469566573756170, 0xEA00000000006F65, &v25);
      _os_log_impl(&dword_264382000, v13, v14, "SOSUIWebRTCView: RPC call %s made before RPC has been initialized", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x266736CC0](v20, -1, -1);
      MEMORY[0x266736CC0](v19, -1, -1);
    }

    (*(v17 + 8))(v16, v18);
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    v21 = *(v0 + 112);
    sub_26439E21C(v0 + 16, &qword_27FF66D38, &unk_2643B3C80);

    v22 = *(v0 + 96);
    v23 = *(v0 + 104);

    return MEMORY[0x2822009F8](sub_2643A0008, v22, v23);
  }
}

uint64_t sub_2643893CC()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *v1;
  *(*v1 + 160) = v0;

  v5 = *(v2 + 136);
  v6 = *(v2 + 128);
  if (v0)
  {
    v7 = sub_264389598;
  }

  else
  {
    v7 = sub_264389508;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_264389508()
{
  v1 = v0[18];
  v2 = v0[15];

  v3 = v0[14];
  sub_26439E21C((v0 + 2), &qword_27FF66D38, &unk_2643B3C80);

  v4 = v0[12];
  v5 = v0[13];

  return MEMORY[0x2822009F8](sub_2643A0008, v4, v5);
}

uint64_t sub_264389598()
{
  v1 = v0[18];
  v2 = v0[15];

  v3 = v0[12];
  v4 = v0[13];

  return MEMORY[0x2822009F8](sub_2643A017C, v3, v4);
}

uint64_t sub_264389778(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_2643B05D8();
  v2[4] = sub_2643B05C8();
  v4 = sub_2643B05A8();

  return MEMORY[0x2822009F8](sub_264389810, v4, v3);
}

uint64_t sub_264389810()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  v0[5] = _Block_copy(v3);
  v4 = v2;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_2643A016C;
  v6 = v0[3];

  return sub_264388F34();
}

uint64_t sub_2643898C0(uint64_t a1, uint64_t a2)
{
  v3[17] = a2;
  v3[18] = v2;
  v3[16] = a1;
  v4 = sub_2643B04B8();
  v3[19] = v4;
  v5 = *(v4 - 8);
  v3[20] = v5;
  v6 = *(v5 + 64) + 15;
  v3[21] = swift_task_alloc();
  v3[22] = sub_2643B05D8();
  v3[23] = sub_2643B05C8();
  v8 = sub_2643B05A8();
  v3[24] = v8;
  v3[25] = v7;

  return MEMORY[0x2822009F8](sub_2643899BC, v8, v7);
}

uint64_t sub_2643899BC()
{
  v1 = v0[22];
  v3 = v0[16];
  v2 = v0[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D40, &qword_2643B1950);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2643B1900;
  strcpy((inited + 32), "pausedString");
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 48) = v3;
  *(inited + 56) = v2;

  v0[26] = sub_26439B2CC(inited);
  swift_setDeallocating();
  sub_26439E21C(inited + 32, &qword_27FF66D48, &qword_2643B1958);
  v0[27] = sub_2643B05C8();
  v6 = sub_2643B05A8();
  v0[28] = v6;
  v0[29] = v5;

  return MEMORY[0x2822009F8](sub_264389AF4, v6, v5);
}

uint64_t sub_264389AF4()
{
  v25 = v0;
  v1 = *(*(v0 + 144) + OBJC_IVAR____TtC5SOSUI15SOSUIWebRTCView_rtcRPC);
  *(v0 + 240) = v1;
  if (v1)
  {
    v2 = *((*MEMORY[0x277D85000] & *v1) + 0xF8);
    v1;
    v23 = (v2 + *v2);
    v3 = v2[1];
    v4 = swift_task_alloc();
    *(v0 + 248) = v4;
    *v4 = v0;
    v4[1] = sub_264389DF8;
    v5 = *(v0 + 208);

    return v23(v0 + 96, 0x6469566573756170, 0xEA00000000006F65, &unk_2875D3508, v5);
  }

  else
  {
    v7 = *(v0 + 216);
    v9 = *(v0 + 160);
    v8 = *(v0 + 168);
    v10 = *(v0 + 152);

    v11 = sub_2643845D8();
    (*(v9 + 16))(v8, v11, v10);
    v12 = sub_2643B0498();
    v13 = sub_2643B0628();
    v14 = os_log_type_enabled(v12, v13);
    v16 = *(v0 + 160);
    v15 = *(v0 + 168);
    v17 = *(v0 + 152);
    if (v14)
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_26439AA1C(0x6469566573756170, 0xEA00000000006F65, &v24);
      _os_log_impl(&dword_264382000, v12, v13, "SOSUIWebRTCView: RPC call %s made before RPC has been initialized", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x266736CC0](v19, -1, -1);
      MEMORY[0x266736CC0](v18, -1, -1);
    }

    (*(v16 + 8))(v15, v17);
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    v20 = *(v0 + 208);
    sub_26439E21C(v0 + 96, &qword_27FF66D38, &unk_2643B3C80);

    v21 = *(v0 + 192);
    v22 = *(v0 + 200);

    return MEMORY[0x2822009F8](sub_26438A0AC, v21, v22);
  }
}

uint64_t sub_264389DF8()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v4 = *v1;
  *(*v1 + 256) = v0;

  v5 = *(v2 + 232);
  v6 = *(v2 + 224);
  if (v0)
  {
    v7 = sub_264389FC4;
  }

  else
  {
    v7 = sub_264389F34;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_264389F34()
{
  v1 = v0[30];
  v2 = v0[27];

  v3 = v0[26];
  sub_26439E21C((v0 + 12), &qword_27FF66D38, &unk_2643B3C80);

  v4 = v0[24];
  v5 = v0[25];

  return MEMORY[0x2822009F8](sub_26438A0AC, v4, v5);
}

uint64_t sub_264389FC4()
{
  v1 = v0[30];
  v2 = v0[27];

  v3 = v0[24];
  v4 = v0[25];

  return MEMORY[0x2822009F8](sub_26438A030, v3, v4);
}

uint64_t sub_26438A030()
{
  v1 = v0[26];
  v2 = v0[23];
  v3 = v0[21];

  v4 = v0[1];
  v5 = v0[32];

  return v4();
}

uint64_t sub_26438A0AC()
{
  v1 = v0[23];
  v2 = v0[21];

  v3 = v0[1];

  return v3();
}

uint64_t sub_26438A2A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_2643B05D8();
  v3[5] = sub_2643B05C8();
  v5 = sub_2643B05A8();

  return MEMORY[0x2822009F8](sub_26438A340, v5, v4);
}

uint64_t sub_26438A340()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];

  v0[6] = _Block_copy(v4);
  v5 = sub_2643B04F8();
  v7 = v6;
  v0[7] = v6;
  v8 = v2;
  v9 = swift_task_alloc();
  v0[8] = v9;
  *v9 = v0;
  v9[1] = sub_26438A41C;
  v10 = v0[4];

  return sub_2643898C0(v5, v7);
}

uint64_t sub_26438A41C()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 64);
  v6 = *(*v1 + 56);
  v7 = *(*v1 + 32);
  v8 = *v1;

  v9 = *(v3 + 48);
  if (v2)
  {
    v10 = sub_2643B0438();

    (*(v9 + 16))(v9, v10);
  }

  else
  {
    (*(v9 + 16))(*(v3 + 48), 0);
  }

  _Block_release(*(v4 + 48));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_26438A5BC()
{
  v1[6] = v0;
  v2 = sub_2643B04B8();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = sub_2643B05D8();
  v1[11] = sub_2643B05C8();
  v6 = sub_2643B05A8();
  v1[12] = v6;
  v1[13] = v5;

  return MEMORY[0x2822009F8](sub_26438A6B4, v6, v5);
}

uint64_t sub_26438A6B4()
{
  v1 = v0[10];
  v2 = v0[6];
  sub_264388D9C();
  v0[14] = sub_26439B2CC(MEMORY[0x277D84F90]);
  v0[15] = sub_2643B05C8();
  v4 = sub_2643B05A8();
  v0[16] = v4;
  v0[17] = v3;

  return MEMORY[0x2822009F8](sub_26438A758, v4, v3);
}

uint64_t sub_26438A758()
{
  v26 = v0;
  v1 = *(*(v0 + 48) + OBJC_IVAR____TtC5SOSUI15SOSUIWebRTCView_rtcRPC);
  *(v0 + 144) = v1;
  if (v1)
  {
    v2 = *((*MEMORY[0x277D85000] & *v1) + 0xF8);
    v1;
    v24 = (v2 + *v2);
    v3 = v2[1];
    v4 = swift_task_alloc();
    *(v0 + 152) = v4;
    *v4 = v0;
    v4[1] = sub_2643893CC;
    v5 = *(v0 + 112);
    v6 = MEMORY[0x277D84F90];

    return v24(v0 + 16, 0x5665737561706E75, 0xEC0000006F656469, v6, v5);
  }

  else
  {
    v8 = *(v0 + 120);
    v10 = *(v0 + 64);
    v9 = *(v0 + 72);
    v11 = *(v0 + 56);

    v12 = sub_2643845D8();
    (*(v10 + 16))(v9, v12, v11);
    v13 = sub_2643B0498();
    v14 = sub_2643B0628();
    v15 = os_log_type_enabled(v13, v14);
    v17 = *(v0 + 64);
    v16 = *(v0 + 72);
    v18 = *(v0 + 56);
    if (v15)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v25 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_26439AA1C(0x5665737561706E75, 0xEC0000006F656469, &v25);
      _os_log_impl(&dword_264382000, v13, v14, "SOSUIWebRTCView: RPC call %s made before RPC has been initialized", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x266736CC0](v20, -1, -1);
      MEMORY[0x266736CC0](v19, -1, -1);
    }

    (*(v17 + 8))(v16, v18);
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    v21 = *(v0 + 112);
    sub_26439E21C(v0 + 16, &qword_27FF66D38, &unk_2643B3C80);

    v22 = *(v0 + 96);
    v23 = *(v0 + 104);

    return MEMORY[0x2822009F8](sub_2643A0008, v22, v23);
  }
}

uint64_t sub_26438ABD8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_2643B05D8();
  v2[4] = sub_2643B05C8();
  v4 = sub_2643B05A8();

  return MEMORY[0x2822009F8](sub_26438AC70, v4, v3);
}

uint64_t sub_26438AC70()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  v0[5] = _Block_copy(v3);
  v4 = v2;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_2643A016C;
  v6 = v0[3];

  return sub_26438A5BC();
}

uint64_t sub_26438AD20()
{
  v1[6] = v0;
  v2 = sub_2643B04B8();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = sub_2643B05D8();
  v1[11] = sub_2643B05C8();
  v6 = sub_2643B05A8();
  v1[12] = v6;
  v1[13] = v5;

  return MEMORY[0x2822009F8](sub_26438AE18, v6, v5);
}

uint64_t sub_26438AE18()
{
  v1 = v0[10];
  v2 = v0[6];
  sub_264388D9C();
  v0[14] = sub_26439B2CC(MEMORY[0x277D84F90]);
  v0[15] = sub_2643B05C8();
  v4 = sub_2643B05A8();
  v0[16] = v4;
  v0[17] = v3;

  return MEMORY[0x2822009F8](sub_26438AEBC, v4, v3);
}

uint64_t sub_26438AEBC()
{
  v26 = v0;
  v1 = *(*(v0 + 48) + OBJC_IVAR____TtC5SOSUI15SOSUIWebRTCView_rtcRPC);
  *(v0 + 144) = v1;
  if (v1)
  {
    v2 = *((*MEMORY[0x277D85000] & *v1) + 0xF8);
    v1;
    v24 = (v2 + *v2);
    v3 = v2[1];
    v4 = swift_task_alloc();
    *(v0 + 152) = v4;
    *v4 = v0;
    v4[1] = sub_2643893CC;
    v5 = *(v0 + 112);
    v6 = MEMORY[0x277D84F90];

    return v24(v0 + 16, 0x746E6F7246657375, 0xEE006172656D6143, v6, v5);
  }

  else
  {
    v8 = *(v0 + 120);
    v10 = *(v0 + 64);
    v9 = *(v0 + 72);
    v11 = *(v0 + 56);

    v12 = sub_2643845D8();
    (*(v10 + 16))(v9, v12, v11);
    v13 = sub_2643B0498();
    v14 = sub_2643B0628();
    v15 = os_log_type_enabled(v13, v14);
    v17 = *(v0 + 64);
    v16 = *(v0 + 72);
    v18 = *(v0 + 56);
    if (v15)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v25 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_26439AA1C(0x746E6F7246657375, 0xEE006172656D6143, &v25);
      _os_log_impl(&dword_264382000, v13, v14, "SOSUIWebRTCView: RPC call %s made before RPC has been initialized", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x266736CC0](v20, -1, -1);
      MEMORY[0x266736CC0](v19, -1, -1);
    }

    (*(v17 + 8))(v16, v18);
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    v21 = *(v0 + 112);
    sub_26439E21C(v0 + 16, &qword_27FF66D38, &unk_2643B3C80);

    v22 = *(v0 + 96);
    v23 = *(v0 + 104);

    return MEMORY[0x2822009F8](sub_2643A0008, v22, v23);
  }
}

uint64_t sub_26438B344(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_2643B05D8();
  v2[4] = sub_2643B05C8();
  v4 = sub_2643B05A8();

  return MEMORY[0x2822009F8](sub_26438B3DC, v4, v3);
}

uint64_t sub_26438B3DC()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  v0[5] = _Block_copy(v3);
  v4 = v2;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_2643A016C;
  v6 = v0[3];

  return sub_26438AD20();
}

uint64_t sub_26438B48C()
{
  v1[6] = v0;
  v2 = sub_2643B04B8();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = sub_2643B05D8();
  v1[11] = sub_2643B05C8();
  v6 = sub_2643B05A8();
  v1[12] = v6;
  v1[13] = v5;

  return MEMORY[0x2822009F8](sub_26438B584, v6, v5);
}

uint64_t sub_26438B584()
{
  v1 = v0[10];
  v2 = v0[6];
  sub_264388D9C();
  v0[14] = sub_26439B2CC(MEMORY[0x277D84F90]);
  v0[15] = sub_2643B05C8();
  v4 = sub_2643B05A8();
  v0[16] = v4;
  v0[17] = v3;

  return MEMORY[0x2822009F8](sub_26438B628, v4, v3);
}

uint64_t sub_26438B628()
{
  v26 = v0;
  v1 = *(*(v0 + 48) + OBJC_IVAR____TtC5SOSUI15SOSUIWebRTCView_rtcRPC);
  *(v0 + 144) = v1;
  if (v1)
  {
    v2 = *((*MEMORY[0x277D85000] & *v1) + 0xF8);
    v1;
    v24 = (v2 + *v2);
    v3 = v2[1];
    v4 = swift_task_alloc();
    *(v0 + 152) = v4;
    *v4 = v0;
    v4[1] = sub_2643893CC;
    v5 = *(v0 + 112);
    v6 = MEMORY[0x277D84F90];

    return v24(v0 + 16, 0x4372616552657375, 0xED00006172656D61, v6, v5);
  }

  else
  {
    v8 = *(v0 + 120);
    v10 = *(v0 + 64);
    v9 = *(v0 + 72);
    v11 = *(v0 + 56);

    v12 = sub_2643845D8();
    (*(v10 + 16))(v9, v12, v11);
    v13 = sub_2643B0498();
    v14 = sub_2643B0628();
    v15 = os_log_type_enabled(v13, v14);
    v17 = *(v0 + 64);
    v16 = *(v0 + 72);
    v18 = *(v0 + 56);
    if (v15)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v25 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_26439AA1C(0x4372616552657375, 0xED00006172656D61, &v25);
      _os_log_impl(&dword_264382000, v13, v14, "SOSUIWebRTCView: RPC call %s made before RPC has been initialized", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x266736CC0](v20, -1, -1);
      MEMORY[0x266736CC0](v19, -1, -1);
    }

    (*(v17 + 8))(v16, v18);
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    v21 = *(v0 + 112);
    sub_26439E21C(v0 + 16, &qword_27FF66D38, &unk_2643B3C80);

    v22 = *(v0 + 96);
    v23 = *(v0 + 104);

    return MEMORY[0x2822009F8](sub_2643A0008, v22, v23);
  }
}

uint64_t sub_26438BAB0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_2643B05D8();
  v2[4] = sub_2643B05C8();
  v4 = sub_2643B05A8();

  return MEMORY[0x2822009F8](sub_26438BB48, v4, v3);
}

uint64_t sub_26438BB48()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  v0[5] = _Block_copy(v3);
  v4 = v2;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_2643A016C;
  v6 = v0[3];

  return sub_26438B48C();
}

uint64_t sub_26438BBF8()
{
  v1[6] = v0;
  v2 = sub_2643B04B8();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = sub_2643B05D8();
  v1[11] = sub_2643B05C8();
  v6 = sub_2643B05A8();
  v1[12] = v6;
  v1[13] = v5;

  return MEMORY[0x2822009F8](sub_26438BCF0, v6, v5);
}

uint64_t sub_26438BCF0()
{
  v1 = v0[10];
  v2 = v0[6];
  sub_264388D9C();
  v0[14] = sub_26439B2CC(MEMORY[0x277D84F90]);
  v0[15] = sub_2643B05C8();
  v4 = sub_2643B05A8();
  v0[16] = v4;
  v0[17] = v3;

  return MEMORY[0x2822009F8](sub_26438BD94, v4, v3);
}

uint64_t sub_26438BD94()
{
  v26 = v0;
  v1 = *(*(v0 + 48) + OBJC_IVAR____TtC5SOSUI15SOSUIWebRTCView_rtcRPC);
  *(v0 + 144) = v1;
  if (v1)
  {
    v2 = *((*MEMORY[0x277D85000] & *v1) + 0xF8);
    v1;
    v24 = (v2 + *v2);
    v3 = v2[1];
    v4 = swift_task_alloc();
    *(v0 + 152) = v4;
    *v4 = v0;
    v4[1] = sub_2643893CC;
    v5 = *(v0 + 112);
    v6 = MEMORY[0x277D84F90];

    return v24(v0 + 16, 0xD000000000000011, 0x80000002643B3EB0, v6, v5);
  }

  else
  {
    v8 = *(v0 + 120);
    v10 = *(v0 + 64);
    v9 = *(v0 + 72);
    v11 = *(v0 + 56);

    v12 = sub_2643845D8();
    (*(v10 + 16))(v9, v12, v11);
    v13 = sub_2643B0498();
    v14 = sub_2643B0628();
    v15 = os_log_type_enabled(v13, v14);
    v17 = *(v0 + 64);
    v16 = *(v0 + 72);
    v18 = *(v0 + 56);
    if (v15)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v25 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_26439AA1C(0xD000000000000011, 0x80000002643B3EB0, &v25);
      _os_log_impl(&dword_264382000, v13, v14, "SOSUIWebRTCView: RPC call %s made before RPC has been initialized", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x266736CC0](v20, -1, -1);
      MEMORY[0x266736CC0](v19, -1, -1);
    }

    (*(v17 + 8))(v16, v18);
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    v21 = *(v0 + 112);
    sub_26439E21C(v0 + 16, &qword_27FF66D38, &unk_2643B3C80);

    v22 = *(v0 + 96);
    v23 = *(v0 + 104);

    return MEMORY[0x2822009F8](sub_2643A0008, v22, v23);
  }
}

uint64_t sub_26438C218(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_2643B05D8();
  v2[4] = sub_2643B05C8();
  v4 = sub_2643B05A8();

  return MEMORY[0x2822009F8](sub_26438C2B0, v4, v3);
}

uint64_t sub_26438C2B0()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  v0[5] = _Block_copy(v3);
  v4 = v2;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_2643A016C;
  v6 = v0[3];

  return sub_26438BBF8();
}

uint64_t sub_26438C360(uint64_t a1)
{
  v2[16] = a1;
  v2[17] = v1;
  v3 = sub_2643B04B8();
  v2[18] = v3;
  v4 = *(v3 - 8);
  v2[19] = v4;
  v5 = *(v4 + 64) + 15;
  v2[20] = swift_task_alloc();
  v2[21] = sub_2643B05D8();
  v2[22] = sub_2643B05C8();
  v7 = sub_2643B05A8();
  v2[23] = v7;
  v2[24] = v6;

  return MEMORY[0x2822009F8](sub_26438C458, v7, v6);
}

uint64_t sub_26438C458()
{
  v1 = v0[21];
  v3 = v0[16];
  v2 = v0[17];
  sub_264388D9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D40, &qword_2643B1950);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2643B1900;
  *(inited + 32) = 0x61466172656D6163;
  v5 = inited + 32;
  *(inited + 72) = &type metadata for SOSUIWebRTCCameraFacing;
  *(inited + 40) = 0xEC000000676E6963;
  *(inited + 48) = v3;
  v0[25] = sub_26439B2CC(inited);
  swift_setDeallocating();
  sub_26439E21C(v5, &qword_27FF66D48, &qword_2643B1958);
  v0[26] = sub_2643B05C8();
  v7 = sub_2643B05A8();
  v0[27] = v7;
  v0[28] = v6;

  return MEMORY[0x2822009F8](sub_26438C57C, v7, v6);
}

uint64_t sub_26438C57C()
{
  v25 = v0;
  v1 = *(*(v0 + 136) + OBJC_IVAR____TtC5SOSUI15SOSUIWebRTCView_rtcRPC);
  *(v0 + 232) = v1;
  if (v1)
  {
    v2 = *((*MEMORY[0x277D85000] & *v1) + 0xF8);
    v1;
    v23 = (v2 + *v2);
    v3 = v2[1];
    v4 = swift_task_alloc();
    *(v0 + 240) = v4;
    *v4 = v0;
    v4[1] = sub_26438C88C;
    v5 = *(v0 + 200);

    return v23(v0 + 96, 0xD000000000000011, 0x80000002643B3EB0, &unk_2875D3538, v5);
  }

  else
  {
    v7 = *(v0 + 208);
    v9 = *(v0 + 152);
    v8 = *(v0 + 160);
    v10 = *(v0 + 144);

    v11 = sub_2643845D8();
    (*(v9 + 16))(v8, v11, v10);
    v12 = sub_2643B0498();
    v13 = sub_2643B0628();
    v14 = os_log_type_enabled(v12, v13);
    v16 = *(v0 + 152);
    v15 = *(v0 + 160);
    v17 = *(v0 + 144);
    if (v14)
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_26439AA1C(0xD000000000000011, 0x80000002643B3EB0, &v24);
      _os_log_impl(&dword_264382000, v12, v13, "SOSUIWebRTCView: RPC call %s made before RPC has been initialized", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x266736CC0](v19, -1, -1);
      MEMORY[0x266736CC0](v18, -1, -1);
    }

    (*(v16 + 8))(v15, v17);
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    v20 = *(v0 + 200);
    sub_26439E21C(v0 + 96, &qword_27FF66D38, &unk_2643B3C80);

    v21 = *(v0 + 184);
    v22 = *(v0 + 192);

    return MEMORY[0x2822009F8](sub_2643A000C, v21, v22);
  }
}

uint64_t sub_26438C88C()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v4 = *v1;
  *(*v1 + 248) = v0;

  v5 = *(v2 + 224);
  v6 = *(v2 + 216);
  if (v0)
  {
    v7 = sub_26438CA58;
  }

  else
  {
    v7 = sub_26438C9C8;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_26438C9C8()
{
  v1 = v0[29];
  v2 = v0[26];

  v3 = v0[25];
  sub_26439E21C((v0 + 12), &qword_27FF66D38, &unk_2643B3C80);

  v4 = v0[23];
  v5 = v0[24];

  return MEMORY[0x2822009F8](sub_2643A000C, v4, v5);
}

uint64_t sub_26438CA58()
{
  v1 = v0[29];
  v2 = v0[26];

  v3 = v0[23];
  v4 = v0[24];

  return MEMORY[0x2822009F8](sub_2643A0180, v3, v4);
}

uint64_t sub_26438CC48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_2643B05D8();
  v3[5] = sub_2643B05C8();
  v5 = sub_2643B05A8();

  return MEMORY[0x2822009F8](sub_26438CCE4, v5, v4);
}

uint64_t sub_26438CCE4()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];

  v0[6] = _Block_copy(v3);
  v4 = v2;
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_2643A0170;
  v6 = v0[4];
  v7 = v0[2];

  return sub_26438C360(v7);
}

uint64_t sub_26438CD9C(uint64_t a1, uint64_t a2)
{
  v3[2] = sub_2643B05D8();
  v3[3] = sub_2643B05C8();
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x1C0);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v3[4] = v8;
  *v8 = v3;
  v8[1] = sub_264385E8C;

  return (v10)(a1, a2, 0, 0xE000000000000000);
}

uint64_t sub_26438D0A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = sub_2643B05D8();
  v3[6] = sub_2643B05C8();
  v5 = sub_2643B05A8();

  return MEMORY[0x2822009F8](sub_26438D140, v5, v4);
}

uint64_t sub_26438D140()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];

  v0[7] = _Block_copy(v3);
  v6 = sub_2643B04F8();
  v8 = v7;
  v0[8] = v7;
  v9 = v4;
  v0[9] = sub_2643B05C8();
  v10 = *((*MEMORY[0x277D85000] & *v9) + 0x1C0);
  v15 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  v0[10] = v12;
  *v12 = v0;
  v12[1] = sub_26438D2D8;
  v13 = v0[4];

  return (v15)(v6, v8, 0, 0xE000000000000000);
}

uint64_t sub_26438D2D8()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *v1;
  v3[11] = v0;

  v6 = v3[9];
  if (v2)
  {
    v7 = v3[5];
    v8 = sub_2643B05A8();
    v10 = v9;
    v11 = sub_26438D4D0;
  }

  else
  {
    v12 = v3[8];
    v13 = v3[5];

    v8 = sub_2643B05A8();
    v10 = v14;
    v11 = sub_26438D448;
  }

  return MEMORY[0x2822009F8](v11, v8, v10);
}

uint64_t sub_26438D448()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  v3 = *(v0 + 32);

  (*(v2 + 16))(v2, 0);
  _Block_release(*(v0 + 56));
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_26438D4D0()
{
  v1 = *(v0 + 88);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  v4 = *(v0 + 56);
  v5 = *(v0 + 32);

  v6 = sub_2643B0438();

  (*(v4 + 16))(v4, v6);
  _Block_release(*(v0 + 56));
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_26438D584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[2] = sub_2643B05D8();
  v5[3] = sub_2643B05C8();
  v10 = *((*MEMORY[0x277D85000] & *v4) + 0x1C8);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  v5[4] = v12;
  *v12 = v5;
  v12[1] = sub_26438D714;

  return v14(a1, a2, a3, a4, 1);
}

uint64_t sub_26438D714()
{
  v2 = v0;
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v10 = *v1;
  *(*v1 + 40) = v2;

  v7 = sub_2643B05A8();
  if (v2)
  {
    v8 = sub_26438D8D4;
  }

  else
  {
    v8 = sub_26438D870;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_26438D870()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26438D8D4()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

uint64_t sub_26438DAC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = sub_2643B05D8();
  v4[7] = sub_2643B05C8();
  v6 = sub_2643B05A8();

  return MEMORY[0x2822009F8](sub_26438DB68, v6, v5);
}

uint64_t sub_26438DB68()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[2];
  v6 = v0[3];

  v0[8] = _Block_copy(v3);
  v7 = sub_2643B04F8();
  v9 = v8;
  v0[9] = v8;
  v10 = sub_2643B04F8();
  v12 = v11;
  v0[10] = v11;
  v13 = v4;
  v0[11] = sub_2643B05C8();
  v14 = *((*MEMORY[0x277D85000] & *v13) + 0x1C8);
  v19 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  v0[12] = v16;
  *v16 = v0;
  v16[1] = sub_26438DD20;
  v17 = v0[5];

  return v19(v7, v9, v10, v12, 1);
}

uint64_t sub_26438DD20()
{
  v2 = v0;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 48);
  v10 = *v1;
  *(*v1 + 104) = v2;

  v7 = sub_2643B05A8();
  if (v2)
  {
    v8 = sub_26438DF1C;
  }

  else
  {
    v8 = sub_26438DE7C;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_26438DE7C()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);
  v5 = *(v0 + 40);

  (*(v4 + 16))(v4, 0);
  _Block_release(*(v0 + 64));
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_26438DF1C()
{
  v1 = *(v0 + 104);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  v6 = *(v0 + 40);

  v7 = sub_2643B0438();

  (*(v5 + 16))(v5, v7);
  _Block_release(*(v0 + 64));
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_26438DFE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 248) = a4;
  *(v6 + 256) = v5;
  *(v6 + 376) = a5;
  *(v6 + 232) = a2;
  *(v6 + 240) = a3;
  *(v6 + 224) = a1;
  v7 = sub_2643B04B8();
  *(v6 + 264) = v7;
  v8 = *(v7 - 8);
  *(v6 + 272) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 280) = swift_task_alloc();
  *(v6 + 288) = sub_2643B05D8();
  *(v6 + 296) = sub_2643B05C8();
  v11 = sub_2643B05A8();
  *(v6 + 304) = v11;
  *(v6 + 312) = v10;

  return MEMORY[0x2822009F8](sub_26438E0E4, v11, v10);
}

uint64_t sub_26438E0E4()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 376);
  v4 = *(v0 + 240);
  v3 = *(v0 + 248);
  v6 = *(v0 + 224);
  v5 = *(v0 + 232);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D40, &qword_2643B1950);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2643B1910;
  *(inited + 32) = 0x746E696F70646E65;
  v8 = MEMORY[0x277D837D0];
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = v6;
  *(inited + 56) = v5;
  *(inited + 72) = v8;
  *(inited + 80) = 0x6E656B6F74;
  *(inited + 88) = 0xE500000000000000;
  *(inited + 96) = v4;
  *(inited + 104) = v3;
  *(inited + 120) = v8;
  *(inited + 128) = 0x656C6B63697274;
  *(inited + 136) = 0xE700000000000000;
  *(inited + 168) = MEMORY[0x277D839B0];
  *(inited + 144) = v2;

  *(v0 + 320) = sub_26439B2CC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D48, &qword_2643B1958);
  swift_arrayDestroy();
  *(v0 + 328) = sub_2643B05C8();
  v10 = sub_2643B05A8();
  *(v0 + 336) = v10;
  *(v0 + 344) = v9;

  return MEMORY[0x2822009F8](sub_26438E27C, v10, v9);
}

uint64_t sub_26438E27C()
{
  v25 = v0;
  v1 = *(*(v0 + 256) + OBJC_IVAR____TtC5SOSUI15SOSUIWebRTCView_rtcRPC);
  *(v0 + 352) = v1;
  if (v1)
  {
    v2 = *((*MEMORY[0x277D85000] & *v1) + 0xF8);
    v1;
    v23 = (v2 + *v2);
    v3 = v2[1];
    v4 = swift_task_alloc();
    *(v0 + 360) = v4;
    *v4 = v0;
    v4[1] = sub_26438E58C;
    v5 = *(v0 + 320);

    return v23(v0 + 192, 0xD000000000000010, 0x80000002643B3ED0, &unk_2875D3568, v5);
  }

  else
  {
    v7 = *(v0 + 328);
    v9 = *(v0 + 272);
    v8 = *(v0 + 280);
    v10 = *(v0 + 264);

    v11 = sub_2643845D8();
    (*(v9 + 16))(v8, v11, v10);
    v12 = sub_2643B0498();
    v13 = sub_2643B0628();
    v14 = os_log_type_enabled(v12, v13);
    v16 = *(v0 + 272);
    v15 = *(v0 + 280);
    v17 = *(v0 + 264);
    if (v14)
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_26439AA1C(0xD000000000000010, 0x80000002643B3ED0, &v24);
      _os_log_impl(&dword_264382000, v12, v13, "SOSUIWebRTCView: RPC call %s made before RPC has been initialized", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x266736CC0](v19, -1, -1);
      MEMORY[0x266736CC0](v18, -1, -1);
    }

    (*(v16 + 8))(v15, v17);
    *(v0 + 192) = 0u;
    *(v0 + 208) = 0u;
    v20 = *(v0 + 320);
    sub_26439E21C(v0 + 192, &qword_27FF66D38, &unk_2643B3C80);

    v21 = *(v0 + 304);
    v22 = *(v0 + 312);

    return MEMORY[0x2822009F8](sub_26438E840, v21, v22);
  }
}

uint64_t sub_26438E58C()
{
  v2 = *v1;
  v3 = *(*v1 + 360);
  v4 = *v1;
  *(*v1 + 368) = v0;

  v5 = *(v2 + 344);
  v6 = *(v2 + 336);
  if (v0)
  {
    v7 = sub_26438E758;
  }

  else
  {
    v7 = sub_26438E6C8;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_26438E6C8()
{
  v1 = v0[44];
  v2 = v0[41];

  v3 = v0[40];
  sub_26439E21C((v0 + 24), &qword_27FF66D38, &unk_2643B3C80);

  v4 = v0[38];
  v5 = v0[39];

  return MEMORY[0x2822009F8](sub_26438E840, v4, v5);
}

uint64_t sub_26438E758()
{
  v1 = v0[44];
  v2 = v0[41];

  v3 = v0[38];
  v4 = v0[39];

  return MEMORY[0x2822009F8](sub_26438E7C4, v3, v4);
}

uint64_t sub_26438E7C4()
{
  v1 = v0[40];
  v2 = v0[37];
  v3 = v0[35];

  v4 = v0[1];
  v5 = v0[46];

  return v4();
}

uint64_t sub_26438E840()
{
  v1 = v0[37];
  v2 = v0[35];

  v3 = v0[1];

  return v3();
}

uint64_t sub_26438EA50(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  *(v5 + 88) = a3;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_2643B05D8();
  *(v5 + 48) = sub_2643B05C8();
  v7 = sub_2643B05A8();

  return MEMORY[0x2822009F8](sub_26438EAF0, v7, v6);
}

uint64_t sub_26438EAF0()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 16);

  *(v0 + 56) = _Block_copy(v4);
  v6 = sub_2643B04F8();
  v8 = v7;
  *(v0 + 64) = v7;
  v9 = sub_2643B04F8();
  v11 = v10;
  *(v0 + 72) = v10;
  v12 = v2;
  v13 = swift_task_alloc();
  *(v0 + 80) = v13;
  *v13 = v0;
  v13[1] = sub_26438EBF8;
  v14 = *(v0 + 40);
  v15 = *(v0 + 88);

  return sub_26438DFE0(v6, v8, v9, v11, v15);
}

uint64_t sub_26438EBF8()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 80);
  v6 = *(*v1 + 72);
  v7 = *(*v1 + 64);
  v8 = *(*v1 + 40);
  v9 = *v1;

  v10 = *(v3 + 56);
  if (v2)
  {
    v11 = sub_2643B0438();

    (*(v10 + 16))(v10, v11);
  }

  else
  {
    (*(v10 + 16))(*(v3 + 56), 0);
  }

  _Block_release(*(v4 + 56));
  v12 = *(v9 + 8);

  return v12();
}

uint64_t sub_26438EDBC()
{
  v1[6] = v0;
  v2 = sub_2643B04B8();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = sub_2643B05D8();
  v1[11] = sub_2643B05C8();
  v6 = sub_2643B05A8();
  v1[12] = v6;
  v1[13] = v5;

  return MEMORY[0x2822009F8](sub_26438EEB4, v6, v5);
}

uint64_t sub_26438EEB4()
{
  v1 = v0[10];
  v0[14] = sub_26439B2CC(MEMORY[0x277D84F90]);
  v0[15] = sub_2643B05C8();
  v3 = sub_2643B05A8();
  v0[16] = v3;
  v0[17] = v2;

  return MEMORY[0x2822009F8](sub_26438EF50, v3, v2);
}

uint64_t sub_26438EF50()
{
  v26 = v0;
  v1 = *(*(v0 + 48) + OBJC_IVAR____TtC5SOSUI15SOSUIWebRTCView_rtcRPC);
  *(v0 + 144) = v1;
  if (v1)
  {
    v2 = *((*MEMORY[0x277D85000] & *v1) + 0xF8);
    v1;
    v24 = (v2 + *v2);
    v3 = v2[1];
    v4 = swift_task_alloc();
    *(v0 + 152) = v4;
    *v4 = v0;
    v4[1] = sub_2643893CC;
    v5 = *(v0 + 112);
    v6 = MEMORY[0x277D84F90];

    return v24(v0 + 16, 0x6F65646956646E65, 0xEE006D6165727453, v6, v5);
  }

  else
  {
    v8 = *(v0 + 120);
    v10 = *(v0 + 64);
    v9 = *(v0 + 72);
    v11 = *(v0 + 56);

    v12 = sub_2643845D8();
    (*(v10 + 16))(v9, v12, v11);
    v13 = sub_2643B0498();
    v14 = sub_2643B0628();
    v15 = os_log_type_enabled(v13, v14);
    v17 = *(v0 + 64);
    v16 = *(v0 + 72);
    v18 = *(v0 + 56);
    if (v15)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v25 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_26439AA1C(0x6F65646956646E65, 0xEE006D6165727453, &v25);
      _os_log_impl(&dword_264382000, v13, v14, "SOSUIWebRTCView: RPC call %s made before RPC has been initialized", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x266736CC0](v20, -1, -1);
      MEMORY[0x266736CC0](v19, -1, -1);
    }

    (*(v17 + 8))(v16, v18);
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    v21 = *(v0 + 112);
    sub_26439E21C(v0 + 16, &qword_27FF66D38, &unk_2643B3C80);

    v22 = *(v0 + 96);
    v23 = *(v0 + 104);

    return MEMORY[0x2822009F8](sub_2643A0008, v22, v23);
  }
}

uint64_t sub_26438F3D8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_2643B05D8();
  v2[4] = sub_2643B05C8();
  v4 = sub_2643B05A8();

  return MEMORY[0x2822009F8](sub_26438F470, v4, v3);
}

uint64_t sub_26438F470()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  v0[5] = _Block_copy(v3);
  v4 = v2;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_2643A016C;
  v6 = v0[3];

  return sub_26438EDBC();
}

uint64_t sub_26438F520()
{
  v1[6] = v0;
  v2 = sub_2643B04B8();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = sub_2643B05D8();
  v1[11] = sub_2643B05C8();
  v6 = sub_2643B05A8();
  v1[12] = v6;
  v1[13] = v5;

  return MEMORY[0x2822009F8](sub_26438F618, v6, v5);
}

uint64_t sub_26438F618()
{
  v1 = v0[10];
  v2 = v0[6];
  sub_264388D9C();
  v0[14] = sub_26439B2CC(MEMORY[0x277D84F90]);
  v0[15] = sub_2643B05C8();
  v4 = sub_2643B05A8();
  v0[16] = v4;
  v0[17] = v3;

  return MEMORY[0x2822009F8](sub_26438F6BC, v4, v3);
}

uint64_t sub_26438F6BC()
{
  v26 = v0;
  v1 = *(*(v0 + 48) + OBJC_IVAR____TtC5SOSUI15SOSUIWebRTCView_rtcRPC);
  *(v0 + 144) = v1;
  if (v1)
  {
    v2 = *((*MEMORY[0x277D85000] & *v1) + 0xF8);
    v1;
    v24 = (v2 + *v2);
    v3 = v2[1];
    v4 = swift_task_alloc();
    *(v0 + 152) = v4;
    *v4 = v0;
    v4[1] = sub_26438F9C0;
    v5 = *(v0 + 112);
    v6 = MEMORY[0x277D84F90];

    return v24(v0 + 16, 0x656D614370696C66, 0xEA00000000006172, v6, v5);
  }

  else
  {
    v8 = *(v0 + 120);
    v10 = *(v0 + 64);
    v9 = *(v0 + 72);
    v11 = *(v0 + 56);

    v12 = sub_2643845D8();
    (*(v10 + 16))(v9, v12, v11);
    v13 = sub_2643B0498();
    v14 = sub_2643B0628();
    v15 = os_log_type_enabled(v13, v14);
    v17 = *(v0 + 64);
    v16 = *(v0 + 72);
    v18 = *(v0 + 56);
    if (v15)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v25 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_26439AA1C(0x656D614370696C66, 0xEA00000000006172, &v25);
      _os_log_impl(&dword_264382000, v13, v14, "SOSUIWebRTCView: RPC call %s made before RPC has been initialized", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x266736CC0](v20, -1, -1);
      MEMORY[0x266736CC0](v19, -1, -1);
    }

    (*(v17 + 8))(v16, v18);
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    v21 = *(v0 + 112);
    sub_26439E21C(v0 + 16, &qword_27FF66D38, &unk_2643B3C80);

    v22 = *(v0 + 96);
    v23 = *(v0 + 104);

    return MEMORY[0x2822009F8](sub_26438FC74, v22, v23);
  }
}

uint64_t sub_26438F9C0()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *v1;
  *(*v1 + 160) = v0;

  v5 = *(v2 + 136);
  v6 = *(v2 + 128);
  if (v0)
  {
    v7 = sub_26438FB8C;
  }

  else
  {
    v7 = sub_26438FAFC;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_26438FAFC()
{
  v1 = v0[18];
  v2 = v0[15];

  v3 = v0[14];
  sub_26439E21C((v0 + 2), &qword_27FF66D38, &unk_2643B3C80);

  v4 = v0[12];
  v5 = v0[13];

  return MEMORY[0x2822009F8](sub_26438FC74, v4, v5);
}

uint64_t sub_26438FB8C()
{
  v1 = v0[18];
  v2 = v0[15];

  v3 = v0[12];
  v4 = v0[13];

  return MEMORY[0x2822009F8](sub_26438FBF8, v3, v4);
}

uint64_t sub_26438FBF8()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[9];

  v4 = v0[1];
  v5 = v0[20];

  return v4();
}

uint64_t sub_26438FC74()
{
  v1 = v0[11];
  v2 = v0[9];

  v3 = v0[1];

  return v3();
}

uint64_t sub_26438FE58(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_2643B05D8();
  v2[4] = sub_2643B05C8();
  v4 = sub_2643B05A8();

  return MEMORY[0x2822009F8](sub_26438FEF0, v4, v3);
}

uint64_t sub_26438FEF0()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  v0[5] = _Block_copy(v3);
  v4 = v2;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_26438FFA0;
  v6 = v0[3];

  return sub_26438F520();
}

uint64_t sub_26438FFA0()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 24);
  v7 = *v1;

  v8 = *(v3 + 40);
  if (v2)
  {
    v9 = sub_2643B0438();

    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(v8, 0);
  }

  _Block_release(*(v4 + 40));
  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_264390124()
{
  v1[6] = v0;
  v2 = sub_2643B04B8();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = sub_2643B05D8();
  v1[11] = sub_2643B05C8();
  v6 = sub_2643B05A8();
  v1[12] = v6;
  v1[13] = v5;

  return MEMORY[0x2822009F8](sub_26439021C, v6, v5);
}

uint64_t sub_26439021C()
{
  v1 = v0[10];
  v2 = v0[6];
  sub_264388D9C();
  v0[14] = sub_26439B2CC(MEMORY[0x277D84F90]);
  v0[15] = sub_2643B05C8();
  v4 = sub_2643B05A8();
  v0[16] = v4;
  v0[17] = v3;

  return MEMORY[0x2822009F8](sub_2643902C0, v4, v3);
}

uint64_t sub_2643902C0()
{
  v26 = v0;
  v1 = *(*(v0 + 48) + OBJC_IVAR____TtC5SOSUI15SOSUIWebRTCView_rtcRPC);
  *(v0 + 144) = v1;
  if (v1)
  {
    v2 = *((*MEMORY[0x277D85000] & *v1) + 0xF8);
    v1;
    v24 = (v2 + *v2);
    v3 = v2[1];
    v4 = swift_task_alloc();
    *(v0 + 152) = v4;
    *v4 = v0;
    v4[1] = sub_2643893CC;
    v5 = *(v0 + 112);
    v6 = MEMORY[0x277D84F90];

    return v24(v0 + 16, 0x6E4F6863726F74, 0xE700000000000000, v6, v5);
  }

  else
  {
    v8 = *(v0 + 120);
    v10 = *(v0 + 64);
    v9 = *(v0 + 72);
    v11 = *(v0 + 56);

    v12 = sub_2643845D8();
    (*(v10 + 16))(v9, v12, v11);
    v13 = sub_2643B0498();
    v14 = sub_2643B0628();
    v15 = os_log_type_enabled(v13, v14);
    v17 = *(v0 + 64);
    v16 = *(v0 + 72);
    v18 = *(v0 + 56);
    if (v15)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v25 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_26439AA1C(0x6E4F6863726F74, 0xE700000000000000, &v25);
      _os_log_impl(&dword_264382000, v13, v14, "SOSUIWebRTCView: RPC call %s made before RPC has been initialized", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x266736CC0](v20, -1, -1);
      MEMORY[0x266736CC0](v19, -1, -1);
    }

    (*(v17 + 8))(v16, v18);
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    v21 = *(v0 + 112);
    sub_26439E21C(v0 + 16, &qword_27FF66D38, &unk_2643B3C80);

    v22 = *(v0 + 96);
    v23 = *(v0 + 104);

    return MEMORY[0x2822009F8](sub_2643A0008, v22, v23);
  }
}

uint64_t sub_264390730(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_2643B05D8();
  v2[4] = sub_2643B05C8();
  v4 = sub_2643B05A8();

  return MEMORY[0x2822009F8](sub_2643907C8, v4, v3);
}

uint64_t sub_2643907C8()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  v0[5] = _Block_copy(v3);
  v4 = v2;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_2643A016C;
  v6 = v0[3];

  return sub_264390124();
}

uint64_t sub_264390878()
{
  v1[6] = v0;
  v2 = sub_2643B04B8();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = sub_2643B05D8();
  v1[11] = sub_2643B05C8();
  v6 = sub_2643B05A8();
  v1[12] = v6;
  v1[13] = v5;

  return MEMORY[0x2822009F8](sub_264390970, v6, v5);
}

uint64_t sub_264390970()
{
  v1 = v0[10];
  v2 = v0[6];
  sub_264388D9C();
  v0[14] = sub_26439B2CC(MEMORY[0x277D84F90]);
  v0[15] = sub_2643B05C8();
  v4 = sub_2643B05A8();
  v0[16] = v4;
  v0[17] = v3;

  return MEMORY[0x2822009F8](sub_264390A14, v4, v3);
}

uint64_t sub_264390A14()
{
  v26 = v0;
  v1 = *(*(v0 + 48) + OBJC_IVAR____TtC5SOSUI15SOSUIWebRTCView_rtcRPC);
  *(v0 + 144) = v1;
  if (v1)
  {
    v2 = *((*MEMORY[0x277D85000] & *v1) + 0xF8);
    v1;
    v24 = (v2 + *v2);
    v3 = v2[1];
    v4 = swift_task_alloc();
    *(v0 + 152) = v4;
    *v4 = v0;
    v4[1] = sub_2643893CC;
    v5 = *(v0 + 112);
    v6 = MEMORY[0x277D84F90];

    return v24(v0 + 16, 0x66664F6863726F74, 0xE800000000000000, v6, v5);
  }

  else
  {
    v8 = *(v0 + 120);
    v10 = *(v0 + 64);
    v9 = *(v0 + 72);
    v11 = *(v0 + 56);

    v12 = sub_2643845D8();
    (*(v10 + 16))(v9, v12, v11);
    v13 = sub_2643B0498();
    v14 = sub_2643B0628();
    v15 = os_log_type_enabled(v13, v14);
    v17 = *(v0 + 64);
    v16 = *(v0 + 72);
    v18 = *(v0 + 56);
    if (v15)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v25 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_26439AA1C(0x66664F6863726F74, 0xE800000000000000, &v25);
      _os_log_impl(&dword_264382000, v13, v14, "SOSUIWebRTCView: RPC call %s made before RPC has been initialized", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x266736CC0](v20, -1, -1);
      MEMORY[0x266736CC0](v19, -1, -1);
    }

    (*(v17 + 8))(v16, v18);
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    v21 = *(v0 + 112);
    sub_26439E21C(v0 + 16, &qword_27FF66D38, &unk_2643B3C80);

    v22 = *(v0 + 96);
    v23 = *(v0 + 104);

    return MEMORY[0x2822009F8](sub_2643A0008, v22, v23);
  }
}

uint64_t sub_264390E84(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_2643B05D8();
  v2[4] = sub_2643B05C8();
  v4 = sub_2643B05A8();

  return MEMORY[0x2822009F8](sub_264390F1C, v4, v3);
}

uint64_t sub_264390F1C()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  v0[5] = _Block_copy(v3);
  v4 = v2;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_2643A016C;
  v6 = v0[3];

  return sub_264390878();
}

uint64_t sub_264390FCC()
{
  v1[6] = v0;
  v2 = sub_2643B04B8();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = sub_2643B05D8();
  v1[11] = sub_2643B05C8();
  v6 = sub_2643B05A8();
  v1[12] = v6;
  v1[13] = v5;

  return MEMORY[0x2822009F8](sub_2643910C4, v6, v5);
}

uint64_t sub_2643910C4()
{
  v1 = v0[10];
  v2 = v0[6];
  sub_264388D9C();
  v0[14] = sub_26439B2CC(MEMORY[0x277D84F90]);
  v0[15] = sub_2643B05C8();
  v4 = sub_2643B05A8();
  v0[16] = v4;
  v0[17] = v3;

  return MEMORY[0x2822009F8](sub_264391168, v4, v3);
}

uint64_t sub_264391168()
{
  v26 = v0;
  v1 = *(*(v0 + 48) + OBJC_IVAR____TtC5SOSUI15SOSUIWebRTCView_rtcRPC);
  *(v0 + 144) = v1;
  if (v1)
  {
    v2 = *((*MEMORY[0x277D85000] & *v1) + 0xF8);
    v1;
    v24 = (v2 + *v2);
    v3 = v2[1];
    v4 = swift_task_alloc();
    *(v0 + 152) = v4;
    *v4 = v0;
    v4[1] = sub_2643893CC;
    v5 = *(v0 + 112);
    v6 = MEMORY[0x277D84F90];

    return v24(v0 + 16, 0x6F54656C67676F74, 0xEB00000000686372, v6, v5);
  }

  else
  {
    v8 = *(v0 + 120);
    v10 = *(v0 + 64);
    v9 = *(v0 + 72);
    v11 = *(v0 + 56);

    v12 = sub_2643845D8();
    (*(v10 + 16))(v9, v12, v11);
    v13 = sub_2643B0498();
    v14 = sub_2643B0628();
    v15 = os_log_type_enabled(v13, v14);
    v17 = *(v0 + 64);
    v16 = *(v0 + 72);
    v18 = *(v0 + 56);
    if (v15)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v25 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_26439AA1C(0x6F54656C67676F74, 0xEB00000000686372, &v25);
      _os_log_impl(&dword_264382000, v13, v14, "SOSUIWebRTCView: RPC call %s made before RPC has been initialized", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x266736CC0](v20, -1, -1);
      MEMORY[0x266736CC0](v19, -1, -1);
    }

    (*(v17 + 8))(v16, v18);
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    v21 = *(v0 + 112);
    sub_26439E21C(v0 + 16, &qword_27FF66D38, &unk_2643B3C80);

    v22 = *(v0 + 96);
    v23 = *(v0 + 104);

    return MEMORY[0x2822009F8](sub_2643A0008, v22, v23);
  }
}

uint64_t sub_2643915E8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_2643B05D8();
  v2[4] = sub_2643B05C8();
  v4 = sub_2643B05A8();

  return MEMORY[0x2822009F8](sub_264391680, v4, v3);
}

uint64_t sub_264391680()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  v0[5] = _Block_copy(v3);
  v4 = v2;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_2643A016C;
  v6 = v0[3];

  return sub_264390FCC();
}

uint64_t sub_264391730(double a1)
{
  *(v2 + 136) = v1;
  *(v2 + 128) = a1;
  v3 = sub_2643B04B8();
  *(v2 + 144) = v3;
  v4 = *(v3 - 8);
  *(v2 + 152) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 160) = swift_task_alloc();
  *(v2 + 168) = sub_2643B05D8();
  *(v2 + 176) = sub_2643B05C8();
  v7 = sub_2643B05A8();
  *(v2 + 184) = v7;
  *(v2 + 192) = v6;

  return MEMORY[0x2822009F8](sub_26439182C, v7, v6);
}

uint64_t sub_26439182C()
{
  v1 = v0[21];
  v2 = v0[17];
  v3 = v0[16];
  sub_264388D9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D40, &qword_2643B1950);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2643B1900;
  *(inited + 32) = 1836019578;
  v5 = inited + 32;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 72) = MEMORY[0x277D839F8];
  *(inited + 48) = v3;
  v0[25] = sub_26439B2CC(inited);
  swift_setDeallocating();
  sub_26439E21C(v5, &qword_27FF66D48, &qword_2643B1958);
  v0[26] = sub_2643B05C8();
  v7 = sub_2643B05A8();
  v0[27] = v7;
  v0[28] = v6;

  return MEMORY[0x2822009F8](sub_264391948, v7, v6);
}

uint64_t sub_264391948()
{
  v25 = v0;
  v1 = *(*(v0 + 136) + OBJC_IVAR____TtC5SOSUI15SOSUIWebRTCView_rtcRPC);
  *(v0 + 232) = v1;
  if (v1)
  {
    v2 = *((*MEMORY[0x277D85000] & *v1) + 0xF8);
    v1;
    v23 = (v2 + *v2);
    v3 = v2[1];
    v4 = swift_task_alloc();
    *(v0 + 240) = v4;
    *v4 = v0;
    v4[1] = sub_264391C54;
    v5 = *(v0 + 200);

    return v23(v0 + 96, 0x4C6D6F6F5A746573, 0xEC0000006C657665, &unk_2875D35B8, v5);
  }

  else
  {
    v7 = *(v0 + 208);
    v9 = *(v0 + 152);
    v8 = *(v0 + 160);
    v10 = *(v0 + 144);

    v11 = sub_2643845D8();
    (*(v9 + 16))(v8, v11, v10);
    v12 = sub_2643B0498();
    v13 = sub_2643B0628();
    v14 = os_log_type_enabled(v12, v13);
    v16 = *(v0 + 152);
    v15 = *(v0 + 160);
    v17 = *(v0 + 144);
    if (v14)
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_26439AA1C(0x4C6D6F6F5A746573, 0xEC0000006C657665, &v24);
      _os_log_impl(&dword_264382000, v12, v13, "SOSUIWebRTCView: RPC call %s made before RPC has been initialized", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x266736CC0](v19, -1, -1);
      MEMORY[0x266736CC0](v18, -1, -1);
    }

    (*(v16 + 8))(v15, v17);
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    v20 = *(v0 + 200);
    sub_26439E21C(v0 + 96, &qword_27FF66D38, &unk_2643B3C80);

    v21 = *(v0 + 184);
    v22 = *(v0 + 192);

    return MEMORY[0x2822009F8](sub_264391F08, v21, v22);
  }
}

uint64_t sub_264391C54()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v4 = *v1;
  *(*v1 + 248) = v0;

  v5 = *(v2 + 224);
  v6 = *(v2 + 216);
  if (v0)
  {
    v7 = sub_264391E20;
  }

  else
  {
    v7 = sub_264391D90;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_264391D90()
{
  v1 = v0[29];
  v2 = v0[26];

  v3 = v0[25];
  sub_26439E21C((v0 + 12), &qword_27FF66D38, &unk_2643B3C80);

  v4 = v0[23];
  v5 = v0[24];

  return MEMORY[0x2822009F8](sub_264391F08, v4, v5);
}

uint64_t sub_264391E20()
{
  v1 = v0[29];
  v2 = v0[26];

  v3 = v0[23];
  v4 = v0[24];

  return MEMORY[0x2822009F8](sub_264391E8C, v3, v4);
}

uint64_t sub_264391E8C()
{
  v1 = v0[25];
  v2 = v0[22];
  v3 = v0[20];

  v4 = v0[1];
  v5 = v0[31];

  return v4();
}

uint64_t sub_264391F08()
{
  v1 = v0[22];
  v2 = v0[20];

  v3 = v0[1];

  return v3();
}

uint64_t sub_2643920FC(uint64_t a1, uint64_t a2, double a3)
{
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  *(v3 + 16) = a3;
  sub_2643B05D8();
  *(v3 + 40) = sub_2643B05C8();
  v5 = sub_2643B05A8();

  return MEMORY[0x2822009F8](sub_264392198, v5, v4);
}

uint64_t sub_264392198()
{
  v2 = *(v0 + 4);
  v1 = *(v0 + 5);
  v3 = *(v0 + 3);

  *(v0 + 6) = _Block_copy(v3);
  v4 = v2;
  v5 = swift_task_alloc();
  *(v0 + 7) = v5;
  *v5 = v0;
  v5[1] = sub_2643A0170;
  v6 = *(v0 + 4);
  v7 = v0[2];

  return sub_264391730(v7);
}

uint64_t sub_26439224C()
{
  v1[6] = v0;
  v2 = sub_2643B04B8();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = sub_2643B05D8();
  v1[11] = sub_2643B05C8();
  v6 = sub_2643B05A8();
  v1[12] = v6;
  v1[13] = v5;

  return MEMORY[0x2822009F8](sub_264392344, v6, v5);
}

uint64_t sub_264392344()
{
  v1 = v0[10];
  v0[14] = sub_26439B2CC(MEMORY[0x277D84F90]);
  v0[15] = sub_2643B05C8();
  v3 = sub_2643B05A8();
  v0[16] = v3;
  v0[17] = v2;

  return MEMORY[0x2822009F8](sub_2643923E0, v3, v2);
}

uint64_t sub_2643923E0()
{
  v26 = v0;
  v1 = *(*(v0 + 48) + OBJC_IVAR____TtC5SOSUI15SOSUIWebRTCView_rtcRPC);
  *(v0 + 144) = v1;
  if (v1)
  {
    v2 = *((*MEMORY[0x277D85000] & *v1) + 0xF8);
    v1;
    v24 = (v2 + *v2);
    v3 = v2[1];
    v4 = swift_task_alloc();
    *(v0 + 152) = v4;
    *v4 = v0;
    v4[1] = sub_2643893CC;
    v5 = *(v0 + 112);
    v6 = MEMORY[0x277D84F90];

    return v24(v0 + 16, 0x6F65646956646E65, 0xEF77656976657250, v6, v5);
  }

  else
  {
    v8 = *(v0 + 120);
    v10 = *(v0 + 64);
    v9 = *(v0 + 72);
    v11 = *(v0 + 56);

    v12 = sub_2643845D8();
    (*(v10 + 16))(v9, v12, v11);
    v13 = sub_2643B0498();
    v14 = sub_2643B0628();
    v15 = os_log_type_enabled(v13, v14);
    v17 = *(v0 + 64);
    v16 = *(v0 + 72);
    v18 = *(v0 + 56);
    if (v15)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v25 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_26439AA1C(0x6F65646956646E65, 0xEF77656976657250, &v25);
      _os_log_impl(&dword_264382000, v13, v14, "SOSUIWebRTCView: RPC call %s made before RPC has been initialized", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x266736CC0](v20, -1, -1);
      MEMORY[0x266736CC0](v19, -1, -1);
    }

    (*(v17 + 8))(v16, v18);
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    v21 = *(v0 + 112);
    sub_26439E21C(v0 + 16, &qword_27FF66D38, &unk_2643B3C80);

    v22 = *(v0 + 96);
    v23 = *(v0 + 104);

    return MEMORY[0x2822009F8](sub_2643A0008, v22, v23);
  }
}

uint64_t sub_264392868(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_2643B05D8();
  v2[4] = sub_2643B05C8();
  v4 = sub_2643B05A8();

  return MEMORY[0x2822009F8](sub_264392900, v4, v3);
}

uint64_t sub_264392900()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  v0[5] = _Block_copy(v3);
  v4 = v2;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_2643A016C;
  v6 = v0[3];

  return sub_26439224C();
}

uint64_t sub_2643929B0()
{
  v1[15] = v0;
  v2 = sub_2643B04B8();
  v1[16] = v2;
  v3 = *(v2 - 8);
  v1[17] = v3;
  v4 = *(v3 + 64) + 15;
  v1[18] = swift_task_alloc();
  v1[19] = sub_2643B05D8();
  v1[20] = sub_2643B05C8();
  v6 = sub_2643B05A8();
  v1[21] = v6;
  v1[22] = v5;

  return MEMORY[0x2822009F8](sub_264392AA8, v6, v5);
}

uint64_t sub_264392AA8()
{
  v1 = v0[19];
  v0[23] = sub_26439B2CC(MEMORY[0x277D84F90]);
  v0[24] = sub_2643B05C8();
  v3 = sub_2643B05A8();
  v0[25] = v3;
  v0[26] = v2;

  return MEMORY[0x2822009F8](sub_264392B44, v3, v2);
}

uint64_t sub_264392B44()
{
  v26 = v0;
  v1 = *(*(v0 + 120) + OBJC_IVAR____TtC5SOSUI15SOSUIWebRTCView_rtcRPC);
  *(v0 + 216) = v1;
  if (v1)
  {
    v2 = *((*MEMORY[0x277D85000] & *v1) + 0xF8);
    v1;
    v24 = (v2 + *v2);
    v3 = v2[1];
    v4 = swift_task_alloc();
    *(v0 + 224) = v4;
    *v4 = v0;
    v4[1] = sub_264392E3C;
    v5 = *(v0 + 184);
    v6 = MEMORY[0x277D84F90];

    return v24(v0 + 16, 0x6261706143746567, 0xEF73656974696C69, v6, v5);
  }

  else
  {
    v8 = *(v0 + 192);
    v10 = *(v0 + 136);
    v9 = *(v0 + 144);
    v11 = *(v0 + 128);

    v12 = sub_2643845D8();
    (*(v10 + 16))(v9, v12, v11);
    v13 = sub_2643B0498();
    v14 = sub_2643B0628();
    v15 = os_log_type_enabled(v13, v14);
    v17 = *(v0 + 136);
    v16 = *(v0 + 144);
    v18 = *(v0 + 128);
    if (v15)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v25 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_26439AA1C(0x6261706143746567, 0xEF73656974696C69, &v25);
      _os_log_impl(&dword_264382000, v13, v14, "SOSUIWebRTCView: RPC call %s made before RPC has been initialized", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x266736CC0](v20, -1, -1);
      MEMORY[0x266736CC0](v19, -1, -1);
    }

    (*(v17 + 8))(v16, v18);
    v21 = *(v0 + 184);
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;

    v22 = *(v0 + 168);
    v23 = *(v0 + 176);

    return MEMORY[0x2822009F8](sub_2643930D4, v22, v23);
  }
}

uint64_t sub_264392E3C()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v4 = *v1;
  *(*v1 + 232) = v0;

  v5 = *(v2 + 208);
  v6 = *(v2 + 200);
  if (v0)
  {
    v7 = sub_264392FEC;
  }

  else
  {
    v7 = sub_264392F78;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_264392F78()
{
  v1 = v0[27];
  v3 = v0[23];
  v2 = v0[24];

  v4 = v0[21];
  v5 = v0[22];

  return MEMORY[0x2822009F8](sub_2643930D4, v4, v5);
}

uint64_t sub_264392FEC()
{
  v1 = v0[27];
  v2 = v0[24];

  v3 = v0[21];
  v4 = v0[22];

  return MEMORY[0x2822009F8](sub_264393058, v3, v4);
}

uint64_t sub_264393058()
{
  v1 = v0[23];
  v2 = v0[20];
  v3 = v0[18];

  v4 = v0[1];
  v5 = v0[29];

  return v4();
}

uint64_t sub_2643930D4()
{
  v1 = *(v0 + 160);

  sub_26439FC68(v0 + 16, v0 + 80, &qword_27FF66D38, &unk_2643B3C80);
  if (*(v0 + 104))
  {
    sub_26439B448((v0 + 80), (v0 + 48));
    v2 = type metadata accessor for SOSUIWebtRTCCapabilities();
    v3 = sub_26439B458();
    sub_2643AF3C4(v2, v0 + 48, v2, v3, v0 + 112);
    v4 = *(v0 + 112);
    if (!v4)
    {
      v4 = sub_2643A64E8(0);
    }

    __swift_destroy_boxed_opaque_existential_0((v0 + 48));
    v5 = v0 + 16;
  }

  else
  {
    sub_26439E21C(v0 + 80, &qword_27FF66D38, &unk_2643B3C80);
    type metadata accessor for SOSUIWebtRTCCapabilities();
    v4 = sub_2643A64E8(0);
    v5 = v0 + 16;
  }

  sub_26439E21C(v5, &qword_27FF66D38, &unk_2643B3C80);
  v6 = *(v0 + 144);

  v7 = *(v0 + 8);

  return v7(v4);
}

uint64_t sub_264393398(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_2643B05D8();
  v2[4] = sub_2643B05C8();
  v4 = sub_2643B05A8();

  return MEMORY[0x2822009F8](sub_264393430, v4, v3);
}

uint64_t sub_264393430()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  v0[5] = _Block_copy(v3);
  v4 = v2;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_2643934E0;
  v6 = v0[3];

  return sub_2643929B0();
}

uint64_t sub_2643934E0(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 48);
  v7 = *(*v2 + 24);
  v8 = *v2;

  v9 = *(v5 + 40);
  if (v3)
  {
    v10 = sub_2643B0438();

    (v9)[2](v9, 0, v10);
    _Block_release(v9);
  }

  else
  {
    (v9)[2](v9, a1, 0);
    _Block_release(v9);
  }

  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_264393680(uint64_t a1)
{
  *(v2 + 432) = v1;
  v4 = sub_2643B04B8();
  *(v2 + 440) = v4;
  v5 = *(v4 - 8);
  *(v2 + 448) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 456) = swift_task_alloc();
  v7 = *(a1 + 112);
  *(v2 + 112) = *(a1 + 96);
  *(v2 + 128) = v7;
  *(v2 + 144) = *(a1 + 128);
  *(v2 + 160) = *(a1 + 144);
  v8 = *(a1 + 48);
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = v8;
  v9 = *(a1 + 80);
  *(v2 + 80) = *(a1 + 64);
  *(v2 + 96) = v9;
  v10 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v10;
  *(v2 + 464) = sub_2643B05D8();
  *(v2 + 472) = sub_2643B05C8();
  v12 = sub_2643B05A8();
  *(v2 + 480) = v12;
  *(v2 + 488) = v11;

  return MEMORY[0x2822009F8](sub_2643937AC, v12, v11);
}

uint64_t sub_2643937AC()
{
  v1 = *(v0 + 464);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D40, &qword_2643B1950);
  inited = swift_initStackObject();
  *(inited + 32) = 0x736E6F6974706FLL;
  *(inited + 16) = xmmword_2643B1900;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 72) = &type metadata for SOSUIWebRTCConfiguration;
  v3 = swift_allocObject();
  *(inited + 48) = v3;
  v4 = *(v0 + 32);
  *(v3 + 16) = *(v0 + 16);
  *(v3 + 32) = v4;
  v5 = *(v0 + 64);
  *(v3 + 48) = *(v0 + 48);
  *(v3 + 64) = v5;
  v6 = *(v0 + 96);
  *(v3 + 80) = *(v0 + 80);
  *(v3 + 96) = v6;
  v7 = *(v0 + 128);
  *(v3 + 112) = *(v0 + 112);
  *(v3 + 128) = v7;
  *(v3 + 144) = *(v0 + 144);
  *(v3 + 160) = *(v0 + 160);
  sub_26439B4E8(v0 + 16, v0 + 168);
  *(v0 + 496) = sub_26439B2CC(inited);
  swift_setDeallocating();
  sub_26439E21C(inited + 32, &qword_27FF66D48, &qword_2643B1958);
  *(v0 + 504) = sub_2643B05C8();
  v9 = sub_2643B05A8();
  *(v0 + 512) = v9;
  *(v0 + 520) = v8;

  return MEMORY[0x2822009F8](sub_26439391C, v9, v8);
}

uint64_t sub_26439391C()
{
  v25 = v0;
  v1 = *(*(v0 + 432) + OBJC_IVAR____TtC5SOSUI15SOSUIWebRTCView_rtcRPC);
  *(v0 + 528) = v1;
  if (v1)
  {
    v2 = *((*MEMORY[0x277D85000] & *v1) + 0xF8);
    v1;
    v23 = (v2 + *v2);
    v3 = v2[1];
    v4 = swift_task_alloc();
    *(v0 + 536) = v4;
    *v4 = v0;
    v4[1] = sub_264393C20;
    v5 = *(v0 + 496);

    return v23(v0 + 400, 0x72756769666E6F63, 0xE900000000000065, &unk_2875D34D8, v5);
  }

  else
  {
    v7 = *(v0 + 504);
    v9 = *(v0 + 448);
    v8 = *(v0 + 456);
    v10 = *(v0 + 440);

    v11 = sub_2643845D8();
    (*(v9 + 16))(v8, v11, v10);
    v12 = sub_2643B0498();
    v13 = sub_2643B0628();
    v14 = os_log_type_enabled(v12, v13);
    v16 = *(v0 + 448);
    v15 = *(v0 + 456);
    v17 = *(v0 + 440);
    if (v14)
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_26439AA1C(0x72756769666E6F63, 0xE900000000000065, &v24);
      _os_log_impl(&dword_264382000, v12, v13, "SOSUIWebRTCView: RPC call %s made before RPC has been initialized", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x266736CC0](v19, -1, -1);
      MEMORY[0x266736CC0](v18, -1, -1);
    }

    (*(v16 + 8))(v15, v17);
    *(v0 + 400) = 0u;
    *(v0 + 416) = 0u;
    v20 = *(v0 + 496);
    sub_26439E21C(v0 + 400, &qword_27FF66D38, &unk_2643B3C80);

    v21 = *(v0 + 480);
    v22 = *(v0 + 488);

    return MEMORY[0x2822009F8](sub_264393ED4, v21, v22);
  }
}

uint64_t sub_264393C20()
{
  v2 = *v1;
  v3 = *(*v1 + 536);
  v4 = *v1;
  *(*v1 + 544) = v0;

  v5 = *(v2 + 520);
  v6 = *(v2 + 512);
  if (v0)
  {
    v7 = sub_264393DEC;
  }

  else
  {
    v7 = sub_264393D5C;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_264393D5C()
{
  v1 = v0[66];
  v2 = v0[63];

  v3 = v0[62];
  sub_26439E21C((v0 + 50), &qword_27FF66D38, &unk_2643B3C80);

  v4 = v0[60];
  v5 = v0[61];

  return MEMORY[0x2822009F8](sub_264393ED4, v4, v5);
}

uint64_t sub_264393DEC()
{
  v1 = v0[66];
  v2 = v0[63];

  v3 = v0[60];
  v4 = v0[61];

  return MEMORY[0x2822009F8](sub_264393E58, v3, v4);
}

uint64_t sub_264393E58()
{
  v1 = v0[62];
  v2 = v0[59];
  v3 = v0[57];

  v4 = v0[1];
  v5 = v0[68];

  return v4();
}

uint64_t sub_264393ED4()
{
  v1 = v0[59];
  v2 = v0[57];

  v3 = v0[1];

  return v3();
}

uint64_t sub_264393F44(double a1)
{
  *(v2 + 480) = v1;
  *(v2 + 472) = a1;
  sub_2643B05D8();
  *(v2 + 488) = sub_2643B05C8();
  v4 = sub_2643B05A8();
  *(v2 + 496) = v4;
  *(v2 + 504) = v3;

  return MEMORY[0x2822009F8](sub_264393FE0, v4, v3);
}

uint64_t sub_264393FE0()
{
  v16 = v0;
  v1 = *(v0 + 480);
  v2 = *(v0 + 472);
  sub_2643A202C(v14);
  *&v14[0] = v2;
  BYTE8(v14[0]) = 0;
  v3 = v14[5];
  *(v0 + 80) = v14[4];
  *(v0 + 96) = v3;
  v4 = v14[3];
  *(v0 + 48) = v14[2];
  *(v0 + 64) = v4;
  *(v0 + 160) = v15;
  v5 = v14[8];
  v6 = v14[6];
  *(v0 + 128) = v14[7];
  *(v0 + 144) = v5;
  *(v0 + 112) = v6;
  v7 = v14[1];
  *(v0 + 16) = v14[0];
  *(v0 + 32) = v7;
  v8 = *((*MEMORY[0x277D85000] & *v1) + 0x210);
  v13 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v0 + 512) = v10;
  *v10 = v0;
  v10[1] = sub_264394180;
  v11 = *(v0 + 480);

  return v13(v0 + 16);
}

uint64_t sub_264394180()
{
  v2 = *v1;
  v3 = *(*v1 + 512);
  v22 = *v1;
  *(*v1 + 520) = v0;

  if (v0)
  {
    v4 = *(v2 + 16);
    *(v2 + 184) = *(v2 + 32);
    *(v2 + 168) = v4;
    v5 = *(v2 + 48);
    v6 = *(v2 + 64);
    v7 = *(v2 + 80);
    *(v2 + 248) = *(v2 + 96);
    *(v2 + 232) = v7;
    *(v2 + 216) = v6;
    *(v2 + 200) = v5;
    v8 = *(v2 + 112);
    v9 = *(v2 + 128);
    v10 = *(v2 + 144);
    *(v2 + 312) = *(v2 + 160);
    *(v2 + 280) = v9;
    *(v2 + 296) = v10;
    *(v2 + 264) = v8;
    sub_26439B544(v2 + 168);
    v11 = *(v2 + 496);
    v12 = *(v2 + 504);
    v13 = sub_2643A0004;
  }

  else
  {
    v14 = *(v2 + 32);
    *(v2 + 320) = *(v2 + 16);
    *(v2 + 336) = v14;
    v15 = *(v2 + 48);
    v16 = *(v2 + 64);
    v17 = *(v2 + 96);
    *(v2 + 384) = *(v2 + 80);
    *(v2 + 400) = v17;
    *(v2 + 352) = v15;
    *(v2 + 368) = v16;
    v18 = *(v2 + 112);
    v19 = *(v2 + 128);
    v20 = *(v2 + 144);
    *(v2 + 464) = *(v2 + 160);
    *(v2 + 432) = v19;
    *(v2 + 448) = v20;
    *(v2 + 416) = v18;
    sub_26439B544(v2 + 320);
    v11 = *(v2 + 496);
    v12 = *(v2 + 504);
    v13 = sub_2643A0174;
  }

  return MEMORY[0x2822009F8](v13, v11, v12);
}

uint64_t sub_264394494(uint64_t a1, uint64_t a2, double a3)
{
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  *(v3 + 16) = a3;
  sub_2643B05D8();
  *(v3 + 40) = sub_2643B05C8();
  v5 = sub_2643B05A8();

  return MEMORY[0x2822009F8](sub_264394530, v5, v4);
}

uint64_t sub_264394530()
{
  v2 = *(v0 + 4);
  v1 = *(v0 + 5);
  v3 = *(v0 + 3);

  *(v0 + 6) = _Block_copy(v3);
  v4 = v2;
  v5 = swift_task_alloc();
  *(v0 + 7) = v5;
  *v5 = v0;
  v5[1] = sub_2643A0170;
  v6 = *(v0 + 4);
  v7 = v0[2];

  return sub_264393F44(v7);
}

uint64_t sub_2643945E4(double a1)
{
  *(v2 + 480) = v1;
  *(v2 + 472) = a1;
  sub_2643B05D8();
  *(v2 + 488) = sub_2643B05C8();
  v4 = sub_2643B05A8();
  *(v2 + 496) = v4;
  *(v2 + 504) = v3;

  return MEMORY[0x2822009F8](sub_264394680, v4, v3);
}

uint64_t sub_264394680()
{
  v24 = v0;
  v1 = *(v0 + 480);
  v2 = *(v0 + 472);
  sub_2643A202C(&v14);
  *&v15 = v2;
  BYTE8(v15) = 0;
  v3 = v19;
  *(v0 + 80) = v18;
  *(v0 + 96) = v3;
  v4 = v17;
  *(v0 + 48) = v16;
  *(v0 + 64) = v4;
  *(v0 + 160) = v23;
  v5 = v22;
  v6 = v20;
  *(v0 + 128) = v21;
  *(v0 + 144) = v5;
  *(v0 + 112) = v6;
  v7 = v15;
  *(v0 + 16) = v14;
  *(v0 + 32) = v7;
  v8 = *((*MEMORY[0x277D85000] & *v1) + 0x210);
  v13 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v0 + 512) = v10;
  *v10 = v0;
  v10[1] = sub_264394180;
  v11 = *(v0 + 480);

  return v13(v0 + 16);
}

uint64_t sub_2643949A4(uint64_t a1, uint64_t a2, double a3)
{
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  *(v3 + 16) = a3;
  sub_2643B05D8();
  *(v3 + 40) = sub_2643B05C8();
  v5 = sub_2643B05A8();

  return MEMORY[0x2822009F8](sub_264394A40, v5, v4);
}

uint64_t sub_264394A40()
{
  v2 = *(v0 + 4);
  v1 = *(v0 + 5);
  v3 = *(v0 + 3);

  *(v0 + 6) = _Block_copy(v3);
  v4 = v2;
  v5 = swift_task_alloc();
  *(v0 + 7) = v5;
  *v5 = v0;
  v5[1] = sub_2643A0170;
  v6 = *(v0 + 4);
  v7 = v0[2];

  return sub_2643945E4(v7);
}

uint64_t sub_264394AF4(double a1)
{
  *(v2 + 480) = v1;
  *(v2 + 472) = a1;
  sub_2643B05D8();
  *(v2 + 488) = sub_2643B05C8();
  v4 = sub_2643B05A8();
  *(v2 + 496) = v4;
  *(v2 + 504) = v3;

  return MEMORY[0x2822009F8](sub_264394B90, v4, v3);
}

uint64_t sub_264394B90()
{
  v23 = v0;
  v1 = *(v0 + 480);
  v2 = *(v0 + 472);
  sub_2643A202C(v14);
  *&v15 = v2;
  BYTE8(v15) = 0;
  v3 = v18;
  *(v0 + 80) = v17;
  *(v0 + 96) = v3;
  *(v0 + 160) = v22;
  v4 = v21;
  v5 = v19;
  *(v0 + 128) = v20;
  *(v0 + 144) = v4;
  *(v0 + 112) = v5;
  v6 = v16;
  *(v0 + 48) = v15;
  *(v0 + 64) = v6;
  v7 = v14[1];
  *(v0 + 16) = v14[0];
  *(v0 + 32) = v7;
  v8 = *((*MEMORY[0x277D85000] & *v1) + 0x210);
  v13 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v0 + 512) = v10;
  *v10 = v0;
  v10[1] = sub_264394180;
  v11 = *(v0 + 480);

  return v13(v0 + 16);
}

uint64_t sub_264394EB4(uint64_t a1, uint64_t a2, double a3)
{
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  *(v3 + 16) = a3;
  sub_2643B05D8();
  *(v3 + 40) = sub_2643B05C8();
  v5 = sub_2643B05A8();

  return MEMORY[0x2822009F8](sub_264394F50, v5, v4);
}

uint64_t sub_264394F50()
{
  v2 = *(v0 + 4);
  v1 = *(v0 + 5);
  v3 = *(v0 + 3);

  *(v0 + 6) = _Block_copy(v3);
  v4 = v2;
  v5 = swift_task_alloc();
  *(v0 + 7) = v5;
  *v5 = v0;
  v5[1] = sub_2643A0170;
  v6 = *(v0 + 4);
  v7 = v0[2];

  return sub_264394AF4(v7);
}

uint64_t sub_264395004(double a1)
{
  *(v2 + 480) = v1;
  *(v2 + 472) = a1;
  sub_2643B05D8();
  *(v2 + 488) = sub_2643B05C8();
  v4 = sub_2643B05A8();
  *(v2 + 496) = v4;
  *(v2 + 504) = v3;

  return MEMORY[0x2822009F8](sub_2643950A0, v4, v3);
}

uint64_t sub_2643950A0()
{
  v22 = v0;
  v1 = *(v0 + 480);
  v2 = *(v0 + 472);
  sub_2643A202C(v14);
  *&v15 = v2;
  BYTE8(v15) = 0;
  v3 = v17;
  *(v0 + 80) = v16;
  *(v0 + 96) = v3;
  *(v0 + 160) = v21;
  v4 = v20;
  v5 = v18;
  *(v0 + 128) = v19;
  *(v0 + 144) = v4;
  *(v0 + 112) = v5;
  v6 = v15;
  *(v0 + 48) = v14[2];
  *(v0 + 64) = v6;
  v7 = v14[1];
  *(v0 + 16) = v14[0];
  *(v0 + 32) = v7;
  v8 = *((*MEMORY[0x277D85000] & *v1) + 0x210);
  v13 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v0 + 512) = v10;
  *v10 = v0;
  v10[1] = sub_264394180;
  v11 = *(v0 + 480);

  return v13(v0 + 16);
}

uint64_t sub_2643953C4(uint64_t a1, uint64_t a2, double a3)
{
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  *(v3 + 16) = a3;
  sub_2643B05D8();
  *(v3 + 40) = sub_2643B05C8();
  v5 = sub_2643B05A8();

  return MEMORY[0x2822009F8](sub_264395460, v5, v4);
}

uint64_t sub_264395460()
{
  v2 = *(v0 + 4);
  v1 = *(v0 + 5);
  v3 = *(v0 + 3);

  *(v0 + 6) = _Block_copy(v3);
  v4 = v2;
  v5 = swift_task_alloc();
  *(v0 + 7) = v5;
  *v5 = v0;
  v5[1] = sub_2643A0170;
  v6 = *(v0 + 4);
  v7 = v0[2];

  return sub_264395004(v7);
}

uint64_t sub_264395514(double a1)
{
  *(v2 + 480) = v1;
  *(v2 + 472) = a1;
  sub_2643B05D8();
  *(v2 + 488) = sub_2643B05C8();
  v4 = sub_2643B05A8();
  *(v2 + 496) = v4;
  *(v2 + 504) = v3;

  return MEMORY[0x2822009F8](sub_2643955B0, v4, v3);
}

uint64_t sub_2643955B0()
{
  v21 = v0;
  v1 = *(v0 + 480);
  v2 = *(v0 + 472);
  sub_2643A202C(v14);
  *&v15 = v2;
  BYTE8(v15) = 0;
  v3 = v14[3];
  *(v0 + 48) = v14[2];
  *(v0 + 64) = v3;
  *(v0 + 160) = v20;
  v4 = v19;
  v5 = v17;
  *(v0 + 128) = v18;
  *(v0 + 144) = v4;
  v6 = v15;
  *(v0 + 96) = v16;
  *(v0 + 112) = v5;
  *(v0 + 80) = v6;
  v7 = v14[1];
  *(v0 + 16) = v14[0];
  *(v0 + 32) = v7;
  v8 = *((*MEMORY[0x277D85000] & *v1) + 0x210);
  v13 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v0 + 512) = v10;
  *v10 = v0;
  v10[1] = sub_264394180;
  v11 = *(v0 + 480);

  return v13(v0 + 16);
}

uint64_t sub_2643958D4(uint64_t a1, uint64_t a2, double a3)
{
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  *(v3 + 16) = a3;
  sub_2643B05D8();
  *(v3 + 40) = sub_2643B05C8();
  v5 = sub_2643B05A8();

  return MEMORY[0x2822009F8](sub_264395970, v5, v4);
}

uint64_t sub_264395970()
{
  v2 = *(v0 + 4);
  v1 = *(v0 + 5);
  v3 = *(v0 + 3);

  *(v0 + 6) = _Block_copy(v3);
  v4 = v2;
  v5 = swift_task_alloc();
  *(v0 + 7) = v5;
  *v5 = v0;
  v5[1] = sub_2643A0170;
  v6 = *(v0 + 4);
  v7 = v0[2];

  return sub_264395514(v7);
}

uint64_t sub_264395A24(double a1)
{
  *(v2 + 480) = v1;
  *(v2 + 472) = a1;
  sub_2643B05D8();
  *(v2 + 488) = sub_2643B05C8();
  v4 = sub_2643B05A8();
  *(v2 + 496) = v4;
  *(v2 + 504) = v3;

  return MEMORY[0x2822009F8](sub_264395AC0, v4, v3);
}

uint64_t sub_264395AC0()
{
  v20 = v0;
  v1 = *(v0 + 480);
  v2 = *(v0 + 472);
  sub_2643A202C(v14);
  *&v15 = v2;
  BYTE8(v15) = 0;
  v3 = v14[3];
  *(v0 + 48) = v14[2];
  *(v0 + 64) = v3;
  *(v0 + 160) = v19;
  v4 = v18;
  v5 = v16;
  *(v0 + 128) = v17;
  *(v0 + 144) = v4;
  v6 = v15;
  *(v0 + 80) = v14[4];
  *(v0 + 96) = v6;
  *(v0 + 112) = v5;
  v7 = v14[1];
  *(v0 + 16) = v14[0];
  *(v0 + 32) = v7;
  v8 = *((*MEMORY[0x277D85000] & *v1) + 0x210);
  v13 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v0 + 512) = v10;
  *v10 = v0;
  v10[1] = sub_264394180;
  v11 = *(v0 + 480);

  return v13(v0 + 16);
}

uint64_t sub_264395DE4(uint64_t a1, uint64_t a2, double a3)
{
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  *(v3 + 16) = a3;
  sub_2643B05D8();
  *(v3 + 40) = sub_2643B05C8();
  v5 = sub_2643B05A8();

  return MEMORY[0x2822009F8](sub_264395E80, v5, v4);
}

uint64_t sub_264395E80()
{
  v2 = *(v0 + 4);
  v1 = *(v0 + 5);
  v3 = *(v0 + 3);

  *(v0 + 6) = _Block_copy(v3);
  v4 = v2;
  v5 = swift_task_alloc();
  *(v0 + 7) = v5;
  *v5 = v0;
  v5[1] = sub_2643A0170;
  v6 = *(v0 + 4);
  v7 = v0[2];

  return sub_264395A24(v7);
}

uint64_t sub_264395F34(uint64_t a1, uint64_t a2)
{
  v3[156] = v2;
  v3[155] = a2;
  v3[154] = a1;
  sub_2643B05D8();
  v3[157] = sub_2643B05C8();
  v5 = sub_2643B05A8();
  v3[158] = v5;
  v3[159] = v4;

  return MEMORY[0x2822009F8](sub_264395FD8, v5, v4);
}

uint64_t sub_264395FD8()
{
  v1 = *(v0 + 1248);
  v2 = *(v0 + 1240);
  v3 = *(v0 + 1232);
  sub_2643A202C(v0 + 168);
  v4 = *(v0 + 288);

  *(v0 + 280) = v3;
  *(v0 + 288) = v2;
  v5 = *(v0 + 264);
  v6 = *(v0 + 280);
  v7 = *(v0 + 296);
  v8 = *(v0 + 216);
  *(v0 + 48) = *(v0 + 200);
  *(v0 + 64) = v8;
  v9 = *(v0 + 248);
  *(v0 + 80) = *(v0 + 232);
  *(v0 + 96) = v9;
  v10 = *(v0 + 184);
  *(v0 + 16) = *(v0 + 168);
  *(v0 + 32) = v10;
  v12 = *(v0 + 264);
  v11 = *(v0 + 280);
  *(v0 + 112) = v5;
  *(v0 + 128) = v11;
  *(v0 + 144) = v7;
  v13 = *(v0 + 248);
  *(v0 + 384) = *(v0 + 232);
  *(v0 + 400) = v13;
  v14 = *(v0 + 216);
  *(v0 + 352) = *(v0 + 200);
  *(v0 + 368) = v14;
  v15 = *(v0 + 296);
  *(v0 + 432) = v6;
  *(v0 + 448) = v15;
  *(v0 + 160) = *(v0 + 312);
  *(v0 + 464) = *(v0 + 312);
  *(v0 + 416) = v12;
  v16 = *(v0 + 184);
  *(v0 + 320) = *(v0 + 168);
  *(v0 + 336) = v16;
  v17 = *((*MEMORY[0x277D85000] & *v1) + 0x210);
  sub_26439B4E8(v0 + 16, v0 + 472);
  v22 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  *(v0 + 1280) = v19;
  *v19 = v0;
  v19[1] = sub_2643961E0;
  v20 = *(v0 + 1248);

  return v22(v0 + 320);
}

uint64_t sub_2643961E0()
{
  v2 = *v1;
  v3 = *(*v1 + 1280);
  v21 = *v1;
  *(*v1 + 1288) = v0;

  v4 = *(v2 + 336);
  if (v0)
  {
    *(v2 + 776) = *(v2 + 320);
    *(v2 + 792) = v4;
    v5 = *(v2 + 352);
    v6 = *(v2 + 368);
    v7 = *(v2 + 400);
    *(v2 + 840) = *(v2 + 384);
    *(v2 + 856) = v7;
    *(v2 + 808) = v5;
    *(v2 + 824) = v6;
    v8 = *(v2 + 416);
    v9 = *(v2 + 432);
    v10 = *(v2 + 448);
    *(v2 + 920) = *(v2 + 464);
    *(v2 + 888) = v9;
    *(v2 + 904) = v10;
    *(v2 + 872) = v8;
    sub_26439B544(v2 + 776);
    v11 = *(v2 + 1272);
    v12 = *(v2 + 1264);
    v13 = sub_26439641C;
  }

  else
  {
    *(v2 + 1080) = *(v2 + 320);
    *(v2 + 1096) = v4;
    v14 = *(v2 + 352);
    v15 = *(v2 + 368);
    v16 = *(v2 + 400);
    *(v2 + 1144) = *(v2 + 384);
    *(v2 + 1160) = v16;
    *(v2 + 1112) = v14;
    *(v2 + 1128) = v15;
    v17 = *(v2 + 416);
    v18 = *(v2 + 432);
    v19 = *(v2 + 448);
    *(v2 + 1224) = *(v2 + 464);
    *(v2 + 1192) = v18;
    *(v2 + 1208) = v19;
    *(v2 + 1176) = v17;
    sub_26439B544(v2 + 1080);
    v11 = *(v2 + 1272);
    v12 = *(v2 + 1264);
    v13 = sub_26439636C;
  }

  return MEMORY[0x2822009F8](v13, v12, v11);
}

uint64_t sub_26439636C()
{
  v1 = *(v0 + 1256);

  v2 = *(v0 + 264);
  *(v0 + 1040) = *(v0 + 280);
  *(v0 + 1056) = *(v0 + 296);
  *(v0 + 1072) = *(v0 + 312);
  v3 = *(v0 + 216);
  *(v0 + 960) = *(v0 + 200);
  *(v0 + 976) = v3;
  v4 = *(v0 + 248);
  *(v0 + 992) = *(v0 + 232);
  *(v0 + 1008) = v4;
  *(v0 + 1024) = v2;
  v5 = *(v0 + 184);
  *(v0 + 928) = *(v0 + 168);
  *(v0 + 944) = v5;
  sub_26439B544(v0 + 928);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_26439641C()
{
  v1 = *(v0 + 1256);

  v2 = *(v0 + 280);
  *(v0 + 720) = *(v0 + 264);
  *(v0 + 736) = v2;
  *(v0 + 752) = *(v0 + 296);
  *(v0 + 768) = *(v0 + 312);
  v3 = *(v0 + 216);
  *(v0 + 656) = *(v0 + 200);
  *(v0 + 672) = v3;
  v4 = *(v0 + 248);
  *(v0 + 688) = *(v0 + 232);
  *(v0 + 704) = v4;
  v5 = *(v0 + 184);
  *(v0 + 624) = *(v0 + 168);
  *(v0 + 640) = v5;
  sub_26439B544(v0 + 624);
  v6 = *(v0 + 8);
  v7 = *(v0 + 1288);

  return v6();
}

uint64_t sub_264396650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_2643B05D8();
  v3[5] = sub_2643B05C8();
  v5 = sub_2643B05A8();

  return MEMORY[0x2822009F8](sub_2643966EC, v5, v4);
}

uint64_t sub_2643966EC()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];

  v0[6] = _Block_copy(v4);
  v5 = sub_2643B04F8();
  v7 = v6;
  v0[7] = v6;
  v8 = v2;
  v9 = swift_task_alloc();
  v0[8] = v9;
  *v9 = v0;
  v9[1] = sub_2643A0168;
  v10 = v0[4];

  return sub_264395F34(v5, v7);
}

uint64_t sub_2643967C8(char a1)
{
  *(v2 + 472) = v1;
  *(v2 + 161) = a1;
  sub_2643B05D8();
  *(v2 + 480) = sub_2643B05C8();
  v4 = sub_2643B05A8();
  *(v2 + 488) = v4;
  *(v2 + 496) = v3;

  return MEMORY[0x2822009F8](sub_264396864, v4, v3);
}

uint64_t sub_264396864()
{
  v16 = v0;
  v1 = *(v0 + 472);
  v2 = *(v0 + 161);
  sub_2643A202C(v13);
  LOBYTE(v14) = v2;
  v3 = v13[5];
  *(v0 + 80) = v13[4];
  *(v0 + 96) = v3;
  v4 = v13[3];
  *(v0 + 48) = v13[2];
  *(v0 + 64) = v4;
  *(v0 + 160) = v15;
  v5 = v13[7];
  *(v0 + 112) = v13[6];
  *(v0 + 128) = v5;
  *(v0 + 144) = v14;
  v6 = v13[1];
  *(v0 + 16) = v13[0];
  *(v0 + 32) = v6;
  v7 = *((*MEMORY[0x277D85000] & *v1) + 0x210);
  v12 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v0 + 504) = v9;
  *v9 = v0;
  v9[1] = sub_264396A00;
  v10 = *(v0 + 472);

  return v12(v0 + 16);
}

uint64_t sub_264396A00()
{
  v2 = *v1;
  v3 = *(*v1 + 504);
  v22 = *v1;
  *(*v1 + 512) = v0;

  if (v0)
  {
    v4 = *(v2 + 16);
    *(v2 + 184) = *(v2 + 32);
    *(v2 + 168) = v4;
    v5 = *(v2 + 48);
    v6 = *(v2 + 64);
    v7 = *(v2 + 80);
    *(v2 + 248) = *(v2 + 96);
    *(v2 + 232) = v7;
    *(v2 + 216) = v6;
    *(v2 + 200) = v5;
    v8 = *(v2 + 112);
    v9 = *(v2 + 128);
    v10 = *(v2 + 144);
    *(v2 + 312) = *(v2 + 160);
    *(v2 + 280) = v9;
    *(v2 + 296) = v10;
    *(v2 + 264) = v8;
    sub_26439B544(v2 + 168);
    v11 = *(v2 + 488);
    v12 = *(v2 + 496);
    v13 = sub_264396BF4;
  }

  else
  {
    v14 = *(v2 + 32);
    *(v2 + 320) = *(v2 + 16);
    *(v2 + 336) = v14;
    v15 = *(v2 + 48);
    v16 = *(v2 + 64);
    v17 = *(v2 + 96);
    *(v2 + 384) = *(v2 + 80);
    *(v2 + 400) = v17;
    *(v2 + 352) = v15;
    *(v2 + 368) = v16;
    v18 = *(v2 + 112);
    v19 = *(v2 + 128);
    v20 = *(v2 + 144);
    *(v2 + 464) = *(v2 + 160);
    *(v2 + 432) = v19;
    *(v2 + 448) = v20;
    *(v2 + 416) = v18;
    sub_26439B544(v2 + 320);
    v11 = *(v2 + 488);
    v12 = *(v2 + 496);
    v13 = sub_264396B90;
  }

  return MEMORY[0x2822009F8](v13, v11, v12);
}

uint64_t sub_264396B90()
{
  v1 = *(v0 + 480);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_264396BF4()
{
  v1 = v0[60];

  v2 = v0[1];
  v3 = v0[64];

  return v2();
}

uint64_t sub_264396DDC(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  *(v3 + 56) = a1;
  sub_2643B05D8();
  *(v3 + 32) = sub_2643B05C8();
  v5 = sub_2643B05A8();

  return MEMORY[0x2822009F8](sub_264396E78, v5, v4);
}

uint64_t sub_264396E78()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 16);

  *(v0 + 40) = _Block_copy(v3);
  v4 = v2;
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_2643A016C;
  v6 = *(v0 + 24);
  v7 = *(v0 + 56);

  return sub_2643967C8(v7);
}

uint64_t sub_264396F30(uint64_t a1)
{
  v2[59] = a1;
  v2[60] = v1;
  sub_2643B05D8();
  v2[61] = sub_2643B05C8();
  v4 = sub_2643B05A8();
  v2[62] = v4;
  v2[63] = v3;

  return MEMORY[0x2822009F8](sub_264396FC8, v4, v3);
}

uint64_t sub_264396FC8()
{
  v19 = v0;
  v1 = *(v0 + 472);
  v2 = *(v0 + 480);
  sub_2643A202C(v14);
  *&v15 = v1;
  BYTE8(v15) = 0;
  v3 = v14[5];
  *(v0 + 80) = v14[4];
  *(v0 + 96) = v3;
  v4 = v14[3];
  *(v0 + 48) = v14[2];
  *(v0 + 64) = v4;
  *(v0 + 160) = v18;
  v5 = v17;
  v6 = v15;
  *(v0 + 128) = v16;
  *(v0 + 144) = v5;
  *(v0 + 112) = v6;
  v7 = v14[1];
  *(v0 + 16) = v14[0];
  *(v0 + 32) = v7;
  v8 = *((*MEMORY[0x277D85000] & *v2) + 0x210);
  v13 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v0 + 512) = v10;
  *v10 = v0;
  v10[1] = sub_264394180;
  v11 = *(v0 + 480);

  return v13(v0 + 16);
}

uint64_t sub_2643972E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_2643B05D8();
  v3[5] = sub_2643B05C8();
  v5 = sub_2643B05A8();

  return MEMORY[0x2822009F8](sub_264397384, v5, v4);
}

uint64_t sub_264397384()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];

  v0[6] = _Block_copy(v3);
  v4 = v2;
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_2643A0170;
  v6 = v0[4];
  v7 = v0[2];

  return sub_264396F30(v7);
}

uint64_t sub_26439743C(double a1)
{
  *(v2 + 480) = v1;
  *(v2 + 472) = a1;
  sub_2643B05D8();
  *(v2 + 488) = sub_2643B05C8();
  v4 = sub_2643B05A8();
  *(v2 + 496) = v4;
  *(v2 + 504) = v3;

  return MEMORY[0x2822009F8](sub_2643974D8, v4, v3);
}

uint64_t sub_2643974D8()
{
  v16 = v0;
  v1 = *(v0 + 480);
  v2 = *(v0 + 472);
  sub_2643A202C(v13);
  *(&v14 + 1) = v2;
  v15 = 0;
  v3 = v13[5];
  *(v0 + 80) = v13[4];
  *(v0 + 96) = v3;
  v4 = v13[3];
  *(v0 + 48) = v13[2];
  *(v0 + 64) = v4;
  *(v0 + 160) = 0;
  v5 = v13[7];
  *(v0 + 112) = v13[6];
  *(v0 + 128) = v5;
  *(v0 + 144) = v14;
  v6 = v13[1];
  *(v0 + 16) = v13[0];
  *(v0 + 32) = v6;
  v7 = *((*MEMORY[0x277D85000] & *v1) + 0x210);
  v12 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v0 + 512) = v9;
  *v9 = v0;
  v9[1] = sub_264397674;
  v10 = *(v0 + 480);

  return v12(v0 + 16);
}

uint64_t sub_264397674()
{
  v2 = *v1;
  v3 = *(*v1 + 512);
  v22 = *v1;
  *(*v1 + 520) = v0;

  if (v0)
  {
    v4 = *(v2 + 16);
    *(v2 + 184) = *(v2 + 32);
    *(v2 + 168) = v4;
    v5 = *(v2 + 48);
    v6 = *(v2 + 64);
    v7 = *(v2 + 80);
    *(v2 + 248) = *(v2 + 96);
    *(v2 + 232) = v7;
    *(v2 + 216) = v6;
    *(v2 + 200) = v5;
    v8 = *(v2 + 112);
    v9 = *(v2 + 128);
    v10 = *(v2 + 144);
    *(v2 + 312) = *(v2 + 160);
    *(v2 + 280) = v9;
    *(v2 + 296) = v10;
    *(v2 + 264) = v8;
    sub_26439B544(v2 + 168);
    v11 = *(v2 + 496);
    v12 = *(v2 + 504);
    v13 = sub_264397868;
  }

  else
  {
    v14 = *(v2 + 32);
    *(v2 + 320) = *(v2 + 16);
    *(v2 + 336) = v14;
    v15 = *(v2 + 48);
    v16 = *(v2 + 64);
    v17 = *(v2 + 96);
    *(v2 + 384) = *(v2 + 80);
    *(v2 + 400) = v17;
    *(v2 + 352) = v15;
    *(v2 + 368) = v16;
    v18 = *(v2 + 112);
    v19 = *(v2 + 128);
    v20 = *(v2 + 144);
    *(v2 + 464) = *(v2 + 160);
    *(v2 + 432) = v19;
    *(v2 + 448) = v20;
    *(v2 + 416) = v18;
    sub_26439B544(v2 + 320);
    v11 = *(v2 + 496);
    v12 = *(v2 + 504);
    v13 = sub_264397804;
  }

  return MEMORY[0x2822009F8](v13, v11, v12);
}

uint64_t sub_264397804()
{
  v1 = *(v0 + 488);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_264397868()
{
  v1 = v0[61];

  v2 = v0[1];
  v3 = v0[65];

  return v2();
}

uint64_t sub_264397A50(uint64_t a1, uint64_t a2, double a3)
{
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  *(v3 + 16) = a3;
  sub_2643B05D8();
  *(v3 + 40) = sub_2643B05C8();
  v5 = sub_2643B05A8();

  return MEMORY[0x2822009F8](sub_264397AEC, v5, v4);
}

uint64_t sub_264397AEC()
{
  v2 = *(v0 + 4);
  v1 = *(v0 + 5);
  v3 = *(v0 + 3);

  *(v0 + 6) = _Block_copy(v3);
  v4 = v2;
  v5 = swift_task_alloc();
  *(v0 + 7) = v5;
  *v5 = v0;
  v5[1] = sub_264397BA0;
  v6 = *(v0 + 4);
  v7 = v0[2];

  return sub_26439743C(v7);
}

uint64_t sub_264397BA0()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 32);
  v7 = *v1;

  v8 = *(v3 + 48);
  if (v2)
  {
    v9 = sub_2643B0438();

    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(v8, 0);
  }

  _Block_release(*(v4 + 48));
  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_264397D24(char a1)
{
  *(v2 + 128) = v1;
  *(v2 + 248) = a1;
  v3 = sub_2643B04B8();
  *(v2 + 136) = v3;
  v4 = *(v3 - 8);
  *(v2 + 144) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 152) = swift_task_alloc();
  *(v2 + 160) = sub_2643B05D8();
  *(v2 + 168) = sub_2643B05C8();
  v7 = sub_2643B05A8();
  *(v2 + 176) = v7;
  *(v2 + 184) = v6;

  return MEMORY[0x2822009F8](sub_264397E20, v7, v6);
}

uint64_t sub_264397E20()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 248);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D40, &qword_2643B1950);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2643B1900;
  *(inited + 32) = 0x6C62617972746572;
  v4 = inited + 32;
  *(inited + 40) = 0xE900000000000065;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = v2;
  *(v0 + 192) = sub_26439B2CC(inited);
  swift_setDeallocating();
  sub_26439E21C(v4, &qword_27FF66D48, &qword_2643B1958);
  *(v0 + 200) = sub_2643B05C8();
  v6 = sub_2643B05A8();
  *(v0 + 208) = v6;
  *(v0 + 216) = v5;

  return MEMORY[0x2822009F8](sub_264397F40, v6, v5);
}

uint64_t sub_264397F40()
{
  v25 = v0;
  v1 = *(*(v0 + 128) + OBJC_IVAR____TtC5SOSUI15SOSUIWebRTCView_rtcRPC);
  *(v0 + 224) = v1;
  if (v1)
  {
    v2 = *((*MEMORY[0x277D85000] & *v1) + 0xF8);
    v1;
    v23 = (v2 + *v2);
    v3 = v2[1];
    v4 = swift_task_alloc();
    *(v0 + 232) = v4;
    *v4 = v0;
    v4[1] = sub_264398244;
    v5 = *(v0 + 192);

    return v23(v0 + 96, 0x6F7272456F546F67, 0xE900000000000072, &unk_2875D35E8, v5);
  }

  else
  {
    v7 = *(v0 + 200);
    v9 = *(v0 + 144);
    v8 = *(v0 + 152);
    v10 = *(v0 + 136);

    v11 = sub_2643845D8();
    (*(v9 + 16))(v8, v11, v10);
    v12 = sub_2643B0498();
    v13 = sub_2643B0628();
    v14 = os_log_type_enabled(v12, v13);
    v16 = *(v0 + 144);
    v15 = *(v0 + 152);
    v17 = *(v0 + 136);
    if (v14)
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_26439AA1C(0x6F7272456F546F67, 0xE900000000000072, &v24);
      _os_log_impl(&dword_264382000, v12, v13, "SOSUIWebRTCView: RPC call %s made before RPC has been initialized", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x266736CC0](v19, -1, -1);
      MEMORY[0x266736CC0](v18, -1, -1);
    }

    (*(v16 + 8))(v15, v17);
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    v20 = *(v0 + 192);
    sub_26439E21C(v0 + 96, &qword_27FF66D38, &unk_2643B3C80);

    v21 = *(v0 + 176);
    v22 = *(v0 + 184);

    return MEMORY[0x2822009F8](sub_2643984F8, v21, v22);
  }
}

uint64_t sub_264398244()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *v1;
  *(*v1 + 240) = v0;

  v5 = *(v2 + 216);
  v6 = *(v2 + 208);
  if (v0)
  {
    v7 = sub_264398410;
  }

  else
  {
    v7 = sub_264398380;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_264398380()
{
  v1 = v0[28];
  v2 = v0[25];

  v3 = v0[24];
  sub_26439E21C((v0 + 12), &qword_27FF66D38, &unk_2643B3C80);

  v4 = v0[22];
  v5 = v0[23];

  return MEMORY[0x2822009F8](sub_2643984F8, v4, v5);
}

uint64_t sub_264398410()
{
  v1 = v0[28];
  v2 = v0[25];

  v3 = v0[22];
  v4 = v0[23];

  return MEMORY[0x2822009F8](sub_26439847C, v3, v4);
}

uint64_t sub_26439847C()
{
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[19];

  v4 = v0[1];
  v5 = v0[30];

  return v4();
}

uint64_t sub_2643984F8()
{
  v1 = v0[21];
  v2 = v0[19];

  v3 = v0[1];

  return v3();
}

uint64_t sub_2643986EC(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  *(v3 + 56) = a1;
  sub_2643B05D8();
  *(v3 + 32) = sub_2643B05C8();
  v5 = sub_2643B05A8();

  return MEMORY[0x2822009F8](sub_264398788, v5, v4);
}

uint64_t sub_264398788()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 16);

  *(v0 + 40) = _Block_copy(v3);
  v4 = v2;
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_2643A016C;
  v6 = *(v0 + 24);
  v7 = *(v0 + 56);

  return sub_264397D24(v7);
}

uint64_t sub_264398840()
{
  v1[6] = v0;
  v2 = sub_2643B04B8();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = sub_2643B05D8();
  v1[11] = sub_2643B05C8();
  v6 = sub_2643B05A8();
  v1[12] = v6;
  v1[13] = v5;

  return MEMORY[0x2822009F8](sub_264398938, v6, v5);
}

uint64_t sub_264398938()
{
  v1 = v0[10];
  v0[14] = sub_26439B2CC(MEMORY[0x277D84F90]);
  v0[15] = sub_2643B05C8();
  v3 = sub_2643B05A8();
  v0[16] = v3;
  v0[17] = v2;

  return MEMORY[0x2822009F8](sub_2643989D4, v3, v2);
}

uint64_t sub_2643989D4()
{
  v26 = v0;
  v1 = *(*(v0 + 48) + OBJC_IVAR____TtC5SOSUI15SOSUIWebRTCView_rtcRPC);
  *(v0 + 144) = v1;
  if (v1)
  {
    v2 = *((*MEMORY[0x277D85000] & *v1) + 0xF8);
    v1;
    v24 = (v2 + *v2);
    v3 = v2[1];
    v4 = swift_task_alloc();
    *(v0 + 152) = v4;
    *v4 = v0;
    v4[1] = sub_2643893CC;
    v5 = *(v0 + 112);
    v6 = MEMORY[0x277D84F90];

    return v24(v0 + 16, 0xD00000000000001ALL, 0x80000002643B3EF0, v6, v5);
  }

  else
  {
    v8 = *(v0 + 120);
    v10 = *(v0 + 64);
    v9 = *(v0 + 72);
    v11 = *(v0 + 56);

    v12 = sub_2643845D8();
    (*(v10 + 16))(v9, v12, v11);
    v13 = sub_2643B0498();
    v14 = sub_2643B0628();
    v15 = os_log_type_enabled(v13, v14);
    v17 = *(v0 + 64);
    v16 = *(v0 + 72);
    v18 = *(v0 + 56);
    if (v15)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v25 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_26439AA1C(0xD00000000000001ALL, 0x80000002643B3EF0, &v25);
      _os_log_impl(&dword_264382000, v13, v14, "SOSUIWebRTCView: RPC call %s made before RPC has been initialized", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x266736CC0](v20, -1, -1);
      MEMORY[0x266736CC0](v19, -1, -1);
    }

    (*(v17 + 8))(v16, v18);
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    v21 = *(v0 + 112);
    sub_26439E21C(v0 + 16, &qword_27FF66D38, &unk_2643B3C80);

    v22 = *(v0 + 96);
    v23 = *(v0 + 104);

    return MEMORY[0x2822009F8](sub_2643A0008, v22, v23);
  }
}

uint64_t sub_264398E58(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_2643B05D8();
  v2[4] = sub_2643B05C8();
  v4 = sub_2643B05A8();

  return MEMORY[0x2822009F8](sub_264398EF0, v4, v3);
}

uint64_t sub_264398EF0()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  v0[5] = _Block_copy(v3);
  v4 = v2;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_2643A016C;
  v6 = v0[3];

  return sub_264398840();
}

void sub_264398FA0(unint64_t a1)
{
  v2 = v1;
  v4 = sub_2643B04B8();
  v5 = *(v4 - 8);
  v151 = v4;
  v152 = v5;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v145 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v145 = &v145 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v146 = &v145 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v147 = &v145 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v148 = &v145 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v149 = &v145 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v145 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v145 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v145 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v145 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v145 - v33;
  v35 = MEMORY[0x28223BE20](v32);
  v37 = &v145 - v36;
  v38 = (*((*MEMORY[0x277D85000] & *v1) + 0xD0))(v35);
  if (!v38)
  {
    return;
  }

  v150 = v38;
  v39 = a1 >> 61;
  v40 = a1;
  if ((a1 >> 61) <= 2)
  {
    if (v39)
    {
      v41 = v152;
      if (v39 == 1)
      {
        v42 = a1 & 0x1FFFFFFFFFFFFFFFLL;
        v43 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + OBJC_IVAR____TtC5SOSUI23SOSUIWebRTCErrorMessage_retryable);
        v44 = sub_2643845D8();
        v45 = *(v41 + 16);
        v46 = v151;
        if (v43)
        {
          v45(v34, v44, v151);
          sub_26439B5D4(v40);
          v47 = v40;
          v48 = sub_2643B0498();
          v49 = sub_2643B0638();
          if (os_log_type_enabled(v48, v49))
          {
            v50 = swift_slowAlloc();
            v51 = swift_slowAlloc();
            v154[0] = v51;
            *v50 = 134218754;
            *(v50 + 4) = *(v42 + OBJC_IVAR____TtC5SOSUI23SOSUIWebRTCErrorMessage_errorCode);
            sub_26439B598(v47);
            *(v50 + 12) = 2080;
            *(v50 + 14) = sub_26439AA1C(*(v42 + OBJC_IVAR____TtC5SOSUI23SOSUIWebRTCErrorMessage_error), *(v42 + OBJC_IVAR____TtC5SOSUI23SOSUIWebRTCErrorMessage_error + 8), v154);
            *(v50 + 22) = 2080;
            v52 = *(v42 + OBJC_IVAR____TtC5SOSUI23SOSUIWebRTCErrorMessage_lastState);
            v53 = SOSUIWebRTCStateName.getValue()();
            v54 = sub_26439AA1C(v53._countAndFlagsBits, v53._object, v154);

            *(v50 + 24) = v54;
            *(v50 + 32) = 2080;
            *(v50 + 34) = sub_26439AA1C(*(v42 + OBJC_IVAR____TtC5SOSUI23SOSUIWebRTCErrorMessage_stack), *(v42 + OBJC_IVAR____TtC5SOSUI23SOSUIWebRTCErrorMessage_stack + 8), v154);
            _os_log_impl(&dword_264382000, v48, v49, "SOSUIWebRTCView.messageWasReceived: web client retryable fatal error message received:\nerrorCode: %ld\nerror: %s\nlast state: %s\nstack: %s", v50, 0x2Au);
            swift_arrayDestroy();
            MEMORY[0x266736CC0](v51, -1, -1);
            MEMORY[0x266736CC0](v50, -1, -1);

            (*(v41 + 8))(v34, v151);
LABEL_63:
            [v150 webRTCErrorWithError_];
            goto LABEL_64;
          }

          sub_26439B598(v40);

          v139 = *(v41 + 8);
          v140 = v34;
        }

        else
        {
          v45(v31, v44, v151);
          sub_26439B5D4(v40);
          v121 = v40;
          v122 = sub_2643B0498();
          v123 = sub_2643B0638();
          if (os_log_type_enabled(v122, v123))
          {
            v124 = swift_slowAlloc();
            v125 = swift_slowAlloc();
            v154[0] = v125;
            *v124 = 134218754;
            *(v124 + 4) = *(v42 + OBJC_IVAR____TtC5SOSUI23SOSUIWebRTCErrorMessage_errorCode);
            sub_26439B598(v121);
            *(v124 + 12) = 2080;
            *(v124 + 14) = sub_26439AA1C(*(v42 + OBJC_IVAR____TtC5SOSUI23SOSUIWebRTCErrorMessage_error), *(v42 + OBJC_IVAR____TtC5SOSUI23SOSUIWebRTCErrorMessage_error + 8), v154);
            *(v124 + 22) = 2080;
            v126 = *(v42 + OBJC_IVAR____TtC5SOSUI23SOSUIWebRTCErrorMessage_lastState);
            v127 = SOSUIWebRTCStateName.getValue()();
            v128 = sub_26439AA1C(v127._countAndFlagsBits, v127._object, v154);

            *(v124 + 24) = v128;
            *(v124 + 32) = 2080;
            *(v124 + 34) = sub_26439AA1C(*(v42 + OBJC_IVAR____TtC5SOSUI23SOSUIWebRTCErrorMessage_stack), *(v42 + OBJC_IVAR____TtC5SOSUI23SOSUIWebRTCErrorMessage_stack + 8), v154);
            _os_log_impl(&dword_264382000, v122, v123, "SOSUIWebRTCView.messageWasReceived: web client fatal error message received:\nerrorCode: %ld\nerror: %s\nlast state: %s\nstack: %s", v124, 0x2Au);
            swift_arrayDestroy();
            MEMORY[0x266736CC0](v125, -1, -1);
            MEMORY[0x266736CC0](v124, -1, -1);

            (*(v41 + 8))(v31, v151);
            goto LABEL_63;
          }

          sub_26439B598(v40);

          v139 = *(v41 + 8);
          v140 = v31;
        }

        v139(v140, v46);
        goto LABEL_63;
      }

      v99 = (a1 & 0x1FFFFFFFFFFFFFFFLL);
      v100 = sub_2643845D8();
      v101 = v151;
      (*(v41 + 16))(v28, v100, v151);
      sub_26439B5D4(v40);
      v102 = v40;
      v103 = sub_2643B0498();
      v104 = sub_2643B0648();
      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        v106 = v105;
        *v105 = 134219520;
        v107 = *&v99[OBJC_IVAR____TtC5SOSUI25SOSUIWebRTCQualityMessage_bitrate];
        if (v99[OBJC_IVAR____TtC5SOSUI25SOSUIWebRTCQualityMessage_bitrate + 8])
        {
          v107 = 0.0;
        }

        *(v105 + 4) = v107;
        *(v105 + 12) = 2048;
        v108 = *&v99[OBJC_IVAR____TtC5SOSUI25SOSUIWebRTCQualityMessage_availableBitrate];
        if (v99[OBJC_IVAR____TtC5SOSUI25SOSUIWebRTCQualityMessage_availableBitrate + 8])
        {
          v108 = 0.0;
        }

        *(v105 + 14) = v108;
        *(v105 + 22) = 2048;
        v109 = *&v99[OBJC_IVAR____TtC5SOSUI25SOSUIWebRTCQualityMessage_packetLoss];
        if (v99[OBJC_IVAR____TtC5SOSUI25SOSUIWebRTCQualityMessage_packetLoss + 8])
        {
          v109 = 0.0;
        }

        *(v105 + 24) = v109;
        *(v105 + 32) = 2048;
        v110 = *&v99[OBJC_IVAR____TtC5SOSUI25SOSUIWebRTCQualityMessage_currentRoundTripTime];
        if (v99[OBJC_IVAR____TtC5SOSUI25SOSUIWebRTCQualityMessage_currentRoundTripTime + 8])
        {
          v110 = 0.0;
        }

        *(v105 + 34) = v110;
        *(v105 + 42) = 2048;
        v111 = *&v99[OBJC_IVAR____TtC5SOSUI25SOSUIWebRTCQualityMessage_framesPerSecond];
        if (v99[OBJC_IVAR____TtC5SOSUI25SOSUIWebRTCQualityMessage_framesPerSecond + 8])
        {
          v111 = 0.0;
        }

        *(v105 + 44) = v111;
        *(v105 + 52) = 1024;
        v112 = v99[OBJC_IVAR____TtC5SOSUI25SOSUIWebRTCQualityMessage_connectionPoor];
        v113 = v112 != 2 && (v112 & 1) != 0;
        *(v105 + 54) = v113;
        sub_26439B598(v102);
        *(v106 + 58) = 2048;
        v131 = *&v99[OBJC_IVAR____TtC5SOSUI25SOSUIWebRTCQualityMessage_jitter];
        if (v99[OBJC_IVAR____TtC5SOSUI25SOSUIWebRTCQualityMessage_jitter + 8])
        {
          v131 = 0.0;
        }

        *(v106 + 60) = v131;
        _os_log_impl(&dword_264382000, v103, v104, "SOSUIWebRTCView.messageWasReceived: web client quality message received:\nbitrate: %f\navailableBitrate: %f\npacketLoss: %f\ncurrentRoundTripTime: %f\nframesPerSecond: %f\nconnectionPoor: %{BOOL}d\njitter: %f", v106, 0x44u);
        MEMORY[0x266736CC0](v106, -1, -1);
      }

      else
      {
        sub_26439B598(v102);
      }

      (*(v41 + 8))(v28, v101);
      v120 = sel_videoStreamQualityChangedWithQuality_;
    }

    else
    {
      v63 = sub_2643845D8();
      v64 = v151;
      v65 = v152;
      (*(v152 + 16))(v37, v63, v151);
      sub_26439B5D4(a1);
      sub_26439B5D4(a1);
      sub_26439B5D4(a1);
      sub_26439B5D4(a1);
      sub_26439B5D4(a1);
      sub_26439B5D4(a1);
      v66 = a1;
      v67 = sub_2643B0498();
      v68 = sub_2643B0648();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v149 = swift_slowAlloc();
        v154[0] = v149;
        *v69 = 136316674;
        v70 = *&v66[OBJC_IVAR____TtC5SOSUI16SOSUIWebRTCState_state];
        v71 = SOSUIWebRTCStateName.getValue()();
        v72 = sub_26439AA1C(v71._countAndFlagsBits, v71._object, v154);

        *(v69 + 4) = v72;
        *(v69 + 12) = 1024;
        v73 = v66[OBJC_IVAR____TtC5SOSUI16SOSUIWebRTCState_connected];
        sub_26439B598(v66);
        *(v69 + 14) = v73;
        sub_26439B598(v66);
        *(v69 + 18) = 1024;
        v74 = v66[OBJC_IVAR____TtC5SOSUI16SOSUIWebRTCState_cameraActive];
        sub_26439B598(v66);
        *(v69 + 20) = v74;
        sub_26439B598(v66);
        v148 = v37;
        *(v69 + 24) = 2080;
        v75 = sub_2643A05E4(*&v66[OBJC_IVAR____TtC5SOSUI16SOSUIWebRTCState_cameraFacing]);
        v77 = sub_26439AA1C(v75, v76, v154);

        *(v69 + 26) = v77;
        *(v69 + 34) = 2048;
        *(v69 + 36) = *&v66[OBJC_IVAR____TtC5SOSUI16SOSUIWebRTCState_zoomLevel];
        *(v69 + 44) = 1024;
        v78 = v66[OBJC_IVAR____TtC5SOSUI16SOSUIWebRTCState_torch];
        sub_26439B598(v66);
        *(v69 + 46) = v78;
        sub_26439B598(v66);
        *(v69 + 50) = 2080;
        v153 = *&v66[OBJC_IVAR____TtC5SOSUI16SOSUIWebRTCState_error];
        v79 = v153;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D58, &qword_2643B1A48);
        v80 = sub_2643B0548();
        v82 = sub_26439AA1C(v80, v81, v154);

        *(v69 + 52) = v82;
        _os_log_impl(&dword_264382000, v67, v68, "SOSUIWebRTCView.messageWasReceived: web client state message received: (%s):\nconnected: %{BOOL}d\ncameraActive: %{BOOL}d\ncameraFacing: %s\nzoomLevel: %f\ntorch: %{BOOL}d\nerror: %s", v69, 0x3Cu);
        v83 = v149;
        swift_arrayDestroy();
        MEMORY[0x266736CC0](v83, -1, -1);
        MEMORY[0x266736CC0](v69, -1, -1);

        (*(v65 + 8))(v148, v151);
      }

      else
      {
        sub_26439B598(v66);
        sub_26439B598(v66);

        (*(v65 + 8))(v37, v64);
      }

      v118 = OBJC_IVAR____TtC5SOSUI15SOSUIWebRTCView_state;
      swift_beginAccess();
      v119 = *(v2 + v118);
      *(v2 + v118) = v66;
      v99 = v66;

      v120 = sel_stateChangeWithState_;
    }

    [v150 v120];
LABEL_64:
    swift_unknownObjectRelease();
    return;
  }

  if (v39 == 3)
  {
    v84 = a1;
    v85 = (a1 & 0x1FFFFFFFFFFFFFFFLL);
    v86 = ((a1 & 0x1FFFFFFFFFFFFFFFLL) + OBJC_IVAR____TtC5SOSUI21SOSUIWebRTCLogMessage_level);
    v87 = *v86;
    v88 = v86[1];
    v89 = *v86 == 0x6775626564 && v88 == 0xE500000000000000;
    v90 = v151;
    if (v89 || (sub_2643B0888() & 1) != 0)
    {
      v91 = sub_2643845D8();
      v92 = v152;
      (*(v152 + 16))(v22, v91, v90);
      v93 = v85;
      v94 = sub_2643B0498();
      v95 = sub_2643B0618();
    }

    else
    {
      v92 = v152;
      if (v87 == 0x726F727265 && v88 == 0xE500000000000000 || (sub_2643B0888() & 1) != 0)
      {
        v132 = sub_2643845D8();
        v133 = v149;
        (*(v92 + 16))(v149, v132, v90);
        v134 = v85;
        v135 = sub_2643B0498();
        v136 = sub_2643B0628();
        sub_26439B598(v84);
        if (os_log_type_enabled(v135, v136))
        {
          v137 = swift_slowAlloc();
          v138 = swift_slowAlloc();
          v154[0] = v138;
          *v137 = 136315138;
          *(v137 + 4) = sub_26439AA1C(*&v134[OBJC_IVAR____TtC5SOSUI21SOSUIWebRTCLogMessage_message], *&v134[OBJC_IVAR____TtC5SOSUI21SOSUIWebRTCLogMessage_message + 8], v154);
          _os_log_impl(&dword_264382000, v135, v136, "SOSUIWebRTCView.messageWasReceived: %s", v137, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v138);
          MEMORY[0x266736CC0](v138, -1, -1);
          MEMORY[0x266736CC0](v137, -1, -1);
          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }

        (*(v92 + 8))(v133, v90);
        return;
      }

      if (v87 == 1868983913 && v88 == 0xE400000000000000 || (sub_2643B0888() & 1) != 0)
      {
        v141 = sub_2643845D8();
        v22 = v148;
        (*(v92 + 16))(v148, v141, v90);
        v93 = v85;
        v94 = sub_2643B0498();
        v95 = sub_2643B0608();
      }

      else
      {
        if (v87 == 6778732 && v88 == 0xE300000000000000 || (sub_2643B0888() & 1) != 0)
        {
          v142 = sub_2643845D8();
          v22 = v147;
          (*(v92 + 16))(v147, v142, v90);
        }

        else
        {
          if (v87 == 1852989815 && v88 == 0xE400000000000000 || (sub_2643B0888() & 1) != 0)
          {
            v143 = sub_2643845D8();
            v22 = v146;
            (*(v92 + 16))(v146, v143, v90);
            v93 = v85;
            v94 = sub_2643B0498();
            v95 = sub_2643B0628();
            goto LABEL_20;
          }

          v144 = sub_2643845D8();
          v22 = v145;
          (*(v92 + 16))(v145, v144, v90);
        }

        v93 = v85;
        v94 = sub_2643B0498();
        v95 = sub_2643B0648();
      }
    }

LABEL_20:
    v96 = v95;
    sub_26439B598(v84);
    if (os_log_type_enabled(v94, v96))
    {
      v97 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v154[0] = v98;
      *v97 = 136315138;
      *(v97 + 4) = sub_26439AA1C(*&v93[OBJC_IVAR____TtC5SOSUI21SOSUIWebRTCLogMessage_message], *&v93[OBJC_IVAR____TtC5SOSUI21SOSUIWebRTCLogMessage_message + 8], v154);
      _os_log_impl(&dword_264382000, v94, v96, "SOSUIWebRTCView.messageWasReceived: %s", v97, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v98);
      MEMORY[0x266736CC0](v98, -1, -1);
      MEMORY[0x266736CC0](v97, -1, -1);
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    (*(v92 + 8))(v22, v90);
    return;
  }

  v55 = v151;
  if (v39 != 4)
  {
    v114 = sub_2643845D8();
    (*(v152 + 16))(v25, v114, v55);
    v115 = sub_2643B0498();
    v116 = sub_2643B0648();
    if (os_log_type_enabled(v115, v116))
    {
      v117 = swift_slowAlloc();
      *v117 = 0;
      _os_log_impl(&dword_264382000, v115, v116, "SOSUIWebRTCView.messageWasReceived: web client call lost message received", v117, 2u);
      MEMORY[0x266736CC0](v117, -1, -1);
    }

    (*(v152 + 8))(v25, v55);
    [v150 videoStreamLost];
    goto LABEL_64;
  }

  v56 = sub_2643845D8();
  v57 = v152;
  (*(v152 + 16))(v9, v56, v55);
  v58 = (a1 & 0x1FFFFFFFFFFFFFFFLL);
  v59 = v40;
  v60 = sub_2643B0498();
  v61 = sub_2643B0648();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    *v62 = 134217984;
    *(v62 + 4) = *(*&v58[OBJC_IVAR____TtC5SOSUI32SOSUIWebRTCConnectionInfoMessage_addresses] + 16);
    sub_26439B598(v59);
    _os_log_impl(&dword_264382000, v60, v61, "SOSUIWebRTCView.messageWasReceived: connectedMessage received with %ld addresses", v62, 0xCu);
    MEMORY[0x266736CC0](v62, -1, -1);
  }

  else
  {
    sub_26439B598(v59);
  }

  (*(v57 + 8))(v9, v55);
  v129 = *&v58[OBJC_IVAR____TtC5SOSUI32SOSUIWebRTCConnectionInfoMessage_addresses];
  v130 = sub_2643B0598();
  [v150 connectedWithAddresses_];
  swift_unknownObjectRelease();
}

id SOSUIWebRTCView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

uint64_t sub_26439A26C(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_2643A0164;

  return v7();
}

uint64_t sub_26439A354(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_26439A43C;

  return v8();
}

uint64_t sub_26439A43C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_26439A530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  sub_26439FC68(a3, v25 - v11, &qword_27FF66D30, &qword_2643B1928);
  v13 = sub_2643B05F8();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_26439E21C(v12, &qword_27FF66D30, &qword_2643B1928);
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

  sub_2643B05E8();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_2643B05A8();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_2643B0558() + 32;
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

    sub_26439E21C(a3, &qword_27FF66D30, &qword_2643B1928);

    return v23;
  }

LABEL_8:
  sub_26439E21C(a3, &qword_27FF66D30, &qword_2643B1928);
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

uint64_t sub_26439A82C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26439A924;

  return v7(a1);
}

uint64_t sub_26439A924()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_26439AA1C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_26439AAE8(v11, 0, 0, 1, a1, a2);
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
    sub_26439FFA4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_26439AAE8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_26439ABF4(a5, a6);
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
    result = sub_2643B06D8();
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

uint64_t sub_26439ABF4(uint64_t a1, unint64_t a2)
{
  v4 = sub_26439AC40(a1, a2);
  sub_26439AD70(&unk_2875D34B0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_26439AC40(uint64_t a1, unint64_t a2)
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

  v6 = sub_26439AE5C(v5, 0);
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

  result = sub_2643B06D8();
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
        v10 = sub_2643B0588();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_26439AE5C(v10, 0);
        result = sub_2643B0698();
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

uint64_t sub_26439AD70(uint64_t result)
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

  result = sub_26439AED0(result, v12, 1, v3);
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

void *sub_26439AE5C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF67240, &qword_2643B2008);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_26439AED0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF67240, &qword_2643B2008);
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

unint64_t sub_26439B00C()
{
  result = qword_27FF66CD8;
  if (!qword_27FF66CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF66CD8);
  }

  return result;
}

uint64_t sub_26439B0AC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_26439B0BC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26439B104()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2643A0164;

  return sub_2643873E0(v4, v5, v6, v2, v3);
}

unint64_t sub_26439B19C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2643B0918();
  sub_2643B0568();
  v6 = sub_2643B0938();

  return sub_26439B214(a1, a2, v6);
}

unint64_t sub_26439B214(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_2643B0888())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_26439B2CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF66E30, &qword_2643B1FF0);
    v3 = sub_2643B06F8();
    v4 = a1 + 32;

    while (1)
    {
      sub_26439FC68(v4, &v13, &qword_27FF66D48, &qword_2643B1958);
      v5 = v13;
      v6 = v14;
      result = sub_26439B19C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_26439B448(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
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

_OWORD *sub_26439B448(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_26439B458()
{
  result = qword_27FF66D50;
  if (!qword_27FF66D50)
  {
    type metadata accessor for SOSUIWebtRTCCapabilities();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF66D50);
  }

  return result;
}

uint64_t sub_26439B4B0()
{
  v1 = *(v0 + 136);

  return MEMORY[0x2821FE8E8](v0, 161, 7);
}

void sub_26439B598(unint64_t a1)
{
  v1 = a1 >> 61;
  if ((a1 >> 61) <= 1)
  {
    if (!v1)
    {
      goto LABEL_6;
    }

    if (v1 == 1)
    {
LABEL_5:
      a1 &= 0x1FFFFFFFFFFFFFFFuLL;
LABEL_6:
    }
  }

  else if (v1 == 2 || v1 == 3 || v1 == 4)
  {
    goto LABEL_5;
  }
}

unint64_t sub_26439B5D4(unint64_t result)
{
  v1 = result >> 61;
  if ((result >> 61) <= 1)
  {
    if (!v1)
    {
      return result;
    }

    if (v1 == 1)
    {
LABEL_5:
      result &= 0x1FFFFFFFFFFFFFFFuLL;
      return result;
    }
  }

  else if (v1 == 2 || v1 == 3 || v1 == 4)
  {
    goto LABEL_5;
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_26439B61C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26439B664(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of SOSUIWebRTCView.pauseVideo()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x180);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2643A0164;

  return v6();
}

uint64_t dispatch thunk of SOSUIWebRTCView.pauseVideo(pausedString:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x188);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2643A0164;

  return v10(a1, a2);
}

uint64_t dispatch thunk of SOSUIWebRTCView.unpauseVideo()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x190);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2643A0164;

  return v6();
}

uint64_t dispatch thunk of SOSUIWebRTCView.useFrontCamera()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x198);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2643A0164;

  return v6();
}

uint64_t dispatch thunk of SOSUIWebRTCView.useRearCamera()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x1A0);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2643A0164;

  return v6();
}

uint64_t dispatch thunk of SOSUIWebRTCView.startVideoPreview()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x1A8);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2643A0164;

  return v6();
}

uint64_t dispatch thunk of SOSUIWebRTCView.startVideoPreview(cameraFacing:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x1B0);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2643A0164;

  return v8(a1);
}

uint64_t dispatch thunk of SOSUIWebRTCView.startVideoStream(endpoint:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x1B8);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2643A0164;

  return v10(a1, a2);
}

uint64_t dispatch thunk of SOSUIWebRTCView.startVideoStream(endpoint:token:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *((*MEMORY[0x277D85000] & *v4) + 0x1C0);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_2643A0164;

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of SOSUIWebRTCView.startVideoStream(endpoint:token:trickle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *((*MEMORY[0x277D85000] & *v5) + 0x1C8);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_2643A0164;

  return v16(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of SOSUIWebRTCView.endVideoStream()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x1D0);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2643A0164;

  return v6();
}

uint64_t dispatch thunk of SOSUIWebRTCView.flipCamera()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x1D8);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26439A43C;

  return v6();
}

uint64_t dispatch thunk of SOSUIWebRTCView.torchOn()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x1E0);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2643A0164;

  return v6();
}

uint64_t dispatch thunk of SOSUIWebRTCView.torchOff()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x1E8);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2643A0164;

  return v6();
}

uint64_t dispatch thunk of SOSUIWebRTCView.toggleTorch()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x1F0);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2643A0164;

  return v6();
}

uint64_t dispatch thunk of SOSUIWebRTCView.setZoomLevel(zoom:)(double a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x1F8);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2643A0164;
  v7.n128_f64[0] = a1;

  return v9(v7);
}

uint64_t dispatch thunk of SOSUIWebRTCView.endVideoPreview()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x200);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2643A0164;

  return v6();
}

uint64_t dispatch thunk of SOSUIWebRTCView.getCapabilities()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x208);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26439CEBC;

  return v6();
}

uint64_t sub_26439CEBC(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of SOSUIWebRTCView.configure(_:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x210);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2643A0164;

  return v8(a1);
}

uint64_t dispatch thunk of SOSUIWebRTCView.setPoorConnectionThreshold(_:)(double a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x218);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2643A0164;
  v7.n128_f64[0] = a1;

  return v9(v7);
}

uint64_t dispatch thunk of SOSUIWebRTCView.setPoorConnectionGracePeriod(_:)(double a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x220);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2643A0164;
  v7.n128_f64[0] = a1;

  return v9(v7);
}

uint64_t dispatch thunk of SOSUIWebRTCView.setIceRestartTimeout(_:)(double a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x228);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2643A0164;
  v7.n128_f64[0] = a1;

  return v9(v7);
}

uint64_t dispatch thunk of SOSUIWebRTCView.setIceRestartRetryCount(_:)(double a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x230);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2643A0164;
  v7.n128_f64[0] = a1;

  return v9(v7);
}

uint64_t dispatch thunk of SOSUIWebRTCView.setMinimumBitrate(_:)(double a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x238);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2643A0164;
  v7.n128_f64[0] = a1;

  return v9(v7);
}

uint64_t dispatch thunk of SOSUIWebRTCView.setMaximumBitrate(_:)(double a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x240);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2643A0164;
  v7.n128_f64[0] = a1;

  return v9(v7);
}

uint64_t dispatch thunk of SOSUIWebRTCView.setPausedString(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x248);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2643A0164;

  return v10(a1, a2);
}

uint64_t dispatch thunk of SOSUIWebRTCView.setDebugConnection(_:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x250);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2643A0164;

  return v8(a1);
}

uint64_t dispatch thunk of SOSUIWebRTCView.setVideoPreference(_:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x258);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2643A0164;

  return v8(a1);
}

uint64_t dispatch thunk of SOSUIWebRTCView.setFrameRate(_:)(double a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x260);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2643A0164;
  v7.n128_f64[0] = a1;

  return v9(v7);
}

uint64_t dispatch thunk of SOSUIWebRTCView.goToError(retryable:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x268);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2643A0164;

  return v8(a1);
}

uint64_t dispatch thunk of SOSUIWebRTCView.networkInterfacesDidChange()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x270);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2643A0164;

  return v6();
}

unint64_t sub_26439DF88()
{
  result = qword_27FF66E28;
  if (!qword_27FF66E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF66E28);
  }

  return result;
}

uint64_t sub_26439DFE0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2643A0164;

  return sub_264398E58(v2, v3);
}

uint64_t sub_26439E090()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2643A0164;

  return sub_26439A26C(v2, v3, v5);
}

uint64_t sub_26439E150(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2643A0164;

  return sub_26439A354(a1, v4, v5, v7);
}

uint64_t sub_26439E21C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_26439E27C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26439E2B4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2643A0164;

  return sub_26439A82C(a1, v5);
}

uint64_t sub_26439E370()
{
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2643A0164;

  return sub_2643986EC(v2, v4, v3);
}

uint64_t sub_26439E424()
{
  v2 = v0[2];
  v3 = *(v0 + 3);
  v4 = *(v0 + 4);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2643A0164;

  return sub_264397A50(v3, v4, v2);
}

uint64_t sub_26439E4D8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2643A0164;

  return sub_2643972E8(v2, v3, v4);
}

uint64_t sub_26439E58C()
{
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2643A0164;

  return sub_264396DDC(v2, v4, v3);
}

uint64_t sub_26439E644()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2643A0164;

  return sub_264396650(v2, v3, v4);
}

uint64_t sub_26439E6F8()
{
  v2 = v0[2];
  v3 = *(v0 + 3);
  v4 = *(v0 + 4);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2643A0164;

  return sub_264395DE4(v3, v4, v2);
}

uint64_t sub_26439E7AC()
{
  v2 = v0[2];
  v3 = *(v0 + 3);
  v4 = *(v0 + 4);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2643A0164;

  return sub_2643958D4(v3, v4, v2);
}

uint64_t sub_26439E860()
{
  v2 = v0[2];
  v3 = *(v0 + 3);
  v4 = *(v0 + 4);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2643A0164;

  return sub_2643953C4(v3, v4, v2);
}

uint64_t sub_26439E914()
{
  v2 = v0[2];
  v3 = *(v0 + 3);
  v4 = *(v0 + 4);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2643A0164;

  return sub_264394EB4(v3, v4, v2);
}

uint64_t sub_26439E9C8()
{
  v2 = v0[2];
  v3 = *(v0 + 3);
  v4 = *(v0 + 4);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2643A0164;

  return sub_2643949A4(v3, v4, v2);
}

uint64_t sub_26439EA7C()
{
  v2 = v0[2];
  v3 = *(v0 + 3);
  v4 = *(v0 + 4);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2643A0164;

  return sub_264394494(v3, v4, v2);
}

uint64_t sub_26439EB30()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2643A0164;

  return sub_264393398(v2, v3);
}

uint64_t sub_26439EBDC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2643A0164;

  return sub_264392868(v2, v3);
}

uint64_t sub_26439EC88()
{
  v2 = v0[2];
  v3 = *(v0 + 3);
  v4 = *(v0 + 4);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2643A0164;

  return sub_2643920FC(v3, v4, v2);
}

uint64_t sub_26439ED3C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2643A0164;

  return sub_2643915E8(v2, v3);
}

uint64_t sub_26439EDE8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2643A0164;

  return sub_264390E84(v2, v3);
}

uint64_t sub_26439EE94()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2643A0164;

  return sub_264390730(v2, v3);
}

uint64_t sub_26439EF40()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26439A43C;

  return sub_26438FE58(v2, v3);
}

uint64_t sub_26439EFEC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2643A0164;

  return sub_26438F3D8(v2, v3);
}

uint64_t sub_26439F098()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_26439F0E8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_2643A0164;

  return sub_26438EA50(v2, v3, v4, v6, v5);
}

uint64_t sub_26439F1B0()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26439F200()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2643A0164;

  return sub_26438DAC8(v2, v3, v5, v4);
}

uint64_t sub_26439F2C0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2643A0164;

  return sub_26438D0A0(v2, v3, v4);
}

uint64_t objectdestroy_144Tm()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26439F3B4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2643A0164;

  return sub_26438CC48(v2, v3, v4);
}

uint64_t sub_26439F468()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2643A0164;

  return sub_26438C218(v2, v3);
}

uint64_t sub_26439F514()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2643A0164;

  return sub_26438BAB0(v2, v3);
}

uint64_t sub_26439F5C0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2643A0164;

  return sub_26438B344(v2, v3);
}

uint64_t sub_26439F66C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2643A0164;

  return sub_26438ABD8(v2, v3);
}

uint64_t objectdestroy_204Tm()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26439F760()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2643A0164;

  return sub_26438A2A4(v2, v3, v4);
}

uint64_t objectdestroy_119Tm()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26439F854()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2643A0164;

  return sub_264389778(v2, v3);
}

uint64_t objectdestroy_123Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26439F940(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66CD0, &qword_2643B1920);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v27 - v8;
  v10 = sub_2643B03C8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2643B0488();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = [a1 request];
  sub_2643B0398();

  sub_2643B03B8();
  (*(v11 + 8))(v14, v10);
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    sub_26439E21C(v9, &qword_27FF66CD0, &qword_2643B1920);
    return (*(a3 + 16))(a3, 0);
  }

  (*(v16 + 32))(v19, v9, v15);
  if (sub_2643B0448() == *(a2 + OBJC_IVAR____TtC5SOSUI15SOSUIWebRTCView_originUrlString) && v22 == *(a2 + OBJC_IVAR____TtC5SOSUI15SOSUIWebRTCView_originUrlString + 8))
  {
    goto LABEL_10;
  }

  v24 = sub_2643B0888();

  if ((v24 & 1) == 0)
  {
    if (sub_2643B0448() == *(a2 + OBJC_IVAR____TtC5SOSUI15SOSUIWebRTCView_blankUrlString) && v25 == *(a2 + OBJC_IVAR____TtC5SOSUI15SOSUIWebRTCView_blankUrlString + 8))
    {
LABEL_10:

      goto LABEL_11;
    }

    v26 = sub_2643B0888();

    if ((v26 & 1) == 0)
    {
      (*(a3 + 16))(a3, 0);
      return (*(v16 + 8))(v19, v15);
    }
  }

LABEL_11:
  (*(a3 + 16))(a3, 1);
  return (*(v16 + 8))(v19, v15);
}

uint64_t sub_26439FC58(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_26439FC68(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_26439FCD8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF67260, &unk_2643B3DC0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void sub_26439FDA8(void *a1)
{
  v2 = v1;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF67260, &unk_2643B3DC0) - 8);
  v5 = *(v2 + 16);
  if (v5)
  {
    v6 = *(v4 + 80);
    sub_26439FE84();
    v7 = a1;
    v8 = v5;
    v9 = sub_2643B0658();

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF67260, &unk_2643B3DC0);
      sub_2643B05B8();
    }
  }
}

unint64_t sub_26439FE84()
{
  result = qword_27FF66E40;
  if (!qword_27FF66E40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FF66E40);
  }

  return result;
}

uint64_t sub_26439FED0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26439FF10()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2643A0164;

  return sub_264385DE0();
}

uint64_t sub_26439FFA4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

Swift::String __swiftcall SOSUIWebRTCStateName.getValue()()
{
  if (v0 <= 3)
  {
    if (v0 <= 1)
    {
      if (!v0)
      {
        v1 = 0xE900000000000064;
        v2 = 0x6564616F6C746F6ELL;
        goto LABEL_21;
      }

      if (v0 == 1)
      {
        v1 = 0xE800000000000000;
        v2 = 0x646F6F676C6C6163;
        goto LABEL_21;
      }

      goto LABEL_20;
    }

    if (v0 == 2)
    {
      v2 = 0x737561706C6C6163;
      v1 = 0xEA00000000006465;
    }

    else
    {
      v1 = 0xE800000000000000;
      v2 = 0x726F6F706C6C6163;
    }
  }

  else
  {
    if (v0 > 5)
    {
      switch(v0)
      {
        case 6:
          v1 = 0xEA0000000000726FLL;
          v2 = 0x7272656C61746166;
          goto LABEL_21;
        case 7:
          v1 = 0xEA0000000000676ELL;
          v2 = 0x697463656E6E6F63;
          goto LABEL_21;
        case 8:
          v1 = 0xE500000000000000;
          v2 = 0x6465646E65;
          goto LABEL_21;
      }

LABEL_20:
      v2 = sub_2643B08C8();
      __break(1u);
      goto LABEL_21;
    }

    if (v0 == 4)
    {
      v1 = 0xE400000000000000;
      v2 = 1701602409;
    }

    else
    {
      v1 = 0xE700000000000000;
      v2 = 0x77656976657270;
    }
  }

LABEL_21:
  result._object = v1;
  result._countAndFlagsBits = v2;
  return result;
}

uint64_t SOSUIWebRTCStateName.encode(to:)(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2643B0968();
  SOSUIWebRTCStateName.getValue()();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_2643B08B8();

  return __swift_destroy_boxed_opaque_existential_0(v3);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

unint64_t sub_2643A04C4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2643A7008(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_2643A0504@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2643A6C20(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2643A0530(void *a1)
{
  v2 = *v1;
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2643B0968();
  SOSUIWebRTCStateName.getValue()();
  __swift_mutable_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_2643B08B8();

  return __swift_destroy_boxed_opaque_existential_0(v5);
}

uint64_t sub_2643A05E4(uint64_t a1)
{
  if (!a1)
  {
    return 1919251317;
  }

  if (a1 == 1)
  {
    return 0x6D6E6F7269766E65;
  }

  result = sub_2643B08C8();
  __break(1u);
  return result;
}

uint64_t SOSUIWebRTCCameraFacing.encode(to:)(void *a1, unint64_t a2)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2643B0968();
  if (a2 > 1)
  {
    result = sub_2643B08C8();
    __break(1u);
  }

  else
  {
    __swift_mutable_project_boxed_opaque_existential_1(v5, v5[3]);
    sub_2643B08B8();

    return __swift_destroy_boxed_opaque_existential_0(v5);
  }

  return result;
}

unint64_t SOSUIWebRTCCameraFacing.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

uint64_t *sub_2643A0780@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_2643A079C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2643A7018(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t SOSUIWebRTCVideoPreference.encode(to:)(void *a1, uint64_t a2)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2643B0968();
  if (!a2 || a2 == 2 || a2 == 1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v5, v5[3]);
    sub_2643B08B8();

    return __swift_destroy_boxed_opaque_existential_0(v5);
  }

  else
  {
    result = sub_2643B08C8();
    __break(1u);
  }

  return result;
}

unint64_t SOSUIWebRTCVideoPreference.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

uint64_t sub_2643A0928()
{
  v1 = *v0;
  sub_2643B0918();
  MEMORY[0x266736720](v1);
  return sub_2643B0938();
}

uint64_t sub_2643A0970()
{
  v1 = *v0;
  sub_2643B0918();
  MEMORY[0x266736720](v1);
  return sub_2643B0938();
}

uint64_t *sub_2643A09B4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_2643A09D0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2643A7240(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

id SOSUIWebRTCState.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t SOSUIWebRTCState.init()()
{
  ObjectType = swift_getObjectType();
  v1 = (*(ObjectType + 152))(0, 0, 0, 0, 0, 1, 0, 0, 1.0);
  swift_deallocPartialClassInstance();
  return v1;
}

id SOSUIWebRTCState.__allocating_init(state:connected:connecting:cameraExists:cameraActive:cameraFacing:zoomLevel:torch:error:)(uint64_t a1, char a2, char a3, char a4, char a5, uint64_t a6, char a7, uint64_t a8, double a9)
{
  v19 = objc_allocWithZone(v9);
  *&v19[OBJC_IVAR____TtC5SOSUI16SOSUIWebRTCState_state] = a1;
  v19[OBJC_IVAR____TtC5SOSUI16SOSUIWebRTCState_connected] = a2;
  v19[OBJC_IVAR____TtC5SOSUI16SOSUIWebRTCState_connecting] = a3;
  v19[OBJC_IVAR____TtC5SOSUI16SOSUIWebRTCState_cameraExists] = a4;
  v19[OBJC_IVAR____TtC5SOSUI16SOSUIWebRTCState_cameraActive] = a5;
  *&v19[OBJC_IVAR____TtC5SOSUI16SOSUIWebRTCState_cameraFacing] = a6;
  *&v19[OBJC_IVAR____TtC5SOSUI16SOSUIWebRTCState_zoomLevel] = a9;
  v19[OBJC_IVAR____TtC5SOSUI16SOSUIWebRTCState_torch] = a7;
  *&v19[OBJC_IVAR____TtC5SOSUI16SOSUIWebRTCState_error] = a8;
  v21.receiver = v19;
  v21.super_class = v9;
  return objc_msgSendSuper2(&v21, sel_init);
}

id SOSUIWebRTCState.init(state:connected:connecting:cameraExists:cameraActive:cameraFacing:zoomLevel:torch:error:)(uint64_t a1, char a2, char a3, char a4, char a5, uint64_t a6, char a7, uint64_t a8, double a9)
{
  *&v9[OBJC_IVAR____TtC5SOSUI16SOSUIWebRTCState_state] = a1;
  v9[OBJC_IVAR____TtC5SOSUI16SOSUIWebRTCState_connected] = a2;
  v9[OBJC_IVAR____TtC5SOSUI16SOSUIWebRTCState_connecting] = a3;
  v9[OBJC_IVAR____TtC5SOSUI16SOSUIWebRTCState_cameraExists] = a4;
  v9[OBJC_IVAR____TtC5SOSUI16SOSUIWebRTCState_cameraActive] = a5;
  *&v9[OBJC_IVAR____TtC5SOSUI16SOSUIWebRTCState_cameraFacing] = a6;
  *&v9[OBJC_IVAR____TtC5SOSUI16SOSUIWebRTCState_zoomLevel] = a9;
  v9[OBJC_IVAR____TtC5SOSUI16SOSUIWebRTCState_torch] = a7;
  *&v9[OBJC_IVAR____TtC5SOSUI16SOSUIWebRTCState_error] = a8;
  v11.receiver = v9;
  v11.super_class = type metadata accessor for SOSUIWebRTCState();
  return objc_msgSendSuper2(&v11, sel_init);
}

void *SOSUIWebRTCState.error.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC5SOSUI16SOSUIWebRTCState_error);
  v2 = v1;
  return v1;
}

uint64_t sub_2643A0DA0(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6574617473;
    v6 = 0x697463656E6E6F63;
    if (a1 != 2)
    {
      v6 = 0x78456172656D6163;
    }

    if (a1)
    {
      v5 = 0x657463656E6E6F63;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6576654C6D6F6F7ALL;
    v2 = 0x6863726F74;
    if (a1 != 7)
    {
      v2 = 0x726F727265;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x63416172656D6163;
    if (a1 != 4)
    {
      v3 = 0x61466172656D6163;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_2643A0F28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2643A7C4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2643A0F68(uint64_t a1)
{
  v2 = sub_2643A74CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2643A0FA4(uint64_t a1)
{
  v2 = sub_2643A74CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2643A1008(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66EF8, &qword_2643B2020);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2643A74CC();
  sub_2643B0978();
  v19 = *(v3 + OBJC_IVAR____TtC5SOSUI16SOSUIWebRTCState_state);
  HIBYTE(v18) = 0;
  sub_2643A7520();
  sub_2643B0858();
  if (!v2)
  {
    v11 = *(v3 + OBJC_IVAR____TtC5SOSUI16SOSUIWebRTCState_connected);
    LOBYTE(v19) = 1;
    sub_2643B0828();
    v12 = *(v3 + OBJC_IVAR____TtC5SOSUI16SOSUIWebRTCState_connecting);
    LOBYTE(v19) = 2;
    sub_2643B0828();
    v13 = *(v3 + OBJC_IVAR____TtC5SOSUI16SOSUIWebRTCState_cameraExists);
    LOBYTE(v19) = 3;
    sub_2643B0828();
    v14 = *(v3 + OBJC_IVAR____TtC5SOSUI16SOSUIWebRTCState_cameraActive);
    LOBYTE(v19) = 4;
    sub_2643B0828();
    v19 = *(v3 + OBJC_IVAR____TtC5SOSUI16SOSUIWebRTCState_cameraFacing);
    HIBYTE(v18) = 5;
    sub_2643A7574();
    sub_2643B0858();
    v15 = *(v3 + OBJC_IVAR____TtC5SOSUI16SOSUIWebRTCState_zoomLevel);
    LOBYTE(v19) = 6;
    sub_2643B0838();
    v16 = *(v3 + OBJC_IVAR____TtC5SOSUI16SOSUIWebRTCState_torch);
    LOBYTE(v19) = 7;
    sub_2643B0828();
    v19 = *(v3 + OBJC_IVAR____TtC5SOSUI16SOSUIWebRTCState_error);
    HIBYTE(v18) = 8;
    type metadata accessor for SOSUIWebRTCErrorMessage();
    sub_2643ABB70(&qword_27FF66F10, type metadata accessor for SOSUIWebRTCErrorMessage);
    sub_2643B0808();
  }

  return (*(v6 + 8))(v9, v5);
}

void *SOSUIWebRTCState.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66F18, &qword_2643B2028);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2643A74CC();
  sub_2643B0958();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    type metadata accessor for SOSUIWebRTCState();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v17 = 0;
    sub_2643A75EC();
    sub_2643B07A8();
    *&v3[OBJC_IVAR____TtC5SOSUI16SOSUIWebRTCState_state] = v18;
    LOBYTE(v18) = 1;
    v3[OBJC_IVAR____TtC5SOSUI16SOSUIWebRTCState_connected] = sub_2643B0778() & 1;
    LOBYTE(v18) = 2;
    v3[OBJC_IVAR____TtC5SOSUI16SOSUIWebRTCState_connecting] = sub_2643B0778() & 1;
    LOBYTE(v18) = 3;
    v3[OBJC_IVAR____TtC5SOSUI16SOSUIWebRTCState_cameraExists] = sub_2643B0778() & 1;
    LOBYTE(v18) = 4;
    v3[OBJC_IVAR____TtC5SOSUI16SOSUIWebRTCState_cameraActive] = sub_2643B0778() & 1;
    v17 = 5;
    sub_2643A7640();
    sub_2643B07A8();
    *&v3[OBJC_IVAR____TtC5SOSUI16SOSUIWebRTCState_cameraFacing] = v18;
    LOBYTE(v18) = 6;
    sub_2643B0788();
    *&v3[OBJC_IVAR____TtC5SOSUI16SOSUIWebRTCState_zoomLevel] = v12;
    LOBYTE(v18) = 7;
    v3[OBJC_IVAR____TtC5SOSUI16SOSUIWebRTCState_torch] = sub_2643B0778() & 1;
    type metadata accessor for SOSUIWebRTCErrorMessage();
    v17 = 8;
    sub_2643ABB70(&qword_27FF66F30, type metadata accessor for SOSUIWebRTCErrorMessage);
    sub_2643B0758();
    *&v3[OBJC_IVAR____TtC5SOSUI16SOSUIWebRTCState_error] = v18;
    v14 = type metadata accessor for SOSUIWebRTCState();
    v16.receiver = v3;
    v16.super_class = v14;
    v11 = objc_msgSendSuper2(&v16, sel_init);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v11;
}

uint64_t sub_2643A177C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 168))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t SOSUIWebRTCConfiguration.poorConnectionThreshold.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t SOSUIWebRTCConfiguration.poorConnectionThreshold.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t SOSUIWebRTCConfiguration.poorConnectionGracePeriod.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t SOSUIWebRTCConfiguration.poorConnectionGracePeriod.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t SOSUIWebRTCConfiguration.iceRestartTimeout.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t SOSUIWebRTCConfiguration.iceRestartTimeout.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t SOSUIWebRTCConfiguration.iceRestartRetryCount.getter()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

uint64_t SOSUIWebRTCConfiguration.iceRestartRetryCount.setter(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

uint64_t SOSUIWebRTCConfiguration.minimumBitrate.getter()
{
  result = *(v0 + 64);
  v2 = *(v0 + 72);
  return result;
}

uint64_t SOSUIWebRTCConfiguration.minimumBitrate.setter(uint64_t result, char a2)
{
  *(v2 + 64) = result;
  *(v2 + 72) = a2 & 1;
  return result;
}

uint64_t SOSUIWebRTCConfiguration.maximumBitrate.getter()
{
  result = *(v0 + 80);
  v2 = *(v0 + 88);
  return result;
}

uint64_t SOSUIWebRTCConfiguration.maximumBitrate.setter(uint64_t result, char a2)
{
  *(v2 + 80) = result;
  *(v2 + 88) = a2 & 1;
  return result;
}

uint64_t SOSUIWebRTCConfiguration.videoPreference.getter()
{
  result = *(v0 + 96);
  v2 = *(v0 + 104);
  return result;
}

uint64_t SOSUIWebRTCConfiguration.videoPreference.setter(uint64_t result, char a2)
{
  *(v2 + 96) = result;
  *(v2 + 104) = a2 & 1;
  return result;
}

uint64_t SOSUIWebRTCConfiguration.pausedString.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

uint64_t SOSUIWebRTCConfiguration.pausedString.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 120);

  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return result;
}

uint64_t SOSUIWebRTCConfiguration.frameRate.getter()
{
  result = *(v0 + 136);
  v2 = *(v0 + 144);
  return result;
}

uint64_t SOSUIWebRTCConfiguration.frameRate.setter(uint64_t result, char a2)
{
  *(v2 + 136) = result;
  *(v2 + 144) = a2 & 1;
  return result;
}

unint64_t sub_2643A1AA4(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v4 = 0x7453646573756170;
    v5 = 0x6E6F436775626564;
    if (a1 != 8)
    {
      v5 = 0x746152656D617266;
    }

    if (a1 != 7)
    {
      v4 = v5;
    }

    v6 = 0x426D756D6978616DLL;
    if (a1 != 5)
    {
      v6 = 0x6572506F65646976;
    }

    if (a1 <= 6u)
    {
      return v6;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v1 = 0x426D756D696E696DLL;
    if (a1 == 3)
    {
      v1 = 0xD000000000000014;
    }

    if (a1 == 2)
    {
      v1 = 0xD000000000000011;
    }

    v2 = 0xD000000000000019;
    if (!a1)
    {
      v2 = 0xD000000000000017;
    }

    if (a1 <= 1u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_2643A1C18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2643A7F40(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2643A1C4C(uint64_t a1)
{
  v2 = sub_2643A7694();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2643A1C88(uint64_t a1)
{
  v2 = sub_2643A7694();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SOSUIWebRTCConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66F38, &qword_2643B2030);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v16 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v10 = v1[2];
  v35 = *(v1 + 24);
  v30 = v1[4];
  v31 = v10;
  v29 = *(v1 + 40);
  v28 = v1[6];
  v27 = *(v1 + 56);
  v26 = v1[8];
  LODWORD(v10) = *(v1 + 72);
  v23 = v1[10];
  v24 = *(v1 + 88);
  v25 = v10;
  v11 = v1[12];
  v22 = *(v1 + 104);
  v12 = v1[15];
  v19 = v1[14];
  v20 = v12;
  v21 = v11;
  LODWORD(v11) = *(v1 + 128);
  v16[1] = v1[17];
  v17 = *(v1 + 144);
  v18 = v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2643A7694();
  sub_2643B0978();
  LOBYTE(v33) = 0;
  v14 = v32;
  sub_2643B07F8();
  if (!v14)
  {
    LOBYTE(v33) = 1;
    sub_2643B07F8();
    LOBYTE(v33) = 2;
    sub_2643B07F8();
    LOBYTE(v33) = 3;
    sub_2643B07F8();
    LOBYTE(v33) = 4;
    sub_2643B07F8();
    LOBYTE(v33) = 5;
    sub_2643B07F8();
    v33 = v21;
    v34 = v22;
    v36 = 6;
    sub_2643A76E8();
    sub_2643B0808();
    LOBYTE(v33) = 7;
    sub_2643B07D8();
    LOBYTE(v33) = 8;
    sub_2643B07E8();
    LOBYTE(v33) = 9;
    sub_2643B07F8();
  }

  return (*(v4 + 8))(v7, v3);
}

void sub_2643A202C(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  *(a1 + 96) = 0;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 2;
  *(a1 + 136) = 0;
  *(a1 + 144) = 1;
}

uint64_t SOSUIWebRTCConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66F48, &qword_2643B2038);
  v5 = *(v58 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v58);
  v8 = &v46 - v7;
  v114 = 1;
  v112 = 1;
  v110 = 1;
  v108 = 1;
  v106 = 1;
  v104 = 1;
  v102 = 1;
  v99 = 1;
  v9 = a1[3];
  v10 = a1[4];
  v59 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_2643A7694();
  sub_2643B0958();
  if (v2)
  {
    v115 = v2;
    v61 = 0uLL;
    v60 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
  }

  else
  {
    LOBYTE(v73) = 0;
    v11 = v58;
    v57 = sub_2643B0748();
    v114 = v19 & 1;
    LOBYTE(v73) = 1;
    v56 = sub_2643B0748();
    v112 = v20 & 1;
    LOBYTE(v73) = 2;
    v55 = sub_2643B0748();
    v110 = v21 & 1;
    LOBYTE(v73) = 3;
    v54 = sub_2643B0748();
    v108 = v22 & 1;
    LOBYTE(v73) = 4;
    v53 = sub_2643B0748();
    v106 = v23 & 1;
    LOBYTE(v73) = 5;
    v24 = sub_2643B0748();
    v115 = 0;
    v52 = v24;
    v104 = v25 & 1;
    LOBYTE(v62) = 6;
    sub_2643A773C();
    v26 = v115;
    sub_2643B0758();
    if (!v26)
    {
      v27 = v73;
      v102 = v74;
      LOBYTE(v73) = 7;
      v28 = sub_2643B0728();
      v60 = v27;
      *&v61 = v28;
      *(&v61 + 1) = v29;
      LOBYTE(v73) = 8;
      v30 = sub_2643B0738();
      v115 = 0;
      v51 = v30;
      v72 = 9;
      v31 = sub_2643B0748();
      v115 = 0;
      v32 = v31;
      v34 = v33;
      (*(v5 + 8))(v8, v58);
      v99 = v34 & 1;
      v35 = v57;
      *&v62 = v57;
      v36 = v114;
      BYTE8(v62) = v114;
      *&v63 = v56;
      v46 = v112;
      BYTE8(v63) = v112;
      v37 = v54;
      *&v64 = v55;
      v47 = v110;
      BYTE8(v64) = v110;
      *&v65 = v54;
      v48 = v108;
      BYTE8(v65) = v108;
      v38 = v53;
      *&v66 = v53;
      v49 = v106;
      BYTE8(v66) = v106;
      *&v67 = v52;
      v50 = v104;
      BYTE8(v67) = v104;
      *&v68 = v60;
      LODWORD(v58) = v102;
      BYTE8(v68) = v102;
      v69 = v61;
      LOBYTE(v70) = v51;
      *(&v70 + 1) = v32;
      v34 &= 1u;
      v71 = v34;
      v39 = v63;
      *a2 = v62;
      *(a2 + 16) = v39;
      v40 = v64;
      v41 = v65;
      v42 = v67;
      *(a2 + 64) = v66;
      *(a2 + 80) = v42;
      *(a2 + 32) = v40;
      *(a2 + 48) = v41;
      v43 = v68;
      v44 = v69;
      v45 = v70;
      *(a2 + 144) = v34;
      *(a2 + 112) = v44;
      *(a2 + 128) = v45;
      *(a2 + 96) = v43;
      sub_26439B4E8(&v62, &v73);
      __swift_destroy_boxed_opaque_existential_0(v59);
      v73 = v35;
      v74 = v36;
      *v75 = *v113;
      *&v75[3] = *&v113[3];
      v76 = v56;
      v77 = v46;
      *v78 = *v111;
      *&v78[3] = *&v111[3];
      v79 = v55;
      v80 = v47;
      *v81 = *v109;
      *&v81[3] = *&v109[3];
      v82 = v37;
      v83 = v48;
      *&v84[3] = *&v107[3];
      *v84 = *v107;
      v85 = v38;
      v86 = v49;
      *&v87[3] = *&v105[3];
      *v87 = *v105;
      v88 = v52;
      v89 = v50;
      *v90 = *v103;
      *&v90[3] = *&v103[3];
      v91 = v60;
      v92 = v58;
      *&v93[3] = *&v101[3];
      *v93 = *v101;
      v94 = v61;
      v95 = v51;
      *&v96[3] = *&v100[3];
      *v96 = *v100;
      v97 = v32;
      v98 = v34;
      return sub_26439B544(&v73);
    }

    v115 = v26;
    (*(v5 + 8))(v8, v11);
    v61 = 0uLL;
    v60 = 0;
    v16 = v56;
    v17 = v57;
    v14 = v54;
    v15 = v55;
    v12 = v52;
    v13 = v53;
  }

  __swift_destroy_boxed_opaque_existential_0(v59);
  v73 = v17;
  v74 = v114;
  *v75 = *v113;
  *&v75[3] = *&v113[3];
  v76 = v16;
  v77 = v112;
  *v78 = *v111;
  *&v78[3] = *&v111[3];
  v79 = v15;
  v80 = v110;
  *&v81[3] = *&v109[3];
  *v81 = *v109;
  v82 = v14;
  v83 = v108;
  *v84 = *v107;
  *&v84[3] = *&v107[3];
  v85 = v13;
  v86 = v106;
  *v87 = *v105;
  *&v87[3] = *&v105[3];
  v88 = v12;
  v89 = v104;
  *&v90[3] = *&v103[3];
  *v90 = *v103;
  v91 = v60;
  v92 = v102;
  *&v93[3] = *&v101[3];
  *v93 = *v101;
  v94 = v61;
  v95 = 2;
  *v96 = *v100;
  *&v96[3] = *&v100[3];
  v97 = 0;
  v98 = v99;
  return sub_26439B544(&v73);
}

uint64_t SOSUIWebRTCErrorMessage.error.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC5SOSUI23SOSUIWebRTCErrorMessage_error);
  v2 = *(v0 + OBJC_IVAR____TtC5SOSUI23SOSUIWebRTCErrorMessage_error + 8);

  return v1;
}

uint64_t SOSUIWebRTCErrorMessage.stack.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC5SOSUI23SOSUIWebRTCErrorMessage_stack);
  v2 = *(v0 + OBJC_IVAR____TtC5SOSUI23SOSUIWebRTCErrorMessage_stack + 8);

  return v1;
}

uint64_t sub_2643A29CC()
{
  sub_2643B06A8();
  MEMORY[0x266736370](0xD000000000000024, 0x80000002643B45B0);
  v7 = *(v0 + OBJC_IVAR____TtC5SOSUI23SOSUIWebRTCErrorMessage_errorCode);
  v1 = sub_2643B0868();
  MEMORY[0x266736370](v1);

  MEMORY[0x266736370](0x203A726F7272650ALL, 0xE800000000000000);
  MEMORY[0x266736370](*(v0 + OBJC_IVAR____TtC5SOSUI23SOSUIWebRTCErrorMessage_error), *(v0 + OBJC_IVAR____TtC5SOSUI23SOSUIWebRTCErrorMessage_error + 8));
  MEMORY[0x266736370](0x7473207473616C0ALL, 0xED0000203A657461);
  v2 = *(v0 + OBJC_IVAR____TtC5SOSUI23SOSUIWebRTCErrorMessage_lastState);
  countAndFlagsBits = SOSUIWebRTCStateName.getValue()()._countAndFlagsBits;
  MEMORY[0x266736370](countAndFlagsBits);

  MEMORY[0x266736370](0x626179727465720ALL, 0xEC000000203A656CLL);
  if (*(v0 + OBJC_IVAR____TtC5SOSUI23SOSUIWebRTCErrorMessage_retryable))
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC5SOSUI23SOSUIWebRTCErrorMessage_retryable))
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x266736370](v4, v5);

  MEMORY[0x266736370](0x203A6B636174730ALL, 0xE800000000000000);
  MEMORY[0x266736370](*(v0 + OBJC_IVAR____TtC5SOSUI23SOSUIWebRTCErrorMessage_stack), *(v0 + OBJC_IVAR____TtC5SOSUI23SOSUIWebRTCErrorMessage_stack + 8));
  return 0;
}

uint64_t sub_2643A2B98()
{
  v1 = *v0;
  v2 = 0x726F727265;
  v3 = 0x6B63617473;
  v4 = 0x746174537473616CLL;
  if (v1 != 3)
  {
    v4 = 0x6C62617972746572;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x646F43726F727265;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2643A2C38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2643A8298(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2643A2C6C(uint64_t a1)
{
  v2 = sub_2643A7790();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2643A2CA8(uint64_t a1)
{
  v2 = sub_2643A7790();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2643A2D10(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66F80, &qword_2643B2040);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2643A7790();
  sub_2643B0978();
  v11 = *(v3 + OBJC_IVAR____TtC5SOSUI23SOSUIWebRTCErrorMessage_error);
  v12 = *(v3 + OBJC_IVAR____TtC5SOSUI23SOSUIWebRTCErrorMessage_error + 8);
  v22 = 0;
  sub_2643B0818();
  if (!v2)
  {
    v13 = *(v3 + OBJC_IVAR____TtC5SOSUI23SOSUIWebRTCErrorMessage_errorCode);
    v21 = 1;
    sub_2643B0848();
    v14 = *(v3 + OBJC_IVAR____TtC5SOSUI23SOSUIWebRTCErrorMessage_stack);
    v15 = *(v3 + OBJC_IVAR____TtC5SOSUI23SOSUIWebRTCErrorMessage_stack + 8);
    v20 = 2;
    sub_2643B0818();
    v19 = *(v3 + OBJC_IVAR____TtC5SOSUI23SOSUIWebRTCErrorMessage_lastState);
    v18[15] = 3;
    sub_2643A7520();
    sub_2643B0858();
    v16 = *(v3 + OBJC_IVAR____TtC5SOSUI23SOSUIWebRTCErrorMessage_retryable);
    v18[14] = 4;
    sub_2643B0828();
  }

  return (*(v6 + 8))(v9, v5);
}

id SOSUIWebRTCErrorMessage.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66F88, &qword_2643B2048);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2643A7790();
  sub_2643B0958();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    type metadata accessor for SOSUIWebRTCErrorMessage();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v22) = 0;
    v11 = sub_2643B0768();
    v13 = &v1[OBJC_IVAR____TtC5SOSUI23SOSUIWebRTCErrorMessage_error];
    *v13 = v11;
    v13[1] = v14;
    LOBYTE(v22) = 1;
    *&v1[OBJC_IVAR____TtC5SOSUI23SOSUIWebRTCErrorMessage_errorCode] = sub_2643B0798();
    LOBYTE(v22) = 2;
    v15 = sub_2643B0768();
    v16 = &v1[OBJC_IVAR____TtC5SOSUI23SOSUIWebRTCErrorMessage_stack];
    *v16 = v15;
    v16[1] = v17;
    v21 = 3;
    sub_2643A75EC();
    sub_2643B07A8();
    *&v1[OBJC_IVAR____TtC5SOSUI23SOSUIWebRTCErrorMessage_lastState] = v22;
    LOBYTE(v22) = 4;
    v1[OBJC_IVAR____TtC5SOSUI23SOSUIWebRTCErrorMessage_retryable] = sub_2643B0778() & 1;
    v18 = type metadata accessor for SOSUIWebRTCErrorMessage();
    v20.receiver = v1;
    v20.super_class = v18;
    v3 = objc_msgSendSuper2(&v20, sel_init);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v3;
}

uint64_t sub_2643A32B0@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 128))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t SOSUIWebRTCQualityMessage.bitrate.getter()
{
  result = *(v0 + OBJC_IVAR____TtC5SOSUI25SOSUIWebRTCQualityMessage_bitrate);
  v2 = *(v0 + OBJC_IVAR____TtC5SOSUI25SOSUIWebRTCQualityMessage_bitrate + 8);
  return result;
}

uint64_t SOSUIWebRTCQualityMessage.availableBitrate.getter()
{
  result = *(v0 + OBJC_IVAR____TtC5SOSUI25SOSUIWebRTCQualityMessage_availableBitrate);
  v2 = *(v0 + OBJC_IVAR____TtC5SOSUI25SOSUIWebRTCQualityMessage_availableBitrate + 8);
  return result;
}

uint64_t SOSUIWebRTCQualityMessage.packetLoss.getter()
{
  result = *(v0 + OBJC_IVAR____TtC5SOSUI25SOSUIWebRTCQualityMessage_packetLoss);
  v2 = *(v0 + OBJC_IVAR____TtC5SOSUI25SOSUIWebRTCQualityMessage_packetLoss + 8);
  return result;
}

uint64_t SOSUIWebRTCQualityMessage.currentRoundTripTime.getter()
{
  result = *(v0 + OBJC_IVAR____TtC5SOSUI25SOSUIWebRTCQualityMessage_currentRoundTripTime);
  v2 = *(v0 + OBJC_IVAR____TtC5SOSUI25SOSUIWebRTCQualityMessage_currentRoundTripTime + 8);
  return result;
}

uint64_t SOSUIWebRTCQualityMessage.framesPerSecond.getter()
{
  result = *(v0 + OBJC_IVAR____TtC5SOSUI25SOSUIWebRTCQualityMessage_framesPerSecond);
  v2 = *(v0 + OBJC_IVAR____TtC5SOSUI25SOSUIWebRTCQualityMessage_framesPerSecond + 8);
  return result;
}

uint64_t SOSUIWebRTCQualityMessage.jitter.getter()
{
  result = *(v0 + OBJC_IVAR____TtC5SOSUI25SOSUIWebRTCQualityMessage_jitter);
  v2 = *(v0 + OBJC_IVAR____TtC5SOSUI25SOSUIWebRTCQualityMessage_jitter + 8);
  return result;
}

uint64_t SOSUIWebRTCQualityMessage.bytesSent.getter()
{
  result = *(v0 + OBJC_IVAR____TtC5SOSUI25SOSUIWebRTCQualityMessage_bytesSent);
  v2 = *(v0 + OBJC_IVAR____TtC5SOSUI25SOSUIWebRTCQualityMessage_bytesSent + 8);
  return result;
}

unint64_t sub_2643A33F8()
{
  v1 = *v0;
  v2 = 0x65746172746962;
  v3 = 0x697463656E6E6F63;
  if (v1 != 6)
  {
    v3 = 0x6E65537365747962;
  }

  v4 = 0x655073656D617266;
  if (v1 != 4)
  {
    v4 = 0x72657474696ALL;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6F4C74656B636170;
  if (v1 != 2)
  {
    v5 = 0xD000000000000014;
  }

  if (*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2643A351C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2643A8450(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2643A3550(uint64_t a1)
{
  v2 = sub_2643A7808();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2643A358C(uint64_t a1)
{
  v2 = sub_2643A7808();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2643A35E0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66FD0, &qword_2643B2050);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v27[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2643A7808();
  sub_2643B0978();
  v11 = *(v3 + OBJC_IVAR____TtC5SOSUI25SOSUIWebRTCQualityMessage_bitrate);
  v12 = *(v3 + OBJC_IVAR____TtC5SOSUI25SOSUIWebRTCQualityMessage_bitrate + 8);
  v27[15] = 0;
  sub_2643B07F8();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = *(v3 + OBJC_IVAR____TtC5SOSUI25SOSUIWebRTCQualityMessage_availableBitrate);
  v14 = *(v3 + OBJC_IVAR____TtC5SOSUI25SOSUIWebRTCQualityMessage_availableBitrate + 8);
  v27[14] = 1;
  sub_2643B07F8();
  v15 = *(v3 + OBJC_IVAR____TtC5SOSUI25SOSUIWebRTCQualityMessage_packetLoss);
  v16 = *(v3 + OBJC_IVAR____TtC5SOSUI25SOSUIWebRTCQualityMessage_packetLoss + 8);
  v27[13] = 2;
  sub_2643B07F8();
  v17 = *(v3 + OBJC_IVAR____TtC5SOSUI25SOSUIWebRTCQualityMessage_currentRoundTripTime);
  v18 = *(v3 + OBJC_IVAR____TtC5SOSUI25SOSUIWebRTCQualityMessage_currentRoundTripTime + 8);
  v27[12] = 3;
  sub_2643B07F8();
  v19 = *(v3 + OBJC_IVAR____TtC5SOSUI25SOSUIWebRTCQualityMessage_framesPerSecond);
  v20 = *(v3 + OBJC_IVAR____TtC5SOSUI25SOSUIWebRTCQualityMessage_framesPerSecond + 8);
  v27[11] = 4;
  sub_2643B07F8();
  v21 = *(v3 + OBJC_IVAR____TtC5SOSUI25SOSUIWebRTCQualityMessage_jitter);
  v22 = *(v3 + OBJC_IVAR____TtC5SOSUI25SOSUIWebRTCQualityMessage_jitter + 8);
  v27[10] = 5;
  sub_2643B07F8();
  v23 = *(v3 + OBJC_IVAR____TtC5SOSUI25SOSUIWebRTCQualityMessage_connectionPoor);
  v27[9] = 6;
  sub_2643B07E8();
  v25 = *(v3 + OBJC_IVAR____TtC5SOSUI25SOSUIWebRTCQualityMessage_bytesSent);
  v26 = *(v3 + OBJC_IVAR____TtC5SOSUI25SOSUIWebRTCQualityMessage_bytesSent + 8);
  v27[8] = 7;
  sub_2643B07F8();
  return (*(v6 + 8))(v9, v5);
}

id SOSUIWebRTCQualityMessage.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66FD8, &qword_2643B2058);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v34 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2643A7808();
  sub_2643B0958();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    type metadata accessor for SOSUIWebRTCQualityMessage();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v35 = 0;
    v11 = sub_2643B0748();
    v12 = &v1[OBJC_IVAR____TtC5SOSUI25SOSUIWebRTCQualityMessage_bitrate];
    *v12 = v11;
    v12[8] = v13 & 1;
    v35 = 1;
    v14 = sub_2643B0748();
    v15 = &v1[OBJC_IVAR____TtC5SOSUI25SOSUIWebRTCQualityMessage_availableBitrate];
    *v15 = v14;
    v15[8] = v16 & 1;
    v35 = 2;
    v17 = sub_2643B0748();
    v18 = &v1[OBJC_IVAR____TtC5SOSUI25SOSUIWebRTCQualityMessage_packetLoss];
    *v18 = v17;
    v18[8] = v19 & 1;
    v35 = 3;
    v20 = sub_2643B0748();
    v21 = &v1[OBJC_IVAR____TtC5SOSUI25SOSUIWebRTCQualityMessage_currentRoundTripTime];
    *v21 = v20;
    v21[8] = v22 & 1;
    v35 = 4;
    v23 = sub_2643B0748();
    v24 = &v1[OBJC_IVAR____TtC5SOSUI25SOSUIWebRTCQualityMessage_framesPerSecond];
    *v24 = v23;
    v24[8] = v25 & 1;
    v35 = 5;
    v26 = sub_2643B0748();
    v27 = &v1[OBJC_IVAR____TtC5SOSUI25SOSUIWebRTCQualityMessage_jitter];
    *v27 = v26;
    v27[8] = v28 & 1;
    v35 = 6;
    v1[OBJC_IVAR____TtC5SOSUI25SOSUIWebRTCQualityMessage_connectionPoor] = sub_2643B0738();
    v35 = 7;
    v30 = sub_2643B0748();
    v31 = &v1[OBJC_IVAR____TtC5SOSUI25SOSUIWebRTCQualityMessage_bytesSent];
    *v31 = v30;
    v31[8] = v32 & 1;
    v33 = type metadata accessor for SOSUIWebRTCQualityMessage();
    v34.receiver = v1;
    v34.super_class = v33;
    v3 = objc_msgSendSuper2(&v34, sel_init);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v3;
}

uint64_t sub_2643A3C0C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 152))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t SOSUIWebRTCLogMessage.level.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC5SOSUI21SOSUIWebRTCLogMessage_level);
  v2 = *(v0 + OBJC_IVAR____TtC5SOSUI21SOSUIWebRTCLogMessage_level + 8);

  return v1;
}

uint64_t SOSUIWebRTCLogMessage.message.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC5SOSUI21SOSUIWebRTCLogMessage_message);
  v2 = *(v0 + OBJC_IVAR____TtC5SOSUI21SOSUIWebRTCLogMessage_message + 8);

  return v1;
}

uint64_t sub_2643A3D2C()
{
  if (*v0)
  {
    result = 0x6567617373656DLL;
  }

  else
  {
    result = 0x6C6576656CLL;
  }

  *v0;
  return result;
}

uint64_t sub_2643A3D64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C6576656CLL && a2 == 0xE500000000000000;
  if (v6 || (sub_2643B0888() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2643B0888();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2643A3E48(uint64_t a1)
{
  v2 = sub_2643A7880();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2643A3E84(uint64_t a1)
{
  v2 = sub_2643A7880();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2643A3EEC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = *(a1 + *a3 + 8);

  v7 = *(a1 + *a4 + 8);
}